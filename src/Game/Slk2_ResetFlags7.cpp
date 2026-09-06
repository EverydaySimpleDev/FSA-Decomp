#include "types.h"

// A plain multi-flag reset: zeroes 7 byte fields. Embedded by SLK2 at its own +0x358.
extern "C" {
void Slk2_ResetFlags7(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u8*)(p + 0x190) = 0;
	*(u8*)(p + 0x2) = 0;
	*(u8*)(p + 0x3) = 0;
	*(u8*)(p + 0x1) = 0;
	*(u8*)(p + 0xca) = 0;
	*(u8*)(p + 0xcb) = 0;
	*(u8*)(p + 0xc9) = 0;
}
}
