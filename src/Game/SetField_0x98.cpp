#include "types.h"

// SetField_0x98(this) - trivial setter: this->0x98 = 1.
extern "C" {

void SetField_0x98(void* thisPtr) {
	*(u8*)((char*)thisPtr + 0x98) = 1;
}

}
