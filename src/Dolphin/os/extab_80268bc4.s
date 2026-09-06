.section extab, "a"
.balign 4
.global etb_8000BAD4
etb_8000BAD4:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_8000BAD4, 8

.section extabindex, "a"
.balign 4
.global eti_8001A200
eti_8001A200:
    .4byte fn_80268BC4
    .4byte 0x0000085C
    .4byte etb_8000BAD4
.size eti_8001A200, 12

.text
.balign 4
.global fn_80268BC4

fn_80268BC4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    mr 26, 3
    li 3, 0x0
    lbz 4, 0x48(26)
    li 0, 0x5
    stb 4, 0x40(26)
    stb 3, 0x48(26)
    stb 3, 0x30(26)
    lbz 4, 0x49(26)
    stb 4, 0x41(26)
    stb 3, 0x49(26)
    stb 3, 0x31(26)
    lbz 4, 0x4a(26)
    stb 4, 0x42(26)
    stb 3, 0x4a(26)
    stb 3, 0x32(26)
    lbz 4, 0x4b(26)
    stb 4, 0x43(26)
    stb 3, 0x4b(26)
    stb 3, 0x33(26)
    lbz 4, 0x4c(26)
    stb 4, 0x44(26)
    stb 3, 0x4c(26)
    stb 3, 0x34(26)
    lbz 4, 0x4d(26)
    stb 4, 0x45(26)
    stb 3, 0x4d(26)
    stb 3, 0x35(26)
    lbz 4, 0x4e(26)
    stb 4, 0x46(26)
    stb 3, 0x4e(26)
    stb 3, 0x36(26)
    lbz 4, 0x4f(26)
    stb 4, 0x47(26)
    stb 3, 0x4f(26)
    stb 3, 0x37(26)
    mtctr 0
L_80268C74:
    lwz 4, 0x4(26)
    addi 11, 3, 0xef0
    li 12, -0x1
    addi 10, 3, 0xef4
    stwx 12, 4, 11
    addi 9, 3, 0xef8
    addi 8, 3, 0xefc
    addi 7, 3, 0xf00
    lwz 4, 0x4(26)
    addi 6, 3, 0xf04
    addi 5, 3, 0xf08
    addi 0, 3, 0xf0c
    stwx 12, 4, 10
    addi 11, 3, 0xf10
    addi 10, 3, 0xf14
    lwz 4, 0x4(26)
    stwx 12, 4, 9
    addi 9, 3, 0xf18
    lwz 4, 0x4(26)
    stwx 12, 4, 8
    addi 8, 3, 0xf1c
    lwz 4, 0x4(26)
    stwx 12, 4, 7
    addi 7, 3, 0xf20
    lwz 4, 0x4(26)
    stwx 12, 4, 6
    addi 6, 3, 0xf24
    lwz 4, 0x4(26)
    stwx 12, 4, 5
    addi 5, 3, 0xf28
    lwz 4, 0x4(26)
    stwx 12, 4, 0
    addi 0, 3, 0xf2c
    addi 3, 3, 0x40
    lwz 4, 0x4(26)
    stwx 12, 4, 11
    lwz 4, 0x4(26)
    stwx 12, 4, 10
    lwz 4, 0x4(26)
    stwx 12, 4, 9
    lwz 4, 0x4(26)
    stwx 12, 4, 8
    lwz 4, 0x4(26)
    stwx 12, 4, 7
    lwz 4, 0x4(26)
    stwx 12, 4, 6
    lwz 4, 0x4(26)
    stwx 12, 4, 5
    lwz 4, 0x4(26)
    stwx 12, 4, 0
    .4byte 0x4200FF38 # bdnz .L_80268C74
    lbz 3, 0xb4(26)
    li 0, 0x0
    stb 3, 0xb5(26)
    stb 0, 0xb4(26)
    stb 0, 0xb6(26)
    stb 0, 0xb7(26)
    stb 0, 0xb8(26)
    stb 0, 0xb9(26)
    stb 0, 0xba(26)
    stw 0, 0xac(26)
    lwz 3, 0x4(26)
    lfs 31, 0x8(3)
    lfs 30, 0xc(3)
    bl fn_80240B84
    clrlwi. 0, 3, 24
    .4byte 0x40820680 # bne .L_802693FC
    lwz 3, 0x4(26)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x40820670 # bne .L_802693FC
    li 0, 0x0
    lis 3, lbl_8046BAE8@ha
    stw 0, 0xb0(26)
    addi 30, 26, 0x8
    addi 31, 3, lbl_8046BAE8@l
L_80268DA4:
    li 3, 0x0
    li 0, 0x4
    stb 3, 0x9a(26)
    stw 3, 0x1c(26)
    mtctr 0
L_80268DB8:
    add 4, 26, 3
    li 0, 0x0
    stb 0, 0x20(4)
    addi 3, 3, 0x1
    stb 0, 0x28(4)
    stb 0, 0x38(4)
    stb 0, 0x50(4)
    stb 0, 0x58(4)
    stb 0, 0x60(4)
    stb 0, 0x68(4)
    stb 0, 0x70(4)
    stb 0, 0x78(4)
    stb 0, 0x80(4)
    stb 0, 0x88(4)
    add 4, 26, 3
    addi 3, 3, 0x1
    stb 0, 0x20(4)
    stb 0, 0x28(4)
    stb 0, 0x38(4)
    stb 0, 0x50(4)
    stb 0, 0x58(4)
    stb 0, 0x60(4)
    stb 0, 0x68(4)
    stb 0, 0x70(4)
    stb 0, 0x78(4)
    stb 0, 0x80(4)
    stb 0, 0x88(4)
    .4byte 0x4200FF94 # bdnz .L_80268DB8
    lwz 3, 0xb0(26)
    mr 29, 31
    li 28, 0x0
    addi 0, 3, 0x1
    stw 0, 0xb0(26)
L_80268E3C:
    lfs 0, 0x0(29)
    mr 3, 30
    lfs 1, 0x4(29)
    stfs 0, 0x8(26)
    lfs 0, 0x8(29)
    stfs 1, 0xc(26)
    stfs 0, 0x10(26)
    stw 28, 0x1c(26)
    lwz 4, 0x4(26)
    psq_l 1, 0x0(30), 0, 0
    psq_l 0, 0x8(4), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(30), 0, 0
    psq_l 1, 0x8(30), 1, 0
    psq_l 0, 0x10(4), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(30), 1, 0
    lwz 4, 0x4(26)
    lwz 4, 0x3b4(4)
    bl fn_8022461C
    mr 0, 3
    lwz 3, 0x4(26)
    mr 27, 0
    bl fn_8025F590
    clrlwi. 0, 3, 24
    .4byte 0x41820290 # beq .L_80269130
    lwz 3, 0x4(26)
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40820280 # bne .L_80269130
    lwz 3, 0xd70(3)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800270 # bge .L_80269130
    psq_l 1, 0x8(26), 0, 0
    lfs 0, 0x10(26)
    lwz 3, 0x4(26)
    psq_st 1, 0x10(1), 0, 0
    lwz 25, 0x3b4(3)
    stfs 0, 0x18(1)
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_80268EF0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80268EF4
L_80268EF0:
    addi 3, 3, 0xdc
L_80268EF4:
    lfs 1, 0x8(26)
    lfs 0, 0x0(3)
    fsubs 0, 1, 0
    stfs 0, 0x8(26)
    lwz 3, 0x4(26)
    lwz 25, 0x3b4(3)
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_80268F20
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80268F24
L_80268F20:
    addi 3, 3, 0xdc
L_80268F24:
    lfs 1, 0xc(26)
    lfs 0, 0x4(3)
    fsubs 0, 1, 0
    stfs 0, 0xc(26)
    lwz 3, 0x4(26)
    lwz 3, 0xd70(3)
    bl fn_8023DE58
    mr 25, 3
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_80268F58
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80268F5C
L_80268F58:
    addi 3, 3, 0xdc
L_80268F5C:
    lfs 1, 0x8(26)
    lfs 0, 0x0(3)
    fadds 0, 1, 0
    stfs 0, 0x8(26)
    lwz 3, 0x4(26)
    lwz 3, 0xd70(3)
    bl fn_8023DE58
    mr 25, 3
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_80268F90
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80268F94
L_80268F90:
    addi 3, 3, 0xdc
L_80268F94:
    lfs 1, 0xc(26)
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0xc(26)
    lwz 3, 0x4(26)
    lwz 3, 0xd70(3)
    bl fn_8023DE58
    lwz 5, 0x4(26)
    li 0, 0x28
    li 4, 0x0
    mr 6, 5
    mr 7, 5
    mtctr 0
L_80268FC8:
    lwz 0, 0xdb0(6)
    cmpwi 0, 0x0
    .4byte 0x41800078 # blt .L_80269048
    lwz 0, 0x1030(6)
    cmpw 3, 0
    .4byte 0x4082006C # bne .L_80269048
    lfs 2, 0x8(26)
    li 0, 0x0
    lfs 0, 0x5fc(7)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80269028
    lfs 1, 0xc(26)
    lfs 0, 0x600(7)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80269028
    lfs 0, 0x604(7)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80269028
    lfs 0, 0x608(7)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80269028
    li 0, 0x1
L_80269028:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_80269048
    slwi 0, 4, 2
    li 3, 0x1
    add 4, 5, 0
    lwz 0, 0xdb0(4)
    stw 0, 0xef0(4)
    .4byte 0x4800009C # b .L_802690E0
L_80269048:
    lwz 0, 0xdb4(6)
    addi 4, 4, 0x1
    cmpwi 0, 0x0
    .4byte 0x41800078 # blt .L_802690CC
    lwz 0, 0x1034(6)
    cmpw 3, 0
    .4byte 0x4082006C # bne .L_802690CC
    lfs 2, 0x8(26)
    li 0, 0x0
    lfs 0, 0x60c(7)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802690AC
    lfs 1, 0xc(26)
    lfs 0, 0x610(7)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802690AC
    lfs 0, 0x614(7)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802690AC
    lfs 0, 0x618(7)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802690AC
    li 0, 0x1
L_802690AC:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_802690CC
    slwi 0, 4, 2
    li 3, 0x1
    add 4, 5, 0
    lwz 0, 0xdb0(4)
    stw 0, 0xef0(4)
    .4byte 0x48000018 # b .L_802690E0
L_802690CC:
    addi 6, 6, 0x8
    addi 7, 7, 0x20
    addi 4, 4, 0x1
    .4byte 0x4200FEF0 # bdnz .L_80268FC8
    li 3, 0x0
L_802690E0:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802690FC
    lwz 3, 0x1c(26)
    li 4, 0x1
    addi 0, 3, 0x28
    stbx 4, 26, 0
    .4byte 0x48000028 # b .L_80269120
L_802690FC:
    lwz 3, 0x4(26)
    lwz 3, 0xd70(3)
    bl fn_8023DE58
    mr 4, 3
    addi 3, 26, 0x8
    bl fn_8022461C
    mr 4, 3
    mr 3, 26
    bl fn_8026B81C
L_80269120:
    psq_l 1, 0x10(1), 0, 0
    lfs 0, 0x18(1)
    psq_st 1, 0x8(26), 0, 0
    stfs 0, 0x10(26)
L_80269130:
    lwz 7, 0x4(26)
    li 0, 0x28
    li 4, 0x0
    mr 5, 7
    mr 6, 7
    lwz 3, 0x3b4(7)
    mtctr 0
L_8026914C:
    lwz 0, 0xdb0(5)
    cmpwi 0, 0x0
    .4byte 0x41800078 # blt .L_802691CC
    lwz 0, 0x1030(5)
    cmpw 3, 0
    .4byte 0x4082006C # bne .L_802691CC
    lfs 2, 0x8(26)
    li 0, 0x0
    lfs 0, 0x5fc(6)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802691AC
    lfs 1, 0xc(26)
    lfs 0, 0x600(6)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802691AC
    lfs 0, 0x604(6)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802691AC
    lfs 0, 0x608(6)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802691AC
    li 0, 0x1
L_802691AC:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_802691CC
    slwi 0, 4, 2
    li 3, 0x1
    add 4, 7, 0
    lwz 0, 0xdb0(4)
    stw 0, 0xef0(4)
    .4byte 0x4800009C # b .L_80269264
L_802691CC:
    lwz 0, 0xdb4(5)
    addi 4, 4, 0x1
    cmpwi 0, 0x0
    .4byte 0x41800078 # blt .L_80269250
    lwz 0, 0x1034(5)
    cmpw 3, 0
    .4byte 0x4082006C # bne .L_80269250
    lfs 2, 0x8(26)
    li 0, 0x0
    lfs 0, 0x60c(6)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80269230
    lfs 1, 0xc(26)
    lfs 0, 0x610(6)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80269230
    lfs 0, 0x614(6)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80269230
    lfs 0, 0x618(6)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80269230
    li 0, 0x1
L_80269230:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_80269250
    slwi 0, 4, 2
    li 3, 0x1
    add 4, 7, 0
    lwz 0, 0xdb0(4)
    stw 0, 0xef0(4)
    .4byte 0x48000018 # b .L_80269264
L_80269250:
    addi 5, 5, 0x8
    addi 6, 6, 0x20
    addi 4, 4, 0x1
    .4byte 0x4200FEF0 # bdnz .L_8026914C
    li 3, 0x0
L_80269264:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80269280
    lwz 3, 0x1c(26)
    li 4, 0x1
    addi 0, 3, 0x28
    stbx 4, 26, 0
    .4byte 0x480000B4 # b .L_80269330
L_80269280:
    lwz 3, 0x4(26)
    bl fn_8026FC20
    cmpwi 3, 0x0
    .4byte 0x41810098 # bgt .L_80269324
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820088 # bne .L_80269324
    lwz 3, 0x4(26)
    lwz 25, 0x3b4(3)
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_802692BC
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802692C0
L_802692BC:
    addi 3, 3, 0xdc
L_802692C0:
    lfs 2, 0x8(26)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80269308
    lfs 1, 0xc(26)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80269308
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80269308
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80269308
    li 0, 0x1
L_80269308:
    clrlwi. 0, 0, 24
    .4byte 0x40820018 # bne .L_80269324
    lwz 3, 0x1c(26)
    li 4, 0x1
    addi 0, 3, 0x38
    stbx 4, 26, 0
    .4byte 0x48000010 # b .L_80269330
L_80269324:
    mr 3, 26
    mr 4, 27
    bl fn_8026C350
L_80269330:
    addi 28, 28, 0x1
    addi 29, 29, 0xc
    cmpwi 28, 0x8
    .4byte 0x4180FB00 # blt .L_80268E3C
    mr 3, 26
    bl fn_80269574
    lwz 0, 0xb0(26)
    cmpwi 0, 0x1
    .4byte 0x4181000C # bgt .L_8026935C
    mr 3, 26
    bl fn_8026E1E0
L_8026935C:
    lbz 0, 0x9a(26)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80269374
    lwz 0, 0xb0(26)
    cmpwi 0, 0x64
    .4byte 0x4180FA34 # blt .L_80268DA4
L_80269374:
    lbz 4, 0x98(26)
    li 3, 0x0
    cmplwi 4, 0x0
    .4byte 0x40820010 # bne .L_80269390
    lbz 0, 0x99(26)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80269394
L_80269390:
    li 3, 0x1
L_80269394:
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_802693B4
    lwz 3, 0x4(26)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    stfs 0, 0xc90(3)
    stfs 0, 0xc94(3)
    stfs 0, 0xc98(3)
    .4byte 0x48000020 # b .L_802693D0
L_802693B4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x96(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_802693D0
    stb 4, 0x99(26)
    li 0, 0x0
    stb 0, 0x98(26)
L_802693D0:
    lwz 3, 0x4(26)
    lfs 0, 0x8(3)
    lfs 2, 0xc(3)
    fsubs 1, 0, 31
    stfs 0, 0x8(1)
    fsubs 0, 2, 30
    stfs 2, 0xc(1)
    stfs 1, 0x14(26)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x18(26)
L_802693FC:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

