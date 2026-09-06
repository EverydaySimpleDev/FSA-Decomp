#include "Dolphin/card.h"
#include "Dolphin/os.h"

//8017EB20
ASM s32 __CARDPutControlBlock(register CARDControl* card, register s32 result)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, result, 0x0
    stw     r30, 0x10(r1)
    addi    r30, card, 0x0
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    beq     else_
    stw     r31, 0x4(r30)
    b       done
else_:
    lwz     r0, 0x4(r30)
    cmpwi   r0, -0x1
    bne     done
    stw     r31, 0x4(r30)
done:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
