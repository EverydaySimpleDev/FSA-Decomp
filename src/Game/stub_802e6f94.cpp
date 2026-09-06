#include "types.h"
#include "Game/Actor.h"

// fn_802E6F94 - unnamed actor: update(). Decrements a timer
// (this->0x240); once it reaches 0, resets it to 2 and drives a small
// state machine: while this->0x230==0, advances 2 counters
// (0x238/0x23c, the first capped at 6) until 0x23c reaches 8, then
// clears this->0x11c; otherwise cycles this->0x238 through
// 0->2->6->(clear this->0x11c).
extern "C" void fn_802E6F94(void* thisObj) {
	*(s32*)((char*)thisObj + 0x240) -= 1;
	if (*(s32*)((char*)thisObj + 0x240) != 0) {
		return;
	}
	*(s32*)((char*)thisObj + 0x240) = 2;
	if (*(s32*)((char*)thisObj + 0x230) == 0) {
		*(s32*)((char*)thisObj + 0x238) += 1;
		*(s32*)((char*)thisObj + 0x23c) += 1;
		if (*(s32*)((char*)thisObj + 0x238) > 6) {
			*(s32*)((char*)thisObj + 0x238) = 5;
		}
		if (*(s32*)((char*)thisObj + 0x23c) != 8) {
			return;
		}
		*(u8*)((char*)thisObj + 0x11c) = 0;
		return;
	} else {
		if (*(s32*)((char*)thisObj + 0x238) == 0) {
			*(s32*)((char*)thisObj + 0x238) = 2;
			return;
		}
		if (*(s32*)((char*)thisObj + 0x238) == 2) {
			*(s32*)((char*)thisObj + 0x238) = 6;
			return;
		}
		*(u8*)((char*)thisObj + 0x11c) = 0;
		return;
	}
}

// fn_802E7038 - unnamed actor: setParams(). Extracts a 7-bit field
// from the spawn param into this->0x230 and a further 5-bit field into
// this->0x234, resets 2 counters, and sets the initial timer
// (this->0x240) to 1 or 2 depending on whether this->0x230 is 0.
extern "C" void fn_802E7038(void* thisObj) {
	*(u32*)((char*)thisObj + 0x230) = ((Actor*)thisObj)->spawnParam & 0x7f;
	*(u32*)((char*)thisObj + 0x234) = (((Actor*)thisObj)->spawnParam >> 7) & 0x1f;
	*(s32*)((char*)thisObj + 0x238) = 0;
	*(s32*)((char*)thisObj + 0x23c) = 0;
	if (*(s32*)((char*)thisObj + 0x230) == 0) {
		*(s32*)((char*)thisObj + 0x240) = 1;
	} else {
		*(s32*)((char*)thisObj + 0x240) = 2;
	}
}
