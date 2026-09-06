#include "types.h"

extern void __flush_all(void);
extern int __flush_buffer(register void* file, register int mode);
extern int fn_8006ACE8(register void* file);
extern void fn_80067D38(register void* ptr);

//8006A718
ASM int fflush(register void* file)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    mr.     r31, r3
    stw     r30, 0x8(r1)
    bne     L_8006A73C
    bl      __flush_all
    b       L_8006A838
L_8006A73C:
    lbz     r0, 0xa(r31)
    cmplwi  r0, 0x0
    bne     L_8006A754
    lhz     r0, 0x4(r31)
    extrwi. r0, r0, 3, 23
    bne     L_8006A75C
L_8006A754:
    li      r3, -0x1
    b       L_8006A838
L_8006A75C:
    lbz     r0, 0x4(r31)
    extrwi  r0, r0, 3, 26
    cmplwi  r0, 0x1
    bne     L_8006A774
    li      r3, 0x0
    b       L_8006A838
L_8006A774:
    lbz     r3, 0x8(r31)
    extrwi  r0, r3, 3, 24
    cmplwi  r0, 0x3
    blt     L_8006A790
    li      r0, 0x2
    rlwimi  r3, r0, 5, 24, 26
    stb     r3, 0x8(r31)
L_8006A790:
    lbz     r0, 0x8(r31)
    extrwi  r0, r0, 3, 24
    cmplwi  r0, 0x2
    bne     L_8006A7A8
    li      r0, 0x0
    stw     r0, 0x28(r31)
L_8006A7A8:
    lbz     r4, 0x8(r31)
    extrwi  r0, r4, 3, 24
    cmplwi  r0, 0x1
    beq     L_8006A7CC
    li      r0, 0x0
    li      r3, 0x0
    rlwimi  r4, r0, 5, 24, 26
    stb     r4, 0x8(r31)
    b       L_8006A838
L_8006A7CC:
    lhz     r0, 0x4(r31)
    extrwi  r0, r0, 3, 23
    cmplwi  r0, 0x1
    beq     L_8006A7E4
    li      r30, 0x0
    b       L_8006A7F0
L_8006A7E4:
    mr      r3, r31
    bl      fn_8006ACE8
    mr      r30, r3
L_8006A7F0:
    mr      r3, r31
    li      r4, 0x0
    bl      __flush_buffer
    cmpwi   r3, 0x0
    beq     L_8006A81C
    li      r3, 0x1
    li      r0, 0x0
    stb     r3, 0xa(r31)
    li      r3, -0x1
    stw     r0, 0x28(r31)
    b       L_8006A838
L_8006A81C:
    lbz     r0, 0x8(r31)
    li      r4, 0x0
    rlwimi  r0, r4, 5, 24, 26
    li      r3, 0x0
    stb     r0, 0x8(r31)
    stw     r30, 0x18(r31)
    stw     r4, 0x28(r31)
L_8006A838:
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    lwz     r30, 0x8(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr

}

//8006A850
ASM int fclose(register void* file)
{
    nofralloc
    stwu    r1, -0x20(r1)
    mflr    r0
    stw     r0, 0x24(r1)
    stw     r31, 0x1c(r1)
    mr.     r31, r3
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    bne     L_8006A878
    li      r3, -0x1
    b       L_8006A9F0
L_8006A878:
    lhz     r0, 0x4(r31)
    extrwi. r3, r0, 3, 23
    bne     L_8006A88C
    li      r3, 0x0
    b       L_8006A9F0
L_8006A88C:
    cmplwi  r31, 0x0
    bne     L_8006A8A0
    bl      __flush_all
    mr      r29, r3
    b       L_8006A990
L_8006A8A0:
    lbz     r0, 0xa(r31)
    cmplwi  r0, 0x0
    bne     L_8006A8B4
    cmplwi  r3, 0x0
    bne     L_8006A8BC
L_8006A8B4:
    li      r29, -0x1
    b       L_8006A990
L_8006A8BC:
    lbz     r0, 0x4(r31)
    extrwi  r0, r0, 3, 26
    cmplwi  r0, 0x1
    bne     L_8006A8D4
    li      r29, 0x0
    b       L_8006A990
L_8006A8D4:
    lbz     r3, 0x8(r31)
    extrwi  r0, r3, 3, 24
    cmplwi  r0, 0x3
    blt     L_8006A8F0
    li      r0, 0x2
    rlwimi  r3, r0, 5, 24, 26
    stb     r3, 0x8(r31)
L_8006A8F0:
    lbz     r0, 0x8(r31)
    extrwi  r0, r0, 3, 24
    cmplwi  r0, 0x2
    bne     L_8006A908
    li      r0, 0x0
    stw     r0, 0x28(r31)
L_8006A908:
    lbz     r3, 0x8(r31)
    extrwi  r0, r3, 3, 24
    cmplwi  r0, 0x1
    beq     L_8006A928
    li      r29, 0x0
    rlwimi  r3, r29, 5, 24, 26
    stb     r3, 0x8(r31)
    b       L_8006A990
L_8006A928:
    lhz     r0, 0x4(r31)
    extrwi  r0, r0, 3, 23
    cmplwi  r0, 0x1
    beq     L_8006A940
    li      r30, 0x0
    b       L_8006A94C
L_8006A940:
    mr      r3, r31
    bl      fn_8006ACE8
    mr      r30, r3
L_8006A94C:
    mr      r3, r31
    li      r4, 0x0
    bl      __flush_buffer
    cmpwi   r3, 0x0
    beq     L_8006A978
    li      r3, 0x1
    li      r0, 0x0
    stb     r3, 0xa(r31)
    li      r29, -0x1
    stw     r0, 0x28(r31)
    b       L_8006A990
L_8006A978:
    li      r29, 0x0
    lbz     r0, 0x8(r31)
    rlwimi  r0, r29, 5, 24, 26
    stb     r0, 0x8(r31)
    stw     r30, 0x18(r31)
    stw     r29, 0x28(r31)
L_8006A990:
    lwz     r12, 0x44(r31)
    lwz     r3, 0x0(r31)
    mtctr   r12
    bctrl
    lhz     r0, 0x4(r31)
    li      r4, 0x0
    rlwimi  r0, r4, 6, 23, 25
    mr      r30, r3
    sth     r0, 0x4(r31)
    stw     r4, 0x0(r31)
    lbz     r0, 0x8(r31)
    extrwi. r0, r0, 1, 27
    beq     L_8006A9CC
    lwz     r3, 0x1c(r31)
    bl      fn_80067D38
L_8006A9CC:
    cmpwi   r29, 0x0
    li      r3, 0x0
    bne     L_8006A9E0
    cmpwi   r30, 0x0
    beq     L_8006A9E4
L_8006A9E0:
    li      r3, 0x1
L_8006A9E4:
    neg     r0, r3
    or      r0, r0, r3
    srawi   r3, r0, 31
L_8006A9F0:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x20
    blr

}
