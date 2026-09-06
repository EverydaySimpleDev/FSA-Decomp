#include "types.h"

extern int errno;
extern void fn_8006D668(void);
extern s32 fn_8006DC30(register s32 base, register s32 maxchars, register void* getc_cb, register void* stream, register void* unused, register BOOL* overflow, register BOOL* neg);

//8006DA94
ASM s32 strtol(register const char* str, register char** endptr, register s32 base)
{
    nofralloc
    stwu    r1, -0x30(r1)
    mflr    r0
    li      r7, 0x0
    lis     r6, 0x8000
    stw     r0, 0x34(r1)
    addi    r8, r1, 0xc
    addi    r9, r1, 0x8
    stw     r31, 0x2c(r1)
    mr      r31, r4
    subi    r4, r6, 0x1
    addi    r6, r1, 0x14
    stw     r30, 0x28(r1)
    mr      r30, r3
    lis     r3, fn_8006D668@ha
    addi    r0, r3, fn_8006D668@l
    stw     r7, 0x18(r1)
    mr      r3, r5
    addi    r7, r1, 0x10
    stw     r30, 0x14(r1)
    mr      r5, r0
    bl      fn_8006DC30
    cmplwi  r31, 0x0
    beq     L_8006DAFC
    lwz     r0, 0x10(r1)
    add     r0, r30, r0
    stw     r0, 0x0(r31)
L_8006DAFC:
    lwz     r0, 0x8(r1)
    cmpwi   r0, 0x0
    bne     L_8006DB38
    lwz     r5, 0xc(r1)
    cmpwi   r5, 0x0
    bne     L_8006DB24
    lis     r4, 0x8000
    subi    r0, r4, 0x1
    cmplw   r3, r0
    bgt     L_8006DB38
L_8006DB24:
    cmpwi   r5, 0x0
    beq     L_8006DB60
    lis     r0, 0x8000
    cmplw   r3, r0
    ble     L_8006DB60
L_8006DB38:
    lwz     r5, 0xc(r1)
    lis     r3, 0x8000
    li      r0, 0x22
    neg     r4, r5
    subi    r3, r3, 0x1
    or      r4, r4, r5
    stw     r0, errno
    srwi    r0, r4, 31
    add     r3, r0, r3
    b       L_8006DB6C
L_8006DB60:
    cmpwi   r5, 0x0
    beq     L_8006DB6C
    neg     r3, r3
L_8006DB6C:
    lwz     r0, 0x34(r1)
    lwz     r31, 0x2c(r1)
    lwz     r30, 0x28(r1)
    mtlr    r0
    addi    r1, r1, 0x30
    blr
}

//8006DB84
ASM u32 strtoul(register const char* str, register char** endptr, register s32 base)
{
    nofralloc
    stwu    r1, -0x30(r1)
    mflr    r0
    li      r7, 0x0
    lis     r6, 0x8000
    stw     r0, 0x34(r1)
    addi    r8, r1, 0xc
    addi    r9, r1, 0x8
    stw     r31, 0x2c(r1)
    mr      r31, r4
    subi    r4, r6, 0x1
    addi    r6, r1, 0x14
    stw     r30, 0x28(r1)
    mr      r30, r3
    lis     r3, fn_8006D668@ha
    addi    r0, r3, fn_8006D668@l
    stw     r7, 0x18(r1)
    mr      r3, r5
    addi    r7, r1, 0x10
    stw     r30, 0x14(r1)
    mr      r5, r0
    bl      fn_8006DC30
    cmplwi  r31, 0x0
    beq     L_8006DBEC
    lwz     r0, 0x10(r1)
    add     r0, r30, r0
    stw     r0, 0x0(r31)
L_8006DBEC:
    lwz     r0, 0x8(r1)
    cmpwi   r0, 0x0
    beq     L_8006DC08
    li      r0, 0x22
    li      r3, -0x1
    stw     r0, errno
    b       L_8006DC18
L_8006DC08:
    lwz     r0, 0xc(r1)
    cmpwi   r0, 0x0
    beq     L_8006DC18
    neg     r3, r3
L_8006DC18:
    lwz     r0, 0x34(r1)
    lwz     r31, 0x2c(r1)
    lwz     r30, 0x28(r1)
    mtlr    r0
    addi    r1, r1, 0x30
    blr

}

extern u8 lbl_80497CF0[0x100];
extern u8 lbl_80497EF0[0x100];
extern u32 jumptable_80498220[];

//8006DC30
ASM s32 fn_8006DC30(register s32 base, register s32 maxchars, register void* getc_cb, register void* stream, register void* unused, register BOOL* overflow, register BOOL* neg)
{
    nofralloc
    stwu    r1, -0x40(r1)
    mflr    r0
    stw     r0, 0x44(r1)
    li      r0, 0x0
    stmw    r20, 0x10(r1)
    mr.     r29, r3
    mr      r24, r9
    mr      r21, r8
    mr      r22, r4
    mr      r30, r5
    mr      r28, r6
    mr      r20, r7
    li      r25, 0x1
    li      r31, 0x0
    li      r23, 0x0
    li      r27, 0x0
    li      r26, 0x0
    stw     r0, 0x0(r9)
    stw     r0, 0x0(r8)
    blt     L_8006DC98
    cmpwi   r29, 0x1
    beq     L_8006DC98
    cmpwi   r29, 0x24
    bgt     L_8006DC98
    cmpwi   r22, 0x1
    bge     L_8006DCA0
L_8006DC98:
    li      r25, 0x40
    b       L_8006DCC0
L_8006DCA0:
    mr      r12, r30
    mr      r3, r28
    li      r4, 0x0
    li      r5, 0x0
    mtctr   r12
    li      r31, 0x1
    bctrl
    mr      r4, r3
L_8006DCC0:
    cmpwi   r29, 0x0
    beq     L_8006DF40
    li      r0, -0x1
    divwu   r26, r0, r29
    b       L_8006DF40
L_8006DCD4:
    cmplwi  r25, 0x10
    bgt     L_8006DF40
    lis     r3, jumptable_80498220@ha
    slwi    r0, r25, 2
    addi    r3, r3, jumptable_80498220@l
    lwzx    r0, r3, r0
    mtctr   r0
    bctr
    lis     r3, lbl_80497CF0@ha
    clrlwi  r0, r4, 24
    addi    r3, r3, lbl_80497CF0@l
    lbzx    r0, r3, r0
    rlwinm. r0, r0, 0, 29, 30
    beq     L_8006DD30
    mr      r12, r30
    mr      r3, r28
    li      r4, 0x0
    li      r5, 0x0
    mtctr   r12
    bctrl
    mr      r4, r3
    addi    r23, r23, 0x1
    b       L_8006DF40
L_8006DD30:
    cmpwi   r4, 0x2b
    bne     L_8006DD5C
    mr      r12, r30
    mr      r3, r28
    li      r4, 0x0
    li      r5, 0x0
    mtctr   r12
    addi    r31, r31, 0x1
    bctrl
    mr      r4, r3
    b       L_8006DD8C
L_8006DD5C:
    cmpwi   r4, 0x2d
    bne     L_8006DD8C
    mr      r12, r30
    mr      r3, r28
    li      r4, 0x0
    li      r5, 0x0
    mtctr   r12
    addi    r31, r31, 0x1
    bctrl
    li      r0, 0x1
    mr      r4, r3
    stw     r0, 0x0(r21)
L_8006DD8C:
    li      r25, 0x2
    b       L_8006DF40
    cmpwi   r29, 0x0
    beq     L_8006DDA4
    cmpwi   r29, 0x10
    bne     L_8006DDD4
L_8006DDA4:
    cmpwi   r4, 0x30
    bne     L_8006DDD4
    mr      r12, r30
    mr      r3, r28
    li      r25, 0x4
    li      r4, 0x0
    li      r5, 0x0
    mtctr   r12
    addi    r31, r31, 0x1
    bctrl
    mr      r4, r3
    b       L_8006DF40
L_8006DDD4:
    li      r25, 0x8
    b       L_8006DF40
    cmpwi   r4, 0x58
    beq     L_8006DDEC
    cmpwi   r4, 0x78
    bne     L_8006DE18
L_8006DDEC:
    mr      r12, r30
    mr      r3, r28
    li      r29, 0x10
    li      r25, 0x8
    li      r4, 0x0
    li      r5, 0x0
    mtctr   r12
    addi    r31, r31, 0x1
    bctrl
    mr      r4, r3
    b       L_8006DF40
L_8006DE18:
    cmpwi   r29, 0x0
    bne     L_8006DE24
    li      r29, 0x8
L_8006DE24:
    li      r25, 0x10
    b       L_8006DF40
    cmpwi   r29, 0x0
    bne     L_8006DE38
    li      r29, 0xa
L_8006DE38:
    cmplwi  r26, 0x0
    bne     L_8006DE48
    li      r0, -0x1
    divwu   r26, r0, r29
L_8006DE48:
    lis     r3, lbl_80497CF0@ha
    clrlwi  r5, r4, 24
    addi    r3, r3, lbl_80497CF0@l
    lbzx    r3, r3, r5
    rlwinm. r0, r3, 0, 27, 27
    beq     L_8006DE88
    subi    r4, r4, 0x30
    cmpw    r4, r29
    blt     L_8006DEF0
    cmpwi   r25, 0x10
    li      r0, 0x40
    bne     L_8006DE7C
    li      r0, 0x20
L_8006DE7C:
    mr      r25, r0
    addi    r4, r4, 0x30
    b       L_8006DF40
L_8006DE88:
    rlwinm. r0, r3, 0, 24, 25
    beq     L_8006DEB8
    cmpwi   r4, -0x1
    bne     L_8006DEA0
    li      r3, -0x1
    b       L_8006DEAC
L_8006DEA0:
    lis     r3, lbl_80497EF0@ha
    addi    r3, r3, lbl_80497EF0@l
    lbzx    r3, r3, r5
L_8006DEAC:
    subi    r0, r3, 0x37
    cmpw    r0, r29
    blt     L_8006DED0
L_8006DEB8:
    cmpwi   r25, 0x10
    bne     L_8006DEC8
    li      r25, 0x20
    b       L_8006DF40
L_8006DEC8:
    li      r25, 0x40
    b       L_8006DF40
L_8006DED0:
    cmpwi   r4, -0x1
    bne     L_8006DEE0
    li      r3, -0x1
    b       L_8006DEEC
L_8006DEE0:
    lis     r3, lbl_80497EF0@ha
    addi    r3, r3, lbl_80497EF0@l
    lbzx    r3, r3, r5
L_8006DEEC:
    subi    r4, r3, 0x37
L_8006DEF0:
    cmplw   r27, r26
    ble     L_8006DF00
    li      r0, 0x1
    stw     r0, 0x0(r24)
L_8006DF00:
    mullw   r27, r27, r29
    subfic  r0, r27, -0x1
    cmplw   r4, r0
    ble     L_8006DF18
    li      r0, 0x1
    stw     r0, 0x0(r24)
L_8006DF18:
    mr      r12, r30
    mr      r3, r28
    add     r27, r27, r4
    li      r25, 0x10
    li      r4, 0x0
    li      r5, 0x0
    mtctr   r12
    addi    r31, r31, 0x1
    bctrl
    mr      r4, r3
L_8006DF40:
    cmpw    r31, r22
    bgt     L_8006DF58
    cmpwi   r4, -0x1
    beq     L_8006DF58
    rlwinm. r0, r25, 0, 25, 26
    beq     L_8006DCD4
L_8006DF58:
    andi.   r0, r25, 0x34
    bne     L_8006DF70
    li      r0, 0x0
    li      r27, 0x0
    stw     r0, 0x0(r20)
    b       L_8006DF7C
L_8006DF70:
    add     r3, r31, r23
    subi    r0, r3, 0x1
    stw     r0, 0x0(r20)
L_8006DF7C:
    mr      r12, r30
    mr      r3, r28
    li      r5, 0x1
    mtctr   r12
    bctrl
    mr      r3, r27
    lmw     r20, 0x10(r1)
    lwz     r0, 0x44(r1)
    mtlr    r0
    addi    r1, r1, 0x40
    blr

}
