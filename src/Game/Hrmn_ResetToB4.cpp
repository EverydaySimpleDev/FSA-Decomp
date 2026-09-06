#include "types.h"

// Plain u16-constant setters used by HRMN as a default-reset call.
extern "C" {
void Hrmn_ResetToB4(void* thisPtr) { *(u16*)thisPtr = 0xb4; }
void Hrmn_ResetToZero(void* thisPtr) { *(u16*)thisPtr = 0x0; }
}
