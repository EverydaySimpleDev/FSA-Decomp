.section extab, "a"
.balign 4
.global etb_8000A248
etb_8000A248:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_8000A248, 8

.global etb_8000A250
etb_8000A250:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A250, 8

.global etb_8000A258
etb_8000A258:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000A258, 8

.section extabindex, "a"
.balign 4
.global eti_80017EB4
eti_80017EB4:
    .4byte fn_802162B8
    .4byte 0x00000460
    .4byte etb_8000A248
.size eti_80017EB4, 12

.global eti_80017EC0
eti_80017EC0:
    .4byte fn_80216718
    .4byte 0x00000224
    .4byte etb_8000A250
.size eti_80017EC0, 12

.global eti_80017ECC
eti_80017ECC:
    .4byte fn_8021693C
    .4byte 0x00000150
    .4byte etb_8000A258
.size eti_80017ECC, 12

.text
.balign 4
.global fn_802162B8
.global fn_80216718
.global fn_8021693C

fn_802162B8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 27, 3
    mr 28, 4
    lbz 0, 0x0(3)
    mr 29, 5
    cmplwi 0, 0x0
    .4byte 0x4182020C # beq .L_802164F0
    lbz 0, 0x2(27)
    cmplwi 0, 0x0
    .4byte 0x4182040C # beq .L_802166FC
    addi 3, 27, 0x4
    bl Hrmn_AdvanceSlotStateType3
    lbz 3, 0x2(27)
    subi 0, 3, 0x1
    stb 0, 0x2(27)
    lbz 0, 0x2(27)
    cmplwi 0, 0x0
    .4byte 0x418203EC # beq .L_802166FC
    mr 30, 28
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80216334
    mr 3, 28
    bl fn_8022F3DC
    mr 30, 3
L_80216334:
    mr 3, 30
    bl fn_8023CBC0
    xoris 4, 29, 0x8000
    lis 0, 0x4330
    stw 4, 0x24(1)
    clrlwi 30, 3, 16
    .4byte 0xC822CC50 # lfd f1, lbl_8053FBF0@sda21(r0)
    li 31, 0x0
    stw 0, 0x20(1)
    .4byte 0xC042CC3C # lfs f2, lbl_8053FBDC@sda21(r0)
    lfd 0, 0x20(1)
    .4byte 0xC062CC38 # lfs f3, lbl_8053FBD8@sda21(r0)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    fmuls 31, 3, 0
L_80216370:
    mr 3, 31
    mr 4, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820160 # beq .L_802164E0
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    cmpwi 29, 0x0
    lfs 0, 0x8(3)
    addi 4, 1, 0x14
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x1c(1)
    .4byte 0x40800024 # bge .L_802163C8
    mr 3, 31
    mr 5, 30
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x4800011C # b .L_802164E0
L_802163C8:
    lbz 0, 0x2(27)
    cmplwi 0, 0x1e
    .4byte 0x40820024 # bne .L_802163F4
    mr 3, 31
    mr 5, 30
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x480000F0 # b .L_802164E0
L_802163F4:
    bl GetRoomConfigRecord
    lbz 5, 0x2(27)
    lis 0, 0x4330
    lfs 0, 0xd0(3)
    lis 4, lbl_80539D44@ha
    stw 5, 0x24(1)
    .4byte 0xC822CC58 # lfd f1, lbl_8053FBF8@sda21(r0)
    fadds 5, 0, 31
    stw 0, 0x20(1)
    .4byte 0xC062CC40 # lfs f3, lbl_8053FBE0@sda21(r0)
    lfd 0, 0x20(1)
    lfs 2, 0xcc(3)
    fsubs 4, 0, 1
    lfs 0, lbl_80539D44@l(4)
    fadds 3, 3, 2
    fcmpo cr0, 4, 0
    .4byte 0x40800008 # bge .L_8021643C
    .4byte 0x48000018 # b .L_80216450
L_8021643C:
    .4byte 0xC002CC44 # lfs f0, lbl_8053FBE4@sda21(r0)
    lfs 1, 0x14(1)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 3, 2, 0, 1
L_80216450:
    lis 3, lbl_80539D44@ha
    stfs 3, 0x14(1)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021646C
    stfs 5, 0x18(1)
    .4byte 0x4800001C # b .L_80216484
L_8021646C:
    .4byte 0xC002CC44 # lfs f0, lbl_8053FBE4@sda21(r0)
    lfs 1, 0x18(1)
    fdivs 2, 0, 4
    fsubs 0, 5, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x18(1)
L_80216484:
    lis 3, lbl_80539D44@ha
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_802164A0
    .4byte 0xC002CC48 # lfs f0, lbl_8053FBE8@sda21(r0)
    stfs 0, 0x1c(1)
    .4byte 0x48000020 # b .L_802164BC
L_802164A0:
    .4byte 0xC022CC44 # lfs f1, lbl_8053FBE4@sda21(r0)
    .4byte 0xC002CC48 # lfs f0, lbl_8053FBE8@sda21(r0)
    fdivs 2, 1, 4
    lfs 1, 0x1c(1)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x1c(1)
L_802164BC:
    lwz 5, 0x4(27)
    mr 3, 31
    addi 4, 1, 0x14
    li 6, 0xff
    addi 5, 5, 0x33a
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802164E0:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE88 # blt .L_80216370
    .4byte 0x48000210 # b .L_802166FC
L_802164F0:
    lbz 0, 0x1(27)
    cmplwi 0, 0x0
    .4byte 0x41820204 # beq .L_802166FC
    mr 3, 28
    bl fn_802308E0
    clrlwi. 0, 3, 24
    .4byte 0x418201F4 # beq .L_802166FC
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x0(27)
    li 0, 0x1e
    mr 30, 28
    mr 3, 28
    stb 4, 0x1(27)
    stb 0, 0x2(27)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80216544
    mr 3, 28
    bl fn_8022F3DC
    mr 30, 3
L_80216544:
    mr 3, 30
    bl fn_8023CBC0
    xoris 4, 29, 0x8000
    lis 0, 0x4330
    stw 4, 0x24(1)
    clrlwi 30, 3, 16
    .4byte 0xC822CC50 # lfd f1, lbl_8053FBF0@sda21(r0)
    li 31, 0x0
    stw 0, 0x20(1)
    .4byte 0xC042CC3C # lfs f2, lbl_8053FBDC@sda21(r0)
    lfd 0, 0x20(1)
    .4byte 0xC062CC38 # lfs f3, lbl_8053FBD8@sda21(r0)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    fmuls 31, 3, 0
L_80216580:
    mr 3, 31
    mr 4, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820160 # beq .L_802166F0
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    cmpwi 29, 0x0
    lfs 0, 0x8(3)
    addi 4, 1, 0x8
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x40800024 # bge .L_802165D8
    mr 3, 31
    mr 5, 30
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x4800011C # b .L_802166F0
L_802165D8:
    lbz 0, 0x2(27)
    cmplwi 0, 0x1e
    .4byte 0x40820024 # bne .L_80216604
    mr 3, 31
    mr 5, 30
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x480000F0 # b .L_802166F0
L_80216604:
    bl GetRoomConfigRecord
    lbz 5, 0x2(27)
    lis 0, 0x4330
    lfs 0, 0xd0(3)
    lis 4, lbl_80539D44@ha
    stw 5, 0x24(1)
    .4byte 0xC822CC58 # lfd f1, lbl_8053FBF8@sda21(r0)
    fadds 5, 0, 31
    stw 0, 0x20(1)
    .4byte 0xC062CC40 # lfs f3, lbl_8053FBE0@sda21(r0)
    lfd 0, 0x20(1)
    lfs 2, 0xcc(3)
    fsubs 4, 0, 1
    lfs 0, lbl_80539D44@l(4)
    fadds 3, 3, 2
    fcmpo cr0, 4, 0
    .4byte 0x40800008 # bge .L_8021664C
    .4byte 0x48000018 # b .L_80216660
L_8021664C:
    .4byte 0xC002CC44 # lfs f0, lbl_8053FBE4@sda21(r0)
    lfs 1, 0x8(1)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 3, 2, 0, 1
L_80216660:
    lis 3, lbl_80539D44@ha
    stfs 3, 0x8(1)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021667C
    stfs 5, 0xc(1)
    .4byte 0x4800001C # b .L_80216694
L_8021667C:
    .4byte 0xC002CC44 # lfs f0, lbl_8053FBE4@sda21(r0)
    lfs 1, 0xc(1)
    fdivs 2, 0, 4
    fsubs 0, 5, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0xc(1)
L_80216694:
    lis 3, lbl_80539D44@ha
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_802166B0
    .4byte 0xC002CC48 # lfs f0, lbl_8053FBE8@sda21(r0)
    stfs 0, 0x10(1)
    .4byte 0x48000020 # b .L_802166CC
L_802166B0:
    .4byte 0xC022CC44 # lfs f1, lbl_8053FBE4@sda21(r0)
    .4byte 0xC002CC48 # lfs f0, lbl_8053FBE8@sda21(r0)
    fdivs 2, 1, 4
    lfs 1, 0x10(1)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x10(1)
L_802166CC:
    lwz 5, 0x4(27)
    mr 3, 31
    addi 4, 1, 0x8
    li 6, 0xff
    addi 5, 5, 0x33a
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802166F0:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE88 # blt .L_80216580
L_802166FC:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80216718:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CD538@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CD538@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80216768
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
L_80216768:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802167A0
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
L_802167A0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802167D8
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
L_802167D8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80216810
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
L_80216810:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80216848
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
L_80216848:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80216880
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
L_80216880:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802168B8
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
L_802168B8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802168F0
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
L_802168F0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80216928
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
L_80216928:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021693C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    clrlwi. 29, 4, 24
    mr 26, 3
    .4byte 0x4082000C # bne .L_80216960
    li 3, 0x0
    .4byte 0x4800011C # b .L_80216A78
L_80216960:
    lfs 0, 0xc(26)
    li 28, 0x0
    lfs 7, 0x4(26)
    .4byte 0xC042CC60 # lfs f2, lbl_8053FC00@sda21(r0)
    fsubs 0, 0, 7
    fcmpo cr0, 0, 2
    .4byte 0x408100FC # ble .L_80216A74
    lfs 1, 0x10(26)
    lfs 0, 0x8(26)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100E8 # ble .L_80216A74
    lfs 5, 0x8(26)
    li 27, 0x0
    lfs 0, 0xc(26)
    lfs 4, 0x10(26)
    stfs 7, 0x8(1)
    lwz 30, 0x0(26)
    stfs 5, 0xc(1)
    stfs 0, 0x10(1)
    stfs 4, 0x14(1)
    lfs 6, 0xc(30)
    lfs 3, 0x10(30)
    lfs 2, 0x14(30)
    fadds 1, 7, 6
    fadds 0, 0, 6
    fsubs 2, 3, 2
    stfs 1, 0x8(1)
    fadds 1, 5, 2
    stfs 0, 0x10(1)
    fadds 0, 4, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
L_802169E4:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 4, 31, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80216A28
    lwz 31, 0x0(26)
    mr 3, 27
    bl fn_8023E724
    lfs 2, 0x8(3)
    lfs 1, 0x14(31)
    .4byte 0xC002CC64 # lfs f0, lbl_8053FC04@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810044 # bgt .L_80216A68
L_80216A28:
    li 0, 0x1
    slw 31, 0, 27
    and. 0, 29, 31
    .4byte 0x41820034 # beq .L_80216A68
    lwz 5, 0x0(26)
    mr 3, 27
    lwz 6, 0x14(26)
    addi 4, 1, 0x8
    lwz 5, 0x4(5)
    li 7, 0x1
    li 8, 0x1
    bl fn_80239B64
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80216A68
    or 0, 28, 31
    clrlwi 28, 0, 24
L_80216A68:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF74 # blt .L_802169E4
L_80216A74:
    mr 3, 28
L_80216A78:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80216718
