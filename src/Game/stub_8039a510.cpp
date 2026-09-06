#include "types.h"

// fn_8039A510 - component B vtable slot: advances a byte counter
// (this->0x281), then uses the counter as a byte offset from `this` to
// write 2 fields (a copy of this->0x22c, then a zero) at that
// dynamically-offset location. Each use re-reads the counter from
// memory rather than caching it, matching retail's own reload pattern.
extern "C" void fn_8039A510(void* thisObj) {
	u8* base = (u8*)thisObj;
	base[0x281] = base[0x281] + 1;
	base[base[0x281] + 0x202] = base[0x22c];
	base[base[0x281] + 0x257] = 0;
}
