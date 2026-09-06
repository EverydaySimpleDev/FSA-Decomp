# fn_802E6638 - BGMN: setParams (0xF0)
# Extracts bitfields from this->0x90 into this->0x234/0x238/0x23c/0x240/
# 0x250, calls GetRoomConfigRecord (per-room config accessor), then computes a
# negative x/z half-extent offset pair (via the classic int-to-float
# 0x43300000/0x80000000 magic-number conversion) stored at 0x60/0x64/
# 0x68/0x6c; sets this->0x94=-1, zeroes 0x230, sets 0x24c=-1.
.section extab, "a"
.balign 4
.global etb_8000D01C
etb_8000D01C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D01C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C174
eti_8001C174:
    .4byte fn_802E6638
    .4byte 0x000000F0
    .4byte etb_8000D01C
.size eti_8001C174, 12

.text
.balign 4
.global fn_802E6638

fn_802E6638:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 3, 0, 5, 5
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    extrwi 3, 0, 5, 10
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 24
    stw 0, 0x250(31)
    bl GetRoomConfigRecord
    lwz 0, 0x34(3)
    lis 6, 0x4330
    lis 3, 0x1
    stw 6, 0x10(1)
    .4byte 0xC842E290 # lfd f2, lbl_80541230@sda21(r0)
    subi 4, 3, 0x1
    stw 0, 0x248(31)
    li 3, 0x0
    .4byte 0xC062E288 # lfs f3, lbl_80541228@sda21(r0)
    li 0, -0x1
    lwz 5, 0x238(31)
    lwz 7, 0x23c(31)
    xoris 5, 5, 0x8000
    stw 6, 0x8(1)
    xoris 6, 7, 0x8000
    stw 5, 0x14(1)
    stw 6, 0xc(1)
    lfd 0, 0x10(1)
    lfd 1, 0x8(1)
    fsubs 0, 0, 2
    fsubs 1, 1, 2
    fmuls 4, 3, 0
    fmuls 2, 3, 1
    fneg 1, 4
    fneg 0, 2
    stfs 1, 0x60(31)
    stfs 0, 0x64(31)
    stfs 4, 0x68(31)
    stfs 2, 0x6c(31)
    sth 4, 0x94(31)
    stw 3, 0x230(31)
    stw 0, 0x24c(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

