#include "types.h"
#include "Dolphin/exi.h"

extern EXIControl Ecb[EXI_MAX_CHAN];

//8015E85C
ASM void EXIIntrruptHandler(register __OSInterrupt interrupt, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x2f8(r1)
    stw     r31, 0x2f4(r1)
    stw     r30, 0x2f0(r1)
    stw     r29, 0x2ec(r1)
    addi    r31, context, 0x0
    extsh   r3, interrupt
    subi    r0, r3, 0x9
    lis     r3, 0x5555
    addi    r3, r3, 0x5556
    mulhw   r3, r3, r0
    srwi    r0, r3, 31
    add     r30, r3, r0
    mulli   r0, r30, 0x14
    lis     r3, 0xcc00
    addi    r3, r3, 0x6800
    add     r3, r3, r0
    lwz     r0, 0x0(r3)
    andi.   r0, r0, 0x7f5
    ori     r0, r0, 0x2
    stw     r0, 0x0(r3)
    slwi    r4, r30, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r3, r0, r4
    lwz     r0, 0x0(r3)
    mr      r29, r0
    cmplwi  r0, 0x0
    beq     done
    addi    r3, r1, 0x18
    bl      OSClearContext
    addi    r3, r1, 0x18
    bl      OSSetCurrentContext
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r12, r29, 0x0
    mtlr    r12
    blrl
    addi    r3, r1, 0x18
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
done:
    lwz     r0, 0x2fc(r1)
    lwz     r31, 0x2f4(r1)
    lwz     r30, 0x2f0(r1)
    lwz     r29, 0x2ec(r1)
    addi    r1, r1, 0x2f8
    mtlr    r0
    blr
}

//8015E924
ASM void TCIntrruptHandler(register __OSInterrupt interrupt, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x2f8(r1)
    stw     r31, 0x2f4(r1)
    stw     r30, 0x2f0(r1)
    stw     r29, 0x2ec(r1)
    stw     r28, 0x2e8(r1)
    addi    r28, context, 0x0
    extsh   r5, interrupt
    subi    r0, r5, 0xa
    lis     r3, 0x5555
    addi    r3, r3, 0x5556
    mulhw   r3, r3, r0
    srwi    r0, r3, 31
    add     r30, r3, r0
    slwi    r4, r30, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r31, r0, r4
    lis     r0, 0x8000
    srw     r3, r0, r5
    bl      __OSMaskInterrupts
    mulli   r7, r30, 0x14
    lis     r6, 0xcc00
    addi    r3, r6, 0x6800
    add     r3, r3, r7
    lwz     r0, 0x0(r3)
    andi.   r0, r0, 0x7f5
    ori     r0, r0, 0x8
    stw     r0, 0x0(r3)
    lwz     r0, 0x4(r31)
    mr      r29, r0
    cmplwi  r0, 0x0
    beq     done
    li      r4, 0x0
    stw     r4, 0x4(r31)
    lwz     r0, 0xc(r31)
    clrlwi. r0, r0, 30
    beq     callback
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq     clearstate
    lwz     r3, 0x10(r31)
    cmpwi   r3, 0x0
    beq     clearstate
    lwz     r5, 0x14(r31)
    addi    r0, r6, 0x6800
    add     r6, r0, r7
    lwz     r0, 0x10(r6)
    ble     clearstate
    subi    r7, r3, 0x8
    cmpwi   r3, 0x8
    ble     tailsetup
    addi    r6, r7, 0x7
    srwi    r6, r6, 3
    mtctr   r6
    cmpwi   r7, 0x0
    ble     tailsetup
unroll8:
    subfic  r6, r4, 0x3
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x0(r5)
    addi    r6, r4, 0x1
    subfic  r6, r6, 0x3
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x1(r5)
    addi    r6, r4, 0x2
    subfic  r6, r6, 0x3
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x2(r5)
    neg     r6, r4
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x3(r5)
    addi    r6, r4, 0x4
    subfic  r6, r6, 0x3
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x4(r5)
    addi    r6, r4, 0x5
    subfic  r6, r6, 0x3
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x5(r5)
    addi    r6, r4, 0x6
    subfic  r6, r6, 0x3
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x6(r5)
    addi    r6, r4, 0x7
    subfic  r6, r6, 0x3
    slwi    r6, r6, 3
    srw     r6, r0, r6
    stb     r6, 0x7(r5)
    addi    r5, r5, 0x8
    addi    r4, r4, 0x8
    bdnz    unroll8
tailsetup:
    subf    r6, r4, r3
    mtctr   r6
    cmpw    r4, r3
    bge     clearstate
tailloop:
    subfic  r3, r4, 0x3
    slwi    r3, r3, 3
    srw     r3, r0, r3
    stb     r3, 0x0(r5)
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    bdnz    tailloop
clearstate:
    lwz     r0, 0xc(r31)
    clrrwi  r0, r0, 2
    stw     r0, 0xc(r31)
callback:
    addi    r3, r1, 0x20
    bl      OSClearContext
    addi    r3, r1, 0x20
    bl      OSSetCurrentContext
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    addi    r12, r29, 0x0
    mtlr    r12
    blrl
    addi    r3, r1, 0x20
    bl      OSClearContext
    mr      r3, r28
    bl      OSSetCurrentContext
done:
    lwz     r0, 0x2fc(r1)
    lwz     r31, 0x2f4(r1)
    lwz     r30, 0x2f0(r1)
    lwz     r29, 0x2ec(r1)
    lwz     r28, 0x2e8(r1)
    addi    r1, r1, 0x2f8
    mtlr    r0
    blr
}

//8015EB3C
ASM void EXTIntrruptHandler(register __OSInterrupt interrupt, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x2e8(r1)
    stw     r31, 0x2e4(r1)
    stw     r30, 0x2e0(r1)
    stw     r29, 0x2dc(r1)
    stw     r28, 0x2d8(r1)
    addi    r31, context, 0x0
    extsh   r3, interrupt
    subi    r0, r3, 0xb
    lis     r3, 0x5555
    addi    r3, r3, 0x5556
    mulhw   r3, r3, r0
    srwi    r0, r3, 31
    add     r30, r3, r0
    lis     r3, 0x50
    mulli   r0, r30, 0x3
    srw     r3, r3, r0
    bl      __OSMaskInterrupts
    slwi    r4, r30, 6
    lis     r3, Ecb@ha
    addi    r0, r3, Ecb@l
    add     r29, r0, r4
    lwz     r28, 0x8(r29)
    lwz     r0, 0xc(r29)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xc(r29)
    cmplwi  r28, 0x0
    beq     done
    addi    r3, r1, 0x10
    bl      OSClearContext
    addi    r3, r1, 0x10
    bl      OSSetCurrentContext
    li      r0, 0x0
    stw     r0, 0x8(r29)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r12, r28, 0x0
    mtlr    r12
    blrl
    addi    r3, r1, 0x10
    bl      OSClearContext
    mr      r3, r31
    bl      OSSetCurrentContext
done:
    lwz     r0, 0x2ec(r1)
    lwz     r31, 0x2e4(r1)
    lwz     r30, 0x2e0(r1)
    lwz     r29, 0x2dc(r1)
    lwz     r28, 0x2d8(r1)
    addi    r1, r1, 0x2e8
    mtlr    r0
    blr
}
