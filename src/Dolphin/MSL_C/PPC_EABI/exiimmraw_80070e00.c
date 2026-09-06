#include "types.h"

//80070E00
ASM BOOL fn_80070E00(register void* buf, register s32 len, register s32 write)
{
    nofralloc
    stwu    r1, -0x48(r1)
    cmplwi  r5, 0x0
    stmw    r22, 0x20(r1)
    beq     L_80070F44
    li      r29, 0x0
    cmpw    r29, r4
    li      r30, 0x0
    bge     L_80070F3C
    cmpwi   r4, 0x8
    subi    r6, r4, 0x8
    ble     L_80071084
    addi    r0, r6, 0x7
    srwi    r0, r0, 3
    cmpwi   r6, 0x0
    mtctr   r0
    addi    r31, r3, 0x0
    ble     L_80071084
L_80070E44:
    subfic  r6, r29, 0x3
    lbz     r12, 0x0(r31)
    addi    r0, r29, 0x1
    lbz     r11, 0x1(r31)
    slwi    r10, r6, 3
    lbz     r9, 0x2(r31)
    subfic  r8, r0, 0x3
    lbz     r7, 0x3(r31)
    addi    r6, r29, 0x2
    lbz     r0, 0x4(r31)
    slw     r12, r12, r10
    lbz     r23, 0x5(r31)
    slwi    r10, r8, 3
    lbz     r25, 0x6(r31)
    subfic  r6, r6, 0x3
    lbz     r27, 0x7(r31)
    slwi    r8, r6, 3
    neg     r6, r29
    addi    r22, r29, 0x4
    slwi    r6, r6, 3
    subfic  r22, r22, 0x3
    addi    r24, r29, 0x5
    slwi    r22, r22, 3
    subfic  r24, r24, 0x3
    addi    r26, r29, 0x6
    slwi    r24, r24, 3
    subfic  r26, r26, 0x3
    addi    r28, r29, 0x7
    slwi    r26, r26, 3
    subfic  r28, r28, 0x3
    slwi    r28, r28, 3
    or      r30, r30, r12
    slw     r10, r11, r10
    or      r30, r30, r10
    slw     r8, r9, r8
    or      r30, r30, r8
    slw     r6, r7, r6
    or      r30, r30, r6
    slw     r0, r0, r22
    or      r30, r30, r0
    slw     r0, r23, r24
    or      r30, r30, r0
    slw     r0, r25, r26
    or      r30, r30, r0
    slw     r0, r27, r28
    or      r30, r30, r0
    addi    r31, r31, 0x8
    addi    r29, r29, 0x8
    bdnz    L_80070E44
    b       L_80071084
L_80070F0C:
    subf    r0, r29, r4
    cmpw    r29, r4
    mtctr   r0
    bge     L_80070F3C
L_80070F1C:
    subfic  r0, r29, 0x3
    lbz     r6, 0x0(r7)
    slwi    r0, r0, 3
    slw     r0, r6, r0
    or      r30, r30, r0
    addi    r7, r7, 0x1
    addi    r29, r29, 0x1
    bdnz    L_80070F1C
L_80070F3C:
    lis     r6, 0xcc00
    stw     r30, 0x6838(r6)
L_80070F44:
    subi    r0, r4, 0x1
    lis     r6, 0xcc00
    slwi    r7, r5, 2
    addi    r8, r6, 0x6800
    ori     r6, r7, 0x1
    slwi    r0, r0, 4
    or      r0, r6, r0
    stwu    r0, 0x34(r8)
L_80070F64:
    lwz     r0, 0x0(r8)
    clrlwi. r0, r0, 31
    bne     L_80070F64
    cmplwi  r5, 0x0
    bne     L_8007107C
    li      r5, 0x0
    lis     r6, 0xcc00
    cmpw    r5, r4
    lwz     r0, 0x6838(r6)
    bge     L_8007107C
    cmpwi   r4, 0x8
    subi    r7, r4, 0x8
    ble     L_80071050
    addi    r6, r7, 0x7
    srwi    r6, r6, 3
    cmpwi   r7, 0x0
    mtctr   r6
    ble     L_80071050
L_80070FAC:
    subfic  r6, r5, 0x3
    slwi    r7, r6, 3
    addi    r6, r5, 0x1
    srw     r8, r0, r7
    subfic  r6, r6, 0x3
    stb     r8, 0x0(r3)
    slwi    r7, r6, 3
    addi    r6, r5, 0x2
    srw     r12, r0, r7
    subfic  r6, r6, 0x3
    stb     r12, 0x1(r3)
    slwi    r6, r6, 3
    srw     r11, r0, r6
    neg     r6, r5
    stb     r11, 0x2(r3)
    slwi    r7, r6, 3
    addi    r6, r5, 0x4
    srw     r10, r0, r7
    subfic  r6, r6, 0x3
    stb     r10, 0x3(r3)
    slwi    r7, r6, 3
    addi    r6, r5, 0x5
    srw     r9, r0, r7
    subfic  r6, r6, 0x3
    stb     r9, 0x4(r3)
    slwi    r7, r6, 3
    srw     r8, r0, r7
    addi    r6, r5, 0x6
    stb     r8, 0x5(r3)
    subfic  r7, r6, 0x3
    addi    r6, r5, 0x7
    slwi    r7, r7, 3
    srw     r7, r0, r7
    subfic  r6, r6, 0x3
    stb     r7, 0x6(r3)
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x7(r3)
    addi    r3, r3, 0x8
    addi    r5, r5, 0x8
    bdnz    L_80070FAC
L_80071050:
    subf    r6, r5, r4
    cmpw    r5, r4
    mtctr   r6
    bge     L_8007107C
L_80071060:
    subfic  r4, r5, 0x3
    slwi    r4, r4, 3
    srw     r4, r0, r4
    stb     r4, 0x0(r3)
    addi    r3, r3, 0x1
    addi    r5, r5, 0x1
    bdnz    L_80071060
L_8007107C:
    li      r3, 0x1
    b       L_8007108C
L_80071084:
    add     r7, r3, r29
    b       L_80070F0C
L_8007108C:
    lmw     r22, 0x20(r1)
    addi    r1, r1, 0x48
    blr
}
