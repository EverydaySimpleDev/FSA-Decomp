.section extab, "a"
.balign 4
.global etb_80008E3C
etb_80008E3C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008E3C, 8

.section extabindex, "a"
.balign 4
.global eti_80016534
eti_80016534:
    .4byte fn_801F305C
    .4byte 0x000000CC
    .4byte etb_80008E3C
.size eti_80016534, 12

.text
.balign 4
.global fn_801F305C

# fn_801F305C(this) - CONFIRMED: the secondary "am I being interacted
# with by a player" gate the RUSA-repel movement family's update()
# overrides check when `this->0x258` is set (see extab_8018299c.s and
# siblings). Loops all 4 player slots: `fn_801F285C(playerIdx, 0,
# &localOut, playerIdx, 1)` (not decompiled) is called with the slot's
# OWN index as both the 1st and 4th argument - if it returns that SAME
# index back (a "this slot is eligible and unclaimed by anyone else"
# self-consistency check), the player's position (`fn_8023E724`,
# CONFIRMED accessor) and a second per-player value from the CONFIRMED
# `fn_8023B6CC(playerIdx)` (extab_8023b6cc.s - a per-player predicate
# delegating to the not-decompiled `fn_802721A8`) feed into
# `fn_801F37AC(this, secondValue, position, playerIdx, 0)` (not
# decompiled, 0x5E8 bytes - too large to justify tracing for this
# investigation), whose
# boolean result is OR'd into the running "found any" flag. After
# checking all 4 slots, if NONE matched, calls `fn_801F2DB4(this,
# 'NULL', 'NULL', 0)` - the 4-char ASCII constant `0x4E554C4C` literally
# spells "NULL", passed as BOTH the 2nd and 3rd argument - reads as a
# "no player is interacting with me" fallback/reset call. Returns
# whether any player slot matched.
fn_801F305C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    mr 30, 29
    stw 28, 0x10(1)
    mr 28, 3
L_801F3084:
    mr 3, 28
    mr 7, 30
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 30, 3
    .4byte 0x4082003C # bne .L_801F30DC
    mr 3, 30
    bl fn_8023E724
    mr 31, 3
    mr 3, 30
    bl fn_8023B6CC
    lwz 7, 0x8(1)
    mr 4, 3
    mr 3, 28
    mr 5, 31
    mr 8, 30
    li 6, 0x0
    bl fn_801F37AC
    or 0, 29, 3
    clrlwi 29, 0, 24
L_801F30DC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFA0 # blt .L_801F3084
    clrlwi. 3, 29, 24
    .4byte 0x4082001C # bne .L_801F3108
    lis 4, 0x4e55
    mr 3, 28
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
L_801F3108:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
