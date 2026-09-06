.section extab, "a"
.balign 4
.global etb_8000AB58
etb_8000AB58:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB58, 8

.section extabindex, "a"
.balign 4
.global eti_80018C10
eti_80018C10:
    .4byte fn_80230188
    .4byte 0x0000009C
    .4byte etb_8000AB58
.size eti_80018C10, 12

# fn_80230188 - one of a whole FAMILY of "per-player capability predicate"
# functions discovered while decoding fn_801EEC98's validity gate (see
# [[project_fsa_player_target_helper_decoded]]). Shared template, fully
# understood: `lbl_8053AC90` is a global pointer to the PLAYER MANAGER
# struct (a header word followed by 4 player-object pointers - this is
# the first confirmed name/shape for the global backing the whole 4-player
# roster). Given a player slot index (bounds-checked 0<=idx<4, player
# pointer non-null), reads a shared "master enable" flag byte at
# playerObj->0xcac: if set, delegates to Player_GetField_0x454(playerObj) and
# returns its result; if unset, this particular predicate's DEFAULT is
# false (0).
.text
.balign 4
.global fn_80230188

fn_80230188:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802301A8
    li 3, 0x0
    .4byte 0x48000070 # b .L_80230214
L_802301A8:
    .4byte 0x4082000C # bne .L_802301B4
    li 0, 0x0
    .4byte 0x48000044 # b .L_802301F4
L_802301B4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802301C4
    li 0, 0x0
    .4byte 0x48000034 # b .L_802301F4
L_802301C4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802301D4
    li 0, 0x0
    .4byte 0x48000024 # b .L_802301F4
L_802301D4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802301F0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802301F4
L_802301F0:
    lbz 0, 0xcac(4)
L_802301F4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80230210
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_GetField_0x454
    .4byte 0x48000008 # b .L_80230214
L_80230210:
    li 3, 0x0
L_80230214:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

