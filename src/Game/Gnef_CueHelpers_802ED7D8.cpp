#include "types.h"

// Gnef_SetCueFlag - GNEF: cue-flag setter. Sets flag byte this->0x275=0xff
// and increments counter this->0x24c.
//
// Gnef_QueryCueState - GNEF: cue-state query. If this->0x24c < 0xb (11),
// returns 0. Otherwise checks/sets a latch byte at this->0x274 based
// on the incoming float param vs this->0x270 or a fixed threshold
// constant, returning the latch value.
extern "C" {

extern f32 lbl_80541400;

void Gnef_SetCueFlag(void* thisObj) {
	*(u8*)((char*)thisObj + 0x275) = 0xff;
	*(u32*)((char*)thisObj + 0x24c) += 1;
}

u8 Gnef_QueryCueState(void* thisObj, f32 value) {
	if (*(s32*)((char*)thisObj + 0x24c) < 0xb) {
		return 0;
	}
	if (*(u8*)((char*)thisObj + 0x274) != 0) {
		*(f32*)((char*)thisObj + 0x270) = value;
	} else {
		if (lbl_80541400 == value) {
			*(u8*)((char*)thisObj + 0x274) = 1;
		}
	}
	return *(u8*)((char*)thisObj + 0x274);
}

}
