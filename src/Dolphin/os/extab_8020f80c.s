.section extab, "a"
.balign 4
.global etb_80009FB8
etb_80009FB8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009FB8, 8

.global etb_80009FC0
etb_80009FC0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009FC0, 8

.global etb_80009FC8
etb_80009FC8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009FC8, 8

.section extabindex, "a"
.balign 4
.global eti_80017ADC
eti_80017ADC:
    .4byte fn_8020F80C
    .4byte 0x000002D0
    .4byte etb_80009FB8
.size eti_80017ADC, 12

.global eti_80017AE8
eti_80017AE8:
    .4byte fn_8020FADC
    .4byte 0x00000150
    .4byte etb_80009FC0
.size eti_80017AE8, 12

.global eti_80017AF4
eti_80017AF4:
    .4byte fn_8020FC2C
    .4byte 0x00000224
    .4byte etb_80009FC8
.size eti_80017AF4, 12

.text
.balign 4
.global fn_8020F80C
.global fn_8020FADC
.global fn_8020FC2C

fn_8020F80C:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x44
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    mr 30, 4
    stw 29, 0x84(1)
    mr 29, 3
    stw 0, 0x54(1)
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_8020F8A4
L_8020F844:
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
L_8020F8A4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8020F844
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x54(1)
    stw 5, 0x58(1)
    stw 5, 0x5c(1)
    stb 5, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 4, 0x63(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stb 5, 0x67(1)
    stb 5, 0x68(1)
    stb 5, 0x69(1)
    stb 4, 0x6a(1)
    stw 3, 0x6c(1)
    stb 4, 0x70(1)
    stb 5, 0x71(1)
    stb 5, 0x72(1)
    stw 6, 0x74(1)
    stw 5, 0x78(1)
    stw 0, 0x7c(1)
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8020F938
    lwz 3, 0xc8(29)
    bl fn_8023BCD4
    clrlwi. 0, 3, 24
    stb 3, 0x57(1)
    .4byte 0x4182018C # beq .L_8020FAC0
L_8020F938:
    li 0, 0x0
    stb 0, 0x60(1)
    stb 0, 0x61(1)
    lwz 0, 0x138(29)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8020F974
    lis 4, lbl_8046A448@ha
    lwz 3, 0x4(29)
    addi 7, 4, lbl_8046A448@l
    addi 5, 1, 0x44
    addi 4, 29, 0xc
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801EF830
L_8020F974:
    li 3, 0x0
    li 31, 0x0
    stb 3, 0x63(1)
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_8020FA18
    stb 3, 0x64(1)
    lwz 3, 0xc8(29)
    bl fn_8023CA88
    stb 3, 0x60(1)
    lwz 3, 0xc8(29)
    bl fn_8023CB24
    .4byte 0xC042CAF0 # lfs f2, lbl_8053FA90@sda21(r0)
    addi 4, 3, 0x1
    .4byte 0xC022CAF4 # lfs f1, lbl_8053FA94@sda21(r0)
    addi 0, 1, 0x14
    .4byte 0xC002CAF8 # lfs f0, lbl_8053FA98@sda21(r0)
    lis 3, lbl_8046A238@ha
    stb 4, 0x61(1)
    addi 3, 3, lbl_8046A238@l
    li 31, 0x2
    stfs 2, 0x20(1)
    stfs 2, 0x30(1)
    stfs 2, 0x40(1)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 2, 0x34(1)
    stfs 2, 0x38(1)
    stfs 0, 0x3c(1)
    stw 0, 0x5c(1)
    lwz 0, 0x350(29)
    lfs 1, 0x14(29)
    mulli 0, 0, 0x14
    add 3, 3, 0
    lfs 0, 0x10(3)
    fsubs 0, 1, 0
    stfs 0, 0x14(29)
L_8020FA18:
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8020FA70
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046A458@ha
    addi 5, 3, lbl_8046A458@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022CAF4 # lfs f1, lbl_8053FA94@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x44
    lwz 3, 0x20(4)
    addi 4, 29, 0xc
    bl fn_802F86CC
L_8020FA70:
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x40820028 # bne .L_8020FAA0
    addi 3, 29, 0xc
    addi 4, 1, 0x8
    bl fn_801CD0D0
    lis 3, lbl_8046A458@ha
    mr 4, 30
    addi 3, 3, lbl_8046A458@l
    addi 5, 1, 0x8
    addi 6, 1, 0x44
    bl fn_801EF574
L_8020FAA0:
    lwz 3, 0x198(29)
    mr 6, 30
    lwz 4, 0x4(29)
    mr 8, 31
    addi 5, 29, 0xc
    li 7, 0x0
    li 9, -0x1
    bl fn_80307AC8
L_8020FAC0:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8020FADC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    lwz 4, 0x4(3)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x408200C0 # bne .L_8020FBCC
    lbz 0, 0xc4(30)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_8020FB6C
    lfs 1, 0x14(30)
    .4byte 0xC002CAF0 # lfs f0, lbl_8053FA90@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082003C # bne .L_8020FB6C
    lfs 1, 0xc(30)
    lfs 0, 0x18(30)
    .4byte 0xC042CAFC # lfs f2, lbl_8053FA9C@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x4181001C # bgt .L_8020FB68
    lfs 1, 0x10(30)
    lfs 0, 0x1c(30)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810008 # ble .L_8020FB6C
L_8020FB68:
    li 3, 0x1
L_8020FB6C:
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_8020FBC4
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x7f
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x358(30)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_8020FBD0
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022CAF4 # lfs f1, lbl_8053FA94@sda21(r0)
    li 5, 0x4d2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x358(30)
    .4byte 0x48000010 # b .L_8020FBD0
L_8020FBC4:
    li 31, 0x1
    .4byte 0x48000008 # b .L_8020FBD0
L_8020FBCC:
    li 31, 0x1
L_8020FBD0:
    clrlwi. 0, 31, 24
    .4byte 0x41820020 # beq .L_8020FBF4
    lwz 3, 0x358(30)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8020FBF4
    lwz 0, 0xf4(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820008 # bne .L_8020FBF4
    bl fn_801CB7A0
L_8020FBF4:
    lwz 0, 0x358(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8020FC14
    addi 3, 30, 0x358
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB71C
L_8020FC14:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020FC2C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CC9B8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CC9B8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FC7C
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
L_8020FC7C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FCB4
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
L_8020FCB4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FCEC
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
L_8020FCEC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FD24
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
L_8020FD24:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FD5C
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
L_8020FD5C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FD94
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
L_8020FD94:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FDCC
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
L_8020FDCC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FE04
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
L_8020FE04:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020FE3C
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
L_8020FE3C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8020FC2C
