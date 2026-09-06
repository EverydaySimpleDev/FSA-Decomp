.section extab, "a"
.balign 4
.global etb_80006FDC
etb_80006FDC:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_80006FDC, 8

.section extabindex, "a"
.balign 4
.global eti_80013B58
eti_80013B58:
    .4byte fn_8015C8B0
    .4byte 0x00000448
    .4byte etb_80006FDC
.size eti_80013B58, 12

.text
.balign 4
.global fn_8015C8B0

# fn_8015C8B0 - KETH's ("Keese") real draw(). Opens with the SAME "wall-
# mounted" check setParams() sets up (bit 27 of this->0x90, cached at
# this->0x260): if set, makes a genuine VIRTUAL CALL through this's own
# vtable slot 0x34 (the boolean "special-case override" convention
# confirmed elsewhere this session), and if that returns true, skips the
# entire rest of draw() - wall-mounted Keese are drawn entirely through
# that override, not the code below.
#
# Otherwise: builds a 16-byte identity-permutation array and a config
# struct on the stack (same idiom as ZLDA's draw(), extab_80109d78.s).
# If this->0x264 (the color/variant ID) == 1: takes a COMPLETELY DIFFERENT
# draw path via the confirmed shared effect-spawn primitive fn_801F06F0
# (see project_fsa_shared_effect_subsystem_crossref.md) followed by
# fn_803075AC(this->0x198, this->0x4) - variant 1 Keese are NOT drawn as
# a normal model at all, but through this effect-style pipeline instead
# (plausibly an invisible/cloaked or particle-rendered variant).
#
# For every OTHER variant: computes a full 3-axis Euler rotation matrix
# from an elapsed-frame-driven angle (real `sin`/`cos` calls, not a lookup
# table) and writes it into the local render descriptor - a periodic idle
# "flutter/wobble" animation. If this->0x4 == 8 AND this->0x260 (wall-
# mounted) is ALSO set, computes a SECOND, independent rotation matrix the
# same way and overwrites the first - a distinct wobble specific to that
# actor-type + wall-mounted combination (plausibly a "detaching from the
# wall" animation). Ends by drawing the shared model resource via
# `fn_801F02BC` - the same scale-variant spawn/draw wrapper ZLDA's own
# draw() uses.
fn_8015C8B0:
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
    lwz 0, 0x90(3)
    mr 31, 3
    srwi. 0, 0, 27
    .4byte 0x4182001C # beq .L_8015C910
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418203B0 # beq .L_8015CCBC
L_8015C910:
    li 0, -0x1
    addi 9, 1, 0x40
    stw 0, 0x50(1)
    li 10, 0x0
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_8015C988
L_8015C928:
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
L_8015C988:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8015C928
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x50(1)
    stw 5, 0x54(1)
    stw 5, 0x58(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 5, 0x5e(1)
    stb 4, 0x5f(1)
    stb 4, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 5, 0x65(1)
    stb 4, 0x66(1)
    stw 3, 0x68(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stw 6, 0x70(1)
    stw 5, 0x74(1)
    stw 0, 0x78(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x3c(1)
    lwz 0, 0x264(31)
    cmpwi 0, 0x1
    .4byte 0x418202A8 # beq .L_8015CCBC
    lwz 3, 0x150(31)
    lis 0, 0x4330
    stw 0, 0x80(1)
    .4byte 0xC862A590 # lfd f3, lbl_8053D530@sda21(r0)
    stw 3, 0x70(1)
    .4byte 0xC002A584 # lfs f0, lbl_8053D524@sda21(r0)
    lhz 0, 0x25c(31)
    stw 0, 0x84(1)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fdivs 30, 2, 0
    bl sin
    frsp 29, 1
    fmr 1, 30
    bl sin
    frsp 28, 1
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x10
    fmuls 2, 29, 28
    .4byte 0xC122A588 # lfs f9, lbl_8053D528@sda21(r0)
    fmuls 10, 31, 27
    stw 0, 0x58(1)
    fmuls 11, 31, 3
    li 8, 0x0
    fmuls 1, 29, 27
    fmuls 0, 29, 3
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
    stfs 8, 0x10(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x20(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x30(1)
    fmuls 0, 9, 0
    stfs 5, 0x14(1)
    stfs 4, 0x24(1)
    stfs 3, 0x34(1)
    stfs 2, 0x18(1)
    stfs 1, 0x28(1)
    stfs 0, 0x38(1)
    lwz 3, 0x260(31)
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_8015CB28
    li 8, 0x1
L_8015CB28:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40820160 # bne .L_8015CC90
    cmpwi 3, 0x0
    .4byte 0x41820158 # beq .L_8015CC90
    lhz 3, 0x25c(31)
    lis 0, 0x4330
    stw 0, 0x80(1)
    .4byte 0xC862A590 # lfd f3, lbl_8053D530@sda21(r0)
    stw 3, 0x84(1)
    .4byte 0xC002A584 # lfs f0, lbl_8053D524@sda21(r0)
    lfd 2, 0x80(1)
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    fsubs 2, 2, 3
    fdivs 31, 2, 0
    bl sin
    frsp 27, 1
    fmr 1, 31
    bl sin
    frsp 28, 1
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x10
    lis 3, lbl_804660F8@ha
    fmuls 3, 27, 28
    fmuls 10, 30, 29
    addi 4, 3, lbl_804660F8@l
    fmuls 12, 30, 4
    .4byte 0xC162A58C # lfs f11, lbl_8053D52C@sda21(r0)
    fmuls 2, 27, 29
    .4byte 0xC022A588 # lfs f1, lbl_8053D528@sda21(r0)
    fmuls 0, 27, 4
    stw 0, 0x58(1)
    fmuls 9, 31, 4
    mr 3, 31
    fmsubs 6, 3, 4, 10
    addi 6, 1, 0x40
    fmadds 5, 3, 29, 12
    li 7, -0x1
    fmadds 3, 12, 28, 2
    fmsubs 2, 10, 28, 0
    fmuls 0, 30, 31
    fmuls 10, 11, 9
    fmuls 8, 31, 29
    fmuls 0, 11, 0
    fneg 7, 28
    stfs 10, 0x10(1)
    fmuls 9, 11, 8
    fmuls 4, 27, 31
    stfs 0, 0x38(1)
    fmuls 8, 11, 7
    fmuls 7, 11, 6
    stfs 9, 0x20(1)
    fmuls 6, 11, 5
    fmuls 5, 11, 4
    stfs 8, 0x30(1)
    fmuls 4, 11, 3
    fmuls 3, 11, 2
    stfs 7, 0x14(1)
    fmr 2, 1
    stfs 6, 0x24(1)
    stfs 5, 0x34(1)
    stfs 4, 0x18(1)
    stfs 3, 0x28(1)
    lwz 5, 0x258(31)
    addi 5, 5, 0x155
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x176
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    .4byte 0x48000030 # b .L_8015CCBC
L_8015CC90:
    .4byte 0xC022A588 # lfs f1, lbl_8053D528@sda21(r0)
    lis 3, lbl_804660F8@ha
    lwz 5, 0x258(31)
    addi 4, 3, lbl_804660F8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x155
    addi 6, 1, 0x40
    li 7, -0x1
    li 9, 0x0
    bl fn_801F02BC
L_8015CCBC:
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

