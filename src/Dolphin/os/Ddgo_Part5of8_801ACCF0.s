# DDGO cluster, part 5/8 (Track A byte-match + overview - 772B).
# update() state handler #1 - uses the confirmed effect spawn/sync
# fn_8013CB44/fn_8013CC50, the terrain/hazard classifier fn_8022461C,
# the generic FourCC actor dispatcher fn_801F9484, fn_801F0E34/
# fn_801F2B7C/SpatialRegistry_GetBase, plus unfamiliar fn_800EF008/fn_801F2B20/
# fn_8022517C.
.section extab, "a"
.balign 4
.global etb_80007B0C
etb_80007B0C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80007B0C, 8

.section extabindex, "a"
.balign 4
.global eti_80014A10
eti_80014A10:
    .4byte fn_801ACCF0
    .4byte 0x00000304
    .4byte etb_80007B0C
.size eti_80014A10, 12

.text
.balign 4
.global fn_801ACCF0

fn_801ACCF0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 31, 3
    .4byte 0xC3C2B830 # lfs f30, lbl_8053E7D0@sda21(r0)
    lwz 0, 0x294(3)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_801ACD30
    .4byte 0xC3C2B840 # lfs f30, lbl_8053E7E0@sda21(r0)
L_801ACD30:
    lwz 0, 0x230(31)
    cmpwi 0, 0xd
    .4byte 0x4182005C # beq .L_801ACD94
    .4byte 0x4080028C # bge .L_801ACFC8
    cmpwi 0, 0xc
    .4byte 0x40800008 # bge .L_801ACD4C
    .4byte 0x48000280 # b .L_801ACFC8
L_801ACD4C:
    fmr 1, 30
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x1ac
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x29c(31)
    lwz 0, 0x29c(31)
    cmplwi 0, 0x0
    .4byte 0x41820248 # beq .L_801ACFC8
    li 3, 0x8
    li 0, 0xd
    stw 3, 0x238(31)
    stw 0, 0x230(31)
L_801ACD94:
    lwz 3, 0x29c(31)
    cmplwi 3, 0x0
    .4byte 0x4182006C # beq .L_801ACE08
    lwz 0, 0x98(31)
    li 29, 0x0
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_801ACDB4
    li 29, 0x4000
L_801ACDB4:
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x98(31)
    lis 5, lbl_804689C0@ha
    lwz 4, 0x29c(31)
    addi 5, 5, lbl_804689C0@l
    slwi 0, 0, 2
    extsh 3, 29
    lwzx 0, 5, 0
    addi 6, 4, 0x68
    li 5, -0x8000
    extsh 4, 0
    bl fn_800EF008
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x11
    li 5, 0x0
    bl fn_801F0E34
L_801ACE08:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082015C # bne .L_801ACF6C
    lwz 0, 0x98(31)
    lis 3, lbl_804A31C8@ha
    addi 4, 3, lbl_804A31C8@l
    mr 3, 31
    slwi 0, 0, 4
    li 5, -0x1
    lfsx 0, 4, 0
    add 4, 4, 0
    lfs 1, 0x4(4)
    li 6, 0x9
    fmuls 0, 30, 0
    lfs 3, 0xc(4)
    lfs 2, 0x8(4)
    fmuls 1, 30, 1
    fmuls 3, 30, 3
    stfs 0, 0x60(31)
    fmuls 0, 30, 2
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 3, 0x6c(31)
    lwz 4, 0x114(31)
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x5
    bl fn_801F2B20
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_801ACF6C
    li 0, 0x1
    .4byte 0xC062B844 # lfs f3, lbl_8053E7E4@sda21(r0)
    stw 0, 0x254(31)
    li 29, 0x0
    lfs 1, 0x68(31)
    lfs 5, 0x60(31)
    lfs 0, 0xc(31)
    fsubs 4, 1, 5
    lfs 2, 0x6c(31)
    lfs 1, 0x64(31)
    fadds 0, 0, 5
    fsubs 1, 2, 1
    fmuls 30, 4, 3
    stfs 0, 0x8(1)
    fmuls 31, 1, 3
L_801ACED0:
    lfs 1, 0x10(31)
    li 30, 0x0
    lfs 0, 0x64(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_801ACEE4:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x21
    .4byte 0x4182001C # beq .L_801ACF14
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    bl fn_8022517C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_801ACF3C
L_801ACF14:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lis 7, 0x1
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a45
    addi 6, 1, 0x8
    subi 7, 7, 0x1f40
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_801ACF3C:
    lfs 0, 0xc(1)
    addi 30, 30, 0x1
    cmpwi 30, 0x8
    fadds 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FF94 # blt .L_801ACEE4
    lfs 0, 0x8(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x8
    fadds 0, 0, 30
    stfs 0, 0x8(1)
    .4byte 0x4180FF68 # blt .L_801ACED0
L_801ACF6C:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41810054 # bgt .L_801ACFC8
    lwz 5, 0x29c(31)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_801ACFA0
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x29c(31)
L_801ACFA0:
    lwz 5, 0x2a0(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_801ACFC0
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2a0(31)
L_801ACFC0:
    li 0, 0x0
    stb 0, 0x11c(31)
L_801ACFC8:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x54(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

