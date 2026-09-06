#include "types.h"

// Both operate on a 0xc8-byte-stride array embedded at this+0, selected by a current-index byte at this->0x190.
extern "C" {
void* GetCurrentSlotPtr(void* thisPtr) {
	u8 idx = *(u8*)((char*)thisPtr + 0x190);
	return (char*)thisPtr + (idx * 0xc8);
}

void SetCurrentSlotIndex(void* thisPtr, u8 idx) {
	*(u8*)((char*)thisPtr + 0x190) = idx;
}
}
