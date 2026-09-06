#include "Dolphin/os.h"

extern OSErrorHandler __OSErrorTable[OS_ERROR_MAX];
extern u32 __OSFpscrEnableBits;

//8016A554
ASM BOOL OSCreateThread(register OSThread* thread, register OSThreadStartFunction func, register void* param, register void* stack,
                         register u32 stackSize, register OSPriority priority, register u16 attr)
{
    nofralloc
    mflr    r0
    cmpwi   priority, 0x0
    stw     r0, 0x4(r1)
    stwu    r1, -0x50(r1)
    stmw    r27, 0x3c(r1)
    addi    r31, thread, 0x0
    addi    r27, param, 0x0
    addi    r28, stack, 0x0
    addi    r29, stackSize, 0x0
    blt     _fail
    cmpwi   priority, 0x1f
    ble     _ok
_fail:
    li      r3, 0x0
    b       _epilogue
_ok:
    li      r6, 0x1
    sth     r6, 0x2c8(r31)
    clrlwi  r0, attr, 31
    clrrwi  r7, r28, 3
    sth     r0, 0x2ca(r31)
    li      r0, -0x1
    li      r30, 0x0
    stw     priority, 0x2d4(r31)
    addi    r3, r31, 0x0
    subi    r5, r7, 0x8
    stw     priority, 0x2d0(r31)
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
    beq     _addTail
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
_fprLoop:
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
    bdnz    _fprLoop
_addTail:
    lis     r4, 0x8000
    addi    r5, r4, 0xdc
    lwzu    r6, 0x4(r5)
    cmplwi  r6, 0x0
    bne     _tailNonEmpty
    stw     r31, 0xdc(r4)
    b       _tailCommon
_tailNonEmpty:
    stw     r31, 0x2fc(r6)
_tailCommon:
    stw     r6, 0x300(r31)
    li      r0, 0x0
    stw     r0, 0x2fc(r31)
    stw     r31, 0x0(r5)
    bl      OSRestoreInterrupts
    li      r3, 0x1
_epilogue:
    lmw     r27, 0x3c(r1)
    lwz     r0, 0x54(r1)
    addi    r1, r1, 0x50
    mtlr    r0
    blr
}
