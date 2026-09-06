# DGT2 (vtable lbl_804A1FA0) cluster, part 1 (Track A byte-match +
# overview - 0x748=1864B). draw(). Builds a real identity matrix via
# the confirmed Nintendo SDK PSMTXIdentity, then uses sin/cos directly
# plus the confirmed 3D render-primitive family fn_801F06F0 - a
# geometry/render setup, same idiom as GOLD's draw() but more elaborate.
.section extab, "a"
.balign 4
.global etb_80007724
etb_80007724:
    .4byte 0x098A0000
    .4byte 0x00000000
.size etb_80007724, 8

.section extabindex, "a"
.balign 4
.global eti_800144DC
eti_800144DC:
    .4byte fn_8018EB94
    .4byte 0x00000748
    .4byte etb_80007724
.size eti_800144DC, 12

.text
.balign 4
.global fn_8018EB94

fn_8018EB94:
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
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8018EC50
L_8018EBF0:
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
L_8018EC50:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8018EBF0
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
    lwz 0, 0x240(31)
    lfs 29, 0x14(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820018 # beq .L_8018ECE8
    li 0, 0x80
    stb 5, 0x4f(1)
    stb 0, 0x4c(1)
    stb 0, 0x4d(1)
    stb 0, 0x4e(1)
L_8018ECE8:
    li 0, 0x1
    addi 3, 1, 0x8
    stb 0, 0x55(1)
    bl PSMTXIdentity
    lfs 30, 0x270(31)
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x8
    lis 3, lbl_804674F0@ha
    fmuls 3, 28, 27
    fmuls 10, 31, 26
    addi 4, 3, lbl_804674F0@l
    fmuls 12, 31, 4
    .4byte 0xC162B23C # lfs f11, lbl_8053E1DC@sda21(r0)
    fmuls 2, 28, 26
    stw 0, 0x50(1)
    fmuls 0, 28, 4
    .4byte 0xC022B240 # lfs f1, lbl_8053E1E0@sda21(r0)
    fmuls 9, 30, 4
    mr 3, 31
    fmsubs 6, 3, 4, 10
    addi 6, 1, 0x38
    fmadds 5, 3, 26, 12
    li 5, 0x29
    fmadds 3, 12, 27, 2
    li 7, -0x1
    fmsubs 2, 10, 27, 0
    fmuls 0, 31, 30
    fmuls 10, 11, 9
    fmuls 8, 30, 26
    fmuls 0, 11, 0
    fneg 7, 27
    stfs 10, 0x8(1)
    fmuls 9, 11, 8
    fmuls 4, 28, 30
    stfs 0, 0x30(1)
    fmuls 8, 11, 7
    fmuls 7, 11, 6
    stfs 9, 0x18(1)
    fmuls 6, 11, 5
    fmuls 5, 11, 4
    stfs 8, 0x28(1)
    fmuls 4, 11, 3
    fmuls 3, 11, 2
    stfs 7, 0xc(1)
    fmr 2, 1
    stfs 6, 0x1c(1)
    stfs 5, 0x2c(1)
    stfs 4, 0x10(1)
    stfs 3, 0x20(1)
    psq_l 3, 0x2a0(31), 0, 0
    lfs 0, 0x2a8(31)
    psq_st 3, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stfs 29, 0x14(31)
    bl fn_801F06F0
    addi 3, 1, 0x8
    bl PSMTXIdentity
    lfs 31, 0x270(31)
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 26, 1
    fmr 1, 31
    bl sin
    frsp 27, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x8
    stw 0, 0x50(1)
    lis 3, lbl_804674F0@ha
    addi 4, 3, lbl_804674F0@l
    fmuls 3, 26, 27
    fmuls 12, 30, 4
    .4byte 0xC162B23C # lfs f11, lbl_8053E1DC@sda21(r0)
    fmuls 10, 30, 28
    .4byte 0xC022B240 # lfs f1, lbl_8053E1E0@sda21(r0)
    fmuls 2, 26, 28
    li 0, 0x2
    fmuls 0, 26, 4
    mr 3, 31
    fmuls 9, 31, 4
    addi 6, 1, 0x38
    fmsubs 6, 3, 4, 10
    li 5, 0x27
    fmadds 5, 3, 28, 12
    li 7, -0x1
    fmadds 3, 12, 27, 2
    fmsubs 2, 10, 27, 0
    fmuls 0, 30, 31
    fmuls 10, 11, 9
    fmuls 8, 31, 28
    fmuls 0, 11, 0
    fneg 7, 27
    stfs 10, 0x8(1)
    fmuls 9, 11, 8
    fmuls 4, 26, 31
    stfs 0, 0x30(1)
    fmuls 8, 11, 7
    fmuls 7, 11, 6
    stfs 9, 0x18(1)
    fmuls 6, 11, 5
    fmuls 5, 11, 4
    stfs 8, 0x28(1)
    fmuls 4, 11, 3
    fmuls 3, 11, 2
    stfs 7, 0xc(1)
    fmr 2, 1
    stfs 6, 0x1c(1)
    stfs 5, 0x2c(1)
    stfs 4, 0x10(1)
    stfs 3, 0x20(1)
    psq_l 3, 0x294(31), 0, 0
    lfs 0, 0x29c(31)
    psq_st 3, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stfs 29, 0x14(31)
    stb 0, 0x55(1)
    bl fn_801F06F0
    addi 3, 1, 0x8
    bl PSMTXIdentity
    lfs 31, 0x270(31)
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 26, 1
    fmr 1, 31
    bl sin
    frsp 27, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x8
    stw 0, 0x50(1)
    lis 3, lbl_804674F0@ha
    addi 4, 3, lbl_804674F0@l
    fmuls 3, 26, 27
    fmuls 12, 30, 4
    .4byte 0xC162B23C # lfs f11, lbl_8053E1DC@sda21(r0)
    fmuls 10, 30, 28
    .4byte 0xC022B240 # lfs f1, lbl_8053E1E0@sda21(r0)
    fmuls 2, 26, 28
    li 0, 0x3
    fmuls 0, 26, 4
    mr 3, 31
    fmuls 9, 31, 4
    addi 6, 1, 0x38
    fmsubs 6, 3, 4, 10
    li 5, 0x26
    fmadds 5, 3, 28, 12
    li 7, -0x1
    fmadds 3, 12, 27, 2
    fmsubs 2, 10, 27, 0
    fmuls 0, 30, 31
    fmuls 10, 11, 9
    fmuls 8, 31, 28
    fmuls 0, 11, 0
    fneg 7, 27
    stfs 10, 0x8(1)
    fmuls 9, 11, 8
    fmuls 4, 26, 31
    stfs 0, 0x30(1)
    fmuls 8, 11, 7
    fmuls 7, 11, 6
    stfs 9, 0x18(1)
    fmuls 6, 11, 5
    fmuls 5, 11, 4
    stfs 8, 0x28(1)
    fmuls 4, 11, 3
    fmuls 3, 11, 2
    stfs 7, 0xc(1)
    fmr 2, 1
    stfs 6, 0x1c(1)
    stfs 5, 0x2c(1)
    stfs 4, 0x10(1)
    stfs 3, 0x20(1)
    psq_l 3, 0x288(31), 0, 0
    lfs 0, 0x290(31)
    psq_st 3, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stfs 29, 0x14(31)
    stb 0, 0x55(1)
    bl fn_801F06F0
    li 0, 0x4
    addi 3, 1, 0x8
    stb 0, 0x55(1)
    bl PSMTXIdentity
    lfs 31, 0x274(31)
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 26, 1
    fmr 1, 31
    bl sin
    frsp 27, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x8
    lis 3, lbl_804674F0@ha
    fmuls 3, 26, 27
    fmuls 10, 30, 28
    addi 4, 3, lbl_804674F0@l
    fmuls 12, 30, 4
    .4byte 0xC162B23C # lfs f11, lbl_8053E1DC@sda21(r0)
    fmuls 2, 26, 28
    stw 0, 0x50(1)
    fmuls 0, 26, 4
    .4byte 0xC022B240 # lfs f1, lbl_8053E1E0@sda21(r0)
    fmuls 9, 31, 4
    mr 3, 31
    fmsubs 6, 3, 4, 10
    addi 6, 1, 0x38
    fmadds 5, 3, 28, 12
    li 5, 0x2a
    fmadds 3, 12, 27, 2
    li 7, -0x1
    fmsubs 2, 10, 27, 0
    fmuls 0, 30, 31
    fmuls 10, 11, 9
    fmuls 8, 31, 28
    fmuls 0, 11, 0
    fneg 7, 27
    stfs 10, 0x8(1)
    fmuls 9, 11, 8
    fmuls 4, 26, 31
    stfs 0, 0x30(1)
    fmuls 8, 11, 7
    fmuls 7, 11, 6
    stfs 9, 0x18(1)
    fmuls 6, 11, 5
    fmuls 5, 11, 4
    stfs 8, 0x28(1)
    fmuls 4, 11, 3
    fmuls 3, 11, 2
    stfs 7, 0xc(1)
    fmr 2, 1
    stfs 6, 0x1c(1)
    stfs 5, 0x2c(1)
    stfs 4, 0x10(1)
    stfs 3, 0x20(1)
    psq_l 3, 0x2ac(31), 0, 0
    lfs 0, 0x2b4(31)
    psq_st 3, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stfs 29, 0x14(31)
    bl fn_801F06F0
    addi 3, 1, 0x8
    bl PSMTXIdentity
    lfs 0, 0x274(31)
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    fneg 31, 0
    bl sin
    frsp 26, 1
    fmr 1, 31
    bl sin
    frsp 27, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC022B238 # lfs f1, lbl_8053E1D8@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x8
    lis 3, lbl_804674F0@ha
    fmuls 3, 26, 27
    fmuls 10, 30, 28
    addi 4, 3, lbl_804674F0@l
    fmuls 12, 30, 4
    .4byte 0xC162B23C # lfs f11, lbl_8053E1DC@sda21(r0)
    fmuls 2, 26, 28
    stw 0, 0x50(1)
    fmuls 0, 26, 4
    .4byte 0xC022B240 # lfs f1, lbl_8053E1E0@sda21(r0)
    fmuls 9, 31, 4
    mr 3, 31
    fmsubs 6, 3, 4, 10
    addi 6, 1, 0x38
    fmadds 5, 3, 28, 12
    li 5, 0x2a
    fmadds 3, 12, 27, 2
    li 7, -0x1
    fmsubs 2, 10, 27, 0
    fmuls 0, 30, 31
    fmuls 10, 11, 9
    fmuls 8, 31, 28
    fmuls 0, 11, 0
    fneg 7, 27
    stfs 10, 0x8(1)
    fmuls 9, 11, 8
    fmuls 4, 26, 31
    stfs 0, 0x30(1)
    fmuls 8, 11, 7
    fmuls 7, 11, 6
    stfs 9, 0x18(1)
    fmuls 6, 11, 5
    fmuls 5, 11, 4
    stfs 8, 0x28(1)
    fmuls 4, 11, 3
    fmuls 3, 11, 2
    stfs 7, 0xc(1)
    fmr 2, 1
    stfs 6, 0x1c(1)
    stfs 5, 0x2c(1)
    stfs 4, 0x10(1)
    stfs 3, 0x20(1)
    psq_l 3, 0x2b8(31), 0, 0
    lfs 0, 0x2c0(31)
    psq_st 3, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stfs 29, 0x14(31)
    bl fn_801F06F0
    psq_l 1, 0x288(31), 0, 0
    lfs 0, 0x290(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stfs 29, 0x14(31)
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
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    lwz 0, 0xe4(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

