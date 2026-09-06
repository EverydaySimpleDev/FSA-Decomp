.section extab, "a"
.balign 4
.global etb_8000DC2C
etb_8000DC2C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DC2C, 8

.section extabindex, "a"
.balign 4
.global eti_8001D2A8
eti_8001D2A8:
    .4byte fn_8032B7C0
    .4byte 0x000003D0
    .4byte etb_8000DC2C
.size eti_8001D2A8, 12

.text
.balign 4
.global fn_8032B7C0

# fn_8032B7C0(this) - RUPY's "push away from a nearby standing player"
# gate, called once per frame from the very start of update()
# (extab_8032c664.s, right after the anchor-position cache). Returns
# no value; acts purely by side effect.
#
# Skips entirely for subtype 0x23/0x24. Otherwise queries the level
# config record (`GetRoomConfigRecord`, byte `0x31df`) to pick one of two
# nearly-identical modes:
#
# MODE A (flag clear, states 1/9 only): scans all 4 player slots
# (`fn_8023A51C` valid check + `fn_8023DE58` owner match + a squared-
# distance test between this actor's position and the player's, via
# `fn_8023A478`) for one standing too close. If found and still
# grounded (this->0x14<=0), sets a fixed push speed (this->0x44), then
# calls the CONFIRMED `fn_8023A240` (see extab_8023a240.s) - which
# takes NO position argument and instead scans for any ELIGIBLE
# player, returning that player's SLOT INDEX (0-3, or -1) - and stores
# a FIXED, per-slot unit-direction pair into this->0x3c/0x40 (paired-
# single store; one hardcoded direction per possible slot index, not a
# spatial angle calculation). Marks settled (this->0x260=1) and
# returns to state 0.
#
# MODE B (flag set, states 0/1/9): first (re)initializes a "settle
# anchor" triple (this->0x284/0x288/0x28c=1.0, this->0x283=1) read
# elsewhere by the CONFIRMED `fn_8032B3F8` ground-physics gate, ticks
# the CONFIRMED `fn_801F2618` effect handle and stores its result into
# this->0x27e (ALSO read by `fn_8032B3F8`), and restores the current
# position from the frame-start anchor snapshot (this->0x29c/0x2a0/
# 0x2a4, cached at the top of update()) - undoing any movement applied
# so far this frame. For state 0, stops here. For states 1/9, runs the
# SAME player-proximity scan and per-slot push-direction dispatch as
# Mode A (gated additionally on this->0x27e being set), then marks
# settled and returns to state 0 the same way.
#
# In short: an anti-clutter mechanic that gently shoves a resting rupee
# away from whichever player is standing on top of it, snapping back to
# idle once resolved.
fn_8032B7C0:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    stw 28, 0x70(1)
    lhz 0, 0x94(3)
    cmplwi 0, 0x23
    .4byte 0x41820388 # beq .L_8032BB70
    cmplwi 0, 0x24
    .4byte 0x40820008 # bne .L_8032B7F8
    .4byte 0x4800037C # b .L_8032BB70
L_8032B7F8:
    lwz 30, 0x4(31)
    li 29, 0x0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082018C # bne .L_8032B9A0
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8032B82C
    cmpwi 0, 0x9
    .4byte 0x40820348 # bne .L_8032BB70
L_8032B82C:
    li 28, 0x0
L_8032B830:
    mr 3, 28
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_8032B894
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820044 # bne .L_8032B894
    mr 3, 28
    bl fn_8023A478
    lfs 3, 0x0(3)
    lfs 0, 0xc(31)
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002EE18 # lfs f0, lbl_80541DB8@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4181000C # bgt .L_8032B894
    li 29, 0x1
    .4byte 0x48000010 # b .L_8032B8A0
L_8032B894:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF94 # blt .L_8032B830
L_8032B8A0:
    clrlwi. 0, 29, 24
    .4byte 0x418202CC # beq .L_8032BB70
    lfs 1, 0x14(31)
    .4byte 0xC002EDF8 # lfs f0, lbl_80541D98@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408202B8 # bne .L_8032BB70
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 0, 0x44(31)
    bl fn_8023A240
    cmpwi 3, 0x2
    .4byte 0x41820074 # beq .L_8032B940
    .4byte 0x40800014 # bge .L_8032B8E4
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8032B8F0
    .4byte 0x4080003C # bge .L_8032B918
    .4byte 0x480000AC # b .L_8032B98C
L_8032B8E4:
    cmpwi 3, 0x4
    .4byte 0x408000A4 # bge .L_8032B98C
    .4byte 0x4800007C # b .L_8032B968
L_8032B8F0:
    .4byte 0xC022EE10 # lfs f1, lbl_80541DB0@sda21(r0)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 1, 0x5c(1)
    lfs 1, 0x44(31)
    stfs 0, 0x60(1)
    psq_l 0, 0x5c(1), 0, 0
    stfs 1, 0x64(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    .4byte 0x48000078 # b .L_8032B98C
L_8032B918:
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 1, 0x50(1)
    lfs 1, 0x44(31)
    stfs 0, 0x54(1)
    psq_l 0, 0x50(1), 0, 0
    stfs 1, 0x58(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    .4byte 0x48000050 # b .L_8032B98C
L_8032B940:
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    .4byte 0xC002EE10 # lfs f0, lbl_80541DB0@sda21(r0)
    stfs 1, 0x44(1)
    lfs 1, 0x44(31)
    stfs 0, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    stfs 1, 0x4c(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    .4byte 0x48000028 # b .L_8032B98C
L_8032B968:
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    .4byte 0xC002EE00 # lfs f0, lbl_80541DA0@sda21(r0)
    stfs 1, 0x38(1)
    lfs 1, 0x44(31)
    stfs 0, 0x3c(1)
    psq_l 0, 0x38(1), 0, 0
    stfs 1, 0x40(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
L_8032B98C:
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x260(31)
    stw 0, 0x230(31)
    .4byte 0x480001D4 # b .L_8032BB70
L_8032B9A0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8032B9BC
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8032B9BC
    cmpwi 0, 0x9
    .4byte 0x408201B8 # bne .L_8032BB70
L_8032B9BC:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    li 0, 0x1
    mr 3, 31
    addi 4, 31, 0x284
    stfs 0, 0x28c(31)
    li 5, 0x0
    stfs 0, 0x288(31)
    stfs 0, 0x284(31)
    stb 0, 0x283(31)
    bl fn_801F2618
    stb 3, 0x27e(31)
    lbz 0, 0x283(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8032BA04
    psq_l 1, 0x29c(31), 0, 0
    lfs 0, 0x2a4(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
L_8032BA04:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820164 # beq .L_8032BB70
    li 28, 0x0
L_8032BA14:
    mr 3, 28
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_8032BA78
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820044 # bne .L_8032BA78
    mr 3, 28
    bl fn_8023A478
    lfs 3, 0x0(3)
    lfs 0, 0xc(31)
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002EE18 # lfs f0, lbl_80541DB8@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4181000C # bgt .L_8032BA78
    li 29, 0x1
    .4byte 0x48000010 # b .L_8032BA84
L_8032BA78:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF94 # blt .L_8032BA14
L_8032BA84:
    clrlwi. 0, 29, 24
    .4byte 0x418200E8 # beq .L_8032BB70
    lbz 0, 0x27e(31)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_8032BB70
    .4byte 0xC002EE20 # lfs f0, lbl_80541DC0@sda21(r0)
    stfs 0, 0x40(31)
    bl fn_8023A240
    cmpwi 3, 0x2
    .4byte 0x41820074 # beq .L_8032BB1C
    .4byte 0x40800014 # bge .L_8032BAC0
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8032BACC
    .4byte 0x4080003C # bge .L_8032BAF4
    .4byte 0x480000A4 # b .L_8032BB60
L_8032BAC0:
    cmpwi 3, 0x4
    .4byte 0x4080009C # bge .L_8032BB60
    .4byte 0x48000078 # b .L_8032BB40
L_8032BACC:
    lfs 0, 0x40(31)
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    stfs 0, 0x30(1)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 1, 0x2c(1)
    psq_l 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000070 # b .L_8032BB60
L_8032BAF4:
    lfs 0, 0x40(31)
    .4byte 0xC022EE10 # lfs f1, lbl_80541DB0@sda21(r0)
    stfs 0, 0x24(1)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 1, 0x20(1)
    psq_l 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000048 # b .L_8032BB60
L_8032BB1C:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    lfs 1, 0x40(31)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000024 # b .L_8032BB60
L_8032BB40:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    lfs 1, 0x40(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_8032BB60:
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x260(31)
    stw 0, 0x230(31)
L_8032BB70:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 28, 0x70(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
