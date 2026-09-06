#include "types.h"

// RusaRegistry_Register(registry, id) - REGISTER half of the "active RUSA
// instances" registry - push-back `id` at `registry + count*4`, then
// increments the count at `registry->0x80`. Same idiom already
// confirmed for NAVI's companion registry (GrowableArray_PushBack). The
// UNREGISTER half, RusaRegistry_Unregister, contains a real remove-and-shift loop
// and stays raw asm in Dolphin/os/extab_80212ba0.s.
extern "C" {

void RusaRegistry_Register(void* registryPtr, s32 id) {
	char* p = (char*)registryPtr;
	u32 count = *(u32*)(p + 0x80);
	*(s32*)(p + count * 4) = id;
	u32 count2 = *(u32*)(p + 0x80);
	*(u32*)(p + 0x80) = count2 + 1;
}

}
