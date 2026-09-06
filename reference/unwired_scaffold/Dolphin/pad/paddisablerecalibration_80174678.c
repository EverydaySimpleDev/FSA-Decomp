#include "types.h"
#include "Dolphin/os.h"

//80174678
ASM BOOL __PADDisableRecalibration(register BOOL disable)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, disable
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lbz     r0, 0x30e3(r4)
    rlwinm. r0, r0, 0, 25, 25
    beq     was_off
    li      r31, 0x1
    b       got_prev
was_off:
    li      r31, 0x0
got_prev:
    lis     r4, 0x8000
    lbz     r0, 0x30e3(r4)
    cmpwi   r30, 0x0
    rlwinm  r0, r0, 0, 26, 24
    stb     r0, 0x30e3(r4)
    beq     done
    lbz     r0, 0x30e3(r4)
    ori     r0, r0, 0x40
    stb     r0, 0x30e3(r4)
done:
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
