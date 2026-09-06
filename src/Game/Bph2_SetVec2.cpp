#include "types.h"

// BPH2 cluster, part 5 (final piece). Bph2_SetVec2 - trivial 2-float
// setter, no extab entry (leaf).
extern "C" {

void Bph2_SetVec2(void* thisPtr, f32 a, f32 b) { *(f32*)((char*)thisPtr + 0x0) = a; *(f32*)((char*)thisPtr + 0x4) = b; }

}
