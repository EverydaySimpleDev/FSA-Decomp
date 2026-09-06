#include "types.h"

// RusaRegistry_GetOrInit() - lazy-init accessor for the "active RUSA instances"
// registry `lbl_804CCDB8`. No arguments: on first call (one-shot latch
// `lbl_8053AC70`), zeroes the count field at `lbl_804CCDB8+0x80`;
// always returns `&lbl_804CCDB8`.
//
// Cracked via 2 refinements over the earlier 2 failed attempts (see
// project_fsa_phase4_kickoff.md): (1) the latch must be declared `s8`
// (signed), not `u8` - retail's `if (!latch)` test sign-extends
// (`extsb.`) before comparing, matching the project's established
// signed/unsigned-must-match-the-compare-instruction rule. (2) naming
// LOCAL variables for the two independent immediates in the SAME
// order retail materializes them (`one` before `zero`, even though
// `zero` is stored FIRST) fixed the immediate-load order that had
// resisted both direct and hoisted-order phrasings before - a real
// case of source declaration order controlling MWCC's instruction
// scheduling for otherwise-independent immediate loads, discovered
// via the same technique that fixed RusaRegistry_Unregister's register swap.
extern s8 lbl_8053AC70[8];
extern u8 lbl_804CCDB8[0x180];

extern "C" void* RusaRegistry_GetOrInit(void) {
	if (!lbl_8053AC70[0]) {
		s8 one = 1;
		s32 zero = 0;
		*(s32*)(lbl_804CCDB8 + 0x80) = zero;
		lbl_8053AC70[0] = one;
	}
	return lbl_804CCDB8;
}
