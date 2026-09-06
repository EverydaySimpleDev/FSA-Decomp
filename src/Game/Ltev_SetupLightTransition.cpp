#include "types.h"

// Ltev_SetupLightTransition - LTEV: light-transition setup, vtable extension slot (0x9C).
// Two modes selected by whether the final param is 0: mode A (mode!=0)
// stores 5 incoming params as the "target" endpoint fields and computes
// per-component step counts; mode B (mode==0) stores the params as the
// "start" endpoint fields instead.
//
// Ltev_EmptyHook - LTEV: empty no-op override.
extern "C" {

void Ltev_SetupLightTransition(void* thisPtr, s32 p1, s32 p2, s32 p3, s32 p4, s32 p5, s32 mode) {
	char* p = (char*)thisPtr;
	*(s32*)(p + 0x230) = mode;
	if (mode == 0) {
		*(s32*)(p + 0x25c) = p1;
		*(s32*)(p + 0x260) = p2;
		*(s32*)(p + 0x264) = p3;
		*(s32*)(p + 0x258) = p4;
		*(s32*)(p + 0x26c) = p5;
		*(s32*)(p + 0x270) = (*(s32*)(p + 0x25c) - *(s32*)(p + 0x24c)) / 4;
		*(s32*)(p + 0x274) = (*(s32*)(p + 0x260) - *(s32*)(p + 0x250)) / 4;
		*(s32*)(p + 0x278) = (*(s32*)(p + 0x264) - *(s32*)(p + 0x254)) / 4;
		if (*(s32*)(p + 0x268) < *(s32*)(p + 0x26c)) {
			*(s32*)(p + 0x230) = 1;
		}
		return;
	}
	*(s32*)(p + 0x24c) = p1;
	*(s32*)(p + 0x250) = p2;
	*(s32*)(p + 0x254) = p3;
	*(s32*)(p + 0x258) = p4;
	*(s32*)(p + 0x268) = p5;
}

void Ltev_EmptyHook(void) {}

}
