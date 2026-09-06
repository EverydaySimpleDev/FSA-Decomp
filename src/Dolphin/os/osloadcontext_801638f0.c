#include <types.h>
#include "Dolphin/OS/OSContext.h"

extern void OSDisableInterrupts(void);

//801638F0
ASM void OSLoadContext(register OSContext* context)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc

    lis      r4, OSDisableInterrupts@ha
    lwz      r6, context->srr0
    addi     r5, r4, OSDisableInterrupts@l
    cmplw    r6, r5
    ble      _notInRAS
    lis      r4, (OSDisableInterrupts+0xC)@ha
    addi     r0, r4, (OSDisableInterrupts+0xC)@l
    cmplw    r6, r0
    bge      _notInRAS
    stw      r5, context->srr0

_notInRAS:

    lwz     r0, context->gpr[0]
    lwz     r1, context->gpr[1]
    lwz     r2, context->gpr[2]

    lhz     r4, context->state
    rlwinm. r5, r4, 0, 30, 30
    beq     notexc
    rlwinm  r4, r4, 0, 31, 29
    sth     r4, context->state
    lmw     r5, context->gpr[5]
    b       misc
notexc:
    lmw    r13, context->gpr[13]
misc:

    lwz     r4, context->gqr[1]
    mtspr   GQR1, r4
    lwz     r4, context->gqr[2]
    mtspr   GQR2, r4
    lwz     r4, context->gqr[3]
    mtspr   GQR3, r4
    lwz     r4, context->gqr[4]
    mtspr   GQR4, r4
    lwz     r4, context->gqr[5]
    mtspr   GQR5, r4
    lwz     r4, context->gqr[6]
    mtspr   GQR6, r4
    lwz     r4, context->gqr[7]
    mtspr   GQR7, r4

    lwz     r4, context->cr
    mtcr    r4
    lwz     r4, context->lr
    mtlr    r4
    lwz     r4, context->ctr
    mtctr   r4
    lwz     r4, context->xer
    mtxer   r4

    mfmsr   r4
    rlwinm  r4, r4, 0, 17, 15
    rlwinm  r4, r4, 0, 31, 29
    mtmsr   r4

    lwz     r4, context->srr0
    mtsrr0  r4
    lwz     r4, context->srr1
    mtsrr1  r4

    lwz     r4, context->gpr[4]
    lwz     r3, context->gpr[3]

    rfi
#endif // clang-format on
}
