# fn_802E6BCC - ZOOM: setParams (0xD4)
# Extracts bitfields from this->0x90 into this->0x234/0x238/0x23c/0x244/
# 0x248, zeroes 0x240, adds a jitter offset to position fields 0xc/0x10,
# computes a negative x/z half-extent offset pair (magic-number
# int-to-float conversion, same idiom as BGMN's setParams) into
# 0x60/0x64/0x68/0x6c, zeroes 0x230.
.section extab, "a"
.balign 4
.global etb_8000D03C
etb_8000D03C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D03C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C1A4
eti_8001C1A4:
    .4byte fn_802E6BCC
    .4byte 0x000000D4
    .4byte etb_8000D03C
.size eti_8001C1A4, 12

.text
.balign 4
.global fn_802E6BCC

fn_802E6BCC:
    stwu 1, -0x20(1)
    lis 0, 0x4330
    li 5, 0x0
    .4byte 0xC022E29C # lfs f1, lbl_8054123C@sda21(r0)
    lwz 4, 0x90(3)
    stw 0, 0x10(1)
    extrwi 4, 4, 2, 7
    .4byte 0xC842E2A8 # lfd f2, lbl_80541248@sda21(r0)
    stw 4, 0x234(3)
    .4byte 0xC062E2A0 # lfs f3, lbl_80541240@sda21(r0)
    lwz 4, 0x90(3)
    stw 0, 0x8(1)
    extrwi 0, 4, 1, 9
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 20
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 4, 0, 5, 10
    addi 0, 4, 0x1
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    extrwi 4, 0, 5, 15
    addi 0, 4, 0x1
    stw 0, 0x248(3)
    stw 5, 0x240(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    lwz 0, 0x244(3)
    lwz 4, 0x248(3)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    xoris 0, 4, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x10(1)
    lfd 1, 0x8(1)
    fsubs 0, 0, 2
    fsubs 1, 1, 2
    fmuls 4, 3, 0
    fmuls 2, 3, 1
    fneg 1, 4
    fneg 0, 2
    stfs 1, 0x60(3)
    stfs 0, 0x64(3)
    stfs 4, 0x68(3)
    stfs 2, 0x6c(3)
    stw 5, 0x230(3)
    addi 1, 1, 0x20
    blr

