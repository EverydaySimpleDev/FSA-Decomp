#include "types.h"

extern "C" {

// SetField_0xb0(this, val) - trivial setter for this->0xb0.
void SetField_0xb0(void* thisPtr, u32 val) {
	*(u32*)((char*)thisPtr + 0xb0) = val;
}

// GetField_0xb0(this) - trivial getter for this->0xb0.
u32 GetField_0xb0(void* thisPtr) {
	return *(u32*)((char*)thisPtr + 0xb0);
}

// SetField_0x28c(this, val) - trivial setter for this->0x28c.
void SetField_0x28c(void* thisPtr, u32 val) {
	*(u32*)((char*)thisPtr + 0x28c) = val;
}

// SetField_0x2f8(this, val) - trivial setter for this->0x2f8.
void SetField_0x2f8(void* thisPtr, u32 val) {
	*(u32*)((char*)thisPtr + 0x2f8) = val;
}

}
