.section extab, "a"
.balign 4
.global etb_8000DC14
etb_8000DC14:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DC14, 8

.section extabindex, "a"
.balign 4
.global eti_8001D284
eti_8001D284:
    .4byte fn_8032ABE0
    .4byte 0x000004C4
    .4byte etb_8000DC14
.size eti_8001D284, 12

.text
.balign 4
.global fn_8032ABE0

# fn_8032ABE0(this) - RUPY's "check for player pickup" trigger, called
# from update()'s shared tail (extab_8032c664.s). This is what actually
# puts RUPY into the carried/consumed lifecycle documented there.
#
# Only runs during states {0,1,2,6,9,0xd} (the "idle/waiting/homing"
# states) - any other state skips entirely. Then, unless subtype==2,
# gates on the confirmed global mode flag `lbl_8053AAF8->0x7e` combined
# with the lifetime timer (this->0x24c): only proceeds within specific
# lifetime windows (<=980 frames in mode 1, <=800 in mode 0) - a
# "don't allow pickup right after spawning, or once truly expiring"
# window.
#
# Builds a local pickup-detection rect from this->0xc/0x10 offset by
# the bounding box fields (this->0x60/0x64/0x68/0x6c, set in
# setParams). Scans all 4 player slots via `fn_8023B0F4` (rect-overlap
# test) combined with 3 more unexplored per-player gate checks
# (`fn_80230188`, `fn_80234ECC`, `fn_8023EA28`); if none qualify, tries
# a SECOND pass with a different combination of checks
# (`fn_80230188`+`fn_8023EA28`+`fn_80236B50`, then either
# `fn_8023B9CC` or `fn_8023B848` as an alternate overlap test) - if
# still no player qualifies, does nothing this frame.
#
# Once a candidate player is found: gates on `fn_80234C5C` and (for
# subtype 0x23, ALSO) `fn_8022B7C4` (both unexplored per-player
# checks). Zeroes speed, then remaps the player index via the
# CONFIRMED `fn_8022F514`+`fn_8022F3DC` pair (see
# project_fsa_player_registry_discovery.md). Queries the level config
# record (`GetRoomConfigRecord`) and, if two of its flag fields are both
# clear and a further `fn_802D7F40` check passes, notifies the
# player-interaction subsystem via the CONFIRMED `lbl_8053AED0`
# function-pointer table + `fn_8043D67C` (code `0x13f`) and then SETS
# a room-data flag bit via `fn_802D7F84` (the setter counterpart to
# `fn_802D800C` - see project_fsa_vtable_slot_0x34_resolved.md) -
# marking that this pickup event happened for the current room.
#
# Then branches on size class (this->0x268):
#   >=4 (large variant): requires THREE more per-player "can receive"
#     checks (`fn_8023ED8C`, `fn_8023EBB8`, `fn_80233DA4`) to all pass,
#     else falls to the size-class<4 path below instead. If they pass,
#     requires `fn_802308E0` too (bails entirely on failure). Then
#     computes an offset from the player's live position (the
#     CONFIRMED `fn_8023E724` accessor) and calls `fn_80233E40`; plays
#     one of two UI/feedback effects (`fn_80230498`, codes 0x336 or
#     0xed depending on that result) at the offset point, spawns a REAL
#     sibling actor "IMUP" (code 0x494d5550, confirmed in
#     reference_fsa_full_dispatch_sweep.md) via the confirmed
#     `fn_801F9484` dispatcher, and calls `fn_801F3668` to hide itself
#     - the rupee is CONSUMED, replaced by an IMUP effect (plausibly a
#     floating value/message popup).
#   <4 (or the large-variant "can't receive" fallback): resolves a
#     per-size-class callback from a SECOND function-pointer table
#     (`lbl_804719D8`) via the confirmed `lbl_8053AED0`+`fn_8043D874`
#     (large path) or `fn_80230FD0`+`fn_802362C4` (small path,
#     literal code 0x211 first) - either way, sets subtype=1,
#     this->0x264=the qualifying player index, and transitions to
#     STATE 3 - directly triggering the confirmed "being picked up"
#     fall-through-to-state-4 sequence documented in update().
fn_8032ABE0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    stw 29, 0x44(1)
    lwz 3, 0x230(3)
    cmpwi 3, 0x0
    .4byte 0x41820028 # beq .L_8032AC2C
    cmpwi 3, 0x6
    .4byte 0x41820020 # beq .L_8032AC2C
    subi 0, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_8032AC2C
    cmpwi 3, 0x9
    .4byte 0x4182000C # beq .L_8032AC2C
    cmpwi 3, 0xd
    .4byte 0x40820460 # bne .L_8032B088
L_8032AC2C:
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x41820034 # beq .L_8032AC68
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 3, 0x7e(3)
    cmplwi 3, 0x1
    .4byte 0x40820010 # bne .L_8032AC54
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3d4
    .4byte 0x40810018 # ble .L_8032AC68
L_8032AC54:
    cmplwi 3, 0x0
    .4byte 0x40820430 # bne .L_8032B088
    lwz 0, 0x24c(30)
    cmpwi 0, 0x320
    .4byte 0x41810424 # bgt .L_8032B088
L_8032AC68:
    lfs 5, 0x10(30)
    li 31, -0x1
    lfs 1, 0xc(30)
    li 29, 0x0
    stfs 1, 0x8(1)
    stfs 5, 0xc(1)
    lfs 0, 0x60(30)
    stfs 0, 0x28(1)
    fadds 3, 0, 1
    lfs 0, 0x64(30)
    stfs 0, 0x2c(1)
    fadds 2, 0, 5
    lfs 0, 0x68(30)
    stfs 0, 0x30(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(30)
    fadds 0, 4, 5
    stfs 4, 0x34(1)
    stfs 3, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
L_8032ACC0:
    lwz 5, 0x4(30)
    mr 3, 29
    lfs 1, 0x14(30)
    addi 4, 1, 0x28
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_8032AD44
    lfs 1, 0x14(30)
    .4byte 0xC002EDEC # lfs f0, lbl_80541D8C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8032AD00
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x40820048 # bne .L_8032AD44
L_8032AD00:
    mr 3, 29
    bl fn_80230188
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820034 # beq .L_8032AD44
    mr 3, 29
    bl fn_80234ECC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820020 # beq .L_8032AD44
    mr 3, 29
    bl fn_8023EA28
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_8032AD44
    mr 31, 29
    .4byte 0x48000010 # b .L_8032AD50
L_8032AD44:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF74 # blt .L_8032ACC0
L_8032AD50:
    cmpwi 31, 0x0
    .4byte 0x408000AC # bge .L_8032AE00
    lfs 1, 0x14(30)
    .4byte 0xC002EDEC # lfs f0, lbl_80541D8C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_8032AD74
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x40820090 # bne .L_8032AE00
L_8032AD74:
    li 29, 0x0
L_8032AD78:
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820070 # bne .L_8032ADF4
    mr 3, 29
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_8032ADF4
    mr 3, 29
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8032ADF4
    lwz 5, 0x4(30)
    mr 3, 29
    addi 4, 1, 0x28
    addi 6, 1, 0x8
    li 7, 0x1
    bl fn_8023B9CC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820024 # beq .L_8032ADEC
    lwz 5, 0x4(30)
    mr 3, 29
    addi 4, 1, 0x28
    addi 6, 1, 0x8
    bl fn_8023B848
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032ADF4
L_8032ADEC:
    mr 31, 29
    .4byte 0x48000010 # b .L_8032AE00
L_8032ADF4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF7C # blt .L_8032AD78
L_8032AE00:
    cmpwi 31, 0x0
    .4byte 0x41800284 # blt .L_8032B088
    mr 3, 31
    bl fn_80234C5C
    clrlwi. 0, 3, 24
    .4byte 0x40820274 # bne .L_8032B088
    lhz 0, 0x94(30)
    cmplwi 0, 0x23
    .4byte 0x41820014 # beq .L_8032AE34
    mr 3, 31
    bl fn_8022B7C4
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8032AE54
L_8032AE34:
    lhz 0, 0x94(30)
    cmplwi 0, 0x23
    .4byte 0x4082024C # bne .L_8032B088
    mr 3, 31
    bl fn_8022B7C4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820238 # bne .L_8032B088
L_8032AE54:
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    mr 29, 31
    mr 3, 31
    stfs 0, 0x238(30)
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032AE80
    mr 3, 31
    bl fn_8022F3DC
    mr 29, 3
L_8032AE80:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8032AED8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_8032AED8
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8032AED8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 29
    li 4, 0x13f
    li 6, 0x0
    bl fn_8043D67C
    bl GetRoomConfigRecord
    li 4, 0x0
    li 5, 0x1
    bl fn_802D7F84
L_8032AED8:
    lwz 0, 0x268(30)
    cmpwi 0, 0x4
    .4byte 0x4180015C # blt .L_8032B03C
    mr 3, 31
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x40820104 # bne .L_8032AFF4
    mr 3, 31
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x408200F4 # bne .L_8032AFF4
    mr 3, 31
    bl fn_80233DA4
    clrlwi. 0, 3, 24
    .4byte 0x408200E4 # bne .L_8032AFF4
    mr 3, 31
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820164 # bne .L_8032B088
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 3, 0x8(3)
    mr 3, 31
    .4byte 0xC002EDF4 # lfs f0, lbl_80541D94@sda21(r0)
    psq_st 1, 0x1c(1), 0, 0
    lfs 1, 0x20(1)
    lfs 2, 0x1c(1)
    fsubs 0, 1, 0
    stfs 3, 0x24(1)
    stfs 2, 0x10(1)
    stfs 0, 0x14(1)
    stfs 3, 0x18(1)
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8032AF90
    mr 3, 31
    addi 4, 1, 0x1c
    li 5, 0x336
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_8032AFB0
L_8032AF90:
    mr 3, 31
    addi 4, 1, 0x1c
    li 5, 0xed
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8032AFB0:
    bl SpatialRegistry_GetBase
    slwi 4, 31, 26
    slwi 0, 31, 24
    add 4, 0, 4
    lwz 0, 0x268(30)
    addis 7, 4, 0xa0
    lis 4, 0x494d
    lwz 5, 0x4(30)
    addi 4, 4, 0x5550
    addi 6, 1, 0x10
    add 7, 0, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000098 # b .L_8032B088
L_8032AFF4:
    lwz 0, 0x268(30)
    lis 3, lbl_804719D8@ha
    addi 5, 3, lbl_804719D8@l
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    slwi 0, 0, 2
    mr 4, 31
    lwzx 5, 5, 0
    li 6, 0x0
    bl fn_8043D874
    li 0, 0x1
    li 3, 0x3
    sth 0, 0x94(30)
    li 0, 0x0
    stw 31, 0x264(30)
    stw 3, 0x230(30)
    stw 0, 0x274(30)
    stw 0, 0xb0(30)
    .4byte 0x48000050 # b .L_8032B088
L_8032B03C:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x11
    bl fn_80230FD0
    lwz 0, 0x268(30)
    lis 3, lbl_804719D8@ha
    addi 4, 3, lbl_804719D8@l
    mr 3, 31
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_802362C4
    li 0, 0x1
    li 3, 0x3
    sth 0, 0x94(30)
    li 0, 0x0
    stw 31, 0x264(30)
    stw 3, 0x230(30)
    stw 0, 0x274(30)
    stw 0, 0xb0(30)
L_8032B088:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
