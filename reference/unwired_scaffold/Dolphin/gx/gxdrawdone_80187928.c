#include "Dolphin/gx.h"
#include "Dolphin/os.h"

extern void GXFlush(void);
extern GXBool DrawDone;
extern OSThreadQueue FinishQueue;

//80187928
ASM void GXDrawDone(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    bl      OSDisableInterrupts
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r4, 0x4500
    stb     r0, -0x8000(r5)
    addi    r0, r4, 0x2
    stw     r0, -0x8000(r5)
    mr      r31, r3
    bl      GXFlush
    li      r0, 0x0
    stb     r0, DrawDone
    mr      r3, r31
    bl      OSRestoreInterrupts
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
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
