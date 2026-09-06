#include "types.h"

// fn_801F36D4(this, param) - a "claim once" latch: if neither this->0xcc
// nor this->0xc4 is already set, sets this->0xcc and stores param at
// this->0xd0, returning true; otherwise returns false without side effects.
//
// Uses the established default-then-override bool-predicate recipe.
// The one new rule found here: the `u8`-truncating return needs the
// function declared to return `u32` (not `u8`/`bool`) with an
// explicit `& 0xff` on the return expression - both a plain `u8`
// return and a `bool` return skip retail's `clrlwi` truncation
// (MWCC provably knows the value already fits, so it elides the
// mask) unless the truncation is spelled out explicitly in the
// return expression itself. Sibling fn_801F3708 (float-heavy) remains
// raw asm in its own file, splitting the original dtk bundle; siblings
// fn_801F3744/fn_801F3780 are real C++ in Game/stub_801f3744.cpp.
extern "C" u32 fn_801F36D4(void* thisObj, s32 param) {
	char* p = (char*)thisObj;
	u32 result = 0;
	if (*(u8*)(p + 0xcc) == 0 && *(u8*)(p + 0xc4) == 0) {
		*(u8*)(p + 0xcc) = 1;
		result = 1;
		*(s32*)(p + 0xd0) = param;
	}
	return result & 0xff;
}
