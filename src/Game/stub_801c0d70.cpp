#include "types.h"

// fn_801C0D70() - NOT a per-actor accessor despite how fn_801C2ED4/
// fn_801C3B7C use it (extab_801c2ed4.s) - it's a GLOBAL, lazily
// initialized SINGLETON getter, guarded by a one-shot bool
// (lbl_8053AC10). On first call, zeroes 5 halfwords + 1 word at
// lbl_804C7E70+0x0/0x2/0x4/0x6/0x8/0xc, sets a sentinel -1 word at
// +0x50, and sets 3 floats at +0x54/0x58/0x5c to a shared reset
// constant (lbl_8053ED90) - then marks the one-shot flag done. EVERY
// call (first or not) returns the SAME pointer, `&lbl_804C7E70`.
//
// Same lazy-init-accessor recipe as RusaRegistry_GetOrInit/CompanionRegistry_GetOrInit: `s8`
// latch, and materializing the 3 shared integer immediates (0, -1, 1)
// in declaration order matching retail's `li` order.
extern s8 lbl_8053AC10[8];
extern u16 lbl_804C7E70[0xb0];
extern f32 lbl_8053ED90;

extern "C" void* fn_801C0D70(void) {
	if (!lbl_8053AC10[0]) {
		char* p = (char*)lbl_804C7E70;
		f32 rst = lbl_8053ED90;
		u16 zero = 0;
		s32 negone = -1;
		s8 one = 1;
		*(f32*)(p + 0x54) = rst;
		*(f32*)(p + 0x58) = rst;
		*(f32*)(p + 0x5c) = rst;
		*(u16*)(p + 0x0) = zero;
		*(u16*)(p + 0x2) = zero;
		*(u16*)(p + 0x4) = zero;
		*(u16*)(p + 0x6) = zero;
		*(u16*)(p + 0x8) = zero;
		*(s32*)(p + 0xc) = zero;
		*(s32*)(p + 0x50) = negone;
		lbl_8053AC10[0] = one;
	}
	return lbl_804C7E70;
}
