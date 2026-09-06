.section extab, "a"
.balign 4
.global etb_80008470
etb_80008470:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008470, 8

.section extabindex, "a"
.balign 4
.global eti_800157CC
eti_800157CC:
    .4byte fn_801D0DD4
    .4byte 0x00000084
    .4byte etb_80008470
.size eti_800157CC, 12

.text
.balign 4
.global fn_801D0DD4

# fn_801D0DD4(this) - CONFIRMED: the "do I have a valid rail
# target/mode right now" gate `fn_801C5B08` and `fn_801C6260`
# (project_fsa_slk2_rail_riding_core.md) check before acting on a
# waypoint. Fetches the level config record and reads the CONFIRMED
# per-room `+0x31df` flag:
# - If SET (RAIL-restricted room): returns whether EITHER bit 27 or
#   bit 28 of `this->0x230` (the confirmed state-flags word) is set -
#   i.e. "do I currently have an active rail-following sub-state
#   flagged."
# - If CLEAR (normal room): falls back to a simple height check -
#   returns whether `this->0x14` (the actor's Y/height position) is at
#   or below a fixed threshold (`lbl_8053EFC4`) - "am I low enough to
#   be considered grounded," a sensible substitute when there's no
#   rail-restriction flag to consult.
fn_801D0DD4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    lwz 31, 0x4(3)
    stw 30, 0x8(1)
    mr 30, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801D0E20
    lwz 0, 0x230(30)
    rlwinm 3, 0, 0, 27, 28
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    .4byte 0x48000024 # b .L_801D0E40
L_801D0E20:
    lfs 1, 0x14(30)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801D0E3C
    li 3, 0x1
    .4byte 0x48000008 # b .L_801D0E40
L_801D0E3C:
    li 3, 0x0
L_801D0E40:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
