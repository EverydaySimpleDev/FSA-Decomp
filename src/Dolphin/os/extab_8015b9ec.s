/*
 * BOYO ("Bumper Block") actor cluster, part 2/4.
 *
 * fn_8015B9EC: BOYO's draw(). Builds an identity-permutation joint-order
 * array (0..15, the same idiom seen in the base Actor ctor and ZLDA's
 * draw()) plus a small render-descriptor struct on the stack. Converts
 * this->0x25c (a 16-bit heading value, continuously decremented by
 * update()'s spin - part 3/4) via the classic int-to-double MWCC bit
 * trick, then computes sin/cos of that variable heading combined with
 * TWO FIXED angle constants (lbl_8053D4B8) to build a full 3x3 rotation
 * matrix (9 floats at stack 0x44-0x6c) - i.e. a variable spin around one
 * axis combined with a fixed tilt. Finally calls the confirmed universal
 * render primitive fn_801F06F0(this, jointOrder, this->0x258+0x70,
 * &drawDesc, ...) - the same "identity permutation + rotation matrix +
 * fn_801F06F0" pattern used by ZLDA's draw().
 */
.section extab, "a"
.balign 4
.global etb_80006FAC
etb_80006FAC:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_80006FAC, 8

.section extabindex, "a"
.balign 4
.global eti_80013B10
eti_80013B10:
    .4byte fn_8015B9EC
    .4byte 0x00000290
    .4byte etb_80006FAC
.size eti_80013B10, 12

.text
.balign 4
.global fn_8015B9EC

fn_8015B9EC:
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
    .4byte 0xC002A518 # lfs f0, lbl_8053D4B8@sda21(r0)
    li 0, -0x1
    stw 0, 0x18(1)
    mr 31, 3
    addi 9, 1, 0x8
    li 10, 0x0
    stfs 0, 0x50(1)
    stfs 0, 0x60(1)
    stfs 0, 0x70(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_8015BAB0
L_8015BA50:
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
L_8015BAB0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8015BA50
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    stw 7, 0x18(1)
    lis 0, 0x4330
    .4byte 0xC862A528 # lfd f3, lbl_8053D4C8@sda21(r0)
    stw 6, 0x1c(1)
    .4byte 0xC002A51C # lfs f0, lbl_8053D4BC@sda21(r0)
    stw 6, 0x20(1)
    .4byte 0xC022A518 # lfs f1, lbl_8053D4B8@sda21(r0)
    stb 6, 0x24(1)
    stb 6, 0x25(1)
    stb 6, 0x26(1)
    stb 5, 0x27(1)
    stb 5, 0x28(1)
    stb 6, 0x29(1)
    stb 6, 0x2a(1)
    stb 6, 0x2b(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 5, 0x2e(1)
    stw 4, 0x30(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 3, 0x40(1)
    lhz 3, 0x25c(31)
    stw 0, 0x78(1)
    stw 3, 0x7c(1)
    lfd 2, 0x78(1)
    fsubs 2, 2, 3
    fdivs 30, 2, 0
    bl sin
    frsp 29, 1
    fmr 1, 30
    bl sin
    frsp 28, 1
    .4byte 0xC022A518 # lfs f1, lbl_8053D4B8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022A518 # lfs f1, lbl_8053D4B8@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A518 # lfs f1, lbl_8053D4B8@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x44
    lis 3, lbl_804660E0@ha
    fmuls 3, 29, 28
    fmuls 10, 31, 27
    addi 4, 3, lbl_804660E0@l
    fmuls 11, 31, 4
    .4byte 0xC022A520 # lfs f1, lbl_8053D4C0@sda21(r0)
    fmuls 2, 29, 27
    stw 0, 0x20(1)
    fmuls 0, 29, 4
    mr 3, 31
    fmuls 8, 30, 27
    addi 6, 1, 0x8
    fneg 7, 28
    li 7, 0x0
    fmuls 9, 30, 4
    fmsubs 6, 3, 4, 10
    fmadds 5, 3, 27, 11
    fmadds 3, 11, 28, 2
    fmsubs 2, 10, 28, 0
    fmuls 10, 1, 9
    fmuls 9, 1, 8
    fmuls 8, 1, 7
    fmuls 7, 1, 6
    stfs 10, 0x44(1)
    fmuls 0, 31, 30
    fmuls 6, 1, 5
    stfs 9, 0x54(1)
    fmuls 4, 29, 30
    fmuls 0, 1, 0
    stfs 8, 0x64(1)
    fmuls 5, 1, 4
    stfs 7, 0x48(1)
    fmuls 4, 1, 3
    fmuls 3, 1, 2
    stfs 6, 0x58(1)
    fmr 2, 1
    stfs 5, 0x68(1)
    stfs 4, 0x4c(1)
    stfs 3, 0x5c(1)
    stfs 0, 0x6c(1)
    lwz 5, 0x258(31)
    addi 5, 5, 0x70
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

