.section extab, "a"
.balign 4
.global etb_80008178
etb_80008178:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008178, 8

.section extabindex, "a"
.balign 4
.global eti_80015358
eti_80015358:
    .4byte fn_801C79A0
    .4byte 0x00000230
    .4byte etb_80008178
.size eti_80015358, 12

.text
.balign 4
.global fn_801C79A0

# fn_801C79A0(this) - a genuine CROSS-ROOM RAIL TELEPORT. Clears
# this->0x230 bit 6, then:
# 1. Seeds a baseline target from the ring-tracker's (&this->0x358)
#    current position (RAIL's CONFIRMED fn_800FE294,
#    project_fsa_rail_actor_identified.md).
# 2. Snapshots the CURRENT room (this->0x4) and position
#    (this->0xc/0x10/0x14) into this->0x56c/0x570/0x574/0x578 - "where
#    I was."
# 3. TELEPORTS: overwrites this->0x4 with the ring's OWN room
#    (fn_800FE25C(ringObj,0xff)), and this->0xc/0x10/0x14 AND the saved
#    position pair this->0x18/0x1c/0x20 with the baseline target from
#    step 1 - moving the actor into the ring's room at the ring's
#    position, in one step, regardless of whether it's the same room.
# 4. Snapshots the NEW room+position into this->0x57c/0x580/0x584/0x588
#    ("where I am now").
# 5. Sets/clears this->0x230 bit 1 based on RAIL's fn_800FD594(ringObj,
#    0xff) (not decompiled), steps the ring index one way (direction
#    chosen from the ring's own mode byte at ringObj+0x1) via the
#    CONFIRMED fn_800FD818, then refreshes the target via the
#    CONFIRMED fn_801C8C84(this, 0, 1) (allowRefresh=1 this time) and
#    picks a fresh hop-count into this->0x55d using the EXACT same
#    "count valid links, clamp a random pick" logic as fn_801C8BC4
#    (extab_801c8bc4.s).
# 6. If this->0x524 bit 29 is set: ROLLS BACK the room/position change
#    from step 3 (restoring the step-2 snapshot) while keeping the
#    refreshed target/hop-count from step 5, checks whether the
#    original room is still valid via the CONFIRMED fn_801CD2F8, caches
#    that into this->0x58c, and transitions to state 0x18. Otherwise
#    (bit 29 clear): keeps the teleport and transitions to state 0x17.
fn_801C79A0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    lwz 0, 0x230(3)
    addi 3, 31, 0x358
    rlwinm 0, 0, 0, 7, 5
    stw 0, 0x230(31)
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x8
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0x8(1)
    addi 3, 31, 0x358
    stfs 0, 0x32c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x330(31)
    lfs 0, 0x10(1)
    stfs 0, 0x334(31)
    lwz 0, 0x4(31)
    stw 0, 0x56c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x570(31)
    lfs 0, 0x10(31)
    stfs 0, 0x574(31)
    lfs 0, 0x14(31)
    stfs 0, 0x578(31)
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FE25C
    stw 3, 0x4(31)
    addi 3, 31, 0x358
    psq_l 1, 0x32c(31), 0, 0
    lfs 0, 0x334(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    psq_l 1, 0x32c(31), 0, 0
    lfs 0, 0x334(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    lwz 0, 0x4(31)
    stw 0, 0x57c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x580(31)
    lfs 0, 0x10(31)
    stfs 0, 0x584(31)
    lfs 0, 0x14(31)
    stfs 0, 0x588(31)
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD594
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801C7A90
    lwz 0, 0x230(31)
    oris 0, 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801C7A9C
L_801C7A90:
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 15, 13
    stw 0, 0x230(31)
L_801C7A9C:
    addi 3, 31, 0x358
    li 30, 0x1
    bl GetCurrentSlotPtr
    lbz 0, 0x1(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801C7AB8
    li 30, -0x1
L_801C7AB8:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    mr 4, 30
    bl fn_800FD818
    mr 3, 31
    li 4, 0x0
    li 5, 0x1
    bl fn_801C8C84
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lwz 4, 0x4(31)
    addi 5, 1, 0x14
    li 6, 0x30
    bl fn_800FD894
    clrlwi 30, 3, 24
    cmpwi 30, 0x3
    .4byte 0x41810010 # bgt .L_801C7B08
    li 0, 0x1
    stb 0, 0x55d(31)
    .4byte 0x48000048 # b .L_801C7B4C
L_801C7B08:
    li 3, 0x4
    bl fn_801CD664
    addi 0, 3, 0x1
    stb 0, 0x55d(31)
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820010 # beq .L_801C7B30
    lbz 3, 0x55d(31)
    addi 0, 3, 0x1
    stb 0, 0x55d(31)
L_801C7B30:
    subi 0, 30, 0x2
    lbz 3, 0x55d(31)
    clrlwi 0, 0, 24
    cmplw 0, 3
    .4byte 0x41800008 # blt .L_801C7B48
    mr 0, 3
L_801C7B48:
    stb 0, 0x55d(31)
L_801C7B4C:
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x41820058 # beq .L_801C7BAC
    lwz 0, 0x56c(31)
    stw 0, 0x4(31)
    lfs 0, 0x570(31)
    stfs 0, 0xc(31)
    lfs 0, 0x574(31)
    stfs 0, 0x10(31)
    lfs 0, 0x578(31)
    stfs 0, 0x14(31)
    lwz 3, 0x56c(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801C7B94
    li 0, 0x1
    stw 0, 0x58c(31)
    .4byte 0x4800000C # b .L_801C7B9C
L_801C7B94:
    li 0, 0x0
    stw 0, 0x58c(31)
L_801C7B9C:
    mr 3, 31
    li 4, 0x18
    bl fn_801C3B7C
    .4byte 0x48000010 # b .L_801C7BB8
L_801C7BAC:
    mr 3, 31
    li 4, 0x17
    bl fn_801C3B7C
L_801C7BB8:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
