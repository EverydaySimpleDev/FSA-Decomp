# HBB2 cluster, part 2/4 (Track A byte-match + overview - 864B). draw()
# - uses the already-landed fn_801F02BC.
.section extab, "a"
.balign 4
.global etb_80007A44
etb_80007A44:
    .4byte 0x218A0000
    .4byte 0x00000000
.size etb_80007A44, 8

.section extabindex, "a"
.balign 4
.global eti_800148E4
eti_800148E4:
    .4byte fn_801A81F4
    .4byte 0x00000360
    .4byte etb_80007A44
.size eti_800148E4, 12

.text
.balign 4
.global fn_801A81F4

fn_801A81F4:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    stw 28, 0x80(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801A82BC
L_801A825C:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801A82BC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801A825C
    .4byte 0xC002B6F0 # lfs f0, lbl_8053E690@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801A8374
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_801A8374
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820194 # beq .L_801A8504
L_801A8374:
    li 3, 0x3
    li 0, 0x2
    stb 3, 0x3c(1)
    lis 3, lbl_80468518@ha
    .4byte 0xC022B6F4 # lfs f1, lbl_8053E694@sda21(r0)
    addi 4, 3, lbl_80468518@l
    stb 0, 0x55(1)
    addi 0, 1, 0x8
    .4byte 0xC002B6F0 # lfs f0, lbl_8053E690@sda21(r0)
    fmr 2, 1
    lfs 3, 0x26c(31)
    mr 3, 31
    addi 6, 1, 0x38
    li 7, 0x7
    stfs 3, 0x8(1)
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
    lwz 5, 0x260(31)
    addi 5, 5, 0x155
    bl fn_801F02BC
    lfs 27, 0x26c(31)
    li 3, 0x5
    lfs 26, 0x274(31)
    li 0, 0x1
    lwz 29, 0x260(31)
    addi 30, 31, 0xc
    .4byte 0xC3E2B6F0 # lfs f31, lbl_8053E690@sda21(r0)
    li 28, 0x1
    stb 3, 0x3c(1)
    stb 0, 0x55(1)
    lfs 30, 0xc(31)
    lfs 29, 0x10(31)
    lfs 28, 0x14(31)
L_801A841C:
    lfs 0, 0x29c(30)
    fcmpu cr0, 0, 31
    .4byte 0x418200C4 # beq .L_801A84E8
    .4byte 0xC022B6F8 # lfs f1, lbl_8053E698@sda21(r0)
    .4byte 0xC002B6FC # lfs f0, lbl_8053E69C@sda21(r0)
    fmuls 27, 27, 1
    fcmpo cr0, 27, 0
    .4byte 0x40800008 # bge .L_801A8440
    fmr 27, 0
L_801A8440:
    .4byte 0xC022B700 # lfs f1, lbl_8053E6A0@sda21(r0)
    .4byte 0xC002B6F0 # lfs f0, lbl_8053E690@sda21(r0)
    fsubs 26, 26, 1
    fcmpo cr0, 26, 0
    .4byte 0x40800008 # bge .L_801A8458
    fmr 26, 0
L_801A8458:
    fctiwz 1, 26
    .4byte 0xC002B6F0 # lfs f0, lbl_8053E690@sda21(r0)
    addi 0, 1, 0x8
    subic. 29, 29, 0x1
    stfs 27, 0x8(1)
    stfd 1, 0x78(1)
    lwz 3, 0x7c(1)
    stfs 0, 0xc(1)
    stb 3, 0x4b(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 27, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 27, 0x30(1)
    stw 0, 0x50(1)
    .4byte 0x40800008 # bge .L_801A84A4
    li 29, 0x2
L_801A84A4:
    lfs 0, 0x294(30)
    lis 3, lbl_80468518@ha
    .4byte 0xC022B6F4 # lfs f1, lbl_8053E694@sda21(r0)
    addi 4, 3, lbl_80468518@l
    stfs 0, 0xc(31)
    mr 3, 31
    fmr 2, 1
    addi 5, 29, 0x155
    lfs 0, 0x298(30)
    addi 6, 1, 0x38
    li 7, 0x7
    li 8, 0x0
    stfs 0, 0x10(31)
    li 9, 0x0
    lfs 0, 0x29c(30)
    stfs 0, 0x14(31)
    bl fn_801F02BC
L_801A84E8:
    addi 28, 28, 0x1
    addi 30, 30, 0xc
    cmpwi 28, 0x28
    .4byte 0x4180FF28 # blt .L_801A841C
    stfs 30, 0xc(31)
    stfs 29, 0x10(31)
    stfs 28, 0x14(31)
L_801A8504:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    lwz 0, 0xf4(1)
    lwz 28, 0x80(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

