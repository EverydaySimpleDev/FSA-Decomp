.section extab, "a"
.balign 4
.global etb_8000B018
etb_8000B018:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B018, 8

.section extabindex, "a"
.balign 4
.global eti_80019330
eti_80019330:
    .4byte fn_8023A478
    .4byte 0x000000A4
    .4byte etb_8000B018
.size eti_80019330, 12

.text
.balign 4
.global fn_8023A478

# fn_8023A478(playerIdx) - another member of the CONFIRMED "per-player
# capability predicate" family (see
# project_fsa_player_target_helper_decoded.md): standard bounds-check
# (0<=idx<4) + non-null player + `player->0xcac` master-enable flag,
# then delegates to `Player_GetModeSubPtr_0xb9a(player)` (a pointer-returning
# accessor, not yet decompiled) and returns its result. Falls back to
# the CONFIRMED shared dummy object `lbl_804CF460` when any guard
# fails. Used by RUPY's proximity scans (extab_8032abe0.s and
# siblings) as a player-position accessor - callers dereference the
# result as a 3-float position (`+0x0`/`+0x4`/`+0x8`).
fn_8023A478:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023A49C
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    .4byte 0x48000074 # b .L_8023A50C
L_8023A49C:
    .4byte 0x4082000C # bne .L_8023A4A8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023A4E8
L_8023A4A8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023A4B8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023A4E8
L_8023A4B8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023A4C8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023A4E8
L_8023A4C8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A4E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A4E8
L_8023A4E4:
    lbz 0, 0xcac(4)
L_8023A4E8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023A504
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_GetModeSubPtr_0xb9a
    .4byte 0x4800000C # b .L_8023A50C
L_8023A504:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
L_8023A50C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
