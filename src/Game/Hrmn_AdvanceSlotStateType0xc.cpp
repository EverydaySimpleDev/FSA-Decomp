#include "types.h"

// Hrmn_AdvanceSlotStateType0xc(this) - advances a 2-tier wraparound counter (this->0x8
// caps at 7, then this->0x4 caps at 4) and returns the current
// lbl_8053FCE0[this->0x4] byte. Retest of the "indexed byte-table
// lookup + cap-then-back-off counter" shape declined in the thirteenth
// batch, now using the array[idx] fix from the eighteenth batch.
extern "C" {

extern u8 lbl_8053FCE0[4];

s32 Hrmn_AdvanceSlotStateType0xc(void* thisObj) {
	*(s32*)((char*)thisObj + 0x8) += 1;
	if (*(s32*)((char*)thisObj + 0x8) >= 7) {
		*(s32*)((char*)thisObj + 0x8) = 0;
		*(u32*)((char*)thisObj + 0x4) += 1;
		if (*(u32*)((char*)thisObj + 0x4) >= 4) {
			*(u32*)((char*)thisObj + 0x4) = 0;
		}
	}
	u32 idx = *(u32*)((char*)thisObj + 0x4);
	u8 v = lbl_8053FCE0[idx];
	*(u32*)((char*)thisObj + 0x0) = v;
	return *(s32*)((char*)thisObj + 0x0);
}

}
