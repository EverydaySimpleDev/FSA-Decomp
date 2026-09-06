.section extab, "a"
.balign 4
.global etb_8000B488
etb_8000B488:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B488, 8

.section extabindex, "a"
.balign 4
.global eti_800199C0
eti_800199C0:
    .4byte fn_80247594
    .4byte 0x00000098
    .4byte etb_8000B488
.size eti_800199C0, 12

.text
.balign 4
.global fn_80247594

# fn_80247594(playerObj, amount) - "consume `amount` units from a
# countdown pool" (playerObj->0xc08), returning whether any pool
# remained. If playerObj->0xd60 (the CONFIRMED co-op LINK/CHAIN target
# index, project_fsa_player_target_helper_decoded.md) is non-negative,
# delegates entirely to not-yet-decompiled fn_80237488(linkedIdx) -
# i.e. a linked player's ticks route through the link target instead.
# Otherwise: if already flagged "done" (+0x1201==1), returns true
# without consuming further. If the pool covers `amount`, subtracts it
# and sets +0x1201=1 (success). If the pool is partially covered
# (>0 but < amount), zeroes it and still sets +0x1201=1 (success -
# "used up the last of it"). If the pool was already 0, sets
# +0x1202=1 (a distinct "exhausted" flag) and returns false. Confirmed
# caller: fn_8025A15C's fire-status handler (extab_8025a15c.s), called
# with amount=1 each frame while reacting (ticking down burn duration)
# and amount=0 elsewhere (a "commit without consuming" call, since
# `pool >= 0` is always true).
fn_80247594:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_802475B8
    mr 3, 0
    bl fn_80237488
    .4byte 0x48000068 # b .L_8024761C
L_802475B8:
    lbz 0, 0x1201(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802475CC
    li 3, 0x1
    .4byte 0x48000054 # b .L_8024761C
L_802475CC:
    lwz 0, 0xc08(3)
    cmpw 0, 4
    .4byte 0x4180001C # blt .L_802475F0
    subf 4, 4, 0
    li 0, 0x1
    stw 4, 0xc08(3)
    stb 0, 0x1201(3)
    li 3, 0x1
    .4byte 0x48000030 # b .L_8024761C
L_802475F0:
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_80247610
    li 4, 0x0
    li 0, 0x1
    stw 4, 0xc08(3)
    stb 0, 0x1201(3)
    li 3, 0x1
    .4byte 0x48000010 # b .L_8024761C
L_80247610:
    li 0, 0x1
    stb 0, 0x1202(3)
    li 3, 0x0
L_8024761C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
