#include "types.h"

// GDMN's vtable-0x44 override. Identical shape to RIVR's own 0x44 override.
extern "C" {
void Gdmn_StartTrigger(void* thisPtr) {
	char* p = (char*)thisPtr;
	if (*(s32*)(p + 0x258) != 0) return;
	if (*(s32*)(p + 0x230) == 5) return;
	*(u32*)(p + 0xb0) = 0x11101;
	*(u32*)(p + 0x254) = 0;
	*(u32*)(p + 0x230) = 4;
}
}
