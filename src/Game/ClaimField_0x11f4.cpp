#include "types.h"

// ClaimField_0x11f4 - "claim once" latch: if this->0x11f4 is already set (>0),
// return 0; otherwise store the incoming value and return 1.
// GetField_0x436/GetPtrField_0x4/GetField_0xcfe/IncrementField_0x1224 -
// trivial field accessors, the last one an increment counter.
extern "C" {

s32 ClaimField_0x11f4(void* thisObj, s32 val) {
	if (*(s32*)((char*)thisObj + 0x11f4) <= 0) {
		*(s32*)((char*)thisObj + 0x11f4) = val;
		return 1;
	} else {
		return 0;
	}
}

u8 GetField_0x436(void* thisObj) {
	return *((u8*)thisObj + 0x436);
}

void* GetPtrField_0x4(void* thisObj) {
	return *(void**)((char*)thisObj + 0x4);
}

u8 GetField_0xcfe(void* thisObj) {
	return *((u8*)thisObj + 0xcfe);
}

void IncrementField_0x1224(void* thisObj) {
	*(u32*)((char*)thisObj + 0x1224) += 1;
}

}
