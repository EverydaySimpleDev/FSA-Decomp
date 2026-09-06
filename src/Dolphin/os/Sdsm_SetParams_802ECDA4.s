# fn_802ECDA4 - SDSM: setParams (0x178)
# Allocates a sub-object via fn_80084370 (operator new) and constructs it
# via fn_804578F4 (same owned-sub-object pattern as WAVE's setParams),
# spawns effects via fn_8013CC50 x4.
.section extab, "a"
.balign 4
.global etb_8000D1E4
etb_8000D1E4:
    .4byte 0x100A0000
    .4byte 0x0000015C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000D1E4, 24

.section extabindex, "a"
.balign 4
.global eti_8001C408
eti_8001C408:
    .4byte fn_802ECDA4
    .4byte 0x00000178
    .4byte etb_8000D1E4
.size eti_8001C408, 12

.text
.balign 4
.global fn_802ECDA4

fn_802ECDA4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002E458 # lfs f0, lbl_805413F8@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    stw 0, 0x254(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0x10(3)
    fneg 1, 1
    stfs 1, 0x244(31)
    lfs 1, 0x20(3)
    fneg 1, 1
    stfs 1, 0x248(31)
    stfs 0, 0x24c(31)
    lwz 3, 0x23c(31)
    clrlwi. 0, 3, 31
    .4byte 0x41820034 # beq .L_802ECE38
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3e6
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x480000A0 # b .L_802ECED4
L_802ECE38:
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x41820034 # beq .L_802ECE70
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3e5
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000068 # b .L_802ECED4
L_802ECE70:
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x41820034 # beq .L_802ECEA8
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3e4
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x48000030 # b .L_802ECED4
L_802ECEA8:
    lwz 3, 0x4(31)
    addi 4, 31, 0x244
    .4byte 0xC022E45C # lfs f1, lbl_805413FC@sda21(r0)
    li 5, 0x3eb
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
L_802ECED4:
    li 0, 0x0
    li 3, 0x5c
    stw 0, 0x240(31)
    stw 0, 0x250(31)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820014 # beq .L_802ECF00
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_802ECF00:
    stw 30, 0x230(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

