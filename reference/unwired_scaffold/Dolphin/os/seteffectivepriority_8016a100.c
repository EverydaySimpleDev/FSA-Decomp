#include "Dolphin/os.h"

extern OSThreadQueue RunQueue[32];
extern u32 RunQueueBits;
extern u32 RunQueueHint;
extern void UnsetRun(register OSThread* thread);

//8016A100
ASM OSThread* SetEffectivePriority(register OSThread* thread, register OSPriority priority)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, thread
    stw     r30, 0x10(r1)
    addi    r30, priority, 0x0
    lhz     r0, 0x2c8(thread)
    cmpwi   r0, 0x3
    beq     retNull
    bge     checkGe5
    cmpwi   r0, 0x1
    beq     caseReady
    bge     caseRunning
    b       retNull
checkGe5:
    cmpwi   r0, 0x5
    bge     retNull
    b       caseWaiting
caseReady:
    mr      r3, r31
    bl      UnsetRun
    stw     r30, 0x2d0(r31)
    lis     r3, RunQueue@ha
    addi    r0, r3, RunQueue@l
    lwz     r3, 0x2d0(r31)
    slwi    r3, r3, 3
    add     r0, r0, r3
    stw     r0, 0x2dc(r31)
    lwz     r4, 0x2dc(r31)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     hasTail
    stw     r31, 0x0(r4)
    b       afterTail
hasTail:
    stw     r31, 0x2e0(r3)
afterTail:
    stw     r3, 0x2e4(r31)
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x2e0(r31)
    lwz     r4, 0x2dc(r31)
    stw     r31, 0x4(r4)
    lwz     r0, 0x2d0(r31)
    lwz     r4, RunQueueBits
    subfic  r0, r0, 0x1f
    slw     r0, r3, r0
    or      r0, r4, r0
    stw     r0, RunQueueBits
    stw     r3, RunQueueHint
    b       retNull
caseWaiting:
    lwz     r4, 0x2e0(r31)
    lwz     r5, 0x2e4(r31)
    cmplwi  r4, 0x0
    bne     hasNext
    lwz     r3, 0x2dc(r31)
    stw     r5, 0x4(r3)
    b       afterNext
hasNext:
    stw     r5, 0x2e4(r4)
afterNext:
    cmplwi  r5, 0x0
    bne     hasPrev
    lwz     r3, 0x2dc(r31)
    stw     r4, 0x0(r3)
    b       afterPrev
hasPrev:
    stw     r4, 0x2e0(r5)
afterPrev:
    stw     r30, 0x2d0(r31)
    lwz     r4, 0x2dc(r31)
    lwz     r5, 0x0(r4)
    b       checkLoop
loopBody:
    lwz     r5, 0x2e0(r5)
checkLoop:
    cmplwi  r5, 0x0
    beq     afterLoop
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r31)
    cmpw    r3, r0
    ble     loopBody
afterLoop:
    cmplwi  r5, 0x0
    bne     foundPos
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     hasTail2
    stw     r31, 0x0(r4)
    b       afterTail2
hasTail2:
    stw     r31, 0x2e0(r3)
afterTail2:
    stw     r3, 0x2e4(r31)
    li      r0, 0x0
    stw     r0, 0x2e0(r31)
    lwz     r3, 0x2dc(r31)
    stw     r31, 0x4(r3)
    b       doneQueue
foundPos:
    stw     r5, 0x2e0(r31)
    lwz     r3, 0x2e4(r5)
    stw     r31, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r31)
    bne     hasPrev2
    lwz     r3, 0x2dc(r31)
    stw     r31, 0x0(r3)
    b       doneQueue
hasPrev2:
    stw     r31, 0x2e0(r3)
doneQueue:
    lwz     r3, 0x2f0(r31)
    cmplwi  r3, 0x0
    beq     retNull
    lwz     r3, 0x8(r3)
    b       epilogue
caseRunning:
    li      r0, 0x1
    stw     r0, RunQueueHint
    stw     r30, 0x2d0(r31)
retNull:
    li      r3, 0x0
epilogue:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
