#include "types.h"

/* fn_801D7DB4(this, magnitude) - called by fn_801D6E20 (extab_801d6e20.s) with
 * this->0x60 as `magnitude`. Stores it into this->0x54/0x58/0x5c (velocity),
 * derives 4 scaled range floats (this->0x60-0x7c) from it via constants
 * `lbl_8053F1A4/8/C/0`, then propagates the velocity into BOTH attached effect
 * handles (this->0x2a8/0x2ac, the SAME 2 handles fn_801D7BA0/fn_801D7E6C use)
 * at their own +0x98/0x9c/0xa0/0xb0/0xb4 offsets - "push this actor's current
 * velocity into its trailing effects."
 */

ASM void fn_801D7DB4(void);

ASM void fn_801D7DB4(void)
{
    nofralloc
    stfs fp1, 0x54(r3)
    opword  0xC002C204  // lfs f0, lbl_8053F1A4@sda21(r0)
    stfs fp1, 0x58(r3)
    fmuls fp3, fp0, fp1
    opword  0xC002C208  // lfs f0, lbl_8053F1A8@sda21(r0)
    stfs fp1, 0x5c(r3)
    opword  0xC042C20C  // lfs f2, lbl_8053F1AC@sda21(r0)
    fmuls fp4, fp0, fp1
    stfs fp3, 0x60(r3)
    opword  0xC002C210  // lfs f0, lbl_8053F1B0@sda21(r0)
    fmuls fp2, fp2, fp1
    stfs fp3, 0x64(r3)
    fmuls fp0, fp0, fp1
    stfs fp4, 0x68(r3)
    stfs fp4, 0x6c(r3)
    stfs fp2, 0x70(r3)
    stfs fp2, 0x74(r3)
    stfs fp0, 0x78(r3)
    stfs fp0, 0x7c(r3)
    lwz r4, 0x2a8(r3)
    cmplwi r4, 0x0
    opword  0x4182002C  // beq .L_801D7E34
    lfs fp0, 0x54(r3)
    stfs fp0, 0x98(r4)
    lfs fp0, 0x58(r3)
    stfs fp0, 0x9c(r4)
    lfs fp0, 0x5c(r3)
    stfs fp0, 0xa0(r4)
    lfs fp1, 0x58(r3)
    lfs fp0, 0x54(r3)
    stfs fp0, 0xb0(r4)
    stfs fp1, 0xb4(r4)
L_801D7E34:
    lwz r4, 0x2ac(r3)
    cmplwi r4, 0x0
    beqlr
    lfs fp0, 0x54(r3)
    stfs fp0, 0x98(r4)
    lfs fp0, 0x58(r3)
    stfs fp0, 0x9c(r4)
    lfs fp0, 0x5c(r3)
    stfs fp0, 0xa0(r4)
    lfs fp1, 0x58(r3)
    lfs fp0, 0x54(r3)
    stfs fp0, 0xb0(r4)
    stfs fp1, 0xb4(r4)
    blr
}

