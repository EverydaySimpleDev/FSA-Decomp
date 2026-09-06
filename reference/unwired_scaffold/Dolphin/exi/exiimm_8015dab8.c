#include "types.h"
#include "Dolphin/exi.h"

extern EXIControl Ecb[EXI_MAX_CHAN];

//8015DAB8
ASM BOOL EXIImm(register s32 chan, register void* buf, register s32 len, register u32 type, register EXICallback callback)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x40(r1)
    stmw    r25, 0x24(r1)
    addi    r26, chan, 0x0
    addi    r27, buf, 0x0
    addi    r28, len, 0x0
    addi    r29, type, 0x0
    addi    r25, callback, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    bl      OSDisableInterrupts
    mr      r30, r3
    lwz     r0, 0xc(r31)
    clrlwi. r0, r0, 30
    bne     restoreret0
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne     havecb
restoreret0:
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
havecb:
    stw     r25, 0x4(r31)
    lwz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    beq     setimm
    addi    r3, r26, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    bl      EXIClearInterrupts
    lis     r3, 0x20
    mulli   r0, r26, 0x3
    srw     r3, r3, r0
    bl      __OSUnmaskInterrupts
setimm:
    lwz     r0, 0xc(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xc(r31)
    cmplwi  r29, 0x0
    beq     setbuf
    li      r0, 0x0
    li      r4, 0x0
    cmpw    r4, r28
    bge     writereg
    subi    r6, r28, 0x8
    cmpwi   r28, 0x8
    ble     tail_prep
    addi    r3, r27, 0x0
    addi    r5, r6, 0x7
    srwi    r5, r5, 3
    mtctr   r5
    cmpwi   r6, 0x0
    ble     tail_prep
unroll8:
    lbz     r6, 0x0(r3)
    subfic  r5, r4, 0x3
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    lbz     r6, 0x1(r3)
    addi    r5, r4, 0x1
    subfic  r5, r5, 0x3
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    lbz     r6, 0x2(r3)
    addi    r5, r4, 0x2
    subfic  r5, r5, 0x3
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    lbz     r6, 0x3(r3)
    neg     r5, r4
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    lbz     r6, 0x4(r3)
    addi    r5, r4, 0x4
    subfic  r5, r5, 0x3
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    lbz     r6, 0x5(r3)
    addi    r5, r4, 0x5
    subfic  r5, r5, 0x3
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    lbz     r6, 0x6(r3)
    addi    r5, r4, 0x6
    subfic  r5, r5, 0x3
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    lbz     r6, 0x7(r3)
    addi    r5, r4, 0x7
    subfic  r5, r5, 0x3
    slwi    r5, r5, 3
    slw     r5, r6, r5
    or      r0, r0, r5
    addi    r3, r3, 0x8
    addi    r4, r4, 0x8
    bdnz    unroll8
    b       tail_prep
tail_setup:
    subf    r3, r4, r28
    mtctr   r3
    cmpw    r4, r28
    bge     writereg
tail_loop:
    lbz     r5, 0x0(r6)
    subfic  r3, r4, 0x3
    slwi    r3, r3, 3
    slw     r3, r5, r3
    or      r0, r0, r3
    addi    r6, r6, 0x1
    addi    r4, r4, 0x1
    bdnz    tail_loop
writereg:
    lis     r3, 0xcc00
    addi    r4, r3, 0x6800
    mulli   r3, r26, 0x14
    add     r3, r4, r3
    stw     r0, 0x10(r3)
setbuf:
    stw     r27, 0x14(r31)
    cmplwi  r29, 0x1
    beq     immlen0
    mr      r0, r28
    b       storeimmlen
immlen0:
    li      r0, 0x0
storeimmlen:
    stw     r0, 0x10(r31)
    slwi    r0, r29, 2
    ori     r3, r0, 0x1
    subi    r0, r28, 0x1
    slwi    r0, r0, 4
    or      r4, r3, r0
    lis     r3, 0xcc00
    addi    r3, r3, 0x6800
    mulli   r0, r26, 0x14
    add     r3, r3, r0
    stw     r4, 0xc(r3)
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       done
tail_prep:
    add     r6, r27, r4
    b       tail_setup
done:
    lwz     r0, 0x44(r1)
    lmw     r25, 0x24(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr
}

//8015DD14
ASM BOOL EXIImmEx(register s32 chan, register void* buf, register s32 len, register u32 mode)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stmw    r27, 0x1c(r1)
    addi    r27, chan, 0x0
    addi    r28, buf, 0x0
    addi    r29, len, 0x0
    addi    r30, mode, 0x0
    b       loopcheck
loop:
    cmpwi   r29, 0x4
    bge     clampto4
    mr      r31, r29
    b       docall
clampto4:
    li      r31, 0x4
docall:
    addi    r5, r31, 0x0
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x0
    bl      EXIImm
    cmpwi   r3, 0x0
    bne     dosync
    li      r3, 0x0
    b       done
dosync:
    mr      r3, r27
    bl      EXISync
    cmpwi   r3, 0x0
    bne     advance
    li      r3, 0x0
    b       done
advance:
    add     r28, r28, r31
    subf    r29, r31, r29
loopcheck:
    cmpwi   r29, 0x0
    bne     loop
    li      r3, 0x1
done:
    lwz     r0, 0x34(r1)
    lmw     r27, 0x1c(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}

//8015DDB4
ASM BOOL EXIDma(register s32 chan, register void* buf, register s32 len, register u32 type, register EXICallback callback)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x40(r1)
    stmw    r25, 0x24(r1)
    addi    r27, chan, 0x0
    addi    r28, buf, 0x0
    addi    r29, len, 0x0
    addi    r30, type, 0x0
    addi    r25, callback, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r26, r0, r4
    bl      OSDisableInterrupts
    mr      r31, r3
    lwz     r0, 0xc(r26)
    clrlwi. r0, r0, 30
    bne     restoreret0
    lwz     r0, 0xc(r26)
    rlwinm. r0, r0, 0, 29, 29
    bne     havecb
restoreret0:
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       done
havecb:
    stw     r25, 0x4(r26)
    lwz     r0, 0x4(r26)
    cmplwi  r0, 0x0
    beq     setdma
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    bl      EXIClearInterrupts
    lis     r3, 0x20
    mulli   r0, r27, 0x3
    srw     r3, r3, r0
    bl      __OSUnmaskInterrupts
setdma:
    lwz     r0, 0xc(r26)
    ori     r0, r0, 0x1
    stw     r0, 0xc(r26)
    rlwinm  r4, r28, 0, 6, 26
    lis     r3, 0xcc00
    addi    r0, r3, 0x6800
    mulli   r3, r27, 0x14
    add     r3, r0, r3
    stw     r4, 0x4(r3)
    stw     r29, 0x8(r3)
    slwi    r0, r30, 2
    ori     r0, r0, 0x3
    stw     r0, 0xc(r3)
    mr      r3, r31
    bl      OSRestoreInterrupts
    li      r3, 0x1
done:
    lwz     r0, 0x44(r1)
    lmw     r25, 0x24(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr
}
