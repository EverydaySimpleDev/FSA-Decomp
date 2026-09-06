#include "types.h"
#include "Game/Actor.h"

// EMSK: setParams.
extern "C" {
void Emsk_SetParams(void* thisPtr) {
	char* p = (char*)thisPtr;
	u32 v = ((Actor*)thisPtr)->spawnParam;
	*(u32*)(p + 0x230) = v & 0x7F;
	*(s32*)(p + 0x234) = 0x1f4;
}
}
