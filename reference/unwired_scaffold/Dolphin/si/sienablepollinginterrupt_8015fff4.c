#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"

extern SIPacket Packet[SI_MAX_CHAN];
extern __OSInterruptHandler RDSTHandler[4];

//8015FFF4
ASM BOOL SIEnablePollingInterrupt(register BOOL doEnable)
{
    nofralloc
    mflr    r0
    lis     r4, Packet@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stw     r31, 0x2c(r1)
    addi    r31, r4, Packet@l
    stw     r30, 0x28(r1)
    stw     r29, 0x24(r1)
    addi    r29, doEnable, 0x0
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    lwzu    r5, 0x6434(r4)
    rlwinm. r0, r5, 0, 4, 4
    beq     ratefalse
    li      r30, 0x1
    b       checkenable
ratefalse:
    li      r30, 0x0
checkenable:
    cmpwi   r29, 0x0
    beq     elsebranch
    li      r0, 0x0
    stw     r0, 0x1e0(r31)
    oris    r5, r5, 0x800
    stw     r0, 0x1e4(r31)
    stw     r0, 0x1e8(r31)
    stw     r0, 0x1ec(r31)
    b       maskclear
elsebranch:
    rlwinm  r5, r5, 0, 5, 3
maskclear:
    rlwinm  r5, r5, 0, 1, 30
    stw     r5, 0x0(r4)
    bl      OSRestoreInterrupts
    mr      r3, r30
    lwz     r0, 0x34(r1)
    lwz     r31, 0x2c(r1)
    lwz     r30, 0x28(r1)
    lwz     r29, 0x24(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}

//8016008C
ASM BOOL SIRegisterPollingHandler(register __OSInterruptHandler handler)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, handler
    bl      OSDisableInterrupts
    lis     r4, RDSTHandler@ha
    li      r0, 0x4
    addi    r4, r4, RDSTHandler@l
    mtctr   r0
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
loop1:
    lwz     r0, 0x0(r3)
    cmplw   r0, r30
    bne     loop1next
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
loop1next:
    addi    r3, r3, 0x4
    bdnz    loop1
    li      r0, 0x4
    mtctr   r0
    li      r5, 0x0
loop2:
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne     loop2next
    lis     r3, RDSTHandler@ha
    slwi    r4, r5, 2
    addi    r0, r3, RDSTHandler@l
    add     r3, r0, r4
    stw     r30, 0x0(r3)
    li      r3, 0x1
    bl      SIEnablePollingInterrupt
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
loop2next:
    addi    r4, r4, 0x4
    addi    r5, r5, 0x1
    bdnz    loop2
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80160158
ASM BOOL SIUnregisterPollingHandler(register __OSInterruptHandler handler)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, handler
    bl      OSDisableInterrupts
    lis     r4, RDSTHandler@ha
    li      r0, 0x4
    addi    r5, r4, RDSTHandler@l
    mtctr   r0
    addi    r31, r3, 0x0
    addi    r3, r5, 0x0
    li      r4, 0x0
loop:
    lwz     r0, 0x0(r3)
    cmplw   r0, r30
    bne     loopnext
    lis     r3, RDSTHandler@ha
    slwi    r4, r4, 2
    addi    r0, r3, RDSTHandler@l
    add     r3, r0, r4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    li      r4, 0x0
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    bne     countdone
    addi    r3, r5, 0x4
    lwz     r0, 0x4(r5)
    li      r4, 0x1
    cmplwi  r0, 0x0
    bne     countdone
    lwzu    r0, 0x4(r3)
    li      r4, 0x2
    cmplwi  r0, 0x0
    bne     countdone
    lwz     r0, 0x4(r3)
    li      r4, 0x3
    cmplwi  r0, 0x0
    bne     countdone
    li      r4, 0x4
countdone:
    cmpwi   r4, 0x4
    bne     skipclear
    li      r3, 0x0
    bl      SIEnablePollingInterrupt
skipclear:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
loopnext:
    addi    r3, r3, 0x4
    addi    r4, r4, 0x1
    bdnz    loop
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
