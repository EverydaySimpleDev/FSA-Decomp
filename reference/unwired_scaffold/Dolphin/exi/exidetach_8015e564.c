#include "types.h"
#include "Dolphin/exi.h"

extern EXIControl Ecb[EXI_MAX_CHAN];
extern BOOL __EXIProbe(s32 chan);

//8015E564
ASM BOOL EXIDetach(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    addi    r29, chan, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bl      OSDisableInterrupts
    mr      r30, r3
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne     locked_check
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
locked_check:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq     doclear
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    bne     doclear
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
doclear:
    lwz     r0, 0xc(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xc(r31)
    lis     r3, 0x50
    mulli   r0, r29, 0x3
    srw     r3, r3, r0
    bl      __OSMaskInterrupts
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
done:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//8015E620
ASM BOOL EXISelect(register s32 chan, register u32 dev, register u32 freq)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stmw    r27, 0x1c(r1)
    addi    r27, chan, 0x0
    addi    r28, dev, 0x0
    addi    r29, freq, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bl      OSDisableInterrupts
    mr      r30, r3
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne     fail
    cmpwi   r27, 0x2
    beq     doselect
    cmplwi  r28, 0x0
    bne     checklocked
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne     checklocked
    mr      r3, r27
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq     fail
checklocked:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq     fail
    lwz     r0, 0x18(r31)
    cmplw   r0, r28
    beq     doselect
fail:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
doselect:
    lwz     r0, 0xc(r31)
    ori     r0, r0, 0x4
    stw     r0, 0xc(r31)
    mulli   r0, r27, 0x14
    lis     r3, 0xcc00
    addi    r4, r3, 0x6800
    add     r4, r4, r0
    lwz     r5, 0x0(r4)
    andi.   r5, r5, 0x405
    li      r0, 0x1
    slw     r0, r0, r28
    slwi    r3, r0, 7
    slwi    r0, r29, 4
    or      r0, r3, r0
    or      r5, r5, r0
    stw     r5, 0x0(r4)
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq     skipint
    cmpwi   r27, 0x1
    beq     case1
    bge     skipint
    cmpwi   r27, 0x0
    bge     case0
    b       skipint
case0:
    lis     r3, 0x10
    bl      __OSMaskInterrupts
    b       skipint
case1:
    lis     r3, 0x2
    bl      __OSMaskInterrupts
skipint:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
done:
    lwz     r0, 0x34(r1)
    lmw     r27, 0x1c(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}

//8015E74C
ASM BOOL EXIDeselect(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    stw     r28, 0x10(r1)
    addi    r31, chan, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r30, r0, r4
    bl      OSDisableInterrupts
    mr      r28, r3
    lwz     r0, 0xc(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne     clearsel
    mr      r3, r28
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
clearsel:
    lwz     r0, 0xc(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xc(r30)
    mulli   r0, r31, 0x14
    lis     r3, 0xcc00
    addi    r3, r3, 0x6800
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    andi.   r0, r29, 0x405
    stw     r0, 0x0(r3)
    lwz     r0, 0xc(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq     skip2
    cmpwi   r31, 0x1
    beq     case1
    bge     skip2
    cmpwi   r31, 0x0
    bge     case0
    b       skip2
case0:
    lis     r3, 0x10
    bl      __OSUnmaskInterrupts
    b       skip2
case1:
    lis     r3, 0x2
    bl      __OSUnmaskInterrupts
skip2:
    mr      r3, r28
    bl      OSRestoreInterrupts
    cmpwi   r31, 0x2
    beq     rettrue
    rlwinm. r0, r29, 0, 24, 24
    beq     rettrue
    mr      r3, r31
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq     retfalse
    li      r3, 0x1
    b       done
retfalse:
    li      r3, 0x0
    b       done
rettrue:
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
