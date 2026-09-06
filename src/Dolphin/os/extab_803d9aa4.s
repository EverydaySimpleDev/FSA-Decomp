# fn_803D9AA4 - TNGL: main update()-related (0x7BC, largest piece)
# Player-validity heavy (fn_8023E724 x4, fn_8023DE58 x4).
.section extab, "a"
.balign 4
.global etb_8000FB4C
etb_8000FB4C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000FB4C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F9E4
eti_8001F9E4:
    .4byte fn_803D9AA4
    .4byte 0x000007BC
    .4byte etb_8000FB4C
.size eti_8001F9E4, 12

.text
.balign 4
.global fn_803D9AA4

fn_803D9AA4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 31, 3
    lis 3, lbl_804B03E8@ha
    addi 5, 3, lbl_804B03E8@l
    lwz 0, 0x230(31)
    cmplwi 0, 0xa
    .4byte 0x41810748 # bgt .L_803DA210
    lis 3, jumptable_804B04CC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B04CC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x240(31)
    cmpwi 3, 0x3c
    .4byte 0x40800010 # bge .L_803D9AFC
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000718 # b .L_803DA210
L_803D9AFC:
    li 29, 0x0
    li 0, -0x1
    stw 29, 0x240(31)
    mr 27, 31
    stw 0, 0x244(31)
    stw 29, 0x248(31)
L_803D9B14:
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x408000A8 # bge .L_803D9BC8
    li 28, 0x3ae
    li 3, 0x0
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x40820008 # bne .L_803D9B3C
    li 28, 0x3af
L_803D9B3C:
    mr 3, 29
    bl fn_8023E724
    mr 30, 3
    mr 3, 29
    bl fn_8023DE58
    .4byte 0xC02205F0 # lfs f1, lbl_80543590@sda21(r0)
    mr 4, 30
    mr 5, 28
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 28, 0x3ac
    li 3, 0x0
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x40820008 # bne .L_803D9B8C
    li 28, 0x3ad
L_803D9B8C:
    mr 3, 29
    bl fn_8023E724
    mr 30, 3
    mr 3, 29
    bl fn_8023DE58
    .4byte 0xC02205F0 # lfs f1, lbl_80543590@sda21(r0)
    mr 4, 30
    mr 5, 28
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x290(27)
L_803D9BC8:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF40 # blt .L_803D9B14
    li 3, 0x3c
    li 0, 0x1
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000628 # b .L_803DA210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    li 28, 0x0
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    .4byte 0x4800003C # b .L_803D9C3C
L_803D9C04:
    li 28, 0x0
    mr 27, 31
L_803D9C0C:
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x4(3)
    addi 3, 27, 0x264
    .4byte 0xC04205F4 # lfs f2, lbl_80543594@sda21(r0)
    .4byte 0xC06205F0 # lfs f3, lbl_80543590@sda21(r0)
    bl fn_801F71A4
    addi 28, 28, 0x1
    addi 27, 27, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FFD8 # blt .L_803D9C0C
    addi 28, 28, 0x1
L_803D9C3C:
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_803D9C04
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408205C4 # bne .L_803DA210
    li 28, 0x0
    mr 27, 31
L_803D9C58:
    mr 3, 28
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800024 # blt .L_803D9C88
    mr 3, 28
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x260(27)
    lfs 0, 0x4(3)
    stfs 0, 0x264(27)
    lfs 0, 0x8(3)
    stfs 0, 0x268(27)
L_803D9C88:
    addi 28, 28, 0x1
    addi 27, 27, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_803D9C58
    lfs 1, 0x60(31)
    addi 3, 1, 0x14
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x244(31)
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x41800504 # blt .L_803DA210
    lwz 5, 0x4(31)
    addi 6, 1, 0x8
    psq_l 1, 0x24(1), 0, 0
    li 4, 0x406
    lfs 0, 0x2c(1)
    li 7, 0x28
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418204D8 # beq .L_803DA210
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480004CC # b .L_803DA210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    lwz 3, 0x244(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418204A8 # beq .L_803DA210
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40820018 # bne .L_803D9D90
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x6c
    li 5, 0x0
    bl fn_801F0E34
L_803D9D90:
    lwz 3, 0x244(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    li 3, 0x15e
    li 0, 0x5a
    stw 3, 0x238(31)
    li 27, 0x0
    stw 0, 0x23c(31)
L_803D9DB0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_803D9E20
    mr 3, 27
    bl fn_80237810
    subi 30, 3, 0x4
    mr 3, 27
    bl fn_80237774
    cmpw 3, 30
    .4byte 0x4080002C # bge .L_803D9E20
    mr 3, 27
    bl fn_80237810
    mr 30, 3
    mr 3, 27
    bl fn_80237774
    subf 4, 3, 30
    mr 3, 27
    subi 4, 4, 0x4
    li 5, 0x1
    bl fn_80236554
L_803D9E20:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF88 # blt .L_803D9DB0
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480003DC # b .L_803DA210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1e
    .4byte 0x40820028 # bne .L_803D9E78
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40810018 # ble .L_803D9E78
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x6c
    li 5, 0x0
    bl fn_801F0E34
L_803D9E78:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820094 # bne .L_803D9F14
    lwz 5, 0x290(31)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_803D9EAC
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x290(31)
L_803D9EAC:
    lwz 5, 0x294(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_803D9ECC
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x294(31)
L_803D9ECC:
    lwz 5, 0x298(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_803D9EEC
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x298(31)
L_803D9EEC:
    lwz 5, 0x29c(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_803D9F0C
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x29c(31)
L_803D9F0C:
    li 0, 0x1
    stw 0, 0x248(31)
L_803D9F14:
    lwz 0, 0x238(31)
    cmpwi 0, 0x15c
    .4byte 0x4082000C # bne .L_803D9F28
    li 0, 0x1
    stb 0, 0x251(31)
L_803D9F28:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408202E0 # bne .L_803DA210
    li 0, 0x46
    li 3, 0x1
    stw 0, 0x238(31)
    li 0, 0x4
    .4byte 0x986D8EE0 # stb r3, lbl_8053AAA0@sda21(r0)
    .4byte 0x986D8FD8 # stb r3, lbl_8053AB98@sda21(r0)
    .4byte 0x986D9028 # stb r3, lbl_8053ABE8@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x480002BC # b .L_803DA210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408202A0 # bne .L_803DA210
    lbz 6, 0x250(31)
    lis 3, lbl_80529DEC@ha
    .4byte 0x808D9308 # lwz r4, lbl_8053AEC8@sda21(r0)
    li 0, 0xff
    addi 5, 3, lbl_80529DEC@l
    stb 6, 0x59(4)
    stb 0, 0x250(31)
    lbz 3, 0x24f(5)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D9FA8
    subi 0, 3, 0x1
    stb 0, 0x24f(5)
    .4byte 0x4800000C # b .L_803D9FB0
L_803D9FA8:
    li 0, 0x0
    stb 0, 0x24f(5)
L_803D9FB0:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x33a
    lbz 6, 0x24f(5)
    li 5, 0x0
    bl fn_8043D67C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000244 # b .L_803DA210
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_803D9FF0
    li 0, 0x1
    stb 0, 0x251(31)
L_803D9FF0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_803DA044
    lwz 4, 0x240(31)
    .4byte 0x386D8650 # li r3, lbl_8053A210@sda21
    li 0, 0x1
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x24c(31)
    lwz 3, 0x240(31)
    addi 3, 3, 0x1
    stw 3, 0x240(31)
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_803DA03C
    li 0, 0x2
    stw 0, 0x234(31)
    .4byte 0x4800000C # b .L_803DA044
L_803DA03C:
    li 0, 0x4
    stw 0, 0x234(31)
L_803DA044:
    lwz 0, 0x244(31)
    cmpwi 0, 0xa
    .4byte 0x418001C4 # blt .L_803DA210
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x480001B8 # b .L_803DA210
    li 3, 0x0
    li 0, 0x7
    stw 3, 0x234(31)
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082018C # bne .L_803DA210
    lwz 4, 0x240(31)
    addi 3, 5, 0x0
    li 0, 0x2
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x24c(31)
    lwz 3, 0x240(31)
    addi 3, 3, 0x1
    stw 3, 0x240(31)
    stw 0, 0x234(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x40810158 # ble .L_803DA210
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000144 # b .L_803DA210
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_803DA124
    lwz 4, 0x240(31)
    addi 3, 5, 0xc
    li 0, 0x2
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x24c(31)
    lwz 3, 0x240(31)
    addi 3, 3, 0x1
    stw 3, 0x240(31)
    stw 0, 0x234(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_803DA124
    li 0, 0x0
    stw 0, 0x240(31)
L_803DA124:
    lwz 0, 0x244(31)
    cmpwi 0, 0x12c
    .4byte 0x418000E4 # blt .L_803DA210
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x480000D0 # b .L_803DA210
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_803DA198
    lwz 4, 0x240(31)
    addi 3, 5, 0x18
    li 0, 0x2
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x24c(31)
    lwz 3, 0x240(31)
    addi 3, 3, 0x1
    stw 3, 0x240(31)
    stw 0, 0x234(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_803DA198
    li 0, 0x7
    stw 0, 0x240(31)
L_803DA198:
    lwz 0, 0x244(31)
    cmpwi 0, 0x15e
    .4byte 0x41800070 # blt .L_803DA210
    li 3, 0x0
    li 0, 0xa
    stw 3, 0x240(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000058 # b .L_803DA210
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_803DA210
    lwz 0, 0x240(31)
    addi 4, 5, 0x38
    addi 3, 5, 0x5c
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x24c(31)
    lwz 0, 0x240(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x9
    .4byte 0x4081000C # ble .L_803DA210
    li 0, 0x0
    stb 0, 0x11c(31)
L_803DA210:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803DA224
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_803DA224:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803DA238
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_803DA238:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803DA24C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_803DA24C:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

