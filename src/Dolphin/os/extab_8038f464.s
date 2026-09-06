# fn_8038F464 - actor@lbl_804AF32C: field-defaults initializer (0x2BC)
# Sets a large number of default float/int state fields (bounding-box at
# 0x60/0x64/0x68/0x6c, tuning floats at 0x3c/0x40/0x44, and a dozen more
# fields from 0x234 through 0x29c) then reads bitfields from this->0x90.
# Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000EE40
etb_8000EE40:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EE40, 8

.section extabindex, "a"
.balign 4
.global eti_8001EC64
eti_8001EC64:
    .4byte fn_8038F464
    .4byte 0x000002BC
    .4byte etb_8000EE40
.size eti_8001EC64, 12

.text
.balign 4
.global fn_8038F464

fn_8038F464:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC04201A8 # lfs f2, lbl_80543148@sda21(r0)
    stw 0, 0x24(1)
    li 0, -0x1
    .4byte 0xC0220190 # lfs f1, lbl_80543130@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC0020174 # lfs f0, lbl_80543114@sda21(r0)
    stfs 2, 0x60(3)
    li 3, 0x0
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 3, 0x260(31)
    stw 3, 0x268(31)
    stw 0, 0x270(31)
    stw 3, 0x29c(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    stfs 0, 0x284(31)
    stfs 0, 0x298(31)
    stfs 0, 0x294(31)
    stfs 0, 0x290(31)
    lwz 0, 0x90(31)
    srwi 0, 0, 27
    stw 0, 0x274(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x278(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 10
    stw 0, 0x27c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    stw 0, 0x280(31)
    lwz 4, 0x90(31)
    clrlwi 0, 4, 28
    cmplwi 0, 0x3
    .4byte 0x408201A8 # bne .L_8038F6BC
    extrwi 0, 4, 4, 24
    stw 0, 0x29c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 22
    stw 0, 0x234(31)
    lwz 0, 0x29c(31)
    cmpwi 0, 0xb
    .4byte 0x40820094 # bne .L_8038F5C8
    lwz 3, 0x234(31)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    li 0, 0x9
    lfs 5, 0x8(3)
    lfs 1, 0xc(31)
    psq_st 0, 0x8(1), 0, 0
    .4byte 0xC00201AC # lfs f0, lbl_8054314C@sda21(r0)
    stfs 1, 0x284(31)
    lfs 1, 0x8(1)
    lfs 2, 0x10(31)
    lfs 3, 0xc(1)
    stfs 2, 0x288(31)
    .4byte 0xC08201B0 # lfs f4, lbl_80543150@sda21(r0)
    lfs 2, 0x14(31)
    .4byte 0xC0C20190 # lfs f6, lbl_80543130@sda21(r0)
    stfs 2, 0x28c(31)
    lfs 2, 0x28c(31)
    stfs 5, 0x10(1)
    fadds 0, 2, 0
    stfs 6, 0x10(1)
    stfs 0, 0x28c(31)
    lfs 0, 0x284(31)
    lfs 2, 0x288(31)
    fsubs 0, 1, 0
    lfs 5, 0x28c(31)
    fsubs 1, 3, 2
    fsubs 2, 6, 5
    fdivs 0, 0, 4
    fdivs 1, 1, 4
    stfs 0, 0x290(31)
    fdivs 0, 2, 4
    stfs 1, 0x294(31)
    stfs 0, 0x298(31)
    stw 0, 0x230(31)
    .4byte 0x48000014 # b .L_8038F5D8
L_8038F5C8:
    li 3, 0x78
    li 0, 0x7
    stw 3, 0x264(31)
    stw 0, 0x230(31)
L_8038F5D8:
    lwz 0, 0x29c(31)
    lwz 3, 0x234(31)
    cmplwi 0, 0xc
    .4byte 0x418100DC # bgt .L_8038F6C0
    lis 4, jumptable_804AF3F0@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AF3F0@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    li 0, 0x260
    stw 0, 0x260(31)
    .4byte 0x480000B8 # b .L_8038F6C0
    li 0, 0x261
    stw 0, 0x260(31)
    .4byte 0x480000AC # b .L_8038F6C0
    li 0, 0x262
    stw 0, 0x260(31)
    .4byte 0x480000A0 # b .L_8038F6C0
    li 0, 0x263
    stw 0, 0x260(31)
    .4byte 0x48000094 # b .L_8038F6C0
    li 0, 0x264
    stw 0, 0x260(31)
    .4byte 0x48000088 # b .L_8038F6C0
    li 0, 0x268
    stw 0, 0x260(31)
    .4byte 0x4800007C # b .L_8038F6C0
    li 0, 0x269
    stw 0, 0x260(31)
    .4byte 0x48000070 # b .L_8038F6C0
    li 0, 0x26a
    stw 0, 0x260(31)
    .4byte 0x48000064 # b .L_8038F6C0
    bl fn_8022F340
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    slwi 0, 3, 1
    lbz 3, 0x83(4)
    sraw 0, 3, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8038F68C
    li 0, 0x27f
    stw 0, 0x260(31)
    .4byte 0x48000038 # b .L_8038F6C0
L_8038F68C:
    li 0, 0x284
    stw 0, 0x260(31)
    .4byte 0x4800002C # b .L_8038F6C0
    li 0, 0x265
    stw 0, 0x260(31)
    .4byte 0x48000020 # b .L_8038F6C0
    li 0, 0x266
    stw 0, 0x260(31)
    .4byte 0x48000014 # b .L_8038F6C0
    li 0, 0x267
    stw 0, 0x260(31)
    .4byte 0x48000008 # b .L_8038F6C0
L_8038F6BC:
    stw 3, 0x230(31)
L_8038F6C0:
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x240(31)
    li 0, 0x1e
    stw 3, 0x244(31)
    stw 3, 0x23c(31)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    stw 3, 0x254(31)
    stw 3, 0x258(31)
    stw 0, 0x25c(31)
    stw 3, 0x264(31)
    stw 3, 0x26c(31)
    stw 3, 0x2a0(31)
    stw 3, 0x2a4(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x90(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

