.section extab, "a"
.balign 4
.global etb_80008048
etb_80008048:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008048, 8

.global etb_80008050
etb_80008050:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008050, 8

.global etb_80008058
etb_80008058:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008058, 8

.global etb_80008060
etb_80008060:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008060, 8

.global etb_80008068
etb_80008068:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008068, 8

.section extabindex, "a"
.balign 4
.global eti_800151CC
eti_800151CC:
    .4byte fn_801C24B4
    .4byte 0x00000224
    .4byte etb_80008048
.size eti_800151CC, 12

.global eti_800151D8
eti_800151D8:
    .4byte fn_801C26D8
    .4byte 0x00000024
    .4byte etb_80008050
.size eti_800151D8, 12

.global eti_800151E4
eti_800151E4:
    .4byte fn_801C26FC
    .4byte 0x00000030
    .4byte etb_80008058
.size eti_800151E4, 12

.global eti_800151F0
eti_800151F0:
    .4byte fn_801C272C
    .4byte 0x0000007C
    .4byte etb_80008060
.size eti_800151F0, 12

.global eti_800151FC
eti_800151FC:
    .4byte fn_801C27A8
    .4byte 0x00000048
    .4byte etb_80008068
.size eti_800151FC, 12

.text
.balign 4
.global fn_801C24B4
.global fn_801C26D8
.global fn_801C26FC
.global fn_801C272C
.global fn_801C27A8

fn_801C24B4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C7FD0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C7FD0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C2504
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
L_801C2504:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C253C
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
L_801C253C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C2574
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
L_801C2574:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C25AC
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
L_801C25AC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C25E4
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
L_801C25E4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C261C
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
L_801C261C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C2654
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
L_801C2654:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C268C
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
L_801C268C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C26C4
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
L_801C26C4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C26D8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0xd
    stw 0, 0x14(1)
    bl fn_801C3B7C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C26FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0xe
    .4byte 0x4182000C # beq .L_801C271C
    li 4, 0xe
    bl fn_801C3B7C
L_801C271C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C272C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x11d(3)
    bl fn_801C0D70
    bl fn_801C11F0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801C2768
    mr 3, 31
    li 4, 0x6
    bl fn_801C3B7C
    .4byte 0x48000030 # b .L_801C2794
L_801C2768:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_801C2788
    mr 3, 31
    li 4, 0x7
    bl fn_801C3B7C
    .4byte 0x48000010 # b .L_801C2794
L_801C2788:
    mr 3, 31
    li 4, 0x9
    bl fn_801C3B7C
L_801C2794:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C27A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820024 # beq .L_801C27E0
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x40800018 # bge .L_801C27E0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801C27D8
    .4byte 0x4800000C # b .L_801C27E0
L_801C27D8:
    li 4, 0x2
    bl fn_801C3B7C
L_801C27E0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801C24B4
