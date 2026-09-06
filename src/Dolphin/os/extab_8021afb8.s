.section extab, "a"
.balign 4
.global etb_8000A3AC
etb_8000A3AC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A3AC, 8

.global etb_8000A3B4
etb_8000A3B4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A3B4, 8

.global etb_8000A3BC
etb_8000A3BC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A3BC, 8

.global etb_8000A3C4
etb_8000A3C4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A3C4, 8

.global etb_8000A3CC
etb_8000A3CC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A3CC, 8

.global etb_8000A3D4
etb_8000A3D4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A3D4, 8

.global etb_8000A3DC
etb_8000A3DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A3DC, 8

.global etb_8000A3E4
etb_8000A3E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A3E4, 8

.section extabindex, "a"
.balign 4
.global eti_800180AC
eti_800180AC:
    .4byte fn_8021AFB8
    .4byte 0x000001F4
    .4byte etb_8000A3AC
.size eti_800180AC, 12

.global eti_800180B8
eti_800180B8:
    .4byte fn_8021B1AC
    .4byte 0x0000039C
    .4byte etb_8000A3B4
.size eti_800180B8, 12

.global eti_800180C4
eti_800180C4:
    .4byte fn_8021B548
    .4byte 0x00000058
    .4byte etb_8000A3BC
.size eti_800180C4, 12

.global eti_800180D0
eti_800180D0:
    .4byte fn_8021B5A0
    .4byte 0x00000024
    .4byte etb_8000A3C4
.size eti_800180D0, 12

.global eti_800180DC
eti_800180DC:
    .4byte fn_8021B5C4
    .4byte 0x000000A4
    .4byte etb_8000A3CC
.size eti_800180DC, 12

.global eti_800180E8
eti_800180E8:
    .4byte fn_8021B668
    .4byte 0x00000078
    .4byte etb_8000A3D4
.size eti_800180E8, 12

.global eti_800180F4
eti_800180F4:
    .4byte fn_8021B6E0
    .4byte 0x00000224
    .4byte etb_8000A3DC
.size eti_800180F4, 12

.global eti_80018100
eti_80018100:
    .4byte fn_8021B904
    .4byte 0x0000012C
    .4byte etb_8000A3E4
.size eti_80018100, 12

.text
.balign 4
.global fn_8021AFB8
.global fn_8021B1AC
.global fn_8021B548
.global fn_8021B5A0
.global fn_8021B5C4
.global fn_8021B668
.global fn_8021B6E0
.global fn_8021B904

fn_8021AFB8:
    stwu 1, -0x80(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 9, 1, 0x38
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8021B048
L_8021AFE8:
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
L_8021B048:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8021AFE8
    li 5, 0x1
    li 30, 0x0
    stb 5, 0x57(1)
    li 6, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    mr 3, 31
    stw 30, 0x4c(1)
    stw 30, 0x50(1)
    stb 30, 0x54(1)
    stb 30, 0x55(1)
    stb 30, 0x56(1)
    stb 5, 0x58(1)
    stb 30, 0x59(1)
    stb 30, 0x5a(1)
    stb 30, 0x5b(1)
    stb 30, 0x5c(1)
    stb 30, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 30, 0x65(1)
    stb 30, 0x66(1)
    stw 6, 0x68(1)
    stw 30, 0x6c(1)
    stw 0, 0x70(1)
    stb 30, 0x57(1)
    bl fn_80219E04
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8021B0D4
    li 30, -0x6
L_8021B0D4:
    lwz 0, 0x230(31)
    stb 30, 0x55(1)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820048 # beq .L_8021B128
    .4byte 0xC042CD2C # lfs f2, lbl_8053FCCC@sda21(r0)
    addi 0, 1, 0x8
    .4byte 0xC002CD34 # lfs f0, lbl_8053FCD4@sda21(r0)
    .4byte 0xC022CD30 # lfs f1, lbl_8053FCD0@sda21(r0)
    stfs 2, 0x14(1)
    stfs 2, 0x24(1)
    stfs 2, 0x34(1)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 2, 0x10(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 2, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 0, 0x30(1)
    stw 0, 0x50(1)
L_8021B128:
    .4byte 0xC022CD34 # lfs f1, lbl_8053FCD4@sda21(r0)
    lis 3, lbl_8046A660@ha
    lwz 5, 0x280(31)
    addi 4, 3, lbl_8046A660@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x25c
    addi 6, 1, 0x38
    li 7, -0x1
    bl fn_801F06F0
    lwz 0, 0x138(31)
    li 5, 0xc8
    lwz 3, 0x280(31)
    li 4, 0x0
    cmplwi 0, 0x0
    stb 5, 0x4b(1)
    addi 8, 3, 0x25c
    stb 4, 0x55(1)
    .4byte 0x40820024 # bne .L_8021B194
    lis 4, lbl_8046A660@ha
    lwz 3, 0x4(31)
    addi 7, 4, lbl_8046A660@l
    addi 5, 1, 0x38
    addi 4, 31, 0xc
    li 6, 0x407
    li 9, 0x0
    bl fn_801EF830
L_8021B194:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8021B1AC:
    stwu 1, -0x80(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 9, 1, 0x38
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8021B23C
L_8021B1DC:
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
L_8021B23C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8021B1DC
    li 5, 0x1
    li 30, 0x0
    stb 5, 0x57(1)
    li 6, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    mr 3, 31
    stw 30, 0x4c(1)
    stw 30, 0x50(1)
    stb 30, 0x54(1)
    stb 30, 0x55(1)
    stb 30, 0x56(1)
    stb 5, 0x58(1)
    stb 30, 0x59(1)
    stb 30, 0x5a(1)
    stb 30, 0x5b(1)
    stb 30, 0x5c(1)
    stb 30, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 30, 0x65(1)
    stb 30, 0x66(1)
    stw 6, 0x68(1)
    stw 30, 0x6c(1)
    stw 0, 0x70(1)
    stb 30, 0x57(1)
    bl fn_80219E04
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8021B2C8
    li 30, -0x6
L_8021B2C8:
    .4byte 0xC022CD34 # lfs f1, lbl_8053FCD4@sda21(r0)
    lis 3, lbl_8046A660@ha
    addi 4, 3, lbl_8046A660@l
    stb 30, 0x55(1)
    fmr 2, 1
    mr 3, 31
    addi 6, 1, 0x38
    li 5, 0x279
    li 7, -0x1
    bl fn_801F06F0
    li 3, 0xc8
    li 0, 0x0
    stb 3, 0x4b(1)
    stb 0, 0x55(1)
    lwz 0, 0x138(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8021B330
    lis 4, lbl_8046A660@ha
    lwz 3, 0x4(31)
    addi 7, 4, lbl_8046A660@l
    addi 5, 1, 0x38
    addi 4, 31, 0xc
    li 6, 0x407
    li 8, 0x279
    li 9, 0x0
    bl fn_801EF830
L_8021B330:
    addi 9, 1, 0x38
    li 10, 0x0
    .4byte 0x48000064 # b .L_8021B39C
L_8021B33C:
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
L_8021B39C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8021B33C
    li 5, 0x1
    li 30, 0x0
    stb 5, 0x57(1)
    li 6, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    mr 3, 31
    stw 30, 0x4c(1)
    stw 30, 0x50(1)
    stb 30, 0x54(1)
    stb 30, 0x55(1)
    stb 30, 0x56(1)
    stb 5, 0x58(1)
    stb 30, 0x59(1)
    stb 30, 0x5a(1)
    stb 30, 0x5b(1)
    stb 30, 0x5c(1)
    stb 30, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 30, 0x65(1)
    stb 30, 0x66(1)
    stw 6, 0x68(1)
    stw 30, 0x6c(1)
    stw 0, 0x70(1)
    stb 30, 0x57(1)
    bl fn_80219E04
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8021B428
    li 30, -0x6
L_8021B428:
    .4byte 0xC082CD2C # lfs f4, lbl_8053FCCC@sda21(r0)
    addi 0, 30, 0x1
    stb 0, 0x55(1)
    lis 5, lbl_8052EBC0@ha
    addi 8, 5, lbl_8052EBC0@l
    .4byte 0xC022CD34 # lfs f1, lbl_8053FCD4@sda21(r0)
    stfs 4, 0x14(1)
    lis 3, lbl_8046A660@ha
    addi 4, 3, lbl_8046A660@l
    addi 0, 1, 0x8
    stfs 4, 0x24(1)
    fmr 2, 1
    .4byte 0xC002CD38 # lfs f0, lbl_8053FCD8@sda21(r0)
    mr 3, 31
    stfs 4, 0x34(1)
    addi 6, 1, 0x38
    li 5, 0x27a
    lha 9, 0x2cc(31)
    li 7, -0x1
    rlwinm 9, 9, 30, 18, 28
    stfs 1, 0x1c(1)
    lfsx 6, 8, 9
    add 8, 8, 9
    lfs 5, 0x4(8)
    fneg 3, 6
    stfs 6, 0x10(1)
    stfs 5, 0x8(1)
    stfs 3, 0x28(1)
    stfs 5, 0x30(1)
    stfs 4, 0x2c(1)
    stfs 4, 0x20(1)
    stfs 4, 0x18(1)
    stfs 4, 0xc(1)
    stw 0, 0x50(1)
    lfs 3, 0x10(31)
    fadds 0, 3, 0
    stfs 0, 0x10(31)
    bl fn_801F06F0
    lfs 2, 0x10(31)
    li 3, 0xc8
    .4byte 0xC022CD38 # lfs f1, lbl_8053FCD8@sda21(r0)
    li 0, 0x0
    .4byte 0xC002CD3C # lfs f0, lbl_8053FCDC@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stb 3, 0x4b(1)
    stb 0, 0x55(1)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    lwz 0, 0x138(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8021B520
    lis 4, lbl_8046A660@ha
    lwz 3, 0x4(31)
    addi 7, 4, lbl_8046A660@l
    addi 5, 1, 0x38
    addi 4, 31, 0xc
    li 6, 0x407
    li 8, 0x27a
    li 9, 0x0
    bl fn_801EF830
L_8021B520:
    lfs 1, 0x10(31)
    .4byte 0xC002CD3C # lfs f0, lbl_8053FCDC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8021B548:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80219E04
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8021B574
    li 31, -0x6
L_8021B574:
    addi 3, 30, 0x2c4
    addi 4, 30, 0xc
    extsb 6, 31
    li 5, 0x0
    bl fn_801CB71C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021B5A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x2c4(3)
    bl fn_801CB7A0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021B5C4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x2c4(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8021B604
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2c4(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2c4(29)
L_8021B604:
    lwz 31, 0x4(29)
    mr 3, 29
    li 30, 0x0
    bl fn_80219E04
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8021B620
    li 30, -0x6
L_8021B620:
    .4byte 0xC022CD34 # lfs f1, lbl_8053FCD4@sda21(r0)
    mr 3, 31
    addi 4, 29, 0xc
    extsb 7, 30
    li 5, 0x344
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2c4(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021B668:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0x4(3)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    bl fn_80219E04
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8021B69C
    li 30, -0x6
L_8021B69C:
    .4byte 0xC022CD34 # lfs f1, lbl_8053FCD4@sda21(r0)
    mr 3, 31
    addi 4, 29, 0xc
    extsb 7, 30
    li 5, 0x343
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021B6E0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CDD40@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CDD40@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B730
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8021B730:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B768
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8021B768:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B7A0
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8021B7A0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B7D8
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8021B7D8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B810
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8021B810:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B848
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8021B848:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B880
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8021B880:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B8B8
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8021B8B8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021B8F0
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8021B8F0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021B904:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    clrlwi. 0, 5, 24
    stw 31, 0x1c(1)
    mr 31, 3
    sth 4, 0x8(1)
    .4byte 0x41820080 # beq .L_8021B9A0
    li 0, 0x0
    li 3, 0x15
    stw 0, 0x8(31)
    bl fn_801CD664
    addi 0, 3, 0xa
    stw 0, 0xc(31)
    lwz 3, 0x0(31)
    addi 0, 3, 0x1
    stw 0, 0x0(31)
    lwz 3, 0x0(31)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x41800040 # blt .L_8021B994
    lha 4, 0x8(1)
    li 3, 0x4001
    addi 0, 4, -0x8000
    sth 0, 0x8(1)
    bl fn_801CD664
    lha 4, 0x8(1)
    subi 5, 3, 0x2000
    li 0, 0x0
    li 3, 0x5b
    add 4, 4, 5
    sth 4, 0x8(1)
    stw 0, 0x0(31)
    bl fn_801CD664
    addi 0, 3, 0x1e
    stw 0, 0x4(31)
L_8021B994:
    lha 0, 0x8(1)
    sth 0, 0x10(31)
    .4byte 0x4800007C # b .L_8021BA18
L_8021B9A0:
    li 0, 0x0
    li 3, 0x5b
    stw 0, 0x0(31)
    bl fn_801CD664
    addi 0, 3, 0x1e
    stw 0, 0x4(31)
    lwz 3, 0x8(31)
    addi 0, 3, 0x1
    stw 0, 0x8(31)
    lwz 3, 0x8(31)
    lwz 0, 0xc(31)
    cmpw 3, 0
    .4byte 0x41800038 # blt .L_8021BA08
    lis 3, 0x1
    subi 3, 3, 0x7fff
    bl fn_801CD664
    lha 4, 0x10(31)
    subi 5, 3, 0x4000
    li 0, 0x0
    li 3, 0x15
    add 4, 4, 5
    sth 4, 0x10(31)
    stw 0, 0x8(31)
    bl fn_801CD664
    addi 0, 3, 0xa
    stw 0, 0xc(31)
L_8021BA08:
    lha 4, 0x10(31)
    addi 3, 1, 0x8
    li 5, 0x200
    bl fn_801CD930
L_8021BA18:
    lwz 0, 0x24(1)
    lha 3, 0x8(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8021B6E0
