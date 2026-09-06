#include "types.h"
#include "Dolphin/os.h"

extern s32 YearDays[12];
extern s32 LeapYearDays[12];

//800463E0
ASM OSTime OSGetTime(void)
{
    nofralloc
    mftbu   r3
    mftb    r4
    mftbu   r5
    cmpw    r3, r5
    bne     OSGetTime
    blr
}

//800463F8
ASM u32 OSGetTick(void)
{
    nofralloc
    mftb    r3
    blr
}

//80046400
ASM OSTime __OSGetSystemTime(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      OSGetTime
    lis     r6, 0x8000
    lwz     r5, 0x30dc(r6)
    lwz     r0, 0x30d8(r6)
    addc    r29, r5, r4
    adde    r30, r0, r3
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r4, r29
    mr      r3, r30
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//80046464
ASM void GetDates(register s32 days, register OSCalendarTime* cal)
{
    nofralloc
    lis     r5, 0x9249
    addi    r0, r5, 0x2493
    addi    r7, r3, 0x6
    mulhw   r6, r0, r7
    lis     r5, 0xb38d
    subi    r0, r5, 0x64f
    mulhw   r0, r0, r3
    add     r5, r6, r7
    srawi   r5, r5, 2
    srwi    r6, r5, 31
    add     r5, r5, r6
    add     r0, r0, r3
    mulli   r6, r5, 0x7
    srawi   r0, r0, 8
    srwi    r5, r0, 31
    add     r5, r0, r5
    subf    r0, r6, r7
    mulli   r11, r5, 0x16d
    stw     r0, 0x18(r4)
    opword  0x48000004
L_800464B4:
    lis     r6, 0x51ec
    subi    r10, r6, 0x7ae1
    opword  0x48000004
L_800464C0:
    b       L_800464CC
L_800464C4:
    subi    r11, r11, 0x16d
    subi    r5, r5, 0x1
L_800464CC:
    cmpwi   r5, 0x1
    bge     L_800464DC
    li      r0, 0x0
    b       L_80046510
L_800464DC:
    subi    r0, r5, 0x1
    mulhw   r0, r10, r0
    srawi   r8, r0, 7
    srawi   r6, r0, 5
    addi    r0, r5, 0x3
    srwi    r7, r6, 31
    srawi   r0, r0, 2
    srwi    r9, r8, 31
    add     r6, r6, r7
    addze   r0, r0
    add     r7, r8, r9
    subf    r0, r6, r0
    add     r0, r7, r0
L_80046510:
    add     r0, r11, r0
    cmpw    r3, r0
    blt     L_800464C4
    srawi   r6, r5, 2
    stw     r5, 0x14(r4)
    addze   r6, r6
    slwi    r6, r6, 2
    subfc   r6, r6, r5
    subf    r0, r0, r3
    cmpwi   r6, 0x0
    stw     r0, 0x1c(r4)
    li      r7, 0x1
    li      r8, 0x0
    bne     L_80046574
    lis     r3, 0x51ec
    subi    r3, r3, 0x7ae1
    mulhw   r3, r3, r5
    srawi   r3, r3, 5
    srwi    r6, r3, 31
    add     r3, r3, r6
    mulli   r3, r3, 0x64
    subf    r3, r3, r5
    cmpwi   r3, 0x0
    beq     L_80046574
    mr      r8, r7
L_80046574:
    cmpwi   r8, 0x0
    bne     L_800465A8
    lis     r3, 0x51ec
    subi    r3, r3, 0x7ae1
    mulhw   r3, r3, r5
    srawi   r3, r3, 7
    srwi    r6, r3, 31
    add     r3, r3, r6
    mulli   r3, r3, 0x190
    subf    r3, r3, r5
    cmpwi   r3, 0x0
    beq     L_800465A8
    li      r7, 0x0
L_800465A8:
    cmpwi   r7, 0x0
    beq     L_800465BC
    lis     r3, LeapYearDays@ha
    addi    r6, r3, LeapYearDays@l
    b       L_800465C4
L_800465BC:
    lis     r3, YearDays@ha
    addi    r6, r3, YearDays@l
L_800465C4:
    li      r7, 0xc
    li      r3, 0x30
    opword  0x48000004
L_800465D0:
    opword  0x48000004
L_800465D4:
    subi    r3, r3, 0x4
    lwzx    r5, r6, r3
    subi    r7, r7, 0x1
    cmpw    r0, r5
    blt     L_800465D4
    stw     r7, 0x10(r4)
    lwzx    r3, r6, r3
    subf    r3, r3, r0
    addi    r0, r3, 0x1
    stw     r0, 0xc(r4)
    blr
}
