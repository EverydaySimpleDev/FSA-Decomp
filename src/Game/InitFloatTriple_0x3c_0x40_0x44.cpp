#include "types.h"

// InitFloatTriple_0x3c_0x40_0x44 - loads the float global lbl_8053FB80
// ONCE and stores it into 3 fields (this->0x3c/0x40/0x44).
// EmptyHook_80213EF8 - empty stub.
extern "C" {

extern f32 lbl_8053FB80;

void InitFloatTriple_0x3c_0x40_0x44(void* thisObj) {
	f32 v = lbl_8053FB80;
	*(f32*)((char*)thisObj + 0x3c) = v;
	*(f32*)((char*)thisObj + 0x40) = v;
	*(f32*)((char*)thisObj + 0x44) = v;
}

void EmptyHook_80213EF8(void) {}

}
