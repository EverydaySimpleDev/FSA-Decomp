#include "types.h"
#include "Dolphin/dvd.h"

//8016DC2C
ASM void cbForReadAsync(register s32 result, register DVDFileInfo* fileInfo)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lwz     r12, 0x38(r4)
    cmplwi  r12, 0x0
    beq     skipCall
    mtlr    r12
    blrl
skipCall:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
