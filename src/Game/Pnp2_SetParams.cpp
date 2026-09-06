#include "types.h"
#include "Game/Actor.h"

// PNP2: setParams. Extracts 3 bitfields from this->0x90, re-reading the field independently for each extraction (matching retail's own redundant reloads).
extern "C" {
void Pnp2_SetParams(void* thisPtr) {
	char* p = (char*)thisPtr;
	u32 v1 = ((Actor*)thisPtr)->spawnParam;
	*(u32*)(p + 0x230) = (v1 >> 26) & 0x1;
	u32 v2 = ((Actor*)thisPtr)->spawnParam;
	*(u32*)(p + 0x234) = v2 & 0xFF;
	u32 v3 = ((Actor*)thisPtr)->spawnParam;
	*(u32*)(p + 0x238) = (v3 >> 8) & 0xFFF;
}
}
