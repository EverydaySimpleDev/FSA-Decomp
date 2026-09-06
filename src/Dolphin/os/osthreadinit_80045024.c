#include "types.h"
#include "Dolphin/os.h"

extern void OSInitThreadQueue(OSThreadQueue* threadQueue);
extern void* memcpy(void* dst, const void* src, u32 n);
extern vu32 RunQueueBits;
extern volatile BOOL RunQueueHint;
extern vs32 Reschedule;
extern OSThreadQueue RunQueue[32];
extern OSSwitchThreadCallback SwitchThreadCallback;

//80045024
ASM static void SystemCallVector(void)
{
    nofralloc

    entry __OSSystemCallVectorStart
    mfspr   r9, HID0
    ori     r10, r9, 0x8
    mtspr   HID0, r10
    isync
    sync
    mtspr   HID0, r9
    rfi

    entry __OSSystemCallVectorEnd
    nop
}

//80045044
ASM void __OSInitSystemCall(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    lis     r5, 0x8000
    lis     r4, __OSSystemCallVectorStart@ha
    lis     r3, __OSSystemCallVectorEnd@ha
    addi    r31, r5, 0xc00
    addi    r0, r3, __OSSystemCallVectorEnd@l
    addi    r4, r4, __OSSystemCallVectorStart@l
    mr      r3, r31
    subf    r5, r4, r0
    bl      memcpy
    mr      r3, r31
    li      r4, 0x100
    bl      DCFlushRangeNoSync
    sync
    mr      r3, r31
    li      r4, 0x100
    bl      ICInvalidateRange
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}

//800450A8
ASM void DefaultSwitchThreadCallback(register OSThread* from, register OSThread* to)
{
    nofralloc
    blr
}

//800450AC
ASM void __OSThreadInit(void)
{
    nofralloc
    mflr    r0
    lis     r3, RunQueue@ha
    stw     r0, 0x4(r1)
    li      r0, 0x2
    li      r4, 0x10
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    stw     r29, 0xc(r1)
    li      r29, 0x0
    stw     r28, 0x8(r1)
    addi    r28, r3, RunQueue@l
    addi    r31, r28, 0x418
    sth     r0, 0x6e0(r28)
    li      r0, 0x1
    addi    r3, r31, 0x2e8
    sth     r0, 0x6e2(r28)
    li      r0, -0x1
    stw     r4, 0x6ec(r28)
    stw     r4, 0x6e8(r28)
    stw     r29, 0x6e4(r28)
    stw     r0, 0x6f0(r28)
    stw     r29, 0x708(r28)
    bl      OSInitThreadQueue
    stw     r29, 0x710(r28)
    lis     r30, 0x8000
    addi    r3, r31, 0x0
    stw     r29, 0x70c(r28)
    stw     r31, 0xd8(r30)
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
    lis     r3, _stack_addr@ha
    addi    r0, r3, _stack_addr@l
    lis     r3, _stack_end@ha
    stw     r0, 0x71c(r28)
    addi    r0, r3, _stack_end@l
    stw     r0, 0x720(r28)
    lis     r3, 0xdeae
    subi    r0, r3, 0x4542
    lwz     r3, 0x720(r28)
    mr      r4, r31
    stw     r0, 0x0(r3)
    lwz     r12, SwitchThreadCallback
    lwz     r3, 0xe4(r30)
    mtlr    r12
    blrl
    stw     r31, 0xe4(r30)
    li      r3, 0x0
    bl      OSClearStack
    stw     r29, RunQueueBits
    li      r30, 0x0
    slwi    r0, r30, 3
    stw     r29, RunQueueHint
    add     r29, r28, r0
L_80045188:
    mr      r3, r29
    bl      OSInitThreadQueue
    addi    r30, r30, 0x1
    cmpwi   r30, 0x1f
    addi    r29, r29, 0x8
    ble     L_80045188
    lis     r30, 0x8000
    addi    r3, r30, 0xdc
    bl      OSInitThreadQueue
    addi    r4, r30, 0xdc
    lwzu    r3, 0x4(r4)
    cmplwi  r3, 0x0
    bne     L_800451C4
    stw     r31, 0xdc(r30)
    b       L_800451C8
L_800451C4:
    stw     r31, 0x2fc(r3)
L_800451C8:
    stw     r3, 0x300(r31)
    li      r30, 0x0
    addi    r3, r28, 0x730
    stw     r30, 0x2fc(r31)
    stw     r31, 0x0(r4)
    bl      OSClearContext
    stw     r30, Reschedule
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    lwz     r29, 0xc(r1)
    lwz     r28, 0x8(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
