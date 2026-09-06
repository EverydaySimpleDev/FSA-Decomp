#include "types.h"

// Hrmn_AdvanceSlotStateType3(this) - advances a counter (this->0x8) capped by a
// per-slot threshold looked up from lbl_8053FCEC[this->0x4]; on
// wraparound, advances a second counter (this->0x4, capped at 5,
// backing off by 1 past the cap) and returns lbl_8053FCE4[this->0x4].
// Retest of the sibling risk category already fixed for Hrmn_AdvanceSlotStateType0xc,
// using the array[idx] technique (eighteenth batch) plus the
// this-relative-reread rule (never cache the just-stored value).
extern "C" {

// Declared under its real 0xC-byte size (symbols.txt) - MWCC's small-data
// addressing-mode heuristic for extern references switches from sda21-
// relative to absolute lis/addi once the declared array size crosses a
// threshold between 8 and 12 bytes; only accessed indices 0-4 are ever
// touched, so this stays correct while keeping retail's addressing mode.
extern u8 lbl_8053FCEC[0x8];
extern u8 lbl_8053FCE4[0x8];

s32 Hrmn_AdvanceSlotStateType3(void* thisObj) {
	*(s32*)((char*)thisObj + 0x8) += 1;
	u32 idx4 = *(u32*)((char*)thisObj + 0x4);
	if (*(s32*)((char*)thisObj + 0x8) >= lbl_8053FCEC[idx4]) {
		*(s32*)((char*)thisObj + 0x8) = 0;
		*(u32*)((char*)thisObj + 0x4) += 1;
		if (*(u32*)((char*)thisObj + 0x4) >= 5) {
			*(u32*)((char*)thisObj + 0x4) -= 1;
		}
	}
	u32 idx = *(u32*)((char*)thisObj + 0x4);
	u8 v = lbl_8053FCE4[idx];
	*(u32*)((char*)thisObj + 0x0) = v;
	return *(s32*)((char*)thisObj + 0x0);
}

}
