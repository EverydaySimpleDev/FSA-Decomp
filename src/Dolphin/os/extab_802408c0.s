.section extab, "a"
.balign 4
.global etb_8000B2C8
etb_8000B2C8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B2C8, 8

.global etb_8000B2D0
etb_8000B2D0:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B2D0, 8

.global etb_8000B2D8
etb_8000B2D8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B2D8, 8

.global etb_8000B2E0
etb_8000B2E0:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B2E0, 8

.global etb_8000B2E8
etb_8000B2E8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B2E8, 8

.section extabindex, "a"
.balign 4
.global eti_80019720
eti_80019720:
    .4byte fn_802408C8
    .4byte 0x0000020C
    .4byte etb_8000B2C8
.size eti_80019720, 12

.global eti_8001972C
eti_8001972C:
    .4byte fn_80240B84
    .4byte 0x000001CC
    .4byte etb_8000B2D0
.size eti_8001972C, 12

.global eti_80019738
eti_80019738:
    .4byte fn_80240DCC
    .4byte 0x00000108
    .4byte etb_8000B2D8
.size eti_80019738, 12

.global eti_80019744
eti_80019744:
    .4byte fn_80240F28
    .4byte 0x00000274
    .4byte etb_8000B2E0
.size eti_80019744, 12

.global eti_80019750
eti_80019750:
    .4byte fn_80241258
    .4byte 0x0000002C
    .4byte etb_8000B2E8
.size eti_80019750, 12

.text
.balign 4
.global fn_802408C0
.global fn_802408C8
.global fn_80240AD4
.global fn_80240AF0
.global fn_80240AF8
.global fn_80240B00
.global fn_80240B20
.global fn_80240B34
.global fn_80240B5C
.global fn_80240B70
.global fn_80240B84
.global fn_80240D50
.global fn_80240D64
.global fn_80240D8C
.global fn_80240DAC
.global fn_80240DCC
.global fn_80240ED4
.global fn_80240EF4
.global fn_80240F14
.global fn_80240F28
.global fn_8024119C
.global fn_802411C4
.global fn_802411D8
.global fn_802411EC
.global fn_80241200
.global fn_80241230
.global fn_80241258
.global fn_80241284
.global fn_802412A4
.global fn_802412C4
.global fn_802412CC
.global fn_802412D4
.global fn_802412E0
.global fn_80241338
.global fn_80241380
.global fn_802413C8

fn_802408C0:
    lbz 3, 0x1217(3)
    blr

fn_802408C8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 30, 3
    mr 31, 5
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x408001D8 # bge .L_80240AC0
    lfs 0, 0x8(31)
    addi 5, 1, 0x8
    psq_l 1, 0x0(31), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x0(5), 0, 0
    lwz 3, 0xbec(30)
    bl fn_8030B110
    clrlwi. 0, 3, 24
    .4byte 0x418201B4 # beq .L_80240AC0
    mr 3, 30
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x408201A4 # bne .L_80240AC0
    lbz 0, 0xce8(30)
    cmplwi 0, 0x0
    .4byte 0x40820198 # bne .L_80240AC0
    mr 3, 30
    li 4, 0x5
    li 5, 0x0
    bl fn_80248004
    li 28, 0x0
    mr 29, 28
L_80240944:
    lwz 0, 0x4(30)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_80240958
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_802409B8
L_80240958:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802409A8
    lwz 27, 0xd60(30)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024098C
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802409B8
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_802409B8
L_8024098C:
    lwz 27, 0x4(30)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_802409B8
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_802409B8
L_802409A8:
    lwz 0, 0xd60(30)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_802409B8
    addi 28, 28, 0x1
L_802409B8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_80240944
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_802409D4
    li 3, 0x5
    .4byte 0x4800001C # b .L_802409EC
L_802409D4:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802409E8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802409EC
L_802409E8:
    lwz 3, 0x120c(30)
L_802409EC:
    cmpwi 3, 0x5
    .4byte 0x408200D0 # bne .L_80240AC0
    li 0, 0x7
    mr 3, 30
    lfs 3, 0x0(31)
    li 5, 0x0
    lfs 2, 0x4(31)
    lfs 1, 0x8(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    mtctr 0
L_80240A14:
    stfs 3, 0x38(3)
    addi 4, 5, 0x284
    add 4, 30, 4
    li 0, 0x0
    stfs 2, 0x3c(3)
    addi 5, 5, 0x7
    stfs 1, 0x40(3)
    stfs 0, 0x40(3)
    stb 0, 0x0(4)
    stfs 3, 0x44(3)
    stfs 2, 0x48(3)
    stfs 1, 0x4c(3)
    stfs 0, 0x4c(3)
    stb 0, 0x1(4)
    stfs 3, 0x50(3)
    stfs 2, 0x54(3)
    stfs 1, 0x58(3)
    stfs 0, 0x58(3)
    stb 0, 0x2(4)
    stfs 3, 0x5c(3)
    stfs 2, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x64(3)
    stb 0, 0x3(4)
    stfs 3, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 1, 0x70(3)
    stfs 0, 0x70(3)
    stb 0, 0x4(4)
    stfs 3, 0x74(3)
    stfs 2, 0x78(3)
    stfs 1, 0x7c(3)
    stfs 0, 0x7c(3)
    stb 0, 0x5(4)
    stfs 3, 0x80(3)
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 0, 0x88(3)
    addi 3, 3, 0x54
    stb 0, 0x6(4)
    .4byte 0x4200FF60 # bdnz .L_80240A14
    li 0, 0x1
    stb 0, 0x1216(30)
L_80240AC0:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80240AD4:
    lbz 0, 0xce8(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80240AE8
    li 3, 0x0
    blr
L_80240AE8:
    lbz 3, 0x1216(3)
    blr

fn_80240AF0:
    lbz 3, 0x1215(3)
    blr

fn_80240AF8:
    lbz 3, 0x1214(3)
    blr

fn_80240B00:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0xf
    .4byte 0x4182000C # beq .L_80240B18
    cmpwi 0, 0x10
    bnelr
L_80240B18:
    li 3, 0x1
    blr

fn_80240B20:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0x11
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_80240B34:
    lwz 0, 0x1240(3)
    li 4, 0x0
    cmpwi 0, 0x51
    .4byte 0x40820014 # bne .L_80240B54
    lwz 0, 0x46c(3)
    cmpwi 0, 0xd2
    .4byte 0x41800008 # blt .L_80240B54
    li 4, 0x1
L_80240B54:
    mr 3, 4
    blr

fn_80240B5C:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0x51
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_80240B70:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0x50
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_80240B84:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 31, 3
    lwz 0, 0x4(31)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_80240BC8
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80240BC8
    .4byte 0x48000140 # b .L_80240D04
L_80240BC8:
    li 27, 0x0
    lwz 28, 0x4(31)
    mr 26, 27
L_80240BD4:
    cmpw 26, 28
    .4byte 0x4082000C # bne .L_80240BE4
    addi 27, 27, 0x1
    .4byte 0x48000064 # b .L_80240C44
L_80240BE4:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80240C34
    lwz 29, 0xd60(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80240C18
    mr 3, 26
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x40820038 # bne .L_80240C44
    addi 27, 27, 0x1
    .4byte 0x48000030 # b .L_80240C44
L_80240C18:
    lwz 29, 0x4(31)
    mr 3, 26
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_80240C44
    addi 27, 27, 0x1
    .4byte 0x48000014 # b .L_80240C44
L_80240C34:
    lwz 0, 0xd60(31)
    cmpw 26, 0
    .4byte 0x40820008 # bne .L_80240C44
    addi 27, 27, 0x1
L_80240C44:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF88 # blt .L_80240BD4
    cmpwi 27, 0x1
    .4byte 0x4181000C # bgt .L_80240C60
    li 3, 0x5
    .4byte 0x4800001C # b .L_80240C78
L_80240C60:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80240C74
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80240C78
L_80240C74:
    lwz 3, 0x120c(31)
L_80240C78:
    cmpwi 3, 0x4
    .4byte 0x4082007C # bne .L_80240CF8
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80240C98
    bl fn_80234004
    mr 28, 3
    .4byte 0x48000008 # b .L_80240C9C
L_80240C98:
    lwz 28, 0x1224(31)
L_80240C9C:
    lwz 29, 0xd60(31)
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_80240CB0
    li 0, 0x0
    .4byte 0x48000038 # b .L_80240CE4
L_80240CB0:
    li 26, 0x0
    lwz 30, 0x4(31)
    mr 27, 26
    .4byte 0x4800001C # b .L_80240CD8
L_80240CC0:
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x40820008 # bne .L_80240CD4
    addi 26, 26, 0x1
L_80240CD4:
    addi 27, 27, 0x1
L_80240CD8:
    cmpw 27, 30
    .4byte 0x4180FFE4 # blt .L_80240CC0
    addi 0, 26, 0x1
L_80240CE4:
    subf 3, 28, 0
    subf 0, 0, 28
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_80240D04
L_80240CF8:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_80240D04:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_80240D1C
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_80233EDC
    .4byte 0x48000024 # b .L_80240D3C
L_80240D1C:
    lwz 0, 0x1240(31)
    li 3, 0x0
    cmpwi 0, 0x1b
    .4byte 0x41820010 # beq .L_80240D38
    lwz 0, 0x1244(31)
    cmpwi 0, 0x1b
    .4byte 0x40820008 # bne .L_80240D3C
L_80240D38:
    li 3, 0x1
L_80240D3C:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80240D50:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0x4f
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_80240D64:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x4c
    .4byte 0x41820014 # beq .L_80240D84
    cmpwi 0, 0x4d
    .4byte 0x4182000C # beq .L_80240D84
    cmpwi 0, 0x4e
    bnelr
L_80240D84:
    li 3, 0x1
    blr

fn_80240D8C:
    lwz 0, 0x1244(3)
    li 3, 0x0
    cmpwi 0, 0x38
    .4byte 0x4182000C # beq .L_80240DA4
    cmpwi 0, 0x13
    bnelr
L_80240DA4:
    li 3, 0x1
    blr

fn_80240DAC:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x38
    .4byte 0x4182000C # beq .L_80240DC4
    cmpwi 0, 0x13
    bnelr
L_80240DC4:
    li 3, 0x1
    blr

fn_80240DCC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x1240(3)
    stw 31, 0x1c(1)
    li 31, 0x1
    cmpwi 0, 0x49
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    li 3, 0x0
    .4byte 0x41820010 # beq .L_80240E0C
    lwz 0, 0x1244(28)
    cmpwi 0, 0x49
    .4byte 0x40820008 # bne .L_80240E10
L_80240E0C:
    li 3, 0x1
L_80240E10:
    clrlwi. 0, 3, 24
    .4byte 0x4082009C # bne .L_80240EB0
    lbz 0, 0xce8(28)
    li 30, 0x0
    mr 29, 30
    cmplwi 0, 0x0
    mr 3, 30
    .4byte 0x41820014 # beq .L_80240E40
    lwz 0, 0x3b4(28)
    cmpwi 0, 0x8
    .4byte 0x41820008 # beq .L_80240E40
    li 3, 0x1
L_80240E40:
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80240E64
    bl GetRoomConfigRecord
    lwz 4, 0x3b4(28)
    li 5, 0x1
    bl fn_802D7804
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80240E64
    li 29, 0x1
L_80240E64:
    clrlwi. 0, 29, 24
    .4byte 0x4182003C # beq .L_80240EA4
    lwz 28, 0xce4(28)
    li 29, 0x1
    cmpwi 28, 0x8
    .4byte 0x41820020 # beq .L_80240E98
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D7804
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80240E98
    li 29, 0x0
L_80240E98:
    clrlwi. 0, 29, 24
    .4byte 0x41820008 # beq .L_80240EA4
    li 30, 0x1
L_80240EA4:
    clrlwi. 0, 30, 24
    .4byte 0x40820008 # bne .L_80240EB0
    li 31, 0x0
L_80240EB0:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80240ED4:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x1e
    .4byte 0x4182000C # beq .L_80240EEC
    cmpwi 0, 0x32
    bnelr
L_80240EEC:
    li 3, 0x1
    blr

fn_80240EF4:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x42
    .4byte 0x4182000C # beq .L_80240F0C
    cmpwi 0, 0x43
    bnelr
L_80240F0C:
    li 3, 0x1
    blr

fn_80240F14:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0x41
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_80240F28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    li 30, 0x0
    lwz 28, 0x4(3)
    mr 31, 3
    mr 29, 30
L_80240F48:
    cmpw 29, 28
    .4byte 0x4082000C # bne .L_80240F58
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_80240FB8
L_80240F58:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80240FA8
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80240F8C
    mr 3, 29
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80240FB8
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_80240FB8
L_80240F8C:
    lwz 26, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_80240FB8
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_80240FB8
L_80240FA8:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_80240FB8
    addi 30, 30, 0x1
L_80240FB8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF88 # blt .L_80240F48
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_80240FD4
    li 3, 0x5
    .4byte 0x4800001C # b .L_80240FEC
L_80240FD4:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80240FE8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80240FEC
L_80240FE8:
    lwz 3, 0x120c(31)
L_80240FEC:
    cmpwi 3, 0x5
    .4byte 0x40820188 # bne .L_80241178
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_80241024
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80241024
    .4byte 0x48000140 # b .L_80241160
L_80241024:
    li 27, 0x0
    lwz 28, 0x4(31)
    mr 26, 27
L_80241030:
    cmpw 26, 28
    .4byte 0x4082000C # bne .L_80241040
    addi 27, 27, 0x1
    .4byte 0x48000064 # b .L_802410A0
L_80241040:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80241090
    lwz 29, 0xd60(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80241074
    mr 3, 26
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x40820038 # bne .L_802410A0
    addi 27, 27, 0x1
    .4byte 0x48000030 # b .L_802410A0
L_80241074:
    lwz 29, 0x4(31)
    mr 3, 26
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_802410A0
    addi 27, 27, 0x1
    .4byte 0x48000014 # b .L_802410A0
L_80241090:
    lwz 0, 0xd60(31)
    cmpw 26, 0
    .4byte 0x40820008 # bne .L_802410A0
    addi 27, 27, 0x1
L_802410A0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF88 # blt .L_80241030
    cmpwi 27, 0x1
    .4byte 0x4181000C # bgt .L_802410BC
    li 3, 0x5
    .4byte 0x4800001C # b .L_802410D4
L_802410BC:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802410D0
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802410D4
L_802410D0:
    lwz 3, 0x120c(31)
L_802410D4:
    cmpwi 3, 0x4
    .4byte 0x4082007C # bne .L_80241154
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802410F4
    bl fn_80234004
    mr 28, 3
    .4byte 0x48000008 # b .L_802410F8
L_802410F4:
    lwz 28, 0x1224(31)
L_802410F8:
    lwz 29, 0xd60(31)
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8024110C
    li 0, 0x0
    .4byte 0x48000038 # b .L_80241140
L_8024110C:
    li 26, 0x0
    lwz 30, 0x4(31)
    mr 27, 26
    .4byte 0x4800001C # b .L_80241134
L_8024111C:
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x40820008 # bne .L_80241130
    addi 26, 26, 0x1
L_80241130:
    addi 27, 27, 0x1
L_80241134:
    cmpw 27, 30
    .4byte 0x4180FFE4 # blt .L_8024111C
    addi 0, 26, 0x1
L_80241140:
    subf 3, 28, 0
    subf 0, 0, 28
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_80241160
L_80241154:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_80241160:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_80241178
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_8023513C
    .4byte 0x48000014 # b .L_80241188
L_80241178:
    lwz 0, 0x1240(31)
    subfic 0, 0, 0x39
    cntlzw 0, 0
    srwi 3, 0, 5
L_80241188:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024119C:
    lwz 0, 0x1240(3)
    li 4, 0x0
    cmpwi 0, 0xc
    .4byte 0x40820014 # bne .L_802411BC
    lwz 0, 0x11e4(3)
    cmpwi 0, 0xc
    .4byte 0x41820008 # beq .L_802411BC
    li 4, 0x1
L_802411BC:
    mr 3, 4
    blr

fn_802411C4:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0xc
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_802411D8:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0xa
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_802411EC:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_80241200:
    lwz 0, 0x1240(3)
    li 4, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80241224
    lhz 0, 0x3c4(3)
    cmplwi 0, 0x1bf
    .4byte 0x41800010 # blt .L_80241228
    cmplwi 0, 0x1c6
    .4byte 0x40800008 # bge .L_80241228
L_80241224:
    li 4, 0x1
L_80241228:
    mr 3, 4
    blr

fn_80241230:
    lwz 0, 0x1240(3)
    li 4, 0x0
    cmpwi 0, 0xb
    .4byte 0x41820010 # beq .L_8024124C
    lwz 0, 0x1244(3)
    cmpwi 0, 0xb
    .4byte 0x40820008 # bne .L_80241250
L_8024124C:
    li 4, 0x1
L_80241250:
    mr 3, 4
    blr

fn_80241258:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8027218C
    subfic 0, 3, 0x4
    cntlzw 0, 0
    srwi 3, 0, 5
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80241284:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_8024129C
    cmpwi 0, 0xa
    bnelr
L_8024129C:
    li 3, 0x1
    blr

fn_802412A4:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x4a
    .4byte 0x4182000C # beq .L_802412BC
    cmpwi 0, 0x4b
    bnelr
L_802412BC:
    li 3, 0x1
    blr

fn_802412C4:
    lbz 3, 0x458(3)
    blr

fn_802412CC:
    lbz 3, 0x460(3)
    blr

fn_802412D4:
    li 0, 0x1
    stb 0, 0xcaf(3)
    blr

fn_802412E0:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0xd
    .4byte 0x41820044 # beq .L_80241330
    cmpwi 0, 0xe
    .4byte 0x4182003C # beq .L_80241330
    cmpwi 0, 0x11
    .4byte 0x41820034 # beq .L_80241330
    cmpwi 0, 0x12
    .4byte 0x4182002C # beq .L_80241330
    cmpwi 0, 0x1a
    .4byte 0x41820024 # beq .L_80241330
    cmpwi 0, 0x3c
    .4byte 0x4182001C # beq .L_80241330
    cmpwi 0, 0x3b
    .4byte 0x41820014 # beq .L_80241330
    cmpwi 0, 0x3a
    .4byte 0x4182000C # beq .L_80241330
    cmpwi 0, 0x47
    bnelr
L_80241330:
    li 3, 0x1
    blr

fn_80241338:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x4
    .4byte 0x41820034 # beq .L_80241378
    cmpwi 0, 0x8
    .4byte 0x4182002C # beq .L_80241378
    cmpwi 0, 0x39
    .4byte 0x41820024 # beq .L_80241378
    cmpwi 0, 0x44
    .4byte 0x4182001C # beq .L_80241378
    cmpwi 0, 0x45
    .4byte 0x41820014 # beq .L_80241378
    cmpwi 0, 0x3d
    .4byte 0x4182000C # beq .L_80241378
    cmpwi 0, 0x37
    bnelr
L_80241378:
    li 3, 0x1
    blr

fn_80241380:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_802413C0
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_802413C0
    cmpwi 0, 0x3
    .4byte 0x41820024 # beq .L_802413C0
    cmpwi 0, 0x4
    .4byte 0x4182001C # beq .L_802413C0
    cmpwi 0, 0x8
    .4byte 0x41820014 # beq .L_802413C0
    cmpwi 0, 0x4a
    .4byte 0x4182000C # beq .L_802413C0
    cmpwi 0, 0x4b
    bnelr
L_802413C0:
    li 3, 0x1
    blr

fn_802413C8:
    lwz 0, 0x1240(3)
    li 3, 0x0
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_802413E0
    cmpwi 0, 0x37
    bnelr
L_802413E0:
    li 3, 0x1
    blr

