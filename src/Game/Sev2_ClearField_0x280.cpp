#include "types.h"

// SEV2 cluster, part 1/5. Sev2_ClearField_0x280 zeroes this->0x280; Sev2_EmptyHook is an empty override.
extern "C" {
void Sev2_ClearField_0x280(void* thisPtr) { *(s32*)((char*)thisPtr + 0x280) = 0; }
void Sev2_EmptyHook(void) {}
}
