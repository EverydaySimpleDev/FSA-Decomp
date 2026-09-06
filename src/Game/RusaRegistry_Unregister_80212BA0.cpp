#include "types.h"

// RusaRegistry_Unregister/RusaRegistry_Unregister - UNREGISTER for the "active
// RUSA instances" registry `lbl_804CCDB8` (see
// project_fsa_rusa_actor_progress.md and the registry's lazy-init
// accessor in extab_80212ac0.s), following the same idiom already
// confirmed for NAVI's companion registry (project_fsa_navi_companion_registry.md).
//
// RusaRegistry_Unregister(registry, id) - UNREGISTER: scans the inline ID array at
// `registry+0x0` for `id` (count from `registry->0x80`); once found,
// compacts the array by shifting all later entries back one slot, then
// decrements the count.
//
// Cracked via 2 refinements over the earlier 2 failed attempts (see
// project_fsa_phase4_kickoff.md): (1) the loop bound must be a fresh
// re-read of `registry->0x80` in the `for` condition itself, not a
// locally-cached value - caching it made MWCC choose a counted
// mtctr/bdnz loop instead of retail's manual compare-and-branch loop.
// (2) declaring the pointer-walking local BEFORE the boolean flag
// local (and incrementing the pointer before the loop counter in the
// `for` increment clause) matches retail's register assignment
// exactly - reversing either swaps 2 register numbers project-wide
// in this function, a real (if narrow) case of source declaration
// order controlling MWCC's register allocation, unlike the similar-
// looking but genuinely unresolvable case in fn_803D6618.
extern "C" void RusaRegistry_Unregister(void* registry, s32 id) {
	s32* ptr = (s32*)registry;
	bool found = false;
	for (s32 i = 0; i < *(s32*)((char*)registry + 0x80); ptr++, i++) {
		if (!found) {
			if (id == *ptr) { found = true; }
		} else {
			*(ptr - 1) = *ptr;
		}
	}
	if (found) {
		*(s32*)((char*)registry + 0x80) -= 1;
	}
}
