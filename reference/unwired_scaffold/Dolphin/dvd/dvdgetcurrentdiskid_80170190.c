#include "types.h"
#include "Dolphin/dvd.h"

//80170190
ASM DVDDiskID* DVDGetCurrentDiskID(void)
{
    nofralloc
    lis     r3, 0x8000
    blr
}
