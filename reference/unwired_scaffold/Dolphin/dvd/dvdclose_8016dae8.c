#include "types.h"
#include "Dolphin/dvd.h"

//8016DAE8
ASM BOOL DVDClose(register DVDFileInfo* fileInfo)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      DVDCancel
    li      r3, 0x1
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
