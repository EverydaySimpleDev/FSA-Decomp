#include "types.h"

extern void* lbl_8053A760;
extern u32 jumptable_80498268[];
extern void fn_800711D4(void);

//80071204
ASM void fn_80071204(register void* taglist)
{
    nofralloc
    mflr    r0
    lis     r4, jumptable_80498268@ha
    stw     r0, 0x4(r1)
    addi    r4, r4, jumptable_80498268@l
    stwu    r1, -0x58(r1)
    stmw    r15, 0x14(r1)
    li      r31, 0x0
    li      r30, 0x0
    li      r29, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x1
    li      r25, 0x0
    li      r24, 0x0
    li      r23, 0x0
    li      r22, 0x0
    li      r21, 0x0
    li      r20, 0x0
    li      r19, 0x0
    li      r18, 0x0
    li      r17, 0x0
    li      r16, 0x0
    li      r15, 0x0
    b       L_80071470
L_80071264:
    cmplwi  r0, 0x19
    bgt     L_8007146C
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr
    lwz     r28, 0x4(r3)
    b       L_8007146C
    lwz     r0, 0x4(r3)
    clrrwi  r5, r27, 1
    or      r27, r5, r0
    b       L_8007146C
    lwz     r0, 0x4(r3)
    rlwinm  r5, r27, 0, 31, 29
    slwi    r0, r0, 1
    or      r27, r5, r0
    b       L_8007146C
    lwz     r0, 0x4(r3)
    rlwinm  r5, r27, 0, 30, 28
    slwi    r0, r0, 2
    or      r27, r5, r0
    b       L_8007146C
    lwz     r0, 0x4(r3)
    rlwinm  r5, r27, 0, 29, 27
    slwi    r0, r0, 3
    or      r27, r5, r0
    b       L_8007146C
    lwz     r0, 0x4(r3)
    rlwinm  r5, r27, 0, 28, 26
    slwi    r0, r0, 4
    or      r27, r5, r0
    b       L_8007146C
    lwz     r0, 0x4(r3)
    rlwinm  r5, r27, 0, 27, 25
    slwi    r0, r0, 5
    or      r27, r5, r0
    b       L_8007146C
    lwz     r0, 0x4(r3)
    rlwinm  r5, r27, 0, 26, 24
    slwi    r0, r0, 6
    or      r27, r5, r0
    b       L_8007146C
    lwz     r0, 0x4(r3)
    rlwinm  r5, r27, 0, 25, 23
    slwi    r0, r0, 7
    or      r27, r5, r0
    b       L_8007146C
    lwz     r26, 0x4(r3)
    b       L_8007146C
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    beq     L_8007146C
    mr      r25, r0
    li      r31, 0x1
    b       L_8007146C
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    beq     L_8007146C
    mr      r25, r0
    li      r31, 0x2
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r24, r6, 0x0
    add     r30, r30, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r23, r6, 0x0
    add     r30, r30, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r22, r6, 0x0
    add     r29, r29, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r21, r6, 0x0
    add     r29, r29, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r20, r6, 0x0
    add     r29, r29, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r19, r6, 0x0
    add     r29, r29, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r18, r6, 0x0
    add     r29, r29, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r17, r6, 0x0
    add     r29, r29, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r16, r6, 0x0
    add     r29, r29, r0
    b       L_8007146C
    lwz     r6, 0x4(r3)
    neg     r5, r6
    subic   r0, r5, 0x1
    subfe   r0, r0, r5
    addi    r15, r6, 0x0
    add     r29, r29, r0
L_8007146C:
    addi    r3, r3, 0x8
L_80071470:
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0xff
    bne     L_80071264
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071498
    bl      fn_800711D4
L_80071498:
    lwz     r4, lbl_8053A760
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_800714CC
    bl      fn_800711D4
L_800714CC:
    lwz     r4, lbl_8053A760
    li      r5, 0x50
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble     L_80071500
    bl      fn_800711D4
L_80071500:
    lwz     r4, lbl_8053A760
    slwi    r0, r27, 1
    slwi    r5, r26, 9
    lwz     r3, 0x8(r4)
    or      r0, r28, r0
    or      r5, r5, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r6, r25, 11
    slwi    r7, r24, 13
    or      r0, r6, r5
    slwi    r4, r23, 15
    or      r0, r7, r0
    or      r7, r4, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_800715A0
    bl      fn_800711D4
L_800715A0:
    lwz     r4, lbl_8053A760
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_800715D4
    bl      fn_800711D4
L_800715D4:
    lwz     r4, lbl_8053A760
    li      r5, 0x60
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble     L_80071608
    bl      fn_800711D4
L_80071608:
    lwz     r4, lbl_8053A760
    slwi    r0, r21, 2
    slwi    r5, r20, 4
    or      r0, r22, r0
    lwz     r3, 0x8(r4)
    slwi    r6, r19, 6
    or      r0, r5, r0
    or      r5, r6, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r7, r18, 8
    or      r0, r7, r5
    slwi    r6, r17, 10
    slwi    r4, r16, 12
    or      r0, r6, r0
    slwi    r5, r15, 14
    or      r0, r4, r0
    or      r7, r5, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_800716B8
    bl      fn_800711D4
L_800716B8:
    lwz     r4, lbl_8053A760
    li      r5, 0x10
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble     L_800716EC
    bl      fn_800711D4
L_800716EC:
    lwz     r4, lbl_8053A760
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble     L_80071734
    bl      fn_800711D4
L_80071734:
    lwz     r4, lbl_8053A760
    li      r6, 0x10
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble     L_80071780
    bl      fn_800711D4
L_80071780:
    lwz     r4, lbl_8053A760
    slwi    r0, r31, 2
    slwi    r5, r29, 4
    lwz     r3, 0x8(r4)
    or      r0, r30, r0
    or      r7, r5, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r7, 24
    extrwi  r6, r7, 8, 8
    stb     r0, 0x0(r3)
    extrwi  r5, r7, 8, 16
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lmw     r15, 0x14(r1)
    lwz     r0, 0x5c(r1)
    addi    r1, r1, 0x58
    mtlr    r0
    blr

}
