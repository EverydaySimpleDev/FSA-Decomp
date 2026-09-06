#include "types.h"

extern "C" {

// fn_801D0DA0(this, playerIdx, point*) - returns the raw squared
// distance (no threshold) between the per-player remembered position
// this->0x1ac[playerIdx] and the given point, used by fn_801D05F8's
// closest-player selection loop. Split out of the original
// extab_801d0d50.s file (its sibling fn_801D0D50 stays raw asm).
#pragma fp_contract off
f32 fn_801D0DA0(void* thisArg, s32 playerIdx, f32* point) {
    u8* p = (u8*)thisArg;
    f32* record = (f32*)(p + playerIdx * 0xc + 0x1ac);
    f32 dz = record[1] - point[1];
    f32 dx = record[0] - point[0];
    return dx * dx + dz * dz;
}
#pragma fp_contract reset

}
