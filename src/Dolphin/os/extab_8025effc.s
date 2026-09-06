.section extab, "a"
.balign 4
.global etb_8000B96C
etb_8000B96C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B96C, 8

.section extabindex, "a"
.balign 4
.global eti_80019FE4
eti_80019FE4:
    .4byte fn_8025EFFC
    .4byte 0x000002D0
    .4byte etb_8000B96C
.size eti_80019FE4, 12

.text
.balign 4
.global fn_8025EFFC

# fn_8025EFFC(playerObj, itemHandle, flagB, gateFlag) -> bool - THE REAL
# "CAN THIS PLAYER PICK UP / CLAIM A CARRIED ITEM" COMMIT FUNCTION. Called
# from `fn_8022F9E4` (its own banner in this same file's family, see
# [[project_fsa_flag_switch_helpers]]) as the "final confirm" step, and
# confirmed used by KEY0's pickup logic. Fully understood - not just the
# capability gate assumed from `fn_8022F9E4`'s perspective, but the ENTIRE
# claim-and-attach sequence.
#
# 1. **Eligibility gate**: checks `playerObj->0xd64` (a "currently
#    carrying something" byte) combined with `->0xd70`/`->0xd68` range/
#    sign checks, then 2 more predicates (`fn_80241230`/`fn_802412A4`,
#    new). Both branches (`gateFlag` true/false) converge on the same
#    eligibility test, with the false branch additionally requiring
#    `fn_80270A8C()` (a global "is pickup globally allowed right now?"
#    gate) and, on failure, offering a FALLBACK: if this player isn't
#    already tracking `itemHandle` in `->0xd88` and that slot is free,
#    looks the item up via the CONFIRMED `SpatialRegistry_GetBase`+`fn_801F666C`
#    registry pair and calls `fn_801F36D4(item, ownerID)` (new, likely
#    "can this item currently be claimed") - on success, provisionally
#    marks `->0xd88 = itemHandle` (a SOFT claim/reservation, not yet
#    committed).
# 2. **Deeper capability chain** (the `gateFlag` true path): additional
#    predicates `Player_GetField_0xce8`/`fn_80241230`/`fn_802412A4`/`Player_GetField_0x454`
#    (new), a height/position check (`playerObj->0x10` vs. a constant),
#    and - if not already tracking `itemHandle` - `Player_IsLinked`(new)
#    plus the CONFIRMED co-op link/chain-group query `fn_802486A0`
#    (see [[project_fsa_player_target_helper_decoded]]): **rejects the
#    claim if the player's chain-group ID is NOT 5 ("solo")** - i.e. a
#    chain-linked (non-solo) player cannot pick up a carried item like a
#    key, matching the co-op mechanic's known constraints.
# 3. **Commit sequence** (on full success): re-resolves the item via the
#    registry, calls `fn_80251AEC(playerObj, mode)` with mode `0x11` or
#    `0x12` (selected by the `flagB` param - likely a "which hand/slot"
#    selector) to perform the actual attach; then COMMITS state:
#    clears the soft-claim (`->0xd88=-1`), stores the item's own type
#    code (`item->0x1a0`) into `->0xd6c`, snapshots the item's position
#    into `->0x2f4/2fc`, resets `->0xd64=0`/sets `->0xd68=itemHandle`,
#    transfers ownership via `fn_801F3744(item, playerOwnerID)` (new),
#    sets a state code `->0xd74=3` and a flag byte `->0x1174=1`, and
#    finally calls `fn_8024F0E8(playerObj, 0x20022)` (new - the constant
#    `0x20022` is a strong candidate for a "holding item overhead"
#    animation/pose code, the classic Zelda item-pickup pose).
fn_8025EFFC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    clrlwi. 0, 6, 24
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    stw 28, 0x10(1)
    .4byte 0x418200B8 # beq .L_8025F0E0
    lbz 3, 0xd64(29)
    subfic 0, 3, 0x1
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x40820060 # bne .L_8025F09C
    lwz 0, 0xd70(29)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025F054
    cmpwi 0, 0x4
    .4byte 0x41800010 # blt .L_8025F060
L_8025F054:
    lwz 0, 0xd68(29)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8025F070
L_8025F060:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8025F070
    li 0, 0x1
    .4byte 0x48000008 # b .L_8025F074
L_8025F070:
    li 0, 0x0
L_8025F074:
    clrlwi. 0, 0, 24
    .4byte 0x40820024 # bne .L_8025F09C
    mr 3, 29
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8025F09C
    mr 3, 29
    bl fn_802412A4
    clrlwi. 0, 3, 24
    .4byte 0x4182017C # beq .L_8025F214
L_8025F09C:
    lwz 0, 0xd88(29)
    cmpw 0, 30
    .4byte 0x41820034 # beq .L_8025F0D8
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_8025F0D8
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8025F0D8
    lwz 4, 0x4(29)
    bl fn_801F36D4
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8025F0D8
    stw 30, 0xd88(29)
L_8025F0D8:
    li 3, 0x1
    .4byte 0x480001D0 # b .L_8025F2AC
L_8025F0E0:
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025F0F4
    li 0, 0x0
    .4byte 0x48000114 # b .L_8025F204
L_8025F0F4:
    lbz 3, 0xd64(29)
    subfic 0, 3, 0x1
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x4182000C # beq .L_8025F110
    li 0, 0x0
    .4byte 0x480000F8 # b .L_8025F204
L_8025F110:
    lwz 0, 0xd70(29)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8025F124
    cmpwi 0, 0x4
    .4byte 0x41800010 # blt .L_8025F130
L_8025F124:
    lwz 0, 0xd68(29)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8025F140
L_8025F130:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8025F140
    li 0, 0x1
    .4byte 0x48000008 # b .L_8025F144
L_8025F140:
    li 0, 0x0
L_8025F144:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8025F154
    li 0, 0x0
    .4byte 0x480000B4 # b .L_8025F204
L_8025F154:
    mr 3, 29
    bl Player_GetField_0xce8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025F16C
    li 0, 0x0
    .4byte 0x4800009C # b .L_8025F204
L_8025F16C:
    mr 3, 29
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025F184
    li 0, 0x0
    .4byte 0x48000084 # b .L_8025F204
L_8025F184:
    mr 3, 29
    bl fn_802412A4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025F19C
    li 0, 0x0
    .4byte 0x4800006C # b .L_8025F204
L_8025F19C:
    mr 3, 29
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8025F1B4
    li 0, 0x0
    .4byte 0x48000054 # b .L_8025F204
L_8025F1B4:
    lfs 1, 0x10(29)
    .4byte 0xC002D1B0 # lfs f0, lbl_80540150@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8025F1CC
    li 0, 0x0
    .4byte 0x4800003C # b .L_8025F204
L_8025F1CC:
    lwz 0, 0xd88(29)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_8025F200
    mr 3, 29
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8025F200
    mr 3, 29
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x4082000C # bne .L_8025F200
    li 0, 0x0
    .4byte 0x48000008 # b .L_8025F204
L_8025F200:
    li 0, 0x1
L_8025F204:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8025F214
    li 3, 0x0
    .4byte 0x4800009C # b .L_8025F2AC
L_8025F214:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x41820084 # beq .L_8025F2A8
    clrlwi. 0, 31, 24
    mr 3, 29
    li 4, 0x12
    .4byte 0x41820008 # beq .L_8025F23C
    li 4, 0x11
L_8025F23C:
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_8025F2A8
    li 3, -0x1
    li 0, 0x1
    stw 3, 0xd88(29)
    mr 3, 28
    lwz 4, 0x1a0(28)
    stw 4, 0xd6c(29)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    psq_st 1, 0x2f4(29), 0, 0
    stfs 0, 0x2fc(29)
    stb 0, 0xd64(29)
    stw 30, 0xd68(29)
    lwz 4, 0x4(29)
    bl fn_801F3744
    li 0, 0x3
    lis 4, 0x2
    stw 0, 0xd74(29)
    li 0, 0x1
    mr 3, 29
    addi 4, 4, 0x22
    stb 0, 0x1174(29)
    bl fn_8024F0E8
    li 3, 0x1
    .4byte 0x48000008 # b .L_8025F2AC
L_8025F2A8:
    li 3, 0x0
L_8025F2AC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

