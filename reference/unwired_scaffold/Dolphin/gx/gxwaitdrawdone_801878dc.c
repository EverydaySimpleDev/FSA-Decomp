#include "Dolphin/gx.h"
#include "Dolphin/os.h"

extern GXBool DrawDone;
extern OSThreadQueue FinishQueue; // defined in gxsetdrawdone_80187844.c

//801878DC
ASM void GXWaitDrawDone(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    bl      OSDisableInterrupts
    mr      r31, r3
    b       check
sleep:
    // FIXED, real bug: MWCC can't express "subi rD,r13,SYM@sda21" (compact
    // base-register-less SDA21 form) for this fixed retail global; opword
    // recomputed for this build's current _SDA_BASE_. See project memory.
    opword  0x386D9514
    bl      OSSleepThread
check:
    lbz     r0, DrawDone
    cmplwi  r0, 0x0
    beq     sleep
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
