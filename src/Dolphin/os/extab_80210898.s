.section extab, "a"
.balign 4
.global etb_8000A018
etb_8000A018:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A018, 8

.global etb_8000A020
etb_8000A020:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A020, 8

.global etb_8000A028
etb_8000A028:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A028, 8

.section extabindex, "a"
.balign 4
.global eti_80017B6C
eti_80017B6C:
    .4byte fn_80210898
    .4byte 0x00000024
    .4byte etb_8000A018
.size eti_80017B6C, 12

.global eti_80017B78
eti_80017B78:
    .4byte fn_802108BC
    .4byte 0x000000D4
    .4byte etb_8000A020
.size eti_80017B78, 12

.global eti_80017B84
eti_80017B84:
    .4byte fn_80210A6C
    .4byte 0x00000048
    .4byte etb_8000A028
.size eti_80017B84, 12

.text
.balign 4
.global fn_80210898
.global fn_802108BC
.global fn_80210990
.global fn_80210A30
.global fn_80210A6C

fn_80210898:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_801CEBD0
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802108BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    bl fn_801CE0A4
    .4byte 0xC042CB38 # lfs f2, lbl_8053FAD8@sda21(r0)
    addi 3, 1, 0x8
    lfs 3, 0x58(30)
    .4byte 0xC002CB44 # lfs f0, lbl_8053FAE4@sda21(r0)
    .4byte 0xC022CB3C # lfs f1, lbl_8053FADC@sda21(r0)
    fmuls 4, 2, 3
    lfs 5, 0x54(30)
    fmuls 3, 0, 3
    .4byte 0xC002CB40 # lfs f0, lbl_8053FAE0@sda21(r0)
    fmuls 2, 1, 5
    stfs 4, 0x14(1)
    fmuls 1, 0, 5
    stfs 3, 0xc(1)
    stfs 1, 0x8(1)
    stfs 2, 0x10(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(30)
    fadds 1, 3, 2
    stfs 0, 0x10(1)
    fadds 0, 4, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239914
    lwz 31, 0x198(30)
    lwz 30, 0x4(30)
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
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80210990:
    lfs 5, 0x54(3)
    cmpwi 4, 0x2
    .4byte 0xC002CB40 # lfs f0, lbl_8053FAE0@sda21(r0)
    lfs 4, 0x58(3)
    fmuls 1, 0, 5
    .4byte 0xC002CB44 # lfs f0, lbl_8053FAE4@sda21(r0)
    .4byte 0xC042CB3C # lfs f2, lbl_8053FADC@sda21(r0)
    fmuls 0, 0, 4
    .4byte 0xC062CB38 # lfs f3, lbl_8053FAD8@sda21(r0)
    stfs 1, 0x0(5)
    fmuls 1, 2, 5
    stfs 0, 0x4(5)
    fmuls 0, 3, 4
    stfs 1, 0x8(5)
    stfs 0, 0xc(5)
    .4byte 0x41820044 # beq .L_80210A10
    .4byte 0x40800014 # bge .L_802109E4
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_802109F0
    .4byte 0x40800024 # bge .L_80210A00
    blr
L_802109E4:
    cmpwi 4, 0x4
    bgelr
    .4byte 0x48000034 # b .L_80210A20
L_802109F0:
    lfs 0, 0x8(5)
    fnmsubs 0, 3, 5, 0
    stfs 0, 0x8(5)
    blr
L_80210A00:
    lfs 0, 0x0(5)
    fmadds 0, 3, 5, 0
    stfs 0, 0x0(5)
    blr
L_80210A10:
    lfs 0, 0xc(5)
    fnmsubs 0, 3, 4, 0
    stfs 0, 0xc(5)
    blr
L_80210A20:
    lfs 0, 0x4(5)
    fmadds 0, 3, 4, 0
    stfs 0, 0x4(5)
    blr

fn_80210A30:
    lfs 5, 0x54(3)
    .4byte 0xC002CB40 # lfs f0, lbl_8053FAE0@sda21(r0)
    lfs 4, 0x58(3)
    fmuls 1, 0, 5
    .4byte 0xC002CB44 # lfs f0, lbl_8053FAE4@sda21(r0)
    .4byte 0xC042CB3C # lfs f2, lbl_8053FADC@sda21(r0)
    fmuls 0, 0, 4
    .4byte 0xC062CB38 # lfs f3, lbl_8053FAD8@sda21(r0)
    stfs 1, 0x0(4)
    fmuls 1, 2, 5
    stfs 0, 0x4(4)
    fmuls 0, 3, 4
    stfs 1, 0x8(4)
    stfs 0, 0xc(4)
    blr

fn_80210A6C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022CB48 # lfs f1, lbl_8053FAE8@sda21(r0)
    addi 3, 3, 0x2a8
    stw 0, 0x14(1)
    .4byte 0xC042CB4C # lfs f2, lbl_8053FAEC@sda21(r0)
    stw 31, 0xc(1)
    li 31, 0x0
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x40820008 # bne .L_80210A9C
    li 31, 0x1
L_80210A9C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

