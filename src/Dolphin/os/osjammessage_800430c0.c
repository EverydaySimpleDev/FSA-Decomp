#include "types.h"
#include "Dolphin/os.h"

//800430C0
ASM BOOL OSJamMessage(OSMessageQueue* queue, OSMessage msg, s32 flags)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    addi    r31, r3, 0x0
    stw     r30, 0x20(r1)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(r1)
    stw     r28, 0x18(r1)
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    addi    r29, r3, 0x0
    clrlwi  r30, r30, 31
    b       _while
_persist:
    cmpwi   r30, 0x0
    bne     _sleep
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       _done
_sleep:
    mr      r3, r31
    bl      OSSleepThread
_while:
    lwz     r5, 0x14(r31)
    lwz     r0, 0x1c(r31)
    cmpw    r5, r0
    ble     _persist
    lwz     r4, 0x18(r31)
    subi    r0, r5, 0x1
    addi    r3, r31, 0x8
    add     r4, r4, r0
    divw    r0, r4, r5
    mullw   r0, r0, r5
    subf    r0, r0, r4
    stw     r0, 0x18(r31)
    lwz     r0, 0x18(r31)
    lwz     r4, 0x10(r31)
    slwi    r0, r0, 2
    stwx    r28, r4, r0
    lwz     r4, 0x1c(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r31)
    bl      OSWakeupThread
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x1
_done:
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    lwz     r28, 0x18(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}
