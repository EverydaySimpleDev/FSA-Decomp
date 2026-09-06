#include "types.h"
#include "Dolphin/os.h"

// Adds the fixed 64-bit bias at 0x800030D8 (hi) / 0x800030DC (lo) -- part of
// the BS2-established low-memory OS globals area, not a linked symbol.
//8016B0F4
ASM OSTime __OSTimeToSystemTime(OSTime time)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    mr      r31, r3
    mr      r30, r4
    bl      OSDisableInterrupts
    lis     r5, 0x8000
    lwz     r4, 0x30dc(r5)
    lwz     r0, 0x30d8(r5)
    addc    r30, r4, r30
    adde    r31, r0, r31
    bl      OSRestoreInterrupts
    mr      r4, r30
    mr      r3, r31
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
