.section extab, "a"
.balign 4
.global etb_80008458
etb_80008458:
    .4byte 0x40CA0000
    .4byte 0x00000000
.size etb_80008458, 8

.section extabindex, "a"
.balign 4
.global eti_800157A8
eti_800157A8:
    .4byte fn_801D05F8
    .4byte 0x000002BC
    .4byte etb_80008458
.size eti_800157A8, 12

.text
.balign 4
.global fn_801D05F8

# fn_801D05F8(this, unusedPositionOut) - MAJOR FINDING: the "which
# player should I be tracking" selector, called by `fn_801C5B08`
# (extab_801c5b08.s, part of project_fsa_slk2_rail_riding_core.md).
# CORRECTS the earlier hedge in `fn_801C5EBC`/`fn_801C6260`'s banners
# that `this->0x1ac + index*0xc` is a "generic local reference point
# array" - it is actually a PER-PLAYER array (4 slots, one per player
# index) of each player's remembered position (fields at absolute
# `+0x1ac`/`+0x1b0` relative to the array base = `+0x0`/`+0x4` of each
# 0xc-byte slot), a natural companion to the position-trail-predictor
# base class's own 16-slot ring-buffer history (`this->0x2ac`,
# extab_801d1974.s) - this array tracks the CURRENT position of all 4
# players at once, rather than one target's history over time.
#
# For each of the 4 player slots (guarded by `fn_801CCFE4(playerIdx,
# 0)`, not decompiled - a validity check): checks THIS actor's own
# type code (`this->0x1a0`) against two hardcoded lists of 4-char
# actor codes (both lists are "position-trail-predictor-family"
# actors already confirmed elsewhere in this project - KEPO, FLOR,
# FALL, HRMN, TINK, SLK2, NAVI, TZOK in the first list; NAVI, HRMN,
# FLOR, FALL, KEPO, TNDR, TINK, TZOK in the second) to decide which of
# two ownership/eligibility checks to run: a direct
# `fn_8023DE58(playerIdx) == this->0x4` room-ownership match (falling
# back to `fn_801F320C(this, playerIdx)` for actor types NOT in the
# first list), and then either `fn_8022CAF8(playerIdx) == 4` (an enum
# state check) or `fn_8022F514(playerIdx)` (boolean) depending on the
# second list. If a player passes, computes the squared distance
# between the player's actual position (`unusedPositionOut`, i.e. the
# caller's own position - `this->0xc`/`0x10` per the call site in
# `fn_801C5B08`) and that player's REMEMBERED position
# (`this->0x1ac[i]`), keeping the CLOSEST qualifying player's index.
# Returns that winning player index, or -1 if none qualify - this is
# literally "which player is close enough (and eligible) that I should
# treat them as my current target for rail-following purposes."

fn_801D05F8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stmw 24, 0x10(1)
    fmr 29, 1
    lis 5, lbl_80539D40@ha
    mr 25, 3
    lfs 30, lbl_80539D40@l(5)
    mr 26, 4
    li 28, -0x1
    fmuls 31, 29, 29
    mr 29, 25
    li 27, 0x0
L_801D0644:
    mr 3, 27
    li 30, 0x0
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_801D0820
    lis 3, 0x4b45
    lwz 4, 0x1a0(25)
    addi 0, 3, 0x504f
    li 31, 0x0
    cmpw 4, 0
    .4byte 0x418200A8 # beq .L_801D0714
    .4byte 0x40800054 # bge .L_801D06C4
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D0714
    .4byte 0x4080002C # bge .L_801D06B0
    lis 3, 0x4642
    addi 0, 3, 0x4745
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D0714
    .4byte 0x40800098 # bge .L_801D0730
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D0714
    .4byte 0x48000084 # b .L_801D0730
L_801D06B0:
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D0714
    .4byte 0x48000070 # b .L_801D0730
L_801D06C4:
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D0714
    .4byte 0x4080002C # bge .L_801D0700
    lis 3, 0x534c
    addi 0, 3, 0x4b32
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D0714
    .4byte 0x40800048 # bge .L_801D0730
    lis 3, 0x4e41
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D0714
    .4byte 0x48000034 # b .L_801D0730
L_801D0700:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D0714
    .4byte 0x48000020 # b .L_801D0730
L_801D0714:
    lwz 24, 0x4(25)
    mr 3, 27
    bl fn_8023DE58
    cmpw 3, 24
    .4byte 0x4082001C # bne .L_801D0740
    li 31, 0x1
    .4byte 0x48000014 # b .L_801D0740
L_801D0730:
    mr 3, 25
    mr 4, 27
    bl fn_801F320C
    mr 31, 3
L_801D0740:
    clrlwi. 0, 31, 24
    .4byte 0x418200DC # beq .L_801D0820
    lis 3, 0x4e41
    lwz 4, 0x1a0(25)
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D07EC
    .4byte 0x40800054 # bge .L_801D07B0
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D07EC
    .4byte 0x4080002C # bge .L_801D079C
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D07EC
    .4byte 0x40800098 # bge .L_801D081C
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D07EC
    .4byte 0x48000084 # b .L_801D081C
L_801D079C:
    lis 3, 0x4b45
    addi 0, 3, 0x504f
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D07EC
    .4byte 0x48000070 # b .L_801D081C
L_801D07B0:
    lis 3, 0x544e
    addi 0, 3, 0x4452
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D07EC
    .4byte 0x40800018 # bge .L_801D07D8
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D07EC
    .4byte 0x48000048 # b .L_801D081C
L_801D07D8:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D07EC
    .4byte 0x48000034 # b .L_801D081C
L_801D07EC:
    mr 3, 27
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_801D0804
    li 30, 0x1
    .4byte 0x48000020 # b .L_801D0820
L_801D0804:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801D0820
    li 30, 0x1
    .4byte 0x48000008 # b .L_801D0820
L_801D081C:
    li 30, 0x1
L_801D0820:
    clrlwi. 0, 30, 24
    .4byte 0x41820050 # beq .L_801D0874
    lfs 2, 0x4(26)
    lfs 3, 0x1b0(29)
    lfs 1, 0x1ac(29)
    lfs 0, 0x0(26)
    fsubs 2, 3, 2
    fsubs 1, 1, 0
    fmuls 0, 2, 2
    fmuls 1, 1, 1
    fadds 1, 1, 0
    fcmpo cr0, 1, 30
    .4byte 0x40800024 # bge .L_801D0874
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpu cr0, 0, 29
    .4byte 0x41820010 # beq .L_801D086C
    fcmpo cr0, 1, 31
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801D0874
L_801D086C:
    fmr 30, 1
    mr 28, 27
L_801D0874:
    addi 27, 27, 0x1
    addi 29, 29, 0xc
    cmpwi 27, 0x4
    .4byte 0x4180FDC4 # blt .L_801D0644
    mr 3, 28
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lmw 24, 0x10(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

