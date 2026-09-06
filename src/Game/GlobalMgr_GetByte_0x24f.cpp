#include "types.h"

// GlobalMgr_GetByte_0x24f - reads a byte at lbl_80529DEC->0x24f.
// GlobalMgr_SetBit0x10_0xdc - sets bit 0x10 in a byte at
// (*lbl_8053AED0)->0xdc. Retest of the batch-2
// "small-data-array" bug using the real 0x354-byte size from
// symbols.txt (the earlier attempt used an inexact 0x300 placeholder).
extern "C" {

extern u8 lbl_80529DEC[0x354];
extern void* lbl_8053AED0;

u8 GlobalMgr_GetByte_0x24f(void) {
	return lbl_80529DEC[0x24f];
}

void GlobalMgr_SetBit0x10_0xdc(void) {
	u8* p = (u8*)lbl_8053AED0;
	p[0xdc] |= 0x10;
}

}
