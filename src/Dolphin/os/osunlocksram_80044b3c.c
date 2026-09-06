#include "types.h"
#include "Dolphin/os.h"

extern SramControlBlock Scb;
extern BOOL UnlockSram(register BOOL commit, register u32 offset);

//80044B3C
ASM BOOL __OSUnlockSram(register BOOL commit)
{
    nofralloc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      UnlockSram
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

//80044B60
ASM BOOL __OSUnlockSramEx(register BOOL commit)
{
    nofralloc
    mflr    r0
    li      r4, 0x14
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      UnlockSram
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

//80044B84
ASM BOOL __OSSyncSram(void)
{
    nofralloc
    lis     r3, Scb@ha
    addi    r3, r3, Scb@l
    lwz     r3, 0x4c(r3)
    blr
}
