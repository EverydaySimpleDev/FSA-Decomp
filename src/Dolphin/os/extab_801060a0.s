/*
 * fn_801060A0(this): a method of the fn_80106040-class - a real 3D
 * transform/orientation computation using the confirmed real SDK
 * matrix function `PSMTXTrans` plus sin/cos (survey-level, not full
 * semantics). Builds TWO translation matrices (via `PSMTXTrans`) each
 * followed by a full yaw-pitch composite rotation (classic
 * fmuls/fmadds/fmsubs formula, matching fn_80103348's shape) using
 * this->0x280-0x28c as two pairs of Euler-like angle sources, storing
 * results into two ~0x60-byte stack config structs (each with the same
 * 16-slot byte array + defaults convention seen in fn_80101B48/
 * fn_80103348). Then, if this->0x4 < 8, makes a virtual call through
 * the SAME global manager object (lbl_8053AAF8->0xa4, vtable slot 6)
 * used in fn_80105A34's per-slot registration loop - CONFIRMS this
 * manager object is queried by MULTIPLE unrelated classes, not just
 * the one that constructed it - then calls the confirmed "spatial
 * triad" fn_802F745C(registry, result, this+0x238) via the shared
 * registry (lbl_8053AB10->0x20). This is now the SECOND call site for
 * fn_802F745C found this session (after fn_80105654), both gated on a
 * "type<8" check against this->0x4/0x238.
 */

.section extab, "a"
.balign 4
.global etb_80005A3C
etb_80005A3C:
    .4byte 0x09CA0000
    .4byte 0x00000000
.size etb_80005A3C, 8

.section extabindex, "a"
.balign 4
.global eti_80011E6C
eti_80011E6C:
    .4byte fn_801060A0
    .4byte 0x000003BC
    .4byte etb_80005A3C
.size eti_80011E6C, 12

.text
.balign 4
.global fn_801060A0

fn_801060A0:
    stwu 1, -0x120(1)
    mflr 0
    stw 0, 0x124(1)
    stfd 31, 0x110(1)
    psq_st 31, 0x118(1), 0, 0
    stfd 30, 0x100(1)
    psq_st 30, 0x108(1), 0, 0
    stfd 29, 0xf0(1)
    psq_st 29, 0xf8(1), 0, 0
    stfd 28, 0xe0(1)
    psq_st 28, 0xe8(1), 0, 0
    stfd 27, 0xd0(1)
    psq_st 27, 0xd8(1), 0, 0
    stfd 26, 0xc0(1)
    psq_st 26, 0xc8(1), 0, 0
    stfd 25, 0xb0(1)
    psq_st 25, 0xb8(1), 0, 0
    stw 31, 0xac(1)
    mr 31, 3
    bl fn_801F5778
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    li 0, -0x1
    stb 0, 0x255(31)
    addi 3, 1, 0x74
    fmr 2, 1
    fmr 3, 1
    bl PSMTXTrans
    lfs 28, 0x288(31)
    lfs 27, 0x28c(31)
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl sin
    frsp 31, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl sin
    frsp 25, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl cos
    frsp 3, 1
    li 0, -0x1
    fmuls 8, 29, 25
    .4byte 0xC0C292D8 # lfs f6, lbl_8053C278@sda21(r0)
    fneg 7, 31
    addi 3, 1, 0x74
    fmuls 11, 30, 3
    stw 0, 0x48(1)
    fmuls 2, 26, 31
    addi 9, 1, 0x38
    fmuls 10, 30, 25
    stw 0, 0x4c(1)
    fmuls 1, 26, 25
    li 10, 0x0
    fmuls 0, 26, 3
    fmuls 9, 29, 3
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 25, 11
    fmuls 3, 26, 29
    fmadds 2, 11, 31, 1
    fmsubs 1, 10, 31, 0
    fmuls 0, 30, 29
    fmuls 9, 28, 9
    fmuls 8, 28, 8
    fmuls 7, 28, 7
    fmuls 5, 6, 5
    stfs 9, 0x74(1)
    fmuls 4, 6, 4
    fmuls 3, 6, 3
    stfs 8, 0x84(1)
    fmuls 2, 27, 2
    fmuls 1, 27, 1
    stfs 7, 0x94(1)
    fmuls 0, 27, 0
    stfs 5, 0x78(1)
    stfs 4, 0x88(1)
    stfs 3, 0x98(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x9c(1)
    stw 3, 0x250(31)
    .4byte 0x48000064 # b .L_80106260
L_80106200:
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
L_80106260:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80106200
    li 6, 0x0
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    stb 6, 0x55(1)
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    fmr 2, 1
    fmr 3, 1
    stw 7, 0x48(1)
    addi 3, 1, 0x8
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    stb 6, 0x55(1)
    bl PSMTXTrans
    lfs 27, 0x280(31)
    lfs 28, 0x284(31)
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl sin
    frsp 25, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC02292D4 # lfs f1, lbl_8053C274@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    fmuls 8, 31, 26
    .4byte 0xC0C292D8 # lfs f6, lbl_8053C278@sda21(r0)
    fneg 7, 29
    stw 0, 0x50(1)
    fmuls 11, 30, 3
    .4byte 0x80AD8308 # lwz r5, lbl_80539EC8@sda21(r0)
    fmuls 2, 25, 29
    fmuls 10, 30, 26
    fmuls 1, 25, 26
    fmuls 0, 25, 3
    fmuls 9, 31, 3
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 26, 11
    fmuls 3, 25, 31
    fmadds 2, 11, 29, 1
    fmsubs 1, 10, 29, 0
    fmuls 0, 30, 31
    fmuls 9, 27, 9
    fmuls 8, 27, 8
    fmuls 7, 27, 7
    fmuls 5, 6, 5
    stfs 9, 0x8(1)
    fmuls 4, 6, 4
    fmuls 3, 6, 3
    stfs 8, 0x18(1)
    fmuls 2, 28, 2
    fmuls 1, 28, 1
    stfs 7, 0x28(1)
    fmuls 0, 28, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_80106410
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5449
    addi 4, 4, 0x4d47
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 31, 0x238
    bl fn_802F745C
L_80106410:
    psq_l 31, 0x118(1), 0, 0
    lfd 31, 0x110(1)
    psq_l 30, 0x108(1), 0, 0
    lfd 30, 0x100(1)
    psq_l 29, 0xf8(1), 0, 0
    lfd 29, 0xf0(1)
    psq_l 28, 0xe8(1), 0, 0
    lfd 28, 0xe0(1)
    psq_l 27, 0xd8(1), 0, 0
    lfd 27, 0xd0(1)
    psq_l 26, 0xc8(1), 0, 0
    lfd 26, 0xc0(1)
    psq_l 25, 0xb8(1), 0, 0
    lfd 25, 0xb0(1)
    lwz 0, 0x124(1)
    lwz 31, 0xac(1)
    mtlr 0
    addi 1, 1, 0x120
    blr

