#include "types.h"
#include "Dolphin/OS/OSExpansion.h"
#include "Dolphin/hw_regs.h"

//80161DDC
ASM u32 __OSGetDIConfig(void)
{
    nofralloc
    lis     r3, 0xcc00
    addi    r3, r3, 0x6000
    lwz     r0, 0x24(r3)
    clrlwi  r3, r0, 24
    blr
}
