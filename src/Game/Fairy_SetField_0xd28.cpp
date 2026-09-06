#include "types.h"

// Companion-fairy internal accumulator/accessor cluster. This slice:
// Fairy_SetField_0xd28: this->0xd28 = val (plain setter).
// Fairy_GetField_0x11b4Ptr: returns &this->0x11b4 (address of an embedded member).
// Fairy_SetSubField_0x29c/5C: this->0xbec (indirection) ->0x29c / ->0x298 = val
//   (setters through an owned sub-object pointer).
// Fairy_GetSubField_0x294/74: this->0xbec (same indirection) ->0x294 / ->0x290
//   (getters through the same sub-object).
extern "C" {

void Fairy_SetField_0xd28(void* thisPtr, u32 val) {
	*(u32*)((char*)thisPtr + 0xd28) = val;
}

void* Fairy_GetField_0x11b4Ptr(void* thisPtr) {
	return (char*)thisPtr + 0x11b4;
}

void Fairy_SetSubField_0x29c(void* thisPtr, u32 val) {
	void* sub = *(void**)((char*)thisPtr + 0xbec);
	*(u32*)((char*)sub + 0x29c) = val;
}

void Fairy_SetSubField_0x298(void* thisPtr, u32 val) {
	void* sub = *(void**)((char*)thisPtr + 0xbec);
	*(u32*)((char*)sub + 0x298) = val;
}

u32 Fairy_GetSubField_0x294(void* thisPtr) {
	void* sub = *(void**)((char*)thisPtr + 0xbec);
	return *(u32*)((char*)sub + 0x294);
}

u32 Fairy_GetSubField_0x290(void* thisPtr) {
	void* sub = *(void**)((char*)thisPtr + 0xbec);
	return *(u32*)((char*)sub + 0x290);
}

}
