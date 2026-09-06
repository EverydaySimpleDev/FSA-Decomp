#include "types.h"

// CompanionRegistry_GetOrInit() - Option B follow-up (see project_fsa_final_6_actors_batch.md's
// NAVI notes): the shared "get the active-companion registry" accessor
// NAVI's dtor and setParams both call first. Lazy-initializes a GLOBAL
// record `lbl_804CE640` on first call (a `{u16, u32 count}` header
// followed by an inline array, zeroed via a one-time latch at
// `lbl_8053AC78`), then always returns `&lbl_804CE640`. This is the
// same lazy-init idiom the render primitives use for handle caching.
//
// Same recipe as RusaRegistry_GetOrInit (see project_fsa_phase4_kickoff.md): the
// latch must be `s8` (signed, matching retail's `extsb.` test), and
// naming a local for the "1" immediate before the "0" immediate
// (even though the "0" store happens first) matches retail's exact
// li instruction order. Landed clean on the first attempt.
extern s8 lbl_8053AC78[8];
extern u8 lbl_804CE640[0x120];

extern "C" void* CompanionRegistry_GetOrInit(void) {
	if (!lbl_8053AC78[0]) {
		u16 one = 1;
		u16 zero = 0;
		*(u16*)(lbl_804CE640 + 0) = zero;
		*(u32*)(lbl_804CE640 + 4) = zero;
		lbl_8053AC78[0] = one;
	}
	return lbl_804CE640;
}
