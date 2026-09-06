# GNON cluster, part 2/8 (Track A byte-match + overview - 0x8B48=2888B
# wait 0xB48=2888B). draw(). Not decompiled in the earlier deep-dive
# session (see project_fsa_gnon_actor_progress) - flagged there as a
# genuinely large, unexplored function. Byte-matched via direct
# transcription of the dtk auto-disasm; full semantic breakdown
# deferred.
.section extab, "a"
.balign 4
.global etb_800077A4
etb_800077A4:
    .4byte 0x1A8A0000
    .4byte 0x0000042C
    .4byte 0x005B0040
    .4byte 0x00000684
    .4byte 0x00000038
    .4byte 0x00000690
    .4byte 0x00000040
    .4byte 0x00000868
    .4byte 0x005C0050
    .4byte 0x00000AC4
    .4byte 0x00000048
    .4byte 0x00000AD0
    .4byte 0x00000050
    .4byte 0x00000000
    .4byte 0x02000088
    .4byte dtor_80092364
    .4byte 0x820000C8
    .4byte dtor_80092364
    .4byte 0x02000008
    .4byte dtor_80092364
    .4byte 0x82000048
    .4byte dtor_80092364
.size etb_800077A4, 88

.section extabindex, "a"
.balign 4
.global eti_8001456C
eti_8001456C:
    .4byte fn_80192090
    .4byte 0x00000B48
    .4byte etb_800077A4
.size eti_8001456C, 12

.text
.balign 4
.global fn_80192090

fn_80192090:
    stwu 1, -0x240(1)
    mflr 0
    stw 0, 0x244(1)
    stfd 31, 0x230(1)
    psq_st 31, 0x238(1), 0, 0
    stfd 30, 0x220(1)
    psq_st 30, 0x228(1), 0, 0
    stfd 29, 0x210(1)
    psq_st 29, 0x218(1), 0, 0
    stfd 28, 0x200(1)
    psq_st 28, 0x208(1), 0, 0
    stfd 27, 0x1f0(1)
    psq_st 27, 0x1f8(1), 0, 0
    stfd 26, 0x1e0(1)
    psq_st 26, 0x1e8(1), 0, 0
    stfd 25, 0x1d0(1)
    psq_st 25, 0x1d8(1), 0, 0
    stfd 24, 0x1c0(1)
    psq_st 24, 0x1c8(1), 0, 0
    stfd 23, 0x1b0(1)
    psq_st 23, 0x1b8(1), 0, 0
    stfd 22, 0x1a0(1)
    psq_st 22, 0x1a8(1), 0, 0
    stw 31, 0x19c(1)
    stw 30, 0x198(1)
    stw 29, 0x194(1)
    li 0, -0x1
    lis 4, lbl_804A1FF8@ha
    stw 0, 0x148(1)
    mr 29, 3
    addi 31, 4, lbl_804A1FF8@l
    addi 9, 1, 0x138
    stw 0, 0x14c(1)
    li 10, 0x0
    .4byte 0x48000064 # b .L_8019217C
L_8019211C:
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
L_8019217C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8019211C
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x148(1)
    stw 5, 0x14c(1)
    stw 5, 0x150(1)
    stb 5, 0x154(1)
    stb 5, 0x155(1)
    stb 5, 0x156(1)
    stb 4, 0x157(1)
    stb 4, 0x158(1)
    stb 5, 0x159(1)
    stb 5, 0x15a(1)
    stb 5, 0x15b(1)
    stb 5, 0x15c(1)
    stb 5, 0x15d(1)
    stb 4, 0x15e(1)
    stw 3, 0x160(1)
    stb 4, 0x164(1)
    stb 5, 0x165(1)
    stb 5, 0x166(1)
    stw 6, 0x168(1)
    stw 5, 0x16c(1)
    stw 0, 0x170(1)
    stfs 1, 0x114(1)
    stfs 1, 0x124(1)
    stfs 1, 0x134(1)
    lwz 0, 0x90(29)
    cmplwi 0, 0x1f
    .4byte 0x41820964 # beq .L_80192B6C
    cmplwi 0, 0x0
    lfs 26, 0xc(29)
    lfs 25, 0x10(29)
    lfs 24, 0x14(29)
    .4byte 0x4182016C # beq .L_80192388
    cmplwi 0, 0x1e
    .4byte 0x40820948 # bne .L_80192B6C
    li 3, 0x5
    lis 0, 0x4330
    stb 5, 0x157(1)
    .4byte 0xC862B2E8 # lfd f3, lbl_8053E288@sda21(r0)
    stb 3, 0x155(1)
    .4byte 0xC002B2DC # lfs f0, lbl_8053E27C@sda21(r0)
    stfs 1, 0x114(1)
    stfs 1, 0x124(1)
    stfs 1, 0x134(1)
    lhz 3, 0x2b4(29)
    stw 0, 0x178(1)
    stw 3, 0x17c(1)
    lfd 2, 0x178(1)
    fsubs 2, 2, 3
    fdivs 25, 2, 0
    bl sin
    frsp 22, 1
    fmr 1, 25
    bl sin
    frsp 23, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl sin
    frsp 24, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 25
    bl cos
    frsp 30, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl cos
    frsp 3, 1
    lis 3, lbl_80467F8C@ha
    addi 4, 3, lbl_80467F8C@l
    fmuls 2, 22, 23
    fmuls 10, 31, 24
    lis 3, 0x4741
    fmuls 11, 31, 3
    .4byte 0xC122B2E0 # lfs f9, lbl_8053E280@sda21(r0)
    fmuls 1, 22, 24
    addi 3, 3, 0x4e4f
    fmuls 8, 30, 3
    fmuls 7, 30, 24
    fneg 6, 23
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 24, 11
    fmuls 0, 22, 3
    fmadds 2, 11, 23, 1
    fmuls 3, 22, 30
    fmsubs 1, 10, 23, 0
    fmuls 0, 31, 30
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x108(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x118(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x128(1)
    fmuls 0, 9, 0
    stfs 5, 0x10c(1)
    stfs 4, 0x11c(1)
    stfs 3, 0x12c(1)
    stfs 2, 0x110(1)
    stfs 1, 0x120(1)
    stfs 0, 0x130(1)
    bl fn_804032E8
    addi 0, 1, 0x108
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    stw 0, 0x150(1)
    mr 4, 3
    li 0, -0x1
    fmr 2, 1
    lfs 0, 0x2b0(29)
    fmr 3, 1
    mr 3, 29
    addi 5, 1, 0x138
    fctiwz 0, 0
    stw 0, 0x168(1)
    li 6, -0x1
    stfd 0, 0x180(1)
    lwz 0, 0x184(1)
    stb 0, 0x14b(1)
    bl fn_801EFD34
    .4byte 0x480007E8 # b .L_80192B6C
L_80192388:
    stb 5, 0x157(1)
    lwz 0, 0x230(29)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_801923A0
    cmpwi 0, 0x6
    .4byte 0x40820390 # bne .L_8019272C
L_801923A0:
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    lis 3, 0x4741
    li 6, 0x0
    li 5, 0x64
    stfs 0, 0x14(29)
    li 0, -0x2
    addi 4, 31, 0x3a0
    addi 3, 3, 0x4e4f
    stb 6, 0x148(1)
    stb 6, 0x149(1)
    stb 6, 0x14a(1)
    stb 5, 0x14b(1)
    stb 0, 0x155(1)
    lwz 0, 0x284(29)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    mr 30, 3
    mr 3, 29
    addi 5, 1, 0x138
    fmr 2, 1
    mr 4, 30
    fmr 3, 1
    li 6, -0x1
    bl fn_801EFD34
    li 0, 0x0
    mr 4, 30
    stw 0, 0xf0(1)
    addi 3, 1, 0xc8
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x103(1)
    lis 4, 0x4330
    lwz 5, 0xe8(1)
    rlwinm 0, 0, 0, 30, 30
    stw 4, 0x180(1)
    .4byte 0xC862B2F0 # lfd f3, lbl_8053E290@sda21(r0)
    stb 0, 0x103(1)
    .4byte 0xC042B2E4 # lfs f2, lbl_8053E284@sda21(r0)
    lhz 3, 0x2(5)
    lhz 0, 0x4(5)
    xoris 5, 3, 0x8000
    stw 4, 0x178(1)
    xoris 3, 0, 0x8000
    lwz 0, 0x28c(29)
    stw 5, 0x184(1)
    cmpwi 0, 0x5
    stw 3, 0x17c(1)
    lfd 1, 0x180(1)
    lfd 0, 0x178(1)
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    fneg 1, 1
    fneg 0, 0
    fmuls 23, 2, 1
    fmuls 22, 2, 0
    .4byte 0x40820118 # bne .L_8019259C
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    stw 4, 0x180(1)
    .4byte 0xC862B2E8 # lfd f3, lbl_8053E288@sda21(r0)
    stfs 1, 0x114(1)
    .4byte 0xC002B2DC # lfs f0, lbl_8053E27C@sda21(r0)
    stfs 1, 0x124(1)
    stfs 1, 0x134(1)
    lhz 0, 0x2b4(29)
    stw 0, 0x184(1)
    lfd 2, 0x180(1)
    fsubs 2, 2, 3
    fdivs 27, 2, 0
    bl sin
    frsp 30, 1
    fmr 1, 27
    bl sin
    frsp 31, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl cos
    frsp 28, 1
    fmr 1, 27
    bl cos
    frsp 27, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl cos
    frsp 3, 1
    lis 3, lbl_80467F8C@ha
    addi 4, 3, lbl_80467F8C@l
    fmuls 2, 30, 31
    fmuls 10, 28, 29
    lis 3, 0x4741
    fmuls 11, 28, 3
    .4byte 0xC122B2E0 # lfs f9, lbl_8053E280@sda21(r0)
    fmuls 1, 30, 29
    addi 3, 3, 0x4e4f
    fmuls 8, 27, 3
    fmuls 7, 27, 29
    fneg 6, 31
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 29, 11
    fmuls 0, 30, 3
    fmadds 2, 11, 31, 1
    fmuls 3, 30, 27
    fmsubs 1, 10, 31, 0
    fmuls 0, 28, 27
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x108(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x118(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x128(1)
    fmuls 0, 9, 0
    stfs 5, 0x10c(1)
    stfs 4, 0x11c(1)
    stfs 3, 0x12c(1)
    stfs 2, 0x110(1)
    stfs 1, 0x120(1)
    stfs 0, 0x130(1)
    bl fn_804032E8
    mr 30, 3
    .4byte 0x48000054 # b .L_801925EC
L_8019259C:
    lfs 2, 0x2d4(29)
    lis 3, 0x4741
    lfs 1, 0x2d0(29)
    addi 4, 31, 0x48c
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    addi 3, 3, 0x4e4f
    stfs 1, 0x108(1)
    stfs 0, 0x10c(1)
    stfs 0, 0x110(1)
    stfs 0, 0x118(1)
    stfs 2, 0x11c(1)
    stfs 0, 0x120(1)
    stfs 0, 0x128(1)
    stfs 0, 0x12c(1)
    stfs 2, 0x130(1)
    lwz 0, 0x288(29)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
L_801925EC:
    li 7, 0x0
    addi 3, 1, 0x108
    li 6, 0x64
    li 0, -0x1
    stw 3, 0x150(1)
    mr 4, 30
    addi 3, 1, 0x88
    li 5, 0x0
    stb 7, 0x148(1)
    stb 7, 0x149(1)
    stb 7, 0x14a(1)
    stb 6, 0x14b(1)
    stb 0, 0x155(1)
    stw 7, 0xb0(1)
    bl fn_800923D8
    lbz 0, 0xc3(1)
    lis 5, 0x4330
    lwz 3, 0xa8(1)
    addi 4, 31, 0x578
    rlwinm 0, 0, 0, 30, 30
    stw 5, 0x180(1)
    .4byte 0xC8A2B2F0 # lfd f5, lbl_8053E290@sda21(r0)
    stb 0, 0xc3(1)
    .4byte 0xC062B2E4 # lfs f3, lbl_8053E284@sda21(r0)
    lwz 0, 0x28c(29)
    lhz 6, 0x2(3)
    slwi 7, 0, 3
    lhz 0, 0x4(3)
    add 3, 4, 7
    xoris 6, 6, 0x8000
    stw 6, 0x184(1)
    xoris 0, 0, 0x8000
    lfsx 2, 4, 7
    lfd 4, 0x180(1)
    lfs 1, 0x4(3)
    lfs 0, 0xc(29)
    fsubs 4, 4, 5
    stw 0, 0x17c(1)
    stfs 0, 0x2c4(29)
    fmadds 2, 3, 4, 2
    lfs 0, 0x10(29)
    stw 5, 0x178(1)
    fadds 23, 23, 2
    stfs 0, 0x2c8(29)
    lfd 2, 0x178(1)
    lfs 0, 0x14(29)
    fsubs 2, 2, 5
    stfs 0, 0x2cc(29)
    lfs 0, 0x2c4(29)
    fmadds 1, 3, 2, 1
    fadds 0, 0, 23
    fadds 22, 22, 1
    stfs 0, 0x2c4(29)
    lfs 0, 0x2c8(29)
    fadds 0, 0, 22
    stfs 0, 0x2c8(29)
    lbz 0, 0x2a5(29)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_80192714
    lwz 0, 0x28c(29)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_801926F4
    .4byte 0x40820030 # bne .L_80192714
    lwz 0, 0x25c(29)
    cmpwi 0, 0x6
    .4byte 0x40800024 # bge .L_80192714
L_801926F4:
    fmr 1, 23
    .4byte 0xC042B2D8 # lfs f2, lbl_8053E278@sda21(r0)
    fneg 3, 22
    mr 3, 29
    mr 4, 30
    addi 5, 1, 0x138
    li 6, -0x1
    bl fn_801EFD34
L_80192714:
    addi 3, 1, 0x88
    li 4, -0x1
    bl dtor_80092364
    addi 3, 1, 0xc8
    li 4, -0x1
    bl dtor_80092364
L_8019272C:
    stfs 26, 0xc(29)
    li 5, 0x3
    li 4, 0x0
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    stfs 25, 0x10(29)
    addi 3, 1, 0x108
    li 0, 0xff
    stfs 24, 0x14(29)
    stb 5, 0x155(1)
    stb 4, 0x157(1)
    lfs 2, 0x58(29)
    lfs 1, 0x54(29)
    stfs 1, 0x108(1)
    stfs 0, 0x10c(1)
    stfs 0, 0x110(1)
    stfs 0, 0x118(1)
    stfs 2, 0x11c(1)
    stfs 0, 0x120(1)
    stfs 0, 0x128(1)
    stfs 0, 0x12c(1)
    stfs 2, 0x130(1)
    stw 3, 0x150(1)
    stb 0, 0x148(1)
    stb 0, 0x149(1)
    stb 0, 0x14a(1)
    stb 0, 0x14b(1)
    lfs 0, 0x2ac(29)
    fctiwz 0, 0
    stfd 0, 0x180(1)
    lwz 0, 0x184(1)
    stb 0, 0x14b(1)
    lwz 0, 0x2a0(29)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_801927C0
    lwz 0, 0x230(29)
    cmpwi 0, 0xa
    .4byte 0x40820020 # bne .L_801927DC
L_801927C0:
    lwz 0, 0x230(29)
    cmpwi 0, 0x10
    .4byte 0x41820014 # beq .L_801927DC
    cmpwi 0, 0x11
    .4byte 0x4182000C # beq .L_801927DC
    cmpwi 0, 0x12
    .4byte 0x40820010 # bne .L_801927E8
L_801927DC:
    li 0, 0x10
    stw 0, 0x168(1)
    .4byte 0x4800000C # b .L_801927F0
L_801927E8:
    li 0, 0x11
    stw 0, 0x168(1)
L_801927F0:
    lwz 0, 0x284(29)
    lis 3, 0x4741
    addi 4, 31, 0x3a0
    slwi 0, 0, 2
    addi 3, 3, 0x4e4f
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    mr 30, 3
    mr 3, 29
    addi 5, 1, 0x138
    fmr 2, 1
    mr 4, 30
    fmr 3, 1
    li 6, -0x1
    bl fn_801EFD34
    li 0, 0x0
    mr 4, 30
    stw 0, 0x70(1)
    addi 3, 1, 0x48
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x83(1)
    lis 4, 0x4330
    lwz 5, 0x68(1)
    rlwinm 0, 0, 0, 30, 30
    stw 4, 0x180(1)
    .4byte 0xC862B2F0 # lfd f3, lbl_8053E290@sda21(r0)
    stb 0, 0x83(1)
    .4byte 0xC042B2E4 # lfs f2, lbl_8053E284@sda21(r0)
    lhz 3, 0x2(5)
    lhz 0, 0x4(5)
    xoris 5, 3, 0x8000
    stw 4, 0x178(1)
    xoris 3, 0, 0x8000
    lwz 0, 0x28c(29)
    stw 5, 0x184(1)
    cmpwi 0, 0x5
    stw 3, 0x17c(1)
    lfd 1, 0x180(1)
    lfd 0, 0x178(1)
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    fneg 1, 1
    fneg 0, 0
    fmuls 26, 2, 1
    fmuls 30, 2, 0
    .4byte 0x40820128 # bne .L_801929D4
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    stw 4, 0x180(1)
    .4byte 0xC062B2E0 # lfs f3, lbl_8053E280@sda21(r0)
    stfs 1, 0x114(1)
    .4byte 0xC8A2B2E8 # lfd f5, lbl_8053E288@sda21(r0)
    stfs 1, 0x124(1)
    .4byte 0xC082B2DC # lfs f4, lbl_8053E27C@sda21(r0)
    stfs 1, 0x134(1)
    lhz 0, 0x2b4(29)
    lfs 2, 0x2d0(29)
    lfs 0, 0x2d4(29)
    stw 0, 0x184(1)
    fmuls 24, 3, 2
    fmuls 25, 3, 0
    lfd 2, 0x180(1)
    fsubs 0, 2, 5
    fdivs 29, 0, 4
    bl sin
    frsp 22, 1
    fmr 1, 29
    bl sin
    frsp 27, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl sin
    frsp 23, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl cos
    frsp 28, 1
    fmr 1, 29
    bl cos
    frsp 29, 1
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    bl cos
    frsp 3, 1
    lis 3, lbl_80467F8C@ha
    fmuls 7, 29, 23
    addi 4, 3, lbl_80467F8C@l
    fneg 6, 27
    lis 3, 0x4741
    fmuls 10, 28, 3
    addi 3, 3, 0x4e4f
    fmuls 2, 22, 27
    fmuls 9, 28, 23
    fmuls 8, 29, 3
    fmadds 4, 2, 23, 10
    fmsubs 5, 2, 3, 9
    fmuls 1, 22, 23
    fmuls 0, 22, 3
    fmuls 3, 22, 29
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 28, 29
    fmuls 8, 24, 8
    fmuls 7, 24, 7
    fmuls 6, 24, 6
    fmuls 5, 25, 5
    stfs 8, 0x108(1)
    fmuls 4, 25, 4
    fmuls 3, 25, 3
    stfs 7, 0x118(1)
    fmuls 2, 25, 2
    fmuls 1, 25, 1
    stfs 6, 0x128(1)
    fmuls 0, 25, 0
    stfs 5, 0x10c(1)
    stfs 4, 0x11c(1)
    stfs 3, 0x12c(1)
    stfs 2, 0x110(1)
    stfs 1, 0x120(1)
    stfs 0, 0x130(1)
    bl fn_804032E8
    mr 30, 3
    .4byte 0x48000054 # b .L_80192A24
L_801929D4:
    lfs 2, 0x2d4(29)
    lis 3, 0x4741
    lfs 1, 0x2d0(29)
    addi 4, 31, 0x48c
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    addi 3, 3, 0x4e4f
    stfs 1, 0x108(1)
    stfs 0, 0x10c(1)
    stfs 0, 0x110(1)
    stfs 0, 0x118(1)
    stfs 2, 0x11c(1)
    stfs 0, 0x120(1)
    stfs 0, 0x128(1)
    stfs 0, 0x12c(1)
    stfs 2, 0x130(1)
    lwz 0, 0x288(29)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
L_80192A24:
    addi 0, 1, 0x108
    li 7, -0x1
    stw 0, 0x150(1)
    li 6, 0x5
    li 0, 0x0
    mr 4, 30
    lfs 0, 0x2b0(29)
    addi 3, 1, 0x8
    li 5, 0x0
    fctiwz 0, 0
    stw 7, 0x168(1)
    stb 6, 0x155(1)
    stfd 0, 0x180(1)
    lwz 6, 0x184(1)
    stw 0, 0x30(1)
    stb 6, 0x14b(1)
    bl fn_800923D8
    lbz 0, 0x43(1)
    lis 5, 0x4330
    lwz 3, 0x28(1)
    addi 4, 31, 0x578
    rlwinm 0, 0, 0, 30, 30
    stw 5, 0x178(1)
    .4byte 0xC8A2B2F0 # lfd f5, lbl_8053E290@sda21(r0)
    stb 0, 0x43(1)
    .4byte 0xC062B2E4 # lfs f3, lbl_8053E284@sda21(r0)
    lwz 0, 0x28c(29)
    lhz 6, 0x2(3)
    slwi 7, 0, 3
    lhz 0, 0x4(3)
    add 3, 4, 7
    xoris 6, 6, 0x8000
    stw 6, 0x17c(1)
    xoris 0, 0, 0x8000
    lfsx 2, 4, 7
    lfd 4, 0x178(1)
    lfs 1, 0x4(3)
    lfs 0, 0xc(29)
    fsubs 4, 4, 5
    stw 0, 0x18c(1)
    stfs 0, 0x2c4(29)
    fmadds 2, 3, 4, 2
    lfs 0, 0x10(29)
    stw 5, 0x188(1)
    fadds 26, 26, 2
    stfs 0, 0x2c8(29)
    lfd 2, 0x188(1)
    lfs 0, 0x14(29)
    fsubs 2, 2, 5
    stfs 0, 0x2cc(29)
    lfs 0, 0x2c4(29)
    fmadds 1, 3, 2, 1
    fadds 0, 0, 26
    fadds 30, 30, 1
    stfs 0, 0x2c4(29)
    lfs 0, 0x2c8(29)
    fadds 0, 0, 30
    stfs 0, 0x2c8(29)
    lbz 0, 0x2a5(29)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_80192B54
    lwz 0, 0x28c(29)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_80192B34
    .4byte 0x40820030 # bne .L_80192B54
    lwz 0, 0x25c(29)
    cmpwi 0, 0x6
    .4byte 0x40800024 # bge .L_80192B54
L_80192B34:
    fmr 1, 26
    .4byte 0xC042B2D8 # lfs f2, lbl_8053E278@sda21(r0)
    fneg 3, 30
    mr 3, 29
    mr 4, 30
    addi 5, 1, 0x138
    li 6, -0x1
    bl fn_801EFD34
L_80192B54:
    addi 3, 1, 0x8
    li 4, -0x1
    bl dtor_80092364
    addi 3, 1, 0x48
    li 4, -0x1
    bl dtor_80092364
L_80192B6C:
    psq_l 31, 0x238(1), 0, 0
    lfd 31, 0x230(1)
    psq_l 30, 0x228(1), 0, 0
    lfd 30, 0x220(1)
    psq_l 29, 0x218(1), 0, 0
    lfd 29, 0x210(1)
    psq_l 28, 0x208(1), 0, 0
    lfd 28, 0x200(1)
    psq_l 27, 0x1f8(1), 0, 0
    lfd 27, 0x1f0(1)
    psq_l 26, 0x1e8(1), 0, 0
    lfd 26, 0x1e0(1)
    psq_l 25, 0x1d8(1), 0, 0
    lfd 25, 0x1d0(1)
    psq_l 24, 0x1c8(1), 0, 0
    lfd 24, 0x1c0(1)
    psq_l 23, 0x1b8(1), 0, 0
    lfd 23, 0x1b0(1)
    psq_l 22, 0x1a8(1), 0, 0
    lfd 22, 0x1a0(1)
    lwz 31, 0x19c(1)
    lwz 30, 0x198(1)
    lwz 0, 0x244(1)
    lwz 29, 0x194(1)
    mtlr 0
    addi 1, 1, 0x240
    blr

