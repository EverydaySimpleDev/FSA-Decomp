.section extab, "a"
.balign 4
.global etb_8000A278
etb_8000A278:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A278, 8

.global etb_8000A280
etb_8000A280:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A280, 8

.global etb_8000A288
etb_8000A288:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A288, 8

.global etb_8000A290
etb_8000A290:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A290, 8

.global etb_8000A298
etb_8000A298:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A298, 8

.global etb_8000A2A0
etb_8000A2A0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A2A0, 8

.global etb_8000A2A8
etb_8000A2A8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A2A8, 8

.global etb_8000A2B0
etb_8000A2B0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A2B0, 8

.global etb_8000A2B8
etb_8000A2B8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A2B8, 8

.global etb_8000A2C0
etb_8000A2C0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A2C0, 8

.global etb_8000A2C8
etb_8000A2C8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A2C8, 8

.global etb_8000A2D0
etb_8000A2D0:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000A2D0, 8

.global etb_8000A2D8
etb_8000A2D8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A2D8, 8

.global etb_8000A2E0
etb_8000A2E0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A2E0, 8

.global etb_8000A2E8
etb_8000A2E8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A2E8, 8

.global etb_8000A2F0
etb_8000A2F0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A2F0, 8

.global etb_8000A2F8
etb_8000A2F8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A2F8, 8

.global etb_8000A300
etb_8000A300:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A300, 8

.section extabindex, "a"
.balign 4
.global eti_80017EFC
eti_80017EFC:
    .4byte fn_80217538
    .4byte 0x00000224
    .4byte etb_8000A278
.size eti_80017EFC, 12

.global eti_80017F08
eti_80017F08:
    .4byte fn_8021775C
    .4byte 0x00000118
    .4byte etb_8000A280
.size eti_80017F08, 12

.global eti_80017F14
eti_80017F14:
    .4byte fn_80217874
    .4byte 0x00000118
    .4byte etb_8000A288
.size eti_80017F14, 12

.global eti_80017F20
eti_80017F20:
    .4byte fn_8021798C
    .4byte 0x00000060
    .4byte etb_8000A290
.size eti_80017F20, 12

.global eti_80017F2C
eti_80017F2C:
    .4byte fn_802179EC
    .4byte 0x00000044
    .4byte etb_8000A298
.size eti_80017F2C, 12

.global eti_80017F38
eti_80017F38:
    .4byte fn_80217A30
    .4byte 0x00000044
    .4byte etb_8000A2A0
.size eti_80017F38, 12

.global eti_80017F44
eti_80017F44:
    .4byte fn_80217A74
    .4byte 0x00000044
    .4byte etb_8000A2A8
.size eti_80017F44, 12

.global eti_80017F50
eti_80017F50:
    .4byte fn_80217AB8
    .4byte 0x00000110
    .4byte etb_8000A2B0
.size eti_80017F50, 12

.global eti_80017F5C
eti_80017F5C:
    .4byte fn_80217BC8
    .4byte 0x00000110
    .4byte etb_8000A2B8
.size eti_80017F5C, 12

.global eti_80017F68
eti_80017F68:
    .4byte fn_80217CD8
    .4byte 0x00000110
    .4byte etb_8000A2C0
.size eti_80017F68, 12

.global eti_80017F74
eti_80017F74:
    .4byte fn_80217DE8
    .4byte 0x000000EC
    .4byte etb_8000A2C8
.size eti_80017F74, 12

.global eti_80017F80
eti_80017F80:
    .4byte fn_80217ED4
    .4byte 0x000000AC
    .4byte etb_8000A2D0
.size eti_80017F80, 12

.global eti_80017F8C
eti_80017F8C:
    .4byte dtor_80217F80
    .4byte 0x000000A0
    .4byte etb_8000A2D8
.size eti_80017F8C, 12

.global eti_80017F98
eti_80017F98:
    .4byte fn_80218044
    .4byte 0x00000238
    .4byte etb_8000A2E0
.size eti_80017F98, 12

.global eti_80017FA4
eti_80017FA4:
    .4byte fn_8021827C
    .4byte 0x000000E0
    .4byte etb_8000A2E8
.size eti_80017FA4, 12

.global eti_80017FB0
eti_80017FB0:
    .4byte fn_8021835C
    .4byte 0x000001DC
    .4byte etb_8000A2F0
.size eti_80017FB0, 12

.global eti_80017FBC
eti_80017FBC:
    .4byte fn_80218538
    .4byte 0x00000154
    .4byte etb_8000A2F8
.size eti_80017FBC, 12

.global eti_80017FC8
eti_80017FC8:
    .4byte fn_8021868C
    .4byte 0x00000224
    .4byte etb_8000A300
.size eti_80017FC8, 12

.text
.balign 4
.global fn_80217538
.global fn_8021775C
.global fn_80217874
.global fn_8021798C
.global fn_802179EC
.global fn_80217A30
.global fn_80217A74
.global fn_80217AB8
.global fn_80217BC8
.global fn_80217CD8
.global fn_80217DE8
.global fn_80217ED4
.global dtor_80217F80
.global fn_80218020
.global fn_80218044
.global fn_8021827C
.global fn_8021835C
.global fn_80218538
.global fn_8021868C

fn_80217538:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CD738@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CD738@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80217588
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
L_80217588:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802175C0
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
L_802175C0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802175F8
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
L_802175F8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80217630
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
L_80217630:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80217668
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
L_80217668:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802176A0
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
L_802176A0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802176D8
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
L_802176D8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80217710
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
L_80217710:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80217748
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
L_80217748:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021775C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, lbl_80539D44@ha
    lwz 4, 0x18(31)
    lfs 0, lbl_80539D44@l(3)
    psq_l 3, 0x60c(4), 0, 0
    lfs 2, 0x614(4)
    fcmpo cr0, 1, 0
    psq_st 3, 0x14(1), 0, 0
    stfs 2, 0x1c(1)
    psq_l 2, 0x600(4), 0, 0
    lfs 0, 0x608(4)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x4080000C # bge .L_802177AC
    lfs 0, 0x8(1)
    .4byte 0x4800001C # b .L_802177C4
L_802177AC:
    .4byte 0xC042CC98 # lfs f2, lbl_8053FC38@sda21(r0)
    lfs 0, 0x8(1)
    fdivs 3, 2, 1
    lfs 2, 0x14(1)
    fsubs 0, 0, 2
    fmadds 0, 3, 0, 2
L_802177C4:
    lis 3, lbl_80539D44@ha
    stfs 0, 0x14(1)
    lfs 0, lbl_80539D44@l(3)
    lfs 4, 0xc(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_802177E4
    stfs 4, 0x18(1)
    .4byte 0x4800001C # b .L_802177FC
L_802177E4:
    .4byte 0xC002CC98 # lfs f0, lbl_8053FC38@sda21(r0)
    lfs 2, 0x18(1)
    fdivs 3, 0, 1
    fsubs 0, 4, 2
    fmadds 0, 3, 0, 2
    stfs 0, 0x18(1)
L_802177FC:
    lis 3, lbl_80539D44@ha
    lfs 3, 0x10(1)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80217818
    stfs 3, 0x1c(1)
    .4byte 0x4800001C # b .L_80217830
L_80217818:
    .4byte 0xC002CC98 # lfs f0, lbl_8053FC38@sda21(r0)
    lfs 2, 0x1c(1)
    fdivs 1, 0, 1
    fsubs 0, 3, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x1c(1)
L_80217830:
    lwz 3, 0x10(31)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x14(31)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80217874:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, lbl_80539D44@ha
    lwz 4, 0x18(31)
    lfs 0, lbl_80539D44@l(3)
    psq_l 3, 0xc(4), 0, 0
    lfs 2, 0x14(4)
    fcmpo cr0, 1, 0
    psq_st 3, 0x14(1), 0, 0
    stfs 2, 0x1c(1)
    psq_l 2, 0x60c(4), 0, 0
    lfs 0, 0x614(4)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x4080000C # bge .L_802178C4
    lfs 0, 0x8(1)
    .4byte 0x4800001C # b .L_802178DC
L_802178C4:
    .4byte 0xC042CC98 # lfs f2, lbl_8053FC38@sda21(r0)
    lfs 0, 0x8(1)
    fdivs 3, 2, 1
    lfs 2, 0x14(1)
    fsubs 0, 0, 2
    fmadds 0, 3, 0, 2
L_802178DC:
    lis 3, lbl_80539D44@ha
    stfs 0, 0x14(1)
    lfs 0, lbl_80539D44@l(3)
    lfs 4, 0xc(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_802178FC
    stfs 4, 0x18(1)
    .4byte 0x4800001C # b .L_80217914
L_802178FC:
    .4byte 0xC002CC98 # lfs f0, lbl_8053FC38@sda21(r0)
    lfs 2, 0x18(1)
    fdivs 3, 0, 1
    fsubs 0, 4, 2
    fmadds 0, 3, 0, 2
    stfs 0, 0x18(1)
L_80217914:
    lis 3, lbl_80539D44@ha
    lfs 3, 0x10(1)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80217930
    stfs 3, 0x1c(1)
    .4byte 0x4800001C # b .L_80217948
L_80217930:
    .4byte 0xC002CC98 # lfs f0, lbl_8053FC38@sda21(r0)
    lfs 2, 0x1c(1)
    fdivs 1, 0, 1
    fsubs 0, 3, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x1c(1)
L_80217948:
    lwz 3, 0x8(31)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0xc(31)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8021798C:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x1
    li 6, 0x1
    stw 0, 0x14(1)
    li 7, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x18(3)
    lwz 3, 0x0(3)
    addi 4, 4, 0xc
    bl fn_8013CB44
    lwz 4, 0x18(31)
    li 5, 0x1
    lwz 3, 0x4(31)
    li 6, 0x1
    addi 4, 4, 0xc
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802179EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x10(3)
    bl fn_801EE434
    lwz 3, 0x14(31)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x10(31)
    stw 0, 0x14(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80217A30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x8(3)
    bl fn_801EE434
    lwz 3, 0xc(31)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x8(31)
    stw 0, 0xc(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80217A74:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x0(3)
    bl fn_801EE434
    lwz 3, 0x4(31)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x0(31)
    stw 0, 0x4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80217AB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x10(3)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80217B40
    lwz 4, 0x18(31)
    li 5, 0x224
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 6, 0x1
    lwz 3, 0x5fc(4)
    addi 4, 4, 0x60c
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x10(31)
    lwz 4, 0x10(31)
    cmplwi 4, 0x0
    .4byte 0x41820030 # beq .L_80217B40
    lis 3, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(3)
    stfs 0, 0x98(4)
    lfs 0, 0x4(3)
    stfs 0, 0x9c(4)
    lfs 0, 0x8(3)
    stfs 0, 0xa0(4)
    lfs 1, 0x4(3)
    lfs 0, 0x0(3)
    stfs 0, 0xb0(4)
    stfs 1, 0xb4(4)
L_80217B40:
    lwz 0, 0x14(31)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80217BB4
    lwz 4, 0x18(31)
    li 5, 0x225
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 6, 0x1
    lwz 3, 0x5fc(4)
    addi 4, 4, 0x60c
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x14(31)
    lwz 4, 0x14(31)
    cmplwi 4, 0x0
    .4byte 0x41820030 # beq .L_80217BB4
    lis 3, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(3)
    stfs 0, 0x98(4)
    lfs 0, 0x4(3)
    stfs 0, 0x9c(4)
    lfs 0, 0x8(3)
    stfs 0, 0xa0(4)
    lfs 1, 0x4(3)
    lfs 0, 0x0(3)
    stfs 0, 0xb0(4)
    stfs 1, 0xb4(4)
L_80217BB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80217BC8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80217C50
    lwz 3, 0x18(31)
    li 5, 0x22f
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 6, 0x1
    addi 4, 3, 0xc
    lwz 3, 0x4(3)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x8(31)
    lwz 4, 0x8(31)
    cmplwi 4, 0x0
    .4byte 0x41820030 # beq .L_80217C50
    lis 3, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(3)
    stfs 0, 0x98(4)
    lfs 0, 0x4(3)
    stfs 0, 0x9c(4)
    lfs 0, 0x8(3)
    stfs 0, 0xa0(4)
    lfs 1, 0x4(3)
    lfs 0, 0x0(3)
    stfs 0, 0xb0(4)
    stfs 1, 0xb4(4)
L_80217C50:
    lwz 0, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80217CC4
    lwz 3, 0x18(31)
    li 5, 0x230
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 6, 0x1
    addi 4, 3, 0xc
    lwz 3, 0x4(3)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xc(31)
    lwz 4, 0xc(31)
    cmplwi 4, 0x0
    .4byte 0x41820030 # beq .L_80217CC4
    lis 3, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(3)
    stfs 0, 0x98(4)
    lfs 0, 0x4(3)
    stfs 0, 0x9c(4)
    lfs 0, 0x8(3)
    stfs 0, 0xa0(4)
    lfs 1, 0x4(3)
    lfs 0, 0x0(3)
    stfs 0, 0xb0(4)
    stfs 1, 0xb4(4)
L_80217CC4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80217CD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80217D60
    lwz 3, 0x18(31)
    li 5, 0x228
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 6, 0x1
    addi 4, 3, 0xc
    lwz 3, 0x4(3)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x0(31)
    lwz 4, 0x0(31)
    cmplwi 4, 0x0
    .4byte 0x41820030 # beq .L_80217D60
    lis 3, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(3)
    stfs 0, 0x98(4)
    lfs 0, 0x4(3)
    stfs 0, 0x9c(4)
    lfs 0, 0x8(3)
    stfs 0, 0xa0(4)
    lfs 1, 0x4(3)
    lfs 0, 0x0(3)
    stfs 0, 0xb0(4)
    stfs 1, 0xb4(4)
L_80217D60:
    lwz 0, 0x4(31)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80217DD4
    lwz 3, 0x18(31)
    li 5, 0x229
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 6, 0x1
    addi 4, 3, 0xc
    lwz 3, 0x4(3)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x4(31)
    lwz 4, 0x4(31)
    cmplwi 4, 0x0
    .4byte 0x41820030 # beq .L_80217DD4
    lis 3, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(3)
    stfs 0, 0x98(4)
    lfs 0, 0x4(3)
    stfs 0, 0x9c(4)
    lfs 0, 0x8(3)
    stfs 0, 0xa0(4)
    lfs 1, 0x4(3)
    lfs 0, 0x0(3)
    stfs 0, 0xb0(4)
    stfs 1, 0xb4(4)
L_80217DD4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80217DE8:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 5, 0x231
    stw 0, 0x14(1)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x18(3)
    li 9, 0x0
    li 10, 0x1
    addi 4, 3, 0xc
    lwz 3, 0x4(3)
    bl fn_8013CC50
    lwz 6, 0x18(31)
    mr 31, 3
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 5, 0x232
    lwz 3, 0x4(6)
    addi 4, 6, 0xc
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 31, 0x0
    .4byte 0x41820030 # beq .L_80217E8C
    lis 4, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(4)
    stfs 0, 0x98(31)
    lfs 0, 0x4(4)
    stfs 0, 0x9c(31)
    lfs 0, 0x8(4)
    stfs 0, 0xa0(31)
    lfs 1, 0x4(4)
    lfs 0, 0x0(4)
    stfs 0, 0xb0(31)
    stfs 1, 0xb4(31)
L_80217E8C:
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80217EC0
    lis 4, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(4)
    stfs 0, 0x98(3)
    lfs 0, 0x4(4)
    stfs 0, 0x9c(3)
    lfs 0, 0x8(4)
    stfs 0, 0xa0(3)
    lfs 1, 0x4(4)
    lfs 0, 0x0(4)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
L_80217EC0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80217ED4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    li 27, 0x0
    lwz 28, 0x18(3)
    lis 3, lbl_8046A5A0@ha
    addi 29, 3, lbl_8046A5A0@l
    lis 3, lbl_804CD838@ha
    addi 30, 28, 0xc
    addi 31, 3, lbl_804CD838@l
L_80217F00:
    lhz 5, 0x0(29)
    mr 4, 30
    lwz 3, 0x4(28)
    li 6, 0x1
    .4byte 0xC022CC98 # lfs f1, lbl_8053FC38@sda21(r0)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80217F5C
    lis 4, lbl_804CD838@ha
    lfsu 0, lbl_804CD838@l(4)
    stfs 0, 0x98(3)
    lfs 0, 0x4(31)
    stfs 0, 0x9c(3)
    lfs 0, 0x8(31)
    stfs 0, 0xa0(3)
    lfs 1, 0x4(31)
    lfs 0, 0x0(4)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
L_80217F5C:
    addi 27, 27, 0x1
    addi 29, 29, 0x2
    cmpwi 27, 0x6
    .4byte 0x4180FF98 # blt .L_80217F00
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

dtor_80217F80:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820068 # beq .L_80218004
    lwz 3, 0x0(30)
    bl fn_801EE434
    lwz 3, 0x4(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x0(30)
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    bl fn_801EE434
    lwz 3, 0xc(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x8(30)
    stw 0, 0xc(30)
    lwz 3, 0x10(30)
    bl fn_801EE434
    lwz 3, 0x14(30)
    bl fn_801EE434
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x10(30)
    stw 3, 0x14(30)
    .4byte 0x4081000C # ble .L_80218004
    mr 3, 30
    bl dtor_80084580
L_80218004:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80218020:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    stw 0, 0x18(3)
    blr

fn_80218044:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CD838@ha
    .4byte 0xC002C11C # lfs f0, lbl_8053F0BC@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CD838@l
    addi 3, 31, 0x0
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    stfs 0, 0x0(31)
    extsb. 0, 0
    stfs 0, 0x4(3)
    stfs 0, 0x8(3)
    .4byte 0x40820030 # bne .L_802180A8
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_802180A8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802180E0
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_802180E0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218118
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80218118:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218150
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80218150:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218188
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80218188:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802181C0
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_802181C0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802181F8
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_802181F8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218230
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80218230:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218268
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80218268:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021827C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x418200A8 # beq .L_80218344
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_802182B8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802182BC
L_802182B8:
    addi 3, 3, 0xdc
L_802182BC:
    lfs 0, 0x4(3)
    lfs 1, 0x10(30)
    fcmpo cr0, 0, 1
    .4byte 0x4080007C # bge .L_80218344
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800070 # bge .L_80218344
    lfs 4, 0x68(30)
    lfs 3, 0x60(30)
    lfs 2, 0xc(30)
    fsubs 1, 4, 3
    .4byte 0xC002CCA0 # lfs f0, lbl_8053FC40@sda21(r0)
    fmr 5, 2
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80218300
    fadds 5, 2, 3
    fadds 2, 2, 4
L_80218300:
    lfs 0, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 0, 5
    .4byte 0x40800014 # bge .L_80218320
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_80218320
    li 0, 0x1
L_80218320:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80218344
    mr 3, 30
    addi 4, 1, 0x8
    bl fn_801CE010
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x8
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80218344:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021835C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x408201A4 # bne .L_80218520
    addi 4, 1, 0x20
    li 30, 0x0
    bl fn_801CE010
    psq_l 2, 0x20(1), 0, 0
    lfs 1, 0x28(1)
    psq_st 2, 0x14(1), 0, 0
    .4byte 0xC002CCA0 # lfs f0, lbl_8053FC40@sda21(r0)
    stfs 1, 0x1c(1)
    psq_st 2, 0x8(1), 0, 0
    stfs 1, 0x10(1)
    lfs 1, 0x68(31)
    lfs 2, 0x60(31)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40810020 # ble .L_802183D8
    lfs 0, 0x14(1)
    lfs 1, 0x8(1)
    fadds 0, 0, 2
    stfs 0, 0x14(1)
    lfs 0, 0x68(31)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
L_802183D8:
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80218418
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    bl fn_8022BA58
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_8021844C
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    bl fn_8022BA58
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_8021844C
    li 30, 0x1
    .4byte 0x48000038 # b .L_8021844C
L_80218418:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x14
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8021844C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x8
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8021844C
    li 30, 0x1
L_8021844C:
    clrlwi. 0, 30, 24
    .4byte 0x41820070 # beq .L_802184C0
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 10, 10
    .4byte 0x408200C4 # bne .L_80218520
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x408200BC # bne .L_80218520
    mr 3, 31
    bl fn_801E1DE8
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_802184B0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x4182001C # beq .L_8021849C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_802184B0
L_8021849C:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x18
    li 5, 0x0
    bl fn_801F0E34
L_802184B0:
    lwz 0, 0x230(31)
    oris 0, 0, 0x20
    stw 0, 0x230(31)
    .4byte 0x48000064 # b .L_80218520
L_802184C0:
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 10, 10
    .4byte 0x41820058 # beq .L_80218520
    rlwinm. 0, 3, 0, 9, 9
    .4byte 0x40820050 # bne .L_80218520
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x41820048 # beq .L_80218520
    rlwinm. 0, 3, 0, 12, 12
    .4byte 0x40820040 # bne .L_80218520
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x41800034 # blt .L_80218520
    mr 3, 31
    bl fn_801E1DE8
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80218514
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1b
    li 5, 0x0
    bl fn_801F0E34
L_80218514:
    lwz 0, 0x230(31)
    oris 0, 0, 0x40
    stw 0, 0x230(31)
L_80218520:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80218538:
    stwu 1, -0x40(1)
    mflr 0
    lfs 2, 0x68(3)
    stw 0, 0x44(1)
    lfs 5, 0x60(3)
    stw 31, 0x3c(1)
    fsubs 1, 2, 5
    .4byte 0xC002CCA0 # lfs f0, lbl_8053FC40@sda21(r0)
    stw 30, 0x38(1)
    mr 30, 3
    lfs 3, 0x10(3)
    stw 29, 0x34(1)
    lfs 4, 0xc(3)
    fcmpo cr0, 1, 0
    stfs 3, 0x24(1)
    li 29, 0x0
    stfs 4, 0x20(1)
    stfs 4, 0x28(1)
    stfs 3, 0x2c(1)
    .4byte 0x40810014 # ble .L_80218598
    fadds 1, 4, 5
    fadds 0, 4, 2
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
L_80218598:
    lfs 2, 0x6c(30)
    lfs 3, 0x64(30)
    .4byte 0xC002CCA0 # lfs f0, lbl_8053FC40@sda21(r0)
    fsubs 1, 2, 3
    fcmpo cr0, 1, 0
    .4byte 0x4081001C # ble .L_802185C8
    lfs 1, 0x24(1)
    lfs 0, 0x2c(1)
    fadds 1, 1, 3
    fadds 0, 0, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
L_802185C8:
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_802185F8
    lwz 3, 0x4(30)
    addi 4, 1, 0x20
    li 5, 0x0
    bl fn_8022B978
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_8021866C
    li 29, 0x1
    .4byte 0x48000078 # b .L_8021866C
L_802185F8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x8
    lfs 2, 0x20(1)
    li 30, 0x0
    lwz 31, 0x24(3)
    lfs 1, 0x24(1)
    .4byte 0xC002CCA0 # lfs f0, lbl_8053FC40@sda21(r0)
    mr 3, 31
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80218660
    lfs 2, 0x28(1)
    mr 3, 31
    lfs 1, 0x2c(1)
    addi 4, 1, 0x14
    .4byte 0xC002CCA0 # lfs f0, lbl_8053FC40@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80218660
    li 30, 0x1
L_80218660:
    clrlwi. 0, 30, 24
    .4byte 0x41820008 # beq .L_8021866C
    li 29, 0x1
L_8021866C:
    lwz 0, 0x44(1)
    mr 3, 29
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8021868C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CD940@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CD940@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802186DC
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
L_802186DC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218714
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
L_80218714:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021874C
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
L_8021874C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218784
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
L_80218784:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802187BC
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
L_802187BC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802187F4
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
L_802187F4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021882C
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
L_8021882C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80218864
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
L_80218864:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021889C
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
L_8021889C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80217538
    .4byte fn_80218044
    .4byte fn_8021868C
