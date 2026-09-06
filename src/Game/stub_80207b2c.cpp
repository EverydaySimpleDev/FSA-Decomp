#include "types.h"

extern f32 lbl_8053F8D0;

// fn_80207B2C - small POD-record initializer used as the per-element
// constructor for fn_80207AC0's 4-slot array (see extab_80207ac0.s)
// via the confirmed __construct_array helper. No vtable, no base call
// - a plain struct default-init: two -1 ID fields (+0x0, +0x8), a
// flag byte (+0x4), another zeroed field (+0xc), three float defaults
// from lbl_8053F8D0 (+0x10/+0x14/+0x18), a zeroed int (+0x1c) and a
// zeroed flag byte (+0x20).
extern "C" void fn_80207B2C(void* thisObj) {
	char* p = (char*)thisObj;
	*(s32*)(p + 0x0) = -1;
	f32 zero = lbl_8053F8D0;
	*(u8*)(p + 0x4) = 0;
	*(s32*)(p + 0x8) = -1;
	*(s32*)(p + 0xc) = 0;
	*(f32*)(p + 0x10) = zero;
	*(f32*)(p + 0x14) = zero;
	*(f32*)(p + 0x18) = zero;
	*(s32*)(p + 0x1c) = 0;
	*(u8*)(p + 0x20) = 0;
}
