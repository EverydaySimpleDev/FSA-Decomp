#include "types.h"

extern f32 lbl_8049A7F8;


ASM void fn_800C262C(void);

ASM void fn_800C262C(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    lis r3, lbl_8049A7F8@ha
    stmw r16, 0x10(r1)
    addi r16, r3, lbl_8049A7F8@l
    addi r20, r16, 0x48
    addi r5, r16, 0xa8
    lwz r17, 0x0(r16)
    lwz r18, 0x4(r16)
    lwz r19, 0x8(r16)
    lwz r21, 0xc(r16)
    lwz r22, 0x10(r16)
    lwz r23, 0x14(r16)
    lwz r24, 0x18(r16)
    lwz r25, 0x1c(r16)
    lwz r26, 0x20(r16)
    lwz r27, 0x24(r16)
    lwz r28, 0x28(r16)
    lwz r29, 0x2c(r16)
    lwz r30, 0x30(r16)
    lwz r31, 0x34(r16)
    lwz r12, 0x38(r16)
    lwz r11, 0x3c(r16)
    lwz r10, 0x40(r16)
    lwz r9, 0x44(r16)
    lwz r8, 0x90(r16)
    lwz r7, 0x94(r16)
    lwz r6, 0x98(r16)
    lwz r4, 0x9c(r16)
    lwz r3, 0xa0(r16)
    lwz r0, 0xa4(r16)
    stw r17, 0x48(r16)
    stw r18, 0x4c(r16)
    stw r19, 0x50(r16)
    stw r21, 0xc(r20)
    stw r22, 0x10(r20)
    stw r23, 0x14(r20)
    stw r24, 0x18(r20)
    stw r25, 0x1c(r20)
    stw r26, 0x20(r20)
    stw r27, 0x24(r20)
    stw r28, 0x28(r20)
    stw r29, 0x2c(r20)
    stw r30, 0x30(r20)
    stw r31, 0x34(r20)
    stw r12, 0x38(r20)
    stw r11, 0x3c(r20)
    stw r10, 0x40(r20)
    stw r9, 0x44(r20)
    stw r8, 0xa8(r16)
    stw r7, 0xac(r16)
    stw r6, 0xb0(r16)
    stw r4, 0xc(r5)
    stw r3, 0x10(r5)
    stw r0, 0x14(r5)
    lmw r16, 0x10(r1)
    addi r1, r1, 0x50
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_800C262C = (void*)fn_800C262C;

