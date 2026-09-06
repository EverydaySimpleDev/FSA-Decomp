.section extab, "a"
.balign 4
.global etb_8000DC64
etb_8000DC64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DC64, 8

.global etb_8000DC6C
etb_8000DC6C:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_8000DC6C, 8

.global etb_8000DC74
etb_8000DC74:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000DC74, 8

.global etb_8000DC7C
etb_8000DC7C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DC7C, 8

.global etb_8000DC84
etb_8000DC84:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DC84, 8

.section extabindex, "a"
.balign 4
.global eti_8001D2FC
eti_8001D2FC:
    .4byte fn_8032DD70
    .4byte 0x00000224
    .4byte etb_8000DC64
.size eti_8001D2FC, 12

.global eti_8001D308
eti_8001D308:
    .4byte fn_8032DF94
    .4byte 0x00000428
    .4byte etb_8000DC6C
.size eti_8001D308, 12

.global eti_8001D314
eti_8001D314:
    .4byte fn_8032E3BC
    .4byte 0x0000076C
    .4byte etb_8000DC74
.size eti_8001D314, 12

.global eti_8001D320
eti_8001D320:
    .4byte fn_8032EB28
    .4byte 0x000000A8
    .4byte etb_8000DC7C
.size eti_8001D320, 12

.global eti_8001D32C
eti_8001D32C:
    .4byte fn_8032EBD0
    .4byte 0x000002E8
    .4byte etb_8000DC84
.size eti_8001D32C, 12

.text
.balign 4
.global fn_8032DD70
.global fn_8032DF94
.global fn_8032E3BC
.global fn_8032EB28
.global fn_8032EBD0

fn_8032DD70:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80508FF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80508FF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DDC0
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
L_8032DDC0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DDF8
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
L_8032DDF8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DE30
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
L_8032DE30:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DE68
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
L_8032DE68:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DEA0
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
L_8032DEA0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DED8
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
L_8032DED8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DF10
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
L_8032DF10:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DF48
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
L_8032DF48:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032DF80
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
L_8032DF80:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8032DF94:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x50(1)
    addi 9, 1, 0x40
    li 10, 0x0
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_8032E054
L_8032DFF4:
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
L_8032E054:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8032DFF4
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x5d(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 5, 0x6d(1)
    stw 6, 0x50(1)
    stw 5, 0x54(1)
    stw 5, 0x58(1)
    stb 5, 0x5c(1)
    stb 5, 0x5e(1)
    stb 4, 0x5f(1)
    stb 4, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 5, 0x65(1)
    stb 4, 0x66(1)
    stw 3, 0x68(1)
    stb 4, 0x6c(1)
    stb 5, 0x6e(1)
    stw 6, 0x70(1)
    stw 5, 0x74(1)
    stw 0, 0x78(1)
    stb 4, 0x6d(1)
    stb 4, 0x5d(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_8032E0E4
    cmpwi 0, 0x6
    .4byte 0x40820160 # bne .L_8032E240
L_8032E0E4:
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    stfs 1, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x3c(1)
    lfs 30, 0x23c(31)
    lfs 29, 0x238(31)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x10
    fmuls 7, 30, 26
    lis 3, lbl_804AB810@ha
    fneg 6, 27
    stw 0, 0x58(1)
    fmuls 10, 31, 3
    addi 3, 3, lbl_804AB810@l
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
    stfs 8, 0x10(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x20(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x30(1)
    fmuls 0, 29, 0
    stfs 5, 0x14(1)
    stfs 4, 0x24(1)
    stfs 3, 0x34(1)
    stfs 2, 0x18(1)
    stfs 1, 0x28(1)
    stfs 0, 0x38(1)
    lwz 4, 0x264(31)
    lwz 0, 0x4(31)
    slwi 4, 4, 2
    lwz 5, 0x24c(31)
    lwzx 3, 3, 4
    cmpwi 0, 0x8
    add 30, 5, 3
    .4byte 0x40800188 # bge .L_8032E374
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471A50@ha
    addi 5, 3, lbl_80471A50@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EEA4 # lfs f1, lbl_80541E44@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x40
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x48000138 # b .L_8032E374
L_8032E240:
    cmpwi 0, 0x2
    .4byte 0x41820070 # beq .L_8032E2B4
    lwz 0, 0x264(31)
    li 7, 0x2
    cmpwi 0, 0x4
    .4byte 0x41800008 # blt .L_8032E25C
    li 7, 0x0
L_8032E25C:
    li 0, 0x1
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    stb 0, 0x5d(1)
    lfs 1, 0x14(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_8032E278
    stb 0, 0x5c(1)
L_8032E278:
    lwz 0, 0x264(31)
    lis 3, lbl_804AB810@ha
    .4byte 0xC022EEA4 # lfs f1, lbl_80541E44@sda21(r0)
    lis 4, lbl_80471A50@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804AB810@l
    lwzx 0, 3, 0
    fmr 2, 1
    lwz 5, 0x24c(31)
    addi 4, 4, lbl_80471A50@l
    mr 3, 31
    addi 6, 1, 0x40
    add 5, 5, 0
    bl fn_801F06F0
    .4byte 0x4800007C # b .L_8032E32C
L_8032E2B4:
    stb 4, 0x6d(1)
    lis 3, lbl_804AB810@ha
    addi 3, 3, lbl_804AB810@l
    lwz 4, 0x264(31)
    lwz 0, 0x4(31)
    slwi 4, 4, 2
    lwz 5, 0x24c(31)
    lwzx 3, 3, 4
    cmpwi 0, 0x8
    add 30, 5, 3
    .4byte 0x40800050 # bge .L_8032E32C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471A50@ha
    addi 5, 3, lbl_80471A50@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EEA4 # lfs f1, lbl_80541E44@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x40
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_8032E32C:
    li 0, 0x0
    lis 3, lbl_804AB810@ha
    stw 0, 0x8(1)
    addi 4, 3, lbl_804AB810@l
    addi 5, 31, 0xc
    li 7, 0x0
    stw 0, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 0, 0x264(31)
    lwz 6, 0x24c(31)
    slwi 0, 0, 2
    lwz 3, 0x198(31)
    lwzx 0, 4, 0
    lwz 4, 0x4(31)
    add 6, 6, 0
    bl fn_803075AC
L_8032E374:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 0, 0xf4(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_8032E3BC:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    li 0, 0x0
    stw 0, 0x1c(1)
    mr 30, 3
    li 31, 0x0
    sth 0, 0x8(1)
    stw 0, 0x18(1)
    stfs 0, 0x14(1)
    lhz 0, 0x94(3)
    lfs 30, 0x10(3)
    cmplwi 0, 0x6
    lfs 31, 0xc(3)
    .4byte 0x4182002C # beq .L_8032E440
    lfs 1, 0x26c(30)
    addi 3, 30, 0x3c
    .4byte 0xC042EEA8 # lfs f2, lbl_80541E48@sda21(r0)
    .4byte 0xC062EEA4 # lfs f3, lbl_80541E44@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x270(30)
    addi 3, 30, 0x40
    .4byte 0xC042EEA8 # lfs f2, lbl_80541E48@sda21(r0)
    .4byte 0xC062EEA4 # lfs f3, lbl_80541E44@sda21(r0)
    bl fn_801F71A4
L_8032E440:
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lfs 0, 0x60(30)
    stfs 0, 0x20(1)
    fadds 3, 0, 31
    lfs 0, 0x64(30)
    stfs 0, 0x24(1)
    fadds 2, 0, 30
    lfs 0, 0x68(30)
    stfs 0, 0x28(1)
    fadds 1, 0, 31
    lfs 4, 0x6c(30)
    fadds 0, 4, 30
    stfs 4, 0x2c(1)
    stfs 3, 0x20(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8032E4BC
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_8032E4BC
    cmpwi 0, 0x4
    .4byte 0x408200EC # bne .L_8032E5A4
L_8032E4BC:
    lwz 4, 0x4(30)
    addi 3, 1, 0x20
    lfs 1, 0x14(30)
    li 5, 0x0
    bl fn_8023AF14
    lwz 0, 0x230(30)
    mr 29, 3
    cmpwi 0, 0x0
    .4byte 0x41820058 # beq .L_8032E534
    lwz 4, 0x198(30)
    mr 3, 30
    addi 5, 1, 0x8
    addi 6, 1, 0x18
    addi 7, 1, 0x14
    addi 8, 1, 0x1c
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lhz 0, 0x94(30)
    cmplwi 0, 0x6
    .4byte 0x40820014 # bne .L_8032E520
    lfs 1, 0x14(30)
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x40820018 # bne .L_8032E534
L_8032E520:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    mr 31, 3
L_8032E534:
    cmpwi 29, 0x0
    .4byte 0x4180006C # blt .L_8032E5A4
    lhz 0, 0x94(30)
    cmplwi 0, 0x5
    .4byte 0x41820038 # beq .L_8032E57C
    cmplwi 0, 0x6
    .4byte 0x41820030 # beq .L_8032E57C
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002EEAC # lfs f0, lbl_80541E4C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820014 # beq .L_8032E57C
    mr 3, 29
    bl fn_80234ECC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8032E5A4
L_8032E57C:
    lwz 0, 0x264(30)
    lis 3, lbl_804AB830@ha
    addi 4, 3, lbl_804AB830@l
    mr 3, 29
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_802362C4
    stw 29, 0x260(30)
    li 0, 0x1
    stw 0, 0x230(30)
L_8032E5A4:
    lwz 0, 0x230(30)
    cmplwi 0, 0x6
    .4byte 0x41810474 # bgt .L_8032EA20
    lis 3, jumptable_804AB8A4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB8A4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x250(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC082EEB4 # lfs f4, lbl_80541E54@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002EEB0 # lfs f0, lbl_80541E50@sda21(r0)
    lfsx 1, 3, 0
    addi 3, 30, 0x14
    .4byte 0xC042EEA8 # lfs f2, lbl_80541E48@sda21(r0)
    fmadds 1, 4, 1, 0
    .4byte 0xC062EEA4 # lfs f3, lbl_80541E44@sda21(r0)
    bl fn_801F71A4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EEA4 # lfs f0, lbl_80541E44@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EEB8 # lfs f2, lbl_80541E58@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x250(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    add 3, 0, 3
    addi 0, 3, 0x200
    stw 0, 0x250(30)
    lhz 0, 0x94(30)
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_8032E670
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_8032E67C
    .4byte 0x480003B4 # b .L_8032EA20
L_8032E670:
    cmpwi 0, 0x5
    .4byte 0x408003AC # bge .L_8032EA20
    .4byte 0x480000B0 # b .L_8032E728
L_8032E67C:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x4082039C # bne .L_8032EA20
    lwz 0, 0x98(30)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8032E6E4
    .4byte 0x40800014 # bge .L_8032E6A8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8032E6B4
    .4byte 0x4080002C # bge .L_8032E6CC
    .4byte 0x4800006C # b .L_8032E710
L_8032E6A8:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_8032E710
    .4byte 0x4800004C # b .L_8032E6FC
L_8032E6B4:
    .4byte 0xC022EEA8 # lfs f1, lbl_80541E48@sda21(r0)
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    stfs 1, 0x26c(30)
    stfs 0, 0x270(30)
    stfs 0, 0x274(30)
    .4byte 0x48000048 # b .L_8032E710
L_8032E6CC:
    .4byte 0xC022EEBC # lfs f1, lbl_80541E5C@sda21(r0)
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    stfs 1, 0x26c(30)
    stfs 0, 0x270(30)
    stfs 0, 0x274(30)
    .4byte 0x48000030 # b .L_8032E710
L_8032E6E4:
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    .4byte 0xC002EEA8 # lfs f0, lbl_80541E48@sda21(r0)
    stfs 1, 0x26c(30)
    stfs 0, 0x270(30)
    stfs 1, 0x274(30)
    .4byte 0x48000018 # b .L_8032E710
L_8032E6FC:
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    .4byte 0xC002EEBC # lfs f0, lbl_80541E5C@sda21(r0)
    stfs 1, 0x26c(30)
    stfs 0, 0x270(30)
    stfs 1, 0x274(30)
L_8032E710:
    li 0, 0x1f4
    stw 0, 0x244(30)
    lwz 0, 0x98(30)
    xori 0, 0, 0x1
    stw 0, 0x98(30)
    .4byte 0x480002FC # b .L_8032EA20
L_8032E728:
    lwz 4, 0x254(30)
    lis 3, lbl_8052EBC0@ha
    lwz 0, 0x258(30)
    addi 3, 3, lbl_8052EBC0@l
    add 0, 4, 0
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    lfs 2, 0x234(30)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x278(30)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(30)
    lwz 0, 0x254(30)
    lfs 2, 0x234(30)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x27c(30)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(30)
    .4byte 0x480002A4 # b .L_8032EA20
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    li 4, 0x0
    li 3, 0x1e
    .4byte 0xC002EEC0 # lfs f0, lbl_80541E60@sda21(r0)
    stfs 1, 0x44(30)
    li 0, 0x2
    stfs 1, 0x40(30)
    stfs 1, 0x3c(30)
    stfs 1, 0x14(30)
    stw 4, 0x240(30)
    stw 3, 0x244(30)
    stfs 0, 0x44(30)
    stw 0, 0x230(30)
    lfs 2, 0x44(30)
    .4byte 0xC002EEC4 # lfs f0, lbl_80541E64@sda21(r0)
    .4byte 0xC022EEA0 # lfs f1, lbl_80541E40@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x44(30)
    lfs 0, 0x14(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_8032E7F4
    lfs 0, 0x44(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_8032E7F4
    stfs 1, 0x44(30)
    stfs 1, 0x40(30)
    stfs 1, 0x3c(30)
    stfs 1, 0x14(30)
L_8032E7F4:
    lwz 3, 0x260(30)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8032E82C
    lwz 3, 0x260(30)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    lwz 3, 0x260(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC002EEB0 # lfs f0, lbl_80541E50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(30)
L_8032E82C:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_8032EA20
    mr 3, 30
    li 4, 0xff
    lwz 12, 0x0(30)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    mr 3, 30
    bl fn_801F3668
    .4byte 0x480001C4 # b .L_8032EA20
    lfs 1, 0x14(1)
    .4byte 0xC002EEC8 # lfs f0, lbl_80541E68@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408001B4 # bge .L_8032EA20
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x244(30)
    stw 0, 0x230(30)
    .4byte 0x480001A0 # b .L_8032EA20
    lfs 1, 0x14(30)
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_8032E8A8
    lfs 1, 0x44(30)
    .4byte 0xC002EEA8 # lfs f0, lbl_80541E48@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
    .4byte 0x4800017C # b .L_8032EA20
L_8032E8A8:
    lhz 0, 0x94(30)
    cmplwi 0, 0x6
    .4byte 0x4082000C # bne .L_8032E8BC
    li 0, 0x5
    sth 0, 0x94(30)
L_8032E8BC:
    .4byte 0xC042EEA0 # lfs f2, lbl_80541E40@sda21(r0)
    .4byte 0xC002EECC # lfs f0, lbl_80541E6C@sda21(r0)
    stfs 2, 0x14(30)
    stfs 2, 0x44(30)
    lfs 1, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8032E950
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_8032E914
    clrlwi. 0, 31, 24
    .4byte 0x4182001C # beq .L_8032E904
    lhz 3, 0x268(30)
    li 0, 0x2
    addi 3, 3, 0x2000
    sth 3, 0x268(30)
    stw 0, 0x244(30)
    .4byte 0x48000014 # b .L_8032E914
L_8032E904:
    lhz 3, 0x8(1)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x268(30)
L_8032E914:
    lhz 0, 0x268(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022EED0 # lfs f1, lbl_80541E70@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x26c(30)
    lhz 0, 0x268(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x270(30)
    .4byte 0x480000D4 # b .L_8032EA20
L_8032E950:
    stfs 2, 0x26c(30)
    li 0, 0x3
    stfs 2, 0x270(30)
    stfs 2, 0x274(30)
    stw 0, 0x230(30)
    .4byte 0x480000BC # b .L_8032EA20
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x41810050 # bgt .L_8032E9C0
    lwz 0, 0x284(30)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8032E9C0
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022EEA4 # lfs f1, lbl_80541E44@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x284(30)
    lis 4, 0x3
    mr 3, 30
    li 5, 0x0
    addi 4, 4, 0x22
    bl fn_801F0E34
L_8032E9C0:
    lfs 1, 0x23c(30)
    .4byte 0xC042EED4 # lfs f2, lbl_80541E74@sda21(r0)
    .4byte 0xC002EED8 # lfs f0, lbl_80541E78@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x23c(30)
    lfs 1, 0x238(30)
    fsubs 0, 1, 0
    stfs 0, 0x238(30)
    lfs 0, 0x238(30)
    fcmpo cr0, 0, 2
    .4byte 0x40800038 # bge .L_8032EA20
    lwz 0, 0x230(30)
    cmpwi 0, 0x6
    .4byte 0x40820024 # bne .L_8032EA18
    lwz 4, 0x284(30)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8032EA18
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8032EA18:
    mr 3, 30
    bl fn_801F3668
L_8032EA20:
    lwz 3, 0x240(30)
    subi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x4181008C # bgt .L_8032EAC0
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    clrlwi 0, 0, 30
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_8032EAB8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EEA4 # lfs f0, lbl_80541E44@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EEDC # lfs f2, lbl_80541E7C@sda21(r0)
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
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 0, 3, 0x3c
    stw 0, 0x240(30)
    .4byte 0x4800000C # b .L_8032EAC0
L_8032EAB8:
    li 0, 0x2
    stw 0, 0x240(30)
L_8032EAC0:
    lwz 3, 0x240(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8032EAD4
    subi 0, 3, 0x1
    stw 0, 0x240(30)
L_8032EAD4:
    lwz 3, 0x244(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8032EAE8
    subi 0, 3, 0x1
    stw 0, 0x244(30)
L_8032EAE8:
    lwz 3, 0x248(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8032EAFC
    subi 0, 3, 0x1
    stw 0, 0x248(30)
L_8032EAFC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x74(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8032EB28:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    mr 3, 5
    bl fn_8022461C
    clrlwi 3, 3, 16
    cmpwi 3, 0xc
    .4byte 0x41820014 # beq .L_8032EB60
    cmpwi 3, 0x3
    .4byte 0x4182000C # beq .L_8032EB60
    cmpwi 3, 0xe
    .4byte 0x40820024 # bne .L_8032EB80
L_8032EB60:
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    li 0, 0x5
    li 3, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    .4byte 0x48000040 # b .L_8032EBBC
L_8032EB80:
    cmpwi 3, 0xd
    .4byte 0x4082002C # bne .L_8032EBB0
    li 0, 0x0
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    stw 0, 0x248(31)
    li 0, 0x6
    li 3, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_8032EBBC
L_8032EBB0:
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_8032EBBC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8032EBD0:
    stwu 1, -0x30(1)
    mflr 0
    li 6, 0x0
    li 5, 0x2710
    stw 0, 0x34(1)
    li 4, -0x1
    li 0, 0x64
    .4byte 0xC022EEA4 # lfs f1, lbl_80541E44@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0xC002EEA0 # lfs f0, lbl_80541E40@sda21(r0)
    lwz 7, 0x90(3)
    extrwi 7, 7, 8, 8
    sth 7, 0x94(3)
    lwz 7, 0x90(3)
    clrlwi 7, 7, 29
    stw 7, 0x264(3)
    stw 6, 0x284(3)
    stw 6, 0x24c(3)
    stw 6, 0x250(3)
    stw 6, 0x254(3)
    stw 6, 0x258(3)
    stw 6, 0x240(3)
    stw 6, 0x244(3)
    stw 6, 0x248(3)
    sth 6, 0x268(3)
    stw 5, 0x108(3)
    stw 6, 0x25c(3)
    stw 4, 0x260(3)
    stw 6, 0x98(3)
    lfs 2, 0xc(3)
    stfs 2, 0x278(3)
    lfs 2, 0x10(3)
    stfs 2, 0x27c(3)
    lfs 2, 0x14(3)
    stfs 2, 0x280(3)
    stw 0, 0x258(3)
    stfs 1, 0x238(3)
    stfs 0, 0x23c(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8032EC90
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000218 # b .L_8032EEA4
L_8032EC90:
    .4byte 0xC002EEE0 # lfs f0, lbl_80541E80@sda21(r0)
    lis 3, 0x19
    li 0, 0x0
    .4byte 0xC042EEA4 # lfs f2, lbl_80541E44@sda21(r0)
    stfs 0, 0x234(31)
    addi 4, 3, 0x660d
    .4byte 0xC022EEE4 # lfs f1, lbl_80541E84@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x254(31)
    lhz 0, 0x94(31)
    cmpwi 0, 0x4
    .4byte 0x418200F8 # beq .L_8032EDF4
    .4byte 0x4080001C # bge .L_8032ED1C
    cmpwi 0, 0x2
    .4byte 0x41820088 # beq .L_8032ED90
    .4byte 0x408000E0 # bge .L_8032EDEC
    cmpwi 0, 0x1
    .4byte 0x40800018 # bge .L_8032ED2C
    .4byte 0x48000140 # b .L_8032EE58
L_8032ED1C:
    cmpwi 0, 0x6
    .4byte 0x41820124 # beq .L_8032EE44
    .4byte 0x40800134 # bge .L_8032EE58
    .4byte 0x48000128 # b .L_8032EE50
L_8032ED2C:
    .4byte 0xC002EEB0 # lfs f0, lbl_80541E50@sda21(r0)
    li 0, 0x2
    .4byte 0xC022EEE8 # lfs f1, lbl_80541E88@sda21(r0)
    stfs 0, 0x14(31)
    stw 0, 0x98(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lwz 3, 0x98(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    or 0, 3, 0
    stw 0, 0x98(31)
    .4byte 0x480000CC # b .L_8032EE58
L_8032ED90:
    .4byte 0xC002EEB0 # lfs f0, lbl_80541E50@sda21(r0)
    .4byte 0xC022EEE8 # lfs f1, lbl_80541E88@sda21(r0)
    stfs 0, 0x14(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lwz 3, 0x98(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    or 0, 3, 0
    stw 0, 0x98(31)
    .4byte 0x48000070 # b .L_8032EE58
L_8032EDEC:
    li 0, -0x64
    stw 0, 0x258(31)
L_8032EDF4:
    .4byte 0xC002EEB0 # lfs f0, lbl_80541E50@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    stfs 0, 0x14(31)
    lwz 0, 0x254(31)
    lfs 2, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x278(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x254(31)
    lfs 2, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x27c(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000018 # b .L_8032EE58
L_8032EE44:
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8032EE58
L_8032EE50:
    li 0, 0x3
    stw 0, 0x230(31)
L_8032EE58:
    .4byte 0xC082EEA0 # lfs f4, lbl_80541E40@sda21(r0)
    .4byte 0xC062EEEC # lfs f3, lbl_80541E8C@sda21(r0)
    stfs 4, 0x26c(31)
    .4byte 0xC042EEF0 # lfs f2, lbl_80541E90@sda21(r0)
    stfs 4, 0x270(31)
    .4byte 0xC022EEF4 # lfs f1, lbl_80541E94@sda21(r0)
    stfs 4, 0x274(31)
    .4byte 0xC002EEB4 # lfs f0, lbl_80541E54@sda21(r0)
    stfs 4, 0x3c(31)
    stfs 4, 0x40(31)
    stfs 4, 0x44(31)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8032EEA4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8032DD70
