#include "types.h"

/* fn_800FE090/fn_800FE21C/fn_800FE25C/fn_800FE294: 4 more ring-cluster
 * functions, no extab content, ordinary ASM/nofralloc convention.
 *
 * fn_800FE090(ringArray, posA, outVec3): a "chase/follow" iterator -
 * confirms the whole ring is a genuine chain/worm-like structure that
 * advances one link at a time toward a target position. Computes the
 * squared distance from the current accumulator slot's position to
 * `posA` (with the same fast-inverse-sqrt idiom used throughout this
 * cluster); once within a threshold, runs a small state-transition
 * check on neighboring slots' mode bits, then advances/retreats the
 * accumulator index using the EXACT SAME ping-pong stepping logic as
 * `fn_800FDE38`. Outputs the (possibly newly-advanced) slot's
 * position into `outVec3`.
 *
 * fn_800FE21C(ringArray, slotIndexOrSentinel): returns the top byte
 * (bits 24-31) of the resolved slot's universal spawn-parameter
 * field - a small tag accessor.
 * fn_800FE25C(ringArray, slotIndexOrSentinel): returns the resolved
 * slot's own `+0x4` pointer (one level less than the `->0x4->0x4`
 * "type" chase used elsewhere in this cluster) - a parent/owner
 * accessor.
 * fn_800FE294(outVec3, ringArray, slotIndexOrSentinel): copies the
 * resolved slot's position (`+0xc/+0x10/+0x14`) into `outVec3` - a
 * simple position-getter, the non-inlined equivalent of what several
 * other cluster functions do inline.
 */

ASM void fn_800FE090(void);
ASM void fn_800FE21C(void);
ASM void fn_800FE25C(void);
ASM void fn_800FE294(void);

ASM void fn_800FE090(void)
{
    nofralloc
    lbz r6, 0x3(r3)
    li r0, 0x0
    lfs fp1, 0x4(r4)
    slwi r6, r6, 2
    lfs fp3, 0x0(r4)
    add r4, r3, r6
    opword  0xC0029118  // lfs f0, lbl_8053C0B8@sda21(r0)
    lwz r4, 0x4(r4)
    lfs fp2, 0x10(r4)
    lfs fp4, 0xc(r4)
    fsubs fp1, fp2, fp1
    fsubs fp2, fp4, fp3
    fmuls fp1, fp1, fp1
    fmadds fp4, fp2, fp2, fp1
    fcmpo cr0, fp4, fp0
    cror eq, lt, eq
    opword  0x40820008  // bne .L_800FE0D8
    opword  0x48000028  // b .L_800FE0FC
L_800FE0D8:
    frsqrte fp3, fp4
    opword  0xC0429114  // lfs f2, lbl_8053C0B4@sda21(r0)
    opword  0xC0029120  // lfs f0, lbl_8053C0C0@sda21(r0)
    frsp fp3, fp3
    fmuls fp1, fp3, fp3
    fmuls fp2, fp2, fp3
    fnmsubs fp0, fp4, fp1, fp0
    fmuls fp0, fp2, fp0
    fmuls fp4, fp4, fp0
L_800FE0FC:
    opword  0xC0029134  // lfs f0, lbl_8053C0D4@sda21(r0)
    fcmpo cr0, fp4, fp0
    opword  0x408000E8  // bge .L_800FE1EC
    lbz r7, 0x3(r3)
    li r0, 0x2
    clrlslwi r4, r7, 24, 2
    cmplwi r7, 0x0
    add r4, r3, r4
    lwz r4, 0x4(r4)
    lwz r4, 0x90(r4)
    clrlwi r6, r4, 30
    opword  0x4082003C  // bne .L_800FE164
    lbz r4, 0x2(r3)
    li r0, 0x1
    slwi r4, r4, 2
    lwzx r4, r3, r4
    lwz r4, 0x90(r4)
    clrlwi r4, r4, 30
    cmplwi r4, 0x2
    opword  0x4082004C  // bne .L_800FE194
    lbz r4, 0x1(r3)
    cmplwi r4, 0x1
    opword  0x40820040  // bne .L_800FE194
    li r4, 0x0
    stb r4, 0x1(r3)
    opword  0x48000034  // b .L_800FE194
L_800FE164:
    lbz r4, 0x2(r3)
    subi r4, r4, 0x1
    cmpw r7, r4
    opword  0x40820024  // bne .L_800FE194
    cmplwi r6, 0x1
    li r0, 0x3
    opword  0x41820018  // beq .L_800FE194
    cmplwi r6, 0x2
    opword  0x40820068  // bne .L_800FE1EC
    lbz r4, 0x1(r3)
    xori r4, r4, 0x1
    stb r4, 0x1(r3)
L_800FE194:
    lbz r4, 0x1(r3)
    cmplwi r4, 0x0
    opword  0x40820014  // bne .L_800FE1B0
    lbz r4, 0x3(r3)
    addi r4, r4, 0x1
    stb r4, 0x3(r3)
    opword  0x48000010  // b .L_800FE1BC
L_800FE1B0:
    lbz r4, 0x3(r3)
    subi r4, r4, 0x1
    stb r4, 0x3(r3)
L_800FE1BC:
    lbz r6, 0x3(r3)
    lbz r4, 0x2(r3)
    cmplw r6, r4
    opword  0x4082000C  // bne .L_800FE1D4
    li r4, 0x0
    stb r4, 0x3(r3)
L_800FE1D4:
    lbz r4, 0x3(r3)
    cmplwi r4, 0xff
    opword  0x40820010  // bne .L_800FE1EC
    lbz r4, 0x2(r3)
    subi r4, r4, 0x1
    stb r4, 0x3(r3)
L_800FE1EC:
    lbz r4, 0x3(r3)
    slwi r4, r4, 2
    add r4, r3, r4
    mr r3, r0
    lwz r4, 0x4(r4)
    lfs fp0, 0xc(r4)
    stfs fp0, 0x0(r5)
    lfs fp0, 0x10(r4)
    stfs fp0, 0x4(r5)
    lfs fp0, 0x14(r4)
    stfs fp0, 0x8(r5)
    blr
}

ASM void fn_800FE21C(void)
{
    nofralloc
    clrlwi r0, r4, 24
    cmplwi r0, 0xff
    opword  0x40820020  // bne .L_800FE244
    lbz r0, 0x3(r3)
    slwi r0, r0, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x90(r3)
    srwi r3, r0, 24
    blr
L_800FE244:
    clrlslwi r0, r4, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x90(r3)
    srwi r3, r0, 24
    blr
}

ASM void fn_800FE25C(void)
{
    nofralloc
    clrlwi r0, r4, 24
    cmplwi r0, 0xff
    opword  0x4082001C  // bne .L_800FE280
    lbz r0, 0x3(r3)
    slwi r0, r0, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r3, 0x4(r3)
    blr
L_800FE280:
    clrlslwi r0, r4, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r3, 0x4(r3)
    blr
}

ASM void fn_800FE294(void)
{
    nofralloc
    clrlwi r0, r5, 24
    cmplwi r0, 0xff
    opword  0x40820028  // bne .L_800FE2C4
    lbz r0, 0x3(r4)
    slwi r0, r0, 2
    add r4, r4, r0
    lwz r4, 0x4(r4)
    psq_l fp1, 0xc(r4), 0, 0
    lfs fp0, 0x14(r4)
    psq_st fp1, 0x0(r3), 0, 0
    stfs fp0, 0x8(r3)
    blr
L_800FE2C4:
    clrlslwi r0, r5, 24, 2
    add r4, r4, r0
    lwz r4, 0x4(r4)
    psq_l fp1, 0xc(r4), 0, 0
    lfs fp0, 0x14(r4)
    psq_st fp1, 0x0(r3), 0, 0
    stfs fp0, 0x8(r3)
    blr
}

