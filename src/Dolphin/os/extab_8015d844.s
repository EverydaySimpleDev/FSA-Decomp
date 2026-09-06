.section extab, "a"
.balign 4
.global etb_80006FEC
etb_80006FEC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006FEC, 8

.section extabindex, "a"
.balign 4
.global eti_80013B70
eti_80013B70:
    .4byte fn_8015D844
    .4byte 0x000003A8
    .4byte etb_80006FEC
.size eti_80013B70, 12

# fn_8015D844 - KETH's ("Keese") real setParams(). Sets up the default
# interaction/detection box (this->0x60/64/68/6c, this->0x80/84/88/8c).
# Reads bit 27 of the universal spawn parameter (this->0x90) into
# this->0x260 - THE "wall-mounted Keese" FLAG, cross-confirmed with the
# SAME bit checked (via a genuine virtual dispatch, vtable slot 0x34) in
# both draw() (extab_8015c8b0.s) and update() (extab_8015ccf8.s). If set,
# overrides the detection box with a smaller pair (lbl_8053D574/578) and
# sets this->0xc0=2 (a mode flag).
#
# Bits 28-31 of the spawn param become this->0x264 - Keese's COLOR/VARIANT
# ID (0-4, matches the classic multi-color-Keese convention in Zelda
# games). Variant 3 uses the CONFIRMED global "Numerical Recipes" LCG PRNG
# (lbl_8053AAF8->0xb4, see reference_fsa_global_prng.md) three times to
# randomize an initial flight-angle-adjacent value into this->0x24c/0x254.
# Variant 2 uses the SAME PRNG twice more to scatter the spawn POSITION
# itself (this->0xc/0x10, with 0x24/0x2c mirrored copies) - consistent
# with Keese spawning in a jittered cluster rather than one exact point.
#
# Unconditionally defaults several speed/acceleration-shaped fields
# (this->0x26c/0x270/0x274/0x278/0x27c/0x3c/0x40/0x44) to the same tuning
# constant, sets this->0x258=2 (a state/counter) and this->0x26a=-1 (a
# countdown timer sentinel, checked by variant 1 in update()). If ANY of
# bits 27-31 combined are nonzero (i.e. wall-mounted OR any non-zero
# variant), forces this->0xb0 (an animation/pose ID default) back to 0,
# overriding the earlier unconditional default. Variant 4 additionally
# overrides this->0x14 (height) and sets this->0x230=3 (vs 0 otherwise).
# Finally saves the (possibly-jittered) spawn position into
# this->0x280/0x284/0x288 - a fixed "home anchor" later flight patterns
# presumably orbit around.
.text
.balign 4
.global fn_8015D844

fn_8015D844:
    stwu 1, -0x40(1)
    .4byte 0xC042A5CC # lfs f2, lbl_8053D56C@sda21(r0)
    .4byte 0xC022A5D0 # lfs f1, lbl_8053D570@sda21(r0)
    stfs 2, 0x60(3)
    .4byte 0xC002A580 # lfs f0, lbl_8053D520@sda21(r0)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 0, 0x80(3)
    stfs 0, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 27
    stw 0, 0x260(3)
    lwz 0, 0x260(3)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_8015D8AC
    .4byte 0xC022A5D4 # lfs f1, lbl_8053D574@sda21(r0)
    li 0, 0x2
    .4byte 0xC002A5D8 # lfs f0, lbl_8053D578@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 0, 0xc0(3)
L_8015D8AC:
    li 0, 0x0
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x250(3)
    stw 0, 0x254(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    sth 0, 0x25c(3)
    stb 0, 0x25e(3)
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820018 # beq .L_8015D8FC
    li 0, 0x1
    lis 4, 0x1
    stb 0, 0x25e(3)
    addi 0, 4, -0x8000
    sth 0, 0x25c(3)
L_8015D8FC:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x264(3)
    lwz 0, 0x264(3)
    cmpwi 0, 0x3
    .4byte 0x40820134 # bne .L_8015DA44
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 5, 4, 0x660d
    .4byte 0xC042A588 # lfs f2, lbl_8053D528@sda21(r0)
    lwz 0, 0xb4(6)
    .4byte 0xC062A5DC # lfs f3, lbl_8053D57C@sda21(r0)
    mullw 4, 0, 5
    .4byte 0xC002A598 # lfs f0, lbl_8053D538@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x24c(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800058 # bge .L_8015D9F8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    .4byte 0xC022A5E0 # lfs f1, lbl_8053D580@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    addi 0, 4, 0x200
    neg 0, 0
    stw 0, 0x254(3)
    .4byte 0x48000050 # b .L_8015DA44
L_8015D9F8:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    .4byte 0xC022A5E0 # lfs f1, lbl_8053D580@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    addi 0, 4, 0x200
    stw 0, 0x254(3)
L_8015DA44:
    lwz 0, 0x264(3)
    cmpwi 0, 0x2
    .4byte 0x408200F4 # bne .L_8015DB40
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 0, 0x4330
    lis 4, 0x19
    .4byte 0xC062A588 # lfs f3, lbl_8053D528@sda21(r0)
    lwz 6, 0xb4(7)
    addi 5, 4, 0x660d
    .4byte 0xC082A5E4 # lfs f4, lbl_8053D584@sda21(r0)
    mullw 4, 6, 5
    stw 0, 0x28(1)
    .4byte 0xC842A5E8 # lfd f2, lbl_8053D588@sda21(r0)
    stw 0, 0x38(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    lfs 1, 0xc(3)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    subi 0, 4, 0x4
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0xc(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 1, 0x10(3)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    subi 0, 4, 0x4
    xoris 0, 0, 0x8000
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x10(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x24(3), 0, 0
    stfs 0, 0x2c(3)
L_8015DB40:
    .4byte 0xC022A580 # lfs f1, lbl_8053D520@sda21(r0)
    lis 5, 0x3
    addi 7, 5, 0x1201
    lis 4, 0x1
    stfs 1, 0x26c(3)
    li 6, 0x2
    li 5, 0x0
    subi 0, 4, 0x1
    stfs 1, 0x270(3)
    .4byte 0xC002A588 # lfs f0, lbl_8053D528@sda21(r0)
    stw 7, 0xb0(3)
    stfs 1, 0x274(3)
    stfs 1, 0x278(3)
    stfs 1, 0x27c(3)
    stfs 1, 0x3c(3)
    stfs 1, 0x40(3)
    stfs 1, 0x44(3)
    stw 6, 0x258(3)
    sth 5, 0x268(3)
    sth 0, 0x26a(3)
    stfs 0, 0x14(3)
    lwz 0, 0x90(3)
    srwi. 0, 0, 27
    .4byte 0x41820008 # beq .L_8015DBA4
    stw 5, 0xb0(3)
L_8015DBA4:
    lwz 0, 0x264(3)
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_8015DBC4
    .4byte 0xC002A580 # lfs f0, lbl_8053D520@sda21(r0)
    li 0, 0x3
    stfs 0, 0x14(3)
    stw 0, 0x230(3)
    .4byte 0x4800000C # b .L_8015DBCC
L_8015DBC4:
    li 0, 0x0
    stw 0, 0x230(3)
L_8015DBCC:
    lfs 0, 0xc(3)
    stfs 0, 0x280(3)
    lfs 0, 0x10(3)
    stfs 0, 0x284(3)
    lfs 0, 0x14(3)
    stfs 0, 0x288(3)
    addi 1, 1, 0x40
    blr
