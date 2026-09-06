# ENBZ cluster, part 3/4 (Track A byte-match + overview - 820B). Core
# update()/behavior - uses fn_801F666C/SpatialRegistry_GetBase (handle resolve)
# and the confirmed generic FourCC actor dispatcher fn_801F9484
# (spawns a companion/projectile).
.section extab, "a"
.balign 4
.global etb_80007994
etb_80007994:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80007994, 8

.section extabindex, "a"
.balign 4
.global eti_800147DC
eti_800147DC:
    .4byte fn_801A3610
    .4byte 0x00000334
    .4byte etb_80007994
.size eti_800147DC, 12

.text
.balign 4
.global fn_801A3610

fn_801A3610:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 27, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820228 # beq .L_801A3854
    .4byte 0x408002C4 # bge .L_801A38F4
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801A3640
    .4byte 0x480002B8 # b .L_801A38F4
L_801A3640:
    lwz 0, 0x280(27)
    cmpwi 0, 0x0
    .4byte 0x408202AC # bne .L_801A38F4
    mr 31, 27
    li 30, 0x0
    .4byte 0x480001EC # b .L_801A3840
L_801A3658:
    lwz 0, 0x244(31)
    cmpwi 0, -0x1
    .4byte 0x408201D8 # bne .L_801A3838
    lwz 0, 0x234(27)
    lwz 28, 0x238(27)
    cmplwi 0, 0x0
    mr 29, 0
    .4byte 0x4082006C # bne .L_801A36E0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, lbl_804A2C80@ha
    .4byte 0xC002B614 # lfs f0, lbl_8053E5B4@sda21(r0)
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    .4byte 0xC042B610 # lfs f2, lbl_8053E5B0@sda21(r0)
    addi 0, 3, lbl_804A2C80@l
    mullw 3, 5, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    slwi 3, 3, 2
    add 3, 0, 3
    lwz 29, 0x0(3)
    lwz 28, 0x4(3)
L_801A36E0:
    lfs 3, 0xc(27)
    clrlwi. 0, 30, 31
    stfs 3, 0x14(1)
    lfs 0, 0x10(27)
    stfs 0, 0x18(1)
    lfs 0, 0x14(27)
    stfs 0, 0x1c(1)
    .4byte 0x4182002C # beq .L_801A3728
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0x24(1)
    .4byte 0xC822B620 # lfd f1, lbl_8053E5C0@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC042B618 # lfs f2, lbl_8053E5B8@sda21(r0)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fnmsubs 0, 2, 0, 3
    .4byte 0x48000028 # b .L_801A374C
L_801A3728:
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    .4byte 0xC822B620 # lfd f1, lbl_8053E5C0@sda21(r0)
    stw 0, 0x28(1)
    .4byte 0xC042B618 # lfs f2, lbl_8053E5B8@sda21(r0)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 3
L_801A374C:
    stfs 0, 0x14(1)
    lis 3, 0x19
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 3, 0x660d
    .4byte 0xC062B614 # lfs f3, lbl_8053E5B4@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC082B618 # lfs f4, lbl_8053E5B8@sda21(r0)
    mullw 3, 0, 4
    .4byte 0xC042B61C # lfs f2, lbl_8053E5BC@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 1, 0x14(1)
    srwi 0, 0, 9
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fnmsubs 0, 4, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x14(1)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 1, 0x18(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fnmsubs 0, 4, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x18(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(27)
    mr 4, 29
    mr 7, 28
    addi 6, 1, 0x14
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_801A3838
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(27)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x14
    li 7, 0xb
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_801A3838:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_801A3840:
    lwz 0, 0x240(27)
    cmpw 30, 0
    .4byte 0x4180FE10 # blt .L_801A3658
    li 0, 0x1
    stw 0, 0x230(27)
L_801A3854:
    lwz 0, 0x280(27)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_801A38F4
    mr 29, 27
    li 30, 0x0
    li 31, 0x0
    li 28, -0x1
    .4byte 0x48000048 # b .L_801A38B8
L_801A3874:
    bl SpatialRegistry_GetBase
    lwz 4, 0x244(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082002C # bne .L_801A38B0
    stw 28, 0x244(29)
    lwz 0, 0x23c(27)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801A38AC
    li 3, 0x0
    li 0, 0x4b0
    stw 3, 0x230(27)
    stw 0, 0x280(27)
    .4byte 0x48000088 # b .L_801A3930
L_801A38AC:
    addi 31, 31, 0x1
L_801A38B0:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_801A38B8:
    lwz 0, 0x240(27)
    cmpw 30, 0
    .4byte 0x4180FFB4 # blt .L_801A3874
    li 0, 0x8
    stw 0, 0x280(27)
    lwz 0, 0x240(27)
    cmpw 31, 0
    .4byte 0x40820020 # bne .L_801A38F4
    lwz 0, 0x23c(27)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_801A38F4
    li 3, 0x4b0
    li 0, 0x0
    stw 3, 0x280(27)
    stw 0, 0x230(27)
L_801A38F4:
    lwz 3, 0x280(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A3908
    subi 0, 3, 0x1
    stw 0, 0x280(27)
L_801A3908:
    lwz 3, 0x284(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A391C
    subi 0, 3, 0x1
    stw 0, 0x284(27)
L_801A391C:
    lwz 3, 0x288(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A3930
    subi 0, 3, 0x1
    stw 0, 0x288(27)
L_801A3930:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

