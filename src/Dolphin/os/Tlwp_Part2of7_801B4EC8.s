# TLWP cluster, part 2/7 (Track A byte-match + overview - 720B). draw()
# sub-piece - uses sin/cos directly plus the confirmed 3D render-
# primitive fn_801F06F0.
.section extab, "a"
.balign 4
.global etb_80007C14
etb_80007C14:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_80007C14, 8

.section extabindex, "a"
.balign 4
.global eti_80014B9C
eti_80014B9C:
    .4byte fn_801B4EC8
    .4byte 0x000002D0
    .4byte etb_80007C14
.size eti_80014B9C, 12

.text
.balign 4
.global fn_801B4EC8

fn_801B4EC8:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801B4F7C
L_801B4F1C:
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
L_801B4F7C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801B4F1C
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
    lwz 0, 0x250(31)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_801B5018
    .4byte 0x40800010 # bge .L_801B500C
    cmpwi 0, 0x1
    .4byte 0x40800024 # bge .L_801B5028
    .4byte 0x48000038 # b .L_801B5040
L_801B500C:
    cmpwi 0, 0x4
    .4byte 0x40800030 # bge .L_801B5040
    .4byte 0x48000020 # b .L_801B5034
L_801B5018:
    li 0, 0x9
    stb 4, 0x55(1)
    stb 0, 0x3a(1)
    .4byte 0x4800001C # b .L_801B5040
L_801B5028:
    stb 4, 0x55(1)
    stb 3, 0x3a(1)
    .4byte 0x48000010 # b .L_801B5040
L_801B5034:
    li 0, 0x4
    stb 4, 0x55(1)
    stb 0, 0x3a(1)
L_801B5040:
    lhz 3, 0x260(31)
    lis 0, 0x4330
    stw 0, 0x78(1)
    .4byte 0xC862BA80 # lfd f3, lbl_8053EA20@sda21(r0)
    stw 3, 0x7c(1)
    .4byte 0xC002BA74 # lfs f0, lbl_8053EA14@sda21(r0)
    lfd 2, 0x78(1)
    .4byte 0xC022BA78 # lfs f1, lbl_8053EA18@sda21(r0)
    fsubs 2, 2, 3
    fdivs 30, 2, 0
    bl sin
    frsp 29, 1
    fmr 1, 30
    bl sin
    frsp 28, 1
    .4byte 0xC022BA78 # lfs f1, lbl_8053EA18@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022BA78 # lfs f1, lbl_8053EA18@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022BA78 # lfs f1, lbl_8053EA18@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x8
    lis 3, lbl_8046910C@ha
    fmuls 3, 29, 28
    fmuls 10, 31, 27
    addi 4, 3, lbl_8046910C@l
    fmuls 11, 31, 4
    .4byte 0xC022BA70 # lfs f1, lbl_8053EA10@sda21(r0)
    fmuls 2, 29, 27
    stw 0, 0x50(1)
    fmuls 0, 29, 4
    mr 3, 31
    fmuls 8, 30, 27
    addi 6, 1, 0x38
    fneg 7, 28
    li 7, 0x7
    fmuls 9, 30, 4
    fmsubs 6, 3, 4, 10
    fmadds 5, 3, 27, 11
    fmadds 3, 11, 28, 2
    fmsubs 2, 10, 28, 0
    fmuls 10, 1, 9
    fmuls 9, 1, 8
    fmuls 8, 1, 7
    fmuls 7, 1, 6
    stfs 10, 0x8(1)
    fmuls 0, 31, 30
    fmuls 6, 1, 5
    stfs 9, 0x18(1)
    fmuls 4, 29, 30
    fmuls 0, 1, 0
    stfs 8, 0x28(1)
    fmuls 5, 1, 4
    stfs 7, 0xc(1)
    fmuls 4, 1, 3
    fmuls 3, 1, 2
    stfs 6, 0x1c(1)
    fmr 2, 1
    stfs 5, 0x2c(1)
    stfs 4, 0x10(1)
    stfs 3, 0x20(1)
    stfs 0, 0x30(1)
    lwz 5, 0x24c(31)
    addi 5, 5, 0xc0
    bl fn_801F06F0
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    lwz 0, 0xe4(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

