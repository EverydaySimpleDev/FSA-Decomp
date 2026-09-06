.section extab, "a"
.balign 4
.global etb_80008FAC
etb_80008FAC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008FAC, 8

.global etb_80008FB4
etb_80008FB4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80008FB4, 8

.global etb_80008FBC
etb_80008FBC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008FBC, 8

.global etb_80008FC4
etb_80008FC4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008FC4, 8

.section extabindex, "a"
.balign 4
.global eti_8001675C
eti_8001675C:
    .4byte fn_801F8E4C
    .4byte 0x00000120
    .4byte etb_80008FAC
.size eti_8001675C, 12

.global eti_80016768
eti_80016768:
    .4byte fn_801F8F6C
    .4byte 0x0000010C
    .4byte etb_80008FB4
.size eti_80016768, 12

.global eti_80016774
eti_80016774:
    .4byte fn_801F9078
    .4byte 0x000001E8
    .4byte etb_80008FBC
.size eti_80016774, 12

.global eti_80016780
eti_80016780:
    .4byte fn_801F9260
    .4byte 0x00000224
    .4byte etb_80008FC4
.size eti_80016780, 12

.text
.balign 4
.global fn_801F8E4C
.global fn_801F8F6C
.global fn_801F9078
.global fn_801F9260

fn_801F8E4C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    mr 30, 29
    stw 28, 0x10(1)
L_801F8E74:
    add 28, 31, 30
    lwz 0, 0x8(28)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_801F8EFC
    lwz 3, 0x100c(28)
    bl fn_80456120
    lwz 3, 0x8(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801F8EAC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801F8EAC:
    li 3, 0x0
    addi 0, 29, 0x1
    stw 3, 0x8(28)
    lwz 3, 0x1008(31)
    cmpw 0, 3
    .4byte 0x4082003C # bne .L_801F8EFC
    subic. 4, 3, 0x2
    slwi 3, 4, 2
    addi 0, 4, 0x1
    add 3, 31, 3
    mtctr 0
    .4byte 0x4180001C # blt .L_801F8EF4
L_801F8EDC:
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801F8EF4
    subi 3, 3, 0x4
    subi 4, 4, 0x1
    .4byte 0x4200FFEC # bdnz .L_801F8EDC
L_801F8EF4:
    addi 0, 4, 0x1
    stw 0, 0x1008(31)
L_801F8EFC:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmplwi 29, 0x400
    .4byte 0x4180FF6C # blt .L_801F8E74
    lwz 3, 0x200c(31)
    bl fn_80456120
    lwz 3, 0x200c(31)
    li 5, 0x1
    li 4, 0x0
    li 0, -0x1
    stb 5, 0x31(3)
    stw 4, 0x2010(31)
    stw 0, 0x2014(31)
    stw 0, 0x1008(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0x8(3)
    stb 4, 0x305c(3)
    stw 4, 0x2018(31)
    stb 4, 0x3041(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801F8F6C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x418200DC # beq .L_801F9060
    lis 3, lbl_804A5800@ha
    addi 0, 3, lbl_804A5800@l
    stw 0, 0x0(27)
    lwz 3, 0x200c(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801F8FB4
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_801F8FB4:
    li 30, 0x3ff
    addi 31, 27, 0xffc
L_801F8FBC:
    lwz 3, 0x100c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801F8FDC
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_801F8FDC:
    subic. 30, 30, 0x1
    subi 31, 31, 0x4
    .4byte 0x4080FFD8 # bge .L_801F8FBC
    addi 30, 27, 0xffc
    li 29, 0x3ff
    li 31, 0x0
L_801F8FF4:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_801F901C
    .4byte 0x41820018 # beq .L_801F9018
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801F9018:
    stw 31, 0x8(30)
L_801F901C:
    subic. 29, 29, 0x1
    subi 30, 30, 0x4
    .4byte 0x4080FFD0 # bge .L_801F8FF4
    lwz 3, 0x304c(27)
    bl fn_800845A4
    lwz 3, 0x3050(27)
    bl fn_800845A4
    lwz 3, 0x3054(27)
    bl fn_800845A4
    lwz 3, 0x3058(27)
    bl fn_800845A4
    lwz 3, 0x4(27)
    bl fn_8008383C
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_801F9060
    mr 3, 27
    bl dtor_80084580
L_801F9060:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801F9078:
    stwu 1, -0x20(1)
    mflr 0
    lis 6, lbl_804A5800@ha
    lis 5, lbl_80529DEC@ha
    stw 0, 0x24(1)
    addi 0, 6, lbl_804A5800@l
    stmw 27, 0xc(1)
    mr 30, 3
    mr 31, 4
    addi 3, 5, lbl_80529DEC@l
    li 4, 0x0
    stw 0, 0x0(30)
    lwz 5, 0x118(3)
    cmpwi 5, 0x9
    .4byte 0x40820010 # bne .L_801F90C0
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x41820020 # beq .L_801F90DC
L_801F90C0:
    cmpwi 5, 0x8
    .4byte 0x4082001C # bne .L_801F90E0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_801F90E0
L_801F90DC:
    li 4, 0x1
L_801F90E0:
    clrlwi. 0, 4, 24
    li 3, 0x400
    .4byte 0x41820008 # beq .L_801F90F0
    li 3, 0x200
L_801F90F0:
    slwi 4, 3, 10
    mr 6, 31
    li 5, 0x20
    li 7, 0x0
    addi 4, 4, 0x1a8
    bl fn_80085A10
    li 0, 0x20
    stw 3, 0x4(30)
    mr 4, 30
    li 3, 0x0
    mtctr 0
L_801F911C:
    stw 3, 0x8(4)
    stw 3, 0xc(4)
    stw 3, 0x10(4)
    stw 3, 0x14(4)
    stw 3, 0x18(4)
    stw 3, 0x1c(4)
    stw 3, 0x20(4)
    stw 3, 0x24(4)
    stw 3, 0x28(4)
    stw 3, 0x2c(4)
    stw 3, 0x30(4)
    stw 3, 0x34(4)
    stw 3, 0x38(4)
    stw 3, 0x3c(4)
    stw 3, 0x40(4)
    stw 3, 0x44(4)
    stw 3, 0x48(4)
    stw 3, 0x4c(4)
    stw 3, 0x50(4)
    stw 3, 0x54(4)
    stw 3, 0x58(4)
    stw 3, 0x5c(4)
    stw 3, 0x60(4)
    stw 3, 0x64(4)
    stw 3, 0x68(4)
    stw 3, 0x6c(4)
    stw 3, 0x70(4)
    stw 3, 0x74(4)
    stw 3, 0x78(4)
    stw 3, 0x7c(4)
    stw 3, 0x80(4)
    stw 3, 0x84(4)
    addi 4, 4, 0x80
    .4byte 0x4200FF7C # bdnz .L_801F911C
    lis 3, lbl_804CABD8@ha
    .4byte 0xC002C888 # lfs f0, lbl_8053F828@sda21(r0)
    addi 29, 3, lbl_804CABD8@l
    mr 28, 30
    stfs 0, 0x0(29)
    li 27, 0x0
    stfs 0, 0x4(29)
    stfs 0, 0x8(29)
L_801F91C4:
    mr 4, 31
    li 3, 0x5c
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820018 # beq .L_801F91F0
    mr 4, 29
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
    mr 0, 3
L_801F91F0:
    stw 0, 0x100c(28)
    lwz 3, 0x100c(28)
    bl fn_80456120
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmplwi 27, 0x400
    .4byte 0x4180FFBC # blt .L_801F91C4
    mr 4, 31
    li 3, 0x5c
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820018 # beq .L_801F9238
    li 4, 0x0
    li 5, 0x0
    li 6, 0x18
    bl fn_804578F4
    mr 0, 3
L_801F9238:
    stw 0, 0x200c(30)
    mr 3, 30
    mr 4, 31
    bl fn_801F62AC
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801F9260:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CABD8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CABD8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F92B0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801F92B0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F92E8
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801F92E8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F9320
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801F9320:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F9358
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801F9358:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F9390
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801F9390:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F93C8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801F93C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F9400
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801F9400:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F9438
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801F9438:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801F9470
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801F9470:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801F9260
