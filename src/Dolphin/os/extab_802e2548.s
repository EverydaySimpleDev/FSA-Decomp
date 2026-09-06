# Unnamed actor cluster, part 4/4 (548B). Uses the per-room config
# accessor GetRoomConfigRecord plus unfamiliar fn_8006B334/fn_802D9C7C/
# fn_804032E8.
.section extab, "a"
.balign 4
.global etb_8000CF4C
etb_8000CF4C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000CF4C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C054
eti_8001C054:
    .4byte fn_802E2548
    .4byte 0x00000224
    .4byte etb_8000CF4C
.size eti_8001C054, 12

.text
.balign 4
.global fn_802E2548

fn_802E2548:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_804D4768@ha
    stw 0, 0x44(1)
    li 0, 0x2
    addi 4, 4, lbl_804D4768@l
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    li 3, -0x1
    mtctr 0
L_802E2578:
    stw 3, 0x0(4)
    stw 3, 0x4(4)
    stw 3, 0x8(4)
    stw 3, 0xc(4)
    stw 3, 0x10(4)
    stw 3, 0x14(4)
    stw 3, 0x18(4)
    stw 3, 0x1c(4)
    stw 3, 0x20(4)
    stw 3, 0x24(4)
    stw 3, 0x28(4)
    stw 3, 0x2c(4)
    stw 3, 0x30(4)
    stw 3, 0x34(4)
    stw 3, 0x38(4)
    stw 3, 0x3c(4)
    stw 3, 0x40(4)
    stw 3, 0x44(4)
    stw 3, 0x48(4)
    stw 3, 0x4c(4)
    stw 3, 0x50(4)
    stw 3, 0x54(4)
    stw 3, 0x58(4)
    stw 3, 0x5c(4)
    stw 3, 0x60(4)
    stw 3, 0x64(4)
    stw 3, 0x68(4)
    stw 3, 0x6c(4)
    stw 3, 0x70(4)
    stw 3, 0x74(4)
    stw 3, 0x78(4)
    stw 3, 0x7c(4)
    stw 3, 0x80(4)
    stw 3, 0x84(4)
    stw 3, 0x88(4)
    stw 3, 0x8c(4)
    stw 3, 0x90(4)
    stw 3, 0x94(4)
    stw 3, 0x98(4)
    stw 3, 0x9c(4)
    addi 4, 4, 0xa0
    .4byte 0x4200FF5C # bdnz .L_802E2578
    li 0, 0x0
    .4byte 0x900D90F0 # stw r0, lbl_8053ACB0@sda21(r0)
    lwz 0, 0x90(29)
    extrwi 0, 0, 4, 5
    stw 0, 0x234(29)
    lwz 0, 0x90(29)
    extrwi 0, 0, 4, 9
    stw 0, 0x238(29)
    bl GetRoomConfigRecord
    lwz 31, 0x4(3)
    bl GetRoomConfigRecord
    mr 30, 3
    bl GetRoomConfigRecord
    lwz 5, 0x8(30)
    mr 4, 31
    bl fn_802D9C7C
    lwz 30, 0x234(29)
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x238(29)
    add 3, 30, 3
    mulli 0, 0, 0xa
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpwi 0, 0xff
    mr 9, 0
    .4byte 0x40820008 # bne .L_802E2690
    li 9, 0x0
L_802E2690:
    lis 3, 0x6666
    lis 4, lbl_8046E9F8@ha
    addi 0, 3, 0x6667
    mr 5, 31
    mulhw 0, 0, 9
    lis 3, 0x4220
    addi 4, 4, lbl_8046E9F8@l
    addi 30, 3, 0x2020
    addi 3, 1, 0x8
    srawi 7, 0, 2
    srawi 0, 0, 2
    srwi 6, 0, 31
    srwi 8, 7, 31
    add 0, 0, 6
    mulli 0, 0, 0xa
    add 6, 7, 8
    subf 7, 0, 9
    crclr 6
    bl fn_8006B334
    lbz 3, 0x0(31)
    addi 4, 1, 0x8
    lbz 0, 0x1(31)
    extsb 5, 3
    lbz 6, 0x2(31)
    extsb 3, 0
    subi 5, 5, 0x20
    extsb 6, 6
    subi 0, 3, 0x20
    slwi 3, 5, 16
    slwi 0, 0, 8
    add 0, 3, 0
    add 0, 0, 6
    add 30, 0, 30
    subi 30, 30, 0x20
    mr 3, 30
    bl fn_804032E8
    stw 3, 0x244(29)
    li 5, 0x0
    li 3, 0x8
    li 0, 0x2
    stw 5, 0x248(29)
    lwz 4, 0x90(29)
    extrwi 4, 4, 3, 13
    stw 4, 0x23c(29)
    sth 5, 0x24c(29)
    sth 3, 0x24e(29)
    stw 5, 0x240(29)
    stw 0, 0x230(29)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

