#include "types.h"

// RIVR's vtable-0x44 override. A start trigger gated by two early-return conditions.
extern "C" {
void Rivr_StartTrigger(void* thisPtr) {
	char* p = (char*)thisPtr;
	if (*(s32*)(p + 0x258) != 0) return;
	if (*(s32*)(p + 0x230) == 5) return;
	*(u32*)(p + 0xb0) = 0x11101;
	*(u32*)(p + 0x254) = 6;
	*(u32*)(p + 0x230) = 4;
}
}
