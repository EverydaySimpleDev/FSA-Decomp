# 901KB-gap non-actor manager block: 5 function(s), 3,776 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010D84
etb_80010D84:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80010D84, 8

.global etb_80010D8C
etb_80010D8C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80010D8C, 8

.global etb_80010D94
etb_80010D94:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010D94, 8

.section extabindex, "a"
.balign 4
.global eti_80020DE8
eti_80020DE8:
    .4byte fn_80438C68
    .4byte 0x000001A8
    .4byte etb_80010D84
.size eti_80020DE8, 12

.global eti_80020DF4
eti_80020DF4:
    .4byte fn_80438E94
    .4byte 0x00000B0C
    .4byte etb_80010D8C
.size eti_80020DF4, 12

.global eti_80020E00
eti_80020E00:
    .4byte fn_804399A0
    .4byte 0x00000110
    .4byte etb_80010D94
.size eti_80020E00, 12

.text
.balign 4
.global fn_80438C68
.global fn_80438E10
.global fn_80438E94
.global fn_804399A0
.global fn_80439AB0

fn_80438C68:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lbz 0, 0x58(3)
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_80438D30
    .4byte 0x4080015C # bge .L_80438DF0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80438CA4
    .4byte 0x48000150 # b .L_80438DF0
L_80438CA4:
    lwz 0, 0x44(31)
    cmpwi 0, -0x1
    .4byte 0x40820064 # bne .L_80438D10
    lwz 28, 0x48(31)
    li 3, 0x0
    bl fn_8022EA0C
    bl fn_8023E724
    mr 29, 3
    li 3, 0x0
    bl fn_8023DE58
    mr 30, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x544e
    mr 5, 30
    mr 6, 29
    mr 7, 28
    addi 4, 4, 0x474c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x44(31)
    bl fn_8022ADB0
    stb 3, 0x5f(31)
    lbz 0, 0x5f(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80438D10
    bl fn_8022ADE4
L_80438D10:
    lwz 0, 0x44(31)
    cmpwi 0, 0x0
    .4byte 0x408100D8 # ble .L_80438DF0
    li 3, 0x1
    li 0, 0xff
    stb 3, 0x58(31)
    stb 0, 0x59(31)
    .4byte 0x480000C4 # b .L_80438DF0
L_80438D30:
    lbz 0, 0x59(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80438D4C
    .4byte 0x418000B4 # blt .L_80438DF0
    cmpwi 0, 0x3
    .4byte 0x408000AC # bge .L_80438DF0
    .4byte 0x48000010 # b .L_80438D58
L_80438D4C:
    li 0, 0x2
    stb 0, 0x58(31)
    .4byte 0x4800009C # b .L_80438DF0
L_80438D58:
    lis 4, lbl_80529DEC@ha
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x33a
    lbz 6, 0x24f(5)
    li 5, 0x0
    bl fn_8043D67C
    lwz 5, 0x38(31)
    li 3, 0x3
    li 0, 0x5
    li 4, 0x14
    addi 5, 5, 0x1
    stw 5, 0x38(31)
    stb 3, 0x58(31)
    stb 0, 0x40(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
    bl SpatialRegistry_GetBase
    lwz 28, 0x1008(3)
    li 30, 0x0
    li 29, 0x0
    .4byte 0x4800003C # b .L_80438DE8
L_80438DB0:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_80438DE0
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4445
    cmplwi 0, 0x5448
    .4byte 0x40820010 # bne .L_80438DE0
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80438DE0
    bl fn_802B7CD8
L_80438DE0:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_80438DE8:
    cmpw 30, 28
    .4byte 0x4180FFC4 # blt .L_80438DB0
L_80438DF0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80438E10:
    clrlwi. 0, 4, 24
    stb 4, 0x40(3)
    bnelr
    li 5, 0x0
    li 4, -0x1
    stb 5, 0x40(3)
    li 0, 0xff
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    stb 5, 0x42(3)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stb 5, 0x5d(3)
    stw 4, 0x44(3)
    stw 5, 0x48(3)
    stb 5, 0x58(3)
    stb 0, 0x59(3)
    stb 0, 0x5a(3)
    stfs 1, 0x4c(3)
    stfs 0, 0x50(3)
    sth 5, 0x54(3)
    sth 5, 0x56(3)
    stw 5, 0x3c(3)
    stw 5, 0xc(3)
    stw 5, 0x10(3)
    stw 5, 0x14(3)
    stw 5, 0x18(3)
    stw 5, 0x1c(3)
    stw 5, 0x20(3)
    stw 5, 0x24(3)
    stw 5, 0x28(3)
    stw 5, 0x2c(3)
    stw 5, 0x30(3)
    stb 5, 0x5f(3)
    blr

fn_80438E94:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    lwz 29, 0x44(3)
    cmpwi 29, 0x0
    .4byte 0x40810020 # ble .L_80438EDC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80438EDC
    li 0, -0x2
    stw 0, 0x44(31)
L_80438EDC:
    lbz 0, 0x40(31)
    cmplwi 0, 0x6
    .4byte 0x418107A8 # bgt .L_8043968C
    lis 3, jumptable_804B17F0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B17F0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lbz 0, 0x5a(31)
    cmplwi 0, 0xff
    .4byte 0x40820060 # bne .L_80438F68
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_80438F50
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x24f(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80438F44
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x48(31)
    stb 0, 0x5a(31)
    .4byte 0x48000018 # b .L_80438F58
L_80438F44:
    li 0, 0x0
    stb 0, 0x5a(31)
    .4byte 0x4800000C # b .L_80438F58
L_80438F50:
    li 0, 0x0
    stb 0, 0x5a(31)
L_80438F58:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    lbz 0, 0xc(3)
    stb 0, 0x5b(31)
L_80438F68:
    lbz 0, 0x5a(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80438F80
    mr 3, 31
    bl fn_80438C68
    .4byte 0x48000014 # b .L_80438F90
L_80438F80:
    li 3, -0x2
    li 0, 0x2
    stw 3, 0x44(31)
    stb 0, 0x58(31)
L_80438F90:
    lbz 0, 0x58(31)
    cmplwi 0, 0x2
    .4byte 0x408206F4 # bne .L_8043968C
    lbz 29, 0x41(31)
    lbz 3, 0x42(31)
    subi 0, 29, 0x2
    cmpw 3, 0
    .4byte 0x40800044 # bge .L_80438FF0
    addi 0, 3, 0x2
    lis 3, 0x5062
    stb 0, 0x42(31)
    addi 6, 3, 0x6c6b
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x42(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480006A0 # b .L_8043968C
L_80438FF0:
    lwz 3, 0x4(31)
    lis 4, 0x5062
    addi 6, 4, 0x6c6b
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x1
    li 4, 0x14
    stb 0, 0x40(31)
    sth 0, 0x56(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
    .4byte 0x48000650 # b .L_8043968C
    lwz 3, 0x3c(31)
    addi 0, 3, 0x1
    stw 0, 0x3c(31)
    lwz 0, 0x3c(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_80439060
    li 0, 0x3
    stb 0, 0x40(31)
L_80439060:
    lwz 3, 0x3c(31)
    subi 0, 3, 0x11
    cmplwi 0, 0x10
    .4byte 0x41810620 # bgt .L_8043968C
    lis 3, jumptable_804B17AC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B17AC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC0420CA8 # lfs f2, lbl_80543C48@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_804390D8
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0xc(31)
L_804390D8:
    lwz 3, 0xc(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804390F0
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_804390F0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800058C # b .L_8043968C
    .4byte 0xC0420CB0 # lfs f2, lbl_80543C50@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x10(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80439154
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x10(31)
L_80439154:
    lwz 3, 0x10(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043916C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8043916C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000510 # b .L_8043968C
    .4byte 0xC0420CB4 # lfs f2, lbl_80543C54@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x14(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_804391D0
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x14(31)
L_804391D0:
    lwz 3, 0x14(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804391E8
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_804391E8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000494 # b .L_8043968C
    .4byte 0xC0420CB8 # lfs f2, lbl_80543C58@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8043924C
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x18(31)
L_8043924C:
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80439264
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_80439264:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000418 # b .L_8043968C
    .4byte 0xC0420CBC # lfs f2, lbl_80543C5C@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x1c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_804392C8
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1c(31)
L_804392C8:
    lwz 3, 0x1c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804392E0
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_804392E0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800039C # b .L_8043968C
    .4byte 0xC0420CC0 # lfs f2, lbl_80543C60@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x20(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80439344
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x20(31)
L_80439344:
    lwz 3, 0x20(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043935C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8043935C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000320 # b .L_8043968C
    .4byte 0xC0420CC4 # lfs f2, lbl_80543C64@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x24(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_804393C0
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x24(31)
L_804393C0:
    lwz 3, 0x24(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804393D8
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_804393D8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480002A4 # b .L_8043968C
    .4byte 0xC0420CC8 # lfs f2, lbl_80543C68@sda21(r0)
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x28(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8043943C
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x567
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x28(31)
L_8043943C:
    lwz 3, 0x28(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80439454
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_80439454:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xd
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000228 # b .L_8043968C
    lwz 0, 0x44(31)
    cmpwi 0, -0x2
    .4byte 0x4082021C # bne .L_8043968C
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820204 # beq .L_8043968C
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    lwz 0, 0x2c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_804394D4
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x568
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2c(31)
L_804394D4:
    lwz 3, 0x2c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804394EC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_804394EC:
    lwz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80439524
    .4byte 0xC0220CAC # lfs f1, lbl_80543C4C@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x566
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x30(31)
L_80439524:
    lwz 3, 0x30(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043953C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8043953C:
    li 3, 0x4
    li 0, 0x0
    stb 3, 0x40(31)
    li 4, 0x48
    li 5, -0x1
    stb 0, 0x42(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000120 # b .L_8043968C
    lis 3, lbl_8050DB0C@ha
    lbz 4, 0x42(31)
    addi 3, 3, lbl_8050DB0C@l
    lha 0, 0x5c(3)
    cmpw 4, 0
    .4byte 0x40800010 # bge .L_80439594
    addi 0, 4, 0x1
    stb 0, 0x42(31)
    .4byte 0x480000FC # b .L_8043968C
L_80439594:
    lwz 3, 0x3c(31)
    addi 0, 3, 0x1
    stw 0, 0x3c(31)
    lwz 3, 0x8(31)
    lwz 4, 0x3c(31)
    lha 3, 0x6(3)
    subi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x418000D8 # blt .L_8043968C
    mr 29, 31
    li 28, 0x0
    li 30, 0x0
L_804395C4:
    lwz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_804395E4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xc(29)
    bl fn_800EC240
    stw 30, 0xc(29)
L_804395E4:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x8
    .4byte 0x4180FFD4 # blt .L_804395C4
    lwz 0, 0x2c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80439618
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2c(31)
L_80439618:
    lwz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8043963C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x30(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x30(31)
L_8043963C:
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x3c(31)
    stb 3, 0x42(31)
    stb 0, 0x40(31)
    .4byte 0x4800003C # b .L_8043968C
    lis 3, lbl_8050DB0C@ha
    lbz 4, 0x42(31)
    addi 3, 3, lbl_8050DB0C@l
    lha 0, 0x5e(3)
    cmpw 4, 0
    .4byte 0x40800010 # bge .L_80439678
    addi 0, 4, 0x1
    stb 0, 0x42(31)
    .4byte 0x48000018 # b .L_8043968C
L_80439678:
    lis 3, lbl_80529DEC@ha
    li 0, 0x7
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x237(3)
    stb 0, 0x40(31)
L_8043968C:
    lwz 5, 0x3c(31)
    lis 0, 0x4330
    lis 4, 0x7461
    lis 3, 0x4e
    xoris 5, 5, 0x8000
    stw 0, 0x20(1)
    .4byte 0xC8220CD0 # lfd f1, lbl_80543C70@sda21(r0)
    addi 6, 4, 0x3031
    stw 5, 0x24(1)
    addi 5, 3, 0x6461
    lwz 3, 0x8(31)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
    li 28, 0x0
    mr 29, 31
L_804396E4:
    lwz 5, 0xc(29)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_80439734
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_80439714
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_80439714
    li 4, 0x1
L_80439714:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_80439734
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xc(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0xc(29)
L_80439734:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x8
    .4byte 0x4180FFA4 # blt .L_804396E4
    lwz 5, 0x2c(31)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_80439794
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_80439774
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_80439774
    li 4, 0x1
L_80439774:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_80439794
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2c(31)
L_80439794:
    lwz 5, 0x30(31)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_804397E4
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_804397C4
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_804397C4
    li 4, 0x1
L_804397C4:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_804397E4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x30(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x30(31)
L_804397E4:
    lis 3, lbl_8050DB0C@ha
    lha 4, 0x54(31)
    addi 3, 3, lbl_8050DB0C@l
    lha 0, 0x9c(3)
    cmpw 4, 0
    .4byte 0x40800010 # bge .L_80439808
    addi 0, 4, 0x1
    sth 0, 0x54(31)
    .4byte 0x48000060 # b .L_80439864
L_80439808:
    lfs 4, 0x4c(31)
    .4byte 0xC0620CA4 # lfs f3, lbl_80543C44@sda21(r0)
    fcmpo cr0, 4, 3
    .4byte 0x40810050 # ble .L_80439864
    lha 3, 0x9e(3)
    lis 0, 0x4330
    stw 0, 0x20(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220CD0 # lfd f1, lbl_80543C70@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC0420CA0 # lfs f2, lbl_80543C40@sda21(r0)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fsubs 0, 4, 0
    stfs 0, 0x4c(31)
    lfs 0, 0x4c(31)
    fcmpo cr0, 0, 3
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_80439864
    li 0, 0x0
    stb 0, 0x5d(31)
    stfs 3, 0x4c(31)
L_80439864:
    lbz 0, 0x40(31)
    cmplwi 0, 0x5
    .4byte 0x40820050 # bne .L_804398BC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lbz 0, 0x5b(31)
    lwz 3, 0x2c(3)
    stb 0, 0xc(3)
    lbz 0, 0x5f(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80439890
    bl fn_8022ADCC
L_80439890:
    lbz 0, 0x5e(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_804398A8
    li 0, 0x1
    stb 0, 0x5e(31)
    .4byte 0x4800000C # b .L_804398B0
L_804398A8:
    li 0, 0x0
    stb 0, 0x5e(31)
L_804398B0:
    li 0, 0x0
    stb 0, 0x5c(31)
    .4byte 0x4800004C # b .L_80439904
L_804398BC:
    lfs 0, 0x4c(31)
    lbz 0, 0x5b(31)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    clrlwi 3, 4, 24
    cmplw 3, 0
    .4byte 0x40800010 # bge .L_804398E8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    stb 4, 0xc(3)
L_804398E8:
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    lfs 0, 0x4c(31)
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stb 0, 0x5c(31)
L_80439904:
    lha 4, 0x56(31)
    extsh. 0, 4
    .4byte 0x40810070 # ble .L_8043997C
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lha 0, 0x98(3)
    cmpw 4, 0
    .4byte 0x40800010 # bge .L_80439930
    addi 0, 4, 0x1
    sth 0, 0x56(31)
    .4byte 0x48000050 # b .L_8043997C
L_80439930:
    lfs 3, 0x50(31)
    .4byte 0xC0420CA0 # lfs f2, lbl_80543C40@sda21(r0)
    fcmpo cr0, 3, 2
    .4byte 0x40800040 # bge .L_8043997C
    lha 3, 0x9a(3)
    lis 0, 0x4330
    stw 0, 0x20(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220CD0 # lfd f1, lbl_80543C70@sda21(r0)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0x50(31)
    lfs 0, 0x50(31)
    fcmpo cr0, 0, 2
    .4byte 0x40810008 # ble .L_8043997C
    stfs 2, 0x50(31)
L_8043997C:
    lwz 0, 0x44(1)
    lbz 3, 0x40(31)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_804399A0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lfs 0, 0x50(31)
    lwz 3, 0x34(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x8(1)
    lwz 12, 0x24(12)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x34(31)
    li 4, 0x0
    .4byte 0xC0220CD8 # lfs f1, lbl_80543C78@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC0620CDC # lfs f3, lbl_80543C7C@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0820CE0 # lfs f4, lbl_80543C80@sda21(r0)
    mtctr 12
    bctrl
    lwz 5, 0x3c(31)
    lis 0, 0x4330
    lis 4, 0x7461
    lis 3, 0x4e
    xoris 5, 5, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC8220CD0 # lfd f1, lbl_80543C70@sda21(r0)
    addi 6, 4, 0x3031
    stw 5, 0x14(1)
    addi 5, 3, 0x6461
    lwz 3, 0x8(31)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
    .4byte 0xC0220CA4 # lfs f1, lbl_80543C44@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lbz 0, 0x40(31)
    cmplwi 0, 0x3
    .4byte 0x4082001C # bne .L_80439A9C
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x20(3)
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    stb 0, 0x21(3)
L_80439A9C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80439AB0:
    li 5, 0x0
    li 4, -0x1
    stb 5, 0x40(3)
    li 0, 0xff
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    stb 5, 0x42(3)
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    stb 5, 0x5d(3)
    stw 4, 0x44(3)
    stw 5, 0x48(3)
    stb 5, 0x58(3)
    stb 0, 0x59(3)
    stb 0, 0x5a(3)
    stfs 1, 0x4c(3)
    stfs 0, 0x50(3)
    sth 5, 0x54(3)
    sth 5, 0x56(3)
    stw 5, 0x3c(3)
    stw 5, 0xc(3)
    stw 5, 0x10(3)
    stw 5, 0x14(3)
    stw 5, 0x18(3)
    stw 5, 0x1c(3)
    stw 5, 0x20(3)
    stw 5, 0x24(3)
    stw 5, 0x28(3)
    stw 5, 0x2c(3)
    stw 5, 0x30(3)
    stb 5, 0x5f(3)
    blr

