# fn_802EE830 - GNEF: setParams (0x1F4)
# Zeroes this->0x230-0x248, then computes a half-extent box via the
# magic-number int-to-float idiom (same pattern as BGMN/ZOOM's setParams),
# seeded from this->0xc (position). Track A: byte-match verified,
# structural overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D24C
etb_8000D24C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D24C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C48C
eti_8001C48C:
    .4byte fn_802EE830
    .4byte 0x000001F4
    .4byte etb_8000D24C
.size eti_8001C48C, 12

.text
.balign 4
.global fn_802EE830

fn_802EE830:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, 0x4330
    li 6, 0x0
    stw 0, 0x24(1)
    li 4, -0x1
    .4byte 0xC842E488 # lfd f2, lbl_80541428@sda21(r0)
    li 0, 0xff
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC002E464 # lfs f0, lbl_80541404@sda21(r0)
    stw 6, 0x230(3)
    stw 6, 0x234(3)
    stw 6, 0x238(3)
    stw 6, 0x23c(3)
    stw 6, 0x240(3)
    stw 6, 0x244(3)
    stw 6, 0x248(3)
    lfs 1, 0xc(3)
    stw 5, 0x10(1)
    fctiwz 1, 1
    stfd 1, 0x8(1)
    lwz 5, 0xc(1)
    srawi 5, 5, 4
    addze 5, 5
    slwi 5, 5, 4
    addi 5, 5, 0x8
    xoris 5, 5, 0x8000
    stw 5, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    stfs 1, 0xc(3)
    stw 6, 0x24c(3)
    lwz 5, 0x90(3)
    extrwi 5, 5, 2, 13
    stw 5, 0x254(3)
    stw 6, 0x250(3)
    lwz 5, 0x90(3)
    extrwi 5, 5, 5, 15
    stw 5, 0x258(3)
    lwz 5, 0x90(3)
    extrwi 5, 5, 5, 20
    stw 5, 0x25c(3)
    stb 6, 0x276(3)
    stb 6, 0x277(3)
    stb 6, 0x278(3)
    lfs 1, 0xc(3)
    stfs 1, 0x268(3)
    lfs 1, 0x10(3)
    stfs 1, 0x26c(3)
    lfs 1, 0x14(3)
    stfs 1, 0x270(3)
    lfs 1, 0x26c(3)
    fsubs 0, 1, 0
    stfs 0, 0x26c(3)
    stw 4, 0x260(3)
    stw 4, 0x264(3)
    stb 0, 0x275(3)
    stb 6, 0x279(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802EE950
    li 3, 0x0
    li 0, 0x10
    stb 3, 0x11c(31)
    stw 3, 0x2cc(31)
    stw 0, 0x24c(31)
    .4byte 0x48000054 # b .L_802EE9A0
L_802EE950:
    lwz 0, 0x254(31)
    lis 3, lbl_804AA330@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 3, 3, lbl_804AA330@l
    lwzx 4, 3, 0
    addi 3, 5, 0x4d47
    bl fn_804032E8
    stw 3, 0x2cc(31)
    addi 4, 31, 0xc
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    li 5, 0x4e
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
L_802EE9A0:
    .4byte 0xC002E460 # lfs f0, lbl_80541400@sda21(r0)
    li 3, 0x0
    li 0, 0x1
    stfs 0, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    stfs 0, 0x288(31)
    sth 3, 0x28c(31)
    stb 3, 0x28e(31)
    stfs 0, 0x290(31)
    stfs 0, 0x294(31)
    stfs 0, 0x298(31)
    stfs 0, 0x29c(31)
    sth 3, 0x2a0(31)
    stb 3, 0x2a2(31)
    stfs 0, 0x2a4(31)
    stfs 0, 0x2a8(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    sth 3, 0x2b4(31)
    stb 3, 0x2b6(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2c0(31)
    stfs 0, 0x2c4(31)
    sth 3, 0x2c8(31)
    stb 3, 0x2ca(31)
    stb 0, 0x11f(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

