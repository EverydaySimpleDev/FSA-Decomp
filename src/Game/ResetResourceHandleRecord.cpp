#include "types.h"

// Small POD-record reset used by JIJI/TWTG/FTGL after a resource handle lookup.
extern "C" {
void ResetResourceHandleRecord(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(s32*)(p + 0x0) = -1;
	*(s32*)(p + 0x4) = -1;
	*(u8*)(p + 0x8) = 0;
	*(u8*)(p + 0x9) = 0;
}
}
