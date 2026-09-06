.section extab, "a"
.balign 4
.global etb_8000B690
etb_8000B690:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B690, 8

.global etb_8000B698
etb_8000B698:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B698, 8

.global etb_8000B6A0
etb_8000B6A0:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000B6A0, 8

.global etb_8000B6A8
etb_8000B6A8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B6A8, 8

.global etb_8000B6B0
etb_8000B6B0:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000B6B0, 8

.section extabindex, "a"
.balign 4
.global eti_80019CCC
eti_80019CCC:
    .4byte fn_80251BFC
    .4byte 0x00000154
    .4byte etb_8000B690
.size eti_80019CCC, 12

.global eti_80019CD8
eti_80019CD8:
    .4byte fn_80251D50
    .4byte 0x00000370
    .4byte etb_8000B698
.size eti_80019CD8, 12

.global eti_80019CE4
eti_80019CE4:
    .4byte fn_802520C0
    .4byte 0x0000044C
    .4byte etb_8000B6A0
.size eti_80019CE4, 12

.global eti_80019CF0
eti_80019CF0:
    .4byte fn_8025250C
    .4byte 0x000002A4
    .4byte etb_8000B6A8
.size eti_80019CF0, 12

.global eti_80019CFC
eti_80019CFC:
    .4byte fn_802527B0
    .4byte 0x000003FC
    .4byte etb_8000B6B0
.size eti_80019CFC, 12

.text
.balign 4
.global fn_80251BFC
.global fn_80251D50
.global fn_802520C0
.global fn_8025250C
.global fn_802527B0

fn_80251BFC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x124d(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251C1C
    li 3, 0x0
    .4byte 0x48000128 # b .L_80251D40
L_80251C1C:
    lbz 6, 0x124c(3)
    cmplwi 6, 0x1
    .4byte 0x40820024 # bne .L_80251C48
    lwz 5, 0x1244(3)
    cmpwi 5, 0x0
    .4byte 0x41820018 # beq .L_80251C48
    subi 0, 5, 0x2
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80251C48
    li 3, 0x0
    .4byte 0x480000FC # b .L_80251D40
L_80251C48:
    cmplwi 6, 0x1
    .4byte 0x40820028 # bne .L_80251C74
    lwz 0, 0x1244(3)
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_80251C74
    cmpwi 4, 0x0
    .4byte 0x4182000C # beq .L_80251C6C
    cmpwi 4, 0x3
    .4byte 0x4082000C # bne .L_80251C74
L_80251C6C:
    li 3, 0x0
    .4byte 0x480000D0 # b .L_80251D40
L_80251C74:
    lwz 5, 0x1244(3)
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_80251C90
    cmpwi 4, 0x0
    .4byte 0x4182000C # beq .L_80251C90
    li 3, 0x0
    .4byte 0x480000B4 # b .L_80251D40
L_80251C90:
    lbz 0, 0xcee(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251CA4
    li 3, 0x0
    .4byte 0x480000A0 # b .L_80251D40
L_80251CA4:
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x4180002C # blt .L_80251CD8
    lbz 0, 0xce8(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80251CD8
    lbz 0, 0x1214(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80251CD8
    cmpwi 4, 0x3
    .4byte 0x4182000C # beq .L_80251CD8
    li 3, 0x0
    .4byte 0x4800006C # b .L_80251D40
L_80251CD8:
    lbz 0, 0x1215(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80251CF4
    cmpwi 4, 0x3
    .4byte 0x4182000C # beq .L_80251CF4
    li 3, 0x0
    .4byte 0x48000050 # b .L_80251D40
L_80251CF4:
    lwz 0, 0x1240(3)
    cmpw 0, 4
    .4byte 0x4082000C # bne .L_80251D08
    li 3, 0x0
    .4byte 0x4800003C # b .L_80251D40
L_80251D08:
    cmpw 5, 4
    .4byte 0x4082000C # bne .L_80251D18
    li 3, 0x0
    .4byte 0x4800002C # b .L_80251D40
L_80251D18:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80251D3C
    bl fn_80236890
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80251D3C
    li 3, 0x0
    .4byte 0x48000008 # b .L_80251D40
L_80251D3C:
    li 3, 0x1
L_80251D40:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80251D50:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 31, 3
    li 28, 0x0
    li 27, 0x0
    mr 29, 31
L_80251D70:
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 4, 30, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820060 # beq .L_80251DE8
    lfs 1, 0x40(29)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80251DA4
    li 28, 0x1
    .4byte 0x48000070 # b .L_80251E10
L_80251DA4:
    cmpwi 27, 0x30
    .4byte 0x4082001C # bne .L_80251DC4
    addi 0, 27, 0x284
    lbzx 0, 31, 0
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_80251E00
    li 28, 0x1
    .4byte 0x48000050 # b .L_80251E10
L_80251DC4:
    add 3, 31, 27
    lbz 0, 0x284(3)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80251E00
    lbz 0, 0x285(3)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_80251E00
    li 28, 0x1
    .4byte 0x4800002C # b .L_80251E10
L_80251DE8:
    lfs 1, 0x40(29)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80251E00
    li 28, 0x1
    .4byte 0x48000014 # b .L_80251E10
L_80251E00:
    addi 27, 27, 0x1
    addi 29, 29, 0xc
    cmpwi 27, 0x31
    .4byte 0x4180FF64 # blt .L_80251D70
L_80251E10:
    lfs 0, 0x40(31)
    addi 3, 1, 0x14
    psq_l 1, 0x38(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x8(31), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x10(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x1c(1)
    bl PSVECMag
    .4byte 0xC002D090 # lfs f0, lbl_80540030@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4182000C # beq .L_80251E68
    clrlwi. 0, 28, 24
    .4byte 0x41820134 # beq .L_80251F98
L_80251E68:
    lbz 0, 0xce8(31)
    cmplwi 0, 0x0
    .4byte 0x40820128 # bne .L_80251F98
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x4082011C # bne .L_80251F98
    lwz 0, 0x11f4(31)
    cmpwi 0, 0x0
    .4byte 0x40820110 # bne .L_80251F98
    lbz 0, 0x435(31)
    cmplwi 0, 0x0
    .4byte 0x40820104 # bne .L_80251F98
    lbz 0, 0x1216(31)
    cmplwi 0, 0x0
    .4byte 0x408200F8 # bne .L_80251F98
    li 0, 0xc
    addi 6, 31, 0x240
    li 4, 0x30
    mtctr 0
L_80251EB4:
    subi 0, 4, 0x1
    add 7, 31, 4
    mulli 3, 0, 0xc
    subi 0, 4, 0x2
    addi 5, 3, 0x38
    add 5, 31, 5
    psq_l 1, 0x0(5), 0, 0
    mulli 3, 0, 0xc
    lfs 0, 0x8(5)
    subi 0, 4, 0x3
    subi 4, 4, 0x1
    psq_st 1, 0x38(6), 0, 0
    addi 5, 3, 0x38
    mulli 3, 0, 0xc
    stfs 0, 0x40(6)
    add 5, 31, 5
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    add 7, 31, 4
    subi 0, 4, 0x3
    subi 4, 4, 0x1
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0x8(5)
    addi 5, 3, 0x38
    mulli 3, 0, 0xc
    psq_st 1, 0x2c(6), 0, 0
    add 5, 31, 5
    stfs 0, 0x34(6)
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    add 7, 31, 4
    subi 4, 4, 0x1
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0x8(5)
    addi 5, 3, 0x38
    add 5, 31, 5
    psq_st 1, 0x20(6), 0, 0
    stfs 0, 0x28(6)
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    add 7, 31, 4
    subi 4, 4, 0x1
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0x8(5)
    psq_st 1, 0x14(6), 0, 0
    stfs 0, 0x1c(6)
    subi 6, 6, 0x30
    lbz 0, 0x283(7)
    stb 0, 0x284(7)
    .4byte 0x4200FF3C # bdnz .L_80251EB4
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(31)
    psq_st 1, 0x38(31), 0, 0
    stfs 0, 0x40(31)
    lwz 3, 0xbf0(31)
    lbz 0, 0xb4(3)
    stb 0, 0x284(31)
L_80251F98:
    psq_l 1, 0x14(31), 0, 0
    lfs 0, 0x1c(31)
    psq_st 1, 0x20(31), 0, 0
    stfs 0, 0x28(31)
    lbz 0, 0x457(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80251FD8
    li 0, 0x0
    stb 0, 0x457(31)
    psq_l 1, 0x14(31), 0, 0
    lfs 0, 0x1c(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 0, 0x3b8(31)
    stw 0, 0x3b4(31)
    .4byte 0x4800004C # b .L_80252020
L_80251FD8:
    psq_l 2, 0x8(31), 0, 0
    psq_l 1, 0x2dc(31), 0, 0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x8(31), 0, 0
    psq_l 2, 0x10(31), 1, 0
    psq_l 1, 0x2e4(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x10(31), 1, 0
    stfs 0, 0x2e4(31)
    stfs 0, 0x2e0(31)
    stfs 0, 0x2dc(31)
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(31)
    psq_st 1, 0x14(31), 0, 0
    stfs 0, 0x1c(31)
    lwz 0, 0x3b4(31)
    stw 0, 0x3b8(31)
L_80252020:
    lbz 0, 0xce8(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8025204C
    psq_l 1, 0x8(31), 0, 0
    psq_l 0, 0x2d0(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(31), 0, 0
    psq_l 1, 0x10(31), 1, 0
    psq_l 0, 0x2d8(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x10(31), 1, 0
L_8025204C:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 0, 0x2d8(31)
    stfs 0, 0x2d4(31)
    stfs 0, 0x2d0(31)
    psq_l 2, 0x8(31), 0, 0
    psq_l 1, 0x2e8(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x8(31), 0, 0
    psq_l 2, 0x10(31), 1, 0
    psq_l 1, 0x2f0(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x10(31), 1, 0
    stfs 0, 0x2f0(31)
    stfs 0, 0x2ec(31)
    stfs 0, 0x2e8(31)
    lwz 0, 0xd94(31)
    stw 0, 0xda0(31)
    lwz 3, 0x1170(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_802520A4
    subi 0, 3, 0x1
    stw 0, 0x1170(31)
L_802520A4:
    lwz 0, 0x3dc(31)
    stw 0, 0x3e4(31)
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802520C0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    mr 31, 4
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x40820418 # bne .L_802524F8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 5, 0x1
    lwz 0, 0x4(30)
    lbz 6, 0x82(3)
    slw 0, 5, 0
    clrlwi 4, 0, 24
    and 3, 6, 4
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820254 # beq .L_80252360
    and. 0, 6, 4
    .4byte 0x40820014 # bne .L_80252128
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80252128
    .4byte 0x48000144 # b .L_80252268
L_80252128:
    li 28, 0x0
    mr 27, 28
L_80252130:
    lwz 0, 0x4(30)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80252144
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_802521A4
L_80252144:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80252194
    lwz 26, 0xd60(30)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80252178
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_802521A4
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_802521A4
L_80252178:
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_802521A4
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_802521A4
L_80252194:
    lwz 0, 0xd60(30)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_802521A4
    addi 28, 28, 0x1
L_802521A4:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80252130
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_802521C0
    li 3, 0x5
    .4byte 0x4800001C # b .L_802521D8
L_802521C0:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802521D4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802521D8
L_802521D4:
    lwz 3, 0x120c(30)
L_802521D8:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8025225C
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802521F8
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_802521FC
L_802521F8:
    lwz 29, 0x1224(30)
L_802521FC:
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80252210
    li 0, 0x0
    .4byte 0x4800003C # b .L_80252248
L_80252210:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_80252238
L_8025221C:
    lwz 26, 0xd60(30)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80252234
    addi 27, 27, 0x1
L_80252234:
    addi 28, 28, 0x1
L_80252238:
    lwz 0, 0x4(30)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_8025221C
    addi 0, 27, 0x1
L_80252248:
    subf 3, 29, 0
    subf 0, 0, 29
    or 0, 3, 0
    srwi 5, 0, 31
    .4byte 0x48000010 # b .L_80252268
L_8025225C:
    lwz 0, 0xd60(30)
    srwi 0, 0, 31
    xori 5, 0, 0x1
L_80252268:
    clrlwi. 0, 5, 24
    .4byte 0x41820050 # beq .L_802522BC
    lwz 3, 0x4(30)
    bl fn_8022EA0C
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x8(30)
    lfs 0, 0x4(3)
    stfs 0, 0xc(30)
    lfs 0, 0x8(3)
    stfs 0, 0x10(30)
    lwz 3, 0x4(30)
    bl fn_8022EA0C
    bl fn_8023DE58
    stw 3, 0x3b4(30)
    lfs 0, 0x8(30)
    stfs 0, 0x2c(30)
    lfs 0, 0xc(30)
    stfs 0, 0x30(30)
    lfs 0, 0x10(30)
    stfs 0, 0x34(30)
L_802522BC:
    li 0, 0x0
    mr 3, 30
    stb 0, 0x1216(30)
    li 4, 0x5
    li 5, 0x0
    bl fn_80248004
    li 4, 0x0
    stb 4, 0x1216(30)
    lbz 0, 0x1216(30)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_802523A4
    lbz 0, 0x454(30)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80252300
    mr 3, 30
    bl fn_8024B2E0
    .4byte 0x480000A8 # b .L_802523A4
L_80252300:
    li 0, 0x31
    mr 5, 4
    mr 6, 30
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    li 3, 0x1
    mtctr 0
L_80252318:
    lfs 1, 0x8(30)
    stfs 1, 0x38(6)
    lfs 1, 0xc(30)
    stfs 1, 0x3c(6)
    lfs 1, 0x10(30)
    stfs 1, 0x40(6)
    lfs 1, 0x10(30)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80252348
    addi 0, 5, 0x284
    stbx 3, 30, 0
    .4byte 0x4800000C # b .L_80252350
L_80252348:
    addi 0, 5, 0x284
    stbx 4, 30, 0
L_80252350:
    addi 6, 6, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FFC0 # bdnz .L_80252318
    .4byte 0x48000048 # b .L_802523A4
L_80252360:
    lwz 3, 0xd60(30)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x8(30)
    lfs 0, 0x4(3)
    stfs 0, 0xc(30)
    lfs 0, 0x8(3)
    stfs 0, 0x10(30)
    lwz 3, 0xd60(30)
    bl fn_8023DE58
    stw 3, 0x3b4(30)
    lfs 0, 0x8(30)
    stfs 0, 0x2c(30)
    lfs 0, 0xc(30)
    stfs 0, 0x30(30)
    lfs 0, 0x10(30)
    stfs 0, 0x34(30)
L_802523A4:
    mr 3, 30
    li 4, 0x1b
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802523C0
    li 0, 0x0
    .4byte 0x48000048 # b .L_80252404
L_802523C0:
    li 3, 0x1b
    li 0, 0x1
    stw 3, 0x1244(30)
    stb 0, 0x124c(30)
    stb 0, 0x124d(30)
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80252400
    lbz 0, 0xcfe(30)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80252400
    lwz 0, 0x1244(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80252400
    li 0, 0x0
    stb 0, 0xcfe(30)
L_80252400:
    li 0, 0x1
L_80252404:
    clrlwi. 0, 0, 24
    .4byte 0x418200F0 # beq .L_802524F8
    lfs 0, 0x8(30)
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    stfs 0, 0x398(30)
    lfs 0, 0xc(30)
    stfs 0, 0x39c(30)
    lfs 0, 0x10(30)
    stfs 0, 0x3a0(30)
    stfs 1, 0x3a0(30)
    lfs 0, 0x8(30)
    stfs 0, 0x3a4(30)
    lfs 0, 0xc(30)
    stfs 0, 0x3a8(30)
    lfs 0, 0x10(30)
    stfs 0, 0x3ac(30)
    stfs 1, 0x3ac(30)
    lwz 3, 0x0(31)
    cmpwi 3, 0x1
    .4byte 0x40820028 # bne .L_80252478
    lwz 0, 0x4(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80252478
    bl GetRoomConfigRecord
    .4byte 0xC022D0E8 # lfs f1, lbl_80540088@sda21(r0)
    lfs 0, 0xcc(3)
    fadds 0, 1, 0
    stfs 0, 0x3a4(30)
    .4byte 0x48000084 # b .L_802524F8
L_80252478:
    cmpwi 3, -0x1
    .4byte 0x40820028 # bne .L_802524A4
    lwz 0, 0x4(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802524A4
    bl GetRoomConfigRecord
    lfs 1, 0xd4(3)
    .4byte 0xC002D0E8 # lfs f0, lbl_80540088@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x3a4(30)
    .4byte 0x48000058 # b .L_802524F8
L_802524A4:
    cmpwi 3, 0x0
    .4byte 0x40820028 # bne .L_802524D0
    lwz 0, 0x4(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_802524D0
    bl GetRoomConfigRecord
    .4byte 0xC022D0E8 # lfs f1, lbl_80540088@sda21(r0)
    lfs 0, 0xd0(3)
    fadds 0, 1, 0
    stfs 0, 0x3a8(30)
    .4byte 0x4800002C # b .L_802524F8
L_802524D0:
    cmpwi 3, 0x0
    .4byte 0x40820024 # bne .L_802524F8
    lwz 0, 0x4(31)
    cmpwi 0, -0x1
    .4byte 0x40820018 # bne .L_802524F8
    bl GetRoomConfigRecord
    lfs 1, 0xd8(3)
    .4byte 0xC002D0E8 # lfs f0, lbl_80540088@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x3a8(30)
L_802524F8:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8025250C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 31, 3
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x40820274 # bne .L_8025279C
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x40820268 # bne .L_8025279C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_80252568
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80252568
    .4byte 0x48000144 # b .L_802526A8
L_80252568:
    li 29, 0x0
    mr 28, 29
L_80252570:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80252584
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802525E4
L_80252584:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802525D4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802525B8
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802525E4
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802525E4
L_802525B8:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_802525E4
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802525E4
L_802525D4:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802525E4
    addi 29, 29, 0x1
L_802525E4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80252570
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80252600
    li 3, 0x5
    .4byte 0x4800001C # b .L_80252618
L_80252600:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80252614
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80252618
L_80252614:
    lwz 3, 0x120c(31)
L_80252618:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8025269C
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80252638
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8025263C
L_80252638:
    lwz 30, 0x1224(31)
L_8025263C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80252650
    li 0, 0x0
    .4byte 0x4800003C # b .L_80252688
L_80252650:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80252678
L_8025265C:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80252674
    addi 28, 28, 0x1
L_80252674:
    addi 29, 29, 0x1
L_80252678:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8025265C
    addi 0, 28, 0x1
L_80252688:
    subf 3, 30, 0
    subf 0, 0, 30
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_802526A8
L_8025269C:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_802526A8:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_802526C0
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_80233EDC
    .4byte 0x48000024 # b .L_802526E0
L_802526C0:
    lwz 0, 0x1240(31)
    li 3, 0x0
    cmpwi 0, 0x1b
    .4byte 0x41820010 # beq .L_802526DC
    lwz 0, 0x1244(31)
    cmpwi 0, 0x1b
    .4byte 0x40820008 # bne .L_802526E0
L_802526DC:
    li 3, 0x1
L_802526E0:
    clrlwi. 0, 3, 24
    .4byte 0x408200B8 # bne .L_8025279C
    lwz 0, 0x3b0(31)
    cmpwi 0, 0x0
    .4byte 0x418100AC # bgt .L_8025279C
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x408000A0 # bge .L_8025279C
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0x8(1)
    lwz 4, 0xd4(3)
    .4byte 0xC022D0D0 # lfs f1, lbl_80540070@sda21(r0)
    lfs 0, 0x8(1)
    lwz 0, 0xd8(3)
    fadds 0, 1, 0
    lfs 2, 0x8(31)
    stw 5, 0xc(1)
    fcmpo cr0, 2, 0
    stw 4, 0x10(1)
    stw 0, 0x14(1)
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80252748
    stfs 0, 0x8(31)
    .4byte 0x48000058 # b .L_8025279C
L_80252748:
    lfs 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80252764
    stfs 0, 0x8(31)
    .4byte 0x4800003C # b .L_8025279C
L_80252764:
    lfs 0, 0xc(1)
    lfs 2, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80252784
    stfs 0, 0xc(31)
    .4byte 0x4800001C # b .L_8025279C
L_80252784:
    lfs 0, 0x14(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8025279C
    stfs 0, 0xc(31)
L_8025279C:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802527B0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 31, 4
    li 0, 0x0
    stw 0, 0x0(4)
    mr 30, 3
    li 4, 0x1b
    stw 0, 0x4(31)
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802527F8
    li 3, 0x0
    .4byte 0x48000398 # b .L_80252B8C
L_802527F8:
    lwz 0, 0x1240(30)
    cmpwi 0, 0x1b
    .4byte 0x4082000C # bne .L_8025280C
    li 3, 0x0
    .4byte 0x48000384 # b .L_80252B8C
L_8025280C:
    lbz 0, 0x454(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80252820
    li 3, 0x0
    .4byte 0x48000370 # b .L_80252B8C
L_80252820:
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_80252834
    li 3, 0x0
    .4byte 0x4800035C # b .L_80252B8C
L_80252834:
    lbz 0, 0x1216(30)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80252848
    li 3, 0x0
    .4byte 0x48000348 # b .L_80252B8C
L_80252848:
    psq_l 1, 0x8(30), 0, 0
    mr 3, 30
    lfs 0, 0x10(30)
    psq_st 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80252880
    lfs 1, 0x40(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80252880
    li 3, 0x0
    .4byte 0x48000310 # b .L_80252B8C
L_80252880:
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0x28(1)
    lwz 4, 0xd4(3)
    .4byte 0xC022D0D8 # lfs f1, lbl_80540078@sda21(r0)
    lfs 0, 0x28(1)
    lwz 0, 0xd8(3)
    fadds 0, 1, 0
    lfs 1, 0x38(1)
    stw 5, 0x2c(1)
    fcmpo cr0, 1, 0
    stw 4, 0x30(1)
    stw 0, 0x34(1)
    cror eq, lt, eq
    .4byte 0x408200A4 # bne .L_80252960
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_802528F8
    lwz 3, 0x4(30)
    bl fn_8022C82C
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_802528F8
    addi 3, 1, 0x38
    li 4, 0x0
    bl fn_80225EF4
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_80252960
L_802528F8:
    .4byte 0xC042D0B0 # lfs f2, lbl_80540050@sda21(r0)
    addi 3, 1, 0x20
    lfs 1, 0x28(1)
    lfs 0, 0x3c(1)
    fadds 1, 2, 1
    stfs 0, 0x24(1)
    stfs 1, 0x20(1)
    lwz 4, 0x3b4(30)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80252940
    cmplwi 0, 0x22
    .4byte 0x4082001C # bne .L_80252948
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80252948
L_80252940:
    li 3, 0x0
    .4byte 0x48000248 # b .L_80252B8C
L_80252948:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x0(31)
    li 3, 0x1
    stw 0, 0x4(31)
    .4byte 0x48000230 # b .L_80252B8C
L_80252960:
    lfs 31, 0x30(1)
    .4byte 0xC002D0D8 # lfs f0, lbl_80540078@sda21(r0)
    lfs 1, 0x38(1)
    fsubs 0, 31, 0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408200A0 # bne .L_80252A18
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_802529B4
    lwz 3, 0x4(30)
    bl fn_8022C82C
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810018 # bgt .L_802529B4
    addi 3, 1, 0x38
    li 4, 0x0
    bl fn_80225EF4
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80252A18
L_802529B4:
    .4byte 0xC022D0B0 # lfs f1, lbl_80540050@sda21(r0)
    addi 3, 1, 0x18
    lfs 0, 0x3c(1)
    fsubs 1, 31, 1
    stfs 0, 0x1c(1)
    stfs 1, 0x18(1)
    lwz 4, 0x3b4(30)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_802529F8
    cmplwi 0, 0x22
    .4byte 0x4082001C # bne .L_80252A00
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80252A00
L_802529F8:
    li 3, 0x0
    .4byte 0x48000190 # b .L_80252B8C
L_80252A00:
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x0(31)
    li 3, 0x1
    stw 0, 0x4(31)
    .4byte 0x48000178 # b .L_80252B8C
L_80252A18:
    .4byte 0xC002D0D8 # lfs f0, lbl_80540078@sda21(r0)
    lfs 31, 0x2c(1)
    lfs 1, 0x3c(1)
    fadds 0, 0, 31
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200A0 # bne .L_80252AD0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80252A6C
    lwz 3, 0x4(30)
    bl fn_8022C76C
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810018 # bgt .L_80252A6C
    addi 3, 1, 0x38
    li 4, 0x0
    bl fn_80225EF4
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80252AD0
L_80252A6C:
    .4byte 0xC002D0B0 # lfs f0, lbl_80540050@sda21(r0)
    addi 3, 1, 0x10
    lfs 1, 0x38(1)
    fadds 0, 0, 31
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x3b4(30)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80252AB0
    cmplwi 0, 0x22
    .4byte 0x4082001C # bne .L_80252AB8
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80252AB8
L_80252AB0:
    li 3, 0x0
    .4byte 0x480000D8 # b .L_80252B8C
L_80252AB8:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x0(31)
    li 3, 0x1
    stw 0, 0x4(31)
    .4byte 0x480000C0 # b .L_80252B8C
L_80252AD0:
    lfs 31, 0x34(1)
    .4byte 0xC002D0D8 # lfs f0, lbl_80540078@sda21(r0)
    lfs 1, 0x3c(1)
    fsubs 0, 31, 0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408200A0 # bne .L_80252B88
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80252B24
    lwz 3, 0x4(30)
    bl fn_8022C76C
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_80252B24
    addi 3, 1, 0x38
    li 4, 0x0
    bl fn_80225EF4
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80252B88
L_80252B24:
    .4byte 0xC002D0B0 # lfs f0, lbl_80540050@sda21(r0)
    addi 3, 1, 0x8
    lfs 1, 0x38(1)
    fsubs 0, 31, 0
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 4, 0x3b4(30)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80252B68
    cmplwi 0, 0x22
    .4byte 0x4082001C # bne .L_80252B70
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80252B70
L_80252B68:
    li 3, 0x0
    .4byte 0x48000020 # b .L_80252B8C
L_80252B70:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x0(31)
    li 3, 0x1
    stw 0, 0x4(31)
    .4byte 0x48000008 # b .L_80252B8C
L_80252B88:
    li 3, 0x0
L_80252B8C:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

