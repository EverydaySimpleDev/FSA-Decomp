# Fresh project-wide gap hunt continuation: 15 functions, 5,676 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80007CC4
etb_80007CC4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007CC4, 8

.global etb_80007CCC
etb_80007CCC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80007CCC, 8

.global etb_80007CD4
etb_80007CD4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007CD4, 8

.global etb_80007CDC
etb_80007CDC:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80007CDC, 8

.global etb_80007CE4
etb_80007CE4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007CE4, 8

.global etb_80007CEC
etb_80007CEC:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80007CEC, 8

.global etb_80007CF4
etb_80007CF4:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80007CF4, 8

.global etb_80007CFC
etb_80007CFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007CFC, 8

.global etb_80007D04
etb_80007D04:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007D04, 8

.global etb_80007D0C
etb_80007D0C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007D0C, 8

.global etb_80007D14
etb_80007D14:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007D14, 8

.global etb_80007D1C
etb_80007D1C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007D1C, 8

.global etb_80007D24
etb_80007D24:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80007D24, 8

.global etb_80007D2C
etb_80007D2C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007D2C, 8

.global etb_80007D34
etb_80007D34:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007D34, 8

.section extabindex, "a"
.balign 4
.global eti_80014CA4
eti_80014CA4:
    .4byte fn_801B7E9C
    .4byte 0x00000224
    .4byte etb_80007CC4
.size eti_80014CA4, 12

.global eti_80014CB0
eti_80014CB0:
    .4byte fn_801B80C0
    .4byte 0x00000090
    .4byte etb_80007CCC
.size eti_80014CB0, 12

.global eti_80014CBC
eti_80014CBC:
    .4byte fn_801B8150
    .4byte 0x00000198
    .4byte etb_80007CD4
.size eti_80014CBC, 12

.global eti_80014CC8
eti_80014CC8:
    .4byte fn_801B82E8
    .4byte 0x0000010C
    .4byte etb_80007CDC
.size eti_80014CC8, 12

.global eti_80014CD4
eti_80014CD4:
    .4byte fn_801B83F4
    .4byte 0x00000124
    .4byte etb_80007CE4
.size eti_80014CD4, 12

.global eti_80014CE0
eti_80014CE0:
    .4byte fn_801B8518
    .4byte 0x000001E8
    .4byte etb_80007CEC
.size eti_80014CE0, 12

.global eti_80014CEC
eti_80014CEC:
    .4byte fn_801B8700
    .4byte 0x000000DC
    .4byte etb_80007CF4
.size eti_80014CEC, 12

.global eti_80014CF8
eti_80014CF8:
    .4byte fn_801B87DC
    .4byte 0x000000C8
    .4byte etb_80007CFC
.size eti_80014CF8, 12

.global eti_80014D04
eti_80014D04:
    .4byte fn_801B88A4
    .4byte 0x00000064
    .4byte etb_80007D04
.size eti_80014D04, 12

.global eti_80014D10
eti_80014D10:
    .4byte fn_801B8908
    .4byte 0x000000D4
    .4byte etb_80007D0C
.size eti_80014D10, 12

.global eti_80014D1C
eti_80014D1C:
    .4byte fn_801B89DC
    .4byte 0x0000022C
    .4byte etb_80007D14
.size eti_80014D1C, 12

.global eti_80014D28
eti_80014D28:
    .4byte fn_801B8C08
    .4byte 0x00000090
    .4byte etb_80007D1C
.size eti_80014D28, 12

.global eti_80014D34
eti_80014D34:
    .4byte fn_801B8C98
    .4byte 0x00000510
    .4byte etb_80007D24
.size eti_80014D34, 12

.global eti_80014D40
eti_80014D40:
    .4byte fn_801B91A8
    .4byte 0x000001D0
    .4byte etb_80007D2C
.size eti_80014D40, 12

.global eti_80014D4C
eti_80014D4C:
    .4byte fn_801B9378
    .4byte 0x00000150
    .4byte etb_80007D34
.size eti_80014D4C, 12

.text
.balign 4
.global fn_801B7E9C
.global fn_801B80C0
.global fn_801B8150
.global fn_801B82E8
.global fn_801B83F4
.global fn_801B8518
.global fn_801B8700
.global fn_801B87DC
.global fn_801B88A4
.global fn_801B8908
.global fn_801B89DC
.global fn_801B8C08
.global fn_801B8C98
.global fn_801B91A8
.global fn_801B9378

fn_801B7E9C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C7470@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C7470@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B7EEC
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
L_801B7EEC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B7F24
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
L_801B7F24:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B7F5C
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
L_801B7F5C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B7F94
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
L_801B7F94:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B7FCC
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
L_801B7FCC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B8004
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
L_801B8004:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B803C
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
L_801B803C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B8074
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
L_801B8074:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B80AC
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
L_801B80AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B80C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_801B8134
    lis 3, lbl_804A3B10@ha
    addi 0, 3, lbl_804A3B10@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_801B8124
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_801B8118
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_801B8118
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_801B8118:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_801B8124:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801B8134
    mr 3, 30
    bl dtor_80084580
L_801B8134:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B8150:
    stwu 1, -0x80(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 10, 1, 0x38
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801B81D4
L_801B8174:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_801B81D4:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801B8174
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
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
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182004C # beq .L_801B829C
    .4byte 0xC022BB80 # lfs f1, lbl_8053EB20@sda21(r0)
    addi 0, 1, 0x8
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lfs 3, 0x5c(3)
    lfs 2, 0x58(3)
    lfs 0, 0x54(3)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
L_801B829C:
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820010 # beq .L_801B82B4
    lwz 4, 0x2a8(3)
    addi 0, 4, 0x2
    stb 0, 0x40(1)
L_801B82B4:
    .4byte 0xC022BB84 # lfs f1, lbl_8053EB24@sda21(r0)
    lis 4, lbl_80469198@ha
    lwz 5, 0x280(3)
    addi 4, 4, lbl_80469198@l
    fmr 2, 1
    addi 6, 1, 0x38
    addi 5, 5, 0xbd
    li 7, 0x0
    bl fn_801F06F0
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_801B82E8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 28, 3
    lwz 3, 0x230(3)
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x418200AC # beq .L_801B83C4
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x418200A4 # beq .L_801B83C4
    lwz 3, 0x10c(28)
    cmpwi 3, 0x0
    .4byte 0x41800098 # blt .L_801B83C4
    cmpwi 3, 0x4
    .4byte 0x40800090 # bge .L_801B83C4
    lwz 0, 0x2a8(28)
    cmpw 3, 0
    .4byte 0x40820084 # bne .L_801B83C4
    .4byte 0xC002BB88 # lfs f0, lbl_8053EB28@sda21(r0)
    li 30, 0x0
    lis 31, 0x5255
    fneg 31, 0
L_801B8354:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(28)
    addi 4, 31, 0x5059
    addi 6, 28, 0xc
    li 7, 0x2
    bl fn_801F8544
    mr. 29, 3
    .4byte 0x41800048 # blt .L_801B83B8
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_801B83B8
    cmpwi 30, 0x0
    .4byte 0xC042BB88 # lfs f2, lbl_8053EB28@sda21(r0)
    .4byte 0x41820008 # beq .L_801B8398
    fmr 2, 31
L_801B8398:
    .4byte 0xC022BB80 # lfs f1, lbl_8053EB20@sda21(r0)
    .4byte 0xC002BB8C # lfs f0, lbl_8053EB2C@sda21(r0)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801B83B8:
    addi 30, 30, 0x1
    cmpwi 30, 0x2
    .4byte 0x4180FF94 # blt .L_801B8354
L_801B83C4:
    mr 3, 28
    bl fn_801F4F28
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801B83F4:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC042BB80 # lfs f2, lbl_8053EB20@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    li 29, 0x0
    stw 28, 0x20(1)
    mr 28, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100C8 # ble .L_801B84F4
    lfs 1, 0x6c(28)
    lfs 0, 0x64(28)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100B4 # ble .L_801B84F4
    lwz 0, 0x248(28)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_801B8464
    .4byte 0x4180001C # blt .L_801B8470
    cmpwi 0, 0x4
    .4byte 0x40800014 # bge .L_801B8470
    .4byte 0x4800000C # b .L_801B846C
L_801B8464:
    li 3, 0x1
    .4byte 0x48000008 # b .L_801B8470
L_801B846C:
    li 3, 0x1
L_801B8470:
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801B8498
    mr 3, 28
    addi 4, 1, 0x8
    bl fn_801F31C4
    lwz 4, 0x4(28)
    addi 3, 1, 0x8
    lwz 5, 0x198(28)
    bl fn_802397B4
    .4byte 0x48000060 # b .L_801B84F4
L_801B8498:
    lwz 4, 0x114(28)
    mr 3, 28
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 30, 3, 24
    mr 29, 3
    .4byte 0x41820040 # beq .L_801B84F4
    lwz 0, 0x248(28)
    cmpwi 0, 0x5
    .4byte 0x40820034 # bne .L_801B84F4
    li 28, 0x0
    li 31, 0x1
L_801B84CC:
    slw 0, 31, 28
    and. 0, 30, 0
    .4byte 0x41820014 # beq .L_801B84E8
    mr 3, 28
    li 4, 0x64
    li 5, 0x0
    bl fn_80236074
L_801B84E8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFDC # blt .L_801B84CC
L_801B84F4:
    lwz 0, 0x34(1)
    mr 3, 29
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801B8518:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    li 31, 0x0
    lwz 4, 0x248(3)
    li 3, 0x1
    li 0, 0x0
    cmpwi 4, 0x4
    .4byte 0x41820020 # beq .L_801B8570
    .4byte 0x40800010 # bge .L_801B8564
    cmpwi 4, 0x1
    .4byte 0x40800010 # bge .L_801B856C
    .4byte 0x48000010 # b .L_801B8570
L_801B8564:
    cmpwi 4, 0x6
    .4byte 0x40800008 # bge .L_801B8570
L_801B856C:
    li 0, 0x1
L_801B8570:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_801B85A4
    lwz 0, 0x24c(29)
    li 3, 0x0
    cmpwi 0, 0xa
    .4byte 0x40800020 # bge .L_801B85A4
    cmpwi 4, 0x5
    .4byte 0x41820014 # beq .L_801B85A0
    .4byte 0x40800014 # bge .L_801B85A4
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_801B85A0
    .4byte 0x48000008 # b .L_801B85A4
L_801B85A0:
    li 3, 0x1
L_801B85A4:
    clrlwi. 0, 3, 24
    .4byte 0x41820124 # beq .L_801B86CC
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820010 # beq .L_801B85C4
    mr 3, 29
    bl fn_801CEBD0
    .4byte 0x48000118 # b .L_801B86D8
L_801B85C4:
    cmpwi 4, 0x0
    .4byte 0x40820110 # bne .L_801B86D8
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 30, 3
    .4byte 0x418000F0 # blt .L_801B86D8
    mr 3, 29
    li 4, 0x5
    bl fn_801B91A8
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 30
    lfs 0, 0x10(29)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 3, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(29)
    fmuls 2, 31, 31
    .4byte 0xC022BB90 # lfs f1, lbl_8053EB30@sda21(r0)
    fsubs 4, 0, 3
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fmadds 5, 4, 4, 2
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_801B8658
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    stfs 0, 0x3c(29)
    lfs 0, 0x254(29)
    stfs 0, 0x40(29)
    .4byte 0x48000060 # b .L_801B86B4
L_801B8658:
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801B86A0
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801B8678
    .4byte 0x48000024 # b .L_801B8698
L_801B8678:
    frsqrte 3, 5
    .4byte 0xC042BB94 # lfs f2, lbl_8053EB34@sda21(r0)
    .4byte 0xC002BB98 # lfs f0, lbl_8053EB38@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 5, 2, 0
L_801B8698:
    fmuls 4, 4, 5
    fmuls 31, 31, 5
L_801B86A0:
    lfs 0, 0x254(29)
    fmuls 4, 4, 0
    fmuls 31, 31, 0
    stfs 4, 0x3c(29)
    stfs 31, 0x40(29)
L_801B86B4:
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x3b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_801B86D8
L_801B86CC:
    mr 3, 29
    bl fn_801F2FAC
    mr 31, 3
L_801B86D8:
    mr 3, 31
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801B8700:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 28, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x5
    .4byte 0x40820084 # bne .L_801B87B4
    .4byte 0xC002BB88 # lfs f0, lbl_8053EB28@sda21(r0)
    li 30, 0x0
    lis 31, 0x5255
    fneg 31, 0
L_801B8744:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(28)
    addi 4, 31, 0x5059
    addi 6, 28, 0xc
    li 7, 0x2
    bl fn_801F8544
    mr. 29, 3
    .4byte 0x41800048 # blt .L_801B87A8
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_801B87A8
    cmpwi 30, 0x0
    .4byte 0xC042BB88 # lfs f2, lbl_8053EB28@sda21(r0)
    .4byte 0x41820008 # beq .L_801B8788
    fmr 2, 31
L_801B8788:
    .4byte 0xC022BB80 # lfs f1, lbl_8053EB20@sda21(r0)
    .4byte 0xC002BB8C # lfs f0, lbl_8053EB2C@sda21(r0)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801B87A8:
    addi 30, 30, 0x1
    cmpwi 30, 0x2
    .4byte 0x4180FF94 # blt .L_801B8744
L_801B87B4:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801B87DC:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    li 31, 0x0
    lwz 5, 0x248(3)
    cmpwi 5, 0x4
    .4byte 0x41820020 # beq .L_801B8820
    .4byte 0x40800010 # bge .L_801B8814
    cmpwi 5, 0x1
    .4byte 0x40800010 # bge .L_801B881C
    .4byte 0x48000010 # b .L_801B8820
L_801B8814:
    cmpwi 5, 0x6
    .4byte 0x40800008 # bge .L_801B8820
L_801B881C:
    li 0, 0x1
L_801B8820:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_801B8854
    lwz 0, 0x24c(3)
    li 4, 0x0
    cmpwi 0, 0xa
    .4byte 0x40800020 # bge .L_801B8854
    cmpwi 5, 0x5
    .4byte 0x41820014 # beq .L_801B8850
    .4byte 0x40800014 # bge .L_801B8854
    cmpwi 5, 0x1
    .4byte 0x41820008 # beq .L_801B8850
    .4byte 0x48000008 # b .L_801B8854
L_801B8850:
    li 4, 0x1
L_801B8854:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_801B8874
    lis 5, 0x4e55
    lwz 4, 0x1a0(3)
    li 6, 0x0
    addi 5, 5, 0x4c4c
    bl fn_801F2DB4
    .4byte 0x4800001C # b .L_801B888C
L_801B8874:
    lis 4, 0x4e55
    li 6, 0x0
    addi 4, 4, 0x4c4c
    mr 5, 4
    bl fn_801F2DB4
    mr 31, 3
L_801B888C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B88A4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002BB94 # lfs f0, lbl_8053EB34@sda21(r0)
    stw 0, 0x14(1)
    lfs 1, 0x44(3)
    fabs 1, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801B88F8
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820018 # beq .L_801B88E8
    lis 4, 0x5
    li 5, 0x0
    addi 4, 4, 0x14
    bl fn_801F0E34
    .4byte 0x48000014 # b .L_801B88F8
L_801B88E8:
    lis 4, 0x5
    li 5, 0x0
    addi 4, 4, 0x15
    bl fn_801F0E34
L_801B88F8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B8908:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0xd4(3)
    cmplwi 0, 0x1
    .4byte 0x408200A4 # bne .L_801B89C8
    lwz 0, 0x230(31)
    li 4, 0x0
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x4182001C # beq .L_801B8950
    lwz 3, 0x2a8(31)
    .4byte 0x800D8540 # lwz r0, lbl_8053A100@sda21(r0)
    cmpw 3, 0
    .4byte 0x40820010 # bne .L_801B8954
    li 4, 0x1
    .4byte 0x48000008 # b .L_801B8954
L_801B8950:
    li 4, 0x1
L_801B8954:
    clrlwi. 0, 4, 24
    .4byte 0x41820068 # beq .L_801B89C0
    lfs 1, 0x14(31)
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820054 # bne .L_801B89C0
    lwz 0, 0x248(31)
    cmpwi 0, 0x4
    .4byte 0x41820048 # beq .L_801B89C0
    .4byte 0x4080001C # bge .L_801B8998
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_801B89C0
    .4byte 0x4080002C # bge .L_801B89B4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801B89A4
    .4byte 0x4800002C # b .L_801B89C0
L_801B8998:
    cmpwi 0, 0x6
    .4byte 0x40800024 # bge .L_801B89C0
    .4byte 0x48000014 # b .L_801B89B4
L_801B89A4:
    mr 3, 31
    li 4, 0x1
    bl fn_801B91A8
    .4byte 0x48000010 # b .L_801B89C0
L_801B89B4:
    mr 3, 31
    li 4, 0x4
    bl fn_801B91A8
L_801B89C0:
    li 0, 0x0
    stb 0, 0xd4(31)
L_801B89C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B89DC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x5
    .4byte 0x40820204 # bne .L_801B8BF4
    lfs 1, 0x44(3)
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(3)
    lwz 4, 0x24c(3)
    lwz 0, 0x250(3)
    subf. 6, 4, 0
    .4byte 0x408100D8 # ble .L_801B8AE8
    cmpwi 6, 0x1e
    .4byte 0x408000D0 # bge .L_801B8AE8
    xoris 5, 6, 0x8000
    lis 0, 0x4330
    stw 5, 0x1c(1)
    lis 4, lbl_80539D44@ha
    .4byte 0xC882BBA8 # lfd f4, lbl_8053EB48@sda21(r0)
    stw 0, 0x18(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801B8A54
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    stfs 0, 0x3c(3)
    .4byte 0x48000030 # b .L_801B8A80
L_801B8A54:
    stw 5, 0x1c(1)
    .4byte 0xC062BB84 # lfs f3, lbl_8053EB24@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    lfd 2, 0x18(1)
    lfs 1, 0x3c(3)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fdivs 2, 3, 2
    fmadds 0, 2, 0, 1
    stfs 0, 0x3c(3)
L_801B8A80:
    xoris 5, 6, 0x8000
    lis 0, 0x4330
    stw 5, 0x1c(1)
    lis 4, lbl_80539D44@ha
    .4byte 0xC882BBA8 # lfd f4, lbl_8053EB48@sda21(r0)
    stw 0, 0x18(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801B8AB8
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    stfs 0, 0x40(3)
    .4byte 0x48000144 # b .L_801B8BF8
L_801B8AB8:
    stw 5, 0x1c(1)
    .4byte 0xC062BB84 # lfs f3, lbl_8053EB24@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    lfd 2, 0x18(1)
    lfs 1, 0x40(3)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fdivs 2, 3, 2
    fmadds 0, 2, 0, 1
    stfs 0, 0x40(3)
    .4byte 0x48000114 # b .L_801B8BF8
L_801B8AE8:
    lfs 1, 0x40(3)
    lfs 0, 0x3c(3)
    stfs 1, 0xc(1)
    .4byte 0xC042BB80 # lfs f2, lbl_8053EB20@sda21(r0)
    stfs 0, 0x8(1)
    .4byte 0xC002BB9C # lfs f0, lbl_8053EB3C@sda21(r0)
    psq_l 3, 0x8(1), 0, 0
    stfs 2, 0x10(1)
    ps_mul 3, 3, 3
    ps_madd 1, 2, 2, 3
    ps_sum0 1, 1, 3, 3
    fcmpo cr0, 1, 0
    .4byte 0x408000E0 # bge .L_801B8BF8
    psq_l 3, 0x8(1), 0, 0
    lis 4, lbl_80539D44@ha
    .4byte 0xC022BB90 # lfs f1, lbl_8053EB30@sda21(r0)
    ps_mul 3, 3, 3
    lfs 0, lbl_80539D44@l(4)
    fmuls 0, 1, 0
    ps_madd 1, 2, 2, 3
    ps_sum0 1, 1, 3, 3
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_801B8B58
    stfs 2, 0x3c(3)
    .4byte 0xC002BBA0 # lfs f0, lbl_8053EB40@sda21(r0)
    stfs 0, 0x40(3)
    .4byte 0x480000A4 # b .L_801B8BF8
L_801B8B58:
    psq_l 1, 0x8(1), 0, 0
    ps_mul 1, 1, 1
    ps_madd 6, 2, 2, 1
    ps_sum0 6, 6, 1, 1
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_801B8BC4
    fcmpo cr0, 6, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801B8B88
    fmr 4, 6
    .4byte 0x48000028 # b .L_801B8BAC
L_801B8B88:
    frsqrte 3, 6
    .4byte 0xC042BB94 # lfs f2, lbl_8053EB34@sda21(r0)
    .4byte 0xC002BB98 # lfs f0, lbl_8053EB38@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 0, 2, 0
    fmr 4, 0
L_801B8BAC:
    psq_l 1, 0x8(1), 0, 0
    psq_l 0, 0x10(1), 1, 0
    ps_muls0 1, 1, 4
    ps_muls0 0, 0, 4
    psq_st 1, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
L_801B8BC4:
    .4byte 0xC0A2BBA0 # lfs f5, lbl_8053EB40@sda21(r0)
    psq_l 0, 0x8(1), 0, 0
    psq_l 1, 0x10(1), 1, 0
    ps_muls0 0, 0, 5
    ps_muls0 2, 1, 5
    psq_st 0, 0x8(1), 0, 0
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    stfs 1, 0x3c(3)
    psq_st 2, 0x10(1), 1, 0
    stfs 0, 0x40(3)
    .4byte 0x48000008 # b .L_801B8BF8
L_801B8BF4:
    bl fn_801CE4E8
L_801B8BF8:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801B8C08:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    li 3, 0x0
    cmpwi 0, 0x4
    .4byte 0x41820020 # beq .L_801B8C4C
    .4byte 0x40800010 # bge .L_801B8C40
    cmpwi 0, 0x1
    .4byte 0x40800010 # bge .L_801B8C48
    .4byte 0x48000010 # b .L_801B8C4C
L_801B8C40:
    cmpwi 0, 0x6
    .4byte 0x40800008 # bge .L_801B8C4C
L_801B8C48:
    li 3, 0x1
L_801B8C4C:
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801B8C58
    li 4, 0x1
L_801B8C58:
    addi 3, 31, 0x270
    li 5, 0x2
    bl fn_801D22A0
    lwz 0, 0x248(31)
    .4byte 0xC002BB84 # lfs f0, lbl_8053EB24@sda21(r0)
    cmpwi 0, 0x3
    .4byte 0x40820008 # bne .L_801B8C78
    .4byte 0xC002BBB0 # lfs f0, lbl_8053EB50@sda21(r0)
L_801B8C78:
    stfs 0, 0x2a0(31)
    mr 3, 31
    bl fn_801CE4BC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B8C98:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 31, 3
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    lfs 1, 0x14(3)
    mr 28, 4
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820128 # bne .L_801B8DFC
    .4byte 0xC002BBB4 # lfs f0, lbl_8053EB54@sda21(r0)
    li 29, 0x0
    lfs 4, 0x10(31)
    li 30, -0x1
    lfs 1, 0xc(31)
    fadds 3, 0, 4
    fadds 2, 0, 1
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x1c(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    stfs 2, 0x18(1)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820028 # beq .L_801B8D3C
    lwz 3, 0x2a8(31)
    addi 4, 1, 0x10
    lwz 5, 0x4(31)
    addi 6, 1, 0x8
    bl fn_8023AAF8
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801B8D50
    lwz 30, 0x2a8(31)
    .4byte 0x48000018 # b .L_801B8D50
L_801B8D3C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023AA18
    mr 30, 3
L_801B8D50:
    cmpwi 30, 0x0
    .4byte 0x4180003C # blt .L_801B8D90
    lfs 3, 0x8(1)
    lfs 0, 0xc(31)
    lfs 2, 0xc(1)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002BBB8 # lfs f0, lbl_8053EB58@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801B8D90
    li 29, 0x1
L_801B8D90:
    clrlwi. 0, 29, 24
    .4byte 0x41820068 # beq .L_801B8DFC
    lfs 1, 0x14(31)
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820054 # bne .L_801B8DFC
    lwz 0, 0x248(31)
    cmpwi 0, 0x4
    .4byte 0x41820048 # beq .L_801B8DFC
    .4byte 0x4080001C # bge .L_801B8DD4
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_801B8DFC
    .4byte 0x4080002C # bge .L_801B8DF0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801B8DE0
    .4byte 0x4800002C # b .L_801B8DFC
L_801B8DD4:
    cmpwi 0, 0x6
    .4byte 0x40800024 # bge .L_801B8DFC
    .4byte 0x48000014 # b .L_801B8DF0
L_801B8DE0:
    mr 3, 31
    li 4, 0x1
    bl fn_801B91A8
    .4byte 0x48000010 # b .L_801B8DFC
L_801B8DF0:
    mr 3, 31
    li 4, 0x4
    bl fn_801B91A8
L_801B8DFC:
    lwz 3, 0x248(31)
    cmpwi 3, 0x3
    .4byte 0x41820110 # beq .L_801B8F14
    .4byte 0x4080001C # bge .L_801B8E24
    cmpwi 3, 0x1
    .4byte 0x4182006C # beq .L_801B8E7C
    .4byte 0x408000E0 # bge .L_801B8EF4
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_801B8E34
    .4byte 0x480002AC # b .L_801B90CC
L_801B8E24:
    cmpwi 3, 0x5
    .4byte 0x41820184 # beq .L_801B8FAC
    .4byte 0x408002A0 # bge .L_801B90CC
    .4byte 0x48000104 # b .L_801B8F34
L_801B8E34:
    clrlwi. 0, 28, 24
    .4byte 0x41820024 # beq .L_801B8E5C
    lwz 4, 0x98(31)
    mr 3, 31
    bl fn_801CF720
    stw 3, 0x98(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0xa
    stw 0, 0x250(31)
    .4byte 0x48000274 # b .L_801B90CC
L_801B8E5C:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800264 # blt .L_801B90CC
    mr 3, 31
    li 4, 0x0
    bl fn_801B91A8
    .4byte 0x48000254 # b .L_801B90CC
L_801B8E7C:
    cmpwi 3, 0x4
    li 0, 0x0
    .4byte 0x41820014 # beq .L_801B8E98
    .4byte 0x40800048 # bge .L_801B8ED0
    cmpwi 3, 0x1
    .4byte 0x41820008 # beq .L_801B8E98
    .4byte 0x4800003C # b .L_801B8ED0
L_801B8E98:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x1
    .4byte 0x40810024 # ble .L_801B8EC4
    lfs 0, 0x14(31)
    .4byte 0xC022BB80 # lfs f1, lbl_8053EB20@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801B8EC4
    lfs 0, 0x44(31)
    fcmpu cr0, 1, 0
    .4byte 0x4182000C # beq .L_801B8ECC
L_801B8EC4:
    cmpwi 3, 0x78
    .4byte 0x41800008 # blt .L_801B8ED0
L_801B8ECC:
    li 0, 0x1
L_801B8ED0:
    clrlwi. 0, 0, 24
    .4byte 0x418201F8 # beq .L_801B90CC
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    mr 3, 31
    li 4, 0x2
    stfs 0, 0x44(31)
    stfs 0, 0x14(31)
    bl fn_801B91A8
    .4byte 0x480001DC # b .L_801B90CC
L_801B8EF4:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418001CC # blt .L_801B90CC
    mr 3, 31
    li 4, 0x3
    bl fn_801B91A8
    .4byte 0x480001BC # b .L_801B90CC
L_801B8F14:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418001AC # blt .L_801B90CC
    mr 3, 31
    li 4, 0x4
    bl fn_801B91A8
    .4byte 0x4800019C # b .L_801B90CC
L_801B8F34:
    cmpwi 3, 0x4
    li 0, 0x0
    .4byte 0x41820014 # beq .L_801B8F50
    .4byte 0x40800048 # bge .L_801B8F88
    cmpwi 3, 0x1
    .4byte 0x41820008 # beq .L_801B8F50
    .4byte 0x4800003C # b .L_801B8F88
L_801B8F50:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x1
    .4byte 0x40810024 # ble .L_801B8F7C
    lfs 0, 0x14(31)
    .4byte 0xC022BB80 # lfs f1, lbl_8053EB20@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801B8F7C
    lfs 0, 0x44(31)
    fcmpu cr0, 1, 0
    .4byte 0x4182000C # beq .L_801B8F84
L_801B8F7C:
    cmpwi 3, 0x78
    .4byte 0x41800008 # blt .L_801B8F88
L_801B8F84:
    li 0, 0x1
L_801B8F88:
    clrlwi. 0, 0, 24
    .4byte 0x41820140 # beq .L_801B90CC
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    mr 3, 31
    li 4, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x14(31)
    bl fn_801B91A8
    .4byte 0x48000124 # b .L_801B90CC
L_801B8FAC:
    clrlwi. 0, 28, 24
    .4byte 0x41820028 # beq .L_801B8FD8
    addi 3, 31, 0x264
    addi 4, 31, 0x3c
    bl fn_801CC350
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x3c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000CC # b .L_801B90A0
L_801B8FD8:
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x418200C0 # beq .L_801B90A0
    li 4, 0x0
    li 3, 0x1
    clrlwi 5, 0, 24
    li 30, -0x1
    slw 0, 3, 4
    and. 0, 5, 0
    .4byte 0x4182000C # beq .L_801B9008
    li 30, 0x0
    .4byte 0x48000044 # b .L_801B9048
L_801B9008:
    slw 0, 3, 3
    and. 0, 5, 0
    .4byte 0x4182000C # beq .L_801B901C
    li 30, 0x1
    .4byte 0x48000030 # b .L_801B9048
L_801B901C:
    li 4, 0x2
    slw 0, 3, 4
    and. 0, 5, 0
    .4byte 0x4182000C # beq .L_801B9034
    li 30, 0x2
    .4byte 0x48000018 # b .L_801B9048
L_801B9034:
    li 4, 0x3
    slw 0, 3, 4
    and. 0, 5, 0
    .4byte 0x41820008 # beq .L_801B9048
    li 30, 0x3
L_801B9048:
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 30
    lfs 0, 0x10(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x0(3)
    addi 3, 1, 0x20
    lfs 1, 0xc(31)
    addi 4, 31, 0x3c
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    fsubs 1, 1, 2
    stfs 31, 0x24(1)
    stfs 0, 0x28(1)
    stfs 1, 0x20(1)
    bl fn_801CC350
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x3c
    li 5, 0x0
    bl fn_801F0E34
L_801B90A0:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800020 # blt .L_801B90CC
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    mr 3, 31
    li 4, 0x2
    stfs 0, 0x44(31)
    stfs 0, 0x14(31)
    stfs 0, 0x254(31)
    bl fn_801B91A8
L_801B90CC:
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_801B90DC
    .4byte 0x48000014 # b .L_801B90EC
L_801B90DC:
    lwz 0, 0x230(31)
    ori 0, 0, 0x40
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801B90F8
L_801B90EC:
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 26, 24
    stw 0, 0x230(31)
L_801B90F8:
    lwz 4, 0x248(31)
    li 3, 0x1
    li 0, 0x0
    cmpwi 4, 0x4
    .4byte 0x41820020 # beq .L_801B9128
    .4byte 0x40800010 # bge .L_801B911C
    cmpwi 4, 0x1
    .4byte 0x40800010 # bge .L_801B9124
    .4byte 0x48000010 # b .L_801B9128
L_801B911C:
    cmpwi 4, 0x6
    .4byte 0x40800008 # bge .L_801B9128
L_801B9124:
    li 0, 0x1
L_801B9128:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_801B915C
    lwz 0, 0x24c(31)
    li 3, 0x0
    cmpwi 0, 0xa
    .4byte 0x40800020 # bge .L_801B915C
    cmpwi 4, 0x5
    .4byte 0x41820014 # beq .L_801B9158
    .4byte 0x40800014 # bge .L_801B915C
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_801B9158
    .4byte 0x48000008 # b .L_801B915C
L_801B9158:
    li 3, 0x1
L_801B915C:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801B9174
    lis 3, 0x4
    addi 0, 3, 0x130b
    stw 0, 0xb0(31)
    .4byte 0x48000010 # b .L_801B9180
L_801B9174:
    lis 3, 0x4
    addi 0, 3, 0x1101
    stw 0, 0xb0(31)
L_801B9180:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801B91A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmpwi 31, 0x3
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x41820140 # beq .L_801B9308
    .4byte 0x4080001C # bge .L_801B91E8
    cmpwi 31, 0x1
    .4byte 0x41820058 # beq .L_801B922C
    .4byte 0x40800114 # bge .L_801B92EC
    cmpwi 31, 0x0
    .4byte 0x40800018 # bge .L_801B91F8
    .4byte 0x48000170 # b .L_801B9354
L_801B91E8:
    cmpwi 31, 0x5
    .4byte 0x41820138 # beq .L_801B9324
    .4byte 0x40800164 # bge .L_801B9354
    .4byte 0x48000038 # b .L_801B922C
L_801B91F8:
    li 3, 0x10
    bl fn_801CD664
    addi 0, 3, 0x1e
    .4byte 0xC002BBBC # lfs f0, lbl_8053EB5C@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x4
    .4byte 0x4182013C # beq .L_801B9354
    mr 3, 30
    bl fn_801CF6B8
    stw 3, 0x98(30)
    .4byte 0x4800012C # b .L_801B9354
L_801B922C:
    cmpwi 31, 0x1
    .4byte 0x40820040 # bne .L_801B9270
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182001C # beq .L_801B9258
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x16
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000054 # b .L_801B92A8
L_801B9258:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x17
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800003C # b .L_801B92A8
L_801B9270:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182001C # beq .L_801B9294
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x21
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_801B92A8
L_801B9294:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
L_801B92A8:
    li 0, -0x1
    stw 0, 0x250(30)
    lwz 3, 0x98(30)
    bl fn_801CD354
    stw 3, 0x98(30)
    .4byte 0xC002BBC0 # lfs f0, lbl_8053EB60@sda21(r0)
    stfs 0, 0x258(30)
    stfs 0, 0x254(30)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820010 # beq .L_801B92E0
    .4byte 0xC002BBB0 # lfs f0, lbl_8053EB50@sda21(r0)
    stfs 0, 0x44(30)
    .4byte 0x48000078 # b .L_801B9354
L_801B92E0:
    .4byte 0xC002BB98 # lfs f0, lbl_8053EB38@sda21(r0)
    stfs 0, 0x44(30)
    .4byte 0x4800006C # b .L_801B9354
L_801B92EC:
    li 3, 0x65
    bl fn_801CD664
    addi 0, 3, 0x190
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    .4byte 0x48000050 # b .L_801B9354
L_801B9308:
    li 3, 0xb
    bl fn_801CD664
    addi 0, 3, 0x1e
    .4byte 0xC002BB80 # lfs f0, lbl_8053EB20@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    .4byte 0x48000034 # b .L_801B9354
L_801B9324:
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0x21c
    stw 0, 0x250(30)
    lwz 3, 0x98(30)
    bl fn_801CD354
    stw 3, 0x98(30)
    .4byte 0xC022BBC4 # lfs f1, lbl_8053EB64@sda21(r0)
    .4byte 0xC002BBB0 # lfs f0, lbl_8053EB50@sda21(r0)
    stfs 1, 0x258(30)
    stfs 1, 0x254(30)
    stfs 0, 0x44(30)
L_801B9354:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B9378:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x4182003C # beq .L_801B93D4
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    extrwi 4, 0, 3, 28
    cmplwi 4, 0x1
    .4byte 0x41800020 # blt .L_801B93D4
    cmplwi 4, 0x4
    .4byte 0x41810018 # bgt .L_801B93D4
    lwz 3, 0x230(31)
    subi 0, 4, 0x1
    ori 3, 3, 0x4000
    stw 3, 0x230(31)
    stw 0, 0x2a8(31)
L_801B93D4:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820068 # beq .L_801B9444
    .4byte 0xC022BBC8 # lfs f1, lbl_8053EB68@sda21(r0)
    stfs 1, 0x54(31)
    stfs 1, 0x58(31)
    stfs 1, 0x5c(31)
    lfs 0, 0x60(31)
    fmuls 0, 0, 1
    stfs 0, 0x60(31)
    lfs 0, 0x64(31)
    fmuls 0, 0, 1
    stfs 0, 0x64(31)
    lfs 0, 0x68(31)
    fmuls 0, 0, 1
    stfs 0, 0x68(31)
    lfs 0, 0x6c(31)
    fmuls 0, 0, 1
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x80(31)
    lfs 0, 0x64(31)
    stfs 0, 0x84(31)
    lfs 0, 0x68(31)
    stfs 0, 0x88(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x8c(31)
    .4byte 0x4800000C # b .L_801B944C
L_801B9444:
    li 0, 0x1
    stw 0, 0x108(31)
L_801B944C:
    lwz 5, 0x108(31)
    lis 3, 0x4
    addi 4, 3, 0x130b
    li 0, 0x0
    stw 5, 0x244(31)
    li 3, 0x10
    stw 4, 0xb0(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x1e
    .4byte 0xC002BBBC # lfs f0, lbl_8053EB5C@sda21(r0)
    stw 0, 0x250(31)
    addi 3, 31, 0x270
    .4byte 0x388D8560 # li r4, lbl_8053A120@sda21
    li 5, 0x2
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_801B7E9C

