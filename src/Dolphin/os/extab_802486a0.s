.section extab, "a"
.balign 4
.global etb_8000B4C8
etb_8000B4C8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B4C8, 8

.section extabindex, "a"
.balign 4
.global eti_80019A20
eti_80019A20:
    .4byte fn_802486A0
    .4byte 0x000000D8
    .4byte etb_8000B4C8
.size eti_80019A20, 12

# fn_802486A0 - "resolve my link-group size/ID." Fully traced. Loops over
# all 4 player slots; for each slot i, checks whether it "belongs to my
# group" via fn_8022F514(i) (the "is player i linked to someone" check):
# if true, counts slot i as a group member when its link target
# (fn_8022F3DC(i)) matches EITHER this player's own link target
# (this->0xd60, if this player is itself linked) OR this player's own
# index (this->0x4, if this player is the "anchor" of the chain); if
# fn_8022F514(i) is false (slot i isn't linked to anyone), counts it as a
# member only if i itself IS this player's link target. After the loop,
# if the group has 1 or fewer members, returns the constant 5 (a "solo/
# ungrouped" status code); otherwise delegates to fn_8022CAF8 on the
# link target (if linked) or returns this->0x120c (this player's own
# group-ID field) directly. Net effect: counts how many of the 4 players
# are chained together with this one, and returns either "solo" or the
# shared group identifier - the core of Four Swords Adventures' co-op
# link/chain mechanic (see [[project_fsa_player_target_helper_decoded]]).
.text
.balign 4
.global fn_802486A0

fn_802486A0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    li 29, 0x0
    lwz 31, 0x4(3)
    mr 27, 3
    mr 30, 29
L_802486C0:
    cmpw 30, 31
    .4byte 0x4082000C # bne .L_802486D0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80248730
L_802486D0:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80248720
    lwz 28, 0xd60(27)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_80248704
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_80248730
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80248730
L_80248704:
    lwz 28, 0x4(27)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_80248730
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80248730
L_80248720:
    lwz 0, 0xd60(27)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_80248730
    addi 29, 29, 0x1
L_80248730:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF88 # blt .L_802486C0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024874C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80248764
L_8024874C:
    lwz 3, 0xd60(27)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80248760
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80248764
L_80248760:
    lwz 3, 0x120c(27)
L_80248764:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

