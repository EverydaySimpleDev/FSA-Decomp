# DGT2 cluster, part 2 (Track A byte-match + overview - 0x7D8=2008B).
# update() core state machine. Uses only already-confirmed shared
# primitives: fn_8013CB44/fn_8013CC50 (effect spawn/sync), fn_801F3D94
# (knockback), fn_801F71A4 (ease), fn_801EEC98, fn_801F0E34, fn_801F2618,
# fn_801F2B7C, fn_801F305C - unlike FGN2/BPH2, DGT2's update() calls NO
# private per-actor helper family; it's fully self-contained using
# project-wide shared library functions only.
.section extab, "a"
.balign 4
.global etb_8000772C
etb_8000772C:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000772C, 8

.section extabindex, "a"
.balign 4
.global eti_800144E8
eti_800144E8:
    .4byte fn_8018F2DC
    .4byte 0x000007D8
    .4byte etb_8000772C
.size eti_800144E8, 12

.text
.balign 4
.global fn_8018F2DC

fn_8018F2DC:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    stw 28, 0x70(1)
    mr 30, 3
    lwz 3, 0x234(3)
    psq_l 0, 0xc(30), 0, 0
    li 31, 0x0
    lfs 31, 0x14(30)
    cmpwi 3, 0x0
    psq_l 2, 0x3c(30), 0, 0
    lfs 1, 0x44(30)
    psq_st 0, 0x20(1), 0, 0
    stfs 31, 0x28(1)
    psq_st 2, 0x14(1), 0, 0
    stfs 1, 0x1c(1)
    .4byte 0x4081000C # ble .L_8018F33C
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_8018F33C:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018F350
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_8018F350:
    addi 4, 30, 0x8
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018F368
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_8018F368:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018F37C
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_8018F37C:
    lwz 3, 0x23c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018F390
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_8018F390:
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8018F3A0
    .4byte 0x480006CC # b .L_8018FA68
L_8018F3A0:
    li 28, 0x0
    mr 29, 30
L_8018F3A8:
    psq_l 1, 0x288(29), 0, 0
    mr 3, 30
    lfs 0, 0x290(29)
    li 4, 0x1
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_8018F3DC
    mr 3, 30
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8018F3F4
L_8018F3DC:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    li 31, 0x1
    .4byte 0x48000014 # b .L_8018F404
L_8018F3F4:
    addi 28, 28, 0x1
    addi 29, 29, 0xc
    cmpwi 28, 0x3
    .4byte 0x4180FFA8 # blt .L_8018F3A8
L_8018F404:
    cmpwi 31, 0x0
    .4byte 0x40820208 # bne .L_8018F610
    psq_l 1, 0x20(1), 0, 0
    addi 3, 30, 0x3c
    lfs 0, 0x28(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    stfs 31, 0x14(30)
    lfs 1, 0x27c(30)
    lfs 2, 0x268(30)
    lfs 3, 0x26c(30)
    bl fn_801F71A4
    lfs 1, 0x280(30)
    addi 3, 30, 0x40
    lfs 2, 0x268(30)
    lfs 3, 0x26c(30)
    bl fn_801F71A4
    psq_l 1, 0xc(30), 0, 0
    mr 3, 30
    psq_l 0, 0x3c(30), 0, 0
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 4, 0x114(30)
    bl fn_801F2B7C
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820180 # beq .L_8018F610
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820174 # bne .L_8018F610
    lwz 3, 0x98(30)
    addi 0, 3, 0x8
    stw 0, 0x98(30)
    lwz 0, 0x98(30)
    clrlwi 0, 0, 28
    stw 0, 0x98(30)
    lwz 0, 0x264(30)
    lwz 3, 0x98(30)
    cmpw 0, 3
    .4byte 0x40820020 # bne .L_8018F4E4
    lwz 0, 0x254(30)
    slwi 0, 0, 2
    add 0, 3, 0
    stw 0, 0x98(30)
    lwz 0, 0x98(30)
    clrlwi 0, 0, 28
    stw 0, 0x98(30)
L_8018F4E4:
    lwz 0, 0x260(30)
    lis 3, 0x19
    li 4, 0x8
    .4byte 0xC022B240 # lfs f1, lbl_8053E1E0@sda21(r0)
    stw 0, 0x264(30)
    addi 0, 3, 0x660d
    .4byte 0xC002B23C # lfs f0, lbl_8053E1DC@sda21(r0)
    lwz 3, 0x98(30)
    stw 3, 0x260(30)
    lwz 3, 0x98(30)
    stw 3, 0x25c(30)
    stw 4, 0x238(30)
    stw 4, 0x23c(30)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8018F55C
    lwz 0, 0x254(30)
    mulli 0, 0, -0x1
    stw 0, 0x254(30)
L_8018F55C:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xb
    li 5, 0x0
    bl fn_801F0E34
    lwz 4, 0x98(30)
    lis 0, 0x4330
    lis 3, lbl_8052EBC0@ha
    stw 0, 0x30(1)
    xoris 4, 4, 0x8000
    .4byte 0xC842B230 # lfd f2, lbl_8053E1D0@sda21(r0)
    stw 4, 0x34(1)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC062B228 # lfs f3, lbl_8053E1C8@sda21(r0)
    lfd 0, 0x30(1)
    stw 0, 0x40(1)
    fsubs 0, 0, 2
    lfs 1, 0x278(30)
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x27c(30)
    lwz 0, 0x98(30)
    lfs 1, 0x278(30)
    xoris 0, 0, 0x8000
    stw 0, 0x44(1)
    lfd 0, 0x40(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x280(30)
    psq_l 1, 0x27c(30), 0, 0
    lfs 0, 0x284(30)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
L_8018F610:
    li 0, 0x13
    addi 4, 30, 0xd8
    li 5, 0x12
    mtctr 0
L_8018F620:
    addi 0, 5, 0x1
    psq_l 1, 0x2d0(4), 0, 0
    mulli 3, 0, 0xc
    lfs 0, 0x2d8(4)
    subi 5, 5, 0x1
    addi 3, 3, 0x2d0
    add 3, 30, 3
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    stfs 31, 0x2e4(4)
    subi 4, 4, 0xc
    .4byte 0x4200FFD4 # bdnz .L_8018F620
    stfs 31, 0x14(30)
    cmpwi 31, 0x0
    lfs 0, 0xc(30)
    stfs 0, 0x2d0(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2d4(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2d8(30)
    .4byte 0x4182006C # beq .L_8018F6DC
    .4byte 0x800D8420 # lwz r0, lbl_80539FE0@sda21(r0)
    .4byte 0x386D8420 # li r3, lbl_80539FE0@sda21
    mulli 0, 0, 0xc
    add 4, 30, 0
    lfs 0, 0x2d0(4)
    stfs 0, 0x294(30)
    lfs 0, 0x2d4(4)
    stfs 0, 0x298(30)
    lfs 0, 0x2d8(4)
    stfs 0, 0x29c(30)
    lwz 0, 0x4(3)
    mulli 0, 0, 0xc
    add 3, 30, 0
    lfs 0, 0x2d0(3)
    stfs 0, 0x2a0(30)
    lfs 0, 0x2d4(3)
    stfs 0, 0x2a4(30)
    lfs 0, 0x2d8(3)
    stfs 0, 0x2a8(30)
    lfs 0, 0x2d0(30)
    stfs 0, 0x288(30)
    lfs 0, 0x2d4(30)
    stfs 0, 0x28c(30)
    lfs 0, 0x2d8(30)
    stfs 0, 0x290(30)
    .4byte 0x48000068 # b .L_8018F740
L_8018F6DC:
    .4byte 0x800D8418 # lwz r0, lbl_80539FD8@sda21(r0)
    .4byte 0x386D8418 # li r3, lbl_80539FD8@sda21
    mulli 0, 0, 0xc
    add 4, 30, 0
    lfs 0, 0x2d0(4)
    stfs 0, 0x294(30)
    lfs 0, 0x2d4(4)
    stfs 0, 0x298(30)
    lfs 0, 0x2d8(4)
    stfs 0, 0x29c(30)
    lwz 0, 0x4(3)
    mulli 0, 0, 0xc
    add 3, 30, 0
    lfs 0, 0x2d0(3)
    stfs 0, 0x2a0(30)
    lfs 0, 0x2d4(3)
    stfs 0, 0x2a4(30)
    lfs 0, 0x2d8(3)
    stfs 0, 0x2a8(30)
    lfs 0, 0x2d0(30)
    stfs 0, 0x288(30)
    lfs 0, 0x2d4(30)
    stfs 0, 0x28c(30)
    lfs 0, 0x2d8(30)
    stfs 0, 0x290(30)
L_8018F740:
    lwz 3, 0x3c4(30)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_8018F77C
    lwz 3, 0x4(30)
    addi 4, 30, 0x294
    .4byte 0xC022B244 # lfs f1, lbl_8053E1E4@sda21(r0)
    li 5, 0x11c
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x3c4(30)
    .4byte 0x48000018 # b .L_8018F790
L_8018F77C:
    addi 4, 30, 0x294
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_8018F790:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820118 # bne .L_8018F8B0
    cmpwi 31, 0x0
    .4byte 0x40820110 # bne .L_8018F8B0
    li 0, 0x0
    lis 3, 0x19
    sth 0, 0x8(1)
    addi 0, 3, 0x660d
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    mr 3, 30
    .4byte 0xC002B240 # lfs f0, lbl_8053E1E0@sda21(r0)
    addi 5, 1, 0x8
    lwz 4, 0xb4(11)
    li 6, 0x0
    .4byte 0xC042B248 # lfs f2, lbl_8053E1E8@sda21(r0)
    li 7, 0x0
    mullw 4, 4, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(11)
    lwz 0, 0xb4(11)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 4, 0x4c(1)
    addi 0, 4, 0x1e
    stw 0, 0x23c(30)
    lwz 4, 0x198(30)
    bl fn_801EEC98
    lhz 3, 0x8(1)
    lis 0, 0x4330
    stw 0, 0x40(1)
    li 0, 0x3
    .4byte 0xC862B250 # lfd f3, lbl_8053E1F0@sda21(r0)
    li 4, 0x0
    stw 3, 0x44(1)
    .4byte 0xC022B228 # lfs f1, lbl_8053E1C8@sda21(r0)
    lfd 2, 0x40(1)
    .4byte 0xC002B238 # lfs f0, lbl_8053E1D8@sda21(r0)
    fsubs 2, 2, 3
    mtctr 0
L_8018F858:
    fsubs 2, 2, 1
    fcmpo cr0, 2, 0
    .4byte 0x4180004C # blt .L_8018F8AC
    fsubs 2, 2, 1
    addi 4, 4, 0x1
    fcmpo cr0, 2, 0
    .4byte 0x4180003C # blt .L_8018F8AC
    fsubs 2, 2, 1
    addi 4, 4, 0x1
    fcmpo cr0, 2, 0
    .4byte 0x4180002C # blt .L_8018F8AC
    fsubs 2, 2, 1
    addi 4, 4, 0x1
    fcmpo cr0, 2, 0
    .4byte 0x4180001C # blt .L_8018F8AC
    fsubs 2, 2, 1
    addi 4, 4, 0x1
    fcmpo cr0, 2, 0
    .4byte 0x4180000C # blt .L_8018F8AC
    addi 4, 4, 0x1
    .4byte 0x4200FFB0 # bdnz .L_8018F858
L_8018F8AC:
    stw 4, 0x25c(30)
L_8018F8B0:
    lwz 0, 0x25c(30)
    lwz 3, 0x98(30)
    cmpw 0, 3
    .4byte 0x41820028 # beq .L_8018F8E4
    lwz 0, 0x23c(30)
    clrlwi. 0, 0, 30
    .4byte 0x4082001C # bne .L_8018F8E4
    lwz 0, 0x254(30)
    add 0, 3, 0
    stw 0, 0x98(30)
    lwz 0, 0x98(30)
    clrlwi 0, 0, 28
    stw 0, 0x98(30)
L_8018F8E4:
    lwz 4, 0x98(30)
    lis 0, 0x4330
    stw 0, 0x48(1)
    lis 3, lbl_8052EBC0@ha
    xoris 4, 4, 0x8000
    .4byte 0xC842B230 # lfd f2, lbl_8053E1D0@sda21(r0)
    stw 4, 0x4c(1)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC082B228 # lfs f4, lbl_8053E1C8@sda21(r0)
    addi 5, 4, 0x4
    lfd 0, 0x48(1)
    stw 0, 0x38(1)
    fsubs 0, 0, 2
    lfs 1, 0x278(30)
    stw 0, 0x50(1)
    .4byte 0xC062B22C # lfs f3, lbl_8053E1CC@sda21(r0)
    fmuls 0, 4, 0
    stw 0, 0x60(1)
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 0, 0x44(1)
    clrlwi 0, 0, 16
    srawi 0, 0, 5
    slwi 0, 0, 3
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x27c(30)
    lwz 0, 0x98(30)
    lfs 0, 0x278(30)
    xoris 0, 0, 0x8000
    stw 0, 0x3c(1)
    lfd 1, 0x38(1)
    fsubs 1, 1, 2
    fmuls 1, 4, 1
    fctiwz 1, 1
    stfd 1, 0x30(1)
    lwz 0, 0x34(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 5, 0
    fmuls 0, 0, 1
    stfs 0, 0x280(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2ac(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2b0(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2b4(30)
    lwz 3, 0x98(30)
    lfs 0, 0x2ac(30)
    subi 0, 3, 0x2
    clrlwi 0, 0, 28
    xoris 0, 0, 0x8000
    stw 0, 0x54(1)
    lfd 1, 0x50(1)
    fsubs 1, 1, 2
    fmuls 1, 4, 1
    fctiwz 1, 1
    stfd 1, 0x58(1)
    lwz 0, 0x5c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    fmadds 0, 3, 1, 0
    stfs 0, 0x2ac(30)
    lfsx 1, 5, 0
    lfs 0, 0x2b0(30)
    fmadds 0, 3, 1, 0
    stfs 0, 0x2b0(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2b8(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2bc(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2c0(30)
    lwz 3, 0x98(30)
    lfs 1, 0x2b8(30)
    addi 0, 3, 0x2
    clrlwi 0, 0, 28
    xoris 0, 0, 0x8000
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 2
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x68(1)
    .4byte 0xC002B24C # lfs f0, lbl_8053E1EC@sda21(r0)
    lwz 0, 0x6c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 2, 4, 0
    fmadds 1, 3, 2, 1
    stfs 1, 0x2b8(30)
    lfsx 2, 5, 0
    lfs 1, 0x2bc(30)
    fmadds 1, 3, 2, 1
    stfs 1, 0x2bc(30)
    lfs 1, 0x270(30)
    fadds 0, 1, 0
    stfs 0, 0x270(30)
L_8018FA68:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8018FA8C
    li 0, 0x2
    .4byte 0xC002B23C # lfs f0, lbl_8053E1DC@sda21(r0)
    stw 0, 0x234(30)
    lfs 1, 0x274(30)
    fadds 0, 1, 0
    stfs 0, 0x274(30)
L_8018FA8C:
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 28, 0x70(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

