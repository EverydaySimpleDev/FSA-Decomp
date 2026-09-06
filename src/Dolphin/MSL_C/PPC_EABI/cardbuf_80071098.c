#include "types.h"
#include "Dolphin/os.h"

extern void* lbl_8053A760;
extern void (*lbl_8053A764)(void);

//80071098
ASM void fn_80071098(register void* range, register void* base, register s32 size)
{
    nofralloc
    stw     r4, 0x0(r3)
    add     r0, r4, r5
    stw     r4, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r5, 0x4(r3)
    blr

}

//800710B0
ASM void fn_800710B0(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lwz     r4, lbl_8053A760
    lwz     r3, 0x0(r4)
    lwz     r4, 0x4(r4)
    bl      DCFlushRange
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr

}

//800710DC
ASM void fn_800710DC(void)
{
    nofralloc
    lwz     r3, lbl_8053A760
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 27
    beqlr
    cmplwi  r0, 0x20
    subfic  r3, r0, 0x20
    li      r6, 0x0
    bgelr
    srwi.   r0, r3, 3
    mtctr   r0
    beq     L_800711B4
L_80071108:
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    bdnz    L_80071108
    andi.   r3, r3, 0x7
    beqlr
L_800711B4:
    mtctr   r3
L_800711B8:
    lwz     r5, lbl_8053A760
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    bdnz    L_800711B8
    blr

}

//800711D4
ASM void fn_800711D4(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lwz     r12, lbl_8053A764
    cmplwi  r12, 0x0
    beq     L_800711F4
    mtlr    r12
    blrl
L_800711F4:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr

}
