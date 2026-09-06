/*
 * RUSA core-update cluster (vtable lbl_804A6270), part 4/7.
 * Track A (byte-exact asm) + structural overview - largest function in
 * this cluster (0x808 bytes) with a 7-way computed jump table
 * (jumptable_804A6314) driving a cyclic telegraph/attack state machine.
 *
 * fn_8021148C(this): calls the helper "gate" functions fn_80211EB0(this)
 * (contact-damage scan, part 6/7) and fn_80211C94(this) (early-exit
 * trigger, part 5/7) first, then dispatches on this->0x248 (state, 0-6)
 * via jumptable_804A6314; states >6 are a no-op.
 *
 * State machine (each case ends by writing a new this->0x248 and resetting
 * the frame counter this->0x24c=0 unless noted):
 *   - State 0 ("acquire"): a nested switch on this->0x2ac (spawn/behavior
 *     variant) either target-selects via fn_801D05F8 or checks a room flag
 *     via GetRoomConfigRecord/fn_802D800C (using this->0x2b0) to decide a local
 *     "ready" flag (r30). If ready: resets this->0x3ac/0x3b0 (target
 *     tracking), sets a blend-target triple this->0x54/0x58/0x5c from
 *     either this->0x394 or this->0x390 (depending on this->0x230 bit17),
 *     notifies a tracked companion (this->0x388) via SpatialRegistry_GetBase/
 *     fn_801F666C/fn_80212F14, then transitions to state 1.
 *   - State 1: for the first 60 frames (this->0x24c<0x3c), eases this->
 *     0x398 toward the constant lbl_8053FB14 over time using
 *     lbl_80539D44-relative math; once the timer expires, fires a
 *     per-companion-type effect (SpatialRegistry_GetBase/fn_801F666C+fn_80212ECC for
 *     companion type 1, or GetRoomConfigRecord+fn_802D8050 with a flag arg
 *     selected by this->0x248 for other companion types - the same
 *     "toggle a room flag on/off" idiom used throughout this cluster) and
 *     transitions to state 5.
 *   - State 2: same 60-frame ease (blending this->0x54/0x58/0x5c toward
 *     this->0x390 this time), same per-companion-type effect on timeout,
 *     transitions to state 3.
 *   - State 3: gated on this->0x230 bit15 being clear; after 180 frames
 *     (this->0x24c>=0xb4), same per-companion-type effect, transitions to
 *     state 4.
 *   - State 4: same 60-frame ease as state 1 (toward this->0x394), same
 *     per-companion-type effect, transitions to state 5.
 *   - State 5: gated on this->0x230 bit15 clear; after 180 frames, same
 *     per-companion-type effect, transitions back to state 2 - this closes
 *     the 2->3->4->5->2 wind-down/wind-up loop that repeats indefinitely
 *     until something external forces state 6 (see fn_80211C94, part 5/7).
 *   - State 6 ("reset/return-to-idle"): for the first 30 frames
 *     (this->0x24c<0x1e), eases this->0x398 toward 0.0f
 *     (lbl_8053FAF8); once expired, fires the per-companion-type effect,
 *     fully resets this->0x3ac/0x3b0/0x24c/0x248 back to state 0, and if
 *     this->0x230 bit14 is set, fires one more room-flag toggle
 *     (GetRoomConfigRecord+fn_802D8050, flag=1) followed by fn_801F3668(this) -
 *     the confirmed NAVI-companion "TIME-keyed sway" utility, reused here.
 *
 * Net effect: a stationary mechanism/hazard actor that telegraphs, holds,
 * and releases in a repeating cycle, toggling a room flag (this->0x2b8,
 * via the confirmed GetRoomConfigRecord/fn_802D8050 room-record family) at each
 * wind-up/wind-down boundary - i.e. a puzzle-synced attack/switch actor -
 * until an external condition (part 5/7) forces it back to idle.
 */
.section extab, "a"
.balign 4
.global etb_8000A070
etb_8000A070:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A070, 8

.section extabindex, "a"
.balign 4
.global eti_80017BF0
eti_80017BF0:
    .4byte fn_8021148C
    .4byte 0x00000808
    .4byte etb_8000A070
.size eti_80017BF0, 12

.text
.balign 4
.global fn_8021148C

fn_8021148C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    bl fn_80211EB0
    mr 3, 31
    bl fn_80211C94
    lwz 4, 0x248(31)
    cmplwi 4, 0x6
    .4byte 0x418107BC # bgt .L_80211C78
    lis 3, jumptable_804A6314@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804A6314@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x2ac(31)
    li 30, 0x0
    cmpwi 0, 0x4
    .4byte 0x41820018 # beq .L_802114FC
    .4byte 0x40800058 # bge .L_80211540
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802114FC
    .4byte 0x40800028 # bge .L_8021151C
    .4byte 0x48000048 # b .L_80211540
L_802114FC:
    lfs 1, 0x39c(31)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_80211540
    li 30, 0x1
    .4byte 0x48000028 # b .L_80211540
L_8021151C:
    lwz 29, 0x2b0(31)
    cmpwi 29, 0x0
    .4byte 0x4182001C # beq .L_80211540
    bl GetRoomConfigRecord
    mr 4, 29
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80211540
    li 30, 0x1
L_80211540:
    clrlwi. 0, 30, 24
    .4byte 0x41820734 # beq .L_80211C78
    lwz 0, 0x248(31)
    cmpwi 0, 0x6
    .4byte 0x4182005C # beq .L_802115AC
    .4byte 0x40800078 # bge .L_802115CC
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_80211564
    .4byte 0x4800006C # b .L_802115CC
L_80211564:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80211588
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211588
    bl fn_80212ECC
L_80211588:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_802115CC
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_802115CC
L_802115AC:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_802115CC
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_802115CC:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x3ac(31)
    stb 0, 0x3b0(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820018 # beq .L_802115FC
    lfs 0, 0x394(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
    .4byte 0x48000014 # b .L_8021160C
L_802115FC:
    lfs 0, 0x390(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
L_8021160C:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80211630
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211630
    bl fn_80212F14
L_80211630:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000638 # b .L_80211C78
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800138 # blt .L_80211784
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820098 # beq .L_802116F0
    cmpwi 4, 0x6
    .4byte 0x4182005C # beq .L_802116BC
    .4byte 0x40800078 # bge .L_802116DC
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_80211674
    .4byte 0x4800006C # b .L_802116DC
L_80211674:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80211698
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211698
    bl fn_80212ECC
L_80211698:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_802116DC
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_802116DC
L_802116BC:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_802116DC
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_802116DC:
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x4800058C # b .L_80211C78
L_802116F0:
    cmpwi 4, 0x6
    .4byte 0x4182005C # beq .L_80211750
    .4byte 0x40800078 # bge .L_80211770
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_80211708
    .4byte 0x4800006C # b .L_80211770
L_80211708:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_8021172C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8021172C
    bl fn_80212ECC
L_8021172C:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_80211770
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80211770
L_80211750:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_80211770
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80211770:
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480004F8 # b .L_80211C78
L_80211784:
    subfic 3, 0, 0x3c
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CB78 # lfd f2, lbl_8053FB18@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_802117C0
    .4byte 0xC002CB74 # lfs f0, lbl_8053FB14@sda21(r0)
    stfs 0, 0x398(31)
    .4byte 0x480004BC # b .L_80211C78
L_802117C0:
    .4byte 0xC002CB74 # lfs f0, lbl_8053FB14@sda21(r0)
    lfs 1, 0x398(31)
    fdivs 2, 0, 2
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x398(31)
    .4byte 0x480004A0 # b .L_80211C78
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800098 # blt .L_8021187C
    cmpwi 4, 0x6
    .4byte 0x4182005C # beq .L_80211848
    .4byte 0x40800078 # bge .L_80211868
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_80211800
    .4byte 0x4800006C # b .L_80211868
L_80211800:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80211824
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211824
    bl fn_80212ECC
L_80211824:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_80211868
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80211868
L_80211848:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_80211868
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80211868:
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000400 # b .L_80211C78
L_8021187C:
    subfic 3, 0, 0x3c
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CB78 # lfd f2, lbl_8053FB18@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    lfs 3, 0x390(31)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_802118B8
    stfs 3, 0x54(31)
    .4byte 0x4800001C # b .L_802118D0
L_802118B8:
    .4byte 0xC002CB74 # lfs f0, lbl_8053FB14@sda21(r0)
    lfs 1, 0x54(31)
    fdivs 2, 0, 2
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x54(31)
L_802118D0:
    lfs 0, 0x54(31)
    stfs 0, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x5c(31)
    .4byte 0x48000398 # b .L_80211C78
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x4082038C # bne .L_80211C78
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800380 # blt .L_80211C78
    cmpwi 4, 0x6
    .4byte 0x4182005C # beq .L_8021195C
    .4byte 0x40800078 # bge .L_8021197C
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_80211914
    .4byte 0x4800006C # b .L_8021197C
L_80211914:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80211938
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211938
    bl fn_80212ECC
L_80211938:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_8021197C
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_8021197C
L_8021195C:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_8021197C
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_8021197C:
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480002EC # b .L_80211C78
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800098 # blt .L_80211A30
    cmpwi 4, 0x6
    .4byte 0x4182005C # beq .L_802119FC
    .4byte 0x40800078 # bge .L_80211A1C
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_802119B4
    .4byte 0x4800006C # b .L_80211A1C
L_802119B4:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_802119D8
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802119D8
    bl fn_80212ECC
L_802119D8:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_80211A1C
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80211A1C
L_802119FC:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_80211A1C
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80211A1C:
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x4800024C # b .L_80211C78
L_80211A30:
    subfic 3, 0, 0x3c
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CB78 # lfd f2, lbl_8053FB18@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    lfs 3, 0x394(31)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_80211A6C
    stfs 3, 0x54(31)
    .4byte 0x4800001C # b .L_80211A84
L_80211A6C:
    .4byte 0xC002CB74 # lfs f0, lbl_8053FB14@sda21(r0)
    lfs 1, 0x54(31)
    fdivs 2, 0, 2
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x54(31)
L_80211A84:
    lfs 0, 0x54(31)
    stfs 0, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x5c(31)
    .4byte 0x480001E4 # b .L_80211C78
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x408201D8 # bne .L_80211C78
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x418001CC # blt .L_80211C78
    cmpwi 4, 0x6
    .4byte 0x4182005C # beq .L_80211B10
    .4byte 0x40800078 # bge .L_80211B30
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_80211AC8
    .4byte 0x4800006C # b .L_80211B30
L_80211AC8:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80211AEC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211AEC
    bl fn_80212ECC
L_80211AEC:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_80211B30
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80211B30
L_80211B10:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_80211B30
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80211B30:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000138 # b .L_80211C78
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1e
    .4byte 0x418000D4 # blt .L_80211C20
    cmpwi 4, 0x6
    .4byte 0x4182005C # beq .L_80211BB0
    .4byte 0x40800078 # bge .L_80211BD0
    cmpwi 4, 0x1
    .4byte 0x41820008 # beq .L_80211B68
    .4byte 0x4800006C # b .L_80211BD0
L_80211B68:
    lwz 29, 0x388(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80211B8C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211B8C
    bl fn_80212ECC
L_80211B8C:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x4182003C # beq .L_80211BD0
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80211BD0
L_80211BB0:
    lwz 29, 0x2b8(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_80211BD0
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80211BD0:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x3ac(31)
    stb 0, 0x3b0(31)
    stw 0, 0x24c(31)
    stw 0, 0x248(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x41820088 # beq .L_80211C78
    lwz 29, 0x2b4(31)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_80211C14
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80211C14:
    mr 3, 31
    bl fn_801F3668
    .4byte 0x4800005C # b .L_80211C78
L_80211C20:
    subfic 3, 0, 0x1e
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CB78 # lfd f2, lbl_8053FB18@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_80211C5C
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    stfs 0, 0x398(31)
    .4byte 0x48000020 # b .L_80211C78
L_80211C5C:
    .4byte 0xC022CB74 # lfs f1, lbl_8053FB14@sda21(r0)
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    fdivs 2, 1, 2
    lfs 1, 0x398(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x398(31)
L_80211C78:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

