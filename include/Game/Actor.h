#ifndef GAME_ACTOR_H
#define GAME_ACTOR_H

#include "types.h"

// Compile-time layout guard (same technique as zeldaret/tww's and
// zeldaret/tp's own STATIC_ASSERT - see docs/coding_guidelines.md).
// Catches an accidental field-layout regression immediately at compile
// time rather than silently producing wrong-but-compiling code.
#ifndef STATIC_ASSERT
#define GAME_ACTOR_GLUE(a, b) a##b
#define GAME_ACTOR_GLUE2(a, b) GAME_ACTOR_GLUE(a, b)
#define STATIC_ASSERT(cond) typedef char GAME_ACTOR_GLUE2(static_assertion_failed_, __LINE__)[(cond) ? 1 : -1]
#endif

// The base game-object class every one of FSA's confirmed ~205+ actor
// (enemy/NPC/item/effect) subclasses derives from - see project memory
// project_fsa_actor_system_discovery.md for the full discovery writeup
// (dispatch table, per-slot vtable analysis, etc).
//
// The base vtable is `Actor_vtable` (21 slots / 0x54 bytes - one slot
// shorter than every concrete actor's own 22-slot vtable, confirming each
// subclass adds exactly one more virtual). Only slots 2 (dtor) and 3
// (setParams) are unique per actor; slots 4,6,7,9-20 are shared base-class
// default implementations reused by nearly every subclass (see
// project_fsa_universal_actor_defaults_landed.md); slots 5 and 8 are the
// real per-actor "update"/"draw" virtuals.
//
// Field layout below is confirmed only where explicitly noted. Large
// stretches are still undifferentiated (grouped by observed constructor
// default value) because no derived-actor access site has yet been
// cross-referenced against them - per this project's real-decompilation
// mandate, these are deliberately left honestly-unknown rather than guessed.
// Total confirmed-initialized size (by the constructor, Actor.cpp) is
// 0x21c bytes; the true class size may be equal to or larger than this.
struct Actor {
	void** vtable; // 0x000 - base vtable `Actor_vtable`

	u32 unk_004; // 0x004 - defaults to 0
	u32 unk_008; // 0x008 - defaults to 0

	// 0x00c-0x044 (15 floats, default 0.0f). First float block after the
	// object header - likely position/orientation-related, not yet
	// field-mapped against a derived actor's access site.
	f32 unk_00c[15];

	// 0x048-0x05c (6 floats, default 1.0f). 1.0 is the natural default for
	// a multiplicative field - likely scale-related (e.g. two Vec3-shaped
	// scale channels, or a scale plus a separate scale-rate/multiplier).
	f32 unk_048[6];

	// 0x060-0x064 (2 floats, default -8.0f) paired with unk_068 (2 floats,
	// default +8.0f) as a symmetric +-8.0 range - hypothesis: a
	// collision/interaction bounding extent. Not yet confirmed.
	f32 unk_060[2];
	f32 unk_068[2];

	// 0x070-0x08c (8 floats, default 0.0f).
	f32 unk_070[8];

	u32 spawnParam; // 0x090 - CONFIRMED: every actor's raw 32-bit
	                // spawn/placement parameter (project_fsa_actor_system_
	                // discovery.md). Each subclass's own setParams()
	                // override unpacks specific bit ranges out of this
	                // field, matching FSALib's per-actor `fields` JSON
	                // metadata (bitOffset/bitSize/valueType).

	u16 unk_094; // 0x094 - defaults to 0 (only field in this struct stored
	             // as a halfword rather than word/byte/float)

	// 0x096-0x11f: mixed-type flag/counter/sentinel block. Several fields
	// default to -1 (the project's established "unused handle/index"
	// sentinel idiom) and several default to 1; exact per-field
	// types/meanings not yet mapped. See Actor.cpp's constructor for the
	// precise byte offset/value of every individual field in this range.
	u8 unk_096[0x8a];

	u8 slotIndexTable[0x10]; // 0x120-0x12f - CONFIRMED: initialized to the
	                         // identity permutation {0,1,2,...,15}, the
	                         // classic free-list/slot-index init pattern.

	// 0x130-0x1ab: further typed defaults, including one embedded
	// function-pointer constant (`fn_8003B2CC`, stored mid-block) whose
	// purpose - likely a default callback - is not yet traced.
	u8 unk_130[0x7c];

	// 0x1ac-0x1db: a 4-element array of 0xc-byte sub-objects, constructed
	// via __construct_array(this+0x1ac, fn_8003B2CC, /*dtor*/ NULL,
	// /*size*/ 0xc, /*n*/ 4) - CONFIRMED as a real __construct_array call
	// (matches PowerPC_EABI_Support/Runtime/MWCPlusLib.h's declared
	// (ptr,ctor,dtor,size,n) signature exactly; supersedes this project's
	// earlier caution about the overload not being confirmed). Immediately
	// re-zeroed as 12 floats by the constructor right after construction
	// (possibly redundant with fn_8003B2CC's own defaults, or defensive).
	u8 constructedArray[0x30];

	// 0x1dc-0x21b: two identical 0x20-byte sub-records, constructed via
	// fn_801EAD68(this+0x1dc) - not yet traced beyond "zeroes the first 8
	// bytes then sets 8 words to -1" per fn_801EAD68's own body.
	u8 pairRecords[0x40];
};

// This only guards the CONSTRUCTOR-CONFIRMED prefix, not the true class
// size (which may be larger - see the note above the struct). Update
// this alongside the struct any time a field is added/resized.
STATIC_ASSERT(sizeof(Actor) == 0x21c);

// Convention note (see docs/coding_guidelines.md): once a field's ROLE
// (not necessarily its exact bit layout) becomes confirmed, prefer
// wrapping it in a named union/struct over renaming an `unk_` array
// outright - e.g. `union { s16 raw; } mSomeContextVar;` - so the name
// documents genuine understanding without overclaiming precision. Not
// yet applied to any field below since no unconfirmed field's role has
// been pinned down to that level yet (per this project's honestly-
// unknown-over-guessed mandate).

// The base Actor class constructor. Kept as a plain, C-linkage global
// function (not a real C++ member constructor) rather than `Actor::Actor()`
// deliberately: this project's whole not-yet-promoted actor codebase (300+
// files) still calls this by its real, fixed link-time name via raw `bl`
// instructions, and a genuine C++ constructor would compile to a
// name-mangled symbol those callers can't reference. Revisit once the
// wider Actor class hierarchy is promoted to real C++ throughout.
// Declared void(void) rather than void(Actor*): a `register` pointer
// parameter here causes MWCC to emit its own conflicting stack-frame setup
// ahead of this nofralloc body (observed empirically - it silently
// duplicates/displaces the hand-written prologue). r3 holds the Actor*
// on entry exactly as the PowerPC EABI always passes it; every caller
// project-wide already does this via raw `bl Actor_ctor` with r3 preset.
extern "C" void Actor_ctor(void);

#endif
