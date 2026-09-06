#include "types.h"
#include "Dolphin/os.h"

extern SramControlBlock Scb;
extern void fn_8016922C(int commit, int offset);

//8016991C
ASM u8 OSGetLanguage(void)
{
    nofralloc
    mflr    r0
    lis     r3, Scb@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, r3, Scb@l
    bl      OSDisableInterrupts
    lwz     r0, 0x48(r31)
    addi    r4, r31, 0x48
    cmpwi   r0, 0x0
    beq     alreadyLocked
    bl      OSRestoreInterrupts
    li      r31, 0x0
    b       done
alreadyLocked:
    stw     r3, 0x44(r31)
    li      r0, 0x1
    stw     r0, 0x0(r4)
done:
    lbz     r31, 0x12(r31)
    li      r3, 0x0
    li      r4, 0x0
    bl      fn_8016922C
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
