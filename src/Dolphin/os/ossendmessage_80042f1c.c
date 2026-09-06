#include "types.h"
#include "Dolphin/os.h"

//80042F1C
ASM BOOL OSSendMessage(OSMessageQueue* queue, OSMessage msg, s32 flags)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    addi    r31, r5, 0x0
    stw     r30, 0x20(r1)
    stw     r29, 0x1c(r1)
    addi    r29, r4, 0x0
    stw     r28, 0x18(r1)
    addi    r28, r3, 0x0
    bl      OSDisableInterrupts
    addi    r30, r3, 0x0
    clrlwi  r31, r31, 31
    b       _while
_persist:
    cmpwi   r31, 0x0
    bne     _sleep
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       _done
_sleep:
    mr      r3, r28
    bl      OSSleepThread
_while:
    lwz     r6, 0x14(r28)
    lwz     r4, 0x1c(r28)
    cmpw    r6, r4
    ble     _persist
    lwz     r0, 0x18(r28)
    addi    r3, r28, 0x8
    lwz     r5, 0x10(r28)
    add     r4, r0, r4
    divw    r0, r4, r6
    mullw   r0, r0, r6
    subf    r0, r0, r4
    slwi    r0, r0, 2
    stwx    r29, r5, r0
    lwz     r4, 0x1c(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r28)
    bl      OSWakeupThread
    mr      r3, r30
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
