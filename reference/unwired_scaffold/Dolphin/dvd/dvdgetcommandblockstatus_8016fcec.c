#include "types.h"
#include "Dolphin/dvd.h"
#include "Dolphin/os.h"

//8016FCEC
ASM s32 DVDGetCommandBlockStatus(register const DVDCommandBlock* block)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, block
    bl      OSDisableInterrupts
    lwz     r0, 0xc(r31)
    cmpwi   r0, 0x3
    bne     notDone
    li      r31, 0x1
    b       haveStatus
notDone:
    mr      r31, r0
haveStatus:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
