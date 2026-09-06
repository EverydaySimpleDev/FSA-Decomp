# fn_802EB314 - TKRA: main per-frame update() (0x5F4)
# Gates on the active-player bitmask (lbl_8053AAF8), queries a per-actor
# state via fn_802308E0(this->0x240); reuses the player-validity family
# (fn_8023DE58 x8, fn_8023E724), the "KMRI"-style FourCC dispatch
# (fn_801F9484 x8), and the boss-defeat/despawn notifier (fn_80138A30 x3,
# from GOMA) - suggests a multi-player "ceremony" sequence gated on all 4
# players. Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D184
etb_8000D184:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_8000D184, 8

.section extabindex, "a"
.balign 4
.global eti_8001C378
eti_8001C378:
    .4byte fn_802EB314
    .4byte 0x000005F4
    .4byte etb_8000D184
.size eti_8001C378, 12

.text
.balign 4
.global fn_802EB314

fn_802EB314:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 29, 3
    li 26, 0x0
    li 27, 0x0
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802EB36C
    lwz 3, 0x240(29)
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_802EB388
    li 27, 0x1
    .4byte 0x48000020 # b .L_802EB388
L_802EB36C:
    bl fn_8023077C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802EB388
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    li 27, 0x1
L_802EB388:
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    .4byte 0x40820550 # bne .L_802EB8E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820100 # bne .L_802EB4A0
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x118(4)
    lwz 7, 0x11c(4)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_802EB3C4
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_802EB3CC
L_802EB3C4:
    li 0, 0x0
    .4byte 0x48000054 # b .L_802EB41C
L_802EB3CC:
    cmpwi 7, 0x0
    .4byte 0x4180000C # blt .L_802EB3DC
    cmpwi 7, 0x3
    .4byte 0x4081000C # ble .L_802EB3E4
L_802EB3DC:
    li 0, 0x0
    .4byte 0x4800003C # b .L_802EB41C
L_802EB3E4:
    lis 4, lbl_8050EC80@ha
    slwi 5, 0, 2
    addi 4, 4, lbl_8050EC80@l
    li 6, 0x1
    lwz 0, 0x10(4)
    add 5, 7, 5
    slw 5, 6, 5
    mulli 0, 0, 0xc8
    add 4, 4, 0
    lwz 0, 0x28(4)
    and 4, 5, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
L_802EB41C:
    cmpwi 0, 0x0
    .4byte 0x41820080 # beq .L_802EB4A0
    lwz 0, 0x234(29)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_802EB438
    cmpwi 0, 0x2f
    .4byte 0x4082006C # bne .L_802EB4A0
L_802EB438:
    bl fn_80138A30
    mr 30, 3
    bl SpatialRegistry_GetBase
    subi 4, 30, 0x1
    bl fn_801F6058
    lwz 0, 0x240(29)
    cmpw 0, 3
    .4byte 0x4082004C # bne .L_802EB4A0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 26, 0x14
    bl fn_80138A30
    cmpwi 3, 0x3
    .4byte 0x4082000C # bne .L_802EB474
    li 26, 0x1e
    .4byte 0x48000018 # b .L_802EB488
L_802EB474:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x4
    .4byte 0x40820008 # bne .L_802EB488
    li 26, 0x32
L_802EB488:
    li 3, 0x64
    bl fn_801CD664
    cmpw 3, 26
    .4byte 0x4181000C # bgt .L_802EB4A0
    li 0, 0x20
    stw 0, 0x234(29)
L_802EB4A0:
    .4byte 0xC3C2E410 # lfs f30, lbl_805413B0@sda21(r0)
    li 30, 0x0
    .4byte 0xC3E2E414 # lfs f31, lbl_805413B4@sda21(r0)
    li 31, 0x0
L_802EB4B0:
    mr 3, 30
    bl fn_8023E724
    psq_l 3, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    psq_st 3, 0x2c(1), 0, 0
    lfs 1, 0x2c(1)
    lfs 0, 0x30(1)
    fadds 1, 30, 1
    psq_st 3, 0x20(1), 0, 0
    fsubs 0, 0, 31
    stfs 2, 0x28(1)
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
    stfs 2, 0x28(1)
    lwz 28, 0x234(29)
    stfs 2, 0x34(1)
    cmpwi 28, 0x30
    .4byte 0x41800200 # blt .L_802EB6F4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820168 # bne .L_802EB66C
    mr 3, 30
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200B0 # bne .L_802EB5C8
    mr 3, 30
    bl fn_8022F3DC
    lwz 0, 0x248(29)
    cmpw 0, 3
    .4byte 0x408202A0 # bne .L_802EB7CC
    lwz 0, 0x240(29)
    cmpw 30, 0
    .4byte 0x40820048 # bne .L_802EB580
    slwi 3, 0, 26
    lwz 0, 0x234(29)
    add 27, 31, 3
    mr 3, 30
    add 27, 0, 27
    bl fn_8023DE58
    mr 28, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 28
    mr 7, 27
    addi 6, 1, 0x20
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000250 # b .L_802EB7CC
L_802EB580:
    slwi 3, 0, 26
    lwz 0, 0x234(29)
    add 4, 31, 3
    mr 3, 30
    addis 28, 4, 0x1000
    add 28, 0, 28
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 27
    mr 7, 28
    addi 6, 1, 0x20
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000208 # b .L_802EB7CC
L_802EB5C8:
    lwz 0, 0x248(29)
    cmpw 30, 0
    .4byte 0x408201FC # bne .L_802EB7CC
    lwz 0, 0x240(29)
    cmpw 30, 0
    .4byte 0x40820048 # bne .L_802EB624
    slwi 3, 0, 26
    lwz 0, 0x234(29)
    add 28, 31, 3
    mr 3, 30
    add 28, 0, 28
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 27
    mr 7, 28
    addi 6, 1, 0x20
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480001AC # b .L_802EB7CC
L_802EB624:
    slwi 3, 0, 26
    lwz 0, 0x234(29)
    add 4, 31, 3
    mr 3, 30
    addis 28, 4, 0x1000
    add 28, 0, 28
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 27
    mr 7, 28
    addi 6, 1, 0x20
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000164 # b .L_802EB7CC
L_802EB66C:
    lwz 26, 0x240(29)
    cmpw 30, 26
    .4byte 0x40820040 # bne .L_802EB6B4
    mr 3, 30
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    slwi 0, 26, 26
    lis 4, 0x494d
    add 7, 31, 0
    mr 5, 27
    addi 4, 4, 0x5550
    addi 6, 1, 0x20
    add 7, 28, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800011C # b .L_802EB7CC
L_802EB6B4:
    mr 3, 30
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    slwi 0, 26, 26
    lis 6, 0x494d
    add 4, 31, 0
    mr 5, 27
    addis 7, 4, 0x1000
    addi 4, 6, 0x5550
    addi 6, 1, 0x20
    li 8, -0x1
    add 7, 28, 7
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000DC # b .L_802EB7CC
L_802EB6F4:
    mr 3, 30
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082006C # bne .L_802EB770
    mr 3, 30
    bl fn_8022F3DC
    lwz 0, 0x248(29)
    cmpw 0, 3
    .4byte 0x40820058 # bne .L_802EB770
    lwz 0, 0x240(29)
    cmpw 30, 0
    .4byte 0x408200A8 # bne .L_802EB7CC
    slwi 3, 0, 26
    lwz 0, 0x234(29)
    add 4, 31, 3
    mr 3, 30
    addis 28, 4, 0x80
    add 28, 0, 28
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 27
    mr 7, 28
    addi 6, 1, 0x20
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000060 # b .L_802EB7CC
L_802EB770:
    lwz 0, 0x248(29)
    cmpw 30, 0
    .4byte 0x40820054 # bne .L_802EB7CC
    lwz 0, 0x240(29)
    cmpw 30, 0
    .4byte 0x40820048 # bne .L_802EB7CC
    slwi 3, 0, 26
    lwz 0, 0x234(29)
    add 4, 31, 3
    mr 3, 30
    addis 28, 4, 0x80
    add 28, 0, 28
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 27
    mr 7, 28
    addi 6, 1, 0x20
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802EB7CC:
    addi 30, 30, 0x1
    addis 31, 31, 0x100
    cmpwi 30, 0x4
    .4byte 0x4180FCD8 # blt .L_802EB4B0
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x408200F8 # bne .L_802EB8DC
    lis 4, 0x2
    lwz 3, 0x240(29)
    addi 4, 4, 0x13
    bl fn_80230FD0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0x25c
    lwz 6, 0x4(29)
    li 5, 0x0
    li 7, 0x10
    bl fn_802A3948
    bl GetRoomConfigRecord
    lwz 0, 0x23c(29)
    lwz 4, 0x4(29)
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820018 # beq .L_802EB844
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
L_802EB844:
    .4byte 0xC042E418 # lfs f2, lbl_805413B8@sda21(r0)
    addi 4, 1, 0x14
    lfs 0, 0x260(29)
    li 5, 0xd0
    lfs 1, 0x25c(29)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002E41C # lfs f0, lbl_805413BC@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E410 # lfs f1, lbl_805413B0@sda21(r0)
    stfs 0, 0x1c(1)
    li 7, 0x0
    stfs 2, 0x14(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x18(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
    .4byte 0xC042E418 # lfs f2, lbl_805413B8@sda21(r0)
    addi 4, 1, 0x8
    lfs 0, 0x260(29)
    li 5, 0xd1
    lfs 1, 0x25c(29)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002E41C # lfs f0, lbl_805413BC@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022E410 # lfs f1, lbl_805413B0@sda21(r0)
    stfs 0, 0x10(1)
    li 7, 0x1
    stfs 2, 0x8(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0xc(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
L_802EB8DC:
    li 26, 0x1
L_802EB8E0:
    mr 3, 26
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

