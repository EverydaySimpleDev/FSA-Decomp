#include "types.h"
#include "Dolphin/os.h"

//801682AC
ASM u32 OSGetPhysicalMemSize(void)
{
    nofralloc
    lis     r3, 0x8000
    lwz     r3, 0x28(r3)
    blr
}
