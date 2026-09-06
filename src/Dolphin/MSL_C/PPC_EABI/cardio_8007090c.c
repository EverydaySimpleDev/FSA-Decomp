#include "types.h"
#include "Dolphin/os.h"

extern u32 lbl_8053A748;
extern u32 lbl_8053A74C;
extern u32 lbl_8053A750;
extern u32 lbl_8053A754;
extern u8 lbl_8053A75C;
extern u32 lbl_8053A758;
extern s32 fn_80070E00(register void* a, register s32 b, register s32 c);

extern void fn_80070A74(register s16 a);
extern void fn_80070AB4(void);
extern s32 fn_80070AF0(register void* a);
extern s32 fn_80070D54(register void* a);

//8007090C
ASM s32 fn_8007090C(void)
{
    nofralloc
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    lwz     r0, lbl_8053A754
    stb     r3, lbl_8053A75C
    cmpwi   r0, 0x0
    bne     L_80070990
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    addi    r3, r1, 0x8
    bl      fn_80070AF0
    lwz     r0, 0x8(r1)
    clrlwi. r0, r0, 31
    beq     L_80070988
    addi    r3, r1, 0x8
    bl      fn_80070D54
    lwz     r0, 0x8(r1)
    clrlwi  r0, r0, 3
    stw     r0, 0x8(r1)
    lwz     r4, 0x8(r1)
    rlwinm  r3, r4, 0, 3, 7
    subis   r0, r3, 0x1f00
    cmplwi  r0, 0x0
    bne     L_80070988
    clrlwi  r3, r4, 17
    stw     r4, lbl_8053A750
    li      r0, 0x1
    stw     r3, lbl_8053A754
    stb     r0, lbl_8053A75C
L_80070988:
    mr      r3, r31
    bl      OSRestoreInterrupts
L_80070990:
    lwz     r3, lbl_8053A754
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr

}

//800709A8
ASM void fn_800709A8(void)
{
    nofralloc
    mflr    r0
    lis     r3, 0x2
    stw     r0, 0x4(r1)
    addi    r3, r3, -0x8000
    stwu    r1, -0x8(r1)
    bl      __OSMaskInterrupts
    li      r3, 0x40
    bl      __OSMaskInterrupts
    lis     r3, fn_80070AB4@ha
    addi    r0, r3, fn_80070AB4@l
    lis     r3, fn_80070A74@ha
    stw     r0, lbl_8053A74C
    addi    r4, r3, fn_80070A74@l
    li      r3, 0x19
    bl      __OSSetInterruptHandler
    li      r3, 0x40
    bl      __OSUnmaskInterrupts
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

extern void fn_800709FC(register void* a, register void* b);

//800709FC
ASM void fn_800709FC(register void* a, register void* b)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    addi    r30, r4, 0x0
    stw     r29, 0x14(r1)
    addi    r29, r3, 0x0
    bl      OSDisableInterrupts
    opword  0x380D8B9C
    stw     r0, lbl_8053A758
    lis     r4, 0x2
    addi    r31, r3, 0x0
    lwz     r0, lbl_8053A758
    addi    r3, r4, -0x8000
    stw     r0, 0x0(r29)
    stw     r30, lbl_8053A748
    bl      __OSMaskInterrupts
    lis     r3, 0xcc00
    li      r0, 0x0
    stw     r0, 0x6828(r3)
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr

}

//80070A74
ASM void fn_80070A74(register s16 a)
{
    nofralloc
    mflr    r0
    lis     r5, 0xcc00
    stw     r0, 0x4(r1)
    li      r0, 0x1000
    stwu    r1, -0x8(r1)
    lwz     r12, lbl_8053A74C
    stw     r0, 0x3000(r5)
    cmplwi  r12, 0x0
    beq     L_80070AA4
    mtlr    r12
    extsh   r3, r3
    blrl
L_80070AA4:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr

}

//80070AB4
ASM void fn_80070AB4(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    li      r0, 0x1
    stwu    r1, -0x8(r1)
    lwz     r12, lbl_8053A748
    stb     r0, lbl_8053A75C
    cmplwi  r12, 0x0
    beq     L_80070AE0
    mtlr    r12
    li      r3, 0x0
    blrl
L_80070AE0:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr

}

//80070AF0
ASM s32 fn_80070AF0(register void* a)
{
    nofralloc
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(r1)
    lis     r0, 0x4000
    stwu    r1, -0x38(r1)
    stmw    r27, 0x24(r1)
    lis     r30, 0xcc00
    addi    r27, r3, 0x0
    addi    r29, r30, 0x6800
    addi    r3, r1, 0x18
    lwz     r5, 0x6828(r30)
    andi.   r5, r5, 0x405
    ori     r5, r5, 0xc0
    stwu    r5, 0x28(r29)
    li      r5, 0x1
    stw     r0, 0x18(r1)
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r31, r0, 5
L_80070B3C:
    addi    r28, r30, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne     L_80070B3C
    addi    r3, r27, 0x0
    li      r4, 0x4
    li      r5, 0x0
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r3, r31, r0
L_80070B68:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne     L_80070B68
    lwz     r4, 0x0(r29)
    cntlzw  r0, r3
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r29)
    lmw     r27, 0x24(r1)
    lwz     r0, 0x3c(r1)
    addi    r1, r1, 0x38
    mtlr    r0
    blr

}

//80070B9C
ASM s32 fn_80070B9C(register s32 a, register void* b, register s32 c)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    rlwinm  r0, r3, 8, 7, 21
    oris    r0, r0, 0xa000
    stwu    r1, -0x40(r1)
    stmw    r26, 0x28(r1)
    lis     r29, 0xcc00
    addi    r30, r5, 0x0
    addi    r26, r4, 0x0
    addi    r31, r29, 0x6800
    addi    r3, r1, 0x24
    li      r4, 0x4
    li      r5, 0x1
    lwz     r6, 0x6828(r29)
    andi.   r6, r6, 0x405
    ori     r6, r6, 0xc0
    stwu    r6, 0x28(r31)
    stw     r0, 0x24(r1)
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr      r27, r0
L_80070BF4:
    addi    r28, r29, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne     L_80070BF4
    b       L_80070C48
L_80070C08:
    lwz     r0, 0x0(r26)
    addi    r3, r1, 0x20
    li      r4, 0x4
    stw     r0, 0x20(r1)
    li      r5, 0x1
    addi    r26, r26, 0x4
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r27, r27, r0
L_80070C30:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne     L_80070C30
    subic.  r30, r30, 0x4
    bge     L_80070C48
    li      r30, 0x0
L_80070C48:
    cmpwi   r30, 0x0
    bne     L_80070C08
    lwz     r4, 0x0(r31)
    cntlzw  r0, r27
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r31)
    lmw     r26, 0x28(r1)
    lwz     r0, 0x44(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr

}

//80070C78
ASM s32 fn_80070C78(register s32 a, register void* b, register s32 c)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    rlwinm  r0, r3, 8, 7, 21
    oris    r0, r0, 0x2000
    stwu    r1, -0x40(r1)
    stmw    r26, 0x28(r1)
    lis     r29, 0xcc00
    addi    r30, r5, 0x0
    addi    r26, r4, 0x0
    addi    r31, r29, 0x6800
    addi    r3, r1, 0x24
    li      r4, 0x4
    li      r5, 0x1
    lwz     r6, 0x6828(r29)
    andi.   r6, r6, 0x405
    ori     r6, r6, 0xc0
    stwu    r6, 0x28(r31)
    stw     r0, 0x24(r1)
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r0, r0, 5
    mr      r27, r0
L_80070CD0:
    addi    r28, r29, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne     L_80070CD0
    b       L_80070D24
L_80070CE4:
    addi    r3, r1, 0x20
    li      r4, 0x4
    li      r5, 0x0
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r27, r27, r0
L_80070D00:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne     L_80070D00
    lwz     r0, 0x20(r1)
    subic.  r30, r30, 0x4
    stw     r0, 0x0(r26)
    addi    r26, r26, 0x4
    bge     L_80070D24
    li      r30, 0x0
L_80070D24:
    cmpwi   r30, 0x0
    bne     L_80070CE4
    lwz     r4, 0x0(r31)
    cntlzw  r0, r27
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r31)
    lmw     r26, 0x28(r1)
    lwz     r0, 0x44(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr

}

//80070D54
ASM s32 fn_80070D54(register void* a)
{
    nofralloc
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(r1)
    lis     r0, 0x6000
    stwu    r1, -0x38(r1)
    stmw    r27, 0x24(r1)
    lis     r30, 0xcc00
    addi    r27, r3, 0x0
    addi    r29, r30, 0x6800
    addi    r3, r1, 0x18
    lwz     r5, 0x6828(r30)
    andi.   r5, r5, 0x405
    ori     r5, r5, 0xc0
    stwu    r5, 0x28(r29)
    li      r5, 0x1
    stw     r0, 0x18(r1)
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r31, r0, 5
L_80070DA0:
    addi    r28, r30, 0x6800
    lwzu    r0, 0x34(r28)
    clrlwi. r0, r0, 31
    bne     L_80070DA0
    addi    r3, r27, 0x0
    li      r4, 0x4
    li      r5, 0x0
    bl      fn_80070E00
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r3, r31, r0
L_80070DCC:
    lwz     r0, 0x0(r28)
    clrlwi. r0, r0, 31
    bne     L_80070DCC
    lwz     r4, 0x0(r29)
    cntlzw  r0, r3
    srwi    r3, r0, 5
    andi.   r0, r4, 0x405
    stw     r0, 0x0(r29)
    lmw     r27, 0x24(r1)
    lwz     r0, 0x3c(r1)
    addi    r1, r1, 0x38
    mtlr    r0
    blr

}
