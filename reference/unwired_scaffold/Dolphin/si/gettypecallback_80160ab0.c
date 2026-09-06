#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"
#include "Dolphin/OS/OSSerial.h"

extern SIControl Si;
extern u32 Type[SI_MAX_CHAN];
extern OSTime TypeTime[SI_MAX_CHAN];
extern SIPacket Packet[SI_MAX_CHAN];
extern u32 __PADFixBits;
extern BOOL SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback, OSTime delay);
extern SITypeAndStatusCallback TypeCallback[SI_MAX_CHAN][4];

//80160AB0
ASM void GetTypeCallback(register s32 chan, register u32 error, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stmw    r26, 0x18(r1)
    addi    r27, chan, 0x0
    lis     r3, Type@ha
    addi    r0, r3, Type@l
    slwi    r29, r27, 2
    add     r30, r0, r29
    lis     r3, Packet@ha
    addi    r26, error, 0x0
    addi    r31, r3, Packet@l
    lwz     r0, 0x0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0x0(r30)
    lwz     r0, 0x0(r30)
    or      r0, r0, r26
    stw     r0, 0x0(r30)
    bl      __OSGetSystemTime
    slwi    r0, r27, 3
    add     r5, r31, r0
    stw     r4, 0x124(r5)
    lis     r4, 0x8000
    clrlwi. r0, r26, 28
    stw     r3, 0x120(r5)
    srw     r4, r4, r27
    lwz     r3, __PADFixBits
    lwz     r28, 0x0(r30)
    andc    r0, r3, r4
    stw     r0, __PADFixBits
    and     r26, r3, r4
    bne     earlyreturn
    rlwinm  r3, r28, 0, 3, 4
    subis   r0, r3, 0x800
    cmplwi  r0, 0x0
    bne     earlyreturn
    clrrwi. r0, r28, 31
    beq     earlyreturn
    rlwinm. r0, r28, 0, 5, 5
    beq     wirelessgood
earlyreturn:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      OSSetWirelessID
    slwi    r0, r27, 4
    lwz     r30, 0x0(r30)
    add     r31, r31, r0
    li      r29, 0x0
    addi    r28, r29, 0x0
    addi    r31, r31, 0x160
callbackloop1:
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    beq     callbackloop1_next
    stw     r28, 0x0(r31)
    mtlr    r12
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    blrl
callbackloop1_next:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r31, r31, 0x4
    blt     callbackloop1
    b       done
wirelessgood:
    mr      r3, r27
    bl      OSGetWirelessID
    cmpwi   r26, 0x0
    clrlslwi r26, r3, 16, 8
    beq     checkreceived
    rlwinm. r0, r26, 0, 11, 11
    beq     checkreceived
    lis     r3, 0xd0
    subi    r0, r3, 0x100
    and     r0, r26, r0
    oris    r0, r0, 0x4e10
    add     r4, r31, r29
    stwu    r0, 0x1f0(r4)
    li      r0, 0x80
    lis     r3, GetTypeCallback@ha
    stw     r0, 0x0(r30)
    addi    r8, r3, GetTypeCallback@l
    addi    r3, r27, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x3
    li      r7, 0x3
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       done
checkreceived:
    rlwinm. r0, r28, 0, 11, 11
    beq     notfixid
    lis     r3, 0xd0
    subi    r3, r3, 0x100
    and     r0, r26, r3
    and     r3, r28, r3
    cmplw   r0, r3
    beq     dispatch
    rlwinm. r0, r26, 0, 11, 11
    bne     skipsetid1
    oris    r26, r3, 0x10
    addi    r3, r27, 0x0
    extrwi  r4, r26, 16, 8
    bl      OSSetWirelessID
skipsetid1:
    oris    r0, r26, 0x4e00
    add     r4, r31, r29
    stwu    r0, 0x1f0(r4)
    li      r0, 0x80
    lis     r3, GetTypeCallback@ha
    stw     r0, 0x0(r30)
    addi    r8, r3, GetTypeCallback@l
    addi    r3, r27, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x3
    li      r7, 0x3
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       done
notfixid:
    rlwinm. r0, r28, 0, 1, 1
    beq     idle
    lis     r3, 0xd0
    subi    r0, r3, 0x100
    and     r28, r28, r0
    oris    r28, r28, 0x10
    addi    r3, r27, 0x0
    extrwi  r4, r28, 16, 8
    bl      OSSetWirelessID
    oris    r0, r28, 0x4e00
    add     r4, r31, r29
    stwu    r0, 0x1f0(r4)
    li      r0, 0x80
    lis     r3, GetTypeCallback@ha
    stw     r0, 0x0(r30)
    addi    r8, r3, GetTypeCallback@l
    addi    r3, r27, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x3
    li      r7, 0x3
    li      r10, 0x0
    li      r9, 0x0
    bl      SITransfer
    b       done
idle:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      OSSetWirelessID
dispatch:
    slwi    r0, r27, 4
    lwz     r30, 0x0(r30)
    add     r31, r31, r0
    li      r29, 0x0
    addi    r28, r29, 0x0
    addi    r31, r31, 0x160
callbackloop2:
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    beq     callbackloop2_next
    stw     r28, 0x0(r31)
    mtlr    r12
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    blrl
callbackloop2_next:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r31, r31, 0x4
    blt     callbackloop2
done:
    lmw     r26, 0x18(r1)
    lwz     r0, 0x34(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}

//80160D48
ASM u32 SIGetType(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stmw    r27, 0x14(r1)
    mr      r27, chan
    bl      OSDisableInterrupts
    lis     r4, Type@ha
    slwi    r5, r27, 2
    addi    r0, r4, Type@l
    add     r30, r0, r5
    lwz     r28, 0x0(r30)
    mr      r29, r3
    bl      __OSGetSystemTime
    lis     r5, TypeTime@ha
    slwi    r6, r27, 3
    addi    r0, r5, TypeTime@l
    add     r31, r0, r6
    lwz     r6, 0x4(r31)
    lis     r5, Si@ha
    addi    r5, r5, Si@l
    lwz     r0, 0x0(r31)
    subfc   r4, r6, r4
    subfe   r0, r0, r3
    lwz     r6, 0x4(r5)
    li      r5, 0x80
    sraw    r3, r5, r27
    and.    r3, r6, r3
    beq     checkdiffs
    cmplwi  r28, 0x8
    beq     forcebusy_poll
    bl      __OSGetSystemTime
    stw     r4, 0x4(r31)
    stw     r3, 0x0(r31)
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r28
    b       done
forcebusy_poll:
    stw     r5, 0x0(r30)
    li      r28, 0x80
    b       dotransfer
checkdiffs:
    lis     r3, 0x8000
    lwz     r6, 0xf8(r3)
    lis     r5, 0x1062
    addi    r5, r5, 0x4dd3
    srwi    r6, r6, 2
    mulhwu  r5, r5, r6
    srwi    r5, r5, 6
    mulli   r7, r5, 0x32
    li      r3, 0x0
    xoris   r6, r3, 0x8000
    xoris   r5, r0, 0x8000
    subfc   r3, r4, r7
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    bne     check75
    cmplwi  r28, 0x8
    beq     check75
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r28
    b       done
check75:
    lis     r3, 0x8000
    lwz     r6, 0xf8(r3)
    lis     r5, 0x1062
    addi    r5, r5, 0x4dd3
    srwi    r6, r6, 2
    mulhwu  r5, r5, r6
    srwi    r5, r5, 6
    mulli   r6, r5, 0x4b
    li      r3, 0x0
    xoris   r5, r3, 0x8000
    xoris   r3, r0, 0x8000
    subfc   r0, r4, r6
    subfe   r3, r3, r5
    subfe   r3, r5, r5
    neg.    r3, r3
    bne     forcebusy_notype
    li      r0, 0x80
    stw     r0, 0x0(r30)
    b       dotransfer
forcebusy_notype:
    li      r0, 0x80
    stw     r0, 0x0(r30)
    li      r28, 0x80
dotransfer:
    bl      __OSGetSystemTime
    stw     r4, 0x4(r31)
    lis     r4, 0x431c
    lis     r5, GetTypeCallback@ha
    stw     r3, 0x0(r31)
    lis     r3, 0x8000
    addi    r8, r5, GetTypeCallback@l
    lwz     r0, 0xf8(r3)
    subi    r4, r4, 0x217d
    addi    r3, r27, 0x0
    srwi    r0, r0, 2
    mulhwu  r0, r4, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0x41
    srwi    r10, r0, 3
    addi    r6, r30, 0x0
    // FIXED, real bug: opword had RA=r0 instead of RA=r13 (near-null pointer
    // instead of an SDA21 address). Recomputed for this build's current
    // addresses -- see project memory.
    opword  0x388D955C
    li      r5, 0x1
    li      r7, 0x3
    li      r9, 0x0
    bl      SITransfer
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r28
done:
    lmw     r27, 0x14(r1)
    lwz     r0, 0x2c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//80160F0C
ASM u32 SIGetTypeAsync(register s32 chan, register SITypeAndStatusCallback callback)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    addi    r31, callback, 0x0
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    stw     r28, 0x10(r1)
    addi    r28, chan, 0x0
    bl      OSDisableInterrupts
    addi    r30, r3, 0x0
    addi    r3, r28, 0x0
    bl      SIGetType
    lis     r4, Type@ha
    slwi    r5, r28, 2
    addi    r0, r4, Type@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    addi    r29, r3, 0x0
    rlwinm. r0, r0, 0, 24, 24
    beq     directcall
    lis     r3, TypeCallback@ha
    slwi    r4, r28, 4
    addi    r0, r3, TypeCallback@l
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    li      r5, 0x0
    cmplw   r0, r31
    beq     restore
    cmplwi  r0, 0x0
    bne     check1
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       restore
check1:
    addi    r3, r4, 0x4
    lwz     r0, 0x4(r4)
    li      r5, 0x1
    cmplw   r0, r31
    beq     restore
    cmplwi  r0, 0x0
    bne     check2
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       restore
check2:
    lwzu    r0, 0x4(r3)
    li      r5, 0x2
    cmplw   r0, r31
    beq     restore
    cmplwi  r0, 0x0
    bne     check3
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       restore
check3:
    lwz     r0, 0x4(r3)
    li      r5, 0x3
    cmplw   r0, r31
    beq     restore
    cmplwi  r0, 0x0
    bne     restore
    slwi    r0, r5, 2
    stwx    r31, r4, r0
    b       restore
    b       restore
directcall:
    addi    r12, r31, 0x0
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    blrl
restore:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    lwz     r28, 0x10(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
