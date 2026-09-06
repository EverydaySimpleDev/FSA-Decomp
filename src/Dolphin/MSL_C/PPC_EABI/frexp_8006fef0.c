#include "types.h"

extern f64 lbl_8053B678;
extern f64 lbl_8053B680;
extern f64 lbl_8053B688;
extern f64 lbl_8053B690;
extern f64 lbl_8053B698;
extern f64 lbl_8053B6A0;
extern f64 copysign(register f64 a, register f64 b);

//8006FEF0
ASM f64 frexp(register f64 value, register s32* exp)
{
    nofralloc
    stwu    r1, -0x10(r1)
    li      r4, 0x0
    lis     r0, 0x7ff0
    stfd    f1, 0x8(r1)
    lwz     r5, 0x8(r1)
    stw     r4, 0x0(r3)
    clrlwi  r4, r5, 1
    lwz     r6, 0xc(r1)
    cmpw    r4, r0
    bge     L_8006FF20
    or.     r0, r4, r6
    bne     L_8006FF28
L_8006FF20:
    lfd     f1, 0x8(r1)
    b       L_8006FF74
L_8006FF28:
    lis     r0, 0x10
    cmpw    r4, r0
    bge     L_8006FF50
    lfd     f0, lbl_8053B678
    li      r0, -0x36
    stw     r0, 0x0(r3)
    fmul    f0, f1, f0
    stfd    f0, 0x8(r1)
    lwz     r5, 0x8(r1)
    clrlwi  r4, r5, 1
L_8006FF50:
    rlwinm  r0, r5, 0, 12, 0
    lwz     r5, 0x0(r3)
    srawi   r4, r4, 20
    oris    r0, r0, 0x3fe0
    stw     r0, 0x8(r1)
    add     r4, r4, r5
    subi    r0, r4, 0x3fe
    stw     r0, 0x0(r3)
    lfd     f1, 0x8(r1)
L_8006FF74:
    addi    r1, r1, 0x10
    blr

}

//8006FF7C
ASM f64 ldexp(register f64 value, register s32 exp)
{
    nofralloc
    stwu    r1, -0x20(r1)
    mflr    r0
    stfd    f1, 0x10(r1)
    lwz     r5, 0x10(r1)
    stw     r0, 0x24(r1)
    lis     r0, 0x7ff0
    rlwinm  r4, r5, 0, 1, 11
    cmpw    r4, r0
    stfd    f1, 0x8(r1)
    beq     L_8006FFB4
    bge     L_8006FFFC
    cmpwi   r4, 0x0
    beq     L_8006FFD8
    b       L_8006FFFC
L_8006FFB4:
    clrlwi. r0, r5, 12
    bne     L_8006FFC8
    lwz     r0, 0x14(r1)
    cmpwi   r0, 0x0
    beq     L_8006FFD0
L_8006FFC8:
    li      r0, 0x1
    b       L_80070000
L_8006FFD0:
    li      r0, 0x2
    b       L_80070000
L_8006FFD8:
    clrlwi. r0, r5, 12
    bne     L_8006FFEC
    lwz     r0, 0x14(r1)
    cmpwi   r0, 0x0
    beq     L_8006FFF4
L_8006FFEC:
    li      r0, 0x5
    b       L_80070000
L_8006FFF4:
    li      r0, 0x3
    b       L_80070000
L_8006FFFC:
    li      r0, 0x4
L_80070000:
    cmpwi   r0, 0x2
    ble     L_80070130
    lfd     f0, lbl_8053B680
    fcmpu   cr0, f0, f1
    bne     L_80070018
    b       L_80070130
L_80070018:
    lwz     r5, 0x8(r1)
    lwz     r6, 0xc(r1)
    extrwi. r4, r5, 11, 1
    bne     L_80070070
    clrlwi  r0, r5, 1
    or.     r0, r6, r0
    bne     L_80070038
    b       L_80070130
L_80070038:
    lfd     f1, 0x8(r1)
    lis     r4, 0xffff
    lfd     f0, lbl_8053B688
    addi    r0, r4, 0x3cb0
    cmpw    r3, r0
    fmul    f1, f1, f0
    stfd    f1, 0x8(r1)
    lwz     r5, 0x8(r1)
    extrwi  r4, r5, 11, 1
    subi    r4, r4, 0x36
    bge     L_80070070
    lfd     f0, lbl_8053B690
    fmul    f1, f0, f1
    b       L_80070130
L_80070070:
    cmpwi   r4, 0x7ff
    bne     L_80070084
    lfd     f0, 0x8(r1)
    fadd    f1, f0, f0
    b       L_80070130
L_80070084:
    add     r4, r4, r3
    cmpwi   r4, 0x7fe
    ble     L_800700A8
    lfd     f1, lbl_8053B698
    lfd     f2, 0x8(r1)
    bl      copysign
    lfd     f0, lbl_8053B698
    fmul    f1, f0, f1
    b       L_80070130
L_800700A8:
    cmpwi   r4, 0x0
    ble     L_800700C8
    rlwinm  r3, r5, 0, 12, 0
    slwi    r0, r4, 20
    or      r0, r3, r0
    stw     r0, 0x8(r1)
    lfd     f1, 0x8(r1)
    b       L_80070130
L_800700C8:
    cmpwi   r4, -0x36
    bgt     L_80070110
    lis     r4, 0x1
    subi    r0, r4, 0x3cb0
    cmpw    r3, r0
    ble     L_800700F8
    lfd     f1, lbl_8053B698
    lfd     f2, 0x8(r1)
    bl      copysign
    lfd     f0, lbl_8053B698
    fmul    f1, f0, f1
    b       L_80070130
L_800700F8:
    lfd     f1, lbl_8053B690
    lfd     f2, 0x8(r1)
    bl      copysign
    lfd     f0, lbl_8053B690
    fmul    f1, f0, f1
    b       L_80070130
L_80070110:
    addi    r0, r4, 0x36
    rlwinm  r3, r5, 0, 12, 0
    slwi    r0, r0, 20
    lfd     f1, lbl_8053B6A0
    or      r0, r3, r0
    stw     r0, 0x8(r1)
    lfd     f0, 0x8(r1)
    fmul    f1, f1, f0
L_80070130:
    lwz     r0, 0x24(r1)
    mtlr    r0
    addi    r1, r1, 0x20
    blr

}

//80070140
ASM f64 modf(register f64 value, register f64* iptr)
{
    nofralloc
    stwu    r1, -0x10(r1)
    stfd    f1, 0x8(r1)
    lwz     r5, 0x8(r1)
    lwz     r6, 0xc(r1)
    extrwi  r4, r5, 11, 1
    subi    r7, r4, 0x3ff
    cmpwi   r7, 0x14
    bge     L_800701CC
    cmpwi   r7, 0x0
    bge     L_8007017C
    clrrwi  r4, r5, 31
    li      r0, 0x0
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    b       L_80070234
L_8007017C:
    lis     r4, 0x10
    subi    r0, r4, 0x1
    sraw    r4, r0, r7
    and     r0, r5, r4
    or.     r0, r6, r0
    bne     L_800701B0
    clrrwi  r4, r5, 31
    li      r0, 0x0
    stw     r4, 0x8(r1)
    stw     r0, 0xc(r1)
    stfd    f1, 0x0(r3)
    lfd     f1, 0x8(r1)
    b       L_80070234
L_800701B0:
    andc    r4, r5, r4
    li      r0, 0x0
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lfd     f0, 0x0(r3)
    fsub    f1, f1, f0
    b       L_80070234
L_800701CC:
    cmpwi   r7, 0x33
    ble     L_800701F0
    clrrwi  r4, r5, 31
    li      r0, 0x0
    stw     r4, 0x8(r1)
    stw     r0, 0xc(r1)
    stfd    f1, 0x0(r3)
    lfd     f1, 0x8(r1)
    b       L_80070234
L_800701F0:
    subi    r0, r7, 0x14
    li      r4, -0x1
    srw     r4, r4, r0
    and.    r0, r6, r4
    bne     L_80070220
    clrrwi  r4, r5, 31
    li      r0, 0x0
    stw     r4, 0x8(r1)
    stw     r0, 0xc(r1)
    stfd    f1, 0x0(r3)
    lfd     f1, 0x8(r1)
    b       L_80070234
L_80070220:
    stw     r5, 0x0(r3)
    andc    r0, r6, r4
    stw     r0, 0x4(r3)
    lfd     f0, 0x0(r3)
    fsub    f1, f1, f0
L_80070234:
    addi    r1, r1, 0x10
    blr

}
