/*
 * fn_8010645C(this): the fn_80106040-class's update() method, dispatched
 * on this->0x290 (0-3, survey-level):
 *  - State 0: loops over 4 candidates, validating each via fn_8023DE58
 *    (owner-match check) then fn_8023E724 (position getter), testing
 *    the candidate's position against a bounding box built from
 *    this->0xc/0x10 and this->0x60/0x64/0x68/0x6c. If ALL 4 candidates
 *    pass, advances to state 1 and checkpoints this->0xc/0x10/0x14 into
 *    this->0x274/0x27c.
 *  - State 1: advances a frame counter (this->0x2a4), integrates a
 *    paired-single position offset (`ps_add`) scaled by constants
 *    (lbl_8053C274/0x27c/0x280), applies it to this->0x280/0x284, then
 *    for all 4 candidates calls fn_8022DF48 (confirmed accept/trigger
 *    call from fn_801053E8/fn_80105654's hit-test) and fn_8023DF68. At
 *    counter>=0x78 (120), advances to state 2.
 *  - State 2: calls GetRoomConfigRecord (confirmed global-settings accessor),
 *    fn_802D9FF4 (unidentified, this->0x29c/0x2a0 args) and
 *    fn_80136798 (unidentified, PRNG-struct-related), advances to
 *    state 3 (done).
 * Reads as "wait for 4 targets to be positioned correctly, then run a
 * 120-frame accept animation, then a one-shot completion trigger" -
 * consistent with the recurring 4-target/4-player pattern seen
 * throughout this session (though this class is unrelated to the
 * shared-base minigame family or the 4-player consensus class).
 */

.section extab, "a"
.balign 4
.global etb_80005A44
etb_80005A44:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005A44, 8

.section extabindex, "a"
.balign 4
.global eti_80011E78
eti_80011E78:
    .4byte fn_8010645C
    .4byte 0x00000210
    .4byte etb_80005A44
.size eti_80011E78, 12

.text
.balign 4
.global fn_8010645C

fn_8010645C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    bl fn_801F5930
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x418201A4 # beq .L_80106628
    .4byte 0x408001C8 # bge .L_80106650
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801064A0
    .4byte 0x408000F4 # bge .L_80106588
    .4byte 0x480001B8 # b .L_80106650
    .4byte 0x480001B4 # b .L_80106650
L_801064A0:
    li 30, 0x0
L_801064A4:
    lwz 31, 0x4(29)
    mr 3, 30
    bl fn_8023DE58
    cmpw 3, 31
    .4byte 0x4182000C # beq .L_801064C0
    li 0, 0x0
    .4byte 0x4800009C # b .L_80106558
L_801064C0:
    mr 3, 30
    bl fn_8023E724
    .4byte 0xC02292D0 # lfs f1, lbl_8053C270@sda21(r0)
    li 0, 0x0
    lfs 0, 0xc(29)
    psq_l 3, 0x0(3), 0, 0
    fadds 2, 1, 0
    lfs 4, 0x60(29)
    psq_st 3, 0x8(1), 0, 0
    lfs 0, 0x10(29)
    fadds 4, 4, 2
    lfs 7, 0x8(1)
    lfs 5, 0x68(29)
    fadds 0, 1, 0
    lfs 3, 0x64(29)
    lfs 6, 0x6c(29)
    lfs 1, 0x8(3)
    fcmpo cr0, 7, 4
    fadds 3, 3, 0
    fadds 5, 5, 2
    stfs 1, 0x10(1)
    fadds 6, 6, 0
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_80106544
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 3
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80106544
    fcmpo cr0, 7, 5
    .4byte 0x40800010 # bge .L_80106544
    fcmpo cr0, 0, 6
    .4byte 0x40800008 # bge .L_80106544
    li 0, 0x1
L_80106544:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80106554
    li 0, 0x1
    .4byte 0x48000008 # b .L_80106558
L_80106554:
    li 0, 0x0
L_80106558:
    clrlwi. 0, 0, 24
    .4byte 0x418200F4 # beq .L_80106650
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF3C # blt .L_801064A4
    li 0, 0x1
    stw 0, 0x290(29)
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x274(29), 0, 0
    stfs 0, 0x27c(29)
    .4byte 0x480000CC # b .L_80106650
L_80106588:
    lwz 3, 0x2a4(29)
    li 30, 0x0
    .4byte 0xC04292D4 # lfs f2, lbl_8053C274@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0xC00292DC # lfs f0, lbl_8053C27C@sda21(r0)
    stw 0, 0x2a4(29)
    .4byte 0xC02292E0 # lfs f1, lbl_8053C280@sda21(r0)
    stfs 2, 0x14(1)
    stfs 0, 0x18(1)
    stfs 2, 0x1c(1)
    psq_l 0, 0x14(1), 0, 0
    psq_l 2, 0xc(29), 0, 0
    ps_add 0, 2, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 2, 0x14(29), 1, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x14(29), 1, 0
    lfs 0, 0x280(29)
    fmuls 0, 0, 1
    stfs 0, 0x280(29)
    lfs 0, 0x284(29)
    fmuls 0, 0, 1
    stfs 0, 0x284(29)
L_801065E8:
    mr 3, 30
    bl fn_8022DF48
    mr 3, 30
    addi 4, 1, 0x14
    bl fn_8023DF68
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE4 # blt .L_801065E8
    lwz 0, 0x2a4(29)
    cmpwi 0, 0x78
    .4byte 0x41800040 # blt .L_80106650
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x290(29)
    stw 0, 0x2a4(29)
    .4byte 0x4800002C # b .L_80106650
L_80106628:
    bl GetRoomConfigRecord
    lwz 4, 0x29c(29)
    lwz 5, 0x2a0(29)
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xd
    li 5, 0x0
    bl fn_80136798
    li 0, 0x3
    stw 0, 0x290(29)
L_80106650:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

