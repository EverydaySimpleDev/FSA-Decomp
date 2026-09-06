.section extab, "a"
.balign 4
.global etb_8000A740
etb_8000A740:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A740, 8

.section extabindex, "a"
.balign 4
.global eti_800185EC
eti_800185EC:
    .4byte fn_8022461C
    .4byte 0x00000250
    .4byte etb_8000A740
.size eti_800185EC, 12

.text
.balign 4
.global fn_8022461C

# fn_8022461C(point, roomParam) - the terrain/hazard classifier RUPY's
# `fn_8032B0A4` (extab_8032b0a4.s) calls to decide sink/splash/bounce
# reactions. Fetches the level config record (`GetRoomConfigRecord`) and reads
# one of two 4-float bounding rects from it (`+0xcc` or `+0xdc`,
# selected by whether `roomParam>=8`) - if `point` (x at +0x0, z at
# +0x4) falls outside that rect, returns the sentinel `0xf`
# ("out of area").
#
# If inside, computes the point's fractional position within the rect,
# clamps each axis to [0,0x1ff] (a 512-cell grid), packs both 9-bit
# fractions into one bitfield index, and queries a terrain/collision
# grid via the CONFIRMED `lbl_8053AB10->0x20` global (see
# project_fsa_player_registry_discovery.md and
# project_fsa_rupy_actor_progress.md - the same manager field used
# elsewhere for shadow projection and the reward-check) through
# `fn_802F9908`, masking the low 10 bits of the result. That raw grid
# code is translated through a 16-bit lookup table (`lbl_8046CB88`)
# into a smaller terrain-CATEGORY code (this is the exact code RUPY's
# `fn_8032B0A4` switches on: 3=sink/void, 0xd=bouncy, 0xe=hazard/wet).
#
# Two room-specific overrides on top of the raw category, both re-
# querying the level config record:
#   - If the room's `+0x31df` flag is set: category 0 becomes 2, and
#     category 0x61 (97) becomes 0 - a per-room terrain remap.
#   - If the flag is CLEAR and the raw category is 0xe (hazard/wet),
#     AND the confirmed global mode flag `lbl_8053AAF8->0x7f` is set,
#     AND the current area matches one of two specific room/sub-room
#     ID pairs (`+0x4==7` with `+0x8==2` or `+0x8==3`), AND (for the
#     second pair) a per-room byte grid entry at `config->0x14 +
#     config->0x18*0xa + 0x60` equals `0x10` AND `point.z` exceeds a
#     fixed threshold (`lbl_8053FF50`) - the category is overridden to
#     a special code `0x51` (81) instead of the raw hazard - plausibly
#     a "safe crossing strip over lava in this specific room" carve-out.
fn_8022461C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 4
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    mr 31, 28
    .4byte 0x4080000C # bge .L_80224658
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_8022465C
L_80224658:
    addi 6, 3, 0xdc
L_8022465C:
    lwz 3, 0x0(6)
    li 0, 0x0
    lwz 5, 0x4(6)
    stw 3, 0x8(1)
    lwz 4, 0x8(6)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(6)
    fcmpo cr0, 2, 3
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802246C4
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802246C4
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802246C4
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802246C4
    li 0, 0x1
L_802246C4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802246D4
    li 0, 0xf
    .4byte 0x48000088 # b .L_80224758
L_802246D4:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_8022470C
    li 6, 0x0
    .4byte 0x48000010 # b .L_80224718
L_8022470C:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80224718
    li 6, 0x1ff
L_80224718:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80224728
    li 0, 0x0
    .4byte 0x48000010 # b .L_80224734
L_80224728:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80224734
    li 0, 0x1ff
L_80224734:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    mr 4, 31
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80224758:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 0, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 29, 3, 0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802247A4
    clrlwi. 3, 29, 16
    .4byte 0x4082000C # bne .L_80224790
    li 3, 0x2
    .4byte 0x480000C0 # b .L_8022484C
L_80224790:
    cmplwi 3, 0x61
    .4byte 0x408200B8 # bne .L_8022484C
    li 3, 0x0
    .4byte 0x480000B0 # b .L_8022484C
    .4byte 0x480000AC # b .L_8022484C
L_802247A4:
    clrlwi 0, 29, 16
    cmplwi 0, 0xe
    .4byte 0x4082009C # bne .L_80224848
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_80224848
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_802247E0
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_80224840
L_802247E0:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x4082005C # bne .L_80224848
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_80224848
    bl GetRoomConfigRecord
    lwz 28, 0x14(3)
    bl GetRoomConfigRecord
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x18(31)
    add 3, 28, 3
    mulli 0, 0, 0xa
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpwi 0, 0x10
    .4byte 0x4082001C # bne .L_80224848
    lfs 1, 0x4(30)
    .4byte 0xC002CFB0 # lfs f0, lbl_8053FF50@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80224848
L_80224840:
    li 3, 0x51
    .4byte 0x48000008 # b .L_8022484C
L_80224848:
    clrlwi 3, 29, 16
L_8022484C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
