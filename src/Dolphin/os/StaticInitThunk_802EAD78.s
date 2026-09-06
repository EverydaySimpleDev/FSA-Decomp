# fn_802EAD78 - ENDM: static-init boilerplate (0x4A4)
# Same __register_global_object x9 pattern as every other actor's tail
# static-init in this gap, just with more per-registration setup code
# (floating-point default field initializers) hence the larger size.
.section extab, "a"
.balign 4
.global etb_8000D16C
etb_8000D16C:
    .4byte 0x0BCA0000
    .4byte 0x00000000
.size etb_8000D16C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C354
eti_8001C354:
    .4byte fn_802EAD78
    .4byte 0x000004A4
    .4byte etb_8000D16C
.size eti_8001C354, 12

.text
.balign 4
.global fn_802EAD78

fn_802EAD78:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stfd 30, 0xe0(1)
    psq_st 30, 0xe8(1), 0, 0
    stfd 29, 0xd0(1)
    psq_st 29, 0xd8(1), 0, 0
    stfd 28, 0xc0(1)
    psq_st 28, 0xc8(1), 0, 0
    stfd 27, 0xb0(1)
    psq_st 27, 0xb8(1), 0, 0
    stfd 26, 0xa0(1)
    psq_st 26, 0xa8(1), 0, 0
    stfd 25, 0x90(1)
    psq_st 25, 0x98(1), 0, 0
    stfd 24, 0x80(1)
    psq_st 24, 0x88(1), 0, 0
    stfd 23, 0x70(1)
    psq_st 23, 0x78(1), 0, 0
    stfd 22, 0x60(1)
    psq_st 22, 0x68(1), 0, 0
    stfd 21, 0x50(1)
    psq_st 21, 0x58(1), 0, 0
    stfd 20, 0x40(1)
    psq_st 20, 0x48(1), 0, 0
    stfd 19, 0x30(1)
    psq_st 19, 0x38(1), 0, 0
    stfd 18, 0x20(1)
    psq_st 18, 0x28(1), 0, 0
    stfd 17, 0x10(1)
    psq_st 17, 0x18(1), 0, 0
    stw 31, 0xc(1)
    lis 3, lbl_804D56A8@ha
    .4byte 0xC222E398 # lfs f17, lbl_80541338@sda21(r0)
    addi 31, 3, lbl_804D56A8@l
    .4byte 0xC262E3A0 # lfs f19, lbl_80541340@sda21(r0)
    addi 4, 31, 0x0
    .4byte 0xC242E39C # lfs f18, lbl_8054133C@sda21(r0)
    .4byte 0xC282E3A4 # lfs f20, lbl_80541344@sda21(r0)
    addi 3, 31, 0x88
    .4byte 0xC1A2E3D4 # lfs f13, lbl_80541374@sda21(r0)
    .4byte 0xC2C2E3AC # lfs f22, lbl_8054134C@sda21(r0)
    .4byte 0xC2A2E3A8 # lfs f21, lbl_80541348@sda21(r0)
    .4byte 0xC2E2E3B0 # lfs f23, lbl_80541350@sda21(r0)
    .4byte 0xC302E3B4 # lfs f24, lbl_80541354@sda21(r0)
    .4byte 0xC322E3B8 # lfs f25, lbl_80541358@sda21(r0)
    .4byte 0xC342E3BC # lfs f26, lbl_8054135C@sda21(r0)
    .4byte 0xC362E3C0 # lfs f27, lbl_80541360@sda21(r0)
    .4byte 0xC382E3C4 # lfs f28, lbl_80541364@sda21(r0)
    .4byte 0xC3A2E3C8 # lfs f29, lbl_80541368@sda21(r0)
    .4byte 0xC3C2E3CC # lfs f30, lbl_8054136C@sda21(r0)
    .4byte 0xC3E2E3D0 # lfs f31, lbl_80541370@sda21(r0)
    .4byte 0xC182E3D8 # lfs f12, lbl_80541378@sda21(r0)
    .4byte 0xC162E3DC # lfs f11, lbl_8054137C@sda21(r0)
    .4byte 0xC142E3E0 # lfs f10, lbl_80541380@sda21(r0)
    .4byte 0xC122E3E4 # lfs f9, lbl_80541384@sda21(r0)
    .4byte 0xC102E3E8 # lfs f8, lbl_80541388@sda21(r0)
    .4byte 0xC0E2E3EC # lfs f7, lbl_8054138C@sda21(r0)
    .4byte 0xC0C2E3F0 # lfs f6, lbl_80541390@sda21(r0)
    .4byte 0xC0A2E3F4 # lfs f5, lbl_80541394@sda21(r0)
    .4byte 0xC082E3F8 # lfs f4, lbl_80541398@sda21(r0)
    .4byte 0xC062E3FC # lfs f3, lbl_8054139C@sda21(r0)
    .4byte 0xC042E400 # lfs f2, lbl_805413A0@sda21(r0)
    .4byte 0xC022E404 # lfs f1, lbl_805413A4@sda21(r0)
    .4byte 0xC002E408 # lfs f0, lbl_805413A8@sda21(r0)
    stfs 17, 0x0(31)
    stfs 18, 0x4(4)
    stfs 17, 0x8(4)
    stfs 18, 0xc(4)
    stfs 17, 0x10(4)
    stfs 18, 0x14(4)
    stfs 17, 0x18(4)
    stfs 18, 0x1c(4)
    stfs 17, 0x20(4)
    stfs 18, 0x24(4)
    stfs 17, 0x28(4)
    stfs 18, 0x2c(4)
    stfs 17, 0x30(4)
    stfs 18, 0x34(4)
    stfs 17, 0x38(4)
    stfs 18, 0x3c(4)
    stfs 17, 0x40(4)
    stfs 18, 0x44(4)
    stfs 17, 0x48(4)
    stfs 18, 0x4c(4)
    stfs 17, 0x50(4)
    stfs 18, 0x54(4)
    stfs 17, 0x58(4)
    stfs 18, 0x5c(4)
    stfs 17, 0x60(4)
    stfs 18, 0x64(4)
    stfs 17, 0x68(4)
    stfs 18, 0x6c(4)
    stfs 17, 0x70(4)
    stfs 18, 0x74(4)
    stfs 17, 0x78(4)
    stfs 18, 0x7c(4)
    stfs 17, 0x80(4)
    stfs 18, 0x84(4)
    stfs 19, 0x88(31)
    stfs 20, 0x4(3)
    stfs 21, 0x8(3)
    stfs 22, 0xc(3)
    stfs 23, 0x10(3)
    stfs 22, 0x14(3)
    stfs 24, 0x18(3)
    stfs 25, 0x1c(3)
    stfs 26, 0x20(3)
    stfs 27, 0x24(3)
    stfs 28, 0x28(3)
    stfs 29, 0x2c(3)
    stfs 30, 0x30(3)
    stfs 31, 0x34(3)
    stfs 13, 0x38(3)
    stfs 12, 0x3c(3)
    stfs 11, 0x40(3)
    stfs 10, 0x44(3)
    stfs 13, 0x48(3)
    stfs 9, 0x4c(3)
    stfs 13, 0x50(3)
    stfs 8, 0x54(3)
    stfs 13, 0x58(3)
    stfs 7, 0x5c(3)
    stfs 13, 0x60(3)
    stfs 6, 0x64(3)
    stfs 5, 0x68(3)
    stfs 4, 0x6c(3)
    stfs 3, 0x70(3)
    stfs 2, 0x74(3)
    stfs 13, 0x78(3)
    stfs 1, 0x7c(3)
    stfs 0, 0x80(3)
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    .4byte 0xC002E40C # lfs f0, lbl_805413AC@sda21(r0)
    extsb. 0, 0
    stfs 0, 0x84(3)
    .4byte 0x40820030 # bne .L_802EAFD0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x110
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_802EAFD0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB008
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x11c
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_802EB008:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB040
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x128
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_802EB040:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB078
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x134
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_802EB078:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB0B0
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x140
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_802EB0B0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB0E8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x14c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_802EB0E8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB120
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x158
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_802EB120:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB158
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x164
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_802EB158:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802EB190
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x170
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_802EB190:
    psq_l 31, 0xf8(1), 0, 0
    lfd 31, 0xf0(1)
    psq_l 30, 0xe8(1), 0, 0
    lfd 30, 0xe0(1)
    psq_l 29, 0xd8(1), 0, 0
    lfd 29, 0xd0(1)
    psq_l 28, 0xc8(1), 0, 0
    lfd 28, 0xc0(1)
    psq_l 27, 0xb8(1), 0, 0
    lfd 27, 0xb0(1)
    psq_l 26, 0xa8(1), 0, 0
    lfd 26, 0xa0(1)
    psq_l 25, 0x98(1), 0, 0
    lfd 25, 0x90(1)
    psq_l 24, 0x88(1), 0, 0
    lfd 24, 0x80(1)
    psq_l 23, 0x78(1), 0, 0
    lfd 23, 0x70(1)
    psq_l 22, 0x68(1), 0, 0
    lfd 22, 0x60(1)
    psq_l 21, 0x58(1), 0, 0
    lfd 21, 0x50(1)
    psq_l 20, 0x48(1), 0, 0
    lfd 20, 0x40(1)
    psq_l 19, 0x38(1), 0, 0
    lfd 19, 0x30(1)
    psq_l 18, 0x28(1), 0, 0
    lfd 18, 0x20(1)
    psq_l 17, 0x18(1), 0, 0
    lfd 17, 0x10(1)
    lwz 0, 0x104(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802EAD78

