#include "types.h"

/* fn_801D6CEC(posSrc, vec3Dst) - a "flatten to 3D vector" helper: copies
 * posSrc->0x0 (x) and posSrc->0x14 (z) into vec3Dst->0x0/0x4, and a fixed
 * constant (lbl_8053F150 - the same "base/neutral" constant this whole
 * cluster reuses) into vec3Dst->0x8 (a fixed Y). First function of a new,
 * grouped no-extab file immediately after dtor_801D46FC's class file closed
 * (extab_801d6ac8.s) - likely part of the same "this+0x4c4" reusable
 * sub-object's own utility library (see extab_801d6e20.s), not a new actor
 * class of its own. Caller not yet traced.
 */

ASM void fn_801D6CEC(void);

ASM void fn_801D6CEC(void)
{
    nofralloc
    lfs fp0, 0x0(r3)
    lfs fp1, 0x14(r3)
    stfs fp0, 0x0(r4)
    opword  0xC002C1B0  // lfs f0, lbl_8053F150@sda21(r0)
    stfs fp1, 0x4(r4)
    stfs fp0, 0x8(r4)
    blr
}

