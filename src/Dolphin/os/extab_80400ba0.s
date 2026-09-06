# 901KB-gap non-actor manager block: 4 function(s), 2,660 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800100BC
etb_800100BC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800100BC, 8

.global etb_800100C4
etb_800100C4:
    .4byte 0x28CA0000
    .4byte 0x00000120
    .4byte 0x00000058
    .4byte 0x00000160
    .4byte 0x00000050
    .4byte 0x00000368
    .4byte 0x00000048
    .4byte 0x000003C8
    .4byte 0x004C0040
    .4byte 0x00000504
    .4byte 0x00000048
    .4byte 0x00000510
    .4byte 0x00000050
    .4byte 0x0000051C
    .4byte 0x00000058
    .4byte 0x00000000
    .4byte 0x020000AC
    .4byte dtor_80090E64
    .4byte 0x02000120
    .4byte dtor_8009828C
    .4byte 0x02000288
    .4byte dtor_8009EC54
    .4byte 0x820003C0
    .4byte dtor_8009EC54
.size etb_800100C4, 96

.global etb_80010124
etb_80010124:
    .4byte 0x100A0000
    .4byte 0x000000F8
    .4byte 0x00230010
    .4byte 0x00000000
    .4byte 0x82000010
    .4byte dtor_80088628
.size etb_80010124, 24

.global etb_8001013C
etb_8001013C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8001013C, 8

.section extabindex, "a"
.balign 4
.global eti_8001FE4C
eti_8001FE4C:
    .4byte fn_80400BA0
    .4byte 0x00000224
    .4byte etb_800100BC
.size eti_8001FE4C, 12

.global eti_8001FE58
eti_8001FE58:
    .4byte fn_80400DC4
    .4byte 0x00000554
    .4byte etb_800100C4
.size eti_8001FE58, 12

.global eti_8001FE64
eti_8001FE64:
    .4byte fn_80401318
    .4byte 0x00000200
    .4byte etb_80010124
.size eti_8001FE64, 12

.global eti_8001FE70
eti_8001FE70:
    .4byte fn_80401518
    .4byte 0x000000EC
    .4byte etb_8001013C
.size eti_8001FE70, 12

.text
.balign 4
.global fn_80400BA0
.global fn_80400DC4
.global fn_80401318
.global fn_80401518

fn_80400BA0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80528768@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80528768@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400BF0
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
L_80400BF0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400C28
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
L_80400C28:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400C60
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
L_80400C60:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400C98
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
L_80400C98:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400CD0
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
L_80400CD0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400D08
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
L_80400D08:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400D40
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
L_80400D40:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400D78
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
L_80400D78:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80400DB0
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
L_80400DB0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80400DC4:
    stwu 1, -0x550(1)
    mflr 0
    stw 0, 0x554(1)
    stfd 31, 0x540(1)
    psq_st 31, 0x548(1), 0, 0
    stfd 30, 0x530(1)
    psq_st 30, 0x538(1), 0, 0
    stfd 29, 0x520(1)
    psq_st 29, 0x528(1), 0, 0
    stmw 27, 0x50c(1)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 5, lbl_80479CA0@ha
    .4byte 0xC0420890 # lfs f2, lbl_80543830@sda21(r0)
    addi 5, 5, lbl_80479CA0@l
    lwz 3, 0x4(3)
    addi 9, 5, 0x20
    slwi 5, 4, 2
    lis 0, 0x4330
    lhz 4, 0x4(3)
    add 5, 9, 5
    .4byte 0xC0220894 # lfs f1, lbl_80543834@sda21(r0)
    lis 3, lbl_80479F00@ha
    xoris 4, 4, 0x8000
    stw 0, 0x4f8(1)
    .4byte 0xC0020898 # lfs f0, lbl_80543838@sda21(r0)
    addi 8, 3, lbl_80479F00@l
    stw 4, 0x4fc(1)
    lis 4, 0x4558
    .4byte 0xC88208B0 # lfd f4, lbl_80543850@sda21(r0)
    li 0, 0x0
    lfd 3, 0x4f8(1)
    addi 6, 4, 0x5431
    lwz 7, 0x4(9)
    addi 3, 1, 0x3c0
    fsubs 31, 3, 4
    lwz 5, 0x10(5)
    stfs 1, 0x84(1)
    li 10, -0x1
    add 4, 7, 5
    addi 7, 1, 0x84
    fadds 30, 1, 31
    addi 31, 4, 0x8
    stfs 1, 0x88(1)
    add 31, 9, 31
    li 5, 0x54
    stfs 0, 0x90(1)
    mr 9, 31
    stfs 30, 0x8c(1)
    stw 0, 0x8(1)
    stfs 2, 0x5c(1)
    stfs 2, 0x60(1)
    stw 0, 0xc(1)
    bl fn_8009E5BC
    .4byte 0xC0220894 # lfs f1, lbl_80543834@sda21(r0)
    lis 3, lbl_80479F00@ha
    .4byte 0xC0020898 # lfs f0, lbl_80543838@sda21(r0)
    lis 4, 0x4558
    stfs 1, 0x74(1)
    addi 8, 3, lbl_80479F00@l
    li 0, 0x0
    mr 9, 31
    stfs 1, 0x78(1)
    addi 3, 1, 0x288
    addi 6, 4, 0x5432
    addi 7, 1, 0x74
    stfs 30, 0x7c(1)
    li 5, 0x54
    li 10, -0x1
    stfs 0, 0x80(1)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8009E5BC
    .4byte 0xC0420894 # lfs f2, lbl_80543834@sda21(r0)
    lis 3, lbl_80479C60@ha
    .4byte 0xC022089C # lfs f1, lbl_8054383C@sda21(r0)
    lis 4, 0x4943
    .4byte 0xC00208A0 # lfs f0, lbl_80543840@sda21(r0)
    addi 8, 3, lbl_80479C60@l
    stfs 2, 0x64(1)
    addi 3, 1, 0x120
    addi 6, 4, 0x5431
    addi 7, 1, 0x64
    stfs 2, 0x68(1)
    li 5, 0x50
    li 9, 0x0
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    bl fn_800979E0
    lwz 3, 0x5c(1)
    lwz 0, 0x60(1)
    stw 3, 0x54(1)
    .4byte 0xC0020894 # lfs f0, lbl_80543834@sda21(r0)
    lfs 1, 0x54(1)
    stw 0, 0x58(1)
    fcmpo cr0, 1, 0
    lfs 3, 0x58(1)
    .4byte 0x40810008 # ble .L_80400F4C
    .4byte 0x48000008 # b .L_80400F50
L_80400F4C:
    fmr 1, 0
L_80400F50:
    .4byte 0xC0020894 # lfs f0, lbl_80543834@sda21(r0)
    stfs 1, 0x4dc(1)
    fcmpo cr0, 3, 0
    .4byte 0x40810008 # ble .L_80400F64
    .4byte 0x48000008 # b .L_80400F68
L_80400F64:
    fmr 3, 0
L_80400F68:
    li 27, 0xff
    li 5, 0x0
    li 6, 0xc8
    li 4, 0xb4
    lwz 3, 0x5c(1)
    stb 27, 0x44(1)
    lwz 0, 0x60(1)
    stw 3, 0x4c(1)
    .4byte 0xC0420894 # lfs f2, lbl_80543834@sda21(r0)
    lfs 1, 0x4c(1)
    stw 0, 0x50(1)
    .4byte 0xC0020890 # lfs f0, lbl_80543830@sda21(r0)
    fcmpo cr0, 1, 2
    stb 6, 0x45(1)
    lfs 4, 0x50(1)
    stb 5, 0x46(1)
    stb 27, 0x47(1)
    lwz 30, 0x44(1)
    stb 27, 0x3c(1)
    stw 30, 0x20(1)
    lbz 29, 0x20(1)
    lbz 28, 0x21(1)
    lbz 12, 0x22(1)
    lbz 11, 0x23(1)
    stb 4, 0x3d(1)
    stb 5, 0x3e(1)
    stb 27, 0x3f(1)
    lwz 10, 0x3c(1)
    stb 27, 0x34(1)
    stw 10, 0x1c(1)
    lbz 9, 0x1c(1)
    lbz 8, 0x1d(1)
    lbz 7, 0x1e(1)
    lbz 6, 0x1f(1)
    stb 27, 0x35(1)
    stb 27, 0x36(1)
    stb 5, 0x37(1)
    lwz 0, 0x34(1)
    stfs 3, 0x4e0(1)
    stw 0, 0x38(1)
    lbz 5, 0x38(1)
    lbz 4, 0x39(1)
    lbz 3, 0x3a(1)
    lbz 0, 0x3b(1)
    stw 30, 0x48(1)
    stb 29, 0x4c4(1)
    stb 28, 0x4c5(1)
    stb 12, 0x4c6(1)
    stb 11, 0x4c7(1)
    stw 10, 0x40(1)
    stb 9, 0x4c8(1)
    stb 8, 0x4c9(1)
    stb 7, 0x4ca(1)
    stb 6, 0x4cb(1)
    stfs 2, 0x4d4(1)
    stfs 0, 0x4d8(1)
    stb 5, 0x4ec(1)
    stb 4, 0x4ed(1)
    stb 3, 0x4ee(1)
    stb 0, 0x4ef(1)
    .4byte 0x40810008 # ble .L_80401060
    .4byte 0x48000008 # b .L_80401064
L_80401060:
    fmr 1, 2
L_80401064:
    .4byte 0xC0020894 # lfs f0, lbl_80543834@sda21(r0)
    stfs 1, 0x3a4(1)
    fcmpo cr0, 4, 0
    .4byte 0x40810008 # ble .L_80401078
    .4byte 0x48000008 # b .L_8040107C
L_80401078:
    fmr 4, 0
L_8040107C:
    li 7, 0x0
    li 6, 0xc8
    stb 7, 0x2c(1)
    li 0, 0x82
    .4byte 0xC0220894 # lfs f1, lbl_80543834@sda21(r0)
    lis 3, lbl_80479F00@ha
    stb 7, 0x2d(1)
    addi 4, 3, lbl_80479F00@l
    .4byte 0xC0020890 # lfs f0, lbl_80543830@sda21(r0)
    addi 3, 1, 0xac
    stb 7, 0x2e(1)
    li 5, 0x0
    stb 6, 0x2f(1)
    lwz 28, 0x2c(1)
    stb 7, 0x24(1)
    stw 28, 0x18(1)
    lbz 29, 0x18(1)
    lbz 30, 0x19(1)
    lbz 12, 0x1a(1)
    lbz 11, 0x1b(1)
    stb 7, 0x25(1)
    stb 7, 0x26(1)
    stb 6, 0x27(1)
    lwz 10, 0x24(1)
    stfs 4, 0x3a8(1)
    stw 10, 0x14(1)
    lbz 9, 0x14(1)
    lbz 8, 0x15(1)
    lbz 7, 0x16(1)
    lbz 6, 0x17(1)
    stw 28, 0x30(1)
    stb 29, 0x38c(1)
    stb 30, 0x38d(1)
    stb 12, 0x38e(1)
    stb 11, 0x38f(1)
    stw 10, 0x28(1)
    stb 9, 0x390(1)
    stb 8, 0x391(1)
    stb 7, 0x392(1)
    stb 6, 0x393(1)
    stfs 1, 0x39c(1)
    stfs 0, 0x3a0(1)
    stb 0, 0x1d2(1)
    bl fn_80090DF0
    .4byte 0xC3C20894 # lfs f30, lbl_80543834@sda21(r0)
    addi 28, 1, 0x94
    mr 27, 28
    addi 29, 1, 0xac
    stfs 30, 0x94(1)
    li 30, 0x1b
    stfs 30, 0x98(1)
    stfs 30, 0x9c(1)
    stfs 30, 0xa0(1)
    stfs 30, 0xa4(1)
    stfs 30, 0xa8(1)
    .4byte 0x48000064 # b .L_804011BC
L_8040115C:
    extsb 0, 4
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_80401174
    addi 30, 30, 0x1b
    addi 27, 27, 0x4
    .4byte 0x48000048 # b .L_804011B8
L_80401174:
    lwz 12, 0x0(29)
    mr 3, 29
    addi 5, 1, 0x10
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x11(1)
    lis 0, 0x4330
    stw 0, 0x4f8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC82208B0 # lfd f1, lbl_80543850@sda21(r0)
    stw 0, 0x4fc(1)
    lfs 2, 0x0(27)
    lfd 0, 0x4f8(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x0(27)
L_804011B8:
    addi 31, 31, 0x1
L_804011BC:
    lbz 4, 0x0(31)
    extsb. 0, 4
    .4byte 0x4082FF98 # bne .L_8040115C
    lfs 0, 0x94(1)
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_804011D8
    fmr 30, 0
L_804011D8:
    lfs 0, 0x98(1)
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_804011E8
    fmr 30, 0
L_804011E8:
    lfs 0, 0x8(28)
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_804011F8
    fmr 30, 0
L_804011F8:
    lfs 0, 0xc(28)
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_80401208
    fmr 30, 0
L_80401208:
    lfs 0, 0x10(28)
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_80401218
    fmr 30, 0
L_80401218:
    lfs 0, 0x14(28)
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_80401228
    fmr 30, 0
L_80401228:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    extsh 5, 30
    stw 0, 0x4f8(1)
    lwz 6, 0x4(3)
    fmr 3, 31
    stw 0, 0x500(1)
    addi 3, 1, 0x288
    lhz 0, 0x6(6)
    li 4, 0x2
    lhz 6, 0x4(6)
    subf 0, 5, 0
    .4byte 0xC8C208B0 # lfd f6, lbl_80543850@sda21(r0)
    xoris 5, 6, 0x8000
    .4byte 0xC08208A4 # lfs f4, lbl_80543844@sda21(r0)
    xoris 0, 0, 0x8000
    stw 5, 0x4fc(1)
    .4byte 0xC02208AC # lfs f1, lbl_8054384C@sda21(r0)
    stw 0, 0x504(1)
    lfd 2, 0x4f8(1)
    lfd 0, 0x500(1)
    fsubs 5, 2, 6
    .4byte 0xC04208A8 # lfs f2, lbl_80543848@sda21(r0)
    fsubs 0, 0, 6
    fsubs 5, 5, 30
    fmuls 0, 0, 4
    fmuls 29, 5, 4
    fadds 30, 1, 0
    fadds 1, 2, 29
    fadds 2, 2, 30
    bl fn_8009EF00
    fmr 1, 29
    addi 3, 1, 0x3c0
    fmr 2, 30
    li 4, 0x2
    fmr 3, 31
    bl fn_8009EF00
    addi 3, 1, 0xac
    li 4, -0x1
    bl dtor_80090E64
    addi 3, 1, 0x120
    li 4, -0x1
    bl dtor_8009828C
    addi 3, 1, 0x288
    li 4, -0x1
    bl dtor_8009EC54
    addi 3, 1, 0x3c0
    li 4, -0x1
    bl dtor_8009EC54
    psq_l 31, 0x548(1), 0, 0
    lfd 31, 0x540(1)
    psq_l 30, 0x538(1), 0, 0
    lfd 30, 0x530(1)
    psq_l 29, 0x528(1), 0, 0
    lfd 29, 0x520(1)
    lmw 27, 0x50c(1)
    lwz 0, 0x554(1)
    mtlr 0
    addi 1, 1, 0x550
    blr

fn_80401318:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stw 31, 0xfc(1)
    mr 31, 4
    stw 30, 0xf8(1)
    mr 30, 3
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x251(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80401364
    cmplwi 0, 0x5a
    .4byte 0x40810154 # ble .L_804014B4
L_80401364:
    lis 3, lbl_80536C50@ha
    addi 3, 3, lbl_80536C50@l
    bl fn_800BA6A4
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0220894 # lfs f1, lbl_80543834@sda21(r0)
    addi 3, 1, 0x10
    lwz 5, 0x4(5)
    stw 4, 0xe8(1)
    fmr 2, 1
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0xf0(1)
    xoris 4, 5, 0x8000
    .4byte 0xC88208B0 # lfd f4, lbl_80543850@sda21(r0)
    stw 4, 0xec(1)
    .4byte 0xC0A208B8 # lfs f5, lbl_80543858@sda21(r0)
    stw 0, 0xf4(1)
    lfd 3, 0xe8(1)
    lfd 0, 0xf0(1)
    fsubs 3, 3, 4
    .4byte 0xC0C208BC # lfs f6, lbl_8054385C@sda21(r0)
    fsubs 4, 0, 4
    bl fn_800937B0
    li 0, 0x0
    .4byte 0x80AD8E88 # lwz r5, lbl_8053AA48@sda21(r0)
    stb 0, 0x8(1)
    addi 3, 1, 0x10
    stb 0, 0x9(1)
    stb 0, 0xa(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    lbz 4, 0xc(1)
    lbz 0, 0xd(1)
    stb 4, 0x8(5)
    lbz 4, 0xe(1)
    stb 0, 0x9(5)
    lbz 0, 0xf(1)
    stb 4, 0xa(5)
    stb 0, 0xb(5)
    bl fn_80093894
    cmpwi 31, 0x4
    .4byte 0x40820014 # bne .L_80401428
    mr 3, 30
    li 4, 0x2
    bl fn_80400DC4
    .4byte 0x48000078 # b .L_8040149C
L_80401428:
    cmpwi 31, 0x5
    .4byte 0x40820014 # bne .L_80401440
    mr 3, 30
    li 4, 0x1
    bl fn_80400DC4
    .4byte 0x48000060 # b .L_8040149C
L_80401440:
    cmpwi 31, 0x6
    .4byte 0x40820014 # bne .L_80401458
    mr 3, 30
    li 4, 0x3
    bl fn_80400DC4
    .4byte 0x48000048 # b .L_8040149C
L_80401458:
    cmpwi 31, 0xb
    .4byte 0x40820014 # bne .L_80401470
    mr 3, 30
    li 4, 0x4
    bl fn_80400DC4
    .4byte 0x48000030 # b .L_8040149C
L_80401470:
    cmpwi 31, 0x1
    .4byte 0x40820014 # bne .L_80401488
    mr 3, 30
    li 4, 0x0
    bl fn_80400DC4
    .4byte 0x48000018 # b .L_8040149C
L_80401488:
    cmpwi 31, -0x1
    .4byte 0x40820010 # bne .L_8040149C
    mr 3, 30
    li 4, 0x5
    bl fn_80400DC4
L_8040149C:
    lis 4, lbl_80499520@ha
    lis 3, lbl_80499548@ha
    addi 0, 4, lbl_80499520@l
    stw 0, 0x10(1)
    addi 0, 3, lbl_80499548@l
    stw 0, 0x10(1)
L_804014B4:
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    cmpwi 31, -0x1
    .4byte 0x40820020 # bne .L_80401500
    .4byte 0x806D9218 # lwz r3, lbl_8053ADD8@sda21(r0)
    lbz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80401500
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_804595E4
L_80401500:
    lwz 0, 0x104(1)
    lwz 31, 0xfc(1)
    lwz 30, 0xf8(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_80401518:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x880D9224 # lbz r0, lbl_8053ADE4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_8040154C
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D9220 # stw r3, lbl_8053ADE0@sda21(r0)
    .4byte 0x980D9224 # stb r0, lbl_8053ADE4@sda21(r0)
L_8040154C:
    bl DVDGetDriveStatus
    mr. 31, 3
    .4byte 0x41820014 # beq .L_80401568
    cmpwi 31, 0x1
    .4byte 0x4182000C # beq .L_80401568
    li 0, 0x1
    .4byte 0x900D9220 # stw r0, lbl_8053ADE0@sda21(r0)
L_80401568:
    .4byte 0x800D9220 # lwz r0, lbl_8053ADE0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_804015D0
    cmpwi 31, 0x0
    .4byte 0x40820010 # bne .L_80401588
    li 0, 0x0
    .4byte 0x900D9220 # stw r0, lbl_8053ADE0@sda21(r0)
    .4byte 0x4800004C # b .L_804015D0
L_80401588:
    bl DVDGetDriveStatus
    cmpwi 3, -0x1
    .4byte 0x41820034 # beq .L_804015C4
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_804015C4
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DE8
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    li 4, 0x1
    lis 5, 0x8000
    li 6, 0x0
    bl fn_802B1BE0
    .4byte 0x48000010 # b .L_804015D0
L_804015C4:
    mr 3, 30
    mr 4, 31
    bl fn_80401318
L_804015D0:
    .4byte 0x806D9220 # lwz r3, lbl_8053ADE0@sda21(r0)
    cmpwi 3, 0x1
    .4byte 0x40820014 # bne .L_804015EC
    lis 4, lbl_80529DEC@ha
    li 0, 0x1
    addi 4, 4, lbl_80529DEC@l
    stb 0, 0x250(4)
L_804015EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80400BA0

