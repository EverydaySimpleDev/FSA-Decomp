# 901KB-gap non-actor manager block: 3 function(s), 3,860 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000FFAC
etb_8000FFAC:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000FFAC, 8

.global etb_8000FFB4
etb_8000FFB4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000FFB4, 8

.global etb_8000FFBC
etb_8000FFBC:
    .4byte 0x180A0000
    .4byte 0x000000F4
    .4byte 0x01190018
    .4byte 0x00000614
    .4byte 0x000C0020
    .4byte 0x00000000
    .4byte 0x8200012C
    .4byte dtor_80088628
    .4byte 0x82000058
    .4byte dtor_80088628
.size etb_8000FFBC, 40

.section extabindex, "a"
.balign 4
.global eti_8001FE04
eti_8001FE04:
    .4byte fn_803FEB94
    .4byte 0x00000730
    .4byte etb_8000FFAC
.size eti_8001FE04, 12

.global eti_8001FE10
eti_8001FE10:
    .4byte fn_803FF2C4
    .4byte 0x0000015C
    .4byte etb_8000FFB4
.size eti_8001FE10, 12

.global eti_8001FE1C
eti_8001FE1C:
    .4byte fn_803FF420
    .4byte 0x00000688
    .4byte etb_8000FFBC
.size eti_8001FE1C, 12

.text
.balign 4
.global fn_803FEB94
.global fn_803FF2C4
.global fn_803FF420

fn_803FEB94:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stmw 14, 0xb8(1)
    lis 3, lbl_804B0B40@ha
    lis 4, lbl_80528668@ha
    addi 16, 3, lbl_804B0B40@l
    lwz 29, 0x64(16)
    addi 31, 4, lbl_80528668@l
    lwz 28, 0x0(16)
    addi 25, 16, 0x9c
    lwz 0, 0x5c(16)
    stw 29, 0xa4(1)
    lwz 29, 0x68(16)
    stw 0, 0x5c(25)
    lwz 0, 0xa4(1)
    stw 29, 0x8(1)
    lwz 29, 0x6c(16)
    stw 0, 0x64(25)
    lwz 0, 0x8(1)
    stw 29, 0xc(1)
    lwz 29, 0x70(16)
    stw 0, 0x68(25)
    lwz 0, 0xc(1)
    stw 29, 0x10(1)
    lwz 29, 0x74(16)
    stw 0, 0x6c(25)
    lwz 0, 0x10(1)
    stw 29, 0x14(1)
    lwz 29, 0x78(16)
    stw 0, 0x70(25)
    lwz 0, 0x14(1)
    stw 29, 0x18(1)
    lwz 29, 0x7c(16)
    stw 0, 0x74(25)
    lwz 0, 0x18(1)
    stw 29, 0x1c(1)
    lwz 29, 0x80(16)
    stw 0, 0x78(25)
    lwz 0, 0x1c(1)
    stw 29, 0x20(1)
    lwz 29, 0x84(16)
    stw 0, 0x7c(25)
    lwz 0, 0x20(1)
    stw 29, 0x24(1)
    lwz 29, 0x88(16)
    stw 0, 0x80(25)
    lwz 0, 0x24(1)
    stw 29, 0x28(1)
    lwz 29, 0x8c(16)
    stw 0, 0x84(25)
    lwz 0, 0x28(1)
    stw 29, 0x2c(1)
    lwz 29, 0x90(16)
    stw 0, 0x88(25)
    lwz 0, 0x2c(1)
    stw 29, 0x30(1)
    lwz 29, 0x94(16)
    stw 0, 0x8c(25)
    lwz 0, 0x30(1)
    stw 29, 0x34(1)
    lwz 29, 0x98(16)
    stw 0, 0x90(25)
    lwz 0, 0x34(1)
    stw 29, 0x38(1)
    lwz 29, 0x138(16)
    stw 0, 0x94(25)
    lwz 0, 0x38(1)
    stw 29, 0x3c(1)
    lwz 29, 0x13c(16)
    stw 0, 0x98(25)
    lwz 0, 0x3c(1)
    stw 29, 0x40(1)
    lwz 29, 0x140(16)
    stw 0, 0x1d4(16)
    lwz 0, 0x40(1)
    lwz 27, 0x4(16)
    lwz 26, 0x8(16)
    lwz 24, 0xc(16)
    lwz 23, 0x10(16)
    lwz 22, 0x14(16)
    lwz 21, 0x18(16)
    lwz 20, 0x1c(16)
    lwz 19, 0x20(16)
    lwz 18, 0x24(16)
    lwz 17, 0x28(16)
    lwz 15, 0x2c(16)
    lwz 14, 0x30(16)
    lwz 12, 0x34(16)
    lwz 11, 0x38(16)
    lwz 10, 0x3c(16)
    lwz 9, 0x40(16)
    lwz 8, 0x44(16)
    lwz 7, 0x48(16)
    lwz 6, 0x4c(16)
    lwz 5, 0x50(16)
    lwz 4, 0x54(16)
    lwz 3, 0x58(16)
    lwz 30, 0x60(16)
    stw 0, 0x1d8(16)
    mr 0, 29
    stw 29, 0x44(1)
    stw 28, 0x9c(16)
    stw 27, 0xa0(16)
    stw 26, 0xa4(16)
    stw 24, 0xc(25)
    stw 23, 0x10(25)
    stw 22, 0x14(25)
    stw 21, 0x18(25)
    stw 20, 0x1c(25)
    stw 19, 0x20(25)
    stw 18, 0x24(25)
    stw 17, 0x28(25)
    stw 15, 0x2c(25)
    stw 14, 0x30(25)
    stw 12, 0x34(25)
    stw 11, 0x38(25)
    stw 10, 0x3c(25)
    stw 9, 0x40(25)
    stw 8, 0x44(25)
    stw 7, 0x48(25)
    stw 6, 0x4c(25)
    stw 5, 0x50(25)
    stw 4, 0x54(25)
    stw 3, 0x58(25)
    stw 30, 0x60(25)
    stw 0, 0x1dc(16)
    lwz 0, 0x270(16)
    addi 28, 16, 0x1d4
    lwz 29, 0x1a4(16)
    addi 17, 16, 0x30c
    stw 0, 0x74(1)
    lwz 0, 0x19c(16)
    stw 29, 0xa8(1)
    lwz 29, 0x1a8(16)
    stw 0, 0x64(28)
    lwz 0, 0xa8(1)
    stw 29, 0x48(1)
    lwz 29, 0x1ac(16)
    stw 0, 0x6c(28)
    lwz 0, 0x48(1)
    stw 29, 0x4c(1)
    lwz 29, 0x1b0(16)
    stw 0, 0x70(28)
    lwz 0, 0x4c(1)
    stw 29, 0x50(1)
    lwz 29, 0x1b4(16)
    stw 0, 0x74(28)
    lwz 0, 0x50(1)
    stw 29, 0x54(1)
    lwz 29, 0x1b8(16)
    stw 0, 0x78(28)
    lwz 0, 0x54(1)
    stw 29, 0x58(1)
    lwz 29, 0x1bc(16)
    stw 0, 0x7c(28)
    lwz 0, 0x58(1)
    stw 29, 0x5c(1)
    lwz 29, 0x1c0(16)
    stw 0, 0x80(28)
    lwz 0, 0x5c(1)
    stw 29, 0x60(1)
    lwz 29, 0x1c4(16)
    stw 0, 0x84(28)
    lwz 0, 0x60(1)
    stw 29, 0x64(1)
    lwz 29, 0x1c8(16)
    stw 0, 0x88(28)
    lwz 0, 0x64(1)
    stw 29, 0x68(1)
    lwz 29, 0x1cc(16)
    stw 0, 0x8c(28)
    lwz 0, 0x68(1)
    stw 29, 0x6c(1)
    lwz 29, 0x1d0(16)
    stw 0, 0x90(28)
    lwz 0, 0x6c(1)
    stw 29, 0x70(1)
    lwz 29, 0x274(16)
    stw 0, 0x94(28)
    lwz 0, 0x70(1)
    stw 29, 0x78(1)
    lwz 29, 0x278(16)
    stw 0, 0x98(28)
    lwz 0, 0x74(1)
    stw 29, 0x7c(1)
    lwz 29, 0x27c(16)
    stw 0, 0x30c(16)
    lwz 0, 0x78(1)
    stw 29, 0x80(1)
    lwz 29, 0x280(16)
    stw 0, 0x310(16)
    lwz 0, 0x7c(1)
    stw 29, 0x84(1)
    lwz 29, 0x284(16)
    stw 0, 0x314(16)
    lwz 0, 0x80(1)
    stw 29, 0x88(1)
    lwz 29, 0x288(16)
    stw 0, 0xc(17)
    lwz 0, 0x84(1)
    stw 29, 0x8c(1)
    lwz 29, 0x28c(16)
    stw 0, 0x10(17)
    lwz 0, 0x88(1)
    stw 29, 0x90(1)
    lwz 29, 0x290(16)
    stw 0, 0x14(17)
    lwz 0, 0x8c(1)
    lwz 27, 0x144(16)
    stw 0, 0x18(17)
    lwz 0, 0x90(1)
    lwz 26, 0x148(16)
    lwz 25, 0x14c(16)
    lwz 24, 0x150(16)
    lwz 23, 0x154(16)
    lwz 22, 0x158(16)
    lwz 21, 0x15c(16)
    lwz 20, 0x160(16)
    lwz 19, 0x164(16)
    lwz 18, 0x168(16)
    lwz 15, 0x16c(16)
    lwz 14, 0x170(16)
    lwz 12, 0x174(16)
    lwz 11, 0x178(16)
    lwz 10, 0x17c(16)
    lwz 9, 0x180(16)
    lwz 8, 0x184(16)
    lwz 7, 0x188(16)
    lwz 6, 0x18c(16)
    lwz 5, 0x190(16)
    lwz 4, 0x194(16)
    lwz 3, 0x198(16)
    lwz 30, 0x1a0(16)
    stw 0, 0x1c(17)
    mr 0, 29
    stw 29, 0x94(1)
    stw 27, 0xc(28)
    stw 26, 0x10(28)
    stw 25, 0x14(28)
    stw 24, 0x18(28)
    stw 23, 0x1c(28)
    stw 22, 0x20(28)
    stw 21, 0x24(28)
    stw 20, 0x28(28)
    stw 19, 0x2c(28)
    stw 18, 0x30(28)
    stw 15, 0x34(28)
    stw 14, 0x38(28)
    stw 12, 0x3c(28)
    stw 11, 0x40(28)
    stw 10, 0x44(28)
    stw 9, 0x48(28)
    stw 8, 0x4c(28)
    stw 7, 0x50(28)
    stw 6, 0x54(28)
    stw 5, 0x58(28)
    stw 4, 0x5c(28)
    stw 3, 0x60(28)
    stw 30, 0x68(28)
    stw 0, 0x20(17)
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    lwz 15, 0x2f8(16)
    extsb. 0, 0
    lwz 0, 0x2f0(16)
    stw 15, 0xac(1)
    lwz 15, 0x2fc(16)
    stw 0, 0x80(17)
    lwz 0, 0xac(1)
    stw 15, 0x98(1)
    lwz 15, 0x300(16)
    stw 0, 0x88(17)
    lwz 0, 0x98(1)
    stw 15, 0x9c(1)
    lwz 15, 0x304(16)
    stw 0, 0x8c(17)
    lwz 0, 0x9c(1)
    stw 15, 0xa0(1)
    lwz 18, 0x294(16)
    lwz 19, 0x298(16)
    lwz 20, 0x29c(16)
    lwz 21, 0x2a0(16)
    lwz 22, 0x2a4(16)
    lwz 23, 0x2a8(16)
    lwz 24, 0x2ac(16)
    lwz 25, 0x2b0(16)
    lwz 26, 0x2b4(16)
    lwz 27, 0x2b8(16)
    lwz 28, 0x2bc(16)
    lwz 29, 0x2c0(16)
    lwz 30, 0x2c4(16)
    lwz 12, 0x2c8(16)
    lwz 11, 0x2cc(16)
    lwz 10, 0x2d0(16)
    lwz 9, 0x2d4(16)
    lwz 8, 0x2d8(16)
    lwz 7, 0x2dc(16)
    lwz 6, 0x2e0(16)
    lwz 5, 0x2e4(16)
    lwz 4, 0x2e8(16)
    lwz 3, 0x2ec(16)
    lwz 14, 0x2f4(16)
    lwz 15, 0x308(16)
    stw 0, 0x90(17)
    lwz 0, 0xa0(1)
    stw 18, 0x24(17)
    stw 19, 0x28(17)
    stw 20, 0x2c(17)
    stw 21, 0x30(17)
    stw 22, 0x34(17)
    stw 23, 0x38(17)
    stw 24, 0x3c(17)
    stw 25, 0x40(17)
    stw 26, 0x44(17)
    stw 27, 0x48(17)
    stw 28, 0x4c(17)
    stw 29, 0x50(17)
    stw 30, 0x54(17)
    stw 12, 0x58(17)
    stw 11, 0x5c(17)
    stw 10, 0x60(17)
    stw 9, 0x64(17)
    stw 8, 0x68(17)
    stw 7, 0x6c(17)
    stw 6, 0x70(17)
    stw 5, 0x74(17)
    stw 4, 0x78(17)
    stw 3, 0x7c(17)
    stw 14, 0x84(17)
    stw 0, 0x94(17)
    stw 15, 0x98(17)
    .4byte 0x40820030 # bne .L_803FF0F0
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
L_803FF0F0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF128
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
L_803FF128:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF160
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
L_803FF160:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF198
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
L_803FF198:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF1D0
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
L_803FF1D0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF208
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
L_803FF208:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF240
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
L_803FF240:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF278
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
L_803FF278:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803FF2B0
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
L_803FF2B0:
    lmw 14, 0xb8(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_803FF2C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x18(3)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803FF304
    .4byte 0x41820018 # beq .L_803FF2FC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FF2FC:
    li 0, 0x0
    stw 0, 0x18(31)
L_803FF304:
    lwz 3, 0x1c(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803FF330
    .4byte 0x41820018 # beq .L_803FF328
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FF328:
    li 0, 0x0
    stw 0, 0x1c(31)
L_803FF330:
    lwz 3, 0x20(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803FF35C
    .4byte 0x41820018 # beq .L_803FF354
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FF354:
    li 0, 0x0
    stw 0, 0x20(31)
L_803FF35C:
    lwz 3, 0x24(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803FF388
    .4byte 0x41820018 # beq .L_803FF380
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FF380:
    li 0, 0x0
    stw 0, 0x24(31)
L_803FF388:
    lwz 3, 0x28(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803FF3B4
    .4byte 0x41820018 # beq .L_803FF3AC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FF3AC:
    li 0, 0x0
    stw 0, 0x28(31)
L_803FF3B4:
    lwz 3, 0x2c(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803FF3E0
    .4byte 0x41820018 # beq .L_803FF3D8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FF3D8:
    li 0, 0x0
    stw 0, 0x2c(31)
L_803FF3E0:
    lwz 3, 0x30(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803FF40C
    .4byte 0x41820018 # beq .L_803FF404
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FF404:
    li 0, 0x0
    stw 0, 0x30(31)
L_803FF40C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803FF420:
    stwu 1, -0x240(1)
    mflr 0
    stw 0, 0x244(1)
    stw 31, 0x23c(1)
    mr 31, 3
    stw 30, 0x238(1)
    stw 29, 0x234(1)
    lbz 0, 0x79(3)
    cmplwi 0, 0x1
    .4byte 0x40810648 # ble .L_803FFA8C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x21a(3)
    cmplwi 0, 0xa7
    .4byte 0x41820010 # beq .L_803FF468
    lbz 0, 0x21b(3)
    cmplwi 0, 0xa5
    .4byte 0x40820010 # bne .L_803FF474
L_803FF468:
    lbz 0, 0x7a(31)
    cmplwi 0, 0x0
    .4byte 0x41820524 # beq .L_803FF994
L_803FF474:
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0220838 # lfs f1, lbl_805437D8@sda21(r0)
    addi 3, 1, 0x12c
    lwz 5, 0x4(5)
    stw 4, 0x200(1)
    fmr 2, 1
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0x208(1)
    xoris 4, 5, 0x8000
    .4byte 0xC8820880 # lfd f4, lbl_80543820@sda21(r0)
    stw 4, 0x204(1)
    .4byte 0xC0A2083C # lfs f5, lbl_805437DC@sda21(r0)
    stw 0, 0x20c(1)
    lfd 3, 0x200(1)
    lfd 0, 0x208(1)
    fsubs 3, 3, 4
    .4byte 0xC0C20840 # lfs f6, lbl_805437E0@sda21(r0)
    fsubs 4, 0, 4
    bl fn_800937B0
    li 0, 0x0
    .4byte 0x80AD8E88 # lwz r5, lbl_8053AA48@sda21(r0)
    stb 0, 0x50(1)
    addi 3, 1, 0x12c
    stb 0, 0x51(1)
    stb 0, 0x52(1)
    stb 0, 0x53(1)
    lwz 0, 0x50(1)
    stw 0, 0x54(1)
    lbz 4, 0x54(1)
    lbz 0, 0x55(1)
    stb 4, 0x8(5)
    lbz 4, 0x56(1)
    stb 0, 0x9(5)
    lbz 0, 0x57(1)
    stb 4, 0xa(5)
    stb 0, 0xb(5)
    bl fn_80093894
    lwz 3, 0x18(31)
    lis 5, 0x4c6f
    lis 4, 0x4e49
    lwz 12, 0x0(3)
    addi 6, 5, 0x676f
    addi 5, 4, 0x4e5f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x64(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x210(1)
    lwz 4, 0x214(1)
    mtctr 12
    bctrl
    .4byte 0xC0220838 # lfs f1, lbl_805437D8@sda21(r0)
    addi 4, 1, 0x12c
    lwz 3, 0x18(31)
    fmr 2, 1
    bl fn_8009D340
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x238(3)
    cmpwi 0, 0x9
    .4byte 0x41820338 # beq .L_803FF8B4
    .4byte 0x40800024 # bge .L_803FF5A4
    cmpwi 0, 0x5
    .4byte 0x40800010 # bge .L_803FF598
    cmpwi 0, 0x2
    .4byte 0x40800020 # bge .L_803FF5B0
    .4byte 0x480003E4 # b .L_803FF978
L_803FF598:
    cmpwi 0, 0x7
    .4byte 0x408003DC # bge .L_803FF978
    .4byte 0x480002F0 # b .L_803FF890
L_803FF5A4:
    cmpwi 0, 0xc
    .4byte 0x408003D0 # bge .L_803FF978
    .4byte 0x48000324 # b .L_803FF8D0
L_803FF5B0:
    lfs 0, 0x68(31)
    lwz 3, 0x1c(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x210(1)
    lwz 12, 0x24(12)
    lwz 4, 0x214(1)
    mtctr 12
    bctrl
    lwz 3, 0x1c(31)
    li 4, 0x0
    .4byte 0xC0220844 # lfs f1, lbl_805437E4@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420848 # lfs f2, lbl_805437E8@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    lha 0, 0x70(31)
    cmpwi 0, 0x1e
    .4byte 0x4080002C # bge .L_803FF630
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x20c(1)
    .4byte 0xC8420880 # lfd f2, lbl_80543820@sda21(r0)
    stw 0, 0x208(1)
    .4byte 0xC002084C # lfs f0, lbl_805437EC@sda21(r0)
    lfd 1, 0x208(1)
    fsubs 1, 1, 2
    fdivs 2, 1, 0
    .4byte 0x48000030 # b .L_803FF65C
L_803FF630:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x204(1)
    .4byte 0xC8420880 # lfd f2, lbl_80543820@sda21(r0)
    stw 0, 0x200(1)
    .4byte 0xC0620850 # lfs f3, lbl_805437F0@sda21(r0)
    lfd 1, 0x200(1)
    .4byte 0xC002084C # lfs f0, lbl_805437EC@sda21(r0)
    fsubs 1, 1, 2
    fsubs 1, 3, 1
    fdivs 2, 1, 0
L_803FF65C:
    .4byte 0xC0220854 # lfs f1, lbl_805437F4@sda21(r0)
    .4byte 0xC0020858 # lfs f0, lbl_805437F8@sda21(r0)
    fmuls 1, 1, 2
    lbz 0, 0x76(31)
    fmuls 0, 0, 2
    cmplwi 0, 0x0
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x218(1)
    stfd 0, 0x220(1)
    lwz 30, 0x21c(1)
    lwz 29, 0x224(1)
    .4byte 0x408200B8 # bne .L_803FF744
    li 0, 0x0
    li 6, 0xff
    li 3, 0xc8
    stb 6, 0x40(1)
    addi 4, 1, 0x4c
    addi 5, 1, 0x44
    stb 3, 0x41(1)
    stb 0, 0x42(1)
    stb 6, 0x43(1)
    lwz 3, 0x40(1)
    stb 30, 0x48(1)
    stb 29, 0x49(1)
    stb 0, 0x4a(1)
    stb 0, 0x4b(1)
    lwz 0, 0x48(1)
    stw 3, 0x44(1)
    stw 0, 0x4c(1)
    lwz 3, 0x28(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 6, 0xa0
    li 3, 0xff
    stb 6, 0x30(1)
    addi 4, 1, 0x3c
    addi 5, 1, 0x34
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 3, 0x33(1)
    lwz 3, 0x30(1)
    stb 0, 0x38(1)
    stb 0, 0x39(1)
    stb 0, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 0, 0x38(1)
    stw 3, 0x34(1)
    stw 0, 0x3c(1)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x480000B4 # b .L_803FF7F4
L_803FF744:
    li 0, 0x0
    li 6, 0xa0
    li 3, 0xff
    stb 6, 0x20(1)
    addi 4, 1, 0x2c
    addi 5, 1, 0x24
    stb 6, 0x21(1)
    stb 6, 0x22(1)
    stb 3, 0x23(1)
    lwz 3, 0x20(1)
    stb 0, 0x28(1)
    stb 0, 0x29(1)
    stb 0, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stw 3, 0x24(1)
    stw 0, 0x2c(1)
    lwz 3, 0x28(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 6, 0xff
    li 3, 0xc8
    stb 6, 0x10(1)
    addi 4, 1, 0x1c
    addi 5, 1, 0x14
    stb 3, 0x11(1)
    stb 0, 0x12(1)
    stb 6, 0x13(1)
    lwz 3, 0x10(1)
    stb 30, 0x18(1)
    stb 29, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 3, 0x14(1)
    stw 0, 0x1c(1)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
L_803FF7F4:
    lfs 0, 0x68(31)
    lwz 3, 0x28(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x220(1)
    lwz 12, 0x24(12)
    lwz 4, 0x224(1)
    mtctr 12
    bctrl
    lwz 3, 0x28(31)
    li 4, 0x0
    .4byte 0xC022085C # lfs f1, lbl_805437FC@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420860 # lfs f2, lbl_80543800@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    lfs 0, 0x68(31)
    lwz 3, 0x2c(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x218(1)
    lwz 12, 0x24(12)
    lwz 4, 0x21c(1)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    li 4, 0x0
    .4byte 0xC0220864 # lfs f1, lbl_80543804@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420860 # lfs f2, lbl_80543800@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x480000EC # b .L_803FF978
L_803FF890:
    lis 4, lbl_8048C1B8@ha
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    addi 4, 4, lbl_8048C1B8@l
    bl fn_80092FD0
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x251(3)
    .4byte 0x480000C8 # b .L_803FF978
L_803FF8B4:
    bl OSGetProgressiveMode
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_803FF8D0
    lis 4, lbl_8048C17C@ha
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    addi 4, 4, lbl_8048C17C@l
    bl fn_80092FD0
L_803FF8D0:
    lbz 0, 0x76(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_803FF92C
    lfs 0, 0x68(31)
    lwz 3, 0x24(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x220(1)
    lwz 12, 0x24(12)
    lwz 4, 0x224(1)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    li 4, 0x0
    .4byte 0xC0220868 # lfs f1, lbl_80543808@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC042086C # lfs f2, lbl_8054380C@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x48000050 # b .L_803FF978
L_803FF92C:
    lfs 0, 0x68(31)
    lwz 3, 0x20(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x220(1)
    lwz 12, 0x24(12)
    lwz 4, 0x224(1)
    mtctr 12
    bctrl
    lwz 3, 0x20(31)
    li 4, 0x0
    .4byte 0xC0220868 # lfs f1, lbl_80543808@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC042086C # lfs f2, lbl_8054380C@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
L_803FF978:
    lis 4, lbl_80499520@ha
    lis 3, lbl_80499548@ha
    addi 0, 4, lbl_80499520@l
    stw 0, 0x12c(1)
    addi 0, 3, lbl_80499548@l
    stw 0, 0x12c(1)
    .4byte 0x480000FC # b .L_803FFA8C
L_803FF994:
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0220838 # lfs f1, lbl_805437D8@sda21(r0)
    addi 3, 1, 0x58
    lwz 5, 0x4(5)
    stw 4, 0x220(1)
    fmr 2, 1
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0x218(1)
    xoris 4, 5, 0x8000
    .4byte 0xC8820880 # lfd f4, lbl_80543820@sda21(r0)
    stw 4, 0x224(1)
    .4byte 0xC0A2083C # lfs f5, lbl_805437DC@sda21(r0)
    stw 0, 0x21c(1)
    lfd 3, 0x220(1)
    lfd 0, 0x218(1)
    fsubs 3, 3, 4
    .4byte 0xC0C20840 # lfs f6, lbl_805437E0@sda21(r0)
    fsubs 4, 0, 4
    bl fn_800937B0
    li 0, 0x0
    .4byte 0x80AD8E88 # lwz r5, lbl_8053AA48@sda21(r0)
    stb 0, 0x8(1)
    addi 3, 1, 0x58
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
    lwz 3, 0x30(31)
    li 4, 0x0
    .4byte 0xC0220870 # lfs f1, lbl_80543810@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420874 # lfs f2, lbl_80543814@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0620878 # lfs f3, lbl_80543818@sda21(r0)
    .4byte 0xC082087C # lfs f4, lbl_8054381C@sda21(r0)
    mtctr 12
    bctrl
    lis 3, lbl_80499520@ha
    lis 4, lbl_80529DEC@ha
    addi 0, 3, lbl_80499520@l
    lis 3, lbl_80499548@ha
    stw 0, 0x58(1)
    addi 0, 3, lbl_80499548@l
    addi 3, 4, lbl_80529DEC@l
    li 4, 0x1
    stb 4, 0x225(3)
    stw 0, 0x58(1)
L_803FFA8C:
    lwz 0, 0x244(1)
    lwz 31, 0x23c(1)
    lwz 30, 0x238(1)
    lwz 29, 0x234(1)
    mtlr 0
    addi 1, 1, 0x240
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_803FEB94

