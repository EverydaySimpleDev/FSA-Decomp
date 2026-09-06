# 901KB-gap non-actor manager block: 4 function(s), 4,576 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8001157C
etb_8001157C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8001157C, 8

.global etb_80011584
etb_80011584:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011584, 8

.global etb_8001158C
etb_8001158C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8001158C, 8

.section extabindex, "a"
.balign 4
.global eti_800214FC
eti_800214FC:
    .4byte fn_80453B14
    .4byte 0x00000EEC
    .4byte etb_8001157C
.size eti_800214FC, 12

.global eti_80021508
eti_80021508:
    .4byte fn_80454A00
    .4byte 0x0000006C
    .4byte etb_80011584
.size eti_80021508, 12

.global eti_80021514
eti_80021514:
    .4byte fn_80454A6C
    .4byte 0x0000026C
    .4byte etb_8001158C
.size eti_80021514, 12

.text
.balign 4
.global fn_80453AF8
.global fn_80453B14
.global fn_80454A00
.global fn_80454A6C

fn_80453AF8:
    .4byte 0x806D9388 # lwz r3, lbl_8053AF48@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80453B0C
    lwz 3, 0x58(3)
    blr
L_80453B0C:
    li 3, 0x9
    blr

fn_80453B14:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    stw 29, 0x94(1)
    mr 31, 3
    li 0, 0x9
    stw 0, 0x58(3)
    lha 0, 0x1e(3)
    cmplwi 0, 0xd
    .4byte 0x41810E90 # bgt .L_804549D8
    lis 3, jumptable_804B1DB4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B1DB4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x8(31)
    lis 4, lbl_8050DB0C@ha
    addi 29, 4, lbl_8050DB0C@l
    li 5, 0x0
    lbz 6, 0x28(3)
    lha 4, 0x8c(29)
    bl fn_80402628
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 3, 3, lbl_8050DB0C@l
    stw 0, 0x88(1)
    lha 0, 0x90(3)
    li 5, 0x0
    .4byte 0xC8420EB8 # lfd f2, lbl_80543E58@sda21(r0)
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x8c(1)
    lha 4, 0x8c(29)
    lfd 0, 0x88(1)
    .4byte 0xC0220EA0 # lfs f1, lbl_80543E40@sda21(r0)
    fsubs 2, 0, 2
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x41820E18 # beq .L_804549D8
    lwz 3, 0xc(31)
    li 4, 0x0
    li 0, 0x3
    sth 4, 0x22(3)
    sth 0, 0x1e(31)
    .4byte 0x48000E00 # b .L_804549D8
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 4, 3, lbl_8050DB0C@l
    stw 0, 0x88(1)
    lha 0, 0x90(4)
    li 5, 0x2
    .4byte 0xC8220EB8 # lfd f1, lbl_80543E58@sda21(r0)
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x8c(1)
    lha 4, 0x8e(4)
    lfd 0, 0x88(1)
    .4byte 0xC0420EA4 # lfs f2, lbl_80543E44@sda21(r0)
    fsubs 1, 0, 1
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x41820DBC # beq .L_804549D8
    li 0, 0x5
    sth 0, 0x1e(31)
    .4byte 0x48000DB0 # b .L_804549D8
    lha 3, 0x20(31)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80453C54
    addi 0, 3, 0x1
    sth 0, 0x20(31)
    lha 0, 0x20(31)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_80453C54
    li 0, 0x0
    sth 0, 0x20(31)
L_80453C54:
    lha 0, 0x1c(31)
    cmpwi 0, 0x0
    .4byte 0x408101BC # ble .L_80453E18
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418201A4 # beq .L_80453E18
    lha 4, 0x1c(31)
    lis 3, lbl_80491470@ha
    addi 30, 3, lbl_80491470@l
    li 0, 0x1
    subi 3, 4, 0x1
    li 29, 0x0
    sth 3, 0x1c(31)
    sth 0, 0x20(31)
L_80453C98:
    lha 0, 0x1c(31)
    cmpw 29, 0
    .4byte 0x408200B0 # bne .L_80453D50
    li 4, 0xff
    li 3, 0xed
    li 0, 0xa0
    stb 4, 0x80(1)
    lwz 5, 0x0(30)
    stb 3, 0x81(1)
    lwz 6, 0x4(30)
    stb 0, 0x82(1)
    stb 4, 0x83(1)
    lwz 0, 0x80(1)
    stw 0, 0x84(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x84
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 4, 0x27
    li 3, 0x10
    stb 4, 0x78(1)
    lwz 5, 0x0(30)
    stb 3, 0x79(1)
    lwz 6, 0x4(30)
    stb 0, 0x7a(1)
    stb 0, 0x7b(1)
    lwz 0, 0x78(1)
    stw 0, 0x7c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x7c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_80453DF4
L_80453D50:
    li 5, 0xa7
    li 4, 0x4c
    li 3, 0x2a
    li 0, 0xff
    stb 5, 0x70(1)
    lwz 5, 0x0(30)
    stb 4, 0x71(1)
    lwz 6, 0x4(30)
    stb 3, 0x72(1)
    stb 0, 0x73(1)
    lwz 0, 0x70(1)
    stw 0, 0x74(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(30)
    stb 0, 0x68(1)
    lwz 6, 0x4(30)
    stb 0, 0x69(1)
    stb 0, 0x6a(1)
    stb 0, 0x6b(1)
    lwz 0, 0x68(1)
    stw 0, 0x6c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x6c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
L_80453DF4:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x3
    .4byte 0x4180FE98 # blt .L_80453C98
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480003D4 # b .L_804541E8
L_80453E18:
    lha 0, 0x1c(31)
    cmpwi 0, 0x2
    .4byte 0x408001BC # bge .L_80453FDC
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418201A4 # beq .L_80453FDC
    lha 4, 0x1c(31)
    lis 3, lbl_80491470@ha
    addi 30, 3, lbl_80491470@l
    li 0, 0x1
    addi 3, 4, 0x1
    li 29, 0x0
    sth 3, 0x1c(31)
    sth 0, 0x20(31)
L_80453E5C:
    lha 0, 0x1c(31)
    cmpw 29, 0
    .4byte 0x408200B0 # bne .L_80453F14
    li 4, 0xff
    li 3, 0xed
    li 0, 0xa0
    stb 4, 0x60(1)
    lwz 5, 0x0(30)
    stb 3, 0x61(1)
    lwz 6, 0x4(30)
    stb 0, 0x62(1)
    stb 4, 0x63(1)
    lwz 0, 0x60(1)
    stw 0, 0x64(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x64
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 4, 0x27
    li 3, 0x10
    stb 4, 0x58(1)
    lwz 5, 0x0(30)
    stb 3, 0x59(1)
    lwz 6, 0x4(30)
    stb 0, 0x5a(1)
    stb 0, 0x5b(1)
    lwz 0, 0x58(1)
    stw 0, 0x5c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x5c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_80453FB8
L_80453F14:
    li 5, 0xa7
    li 4, 0x4c
    li 3, 0x2a
    li 0, 0xff
    stb 5, 0x50(1)
    lwz 5, 0x0(30)
    stb 4, 0x51(1)
    lwz 6, 0x4(30)
    stb 3, 0x52(1)
    stb 0, 0x53(1)
    lwz 0, 0x50(1)
    stw 0, 0x54(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(30)
    stb 0, 0x48(1)
    lwz 6, 0x4(30)
    stb 0, 0x49(1)
    stb 0, 0x4a(1)
    stb 0, 0x4b(1)
    lwz 0, 0x48(1)
    stw 0, 0x4c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x4c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
L_80453FB8:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x3
    .4byte 0x4180FE98 # blt .L_80453E5C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000210 # b .L_804541E8
L_80453FDC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80454030
    lha 0, 0x1c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8045400C
    li 0, 0xa
    sth 0, 0x1e(31)
    .4byte 0x4800000C # b .L_80454014
L_8045400C:
    li 0, 0xa
    sth 0, 0x1e(31)
L_80454014:
    li 0, 0x1
    li 4, 0xb
    sth 0, 0x20(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480001BC # b .L_804541E8
L_80454030:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418201A4 # beq .L_804541E8
    li 0, 0x0
    lis 3, lbl_80491470@ha
    sth 0, 0x1c(31)
    addi 30, 3, lbl_80491470@l
    li 29, 0x0
L_8045405C:
    lha 0, 0x1c(31)
    cmpw 29, 0
    .4byte 0x408200B0 # bne .L_80454114
    li 4, 0xff
    li 3, 0xed
    li 0, 0xa0
    stb 4, 0x40(1)
    lwz 5, 0x0(30)
    stb 3, 0x41(1)
    lwz 6, 0x4(30)
    stb 0, 0x42(1)
    stb 4, 0x43(1)
    lwz 0, 0x40(1)
    stw 0, 0x44(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 4, 0x27
    li 3, 0x10
    stb 4, 0x38(1)
    lwz 5, 0x0(30)
    stb 3, 0x39(1)
    lwz 6, 0x4(30)
    stb 0, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 0, 0x38(1)
    stw 0, 0x3c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x3c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_804541B8
L_80454114:
    li 5, 0xa7
    li 4, 0x4c
    li 3, 0x2a
    li 0, 0xff
    stb 5, 0x30(1)
    lwz 5, 0x0(30)
    stb 4, 0x31(1)
    lwz 6, 0x4(30)
    stb 3, 0x32(1)
    stb 0, 0x33(1)
    lwz 0, 0x30(1)
    stw 0, 0x34(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(30)
    stb 0, 0x28(1)
    lwz 6, 0x4(30)
    stb 0, 0x29(1)
    stb 0, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stw 0, 0x2c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
L_804541B8:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x3
    .4byte 0x4180FE98 # blt .L_8045405C
    li 3, 0xa
    li 0, 0x1
    sth 3, 0x1e(31)
    li 4, 0xb
    li 5, -0x1
    sth 0, 0x20(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_804541E8:
    lha 3, 0x20(31)
    cmpwi 3, 0x5
    subfic 0, 3, 0xa
    .4byte 0x40800008 # bge .L_804541FC
    mr 0, 3
L_804541FC:
    mullw 7, 0, 0
    lis 6, 0x4330
    lwz 3, 0x4(31)
    lis 5, 0x6e63
    lha 0, 0x1c(31)
    lis 4, 0x50
    xoris 7, 7, 0x8000
    stw 6, 0x88(1)
    lwz 12, 0x0(3)
    slwi 29, 0, 2
    stw 7, 0x8c(1)
    addi 6, 5, 0x3031
    .4byte 0xC8220EB8 # lfd f1, lbl_80543E58@sda21(r0)
    addi 5, 4, 0x6b65
    lfd 0, 0x88(1)
    .4byte 0xC0420EA8 # lfs f2, lbl_80543E48@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC0020EAC # lfs f0, lbl_80543E4C@sda21(r0)
    lwz 12, 0x3c(12)
    fmuls 1, 2, 1
    fdivs 31, 1, 0
    mtctr 12
    bctrl
    add 4, 31, 29
    lwz 12, 0x0(3)
    lfs 0, 0x30(4)
    lwz 12, 0x10(12)
    fadds 2, 0, 31
    lfs 1, 0x24(4)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x6e63
    lha 0, 0x1c(31)
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    slwi 29, 0, 2
    addi 5, 4, 0x6b65
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    add 4, 31, 29
    lwz 12, 0x0(3)
    lfs 0, 0x48(4)
    lwz 12, 0x10(12)
    fadds 2, 0, 31
    lfs 1, 0x3c(4)
    mtctr 12
    bctrl
    li 30, 0x0
    mr 29, 31
L_804542CC:
    lha 0, 0x1c(31)
    cmpw 30, 0
    .4byte 0x40820018 # bne .L_804542EC
    fmr 2, 31
    lwz 3, 0x10(29)
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000014 # b .L_804542FC
L_804542EC:
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    lwz 3, 0x10(29)
    fmr 2, 1
    bl fn_80402E08
L_804542FC:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180FFC4 # blt .L_804542CC
    .4byte 0x480006CC # b .L_804549D8
    lha 3, 0x20(31)
    addi 0, 3, 0x1
    sth 0, 0x20(31)
    lha 0, 0x20(31)
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_8045432C
    .4byte 0x48000018 # b .L_80454340
L_8045432C:
    cmpwi 0, 0xa
    .4byte 0x4080000C # bge .L_8045433C
    subfic 0, 0, 0xa
    .4byte 0x48000008 # b .L_80454340
L_8045433C:
    li 0, 0x0
L_80454340:
    mullw 7, 0, 0
    lis 6, 0x4330
    lwz 3, 0x4(31)
    lis 5, 0x6e63
    lha 0, 0x1c(31)
    lis 4, 0x50
    xoris 7, 7, 0x8000
    stw 6, 0x88(1)
    lwz 12, 0x0(3)
    slwi 29, 0, 2
    stw 7, 0x8c(1)
    addi 6, 5, 0x3031
    .4byte 0xC8220EB8 # lfd f1, lbl_80543E58@sda21(r0)
    addi 5, 4, 0x6b65
    lfd 0, 0x88(1)
    .4byte 0xC0420EA8 # lfs f2, lbl_80543E48@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC0020EAC # lfs f0, lbl_80543E4C@sda21(r0)
    lwz 12, 0x3c(12)
    fmuls 1, 2, 1
    fdivs 31, 1, 0
    mtctr 12
    bctrl
    add 4, 31, 29
    lwz 12, 0x0(3)
    lfs 0, 0x30(4)
    lwz 12, 0x10(12)
    fadds 2, 0, 31
    lfs 1, 0x24(4)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x6e63
    lha 0, 0x1c(31)
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    slwi 29, 0, 2
    addi 5, 4, 0x6b65
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    add 4, 31, 29
    lwz 12, 0x0(3)
    lfs 0, 0x48(4)
    lwz 12, 0x10(12)
    fadds 2, 0, 31
    lfs 1, 0x3c(4)
    mtctr 12
    bctrl
    li 30, 0x0
    mr 29, 31
L_80454410:
    lha 0, 0x1c(31)
    cmpw 30, 0
    .4byte 0x40820018 # bne .L_80454430
    fmr 2, 31
    lwz 3, 0x10(29)
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000014 # b .L_80454440
L_80454430:
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    lwz 3, 0x10(29)
    fmr 2, 1
    bl fn_80402E08
L_80454440:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180FFC4 # blt .L_80454410
    lha 0, 0x20(31)
    cmpwi 0, 0xf
    .4byte 0x41800580 # blt .L_804549D8
    lha 0, 0x1c(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80454480
    li 3, 0xb
    li 0, 0x0
    sth 3, 0x1e(31)
    lwz 3, 0x8(31)
    sth 0, 0x26(3)
    .4byte 0x4800000C # b .L_80454488
L_80454480:
    li 0, 0xd
    sth 0, 0x1e(31)
L_80454488:
    li 0, 0x0
    sth 0, 0x20(31)
    lwz 3, 0xc(31)
    sth 0, 0x22(3)
    .4byte 0x48000540 # b .L_804549D8
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 4, 3, lbl_8050DB0C@l
    stw 0, 0x88(1)
    lha 0, 0x90(4)
    li 5, 0x2
    .4byte 0xC8420EB8 # lfd f2, lbl_80543E58@sda21(r0)
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x8c(1)
    lha 4, 0x92(4)
    lfd 0, 0x88(1)
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    fsubs 2, 0, 2
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x418204FC # beq .L_804549D8
    lwz 3, 0xc(31)
    li 4, 0x0
    li 0, 0xc
    sth 4, 0x22(3)
    sth 0, 0x1e(31)
    .4byte 0x480004E4 # b .L_804549D8
    lwz 3, 0x8(31)
    lis 4, lbl_8050DB0C@ha
    addi 29, 4, lbl_8050DB0C@l
    li 6, 0x0
    lbz 5, 0x28(3)
    lha 4, 0x94(29)
    bl fn_80402628
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 3, 3, lbl_8050DB0C@l
    stw 0, 0x88(1)
    lha 0, 0x90(3)
    li 5, 0x0
    .4byte 0xC8220EB8 # lfd f1, lbl_80543E58@sda21(r0)
    xoris 0, 0, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x8c(1)
    lha 4, 0x94(29)
    lfd 0, 0x88(1)
    .4byte 0xC0420EA0 # lfs f2, lbl_80543E40@sda21(r0)
    fsubs 1, 0, 1
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x41820484 # beq .L_804549D8
    li 0, 0x2
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    sth 0, 0x1e(31)
    .4byte 0xC0420EA0 # lfs f2, lbl_80543E40@sda21(r0)
    lwz 3, 0xc(31)
    bl fn_80402E08
    lwz 3, 0xc(31)
    li 5, 0x0
    li 0, 0x7
    li 4, 0x2
    sth 5, 0x22(3)
    li 5, -0x1
    stw 0, 0x58(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    .4byte 0x4800043C # b .L_804549D8
    lwz 3, 0xc(31)
    li 4, 0xa
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420EB0 # lfs f2, lbl_80543E50@sda21(r0)
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x4182041C # beq .L_804549D8
    li 0, 0x7
    addi 6, 31, 0x55
    sth 0, 0x1e(31)
    li 4, 0x10a
    li 5, 0x0
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431A9C
    .4byte 0x480003FC # b .L_804549D8
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804317AC
    cmpwi 3, 0x0
    .4byte 0x418203EC # beq .L_804549D8
    li 0, 0x8
    sth 0, 0x1e(31)
    .4byte 0x480003E0 # b .L_804549D8
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_8045463C
    lbz 0, 0x55(31)
    cmplwi 0, 0x0
    .4byte 0x408200E4 # bne .L_80454700
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x55(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000C8 # b .L_80454700
L_8045463C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_8045467C
    lbz 0, 0x55(31)
    cmplwi 0, 0x1
    .4byte 0x408200A4 # bne .L_80454700
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x55(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000088 # b .L_80454700
L_8045467C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_804546BC
    li 0, 0x9
    sth 0, 0x1e(31)
    lbz 0, 0x55(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80454700
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000048 # b .L_80454700
L_804546BC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80454700
    li 3, 0x1
    li 0, 0x9
    stb 3, 0x55(31)
    sth 0, 0x1e(31)
    lbz 0, 0x55(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80454700
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
L_80454700:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    lbz 4, 0x55(31)
    bl fn_80431174
    .4byte 0x480002CC # b .L_804549D8
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x418202BC # beq .L_804549D8
    lbz 0, 0x55(31)
    cmplwi 0, 0x0
    .4byte 0x40820070 # bne .L_80454798
    lha 0, 0x1c(31)
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_80454768
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458F9C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    li 0, 0x6
    stw 0, 0x58(31)
    .4byte 0x4800026C # b .L_804549D0
L_80454768:
    li 0, 0x2
    li 4, 0xc
    stw 0, 0x58(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458F9C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80459274
    .4byte 0x4800023C # b .L_804549D0
L_80454798:
    li 3, 0x2
    li 0, 0x0
    sth 3, 0x1e(31)
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    sth 0, 0x20(31)
    .4byte 0xC0420EA0 # lfs f2, lbl_80543E40@sda21(r0)
    lwz 3, 0xc(31)
    bl fn_80402E08
    lwz 4, 0xc(31)
    li 0, 0x0
    lis 3, lbl_80491470@ha
    li 29, 0x0
    sth 0, 0x22(4)
    addi 30, 3, lbl_80491470@l
    sth 0, 0x1c(31)
L_804547D4:
    lha 0, 0x1c(31)
    cmpw 29, 0
    .4byte 0x408200B0 # bne .L_8045488C
    li 4, 0xff
    li 3, 0xed
    li 0, 0xa0
    stb 4, 0x20(1)
    lwz 5, 0x0(30)
    stb 3, 0x21(1)
    lwz 6, 0x4(30)
    stb 0, 0x22(1)
    stb 4, 0x23(1)
    lwz 0, 0x20(1)
    stw 0, 0x24(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 4, 0x27
    li 3, 0x10
    stb 4, 0x18(1)
    lwz 5, 0x0(30)
    stb 3, 0x19(1)
    lwz 6, 0x4(30)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 0, 0x1c(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_80454930
L_8045488C:
    li 5, 0xa7
    li 4, 0x4c
    li 3, 0x2a
    li 0, 0xff
    stb 5, 0x10(1)
    lwz 5, 0x0(30)
    stb 4, 0x11(1)
    lwz 6, 0x4(30)
    stb 3, 0x12(1)
    stb 0, 0x13(1)
    lwz 0, 0x10(1)
    stw 0, 0x14(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(30)
    stb 0, 0x8(1)
    lwz 6, 0x4(30)
    stb 0, 0x9(1)
    stb 0, 0xa(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
L_80454930:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x3
    .4byte 0x4180FE98 # blt .L_804547D4
    lwz 3, 0x4(31)
    lis 5, 0x6e63
    lha 0, 0x1c(31)
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    slwi 29, 0, 2
    addi 5, 4, 0x6b65
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    add 4, 31, 29
    lfs 1, 0x24(4)
    lwz 12, 0x10(12)
    lfs 2, 0x30(4)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x6e63
    lha 0, 0x1c(31)
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    slwi 29, 0, 2
    addi 5, 4, 0x6b65
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    add 4, 31, 29
    lfs 1, 0x3c(4)
    lwz 12, 0x10(12)
    lfs 2, 0x48(4)
    mtctr 12
    bctrl
L_804549D0:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310BC
L_804549D8:
    li 3, 0x0
    psq_l 31, 0xa8(1), 0, 0
    lwz 0, 0xb4(1)
    lfd 31, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_80454A00:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lha 0, 0x1e(31)
    cmpwi 0, 0x7
    .4byte 0x41820014 # beq .L_80454A50
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_80454A50
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_80454A58
L_80454A50:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804316EC
L_80454A58:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80454A6C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310CC
    li 3, 0x0
    li 0, 0x2
    sth 3, 0x1c(29)
    li 4, 0x0
    sth 0, 0x1e(29)
    sth 3, 0x20(29)
    lwz 3, 0x8(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    li 0, 0x0
    .4byte 0xC0220EA4 # lfs f1, lbl_80543E44@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC0420EA0 # lfs f2, lbl_80543E40@sda21(r0)
    lwz 3, 0xc(29)
    bl fn_80402E08
    lwz 6, 0xc(29)
    li 0, 0x0
    lis 3, lbl_80491488@ha
    lis 5, 0x5449
    sth 0, 0x22(6)
    addi 4, 3, lbl_80491488@l
    addi 3, 5, 0x4d47
    bl fn_80403084
    mr 0, 3
    lwz 3, 0x4(29)
    lis 4, 0x7363
    li 5, 0x50
    lwz 12, 0x0(3)
    mr 30, 0
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_80491470@ha
    li 30, 0x0
    addi 31, 3, lbl_80491470@l
L_80454B48:
    lha 0, 0x1c(29)
    cmpw 30, 0
    .4byte 0x408200B0 # bne .L_80454C00
    li 4, 0xff
    li 3, 0xed
    li 0, 0xa0
    stb 4, 0x20(1)
    lwz 5, 0x0(31)
    stb 3, 0x21(1)
    lwz 6, 0x4(31)
    stb 0, 0x22(1)
    stb 4, 0x23(1)
    lwz 0, 0x20(1)
    stw 0, 0x24(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 4, 0x27
    li 3, 0x10
    stb 4, 0x18(1)
    lwz 5, 0x0(31)
    stb 3, 0x19(1)
    lwz 6, 0x4(31)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 0, 0x1c(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_80454CA4
L_80454C00:
    li 5, 0xa7
    li 4, 0x4c
    li 3, 0x2a
    li 0, 0xff
    stb 5, 0x10(1)
    lwz 5, 0x0(31)
    stb 4, 0x11(1)
    lwz 6, 0x4(31)
    stb 3, 0x12(1)
    stb 0, 0x13(1)
    lwz 0, 0x10(1)
    stw 0, 0x14(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(31)
    stb 0, 0x8(1)
    lwz 6, 0x4(31)
    stb 0, 0x9(1)
    stb 0, 0xa(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    lwz 12, 0x128(12)
    mtctr 12
    bctrl
L_80454CA4:
    addi 30, 30, 0x1
    addi 31, 31, 0x8
    cmpwi 30, 0x3
    .4byte 0x4180FE98 # blt .L_80454B48
    li 0, 0x9
    stw 0, 0x58(29)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

