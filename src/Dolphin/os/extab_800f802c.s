# fn_800F802C: this new actor class's proximity-detection / trigger-once
# per-player loop (0x800F802C-0x800F8210). Two independent pieces:
# (1) a decaying-counter state machine on `this->0xc`(active flag,
# byte)/`0xd`(mode 0-3 selecting one of 3 decay-rate float constants)/
# `0x14`(u16 frame counter)/`0x10`(float that decays toward 0 as the
# counter climbs toward a mode-dependent threshold, 0x28 or 0x14) -
# clears the active flag once the counter passes threshold.
# (2) for each of the 4 player slots (reusing the CONFIRMED
# Player_GetCapabilityFlagByIndex "is this player slot valid" check and fn_8023E724
# "get player position" accessor from project_fsa_player_registry_discovery.md),
# checks ownership via fn_8022EA0C (new, unconfirmed - compared against
# the loop index, plausibly "which player owns/triggered this"), skips
# players already flagged in the per-player bitmask `this->0x16` (via
# fn_8023DE58, new/unconfirmed busy-style gate), then computes the
# squared XZ distance to the player and applies the classic scalar
# fast-inverse-sqrt idiom (frsqrte + one Newton-Raphson refinement,
# already recognized in fn_800F6D80/project_fsa_extab_bug_resolved.md)
# to get a normalized distance, comparing it against the decaying
# `this->0x10` threshold. Within range, calls fn_80238548(playerIdx, 0,
# &relativeOffset, 0xb) - NOT YET CONFIRMED, plausibly a hit/trigger
# effect - and sets that player's bit in `this->0x16` so it only
# triggers once per player until the mode's cycle resets. This class
# is NOT yet cross-identified against the 195-entry actor dispatch
# table.
.section extab, "a"
.balign 4
.global etb_80005758
etb_80005758:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005758, 8

.section extabindex, "a"
.balign 4
.global eti_80011A34
eti_80011A34:
    .4byte fn_800F802C
    .4byte 0x000001E4
    .4byte etb_80005758
.size eti_80011A34, 12

.text
.balign 4
.global fn_800F802C

fn_800F802C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x418201A4 # beq .L_800F81F4
    lbz 0, 0xd(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_800F8088
    .4byte 0x40800010 # bge .L_800F8070
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_800F807C
    .4byte 0x48000034 # b .L_800F80A0
L_800F8070:
    cmpwi 0, 0x3
    .4byte 0x4080002C # bge .L_800F80A0
    .4byte 0x4800001C # b .L_800F8094
L_800F807C:
    .4byte 0xC0429000 # lfs f2, lbl_8053BFA0@sda21(r0)
    li 4, 0x28
    .4byte 0x48000024 # b .L_800F80A8
L_800F8088:
    .4byte 0xC0429004 # lfs f2, lbl_8053BFA4@sda21(r0)
    li 4, 0x28
    .4byte 0x48000018 # b .L_800F80A8
L_800F8094:
    .4byte 0xC0429008 # lfs f2, lbl_8053BFA8@sda21(r0)
    li 4, 0x14
    .4byte 0x4800000C # b .L_800F80A8
L_800F80A0:
    .4byte 0xC0429000 # lfs f2, lbl_8053BFA0@sda21(r0)
    li 4, 0x28
L_800F80A8:
    lhz 3, 0x14(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    .4byte 0xC8229018 # lfd f1, lbl_8053BFB8@sda21(r0)
    stw 3, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 2
    stfs 0, 0x10(31)
    lhz 3, 0x14(31)
    addi 0, 3, 0x1
    sth 0, 0x14(31)
    lhz 0, 0x14(31)
    cmpw 0, 4
    .4byte 0x4081000C # ble .L_800F80EC
    li 0, 0x0
    stb 0, 0xc(31)
L_800F80EC:
    li 29, 0x0
L_800F80F0:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200EC # beq .L_800F81E8
    mr 3, 29
    bl fn_8022EA0C
    cmpw 29, 3
    .4byte 0x408200DC # bne .L_800F81E8
    li 0, 0x1
    lbz 3, 0x16(31)
    slw 30, 0, 29
    and. 0, 3, 30
    .4byte 0x408200C8 # bne .L_800F81E8
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x0
    .4byte 0x408200B8 # bne .L_800F81E8
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0x0(31)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x4(31)
    lfs 2, 0x8(1)
    fsubs 3, 1, 0
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fmuls 2, 2, 2
    fmuls 1, 3, 3
    stfs 3, 0xc(1)
    fadds 4, 2, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_800F8188
    .4byte 0x48000028 # b .L_800F81AC
L_800F8188:
    frsqrte 3, 4
    .4byte 0xC0429010 # lfs f2, lbl_8053BFB0@sda21(r0)
    .4byte 0xC0029000 # lfs f0, lbl_8053BFA0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_800F81AC:
    lfs 0, 0x10(31)
    fcmpo cr0, 4, 0
    .4byte 0x40800034 # bge .L_800F81E8
    lfs 0, 0x0(31)
    mr 3, 29
    addi 5, 1, 0x8
    li 4, 0x0
    stfs 0, 0x8(1)
    li 6, 0xb
    lfs 0, 0x4(31)
    stfs 0, 0xc(1)
    bl fn_80238548
    lbz 0, 0x16(31)
    or 0, 0, 30
    stb 0, 0x16(31)
L_800F81E8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF00 # blt .L_800F80F0
L_800F81F4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

