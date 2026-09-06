# EGOL cluster, part 3/6 (Track A byte-match + overview - 2304B).
# update() core - uses the confirmed effect spawn fn_8013CC50,
# knockback fn_801F3D94, ease fn_801F71A4, fn_801EEC98/fn_801EF510/
# fn_801F0E34/fn_801F2618/fn_801F285C/fn_801F2B7C, plus unfamiliar
# fn_80237948.
.section extab, "a"
.balign 4
.global etb_80007B7C
etb_80007B7C:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80007B7C, 8

.section extabindex, "a"
.balign 4
.global eti_80014AB8
eti_80014AB8:
    .4byte fn_801AFD54
    .4byte 0x00000900
    .4byte etb_80007B7C
.size eti_80014AB8, 12

.text
.balign 4
.global fn_801AFD54

fn_801AFD54:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x20(1)
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_801AFDB0
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000878 # b .L_801B0624
L_801AFDB0:
    lwz 0, 0x108(31)
    cmpwi 0, 0x3e8
    .4byte 0x40800024 # bge .L_801AFDDC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0xb0(31)
    .4byte 0x4800084C # b .L_801B0624
L_801AFDDC:
    mr 3, 31
    bl fn_801EF510
    lfs 1, 0x25c(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B8F8 # lfs f2, lbl_8053E898@sda21(r0)
    .4byte 0xC062B8E8 # lfs f3, lbl_8053E888@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x260(31)
    addi 3, 31, 0x40
    .4byte 0xC042B8F8 # lfs f2, lbl_8053E898@sda21(r0)
    .4byte 0xC062B8E8 # lfs f3, lbl_8053E888@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    li 30, 0x0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_801AFE30:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x418000BC # blt .L_801AFF08
    lfs 3, 0x60(31)
    addi 4, 1, 0x24
    lfs 0, 0xc(31)
    lfs 5, 0x68(31)
    lfs 4, 0x64(31)
    fadds 3, 3, 0
    lfs 1, 0x10(31)
    fadds 5, 5, 0
    lfs 6, 0x6c(31)
    fadds 4, 4, 1
    .4byte 0xC042B8FC # lfs f2, lbl_8053E89C@sda21(r0)
    fadds 6, 6, 1
    fsubs 1, 3, 5
    fsubs 0, 4, 6
    fmadds 1, 2, 1, 5
    fmadds 0, 2, 0, 6
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801AFF08
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B8E8 # lfs f1, lbl_8053E888@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B8E8 # lfs f1, lbl_8053E888@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801AFF08:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF20 # blt .L_801AFE30
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x20
    addi 7, 1, 0x1c
    li 5, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x41820164 # beq .L_801B00C8
    .4byte 0x4080001C # bge .L_801AFF84
    cmpwi 0, 0x1
    .4byte 0x41820078 # beq .L_801AFFE8
    .4byte 0x408000CC # bge .L_801B0040
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_801AFF94
    .4byte 0x48000650 # b .L_801B05D0
L_801AFF84:
    cmpwi 0, 0x5
    .4byte 0x41820300 # beq .L_801B0288
    .4byte 0x40800644 # bge .L_801B05D0
    .4byte 0x480001C4 # b .L_801B0154
L_801AFF94:
    .4byte 0xC002B8F0 # lfs f0, lbl_8053E890@sda21(r0)
    lis 3, 0xa04
    addi 6, 3, 0x4
    li 5, 0x2
    stfs 0, 0x264(31)
    li 4, 0xc
    li 3, 0x4
    li 0, 0x1
    stfs 0, 0x260(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 6, 0xb0(31)
    stw 5, 0x98(31)
    lwz 5, 0x98(31)
    slwi 5, 5, 2
    stw 5, 0x250(31)
    stw 4, 0x234(31)
    stw 3, 0xbc(31)
    stw 0, 0x230(31)
L_801AFFE8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801B0000
    lwz 3, 0x98(31)
    addi 0, 3, 0x10
    stw 0, 0x250(31)
L_801B0000:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408205C8 # bne .L_801B05D0
    lwz 0, 0x20(1)
    cmpwi 0, 0x0
    .4byte 0x418005BC # blt .L_801B05D0
    lfs 1, 0x1c(1)
    .4byte 0xC002B900 # lfs f0, lbl_8053E8A0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418105AC # bgt .L_801B05D0
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x244(31)
    stw 3, 0x248(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_801B0040:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820588 # bne .L_801B05D0
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B0068
    lwz 0, 0x98(31)
    slwi 0, 0, 2
    stw 0, 0x250(31)
    .4byte 0x48000040 # b .L_801B00A4
L_801B0068:
    lwz 3, 0x98(31)
    addi 0, 3, 0x10
    stw 0, 0x250(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x4081001C # ble .L_801B00A4
    lwz 3, 0x98(31)
    li 0, 0x3
    slwi 3, 3, 2
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x48000530 # b .L_801B05D0
L_801B00A4:
    li 0, 0xc
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 31
    stw 0, 0x244(31)
    .4byte 0x4800050C # b .L_801B05D0
L_801B00C8:
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1e
    .4byte 0x408104F4 # ble .L_801B05D0
    li 4, 0x0
    lis 3, 0x19
    stw 4, 0x244(31)
    addi 3, 3, 0x660d
    .4byte 0xC002B8E8 # lfs f0, lbl_8053E888@sda21(r0)
    li 0, 0x4
    stw 4, 0x234(31)
    .4byte 0xC042B904 # lfs f2, lbl_8053E8A4@sda21(r0)
    stw 4, 0x24c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x8c
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    .4byte 0x48000480 # b .L_801B05D0
L_801B0154:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_801B018C
    lwz 4, 0x20(1)
    cmpwi 4, 0x0
    .4byte 0x41800024 # blt .L_801B018C
    lwz 0, 0x98(31)
    cmpw 0, 4
    .4byte 0x41820010 # beq .L_801B0184
    li 0, 0x0
    stw 0, 0x234(31)
    stw 0, 0x244(31)
L_801B0184:
    lwz 0, 0x20(1)
    stw 0, 0x98(31)
L_801B018C:
    .4byte 0xC022B8F0 # lfs f1, lbl_8053E890@sda21(r0)
    stfs 1, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801B01F0
    .4byte 0x40800014 # bge .L_801B01BC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801B01C8
    .4byte 0x40800028 # bge .L_801B01DC
    .4byte 0x4800005C # b .L_801B0214
L_801B01BC:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801B0214
    .4byte 0x48000040 # b .L_801B0204
L_801B01C8:
    .4byte 0xC002B908 # lfs f0, lbl_8053E8A8@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 1, 0x260(31)
    stfs 1, 0x264(31)
    .4byte 0x4800003C # b .L_801B0214
L_801B01DC:
    .4byte 0xC002B90C # lfs f0, lbl_8053E8AC@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 1, 0x260(31)
    stfs 1, 0x264(31)
    .4byte 0x48000028 # b .L_801B0214
L_801B01F0:
    stfs 1, 0x25c(31)
    .4byte 0xC002B908 # lfs f0, lbl_8053E8A8@sda21(r0)
    stfs 0, 0x260(31)
    stfs 1, 0x264(31)
    .4byte 0x48000014 # b .L_801B0214
L_801B0204:
    stfs 1, 0x25c(31)
    .4byte 0xC002B90C # lfs f0, lbl_8053E8AC@sda21(r0)
    stfs 0, 0x260(31)
    stfs 1, 0x264(31)
L_801B0214:
    lis 5, 0xa04
    lis 4, 0x19
    addi 0, 5, 0x10
    li 5, 0x3
    stw 0, 0xb0(31)
    addi 4, 4, 0x660d
    .4byte 0xC002B8E8 # lfs f0, lbl_8053E888@sda21(r0)
    li 0, 0x5
    stw 5, 0xbc(31)
    .4byte 0xC042B910 # lfs f2, lbl_8053E8B0@sda21(r0)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    addi 4, 4, 0x14
    stw 4, 0x238(31)
    stw 0, 0x230(31)
L_801B0288:
    clrlwi. 0, 3, 24
    .4byte 0x4182024C # beq .L_801B04D8
    lwz 4, 0x98(31)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B8E8 # lfs f1, lbl_8053E888@sda21(r0)
    xori 3, 4, 0x2
    .4byte 0xC002B8FC # lfs f0, lbl_8053E89C@sda21(r0)
    stw 3, 0x98(31)
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
    .4byte 0x40800010 # bge .L_801B02F0
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
L_801B02F0:
    lfs 31, 0xc(31)
    lfs 30, 0x10(31)
    lfs 29, 0x14(31)
    .4byte 0xC022B8F0 # lfs f1, lbl_8053E890@sda21(r0)
    stfs 1, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801B0360
    .4byte 0x40800014 # bge .L_801B032C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801B0338
    .4byte 0x40800028 # bge .L_801B034C
    .4byte 0x4800005C # b .L_801B0384
L_801B032C:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801B0384
    .4byte 0x48000040 # b .L_801B0374
L_801B0338:
    .4byte 0xC002B914 # lfs f0, lbl_8053E8B4@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 1, 0x260(31)
    stfs 1, 0x264(31)
    .4byte 0x4800003C # b .L_801B0384
L_801B034C:
    .4byte 0xC002B918 # lfs f0, lbl_8053E8B8@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 1, 0x260(31)
    stfs 1, 0x264(31)
    .4byte 0x48000028 # b .L_801B0384
L_801B0360:
    stfs 1, 0x25c(31)
    .4byte 0xC002B914 # lfs f0, lbl_8053E8B4@sda21(r0)
    stfs 0, 0x260(31)
    stfs 1, 0x264(31)
    .4byte 0x48000014 # b .L_801B0384
L_801B0374:
    stfs 1, 0x25c(31)
    .4byte 0xC002B918 # lfs f0, lbl_8053E8B8@sda21(r0)
    stfs 0, 0x260(31)
    stfs 1, 0x264(31)
L_801B0384:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x25c(31), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x264(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801B03C8
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
L_801B03C8:
    stfs 31, 0xc(31)
    lis 3, 0x19
    .4byte 0xC062B8F0 # lfs f3, lbl_8053E890@sda21(r0)
    addi 3, 3, 0x660d
    stfs 30, 0x10(31)
    li 0, 0x0
    .4byte 0xC002B8E8 # lfs f0, lbl_8053E888@sda21(r0)
    stfs 29, 0x14(31)
    .4byte 0xC042B910 # lfs f2, lbl_8053E8B0@sda21(r0)
    stfs 3, 0x264(31)
    stfs 3, 0x260(31)
    stfs 3, 0x25c(31)
    stfs 3, 0x44(31)
    stfs 3, 0x40(31)
    stfs 3, 0x3c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x14
    stw 3, 0x240(31)
    stw 0, 0x234(31)
    stfs 3, 0x44(31)
    stfs 3, 0x40(31)
    stfs 3, 0x3c(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801B04B0
    .4byte 0x40800014 # bge .L_801B047C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801B0488
    .4byte 0x40800028 # bge .L_801B049C
    .4byte 0x48000158 # b .L_801B05D0
L_801B047C:
    cmpwi 0, 0x4
    .4byte 0x40800150 # bge .L_801B05D0
    .4byte 0x48000040 # b .L_801B04C4
L_801B0488:
    .4byte 0xC002B908 # lfs f0, lbl_8053E8A8@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 3, 0x260(31)
    stfs 3, 0x264(31)
    .4byte 0x48000138 # b .L_801B05D0
L_801B049C:
    .4byte 0xC002B90C # lfs f0, lbl_8053E8AC@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 3, 0x260(31)
    stfs 3, 0x264(31)
    .4byte 0x48000124 # b .L_801B05D0
L_801B04B0:
    stfs 3, 0x25c(31)
    .4byte 0xC002B908 # lfs f0, lbl_8053E8A8@sda21(r0)
    stfs 0, 0x260(31)
    stfs 3, 0x264(31)
    .4byte 0x48000110 # b .L_801B05D0
L_801B04C4:
    stfs 3, 0x25c(31)
    .4byte 0xC002B90C # lfs f0, lbl_8053E8AC@sda21(r0)
    stfs 0, 0x260(31)
    stfs 3, 0x264(31)
    .4byte 0x480000FC # b .L_801B05D0
L_801B04D8:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_801B055C
    li 4, 0x0
    lis 3, 0x19
    stw 4, 0x234(31)
    addi 0, 3, 0x660d
    .4byte 0xC002B8E8 # lfs f0, lbl_8053E888@sda21(r0)
    stw 4, 0x244(31)
    .4byte 0xC042B91C # lfs f2, lbl_8053E8BC@sda21(r0)
    lwz 3, 0x98(31)
    addi 3, 3, 0x10
    stw 3, 0x250(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 0, 3, 0x3c
    stw 0, 0x23c(31)
    stw 4, 0x230(31)
    .4byte 0x48000078 # b .L_801B05D0
L_801B055C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_801B05BC
    lwz 4, 0x98(31)
    li 0, 0x6
    lwz 3, 0x244(31)
    slwi 4, 4, 2
    add 3, 4, 3
    stw 3, 0x250(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 30
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820018 # beq .L_801B05BC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x7c
    li 5, 0x0
    bl fn_801F0E34
L_801B05BC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801B05D0
    li 0, 0x4
    stw 0, 0x230(31)
L_801B05D0:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B05E4
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801B05E4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B05F8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801B05F8:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B0610
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801B0610:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B0624
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_801B0624:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 0, 0x74(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

