#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/PPCArch.h"
#include "Dolphin/db.h"

extern void DCEnable(void);

//801632C8
ASM void L2GlobalInvalidate(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    sync
    bl      PPCMfl2cr
    clrlwi  r3, r3, 1
    bl      PPCMtl2cr
    sync
    bl      PPCMfl2cr
    oris    r3, r3, 0x20
    bl      PPCMtl2cr
    opword  0x48000004
    opword  0x48000004
_loopCheck1:
    bl      PPCMfl2cr
    clrlwi  r0, r3, 31
    cmplwi  r0, 0x0
    bne     _loopCheck1
    bl      PPCMfl2cr
    rlwinm  r3, r3, 0, 11, 9
    bl      PPCMtl2cr
    opword  0x48000004
_stringBase:
    lis     r3, 0x8049
    addi    r31, r3, 0x5880
    opword  0x48000004
    b       _loopCheck2
_loopBody:
    mr      r3, r31
    crclr   6
    bl      DBPrintf
_loopCheck2:
    bl      PPCMfl2cr
    clrlwi  r0, r3, 31
    cmplwi  r0, 0x0
    bne     _loopBody
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}

//80163360
ASM void DMAErrorHandler(register OSError error, register OSContext* context, ...)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x80(r1)
    stw     r31, 0x7c(r1)
    stw     r30, 0x78(r1)
    stw     r29, 0x74(r1)
    bne     cr1, _skipFPSpill
    stfd    f1, 0x28(r1)
    stfd    f2, 0x30(r1)
    stfd    f3, 0x38(r1)
    stfd    f4, 0x40(r1)
    stfd    f5, 0x48(r1)
    stfd    f6, 0x50(r1)
    stfd    f7, 0x58(r1)
    stfd    f8, 0x60(r1)
_skipFPSpill:
    stw     r3, 0x8(r1)
    stw     r4, 0xc(r1)
    stw     r5, 0x10(r1)
    stw     r6, 0x14(r1)
    stw     r7, 0x18(r1)
    stw     r8, 0x1c(r1)
    stw     r9, 0x20(r1)
    stw     r10, 0x24(r1)
    mr      r29, r4
    lis     r3, 0x8049
    addi    r31, r3, 0x5880
    bl      PPCMfhid2
    mr      r30, r3
    crclr   6
    addi    r3, r31, 0x2c
    bl      OSReport
    lwz     r5, 0x19c(r29)
    mr      r4, r30
    addi    r3, r31, 0x44
    crclr   6
    bl      OSReport
    rlwinm  r0, r30, 0, 8, 11
    cmplwi  r0, 0x0
    beq     _dmaCheck
    lwz     r0, 0x19c(r29)
    rlwinm  r0, r0, 0, 10, 10
    cmplwi  r0, 0x0
    bne     _errorFlags
_dmaCheck:
    addi    r3, r31, 0x60
    crclr   6
    bl      OSReport
    mr      r3, r29
    bl      OSDumpContext
    bl      PPCHalt
_errorFlags:
    addi    r3, r31, 0x90
    crclr   6
    bl      OSReport
    addi    r3, r31, 0xcc
    crclr   6
    bl      OSReport
    rlwinm  r0, r30, 0, 8, 8
    cmplwi  r0, 0x0
    beq     _flag2
    addi    r3, r31, 0x104
    crclr   6
    bl      OSReport
_flag2:
    rlwinm  r0, r30, 0, 9, 9
    cmplwi  r0, 0x0
    beq     _flag3
    addi    r3, r31, 0x144
    crclr   6
    bl      OSReport
_flag3:
    rlwinm  r0, r30, 0, 10, 10
    cmplwi  r0, 0x0
    beq     _flag4
    addi    r3, r31, 0x170
    crclr   6
    bl      OSReport
_flag4:
    rlwinm  r0, r30, 0, 11, 11
    cmplwi  r0, 0x0
    beq     _flagsDone
    addi    r3, r31, 0x190
    crclr   6
    bl      OSReport
_flagsDone:
    mr      r3, r30
    bl      PPCMthid2
    lwz     r0, 0x84(r1)
    lwz     r31, 0x7c(r1)
    lwz     r30, 0x78(r1)
    lwz     r29, 0x74(r1)
    addi    r1, r1, 0x80
    mtlr    r0
    blr
}

//801634C0
ASM void __OSCacheInit(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    stw     r30, 0x8(r1)
    lis     r3, 0x8049
    addi    r31, r3, 0x5880
    bl      PPCMfhid0
    rlwinm  r0, r3, 0, 16, 16
    cmplwi  r0, 0x0
    bne     _dcacheCheck
    bl      ICEnable
    addi    r3, r31, 0x1ac
    crclr   6
    bl      DBPrintf
_dcacheCheck:
    bl      PPCMfhid0
    rlwinm  r0, r3, 0, 17, 17
    cmplwi  r0, 0x0
    bne     _l2Check
    bl      DCEnable
    addi    r3, r31, 0x1c8
    crclr   6
    bl      DBPrintf
_l2Check:
    bl      PPCMfl2cr
    clrrwi  r0, r3, 31
    cmplwi  r0, 0x0
    bne     _installHandler
    bl      PPCMfmsr
    mr      r30, r3
    sync
    li      r3, 0x30
    bl      PPCMtmsr
    sync
    sync
    bl      PPCMfl2cr
    clrlwi  r3, r3, 1
    bl      PPCMtl2cr
    sync
    bl      L2GlobalInvalidate
    mr      r3, r30
    bl      PPCMtmsr
    bl      PPCMfl2cr
    oris    r0, r3, 0x8000
    rlwinm  r3, r0, 0, 11, 9
    bl      PPCMtl2cr
    addi    r3, r31, 0x1e4
    crclr   6
    bl      DBPrintf
_installHandler:
    lis     r3, DMAErrorHandler@ha
    addi    r4, r3, DMAErrorHandler@l
    li      r3, 0x1
    bl      OSSetErrorHandler
    addi    r3, r31, 0x1fc
    crclr   6
    bl      DBPrintf
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    lwz     r30, 0x8(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
