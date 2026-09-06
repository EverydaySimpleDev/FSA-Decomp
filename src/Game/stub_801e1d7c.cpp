#include "types.h"

// fn_801E1D7C(this): true iff state is 0xb or 0xc - the predicate form
// of the "state 11/12" gate used directly inline by fn_801DE740's RUSA-
// repel check.
//
// Cracked via the same recipe as fn_801CAED4 (see project_fsa_phase4_kickoff.md,
// 28th batch, credit zeldaret/tww): bool return type, bare && chain -
// but the term ORDER must match retail's actual evaluation order
// (upper-bound check first, then lower-bound), not the "natural"
// low-to-high reading order.
extern "C" bool fn_801E1D7C(void* thisObj) {
	s32 v = *(s32*)((char*)thisObj + 0x248);
	return v < 0xd && v >= 0xb;
}

// fn_801E1D9C(this): true iff this->0x278 == 2.
//
// Unlike fn_801E1D7C's multi-term && chain, a BARE single-comparison
// return (`return v == 2;`) or ternary (`(v==2)?true:false`) both
// collapse to MWCC's branchless subfic/cntlzw/srwi canonicalization
// here - only the explicit "default false local, override true inside
// an if" phrasing forces the branchy preload+bnelr shape retail uses.
extern "C" bool fn_801E1D9C(void* thisObj) {
	s32 v = *(s32*)((char*)thisObj + 0x278);
	bool result = false;
	if (v == 2) { result = true; }
	return result;
}
