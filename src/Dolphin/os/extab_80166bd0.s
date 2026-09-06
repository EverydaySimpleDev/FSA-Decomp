.section extab, "a"
.balign 4
.global etb_8000716C
etb_8000716C:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_8000716C, 8

.global etb_80007174
etb_80007174:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007174, 8

.section extabindex, "a"
.balign 4
.global eti_80013D50
eti_80013D50:
    .4byte fn_80166BD0
    .4byte 0x000002F4
    .4byte etb_8000716C
.size eti_80013D50, 12

.global eti_80013D5C
eti_80013D5C:
    .4byte fn_80166EC4
    .4byte 0x0000071C
    .4byte etb_80007174
.size eti_80013D5C, 12

.text
.balign 4
.global fn_80166BD0
.global fn_80166EC4
.global fn_801675E0
.global fn_8016767C

fn_80166BD0:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x40820238 # bne .L_80166E58
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80166C9C
L_80166C3C:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_80166C9C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80166C3C
    .4byte 0xC022A858 # lfs f1, lbl_8053D7F8@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lfs 30, 0x25c(31)
    lfs 29, 0x258(31)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022A858 # lfs f1, lbl_8053D7F8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022A858 # lfs f1, lbl_8053D7F8@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A858 # lfs f1, lbl_8053D7F8@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    fmuls 7, 30, 26
    stw 0, 0x50(1)
    fneg 6, 27
    fmuls 10, 31, 3
    fmuls 2, 28, 27
    fmuls 9, 31, 26
    fmuls 1, 28, 26
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x8(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x18(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x28(1)
    fmuls 0, 29, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 0, 0x4(31)
    lwz 3, 0x250(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x9d
    .4byte 0x40800078 # bge .L_80166E7C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80466320@ha
    addi 5, 3, lbl_80466320@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A85C # lfs f1, lbl_8053D7FC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x38
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x48000028 # b .L_80166E7C
L_80166E58:
    .4byte 0xC022A85C # lfs f1, lbl_8053D7FC@sda21(r0)
    lis 4, lbl_80466320@ha
    lwz 5, 0x250(31)
    addi 4, 4, lbl_80466320@l
    fmr 2, 1
    li 6, 0x0
    addi 5, 5, 0x9d
    li 7, 0x0
    bl fn_801F06F0
L_80166E7C:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 0, 0xe4(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_80166EC4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    lwz 0, 0x26c(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_80166F14
    .4byte 0xC022A858 # lfs f1, lbl_8053D7F8@sda21(r0)
    addi 3, 30, 0x254
    .4byte 0xC042A85C # lfs f2, lbl_8053D7FC@sda21(r0)
    .4byte 0xC062A860 # lfs f3, lbl_8053D800@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x254(30)
    lwz 3, 0x26c(30)
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    stb 0, 0xbb(3)
L_80166F14:
    mr 3, 30
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_80166F38
    mr 3, 30
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80166F74
L_80166F38:
    lwz 5, 0x26c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80166F60
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x26c(30)
L_80166F60:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000658 # b .L_801675C8
L_80166F74:
    lwz 3, 0x234(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80166F88
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_80166F88:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80166F9C
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_80166F9C:
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80166FB0
    subi 0, 3, 0x1
    stw 0, 0x23c(30)
L_80166FB0:
    lwz 3, 0x240(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80166FC4
    subi 0, 3, 0x1
    stw 0, 0x240(30)
L_80166FC4:
    lfs 1, 0x260(30)
    addi 3, 30, 0x3c
    .4byte 0xC042A864 # lfs f2, lbl_8053D804@sda21(r0)
    .4byte 0xC062A85C # lfs f3, lbl_8053D7FC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x264(30)
    addi 3, 30, 0x40
    .4byte 0xC042A864 # lfs f2, lbl_8053D804@sda21(r0)
    .4byte 0xC062A85C # lfs f3, lbl_8053D7FC@sda21(r0)
    bl fn_801F71A4
    addi 3, 30, 0xc
    psq_l 0, 0x3c(30), 0, 0
    psq_l 1, 0x0(3), 0, 0
    li 31, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 0, 0x230(30)
    cmpwi 0, 0x3
    .4byte 0x4182007C # beq .L_80167098
    lwz 4, 0x4(30)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xe
    .4byte 0x40820040 # bne .L_80167070
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002A858 # lfs f0, lbl_8053D7F8@sda21(r0)
    li 0, 0x3
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x268(30)
    stfs 0, 0x264(30)
    stfs 0, 0x260(30)
    stw 0, 0x230(30)
    .4byte 0x4800002C # b .L_80167098
L_80167070:
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    mr 31, 3
L_80167098:
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x418203F8 # beq .L_80167498
    .4byte 0x40800014 # bge .L_801670B8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801670C4
    .4byte 0x40800138 # bge .L_801671E8
    .4byte 0x48000514 # b .L_801675C8
L_801670B8:
    cmpwi 0, 0x4
    .4byte 0x4080050C # bge .L_801675C8
    .4byte 0x48000470 # b .L_80167530
L_801670C4:
    lwz 5, 0x26c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_801670EC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x26c(30)
L_801670EC:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC062A85C # lfs f3, lbl_8053D7FC@sda21(r0)
    lwz 4, 0xb4(6)
    li 3, 0x0
    .4byte 0xC082A868 # lfs f4, lbl_8053D808@sda21(r0)
    li 0, 0x1
    mullw 4, 4, 5
    .4byte 0xC042A86C # lfs f2, lbl_8053D80C@sda21(r0)
    .4byte 0xC022A870 # lfs f1, lbl_8053D810@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x1c(1)
    lfs 0, 0x1c(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    stw 4, 0x244(30)
    stw 3, 0x248(30)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 5
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(4)
    lwz 3, 0xb4(4)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 0, 0x18(1)
    fsubs 0, 0, 3
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 3, 3, 0x14
    stw 3, 0x238(30)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 5
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(4)
    lwz 3, 0xb4(4)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 3, 0x44(1)
    addi 3, 3, 0x64
    stw 3, 0x23c(30)
    stw 0, 0x230(30)
L_801671E8:
    lfs 0, 0x14(30)
    .4byte 0xC022A858 # lfs f1, lbl_8053D7F8@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820204 # bne .L_801673FC
    stfs 1, 0x14(30)
    stfs 1, 0x44(30)
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x408200C4 # bne .L_801672D0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC042A85C # lfs f2, lbl_8053D7FC@sda21(r0)
    lwz 0, 0xb4(6)
    addi 5, 4, 0x660d
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC062A874 # lfs f3, lbl_8053D814@sda21(r0)
    mullw 3, 0, 5
    .4byte 0xC002A878 # lfs f0, lbl_8053D818@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x40(1)
    lwz 0, 0x44(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    stfs 1, 0x260(30)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x38(1)
    lwz 0, 0x3c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfs 1, 0x4(3)
    stfs 1, 0x264(30)
    stfs 0, 0x44(30)
    .4byte 0x48000040 # b .L_8016730C
L_801672D0:
    lfs 0, 0x260(30)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_801672E8
    lfs 0, 0x264(30)
    fcmpu cr0, 0, 1
    .4byte 0x41820018 # beq .L_801672FC
L_801672E8:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x18
    li 5, 0x0
    bl fn_801F0E34
L_801672FC:
    .4byte 0xC002A858 # lfs f0, lbl_8053D7F8@sda21(r0)
    stfs 0, 0x260(30)
    stfs 0, 0x264(30)
    stfs 0, 0x268(30)
L_8016730C:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820100 # bne .L_80167414
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x20
    lfs 3, 0x14(30)
    li 5, 0x170
    .4byte 0xC002A87C # lfs f0, lbl_8053D81C@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    .4byte 0xC022A880 # lfs f1, lbl_8053D820@sda21(r0)
    li 8, 0x0
    lfs 2, 0x24(1)
    li 9, 0x0
    stfs 3, 0x28(1)
    li 10, 0x1
    fsubs 0, 2, 0
    stfs 0, 0x24(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    stw 3, 0x26c(30)
    lis 4, 0x4
    .4byte 0xC002A884 # lfs f0, lbl_8053D824@sda21(r0)
    mr 3, 30
    addi 4, 4, 0x19
    li 5, 0x0
    stfs 0, 0x254(30)
    bl fn_801F0E34
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x244(30)
    addi 3, 3, 0x660d
    .4byte 0xC022A85C # lfs f1, lbl_8053D7FC@sda21(r0)
    li 0, 0x2
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC062A888 # lfs f3, lbl_8053D828@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC002A858 # lfs f0, lbl_8053D7F8@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x40(1)
    lwz 3, 0x44(1)
    addi 3, 3, 0x1
    stw 3, 0x248(30)
    stfs 0, 0x260(30)
    stfs 0, 0x264(30)
    stfs 0, 0x268(30)
    stw 0, 0x230(30)
    .4byte 0x480001D0 # b .L_801675C8
L_801673FC:
    lfs 1, 0x44(30)
    li 0, 0x14
    .4byte 0xC002A85C # lfs f0, lbl_8053D7FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
    stw 0, 0x238(30)
L_80167414:
    clrlwi. 0, 31, 24
    .4byte 0x41820020 # beq .L_80167438
    lfs 0, 0x260(30)
    .4byte 0xC022A88C # lfs f1, lbl_8053D82C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x260(30)
    lfs 0, 0x264(30)
    fmuls 0, 0, 1
    stfs 0, 0x264(30)
L_80167438:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x40820188 # bne .L_801675C8
    lwz 0, 0x244(30)
    lis 4, lbl_804A0650@ha
    lis 3, lbl_804A0638@ha
    slwi 0, 0, 2
    addi 4, 4, lbl_804A0650@l
    lwzx 0, 4, 0
    addi 3, 3, lbl_804A0638@l
    stw 0, 0x234(30)
    lwz 0, 0x244(30)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x250(30)
    lwz 3, 0x244(30)
    addi 0, 3, 0x1
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x5
    .4byte 0x40810140 # ble .L_801675C8
    li 0, 0x0
    stw 0, 0x244(30)
    .4byte 0x48000134 # b .L_801675C8
L_80167498:
    lfs 1, 0x14(30)
    .4byte 0xC002A858 # lfs f0, lbl_8053D7F8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801674B4
    stfs 0, 0x44(30)
    .4byte 0x48000014 # b .L_801674C4
L_801674B4:
    lfs 1, 0x44(30)
    .4byte 0xC002A85C # lfs f0, lbl_8053D7FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
L_801674C4:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x408200FC # bne .L_801675C8
    li 0, 0x4
    lis 3, lbl_804A0638@ha
    stw 0, 0x234(30)
    addi 3, 3, lbl_804A0638@l
    lwz 0, 0x244(30)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x250(30)
    lwz 3, 0x244(30)
    addi 0, 3, 0x1
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x5
    .4byte 0x408100C4 # ble .L_801675C8
    li 4, 0x0
    stw 4, 0x244(30)
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x418100A4 # bgt .L_801675C8
    stw 4, 0x230(30)
    .4byte 0x4800009C # b .L_801675C8
L_80167530:
    lfs 1, 0x25c(30)
    .4byte 0xC042A890 # lfs f2, lbl_8053D830@sda21(r0)
    .4byte 0xC002A894 # lfs f0, lbl_8053D834@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x25c(30)
    lfs 1, 0x258(30)
    fsubs 0, 1, 0
    stfs 0, 0x258(30)
    lfs 0, 0x258(30)
    fcmpo cr0, 0, 2
    .4byte 0x40800070 # bge .L_801675C8
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A85C # lfs f1, lbl_8053D7FC@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A85C # lfs f1, lbl_8053D7FC@sda21(r0)
    li 5, 0x2aa
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 30
    bl fn_801F3668
L_801675C8:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801675E0:
    .4byte 0xC082A898 # lfs f4, lbl_8053D838@sda21(r0)
    lis 4, 0x1
    .4byte 0xC062A87C # lfs f3, lbl_8053D81C@sda21(r0)
    li 6, 0x0
    stfs 4, 0x60(3)
    li 5, 0x4
    .4byte 0xC042A858 # lfs f2, lbl_8053D7F8@sda21(r0)
    addi 0, 4, 0x1101
    stfs 4, 0x64(3)
    .4byte 0xC022A85C # lfs f1, lbl_8053D7FC@sda21(r0)
    stfs 3, 0x68(3)
    .4byte 0xC002A884 # lfs f0, lbl_8053D824@sda21(r0)
    stfs 3, 0x6c(3)
    stfs 4, 0x80(3)
    stfs 4, 0x84(3)
    stfs 3, 0x88(3)
    stfs 3, 0x8c(3)
    stw 6, 0x244(3)
    stw 6, 0x248(3)
    stw 6, 0x24c(3)
    stw 6, 0x234(3)
    stw 6, 0x238(3)
    stw 6, 0x23c(3)
    stw 6, 0x240(3)
    stw 5, 0x108(3)
    stw 6, 0x250(3)
    stfs 2, 0x25c(3)
    stfs 1, 0x258(3)
    stfs 2, 0x260(3)
    stfs 2, 0x264(3)
    stfs 2, 0x268(3)
    stfs 2, 0x3c(3)
    stfs 2, 0x40(3)
    stfs 2, 0x44(3)
    stfs 0, 0x254(3)
    stw 6, 0x26c(3)
    stw 0, 0xb0(3)
    stw 6, 0x230(3)
    blr

fn_8016767C:
    lwz 6, 0x26c(3)
    cmplwi 6, 0x0
    beqlr
    lwz 5, 0xf4(6)
    li 4, 0x1
    li 0, 0x0
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x26c(3)
    blr

