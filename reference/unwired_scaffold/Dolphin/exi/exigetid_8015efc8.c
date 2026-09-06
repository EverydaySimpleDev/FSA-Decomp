#include "types.h"
#include "Dolphin/exi.h"

extern EXIControl Ecb[EXI_MAX_CHAN];
extern u32 IDSerialPort1;
extern BOOL __EXIProbe(s32 chan);
extern s32 __EXIProbeStartTime[2];
extern void SetExiInterruptMask(s32 chan, EXIControl* exi);
extern void* memmove(void* dst, const void* src, u32 n);

//8015EFC8
ASM static void UnlockedHandler(register s32 chan, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    li      r4, 0x0
    addi    r5, r1, 0x10
    bl      EXIGetID
    lwz     r0, 0x1c(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//8015EFF0
ASM s32 EXIGetID(register s32 chan, register u32 dev, register u32* id)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x48(r1)
    stmw    r23, 0x24(r1)
    mr.     r25, chan
    addi    r26, dev, 0x0
    addi    r27, id, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bne     notserial
    cmplwi  r26, 0x2
    bne     notserial
    lwz     r0, IDSerialPort1
    cmplwi  r0, 0x0
    beq     notserial
    stw     r0, 0x0(r27)
    li      r3, 0x1
    b       done
notserial:
    cmpwi   r25, 0x2
    bge     afterprobe
    cmplwi  r26, 0x0
    bne     afterprobe
    mr      r3, r25
    bl      __EXIProbe
    cmpwi   r3, 0x0
    bne     probeok
    li      r3, 0x0
    b       done
probeok:
    lwz     r4, 0x20(r31)
    slwi    r0, r25, 2
    lis     r3, 0x8000
    addi    r30, r3, 0x30c0
    add     r30, r30, r0
    lwz     r0, 0x0(r30)
    cmpw    r4, r0
    bne     doattach
    lwz     r0, 0x1c(r31)
    stw     r0, 0x0(r27)
    lwz     r3, 0x20(r31)
    b       done
doattach:
    bl      OSDisableInterrupts
    mr      r28, r3
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne     attachskipprobe
    mr      r3, r25
    bl      __EXIProbe
    cmpwi   r3, 0x0
    bne     attachdo
attachskipprobe:
    mr      r3, r28
    bl      OSRestoreInterrupts
    li      r0, 0x0
    b       attachresultcheck
attachdo:
    addi    r3, r25, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    bl      EXIClearInterrupts
    li      r0, 0x0
    stw     r0, 0x8(r31)
    lis     r3, 0x10
    mulli   r0, r25, 0x3
    srw     r3, r3, r0
    bl      __OSUnmaskInterrupts
    lwz     r0, 0xc(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xc(r31)
    mr      r3, r28
    bl      OSRestoreInterrupts
    li      r0, 0x1
attachresultcheck:
    cmpwi   r0, 0x0
    bne     haveattach
    li      r3, 0x0
    b       done
haveattach:
    lwz     r29, 0x0(r30)
afterprobe:
    bl      OSDisableInterrupts
    addi    r28, r3, 0x0
    li      r0, 0x0
    cmpwi   r25, 0x2
    bge     havecallbackflag
    cmplwi  r26, 0x0
    bne     havecallbackflag
    li      r0, 0x1
havecallbackflag:
    cmpwi   r0, 0x0
    beq     nocallback
    lis     r3, UnlockedHandler@ha
    addi    r5, r3, UnlockedHandler@l
    b       docalllock
nocallback:
    li      r5, 0x0
docalllock:
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    bl      EXILock
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr.     r30, r0
    bne     restoreouter
    addi    r3, r25, 0x0
    addi    r4, r26, 0x0
    li      r5, 0x0
    bl      EXISelect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr.     r30, r0
    bne     unlockphase
    li      r0, 0x0
    stw     r0, 0x1c(r1)
    addi    r3, r25, 0x0
    addi    r4, r1, 0x1c
    li      r5, 0x2
    li      r6, 0x1
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r30, r30, r0
    addi    r3, r25, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r30, r30, r0
    addi    r3, r25, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0x0
    bl      EXIImm
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r30, r30, r0
    addi    r3, r25, 0x0
    bl      EXISync
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r30, r30, r0
    addi    r3, r25, 0x0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r30, r30, r0
unlockphase:
    bl      OSDisableInterrupts
    mr      r23, r3
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne     dounlock
    mr      r3, r23
    bl      OSRestoreInterrupts
    b       restoreouter
dounlock:
    lwz     r0, 0xc(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xc(r31)
    addi    r3, r25, 0x0
    addi    r4, r31, 0x0
    bl      SetExiInterruptMask
    lwz     r3, 0x24(r31)
    cmpwi   r3, 0x0
    ble     restoreunlockret
    lwz     r24, 0x2c(r31)
    subic.  r0, r3, 0x1
    stw     r0, 0x24(r31)
    ble     invokeunlockcb
    addi    r3, r31, 0x28
    addi    r4, r31, 0x30
    lwz     r0, 0x24(r31)
    slwi    r5, r0, 3
    bl      memmove
invokeunlockcb:
    addi    r3, r25, 0x0
    li      r4, 0x0
    addi    r12, r24, 0x0
    mtlr    r12
    blrl
restoreunlockret:
    mr      r3, r23
    bl      OSRestoreInterrupts
restoreouter:
    mr      r3, r28
    bl      OSRestoreInterrupts
    cmpwi   r25, 0x2
    bge     skipdetach
    cmplwi  r26, 0x0
    bne     skipdetach
    bl      OSDisableInterrupts
    mr      r23, r3
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne     checklockdetach
    mr      r3, r23
    bl      OSRestoreInterrupts
    b       afterdetach
checklockdetach:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq     dodetach
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne     dodetach
    mr      r3, r23
    bl      OSRestoreInterrupts
    b       afterdetach
dodetach:
    lwz     r0, 0xc(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xc(r31)
    lis     r3, 0x50
    mulli   r0, r25, 0x3
    srw     r3, r3, r0
    bl      __OSMaskInterrupts
    mr      r3, r23
    bl      OSRestoreInterrupts
afterdetach:
    bl      OSDisableInterrupts
    slwi    r0, r25, 2
    lis     r4, 0x8000
    addi    r4, r4, 0x30c0
    lwzx    r0, r4, r0
    subf    r4, r29, r0
    subic   r0, r4, 0x1
    subfe   r0, r0, r4
    or.     r30, r30, r0
    bne     skipsavedata
    lwz     r0, 0x0(r27)
    stw     r0, 0x1c(r31)
    stw     r29, 0x20(r31)
skipsavedata:
    bl      OSRestoreInterrupts
    cmpwi   r30, 0x0
    beq     rettime
    li      r3, 0x0
    b       done
rettime:
    lwz     r3, 0x20(r31)
    b       done
skipdetach:
    cmpwi   r30, 0x0
    beq     rettrue
    li      r3, 0x0
    b       done
rettrue:
    li      r3, 0x1
done:
    lwz     r0, 0x4c(r1)
    lmw     r23, 0x24(r1)
    addi    r1, r1, 0x48
    mtlr    r0
    blr
}
