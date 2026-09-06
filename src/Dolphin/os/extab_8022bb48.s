.section extab, "a"
.balign 4
.global etb_8000A8C0
etb_8000A8C0:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000A8C0, 8

.section extabindex, "a"
.balign 4
.global eti_8001882C
eti_8001882C:
    .4byte fn_8022BB48
    .4byte 0x000000F0
    .4byte etb_8000A8C0
.size eti_8001882C, 12

.text
.balign 4
.global fn_8022BB48

# fn_8022BB48(a, b) - CONFIRMED: called by `fn_801F0E34`'s generic
# default path (extab_801f0e34.s) as `fn_8022BB48(this, this->0xc)`.
# A generic "does ANY active player satisfy X" aggregator built on the
# CONFIRMED player-manager `lbl_8053AC90` and the CONFIRMED "per-player
# capability predicate" template (bounds-check, non-null, `+0xcac`
# master-enable flag - see project_fsa_player_target_helper_decoded.md):
# loops all 4 player slots, and for the first one that passes the
# template's guard, delegates to `fn_80241E28(player, a, b)` (not
# decompiled) - if that returns true, returns true immediately without
# checking the remaining slots; returns false only if no slot ever
# passes.
fn_8022BB48:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022BB80
    li 3, 0x0
    .4byte 0x4800009C # b .L_8022BC18
L_8022BB80:
    li 30, 0x0
    li 31, 0x0
L_8022BB88:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022BB9C
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022BBD8
L_8022BB9C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022BBAC
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022BBD8
L_8022BBAC:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022BBBC
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022BBD8
L_8022BBBC:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022BBD4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BBD8
L_8022BBD4:
    lbz 0, 0xcac(4)
L_8022BBD8:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8022BC04
    addi 0, 31, 0x4
    mr 4, 28
    lwzx 3, 3, 0
    mr 5, 29
    bl fn_80241E28
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8022BC04
    li 3, 0x1
    .4byte 0x48000018 # b .L_8022BC18
L_8022BC04:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF78 # blt .L_8022BB88
    li 3, 0x0
L_8022BC18:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
