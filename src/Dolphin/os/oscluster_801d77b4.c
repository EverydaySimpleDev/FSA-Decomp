#include "types.h"

/* fn_801D77B4(this) - the "this+0x4c4" launcher sub-object's OWN reset
 * primitive, called directly from fn_801D686C's constructor (extab_801d686c.s)
 * to init this+0x4c4 - BYTE-IDENTICAL to fn_801D76B4 (oscluster_801d76b4.c),
 * a second, separately-emitted copy of the exact same field-reset logic (16 target-ID slots -> -1, state/timer/position
 * fields -> 0/base-constant). Not a decomp artifact - MWCC really emitted the
 * same reset body twice at two different addresses.
 *
 * fn_801D7830(elem) - the per-frame "decay + advance with cap" update for the
 * shared 0x14-byte-strided array element type (see fn_801D7874 below and
 * fn_801E4AB0/fn_801E4B0C, extab_801d6d08.s/extab_801d686c.s) - decays
 * elem->0x8/0xc (a 2D velocity) by a constant `lbl_8053F190`, advances
 * elem->0x10 (a lifetime/countdown float) by `lbl_8053F194`, clamped to a max
 * `lbl_8053F198`.
 *
 * fn_801D7874(elem) - the per-slot INIT for that same element type: elem->0x0
 * = -1 (sentinel, matching every other "-1 = empty" slot convention this
 * session), elem->0x4/0x5 = 0 (bytes), elem->0x8/0xc/0x10 = the shared base
 * constant. Called both directly by fn_801D686C's constructor loop and via
 * the fn_801D6A58 placement-construct trampoline (extab_801d6a58.s).
 */

ASM void fn_801D77B4(void);
ASM void fn_801D7830(void);
ASM void fn_801D7874(void);

ASM void fn_801D77B4(void)
{
    nofralloc
    li r0, -0x1
    li r4, 0x0
    stw r0, 0x0(r3)
    opword  0xC002C1B0  // lfs f0, lbl_8053F150@sda21(r0)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
    stw r0, 0x10(r3)
    stw r0, 0x14(r3)
    stw r0, 0x18(r3)
    stw r0, 0x1c(r3)
    stw r0, 0x20(r3)
    stw r0, 0x24(r3)
    stw r0, 0x28(r3)
    stw r0, 0x2c(r3)
    stw r0, 0x30(r3)
    stw r0, 0x34(r3)
    stw r0, 0x38(r3)
    stw r0, 0x3c(r3)
    stw r4, 0x40(r3)
    stw r4, 0x44(r3)
    stfs fp0, 0x48(r3)
    stfs fp0, 0x4c(r3)
    stfs fp0, 0x50(r3)
    sth r4, 0x54(r3)
    sth r4, 0x56(r3)
    stb r4, 0x58(r3)
    stfs fp0, 0x5c(r3)
    stfs fp0, 0x60(r3)
    stw r4, 0x64(r3)
    blr
}

ASM void fn_801D7830(void)
{
    nofralloc
    lfs fp0, 0x8(r3)
    opword  0xC062C1F0  // lfs f3, lbl_8053F190@sda21(r0)
    opword  0xC022C1F4  // lfs f1, lbl_8053F194@sda21(r0)
    fmuls fp2, fp0, fp3
    opword  0xC002C1F8  // lfs f0, lbl_8053F198@sda21(r0)
    stfs fp2, 0x8(r3)
    lfs fp2, 0xc(r3)
    fmuls fp2, fp2, fp3
    stfs fp2, 0xc(r3)
    lfs fp2, 0x10(r3)
    fadds fp1, fp2, fp1
    stfs fp1, 0x10(r3)
    lfs fp1, 0x10(r3)
    fcmpo cr0, fp1, fp0
    bgelr
    stfs fp0, 0x10(r3)
    blr
}

ASM void fn_801D7874(void)
{
    nofralloc
    li r4, -0x1
    li r0, 0x0
    stw r4, 0x0(r3)
    opword  0xC002C1B0  // lfs f0, lbl_8053F150@sda21(r0)
    stb r0, 0x4(r3)
    stb r0, 0x5(r3)
    stfs fp0, 0x8(r3)
    stfs fp0, 0xc(r3)
    stfs fp0, 0x10(r3)
    blr
}

