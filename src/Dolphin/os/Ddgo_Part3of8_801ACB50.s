# DDGO cluster, part 3/8 (196B). update() dispatcher - calls 2 state
# handlers (fn_801ACCF0/fn_801ACFF4, landed alongside).
.section extab, "a"
.balign 4
.global etb_80007AFC
etb_80007AFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007AFC, 8

.section extabindex, "a"
.balign 4
.global eti_800149F8
eti_800149F8:
    .4byte fn_801ACB50
    .4byte 0x000000C4
    .4byte etb_80007AFC
.size eti_800149F8, 12

.text
.balign 4
.global fn_801ACB50

fn_801ACB50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_801ACB94
    .4byte 0x40800010 # bge .L_801ACB80
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801ACB88
    .4byte 0x4800001C # b .L_801ACB98
L_801ACB80:
    cmpwi 0, 0x3
    .4byte 0x40800014 # bge .L_801ACB98
L_801ACB88:
    mr 3, 31
    bl fn_801ACFF4
    .4byte 0x48000008 # b .L_801ACB98
L_801ACB94:
    bl fn_801ACCF0
L_801ACB98:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801ACBAC
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801ACBAC:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801ACBC0
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_801ACBC0:
    addi 4, 31, 0x8
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801ACBD8
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_801ACBD8:
    lwz 3, 0x23c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801ACBEC
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_801ACBEC:
    lwz 3, 0x240(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801ACC00
    subi 0, 3, 0x1
    stw 0, 0x240(4)
L_801ACC00:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

