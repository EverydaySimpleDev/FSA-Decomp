#include "types.h"
#include "Dolphin/os.h"

extern OSErrorHandler __OSErrorTable[OS_ERROR_MAX];
extern u32 __OSFpscrEnableBits;

//801640AC
ASM OSErrorHandler OSSetErrorHandler(register OSError error, register OSErrorHandler handler)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stw     r31, 0x2c(r1)
    stw     r30, 0x28(r1)
    stw     r29, 0x24(r1)
    addi    r29, r3, 0x0
    stw     r28, 0x20(r1)
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    lis     r4, __OSErrorTable@ha
    clrlslwi r5, r29, 16, 2
    addi    r0, r4, __OSErrorTable@l
    clrlwi  r6, r29, 16
    add     r4, r0, r5
    lwz     r30, 0x0(r4)
    cmplwi  r6, 0x10
    mr      r29, r3
    stw     r28, 0x0(r4)
    bne     _restore
    bl      PPCMfmsr
    addi    r31, r3, 0x0
    ori     r3, r31, 0x2000
    bl      PPCMtmsr
    bl      PPCMffpscr
    cmplwi  r28, 0x0
    beq     _disableLoop
    lis     r5, 0x8000
    lis     r4, 0x6006
    lwz     r6, 0xdc(r5)
    subi    r4, r4, 0x701
    b       _enableCheck
_enableBody:
    lwz     r0, 0x19c(r6)
    ori     r0, r0, 0x900
    stw     r0, 0x19c(r6)
    lhz     r5, 0x1a2(r6)
    clrlwi. r0, r5, 31
    bne     _enableTail
    ori     r5, r5, 0x1
    li      r0, 0x4
    sth     r5, 0x1a2(r6)
    mtctr   r0
    addi    r5, r6, 0x0
_zeroLoop:
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
    bdnz    _zeroLoop
    li      r0, 0x4
    stw     r0, 0x194(r6)
_enableTail:
    lwz     r0, __OSFpscrEnableBits
    lwz     r5, 0x194(r6)
    rlwinm  r0, r0, 0, 24, 28
    or      r0, r5, r0
    stw     r0, 0x194(r6)
    lwz     r0, 0x194(r6)
    and     r0, r0, r4
    stw     r0, 0x194(r6)
    lwz     r6, 0x2fc(r6)
_enableCheck:
    cmplwi  r6, 0x0
    bne     _enableBody
    lwz     r0, __OSFpscrEnableBits
    ori     r31, r31, 0x900
    rlwinm  r0, r0, 0, 24, 28
    or      r3, r3, r0
    b       _restoreFpscr
_disableLoop:
    lis     r5, 0x8000
    lis     r4, 0x6006
    lwz     r6, 0xdc(r5)
    subi    r4, r4, 0x701
    li      r5, -0x901
    b       _disableCheck
_disableBody:
    lwz     r0, 0x19c(r6)
    and     r0, r0, r5
    stw     r0, 0x19c(r6)
    lwz     r0, 0x194(r6)
    rlwinm  r0, r0, 0, 29, 23
    stw     r0, 0x194(r6)
    lwz     r0, 0x194(r6)
    and     r0, r0, r4
    stw     r0, 0x194(r6)
    lwz     r6, 0x2fc(r6)
_disableCheck:
    cmplwi  r6, 0x0
    bne     _disableBody
    li      r0, -0x901
    rlwinm  r3, r3, 0, 29, 23
    and     r31, r31, r0
_restoreFpscr:
    lis     r4, 0x6006
    subi    r0, r4, 0x701
    and     r3, r3, r0
    bl      PPCMtfpscr
    mr      r3, r31
    bl      PPCMtmsr
_restore:
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x34(r1)
    lwz     r31, 0x2c(r1)
    lwz     r30, 0x28(r1)
    lwz     r29, 0x24(r1)
    lwz     r28, 0x20(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}
