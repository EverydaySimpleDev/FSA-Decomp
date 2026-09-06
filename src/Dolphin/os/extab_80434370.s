# 901KB-gap non-actor manager block: 8 functions, 11,692 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010CDC
etb_80010CDC:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_80010CDC, 8

.global etb_80010CE4
etb_80010CE4:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_80010CE4, 8

.global etb_80010CEC
etb_80010CEC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80010CEC, 8

.global etb_80010CF4
etb_80010CF4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010CF4, 8

.global etb_80010CFC
etb_80010CFC:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80010CFC, 8

.global etb_80010D04
etb_80010D04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010D04, 8

.global etb_80010D0C
etb_80010D0C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010D0C, 8

.global etb_80010D14
etb_80010D14:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80010D14, 8

.section extabindex, "a"
.balign 4
.global eti_80020D04
eti_80020D04:
    .4byte fn_80434370
    .4byte 0x000003B4
    .4byte etb_80010CDC
.size eti_80020D04, 12

.global eti_80020D10
eti_80020D10:
    .4byte fn_80434724
    .4byte 0x000016FC
    .4byte etb_80010CE4
.size eti_80020D10, 12

.global eti_80020D1C
eti_80020D1C:
    .4byte fn_80435E20
    .4byte 0x00000388
    .4byte etb_80010CEC
.size eti_80020D1C, 12

.global eti_80020D28
eti_80020D28:
    .4byte fn_804361A8
    .4byte 0x00000374
    .4byte etb_80010CF4
.size eti_80020D28, 12

.global eti_80020D34
eti_80020D34:
    .4byte fn_8043651C
    .4byte 0x0000014C
    .4byte etb_80010CFC
.size eti_80020D34, 12

.global eti_80020D40
eti_80020D40:
    .4byte fn_80436668
    .4byte 0x00000050
    .4byte etb_80010D04
.size eti_80020D40, 12

.global eti_80020D4C
eti_80020D4C:
    .4byte fn_804366B8
    .4byte 0x00000054
    .4byte etb_80010D0C
.size eti_80020D4C, 12

.global eti_80020D58
eti_80020D58:
    .4byte fn_8043670C
    .4byte 0x00000A10
    .4byte etb_80010D14
.size eti_80020D58, 12

.text
.balign 4
.global fn_80434370
.global fn_80434724
.global fn_80435E20
.global fn_804361A8
.global fn_8043651C
.global fn_80436668
.global fn_804366B8
.global fn_8043670C

fn_80434370:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    lis 4, 0x5461
    lwz 3, 0x4(3)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lfs 31, 0x11c(3)
    lwz 3, 0x154(4)
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    lha 3, 0x5a(31)
    stw 0, 0x8(1)
    .4byte 0xC8220C30 # lfd f1, lbl_80543BD0@sda21(r0)
    extsh. 0, 3
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 31, 31, 0
    .4byte 0x408200E0 # bne .L_804344D0
    lbz 0, 0x68(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_80434448
    li 0, 0x0
    lis 3, 0x5461
    stb 0, 0x68(31)
    addi 6, 3, 0x3031
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x48(31)
    .4byte 0x48000048 # b .L_8043448C
L_80434448:
    li 0, 0x1
    lis 3, 0x5461
    stb 0, 0x68(31)
    addi 6, 3, 0x3031
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x48(31)
L_8043448C:
    lwz 3, 0x4(31)
    lis 4, 0x5461
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lfs 2, 0x48(31)
    fsubs 1, 1, 0
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fnmsubs 1, 2, 31, 1
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x4800023C # b .L_80434708
L_804344D0:
    cmpwi 3, 0x1
    .4byte 0x40820188 # bne .L_8043465C
    lbz 0, 0x6c(31)
    cmplwi 0, 0x0
    .4byte 0x408200A0 # bne .L_80434580
    lbz 0, 0x69(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_80434538
    li 0, 0x0
    lis 3, 0x5461
    stb 0, 0x69(31)
    addi 6, 3, 0x3032
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(31)
    .4byte 0x480000E4 # b .L_80434618
L_80434538:
    li 0, 0x1
    lis 3, 0x5461
    stb 0, 0x69(31)
    addi 6, 3, 0x3032
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(31)
    .4byte 0x4800009C # b .L_80434618
L_80434580:
    lbz 0, 0x69(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_804345D4
    li 0, 0x0
    lis 3, 0x5461
    stb 0, 0x69(31)
    addi 6, 3, 0x3032
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xff
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(31)
    .4byte 0x48000048 # b .L_80434618
L_804345D4:
    li 0, 0x1
    lis 3, 0x5461
    stb 0, 0x69(31)
    addi 6, 3, 0x3032
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfe
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(31)
L_80434618:
    lwz 3, 0x4(31)
    lis 4, 0x5461
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lfs 2, 0x4c(31)
    fsubs 1, 1, 0
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fnmsubs 1, 2, 31, 1
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x480000B0 # b .L_80434708
L_8043465C:
    cmpwi 3, 0x2
    .4byte 0x408200A8 # bne .L_80434708
    lbz 0, 0x6c(31)
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_80434708
    lbz 0, 0x6a(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_804346C4
    li 0, 0x0
    lis 3, 0x5461
    stb 0, 0x6a(31)
    addi 6, 3, 0x3033
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x50(31)
    .4byte 0x48000048 # b .L_80434708
L_804346C4:
    li 0, 0x1
    lis 3, 0x5461
    stb 0, 0x6a(31)
    addi 6, 3, 0x3033
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x50(31)
L_80434708:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80434724:
    stwu 1, -0x270(1)
    mflr 0
    stw 0, 0x274(1)
    stfd 31, 0x260(1)
    psq_st 31, 0x268(1), 0, 0
    stw 31, 0x25c(1)
    mr 31, 3
    lis 4, 0x5461
    lwz 3, 0x4(3)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lfs 31, 0x11c(3)
    lwz 3, 0x154(4)
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 0, 3, 0x8000
    lis 3, 0x4330
    stw 0, 0x24c(1)
    lha 0, 0x5a(31)
    stw 3, 0x248(1)
    .4byte 0xC8220C30 # lfd f1, lbl_80543BD0@sda21(r0)
    cmpwi 0, 0x1
    lfd 0, 0x248(1)
    fsubs 0, 0, 1
    fdivs 31, 31, 0
    .4byte 0x418207AC # beq .L_80434F50
    .4byte 0x40800E9C # bge .L_80435644
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_804347B8
    .4byte 0x48000E90 # b .L_80435644
L_804347B8:
    li 4, 0x0
    li 8, 0x64
    li 7, 0x14
    li 0, 0xff
    stb 8, 0x238(1)
    lis 3, 0x5461
    addi 6, 3, 0x3031
    li 5, 0x0
    stb 7, 0x239(1)
    stb 4, 0x23a(1)
    stb 0, 0x23b(1)
    lwz 3, 0x238(1)
    stb 8, 0x240(1)
    stb 7, 0x241(1)
    stb 4, 0x242(1)
    stb 4, 0x243(1)
    lwz 0, 0x240(1)
    stw 3, 0x23c(1)
    stw 0, 0x244(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x244
    addi 5, 1, 0x23c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x228(1)
    lis 3, 0x5461
    li 5, 0x0
    stb 7, 0x229(1)
    addi 6, 3, 0x3032
    stb 7, 0x22a(1)
    stb 4, 0x22b(1)
    lwz 3, 0x228(1)
    stb 7, 0x230(1)
    stb 7, 0x231(1)
    stb 7, 0x232(1)
    stb 0, 0x233(1)
    lwz 0, 0x230(1)
    stw 3, 0x22c(1)
    stw 0, 0x234(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x234
    addi 5, 1, 0x22c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x218(1)
    lis 3, 0x5471
    addi 6, 3, 0x3031
    li 5, 0x0
    stb 4, 0x219(1)
    stb 4, 0x21a(1)
    stb 0, 0x21b(1)
    lwz 3, 0x218(1)
    stb 4, 0x220(1)
    stb 4, 0x221(1)
    stb 4, 0x222(1)
    stb 4, 0x223(1)
    lwz 0, 0x220(1)
    stw 3, 0x21c(1)
    stw 0, 0x224(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x224
    addi 5, 1, 0x21c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x208(1)
    lis 3, 0x5471
    li 5, 0x0
    stb 7, 0x209(1)
    addi 6, 3, 0x3032
    stb 7, 0x20a(1)
    stb 4, 0x20b(1)
    lwz 3, 0x208(1)
    stb 7, 0x210(1)
    stb 7, 0x211(1)
    stb 7, 0x212(1)
    stb 0, 0x213(1)
    lwz 0, 0x210(1)
    stw 3, 0x20c(1)
    stw 0, 0x214(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x214
    addi 5, 1, 0x20c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0xff
    li 4, 0x78
    li 0, 0x0
    stb 7, 0x1f8(1)
    lis 3, 0x6261
    li 5, 0x5072
    stb 7, 0x1f9(1)
    addi 6, 3, 0x3031
    stb 4, 0x1fa(1)
    stb 7, 0x1fb(1)
    lwz 3, 0x1f8(1)
    stb 7, 0x200(1)
    stb 7, 0x201(1)
    stb 4, 0x202(1)
    stb 0, 0x203(1)
    lwz 0, 0x200(1)
    stw 3, 0x1fc(1)
    stw 0, 0x204(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x204
    addi 5, 1, 0x1fc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0xff
    li 4, 0x78
    li 0, 0x0
    stb 7, 0x1e8(1)
    lis 3, 0x6261
    li 5, 0x5072
    stb 7, 0x1e9(1)
    addi 6, 3, 0x3032
    stb 4, 0x1ea(1)
    stb 7, 0x1eb(1)
    lwz 3, 0x1e8(1)
    stb 7, 0x1f0(1)
    stb 7, 0x1f1(1)
    stb 4, 0x1f2(1)
    stb 0, 0x1f3(1)
    lwz 0, 0x1f0(1)
    stw 3, 0x1ec(1)
    stw 0, 0x1f4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1f4
    addi 5, 1, 0x1ec
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x1d8(1)
    lis 3, 0x6261
    addi 6, 3, 0x3033
    li 5, 0x5072
    stb 4, 0x1d9(1)
    stb 4, 0x1da(1)
    stb 0, 0x1db(1)
    lwz 3, 0x1d8(1)
    stb 4, 0x1e0(1)
    stb 4, 0x1e1(1)
    stb 4, 0x1e2(1)
    stb 4, 0x1e3(1)
    lwz 0, 0x1e0(1)
    stw 3, 0x1dc(1)
    stw 0, 0x1e4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1e4
    addi 5, 1, 0x1dc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x1c8(1)
    lis 3, 0x6261
    addi 6, 3, 0x3034
    li 5, 0x5072
    stb 4, 0x1c9(1)
    stb 4, 0x1ca(1)
    stb 0, 0x1cb(1)
    lwz 3, 0x1c8(1)
    stb 4, 0x1d0(1)
    stb 4, 0x1d1(1)
    stb 4, 0x1d2(1)
    stb 4, 0x1d3(1)
    lwz 0, 0x1d0(1)
    stw 3, 0x1cc(1)
    stw 0, 0x1d4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1d4
    addi 5, 1, 0x1cc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3031
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x78
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3032
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x78
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3033
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x5461
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x5471
    lfs 0, 0x20(3)
    addi 6, 4, 0x3032
    lfs 2, 0x48(31)
    li 5, 0x0
    fsubs 1, 1, 0
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fnmsubs 1, 2, 31, 1
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x5471
    lwz 3, 0x4(31)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x5461
    addi 6, 3, 0x3032
    li 5, 0x0
    fsubs 0, 0, 31
    stfs 0, 0x3c(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x5461
    lwz 3, 0x4(31)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    fsubs 0, 0, 31
    stfs 0, 0x44(31)
    lbz 0, 0x6c(31)
    cmplwi 0, 0x1
    .4byte 0x408210C0 # bne .L_80435DD8
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x1b8(1)
    lis 3, 0x5461
    li 5, 0x0
    stb 7, 0x1b9(1)
    addi 6, 3, 0x3033
    stb 7, 0x1ba(1)
    stb 4, 0x1bb(1)
    lwz 3, 0x1b8(1)
    stb 7, 0x1c0(1)
    stb 7, 0x1c1(1)
    stb 7, 0x1c2(1)
    stb 0, 0x1c3(1)
    lwz 0, 0x1c0(1)
    stw 3, 0x1bc(1)
    stw 0, 0x1c4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c4
    addi 5, 1, 0x1bc
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x1a8(1)
    lis 3, 0x5471
    li 5, 0x0
    stb 7, 0x1a9(1)
    addi 6, 3, 0x3033
    stb 7, 0x1aa(1)
    stb 4, 0x1ab(1)
    lwz 3, 0x1a8(1)
    stb 7, 0x1b0(1)
    stb 7, 0x1b1(1)
    stb 7, 0x1b2(1)
    stb 0, 0x1b3(1)
    lwz 0, 0x1b0(1)
    stw 3, 0x1ac(1)
    stw 0, 0x1b4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1b4
    addi 5, 1, 0x1ac
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x198(1)
    lis 3, 0x6261
    addi 6, 3, 0x3035
    li 5, 0x5072
    stb 4, 0x199(1)
    stb 4, 0x19a(1)
    stb 0, 0x19b(1)
    lwz 3, 0x198(1)
    stb 4, 0x1a0(1)
    stb 4, 0x1a1(1)
    stb 4, 0x1a2(1)
    stb 4, 0x1a3(1)
    lwz 0, 0x1a0(1)
    stw 3, 0x19c(1)
    stw 0, 0x1a4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1a4
    addi 5, 1, 0x19c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x188(1)
    lis 3, 0x6261
    addi 6, 3, 0x3036
    li 5, 0x5072
    stb 4, 0x189(1)
    stb 4, 0x18a(1)
    stb 0, 0x18b(1)
    lwz 3, 0x188(1)
    stb 4, 0x190(1)
    stb 4, 0x191(1)
    stb 4, 0x192(1)
    stb 4, 0x193(1)
    lwz 0, 0x190(1)
    stw 3, 0x18c(1)
    stw 0, 0x194(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x194
    addi 5, 1, 0x18c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3035
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3036
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000E8C # b .L_80435DD8
L_80434F50:
    li 4, 0x0
    li 8, 0x64
    li 7, 0x14
    li 0, 0xff
    stb 8, 0x178(1)
    lis 3, 0x5461
    addi 6, 3, 0x3032
    li 5, 0x0
    stb 7, 0x179(1)
    stb 4, 0x17a(1)
    stb 0, 0x17b(1)
    lwz 3, 0x178(1)
    stb 8, 0x180(1)
    stb 7, 0x181(1)
    stb 4, 0x182(1)
    stb 4, 0x183(1)
    lwz 0, 0x180(1)
    stw 3, 0x17c(1)
    stw 0, 0x184(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x184
    addi 5, 1, 0x17c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x168(1)
    lis 3, 0x5461
    li 5, 0x0
    stb 7, 0x169(1)
    addi 6, 3, 0x3031
    stb 7, 0x16a(1)
    stb 4, 0x16b(1)
    lwz 3, 0x168(1)
    stb 7, 0x170(1)
    stb 7, 0x171(1)
    stb 7, 0x172(1)
    stb 0, 0x173(1)
    lwz 0, 0x170(1)
    stw 3, 0x16c(1)
    stw 0, 0x174(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x174
    addi 5, 1, 0x16c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x158(1)
    lis 3, 0x5471
    addi 6, 3, 0x3032
    li 5, 0x0
    stb 4, 0x159(1)
    stb 4, 0x15a(1)
    stb 0, 0x15b(1)
    lwz 3, 0x158(1)
    stb 4, 0x160(1)
    stb 4, 0x161(1)
    stb 4, 0x162(1)
    stb 4, 0x163(1)
    lwz 0, 0x160(1)
    stw 3, 0x15c(1)
    stw 0, 0x164(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x164
    addi 5, 1, 0x15c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x148(1)
    lis 3, 0x5471
    li 5, 0x0
    stb 7, 0x149(1)
    addi 6, 3, 0x3031
    stb 7, 0x14a(1)
    stb 4, 0x14b(1)
    lwz 3, 0x148(1)
    stb 7, 0x150(1)
    stb 7, 0x151(1)
    stb 7, 0x152(1)
    stb 0, 0x153(1)
    lwz 0, 0x150(1)
    stw 3, 0x14c(1)
    stw 0, 0x154(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x154
    addi 5, 1, 0x14c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0xff
    li 4, 0x78
    li 0, 0x0
    stb 7, 0x138(1)
    lis 3, 0x6261
    li 5, 0x5072
    stb 7, 0x139(1)
    addi 6, 3, 0x3033
    stb 4, 0x13a(1)
    stb 7, 0x13b(1)
    lwz 3, 0x138(1)
    stb 7, 0x140(1)
    stb 7, 0x141(1)
    stb 4, 0x142(1)
    stb 0, 0x143(1)
    lwz 0, 0x140(1)
    stw 3, 0x13c(1)
    stw 0, 0x144(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x144
    addi 5, 1, 0x13c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0xff
    li 4, 0x78
    li 0, 0x0
    stb 7, 0x128(1)
    lis 3, 0x6261
    li 5, 0x5072
    stb 7, 0x129(1)
    addi 6, 3, 0x3034
    stb 4, 0x12a(1)
    stb 7, 0x12b(1)
    lwz 3, 0x128(1)
    stb 7, 0x130(1)
    stb 7, 0x131(1)
    stb 4, 0x132(1)
    stb 0, 0x133(1)
    lwz 0, 0x130(1)
    stw 3, 0x12c(1)
    stw 0, 0x134(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x134
    addi 5, 1, 0x12c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x118(1)
    lis 3, 0x6261
    addi 6, 3, 0x3031
    li 5, 0x5072
    stb 4, 0x119(1)
    stb 4, 0x11a(1)
    stb 0, 0x11b(1)
    lwz 3, 0x118(1)
    stb 4, 0x120(1)
    stb 4, 0x121(1)
    stb 4, 0x122(1)
    stb 4, 0x123(1)
    lwz 0, 0x120(1)
    stw 3, 0x11c(1)
    stw 0, 0x124(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x124
    addi 5, 1, 0x11c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x108(1)
    lis 3, 0x6261
    addi 6, 3, 0x3032
    li 5, 0x5072
    stb 4, 0x109(1)
    stb 4, 0x10a(1)
    stb 0, 0x10b(1)
    lwz 3, 0x108(1)
    stb 4, 0x110(1)
    stb 4, 0x111(1)
    stb 4, 0x112(1)
    stb 4, 0x113(1)
    lwz 0, 0x110(1)
    stw 3, 0x10c(1)
    stw 0, 0x114(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x114
    addi 5, 1, 0x10c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3033
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x78
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x78
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3031
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3032
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x5461
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lfs 3, 0x4c(31)
    fsubs 2, 1, 0
    .4byte 0xC0220C28 # lfs f1, lbl_80543BC8@sda21(r0)
    .4byte 0xC0020C38 # lfs f0, lbl_80543BD8@sda21(r0)
    fnmsubs 2, 3, 31, 2
    fmuls 1, 2, 1
    stfs 1, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x44(31)
    lbz 0, 0x6c(31)
    cmplwi 0, 0x1
    .4byte 0x408209CC # bne .L_80435DD8
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0xf8(1)
    lis 3, 0x5461
    li 5, 0x0
    stb 7, 0xf9(1)
    addi 6, 3, 0x3033
    stb 7, 0xfa(1)
    stb 4, 0xfb(1)
    lwz 3, 0xf8(1)
    stb 7, 0x100(1)
    stb 7, 0x101(1)
    stb 7, 0x102(1)
    stb 0, 0x103(1)
    lwz 0, 0x100(1)
    stw 3, 0xfc(1)
    stw 0, 0x104(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x104
    addi 5, 1, 0xfc
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0xe8(1)
    lis 3, 0x5471
    li 5, 0x0
    stb 7, 0xe9(1)
    addi 6, 3, 0x3033
    stb 7, 0xea(1)
    stb 4, 0xeb(1)
    lwz 3, 0xe8(1)
    stb 7, 0xf0(1)
    stb 7, 0xf1(1)
    stb 7, 0xf2(1)
    stb 0, 0xf3(1)
    lwz 0, 0xf0(1)
    stw 3, 0xec(1)
    stw 0, 0xf4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xf4
    addi 5, 1, 0xec
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0xd8(1)
    lis 3, 0x6261
    addi 6, 3, 0x3035
    li 5, 0x5072
    stb 4, 0xd9(1)
    stb 4, 0xda(1)
    stb 0, 0xdb(1)
    lwz 3, 0xd8(1)
    stb 4, 0xe0(1)
    stb 4, 0xe1(1)
    stb 4, 0xe2(1)
    stb 4, 0xe3(1)
    lwz 0, 0xe0(1)
    stw 3, 0xdc(1)
    stw 0, 0xe4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xe4
    addi 5, 1, 0xdc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0xc8(1)
    lis 3, 0x6261
    addi 6, 3, 0x3036
    li 5, 0x5072
    stb 4, 0xc9(1)
    stb 4, 0xca(1)
    stb 0, 0xcb(1)
    lwz 3, 0xc8(1)
    stb 4, 0xd0(1)
    stb 4, 0xd1(1)
    stb 4, 0xd2(1)
    stb 4, 0xd3(1)
    lwz 0, 0xd0(1)
    stw 3, 0xcc(1)
    stw 0, 0xd4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xd4
    addi 5, 1, 0xcc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3035
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3036
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000798 # b .L_80435DD8
L_80435644:
    lbz 0, 0x6c(31)
    cmplwi 0, 0x1
    .4byte 0x4082078C # bne .L_80435DD8
    li 4, 0x0
    li 8, 0x64
    li 7, 0x14
    li 0, 0xff
    stb 8, 0xb8(1)
    lis 3, 0x5461
    addi 6, 3, 0x3033
    li 5, 0x0
    stb 7, 0xb9(1)
    stb 4, 0xba(1)
    stb 0, 0xbb(1)
    lwz 3, 0xb8(1)
    stb 8, 0xc0(1)
    stb 7, 0xc1(1)
    stb 4, 0xc2(1)
    stb 4, 0xc3(1)
    lwz 0, 0xc0(1)
    stw 3, 0xbc(1)
    stw 0, 0xc4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc4
    addi 5, 1, 0xbc
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0xa8(1)
    lis 3, 0x5461
    li 5, 0x0
    stb 7, 0xa9(1)
    addi 6, 3, 0x3032
    stb 7, 0xaa(1)
    stb 4, 0xab(1)
    lwz 3, 0xa8(1)
    stb 7, 0xb0(1)
    stb 7, 0xb1(1)
    stb 7, 0xb2(1)
    stb 0, 0xb3(1)
    lwz 0, 0xb0(1)
    stw 3, 0xac(1)
    stw 0, 0xb4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xb4
    addi 5, 1, 0xac
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x98(1)
    lis 3, 0x5461
    li 5, 0x0
    stb 7, 0x99(1)
    addi 6, 3, 0x3031
    stb 7, 0x9a(1)
    stb 4, 0x9b(1)
    lwz 3, 0x98(1)
    stb 7, 0xa0(1)
    stb 7, 0xa1(1)
    stb 7, 0xa2(1)
    stb 0, 0xa3(1)
    lwz 0, 0xa0(1)
    stw 3, 0x9c(1)
    stw 0, 0xa4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xa4
    addi 5, 1, 0x9c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x88(1)
    lis 3, 0x5471
    addi 6, 3, 0x3033
    li 5, 0x0
    stb 4, 0x89(1)
    stb 4, 0x8a(1)
    stb 0, 0x8b(1)
    lwz 3, 0x88(1)
    stb 4, 0x90(1)
    stb 4, 0x91(1)
    stb 4, 0x92(1)
    stb 4, 0x93(1)
    lwz 0, 0x90(1)
    stw 3, 0x8c(1)
    stw 0, 0x94(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x94
    addi 5, 1, 0x8c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x78(1)
    lis 3, 0x5471
    li 5, 0x0
    stb 7, 0x79(1)
    addi 6, 3, 0x3032
    stb 7, 0x7a(1)
    stb 4, 0x7b(1)
    lwz 3, 0x78(1)
    stb 7, 0x80(1)
    stb 7, 0x81(1)
    stb 7, 0x82(1)
    stb 0, 0x83(1)
    lwz 0, 0x80(1)
    stw 3, 0x7c(1)
    stw 0, 0x84(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x84
    addi 5, 1, 0x7c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0x3c
    li 4, 0xff
    li 0, 0x0
    stb 7, 0x68(1)
    lis 3, 0x5471
    li 5, 0x0
    stb 7, 0x69(1)
    addi 6, 3, 0x3031
    stb 7, 0x6a(1)
    stb 4, 0x6b(1)
    lwz 3, 0x68(1)
    stb 7, 0x70(1)
    stb 7, 0x71(1)
    stb 7, 0x72(1)
    stb 0, 0x73(1)
    lwz 0, 0x70(1)
    stw 3, 0x6c(1)
    stw 0, 0x74(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    addi 5, 1, 0x6c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 7, 0xff
    li 4, 0x78
    li 0, 0x0
    stb 7, 0x58(1)
    lis 3, 0x6261
    li 5, 0x5072
    stb 7, 0x59(1)
    addi 6, 3, 0x3035
    stb 4, 0x5a(1)
    stb 7, 0x5b(1)
    lwz 3, 0x58(1)
    stb 7, 0x60(1)
    stb 7, 0x61(1)
    stb 4, 0x62(1)
    stb 0, 0x63(1)
    lwz 0, 0x60(1)
    stw 3, 0x5c(1)
    stw 0, 0x64(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x64
    addi 5, 1, 0x5c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0xff
    li 4, 0x78
    li 0, 0x0
    stb 7, 0x48(1)
    lis 3, 0x6261
    li 5, 0x5072
    stb 7, 0x49(1)
    addi 6, 3, 0x3036
    stb 4, 0x4a(1)
    stb 7, 0x4b(1)
    lwz 3, 0x48(1)
    stb 7, 0x50(1)
    stb 7, 0x51(1)
    stb 4, 0x52(1)
    stb 0, 0x53(1)
    lwz 0, 0x50(1)
    stw 3, 0x4c(1)
    stw 0, 0x54(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    addi 5, 1, 0x4c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x38(1)
    lis 3, 0x6261
    addi 6, 3, 0x3033
    li 5, 0x5072
    stb 4, 0x39(1)
    stb 4, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 3, 0x38(1)
    stb 4, 0x40(1)
    stb 4, 0x41(1)
    stb 4, 0x42(1)
    stb 4, 0x43(1)
    lwz 0, 0x40(1)
    stw 3, 0x3c(1)
    stw 0, 0x44(1)
    lwz 3, 0x4(31)
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
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x28(1)
    lis 3, 0x6261
    addi 6, 3, 0x3034
    li 5, 0x5072
    stb 4, 0x29(1)
    stb 4, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 3, 0x28(1)
    stb 4, 0x30(1)
    stb 4, 0x31(1)
    stb 4, 0x32(1)
    stb 4, 0x33(1)
    lwz 0, 0x30(1)
    stw 3, 0x2c(1)
    stw 0, 0x34(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x2c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x18(1)
    lis 3, 0x6261
    addi 6, 3, 0x3031
    li 5, 0x5072
    stb 4, 0x19(1)
    stb 4, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 3, 0x18(1)
    stb 4, 0x20(1)
    stb 4, 0x21(1)
    stb 4, 0x22(1)
    stb 4, 0x23(1)
    lwz 0, 0x20(1)
    stw 3, 0x1c(1)
    stw 0, 0x24(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0xff
    stb 4, 0x8(1)
    lis 3, 0x6261
    addi 6, 3, 0x3032
    li 5, 0x5072
    stb 4, 0x9(1)
    stb 4, 0xa(1)
    stb 0, 0xb(1)
    lwz 3, 0x8(1)
    stb 4, 0x10(1)
    stb 4, 0x11(1)
    stb 4, 0x12(1)
    stb 4, 0x13(1)
    lwz 0, 0x10(1)
    stw 3, 0xc(1)
    stw 0, 0x14(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3035
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x78
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3036
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x78
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3033
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3031
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6261
    addi 6, 4, 0x3032
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x46
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x5461
    addi 6, 4, 0x3033
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x5471
    lfs 0, 0x20(3)
    addi 6, 4, 0x3032
    lfs 2, 0x50(31)
    li 5, 0x0
    fsubs 1, 1, 0
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fnmsubs 1, 2, 31, 1
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x5471
    lwz 3, 0x4(31)
    addi 6, 4, 0x3033
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x5461
    addi 6, 3, 0x3032
    li 5, 0x0
    fsubs 0, 0, 31
    stfs 0, 0x3c(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x5461
    lwz 3, 0x4(31)
    addi 6, 4, 0x3033
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    fsubs 0, 0, 31
    stfs 0, 0x44(31)
L_80435DD8:
    lwz 3, 0xc(31)
    lfs 1, 0x40(31)
    lfs 2, 0x44(31)
    bl fn_80402E08
    lfs 0, 0x40(31)
    lwz 3, 0x10(31)
    fneg 1, 0
    lfs 2, 0x44(31)
    bl fn_80402E08
    li 0, 0x0
    sth 0, 0x60(31)
    psq_l 31, 0x268(1), 0, 0
    lwz 0, 0x274(1)
    lfd 31, 0x260(1)
    lwz 31, 0x25c(1)
    mtlr 0
    addi 1, 1, 0x270
    blr

fn_80435E20:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lha 3, 0x60(3)
    extsh. 0, 3
    .4byte 0x4082014C # bne .L_80435F8C
    lha 3, 0x5e(31)
    subi 3, 3, 0x1
    extsh. 0, 3
    sth 3, 0x5e(31)
    .4byte 0x4181033C # bgt .L_80436190
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020C40 # lfs f0, lbl_80543BE0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0420C3C # lfs f2, lbl_80543BDC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    addi 0, 3, 0xa
    sth 0, 0x5e(31)
    lha 0, 0x66(31)
    cmpwi 0, -0x6
    .4byte 0x40820010 # bne .L_80435EC8
    li 0, 0x6
    sth 0, 0x66(31)
    .4byte 0x4800000C # b .L_80435ED0
L_80435EC8:
    li 0, -0x6
    sth 0, 0x66(31)
L_80435ED0:
    lwz 3, 0xc(31)
    lis 0, 0x4330
    lha 6, 0x62(31)
    li 4, 0x7a
    lwz 3, 0x4(3)
    lha 5, 0x66(31)
    lfs 3, 0x28(3)
    lfs 2, 0x20(3)
    add 5, 6, 5
    xoris 5, 5, 0x8000
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 2, 3, 2
    .4byte 0xC0820C28 # lfs f4, lbl_80543BC8@sda21(r0)
    fsubs 0, 1, 0
    stw 5, 0x14(1)
    fmuls 1, 4, 2
    .4byte 0xC8620C30 # lfd f3, lbl_80543BD0@sda21(r0)
    stw 0, 0x10(1)
    fmuls 2, 4, 0
    lfd 0, 0x10(1)
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x10(31)
    lis 0, 0x4330
    lha 6, 0x64(31)
    li 4, 0x7a
    lwz 3, 0x4(3)
    lha 5, 0x66(31)
    lfs 3, 0x28(3)
    lfs 2, 0x20(3)
    add 5, 6, 5
    xoris 5, 5, 0x8000
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 2, 3, 2
    .4byte 0xC0820C28 # lfs f4, lbl_80543BC8@sda21(r0)
    fsubs 0, 1, 0
    stw 5, 0x1c(1)
    fmuls 1, 4, 2
    .4byte 0xC8620C30 # lfd f3, lbl_80543BD0@sda21(r0)
    stw 0, 0x18(1)
    fmuls 2, 4, 0
    lfd 0, 0x18(1)
    fsubs 3, 0, 3
    bl fn_80096094
    .4byte 0x48000208 # b .L_80436190
L_80435F8C:
    cmpwi 3, 0x1
    .4byte 0x4182000C # beq .L_80435F9C
    cmpwi 3, -0x1
    .4byte 0x408200C4 # bne .L_8043605C
L_80435F9C:
    li 3, 0x0
    lis 0, 0x4330
    sth 3, 0x66(31)
    li 4, 0x7a
    .4byte 0xC0A20C28 # lfs f5, lbl_80543BC8@sda21(r0)
    lwz 3, 0xc(31)
    lha 6, 0x62(31)
    lwz 3, 0x4(3)
    lha 5, 0x66(31)
    lfs 3, 0x28(3)
    add 5, 6, 5
    lfs 2, 0x20(3)
    xoris 5, 5, 0x8000
    lfs 1, 0x2c(3)
    fsubs 4, 3, 2
    lfs 0, 0x24(3)
    stw 5, 0x1c(1)
    fsubs 2, 1, 0
    .4byte 0xC8620C30 # lfd f3, lbl_80543BD0@sda21(r0)
    stw 0, 0x18(1)
    fmuls 1, 5, 4
    lfd 0, 0x18(1)
    fmuls 2, 5, 2
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x10(31)
    lis 0, 0x4330
    lha 6, 0x64(31)
    li 4, 0x7a
    lwz 3, 0x4(3)
    lha 5, 0x66(31)
    lfs 3, 0x28(3)
    lfs 2, 0x20(3)
    add 5, 6, 5
    xoris 5, 5, 0x8000
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 2, 3, 2
    .4byte 0xC0820C28 # lfs f4, lbl_80543BC8@sda21(r0)
    fsubs 0, 1, 0
    stw 5, 0x14(1)
    fmuls 1, 4, 2
    .4byte 0xC8620C30 # lfd f3, lbl_80543BD0@sda21(r0)
    stw 0, 0x10(1)
    fmuls 2, 4, 0
    lfd 0, 0x10(1)
    fsubs 3, 0, 3
    bl fn_80096094
L_8043605C:
    lha 30, 0x60(31)
    extsh. 0, 30
    .4byte 0x40800098 # bge .L_804360FC
    cmpwi 30, -0x5
    .4byte 0x4081000C # ble .L_80436078
    neg 3, 30
    .4byte 0x48000018 # b .L_8043608C
L_80436078:
    cmpwi 30, -0xa
    addi 3, 30, 0xa
    .4byte 0x4082000C # bne .L_8043608C
    li 0, 0x0
    sth 0, 0x60(31)
L_8043608C:
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x18(1)
    .4byte 0xC8620C30 # lfd f3, lbl_80543BD0@sda21(r0)
    .4byte 0xC0820C44 # lfs f4, lbl_80543BE4@sda21(r0)
    .4byte 0xC0020C48 # lfs f0, lbl_80543BE8@sda21(r0)
    xoris 0, 3, 0x8000
    lfs 5, 0x40(31)
    stw 0, 0x1c(1)
    lwz 3, 0xc(31)
    lfd 1, 0x18(1)
    lfs 2, 0x44(31)
    fsubs 1, 1, 3
    fmuls 1, 4, 1
    fdivs 0, 1, 0
    fadds 1, 5, 0
    bl fn_80402E08
    lfs 0, 0x40(31)
    lwz 3, 0x10(31)
    fneg 1, 0
    lfs 2, 0x44(31)
    bl fn_80402E08
    lha 3, 0x60(31)
    cmpwi 3, 0x0
    .4byte 0x418200A4 # beq .L_80436190
    subi 0, 3, 0x1
    sth 0, 0x60(31)
    .4byte 0x48000098 # b .L_80436190
L_804360FC:
    extsh. 0, 30
    .4byte 0x40810090 # ble .L_80436190
    cmpwi 30, 0x5
    .4byte 0x40800008 # bge .L_80436110
    .4byte 0x48000018 # b .L_80436124
L_80436110:
    cmpwi 30, 0xa
    subfic 30, 30, 0xa
    .4byte 0x4082000C # bne .L_80436124
    li 0, 0x0
    sth 0, 0x60(31)
L_80436124:
    lwz 3, 0xc(31)
    lfs 1, 0x40(31)
    lfs 2, 0x44(31)
    bl fn_80402E08
    mullw 3, 30, 30
    lis 0, 0x4330
    lfs 0, 0x40(31)
    stw 0, 0x18(1)
    .4byte 0xC8420C30 # lfd f2, lbl_80543BD0@sda21(r0)
    fneg 4, 0
    xoris 0, 3, 0x8000
    .4byte 0xC0620C4C # lfs f3, lbl_80543BEC@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC0020C48 # lfs f0, lbl_80543BE8@sda21(r0)
    lfd 1, 0x18(1)
    lwz 3, 0x10(31)
    fsubs 1, 1, 2
    lfs 2, 0x44(31)
    fmuls 1, 3, 1
    fdivs 0, 1, 0
    fadds 1, 4, 0
    bl fn_80402E08
    lha 3, 0x60(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80436190
    addi 0, 3, 0x1
    sth 0, 0x60(31)
L_80436190:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_804361A8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1100
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    lwz 5, 0x54(31)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820188 # beq .L_80436358
    lbz 0, 0x6c(31)
    cmplwi 0, 0x0
    .4byte 0x40820098 # bne .L_80436274
    lbz 0, 0x68(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8043620C
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x7c(3)
    .4byte 0x48000020 # b .L_80436228
L_8043620C:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x7c(3)
L_80436228:
    lbz 0, 0x69(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80436254
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x88(3)
    .4byte 0x480000FC # b .L_8043634C
L_80436254:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x88(3)
    .4byte 0x480000DC # b .L_8043634C
L_80436274:
    lbz 0, 0x68(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_804362A0
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x7d(3)
    .4byte 0x48000020 # b .L_804362BC
L_804362A0:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x7d(3)
L_804362BC:
    lbz 0, 0x69(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_804362E8
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x7f(3)
    .4byte 0x48000020 # b .L_80436304
L_804362E8:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x7f(3)
L_80436304:
    lbz 0, 0x6a(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80436330
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x89(3)
    .4byte 0x48000020 # b .L_8043634C
L_80436330:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    stb 4, 0x89(3)
L_8043634C:
    li 0, 0x2
    stb 0, 0x6b(31)
    .4byte 0x480001AC # b .L_80436500
L_80436358:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    lwz 5, 0x54(31)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043637C
    li 0, 0x2
    stb 0, 0x6b(31)
    .4byte 0x48000188 # b .L_80436500
L_8043637C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    lwz 5, 0x54(31)
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820074 # beq .L_80436404
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820160 # beq .L_80436500
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lha 3, 0x5a(31)
    addi 0, 3, 0x1
    sth 0, 0x5a(31)
    lbz 0, 0x6c(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_804363E4
    lha 0, 0x5a(31)
    cmpwi 0, 0x1
    .4byte 0x40810024 # ble .L_804363F8
    li 0, 0x0
    sth 0, 0x5a(31)
    .4byte 0x48000018 # b .L_804363F8
L_804363E4:
    lha 0, 0x5a(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_804363F8
    li 0, 0x0
    sth 0, 0x5a(31)
L_804363F8:
    mr 3, 31
    bl fn_80434724
    .4byte 0x48000100 # b .L_80436500
L_80436404:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    lwz 5, 0x54(31)
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820074 # beq .L_8043648C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x418200D8 # beq .L_80436500
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lha 3, 0x5a(31)
    subi 0, 3, 0x1
    sth 0, 0x5a(31)
    lbz 0, 0x6c(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8043646C
    lha 0, 0x5a(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80436480
    li 0, 0x1
    sth 0, 0x5a(31)
    .4byte 0x48000018 # b .L_80436480
L_8043646C:
    lha 0, 0x5a(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80436480
    li 0, 0x2
    sth 0, 0x5a(31)
L_80436480:
    mr 3, 31
    bl fn_80434724
    .4byte 0x48000078 # b .L_80436500
L_8043648C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    lwz 5, 0x54(31)
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_804364C8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    li 0, -0x1
    mr 3, 31
    sth 0, 0x60(31)
    bl fn_80434370
    .4byte 0x4800003C # b .L_80436500
L_804364C8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    lwz 5, 0x54(31)
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80436500
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    li 0, 0x1
    mr 3, 31
    sth 0, 0x60(31)
    bl fn_80434370
L_80436500:
    mr 3, 31
    bl fn_80435E20
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043651C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stmw 26, 0x8(1)
    mr 26, 3
    li 30, 0x0
    lha 3, 0x58(3)
    li 29, 0x0
    li 28, 0x0
    addi 0, 3, 0x1
    sth 0, 0x58(26)
    lha 0, 0x58(26)
    cmpwi 0, 0x0
    .4byte 0x40810084 # ble .L_804365DC
    lwz 3, 0x8(26)
    li 4, 0x10
    .4byte 0xC0220C50 # lfs f1, lbl_80543BF0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420C38 # lfs f2, lbl_80543BD8@sda21(r0)
    bl fn_80402940
    .4byte 0xC3E20C50 # lfs f31, lbl_80543BF0@sda21(r0)
    mr 30, 3
    mr 31, 26
    li 27, 0x0
L_80436584:
    lfs 2, 0x44(26)
    li 4, 0x10
    lwz 3, 0xc(31)
    li 5, 0x0
    fadds 1, 31, 2
    bl fn_80402940
    addi 27, 27, 0x1
    addi 31, 31, 0x4
    cmpwi 27, 0x2
    .4byte 0x4180FFDC # blt .L_80436584
    lwz 3, 0x14(26)
    li 4, 0x10
    .4byte 0xC0220C50 # lfs f1, lbl_80543BF0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420C38 # lfs f2, lbl_80543BD8@sda21(r0)
    bl fn_80402940
    lwz 3, 0x18(26)
    li 4, 0x10
    .4byte 0xC0220C50 # lfs f1, lbl_80543BF0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420C38 # lfs f2, lbl_80543BD8@sda21(r0)
    bl fn_80402940
L_804365DC:
    lha 0, 0x58(26)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_80436604
    lwz 3, 0x34(26)
    li 4, 0x14
    .4byte 0xC0220C54 # lfs f1, lbl_80543BF4@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420C38 # lfs f2, lbl_80543BD8@sda21(r0)
    bl fn_80402940
    mr 29, 3
L_80436604:
    lha 0, 0x58(26)
    cmpwi 0, 0xa
    .4byte 0x40810020 # ble .L_8043662C
    lwz 3, 0x38(26)
    li 4, 0x16
    .4byte 0xC0220C54 # lfs f1, lbl_80543BF4@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420C38 # lfs f2, lbl_80543BD8@sda21(r0)
    bl fn_80402940
    mr 28, 3
L_8043662C:
    clrlwi. 0, 30, 24
    .4byte 0x4182001C # beq .L_8043664C
    clrlwi. 0, 29, 24
    .4byte 0x41820014 # beq .L_8043664C
    clrlwi. 0, 28, 24
    .4byte 0x4182000C # beq .L_8043664C
    li 0, 0x1
    stb 0, 0x6b(26)
L_8043664C:
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    lmw 26, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80436668:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220C38 # lfs f1, lbl_80543BD8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804366B8:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B1690@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B1690@l
    stw 31, 0xc(1)
    mr 31, 3
    lbz 5, 0x6b(3)
    mulli 4, 5, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    lbz 0, 0x6b(31)
    lwz 31, 0xc(1)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 3, 0, 5
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043670C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    lis 5, 0x5471
    lwz 3, 0x4(3)
    mr 31, 4
    addi 6, 5, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 31, 0x11c(3)
    li 7, 0x0
    lis 0, 0x4330
    lis 3, 0x19
    sth 7, 0x58(30)
    addi 6, 3, 0x660d
    .4byte 0xC0220C40 # lfs f1, lbl_80543BE0@sda21(r0)
    li 3, -0x6
    sth 7, 0x5a(30)
    li 4, 0x7a
    .4byte 0xC0420C3C # lfs f2, lbl_80543BDC@sda21(r0)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    stw 0, 0x20(1)
    lwz 0, 0xb4(8)
    .4byte 0xC0A20C28 # lfs f5, lbl_80543BC8@sda21(r0)
    mullw 5, 0, 6
    .4byte 0xC8620C30 # lfd f3, lbl_80543BD0@sda21(r0)
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 5, 0x14(1)
    addi 0, 5, 0xa
    sth 0, 0x5c(30)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(8)
    mullw 5, 0, 6
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 5, 0x1c(1)
    addi 0, 5, 0xa
    sth 0, 0x5e(30)
    sth 7, 0x60(30)
    sth 3, 0x66(30)
    stb 7, 0x6b(30)
    stb 31, 0x6c(30)
    lwz 3, 0xc(30)
    lha 5, 0x62(30)
    lwz 3, 0x4(3)
    lha 0, 0x66(30)
    lfs 4, 0x28(3)
    add 0, 5, 0
    lfs 2, 0x20(3)
    xoris 0, 0, 0x8000
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 4, 4, 2
    stw 0, 0x24(1)
    fsubs 2, 1, 0
    lfd 0, 0x20(1)
    fmuls 1, 5, 4
    fmuls 2, 5, 2
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x10(30)
    lis 0, 0x4330
    lha 6, 0x64(30)
    li 4, 0x7a
    lwz 3, 0x4(3)
    lha 5, 0x66(30)
    lfs 3, 0x28(3)
    lfs 2, 0x20(3)
    add 5, 6, 5
    xoris 5, 5, 0x8000
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 2, 3, 2
    .4byte 0xC0820C28 # lfs f4, lbl_80543BC8@sda21(r0)
    fsubs 0, 1, 0
    stw 5, 0x2c(1)
    fmuls 1, 4, 2
    .4byte 0xC8620C30 # lfd f3, lbl_80543BD0@sda21(r0)
    stw 0, 0x28(1)
    fmuls 2, 4, 0
    lfd 0, 0x28(1)
    fsubs 3, 0, 3
    bl fn_80096094
    lbz 0, 0x6c(30)
    cmplwi 0, 0x0
    .4byte 0x408201EC # bne .L_80436AD0
    lwz 3, 0x4(30)
    lis 4, 0x5471
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x129
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0xC0420C58 # lfs f2, lbl_80543BF8@sda21(r0)
    lis 3, lbl_8050EC80@ha
    addi 31, 3, lbl_8050EC80@l
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fdivs 30, 31, 2
    lwz 0, 0x10(31)
    mulli 0, 0, 0xc8
    add 3, 31, 0
    lbz 0, 0x7c(3)
    stb 0, 0x68(30)
    fmuls 29, 1, 30
    lwz 4, 0x1c(30)
    lwz 3, 0x4(4)
    fadds 29, 29, 2
    lfs 1, 0x10(4)
    lwz 12, 0x0(3)
    lfs 2, 0xc(4)
    fmuls 31, 29, 0
    lwz 12, 0x10(12)
    fsubs 1, 1, 31
    mtctr 12
    bctrl
    lwz 4, 0x1c(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 4, 0x20(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 31
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x20(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(30)
    lis 4, 0x5471
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x24d
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    fmuls 29, 1, 30
    mulli 3, 4, 0xc8
    .4byte 0xC0220C58 # lfs f1, lbl_80543BF8@sda21(r0)
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fadds 29, 29, 1
    add 3, 0, 3
    lbz 0, 0x88(3)
    fmuls 30, 29, 0
    stb 0, 0x69(30)
    lwz 4, 0x24(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 30
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x24(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 4, 0x28(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 30
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x28(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x480002D8 # b .L_80436DA4
L_80436AD0:
    lwz 3, 0x4(30)
    lis 4, 0x5471
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0xC0420C58 # lfs f2, lbl_80543BF8@sda21(r0)
    lis 3, lbl_8050EC80@ha
    addi 31, 3, lbl_8050EC80@l
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fdivs 31, 31, 2
    lwz 0, 0x10(31)
    mulli 0, 0, 0xc8
    add 3, 31, 0
    lbz 0, 0x7d(3)
    stb 0, 0x68(30)
    fmuls 29, 1, 31
    lwz 4, 0x1c(30)
    lwz 3, 0x4(4)
    fadds 29, 29, 2
    lfs 1, 0x10(4)
    lwz 12, 0x0(3)
    lfs 2, 0xc(4)
    fmuls 30, 29, 0
    lwz 12, 0x10(12)
    fsubs 1, 1, 30
    mtctr 12
    bctrl
    lwz 4, 0x1c(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 4, 0x20(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 30
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x20(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(30)
    lis 4, 0x5471
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf9
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    fmuls 29, 1, 31
    mulli 3, 4, 0xc8
    .4byte 0xC0220C58 # lfs f1, lbl_80543BF8@sda21(r0)
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fadds 29, 29, 1
    add 3, 0, 3
    lbz 0, 0x7f(3)
    fmuls 30, 29, 0
    stb 0, 0x69(30)
    lwz 4, 0x24(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 30
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x24(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 4, 0x28(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 30
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x28(30)
    fmr 1, 29
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(30)
    lis 4, 0x5471
    addi 6, 4, 0x3033
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x24d
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    fmuls 31, 1, 31
    mulli 3, 4, 0xc8
    .4byte 0xC0220C58 # lfs f1, lbl_80543BF8@sda21(r0)
    .4byte 0xC0020C28 # lfs f0, lbl_80543BC8@sda21(r0)
    fadds 31, 31, 1
    add 3, 0, 3
    lbz 0, 0x89(3)
    fmuls 30, 31, 0
    stb 0, 0x6a(30)
    lwz 4, 0x2c(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 30
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x2c(30)
    fmr 1, 31
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 4, 0x30(30)
    lwz 3, 0x4(4)
    lfs 0, 0x10(4)
    lwz 12, 0x0(3)
    fsubs 1, 0, 30
    lfs 2, 0xc(4)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 4, 0x30(30)
    fmr 1, 31
    lwz 3, 0x4(4)
    lfs 2, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
L_80436DA4:
    lbz 0, 0x68(30)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_80436DF0
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x48(30)
    .4byte 0x48000040 # b .L_80436E2C
L_80436DF0:
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x48(30)
L_80436E2C:
    lbz 0, 0x6c(30)
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_80436EC4
    lbz 0, 0x69(30)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_80436E84
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(30)
    .4byte 0x48000154 # b .L_80436FD4
L_80436E84:
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(30)
    .4byte 0x48000114 # b .L_80436FD4
L_80436EC4:
    lbz 0, 0x69(30)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_80436F10
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfe
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(30)
    .4byte 0x48000040 # b .L_80436F4C
L_80436F10:
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xff
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x4c(30)
L_80436F4C:
    lbz 0, 0x6a(30)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_80436F98
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3033
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x50(30)
    .4byte 0x48000040 # b .L_80436FD4
L_80436F98:
    lwz 3, 0x4(30)
    lis 4, 0x5461
    addi 6, 4, 0x3033
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xfd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0x50(30)
L_80436FD4:
    mr 3, 30
    bl fn_80434724
    lwz 3, 0x8(30)
    .4byte 0xC0220C38 # lfs f1, lbl_80543BD8@sda21(r0)
    .4byte 0xC0420C50 # lfs f2, lbl_80543BF0@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x8(30)
    li 0, 0x0
    .4byte 0xC0220C50 # lfs f1, lbl_80543BF0@sda21(r0)
    sth 0, 0x22(3)
    lfs 0, 0x44(30)
    lwz 3, 0xc(30)
    fadds 2, 1, 0
    lfs 1, 0x40(30)
    bl fn_80402E08
    lfs 1, 0x40(30)
    .4byte 0xC0420C50 # lfs f2, lbl_80543BF0@sda21(r0)
    lfs 0, 0x44(30)
    fneg 1, 1
    lwz 3, 0x10(30)
    fadds 2, 2, 0
    bl fn_80402E08
    lwz 3, 0xc(30)
    li 0, 0x0
    .4byte 0xC0220C38 # lfs f1, lbl_80543BD8@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC0420C50 # lfs f2, lbl_80543BF0@sda21(r0)
    lwz 3, 0x10(30)
    sth 0, 0x22(3)
    lwz 3, 0x14(30)
    bl fn_80402E08
    lwz 3, 0x14(30)
    li 0, 0x0
    .4byte 0xC0220C38 # lfs f1, lbl_80543BD8@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC0420C50 # lfs f2, lbl_80543BF0@sda21(r0)
    lwz 3, 0x18(30)
    bl fn_80402E08
    lwz 3, 0x18(30)
    li 0, 0x0
    .4byte 0xC0220C38 # lfs f1, lbl_80543BD8@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC0420C54 # lfs f2, lbl_80543BF4@sda21(r0)
    lwz 3, 0x34(30)
    bl fn_80402E08
    lwz 3, 0x34(30)
    li 0, 0x0
    .4byte 0xC0220C38 # lfs f1, lbl_80543BD8@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC0420C54 # lfs f2, lbl_80543BF4@sda21(r0)
    lwz 3, 0x38(30)
    bl fn_80402E08
    lwz 3, 0x38(30)
    li 0, 0x0
    sth 0, 0x22(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_804370D8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x23c(3)
    addi 0, 3, 0x1
    stw 0, 0x54(30)
    .4byte 0x48000018 # b .L_804370EC
L_804370D8:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x23d(3)
    addi 0, 3, 0x2
    stw 0, 0x54(30)
L_804370EC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 0, 0x74(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

