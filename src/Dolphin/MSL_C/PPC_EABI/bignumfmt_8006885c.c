#include "types.h"

extern u32 jumptable_80497BC8[];
extern const char lbl_8045DD50[0xE0];
extern void fn_80069FE0(register void* buf, register void* a, register void* b);

//8006885C
ASM void fn_8006885C(register void* buf, register s32 val)
{
    nofralloc
    stwu    r1, -0x70(r1)
    mflr    r0
    stw     r0, 0x74(r1)
    stw     r31, 0x6c(r1)
    mr      r31, r3
    stw     r30, 0x68(r1)
    mr      r30, r4
    addi    r0, r30, 0x40
    cmplwi  r0, 0x48
    bgt     L_80069D38
    lis     r3, jumptable_80497BC8@ha
    slwi    r0, r0, 2
    addi    r3, r3, jumptable_80497BC8@l
    lwzx    r0, r3, r0
    mtctr   r0
    bctr
    li      r0, -0x14
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0x25
    b       L_800688D4
L_800688BC:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_800688D4:
    cmpwi   r4, 0x24
    bge     L_800688E8
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_800688BC
L_800688E8:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_8006893C
    addi    r3, r5, 0x1
    b       L_80068920
L_80068910:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_8006893C
    addi    r3, r3, 0x1
L_80068920:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068910
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_8006893C:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80068950:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068968
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80068968:
    cmplw   r4, r5
    bne     L_80068988
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80068988:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80068950
    b       L_80069FC8
    li      r0, -0x10
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0x53
    b       L_800689D0
L_800689B8:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_800689D0:
    cmpwi   r4, 0x24
    bge     L_800689E4
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_800689B8
L_800689E4:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80068A38
    addi    r3, r5, 0x1
    b       L_80068A1C
L_80068A0C:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80068A38
    addi    r3, r3, 0x1
L_80068A1C:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068A0C
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80068A38:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80068A4C:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068A64
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80068A64:
    cmplw   r4, r5
    bne     L_80068A84
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80068A84:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80068A4C
    b       L_80069FC8
    li      r0, -0xa
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0x7a
    b       L_80068ACC
L_80068AB4:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80068ACC:
    cmpwi   r4, 0x24
    bge     L_80068AE0
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80068AB4
L_80068AE0:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80068B34
    addi    r3, r5, 0x1
    b       L_80068B18
L_80068B08:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80068B34
    addi    r3, r3, 0x1
L_80068B18:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068B08
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80068B34:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80068B48:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068B60
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80068B60:
    cmplw   r4, r5
    bne     L_80068B80
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80068B80:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80068B48
    b       L_80069FC8
    li      r0, -0x5
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0x92
    b       L_80068BC8
L_80068BB0:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80068BC8:
    cmpwi   r4, 0x24
    bge     L_80068BDC
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80068BB0
L_80068BDC:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80068C30
    addi    r3, r5, 0x1
    b       L_80068C14
L_80068C04:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80068C30
    addi    r3, r3, 0x1
L_80068C14:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068C04
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80068C30:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80068C44:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068C5C
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80068C5C:
    cmplw   r4, r5
    bne     L_80068C7C
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80068C7C:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80068C44
    b       L_80069FC8
    li      r0, -0x3
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0x9f
    b       L_80068CC4
L_80068CAC:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80068CC4:
    cmpwi   r4, 0x24
    bge     L_80068CD8
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80068CAC
L_80068CD8:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80068D2C
    addi    r3, r5, 0x1
    b       L_80068D10
L_80068D00:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80068D2C
    addi    r3, r3, 0x1
L_80068D10:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068D00
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80068D2C:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80068D40:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068D58
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80068D58:
    cmplw   r4, r5
    bne     L_80068D78
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80068D78:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80068D40
    b       L_80069FC8
    li      r0, -0x3
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xa6
    b       L_80068DC0
L_80068DA8:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80068DC0:
    cmpwi   r4, 0x24
    bge     L_80068DD4
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80068DA8
L_80068DD4:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80068E28
    addi    r3, r5, 0x1
    b       L_80068E0C
L_80068DFC:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80068E28
    addi    r3, r3, 0x1
L_80068E0C:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068DFC
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80068E28:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80068E3C:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068E54
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80068E54:
    cmplw   r4, r5
    bne     L_80068E74
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80068E74:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80068E3C
    b       L_80069FC8
    li      r0, -0x2
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xac
    b       L_80068EBC
L_80068EA4:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80068EBC:
    cmpwi   r4, 0x24
    bge     L_80068ED0
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80068EA4
L_80068ED0:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80068F24
    addi    r3, r5, 0x1
    b       L_80068F08
L_80068EF8:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80068F24
    addi    r3, r3, 0x1
L_80068F08:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068EF8
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80068F24:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80068F38:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80068F50
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80068F50:
    cmplw   r4, r5
    bne     L_80068F70
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80068F70:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80068F38
    b       L_80069FC8
    li      r0, -0x2
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xb2
    b       L_80068FB8
L_80068FA0:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80068FB8:
    cmpwi   r4, 0x24
    bge     L_80068FCC
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80068FA0
L_80068FCC:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069020
    addi    r3, r5, 0x1
    b       L_80069004
L_80068FF4:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069020
    addi    r3, r3, 0x1
L_80069004:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80068FF4
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069020:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069034:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_8006904C
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_8006904C:
    cmplw   r4, r5
    bne     L_8006906C
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_8006906C:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069034
    b       L_80069FC8
    li      r0, -0x2
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xb7
    b       L_800690B4
L_8006909C:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_800690B4:
    cmpwi   r4, 0x24
    bge     L_800690C8
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_8006909C
L_800690C8:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_8006911C
    addi    r3, r5, 0x1
    b       L_80069100
L_800690F0:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_8006911C
    addi    r3, r3, 0x1
L_80069100:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800690F0
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_8006911C:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069130:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069148
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069148:
    cmplw   r4, r5
    bne     L_80069168
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069168:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069130
    b       L_80069FC8
    li      r0, -0x1
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xbb
    b       L_800691B0
L_80069198:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_800691B0:
    cmpwi   r4, 0x24
    bge     L_800691C4
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069198
L_800691C4:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069218
    addi    r3, r5, 0x1
    b       L_800691FC
L_800691EC:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069218
    addi    r3, r3, 0x1
L_800691FC:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800691EC
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069218:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_8006922C:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069244
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069244:
    cmplw   r4, r5
    bne     L_80069264
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069264:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_8006922C
    b       L_80069FC8
    li      r0, -0x1
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xbf
    b       L_800692AC
L_80069294:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_800692AC:
    cmpwi   r4, 0x24
    bge     L_800692C0
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069294
L_800692C0:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069314
    addi    r3, r5, 0x1
    b       L_800692F8
L_800692E8:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069314
    addi    r3, r3, 0x1
L_800692F8:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800692E8
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069314:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069328:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069340
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069340:
    cmplw   r4, r5
    bne     L_80069360
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069360:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069328
    b       L_80069FC8
    li      r0, -0x1
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xc2
    b       L_800693A8
L_80069390:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_800693A8:
    cmpwi   r4, 0x24
    bge     L_800693BC
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069390
L_800693BC:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069410
    addi    r3, r5, 0x1
    b       L_800693F4
L_800693E4:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069410
    addi    r3, r3, 0x1
L_800693F4:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800693E4
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069410:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069424:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_8006943C
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_8006943C:
    cmplw   r4, r5
    bne     L_8006945C
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_8006945C:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069424
    b       L_80069FC8
    li      r4, 0x0
    lis     r3, lbl_8045DD50@ha
    sth     r4, 0x2(r31)
    addi    r3, r3, lbl_8045DD50@l
    addi    r5, r3, 0xc4
    stb     r4, 0x0(r31)
    b       L_800694A0
L_80069488:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_800694A0:
    cmpwi   r4, 0x24
    bge     L_800694B4
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069488
L_800694B4:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069508
    addi    r3, r5, 0x1
    b       L_800694EC
L_800694DC:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069508
    addi    r3, r3, 0x1
L_800694EC:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800694DC
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069508:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_8006951C:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069534
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069534:
    cmplw   r4, r5
    bne     L_80069554
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069554:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_8006951C
    b       L_80069FC8
    li      r4, 0x0
    lis     r3, lbl_8045DD50@ha
    sth     r4, 0x2(r31)
    addi    r3, r3, lbl_8045DD50@l
    addi    r5, r3, 0xc6
    stb     r4, 0x0(r31)
    b       L_80069598
L_80069580:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069598:
    cmpwi   r4, 0x24
    bge     L_800695AC
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069580
L_800695AC:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069600
    addi    r3, r5, 0x1
    b       L_800695E4
L_800695D4:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069600
    addi    r3, r3, 0x1
L_800695E4:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800695D4
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069600:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069614:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_8006962C
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_8006962C:
    cmplw   r4, r5
    bne     L_8006964C
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_8006964C:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069614
    b       L_80069FC8
    li      r4, 0x0
    lis     r3, lbl_8045DD50@ha
    sth     r4, 0x2(r31)
    addi    r3, r3, lbl_8045DD50@l
    addi    r5, r3, 0xc8
    stb     r4, 0x0(r31)
    b       L_80069690
L_80069678:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069690:
    cmpwi   r4, 0x24
    bge     L_800696A4
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069678
L_800696A4:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_800696F8
    addi    r3, r5, 0x1
    b       L_800696DC
L_800696CC:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_800696F8
    addi    r3, r3, 0x1
L_800696DC:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800696CC
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_800696F8:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_8006970C:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069724
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069724:
    cmplw   r4, r5
    bne     L_80069744
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069744:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_8006970C
    b       L_80069FC8
    li      r4, 0x0
    lis     r3, lbl_8045DD50@ha
    sth     r4, 0x2(r31)
    addi    r3, r3, lbl_8045DD50@l
    addi    r5, r3, 0xca
    stb     r4, 0x0(r31)
    b       L_80069788
L_80069770:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069788:
    cmpwi   r4, 0x24
    bge     L_8006979C
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069770
L_8006979C:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_800697F0
    addi    r3, r5, 0x1
    b       L_800697D4
L_800697C4:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_800697F0
    addi    r3, r3, 0x1
L_800697D4:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800697C4
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_800697F0:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069804:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_8006981C
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_8006981C:
    cmplw   r4, r5
    bne     L_8006983C
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_8006983C:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069804
    b       L_80069FC8
    li      r0, 0x1
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xcc
    b       L_80069884
L_8006986C:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069884:
    cmpwi   r4, 0x24
    bge     L_80069898
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_8006986C
L_80069898:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_800698EC
    addi    r3, r5, 0x1
    b       L_800698D0
L_800698C0:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_800698EC
    addi    r3, r3, 0x1
L_800698D0:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800698C0
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_800698EC:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069900:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069918
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069918:
    cmplw   r4, r5
    bne     L_80069938
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069938:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069900
    b       L_80069FC8
    li      r0, 0x1
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xcf
    b       L_80069980
L_80069968:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069980:
    cmpwi   r4, 0x24
    bge     L_80069994
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069968
L_80069994:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_800699E8
    addi    r3, r5, 0x1
    b       L_800699CC
L_800699BC:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_800699E8
    addi    r3, r3, 0x1
L_800699CC:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_800699BC
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_800699E8:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_800699FC:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069A14
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069A14:
    cmplw   r4, r5
    bne     L_80069A34
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069A34:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_800699FC
    b       L_80069FC8
    li      r0, 0x1
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xd2
    b       L_80069A7C
L_80069A64:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069A7C:
    cmpwi   r4, 0x24
    bge     L_80069A90
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069A64
L_80069A90:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069AE4
    addi    r3, r5, 0x1
    b       L_80069AC8
L_80069AB8:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069AE4
    addi    r3, r3, 0x1
L_80069AC8:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80069AB8
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069AE4:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069AF8:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069B10
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069B10:
    cmplw   r4, r5
    bne     L_80069B30
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069B30:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069AF8
    b       L_80069FC8
    li      r0, 0x2
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xd5
    b       L_80069B78
L_80069B60:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069B78:
    cmpwi   r4, 0x24
    bge     L_80069B8C
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069B60
L_80069B8C:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069BE0
    addi    r3, r5, 0x1
    b       L_80069BC4
L_80069BB4:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069BE0
    addi    r3, r3, 0x1
L_80069BC4:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80069BB4
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069BE0:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069BF4:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069C0C
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069C0C:
    cmplw   r4, r5
    bne     L_80069C2C
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069C2C:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069BF4
    b       L_80069FC8
    li      r0, 0x2
    lis     r3, lbl_8045DD50@ha
    sth     r0, 0x2(r31)
    li      r4, 0x0
    addi    r3, r3, lbl_8045DD50@l
    stb     r4, 0x0(r31)
    addi    r5, r3, 0xd9
    b       L_80069C74
L_80069C5C:
    lbz     r3, 0x0(r5)
    addi    r0, r4, 0x5
    addi    r5, r5, 0x1
    addi    r4, r4, 0x1
    subi    r3, r3, 0x30
    stbx    r3, r31, r0
L_80069C74:
    cmpwi   r4, 0x24
    bge     L_80069C88
    lbz     r0, 0x0(r5)
    extsb.  r0, r0
    bne     L_80069C5C
L_80069C88:
    stb     r4, 0x4(r31)
    lbz     r3, 0x0(r5)
    extsb.  r0, r3
    beq     L_80069FC8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FC8
    bgt     L_80069CDC
    addi    r3, r5, 0x1
    b       L_80069CC0
L_80069CB0:
    extsb   r0, r5
    cmpwi   r0, 0x30
    bne     L_80069CDC
    addi    r3, r3, 0x1
L_80069CC0:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne     L_80069CB0
    add     r3, r31, r4
    lbz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq     L_80069FC8
L_80069CDC:
    lbz     r3, 0x4(r31)
    addi    r5, r31, 0x5
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069CF0:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069D08
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FC8
L_80069D08:
    cmplw   r4, r5
    bne     L_80069D28
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x2(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x2(r31)
    b       L_80069FC8
L_80069D28:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069CF0
    b       L_80069FC8
L_80069D38:
    srwi    r0, r30, 31
    addi    r3, r1, 0x34
    add     r0, r0, r30
    srawi   r4, r0, 1
    bl      fn_8006885C
    addi    r4, r1, 0x34
    mr      r3, r31
    mr      r5, r4
    bl      fn_80069FE0
    clrlwi. r0, r30, 31
    beq     L_80069FC8
    lwz     r3, 0x0(r31)
    cmpwi   r30, 0x0
    lwz     r0, 0x4(r31)
    stw     r3, 0x8(r1)
    stw     r0, 0xc(r1)
    lwz     r3, 0x8(r31)
    lwz     r0, 0xc(r31)
    stw     r3, 0x10(r1)
    stw     r0, 0x14(r1)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x18(r1)
    stw     r0, 0x1c(r1)
    lwz     r3, 0x18(r31)
    lwz     r0, 0x1c(r31)
    stw     r3, 0x20(r1)
    stw     r0, 0x24(r1)
    lwz     r3, 0x20(r31)
    lwz     r0, 0x24(r31)
    stw     r3, 0x28(r1)
    stw     r0, 0x2c(r1)
    lhz     r0, 0x28(r31)
    sth     r0, 0x30(r1)
    ble     L_80069EBC
    li      r5, 0x0
    lis     r3, lbl_8045DD50@ha
    addi    r4, r3, lbl_8045DD50@l
    sth     r5, 0x36(r1)
    addi    r3, r1, 0x34
    stb     r5, 0x34(r1)
    addi    r6, r4, 0xc6
    b       L_80069DFC
L_80069DE4:
    lbz     r4, 0x0(r6)
    addi    r0, r5, 0x5
    addi    r6, r6, 0x1
    addi    r5, r5, 0x1
    subi    r4, r4, 0x30
    stbx    r4, r3, r0
L_80069DFC:
    cmpwi   r5, 0x24
    bge     L_80069E10
    lbz     r0, 0x0(r6)
    extsb.  r0, r0
    bne     L_80069DE4
L_80069E10:
    stb     r5, 0x38(r1)
    lbz     r3, 0x0(r6)
    extsb.  r0, r3
    beq     L_80069FB8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FB8
    bgt     L_80069E64
    addi    r3, r6, 0x1
    b       L_80069E48
L_80069E38:
    extsb   r0, r4
    cmpwi   r0, 0x30
    bne     L_80069E64
    addi    r3, r3, 0x1
L_80069E48:
    lbz     r4, 0x0(r3)
    extsb.  r0, r4
    bne     L_80069E38
    addi    r3, r1, 0x38
    lbzx    r0, r3, r5
    clrlwi. r0, r0, 31
    beq     L_80069FB8
L_80069E64:
    lbz     r3, 0x38(r1)
    addi    r5, r1, 0x39
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069E78:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069E90
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FB8
L_80069E90:
    cmplw   r4, r5
    bne     L_80069EB0
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x36(r1)
    addi    r0, r3, 0x1
    sth     r0, 0x36(r1)
    b       L_80069FB8
L_80069EB0:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069E78
L_80069EBC:
    li      r5, 0x0
    lis     r3, lbl_8045DD50@ha
    li      r0, -0x1
    stb     r5, 0x34(r1)
    addi    r3, r3, lbl_8045DD50@l
    addi    r6, r3, 0xc2
    sth     r0, 0x36(r1)
    addi    r3, r1, 0x34
    b       L_80069EF8
L_80069EE0:
    lbz     r4, 0x0(r6)
    addi    r0, r5, 0x5
    addi    r6, r6, 0x1
    addi    r5, r5, 0x1
    subi    r4, r4, 0x30
    stbx    r4, r3, r0
L_80069EF8:
    cmpwi   r5, 0x24
    bge     L_80069F0C
    lbz     r0, 0x0(r6)
    extsb.  r0, r0
    bne     L_80069EE0
L_80069F0C:
    stb     r5, 0x38(r1)
    lbz     r3, 0x0(r6)
    extsb.  r0, r3
    beq     L_80069FB8
    extsb   r0, r3
    cmpwi   r0, 0x5
    blt     L_80069FB8
    bgt     L_80069F60
    addi    r3, r6, 0x1
    b       L_80069F44
L_80069F34:
    extsb   r0, r4
    cmpwi   r0, 0x30
    bne     L_80069F60
    addi    r3, r3, 0x1
L_80069F44:
    lbz     r4, 0x0(r3)
    extsb.  r0, r4
    bne     L_80069F34
    addi    r3, r1, 0x38
    lbzx    r0, r3, r5
    clrlwi. r0, r0, 31
    beq     L_80069FB8
L_80069F60:
    lbz     r3, 0x38(r1)
    addi    r5, r1, 0x39
    li      r0, 0x0
    subi    r4, r3, 0x1
    add     r4, r5, r4
L_80069F74:
    lbz     r3, 0x0(r4)
    cmplwi  r3, 0x9
    bge     L_80069F8C
    addi    r0, r3, 0x1
    stb     r0, 0x0(r4)
    b       L_80069FB8
L_80069F8C:
    cmplw   r4, r5
    bne     L_80069FAC
    li      r0, 0x1
    stb     r0, 0x0(r4)
    lha     r3, 0x36(r1)
    addi    r0, r3, 0x1
    sth     r0, 0x36(r1)
    b       L_80069FB8
L_80069FAC:
    stb     r0, 0x0(r4)
    subi    r4, r4, 0x1
    b       L_80069F74
L_80069FB8:
    mr      r3, r31
    addi    r4, r1, 0x8
    addi    r5, r1, 0x34
    bl      fn_80069FE0
L_80069FC8:
    lwz     r0, 0x74(r1)
    lwz     r31, 0x6c(r1)
    lwz     r30, 0x68(r1)
    mtlr    r0
    addi    r1, r1, 0x70
    blr
}
