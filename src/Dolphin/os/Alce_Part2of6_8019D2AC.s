# ALCE cluster, part 2/6 (Track A byte-match + overview - 1708B).
# update() state handler #1. Uses the confirmed NAVI sway utility
# fn_801F3668, the confirmed effect spawn fn_8013CC50, the confirmed
# lookup-table accessor Warp_GetLookupTableValue (from the WARP cluster), the
# per-room config pair GetRoomConfigRecord/fn_802D79E8, and shares the private
# helper fn_8019DC5C with state handler #2. Several unfamiliar
# callees (fn_80134DE4/fn_80134FC4/fn_8013C824/fn_8013C830/
# fn_801F4694/fn_8022ADCC/fn_8022ADE4/fn_8037AE30/fn_801F0E34/
# SpatialRegistry_GetBase) not chased further.
.section extab, "a"
.balign 4
.global etb_800078B4
etb_800078B4:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_800078B4, 8

.section extabindex, "a"
.balign 4
.global eti_8001468C
eti_8001468C:
    .4byte fn_8019D2AC
    .4byte 0x000006AC
    .4byte etb_800078B4
.size eti_8001468C, 12

.text
.balign 4
.global fn_8019D2AC

fn_8019D2AC:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC002B4A0 # lfs f0, lbl_8053E440@sda21(r0)
    lis 5, lbl_804C1E30@ha
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr 29, 3
    addi 31, 5, lbl_804C1E30@l
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lfs 1, 0x10(4)
    fneg 1, 1
    stfs 1, 0x10(1)
    lfs 1, 0x20(4)
    fneg 1, 1
    stfs 0, 0x18(1)
    stfs 1, 0x14(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x5
    .4byte 0x41820274 # beq .L_8019D56C
    .4byte 0x40800014 # bge .L_8019D310
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_8019D31C
    .4byte 0x408001EC # bge .L_8019D4F4
    .4byte 0x48000638 # b .L_8019D944
L_8019D310:
    cmpwi 0, 0x7
    .4byte 0x40800630 # bge .L_8019D944
    .4byte 0x48000448 # b .L_8019D760
L_8019D31C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    bl fn_80134FC4
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x408200A0 # bne .L_8019D3D0
    lwz 0, 0x238(29)
    cmpwi 0, 0x3
    .4byte 0x41820090 # beq .L_8019D3CC
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x73
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x74
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x75
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
L_8019D3CC:
    bl fn_8022ADE4
L_8019D3D0:
    lwz 3, 0x25c(29)
    addi 0, 3, 0x1
    stw 0, 0x25c(29)
    lwz 0, 0x25c(29)
    cmpwi 0, 0x3c
    .4byte 0x41800560 # blt .L_8019D944
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x61
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x62
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x63
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x64
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x10
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x45c
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x260(29)
    addi 4, 1, 0x10
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x45d
    lwz 3, 0x4(29)
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x264(29)
    mr 3, 29
    bl fn_8019DC5C
    li 0, 0x4
    stw 0, 0x230(29)
    .4byte 0x48000454 # b .L_8019D944
L_8019D4F4:
    lwz 4, 0x24c(29)
    addi 0, 4, 0x1
    stw 0, 0x24c(29)
    lwz 0, 0x24c(29)
    cmpwi 0, 0x2
    .4byte 0x40820024 # bne .L_8019D52C
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0x5d
    bl fn_801F0E34
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
L_8019D52C:
    lwz 0, 0x24c(29)
    cmpwi 0, 0x5a
    .4byte 0x40800020 # bge .L_8019D554
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x0
    .4byte 0xC022B4A8 # lfs f1, lbl_8053E448@sda21(r0)
    .4byte 0xC042B4A0 # lfs f2, lbl_8053E440@sda21(r0)
    bl fn_802D79E8
    .4byte 0x480003F4 # b .L_8019D944
L_8019D554:
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x24c(29)
    li 0, 0x5
    stw 3, 0x258(29)
    stw 0, 0x230(29)
L_8019D56C:
    lwz 3, 0x24c(29)
    addi 0, 3, 0x1
    stw 0, 0x24c(29)
    lwz 0, 0x24c(29)
    cmpwi 0, 0x2
    .4byte 0x408101BC # ble .L_8019D73C
    li 26, 0x0
    stw 26, 0x24c(29)
    lwz 3, 0x258(29)
    lwz 0, 0x250(29)
    cmpw 3, 0
    .4byte 0x408001A4 # bge .L_8019D73C
    addi 27, 31, 0x4000
    addi 25, 31, 0x3000
    li 30, 0x0
    .4byte 0x48000188 # b .L_8019D730
L_8019D5AC:
    lbz 0, 0x0(27)
    cmplwi 0, 0x1
    .4byte 0x4082016C # bne .L_8019D720
    bl SpatialRegistry_GetBase
    addi 0, 26, 0x8
    lwzx 28, 3, 0
    cmplwi 28, 0x0
    .4byte 0x4182013C # beq .L_8019D704
    lwz 3, 0x0(25)
    cmpwi 3, 0x4
    .4byte 0x408200F0 # bne .L_8019D6C4
    mulli 0, 30, 0xc
    addi 6, 31, 0x0
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    addi 4, 1, 0x10
    li 5, 0x18
    add 3, 6, 0
    lfsx 3, 6, 0
    li 6, 0x1
    lfs 2, 0x4(3)
    li 7, 0x7
    lfs 0, 0x8(3)
    li 8, 0x0
    stfs 3, 0x10(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x14(1)
    stfs 0, 0x18(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
    mr 3, 28
    bl Warp_GetLookupTableValue
    lwz 3, 0x4(29)
    addi 4, 1, 0x10
    li 5, 0x19
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 25, 3
    mr 3, 29
    li 5, 0x0
    addi 4, 4, 0x5e
    bl fn_801F0E34
    cmplwi 25, 0x0
    .4byte 0x41820014 # beq .L_8019D680
    bl fn_8013C824
    lwz 4, 0x234(29)
    mr 5, 25
    bl fn_8013C830
L_8019D680:
    mr 3, 28
    bl Warp_GetLookupTableValue
    lwz 3, 0x4(29)
    addi 4, 1, 0x10
    li 5, 0x1a
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    slwi 5, 30, 2
    addi 4, 31, 0x3000
    lwzx 3, 4, 5
    subi 0, 3, 0x1
    stwx 0, 4, 5
    .4byte 0x4800007C # b .L_8019D73C
L_8019D6C4:
    subi 0, 3, 0x1
    stw 0, 0x0(25)
    lwz 0, 0x0(25)
    cmpwi 0, 0x0
    .4byte 0x4181004C # bgt .L_8019D720
    addi 3, 31, 0x4000
    li 0, 0x0
    stbx 0, 3, 30
    mr 3, 28
    lwz 4, 0x258(29)
    addi 0, 4, 0x1
    stw 0, 0x258(29)
    bl fn_801F4694
    mr 3, 28
    bl fn_801F3668
    .4byte 0x4800003C # b .L_8019D73C
L_8019D704:
    addi 3, 31, 0x4000
    li 0, 0x0
    stbx 0, 3, 30
    lwz 3, 0x258(29)
    addi 0, 3, 0x1
    stw 0, 0x258(29)
    .4byte 0x48000020 # b .L_8019D73C
L_8019D720:
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    addi 25, 25, 0x4
    addi 30, 30, 0x1
L_8019D730:
    lwz 0, 0x254(29)
    cmpw 30, 0
    .4byte 0x4180FE74 # blt .L_8019D5AC
L_8019D73C:
    lwz 3, 0x258(29)
    lwz 0, 0x250(29)
    cmpw 3, 0
    .4byte 0x418001FC # blt .L_8019D944
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x254(29)
    stw 0, 0x230(29)
    .4byte 0x480001E8 # b .L_8019D944
L_8019D760:
    lwz 0, 0x258(29)
    cmpwi 0, 0x32
    .4byte 0x40800108 # bge .L_8019D870
    lwz 3, 0x24c(29)
    addi 0, 3, 0x1
    stw 0, 0x24c(29)
    lwz 0, 0x24c(29)
    cmpwi 0, 0x2
    .4byte 0x408101C4 # ble .L_8019D944
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x24c(29)
    addi 11, 3, 0x660d
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    addi 4, 1, 0x10
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    li 5, 0x18
    .4byte 0xC0A2B4B0 # lfs f5, lbl_8053E450@sda21(r0)
    li 6, 0x1
    lwz 0, 0xb4(12)
    li 7, 0x7
    .4byte 0xC042B4AC # lfs f2, lbl_8053E44C@sda21(r0)
    li 8, 0x0
    mullw 3, 0, 11
    .4byte 0xC062B4B8 # lfs f3, lbl_8053E458@sda21(r0)
    .4byte 0xC002B4B4 # lfs f0, lbl_8053E454@sda21(r0)
    li 9, 0x0
    li 10, 0x1
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 6, 0x10(1)
    srwi 0, 0, 9
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 4, 0xc(1)
    fsubs 4, 4, 1
    fnmsubs 2, 5, 4, 2
    fadds 2, 6, 2
    stfs 2, 0x10(1)
    lwz 0, 0xb4(12)
    mullw 3, 0, 11
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 4, 0x14(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 2, 2, 1
    fnmsubs 0, 3, 2, 0
    fadds 0, 4, 0
    stfs 0, 0x14(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x258(29)
    addi 0, 3, 0x1
    stw 0, 0x258(29)
    .4byte 0x480000D8 # b .L_8019D944
L_8019D870:
    lwz 0, 0x254(29)
    cmpwi 0, 0x0
    .4byte 0x40820088 # bne .L_8019D900
    lwz 3, 0x4(29)
    addi 4, 1, 0x10
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x65
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    lwz 5, 0x260(29)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_8019D8E0
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x260(29)
L_8019D8E0:
    lwz 5, 0x264(29)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_8019D900
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x264(29)
L_8019D900:
    lwz 3, 0x254(29)
    addi 0, 3, 0x1
    stw 0, 0x254(29)
    lwz 0, 0x254(29)
    cmpwi 0, 0x32
    .4byte 0x41800030 # blt .L_8019D944
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x11c(29)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134FC4
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    bl fn_8022ADCC
    li 0, 0x0
    stw 0, 0x248(29)
    .4byte 0x980D8FF0 # stb r0, lbl_8053ABB0@sda21(r0)
L_8019D944:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

