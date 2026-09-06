#include "types.h"

// FARY actor cluster, part 4/5. If this->0x290 is set, copies this->0xc/
// 0x10/0x14 (position) into that sub-object's own +0xa4/+0xa8/+0xac
// fields. Does the identical copy for this->0x294 if set. A simple "keep
// both flame/ember effect sub-objects synced to my position" helper.
extern "C" {

void Fary_SyncEmberEffectPosition(void* thisPtr) {
	char* p = (char*)thisPtr;
	void* a = *(void**)(p + 0x290);
	if (a != 0) {
		*(f32*)((char*)a + 0xa4) = *(f32*)(p + 0xc);
		*(f32*)((char*)a + 0xa8) = *(f32*)(p + 0x10);
		*(f32*)((char*)a + 0xac) = *(f32*)(p + 0x14);
	}
	void* b = *(void**)(p + 0x294);
	if (b == 0) return;
	*(f32*)((char*)b + 0xa4) = *(f32*)(p + 0xc);
	*(f32*)((char*)b + 0xa8) = *(f32*)(p + 0x10);
	*(f32*)((char*)b + 0xac) = *(f32*)(p + 0x14);
}

}
