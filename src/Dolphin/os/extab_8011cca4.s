# Fresh project-wide gap hunt continuation: 15 functions, 6,716 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000612C
etb_8000612C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000612C, 8

.global etb_80006134
etb_80006134:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006134, 8

.global etb_8000613C
etb_8000613C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000613C, 8

.global etb_80006144
etb_80006144:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80006144, 8

.global etb_8000614C
etb_8000614C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000614C, 8

.global etb_80006154
etb_80006154:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006154, 8

.global etb_8000615C
etb_8000615C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000615C, 8

.global etb_80006164
etb_80006164:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006164, 8

.global etb_8000616C
etb_8000616C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000616C, 8

.global etb_80006174
etb_80006174:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80006174, 8

.global etb_8000617C
etb_8000617C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000617C, 8

.global etb_80006184
etb_80006184:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006184, 8

.global etb_8000618C
etb_8000618C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000618C, 8

.section extabindex, "a"
.balign 4
.global eti_80012688
eti_80012688:
    .4byte fn_8011CCA4
    .4byte 0x00000224
    .4byte etb_8000612C
.size eti_80012688, 12

.global eti_80012694
eti_80012694:
    .4byte fn_8011CEC8
    .4byte 0x00000080
    .4byte etb_80006134
.size eti_80012694, 12

.global eti_800126A0
eti_800126A0:
    .4byte fn_8011CF48
    .4byte 0x00000270
    .4byte etb_8000613C
.size eti_800126A0, 12

.global eti_800126AC
eti_800126AC:
    .4byte fn_8011D1B8
    .4byte 0x000002FC
    .4byte etb_80006144
.size eti_800126AC, 12

.global eti_800126B8
eti_800126B8:
    .4byte fn_8011D4D0
    .4byte 0x00000124
    .4byte etb_8000614C
.size eti_800126B8, 12

.global eti_800126C4
eti_800126C4:
    .4byte fn_8011D5F4
    .4byte 0x00000020
    .4byte etb_80006154
.size eti_800126C4, 12

.global eti_800126D0
eti_800126D0:
    .4byte fn_8011D614
    .4byte 0x00000168
    .4byte etb_8000615C
.size eti_800126D0, 12

.global eti_800126DC
eti_800126DC:
    .4byte fn_8011D77C
    .4byte 0x00000080
    .4byte etb_80006164
.size eti_800126DC, 12

.global eti_800126E8
eti_800126E8:
    .4byte fn_8011D7FC
    .4byte 0x00000224
    .4byte etb_8000616C
.size eti_800126E8, 12

.global eti_800126F4
eti_800126F4:
    .4byte fn_8011DA20
    .4byte 0x00000610
    .4byte etb_80006174
.size eti_800126F4, 12

.global eti_80012700
eti_80012700:
    .4byte fn_8011E030
    .4byte 0x000004CC
    .4byte etb_8000617C
.size eti_80012700, 12

.global eti_8001270C
eti_8001270C:
    .4byte fn_8011E4FC
    .4byte 0x00000154
    .4byte etb_80006184
.size eti_8001270C, 12

.global eti_80012718
eti_80012718:
    .4byte fn_8011E650
    .4byte 0x00000090
    .4byte etb_8000618C
.size eti_80012718, 12

.text
.balign 4
.global fn_8011CCA4
.global fn_8011CEC8
.global fn_8011CF48
.global fn_8011D1B8
.global fn_8011D4B4
.global fn_8011D4C8
.global fn_8011D4D0
.global fn_8011D5F4
.global fn_8011D614
.global fn_8011D77C
.global fn_8011D7FC
.global fn_8011DA20
.global fn_8011E030
.global fn_8011E4FC
.global fn_8011E650

fn_8011CCA4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC860@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC860@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CCF4
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
L_8011CCF4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CD2C
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
L_8011CD2C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CD64
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
L_8011CD64:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CD9C
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
L_8011CD9C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CDD4
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
L_8011CDD4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CE0C
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
L_8011CE0C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CE44
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
L_8011CE44:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CE7C
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
L_8011CE7C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011CEB4
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
L_8011CEB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011CEC8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820048 # beq .L_8011CF2C
    lis 3, lbl_8049DD68@ha
    addic. 0, 30, 0x274
    addi 0, 3, lbl_8049DD68@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8011CF10
    addic. 0, 30, 0x298
    .4byte 0x41820010 # beq .L_8011CF10
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x298(30)
L_8011CF10:
    mr 3, 30
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011CF2C
    mr 3, 30
    bl dtor_80084580
L_8011CF2C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011CF48:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    lwz 0, 0x234(3)
    cmplwi 0, 0x9
    .4byte 0x41810238 # bgt .L_8011D1A0
    lis 3, jumptable_8049DDC8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049DDC8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 1, 0x28(31)
    .4byte 0xC00298C4 # lfs f0, lbl_8053C864@sda21(r0)
    lfs 2, 0x244(31)
    fsubs 1, 1, 0
    .4byte 0xC00298C8 # lfs f0, lbl_8053C868@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8011CFBC
    .4byte 0xC02298CC # lfs f1, lbl_8053C86C@sda21(r0)
    addi 3, 31, 0x23c
    .4byte 0xC04298D0 # lfs f2, lbl_8053C870@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000014 # b .L_8011CFCC
L_8011CFBC:
    .4byte 0xC02298D4 # lfs f1, lbl_8053C874@sda21(r0)
    addi 3, 31, 0x23c
    .4byte 0xC04298D8 # lfs f2, lbl_8053C878@sda21(r0)
    bl fn_801CD950
L_8011CFCC:
    lfs 1, 0x28(31)
    addi 3, 31, 0x244
    .4byte 0xC00298C4 # lfs f0, lbl_8053C864@sda21(r0)
    lfs 2, 0x23c(31)
    fsubs 1, 1, 0
    bl fn_801CD950
    lfs 1, 0x244(31)
    addi 4, 1, 0x28
    lfs 0, 0x240(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x2c(1)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    lwz 3, 0x24(3)
    lfs 1, 0x258(31)
    bl fn_8030C7C4
    .4byte 0x48000194 # b .L_8011D1A0
    lfs 1, 0x244(31)
    addi 4, 1, 0x20
    lfs 0, 0x240(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    lwz 3, 0x24(3)
    lfs 1, 0x258(31)
    bl fn_8030C7C4
    .4byte 0x4800016C # b .L_8011D1A0
    bl fn_8011921C
    lis 4, lbl_80464BBC@ha
    lwz 5, 0x8(3)
    addi 3, 4, lbl_80464BBC@l
    lwz 3, 0x18(3)
    addi 0, 3, 0x14
    cmpw 5, 0
    .4byte 0x41800070 # blt .L_8011D0C4
    bl fn_8011921C
    lis 4, lbl_80464BBC@ha
    lis 0, 0x4330
    addi 5, 4, lbl_80464BBC@l
    lwz 6, 0x8(3)
    lwz 5, 0x1c(5)
    lis 4, lbl_80539D44@ha
    stw 0, 0x40(1)
    subi 3, 5, 0x4b
    .4byte 0xC84298E8 # lfd f2, lbl_8053C888@sda21(r0)
    subf 0, 6, 3
    lfs 0, lbl_80539D44@l(4)
    xoris 0, 0, 0x8000
    lfs 3, 0x28(31)
    stw 0, 0x44(1)
    lfd 1, 0x40(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8011D0AC
    stfs 3, 0x244(31)
    .4byte 0x4800001C # b .L_8011D0C4
L_8011D0AC:
    .4byte 0xC00298DC # lfs f0, lbl_8053C87C@sda21(r0)
    lfs 1, 0x244(31)
    fdivs 2, 0, 2
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x244(31)
L_8011D0C4:
    lfs 1, 0x244(31)
    addi 4, 1, 0x18
    lfs 0, 0x240(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x1c(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    lwz 3, 0x24(3)
    lfs 1, 0x258(31)
    bl fn_8030C7C4
    .4byte 0x480000B4 # b .L_8011D1A0
    lfs 1, 0x244(31)
    addi 4, 1, 0x10
    lfs 0, 0x240(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x14(1)
    stfs 0, 0x10(1)
    stfs 1, 0x14(1)
    lwz 3, 0x24(3)
    lfs 1, 0x258(31)
    bl fn_8030C7C4
    .4byte 0x48000088 # b .L_8011D1A0
    bl fn_8011921C
    lis 5, 0x444d
    lwz 4, 0x10(3)
    addi 5, 5, 0x5357
    bl fn_8011871C
    mr 30, 3
    bl fn_8011921C
    lwz 0, 0x14(3)
    cmplw 30, 0
    .4byte 0x4082001C # bne .L_8011D15C
    .4byte 0xC00298C0 # lfs f0, lbl_8053C860@sda21(r0)
    addi 4, 1, 0x30
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    stfs 0, 0x38(1)
    .4byte 0x4800000C # b .L_8011D164
L_8011D15C:
    lwz 3, 0x0(30)
    addi 4, 3, 0xc
L_8011D164:
    .4byte 0xC02298E0 # lfs f1, lbl_8053C880@sda21(r0)
    addi 3, 31, 0x244
    lfs 0, 0x4(4)
    .4byte 0xC04298E4 # lfs f2, lbl_8053C884@sda21(r0)
    fadds 1, 1, 0
    bl fn_801CD950
    lfs 1, 0x244(31)
    addi 4, 1, 0x8
    lfs 0, 0x240(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 3, 0x24(3)
    lfs 1, 0x258(31)
    bl fn_8030C7C4
L_8011D1A0:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8011D1B8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 31, 4
    cmplwi 31, 0x9
    mr 30, 3
    .4byte 0x418102C8 # bgt .L_8011D49C
    lis 3, jumptable_8049DDF0@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_8049DDF0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl fn_8011921C
    li 4, 0x11
    bl fn_801186B0
    li 28, 0x0
L_8011D200:
    mr 3, 28
    li 4, 0x3
    bl fn_80230BF4
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    mr 3, 28
    li 5, 0x3f
    li 6, 0x0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_8011D200
    bl fn_8011921C
    li 0, 0x1
    lis 4, 0x100
    stb 0, 0x2(3)
    addi 4, 4, 0x1b
    li 5, 0x0
    li 6, 0x0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    .4byte 0x48000238 # b .L_8011D49C
    .4byte 0xC00298C0 # lfs f0, lbl_8053C860@sda21(r0)
    li 3, 0x0
    li 0, -0x1
    stfs 0, 0x23c(30)
    stfs 0, 0x238(30)
    stb 3, 0x230(30)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    addi 4, 1, 0x8
    bl fn_802DCD1C
    .4byte 0x48000208 # b .L_8011D49C
    .4byte 0xC00298C0 # lfs f0, lbl_8053C860@sda21(r0)
    li 0, 0x1
    stfs 0, 0x238(30)
    stb 0, 0x230(30)
    .4byte 0x480001F4 # b .L_8011D49C
    .4byte 0xC0029900 # lfs f0, lbl_8053C8A0@sda21(r0)
    stfs 0, 0x238(30)
    .4byte 0x480001E8 # b .L_8011D49C
    li 27, 0x0
    lis 28, 0x444d
L_8011D2C0:
    bl fn_8011921C
    lwz 4, 0x10(3)
    addi 5, 28, 0x4c4b
    bl fn_8011871C
    mr 29, 3
    bl fn_8011921C
    lwz 0, 0x14(3)
    cmplw 29, 0
    .4byte 0x4082001C # bne .L_8011D2FC
    .4byte 0xC00298C0 # lfs f0, lbl_8053C860@sda21(r0)
    addi 4, 1, 0x28
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x30(1)
    .4byte 0x4800000C # b .L_8011D304
L_8011D2FC:
    lwz 3, 0x0(29)
    addi 4, 3, 0x24
L_8011D304:
    mr 3, 27
    li 5, 0x3f
    li 6, 0x0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF98 # blt .L_8011D2C0
    bl fn_8011921C
    lis 5, 0x444d
    lwz 4, 0x10(3)
    addi 5, 5, 0x4c4b
    bl fn_8011871C
    mr 29, 3
    bl fn_8011921C
    lwz 0, 0x14(3)
    cmplw 29, 0
    .4byte 0x4082001C # bne .L_8011D36C
    .4byte 0xC00298C0 # lfs f0, lbl_8053C860@sda21(r0)
    addi 3, 1, 0x10
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    stfs 0, 0x18(1)
    .4byte 0x4800000C # b .L_8011D374
L_8011D36C:
    lwz 3, 0x0(29)
    addi 3, 3, 0x24
L_8011D374:
    psq_l 2, 0x0(3), 0, 0
    addi 4, 1, 0x1c
    lfs 0, 0x8(3)
    li 5, 0x33f
    .4byte 0xC02298DC # lfs f1, lbl_8053C87C@sda21(r0)
    li 6, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x24(1)
    li 10, 0x1
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x1c
    .4byte 0xC02298DC # lfs f1, lbl_8053C87C@sda21(r0)
    li 5, 0x340
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x1c
    .4byte 0xC02298DC # lfs f1, lbl_8053C87C@sda21(r0)
    li 5, 0x341
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x1c
    .4byte 0xC02298DC # lfs f1, lbl_8053C87C@sda21(r0)
    li 5, 0x342
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x79
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000064 # b .L_8011D49C
    li 28, 0x0
L_8011D440:
    mr 3, 28
    li 4, 0x3
    bl fn_80230BF4
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    mr 3, 28
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_8011D440
    .4byte 0x4800001C # b .L_8011D49C
    bl GetRoomConfigRecord
    bl fn_802D9CB0
    bl fn_8011921C
    bl fn_80118384
    mr 3, 30
    bl fn_801F3668
L_8011D49C:
    stw 31, 0x234(30)
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8011D4B4:
    lwz 0, 0x234(3)
    subfic 0, 0, 0x9
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    blr

fn_8011D4C8:
    lwz 3, 0x234(3)
    blr

fn_8011D4D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0x11
    .4byte 0x408200F0 # bne .L_8011D5E0
    bl fn_8011921C
    lis 4, lbl_80464BBC@ha
    lwz 5, 0x8(3)
    addi 3, 4, lbl_80464BBC@l
    lwz 0, 0x8(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011D520
    mr 3, 31
    li 4, 0x2
    bl fn_8011D1B8
    .4byte 0x480000C4 # b .L_8011D5E0
L_8011D520:
    lwz 0, 0xc(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011D53C
    mr 3, 31
    li 4, 0x3
    bl fn_8011D1B8
    .4byte 0x480000A8 # b .L_8011D5E0
L_8011D53C:
    lwz 0, 0x10(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011D558
    mr 3, 31
    li 4, 0x4
    bl fn_8011D1B8
    .4byte 0x4800008C # b .L_8011D5E0
L_8011D558:
    lwz 0, 0x14(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011D574
    mr 3, 31
    li 4, 0x5
    bl fn_8011D1B8
    .4byte 0x48000070 # b .L_8011D5E0
L_8011D574:
    lwz 0, 0x18(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011D590
    mr 3, 31
    li 4, 0x6
    bl fn_8011D1B8
    .4byte 0x48000054 # b .L_8011D5E0
L_8011D590:
    lwz 0, 0x1c(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011D5AC
    mr 3, 31
    li 4, 0x7
    bl fn_8011D1B8
    .4byte 0x48000038 # b .L_8011D5E0
L_8011D5AC:
    lwz 0, 0x20(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011D5C8
    mr 3, 31
    li 4, 0x8
    bl fn_8011D1B8
    .4byte 0x4800001C # b .L_8011D5E0
L_8011D5C8:
    lwz 0, 0x24(3)
    cmpw 5, 0
    .4byte 0x40820010 # bne .L_8011D5E0
    mr 3, 31
    li 4, 0x9
    bl fn_8011D1B8
L_8011D5E0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011D5F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8010DF58
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011D614:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    bl fn_8010DF78
    mr 3, 31
    bl fn_8011CF48
    .4byte 0x880D8EDC # lbz r0, lbl_8053AA9C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_8011D650
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D8ED8 # stw r3, lbl_8053AA98@sda21(r0)
    .4byte 0x980D8EDC # stb r0, lbl_8053AA9C@sda21(r0)
L_8011D650:
    lwz 0, 0x234(31)
    cmpwi 0, 0x4
    .4byte 0x41820068 # beq .L_8011D6C0
    .4byte 0x4080001C # bge .L_8011D678
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_8011D68C
    .4byte 0x41800058 # blt .L_8011D6C0
    cmpwi 0, 0x3
    .4byte 0x4080002C # bge .L_8011D69C
    .4byte 0x4800004C # b .L_8011D6C0
L_8011D678:
    cmpwi 0, 0xa
    .4byte 0x40800044 # bge .L_8011D6C0
    cmpwi 0, 0x6
    .4byte 0x4080003C # bge .L_8011D6C0
    .4byte 0x48000028 # b .L_8011D6B0
L_8011D68C:
    mr 3, 31
    li 4, 0x1
    bl fn_8011D1B8
    .4byte 0x48000028 # b .L_8011D6C0
L_8011D69C:
    .4byte 0xC0229900 # lfs f1, lbl_8053C8A0@sda21(r0)
    addi 3, 31, 0x238
    .4byte 0xC0429904 # lfs f2, lbl_8053C8A4@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000014 # b .L_8011D6C0
L_8011D6B0:
    .4byte 0xC02298C0 # lfs f1, lbl_8053C860@sda21(r0)
    addi 3, 31, 0x238
    .4byte 0xC0429908 # lfs f2, lbl_8053C8A8@sda21(r0)
    bl fn_801CD950
L_8011D6C0:
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x41820098 # beq .L_8011D760
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x14
    .4byte 0xC00298C0 # lfs f0, lbl_8053C860@sda21(r0)
    addi 7, 1, 0x8
    lwz 3, 0x24(3)
    li 5, 0x0
    li 6, 0x0
    lfs 1, 0x10(3)
    fneg 1, 1
    stfs 1, 0x14(1)
    lfs 1, 0x20(3)
    fneg 1, 1
    stfs 0, 0x1c(1)
    stfs 1, 0x18(1)
    bl fn_8030C5F0
    bl fn_801365A8
    cmpwi 3, 0x2
    .4byte 0x41820008 # beq .L_8011D718
    .4byte 0x4800000C # b .L_8011D720
L_8011D718:
    .4byte 0xC06298F0 # lfs f3, lbl_8053C890@sda21(r0)
    .4byte 0x48000008 # b .L_8011D724
L_8011D720:
    .4byte 0xC06298F4 # lfs f3, lbl_8053C894@sda21(r0)
L_8011D724:
    .4byte 0xC02298F8 # lfs f1, lbl_8053C898@sda21(r0)
    lfs 0, 0x8(1)
    lfs 2, 0xc(1)
    fnmsubs 1, 3, 1, 0
    .4byte 0xC00298FC # lfs f0, lbl_8053C89C@sda21(r0)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC08298E0 # lfs f4, lbl_8053C880@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    lfs 0, 0x238(31)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    bl fn_8043A208
L_8011D760:
    addi 3, 31, 0x274
    bl fn_801D1C18
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8011D77C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF98
    addi 3, 31, 0x274
    .4byte 0x388D8360 # li r4, lbl_80539F20@sda21
    li 5, 0x1
    bl fn_801D2608
    addi 3, 31, 0x274
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02298C0 # lfs f1, lbl_8053C860@sda21(r0)
    addi 3, 31, 0x274
    bl fn_801D1F14
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002990C # lfs f0, lbl_8053C8AC@sda21(r0)
    psq_st 2, 0x240(31), 0, 0
    stfs 1, 0x248(31)
    stfs 0, 0x258(31)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011D7FC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC960@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC960@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D84C
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
L_8011D84C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D884
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
L_8011D884:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D8BC
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
L_8011D8BC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D8F4
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
L_8011D8F4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D92C
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
L_8011D92C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D964
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
L_8011D964:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D99C
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
L_8011D99C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011D9D4
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
L_8011D9D4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011DA0C
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
L_8011DA0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011DA20:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stw 31, 0xcc(1)
    stw 30, 0xc8(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x80
    stw 0, 0x90(1)
    li 10, 0x0
    stw 0, 0x94(1)
    .4byte 0x48000064 # b .L_8011DABC
L_8011DA5C:
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
L_8011DABC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8011DA5C
    li 10, 0x0
    li 5, -0x1
    li 4, 0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0x90(1)
    addi 9, 1, 0x44
    stw 10, 0x94(1)
    stw 10, 0x98(1)
    stb 10, 0x9c(1)
    stb 10, 0x9d(1)
    stb 10, 0x9e(1)
    stb 4, 0x9f(1)
    stb 4, 0xa0(1)
    stb 10, 0xa1(1)
    stb 10, 0xa2(1)
    stb 10, 0xa3(1)
    stb 10, 0xa4(1)
    stb 10, 0xa5(1)
    stb 4, 0xa6(1)
    stw 3, 0xa8(1)
    stb 4, 0xac(1)
    stb 10, 0xad(1)
    stb 10, 0xae(1)
    stw 5, 0xb0(1)
    stw 10, 0xb4(1)
    stw 0, 0xb8(1)
    stw 5, 0x54(1)
    stw 5, 0x58(1)
    .4byte 0x48000064 # b .L_8011DBA0
L_8011DB40:
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
L_8011DBA0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8011DB40
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x54(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC0229924 # lfs f1, lbl_8053C8C4@sda21(r0)
    stw 6, 0x58(1)
    lfs 0, lbl_80539D44@l(3)
    stw 6, 0x5c(1)
    fmuls 0, 1, 0
    stb 6, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stb 6, 0x67(1)
    stb 6, 0x68(1)
    stb 6, 0x69(1)
    stb 5, 0x6a(1)
    stw 4, 0x6c(1)
    stb 5, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stw 7, 0x74(1)
    stw 6, 0x78(1)
    stw 0, 0x7c(1)
    psq_l 2, 0x54(31), 0, 0
    lfs 31, 0x5c(31)
    ps_mul 2, 2, 2
    ps_madd 1, 31, 31, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820048 # beq .L_8011DC88
    .4byte 0xC0229918 # lfs f1, lbl_8053C8B8@sda21(r0)
    addi 0, 1, 0x14
    stfs 1, 0x20(1)
    stfs 1, 0x30(1)
    stfs 1, 0x40(1)
    lfs 2, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 1, 0x38(1)
    stfs 31, 0x3c(1)
    stw 0, 0x98(1)
L_8011DC88:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8011DCA8
    lfs 1, 0x54(31)
    .4byte 0xC0029928 # lfs f0, lbl_8053C8C8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820020 # beq .L_8011DCC4
L_8011DCA8:
    cmpwi 0, 0x1
    .4byte 0x408202F0 # bne .L_8011DF9C
    lfs 1, 0x54(31)
    .4byte 0xC002992C # lfs f0, lbl_8053C8CC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408202DC # bne .L_8011DF9C
L_8011DCC4:
    addi 30, 31, 0xc
    psq_l 1, 0x0(30), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x23c(31)
    cmplwi 0, 0x8
    .4byte 0x418102BC # bgt .L_8011DF9C
    lis 3, jumptable_8049DE6C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049DE6C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800298 # bge .L_8011DF9C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464C30@ha
    addi 5, 3, lbl_80464C30@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 30
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0xe9
    bl fn_802F86CC
    .4byte 0x48000248 # b .L_8011DF9C
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080023C # bge .L_8011DF9C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464C44@ha
    addi 5, 3, lbl_80464C44@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 30
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x11
    bl fn_802F86CC
    .4byte 0x480001EC # b .L_8011DF9C
    li 0, 0x4
    stb 0, 0x46(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408001D8 # bge .L_8011DF9C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464C44@ha
    addi 5, 3, lbl_80464C44@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 30
    fmr 2, 1
    addi 7, 1, 0x44
    lwz 3, 0x20(6)
    li 6, 0x200
    bl fn_802F86CC
    .4byte 0x48000188 # b .L_8011DF9C
    lfs 1, 0xc(1)
    li 0, -0x1
    .4byte 0xC0029930 # lfs f0, lbl_8053C8D0@sda21(r0)
    stb 0, 0x61(1)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800164 # bge .L_8011DF9C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464C30@ha
    addi 5, 3, lbl_80464C30@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x44
    fmr 2, 1
    li 6, 0x14c
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
    .4byte 0x48000114 # b .L_8011DF9C
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800108 # bge .L_8011DF9C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464C44@ha
    addi 5, 3, lbl_80464C44@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x44
    fmr 2, 1
    li 6, 0x5e
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
    .4byte 0x480000B8 # b .L_8011DF9C
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408000AC # bge .L_8011DF9C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464C44@ha
    addi 5, 3, lbl_80464C44@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x44
    fmr 2, 1
    li 6, 0x31
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
    .4byte 0x4800005C # b .L_8011DF9C
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8011DF9C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464C44@ha
    addi 5, 3, lbl_80464C44@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x44
    fmr 2, 1
    li 6, 0x2c
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_8011DF9C:
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    lis 3, lbl_80464C44@ha
    lwz 5, 0x254(31)
    addi 4, 3, lbl_80464C44@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x1ca
    addi 6, 1, 0x80
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8011DFE0
    li 0, 0x1
    stb 0, 0x9c(1)
L_8011DFE0:
    .4byte 0xC022991C # lfs f1, lbl_8053C8BC@sda21(r0)
    lis 3, lbl_80464C44@ha
    lwz 5, 0x254(31)
    addi 4, 3, lbl_80464C44@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x1cb
    addi 6, 1, 0x80
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    psq_l 31, 0xd8(1), 0, 0
    lwz 0, 0xe4(1)
    lfd 31, 0xd0(1)
    lwz 31, 0xcc(1)
    lwz 30, 0xc8(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_8011E030:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    mr 31, 3
    bl fn_801F5930
    lfs 1, 0x60(31)
    stfs 1, 0x4c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x50(1)
    lfs 2, 0x68(31)
    stfs 2, 0x54(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x58(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x4c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x54(1)
    fadds 0, 3, 2
    stfs 1, 0x50(1)
    stfs 0, 0x58(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820330 # beq .L_8011E3D8
    .4byte 0x40800414 # bge .L_8011E4C0
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8011E0C0
    .4byte 0x48000408 # b .L_8011E4C0
    .4byte 0x48000404 # b .L_8011E4C0
L_8011E0C0:
    lwz 4, 0x4(31)
    addi 3, 1, 0x4c
    lwz 5, 0x198(31)
    bl fn_80239914
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 30, 3
    .4byte 0x4180003C # blt .L_8011E128
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
    lfs 1, 0x10(31)
    mr 3, 30
    lfs 0, 0xc(31)
    addi 4, 1, 0x18
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    bl fn_802379E4
    li 0, 0x1
    .4byte 0x48000008 # b .L_8011E12C
L_8011E128:
    li 0, 0x0
L_8011E12C:
    clrlwi. 0, 0, 24
    .4byte 0x40820390 # bne .L_8011E4C0
    .4byte 0xC0029918 # lfs f0, lbl_8053C8B8@sda21(r0)
    addi 3, 1, 0x30
    addi 5, 1, 0x10
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    lfs 4, 0xc(31)
    lfs 0, 0x70(31)
    fsubs 5, 2, 1
    stfs 0, 0x30(1)
    fadds 3, 0, 4
    lfs 0, 0x74(31)
    stfs 0, 0x34(1)
    fadds 2, 0, 5
    lfs 0, 0x78(31)
    stfs 0, 0x38(1)
    fadds 1, 0, 4
    lfs 4, 0x7c(31)
    fadds 0, 4, 5
    stfs 4, 0x3c(1)
    stfs 3, 0x30(1)
    stfs 2, 0x34(1)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    lwz 4, 0x4(31)
    bl fn_8023AA18
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8011E1B0
    li 0, 0x1
    .4byte 0x4800008C # b .L_8011E238
L_8011E1B0:
    lwz 4, 0x4(31)
    addi 3, 1, 0x30
    addi 5, 1, 0x10
    bl fn_8023AE34
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8011E1D8
    li 4, 0x0
    bl fn_801CC820
    li 0, 0x1
    .4byte 0x48000064 # b .L_8011E238
L_8011E1D8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x30
    addi 5, 1, 0x10
    bl fn_8023AC74
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_8011E208
    addi 4, 1, 0x10
    addi 5, 1, 0x40
    li 6, 0x0
    bl fn_801CC538
    li 0, 0x1
    .4byte 0x48000034 # b .L_8011E238
L_8011E208:
    lwz 4, 0x4(31)
    addi 3, 1, 0x30
    addi 5, 1, 0x10
    bl fn_8023AD54
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8011E234
    li 4, 0x0
    li 5, 0x0
    bl fn_801CC640
    li 0, 0x1
    .4byte 0x48000008 # b .L_8011E238
L_8011E234:
    li 0, 0x0
L_8011E238:
    clrlwi. 0, 0, 24
    .4byte 0x40820284 # bne .L_8011E4C0
    lfs 2, 0x60(31)
    addi 3, 1, 0x20
    .4byte 0xC0029918 # lfs f0, lbl_8053C8B8@sda21(r0)
    addi 5, 1, 0x8
    stfs 2, 0x20(1)
    lfs 5, 0x64(31)
    stfs 5, 0x24(1)
    lfs 3, 0x68(31)
    stfs 3, 0x28(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x2c(1)
    lfs 1, 0xc(31)
    fadds 2, 2, 1
    fadds 1, 3, 1
    stfs 2, 0x20(1)
    lfs 3, 0x10(31)
    fadds 2, 5, 3
    stfs 1, 0x28(1)
    fadds 1, 4, 3
    stfs 0, 0x8(1)
    stfs 2, 0x24(1)
    stfs 1, 0x2c(1)
    stfs 0, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_8023AB94
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_8011E2C4
    lis 4, 0x4649
    mr 3, 31
    addi 4, 4, 0x5245
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8011E2CC
L_8011E2C4:
    li 0, 0x1
    .4byte 0x48000008 # b .L_8011E2D0
L_8011E2CC:
    li 0, 0x0
L_8011E2D0:
    clrlwi. 0, 0, 24
    .4byte 0x418200DC # beq .L_8011E3B0
    lwz 0, 0x100(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8011E2FC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x100(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x100(31)
L_8011E2FC:
    lwz 0, 0x104(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8011E320
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x104(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x104(31)
L_8011E320:
    lwz 3, 0x4(31)
    cmpwi 3, 0x0
    .4byte 0x40820068 # bne .L_8011E390
    lwz 0, 0x230(31)
    .4byte 0xC3E2991C # lfs f31, lbl_8053C8BC@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_8011E340
    .4byte 0xC3E29920 # lfs f31, lbl_8053C8C0@sda21(r0)
L_8011E340:
    fmr 1, 31
    addi 4, 31, 0xc
    li 5, 0x28d
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x27c(31)
    fmr 1, 31
    addi 4, 31, 0xc
    li 5, 0x28e
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8011E390:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000114 # b .L_8011E4C0
L_8011E3B0:
    lwz 29, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 29
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    .4byte 0x480000EC # b .L_8011E4C0
L_8011E3D8:
    .4byte 0xC0229934 # lfs f1, lbl_8053C8D4@sda21(r0)
    addi 3, 31, 0x240
    .4byte 0xC0429938 # lfs f2, lbl_8053C8D8@sda21(r0)
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x408200D4 # bne .L_8011E4C0
    lwz 4, 0x27c(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8011E410
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8011E410:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x41820034 # beq .L_8011E44C
    .4byte 0x40800014 # bge .L_8011E430
    cmpwi 0, 0x0
    .4byte 0x41820044 # beq .L_8011E468
    .4byte 0x40800014 # bge .L_8011E43C
    .4byte 0x4800003C # b .L_8011E468
L_8011E430:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_8011E468
    .4byte 0x48000024 # b .L_8011E45C
L_8011E43C:
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    .4byte 0x48000020 # b .L_8011E468
L_8011E44C:
    mr 3, 31
    li 4, 0x42
    bl fn_801F0D20
    .4byte 0x48000010 # b .L_8011E468
L_8011E45C:
    mr 3, 31
    li 4, 0x6
    bl fn_801F0D20
L_8011E468:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820040 # beq .L_8011E4B0
    lis 4, lbl_80464C0C@ha
    lis 3, lbl_80464BE8@ha
    slwi 0, 0, 2
    addi 4, 4, lbl_80464C0C@l
    addi 3, 3, lbl_80464BE8@l
    lwzx 29, 4, 0
    lwzx 30, 3, 0
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 4, 30
    mr 7, 29
    addi 6, 31, 0xc
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8011E4B0:
    mr 3, 31
    bl fn_801F3668
    li 0, 0x2
    stw 0, 0x234(31)
L_8011E4C0:
    lfs 0, 0x240(31)
    addi 3, 31, 0x244
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
    bl fn_801D1C18
    psq_l 31, 0x78(1), 0, 0
    lwz 0, 0x84(1)
    lfd 31, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8011E4FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 16
    stw 0, 0x23c(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8011E54C
    .4byte 0x40800054 # bge .L_8011E598
    .4byte 0x48000050 # b .L_8011E598
L_8011E54C:
    .4byte 0xC0029920 # lfs f0, lbl_8053C8C0@sda21(r0)
    .4byte 0xC062993C # lfs f3, lbl_8053C8DC@sda21(r0)
    stfs 0, 0x240(31)
    .4byte 0xC0429940 # lfs f2, lbl_8053C8E0@sda21(r0)
    lfs 4, 0x240(31)
    .4byte 0xC0229944 # lfs f1, lbl_8053C8E4@sda21(r0)
    stfs 4, 0x54(31)
    .4byte 0xC0029948 # lfs f0, lbl_8053C8E8@sda21(r0)
    stfs 4, 0x58(31)
    stfs 4, 0x5c(31)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    .4byte 0x48000034 # b .L_8011E5C8
L_8011E598:
    .4byte 0xC002994C # lfs f0, lbl_8053C8EC@sda21(r0)
    .4byte 0xC0429950 # lfs f2, lbl_8053C8F0@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022993C # lfs f1, lbl_8053C8DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC0029940 # lfs f0, lbl_8053C8E0@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
L_8011E5C8:
    lfs 0, 0x60(31)
    lis 3, 0x604
    li 8, 0x1
    li 6, 0x0
    stfs 0, 0x70(31)
    addi 7, 3, 0x304
    li 0, 0x3
    addi 3, 31, 0x244
    lfs 0, 0x64(31)
    .4byte 0x388D8368 # li r4, lbl_80539F28@sda21
    li 5, 0x1
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stw 8, 0xb8(31)
    stw 7, 0xb0(31)
    stw 6, 0x118(31)
    stw 0, 0xbc(31)
    bl fn_801D2608
    addi 3, 31, 0x244
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229918 # lfs f1, lbl_8053C8B8@sda21(r0)
    addi 3, 31, 0x244
    bl fn_801D1F14
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011E650:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_8011E6C4
    lis 3, lbl_8049DE18@ha
    addi 0, 3, lbl_8049DE18@l
    stw 0, 0x0(30)
    lwz 3, 0x27c(30)
    bl fn_801EE434
    li 3, 0x0
    addic. 0, 30, 0x244
    stw 3, 0x27c(30)
    .4byte 0x41820018 # beq .L_8011E6A8
    addic. 0, 30, 0x268
    .4byte 0x41820010 # beq .L_8011E6A8
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x268(30)
L_8011E6A8:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011E6C4
    mr 3, 30
    bl dtor_80084580
L_8011E6C4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8011CCA4
    .4byte fn_8011D7FC

