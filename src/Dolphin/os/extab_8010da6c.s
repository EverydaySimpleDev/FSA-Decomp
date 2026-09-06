# Dispatch-cross-check singleton: 1 real FourCC actor vtable body
# (dtor fn_8010DA6C, ctor already landed) plus 3 helper functions,
# landed as ONE byte-contiguous 4-function, 624-byte Track-A bundle
# (0x8010DA6C-0x8010DCDC). Found+verified via spanwalk.py and
# resolvefiles.py. See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_80005C90
etb_80005C90:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005C90, 8

.global etb_80005C98
etb_80005C98:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005C98, 8

.global etb_80005CA0
etb_80005CA0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005CA0, 8

.global etb_80005CA8
etb_80005CA8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005CA8, 8

.section extabindex, "a"
.balign 4
.global eti_80012100
eti_80012100:
    .4byte fn_8010DA6C
    .4byte 0x00000080
    .4byte etb_80005C90
.size eti_80012100, 12

.global eti_8001210C
eti_8001210C:
    .4byte fn_8010DAEC
    .4byte 0x000000D4
    .4byte etb_80005C98
.size eti_8001210C, 12

.global eti_80012118
eti_80012118:
    .4byte fn_8010DBC0
    .4byte 0x0000008C
    .4byte etb_80005CA0
.size eti_80012118, 12

.global eti_80012124
eti_80012124:
    .4byte fn_8010DC4C
    .4byte 0x00000090
    .4byte etb_80005CA8
.size eti_80012124, 12

.text
.balign 4
.global fn_8010DA6C
.global fn_8010DAEC
.global fn_8010DBC0
.global fn_8010DC4C

fn_8010DA6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820048 # beq .L_8010DAD0
    lis 3, lbl_8049D0E8@ha
    addic. 0, 30, 0x230
    addi 0, 3, lbl_8049D0E8@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8010DAB4
    addic. 0, 30, 0x254
    .4byte 0x41820010 # beq .L_8010DAB4
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x254(30)
L_8010DAB4:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8010DAD0
    mr 3, 30
    bl dtor_80084580
L_8010DAD0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010DAEC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    bl fn_801F5778
    lwz 0, 0x4(29)
    addi 30, 29, 0xc
    lwz 3, 0x240(29)
    cmpwi 0, 0x8
    addi 31, 3, 0x386
    .4byte 0x40800050 # bge .L_8010DB70
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464348@ha
    addi 5, 3, lbl_80464348@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0229560 # lfs f1, lbl_8053C500@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 30
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 31
    bl fn_802F86CC
L_8010DB70:
    li 0, 0x0
    addi 5, 29, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x240(29)
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    addi 6, 6, 0x386
    bl fn_803075AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8010DBC0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801F5930
    lfs 1, 0x60(31)
    addi 3, 1, 0x8
    stfs 1, 0x8(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc(1)
    lfs 2, 0x68(31)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x14(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    addi 3, 31, 0x230
    bl fn_801D1C18
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8010DC4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    .4byte 0xC0429564 # lfs f2, lbl_8053C504@sda21(r0)
    li 0, 0x0
    .4byte 0xC0229568 # lfs f1, lbl_8053C508@sda21(r0)
    addi 3, 31, 0x230
    stfs 2, 0x60(31)
    .4byte 0x388D8330 # li r4, lbl_80539EF0@sda21
    .4byte 0xC002956C # lfs f0, lbl_8053C50C@sda21(r0)
    li 5, 0x1
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x108(31)
    bl fn_801D2608
    addi 3, 31, 0x230
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC022956C # lfs f1, lbl_8053C50C@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

