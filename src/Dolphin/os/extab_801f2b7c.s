.section extab, "a"
.balign 4
.global etb_80008E24
etb_80008E24:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_80008E24, 8

.section extabindex, "a"
.balign 4
.global eti_80016510
eti_80016510:
    .4byte fn_801F2B7C
    .4byte 0x00000238
    .4byte etb_80008E24
.size eti_80016510, 12

.text
.balign 4
.global fn_801F2B7C

# fn_801F2B7C(this, effectID, excludeSlot, mode) - CONFIRMED: called
# by the RUSA-repel movement family's update() as
# `fn_801F2B7C(this,-0x64,-1,1)` when `this->0x258` is set (see
# extab_8018299c.s and siblings) - "notify/push any player currently
# standing in my area." Builds a world-space bounding rect from a
# LOCAL rect (`this->0x60/0x64` min corner, `this->0x68/0x6c` max
# corner) offset by the actor's own position (`this->0xc/0x10/0x14`).
#
# Pass 1: for each of the 4 player slots (skipping `excludeSlot`),
# unless the current room's `+0x31df` flag (the SAME per-room flag
# `fn_8022461C`/`fn_801840E0` check) is set, first filters by Z-depth
# proximity (`fn_8023E724` player position vs. `this->0x14`, threshold
# `lbl_8053F748`). Passing candidates go through 3 more gates -
# `fn_8022E438(playerIdx, excludeSlot)` (already landed elsewhere,
# extab_8022e438.s), the CONFIRMED `fn_8022D75C(playerIdx)`
# (extab_8022d75c.s - a per-player predicate delegating to the not-
# decompiled `Player_GetField_0xce8`), and the CONFIRMED `fn_8023B190(playerIdx,
# &rect, this->0x4)` (extab_8023b190.s - delegates to the not-
# decompiled `fn_802732C4`, almost certainly a point/rect containment
# test given the args) - and if ALL pass, the player's bit is set in a
# result bitmask.
#
# Pass 2: for each player bit set in that mask, computes the rect's
# midpoint (biased toward one corner via `lbl_8053F74C`), then checks
# an "ownership" condition (`fn_8023DE58(playerIdx)==8 ||
# this->0x4==8` - the SAME sentinel-8 "wildcard owner" pattern
# confirmed in `fn_801EEC98`) to decide whether to further remap the
# midpoint via the CONFIRMED `fn_801CD0D0` (extab_801cd0d0.s - "remap
# a point between the level-config record's two room rectangles," used
# here because the target player is in the OTHER room instance) or use
# it as-is. If
# `effectID == -0x64` (-100, the sentinel every observed caller
# passes), substitutes `this->0x114` as the real effect ID instead.
# Finally calls `fn_80238548(playerIdx, effectID, &point, mode)` (not
# decompiled - the shape strongly suggests "apply a push/knockback (or
# trigger a cue) to this player at this point"). Net effect: shove (or
# cue) any player standing on/near this moving-platform actor, using
# the actor's own configured effect ID.
fn_801F2B7C:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 25, 0x44(1)
    mr 29, 3
    li 28, 0x0
    lfs 1, 0x6c(3)
    mr 30, 4
    lfs 2, 0x10(3)
    mr 25, 5
    lfs 0, 0x64(3)
    mr 31, 6
    fadds 3, 1, 2
    lfs 4, 0x14(3)
    fadds 1, 0, 2
    lfs 2, 0x68(3)
    lfs 5, 0xc(3)
    mr 27, 28
    lfs 0, 0x60(3)
    fsubs 3, 3, 4
    fadds 2, 2, 5
    fsubs 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x1c(1)
    stfs 1, 0x14(1)
    stfs 0, 0x10(1)
    stfs 2, 0x18(1)
L_801F2BF8:
    cmpw 27, 25
    .4byte 0x41820090 # beq .L_801F2C8C
    lwz 26, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 26, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801F2C40
    mr 3, 27
    bl fn_8023E724
    lfs 2, 0x8(3)
    lfs 1, 0x14(29)
    .4byte 0xC002C7A8 # lfs f0, lbl_8053F748@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810050 # bgt .L_801F2C8C
L_801F2C40:
    mr 3, 27
    mr 4, 25
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_801F2C8C
    mr 3, 27
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_801F2C8C
    lwz 5, 0x4(29)
    mr 3, 27
    addi 4, 1, 0x10
    bl fn_8023B190
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801F2C8C
    li 0, 0x1
    slw 0, 0, 27
    or 0, 28, 0
    clrlwi 28, 0, 24
L_801F2C8C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF64 # blt .L_801F2BF8
    clrlwi. 27, 28, 24
    .4byte 0x418200F0 # beq .L_801F2D8C
    lfs 1, 0x6c(29)
    li 26, 0x0
    lfs 3, 0x10(29)
    lfs 0, 0x64(29)
    fadds 2, 1, 3
    lfs 5, 0x14(29)
    fadds 0, 0, 3
    lfs 3, 0x68(29)
    lfs 6, 0xc(29)
    lfs 1, 0x60(29)
    fsubs 4, 2, 5
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    fsubs 0, 0, 5
    fadds 3, 3, 6
    fadds 1, 1, 6
    fsubs 0, 0, 4
    fsubs 1, 1, 3
    fmadds 30, 2, 0, 4
    fmadds 31, 2, 1, 3
L_801F2CEC:
    li 0, 0x1
    slw 0, 0, 26
    and. 0, 27, 0
    .4byte 0x41820088 # beq .L_801F2D80
    mr 3, 26
    li 28, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800014 # bge .L_801F2D20
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x40820008 # bne .L_801F2D20
    li 28, 0x1
L_801F2D20:
    clrlwi. 0, 28, 24
    .4byte 0x41820034 # beq .L_801F2D58
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    addi 3, 1, 0x20
    stfs 31, 0x20(1)
    addi 4, 1, 0x2c
    stfs 30, 0x24(1)
    stfs 0, 0x28(1)
    bl fn_801CD0D0
    lfs 1, 0x2c(1)
    lfs 0, 0x30(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x4800000C # b .L_801F2D60
L_801F2D58:
    stfs 31, 0x8(1)
    stfs 30, 0xc(1)
L_801F2D60:
    cmpwi 30, -0x64
    .4byte 0x40820008 # bne .L_801F2D6C
    lwz 30, 0x114(29)
L_801F2D6C:
    mr 3, 26
    mr 4, 30
    mr 6, 31
    addi 5, 1, 0x8
    bl fn_80238548
L_801F2D80:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF64 # blt .L_801F2CEC
L_801F2D8C:
    mr 3, 27
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 25, 0x44(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
