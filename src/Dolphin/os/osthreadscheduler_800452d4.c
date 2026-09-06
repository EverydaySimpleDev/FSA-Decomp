#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/OS/OSContext.h"

extern vu32 RunQueueBits;
extern volatile BOOL RunQueueHint;
extern vs32 Reschedule;
extern OSThreadQueue RunQueue[32];
extern OSSwitchThreadCallback SwitchThreadCallback;

extern void UnsetRun(register OSThread* thread);
extern OSPriority __OSGetEffectivePriority(register OSThread* thread);
extern OSThread* SetEffectivePriority(register OSThread* thread, register OSPriority priority);
extern OSThread* SelectThread(register BOOL yield);
extern void OSInitContext(register OSContext* context, register u32 pc, register u32 newsp);

//800452D4
ASM void UnsetRun(register OSThread* thread)
{
    nofralloc
    lwz     r4, 0x2e0(r3)
    lwz     r5, 0x2dc(r3)
    cmplwi  r4, 0x0
    lwz     r6, 0x2e4(r3)
    bne     L_800452F0
    stw     r6, 0x4(r5)
    b       L_800452F4
L_800452F0:
    stw     r6, 0x2e4(r4)
L_800452F4:
    cmplwi  r6, 0x0
    bne     L_80045304
    stw     r4, 0x0(r5)
    b       L_80045308
L_80045304:
    stw     r4, 0x2e0(r6)
L_80045308:
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    bne     L_80045330
    lwz     r0, 0x2d0(r3)
    li      r4, 0x1
    lwz     r5, RunQueueBits
    subfic  r0, r0, 0x1f
    slw     r0, r4, r0
    andc    r0, r5, r0
    stw     r0, RunQueueBits
L_80045330:
    li      r0, 0x0
    stw     r0, 0x2dc(r3)
    blr
}

//8004533C
ASM OSPriority __OSGetEffectivePriority(register OSThread* thread)
{
    nofralloc
    lwz     r4, 0x2d4(r3)
    lwz     r5, 0x2f4(r3)
    b       L_80045368
L_80045348:
    lwz     r3, 0x0(r5)
    cmplwi  r3, 0x0
    beq     L_80045364
    lwz     r0, 0x2d0(r3)
    cmpw    r0, r4
    bge     L_80045364
    mr      r4, r0
L_80045364:
    lwz     r5, 0x10(r5)
L_80045368:
    cmplwi  r5, 0x0
    bne     L_80045348
    mr      r3, r4
    blr
}

//80045378
ASM OSThread* SetEffectivePriority(register OSThread* thread, register OSPriority priority)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, r3
    stw     r30, 0x10(r1)
    addi    r30, r4, 0x0
    lhz     r0, 0x2c8(r3)
    cmpwi   r0, 0x3
    beq     L_8004551C
    bge     L_800453B4
    cmpwi   r0, 0x1
    beq     L_800453C0
    bge     L_80045510
    b       L_8004551C
L_800453B4:
    cmpwi   r0, 0x5
    bge     L_8004551C
    b       L_80045438
L_800453C0:
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
    bne     L_800453FC
    stw     r31, 0x0(r4)
    b       L_80045400
L_800453FC:
    stw     r31, 0x2e0(r3)
L_80045400:
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
    b       L_8004551C
L_80045438:
    lwz     r4, 0x2e0(r31)
    lwz     r5, 0x2e4(r31)
    cmplwi  r4, 0x0
    bne     L_80045454
    lwz     r3, 0x2dc(r31)
    stw     r5, 0x4(r3)
    b       L_80045458
L_80045454:
    stw     r5, 0x2e4(r4)
L_80045458:
    cmplwi  r5, 0x0
    bne     L_8004546C
    lwz     r3, 0x2dc(r31)
    stw     r4, 0x0(r3)
    b       L_80045470
L_8004546C:
    stw     r4, 0x2e0(r5)
L_80045470:
    stw     r30, 0x2d0(r31)
    lwz     r4, 0x2dc(r31)
    lwz     r5, 0x0(r4)
    b       L_80045484
L_80045480:
    lwz     r5, 0x2e0(r5)
L_80045484:
    cmplwi  r5, 0x0
    beq     L_8004549C
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r31)
    cmpw    r3, r0
    ble     L_80045480
L_8004549C:
    cmplwi  r5, 0x0
    bne     L_800454D4
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     L_800454B8
    stw     r31, 0x0(r4)
    b       L_800454BC
L_800454B8:
    stw     r31, 0x2e0(r3)
L_800454BC:
    stw     r3, 0x2e4(r31)
    li      r0, 0x0
    stw     r0, 0x2e0(r31)
    lwz     r3, 0x2dc(r31)
    stw     r31, 0x4(r3)
    b       L_800454FC
L_800454D4:
    stw     r5, 0x2e0(r31)
    lwz     r3, 0x2e4(r5)
    stw     r31, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r31)
    bne     L_800454F8
    lwz     r3, 0x2dc(r31)
    stw     r31, 0x0(r3)
    b       L_800454FC
L_800454F8:
    stw     r31, 0x2e0(r3)
L_800454FC:
    lwz     r3, 0x2f0(r31)
    cmplwi  r3, 0x0
    beq     L_8004551C
    lwz     r3, 0x8(r3)
    b       L_80045520
L_80045510:
    li      r0, 0x1
    stw     r0, RunQueueHint
    stw     r30, 0x2d0(r31)
L_8004551C:
    li      r3, 0x0
L_80045520:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80045538
ASM void __OSPromoteThread(register OSThread* thread, register OSPriority priority)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, r4
L_8004554C:
    lwz     r0, 0x2cc(r3)
    cmpwi   r0, 0x0
    bgt     L_80045574
    lwz     r0, 0x2d0(r3)
    cmpw    r0, r31
    ble     L_80045574
    mr      r4, r31
    bl      SetEffectivePriority
    cmplwi  r3, 0x0
    bne     L_8004554C
L_80045574:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80045588
ASM static OSThread* SelectThread(register BOOL yield)
{
    nofralloc
    mflr    r0
    lis     r4, RunQueue@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, r4, RunQueue@l
    stw     r30, 0x10(r1)
    addi    r30, r3, 0x0
    lwz     r0, Reschedule
    cmpwi   r0, 0x0
    ble     L_800455BC
    li      r3, 0x0
    b       L_80045798
L_800455BC:
    bl      OSGetCurrentContext
    lis     r4, 0x8000
    lwz     r6, 0xe4(r4)
    cmplw   r3, r6
    addi    r3, r6, 0x0
    beq     L_800455DC
    li      r3, 0x0
    b       L_80045798
L_800455DC:
    cmplwi  r6, 0x0
    beq     L_8004569C
    lhz     r0, 0x2c8(r6)
    cmplwi  r0, 0x2
    bne     L_8004567C
    cmpwi   r30, 0x0
    bne     L_80045614
    lwz     r4, RunQueueBits
    lwz     r0, 0x2d0(r6)
    cntlzw  r4, r4
    cmpw    r0, r4
    bgt     L_80045614
    li      r3, 0x0
    b       L_80045798
L_80045614:
    li      r0, 0x1
    sth     r0, 0x2c8(r6)
    lwz     r0, 0x2d0(r6)
    slwi    r0, r0, 3
    add     r0, r31, r0
    stw     r0, 0x2dc(r6)
    lwz     r5, 0x2dc(r6)
    lwz     r4, 0x4(r5)
    cmplwi  r4, 0x0
    bne     L_80045644
    stw     r6, 0x0(r5)
    b       L_80045648
L_80045644:
    stw     r6, 0x2e0(r4)
L_80045648:
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
L_8004567C:
    lhz     r0, 0x1a2(r6)
    rlwinm. r0, r0, 0, 30, 30
    bne     L_8004569C
    bl      OSSaveContext
    cmplwi  r3, 0x0
    beq     L_8004569C
    li      r3, 0x0
    b       L_80045798
L_8004569C:
    lwz     r0, RunQueueBits
    cmplwi  r0, 0x0
    bne     L_800456F8
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
L_800456D0:
    bl      OSEnableInterrupts
L_800456D4:
    lwz     r0, RunQueueBits
    cmplwi  r0, 0x0
    beq     L_800456D4
    bl      OSDisableInterrupts
    lwz     r0, RunQueueBits
    cmplwi  r0, 0x0
    beq     L_800456D0
    addi    r3, r31, 0x730
    bl      OSClearContext
L_800456F8:
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
    bne     L_8004572C
    stw     r3, 0x4(r4)
    b       L_80045730
L_8004572C:
    stw     r3, 0x2e4(r6)
L_80045730:
    stw     r6, 0x0(r4)
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne     L_80045758
    subfic  r0, r7, 0x1f
    lwz     r4, RunQueueBits
    li      r3, 0x1
    slw     r0, r3, r0
    andc    r0, r4, r0
    stw     r0, RunQueueBits
L_80045758:
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
L_80045798:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//800457B0
ASM void __OSReschedule(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     L_800457D0
    li      r3, 0x0
    bl      SelectThread
L_800457D0:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

//800457E0
ASM void OSYieldThread(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    li      r3, 0x1
    bl      SelectThread
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}

//8004581C
ASM BOOL OSCreateThread(register OSThread* thread, register OSThreadStartFunction func, register void* param, register void* stack,
                        register u32 stackSize, register OSPriority priority, register u16 attr)
{
    nofralloc
    mflr    r0
    cmpwi   r8, 0x0
    stw     r0, 0x4(r1)
    stwu    r1, -0x50(r1)
    stmw    r27, 0x3c(r1)
    addi    r31, r3, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    blt     L_8004584C
    cmpwi   r8, 0x1f
    ble     L_80045854
L_8004584C:
    li      r3, 0x0
    b       L_800459F0
L_80045854:
    li      r6, 0x1
    sth     r6, 0x2c8(r31)
    clrlwi  r0, r9, 31
    clrrwi  r7, r28, 3
    sth     r0, 0x2ca(r31)
    li      r0, -0x1
    li      r30, 0x0
    stw     r8, 0x2d4(r31)
    addi    r3, r31, 0x0
    subi    r5, r7, 0x8
    stw     r8, 0x2d0(r31)
    stw     r6, 0x2cc(r31)
    stw     r0, 0x2d8(r31)
    stw     r30, 0x2f0(r31)
    stw     r30, 0x2ec(r31)
    stw     r30, 0x2e8(r31)
    stw     r30, 0x2f8(r31)
    stw     r30, 0x2f4(r31)
    stw     r30, -0x8(r7)
    stw     r30, -0x4(r7)
    bl      OSInitContext
    lis     r3, OSExitThread@ha
    addi    r0, r3, OSExitThread@l
    stw     r0, 0x84(r31)
    lis     r3, 0xdeae
    subf    r4, r29, r28
    stw     r27, 0xc(r31)
    subi    r0, r3, 0x4542
    stw     r28, 0x304(r31)
    stw     r4, 0x308(r31)
    lwz     r3, 0x308(r31)
    stw     r0, 0x0(r3)
    stw     r30, 0x30c(r31)
    stw     r30, 0x310(r31)
    stw     r30, 0x314(r31)
    bl      OSDisableInterrupts
    lis     r4, __OSErrorTable@ha
    addi    r4, r4, __OSErrorTable@l
    lwz     r0, 0x40(r4)
    cmplwi  r0, 0x0
    beq     L_800459B8
    lwz     r4, 0x19c(r31)
    li      r0, 0x4
    mtctr   r0
    addi    r5, r31, 0x0
    ori     r0, r4, 0x900
    stw     r0, 0x19c(r31)
    lhz     r0, 0x1a2(r31)
    ori     r0, r0, 0x1
    sth     r0, 0x1a2(r31)
    lwz     r0, __OSFpscrEnableBits
    rlwinm  r0, r0, 0, 24, 28
    ori     r0, r0, 0x4
    stw     r0, 0x194(r31)
L_8004592C:
    li      r0, -0x1
    stw     r0, 0x94(r5)
    stw     r0, 0x90(r5)
    stw     r0, 0x1cc(r5)
    stw     r0, 0x1c8(r5)
    stw     r0, 0x9c(r5)
    stw     r0, 0x98(r5)
    stw     r0, 0x1d4(r5)
    stw     r0, 0x1d0(r5)
    stw     r0, 0xa4(r5)
    stw     r0, 0xa0(r5)
    stw     r0, 0x1dc(r5)
    stw     r0, 0x1d8(r5)
    stw     r0, 0xac(r5)
    stw     r0, 0xa8(r5)
    stw     r0, 0x1e4(r5)
    stw     r0, 0x1e0(r5)
    stw     r0, 0xb4(r5)
    stw     r0, 0xb0(r5)
    stw     r0, 0x1ec(r5)
    stw     r0, 0x1e8(r5)
    stw     r0, 0xbc(r5)
    stw     r0, 0xb8(r5)
    stw     r0, 0x1f4(r5)
    stw     r0, 0x1f0(r5)
    stw     r0, 0xc4(r5)
    stw     r0, 0xc0(r5)
    stw     r0, 0x1fc(r5)
    stw     r0, 0x1f8(r5)
    stw     r0, 0xcc(r5)
    stw     r0, 0xc8(r5)
    stw     r0, 0x204(r5)
    stw     r0, 0x200(r5)
    addi    r5, r5, 0x40
    bdnz    L_8004592C
L_800459B8:
    lis     r4, 0x8000
    addi    r5, r4, 0xdc
    lwzu    r6, 0x4(r5)
    cmplwi  r6, 0x0
    bne     L_800459D4
    stw     r31, 0xdc(r4)
    b       L_800459D8
L_800459D4:
    stw     r31, 0x2fc(r6)
L_800459D8:
    stw     r6, 0x300(r31)
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
    stw     r31, 0x0(r5)
    bl      OSRestoreInterrupts
    li      r3, 0x1
L_800459F0:
    lmw     r27, 0x3c(r1)
    lwz     r0, 0x54(r1)
    addi    r1, r1, 0x50
    mtlr    r0
    blr
}

//80045A04
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
    mr      r28, r3
    bl      OSDisableInterrupts
    lis     r31, 0x8000
    lwz     r30, 0xe4(r31)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      OSClearContext
    lhz     r0, 0x2ca(r30)
    clrlwi. r0, r0, 31
    beq     L_80045A88
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne     L_80045A60
    stw     r5, 0xe0(r31)
    b       L_80045A64
L_80045A60:
    stw     r5, 0x300(r4)
L_80045A64:
    cmplwi  r5, 0x0
    bne     L_80045A78
    lis     r3, 0x8000
    stw     r4, 0xdc(r3)
    b       L_80045A7C
L_80045A78:
    stw     r4, 0x2fc(r5)
L_80045A7C:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
    b       L_80045A94
L_80045A88:
    li      r0, 0x8
    sth     r0, 0x2c8(r30)
    stw     r28, 0x2d8(r30)
L_80045A94:
    mr      r3, r30
    bl      __OSUnlockAllMutex
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    li      r0, 0x1
    stw     r0, RunQueueHint
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     L_80045AC0
    li      r3, 0x0
    bl      SelectThread
L_80045AC0:
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

//80045AE8
ASM void OSCancelThread(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    mr      r30, r3
    stw     r29, 0x14(r1)
    bl      OSDisableInterrupts
    lhz     r0, 0x2c8(r30)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x3
    beq     L_80045BF0
    bge     L_80045B2C
    cmpwi   r0, 0x1
    beq     L_80045B38
    bge     L_80045B50
    b       L_80045BF0
L_80045B2C:
    cmpwi   r0, 0x5
    bge     L_80045BF0
    b       L_80045B5C
L_80045B38:
    lwz     r0, 0x2cc(r30)
    cmpwi   r0, 0x0
    bgt     L_80045BFC
    mr      r3, r30
    bl      UnsetRun
    b       L_80045BFC
L_80045B50:
    li      r0, 0x1
    stw     r0, RunQueueHint
    b       L_80045BFC
L_80045B5C:
    lwz     r4, 0x2e0(r30)
    lwz     r5, 0x2e4(r30)
    cmplwi  r4, 0x0
    bne     L_80045B78
    lwz     r3, 0x2dc(r30)
    stw     r5, 0x4(r3)
    b       L_80045B7C
L_80045B78:
    stw     r5, 0x2e4(r4)
L_80045B7C:
    cmplwi  r5, 0x0
    bne     L_80045B90
    lwz     r3, 0x2dc(r30)
    stw     r4, 0x0(r3)
    b       L_80045B94
L_80045B90:
    stw     r4, 0x2e0(r5)
L_80045B94:
    li      r0, 0x0
    stw     r0, 0x2dc(r30)
    lwz     r0, 0x2cc(r30)
    cmpwi   r0, 0x0
    bgt     L_80045BFC
    lwz     r3, 0x2f0(r30)
    cmplwi  r3, 0x0
    beq     L_80045BFC
    lwz     r29, 0x8(r3)
L_80045BB8:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt     L_80045BFC
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq     L_80045BFC
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne     L_80045BB8
    b       L_80045BFC
L_80045BF0:
    mr      r3, r31
    bl      OSRestoreInterrupts
    b       L_80045C88
L_80045BFC:
    mr      r3, r30
    bl      OSClearContext
    lhz     r0, 0x2ca(r30)
    clrlwi. r0, r0, 31
    beq     L_80045C54
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne     L_80045C2C
    lis     r3, 0x8000
    stw     r5, 0xe0(r3)
    b       L_80045C30
L_80045C2C:
    stw     r5, 0x300(r4)
L_80045C30:
    cmplwi  r5, 0x0
    bne     L_80045C44
    lis     r3, 0x8000
    stw     r4, 0xdc(r3)
    b       L_80045C48
L_80045C44:
    stw     r4, 0x2fc(r5)
L_80045C48:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
    b       L_80045C5C
L_80045C54:
    li      r0, 0x8
    sth     r0, 0x2c8(r30)
L_80045C5C:
    mr      r3, r30
    bl      __OSUnlockAllMutex
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     L_80045C80
    li      r3, 0x0
    bl      SelectThread
L_80045C80:
    mr      r3, r31
    bl      OSRestoreInterrupts
L_80045C88:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//80045CA4
ASM void OSDetachThread(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, r3
    bl      OSDisableInterrupts
    lhz     r0, 0x2ca(r30)
    addi    r31, r3, 0x0
    ori     r0, r0, 0x1
    sth     r0, 0x2ca(r30)
    lhz     r0, 0x2c8(r30)
    cmplwi  r0, 0x8
    bne     L_80045D1C
    lwz     r4, 0x2fc(r30)
    lwz     r5, 0x300(r30)
    cmplwi  r4, 0x0
    bne     L_80045CF8
    lis     r3, 0x8000
    stw     r5, 0xe0(r3)
    b       L_80045CFC
L_80045CF8:
    stw     r5, 0x300(r4)
L_80045CFC:
    cmplwi  r5, 0x0
    bne     L_80045D10
    lis     r3, 0x8000
    stw     r4, 0xdc(r3)
    b       L_80045D14
L_80045D10:
    stw     r4, 0x2fc(r5)
L_80045D14:
    li      r0, 0x0
    sth     r0, 0x2c8(r30)
L_80045D1C:
    addi    r3, r30, 0x2e8
    bl      OSWakeupThread
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80045D44
ASM s32 OSResumeThread(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    stw     r30, 0x20(r1)
    stw     r29, 0x1c(r1)
    mr      r29, r3
    bl      OSDisableInterrupts
    lwz     r4, 0x2cc(r29)
    addi    r31, r3, 0x0
    subi    r0, r4, 0x1
    stw     r0, 0x2cc(r29)
    mr      r30, r4
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bge     L_80045D90
    li      r0, 0x0
    stw     r0, 0x2cc(r29)
    b       L_80045FA4
L_80045D90:
    bne     L_80045FA4
    lhz     r0, 0x2c8(r29)
    cmpwi   r0, 0x4
    beq     L_80045E54
    bge     L_80045F90
    cmpwi   r0, 0x1
    beq     L_80045DB0
    b       L_80045F90
L_80045DB0:
    lwz     r0, 0x2d4(r29)
    lwz     r3, 0x2f4(r29)
    b       L_80045DDC
L_80045DBC:
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq     L_80045DD8
    lwz     r4, 0x2d0(r4)
    cmpw    r4, r0
    bge     L_80045DD8
    mr      r0, r4
L_80045DD8:
    lwz     r3, 0x10(r3)
L_80045DDC:
    cmplwi  r3, 0x0
    bne     L_80045DBC
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
    bne     L_80045E18
    stw     r29, 0x0(r4)
    b       L_80045E1C
L_80045E18:
    stw     r29, 0x2e0(r3)
L_80045E1C:
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
    b       L_80045F90
L_80045E54:
    lwz     r4, 0x2e0(r29)
    lwz     r5, 0x2e4(r29)
    cmplwi  r4, 0x0
    bne     L_80045E70
    lwz     r3, 0x2dc(r29)
    stw     r5, 0x4(r3)
    b       L_80045E74
L_80045E70:
    stw     r5, 0x2e4(r4)
L_80045E74:
    cmplwi  r5, 0x0
    bne     L_80045E88
    lwz     r3, 0x2dc(r29)
    stw     r4, 0x0(r3)
    b       L_80045E8C
L_80045E88:
    stw     r4, 0x2e0(r5)
L_80045E8C:
    lwz     r0, 0x2d4(r29)
    lwz     r3, 0x2f4(r29)
    b       L_80045EB8
L_80045E98:
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq     L_80045EB4
    lwz     r4, 0x2d0(r4)
    cmpw    r4, r0
    bge     L_80045EB4
    mr      r0, r4
L_80045EB4:
    lwz     r3, 0x10(r3)
L_80045EB8:
    cmplwi  r3, 0x0
    bne     L_80045E98
    stw     r0, 0x2d0(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r5, 0x0(r4)
    b       L_80045ED4
L_80045ED0:
    lwz     r5, 0x2e0(r5)
L_80045ED4:
    cmplwi  r5, 0x0
    beq     L_80045EEC
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r29)
    cmpw    r3, r0
    ble     L_80045ED0
L_80045EEC:
    cmplwi  r5, 0x0
    bne     L_80045F24
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     L_80045F08
    stw     r29, 0x0(r4)
    b       L_80045F0C
L_80045F08:
    stw     r29, 0x2e0(r3)
L_80045F0C:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    stw     r0, 0x2e0(r29)
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x4(r3)
    b       L_80045F4C
L_80045F24:
    stw     r5, 0x2e0(r29)
    lwz     r3, 0x2e4(r5)
    stw     r29, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r29)
    bne     L_80045F48
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x0(r3)
    b       L_80045F4C
L_80045F48:
    stw     r29, 0x2e0(r3)
L_80045F4C:
    lwz     r3, 0x2f0(r29)
    cmplwi  r3, 0x0
    beq     L_80045F90
    lwz     r29, 0x8(r3)
L_80045F5C:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt     L_80045F90
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq     L_80045F90
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne     L_80045F5C
L_80045F90:
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     L_80045FA4
    li      r3, 0x0
    bl      SelectThread
L_80045FA4:
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

//80045FCC
ASM s32 OSSuspendThread(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    mr      r29, r3
    bl      OSDisableInterrupts
    lwz     r4, 0x2cc(r29)
    addi    r31, r3, 0x0
    addi    r0, r4, 0x1
    mr.     r30, r4
    stw     r0, 0x2cc(r29)
    bne     L_80046114
    lhz     r0, 0x2c8(r29)
    cmpwi   r0, 0x3
    beq     L_80046100
    bge     L_80046024
    cmpwi   r0, 0x1
    beq     L_80046040
    bge     L_80046030
    b       L_80046100
L_80046024:
    cmpwi   r0, 0x5
    bge     L_80046100
    b       L_8004604C
L_80046030:
    li      r0, 0x1
    stw     r0, RunQueueHint
    sth     r0, 0x2c8(r29)
    b       L_80046100
L_80046040:
    mr      r3, r29
    bl      UnsetRun
    b       L_80046100
L_8004604C:
    lwz     r4, 0x2e0(r29)
    lwz     r5, 0x2e4(r29)
    cmplwi  r4, 0x0
    bne     L_80046068
    lwz     r3, 0x2dc(r29)
    stw     r5, 0x4(r3)
    b       L_8004606C
L_80046068:
    stw     r5, 0x2e4(r4)
L_8004606C:
    cmplwi  r5, 0x0
    bne     L_80046080
    lwz     r3, 0x2dc(r29)
    stw     r4, 0x0(r3)
    b       L_80046084
L_80046080:
    stw     r4, 0x2e0(r5)
L_80046084:
    li      r0, 0x20
    stw     r0, 0x2d0(r29)
    lwz     r4, 0x2dc(r29)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     L_800460A4
    stw     r29, 0x0(r4)
    b       L_800460A8
L_800460A4:
    stw     r29, 0x2e0(r3)
L_800460A8:
    stw     r3, 0x2e4(r29)
    li      r0, 0x0
    stw     r0, 0x2e0(r29)
    lwz     r3, 0x2dc(r29)
    stw     r29, 0x4(r3)
    lwz     r3, 0x2f0(r29)
    cmplwi  r3, 0x0
    beq     L_80046100
    lwz     r29, 0x8(r3)
L_800460CC:
    lwz     r0, 0x2cc(r29)
    cmpwi   r0, 0x0
    bgt     L_80046100
    mr      r3, r29
    bl      __OSGetEffectivePriority
    lwz     r0, 0x2d0(r29)
    addi    r4, r3, 0x0
    cmpw    r0, r4
    beq     L_80046100
    mr      r3, r29
    bl      SetEffectivePriority
    mr.     r29, r3
    bne     L_800460CC
L_80046100:
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     L_80046114
    li      r3, 0x0
    bl      SelectThread
L_80046114:
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

//8004613C
ASM void OSSleepThread(register OSThreadQueue* threadQueue)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lwz     r4, 0xe4(r4)
    li      r0, 0x4
    mr      r31, r3
    sth     r0, 0x2c8(r4)
    stw     r30, 0x2dc(r4)
    lwz     r5, 0x0(r30)
    b       L_8004617C
L_80046178:
    lwz     r5, 0x2e0(r5)
L_8004617C:
    cmplwi  r5, 0x0
    beq     L_80046194
    lwz     r3, 0x2d0(r5)
    lwz     r0, 0x2d0(r4)
    cmpw    r3, r0
    ble     L_80046178
L_80046194:
    cmplwi  r5, 0x0
    bne     L_800461C8
    lwz     r3, 0x4(r30)
    cmplwi  r3, 0x0
    bne     L_800461B0
    stw     r4, 0x0(r30)
    b       L_800461B4
L_800461B0:
    stw     r4, 0x2e0(r3)
L_800461B4:
    stw     r3, 0x2e4(r4)
    li      r0, 0x0
    stw     r0, 0x2e0(r4)
    stw     r4, 0x4(r30)
    b       L_800461EC
L_800461C8:
    stw     r5, 0x2e0(r4)
    lwz     r3, 0x2e4(r5)
    stw     r4, 0x2e4(r5)
    cmplwi  r3, 0x0
    stw     r3, 0x2e4(r4)
    bne     L_800461E8
    stw     r4, 0x0(r30)
    b       L_800461EC
L_800461E8:
    stw     r4, 0x2e0(r3)
L_800461EC:
    li      r0, 0x1
    stw     r0, RunQueueHint
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     L_80046208
    li      r3, 0x0
    bl      SelectThread
L_80046208:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80046228
ASM void OSWakeupThread(register OSThreadQueue* threadQueue)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, r3
    bl      OSDisableInterrupts
    lis     r4, RunQueue@ha
    addi    r31, r3, 0x0
    addi    r5, r4, RunQueue@l
    b       L_800462EC
L_80046254:
    lwz     r3, 0x2e0(r6)
    cmplwi  r3, 0x0
    bne     L_8004626C
    li      r0, 0x0
    stw     r0, 0x4(r30)
    b       L_80046274
L_8004626C:
    li      r0, 0x0
    stw     r0, 0x2e4(r3)
L_80046274:
    stw     r3, 0x0(r30)
    li      r0, 0x1
    sth     r0, 0x2c8(r6)
    lwz     r0, 0x2cc(r6)
    cmpwi   r0, 0x0
    bgt     L_800462EC
    lwz     r0, 0x2d0(r6)
    slwi    r0, r0, 3
    add     r0, r5, r0
    stw     r0, 0x2dc(r6)
    lwz     r4, 0x2dc(r6)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     L_800462B4
    stw     r6, 0x0(r4)
    b       L_800462B8
L_800462B4:
    stw     r6, 0x2e0(r3)
L_800462B8:
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
L_800462EC:
    lwz     r6, 0x0(r30)
    cmplwi  r6, 0x0
    bne     L_80046254
    lwz     r0, RunQueueHint
    cmpwi   r0, 0x0
    beq     L_8004630C
    li      r3, 0x0
    bl      SelectThread
L_8004630C:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//8004632C
ASM OSPriority OSGetThreadPriority(register OSThread* thread)
{
    nofralloc
    lwz     r3, 0x2d4(r3)
    blr
}

//80046334
ASM void OSClearStack(register u8 val)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    clrlslwi r0, r3, 24, 16
    rlwimi  r0, r3, 24, 0, 7
    stwu    r1, -0x18(r1)
    rlwimi  r0, r3, 8, 16, 23
    stw     r31, 0x14(r1)
    mr      r31, r0
    rlwimi  r31, r3, 0, 24, 31
    bl      OSGetStackPointer
    lis     r4, 0x8000
    lwz     r5, 0xe4(r4)
    addi    r4, r3, 0x3
    lwz     r5, 0x308(r5)
    addi    r5, r5, 0x4
    cmplw   r5, r3
    subf    r4, r5, r4
    srwi    r4, r4, 2
    bge     L_800463CC
    srwi.   r0, r4, 3
    mtctr   r0
    beq     L_800463BC
L_8004638C:
    stw     r31, 0x0(r5)
    stw     r31, 0x4(r5)
    stw     r31, 0x8(r5)
    stw     r31, 0xc(r5)
    stw     r31, 0x10(r5)
    stw     r31, 0x14(r5)
    stw     r31, 0x18(r5)
    stw     r31, 0x1c(r5)
    addi    r5, r5, 0x20
    bdnz    L_8004638C
    andi.   r4, r4, 0x7
    beq     L_800463CC
L_800463BC:
    mtctr   r4
L_800463C0:
    stw     r31, 0x0(r5)
    addi    r5, r5, 0x4
    bdnz    L_800463C0
L_800463CC:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
