.section extab, "a"
.balign 4
.global etb_80008180
etb_80008180:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_80008180, 8

.section extabindex, "a"
.balign 4
.global eti_80015364
eti_80015364:
    .4byte fn_801C7BD0
    .4byte 0x00000314
    .4byte etb_80008180
.size eti_80015364, 12

.text
.balign 4
.global fn_801C7BD0

# fn_801C7BD0(this) - a "have I arrived at my rail target, and if so
# advance" handler, the counterpart in this later part of the state
# machine to the original fn_801C5B08 arrival core
# (project_fsa_slk2_rail_riding_core.md).
#
# Special case: if the CONFIRMED position-history ring buffer count
# (this->0x2a8, project_fsa_slk2_target_acquisition_solved.md) is
# exactly 2, and the current position is within a combined threshold
# (lbl_8053EEF0+lbl_8053EDF0) of the target, immediately retargets to
# history slot 1's stored point (this->0x2ac/0x2b0, height fixed to
# lbl_8053EEF4), resets the history count to 0, and returns false
# regardless - a degenerate "only 2 history points recorded, just jump
# to the older one" shortcut.
#
# Normal path: in a config-restricted room (GetRoomConfigRecord()->0x31df,
# CONFIRMED), re-derives the arrival target from the ring's OWN
# position (RAIL's CONFIRMED fn_800FE294) if it passes the CONFIRMED
# fn_801CCB1C room-containment test (extab_801c887c.s); if it FAILS
# that test, remembers this (a local flag) but still proceeds using
# the ring's raw position and, if the ring is confirmed in my own room
# (fn_800FE25C) and RAIL's fn_800FD548 gate passes, computes a
# candidate point via the CONFIRMED fn_801CC9F8 cardinal-offset check,
# refining it through the CONFIRMED fn_8022461C terrain classifier
# (or falling back to a position that keeps this actor's own height).
# In an unrestricted room, skips all of this and uses the target as
# given.
#
# Final check: if the (possibly re-derived) target is NOT yet within
# fn_29's threshold radius (default lbl_8053EEF8, or the recomputed sum
# in the restricted-room case) of the current position, returns false
# (not arrived). If arrived: if the earlier containment test had
# failed, calls the CONFIRMED fn_801C8B50 full re-acquire instead of
# advancing; otherwise sets/clears this->0x230 bit 1 based on RAIL's
# fn_800FD594 (the SAME pattern fn_801C79A0 uses, extab_801c79a0.s),
# steps the ring index one way via the CONFIRMED fn_800FD818, refreshes
# the target via the CONFIRMED fn_801C8C84(this,0,0), and returns true.
fn_801C7BD0:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 30, 3
    li 31, 0x0
    lwz 3, 0x2a8(3)
    cmpwi 3, 0x2
    .4byte 0x408200A4 # bne .L_801C7CB8
    lfs 3, 0x32c(30)
    lfs 1, 0xc(30)
    lfs 2, 0x330(30)
    lfs 0, 0x10(30)
    fsubs 4, 3, 1
    .4byte 0xC022BF50 # lfs f1, lbl_8053EEF0@sda21(r0)
    fsubs 3, 2, 0
    .4byte 0xC002BE50 # lfs f0, lbl_8053EDF0@sda21(r0)
    fmuls 2, 4, 4
    fadds 0, 1, 0
    fmuls 1, 3, 3
    fmuls 0, 0, 0
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820254 # bne .L_801C7EA8
    cmpwi 3, 0x1
    li 0, 0x1
    .4byte 0x41810008 # bgt .L_801C7C68
    li 0, 0x0
L_801C7C68:
    slwi 0, 0, 3
    cmpwi 3, 0x1
    add 3, 30, 0
    li 0, 0x1
    lfs 2, 0x2b0(3)
    .4byte 0x41810008 # bgt .L_801C7C84
    li 0, 0x0
L_801C7C84:
    slwi 0, 0, 3
    .4byte 0xC002BF54 # lfs f0, lbl_8053EEF4@sda21(r0)
    add 3, 30, 0
    li 0, 0x0
    lfs 1, 0x2ac(3)
    stfs 1, 0x32c(30)
    stfs 2, 0x330(30)
    stfs 0, 0x334(30)
    stw 0, 0x2a8(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 20, 18
    stw 0, 0x230(30)
    .4byte 0x480001F4 # b .L_801C7EA8
L_801C7CB8:
    lfs 31, 0x32c(30)
    li 28, 0x0
    lfs 30, 0x330(30)
    .4byte 0xC3A2BF58 # lfs f29, lbl_8053EEF8@sda21(r0)
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820114 # beq .L_801C7DF4
    .4byte 0xC022BF50 # lfs f1, lbl_8053EEF0@sda21(r0)
    addi 3, 30, 0x358
    .4byte 0xC002BE50 # lfs f0, lbl_8053EDF0@sda21(r0)
    fadds 29, 1, 0
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x20
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0x28(1)
    addi 3, 1, 0x2c
    psq_l 1, 0x20(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 1, 0x0(3), 0, 0
    lwz 4, 0x4(30)
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801C7D38
    lfs 31, 0x2c(1)
    lfs 30, 0x30(1)
    .4byte 0x48000008 # b .L_801C7D3C
L_801C7D38:
    li 28, 0x1
L_801C7D3C:
    lwz 29, 0x4(30)
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FE25C
    cmpw 29, 3
    .4byte 0x408200A0 # bne .L_801C7DF4
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD548
    clrlwi. 0, 3, 24
    .4byte 0x40820088 # bne .L_801C7DF4
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x14
    li 5, 0xff
    bl fn_800FE294
    psq_l 1, 0x14(1), 0, 0
    addi 3, 30, 0xc
    lfs 0, 0x1c(1)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 4, 0x4(30)
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801C7DDC
    lwz 4, 0x4(30)
    addi 3, 1, 0x8
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x40820020 # bne .L_801C7DDC
    lfs 0, 0x8(1)
    stfs 0, 0x32c(30)
    lfs 0, 0xc(1)
    stfs 0, 0x330(30)
    lfs 0, 0x10(1)
    stfs 0, 0x334(30)
    .4byte 0x4800001C # b .L_801C7DF4
L_801C7DDC:
    lfs 2, 0x10(1)
    lfs 1, 0x10(30)
    lfs 0, 0x8(1)
    stfs 0, 0x32c(30)
    stfs 1, 0x330(30)
    stfs 2, 0x334(30)
L_801C7DF4:
    lfs 2, 0xc(30)
    fmuls 0, 29, 29
    lfs 1, 0x10(30)
    fsubs 2, 31, 2
    fsubs 1, 30, 1
    fmuls 2, 2, 2
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082008C # bne .L_801C7EA8
    clrlwi. 0, 28, 24
    .4byte 0x41820010 # beq .L_801C7E34
    mr 3, 30
    bl fn_801C8B50
    .4byte 0x48000074 # b .L_801C7EA4
L_801C7E34:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    li 4, 0xff
    bl fn_800FD594
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801C7E5C
    lwz 0, 0x230(30)
    oris 0, 0, 0x2
    stw 0, 0x230(30)
    .4byte 0x48000010 # b .L_801C7E68
L_801C7E5C:
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 15, 13
    stw 0, 0x230(30)
L_801C7E68:
    addi 3, 30, 0x358
    li 31, 0x1
    bl GetCurrentSlotPtr
    lbz 0, 0x1(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801C7E84
    li 31, -0x1
L_801C7E84:
    addi 3, 30, 0x358
    bl GetCurrentSlotPtr
    mr 4, 31
    bl fn_800FD818
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801C8C84
L_801C7EA4:
    li 31, 0x1
L_801C7EA8:
    mr 3, 31
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 0, 0x84(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
