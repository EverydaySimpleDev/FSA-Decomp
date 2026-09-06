# Fresh project-wide gap hunt continuation: 9 functions, 5,152 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000702C
etb_8000702C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000702C, 8

.global etb_80007034
etb_80007034:
    .4byte 0x390A0000
    .4byte 0x00000000
.size etb_80007034, 8

.global etb_8000703C
etb_8000703C:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_8000703C, 8

.global etb_80007044
etb_80007044:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007044, 8

.global etb_8000704C
etb_8000704C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000704C, 8

.global etb_80007054
etb_80007054:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80007054, 8

.global etb_8000705C
etb_8000705C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000705C, 8

.section extabindex, "a"
.balign 4
.global eti_80013BD0
eti_80013BD0:
    .4byte fn_8015F230
    .4byte 0x00000224
    .4byte etb_8000702C
.size eti_80013BD0, 12

.global eti_80013BDC
eti_80013BDC:
    .4byte fn_8015F454
    .4byte 0x000004A8
    .4byte etb_80007034
.size eti_80013BDC, 12

.global eti_80013BE8
eti_80013BE8:
    .4byte fn_8015F9C0
    .4byte 0x0000069C
    .4byte etb_8000703C
.size eti_80013BE8, 12

.global eti_80013BF4
eti_80013BF4:
    .4byte fn_8016005C
    .4byte 0x00000184
    .4byte etb_80007044
.size eti_80013BF4, 12

.global eti_80013C00
eti_80013C00:
    .4byte fn_80160278
    .4byte 0x00000070
    .4byte etb_8000704C
.size eti_80013C00, 12

.global eti_80013C0C
eti_80013C0C:
    .4byte fn_801602E8
    .4byte 0x00000144
    .4byte etb_80007054
.size eti_80013C0C, 12

.global eti_80013C18
eti_80013C18:
    .4byte fn_8016042C
    .4byte 0x00000224
    .4byte etb_8000705C
.size eti_80013C18, 12

.text
.balign 4
.global fn_8015F230
.global fn_8015F454
.global fn_8015F8FC
.global fn_8015F9C0
.global fn_8016005C
.global fn_801601E0
.global fn_80160278
.global fn_801602E8
.global fn_8016042C

fn_8015F230:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BFFA0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BFFA0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F280
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
L_8015F280:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F2B8
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
L_8015F2B8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F2F0
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
L_8015F2F0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F328
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
L_8015F328:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F360
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
L_8015F360:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F398
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
L_8015F398:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F3D0
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
L_8015F3D0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F408
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
L_8015F408:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015F440
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
L_8015F440:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8015F454:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stfd 28, 0x60(1)
    psq_st 28, 0x68(1), 0, 0
    stmw 25, 0x44(1)
    mr 25, 3
    lfs 31, 0x0(5)
    lfs 30, 0x4(5)
    mr 31, 4
    lfs 29, 0x8(5)
    mr 26, 6
    lfs 28, 0xc(5)
    mr 27, 7
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 28, 8
    mr 29, 9
    mr 30, 10
    bl fn_8013B490
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    mr 3, 25
    li 4, 0x0
    bl fn_80092984
    cmplwi 28, 0x0
    .4byte 0x4182017C # beq .L_8015F64C
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xe
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xe
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x1
    li 4, 0x1
    li 5, 0x5
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x2
    bl fn_8005B93C
    mr 3, 28
    li 4, 0x1
    bl fn_80092984
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0xf
    li 6, 0xf
    li 7, 0x0
    bl fn_8005EA6C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x1
    li 4, 0x7
    li 5, 0x0
    li 6, 0x4
    li 7, 0x7
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    lwz 3, 0x20(28)
    lbz 0, 0x0(3)
    cmpwi 0, 0xe
    .4byte 0x4082002C # bne .L_8015F644
    li 3, 0x1
    li 4, 0x0
    li 5, 0x1
    bl fn_8005EDE8
    li 3, 0x1
    li 4, 0x3
    li 5, 0x3
    li 6, 0x3
    li 7, 0x0
    bl fn_8005EE30
L_8015F644:
    li 3, 0x2
    bl fn_8005F11C
L_8015F64C:
    lwz 0, 0x0(26)
    addi 4, 1, 0x8
    li 3, 0x1
    stw 0, 0x8(1)
    bl fn_8005EBC4
    cmplwi 27, 0x0
    .4byte 0x41820020 # beq .L_8015F684
    lwz 5, 0x0(27)
    addi 4, 1, 0xc
    lwz 0, 0x4(27)
    li 3, 0x2
    stw 5, 0xc(1)
    stw 0, 0x10(1)
    bl fn_8005EC40
L_8015F684:
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_8015F6B0
    li 3, 0x1
    li 4, 0x4
    li 5, 0x1
    li 6, 0xf
    bl fn_8005F48C
L_8015F6B0:
    lwz 5, 0x20(25)
    lis 6, 0x4330
    stw 6, 0x18(1)
    li 3, 0x80
    lhz 0, 0x2(5)
    li 4, 0x0
    lhz 8, 0x4(5)
    li 5, 0x4
    xoris 7, 0, 0x8000
    stw 6, 0x20(1)
    xoris 0, 8, 0x8000
    .4byte 0xC862A690 # lfd f3, lbl_8053D630@sda21(r0)
    stw 7, 0x1c(1)
    stw 0, 0x24(1)
    lfd 1, 0x18(1)
    lfd 0, 0x20(1)
    fsubs 1, 1, 3
    stw 7, 0x2c(1)
    fsubs 2, 0, 3
    stw 6, 0x28(1)
    fdivs 31, 31, 1
    lfd 1, 0x28(1)
    stw 0, 0x34(1)
    stw 6, 0x30(1)
    lfd 0, 0x30(1)
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    fdivs 30, 30, 2
    fdivs 29, 29, 1
    fdivs 28, 28, 0
    bl fn_8005C24C
    cmplwi 28, 0x0
    .4byte 0x41820130 # beq .L_8015F860
    clrlwi. 0, 29, 24
    .4byte 0x41820098 # beq .L_8015F7D0
    lfs 4, 0x0(31)
    lis 3, 0xcc01
    lfs 5, 0x4(31)
    stfs 4, -0x8000(3)
    .4byte 0xC062A688 # lfs f3, lbl_8053D628@sda21(r0)
    stfs 5, -0x8000(3)
    .4byte 0xC042A698 # lfs f2, lbl_8053D638@sda21(r0)
    stfs 3, -0x8000(3)
    lfs 1, 0x8(31)
    stfs 31, -0x8000(3)
    .4byte 0xC002A69C # lfs f0, lbl_8053D63C@sda21(r0)
    stfs 30, -0x8000(3)
    lfs 6, 0xc(31)
    stfs 2, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 0, -0x8000(3)
    .4byte 0x480000FC # b .L_8015F8C8
L_8015F7D0:
    lfs 3, 0x0(31)
    lis 3, 0xcc01
    lfs 4, 0x4(31)
    stfs 3, -0x8000(3)
    .4byte 0xC042A688 # lfs f2, lbl_8053D628@sda21(r0)
    stfs 4, -0x8000(3)
    lfs 1, 0x8(31)
    stfs 2, -0x8000(3)
    .4byte 0xC002A69C # lfs f0, lbl_8053D63C@sda21(r0)
    stfs 31, -0x8000(3)
    lfs 5, 0xc(31)
    stfs 30, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 0, -0x8000(3)
    .4byte 0x4800006C # b .L_8015F8C8
L_8015F860:
    lfs 2, 0x0(31)
    lis 3, 0xcc01
    lfs 3, 0x4(31)
    stfs 2, -0x8000(3)
    .4byte 0xC022A688 # lfs f1, lbl_8053D628@sda21(r0)
    stfs 3, -0x8000(3)
    lfs 0, 0x8(31)
    stfs 1, -0x8000(3)
    lfs 4, 0xc(31)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 28, -0x8000(3)
L_8015F8C8:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    psq_l 28, 0x68(1), 0, 0
    lfd 28, 0x60(1)
    lmw 25, 0x44(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8015F8FC:
    cmpwi 4, 0x8
    li 9, 0x0
    .4byte 0x408000B4 # bge .L_8015F9B8
    li 0, 0x20
    mr 4, 3
    li 7, 0x0
    mtctr 0
L_8015F918:
    lwz 0, 0x204(4)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_8015F9AC
    slwi 8, 7, 2
    lfs 2, 0x0(5)
    mulli 0, 7, 0xc
    lfs 1, 0x4(5)
    add 7, 3, 8
    lfs 0, 0x8(5)
    stw 6, 0x4(7)
    cmpwi 6, 0x1
    add 4, 3, 0
    li 9, 0x1
    stfs 2, 0x84(4)
    stfs 1, 0x88(4)
    stfs 0, 0x8c(4)
    .4byte 0x4182002C # beq .L_8015F984
    .4byte 0x40800010 # bge .L_8015F96C
    cmpwi 6, 0x0
    .4byte 0x40800014 # bge .L_8015F978
    .4byte 0x48000034 # b .L_8015F99C
L_8015F96C:
    cmpwi 6, 0x4
    .4byte 0x41820020 # beq .L_8015F990
    .4byte 0x48000028 # b .L_8015F99C
L_8015F978:
    li 0, 0x1e
    stw 0, 0x204(7)
    .4byte 0x48000038 # b .L_8015F9B8
L_8015F984:
    li 0, 0x1e
    stw 0, 0x204(7)
    .4byte 0x4800002C # b .L_8015F9B8
L_8015F990:
    li 0, 0x73
    stw 0, 0x204(7)
    .4byte 0x48000020 # b .L_8015F9B8
L_8015F99C:
    add 3, 3, 8
    li 0, 0x1
    stw 0, 0x204(3)
    .4byte 0x48000010 # b .L_8015F9B8
L_8015F9AC:
    addi 4, 4, 0x4
    addi 7, 7, 0x1
    .4byte 0x4200FF64 # bdnz .L_8015F918
L_8015F9B8:
    clrlwi 3, 9, 24
    blr

fn_8015F9C0:
    stwu 1, -0x180(1)
    mflr 0
    stw 0, 0x184(1)
    stfd 31, 0x170(1)
    psq_st 31, 0x178(1), 0, 0
    stfd 30, 0x160(1)
    psq_st 30, 0x168(1), 0, 0
    stfd 29, 0x150(1)
    psq_st 29, 0x158(1), 0, 0
    stfd 28, 0x140(1)
    psq_st 28, 0x148(1), 0, 0
    stw 31, 0x13c(1)
    stw 30, 0x138(1)
    stw 29, 0x134(1)
    stw 28, 0x130(1)
    li 0, 0x4
    mr 28, 3
    li 4, 0x0
    li 5, 0x0
    mtctr 0
L_8015FA10:
    lwz 0, 0x204(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA20
    li 4, 0x1
L_8015FA20:
    lwz 0, 0x208(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA30
    li 4, 0x1
L_8015FA30:
    lwz 0, 0x20c(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA40
    li 4, 0x1
L_8015FA40:
    lwz 0, 0x210(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA50
    li 4, 0x1
L_8015FA50:
    lwz 0, 0x214(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA60
    li 4, 0x1
L_8015FA60:
    lwz 0, 0x218(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA70
    li 4, 0x1
L_8015FA70:
    lwz 0, 0x21c(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA80
    li 4, 0x1
L_8015FA80:
    lwz 0, 0x220(3)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8015FA90
    li 4, 0x1
L_8015FA90:
    addi 3, 3, 0x20
    addi 5, 5, 0x7
    .4byte 0x4200FF78 # bdnz .L_8015FA10
    clrlwi. 0, 4, 24
    .4byte 0x41820484 # beq .L_8015FF24
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x100(1)
    mr 31, 28
    lwz 4, 0x4(3)
    mr 30, 28
    stw 0, 0x108(1)
    li 29, 0x0
    lhz 3, 0x4(4)
    lhz 0, 0x6(4)
    xoris 3, 3, 0x8000
    .4byte 0xC842A690 # lfd f2, lbl_8053D630@sda21(r0)
    xoris 0, 0, 0x8000
    stw 3, 0x104(1)
    stw 0, 0x10c(1)
    lfd 1, 0x100(1)
    lfd 0, 0x108(1)
    fsubs 31, 1, 2
    fsubs 30, 0, 2
L_8015FAF0:
    lwz 3, 0x204(31)
    cmpwi 3, 0x0
    .4byte 0x40810418 # ble .L_8015FF10
    lwz 0, 0x4(31)
    cmpwi 0, 0x1
    .4byte 0x4182013C # beq .L_8015FC40
    .4byte 0x40800010 # bge .L_8015FB18
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8015FB24
    .4byte 0x480003FC # b .L_8015FF10
L_8015FB18:
    cmpwi 0, 0x5
    .4byte 0x41820240 # beq .L_8015FD5C
    .4byte 0x480003F0 # b .L_8015FF10
L_8015FB24:
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x10c(1)
    .4byte 0xC842A690 # lfd f2, lbl_8053D630@sda21(r0)
    stw 0, 0x108(1)
    .4byte 0xC062A6A0 # lfs f3, lbl_8053D640@sda21(r0)
    lfd 0, 0x108(1)
    .4byte 0xC022A6A4 # lfs f1, lbl_8053D644@sda21(r0)
    fsubs 2, 0, 2
    .4byte 0xC002A69C # lfs f0, lbl_8053D63C@sda21(r0)
    fmuls 29, 3, 2
    fmuls 29, 29, 29
    fmuls 28, 1, 29
    fcmpo cr0, 28, 0
    .4byte 0x40810008 # ble .L_8015FB64
    fsubs 28, 1, 28
L_8015FB64:
    .4byte 0xC002A6A8 # lfs f0, lbl_8053D648@sda21(r0)
    addi 4, 30, 0x84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0xf0
    fmuls 28, 28, 0
    li 5, 0x0
    lwz 3, 0x24(3)
    li 6, 0x0
    bl fn_8030C5F0
    fctiwz 3, 28
    .4byte 0xC022A69C # lfs f1, lbl_8053D63C@sda21(r0)
    li 7, 0xff
    .4byte 0xC002A688 # lfs f0, lbl_8053D628@sda21(r0)
    fsubs 8, 1, 29
    lfs 4, 0xf0(1)
    .4byte 0xC042A6AC # lfs f2, lbl_8053D64C@sda21(r0)
    addi 4, 1, 0xbc
    stfd 3, 0x100(1)
    fmuls 1, 8, 31
    fsubs 3, 4, 2
    lfs 6, 0xf4(1)
    .4byte 0xC0A2A6B0 # lfs f5, lbl_8053D650@sda21(r0)
    fadds 2, 2, 4
    lwz 0, 0x104(1)
    fsubs 4, 6, 5
    fmuls 7, 29, 3
    stb 7, 0x2c(1)
    fmadds 3, 29, 2, 1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fmuls 4, 29, 4
    fadds 2, 5, 6
    fmuls 1, 8, 30
    stb 7, 0x2d(1)
    addi 5, 1, 0xac
    addi 6, 1, 0x30
    stb 7, 0x2e(1)
    fmadds 1, 29, 2, 1
    stb 0, 0x2f(1)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    lwz 0, 0x2c(1)
    stfs 7, 0xac(1)
    li 10, 0x0
    stw 0, 0x30(1)
    stfs 4, 0xb0(1)
    stfs 3, 0xb4(1)
    stfs 1, 0xb8(1)
    stfs 0, 0xbc(1)
    stfs 0, 0xc0(1)
    stfs 31, 0xc4(1)
    stfs 30, 0xc8(1)
    lwz 3, 0x34(3)
    bl fn_8015F454
    .4byte 0x480002D4 # b .L_8015FF10
L_8015FC40:
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x10c(1)
    .4byte 0xC842A690 # lfd f2, lbl_8053D630@sda21(r0)
    stw 0, 0x108(1)
    .4byte 0xC062A6A0 # lfs f3, lbl_8053D640@sda21(r0)
    lfd 0, 0x108(1)
    .4byte 0xC022A69C # lfs f1, lbl_8053D63C@sda21(r0)
    fsubs 2, 0, 2
    .4byte 0xC002A6A4 # lfs f0, lbl_8053D644@sda21(r0)
    fnmsubs 29, 3, 2, 1
    fmuls 29, 29, 29
    fmuls 28, 0, 29
    fcmpo cr0, 28, 1
    .4byte 0x40810008 # ble .L_8015FC80
    fsubs 28, 0, 28
L_8015FC80:
    .4byte 0xC002A6A8 # lfs f0, lbl_8053D648@sda21(r0)
    addi 4, 30, 0x84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0xe4
    fmuls 28, 28, 0
    li 5, 0x0
    lwz 3, 0x24(3)
    li 6, 0x0
    bl fn_8030C5F0
    fctiwz 3, 28
    .4byte 0xC022A69C # lfs f1, lbl_8053D63C@sda21(r0)
    li 7, 0xff
    .4byte 0xC002A688 # lfs f0, lbl_8053D628@sda21(r0)
    fsubs 8, 1, 29
    lfs 4, 0xe4(1)
    .4byte 0xC042A6AC # lfs f2, lbl_8053D64C@sda21(r0)
    addi 4, 1, 0x9c
    stfd 3, 0x100(1)
    fmuls 1, 8, 31
    fsubs 3, 4, 2
    lfs 6, 0xe8(1)
    .4byte 0xC0A2A6B0 # lfs f5, lbl_8053D650@sda21(r0)
    fadds 2, 2, 4
    lwz 0, 0x104(1)
    fsubs 4, 6, 5
    fmuls 7, 29, 3
    stb 7, 0x24(1)
    fmadds 3, 29, 2, 1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fmuls 4, 29, 4
    fadds 2, 5, 6
    fmuls 1, 8, 30
    stb 7, 0x25(1)
    addi 5, 1, 0x8c
    addi 6, 1, 0x28
    stb 7, 0x26(1)
    fmadds 1, 29, 2, 1
    stb 0, 0x27(1)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    lwz 0, 0x24(1)
    stfs 7, 0x8c(1)
    li 10, 0x0
    stw 0, 0x28(1)
    stfs 4, 0x90(1)
    stfs 3, 0x94(1)
    stfs 1, 0x98(1)
    stfs 0, 0x9c(1)
    stfs 0, 0xa0(1)
    stfs 31, 0xa4(1)
    stfs 30, 0xa8(1)
    lwz 3, 0x34(3)
    bl fn_8015F454
    .4byte 0x480001B8 # b .L_8015FF10
L_8015FD5C:
    .4byte 0xC042A6B4 # lfs f2, lbl_8053D654@sda21(r0)
    addi 4, 1, 0x80
    lfs 1, 0x8c(30)
    addi 7, 1, 0xd8
    lfs 3, 0x88(30)
    li 5, 0x1
    lfs 0, 0x84(30)
    fadds 1, 2, 1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 6, 0x0
    stfs 0, 0x80(1)
    stfs 3, 0x84(1)
    stfs 1, 0x88(1)
    lwz 3, 0x24(3)
    bl fn_8030C5F0
    .4byte 0xC062A6B4 # lfs f3, lbl_8053D654@sda21(r0)
    addi 4, 1, 0x74
    lfs 0, 0x8c(30)
    addi 7, 1, 0xcc
    .4byte 0xC042A6AC # lfs f2, lbl_8053D64C@sda21(r0)
    li 5, 0x1
    lfs 1, 0x88(30)
    fadds 3, 3, 0
    lfs 0, 0x84(30)
    li 6, 0x0
    fadds 1, 2, 1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fadds 0, 2, 0
    stfs 3, 0x7c(1)
    stfs 0, 0x74(1)
    stfs 1, 0x78(1)
    lwz 3, 0x24(3)
    bl fn_8030C5F0
    lfs 1, 0xd8(1)
    li 0, -0x1
    .4byte 0xC0A2A6C0 # lfs f5, lbl_8053D660@sda21(r0)
    addi 4, 1, 0x64
    lfs 0, 0xdc(1)
    addi 5, 1, 0x54
    fsubs 3, 1, 5
    .4byte 0xC082A6C4 # lfs f4, lbl_8053D664@sda21(r0)
    fsubs 2, 0, 5
    psq_l 8, 0xcc(1), 0, 0
    fadds 1, 5, 1
    psq_l 7, 0xd8(1), 0, 0
    .4byte 0xC0C2A6B8 # lfs f6, lbl_8053D658@sda21(r0)
    fadds 0, 5, 0
    .4byte 0xC0A2A6BC # lfs f5, lbl_8053D65C@sda21(r0)
    ps_sub 9, 8, 7
    fsubs 3, 3, 4
    psq_l 8, 0xd4(1), 1, 0
    psq_l 7, 0xe0(1), 1, 0
    fsubs 2, 2, 4
    psq_st 9, 0xcc(1), 0, 0
    ps_sub 7, 8, 7
    fadds 1, 4, 1
    stw 0, 0x20(1)
    fadds 0, 4, 0
    psq_st 7, 0xd4(1), 1, 0
    addi 6, 1, 0x20
    li 7, 0x0
    stfs 6, 0x54(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    stfs 6, 0x58(1)
    stfs 5, 0x5c(1)
    stfs 5, 0x60(1)
    stfs 3, 0x64(1)
    stfs 2, 0x68(1)
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    stw 0, 0x1c(1)
    lwz 3, 0x294(28)
    bl fn_8015F454
    lfs 8, 0xd8(1)
    li 0, -0x1
    lfs 3, 0xcc(1)
    addi 4, 1, 0x44
    .4byte 0xC002A6C0 # lfs f0, lbl_8053D660@sda21(r0)
    addi 5, 1, 0x34
    lfs 7, 0xdc(1)
    fsubs 2, 8, 3
    lfs 1, 0xd0(1)
    fadds 5, 8, 3
    fsubs 3, 8, 0
    stw 0, 0x18(1)
    fsubs 6, 7, 1
    fadds 4, 7, 1
    stfs 2, 0x34(1)
    fsubs 2, 7, 0
    fadds 1, 0, 8
    stfs 6, 0x38(1)
    fadds 0, 0, 7
    stfs 5, 0x3c(1)
    addi 6, 1, 0x18
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 4, 0x40(1)
    li 7, 0x0
    li 9, 0x1
    li 10, 0x0
    stfs 3, 0x44(1)
    stfs 2, 0x48(1)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
    stw 0, 0x14(1)
    lwz 3, 0x34(3)
    lwz 8, 0x294(28)
    bl fn_8015F454
L_8015FF10:
    addi 29, 29, 0x1
    addi 30, 30, 0xc
    cmpwi 29, 0x20
    addi 31, 31, 0x4
    .4byte 0x4180FBD0 # blt .L_8015FAF0
L_8015FF24:
    lfs 1, 0x288(28)
    .4byte 0xC002A688 # lfs f0, lbl_8053D628@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408100EC # ble .L_8016001C
    fmuls 28, 1, 1
    li 0, 0x0
    .4byte 0xC002A6C8 # lfs f0, lbl_8053D668@sda21(r0)
    stb 0, 0x10(1)
    fmuls 0, 0, 28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 0, 0x11(1)
    fctiwz 0, 0
    stb 0, 0x12(1)
    stfd 0, 0x108(1)
    lwz 0, 0x10c(1)
    stb 0, 0x13(1)
    bl fn_8013B460
    lwz 4, 0x10(1)
    lis 0, 0x4330
    .4byte 0xC002A6CC # lfs f0, lbl_8053D66C@sda21(r0)
    addi 3, 1, 0x8
    stw 4, 0x8(1)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    fmuls 29, 0, 28
    .4byte 0xC022A688 # lfs f1, lbl_8053D628@sda21(r0)
    lwz 4, 0x4(4)
    stw 0, 0x100(1)
    fmr 2, 1
    lhz 0, 0x4(4)
    fmr 4, 29
    .4byte 0xC862A690 # lfd f3, lbl_8053D630@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x104(1)
    lfd 0, 0x100(1)
    fsubs 3, 0, 3
    bl fn_80093BD0
    lwz 0, 0x10(1)
    lis 4, 0x4330
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    addi 3, 1, 0xc
    stw 0, 0xc(1)
    .4byte 0xC882A690 # lfd f4, lbl_8053D630@sda21(r0)
    lwz 5, 0x4(5)
    stw 4, 0x110(1)
    lhz 6, 0x6(5)
    lhz 0, 0x4(5)
    xoris 5, 6, 0x8000
    stw 4, 0x118(1)
    xoris 0, 0, 0x8000
    .4byte 0xC022A688 # lfs f1, lbl_8053D628@sda21(r0)
    stw 5, 0x114(1)
    lfd 0, 0x110(1)
    stw 0, 0x11c(1)
    fsubs 2, 0, 4
    lfd 0, 0x118(1)
    stw 5, 0x124(1)
    fsubs 2, 2, 29
    stw 4, 0x120(1)
    fsubs 3, 0, 4
    lfd 0, 0x120(1)
    fsubs 4, 0, 4
    bl fn_80093BD0
L_8016001C:
    psq_l 31, 0x178(1), 0, 0
    lfd 31, 0x170(1)
    psq_l 30, 0x168(1), 0, 0
    lfd 30, 0x160(1)
    psq_l 29, 0x158(1), 0, 0
    lfd 29, 0x150(1)
    psq_l 28, 0x148(1), 0, 0
    lfd 28, 0x140(1)
    lwz 31, 0x13c(1)
    lwz 30, 0x138(1)
    lwz 29, 0x134(1)
    lwz 0, 0x184(1)
    lwz 28, 0x130(1)
    mtlr 0
    addi 1, 1, 0x180
    blr

fn_8016005C:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 3
    li 6, 0x0
    stw 0, 0x14(1)
    li 0, 0x4
    mtctr 0
L_80160078:
    lwz 4, 0x204(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_8016008C
    subi 0, 4, 0x1
    stw 0, 0x204(5)
L_8016008C:
    lwz 4, 0x208(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_801600A0
    subi 0, 4, 0x1
    stw 0, 0x208(5)
L_801600A0:
    lwz 4, 0x20c(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_801600B4
    subi 0, 4, 0x1
    stw 0, 0x20c(5)
L_801600B4:
    lwz 4, 0x210(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_801600C8
    subi 0, 4, 0x1
    stw 0, 0x210(5)
L_801600C8:
    lwz 4, 0x214(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_801600DC
    subi 0, 4, 0x1
    stw 0, 0x214(5)
L_801600DC:
    lwz 4, 0x218(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_801600F0
    subi 0, 4, 0x1
    stw 0, 0x218(5)
L_801600F0:
    lwz 4, 0x21c(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_80160104
    subi 0, 4, 0x1
    stw 0, 0x21c(5)
L_80160104:
    lwz 4, 0x220(5)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_80160118
    subi 0, 4, 0x1
    stw 0, 0x220(5)
L_80160118:
    addi 5, 5, 0x20
    addi 6, 6, 0x7
    .4byte 0x4200FF58 # bdnz .L_80160078
    lbz 0, 0x284(3)
    lfs 2, 0x288(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8016015C
    lfs 1, 0x28c(3)
    .4byte 0xC002A69C # lfs f0, lbl_8053D63C@sda21(r0)
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80160150
    .4byte 0x48000008 # b .L_80160154
L_80160150:
    fmr 0, 1
L_80160154:
    stfs 0, 0x288(3)
    .4byte 0x48000028 # b .L_80160180
L_8016015C:
    lfs 1, 0x28c(3)
    .4byte 0xC002A688 # lfs f0, lbl_8053D628@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80160178
    .4byte 0x48000008 # b .L_8016017C
L_80160178:
    fmr 1, 0
L_8016017C:
    stfs 1, 0x288(3)
L_80160180:
    li 0, 0x0
    .4byte 0xC002A688 # lfs f0, lbl_8053D628@sda21(r0)
    stb 0, 0x284(3)
    lfs 1, 0x288(3)
    fcmpo cr0, 1, 0
    .4byte 0x4081001C # ble .L_801601B0
    fcmpu cr0, 0, 2
    .4byte 0x40820014 # bne .L_801601B0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80457E04
    .4byte 0x48000024 # b .L_801601D0
L_801601B0:
    .4byte 0xC002A688 # lfs f0, lbl_8053D628@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820018 # bne .L_801601D0
    fcmpo cr0, 2, 0
    .4byte 0x40810010 # ble .L_801601D0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80457E04
L_801601D0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801601E0:
    li 0, 0x0
    .4byte 0xC002A688 # lfs f0, lbl_8053D628@sda21(r0)
    stw 0, 0x204(3)
    stw 0, 0x208(3)
    stw 0, 0x20c(3)
    stw 0, 0x210(3)
    stw 0, 0x214(3)
    stw 0, 0x218(3)
    stw 0, 0x21c(3)
    stw 0, 0x220(3)
    stw 0, 0x224(3)
    stw 0, 0x228(3)
    stw 0, 0x22c(3)
    stw 0, 0x230(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x250(3)
    stw 0, 0x254(3)
    stw 0, 0x258(3)
    stw 0, 0x25c(3)
    stw 0, 0x260(3)
    stw 0, 0x264(3)
    stw 0, 0x268(3)
    stw 0, 0x26c(3)
    stw 0, 0x270(3)
    stw 0, 0x274(3)
    stw 0, 0x278(3)
    stw 0, 0x27c(3)
    stw 0, 0x280(3)
    stb 0, 0x284(3)
    stfs 0, 0x288(3)
    stfs 0, 0x28c(3)
    blr

fn_80160278:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820038 # beq .L_801602CC
    lis 3, lbl_804A03A8@ha
    li 4, 0x1
    addi 0, 3, lbl_804A03A8@l
    stw 0, 0x0(30)
    lwz 3, 0x294(30)
    bl dtor_80092364
    lwz 3, 0x290(30)
    li 4, 0x1
    bl dtor_80092364
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801602CC
    mr 3, 30
    bl dtor_80084580
L_801602CC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801602E8:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_804A03A8@ha
    li 6, 0xc
    stw 0, 0x24(1)
    addi 0, 5, lbl_804A03A8@l
    li 5, 0x0
    li 7, 0x20
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, fn_8003B2CC@ha
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 0, 0x0(31)
    addi 0, 3, fn_8003B2CC@l
    addi 3, 31, 0x84
    mr 4, 0
    bl __construct_array
    mr 3, 29
    bl fn_80083A68
    mr 4, 29
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 30, 3
    .4byte 0x41820050 # beq .L_801603A0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804661B0@ha
    addi 5, 3, lbl_804661B0@l
    lis 4, 0x3f3f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(30)
    mr 3, 30
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(30)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(30)
L_801603A0:
    stw 30, 0x290(31)
    mr 4, 29
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 30, 3
    .4byte 0x41820050 # beq .L_80160408
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804661BC@ha
    addi 5, 3, lbl_804661BC@l
    lis 4, 0x3f3f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(30)
    mr 3, 30
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(30)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(30)
L_80160408:
    stw 30, 0x294(31)
    mr 3, 31
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016042C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C00A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C00A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016047C
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
L_8016047C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801604B4
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
L_801604B4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801604EC
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
L_801604EC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80160524
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
L_80160524:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016055C
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
L_8016055C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80160594
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
L_80160594:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801605CC
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
L_801605CC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80160604
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
L_80160604:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016063C
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
L_8016063C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8015F230
    .4byte fn_8016042C

