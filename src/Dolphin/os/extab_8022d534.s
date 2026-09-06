.section extab, "a"
.balign 4
.global etb_8000A9C8
etb_8000A9C8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A9C8, 8

.section extabindex, "a"
.balign 4
.global eti_800189B8
eti_800189B8:
    .4byte fn_8022D534
    .4byte 0x00000228
    .4byte etb_8000A9C8
.size eti_800189B8, 12

# fn_8022D534 - a bigger, TWO-STAGE variant of the "per-player capability
# predicate" template (see fn_80230188 / [[project_fsa_player_target_helper_decoded]]
# for the shared base shape). Stage 1: checks the CALLER's own player slot
# flag (playerObj->0xcac); if unset, falls through to a plain repeat of
# the same single-player check via Player_GetField_0xce8 (default false). If SET,
# stage 2 resolves a RELATED player slot via fn_8022EA0C(playerIndex) -
# likely a "linked/chief" partner index, matching SLR1.json's "Linked to
# Chief" Sword Soldier flag - then re-runs the whole bounds/null/flag-byte
# check against THAT other player slot, delegating to Player_GetField_0xce8(otherPlayerObj)
# when its flag is set (default false otherwise). Net effect: "does this
# player, or the player it's linked to, have this capability" - a two-hop
# version of the single-player predicates.
.text
.balign 4
.global fn_8022D534

fn_8022D534:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D55C
    li 3, 0x0
    .4byte 0x480001F0 # b .L_8022D748
L_8022D55C:
    .4byte 0x4082000C # bne .L_8022D568
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D5A8
L_8022D568:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022D578
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D5A8
L_8022D578:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022D588
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D5A8
L_8022D588:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D5A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D5A8
L_8022D5A4:
    lbz 0, 0xcac(3)
L_8022D5A8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022D5B8
    li 3, 0x0
    .4byte 0x48000194 # b .L_8022D748
L_8022D5B8:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D5C8
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022D634
L_8022D5C8:
    .4byte 0x4082000C # bne .L_8022D5D4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D614
L_8022D5D4:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022D5E4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D614
L_8022D5E4:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022D5F4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D614
L_8022D5F4:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D610
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D614
L_8022D610:
    lbz 0, 0xcac(3)
L_8022D614:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022D624
    li 3, 0x1
    .4byte 0x48000014 # b .L_8022D634
L_8022D624:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl fn_80240670
L_8022D634:
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_8022D6C8
    mr 3, 31
    bl fn_8022EA0C
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022D658
    li 3, 0x0
    .4byte 0x480000F4 # b .L_8022D748
L_8022D658:
    .4byte 0x4082000C # bne .L_8022D664
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D6A4
L_8022D664:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022D674
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D6A4
L_8022D674:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022D684
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D6A4
L_8022D684:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D6A0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D6A4
L_8022D6A0:
    lbz 0, 0xcac(4)
L_8022D6A4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022D6B4
    li 3, 0x0
    .4byte 0x48000098 # b .L_8022D748
L_8022D6B4:
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_GetField_0xce8
    .4byte 0x48000084 # b .L_8022D748
L_8022D6C8:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D6DC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022D748
L_8022D6DC:
    .4byte 0x4082000C # bne .L_8022D6E8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D728
L_8022D6E8:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022D6F8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D728
L_8022D6F8:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022D708
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D728
L_8022D708:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022D724
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D728
L_8022D724:
    lbz 0, 0xcac(3)
L_8022D728:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022D738
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022D748
L_8022D738:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_GetField_0xce8
L_8022D748:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

