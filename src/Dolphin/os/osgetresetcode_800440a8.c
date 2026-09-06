#include "types.h"
#include "Dolphin/os.h"

extern u32 bootThisDol;

//800440A8
ASM u32 OSGetResetCode(void)
{
    nofralloc
    lis     r3, 0x8000
    lbz     r0, 0x30e2(r3)
    cmplwi  r0, 0x0
    beq     L_800440C0
    lis     r3, 0x8000
    opword  0x48000018
L_800440C0:
    lis     r3, 0xcc00
    addi    r3, r3, 0x3000
    lwz     r0, 0x24(r3)
    clrrwi  r0, r0, 3
    srwi    r3, r0, 3
L_800440D4:
    blr
}

//800440D8
ASM u32 fn_800440D8(register u32 val)
{
    nofralloc
    lwz     r0, bootThisDol
    stw     r3, bootThisDol
    mr      r3, r0
    blr
}
