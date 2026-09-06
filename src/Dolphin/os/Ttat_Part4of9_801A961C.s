# TTAT cluster, part 4/9 (152B). update() dispatcher - calls 2 state
# handlers (fn_801A96B4/fn_801A9CF4, landed alongside).
.section extab, "a"
.balign 4
.global etb_80007A74
etb_80007A74:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007A74, 8

.section extabindex, "a"
.balign 4
.global eti_8001492C
eti_8001492C:
    .4byte fn_801A961C
    .4byte 0x00000098
    .4byte etb_80007A74
.size eti_8001492C, 12

.text
.balign 4
.global fn_801A961C

fn_801A961C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x258(3)
    cmpwi 0, 0x5
    .4byte 0x41820018 # beq .L_801A9650
    .4byte 0x40800024 # bge .L_801A9660
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801A9650
    .4byte 0x40800014 # bge .L_801A965C
    .4byte 0x48000014 # b .L_801A9660
L_801A9650:
    mr 3, 31
    bl fn_801A96B4
    .4byte 0x48000008 # b .L_801A9660
L_801A965C:
    bl fn_801A9CF4
L_801A9660:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A9674
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801A9674:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A9688
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801A9688:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A96A0
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801A96A0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

