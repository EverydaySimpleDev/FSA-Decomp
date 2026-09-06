#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"
#include "Dolphin/vi.h"

extern SIControl Si;
extern SIPacket Packet[SI_MAX_CHAN];
extern OSAlarm Alarm[SI_MAX_CHAN];
extern __OSInterruptHandler RDSTHandler[4];
extern u32 CompleteTransfer(void);
extern BOOL SIIsChanBusy(s32 chan);
extern BOOL SIGetResponseRaw(s32 chan);
extern BOOL SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback, OSTime delay);
extern void GetTypeCallback(s32 chan, u32 error, OSContext* context);
extern BOOL __SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback);
extern u32 VIGetCurrentLine(void);
u32 cmdTypeAndStatus;

//8015FCB0
ASM void SIInterruptHandler(register __OSInterrupt interrupt, register OSContext* context)
{
    nofralloc
    mflr    r0
    lis     r5, 0xcc00
    stw     r0, 0x4(r1)
    lis     r7, Packet@ha
    lis     r6, Si@ha
    stwu    r1, -0x48(r1)
    stmw    r21, 0x1c(r1)
    addi    r30, interrupt, 0x0
    addi    r31, context, 0x0
    addi    r28, r7, Packet@l
    addi    r29, r6, Si@l
    lwz     r24, 0x6434(r5)
    clrrwi  r5, r24, 30
    addis   r0, r5, 0x4000
    cmplwi  r0, 0x0
    bne     checkpoll
    lwz     r23, 0x44(r29)
    bl      CompleteTransfer
    lwz     r21, 0x54(r29)
    li      r27, 0x0
    addi    r22, r3, 0x0
    stw     r27, 0x54(r29)
    addi    r26, r23, 0x0
loop_ntchan:
    addi    r26, r26, 0x1
    srawi   r0, r26, 2
    addze   r0, r0
    slwi    r0, r0, 2
    subfc   r0, r0, r26
    mr      r26, r0
    slwi    r0, r0, 5
    add     r25, r28, r0
    lwz     r0, 0x0(r25)
    cmpwi   r0, -0x1
    beq     loop_ntchan_next
    bl      __OSGetSystemTime
    lwz     r0, 0x18(r25)
    xoris   r5, r3, 0x8000
    lwz     r6, 0x1c(r25)
    xoris   r3, r0, 0x8000
    subfc   r0, r6, r4
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg.    r3, r3
    bne     loop_ntchan_next
    lwz     r3, 0x0(r25)
    lwz     r4, 0x4(r25)
    lwz     r5, 0x8(r25)
    lwz     r6, 0xc(r25)
    lwz     r7, 0x10(r25)
    lwz     r8, 0x14(r25)
    bl      __SITransfer
    cmpwi   r3, 0x0
    beq     packetdone
    mulli   r0, r26, 0x28
    add     r3, r28, r0
    addi    r3, r3, 0x80
    bl      OSCancelAlarm
    li      r0, -0x1
    stw     r0, 0x0(r25)
    b       packetdone
loop_ntchan_next:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x4
    blt     loop_ntchan
packetdone:
    cmplwi  r21, 0x0
    beq     nocallback
    addi    r12, r21, 0x0
    mtlr    r12
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    addi    r5, r31, 0x0
    blrl
nocallback:
    lis     r3, 0xcc00
    addi    r4, r3, 0x6400
    lwz     r5, 0x6438(r3)
    slwi    r0, r23, 3
    lis     r3, 0xf00
    sraw    r0, r3, r0
    and     r5, r5, r0
    slwi    r0, r23, 2
    stw     r5, 0x38(r4)
    add     r6, r29, r0
    lwzu    r0, 0x58(r6)
    cmplwi  r0, 0x80
    bne     checkpoll
    slwi    r0, r23, 5
    lwzx    r0, r28, r0
    li      r3, 0x1
    cmpwi   r0, -0x1
    bne     skipbusycheck
    lwz     r0, 0x44(r29)
    cmpw    r0, r23
    beq     skipbusycheck
    li      r3, 0x0
skipbusycheck:
    cmpwi   r3, 0x0
    bne     checkpoll
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    lis     r3, 0x431c
    lis     r4, GetTypeCallback@ha
    srwi    r0, r0, 2
    subi    r3, r3, 0x217d
    mulhwu  r0, r3, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0x41
    addi    r8, r4, GetTypeCallback@l
    srwi    r10, r0, 3
    addi    r3, r23, 0x0
    // FIXED, real bug: opword had RA=r0 instead of RA=r13 (near-null pointer
    // instead of an SDA21 address), silently corrupting the controller-status
    // buffer. Recomputed for this build's current addresses -- see project
    // memory.
    opword  0x388D9558
    li      r5, 0x1
    li      r7, 0x3
    li      r9, 0x0
    bl      SITransfer
checkpoll:
    rlwinm  r3, r24, 0, 3, 4
    subis   r0, r3, 0x1800
    cmplwi  r0, 0x0
    bne     done
    bl      VIGetCurrentLine
    lwz     r0, 0x48(r29)
    addi    r23, r28, 0x1e0
    addi    r24, r29, 0x48
    addi    r22, r23, 0x0
    addi    r21, r3, 0x1
    extrwi  r26, r0, 10, 6
    li      r25, 0x0
respfor:
    mr      r3, r25
    bl      SIGetResponseRaw
    cmpwi   r3, 0x0
    beq     respfor_next
    stw     r21, 0x0(r22)
respfor_next:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x4
    addi    r22, r22, 0x4
    blt     respfor
    lwz     r5, 0x0(r24)
    lis     r3, 0x8000
    li      r0, 0x18
    srw     r0, r3, r0
    and.    r0, r5, r0
    srwi    r6, r26, 1
    beq     check1
    lwz     r0, 0x0(r23)
    cmplwi  r0, 0x0
    beq     done
    lwz     r0, 0x0(r23)
    add     r0, r6, r0
    cmplw   r0, r21
    bge     check1
    b       done
check1:
    li      r0, 0x19
    srw     r0, r3, r0
    and.    r0, r5, r0
    addi    r4, r23, 0x4
    beq     check2
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq     done
    lwz     r0, 0x0(r4)
    add     r0, r6, r0
    cmplw   r0, r21
    bge     check2
    b       done
check2:
    li      r0, 0x1a
    srw     r0, r3, r0
    and.    r0, r5, r0
    addi    r4, r4, 0x4
    beq     check3
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq     done
    lwz     r0, 0x0(r4)
    add     r0, r6, r0
    cmplw   r0, r21
    bge     check3
    b       done
check3:
    li      r0, 0x1b
    srw     r0, r3, r0
    and.    r0, r5, r0
    addi    r4, r4, 0x4
    beq     resetzero
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq     done
    lwz     r0, 0x0(r4)
    add     r0, r6, r0
    cmplw   r0, r21
    bge     resetzero
    b       done
resetzero:
    li      r22, 0x0
    stw     r22, 0x0(r23)
    addi    r21, r28, 0x1a0
    stw     r22, 0x1e4(r28)
    stw     r22, 0x1e8(r28)
    stw     r22, 0x1ec(r28)
rdstloop:
    lwz     r12, 0x0(r21)
    cmplwi  r12, 0x0
    beq     rdstloop_next
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    blrl
rdstloop_next:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x4
    addi    r21, r21, 0x4
    blt     rdstloop
done:
    lmw     r21, 0x1c(r1)
    lwz     r0, 0x4c(r1)
    addi    r1, r1, 0x48
    mtlr    r0
    blr
}
