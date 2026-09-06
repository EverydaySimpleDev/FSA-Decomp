.section extab, "a"
.balign 4
.global etb_8000C4FC
etb_8000C4FC:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_8000C4FC, 8

.section extabindex, "a"
.balign 4
.global eti_8001B124
eti_8001B124:
    .4byte fn_802A96B0
    .4byte 0x00000A08
    .4byte etb_8000C4FC
.size eti_8001B124, 12

# fn_802A96B0(this) - SWT4's real update(). Large (642 instructions) -
# read extensively (state 0's full logic plus the "all satisfied" commit
# tail) and genuinely understood at the architectural level; later states
# (dispatched via `jumptable_804A80F4`, `this->0x230` 0-7) are
# survey-level. **This is the clearest, most complete confirmation of the
# whole flag-registry puzzle mechanic found this session** - the actual
# 4-switch AND-combination logic, both the read AND write halves, in one
# function.
#
# **State 0** (the initial/waiting state): loops over SWT4's OWN 4 group
# indices (`this->0x244/248/24c/250`, set in setParams from the shared
# shift table) - for each: steps `GetRoomConfigRecord` then calls
# **`fn_802D800C(groupIndex)`** (the CONFIRMED per-room direct-bit flag
# READ from [[project_fsa_flag_switch_helpers]]); if set, calls
# `fn_802D7E1C(groupIndex)` (new - an accessor paired with `fn_802D800C`,
# likely fetching an associated value/index rather than a plain
# re-check) and records it. If ALL 4 group flags are found set (every
# linked switch has been flipped) AND a scene-readiness byte
# (`lbl_8053AAF8->0x7e`) is 1, cross-validates the 4 stored values for
# duplicates against each other (self-consistency check).
#
# **The "all satisfied" commit** (reached once the validation passes):
# calls **`fn_802D8050(groupIndex, 1, 0xff)`** for EACH of the 4 group
# indices - **the WRITE counterpart to `fn_802D800C`**, overwriting each
# flag with a "consumed" sentinel (`0xff`, the SAME sentinel value used
# throughout this function for "empty/done" slots) so the combination
# can't be re-triggered. Then dispatches on `this->0x234` (the type field
# from setParams): type 0 transitions to state 1 (an animation/reveal
# sequence, not traced further); type 2 calls `fn_801F0D20(this, 3)`
# (new, likely a bonus/victory effect); any other type simply clears
# `this->0x11c` (the CONFIRMED actor-pool visibility/active flag from
# [[project_fsa_actor_loop_found]]) - i.e. the switch deactivates/
# disappears once its combination is solved.
#
# **A separate branch** (survey-level, around a later state) does a
# per-player position/animation sync loop via `fn_8023E724` (the
# CONFIRMED per-player position accessor) and `fn_8023077C` (new) -
# likely a "snap to the nearest player who triggered this" visual, not
# traced in full.
.text
.balign 4
.global fn_802A96B0

fn_802A96B0:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stmw 24, 0x80(1)
    mr 26, 3
    li 28, 0x0
    lwz 0, 0x230(3)
    cmplwi 0, 0x7
    .4byte 0x418103A4 # bgt .L_802A9A7C
    lis 4, jumptable_804A80F4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A80F4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    addi 29, 1, 0x50
    mr 25, 26
    mr 31, 29
    li 27, 0x1
    li 24, 0x0
    li 30, 0xff
L_802A970C:
    stw 30, 0x0(31)
    bl GetRoomConfigRecord
    lwz 4, 0x244(25)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_802A9750
    bl GetRoomConfigRecord
    lwz 4, 0x244(25)
    bl fn_802D7E1C
    stw 3, 0x0(31)
    addi 28, 28, 0x1
    lwz 0, 0x0(31)
    cmpwi 0, 0xff
    .4byte 0x40820010 # bne .L_802A9750
    addi 0, 24, 0x4
    li 27, -0x1
    stw 0, 0x0(31)
L_802A9750:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FFAC # blt .L_802A970C
    cmpwi 28, 0x4
    .4byte 0x40820934 # bne .L_802AA09C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lbz 4, 0x7e(3)
    cmplwi 4, 0x1
    .4byte 0x40820098 # bne .L_802A9814
    mr 8, 26
    li 10, 0x0
L_802A9788:
    lwz 4, 0x0(29)
    cmpwi 4, 0xff
    .4byte 0x41820068 # beq .L_802A97F8
    addi 11, 10, 0x1
    addi 6, 1, 0x50
    slwi 5, 11, 2
    subfic 4, 11, 0x4
    add 6, 6, 5
    add 7, 26, 5
    mtctr 4
    cmpwi 11, 0x4
    .4byte 0x40800048 # bge .L_802A97FC
L_802A97B8:
    lwz 9, 0x0(6)
    cmpwi 9, 0xff
    .4byte 0x41820024 # beq .L_802A97E4
    lwz 5, 0x244(8)
    lwz 4, 0x244(7)
    cmpw 5, 4
    .4byte 0x41820014 # beq .L_802A97E4
    lwz 4, 0x0(29)
    cmpw 4, 9
    .4byte 0x40820008 # bne .L_802A97E4
    li 0, 0x1
L_802A97E4:
    addi 6, 6, 0x4
    addi 7, 7, 0x4
    addi 11, 11, 0x1
    .4byte 0x4200FFC8 # bdnz .L_802A97B8
    .4byte 0x48000008 # b .L_802A97FC
L_802A97F8:
    li 0, 0x1
L_802A97FC:
    addi 10, 10, 0x1
    addi 8, 8, 0x4
    cmpwi 10, 0x3
    addi 29, 29, 0x4
    .4byte 0x4180FF7C # blt .L_802A9788
    .4byte 0x48000094 # b .L_802A98A4
L_802A9814:
    mr 8, 26
    li 10, 0x0
L_802A981C:
    lwz 4, 0x0(29)
    cmpwi 4, 0xff
    .4byte 0x41820068 # beq .L_802A988C
    addi 11, 10, 0x1
    addi 6, 1, 0x50
    slwi 5, 11, 2
    subfic 4, 11, 0x4
    add 6, 6, 5
    add 7, 26, 5
    mtctr 4
    cmpwi 11, 0x4
    .4byte 0x40800048 # bge .L_802A9890
L_802A984C:
    lwz 9, 0x0(6)
    cmpwi 9, 0xff
    .4byte 0x41820024 # beq .L_802A9878
    lwz 5, 0x244(8)
    lwz 4, 0x244(7)
    cmpw 5, 4
    .4byte 0x41820014 # beq .L_802A9878
    lwz 4, 0x0(29)
    cmpw 4, 9
    .4byte 0x40820008 # bne .L_802A9878
    li 0, 0x1
L_802A9878:
    addi 6, 6, 0x4
    addi 7, 7, 0x4
    addi 11, 11, 0x1
    .4byte 0x4200FFC8 # bdnz .L_802A984C
    .4byte 0x48000008 # b .L_802A9890
L_802A988C:
    li 0, 0x1
L_802A9890:
    addi 10, 10, 0x1
    addi 8, 8, 0x4
    cmpwi 10, 0x3
    addi 29, 29, 0x4
    .4byte 0x4180FF7C # blt .L_802A981C
L_802A98A4:
    cmpwi 0, 0x0
    .4byte 0x408207F4 # bne .L_802AA09C
    lwz 0, 0x234(26)
    cmpwi 0, 0x3
    .4byte 0x40820034 # bne .L_802A98E8
    li 3, 0xf
    bl fn_8022E2D8
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stw 0, 0x230(26)
    .4byte 0x480007B8 # b .L_802AA09C
L_802A98E8:
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802A98FC
    cmpwi 27, -0x1
    .4byte 0x4082008C # bne .L_802A9984
L_802A98FC:
    li 3, 0xf
    bl fn_8022E2D8
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 27, 0x0
    mr 25, 26
L_802A9928:
    bl GetRoomConfigRecord
    lwz 4, 0x244(25)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    addi 27, 27, 0x1
    addi 25, 25, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFE0 # blt .L_802A9928
    lwz 0, 0x234(26)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_802A9978
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802A996C
    mr 3, 26
    li 4, 0x3
    bl fn_801F0D20
L_802A996C:
    li 0, 0x0
    stb 0, 0x11c(26)
    .4byte 0x48000728 # b .L_802AA09C
L_802A9978:
    li 0, 0x1
    stw 0, 0x230(26)
    .4byte 0x4800071C # b .L_802AA09C
L_802A9984:
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x418200E4 # beq .L_802A9A70
    .4byte 0xCBE2D8E0 # lfd f31, lbl_80540880@sda21(r0)
    addi 28, 1, 0x44
    li 25, 0x0
    lis 27, 0x4330
L_802A99A0:
    mr 3, 25
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    mr 4, 28
    lfs 2, 0x8(3)
    mr 3, 25
    stw 27, 0x68(1)
    li 5, 0xe8
    li 6, 0xff
    li 7, -0x80
    psq_st 0, 0x0(28), 0, 0
    li 8, -0x80
    li 9, 0x1
    lfs 1, 0x44(1)
    lfs 0, 0x48(1)
    fctiwz 1, 1
    stw 27, 0x78(1)
    fctiwz 0, 0
    stfs 2, 0x4c(1)
    stfd 1, 0x60(1)
    stfd 0, 0x70(1)
    lwz 10, 0x64(1)
    lwz 0, 0x74(1)
    srawi 10, 10, 4
    addze 10, 10
    srawi 0, 0, 4
    addze 0, 0
    slwi 11, 10, 4
    slwi 10, 0, 4
    addi 11, 11, 0x8
    addi 0, 10, 0x8
    xoris 10, 11, 0x8000
    xoris 0, 0, 0x8000
    stw 10, 0x6c(1)
    stw 0, 0x7c(1)
    lfd 1, 0x68(1)
    lfd 0, 0x78(1)
    fsubs 1, 1, 31
    fsubs 0, 0, 31
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
    bl fn_80230498
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FF50 # blt .L_802A99A0
    li 0, 0x3
    li 3, 0x0
    stw 0, 0x230(26)
    li 0, 0x1e
    stw 3, 0x238(26)
    stw 0, 0x23c(26)
    .4byte 0x48000630 # b .L_802AA09C
L_802A9A70:
    li 0, 0x2
    stw 0, 0x230(26)
    .4byte 0x48000624 # b .L_802AA09C
L_802A9A7C:
    bl GetRoomConfigRecord
    lwz 0, 0x90(26)
    extrwi 4, 0, 5, 5
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_802A9ABC
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x230(26)
    .4byte 0x480005E4 # b .L_802AA09C
L_802A9ABC:
    bl GetRoomConfigRecord
    lwz 0, 0x90(26)
    extrwi 4, 0, 5, 10
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_802A9AFC
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x230(26)
    .4byte 0x480005A4 # b .L_802AA09C
L_802A9AFC:
    bl GetRoomConfigRecord
    lwz 0, 0x90(26)
    extrwi 4, 0, 5, 15
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_802A9B3C
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x230(26)
    .4byte 0x48000564 # b .L_802AA09C
L_802A9B3C:
    bl GetRoomConfigRecord
    lwz 0, 0x90(26)
    extrwi 4, 0, 5, 20
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082054C # bne .L_802AA09C
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x230(26)
    .4byte 0x48000524 # b .L_802AA09C
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820518 # beq .L_802AA09C
    bl SpatialRegistry_GetBase
    lwz 31, 0x1008(3)
    mr 29, 26
    li 28, 0x0
L_802A9B98:
    li 27, 0x0
    mr 30, 27
    .4byte 0x48000104 # b .L_802A9CA4
L_802A9BA4:
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x418200E8 # beq .L_802A9C9C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x5357
    cmplwi 0, 0x5448
    .4byte 0x408200D8 # bne .L_802A9C9C
    lwz 0, 0x90(4)
    lwz 3, 0x244(29)
    srwi 0, 0, 27
    cmplw 3, 0
    .4byte 0x408200C4 # bne .L_802A9C9C
    mr 3, 28
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lis 0, 0x4330
    lfs 3, 0x8(3)
    addi 4, 1, 0x38
    stw 0, 0x70(1)
    mr 3, 28
    .4byte 0xC842D8E0 # lfd f2, lbl_80540880@sda21(r0)
    li 5, 0xe8
    psq_st 0, 0x0(4), 0, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    lfs 1, 0x38(1)
    li 9, 0x1
    lfs 0, 0x3c(1)
    fctiwz 1, 1
    stw 0, 0x60(1)
    fctiwz 0, 0
    stfs 3, 0x40(1)
    stfd 1, 0x78(1)
    stfd 0, 0x68(1)
    lwz 10, 0x7c(1)
    lwz 0, 0x6c(1)
    srawi 10, 10, 4
    addze 10, 10
    srawi 0, 0, 4
    slwi 11, 10, 4
    addze 0, 0
    slwi 10, 0, 4
    addi 11, 11, 0x8
    addi 0, 10, 0x8
    xoris 10, 11, 0x8000
    xoris 0, 0, 0x8000
    stw 10, 0x74(1)
    stw 0, 0x64(1)
    lfd 1, 0x70(1)
    lfd 0, 0x60(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    bl fn_80230498
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x38
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802A9C9C:
    addi 30, 30, 0x4
    addi 27, 27, 0x1
L_802A9CA4:
    cmpw 27, 31
    .4byte 0x4180FEFC # blt .L_802A9BA4
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FEE0 # blt .L_802A9B98
    li 3, 0xf
    bl fn_8022E2D8
    li 0, 0x3
    li 3, 0x0
    stw 0, 0x230(26)
    li 0, 0x1e
    stw 3, 0x238(26)
    stw 0, 0x23c(26)
    .4byte 0x480003C0 # b .L_802AA09C
    li 25, 0x0
    addi 27, 1, 0x2c
L_802A9CE8:
    mr 3, 25
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 27
    lfs 0, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 1, 0x0(27), 0, 0
    stfs 0, 0x34(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFD0 # blt .L_802A9CE8
    lwz 3, 0x23c(26)
    subi 0, 3, 0x1
    stw 0, 0x23c(26)
    lwz 0, 0x23c(26)
    cmpwi 0, 0x0
    .4byte 0x4082036C # bne .L_802AA09C
    lwz 3, 0x238(26)
    addi 28, 1, 0x20
    li 25, 0x0
    lis 27, 0x1
    addi 0, 3, 0x1
    stw 0, 0x238(26)
L_802A9D4C:
    mr 3, 25
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 28
    lfs 0, 0x8(3)
    mr 3, 25
    li 6, 0xff
    li 7, -0x80
    psq_st 1, 0x0(28), 0, 0
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x28(1)
    lwz 5, 0x238(26)
    addi 5, 5, 0xdb
    bl fn_80230498
    lwz 0, 0x238(26)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802A9DA0
    mr 3, 25
    addi 4, 27, 0x1
    bl fn_80230FD0
L_802A9DA0:
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFA4 # blt .L_802A9D4C
    li 0, 0x2
    stw 0, 0x23c(26)
    lwz 0, 0x238(26)
    cmpwi 0, 0xd
    .4byte 0x408202E0 # bne .L_802AA09C
    li 3, 0x4
    li 0, 0xa
    stw 3, 0x230(26)
    stw 0, 0x23c(26)
    lwz 0, 0x234(26)
    cmpwi 0, 0x4
    .4byte 0x408202C4 # bne .L_802AA09C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    clrlwi 0, 0, 30
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_802A9E4C
    li 3, 0x78
    li 0, 0x3c
    stw 3, 0x23c(26)
    li 24, 0x0
    li 27, 0x1
    stw 0, 0x240(26)
L_802A9E08:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 27, 24
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802A9E3C
    mr 3, 24
    li 4, 0x0
    bl fn_80230E1C
L_802A9E3C:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FFC4 # blt .L_802A9E08
    .4byte 0x48000254 # b .L_802AA09C
L_802A9E4C:
    li 3, 0x50
    li 0, 0x28
    stw 3, 0x23c(26)
    stw 0, 0x240(26)
    .4byte 0x48000240 # b .L_802AA09C
    lwz 0, 0x234(26)
    cmpwi 0, 0x4
    .4byte 0x40820040 # bne .L_802A9EA8
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 4, 0x20(4)
    stb 0, 0x216(4)
    lwz 4, 0x23c(26)
    lwz 0, 0x240(26)
    cmpw 4, 0
    .4byte 0x4082005C # bne .L_802A9EE4
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000040 # b .L_802A9EE4
L_802A9EA8:
    li 25, 0x0
    addi 27, 1, 0x14
L_802A9EB0:
    mr 3, 25
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 27
    lfs 0, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 1, 0x0(27), 0, 0
    stfs 0, 0x1c(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFD0 # blt .L_802A9EB0
L_802A9EE4:
    lwz 3, 0x23c(26)
    cmpwi 3, 0x0
    .4byte 0x40820078 # bne .L_802A9F64
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 27, 0x0
    mr 25, 26
L_802A9F14:
    bl GetRoomConfigRecord
    lwz 4, 0x244(25)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    addi 27, 27, 0x1
    addi 25, 25, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFE0 # blt .L_802A9F14
    li 3, 0x5
    li 0, 0xf
    stw 3, 0x230(26)
    stw 0, 0x23c(26)
    lwz 0, 0x234(26)
    cmpwi 0, 0x2
    .4byte 0x4082014C # bne .L_802AA09C
    mr 3, 26
    li 4, 0x3
    bl fn_801F0D20
    .4byte 0x4800013C # b .L_802AA09C
L_802A9F64:
    subi 0, 3, 0x1
    stw 0, 0x23c(26)
    .4byte 0x48000130 # b .L_802AA09C
    li 25, 0x0
    addi 27, 1, 0x8
L_802A9F78:
    mr 3, 25
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 27
    lfs 0, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 1, 0x0(27), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFD0 # blt .L_802A9F78
    lwz 3, 0x23c(26)
    cmpwi 3, 0x0
    .4byte 0x40820038 # bne .L_802A9FEC
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x418200D8 # beq .L_802AA09C
    lwz 0, 0x234(26)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802A9FE0
    li 0, 0x0
    stb 0, 0x11c(26)
    .4byte 0x480000C0 # b .L_802AA09C
L_802A9FE0:
    li 0, 0x1
    stw 0, 0x230(26)
    .4byte 0x480000B4 # b .L_802AA09C
L_802A9FEC:
    subi 0, 3, 0x1
    stw 0, 0x23c(26)
    .4byte 0x480000A8 # b .L_802AA09C
    mr 29, 26
    addi 25, 1, 0x50
    li 30, 0x0
    li 27, 0xff
L_802AA008:
    stw 27, 0x0(25)
    bl GetRoomConfigRecord
    lwz 4, 0x244(29)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802AA048
    bl GetRoomConfigRecord
    lwz 4, 0x244(29)
    bl fn_802D7E1C
    stw 3, 0x0(25)
    addi 28, 28, 0x1
    lwz 0, 0x0(25)
    cmpwi 0, 0xff
    .4byte 0x4082000C # bne .L_802AA048
    addi 0, 30, 0x4
    stw 0, 0x0(25)
L_802AA048:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FFB0 # blt .L_802AA008
    cmpwi 28, 0x4
    .4byte 0x4082002C # bne .L_802AA08C
    mr 3, 26
    li 4, 0xff
    lwz 12, 0x0(26)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stw 0, 0x230(26)
    .4byte 0x48000014 # b .L_802AA09C
L_802AA08C:
    cmpwi 28, 0x0
    .4byte 0x4182000C # beq .L_802AA09C
    li 0, 0x0
    stb 0, 0x11c(26)
L_802AA09C:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    lmw 24, 0x80(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

