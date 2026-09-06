#include "Dolphin/os.h"
#include "Dolphin/OS/OSMutex.h"

extern OSThreadQueue RunQueue[32];
extern u32 RunQueueBits;
extern u32 RunQueueHint;
extern void UnsetRun(register OSThread* thread);
extern OSPriority __OSGetEffectivePriority(register OSThread* thread);
extern OSThread* SetEffectivePriority(register OSThread* thread, register OSPriority priority);
extern OSThread* SelectThread(register BOOL yield);

//8016A73C
ASM void OSExitThread(register void* val)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    stw     r28, 0x10(r1)
    mr      r28, val
    bl      OSDisableInterrupts
    lis     r31, 0x8000
    lwz     r30, 0xe4(r31)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      OSClearContext
    lhz     r0, 0x2ca(r30)
    clrlwi. r0, r0, 31
    beq     notDetached
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne     hasNext
    stw     r5, 0xe0(r31)
    b       afterNext
hasNext:
    stw     r5, 0x300(r4)
afterNext:
    cmplwi  r5, 0x0
    bne     hasPrev
    lis     r3, 0x8000
    stw     r4, 0xdc(r3)
    b       afterPrev
hasPrev:
    stw     r4, 0x2fc(r5)
afterPrev:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
    b       afterDetach
notDetached:
    li      r0, 0x8
    sth     r0, 0x2c8(r30)
    stw     r28, 0x2d8(r30)
afterDetach:
    mr      r3, r30
    bl      __OSUnlockAllMutex
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    li      r0, 0x1
    stw     r0, RunQueueHint
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     skipSelect
    li      r3, 0x0
    bl      SelectThread
skipSelect:
    mr      r3, r29
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    lwz     r28, 0x10(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//8016A820
ASM void OSCancelThread(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    mr      r30, thread
    stw     r29, 0x14(r1)
    bl      OSDisableInterrupts
    lhz     r0, 0x2c8(r30)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x3
    beq     stateDefault
    bge     checkGe5
    cmpwi   r0, 0x1
    beq     caseReady
    bge     caseRunning
    b       stateDefault
checkGe5:
    cmpwi   r0, 0x5
    bge     stateDefault
    b       caseWaiting
caseReady:
    lwz     r0, 0x2cc(r30)
    cmpwi   r0, 0x0
    bgt     afterSwitch
    mr      r3, r30
    bl      UnsetRun
    b       afterSwitch
caseRunning:
    li      r0, 0x1
    stw     r0, RunQueueHint
    b       afterSwitch
caseWaiting:
    lwz     r4, 0x2e0(r30)
    lwz     r5, 0x2e4(r30)
    cmplwi  r4, 0x0
    bne     hasNext2
    lwz     r3, 0x2dc(r30)
    stw     r5, 0x4(r3)
    b       afterNext2
hasNext2:
    stw     r5, 0x2e4(r4)
afterNext2:
    cmplwi  r5, 0x0
    bne     hasPrev2
    lwz     r3, 0x2dc(r30)
    stw     r4, 0x0(r3)
    b       afterPrev2
hasPrev2:
    stw     r4, 0x2e0(r5)
afterPrev2:
    li      r0, 0x0
    stw     r0, 0x2dc(r30)
    lwz     r0, 0x2cc(r30)
    cmpwi   r0, 0x0
    bgt     afterSwitch
    lwz     r3, 0x2f0(r30)
    cmplwi  r3, 0x0
    beq     afterSwitch
    lwz     r29, 0x8(r3)
updateLoop:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt     afterSwitch
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq     afterSwitch
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne     updateLoop
    b       afterSwitch
stateDefault:
    mr      r3, r31
    bl      OSRestoreInterrupts
    b       epilogue
afterSwitch:
    mr      r3, r30
    bl      OSClearContext
    lhz     r0, 0x2ca(r30)
    clrlwi. r0, r0, 31
    beq     notDetached2
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne     hasNext3
    lis     r3, 0x8000
    stw     r5, 0xe0(r3)
    b       afterNext3
hasNext3:
    stw     r5, 0x300(r4)
afterNext3:
    cmplwi  r5, 0x0
    bne     hasPrev3
    lis     r3, 0x8000
    stw     r4, 0xdc(r3)
    b       afterPrev3
hasPrev3:
    stw     r4, 0x2fc(r5)
afterPrev3:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
    b       afterDetach2
notDetached2:
    li      r0, 0x8
    sth     r0, 0x2c8(r30)
afterDetach2:
    mr      r3, r30
    bl      __OSUnlockAllMutex
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     skipSelect2
    li      r3, 0x0
    bl      SelectThread
skipSelect2:
    mr      r3, r31
    bl      OSRestoreInterrupts
epilogue:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//8016A9DC
ASM s32 OSResumeThread(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    stw     r30, 0x20(r1)
    stw     r29, 0x1c(r1)
    mr      r29, thread
    bl      OSDisableInterrupts
    lwz     r4, 0x2cc(r29)
    addi    r31, r3, 0x0
    subi    r0, r4, 0x1
    stw     r0, 0x2cc(r29)
    mr      r30, r4
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bge     checkZero
    li      r0, 0x0
    stw     r0, 0x2cc(r29)
    b       epilogueSkip
checkZero:
    bne     epilogueSkip
    lhz     r0, 0x2c8(r29)
    cmpwi   r0, 0x4
    beq     caseWaiting
    bge     caseDefault
    cmpwi   r0, 0x1
    beq     caseReady
    b       caseDefault
caseReady:
    lwz     r0, 0x2d4(r29)
    lwz     r3, 0x2f4(r29)
    b       checkMutex
loopBody:
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq     nextMutex
    lwz     r4, 0x2d0(r4)
    cmpw    r4, r0
    bge     nextMutex
    mr      r0, r4
nextMutex:
    lwz     r3, 0x10(r3)
checkMutex:
    cmplwi  r3, 0x0
    bne     loopBody
    stw     r0, 0x2d0(r29)
    lis     r3, RunQueue@ha
    addi    r0, r3, RunQueue@l
    lwz     r3, 0x2d0(r29)
    slwi    r3, r3, 3
    add     r0, r0, r3
    stw     r0, 0x2dc(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     hasTail4
    stw     r29, 0x0(r4)
    b       afterTail4
hasTail4:
    stw     r29, 0x2e0(r3)
afterTail4:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x2e0(r29)
    lwz     r4, 0x2dc(r29)
    stw     r29, 0x4(r4)
    lwz     r0, 0x2d0(r29)
    lwz     r4, RunQueueBits
    subfic  r0, r0, 0x1f
    slw     r0, r3, r0
    or      r0, r4, r0
    stw     r0, RunQueueBits
    stw     r3, RunQueueHint
    b       caseDefault
caseWaiting:
    lwz     r4, 0x2e0(r29)
    lwz     r5, 0x2e4(r29)
    cmplwi  r4, 0x0
    bne     hn5
    lwz     r3, 0x2dc(r29)
    stw     r5, 0x4(r3)
    b       an5
hn5:
    stw     r5, 0x2e4(r4)
an5:
    cmplwi  r5, 0x0
    bne     hp5
    lwz     r3, 0x2dc(r29)
    stw     r4, 0x0(r3)
    b       ap5
hp5:
    stw     r4, 0x2e0(r5)
ap5:
    lwz     r0, 0x2d4(r29)
    lwz     r3, 0x2f4(r29)
    b       checkMutex2
loopBody2:
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq     nextMutex2
    lwz     r4, 0x2d0(r4)
    cmpw    r4, r0
    bge     nextMutex2
    mr      r0, r4
nextMutex2:
    lwz     r3, 0x10(r3)
checkMutex2:
    cmplwi  r3, 0x0
    bne     loopBody2
    stw     r0, 0x2d0(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r5, 0x0(r4)
    b       checkAddLoop
addLoopBody:
    lwz     r5, 0x2e0(r5)
checkAddLoop:
    cmplwi  r5, 0x0
    beq     afterAddLoop
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r29)
    cmpw    r3, r0
    ble     addLoopBody
afterAddLoop:
    cmplwi  r5, 0x0
    bne     foundPos2
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     hasTail5
    stw     r29, 0x0(r4)
    b       afterTail5
hasTail5:
    stw     r29, 0x2e0(r3)
afterTail5:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    stw     r0, 0x2e0(r29)
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x4(r3)
    b       afterAdd
foundPos2:
    stw     r5, 0x2e0(r29)
    lwz     r3, 0x2e4(r5)
    stw     r29, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r29)
    bne     hasPrev4
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x0(r3)
    b       afterAdd
hasPrev4:
    stw     r29, 0x2e0(r3)
afterAdd:
    lwz     r3, 0x2f0(r29)
    cmplwi  r3, 0x0
    beq     caseDefault
    lwz     r29, 0x8(r3)
updateLoop2:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt     caseDefault
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq     caseDefault
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne     updateLoop2
caseDefault:
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     epilogueSkip
    li      r3, 0x0
    bl      SelectThread
epilogueSkip:
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//8016AC64
ASM s32 OSSuspendThread(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    mr      r29, thread
    bl      OSDisableInterrupts
    lwz     r4, 0x2cc(r29)
    addi    r31, r3, 0x0
    addi    r0, r4, 0x1
    mr.     r30, r4
    stw     r0, 0x2cc(r29)
    bne     epilogueSkip
    lhz     r0, 0x2c8(r29)
    cmpwi   r0, 0x3
    beq     caseDefault
    bge     checkGe5b
    cmpwi   r0, 0x1
    beq     caseReady2
    bge     caseRunning2
    b       caseDefault
checkGe5b:
    cmpwi   r0, 0x5
    bge     caseDefault
    b       caseWaiting3
caseRunning2:
    li      r0, 0x1
    stw     r0, RunQueueHint
    sth     r0, 0x2c8(r29)
    b       caseDefault
caseReady2:
    mr      r3, r29
    bl      UnsetRun
    b       caseDefault
caseWaiting3:
    lwz     r4, 0x2e0(r29)
    lwz     r5, 0x2e4(r29)
    cmplwi  r4, 0x0
    bne     hn6
    lwz     r3, 0x2dc(r29)
    stw     r5, 0x4(r3)
    b       an6
hn6:
    stw     r5, 0x2e4(r4)
an6:
    cmplwi  r5, 0x0
    bne     hp6
    lwz     r3, 0x2dc(r29)
    stw     r4, 0x0(r3)
    b       ap6
hp6:
    stw     r4, 0x2e0(r5)
ap6:
    li      r0, 0x20
    stw     r0, 0x2d0(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     hasTail6
    stw     r29, 0x0(r4)
    b       afterTail6
hasTail6:
    stw     r29, 0x2e0(r3)
afterTail6:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    stw     r0, 0x2e0(r29)
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x4(r3)
    lwz     r3, 0x2f0(r29)
    cmplwi  r3, 0x0
    beq     caseDefault
    lwz     r29, 0x8(r3)
updateLoop3:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt     caseDefault
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq     caseDefault
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne     updateLoop3
caseDefault:
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     epilogueSkip
    li      r3, 0x0
    bl      SelectThread
epilogueSkip:
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//8016ADD4
ASM void OSSleepThread(register OSThreadQueue* threadQueue)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, threadQueue
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lwz     r4, 0xe4(r4)
    li      r0, 0x4
    mr      r31, r3
    sth     r0, 0x2c8(r4)
    stw     r30, 0x2dc(r4)
    lwz     r5, 0x0(r30)
    b       checkAddLoop2
addLoopBody2:
    lwz     r5, 0x2e0(r5)
checkAddLoop2:
    cmplwi  r5, 0x0
    beq     afterAddLoop2
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r4)
    cmpw    r3, r0
    ble     addLoopBody2
afterAddLoop2:
    cmplwi  r5, 0x0
    bne     foundPos3
    lwz     r3, 0x4(r30)
    cmplwi  r3, 0x0
    bne     hasTail7
    stw     r4, 0x0(r30)
    b       afterTail7
hasTail7:
    stw     r4, 0x2e0(r3)
afterTail7:
    stw     r3, 0x2e4(r4)
    li      r0, 0x0
    stw     r0, 0x2e0(r4)
    stw     r4, 0x4(r30)
    b       afterAdd2
foundPos3:
    stw     r5, 0x2e0(r4)
    lwz     r3, 0x2e4(r5)
    stw     r4, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r4)
    bne     hasPrev5
    stw     r4, 0x0(r30)
    b       afterAdd2
hasPrev5:
    stw     r4, 0x2e0(r3)
afterAdd2:
    li      r0, 0x1
    stw     r0, RunQueueHint
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     epilogueSkip2
    li      r3, 0x0
    bl      SelectThread
epilogueSkip2:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//8016AEC0
ASM void OSWakeupThread(register OSThreadQueue* threadQueue)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, threadQueue
    bl      OSDisableInterrupts
    lis     r4, RunQueue@ha
    addi    r31, r3, 0x0
    addi    r5, r4, RunQueue@l
    b       checkHead
loopTop:
    lwz     r3, 0x2e0(r6)
    cmplwi  r3, 0x0
    bne     hasNext4
    li      r0, 0x0
    stw     r0, 0x4(r30)
    b       afterNext4
hasNext4:
    li      r0, 0x0
    stw     r0, 0x2e4(r3)
afterNext4:
    stw     r3, 0x0(r30)
    li      r0, 0x1
    sth     r0, 0x2c8(r6)
    lwz     r0, 0x2cc(r6)
    cmpwi   r0, 0x0
    bgt     checkHead
    lwz     r0, 0x2d0(r6)
    slwi    r0, r0, 3
    add     r0, r5, r0
    stw     r0, 0x2dc(r6)
    lwz     r4, 0x2dc(r6)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     hasTail8
    stw     r6, 0x0(r4)
    b       afterTail8
hasTail8:
    stw     r6, 0x2e0(r3)
afterTail8:
    stw     r3, 0x2e4(r6)
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x2e0(r6)
    lwz     r4, 0x2dc(r6)
    stw     r6, 0x4(r4)
    lwz     r0, 0x2d0(r6)
    lwz     r4, RunQueueBits
    subfic  r0, r0, 0x1f
    slw     r0, r3, r0
    or      r0, r4, r0
    stw     r0, RunQueueBits
    stw     r3, RunQueueHint
checkHead:
    lwz     r6, 0x0(r30)
    cmplwi  r6, 0x0
    bne     loopTop
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     skipSelect3
    li      r3, 0x0
    bl      SelectThread
skipSelect3:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
