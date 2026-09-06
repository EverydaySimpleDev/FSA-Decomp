# DDGO cluster, part 6/8 (Track A byte-match + overview -
# 0x1338=4920B, the LARGEST piece of this actor). update() state
# handler #2. Uses the global PRNG advance, effect spawn fn_8013CC50,
# the existing-instance-by-FourCC lookup fn_801F2718, the confirmed
# knockback fn_801F3D94, ease fn_801F71A4, the generic FourCC actor
# dispatcher fn_801F9484, its own private helper Ddgo_ApplyState (landed
# alongside, shared with setParams below), fn_80134DE4/fn_801EEC98/
# fn_801EF510/fn_801F0E34/fn_801F2618/fn_801F285C/fn_801F2B7C/
# fn_801F666C/ClassifyBamAngleToQuadrant/SpatialRegistry_GetBase, sound fn_80458FF0, plus
# unfamiliar fn_80237948/fn_8030C210.
.section extab, "a"
.balign 4
.global etb_80007B14
etb_80007B14:
    .4byte 0x218A0000
    .4byte 0x00000000
.size etb_80007B14, 8

.section extabindex, "a"
.balign 4
.global eti_80014A1C
eti_80014A1C:
    .4byte fn_801ACFF4
    .4byte 0x00001338
    .4byte etb_80007B14
.size eti_80014A1C, 12

.text
.balign 4
.global fn_801ACFF4

fn_801ACFF4:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stfd 29, 0x90(1)
    psq_st 29, 0x98(1), 0, 0
    stfd 28, 0x80(1)
    psq_st 28, 0x88(1), 0, 0
    stfd 27, 0x70(1)
    psq_st 27, 0x78(1), 0, 0
    stfd 26, 0x60(1)
    psq_st 26, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 29, 3
    lis 3, lbl_804A3108@ha
    lfs 26, 0x10(29)
    lfs 27, 0xc(29)
    addi 30, 3, lbl_804A3108@l
    lfs 31, 0x60(29)
    addi 4, 29, 0xc
    lfs 30, 0x64(29)
    lfs 29, 0x68(29)
    lfs 28, 0x6c(29)
    lwz 3, 0x24(5)
    bl fn_8030C210
    lwz 0, 0x294(29)
    fadds 31, 31, 27
    fadds 30, 30, 26
    .4byte 0xC0C2B830 # lfs f6, lbl_8053E7D0@sda21(r0)
    cmpwi 0, 0x1
    fadds 29, 29, 27
    fadds 28, 28, 26
    .4byte 0x40820008 # bne .L_801AD098
    .4byte 0xC0C2B848 # lfs f6, lbl_8053E7E8@sda21(r0)
L_801AD098:
    lwz 0, 0x98(29)
    addi 4, 30, 0x40
    .4byte 0xC042B84C # lfs f2, lbl_8053E7EC@sda21(r0)
    addi 3, 29, 0x3c
    slwi 0, 0, 4
    .4byte 0xC062B830 # lfs f3, lbl_8053E7D0@sda21(r0)
    lfsx 0, 4, 0
    add 4, 4, 0
    lfs 1, 0x4(4)
    fmuls 0, 6, 0
    lfs 5, 0xc(4)
    lfs 4, 0x8(4)
    fmuls 1, 6, 1
    fmuls 5, 6, 5
    stfs 0, 0x60(29)
    fmuls 0, 6, 4
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 5, 0x6c(29)
    lwz 4, 0x60(29)
    lwz 0, 0x64(29)
    stw 4, 0x80(29)
    stw 0, 0x84(29)
    lwz 4, 0x68(29)
    lwz 0, 0x6c(29)
    stw 4, 0x88(29)
    stw 0, 0x8c(29)
    lfs 1, 0x268(29)
    bl fn_801F71A4
    lfs 1, 0x26c(29)
    addi 3, 29, 0x40
    .4byte 0xC042B84C # lfs f2, lbl_8053E7EC@sda21(r0)
    .4byte 0xC062B830 # lfs f3, lbl_8053E7D0@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042B850 # lfs f2, lbl_8053E7F0@sda21(r0)
    addi 3, 29, 0x274
    lfs 1, 0x280(29)
    fmr 3, 2
    bl fn_801F71A4
    mr 3, 29
    li 4, 0x0
    bl fn_801F3D94
    lfs 0, 0x274(29)
    stfs 0, 0x278(29)
    psq_l 1, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    lwz 0, 0x244(29)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801AD19C
    lwz 0, 0x230(29)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801AD188
    cmpwi 0, 0x5
    .4byte 0x40820018 # bne .L_801AD19C
L_801AD188:
    mr 3, 29
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_801AD19C:
    mr 3, 29
    bl fn_801EF510
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    fsubs 1, 31, 29
    .4byte 0xC042B854 # lfs f2, lbl_8053E7F4@sda21(r0)
    fsubs 0, 30, 28
    mr 31, 3
    li 28, 0x0
    fmadds 26, 2, 1, 29
    fmadds 27, 2, 0, 28
L_801AD1D0:
    mr 3, 29
    mr 7, 28
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800080 # blt .L_801AD26C
    stfs 26, 0x20(1)
    addi 4, 1, 0x20
    stfs 27, 0x24(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801AD26C
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B830 # lfs f1, lbl_8053E7D0@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B830 # lfs f1, lbl_8053E7D0@sda21(r0)
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
L_801AD26C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF5C # blt .L_801AD1D0
    lwz 0, 0x230(29)
    cmplwi 0, 0xb
    .4byte 0x41811048 # bgt .L_801AE2C8
    lis 3, jumptable_804A3388@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3388@l
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
    .4byte 0xC022B838 # lfs f1, lbl_8053E7D8@sda21(r0)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801AD320
    .4byte 0x40800014 # bge .L_801AD2EC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AD2F8
    .4byte 0x40800028 # bge .L_801AD30C
    .4byte 0x4800005C # b .L_801AD344
L_801AD2EC:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801AD344
    .4byte 0x48000040 # b .L_801AD334
L_801AD2F8:
    .4byte 0xC002B858 # lfs f0, lbl_8053E7F8@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x4800003C # b .L_801AD344
L_801AD30C:
    .4byte 0xC002B85C # lfs f0, lbl_8053E7FC@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x48000028 # b .L_801AD344
L_801AD320:
    stfs 1, 0x268(29)
    .4byte 0xC002B858 # lfs f0, lbl_8053E7F8@sda21(r0)
    stfs 0, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x48000014 # b .L_801AD344
L_801AD334:
    stfs 1, 0x268(29)
    .4byte 0xC002B85C # lfs f0, lbl_8053E7FC@sda21(r0)
    stfs 0, 0x26c(29)
    stfs 1, 0x270(29)
L_801AD344:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002B830 # lfs f0, lbl_8053E7D0@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x3
    .4byte 0xC042B860 # lfs f2, lbl_8053E800@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 3, 0x44(1)
    addi 3, 3, 0x32
    stw 3, 0x23c(29)
    stw 0, 0xbc(29)
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801AD3B8
    li 0, 0x4
    stw 0, 0xbc(29)
L_801AD3B8:
    lwz 0, 0x244(29)
    cmpwi 0, 0x0
    .4byte 0x40820250 # bne .L_801AD610
    lwz 3, 0x250(29)
    addi 0, 3, 0x1
    stw 0, 0x250(29)
    lwz 0, 0x250(29)
    cmpwi 0, 0x3
    .4byte 0x40810238 # ble .L_801AD610
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B830 # lfs f1, lbl_8053E7D0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B854 # lfs f0, lbl_8053E7F4@sda21(r0)
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
    .4byte 0x408001F0 # bge .L_801AD610
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x1c(1)
    lwz 28, 0x98(29)
    stw 0, 0x250(29)
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x40820040 # bne .L_801AD480
    lwz 0, 0x258(29)
    li 28, 0x3
    cmpwi 0, 0x3
    .4byte 0x40800008 # bge .L_801AD458
    li 28, 0x0
L_801AD458:
    cmpwi 0, 0x3
    .4byte 0x41800010 # blt .L_801AD46C
    cmpwi 0, 0x5
    .4byte 0x41810008 # bgt .L_801AD46C
    li 28, 0x1
L_801AD46C:
    cmpwi 0, 0x6
    .4byte 0x41800010 # blt .L_801AD480
    cmpwi 0, 0x8
    .4byte 0x41810008 # bgt .L_801AD480
    li 28, 0x2
L_801AD480:
    lwz 4, 0x198(29)
    mr 3, 29
    addi 6, 1, 0x1c
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801AD4BC
    stw 0, 0x98(29)
    li 0, 0x2
    stw 0, 0x238(29)
L_801AD4BC:
    lwz 0, 0x294(29)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801AD4D4
    lwz 0, 0x98(29)
    cmpwi 0, 0x3
    .4byte 0x41820010 # beq .L_801AD4E0
L_801AD4D4:
    li 0, 0x4
    stw 0, 0x230(29)
    .4byte 0x48000010 # b .L_801AD4EC
L_801AD4E0:
    li 0, 0xa
    stw 0, 0x230(29)
    .4byte 0x48000DE0 # b .L_801AE2C8
L_801AD4EC:
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x408200C8 # bne .L_801AD5BC
    cmpwi 28, 0x1
    .4byte 0x40820010 # bne .L_801AD50C
    lwz 0, 0x98(29)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AD520
L_801AD50C:
    cmpwi 28, 0x0
    .4byte 0x408200AC # bne .L_801AD5BC
    lwz 0, 0x98(29)
    cmpwi 0, 0x1
    .4byte 0x408200A0 # bne .L_801AD5BC
L_801AD520:
    lwz 0, 0x290(29)
    cmpwi 0, 0x4
    .4byte 0x41820088 # beq .L_801AD5B0
    li 0, 0x4
    li 3, 0x0
    stw 0, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801AD590
    .4byte 0x40800014 # bge .L_801AD564
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801AD574
    .4byte 0x40800020 # bge .L_801AD57C
    .4byte 0x48000050 # b .L_801AD5B0
L_801AD564:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801AD5A8
    .4byte 0x40800044 # bge .L_801AD5B0
    .4byte 0x4800002C # b .L_801AD59C
L_801AD574:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801AD5B0
L_801AD57C:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801AD5B0
L_801AD590:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801AD5B0
L_801AD59C:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801AD5B0
L_801AD5A8:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801AD5B0:
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x48000D10 # b .L_801AE2C8
L_801AD5BC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B830 # lfs f1, lbl_8053E7D0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B864 # lfs f0, lbl_8053E804@sda21(r0)
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
    .4byte 0x40800CC8 # bge .L_801AE2C8
    li 0, 0xa
    stw 0, 0x230(29)
    .4byte 0x48000CBC # b .L_801AE2C8
L_801AD610:
    lwz 0, 0x290(29)
    cmpwi 0, 0x0
    .4byte 0x41820084 # beq .L_801AD69C
    li 3, 0x0
    stw 3, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801AD67C
    .4byte 0x40800014 # bge .L_801AD650
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801AD660
    .4byte 0x40800020 # bge .L_801AD668
    .4byte 0x48000050 # b .L_801AD69C
L_801AD650:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801AD694
    .4byte 0x40800044 # bge .L_801AD69C
    .4byte 0x4800002C # b .L_801AD688
L_801AD660:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801AD69C
L_801AD668:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801AD69C
L_801AD67C:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801AD69C
L_801AD688:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801AD69C
L_801AD694:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801AD69C:
    li 0, 0x2
    stw 0, 0x230(29)
    clrlwi. 0, 31, 24
    .4byte 0x40820010 # bne .L_801AD6B8
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x40820C14 # bne .L_801AE2C8
L_801AD6B8:
    lwz 4, 0x98(29)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B830 # lfs f1, lbl_8053E7D0@sda21(r0)
    xori 3, 4, 0x2
    .4byte 0xC002B854 # lfs f0, lbl_8053E7F4@sda21(r0)
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
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801AD718
    lwz 0, 0x98(29)
    xori 0, 0, 0x1
    stw 0, 0x98(29)
L_801AD718:
    lfs 0, 0xc(29)
    .4byte 0xC022B838 # lfs f1, lbl_8053E7D8@sda21(r0)
    stfs 0, 0x34(1)
    lfs 0, 0x10(29)
    stfs 0, 0x38(1)
    lfs 0, 0x14(29)
    stfs 0, 0x3c(1)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801AD794
    .4byte 0x40800014 # bge .L_801AD760
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AD76C
    .4byte 0x40800028 # bge .L_801AD780
    .4byte 0x4800005C # b .L_801AD7B8
L_801AD760:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801AD7B8
    .4byte 0x48000040 # b .L_801AD7A8
L_801AD76C:
    .4byte 0xC002B868 # lfs f0, lbl_8053E808@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x4800003C # b .L_801AD7B8
L_801AD780:
    .4byte 0xC002B86C # lfs f0, lbl_8053E80C@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x48000028 # b .L_801AD7B8
L_801AD794:
    stfs 1, 0x268(29)
    .4byte 0xC002B868 # lfs f0, lbl_8053E808@sda21(r0)
    stfs 0, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x48000014 # b .L_801AD7B8
L_801AD7A8:
    stfs 1, 0x268(29)
    .4byte 0xC002B86C # lfs f0, lbl_8053E80C@sda21(r0)
    stfs 0, 0x26c(29)
    stfs 1, 0x270(29)
L_801AD7B8:
    psq_l 1, 0xc(29), 0, 0
    mr 3, 29
    psq_l 0, 0x268(29), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x270(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801AD7FC
    lwz 0, 0x98(29)
    xori 0, 0, 0x1
    stw 0, 0x98(29)
L_801AD7FC:
    lfs 0, 0x34(1)
    stfs 0, 0xc(29)
    lfs 0, 0x38(1)
    stfs 0, 0x10(29)
    lfs 0, 0x3c(1)
    stfs 0, 0x14(29)
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x40820104 # bne .L_801AD920
    lwz 0, 0x258(29)
    li 3, 0x3
    cmpwi 0, 0x3
    .4byte 0x40800008 # bge .L_801AD834
    li 3, 0x0
L_801AD834:
    cmpwi 0, 0x3
    .4byte 0x41800010 # blt .L_801AD848
    cmpwi 0, 0x5
    .4byte 0x41810008 # bgt .L_801AD848
    li 3, 0x1
L_801AD848:
    cmpwi 0, 0x6
    .4byte 0x41800010 # blt .L_801AD85C
    cmpwi 0, 0x8
    .4byte 0x41810008 # bgt .L_801AD85C
    li 3, 0x2
L_801AD85C:
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_801AD870
    lwz 0, 0x98(29)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AD884
L_801AD870:
    cmpwi 3, 0x0
    .4byte 0x408200AC # bne .L_801AD920
    lwz 0, 0x98(29)
    cmpwi 0, 0x1
    .4byte 0x408200A0 # bne .L_801AD920
L_801AD884:
    lwz 0, 0x290(29)
    cmpwi 0, 0x4
    .4byte 0x41820088 # beq .L_801AD914
    li 0, 0x4
    li 3, 0x0
    stw 0, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801AD8F4
    .4byte 0x40800014 # bge .L_801AD8C8
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801AD8D8
    .4byte 0x40800020 # bge .L_801AD8E0
    .4byte 0x48000050 # b .L_801AD914
L_801AD8C8:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801AD90C
    .4byte 0x40800044 # bge .L_801AD914
    .4byte 0x4800002C # b .L_801AD900
L_801AD8D8:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801AD914
L_801AD8E0:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801AD914
L_801AD8F4:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801AD914
L_801AD900:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801AD914
L_801AD90C:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801AD914:
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x480009AC # b .L_801AE2C8
L_801AD920:
    li 0, 0x2
    .4byte 0xC022B838 # lfs f1, lbl_8053E7D8@sda21(r0)
    stw 0, 0x238(29)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801AD98C
    .4byte 0x40800014 # bge .L_801AD958
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AD964
    .4byte 0x40800028 # bge .L_801AD978
    .4byte 0x4800005C # b .L_801AD9B0
L_801AD958:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801AD9B0
    .4byte 0x48000040 # b .L_801AD9A0
L_801AD964:
    .4byte 0xC002B858 # lfs f0, lbl_8053E7F8@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x4800003C # b .L_801AD9B0
L_801AD978:
    .4byte 0xC002B85C # lfs f0, lbl_8053E7FC@sda21(r0)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x48000028 # b .L_801AD9B0
L_801AD98C:
    stfs 1, 0x268(29)
    .4byte 0xC002B858 # lfs f0, lbl_8053E7F8@sda21(r0)
    stfs 0, 0x26c(29)
    stfs 1, 0x270(29)
    .4byte 0x48000014 # b .L_801AD9B0
L_801AD9A0:
    stfs 1, 0x268(29)
    .4byte 0xC002B85C # lfs f0, lbl_8053E7FC@sda21(r0)
    stfs 0, 0x26c(29)
    stfs 1, 0x270(29)
L_801AD9B0:
    li 0, 0x1
    stw 0, 0x230(29)
    .4byte 0x48000910 # b .L_801AE2C8
    .4byte 0xC002B838 # lfs f0, lbl_8053E7D8@sda21(r0)
    stfs 0, 0x270(29)
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    lbz 0, 0x298(29)
    cmplwi 0, 0x0
    .4byte 0x418208E8 # beq .L_801AE2C8
    li 0, 0x4
    stw 0, 0x230(29)
    .4byte 0xC002B838 # lfs f0, lbl_8053E7D8@sda21(r0)
    stfs 0, 0x270(29)
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x1
    .4byte 0x41820088 # beq .L_801ADA98
    li 0, 0x1
    li 3, 0x0
    stw 0, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801ADA78
    .4byte 0x40800014 # bge .L_801ADA4C
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801ADA5C
    .4byte 0x40800020 # bge .L_801ADA64
    .4byte 0x48000050 # b .L_801ADA98
L_801ADA4C:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801ADA90
    .4byte 0x40800044 # bge .L_801ADA98
    .4byte 0x4800002C # b .L_801ADA84
L_801ADA5C:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801ADA98
L_801ADA64:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801ADA98
L_801ADA78:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801ADA98
L_801ADA84:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801ADA98
L_801ADA90:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801ADA98:
    lbz 0, 0x298(29)
    cmplwi 0, 0x0
    .4byte 0x41820828 # beq .L_801AE2C8
    li 3, 0x78
    li 0, 0x5
    stw 3, 0x23c(29)
    stw 0, 0x230(29)
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x41820208 # beq .L_801ADCC4
    cmpwi 0, 0x1
    .4byte 0x408200EC # bne .L_801ADBB0
    lfs 3, 0xc(29)
    stfs 3, 0x34(1)
    lfs 2, 0x10(29)
    stfs 2, 0x38(1)
    lfs 0, 0x14(29)
    stfs 0, 0x3c(1)
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_801ADB18
    lwz 0, 0x98(29)
    addi 4, 30, 0x20
    slwi 0, 0, 3
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fadds 1, 3, 1
    fadds 0, 2, 0
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    .4byte 0x4800002C # b .L_801ADB40
L_801ADB18:
    lwz 0, 0x98(29)
    addi 4, 30, 0x0
    slwi 0, 0, 3
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fadds 1, 3, 1
    fadds 0, 2, 0
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_801ADB40:
    bl SpatialRegistry_GetBase
    lwz 0, 0x294(29)
    lis 4, 0x4444
    lwz 5, 0x4(29)
    addi 4, 4, 0x474f
    slwi 0, 0, 4
    addi 6, 1, 0x34
    ori 7, 0, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x260(29)
    lwz 30, 0x260(29)
    cmpwi 30, 0x0
    .4byte 0x41800750 # blt .L_801AE2C8
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_801ADB9C
    li 0, -0x1
    stw 0, 0x260(29)
    .4byte 0x48000730 # b .L_801AE2C8
L_801ADB9C:
    li 0, 0x78
    stw 0, 0x240(29)
    lwz 0, 0x98(29)
    stw 0, 0x98(3)
    .4byte 0x4800071C # b .L_801AE2C8
L_801ADBB0:
    lwz 0, 0x294(29)
    .4byte 0xC082B830 # lfs f4, lbl_8053E7D0@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_801ADBC4
    .4byte 0xC082B870 # lfs f4, lbl_8053E810@sda21(r0)
L_801ADBC4:
    lwz 0, 0x98(29)
    lis 4, 0x4842
    addi 5, 30, 0x80
    mr 3, 29
    slwi 0, 0, 4
    addi 4, 4, 0x4d42
    lfsx 0, 5, 0
    add 5, 5, 0
    lfs 1, 0x4(5)
    fmuls 0, 4, 0
    lfs 3, 0xc(5)
    lfs 2, 0x8(5)
    fmuls 1, 4, 1
    fmuls 3, 4, 3
    stfs 0, 0x60(29)
    fmuls 0, 4, 2
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 3, 0x6c(29)
    bl fn_801F2718
    stw 3, 0x264(29)
    lwz 30, 0x264(29)
    cmpwi 30, 0x0
    .4byte 0x418006A8 # blt .L_801AE2C8
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820694 # beq .L_801AE2C8
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x40820688 # bne .L_801AE2C8
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_801ADC64
    lwz 0, 0x90(30)
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_801ADC64
    cmplwi 0, 0x9
    .4byte 0x40820668 # bne .L_801AE2C8
L_801ADC64:
    lfs 3, 0xc(30)
    lis 3, lbl_80534C00@ha
    lfs 1, 0xc(29)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x10(30)
    lfs 0, 0x10(29)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002B874 # lfs f0, lbl_8053E814@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 0, 0x44(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    lwz 0, 0x98(29)
    cmpw 3, 0
    .4byte 0x4082061C # bne .L_801AE2C8
    li 3, 0x1
    li 0, 0x6
    stb 3, 0x280(30)
    stw 0, 0x230(29)
    .4byte 0x48000608 # b .L_801AE2C8
L_801ADCC4:
    lwz 0, 0x240(29)
    cmpwi 0, 0xa
    .4byte 0x40820034 # bne .L_801ADD00
    lwz 30, 0x260(29)
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_801ADD00
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801ADD00
    li 4, -0x1
    li 0, 0x0
    stw 4, 0x260(29)
    stw 0, 0x108(3)
L_801ADD00:
    lwz 0, 0x240(29)
    cmpwi 0, 0x0
    .4byte 0x408205C0 # bne .L_801AE2C8
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x250(29)
    stw 0, 0x230(29)
    .4byte 0x480005AC # b .L_801AE2C8
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820088 # beq .L_801ADDB0
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801ADD90
    .4byte 0x40800014 # bge .L_801ADD64
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801ADD74
    .4byte 0x40800020 # bge .L_801ADD7C
    .4byte 0x48000050 # b .L_801ADDB0
L_801ADD64:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801ADDA8
    .4byte 0x40800044 # bge .L_801ADDB0
    .4byte 0x4800002C # b .L_801ADD9C
L_801ADD74:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801ADDB0
L_801ADD7C:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801ADDB0
L_801ADD90:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801ADDB0
L_801ADD9C:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801ADDB0
L_801ADDA8:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801ADDB0:
    lwz 31, 0x264(29)
    cmpwi 31, 0x0
    .4byte 0x4180010C # blt .L_801ADEC4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x418200F8 # beq .L_801ADEC4
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_801ADEC4
    lfs 0, 0x274(31)
    addi 28, 1, 0x2c
    .4byte 0xC082B830 # lfs f4, lbl_8053E7D0@sda21(r0)
    stfs 0, 0x18(1)
    lfs 0, 0xc(31)
    stfs 0, 0x28(1)
    lfs 0, 0x10(31)
    stfs 0, 0x2c(1)
    lfs 0, 0x14(31)
    stfs 0, 0x30(1)
    lfs 0, 0xc(29)
    stfs 0, 0x34(1)
    lfs 0, 0x10(29)
    stfs 0, 0x38(1)
    lfs 0, 0x14(29)
    stfs 0, 0x3c(1)
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_801ADE2C
    .4byte 0xC082B840 # lfs f4, lbl_8053E7E0@sda21(r0)
L_801ADE2C:
    lwz 0, 0x98(29)
    addi 4, 30, 0x0
    lfs 2, 0x34(1)
    slwi 5, 0, 3
    lfs 0, 0x38(1)
    add 3, 4, 5
    lfsx 3, 4, 5
    lfs 1, 0x4(3)
    rlwinm. 0, 0, 0, 30, 30
    fmadds 2, 4, 3, 2
    fmadds 1, 4, 1, 0
    stfs 2, 0x34(1)
    stfs 1, 0x38(1)
    .4byte 0x40820010 # bne .L_801ADE70
    .4byte 0xC002B878 # lfs f0, lbl_8053E818@sda21(r0)
    fmadds 0, 0, 4, 1
    stfs 0, 0x38(1)
L_801ADE70:
    lfs 1, 0x34(1)
    addi 3, 1, 0x28
    .4byte 0xC042B84C # lfs f2, lbl_8053E7EC@sda21(r0)
    .4byte 0xC062B87C # lfs f3, lbl_8053E81C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x38(1)
    mr 3, 28
    .4byte 0xC042B84C # lfs f2, lbl_8053E7EC@sda21(r0)
    .4byte 0xC062B87C # lfs f3, lbl_8053E81C@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042B854 # lfs f2, lbl_8053E7F4@sda21(r0)
    addi 3, 1, 0x18
    .4byte 0xC022B838 # lfs f1, lbl_8053E7D8@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    psq_l 1, 0x28(1), 0, 0
    lfs 0, 0x30(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lfs 0, 0x18(1)
    stfs 0, 0x274(31)
L_801ADEC4:
    lbz 0, 0x298(29)
    cmplwi 0, 0x0
    .4byte 0x418203FC # beq .L_801AE2C8
    lwz 28, 0x264(29)
    cmpwi 28, 0x0
    .4byte 0x4180002C # blt .L_801ADF04
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801ADF04
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801ADF04
    li 0, 0x0
    stb 0, 0x11c(3)
L_801ADF04:
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x3c
    li 0, 0x7
    stw 3, 0x23c(29)
    stw 0, 0x230(29)
    lwz 0, 0x23c(29)
    cmpwi 0, 0x1
    .4byte 0x40820158 # bne .L_801AE088
    .4byte 0xC002B87C # lfs f0, lbl_8053E81C@sda21(r0)
    stfs 0, 0x274(29)
    stfs 0, 0x278(29)
    stfs 0, 0x27c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x3
    .4byte 0x41820088 # beq .L_801ADFD4
    li 0, 0x3
    li 3, 0x0
    stw 0, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801ADFB4
    .4byte 0x40800014 # bge .L_801ADF88
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801ADF98
    .4byte 0x40800020 # bge .L_801ADFA0
    .4byte 0x48000050 # b .L_801ADFD4
L_801ADF88:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801ADFCC
    .4byte 0x40800044 # bge .L_801ADFD4
    .4byte 0x4800002C # b .L_801ADFC0
L_801ADF98:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801ADFD4
L_801ADFA0:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801ADFD4
L_801ADFB4:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801ADFD4
L_801ADFC0:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801ADFD4
L_801ADFCC:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801ADFD4:
    lwz 3, 0x25c(29)
    subi 0, 3, 0x1
    stw 0, 0x25c(29)
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x4181008C # bgt .L_801AE074
    lwz 0, 0x294(29)
    li 28, 0x7
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_801AE000
    li 28, 0xd
L_801AE000:
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(29)
    mr 7, 28
    addi 6, 29, 0xc
    addi 4, 4, 0x4d42
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 30, 3
    .4byte 0x41800038 # blt .L_801AE060
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801AE060
    lwz 0, 0x294(29)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_801AE058
    .4byte 0xC002B840 # lfs f0, lbl_8053E7E0@sda21(r0)
    stfs 0, 0x27c(3)
    .4byte 0x4800000C # b .L_801AE060
L_801AE058:
    .4byte 0xC002B880 # lfs f0, lbl_8053E820@sda21(r0)
    stfs 0, 0x27c(3)
L_801AE060:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x48000018 # b .L_801AE088
L_801AE074:
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
L_801AE088:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x40820238 # bne .L_801AE2C8
    lwz 0, 0x294(29)
    .4byte 0xC022B830 # lfs f1, lbl_8053E7D0@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_801AE0A8
    .4byte 0xC022B87C # lfs f1, lbl_8053E81C@sda21(r0)
L_801AE0A8:
    lfs 2, 0x274(29)
    .4byte 0xC002B884 # lfs f0, lbl_8053E824@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800214 # bge .L_801AE2C8
    lwz 0, 0x98(29)
    .4byte 0x38AD8550 # li r5, lbl_8053A110@sda21
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    slwi 0, 0, 1
    li 6, 0x0
    lhzx 5, 5, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_801AE110
    li 0, 0x0
    li 3, 0x3f
    stw 0, 0x250(29)
    li 0, 0xb
    stw 3, 0x23c(29)
    stw 0, 0x230(29)
    .4byte 0x480001BC # b .L_801AE2C8
L_801AE110:
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480001A4 # b .L_801AE2C8
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820088 # beq .L_801AE1B8
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801AE198
    .4byte 0x40800014 # bge .L_801AE16C
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801AE17C
    .4byte 0x40800020 # bge .L_801AE184
    .4byte 0x48000050 # b .L_801AE1B8
L_801AE16C:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801AE1B0
    .4byte 0x40800044 # bge .L_801AE1B8
    .4byte 0x4800002C # b .L_801AE1A4
L_801AE17C:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801AE1B8
L_801AE184:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801AE1B8
L_801AE198:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801AE1B8
L_801AE1A4:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801AE1B8
L_801AE1B0:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801AE1B8:
    li 0, 0x9
    stw 0, 0x230(29)
    lbz 0, 0x298(29)
    cmplwi 0, 0x0
    .4byte 0x41820100 # beq .L_801AE2C8
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x250(29)
    stw 0, 0x230(29)
    .4byte 0x480000EC # b .L_801AE2C8
    .4byte 0xC002B838 # lfs f0, lbl_8053E7D8@sda21(r0)
    li 0, 0x1e
    stfs 0, 0x270(29)
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 0, 0x23c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x0
    .4byte 0x41820084 # beq .L_801AE290
    li 3, 0x0
    stw 3, 0x290(29)
    stb 3, 0x298(29)
    stw 3, 0x238(29)
    stw 3, 0x24c(29)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801AE270
    .4byte 0x40800014 # bge .L_801AE244
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801AE254
    .4byte 0x40800020 # bge .L_801AE25C
    .4byte 0x48000050 # b .L_801AE290
L_801AE244:
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_801AE288
    .4byte 0x40800044 # bge .L_801AE290
    .4byte 0x4800002C # b .L_801AE27C
L_801AE254:
    stw 3, 0x28c(29)
    .4byte 0x48000038 # b .L_801AE290
L_801AE25C:
    li 0, 0xc
    stw 0, 0x28c(29)
    lwz 0, 0x28c(29)
    stw 0, 0x258(29)
    .4byte 0x48000024 # b .L_801AE290
L_801AE270:
    li 0, 0x18
    stw 0, 0x28c(29)
    .4byte 0x48000018 # b .L_801AE290
L_801AE27C:
    li 0, 0x20
    stw 0, 0x28c(29)
    .4byte 0x4800000C # b .L_801AE290
L_801AE288:
    li 0, 0x24
    stw 0, 0x28c(29)
L_801AE290:
    mr 3, 29
    bl Ddgo_ApplyState
    li 0, 0xb
    stw 0, 0x230(29)
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_801AE2C8
    lwz 0, 0x290(29)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801AE2C0
    li 0, 0x64
    stw 0, 0x244(29)
L_801AE2C0:
    li 0, 0x1
    stw 0, 0x230(29)
L_801AE2C8:
    lwz 0, 0x230(29)
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_801AE2DC
    mr 3, 29
    bl Ddgo_ApplyState
L_801AE2DC:
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    psq_l 29, 0x98(1), 0, 0
    lfd 29, 0x90(1)
    psq_l 28, 0x88(1), 0, 0
    lfd 28, 0x80(1)
    psq_l 27, 0x78(1), 0, 0
    lfd 27, 0x70(1)
    psq_l 26, 0x68(1), 0, 0
    lfd 26, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0xc4(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

