# fn_801F132C - universal shared-Actor default virtual, part of the
# same family as fn_801F15BC (both look up a per-instance manager via
# ->0x198, resolve it through fn_8020D58C, and test a 0x784-stride
# table entry via fn_8020D6AC - a "is this actor-type disabled by
# current room config" gate). This is the FULLER variant: if not
# disabled by that gate, it additionally classifies the terrain/hazard
# at the actor's position via the confirmed fn_8022461C (terrain/hazard
# classifier) and fn_80226850 (secondary terrain code), treating codes
# 0x230/0x231 and a set of base terrain types {0,2-7} as blocking.
# Overall: "can this actor be active/valid here" - room-config gate OR
# terrain gate.
#
# ATTEMPTED real-C++ promotion (session 6): fully traced and landed the
# room-config-gate half + the physical-layout reordering for the
# countPtr-decrement path (confirmed retail places it, and the shared
# "return 0" tail every blocking case funnels into, at the very END of
# the function via forward branches - matches the established
# "goto-labeled blocks in retail's exact physical order" lesson).
# BLOCKED on the big 29-value "is this a blocked base terrain type"
# test: both a `switch` (which additionally mis-compiled into a
# binary-search tree, since MWCC's switch lowering picks jump-table/
# tree strategies for large case counts - not just a size issue) and a
# flat `||` if-chain (which should bypass switch-lowering entirely)
# BOTH still collapsed several of the runs into `addi/cmplwi` range
# tests instead of retail's literal per-value `cmpwi`/`beq` chain. This
# is the CONFIRMED "N-nearby-constants, one shared action" wall
# (reference_fsa_mwcc_scheduling_wall_investigation-adjacent family,
# see project_fsa_phase4_session4_continuation.md's fn_8013C628 notes)
# now reconfirmed for a MUCH larger set (29 values, several contiguous
# sub-runs) and for a plain if-chain (not just switch/dispatch shapes).
# Deferred after 2 attempts per the standing wall-taxonomy rule.
.section extab, "a"
.balign 4
.global etb_80008DC4
etb_80008DC4:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008DC4, 8

.section extabindex, "a"
.balign 4
.global eti_80016480
eti_80016480:
    .4byte fn_801F132C
    .4byte 0x00000290
    .4byte etb_80008DC4
.size eti_80016480, 12

.text
.balign 4
.global fn_801F132C

fn_801F132C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 6
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 4
    lwz 4, 0x0(6)
    cmpwi 4, 0x0
    .4byte 0x40820234 # bne .L_801F1590
    lwz 31, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 28
    lbz 0, 0x1(3)
    mr 5, 29
    mr 6, 31
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801F13A0
    li 3, 0x1
    .4byte 0x48000200 # b .L_801F159C
L_801F13A0:
    mr 3, 29
    mr 4, 28
    bl fn_8022461C
    clrlwi 31, 3, 16
    mr 3, 29
    mr 4, 28
    bl fn_80226850
    clrlwi 3, 3, 16
    cmpwi 3, 0x230
    .4byte 0x4182000C # beq .L_801F13D0
    cmpwi 3, 0x231
    .4byte 0x4082000C # bne .L_801F13D8
L_801F13D0:
    li 3, 0x0
    .4byte 0x480001C8 # b .L_801F159C
L_801F13D8:
    cmpwi 31, 0x0
    .4byte 0x418201BC # beq .L_801F1598
    cmpwi 31, 0x4
    .4byte 0x418201B4 # beq .L_801F1598
    cmpwi 31, 0x5
    .4byte 0x418201AC # beq .L_801F1598
    cmpwi 31, 0x6
    .4byte 0x418201A4 # beq .L_801F1598
    cmpwi 31, 0x7
    .4byte 0x4182019C # beq .L_801F1598
    cmpwi 31, 0x2
    .4byte 0x41820194 # beq .L_801F1598
    cmpwi 31, 0x3
    .4byte 0x4182018C # beq .L_801F1598
    cmpwi 31, 0x50
    .4byte 0x41820184 # beq .L_801F1598
    cmpwi 31, 0xe
    .4byte 0x4182017C # beq .L_801F1598
    cmpwi 31, 0xc
    .4byte 0x41820174 # beq .L_801F1598
    cmpwi 31, 0x27
    .4byte 0x4182016C # beq .L_801F1598
    cmpwi 31, 0x28
    .4byte 0x41820164 # beq .L_801F1598
    cmpwi 31, 0x29
    .4byte 0x4182015C # beq .L_801F1598
    cmpwi 31, 0x2a
    .4byte 0x41820154 # beq .L_801F1598
    cmpwi 31, 0x2b
    .4byte 0x4182014C # beq .L_801F1598
    cmpwi 31, 0x2c
    .4byte 0x41820144 # beq .L_801F1598
    cmpwi 31, 0x2d
    .4byte 0x4182013C # beq .L_801F1598
    cmpwi 31, 0x2e
    .4byte 0x41820134 # beq .L_801F1598
    cmpwi 31, 0x2f
    .4byte 0x4182012C # beq .L_801F1598
    cmpwi 31, 0x20
    .4byte 0x41820124 # beq .L_801F1598
    cmpwi 31, 0xd
    .4byte 0x4182011C # beq .L_801F1598
    cmpwi 31, 0x39
    .4byte 0x41820114 # beq .L_801F1598
    cmpwi 31, 0x3a
    .4byte 0x4182010C # beq .L_801F1598
    cmpwi 31, 0x3b
    .4byte 0x41820104 # beq .L_801F1598
    cmpwi 31, 0x4c
    .4byte 0x418200FC # beq .L_801F1598
    cmpwi 31, 0x4d
    .4byte 0x418200F4 # beq .L_801F1598
    cmpwi 31, 0x4e
    .4byte 0x418200EC # beq .L_801F1598
    cmpwi 31, 0x4f
    .4byte 0x418200E4 # beq .L_801F1598
    cmpwi 31, 0x24
    .4byte 0x418200DC # beq .L_801F1598
    subi 0, 31, 0x10
    cmplwi 0, 0x3
    .4byte 0x40810014 # ble .L_801F14DC
    cmpwi 3, 0x140
    .4byte 0x4180004C # blt .L_801F151C
    cmpwi 3, 0x15f
    .4byte 0x41810044 # bgt .L_801F151C
L_801F14DC:
    cmpwi 3, 0x146
    .4byte 0x4182003C # beq .L_801F151C
    cmpwi 3, 0x147
    .4byte 0x41820034 # beq .L_801F151C
    cmpwi 3, 0x148
    .4byte 0x4182002C # beq .L_801F151C
    cmpwi 3, 0x159
    .4byte 0x41820024 # beq .L_801F151C
    cmpwi 3, 0x15a
    .4byte 0x4182001C # beq .L_801F151C
    cmpwi 3, 0x15b
    .4byte 0x41820014 # beq .L_801F151C
    li 0, 0x78
    li 3, 0x0
    stw 0, 0x0(30)
    .4byte 0x48000084 # b .L_801F159C
L_801F151C:
    cmpwi 3, 0x3a
    .4byte 0x4182000C # beq .L_801F152C
    cmpwi 3, 0x3d
    .4byte 0x4082000C # bne .L_801F1534
L_801F152C:
    li 3, 0x0
    .4byte 0x4800006C # b .L_801F159C
L_801F1534:
    cmpwi 31, 0x25
    .4byte 0x40820018 # bne .L_801F1550
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000050 # b .L_801F159C
L_801F1550:
    cmpwi 31, 0x26
    .4byte 0x4082001C # bne .L_801F1570
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000030 # b .L_801F159C
L_801F1570:
    cmpwi 31, 0x22
    .4byte 0x40820014 # bne .L_801F1588
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_801F1598
L_801F1588:
    li 3, 0x1
    .4byte 0x48000010 # b .L_801F159C
L_801F1590:
    subi 0, 4, 0x1
    stw 0, 0x0(30)
L_801F1598:
    li 3, 0x0
L_801F159C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

