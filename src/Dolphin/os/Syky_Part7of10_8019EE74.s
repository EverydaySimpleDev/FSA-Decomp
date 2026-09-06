# SYKY cluster, part 7/10 (Track A byte-match + overview - 1336B).
# update() state handler #2 - uses fn_801F0D20, fn_801F71A4,
# SpatialRegistry_GetBase, the confirmed generic FourCC actor dispatcher
# fn_801F9484, plus unfamiliar Saya_ForceState4/fn_8023AE34/fn_8043D874.
.section extab, "a"
.balign 4
.global etb_80007914
etb_80007914:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_80007914, 8

.section extabindex, "a"
.balign 4
.global eti_8001471C
eti_8001471C:
    .4byte fn_8019EE74
    .4byte 0x00000538
    .4byte etb_80007914
.size eti_8001471C, 12

.text
.balign 4
.global fn_8019EE74

fn_8019EE74:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    stw 28, 0x60(1)
    mr 30, 3
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    lfs 1, 0x60(3)
    addi 3, 30, 0x3c
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    stfs 1, 0x34(1)
    lfs 6, 0x64(30)
    stfs 6, 0x38(1)
    lfs 4, 0x68(30)
    stfs 4, 0x3c(1)
    lfs 5, 0x6c(30)
    stfs 5, 0x40(1)
    lfs 7, 0x10(30)
    lfs 0, 0xc(30)
    stfs 0, 0x20(1)
    stfs 7, 0x24(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 4, 0
    stfs 1, 0x34(1)
    lfs 4, 0x10(30)
    fadds 1, 6, 4
    stfs 0, 0x3c(1)
    fadds 0, 5, 4
    stfs 1, 0x38(1)
    stfs 0, 0x40(1)
    lfs 1, 0x2a0(30)
    bl fn_801F71A4
    lfs 1, 0x2a4(30)
    addi 3, 30, 0x40
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 0, 0x230(30)
    cmpwi 0, 0xa
    .4byte 0x418200DC # beq .L_8019F030
    .4byte 0x40800338 # bge .L_8019F290
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_8019EF68
    .4byte 0x4800032C # b .L_8019F290
L_8019EF68:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC082B50C # lfs f4, lbl_8053E4AC@sda21(r0)
    mullw 3, 0, 4
    .4byte 0xC042B510 # lfs f2, lbl_8053E4B0@sda21(r0)
    .4byte 0xC002B4F4 # lfs f0, lbl_8053E494@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 1, 1, 3
    fmuls 1, 4, 1
    fctiwz 1, 1
    stfd 1, 0x48(1)
    lwz 3, 0x4c(1)
    addi 0, 3, 0x3c
    stw 0, 0x238(30)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 3
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 3, 0x54(1)
    addi 0, 3, 0x50
    stw 0, 0x23c(30)
    stfs 0, 0x2a0(30)
    lwz 0, 0x98(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8019F028
    .4byte 0xC002B4F8 # lfs f0, lbl_8053E498@sda21(r0)
    stfs 0, 0x2a0(30)
L_8019F028:
    li 0, 0xa
    stw 0, 0x230(30)
L_8019F030:
    li 0, 0x3
    stw 0, 0xb0(30)
    lwz 0, 0x240(30)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8019F050
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000244 # b .L_8019F290
L_8019F050:
    cmpwi 0, 0x0
    .4byte 0x40820168 # bne .L_8019F1BC
    lwz 3, 0x198(30)
    addi 4, 1, 0x34
    addi 5, 1, 0x20
    bl Saya_ForceState4
    cmpwi 3, 0x0
    .4byte 0x41820150 # beq .L_8019F1BC
    li 0, 0x7
    addi 3, 1, 0x34
    stw 0, 0xb0(30)
    addi 5, 1, 0x20
    lwz 4, 0x4(30)
    bl fn_8023AE34
    stw 3, 0x248(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x1
    .4byte 0x408200FC # bne .L_8019F190
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 5, 0x12c
    lwz 4, 0x248(30)
    li 6, 0x0
    bl fn_8043D874
    lis 3, 0x19
    .4byte 0xC3A2B508 # lfs f29, lbl_8053E4A8@sda21(r0)
    .4byte 0xC3C2B4C0 # lfs f30, lbl_8053E460@sda21(r0)
    addi 28, 3, 0x660d
    .4byte 0xC3E2B514 # lfs f31, lbl_8053E4B4@sda21(r0)
    li 31, 0x0
    lis 29, 0x5359
L_8019F0C8:
    lfs 0, 0xc(30)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stfs 0, 0x28(1)
    lfs 0, 0x10(30)
    stfs 0, 0x2c(1)
    lfs 0, 0x14(30)
    stfs 0, 0x30(1)
    lwz 0, 0xb4(4)
    mullw 3, 0, 28
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 1, 0x28(1)
    srwi 0, 0, 9
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 30
    fnmsubs 0, 29, 0, 31
    fadds 0, 1, 0
    stfs 0, 0x28(1)
    lwz 0, 0xb4(4)
    mullw 3, 0, 28
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 1, 0x2c(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 30
    fnmsubs 0, 29, 0, 31
    fadds 0, 1, 0
    stfs 0, 0x2c(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(30)
    addi 4, 29, 0x4b59
    addi 6, 1, 0x28
    li 7, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 31, 31, 0x1
    cmpwi 31, 0x14
    .4byte 0x4180FF40 # blt .L_8019F0C8
    .4byte 0x48000018 # b .L_8019F1A4
L_8019F190:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 5, 0x14
    lwz 4, 0x248(30)
    li 6, 0x0
    bl fn_8043D874
L_8019F1A4:
    li 0, 0x2
    mr 3, 30
    stw 0, 0x240(30)
    li 4, 0x4
    bl fn_801F0D20
    .4byte 0x480001BC # b .L_8019F374
L_8019F1BC:
    lwz 0, 0x268(30)
    cmpwi 0, 0x1
    .4byte 0x4082008C # bne .L_8019F250
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x41820080 # beq .L_8019F250
    cmpwi 0, 0x1
    .4byte 0x408200B8 # bne .L_8019F290
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B4C0 # lfs f1, lbl_8053E460@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B518 # lfs f0, lbl_8053E4B8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800070 # bge .L_8019F290
    lwz 0, 0x98(30)
    .4byte 0xC002B4F4 # lfs f0, lbl_8053E494@sda21(r0)
    xori 0, 0, 0x1
    stw 0, 0x98(30)
    stfs 0, 0x2a0(30)
    lwz 0, 0x98(30)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_8019F290
    .4byte 0xC002B4F8 # lfs f0, lbl_8053E498@sda21(r0)
    stfs 0, 0x2a0(30)
    .4byte 0x48000044 # b .L_8019F290
L_8019F250:
    lwz 0, 0x98(30)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8019F278
    lfs 1, 0xc(30)
    .4byte 0xC002B4EC # lfs f0, lbl_8053E48C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810028 # ble .L_8019F290
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x4800001C # b .L_8019F290
L_8019F278:
    lfs 1, 0xc(30)
    .4byte 0xC002B4F0 # lfs f0, lbl_8053E490@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8019F290
    li 0, 0x0
    stb 0, 0x11c(30)
L_8019F290:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_8019F324
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    clrlwi 0, 0, 30
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_8019F31C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002B4C0 # lfs f0, lbl_8053E460@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B50C # lfs f2, lbl_8053E4AC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 0, 3, 0x3c
    stw 0, 0x238(30)
    .4byte 0x4800000C # b .L_8019F324
L_8019F31C:
    li 0, 0x2
    stw 0, 0x238(30)
L_8019F324:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019F338
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_8019F338:
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019F34C
    subi 0, 3, 0x1
    stw 0, 0x23c(30)
L_8019F34C:
    lwz 3, 0x240(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019F360
    subi 0, 3, 0x1
    stw 0, 0x240(30)
L_8019F360:
    lwz 3, 0x244(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019F374
    subi 0, 3, 0x1
    stw 0, 0x244(30)
L_8019F374:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    lwz 0, 0xa4(1)
    lwz 28, 0x60(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

