.section extab, "a"
.balign 4
.global etb_8000CA0C
etb_8000CA0C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000CA0C, 8

.section extabindex, "a"
.balign 4
.global eti_8001B88C
eti_8001B88C:
    .4byte fn_802C18BC
    .4byte 0x000000B4
    .4byte etb_8000CA0C
.size eti_8001B88C, 12

.text
.balign 4
.global fn_802C18BC

# fn_802C18BC(this, arg2, arg3) - KEY0's vtable slot 0x4c override (not
# part of the standard quartet - unlike WIZR's own extra hook, which sits
# at a DIFFERENT slot, 0x44, confirming these per-actor extra slots vary
# in both position and purpose).
#
# Gated on a cooldown timer (`this->0x288`) - while nonzero, just
# decrements it and returns 0 (false). Once expired: fetches the player
# registry (`this->0x198`, the CONFIRMED player-manager pointer from
# [[project_fsa_player_registry_discovery]]) and calls
# `fn_8020D58C`/`fn_8020D6AC` (new - shape strongly suggests a
# per-player HITBOX/COLLISION test, indexing a 0x784-byte-stride
# per-player table) - if a player is touching/colliding, returns 1;
# otherwise delegates to a sibling helper `fn_802C1970` (same
# translation unit, between this function and KEY0's draw - not yet
# decompiled). Reads as **"is a player currently able to pick me up?"**
# - the natural extra hook for a collectible item actor.
fn_802C18BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lwz 3, 0x288(3)
    cmpwi 3, 0x0
    .4byte 0x40820058 # bne .L_802C1944
    lwz 31, 0x198(28)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 30
    mr 6, 31
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802C1930
    li 3, 0x1
    .4byte 0x48000024 # b .L_802C1950
L_802C1930:
    mr 3, 28
    mr 4, 29
    mr 5, 30
    bl fn_802C1970
    .4byte 0x48000010 # b .L_802C1950
L_802C1944:
    subi 0, 3, 0x1
    li 3, 0x0
    stw 0, 0x288(28)
L_802C1950:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

