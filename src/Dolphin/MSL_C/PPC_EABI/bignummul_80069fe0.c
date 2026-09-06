#include "types.h"

//80069FE0
ASM void fn_80069FE0(register void* dst, register void* a, register void* b)
{
    nofralloc
    stwu    r1, -0x70(r1)
    lis     r7, 0xcccd
    lbz     r12, 0x4(r5)
    li      r0, 0x0
    stmw    r27, 0x5c(r1)
    addi    r8, r1, 0x8
    lbz     r31, 0x4(r4)
    subi    r29, r12, 0x1
    subi    r9, r7, 0x3333
    li      r30, 0x0
    add     r29, r31, r29
    addi    r6, r29, 0x1
    add     r6, r8, r6
    stb     r0, 0x0(r3)
    mr      r0, r6
    b       L_8006A148
L_8006A020:
    subi    r8, r12, 0x1
    subf    r7, r8, r29
    subic.  r7, r7, 0x1
    bge     L_8006A038
    li      r7, 0x0
    subi    r8, r29, 0x1
L_8006A038:
    addi    r10, r8, 0x1
    subf    r11, r7, r31
    cmpw    r10, r11
    addi    r28, r7, 0x5
    addi    r27, r8, 0x5
    add     r28, r4, r28
    add     r27, r5, r27
    ble     L_8006A05C
    mr      r10, r11
L_8006A05C:
    cmpwi   r10, 0x0
    mr      r8, r10
    ble     L_8006A128
    srwi.   r7, r10, 3
    mtctr   r7
    beq     L_8006A108
L_8006A074:
    lbz     r11, 0x0(r28)
    lbz     r10, 0x0(r27)
    mullw   r7, r11, r10
    lbz     r11, 0x1(r28)
    lbz     r10, -0x1(r27)
    add     r30, r30, r7
    mullw   r7, r11, r10
    lbz     r11, 0x2(r28)
    lbz     r10, -0x2(r27)
    add     r30, r30, r7
    mullw   r7, r11, r10
    lbz     r11, 0x3(r28)
    lbz     r10, -0x3(r27)
    add     r30, r30, r7
    mullw   r7, r11, r10
    lbz     r11, 0x4(r28)
    lbz     r10, -0x4(r27)
    add     r30, r30, r7
    mullw   r7, r11, r10
    lbz     r11, 0x5(r28)
    lbz     r10, -0x5(r27)
    add     r30, r30, r7
    mullw   r7, r11, r10
    lbz     r11, 0x6(r28)
    lbz     r10, -0x6(r27)
    add     r30, r30, r7
    mullw   r7, r11, r10
    lbz     r11, 0x7(r28)
    lbz     r10, -0x7(r27)
    addi    r28, r28, 0x8
    subi    r27, r27, 0x8
    add     r30, r30, r7
    mullw   r7, r11, r10
    add     r30, r30, r7
    bdnz    L_8006A074
    andi.   r8, r8, 0x7
    beq     L_8006A128
L_8006A108:
    mtctr   r8
L_8006A10C:
    lbz     r11, 0x0(r28)
    addi    r28, r28, 0x1
    lbz     r10, 0x0(r27)
    subi    r27, r27, 0x1
    mullw   r7, r11, r10
    add     r30, r30, r7
    bdnz    L_8006A10C
L_8006A128:
    mulhwu  r8, r9, r30
    subi    r29, r29, 0x1
    mr      r7, r8
    srwi    r8, r8, 3
    mulli   r8, r8, 0xa
    subf    r8, r8, r30
    srwi    r30, r7, 3
    stbu    r8, -0x1(r6)
L_8006A148:
    cmpwi   r29, 0x0
    bgt     L_8006A020
    lha     r7, 0x2(r4)
    cmplwi  r30, 0x0
    lha     r4, 0x2(r5)
    add     r4, r7, r4
    sth     r4, 0x2(r3)
    beq     L_8006A178
    stbu    r30, -0x1(r6)
    lha     r4, 0x2(r3)
    addi    r4, r4, 0x1
    sth     r4, 0x2(r3)
L_8006A178:
    li      r7, 0x0
    b       L_8006A194
L_8006A180:
    lbz     r5, 0x0(r6)
    addi    r4, r7, 0x5
    addi    r7, r7, 0x1
    addi    r6, r6, 0x1
    stbx    r5, r3, r4
L_8006A194:
    cmpwi   r7, 0x24
    bge     L_8006A1A4
    cmplw   r6, r0
    blt     L_8006A180
L_8006A1A4:
    cmplw   r6, r0
    stb     r7, 0x4(r3)
    bge     L_8006A24C
    lbz     r4, 0x0(r6)
    cmplwi  r4, 0x5
    blt     L_8006A24C
    bne     L_8006A1F4
    addi    r5, r6, 0x1
    subf    r4, r5, r0
    mtctr   r4
    cmplw   r5, r0
    bge     L_8006A1E8
L_8006A1D4:
    lbz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    bne     L_8006A1F4
    addi    r5, r5, 0x1
    bdnz    L_8006A1D4
L_8006A1E8:
    lbz     r0, -0x1(r6)
    clrlwi. r0, r0, 31
    beq     L_8006A24C
L_8006A1F4:
    lbz     r4, 0x4(r3)
    addi    r6, r3, 0x5
    li      r0, 0x0
    subi    r5, r4, 0x1
    add     r5, r6, r5
L_8006A208:
    lbz     r4, 0x0(r5)
    cmplwi  r4, 0x9
    bge     L_8006A220
    addi    r0, r4, 0x1
    stb     r0, 0x0(r5)
    b       L_8006A24C
L_8006A220:
    cmplw   r5, r6
    bne     L_8006A240
    li      r0, 0x1
    stb     r0, 0x0(r5)
    lha     r4, 0x2(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x2(r3)
    b       L_8006A24C
L_8006A240:
    stb     r0, 0x0(r5)
    subi    r5, r5, 0x1
    b       L_8006A208
L_8006A24C:
    lmw     r27, 0x5c(r1)
    addi    r1, r1, 0x70
    blr
}
