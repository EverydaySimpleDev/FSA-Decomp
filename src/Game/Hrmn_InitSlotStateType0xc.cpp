#include "types.h"

// Hrmn_InitSlotStateType0xc(this): reset a "cyclic counter + lookup table" record to
// a fixed type tag (0xc), counters zeroed. Used by HRMN's fn_80216178
// to initialize per-slot state before Hrmn_AdvanceSlotStateType0xc drives it.
extern "C" {

void Hrmn_InitSlotStateType0xc(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u32*)(p + 0x0) = 0xc;
	*(u32*)(p + 0x4) = 0;
	*(u32*)(p + 0x8) = 0;
}

}
