#include <types.h>
#include "Dolphin/os.h"

//801859A8
ASM void GXInitFifoPtrs(void* fifo, void* readPtr, void* writePtr)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    addi    r31, r5, 0x0
    stw     r30, 0x20(r1)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(r1)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    stw     r30, 0x14(r29)
    subf    r0, r30, r31
    stw     r31, 0x18(r29)
    stw     r0, 0x1c(r29)
    lwz     r4, 0x1c(r29)
    cmpwi   r4, 0x0
    bge     skip
    lwz     r0, 0x8(r29)
    add     r0, r4, r0
    stw     r0, 0x1c(r29)
skip:
    bl      OSRestoreInterrupts
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}
