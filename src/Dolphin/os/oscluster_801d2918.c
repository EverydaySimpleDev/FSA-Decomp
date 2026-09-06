#include "types.h"

/*
 * fn_801D2918/fn_801D2978 (0x801D2918-0x801D2A3C, 0x124/292 bytes, no extab - a new,
 * unrelated 2D-vector utility pair, not part of the "timed-cue lookup table" investigated
 * earlier this session).
 *
 * fn_801D2918(this) - a per-frame "decay a 2D impulse vector" step: if this->0x0 (an int
 * tick counter) is > 0, decrements it and scales this->0x4/0x8 (a 2D vector) by a decay
 * factor (lbl_8053F050). Once the counter reaches <=0, resets this->0x0=0 and this->0x4/0x8
 * to a default constant (lbl_8053F054), returning 1 (a "just reset" flag); otherwise
 * returns 0. Classic knockback/impulse-decay-over-time shape.
 *
 * fn_801D2978(this, pointA, pointB, ..., tickCount) - computes a new impulse vector into
 * this->0x4/0x8 from the difference of two input points (pointA-pointB), then clamps its
 * magnitude: if the squared length is within a threshold band (between lbl_8053F054 and
 * lbl_8053F058), normalizes it via the CONFIRMED frsqrte+Newton-Raphson fast-inverse-sqrt
 * idiom and rescales by lbl_8053F05C/8053F060; otherwise leaves it as-is. Finally scales by
 * a caller-supplied blend factor (f1) times lbl_8053F064, and sets this->0x0=tickCount
 * (r6) - restarting fn_801D2918's decay countdown. Likely the "apply a new knockback
 * impulse" entry point for the same component fn_801D2918 decays per frame.
 */

extern f32 lbl_80539D44;


ASM void fn_801D2918(void);
ASM void fn_801D2978(void);

ASM void fn_801D2918(void)
{
    nofralloc
    lwz r4, 0x0(r3)
    li r5, 0x0
    cmpwi r4, 0x0
    opword  0x40810028  // ble .L_801D294C
    subi r0, r4, 0x1
    opword  0xC022C0B0  // lfs f1, lbl_8053F050@sda21(r0)
    stw r0, 0x0(r3)
    lfs fp0, 0x4(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x4(r3)
    lfs fp0, 0x8(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x8(r3)
L_801D294C:
    lwz r0, 0x0(r3)
    cmpwi r0, 0x0
    opword  0x4181001C  // bgt .L_801D2970
    li r0, 0x0
    opword  0xC002C0B4  // lfs f0, lbl_8053F054@sda21(r0)
    stw r0, 0x0(r3)
    li r5, 0x1
    stfs fp0, 0x4(r3)
    stfs fp0, 0x8(r3)
L_801D2970:
    mr r3, r5
    blr
}

ASM void fn_801D2978(void)
{
    nofralloc
    lfs fp2, 0x0(r4)
    lis r7, lbl_80539D44@ha
    lfs fp0, 0x0(r5)
    lfs fp4, 0x4(r4)
    fsubs fp0, fp2, fp0
    lfs fp3, 0x4(r5)
    opword  0xC042C0B8  // lfs f2, lbl_8053F058@sda21(r0)
    fsubs fp3, fp4, fp3
    stfs fp0, 0x4(r3)
    stfs fp3, 0x8(r3)
    lfs fp4, 0x4(r3)
    lfs fp3, 0x8(r3)
    lfs fp0, lbl_80539D44@l(r7)
    fmuls fp4, fp4, fp4
    fmuls fp3, fp3, fp3
    fmuls fp0, fp2, fp0
    fadds fp5, fp4, fp3
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x41820050  // beq .L_801D2A14
    opword  0xC002C0B4  // lfs f0, lbl_8053F054@sda21(r0)
    fcmpo cr0, fp5, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_801D29DC
    opword  0x48000024  // b .L_801D29FC
L_801D29DC:
    frsqrte fp4, fp5
    opword  0xC062C0BC  // lfs f3, lbl_8053F05C@sda21(r0)
    opword  0xC002C0C0  // lfs f0, lbl_8053F060@sda21(r0)
    frsp fp4, fp4
    fmuls fp2, fp4, fp4
    fmuls fp3, fp3, fp4
    fnmsubs fp0, fp5, fp2, fp0
    fmuls fp5, fp3, fp0
L_801D29FC:
    lfs fp0, 0x4(r3)
    fmuls fp0, fp0, fp5
    stfs fp0, 0x4(r3)
    lfs fp0, 0x8(r3)
    fmuls fp0, fp0, fp5
    stfs fp0, 0x8(r3)
L_801D2A14:
    opword  0xC002C0C4  // lfs f0, lbl_8053F064@sda21(r0)
    lfs fp2, 0x4(r3)
    fmuls fp1, fp0, fp1
    fmuls fp0, fp2, fp1
    stfs fp0, 0x4(r3)
    lfs fp0, 0x8(r3)
    fmuls fp0, fp0, fp1
    stfs fp0, 0x8(r3)
    stw r6, 0x0(r3)
    blr
}

