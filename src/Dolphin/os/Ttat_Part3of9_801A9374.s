# TTAT cluster, part 3/9 (Track A byte-match + overview - 680B). draw()
# sub-piece #2 - same shape as sub-piece #1 (sin/cos + fn_801EFD34).
.section extab, "a"
.balign 4
.global etb_80007A6C
etb_80007A6C:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_80007A6C, 8

.section extabindex, "a"
.balign 4
.global eti_80014920
eti_80014920:
    .4byte fn_801A9374
    .4byte 0x000002A8
    .4byte etb_80007A6C
.size eti_80014920, 12

.text
.balign 4
.global fn_801A9374

fn_801A9374:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stfd 27, 0x80(1)
    psq_st 27, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801A9428
L_801A93C8:
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
L_801A9428:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801A93C8
    li 5, 0x0
    li 4, 0x1
    .4byte 0xC022B740 # lfs f1, lbl_8053E6E0@sda21(r0)
    li 6, -0x1
    li 0, 0x2
    stb 5, 0x55(1)
    li 3, 0x3
    .4byte 0xC002B744 # lfs f0, lbl_8053E6E4@sda21(r0)
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
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
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    stb 0, 0x55(1)
    lfs 2, 0x2b4(31)
    fdivs 30, 2, 0
    bl sin
    frsp 29, 1
    fmr 1, 30
    bl sin
    frsp 28, 1
    .4byte 0xC022B740 # lfs f1, lbl_8053E6E0@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022B740 # lfs f1, lbl_8053E6E0@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022B740 # lfs f1, lbl_8053E6E0@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    lis 3, lbl_804A2F2C@ha
    lis 4, 0x5449
    fmuls 2, 29, 28
    .4byte 0xC122B748 # lfs f9, lbl_8053E6E8@sda21(r0)
    fmuls 11, 31, 3
    stw 0, 0x50(1)
    fmuls 10, 31, 27
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    fmuls 1, 29, 27
    addi 5, 3, lbl_804A2F2C@l
    fmuls 0, 29, 3
    addi 4, 4, 0x4d47
    fmuls 8, 30, 3
    fmuls 7, 30, 27
    fneg 6, 28
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 27, 11
    fmuls 3, 29, 30
    fmadds 2, 11, 28, 1
    fmsubs 1, 10, 28, 0
    fmuls 0, 31, 30
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x8(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x18(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x28(1)
    fmuls 0, 9, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 3, 0xa4(6)
    lwz 0, 0x24c(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lwz 12, 0x18(12)
    lwzx 5, 5, 0
    mtctr 12
    bctrl
    .4byte 0xC022B740 # lfs f1, lbl_8053E6E0@sda21(r0)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x38
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    psq_l 27, 0x88(1), 0, 0
    lfd 27, 0x80(1)
    lwz 0, 0xd4(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

