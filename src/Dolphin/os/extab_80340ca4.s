.section extab, "a"
.balign 4
.global etb_8000DF84
etb_8000DF84:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DF84, 8

.global etb_8000DF8C
etb_8000DF8C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DF8C, 8

.global etb_8000DF94
etb_8000DF94:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DF94, 8

.global etb_8000DF9C
etb_8000DF9C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DF9C, 8

.section extabindex, "a"
.balign 4
.global eti_8001D7AC
eti_8001D7AC:
    .4byte fn_80340CA4
    .4byte 0x00000224
    .4byte etb_8000DF84
.size eti_8001D7AC, 12

.global eti_8001D7B8
eti_8001D7B8:
    .4byte fn_80340EC8
    .4byte 0x00000214
    .4byte etb_8000DF8C
.size eti_8001D7B8, 12

.global eti_8001D7C4
eti_8001D7C4:
    .4byte fn_803410DC
    .4byte 0x000007DC
    .4byte etb_8000DF94
.size eti_8001D7C4, 12

.global eti_8001D7D0
eti_8001D7D0:
    .4byte fn_803418B8
    .4byte 0x00000148
    .4byte etb_8000DF9C
.size eti_8001D7D0, 12

.text
.balign 4
.global fn_80340CA4
.global fn_80340EC8
.global fn_803410DC
.global fn_803418B8

fn_80340CA4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80509FF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80509FF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340CF4
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
L_80340CF4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340D2C
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
L_80340D2C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340D64
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
L_80340D64:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340D9C
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
L_80340D9C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340DD4
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
L_80340DD4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340E0C
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
L_80340E0C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340E44
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
L_80340E44:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340E7C
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
L_80340E7C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80340EB4
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
L_80340EB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80340EC8:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_80340EF0
    cmpwi 0, 0xb
    .4byte 0x408201AC # bne .L_80341098
L_80340EF0:
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80340F68
L_80340F08:
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
L_80340F68:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80340F08
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    addi 3, 1, 0x8
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    bl PSMTXIdentity
    li 0, 0x40
    stb 0, 0x66(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x40820040 # bne .L_80341034
    lfs 3, 0x250(31)
    .4byte 0xC042F31C # lfs f2, lbl_805422BC@sda21(r0)
    .4byte 0xC022F318 # lfs f1, lbl_805422B8@sda21(r0)
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    fnmsubs 1, 2, 3, 1
    stfs 3, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 1, 0x30(1)
    .4byte 0x48000038 # b .L_80341068
L_80341034:
    lfs 2, 0x250(31)
    .4byte 0xC022F31C # lfs f1, lbl_805422BC@sda21(r0)
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    fsubs 1, 1, 2
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 1, 0x30(1)
L_80341068:
    addi 0, 1, 0x8
    .4byte 0xC022F324 # lfs f1, lbl_805422C4@sda21(r0)
    stw 0, 0x50(1)
    lis 3, lbl_80471EC8@ha
    fmr 2, 1
    addi 4, 3, lbl_80471EC8@l
    lwz 5, 0x23c(31)
    mr 3, 31
    addi 6, 1, 0x38
    li 7, 0x7
    bl fn_801F06F0
    .4byte 0x48000034 # b .L_803410C8
L_80341098:
    cmpwi 0, 0x4
    .4byte 0x4180002C # blt .L_803410C8
    cmpwi 0, 0x7
    .4byte 0x41810024 # bgt .L_803410C8
    .4byte 0xC022F324 # lfs f1, lbl_805422C4@sda21(r0)
    lis 4, lbl_80471EC8@ha
    lwz 5, 0x23c(31)
    addi 4, 4, lbl_80471EC8@l
    fmr 2, 1
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
L_803410C8:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_803410DC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lbz 0, 0x255(3)
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_8034119C
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40810074 # ble .L_8034119C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80341150
    li 0, 0x1
    .4byte 0xC002F328 # lfs f0, lbl_805422C8@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_80341150:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    lwz 4, 0x24(3)
    lfs 0, 0x14(31)
    lbz 0, 0x7f5(4)
    fsubs 2, 1, 0
    lfs 1, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8034119C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    stw 3, 0x7f8(4)
    stfs 1, 0x7fc(4)
    stfs 2, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_8034119C:
    lwz 0, 0x230(31)
    cmplwi 0, 0xb
    .4byte 0x418105A8 # bgt .L_8034174C
    lis 3, jumptable_804AC524@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AC524@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820574 # beq .L_8034174C
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    stw 0, 0x234(31)
    .4byte 0x48000554 # b .L_8034174C
    lbz 0, 0x255(31)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_80341238
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820538 # beq .L_8034174C
    lwz 30, 0x248(31)
    cmpwi 30, 0x0
    .4byte 0x40810018 # ble .L_80341238
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80341238:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80341260
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80341260:
    li 3, 0x2
    li 0, 0x3c
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x480004DC # b .L_8034174C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x418104D0 # bgt .L_8034174C
    li 3, 0x3
    li 0, 0x73
    stw 3, 0x230(31)
    addi 4, 31, 0xc
    .4byte 0xC022F324 # lfs f1, lbl_805422C4@sda21(r0)
    li 5, 0x418
    stw 0, 0x234(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    lwz 3, 0x4(31)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F324 # lfs f1, lbl_805422C4@sda21(r0)
    li 5, 0x419
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F324 # lfs f1, lbl_805422C4@sda21(r0)
    li 5, 0x41a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x4e
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000430 # b .L_8034174C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810424 # bgt .L_8034174C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x35
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x4
    .4byte 0xC002F318 # lfs f0, lbl_805422B8@sda21(r0)
    stw 0, 0x230(31)
    lis 3, lbl_804AC4B8@ha
    stfs 0, 0x44(31)
    lbz 0, lbl_804AC4B8@l(3)
    stw 0, 0x234(31)
    .4byte 0x480003F0 # b .L_8034174C
    lfs 1, 0x44(31)
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8034138C
    li 3, 0x5
    li 0, 0x3c
    stw 3, 0x230(31)
    stfs 0, 0x44(31)
    stw 0, 0x234(31)
    .4byte 0x480003C4 # b .L_8034174C
L_8034138C:
    .4byte 0xC002F32C # lfs f0, lbl_805422CC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x418103AC # bgt .L_8034174C
    lwz 3, 0x238(31)
    cmpwi 3, 0x9
    .4byte 0x408003A0 # bge .L_8034174C
    addi 0, 3, 0x1
    lis 3, lbl_804AC4B8@ha
    stw 0, 0x238(31)
    addi 3, 3, lbl_804AC4B8@l
    lwz 0, 0x238(31)
    lbzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000380 # b .L_8034174C
    lwz 3, 0x234(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842F338 # lfd f2, lbl_805422D8@sda21(r0)
    stw 0, 0x34(1)
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    lfd 1, 0x30(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820350 # bne .L_8034174C
    li 3, 0x6
    li 0, 0x50
    stw 3, 0x230(31)
    .4byte 0xC002F330 # lfs f0, lbl_805422D0@sda21(r0)
    stw 0, 0x234(31)
    lfs 1, 0x14(31)
    psq_l 2, 0xc(31), 0, 0
    fadds 0, 1, 0
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    bl SpatialRegistry_GetBase
    lwz 0, 0x90(31)
    lis 4, 0x4242
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d42
    rlwinm 0, 0, 24, 19, 19
    addi 6, 1, 0x20
    li 8, -0x1
    li 9, -0x1
    ori 7, 0, 0x50
    bl fn_801F9484
    stw 3, 0x244(31)
    lis 4, 0x5
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x85
    bl fn_801F0E34
    .4byte 0x480002DC # b .L_8034174C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x418102D0 # bgt .L_8034174C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x36
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x7
    li 0, 0x3c
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x480002A8 # b .L_8034174C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_803414C4
    li 3, 0x8
    li 0, 0xa
    stw 3, 0x230(31)
    stw 0, 0x234(31)
L_803414C4:
    lbz 0, 0x255(31)
    cmplwi 0, 0x1
    .4byte 0x40820280 # bne .L_8034174C
    bl SpatialRegistry_GetBase
    lwz 4, 0x244(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182026C # beq .L_8034174C
    lfs 1, 0x14(3)
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820258 # bne .L_8034174C
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 0, 0x0
    stb 0, 0x255(31)
    .4byte 0x48000244 # b .L_8034174C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_80341524
    li 0, 0x9
    stw 0, 0x230(31)
    .4byte 0x4800022C # b .L_8034174C
L_80341524:
    lfs 1, 0x250(31)
    .4byte 0xC002F32C # lfs f0, lbl_805422CC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x250(31)
    .4byte 0x48000218 # b .L_8034174C
    bl SpatialRegistry_GetBase
    lwz 4, 0x244(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820204 # bne .L_8034174C
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80341584
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_80341584
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80341578
    bl fn_80138B7C
L_80341578:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001CC # b .L_8034174C
L_80341584:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80341598
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80341598:
    li 0, -0x1
    li 3, 0x12c
    stw 0, 0x244(31)
    li 0, 0xa
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820190 # bne .L_8034174C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820174 # beq .L_8034174C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820158 # bne .L_8034174C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    .4byte 0x4800014C # b .L_8034174C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810140 # bgt .L_8034174C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820040 # beq .L_80341668
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820108 # beq .L_8034174C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200E8 # bne .L_8034174C
L_80341668:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_803416A0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0xd
    .4byte 0x41820018 # beq .L_803416A0
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0xd
    li 6, 0x0
    bl fn_80458FF0
L_803416A0:
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    li 3, 0xb
    li 0, 0x3c
    stfs 0, 0x250(31)
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x48000094 # b .L_8034174C
    lfs 1, 0x250(31)
    .4byte 0xC002F324 # lfs f0, lbl_805422C4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820074 # bne .L_80341740
    stfs 0, 0x250(31)
    li 3, 0x6
    li 0, 0x50
    .4byte 0xC002F330 # lfs f0, lbl_805422D0@sda21(r0)
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    lfs 1, 0x14(31)
    psq_l 2, 0xc(31), 0, 0
    fadds 0, 1, 0
    stfs 1, 0x1c(1)
    psq_st 2, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4242
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x14
    li 7, 0x2050
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x244(31)
    lis 4, 0x5
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x85
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_8034174C
L_80341740:
    .4byte 0xC002F334 # lfs f0, lbl_805422D4@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x250(31)
L_8034174C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182004C # beq .L_803417A0
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_803417A0
    cmpwi 0, 0x9
    .4byte 0x4182003C # beq .L_803417A0
    cmpwi 0, 0xa
    .4byte 0x41820034 # beq .L_803417A0
    lfs 2, 0x10(31)
    addi 4, 1, 0x8
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002F320 # lfs f0, lbl_805422C0@sda21(r0)
    stfs 1, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_803417A0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x4082000C # bne .L_803417B4
    li 0, 0x330
    stw 0, 0x23c(31)
L_803417B4:
    lwz 0, 0x230(31)
    cmpwi 0, 0xb
    .4byte 0x40820034 # bne .L_803417F0
    lwz 0, 0x234(31)
    srawi 3, 0, 2
    addi 3, 3, 0x2
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add 0, 0, 3
    mulli 3, 0, 0x5
    addi 0, 3, 0x326
    stw 0, 0x23c(31)
    .4byte 0x480000A0 # b .L_8034188C
L_803417F0:
    cmpwi 0, 0x7
    .4byte 0x40820050 # bne .L_80341844
    lwz 0, 0x234(31)
    cmpwi 0, 0x2b
    .4byte 0x40800010 # bge .L_80341810
    li 0, 0x330
    stw 0, 0x23c(31)
    .4byte 0x48000080 # b .L_8034188C
L_80341810:
    cmpwi 0, 0x33
    .4byte 0x40800010 # bge .L_80341824
    li 0, 0x32f
    stw 0, 0x23c(31)
    .4byte 0x4800006C # b .L_8034188C
L_80341824:
    cmpwi 0, 0x34
    .4byte 0x40800010 # bge .L_80341838
    li 0, 0x32e
    stw 0, 0x23c(31)
    .4byte 0x48000058 # b .L_8034188C
L_80341838:
    li 0, 0x32d
    stw 0, 0x23c(31)
    .4byte 0x4800004C # b .L_8034188C
L_80341844:
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_80341858
    li 0, 0x102
    stw 0, 0x23c(31)
    .4byte 0x48000038 # b .L_8034188C
L_80341858:
    cmpwi 0, 0x5
    .4byte 0x40820010 # bne .L_8034186C
    li 0, 0x330
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_8034188C
L_8034186C:
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_8034188C
    lis 3, lbl_804AC4C4@ha
    lwz 0, 0x238(31)
    addi 3, 3, lbl_804AC4C4@l
    lbzx 3, 3, 0
    addi 0, 3, 0x101
    stw 0, 0x23c(31)
L_8034188C:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803418A0
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_803418A0:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803418B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, -0x1
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x0
    stw 30, 0x8(1)
    lwz 4, 0x90(31)
    extrwi 4, 4, 8, 12
    stw 4, 0x240(31)
    stw 3, 0x23c(31)
    stw 0, 0x244(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80341904
    li 0, 0x1
    stb 0, 0x254(31)
    .4byte 0x48000014 # b .L_80341914
L_80341904:
    stb 3, 0x254(31)
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80341914:
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x248(31)
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820018 # beq .L_80341940
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x238(31)
    stw 0, 0x234(31)
    .4byte 0x48000020 # b .L_8034195C
L_80341940:
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    stw 0, 0x234(31)
L_8034195C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_803419A8
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_803419A8
    lfs 1, 0x10(31)
    .4byte 0xC002F340 # lfs f0, lbl_805422E0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x24(31), 0, 0
    stfs 0, 0x2c(31)
L_803419A8:
    .4byte 0xC002F324 # lfs f0, lbl_805422C4@sda21(r0)
    stfs 0, 0x250(31)
    bl GetRoomConfigRecord
    lwz 4, 0x248(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_803419E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803419E0
    li 0, 0x1
    stb 0, 0x255(31)
    .4byte 0x4800000C # b .L_803419E8
L_803419E0:
    li 0, 0x0
    stb 0, 0x255(31)
L_803419E8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80340CA4
