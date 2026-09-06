# DGT2 cluster, part 5 (1252B). setParams(). Pure numeric/state field
# initialization (no calls) - default speeds, positions, and 2 array-
# element pairs (this->0x2ac/0x2b0/0x2b8/0x2bc, matching the ctor's own
# "2 array construction(s)" note) computed via a shared runtime lookup
# table (r4/r6 base pointers) indexed by a per-instance frame counter.
.section extab, "a"
.balign 4
.global etb_8000773C
etb_8000773C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000773C, 8

.section extabindex, "a"
.balign 4
.global eti_80014500
eti_80014500:
    .4byte fn_8018FBB8
    .4byte 0x000004E4
    .4byte etb_8000773C
.size eti_80014500, 12

.text
.balign 4
.global fn_8018FBB8

fn_8018FBB8:
    stwu 1, -0x50(1)
    li 4, 0x0
    .4byte 0xC022B258 # lfs f1, lbl_8053E1F8@sda21(r0)
    li 0, 0x2
    .4byte 0xC002B22C # lfs f0, lbl_8053E1CC@sda21(r0)
    mr 5, 3
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 4, 0x248(3)
    stw 4, 0x24c(3)
    stw 4, 0x250(3)
    stw 4, 0x234(3)
    stw 4, 0x238(3)
    stw 4, 0x23c(3)
    stw 4, 0x240(3)
    stw 4, 0x244(3)
    lfs 0, 0xc(3)
    stfs 0, 0x288(3)
    lfs 0, 0x10(3)
    stfs 0, 0x28c(3)
    lfs 0, 0x14(3)
    stfs 0, 0x290(3)
    lfs 0, 0xc(3)
    stfs 0, 0x294(3)
    lfs 0, 0x10(3)
    stfs 0, 0x298(3)
    lfs 0, 0x14(3)
    stfs 0, 0x29c(3)
    lfs 0, 0xc(3)
    stfs 0, 0x2a0(3)
    lfs 0, 0x10(3)
    stfs 0, 0x2a4(3)
    lfs 0, 0x14(3)
    stfs 0, 0x2a8(3)
    lfs 0, 0xc(3)
    stfs 0, 0x2ac(3)
    lfs 0, 0x10(3)
    stfs 0, 0x2b0(3)
    lfs 0, 0x14(3)
    stfs 0, 0x2b4(3)
    lfs 0, 0xc(3)
    stfs 0, 0x2b8(3)
    lfs 0, 0x10(3)
    stfs 0, 0x2bc(3)
    lfs 0, 0x14(3)
    stfs 0, 0x2c0(3)
    lfs 0, 0xc(3)
    stfs 0, 0x2c4(3)
    lfs 0, 0x10(3)
    stfs 0, 0x2c8(3)
    lfs 0, 0x14(3)
    stfs 0, 0x2cc(3)
    mtctr 0
L_8018FCA4:
    lfs 0, 0xc(3)
    stfs 0, 0x2d0(5)
    lfs 0, 0x10(3)
    stfs 0, 0x2d4(5)
    lfs 0, 0x14(3)
    stfs 0, 0x2d8(5)
    lfs 0, 0xc(3)
    stfs 0, 0x2dc(5)
    lfs 0, 0x10(3)
    stfs 0, 0x2e0(5)
    lfs 0, 0x14(3)
    stfs 0, 0x2e4(5)
    lfs 0, 0xc(3)
    stfs 0, 0x2e8(5)
    lfs 0, 0x10(3)
    stfs 0, 0x2ec(5)
    lfs 0, 0x14(3)
    stfs 0, 0x2f0(5)
    lfs 0, 0xc(3)
    stfs 0, 0x2f4(5)
    lfs 0, 0x10(3)
    stfs 0, 0x2f8(5)
    lfs 0, 0x14(3)
    stfs 0, 0x2fc(5)
    lfs 0, 0xc(3)
    stfs 0, 0x300(5)
    lfs 0, 0x10(3)
    stfs 0, 0x304(5)
    lfs 0, 0x14(3)
    stfs 0, 0x308(5)
    lfs 0, 0xc(3)
    stfs 0, 0x30c(5)
    lfs 0, 0x10(3)
    stfs 0, 0x310(5)
    lfs 0, 0x14(3)
    stfs 0, 0x314(5)
    lfs 0, 0xc(3)
    stfs 0, 0x318(5)
    lfs 0, 0x10(3)
    stfs 0, 0x31c(5)
    lfs 0, 0x14(3)
    stfs 0, 0x320(5)
    lfs 0, 0xc(3)
    stfs 0, 0x324(5)
    lfs 0, 0x10(3)
    stfs 0, 0x328(5)
    lfs 0, 0x14(3)
    stfs 0, 0x32c(5)
    lfs 0, 0xc(3)
    stfs 0, 0x330(5)
    lfs 0, 0x10(3)
    stfs 0, 0x334(5)
    lfs 0, 0x14(3)
    stfs 0, 0x338(5)
    lfs 0, 0xc(3)
    stfs 0, 0x33c(5)
    lfs 0, 0x10(3)
    stfs 0, 0x340(5)
    lfs 0, 0x14(3)
    stfs 0, 0x344(5)
    addi 5, 5, 0x78
    .4byte 0x4200FF0C # bdnz .L_8018FCA4
    li 0, 0x0
    lis 6, 0x4330
    stw 0, 0x3c0(3)
    lis 7, 0x19
    addi 8, 7, 0x660d
    lis 4, lbl_8052EBC0@ha
    stw 0, 0x3c4(3)
    addi 5, 4, lbl_8052EBC0@l
    .4byte 0xC0E2B240 # lfs f7, lbl_8053E1E0@sda21(r0)
    li 7, -0x1
    stw 0, 0x3c8(3)
    addi 4, 5, 0x4
    .4byte 0xC082B25C # lfs f4, lbl_8053E1FC@sda21(r0)
    li 0, 0x8
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    stw 6, 0x18(1)
    lwz 9, 0xb4(10)
    stw 6, 0x28(1)
    mullw 8, 9, 8
    .4byte 0xC8A2B230 # lfd f5, lbl_8053E1D0@sda21(r0)
    .4byte 0xC0C2B228 # lfs f6, lbl_8053E1C8@sda21(r0)
    .4byte 0xC042B238 # lfs f2, lbl_8053E1D8@sda21(r0)
    .4byte 0xC022B260 # lfs f1, lbl_8053E200@sda21(r0)
    .4byte 0xC002B264 # lfs f0, lbl_8053E204@sda21(r0)
    addis 6, 8, 0x3c6f
    subi 6, 6, 0xca1
    stw 6, 0xb4(10)
    lwz 6, 0xb4(10)
    srwi 6, 6, 9
    oris 6, 6, 0x3f80
    stw 6, 0x8(1)
    lfs 3, 0x8(1)
    fsubs 3, 3, 7
    fmuls 3, 4, 3
    fctiwz 3, 3
    stfd 3, 0x10(1)
    lwz 6, 0x14(1)
    stw 6, 0x98(3)
    lwz 6, 0x98(3)
    stw 6, 0x25c(3)
    lwz 6, 0x98(3)
    stw 6, 0x260(3)
    stw 7, 0x264(3)
    lwz 6, 0x98(3)
    lfs 4, 0x278(3)
    xoris 6, 6, 0x8000
    stw 6, 0x1c(1)
    lfd 3, 0x18(1)
    fsubs 3, 3, 5
    fmuls 3, 6, 3
    fctiwz 3, 3
    stfd 3, 0x20(1)
    lwz 6, 0x24(1)
    rlwinm 6, 6, 30, 18, 28
    lfsx 3, 5, 6
    fmuls 3, 4, 3
    stfs 3, 0x27c(3)
    lwz 5, 0x98(3)
    lfs 3, 0x278(3)
    xoris 5, 5, 0x8000
    stw 5, 0x2c(1)
    lfd 4, 0x28(1)
    fsubs 4, 4, 5
    fmuls 4, 6, 4
    fctiwz 4, 4
    stfd 4, 0x30(1)
    lwz 5, 0x34(1)
    rlwinm 5, 5, 30, 18, 28
    lfsx 4, 4, 5
    fmuls 3, 3, 4
    stfs 3, 0x280(3)
    stfs 2, 0x284(3)
    stw 0, 0x23c(3)
    stfs 2, 0x44(3)
    stfs 2, 0x40(3)
    stfs 2, 0x3c(3)
    stfs 1, 0x268(3)
    stfs 7, 0x26c(3)
    stfs 7, 0x270(3)
    stfs 2, 0x274(3)
    stfs 0, 0x278(3)
    .4byte 0x800D8FC8 # lwz r0, lbl_8053AB88@sda21(r0)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_8018FEF8
    li 0, 0x1
    stw 0, 0x254(3)
    .4byte 0x48000008 # b .L_8018FEFC
L_8018FEF8:
    stw 7, 0x254(3)
L_8018FEFC:
    .4byte 0x80ED8FC8 # lwz r7, lbl_8053AB88@sda21(r0)
    lis 0, 0x4330
    lis 6, 0x1
    lis 5, lbl_8052EBC0@ha
    addi 8, 7, 0x1
    li 7, 0x0
    .4byte 0x910D8FC8 # stw r8, lbl_8053AB88@sda21(r0)
    clrlwi 9, 8, 31
    addi 8, 6, 0x2202
    addi 6, 5, lbl_8052EBC0@l
    .4byte 0x912D8FC8 # stw r9, lbl_8053AB88@sda21(r0)
    .4byte 0xC882B230 # lfd f4, lbl_8053E1D0@sda21(r0)
    stw 8, 0xb0(3)
    .4byte 0xC002B228 # lfs f0, lbl_8053E1C8@sda21(r0)
    stw 7, 0x230(3)
    .4byte 0xC062B22C # lfs f3, lbl_8053E1CC@sda21(r0)
    lwz 5, 0x98(3)
    stw 0, 0x30(1)
    xoris 5, 5, 0x8000
    lfs 2, 0x278(3)
    stw 5, 0x34(1)
    lfd 1, 0x30(1)
    stw 0, 0x20(1)
    fsubs 1, 1, 4
    stw 0, 0x10(1)
    fmuls 1, 0, 1
    stw 0, 0x40(1)
    fctiwz 1, 1
    stfd 1, 0x28(1)
    lwz 0, 0x2c(1)
    clrlwi 0, 0, 16
    srawi 0, 0, 5
    slwi 0, 0, 3
    lfsx 1, 6, 0
    fmuls 1, 2, 1
    stfs 1, 0x27c(3)
    lwz 0, 0x98(3)
    lfs 2, 0x278(3)
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 1, 0x20(1)
    fsubs 1, 1, 4
    fmuls 1, 0, 1
    fctiwz 1, 1
    stfd 1, 0x18(1)
    lwz 0, 0x1c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    fmuls 1, 2, 1
    stfs 1, 0x280(3)
    lfs 1, 0xc(3)
    stfs 1, 0x2ac(3)
    lfs 1, 0x10(3)
    stfs 1, 0x2b0(3)
    lfs 1, 0x14(3)
    stfs 1, 0x2b4(3)
    lwz 5, 0x98(3)
    lfs 1, 0x2ac(3)
    subi 0, 5, 0x2
    clrlwi 0, 0, 28
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 4
    fmuls 2, 0, 2
    fctiwz 2, 2
    stfd 2, 0x38(1)
    lwz 0, 0x3c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 2, 6, 0
    fmadds 1, 3, 2, 1
    stfs 1, 0x2ac(3)
    lfsx 2, 4, 0
    lfs 1, 0x2b0(3)
    fmadds 1, 3, 2, 1
    stfs 1, 0x2b0(3)
    lfs 1, 0xc(3)
    stfs 1, 0x2b8(3)
    lfs 1, 0x10(3)
    stfs 1, 0x2bc(3)
    lfs 1, 0x14(3)
    stfs 1, 0x2c0(3)
    lwz 5, 0x98(3)
    addi 0, 5, 0x2
    clrlwi 0, 0, 28
    xoris 0, 0, 0x8000
    stw 0, 0x44(1)
    lfd 1, 0x40(1)
    fsubs 1, 1, 4
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 6, 0
    lfs 0, 0x2b8(3)
    fmadds 0, 3, 1, 0
    stfs 0, 0x2b8(3)
    lfsx 1, 4, 0
    lfs 0, 0x2bc(3)
    fmadds 0, 3, 1, 0
    stfs 0, 0x2bc(3)
    addi 1, 1, 0x50
    blr

