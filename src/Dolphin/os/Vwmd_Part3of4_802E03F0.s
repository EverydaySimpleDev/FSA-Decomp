# VWMD cluster, part 3/4 (364B). Uses the player validity accessor
# fn_8023DE58, the per-room config family GetRoomConfigRecord/fn_802D7790/
# fn_802D77BC/fn_802D800C, plus unfamiliar fn_802373EC.
.section extab, "a"
.balign 4
.global etb_8000CEB4
etb_8000CEB4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000CEB4, 8

.section extabindex, "a"
.balign 4
.global eti_8001BF88
eti_8001BF88:
    .4byte fn_802E03F0
    .4byte 0x0000016C
    .4byte etb_8000CEB4
.size eti_8001BF88, 12

.text
.balign 4
.global fn_802E03F0

fn_802E03F0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820084 # beq .L_802E0498
    li 30, 0x0
    li 29, 0x0
L_802E0420:
    mr 3, 29
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x4082001C # bne .L_802E044C
    mr 3, 29
    bl fn_802373EC
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_802E044C
    li 30, 0x1
    .4byte 0x48000010 # b .L_802E0458
L_802E044C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFCC # blt .L_802E0420
L_802E0458:
    bl GetRoomConfigRecord
    lwz 4, 0x230(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802E0474
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_802E0488
L_802E0474:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x2
    bl fn_802D7790
    .4byte 0x48000014 # b .L_802E0498
L_802E0488:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x2
    bl fn_802D77BC
L_802E0498:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 28, 29
    .4byte 0x4182004C # beq .L_802E04EC
    lwz 30, 0x230(31)
    cmpwi 30, 0x0
    .4byte 0x41820040 # beq .L_802E04EC
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802E04DC
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    lwz 4, 0x4(31)
    rlwinm 5, 0, 0, 28, 29
    bl fn_802D77BC
    .4byte 0x48000014 # b .L_802E04EC
L_802E04DC:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0xc
    bl fn_802D7790
L_802E04EC:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 18, 19
    .4byte 0x4182004C # beq .L_802E0540
    lwz 30, 0x230(31)
    cmpwi 30, 0x0
    .4byte 0x41820040 # beq .L_802E0540
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802E0530
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    lwz 4, 0x4(31)
    rlwinm 5, 0, 0, 18, 19
    bl fn_802D77BC
    .4byte 0x48000014 # b .L_802E0540
L_802E0530:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x3000
    bl fn_802D7790
L_802E0540:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

