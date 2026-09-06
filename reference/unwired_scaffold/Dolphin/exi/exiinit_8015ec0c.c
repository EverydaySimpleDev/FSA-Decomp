#include "types.h"
#include "Dolphin/exi.h"

extern void* memmove(void* dst, const void* src, u32 n);

extern EXIControl Ecb[EXI_MAX_CHAN];
extern void SetExiInterruptMask(s32 chan, EXIControl* exi);
extern BOOL __EXIProbe(s32 chan);
extern s32 __EXIProbeStartTime[2];
extern void TCIntrruptHandler(__OSInterrupt interrupt, OSContext* context);
extern void EXTIntrruptHandler(__OSInterrupt interrupt, OSContext* context);
extern char* __EXIVersion;

u32 IDSerialPort1;

// FIXED, real boot-crash bug: opword had RA=r0 instead of RA=r13, passing a
// garbage pointer as EXIGetID's output-buffer arg. Confirmed against true
// retail bytes -- see project memory.
//8015EC0C
ASM void EXIInit(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    stw     r28, 0x10(r1)
    lis     r3, 0xcc00
    addi    r3, r3, 0x6800
waitloop:
    lwz     r0, 0xc(r3)
    clrlwi  r0, r0, 31
    cmplwi  r0, 0x1
    beq     waitloop
    lwz     r0, 0x20(r3)
    clrlwi  r0, r0, 31
    cmplwi  r0, 0x1
    beq     waitloop
    lwz     r0, 0x34(r3)
    clrlwi  r0, r0, 31
    cmplwi  r0, 0x1
    beq     waitloop
    lis     r3, 0x80
    addi    r3, r3, -0x8000
    bl      __OSMaskInterrupts
    li      r31, 0x0
    lis     r4, 0xcc00
    stw     r31, 0x6800(r4)
    stw     r31, 0x6814(r4)
    stw     r31, 0x6828(r4)
    li      r0, 0x2000
    stw     r0, 0x6800(r4)
    li      r3, 0x9
    lis     r4, EXIIntrruptHandler@ha
    addi    r28, r4, EXIIntrruptHandler@l
    addi    r4, r28, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0xa
    lis     r4, TCIntrruptHandler@ha
    addi    r29, r4, TCIntrruptHandler@l
    addi    r4, r29, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0xb
    lis     r4, EXTIntrruptHandler@ha
    addi    r30, r4, EXTIntrruptHandler@l
    addi    r4, r30, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0xc
    addi    r4, r28, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0xd
    addi    r4, r29, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0xe
    addi    r4, r30, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0xf
    addi    r4, r28, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0x10
    addi    r4, r29, 0x0
    bl      __OSSetInterruptHandler
    li      r3, 0x0
    li      r4, 0x2
    opword  0x38AD9520
    bl      EXIGetID
    lwz     r0, __OSInIPL
    cmpwi   r0, 0x0
    beq     notipl
    lis     r4, 0x8000
    stw     r31, 0x30c4(r4)
    stw     r31, 0x30c0(r4)
    lis     r3, Ecb@ha
    addi    r3, r3, Ecb@l
    stw     r31, 0x60(r3)
    stw     r31, 0x20(r3)
    li      r3, 0x0
    bl      __EXIProbe
    li      r3, 0x1
    bl      __EXIProbe
    b       regver
notipl:
    li      r3, 0x0
    li      r4, 0x0
    addi    r5, r1, 0x8
    bl      EXIGetID
    cmpwi   r3, 0x0
    beq     try2nd
    lwz     r3, 0x8(r1)
    subis   r0, r3, 0x701
    cmplwi  r0, 0x0
    bne     try2nd
    li      r3, 0x1
    li      r4, 0x0
    bl      __OSEnableBarnacle
    b       regver
try2nd:
    li      r3, 0x1
    li      r4, 0x0
    addi    r5, r1, 0x8
    bl      EXIGetID
    cmpwi   r3, 0x0
    beq     regver
    lwz     r3, 0x8(r1)
    subis   r0, r3, 0x701
    cmplwi  r0, 0x0
    bne     regver
    li      r3, 0x0
    li      r4, 0x2
    bl      __OSEnableBarnacle
regver:
    lwz     r3, __EXIVersion
    bl      OSRegisterVersion
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    lwz     r28, 0x10(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//8015EDE0
ASM BOOL EXILock(register s32 chan, register u32 dev, register EXICallback unlockedCallback)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stmw    r27, 0x1c(r1)
    addi    r27, chan, 0x0
    addi    r31, dev, 0x0
    addi    r28, unlockedCallback, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r30, r0, r4
    bl      OSDisableInterrupts
    mr      r29, r3
    lwz     r0, 0xc(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq     dolock
    cmplwi  r28, 0x0
    beq     restore0
    mr      r3, r30
    lwz     r4, 0x24(r30)
    mtctr   r4
    cmpwi   r4, 0x0
    ble     addqueue
loopcheck:
    lwz     r0, 0x28(r3)
    cmplw   r0, r31
    bne     loopnext
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
loopnext:
    addi    r3, r3, 0x8
    bdnz    loopcheck
addqueue:
    slwi    r0, r4, 3
    add     r3, r30, r0
    stw     r28, 0x2c(r3)
    lwz     r0, 0x24(r30)
    slwi    r0, r0, 3
    add     r3, r30, r0
    stw     r31, 0x28(r3)
    lwz     r3, 0x24(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x24(r30)
restore0:
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
dolock:
    lwz     r0, 0xc(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xc(r30)
    stw     r31, 0x18(r30)
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      SetExiInterruptMask
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x1
done:
    lwz     r0, 0x34(r1)
    lmw     r27, 0x1c(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}

//8015EED4
ASM BOOL EXIUnlock(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    stw     r28, 0x10(r1)
    addi    r28, chan, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bl      OSDisableInterrupts
    mr      r30, r3
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne     dounlock
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
dounlock:
    lwz     r0, 0xc(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xc(r31)
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    bl      SetExiInterruptMask
    lwz     r3, 0x24(r31)
    cmpwi   r3, 0x0
    ble     restoreret1
    lwz     r29, 0x2c(r31)
    subic.  r0, r3, 0x1
    stw     r0, 0x24(r31)
    ble     docallback
    addi    r3, r31, 0x28
    addi    r4, r31, 0x30
    lwz     r0, 0x24(r31)
    slwi    r5, r0, 3
    bl      memmove
docallback:
    addi    r3, r28, 0x0
    li      r4, 0x0
    addi    r12, r29, 0x0
    mtlr    r12
    blrl
restoreret1:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
done:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    lwz     r28, 0x10(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
