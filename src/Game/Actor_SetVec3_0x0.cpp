#include "types.h"

// Actor_SetVec3_0x0 - trivial 3-float vector setter (this->0x0/0x4/0x8 = x,y,z).
extern "C" void Actor_SetVec3_0x0(void* thisObj, f32 x, f32 y, f32 z) {
	*(f32*)((char*)thisObj + 0x0) = x;
	*(f32*)((char*)thisObj + 0x4) = y;
	*(f32*)((char*)thisObj + 0x8) = z;
}
