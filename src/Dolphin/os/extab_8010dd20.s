.section extab, "a"
.balign 4
.global etb_80005CCC
etb_80005CCC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005CCC, 8

.global etb_80005CD4
etb_80005CD4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80005CD4, 8

.global etb_80005CDC
etb_80005CDC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80005CDC, 8

.global etb_80005CE4
etb_80005CE4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005CE4, 8

.global etb_80005CEC
etb_80005CEC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005CEC, 8

.section extabindex, "a"
.balign 4
.global eti_8001213C
eti_8001213C:
    .4byte fn_8010DD20
    .4byte 0x00000224
    .4byte etb_80005CCC
.size eti_8001213C, 12

.global eti_80012148
eti_80012148:
    .4byte fn_8010DF58
    .4byte 0x00000020
    .4byte etb_80005CD4
.size eti_80012148, 12

.global eti_80012154
eti_80012154:
    .4byte fn_8010DF78
    .4byte 0x00000020
    .4byte etb_80005CDC
.size eti_80012154, 12

.global eti_80012160
eti_80012160:
    .4byte fn_8010DF98
    .4byte 0x0000006C
    .4byte etb_80005CE4
.size eti_80012160, 12

.global eti_8001216C
eti_8001216C:
    .4byte dtor_8010E004
    .4byte 0x00000070
    .4byte etb_80005CEC
.size eti_8001216C, 12

.text
.balign 4
.global fn_8010DD20
.global fn_8010DF44
.global fn_8010DF48
.global fn_8010DF50
.global fn_8010DF58
.global fn_8010DF78
.global fn_8010DF98
.global dtor_8010E004

fn_8010DD20:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BBDF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BBDF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DD70
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
L_8010DD70:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DDA8
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
L_8010DDA8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DDE0
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
L_8010DDE0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DE18
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
L_8010DE18:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DE50
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
L_8010DE50:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DE88
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
L_8010DE88:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DEC0
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
L_8010DEC0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DEF8
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
L_8010DEF8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010DF30
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
L_8010DF30:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010DF44:
    blr

fn_8010DF48:
    li 3, -0x1
    blr

fn_8010DF50:
    li 3, 0x0
    blr

fn_8010DF58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_801F5778
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010DF78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_801F5930
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010DF98:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    bl fn_8011921C
    mr 4, 31
    bl fn_8011888C
    .4byte 0xC0429570 # lfs f2, lbl_8053C510@sda21(r0)
    li 0, 0x0
    .4byte 0xC0229574 # lfs f1, lbl_8053C514@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC0029578 # lfs f0, lbl_8053C518@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x108(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

dtor_8010E004:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820038 # beq .L_8010E058
    lis 3, lbl_8049D140@ha
    addi 0, 3, lbl_8049D140@l
    stw 0, 0x0(30)
    bl fn_8011921C
    mr 4, 30
    bl fn_80118798
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8010E058
    mr 3, 30
    bl dtor_80084580
L_8010E058:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8010DD20
