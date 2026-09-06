# fn_801AB6A8 (0xB4C, largest in cluster - Track A byte-match + overview)
# - GOMA cluster, 4/7. GOMA's other big per-phase update() body, called
# from the dispatcher fn_801AAE88. Uses the confirmed effect-spawn/sync
# pair fn_8013CB44/fn_8013CC50, the existing-instance-by-FourCC lookup
# fn_801F2718, the per-room config-record accessor GetRoomConfigRecord, knockback
# fn_801F3D94, ease fn_801F71A4, sound fn_80458FF0, plus several
# project-local helpers (fn_801EEC98/801EF510/801F0E34/801F2618/801F285C/
# 801F2B7C/802379E4). Byte-matched via direct transcription; full
# per-state semantic breakdown deferred given the function's size.
.section extab, "a"
.balign 4
.global etb_80007AC4
etb_80007AC4:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_80007AC4, 8

.section extabindex, "a"
.balign 4
.global eti_800149A4
eti_800149A4:
    .4byte fn_801AB6A8
    .4byte 0x00000B4C
    .4byte etb_80007AC4
.size eti_800149A4, 12

.text
.balign 4
.global fn_801AB6A8

fn_801AB6A8:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 29, 3
    li 4, 0x1
    lfs 1, 0x10(3)
    lfs 31, 0x64(3)
    lfs 29, 0x6c(3)
    lfs 0, 0xc(3)
    fadds 31, 31, 1
    lfs 28, 0x60(3)
    fadds 29, 29, 1
    lfs 30, 0x68(3)
    fadds 28, 28, 0
    fadds 30, 30, 0
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_801AB734
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000A84 # b .L_801AC1B4
L_801AB734:
    lwz 0, 0x108(29)
    cmpwi 0, 0x3e8
    .4byte 0x4080001C # bge .L_801AB758
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000A60 # b .L_801AC1B4
L_801AB758:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_801AB798
    lfs 2, 0x10(29)
    lfs 0, 0x14(29)
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002B808 # lfs f0, lbl_8053E7A8@sda21(r0)
    stfs 2, 0x10(29)
    stfs 1, 0x14(29)
    stfs 1, 0x44(29)
    stfs 0, 0x268(29)
L_801AB798:
    lfs 1, 0x264(29)
    addi 3, 29, 0x3c
    .4byte 0xC042B7B0 # lfs f2, lbl_8053E750@sda21(r0)
    .4byte 0xC062B7B4 # lfs f3, lbl_8053E754@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x268(29)
    addi 3, 29, 0x40
    .4byte 0xC042B7B0 # lfs f2, lbl_8053E750@sda21(r0)
    .4byte 0xC062B7B4 # lfs f3, lbl_8053E754@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    lwz 0, 0x230(29)
    cmpwi 0, 0x6
    .4byte 0x418201A0 # beq .L_801AB988
    fsubs 1, 28, 30
    .4byte 0xC042B80C # lfs f2, lbl_8053E7AC@sda21(r0)
    fsubs 0, 31, 29
    li 30, 0x0
    fmadds 28, 2, 1, 30
    fmadds 29, 2, 0, 29
L_801AB804:
    mr 3, 29
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    mr. 31, 3
    .4byte 0x4180015C # blt .L_801AB97C
    lwz 4, 0x198(29)
    mr 3, 29
    mr 9, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x1c
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x418000A4 # blt .L_801AB8F4
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 28, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801AB87C
    lwz 0, 0x1c(1)
    stw 0, 0x98(29)
    .4byte 0x48000038 # b .L_801AB8B0
L_801AB87C:
    lwz 3, 0x1c(1)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4082000C # bne .L_801AB890
    stw 3, 0x98(29)
    .4byte 0x48000024 # b .L_801AB8B0
L_801AB890:
    lhz 0, 0x8(1)
    cmplwi 0, 0x8000
    .4byte 0x40800010 # bge .L_801AB8A8
    li 0, 0x0
    stw 0, 0x98(29)
    .4byte 0x4800000C # b .L_801AB8B0
L_801AB8A8:
    li 0, 0x1
    stw 0, 0x98(29)
L_801AB8B0:
    lwz 0, 0x98(29)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022B810 # lfs f1, lbl_8053E7B0@sda21(r0)
    slwi 0, 0, 2
    stw 0, 0x250(29)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x3c(29)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(29)
L_801AB8F4:
    stfs 28, 0x20(1)
    mr 3, 31
    addi 4, 1, 0x20
    stfs 29, 0x24(1)
    bl fn_802379E4
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801AB974
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B7B4 # lfs f1, lbl_8053E754@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B7B4 # lfs f1, lbl_8053E754@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801AB974:
    li 0, 0x5
    stw 0, 0x230(29)
L_801AB97C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FE80 # blt .L_801AB804
L_801AB988:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x408200C4 # bne .L_801ABA54
    mr 3, 29
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    lwz 0, 0x27c(29)
    cmplwi 0, 0x0
    .4byte 0x40820144 # bne .L_801ABAF4
    lwz 0, 0x280(29)
    cmplwi 0, 0x0
    .4byte 0x40820138 # bne .L_801ABAF4
    lis 4, 0x4649
    mr 3, 29
    addi 4, 4, 0x5245
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_801AB9E8
    lis 4, 0x424c
    mr 3, 29
    addi 4, 4, 0x5a45
    bl fn_801F2718
L_801AB9E8:
    cmpwi 3, 0x0
    .4byte 0x41800108 # blt .L_801ABAF4
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B7B4 # lfs f1, lbl_8053E754@sda21(r0)
    li 5, 0xbb
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x27c(29)
    addi 4, 29, 0xc
    .4byte 0xC022B7B4 # lfs f1, lbl_8053E754@sda21(r0)
    li 5, 0xbc
    lwz 3, 0x4(29)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x280(29)
    li 0, 0xc8
    stw 0, 0x23c(29)
    .4byte 0x480000A4 # b .L_801ABAF4
L_801ABA54:
    lwz 4, 0x114(29)
    mr 3, 29
    li 5, -0x1
    li 6, 0x8
    bl fn_801F2B7C
    lwz 3, 0x27c(29)
    addi 4, 29, 0xc
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x280(29)
    addi 4, 29, 0xc
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x23c(29)
    cmpwi 0, 0x1
    .4byte 0x40820054 # bne .L_801ABAF4
    lwz 5, 0x27c(29)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_801ABACC
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x27c(29)
L_801ABACC:
    lwz 5, 0x280(29)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_801ABAEC
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x280(29)
L_801ABAEC:
    li 0, 0x3
    stw 0, 0x230(29)
L_801ABAF4:
    mr 3, 29
    bl fn_801EF510
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    mr 3, 29
    addi 4, 1, 0x28
    li 5, 0x0
    stfs 0, 0x30(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x28(1)
    bl fn_801F2618
    lwz 0, 0x230(29)
    mr 31, 3
    cmplwi 0, 0x6
    .4byte 0x4181068C # bgt .L_801AC1B4
    lis 3, jumptable_804A30EC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A30EC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x1
    stw 0, 0x230(29)
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801ABBC8
    .4byte 0x40800014 # bge .L_801ABB94
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801ABBA0
    .4byte 0x40800028 # bge .L_801ABBB4
    .4byte 0x4800005C # b .L_801ABBEC
L_801ABB94:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801ABBEC
    .4byte 0x48000040 # b .L_801ABBDC
L_801ABBA0:
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x4800003C # b .L_801ABBEC
L_801ABBB4:
    .4byte 0xC002B7A0 # lfs f0, lbl_8053E740@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000028 # b .L_801ABBEC
L_801ABBC8:
    stfs 1, 0x264(29)
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000014 # b .L_801ABBEC
L_801ABBDC:
    stfs 1, 0x264(29)
    .4byte 0xC002B7A0 # lfs f0, lbl_8053E740@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
L_801ABBEC:
    li 5, 0x0
    lis 3, 0x19
    stw 5, 0x234(29)
    addi 3, 3, 0x660d
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    li 0, 0x2
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042B7EC # lfs f2, lbl_8053E78C@sda21(r0)
    lwz 4, 0xb4(6)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 3, 3, 0x32
    stw 3, 0x238(29)
    stw 5, 0x244(29)
    stw 0, 0x230(29)
    clrlwi. 0, 31, 24
    .4byte 0x418202F4 # beq .L_801ABF50
    lwz 28, 0x4(29)
    li 30, 0x0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801ABC88
    li 30, 0x1
    .4byte 0x48000048 # b .L_801ABCCC
L_801ABC88:
    lfs 0, 0x2c(1)
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x41820038 # beq .L_801ABCCC
    lfs 2, 0x28(1)
    fcmpo cr0, 2, 1
    .4byte 0x40810010 # ble .L_801ABCB0
    lfs 0, 0x3c(29)
    fcmpo cr0, 0, 1
    .4byte 0x4180001C # blt .L_801ABCC8
L_801ABCB0:
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800014 # bge .L_801ABCCC
    lfs 0, 0x3c(29)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_801ABCCC
L_801ABCC8:
    li 30, 0x1
L_801ABCCC:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x4082027C # bne .L_801ABF50
    lwz 0, 0x238(29)
    cmpwi 0, 0x5
    .4byte 0x4080000C # bge .L_801ABCEC
    li 0, 0x5
    stw 0, 0x238(29)
L_801ABCEC:
    lwz 0, 0x240(29)
    cmpwi 0, 0x0
    .4byte 0x4082025C # bne .L_801ABF50
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082014C # bne .L_801ABE5C
    lwz 4, 0x98(29)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B7B4 # lfs f1, lbl_8053E754@sda21(r0)
    xori 3, 4, 0x2
    .4byte 0xC002B80C # lfs f0, lbl_8053E7AC@sda21(r0)
    stw 3, 0x98(29)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801ABD74
    lwz 0, 0x98(29)
    xori 0, 0, 0x1
    stw 0, 0x98(29)
L_801ABD74:
    lfs 28, 0xc(29)
    lfs 29, 0x10(29)
    lfs 30, 0x14(29)
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801ABDE4
    .4byte 0x40800014 # bge .L_801ABDB0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801ABDBC
    .4byte 0x40800028 # bge .L_801ABDD0
    .4byte 0x4800005C # b .L_801ABE08
L_801ABDB0:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801ABE08
    .4byte 0x48000040 # b .L_801ABDF8
L_801ABDBC:
    .4byte 0xC002B7DC # lfs f0, lbl_8053E77C@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x4800003C # b .L_801ABE08
L_801ABDD0:
    .4byte 0xC002B7D8 # lfs f0, lbl_8053E778@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000028 # b .L_801ABE08
L_801ABDE4:
    stfs 1, 0x264(29)
    .4byte 0xC002B7DC # lfs f0, lbl_8053E77C@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000014 # b .L_801ABE08
L_801ABDF8:
    stfs 1, 0x264(29)
    .4byte 0xC002B7D8 # lfs f0, lbl_8053E778@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
L_801ABE08:
    psq_l 1, 0xc(29), 0, 0
    mr 3, 29
    psq_l 0, 0x264(29), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x26c(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801ABE4C
    lwz 0, 0x98(29)
    xori 0, 0, 0x1
    stw 0, 0x98(29)
L_801ABE4C:
    stfs 28, 0xc(29)
    stfs 29, 0x10(29)
    stfs 30, 0x14(29)
    .4byte 0x48000068 # b .L_801ABEC0
L_801ABE5C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B814 # lfs f2, lbl_8053E7B4@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0x1e
    stw 0, 0x240(29)
    lwz 0, 0x98(29)
    xori 0, 0, 0x1
    stw 0, 0x98(29)
L_801ABEC0:
    li 0, 0x0
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    stw 0, 0x234(29)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801ABF2C
    .4byte 0x40800014 # bge .L_801ABEF8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801ABF04
    .4byte 0x40800028 # bge .L_801ABF18
    .4byte 0x4800005C # b .L_801ABF50
L_801ABEF8:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801ABF50
    .4byte 0x48000040 # b .L_801ABF40
L_801ABF04:
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x4800003C # b .L_801ABF50
L_801ABF18:
    .4byte 0xC002B7A0 # lfs f0, lbl_8053E740@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000028 # b .L_801ABF50
L_801ABF2C:
    stfs 1, 0x264(29)
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000014 # b .L_801ABF50
L_801ABF40:
    stfs 1, 0x264(29)
    .4byte 0xC002B7A0 # lfs f0, lbl_8053E740@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
L_801ABF50:
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_801ABF90
    lwz 4, 0x98(29)
    li 0, 0x5
    lwz 3, 0x244(29)
    slwi 4, 4, 2
    add 3, 4, 3
    stw 3, 0x250(29)
    stw 0, 0x234(29)
    lwz 3, 0x244(29)
    addi 0, 3, 0x1
    stw 0, 0x244(29)
    lwz 0, 0x244(29)
    clrlwi 0, 0, 30
    stw 0, 0x244(29)
L_801ABF90:
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x4082021C # bne .L_801AC1B4
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    li 3, 0x1e
    li 0, 0x4
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x264(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 3, 0x238(29)
    stw 0, 0x230(29)
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x408201DC # bne .L_801AC1B4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B818 # lfs f2, lbl_8053E7B8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    stw 0, 0x98(29)
    lwz 0, 0x98(29)
    clrlwi 0, 0, 30
    stw 0, 0x98(29)
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_801AC140
    lfs 28, 0xc(29)
    lfs 29, 0x10(29)
    lfs 30, 0x14(29)
    .4byte 0xC022B7A4 # lfs f1, lbl_8053E744@sda21(r0)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801AC0C8
    .4byte 0x40800014 # bge .L_801AC094
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AC0A0
    .4byte 0x40800028 # bge .L_801AC0B4
    .4byte 0x4800005C # b .L_801AC0EC
L_801AC094:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801AC0EC
    .4byte 0x48000040 # b .L_801AC0DC
L_801AC0A0:
    .4byte 0xC002B7DC # lfs f0, lbl_8053E77C@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x4800003C # b .L_801AC0EC
L_801AC0B4:
    .4byte 0xC002B7D8 # lfs f0, lbl_8053E778@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000028 # b .L_801AC0EC
L_801AC0C8:
    stfs 1, 0x264(29)
    .4byte 0xC002B7DC # lfs f0, lbl_8053E77C@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000014 # b .L_801AC0EC
L_801AC0DC:
    stfs 1, 0x264(29)
    .4byte 0xC002B7D8 # lfs f0, lbl_8053E778@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
L_801AC0EC:
    psq_l 1, 0xc(29), 0, 0
    mr 3, 29
    psq_l 0, 0x264(29), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x26c(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801AC130
    lwz 0, 0x98(29)
    xori 0, 0, 0x1
    stw 0, 0x98(29)
L_801AC130:
    stfs 28, 0xc(29)
    stfs 29, 0x10(29)
    stfs 30, 0x14(29)
    .4byte 0x48000010 # b .L_801AC14C
L_801AC140:
    lwz 0, 0x98(29)
    clrlwi 0, 0, 31
    stw 0, 0x98(29)
L_801AC14C:
    li 0, 0x1
    stw 0, 0x230(29)
    .4byte 0x48000060 # b .L_801AC1B4
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    li 0, 0x6
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x264(29)
    stw 0, 0x230(29)
    lfs 1, 0x264(29)
    lfs 0, 0x3c(29)
    .4byte 0xC042B81C # lfs f2, lbl_8053E7BC@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800028 # bge .L_801AC1B4
    lfs 1, 0x268(29)
    lfs 0, 0x40(29)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x4080000C # bge .L_801AC1B4
    li 0, 0x1
    stw 0, 0x230(29)
L_801AC1B4:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 0, 0x94(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

