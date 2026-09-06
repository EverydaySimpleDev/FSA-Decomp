#include "types.h"

extern void fn_800684A8(register void* buf, register f64 d);
extern void frexp(register void* exp_out, register f64 d);
extern void fn_8006885C(register void* buf, register s32 ndigits);
extern void ldexp(register s32 exp10);
extern void modf(register void* dst);
extern void fn_80069FE0(register void* buf, register void* digits, register void* scratch);
extern void __mod2u(void);
extern void __div2u(void);
extern void __cvt_dbl_usll(register f64 d);
extern f64 lbl_8053B418;

//80068304
ASM void fn_80068304(register s16 ndigits, register void* buf, register f64 d)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    mr      r31, r4
    stw     r30, 0x8(r1)
    lha     r30, 0x2(r3)
    mr      r3, r31
    bl      fn_800684A8
    lbz     r0, 0x5(r31)
    cmplwi  r0, 0x9
    bgt     L_80068490
    extsh   r0, r30
    cmpwi   r0, 0x24
    ble     L_80068344
    li      r30, 0x24
L_80068344:
    extsh.  r6, r30
    ble     L_80068430
    lbz     r0, 0x4(r31)
    cmpw    r6, r0
    bge     L_80068430
    add     r5, r31, r6
    lbz     r0, 0x5(r5)
    cmplwi  r0, 0x5
    ble     L_80068370
    li      r0, 0x1
    b       L_800683D0
L_80068370:
    bge     L_8006837C
    li      r0, -0x1
    b       L_800683D0
L_8006837C:
    lbz     r3, 0x4(r31)
    addi    r4, r5, 0x6
    addi    r3, r3, 0x5
    add     r3, r31, r3
    subf    r0, r4, r3
    mtctr   r0
    cmplw   r4, r3
    bge     L_800683B8
L_8006839C:
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq     L_800683B0
    li      r0, 0x1
    b       L_800683D0
L_800683B0:
    addi    r4, r4, 0x1
    bdnz    L_8006839C
L_800683B8:
    lbz     r0, 0x4(r5)
    clrlwi. r0, r0, 31
    beq     L_800683CC
    li      r0, 0x1
    b       L_800683D0
L_800683CC:
    li      r0, -0x1
L_800683D0:
    cmpwi   r0, 0x0
    stb     r6, 0x4(r31)
    blt     L_80068430
    addi    r5, r31, 0x5
    subi    r4, r6, 0x1
    add     r4, r5, r4
    li      r0, 0x0
L_800683EC:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068404
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80068430
L_80068404:
    cmplw   r4, r5
    bne     L_80068424
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80068430
L_80068424:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_800683EC
L_80068430:
    li      r5, 0x0
    b       L_8006844C
L_80068438:
    lbz     r4, 0x4(r31)
    addi    r3, r4, 0x1
    addi    r0, r4, 0x5
    stb     r3, 0x4(r31)
    stbx    r5, r31, r0
L_8006844C:
    lbz     r3, 0x4(r31)
    cmpw    r3, r6
    blt     L_80068438
    lha     r0, 0x2(r31)
    subi    r3, r3, 0x1
    li      r5, 0x0
    subf    r0, r3, r0
    sth     r0, 0x2(r31)
    b       L_80068484
L_80068470:
    addi    r4, r5, 0x5
    addi    r5, r5, 0x1
    lbzx    r3, r31, r4
    addi    r0, r3, 0x30
    stbx    r0, r31, r4
L_80068484:
    lbz     r0, 0x4(r31)
    cmpw    r5, r0
    blt     L_80068470
L_80068490:
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    lwz     r30, 0x8(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

//800684A8
ASM void fn_800684A8(register void* buf, register f64 d)
{
    nofralloc
    stwu    r1, -0xb0(r1)
    mflr    r0
    lfd     fp0, lbl_8053B418
    stw     r0, 0xb4(r1)
    fcmpu   cr0, fp0, fp1
    stfd    fp31, 0xa8(r1)
    stmw    r26, 0x90(r1)
    mr      r30, r3
    stfd    fp1, 0x8(r1)
    lwz     r0, 0x8(r1)
    srwi    r0, r0, 31
    extsb   r31, r0
    bne     L_800684F8
    stb     r31, 0x0(r30)
    li      r3, 0x0
    li      r0, 0x1
    sth     r3, 0x2(r30)
    stb     r0, 0x4(r30)
    stb     r3, 0x5(r30)
    b       L_80068844
L_800684F8:
    stfd    fp1, 0x28(r1)
    lis     r0, 0x7ff0
    lwz     r4, 0x28(r1)
    rlwinm  r3, r4, 0, 1, 11
    cmpw    r3, r0
    beq     L_80068520
    bge     L_80068568
    cmpwi   r3, 0x0
    beq     L_80068544
    b       L_80068568
L_80068520:
    clrlwi. r0, r4, 12
    bne     L_80068534
    lwz     r0, 0x2c(r1)
    cmpwi   r0, 0x0
    beq     L_8006853C
L_80068534:
    li      r0, 0x1
    b       L_8006856C
L_8006853C:
    li      r0, 0x2
    b       L_8006856C
L_80068544:
    clrlwi. r0, r4, 12
    bne     L_80068558
    lwz     r0, 0x2c(r1)
    cmpwi   r0, 0x0
    beq     L_80068560
L_80068558:
    li      r0, 0x5
    b       L_8006856C
L_80068560:
    li      r0, 0x3
    b       L_8006856C
L_80068568:
    li      r0, 0x4
L_8006856C:
    cmpwi   r0, 0x2
    bgt     L_80068618
    lfd     fp0, 0x8(r1)
    li      r3, 0x0
    stb     r31, 0x0(r30)
    lis     r0, 0x7ff0
    li      r4, 0x1
    stfd    fp0, 0x20(r1)
    lwz     r5, 0x20(r1)
    sth     r3, 0x2(r30)
    rlwinm  r3, r5, 0, 1, 11
    cmpw    r3, r0
    stb     r4, 0x4(r30)
    beq     L_800685B4
    bge     L_800685FC
    cmpwi   r3, 0x0
    beq     L_800685D8
    b       L_800685FC
L_800685B4:
    clrlwi. r0, r5, 12
    bne     L_800685C8
    lwz     r0, 0x24(r1)
    cmpwi   r0, 0x0
    beq     L_800685D0
L_800685C8:
    li      r0, 0x1
    b       L_80068600
L_800685D0:
    li      r0, 0x2
    b       L_80068600
L_800685D8:
    clrlwi. r0, r5, 12
    bne     L_800685EC
    lwz     r0, 0x24(r1)
    cmpwi   r0, 0x0
    beq     L_800685F4
L_800685EC:
    li      r0, 0x5
    b       L_80068600
L_800685F4:
    li      r0, 0x3
    b       L_80068600
L_800685FC:
    li      r0, 0x4
L_80068600:
    cmpwi   r0, 0x1
    li      r0, 0x49
    bne     L_80068610
    li      r0, 0x4e
L_80068610:
    stb     r0, 0x5(r30)
    b       L_80068844
L_80068618:
    extsb.  r0, r31
    beq     L_80068628
    fneg    fp0, fp1
    stfd    fp0, 0x8(r1)
L_80068628:
    lfd     fp1, 0x8(r1)
    addi    r3, r1, 0x10
    bl      frexp
    fmr     fp31, fp1
    stfd    fp31, 0x18(r1)
    lwz     r8, 0x1c(r1)
    cmplwi  r8, 0x0
    beq     L_800686B4
    li      r5, 0x10
    lis     r3, 0x1
    li      r7, 0x0
    li      r6, 0x20
    mr      r4, r5
    subi    r3, r3, 0x1
    b       L_800686A8
L_80068664:
    and.    r0, r8, r3
    bne     L_8006867C
    add     r7, r7, r4
    srw     r8, r8, r4
    subf    r6, r4, r6
    b       L_80068684
L_8006867C:
    cmplwi  r3, 0x1
    beq     L_80068728
L_80068684:
    cmpwi   r5, 0x1
    ble     L_80068698
    srwi    r0, r5, 31
    add     r0, r0, r5
    srawi   r5, r0, 1
L_80068698:
    cmplwi  r3, 0x1
    ble     L_800686A8
    srw     r3, r3, r5
    subf    r4, r5, r4
L_800686A8:
    cmpwi   r6, 0x0
    bne     L_80068664
    b       L_80068728
L_800686B4:
    lwz     r0, 0x18(r1)
    li      r5, 0x10
    lis     r3, 0x1
    li      r7, 0x0
    mr      r4, r5
    oris    r8, r0, 0x10
    subi    r3, r3, 0x1
    li      r6, 0x20
    b       L_8006871C
L_800686D8:
    and.    r0, r8, r3
    bne     L_800686F0
    add     r7, r7, r4
    srw     r8, r8, r4
    subf    r6, r4, r6
    b       L_800686F8
L_800686F0:
    cmplwi  r3, 0x1
    beq     L_80068724
L_800686F8:
    cmpwi   r5, 0x1
    ble     L_8006870C
    srwi    r0, r5, 31
    add     r0, r0, r5
    srawi   r5, r0, 1
L_8006870C:
    cmplwi  r3, 0x1
    ble     L_8006871C
    srw     r3, r3, r5
    subf    r4, r5, r4
L_8006871C:
    cmpwi   r6, 0x0
    bne     L_800686D8
L_80068724:
    addi    r7, r7, 0x20
L_80068728:
    lwz     r0, 0x10(r1)
    subfic  r26, r7, 0x35
    addi    r3, r1, 0x38
    subf    r4, r26, r0
    bl      fn_8006885C
    fmr     fp1, fp31
    mr      r3, r26
    bl      ldexp
    addi    r3, r1, 0x30
    bl      modf
    lfd     fp1, 0x30(r1)
    bl      __cvt_dbl_usll
    li      r28, 0x0
    mr      r27, r3
    mr      r26, r4
    stb     r28, 0x64(r1)
    xor     r3, r26, r28
    xor     r0, r27, r28
    or.     r0, r3, r0
    bne     L_8006878C
    li      r0, 0x1
    sth     r28, 0x66(r1)
    stb     r0, 0x68(r1)
    stb     r28, 0x69(r1)
    b       L_80068830
L_8006878C:
    stb     r28, 0x68(r1)
    addi    r29, r1, 0x64
    b       L_800687DC
L_80068798:
    mr      r3, r27
    mr      r4, r26
    li      r5, 0x0
    li      r6, 0xa
    bl      __mod2u
    lbz     r8, 0x68(r1)
    mr      r3, r27
    li      r5, 0x0
    li      r6, 0xa
    addi    r7, r8, 0x1
    addi    r0, r8, 0x5
    stb     r7, 0x68(r1)
    stbx    r4, r29, r0
    mr      r4, r26
    bl      __div2u
    mr      r26, r4
    mr      r27, r3
L_800687DC:
    xor     r3, r26, r28
    xor     r0, r27, r28
    or.     r0, r3, r0
    bne     L_80068798
    lbz     r3, 0x68(r1)
    addi    r0, r1, 0x64
    addi    r5, r1, 0x69
    addi    r4, r3, 0x5
    add     r4, r0, r4
    b       L_80068818
L_80068804:
    lbz     r3, 0x0(r5)
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r5)
    addi    r5, r5, 0x1
    stb     r3, 0x0(r4)
L_80068818:
    subi    r4, r4, 0x1
    cmplw   r5, r4
    blt     L_80068804
    lbz     r3, 0x68(r1)
    subi    r0, r3, 0x1
    sth     r0, 0x66(r1)
L_80068830:
    mr      r3, r30
    addi    r4, r1, 0x64
    addi    r5, r1, 0x38
    bl      fn_80069FE0
    stb     r31, 0x0(r30)
L_80068844:
    lfd     fp31, 0xa8(r1)
    lmw     r26, 0x90(r1)
    lwz     r0, 0xb4(r1)
    mtlr    r0
    addi    r1, r1, 0xb0
    blr
}
