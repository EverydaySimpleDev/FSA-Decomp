# BPH2 cluster, part 2 (Track A byte-match + overview - 1740B). Uses
# sin/cos directly plus the confirmed ambient effect-group spawn
# fn_80158B5C, the confirmed effect emission fn_801EFD34, the confirmed
# already-landed fn_801F02BC, and 2 unfamiliar helpers fn_80158624/
# fn_804032E8. Likely a circular-motion particle/trail draw() half,
# mirroring FGN2's fn_801871A0 role for this actor.
.section extab, "a"
.balign 4
.global etb_800076C4
etb_800076C4:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_800076C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001444C
eti_8001444C:
    .4byte fn_8018A930
    .4byte 0x000006CC
    .4byte etb_800076C4
.size eti_8001444C, 12

.text
.balign 4
.global fn_8018A930

fn_8018A930:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stfd 29, 0x100(1)
    psq_st 29, 0x108(1), 0, 0
    stfd 28, 0xf0(1)
    psq_st 28, 0xf8(1), 0, 0
    stfd 27, 0xe0(1)
    psq_st 27, 0xe8(1), 0, 0
    stfd 26, 0xd0(1)
    psq_st 26, 0xd8(1), 0, 0
    stw 31, 0xcc(1)
    stw 30, 0xc8(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x78(1)
    addi 9, 1, 0x68
    li 10, 0x0
    stw 0, 0x7c(1)
    .4byte 0x48000064 # b .L_8018A9F0
L_8018A990:
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
L_8018A9F0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8018A990
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 4, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 4, 0x78(1)
    stw 6, 0x7c(1)
    stw 6, 0x80(1)
    stb 6, 0x84(1)
    stb 6, 0x85(1)
    stb 6, 0x86(1)
    stb 5, 0x87(1)
    stb 5, 0x88(1)
    stb 6, 0x89(1)
    stb 6, 0x8a(1)
    stb 6, 0x8b(1)
    stb 6, 0x8c(1)
    stb 6, 0x8d(1)
    stb 5, 0x8e(1)
    stw 3, 0x90(1)
    stb 5, 0x94(1)
    stb 6, 0x95(1)
    stb 6, 0x96(1)
    stw 4, 0x98(1)
    stw 6, 0x9c(1)
    stw 0, 0xa0(1)
    stfs 0, 0x44(1)
    stfs 0, 0x54(1)
    stfs 0, 0x64(1)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x408204EC # bne .L_8018AF68
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182052C # beq .L_8018AFB4
    lis 3, lbl_804674C8@ha
    lis 5, 0x4249
    addi 4, 3, lbl_804674C8@l
    stb 6, 0x87(1)
    addi 3, 5, 0x4750
    bl fn_804032E8
    lfs 29, 0x28c(31)
    mr 30, 3
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 29
    bl sin
    frsp 27, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 29
    bl cos
    frsp 30, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl cos
    frsp 6, 1
    li 0, 0x2
    li 3, 0x1
    fmuls 5, 28, 27
    fmuls 13, 31, 26
    .4byte 0xC182B130 # lfs f12, lbl_8053E0D0@sda21(r0)
    fmuls 29, 31, 6
    stb 0, 0x85(1)
    fmuls 4, 28, 26
    addi 0, 1, 0x38
    fmuls 0, 28, 6
    stb 3, 0x84(1)
    fmuls 11, 30, 6
    .4byte 0xC022B134 # lfs f1, lbl_8053E0D4@sda21(r0)
    fmuls 10, 30, 26
    .4byte 0xC042B138 # lfs f2, lbl_8053E0D8@sda21(r0)
    fneg 9, 27
    .4byte 0xC062B128 # lfs f3, lbl_8053E0C8@sda21(r0)
    fmsubs 8, 5, 6, 13
    mr 3, 31
    fmadds 7, 5, 26, 29
    mr 4, 30
    fmuls 6, 28, 30
    addi 5, 1, 0x68
    fmadds 5, 29, 27, 4
    li 6, -0x1
    fmsubs 4, 13, 27, 0
    fmuls 0, 31, 30
    fmuls 11, 12, 11
    fmuls 10, 12, 10
    fmuls 9, 12, 9
    fmuls 8, 12, 8
    stfs 11, 0x38(1)
    fmuls 7, 12, 7
    fmuls 6, 12, 6
    stfs 10, 0x48(1)
    fmuls 5, 12, 5
    fmuls 4, 12, 4
    stfs 9, 0x58(1)
    fmuls 0, 12, 0
    stfs 8, 0x3c(1)
    stfs 7, 0x4c(1)
    stfs 6, 0x5c(1)
    stfs 5, 0x40(1)
    stfs 4, 0x50(1)
    stfs 0, 0x60(1)
    lfs 0, 0x288(31)
    fctiwz 0, 0
    stw 0, 0x80(1)
    stfd 0, 0xa8(1)
    lwz 0, 0xac(1)
    stb 0, 0x7b(1)
    bl fn_801EFD34
    lfs 2, 0xc(31)
    li 0, 0x0
    .4byte 0xC002B13C # lfs f0, lbl_8053E0DC@sda21(r0)
    addi 5, 1, 0x20
    stfs 2, 0x2c(1)
    addi 6, 1, 0x14
    fsubs 4, 2, 0
    .4byte 0xC022B140 # lfs f1, lbl_8053E0E0@sda21(r0)
    lfs 2, 0x10(31)
    .4byte 0xC002B144 # lfs f0, lbl_8053E0E4@sda21(r0)
    fadds 3, 2, 1
    stfs 2, 0x30(1)
    .4byte 0xC042B148 # lfs f2, lbl_8053E0E8@sda21(r0)
    lfs 5, 0x14(31)
    frsp 1, 3
    stb 0, 0x18(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 3, 0x24(1)
    fadds 0, 1, 0
    .4byte 0xC022B14C # lfs f1, lbl_8053E0EC@sda21(r0)
    stfs 5, 0x34(1)
    stfs 4, 0x2c(1)
    stfs 3, 0x30(1)
    stfs 4, 0x20(1)
    stfs 5, 0x28(1)
    stfs 0, 0x24(1)
    lfs 0, 0x288(31)
    stb 0, 0x19(1)
    fmuls 0, 2, 0
    lwz 4, 0x4(31)
    stb 0, 0x1a(1)
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 0, 0xb4(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 0, 0x14(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    .4byte 0xC082B154 # lfs f4, lbl_8053E0F4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0x28c(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0A2B150 # lfs f5, lbl_8053E0F0@sda21(r0)
    fmuls 1, 4, 0
    lfs 0, 0x2c(1)
    fctiwz 1, 1
    stfd 1, 0xb8(1)
    lwz 0, 0xbc(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 5, 1, 0
    stfs 0, 0x2c(1)
    lwz 0, 0x27c(31)
    cmpwi 0, 0x0
    .4byte 0x40800058 # bge .L_8018ACF8
    stfs 0, 0x2dc(31)
    .4byte 0xC022B12C # lfs f1, lbl_8053E0CC@sda21(r0)
    lfs 2, 0x30(1)
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 2, 0x2e0(31)
    lfs 2, 0x34(1)
    stfs 2, 0x2e4(31)
    lfs 3, 0x28c(31)
    lfs 2, 0x2dc(31)
    fmuls 3, 4, 3
    fctiwz 3, 3
    stfd 3, 0xb8(1)
    lwz 0, 0xbc(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 3, 3, 0
    fmadds 2, 5, 3, 2
    stfs 2, 0x2dc(31)
    lfs 2, 0x2e0(31)
    fadds 1, 2, 1
    stfs 1, 0x2e0(31)
    stfs 0, 0x2e4(31)
L_8018ACF8:
    .4byte 0xC022B158 # lfs f1, lbl_8053E0F8@sda21(r0)
    lfs 0, 0x284(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820030 # beq .L_8018AD34
    lis 4, 0x3f3f
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 0, 4, 0x1f7f
    .4byte 0xC022B15C # lfs f1, lbl_8053E0FC@sda21(r0)
    stw 0, 0x10(1)
    addi 4, 1, 0x2c
    addi 5, 31, 0x2d0
    addi 6, 1, 0x10
    stw 0, 0x1c(1)
    lwz 3, 0x2c(3)
    bl fn_80158624
L_8018AD34:
    li 0, 0x2
    li 3, 0x1
    stb 0, 0x85(1)
    .4byte 0xC002B144 # lfs f0, lbl_8053E0E4@sda21(r0)
    stb 3, 0x84(1)
    lfs 1, 0x280(31)
    fctiwz 1, 1
    stfd 1, 0xb8(1)
    lwz 0, 0xbc(1)
    stb 0, 0x7b(1)
    clrlwi 0, 0, 24
    cmplwi 0, 0xff
    lfs 1, 0xc(31)
    stfs 1, 0x2c(1)
    fsubs 0, 1, 0
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x2c(1)
    .4byte 0x40820014 # bne .L_8018AD98
    li 0, 0x11
    stb 3, 0x8e(1)
    stw 0, 0x98(1)
    .4byte 0x4800000C # b .L_8018ADA0
L_8018AD98:
    li 0, 0x0
    stb 0, 0x8e(1)
L_8018ADA0:
    .4byte 0xC022B148 # lfs f1, lbl_8053E0E8@sda21(r0)
    li 0, 0x0
    lfs 0, 0x280(31)
    addi 5, 1, 0x2c
    stb 0, 0xc(1)
    addi 6, 1, 0x8
    fmuls 0, 1, 0
    lwz 4, 0x4(31)
    stb 0, 0xd(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fctiwz 0, 0
    stb 0, 0xe(1)
    .4byte 0xC022B160 # lfs f1, lbl_8053E100@sda21(r0)
    stfd 0, 0xb8(1)
    lwz 0, 0xbc(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    lfs 29, 0x294(31)
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x38
    fmuls 7, 31, 28
    lis 3, lbl_804A1D24@ha
    fneg 6, 27
    lis 5, 0x4249
    fmuls 10, 30, 3
    stw 0, 0x80(1)
    fmuls 2, 26, 27
    addi 4, 3, lbl_804A1D24@l
    fmuls 9, 30, 28
    addi 3, 5, 0x4750
    fmuls 1, 26, 28
    fmuls 0, 26, 3
    fmuls 8, 31, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 28, 10
    fmuls 3, 26, 31
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 30, 31
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x38(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x48(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x58(1)
    fmuls 0, 29, 0
    stfs 5, 0x3c(1)
    stfs 4, 0x4c(1)
    stfs 3, 0x5c(1)
    stfs 2, 0x40(1)
    stfs 1, 0x50(1)
    stfs 0, 0x60(1)
    lwz 5, 0x270(31)
    lwz 0, 0x264(31)
    add 0, 5, 0
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    mr 4, 3
    .4byte 0xC042B164 # lfs f2, lbl_8053E104@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x68
    li 6, -0x1
    bl fn_801EFD34
    lwz 0, 0x268(31)
    cmpwi 0, 0x2
    .4byte 0x408200A0 # bne .L_8018AFB4
    lis 3, lbl_804A1D24@ha
    lis 5, 0x4249
    addi 3, 3, lbl_804A1D24@l
    lwz 4, 0xe8(3)
    addi 3, 5, 0x4750
    bl fn_804032E8
    .4byte 0xC022B128 # lfs f1, lbl_8053E0C8@sda21(r0)
    li 5, 0x1
    li 0, 0x0
    mr 4, 3
    fmr 3, 1
    stb 5, 0x8e(1)
    .4byte 0xC042B164 # lfs f2, lbl_8053E104@sda21(r0)
    mr 3, 31
    stb 5, 0x85(1)
    addi 5, 1, 0x68
    stb 0, 0x84(1)
    li 6, -0x1
    bl fn_801EFD34
    .4byte 0x48000050 # b .L_8018AFB4
L_8018AF68:
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_8018AFB4
    .4byte 0x800D840C # lwz r0, lbl_80539FCC@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4180003C # blt .L_8018AFB4
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    lis 3, lbl_804674DC@ha
    stb 6, 0x85(1)
    addi 4, 3, lbl_804674DC@l
    fmr 2, 1
    mr 3, 31
    stb 5, 0x84(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    lwz 5, 0x264(31)
    li 9, 0x0
    addi 5, 5, 0x1b1
    bl fn_801F02BC
L_8018AFB4:
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    psq_l 29, 0x108(1), 0, 0
    lfd 29, 0x100(1)
    psq_l 28, 0xf8(1), 0, 0
    lfd 28, 0xf0(1)
    psq_l 27, 0xe8(1), 0, 0
    lfd 27, 0xe0(1)
    psq_l 26, 0xd8(1), 0, 0
    lfd 26, 0xd0(1)
    lwz 31, 0xcc(1)
    lwz 0, 0x134(1)
    lwz 30, 0xc8(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

