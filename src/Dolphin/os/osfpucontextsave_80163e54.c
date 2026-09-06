#include <types.h>
#include "Dolphin/PPCArch.h"

//80163E54
ASM void OSFillFPUContext(register void* context)
{
    nofralloc
    mfmsr   r5
    ori     r5, r5, 0x2000
    mtmsr   r5
    isync
    stfd    f0, 0x90(context)
    stfd    f1, 0x98(context)
    stfd    f2, 0xa0(context)
    stfd    f3, 0xa8(context)
    stfd    f4, 0xb0(context)
    stfd    f5, 0xb8(context)
    stfd    f6, 0xc0(context)
    stfd    f7, 0xc8(context)
    stfd    f8, 0xd0(context)
    stfd    f9, 0xd8(context)
    stfd    f10, 0xe0(context)
    stfd    f11, 0xe8(context)
    stfd    f12, 0xf0(context)
    stfd    f13, 0xf8(context)
    stfd    f14, 0x100(context)
    stfd    f15, 0x108(context)
    stfd    f16, 0x110(context)
    stfd    f17, 0x118(context)
    stfd    f18, 0x120(context)
    stfd    f19, 0x128(context)
    stfd    f20, 0x130(context)
    stfd    f21, 0x138(context)
    stfd    f22, 0x140(context)
    stfd    f23, 0x148(context)
    stfd    f24, 0x150(context)
    stfd    f25, 0x158(context)
    stfd    f26, 0x160(context)
    stfd    f27, 0x168(context)
    stfd    f28, 0x170(context)
    stfd    f29, 0x178(context)
    stfd    f30, 0x180(context)
    stfd    f31, 0x188(context)
    mffs    f0
    stfd    f0, 0x190(context)
    lfd     f0, 0x90(context)
    mfspr   r5, HID2
    extrwi. r5, r5, 1, 2
    beq     _return
    psq_st  f0, 0x1c8(context), 0, 0
    psq_st  f1, 0x1d0(context), 0, 0
    psq_st  f2, 0x1d8(context), 0, 0
    psq_st  f3, 0x1e0(context), 0, 0
    psq_st  f4, 0x1e8(context), 0, 0
    psq_st  f5, 0x1f0(context), 0, 0
    psq_st  f6, 0x1f8(context), 0, 0
    psq_st  f7, 0x200(context), 0, 0
    psq_st  f8, 0x208(context), 0, 0
    psq_st  f9, 0x210(context), 0, 0
    psq_st  f10, 0x218(context), 0, 0
    psq_st  f11, 0x220(context), 0, 0
    psq_st  f12, 0x228(context), 0, 0
    psq_st  f13, 0x230(context), 0, 0
    psq_st  f14, 0x238(context), 0, 0
    psq_st  f15, 0x240(context), 0, 0
    psq_st  f16, 0x248(context), 0, 0
    psq_st  f17, 0x250(context), 0, 0
    psq_st  f18, 0x258(context), 0, 0
    psq_st  f19, 0x260(context), 0, 0
    psq_st  f20, 0x268(context), 0, 0
    psq_st  f21, 0x270(context), 0, 0
    psq_st  f22, 0x278(context), 0, 0
    psq_st  f23, 0x280(context), 0, 0
    psq_st  f24, 0x288(context), 0, 0
    psq_st  f25, 0x290(context), 0, 0
    psq_st  f26, 0x298(context), 0, 0
    psq_st  f27, 0x2a0(context), 0, 0
    psq_st  f28, 0x2a8(context), 0, 0
    psq_st  f29, 0x2b0(context), 0, 0
    psq_st  f30, 0x2b8(context), 0, 0
    psq_st  f31, 0x2c0(context), 0, 0
_return:
    opword  0x4E800020
}
