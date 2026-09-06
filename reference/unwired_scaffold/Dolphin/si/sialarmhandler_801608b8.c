#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"

extern SIControl Si;
extern SIPacket Packet[SI_MAX_CHAN];
extern OSAlarm Alarm[SI_MAX_CHAN];
extern OSTime XferTime[SI_MAX_CHAN];
extern BOOL __SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback);

//801608B8
ASM static void SIAlarmHandler(register OSAlarm* alarm, register OSContext* context)
{
    nofralloc
    mflr    r0
    lis     r4, Alarm@ha
    stw     r0, 0x4(r1)
    addi    r0, r4, Alarm@l
    lis     r4, 0x6666
    subf    r0, r0, alarm
    stwu    r1, -0x20(r1)
    addi    r3, r4, 0x6667
    mulhw   r0, r3, r0
    stw     r31, 0x1c(r1)
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    lis     r3, Packet@ha
    slwi    r4, r0, 5
    addi    r0, r3, Packet@l
    add     r31, r0, r4
    lwz     r3, 0x0(r31)
    cmpwi   r3, -0x1
    beq     done
    lwz     r4, 0x4(r31)
    lwz     r5, 0x8(r31)
    lwz     r6, 0xc(r31)
    lwz     r7, 0x10(r31)
    lwz     r8, 0x14(r31)
    bl      __SITransfer
    cmpwi   r3, 0x0
    beq     done
    li      r0, -0x1
    stw     r0, 0x0(r31)
done:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//80160944
ASM BOOL SITransfer(register s32 chan, register void* output, register u32 outputBytes, register void* input,
                     register u32 inputBytes, register SICallback callback, register OSTime delay)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x60(r1)
    stmw    r19, 0x2c(r1)
    addi    r24, chan, 0x0
    lis     r3, Packet@ha
    addi    r23, r3, Packet@l
    slwi    r0, r24, 5
    addi    r25, output, 0x0
    addi    r26, outputBytes, 0x0
    addi    r27, input, 0x0
    addi    r28, inputBytes, 0x0
    addi    r29, callback, 0x0
    addi    r31, r9, 0x0
    addi    r30, r10, 0x0
    add     r22, r23, r0
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r22)
    addi    r21, r3, 0x0
    cmpwi   r0, -0x1
    bne     notbusy
    lis     r3, Si@ha
    lwz     r0, Si@l(r3)
    cmpw    r0, r24
    bne     dodelay
notbusy:
    mr      r3, r21
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
dodelay:
    bl      __OSGetSystemTime
    li      r0, 0x0
    xor     r5, r30, r0
    xor     r0, r31, r0
    or.     r0, r5, r0
    bne     usexfertime
    addi    r19, r4, 0x0
    addi    r20, r3, 0x0
    b       cmpfire
usexfertime:
    slwi    r0, r24, 3
    add     r6, r23, r0
    lwz     r5, 0x144(r6)
    lwz     r0, 0x140(r6)
    addc    r19, r30, r5
    adde    r20, r31, r0
cmpfire:
    xoris   r6, r3, 0x8000
    xoris   r5, r20, 0x8000
    subfc   r0, r19, r4
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq     dositransfer
    mulli   r0, r24, 0x28
    subfc   r30, r4, r19
    subfe   r31, r3, r20
    lis     r4, SIAlarmHandler@ha
    add     r3, r23, r0
    addi    r7, r4, SIAlarmHandler@l
    addi    r6, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x80
    bl      OSSetAlarm
    b       storepacket
dositransfer:
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    addi    r8, r29, 0x0
    bl      __SITransfer
    cmpwi   r3, 0x0
    beq     storepacket
    mr      r3, r21
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
storepacket:
    stw     r24, 0x0(r22)
    mr      r3, r21
    stw     r25, 0x4(r22)
    stw     r26, 0x8(r22)
    stw     r27, 0xc(r22)
    stw     r28, 0x10(r22)
    stw     r29, 0x14(r22)
    stw     r19, 0x1c(r22)
    stw     r20, 0x18(r22)
    bl      OSRestoreInterrupts
    li      r3, 0x1
done:
    lmw     r19, 0x2c(r1)
    lwz     r0, 0x64(r1)
    addi    r1, r1, 0x60
    mtlr    r0
    blr
}
