# TLWP cluster, part 3/7 (144B). update() dispatcher - calls 2 state
# handlers (fn_801B5228/fn_801B56A0, landed alongside).
.section extab, "a"
.balign 4
.global etb_80007C1C
etb_80007C1C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007C1C, 8

.section extabindex, "a"
.balign 4
.global eti_80014BA8
eti_80014BA8:
    .4byte fn_801B5198
    .4byte 0x00000090
    .4byte etb_80007C1C
.size eti_80014BA8, 12

.text
.balign 4
.global fn_801B5198

fn_801B5198:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x250(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801B51C8
    .4byte 0x4180001C # blt .L_801B51D4
    cmpwi 0, 0x4
    .4byte 0x40800014 # bge .L_801B51D4
    .4byte 0x4800000C # b .L_801B51D0
L_801B51C8:
    bl fn_801B56A0
    .4byte 0x48000008 # b .L_801B51D4
L_801B51D0:
    bl fn_801B5228
L_801B51D4:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B51E8
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801B51E8:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B51FC
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801B51FC:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B5214
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801B5214:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

