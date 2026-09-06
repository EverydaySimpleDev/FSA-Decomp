#include "types.h"

extern f64 lbl_80539D38;
extern f64 lbl_8053B6B0;
extern int errno;

//80070354
ASM f64 __ieee754_sqrt(register f64 x)
{
    nofralloc
    stwu    r1, -0x20(r1)
    stfd    f1, 0x8(r1)
    lwz     r6, 0x8(r1)
    lwz     r0, 0xc(r1)
    rlwinm  r3, r6, 0, 1, 11
    subis   r3, r3, 0x7ff0
    cmplwi  r3, 0x0
    bne     L_80070384
    fmadd   f1, f1, f1, f1
    li      r0, 0x21
    stw     r0, errno
    b       L_80070570
L_80070384:
    cmpwi   r6, 0x0
    bgt     L_800703B8
    clrlwi  r3, r6, 1
    or.     r3, r0, r3
    bne     L_8007039C
    b       L_80070570
L_8007039C:
    cmpwi   r6, 0x0
    bge     L_800703B8
    lis     r3, lbl_80539D38@ha
    li      r0, 0x21
    stw     r0, errno
    lfs     f1, lbl_80539D38@l(r3)
    b       L_80070570
L_800703B8:
    srawi.  r3, r6, 20
    bne     L_8007040C
    b       L_800703D4
L_800703C4:
    srwi    r4, r0, 11
    slwi    r0, r0, 21
    or      r6, r6, r4
    subi    r3, r3, 0x15
L_800703D4:
    cmpwi   r6, 0x0
    beq     L_800703C4
    li      r7, 0x0
    b       L_800703EC
L_800703E4:
    slwi    r6, r6, 1
    addi    r7, r7, 0x1
L_800703EC:
    rlwinm. r4, r6, 0, 11, 11
    beq     L_800703E4
    subfic  r4, r7, 0x20
    subi    r5, r7, 0x1
    srw     r4, r0, r4
    slw     r0, r0, r7
    subf    r3, r5, r3
    or      r6, r6, r4
L_8007040C:
    subi    r4, r3, 0x3ff
    clrlwi  r5, r6, 12
    clrlwi. r4, r4, 31
    oris    r5, r5, 0x10
    beq     L_80070430
    srwi    r4, r0, 31
    add     r0, r0, r0
    add     r4, r4, r5
    add     r5, r5, r4
L_80070430:
    srwi    r4, r0, 31
    add     r0, r0, r0
    add     r4, r4, r5
    li      r9, 0x0
    add     r5, r5, r4
    li      r11, 0x0
    li      r10, 0x0
    li      r12, 0x0
    lis     r6, 0x20
    b       L_80070484
L_80070458:
    add     r4, r11, r6
    cmpw    r4, r5
    bgt     L_80070470
    add     r11, r4, r6
    subf    r5, r4, r5
    add     r12, r12, r6
L_80070470:
    srwi    r4, r0, 31
    add     r0, r0, r0
    add     r4, r4, r5
    srwi    r6, r6, 1
    add     r5, r5, r4
L_80070484:
    cmplwi  r6, 0x0
    bne     L_80070458
    lis     r6, 0x8000
    b       L_800704FC
L_80070494:
    cmpw    r11, r5
    mr      r7, r11
    add     r8, r9, r6
    blt     L_800704B0
    bne     L_800704E8
    cmplw   r8, r0
    bgt     L_800704E8
L_800704B0:
    clrrwi  r4, r8, 31
    add     r9, r8, r6
    addis   r4, r4, 0x8000
    cmplwi  r4, 0x0
    bne     L_800704D0
    clrrwi. r4, r9, 31
    bne     L_800704D0
    addi    r11, r11, 0x1
L_800704D0:
    cmplw   r0, r8
    subf    r5, r7, r5
    bge     L_800704E0
    subi    r5, r5, 0x1
L_800704E0:
    subf    r0, r8, r0
    add     r10, r10, r6
L_800704E8:
    srwi    r4, r0, 31
    add     r0, r0, r0
    add     r4, r4, r5
    srwi    r6, r6, 1
    add     r5, r5, r4
L_800704FC:
    cmplwi  r6, 0x0
    bne     L_80070494
    or.     r0, r5, r0
    beq     L_80070538
    lfd     f0, lbl_8053B6B0
    addis   r0, r10, 0x1
    cmplwi  r0, 0xffff
    stfd    f0, 0x10(r1)
    stfd    f0, 0x10(r1)
    bne     L_80070530
    li      r10, 0x0
    addi    r12, r12, 0x1
    b       L_80070538
L_80070530:
    clrlwi  r0, r10, 31
    add     r10, r10, r0
L_80070538:
    clrlwi  r0, r12, 31
    srawi   r4, r12, 1
    cmpwi   r0, 0x1
    srwi    r5, r10, 1
    addis   r4, r4, 0x3fe0
    bne     L_80070554
    oris    r5, r5, 0x8000
L_80070554:
    subi    r0, r3, 0x3ff
    stw     r5, 0x14(r1)
    srawi   r0, r0, 1
    slwi    r0, r0, 20
    add     r4, r4, r0
    stw     r4, 0x10(r1)
    lfd     f1, 0x10(r1)
L_80070570:
    addi    r1, r1, 0x20
    blr

}

extern f64 sin(register f64 x);

//80070578
ASM f32 sinf(register f32 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    bl      sin
    lwz     r0, 0x14(r1)
    frsp    f1, f1
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

extern f64 cos(register f64 x);

//8007059C
ASM f32 cosf(register f32 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    bl      cos
    lwz     r0, 0x14(r1)
    frsp    f1, f1
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}
