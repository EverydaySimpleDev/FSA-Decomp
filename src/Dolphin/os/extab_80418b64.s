# 901KB-gap non-actor manager block: 10 functions, 17,960 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800104DC
etb_800104DC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800104DC, 8

.global etb_800104E4
etb_800104E4:
    .4byte 0x488A0000
    .4byte 0x00000000
.size etb_800104E4, 8

.global etb_800104EC
etb_800104EC:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_800104EC, 8

.global etb_800104F4
etb_800104F4:
    .4byte 0x500A0000
    .4byte 0x00000000
.size etb_800104F4, 8

.global etb_800104FC
etb_800104FC:
    .4byte 0x510A0000
    .4byte 0x00000000
.size etb_800104FC, 8

.global etb_80010504
etb_80010504:
    .4byte 0x58CA0000
    .4byte 0x00000000
.size etb_80010504, 8

.global etb_8001050C
etb_8001050C:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_8001050C, 8

.global etb_80010514
etb_80010514:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_80010514, 8

.global etb_8001051C
etb_8001051C:
    .4byte 0x70080000
    .4byte 0x00000000
.size etb_8001051C, 8

.global etb_80010524
etb_80010524:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80010524, 8

.section extabindex, "a"
.balign 4
.global eti_80020308
eti_80020308:
    .4byte fn_80418B64
    .4byte 0x000001A4
    .4byte etb_800104DC
.size eti_80020308, 12

.global eti_80020314
eti_80020314:
    .4byte fn_80418D08
    .4byte 0x00000484
    .4byte etb_800104E4
.size eti_80020314, 12

.global eti_80020320
eti_80020320:
    .4byte fn_8041918C
    .4byte 0x000003E4
    .4byte etb_800104EC
.size eti_80020320, 12

.global eti_8002032C
eti_8002032C:
    .4byte fn_80419570
    .4byte 0x000006C8
    .4byte etb_800104F4
.size eti_8002032C, 12

.global eti_80020338
eti_80020338:
    .4byte fn_80419C38
    .4byte 0x00000C30
    .4byte etb_800104FC
.size eti_80020338, 12

.global eti_80020344
eti_80020344:
    .4byte fn_8041A868
    .4byte 0x00000E34
    .4byte etb_80010504
.size eti_80020344, 12

.global eti_80020350
eti_80020350:
    .4byte fn_8041B69C
    .4byte 0x00000A24
    .4byte etb_8001050C
.size eti_80020350, 12

.global eti_8002035C
eti_8002035C:
    .4byte fn_8041C0C0
    .4byte 0x000005BC
    .4byte etb_80010514
.size eti_8002035C, 12

.global eti_80020368
eti_80020368:
    .4byte fn_8041C67C
    .4byte 0x00000588
    .4byte etb_8001051C
.size eti_80020368, 12

.global eti_80020374
eti_80020374:
    .4byte fn_8041CC04
    .4byte 0x00000588
    .4byte etb_80010524
.size eti_80020374, 12

.text
.balign 4
.global fn_80418B64
.global fn_80418D08
.global fn_8041918C
.global fn_80419570
.global fn_80419C38
.global fn_8041A868
.global fn_8041B69C
.global fn_8041C0C0
.global fn_8041C67C
.global fn_8041CC04

fn_80418B64:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    li 3, 0x0
    bl fn_8022EA0C
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    addi 7, 1, 0x8
    li 6, 0x0
    lwz 3, 0x24(5)
    li 5, 0x0
    bl fn_8030C5F0
    li 3, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800010 # blt .L_80418BBC
    li 0, 0x1
    stb 0, 0x218(31)
    .4byte 0x48000074 # b .L_80418C2C
L_80418BBC:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x18(1)
    lwz 3, 0x4(3)
    .4byte 0xC8420A58 # lfd f2, lbl_805439F8@sda21(r0)
    lhz 3, 0x6(3)
    .4byte 0xC0220A50 # lfs f1, lbl_805439F0@sda21(r0)
    xoris 3, 3, 0x8000
    lfs 3, 0xc(1)
    stw 3, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fcmpo cr0, 3, 0
    .4byte 0x40800010 # bge .L_80418C04
    li 0, 0x0
    stb 0, 0x218(31)
    .4byte 0x4800002C # b .L_80418C2C
L_80418C04:
    stw 3, 0x1c(1)
    .4byte 0xC0220A54 # lfs f1, lbl_805439F4@sda21(r0)
    stw 0, 0x18(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fcmpo cr0, 3, 0
    .4byte 0x4081000C # ble .L_80418C2C
    li 0, 0x1
    stb 0, 0x218(31)
L_80418C2C:
    lbz 0, 0x218(31)
    cmplwi 0, 0x0
    .4byte 0x41820064 # beq .L_80418C98
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 3, 0xdc(3)
    clrlwi 0, 3, 31
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_80418C90
    extrwi 0, 3, 1, 30
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_80418C88
    extrwi 0, 3, 1, 29
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_80418C80
    extrwi 0, 3, 1, 28
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80418C78
    li 3, 0x4
    .4byte 0x48000080 # b .L_80418CF4
L_80418C78:
    li 3, 0x3
    .4byte 0x48000078 # b .L_80418CF4
L_80418C80:
    li 3, 0x1
    .4byte 0x48000070 # b .L_80418CF4
L_80418C88:
    li 3, 0x2
    .4byte 0x48000068 # b .L_80418CF4
L_80418C90:
    li 3, 0x0
    .4byte 0x48000060 # b .L_80418CF4
L_80418C98:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 3, 0xdc(3)
    extrwi 0, 3, 1, 29
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_80418CF0
    extrwi 0, 3, 1, 28
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_80418CE8
    clrlwi 0, 3, 31
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_80418CE0
    extrwi 0, 3, 1, 30
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80418CD8
    li 3, 0x4
    .4byte 0x48000020 # b .L_80418CF4
L_80418CD8:
    li 3, 0x2
    .4byte 0x48000018 # b .L_80418CF4
L_80418CE0:
    li 3, 0x0
    .4byte 0x48000010 # b .L_80418CF4
L_80418CE8:
    li 3, 0x3
    .4byte 0x48000008 # b .L_80418CF4
L_80418CF0:
    li 3, 0x1
L_80418CF4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80418D08:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stmw 23, 0x4c(1)
    li 0, 0x1
    mr 27, 3
    slw 0, 0, 4
    lbz 3, 0x28f(3)
    clrlwi 6, 0, 24
    slwi 30, 4, 2
    and 3, 3, 6
    lis 7, lbl_8048D320@ha
    neg 0, 3
    add 29, 27, 30
    or 0, 0, 3
    lfs 31, 0x128(29)
    srwi. 0, 0, 31
    lfs 30, 0x168(29)
    mr 28, 5
    addi 31, 7, lbl_8048D320@l
    .4byte 0x4082003C # bne .L_80418DA4
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810014 # ble .L_80418D88
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 31, 0
    stfs 0, 0x128(29)
    .4byte 0x48000008 # b .L_80418D8C
L_80418D88:
    stfs 0, 0x128(29)
L_80418D8C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    lwz 0, 0x20(3)
    add 3, 0, 4
    stb 5, 0x217(3)
    .4byte 0x480000A8 # b .L_80418E48
L_80418DA4:
    lis 3, lbl_80529DEC@ha
    addi 0, 3, lbl_80529DEC@l
    add 3, 0, 30
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_80418E24
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5e(3)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_80418E24
    .4byte 0xC0220A68 # lfs f1, lbl_80543A08@sda21(r0)
    fcmpo cr0, 31, 1
    .4byte 0x40810028 # ble .L_80418DFC
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 31, 0
    stfs 0, 0x128(29)
    lfs 0, 0x128(29)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820058 # bne .L_80418E48
    stfs 1, 0x128(29)
    .4byte 0x48000050 # b .L_80418E48
L_80418DFC:
    .4byte 0x4080004C # bge .L_80418E48
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 31, 0
    stfs 0, 0x128(29)
    lfs 0, 0x128(29)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_80418E48
    stfs 1, 0x128(29)
    .4byte 0x48000028 # b .L_80418E48
L_80418E24:
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800018 # bge .L_80418E44
    lfs 1, 0x128(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x128(29)
    .4byte 0x48000008 # b .L_80418E48
L_80418E44:
    stfs 0, 0x128(29)
L_80418E48:
    lfs 0, 0x128(29)
    fcmpu cr0, 31, 0
    .4byte 0x4082000C # bne .L_80418E5C
    clrlwi. 0, 28, 24
    .4byte 0x41820310 # beq .L_80419168
L_80418E5C:
    lbz 0, 0x28f(27)
    and. 0, 0, 6
    .4byte 0x40820038 # bne .L_80418E9C
    bl GetSessionFlag_0x6e
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_80418E9C
    lfs 1, 0x168(29)
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_80418E94
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x168(29)
    .4byte 0x480000B4 # b .L_80418F44
L_80418E94:
    stfs 0, 0x168(29)
    .4byte 0x480000AC # b .L_80418F44
L_80418E9C:
    lis 3, lbl_80529DEC@ha
    addi 0, 3, lbl_80529DEC@l
    add 3, 0, 30
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_80418F20
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5e(3)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_80418F20
    lfs 2, 0x168(29)
    .4byte 0xC0220A68 # lfs f1, lbl_80543A08@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_80418EF8
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x168(29)
    lfs 0, 0x168(29)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820058 # bne .L_80418F44
    stfs 1, 0x168(29)
    .4byte 0x48000050 # b .L_80418F44
L_80418EF8:
    .4byte 0x4080004C # bge .L_80418F44
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x168(29)
    lfs 0, 0x168(29)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_80418F44
    stfs 1, 0x168(29)
    .4byte 0x48000028 # b .L_80418F44
L_80418F20:
    lfs 1, 0x168(29)
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80418F40
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x168(29)
    .4byte 0x48000008 # b .L_80418F44
L_80418F40:
    stfs 0, 0x168(29)
L_80418F44:
    lfs 0, 0x128(29)
    fcmpu cr0, 31, 0
    .4byte 0x40820018 # bne .L_80418F64
    lfs 0, 0x168(29)
    fcmpu cr0, 30, 0
    .4byte 0x4082000C # bne .L_80418F64
    clrlwi. 0, 28, 24
    .4byte 0x41820208 # beq .L_80419168
L_80418F64:
    .4byte 0xCBE20A70 # lfd f31, lbl_80543A10@sda21(r0)
    addi 29, 31, 0xc20
    addi 26, 31, 0xca0
    addi 25, 31, 0xc60
    addi 24, 31, 0xce0
    add 30, 27, 30
    li 23, 0x0
    lis 28, 0x4330
L_80418F84:
    lwz 3, 0x8(30)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x250(27)
    lwz 12, 0x0(3)
    stw 0, 0xc(1)
    lfs 0, 0x128(30)
    stw 28, 0x8(1)
    lwz 12, 0x24(12)
    lfd 1, 0x8(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x251(27)
    lwz 12, 0x0(3)
    stw 0, 0x1c(1)
    lfs 0, 0x128(30)
    stw 28, 0x18(1)
    lwz 12, 0x24(12)
    lfd 1, 0x18(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x252(27)
    lwz 12, 0x0(3)
    stw 0, 0x2c(1)
    lfs 0, 0x128(30)
    stw 28, 0x28(1)
    lwz 12, 0x24(12)
    lfd 1, 0x28(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x253(27)
    lwz 12, 0x0(3)
    stw 0, 0x3c(1)
    lfs 0, 0x128(30)
    stw 28, 0x38(1)
    lwz 12, 0x24(12)
    lfd 1, 0x38(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 26, 26, 0x8
    cmpwi 23, 0x8
    addi 25, 25, 0x8
    addi 24, 24, 0x8
    addi 29, 29, 0x8
    .4byte 0x4180FE98 # blt .L_80418F84
    .4byte 0xCBC20A70 # lfd f30, lbl_80543A10@sda21(r0)
    addi 24, 31, 0xab0
    li 23, 0x0
    lis 28, 0x4330
L_80419100:
    lwz 3, 0x2c(30)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x27b
    lwz 12, 0x0(3)
    lbzx 0, 27, 0
    stw 28, 0x40(1)
    lfs 0, 0x168(30)
    stw 0, 0x44(1)
    lwz 12, 0x24(12)
    lfd 1, 0x40(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x6
    .4byte 0x4180FF9C # blt .L_80419100
L_80419168:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    lmw 23, 0x4c(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8041918C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 28, 4
    mr 27, 3
    mr 3, 28
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x0
    .4byte 0x40810380 # ble .L_80419534
    mr 3, 28
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x12c
    .4byte 0x4080036C # bge .L_80419534
    mr 3, 28
    bl fn_8022EA0C
    bl fn_802366CC
    lis 4, 0x8889
    add 30, 27, 28
    subi 4, 4, 0x7777
    lbz 0, 0x294(30)
    mulhw 4, 4, 3
    add 3, 4, 3
    srawi 3, 3, 5
    srwi 4, 3, 31
    add 3, 3, 4
    addi 29, 3, 0x1
    cmpw 29, 0
    .4byte 0x4182033C # beq .L_80419540
    cmpwi 29, 0x63
    .4byte 0x40810008 # ble .L_80419214
    li 29, 0x63
L_80419214:
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_80419220
    li 29, 0x0
L_80419220:
    cmpwi 29, 0xa
    .4byte 0x40800128 # bge .L_8041934C
    lis 3, lbl_804B139C@ha
    lis 5, 0x5449
    slwi 0, 29, 2
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    slwi 0, 28, 2
    mr 5, 3
    add 26, 27, 0
    lis 4, lbl_8048DDD0@ha
    lwz 3, 0x2c(26)
    mr 24, 5
    lwzu 5, lbl_8048DDD0@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(26)
    lis 4, lbl_8048DDD0@ha
    addi 4, 4, lbl_8048DDD0@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(26)
    lis 4, lbl_8048DDD0@ha
    addi 25, 4, lbl_8048DDD0@l
    lwz 12, 0x0(3)
    lwz 5, 0x10(25)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(25)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820238 # bne .L_8041952C
    lwz 3, 0x2c(26)
    lwz 5, 0x10(25)
    lwz 12, 0x0(3)
    lwz 6, 0x14(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, lbl_8048DDD0@ha
    stb 0, 0xb0(3)
    addi 4, 4, lbl_8048DDD0@l
    lwz 5, 0x18(4)
    lwz 3, 0x2c(26)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480001E4 # b .L_8041952C
L_8041934C:
    lis 4, 0x6666
    lis 3, lbl_804B139C@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    slwi 0, 28, 2
    mr 5, 3
    add 31, 27, 0
    lis 4, lbl_8048DDD0@ha
    lwz 3, 0x2c(31)
    mr 24, 5
    lwzu 5, lbl_8048DDD0@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 4, lbl_8048DDD0@ha
    addi 4, 4, lbl_8048DDD0@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B139C@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 29
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 24, 3
    lwz 3, 0x2c(31)
    lis 4, lbl_8048DDD0@ha
    lwz 12, 0x0(3)
    addi 25, 4, lbl_8048DDD0@l
    lwz 5, 0x10(25)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(25)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 4, lbl_8048DDD0@ha
    addi 26, 4, lbl_8048DDD0@l
    lwz 12, 0x0(3)
    lwz 5, 0x18(26)
    lwz 12, 0x3c(12)
    lwz 6, 0x1c(26)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lwz 5, 0x10(25)
    lwz 12, 0x0(3)
    lwz 6, 0x14(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8041952C
    lwz 3, 0x2c(31)
    lwz 5, 0x10(25)
    lwz 12, 0x0(3)
    lwz 6, 0x14(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x18(26)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(26)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_8041952C:
    stb 29, 0x294(30)
    .4byte 0x48000010 # b .L_80419540
L_80419534:
    add 3, 27, 28
    li 0, 0x0
    stb 0, 0x294(3)
L_80419540:
    slwi 0, 28, 1
    add 4, 27, 0
    lha 3, 0x234(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8041955C
    subi 0, 3, 0x1
    sth 0, 0x234(4)
L_8041955C:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80419570:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 22, 0x8(1)
    mr 22, 4
    lis 4, lbl_8048D320@ha
    mr 23, 3
    slwi 0, 22, 1
    add 26, 23, 0
    addi 4, 4, lbl_8048D320@l
    lha 0, 0x21a(26)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_804195CC
    mr 3, 22
    bl fn_80237774
    slwi 24, 22, 2
    add 4, 23, 24
    stw 3, 0x1d8(4)
    mr 3, 22
    bl fn_80237810
    add 4, 23, 24
    stw 3, 0x1f8(4)
    .4byte 0x4800065C # b .L_80419C24
L_804195CC:
    slwi 5, 22, 2
    add 3, 23, 5
    lwz 25, 0x1f8(3)
    lwz 22, 0x1d8(3)
    cmpwi 25, 0x20
    .4byte 0x40810008 # ble .L_804195E8
    li 25, 0x20
L_804195E8:
    cmpwi 25, 0x0
    .4byte 0x40800008 # bge .L_804195F4
    li 25, 0x0
L_804195F4:
    cmpw 25, 22
    .4byte 0x40800008 # bge .L_80419600
    mr 22, 25
L_80419600:
    cmpwi 22, 0x0
    .4byte 0x40800008 # bge .L_8041960C
    li 22, 0x0
L_8041960C:
    addi 31, 4, 0xc20
    addi 30, 4, 0xca0
    addi 29, 4, 0xc60
    addi 28, 4, 0xce0
    addi 27, 5, 0x8
    li 24, 0x0
L_80419624:
    cmpwi 22, 0x4
    .4byte 0x41800138 # blt .L_80419760
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    .4byte 0xC0420A60 # lfs f2, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    .4byte 0xC0420A60 # lfs f2, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    subi 22, 22, 0x4
    .4byte 0x480004A0 # b .L_80419BFC
L_80419760:
    cmpwi 22, 0x0
    .4byte 0x408200F0 # bne .L_80419854
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    cmpwi 25, 0x0
    stb 0, 0xb0(3)
    .4byte 0x40810054 # ble .L_80419808
    lwzx 3, 23, 27
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    .4byte 0x480003F4 # b .L_80419BF8
L_80419808:
    lwzx 3, 23, 27
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480003A8 # b .L_80419BF8
L_80419854:
    cmpwi 22, 0x1
    .4byte 0x40820134 # bne .L_8041998C
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820A6C # lfs f4, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820A6C # lfs f4, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    .4byte 0x48000270 # b .L_80419BF8
L_8041998C:
    cmpwi 22, 0x2
    .4byte 0x40820134 # bne .L_80419AC4
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620A6C # lfs f3, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620A6C # lfs f3, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    .4byte 0x48000138 # b .L_80419BF8
L_80419AC4:
    cmpwi 22, 0x3
    .4byte 0x40820130 # bne .L_80419BF8
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420A6C # lfs f2, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420A6C # lfs f2, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
L_80419BF8:
    li 22, 0x0
L_80419BFC:
    addi 24, 24, 0x1
    addi 30, 30, 0x8
    cmpwi 24, 0x8
    addi 29, 29, 0x8
    addi 28, 28, 0x8
    addi 31, 31, 0x8
    .4byte 0x4180FA10 # blt .L_80419624
    lha 3, 0x21a(26)
    subi 0, 3, 0x1
    sth 0, 0x21a(26)
L_80419C24:
    lmw 22, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80419C38:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stmw 22, 0x68(1)
    mr 27, 4
    lis 4, lbl_8048D320@ha
    mr 26, 3
    mr 28, 5
    slwi 30, 27, 2
    cmpwi 27, 0x2
    add 29, 26, 30
    addi 31, 4, lbl_8048D320@l
    lfs 29, 0x118(29)
    lfs 30, 0x138(29)
    lfs 31, 0x148(29)
    .4byte 0x418000CC # blt .L_80419D60
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x74(29)
    lfs 1, 0xf8(29)
    mr 25, 29
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x84(29)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x94(29)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xa4(29)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xb4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xc4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xd4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xe4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x480000C8 # b .L_80419E24
L_80419D60:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x74(29)
    lfs 1, 0xf8(29)
    mr 25, 29
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x84(29)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x94(29)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xa4(29)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xb4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xc4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xd4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xe4(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
L_80419E24:
    bl fn_8037EB4C
    li 0, 0x1
    lbz 3, 0x28f(26)
    slw 0, 0, 27
    clrlwi 4, 0, 24
    and 3, 3, 4
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820038 # beq .L_80419E80
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    and. 0, 0, 4
    .4byte 0x40820028 # bne .L_80419E80
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80419E80
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x85(3)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_80419F04
L_80419E80:
    lfs 1, 0x118(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80419E9C
    fsubs 0, 1, 0
    stfs 0, 0x118(29)
    .4byte 0x4800000C # b .L_80419EA4
L_80419E9C:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x118(29)
L_80419EA4:
    lfs 1, 0x138(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80419EC0
    fsubs 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x4800000C # b .L_80419EC8
L_80419EC0:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x138(29)
L_80419EC8:
    lfs 1, 0x148(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80419EE4
    fsubs 0, 1, 0
    stfs 0, 0x148(29)
    .4byte 0x4800000C # b .L_80419EEC
L_80419EE4:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x148(29)
L_80419EEC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    lwz 0, 0x20(3)
    add 3, 0, 27
    stb 4, 0x217(3)
    .4byte 0x48000248 # b .L_8041A148
L_80419F04:
    lis 3, lbl_80529DEC@ha
    addi 0, 3, lbl_80529DEC@l
    add 3, 0, 30
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x40820154 # bne .L_8041A06C
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5e(3)
    cmplwi 0, 0x0
    .4byte 0x40820144 # bne .L_8041A06C
    lfs 2, 0x118(29)
    .4byte 0xC0220A68 # lfs f1, lbl_80543A08@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_80419F60
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x118(29)
    lfs 0, 0x118(29)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_80419F84
    stfs 1, 0x118(29)
    .4byte 0x48000028 # b .L_80419F84
L_80419F60:
    .4byte 0x40800024 # bge .L_80419F84
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x118(29)
    lfs 0, 0x118(29)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80419F84
    stfs 1, 0x118(29)
L_80419F84:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x20(3)
    add 3, 0, 27
    lbz 0, 0x14c(3)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_8041A020
    lfs 1, 0x138(29)
    .4byte 0xC0020A78 # lfs f0, lbl_80543A18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80419FBC
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x4800000C # b .L_80419FC4
L_80419FBC:
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    stfs 0, 0x138(29)
L_80419FC4:
    lfs 2, 0x148(29)
    .4byte 0xC0220A68 # lfs f1, lbl_80543A08@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_80419FF8
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x148(29)
    lfs 0, 0x148(29)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082015C # bne .L_8041A148
    stfs 1, 0x148(29)
    .4byte 0x48000154 # b .L_8041A148
L_80419FF8:
    .4byte 0x40800150 # bge .L_8041A148
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x148(29)
    lfs 0, 0x148(29)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820134 # bne .L_8041A148
    stfs 1, 0x148(29)
    .4byte 0x4800012C # b .L_8041A148
L_8041A020:
    lfs 1, 0x138(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041A03C
    fsubs 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x4800000C # b .L_8041A044
L_8041A03C:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x138(29)
L_8041A044:
    lfs 1, 0x148(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041A060
    fsubs 0, 1, 0
    stfs 0, 0x148(29)
    .4byte 0x480000EC # b .L_8041A148
L_8041A060:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x148(29)
    .4byte 0x480000E0 # b .L_8041A148
L_8041A06C:
    lfs 1, 0x118(29)
    .4byte 0xC0020A78 # lfs f0, lbl_80543A18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8041A08C
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x118(29)
    .4byte 0x4800000C # b .L_8041A094
L_8041A08C:
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    stfs 0, 0x118(29)
L_8041A094:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x20(3)
    add 3, 0, 27
    lbz 0, 0x14c(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_8041A100
    lfs 1, 0x138(29)
    .4byte 0xC0020A78 # lfs f0, lbl_80543A18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8041A0CC
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x4800000C # b .L_8041A0D4
L_8041A0CC:
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    stfs 0, 0x138(29)
L_8041A0D4:
    lfs 1, 0x148(29)
    .4byte 0xC0020A78 # lfs f0, lbl_80543A18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8041A0F4
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x148(29)
    .4byte 0x48000058 # b .L_8041A148
L_8041A0F4:
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    stfs 0, 0x148(29)
    .4byte 0x4800004C # b .L_8041A148
L_8041A100:
    lfs 1, 0x138(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041A11C
    fsubs 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x4800000C # b .L_8041A124
L_8041A11C:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x138(29)
L_8041A124:
    lfs 1, 0x148(29)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041A140
    fsubs 0, 1, 0
    stfs 0, 0x148(29)
    .4byte 0x4800000C # b .L_8041A148
L_8041A140:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x148(29)
L_8041A148:
    lfs 28, 0x118(29)
    fcmpu cr0, 29, 28
    .4byte 0x40820024 # bne .L_8041A174
    lfs 0, 0x138(29)
    fcmpu cr0, 30, 0
    .4byte 0x40820018 # bne .L_8041A174
    lfs 0, 0x148(29)
    fcmpu cr0, 31, 0
    .4byte 0x4082000C # bne .L_8041A174
    clrlwi. 0, 28, 24
    .4byte 0x418206C4 # beq .L_8041A834
L_8041A174:
    lwz 3, 0x4(26)
    slwi 24, 27, 4
    addi 0, 31, 0x4f8
    lwz 12, 0x0(3)
    add 6, 0, 24
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x24c(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0xc(1)
    .4byte 0xC8220A70 # lfd f1, lbl_80543A10@sda21(r0)
    stw 0, 0x8(1)
    lwz 12, 0x24(12)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 28
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0x4f8
    add 4, 0, 24
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lbz 4, 0x24d(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x18(1)
    lfs 0, 0x118(29)
    lfd 1, 0x18(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    mulli 3, 27, 0x28
    addi 0, 31, 0x3b8
    addi 24, 31, 0x458
    .4byte 0xCBA20A70 # lfd f29, lbl_80543A10@sda21(r0)
    addi 30, 30, 0x118
    add 25, 0, 3
    add 24, 24, 3
    li 23, 0x0
    lis 28, 0x4330
L_8041A260:
    lwz 3, 0x4(26)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x24e(26)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lfsx 0, 26, 30
    stw 28, 0x20(1)
    lwz 12, 0x24(12)
    lfd 1, 0x20(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x24f(26)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lfsx 0, 26, 30
    stw 28, 0x10(1)
    lwz 12, 0x24(12)
    lfd 1, 0x10(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x5
    addi 25, 25, 0x8
    .4byte 0x4180FF48 # blt .L_8041A260
    mulli 3, 27, 0x18
    addi 0, 31, 0x838
    addi 25, 31, 0x898
    .4byte 0xCBA20A70 # lfd f29, lbl_80543A10@sda21(r0)
    li 22, 0x0
    add 24, 0, 3
    add 25, 25, 3
    lis 28, 0x4330
L_8041A33C:
    lwz 3, 0x4(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    add 23, 26, 22
    lwz 12, 0x0(3)
    lbz 0, 0x258(23)
    stw 28, 0x20(1)
    lfsx 0, 26, 30
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    lfd 1, 0x20(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x25b(23)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lfsx 0, 26, 30
    stw 28, 0x10(1)
    lwz 12, 0x24(12)
    lfd 1, 0x10(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 25, 25, 0x8
    cmpwi 22, 0x3
    addi 24, 24, 0x8
    .4byte 0x4180FF44 # blt .L_8041A33C
    mulli 3, 27, 0x60
    addi 0, 31, 0x538
    addi 25, 31, 0x6b8
    .4byte 0xCBA20A70 # lfd f29, lbl_80543A10@sda21(r0)
    li 22, 0x0
    add 24, 0, 3
    add 25, 25, 3
    lis 28, 0x4330
L_8041A41C:
    lwz 3, 0x4(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x25e(26)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lfsx 0, 26, 30
    stw 28, 0x20(1)
    lwz 12, 0x24(12)
    lfd 1, 0x20(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x25f(26)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lfsx 0, 26, 30
    stw 28, 0x10(1)
    lwz 12, 0x24(12)
    lfd 1, 0x10(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 25, 25, 0x8
    cmpwi 22, 0xc
    addi 24, 24, 0x8
    .4byte 0x4180FF48 # blt .L_8041A41C
    mulli 0, 27, 0x30
    addi 24, 31, 0x8f8
    .4byte 0xCBA20A70 # lfd f29, lbl_80543A10@sda21(r0)
    li 22, 0x0
    lis 28, 0x4330
    add 24, 24, 0
L_8041A4F0:
    lwz 3, 0x4(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x260
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 28, 0x20(1)
    lfsx 0, 26, 30
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    lfd 1, 0x20(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x6
    .4byte 0x4180FF9C # blt .L_8041A4F0
    lwz 3, 0x4(26)
    slwi 28, 27, 3
    addi 0, 31, 0xb40
    lwz 12, 0x0(3)
    add 6, 0, 28
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x266(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x24(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x20(1)
    lfs 0, 0x138(29)
    lfd 1, 0x20(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x18(26)
    addi 0, 31, 0xb20
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x267(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x10(1)
    lfs 0, 0x148(29)
    lfd 1, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x18(26)
    addi 0, 31, 0xae0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x268(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x2c(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x28(1)
    lfs 0, 0x118(29)
    lfd 1, 0x28(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    lwz 3, 0x18(26)
    addi 0, 31, 0xb00
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x269(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x3c(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x38(1)
    lfs 0, 0x118(29)
    lfd 1, 0x38(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xb80
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x26a(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x4c(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x48(1)
    lfs 0, 0x118(29)
    lfd 1, 0x48(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 4, 0x54(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xba0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x26b(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x5c(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x58(1)
    lfs 0, 0x118(29)
    lfd 1, 0x58(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 4, 0x64(1)
    mtctr 12
    bctrl
    slwi 0, 27, 5
    addi 24, 31, 0x9d8
    .4byte 0xCBA20A70 # lfd f29, lbl_80543A10@sda21(r0)
    add 24, 24, 0
    li 22, 0x0
    lis 27, 0x4330
L_8041A7CC:
    lwz 3, 0x4(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x26c
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 27, 0x60(1)
    lfsx 0, 26, 30
    stw 0, 0x64(1)
    lwz 12, 0x24(12)
    lfd 1, 0x60(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 4, 0x5c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FF9C # blt .L_8041A7CC
L_8041A834:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    lmw 22, 0x68(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_8041A868:
    stwu 1, -0x170(1)
    mflr 0
    stw 0, 0x174(1)
    stfd 31, 0x160(1)
    psq_st 31, 0x168(1), 0, 0
    stfd 30, 0x150(1)
    psq_st 30, 0x158(1), 0, 0
    stfd 29, 0x140(1)
    psq_st 29, 0x148(1), 0, 0
    stmw 21, 0x114(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    mr 21, 3
    lis 3, lbl_8048D320@ha
    lfs 31, 0x118(21)
    lbz 0, 0x83(5)
    mr 22, 4
    lfs 30, 0x158(21)
    addi 30, 3, lbl_8048D320@l
    clrlwi 0, 0, 30
    li 23, 0x0
    cmplwi 0, 0x2
    .4byte 0x40820008 # bne .L_8041A8C4
    li 23, 0x1
L_8041A8C4:
    mr 3, 21
    bl fn_80418B64
    lha 4, 0x222(21)
    extsh 0, 3
    li 25, 0x0
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_8041A8FC
    lfs 1, 0x118(21)
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8041A8F8
    li 25, 0x1
    .4byte 0x48000008 # b .L_8041A8FC
L_8041A8F8:
    sth 3, 0x222(21)
L_8041A8FC:
    mulli 29, 23, 0xa
    lha 0, 0x222(21)
    addi 28, 30, 0xdac
    slwi 5, 0, 1
    add 28, 28, 29
    lis 3, lbl_8050DB0C@ha
    addi 8, 3, lbl_8050DB0C@l
    lhax 0, 28, 5
    addi 4, 30, 0xdc0
    add 6, 29, 5
    addi 3, 30, 0xdd4
    lha 7, 0x232(8)
    lhax 5, 4, 6
    cmpwi 0, 0x0
    lha 4, 0x234(8)
    lhax 0, 3, 6
    add 3, 7, 5
    extsh 24, 3
    add 0, 4, 0
    extsh 23, 0
    .4byte 0x4082003C # bne .L_8041A988
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    xoris 3, 23, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC8420A58 # lfd f2, lbl_805439F8@sda21(r0)
    stw 0, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fadds 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 23, 0x14(1)
    .4byte 0x48000038 # b .L_8041A9BC
L_8041A988:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    xoris 3, 23, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8420A58 # lfd f2, lbl_805439F8@sda21(r0)
    stw 0, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fadds 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 23, 0xc(1)
L_8041A9BC:
    lha 0, 0x222(21)
    lis 5, 0x4330
    addi 27, 30, 0xd98
    extsh 3, 23
    slwi 9, 0, 1
    lis 4, lbl_8050DB0C@ha
    lhax 0, 28, 9
    addi 8, 4, lbl_8050DB0C@l
    add 27, 27, 29
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    lha 4, 0x2d4(8)
    stw 0, 0x24(1)
    addi 7, 30, 0xde8
    add 6, 29, 9
    xoris 0, 4, 0x8000
    stw 5, 0x20(1)
    .4byte 0xC8820A58 # lfd f4, lbl_805439F8@sda21(r0)
    lfd 0, 0x20(1)
    stw 3, 0x1c(1)
    lha 4, 0x2d2(8)
    fsubs 0, 0, 4
    stw 5, 0x18(1)
    lhax 3, 27, 9
    lfd 2, 0x18(1)
    lfs 1, 0x108(21)
    add 4, 3, 4
    lhax 3, 7, 6
    fsubs 2, 2, 4
    fadds 0, 1, 0
    stw 0, 0xc(1)
    add 0, 4, 3
    lwz 3, 0x54(21)
    stw 5, 0x8(1)
    add 0, 24, 0
    xoris 0, 0, 0x8000
    lfd 1, 0x8(1)
    stw 0, 0x14(1)
    fadds 0, 2, 0
    fsubs 1, 1, 4
    stw 5, 0x10(1)
    lfd 3, 0x10(1)
    fadds 2, 1, 0
    fsubs 1, 3, 4
    bl fn_80402E08
    lha 0, 0x222(21)
    lis 6, 0x4330
    lis 3, lbl_8050DB0C@ha
    xoris 5, 24, 0x8000
    slwi 8, 0, 1
    addi 26, 30, 0xe10
    lhax 4, 27, 8
    addi 31, 3, lbl_8050DB0C@l
    lhax 0, 28, 8
    extsh 3, 23
    xoris 4, 4, 0x8000
    lha 7, 0x2d6(31)
    stw 4, 0x3c(1)
    xoris 0, 0, 0x8000
    xoris 7, 7, 0x8000
    add 26, 26, 29
    stw 6, 0x38(1)
    xoris 4, 3, 0x8000
    .4byte 0xC8820A58 # lfd f4, lbl_805439F8@sda21(r0)
    lfd 0, 0x38(1)
    stw 5, 0x34(1)
    lhax 3, 26, 8
    fsubs 0, 0, 4
    stw 6, 0x30(1)
    lfs 1, 0xf8(21)
    xoris 5, 3, 0x8000
    lfd 2, 0x30(1)
    lha 3, 0x2d8(31)
    fadds 0, 1, 0
    fsubs 2, 2, 4
    stw 0, 0x5c(1)
    xoris 0, 3, 0x8000
    lfs 1, 0x108(21)
    stw 6, 0x58(1)
    fadds 2, 2, 0
    lfd 0, 0x58(1)
    stw 7, 0x2c(1)
    fsubs 0, 0, 4
    lwz 3, 0x58(21)
    stw 6, 0x28(1)
    lfd 3, 0x28(1)
    fadds 0, 1, 0
    stw 4, 0x54(1)
    fsubs 3, 3, 4
    stw 6, 0x50(1)
    lfd 1, 0x50(1)
    fadds 3, 3, 2
    stw 5, 0x44(1)
    fsubs 1, 1, 4
    stw 6, 0x40(1)
    lfd 2, 0x40(1)
    fadds 0, 1, 0
    stw 0, 0x4c(1)
    fsubs 1, 2, 4
    stw 6, 0x48(1)
    lfd 2, 0x48(1)
    fadds 1, 3, 1
    fsubs 2, 2, 4
    fadds 2, 2, 0
    bl fn_80402E08
    lha 3, 0x222(21)
    lis 8, 0x4330
    xoris 7, 24, 0x8000
    lha 0, 0x2d6(31)
    slwi 6, 3, 1
    extsh 3, 23
    lhax 5, 27, 6
    xoris 9, 0, 0x8000
    lhax 0, 28, 6
    xoris 4, 3, 0x8000
    xoris 3, 5, 0x8000
    lhax 5, 26, 6
    stw 3, 0x74(1)
    xoris 0, 0, 0x8000
    lha 3, 0x2d8(31)
    xoris 6, 5, 0x8000
    stw 8, 0x70(1)
    .4byte 0xC8820A58 # lfd f4, lbl_805439F8@sda21(r0)
    xoris 5, 3, 0x8000
    lfd 0, 0x70(1)
    stw 7, 0x6c(1)
    fsubs 0, 0, 4
    lfs 2, 0xf8(21)
    stw 8, 0x68(1)
    lfs 1, 0x108(21)
    lfd 3, 0x68(1)
    fadds 2, 2, 0
    stw 0, 0x94(1)
    fsubs 3, 3, 4
    lwz 3, 0x5c(21)
    stw 8, 0x90(1)
    lfd 0, 0x90(1)
    fadds 2, 3, 2
    stw 9, 0x64(1)
    fsubs 0, 0, 4
    stw 8, 0x60(1)
    lfd 3, 0x60(1)
    fadds 0, 1, 0
    stw 4, 0x8c(1)
    fsubs 3, 3, 4
    stw 8, 0x88(1)
    lfd 1, 0x88(1)
    fadds 3, 3, 2
    stw 6, 0x7c(1)
    fsubs 1, 1, 4
    stw 8, 0x78(1)
    lfd 2, 0x78(1)
    fadds 0, 1, 0
    stw 5, 0x84(1)
    fsubs 1, 2, 4
    stw 8, 0x80(1)
    lfd 2, 0x80(1)
    fadds 1, 3, 1
    fsubs 2, 2, 4
    fadds 2, 2, 0
    bl fn_80402E08
    lha 0, 0x222(21)
    lis 9, 0x4330
    lis 4, lbl_8050DB0C@ha
    xoris 8, 24, 0x8000
    slwi 11, 0, 1
    extsh 3, 23
    lhax 5, 27, 11
    addi 6, 4, lbl_8050DB0C@l
    lhax 0, 28, 11
    xoris 4, 3, 0x8000
    xoris 3, 5, 0x8000
    lha 5, 0x2da(6)
    stw 3, 0xac(1)
    xoris 0, 0, 0x8000
    xoris 10, 5, 0x8000
    lha 3, 0x2dc(6)
    stw 9, 0xa8(1)
    addi 7, 30, 0xdfc
    .4byte 0xC8820A58 # lfd f4, lbl_805439F8@sda21(r0)
    add 6, 29, 11
    lfd 0, 0xa8(1)
    xoris 5, 3, 0x8000
    stw 8, 0xa4(1)
    lhax 3, 7, 6
    fsubs 0, 0, 4
    stw 9, 0xa0(1)
    lfs 1, 0xf8(21)
    xoris 6, 3, 0x8000
    lfd 3, 0xa0(1)
    stw 0, 0xcc(1)
    fadds 2, 1, 0
    fsubs 3, 3, 4
    lfs 1, 0x108(21)
    stw 9, 0xc8(1)
    lwz 3, 0x6c(21)
    lfd 0, 0xc8(1)
    fadds 2, 3, 2
    stw 10, 0x9c(1)
    fsubs 0, 0, 4
    stw 9, 0x98(1)
    lfd 3, 0x98(1)
    fadds 0, 1, 0
    stw 4, 0xc4(1)
    fsubs 3, 3, 4
    stw 9, 0xc0(1)
    lfd 1, 0xc0(1)
    fadds 3, 3, 2
    stw 6, 0xb4(1)
    fsubs 1, 1, 4
    stw 9, 0xb0(1)
    lfd 2, 0xb0(1)
    fadds 0, 1, 0
    stw 5, 0xbc(1)
    fsubs 1, 2, 4
    stw 9, 0xb8(1)
    lfd 2, 0xb8(1)
    fadds 1, 3, 1
    fsubs 2, 2, 4
    fadds 2, 2, 0
    bl fn_80402E08
    lha 0, 0x222(21)
    lis 9, 0x4330
    lis 4, lbl_8050DB0C@ha
    xoris 8, 24, 0x8000
    slwi 11, 0, 1
    extsh 3, 23
    lhax 5, 27, 11
    addi 6, 4, lbl_8050DB0C@l
    lhax 0, 28, 11
    xoris 4, 3, 0x8000
    xoris 3, 5, 0x8000
    lha 5, 0x2de(6)
    stw 3, 0xe4(1)
    xoris 0, 0, 0x8000
    xoris 10, 5, 0x8000
    lha 3, 0x2e0(6)
    stw 9, 0xe0(1)
    addi 7, 30, 0xe24
    .4byte 0xC8820A58 # lfd f4, lbl_805439F8@sda21(r0)
    add 6, 29, 11
    lfd 0, 0xe0(1)
    xoris 5, 3, 0x8000
    stw 8, 0xdc(1)
    lhax 3, 7, 6
    fsubs 0, 0, 4
    stw 9, 0xd8(1)
    lfs 1, 0xf8(21)
    xoris 6, 3, 0x8000
    lfd 3, 0xd8(1)
    stw 0, 0x104(1)
    fadds 2, 1, 0
    fsubs 3, 3, 4
    lfs 1, 0x108(21)
    stw 9, 0x100(1)
    lwz 3, 0x70(21)
    lfd 0, 0x100(1)
    fadds 2, 3, 2
    stw 10, 0xd4(1)
    fsubs 0, 0, 4
    stw 9, 0xd0(1)
    lfd 3, 0xd0(1)
    fadds 0, 1, 0
    stw 4, 0xfc(1)
    fsubs 3, 3, 4
    stw 9, 0xf8(1)
    lfd 1, 0xf8(1)
    fadds 3, 3, 2
    stw 6, 0xec(1)
    fsubs 1, 1, 4
    stw 9, 0xe8(1)
    lfd 2, 0xe8(1)
    fadds 0, 1, 0
    stw 5, 0xf4(1)
    fsubs 1, 2, 4
    stw 9, 0xf0(1)
    lfd 2, 0xf0(1)
    fadds 1, 3, 1
    fsubs 2, 2, 4
    fadds 2, 2, 0
    bl fn_80402E08
    bl fn_8037EB4C
    lbz 0, 0x28f(21)
    clrlwi. 0, 0, 31
    .4byte 0x4182003C # beq .L_8041AE68
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8041AE68
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x85(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8041AE68
    lha 0, 0x222(21)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_8041AE68
    clrlwi. 0, 25, 24
    .4byte 0x41820060 # beq .L_8041AEC4
L_8041AE68:
    lfs 1, 0x118(21)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041AE84
    fsubs 0, 1, 0
    stfs 0, 0x118(21)
    .4byte 0x4800000C # b .L_8041AE8C
L_8041AE84:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x118(21)
L_8041AE8C:
    lfs 1, 0x158(21)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041AEA8
    fsubs 0, 1, 0
    stfs 0, 0x158(21)
    .4byte 0x4800000C # b .L_8041AEB0
L_8041AEA8:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x158(21)
L_8041AEB0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x217(3)
    .4byte 0x4800019C # b .L_8041B05C
L_8041AEC4:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x40820100 # bne .L_8041AFD4
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5e(3)
    cmplwi 0, 0x0
    .4byte 0x408200F0 # bne .L_8041AFD4
    lfs 2, 0x118(21)
    .4byte 0xC0220A68 # lfs f1, lbl_80543A08@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_8041AF1C
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x118(21)
    lfs 0, 0x118(21)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_8041AF40
    stfs 1, 0x118(21)
    .4byte 0x48000028 # b .L_8041AF40
L_8041AF1C:
    .4byte 0x40800024 # bge .L_8041AF40
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x118(21)
    lfs 0, 0x118(21)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8041AF40
    stfs 1, 0x118(21)
L_8041AF40:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x10e(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820060 # beq .L_8041AFAC
    lfs 2, 0x158(21)
    .4byte 0xC0220A68 # lfs f1, lbl_80543A08@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_8041AF84
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x158(21)
    lfs 0, 0x158(21)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408200E4 # bne .L_8041B05C
    stfs 1, 0x158(21)
    .4byte 0x480000DC # b .L_8041B05C
L_8041AF84:
    .4byte 0x408000D8 # bge .L_8041B05C
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x158(21)
    lfs 0, 0x158(21)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x408200BC # bne .L_8041B05C
    stfs 1, 0x158(21)
    .4byte 0x480000B4 # b .L_8041B05C
L_8041AFAC:
    lfs 1, 0x158(21)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041AFC8
    fsubs 0, 1, 0
    stfs 0, 0x158(21)
    .4byte 0x48000098 # b .L_8041B05C
L_8041AFC8:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x158(21)
    .4byte 0x4800008C # b .L_8041B05C
L_8041AFD4:
    lfs 1, 0x118(21)
    .4byte 0xC0020A78 # lfs f0, lbl_80543A18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8041AFF4
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x118(21)
    .4byte 0x4800000C # b .L_8041AFFC
L_8041AFF4:
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    stfs 0, 0x118(21)
L_8041AFFC:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x10e(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820030 # beq .L_8041B038
    lfs 1, 0x158(21)
    .4byte 0xC0020A78 # lfs f0, lbl_80543A18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8041B02C
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x158(21)
    .4byte 0x48000034 # b .L_8041B05C
L_8041B02C:
    .4byte 0xC0020A6C # lfs f0, lbl_80543A0C@sda21(r0)
    stfs 0, 0x158(21)
    .4byte 0x48000028 # b .L_8041B05C
L_8041B038:
    lfs 1, 0x158(21)
    .4byte 0xC0020A64 # lfs f0, lbl_80543A04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041B054
    fsubs 0, 1, 0
    stfs 0, 0x158(21)
    .4byte 0x4800000C # b .L_8041B05C
L_8041B054:
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0x158(21)
L_8041B05C:
    lfs 29, 0x118(21)
    fcmpu cr0, 31, 29
    .4byte 0x40820018 # bne .L_8041B07C
    lfs 0, 0x158(21)
    fcmpu cr0, 30, 0
    .4byte 0x4082000C # bne .L_8041B07C
    clrlwi. 0, 22, 24
    .4byte 0x418205F8 # beq .L_8041B670
L_8041B07C:
    lwz 3, 0x4(21)
    lwz 5, 0x388(30)
    lwz 12, 0x0(3)
    lwz 6, 0x38c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x24c(21)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x104(1)
    .4byte 0xC8220A70 # lfd f1, lbl_80543A10@sda21(r0)
    stw 0, 0x100(1)
    lwz 12, 0x24(12)
    lfd 0, 0x100(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 29
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    addi 4, 30, 0x388
    lwz 5, 0x8(4)
    lwz 12, 0x0(3)
    lwz 6, 0xc(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x24d(21)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0xf4(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0xf0(1)
    lfs 0, 0x118(21)
    lfd 1, 0xf0(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 4, 0xec(1)
    mtctr 12
    bctrl
    .4byte 0xCBC20A70 # lfd f30, lbl_80543A10@sda21(r0)
    addi 23, 30, 0x338
    addi 24, 30, 0x360
    li 25, 0x0
    lis 22, 0x4330
L_8041B148:
    lwz 3, 0x4(21)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x24e(21)
    lwz 12, 0x0(3)
    stw 0, 0x104(1)
    lfs 0, 0x118(21)
    stw 22, 0x100(1)
    lwz 12, 0x24(12)
    lfd 1, 0x100(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x24f(21)
    lwz 12, 0x0(3)
    stw 0, 0xf4(1)
    lfs 0, 0x118(21)
    stw 22, 0xf0(1)
    lwz 12, 0x24(12)
    lfd 1, 0xf0(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 4, 0xec(1)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0x5
    addi 23, 23, 0x8
    .4byte 0x4180FF48 # blt .L_8041B148
    .4byte 0xCBC20A70 # lfd f30, lbl_80543A10@sda21(r0)
    addi 23, 30, 0x308
    addi 24, 30, 0x320
    li 26, 0x0
    lis 22, 0x4330
L_8041B218:
    lwz 3, 0x4(21)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    add 25, 21, 26
    lwz 12, 0x0(3)
    lbz 0, 0x258(25)
    stw 22, 0x100(1)
    lfs 0, 0x118(21)
    stw 0, 0x104(1)
    lwz 12, 0x24(12)
    lfd 1, 0x100(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x25b(25)
    lwz 12, 0x0(3)
    stw 0, 0xf4(1)
    lfs 0, 0x118(21)
    stw 22, 0xf0(1)
    lwz 12, 0x24(12)
    lfd 1, 0xf0(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 4, 0xec(1)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    addi 24, 24, 0x8
    cmpwi 26, 0x3
    addi 23, 23, 0x8
    .4byte 0x4180FF44 # blt .L_8041B218
    .4byte 0xCBC20A70 # lfd f30, lbl_80543A10@sda21(r0)
    addi 23, 30, 0x248
    addi 24, 30, 0x2a8
    li 25, 0x0
    lis 22, 0x4330
L_8041B2EC:
    lwz 3, 0x4(21)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x25e(21)
    lwz 12, 0x0(3)
    stw 0, 0x104(1)
    lfs 0, 0x118(21)
    stw 22, 0x100(1)
    lwz 12, 0x24(12)
    lfd 1, 0x100(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x25f(21)
    lwz 12, 0x0(3)
    stw 0, 0xf4(1)
    lfs 0, 0x118(21)
    stw 22, 0xf0(1)
    lwz 12, 0x24(12)
    lfd 1, 0xf0(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 4, 0xec(1)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0xc
    addi 23, 23, 0x8
    .4byte 0x4180FF48 # blt .L_8041B2EC
    .4byte 0xCBE20A70 # lfd f31, lbl_80543A10@sda21(r0)
    addi 23, 30, 0x148
    addi 24, 30, 0x188
    addi 25, 30, 0x1c8
    addi 26, 30, 0x208
    li 27, 0x0
    lis 22, 0x4330
L_8041B3C4:
    lwz 3, 0x4(21)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x250(21)
    lwz 12, 0x0(3)
    stw 0, 0x104(1)
    lfs 0, 0x118(21)
    stw 22, 0x100(1)
    lwz 12, 0x24(12)
    lfd 1, 0x100(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x251(21)
    lwz 12, 0x0(3)
    stw 0, 0xf4(1)
    lfs 0, 0x118(21)
    stw 22, 0xf0(1)
    lwz 12, 0x24(12)
    lfd 1, 0xf0(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 4, 0xec(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x252(21)
    lwz 12, 0x0(3)
    stw 0, 0xe4(1)
    lfs 0, 0x118(21)
    stw 22, 0xe0(1)
    lwz 12, 0x24(12)
    lfd 1, 0xe0(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xd8(1)
    lwz 4, 0xdc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x253(21)
    lwz 12, 0x0(3)
    stw 0, 0xd4(1)
    lfs 0, 0x118(21)
    stw 22, 0xd0(1)
    lwz 12, 0x24(12)
    lfd 1, 0xd0(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 4, 0xcc(1)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0x8
    addi 25, 25, 0x8
    addi 26, 26, 0x8
    addi 23, 23, 0x8
    .4byte 0x4180FE98 # blt .L_8041B3C4
    lwz 3, 0x4(21)
    lis 5, 0x6e69
    lis 4, 0x5068
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x26a(21)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x104(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0x100(1)
    lfs 0, 0x118(21)
    lfd 1, 0x100(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(21)
    lis 5, 0x6e69
    lis 4, 0x5068
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x26b(21)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0xf4(1)
    .4byte 0xC8420A70 # lfd f2, lbl_80543A10@sda21(r0)
    stw 0, 0xf0(1)
    lfs 0, 0x118(21)
    lfd 1, 0xf0(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 4, 0xec(1)
    mtctr 12
    bctrl
    .4byte 0xCBC20A70 # lfd f30, lbl_80543A10@sda21(r0)
    addi 23, 30, 0x398
    li 24, 0x0
    lis 22, 0x4330
L_8041B608:
    lwz 3, 0x4(21)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x26c
    lwz 12, 0x0(3)
    lbzx 0, 21, 0
    stw 22, 0x100(1)
    lfs 0, 0x118(21)
    stw 0, 0x104(1)
    lwz 12, 0x24(12)
    lfd 1, 0x100(1)
    fsubs 1, 1, 30
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x4
    .4byte 0x4180FF9C # blt .L_8041B608
L_8041B670:
    psq_l 31, 0x168(1), 0, 0
    lfd 31, 0x160(1)
    psq_l 30, 0x158(1), 0, 0
    lfd 30, 0x150(1)
    psq_l 29, 0x148(1), 0, 0
    lfd 29, 0x140(1)
    lmw 21, 0x114(1)
    lwz 0, 0x174(1)
    mtlr 0
    addi 1, 1, 0x170
    blr

fn_8041B69C:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stmw 20, 0xd0(1)
    mr 31, 3
    li 23, 0x0
    li 22, 0x0
    lbz 3, 0x28b(3)
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_8041B6DC
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x40820014 # bne .L_8041B6DC
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x4082000C # bne .L_8041B6DC
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x418209D4 # beq .L_8041C0AC
L_8041B6DC:
    lbz 0, 0x28e(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8041B6F4
    li 0, 0x1
    stb 0, 0x28e(31)
    .4byte 0x480009BC # b .L_8041C0AC
L_8041B6F4:
    lis 3, lbl_8048DE00@ha
    addi 25, 1, 0xb8
    addi 24, 3, lbl_8048DE00@l
    addi 26, 1, 0xa8
    lis 3, lbl_8050EC80@ha
    mr 29, 25
    mr 28, 26
    mr 27, 24
    addi 30, 3, lbl_8050EC80@l
    li 21, 0x0
L_8041B71C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    li 0, 0x1
    stw 4, 0x0(29)
    slw 0, 0, 21
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    stw 4, 0x0(28)
    and. 0, 3, 0
    .4byte 0x41820074 # beq .L_8041B7B4
    lwz 4, 0x10(30)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8041B78C
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_8041B7B0
L_8041B78C:
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041B7B0:
    addi 23, 23, 0x1
L_8041B7B4:
    addi 21, 21, 0x1
    addi 28, 28, 0x4
    cmpwi 21, 0x4
    addi 27, 27, 0x8
    addi 29, 29, 0x4
    .4byte 0x4180FF54 # blt .L_8041B71C
L_8041B7CC:
    mr 21, 26
    li 30, -0x1389
    li 29, 0x0
    li 27, 0x0
    .4byte 0x48000034 # b .L_8041B810
L_8041B7E0:
    lwz 0, 0x0(21)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8041B808
    mr 3, 27
    bl fn_80236100
    cmpw 30, 3
    .4byte 0x40800010 # bge .L_8041B808
    mr 3, 27
    bl fn_80236100
    mr 30, 3
L_8041B808:
    addi 21, 21, 0x4
    addi 27, 27, 0x1
L_8041B810:
    cmpw 27, 23
    .4byte 0x4180FFCC # blt .L_8041B7E0
    mr 27, 26
    mr 28, 25
    li 20, 0x0
    li 21, 0x1
    .4byte 0x48000038 # b .L_8041B860
L_8041B82C:
    lwz 0, 0x0(27)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8041B854
    mr 3, 20
    bl fn_80236100
    cmpw 30, 3
    .4byte 0x40820010 # bne .L_8041B854
    stw 22, 0x0(28)
    addi 29, 29, 0x1
    stw 21, 0x0(27)
L_8041B854:
    addi 27, 27, 0x4
    addi 28, 28, 0x4
    addi 20, 20, 0x1
L_8041B860:
    cmpw 20, 23
    .4byte 0x4180FFC8 # blt .L_8041B82C
    add 22, 22, 29
    cmpw 22, 23
    .4byte 0x4180FF5C # blt .L_8041B7CC
    lis 3, lbl_8048DE20@ha
    li 21, 0x0
    addi 27, 3, lbl_8048DE20@l
    .4byte 0x48000824 # b .L_8041C0A4
L_8041B884:
    lwz 0, 0x0(25)
    cmpwi 0, 0x2
    .4byte 0x41820430 # beq .L_8041BCBC
    .4byte 0x40800014 # bge .L_8041B8A4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8041B8B0
    .4byte 0x4080021C # bge .L_8041BAB8
    .4byte 0x480007F4 # b .L_8041C094
L_8041B8A4:
    cmpwi 0, 0x4
    .4byte 0x408007EC # bge .L_8041C094
    .4byte 0x480005FC # b .L_8041BEA8
L_8041B8B0:
    li 0, 0xff
    lwz 5, 0x0(27)
    stb 0, 0xa0(1)
    lwz 6, 0x4(27)
    stb 0, 0xa1(1)
    stb 0, 0xa2(1)
    stb 0, 0xa3(1)
    lwz 0, 0xa0(1)
    stw 0, 0xa4(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xa4
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 22, 0xff
    li 9, 0x12
    li 10, 0xb9
    li 5, 0x9d
    li 6, 0x10
    li 8, 0x54
    li 7, 0xd8
    li 4, 0x3a
    li 0, 0x16
    lwz 12, 0x0(3)
    stb 22, 0x80(1)
    lwz 12, 0x3c(12)
    stb 5, 0x81(1)
    lwz 5, 0x0(27)
    stb 6, 0x82(1)
    lwz 6, 0x4(27)
    stb 22, 0x83(1)
    lwz 11, 0x80(1)
    stb 10, 0x88(1)
    stb 8, 0x89(1)
    stb 9, 0x8a(1)
    stb 22, 0x8b(1)
    lwz 8, 0x88(1)
    stb 7, 0x90(1)
    stb 4, 0x91(1)
    stb 0, 0x92(1)
    stb 22, 0x93(1)
    lwz 4, 0x90(1)
    stb 10, 0x98(1)
    stb 9, 0x99(1)
    stb 9, 0x9a(1)
    stb 22, 0x9b(1)
    lwz 0, 0x98(1)
    stw 11, 0x84(1)
    stw 8, 0x8c(1)
    stw 4, 0x94(1)
    stw 0, 0x9c(1)
    mtctr 12
    bctrl
    lbz 4, 0x9c(1)
    lbz 0, 0x9d(1)
    stb 4, 0x150(3)
    lbz 4, 0x9e(1)
    stb 0, 0x151(3)
    lbz 0, 0x9f(1)
    stb 4, 0x152(3)
    lbz 4, 0x94(1)
    stb 0, 0x153(3)
    lbz 0, 0x95(1)
    stb 4, 0x154(3)
    lbz 4, 0x96(1)
    stb 0, 0x155(3)
    lbz 0, 0x97(1)
    stb 4, 0x156(3)
    lbz 4, 0x8c(1)
    stb 0, 0x157(3)
    lbz 0, 0x8d(1)
    stb 4, 0x158(3)
    lbz 4, 0x8e(1)
    stb 0, 0x159(3)
    lbz 0, 0x8f(1)
    stb 4, 0x15a(3)
    lbz 4, 0x84(1)
    stb 0, 0x15b(3)
    lbz 0, 0x85(1)
    stb 4, 0x15c(3)
    lbz 4, 0x86(1)
    stb 0, 0x15d(3)
    lbz 0, 0x87(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    .4byte 0xC0420A60 # lfs f2, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    .4byte 0xC0420A60 # lfs f2, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    .4byte 0x480005E0 # b .L_8041C094
L_8041BAB8:
    li 0, 0xff
    lwz 5, 0x0(27)
    stb 0, 0x78(1)
    lwz 6, 0x4(27)
    stb 0, 0x79(1)
    stb 0, 0x7a(1)
    stb 0, 0x7b(1)
    lwz 0, 0x78(1)
    stw 0, 0x7c(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x7c
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 11, 0xff
    li 9, 0xf2
    li 7, 0x48
    li 0, 0x9
    li 5, 0xfc
    li 6, 0x21
    li 8, 0xab
    li 4, 0x24
    lwz 12, 0x0(3)
    stb 5, 0x58(1)
    lwz 12, 0x3c(12)
    stb 11, 0x59(1)
    lwz 5, 0x0(27)
    stb 6, 0x5a(1)
    lwz 6, 0x4(27)
    stb 11, 0x5b(1)
    lwz 10, 0x58(1)
    stb 9, 0x60(1)
    stb 8, 0x61(1)
    stb 4, 0x62(1)
    stb 11, 0x63(1)
    lwz 8, 0x60(1)
    stb 9, 0x68(1)
    stb 7, 0x69(1)
    stb 0, 0x6a(1)
    stb 11, 0x6b(1)
    lwz 4, 0x68(1)
    stb 9, 0x70(1)
    stb 7, 0x71(1)
    stb 0, 0x72(1)
    stb 11, 0x73(1)
    lwz 0, 0x70(1)
    stw 10, 0x5c(1)
    stw 8, 0x64(1)
    stw 4, 0x6c(1)
    stw 0, 0x74(1)
    mtctr 12
    bctrl
    lbz 4, 0x74(1)
    lbz 0, 0x75(1)
    stb 4, 0x150(3)
    lbz 4, 0x76(1)
    stb 0, 0x151(3)
    lbz 0, 0x77(1)
    stb 4, 0x152(3)
    lbz 4, 0x6c(1)
    stb 0, 0x153(3)
    lbz 0, 0x6d(1)
    stb 4, 0x154(3)
    lbz 4, 0x6e(1)
    stb 0, 0x155(3)
    lbz 0, 0x6f(1)
    stb 4, 0x156(3)
    lbz 4, 0x64(1)
    stb 0, 0x157(3)
    lbz 0, 0x65(1)
    stb 4, 0x158(3)
    lbz 4, 0x66(1)
    stb 0, 0x159(3)
    lbz 0, 0x67(1)
    stb 4, 0x15a(3)
    lbz 4, 0x5c(1)
    stb 0, 0x15b(3)
    lbz 0, 0x5d(1)
    stb 4, 0x15c(3)
    lbz 4, 0x5e(1)
    stb 0, 0x15d(3)
    lbz 0, 0x5f(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420A6C # lfs f2, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420A6C # lfs f2, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    .4byte 0x480003DC # b .L_8041C094
L_8041BCBC:
    li 3, 0xff
    li 0, 0x77
    stb 3, 0x50(1)
    lwz 5, 0x0(27)
    stb 3, 0x51(1)
    lwz 6, 0x4(27)
    stb 0, 0x52(1)
    stb 3, 0x53(1)
    lwz 0, 0x50(1)
    stw 0, 0x54(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 0, 0xff
    stb 0, 0x30(1)
    lwz 12, 0x0(3)
    stb 0, 0x31(1)
    lwz 12, 0x3c(12)
    stb 0, 0x32(1)
    lwz 5, 0x0(27)
    stb 0, 0x33(1)
    lwz 6, 0x4(27)
    lwz 8, 0x30(1)
    stb 0, 0x38(1)
    stb 0, 0x39(1)
    stb 0, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 7, 0x38(1)
    stb 0, 0x40(1)
    stb 0, 0x41(1)
    stb 0, 0x42(1)
    stb 0, 0x43(1)
    lwz 4, 0x40(1)
    stb 0, 0x48(1)
    stb 0, 0x49(1)
    stb 0, 0x4a(1)
    stb 0, 0x4b(1)
    lwz 0, 0x48(1)
    stw 8, 0x34(1)
    stw 7, 0x3c(1)
    stw 4, 0x44(1)
    stw 0, 0x4c(1)
    mtctr 12
    bctrl
    lbz 4, 0x4c(1)
    lbz 0, 0x4d(1)
    stb 4, 0x150(3)
    lbz 4, 0x4e(1)
    stb 0, 0x151(3)
    lbz 0, 0x4f(1)
    stb 4, 0x152(3)
    lbz 4, 0x44(1)
    stb 0, 0x153(3)
    lbz 0, 0x45(1)
    stb 4, 0x154(3)
    lbz 4, 0x46(1)
    stb 0, 0x155(3)
    lbz 0, 0x47(1)
    stb 4, 0x156(3)
    lbz 4, 0x3c(1)
    stb 0, 0x157(3)
    lbz 0, 0x3d(1)
    stb 4, 0x158(3)
    lbz 4, 0x3e(1)
    stb 0, 0x159(3)
    lbz 0, 0x3f(1)
    stb 4, 0x15a(3)
    lbz 4, 0x34(1)
    stb 0, 0x15b(3)
    lbz 0, 0x35(1)
    stb 4, 0x15c(3)
    lbz 4, 0x36(1)
    stb 0, 0x15d(3)
    lbz 0, 0x37(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620A6C # lfs f3, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620A6C # lfs f3, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    .4byte 0x480001F0 # b .L_8041C094
L_8041BEA8:
    li 3, 0xff
    li 4, 0xd8
    li 0, 0xa1
    stb 4, 0x28(1)
    lwz 5, 0x0(27)
    stb 3, 0x29(1)
    lwz 6, 0x4(27)
    stb 0, 0x2a(1)
    stb 3, 0x2b(1)
    lwz 0, 0x28(1)
    stw 0, 0x2c(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2c
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 0, 0xff
    stb 0, 0x8(1)
    lwz 12, 0x0(3)
    stb 0, 0x9(1)
    lwz 12, 0x3c(12)
    stb 0, 0xa(1)
    lwz 5, 0x0(27)
    stb 0, 0xb(1)
    lwz 6, 0x4(27)
    lwz 8, 0x8(1)
    stb 0, 0x10(1)
    stb 0, 0x11(1)
    stb 0, 0x12(1)
    stb 0, 0x13(1)
    lwz 7, 0x10(1)
    stb 0, 0x18(1)
    stb 0, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 4, 0x18(1)
    stb 0, 0x20(1)
    stb 0, 0x21(1)
    stb 0, 0x22(1)
    stb 0, 0x23(1)
    lwz 0, 0x20(1)
    stw 8, 0xc(1)
    stw 7, 0x14(1)
    stw 4, 0x1c(1)
    stw 0, 0x24(1)
    mtctr 12
    bctrl
    lbz 4, 0x24(1)
    lbz 0, 0x25(1)
    stb 4, 0x150(3)
    lbz 4, 0x26(1)
    stb 0, 0x151(3)
    lbz 0, 0x27(1)
    stb 4, 0x152(3)
    lbz 4, 0x1c(1)
    stb 0, 0x153(3)
    lbz 0, 0x1d(1)
    stb 4, 0x154(3)
    lbz 4, 0x1e(1)
    stb 0, 0x155(3)
    lbz 0, 0x1f(1)
    stb 4, 0x156(3)
    lbz 4, 0x14(1)
    stb 0, 0x157(3)
    lbz 0, 0x15(1)
    stb 4, 0x158(3)
    lbz 4, 0x16(1)
    stb 0, 0x159(3)
    lbz 0, 0x17(1)
    stb 4, 0x15a(3)
    lbz 4, 0xc(1)
    stb 0, 0x15b(3)
    lbz 0, 0xd(1)
    stb 4, 0x15c(3)
    lbz 4, 0xe(1)
    stb 0, 0x15d(3)
    lbz 0, 0xf(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820A6C # lfs f4, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820A6C # lfs f4, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
L_8041C094:
    addi 25, 25, 0x4
    addi 27, 27, 0x8
    addi 24, 24, 0x8
    addi 21, 21, 0x1
L_8041C0A4:
    cmpw 21, 23
    .4byte 0x4180F7DC # blt .L_8041B884
L_8041C0AC:
    lmw 20, 0xd0(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_8041C0C0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, 0x1
    stmw 24, 0x20(1)
    mr 27, 4
    mr 26, 3
    lis 4, lbl_8048D320@ha
    slw 0, 0, 27
    clrlwi 0, 0, 24
    addi 31, 4, lbl_8048D320@l
    lbz 3, 0x28b(3)
    and. 0, 3, 0
    .4byte 0x41820574 # beq .L_8041C668
    lis 3, lbl_80529DEC@ha
    slwi 0, 27, 2
    addi 3, 3, lbl_80529DEC@l
    li 28, 0x0
    add 3, 3, 0
    lwz 0, 0xe8(3)
    cmpwi 0, 0x270f
    mr 29, 0
    .4byte 0x40810008 # ble .L_8041C120
    li 29, 0x270f
L_8041C120:
    cmpwi 29, 0x0
    .4byte 0x40800194 # bge .L_8041C2B8
    mulli 30, 27, 0x28
    addi 0, 31, 0x3b8
    li 24, 0x0
    add 25, 0, 30
    mr 28, 25
L_8041C13C:
    li 0, 0x0
    li 7, 0xff
    li 4, 0x55
    li 3, 0x41
    stb 7, 0x10(1)
    lwz 5, 0x0(28)
    stb 4, 0x11(1)
    lwz 6, 0x4(28)
    stb 3, 0x12(1)
    stb 7, 0x13(1)
    lwz 3, 0x10(1)
    stb 0, 0x18(1)
    stb 0, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 3, 0x14(1)
    stw 0, 0x1c(1)
    lwz 3, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x14
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 28, 28, 0x8
    cmpwi 24, 0x5
    .4byte 0x4180FF80 # blt .L_8041C13C
    cmpwi 29, -0x1388
    .4byte 0x40800008 # bge .L_8041C1CC
    li 29, -0x1388
L_8041C1CC:
    mulli 29, 29, -0x1
    lis 3, 0x5449
    addi 4, 31, 0xe38
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(26)
    mr 24, 0
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0x458
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0x3b8
    add 4, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    li 4, 0x1
    addi 0, 31, 0x458
    stb 4, 0xb0(3)
    add 4, 0, 30
    lwz 5, 0x20(4)
    lwz 3, 0x4(26)
    lwz 6, 0x24(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    li 28, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000C0 # b .L_8041C374
L_8041C2B8:
    mulli 25, 27, 0x28
    addi 0, 31, 0x3b8
    li 24, 0x0
    add 30, 0, 25
L_8041C2C8:
    lwz 0, 0x244(26)
    lwz 5, 0x0(30)
    stw 0, 0x8(1)
    lwz 6, 0x4(30)
    lwz 0, 0x248(26)
    stw 0, 0xc(1)
    lwz 3, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 30, 30, 0x8
    cmpwi 24, 0x5
    .4byte 0x4180FFB0 # blt .L_8041C2C8
    lwz 3, 0x4(26)
    addi 0, 31, 0x3b8
    add 4, 0, 25
    lwz 12, 0x0(3)
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    li 4, 0x0
    addi 0, 31, 0x458
    stb 4, 0xb0(3)
    add 4, 0, 25
    lwz 5, 0x20(4)
    lwz 3, 0x4(26)
    lwz 6, 0x24(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041C374:
    lis 4, 0x1062
    lis 3, lbl_804B139C@ha
    addi 0, 4, 0x4dd3
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 6
    srawi 0, 0, 6
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0x3e8
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 29, 5, 29
    bl fn_804030C4
    mr 24, 3
    lwz 3, 0x4(26)
    mulli 27, 27, 0x28
    addi 30, 31, 0x3b8
    lwz 12, 0x0(3)
    slwi 25, 28, 3
    add 30, 30, 27
    lwz 12, 0x3c(12)
    add 6, 30, 25
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 31, 31, 0x458
    add 31, 31, 27
    lwz 12, 0x0(3)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x51ec
    lis 3, lbl_804B139C@ha
    subi 0, 4, 0x7ae1
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 5
    srawi 0, 0, 5
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0x64
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 29, 5, 29
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(26)
    addi 0, 28, 0x1
    lwz 12, 0x0(3)
    slwi 25, 0, 3
    add 6, 30, 25
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B139C@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 2
    srawi 0, 0, 2
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0xa
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 29, 5, 29
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(26)
    addi 0, 28, 0x2
    lwz 12, 0x0(3)
    slwi 25, 0, 3
    add 6, 30, 25
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B139C@ha
    lis 5, 0x5449
    slwi 0, 29, 2
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(26)
    addi 0, 28, 0x3
    lwz 12, 0x0(3)
    slwi 25, 0, 3
    add 6, 30, 25
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_8041C668:
    lmw 24, 0x20(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8041C67C:
    stwu 1, -0x40(1)
    mflr 0
    lis 6, lbl_8048D320@ha
    lis 5, 0x7461
    stw 0, 0x44(1)
    lis 4, 0x4e
    stmw 18, 0x8(1)
    mr 18, 3
    addi 30, 6, lbl_8048D320@l
    addi 6, 5, 0x3133
    addi 5, 4, 0x6461
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6e69
    stb 0, 0xb0(3)
    lis 4, 0x5068
    addi 6, 5, 0x3032
    lwz 3, 0x4(18)
    addi 5, 4, 0x7031
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6969
    stb 0, 0xb0(3)
    lis 4, 0x5068
    addi 6, 5, 0x6233
    lwz 3, 0x4(18)
    addi 5, 4, 0x3170
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7461
    stb 0, 0xb0(3)
    lis 4, 0x4e
    addi 6, 5, 0x3136
    lwz 3, 0x4(18)
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7461
    stb 0, 0xb0(3)
    lis 4, 0x4e
    addi 6, 5, 0x3032
    lwz 3, 0x4(18)
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 20, 30, 0xae0
    lis 4, lbl_8050EC80@ha
    stb 0, 0xb0(3)
    mr 29, 20
    addi 28, 30, 0xb20
    addi 27, 30, 0xb40
    addi 26, 30, 0xb60
    addi 25, 30, 0xb80
    addi 24, 30, 0xbc0
    addi 23, 30, 0xbe0
    addi 22, 30, 0xc00
    addi 21, 30, 0x9d8
    addi 31, 4, lbl_8050EC80@l
    li 19, 0x0
L_8041C7A8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 19
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820200 # beq .L_8041C9C0
    lwz 3, 0x18(18)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x18(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(24)
    stb 0, 0xb0(3)
    lwz 6, 0x4(24)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, lbl_8050EC80@ha
    stb 0, 0xb0(3)
    addi 0, 4, lbl_8050EC80@l
    lwz 3, 0x10(31)
    mulli 3, 3, 0xc8
    add 3, 0, 3
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8041C8E4
    lwz 3, 0x4(18)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_8041C908
L_8041C8E4:
    lwz 3, 0x4(18)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041C908:
    lwz 3, 0x4(18)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x8(21)
    stb 0, 0xb0(3)
    lwz 6, 0xc(21)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x10(21)
    stb 0, 0xb0(3)
    lwz 6, 0x14(21)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x18(21)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(21)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000124 # b .L_8041CAE0
L_8041C9C0:
    lwz 3, 0x18(18)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x18(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(24)
    stb 0, 0xb0(3)
    lwz 6, 0x4(24)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(23)
    stb 0, 0xb0(3)
    lwz 6, 0x4(23)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041CAE0:
    addi 19, 19, 0x1
    addi 28, 28, 0x8
    cmpwi 19, 0x4
    addi 27, 27, 0x8
    addi 26, 26, 0x8
    addi 25, 25, 0x8
    addi 24, 24, 0x8
    addi 23, 23, 0x8
    addi 22, 22, 0x8
    addi 21, 21, 0x20
    addi 29, 29, 0x8
    .4byte 0x4180FC9C # blt .L_8041C7A8
    lis 3, lbl_804B13C4@ha
    addi 22, 30, 0xb00
    li 23, 0x0
    lis 21, 0x5449
    addi 19, 3, lbl_804B13C4@l
L_8041CB24:
    lwz 4, 0x0(19)
    addi 3, 21, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x18(18)
    mr 24, 0
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(18)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x4
    addi 20, 20, 0x8
    .4byte 0x4180FF74 # blt .L_8041CB24
    li 20, 0x0
    li 19, 0x1
L_8041CBBC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 19, 20
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820014 # beq .L_8041CBE4
    mr 3, 18
    mr 4, 20
    li 5, 0x1
    bl fn_80419C38
L_8041CBE4:
    addi 20, 20, 0x1
    cmpwi 20, 0x4
    .4byte 0x4180FFD0 # blt .L_8041CBBC
    lmw 18, 0x8(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8041CC04:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 26, 0x28(1)
    mr 28, 3
    lis 3, lbl_8048D320@ha
    addi 31, 3, lbl_8048D320@l
    lbz 0, 0x28b(28)
    clrlwi. 0, 0, 31
    .4byte 0x41820550 # beq .L_8041D178
    lis 3, lbl_80529DEC@ha
    li 29, 0x0
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0xe8(3)
    cmpwi 0, 0x270f
    mr 30, 0
    .4byte 0x40810008 # ble .L_8041CC4C
    li 30, 0x270f
L_8041CC4C:
    cmpwi 30, 0x0
    .4byte 0x4080017C # bge .L_8041CDCC
    addi 27, 31, 0x338
    li 26, 0x0
    mr 29, 27
L_8041CC60:
    li 0, 0x0
    li 7, 0xff
    li 4, 0x55
    li 3, 0x41
    stb 7, 0x10(1)
    lwz 5, 0x0(29)
    stb 4, 0x11(1)
    lwz 6, 0x4(29)
    stb 3, 0x12(1)
    stb 7, 0x13(1)
    lwz 3, 0x10(1)
    stb 0, 0x18(1)
    stb 0, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 3, 0x14(1)
    stw 0, 0x1c(1)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x14
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    addi 29, 29, 0x8
    cmpwi 26, 0x5
    .4byte 0x4180FF80 # blt .L_8041CC60
    cmpwi 30, -0x1388
    .4byte 0x40800008 # bge .L_8041CCF0
    li 30, -0x1388
L_8041CCF0:
    mulli 30, 30, -0x1
    lis 3, 0x5449
    addi 4, 31, 0xe38
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(28)
    mr 26, 0
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lwz 5, 0x360(31)
    lwz 12, 0x0(3)
    lwz 6, 0x364(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    addi 4, 31, 0x338
    lwz 5, 0x20(4)
    lwz 12, 0x0(3)
    lwz 6, 0x24(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    addi 4, 31, 0x360
    stb 0, 0xb0(3)
    lwz 5, 0x20(4)
    lwz 3, 0x4(28)
    lwz 6, 0x24(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    li 29, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000B0 # b .L_8041CE78
L_8041CDCC:
    li 26, 0x0
    addi 27, 31, 0x338
L_8041CDD4:
    lwz 0, 0x244(28)
    lwz 5, 0x0(27)
    stw 0, 0x8(1)
    lwz 6, 0x4(27)
    lwz 0, 0x248(28)
    stw 0, 0xc(1)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    addi 27, 27, 0x8
    cmpwi 26, 0x5
    .4byte 0x4180FFB0 # blt .L_8041CDD4
    lwz 3, 0x4(28)
    addi 4, 31, 0x338
    lwz 5, 0x20(4)
    lwz 12, 0x0(3)
    lwz 6, 0x24(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 4, 31, 0x360
    stb 0, 0xb0(3)
    lwz 5, 0x20(4)
    lwz 3, 0x4(28)
    lwz 6, 0x24(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041CE78:
    lis 4, 0x1062
    lis 3, lbl_804B139C@ha
    addi 0, 4, 0x4dd3
    lis 5, 0x5449
    mulhw 0, 0, 30
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 6
    srawi 0, 0, 6
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0x3e8
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 30, 5, 30
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x4(28)
    slwi 27, 29, 3
    addi 0, 31, 0x338
    lwz 12, 0x0(3)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    addi 0, 31, 0x360
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x51ec
    lis 3, lbl_804B139C@ha
    subi 0, 4, 0x7ae1
    lis 5, 0x5449
    mulhw 0, 0, 30
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 5
    srawi 0, 0, 5
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0x64
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 30, 5, 30
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x4(28)
    addi 4, 29, 0x1
    addi 0, 31, 0x338
    lwz 12, 0x0(3)
    slwi 27, 4, 3
    add 6, 0, 27
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    addi 0, 31, 0x360
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B139C@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 30
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 2
    srawi 0, 0, 2
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0xa
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 30, 5, 30
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x4(28)
    addi 4, 29, 0x2
    addi 0, 31, 0x338
    lwz 12, 0x0(3)
    slwi 27, 4, 3
    add 6, 0, 27
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    addi 0, 31, 0x360
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B139C@ha
    lis 5, 0x5449
    slwi 0, 30, 2
    addi 4, 3, lbl_804B139C@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 30, 3
    lwz 3, 0x4(28)
    addi 4, 29, 0x3
    addi 0, 31, 0x338
    lwz 12, 0x0(3)
    slwi 27, 4, 3
    add 6, 0, 27
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    addi 0, 31, 0x360
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_8041D178:
    lmw 26, 0x28(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

