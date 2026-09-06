.section extab, "a"
.balign 4
.global etb_8000B450
etb_8000B450:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B450, 8

.section extabindex, "a"
.balign 4
.global eti_8001996C
eti_8001996C:
    .4byte fn_80246B10
    .4byte 0x0000020C
    .4byte etb_8000B450
.size eti_8001996C, 12

.text
.balign 4
.global fn_80246B10

# fn_80246B10(playerObj, poseCode) -> bool - "is it valid for me to
# trigger pose `poseCode` right now, considering the whole co-op
# session's consistency" (Track A byte-matched + structural overview;
# several callees not yet independently decompiled). Confirmed caller:
# fn_802808E8 (extab_802808e8.s), called with poseCode=0x40.
#
# Gate 1: the SAME 4-field "targetable state" check as the CONFIRMED
# Player_IsTargetable (+0xc80 set, +0xcee clear, +0x1215 clear, +0xca0 set,
# extab_802413f0.s) minus its final +0xce9 recheck (here +0xce9 IS the
# final check, same field, same polarity). Fails immediately if any
# check fails.
#
# Gate 2 - session consistency: loops all 4 player slots (via
# lbl_8053AC90's array, +0x4 stride) and, for each slot not equal to
# playerObj->0x4 (owner) itself, calls not-yet-decompiled
# fn_8022F514(slot) ("is this slot occupied/eligible?"); if so, checks
# whether the slot's link target (via not-yet-decompiled
# fn_8022F3DC(slot)) matches EITHER playerObj->0xd60 (my own link
# target) or playerObj->0x4 (my own owner) - counting matches. Also
# counts a match when the loop reaches playerObj->0xd60 itself (the
# "am I the one being linked to" case). Compares the resulting count
# against an "expected" value derived either from not-yet-decompiled
# fn_8022CAF8()/playerObj->0x120c (depending on link state) - if that
# expected value is exactly 4, does a SECOND similar counting pass and
# requires count+1 to match a not-yet-decompiled
# fn_80234004()/playerObj->0x1224 value, OR (when not linked) requires
# playerObj->0x11ea to be set. This reads as "are all players
# currently expected to be grouped together with me actually
# consistent" - a multiplayer synchronization gate before allowing a
# grouped special pose.
#
# If both gates pass: resolves the player's animation controller
# (fn_8030AAF4(playerObj->0x11ec), the SAME pattern used by the
# already-landed fn_8024F0E8) and calls not-yet-decompiled
# fn_80309D24(animCtrl, lbl_8053AD30, poseCode) to actually validate/
# trigger the pose against the animation system.
#
# Not yet decompiled: fn_8022F514, fn_8022F3DC, fn_8022CAF8,
# fn_80234004, fn_80309D24.
fn_80246B10:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    mr 31, 4
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246B3C
    li 0, 0x0
    .4byte 0x48000058 # b .L_80246B90
L_80246B3C:
    lbz 0, 0xcee(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246B50
    li 0, 0x0
    .4byte 0x48000044 # b .L_80246B90
L_80246B50:
    lbz 0, 0x1215(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246B64
    li 0, 0x0
    .4byte 0x48000030 # b .L_80246B90
L_80246B64:
    lbz 0, 0xca0(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246B78
    li 0, 0x0
    .4byte 0x4800001C # b .L_80246B90
L_80246B78:
    lbz 0, 0xce9(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246B8C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246B90
L_80246B8C:
    li 0, 0x1
L_80246B90:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246BA0
    li 0, 0x0
    .4byte 0x48000144 # b .L_80246CE0
L_80246BA0:
    li 28, 0x0
    mr 27, 28
L_80246BA8:
    lwz 0, 0x4(30)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80246BBC
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80246C1C
L_80246BBC:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80246C0C
    lwz 26, 0xd60(30)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80246BF0
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80246C1C
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80246C1C
L_80246BF0:
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_80246C1C
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80246C1C
L_80246C0C:
    lwz 0, 0xd60(30)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80246C1C
    addi 28, 28, 0x1
L_80246C1C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80246BA8
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80246C38
    li 3, 0x5
    .4byte 0x4800001C # b .L_80246C50
L_80246C38:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80246C4C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80246C50
L_80246C4C:
    lwz 3, 0x120c(30)
L_80246C50:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80246CC8
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80246C70
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_80246C74
L_80246C70:
    lwz 29, 0x1224(30)
L_80246C74:
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80246C88
    li 0, 0x0
    .4byte 0x4800003C # b .L_80246CC0
L_80246C88:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_80246CB0
L_80246C94:
    lwz 26, 0xd60(30)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80246CAC
    addi 27, 27, 0x1
L_80246CAC:
    addi 28, 28, 0x1
L_80246CB0:
    lwz 0, 0x4(30)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80246C94
    addi 0, 27, 0x1
L_80246CC0:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80246CD4
L_80246CC8:
    lbz 0, 0x11ea(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246CDC
L_80246CD4:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246CE0
L_80246CDC:
    li 0, 0x1
L_80246CE0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246CF0
    li 3, 0x0
    .4byte 0x4800001C # b .L_80246D08
L_80246CF0:
    lwz 3, 0x11ec(30)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    mr 5, 31
    bl fn_80309D24
L_80246D08:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
