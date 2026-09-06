# TENN cluster, part 7/9 (Track A byte-match + overview - 0x17D8=6104B,
# the largest piece of this actor). update() state handler #3. Uses
# the confirmed full-teardown fn_800EC240, boss-defeat notifier
# fn_80138B7C (from GOMA), handle-resolve fn_8013C824, effect spawn
# fn_8013CC50, the SPECIALIZED reward-spawn dispatcher fn_801F8544
# (confirmed via GOLD/ALCE), the generic FourCC actor dispatcher
# fn_801F9484, fn_801EEC98/fn_801F0D20/fn_801F0E34/fn_801F666C/
# fn_801F6884/fn_801F68E0/fn_801F71A4/SpatialRegistry_GetBase, player-validity
# fn_8023DE58/fn_8023E724, sound fn_80458508/fn_80458FF0, plus an
# extensive set of unfamiliar helpers (fn_8022AF2C/8022AF44/8022C5EC/
# 8022F3DC/8022FD8C/8022FE80/8022FEB8/802300EC/80230498/80230534/
# 8023061C/802308E0/80230C6C/80230FD0/80239914/80309D6C/8030AAF4/
# 8030C210/8037EFB4/8038470C/80384C58/803865B8/80388CAC/8038938C/
# 8038AD24) not chased further given the function's size.
.section extab, "a"
.balign 4
.global etb_8000796C
etb_8000796C:
    .4byte 0x408A0000
    .4byte 0x00000000
.size etb_8000796C, 8

.section extabindex, "a"
.balign 4
.global eti_800147A0
eti_800147A0:
    .4byte fn_801A17B8
    .4byte 0x000017D8
    .4byte etb_8000796C
.size eti_800147A0, 12

.text
.balign 4
.global fn_801A17B8

fn_801A17B8:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stmw 24, 0xb0(1)
    mr 31, 3
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    psq_l 2, 0xc(31), 0, 0
    addi 3, 31, 0x33c
    lfs 4, 0x14(31)
    lfs 0, 0xc(31)
    psq_st 2, 0x94(1), 0, 0
    .4byte 0xC042B5A8 # lfs f2, lbl_8053E548@sda21(r0)
    stfs 0, 0x88(1)
    .4byte 0xC062B55C # lfs f3, lbl_8053E4FC@sda21(r0)
    lfs 0, 0x10(31)
    stfs 4, 0x9c(1)
    stfs 0, 0x8c(1)
    lfs 0, 0x14(31)
    stfs 0, 0x90(1)
    bl fn_801F71A4
    lfs 1, 0x330(31)
    addi 3, 31, 0x324
    .4byte 0xC042B5C0 # lfs f2, lbl_8053E560@sda21(r0)
    .4byte 0xC062B5C4 # lfs f3, lbl_8053E564@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x334(31)
    addi 3, 31, 0x328
    .4byte 0xC042B5C0 # lfs f2, lbl_8053E560@sda21(r0)
    .4byte 0xC062B5C4 # lfs f3, lbl_8053E564@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x230(31)
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_801A1854
    cmpwi 0, 0xc
    .4byte 0x40820274 # bne .L_801A1AC4
L_801A1854:
    li 27, 0x0
    mr 28, 31
L_801A185C:
    lwz 3, 0x27c(28)
    cmpwi 3, 0x0
    .4byte 0x41800250 # blt .L_801A1AB4
    lwz 0, 0x2ac(28)
    cmpwi 0, 0x0
    .4byte 0x41820244 # beq .L_801A1AB4
    lwz 0, 0x29c(28)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_801A18CC
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820228 # bne .L_801A1AB4
    li 29, 0x1
    mr 25, 31
    stw 29, 0x29c(28)
    li 26, 0x0
L_801A18A0:
    mr 3, 26
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820010 # bne .L_801A18BC
    stw 26, 0x27c(25)
    stw 29, 0x2ac(25)
    stw 29, 0x29c(25)
L_801A18BC:
    addi 26, 26, 0x1
    addi 25, 25, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFD8 # blt .L_801A18A0
L_801A18CC:
    lwz 30, 0x27c(28)
    cmpwi 30, 0x0
    .4byte 0x418000FC # blt .L_801A19D0
    slwi 0, 30, 2
    li 29, 0x3c
    add 24, 31, 0
    lwz 0, 0x344(24)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_801A1938
    lwz 25, 0x4(31)
    mr 3, 30
    bl fn_8023E724
    .4byte 0xC022B5A4 # lfs f1, lbl_8053E544@sda21(r0)
    mr 4, 3
    mr 3, 25
    li 5, 0x565
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x344(24)
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x2a
    bl fn_80230FD0
L_801A1938:
    lwz 4, 0x2ac(24)
    lis 3, 0x2aab
    subi 3, 3, 0x5555
    addi 5, 30, 0x2bc
    addi 0, 4, 0x1
    stw 0, 0x2ac(24)
    lwz 0, 0x2ac(24)
    mulhw 3, 3, 0
    srwi 0, 3, 31
    add 3, 3, 0
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add 0, 0, 3
    stbx 0, 31, 5
    lbzx 0, 31, 5
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801A198C
    li 29, 0x3e
    .4byte 0x48000020 # b .L_801A19A8
L_801A198C:
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A199C
    li 29, 0x3d
    .4byte 0x48000010 # b .L_801A19A8
L_801A199C:
    cmplwi 0, 0x2
    .4byte 0x40820008 # bne .L_801A19A8
    li 29, 0x3f
L_801A19A8:
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    mr 3, 30
    mr 5, 29
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_801A19D0:
    lwz 3, 0x27c(28)
    li 4, 0xf
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801A19F0
    lwz 3, 0x2ac(28)
    addi 0, 3, 0x5
    stw 0, 0x2ac(28)
L_801A19F0:
    lwz 3, 0x27c(28)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x300
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801A1A1C
    lwz 3, 0x2ac(28)
    addi 0, 3, 0x5
    stw 0, 0x2ac(28)
L_801A1A1C:
    lwz 0, 0x2ac(28)
    cmpwi 0, 0x168
    .4byte 0x41800090 # blt .L_801A1AB4
    mr 25, 31
    li 26, 0x0
    li 30, 0x0
    li 29, -0x1
L_801A1A38:
    mr 3, 26
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820028 # bne .L_801A1A6C
    lwz 0, 0x344(25)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801A1A68
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x344(25)
    bl fn_800EC240
    stw 30, 0x344(25)
L_801A1A68:
    stw 29, 0x27c(25)
L_801A1A6C:
    addi 26, 26, 0x1
    addi 25, 25, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFC0 # blt .L_801A1A38
    lwz 0, 0x344(28)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801A1AA0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x344(28)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x344(28)
L_801A1AA0:
    lwz 3, 0x27c(28)
    li 4, 0x0
    bl fn_8023061C
    li 0, -0x1
    stw 0, 0x27c(28)
L_801A1AB4:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FD9C # blt .L_801A185C
L_801A1AC4:
    psq_l 3, 0xc(31), 0, 0
    addi 3, 1, 0x6c
    lfs 5, 0x14(31)
    lfs 1, 0x60(31)
    lfs 2, 0x98(1)
    stfs 1, 0x6c(1)
    .4byte 0xC002B5C8 # lfs f0, lbl_8053E568@sda21(r0)
    lfs 4, 0x64(31)
    fsubs 0, 2, 0
    psq_st 3, 0x7c(1), 0, 0
    stfs 4, 0x70(1)
    lfs 2, 0x68(31)
    stfs 0, 0x98(1)
    stfs 2, 0x74(1)
    lfs 3, 0x6c(31)
    stfs 5, 0x84(1)
    stfs 3, 0x78(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x6c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x74(1)
    fadds 0, 3, 2
    stfs 1, 0x70(1)
    stfs 0, 0x78(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x70(31)
    addi 4, 31, 0xc
    lwz 0, 0x74(31)
    stw 3, 0x6c(1)
    stw 0, 0x70(1)
    lfs 3, 0x6c(1)
    lwz 3, 0x78(31)
    lwz 0, 0x7c(31)
    lfs 2, 0x70(1)
    stw 3, 0x74(1)
    stw 0, 0x78(1)
    lfs 1, 0x74(1)
    lfs 4, 0xc(31)
    lfs 0, 0x78(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x6c(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x74(1)
    fadds 0, 0, 3
    stfs 2, 0x70(1)
    stfs 0, 0x78(1)
    lwz 0, 0x230(31)
    cmplwi 0, 0xd
    .4byte 0x418112D8 # bgt .L_801A2E78
    lis 3, jumptable_804A2C48@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A2C48@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408212B4 # bne .L_801A2E78
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    stw 3, 0x2c0(31)
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x28
    addi 7, 1, 0x2c
    li 5, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x28(1)
    cmpwi 0, 0x0
    .4byte 0x41801270 # blt .L_801A2E78
    lfs 1, 0x2c(1)
    .4byte 0xC002B5C8 # lfs f0, lbl_8053E568@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41811260 # bgt .L_801A2E78
    lwz 4, 0x4(31)
    addi 3, 1, 0x6c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x278(31)
    lwz 3, 0x278(31)
    cmpwi 3, 0x0
    .4byte 0x41801230 # blt .L_801A2E78
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41821224 # beq .L_801A2E78
    lbz 0, 0x270(31)
    li 4, 0x352
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_801A1C6C
    li 4, 0x371
L_801A1C6C:
    lwz 5, 0x198(31)
    addi 7, 1, 0x54
    lwz 6, 0x4(31)
    li 8, 0x100
    psq_l 1, 0x94(1), 0, 0
    lfs 0, 0x9c(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x5c(1)
    lwz 3, 0x278(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418211E0 # beq .L_801A2E78
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480011D4 # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A1CEC
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x7c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x80(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x84(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A1CEC:
    lwz 3, 0x278(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x278(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41821168 # beq .L_801A2E78
    lwz 3, 0x278(31)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x4182002C # beq .L_801A1D4C
    .4byte 0x40801154 # bge .L_801A2E78
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_801A1D34
    .4byte 0x48001148 # b .L_801A2E78
L_801A1D34:
    lwz 3, 0x278(31)
    li 4, 0x354
    bl fn_8038470C
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48001130 # b .L_801A2E78
L_801A1D4C:
    lwz 3, 0x278(31)
    li 4, 0x353
    bl fn_8038470C
    li 0, 0xd
    stw 0, 0x230(31)
    .4byte 0x48001118 # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A1DA8
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x7c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x80(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x84(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A1DA8:
    lwz 3, 0x278(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x278(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418210A8 # beq .L_801A2E78
    li 3, 0x0
    bl fn_80230534
    li 0, 0xe10
    mr 3, 31
    stw 0, 0x2c4(31)
    li 4, 0x3a
    bl fn_801F0D20
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x7
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    bl fn_8022AF44
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48001064 # b .L_801A2E78
    li 0, 0x0
    .4byte 0x900D9000 # stw r0, lbl_8053ABC0@sda21(r0)
    .4byte 0x980D9004 # stb r0, lbl_8053ABC4@sda21(r0)
    bl SpatialRegistry_GetBase
    lis 4, 0x5445
    lwz 5, 0x4(31)
    addi 4, 4, 0x4e4e
    addi 6, 1, 0x88
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x320(31)
    lwz 24, 0x320(31)
    cmpwi 24, 0x0
    .4byte 0x41801024 # blt .L_801A2E78
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41821010 # beq .L_801A2E78
    lwz 0, 0x198(31)
    lis 4, 0x19
    li 6, 0xc8
    .4byte 0xC002B55C # lfs f0, lbl_8053E4FC@sda21(r0)
    stw 0, 0x320(3)
    addi 5, 4, 0x660d
    .4byte 0xC042B5CC # lfs f2, lbl_8053E56C@sda21(r0)
    li 4, 0x0
    lwz 7, 0x268(31)
    li 0, 0x5
    stw 7, 0x264(3)
    stw 6, 0x23c(31)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(6)
    mullw 3, 3, 5
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 3, 0xa4(1)
    stw 3, 0x250(31)
    stw 4, 0x254(31)
    stw 4, 0x258(31)
    stw 0, 0x230(31)
    .4byte 0x48000F8C # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x318(31)
    lwz 4, 0x254(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 4, 0x2c8(3)
    lwz 0, 0x318(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x2c8(3)
    cmpwi 0, 0x3e7
    .4byte 0x4081000C # ble .L_801A1F30
    li 0, 0x3e7
    stw 0, 0x2c8(3)
L_801A1F30:
    lwz 3, 0x2c4(31)
    subi 0, 3, 0x1
    stw 0, 0x2c4(31)
    lwz 0, 0x2c4(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801A1F50
    li 0, 0x0
    stw 0, 0x2c4(31)
L_801A1F50:
    lis 3, 0x8889
    lwz 5, 0x2c4(31)
    subi 0, 3, 0x7777
    mulhw 0, 0, 5
    add 3, 0, 5
    srawi 0, 3, 5
    srwi 4, 0, 31
    add 0, 0, 4
    cmpwi 0, 0xb
    .4byte 0x4181003C # bgt .L_801A1FB0
    srawi 0, 3, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 0, 0, 5
    .4byte 0x40820024 # bne .L_801A1FB0
    cmpwi 5, 0x3c
    .4byte 0x4081001C # ble .L_801A1FB0
    mr 3, 31
    li 4, 0x3f
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80458508
L_801A1FB0:
    lwz 3, 0x318(31)
    lwz 0, 0x31c(31)
    slwi 3, 3, 2
    add 3, 31, 3
    lwz 3, 0x2c8(3)
    cmpw 3, 0
    .4byte 0x40810008 # ble .L_801A1FD0
    stw 3, 0x31c(31)
L_801A1FD0:
    lwz 0, 0x2c4(31)
    cmpwi 0, 0x0
    .4byte 0x40820094 # bne .L_801A206C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x41810010 # bgt .L_801A1FF4
    .4byte 0x800D9000 # lwz r0, lbl_8053ABC0@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x408200B4 # bne .L_801A20A4
L_801A1FF4:
    mr 3, 31
    li 4, 0x3b
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458508
    lwz 24, 0x320(31)
    cmpwi 24, 0x0
    .4byte 0x41800020 # blt .L_801A2034
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801A2034
    li 0, 0x0
    stw 0, 0x108(3)
L_801A2034:
    li 3, 0x0
    li 0, 0x32
    stw 3, 0x24c(31)
    stw 0, 0x250(31)
    .4byte 0x880D9005 # lbz r0, lbl_8053ABC5@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A2058
    li 0, 0x78
    stw 0, 0x250(31)
L_801A2058:
    li 3, -0x1
    li 0, 0x6
    stw 3, 0x2c4(31)
    stw 0, 0x230(31)
    .4byte 0x48000E10 # b .L_801A2E78
L_801A206C:
    .4byte 0x800D9000 # lwz r0, lbl_8053ABC0@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_801A20A4
    lwz 3, 0x318(31)
    addi 0, 3, 0x1
    stw 0, 0x318(31)
    lwz 0, 0x318(31)
    cmpwi 0, 0x14
    .4byte 0x4180000C # blt .L_801A2098
    li 0, 0x13
    stw 0, 0x318(31)
L_801A2098:
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000DD8 # b .L_801A2E78
L_801A20A4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820174 # beq .L_801A2220
    cmpwi 0, 0x1
    .4byte 0x40820DC4 # bne .L_801A2E78
    lwz 24, 0x320(31)
    cmpwi 24, 0x0
    .4byte 0x418000F4 # blt .L_801A21B4
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    mr. 26, 3
    .4byte 0x418200E0 # beq .L_801A21B4
    lwz 0, 0x264(26)
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    cmpwi 0, 0x4
    stfs 0, 0x38(1)
    stfs 0, 0x34(1)
    stfs 0, 0x30(1)
    .4byte 0x4180000C # blt .L_801A20FC
    lwz 0, 0x268(31)
    stw 0, 0x264(26)
L_801A20FC:
    lwz 3, 0x254(31)
    lis 0, 0x4330
    stw 0, 0xa0(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842B570 # lfd f2, lbl_8053E510@sda21(r0)
    stw 0, 0xa4(1)
    .4byte 0xC062B5D0 # lfs f3, lbl_8053E570@sda21(r0)
    lfd 0, 0xa0(1)
    .4byte 0xC022B558 # lfs f1, lbl_8053E4F8@sda21(r0)
    fsubs 2, 0, 2
    .4byte 0xC002B5D4 # lfs f0, lbl_8053E574@sda21(r0)
    fmadds 1, 3, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0xD02D8538 # stfs f1, lbl_8053A0F8@sda21(r0)
    .4byte 0x40810008 # ble .L_801A213C
    .4byte 0xD00D8538 # stfs f0, lbl_8053A0F8@sda21(r0)
L_801A213C:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x91
    li 5, 0x0
    bl fn_801F0E34
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 9, 0x264(26)
    addi 5, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC06D8538 # lfs f3, lbl_8053A0F8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 2, 0x38(1)
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fmuls 1, 3, 1
    fmuls 0, 3, 0
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    psq_l 0, 0x30(1), 0, 0
    psq_st 0, 0x3c(26), 0, 0
    stfs 2, 0x44(26)
L_801A21B4:
    .4byte 0xC002B5D8 # lfs f0, lbl_8053E578@sda21(r0)
    li 3, 0x1
    li 0, 0x0
    .4byte 0xC042B5DC # lfs f2, lbl_8053E57C@sda21(r0)
    stfs 0, 0x33c(31)
    .4byte 0xC022B5E0 # lfs f1, lbl_8053E580@sda21(r0)
    stw 3, 0x24c(31)
    .4byte 0xC002B5E4 # lfs f0, lbl_8053E584@sda21(r0)
    stw 0, 0x248(31)
    stw 0, 0x238(31)
    stfs 2, 0x324(31)
    stfs 1, 0x328(31)
    stfs 0, 0x32c(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x41820C88 # beq .L_801A2E78
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x324(31)
    li 5, 0x12c
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000C5C # b .L_801A2E78
L_801A2220:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082012C # bne .L_801A2354
    lwz 24, 0x320(31)
    cmpwi 24, 0x0
    .4byte 0x41800C44 # blt .L_801A2E78
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820C30 # beq .L_801A2E78
    lfs 2, 0xc(3)
    lfs 1, 0x10(3)
    fsubs 3, 2, 2
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fmadds 4, 3, 3, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801A22B8
    frsqrte 1, 4
    .4byte 0xC862B580 # lfd f3, lbl_8053E520@sda21(r0)
    .4byte 0xC842B588 # lfd f2, lbl_8053E528@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801A233C
L_801A22B8:
    .4byte 0xC802B590 # lfd f0, lbl_8053E530@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801A22D0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801A233C
L_801A22D0:
    stfs 4, 0x24(1)
    lis 0, 0x7f80
    lwz 4, 0x24(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801A22F8
    .4byte 0x40800040 # bge .L_801A2328
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801A2310
    .4byte 0x48000034 # b .L_801A2328
L_801A22F8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A2308
    li 0, 0x1
    .4byte 0x48000028 # b .L_801A232C
L_801A2308:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801A232C
L_801A2310:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A2320
    li 0, 0x5
    .4byte 0x48000010 # b .L_801A232C
L_801A2320:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801A232C
L_801A2328:
    li 0, 0x4
L_801A232C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A233C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801A233C:
    .4byte 0xC002B5E8 # lfs f0, lbl_8053E588@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40810B34 # ble .L_801A2E78
    li 0, 0x1
    .4byte 0x980D9004 # stb r0, lbl_8053ABC4@sda21(r0)
    .4byte 0x48000B28 # b .L_801A2E78
L_801A2354:
    li 0, 0x0
    .4byte 0x980D9004 # stb r0, lbl_8053ABC4@sda21(r0)
    lwz 0, 0x2c0(31)
    cmpwi 0, 0x1
    .4byte 0x40820044 # bne .L_801A23A8
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x3e7
    .4byte 0x4180000C # blt .L_801A2388
    li 0, 0x3e7
    stw 0, 0x254(31)
L_801A2388:
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x3e7
    .4byte 0x4180000C # blt .L_801A23A8
    li 0, 0x3e7
    stw 0, 0x26c(31)
L_801A23A8:
    lwz 0, 0x254(31)
    cmpwi 0, 0x3e7
    .4byte 0x40800010 # bge .L_801A23C0
    lwz 0, 0x26c(31)
    cmpwi 0, 0x3e7
    .4byte 0x41800030 # blt .L_801A23EC
L_801A23C0:
    lwz 24, 0x320(31)
    cmpwi 24, 0x0
    .4byte 0x41800024 # blt .L_801A23EC
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801A23EC
    li 0, 0x0
    stw 0, 0x108(3)
    stw 0, 0x2c4(31)
L_801A23EC:
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x258(31)
    li 0, 0x2
    mr 3, 31
    addi 4, 4, 0x80
    stw 0, 0x23c(31)
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x254(31)
    cmpwi 3, 0xa
    .4byte 0x40800014 # bge .L_801A242C
    lwz 0, 0x250(31)
    xori 0, 0, 0x1
    stw 0, 0x250(31)
    .4byte 0x48000A50 # b .L_801A2E78
L_801A242C:
    clrlwi. 0, 3, 29
    .4byte 0x40820010 # bne .L_801A2440
    extrwi 0, 3, 1, 30
    stw 0, 0x250(31)
    .4byte 0x48000A3C # b .L_801A2E78
L_801A2440:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002B55C # lfs f0, lbl_8053E4FC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B5CC # lfs f2, lbl_8053E56C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    stw 0, 0x250(31)
    .4byte 0x480009E4 # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x250(31)
    subi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x418109C0 # bgt .L_801A2E78
    li 0, 0x0
    stw 0, 0x250(31)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x418209A8 # beq .L_801A2E78
    li 24, 0x0
L_801A24D8:
    mr 3, 24
    bl fn_80230C6C
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FFF0 # blt .L_801A24D8
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x48000984 # b .L_801A2E78
    li 3, 0x0
    bl fn_8023DE58
    lwz 5, 0x198(31)
    mr 4, 3
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x40820954 # bne .L_801A2E78
    lwz 5, 0x198(31)
    addi 7, 1, 0x48
    lwz 6, 0x4(31)
    li 3, 0x0
    psq_l 1, 0x94(1), 0, 0
    li 4, 0x356
    lfs 0, 0x9c(1)
    li 8, 0x102
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x50(1)
    bl fn_8038AD24
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    .4byte 0x48000914 # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    li 3, 0x0
    bl fn_8023DE58
    lwz 5, 0x198(31)
    mr 4, 3
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418208D8 # beq .L_801A2E78
    li 0, 0x0
    stw 0, 0x250(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    bl fn_8022AF2C
    lwz 4, 0x26c(31)
    cmpwi 4, 0x0
    .4byte 0x40820014 # bne .L_801A25D4
    li 3, 0x0
    li 4, 0x35b
    bl fn_8038470C
    .4byte 0x48000080 # b .L_801A2650
L_801A25D4:
    li 3, 0x0
    bl fn_8038938C
    lis 3, lbl_8050EC80@ha
    lwz 5, 0x26c(31)
    addi 26, 3, lbl_8050EC80@l
    lwz 3, 0x10(26)
    clrlwi 0, 5, 16
    mulli 3, 3, 0xc8
    add 4, 26, 3
    lhz 3, 0x34(4)
    cmplw 3, 0
    .4byte 0x40800018 # bge .L_801A2618
    sth 5, 0x34(4)
    li 3, 0x0
    li 4, 0x357
    bl fn_8038470C
    .4byte 0x48000010 # b .L_801A2624
L_801A2618:
    li 3, 0x0
    li 4, 0x358
    bl fn_8038470C
L_801A2624:
    lwz 0, 0x10(26)
    lis 3, lbl_8050EC80@ha
    lwz 5, 0x31c(31)
    addi 3, 3, lbl_8050EC80@l
    mulli 4, 0, 0xc8
    clrlwi 0, 5, 16
    add 4, 3, 4
    lhz 3, 0x36(4)
    cmplw 3, 0
    .4byte 0x40800008 # bge .L_801A2650
    sth 5, 0x36(4)
L_801A2650:
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x258(31)
    stw 3, 0x25c(31)
    stw 0, 0x230(31)
    .4byte 0x48000814 # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    li 3, 0x0
    bl fn_8023DE58
    lwz 5, 0x198(31)
    mr 4, 3
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418207D8 # beq .L_801A2E78
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x418207C4 # beq .L_801A2E78
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_801A26E0
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x270(31)
    stw 0, 0x230(31)
    .4byte 0x4800079C # b .L_801A2E78
L_801A26E0:
    lwz 0, 0x31c(31)
    mulli 0, 0, 0xa
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x1f4
    .4byte 0x4081000C # ble .L_801A2700
    li 0, 0x1f4
    stw 0, 0x25c(31)
L_801A2700:
    li 0, 0x2
    mr 5, 31
    li 3, -0x1
    li 7, -0x1
    li 8, 0x0
    li 4, -0x1
    mtctr 0
L_801A271C:
    lwz 6, 0x28c(5)
    cmpwi 6, 0x0
    .4byte 0x40810044 # ble .L_801A2768
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_801A2748
    cmpwi 6, 0x0
    .4byte 0x41820014 # beq .L_801A2748
    stw 8, 0x27c(5)
    mr 3, 6
    mr 7, 8
    .4byte 0x48000024 # b .L_801A2768
L_801A2748:
    cmpw 3, 6
    .4byte 0x4080001C # bge .L_801A2768
    slwi 3, 7, 2
    stw 8, 0x27c(5)
    addi 0, 3, 0x27c
    mr 3, 6
    stwx 4, 31, 0
    mr 7, 8
L_801A2768:
    lwz 6, 0x290(5)
    addi 8, 8, 0x1
    cmpwi 6, 0x0
    .4byte 0x40810044 # ble .L_801A27B8
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_801A2798
    cmpwi 6, 0x0
    .4byte 0x41820014 # beq .L_801A2798
    stw 8, 0x280(5)
    mr 3, 6
    mr 7, 8
    .4byte 0x48000024 # b .L_801A27B8
L_801A2798:
    cmpw 3, 6
    .4byte 0x4080001C # bge .L_801A27B8
    slwi 3, 7, 2
    stw 8, 0x280(5)
    addi 0, 3, 0x27c
    mr 3, 6
    stwx 4, 31, 0
    mr 7, 8
L_801A27B8:
    addi 5, 5, 0x8
    addi 8, 8, 0x1
    .4byte 0x4200FF5C # bdnz .L_801A271C
    lwz 0, 0x28c(31)
    li 4, 0x0
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_801A27E8
    cmpw 7, 4
    .4byte 0x41820010 # beq .L_801A27E8
    cmpw 3, 0
    .4byte 0x40820008 # bne .L_801A27E8
    stw 4, 0x27c(31)
L_801A27E8:
    lwz 0, 0x290(31)
    li 4, 0x1
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_801A280C
    cmpw 7, 4
    .4byte 0x41820010 # beq .L_801A280C
    cmpw 3, 0
    .4byte 0x40820008 # bne .L_801A280C
    stw 4, 0x280(31)
L_801A280C:
    lwz 0, 0x294(31)
    li 4, 0x2
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_801A2830
    cmpw 7, 4
    .4byte 0x41820010 # beq .L_801A2830
    cmpw 3, 0
    .4byte 0x40820008 # bne .L_801A2830
    stw 4, 0x284(31)
L_801A2830:
    lwz 0, 0x298(31)
    li 4, 0x3
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_801A2854
    cmpw 7, 4
    .4byte 0x41820010 # beq .L_801A2854
    cmpw 3, 0
    .4byte 0x40820008 # bne .L_801A2854
    stw 4, 0x288(31)
L_801A2854:
    cmpwi 7, 0x0
    .4byte 0x408000A8 # bge .L_801A2900
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x258(31)
    mr 3, 31
    addi 4, 4, 0x4d
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    lis 4, 0x5445
    lwz 5, 0x4(31)
    addi 4, 4, 0x4e4e
    addi 6, 1, 0x88
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x320(31)
    lwz 24, 0x320(31)
    cmpwi 24, 0x0
    .4byte 0x41800118 # blt .L_801A29C0
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820104 # beq .L_801A29C0
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x24c(31)
    li 0, 0x4
    .4byte 0xC002B5D8 # lfs f0, lbl_8053E578@sda21(r0)
    stw 4, 0x248(31)
    .4byte 0xC042B5DC # lfs f2, lbl_8053E57C@sda21(r0)
    stw 4, 0x238(31)
    .4byte 0xC022B5E0 # lfs f1, lbl_8053E580@sda21(r0)
    stfs 0, 0x33c(31)
    .4byte 0xC002B5E4 # lfs f0, lbl_8053E584@sda21(r0)
    stfs 2, 0x324(31)
    stfs 1, 0x328(31)
    stfs 0, 0x32c(31)
    stw 0, 0x264(3)
    .4byte 0x480000C4 # b .L_801A29C0
L_801A2900:
    mr 25, 31
    li 27, 0x0
    li 26, 0x0
L_801A290C:
    lwz 0, 0x27c(25)
    cmpwi 0, 0x0
    .4byte 0x41800098 # blt .L_801A29AC
    bl SpatialRegistry_GetBase
    lis 4, 0x5445
    lwz 5, 0x4(31)
    addi 4, 4, 0x4e4e
    addi 6, 1, 0x88
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x320(31)
    lwz 24, 0x320(31)
    cmpwi 24, 0x0
    .4byte 0x41800064 # blt .L_801A29AC
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_801A29AC
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x24c(31)
    addi 0, 26, 0x27c
    .4byte 0xC002B5D8 # lfs f0, lbl_8053E578@sda21(r0)
    stw 4, 0x248(31)
    .4byte 0xC042B5DC # lfs f2, lbl_8053E57C@sda21(r0)
    stw 4, 0x238(31)
    .4byte 0xC022B5E0 # lfs f1, lbl_8053E580@sda21(r0)
    stfs 0, 0x33c(31)
    .4byte 0xC002B5E4 # lfs f0, lbl_8053E584@sda21(r0)
    stfs 2, 0x324(31)
    stfs 1, 0x328(31)
    stfs 0, 0x32c(31)
    stw 27, 0x264(3)
    lwz 4, 0x198(31)
    stw 4, 0x320(3)
    lwz 4, 0x27c(25)
    stwx 4, 3, 0
L_801A29AC:
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    cmpwi 27, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FF50 # blt .L_801A290C
L_801A29C0:
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x480004B0 # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820094 # bne .L_801A2A74
    lwz 0, 0x27c(31)
    li 26, 0x0
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_801A2A08
    lwz 0, 0x2ac(31)
    li 26, 0x1
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A2A08
    li 26, 0x0
L_801A2A08:
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_801A2A28
    lwz 0, 0x2b0(31)
    addi 26, 26, 0x1
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A2A28
    subi 26, 26, 0x1
L_801A2A28:
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_801A2A48
    lwz 0, 0x2b4(31)
    addi 26, 26, 0x1
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A2A48
    subi 26, 26, 0x1
L_801A2A48:
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_801A2A68
    lwz 0, 0x2b8(31)
    addi 26, 26, 0x1
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A2A68
    subi 26, 26, 0x1
L_801A2A68:
    cmpwi 26, 0x0
    .4byte 0x4082040C # bne .L_801A2E78
    .4byte 0x48000070 # b .L_801A2AE0
L_801A2A74:
    lfs 1, 0xc(31)
    lis 4, 0x4
    .4byte 0xC002B560 # lfs f0, lbl_8053E500@sda21(r0)
    li 0, 0x50
    stfs 1, 0x88(1)
    mr 3, 31
    addi 4, 4, 0xe
    li 5, 0x0
    lfs 1, 0x10(31)
    stfs 1, 0x8c(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x90(1)
    stfs 0, 0x8c(1)
    stw 0, 0x23c(31)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x88
    .4byte 0xC022B5EC # lfs f1, lbl_8053E58C@sda21(r0)
    li 5, 0x565
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x344(31)
L_801A2AE0:
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lwz 0, 0x26c(31)
    li 26, 0x0
    mulli 27, 0, 0x28
    cmpwi 27, 0x270f
    .4byte 0x40810008 # ble .L_801A2B00
    li 27, 0x270f
L_801A2B00:
    lis 4, 0x19
    lis 3, lbl_804A2BD0@ha
    .4byte 0xC3E2B5F0 # lfs f31, lbl_8053E590@sda21(r0)
    addi 29, 4, 0x660d
    .4byte 0xC3C2B55C # lfs f30, lbl_8053E4FC@sda21(r0)
    addi 30, 3, lbl_804A2BD0@l
    .4byte 0x48000160 # b .L_801A2C78
L_801A2B1C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 29
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 0, 0x18(1)
    fsubs 0, 0, 30
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 24, 0xa4(1)
    slwi 0, 24, 2
    lwzx 0, 30, 0
    cmpw 27, 0
    .4byte 0x4180010C # blt .L_801A2C74
    subf 27, 0, 27
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    oris 7, 24, 0x22
    bl fn_801F8544
    mr. 25, 3
    .4byte 0x418000E4 # blt .L_801A2C74
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200D0 # beq .L_801A2C74
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC062B55C # lfs f3, lbl_8053E4FC@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC082B57C # lfs f4, lbl_8053E51C@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC042B558 # lfs f2, lbl_8053E4F8@sda21(r0)
    .4byte 0xC022B578 # lfs f1, lbl_8053E518@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 0, 0, 3
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fnmsubs 0, 4, 0, 2
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x60(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 0, 0, 3
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fnmsubs 0, 2, 0, 4
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 0, 0x64(1)
    stw 0, 0xc(1)
    psq_l 2, 0x60(1), 0, 0
    lfs 0, 0xc(1)
    psq_st 2, 0x3c(3), 0, 0
    fsubs 0, 0, 3
    fmadds 0, 1, 0, 1
    stfs 0, 0x68(1)
    stfs 0, 0x44(3)
L_801A2C74:
    addi 26, 26, 0x1
L_801A2C78:
    cmpwi 27, 0x0
    .4byte 0x4081000C # ble .L_801A2C88
    cmpwi 26, 0xc8
    .4byte 0x4180FE98 # blt .L_801A2B1C
L_801A2C88:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x480001CC # b .L_801A2E78
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820040 # beq .L_801A2CF8
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A2CF8
    lwz 0, 0x344(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_801A2CF8
    bl fn_8013C824
    slwi 0, 26, 2
    lwz 3, 0xc(3)
    add 4, 31, 0
    lwz 4, 0x344(4)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x344(31)
    stw 0, 0x258(31)
L_801A2CF8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x6c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x278(31)
    lwz 3, 0x278(31)
    cmpwi 3, 0x0
    .4byte 0x41800154 # blt .L_801A2E78
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820148 # beq .L_801A2E78
    lwz 5, 0x198(31)
    addi 7, 1, 0x3c
    lwz 6, 0x4(31)
    li 4, 0x35c
    psq_l 1, 0x94(1), 0, 0
    li 8, 0x100
    lfs 0, 0x9c(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x44(1)
    lwz 3, 0x278(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820114 # beq .L_801A2E78
    li 0, 0xc
    stw 0, 0x230(31)
    .4byte 0x48000108 # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A2DB8
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x7c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x80(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x84(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A2DB8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x6c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x278(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_801A2E78
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x4800008C # b .L_801A2E78
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A2E34
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x7c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x80(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x84(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A2E34:
    lwz 4, 0x4(31)
    addi 3, 1, 0x6c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x278(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801A2E78
    li 3, 0x0
    bl fn_80230534
    li 3, 0x0
    li 0, 0x64
    stw 3, 0x230(31)
    stw 0, 0x244(31)
L_801A2E78:
    lwz 0, 0x238(31)
    lwz 4, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_801A2F1C
    lwz 3, 0x98(31)
    cmpwi 4, 0x1
    lwz 0, 0x248(31)
    slwi 3, 3, 2
    add 0, 3, 0
    .4byte 0x4182002C # beq .L_801A2EC8
    .4byte 0x40800044 # bge .L_801A2EE4
    cmpwi 4, 0x0
    .4byte 0x40800008 # bge .L_801A2EB0
    .4byte 0x48000038 # b .L_801A2EE4
L_801A2EB0:
    lis 3, lbl_804A2B90@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804A2B90@l
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    .4byte 0x48000020 # b .L_801A2EE4
L_801A2EC8:
    li 4, 0x3
    li 3, 0x0
    stw 4, 0x264(31)
    li 0, 0xa
    stw 3, 0x24c(31)
    stw 0, 0x238(31)
    stw 4, 0x248(31)
L_801A2EE4:
    lwz 0, 0x248(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_801A2EFC
    li 0, 0xc
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_801A2F04
L_801A2EFC:
    li 0, 0xa
    stw 0, 0x238(31)
L_801A2F04:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 30
    stw 0, 0x248(31)
L_801A2F1C:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A2F30
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801A2F30:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A2F44
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_801A2F44:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A2F58
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_801A2F58:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A2F6C
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_801A2F6C:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    lmw 24, 0xb0(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

