#include "types.h"

// SetSentinelField_0xc - trivial sentinel setter (this->0xc = -1).
extern "C" void SetSentinelField_0xc(void* thisObj) {
	*(s32*)((char*)thisObj + 0xc) = -1;
}
