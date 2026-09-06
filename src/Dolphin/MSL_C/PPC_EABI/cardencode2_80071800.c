#include "types.h"

extern void* lbl_8053A760;
extern void fn_800711D4(void);

//80071800
ASM void fn_80071800(register s32 a, register s32 b, register s32 c)
{
    nofralloc
    mflr    r0
    cmpwi   r3, 0x19
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    stw     r30, 0x20(r1)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(r1)
    addi    r29, r4, 0x0
    bne     L_80071830
    li      r31, 0x1
    b       L_80071834
L_80071830:
    subi    r31, r3, 0x9
L_80071834:
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071850
    bl      fn_800711D4
L_80071850:
    lwz     r4, lbl_8053A760
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071884
    bl      fn_800711D4
L_80071884:
    lwz     r4, lbl_8053A760
    addi    r5, r31, 0xa0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble     L_800718B8
    bl      fn_800711D4
L_800718B8:
    lwz     r4, lbl_8053A760
    addis   r8, r29, 0x8000
    srwi    r7, r8, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r8, 8, 8
    extrwi  r5, r8, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071934
    bl      fn_800711D4
L_80071934:
    lwz     r4, lbl_8053A760
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071968
    bl      fn_800711D4
L_80071968:
    lwz     r4, lbl_8053A760
    addi    r5, r31, 0xb0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble     L_8007199C
    bl      fn_800711D4
L_8007199C:
    lwz     r4, lbl_8053A760
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr

}

//80071A0C
ASM void fn_80071A0C(register s32 a, register s32 b, register s32 c)
{
    nofralloc
    mflr    r0
    cmpwi   r3, 0x19
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    stw     r30, 0x20(r1)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(r1)
    addi    r29, r4, 0x0
    bne     L_80071A3C
    li      r31, 0x1
    b       L_80071A40
L_80071A3C:
    subi    r31, r3, 0x9
L_80071A40:
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071A5C
    bl      fn_800711D4
L_80071A5C:
    lwz     r4, lbl_8053A760
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071A90
    bl      fn_800711D4
L_80071A90:
    lwz     r4, lbl_8053A760
    addi    r5, r31, 0xa0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble     L_80071AC4
    bl      fn_800711D4
L_80071AC4:
    lwz     r4, lbl_8053A760
    srwi    r7, r29, 24
    extrwi  r6, r29, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r5, r29, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071B3C
    bl      fn_800711D4
L_80071B3C:
    lwz     r4, lbl_8053A760
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble     L_80071B70
    bl      fn_800711D4
L_80071B70:
    lwz     r4, lbl_8053A760
    addi    r5, r31, 0xb0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble     L_80071BA4
    bl      fn_800711D4
L_80071BA4:
    lwz     r4, lbl_8053A760
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr

}
