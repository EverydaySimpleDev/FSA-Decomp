#include "types.h"

// Hrmn_DeactivateSlot(this): zeroes a 4-field record (active=0,cnt=0,x=0,y=0).
// The other 3 siblings in this original cluster (fn_801ED7B0,
// Hrmn_ActivateSlotA, Hrmn_ActivateSlotB) are handled separately - see
// Dolphin/os/extab_801ed7b0.s and Game/stub_801ed7f0.cpp.
extern "C" {

void Hrmn_DeactivateSlot(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u8*)(p + 0x0) = 0;
	*(u32*)(p + 0x4) = 0;
	*(u8*)(p + 0x8) = 0;
	*(u8*)(p + 0x9) = 0;
}

}
