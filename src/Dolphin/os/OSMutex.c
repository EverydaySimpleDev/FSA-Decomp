#include "Dolphin/os.h"

extern void __OSPromoteThread(OSThread* thread, OSPriority priority);
extern OSPriority __OSGetEffectivePriority(OSThread* thread);

/**
 * @note Address: 0x800EFB30
 * @note Size: 0x38
 */
//80043530
ASM void OSInitMutex(register OSMutex* mutex)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, r3
    bl      OSInitThreadQueue
    li      r0, 0x0
    stw     r0, 0x8(r31)
    stw     r0, 0xc(r31)
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

/**
 * @note Address: 0x800EFB68
 * @note Size: 0xDC
 */
//80043568
ASM void OSLockMutex(register OSMutex* mutex)
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
    mr      r29, r3
    bl      OSGetCurrentThread
    addi    r30, r3, 0x0
    li      r31, 0x0
_loop:
    lwz     r0, 0x8(r28)
    cmplwi  r0, 0x0
    bne     _notnull
    stw     r30, 0x8(r28)
    lwz     r3, 0xc(r28)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r28)
    lwz     r3, 0x2f8(r30)
    cmplwi  r3, 0x0
    bne     _hasprev
    stw     r28, 0x2f4(r30)
    b       _setnext
_hasprev:
    stw     r28, 0x10(r3)
_setnext:
    stw     r3, 0x14(r28)
    li      r0, 0x0
    stw     r0, 0x10(r28)
    stw     r28, 0x2f8(r30)
    b       _end
_notnull:
    cmplw   r0, r30
    bne     _other
    lwz     r3, 0xc(r28)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r28)
    b       _end
_other:
    stw     r28, 0x2f0(r30)
    lwz     r3, 0x8(r28)
    lwz     r4, 0x2d0(r30)
    bl      __OSPromoteThread
    mr      r3, r28
    bl      OSSleepThread
    stw     r31, 0x2f0(r30)
    b       _loop
_end:
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

/**
 * @note Address: 0x800EFC44
 * @note Size: 0xC8
 */
//80043644
ASM void OSUnlockMutex(register OSMutex* mutex)
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
    mr      r31, r3
    bl      OSGetCurrentThread
    lwz     r0, 0x8(r29)
    addi    r30, r3, 0x0
    cmplw   r0, r30
    bne     _done
    lwz     r3, 0xc(r29)
    subic.  r0, r3, 0x1
    stw     r0, 0xc(r29)
    bne     _done
    lwz     r3, 0x10(r29)
    lwz     r4, 0x14(r29)
    cmplwi  r3, 0x0
    bne     _hasprev
    stw     r4, 0x2f8(r30)
    b       _chknext
_hasprev:
    stw     r4, 0x14(r3)
_chknext:
    cmplwi  r4, 0x0
    bne     _hasnext
    stw     r3, 0x2f4(r30)
    b       _clrthread
_hasnext:
    stw     r3, 0x10(r4)
_clrthread:
    li      r0, 0x0
    stw     r0, 0x8(r29)
    lwz     r3, 0x2d0(r30)
    lwz     r0, 0x2d4(r30)
    cmpw    r3, r0
    bge     _wake
    mr      r3, r30
    bl      __OSGetEffectivePriority
    stw     r3, 0x2d0(r30)
_wake:
    mr      r3, r29
    bl      OSWakeupThread
_done:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

/**
 * @note Address: 0x800EFD0C
 * @note Size: 0x70
 */
//8004370C
ASM void __OSUnlockAllMutex(register OSThread* thread)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    li      r31, 0x0
    stw     r30, 0x10(r1)
    addi    r30, r3, 0x0
    b       _while
_body:
    lwz     r5, 0x10(r4)
    addi    r3, r4, 0x0
    cmplwi  r5, 0x0
    bne     _hasnext
    stw     r31, 0x2f8(r30)
    b       _setmutex
_hasnext:
    stw     r31, 0x14(r5)
_setmutex:
    stw     r5, 0x2f4(r30)
    stw     r31, 0xc(r4)
    stw     r31, 0x8(r4)
    bl      OSWakeupThread
_while:
    lwz     r4, 0x2f4(r30)
    cmplwi  r4, 0x0
    bne     _body
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

/**
 * @note Address: 0x800EFD7C
 * @note Size: 0xBC
 */
//8004377C
ASM BOOL OSTryLockMutex(register OSMutex* mutex)
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
    mr      r31, r3
    bl      OSGetCurrentThread
    lwz     r0, 0x8(r29)
    cmplwi  r0, 0x0
    bne     _notnull
    stw     r3, 0x8(r29)
    lwz     r4, 0xc(r29)
    addi    r0, r4, 0x1
    stw     r0, 0xc(r29)
    lwz     r4, 0x2f8(r3)
    cmplwi  r4, 0x0
    bne     _hasprev
    stw     r29, 0x2f4(r3)
    b       _setnext
_hasprev:
    stw     r29, 0x10(r4)
_setnext:
    stw     r4, 0x14(r29)
    li      r0, 0x0
    li      r30, 0x1
    stw     r0, 0x10(r29)
    stw     r29, 0x2f8(r3)
    b       _end
_notnull:
    cmplw   r0, r3
    bne     _other
    lwz     r3, 0xc(r29)
    li      r30, 0x1
    addi    r0, r3, 0x1
    stw     r0, 0xc(r29)
    b       _end
_other:
    li      r30, 0x0
_end:
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

/**
 * @note Address: 0x800EFE38
 * @note Size: 0x20
 */
//80043838
ASM void OSInitCond(register OSCond* cond)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      OSInitThreadQueue
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

/**
 * @note Address: 0x800EFE58
 * @note Size: 0xD4
 */
//80043858
ASM void OSWaitCond(register OSCond* cond, register OSMutex* mutex)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stmw    r27, 0x14(r1)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      OSGetCurrentThread
    lwz     r0, 0x8(r28)
    addi    r30, r3, 0x0
    cmplw   r0, r30
    bne     _skip
    lwz     r29, 0xc(r28)
    li      r0, 0x0
    stw     r0, 0xc(r28)
    lwz     r3, 0x10(r28)
    lwz     r4, 0x14(r28)
    cmplwi  r3, 0x0
    bne     _hasprev
    stw     r4, 0x2f8(r30)
    b       _chknext
_hasprev:
    stw     r4, 0x14(r3)
_chknext:
    cmplwi  r4, 0x0
    bne     _hasnext
    stw     r3, 0x2f4(r30)
    b       _clrthread
_hasnext:
    stw     r3, 0x10(r4)
_clrthread:
    li      r0, 0x0
    stw     r0, 0x8(r28)
    lwz     r3, 0x2d0(r30)
    lwz     r0, 0x2d4(r30)
    cmpw    r3, r0
    bge     _sched
    mr      r3, r30
    bl      __OSGetEffectivePriority
    stw     r3, 0x2d0(r30)
_sched:
    bl      OSDisableScheduler
    mr      r3, r28
    bl      OSWakeupThread
    bl      OSEnableScheduler
    mr      r3, r27
    bl      OSSleepThread
    mr      r3, r28
    bl      OSLockMutex
    stw     r29, 0xc(r28)
_skip:
    mr      r3, r31
    bl      OSRestoreInterrupts
    lmw     r27, 0x14(r1)
    lwz     r0, 0x2c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

/**
 * @note Address: 0x800EFF2C
 * @note Size: 0x20
 */
//8004392C
ASM void OSSignalCond(register OSCond* cond)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      OSWakeupThread
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
