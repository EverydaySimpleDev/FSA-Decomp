#include "types.h"

// component C: 3 tiny vtable-slot/helper functions bundled.
extern "C" {
void ClearIndirectFlags_0x2c0_0x2c4(void* thisPtr) {
	void* p1 = *(void**)((char*)thisPtr + 0x2c0);
	*(u8*)p1 = 0;
	void* p2 = *(void**)((char*)thisPtr + 0x2c4);
	*(u8*)p2 = 0;
}

void EmptyHook_8039FE6C(void) {}

int ReturnTrue_8039FE70(void) { return 1; }
}
