.section extab, "a"
.balign 4
.global etb_8000AEE0
etb_8000AEE0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AEE0, 8

.section extabindex, "a"
.balign 4
.global eti_8001915C
eti_8001915C:
    .4byte fn_80237774
    .4byte 0x0000009C
    .4byte etb_8000AEE0
.size eti_8001915C, 12

# fn_80237774 - same "per-player capability predicate" template as
# fn_80230188 (see [[project_fsa_player_target_helper_decoded]]). Delegates
# to fn_8024189C(playerObj) when playerObj->0xcac is set; defaults to false
# (0) when unset. The other of the two predicates fn_801EEC98 uses as a
# comparable "score" for its modes 4/5 (see fn_80236228's note - same
# reuse pattern, just a different underlying capability).
.text
.balign 4
.global fn_80237774

fn_80237774:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80237794
    li 3, 0x0
    .4byte 0x48000070 # b .L_80237800
L_80237794:
    .4byte 0x4082000C # bne .L_802377A0
    li 0, 0x0
    .4byte 0x48000044 # b .L_802377E0
L_802377A0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802377B0
    li 0, 0x0
    .4byte 0x48000034 # b .L_802377E0
L_802377B0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802377C0
    li 0, 0x0
    .4byte 0x48000024 # b .L_802377E0
L_802377C0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802377DC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802377E0
L_802377DC:
    lbz 0, 0xcac(4)
L_802377E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802377FC
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024189C
    .4byte 0x48000008 # b .L_80237800
L_802377FC:
    li 3, 0x0
L_80237800:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

