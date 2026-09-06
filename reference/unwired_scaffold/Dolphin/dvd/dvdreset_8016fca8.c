#include "types.h"
#include "Dolphin/dvd.h"
#include "Dolphin/hw_regs.h"

extern void DVDLowReset(void);

vu32 ResumeFromHere;
volatile BOOL ResetRequired;

//8016FCA8
ASM void DVDReset(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      DVDLowReset
    lis     r3, 0xcc00
    li      r0, 0x2a
    stw     r0, 0x6000(r3)
    addi    r4, r3, 0x6000
    li      r0, 0x0
    lwz     r3, 0x6004(r3)
    stw     r3, 0x4(r4)
    stw     r0, ResetRequired
    stw     r0, ResumeFromHere
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
