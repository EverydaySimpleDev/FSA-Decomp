.section extab, "a"
.balign 4
.global etb_8000B0B0
etb_8000B0B0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B0B0, 8

.section extabindex, "a"
.balign 4
.global eti_80019414
eti_80019414:
    .4byte fn_8023B6CC
    .4byte 0x0000009C
    .4byte etb_8000B0B0
.size eti_80019414, 12

.text
.balign 4
.global fn_8023B6CC

# fn_8023B6CC(playerIdx) - CONFIRMED: another member of the CONFIRMED
# "per-player capability predicate" family (bounds-check, non-null,
# `+0xcac` master-enable flag - see
# project_fsa_player_target_helper_decoded.md), called by
# `fn_801F305C` (extab_801f305c.s) as its second per-player accessor.
# Delegates to `fn_802721A8(player)` (not decompiled, pointer-
# returning) and defaults to NULL (0) when any guard fails.
fn_8023B6CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B6EC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023B758
L_8023B6EC:
    .4byte 0x4082000C # bne .L_8023B6F8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B738
L_8023B6F8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B708
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B738
L_8023B708:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B718
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B738
L_8023B718:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B734
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B738
L_8023B734:
    lbz 0, 0xcac(4)
L_8023B738:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023B754
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802721A8
    .4byte 0x48000008 # b .L_8023B758
L_8023B754:
    li 3, 0x0
L_8023B758:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
