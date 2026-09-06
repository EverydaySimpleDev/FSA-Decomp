#include <types.h>
#include "Dolphin/OS/OSContext.h"

//80163870
ASM u32 OSSaveContext(register OSContext* context) {
#ifdef __MWERKS__ // clang-format off
    nofralloc
    stmw    r13, context->gpr[13]
    mfspr   r0, GQR1
    stw     r0, context->gqr[1]
    mfspr   r0, GQR2
    stw     r0, context->gqr[2]
    mfspr   r0, GQR3
    stw     r0, context->gqr[3]
    mfspr   r0, GQR4
    stw     r0, context->gqr[4]
    mfspr   r0, GQR5
    stw     r0, context->gqr[5]
    mfspr   r0, GQR6
    stw     r0, context->gqr[6]
    mfspr   r0, GQR7
    stw     r0, context->gqr[7]
    mfcr    r0
    stw     r0, context->cr
    mflr    r0
    stw     r0, context->lr
    stw     r0, context->srr0
    mfmsr   r0
    stw     r0, context->srr1
    mfctr   r0
    stw     r0, context->ctr
    mfxer   r0
    stw     r0, context->xer
    stw     r1, context->gpr[1]
    stw     r2, context->gpr[2]
    li      r0, 0x1
    stw     r0, context->gpr[3]
    li      r3, 0
    blr
#endif // clang-format on
}
