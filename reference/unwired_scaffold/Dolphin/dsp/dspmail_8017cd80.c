#include "types.h"
#include "Dolphin/hw_regs.h"

//8017CD80
u32 DSPCheckMailToDSP() { return __DSPRegs[DSP_MAILBOX_IN_HI] >> 0xF & 1; }

//8017CD90
u32 DSPCheckMailFromDSP() { return __DSPRegs[DSP_MAILBOX_OUT_HI] >> 0xF & 1; }

//8017CDA0
ASM u32 DSPReadMailFromDSP()
{
    nofralloc
    lis     r3, 0xcc00
    addi    r3, r3, 0x5000
    lhz     r0, 0x4(r3)
    lhz     r3, 0x6(r3)
    rlwimi  r3, r0, 16, 0, 15
    blr
}

//8017CDB8
ASM void DSPSendMailToDSP(register u32 mail)
{
    nofralloc
    lis     r4, 0xcc00
    srwi    r0, mail, 16
    sth     r0, 0x5000(r4)
    sth     mail, 0x5002(r4)
    blr
}
