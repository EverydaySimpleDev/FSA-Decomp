# fn_802F0330 - SWDL: main per-frame update()/draw() driver (0x1184, largest
# function landed in this whole gap effort)
# Heavily reuses fn_80230498 (28 calls - by far the most-repeated single
# callee of any function landed this gap), the player-validity family
# (fn_8023DE58 x8, fn_8023E724 x14 - suggesting a per-player multi-actor
# sequence), effect spawns (fn_8013CC50 x8), per-room config
# (GetRoomConfigRecord x7), plus a wide spread of once-called helpers
# (fn_80119468/80119DD0 animation, fn_80134D14 x4, fn_80136798,
# fn_8013CB44, Glwp_GetAmbientEffectGroupByte, fn_801EE434, fn_80230534/8023077C/80230F44/
# 80230FD0/80236228/80236554/80236ED8/80237810, ConfigRecord_SetInstallSettingsByte/802D9FF4/
# 802DE7CC, fn_8030C210, fn_80388EEC/8038BD08, fn_8043D67C, fn_8045873C).
# Track A: byte-match verified, structural overview per the
# large/complex-function exception - the extreme player-validity call
# density suggests a scripted multi-player set-piece, plausibly a "sword
# duel" sequence per the FourCC.
.section extab, "a"
.balign 4
.global etb_8000D2D4
etb_8000D2D4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000D2D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C558
eti_8001C558:
    .4byte fn_802F0330
    .4byte 0x00001184
    .4byte etb_8000D2D4
.size eti_8001C558, 12

.text
.balign 4
.global fn_802F0330

fn_802F0330:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 27, 0x4c(1)
    mr 28, 3
    lis 3, lbl_8046F628@ha
    addi 31, 3, lbl_8046F628@l
    lwz 0, 0x244(28)
    cmpwi 0, 0x1
    .4byte 0x41800040 # blt .L_802F0394
    li 27, 0x0
    addi 29, 1, 0x3c
L_802F0360:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 1, 0x0(29), 0, 0
    stfs 0, 0x44(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFD0 # blt .L_802F0360
L_802F0394:
    lwz 0, 0x244(28)
    cmplwi 0, 0x10
    .4byte 0x418110D4 # bgt .L_802F1470
    lis 3, jumptable_804AA5E4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AA5E4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 30, 0x0
    li 27, 0x0
    li 29, 0x1
L_802F03C4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 29, 27
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802F03F8
    mr 3, 27
    bl fn_80236228
    add 30, 30, 3
L_802F03F8:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_802F03C4
    cmpwi 30, 0x7d0
    .4byte 0x41801068 # blt .L_802F1470
    bl fn_8023077C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40821058 # bne .L_802F1470
    li 27, 0x0
    addi 29, 1, 0x3c
L_802F0424:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 27
    li 5, 0x2e
    li 6, 0xff
    psq_st 1, 0x0(29), 0, 0
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x44(1)
    bl fn_80230498
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC0 # blt .L_802F0424
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(28)
    li 4, 0x2
    stw 0, 0x250(28)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134D14
    bl Glwp_GetAmbientEffectGroupByte
    clrlwi 0, 3, 24
    lis 3, 0x8889
    stw 0, 0x258(28)
    subi 3, 3, 0x7777
    lwz 0, 0x258(28)
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 4
    srwi 3, 0, 31
    add 0, 0, 3
    stw 0, 0x254(28)
    lwz 0, 0x254(28)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802F04C8
    li 0, 0x1
    stw 0, 0x254(28)
L_802F04C8:
    lwz 0, 0x258(28)
    lis 3, 0x5
    li 5, 0x1
    addi 4, 1, 0x8
    stw 0, 0x25c(28)
    addi 0, 3, 0x76
    stw 5, 0x244(28)
    stw 0, 0x8(1)
    lwz 3, 0x230(28)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_8045873C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820F5C # bne .L_802F1470
    lbz 0, 0x83(3)
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820F4C # bne .L_802F1470
    li 3, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800F3C # blt .L_802F1470
    li 0, 0x1
    stw 0, 0x264(28)
    stw 0, 0x268(28)
    stw 0, 0x26c(28)
    stw 0, 0x270(28)
    .4byte 0x48000F24 # b .L_802F1470
    lwz 3, 0x254(28)
    lwz 0, 0x25c(28)
    subf 0, 3, 0
    stw 0, 0x25c(28)
    lwz 0, 0x25c(28)
    cmpwi 0, 0x0
    .4byte 0x41810020 # bgt .L_802F0588
    li 0, 0x0
    stw 0, 0x25c(28)
    lwz 0, 0x24c(28)
    cmpwi 0, 0x8
    .4byte 0x4082000C # bne .L_802F0588
    li 0, 0x2
    stw 0, 0x244(28)
L_802F0588:
    lwz 0, 0x25c(28)
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    subfic 0, 0, 0xff
    stb 0, 0x5c(3)
    lwz 3, 0x250(28)
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x40820EC4 # bne .L_802F1470
    lwz 4, 0x24c(28)
    addi 3, 31, 0x0
    addi 29, 1, 0x3c
    li 27, 0x0
    addi 0, 4, 0x1
    stw 0, 0x24c(28)
    lwz 0, 0x24c(28)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x250(28)
L_802F05D8:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x0(29), 0, 0
    stfs 0, 0x44(1)
    lwz 5, 0x24c(28)
    cmpwi 5, 0x6
    .4byte 0x40800028 # bge .L_802F0620
    mr 3, 27
    mr 4, 29
    addi 5, 5, 0x2e
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000168 # b .L_802F0784
L_802F0620:
    cmpwi 5, 0x8
    .4byte 0x40820140 # bne .L_802F0764
    mr 3, 27
    mr 4, 29
    li 5, 0x3b9
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 3, 0x4(28)
    addi 4, 1, 0x3c
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 5, 0x277
    li 6, 0x2
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 1, 0x3c
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 5, 0x278
    li 6, 0x2
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 1, 0x3c
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 5, 0x279
    li 6, 0x2
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 1, 0x3c
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 5, 0x27a
    li 6, 0x2
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 1, 0x3c
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 5, 0x27b
    li 6, 0x2
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 1, 0x3c
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 5, 0x27c
    li 6, 0x2
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 1, 0x3c
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 5, 0x27d
    li 6, 0x2
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000024 # b .L_802F0784
L_802F0764:
    mr 3, 27
    mr 4, 29
    addi 5, 5, 0x3ba
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802F0784:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FE4C # blt .L_802F05D8
    .4byte 0x48000CE0 # b .L_802F1470
    lwz 3, 0x250(28)
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x40820CC8 # bne .L_802F1470
    li 3, 0x3
    li 0, 0x64
    stw 3, 0x244(28)
    stw 0, 0x250(28)
    .4byte 0x48000CB4 # b .L_802F1470
    lwz 3, 0x250(28)
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802F07E4
    li 0, 0x4
    stw 0, 0x250(28)
    stw 0, 0x244(28)
L_802F07E4:
    li 29, 0x0
    mr 27, 28
L_802F07EC:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 29
    psq_st 1, 0x3c(1), 0, 0
    stfs 0, 0x44(1)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180005C # blt .L_802F086C
    lwz 3, 0x250(28)
    lwz 0, 0x264(27)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_802F0848
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3ba
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000048 # b .L_802F088C
L_802F0848:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bb
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_802F088C
L_802F086C:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3ba
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802F088C:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF54 # blt .L_802F07EC
    .4byte 0x48000BD4 # b .L_802F1470
    lwz 3, 0x250(28)
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_802F08C8
    li 3, 0x64
    li 0, 0x5
    stw 3, 0x250(28)
    stw 0, 0x244(28)
L_802F08C8:
    li 29, 0x0
    mr 27, 28
L_802F08D0:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 29
    psq_st 1, 0x3c(1), 0, 0
    stfs 0, 0x44(1)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180005C # blt .L_802F0950
    lwz 3, 0x250(28)
    lwz 0, 0x264(27)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_802F092C
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bc
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000048 # b .L_802F0970
L_802F092C:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bd
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_802F0970
L_802F0950:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bc
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802F0970:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF54 # blt .L_802F08D0
    .4byte 0x48000AF0 # b .L_802F1470
    lwz 3, 0x250(28)
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_802F09AC
    li 3, 0x6
    li 0, 0x3c
    stw 3, 0x244(28)
    stw 0, 0x250(28)
L_802F09AC:
    li 29, 0x0
    mr 27, 28
L_802F09B4:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 29
    psq_st 1, 0x3c(1), 0, 0
    stfs 0, 0x44(1)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180005C # blt .L_802F0A34
    lwz 3, 0x250(28)
    lwz 0, 0x264(27)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_802F0A10
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000048 # b .L_802F0A54
L_802F0A10:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bf
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_802F0A54
L_802F0A34:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802F0A54:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF54 # blt .L_802F09B4
    lwz 0, 0x250(28)
    cmpwi 0, 0x5a
    .4byte 0x40820A04 # bne .L_802F1470
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x23f
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    lis 4, 0x100
    li 3, 0x0
    addi 4, 4, 0x2d
    bl fn_80230F44
    mr 27, 28
    addi 29, 1, 0x3c
    li 30, 0x0
L_802F0AA0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 30
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802F0AD8
    mr 3, 30
    li 4, 0x2
    bl fn_80236ED8
L_802F0AD8:
    mr 3, 30
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    li 5, 0x26a
    .4byte 0xC022E498 # lfs f1, lbl_80541438@sda21(r0)
    li 6, 0x1
    psq_st 2, 0x0(29), 0, 0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x44(1)
    li 10, 0x1
    lwz 3, 0x4(28)
    bl fn_8013CC50
    addi 30, 30, 0x1
    stw 3, 0x234(27)
    cmpwi 30, 0x4
    addi 27, 27, 0x4
    .4byte 0x4180FF78 # blt .L_802F0AA0
    .4byte 0x48000944 # b .L_802F1470
    lwz 3, 0x250(28)
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_802F0BB0
    li 0, 0x7
    li 27, 0x0
    stw 0, 0x244(28)
    li 0, 0x2
    addi 29, 1, 0x3c
    stw 27, 0x24c(28)
    stw 0, 0x250(28)
    sth 27, 0x260(28)
L_802F0B68:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 27
    li 5, 0xdb
    li 6, 0xff
    psq_st 1, 0x0(29), 0, 0
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x44(1)
    bl fn_80230498
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC0 # blt .L_802F0B68
    .4byte 0x480008C4 # b .L_802F1470
L_802F0BB0:
    li 29, 0x0
    mr 27, 28
L_802F0BB8:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 29
    psq_st 1, 0x3c(1), 0, 0
    stfs 0, 0x44(1)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180005C # blt .L_802F0C38
    lwz 3, 0x250(28)
    lwz 0, 0x264(27)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_802F0C14
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000048 # b .L_802F0C58
L_802F0C14:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bf
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_802F0C58
L_802F0C38:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802F0C58:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF54 # blt .L_802F0BB8
    .4byte 0x48000808 # b .L_802F1470
    lwz 3, 0x250(28)
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x408207F0 # bne .L_802F1470
    lha 3, 0x260(28)
    mr 30, 28
    li 29, 0x0
    addi 0, 3, 0x1000
    sth 0, 0x260(28)
L_802F0C98:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x30(1), 0, 0
    stfs 0, 0x38(1)
    lwz 0, 0x24c(28)
    cmpwi 0, 0xb
    .4byte 0x408000AC # bge .L_802F0D64
    lwz 0, 0x234(30)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_802F0D30
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 4, 1, 0x24
    lfs 0, 0x8(3)
    lis 3, lbl_8052EBC0@ha
    addi 8, 3, lbl_8052EBC0@l
    .4byte 0xC082E49C # lfs f4, lbl_8054143C@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    li 5, 0x1
    li 6, 0x3
    li 7, 0x1
    stfs 0, 0x2c(1)
    lfs 2, 0x24(1)
    lha 0, 0x260(28)
    lfs 0, 0x28(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 8, 0
    lfsx 1, 8, 0
    lfs 3, 0x4(3)
    fmadds 0, 4, 1, 0
    fmadds 1, 4, 3, 2
    stfs 0, 0x28(1)
    stfs 1, 0x24(1)
    lwz 3, 0x234(30)
    bl fn_8013CB44
L_802F0D30:
    lwz 0, 0x24c(28)
    addi 5, 31, 0x24
    mr 3, 29
    addi 4, 1, 0x30
    slwi 0, 0, 2
    li 6, 0xff
    lwzx 5, 5, 0
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    addi 5, 5, 0xdb
    bl fn_80230498
    .4byte 0x48000124 # b .L_802F0E84
L_802F0D64:
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180007C # blt .L_802F0DEC
    lwz 3, 0x250(28)
    lwz 0, 0x264(30)
    and. 0, 3, 0
    .4byte 0x41820038 # beq .L_802F0DB8
    lwz 0, 0x24c(28)
    addi 5, 31, 0x24
    mr 3, 29
    addi 4, 1, 0x30
    slwi 0, 0, 2
    li 6, 0xff
    lwzx 5, 5, 0
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    addi 5, 5, 0x3b9
    bl fn_80230498
    .4byte 0x48000068 # b .L_802F0E1C
L_802F0DB8:
    lwz 0, 0x24c(28)
    addi 5, 31, 0x24
    mr 3, 29
    addi 4, 1, 0x30
    slwi 0, 0, 2
    li 6, 0xff
    lwzx 5, 5, 0
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    addi 5, 5, 0x3ba
    bl fn_80230498
    .4byte 0x48000034 # b .L_802F0E1C
L_802F0DEC:
    lwz 0, 0x24c(28)
    addi 5, 31, 0x24
    mr 3, 29
    addi 4, 1, 0x30
    slwi 0, 0, 2
    li 6, 0xff
    lwzx 5, 5, 0
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    addi 5, 5, 0x3b9
    bl fn_80230498
L_802F0E1C:
    lwz 0, 0x24c(28)
    cmpwi 0, 0xb
    .4byte 0x40820060 # bne .L_802F0E84
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_802F0E40
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x234(30)
L_802F0E40:
    lis 4, 0x1
    mr 3, 29
    addi 4, 4, 0x1
    bl fn_80230FD0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 29
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_802F0E84
    mr 3, 29
    bl fn_80237810
    mr 4, 3
    mr 3, 29
    li 5, 0x0
    bl fn_80236554
L_802F0E84:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FE08 # blt .L_802F0C98
    lwz 3, 0x24c(28)
    li 0, 0x2
    addi 3, 3, 0x1
    stw 3, 0x24c(28)
    stw 0, 0x250(28)
    lwz 0, 0x24c(28)
    cmpwi 0, 0xe
    .4byte 0x418005C0 # blt .L_802F1470
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f9(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_802F0EDC
    li 3, 0xa
    li 0, 0x1
    stw 3, 0x244(28)
    stw 0, 0x250(28)
    .4byte 0x48000598 # b .L_802F1470
L_802F0EDC:
    li 3, 0x8
    li 0, 0x1
    stw 3, 0x244(28)
    stw 0, 0x250(28)
    .4byte 0x48000584 # b .L_802F1470
    lwz 3, 0x250(28)
    cmpwi 3, 0x0
    .4byte 0x40820110 # bne .L_802F1008
    lwz 3, 0x25c(28)
    lwz 0, 0x254(28)
    add 0, 3, 0
    stw 0, 0x25c(28)
    lwz 0, 0x25c(28)
    lwz 3, 0x258(28)
    cmpw 0, 3
    .4byte 0x418000DC # blt .L_802F0FF4
    stw 3, 0x25c(28)
    bl fn_802DE7CC
    clrlwi. 0, 3, 24
    .4byte 0x418200B8 # beq .L_802F0FE0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    lwz 6, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_802F0F4C
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_802F0F54
L_802F0F4C:
    li 0, 0x0
    .4byte 0x48000054 # b .L_802F0FA4
L_802F0F54:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_802F0F64
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_802F0F6C
L_802F0F64:
    li 0, 0x0
    .4byte 0x4800003C # b .L_802F0FA4
L_802F0F6C:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802F0FA4:
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_802F0FE0
    lwz 5, 0x4(28)
    addi 6, 1, 0x18
    psq_l 1, 0xc(28), 0, 0
    li 3, 0x0
    lfs 0, 0x14(28)
    li 4, 0x265
    li 7, 0x21
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x20(1)
    bl fn_8038BD08
    li 0, 0xf
    stw 0, 0x244(28)
    .4byte 0x4800000C # b .L_802F0FE8
L_802F0FE0:
    li 0, 0x9
    stw 0, 0x244(28)
L_802F0FE8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134D14
L_802F0FF4:
    lwz 0, 0x25c(28)
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    subfic 0, 0, 0xff
    stb 0, 0x5c(3)
    .4byte 0x4800000C # b .L_802F1010
L_802F1008:
    subi 0, 3, 0x1
    stw 0, 0x250(28)
L_802F1010:
    li 27, 0x0
    addi 29, 1, 0x3c
L_802F1018:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 27
    li 5, 0x3be
    li 6, 0xff
    psq_st 1, 0x0(29), 0, 0
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x44(1)
    bl fn_80230498
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC0 # blt .L_802F1018
    .4byte 0x48000414 # b .L_802F1470
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802F1084
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x11c(28)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_8045873C
L_802F1084:
    li 29, 0x0
    mr 27, 28
L_802F108C:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 29
    psq_st 1, 0x3c(1), 0, 0
    stfs 0, 0x44(1)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180005C # blt .L_802F110C
    lwz 3, 0x250(28)
    lwz 0, 0x264(27)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_802F10E8
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000048 # b .L_802F112C
L_802F10E8:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bf
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_802F112C
L_802F110C:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802F112C:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF54 # blt .L_802F108C
    .4byte 0x48000334 # b .L_802F1470
    lwz 3, 0x250(28)
    cmpwi 3, 0x0
    .4byte 0x40820110 # bne .L_802F1258
    lwz 3, 0x25c(28)
    lwz 0, 0x254(28)
    add 0, 3, 0
    stw 0, 0x25c(28)
    lwz 0, 0x25c(28)
    lwz 3, 0x258(28)
    cmpw 0, 3
    .4byte 0x418000DC # blt .L_802F1244
    stw 3, 0x25c(28)
    bl fn_802DE7CC
    clrlwi. 0, 3, 24
    .4byte 0x418200B8 # beq .L_802F1230
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    lwz 6, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_802F119C
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_802F11A4
L_802F119C:
    li 0, 0x0
    .4byte 0x48000054 # b .L_802F11F4
L_802F11A4:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_802F11B4
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_802F11BC
L_802F11B4:
    li 0, 0x0
    .4byte 0x4800003C # b .L_802F11F4
L_802F11BC:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802F11F4:
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_802F1230
    lwz 5, 0x4(28)
    addi 6, 1, 0xc
    psq_l 1, 0xc(28), 0, 0
    li 3, 0x0
    lfs 0, 0x14(28)
    li 4, 0x265
    li 7, 0x21
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038BD08
    li 0, 0x10
    stw 0, 0x244(28)
    .4byte 0x4800000C # b .L_802F1238
L_802F1230:
    li 0, 0xb
    stw 0, 0x244(28)
L_802F1238:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134D14
L_802F1244:
    lwz 0, 0x25c(28)
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    subfic 0, 0, 0xff
    stb 0, 0x5c(3)
    .4byte 0x4800000C # b .L_802F1260
L_802F1258:
    subi 0, 3, 0x1
    stw 0, 0x250(28)
L_802F1260:
    li 29, 0x0
    mr 27, 28
L_802F1268:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 29
    psq_st 1, 0x3c(1), 0, 0
    stfs 0, 0x44(1)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180005C # blt .L_802F12E8
    lwz 3, 0x250(28)
    lwz 0, 0x264(27)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_802F12C4
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000048 # b .L_802F1308
L_802F12C4:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3bf
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_802F1308
L_802F12E8:
    mr 3, 29
    addi 4, 1, 0x3c
    li 5, 0x3be
    li 6, 0xff
    li 7, 0x2
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802F1308:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF54 # blt .L_802F1268
    .4byte 0x48000158 # b .L_802F1470
    li 3, 0xc
    li 0, 0x1
    stw 3, 0x244(28)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x4800013C # b .L_802F1470
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x214(3)
    cmplwi 0, 0x1
    .4byte 0x41820118 # beq .L_802F1470
    bl fn_80119DD0
    li 4, 0x0
    li 5, 0x1
    bl fn_80119468
    li 3, 0x5
    li 0, 0xd
    stw 3, 0x250(28)
    stw 0, 0x244(28)
    .4byte 0x480000F4 # b .L_802F1470
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    li 4, 0x0
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134D14
    bl GetRoomConfigRecord
    lwz 29, 0x8(3)
    bl GetRoomConfigRecord
    lwz 4, 0x4(3)
    slwi 0, 29, 2
    addi 3, 31, 0xdc
    slwi 4, 4, 4
    add 0, 4, 0
    lwzx 30, 3, 0
    bl GetRoomConfigRecord
    lwz 27, 0x8(3)
    bl GetRoomConfigRecord
    mr 29, 3
    bl GetRoomConfigRecord
    lwz 6, 0x4(29)
    slwi 0, 27, 2
    addi 4, 31, 0x5c
    mr 5, 30
    slwi 6, 6, 4
    add 0, 6, 0
    lwzx 4, 4, 0
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xd
    li 5, 0x0
    bl fn_80136798
    bl GetRoomConfigRecord
    li 4, 0x3
    bl ConfigRecord_SetInstallSettingsByte
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_8045873C
    li 0, 0xe
    stw 0, 0x244(28)
    .4byte 0x4800004C # b .L_802F1470
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x48000038 # b .L_802F1470
    li 3, 0x0
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802F1470
    li 0, 0x9
    stw 0, 0x244(28)
    .4byte 0x4800001C # b .L_802F1470
    li 3, 0x0
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802F1470
    li 0, 0xb
    stw 0, 0x244(28)
L_802F1470:
    lwz 0, 0x244(28)
    cmpwi 0, 0x1
    .4byte 0x41800028 # blt .L_802F14A0
    cmpwi 0, 0xa
    .4byte 0x41810020 # bgt .L_802F14A0
    lwz 0, 0x25c(28)
    clrlwi 3, 0, 24
    bl fn_80128C58
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x25c(28)
    lwz 3, 0x2c(3)
    stb 0, 0xe(3)
L_802F14A0:
    lmw 27, 0x4c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

