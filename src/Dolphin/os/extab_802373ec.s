.section extab, "a"
.balign 4
.global etb_8000AEB0
etb_8000AEB0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AEB0, 8

.section extabindex, "a"
.balign 4
.global eti_80019114
eti_80019114:
    .4byte fn_802373EC
    .4byte 0x0000009C
    .4byte etb_8000AEB0
.size eti_80019114, 12

.text
.balign 4
.global fn_802373EC

# fn_802373EC - the LAST confirmed member of the "per-player capability
# predicate delegate" family (see [[project_fsa_player_target_helper_decoded]]
# and the sibling accessors fn_8022F514/fn_8022F3DC/fn_8022CAF8/
# fn_80234004): forwards to fn_802416C4 (extab_802416c4.s) when
# playerObj->0xcac is set, defaulting to 0 when unset. Confirmed as
# fn_802416C4's OWN link-delegate target: when a player is linked
# (+0xd60>=0), fn_802416C4 calls fn_802373EC(linkedIdx), which in turn
# re-enters fn_802416C4 on the LINKED player - the same
# "resolve-through-the-link-chain" recursive pattern every member of
# this family follows.
fn_802373EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023740C
    li 3, 0x0
    .4byte 0x48000070 # b .L_80237478
L_8023740C:
    .4byte 0x4082000C # bne .L_80237418
    li 0, 0x0
    .4byte 0x48000044 # b .L_80237458
L_80237418:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80237428
    li 0, 0x0
    .4byte 0x48000034 # b .L_80237458
L_80237428:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80237438
    li 0, 0x0
    .4byte 0x48000024 # b .L_80237458
L_80237438:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80237454
    li 0, 0x0
    .4byte 0x48000008 # b .L_80237458
L_80237454:
    lbz 0, 0xcac(4)
L_80237458:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80237474
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802416C4
    .4byte 0x48000008 # b .L_80237478
L_80237474:
    li 3, 0x0
L_80237478:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
