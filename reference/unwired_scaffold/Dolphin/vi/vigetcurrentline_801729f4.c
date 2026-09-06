#include "types.h"
#include "Dolphin/vi.h"
#include "Dolphin/os.h"

extern VITimingInfo* CurrTiming;

//801729F4
ASM u32 VIGetCurrentLine(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    lwz     r31, CurrTiming
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    addi    r8, r4, 0x2000
    lhzu    r0, 0x2c(r8)
    addi    r5, r4, 0x2000
    clrlwi  r6, r0, 21
loop:
    lhz     r0, 0x0(r8)
    mr      r7, r6
    lhz     r4, 0x2e(r5)
    clrlwi  r6, r0, 21
    cmplw   r7, r6
    clrlwi  r7, r4, 21
    bne     loop
    lwz     r4, CurrTiming
    subi    r5, r7, 0x1
    subi    r6, r6, 0x1
    lhz     r0, 0x1a(r4)
    slwi    r4, r6, 1
    divwu   r0, r5, r0
    add     r30, r4, r0
    bl      OSRestoreInterrupts
    lhz     r0, 0x18(r31)
    cmplw   r30, r0
    blt     skipwrap
    subf    r30, r0, r30
skipwrap:
    srwi    r3, r30, 1
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
