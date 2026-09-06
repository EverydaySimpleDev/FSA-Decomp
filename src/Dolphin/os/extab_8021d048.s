.section extab, "a"
.balign 4
.global etb_8000A43C
etb_8000A43C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A43C, 8

.global etb_8000A444
etb_8000A444:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A444, 8

.global etb_8000A44C
etb_8000A44C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A44C, 8

.global etb_8000A454
etb_8000A454:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A454, 8

.section extabindex, "a"
.balign 4
.global eti_80018184
eti_80018184:
    .4byte fn_8021D048
    .4byte 0x00000224
    .4byte etb_8000A43C
.size eti_80018184, 12

.global eti_80018190
eti_80018190:
    .4byte fn_8021D26C
    .4byte 0x00000090
    .4byte etb_8000A444
.size eti_80018190, 12

.global eti_8001819C
eti_8001819C:
    .4byte fn_8021D2FC
    .4byte 0x000000B0
    .4byte etb_8000A44C
.size eti_8001819C, 12

.global eti_800181A8
eti_800181A8:
    .4byte fn_8021D3AC
    .4byte 0x00000120
    .4byte etb_8000A454
.size eti_800181A8, 12

.text
.balign 4
.global fn_8021D048
.global fn_8021D26C
.global fn_8021D2FC
.global fn_8021D3AC

fn_8021D048:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CE340@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CE340@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D098
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
L_8021D098:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D0D0
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
L_8021D0D0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D108
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
L_8021D108:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D140
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
L_8021D140:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D178
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
L_8021D178:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D1B0
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
L_8021D1B0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D1E8
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
L_8021D1E8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D220
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
L_8021D220:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021D258
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
L_8021D258:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021D26C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_8021D2E0
    lis 3, lbl_804A6660@ha
    addi 0, 3, lbl_804A6660@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_8021D2D0
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8021D2C4
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_8021D2C4
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_8021D2C4:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_8021D2D0:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8021D2E0
    mr 3, 30
    bl dtor_80084580
L_8021D2E0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021D2FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8021D334
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000068 # b .L_8021D398
L_8021D334:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8021D344
    .4byte 0x48000058 # b .L_8021D398
L_8021D344:
    lhz 3, 0x2a8(31)
    cmplwi 3, 0x1
    .4byte 0x40810010 # ble .L_8021D35C
    subi 0, 3, 0x1
    sth 0, 0x2a8(31)
    .4byte 0x48000040 # b .L_8021D398
L_8021D35C:
    lis 4, 0x4642
    .4byte 0xC022CD98 # lfs f1, lbl_8053FD38@sda21(r0)
    .4byte 0xC042CD9C # lfs f2, lbl_8053FD3C@sda21(r0)
    mr 3, 31
    addi 4, 4, 0x414c
    bl fn_801CECF4
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8021D398
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x30
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x78
    sth 0, 0x2a8(31)
L_8021D398:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021D3AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8021D3EC
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 30
    .4byte 0x41820028 # beq .L_8021D404
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000D0 # b .L_8021D4B8
L_8021D3EC:
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_8021D404
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000B8 # b .L_8021D4B8
L_8021D404:
    .4byte 0xC062CDA0 # lfs f3, lbl_8053FD40@sda21(r0)
    li 6, 0x0
    .4byte 0xC042CDA4 # lfs f2, lbl_8053FD44@sda21(r0)
    li 5, 0x2
    stfs 3, 0x60(31)
    li 4, 0x3e8
    li 0, -0x1
    .4byte 0xC002CDA8 # lfs f0, lbl_8053FD48@sda21(r0)
    stfs 3, 0x64(31)
    mr 3, 31
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    lfs 1, 0x60(31)
    stfs 1, 0x70(31)
    lfs 1, 0x64(31)
    stfs 1, 0x74(31)
    lfs 1, 0x68(31)
    stfs 1, 0x78(31)
    lfs 1, 0x6c(31)
    stfs 1, 0x7c(31)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stw 6, 0xb0(31)
    stw 5, 0x98(31)
    lwz 5, 0x230(31)
    ori 5, 5, 0x380
    stw 5, 0x230(31)
    stw 4, 0x108(31)
    lwz 4, 0x108(31)
    stw 4, 0x244(31)
    stw 6, 0x248(31)
    stw 0, 0x250(31)
    stw 6, 0x24c(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8021D4B8
    mr 3, 31
    bl fn_801F3668
L_8021D4B8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8021D048
