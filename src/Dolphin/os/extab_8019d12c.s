# ALCE (vtable lbl_804A2AB0, ctor fn_80201540) cluster, part 1/6
# (384B). update() dispatcher - routes to 3 private state handlers
# (fn_8019D2AC/fn_8019D958/fn_8019DC5C, landed alongside), plus calls
# fn_801F0D20 and the per-room config accessor GetRoomConfigRecord.
.section extab, "a"
.balign 4
.global etb_800078AC
etb_800078AC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800078AC, 8

.section extabindex, "a"
.balign 4
.global eti_80014680
eti_80014680:
    .4byte fn_8019D12C
    .4byte 0x00000180
    .4byte etb_800078AC
.size eti_80014680, 12

.text
.balign 4
.global fn_8019D12C

fn_8019D12C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8019D15C
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_8019D160
L_8019D15C:
    addi 7, 3, 0xdc
L_8019D160:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 6, 0x0(7)
    lwz 8, 0x24(3)
    lwz 5, 0x4(7)
    lbz 0, 0x7f5(8)
    lwz 4, 0x8(7)
    lwz 3, 0xc(7)
    cmplwi 0, 0x0
    stw 6, 0x8(1)
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    .4byte 0x4082003C # bne .L_8019D1CC
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(8)
    li 0, 0x0
    lfs 1, 0x8(1)
    stw 3, 0x7f8(8)
    lfs 0, 0xc(1)
    stfs 1, 0x808(8)
    lfs 1, 0x10(1)
    stfs 0, 0x80c(8)
    lfs 0, 0x14(1)
    stfs 1, 0x810(8)
    stfs 0, 0x814(8)
    stb 0, 0x7f6(8)
L_8019D1CC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x4182006C # beq .L_8019D240
    .4byte 0x40800010 # bge .L_8019D1E8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8019D1F4
    .4byte 0x48000070 # b .L_8019D254
L_8019D1E8:
    cmpwi 0, 0x4
    .4byte 0x40800068 # bge .L_8019D254
    .4byte 0x4800005C # b .L_8019D24C
L_8019D1F4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8019D204
    .4byte 0x48000054 # b .L_8019D254
L_8019D204:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_8019D254
    mr 3, 31
    li 4, 0x42
    bl fn_801F0D20
    mr 3, 31
    bl fn_8019DC5C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000018 # b .L_8019D254
L_8019D240:
    mr 3, 31
    bl fn_8019D958
    .4byte 0x4800000C # b .L_8019D254
L_8019D24C:
    mr 3, 31
    bl fn_8019D2AC
L_8019D254:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019D268
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8019D268:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019D27C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8019D27C:
    addi 4, 31, 0x8
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019D294
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_8019D294:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

