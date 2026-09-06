# Fresh project-wide gap hunt continuation: 19 functions, 12,364 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_80006F1C
etb_80006F1C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006F1C, 8

.global etb_80006F24
etb_80006F24:
    .4byte 0x2B0A0000
    .4byte 0x00000000
.size etb_80006F24, 8

.global etb_80006F2C
etb_80006F2C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80006F2C, 8

.global etb_80006F34
etb_80006F34:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006F34, 8

.global etb_80006F3C
etb_80006F3C:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_80006F3C, 8

.global etb_80006F44
etb_80006F44:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006F44, 8

.global etb_80006F4C
etb_80006F4C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006F4C, 8

.global etb_80006F54
etb_80006F54:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006F54, 8

.global etb_80006F5C
etb_80006F5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006F5C, 8

.global etb_80006F64
etb_80006F64:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006F64, 8

.global etb_80006F6C
etb_80006F6C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006F6C, 8

.global etb_80006F74
etb_80006F74:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006F74, 8

.global etb_80006F7C
etb_80006F7C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006F7C, 8

.global etb_80006F84
etb_80006F84:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006F84, 8

.section extabindex, "a"
.balign 4
.global eti_80013A38
eti_80013A38:
    .4byte fn_80158400
    .4byte 0x00000224
    .4byte etb_80006F1C
.size eti_80013A38, 12

.global eti_80013A44
eti_80013A44:
    .4byte fn_80158624
    .4byte 0x00000518
    .4byte etb_80006F24
.size eti_80013A44, 12

.global eti_80013A50
eti_80013A50:
    .4byte fn_80158B5C
    .4byte 0x0000032C
    .4byte etb_80006F2C
.size eti_80013A50, 12

.global eti_80013A5C
eti_80013A5C:
    .4byte fn_80158E88
    .4byte 0x000000E8
    .4byte etb_80006F34
.size eti_80013A5C, 12

.global eti_80013A68
eti_80013A68:
    .4byte fn_80158F70
    .4byte 0x000003C0
    .4byte etb_80006F3C
.size eti_80013A68, 12

.global eti_80013A74
eti_80013A74:
    .4byte fn_80159330
    .4byte 0x0000012C
    .4byte etb_80006F44
.size eti_80013A74, 12

.global eti_80013A80
eti_80013A80:
    .4byte fn_80159484
    .4byte 0x00000064
    .4byte etb_80006F4C
.size eti_80013A80, 12

.global eti_80013A8C
eti_80013A8C:
    .4byte fn_801594E8
    .4byte 0x000000AC
    .4byte etb_80006F54
.size eti_80013A8C, 12

.global eti_80013A98
eti_80013A98:
    .4byte fn_80159594
    .4byte 0x00000224
    .4byte etb_80006F5C
.size eti_80013A98, 12

.global eti_80013AA4
eti_80013AA4:
    .4byte fn_801597C0
    .4byte 0x0000002C
    .4byte etb_80006F64
.size eti_80013AA4, 12

.global eti_80013AB0
eti_80013AB0:
    .4byte fn_801597EC
    .4byte 0x000002B4
    .4byte etb_80006F6C
.size eti_80013AB0, 12

.global eti_80013ABC
eti_80013ABC:
    .4byte fn_80159AA0
    .4byte 0x00000188
    .4byte etb_80006F74
.size eti_80013ABC, 12

.global eti_80013AC8
eti_80013AC8:
    .4byte fn_80159C28
    .4byte 0x0000074C
    .4byte etb_80006F7C
.size eti_80013AC8, 12

.global eti_80013AD4
eti_80013AD4:
    .4byte fn_8015A374
    .4byte 0x000010AC
    .4byte etb_80006F84
.size eti_80013AD4, 12

.text
.balign 4
.global fn_801583D4
.global fn_801583E4
.global fn_80158400
.global fn_80158624
.global fn_80158B3C
.global fn_80158B5C
.global fn_80158E88
.global fn_80158F70
.global fn_80159330
.global fn_8015945C
.global fn_80159484
.global fn_801594E8
.global fn_80159594
.global fn_801597B8
.global fn_801597C0
.global fn_801597EC
.global fn_80159AA0
.global fn_80159C28
.global fn_8015A374

fn_801583D4:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_801583E4:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr

fn_80158400:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BFA60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BFA60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80158450
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
L_80158450:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80158488
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
L_80158488:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801584C0
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
L_801584C0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801584F8
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
L_801584F8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80158530
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
L_80158530:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80158568
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
L_80158568:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801585A0
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
L_801585A0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801585D8
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
L_801585D8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80158610
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
L_80158610:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80158624:
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
    stfd 27, 0x130(1)
    psq_st 27, 0x138(1), 0, 0
    stfd 26, 0x120(1)
    psq_st 26, 0x128(1), 0, 0
    stfd 25, 0x110(1)
    psq_st 25, 0x118(1), 0, 0
    stfd 24, 0x100(1)
    psq_st 24, 0x108(1), 0, 0
    stfd 23, 0xf0(1)
    psq_st 23, 0xf8(1), 0, 0
    stfd 22, 0xe0(1)
    psq_st 22, 0xe8(1), 0, 0
    stfd 21, 0xd0(1)
    psq_st 21, 0xd8(1), 0, 0
    stfd 20, 0xc0(1)
    psq_st 20, 0xc8(1), 0, 0
    stmw 27, 0xac(1)
    lbz 0, 0xc(3)
    fmr 27, 1
    mr 30, 4
    mr 27, 5
    cmplwi 0, 0xff
    mr 28, 6
    .4byte 0x4080041C # bge .L_80158AC8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B438
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xb
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xb
    li 5, 0x1
    li 6, 0x5
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x2
    bl fn_8005D404
    li 3, 0x1
    bl fn_8005D3C8
    li 3, 0x0
    bl fn_8005B93C
    lwz 0, 0x0(28)
    addi 4, 1, 0x8
    li 3, 0x1
    stw 0, 0x8(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0xff
    li 5, 0xff
    li 6, 0x4
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0xf
    li 5, 0x2
    li 6, 0xa
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x7
    li 5, 0x1
    li 6, 0x5
    li 7, 0x7
    bl fn_8005EAB0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    bl fn_8005F11C
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x1
    bl fn_8005F56C
    li 3, 0x7
    li 4, 0x0
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x1
    bl fn_8005F50C
    li 3, 0x2
    bl fn_8005C46C
    li 3, 0xa0
    li 4, 0x0
    li 5, 0x22
    bl fn_8005C24C
    lfs 0, 0x0(30)
    lis 31, 0xcc01
    lfs 1, 0x4(30)
    li 0, 0x0
    stfs 0, -0x8000(31)
    li 29, 0x0
    lfs 0, 0x8(30)
    lis 30, 0x4330
    stfs 1, -0x8000(31)
    .4byte 0xC3E2A490 # lfs f31, lbl_8053D430@sda21(r0)
    stfs 0, -0x8000(31)
    .4byte 0xCBC2A4A8 # lfd f30, lbl_8053D448@sda21(r0)
    stb 0, -0x8000(31)
    .4byte 0xC342A494 # lfs f26, lbl_8053D434@sda21(r0)
    stb 0, -0x8000(31)
    .4byte 0xC322A498 # lfs f25, lbl_8053D438@sda21(r0)
    stb 0, -0x8000(31)
    .4byte 0xC302A49C # lfs f24, lbl_8053D43C@sda21(r0)
    stb 0, -0x8000(31)
    .4byte 0xC2E2A4A0 # lfs f23, lbl_8053D440@sda21(r0)
    .4byte 0xC2C2A4A4 # lfs f22, lbl_8053D444@sda21(r0)
    psq_l 28, 0x0(27), 0, 0
    psq_l 29, 0x8(27), 1, 0
L_80158894:
    xoris 0, 29, 0x8000
    stw 30, 0xa0(1)
    stw 0, 0xa4(1)
    lfd 0, 0xa0(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 26
    fmuls 0, 31, 0
    fmuls 21, 0, 25
    fmr 1, 21
    bl sin
    frsp 20, 1
    fmr 1, 21
    bl cos
    frsp 1, 1
    stfs 20, 0x7c(1)
    fneg 0, 20
    addi 3, 1, 0x6c
    stfs 24, 0x94(1)
    addi 4, 1, 0x18
    stfs 1, 0x6c(1)
    addi 5, 1, 0x30
    stfs 0, 0x70(1)
    stfs 1, 0x80(1)
    stfs 23, 0x90(1)
    stfs 23, 0x84(1)
    stfs 23, 0x8c(1)
    stfs 23, 0x74(1)
    stfs 23, 0x78(1)
    stfs 23, 0x88(1)
    stfs 23, 0x98(1)
    stfs 23, 0x18(1)
    stfs 27, 0x1c(1)
    stfs 23, 0x20(1)
    bl PSMTXMultVec
    lfs 0, 0x34(1)
    addi 29, 29, 0x1
    psq_l 1, 0x38(1), 1, 0
    cmpwi 29, 0x21
    fmuls 0, 0, 22
    lbz 0, 0x3(28)
    ps_add 1, 1, 29
    stfs 0, 0x34(1)
    psq_l 0, 0x30(1), 0, 0
    psq_st 1, 0x38(1), 1, 0
    ps_add 0, 0, 28
    psq_st 0, 0x30(1), 0, 0
    lfs 0, 0x30(1)
    stfs 0, -0x8000(31)
    lfs 0, 0x34(1)
    stfs 0, -0x8000(31)
    lfs 0, 0x38(1)
    stfs 0, -0x8000(31)
    stb 0, -0x8000(31)
    stb 0, -0x8000(31)
    stb 0, -0x8000(31)
    stb 0, -0x8000(31)
    .4byte 0x4180FF20 # blt .L_80158894
    li 3, 0xa0
    li 4, 0x0
    li 5, 0x22
    bl fn_8005C24C
    lfs 0, 0x0(27)
    lis 30, 0xcc01
    lfs 1, 0x4(27)
    li 29, 0x0
    stfs 0, -0x8000(30)
    lis 31, 0x4330
    lfs 0, 0x8(27)
    stfs 1, -0x8000(30)
    lbz 0, 0x3(28)
    stfs 0, -0x8000(30)
    .4byte 0xC3C2A490 # lfs f30, lbl_8053D430@sda21(r0)
    stb 0, -0x8000(30)
    .4byte 0xCBE2A4A8 # lfd f31, lbl_8053D448@sda21(r0)
    stb 0, -0x8000(30)
    .4byte 0xC2C2A494 # lfs f22, lbl_8053D434@sda21(r0)
    stb 0, -0x8000(30)
    .4byte 0xC2E2A498 # lfs f23, lbl_8053D438@sda21(r0)
    stb 0, -0x8000(30)
    .4byte 0xC302A49C # lfs f24, lbl_8053D43C@sda21(r0)
    .4byte 0xC322A4A0 # lfs f25, lbl_8053D440@sda21(r0)
    .4byte 0xC342A4A4 # lfs f26, lbl_8053D444@sda21(r0)
    psq_l 29, 0x0(27), 0, 0
    psq_l 28, 0x8(27), 1, 0
L_801589E4:
    xoris 0, 29, 0x8000
    stw 31, 0xa0(1)
    stw 0, 0xa4(1)
    lfd 0, 0xa0(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 22
    fmuls 0, 30, 0
    fmuls 21, 0, 23
    fmr 1, 21
    bl sin
    frsp 20, 1
    fmr 1, 21
    bl cos
    frsp 1, 1
    stfs 20, 0x4c(1)
    fneg 0, 20
    addi 3, 1, 0x3c
    stfs 24, 0x64(1)
    addi 4, 1, 0xc
    stfs 1, 0x3c(1)
    addi 5, 1, 0x24
    stfs 0, 0x40(1)
    stfs 1, 0x50(1)
    stfs 25, 0x60(1)
    stfs 25, 0x54(1)
    stfs 25, 0x5c(1)
    stfs 25, 0x44(1)
    stfs 25, 0x48(1)
    stfs 25, 0x58(1)
    stfs 25, 0x68(1)
    stfs 25, 0xc(1)
    stfs 27, 0x10(1)
    stfs 25, 0x14(1)
    bl PSMTXMultVec
    lfs 0, 0x28(1)
    addi 29, 29, 0x1
    psq_l 1, 0x2c(1), 1, 0
    cmpwi 29, 0x21
    fmuls 0, 0, 26
    lbz 0, 0x3(28)
    ps_add 1, 1, 28
    stfs 0, 0x28(1)
    psq_l 0, 0x24(1), 0, 0
    psq_st 1, 0x2c(1), 1, 0
    ps_add 0, 0, 29
    psq_st 0, 0x24(1), 0, 0
    lfs 0, 0x24(1)
    stfs 0, -0x8000(30)
    lfs 0, 0x28(1)
    stfs 0, -0x8000(30)
    lfs 0, 0x2c(1)
    stfs 0, -0x8000(30)
    stb 0, -0x8000(30)
    stb 0, -0x8000(30)
    stb 0, -0x8000(30)
    stb 0, -0x8000(30)
    .4byte 0x4180FF20 # blt .L_801589E4
L_80158AC8:
    psq_l 31, 0x178(1), 0, 0
    lfd 31, 0x170(1)
    psq_l 30, 0x168(1), 0, 0
    lfd 30, 0x160(1)
    psq_l 29, 0x158(1), 0, 0
    lfd 29, 0x150(1)
    psq_l 28, 0x148(1), 0, 0
    lfd 28, 0x140(1)
    psq_l 27, 0x138(1), 0, 0
    lfd 27, 0x130(1)
    psq_l 26, 0x128(1), 0, 0
    lfd 26, 0x120(1)
    psq_l 25, 0x118(1), 0, 0
    lfd 25, 0x110(1)
    psq_l 24, 0x108(1), 0, 0
    lfd 24, 0x100(1)
    psq_l 23, 0xf8(1), 0, 0
    lfd 23, 0xf0(1)
    psq_l 22, 0xe8(1), 0, 0
    lfd 22, 0xe0(1)
    psq_l 21, 0xd8(1), 0, 0
    lfd 21, 0xd0(1)
    psq_l 20, 0xc8(1), 0, 0
    lfd 20, 0xc0(1)
    lmw 27, 0xac(1)
    lwz 0, 0x184(1)
    mtlr 0
    addi 1, 1, 0x180
    blr

fn_80158B3C:
    li 4, 0xff
    li 0, 0x0
    stb 4, 0x4(3)
    stb 4, 0x5(3)
    stb 4, 0x6(3)
    stb 0, 0x7(3)
    stb 4, 0xc(3)
    blr

fn_80158B5C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    fmr 31, 1
    cmpwi 4, 0x8
    mr 30, 3
    mr 31, 5
    mr 29, 6
    .4byte 0x408002D4 # bge .L_80158E64
    lbz 0, 0xc(30)
    cmplwi 0, 0xff
    .4byte 0x41800014 # blt .L_80158BB0
    lwz 3, 0x4(30)
    addis 0, 3, 0x1
    cmplwi 0, 0xff00
    .4byte 0x418202B8 # beq .L_80158E64
L_80158BB0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B438
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
    lbz 4, 0xe(30)
    cmplwi 4, 0xff
    .4byte 0x4080005C # bge .L_80158CB4
    lbz 0, 0x3(29)
    lis 3, 0x8081
    subi 5, 3, 0x7f7f
    lbz 8, 0x0(29)
    mullw 0, 0, 4
    lbz 7, 0x1(29)
    lbz 6, 0x2(29)
    addi 4, 1, 0x10
    stb 8, 0xc(1)
    li 3, 0x1
    mulhw 5, 5, 0
    stb 7, 0xd(1)
    stb 6, 0xe(1)
    add 0, 5, 0
    srawi 0, 0, 7
    srwi 5, 0, 31
    add 0, 0, 5
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x10(1)
    bl fn_8005EBC4
    .4byte 0x48000018 # b .L_80158CC8
L_80158CB4:
    lwz 0, 0x0(29)
    addi 4, 1, 0x8
    li 3, 0x1
    stw 0, 0x8(1)
    bl fn_8005EBC4
L_80158CC8:
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0xf
    li 5, 0x2
    li 6, 0x8
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x7
    li 5, 0x1
    li 6, 0x4
    li 7, 0x7
    bl fn_8005EAB0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x1
    bl fn_8005EDE8
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8005EE30
    li 3, 0x1
    bl fn_8005F11C
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x1
    bl fn_8005F56C
    li 3, 0x7
    li 4, 0x0
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    li 3, 0x0
    bl fn_8005F4E0
    li 3, 0x1
    bl fn_8005F50C
    li 3, 0x0
    bl fn_8005C46C
    lwz 3, 0x8(30)
    li 4, 0x0
    bl fn_80092984
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    lfs 0, 0x0(31)
    lis 3, 0xcc01
    lfs 4, 0x8(31)
    fsubs 3, 0, 31
    lfs 5, 0x4(31)
    fadds 6, 4, 31
    .4byte 0xC042A4B0 # lfs f2, lbl_8053D450@sda21(r0)
    fadds 1, 0, 31
    .4byte 0xC002A49C # lfs f0, lbl_8053D43C@sda21(r0)
    stfs 3, -0x8000(3)
    fsubs 4, 4, 31
    stfs 5, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 0, -0x8000(3)
L_80158E64:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80158E88:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022A4B4 # lfs f1, lbl_8053D454@sda21(r0)
    lis 3, lbl_804BFB60@ha
    stw 0, 0x24(1)
    addi 3, 3, lbl_804BFB60@l
    fmr 2, 1
    .4byte 0xC062A4B8 # lfs f3, lbl_8053D458@sda21(r0)
    bl fn_8005D150
    .4byte 0xC042A4A0 # lfs f2, lbl_8053D440@sda21(r0)
    lis 3, lbl_804BFB60@ha
    .4byte 0xC022A49C # lfs f1, lbl_8053D43C@sda21(r0)
    addi 3, 3, lbl_804BFB60@l
    fmr 3, 2
    fmr 4, 1
    fmr 5, 2
    fmr 6, 2
    bl fn_8005D134
    .4byte 0x8002A480 # lwz r0, lbl_8053D420@sda21(r0)
    lis 3, lbl_804BFB60@ha
    addi 3, 3, lbl_804BFB60@l
    addi 4, 1, 0x14
    stw 0, 0x14(1)
    bl fn_8005D160
    lis 3, lbl_804BFB60@ha
    li 4, 0x1
    addi 3, 3, lbl_804BFB60@l
    bl fn_8005D16C
    .4byte 0xC022A4B8 # lfs f1, lbl_8053D458@sda21(r0)
    lis 3, lbl_804BFB60@ha
    .4byte 0xC042A4B4 # lfs f2, lbl_8053D454@sda21(r0)
    addi 3, 3, lbl_804BFB60@l
    fmr 3, 1
    bl fn_8005D150
    .4byte 0x8002A484 # lwz r0, lbl_8053D424@sda21(r0)
    lis 3, lbl_804BFB60@ha
    addi 3, 3, lbl_804BFB60@l
    addi 4, 1, 0x10
    stw 0, 0x10(1)
    bl fn_8005D160
    lis 3, lbl_804BFB60@ha
    li 4, 0x2
    addi 3, 3, lbl_804BFB60@l
    bl fn_8005D16C
    .4byte 0x8002A488 # lwz r0, lbl_8053D428@sda21(r0)
    addi 4, 1, 0xc
    li 3, 0x4
    stw 0, 0xc(1)
    bl fn_8005D1E8
    .4byte 0x8002A48C # lwz r0, lbl_8053D42C@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x4
    stw 0, 0x8(1)
    bl fn_8005D2D8
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80158F70:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 3, 0x4(3)
    addis 0, 3, 0x1
    cmplwi 0, 0xff00
    .4byte 0x40820010 # bne .L_80158FB0
    lbz 0, 0xc(31)
    cmplwi 0, 0xff
    .4byte 0x40800360 # bge .L_8015930C
L_80158FB0:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x18(1)
    lwz 4, 0x4(3)
    stw 0, 0x20(1)
    lhz 3, 0x4(4)
    lhz 0, 0x6(4)
    xoris 3, 3, 0x8000
    .4byte 0xC842A4A8 # lfd f2, lbl_8053D448@sda21(r0)
    xoris 0, 0, 0x8000
    stw 3, 0x1c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 0, 0x24(1)
    lfd 1, 0x18(1)
    lfd 0, 0x20(1)
    fsubs 31, 1, 2
    fsubs 30, 0, 2
    bl fn_8013B460
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
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
    bl fn_8005B93C
    li 3, 0x0
    li 4, 0xff
    li 5, 0xff
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
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
    li 3, 0x1
    bl fn_8005F11C
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x1
    bl fn_8005F56C
    li 3, 0x7
    li 4, 0x0
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    li 3, 0x0
    bl fn_8005C46C
    lbz 5, 0xc(31)
    cmplwi 5, 0xff
    .4byte 0x408000C0 # bge .L_801591B4
    .4byte 0x80020F88 # lwz r0, lbl_80543F28@sda21(r0)
    addi 4, 1, 0x10
    li 3, 0x1
    stw 0, 0xc(1)
    stb 5, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x10(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0xf
    li 5, 0xf
    li 6, 0xf
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x1
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x0
    bl fn_8005F4E0
    li 3, 0x1
    bl fn_8005F50C
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A4A0 # lfs f0, lbl_8053D440@sda21(r0)
    lis 3, 0xcc01
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
L_801591B4:
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    lwz 3, 0x4(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xff00
    .4byte 0x418200C4 # beq .L_80159294
    stw 3, 0x8(1)
    addi 4, 1, 0x8
    li 3, 0x1
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0xf
    li 5, 0xf
    li 6, 0xf
    li 7, 0x2
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x1
    bl fn_8005EAB0
    lbz 0, 0xd(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80159238
    li 3, 0x1
    li 4, 0x2
    li 5, 0x6
    li 6, 0xf
    bl fn_8005F48C
    .4byte 0x48000018 # b .L_8015924C
L_80159238:
    li 3, 0x1
    li 4, 0x4
    li 5, 0x2
    li 6, 0xf
    bl fn_8005F48C
L_8015924C:
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A4A0 # lfs f0, lbl_8053D440@sda21(r0)
    lis 3, 0xcc01
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
L_80159294:
    lbz 0, 0xc(31)
    cmplwi 0, 0xff
    .4byte 0x40800070 # bge .L_8015930C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x6
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A4A0 # lfs f0, lbl_8053D440@sda21(r0)
    lis 3, 0xcc01
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
L_8015930C:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 0, 0x54(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80159330:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4c(4)
    subfic 0, 3, 0xc
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x408200F0 # bne .L_80159448
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_801593B4
    cmpwi 3, 0x7
    li 0, 0x0
    .4byte 0x4182002C # beq .L_8015939C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8015939C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8015939C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8015939C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8015939C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_801593A0
L_8015939C:
    li 0, 0x1
L_801593A0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000054 # b .L_80159404
L_801593B4:
    cmpwi 3, 0x7
    li 0, 0x0
    .4byte 0x41820034 # beq .L_801593F0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_801593F0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_801593F0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_801593F0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_801593F0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_801593F0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_801593F4
L_801593F0:
    li 0, 0x1
L_801593F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80159404:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8015941C
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_80159440
L_8015941C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80159440
    lbz 0, 0x96(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80159440
    li 0, 0x0
    stb 0, 0xd(31)
L_80159440:
    li 0, 0xff
    stb 0, 0xe(31)
L_80159448:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8015945C:
    li 4, 0xff
    li 0, 0x0
    stb 4, 0x4(3)
    stb 4, 0x5(3)
    stb 4, 0x6(3)
    stb 0, 0x7(3)
    stb 4, 0xc(3)
    stb 0, 0xd(3)
    stb 4, 0xe(3)
    blr

fn_80159484:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182002C # beq .L_801594CC
    lis 3, lbl_804A0160@ha
    li 4, 0x1
    addi 0, 3, lbl_804A0160@l
    stw 0, 0x0(30)
    lwz 3, 0x8(30)
    bl dtor_80092364
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801594CC
    mr 3, 30
    bl dtor_80084580
L_801594CC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801594E8:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, lbl_804A0160@ha
    stw 0, 0x14(1)
    li 0, -0x1
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    addi 3, 5, lbl_804A0160@l
    li 5, 0x0
    stw 3, 0x0(30)
    li 3, 0x40
    stw 0, 0x4(30)
    bl fn_8008440C
    mr. 31, 3
    .4byte 0x41820050 # beq .L_80159574
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80465E28@ha
    addi 5, 3, lbl_80465E28@l
    lis 4, 0x3f3f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(31)
    mr 3, 31
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(31)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(31)
L_80159574:
    stw 31, 0x8(30)
    mr 3, 30
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80159594:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BFB60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BFB60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801595E4
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x40
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801595E4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015961C
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x4c
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8015961C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80159654
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x58
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80159654:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015968C
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x64
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8015968C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801596C4
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x70
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801596C4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801596FC
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x7c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801596FC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80159734
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x88
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80159734:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015976C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x94
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8015976C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801597A4
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0xa0
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801597A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801597B8:
    lwz 3, 0x230(3)
    blr

fn_801597C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801597EC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 30, 0x234(3)
    cmpwi 30, 0x10
    .4byte 0x41820024 # beq .L_80159838
    subi 0, 30, 0x11
    cmplwi 0, 0x1
    .4byte 0x40810018 # ble .L_80159838
    subi 0, 30, 0x16
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_80159838
    cmpwi 30, 0x19
    .4byte 0x40820038 # bne .L_8015986C
L_80159838:
    bl SpatialRegistry_GetBase
    lwz 0, 0x250(31)
    lis 4, 0x4b45
    lwz 5, 0x4(31)
    addi 4, 4, 0x5930
    slwi 0, 0, 12
    addi 6, 31, 0xc
    add 7, 30, 0
    li 8, -0x1
    li 9, -0x1
    addi 7, 7, 0xf0
    bl fn_801F9484
    .4byte 0x48000218 # b .L_80159A80
L_8015986C:
    cmpwi 30, 0x13
    .4byte 0x40820010 # bne .L_80159880
    lwz 3, 0x274(31)
    bl fn_80236DB0
    .4byte 0x48000204 # b .L_80159A80
L_80159880:
    cmpwi 30, 0x15
    .4byte 0x40820010 # bne .L_80159894
    lwz 3, 0x274(31)
    bl fn_80236C88
    .4byte 0x480001F0 # b .L_80159A80
L_80159894:
    cmpwi 30, 0x20
    .4byte 0x40820034 # bne .L_801598CC
    bl SpatialRegistry_GetBase
    lwz 0, 0x250(31)
    lis 4, 0x4352
    lwz 5, 0x4(31)
    addi 4, 4, 0x544c
    slwi 0, 0, 16
    addi 6, 31, 0xc
    ori 7, 0, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480001B8 # b .L_80159A80
L_801598CC:
    cmpwi 30, 0x21
    .4byte 0x40820034 # bne .L_80159904
    bl SpatialRegistry_GetBase
    lwz 0, 0x250(31)
    lis 4, 0x4e49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    slwi 0, 0, 8
    addi 6, 31, 0xc
    ori 7, 0, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000180 # b .L_80159A80
L_80159904:
    cmpwi 30, 0x22
    .4byte 0x40820034 # bne .L_8015993C
    bl SpatialRegistry_GetBase
    lwz 0, 0x250(31)
    lis 4, 0x424d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5459
    slwi 0, 0, 16
    addi 6, 31, 0xc
    ori 7, 0, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000148 # b .L_80159A80
L_8015993C:
    cmpwi 30, 0x23
    .4byte 0x4082002C # bne .L_8015996C
    bl SpatialRegistry_GetBase
    lis 4, 0x4e4e
    lwz 5, 0x4(31)
    addi 4, 4, 0x4a4e
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000118 # b .L_80159A80
L_8015996C:
    cmpwi 30, 0x24
    .4byte 0x40820034 # bne .L_801599A4
    bl SpatialRegistry_GetBase
    lwz 0, 0x250(31)
    lis 4, 0x4e49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    slwi 0, 0, 8
    addi 6, 31, 0xc
    ori 7, 0, 0x1005
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000E0 # b .L_80159A80
L_801599A4:
    cmpwi 30, 0x25
    .4byte 0x40820034 # bne .L_801599DC
    bl SpatialRegistry_GetBase
    lwz 0, 0x250(31)
    lis 4, 0x4352
    lwz 5, 0x4(31)
    addi 4, 4, 0x544c
    slwi 0, 0, 16
    addi 6, 31, 0xc
    ori 7, 0, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000A8 # b .L_80159A80
L_801599DC:
    cmpwi 30, 0x30
    .4byte 0x418000A0 # blt .L_80159A80
    cmpwi 30, 0x4a
    .4byte 0x40820014 # bne .L_801599FC
    lwz 3, 0x274(31)
    li 4, 0x2
    bl fn_80236ED8
    .4byte 0x48000088 # b .L_80159A80
L_801599FC:
    cmpwi 30, 0x40
    subi 28, 30, 0x2f
    li 29, 0x1
    .4byte 0x4180000C # blt .L_80159A14
    subi 28, 30, 0x3f
    li 29, 0x2
L_80159A14:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_80159A80
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_80159A70
    lwz 3, 0x250(31)
    bl fn_802373EC
    cmpwi 3, 0x0
    .4byte 0x41820038 # beq .L_80159A70
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80159A70
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80159A70
    lwz 3, 0x274(31)
    bl fn_802373EC
    stw 3, 0x294(31)
    lwz 3, 0x274(31)
    bl fn_8023725C
    stw 3, 0x298(31)
L_80159A70:
    lwz 3, 0x250(31)
    mr 4, 28
    mr 5, 29
    bl fn_802372F8
L_80159A80:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80159AA0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 5, 0x2a8(3)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_80159AF0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    lwz 4, 0x2a8(31)
    lwz 3, 0xf4(4)
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x2a8(31)
L_80159AF0:
    lwz 5, 0x2ac(31)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_80159B28
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    lwz 4, 0x2ac(31)
    lwz 3, 0xf4(4)
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x2ac(31)
L_80159B28:
    lwz 5, 0x2b0(31)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_80159B60
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    lwz 4, 0x2b0(31)
    lwz 3, 0xf4(4)
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x2b0(31)
L_80159B60:
    lwz 30, 0x260(31)
    cmpwi 30, 0x0
    .4byte 0x4182001C # beq .L_80159B84
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80159B84
    bl fn_802ED140
L_80159B84:
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_80159BBC
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80159BB4
    li 0, 0x0
    stb 0, 0x11c(3)
L_80159BB4:
    li 0, -0x1
    stw 0, 0x278(31)
L_80159BBC:
    lwz 0, 0x294(31)
    cmpwi 0, 0x0
    .4byte 0x4180004C # blt .L_80159C10
    lwz 3, 0x250(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x27c(31), 0, 0
    stfs 0, 0x284(31)
    bl SpatialRegistry_GetBase
    lwz 5, 0x298(31)
    lis 4, 0x4c53
    lwz 0, 0x294(31)
    addi 4, 4, 0x5449
    slwi 7, 5, 22
    lwz 5, 0x4(31)
    addi 6, 31, 0x27c
    li 8, -0x1
    or 7, 7, 0
    li 9, -0x1
    bl fn_801F9484
L_80159C10:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80159C28:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    lwz 3, 0x250(3)
    bl fn_8023188C
    clrlwi. 0, 3, 24
    .4byte 0x41820710 # beq .L_8015A35C
    lwz 0, 0x234(31)
    li 30, 0x0
    cmpwi 0, 0x8
    .4byte 0x41800010 # blt .L_80159C6C
    cmpwi 0, 0xb
    .4byte 0x41810008 # bgt .L_80159C6C
    li 30, 0x1
L_80159C6C:
    li 0, -0x1
    addi 9, 1, 0x34
    stw 0, 0x44(1)
    li 10, 0x0
    stw 0, 0x48(1)
    .4byte 0x48000064 # b .L_80159CE4
L_80159C84:
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
L_80159CE4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80159C84
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x50(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 5, 0x51(1)
    stb 5, 0x61(1)
    stw 6, 0x44(1)
    stw 5, 0x48(1)
    stw 5, 0x4c(1)
    stb 5, 0x52(1)
    stb 4, 0x53(1)
    stb 4, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 5, 0x59(1)
    stb 4, 0x5a(1)
    stw 3, 0x5c(1)
    stb 4, 0x60(1)
    stb 5, 0x62(1)
    stw 6, 0x64(1)
    stw 5, 0x68(1)
    stw 0, 0x6c(1)
    stb 4, 0x51(1)
    stb 4, 0x50(1)
    stb 4, 0x61(1)
    lwz 5, 0x234(31)
    cmpwi 5, 0x2f
    .4byte 0x418205F0 # beq .L_8015A35C
    cmpwi 5, 0x7
    .4byte 0x41810090 # bgt .L_80159E04
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804A01A0@ha
    slwi 0, 5, 2
    lis 4, lbl_804660B8@ha
    addi 3, 3, lbl_804A01A0@l
    fmr 2, 1
    lwzx 0, 3, 0
    addi 4, 4, lbl_804660B8@l
    lwz 5, 0x244(31)
    mr 3, 31
    addi 6, 1, 0x34
    add 5, 5, 0
    li 7, -0x1
    bl fn_801F06F0
    li 5, 0x0
    neg 0, 30
    stw 5, 0x8(1)
    or 0, 0, 30
    lis 3, lbl_804A01A0@ha
    li 8, 0x2
    stw 5, 0xc(1)
    srwi 7, 0, 31
    addi 4, 3, lbl_804A01A0@l
    addi 5, 31, 0xc
    lwz 0, 0x234(31)
    li 9, -0x1
    lwz 6, 0x244(31)
    li 10, 0x1
    slwi 0, 0, 2
    lwz 3, 0x198(31)
    lwzx 0, 4, 0
    lwz 4, 0x4(31)
    add 6, 6, 0
    bl fn_803075AC
    .4byte 0x4800055C # b .L_8015A35C
L_80159E04:
    cmpwi 5, 0xb
    .4byte 0x41810094 # bgt .L_80159E9C
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804A01A0@ha
    slwi 0, 5, 2
    lis 4, lbl_804660CC@ha
    addi 3, 3, lbl_804A01A0@l
    fmr 2, 1
    lwzx 0, 3, 0
    addi 4, 4, lbl_804660CC@l
    lwz 5, 0x244(31)
    mr 3, 31
    addi 6, 1, 0x34
    add 5, 5, 0
    li 7, -0x1
    bl fn_801F06F0
    li 5, 0x0
    neg 0, 30
    stw 5, 0x8(1)
    or 0, 0, 30
    lis 3, lbl_804A01A0@ha
    li 8, 0x2
    stw 5, 0xc(1)
    srwi 7, 0, 31
    addi 4, 3, lbl_804A01A0@l
    addi 5, 31, 0xc
    lwz 0, 0x234(31)
    li 9, -0x1
    lwz 11, 0x244(31)
    li 10, 0x1
    slwi 0, 0, 2
    lwz 3, 0x198(31)
    add 6, 4, 0
    lwz 4, 0x4(31)
    lwz 0, -0x10(6)
    add 6, 11, 0
    bl fn_803075AC
    .4byte 0x480004C4 # b .L_8015A35C
L_80159E9C:
    cmpwi 5, 0x10
    .4byte 0x418000B8 # blt .L_80159F58
    cmpwi 5, 0x19
    .4byte 0x418100B0 # bgt .L_80159F58
    lfs 2, 0x14(31)
    addi 30, 5, 0x1d
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 2, 0x30(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80159F20
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804660B8@ha
    addi 5, 3, lbl_804660B8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x34
    lwz 3, 0x20(4)
    addi 4, 1, 0x28
    bl fn_802F86CC
L_80159F20:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x234(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x1d
    bl fn_803075AC
    .4byte 0x48000408 # b .L_8015A35C
L_80159F58:
    cmpwi 5, 0x20
    .4byte 0x40820064 # bne .L_80159FC0
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804660B8@ha
    lwz 5, 0x244(31)
    addi 4, 3, lbl_804660B8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x90
    addi 6, 1, 0x34
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x244(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x90
    bl fn_803075AC
    .4byte 0x480003A0 # b .L_8015A35C
L_80159FC0:
    cmpwi 5, 0x21
    .4byte 0x40820064 # bne .L_8015A028
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804660B8@ha
    lwz 5, 0x244(31)
    addi 4, 3, lbl_804660B8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x2af
    addi 6, 1, 0x34
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x244(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x2af
    bl fn_803075AC
    .4byte 0x48000338 # b .L_8015A35C
L_8015A028:
    cmpwi 5, 0x22
    .4byte 0x40820064 # bne .L_8015A090
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804660B8@ha
    lwz 5, 0x244(31)
    addi 4, 3, lbl_804660B8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x8c
    addi 6, 1, 0x34
    li 7, 0x7
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x244(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x8c
    bl fn_803075AC
    .4byte 0x480002D0 # b .L_8015A35C
L_8015A090:
    cmpwi 5, 0x23
    .4byte 0x40820064 # bne .L_8015A0F8
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    li 0, 0x1
    lis 3, lbl_804660B8@ha
    stb 0, 0x61(1)
    fmr 2, 1
    addi 4, 3, lbl_804660B8@l
    mr 3, 31
    addi 6, 1, 0x34
    li 5, 0x2aa
    li 7, 0x7
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x2aa
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    .4byte 0x48000268 # b .L_8015A35C
L_8015A0F8:
    cmpwi 5, 0x24
    .4byte 0x40820064 # bne .L_8015A160
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804660B8@ha
    lwz 5, 0x244(31)
    addi 4, 3, lbl_804660B8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x2c7
    addi 6, 1, 0x34
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x244(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x2c7
    bl fn_803075AC
    .4byte 0x48000200 # b .L_8015A35C
L_8015A160:
    cmpwi 5, 0x25
    .4byte 0x4082005C # bne .L_8015A1C0
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804660B8@ha
    addi 4, 3, lbl_804660B8@l
    addi 6, 1, 0x34
    fmr 2, 1
    mr 3, 31
    li 5, 0x98
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x98
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    .4byte 0x480001A0 # b .L_8015A35C
L_8015A1C0:
    cmpwi 5, 0x2a
    .4byte 0x41800034 # blt .L_8015A1F8
    cmpwi 5, 0x2d
    .4byte 0x4181002C # bgt .L_8015A1F8
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    lis 3, lbl_804660CC@ha
    addi 4, 3, lbl_804660CC@l
    addi 5, 5, 0x255
    fmr 2, 1
    mr 3, 31
    addi 6, 1, 0x34
    li 7, -0x1
    bl fn_801F06F0
    .4byte 0x48000168 # b .L_8015A35C
L_8015A1F8:
    cmpwi 5, 0x2e
    .4byte 0x41820160 # beq .L_8015A35C
    cmpwi 5, 0x40
    .4byte 0x408000B0 # bge .L_8015A2B4
    lfs 2, 0x14(31)
    addi 30, 5, 0x11
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 2, 0x24(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8015A27C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804660B8@ha
    addi 5, 3, lbl_804660B8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x34
    lwz 3, 0x20(4)
    addi 4, 1, 0x1c
    bl fn_802F86CC
L_8015A27C:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x234(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x11
    bl fn_803075AC
    .4byte 0x480000AC # b .L_8015A35C
L_8015A2B4:
    lfs 2, 0x14(31)
    addi 30, 5, 0x1cd
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x10(1)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8015A328
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804660B8@ha
    addi 5, 3, lbl_804660B8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A4C0 # lfs f1, lbl_8053D460@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x34
    lwz 3, 0x20(4)
    addi 4, 1, 0x10
    bl fn_802F86CC
L_8015A328:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x234(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x1cd
    bl fn_803075AC
L_8015A35C:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8015A374:
    stwu 1, -0xa0(1)
    mflr 0
    .4byte 0xC042A4C4 # lfs f2, lbl_8053D464@sda21(r0)
    stw 0, 0xa4(1)
    .4byte 0xC062A4C0 # lfs f3, lbl_8053D460@sda21(r0)
    stw 31, 0x9c(1)
    mr 31, 3
    stw 30, 0x98(1)
    lfs 1, 0x29c(3)
    addi 3, 31, 0x3c
    bl fn_801F71A4
    lfs 1, 0x2a0(31)
    addi 3, 31, 0x40
    .4byte 0xC042A4C4 # lfs f2, lbl_8053D464@sda21(r0)
    .4byte 0xC062A4C0 # lfs f3, lbl_8053D460@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820DE0 # beq .L_8015B1BC
    .4byte 0x40800F4C # bge .L_8015B32C
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8015A3F8
    .4byte 0x40800B94 # bge .L_8015AF80
    .4byte 0x48000F3C # b .L_8015B32C
    .4byte 0x48000F38 # b .L_8015B32C
L_8015A3F8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x418102A8 # bgt .L_8015A6A8
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8015A41C
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000F14 # b .L_8015B32C
L_8015A41C:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820270 # bne .L_8015A694
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800038 # blt .L_8015A468
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8015A468
    lwz 0, 0x234(31)
    lis 3, lbl_80465F78@ha
    addi 4, 3, lbl_80465F78@l
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    slwi 0, 0, 2
    lwz 5, 0x274(31)
    lwzx 4, 4, 0
    li 6, 0x0
    bl fn_8043D67C
L_8015A468:
    lwz 4, 0x234(31)
    lis 3, lbl_80465E38@ha
    addi 3, 3, lbl_80465E38@l
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmplwi 0, 0x27f
    .4byte 0x40820104 # bne .L_8015A584
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x274(31)
    lbz 3, 0x83(3)
    slwi 0, 0, 1
    sraw 0, 3, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082007C # bne .L_8015A51C
    lwz 30, 0x250(31)
    lwz 0, 0x24c(31)
    cmpw 30, 0
    .4byte 0x408201C8 # bne .L_8015A678
    bl SpatialRegistry_GetBase
    clrlwi 0, 30, 30
    lis 4, 0x5045
    lwz 5, 0x4(31)
    addi 4, 4, 0x4646
    addi 6, 31, 0xc
    ori 7, 0, 0x24
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x278(31)
    lis 3, lbl_80465E38@ha
    addi 6, 1, 0x68
    li 7, 0x21
    lwz 5, 0x4(31)
    addi 4, 3, lbl_80465E38@l
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x70(1)
    lwz 0, 0x234(31)
    lwz 3, 0x24c(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    .4byte 0x48000160 # b .L_8015A678
L_8015A51C:
    lwz 30, 0x250(31)
    lwz 0, 0x24c(31)
    cmpw 30, 0
    .4byte 0x40820150 # bne .L_8015A678
    bl SpatialRegistry_GetBase
    clrlwi 0, 30, 30
    lis 4, 0x5045
    lwz 5, 0x4(31)
    addi 4, 4, 0x4646
    addi 6, 31, 0xc
    ori 7, 0, 0x24
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x278(31)
    addi 6, 1, 0x5c
    li 4, 0x284
    li 7, 0x21
    lwz 5, 0x4(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x64(1)
    lwz 3, 0x24c(31)
    bl fn_8038BD08
    .4byte 0x480000F8 # b .L_8015A678
L_8015A584:
    cmpwi 4, 0x10
    .4byte 0x4080007C # bge .L_8015A604
    lwz 30, 0x250(31)
    lwz 0, 0x24c(31)
    cmpw 30, 0
    .4byte 0x408200E0 # bne .L_8015A678
    bl SpatialRegistry_GetBase
    clrlwi 0, 30, 30
    lis 4, 0x5045
    lwz 5, 0x4(31)
    addi 4, 4, 0x4646
    addi 6, 31, 0xc
    ori 7, 0, 0x24
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x278(31)
    lis 3, lbl_80465E38@ha
    addi 6, 1, 0x50
    li 7, 0x1
    lwz 5, 0x4(31)
    addi 4, 3, lbl_80465E38@l
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x58(1)
    lwz 0, 0x234(31)
    lwz 3, 0x24c(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    .4byte 0x48000078 # b .L_8015A678
L_8015A604:
    lwz 30, 0x250(31)
    lwz 0, 0x24c(31)
    cmpw 30, 0
    .4byte 0x40820068 # bne .L_8015A678
    bl SpatialRegistry_GetBase
    clrlwi 0, 30, 30
    lis 4, 0x5045
    lwz 5, 0x4(31)
    addi 4, 4, 0x4646
    addi 6, 31, 0xc
    ori 7, 0, 0x24
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x278(31)
    lis 3, lbl_80465E38@ha
    addi 6, 1, 0x44
    li 7, 0x21
    lwz 5, 0x4(31)
    addi 4, 3, lbl_80465E38@l
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x4c(1)
    lwz 0, 0x234(31)
    lwz 3, 0x24c(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
L_8015A678:
    lwz 3, 0x250(31)
    lwz 0, 0x24c(31)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_8015A69C
    mr 3, 31
    bl fn_801597EC
    .4byte 0x4800000C # b .L_8015A69C
L_8015A694:
    mr 3, 31
    bl fn_801597EC
L_8015A69C:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800087C # b .L_8015AF20
L_8015A6A8:
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_8015A6CC
    lwz 0, 0x234(31)
    cmpwi 0, 0x2e
    .4byte 0x40820010 # bne .L_8015A6CC
    lwz 3, 0x250(31)
    li 4, 0x3e
    bl fn_80230EB8
L_8015A6CC:
    lwz 3, 0x28c(31)
    subi 0, 3, 0x1
    stw 0, 0x28c(31)
    lwz 0, 0x28c(31)
    cmpwi 0, 0x0
    .4byte 0x40820840 # bne .L_8015AF20
    li 0, 0x1
    stw 0, 0x28c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_8015A71C
    lwz 30, 0x260(31)
    cmpwi 30, 0x0
    .4byte 0x4182001C # beq .L_8015A71C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8015A71C
    bl fn_802ED140
L_8015A71C:
    lwz 3, 0x234(31)
    cmpwi 3, 0x2f
    .4byte 0x418207FC # beq .L_8015AF20
    cmpwi 3, 0x14
    .4byte 0x40820154 # bne .L_8015A880
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_8015A790
    .4byte 0xC042A4C8 # lfs f2, lbl_8053D468@sda21(r0)
    li 0, 0x4
    lfs 1, 0x27c(31)
    .4byte 0xC002A4CC # lfs f0, lbl_8053D46C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x280(31)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    stw 0, 0x28c(31)
    lwz 3, 0x274(31)
    bl fn_8022F340
    li 4, 0x4
    bl fn_80236804
    lis 4, 0x100
    lwz 3, 0x24c(31)
    addi 4, 4, 0x2
    bl fn_80230F44
    .4byte 0x4800008C # b .L_8015A818
L_8015A790:
    cmpwi 0, 0x1
    .4byte 0x40820084 # bne .L_8015A818
    .4byte 0xC042A4D0 # lfs f2, lbl_8053D470@sda21(r0)
    addi 4, 31, 0xc
    lfs 1, 0x27c(31)
    li 5, 0x562
    .4byte 0xC002A4D4 # lfs f0, lbl_8053D474@sda21(r0)
    li 6, 0x0
    fadds 2, 2, 1
    .4byte 0xC022A4D8 # lfs f1, lbl_8053D478@sda21(r0)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0xc(31)
    lfs 2, 0x280(31)
    fsubs 0, 2, 0
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2b0(31)
    addi 4, 31, 0xc
    .4byte 0xC022A4DC # lfs f1, lbl_8053D47C@sda21(r0)
    li 5, 0x563
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a8(31)
L_8015A818:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2f
    .4byte 0x41820018 # beq .L_8015A838
    lwz 3, 0x288(31)
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8015A838
    addi 0, 3, 0x1
    stw 0, 0x288(31)
L_8015A838:
    lwz 3, 0x288(31)
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8015A84C
    addi 0, 3, 0x1
    stw 0, 0x288(31)
L_8015A84C:
    lwz 5, 0x288(31)
    cmpwi 5, 0x4
    .4byte 0x41800008 # blt .L_8015A85C
    li 5, 0x3
L_8015A85C:
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 5, 0xe9
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x480006A4 # b .L_8015AF20
L_8015A880:
    cmpwi 3, 0x2e
    .4byte 0x40820110 # bne .L_8015A994
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8015A8B0
    .4byte 0xC022A4E0 # lfs f1, lbl_8053D480@sda21(r0)
    li 0, 0x4
    lfs 0, 0x284(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    stw 0, 0x28c(31)
    .4byte 0x48000040 # b .L_8015A8EC
L_8015A8B0:
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_8015A8D4
    .4byte 0xC022A4E4 # lfs f1, lbl_8053D484@sda21(r0)
    li 0, 0x4
    lfs 0, 0x284(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    stw 0, 0x28c(31)
    .4byte 0x4800001C # b .L_8015A8EC
L_8015A8D4:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8015A8EC
    .4byte 0xC022A4E8 # lfs f1, lbl_8053D488@sda21(r0)
    lfs 0, 0x284(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
L_8015A8EC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x290(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8015A918
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x38(1), 0, 0
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x40(1)
    stfs 0, 0x14(3)
L_8015A918:
    lwz 3, 0x288(31)
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8015A92C
    addi 0, 3, 0x1
    stw 0, 0x288(31)
L_8015A92C:
    lwz 30, 0x288(31)
    cmpwi 30, 0x4
    .4byte 0x41800008 # blt .L_8015A93C
    li 30, 0x3
L_8015A93C:
    lwz 3, 0x250(31)
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8015A970
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 30, 0x336
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x480005B4 # b .L_8015AF20
L_8015A970:
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 30, 0xed
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000590 # b .L_8015AF20
L_8015A994:
    cmpwi 3, 0xb
    .4byte 0x41810318 # bgt .L_8015ACB0
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_8015A9E0
    lfs 1, 0x280(31)
    .4byte 0xC002A4EC # lfs f0, lbl_8053D48C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41820268 # beq .L_8015AC28
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820258 # bne .L_8015AC28
    li 0, 0x4
    stw 0, 0x28c(31)
    .4byte 0x4800024C # b .L_8015AC28
L_8015A9E0:
    cmpwi 0, 0x1
    .4byte 0x40820058 # bne .L_8015AA3C
    lfs 1, 0x280(31)
    .4byte 0xC002A4F0 # lfs f0, lbl_8053D490@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8015AA1C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8015AA1C
    li 0, 0x4
    stw 0, 0x28c(31)
L_8015AA1C:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x40820204 # bne .L_8015AC28
    lis 4, 0x1
    lwz 3, 0x250(31)
    addi 4, 4, 0x8
    bl fn_80230FD0
    .4byte 0x480001F0 # b .L_8015AC28
L_8015AA3C:
    cmpwi 0, 0x2
    .4byte 0x408201E8 # bne .L_8015AC28
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8015AA68
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8015AA68
    li 0, 0x32
    stw 0, 0x28c(31)
L_8015AA68:
    lfs 1, 0x280(31)
    .4byte 0xC002A4F4 # lfs f0, lbl_8053D494@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x418000E8 # blt .L_8015AB68
    lfs 2, 0x10(31)
    addi 4, 1, 0x2c
    .4byte 0xC022A4F8 # lfs f1, lbl_8053D498@sda21(r0)
    li 5, 0x562
    lfs 3, 0x14(31)
    li 6, 0x0
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    .4byte 0xC022A4FC # lfs f1, lbl_8053D49C@sda21(r0)
    li 7, 0x1
    stfs 0, 0x2c(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x30(1)
    li 10, 0x1
    stfs 3, 0x34(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2b0(31)
    addi 4, 1, 0x20
    .4byte 0xC002A4D0 # lfs f0, lbl_8053D470@sda21(r0)
    li 5, 0x563
    lfs 1, 0x10(31)
    li 6, 0x0
    lfs 3, 0x14(31)
    li 7, 0x1
    fsubs 2, 1, 0
    lfs 0, 0xc(31)
    .4byte 0xC022A500 # lfs f1, lbl_8053D4A0@sda21(r0)
    li 8, 0x0
    stfs 0, 0x20(1)
    li 9, 0x0
    stfs 2, 0x24(1)
    li 10, 0x1
    stfs 3, 0x28(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2a8(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x40820104 # bne .L_8015AC28
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC002A504 # lfs f0, lbl_8053D4A4@sda21(r0)
    psq_st 1, 0x80(1), 0, 0
    lfs 1, 0x84(1)
    stfs 2, 0x88(1)
    fsubs 0, 1, 0
    stfs 0, 0x84(1)
    bl SpatialRegistry_GetBase
    lwz 4, 0x274(31)
    addi 6, 1, 0x80
    lwz 5, 0x4(31)
    li 8, 0x2
    lwz 7, 0x234(31)
    bl fn_801F6718
    .4byte 0x480000C4 # b .L_8015AC28
L_8015AB68:
    lfs 2, 0x10(31)
    addi 4, 1, 0x14
    .4byte 0xC022A4D0 # lfs f1, lbl_8053D470@sda21(r0)
    li 5, 0x562
    lfs 3, 0x14(31)
    li 6, 0x0
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    .4byte 0xC022A4D8 # lfs f1, lbl_8053D478@sda21(r0)
    li 7, 0x1
    stfs 0, 0x14(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x18(1)
    li 10, 0x1
    stfs 3, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2b0(31)
    addi 4, 31, 0xc
    .4byte 0xC022A4DC # lfs f1, lbl_8053D47C@sda21(r0)
    li 5, 0x563
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a8(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8015AC28
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC002A4CC # lfs f0, lbl_8053D46C@sda21(r0)
    psq_st 1, 0x74(1), 0, 0
    lfs 1, 0x78(1)
    stfs 2, 0x7c(1)
    fsubs 0, 1, 0
    stfs 0, 0x78(1)
    bl SpatialRegistry_GetBase
    lwz 4, 0x274(31)
    addi 6, 1, 0x74
    lwz 5, 0x4(31)
    li 8, 0x2
    lwz 7, 0x234(31)
    bl fn_801F6718
L_8015AC28:
    lwz 3, 0x288(31)
    cmpwi 3, 0x3
    .4byte 0x4080000C # bge .L_8015AC3C
    addi 0, 3, 0x1
    stw 0, 0x288(31)
L_8015AC3C:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x408202DC # bne .L_8015AF20
    lwz 30, 0x288(31)
    cmpwi 30, 0x4
    .4byte 0x41800008 # blt .L_8015AC58
    li 30, 0x3
L_8015AC58:
    lwz 3, 0x250(31)
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8015AC8C
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 30, 0x336
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000298 # b .L_8015AF20
L_8015AC8C:
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 30, 0xed
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000274 # b .L_8015AF20
L_8015ACB0:
    subi 0, 3, 0x10
    cmplwi 0, 0x2
    .4byte 0x40810018 # ble .L_8015ACD0
    subi 0, 3, 0x16
    cmplwi 0, 0x3
    .4byte 0x4081000C # ble .L_8015ACD0
    cmpwi 3, 0x25
    .4byte 0x40820138 # bne .L_8015AE04
L_8015ACD0:
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8015AD10
    lfs 1, 0x280(31)
    lis 3, 0x100
    .4byte 0xC002A4CC # lfs f0, lbl_8053D46C@sda21(r0)
    li 0, 0x4
    addi 4, 3, 0x2
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    stw 0, 0x28c(31)
    lwz 3, 0x24c(31)
    bl fn_80230F44
    .4byte 0x4800007C # b .L_8015AD88
L_8015AD10:
    cmpwi 0, 0x1
    .4byte 0x40820074 # bne .L_8015AD88
    lfs 2, 0x280(31)
    addi 4, 31, 0xc
    .4byte 0xC002A4D4 # lfs f0, lbl_8053D474@sda21(r0)
    li 5, 0x562
    .4byte 0xC022A508 # lfs f1, lbl_8053D4A8@sda21(r0)
    li 6, 0x0
    fsubs 0, 2, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2b0(31)
    addi 4, 31, 0xc
    .4byte 0xC022A4DC # lfs f1, lbl_8053D47C@sda21(r0)
    li 5, 0x563
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a8(31)
L_8015AD88:
    lwz 3, 0x288(31)
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8015AD9C
    addi 0, 3, 0x1
    stw 0, 0x288(31)
L_8015AD9C:
    lwz 30, 0x288(31)
    cmpwi 30, 0x4
    .4byte 0x41800008 # blt .L_8015ADAC
    li 30, 0x3
L_8015ADAC:
    lwz 3, 0x250(31)
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8015ADE0
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 30, 0x336
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000144 # b .L_8015AF20
L_8015ADE0:
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 30, 0xed
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000120 # b .L_8015AF20
L_8015AE04:
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_8015AE54
    .4byte 0xC042A4C8 # lfs f2, lbl_8053D468@sda21(r0)
    lis 3, 0x100
    lfs 1, 0x27c(31)
    addi 4, 3, 0x2
    .4byte 0xC002A4CC # lfs f0, lbl_8053D46C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x280(31)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    lwz 3, 0x24c(31)
    bl fn_80230F44
    li 0, 0x4
    stw 0, 0x28c(31)
    .4byte 0x4800008C # b .L_8015AEDC
L_8015AE54:
    cmpwi 0, 0x1
    .4byte 0x40820084 # bne .L_8015AEDC
    .4byte 0xC042A4D0 # lfs f2, lbl_8053D470@sda21(r0)
    addi 4, 31, 0xc
    lfs 1, 0x27c(31)
    li 5, 0x562
    .4byte 0xC002A4D4 # lfs f0, lbl_8053D474@sda21(r0)
    li 6, 0x0
    fadds 2, 2, 1
    .4byte 0xC022A508 # lfs f1, lbl_8053D4A8@sda21(r0)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0xc(31)
    lfs 2, 0x280(31)
    fsubs 0, 2, 0
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2b0(31)
    addi 4, 31, 0xc
    .4byte 0xC022A4DC # lfs f1, lbl_8053D47C@sda21(r0)
    li 5, 0x563
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a8(31)
L_8015AEDC:
    lwz 3, 0x288(31)
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8015AEF0
    addi 0, 3, 0x1
    stw 0, 0x288(31)
L_8015AEF0:
    lwz 5, 0x288(31)
    cmpwi 5, 0x4
    .4byte 0x41800008 # blt .L_8015AF00
    li 5, 0x3
L_8015AF00:
    lwz 3, 0x250(31)
    addi 4, 31, 0x27c
    addi 5, 5, 0xe9
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8015AF20:
    lwz 0, 0x288(31)
    cmpwi 0, 0x4
    .4byte 0x41800404 # blt .L_8015B32C
    li 30, 0x0
L_8015AF30:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8015AF54
    .4byte 0x48000014 # b .L_8015AF64
L_8015AF54:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8015AF30
    li 3, 0x0
L_8015AF64:
    cmplwi 3, 0x0
    .4byte 0x418203C4 # beq .L_8015B32C
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x288(31)
    stw 0, 0x238(31)
    .4byte 0x480003B0 # b .L_8015B32C
L_8015AF80:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x418101E0 # bgt .L_8015B168
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x41820038 # beq .L_8015AFCC
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8015AFB4
    lwz 3, 0x250(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x4182037C # beq .L_8015B32C
L_8015AFB4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000364 # b .L_8015B32C
L_8015AFCC:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2e
    .4byte 0x4082007C # bne .L_8015B050
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800070 # bge .L_8015B050
    lwz 3, 0x250(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x4182033C # beq .L_8015B32C
    li 3, 0x2
    li 0, 0x14
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x290(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820318 # beq .L_8015B32C
    .4byte 0x808D93C0 # lwz r4, lbl_8053AF80@sda21(r0)
    li 0, 0x4
    .4byte 0xC022A50C # lfs f1, lbl_8053D4AC@sda21(r0)
    lwz 4, 0x58(4)
    .4byte 0xC002A510 # lfs f0, lbl_8053D4B0@sda21(r0)
    stw 4, 0x250(3)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stw 0, 0x230(3)
    psq_l 0, 0x8(1), 0, 0
    stfs 1, 0x10(1)
    psq_st 0, 0x3c(3), 0, 0
    stfs 1, 0x44(3)
    .4byte 0x480002E0 # b .L_8015B32C
L_8015B050:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820108 # bne .L_8015B160
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_8015B0E8
    lwz 3, 0x24c(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x418200F0 # beq .L_8015B168
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_8015B0B8
    lwz 3, 0x274(31)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200CC # bne .L_8015B168
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000B4 # b .L_8015B168
L_8015B0B8:
    lwz 3, 0x250(31)
    li 4, 0x0
    bl fn_80230224
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_8015B168
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000084 # b .L_8015B168
L_8015B0E8:
    lwz 3, 0x24c(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_8015B168
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_8015B130
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_8015B168
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800003C # b .L_8015B168
L_8015B130:
    lwz 3, 0x250(31)
    li 4, 0x0
    bl fn_80230224
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_8015B168
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800000C # b .L_8015B168
L_8015B160:
    li 0, 0x3
    stw 0, 0x230(31)
L_8015B168:
    li 30, 0x0
L_8015B16C:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8015B190
    .4byte 0x48000014 # b .L_8015B1A0
L_8015B190:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8015B16C
    li 3, 0x0
L_8015B1A0:
    cmplwi 3, 0x0
    .4byte 0x41820188 # beq .L_8015B32C
    li 0, 0x0
    stw 0, 0x238(31)
    lwz 3, 0x250(31)
    bl fn_8037E8D4
    .4byte 0x48000174 # b .L_8015B32C
L_8015B1BC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x11
    .4byte 0x40810010 # ble .L_8015B1D4
    li 0, 0xe
    stw 0, 0x288(31)
    .4byte 0x48000138 # b .L_8015B308
L_8015B1D4:
    cmpwi 0, 0x9
    .4byte 0x40810010 # ble .L_8015B1E8
    li 0, 0xd
    stw 0, 0x288(31)
    .4byte 0x48000124 # b .L_8015B308
L_8015B1E8:
    cmpwi 0, 0x8
    .4byte 0x40810010 # ble .L_8015B1FC
    li 0, 0xc
    stw 0, 0x288(31)
    .4byte 0x48000110 # b .L_8015B308
L_8015B1FC:
    li 0, 0xb
    stw 0, 0x288(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_8015B290
    lwz 3, 0x24c(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x418200E8 # beq .L_8015B308
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_8015B260
    lwz 3, 0x274(31)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200C4 # bne .L_8015B308
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000D0 # b .L_8015B32C
L_8015B260:
    lwz 3, 0x250(31)
    li 4, 0x0
    bl fn_80230224
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820094 # bne .L_8015B308
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000A0 # b .L_8015B32C
L_8015B290:
    lwz 3, 0x24c(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_8015B308
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_8015B2D8
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_8015B308
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000058 # b .L_8015B32C
L_8015B2D8:
    lwz 3, 0x250(31)
    li 4, 0x0
    bl fn_80230224
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8015B308
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000028 # b .L_8015B32C
L_8015B308:
    lwz 5, 0x288(31)
    addi 4, 31, 0x27c
    lwz 3, 0x250(31)
    li 6, 0xff
    addi 5, 5, 0x322
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8015B32C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x20
    .4byte 0x40820028 # bne .L_8015B35C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4181008C # bgt .L_8015B3CC
    lwz 3, 0x244(31)
    li 0, 0xa
    xori 3, 3, 0x1
    stw 3, 0x244(31)
    stw 0, 0x23c(31)
    .4byte 0x48000074 # b .L_8015B3CC
L_8015B35C:
    cmpwi 0, 0xb
    .4byte 0x4181004C # bgt .L_8015B3AC
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41810060 # bgt .L_8015B3CC
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 30
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8015B3A0
    li 0, 0x14
    stw 0, 0x23c(31)
    .4byte 0x48000030 # b .L_8015B3CC
L_8015B3A0:
    li 0, 0x2
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_8015B3CC
L_8015B3AC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_8015B3CC
    lwz 3, 0x244(31)
    li 0, 0xa
    xori 3, 3, 0x1
    stw 3, 0x244(31)
    stw 0, 0x23c(31)
L_8015B3CC:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015B3E0
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8015B3E0:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015B3F4
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8015B3F4:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015B408
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8015B408:
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80158400
    .4byte fn_80159594

