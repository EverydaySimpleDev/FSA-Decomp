#include "types.h"
#include "Dolphin/dvd.h"
#include "Dolphin/os.h"

struct DVDQueue WaitingQueue[4];

//801703E4
ASM void __DVDClearWaitingQueue(void)
{
    nofralloc
    lis     r3, WaitingQueue@ha
    addi    r3, r3, WaitingQueue@l
    stw     r3, 0x0(r3)
    addi    r5, r3, 0x8
    addi    r4, r3, 0x10
    stw     r3, 0x4(r3)
    addi    r3, r3, 0x18
    stw     r5, 0x0(r5)
    stw     r5, 0x4(r5)
    stw     r4, 0x0(r4)
    stw     r4, 0x4(r4)
    stw     r3, 0x0(r3)
    stw     r3, 0x4(r3)
    blr
}

//8017041C
ASM BOOL __DVDPushWaitingQueue(register int idx, register struct DVDQueue* newTail)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, newTail, 0x0
    stw     r30, 0x10(r1)
    addi    r30, idx, 0x0
    bl      OSDisableInterrupts
    lis     r4, WaitingQueue@ha
    slwi    r5, r30, 3
    addi    r0, r4, WaitingQueue@l
    add     r5, r0, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    stw     r5, 0x0(r31)
    stw     r31, 0x4(r5)
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    li      r3, 0x1
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80170484
ASM struct DVDQueue* __DVDPopWaitingQueue(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    li      r0, 0x4
    lis     r4, WaitingQueue@ha
    mtctr   r0
    addi    r4, r4, WaitingQueue@l
    li      r31, 0x0
loop:
    lwz     r0, 0x0(r4)
    cmplw   r0, r4
    beq     next
    bl      OSRestoreInterrupts
    bl      OSDisableInterrupts
    lis     r4, WaitingQueue@ha
    slwi    r5, r31, 3
    addi    r0, r4, WaitingQueue@l
    add     r5, r0, r5
    lwz     r31, 0x0(r5)
    lwz     r0, 0x0(r31)
    stw     r0, 0x0(r5)
    lwz     r4, 0x0(r31)
    stw     r5, 0x4(r4)
    bl      OSRestoreInterrupts
    li      r0, 0x0
    stw     r0, 0x0(r31)
    mr      r3, r31
    stw     r0, 0x4(r31)
    b       done
next:
    addi    r4, r4, 0x8
    addi    r31, r31, 0x1
    bdnz    loop
    bl      OSRestoreInterrupts
    li      r3, 0x0
done:
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}

//80170524
ASM BOOL __DVDCheckWaitingQueue(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      OSDisableInterrupts
    li      r0, 0x4
    lis     r4, WaitingQueue@ha
    mtctr   r0
    addi    r4, r4, WaitingQueue@l
loop:
    lwz     r0, 0x0(r4)
    cmplw   r0, r4
    beq     found
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
found:
    addi    r4, r4, 0x8
    bdnz    loop
    bl      OSRestoreInterrupts
    li      r3, 0x0
done:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

//8017057C
ASM BOOL __DVDDequeueWaitingQueue(register struct DVDQueue* queue)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, queue
    bl      OSDisableInterrupts
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    cmplwi  r4, 0x0
    beq     ret_false
    cmplwi  r5, 0x0
    bne     swap
ret_false:
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
swap:
    stw     r5, 0x0(r4)
    stw     r4, 0x4(r5)
    bl      OSRestoreInterrupts
    li      r3, 0x1
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
