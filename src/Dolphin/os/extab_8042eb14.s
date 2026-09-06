# 901KB-gap non-actor manager block: 6 function(s), 948 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010B9C
etb_80010B9C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010B9C, 8

.global etb_80010BA4
etb_80010BA4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010BA4, 8

.global etb_80010BAC
etb_80010BAC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80010BAC, 8

.global etb_80010BB4
etb_80010BB4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010BB4, 8

.global etb_80010BBC
etb_80010BBC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80010BBC, 8

.section extabindex, "a"
.balign 4
.global eti_80020BC0
eti_80020BC0:
    .4byte fn_8042EB24
    .4byte 0x00000074
    .4byte etb_80010B9C
.size eti_80020BC0, 12

.global eti_80020BCC
eti_80020BCC:
    .4byte fn_8042EB98
    .4byte 0x00000054
    .4byte etb_80010BA4
.size eti_80020BCC, 12

.global eti_80020BD8
eti_80020BD8:
    .4byte fn_8042EBEC
    .4byte 0x00000090
    .4byte etb_80010BAC
.size eti_80020BD8, 12

.global eti_80020BE4
eti_80020BE4:
    .4byte fn_8042EC7C
    .4byte 0x00000130
    .4byte etb_80010BB4
.size eti_80020BE4, 12

.global eti_80020BF0
eti_80020BF0:
    .4byte fn_8042EDAC
    .4byte 0x0000011C
    .4byte etb_80010BBC
.size eti_80020BF0, 12

.text
.balign 4
.global fn_8042EB14
.global fn_8042EB24
.global fn_8042EB98
.global fn_8042EBEC
.global fn_8042EC7C
.global fn_8042EDAC

fn_8042EB14:
    li 0, 0x0
    sth 0, 0x10(3)
    stb 0, 0x12(3)
    blr

fn_8042EB24:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC0420B5C # lfs f2, lbl_80543AFC@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x8(3)
    bl fn_80402E08
    lwz 3, 0x8(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0xc(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    li 0, 0x0
    sth 0, 0x26(3)
    sth 0, 0x10(31)
    stb 0, 0x12(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EB98:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x12(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8042EBD8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_8042EBD8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EBEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lbz 0, 0x12(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8042EC60
    lwz 3, 0x8(30)
    li 4, 0xa
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420B5C # lfs f2, lbl_80543AFC@sda21(r0)
    bl fn_80402940
    lwz 7, 0xc(30)
    mr 31, 3
    li 4, 0xa
    li 6, 0x0
    lbz 5, 0x28(7)
    mr 3, 7
    bl fn_80402628
    clrlwi. 0, 31, 24
    .4byte 0x4082000C # bne .L_8042EC54
    li 3, 0x0
    .4byte 0x48000014 # b .L_8042EC64
L_8042EC54:
    li 0, 0x0
    sth 0, 0x10(30)
    stb 0, 0x12(30)
L_8042EC60:
    li 3, 0x1
L_8042EC64:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EC7C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0x12(3)
    cmplwi 0, 0x0
    .4byte 0x418200FC # beq .L_8042ED94
    lha 3, 0x10(31)
    addi 0, 3, 0x1
    sth 0, 0x10(31)
    lha 0, 0x10(31)
    cmpwi 0, 0x8
    .4byte 0x40800060 # bge .L_8042ED10
    subfic 3, 0, 0x8
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC8820B70 # lfd f4, lbl_80543B10@sda21(r0)
    .4byte 0xC0A20B64 # lfs f5, lbl_80543B04@sda21(r0)
    .4byte 0xC0420B68 # lfs f2, lbl_80543B08@sda21(r0)
    .4byte 0xC0020B60 # lfs f0, lbl_80543B00@sda21(r0)
    xoris 0, 3, 0x8000
    lwz 3, 0x8(31)
    stw 0, 0xc(1)
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    lfd 3, 0x8(1)
    fsubs 3, 3, 4
    fmuls 3, 5, 3
    fmadds 2, 3, 2, 0
    bl fn_80402E08
    lwz 3, 0xc(31)
    li 4, 0x8
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    .4byte 0x48000088 # b .L_8042ED94
L_8042ED10:
    subfic 3, 0, 0xb
    lis 0, 0x4330
    mullw 4, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    .4byte 0xC0820B60 # lfs f4, lbl_80543B00@sda21(r0)
    .4byte 0xC0020B6C # lfs f0, lbl_80543B0C@sda21(r0)
    lwz 3, 0x8(31)
    xoris 0, 4, 0x8000
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    stw 0, 0xc(1)
    lfd 2, 0x8(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fdivs 2, 2, 0
    bl fn_80402E08
    lwz 4, 0xc(31)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lha 0, 0x10(31)
    cmpwi 0, 0xb
    .4byte 0x41800020 # blt .L_8042ED94
    lwz 4, 0x8(31)
    li 0, 0x0
    li 3, 0x1
    sth 0, 0x22(4)
    lwz 4, 0xc(31)
    sth 0, 0x26(4)
    .4byte 0x48000008 # b .L_8042ED98
L_8042ED94:
    li 3, 0x0
L_8042ED98:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042EDAC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lbz 0, 0x12(3)
    cmplwi 0, 0x0
    .4byte 0x408200D0 # bne .L_8042EEA8
    lwz 3, 0x4(29)
    lis 4, 0x6d74
    addi 6, 4, 0x3031
    li 5, 0x546d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    clrlwi 31, 31, 24
    mr 4, 30
    mr 5, 31
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(29)
    lis 4, 0x6d74
    addi 6, 4, 0x3032
    li 5, 0x546d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 30
    mr 5, 31
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(29)
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    .4byte 0xC0420B5C # lfs f2, lbl_80543AFC@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x8(29)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0xc(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0xc(29)
    li 5, 0x0
    li 0, 0x1
    li 3, 0x1
    sth 5, 0x26(4)
    sth 5, 0x10(29)
    stb 0, 0x12(29)
    .4byte 0x48000008 # b .L_8042EEAC
L_8042EEA8:
    li 3, 0x0
L_8042EEAC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

