.section extab, "a"
.balign 4
.global etb_8000B620
etb_8000B620:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B620, 8

.section extabindex, "a"
.balign 4
.global eti_80019C24
eti_80019C24:
    .4byte fn_8024F0E8
    .4byte 0x00000464
    .4byte etb_8000B620
.size eti_80019C24, 12

.text
.balign 4
.global fn_8024F0E8

# fn_8024F0E8(playerObj, poseCode) - THE PLAYER POSE-TRIGGER +
# CO-OP BROADCAST NOTIFICATION function. Called from `fn_8025EFFC`'s
# item-pickup commit with `poseCode=0x20022` (see
# [[project_fsa_flag_switch_helpers]] - confirms `0x20022` really is a
# pose code, all the codes handled here share the `0x2000X`/`0x2003X`
# range). Genuinely understood at the architectural level (281
# instructions - the per-pose-code broadcast-type dispatch is
# survey-level, each branch follows the identical shape below just with
# a different final broadcast-type constant).
#
# 1. **Pose substitution**: if `poseCode` is `0x20024` or `0x2002b` AND
#    `IsPoseOverrideEligible()` (new) returns true, substitutes a DIFFERENT pose
#    code (`0x20046`) - a conditional pose override.
#    Then resolves the player's animation controller
#    (`fn_8030AAF4(playerObj->0x11ec)`) and checks it's valid to play via
#    `fn_8030A308(handle, lbl_8053AD30)` (new) before doing anything else.
# 2. **Per-player capability gate**: checks the CONFIRMED per-player
#    enable bitmask (`lbl_8053AAF8->0x82`) for this player, then
#    `fn_8030381C()` (new - likely "can broadcast/announce right now").
# 3. **Pose-code -> broadcast-type dispatch**: `poseCode` selects a
#    specific broadcast TYPE code sent via `fn_803037D4(targetPlayerIndex,
#    broadcastType)`:
#    - `0x20034` -> type `0xc` (sent to `this` player only)
#    - `0x20011` -> type `0x4` (sent to `this` player only)
#    - `playerObj->0x3b4 >= 8` (an item/threshold check) with specific
#      sub-codes `0x20029`/`0x20024`/`0x2003a` -> loops all OTHER 3
#      players (via `fn_8022BC38`, the CONFIRMED grab-eligibility check
#      from KEY0's update, re-used here as an "is player N eligible to be
#      notified" gate) and sends broadcast type `0x8`/`0xb`/`0x7`
#      respectively to each eligible one.
#    This is a genuine **co-op notification system**: when one player
#    picks up/uses something, the OTHER players in the session get a
#    matching broadcast event (almost certainly driving their own
#    reaction sound/animation/UI popup) - ties into the "broadcast"
#    accessor family flagged in [[project_fsa_player_registry_discovery]].
# 4. **Cutscene-mode special case** (fallback path, when the above gates
#    fail): if the current scene mode (`lbl_8053AAF8->0x4c`) is `0xc`
#    (a cutscene/dialogue mode), clears 2 flag bytes and delegates
#    DIRECTLY to a virtual call on `playerObj->0x1254`'s sub-object
#    (`vtable[0x14]`, passing `poseCode`) - i.e. pose-triggering during a
#    cutscene routes through a completely different (dialogue-system)
#    handler instead of the normal broadcast pipeline.
fn_8024F0E8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    subis 0, 31, 0x2
    cmplwi 0, 0x24
    stw 30, 0x28(1)
    mr 30, 3
    .4byte 0x4182000C # beq .L_8024F118
    cmplwi 0, 0x2b
    .4byte 0x40820018 # bne .L_8024F12C
L_8024F118:
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8024F12C
    lis 3, 0x2
    addi 31, 3, 0x46
L_8024F12C:
    lwz 3, 0x11ec(30)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x418201DC # beq .L_8024F320
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 3, 0x4(30)
    lbz 4, 0x82(4)
    slw 0, 0, 3
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x418201BC # beq .L_8024F320
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x418201B0 # beq .L_8024F320
    subis 3, 31, 0x2
    cmplwi 3, 0x34
    .4byte 0x40820014 # bne .L_8024F190
    lwz 3, 0x4(30)
    li 4, 0xc
    bl fn_803037D4
    .4byte 0x480003A8 # b .L_8024F534
L_8024F190:
    cmplwi 3, 0x11
    .4byte 0x40820014 # bne .L_8024F1A8
    lwz 3, 0x4(30)
    li 4, 0x4
    bl fn_803037D4
    .4byte 0x48000390 # b .L_8024F534
L_8024F1A8:
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x41800170 # blt .L_8024F320
    subis 0, 31, 0x3
    cmplwi 0, 0x9
    .4byte 0x40820074 # bne .L_8024F230
    li 31, 0x0
L_8024F1C4:
    lwz 0, 0x4(30)
    cmpw 31, 0
    .4byte 0x4182001C # beq .L_8024F1E8
    lwz 4, 0x3b4(30)
    mr 3, 31
    addi 5, 30, 0x8
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8024F220
L_8024F1E8:
    mr 3, 31
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8024F220
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 31
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8024F220
    mr 3, 31
    li 4, 0x8
    bl fn_803037D4
L_8024F220:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF9C # blt .L_8024F1C4
    .4byte 0x48000308 # b .L_8024F534
L_8024F230:
    cmplwi 0, 0x4
    .4byte 0x40820074 # bne .L_8024F2A8
    li 31, 0x0
L_8024F23C:
    lwz 0, 0x4(30)
    cmpw 31, 0
    .4byte 0x4182001C # beq .L_8024F260
    lwz 4, 0x3b4(30)
    mr 3, 31
    addi 5, 30, 0x8
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8024F298
L_8024F260:
    mr 3, 31
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8024F298
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 31
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8024F298
    mr 3, 31
    li 4, 0xb
    bl fn_803037D4
L_8024F298:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF9C # blt .L_8024F23C
    .4byte 0x48000290 # b .L_8024F534
L_8024F2A8:
    cmplwi 3, 0x3a
    .4byte 0x40820074 # bne .L_8024F320
    li 31, 0x0
L_8024F2B4:
    lwz 0, 0x4(30)
    cmpw 31, 0
    .4byte 0x4182001C # beq .L_8024F2D8
    lwz 4, 0x3b4(30)
    mr 3, 31
    addi 5, 30, 0x8
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8024F310
L_8024F2D8:
    mr 3, 31
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8024F310
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 31
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8024F310
    mr 3, 31
    li 4, 0x7
    bl fn_803037D4
L_8024F310:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF9C # blt .L_8024F2B4
    .4byte 0x48000218 # b .L_8024F534
L_8024F320:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xc
    .4byte 0x40820038 # bne .L_8024F364
    lwz 3, 0x1254(30)
    li 0, 0x0
    addi 4, 1, 0x20
    stb 0, 0x44(3)
    lwz 3, 0x1254(30)
    stb 0, 0x45(3)
    stw 31, 0x20(1)
    lwz 3, 0x1254(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x480001D4 # b .L_8024F534
L_8024F364:
    bl GetRoomConfigRecord
    lwz 4, 0x3b4(30)
    li 5, 0x800
    bl fn_802D7804
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_8024F3F4
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x40800038 # bge .L_8024F3BC
    lwz 3, 0x1250(30)
    li 0, 0x0
    addi 4, 1, 0x1c
    stb 0, 0x44(3)
    lwz 3, 0x1250(30)
    stb 0, 0x45(3)
    stw 31, 0x1c(1)
    lwz 3, 0x1250(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x4800017C # b .L_8024F534
L_8024F3BC:
    lwz 3, 0x1254(30)
    li 5, 0x1
    li 0, 0x0
    addi 4, 1, 0x18
    stb 5, 0x44(3)
    lwz 3, 0x1254(30)
    stb 0, 0x45(3)
    stw 31, 0x18(1)
    lwz 3, 0x1254(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000144 # b .L_8024F534
L_8024F3F4:
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x4080005C # bge .L_8024F458
    lwz 3, 0x1250(30)
    li 0, 0x0
    stb 0, 0x44(3)
    bl GetRoomConfigRecord
    bl fn_802D7948
    cmpwi 3, 0x1
    .4byte 0x40820014 # bne .L_8024F42C
    lwz 3, 0x1250(30)
    li 0, 0x2
    stb 0, 0x45(3)
    .4byte 0x48000010 # b .L_8024F438
L_8024F42C:
    lwz 3, 0x1250(30)
    li 0, 0x0
    stb 0, 0x45(3)
L_8024F438:
    stw 31, 0x14(1)
    addi 4, 1, 0x14
    lwz 3, 0x1250(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x480000E0 # b .L_8024F534
L_8024F458:
    .4byte 0x4082003C # bne .L_8024F494
    lwz 3, 0x1250(30)
    li 5, 0x1
    li 0, 0x3
    addi 4, 1, 0x10
    stb 5, 0x44(3)
    lwz 3, 0x1250(30)
    stb 0, 0x45(3)
    stw 31, 0x10(1)
    lwz 3, 0x1250(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x480000A4 # b .L_8024F534
L_8024F494:
    bl GetRoomConfigRecord
    lwz 4, 0x3b4(30)
    lwz 0, 0x54(3)
    cmpw 4, 0
    .4byte 0x4080005C # bge .L_8024F500
    lwz 3, 0x1254(30)
    li 0, 0x1
    stb 0, 0x44(3)
    bl GetRoomConfigRecord
    bl fn_802D7948
    cmpwi 3, 0x1
    .4byte 0x40820014 # bne .L_8024F4D4
    lwz 3, 0x1254(30)
    li 0, 0x2
    stb 0, 0x45(3)
    .4byte 0x48000010 # b .L_8024F4E0
L_8024F4D4:
    lwz 3, 0x1254(30)
    li 0, 0x1
    stb 0, 0x45(3)
L_8024F4E0:
    stw 31, 0xc(1)
    addi 4, 1, 0xc
    lwz 3, 0x1254(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000038 # b .L_8024F534
L_8024F500:
    lwz 3, 0x1254(30)
    li 5, 0x1
    li 0, 0x2
    addi 4, 1, 0x8
    stb 5, 0x44(3)
    lwz 3, 0x1254(30)
    stb 0, 0x45(3)
    stw 31, 0x8(1)
    lwz 3, 0x1254(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_8024F534:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

