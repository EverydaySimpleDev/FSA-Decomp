#include "types.h"

// YASI cluster, part 7/7. setParams - pure numeric default-field
// initialization (hitbox floats 0x60-0x8c, state 0x230/0x234).
//
// 4 float globals, each reused for 2 adjacent fields. Cracked via a
// "declare in REGISTER-ROLE order upfront, assign values in SCHEDULE
// order" split (32nd Phase 4 batch, same session as Grve_SetParams's
// near-miss on the same general shape) - MWCC's register numbering
// depends on DECLARATION order, but WHEN each load actually happens
// depends on where the assignment statement sits, and those two
// things can be controlled independently by separating declaration
// from initialization. `a` and `d` end up sharing one register (`d`
// loads after `a`'s last use), while `b`/`c` each get their own -
// matching retail's real allocation exactly once declared in the
// order a, c, b, d (not the "obvious" a, b, c, d source-reading order).
extern f32 lbl_80541174;
extern f32 lbl_80541178;
extern f32 lbl_8054117C;
extern f32 lbl_80541180;

extern "C" void Yasi_SetParams(void* thisObj) {
	char* p = (char*)thisObj;
	f32 a, c, b, d;
	a = lbl_80541174;
	b = lbl_80541178;
	*(f32*)(p + 0x60) = a;
	c = lbl_8054117C;
	*(f32*)(p + 0x64) = a;
	d = lbl_80541180;
	*(f32*)(p + 0x68) = b;
	*(f32*)(p + 0x6c) = b;
	*(f32*)(p + 0x80) = c;
	*(f32*)(p + 0x84) = c;
	*(f32*)(p + 0x88) = d;
	*(f32*)(p + 0x8c) = d;
	*(s32*)(p + 0x230) = 0;
	*(u8*)(p + 0x234) = 0xff;
}
