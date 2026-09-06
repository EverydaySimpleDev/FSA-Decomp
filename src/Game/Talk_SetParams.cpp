#include "types.h"

// TALK: setParams.
extern "C" {
void Talk_SetParams(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(s32*)(p + 0x230) = 0;
	*(u16*)(p + 0x238) = 0x78;
	*(u32*)(p + 0x234) = *(u32*)(p + 0x198);
	*(u8*)(p + 0x11f) = 1;
	*(u8*)(p + 0x11e) = 1;
}
}
