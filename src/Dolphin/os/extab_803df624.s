# 901KB-gap non-actor manager block: 3 function(s), 1,608 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000FBEC
etb_8000FBEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FBEC, 8

.global etb_8000FBF4
etb_8000FBF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000FBF4, 8

.global etb_8000FBFC
etb_8000FBFC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000FBFC, 8

.section extabindex, "a"
.balign 4
.global eti_8001FABC
eti_8001FABC:
    .4byte fn_803DF624
    .4byte 0x000001EC
    .4byte etb_8000FBEC
.size eti_8001FABC, 12

.global eti_8001FAC8
eti_8001FAC8:
    .4byte fn_803DF810
    .4byte 0x000001D8
    .4byte etb_8000FBF4
.size eti_8001FAC8, 12

.global eti_8001FAD4
eti_8001FAD4:
    .4byte fn_803DF9E8
    .4byte 0x00000284
    .4byte etb_8000FBFC
.size eti_8001FAD4, 12

.text
.balign 4
.global fn_803DF624
.global fn_803DF810
.global fn_803DF9E8

fn_803DF624:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, lbl_804B0628@ha
    lwz 4, 0x84(31)
    addi 0, 3, lbl_804B0628@l
    .4byte 0x806D9210 # lwz r3, lbl_8053ADD0@sda21(r0)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lbz 0, 0xa0(31)
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_803DF69C
    lwz 3, 0x64(31)
    li 4, 0x32
    li 5, 0x9f
    li 6, -0x164
    li 7, -0x11b
    bl fn_80427D2C
L_803DF69C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    lwz 0, 0x84(31)
    cmpwi 0, 0x5
    .4byte 0x4082005C # bne .L_803DF728
    lfs 0, 0x7c(31)
    lwz 3, 0x10(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x8(1)
    lwz 12, 0x24(12)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    li 4, 0x0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC0620694 # lfs f3, lbl_80543634@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0820698 # lfs f4, lbl_80543638@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x4800009C # b .L_803DF7C0
L_803DF728:
    cmpwi 0, 0x6
    .4byte 0x40820038 # bne .L_803DF764
    lwz 3, 0x10(31)
    li 4, 0x0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC0620694 # lfs f3, lbl_80543634@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0820698 # lfs f4, lbl_80543638@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x48000060 # b .L_803DF7C0
L_803DF764:
    cmpwi 0, 0x7
    .4byte 0x40820058 # bne .L_803DF7C0
    lfs 0, 0x7c(31)
    lwz 3, 0x10(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x8(1)
    lwz 12, 0x24(12)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    li 4, 0x0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC0620694 # lfs f3, lbl_80543634@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0820698 # lfs f4, lbl_80543638@sda21(r0)
    mtctr 12
    bctrl
L_803DF7C0:
    lwz 0, 0x94(31)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_803DF7FC
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lwz 3, 0x1a0(4)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_803DF7EC
    subi 0, 3, 0x1
    stw 0, 0x1a0(4)
    .4byte 0x4800000C # b .L_803DF7F4
L_803DF7EC:
    li 0, 0x0
    stw 0, 0x1a0(4)
L_803DF7F4:
    lwz 0, 0x1a0(4)
    stw 0, 0x94(31)
L_803DF7FC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803DF810:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x94(3)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_803DF87C
    lwz 0, 0x84(31)
    cmpwi 0, 0x7
    .4byte 0x41820040 # beq .L_803DF87C
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1a
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_80458408
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x248(3)
L_803DF87C:
    lwz 4, 0x84(31)
    lis 3, lbl_804B0568@ha
    addi 0, 3, lbl_804B0568@l
    .4byte 0x806D9210 # lwz r3, lbl_8053ADD0@sda21(r0)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    mr 3, 31
    bl fn_803DCCA4
    lbz 0, 0xa0(31)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_803DF8E4
    lwz 3, 0x64(31)
    lbz 4, 0x9e(31)
    bl fn_80427DB4
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DF8D8
    li 3, 0x0
    li 0, 0x2
    stb 3, 0xa1(31)
    stb 0, 0xa0(31)
    .4byte 0x480000FC # b .L_803DF9D0
L_803DF8D8:
    lwz 3, 0x64(31)
    bl fn_80427D94
    .4byte 0x480000F0 # b .L_803DF9D0
L_803DF8E4:
    cmplwi 0, 0x2
    .4byte 0x408200D0 # bne .L_803DF9B8
    lwz 3, 0x64(31)
    bl fn_80427D60
    mr 30, 3
    bl fn_804286A0
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803DF92C
    lbz 0, 0xa1(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803DF92C
    lwz 3, 0x64(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 12, 0x14(3)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xa1(31)
L_803DF92C:
    lwz 0, 0x68(31)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_803DF948
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_803DF95C
L_803DF948:
    lwz 3, 0x64(31)
    bl fn_80427D94
    li 0, 0x0
    stb 0, 0xa0(31)
    .4byte 0x48000078 # b .L_803DF9D0
L_803DF95C:
    lwz 3, 0x64(31)
    lwz 12, 0x10(3)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_803DF97C
    cmpwi 30, 0x0
    .4byte 0x40820058 # bne .L_803DF9D0
L_803DF97C:
    lwz 3, 0x64(31)
    bl fn_80427D94
    lwz 3, 0x64(31)
    lbz 4, 0x9e(31)
    bl fn_80427DB4
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_803DF9A4
    li 0, 0x0
    stb 0, 0xa1(31)
    .4byte 0x48000030 # b .L_803DF9D0
L_803DF9A4:
    lwz 3, 0x64(31)
    bl fn_80427D94
    li 0, 0x1
    stb 0, 0xa0(31)
    .4byte 0x4800001C # b .L_803DF9D0
L_803DF9B8:
    cmplwi 0, 0x3
    .4byte 0x40820014 # bne .L_803DF9D0
    lwz 3, 0x64(31)
    bl fn_80427D94
    li 0, 0x0
    stb 0, 0xa0(31)
L_803DF9D0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803DF9E8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0020664 # lfs f0, lbl_80543604@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x3c
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x0
    stw 30, 0x18(1)
    mr 30, 31
    stw 29, 0x14(1)
    li 29, 0x0
    stw 3, 0x88(31)
    stw 3, 0x8c(31)
    stw 3, 0x90(31)
    sth 3, 0x9c(31)
    stfs 0, 0x7c(31)
    stfs 0, 0x78(31)
    sth 3, 0x9a(31)
    sth 0, 0x98(31)
    stb 3, 0xa1(31)
L_803DFA3C:
    lwz 3, 0x34(30)
    li 0, 0x1
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    stb 0, 0xb0(3)
    lwz 3, 0x34(30)
    bl fn_80402E08
    lwz 3, 0x34(30)
    li 4, 0x0
    li 0, 0x1
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    sth 4, 0x20(3)
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    lwz 3, 0x44(30)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x44(30)
    bl fn_80402E08
    lwz 3, 0x44(30)
    addi 29, 29, 0x1
    li 0, 0x0
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    sth 0, 0x20(3)
    .4byte 0x4180FF9C # blt .L_803DFA3C
    lwz 3, 0x30(31)
    li 0, 0x1
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC042067C # lfs f2, lbl_8054361C@sda21(r0)
    stb 0, 0xb0(3)
    lwz 3, 0x30(31)
    bl fn_80402E08
    lwz 3, 0x30(31)
    li 0, 0x0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC042068C # lfs f2, lbl_8054362C@sda21(r0)
    lwz 3, 0x5c(31)
    bl fn_80402E08
    lwz 4, 0x5c(31)
    li 0, 0x0
    lis 3, 0x696d
    li 5, 0x50
    sth 0, 0x22(4)
    addi 6, 3, 0x3031
    lwz 3, 0x40(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x14(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x18(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x1c(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x24(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x28(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x2c(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x54(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x58(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3131
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3132
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x84(31)
    stw 0, 0x68(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

