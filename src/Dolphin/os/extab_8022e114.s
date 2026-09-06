.section extab, "a"
.balign 4
.global etb_8000AA50
etb_8000AA50:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA50, 8

.section extabindex, "a"
.balign 4
.global eti_80018A84
eti_80018A84:
    .4byte fn_8022E114
    .4byte 0x0000008C
    .4byte etb_8000AA50
.size eti_80018A84, 12

.text
.balign 4
.global fn_8022E114

# fn_8022E114(playerIdx) - a per-player predicate delegating to the
# not-yet-decompiled fn_8024B2BC, gated by the confirmed "per-player
# capability predicate" template (project_fsa_rusa_repel_helpers_solved.md
# family): reads the global player-object table (lbl_8053AC90),
# bounds-checks 0<=playerIdx<4, requires a non-null player object AND its
# +0xcac master-enable flag, then forwards the player object pointer to
# fn_8024B2BC and returns that result directly. Returns 0/false without
# calling through on any failed precondition.
fn_8022E114:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8022E190
    .4byte 0x4082000C # bne .L_8022E138
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E178
L_8022E138:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E148
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E178
L_8022E148:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E158
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E178
L_8022E158:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E174
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E178
L_8022E174:
    lbz 0, 0xcac(5)
L_8022E178:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022E190
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024B2BC
L_8022E190:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
