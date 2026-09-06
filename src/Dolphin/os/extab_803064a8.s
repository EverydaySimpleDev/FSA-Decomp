.section extab, "a"
.balign 4
.global etb_8000D5AC
etb_8000D5AC:
    .4byte 0x580A0000
    .4byte 0x00000000
.size etb_8000D5AC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C954
eti_8001C954:
    .4byte fn_803064A8
    .4byte 0x00000248
    .4byte etb_8000D5AC
.size eti_8001C954, 12

.text
.balign 4
.global fn_803064A8

# fn_803064A8(this, playerIndex, maxOutputCount, passCount) - THE
# CONSUMER for fn_803075AC's 40-slot "shadow/carry-marker" table
# (lbl_80505438, see project_fsa_shadow_marker_system_and_shared_draw.md)
# - closes the loop on that system. Drains slots for one player across
# up to `passCount` passes (matched against each slot's own ->0x0
# "priority/pass" field written at registration time - a staggering
# scheme, presumably to spread the work of rendering many markers
# across multiple frames rather than all at once).
#
# For each occupied slot (->0x24!=0) matching this pass: resolves the
# real linked player via fn_8022EA0C, and expires (marks ->0x25=1,
# clears ->0x0) any slot whose owner (->0x8) no longer matches
# fn_8023DE58(resolvedPlayer) UNLESS a special-case game-mode/flag
# check passes ((*lbl_8053AAF8)->0x4c==0xb i.e. a specific game state,
# AND (*lbl_8053AAF8)->0x88 set, AND slot->0x23 clear) - a "keep
# showing this marker during a specific mode" override.
#
# For surviving slots: if slot->0xc (targetPlayerIdx override) is
# already a valid non-negative player index, converts the stored
# world position (slot->0x10/0x14) directly to fixed-point via
# `fctiwz`. Otherwise projects the world position to THIS player's
# screen space via fn_8023D9B0(pos, resolvedPlayer) (X) and
# fn_8023D4F8(pos, resolvedPlayer) (Y) (both new, not yet decompiled -
# strongly resemble "world-to-screen" projection helpers given the
# 0x180/0xE0 clamp checks that follow, matching a 384x224-ish
# half-resolution coordinate space) - slots that fail the clamp are
# also expired.
#
# Surviving, on-screen markers get packed into a per-player OUTPUT
# array (`lbl_80506DE8[playerIndex*0x68] + passCount*4`, growing by 4
# bytes per written entry): byte 0 = screen Y, byte 1 = clamped X
# high-byte-ish value, byte 2/3 = packed bitfields built from the
# slot's ->0x18/->0x1c/->0x20/->0x21/->0x22 (kind/kind-family bytes) -
# survey-level for the EXACT bit assignment, but structurally this is
# clearly building a compact "on-screen marker icon" descriptor per
# tracked object, most likely feeding a HUD radar/indicator system
# showing nearby captured-object or effect markers to each player.
# Returns the total count of entries written (capped at
# `maxOutputCount`).
fn_803064A8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 21, 0x24(1)
    mr 21, 6
    mr. 23, 5
    mr 22, 4
    mr 27, 21
    .4byte 0x41820214 # beq .L_803066DC
    mr 3, 22
    bl fn_8022EA0C
    mulli 6, 22, 0x68
    lis 5, lbl_80506DE8@ha
    lis 4, lbl_80505438@ha
    addi 0, 5, lbl_80506DE8@l
    add 6, 0, 6
    slwi 5, 21, 2
    addi 0, 4, lbl_80505438@l
    mr 26, 3
    mulli 4, 22, 0x640
    add 29, 6, 5
    li 25, 0x5
    add 28, 0, 4
L_80306504:
    mr 31, 28
    mr 30, 29
    li 24, 0x0
L_80306510:
    lbz 0, 0x24(31)
    cmplwi 0, 0x0
    .4byte 0x418201AC # beq .L_803066C4
    mr 3, 26
    bl fn_8023DE58
    lwz 0, 0x8(31)
    cmpw 0, 3
    .4byte 0x41820010 # beq .L_8030653C
    lwz 0, 0xc(31)
    cmpw 0, 22
    .4byte 0x40820020 # bne .L_80306558
L_8030653C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x40820024 # bne .L_8030656C
    lbz 0, 0x23(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8030656C
L_80306558:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x0(31)
    stb 0, 0x25(31)
    .4byte 0x4800015C # b .L_803066C4
L_8030656C:
    lwz 0, 0x0(31)
    cmpw 0, 25
    .4byte 0x41820010 # beq .L_80306584
    lwz 0, 0xc(31)
    cmpw 0, 22
    .4byte 0x40820144 # bne .L_803066C4
L_80306584:
    lwz 0, 0xc(31)
    cmpwi 0, 0x0
    .4byte 0x41800044 # blt .L_803065D0
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    fctiwz 1, 1
    lbz 0, 0x1b(30)
    fctiwz 0, 0
    stfd 1, 0x8(1)
    lwz 3, 0xc(1)
    stfd 1, 0x10(1)
    rlwimi 0, 3, 24, 31, 31
    stfd 0, 0x18(1)
    lwz 3, 0x14(1)
    stb 0, 0x1b(30)
    lwz 0, 0x1c(1)
    stb 3, 0x1a(30)
    stb 0, 0x19(30)
    .4byte 0x4800005C # b .L_80306628
L_803065D0:
    mr 4, 26
    addi 3, 31, 0x10
    bl fn_8023D9B0
    clrlwi 21, 3, 23
    mr 4, 26
    addi 3, 31, 0x10
    bl fn_8023D4F8
    cmplwi 21, 0x180
    clrlwi 4, 3, 24
    .4byte 0x4182000C # beq .L_80306600
    cmplwi 4, 0xe0
    .4byte 0x40820018 # bne .L_80306614
L_80306600:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x0(31)
    stb 0, 0x25(31)
    .4byte 0x480000B4 # b .L_803066C4
L_80306614:
    lbz 0, 0x1b(30)
    rlwimi 0, 21, 24, 31, 31
    stb 0, 0x1b(30)
    stb 21, 0x1a(30)
    stb 4, 0x19(30)
L_80306628:
    lwz 5, 0x1c(31)
    cmpwi 5, 0x3ff
    .4byte 0x40810030 # ble .L_80306660
    subi 5, 5, 0x400
    lbz 0, 0x1b(30)
    srawi 4, 5, 8
    li 3, 0x2
    rlwimi 0, 4, 1, 29, 30
    stb 0, 0x1b(30)
    stb 5, 0x18(30)
    lbz 0, 0x1b(30)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1b(30)
    .4byte 0x4800002C # b .L_80306688
L_80306660:
    srawi 3, 5, 8
    lbz 0, 0x1b(30)
    clrlwi 4, 3, 24
    lbz 3, 0x20(31)
    rlwimi 0, 4, 1, 29, 30
    stb 0, 0x1b(30)
    stb 5, 0x18(30)
    lbz 0, 0x1b(30)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1b(30)
L_80306688:
    lbz 3, 0x21(31)
    addi 27, 27, 0x1
    lbz 0, 0x1b(30)
    cmpw 27, 23
    rlwimi 0, 3, 4, 27, 27
    lbz 4, 0x22(31)
    stb 0, 0x1b(30)
    li 0, 0x1
    addi 29, 29, 0x4
    lbz 3, 0x1b(30)
    rlwimi 3, 4, 3, 28, 28
    stb 0, 0x25(31)
    stb 3, 0x1b(30)
    addi 30, 30, 0x4
    .4byte 0x4080001C # bge .L_803066DC
L_803066C4:
    addi 24, 24, 0x1
    addi 31, 31, 0x28
    cmpwi 24, 0x28
    .4byte 0x4180FE40 # blt .L_80306510
    subic. 25, 25, 0x1
    .4byte 0x4181FE2C # bgt .L_80306504
L_803066DC:
    lmw 21, 0x24(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

