#include "types.h"
#include "Dolphin/ar.h"
#include "Dolphin/hw_regs.h"
#include "Dolphin/os.h"

//80175044
ASM u32 ARGetDMAStatus()
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    lhz     r0, 0x500a(r4)
    rlwinm  r31, r0, 0, 22, 22
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
