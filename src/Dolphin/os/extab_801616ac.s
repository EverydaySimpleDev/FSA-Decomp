# Fresh project-wide gap hunt continuation: 9 functions, 11,544 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_80007084
etb_80007084:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007084, 8

.global etb_8000708C
etb_8000708C:
    .4byte 0x208A0000
    .4byte 0x00000084
    .4byte 0x00060040
    .4byte 0x000000B8
    .4byte 0x00060038
    .4byte 0x00000128
    .4byte 0x01190030
    .4byte 0x00000608
    .4byte 0x00000038
    .4byte 0x00000614
    .4byte 0x00000040
    .4byte 0x00000000
    .4byte 0x02000030
    .4byte dtor_80092364
    .4byte 0x02000070
    .4byte dtor_80092364
    .4byte 0x820000B0
    .4byte dtor_80092364
.size etb_8000708C, 72

.global etb_800070D4
etb_800070D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800070D4, 8

.global etb_800070DC
etb_800070DC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800070DC, 8

.global etb_800070E4
etb_800070E4:
    .4byte 0x098A0000
    .4byte 0x00000000
.size etb_800070E4, 8

.global etb_800070EC
etb_800070EC:
    .4byte 0x218A0000
    .4byte 0x00000000
.size etb_800070EC, 8

.global etb_800070F4
etb_800070F4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800070F4, 8

.global etb_800070FC
etb_800070FC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800070FC, 8

.global etb_80007104
etb_80007104:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007104, 8

.section extabindex, "a"
.balign 4
.global eti_80013C54
eti_80013C54:
    .4byte fn_801616AC
    .4byte 0x00000224
    .4byte etb_80007084
.size eti_80013C54, 12

.global eti_80013C60
eti_80013C60:
    .4byte fn_801618D0
    .4byte 0x00000650
    .4byte etb_8000708C
.size eti_80013C60, 12

.global eti_80013C6C
eti_80013C6C:
    .4byte fn_80161F20
    .4byte 0x00000078
    .4byte etb_800070D4
.size eti_80013C6C, 12

.global eti_80013C78
eti_80013C78:
    .4byte fn_80161F98
    .4byte 0x00000270
    .4byte etb_800070DC
.size eti_80013C78, 12

.global eti_80013C84
eti_80013C84:
    .4byte fn_80162208
    .4byte 0x00000420
    .4byte etb_800070E4
.size eti_80013C84, 12

.global eti_80013C90
eti_80013C90:
    .4byte fn_80162628
    .4byte 0x00001858
    .4byte etb_800070EC
.size eti_80013C90, 12

.global eti_80013C9C
eti_80013C9C:
    .4byte fn_80163E80
    .4byte 0x00000298
    .4byte etb_800070F4
.size eti_80013C9C, 12

.global eti_80013CA8
eti_80013CA8:
    .4byte fn_80164118
    .4byte 0x00000088
    .4byte etb_800070FC
.size eti_80013CA8, 12

.global eti_80013CB4
eti_80013CB4:
    .4byte fn_801641A0
    .4byte 0x00000224
    .4byte etb_80007104
.size eti_80013CB4, 12

.text
.balign 4
.global fn_801616AC
.global fn_801618D0
.global fn_80161F20
.global fn_80161F98
.global fn_80162208
.global fn_80162628
.global fn_80163E80
.global fn_80164118
.global fn_801641A0

fn_801616AC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C01A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C01A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801616FC
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
L_801616FC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80161734
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
L_80161734:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016176C
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
L_8016176C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801617A4
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
L_801617A4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801617DC
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
L_801617DC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80161814
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
L_80161814:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016184C
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
L_8016184C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80161884
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
L_80161884:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801618BC
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
L_801618BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801618D0:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stw 31, 0x10c(1)
    stw 30, 0x108(1)
    stw 29, 0x104(1)
    stw 28, 0x100(1)
    lis 7, lbl_804661E0@ha
    lis 6, 0x4250
    addi 28, 7, lbl_804661E0@l
    mr 29, 3
    mr 30, 4
    mr 31, 5
    addi 3, 6, 0x4f48
    addi 4, 28, 0x60
    bl fn_804032E8
    li 0, 0x0
    mr 4, 3
    stw 0, 0xd8(1)
    addi 3, 1, 0xb0
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0xeb(1)
    lis 3, 0x4250
    addi 3, 3, 0x4f48
    addi 4, 28, 0x74
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0xeb(1)
    bl fn_804032E8
    li 0, 0x0
    mr 4, 3
    stw 0, 0x98(1)
    addi 3, 1, 0x70
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0xab(1)
    lis 3, 0x4250
    addi 3, 3, 0x4f48
    addi 4, 28, 0x84
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0xab(1)
    bl fn_804032E8
    li 0, 0x0
    mr 4, 3
    stw 0, 0x58(1)
    addi 3, 1, 0x30
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x6b(1)
    lis 6, 0x4330
    lwz 8, 0xd0(1)
    mr 3, 30
    rlwinm 0, 0, 0, 30, 30
    stw 6, 0xf0(1)
    .4byte 0xC842A728 # lfd f2, lbl_8053D6C8@sda21(r0)
    mr 4, 31
    stb 0, 0x6b(1)
    addi 5, 1, 0x24
    lhz 7, 0x2(8)
    lhz 0, 0x4(8)
    xoris 7, 7, 0x8000
    stw 6, 0xf8(1)
    xoris 0, 0, 0x8000
    stw 7, 0xf4(1)
    stw 0, 0xfc(1)
    lfd 1, 0xf0(1)
    lfd 0, 0xf8(1)
    fsubs 31, 1, 2
    fsubs 30, 0, 2
    bl fn_802F5040
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
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
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x2
    bl fn_8005D404
    li 3, 0x1
    bl fn_8005D3C8
    li 3, 0x0
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x1
    bl fn_8005B93C
    addi 3, 1, 0xb0
    li 4, 0x0
    bl fn_80092984
    addi 3, 1, 0x70
    li 4, 0x1
    bl fn_80092984
    addi 3, 1, 0x30
    li 4, 0x2
    bl fn_80092984
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0x2
    li 5, 0xe
    li 6, 0x8
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x0
    li 4, 0x4
    li 5, 0x7
    li 6, 0x7
    li 7, 0x7
    bl fn_8005EAB0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x0
    li 4, 0xc
    bl fn_8005ED30
    li 3, 0x0
    li 4, 0x1c
    bl fn_8005ED8C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x1
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0x0
    li 6, 0x8
    li 7, 0xf
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
    li 5, 0x6
    li 6, 0x0
    li 7, 0x7
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    li 4, 0xc
    bl fn_8005ED30
    li 3, 0x1
    li 4, 0x1c
    bl fn_8005ED8C
    li 3, 0x2
    li 4, 0x0
    li 5, 0x2
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x2
    li 4, 0xf
    li 5, 0x4
    li 6, 0x8
    li 7, 0x0
    bl fn_8005EA6C
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x2
    li 4, 0x7
    li 5, 0x2
    li 6, 0x4
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x2
    li 4, 0xc
    bl fn_8005ED30
    li 3, 0x2
    li 4, 0x1c
    bl fn_8005ED8C
    li 3, 0x3
    li 4, 0xff
    li 5, 0xff
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x3
    li 4, 0xf
    li 5, 0x0
    li 6, 0x6
    li 7, 0xe
    bl fn_8005EA6C
    li 3, 0x3
    li 4, 0x7
    li 5, 0x0
    li 6, 0x3
    li 7, 0x6
    bl fn_8005EAB0
    li 3, 0x3
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x3
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x3
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x3
    li 4, 0xd
    bl fn_8005ED30
    li 3, 0x3
    li 4, 0x1d
    bl fn_8005ED8C
    li 3, 0x3
    bl fn_8005E8DC
    li 3, 0x4
    bl fn_8005F11C
    li 3, 0x1
    li 4, 0x4
    li 5, 0x5
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005C46C
    lwz 0, 0x2f4(29)
    addi 4, 1, 0x20
    li 3, 0x1
    stw 0, 0x20(1)
    bl fn_8005EBC4
    lwz 0, 0x2f8(29)
    addi 4, 1, 0x1c
    li 3, 0x0
    stw 0, 0x1c(1)
    bl fn_8005ECBC
    lwz 0, 0x2fc(29)
    addi 4, 1, 0x18
    li 3, 0x2
    stw 0, 0x18(1)
    bl fn_8005EBC4
    cmplwi 31, 0x0
    .4byte 0x41820030 # beq .L_80161E08
    lwz 0, 0x10(31)
    addi 4, 1, 0x14
    li 3, 0x3
    stw 0, 0x14(1)
    bl fn_8005EBC4
    lwz 0, 0x14(31)
    addi 4, 1, 0x10
    li 3, 0x1
    stw 0, 0x10(1)
    bl fn_8005ECBC
    .4byte 0x4800002C # b .L_80161E30
L_80161E08:
    .4byte 0x8002A718 # lwz r0, lbl_8053D6B8@sda21(r0)
    addi 4, 1, 0xc
    li 3, 0x3
    stw 0, 0xc(1)
    bl fn_8005EBC4
    .4byte 0x80020F90 # lwz r0, lbl_80543F30@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x1
    stw 0, 0x8(1)
    bl fn_8005ECBC
L_80161E30:
    .4byte 0xC042A71C # lfs f2, lbl_8053D6BC@sda21(r0)
    li 3, 0x80
    lfs 1, 0x24(1)
    li 4, 0x0
    lfs 0, 0x2c(1)
    li 5, 0x4
    fnmsubs 1, 2, 31, 1
    fnmsubs 0, 2, 30, 0
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    bl fn_8005C24C
    lfs 2, 0x24(1)
    lis 5, 0xcc01
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    addi 3, 1, 0x30
    stfs 2, -0x8000(5)
    fadds 5, 2, 31
    .4byte 0xC002A724 # lfs f0, lbl_8053D6C4@sda21(r0)
    li 4, -0x1
    lfs 3, 0x28(1)
    stfs 3, -0x8000(5)
    lfs 6, 0x2c(1)
    fadds 4, 6, 30
    stfs 4, -0x8000(5)
    stfs 1, -0x8000(5)
    stfs 1, -0x8000(5)
    stfs 5, -0x8000(5)
    stfs 3, -0x8000(5)
    stfs 4, -0x8000(5)
    stfs 0, -0x8000(5)
    stfs 1, -0x8000(5)
    stfs 5, -0x8000(5)
    stfs 3, -0x8000(5)
    stfs 6, -0x8000(5)
    stfs 0, -0x8000(5)
    stfs 0, -0x8000(5)
    stfs 2, -0x8000(5)
    stfs 3, -0x8000(5)
    stfs 6, -0x8000(5)
    stfs 1, -0x8000(5)
    stfs 0, -0x8000(5)
    bl dtor_80092364
    addi 3, 1, 0x70
    li 4, -0x1
    bl dtor_80092364
    addi 3, 1, 0xb0
    li 4, -0x1
    bl dtor_80092364
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    lwz 31, 0x10c(1)
    lwz 30, 0x108(1)
    lwz 29, 0x104(1)
    lwz 0, 0x134(1)
    lwz 28, 0x100(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

fn_80161F20:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x4
    li 5, 0x0
    stw 0, 0x14(1)
    addi 4, 4, 0x15
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F0E34
    mr 3, 31
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    lwz 12, 0x0(31)
    li 4, 0x7
    .4byte 0xC042A730 # lfs f2, lbl_8053D6D0@sda21(r0)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    lwz 31, 0x270(31)
    cmpwi 31, 0x0
    .4byte 0x41820018 # beq .L_80161F84
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80161F84:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80161F98:
    stwu 1, -0x80(1)
    lwz 0, 0x2ec(3)
    cmpw 0, 4
    .4byte 0x418200B8 # beq .L_8016205C
    cmpwi 0, 0x0
    .4byte 0x4080008C # bge .L_80162038
    mulli 7, 4, 0xc
    lis 6, lbl_804661E0@ha
    addi 6, 6, lbl_804661E0@l
    lwzx 0, 6, 7
    add 7, 6, 7
    lwz 6, 0x4(7)
    stw 0, 0x10(1)
    lwz 0, 0x8(7)
    lbz 8, 0x10(1)
    stw 6, 0xc(1)
    lbz 7, 0x11(1)
    stb 8, 0x2f4(3)
    lbz 6, 0x12(1)
    stb 7, 0x2f5(3)
    lbz 7, 0x13(1)
    stb 6, 0x2f6(3)
    lbz 6, 0xc(1)
    stb 7, 0x2f7(3)
    lbz 7, 0xd(1)
    stb 6, 0x2f8(3)
    lbz 6, 0xe(1)
    stb 7, 0x2f9(3)
    lbz 7, 0xf(1)
    stw 0, 0x8(1)
    stb 6, 0x2fa(3)
    lbz 6, 0x8(1)
    stb 7, 0x2fb(3)
    lbz 0, 0x9(1)
    stb 6, 0x2fc(3)
    lbz 6, 0xa(1)
    stb 0, 0x2fd(3)
    lbz 0, 0xb(1)
    stb 6, 0x2fe(3)
    stb 0, 0x2ff(3)
L_80162038:
    stw 4, 0x2ec(3)
    lwz 0, 0x2f0(3)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_80162054
    li 0, 0x0
    stw 0, 0x2f0(3)
    .4byte 0x480001B0 # b .L_80162200
L_80162054:
    stw 5, 0x2f0(3)
    .4byte 0x480001A8 # b .L_80162200
L_8016205C:
    lwz 0, 0x2f0(3)
    cmpwi 0, 0x0
    .4byte 0x4081019C # ble .L_80162200
    xoris 0, 0, 0x8000
    lis 4, 0x4330
    stw 0, 0x1c(1)
    lis 5, lbl_804661E0@ha
    addi 0, 5, lbl_804661E0@l
    .4byte 0xC822A728 # lfd f1, lbl_8053D6C8@sda21(r0)
    stw 4, 0x18(1)
    li 7, 0x3
    .4byte 0xC062A724 # lfs f3, lbl_8053D6C4@sda21(r0)
    mr 6, 3
    lfd 0, 0x18(1)
    li 5, 0x0
    .4byte 0xC842A738 # lfd f2, lbl_8053D6D8@sda21(r0)
    fsubs 0, 0, 1
    fdivs 4, 3, 0
    fsubs 3, 3, 4
    mtctr 7
L_801620AC:
    lwz 7, 0x2ec(3)
    lbz 8, 0x2f4(6)
    mulli 7, 7, 0xc
    stw 4, 0x20(1)
    stw 8, 0x1c(1)
    add 7, 0, 7
    lbzx 7, 7, 5
    stw 4, 0x18(1)
    stw 7, 0x24(1)
    lfd 1, 0x18(1)
    lfd 0, 0x20(1)
    fsubs 1, 1, 2
    stw 4, 0x30(1)
    fsubs 0, 0, 2
    stw 4, 0x38(1)
    fmuls 0, 4, 0
    stw 4, 0x48(1)
    stw 4, 0x50(1)
    fmadds 0, 1, 3, 0
    stw 4, 0x60(1)
    fctiwz 0, 0
    stw 4, 0x68(1)
    stfd 0, 0x28(1)
    lwz 7, 0x2c(1)
    stb 7, 0x2f4(6)
    lwz 7, 0x2ec(3)
    lbz 8, 0x2f5(6)
    mulli 7, 7, 0xc
    stw 8, 0x34(1)
    add 7, 0, 7
    lfd 0, 0x30(1)
    add 7, 7, 5
    lbz 7, 0x1(7)
    fsubs 1, 0, 2
    stw 7, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 2
    fmuls 0, 4, 0
    fmadds 0, 1, 3, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 7, 0x44(1)
    stb 7, 0x2f5(6)
    lwz 7, 0x2ec(3)
    lbz 8, 0x2f6(6)
    mulli 7, 7, 0xc
    stw 8, 0x4c(1)
    add 7, 0, 7
    lfd 0, 0x48(1)
    add 7, 7, 5
    lbz 7, 0x2(7)
    fsubs 1, 0, 2
    stw 7, 0x54(1)
    lfd 0, 0x50(1)
    fsubs 0, 0, 2
    fmuls 0, 4, 0
    fmadds 0, 1, 3, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 7, 0x5c(1)
    stb 7, 0x2f6(6)
    lwz 7, 0x2ec(3)
    lbz 8, 0x2f7(6)
    mulli 7, 7, 0xc
    stw 8, 0x64(1)
    add 7, 0, 7
    lfd 0, 0x60(1)
    add 7, 7, 5
    addi 5, 5, 0x4
    lbz 7, 0x3(7)
    fsubs 1, 0, 2
    stw 7, 0x6c(1)
    lfd 0, 0x68(1)
    fsubs 0, 0, 2
    fmuls 0, 4, 0
    fmadds 0, 1, 3, 0
    fctiwz 0, 0
    stfd 0, 0x70(1)
    lwz 7, 0x74(1)
    stb 7, 0x2f7(6)
    addi 6, 6, 0x4
    .4byte 0x4200FEBC # bdnz .L_801620AC
    lwz 4, 0x2f0(3)
    subi 0, 4, 0x1
    stw 0, 0x2f0(3)
L_80162200:
    addi 1, 1, 0x80
    blr

fn_80162208:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801622C4
L_80162264:
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
L_801622C4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80162264
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    li 4, 0x0
    li 5, 0x1
    li 6, -0x1
    li 0, 0x3
    li 3, 0x2
    stw 6, 0x48(1)
    stw 4, 0x4c(1)
    stw 4, 0x50(1)
    stb 4, 0x54(1)
    stb 4, 0x55(1)
    stb 4, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 4, 0x59(1)
    stb 4, 0x5a(1)
    stb 4, 0x5b(1)
    stb 4, 0x5c(1)
    stb 4, 0x5d(1)
    stb 5, 0x5e(1)
    stw 0, 0x60(1)
    stb 5, 0x64(1)
    stb 4, 0x65(1)
    stb 4, 0x66(1)
    stw 6, 0x68(1)
    stw 4, 0x6c(1)
    stw 3, 0x70(1)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    lwz 4, 0x268(31)
    cmpwi 4, 0x1
    .4byte 0x41820294 # beq .L_801625E4
    cmpwi 4, 0x2
    .4byte 0x40820040 # bne .L_80162398
    .4byte 0xC022A724 # lfs f1, lbl_8053D6C4@sda21(r0)
    lis 3, lbl_80466274@ha
    stb 0, 0x55(1)
    addi 4, 3, lbl_80466274@l
    fmr 2, 1
    mr 3, 31
    stb 5, 0x54(1)
    addi 6, 1, 0x38
    li 7, 0x0
    li 8, 0x0
    lwz 5, 0x258(31)
    li 9, 0x0
    addi 5, 5, 0x1b1
    bl fn_801F02BC
    .4byte 0x48000250 # b .L_801625E4
L_80162398:
    stb 5, 0x54(1)
    lwz 0, 0x258(31)
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_801623B0
    stb 3, 0x55(1)
    .4byte 0x48000008 # b .L_801623B4
L_801623B0:
    stb 6, 0x55(1)
L_801623B4:
    lwz 0, 0x188(31)
    cmpwi 0, 0x0
    .4byte 0x408200FC # bne .L_801624B8
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x408100F0 # ble .L_801624B8
    lwz 3, 0xdc(31)
    subi 4, 3, 0x19
    cmpw 0, 4
    .4byte 0x4181000C # bgt .L_801623E4
    cmpwi 3, 0x19
    .4byte 0x408000D8 # bge .L_801624B8
L_801623E4:
    cmpwi 3, 0x19
    .4byte 0x40800010 # bge .L_801623F8
    mulli 0, 0, 0xff
    divw 5, 0, 3
    .4byte 0x48000024 # b .L_80162418
L_801623F8:
    subf 0, 4, 0
    lis 3, 0x51ec
    mulli 0, 0, 0xff
    subi 3, 3, 0x7ae1
    mulhw 0, 3, 0
    srawi 0, 0, 3
    srwi 3, 0, 31
    add 5, 0, 3
L_80162418:
    lwz 0, 0xf8(31)
    cmpwi 0, 0x2
    .4byte 0x40820048 # bne .L_80162468
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    stw 3, 0x7c(1)
    .4byte 0xC822A728 # lfd f1, lbl_8053D6C8@sda21(r0)
    stw 0, 0x78(1)
    .4byte 0xC062A740 # lfs f3, lbl_8053D6E0@sda21(r0)
    lfd 0, 0x78(1)
    lfs 2, 0x14(31)
    fsubs 0, 0, 1
    fnmsubs 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 3, 0x84(1)
    neg 0, 3
    orc 0, 3, 0
    srawi 0, 0, 31
    andc 5, 3, 0
L_80162468:
    lwz 0, 0xfc(31)
    cmpwi 0, 0x5
    .4byte 0x40820024 # bne .L_80162494
    lbz 4, 0x4c(1)
    srawi 0, 5, 1
    lbz 3, 0x4d(1)
    add 4, 4, 5
    add 0, 3, 0
    stb 4, 0x4c(1)
    stb 0, 0x4d(1)
    .4byte 0x48000028 # b .L_801624B8
L_80162494:
    lbz 0, 0x4c(1)
    lbz 3, 0x4d(1)
    add 4, 0, 5
    lbz 0, 0x4e(1)
    add 3, 3, 5
    stb 4, 0x4c(1)
    add 0, 0, 5
    stb 3, 0x4d(1)
    stb 0, 0x4e(1)
L_801624B8:
    lwz 0, 0x188(31)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_801624D4
    li 3, 0xc8
    li 0, 0x41
    stb 3, 0x4c(1)
    stb 0, 0x4d(1)
L_801624D4:
    lhz 3, 0x290(31)
    lis 0, 0x4330
    stw 0, 0x80(1)
    .4byte 0xC842A738 # lfd f2, lbl_8053D6D8@sda21(r0)
    stw 3, 0x84(1)
    .4byte 0xC002A744 # lfs f0, lbl_8053D6E4@sda21(r0)
    lfd 1, 0x80(1)
    lfs 29, 0x27c(31)
    fsubs 2, 1, 2
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    fdivs 30, 2, 0
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    fmuls 7, 30, 26
    li 3, 0x1
    fneg 6, 27
    stb 3, 0x65(1)
    fmuls 10, 31, 3
    stw 0, 0x50(1)
    fmuls 2, 28, 27
    mr 3, 31
    fmuls 9, 31, 26
    addi 4, 31, 0xc
    fmuls 1, 28, 26
    addi 5, 1, 0x38
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x8(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x18(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x28(1)
    fmuls 0, 29, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    bl fn_801618D0
L_801625E4:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    lwz 0, 0xf4(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_80162628:
    stwu 1, -0x10e0(1)
    mflr 0
    stw 0, 0x10e4(1)
    li 0, 0x10d8
    stfd 31, 0x10d0(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x10c8
    stfd 30, 0x10c0(1)
    psq_stx 30, 1, 0, 0, 0
    li 0, 0x10b8
    stfd 29, 0x10b0(1)
    psq_stx 29, 1, 0, 0, 0
    li 0, 0x10a8
    stfd 28, 0x10a0(1)
    psq_stx 28, 1, 0, 0, 0
    li 0, 0x1098
    stfd 27, 0x1090(1)
    psq_stx 27, 1, 0, 0, 0
    li 0, 0x1088
    stfd 26, 0x1080(1)
    psq_stx 26, 1, 0, 0, 0
    stw 31, 0x107c(1)
    stw 30, 0x1078(1)
    stw 29, 0x1074(1)
    stw 28, 0x1070(1)
    mr 30, 3
    .4byte 0xC3E2A748 # lfs f31, lbl_8053D6E8@sda21(r0)
    lfs 26, 0x10(3)
    li 0, 0x2710
    lfs 27, 0xc(3)
    fmr 30, 31
    .4byte 0xC3A2A74C # lfs f29, lbl_8053D6EC@sda21(r0)
    stw 0, 0x108(3)
    fmr 28, 29
    lwz 0, 0x268(3)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_801626D8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x179(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801626D8
    li 0, 0x1
    stb 0, 0x178(3)
L_801626D8:
    lwz 0, 0x268(30)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_801626F4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 30, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_801626F4:
    mr 3, 30
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    lwz 12, 0x0(30)
    fadds 31, 31, 27
    fmr 2, 1
    .4byte 0xC062A750 # lfs f3, lbl_8053D6F0@sda21(r0)
    lwz 12, 0x2c(12)
    fadds 30, 30, 26
    fadds 29, 29, 27
    fadds 28, 28, 26
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820198 # beq .L_801628C0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80162774
    li 0, 0x1
    .4byte 0xC022A724 # lfs f1, lbl_8053D6C4@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002A754 # lfs f0, lbl_8053D6F4@sda21(r0)
    lfs 2, 0xc(30)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(30)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_80162774:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80162798
    li 0, 0x1
    .4byte 0xC002A758 # lfs f0, lbl_8053D6F8@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_80162798:
    lwz 3, 0x248(30)
    addi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    clrlwi 0, 0, 28
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x408200D4 # bne .L_8016288C
    lfs 0, 0xc(30)
    lis 3, 0x19
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    addi 11, 3, 0x660d
    stfs 0, 0x50(1)
    addi 4, 1, 0x50
    .4byte 0xC022A724 # lfs f1, lbl_8053D6C4@sda21(r0)
    li 5, 0x1ff
    lfs 0, 0x10(30)
    li 6, 0x1
    .4byte 0xC082A760 # lfs f4, lbl_8053D700@sda21(r0)
    li 7, 0x4
    stfs 0, 0x54(1)
    li 8, 0x0
    .4byte 0xC062A75C # lfs f3, lbl_8053D6FC@sda21(r0)
    li 9, 0x0
    lfs 0, 0x14(30)
    li 10, 0x1
    stfs 0, 0x58(1)
    lwz 0, 0xb4(12)
    mullw 3, 0, 11
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 2, 0x50(1)
    srwi 0, 0, 9
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x28(1)
    lfs 0, 0x28(1)
    fsubs 0, 0, 1
    fnmsubs 0, 4, 0, 3
    fadds 0, 2, 0
    stfs 0, 0x50(1)
    lwz 0, 0xb4(12)
    mullw 3, 0, 11
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 2, 0x54(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x24(1)
    lfs 0, 0x24(1)
    fsubs 0, 0, 1
    fnmsubs 0, 4, 0, 3
    fadds 0, 2, 0
    stfs 0, 0x54(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
L_8016288C:
    lwz 0, 0x188(30)
    cmpwi 0, 0x1
    .4byte 0x40821584 # bne .L_80163E18
    bl SpatialRegistry_GetBase
    lis 4, 0x4250
    lwz 5, 0x4(30)
    addi 4, 4, 0x4f48
    addi 6, 30, 0xc
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800155C # b .L_80163E18
L_801628C0:
    lwz 3, 0x234(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801628D4
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_801628D4:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801628E8
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_801628E8:
    addi 4, 30, 0x8
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80162900
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_80162900:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80162914
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_80162914:
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x408203A4 # bne .L_80162CC0
    lwz 4, 0x258(30)
    mr 3, 30
    lwz 5, 0x234(30)
    bl fn_80161F98
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80162954
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_80162954
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 30, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80162954:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x4081002C # ble .L_80162988
    lwz 0, 0x230(30)
    cmpwi 0, 0x6
    .4byte 0x41820020 # beq .L_80162988
    cmpwi 0, 0x7
    .4byte 0x41820018 # beq .L_80162988
    lfs 1, 0x280(30)
    addi 3, 30, 0x27c
    .4byte 0xC042A764 # lfs f2, lbl_8053D704@sda21(r0)
    lfs 3, 0x284(30)
    bl fn_801F71A4
L_80162988:
    mr 3, 30
    li 4, 0x0
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40821480 # bne .L_80163E18
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801629B0
    cmpwi 0, 0x4
    .4byte 0x40820160 # bne .L_80162B0C
L_801629B0:
    lfs 3, 0x294(30)
    lfs 2, 0xc(30)
    lfs 1, 0x298(30)
    lfs 0, 0x10(30)
    fsubs 26, 3, 2
    fsubs 27, 1, 0
    bl GetRoomConfigRecord
    lwz 0, 0x254(30)
    lwz 4, 0x90(30)
    mulli 0, 0, 0x5
    subfic 0, 0, 0x1b
    srw 0, 4, 0
    clrlwi 4, 0, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_80162B0C
    fmuls 1, 27, 27
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    fmadds 4, 26, 26, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80162A4C
    frsqrte 1, 4
    .4byte 0xC862A768 # lfd f3, lbl_8053D708@sda21(r0)
    .4byte 0xC842A770 # lfd f2, lbl_8053D710@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80162AD0
L_80162A4C:
    .4byte 0xC802A778 # lfd f0, lbl_8053D718@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80162A64
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80162AD0
L_80162A64:
    stfs 4, 0x34(1)
    lis 0, 0x7f80
    lwz 4, 0x34(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80162A8C
    .4byte 0x40800040 # bge .L_80162ABC
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80162AA4
    .4byte 0x48000034 # b .L_80162ABC
L_80162A8C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80162A9C
    li 0, 0x1
    .4byte 0x48000028 # b .L_80162AC0
L_80162A9C:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80162AC0
L_80162AA4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80162AB4
    li 0, 0x5
    .4byte 0x48000010 # b .L_80162AC0
L_80162AB4:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80162AC0
L_80162ABC:
    li 0, 0x4
L_80162AC0:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80162AD0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80162AD0:
    .4byte 0xC002A780 # lfs f0, lbl_8053D720@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800034 # bge .L_80162B0C
    lwz 0, 0x258(30)
    cmpwi 0, 0x3
    .4byte 0x41820028 # beq .L_80162B0C
    li 0, 0x3
    lis 4, 0x4
    stw 0, 0x258(30)
    li 0, 0xa
    mr 3, 30
    addi 4, 4, 0x1f
    stw 0, 0x234(30)
    li 5, 0x0
    bl fn_801F0E34
L_80162B0C:
    lwz 0, 0x230(30)
    cmpwi 0, 0x4
    .4byte 0x4082013C # bne .L_80162C50
    lwz 4, 0x25c(30)
    lis 0, 0x4330
    stw 0, 0x1060(1)
    mr 3, 30
    xoris 0, 4, 0x8000
    .4byte 0xC822A728 # lfd f1, lbl_8053D6C8@sda21(r0)
    stw 0, 0x1064(1)
    .4byte 0xC042A784 # lfs f2, lbl_8053D724@sda21(r0)
    lfd 0, 0x1060(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    fneg 0, 1
    stfs 0, 0x60(30)
    stfs 0, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x418200F0 # beq .L_80162C50
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    lwz 3, 0x25c(30)
    subi 0, 3, 0x1
    stw 0, 0x25c(30)
    bl GetRoomConfigRecord
    lwz 0, 0x90(30)
    extrwi 4, 0, 5, 20
    bl fn_802D7E34
    li 3, 0x6
    li 0, 0xa
    stw 3, 0x258(30)
    stw 0, 0x234(30)
    lwz 3, 0x25c(30)
    cmpwi 3, 0x0
    .4byte 0x4081008C # ble .L_80162C34
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 3, 0x1064(1)
    lis 4, 0x4
    .4byte 0xC822A728 # lfd f1, lbl_8053D6C8@sda21(r0)
    mr 3, 30
    stw 0, 0x1060(1)
    addi 4, 4, 0x14
    .4byte 0xC042A764 # lfs f2, lbl_8053D704@sda21(r0)
    li 5, 0x0
    lfd 0, 0x1060(1)
    .4byte 0xC062A788 # lfs f3, lbl_8053D728@sda21(r0)
    fsubs 0, 0, 1
    stw 0, 0x1068(1)
    fmuls 0, 2, 0
    fmuls 0, 3, 0
    stfs 0, 0x27c(30)
    lwz 0, 0x25c(30)
    xoris 0, 0, 0x8000
    stw 0, 0x106c(1)
    lfd 0, 0x1068(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x280(30)
    bl fn_801F0E34
    li 0, 0x32
    li 4, 0x6
    stw 0, 0x23c(30)
    li 3, 0xa
    li 0, 0x5
    stw 4, 0x258(30)
    stw 3, 0x234(30)
    stw 0, 0x230(30)
    .4byte 0x4800000C # b .L_80162C3C
L_80162C34:
    li 0, 0x9
    stw 0, 0x230(30)
L_80162C3C:
    .4byte 0xC022A71C # lfs f1, lbl_8053D6BC@sda21(r0)
    lfs 0, 0x280(30)
    fmuls 0, 1, 0
    stfs 0, 0x284(30)
    .4byte 0x480011CC # b .L_80163E18
L_80162C50:
    lwz 0, 0x230(30)
    cmpwi 0, 0x3
    .4byte 0x41820068 # beq .L_80162CC0
    .4byte 0xC042A78C # lfs f2, lbl_8053D72C@sda21(r0)
    addi 3, 30, 0x274
    lfs 1, 0x278(30)
    fmr 3, 2
    bl fn_801F71A4
    lfs 1, 0x294(30)
    addi 3, 30, 0xc
    lfs 0, 0xc(30)
    lfs 3, 0x274(30)
    fsubs 0, 0, 1
    .4byte 0xC042A790 # lfs f2, lbl_8053D730@sda21(r0)
    fabs 0, 0
    frsp 0, 0
    fmuls 3, 3, 0
    bl fn_801F71A4
    lfs 1, 0x298(30)
    addi 3, 30, 0x10
    lfs 0, 0x10(30)
    lfs 3, 0x274(30)
    fsubs 0, 0, 1
    .4byte 0xC042A790 # lfs f2, lbl_8053D730@sda21(r0)
    fabs 0, 0
    frsp 0, 0
    fmuls 3, 3, 0
    bl fn_801F71A4
L_80162CC0:
    lwz 0, 0x230(30)
    cmplwi 0, 0xf
    .4byte 0x41811150 # bgt .L_80163E18
    lis 3, jumptable_804A0494@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A0494@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl GetRoomConfigRecord
    lwz 0, 0x90(30)
    extrwi 4, 0, 5, 20
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41821120 # beq .L_80163E18
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x38
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    li 29, 0x0
    lwz 31, 0x24(3)
    stfs 31, 0x38(1)
    mr 3, 31
    stfs 30, 0x3c(1)
    stfs 0, 0x40(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80162D54
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    mr 3, 31
    stfs 29, 0x44(1)
    addi 4, 1, 0x44
    stfs 28, 0x48(1)
    stfs 0, 0x4c(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80162D54
    li 29, 0x1
L_80162D54:
    clrlwi. 0, 29, 24
    .4byte 0x418210C0 # beq .L_80163E18
    bl fn_8022ADE4
    li 0, 0x1
    stw 0, 0x230(30)
    .4byte 0x480010B0 # b .L_80163E18
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80162DB0
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(30)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(30)
    stfs 0, 0x800(4)
    lfs 0, 0x14(30)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_80162DB0:
    lwz 0, 0x258(30)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_80162DE0
    lwz 0, 0x234(30)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80162DE0
    bl GetRoomConfigRecord
    lwz 0, 0x90(30)
    li 5, 0x0
    li 6, 0xff
    extrwi 4, 0, 5, 20
    bl fn_802D8050
L_80162DE0:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40821030 # bne .L_80163E18
    lwz 3, 0x258(30)
    addi 0, 3, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x2
    .4byte 0x41820048 # beq .L_80162E48
    .4byte 0x40800010 # bge .L_80162E14
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_80162E20
    .4byte 0x48000044 # b .L_80162E54
L_80162E14:
    cmpwi 0, 0x4
    .4byte 0x4080003C # bge .L_80162E54
    .4byte 0x48000018 # b .L_80162E34
L_80162E20:
    li 3, 0xa
    li 0, 0xb4
    stw 3, 0x234(30)
    stw 0, 0x238(30)
    .4byte 0x48000024 # b .L_80162E54
L_80162E34:
    li 0, 0x1
    stb 0, 0x1a8(30)
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
L_80162E48:
    li 0, 0x1e
    stw 0, 0x234(30)
    stw 0, 0x238(30)
L_80162E54:
    lwz 0, 0x258(30)
    cmpwi 0, 0x3
    .4byte 0x40810FBC # ble .L_80163E18
    li 0, 0x4
    lis 3, 0x19
    stw 0, 0x258(30)
    li 0, 0xa
    addi 3, 3, 0x660d
    .4byte 0xC022A724 # lfs f1, lbl_8053D6C4@sda21(r0)
    stw 0, 0x234(30)
    li 0, 0x2
    .4byte 0xC062A794 # lfs f3, lbl_8053D734@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x20(1)
    lfs 2, 0x20(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x1068(1)
    lwz 3, 0x106c(1)
    stw 3, 0x254(30)
    lwz 3, 0x254(30)
    clrlwi 3, 3, 30
    stw 3, 0x254(30)
    stfs 0, 0x274(30)
    lwz 3, 0x254(30)
    mulli 3, 3, 0xc
    add 3, 30, 3
    lfs 0, 0x2b8(3)
    stfs 0, 0x294(30)
    lwz 3, 0x254(30)
    mulli 3, 3, 0xc
    add 3, 30, 3
    lfs 0, 0x2bc(3)
    stfs 0, 0x298(30)
    stw 0, 0x230(30)
    .4byte 0x48000F10 # b .L_80163E18
    lfs 1, 0x298(30)
    lfs 0, 0x10(30)
    lfs 2, 0x294(30)
    fsubs 3, 1, 0
    lfs 1, 0xc(30)
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80162F80
    frsqrte 1, 4
    .4byte 0xC862A768 # lfd f3, lbl_8053D708@sda21(r0)
    .4byte 0xC842A770 # lfd f2, lbl_8053D710@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80163004
L_80162F80:
    .4byte 0xC802A778 # lfd f0, lbl_8053D718@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80162F98
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80163004
L_80162F98:
    stfs 4, 0x30(1)
    lis 0, 0x7f80
    lwz 4, 0x30(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80162FC0
    .4byte 0x40800040 # bge .L_80162FF0
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80162FD8
    .4byte 0x48000034 # b .L_80162FF0
L_80162FC0:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80162FD0
    li 0, 0x1
    .4byte 0x48000028 # b .L_80162FF4
L_80162FD0:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80162FF4
L_80162FD8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80162FE8
    li 0, 0x5
    .4byte 0x48000010 # b .L_80162FF4
L_80162FE8:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80162FF4
L_80162FF0:
    li 0, 0x4
L_80162FF4:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80163004
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80163004:
    .4byte 0xC002A798 # lfs f0, lbl_8053D738@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800E0C # bge .L_80163E18
    lwz 0, 0x258(30)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_80163038
    li 0, 0xb4
    li 3, 0x0
    stw 0, 0x23c(30)
    li 0, 0x4
    stw 3, 0x248(30)
    stw 0, 0x230(30)
    .4byte 0x48000DE4 # b .L_80163E18
L_80163038:
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3
    .4byte 0x408101B8 # ble .L_80163204
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042A724 # lfs f2, lbl_8053D6C4@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC002A790 # lfs f0, lbl_8053D730@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800170 # bge .L_80163204
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    li 0, 0x0
    .4byte 0xC022A79C # lfs f1, lbl_8053D73C@sda21(r0)
    stfs 0, 0x274(30)
    stw 0, 0x248(30)
    stw 0, 0x24c(30)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lwz 3, 0x254(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 0, 0x18(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x1068(1)
    lwz 0, 0x106c(1)
    add 3, 0, 3
    addi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    clrlwi 0, 0, 30
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    mulli 0, 0, 0xc
    add 3, 30, 0
    lfs 0, 0x2b8(3)
    stfs 0, 0x294(30)
    lwz 0, 0x254(30)
    mulli 0, 0, 0xc
    add 3, 30, 0
    lfs 0, 0x2bc(3)
    stfs 0, 0x298(30)
    lfs 0, 0xc(30)
    stfs 0, 0x50(1)
    lfs 0, 0x10(30)
    stfs 0, 0x54(1)
    lfs 0, 0x14(30)
    stfs 0, 0x58(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4250
    lwz 5, 0x4(30)
    addi 4, 4, 0x4f48
    addi 6, 1, 0x50
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x26c(30)
    lwz 0, 0x26c(30)
    cmpwi 0, 0x0
    .4byte 0x41800C9C # blt .L_80163E18
    li 0, 0x5
    lis 3, 0x4330
    stw 0, 0x258(30)
    li 0, 0xa
    li 5, 0x3
    .4byte 0xC862A728 # lfd f3, lbl_8053D6C8@sda21(r0)
    stw 0, 0x234(30)
    li 0, 0x12c
    .4byte 0xC082A764 # lfs f4, lbl_8053D704@sda21(r0)
    stw 5, 0x238(30)
    .4byte 0xC042A7A0 # lfs f2, lbl_8053D740@sda21(r0)
    lwz 4, 0x25c(30)
    stw 3, 0x1068(1)
    xoris 4, 4, 0x8000
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    stw 4, 0x106c(1)
    lfd 1, 0x1068(1)
    stw 3, 0x1060(1)
    fsubs 1, 1, 3
    fmuls 1, 4, 1
    stfs 1, 0x280(30)
    lwz 3, 0x25c(30)
    xoris 3, 3, 0x8000
    stw 3, 0x1064(1)
    lfd 1, 0x1060(1)
    fsubs 1, 1, 3
    fmuls 1, 4, 1
    fmuls 1, 2, 1
    stfs 1, 0x27c(30)
    stfs 0, 0x28c(30)
    stw 0, 0x23c(30)
    stw 5, 0x230(30)
    .4byte 0x48000C18 # b .L_80163E18
L_80163204:
    .4byte 0xC002A7A4 # lfs f0, lbl_8053D744@sda21(r0)
    lis 3, 0x19
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    addi 3, 3, 0x660d
    stfs 0, 0x284(30)
    li 0, 0x2
    .4byte 0xC002A724 # lfs f0, lbl_8053D6C4@sda21(r0)
    stfs 1, 0x274(30)
    .4byte 0xC042A79C # lfs f2, lbl_8053D73C@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    lwz 4, 0x254(30)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1068(1)
    lwz 3, 0x106c(1)
    add 3, 3, 4
    addi 3, 3, 0x1
    stw 3, 0x254(30)
    lwz 3, 0x254(30)
    clrlwi 3, 3, 30
    stw 3, 0x254(30)
    lwz 3, 0x254(30)
    mulli 3, 3, 0xc
    add 3, 30, 3
    lfs 0, 0x2b8(3)
    stfs 0, 0x294(30)
    lwz 3, 0x254(30)
    mulli 3, 3, 0xc
    add 3, 30, 3
    lfs 0, 0x2bc(3)
    stfs 0, 0x298(30)
    stw 0, 0x230(30)
    .4byte 0x48000B68 # b .L_80163E18
    lwz 29, 0x26c(30)
    cmpwi 29, 0x0
    .4byte 0x41800B5C # blt .L_80163E18
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x418200E8 # beq .L_801633B8
    lfs 0, 0xc(30)
    stfs 0, 0x2ac(31)
    lfs 0, 0x10(30)
    stfs 0, 0x2b0(31)
    lfs 0, 0x14(30)
    stfs 0, 0x2b4(31)
    lhz 3, 0x290(30)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x290(31)
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_80163338
    lfs 0, 0x28c(30)
    addi 3, 30, 0x28c
    lhz 4, 0x290(30)
    fctiwz 0, 0
    .4byte 0xC022A7A8 # lfs f1, lbl_8053D748@sda21(r0)
    .4byte 0xC042A790 # lfs f2, lbl_8053D730@sda21(r0)
    .4byte 0xC062A784 # lfs f3, lbl_8053D724@sda21(r0)
    stfd 0, 0x1068(1)
    lwz 0, 0x106c(1)
    add 0, 4, 0
    sth 0, 0x290(30)
    bl fn_801F71A4
L_80163338:
    lwz 4, 0x25c(30)
    lis 5, 0x4330
    lhz 0, 0x290(30)
    lis 3, lbl_8052EBC0@ha
    xoris 4, 4, 0x8000
    stw 5, 0x1068(1)
    .4byte 0xC862A728 # lfd f3, lbl_8053D6C8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    stw 4, 0x106c(1)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC082A784 # lfs f4, lbl_8053D724@sda21(r0)
    lfd 0, 0x1068(1)
    lfsx 1, 4, 0
    fsubs 2, 0, 3
    lfs 0, 0x2ac(31)
    stw 5, 0x1060(1)
    fmuls 2, 4, 2
    fmadds 0, 2, 1, 0
    stfs 0, 0x2ac(31)
    lwz 3, 0x25c(30)
    lhz 0, 0x290(30)
    xoris 3, 3, 0x8000
    lfs 0, 0x2b0(31)
    stw 3, 0x1064(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfd 2, 0x1060(1)
    lfs 1, 0x4(3)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fmadds 0, 2, 1, 0
    stfs 0, 0x2b0(31)
L_801633B8:
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x9
    bl fn_801F2B7C
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820A44 # bne .L_80163E18
    lhz 4, 0x290(30)
    lis 0, 0x4330
    stw 0, 0x1068(1)
    addi 3, 30, 0x28c
    .4byte 0xC862A738 # lfd f3, lbl_8053D6D8@sda21(r0)
    stw 4, 0x106c(1)
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    lfd 0, 0x1068(1)
    .4byte 0xC042A790 # lfs f2, lbl_8053D730@sda21(r0)
    fsubs 0, 0, 3
    .4byte 0xC062A7AC # lfs f3, lbl_8053D74C@sda21(r0)
    stfs 0, 0x28c(30)
    bl fn_801F71A4
    lfs 0, 0x28c(30)
    fctiwz 0, 0
    stfd 0, 0x1060(1)
    lwz 0, 0x1064(1)
    sth 0, 0x290(30)
    lhz 0, 0x290(30)
    cmplwi 0, 0x10
    .4byte 0x408009F0 # bge .L_80163E18
    li 0, 0x0
    li 5, 0x1
    sth 0, 0x290(30)
    li 4, 0x4
    li 3, 0xa
    li 0, 0x2
    sth 5, 0x94(31)
    stw 4, 0x258(30)
    stw 3, 0x234(30)
    stw 0, 0x230(30)
    .4byte 0x480009C4 # b .L_80163E18
    lwz 0, 0x258(30)
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_80163478
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x20
    li 5, 0x0
    bl fn_801F0E34
L_80163478:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40810048 # ble .L_801634CC
    lwz 0, 0x258(30)
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_801634CC
    bl GetRoomConfigRecord
    lwz 0, 0x254(30)
    lwz 4, 0x90(30)
    mulli 0, 0, 0x5
    subfic 0, 0, 0x1b
    srw 0, 4, 0
    clrlwi 4, 0, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801634CC
    li 3, 0x0
    li 0, 0x3c
    stw 3, 0x23c(30)
    stw 0, 0x248(30)
L_801634CC:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820944 # bne .L_80163E18
    .4byte 0xC002A7B0 # lfs f0, lbl_8053D750@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x1068(1)
    .4byte 0xC842A728 # lfd f2, lbl_8053D6C8@sda21(r0)
    stfs 0, 0x284(30)
    .4byte 0xC062A764 # lfs f3, lbl_8053D704@sda21(r0)
    lwz 0, 0x25c(30)
    .4byte 0xC002A78C # lfs f0, lbl_8053D72C@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x106c(1)
    lfd 1, 0x1068(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    stfs 1, 0x280(30)
    lfs 2, 0x27c(30)
    lfs 1, 0x280(30)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x418108F0 # bgt .L_80163E18
    lwz 3, 0x248(30)
    addi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x25c(30)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80163550
    lwz 3, 0x248(30)
    addi 0, 3, 0x9
    stw 0, 0x248(30)
L_80163550:
    lwz 0, 0x248(30)
    cmpwi 0, 0x3c
    .4byte 0x408108C0 # ble .L_80163E18
    li 0, 0x4
    lis 4, 0x4
    stw 0, 0x258(30)
    li 0, 0xa
    mr 3, 30
    addi 4, 4, 0x22
    stw 0, 0x234(30)
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002A7A4 # lfs f0, lbl_8053D744@sda21(r0)
    lis 3, 0x19
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    addi 3, 3, 0x660d
    stfs 0, 0x284(30)
    li 0, 0x2
    .4byte 0xC002A724 # lfs f0, lbl_8053D6C4@sda21(r0)
    stfs 1, 0x274(30)
    .4byte 0xC042A79C # lfs f2, lbl_8053D73C@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    lwz 4, 0x254(30)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1068(1)
    lwz 3, 0x106c(1)
    add 3, 3, 4
    addi 3, 3, 0x1
    stw 3, 0x254(30)
    lwz 3, 0x254(30)
    clrlwi 3, 3, 30
    stw 3, 0x254(30)
    lwz 3, 0x254(30)
    mulli 3, 3, 0xc
    add 3, 30, 3
    lfs 0, 0x2b8(3)
    stfs 0, 0x294(30)
    lwz 3, 0x254(30)
    mulli 3, 3, 0xc
    add 3, 30, 3
    lfs 0, 0x2bc(3)
    stfs 0, 0x298(30)
    stw 0, 0x230(30)
    .4byte 0x480007EC # b .L_80163E18
    li 0, 0x5
    li 3, 0xa
    stw 0, 0x258(30)
    li 0, 0x6
    .4byte 0xC002A784 # lfs f0, lbl_8053D724@sda21(r0)
    stw 3, 0x234(30)
    .4byte 0xC022A764 # lfs f1, lbl_8053D704@sda21(r0)
    stfs 0, 0x280(30)
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    stfs 1, 0x278(30)
    stfs 0, 0x274(30)
    lfs 0, 0x2ac(30)
    stfs 0, 0x294(30)
    lfs 0, 0x2b0(30)
    stfs 0, 0x298(30)
    lfs 0, 0x2b4(30)
    stfs 0, 0x29c(30)
    stw 0, 0x230(30)
    lfs 3, 0x294(30)
    addi 3, 30, 0x27c
    lfs 1, 0xc(30)
    lfs 2, 0x298(30)
    lfs 0, 0x10(30)
    fsubs 26, 3, 1
    lfs 1, 0x280(30)
    fsubs 27, 2, 0
    .4byte 0xC042A71C # lfs f2, lbl_8053D6BC@sda21(r0)
    .4byte 0xC062A724 # lfs f3, lbl_8053D6C4@sda21(r0)
    bl fn_801F71A4
    fmuls 1, 27, 27
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    fmadds 4, 26, 26, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80163700
    frsqrte 1, 4
    .4byte 0xC862A768 # lfd f3, lbl_8053D708@sda21(r0)
    .4byte 0xC842A770 # lfd f2, lbl_8053D710@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80163784
L_80163700:
    .4byte 0xC802A778 # lfd f0, lbl_8053D718@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80163718
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80163784
L_80163718:
    stfs 4, 0x2c(1)
    lis 0, 0x7f80
    lwz 4, 0x2c(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80163740
    .4byte 0x40800040 # bge .L_80163770
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80163758
    .4byte 0x48000034 # b .L_80163770
L_80163740:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80163750
    li 0, 0x1
    .4byte 0x48000028 # b .L_80163774
L_80163750:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80163774
L_80163758:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80163768
    li 0, 0x5
    .4byte 0x48000010 # b .L_80163774
L_80163768:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80163774
L_80163770:
    li 0, 0x4
L_80163774:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80163784
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80163784:
    .4byte 0xC002A798 # lfs f0, lbl_8053D738@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080068C # bge .L_80163E18
    lfs 2, 0x280(30)
    lfs 1, 0x27c(30)
    .4byte 0xC002A78C # lfs f0, lbl_8053D72C@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080066C # bge .L_80163E18
    lwz 3, 0x25c(30)
    lis 0, 0x4330
    stw 0, 0x1068(1)
    li 0, 0x7
    xoris 3, 3, 0x8000
    .4byte 0xC822A728 # lfd f1, lbl_8053D6C8@sda21(r0)
    stw 3, 0x106c(1)
    .4byte 0xC042A764 # lfs f2, lbl_8053D704@sda21(r0)
    lfd 0, 0x1068(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x280(30)
    stw 0, 0x230(30)
    .4byte 0x48000634 # b .L_80163E18
    lfs 1, 0x280(30)
    addi 3, 30, 0x27c
    .4byte 0xC042A71C # lfs f2, lbl_8053D6BC@sda21(r0)
    .4byte 0xC062A724 # lfs f3, lbl_8053D6C4@sda21(r0)
    bl fn_801F71A4
    lwz 3, 0x25c(30)
    lis 0, 0x4330
    stw 0, 0x1068(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842A728 # lfd f2, lbl_8053D6C8@sda21(r0)
    stw 0, 0x106c(1)
    .4byte 0xC062A764 # lfs f3, lbl_8053D704@sda21(r0)
    lfd 1, 0x1068(1)
    .4byte 0xC002A78C # lfs f0, lbl_8053D72C@sda21(r0)
    fsubs 1, 1, 2
    lfs 2, 0x27c(30)
    fmadds 0, 3, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x408005E8 # bge .L_80163E18
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800024 # bge .L_80163860
    .4byte 0xC022A724 # lfs f1, lbl_8053D6C4@sda21(r0)
    addi 4, 30, 0xc
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 5, 0x2
    fmr 2, 1
    li 6, 0x0
    lwz 3, 0x20(3)
    bl fn_802F601C
L_80163860:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x21
    li 5, 0x0
    bl fn_801F0E34
    li 29, 0x0
    li 28, 0x0
    lis 31, 0x504f
L_80163880:
    lfs 0, 0xc(30)
    stfs 0, 0x50(1)
    lfs 0, 0x10(30)
    stfs 0, 0x54(1)
    lfs 0, 0x14(30)
    stfs 0, 0x58(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(30)
    addi 4, 31, 0x4f48
    addi 6, 1, 0x50
    ori 7, 29, 0xa
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 28, 28, 0x1
    addis 29, 29, 0x2b
    cmpwi 28, 0x6
    subi 29, 29, 0x5600
    .4byte 0x4180FFB8 # blt .L_80163880
    lwz 4, 0x25c(30)
    lis 0, 0x4330
    stw 0, 0x1068(1)
    li 3, 0x14
    xoris 0, 4, 0x8000
    .4byte 0xC822A728 # lfd f1, lbl_8053D6C8@sda21(r0)
    stw 0, 0x106c(1)
    li 0, 0x8
    .4byte 0xC042A764 # lfs f2, lbl_8053D704@sda21(r0)
    lfd 0, 0x1068(1)
    .4byte 0xC062A7A0 # lfs f3, lbl_8053D740@sda21(r0)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fmuls 0, 3, 0
    stfs 0, 0x27c(30)
    stw 3, 0x23c(30)
    stw 0, 0x230(30)
    .4byte 0x48000508 # b .L_80163E18
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x408204FC # bne .L_80163E18
    li 0, 0x4
    lis 3, 0x19
    stw 0, 0x258(30)
    li 4, 0xa
    addi 0, 3, 0x660d
    .4byte 0xC042A724 # lfs f2, lbl_8053D6C4@sda21(r0)
    stw 4, 0x234(30)
    .4byte 0xC082A79C # lfs f4, lbl_8053D73C@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002A758 # lfs f0, lbl_8053D6F8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x254(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 3, 0xc(1)
    fsubs 2, 3, 2
    fmuls 2, 4, 2
    fctiwz 2, 2
    stfd 2, 0x1068(1)
    lwz 0, 0x106c(1)
    add 3, 0, 3
    addi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    clrlwi 0, 0, 30
    stw 0, 0x254(30)
    stfs 1, 0x274(30)
    stfs 0, 0x278(30)
    lwz 0, 0x25c(30)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801639C0
    .4byte 0xC002A764 # lfs f0, lbl_8053D704@sda21(r0)
    stfs 0, 0x278(30)
L_801639C0:
    lwz 3, 0x254(30)
    lis 0, 0x4330
    stw 0, 0x1068(1)
    li 0, 0x2
    mulli 3, 3, 0xc
    .4byte 0xC822A728 # lfd f1, lbl_8053D6C8@sda21(r0)
    .4byte 0xC042A764 # lfs f2, lbl_8053D704@sda21(r0)
    add 3, 30, 3
    lfs 0, 0x2b8(3)
    stfs 0, 0x294(30)
    lwz 3, 0x254(30)
    mulli 3, 3, 0xc
    add 3, 30, 3
    lfs 0, 0x2bc(3)
    stfs 0, 0x298(30)
    lwz 3, 0x25c(30)
    xoris 3, 3, 0x8000
    stw 3, 0x106c(1)
    lfd 0, 0x1068(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x27c(30)
    stw 0, 0x230(30)
    .4byte 0x480003FC # b .L_80163E18
    lfs 0, 0x2ac(30)
    li 6, 0x1
    .4byte 0xC042A764 # lfs f2, lbl_8053D704@sda21(r0)
    li 5, 0x6
    stfs 0, 0x294(30)
    li 4, 0xa
    .4byte 0xC022A724 # lfs f1, lbl_8053D6C4@sda21(r0)
    li 3, 0x64
    lfs 3, 0x2b0(30)
    li 0, 0x0
    .4byte 0xC002A7A4 # lfs f0, lbl_8053D744@sda21(r0)
    stfs 3, 0x298(30)
    lfs 3, 0x2b4(30)
    stfs 3, 0x29c(30)
    .4byte 0x90CD8F98 # stw r6, lbl_8053AB58@sda21(r0)
    stfs 2, 0x27c(30)
    stfs 1, 0x280(30)
    stfs 0, 0x284(30)
    stw 5, 0x258(30)
    stw 4, 0x234(30)
    stw 3, 0x238(30)
    stw 0, 0x244(30)
    stw 4, 0x230(30)
    lfs 1, 0x280(30)
    addi 3, 30, 0x27c
    .4byte 0xC042A78C # lfs f2, lbl_8053D72C@sda21(r0)
    lfs 3, 0x284(30)
    bl fn_801F71A4
    lfs 2, 0x27c(30)
    lfs 1, 0x280(30)
    .4byte 0xC002A78C # lfs f0, lbl_8053D72C@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080036C # bge .L_80163E18
    bl SpatialRegistry_GetBase
    lis 4, 0x504f
    lwz 5, 0x4(30)
    addi 4, 4, 0x4f48
    addi 6, 1, 0x5c
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0x5c
    li 0, 0x1
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_80163AFC
L_80163AE0:
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80163AF4
    .4byte 0x41820008 # beq .L_80163AF4
    stw 0, 0x234(3)
L_80163AF4:
    addi 4, 4, 0x4
    .4byte 0x4200FFE8 # bdnz .L_80163AE0
L_80163AFC:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000308 # b .L_80163E18
    lwz 0, 0x2e8(30)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80163B4C
    lwz 3, 0x4(30)
    addi 4, 30, 0x2ac
    lfs 1, 0x288(30)
    li 5, 0x53
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2e8(30)
L_80163B4C:
    li 0, 0xd
    stw 0, 0x230(30)
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80163BBC
    lfs 0, 0x2ac(30)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042A7B4 # lfs f2, lbl_8053D754@sda21(r0)
    stfs 0, 0xc(30)
    li 0, 0x3
    .4byte 0xC022A7B8 # lfs f1, lbl_8053D758@sda21(r0)
    lfs 0, 0x2b0(30)
    stfs 0, 0x10(30)
    lfs 0, 0x2b4(30)
    stfs 0, 0x14(30)
    lhz 3, 0x290(30)
    rlwinm 3, 3, 30, 18, 28
    lfsx 0, 4, 3
    fmuls 0, 2, 0
    stfs 0, 0x3c(30)
    lhz 3, 0x290(30)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(30)
    stw 0, 0x234(30)
L_80163BBC:
    psq_l 1, 0xc(30), 0, 0
    mr 3, 30
    psq_l 0, 0x3c(30), 0, 0
    li 5, -0x1
    li 6, 0x9
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 4, 0x114(30)
    bl fn_801F2B7C
    lwz 3, 0x2e8(30)
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_80163C2C
    addi 4, 30, 0x2ac
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lhz 0, 0x290(30)
    li 3, 0x0
    lwz 6, 0x2e8(30)
    li 5, -0x8000
    extsh 4, 0
    addi 6, 6, 0x68
    bl fn_800EF008
L_80163C2C:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x11
    li 5, 0x0
    bl fn_801F0E34
    lhz 0, 0x94(30)
    cmplwi 0, 0x1
    .4byte 0x408201D0 # bne .L_80163E18
    lwz 4, 0x2e8(30)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80163C6C
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80163C6C:
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x480001A4 # b .L_80163E18
    li 0, 0x64
    li 3, 0x1f4
    stw 0, 0x238(30)
    li 0, 0xf
    stw 3, 0x23c(30)
    stw 0, 0x230(30)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 30, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_80163DD0
    .4byte 0xC022A7BC # lfs f1, lbl_8053D75C@sda21(r0)
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    stfs 1, 0x2a4(30)
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_80163CD4
    lfs 1, 0x44(30)
    .4byte 0xC002A724 # lfs f0, lbl_8053D6C4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
L_80163CD4:
    lfs 1, 0x14(30)
    .4byte 0xC002A720 # lfs f0, lbl_8053D6C0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082007C # bne .L_80163D60
    stfs 0, 0x14(30)
    lis 4, 0x5
    .4byte 0xC002A7C0 # lfs f0, lbl_8053D760@sda21(r0)
    mr 3, 30
    addi 4, 4, 0x86
    li 5, 0x0
    stfs 0, 0x44(30)
    bl fn_801F0E34
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A724 # lfs f1, lbl_8053D6C4@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002A71C # lfs f0, lbl_8053D6BC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80163D58
    stfs 0, 0x2a0(30)
    .4byte 0x4800000C # b .L_80163D60
L_80163D58:
    .4byte 0xC002A7BC # lfs f0, lbl_8053D75C@sda21(r0)
    stfs 0, 0x2a0(30)
L_80163D60:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_80163DA4
    lwz 4, 0x244(30)
    lis 3, lbl_804A0430@ha
    li 0, 0x8
    addi 4, 4, 0x1
    addi 3, 3, lbl_804A0430@l
    stw 4, 0x244(30)
    lwz 4, 0x244(30)
    clrlwi 4, 4, 30
    stw 4, 0x244(30)
    stw 0, 0x234(30)
    lwz 0, 0x244(30)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x258(30)
L_80163DA4:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80163DC8
    .4byte 0xC022A720 # lfs f1, lbl_8053D6C0@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80163DD0
L_80163DC8:
    li 0, 0x0
    stb 0, 0x11c(30)
L_80163DD0:
    lfs 1, 0x2a0(30)
    addi 3, 30, 0x3c
    .4byte 0xC042A790 # lfs f2, lbl_8053D730@sda21(r0)
    .4byte 0xC062A724 # lfs f3, lbl_8053D6C4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2a4(30)
    addi 3, 30, 0x40
    .4byte 0xC042A790 # lfs f2, lbl_8053D730@sda21(r0)
    .4byte 0xC062A724 # lfs f3, lbl_8053D6C4@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
L_80163E18:
    li 0, 0x10d8
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x10d0(1)
    li 0, 0x10c8
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x10c0(1)
    li 0, 0x10b8
    psq_lx 29, 1, 0, 0, 0
    lfd 29, 0x10b0(1)
    li 0, 0x10a8
    psq_lx 28, 1, 0, 0, 0
    lfd 28, 0x10a0(1)
    li 0, 0x1098
    psq_lx 27, 1, 0, 0, 0
    lfd 27, 0x1090(1)
    li 0, 0x1088
    psq_lx 26, 1, 0, 0, 0
    lfd 26, 0x1080(1)
    lwz 31, 0x107c(1)
    lwz 30, 0x1078(1)
    lwz 29, 0x1074(1)
    lwz 0, 0x10e4(1)
    lwz 28, 0x1070(1)
    mtlr 0
    addi 1, 1, 0x10e0
    blr

fn_80163E80:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x0
    .4byte 0xC042A7C4 # lfs f2, lbl_8053D764@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x5
    .4byte 0xC022A7C8 # lfs f1, lbl_8053D768@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC002A724 # lfs f0, lbl_8053D6C4@sda21(r0)
    sth 6, 0x94(3)
    lis 3, lbl_804A0410@ha
    .4byte 0xC062A7A4 # lfs f3, lbl_8053D744@sda21(r0)
    addi 5, 3, lbl_804A0410@l
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    .4byte 0xC042A720 # lfs f2, lbl_8053D6C0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    .4byte 0xC022A758 # lfs f1, lbl_8053D6F8@sda21(r0)
    stw 6, 0x244(31)
    stw 6, 0x248(31)
    stw 6, 0x24c(31)
    stw 6, 0x250(31)
    stw 6, 0x234(31)
    stw 6, 0x238(31)
    stw 6, 0x23c(31)
    stw 6, 0x240(31)
    stw 6, 0x258(31)
    stw 0, 0x25c(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 3, 0x284(31)
    stfs 2, 0x274(31)
    stfs 1, 0x278(31)
    stw 6, 0x254(31)
    stfs 2, 0x2a8(31)
    stfs 2, 0x2a4(31)
    stfs 2, 0x2a0(31)
    lfs 1, 0xc(31)
    stfs 1, 0x294(31)
    lfs 1, 0x10(31)
    stfs 1, 0x298(31)
    lfs 1, 0x14(31)
    stfs 1, 0x29c(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2ac(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2b0(31)
    lfs 1, 0x14(31)
    stfs 1, 0x2b4(31)
    stw 6, 0x260(31)
    stfs 2, 0x288(31)
    stfs 2, 0x28c(31)
    .4byte 0x90CD8F98 # stw r6, lbl_8053AB58@sda21(r0)
    stw 6, 0x2e8(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2b8(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2bc(31)
    lfs 1, 0x14(31)
    stfs 1, 0x2c0(31)
    lfs 2, 0x2b8(31)
    lfs 1, 0x0(5)
    fadds 1, 2, 1
    stfs 1, 0x2b8(31)
    lfs 2, 0x2bc(31)
    lfs 1, 0x4(5)
    fadds 1, 2, 1
    stfs 1, 0x2bc(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2c4(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2c8(31)
    lfs 1, 0x14(31)
    stfs 1, 0x2cc(31)
    lfs 2, 0x2c4(31)
    lfs 1, 0x8(5)
    fadds 1, 2, 1
    stfs 1, 0x2c4(31)
    lfs 2, 0x2c8(31)
    lfs 1, 0xc(5)
    fadds 1, 2, 1
    stfs 1, 0x2c8(31)
    lfs 1, 0xc(31)
    li 4, -0x1
    li 3, 0x1
    li 0, 0x2710
    stfs 1, 0x2d0(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2d4(31)
    lfs 1, 0x14(31)
    stfs 1, 0x2d8(31)
    lfs 2, 0x2d0(31)
    lfs 1, 0x10(5)
    fadds 1, 2, 1
    stfs 1, 0x2d0(31)
    lfs 2, 0x2d4(31)
    lfs 1, 0x14(5)
    fadds 1, 2, 1
    stfs 1, 0x2d4(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2dc(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2e0(31)
    lfs 1, 0x14(31)
    stfs 1, 0x2e4(31)
    lfs 2, 0x2dc(31)
    lfs 1, 0x18(5)
    fadds 1, 2, 1
    stfs 1, 0x2dc(31)
    lfs 2, 0x2e0(31)
    lfs 1, 0x1c(5)
    fadds 1, 2, 1
    stfs 1, 0x2e0(31)
    stw 4, 0x2ec(31)
    stw 4, 0x2f0(31)
    stw 6, 0x2f4(31)
    stw 6, 0x2f8(31)
    stw 6, 0x2fc(31)
    stw 4, 0x26c(31)
    sth 6, 0x290(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 5, 25
    stw 4, 0x270(31)
    stb 3, 0x196(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 30
    stw 3, 0x268(31)
    stw 0, 0x108(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x1
    .4byte 0x41820038 # beq .L_801640C8
    .4byte 0x40800010 # bge .L_801640A4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801640B0
    .4byte 0x48000064 # b .L_80164104
L_801640A4:
    cmpwi 0, 0x3
    .4byte 0x4080005C # bge .L_80164104
    .4byte 0x48000050 # b .L_801640FC
L_801640B0:
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000040 # b .L_80164104
L_801640C8:
    lis 3, 0x1
    .4byte 0xC042A7CC # lfs f2, lbl_8053D76C@sda21(r0)
    addi 0, 3, -0x8000
    .4byte 0xC022A7D0 # lfs f1, lbl_8053D770@sda21(r0)
    sth 0, 0x290(31)
    li 0, 0xc
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x288(31)
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_80164104
L_801640FC:
    li 0, 0xe
    stw 0, 0x230(31)
L_80164104:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80164118:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820050 # beq .L_80164184
    lis 3, lbl_804A0440@ha
    addi 0, 3, lbl_804A0440@l
    stw 0, 0x0(30)
    lwz 3, 0x2e8(30)
    bl fn_801EE434
    lwz 0, 0x268(30)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_80164168
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    bl fn_8022ADCC
L_80164168:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80164184
    mr 3, 30
    bl dtor_80084580
L_80164184:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801641A0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C02A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C02A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801641F0
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
L_801641F0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80164228
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
L_80164228:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80164260
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
L_80164260:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80164298
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
L_80164298:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801642D0
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
L_801642D0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80164308
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
L_80164308:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80164340
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
L_80164340:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80164378
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
L_80164378:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801643B0
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
L_801643B0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_801616AC
    .4byte fn_801641A0

