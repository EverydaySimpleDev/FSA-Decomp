#include "types.h"

// NEW ACTOR (vtable lbl_804A6550). "Is in an active/vulnerable window"
// predicate: true for states 6-0xa unconditionally, true for state 2
// only when variant (this->0x2b4) == 3, false otherwise.
//
// Cracked via zeldaret/tww's daNpc_Bm1_c::getBitMask() (src/d/actor/d_a_npc_bm1.cpp),
// which uses a `switch` with a default-initialized result variable and
// a single trailing return to get MWCC's switch-lowering to naturally
// produce a shared-tail merge point - if/else-if chains for this same
// logic had failed 3 times (see project_fsa_phase4_kickoff.md, 26th
// batch). The single-comparison case body also needed the established
// "default local + if-override" phrasing (not a bare `return cond;`)
// to avoid MWCC's branchless subfic/cntlzw/srwi canonicalization.
// Case declaration ORDER matters: the single-value case (2) must be
// written FIRST and the range case (6-10) SECOND for MWCC's block
// layout to match retail exactly - the reverse order (range first)
// produced byte-identical LOGIC but a 4-byte-shorter, differently
// laid out object.
extern "C" bool fn_80219E04(void* thisObj) {
	s32 v = *(s32*)((char*)thisObj + 0x248);
	bool result = false;
	switch (v) {
		case 2:
			if (*(s32*)((char*)thisObj + 0x2b4) == 3) { result = true; }
			break;
		case 6: case 7: case 8: case 9: case 10:
			result = true;
			break;
	}
	return result;
}
