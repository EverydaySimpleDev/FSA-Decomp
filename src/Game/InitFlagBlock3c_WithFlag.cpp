#include "types.h"

// A self-contained pair sharing one 0x3c-byte block. InitFlagBlock3c_WithFlag takes a
// caller flag; ResetFlagBlock3c_Zero is the plain all-zero variant.
extern "C" {

void InitFlagBlock3c_WithFlag(void* thisPtr, u8 flag) {
	char* p = (char*)thisPtr;
	*(u8*)(p + 0x0) = 1;
	*(u8*)(p + 0x1) = flag;
	*(u8*)(p + 0x2) = flag;
	*(u8*)(p + 0x3) = 0;
	*(u16*)(p + 0x4) = 0;
}

void ResetFlagBlock3c_Zero(void* thisPtr) {
	char* p = (char*)thisPtr;
	*(u8*)(p + 0x0) = 0;
	*(u8*)(p + 0x1) = 0;
	*(u8*)(p + 0x2) = 0;
	*(u8*)(p + 0x3) = 0;
	*(u16*)(p + 0x4) = 0;
}

}
