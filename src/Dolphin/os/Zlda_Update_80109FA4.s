/*
 * IDENTIFIED: this is ZLDA - "Princess Zelda" (see extab_80109534.s's header note).
 * project_fsa_zlda_actor_progress.md maps this ENTIRE function's state machine end to end
 * (all 18 states of `jumptable_8049CF7C`, cross-referenced against the player registry -
 * this->0x300/0x304 are player-slot indices 0-3 into lbl_8053AC90, not generic object
 * pointers, per project_fsa_player_registry_discovery.md): idle -> notice a nearby player ->
 * approach -> face -> a short interaction -> an idle countdown that despawns/respawns the
 * "LIMT" companion (fn_80109534). See that memory file for the full per-state writeup.
 *
 * fn_80109FA4 (0x80109FA4-0x8010AE0C, 0xE6C/3692 bytes) - ZLDA's update(). The LARGEST single
 * function landed this session. Survey-level only; not every branch's exact semantics are
 * claimed here.
 *
 * Opens with fn_801F5930 (the SAME base-class per-frame step confirmed for the 3rd/4th
 * classes' own update() methods that embed the "timed-cue lookup table" shared component -
 * see project_fsa_multiple_inheritance_pattern.md), sets this->0x330/0x339, builds the
 * recurring bounding
 * region from this->0x60-0x6c/0xc/0x10. A series of range checks on this->0x328 (the state
 * set by fn_801096C8's setState) trigger several distinct behavior blocks before falling
 * into the main `jumptable_8049CF7C` dispatch (18 entries, matching setState's own table):
 *   - a "type check + countdown" block (fn_801F26CC against lbl_80464204, decrementing
 *     this->0x108, transitioning to state 0xb via setState).
 *   - a "candidate acquire + commit attack" block (fn_8022FEB8+fn_8022FD8C, gated on the
 *     CONFIRMED per-player bitmask lbl_8053AAF8->0x82, fn_8022C5EC(0x120), commit via
 *     fn_8038AD24) transitioning to state 3.
 *
 * The main jumptable's states call a mix of: the CONFIRMED accept-chain family
 * (fn_8023DE58/fn_8023E10C/fn_8023E724), GetRoomConfigRecord+fn_802DCD0C (settings accessor + a new
 * paired check), fn_8022D75C (new, gating check), fn_801CD950 (new, called 4x with a
 * position pointer + 2 float constants - likely an angle/rotate-toward-target utility),
 * fn_800FDEA0 (the CONFIRMED ring/chain-adjacency library driver, reused in yet another
 * unrelated class), and **PSVECMag** - a REAL, already-named Nintendo SDK vector-magnitude
 * function (reinforcing that this project already has real SDK function names available,
 * as previously confirmed for PSMTXTrans/Identity/Concat/Scale). Nearly every state
 * transition is driven by a self-call to fn_801096C8(this, newState) - this class's own
 * setState().
 *
 * Also: ClassifyBamAngleToQuadrant + an 8-entry sequential name-table membership check against
 * lbl_804642B0 (a "does this animation/type belong to a known set" idiom), fn_801F2618
 * (new), and the CONFIRMED push-vector utility fn_80109AE0 (landed earlier this segment)
 * applied to move this->0xc/0x10/0x14 if it returns nonzero.
 *
 * Tail: `fn_801D1C18(this+0x33c)` - **RESOLVES the open question from fn_801096C8's
 * landing**: this class DOES embed the "timed-cue lookup table" shared component, confirming
 * it as the 5th class this session doing so (offset +0x33c; CONFIRMED by ZLDA's own
 * destructor, fn_8010AF3C, which resets the matching nested-blend-timer vtable at +0x360).
 * After the tail call, self-calls fn_80109534 (the "lazy-spawn companion" method)
 * and fn_8030C210 (the same call seen in fn_801096C8's state 0xa), then conditionally
 * re-enters setState(0xc).
 */

.section extab, "a"
.balign 4
.global etb_80005BB4
etb_80005BB4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005BB4, 8

.section extabindex, "a"
.balign 4
.global eti_80012010
eti_80012010:
    .4byte fn_80109FA4
    .4byte 0x00000E6C
    .4byte etb_80005BB4
.size eti_80012010, 12

.text
.balign 4
.global fn_80109FA4

fn_80109FA4:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stw 31, 0xdc(1)
    mr 31, 3
    stw 30, 0xd8(1)
    bl fn_801F5930
    .4byte 0xC0029448 # lfs f0, lbl_8053C3E8@sda21(r0)
    li 3, 0x1
    stfs 0, 0x330(31)
    stb 3, 0x339(31)
    lfs 1, 0x60(31)
    stfs 1, 0xc0(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc4(1)
    lfs 2, 0x68(31)
    stfs 2, 0xc8(1)
    lfs 3, 0x6c(31)
    stfs 3, 0xcc(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0xc0(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0xc8(1)
    fadds 0, 3, 2
    stfs 1, 0xc4(1)
    stfs 0, 0xcc(1)
    lwz 0, 0x328(31)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_8010A02C
    cmpwi 0, 0x4
    .4byte 0x4181000C # bgt .L_8010A034
L_8010A02C:
    li 3, 0x0
    .4byte 0x48000014 # b .L_8010A044
L_8010A034:
    lbz 0, 0x2f8(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8010A044
    li 3, 0x0
L_8010A044:
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_8010A088
    lis 4, lbl_80464204@ha
    mr 3, 31
    addi 4, 4, lbl_80464204@l
    bl fn_801F26CC
    cmpwi 3, 0x0
    .4byte 0x41800028 # blt .L_8010A088
    lwz 3, 0x108(31)
    subi 0, 3, 0x2
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_8010A088
    mr 3, 31
    li 4, 0xb
    bl fn_801096C8
L_8010A088:
    lwz 0, 0x328(31)
    cmpwi 0, 0x5
    .4byte 0x41800110 # blt .L_8010A1A0
    cmpwi 0, 0x7
    .4byte 0x41810108 # bgt .L_8010A1A0
    lfs 1, 0x60(31)
    addi 3, 1, 0x68
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0x68(1)
    lfs 4, 0x64(31)
    stfs 4, 0x6c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x70(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x74(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x68(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x70(1)
    fadds 0, 3, 2
    stfs 1, 0x6c(1)
    stfs 0, 0x74(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4080000C # bge .L_8010A114
    li 30, -0x1
    .4byte 0x48000078 # b .L_8010A188
L_8010A114:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 30
    lbz 4, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4082000C # bne .L_8010A138
    li 30, -0x1
    .4byte 0x48000054 # b .L_8010A188
L_8010A138:
    li 4, 0x120
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8010A150
    li 30, -0x1
    .4byte 0x4800003C # b .L_8010A188
L_8010A150:
    lwz 5, 0x198(31)
    addi 7, 1, 0x78
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x170
    lfs 0, 0x14(31)
    li 8, 0x20
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x80(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8010A188
    li 30, -0x1
L_8010A188:
    cmpwi 30, 0x0
    .4byte 0x41800014 # blt .L_8010A1A0
    stw 30, 0x304(31)
    mr 3, 31
    li 4, 0x3
    bl fn_801096C8
L_8010A1A0:
    lbz 0, 0x2f8(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8010A1D0
    lwz 3, 0x30c(31)
    addi 0, 3, 0x1
    stw 0, 0x30c(31)
    lwz 0, 0x30c(31)
    cmpwi 0, 0x12c
    .4byte 0x41800010 # blt .L_8010A1D0
    li 0, 0x0
    stb 0, 0x2f8(31)
    stw 0, 0x30c(31)
L_8010A1D0:
    lwz 4, 0x328(31)
    cmplwi 4, 0x11
    .4byte 0x41810A78 # bgt .L_8010AC50
    lis 3, jumptable_8049CF7C@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_8049CF7C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x2fc(31)
    cmpwi 4, 0x0
    .4byte 0x40810030 # ble .L_8010A22C
    lwz 0, 0x320(31)
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_8010A22C
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x9c
    lfs 0, 0x14(31)
    addi 3, 31, 0x230
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0xa4(1)
    lwz 6, 0x4(31)
    bl fn_800FE3EC
L_8010A22C:
    mr 3, 31
    li 4, 0x1
    bl fn_801096C8
    .4byte 0x48000A18 # b .L_8010AC50
    .4byte 0x880D8EC1 # lbz r0, lbl_8053AA81@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_8010A2C4
    cmpwi 4, 0x1
    .4byte 0x40820A04 # bne .L_8010AC50
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x418009DC # blt .L_8010AC50
    lwz 5, 0x198(31)
    addi 7, 1, 0x5c
    lwz 6, 0x4(31)
    li 3, 0x0
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x170
    lfs 0, 0x14(31)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x64(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418209A8 # beq .L_8010AC50
    li 0, 0x0
    mr 3, 31
    .4byte 0x980D8EC1 # stb r0, lbl_8053AA81@sda21(r0)
    li 4, 0x4
    bl fn_801096C8
    .4byte 0x48000990 # b .L_8010AC50
L_8010A2C4:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0xc
    addi 6, 1, 0x20
    addi 7, 1, 0x28
    addi 8, 1, 0x24
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    lwz 3, 0x20(1)
    cmpwi 3, 0x0
    .4byte 0x41800058 # blt .L_8010A348
    lfs 1, 0x28(1)
    .4byte 0xC0029490 # lfs f0, lbl_8053C430@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810048 # bgt .L_8010A348
    lwz 0, 0x328(31)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8010A314
    .4byte 0x48000038 # b .L_8010A348
L_8010A314:
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_8010A348
    lwz 0, 0x344(31)
    addi 4, 3, 0x5
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_8010A348
    addi 3, 31, 0x33c
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229440 # lfs f1, lbl_8053C3E0@sda21(r0)
    addi 3, 31, 0x33c
    bl fn_801D1F14
L_8010A348:
    lwz 0, 0x320(31)
    cmpwi 0, 0x1
    .4byte 0x41820900 # beq .L_8010AC50
    .4byte 0x408008FC # bge .L_8010AC50
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8010A364
    .4byte 0x480008F0 # b .L_8010AC50
L_8010A364:
    lwz 4, 0x4(31)
    addi 3, 1, 0xc0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x418008C8 # blt .L_8010AC50
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x408208BC # bne .L_8010AC50
    lwz 5, 0x198(31)
    addi 7, 1, 0x90
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x230
    lfs 0, 0x14(31)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x98(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820888 # beq .L_8010AC50
    stw 30, 0x300(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801096C8
    .4byte 0x48000874 # b .L_8010AC50
    lwz 3, 0x300(31)
    addi 4, 1, 0xc0
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x300(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820844 # beq .L_8010AC50
    mr 3, 31
    li 4, 0x5
    bl fn_801096C8
    .4byte 0x48000834 # b .L_8010AC50
    lwz 3, 0x304(31)
    addi 4, 1, 0xc0
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x304(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820804 # beq .L_8010AC50
    lwz 4, 0x32c(31)
    mr 3, 31
    bl fn_801096C8
    .4byte 0x480007F4 # b .L_8010AC50
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_8010A4B8
    li 0, 0x1
    .4byte 0xC0229494 # lfs f1, lbl_8053C434@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC0029498 # lfs f0, lbl_8053C438@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_8010A4B8:
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820770 # beq .L_8010AC50
    li 0, 0x0
    mr 3, 31
    .4byte 0x980D8EC1 # stb r0, lbl_8053AA81@sda21(r0)
    li 4, 0x1
    bl fn_801096C8
    .4byte 0x48000758 # b .L_8010AC50
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8010A518
    mr 3, 31
    li 4, 0x1
    bl fn_801096C8
    .4byte 0x4800073C # b .L_8010AC50
L_8010A518:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8010A544
    mr 3, 31
    li 4, 0xf
    bl fn_801096C8
    .4byte 0x48000710 # b .L_8010AC50
L_8010A544:
    lwz 30, 0x300(31)
    cmpwi 30, 0x0
    .4byte 0x41800704 # blt .L_8010AC50
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8010A570
    mr 3, 31
    li 4, 0x9
    bl fn_801096C8
    .4byte 0x480006E4 # b .L_8010AC50
L_8010A570:
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8010A5C4
    mr 3, 30
    bl fn_8023E10C
    cmpwi 3, 0x8
    .4byte 0x40820014 # bne .L_8010A5A0
    mr 3, 31
    li 4, 0x7
    bl fn_801096C8
    .4byte 0x480006B4 # b .L_8010AC50
L_8010A5A0:
    mr 3, 30
    bl fn_8023DE58
    stw 3, 0x4(31)
    li 0, 0x0
    mr 3, 31
    li 4, 0xa
    stb 0, 0x339(31)
    bl fn_801096C8
    .4byte 0x48000690 # b .L_8010AC50
L_8010A5C4:
    .4byte 0xC0029440 # lfs f0, lbl_8053C3E0@sda21(r0)
    li 0, 0x0
    sth 0, 0xa(1)
    mr 3, 31
    mr 9, 30
    addi 5, 1, 0xa
    stw 0, 0x14(1)
    addi 6, 1, 0x14
    addi 7, 1, 0x1c
    addi 8, 1, 0x18
    stw 0, 0x18(1)
    li 10, 0x2
    stfs 0, 0x1c(1)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lfs 1, 0x1c(1)
    .4byte 0xC0029460 # lfs f0, lbl_8053C400@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8010A628
    .4byte 0xC0229464 # lfs f1, lbl_8053C404@sda21(r0)
    addi 3, 31, 0x334
    .4byte 0xC0429468 # lfs f2, lbl_8053C408@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000014 # b .L_8010A638
L_8010A628:
    .4byte 0xC0229440 # lfs f1, lbl_8053C3E0@sda21(r0)
    addi 3, 31, 0x334
    .4byte 0xC042946C # lfs f2, lbl_8053C40C@sda21(r0)
    bl fn_801CD950
L_8010A638:
    lhz 0, 0xa(1)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    lfs 1, 0x334(31)
    rlwinm 0, 0, 30, 18, 28
    addi 3, 31, 0x3c
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x3c(31)
    lhz 0, 0xa(1)
    lfs 1, 0x334(31)
    rlwinm 0, 0, 30, 18, 28
    add 4, 4, 0
    lfs 0, 0x4(4)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x0(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x8(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl PSVECMag
    .4byte 0xC0429464 # lfs f2, lbl_8053C404@sda21(r0)
    .4byte 0xC0029448 # lfs f0, lbl_8053C3E8@sda21(r0)
    fdivs 1, 1, 2
    stfs 1, 0x330(31)
    lfs 1, 0x330(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8010A6C0
    stfs 0, 0x330(31)
L_8010A6C0:
    lwz 4, 0x14(1)
    cmpwi 4, 0x0
    .4byte 0x41800588 # blt .L_8010AC50
    lwz 0, 0x344(31)
    cmpw 4, 0
    .4byte 0x4182057C # beq .L_8010AC50
    addi 3, 31, 0x33c
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229440 # lfs f1, lbl_8053C3E0@sda21(r0)
    addi 3, 31, 0x33c
    bl fn_801D1F14
    .4byte 0x4800055C # b .L_8010AC50
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_8010A710
    mr 3, 31
    li 4, 0x1
    bl fn_801096C8
L_8010A710:
    lwz 3, 0x300(31)
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820534 # bne .L_8010AC50
    lwz 3, 0x300(31)
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x40820520 # bne .L_8010AC50
    mr 3, 31
    li 4, 0x8
    bl fn_801096C8
    .4byte 0x48000510 # b .L_8010AC50
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_8010A75C
    mr 3, 31
    li 4, 0x1
    bl fn_801096C8
L_8010A75C:
    lwz 3, 0x314(31)
    addi 0, 3, 0x1
    stw 0, 0x314(31)
    lwz 0, 0x314(31)
    cmpwi 0, 0xf
    .4byte 0x418004E0 # blt .L_8010AC50
    li 0, 0x0
    mr 3, 31
    stw 0, 0x314(31)
    li 4, 0x5
    bl fn_801096C8
    .4byte 0x480004C8 # b .L_8010AC50
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x418000D0 # blt .L_8010A864
    li 0, 0x0
    stb 0, 0x339(31)
    lwz 3, 0x300(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x50(1), 0, 0
    lwz 3, 0x300(31)
    stfs 0, 0x58(1)
    bl fn_80230CFC
    stw 3, 0x98(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_8010A818
    .4byte 0x40800014 # bge .L_8010A7E4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8010A7F0
    .4byte 0x40800028 # bge .L_8010A804
    .4byte 0x4800005C # b .L_8010A83C
L_8010A7E4:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_8010A83C
    .4byte 0x48000040 # b .L_8010A82C
L_8010A7F0:
    lfs 1, 0x50(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x50(1)
    .4byte 0x4800003C # b .L_8010A83C
L_8010A804:
    lfs 1, 0x50(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x50(1)
    .4byte 0x48000028 # b .L_8010A83C
L_8010A818:
    lfs 1, 0x54(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x54(1)
    .4byte 0x48000014 # b .L_8010A83C
L_8010A82C:
    lfs 1, 0x54(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x54(1)
L_8010A83C:
    .4byte 0xC0029450 # lfs f0, lbl_8053C3F0@sda21(r0)
    addi 3, 31, 0xc
    lfs 1, 0x50(1)
    stfs 0, 0x330(31)
    .4byte 0xC0429458 # lfs f2, lbl_8053C3F8@sda21(r0)
    bl fn_801CD950
    lfs 1, 0x54(1)
    addi 3, 31, 0x10
    .4byte 0xC0429458 # lfs f2, lbl_8053C3F8@sda21(r0)
    bl fn_801CD950
L_8010A864:
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x408203E0 # bne .L_8010AC50
    mr 3, 31
    li 4, 0x5
    bl fn_801096C8
    .4byte 0x480003D0 # b .L_8010AC50
    lwz 3, 0x300(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x41800108 # blt .L_8010A9A0
    li 0, 0x0
    stb 0, 0x339(31)
    lwz 3, 0x300(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x44(1), 0, 0
    lwz 3, 0x300(31)
    stfs 0, 0x4c(1)
    bl fn_80230CFC
    stw 3, 0x98(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_8010A91C
    .4byte 0x40800014 # bge .L_8010A8E8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8010A8F4
    .4byte 0x40800028 # bge .L_8010A908
    .4byte 0x4800005C # b .L_8010A940
L_8010A8E8:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_8010A940
    .4byte 0x48000040 # b .L_8010A930
L_8010A8F4:
    lfs 1, 0x44(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(1)
    .4byte 0x4800003C # b .L_8010A940
L_8010A908:
    lfs 1, 0x44(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(1)
    .4byte 0x48000028 # b .L_8010A940
L_8010A91C:
    lfs 1, 0x48(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x48(1)
    .4byte 0x48000014 # b .L_8010A940
L_8010A930:
    lfs 1, 0x48(1)
    .4byte 0xC002944C # lfs f0, lbl_8053C3EC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x48(1)
L_8010A940:
    .4byte 0xC0029450 # lfs f0, lbl_8053C3F0@sda21(r0)
    stfs 0, 0x330(31)
    lwz 3, 0x300(31)
    bl fn_8023E10C
    mr 30, 3
    lwz 3, 0x300(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x40820020 # bne .L_8010A980
    lfs 0, 0x44(1)
    lfs 1, 0x48(1)
    stfs 0, 0xc(31)
    lfs 0, 0x4c(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    .4byte 0x48000024 # b .L_8010A9A0
L_8010A980:
    lfs 1, 0x44(1)
    addi 3, 31, 0xc
    .4byte 0xC0429454 # lfs f2, lbl_8053C3F4@sda21(r0)
    bl fn_801CD950
    lfs 1, 0x48(1)
    addi 3, 31, 0x10
    .4byte 0xC0429454 # lfs f2, lbl_8053C3F4@sda21(r0)
    bl fn_801CD950
L_8010A9A0:
    lwz 3, 0x300(31)
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x408202A4 # bne .L_8010AC50
    mr 3, 31
    li 4, 0x5
    bl fn_801096C8
    .4byte 0x48000294 # b .L_8010AC50
    addi 3, 31, 0x33c
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x41820284 # beq .L_8010AC50
    lwz 4, 0x32c(31)
    mr 3, 31
    bl fn_801096C8
    .4byte 0x48000274 # b .L_8010AC50
    addi 3, 31, 0x33c
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x41820264 # beq .L_8010AC50
    lwz 3, 0x308(31)
    addi 0, 3, 0x1
    stw 0, 0x308(31)
    lwz 0, 0x308(31)
    cmpwi 0, 0x5a
    .4byte 0x4180024C # blt .L_8010AC50
    mr 3, 31
    li 4, 0xd
    bl fn_801096C8
    .4byte 0x4800023C # b .L_8010AC50
    addi 3, 31, 0x33c
    bl fn_801D1C18
    .4byte 0x880D8EC0 # lbz r0, lbl_8053AA80@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820228 # beq .L_8010AC50
    mr 3, 31
    li 4, 0xe
    bl fn_801096C8
    .4byte 0x48000218 # b .L_8010AC50
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8010AA58
    mr 3, 31
    li 4, 0x1
    bl fn_801096C8
    .4byte 0x480001FC # b .L_8010AC50
L_8010AA58:
    mr 3, 31
    li 4, 0x5
    bl fn_801096C8
    .4byte 0x480001EC # b .L_8010AC50
    lwz 3, 0x318(31)
    addi 0, 3, 0x1
    stw 0, 0x318(31)
    lwz 0, 0x318(31)
    cmpwi 0, 0xf
    .4byte 0x408001D4 # bge .L_8010AC50
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8010AA94
    li 0, 0x1
    .4byte 0x480000E0 # b .L_8010AB70
L_8010AA94:
    .4byte 0xC0029440 # lfs f0, lbl_8053C3E0@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    addi 4, 1, 0x38
    .4byte 0xC0229448 # lfs f1, lbl_8053C3E8@sda21(r0)
    addi 3, 31, 0x230
    stfs 0, 0x2c(1)
    addi 5, 1, 0x2c
    addi 6, 1, 0x10
    addi 7, 1, 0x8
    stfs 0, 0x30(1)
    li 8, 0x200
    stfs 0, 0x34(1)
    lwz 0, 0x4(31)
    stw 0, 0x10(1)
    psq_l 2, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 2, 0x0(4), 0, 0
    stfs 0, 0x40(1)
    bl fn_800FDEA0
    cmpwi 3, 0x3
    .4byte 0x4082000C # bne .L_8010AAF4
    li 0, 0x1
    .4byte 0x48000080 # b .L_8010AB70
L_8010AAF4:
    lfs 0, 0x2c(1)
    stfs 0, 0x3c(31)
    lfs 0, 0x30(1)
    stfs 0, 0x40(31)
    lfs 0, 0x34(1)
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lha 0, 0x8(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_8010AB6C
    lwz 0, 0x344(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_8010AB6C
    mr 4, 3
    addi 3, 31, 0x33c
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229440 # lfs f1, lbl_8053C3E0@sda21(r0)
    addi 3, 31, 0x33c
    bl fn_801D1F14
L_8010AB6C:
    li 0, 0x0
L_8010AB70:
    clrlwi. 0, 0, 24
    .4byte 0x418200DC # beq .L_8010AC50
    mr 3, 31
    li 4, 0x10
    bl fn_801096C8
    .4byte 0x480000CC # b .L_8010AC50
    lwz 4, 0x4(31)
    addi 3, 1, 0xc0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x31c(31)
    lwz 3, 0x31c(31)
    cmpwi 3, 0x0
    .4byte 0x4180009C # blt .L_8010AC50
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lbz 4, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820080 # beq .L_8010AC50
    lwz 5, 0x198(31)
    addi 7, 1, 0x84
    lwz 6, 0x4(31)
    li 4, 0x16e
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x28
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x8c(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_8010AC50
    mr 3, 31
    li 4, 0x11
    bl fn_801096C8
    .4byte 0x48000040 # b .L_8010AC50
    lwz 3, 0x31c(31)
    addi 4, 1, 0xc0
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x31c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8010AC50
    mr 3, 31
    li 4, 0x10
    bl fn_801096C8
L_8010AC50:
    lbz 0, 0x338(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8010AC6C
    lwz 4, 0x4(31)
    addi 3, 1, 0xc0
    lwz 5, 0x198(31)
    bl fn_80239914
L_8010AC6C:
    lbz 0, 0x339(31)
    cmplwi 0, 0x0
    .4byte 0x418200E8 # beq .L_8010AD5C
    lwz 3, 0x300(31)
    li 4, 0x400
    bl fn_8022C52C
    cmplwi 3, 0x0
    .4byte 0x408200D4 # bne .L_8010AD5C
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    lis 4, lbl_804642B0@ha
    lhzu 0, lbl_804642B0@l(4)
    clrlwi 3, 3, 16
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010ACB4
    li 0, 0x1
    .4byte 0x48000094 # b .L_8010AD44
L_8010ACB4:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010ACC8
    li 0, 0x1
    .4byte 0x48000080 # b .L_8010AD44
L_8010ACC8:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010ACDC
    li 0, 0x1
    .4byte 0x4800006C # b .L_8010AD44
L_8010ACDC:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010ACF0
    li 0, 0x1
    .4byte 0x48000058 # b .L_8010AD44
L_8010ACF0:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010AD04
    li 0, 0x1
    .4byte 0x48000044 # b .L_8010AD44
L_8010AD04:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010AD18
    li 0, 0x1
    .4byte 0x48000030 # b .L_8010AD44
L_8010AD18:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010AD2C
    li 0, 0x1
    .4byte 0x4800001C # b .L_8010AD44
L_8010AD2C:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8010AD40
    li 0, 0x1
    .4byte 0x48000008 # b .L_8010AD44
L_8010AD40:
    li 0, 0x0
L_8010AD44:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8010AD5C
    mr 3, 31
    addi 4, 1, 0xb4
    li 5, 0x0
    bl fn_801F2618
L_8010AD5C:
    .4byte 0xC0029440 # lfs f0, lbl_8053C3E0@sda21(r0)
    mr 3, 31
    addi 4, 1, 0xa8
    stfs 0, 0xa8(1)
    stfs 0, 0xac(1)
    stfs 0, 0xb0(1)
    bl fn_80109AE0
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8010ADA0
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0xa8(1), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0xb0(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_8010ADA0:
    lfs 0, 0x330(31)
    addi 3, 31, 0x33c
    stfs 0, 0x36c(31)
    bl fn_801D1C18
    mr 3, 31
    bl fn_80109534
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_8010ADF8
    lwz 0, 0x328(31)
    cmpwi 0, 0xc
    .4byte 0x4080001C # bge .L_8010ADF8
    lbz 0, 0x2f8(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8010ADF8
    mr 3, 31
    li 4, 0xc
    bl fn_801096C8
L_8010ADF8:
    lwz 0, 0xe4(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

