#include "types.h"
#include "Game/Actor.h"

// ZOMO: setParams.
extern "C" {
void Zomo_SetParams(void* thisPtr) {
	char* p = (char*)thisPtr;
	u32 v = ((Actor*)thisPtr)->spawnParam;
	*(u32*)(p + 0x234) = v & 0xFFF;
	*(s32*)(p + 0x238) = 0;
	*(s32*)(p + 0x230) = 0;
}
}
