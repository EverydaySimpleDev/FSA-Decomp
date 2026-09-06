#include "types.h"

extern "C" s32 fn_80237488(s32 linkedIdx);

// fn_80247594(playerObj, amount) - "consume `amount` units from a
// countdown pool" (playerObj->0xc08), returning whether any pool
// remained. If playerObj->0xd60 (the CONFIRMED co-op LINK/CHAIN target
// index) is non-negative, delegates entirely to fn_80237488(linkedIdx).
// Otherwise: if already flagged "done" (+0x1201==1), returns true
// without consuming further. If the pool covers `amount`, subtracts it
// and sets +0x1201=1 (success). If the pool is partially covered
// (>0 but < amount), zeroes it and still sets +0x1201=1 (success -
// "used up the last of it"). If the pool was already 0, sets
// +0x1202=1 (a distinct "exhausted" flag) and returns false.
extern "C" s32 fn_80247594(void* playerObj, s32 amount) {
	char* p = (char*)playerObj;
	s32 linked = *(s32*)(p + 0xd60);
	if (linked >= 0) {
		return fn_80237488(linked);
	}
	if (*(u8*)(p + 0x1201) == 1) {
		return 1;
	}
	s32 pool = *(s32*)(p + 0xc08);
	if (pool >= amount) {
		*(s32*)(p + 0xc08) = pool - amount;
		*(u8*)(p + 0x1201) = 1;
		return 1;
	}
	if (pool > 0) {
		*(s32*)(p + 0xc08) = 0;
		*(u8*)(p + 0x1201) = 1;
		return 1;
	}
	*(u8*)(p + 0x1202) = 1;
	return 0;
}
