#include "types.h"

// Hrmn_ActivateSlotA(this) / Hrmn_ActivateSlotB(this): both set active=1, cnt=0, x=0,
// y=0 - identical bodies, used interchangeably as an "activate this
// slot" initializer by HRMN's fn_80216238.
extern "C" {

void Hrmn_ActivateSlotA(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u8*)(p + 0x0) = 1;
	*(u32*)(p + 0x4) = 0;
	*(u8*)(p + 0x8) = 0;
	*(u8*)(p + 0x9) = 0;
}

void Hrmn_ActivateSlotB(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u8*)(p + 0x0) = 1;
	*(u32*)(p + 0x4) = 0;
	*(u8*)(p + 0x8) = 0;
	*(u8*)(p + 0x9) = 0;
}

}
