#include <types.h>
#include "Dolphin/OS/OSContext.h"
#include "Dolphin/PPCArch.h"

//801635B4
ASM void __OSLoadFPUContext(register u32 unused, register OSContext* fpuContext)
{
    nofralloc
    lhz     r5, fpuContext->state
    clrlwi. r5, r5, 31
    beq     _return

    lfd     f0, OS_CONTEXT_FPSCR(fpuContext)
    mtfsf   255, f0
    mfspr   r5, HID2
    extrwi. r5, r5, 1, 2
    beq     _regularFPRs

    psq_l   f0, OS_CONTEXT_PSF0(fpuContext), 0, 0
    psq_l   f1, OS_CONTEXT_PSF1(fpuContext), 0, 0
    psq_l   f2, OS_CONTEXT_PSF2(fpuContext), 0, 0
    psq_l   f3, OS_CONTEXT_PSF3(fpuContext), 0, 0
    psq_l   f4, OS_CONTEXT_PSF4(fpuContext), 0, 0
    psq_l   f5, OS_CONTEXT_PSF5(fpuContext), 0, 0
    psq_l   f6, OS_CONTEXT_PSF6(fpuContext), 0, 0
    psq_l   f7, OS_CONTEXT_PSF7(fpuContext), 0, 0
    psq_l   f8, OS_CONTEXT_PSF8(fpuContext), 0, 0
    psq_l   f9, OS_CONTEXT_PSF9(fpuContext), 0, 0
    psq_l   f10, OS_CONTEXT_PSF10(fpuContext), 0, 0
    psq_l   f11, OS_CONTEXT_PSF11(fpuContext), 0, 0
    psq_l   f12, OS_CONTEXT_PSF12(fpuContext), 0, 0
    psq_l   f13, OS_CONTEXT_PSF13(fpuContext), 0, 0
    psq_l   f14, OS_CONTEXT_PSF14(fpuContext), 0, 0
    psq_l   f15, OS_CONTEXT_PSF15(fpuContext), 0, 0
    psq_l   f16, OS_CONTEXT_PSF16(fpuContext), 0, 0
    psq_l   f17, OS_CONTEXT_PSF17(fpuContext), 0, 0
    psq_l   f18, OS_CONTEXT_PSF18(fpuContext), 0, 0
    psq_l   f19, OS_CONTEXT_PSF19(fpuContext), 0, 0
    psq_l   f20, OS_CONTEXT_PSF20(fpuContext), 0, 0
    psq_l   f21, OS_CONTEXT_PSF21(fpuContext), 0, 0
    psq_l   f22, OS_CONTEXT_PSF22(fpuContext), 0, 0
    psq_l   f23, OS_CONTEXT_PSF23(fpuContext), 0, 0
    psq_l   f24, OS_CONTEXT_PSF24(fpuContext), 0, 0
    psq_l   f25, OS_CONTEXT_PSF25(fpuContext), 0, 0
    psq_l   f26, OS_CONTEXT_PSF26(fpuContext), 0, 0
    psq_l   f27, OS_CONTEXT_PSF27(fpuContext), 0, 0
    psq_l   f28, OS_CONTEXT_PSF28(fpuContext), 0, 0
    psq_l   f29, OS_CONTEXT_PSF29(fpuContext), 0, 0
    psq_l   f30, OS_CONTEXT_PSF30(fpuContext), 0, 0
    psq_l   f31, OS_CONTEXT_PSF31(fpuContext), 0, 0

_regularFPRs:
    lfd     f0, fpuContext->fpr[0]
    lfd     f1, fpuContext->fpr[1]
    lfd     f2, fpuContext->fpr[2]
    lfd     f3, fpuContext->fpr[3]
    lfd     f4, fpuContext->fpr[4]
    lfd     f5, fpuContext->fpr[5]
    lfd     f6, fpuContext->fpr[6]
    lfd     f7, fpuContext->fpr[7]
    lfd     f8, fpuContext->fpr[8]
    lfd     f9, fpuContext->fpr[9]
    lfd     f10, fpuContext->fpr[10]
    lfd     f11, fpuContext->fpr[11]
    lfd     f12, fpuContext->fpr[12]
    lfd     f13, fpuContext->fpr[13]
    lfd     f14, fpuContext->fpr[14]
    lfd     f15, fpuContext->fpr[15]
    lfd     f16, fpuContext->fpr[16]
    lfd     f17, fpuContext->fpr[17]
    lfd     f18, fpuContext->fpr[18]
    lfd     f19, fpuContext->fpr[19]
    lfd     f20, fpuContext->fpr[20]
    lfd     f21, fpuContext->fpr[21]
    lfd     f22, fpuContext->fpr[22]
    lfd     f23, fpuContext->fpr[23]
    lfd     f24, fpuContext->fpr[24]
    lfd     f25, fpuContext->fpr[25]
    lfd     f26, fpuContext->fpr[26]
    lfd     f27, fpuContext->fpr[27]
    lfd     f28, fpuContext->fpr[28]
    lfd     f29, fpuContext->fpr[29]
    lfd     f30, fpuContext->fpr[30]
    lfd     f31, fpuContext->fpr[31]
_return:
    opword  0x4E800020
}

//801636D8
ASM void __OSSaveFPUContext(register u32 unused1, register u32 unused2, register OSContext* fpuContext)
{
    nofralloc
    lhz     r3, fpuContext->state
    ori     r3, r3, 0x1
    sth     r3, fpuContext->state

    stfd    f0, fpuContext->fpr[0]
    stfd    f1, fpuContext->fpr[1]
    stfd    f2, fpuContext->fpr[2]
    stfd    f3, fpuContext->fpr[3]
    stfd    f4, fpuContext->fpr[4]
    stfd    f5, fpuContext->fpr[5]
    stfd    f6, fpuContext->fpr[6]
    stfd    f7, fpuContext->fpr[7]
    stfd    f8, fpuContext->fpr[8]
    stfd    f9, fpuContext->fpr[9]
    stfd    f10, fpuContext->fpr[10]
    stfd    f11, fpuContext->fpr[11]
    stfd    f12, fpuContext->fpr[12]
    stfd    f13, fpuContext->fpr[13]
    stfd    f14, fpuContext->fpr[14]
    stfd    f15, fpuContext->fpr[15]
    stfd    f16, fpuContext->fpr[16]
    stfd    f17, fpuContext->fpr[17]
    stfd    f18, fpuContext->fpr[18]
    stfd    f19, fpuContext->fpr[19]
    stfd    f20, fpuContext->fpr[20]
    stfd    f21, fpuContext->fpr[21]
    stfd    f22, fpuContext->fpr[22]
    stfd    f23, fpuContext->fpr[23]
    stfd    f24, fpuContext->fpr[24]
    stfd    f25, fpuContext->fpr[25]
    stfd    f26, fpuContext->fpr[26]
    stfd    f27, fpuContext->fpr[27]
    stfd    f28, fpuContext->fpr[28]
    stfd    f29, fpuContext->fpr[29]
    stfd    f30, fpuContext->fpr[30]
    stfd    f31, fpuContext->fpr[31]

    mffs    f0
    stfd    f0, OS_CONTEXT_FPSCR(fpuContext)

    lfd     f0, fpuContext->fpr[0]

    mfspr   r3, HID2
    extrwi. r3, r3, 1, 2
    beq     _return2

    psq_st  f0, OS_CONTEXT_PSF0(fpuContext), 0, 0
    psq_st  f1, OS_CONTEXT_PSF1(fpuContext), 0, 0
    psq_st  f2, OS_CONTEXT_PSF2(fpuContext), 0, 0
    psq_st  f3, OS_CONTEXT_PSF3(fpuContext), 0, 0
    psq_st  f4, OS_CONTEXT_PSF4(fpuContext), 0, 0
    psq_st  f5, OS_CONTEXT_PSF5(fpuContext), 0, 0
    psq_st  f6, OS_CONTEXT_PSF6(fpuContext), 0, 0
    psq_st  f7, OS_CONTEXT_PSF7(fpuContext), 0, 0
    psq_st  f8, OS_CONTEXT_PSF8(fpuContext), 0, 0
    psq_st  f9, OS_CONTEXT_PSF9(fpuContext), 0, 0
    psq_st  f10, OS_CONTEXT_PSF10(fpuContext), 0, 0
    psq_st  f11, OS_CONTEXT_PSF11(fpuContext), 0, 0
    psq_st  f12, OS_CONTEXT_PSF12(fpuContext), 0, 0
    psq_st  f13, OS_CONTEXT_PSF13(fpuContext), 0, 0
    psq_st  f14, OS_CONTEXT_PSF14(fpuContext), 0, 0
    psq_st  f15, OS_CONTEXT_PSF15(fpuContext), 0, 0
    psq_st  f16, OS_CONTEXT_PSF16(fpuContext), 0, 0
    psq_st  f17, OS_CONTEXT_PSF17(fpuContext), 0, 0
    psq_st  f18, OS_CONTEXT_PSF18(fpuContext), 0, 0
    psq_st  f19, OS_CONTEXT_PSF19(fpuContext), 0, 0
    psq_st  f20, OS_CONTEXT_PSF20(fpuContext), 0, 0
    psq_st  f21, OS_CONTEXT_PSF21(fpuContext), 0, 0
    psq_st  f22, OS_CONTEXT_PSF22(fpuContext), 0, 0
    psq_st  f23, OS_CONTEXT_PSF23(fpuContext), 0, 0
    psq_st  f24, OS_CONTEXT_PSF24(fpuContext), 0, 0
    psq_st  f25, OS_CONTEXT_PSF25(fpuContext), 0, 0
    psq_st  f26, OS_CONTEXT_PSF26(fpuContext), 0, 0
    psq_st  f27, OS_CONTEXT_PSF27(fpuContext), 0, 0
    psq_st  f28, OS_CONTEXT_PSF28(fpuContext), 0, 0
    psq_st  f29, OS_CONTEXT_PSF29(fpuContext), 0, 0
    psq_st  f30, OS_CONTEXT_PSF30(fpuContext), 0, 0
    psq_st  f31, OS_CONTEXT_PSF31(fpuContext), 0, 0

_return2:
    opword  0x4E800020
}

//80163800
ASM void OSSaveFPUContext(register OSContext* context)
{
    nofralloc
    addi    r5, context, 0
    b       __OSSaveFPUContext
}

//80163808
ASM void OSSetCurrentContext(register OSContext* context)
{
    nofralloc
    lis     r4, 0x8000
    stw     context, 0xd4(r4)
    clrlwi  r5, context, 2
    stw     r5, 0xc0(r4)
    lwz     r5, 0xd8(r4)
    cmpw    r5, context
    bne     _switch
    lwz     r6, 0x19c(context)
    ori     r6, r6, 0x2000
    stw     r6, 0x19c(context)
    mfmsr   r6
    ori     r6, r6, 0x2
    mtmsr   r6
    blr
_switch:
    lwz     r6, 0x19c(context)
    rlwinm  r6, r6, 0, 19, 17
    stw     r6, 0x19c(context)
    mfmsr   r6
    rlwinm  r6, r6, 0, 19, 17
    ori     r6, r6, 0x2
    mtmsr   r6
    isync
    blr
}
