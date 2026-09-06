#include "types.h"

extern "C" {

// fn_801D0D50(this, playerIdx, point*, radius) - a matched pair with
// fn_801D0DA0 reading the SAME per-player remembered-position array
// confirmed in fn_801D05F8 (this->0x1ac[playerIdx],
// project_fsa_slk2_target_selection_solved.md): returns whether that
// remembered position is within `radius` (arriving in f1, the EABI
// float arg register) of the given point (a squared-distance <=
// radius^2 proximity test). Split out of the original
// extab_801d0d50.s file.
#pragma fp_contract off
s32 fn_801D0D50(void* thisArg, s32 playerIdx, f32* point, f32 radius) {
    u8* p = (u8*)thisArg;
    f32 radiusSq = radius * radius;
    s32 result = 0;
    f32* record = (f32*)(p + playerIdx * 0xc + 0x1ac);
    f32 dz = record[1] - point[1];
    f32 dx = record[0] - point[0];
    f32 distSq = dx * dx + dz * dz;
    if (distSq <= radiusSq) {
        result = 1;
    }
    return result;
}
#pragma fp_contract reset

}
