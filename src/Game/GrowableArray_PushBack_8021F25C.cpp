#include "types.h"

// GrowableArray_PushBack - push-back: appends the incoming word to a growable
// array at this+0x8, indexed by the current count (this->0x4), then
// increments the count. GrowableArray_Reset - trivial reset (this->0x0
// halfword and this->0x4 word both zeroed).
extern "C" {

void GrowableArray_PushBack(void* thisObj, u32 value) {
	u32* arr = (u32*)((char*)thisObj + 0x8);
	u32 count = *(u32*)((char*)thisObj + 0x4);
	arr[count] = value;
	*(u32*)((char*)thisObj + 0x4) += 1;
}

void GrowableArray_Reset(void* thisObj) {
	*(u16*)((char*)thisObj + 0x0) = 0;
	*(u32*)((char*)thisObj + 0x4) = 0;
}

}
