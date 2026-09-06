# fn_80393228 - actor@lbl_804AF490: helper function (0x2EC)
# Also calls fn_80455770 (x4).
.section extab, "a"
.balign 4
.global etb_8000EF50
etb_8000EF50:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EF50, 8

.section extabindex, "a"
.balign 4
.global eti_8001ED9C
eti_8001ED9C:
    .4byte fn_80393228
    .4byte 0x000002EC
    .4byte etb_8000EF50
.size eti_8001ED9C, 12

.text
.balign 4
.global fn_80393228

fn_80393228:
    stwu 1, -0xa0(1)
    mflr 0
    .4byte 0xC8420200 # lfd f2, lbl_805431A0@sda21(r0)
    stw 0, 0xa4(1)
    lis 0, 0x4330
    .4byte 0xC00201F8 # lfs f0, lbl_80543198@sda21(r0)
    stw 31, 0x9c(1)
    mr 31, 3
    .4byte 0xC06201F4 # lfs f3, lbl_80543194@sda21(r0)
    lwz 3, 0x230(3)
    lwz 4, 0x23c(31)
    xoris 3, 3, 0x8000
    stw 0, 0x88(1)
    cmpwi 4, 0xa
    stw 3, 0x8c(1)
    lfd 1, 0x88(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    .4byte 0x40800080 # bge .L_803932F4
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800280 # bge .L_80393500
    fctiwz 0, 0
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0x38E201D8 # li r7, lbl_80543178@sda21
    lwz 0, 0x238(31)
    .4byte 0x38C201D0 # li r6, lbl_80543170@sda21
    stfd 0, 0x88(1)
    .4byte 0x386201D4 # li r3, lbl_80543174@sda21
    lbzx 9, 7, 0
    addi 5, 1, 0x4c
    lbzx 8, 6, 0
    addi 6, 1, 0x14
    lbzx 7, 3, 0
    lwz 0, 0x8c(1)
    stb 8, 0x24(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x25(1)
    .4byte 0xC02201EC # lfs f1, lbl_8054318C@sda21(r0)
    stb 9, 0x26(1)
    stb 0, 0x27(1)
    lwz 0, 0x24(1)
    psq_st 3, 0x7c(1), 0, 0
    stfs 2, 0x84(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 2, 0x54(1)
    stw 0, 0x14(1)
    bl fn_80455770
    .4byte 0x48000210 # b .L_80393500
L_803932F4:
    cmpwi 4, 0x64
    .4byte 0x4080018C # bge .L_80393484
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080009C # bge .L_803933A0
    lis 3, 0x6666
    fctiwz 2, 0
    addi 0, 3, 0x6667
    lfs 3, 0x10(31)
    mulhw 0, 0, 4
    lfs 1, 0xc(31)
    .4byte 0xC0020214 # lfs f0, lbl_805431B4@sda21(r0)
    stfd 2, 0x88(1)
    .4byte 0x386201D8 # li r3, lbl_80543178@sda21
    fsubs 0, 1, 0
    lwz 7, 0x238(31)
    .4byte 0x38A201D0 # li r5, lbl_80543170@sda21
    srawi 0, 0, 2
    .4byte 0x388201D4 # li r4, lbl_80543174@sda21
    lbzx 8, 3, 7
    srwi 3, 0, 31
    lbzx 6, 5, 7
    addi 5, 1, 0x40
    lbzx 7, 4, 7
    add 4, 0, 3
    lfs 2, 0x14(31)
    lwz 0, 0x8c(1)
    stb 6, 0x20(1)
    addi 6, 1, 0x10
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x21(1)
    .4byte 0xC02201EC # lfs f1, lbl_8054318C@sda21(r0)
    stb 8, 0x22(1)
    stb 0, 0x23(1)
    lwz 0, 0x20(1)
    stfs 0, 0x70(1)
    stfs 3, 0x74(1)
    psq_l 0, 0x70(1), 0, 0
    stfs 2, 0x78(1)
    psq_st 0, 0x0(5), 0, 0
    stfs 2, 0x48(1)
    stw 0, 0x10(1)
    bl fn_80455770
L_803933A0:
    lwz 4, 0x230(31)
    lis 3, 0x4330
    lwz 0, 0x4(31)
    xoris 4, 4, 0x8000
    stw 3, 0x88(1)
    .4byte 0xC8420200 # lfd f2, lbl_805431A0@sda21(r0)
    cmpwi 0, 0x8
    stw 4, 0x8c(1)
    .4byte 0xC00201F8 # lfs f0, lbl_80543198@sda21(r0)
    lfd 1, 0x88(1)
    .4byte 0xC06201F4 # lfs f3, lbl_80543194@sda21(r0)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    .4byte 0x40800128 # bge .L_80393500
    lis 3, 0x6666
    lwz 4, 0x23c(31)
    addi 0, 3, 0x6667
    fctiwz 2, 0
    mulhw 0, 0, 4
    lfs 3, 0x10(31)
    lfs 4, 0x14(31)
    .4byte 0x386201D8 # li r3, lbl_80543178@sda21
    lwz 10, 0x238(31)
    lfs 0, 0xc(31)
    .4byte 0xC0220214 # lfs f1, lbl_805431B4@sda21(r0)
    .4byte 0x38E201D0 # li r7, lbl_80543170@sda21
    lbzx 9, 3, 10
    srawi 0, 0, 2
    fadds 0, 1, 0
    srwi 3, 0, 31
    lbzx 8, 7, 10
    add 0, 0, 3
    stfd 2, 0x88(1)
    .4byte 0x38C201D4 # li r6, lbl_80543174@sda21
    lbzx 3, 6, 10
    mulli 0, 0, 0xa
    lwz 7, 0x8c(1)
    addi 5, 1, 0x34
    stb 3, 0x1d(1)
    addi 6, 1, 0xc
    subf 4, 0, 4
    stb 8, 0x1c(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 9, 0x1e(1)
    .4byte 0xC02201EC # lfs f1, lbl_8054318C@sda21(r0)
    stb 7, 0x1f(1)
    lwz 0, 0x1c(1)
    stfs 0, 0x64(1)
    stfs 3, 0x68(1)
    psq_l 0, 0x64(1), 0, 0
    stfs 4, 0x6c(1)
    psq_st 0, 0x0(5), 0, 0
    stfs 4, 0x3c(1)
    stw 0, 0xc(1)
    bl fn_80455770
    .4byte 0x48000080 # b .L_80393500
L_80393484:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800074 # bge .L_80393500
    fctiwz 0, 0
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0x38C201D8 # li r6, lbl_80543178@sda21
    lwz 0, 0x238(31)
    .4byte 0x388201D0 # li r4, lbl_80543170@sda21
    .4byte 0x386201D4 # li r3, lbl_80543174@sda21
    stfd 0, 0x88(1)
    lbzx 9, 6, 0
    addi 5, 1, 0x28
    lbzx 8, 4, 0
    addi 6, 1, 0x8
    lbzx 7, 3, 0
    li 4, 0xa
    lwz 0, 0x8c(1)
    stb 8, 0x18(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x19(1)
    .4byte 0xC02201EC # lfs f1, lbl_8054318C@sda21(r0)
    stb 9, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    psq_st 3, 0x58(1), 0, 0
    stfs 2, 0x60(1)
    psq_st 3, 0x0(5), 0, 0
    stfs 2, 0x30(1)
    stw 0, 0x8(1)
    bl fn_80455770
L_80393500:
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

