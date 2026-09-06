#include "types.h"
#include "Dolphin/vi.h"
#include "Dolphin/hw_regs.h"
#include "Dolphin/os.h"

//80172AF4
ASM u32 VIGetDTVStatus(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    lhz     r0, 0x206e(r4)
    clrlwi  r31, r0, 30
    bl      OSRestoreInterrupts
    clrlwi  r3, r31, 31
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
