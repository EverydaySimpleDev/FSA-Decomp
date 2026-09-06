#include "types.h"

// fn_801F3744(this, param) - a SEPARATE "claim once" latch (see
// fn_801F36D4, Game/stub_801f36d4.cpp) keyed on this->0xc4: if not
// already set, sets it and initializes a small cluster of related
// fields (0xc8/0xcc/0xd0/0x110) from/around param, returning true;
// otherwise returns false.
//
// fn_801F3780(this, param) - unconditional field reset (0xa4/0xd8/
// 0xd5/0xe4/0xe8 to param/0), plus one more field (0xe0) conditionally
// zeroed only while this->0x108 (a countdown) is still positive.
extern "C" u32 fn_801F3744(void* thisObj, s32 param) {
	char* p = (char*)thisObj;
	u32 result = 0;
	if (*(u8*)(p + 0xc4) == 0) {
		*(u8*)(p + 0xc4) = 1;
		result = 1;
		*(s32*)(p + 0xc8) = param;
		*(u8*)(p + 0xcc) = 0;
		*(s32*)(p + 0xd0) = -1;
		*(s32*)(p + 0x110) = param;
	}
	return result & 0xff;
}

extern "C" void fn_801F3780(void* thisObj, s32 param) {
	char* p = (char*)thisObj;
	*(s32*)(p + 0xa4) = param;
	*(s32*)(p + 0xd8) = 0;
	*(u8*)(p + 0xd5) = 0;
	*(s32*)(p + 0xe4) = 0;
	*(s32*)(p + 0xe8) = 0;
	if (*(s32*)(p + 0x108) <= 0) return;
	*(s32*)(p + 0xe0) = 0;
}
