#include "types.h"

extern void* lbl_8053AF80[2];

// fn_8018A6A0(this, a, b) - trivial 2-float pair setter.
extern "C" void fn_8018A6A0(void* thisObj, f32 a, f32 b) {
	char* p = (char*)thisObj;
	*(f32*)(p + 0x0) = a;
	*(f32*)(p + 0x4) = b;
}

// fn_8018A6AC() - returns the global sound-bank pointer.
extern "C" void* fn_8018A6AC(void) {
	return lbl_8053AF80[0];
}
