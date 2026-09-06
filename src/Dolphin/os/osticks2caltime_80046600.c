#include "types.h"
#include "Dolphin/os.h"

extern void __div2i(void);
extern void __mod2i(void);
extern void GetDates(register s32 days, register OSCalendarTime* cal);

//80046600
ASM void OSTicksToCalendarTime(register OSTime ticks, register OSCalendarTime* cal)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x38(r1)
    stmw    r25, 0x1c(r1)
    mr      r29, r3
    mr      r30, r4
    mr      r31, r5
    lis     r27, 0x8000
    lwz     r0, 0xf8(r27)
    mr      r3, r29
    mr      r4, r30
    srwi    r6, r0, 2
    li      r5, 0x0
    bl      __mod2i
    mr      r26, r3
    li      r5, 0x0
    mr      r25, r4
    xoris   r4, r26, 0x8000
    xoris   r3, r5, 0x8000
    subfc   r0, r5, r25
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg     r3, r3
    cmpwi   r3, 0x0
    beq     L_80046674
    lwz     r0, 0xf8(r27)
    srwi    r0, r0, 2
    addc    r25, r25, r0
    adde    r26, r26, r5
L_80046674:
    li      r4, 0x8
    mullw   r3, r26, r4
    mulhwu  r0, r25, r4
    lis     r27, 0x8000
    lwz     r6, 0xf8(r27)
    lis     r5, 0x431c
    subi    r5, r5, 0x217d
    srwi    r6, r6, 2
    mulhwu  r5, r5, r6
    srwi    r6, r5, 15
    li      r28, 0x0
    add     r3, r3, r0
    mullw   r0, r25, r28
    mullw   r4, r25, r4
    add     r3, r3, r0
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x3e8
    bl      __mod2i
    stw     r4, 0x24(r31)
    lis     r3, 0x1062
    addi    r5, r3, 0x4dd3
    lwz     r0, 0xf8(r27)
    mr      r3, r26
    mr      r4, r25
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    srwi    r6, r0, 6
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x3e8
    bl      __mod2i
    stw     r4, 0x20(r31)
    subfc   r30, r25, r30
    subfe   r29, r26, r29
    lwz     r0, 0xf8(r27)
    lis     r5, 0x1
    addi    r25, r5, 0x5180
    mr      r3, r29
    srwi    r6, r0, 2
    mr      r4, r30
    li      r5, 0x0
    bl      __div2i
    mr      r6, r25
    li      r5, 0x0
    bl      __div2i
    lis     r5, 0xb
    lwz     r0, 0xf8(r27)
    addi    r5, r5, 0x2575
    addc    r26, r4, r5
    srwi    r6, r0, 2
    adde    r0, r3, r28
    mr      r3, r29
    mr      r4, r30
    li      r5, 0x0
    bl      __div2i
    mr      r6, r25
    li      r5, 0x0
    bl      __mod2i
    mr      r27, r4
    cmpwi   r27, 0x0
    bge     L_80046780
    addis   r27, r27, 0x1
    subi    r26, r26, 0x1
    addi    r27, r27, 0x5180
L_80046780:
    mr      r3, r26
    mr      r4, r31
    bl      GetDates
    lis     r3, 0x8889
    subi    r5, r3, 0x7777
    mulhw   r0, r5, r27
    add     r4, r0, r27
    srawi   r0, r4, 5
    srwi    r3, r0, 31
    add     r7, r0, r3
    mulhw   r0, r5, r7
    add     r0, r0, r7
    srawi   r5, r0, 5
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r3, r0, r3
    srawi   r0, r4, 5
    srwi    r6, r5, 31
    mulli   r4, r3, 0x3c
    srwi    r3, r0, 31
    add     r5, r5, r6
    add     r0, r0, r3
    stw     r5, 0x8(r31)
    mulli   r0, r0, 0x3c
    subf    r3, r4, r7
    stw     r3, 0x4(r31)
    subf    r0, r0, r27
    stw     r0, 0x0(r31)
    lmw     r25, 0x1c(r1)
    lwz     r0, 0x3c(r1)
    addi    r1, r1, 0x38
    mtlr    r0
    blr
}
