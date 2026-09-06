#include "types.h"
#include "Dolphin/os.h"

extern __OSInterruptHandler* InterruptHandlerTable;

//80166E50
ASM BOOL OSDisableInterrupts(void)
{
    nofralloc
    mfmsr   r3
    rlwinm  r4, r3, 0, 17, 15
    mtmsr   r4
    rlwinm  r3, r3, 17, 31, 31
    blr
}

//80166E64
ASM BOOL OSEnableInterrupts(void)
{
    nofralloc
    mfmsr   r3
    ori     r4, r3, 0x8000
    mtmsr   r4
    rlwinm  r3, r3, 17, 31, 31
    blr
}

//80166E78
ASM BOOL OSRestoreInterrupts(register BOOL level)
{
    nofralloc
    cmpwi   level, 0x0
    mfmsr   r4
    beq     _disable
    ori     r5, r4, 0x8000
    b       _restore
_disable:
    rlwinm  r5, r4, 0, 17, 15
_restore:
    mtmsr   r5
    rlwinm  r3, r4, 17, 31, 31
    blr
}

//80166E9C
ASM __OSInterruptHandler __OSSetInterruptHandler(register __OSInterrupt interrupt, register __OSInterruptHandler handler)
{
    nofralloc
    extsh   r0, interrupt
    lwz     r3, InterruptHandlerTable
    slwi    r0, r0, 2
    add     r5, r3, r0
    lwz     r3, 0x0(r5)
    stw     handler, 0x0(r5)
    blr
}
