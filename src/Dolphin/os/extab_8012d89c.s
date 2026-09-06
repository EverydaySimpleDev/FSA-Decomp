.section extab, "a"
.balign 4
.global etb_8000669C
etb_8000669C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000669C, 8

.global etb_800066A4
etb_800066A4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800066A4, 8

.global etb_800066AC
etb_800066AC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800066AC, 8

.global etb_800066B4
etb_800066B4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800066B4, 8

.global etb_800066BC
etb_800066BC:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800066BC, 8

.global etb_800066C4
etb_800066C4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800066C4, 8

.global etb_800066CC
etb_800066CC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800066CC, 8

.global etb_800066D4
etb_800066D4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800066D4, 8

.section extabindex, "a"
.balign 4
.global eti_80012E38
eti_80012E38:
    .4byte fn_8012D89C
    .4byte 0x00000224
    .4byte etb_8000669C
.size eti_80012E38, 12

.global eti_80012E44
eti_80012E44:
    .4byte fn_8012DAC0
    .4byte 0x00000060
    .4byte etb_800066A4
.size eti_80012E44, 12

.global eti_80012E50
eti_80012E50:
    .4byte fn_8012DB20
    .4byte 0x000001C8
    .4byte etb_800066AC
.size eti_80012E50, 12

.global eti_80012E5C
eti_80012E5C:
    .4byte fn_8012DD4C
    .4byte 0x00000224
    .4byte etb_800066B4
.size eti_80012E5C, 12

.global eti_80012E68
eti_80012E68:
    .4byte fn_8012DF70
    .4byte 0x000002C0
    .4byte etb_800066BC
.size eti_80012E68, 12

.global eti_80012E74
eti_80012E74:
    .4byte fn_8012E230
    .4byte 0x00000370
    .4byte etb_800066C4
.size eti_80012E74, 12

.global eti_80012E80
eti_80012E80:
    .4byte fn_8012E5A0
    .4byte 0x0000014C
    .4byte etb_800066CC
.size eti_80012E80, 12

.global eti_80012E8C
eti_80012E8C:
    .4byte fn_8012E6EC
    .4byte 0x00000094
    .4byte etb_800066D4
.size eti_80012E8C, 12

.text
.balign 4
.global fn_8012D89C
.global fn_8012DAC0
.global fn_8012DB20
.global fn_8012DCE8
.global fn_8012DD4C
.global fn_8012DF70
.global fn_8012E230
.global fn_8012E5A0
.global fn_8012E6EC

fn_8012D89C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BD8F0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BD8F0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012D8EC
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
L_8012D8EC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012D924
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
L_8012D924:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012D95C
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
L_8012D95C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012D994
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
L_8012D994:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012D9CC
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
L_8012D9CC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DA04
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
L_8012DA04:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DA3C
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
L_8012DA3C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DA74
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
L_8012DA74:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DAAC
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
L_8012DAAC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012DAC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8012DB04
    lis 5, lbl_8049E848@ha
    li 4, 0x0
    addi 0, 5, lbl_8049E848@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8012DB04
    mr 3, 30
    bl dtor_80084580
L_8012DB04:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012DB20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820148 # beq .L_8012DC88
    .4byte 0x4080018C # bge .L_8012DCD0
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8012DB58
    .4byte 0x48000180 # b .L_8012DCD0
    .4byte 0x4800017C # b .L_8012DCD0
L_8012DB58:
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4182002C # beq .L_8012DB98
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8012DB98
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800013C # b .L_8012DCD0
L_8012DB98:
    lwz 30, 0x244(31)
    cmpwi 30, 0x0
    .4byte 0x41820020 # beq .L_8012DBC0
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8012DBC0
    lwz 0, 0x23c(31)
    stw 0, 0x238(31)
L_8012DBC0:
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 3, 0x238(31)
    lwz 0, 0x23c(31)
    cmpw 3, 0
    .4byte 0x418000F8 # blt .L_8012DCD0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8012DC3C
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8012DC0C
    li 0, 0x3
    stw 0, 0x240(31)
L_8012DC0C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8012DC34
    lwz 0, 0x240(31)
    lis 3, lbl_804650F8@ha
    addi 3, 3, lbl_804650F8@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    .4byte 0x48000030 # b .L_8012DC60
L_8012DC34:
    lwz 0, 0x240(31)
    .4byte 0x48000028 # b .L_8012DC60
L_8012DC3C:
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8012DC5C
    li 0, 0x0
    stw 0, 0x240(31)
L_8012DC5C:
    lwz 0, 0x240(31)
L_8012DC60:
    slwi 0, 0, 1
    .4byte 0x38629C90 # li r3, lbl_8053CC30@sda21
    lhzx 6, 3, 0
    addi 4, 31, 0xc
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 5, 0x4(31)
    bl fn_802A381C
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x4800004C # b .L_8012DCD0
L_8012DC88:
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8012DCAC
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_8012DCD0
L_8012DCAC:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8012DCD0
    li 0, 0x0
    stw 0, 0x230(31)
L_8012DCD0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012DCE8:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    mulli 0, 0, 0xa
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8012DD14
    li 0, 0x78
    stw 0, 0x23c(3)
L_8012DD14:
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 20
    stw 0, 0x234(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8012DD34
    li 0, 0x0
    stw 0, 0x234(3)
L_8012DD34:
    lwz 0, 0x234(3)
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 5
    stw 0, 0x244(3)
    blr

fn_8012DD4C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BD9F0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BD9F0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DD9C
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
L_8012DD9C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DDD4
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
L_8012DDD4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DE0C
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
L_8012DE0C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DE44
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
L_8012DE44:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DE7C
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
L_8012DE7C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DEB4
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
L_8012DEB4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DEEC
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
L_8012DEEC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DF24
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
L_8012DF24:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012DF5C
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
L_8012DF5C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012DF70:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stw 31, 0xbc(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x74
    stw 0, 0x84(1)
    li 10, 0x0
    stw 0, 0x88(1)
    .4byte 0x48000064 # b .L_8012E008
L_8012DFA8:
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
L_8012E008:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8012DFA8
    li 10, 0x0
    li 5, -0x1
    li 4, 0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0x84(1)
    addi 9, 1, 0x38
    stw 10, 0x88(1)
    stw 10, 0x8c(1)
    stb 10, 0x90(1)
    stb 10, 0x91(1)
    stb 10, 0x92(1)
    stb 4, 0x93(1)
    stb 4, 0x94(1)
    stb 10, 0x95(1)
    stb 10, 0x96(1)
    stb 10, 0x97(1)
    stb 10, 0x98(1)
    stb 10, 0x99(1)
    stb 4, 0x9a(1)
    stw 3, 0x9c(1)
    stb 4, 0xa0(1)
    stb 10, 0xa1(1)
    stb 10, 0xa2(1)
    stw 5, 0xa4(1)
    stw 10, 0xa8(1)
    stw 0, 0xac(1)
    stw 5, 0x48(1)
    stw 5, 0x4c(1)
    .4byte 0x48000064 # b .L_8012E0EC
L_8012E08C:
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
L_8012E0EC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8012E08C
    psq_l 2, 0x54(31), 0, 0
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    ps_mul 2, 2, 2
    lfs 31, 0x5c(31)
    lis 3, lbl_80539D44@ha
    li 4, 0x3
    li 0, 0x2
    .4byte 0xC0629CB0 # lfs f3, lbl_8053CC50@sda21(r0)
    ps_madd 1, 31, 31, 2
    lfs 0, lbl_80539D44@l(3)
    stw 7, 0x48(1)
    fmuls 0, 3, 0
    ps_sum0 1, 1, 2, 2
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    fcmpo cr0, 1, 0
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    cror eq, lt, eq
    .4byte 0x41820064 # beq .L_8012E1F0
    .4byte 0xC0429CB4 # lfs f2, lbl_8053CC54@sda21(r0)
    addi 0, 1, 0x8
    .4byte 0xC0229C9C # lfs f1, lbl_8053CC3C@sda21(r0)
    stfs 2, 0x14(1)
    stfs 2, 0x24(1)
    stfs 2, 0x34(1)
    lfs 4, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x8(1)
    stfs 2, 0xc(1)
    stfs 2, 0x10(1)
    stfs 2, 0x18(1)
    stfs 4, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 2, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 31, 0x30(1)
    lfs 0, 0x238(31)
    fsubs 0, 1, 0
    stfs 2, 0x14(1)
    stfs 2, 0x34(1)
    fmuls 0, 3, 0
    stw 0, 0x8c(1)
    stfs 0, 0x24(1)
L_8012E1F0:
    lwz 0, 0x4(31)
    addi 4, 31, 0xc
    lwz 5, 0x23c(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_8012E214
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 6, 1, 0x74
    lwz 3, 0x20(3)
    bl fn_802F745C
L_8012E214:
    psq_l 31, 0xc8(1), 0, 0
    lwz 0, 0xd4(1)
    lfd 31, 0xc0(1)
    lwz 31, 0xbc(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_8012E230:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    bl fn_801F5930
    lfs 1, 0x60(31)
    addi 3, 1, 0x1c
    stfs 1, 0x1c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x20(1)
    lfs 2, 0x68(31)
    stfs 2, 0x24(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x28(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x1c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x24(1)
    fadds 0, 3, 2
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182024C # beq .L_8012E4F8
    .4byte 0x408002C8 # bge .L_8012E578
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8012E2C4
    .4byte 0x480002BC # b .L_8012E578
    .4byte 0x480002B8 # b .L_8012E578
L_8012E2C4:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x69
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4e55
    mr 3, 31
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 30, 3
    .4byte 0x41800034 # blt .L_8012E340
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
    lfs 1, 0x10(31)
    mr 3, 30
    lfs 0, 0xc(31)
    addi 4, 1, 0x8
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_802379E4
L_8012E340:
    lis 4, 0x4649
    mr 3, 31
    addi 4, 4, 0x5245
    bl fn_801F2718
    mr. 30, 3
    .4byte 0x4181000C # bgt .L_8012E360
    li 0, 0x0
    .4byte 0x48000038 # b .L_8012E394
L_8012E360:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8012E37C
    li 0, 0x0
    .4byte 0x4800001C # b .L_8012E394
L_8012E37C:
    bl fn_802BA9F8
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8012E390
    li 0, 0x1
    .4byte 0x48000008 # b .L_8012E394
L_8012E390:
    li 0, 0x0
L_8012E394:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8012E3A8
    li 0, 0x0
    stw 0, 0x234(31)
    .4byte 0x480001D4 # b .L_8012E578
L_8012E3A8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820088 # bne .L_8012E438
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x10
    lfs 2, 0x14(31)
    li 5, 0x28d
    .4byte 0xC0029C98 # lfs f0, lbl_8053CC38@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    lfs 1, 0x14(1)
    li 10, 0x1
    stfs 2, 0x18(1)
    fadds 0, 1, 0
    stfs 0, 0x14(1)
    lwz 3, 0x4(31)
    lfs 1, 0x238(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x10
    lfs 1, 0x238(31)
    li 5, 0x28e
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
L_8012E438:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x3c
    .4byte 0x4180012C # blt .L_8012E578
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 3, 0x240(31)
    bl fn_801EE434
    lwz 3, 0x244(31)
    bl fn_801EE434
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229C9C # lfs f1, lbl_8053CC3C@sda21(r0)
    li 5, 0x44f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229C9C # lfs f1, lbl_8053CC3C@sda21(r0)
    li 5, 0x450
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229C9C # lfs f1, lbl_8053CC3C@sda21(r0)
    li 5, 0x451
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x6a
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000084 # b .L_8012E578
L_8012E4F8:
    li 0, 0x0
    .4byte 0xC0229CA0 # lfs f1, lbl_8053CC40@sda21(r0)
    stb 0, 0x11d(31)
    lfs 0, 0x238(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8012E530
    .4byte 0xC0429CA4 # lfs f2, lbl_8053CC44@sda21(r0)
    addi 3, 31, 0x238
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8012E530
    li 0, 0x0
    .4byte 0x48000028 # b .L_8012E554
L_8012E530:
    .4byte 0xC0229CA8 # lfs f1, lbl_8053CC48@sda21(r0)
    addi 3, 31, 0x238
    .4byte 0xC0429CAC # lfs f2, lbl_8053CC4C@sda21(r0)
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8012E550
    li 0, 0x1
    .4byte 0x48000008 # b .L_8012E554
L_8012E550:
    li 0, 0x0
L_8012E554:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8012E578
    li 0, 0x2
    mr 3, 31
    stw 0, 0x230(31)
    li 4, 0x3
    bl fn_801F0D20
    mr 3, 31
    bl fn_801F3668
L_8012E578:
    lfs 0, 0x238(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8012E5A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    .4byte 0xC0229CB8 # lfs f1, lbl_8053CC58@sda21(r0)
    lis 3, 0xa04
    .4byte 0xC0029CBC # lfs f0, lbl_8053CC5C@sda21(r0)
    li 7, 0x3e8
    stfs 1, 0x60(31)
    li 6, 0x1
    .4byte 0xC0229CC0 # lfs f1, lbl_8053CC60@sda21(r0)
    li 5, 0x2
    stfs 0, 0x64(31)
    li 4, 0x3
    .4byte 0xC0029CB0 # lfs f0, lbl_8053CC50@sda21(r0)
    addi 0, 3, 0x304
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x80(31)
    lfs 0, 0x64(31)
    stfs 0, 0x84(31)
    lfs 0, 0x68(31)
    stfs 0, 0x88(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x8c(31)
    stw 7, 0x108(31)
    stw 6, 0xb8(31)
    stw 5, 0xf8(31)
    stw 4, 0xbc(31)
    stw 6, 0x1a4(31)
    stw 0, 0xb0(31)
    lwz 0, 0x23c(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8012E668
    lis 3, 0x5449
    .4byte 0x808D8380 # lwz r4, lbl_80539F40@sda21(r0)
    addi 3, 3, 0x4d47
    bl fn_804032E8
    stw 3, 0x23c(31)
L_8012E668:
    lwz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8012E6A0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229C9C # lfs f1, lbl_8053CC3C@sda21(r0)
    li 5, 0x452
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x240(31)
L_8012E6A0:
    lwz 0, 0x244(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8012E6D8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229C9C # lfs f1, lbl_8053CC3C@sda21(r0)
    li 5, 0x453
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x244(31)
L_8012E6D8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012E6EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182005C # beq .L_8012E764
    lis 3, lbl_8049E8A0@ha
    addi 0, 3, lbl_8049E8A0@l
    stw 0, 0x0(30)
    lwz 3, 0x240(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012E730
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x240(30)
L_8012E730:
    lwz 3, 0x244(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012E748
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x244(30)
L_8012E748:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8012E764
    mr 3, 30
    bl dtor_80084580
L_8012E764:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8012D89C
    .4byte fn_8012DD4C
