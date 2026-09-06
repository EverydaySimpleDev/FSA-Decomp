.section extab, "a"
.balign 4
.global etb_80007E64
etb_80007E64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007E64, 8

.global etb_80007E6C
etb_80007E6C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007E6C, 8

.global etb_80007E74
etb_80007E74:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007E74, 8

.global etb_80007E7C
etb_80007E7C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007E7C, 8

.global etb_80007E84
etb_80007E84:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007E84, 8

.global etb_80007E8C
etb_80007E8C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80007E8C, 8

.section extabindex, "a"
.balign 4
.global eti_80014F14
eti_80014F14:
    .4byte fn_801BD69C
    .4byte 0x00000224
    .4byte etb_80007E64
.size eti_80014F14, 12

.global eti_80014F20
eti_80014F20:
    .4byte fn_801BD8C0
    .4byte 0x000000B8
    .4byte etb_80007E6C
.size eti_80014F20, 12

.global eti_80014F2C
eti_80014F2C:
    .4byte fn_801BD978
    .4byte 0x00000058
    .4byte etb_80007E74
.size eti_80014F2C, 12

.global eti_80014F38
eti_80014F38:
    .4byte fn_801BD9D0
    .4byte 0x00000070
    .4byte etb_80007E7C
.size eti_80014F38, 12

.global eti_80014F44
eti_80014F44:
    .4byte fn_801BDA40
    .4byte 0x000000EC
    .4byte etb_80007E84
.size eti_80014F44, 12

.global eti_80014F50
eti_80014F50:
    .4byte fn_801BDB2C
    .4byte 0x000000C4
    .4byte etb_80007E8C
.size eti_80014F50, 12

.text
.balign 4
.global fn_801BD69C
.global fn_801BD8C0
.global fn_801BD978
.global fn_801BD9D0
.global fn_801BDA40
.global fn_801BDB2C

fn_801BD69C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C7970@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C7970@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD6EC
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
L_801BD6EC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD724
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
L_801BD724:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD75C
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
L_801BD75C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD794
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
L_801BD794:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD7CC
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
L_801BD7CC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD804
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
L_801BD804:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD83C
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
L_801BD83C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD874
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
L_801BD874:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD8AC
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
L_801BD8AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BD8C0:
    stwu 1, -0x20(1)
    mflr 0
    lfs 0, 0x0(4)
    stw 0, 0x24(1)
    lfs 1, 0x4(4)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 5
    stw 28, 0x10(1)
    mr 28, 4
    stfs 0, 0xc(29)
    lfs 0, 0x8(4)
    stfs 1, 0x10(29)
    stfs 0, 0x14(29)
    bl fn_801CB7CC
    mr 31, 29
    extsh 30, 3
    li 29, 0x0
L_801BD910:
    lwz 3, 0x2a8(31)
    mr 4, 28
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    cmpwi 29, 0x0
    .4byte 0x4082001C # bne .L_801BD948
    lwz 6, 0x2a8(31)
    mr 4, 30
    li 3, 0x0
    li 5, 0x0
    addi 6, 6, 0x68
    bl fn_800EF008
L_801BD948:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFBC # blt .L_801BD910
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BD978:
    stwu 1, -0x10(1)
    mflr 0
    li 7, 0x0
    addi 5, 3, 0xc
    stw 0, 0x14(1)
    li 0, 0x80
    .4byte 0xC022BCEC # lfs f1, lbl_8053EC8C@sda21(r0)
    addi 6, 1, 0x8
    stb 7, 0xc(1)
    lwz 4, 0x4(3)
    stb 7, 0xd(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BD9D0:
    stwu 1, -0x10(1)
    mflr 0
    li 5, -0x1
    li 6, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x114(3)
    bl fn_801F2B7C
    stb 3, 0x240(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_801BDA2C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BCF0 # lfs f1, lbl_8053EC90@sda21(r0)
    li 5, 0x54d
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801BDA2C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BDA40:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    bl fn_801D0ED0
    .4byte 0xC002BCF4 # lfs f0, lbl_8053EC94@sda21(r0)
    li 4, 0x0
    .4byte 0xC042BCF8 # lfs f2, lbl_8053EC98@sda21(r0)
    li 3, 0x2
    stfs 0, 0x60(28)
    li 0, 0x1
    .4byte 0xC022BCF0 # lfs f1, lbl_8053EC90@sda21(r0)
    mr 30, 28
    stfs 0, 0x64(28)
    li 29, 0x0
    .4byte 0xC002BCFC # lfs f0, lbl_8053EC9C@sda21(r0)
    .4byte 0x3BE2BCE8 # li r31, lbl_8053EC88@sda21
    stfs 2, 0x68(28)
    stfs 2, 0x6c(28)
    stfs 1, 0x70(28)
    stfs 1, 0x74(28)
    stfs 0, 0x78(28)
    stfs 0, 0x7c(28)
    stfs 1, 0x80(28)
    stfs 1, 0x84(28)
    stfs 0, 0x88(28)
    stfs 0, 0x8c(28)
    stw 4, 0xb0(28)
    stw 3, 0x98(28)
    stb 0, 0x194(28)
    stw 3, 0x114(28)
L_801BDACC:
    lhz 5, 0x0(31)
    addi 4, 28, 0xc
    lwz 3, 0x4(28)
    li 6, 0x0
    .4byte 0xC022BCF0 # lfs f1, lbl_8053EC90@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 29, 29, 0x1
    stw 3, 0x2a8(30)
    cmpwi 29, 0x2
    addi 31, 31, 0x2
    addi 30, 30, 0x4
    .4byte 0x4180FFC4 # blt .L_801BDACC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BDB2C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x4182007C # beq .L_801BDBCC
    lis 3, lbl_804A4038@ha
    mr 31, 28
    addi 0, 3, lbl_804A4038@l
    li 30, 0x0
    stw 0, 0x0(28)
L_801BDB68:
    lwz 3, 0x2a8(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x2
    .4byte 0x4180FFEC # blt .L_801BDB68
    cmplwi 28, 0x0
    .4byte 0x41820038 # beq .L_801BDBBC
    lis 3, lbl_804A4808@ha
    addic. 0, 28, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(28)
    .4byte 0x41820018 # beq .L_801BDBB0
    addic. 0, 28, 0x294
    .4byte 0x41820010 # beq .L_801BDBB0
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(28)
L_801BDBB0:
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
L_801BDBBC:
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_801BDBCC
    mr 3, 28
    bl dtor_80084580
L_801BDBCC:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801BD69C
