.section extab, "a"
.balign 4
.global etb_8000A9D0
etb_8000A9D0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A9D0, 8

.section extabindex, "a"
.balign 4
.global eti_800189C4
eti_800189C4:
    .4byte fn_8022D75C
    .4byte 0x0000009C
    .4byte etb_8000A9D0
.size eti_800189C4, 12

.text
.balign 4
.global fn_8022D75C

# fn_8022D75C(playerIdx) - CONFIRMED: another member of the CONFIRMED
# "per-player capability predicate" family (see
# project_fsa_player_target_helper_decoded.md), called by
# `fn_801F2B7C` (extab_801f2b7c.s) as the second of its 3 gate checks.
# Delegates to `Player_GetField_0xce8(player)` (not decompiled, boolean-
# returning) and defaults to false when any guard fails.
fn_8022D75C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022D77C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022D7E8
L_8022D77C:
    .4byte 0x4082000C # bne .L_8022D788
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D7C8
L_8022D788:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022D798
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D7C8
L_8022D798:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022D7A8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D7C8
L_8022D7A8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D7C4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D7C8
L_8022D7C4:
    lbz 0, 0xcac(4)
L_8022D7C8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022D7E4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_GetField_0xce8
    .4byte 0x48000008 # b .L_8022D7E8
L_8022D7E4:
    li 3, 0x0
L_8022D7E8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
