#include "types.h"

// Hrmn_InitSlotStateType3(this): reset a "cyclic counter + lookup table" record to
// a fixed type tag (3), counters zeroed. Used by HRMN's fn_80216238 to
// initialize per-slot state before Hrmn_AdvanceSlotStateType3 drives it.
extern "C" {

void Hrmn_InitSlotStateType3(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u32*)(p + 0x0) = 3;
	*(u32*)(p + 0x4) = 0;
	*(u32*)(p + 0x8) = 0;
}

}
