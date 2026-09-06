# 901KB-gap non-actor manager block: 9 functions, 23,256 bytes
# (0x8044C7F0-0x804522C8), fully contiguous at the extab AND
# extabindex level with the neighboring pre-existing extab_8044c5cc.s
# and extab_804522c8.s entries (zero gap on either side). Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011504
etb_80011504:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80011504, 8

.global etb_8001150C
etb_8001150C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8001150C, 8

.global etb_80011514
etb_80011514:
    .4byte 0x30CA0000
    .4byte 0x00000000
.size etb_80011514, 8

.global etb_8001151C
etb_8001151C:
    .4byte 0x30CA0000
    .4byte 0x00000000
.size etb_8001151C, 8

.global etb_80011524
etb_80011524:
    .4byte 0x58CA0000
    .4byte 0x00000000
.size etb_80011524, 8

.global etb_8001152C
etb_8001152C:
    .4byte 0x490A0000
    .4byte 0x00000000
.size etb_8001152C, 8

.section extabindex, "a"
.balign 4
.global eti_80021460
eti_80021460:
    .4byte fn_8044C7F0
    .4byte 0x00000178
    .4byte etb_80011504
.size eti_80021460, 12

.global eti_8002146C
eti_8002146C:
    .4byte fn_8044C968
    .4byte 0x00000198
    .4byte etb_8001150C
.size eti_8002146C, 12

.global eti_80021478
eti_80021478:
    .4byte fn_8044CB08
    .4byte 0x00000788
    .4byte etb_80011514
.size eti_80021478, 12

.global eti_80021484
eti_80021484:
    .4byte fn_8044D298
    .4byte 0x000005FC
    .4byte etb_8001151C
.size eti_80021484, 12

.global eti_80021490
eti_80021490:
    .4byte fn_8044D894
    .4byte 0x00001DD0
    .4byte etb_80011524
.size eti_80021490, 12

.global eti_8002149C
eti_8002149C:
    .4byte fn_8044F680
    .4byte 0x00002C48
    .4byte etb_8001152C
.size eti_8002149C, 12

.text
.balign 4
.global fn_8044C7F0
.global fn_8044C968
.global fn_8044CB00
.global fn_8044CB08
.global fn_8044D290
.global fn_8044D298
.global fn_8044D894
.global fn_8044F664
.global fn_8044F680

fn_8044C7F0:
    stwu 1, -0x20(1)
    mflr 0
    mr 6, 3
    li 5, 0x1
    stw 0, 0x24(1)
    li 0, 0x7
    li 4, 0x0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mtctr 0
L_8044C81C:
    lwz 7, 0x6c(6)
    cmplwi 7, 0x0
    .4byte 0x41820018 # beq .L_8044C83C
    lwz 0, 0xf4(7)
    ori 0, 0, 0x1
    stw 0, 0xf4(7)
    stw 5, 0x24(7)
    stw 4, 0x6c(6)
L_8044C83C:
    lwz 7, 0x88(6)
    cmplwi 7, 0x0
    .4byte 0x41820018 # beq .L_8044C85C
    lwz 0, 0xf4(7)
    ori 0, 0, 0x1
    stw 0, 0xf4(7)
    stw 5, 0x24(7)
    stw 4, 0x88(6)
L_8044C85C:
    addi 6, 6, 0x4
    .4byte 0x4200FFBC # bdnz .L_8044C81C
    lwz 7, 0xb0(3)
    li 4, 0x1
    li 0, 0x0
    cmplwi 7, 0x0
    .4byte 0x41820018 # beq .L_8044C88C
    lwz 5, 0xf4(7)
    ori 5, 5, 0x1
    stw 5, 0xf4(7)
    stw 4, 0x24(7)
    stw 0, 0xb0(3)
L_8044C88C:
    lwz 7, 0xb4(3)
    cmplwi 7, 0x0
    .4byte 0x41820018 # beq .L_8044C8AC
    lwz 5, 0xf4(7)
    ori 5, 5, 0x1
    stw 5, 0xf4(7)
    stw 4, 0x24(7)
    stw 0, 0xb4(3)
L_8044C8AC:
    addi 6, 3, 0x8
    lwz 7, 0xb8(3)
    cmplwi 7, 0x0
    .4byte 0x41820018 # beq .L_8044C8D0
    lwz 5, 0xf4(7)
    ori 5, 5, 0x1
    stw 5, 0xf4(7)
    stw 4, 0x24(7)
    stw 0, 0xb0(6)
L_8044C8D0:
    lwz 7, 0xb4(6)
    cmplwi 7, 0x0
    .4byte 0x41820018 # beq .L_8044C8F0
    lwz 5, 0xf4(7)
    ori 5, 5, 0x1
    stw 5, 0xf4(7)
    stw 4, 0x24(7)
    stw 0, 0xb4(6)
L_8044C8F0:
    mr 30, 3
    li 29, 0x0
    li 31, 0x0
L_8044C8FC:
    lwz 0, 0xa4(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8044C91C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xa4(30)
    bl fn_800EC240
    stw 31, 0xa4(30)
L_8044C91C:
    lwz 0, 0xc0(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8044C93C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xc0(30)
    bl fn_800EC240
    stw 31, 0xc0(30)
L_8044C93C:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFB4 # blt .L_8044C8FC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044C968:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 31
    stw 29, 0x14(1)
    li 29, 0x0
L_8044C98C:
    lwz 3, 0x48(30)
    .4byte 0xC0220E58 # lfs f1, lbl_80543DF8@sda21(r0)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x60(30)
    .4byte 0xC0220E58 # lfs f1, lbl_80543DF8@sda21(r0)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x48(30)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x60(30)
    sth 0, 0x20(3)
    lwz 3, 0x48(30)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x48(30)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x26(3)
    lwz 3, 0x54(30)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x54(30)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x26(3)
    lwz 3, 0x60(30)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x60(30)
    addi 29, 29, 0x1
    li 0, 0x0
    addi 30, 30, 0x4
    cmpwi 29, 0x3
    sth 0, 0x26(3)
    .4byte 0x4180FF48 # blt .L_8044C98C
    lwz 3, 0x4(31)
    lis 4, 0x756c
    addi 6, 4, 0x3031
    li 5, 0x5063
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 0, 0xf8(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    .4byte 0xC0620E58 # lfs f3, lbl_80543DF8@sda21(r0)
    add 4, 31, 0
    lfs 1, 0x114(31)
    lfs 2, 0x118(31)
    lfs 0, 0x108(4)
    fadds 1, 3, 1
    lwz 12, 0x10(12)
    fadds 2, 2, 0
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x756c
    addi 6, 4, 0x3031
    li 5, 0x5063
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
    sth 3, 0x132(31)
    sth 3, 0xfe(31)
    sth 0, 0xfa(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044CB00:
    lbz 3, 0x140(3)
    blr

fn_8044CB08:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stmw 26, 0x68(1)
    mr. 26, 4
    lis 4, lbl_80490FC8@ha
    mr 27, 3
    addi 31, 4, lbl_80490FC8@l
    .4byte 0x41800724 # blt .L_8044D264
    cmpwi 26, 0x6
    .4byte 0x4181071C # bgt .L_8044D264
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134D20
    li 0, 0x1
    li 3, 0x2
    stb 0, 0x140(27)
    li 0, 0x0
    addi 30, 31, 0x0
    addi 29, 31, 0x18
    stb 3, 0x137(27)
    li 28, 0x0
    sth 0, 0x134(27)
    stb 26, 0x138(27)
L_8044CB80:
    lbz 4, 0x15f(27)
    li 3, 0x64
    li 0, 0x0
    stb 3, 0x38(1)
    lwz 5, 0x0(30)
    stb 3, 0x39(1)
    lwz 6, 0x4(30)
    stb 3, 0x3a(1)
    stb 4, 0x3b(1)
    lwz 3, 0x38(1)
    stb 0, 0x40(1)
    stw 3, 0x3c(1)
    lbz 3, 0x157(27)
    stb 0, 0x41(1)
    stb 0, 0x42(1)
    stb 3, 0x43(1)
    lwz 0, 0x40(1)
    stw 0, 0x44(1)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    addi 5, 1, 0x3c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 0, 0x14f(27)
    li 3, 0x50
    stb 3, 0x28(1)
    lwz 5, 0x0(29)
    stb 3, 0x29(1)
    lwz 6, 0x4(29)
    stb 3, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stb 3, 0x30(1)
    stw 0, 0x2c(1)
    lbz 0, 0x147(27)
    stb 3, 0x31(1)
    stb 3, 0x32(1)
    stb 0, 0x33(1)
    lwz 0, 0x30(1)
    stw 0, 0x34(1)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x2c
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lbz 0, 0x173(27)
    li 3, 0x96
    stb 3, 0x8(1)
    lwz 5, 0x0(29)
    stb 3, 0x9(1)
    lwz 6, 0x4(29)
    stb 3, 0xa(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stb 3, 0x10(1)
    stw 0, 0xc(1)
    lbz 0, 0x16f(27)
    stb 3, 0x11(1)
    stb 3, 0x12(1)
    stb 0, 0x13(1)
    lwz 0, 0x10(1)
    stb 3, 0x18(1)
    stw 0, 0x14(1)
    lbz 0, 0x16b(27)
    stb 3, 0x19(1)
    stb 3, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stb 3, 0x20(1)
    stw 0, 0x1c(1)
    lbz 0, 0x167(27)
    stb 3, 0x21(1)
    stb 3, 0x22(1)
    stb 0, 0x23(1)
    lwz 0, 0x20(1)
    stw 0, 0x24(1)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    addi 6, 1, 0x14
    addi 7, 1, 0xc
    bl fn_800A0CE4
    lwz 3, 0x4(27)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0x3
    addi 30, 30, 0x8
    .4byte 0x4180FE38 # blt .L_8044CB80
    lwz 3, 0x4(27)
    addi 0, 31, 0x168
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    li 4, 0x0
    addi 0, 31, 0x210
    stb 4, 0xb0(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    li 4, 0x0
    addi 0, 31, 0x1a0
    stb 4, 0xb0(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(27)
    addi 0, 31, 0x1d8
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lbz 4, 0x138(27)
    slwi 0, 4, 2
    add 3, 27, 0
    lwz 0, 0x6c(3)
    cmplwi 0, 0x0
    .4byte 0x4082019C # bne .L_8044CFE4
    lwz 3, 0x4(27)
    slwi 4, 4, 3
    addi 0, 31, 0x210
    lwz 12, 0x0(3)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 0, 31, 0x210
    lfs 0, 0x24(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fsubs 30, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(27)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 0, 31, 0x210
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fadds 1, 0, 31
    lwz 12, 0x0(3)
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    fmadds 30, 30, 0, 1
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 0, 31, 0x210
    lfs 0, 0x20(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(27)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    addi 5, 31, 0x3e8
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    addi 4, 1, 0x54
    fadds 3, 1, 31
    .4byte 0xC0420E60 # lfs f2, lbl_80543E00@sda21(r0)
    stfs 30, 0x58(1)
    li 3, 0x0
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    fmadds 2, 29, 2, 3
    stfs 0, 0x5c(1)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x54(1)
    lbz 0, 0x138(27)
    slwi 0, 0, 1
    lhzx 5, 5, 0
    bl fn_8013CC50
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 4, 27, 0
    stw 3, 0x6c(4)
L_8044CFE4:
    lbz 4, 0x138(27)
    slwi 0, 4, 2
    add 3, 27, 0
    lwz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x4082019C # bne .L_8044D194
    lwz 3, 0x4(27)
    slwi 4, 4, 3
    addi 0, 31, 0x210
    lwz 12, 0x0(3)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 0, 31, 0x210
    lfs 0, 0x24(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(27)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 0, 31, 0x210
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fadds 1, 0, 31
    lwz 12, 0x0(3)
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 0, 31, 0x210
    lfs 0, 0x20(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(27)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    addi 5, 31, 0x3f8
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    addi 4, 1, 0x48
    fadds 3, 1, 31
    .4byte 0xC0420E60 # lfs f2, lbl_80543E00@sda21(r0)
    stfs 30, 0x4c(1)
    li 3, 0x0
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    fmadds 2, 29, 2, 3
    stfs 0, 0x50(1)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x48(1)
    lbz 0, 0x138(27)
    slwi 0, 0, 1
    lhzx 5, 5, 0
    bl fn_8013CC50
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 4, 27, 0
    stw 3, 0x88(4)
L_8044D194:
    lbz 0, 0x138(27)
    lis 3, 0x756c
    addi 6, 3, 0x3031
    li 5, 0x5063
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x6c(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x6c(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x6c(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x88(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x88(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x88(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8044D264:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    lmw 26, 0x68(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_8044D290:
    lbz 3, 0x140(3)
    blr

fn_8044D298:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stmw 26, 0x58(1)
    mr. 26, 4
    lis 4, lbl_80490FC8@ha
    mr 27, 3
    addi 31, 4, lbl_80490FC8@l
    .4byte 0x41800598 # blt .L_8044D868
    cmpwi 26, 0x3
    .4byte 0x41810590 # bgt .L_8044D868
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134D20
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x140(27)
    addi 30, 31, 0x0
    addi 29, 31, 0x18
    li 28, 0x0
    stb 3, 0x137(27)
    sth 0, 0x134(27)
    stb 26, 0x138(27)
L_8044D30C:
    lbz 4, 0x15f(27)
    li 3, 0x64
    li 0, 0x0
    stb 3, 0x38(1)
    lwz 5, 0x0(30)
    stb 3, 0x39(1)
    lwz 6, 0x4(30)
    stb 3, 0x3a(1)
    stb 4, 0x3b(1)
    lwz 3, 0x38(1)
    stb 0, 0x40(1)
    stw 3, 0x3c(1)
    lbz 3, 0x157(27)
    stb 0, 0x41(1)
    stb 0, 0x42(1)
    stb 3, 0x43(1)
    lwz 0, 0x40(1)
    stw 0, 0x44(1)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    addi 5, 1, 0x3c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 0, 0x14f(27)
    li 3, 0x50
    stb 3, 0x28(1)
    lwz 5, 0x0(29)
    stb 3, 0x29(1)
    lwz 6, 0x4(29)
    stb 3, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stb 3, 0x30(1)
    stw 0, 0x2c(1)
    lbz 0, 0x147(27)
    stb 3, 0x31(1)
    stb 3, 0x32(1)
    stb 0, 0x33(1)
    lwz 0, 0x30(1)
    stw 0, 0x34(1)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x2c
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lbz 0, 0x173(27)
    li 3, 0x96
    stb 3, 0x8(1)
    lwz 5, 0x0(29)
    stb 3, 0x9(1)
    lwz 6, 0x4(29)
    stb 3, 0xa(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stb 3, 0x10(1)
    stw 0, 0xc(1)
    lbz 0, 0x16f(27)
    stb 3, 0x11(1)
    stb 3, 0x12(1)
    stb 0, 0x13(1)
    lwz 0, 0x10(1)
    stb 3, 0x18(1)
    stw 0, 0x14(1)
    lbz 0, 0x16b(27)
    stb 3, 0x19(1)
    stb 3, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stb 3, 0x20(1)
    stw 0, 0x1c(1)
    lbz 0, 0x167(27)
    stb 3, 0x21(1)
    stb 3, 0x22(1)
    stb 0, 0x23(1)
    lwz 0, 0x20(1)
    stw 0, 0x24(1)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    addi 6, 1, 0x14
    addi 7, 1, 0xc
    bl fn_800A0CE4
    lwz 3, 0x4(27)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0x3
    addi 30, 30, 0x8
    .4byte 0x4180FE38 # blt .L_8044D30C
    lwz 3, 0x4(27)
    addi 0, 31, 0x248
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    li 4, 0x1
    addi 0, 31, 0x248
    stb 4, 0xb0(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(27)
    addi 0, 31, 0x268
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(27)
    addi 0, 31, 0x288
    lbz 4, 0x138(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lbz 4, 0x138(27)
    slwi 0, 4, 2
    add 3, 27, 0
    lwz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082020C # bne .L_8044D7EC
    lwz 3, 0x4(27)
    slwi 4, 4, 3
    addi 0, 31, 0x268
    lwz 12, 0x0(3)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 0, 31, 0x248
    lfs 0, 0x24(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fsubs 30, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x616a
    lwz 3, 0x4(27)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 0, 31, 0x268
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fadds 31, 0, 31
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 0, 31, 0x268
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fadds 1, 0, 31
    lwz 12, 0x0(3)
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    fmadds 30, 30, 0, 1
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 0, 31, 0x248
    lfs 0, 0x20(3)
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x616a
    lwz 3, 0x4(27)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    addi 0, 31, 0x268
    lwz 3, 0x4(27)
    lbz 4, 0x138(27)
    fadds 31, 0, 31
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    .4byte 0x38A20E38 # li r5, lbl_80543DD8@sda21
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    addi 4, 1, 0x48
    fadds 3, 1, 31
    .4byte 0xC0420E60 # lfs f2, lbl_80543E00@sda21(r0)
    stfs 30, 0x4c(1)
    li 3, 0x0
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    fmadds 2, 29, 2, 3
    stfs 0, 0x50(1)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x48(1)
    lbz 0, 0x138(27)
    slwi 0, 0, 1
    lhzx 5, 5, 0
    bl fn_8013CC50
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 4, 27, 0
    stw 3, 0xb0(4)
L_8044D7EC:
    lbz 0, 0x138(27)
    lis 3, 0x756c
    addi 6, 3, 0x3031
    li 5, 0x5063
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0xb0(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0xb0(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lbz 0, 0x138(27)
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0xb0(3)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8044D868:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lmw 26, 0x58(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8044D894:
    stwu 1, -0x160(1)
    mflr 0
    stw 0, 0x164(1)
    stfd 31, 0x150(1)
    psq_st 31, 0x158(1), 0, 0
    stfd 30, 0x140(1)
    psq_st 30, 0x148(1), 0, 0
    stfd 29, 0x130(1)
    psq_st 29, 0x138(1), 0, 0
    stmw 21, 0x104(1)
    lis 4, lbl_80490FC8@ha
    mr 31, 3
    addi 28, 4, lbl_80490FC8@l
    li 24, 0x0
    addi 26, 28, 0x0
    addi 27, 28, 0x18
L_8044D8D4:
    lha 0, 0xf8(31)
    cmpw 24, 0
    .4byte 0x40820130 # bne .L_8044DA0C
    lwz 0, 0x15c(31)
    lwz 5, 0x0(26)
    stw 0, 0x40(1)
    lwz 6, 0x4(26)
    lwz 0, 0x154(31)
    stw 0, 0x44(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    addi 5, 1, 0x40
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x14c(31)
    lwz 5, 0x0(27)
    stw 0, 0x38(1)
    lwz 6, 0x4(27)
    lwz 0, 0x144(31)
    stw 0, 0x3c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x3c
    addi 5, 1, 0x38
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x164(31)
    lwz 12, 0x0(3)
    lwz 6, 0x168(31)
    lwz 4, 0x16c(31)
    lwz 0, 0x170(31)
    lwz 12, 0x3c(12)
    stw 5, 0xc4(1)
    lwz 5, 0x0(27)
    stw 6, 0xc8(1)
    lwz 6, 0x4(27)
    stw 4, 0xcc(1)
    stw 0, 0xd0(1)
    mtctr 12
    bctrl
    lwz 10, 0xd0(1)
    addi 4, 1, 0x18
    lwz 9, 0xcc(1)
    addi 5, 1, 0x1c
    lwz 8, 0xc8(1)
    addi 6, 1, 0x20
    lwz 0, 0xc4(1)
    addi 7, 1, 0x24
    stw 10, 0x24(1)
    stw 9, 0x20(1)
    stw 8, 0x1c(1)
    stw 0, 0x18(1)
    bl fn_800A0CE4
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800012C # b .L_8044DB34
L_8044DA0C:
    lwz 0, 0x160(31)
    lwz 5, 0x0(26)
    stw 0, 0x30(1)
    lwz 6, 0x4(26)
    lwz 0, 0x158(31)
    stw 0, 0x34(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x30
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x150(31)
    lwz 5, 0x0(27)
    stw 0, 0x28(1)
    lwz 6, 0x4(27)
    lwz 0, 0x148(31)
    stw 0, 0x2c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2c
    addi 5, 1, 0x28
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x174(31)
    lwz 12, 0x0(3)
    lwz 6, 0x178(31)
    lwz 4, 0x17c(31)
    lwz 0, 0x180(31)
    lwz 12, 0x3c(12)
    stw 5, 0xb4(1)
    lwz 5, 0x0(27)
    stw 6, 0xb8(1)
    lwz 6, 0x4(27)
    stw 4, 0xbc(1)
    stw 0, 0xc0(1)
    mtctr 12
    bctrl
    lwz 10, 0xc0(1)
    addi 4, 1, 0x8
    lwz 9, 0xbc(1)
    addi 5, 1, 0xc
    lwz 8, 0xb8(1)
    addi 6, 1, 0x10
    lwz 0, 0xb4(1)
    addi 7, 1, 0x14
    stw 10, 0x14(1)
    stw 9, 0x10(1)
    stw 8, 0xc(1)
    stw 0, 0x8(1)
    bl fn_800A0CE4
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8044DB34:
    addi 24, 24, 0x1
    addi 27, 27, 0x8
    cmpwi 24, 0x3
    addi 26, 26, 0x8
    .4byte 0x4180FD90 # blt .L_8044D8D4
    li 30, 0x0
    li 21, 0x0
    li 23, 0x1
L_8044DB54:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    slw 0, 23, 21
    lbz 3, 0x31f8(3)
    clrlwi 0, 0, 24
    and 3, 0, 3
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820008 # beq .L_8044DB80
    addi 30, 30, 0x1
L_8044DB80:
    addi 21, 21, 0x1
    cmpwi 21, 0x8
    .4byte 0x4180FFCC # blt .L_8044DB54
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 0, 0x87(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820180 # beq .L_8044DD28
    lwz 5, 0x2c(31)
    lis 6, lbl_80529DEC@ha
    lis 4, 0x6666
    lis 3, lbl_804B1D30@ha
    lwz 7, 0x4(5)
    li 8, 0x1
    lis 5, 0x5449
    addi 6, 6, lbl_80529DEC@l
    stb 8, 0xb0(7)
    addi 0, 4, 0x6667
    addi 4, 3, lbl_804B1D30@l
    addi 3, 5, 0x4d47
    lwz 5, 0x30(31)
    lwz 5, 0x4(5)
    stb 8, 0xb0(5)
    lbz 7, 0x24f(6)
    mulhw 0, 0, 7
    srawi 5, 0, 2
    srwi 6, 5, 31
    srawi 0, 0, 2
    add 6, 5, 6
    srwi 5, 0, 31
    mulli 6, 6, 0xa
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    subf 21, 6, 7
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(31)
    lis 4, 0x736b
    li 5, 0x5066
    lwz 12, 0x0(3)
    mr 22, 0
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 22
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6673
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 22
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1D30@ha
    lis 5, 0x5449
    slwi 0, 21, 2
    addi 4, 3, lbl_804B1D30@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 21, 3
    lwz 3, 0x4(31)
    lis 4, 0x736b
    li 5, 0x5066
    lwz 12, 0x0(3)
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 21
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6673
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 21
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x48000020 # b .L_8044DD44
L_8044DD28:
    lwz 3, 0x2c(31)
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x30(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
L_8044DD44:
    li 0, 0x7
    mr 5, 31
    li 4, 0x1
    li 3, 0x0
    mtctr 0
L_8044DD58:
    lwz 6, 0x6c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8044DD78
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 4, 0x24(6)
    stw 3, 0x6c(5)
L_8044DD78:
    lwz 6, 0x88(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8044DD98
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 4, 0x24(6)
    stw 3, 0x88(5)
L_8044DD98:
    addi 5, 5, 0x4
    .4byte 0x4200FFBC # bdnz .L_8044DD58
    lwz 5, 0xb0(31)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_8044DDC8
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0xb0(31)
L_8044DDC8:
    lwz 5, 0xb4(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_8044DDE8
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0xb4(31)
L_8044DDE8:
    lwz 5, 0xb8(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_8044DE08
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0xb8(31)
L_8044DE08:
    lwz 5, 0xbc(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_8044DE28
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0xbc(31)
L_8044DE28:
    li 25, 0x0
    mr 26, 31
    mr 24, 25
    mr 23, 25
L_8044DE38:
    lwz 0, 0xa4(26)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8044DE58
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xa4(26)
    bl fn_800EC240
    stw 24, 0xa4(26)
L_8044DE58:
    lwz 0, 0xc0(26)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8044DE78
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xc0(26)
    bl fn_800EC240
    stw 23, 0xc0(26)
L_8044DE78:
    addi 25, 25, 0x1
    addi 26, 26, 0x4
    cmpwi 25, 0x3
    .4byte 0x4180FFB4 # blt .L_8044DE38
    lis 3, lbl_80529DEC@ha
    li 24, -0x1
    addi 29, 3, lbl_80529DEC@l
    lwz 3, 0x118(29)
    cmpwi 3, 0x7
    .4byte 0x40800018 # bge .L_8044DEB4
    lwz 0, 0x11c(29)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8044DEB4
    mr 24, 3
    .4byte 0x48000024 # b .L_8044DED4
L_8044DEB4:
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lha 3, 0x2ec(3)
    extsh. 0, 3
    .4byte 0x40810010 # ble .L_8044DED4
    cmpwi 3, 0x7
    .4byte 0x41810008 # bgt .L_8044DED4
    subi 24, 3, 0x1
L_8044DED4:
    cmpwi 24, 0x0
    .4byte 0x418004F0 # blt .L_8044E3C8
    lwz 0, 0xa4(31)
    cmplwi 0, 0x0
    .4byte 0x4082019C # bne .L_8044E080
    lwz 3, 0x4(31)
    slwi 0, 24, 3
    addi 21, 28, 0x210
    lwz 12, 0x0(3)
    add 21, 21, 0
    lwz 5, 0x0(21)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(21)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 30, 1, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(21)
    lwz 12, 0x3c(12)
    fmadds 30, 30, 0, 1
    lwz 6, 0x4(21)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    slwi 0, 24, 1
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    addi 3, 28, 0x408
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhzx 5, 3, 0
    addi 4, 1, 0xa8
    stfs 30, 0xac(1)
    li 3, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0xb0(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 2, 0xa8(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xa4(31)
    lwz 3, 0xa4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    lwz 3, 0xa4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 3, 0xa4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lwz 3, 0xa4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8044E080:
    lwz 0, 0xa8(31)
    cmplwi 0, 0x0
    .4byte 0x4082019C # bne .L_8044E224
    lwz 3, 0x4(31)
    slwi 0, 24, 3
    addi 21, 28, 0x210
    lwz 12, 0x0(3)
    add 21, 21, 0
    lwz 5, 0x0(21)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(21)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(21)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(21)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    slwi 0, 24, 1
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    addi 3, 28, 0x418
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhzx 5, 3, 0
    addi 4, 1, 0x9c
    stfs 30, 0xa0(1)
    li 3, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0xa4(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 2, 0x9c(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xa8(31)
    lwz 3, 0xa8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    lwz 3, 0xa8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 3, 0xa8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lwz 3, 0xa8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8044E224:
    lwz 0, 0xac(31)
    cmplwi 0, 0x0
    .4byte 0x4082019C # bne .L_8044E3C8
    lwz 3, 0x4(31)
    slwi 0, 24, 3
    addi 21, 28, 0x210
    lwz 12, 0x0(3)
    add 21, 21, 0
    lwz 5, 0x0(21)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(21)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(21)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(21)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    slwi 0, 24, 1
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    addi 3, 28, 0x428
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhzx 5, 3, 0
    addi 4, 1, 0x90
    stfs 30, 0x94(1)
    li 3, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0x98(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 2, 0x90(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xac(31)
    lwz 3, 0xac(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    lwz 3, 0xac(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 3, 0xac(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lwz 3, 0xac(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8044E3C8:
    lwz 4, 0x118(29)
    li 24, -0x1
    cmpwi 4, 0x3
    .4byte 0x40820020 # bne .L_8044E3F4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8044E3F4
    li 24, 0x0
    .4byte 0x48000088 # b .L_8044E478
L_8044E3F4:
    cmpwi 4, 0x4
    .4byte 0x40820020 # bne .L_8044E418
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8044E418
    li 24, 0x1
    .4byte 0x48000064 # b .L_8044E478
L_8044E418:
    cmpwi 4, 0x5
    .4byte 0x40820020 # bne .L_8044E43C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8044E43C
    li 24, 0x2
    .4byte 0x48000040 # b .L_8044E478
L_8044E43C:
    cmpwi 4, 0x6
    .4byte 0x40820020 # bne .L_8044E460
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8044E460
    li 24, 0x3
    .4byte 0x4800001C # b .L_8044E478
L_8044E460:
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lha 3, 0x2ec(3)
    cmpwi 3, 0x8
    .4byte 0x41800008 # blt .L_8044E478
    subi 24, 3, 0x8
L_8044E478:
    cmpwi 24, 0x0
    .4byte 0x418005F8 # blt .L_8044EA74
    lwz 0, 0xc0(31)
    cmplwi 0, 0x0
    .4byte 0x408201F4 # bne .L_8044E67C
    lwz 3, 0x4(31)
    slwi 21, 24, 3
    addi 22, 28, 0x268
    lwz 12, 0x0(3)
    add 22, 22, 21
    lwz 5, 0x0(22)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 23, 28, 0x248
    lfs 0, 0x24(3)
    add 23, 23, 21
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(22)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    slwi 0, 24, 1
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    .4byte 0x38620E40 # li r3, lbl_80543DE0@sda21
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhzx 5, 3, 0
    addi 4, 1, 0x84
    stfs 30, 0x88(1)
    li 3, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0x8c(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 2, 0x84(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xc0(31)
    lwz 3, 0xc0(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    lwz 3, 0xc0(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 3, 0xc0(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lwz 3, 0xc0(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8044E67C:
    lwz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x408201F4 # bne .L_8044E878
    lwz 3, 0x4(31)
    slwi 21, 24, 3
    addi 22, 28, 0x268
    lwz 12, 0x0(3)
    add 22, 22, 21
    lwz 5, 0x0(22)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 23, 28, 0x248
    lfs 0, 0x24(3)
    add 23, 23, 21
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(22)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    slwi 0, 24, 1
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    .4byte 0x38620E48 # li r3, lbl_80543DE8@sda21
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhzx 5, 3, 0
    addi 4, 1, 0x78
    stfs 30, 0x7c(1)
    li 3, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0x80(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 2, 0x78(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xc4(31)
    lwz 3, 0xc4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    lwz 3, 0xc4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 3, 0xc4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lwz 3, 0xc4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8044E878:
    lwz 0, 0xc8(31)
    cmplwi 0, 0x0
    .4byte 0x408201F4 # bne .L_8044EA74
    lwz 3, 0x4(31)
    slwi 21, 24, 3
    addi 22, 28, 0x268
    lwz 12, 0x0(3)
    add 22, 22, 21
    lwz 5, 0x0(22)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 23, 28, 0x248
    lfs 0, 0x24(3)
    add 23, 23, 21
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(22)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    slwi 0, 24, 1
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    .4byte 0x38620E50 # li r3, lbl_80543DF0@sda21
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhzx 5, 3, 0
    addi 4, 1, 0x6c
    stfs 30, 0x70(1)
    li 3, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0x74(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 2, 0x6c(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xc8(31)
    lwz 3, 0xc8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    lwz 3, 0xc8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 3, 0xc8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    lwz 3, 0xc8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8044EA74:
    mr 29, 31
    addi 26, 28, 0x168
    addi 27, 28, 0x210
    addi 25, 28, 0x3e8
    addi 24, 28, 0x3f8
    li 23, 0x0
L_8044EA8C:
    cmpw 23, 30
    .4byte 0x408002F0 # bge .L_8044ED80
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 0, 0x6c(29)
    cmplwi 0, 0x0
    .4byte 0x40820148 # bne .L_8044EC2C
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(27)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(27)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    addi 4, 1, 0x60
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    li 3, 0x0
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhz 5, 0x0(25)
    li 6, 0x0
    stfs 30, 0x64(1)
    li 7, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0x68(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x60(1)
    bl fn_8013CC50
    stw 3, 0x6c(29)
L_8044EC2C:
    lwz 0, 0x88(29)
    cmplwi 0, 0x0
    .4byte 0x40820194 # bne .L_8044EDC8
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(27)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(27)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    addi 4, 1, 0x54
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    li 3, 0x0
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhz 5, 0x0(24)
    li 6, 0x0
    stfs 30, 0x58(1)
    li 7, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0x5c(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x54(1)
    bl fn_8013CC50
    stw 3, 0x88(29)
    .4byte 0x4800004C # b .L_8044EDC8
L_8044ED80:
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_8044EDC8:
    addi 23, 23, 0x1
    addi 27, 27, 0x8
    cmpwi 23, 0x7
    addi 29, 29, 0x4
    addi 25, 25, 0x2
    addi 24, 24, 0x2
    addi 26, 26, 0x8
    .4byte 0x4180FCA8 # blt .L_8044EA8C
    mr 25, 31
    addi 24, 28, 0x248
    addi 26, 28, 0x268
    li 23, 0x0
    .4byte 0x3B620E38 # li r27, lbl_80543DD8@sda21
L_8044EDFC:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    li 0, 0x1
    slw 0, 0, 23
    lbz 3, 0x31f7(3)
    clrlwi 0, 0, 24
    and 3, 0, 3
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x418201CC # beq .L_8044EFF0
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 0, 0xb0(25)
    cmplwi 0, 0x0
    .4byte 0x408201C0 # bne .L_8044F014
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(26)
    lwz 12, 0x3c(12)
    fmadds 30, 29, 0, 1
    lwz 6, 0x4(26)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    addi 4, 1, 0x48
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    li 3, 0x0
    fadds 2, 1, 31
    .4byte 0xC0220E60 # lfs f1, lbl_80543E00@sda21(r0)
    lhz 5, 0x0(27)
    li 6, 0x0
    stfs 30, 0x4c(1)
    li 7, 0x0
    fmadds 2, 29, 1, 2
    stfs 0, 0x50(1)
    .4byte 0xC0220E64 # lfs f1, lbl_80543E04@sda21(r0)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x48(1)
    bl fn_8013CC50
    stw 3, 0xb0(25)
    .4byte 0x48000028 # b .L_8044F014
L_8044EFF0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8044F014:
    addi 23, 23, 0x1
    addi 25, 25, 0x4
    cmpwi 23, 0x4
    addi 26, 26, 0x8
    addi 27, 27, 0x2
    addi 24, 24, 0x8
    .4byte 0x4180FDD0 # blt .L_8044EDFC
    li 0, 0x0
    li 21, 0x0
    stw 0, 0x11c(31)
    .4byte 0x4800001C # b .L_8044F058
L_8044F040:
    mr 3, 21
    bl fn_80236100
    lwz 0, 0x11c(31)
    addi 21, 21, 0x1
    add 0, 0, 3
    stw 0, 0x11c(31)
L_8044F058:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 21, 3
    .4byte 0x4180FFDC # blt .L_8044F040
    li 3, 0x0
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x40820244 # bne .L_8044F2B8
    addi 24, 28, 0xa8
    addi 25, 28, 0xd8
    li 26, 0x0
    li 27, 0x2710
    mr 23, 26
    mr 28, 24
    mr 30, 25
    li 29, 0x1
L_8044F098:
    lwz 3, 0x4(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stb 26, 0xb0(3)
    lwz 5, 0x0(30)
    lwz 3, 0x4(31)
    lwz 6, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    stb 26, 0xb0(3)
    cmpwi 23, 0x6
    addi 28, 28, 0x8
    addi 30, 30, 0x8
    .4byte 0x4180FFB0 # blt .L_8044F098
    lis 3, 0x6666
    li 28, 0x0
    addi 30, 3, 0x6667
L_8044F0F8:
    divw 6, 26, 27
    clrlwi. 0, 29, 24
    mulhw 0, 30, 27
    mullw 4, 6, 27
    srawi 0, 0, 2
    srwi 3, 0, 31
    subf 26, 4, 26
    add 27, 0, 3
    .4byte 0x41820014 # beq .L_8044F12C
    cmpwi 6, 0x0
    .4byte 0x4082000C # bne .L_8044F12C
    cmpwi 28, 0x4
    .4byte 0x418000E0 # blt .L_8044F208
L_8044F12C:
    clrlwi. 0, 29, 24
    .4byte 0x41820008 # beq .L_8044F138
    li 29, 0x0
L_8044F138:
    lis 3, lbl_804B1D30@ha
    lis 5, 0x5449
    slwi 0, 6, 2
    addi 4, 3, lbl_804B1D30@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 23, 3
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_8044F208:
    addi 28, 28, 0x1
    addi 25, 25, 0x8
    cmpwi 28, 0x5
    addi 24, 24, 0x8
    .4byte 0x4180FEE0 # blt .L_8044F0F8
    lwz 4, 0x24(31)
    lis 0, 0x4330
    lis 3, 0x7762
    li 8, 0x1
    lwz 7, 0x4(4)
    li 4, 0x0
    stw 0, 0xd8(1)
    addi 6, 3, 0x6c69
    .4byte 0xC8420E70 # lfd f2, lbl_80543E10@sda21(r0)
    li 5, 0x5073
    stb 8, 0xb0(7)
    .4byte 0xC0020E64 # lfs f0, lbl_80543E04@sda21(r0)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0xf4(31)
    lha 0, 0x6(3)
    stw 0, 0x12c(31)
    lwz 0, 0x12c(31)
    lwz 3, 0xf4(31)
    xoris 0, 0, 0x8000
    stw 0, 0xdc(1)
    lfd 1, 0xd8(1)
    fsubs 1, 1, 2
    stfs 1, 0x8(3)
    stb 8, 0x13e(31)
    lwz 3, 0xd0(31)
    stfs 0, 0x8(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x1e
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480002CC # b .L_8044F580
L_8044F2B8:
    lwz 0, 0x11c(31)
    subfic 29, 0, 0x7d0
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_8044F2CC
    li 29, 0x0
L_8044F2CC:
    li 30, 0x0
    addi 24, 28, 0xa8
    addi 25, 28, 0xd8
    li 28, 0x2710
    mr 22, 24
    mr 26, 30
    mr 21, 25
    mr 23, 30
    li 27, 0x1
L_8044F2F0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stb 26, 0xb0(3)
    lwz 5, 0x0(21)
    lwz 3, 0x4(31)
    lwz 6, 0x4(21)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 30, 30, 0x1
    stb 23, 0xb0(3)
    cmpwi 30, 0x6
    addi 22, 22, 0x8
    addi 21, 21, 0x8
    .4byte 0x4180FFB0 # blt .L_8044F2F0
    lis 3, 0x6666
    li 26, 0x0
    addi 30, 3, 0x6667
L_8044F350:
    divw 6, 29, 28
    clrlwi. 0, 27, 24
    mulhw 0, 30, 28
    mullw 4, 6, 28
    srawi 0, 0, 2
    srwi 3, 0, 31
    subf 29, 4, 29
    add 28, 0, 3
    .4byte 0x41820014 # beq .L_8044F384
    cmpwi 6, 0x0
    .4byte 0x4082000C # bne .L_8044F384
    cmpwi 26, 0x4
    .4byte 0x418000E0 # blt .L_8044F460
L_8044F384:
    clrlwi. 0, 27, 24
    .4byte 0x41820008 # beq .L_8044F390
    li 27, 0x0
L_8044F390:
    lis 3, lbl_804B1D30@ha
    lis 5, 0x5449
    slwi 0, 6, 2
    addi 4, 3, lbl_804B1D30@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 23, 3
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_8044F460:
    addi 26, 26, 0x1
    addi 25, 25, 0x8
    cmpwi 26, 0x5
    addi 24, 24, 0x8
    .4byte 0x4180FEE0 # blt .L_8044F350
    lwz 3, 0x24(31)
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8044F4A8
    lwz 3, 0x34(31)
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    stw 0, 0x12c(31)
    .4byte 0x4800006C # b .L_8044F510
L_8044F4A8:
    lwz 3, 0x34(31)
    lis 0, 0x4330
    li 4, 0x1
    stw 0, 0xd8(1)
    lwz 3, 0x4(3)
    stw 0, 0xe0(1)
    .4byte 0xC8620E70 # lfd f3, lbl_80543E10@sda21(r0)
    stb 4, 0xb0(3)
    .4byte 0xC0020E68 # lfs f0, lbl_80543E08@sda21(r0)
    lwz 3, 0xf4(31)
    lwz 4, 0x11c(31)
    lha 0, 0x6(3)
    xoris 3, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 3, 0xdc(1)
    stw 0, 0xe4(1)
    lfd 2, 0xd8(1)
    lfd 1, 0xe0(1)
    fsubs 2, 2, 3
    fsubs 1, 1, 3
    fmuls 1, 2, 1
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    stw 0, 0x12c(31)
L_8044F510:
    lwz 4, 0x12c(31)
    lis 0, 0x4330
    lis 3, 0x7762
    stw 0, 0xe8(1)
    xoris 0, 4, 0x8000
    .4byte 0xC8420E70 # lfd f2, lbl_80543E10@sda21(r0)
    stw 0, 0xec(1)
    li 0, 0x1
    lwz 4, 0xf4(31)
    addi 6, 3, 0x6c69
    lfd 1, 0xe8(1)
    li 5, 0x5073
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    fsubs 1, 1, 2
    stfs 1, 0x8(4)
    stb 0, 0x13e(31)
    lwz 3, 0xd0(31)
    stfs 0, 0x8(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8044F580:
    li 0, 0x0
    lis 4, 0x4330
    stw 0, 0x124(31)
    lis 3, 0x756c
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    addi 6, 3, 0x3031
    lwz 0, 0x124(31)
    li 5, 0x5063
    stw 4, 0xe8(1)
    xoris 0, 0, 0x8000
    lwz 3, 0xd8(31)
    stw 0, 0xec(1)
    lfd 0, 0xe8(1)
    stw 4, 0xe0(1)
    fsubs 0, 0, 1
    stw 4, 0xd8(1)
    stfs 0, 0x8(3)
    lwz 0, 0x124(31)
    lwz 3, 0xdc(31)
    xoris 0, 0, 0x8000
    stw 4, 0xf0(1)
    stw 0, 0xe4(1)
    lfd 0, 0xe0(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 0, 0x124(31)
    lwz 3, 0xe0(31)
    xoris 0, 0, 0x8000
    stw 0, 0xdc(1)
    lfd 0, 0xd8(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 0, 0x124(31)
    lwz 3, 0xe4(31)
    xoris 0, 0, 0x8000
    stw 0, 0xf4(1)
    lfd 0, 0xf0(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    psq_l 31, 0x158(1), 0, 0
    lfd 31, 0x150(1)
    psq_l 30, 0x148(1), 0, 0
    lfd 30, 0x140(1)
    psq_l 29, 0x138(1), 0, 0
    lfd 29, 0x130(1)
    lmw 21, 0x104(1)
    lwz 0, 0x164(1)
    mtlr 0
    addi 1, 1, 0x160
    blr

fn_8044F664:
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8044F678
    lwz 3, 0x184(3)
    blr
L_8044F678:
    li 3, 0x9
    blr

fn_8044F680:
    stwu 1, -0x1d0(1)
    mflr 0
    stw 0, 0x1d4(1)
    stfd 31, 0x1c0(1)
    psq_st 31, 0x1c8(1), 0, 0
    stfd 30, 0x1b0(1)
    psq_st 30, 0x1b8(1), 0, 0
    stfd 29, 0x1a0(1)
    psq_st 29, 0x1a8(1), 0, 0
    stfd 28, 0x190(1)
    psq_st 28, 0x198(1), 0, 0
    stmw 23, 0x16c(1)
    mr 31, 3
    li 0, 0x9
    stw 0, 0x184(3)
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lis 4, lbl_80490FC8@ha
    lha 0, 0xfa(31)
    addi 30, 4, lbl_80490FC8@l
    lha 26, 0x238(3)
    li 27, 0x0
    cmpwi 0, 0x2
    lha 25, 0x23c(3)
    lha 24, 0x23a(3)
    .4byte 0x4182000C # beq .L_8044F6F0
    cmpwi 0, 0x3
    .4byte 0x40820260 # bne .L_8044F94C
L_8044F6F0:
    lbz 0, 0x137(31)
    cmplwi 0, 0x0
    .4byte 0x40820178 # bne .L_8044F870
    lha 0, 0xfe(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8044F718
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lwz 3, 0x44(31)
    fmr 2, 1
    bl fn_80402E08
L_8044F718:
    lha 3, 0xfe(31)
    addi 0, 3, 0x1
    sth 0, 0xfe(31)
    lha 0, 0xfe(31)
    cmpw 0, 26
    .4byte 0x41800220 # blt .L_8044F94C
    mr 28, 31
    li 23, 0x0
    li 29, 0x0
L_8044F73C:
    lha 3, 0xfe(31)
    add 0, 26, 29
    cmpw 3, 0
    .4byte 0x41800110 # blt .L_8044F858
    cmpwi 23, 0x2
    .4byte 0x40820024 # bne .L_8044F774
    lwz 3, 0x48(28)
    mr 4, 25
    .4byte 0xC0220E58 # lfs f1, lbl_80543DF8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402B10
    mr 27, 3
    .4byte 0x4800001C # b .L_8044F78C
L_8044F774:
    lwz 3, 0x48(28)
    mr 4, 25
    .4byte 0xC0220E58 # lfs f1, lbl_80543DF8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402B10
L_8044F78C:
    lwz 3, 0x60(28)
    mr 4, 25
    .4byte 0xC0220E58 # lfs f1, lbl_80543DF8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x48(28)
    mr 4, 25
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x54(28)
    mr 4, 25
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x60(28)
    mr 4, 25
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lha 0, 0xf8(31)
    cmpw 23, 0
    .4byte 0x40820070 # bne .L_8044F858
    lwz 3, 0x48(28)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lis 4, 0x756c
    lwz 3, 0x4(31)
    addi 6, 4, 0x3031
    li 5, 0x5063
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 4, 0x48(28)
    lha 0, 0xf8(31)
    lfs 0, 0x8(4)
    slwi 4, 0, 2
    lwz 12, 0x0(3)
    addi 0, 4, 0x108
    fsubs 1, 30, 0
    lfs 3, 0x114(31)
    lfs 2, 0x118(31)
    lfsx 0, 31, 0
    fadds 1, 3, 1
    lwz 12, 0x10(12)
    fadds 2, 2, 0
    mtctr 12
    bctrl
L_8044F858:
    addi 23, 23, 0x1
    add 29, 29, 24
    cmpwi 23, 0x3
    addi 28, 28, 0x4
    .4byte 0x4180FED4 # blt .L_8044F73C
    .4byte 0x480000E0 # b .L_8044F94C
L_8044F870:
    li 24, 0x0
    mr 23, 31
L_8044F878:
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lwz 3, 0x48(23)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lwz 3, 0x60(23)
    fmr 2, 1
    bl fn_80402E08
    lwz 4, 0x48(23)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0x54(23)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0x60(23)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x4
    cmpwi 24, 0x3
    .4byte 0x4180FF80 # blt .L_8044F878
    lwz 3, 0x4(31)
    lis 4, 0x756c
    addi 6, 4, 0x3031
    li 5, 0x5063
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lha 0, 0xf8(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lfs 2, 0x118(31)
    add 4, 31, 0
    lwz 12, 0x10(12)
    lfs 0, 0x108(4)
    lfs 1, 0x114(31)
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 27, 0x1
L_8044F94C:
    lha 0, 0xfa(31)
    cmplwi 0, 0xf
    .4byte 0x41811E88 # bgt .L_804517DC
    lis 3, jumptable_804B1D64@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B1D64@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lbz 0, 0x137(31)
    cmplwi 0, 0x0
    .4byte 0x4082013C # bne .L_8044FAB4
    lwz 3, 0x8(31)
    li 4, 0x10
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 25, 3, lbl_8050DB0C@l
    stw 0, 0x148(1)
    lha 0, 0x90(25)
    li 4, 0x10
    .4byte 0xC8420E70 # lfd f2, lbl_80543E10@sda21(r0)
    li 5, 0x0
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x14c(1)
    .4byte 0xC0220E78 # lfs f1, lbl_80543E18@sda21(r0)
    lfd 0, 0x148(1)
    fsubs 2, 0, 2
    bl fn_80402940
    .4byte 0xCBC20E70 # lfd f30, lbl_80543E10@sda21(r0)
    mr 24, 3
    addi 26, 31, 0x4
    li 27, 0x1
    lis 23, 0x4330
L_8044F9E0:
    cmpwi 27, 0xe
    .4byte 0x41820030 # beq .L_8044FA14
    lha 0, 0x90(25)
    li 4, 0x10
    stw 23, 0x148(1)
    li 5, 0x0
    xoris 0, 0, 0x8000
    lwz 3, 0xc(26)
    stw 0, 0x14c(1)
    .4byte 0xC0220E78 # lfs f1, lbl_80543E18@sda21(r0)
    lfd 0, 0x148(1)
    fsubs 2, 0, 30
    bl fn_80402940
L_8044FA14:
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    cmpwi 27, 0xf
    .4byte 0x4180FFC0 # blt .L_8044F9E0
    clrlwi. 0, 24, 24
    .4byte 0x41821DB4 # beq .L_804517DC
    lwz 3, 0xc(31)
    li 4, 0x0
    li 0, 0x3
    sth 4, 0x22(3)
    lwz 3, 0x10(31)
    sth 4, 0x22(3)
    lwz 3, 0x14(31)
    sth 4, 0x22(3)
    lwz 3, 0x18(31)
    sth 4, 0x22(3)
    lwz 3, 0x1c(31)
    sth 4, 0x22(3)
    lwz 3, 0x20(31)
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x2c(31)
    sth 4, 0x22(3)
    lwz 3, 0x30(31)
    sth 4, 0x22(3)
    lwz 3, 0x34(31)
    sth 4, 0x22(3)
    lwz 3, 0x38(31)
    sth 4, 0x22(3)
    lwz 3, 0x3c(31)
    sth 4, 0x22(3)
    lwz 3, 0x40(31)
    sth 4, 0x22(3)
    lwz 3, 0x44(31)
    sth 4, 0x22(3)
    sth 0, 0xfa(31)
    .4byte 0x48001D2C # b .L_804517DC
L_8044FAB4:
    lwz 3, 0x8(31)
    lis 4, lbl_8050DB0C@ha
    addi 24, 4, lbl_8050DB0C@l
    li 5, 0x0
    lbz 6, 0x28(3)
    lha 4, 0x8c(24)
    bl fn_80402628
    lwz 3, 0xc(31)
    li 5, 0x0
    lha 4, 0x8c(24)
    .4byte 0xC0220E78 # lfs f1, lbl_80543E18@sda21(r0)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402940
    mr 23, 3
    addi 25, 31, 0x4
    li 26, 0x1
L_8044FAF4:
    lwz 3, 0xc(25)
    li 5, 0x0
    lha 4, 0x8c(24)
    .4byte 0xC0220E78 # lfs f1, lbl_80543E18@sda21(r0)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    bl fn_80402940
    addi 26, 26, 0x1
    addi 25, 25, 0x4
    cmpwi 26, 0xf
    .4byte 0x4180FFDC # blt .L_8044FAF4
    clrlwi. 0, 23, 24
    .4byte 0x41821CBC # beq .L_804517DC
    lwz 3, 0xc(31)
    li 0, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x10(31)
    sth 0, 0x22(3)
    lwz 3, 0x14(31)
    sth 0, 0x22(3)
    lwz 3, 0x18(31)
    sth 0, 0x22(3)
    lwz 3, 0x1c(31)
    sth 0, 0x22(3)
    lwz 3, 0x20(31)
    sth 0, 0x22(3)
    lwz 3, 0x24(31)
    sth 0, 0x22(3)
    lwz 3, 0x28(31)
    sth 0, 0x22(3)
    lwz 3, 0x2c(31)
    sth 0, 0x22(3)
    lwz 3, 0x30(31)
    sth 0, 0x22(3)
    lwz 3, 0x34(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lbz 0, 0x137(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8044FBB8
    li 0, 0xe
    sth 0, 0xfa(31)
    .4byte 0x48001C28 # b .L_804517DC
L_8044FBB8:
    li 0, 0xf
    sth 0, 0xfa(31)
    .4byte 0x48001C1C # b .L_804517DC
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 25, 3, lbl_8050DB0C@l
    stw 0, 0x148(1)
    lha 0, 0x90(25)
    li 5, 0x2
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x14c(1)
    lha 4, 0x8e(25)
    lfd 0, 0x148(1)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    fsubs 1, 0, 1
    bl fn_80402940
    .4byte 0xCBC20E70 # lfd f30, lbl_80543E10@sda21(r0)
    mr 24, 3
    addi 26, 31, 0x4
    li 28, 0x1
    lis 23, 0x4330
L_8044FC14:
    cmpwi 28, 0xe
    .4byte 0x40820010 # bne .L_8044FC28
    lbz 0, 0x137(31)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8044FC54
L_8044FC28:
    lha 0, 0x90(25)
    li 5, 0x2
    stw 23, 0x148(1)
    xoris 0, 0, 0x8000
    lwz 3, 0xc(26)
    stw 0, 0x14c(1)
    lha 4, 0x8e(25)
    lfd 0, 0x148(1)
    .4byte 0xC0420E5C # lfs f2, lbl_80543DFC@sda21(r0)
    fsubs 1, 0, 30
    bl fn_80402940
L_8044FC54:
    addi 28, 28, 0x1
    addi 26, 26, 0x4
    cmpwi 28, 0xf
    .4byte 0x4180FFB4 # blt .L_8044FC14
    clrlwi. 0, 24, 24
    .4byte 0x41821B74 # beq .L_804517DC
    lbz 0, 0x137(31)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_8044FC94
    .4byte 0x40800028 # bge .L_8044FCA0
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_8044FC88
    .4byte 0x4800001C # b .L_8044FCA0
L_8044FC88:
    li 0, 0xe
    sth 0, 0xfa(31)
    .4byte 0x48001B4C # b .L_804517DC
L_8044FC94:
    li 0, 0xf
    sth 0, 0xfa(31)
    .4byte 0x48001B40 # b .L_804517DC
L_8044FCA0:
    clrlwi. 0, 27, 24
    .4byte 0x41821B38 # beq .L_804517DC
    li 0, 0x5
    sth 0, 0xfa(31)
    .4byte 0x48001B2C # b .L_804517DC
    lha 3, 0xfc(31)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8044FCDC
    addi 0, 3, 0x1
    sth 0, 0xfc(31)
    lha 0, 0xfc(31)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_8044FCDC
    li 0, 0x0
    sth 0, 0xfc(31)
L_8044FCDC:
    lha 0, 0xf8(31)
    cmpwi 0, 0x0
    .4byte 0x40810274 # ble .L_8044FF58
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182025C # beq .L_8044FF58
    lha 4, 0xf8(31)
    li 3, 0x1
    li 0, 0x1e
    addi 28, 30, 0x0
    subi 4, 4, 0x1
    addi 29, 30, 0x18
    sth 4, 0xf8(31)
    li 23, 0x0
    sth 3, 0xfc(31)
    sth 0, 0x132(31)
L_8044FD28:
    lha 0, 0xf8(31)
    cmpw 23, 0
    .4byte 0x40820104 # bne .L_8044FE34
    lwz 0, 0x15c(31)
    lwz 5, 0x0(28)
    stw 0, 0x80(1)
    lwz 6, 0x4(28)
    lwz 0, 0x154(31)
    stw 0, 0x84(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x84
    addi 5, 1, 0x80
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x14c(31)
    lwz 5, 0x0(29)
    stw 0, 0x78(1)
    lwz 6, 0x4(29)
    lwz 0, 0x144(31)
    stw 0, 0x7c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x7c
    addi 5, 1, 0x78
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x164(31)
    lwz 0, 0x168(31)
    lwz 5, 0x0(29)
    stw 3, 0x134(1)
    lwz 6, 0x4(29)
    stw 0, 0x138(1)
    lwz 3, 0x16c(31)
    lwz 0, 0x170(31)
    stw 3, 0x13c(1)
    stw 0, 0x140(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0x134
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000100 # b .L_8044FF30
L_8044FE34:
    lwz 0, 0x160(31)
    lwz 5, 0x0(28)
    stw 0, 0x70(1)
    lwz 6, 0x4(28)
    lwz 0, 0x158(31)
    stw 0, 0x74(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    addi 5, 1, 0x70
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x150(31)
    lwz 5, 0x0(29)
    stw 0, 0x68(1)
    lwz 6, 0x4(29)
    lwz 0, 0x148(31)
    stw 0, 0x6c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x6c
    addi 5, 1, 0x68
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x174(31)
    lwz 0, 0x178(31)
    lwz 5, 0x0(29)
    stw 3, 0x124(1)
    lwz 6, 0x4(29)
    stw 0, 0x128(1)
    lwz 3, 0x17c(31)
    lwz 0, 0x180(31)
    stw 3, 0x12c(1)
    stw 0, 0x130(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0x124
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8044FF30:
    addi 23, 23, 0x1
    addi 29, 29, 0x8
    cmpwi 23, 0x3
    addi 28, 28, 0x8
    .4byte 0x4180FDE8 # blt .L_8044FD28
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800054C # b .L_804504A0
L_8044FF58:
    lha 0, 0xf8(31)
    cmpwi 0, 0x2
    .4byte 0x40800274 # bge .L_804501D4
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182025C # beq .L_804501D4
    lha 4, 0xf8(31)
    li 3, 0x1
    li 0, 0x1e
    addi 28, 30, 0x0
    addi 4, 4, 0x1
    addi 29, 30, 0x18
    sth 4, 0xf8(31)
    li 23, 0x0
    sth 3, 0xfc(31)
    sth 0, 0x132(31)
L_8044FFA4:
    lha 0, 0xf8(31)
    cmpw 23, 0
    .4byte 0x40820104 # bne .L_804500B0
    lwz 0, 0x15c(31)
    lwz 5, 0x0(28)
    stw 0, 0x60(1)
    lwz 6, 0x4(28)
    lwz 0, 0x154(31)
    stw 0, 0x64(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x64
    addi 5, 1, 0x60
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x14c(31)
    lwz 5, 0x0(29)
    stw 0, 0x58(1)
    lwz 6, 0x4(29)
    lwz 0, 0x144(31)
    stw 0, 0x5c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x5c
    addi 5, 1, 0x58
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x164(31)
    lwz 0, 0x168(31)
    lwz 5, 0x0(29)
    stw 3, 0x114(1)
    lwz 6, 0x4(29)
    stw 0, 0x118(1)
    lwz 3, 0x16c(31)
    lwz 0, 0x170(31)
    stw 3, 0x11c(1)
    stw 0, 0x120(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0x114
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000100 # b .L_804501AC
L_804500B0:
    lwz 0, 0x160(31)
    lwz 5, 0x0(28)
    stw 0, 0x50(1)
    lwz 6, 0x4(28)
    lwz 0, 0x158(31)
    stw 0, 0x54(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    addi 5, 1, 0x50
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x150(31)
    lwz 5, 0x0(29)
    stw 0, 0x48(1)
    lwz 6, 0x4(29)
    lwz 0, 0x148(31)
    stw 0, 0x4c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x4c
    addi 5, 1, 0x48
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x174(31)
    lwz 0, 0x178(31)
    lwz 5, 0x0(29)
    stw 3, 0x104(1)
    lwz 6, 0x4(29)
    stw 0, 0x108(1)
    lwz 3, 0x17c(31)
    lwz 0, 0x180(31)
    stw 3, 0x10c(1)
    stw 0, 0x110(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0x104
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_804501AC:
    addi 23, 23, 0x1
    addi 29, 29, 0x8
    cmpwi 23, 0x3
    addi 28, 28, 0x8
    .4byte 0x4180FDE8 # blt .L_8044FFA4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480002D0 # b .L_804504A0
L_804501D4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_80450230
    lha 0, 0xf8(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80450204
    li 0, 0xa
    sth 0, 0xfa(31)
    .4byte 0x4800000C # b .L_8045020C
L_80450204:
    li 0, 0xa
    sth 0, 0xfa(31)
L_8045020C:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0xfc(31)
    li 4, 0xb
    li 5, -0x1
    sth 0, 0x132(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000274 # b .L_804504A0
L_80450230:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182025C # beq .L_804504A0
    li 0, 0x0
    addi 28, 30, 0x0
    sth 0, 0xf8(31)
    addi 29, 30, 0x18
    li 23, 0x0
L_8045025C:
    lha 0, 0xf8(31)
    cmpw 23, 0
    .4byte 0x40820104 # bne .L_80450368
    lwz 0, 0x15c(31)
    lwz 5, 0x0(28)
    stw 0, 0x40(1)
    lwz 6, 0x4(28)
    lwz 0, 0x154(31)
    stw 0, 0x44(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    addi 5, 1, 0x40
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x14c(31)
    lwz 5, 0x0(29)
    stw 0, 0x38(1)
    lwz 6, 0x4(29)
    lwz 0, 0x144(31)
    stw 0, 0x3c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x3c
    addi 5, 1, 0x38
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x164(31)
    lwz 0, 0x168(31)
    lwz 5, 0x0(29)
    stw 3, 0xf4(1)
    lwz 6, 0x4(29)
    stw 0, 0xf8(1)
    lwz 3, 0x16c(31)
    lwz 0, 0x170(31)
    stw 3, 0xfc(1)
    stw 0, 0x100(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0xf4
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000100 # b .L_80450464
L_80450368:
    lwz 0, 0x160(31)
    lwz 5, 0x0(28)
    stw 0, 0x30(1)
    lwz 6, 0x4(28)
    lwz 0, 0x158(31)
    stw 0, 0x34(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x30
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x150(31)
    lwz 5, 0x0(29)
    stw 0, 0x28(1)
    lwz 6, 0x4(29)
    lwz 0, 0x148(31)
    stw 0, 0x2c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2c
    addi 5, 1, 0x28
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x174(31)
    lwz 0, 0x178(31)
    lwz 5, 0x0(29)
    stw 3, 0xe4(1)
    lwz 6, 0x4(29)
    stw 0, 0xe8(1)
    lwz 3, 0x17c(31)
    lwz 0, 0x180(31)
    stw 3, 0xec(1)
    stw 0, 0xf0(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0xe4
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80450464:
    addi 23, 23, 0x1
    addi 29, 29, 0x8
    cmpwi 23, 0x3
    addi 28, 28, 0x8
    .4byte 0x4180FDE8 # blt .L_8045025C
    li 0, 0xa
    li 3, 0x1
    sth 0, 0xfa(31)
    li 0, 0x1e
    li 4, 0xb
    li 5, -0x1
    sth 3, 0xfc(31)
    sth 0, 0x132(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_804504A0:
    lha 3, 0xfc(31)
    cmpwi 3, 0x5
    subfic 0, 3, 0xa
    .4byte 0x40800008 # bge .L_804504B4
    mr 0, 3
L_804504B4:
    mullw 6, 0, 0
    lis 0, 0x4330
    lwz 3, 0x4(31)
    lis 4, 0x756c
    stw 0, 0x148(1)
    li 5, 0x5063
    xoris 0, 6, 0x8000
    lwz 12, 0x0(3)
    stw 0, 0x14c(1)
    addi 6, 4, 0x3031
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    lfd 0, 0x148(1)
    .4byte 0xC0420E7C # lfs f2, lbl_80543E1C@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC0020E80 # lfs f0, lbl_80543E20@sda21(r0)
    lwz 12, 0x3c(12)
    fmuls 1, 2, 1
    fdivs 28, 1, 0
    mtctr 12
    bctrl
    lha 0, 0xf8(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lfs 2, 0x118(31)
    add 4, 31, 0
    lwz 12, 0x10(12)
    lfs 0, 0x108(4)
    lfs 1, 0x114(31)
    fadds 0, 2, 0
    fadds 2, 28, 0
    mtctr 12
    bctrl
    li 24, 0x0
    mr 23, 31
L_8045053C:
    lha 0, 0xf8(31)
    cmpw 24, 0
    .4byte 0x40820028 # bne .L_8045056C
    fmr 2, 28
    lwz 3, 0x48(23)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    fmr 2, 28
    lwz 3, 0x54(23)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000024 # b .L_8045058C
L_8045056C:
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lwz 3, 0x48(23)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lwz 3, 0x54(23)
    fmr 2, 1
    bl fn_80402E08
L_8045058C:
    addi 24, 24, 0x1
    addi 23, 23, 0x4
    cmpwi 24, 0x3
    .4byte 0x4180FFA4 # blt .L_8045053C
    .4byte 0x48001240 # b .L_804517DC
    lha 3, 0x134(31)
    addi 0, 3, 0x1
    sth 0, 0x134(31)
    lha 4, 0x134(31)
    cmpwi 4, 0xac
    .4byte 0x4080016C # bge .L_80450720
    cmpwi 4, 0x1
    .4byte 0x40820088 # bne .L_80450644
    lwz 3, 0x4(31)
    addi 0, 30, 0x1a0
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    addi 0, 30, 0x1d8
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800119C # b .L_804517DC
L_80450644:
    cmpwi 4, 0xa
    .4byte 0x40821194 # bne .L_804517DC
    lwz 3, 0xa4(31)
    li 4, 0x5e
    li 5, -0x1
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    lwz 3, 0xa4(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
    lwz 3, 0xa4(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0xa8(31)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    lwz 3, 0xa8(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
    lwz 3, 0xa8(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0xac(31)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    lwz 3, 0xac(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
    lwz 3, 0xac(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 3, 0x6
    li 4, 0x3
    bl fn_8019CE40
    cmpwi 3, 0x0
    .4byte 0x408210E0 # bne .L_804517DC
    lbz 0, 0x138(31)
    cmplwi 0, 0x6
    .4byte 0x408210D4 # bne .L_804517DC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x60
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480010C0 # b .L_804517DC
L_80450720:
    .4byte 0x40820130 # bne .L_80450850
    lbz 3, 0x138(31)
    addi 0, 30, 0x1a0
    slwi 3, 3, 2
    add 3, 31, 3
    lwz 4, 0x6c(3)
    lwz 3, 0xf4(4)
    clrrwi 3, 3, 1
    stw 3, 0xf4(4)
    lbz 3, 0x138(31)
    slwi 3, 3, 2
    add 3, 31, 3
    lwz 4, 0x6c(3)
    lwz 3, 0xf4(4)
    rlwinm 3, 3, 0, 31, 29
    stw 3, 0xf4(4)
    lbz 3, 0x138(31)
    slwi 3, 3, 2
    add 3, 31, 3
    lwz 4, 0x6c(3)
    lwz 3, 0xf4(4)
    rlwinm 3, 3, 0, 30, 28
    stw 3, 0xf4(4)
    lbz 3, 0x138(31)
    slwi 3, 3, 2
    add 3, 31, 3
    lwz 4, 0x88(3)
    lwz 3, 0xf4(4)
    clrrwi 3, 3, 1
    stw 3, 0xf4(4)
    lbz 3, 0x138(31)
    slwi 3, 3, 2
    add 3, 31, 3
    lwz 4, 0x88(3)
    lwz 3, 0xf4(4)
    rlwinm 3, 3, 0, 31, 29
    stw 3, 0xf4(4)
    lbz 3, 0x138(31)
    slwi 3, 3, 2
    add 3, 31, 3
    lwz 4, 0x88(3)
    lwz 3, 0xf4(4)
    rlwinm 3, 3, 0, 30, 28
    stw 3, 0xf4(4)
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x139(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    addi 0, 30, 0x1d8
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x13a(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000F90 # b .L_804517DC
L_80450850:
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lha 3, 0x2e8(3)
    addi 0, 3, 0xac
    cmpw 4, 0
    .4byte 0x40820F78 # bne .L_804517DC
    bl GetRoomConfigRecord
    lbz 0, 0x138(31)
    addis 6, 3, 0x1
    li 3, 0x1
    lbz 5, 0x31f8(6)
    slw 0, 3, 0
    li 3, 0xc
    clrlwi 4, 0, 24
    li 0, 0x0
    or 4, 5, 4
    stb 4, 0x31f8(6)
    sth 3, 0xfa(31)
    lwz 3, 0x8(31)
    sth 0, 0x26(3)
    .4byte 0x48000F3C # b .L_804517DC
    lha 3, 0x134(31)
    addi 0, 3, 0x1
    sth 0, 0x134(31)
    lha 0, 0x134(31)
    cmpwi 0, 0x14
    .4byte 0x408001A0 # bge .L_80450A58
    cmpwi 0, 0xa
    .4byte 0x408200D4 # bne .L_80450994
    lwz 3, 0xc0(31)
    li 4, 0x5d
    li 5, -0x1
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    lwz 3, 0xc0(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
    lwz 3, 0xc0(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0xc4(31)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    lwz 3, 0xc4(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
    lwz 3, 0xc4(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0xc8(31)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    lwz 3, 0xc8(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
    lwz 3, 0xc8(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 3, 0x6
    li 4, 0x0
    bl fn_8019CE40
    cmpwi 3, 0x0
    .4byte 0x40820020 # bne .L_80450994
    lbz 0, 0x138(31)
    cmplwi 0, 0x3
    .4byte 0x40820014 # bne .L_80450994
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x5f
    li 5, -0x1
    bl fn_80458880
L_80450994:
    lwz 3, 0x4(31)
    addi 0, 30, 0x248
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    addi 0, 30, 0x268
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    addi 0, 30, 0x288
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000D88 # b .L_804517DC
L_80450A58:
    .4byte 0x408200C4 # bne .L_80450B1C
    lwz 3, 0x4(31)
    addi 0, 30, 0x248
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x13b(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    addi 0, 30, 0x268
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x13c(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    addi 0, 30, 0x288
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x13d(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80450B1C:
    lha 0, 0x134(31)
    cmpwi 0, 0x50
    .4byte 0x40810CB8 # ble .L_804517DC
    lbz 0, 0x138(31)
    lwz 4, 0x124(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0xd8(3)
    lha 0, 0x6(3)
    slwi 3, 0, 1
    subi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x408000D4 # bge .L_80450C20
    addi 3, 4, 0x1
    li 0, 0x2
    mr 5, 31
    stw 3, 0x124(31)
    li 7, 0x0
    mtctr 0
L_80450B68:
    lbz 0, 0x138(31)
    cmpw 7, 0
    .4byte 0x40820040 # bne .L_80450BB0
    lwz 6, 0xd8(5)
    lis 0, 0x4330
    lwz 3, 0x124(31)
    lha 4, 0x6(6)
    stw 0, 0x148(1)
    divw 0, 3, 4
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    mullw 0, 0, 4
    subf 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x14c(1)
    lfd 0, 0x148(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(6)
    .4byte 0x48000010 # b .L_80450BBC
L_80450BB0:
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    lwz 3, 0xd8(5)
    stfs 0, 0x8(3)
L_80450BBC:
    lbz 0, 0x138(31)
    addi 7, 7, 0x1
    cmpw 7, 0
    .4byte 0x40820040 # bne .L_80450C08
    lwz 6, 0xdc(5)
    lis 0, 0x4330
    lwz 3, 0x124(31)
    lha 4, 0x6(6)
    stw 0, 0x148(1)
    divw 0, 3, 4
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    mullw 0, 0, 4
    subf 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x14c(1)
    lfd 0, 0x148(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(6)
    .4byte 0x48000010 # b .L_80450C14
L_80450C08:
    .4byte 0xC0020E5C # lfs f0, lbl_80543DFC@sda21(r0)
    lwz 3, 0xdc(5)
    stfs 0, 0x8(3)
L_80450C14:
    addi 5, 5, 0x8
    addi 7, 7, 0x1
    .4byte 0x4200FF4C # bdnz .L_80450B68
L_80450C20:
    lbz 23, 0x138(31)
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lha 6, 0x134(31)
    clrlslwi 4, 23, 24, 2
    lha 0, 0x2ea(3)
    add 5, 31, 4
    lwz 3, 0xd8(5)
    lha 3, 0x6(3)
    slwi 4, 3, 1
    add 3, 4, 0
    addi 0, 3, 0x50
    cmpw 6, 0
    .4byte 0x4082003C # bne .L_80450C90
    bl GetRoomConfigRecord
    addis 5, 3, 0x1
    li 0, 0x1
    slw 0, 0, 23
    lbz 4, 0x31f7(5)
    clrlwi 0, 0, 24
    li 3, 0xc
    or 4, 4, 0
    li 0, 0x0
    stb 4, 0x31f7(5)
    sth 3, 0xfa(31)
    lwz 3, 0x8(31)
    sth 0, 0x26(3)
    .4byte 0x48000B50 # b .L_804517DC
L_80450C90:
    addi 0, 4, 0x50
    cmpw 6, 0
    .4byte 0x40820B44 # bne .L_804517DC
    lwz 3, 0xb0(5)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    lbz 0, 0x138(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0xb0(3)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
    lbz 0, 0x138(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0xb0(3)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    .4byte 0x48000AF8 # b .L_804517DC
    lha 3, 0xfc(31)
    addi 0, 3, 0x1
    sth 0, 0xfc(31)
    lha 0, 0xfc(31)
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_80450D04
    .4byte 0x48000018 # b .L_80450D18
L_80450D04:
    cmpwi 0, 0xa
    .4byte 0x4080000C # bge .L_80450D14
    subfic 0, 0, 0xa
    .4byte 0x48000008 # b .L_80450D18
L_80450D14:
    li 0, 0x0
L_80450D18:
    mullw 6, 0, 0
    lis 0, 0x4330
    lwz 3, 0x4(31)
    lis 4, 0x756c
    stw 0, 0x148(1)
    li 5, 0x5063
    xoris 0, 6, 0x8000
    lwz 12, 0x0(3)
    stw 0, 0x14c(1)
    addi 6, 4, 0x3031
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    lfd 0, 0x148(1)
    .4byte 0xC0420E7C # lfs f2, lbl_80543E1C@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC0020E80 # lfs f0, lbl_80543E20@sda21(r0)
    lwz 12, 0x3c(12)
    fmuls 1, 2, 1
    fdivs 28, 1, 0
    mtctr 12
    bctrl
    lha 0, 0xf8(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lfs 2, 0x118(31)
    add 4, 31, 0
    lwz 12, 0x10(12)
    lfs 0, 0x108(4)
    lfs 1, 0x114(31)
    fadds 0, 2, 0
    fadds 2, 28, 0
    mtctr 12
    bctrl
    li 24, 0x0
    mr 23, 31
L_80450DA0:
    lha 0, 0xf8(31)
    cmpw 24, 0
    .4byte 0x40820028 # bne .L_80450DD0
    fmr 2, 28
    lwz 3, 0x48(23)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    fmr 2, 28
    lwz 3, 0x54(23)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000024 # b .L_80450DF0
L_80450DD0:
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lwz 3, 0x48(23)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lwz 3, 0x54(23)
    fmr 2, 1
    bl fn_80402E08
L_80450DF0:
    addi 24, 24, 0x1
    addi 23, 23, 0x4
    cmpwi 24, 0x3
    .4byte 0x4180FFA4 # blt .L_80450DA0
    lha 0, 0xfc(31)
    cmpwi 0, 0xf
    .4byte 0x418009D4 # blt .L_804517DC
    lha 0, 0xf8(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80450E30
    li 3, 0xb
    li 0, 0x0
    sth 3, 0xfa(31)
    lwz 3, 0x8(31)
    sth 0, 0x26(3)
    .4byte 0x48000020 # b .L_80450E4C
L_80450E30:
    li 0, 0x7
    addi 6, 31, 0x136
    sth 0, 0xfa(31)
    li 4, 0x10a
    li 5, 0x0
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431900
L_80450E4C:
    li 0, 0x0
    sth 0, 0xfc(31)
    lwz 3, 0xc(31)
    sth 0, 0x22(3)
    lwz 3, 0x10(31)
    sth 0, 0x22(3)
    lwz 3, 0x14(31)
    sth 0, 0x22(3)
    lwz 3, 0x18(31)
    sth 0, 0x22(3)
    lwz 3, 0x1c(31)
    sth 0, 0x22(3)
    lwz 3, 0x20(31)
    sth 0, 0x22(3)
    lwz 3, 0x24(31)
    sth 0, 0x22(3)
    lwz 3, 0x28(31)
    sth 0, 0x22(3)
    lwz 3, 0x2c(31)
    sth 0, 0x22(3)
    lwz 3, 0x30(31)
    sth 0, 0x22(3)
    lwz 3, 0x34(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    .4byte 0x48000910 # b .L_804517DC
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 25, 3, lbl_8050DB0C@l
    stw 0, 0x148(1)
    lha 0, 0x90(25)
    li 4, 0x5
    .4byte 0xC8420E70 # lfd f2, lbl_80543E10@sda21(r0)
    li 5, 0x2
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x14c(1)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lfd 0, 0x148(1)
    fsubs 2, 0, 2
    bl fn_80402940
    .4byte 0xCBC20E70 # lfd f30, lbl_80543E10@sda21(r0)
    mr 24, 3
    addi 26, 31, 0x4
    li 27, 0x1
    lis 23, 0x4330
L_80450F20:
    lha 0, 0x90(25)
    li 4, 0x5
    stw 23, 0x148(1)
    li 5, 0x2
    xoris 0, 0, 0x8000
    lwz 3, 0xc(26)
    stw 0, 0x14c(1)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    lfd 0, 0x148(1)
    fsubs 2, 0, 30
    bl fn_80402940
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    cmpwi 27, 0xf
    .4byte 0x4180FFC8 # blt .L_80450F20
    clrlwi. 0, 24, 24
    .4byte 0x4182087C # beq .L_804517DC
    lwz 3, 0xc(31)
    li 4, 0x0
    li 0, 0xc
    sth 4, 0x22(3)
    lwz 3, 0x10(31)
    sth 4, 0x22(3)
    lwz 3, 0x14(31)
    sth 4, 0x22(3)
    lwz 3, 0x18(31)
    sth 4, 0x22(3)
    lwz 3, 0x1c(31)
    sth 4, 0x22(3)
    lwz 3, 0x20(31)
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x2c(31)
    sth 4, 0x22(3)
    lwz 3, 0x30(31)
    sth 4, 0x22(3)
    lwz 3, 0x34(31)
    sth 4, 0x22(3)
    lwz 3, 0x38(31)
    sth 4, 0x22(3)
    lwz 3, 0x3c(31)
    sth 4, 0x22(3)
    lwz 3, 0x40(31)
    sth 4, 0x22(3)
    lwz 3, 0x44(31)
    sth 4, 0x22(3)
    sth 0, 0xfa(31)
    .4byte 0x480007F4 # b .L_804517DC
    lbz 0, 0x137(31)
    cmplwi 0, 0x0
    .4byte 0x408200A8 # bne .L_8045109C
    lwz 3, 0x8(31)
    li 4, 0xa
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 24, 3, lbl_8050DB0C@l
    stw 0, 0x148(1)
    lha 0, 0x90(24)
    li 4, 0xa
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    li 5, 0x0
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x14c(1)
    .4byte 0xC0420E78 # lfs f2, lbl_80543E18@sda21(r0)
    lfd 0, 0x148(1)
    fsubs 1, 0, 1
    bl fn_80402940
    .4byte 0xCBC20E70 # lfd f30, lbl_80543E10@sda21(r0)
    mr 26, 3
    addi 25, 31, 0x4
    li 27, 0x1
    lis 23, 0x4330
L_8045105C:
    lha 0, 0x90(24)
    li 4, 0xa
    stw 23, 0x148(1)
    li 5, 0x0
    xoris 0, 0, 0x8000
    lwz 3, 0xc(25)
    stw 0, 0x14c(1)
    .4byte 0xC0420E78 # lfs f2, lbl_80543E18@sda21(r0)
    lfd 0, 0x148(1)
    fsubs 1, 0, 30
    bl fn_80402940
    addi 27, 27, 0x1
    addi 25, 25, 0x4
    cmpwi 27, 0xf
    .4byte 0x4180FFC8 # blt .L_8045105C
    .4byte 0x4800006C # b .L_80451104
L_8045109C:
    lwz 3, 0x8(31)
    lis 4, lbl_8050DB0C@ha
    addi 23, 4, lbl_8050DB0C@l
    li 6, 0x0
    lbz 5, 0x28(3)
    lha 4, 0x94(23)
    bl fn_80402628
    lwz 3, 0xc(31)
    li 5, 0x0
    lha 4, 0x94(23)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    .4byte 0xC0420E78 # lfs f2, lbl_80543E18@sda21(r0)
    bl fn_80402940
    addi 24, 31, 0x4
    mr 26, 3
    li 25, 0x1
L_804510DC:
    lwz 3, 0xc(24)
    li 5, 0x0
    lha 4, 0x94(23)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    .4byte 0xC0420E78 # lfs f2, lbl_80543E18@sda21(r0)
    bl fn_80402940
    addi 25, 25, 0x1
    addi 24, 24, 0x4
    cmpwi 25, 0xf
    .4byte 0x4180FFDC # blt .L_804510DC
L_80451104:
    clrlwi. 0, 26, 24
    .4byte 0x418206D4 # beq .L_804517DC
    mr 3, 31
    bl fn_8044C7F0
    mr 3, 31
    bl fn_8044C968
    mr 24, 31
    li 25, 0x0
    li 23, 0x0
L_80451128:
    lwz 3, 0xc(24)
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    .4byte 0xC0420E78 # lfs f2, lbl_80543E18@sda21(r0)
    bl fn_80402E08
    lwz 3, 0xc(24)
    addi 25, 25, 0x1
    cmpwi 25, 0xf
    addi 24, 24, 0x4
    sth 23, 0x22(3)
    .4byte 0x4180FFDC # blt .L_80451128
    li 3, 0x7
    li 0, 0x0
    stw 3, 0x184(31)
    stb 0, 0x140(31)
    lbz 0, 0x137(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80451184
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
L_80451184:
    li 0, 0x0
    stb 0, 0x137(31)
    .4byte 0x48000650 # b .L_804517DC
    lwz 3, 0xc(31)
    li 4, 0xa
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420E84 # lfs f2, lbl_80543E24@sda21(r0)
    bl fn_80402940
    mr 23, 3
    addi 24, 31, 0x4
    li 25, 0x1
L_804511B4:
    lwz 3, 0xc(24)
    li 4, 0xa
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420E84 # lfs f2, lbl_80543E24@sda21(r0)
    bl fn_80402940
    addi 25, 25, 0x1
    addi 24, 24, 0x4
    cmpwi 25, 0xf
    .4byte 0x4180FFDC # blt .L_804511B4
    clrlwi. 0, 23, 24
    .4byte 0x418205FC # beq .L_804517DC
    li 0, 0x7
    addi 6, 31, 0x136
    sth 0, 0xfa(31)
    li 4, 0x10a
    li 5, 0x0
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431900
    .4byte 0x480005DC # b .L_804517DC
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804317AC
    cmpwi 3, 0x0
    .4byte 0x418205CC # beq .L_804517DC
    li 0, 0x8
    sth 0, 0xfa(31)
    .4byte 0x480005C0 # b .L_804517DC
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80451260
    lbz 0, 0x136(31)
    cmplwi 0, 0x0
    .4byte 0x408200E4 # bne .L_80451324
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x136(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000C8 # b .L_80451324
L_80451260:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_804512A0
    lbz 0, 0x136(31)
    cmplwi 0, 0x1
    .4byte 0x408200A4 # bne .L_80451324
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x136(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000088 # b .L_80451324
L_804512A0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_804512E0
    li 0, 0x9
    sth 0, 0xfa(31)
    lbz 0, 0x136(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80451324
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000048 # b .L_80451324
L_804512E0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80451324
    li 3, 0x1
    li 0, 0x9
    stb 3, 0x136(31)
    sth 0, 0xfa(31)
    lbz 0, 0x136(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80451324
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
L_80451324:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    lbz 4, 0x136(31)
    bl fn_80431174
    .4byte 0x480004AC # b .L_804517DC
    lbz 0, 0x136(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_80451390
    lwz 3, 0xc(31)
    li 4, 0xa
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420E84 # lfs f2, lbl_80543E24@sda21(r0)
    bl fn_80402940
    addi 23, 31, 0x4
    mr 24, 3
    li 25, 0x1
L_80451364:
    lwz 3, 0xc(23)
    li 4, 0xa
    .4byte 0xC0220E5C # lfs f1, lbl_80543DFC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420E84 # lfs f2, lbl_80543E24@sda21(r0)
    bl fn_80402940
    addi 25, 25, 0x1
    addi 23, 23, 0x4
    cmpwi 25, 0xf
    .4byte 0x4180FFDC # blt .L_80451364
    .4byte 0x48000008 # b .L_80451394
L_80451390:
    li 24, 0x1
L_80451394:
    clrlwi. 0, 24, 24
    .4byte 0x41820444 # beq .L_804517DC
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x41820434 # beq .L_804517DC
    lbz 0, 0x136(31)
    cmplwi 0, 0x0
    .4byte 0x408201E4 # bne .L_80451598
    lha 0, 0xf8(31)
    cmpwi 0, 0x1
    .4byte 0x408201A8 # bne .L_80451568
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458F9C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820118 # beq .L_8045150C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_80451418
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200C8 # beq .L_804514DC
L_80451418:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_80451434
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200AC # beq .L_804514DC
L_80451434:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_80451450
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820090 # beq .L_804514DC
L_80451450:
    cmpwi 4, 0x3
    .4byte 0x40820018 # bne .L_8045146C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_804514DC
L_8045146C:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_80451488
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_804514DC
L_80451488:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_804514A4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_804514DC
L_804514A4:
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_804514C0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_804514DC
L_804514C0:
    cmpwi 4, 0x7
    .4byte 0x40820048 # bne .L_8045150C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_8045150C
L_804514DC:
    mr 3, 31
    bl fn_8044C7F0
    li 3, 0x7
    li 0, 0x0
    stw 3, 0x184(31)
    li 4, 0xa
    li 5, 0x2
    stb 0, 0x137(31)
    stb 0, 0x140(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_8013665C
    .4byte 0x480002CC # b .L_804517D4
L_8045150C:
    li 0, 0x6
    stw 0, 0x184(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x418202B4 # beq .L_804517D4
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lwz 0, 0x118(4)
    cmpwi 0, 0xa
    .4byte 0x40820020 # bne .L_80451554
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_80451554
    lwz 3, 0x120(4)
    lwz 0, 0x124(4)
    stw 3, 0x118(4)
    stw 0, 0x11c(4)
L_80451554:
    lis 3, lbl_80529DEC@ha
    li 0, 0x7
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x237(3)
    .4byte 0x48000270 # b .L_804517D4
L_80451568:
    li 0, 0x2
    li 4, 0xc
    stw 0, 0x184(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458F9C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    .4byte 0x48000240 # b .L_804517D4
L_80451598:
    li 3, 0x0
    li 0, 0x5
    sth 3, 0xfc(31)
    addi 28, 30, 0x0
    addi 29, 30, 0x18
    li 23, 0x0
    sth 0, 0xfa(31)
    sth 3, 0xf8(31)
L_804515B8:
    lha 0, 0xf8(31)
    cmpw 23, 0
    .4byte 0x40820104 # bne .L_804516C4
    lwz 0, 0x15c(31)
    lwz 5, 0x0(28)
    stw 0, 0x20(1)
    lwz 6, 0x4(28)
    lwz 0, 0x154(31)
    stw 0, 0x24(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x20
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x14c(31)
    lwz 5, 0x0(29)
    stw 0, 0x18(1)
    lwz 6, 0x4(29)
    lwz 0, 0x144(31)
    stw 0, 0x1c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x18
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x164(31)
    lwz 0, 0x168(31)
    lwz 5, 0x0(29)
    stw 3, 0xd4(1)
    lwz 6, 0x4(29)
    stw 0, 0xd8(1)
    lwz 3, 0x16c(31)
    lwz 0, 0x170(31)
    stw 3, 0xdc(1)
    stw 0, 0xe0(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0xd4
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000100 # b .L_804517C0
L_804516C4:
    lwz 0, 0x160(31)
    lwz 5, 0x0(28)
    stw 0, 0x10(1)
    lwz 6, 0x4(28)
    lwz 0, 0x158(31)
    stw 0, 0x14(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0x10
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x150(31)
    lwz 5, 0x0(29)
    stw 0, 0x8(1)
    lwz 6, 0x4(29)
    lwz 0, 0x148(31)
    stw 0, 0xc(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x174(31)
    lwz 0, 0x178(31)
    lwz 5, 0x0(29)
    stw 3, 0xc4(1)
    lwz 6, 0x4(29)
    stw 0, 0xc8(1)
    lwz 3, 0x17c(31)
    lwz 0, 0x180(31)
    stw 3, 0xcc(1)
    stw 0, 0xd0(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 1, 0xc4
    bl fn_80453884
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xc8
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_804517C0:
    addi 23, 23, 0x1
    addi 29, 29, 0x8
    cmpwi 23, 0x3
    addi 28, 28, 0x8
    .4byte 0x4180FDE8 # blt .L_804515B8
L_804517D4:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310BC
L_804517DC:
    li 3, 0x0
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x408200CC # bne .L_804518B4
    lha 3, 0x130(31)
    addi 0, 3, 0x1
    sth 0, 0x130(31)
    lha 0, 0x130(31)
    cmpwi 0, 0x64
    .4byte 0x4180000C # blt .L_8045180C
    li 0, 0x0
    sth 0, 0x130(31)
L_8045180C:
    lha 0, 0x130(31)
    cmpwi 0, 0x32
    .4byte 0x4080002C # bge .L_80451840
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x14c(1)
    .4byte 0xC8420E70 # lfd f2, lbl_80543E10@sda21(r0)
    stw 0, 0x148(1)
    .4byte 0xC0020E88 # lfs f0, lbl_80543E28@sda21(r0)
    lfd 1, 0x148(1)
    fsubs 1, 1, 2
    fdivs 28, 1, 0
    .4byte 0x48000030 # b .L_8045186C
L_80451840:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x154(1)
    .4byte 0xC8420E70 # lfd f2, lbl_80543E10@sda21(r0)
    stw 0, 0x150(1)
    .4byte 0xC0620E8C # lfs f3, lbl_80543E2C@sda21(r0)
    lfd 1, 0x150(1)
    .4byte 0xC0020E88 # lfs f0, lbl_80543E28@sda21(r0)
    fsubs 1, 1, 2
    fsubs 1, 3, 1
    fdivs 28, 1, 0
L_8045186C:
    lwz 3, 0x4(31)
    lis 4, 0x7762
    addi 6, 4, 0x6c69
    li 5, 0x5073
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0220E94 # lfs f1, lbl_80543E34@sda21(r0)
    .4byte 0xC0020E90 # lfs f0, lbl_80543E30@sda21(r0)
    lwz 12, 0x0(3)
    fmadds 0, 1, 28, 0
    lwz 12, 0x24(12)
    fctiwz 0, 0
    stfd 0, 0x158(1)
    lwz 4, 0x15c(1)
    mtctr 12
    bctrl
L_804518B4:
    lha 0, 0xfa(31)
    cmpwi 0, 0x2
    .4byte 0x418200E0 # beq .L_8045199C
    cmpwi 0, 0x3
    .4byte 0x418200D8 # beq .L_8045199C
    lha 3, 0x132(31)
    addi 0, 3, 0x1
    sth 0, 0x132(31)
    lha 0, 0x132(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_804518E8
    li 0, 0x0
    sth 0, 0x132(31)
L_804518E8:
    lha 0, 0x132(31)
    cmpwi 0, 0x1e
    .4byte 0x40800030 # bge .L_80451920
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x158(1)
    .4byte 0xC8420E70 # lfd f2, lbl_80543E10@sda21(r0)
    .4byte 0xC0020E98 # lfs f0, lbl_80543E38@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x15c(1)
    lfd 1, 0x158(1)
    fsubs 1, 1, 2
    fdivs 28, 1, 0
    .4byte 0x4800003C # b .L_80451958
L_80451920:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x154(1)
    .4byte 0xC8620E70 # lfd f3, lbl_80543E10@sda21(r0)
    stw 0, 0x150(1)
    .4byte 0xC0220E90 # lfs f1, lbl_80543E30@sda21(r0)
    lfd 2, 0x150(1)
    .4byte 0xC0020E98 # lfs f0, lbl_80543E38@sda21(r0)
    fsubs 2, 2, 3
    .4byte 0xC0620E64 # lfs f3, lbl_80543E04@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fdivs 0, 1, 0
    fsubs 28, 3, 0
L_80451958:
    lwz 3, 0x4(31)
    lis 4, 0x756c
    addi 6, 4, 0x3031
    li 5, 0x5063
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0020E9C # lfs f0, lbl_80543E3C@sda21(r0)
    lwz 12, 0x0(3)
    fmuls 0, 0, 28
    lwz 12, 0x24(12)
    fctiwz 0, 0
    stfd 0, 0x148(1)
    lwz 4, 0x14c(1)
    mtctr 12
    bctrl
L_8045199C:
    lwz 3, 0x128(31)
    addi 0, 3, 0x1
    stw 0, 0x128(31)
    lwz 3, 0xec(31)
    lwz 4, 0x128(31)
    lha 0, 0x6(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_804519C4
    li 0, 0x0
    stw 0, 0x128(31)
L_804519C4:
    lwz 3, 0x128(31)
    lis 0, 0x4330
    stw 0, 0x158(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220E70 # lfd f1, lbl_80543E10@sda21(r0)
    stw 0, 0x15c(1)
    lwz 3, 0xec(31)
    lfd 0, 0x158(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x4(31)
    bl fn_8009DB58
    lbz 0, 0x13e(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80451A08
    li 0, 0x0
    stb 0, 0x13e(31)
L_80451A08:
    li 23, 0x0
    mr 28, 31
L_80451A10:
    lwz 0, 0xa4(28)
    cmplwi 0, 0x0
    .4byte 0x41820168 # beq .L_80451B80
    lwz 3, 0x4(31)
    addi 0, 30, 0x210
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 0, 30, 0x210
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fsubs 31, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 0, 30, 0x210
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 0, 30, 0x210
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fadds 1, 0, 30
    lwz 12, 0x0(3)
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    fmadds 31, 31, 0, 1
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    addi 3, 1, 0xb8
    fadds 1, 1, 30
    .4byte 0xC0620E5C # lfs f3, lbl_80543DFC@sda21(r0)
    fmadds 1, 29, 0, 1
    bl fn_80453874
    mr 4, 3
    lwz 3, 0xa4(28)
    bl fn_80178EB8
L_80451B80:
    lwz 0, 0xc0(28)
    cmplwi 0, 0x0
    .4byte 0x418201D8 # beq .L_80451D60
    lwz 3, 0x4(31)
    addi 0, 30, 0x268
    lbz 4, 0x138(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 0, 30, 0x268
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 0, 30, 0x248
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fsubs 28, 1, 0
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 0, 30, 0x268
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fadds 30, 0, 30
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 0, 30, 0x248
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fadds 1, 0, 30
    lwz 12, 0x0(3)
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    fmadds 31, 29, 0, 1
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    addi 0, 30, 0x268
    lwz 3, 0x4(31)
    lbz 4, 0x138(31)
    fadds 30, 0, 30
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 6, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    addi 3, 1, 0xac
    fadds 1, 1, 30
    .4byte 0xC0620E5C # lfs f3, lbl_80543DFC@sda21(r0)
    fmadds 1, 28, 0, 1
    bl fn_80453874
    mr 4, 3
    lwz 3, 0xc0(28)
    bl fn_80178EB8
L_80451D60:
    addi 23, 23, 0x1
    addi 28, 28, 0x4
    cmpwi 23, 0x3
    .4byte 0x4180FCA4 # blt .L_80451A10
    mr 28, 31
    addi 29, 30, 0x210
    addi 27, 30, 0x1a0
    li 23, 0x0
L_80451D80:
    lwz 0, 0x88(28)
    cmplwi 0, 0x0
    .4byte 0x41820150 # beq .L_80451ED8
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 28, 1, 0
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 30
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(29)
    lwz 12, 0x3c(12)
    fmadds 31, 28, 0, 1
    lwz 6, 0x4(29)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    addi 3, 1, 0xa0
    fadds 1, 1, 30
    .4byte 0xC0620E5C # lfs f3, lbl_80543DFC@sda21(r0)
    fmadds 1, 29, 0, 1
    bl fn_80453874
    mr 4, 3
    lwz 3, 0x88(28)
    bl fn_80178EB8
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 3, 0x88(28)
    stb 0, 0xbb(3)
L_80451ED8:
    lwz 0, 0x6c(28)
    cmplwi 0, 0x0
    .4byte 0x41820150 # beq .L_80452030
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 28, 1, 0
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 30
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(29)
    lwz 12, 0x3c(12)
    fmadds 31, 28, 0, 1
    lwz 6, 0x4(29)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3036
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 31
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    addi 3, 1, 0x94
    fadds 1, 1, 30
    .4byte 0xC0620E5C # lfs f3, lbl_80543DFC@sda21(r0)
    fmadds 1, 29, 0, 1
    bl fn_80453874
    mr 4, 3
    lwz 3, 0x6c(28)
    bl fn_80178EB8
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 3, 0x6c(28)
    stb 0, 0xbb(3)
L_80452030:
    addi 23, 23, 0x1
    addi 29, 29, 0x8
    cmpwi 23, 0x7
    addi 27, 27, 0x8
    addi 28, 28, 0x4
    .4byte 0x4180FD3C # blt .L_80451D80
    mr 23, 31
    addi 24, 30, 0x268
    addi 25, 30, 0x248
    li 26, 0x0
L_80452058:
    lwz 0, 0xb0(23)
    cmplwi 0, 0x0
    .4byte 0x418201A0 # beq .L_80452200
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 28, 1, 0
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 29, 1, 0
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 30, 0, 30
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fadds 1, 0, 30
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x0(25)
    lwz 12, 0x3c(12)
    fmadds 30, 28, 0, 1
    lwz 6, 0x4(25)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x616a
    lwz 3, 0x4(31)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6174
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(31)
    fadds 31, 0, 31
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 30
    .4byte 0xC0020E60 # lfs f0, lbl_80543E00@sda21(r0)
    addi 3, 1, 0x88
    fadds 1, 1, 31
    .4byte 0xC0620E5C # lfs f3, lbl_80543DFC@sda21(r0)
    fmadds 1, 29, 0, 1
    bl fn_80453874
    mr 4, 3
    lwz 3, 0xb0(23)
    bl fn_80178EB8
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 3, 0xb0(23)
    stb 0, 0xbb(3)
L_80452200:
    addi 26, 26, 0x1
    addi 24, 24, 0x8
    cmpwi 26, 0x4
    addi 25, 25, 0x8
    addi 23, 23, 0x4
    .4byte 0x4180FE44 # blt .L_80452058
    li 24, 0x0
    mr 23, 31
L_80452220:
    lwz 3, 0xa4(23)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80452250
    bl fn_80453848
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80452250
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xa4(23)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0xa4(23)
L_80452250:
    lwz 3, 0xc0(23)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80452280
    bl fn_80453848
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80452280
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xc0(23)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0xc0(23)
L_80452280:
    addi 24, 24, 0x1
    addi 23, 23, 0x4
    cmpwi 24, 0x3
    .4byte 0x4180FF94 # blt .L_80452220
    li 3, 0x0
    psq_l 31, 0x1c8(1), 0, 0
    lfd 31, 0x1c0(1)
    psq_l 30, 0x1b8(1), 0, 0
    lfd 30, 0x1b0(1)
    psq_l 29, 0x1a8(1), 0, 0
    lfd 29, 0x1a0(1)
    psq_l 28, 0x198(1), 0, 0
    lfd 28, 0x190(1)
    lmw 23, 0x16c(1)
    lwz 0, 0x1d4(1)
    mtlr 0
    addi 1, 1, 0x1d0
    blr

