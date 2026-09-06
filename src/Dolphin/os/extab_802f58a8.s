# fn_802F58A8 - shared rendering infrastructure: cross-product basis vectors (0x5F4)
# NOT an actor. Called only by fn_802F5570. Computes 3 cross products
# (PSVECCrossProduct x3) to build an orthonormal basis, closing out the
# 94KB-gap's shared spatial-triad/rendering-pipeline infrastructure (this
# function ends exactly at the confirmed spatial-registry triad boundary,
# 0x802F5E9C). Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D3DC
etb_8000D3DC:
    .4byte 0x128A0000
    .4byte 0x00000000
.size etb_8000D3DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C6CC
eti_8001C6CC:
    .4byte fn_802F58A8
    .4byte 0x000005F4
    .4byte etb_8000D3DC
.size eti_8001C6CC, 12

.text
.balign 4
.global fn_802F58A8

fn_802F58A8:
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
    stfd 25, 0xc0(1)
    psq_st 25, 0xc8(1), 0, 0
    stfd 24, 0xb0(1)
    psq_st 24, 0xb8(1), 0, 0
    stfd 23, 0xa0(1)
    psq_st 23, 0xa8(1), 0, 0
    stfd 22, 0x90(1)
    psq_st 22, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    addis 6, 3, 0x1
    mr 31, 5
    lwz 0, -0x3de4(6)
    li 6, 0x0
    cmpwi 0, 0x0
    .4byte 0x40810510 # ble .L_802F5E30
    lfs 5, 0x0(4)
    lfs 4, 0x2368(3)
    fcmpo cr0, 5, 4
    cror eq, gt, eq
    .4byte 0x408204FC # bne .L_802F5E30
    lwz 0, 0x2380(3)
    lis 5, 0x4330
    stw 5, 0x68(1)
    xoris 0, 0, 0x8000
    .4byte 0xC902E568 # lfd f8, lbl_80541508@sda21(r0)
    stw 0, 0x6c(1)
    .4byte 0xC002E570 # lfs f0, lbl_80541510@sda21(r0)
    lfd 3, 0x68(1)
    fsubs 3, 3, 8
    fmadds 3, 0, 3, 4
    fcmpo cr0, 5, 3
    .4byte 0x408004CC # bge .L_802F5E30
    lfs 9, 0x4(4)
    lfs 6, 0x236c(3)
    fcmpo cr0, 9, 6
    cror eq, gt, eq
    .4byte 0x408204B8 # bne .L_802F5E30
    lwz 0, 0x2384(3)
    stw 5, 0x68(1)
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 3, 0x68(1)
    fsubs 3, 3, 8
    fmadds 3, 0, 3, 6
    fcmpo cr0, 9, 3
    .4byte 0x40800494 # bge .L_802F5E30
    fsubs 25, 5, 4
    .4byte 0xC0E2E574 # lfs f7, lbl_80541514@sda21(r0)
    fsubs 24, 9, 6
    lwz 0, 0x2388(3)
    stw 5, 0x78(1)
    addi 6, 1, 0x5c
    fmuls 4, 7, 25
    slwi 0, 0, 2
    fmuls 3, 7, 24
    add 3, 3, 0
    lwz 4, 0x100(3)
    fctiwz 4, 4
    fctiwz 3, 3
    .4byte 0xC0C2E578 # lfs f6, lbl_80541518@sda21(r0)
    stw 5, 0x80(1)
    stfd 4, 0x68(1)
    lwz 0, 0x6c(1)
    stfd 3, 0x70(1)
    xoris 3, 0, 0x8000
    lwz 7, 0x74(1)
    mulli 0, 0, 0xc
    stw 3, 0x7c(1)
    xoris 5, 7, 0x8000
    mulli 3, 7, 0x30c
    lfd 3, 0x78(1)
    stw 5, 0x84(1)
    fsubs 5, 3, 8
    add 30, 3, 0
    lfd 4, 0x80(1)
    add 30, 4, 30
    lfs 3, 0x0(30)
    fnmsubs 5, 0, 5, 25
    fsubs 4, 4, 8
    stfs 3, 0x5c(1)
    fmuls 5, 7, 5
    lfs 3, 0x4(30)
    fnmsubs 0, 0, 4, 24
    stfs 3, 0x60(1)
    fsubs 2, 6, 5
    fmuls 23, 7, 0
    lfs 0, 0x8(30)
    fmr 1, 5
    psq_l 3, 0x0(6), 0, 0
    stfs 0, 0x64(1)
    fsubs 22, 6, 23
    ps_muls0 8, 3, 2
    psq_l 0, 0x8(6), 1, 0
    ps_muls0 7, 0, 2
    psq_st 8, 0x0(6), 0, 0
    psq_st 7, 0x8(6), 1, 0
    lfs 5, 0xc(30)
    lfs 4, 0x10(30)
    lfs 3, 0x14(30)
    lfs 0, 0x30c(30)
    stfs 3, 0x58(1)
    psq_l 3, 0x58(1), 1, 0
    stfs 0, 0x5c(1)
    ps_muls0 3, 3, 1
    lfs 0, 0x310(30)
    stfs 5, 0x50(1)
    ps_add 5, 3, 7
    stfs 4, 0x54(1)
    psq_l 4, 0x50(1), 0, 0
    ps_muls0 7, 5, 22
    psq_st 3, 0x58(1), 1, 0
    ps_muls0 3, 4, 1
    stfs 0, 0x60(1)
    ps_add 4, 3, 8
    psq_st 3, 0x50(1), 0, 0
    lfs 0, 0x314(30)
    psq_st 5, 0x58(1), 1, 0
    ps_muls0 5, 4, 22
    psq_st 4, 0x50(1), 0, 0
    psq_st 5, 0x50(1), 0, 0
    psq_st 7, 0x58(1), 1, 0
    stfs 0, 0x64(1)
    psq_l 0, 0x0(6), 0, 0
    mr 3, 6
    psq_l 3, 0x8(6), 1, 0
    addi 4, 1, 0x20
    ps_muls0 9, 0, 2
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    ps_muls0 8, 3, 2
    addi 5, 1, 0x38
    psq_st 9, 0x0(6), 0, 0
    psq_st 8, 0x8(6), 1, 0
    lfs 4, 0x318(30)
    lfs 3, 0x31c(30)
    lfs 2, 0x320(30)
    stfs 4, 0x44(1)
    psq_l 4, 0xc(30), 0, 0
    stfs 3, 0x48(1)
    psq_l 3, 0x0(30), 0, 0
    stfs 2, 0x4c(1)
    psq_l 2, 0x44(1), 0, 0
    ps_sub 4, 4, 3
    psq_l 3, 0x4c(1), 1, 0
    ps_muls0 2, 2, 1
    ps_muls0 1, 3, 1
    psq_st 4, 0x0(6), 0, 0
    ps_add 3, 2, 9
    psq_st 2, 0x44(1), 0, 0
    ps_add 2, 1, 8
    psq_l 9, 0x14(30), 1, 0
    psq_l 8, 0x8(30), 1, 0
    psq_st 1, 0x4c(1), 1, 0
    ps_muls0 4, 3, 23
    ps_muls0 1, 2, 23
    psq_st 3, 0x44(1), 0, 0
    ps_sub 8, 9, 8
    psq_st 2, 0x4c(1), 1, 0
    ps_add 3, 4, 5
    ps_add 2, 1, 7
    psq_st 4, 0x44(1), 0, 0
    psq_st 1, 0x4c(1), 1, 0
    psq_st 3, 0x44(1), 0, 0
    psq_st 2, 0x4c(1), 1, 0
    psq_st 8, 0x8(6), 1, 0
    stfs 0, 0x20(1)
    stfs 6, 0x24(1)
    stfs 0, 0x28(1)
    bl PSVECCrossProduct
    psq_l 2, 0x38(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 28, 0x40(1)
    ps_mul 2, 2, 2
    .4byte 0xC022E57C # lfs f1, lbl_8054151C@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 28, 28, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_802F5C0C
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802F5BD0
    fmr 31, 4
    .4byte 0x48000028 # b .L_802F5BF4
L_802F5BD0:
    frsqrte 3, 4
    .4byte 0xC042E580 # lfs f2, lbl_80541520@sda21(r0)
    .4byte 0xC002E584 # lfs f0, lbl_80541524@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_802F5BF4:
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_802F5C0C:
    psq_l 1, 0x38(1), 0, 0
    addi 3, 1, 0x5c
    psq_l 0, 0x40(1), 1, 0
    addi 4, 1, 0x14
    ps_muls0 3, 1, 22
    .4byte 0xC022E558 # lfs f1, lbl_805414F8@sda21(r0)
    ps_muls0 2, 0, 22
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    addi 5, 1, 0x2c
    psq_st 3, 0x38(1), 0, 0
    psq_st 2, 0x40(1), 1, 0
    psq_l 3, 0x318(30), 0, 0
    psq_l 2, 0x30c(30), 0, 0
    ps_sub 2, 3, 2
    psq_st 2, 0x0(3), 0, 0
    psq_l 3, 0x320(30), 1, 0
    psq_l 2, 0x314(30), 1, 0
    ps_sub 2, 3, 2
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    psq_st 2, 0x8(3), 1, 0
    stfs 1, 0x1c(1)
    bl PSVECCrossProduct
    psq_l 2, 0x2c(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 27, 0x34(1)
    ps_mul 2, 2, 2
    .4byte 0xC022E57C # lfs f1, lbl_8054151C@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 27, 27, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_802F5CEC
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802F5CB0
    fmr 30, 4
    .4byte 0x48000028 # b .L_802F5CD4
L_802F5CB0:
    frsqrte 3, 4
    .4byte 0xC042E580 # lfs f2, lbl_80541520@sda21(r0)
    .4byte 0xC002E584 # lfs f0, lbl_80541524@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_802F5CD4:
    psq_l 1, 0x2c(1), 0, 0
    psq_l 0, 0x34(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x2c(1), 0, 0
    psq_st 0, 0x34(1), 1, 0
L_802F5CEC:
    psq_l 0, 0x2c(1), 0, 0
    lis 3, lbl_80539D44@ha
    psq_l 1, 0x34(1), 1, 0
    ps_muls0 0, 0, 23
    psq_l 4, 0x38(1), 0, 0
    ps_muls0 3, 1, 23
    psq_l 1, 0x40(1), 1, 0
    .4byte 0xC042E558 # lfs f2, lbl_805414F8@sda21(r0)
    ps_add 5, 0, 4
    psq_st 0, 0x2c(1), 0, 0
    ps_add 4, 3, 1
    .4byte 0xC022E57C # lfs f1, lbl_8054151C@sda21(r0)
    psq_st 5, 0x2c(1), 0, 0
    lfs 0, lbl_80539D44@l(3)
    stfs 2, 0x30(1)
    fmuls 0, 1, 0
    psq_st 3, 0x34(1), 1, 0
    psq_l 1, 0x2c(1), 0, 0
    psq_st 4, 0x34(1), 1, 0
    ps_mul 1, 1, 1
    lfs 26, 0x34(1)
    ps_madd 4, 26, 26, 1
    ps_sum0 4, 4, 1, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_802F5DA4
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802F5D68
    fmr 29, 4
    .4byte 0x48000028 # b .L_802F5D8C
L_802F5D68:
    frsqrte 3, 4
    .4byte 0xC042E580 # lfs f2, lbl_80541520@sda21(r0)
    .4byte 0xC002E584 # lfs f0, lbl_80541524@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_802F5D8C:
    psq_l 1, 0x2c(1), 0, 0
    psq_l 0, 0x34(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x2c(1), 0, 0
    psq_st 0, 0x34(1), 1, 0
L_802F5DA4:
    .4byte 0xC022E558 # lfs f1, lbl_805414F8@sda21(r0)
    addi 3, 1, 0x8
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    addi 4, 1, 0x2c
    stfs 1, 0x8(1)
    addi 5, 1, 0x38
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    bl PSVECCrossProduct
    lfs 8, 0x34(1)
    li 6, 0x1
    lfs 7, 0x40(1)
    lfs 6, 0x30(1)
    lfs 0, 0x44(1)
    lfs 5, 0x3c(1)
    lfs 3, 0x2c(1)
    fsubs 4, 0, 25
    lfs 0, 0x38(1)
    .4byte 0xC022E558 # lfs f1, lbl_805414F8@sda21(r0)
    stfs 0, 0x0(31)
    lfs 2, 0x48(1)
    stfs 1, 0x4(31)
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    fsubs 2, 2, 24
    stfs 3, 0x8(31)
    lfs 3, 0x4c(1)
    stfs 4, 0xc(31)
    stfs 5, 0x10(31)
    stfs 0, 0x14(31)
    stfs 6, 0x18(31)
    stfs 2, 0x1c(31)
    stfs 7, 0x20(31)
    stfs 1, 0x24(31)
    stfs 8, 0x28(31)
    stfs 3, 0x2c(31)
L_802F5E30:
    clrlwi 3, 6, 24
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
    psq_l 25, 0xc8(1), 0, 0
    lfd 25, 0xc0(1)
    psq_l 24, 0xb8(1), 0, 0
    lfd 24, 0xb0(1)
    psq_l 23, 0xa8(1), 0, 0
    lfd 23, 0xa0(1)
    psq_l 22, 0x98(1), 0, 0
    lfd 22, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 0, 0x134(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

