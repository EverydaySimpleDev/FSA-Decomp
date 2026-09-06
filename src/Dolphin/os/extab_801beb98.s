.section extab, "a"
.balign 4
.global etb_80007EFC
etb_80007EFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007EFC, 8

.global etb_80007F04
etb_80007F04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007F04, 8

.global etb_80007F0C
etb_80007F0C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80007F0C, 8

.global etb_80007F14
etb_80007F14:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007F14, 8

.global etb_80007F1C
etb_80007F1C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007F1C, 8

.global etb_80007F24
etb_80007F24:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007F24, 8

.global etb_80007F2C
etb_80007F2C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80007F2C, 8

.section extabindex, "a"
.balign 4
.global eti_80014FF8
eti_80014FF8:
    .4byte fn_801BEB98
    .4byte 0x00000224
    .4byte etb_80007EFC
.size eti_80014FF8, 12

.global eti_80015004
eti_80015004:
    .4byte fn_801BEDBC
    .4byte 0x000000B0
    .4byte etb_80007F04
.size eti_80015004, 12

.global eti_80015010
eti_80015010:
    .4byte fn_801BEE6C
    .4byte 0x000000D4
    .4byte etb_80007F0C
.size eti_80015010, 12

.global eti_8001501C
eti_8001501C:
    .4byte fn_801BEF40
    .4byte 0x00000440
    .4byte etb_80007F14
.size eti_8001501C, 12

.global eti_80015028
eti_80015028:
    .4byte fn_801BF380
    .4byte 0x000000E4
    .4byte etb_80007F1C
.size eti_80015028, 12

.global eti_80015034
eti_80015034:
    .4byte fn_801BF464
    .4byte 0x000000A8
    .4byte etb_80007F24
.size eti_80015034, 12

.global eti_80015040
eti_80015040:
    .4byte fn_801BF50C
    .4byte 0x0000009C
    .4byte etb_80007F2C
.size eti_80015040, 12

.text
.balign 4
.global fn_801BEB98
.global fn_801BEDBC
.global fn_801BEE6C
.global fn_801BEF40
.global fn_801BF380
.global fn_801BF464
.global fn_801BF50C

fn_801BEB98:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C7B70@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C7B70@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BEBE8
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
L_801BEBE8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BEC20
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
L_801BEC20:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BEC58
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
L_801BEC58:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BEC90
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
L_801BEC90:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BECC8
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
L_801BECC8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BED00
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
L_801BED00:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BED38
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
L_801BED38:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BED70
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
L_801BED70:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BEDA8
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
L_801BEDA8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BEDBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_801BEE58
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x40820074 # bne .L_801BEE58
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BD60 # lfs f1, lbl_8053ED00@sda21(r0)
    li 5, 0x1e
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BD60 # lfs f1, lbl_8053ED00@sda21(r0)
    li 5, 0x1f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_801BEE58:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BEE6C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 5
    mr 3, 28
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xd
    .4byte 0x40800010 # bge .L_801BEEB4
    cmpwi 0, 0x3
    .4byte 0x41820010 # beq .L_801BEEBC
    .4byte 0x48000014 # b .L_801BEEC4
L_801BEEB4:
    cmpwi 0, 0xf
    .4byte 0x4080000C # bge .L_801BEEC4
L_801BEEBC:
    li 3, 0x0
    .4byte 0x48000060 # b .L_801BEF20
L_801BEEC4:
    mr 3, 28
    mr 4, 29
    li 30, 0x1
    li 5, 0x0
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_801BEF1C
    lwz 31, 0x90(31)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 28
    mr 6, 31
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_801BEF1C
    li 30, 0x0
L_801BEF1C:
    mr 3, 30
L_801BEF20:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BEF40:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182001C # beq .L_801BEF80
    lwz 3, 0x2a8(31)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2a8(31)
    stb 0, 0x11c(31)
    .4byte 0x480003E8 # b .L_801BF364
L_801BEF80:
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801BEFA0
    li 0, 0x0
    stw 0, 0x24c(31)
L_801BEFA0:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x40820028 # bne .L_801BEFD0
    lwz 0, 0x230(31)
    mr 3, 31
    ori 0, 0, 0x400
    stw 0, 0x230(31)
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    .4byte 0x48000398 # b .L_801BF364
L_801BEFD0:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x41820088 # beq .L_801BF080
    lwz 0, 0x24c(31)
    li 6, 0x1
    cmpwi 0, 0x2
    .4byte 0x40800008 # bge .L_801BF010
    lhz 6, 0x94(31)
L_801BF010:
    addi 4, 31, 0xc
    li 5, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lis 3, lbl_80534C00@ha
    lfs 1, 0x3c(31)
    lfs 2, 0x40(31)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002BD64 # lfs f0, lbl_8053ED04@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x50(1)
    fmuls 0, 1, 0
    .4byte 0xC822BD70 # lfd f1, lbl_8053ED10@sda21(r0)
    .4byte 0xC042BD6C # lfs f2, lbl_8053ED0C@sda21(r0)
    .4byte 0xC062BD68 # lfs f3, lbl_8053ED08@sda21(r0)
    fctiwz 0, 0
    lwz 3, 0x2a8(31)
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x54(1)
    lfd 0, 0x50(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fmuls 1, 3, 0
    bl fn_8013CAA4
L_801BF080:
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801BF098
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801BF09C
L_801BF098:
    addi 3, 3, 0xdc
L_801BF09C:
    lfs 2, 0xc(31)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801BF0E4
    lfs 1, 0x10(31)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801BF0E4
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801BF0E4
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801BF0E4
    li 0, 0x1
L_801BF0E4:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_801BF0FC
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x4800026C # b .L_801BF364
L_801BF0FC:
    lfs 3, 0x10(31)
    mr 3, 31
    lfs 2, 0x84(31)
    addi 5, 1, 0x38
    lfs 1, 0xc(31)
    lfs 0, 0x80(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    stfs 2, 0x3c(1)
    stfs 0, 0x38(1)
    stfs 3, 0x40(1)
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408200E8 # bne .L_801BF22C
    lfs 3, 0x10(31)
    mr 3, 31
    lfs 2, 0x84(31)
    addi 5, 1, 0x2c
    lfs 1, 0xc(31)
    lfs 0, 0x88(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    stfs 2, 0x30(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x34(1)
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082009C # bne .L_801BF22C
    lfs 3, 0x10(31)
    mr 3, 31
    lfs 2, 0x8c(31)
    addi 5, 1, 0x20
    lfs 1, 0xc(31)
    lfs 0, 0x80(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    stfs 3, 0x28(1)
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_801BF22C
    lfs 3, 0x10(31)
    mr 3, 31
    lfs 2, 0x8c(31)
    addi 5, 1, 0x14
    lfs 1, 0xc(31)
    lfs 0, 0x88(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    stfs 2, 0x18(1)
    stfs 0, 0x14(1)
    stfs 3, 0x1c(1)
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820128 # beq .L_801BF350
L_801BF22C:
    psq_l 1, 0xc(31), 0, 0
    li 29, 0x0
    lfs 0, 0x14(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lfs 1, 0xc(31)
    lfs 0, 0x80(31)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
L_801BF250:
    lfs 1, 0x10(31)
    li 30, 0x0
    lfs 0, 0x84(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_801BF264:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    bl fn_801CCC78
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801BF294
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x8
    lwz 6, 0x4(31)
    li 5, -0x1
    li 7, 0x0
    li 8, 0x0
    bl fn_802A20F0
L_801BF294:
    lfs 1, 0x8c(31)
    addi 30, 30, 0x1
    lfs 0, 0x84(31)
    cmpwi 30, 0x2
    lfs 2, 0xc(1)
    fsubs 0, 1, 0
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    .4byte 0x4180FFB0 # blt .L_801BF264
    lfs 1, 0x88(31)
    addi 29, 29, 0x1
    lfs 0, 0x80(31)
    cmpwi 29, 0x2
    lfs 2, 0x8(1)
    fsubs 0, 1, 0
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    .4byte 0x4180FF78 # blt .L_801BF250
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BD60 # lfs f1, lbl_8053ED00@sda21(r0)
    li 5, 0x1e
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BD60 # lfs f1, lbl_8053ED00@sda21(r0)
    li 5, 0x1f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_801BF364
L_801BF350:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_801BF364:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801BF380:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022BD60 # lfs f1, lbl_8053ED00@sda21(r0)
    li 5, 0x1b
    stw 0, 0x24(1)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    addi 4, 31, 0xc
    li 10, 0x1
    lwz 3, 0x4(3)
    lhz 7, 0x94(31)
    bl fn_8013CC50
    stw 3, 0x2a8(31)
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x41820088 # beq .L_801BF450
    lwz 0, 0x24c(31)
    li 6, 0x1
    cmpwi 0, 0x2
    .4byte 0x40800008 # bge .L_801BF3E0
    lhz 6, 0x94(31)
L_801BF3E0:
    addi 4, 31, 0xc
    li 5, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lis 3, lbl_80534C00@ha
    lfs 1, 0x3c(31)
    lfs 2, 0x40(31)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002BD64 # lfs f0, lbl_8053ED04@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x10(1)
    fmuls 0, 1, 0
    .4byte 0xC822BD70 # lfd f1, lbl_8053ED10@sda21(r0)
    .4byte 0xC042BD6C # lfs f2, lbl_8053ED0C@sda21(r0)
    .4byte 0xC062BD68 # lfs f3, lbl_8053ED08@sda21(r0)
    fctiwz 0, 0
    lwz 3, 0x2a8(31)
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fmuls 1, 3, 0
    bl fn_8013CAA4
L_801BF450:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BF464:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC002BD78 # lfs f0, lbl_8053ED18@sda21(r0)
    li 6, 0x0
    .4byte 0xC042BD7C # lfs f2, lbl_8053ED1C@sda21(r0)
    li 5, 0x2
    stfs 0, 0x60(31)
    li 3, 0x3e8
    .4byte 0xC022BD60 # lfs f1, lbl_8053ED00@sda21(r0)
    li 0, 0x1
    stfs 0, 0x64(31)
    .4byte 0xC002BD80 # lfs f0, lbl_8053ED20@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 6, 0xb0(31)
    stw 5, 0x98(31)
    lwz 4, 0x230(31)
    ori 4, 4, 0x280
    stw 4, 0x230(31)
    stw 3, 0x108(31)
    lwz 3, 0x108(31)
    stw 3, 0x244(31)
    stb 0, 0x194(31)
    stw 5, 0x114(31)
    stw 6, 0x24c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BF50C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820064 # beq .L_801BF58C
    lis 3, lbl_804A4188@ha
    addi 0, 3, lbl_804A4188@l
    stw 0, 0x0(30)
    lwz 3, 0x2a8(30)
    bl fn_801EE434
    cmplwi 30, 0x0
    .4byte 0x41820038 # beq .L_801BF57C
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_801BF570
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_801BF570
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_801BF570:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_801BF57C:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801BF58C
    mr 3, 30
    bl dtor_80084580
L_801BF58C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801BEB98
