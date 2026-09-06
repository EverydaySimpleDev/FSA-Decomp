.section extab, "a"
.balign 4
.global etb_80008188
etb_80008188:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008188, 8

.section extabindex, "a"
.balign 4
.global eti_80015370
eti_80015370:
    .4byte fn_801C7EE4
    .4byte 0x000000B4
    .4byte etb_80008188
.size eti_80015370, 12

.text
.balign 4
.global fn_801C7EE4

# fn_801C7EE4(this) - a "is my path to the current target blocked"
# check, sibling to fn_801C71BC's recovery logic. Skipped entirely if
# this->0x230 bit 6 is set. Otherwise, only proceeds if RAIL's
# CONFIRMED fn_800FD548(ringObj, 0xff) (project_fsa_rail_actor_identified.md
# ring-traversal library, &this->0x358 ring-tracker) reports true. Then:
# if the current room's config flag (GetRoomConfigRecord()->0x31df, CONFIRMED
# per-room restriction) is set AND the vertical distance between
# current height (this->0x10) and target height (this->0x330) is
# within an epsilon (lbl_8053EEC8) - i.e. roughly level with the
# target - OR the room flag is clear, runs the CONFIRMED
# fn_801CF888(this, &this->0xc, &this->0x32c) line-of-sight sweep from
# current position to the cached target (this->0x32c, the SAME field
# fn_801C71BC sets). If that reports an obstruction, ORs 0x40 into
# this->0x230 - the same "target needs attention" flag fn_801C71BC
# also sets when it (re)acquires a fresh waypoint.
fn_801C7EE4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x4082007C # bne .L_801C7F80
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD548
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_801C7F80
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_801C7F58
    lfs 2, 0x10(30)
    lfs 1, 0x330(30)
    .4byte 0xC002BF28 # lfs f0, lbl_8053EEC8@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810020 # bgt .L_801C7F74
L_801C7F58:
    lwz 6, 0x4(30)
    mr 3, 30
    addi 4, 30, 0xc
    addi 5, 30, 0x32c
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801C7F80
L_801C7F74:
    lwz 0, 0x230(30)
    oris 0, 0, 0x40
    stw 0, 0x230(30)
L_801C7F80:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
