.section extab, "a"
.balign 4
.global etb_80009F30
etb_80009F30:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009F30, 8

.global etb_80009F38
etb_80009F38:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009F38, 8

.section extabindex, "a"
.balign 4
.global eti_80017A10
eti_80017A10:
    .4byte fn_8020D7D0
    .4byte 0x000000F0
    .4byte etb_80009F30
.size eti_80017A10, 12

.global eti_80017A1C
eti_80017A1C:
    .4byte fn_8020D950
    .4byte 0x00000224
    .4byte etb_80009F38
.size eti_80017A1C, 12

.text
.balign 4
.global fn_8020D7D0
.global fn_8020D8C0
.global fn_8020D950

fn_8020D7D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200AC # beq .L_8020D8A8
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x418200A0 # beq .L_8020D8A8
    lwz 0, 0x0(30)
    lfs 2, 0x80(3)
    lfs 0, 0xc(3)
    cmpwi 0, 0x50
    lfs 4, 0x88(3)
    lfs 3, 0x84(3)
    fadds 2, 2, 0
    lfs 1, 0x10(3)
    fadds 4, 4, 0
    lfs 5, 0x8c(3)
    fadds 3, 3, 1
    lwz 4, 0x4(3)
    fadds 5, 5, 1
    .4byte 0x40800068 # bge .L_8020D8A8
    fsubs 0, 4, 2
    .4byte 0xC022CA78 # lfs f1, lbl_8053FA18@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810058 # ble .L_8020D8A8
    fsubs 0, 5, 3
    fcmpo cr0, 0, 1
    .4byte 0x4081004C # ble .L_8020D8A8
    mulli 3, 0, 0x18
    addi 3, 3, 0x4
    add 3, 30, 3
    stfs 2, 0x0(3)
    stfs 3, 0x4(3)
    stfs 4, 0x8(3)
    stfs 5, 0xc(3)
    lwz 0, 0x0(30)
    mulli 0, 0, 0x18
    add 3, 30, 0
    stw 4, 0x14(3)
    lwz 0, 0x0(30)
    mulli 0, 0, 0x18
    add 3, 30, 0
    stw 31, 0x18(3)
    lwz 3, 0x0(30)
    addi 0, 3, 0x1
    stw 0, 0x0(30)
L_8020D8A8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020D8C0:
    lwz 0, 0x0(3)
    cmpwi 0, 0x50
    bgelr
    lfs 0, 0x8(4)
    lfs 3, 0x0(4)
    .4byte 0xC042CA78 # lfs f2, lbl_8053FA18@sda21(r0)
    fsubs 0, 0, 3
    fcmpo cr0, 0, 2
    blelr
    lfs 1, 0xc(4)
    lfs 0, 0x4(4)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    blelr
    mulli 7, 0, 0x18
    lfs 2, 0x4(4)
    lfs 1, 0x8(4)
    lfs 0, 0xc(4)
    addi 4, 7, 0x4
    add 4, 3, 4
    stfs 3, 0x0(4)
    stfs 2, 0x4(4)
    stfs 1, 0x8(4)
    stfs 0, 0xc(4)
    lwz 0, 0x0(3)
    mulli 0, 0, 0x18
    add 4, 3, 0
    stw 5, 0x14(4)
    lwz 0, 0x0(3)
    mulli 0, 0, 0x18
    add 4, 3, 0
    stw 6, 0x18(4)
    lwz 4, 0x0(3)
    addi 0, 4, 0x1
    stw 0, 0x0(3)
    blr

fn_8020D950:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CB8B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CB8B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D9A0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xf0c
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8020D9A0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D9D8
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xf18
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8020D9D8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020DA10
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0xf24
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8020DA10:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020DA48
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0xf30
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8020DA48:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020DA80
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0xf3c
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8020DA80:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020DAB8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0xf48
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8020DAB8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020DAF0
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0xf54
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8020DAF0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020DB28
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0xf60
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8020DB28:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020DB60
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0xf6c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8020DB60:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8020D950
