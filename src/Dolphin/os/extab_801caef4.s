.section extab, "a"
.balign 4
.global etb_80008210
etb_80008210:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008210, 8

.global etb_80008218
etb_80008218:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008218, 8

.global etb_80008220
etb_80008220:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008220, 8

.global etb_80008228
etb_80008228:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80008228, 8

.global etb_80008230
etb_80008230:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008230, 8

.global etb_80008238
etb_80008238:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008238, 8

.section extabindex, "a"
.balign 4
.global eti_8001543C
eti_8001543C:
    .4byte fn_801CAEF4
    .4byte 0x00000158
    .4byte etb_80008210
.size eti_8001543C, 12

.global eti_80015448
eti_80015448:
    .4byte fn_801CB04C
    .4byte 0x00000224
    .4byte etb_80008218
.size eti_80015448, 12

.global eti_80015454
eti_80015454:
    .4byte fn_801CB270
    .4byte 0x000001C4
    .4byte etb_80008220
.size eti_80015454, 12

.global eti_80015460
eti_80015460:
    .4byte fn_801CB434
    .4byte 0x00000070
    .4byte etb_80008228
.size eti_80015460, 12

.global eti_8001546C
eti_8001546C:
    .4byte fn_801CB4A4
    .4byte 0x00000094
    .4byte etb_80008230
.size eti_8001546C, 12

.global eti_80015478
eti_80015478:
    .4byte fn_801CB538
    .4byte 0x00000094
    .4byte etb_80008238
.size eti_80015478, 12

.text
.balign 4
.global fn_801CAEF4
.global fn_801CB04C
.global fn_801CB270
.global fn_801CB434
.global fn_801CB4A4
.global fn_801CB538

fn_801CAEF4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    li 31, 0x0
    stw 30, 0x48(1)
    mr 30, 5
    stw 29, 0x44(1)
    mr 29, 4
    mr 4, 30
    stw 28, 0x40(1)
    mr 28, 3
    mr 5, 29
    bl fn_801F15BC
    clrlwi. 0, 3, 24
    .4byte 0x408200F4 # bne .L_801CB024
    lfs 2, 0x4(29)
    mr 3, 28
    .4byte 0xC022BF98 # lfs f1, lbl_8053EF38@sda21(r0)
    mr 4, 30
    lfs 0, 0x0(29)
    addi 5, 1, 0x2c
    fsubs 2, 2, 1
    lfs 3, 0x8(29)
    fsubs 0, 0, 1
    stfs 3, 0x34(1)
    stfs 0, 0x2c(1)
    stfs 2, 0x30(1)
    bl fn_801F15BC
    clrlwi. 0, 3, 24
    .4byte 0x408200B8 # bne .L_801CB024
    lfs 2, 0x4(29)
    mr 3, 28
    .4byte 0xC022BF98 # lfs f1, lbl_8053EF38@sda21(r0)
    mr 4, 30
    lfs 0, 0x0(29)
    addi 5, 1, 0x20
    fsubs 2, 2, 1
    lfs 3, 0x8(29)
    fadds 0, 1, 0
    stfs 3, 0x28(1)
    stfs 0, 0x20(1)
    stfs 2, 0x24(1)
    bl fn_801F15BC
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_801CB024
    .4byte 0xC042BF98 # lfs f2, lbl_8053EF38@sda21(r0)
    mr 3, 28
    lfs 1, 0x4(29)
    mr 4, 30
    lfs 0, 0x0(29)
    addi 5, 1, 0x14
    fadds 1, 2, 1
    lfs 3, 0x8(29)
    fsubs 0, 0, 2
    stfs 3, 0x1c(1)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    bl fn_801F15BC
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_801CB024
    .4byte 0xC042BF98 # lfs f2, lbl_8053EF38@sda21(r0)
    mr 3, 28
    lfs 1, 0x4(29)
    mr 4, 30
    lfs 0, 0x0(29)
    addi 5, 1, 0x8
    fadds 1, 2, 1
    lfs 3, 0x8(29)
    fadds 0, 2, 0
    stfs 3, 0x10(1)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_801F15BC
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801CB028
L_801CB024:
    li 31, 0x1
L_801CB028:
    lwz 0, 0x54(1)
    mr 3, 31
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801CB04C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C84D0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C84D0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB09C
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
L_801CB09C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB0D4
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
L_801CB0D4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB10C
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
L_801CB10C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB144
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
L_801CB144:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB17C
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
L_801CB17C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB1B4
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
L_801CB1B4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB1EC
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
L_801CB1EC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB224
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
L_801CB224:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801CB25C
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
L_801CB25C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CB270:
    stwu 1, -0x50(1)
    mflr 0
    lis 6, 0x5449
    stw 0, 0x54(1)
    mr 0, 3
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 4
    addi 4, 6, 0x4d47
    stw 29, 0x44(1)
    mr 29, 5
    mr 5, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xa4(7)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 31, 3
    li 3, 0x20
    lbz 4, 0x10(31)
    lwz 5, 0x1c(31)
    neg 0, 4
    or 0, 0, 4
    cmplwi 5, 0x0
    srwi 10, 0, 31
    .4byte 0x41820008 # beq .L_801CB2E0
    mr 3, 5
L_801CB2E0:
    lbz 0, 0x8(31)
    add 4, 31, 3
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_801CB338
    li 0, 0x0
    mr 3, 30
    stw 0, 0x8(1)
    lhz 5, 0x2(31)
    lhz 6, 0x4(31)
    lbz 7, 0x0(31)
    lbz 8, 0x6(31)
    lbz 9, 0x7(31)
    bl fn_8005D92C
    cmplwi 29, 0x0
    .4byte 0x4182003C # beq .L_801CB354
    lwz 0, 0xc(31)
    mr 3, 29
    lhz 6, 0xa(31)
    lbz 5, 0x9(31)
    add 4, 31, 0
    bl fn_8005DCC8
    .4byte 0x48000020 # b .L_801CB354
L_801CB338:
    lhz 5, 0x2(31)
    mr 3, 30
    lhz 6, 0x4(31)
    lbz 7, 0x0(31)
    lbz 8, 0x6(31)
    lbz 9, 0x7(31)
    bl fn_8005D6E0
L_801CB354:
    lbz 6, 0x16(31)
    lis 5, 0x4330
    lbz 4, 0x17(31)
    mr 3, 30
    extsb 7, 6
    lha 0, 0x1a(31)
    xoris 7, 7, 0x8000
    extsb 4, 4
    stw 7, 0x14(1)
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    .4byte 0xC882BFC8 # lfd f4, lbl_8053EF68@sda21(r0)
    stw 5, 0x10(1)
    .4byte 0xC0A2BFB8 # lfs f5, lbl_8053EF58@sda21(r0)
    lfd 0, 0x10(1)
    stw 4, 0x1c(1)
    fsubs 1, 0, 4
    .4byte 0xC062BFBC # lfs f3, lbl_8053EF5C@sda21(r0)
    stw 5, 0x18(1)
    lbz 6, 0x12(31)
    lfd 0, 0x18(1)
    fmuls 1, 5, 1
    stw 5, 0x20(1)
    fsubs 2, 0, 4
    lbz 7, 0x11(31)
    stw 0, 0x24(1)
    lbz 4, 0x14(31)
    lfd 0, 0x20(1)
    fmuls 2, 5, 2
    lbz 5, 0x15(31)
    fsubs 0, 0, 4
    lbz 8, 0x13(31)
    fmuls 3, 3, 0
    bl fn_8005D974
    lhz 0, 0x2(31)
    lis 3, 0x4330
    lhz 4, 0x4(31)
    stw 0, 0x34(1)
    .4byte 0xC842BFD0 # lfd f2, lbl_8053EF70@sda21(r0)
    stw 3, 0x30(1)
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    lfd 0, 0x30(1)
    stw 4, 0x2c(1)
    fsubs 0, 0, 2
    stw 3, 0x28(1)
    fdivs 0, 1, 0
    lfd 1, 0x28(1)
    fsubs 1, 1, 2
    fmuls 1, 1, 0
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801CB434:
    stwu 1, -0x20(1)
    mflr 0
    clrlwi 5, 5, 24
    stw 0, 0x24(1)
    neg 0, 5
    or 0, 0, 5
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    srwi 3, 0, 31
    addi 31, 3, 0x4
    bl SpatialRegistry_GetBase
    oris 7, 31, 0x26
    lis 4, 0x5255
    mr 5, 29
    mr 6, 30
    addi 4, 4, 0x5059
    ori 7, 7, 0x1e00
    bl fn_801F8544
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801CB4A4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    li 8, 0x0
    stw 0, 0x24(1)
    li 9, 0x0
    li 10, 0x1
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 6
    addi 7, 30, 0x1
    stw 29, 0x14(1)
    mr 29, 5
    mr 6, 29
    li 5, 0x473
    stw 28, 0x10(1)
    mr 28, 4
    bl fn_8013CC50
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    mr 3, 31
    mr 4, 28
    mr 6, 29
    addi 7, 30, 0x1
    li 5, 0x474
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801CB538:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    li 8, 0x0
    stw 0, 0x24(1)
    li 9, 0x0
    li 10, 0x1
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 6
    addi 7, 30, 0x1
    stw 29, 0x14(1)
    mr 29, 5
    mr 6, 29
    li 5, 0x117
    stw 28, 0x10(1)
    mr 28, 4
    bl fn_8013CC50
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    mr 3, 31
    mr 4, 28
    mr 6, 29
    addi 7, 30, 0x1
    li 5, 0x118
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801CB04C
