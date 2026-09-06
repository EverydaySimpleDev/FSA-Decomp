#include "types.h"
#include "Dolphin/exi.h"

extern EXIControl Ecb[EXI_MAX_CHAN];
extern void SetExiInterruptMask(s32 chan, EXIControl* exi);
extern s32 __div2i(OSTime time, s32 unused, s32 divisor);

//8015E0EC
ASM int EXIClearInterrupts(register s32 chan, register BOOL exiBit, register BOOL tcBit, register BOOL extBit)
{
    nofralloc
    mulli   r0, chan, 0x14
    lis     r3, 0xcc00
    addi    r7, r3, 0x6800
    add     r7, r7, r0
    lwz     r0, 0x0(r7)
    mr      r3, r0
    andi.   r0, r0, 0x7f5
    cmpwi   exiBit, 0x0
    beq     skipexi
    ori     r0, r0, 0x2
skipexi:
    cmpwi   tcBit, 0x0
    beq     skiptc
    ori     r0, r0, 0x8
skiptc:
    cmpwi   extBit, 0x0
    beq     skipext
    ori     r0, r0, 0x800
skipext:
    stw     r0, 0x0(r7)
    blr
}

//8015E134
ASM EXICallback EXISetExiCallback(register s32 chan, register EXICallback exiCallback)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stmw    r26, 0x10(r1)
    addi    r26, chan, 0x0
    addi    r27, exiCallback, 0x0
    slwi    r0, chan, 6
    lis     r3, Ecb@ha
    addi    r31, r3, Ecb@l
    add     r30, r31, r0
    bl      OSDisableInterrupts
    mr      r28, r3
    lwz     r29, 0x0(r30)
    stw     r27, 0x0(r30)
    cmpwi   r26, 0x2
    beq     chan2
    addi    r3, r26, 0x0
    addi    r4, r30, 0x0
    bl      SetExiInterruptMask
    b       restore
chan2:
    li      r3, 0x0
    addi    r4, r31, 0x0
    bl      SetExiInterruptMask
restore:
    mr      r3, r28
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x2c(r1)
    lmw     r26, 0x10(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//8015E1B0
ASM BOOL __EXIProbe(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stmw    r27, 0x14(r1)
    addi    r28, chan, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    cmpwi   r28, 0x2
    bne     notchan2
    li      r3, 0x1
    b       done
notchan2:
    li      r29, 0x1
    bl      OSDisableInterrupts
    addi    r30, r3, 0x0
    mulli   r0, r28, 0x14
    lis     r3, 0xcc00
    addi    r3, r3, 0x6800
    add     r3, r3, r0
    lwz     r5, 0x0(r3)
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne     attached
    rlwinm. r0, r5, 0, 20, 20
    beq     check1000
    lwz     r0, 0x0(r3)
    andi.   r0, r0, 0x7f5
    ori     r0, r0, 0x800
    stw     r0, 0x0(r3)
    li      r4, 0x0
    stw     r4, 0x20(r31)
    slwi    r0, r28, 2
    lis     r3, 0x8000
    addi    r3, r3, 0x30c0
    stwx    r4, r3, r0
check1000:
    rlwinm. r0, r5, 0, 19, 19
    beq     notatt_clear
    lis     r31, 0x8000
    lwz     r0, 0xf8(r31)
    srwi    r0, r0, 2
    lis     r3, 0x1062
    addi    r3, r3, 0x4dd3
    mulhwu  r0, r3, r0
    srwi    r27, r0, 6
    bl      OSGetTime
    li      r5, 0x0
    addi    r6, r27, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x64
    bl      __div2i
    addi    r4, r4, 0x1
    slwi    r0, r28, 2
    addi    r3, r31, 0x30c0
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    bne     havestart
    stw     r4, 0x0(r3)
havestart:
    lwz     r0, 0x0(r3)
    subf    r0, r0, r4
    cmpwi   r0, 0x3
    bge     end
    li      r29, 0x0
    b       end
notatt_clear:
    li      r4, 0x0
    stw     r4, 0x20(r31)
    slwi    r0, r28, 2
    lis     r3, 0x8000
    addi    r3, r3, 0x30c0
    stwx    r4, r3, r0
    li      r29, 0x0
    b       end
attached:
    rlwinm. r0, r5, 0, 19, 19
    beq     forceclear
    rlwinm. r0, r5, 0, 20, 20
    beq     end
forceclear:
    li      r4, 0x0
    stw     r4, 0x20(r31)
    slwi    r0, r28, 2
    lis     r3, 0x8000
    addi    r3, r3, 0x30c0
    stwx    r4, r3, r0
    li      r29, 0x0
end:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
done:
    lwz     r0, 0x2c(r1)
    lmw     r27, 0x14(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//8015E324
ASM BOOL EXIProbe(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    addi    r30, chan, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    addi    r3, r30, 0x0
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq     done
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bne     done
    addi    r3, r30, 0x0
    li      r4, 0x0
    addi    r5, r1, 0xc
    bl      EXIGetID
    cmpwi   r3, 0x0
    beq     retfalse
    li      r3, 0x1
    b       done
retfalse:
    li      r3, 0x0
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//8015E3A4
ASM s32 EXIProbeEx(register s32 chan)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    addi    r30, chan, 0x0
    slwi    r4, chan, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    addi    r3, r30, 0x0
    bl      __EXIProbe
    cmpwi   r3, 0x0
    beq     probedone
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bne     probedone
    addi    r3, r30, 0x0
    li      r4, 0x0
    addi    r5, r1, 0xc
    bl      EXIGetID
    cmpwi   r3, 0x0
    beq     probefalse
    li      r3, 0x1
    b       probedone
probefalse:
    li      r3, 0x0
probedone:
    cmpwi   r3, 0x0
    beq     checkstarttime
    li      r3, 0x1
    b       done
checkstarttime:
    slwi    r0, r30, 2
    lis     r3, 0x8000
    addi    r3, r3, 0x30c0
    lwzx    r0, r3, r0
    cmpwi   r0, 0x0
    beq     retneg1
    li      r3, 0x0
    b       done
retneg1:
    li      r3, -0x1
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
