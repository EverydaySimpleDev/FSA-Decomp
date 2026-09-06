#include "types.h"
#include "Dolphin/dsp.h"
#include "Dolphin/os.h"

//8017CF08
ASM DSPTaskInfo* DSPCancelTask(register DSPTaskInfo* task)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, task
    bl      OSDisableInterrupts
    lwz     r0, 0x8(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x8(r31)
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
