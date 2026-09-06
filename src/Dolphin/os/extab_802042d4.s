.section extab, "a"
.balign 4
.global etb_80009BD0
etb_80009BD0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009BD0, 8

.global etb_80009BD8
etb_80009BD8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009BD8, 8

.global etb_80009BE0
etb_80009BE0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009BE0, 8

.global etb_80009BE8
etb_80009BE8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80009BE8, 8

.global etb_80009BF0
etb_80009BF0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009BF0, 8

.global etb_80009BF8
etb_80009BF8:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80009BF8, 8

.global etb_80009C00
etb_80009C00:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009C00, 8

.global etb_80009C08
etb_80009C08:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009C08, 8

.section extabindex, "a"
.balign 4
.global eti_8001753C
eti_8001753C:
    .4byte fn_802042D4
    .4byte 0x000000A0
    .4byte etb_80009BD0
.size eti_8001753C, 12

.global eti_80017548
eti_80017548:
    .4byte fn_80204374
    .4byte 0x000000A0
    .4byte etb_80009BD8
.size eti_80017548, 12

.global eti_80017554
eti_80017554:
    .4byte fn_80204414
    .4byte 0x00000224
    .4byte etb_80009BE0
.size eti_80017554, 12

.global eti_80017560
eti_80017560:
    .4byte fn_80204638
    .4byte 0x000000C4
    .4byte etb_80009BE8
.size eti_80017560, 12

.global eti_8001756C
eti_8001756C:
    .4byte fn_802046FC
    .4byte 0x00000138
    .4byte etb_80009BF0
.size eti_8001756C, 12

.global eti_80017578
eti_80017578:
    .4byte fn_802048F4
    .4byte 0x000000EC
    .4byte etb_80009BF8
.size eti_80017578, 12

.global eti_80017584
eti_80017584:
    .4byte fn_80204A20
    .4byte 0x0000009C
    .4byte etb_80009C00
.size eti_80017584, 12

.global eti_80017590
eti_80017590:
    .4byte fn_80204B20
    .4byte 0x00000224
    .4byte etb_80009C08
.size eti_80017590, 12

.text
.balign 4
.global fn_802042D4
.global fn_80204374
.global fn_80204414
.global fn_80204638
.global fn_802046FC
.global fn_80204834
.global fn_802048F4
.global fn_802049E0
.global fn_80204A20
.global fn_80204ABC
.global fn_80204B20
.global fn_80204D44

fn_802042D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820068 # beq .L_80204358
    lis 3, lbl_804A5810@ha
    addi 0, 3, lbl_804A5810@l
    stw 0, 0x0(30)
    .4byte 0x41820048 # beq .L_80204348
    lis 3, lbl_804A48B0@ha
    addi 0, 3, lbl_804A48B0@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_80204348
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8020433C
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_8020433C
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_8020433C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_80204348:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80204358
    mr 3, 30
    bl dtor_80084580
L_80204358:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80204374:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820068 # beq .L_802043F8
    lis 3, lbl_804A58B4@ha
    addi 0, 3, lbl_804A58B4@l
    stw 0, 0x0(30)
    .4byte 0x41820048 # beq .L_802043E8
    lis 3, lbl_804A48B0@ha
    addi 0, 3, lbl_804A48B0@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_802043E8
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_802043DC
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_802043DC
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_802043DC:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_802043E8:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802043F8
    mr 3, 30
    bl dtor_80084580
L_802043F8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80204414:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CACE0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CACE0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204464
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
L_80204464:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020449C
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
L_8020449C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802044D4
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
L_802044D4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020450C
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
L_8020450C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204544
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
L_80204544:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020457C
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
L_8020457C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802045B4
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
L_802045B4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802045EC
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
L_802045EC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204624
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
L_80204624:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80204638:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D9098 # lbz r0, lbl_8053AC58@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820098 # bne .L_802046E4
    lis 4, lbl_804CADE0@ha
    li 0, 0x0
    addi 5, 4, lbl_804CADE0@l
    lis 3, fn_8003B2CC@ha
    stb 0, 0x0(5)
    addi 4, 3, fn_8003B2CC@l
    addi 3, 5, 0x58
    li 6, 0xc
    stw 0, 0x54(5)
    li 5, 0x0
    li 7, 0xa
    bl __construct_array
    li 4, 0x0
    lis 3, lbl_804CADE0@ha
    stbu 4, lbl_804CADE0@l(3)
    li 0, 0x1
    stw 4, 0x4(3)
    stw 4, 0x8(3)
    stw 4, 0xc(3)
    stw 4, 0x10(3)
    stw 4, 0x14(3)
    stw 4, 0x18(3)
    stw 4, 0x1c(3)
    stw 4, 0x20(3)
    stw 4, 0x24(3)
    stw 4, 0x28(3)
    stw 4, 0x2c(3)
    stw 4, 0x30(3)
    stw 4, 0x34(3)
    stw 4, 0x38(3)
    stw 4, 0x3c(3)
    stw 4, 0x40(3)
    stw 4, 0x44(3)
    stw 4, 0x48(3)
    stw 4, 0x4c(3)
    stw 4, 0x50(3)
    .4byte 0x980D9098 # stb r0, lbl_8053AC58@sda21(r0)
L_802046E4:
    lwz 0, 0x14(1)
    lis 3, lbl_804CADE0@ha
    addi 3, 3, lbl_804CADE0@l
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802046FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 5
    lwz 0, 0x54(3)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_8020472C
    li 3, 0x0
    .4byte 0x480000F4 # b .L_8020481C
L_8020472C:
    cmpwi 0, 0x1
    li 3, 0x0
    .4byte 0x418000B4 # blt .L_802047E8
    lfs 1, 0x4(30)
    li 0, 0x0
    lfs 0, 0x0(30)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 7, 0x54(31)
    cmpwi 7, 0x1
    .4byte 0x40810060 # ble .L_802047B4
    lis 3, lbl_80539D40@ha
    mr 5, 0
    mr 6, 31
    lfs 4, lbl_80539D40@l(3)
    mtctr 7
    cmpwi 7, 0x0
    .4byte 0x40810044 # ble .L_802047B4
L_80204774:
    lfs 3, 0x5c(6)
    lfs 2, 0x4(30)
    lfs 1, 0x58(6)
    lfs 0, 0x0(30)
    fsubs 2, 3, 2
    fsubs 1, 1, 0
    fmuls 0, 2, 2
    fmuls 1, 1, 1
    fadds 0, 1, 0
    fcmpo cr0, 0, 4
    .4byte 0x4080000C # bge .L_802047A8
    fmr 4, 0
    mr 0, 5
L_802047A8:
    addi 6, 6, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FFC4 # bdnz .L_80204774
L_802047B4:
    mulli 3, 0, 0xc
    .4byte 0xC022C898 # lfs f1, lbl_8053F838@sda21(r0)
    .4byte 0xC042C89C # lfs f2, lbl_8053F83C@sda21(r0)
    addi 5, 1, 0x8
    addi 3, 3, 0x58
    add 3, 31, 3
    bl fn_801CB85C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802047E8
    lfs 0, 0x8(1)
    stfs 0, 0x0(30)
    lfs 0, 0xc(1)
    stfs 0, 0x4(30)
L_802047E8:
    lwz 0, 0x54(31)
    lfs 0, 0x0(30)
    mulli 4, 0, 0xc
    addi 4, 4, 0x58
    add 4, 31, 4
    stfs 0, 0x0(4)
    lfs 0, 0x4(30)
    stfs 0, 0x4(4)
    lfs 0, 0x8(30)
    stfs 0, 0x8(4)
    lwz 4, 0x54(31)
    addi 0, 4, 0x1
    stw 0, 0x54(31)
L_8020481C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80204834:
    li 0, 0x2
    li 6, 0x0
    li 4, 0x0
    mtctr 0
L_80204844:
    lwz 5, 0x4(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_80204854
    stb 4, 0x11c(5)
L_80204854:
    lwz 5, 0x8(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_80204864
    stb 4, 0x11c(5)
L_80204864:
    lwz 5, 0xc(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_80204874
    stb 4, 0x11c(5)
L_80204874:
    lwz 5, 0x10(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_80204884
    stb 4, 0x11c(5)
L_80204884:
    lwz 5, 0x14(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_80204894
    stb 4, 0x11c(5)
L_80204894:
    lwz 5, 0x18(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_802048A4
    stb 4, 0x11c(5)
L_802048A4:
    lwz 5, 0x1c(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_802048B4
    stb 4, 0x11c(5)
L_802048B4:
    lwz 5, 0x20(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_802048C4
    stb 4, 0x11c(5)
L_802048C4:
    lwz 5, 0x24(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_802048D4
    stb 4, 0x11c(5)
L_802048D4:
    lwz 5, 0x28(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_802048E4
    stb 4, 0x11c(5)
L_802048E4:
    addi 3, 3, 0x28
    addi 6, 6, 0x4
    .4byte 0x4200FF58 # bdnz .L_80204844
    blr

fn_802048F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 26, 3
    bl GetRoomConfigRecord
    mr 31, 3
    mr 29, 26
    li 27, 0x0
L_80204918:
    li 26, 0x0
    mr 30, 29
L_80204920:
    lwz 28, 0x4(30)
    cmplwi 28, 0x0
    .4byte 0x41820084 # beq .L_802049AC
    lbz 0, 0x11c(28)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_802049AC
    lwz 0, 0x4(28)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_802049AC
    lfs 2, 0xc(28)
    li 0, 0x0
    lfs 0, 0xcc(31)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8020498C
    lfs 1, 0x10(28)
    lfs 0, 0xd0(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8020498C
    lfs 0, 0xd4(31)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8020498C
    lfs 0, 0xd8(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8020498C
    li 0, 0x1
L_8020498C:
    clrlwi. 0, 0, 24
    .4byte 0x4082001C # bne .L_802049AC
    mr 3, 28
    bl fn_80204D44
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802049AC
    li 0, 0x0
    stb 0, 0x11c(28)
L_802049AC:
    addi 26, 26, 0x1
    addi 30, 30, 0x4
    cmpwi 26, 0x2
    .4byte 0x4180FF68 # blt .L_80204920
    addi 27, 27, 0x1
    addi 29, 29, 0x8
    cmpwi 27, 0xa
    .4byte 0x4180FF50 # blt .L_80204918
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802049E0:
    lbz 0, 0x34a(4)
    clrlslwi 5, 0, 24, 3
    addi 5, 5, 0x4
    add 5, 3, 5
    lwz 0, 0x0(5)
    cmplw 0, 4
    .4byte 0x40820010 # bne .L_80204A08
    li 0, 0x0
    stw 0, 0x0(5)
    blr
L_80204A08:
    lwz 0, 0x4(5)
    cmplw 0, 4
    bnelr
    li 0, 0x0
    stw 0, 0x4(5)
    blr

fn_80204A20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    lbz 0, 0x34a(4)
    clrlslwi 4, 0, 24, 3
    addi 4, 4, 0x4
    add 4, 3, 4
    lwz 0, 0x0(4)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80204A78
    stw 31, 0x0(4)
    lwz 3, 0x4(4)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80204AA8
    bl fn_80204D44
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80204AA8
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000034 # b .L_80204AA8
L_80204A78:
    lwz 0, 0x4(4)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80204AA8
    stw 31, 0x4(4)
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80204AA8
    bl fn_80204D44
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80204AA8
    li 0, 0x0
    stb 0, 0x11c(31)
L_80204AA8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80204ABC:
    clrlwi. 0, 4, 24
    beqlr
    li 0, 0x0
    stb 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    stw 0, 0x18(3)
    stw 0, 0x1c(3)
    stw 0, 0x20(3)
    stw 0, 0x24(3)
    stw 0, 0x28(3)
    stw 0, 0x2c(3)
    stw 0, 0x30(3)
    stw 0, 0x34(3)
    stw 0, 0x38(3)
    stw 0, 0x3c(3)
    stw 0, 0x40(3)
    stw 0, 0x44(3)
    stw 0, 0x48(3)
    stw 0, 0x4c(3)
    stw 0, 0x50(3)
    blr

fn_80204B20:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CADE0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CADE0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204B70
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xd0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80204B70:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204BA8
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xdc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80204BA8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204BE0
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0xe8
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80204BE0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204C18
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0xf4
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80204C18:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204C50
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x100
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80204C50:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204C88
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x10c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80204C88:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204CC0
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x118
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80204CC0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204CF8
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x124
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80204CF8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80204D30
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x130
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80204D30:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80204D44:
    lhz 0, 0x94(3)
    li 4, 0x0
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_80204D60
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80204D64
L_80204D60:
    li 4, 0x1
L_80204D64:
    mr 3, 4
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80204414
    .4byte fn_80204B20
