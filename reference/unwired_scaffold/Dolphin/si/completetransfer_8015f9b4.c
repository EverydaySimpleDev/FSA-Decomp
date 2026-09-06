#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"

extern SIControl Si;
extern u32 Type[SI_MAX_CHAN];
extern OSTime TypeTime[SI_MAX_CHAN];
extern OSTime XferTime[SI_MAX_CHAN];

//8015F9B4
ASM u32 CompleteTransfer(void)
{
    nofralloc
    mflr    r0
    lis     r3, 0xcc00
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    addi    r30, r3, 0x6400
    stw     r29, 0x14(r1)
    addi    r29, r30, 0x34
    stw     r28, 0x10(r1)
    lwz     r0, 0x6434(r3)
    lwz     r28, 0x6438(r3)
    lis     r3, Si@ha
    oris    r0, r0, 0x8000
    clrrwi  r0, r0, 1
    stw     r0, 0x34(r30)
    addi    r31, r3, Si@l
    lwz     r0, 0x44(r31)
    cmpwi   r0, -0x1
    beq     epilogue
    bl      __OSGetSystemTime
    lwz     r6, 0x44(r31)
    lis     r5, XferTime@ha
    addi    r0, r5, XferTime@l
    slwi    r5, r6, 3
    add     r5, r0, r5
    stw     r4, 0x4(r5)
    addi    r6, r31, 0x4c
    li      r4, 0x0
    stw     r3, 0x0(r5)
    lwz     r0, 0x4c(r31)
    lwz     r5, 0x50(r31)
    srwi    r7, r0, 2
    cmplwi  r7, 0x0
    ble     copytail_setup
    cmplwi  r7, 0x8
    subi    r3, r7, 0x8
    ble     dowrap
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmplwi  r3, 0x0
    mtctr   r0
    ble     dowrap
unroll8:
    lwz     r0, 0x80(r30)
    addi    r4, r4, 0x8
    stw     r0, 0x0(r5)
    lwz     r0, 0x84(r30)
    stw     r0, 0x4(r5)
    lwz     r0, 0x88(r30)
    stw     r0, 0x8(r5)
    lwz     r0, 0x8c(r30)
    stw     r0, 0xc(r5)
    lwz     r0, 0x90(r30)
    stw     r0, 0x10(r5)
    lwz     r0, 0x94(r30)
    stw     r0, 0x14(r5)
    lwz     r0, 0x98(r30)
    stw     r0, 0x18(r5)
    lwz     r0, 0x9c(r30)
    addi    r30, r30, 0x20
    stw     r0, 0x1c(r5)
    addi    r5, r5, 0x20
    bdnz    unroll8
    b       dowrap
tailloop2_setup:
    subf    r0, r4, r7
    cmplw   r4, r7
    mtctr   r0
    bge     copytail_setup
tailloop2:
    lwz     r0, 0x80(r3)
    addi    r3, r3, 0x4
    addi    r4, r4, 0x1
    stw     r0, 0x0(r5)
    addi    r5, r5, 0x4
    bdnz    tailloop2
copytail_setup:
    lwz     r0, 0x0(r6)
    clrlwi. r3, r0, 30
    beq     ccheck
    lis     r6, 0xcc00
    addi    r6, r6, 0x6400
    slwi    r0, r4, 2
    add     r4, r6, r0
    lwz     r6, 0x80(r4)
    li      r4, 0x0
    ble     ccheck
    cmplwi  r3, 0x8
    subi    r7, r3, 0x8
    ble     tailloop1_setup
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmplwi  r7, 0x0
    mtctr   r0
    ble     tailloop1_setup
tailunroll8:
    subfic  r0, r4, 0x3
    slwi    r7, r0, 3
    addi    r0, r4, 0x1
    srw     r7, r6, r7
    subfic  r0, r0, 0x3
    stb     r7, 0x0(r5)
    slwi    r0, r0, 3
    addi    r7, r4, 0x2
    srw     r0, r6, r0
    subfic  r7, r7, 0x3
    stb     r0, 0x1(r5)
    slwi    r7, r7, 3
    srw     r12, r6, r7
    neg     r7, r4
    stb     r12, 0x2(r5)
    slwi    r8, r7, 3
    addi    r7, r4, 0x4
    srw     r11, r6, r8
    subfic  r7, r7, 0x3
    stb     r11, 0x3(r5)
    slwi    r8, r7, 3
    addi    r7, r4, 0x5
    srw     r10, r6, r8
    subfic  r7, r7, 0x3
    stb     r10, 0x4(r5)
    slwi    r8, r7, 3
    srw     r9, r6, r8
    addi    r7, r4, 0x6
    stb     r9, 0x5(r5)
    subfic  r8, r7, 0x3
    addi    r7, r4, 0x7
    slwi    r8, r8, 3
    srw     r8, r6, r8
    subfic  r7, r7, 0x3
    stb     r8, 0x6(r5)
    slwi    r7, r7, 3
    srw     r7, r6, r7
    stb     r7, 0x7(r5)
    addi    r5, r5, 0x8
    addi    r4, r4, 0x8
    bdnz    tailunroll8
tailloop1_setup:
    subf    r0, r4, r3
    cmplw   r4, r3
    mtctr   r0
    bge     ccheck
tailloop1:
    subfic  r0, r4, 0x3
    slwi    r0, r0, 3
    srw     r0, r6, r0
    stb     r0, 0x0(r5)
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    bdnz    tailloop1
ccheck:
    lwz     r0, 0x0(r29)
    rlwinm. r0, r0, 0, 2, 2
    beq     checktime
    lwz     r3, 0x44(r31)
    subfic  r0, r3, 0x3
    slwi    r0, r0, 3
    srw     r28, r28, r0
    clrlwi  r28, r28, 28
    rlwinm. r0, r28, 0, 28, 28
    beq     checkzero
    slwi    r0, r3, 2
    add     r3, r31, r0
    lwzu    r0, 0x58(r3)
    rlwinm. r0, r0, 0, 24, 24
    bne     checkzero
    li      r0, 0x8
    stw     r0, 0x0(r3)
checkzero:
    cmplwi  r28, 0x0
    bne     storeidle
    li      r28, 0x4
    b       storeidle
checktime:
    bl      __OSGetSystemTime
    lwz     r6, 0x44(r31)
    lis     r5, TypeTime@ha
    addi    r0, r5, TypeTime@l
    slwi    r5, r6, 3
    add     r5, r0, r5
    stw     r4, 0x4(r5)
    li      r28, 0x0
    stw     r3, 0x0(r5)
storeidle:
    li      r0, -0x1
    stw     r0, 0x44(r31)
epilogue:
    mr      r3, r28
    b       done
dowrap:
    lis     r3, 0xcc00
    slwi    r0, r4, 2
    addi    r3, r3, 0x6400
    add     r3, r3, r0
    b       tailloop2_setup
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
