.section extab, "a"
.balign 4
.global etb_80008CA0
etb_80008CA0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008CA0, 8

.global etb_80008CA8
etb_80008CA8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008CA8, 8

.global etb_80008CB0
etb_80008CB0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008CB0, 8

.global etb_80008CB8
etb_80008CB8:
    .4byte 0x48CA0000
    .4byte 0x00000000
.size etb_80008CB8, 8

.global etb_80008CC0
etb_80008CC0:
    .4byte 0x394A0000
    .4byte 0x00000000
.size etb_80008CC0, 8

.section extabindex, "a"
.balign 4
.global eti_800162E8
eti_800162E8:
    .4byte fn_801EBD6C
    .4byte 0x000000D0
    .4byte etb_80008CA0
.size eti_800162E8, 12

.global eti_800162F4
eti_800162F4:
    .4byte fn_801EBE3C
    .4byte 0x00000040
    .4byte etb_80008CA8
.size eti_800162F4, 12

.global eti_80016300
eti_80016300:
    .4byte fn_801EBE7C
    .4byte 0x0000093C
    .4byte etb_80008CB0
.size eti_80016300, 12

.global eti_8001630C
eti_8001630C:
    .4byte fn_801EC7B8
    .4byte 0x00000350
    .4byte etb_80008CB8
.size eti_8001630C, 12

.global eti_80016318
eti_80016318:
    .4byte fn_801ECB08
    .4byte 0x000004B4
    .4byte etb_80008CC0
.size eti_80016318, 12

.text
.balign 4
.global fn_801EBD6C
.global fn_801EBE3C
.global fn_801EBE7C
.global fn_801EC7B8
.global fn_801ECB08

fn_801EBD6C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr 29, 3
    addi 3, 29, 0x2b6
    bl fn_801ED8F0
    addi 3, 29, 0x2b8
    bl fn_80215F30
    mr 3, 29
    mr 4, 30
    bl fn_801CE0A4
    .4byte 0xC002C71C # lfs f0, lbl_8053F6BC@sda21(r0)
    addi 3, 1, 0x8
    lfs 4, 0x10(29)
    lfs 1, 0xc(29)
    fadds 3, 0, 4
    fadds 2, 0, 1
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x14(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 2, 0x10(1)
    lwz 4, 0x4(29)
    lwz 5, 0x198(29)
    bl fn_80239914
    lwz 31, 0x198(29)
    lwz 30, 0x4(29)
    bl fn_8020D58C
    mr 7, 3
    mr 5, 30
    lbz 0, 0x0(3)
    mr 6, 31
    addi 4, 1, 0x8
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 7, 3
    bl fn_8020D8C0
    addi 3, 29, 0x2b8
    bl fn_80215A94
    .4byte 0x906D85A0 # stw r3, lbl_8053A160@sda21(r0)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801EBE3C:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x2
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x98(3)
    addi 3, 31, 0x270
    bl fn_801D2264
    mr 3, 31
    bl fn_801CE4BC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801EBE7C:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC002C71C # lfs f0, lbl_8053F6BC@sda21(r0)
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lfs 4, 0x10(3)
    lfs 1, 0xc(3)
    fadds 3, 0, 4
    fadds 2, 0, 1
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x38(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 2, 0x34(1)
    lwz 0, 0x248(3)
    cmplwi 0, 0x10
    .4byte 0x418108D0 # bgt .L_801EC79C
    lis 4, jumptable_804A56D4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A56D4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x2b0(31)
    lwz 0, 0x2b0(31)
    cmpwi 0, 0x0
    .4byte 0x41800888 # blt .L_801EC79C
    mr 3, 31
    li 29, 0x364
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    mr 30, 3
    .4byte 0x40820008 # bne .L_801EBF40
    li 29, 0x35d
L_801EBF40:
    .4byte 0xC002C720 # lfs f0, lbl_8053F6C0@sda21(r0)
    mr 4, 29
    addi 7, 1, 0x20
    li 8, 0x0
    stfs 0, 0x20(1)
    stfs 0, 0x24(1)
    stfs 0, 0x28(1)
    lwz 3, 0x2b0(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182082C # beq .L_801EC79C
    clrlwi. 0, 30, 24
    .4byte 0x41820014 # beq .L_801EBF8C
    mr 3, 31
    li 4, 0x1
    bl fn_801ECB08
    .4byte 0x48000814 # b .L_801EC79C
L_801EBF8C:
    mr 3, 31
    li 4, 0x2
    bl fn_801ECB08
    .4byte 0x48000804 # b .L_801EC79C
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x2b0(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418207DC # beq .L_801EC79C
    lwz 3, 0x2b0(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x418207C8 # beq .L_801EC79C
    li 0, 0x2
    mr 3, 31
    stw 0, 0x98(31)
    li 4, 0x0
    bl fn_801ECB08
    .4byte 0x480007B0 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801EC034
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(31)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(31)
    stfs 0, 0x800(4)
    lfs 0, 0x14(31)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801EC034:
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x2b0(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820744 # beq .L_801EC79C
    lwz 3, 0x2b0(31)
    bl fn_8037EFB4
    cmpwi 3, 0x0
    .4byte 0x40820028 # bne .L_801EC090
    lwz 3, 0x2b0(31)
    li 4, 0x35e
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820720 # beq .L_801EC79C
    mr 3, 31
    li 4, 0x3
    bl fn_801ECB08
    .4byte 0x48000710 # b .L_801EC79C
L_801EC090:
    lwz 3, 0x2b0(31)
    li 4, 0x35f
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418206FC # beq .L_801EC79C
    mr 3, 31
    li 4, 0x4
    bl fn_801ECB08
    .4byte 0x480006EC # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801EC0F8
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(31)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(31)
    stfs 0, 0x800(4)
    lfs 0, 0x14(31)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801EC0F8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x2b0(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820680 # beq .L_801EC79C
    lwz 3, 0x2b0(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x4182066C # beq .L_801EC79C
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801EC150
    mr 3, 31
    li 4, 0x6
    bl fn_801ECB08
    .4byte 0x48000650 # b .L_801EC79C
L_801EC150:
    mr 3, 31
    li 4, 0x5
    bl fn_801ECB08
    .4byte 0x48000640 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801EC1A4
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(31)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(31)
    stfs 0, 0x800(4)
    lfs 0, 0x14(31)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801EC1A4:
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x2b0(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418205D4 # beq .L_801EC79C
    lwz 3, 0x2b0(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x418205C0 # beq .L_801EC79C
    li 0, 0x2
    mr 3, 31
    stw 0, 0x98(31)
    li 4, 0x0
    bl fn_801ECB08
    .4byte 0x480005A8 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801EC23C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(31)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(31)
    stfs 0, 0x800(4)
    lfs 0, 0x14(31)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801EC23C:
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820558 # beq .L_801EC79C
    mr 3, 31
    li 4, 0x6
    bl fn_801ECB08
    .4byte 0x48000548 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801EC29C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(31)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(31)
    stfs 0, 0x800(4)
    lfs 0, 0x14(31)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801EC29C:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x418004F8 # blt .L_801EC79C
    mr 3, 31
    li 4, 0x7
    bl fn_801ECB08
    .4byte 0x480004E8 # b .L_801EC79C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x418004DC # blt .L_801EC79C
    li 4, 0x8
    bl fn_801ECB08
    .4byte 0x480004D0 # b .L_801EC79C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x2d
    .4byte 0x418004C4 # blt .L_801EC79C
    li 4, 0x9
    bl fn_801ECB08
    .4byte 0x480004B8 # b .L_801EC79C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800010 # blt .L_801EC300
    li 4, 0xa
    bl fn_801ECB08
    .4byte 0x480004A0 # b .L_801EC79C
L_801EC300:
    cmpwi 0, 0x78
    .4byte 0x41800498 # blt .L_801EC79C
    addi 3, 31, 0x34c
    bl Hrmn_AdvanceSlotStateType0xc
    mr 31, 3
    li 30, 0x0
L_801EC318:
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    mr 3, 30
    addi 5, 31, 0x33a
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_801EC318
    .4byte 0x48000450 # b .L_801EC79C
    addi 3, 31, 0x2b8
    bl fn_80215DB8
    mr 3, 31
    bl fn_801EC7B8
    .4byte 0x4800043C # b .L_801EC79C
    addi 3, 31, 0x2b8
    bl fn_80215DB8
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1e
    .4byte 0x41800024 # blt .L_801EC398
    addi 3, 31, 0x2b8
    bl fn_80215D38
    clrlwi. 0, 3, 24
    .4byte 0x41820418 # beq .L_801EC79C
    mr 3, 31
    li 4, 0xc
    bl fn_801ECB08
    .4byte 0x48000408 # b .L_801EC79C
L_801EC398:
    addi 3, 31, 0x2b8
    bl fn_80215E98
    lwz 0, 0x2b8(31)
    subf 0, 0, 3
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x418203EC # beq .L_801EC79C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf
    .4byte 0x408203E0 # bne .L_801EC79C
    mr 3, 31
    li 4, 0x3a
    bl fn_801F0D20
    .4byte 0x480003D0 # b .L_801EC79C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x418003C4 # blt .L_801EC79C
    li 4, 0xd
    bl fn_801ECB08
    .4byte 0x480003B8 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801EC430
    li 0, 0x1
    .4byte 0xC022C718 # lfs f1, lbl_8053F6B8@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002C724 # lfs f0, lbl_8053F6C4@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801EC430:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800364 # blt .L_801EC79C
    mr 3, 31
    li 4, 0xe
    bl fn_801ECB08
    .4byte 0x48000354 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801EC494
    li 0, 0x1
    .4byte 0xC022C718 # lfs f1, lbl_8053F6B8@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002C724 # lfs f0, lbl_8053F6C4@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801EC494:
    lwz 3, 0x2b0(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x2b0(31)
    cmpw 0, 3
    .4byte 0x408202E0 # bne .L_801EC79C
    addi 3, 31, 0x2b8
    bl fn_80215E98
    cmpwi 3, 0x0
    .4byte 0x40820048 # bne .L_801EC514
    .4byte 0xC002C720 # lfs f0, lbl_8053F6C0@sda21(r0)
    addi 7, 1, 0x14
    li 4, 0x365
    li 8, 0x2
    stfs 0, 0x14(1)
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x2b0(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182029C # beq .L_801EC79C
    mr 3, 31
    li 4, 0x10
    bl fn_801ECB08
    .4byte 0x4800028C # b .L_801EC79C
L_801EC514:
    addi 3, 31, 0x2b8
    li 4, 0x0
    bl fn_80215E58
    mr 4, 3
    lwz 3, 0x2b0(31)
    addi 4, 4, 0x1
    bl fn_803894BC
    .4byte 0xC002C720 # lfs f0, lbl_8053F6C0@sda21(r0)
    addi 7, 1, 0x8
    li 4, 0x366
    li 8, 0x2
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x2b0(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182023C # beq .L_801EC79C
    lbz 5, 0x2b4(31)
    mr 3, 31
    li 4, 0xf
    addi 0, 5, 0x1
    stb 0, 0x2b4(31)
    bl fn_801ECB08
    .4byte 0x48000220 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801EC5C8
    li 0, 0x1
    .4byte 0xC022C718 # lfs f1, lbl_8053F6B8@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002C724 # lfs f0, lbl_8053F6C4@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801EC5C8:
    lwz 3, 0x2b0(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x2b0(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418201B0 # beq .L_801EC79C
    lbz 4, 0x2b4(31)
    addi 3, 31, 0x2b8
    subi 4, 4, 0x1
    bl fn_80215E58
    mr 4, 3
    addi 3, 31, 0x2b8
    bl fn_80215B6C
    addi 3, 31, 0x2b8
    bl fn_80215E98
    lbz 4, 0x2b4(31)
    cmpw 4, 3
    .4byte 0x41800028 # blt .L_801EC644
    lwz 3, 0x2b0(31)
    li 4, 0x36a
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x4182016C # beq .L_801EC79C
    mr 3, 31
    li 4, 0x10
    bl fn_801ECB08
    .4byte 0x4800015C # b .L_801EC79C
L_801EC644:
    addi 3, 31, 0x2b8
    bl fn_80215E58
    mr 4, 3
    lwz 3, 0x2b0(31)
    addi 4, 4, 0x1
    bl fn_803894BC
    lbz 0, 0x2b4(31)
    lis 3, lbl_80469CB8@ha
    addi 4, 3, lbl_80469CB8@l
    lwz 3, 0x2b0(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_801EC79C
    lbz 3, 0x2b4(31)
    addi 0, 3, 0x1
    stb 0, 0x2b4(31)
    .4byte 0x48000110 # b .L_801EC79C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801EC6D8
    li 0, 0x1
    .4byte 0xC022C718 # lfs f1, lbl_8053F6B8@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002C724 # lfs f0, lbl_8053F6C4@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801EC6D8:
    lwz 3, 0x2b0(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x2b0(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_801EC79C
    lwz 3, 0x2b0(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_801EC79C
    li 3, 0x0
    bl fn_80230534
    li 30, 0x0
L_801EC720:
    bl GetRoomConfigRecord
    mr 5, 30
    li 4, 0x0
    bl fn_802D7844
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE8 # blt .L_801EC720
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820030 # beq .L_801EC774
    lwz 30, 0x2b0(31)
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801EC768
    lwz 3, 0x2b0(31)
    bl fn_8022F3DC
    mr 30, 3
L_801EC768:
    mr 4, 30
    addi 3, 31, 0x2b8
    bl fn_80215BCC
L_801EC774:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    mr 3, 31
    li 4, 0x0
    bl fn_801ECB08
L_801EC79C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801EC7B8:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stmw 23, 0x2c(1)
    .4byte 0xC002C718 # lfs f0, lbl_8053F6B8@sda21(r0)
    li 0, 0x0
    mr 26, 3
    stb 0, 0x8(1)
    lwz 23, 0x4(3)
    addi 31, 1, 0x8
    stfs 0, 0xc(1)
    addi 30, 1, 0xc
    li 29, 0x0
    stb 0, 0x9(1)
    stfs 0, 0x10(1)
    stb 0, 0xa(1)
    stfs 0, 0x14(1)
    stb 0, 0xb(1)
    stfs 0, 0x18(1)
    bl GetRoomConfigRecord
    cmpwi 23, 0x8
    .4byte 0x4080000C # bge .L_801EC830
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801EC834
L_801EC830:
    addi 3, 3, 0xdc
L_801EC834:
    lfs 1, 0x4(3)
    mr 24, 31
    lfs 0, 0xc(3)
    mr 25, 30
    .4byte 0xC062C728 # lfs f3, lbl_8053F6C8@sda21(r0)
    li 27, 0x0
    lfs 2, 0x0(3)
    fadds 0, 1, 0
    .4byte 0xC022C72C # lfs f1, lbl_8053F6CC@sda21(r0)
    fadds 30, 3, 2
    fmuls 29, 1, 0
    .4byte 0x480000EC # b .L_801EC94C
L_801EC864:
    mr 4, 27
    addi 3, 26, 0x2b8
    bl fn_80215E48
    srwi 0, 3, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x408200C4 # bne .L_801EC940
    lwz 23, 0x4(26)
    mr 3, 27
    bl fn_8023DE58
    cmpw 3, 23
    .4byte 0x408200B0 # bne .L_801EC940
    mr 3, 27
    bl fn_8023E724
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 29
    .4byte 0x4081009C # ble .L_801EC940
    mr 3, 27
    bl fn_8023E724
    lfs 0, 0x0(3)
    fcmpo cr0, 0, 30
    .4byte 0x40800088 # bge .L_801EC940
    li 0, 0x1
    mr 3, 27
    stb 0, 0x0(24)
    bl fn_8023E724
    lfs 31, 0x0(3)
    mr 3, 27
    bl fn_8023E578
    lfs 0, 0x0(3)
    .4byte 0xC042C730 # lfs f2, lbl_8053F6D0@sda21(r0)
    fsubs 1, 31, 0
    .4byte 0xC082C718 # lfs f4, lbl_8053F6B8@sda21(r0)
    .4byte 0xC002C720 # lfs f0, lbl_8053F6C0@sda21(r0)
    fmuls 3, 2, 1
    fsubs 1, 31, 3
    .4byte 0x48000018 # b .L_801EC90C
L_801EC8F8:
    fsubs 4, 4, 2
    fsubs 1, 1, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4182000C # beq .L_801EC914
L_801EC90C:
    fcmpo cr0, 1, 30
    .4byte 0x4180FFE8 # blt .L_801EC8F8
L_801EC914:
    .4byte 0xC002C718 # lfs f0, lbl_8053F6B8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4081000C # ble .L_801EC928
    fmr 4, 0
    .4byte 0x48000014 # b .L_801EC938
L_801EC928:
    .4byte 0xC002C720 # lfs f0, lbl_8053F6C0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800008 # bge .L_801EC938
    fmr 4, 0
L_801EC938:
    stfs 4, 0x0(25)
    addi 29, 29, 0x1
L_801EC940:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    addi 27, 27, 0x1
L_801EC94C:
    lwz 0, 0x2a8(26)
    cmpw 27, 0
    .4byte 0x4180FF10 # blt .L_801EC864
    cmpwi 29, 0x0
    .4byte 0x408100EC # ble .L_801ECA48
    mr 3, 26
    li 4, 0x3a
    bl fn_801F0D20
    addi 3, 26, 0x2b8
    bl fn_80215E98
    lis 4, lbl_80539D40@ha
    mr 28, 3
    addi 24, 1, 0xc
    addi 25, 1, 0x8
    addi 23, 4, lbl_80539D40@l
    .4byte 0x480000B8 # b .L_801ECA40
L_801EC98C:
    lwz 0, 0x2a8(26)
    mr 3, 31
    mr 4, 30
    lfs 1, 0x0(23)
    li 27, -0x1
    li 5, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810038 # ble .L_801EC9E4
L_801EC9B0:
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801EC9D4
    lfs 0, 0x0(4)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801EC9D4
    mr 27, 5
    fmr 1, 0
L_801EC9D4:
    addi 3, 3, 0x1
    addi 4, 4, 0x4
    addi 5, 5, 0x1
    .4byte 0x4200FFD0 # bdnz .L_801EC9B0
L_801EC9E4:
    slwi 0, 27, 2
    mr 4, 27
    lfsx 1, 24, 0
    mr 5, 28
    addi 3, 26, 0x2b8
    bl fn_80215FB8
    mr 4, 27
    addi 3, 26, 0x2b8
    bl fn_80215D8C
    cmpwi 28, 0x0
    .4byte 0x40820024 # bne .L_801ECA30
    mr 4, 27
    addi 3, 26, 0x2b8
    bl fn_80215C6C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801ECA30
    lwz 0, 0x230(26)
    ori 0, 0, 0x2000
    stw 0, 0x230(26)
L_801ECA30:
    li 0, 0x0
    subi 29, 29, 0x1
    stbx 0, 25, 27
    addi 28, 28, 0x1
L_801ECA40:
    cmpwi 29, 0x0
    .4byte 0x4181FF48 # bgt .L_801EC98C
L_801ECA48:
    addi 3, 26, 0x2b8
    bl fn_80215E98
    lwz 0, 0x2b8(26)
    subf 0, 0, 3
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820014 # beq .L_801ECA74
    mr 3, 26
    li 4, 0xb
    bl fn_801ECB08
    .4byte 0x4800006C # b .L_801ECADC
L_801ECA74:
    addi 3, 26, 0x2b8
    bl fn_8021606C
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_801ECADC
    li 23, 0x0
    .4byte 0x48000030 # b .L_801ECAB8
L_801ECA8C:
    mr 4, 23
    addi 3, 26, 0x2b8
    bl fn_80215E48
    srwi 0, 3, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_801ECAB4
    mr 4, 23
    addi 3, 26, 0x2b8
    bl fn_80215D8C
L_801ECAB4:
    addi 23, 23, 0x1
L_801ECAB8:
    lwz 0, 0x2a8(26)
    cmpw 23, 0
    .4byte 0x4180FFCC # blt .L_801ECA8C
    mr 3, 26
    li 4, 0x3b
    bl fn_801F0D20
    mr 3, 26
    li 4, 0xb
    bl fn_801ECB08
L_801ECADC:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lmw 23, 0x2c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_801ECB08:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stfd 29, 0x90(1)
    psq_st 29, 0x98(1), 0, 0
    stfd 28, 0x80(1)
    psq_st 28, 0x88(1), 0, 0
    stfd 27, 0x70(1)
    psq_st 27, 0x78(1), 0, 0
    stmw 25, 0x54(1)
    mr 27, 4
    mr 26, 3
    cmplwi 27, 0x10
    .4byte 0x41810428 # bgt .L_801ECF74
    lis 3, jumptable_804A5718@ha
    slwi 0, 27, 2
    addi 3, 3, jumptable_804A5718@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2b0(26)
    stb 0, 0x2b4(26)
    lwz 0, 0x230(26)
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(26)
    .4byte 0x480003F0 # b .L_801ECF74
    lwz 5, 0x2b0(26)
    mr 3, 26
    addi 4, 26, 0xc
    li 6, 0x0
    bl fn_801D0020
    stw 3, 0x98(26)
    .4byte 0x480003D4 # b .L_801ECF74
    bl fn_80119DD0
    li 4, 0x78
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    .4byte 0x480003A0 # b .L_801ECF74
    lwz 25, 0x2ac(26)
    cmpwi 25, 0x0
    .4byte 0x41820018 # beq .L_801ECBF8
    bl GetRoomConfigRecord
    mr 4, 25
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801ECBF8:
    li 25, 0x0
    .4byte 0x48000024 # b .L_801ECC20
L_801ECC00:
    mr 3, 25
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801ECC1C
    mr 3, 25
    li 4, 0x4
    bl fn_8023764C
L_801ECC1C:
    addi 25, 25, 0x1
L_801ECC20:
    lwz 0, 0x2a8(26)
    cmpw 25, 0
    .4byte 0x4180FFD8 # blt .L_801ECC00
    bl fn_8022B064
    lwz 25, 0x4(26)
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_801ECC48
    addi 30, 3, 0xcc
    .4byte 0x48000008 # b .L_801ECC4C
L_801ECC48:
    addi 30, 3, 0xdc
L_801ECC4C:
    lwz 29, 0x2a8(26)
    li 31, 0x0
    li 4, 0x1
    li 3, 0x2
    li 0, 0x3
    cmpwi 29, 0x2
    stw 31, 0x24(1)
    addi 28, 1, 0x24
    stw 31, 0x14(1)
    stw 4, 0x28(1)
    stw 4, 0x18(1)
    stw 3, 0x2c(1)
    stw 3, 0x1c(1)
    stw 0, 0x30(1)
    stw 0, 0x20(1)
    .4byte 0x418000C4 # blt .L_801ECD4C
    cmpwi 29, 0x1
    .4byte 0x408100BC # ble .L_801ECD4C
    mr 25, 29
    .4byte 0x480000AC # b .L_801ECD44
L_801ECC9C:
    mr 3, 25
    bl fn_801CD664
    slwi 0, 3, 2
    addi 5, 1, 0x14
    add 5, 5, 0
    subi 0, 25, 0x1
    lwz 4, 0x0(5)
    cmpw 3, 0
    stw 4, 0x0(28)
    subf 3, 3, 0
    .4byte 0x40800074 # bge .L_801ECD38
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820054 # beq .L_801ECD24
L_801ECCD4:
    lwz 0, 0x4(5)
    stw 0, 0x0(5)
    lwz 0, 0x8(5)
    stw 0, 0x4(5)
    lwz 0, 0xc(5)
    stw 0, 0x8(5)
    lwz 0, 0x10(5)
    stw 0, 0xc(5)
    lwz 0, 0x14(5)
    stw 0, 0x10(5)
    lwz 0, 0x18(5)
    stw 0, 0x14(5)
    lwz 0, 0x1c(5)
    stw 0, 0x18(5)
    lwz 0, 0x20(5)
    stw 0, 0x1c(5)
    addi 5, 5, 0x20
    .4byte 0x4200FFBC # bdnz .L_801ECCD4
    andi. 3, 3, 0x7
    .4byte 0x41820018 # beq .L_801ECD38
L_801ECD24:
    mtctr 3
L_801ECD28:
    lwz 0, 0x4(5)
    stw 0, 0x0(5)
    addi 5, 5, 0x4
    .4byte 0x4200FFF4 # bdnz .L_801ECD28
L_801ECD38:
    addi 28, 28, 0x4
    addi 31, 31, 0x1
    subi 25, 25, 0x1
L_801ECD44:
    cmpw 31, 29
    .4byte 0x4180FF54 # blt .L_801ECC9C
L_801ECD4C:
    .4byte 0xC362C734 # lfs f27, lbl_8053F6D4@sda21(r0)
    addi 29, 1, 0x24
    .4byte 0xC3E2C738 # lfs f31, lbl_8053F6D8@sda21(r0)
    li 31, 0x0
    .4byte 0xCBC2C748 # lfd f30, lbl_8053F6E8@sda21(r0)
    lis 28, 0x4330
    .4byte 0xC3A2C73C # lfs f29, lbl_8053F6DC@sda21(r0)
    .4byte 0xC382C720 # lfs f28, lbl_8053F6C0@sda21(r0)
L_801ECD6C:
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801ECD88
    mr 3, 31
    bl fn_8022F3DC
    .4byte 0x48000008 # b .L_801ECD8C
L_801ECD88:
    mr 3, 31
L_801ECD8C:
    slwi 0, 3, 2
    lfs 0, 0x0(30)
    lwzx 0, 29, 0
    mr 3, 31
    lfs 1, 0x4(30)
    fadds 0, 29, 0
    xoris 0, 0, 0x8000
    stw 28, 0x40(1)
    addi 4, 1, 0x34
    li 5, 0x356
    stw 0, 0x44(1)
    li 6, 0xff
    li 7, -0x80
    lfd 2, 0x40(1)
    li 8, -0x80
    stfs 0, 0x34(1)
    li 9, 0x1
    fsubs 0, 2, 30
    stfs 28, 0x3c(1)
    fadds 0, 31, 0
    fmadds 0, 27, 0, 1
    stfs 0, 0x38(1)
    bl fn_80230498
    mr 3, 31
    li 4, 0x0
    bl fn_80230BF4
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF70 # blt .L_801ECD6C
    li 0, 0x2
    addi 3, 26, 0x2b8
    stw 0, 0x98(26)
    bl fn_802160F4
    .4byte 0x48000164 # b .L_801ECF74
    addi 3, 26, 0x2b6
    bl Hrmn_ResetToB4
    .4byte 0x48000158 # b .L_801ECF74
    li 3, 0x0
    bl fn_80230534
    mr 3, 26
    li 4, 0x3a
    bl fn_801F0D20
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x7
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    addi 3, 26, 0x2b8
    bl fn_8021600C
    .4byte 0x48000120 # b .L_801ECF74
    addi 3, 26, 0x2b8
    li 4, 0x0
    bl fn_80215E58
    cmpwi 3, 0x0
    .4byte 0x4180010C # blt .L_801ECF74
    stw 3, 0x2b0(26)
    .4byte 0x48000104 # b .L_801ECF74
    bl fn_80119DD0
    li 4, 0x78
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    .4byte 0x480000D0 # b .L_801ECF74
    lwz 25, 0x2ac(26)
    cmpwi 25, 0x0
    .4byte 0x41820018 # beq .L_801ECEC8
    bl GetRoomConfigRecord
    mr 4, 25
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_801ECEC8:
    bl fn_8022AF78
    .4byte 0xC382C740 # lfs f28, lbl_8053F6E0@sda21(r0)
    li 29, 0x0
    .4byte 0xC3A2C734 # lfs f29, lbl_8053F6D4@sda21(r0)
    lis 28, 0x4330
    .4byte 0xCBC2C748 # lfd f30, lbl_8053F6E8@sda21(r0)
    .4byte 0xC3E2C720 # lfs f31, lbl_8053F6C0@sda21(r0)
L_801ECEE4:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801ECF00
    mr 3, 29
    bl fn_8022F3DC
    .4byte 0x48000008 # b .L_801ECF04
L_801ECF00:
    mr 3, 29
L_801ECF04:
    xoris 0, 3, 0x8000
    lfs 1, 0x10(26)
    stw 0, 0x44(1)
    mr 3, 29
    lfs 0, 0xc(26)
    fadds 2, 28, 1
    stw 28, 0x40(1)
    addi 4, 1, 0x8
    li 5, 0x3f
    li 6, 0xff
    lfd 1, 0x40(1)
    stfs 2, 0xc(1)
    li 7, -0x80
    fsubs 1, 1, 30
    li 8, -0x80
    stfs 31, 0x10(1)
    li 9, 0x1
    fmadds 0, 29, 1, 0
    stfs 0, 0x8(1)
    bl fn_80230498
    mr 3, 29
    li 4, 0x3
    bl fn_80230BF4
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF7C # blt .L_801ECEE4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
L_801ECF74:
    li 0, 0x0
    stw 0, 0x24c(26)
    stw 27, 0x248(26)
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    psq_l 29, 0x98(1), 0, 0
    lfd 29, 0x90(1)
    psq_l 28, 0x88(1), 0, 0
    lfd 28, 0x80(1)
    psq_l 27, 0x78(1), 0, 0
    lfd 27, 0x70(1)
    lmw 25, 0x54(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

