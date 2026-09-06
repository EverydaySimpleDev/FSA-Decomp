#include "types.h"

extern "C" u8 lbl_80529DEC[0x354];

// fn_803D6D74 - BFIN: vtable-slot function. Resets a run of this
// object's own state fields (0x230-0x244, 0x11f) to fixed defaults,
// then clears a field (+0x1a8) on the shared lbl_80529DEC singleton.
extern "C" void fn_803D6D74(void* thisObj) {
	char* p = (char*)thisObj;
	*(s32*)(p + 0x230) = 0;
	*(s32*)(p + 0x234) = -1;
	*(s32*)(p + 0x23c) = 0x82;
	*(s32*)(p + 0x238) = 0;
	*(u8*)(p + 0x240) = 0xff;
	*(u8*)(p + 0x244) = 0;
	*(u8*)(p + 0x243) = 0;
	*(u8*)(p + 0x242) = 0;
	*(u8*)(p + 0x241) = 0;
	*(u8*)(p + 0x11f) = 1;
	*(s32*)(lbl_80529DEC + 0x1a8) = -1;
}
