#include "types.h"

//8006D4FC
ASM void qsort(register void* base, register u32 nmemb, register u32 size, register int (*compar)(const void*, const void*))
{
    nofralloc
    stwu    r1, -0x40(r1)
    mflr    r0
    cmplwi  r4, 0x2
    stw     r0, 0x44(r1)
    stmw    r21, 0x14(r1)
    mr      r29, r3
    mr      r30, r5
    mr      r31, r6
    blt     L_8006D654
    srwi    r3, r4, 1
    subi    r0, r4, 0x1
    addi    r28, r3, 0x1
    mr      r27, r4
    subi    r3, r28, 0x1
    mullw   r3, r30, r3
    mullw   r0, r30, r0
    add     r25, r29, r3
    add     r24, r29, r0
L_8006D544:
    cmplwi  r28, 0x1
    ble     L_8006D558
    subf    r25, r30, r25
    subi    r28, r28, 0x1
    b       L_8006D59C
L_8006D558:
    subi    r3, r24, 0x1
    subi    r4, r25, 0x1
    addi    r5, r30, 0x1
    b       L_8006D584
L_8006D568:
    lbz     r6, 0x1(r4)
    lbz     r0, 0x1(r3)
    extsb   r6, r6
    stb     r0, 0x1(r4)
    addi    r4, r4, 0x1
    stb     r6, 0x1(r3)
    addi    r3, r3, 0x1
L_8006D584:
    subic.  r5, r5, 0x1
    bne     L_8006D568
    subi    r27, r27, 0x1
    cmplwi  r27, 0x1
    beq     L_8006D654
    subf    r24, r30, r24
L_8006D59C:
    subi    r0, r28, 0x1
    mr      r26, r28
    mullw   r0, r30, r0
    add     r22, r29, r0
    b       L_8006D644
L_8006D5B0:
    slwi    r26, r26, 1
    mr      r23, r22
    subi    r0, r26, 0x1
    mullw   r0, r30, r0
    cmplw   r26, r27
    add     r22, r29, r0
    bge     L_8006D5F4
    add     r21, r22, r30
    mr      r12, r31
    mr      r3, r22
    mr      r4, r21
    mtctr   r12
    bctrl
    cmpwi   r3, 0x0
    bge     L_8006D5F4
    mr      r22, r21
    addi    r26, r26, 0x1
L_8006D5F4:
    mr      r12, r31
    mr      r3, r23
    mr      r4, r22
    mtctr   r12
    bctrl
    cmpwi   r3, 0x0
    bge     L_8006D544
    subi    r3, r22, 0x1
    subi    r4, r23, 0x1
    addi    r5, r30, 0x1
    b       L_8006D63C
L_8006D620:
    lbz     r6, 0x1(r4)
    lbz     r0, 0x1(r3)
    extsb   r6, r6
    stb     r0, 0x1(r4)
    addi    r4, r4, 0x1
    stb     r6, 0x1(r3)
    addi    r3, r3, 0x1
L_8006D63C:
    subic.  r5, r5, 0x1
    bne     L_8006D620
L_8006D644:
    slwi    r0, r26, 1
    cmplw   r0, r27
    ble     L_8006D5B0
    b       L_8006D544
L_8006D654:
    lmw     r21, 0x14(r1)
    lwz     r0, 0x44(r1)
    mtlr    r0
    addi    r1, r1, 0x40
    blr
}

//8006D668
ASM int fn_8006D668(register void* stream, register int c, register int cmd)
{
    nofralloc
    cmpwi   r5, 0x1
    mr      r6, r3
    beq     L_8006D6BC
    bge     L_8006D684
    cmpwi   r5, 0x0
    bge     L_8006D690
    b       L_8006D6F0
L_8006D684:
    cmpwi   r5, 0x3
    bge     L_8006D6F0
    b       L_8006D6E8
L_8006D690:
    lwz     r4, 0x0(r6)
    lbz     r3, 0x0(r4)
    extsb.  r0, r3
    bne     L_8006D6B0
    li      r0, 0x1
    li      r3, -0x1
    stw     r0, 0x4(r6)
    blr
L_8006D6B0:
    addi    r0, r4, 0x1
    stw     r0, 0x0(r6)
    blr
L_8006D6BC:
    lwz     r0, 0x4(r6)
    cmpwi   r0, 0x0
    bne     L_8006D6D8
    lwz     r3, 0x0(r6)
    subi    r0, r3, 0x1
    stw     r0, 0x0(r6)
    b       L_8006D6E0
L_8006D6D8:
    li      r0, 0x0
    stw     r0, 0x4(r6)
L_8006D6E0:
    mr      r3, r4
    blr
L_8006D6E8:
    lwz     r3, 0x4(r6)
    blr
L_8006D6F0:
    li      r3, 0x0
    blr
}
