#include "types.h"

// 3 tiny functions sharing a byte flag at this->0x121f (busy/locked).
extern "C" {
u8 GetBusyLocked(void* thisPtr) { return *(u8*)((char*)thisPtr + 0x121f); }

void ClearBusyLocked(void* thisPtr) {
	char* p = (char*)thisPtr;
	if (*(u8*)(p + 0x121f) != 1) return;
	*(u8*)(p + 0x121f) = 0;
	if (*(s32*)(p + 0x11f0) >= 5) return;
	*(s32*)(p + 0x11f0) = 5;
}

void SetBusyLocked(void* thisPtr) { *(u8*)((char*)thisPtr + 0x121f) = 1; }
}
