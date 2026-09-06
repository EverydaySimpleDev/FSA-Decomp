#include "Dolphin/os.h"

extern OSThreadQueue RunQueue[32];
extern u32 RunQueueBits;
extern u32 RunQueueHint;
extern u32 Reschedule;
extern OSSwitchThreadCallback SwitchThreadCallback;

//8016A2C0
ASM OSThread* SelectThread(register BOOL yield)
{
    nofralloc
    mflr    r0
    lis     r4, RunQueue@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, r4, RunQueue@l
    stw     r30, 0x10(r1)
    addi    r30, yield, 0x0
    lwz     r0, Reschedule
    cmpwi   r0, 0x0
    ble     checkContext
    li      r3, 0x0
    b       epilogue
checkContext:
    bl      OSGetCurrentContext
    lis     r4, 0x8000
    lwz     r6, 0xe4(r4)
    cmplw   r3, r6
    addi    r3, r6, 0x0
    beq     contextMatches
    li      r3, 0x0
    b       epilogue
contextMatches:
    cmplwi  r6, 0x0
    beq     afterRunningBlock
    lhz     r0, 0x2c8(r6)
    cmplwi  r0, 0x2
    bne     notRunning
    cmpwi   r30, 0x0
    bne     doPreempt
    lwz     r4, RunQueueBits
    lwz     r0, 0x2d0(r6)
    cntlzw  r4, r4
    cmpw    r0, r4
    bgt     doPreempt
    li      r3, 0x0
    b       epilogue
doPreempt:
    li      r0, 0x1
    sth     r0, 0x2c8(r6)
    lwz     r0, 0x2d0(r6)
    slwi    r0, r0, 3
    add     r0, r31, r0
    stw     r0, 0x2dc(r6)
    lwz     r5, 0x2dc(r6)
    lwz     r4, 0x4(r5)
    cmplwi  r4, 0x0
    bne     hasTail
    stw     r6, 0x0(r5)
    b       afterTail
hasTail:
    stw     r6, 0x2e0(r4)
afterTail:
    stw     r4, 0x2e4(r6)
    li      r0, 0x0
    li      r4, 0x1
    stw     r0, 0x2e0(r6)
    lwz     r5, 0x2dc(r6)
    stw     r6, 0x4(r5)
    lwz     r0, 0x2d0(r6)
    lwz     r5, RunQueueBits
    subfic  r0, r0, 0x1f
    slw     r0, r4, r0
    or      r0, r5, r0
    stw     r0, RunQueueBits
    stw     r4, RunQueueHint
notRunning:
    lhz     r0, 0x1a2(r6)
    rlwinm. r0, r0, 0, 30, 30
    bne     afterRunningBlock
    bl      OSSaveContext
    cmplwi  r3, 0x0
    beq     afterRunningBlock
    li      r3, 0x0
    b       epilogue
afterRunningBlock:
    lwz     r0, RunQueueBits
    cmplwi  r0, 0x0
    bne     pickNext
    lwz     r12, SwitchThreadCallback
    lis     r30, 0x8000
    lwz     r3, 0xe4(r30)
    li      r4, 0x0
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0xe4(r30)
    addi    r3, r31, 0x730
    bl      OSSetCurrentContext
enableLoop:
    bl      OSEnableInterrupts
spinWait:
    lwz     r0, RunQueueBits
    cmplwi  r0, 0x0
    beq     spinWait
    bl      OSDisableInterrupts
    lwz     r0, RunQueueBits
    cmplwi  r0, 0x0
    beq     enableLoop
    addi    r3, r31, 0x730
    bl      OSClearContext
pickNext:
    li      r3, 0x0
    stw     r3, RunQueueHint
    lwz     r0, RunQueueBits
    cntlzw  r7, r0
    slwi    r0, r7, 3
    add     r4, r31, r0
    lwz     r5, 0x0(r4)
    lwz     r6, 0x2e0(r5)
    addi    r30, r5, 0x0
    cmplwi  r6, 0x0
    bne     hasNext
    stw     r3, 0x4(r4)
    b       afterNext
hasNext:
    stw     r3, 0x2e4(r6)
afterNext:
    stw     r6, 0x0(r4)
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne     finalize
    subfic  r0, r7, 0x1f
    lwz     r4, RunQueueBits
    li      r3, 0x1
    slw     r0, r3, r0
    andc    r0, r4, r0
    stw     r0, RunQueueBits
finalize:
    li      r0, 0x0
    stw     r0, 0x2dc(r30)
    li      r0, 0x2
    lis     r31, 0x8000
    sth     r0, 0x2c8(r30)
    mr      r4, r30
    lwz     r12, SwitchThreadCallback
    lwz     r3, 0xe4(r31)
    mtlr    r12
    blrl
    stw     r30, 0xe4(r31)
    mr      r3, r30
    bl      OSSetCurrentContext
    mr      r3, r30
    bl      OSLoadContext
    mr      r3, r30
epilogue:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
