#include "types.h"

// Unnamed actor cluster, part 7/9. Actor_SetVec2_0x0 - trivial 2-float setter
// (0x0/0x4), no extab.
extern "C" {

void Actor_SetVec2_0x0(void* thisPtr, f32 a, f32 b) { *(f32*)((char*)thisPtr + 0x0) = a; *(f32*)((char*)thisPtr + 0x4) = b; }

}
