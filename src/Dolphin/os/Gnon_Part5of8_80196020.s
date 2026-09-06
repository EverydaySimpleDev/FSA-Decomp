# GNON cluster, part 5/8 - one dtk-fused block, 12 functions, landed
# together. 4 of these were FULLY understood in an earlier deep-dive
# session (project_fsa_gnon_actor_progress) but never build-wired until
# now; this landing carries that understanding forward unchanged.
#
# - fn_80196020 (Track A + overview, 488B) - NOT part of the original
#   7-slot manifest, a private helper sitting directly before slot22.
#   Releases 2 of the 5 shared effect-handle slots (this->0x328/0x32c,
#   the same array the destructor/update() manage) via the confirmed
#   "stop/release-requested" idiom, spawns 2 replacement sound/effect
#   instances via fn_8013CC50 (IDs 0x2a6/0x2a7) at the current target's
#   position (fn_8023E724), then calls fn_8022F3DC (sign-check,
#   possibly clamping a target index), fn_8022CA6C, and fn_802317F0 (a
#   lookup-table-driven transition check using lbl_804C1BC0/804C1BD0
#   indexed by target index) to pick between two hitbox/state-config
#   outcomes (this->0x230/0x234/0x2a8) - a phase/attack-cue trigger
#   sibling to update()'s own "timer expired" handler.
# - fn_80196208 - slot 22, the genuine 23rd virtual (no counterpart in
#   the base 21/22-slot vtables). Ganon's target-selection boss-AI:
#   filters the 4 players by facing-match + 2 validity checks
#   (fn_80230188/fn_8022DCD8), picks the extremal one by a mode-
#   dependent metric (fn_80237774/fn_80236228) with a randomized
#   PRNG tie-breaker, computes the real distance via a fast-inverse-
#   sqrt + Newton-Raphson refinement (with a defensive NaN/Inf/zero
#   bit-pattern classifier for the degenerate distSq==0 case), and
#   records both the chosen player index (this->0x2fc) and a
#   randomized attack/animation-variant value (this->0x304).
# - fn_801964AC - slot 21. A dual-track byte-code SCRIPT INTERPRETER
#   driving Ganon's attack-phase progression: this->0x28c is the
#   active phase/script ID; on a phase change, resets both tracks'
#   opcode caches (0x234/0x238) and cursors (0x25c/0x260) to zero.
#   Each track independently: when its timer field hits 0, fetches the
#   next script byte from a per-phase byte-array table (base
#   lbl_804A1FF8+0x120 for track1, +0x2a0/+0x2e0 for track2) and
#   advances the cursor; on the 0xFF end-of-script sentinel, applies
#   explicit phase transitions (2->3, d/e->9, 9->a) with track1 ALSO
#   firing a settings-gated event fn_801F0E34(0x50006) at specific
#   transitions. Track1/track2 script bytes are confirmed byte-
#   identical at every static phase read from the DOL; only track1
#   fires the event signal.
# - fn_80196834 - destructor. Releases the 5-slot effect-handle array
#   (this->0x328-0x338, stride 4) via the confirmed fn_801EE434
#   range-aware conditional release, then the shared base dtor
#   dtor_801F593C, then a conditional second-base dtor dtor_80084580.
# - fn_801968C8 - setParams. Does NOT chain to the base Actor's default
#   setParams (a genuine structural difference from every other actor
#   decompiled in this project) - fully replaces it instead. Zeroes a
#   large block of Ganon-specific state (0x234-0x280, sentinels at
#   0x308-0x324), and when this->0x90==0 (default spawn): sets a
#   packed model/resource ID (this->0xb0), registers itself into the
#   global "current boss" singleton (lbl_80539FE8 = this->0x4), and
#   snapshots all 4 players' current positions (Player_GetCapabilityFlagByIndex validity +
#   fn_8023E724 position) into a 4-slot Vec3 array (this->0x40/0x4c/
#   0x58/0x64). The universal spawn-parameter field (this->0x90) then
#   selects Ganon's PHASE/FORM via distinct numeric ranges (0xa-0xd,
#   0x14-0x17, ...), each configuring different hitbox sizes and a
#   different this->0x230 state-config value.
# - fn_80196CF4/D18/D24/D70 - trivial vector-copy/setter accessors
#   (various offset pairs: 0x98/0x9c/0xa0+0xb0/0xb4, 0xb0/0xb4, 0x0/0x4,
#   0x0/0x4/0x8).
# - fn_80196D30 - wrapper: passes the global PRNG struct to fn_80134DE4.
# - fn_80196D60 - trivial 3-float setter (0x0/0x4/0x8).
# - fn_80196D8C - wrapper: per-room config query via GetRoomConfigRecord then
#   fn_802D79E8.
.section extab, "a"
.balign 4
.global etb_8000780C
etb_8000780C:
    .4byte 0x10880000
    .4byte 0x00000000
.size etb_8000780C, 8

.global etb_80007814
etb_80007814:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007814, 8

.global etb_8000781C
etb_8000781C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000781C, 8

.global etb_80007824
etb_80007824:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80007824, 8

.global etb_8000782C
etb_8000782C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000782C, 8

.global etb_80007834
etb_80007834:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80007834, 8

.global etb_8000783C
etb_8000783C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000783C, 8

.section extabindex, "a"
.balign 4
.global eti_80014590
eti_80014590:
    .4byte fn_80196020
    .4byte 0x000001E8
    .4byte etb_8000781C
.size eti_80014590, 12

.global eti_8001459C
eti_8001459C:
    .4byte fn_80196208
    .4byte 0x000002A4
    .4byte etb_80007824
.size eti_8001459C, 12

.global eti_800145A8
eti_800145A8:
    .4byte fn_801964AC
    .4byte 0x00000388
    .4byte etb_8000782C
.size eti_800145A8, 12

.global eti_800145B4
eti_800145B4:
    .4byte fn_80196834
    .4byte 0x00000094
    .4byte etb_80007834
.size eti_800145B4, 12

.global eti_800145C0
eti_800145C0:
    .4byte fn_801968C8
    .4byte 0x0000042C
    .4byte etb_8000783C
.size eti_800145C0, 12

.global eti_800145CC
eti_800145CC:
    .4byte fn_80196D30
    .4byte 0x00000030
    .4byte etb_80007814
.size eti_800145CC, 12

.global eti_800145D8
eti_800145D8:
    .4byte fn_80196D8C
    .4byte 0x00000064
    .4byte etb_8000780C
.size eti_800145D8, 12

.text
.balign 4
.global fn_80196020
.global fn_80196208
.global fn_801964AC
.global fn_80196834
.global fn_801968C8
.global fn_80196CF4
.global fn_80196D18
.global fn_80196D24
.global fn_80196D30
.global fn_80196D60
.global fn_80196D70
.global fn_80196D8C

fn_80196020:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr. 30, 4
    .4byte 0x418001B4 # blt .L_801961F0
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x40800118 # bge .L_80196160
    lwz 6, 0x328(31)
    li 3, 0x1
    li 0, 0x0
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80196074
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x328(31)
L_80196074:
    lwz 6, 0x32c(31)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80196094
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x32c(31)
L_80196094:
    addi 5, 31, 0x8
    lwz 6, 0x330(31)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_801960B8
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x328(5)
L_801960B8:
    lwz 6, 0x32c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_801960D8
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x32c(5)
L_801960D8:
    lwz 6, 0x330(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_801960F8
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x330(5)
L_801960F8:
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x2a6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x2a7
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
L_80196160:
    mr 3, 30
    bl fn_8022F3DC
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8019617C
    mr 3, 30
    bl fn_8022F3DC
    mr 30, 3
L_8019617C:
    mr 3, 30
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    mr 3, 30
    bl fn_8023E724
    lis 6, lbl_804C1BC0@ha
    lis 4, lbl_804C1BD0@ha
    addi 7, 6, lbl_804C1BC0@l
    mr 5, 3
    mulli 6, 30, 0xc
    slwi 8, 30, 2
    addi 0, 4, lbl_804C1BD0@l
    lwzx 4, 7, 8
    mr 3, 30
    li 7, 0x6
    add 6, 0, 6
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801961E8
    .4byte 0xC002B2F8 # lfs f0, lbl_8053E298@sda21(r0)
    li 3, 0x64
    li 0, 0x22
    stfs 0, 0x2a8(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_801961F0
L_801961E8:
    li 0, 0x21
    stw 0, 0x230(31)
L_801961F0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80196208:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 28, 3
    li 0, -0x1
    stw 0, 0x2fc(3)
    mr 29, 4
    li 31, -0x1
    li 30, 0x0
L_80196238:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820240 # beq .L_80196484
    lwz 27, 0x4(28)
    mr 3, 30
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x4082022C # bne .L_80196484
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082021C # bne .L_80196484
    mr 3, 30
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x4082020C # bne .L_80196484
    cmpwi 29, 0x0
    .4byte 0x40820014 # bne .L_80196294
    mr 3, 30
    bl fn_80237774
    cmpw 3, 31
    .4byte 0x4080001C # bge .L_801962AC
L_80196294:
    cmpwi 29, 0x1
    .4byte 0x408201EC # bne .L_80196484
    mr 3, 30
    bl fn_80236228
    cmpw 3, 31
    .4byte 0x418001DC # blt .L_80196484
L_801962AC:
    cmpwi 29, 0x0
    .4byte 0x40820014 # bne .L_801962C4
    mr 3, 30
    bl fn_80237774
    cmpw 31, 3
    .4byte 0x4182001C # beq .L_801962DC
L_801962C4:
    cmpwi 29, 0x1
    .4byte 0x4082005C # bne .L_80196324
    mr 3, 30
    bl fn_80236228
    cmpw 31, 3
    .4byte 0x4082004C # bne .L_80196324
L_801962DC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B2E4 # lfs f0, lbl_8053E284@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x41800164 # blt .L_80196484
L_80196324:
    cmpwi 29, 0x0
    .4byte 0x40820010 # bne .L_80196338
    mr 3, 30
    bl fn_80237774
    mr 31, 3
L_80196338:
    cmpwi 29, 0x1
    .4byte 0x40820010 # bne .L_8019634C
    mr 3, 30
    bl fn_80236228
    mr 31, 3
L_8019634C:
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 30
    lfs 0, 0xc(28)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(28)
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 2, 2
    fmadds 5, 31, 31, 1
    fcmpo cr0, 5, 0
    .4byte 0x4081004C # ble .L_801963D0
    frsqrte 1, 5
    .4byte 0xC882B3A8 # lfd f4, lbl_8053E348@sda21(r0)
    .4byte 0xC862B3B0 # lfd f3, lbl_8053E350@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 4, 1
    fnmsub 0, 5, 0, 3
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 4, 1
    fnmsub 0, 5, 0, 3
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 4, 1
    fnmsub 0, 5, 0, 3
    fmul 0, 1, 0
    fmul 5, 5, 0
    frsp 5, 5
    .4byte 0x48000088 # b .L_80196454
L_801963D0:
    .4byte 0xC802B3B8 # lfd f0, lbl_8053E358@sda21(r0)
    fcmpo cr0, 5, 0
    .4byte 0x40800010 # bge .L_801963E8
    lis 3, lbl_80539D38@ha
    lfs 5, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80196454
L_801963E8:
    stfs 5, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80196410
    .4byte 0x40800040 # bge .L_80196440
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80196428
    .4byte 0x48000034 # b .L_80196440
L_80196410:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80196420
    li 0, 0x1
    .4byte 0x48000028 # b .L_80196444
L_80196420:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80196444
L_80196428:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80196438
    li 0, 0x5
    .4byte 0x48000010 # b .L_80196444
L_80196438:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80196444
L_80196440:
    li 0, 0x4
L_80196444:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80196454
    lis 3, lbl_80539D38@ha
    lfs 5, lbl_80539D38@l(3)
L_80196454:
    fmr 1, 31
    lis 3, lbl_80534C00@ha
    stfs 5, 0x2f4(28)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002B3C0 # lfs f0, lbl_8053E360@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x304(28)
    stw 30, 0x2fc(28)
L_80196484:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FDAC # blt .L_80196238
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801964AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lis 3, lbl_804A1FF8@ha
    lwz 4, 0x28c(30)
    addi 31, 3, lbl_804A1FF8@l
    lwz 0, 0x290(30)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_801964F8
    stw 4, 0x290(30)
    li 0, 0x0
    stb 0, 0x2a4(30)
    stw 0, 0x234(30)
    stw 0, 0x238(30)
    stw 0, 0x25c(30)
    stw 0, 0x260(30)
L_801964F8:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x408201C0 # bne .L_801966C0
    lwz 3, 0x28c(30)
    addi 5, 31, 0x120
    lwz 0, 0x25c(30)
    addi 4, 31, 0x0
    slwi 6, 3, 2
    addi 3, 31, 0x160
    lwzx 5, 5, 6
    lbzx 0, 5, 0
    stw 0, 0x284(30)
    lwz 0, 0x28c(30)
    lwz 5, 0x284(30)
    slwi 0, 0, 1
    lhax 0, 4, 0
    add 0, 5, 0
    stw 0, 0x284(30)
    lwz 4, 0x28c(30)
    lwz 0, 0x25c(30)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    lbzx 0, 3, 0
    stw 0, 0x234(30)
    lwz 3, 0x25c(30)
    addi 0, 3, 0x1
    stw 0, 0x25c(30)
    lwz 0, 0x28c(30)
    cmpwi 0, 0x8
    .4byte 0x40820030 # bne .L_8019659C
    lwz 0, 0x264(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80196594
    lwz 0, 0x25c(30)
    cmpwi 0, 0x2
    .4byte 0x40810018 # ble .L_8019659C
    li 0, 0x0
    stw 0, 0x25c(30)
    .4byte 0x4800000C # b .L_8019659C
L_80196594:
    li 0, 0x0
    stb 0, 0x2a5(30)
L_8019659C:
    lwz 5, 0x28c(30)
    addi 4, 31, 0x120
    lwz 3, 0x25c(30)
    slwi 0, 5, 2
    lwzx 4, 4, 0
    lbzx 0, 4, 3
    cmplwi 0, 0xff
    .4byte 0x40820108 # bne .L_801966C0
    cmplwi 5, 0x1
    .4byte 0x40810024 # ble .L_801965E4
    cmpwi 5, 0x5
    .4byte 0x4182001C # beq .L_801965E4
    cmpwi 5, 0x3
    .4byte 0x41820014 # beq .L_801965E4
    cmpwi 5, 0xa
    .4byte 0x4182000C # beq .L_801965E4
    cmpwi 5, 0xc
    .4byte 0x40820048 # bne .L_80196628
L_801965E4:
    li 0, 0x0
    stw 0, 0x25c(30)
    lwz 0, 0x28c(30)
    cmpwi 0, 0xa
    .4byte 0x40820050 # bne .L_80196644
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80196610
    lwz 0, 0x230(30)
    cmpwi 0, 0xb
    .4byte 0x41820038 # beq .L_80196644
L_80196610:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x6
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000020 # b .L_80196644
L_80196628:
    cmpwi 5, 0x6
    .4byte 0x40820010 # bne .L_8019663C
    li 0, 0x4
    stw 0, 0x25c(30)
    .4byte 0x4800000C # b .L_80196644
L_8019663C:
    subi 0, 3, 0x1
    stw 0, 0x25c(30)
L_80196644:
    li 0, 0x1
    stb 0, 0x2a4(30)
    lwz 0, 0x28c(30)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_80196668
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x28c(30)
    stw 0, 0x25c(30)
L_80196668:
    lwz 0, 0x28c(30)
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_8019667C
    cmpwi 0, 0xe
    .4byte 0x40820018 # bne .L_80196690
L_8019667C:
    li 3, 0x0
    li 0, 0x9
    stb 3, 0x2a4(30)
    stw 3, 0x25c(30)
    stw 0, 0x28c(30)
L_80196690:
    lwz 0, 0x28c(30)
    cmpwi 0, 0x9
    .4byte 0x40820028 # bne .L_801966C0
    li 0, 0xa
    lis 4, 0x5
    stw 0, 0x28c(30)
    mr 3, 30
    addi 4, 4, 0x6
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0x25c(30)
L_801966C0:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820154 # bne .L_8019681C
    lwz 3, 0x28c(30)
    addi 5, 31, 0x2a0
    lwz 0, 0x260(30)
    addi 4, 31, 0x0
    slwi 6, 3, 2
    addi 3, 31, 0x2e0
    lwzx 5, 5, 6
    lbzx 0, 5, 0
    stw 0, 0x288(30)
    lwz 0, 0x28c(30)
    lwz 5, 0x288(30)
    slwi 0, 0, 1
    lhax 0, 4, 0
    add 0, 5, 0
    stw 0, 0x288(30)
    lwz 4, 0x28c(30)
    lwz 0, 0x260(30)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    lbzx 0, 3, 0
    stw 0, 0x238(30)
    lwz 3, 0x260(30)
    addi 0, 3, 0x1
    stw 0, 0x260(30)
    lwz 0, 0x28c(30)
    cmpwi 0, 0x8
    .4byte 0x40820024 # bne .L_80196758
    lwz 0, 0x264(30)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80196758
    lwz 0, 0x260(30)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_80196758
    li 0, 0x0
    stw 0, 0x260(30)
L_80196758:
    lwz 5, 0x28c(30)
    addi 4, 31, 0x2a0
    lwz 3, 0x260(30)
    slwi 0, 5, 2
    lwzx 4, 4, 0
    lbzx 0, 4, 3
    cmplwi 0, 0xff
    .4byte 0x408200A8 # bne .L_8019681C
    cmplwi 5, 0x1
    .4byte 0x40810024 # ble .L_801967A0
    cmpwi 5, 0x5
    .4byte 0x4182001C # beq .L_801967A0
    cmpwi 5, 0x3
    .4byte 0x41820014 # beq .L_801967A0
    cmpwi 5, 0xa
    .4byte 0x4182000C # beq .L_801967A0
    cmpwi 5, 0xc
    .4byte 0x40820010 # bne .L_801967AC
L_801967A0:
    li 0, 0x0
    stw 0, 0x260(30)
    .4byte 0x48000020 # b .L_801967C8
L_801967AC:
    cmpwi 5, 0x6
    .4byte 0x40820010 # bne .L_801967C0
    li 0, 0x4
    stw 0, 0x260(30)
    .4byte 0x4800000C # b .L_801967C8
L_801967C0:
    subi 0, 3, 0x1
    stw 0, 0x260(30)
L_801967C8:
    lwz 0, 0x28c(30)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_801967E4
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x28c(30)
    stw 0, 0x260(30)
L_801967E4:
    lwz 0, 0x28c(30)
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_801967F8
    cmpwi 0, 0xe
    .4byte 0x4082000C # bne .L_80196800
L_801967F8:
    li 0, 0x0
    stw 0, 0x260(30)
L_80196800:
    lwz 0, 0x28c(30)
    cmpwi 0, 0x9
    .4byte 0x40820014 # bne .L_8019681C
    li 3, 0xa
    li 0, 0x0
    stw 3, 0x28c(30)
    stw 0, 0x260(30)
L_8019681C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80196834:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x4182004C # beq .L_801968A4
    lis 3, lbl_804A25F0@ha
    mr 31, 28
    addi 0, 3, lbl_804A25F0@l
    li 30, 0x0
    stw 0, 0x0(28)
L_80196870:
    lwz 3, 0x328(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFEC # blt .L_80196870
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_801968A4
    mr 3, 28
    bl dtor_80084580
L_801968A4:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801968C8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    li 7, 0x0
    lis 8, lbl_804C1BC0@ha
    stw 7, 0x25c(3)
    mr 30, 3
    lis 3, 0x19
    li 6, -0x1
    stw 7, 0x260(30)
    li 5, 0x1
    .4byte 0xC062B2D8 # lfs f3, lbl_8053E278@sda21(r0)
    li 4, 0x1e0
    stw 7, 0x264(30)
    addi 0, 3, 0x660d
    .4byte 0xC002B310 # lfs f0, lbl_8053E2B0@sda21(r0)
    addi 31, 8, lbl_804C1BC0@l
    stw 7, 0x268(30)
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    stw 7, 0x26c(30)
    .4byte 0xC042B3C4 # lfs f2, lbl_8053E364@sda21(r0)
    stw 7, 0x270(30)
    stw 7, 0x274(30)
    stw 7, 0x278(30)
    stw 7, 0x27c(30)
    stw 7, 0x280(30)
    stw 7, 0x234(30)
    stw 7, 0x238(30)
    stw 7, 0x23c(30)
    stw 7, 0x240(30)
    stw 7, 0x244(30)
    stw 7, 0x248(30)
    stw 7, 0x24c(30)
    stw 7, 0x250(30)
    stw 7, 0x254(30)
    stw 7, 0x258(30)
    stw 6, 0x318(30)
    stw 6, 0x31c(30)
    stw 6, 0x320(30)
    stw 6, 0x324(30)
    sth 7, 0x94(30)
    stb 5, 0x196(30)
    stw 6, 0x308(30)
    stw 6, 0x30c(30)
    stw 6, 0x310(30)
    stw 6, 0x314(30)
    stw 7, 0x284(30)
    stw 7, 0x288(30)
    sth 7, 0x2b4(30)
    stw 7, 0x29c(30)
    stw 7, 0x28c(30)
    stw 7, 0x290(30)
    stfs 3, 0x2c0(30)
    stfs 3, 0x2bc(30)
    stfs 3, 0x2b8(30)
    stfs 3, 0x44(30)
    stfs 3, 0x40(30)
    stfs 3, 0x3c(30)
    stw 4, 0x298(30)
    stw 7, 0x2a0(30)
    stfs 3, 0x2a8(30)
    stw 6, 0x294(30)
    stw 6, 0x2f8(30)
    stfs 0, 0x2ac(30)
    stfs 0, 0x2b0(30)
    stb 7, 0x2a5(30)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x2b6(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2dc(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2e0(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2e4(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2e8(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2ec(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2f0(30)
    stfs 1, 0x54(30)
    stfs 1, 0x58(30)
    stfs 1, 0x5c(30)
    stfs 1, 0x2d0(30)
    stfs 1, 0x2d4(30)
    stfs 1, 0x2d8(30)
    li 0, 0x2
    stfs 3, 0x2f4(30)
    stw 7, 0x300(30)
    stw 6, 0x2fc(30)
    sth 7, 0x304(30)
    stw 7, 0x328(30)
    stw 7, 0x32c(30)
    stw 7, 0x330(30)
    stw 7, 0x334(30)
    stw 7, 0x338(30)
    stb 7, 0x2a4(30)
    stb 5, 0x2a6(30)
    stw 0, 0x118(30)
    lwz 0, 0x90(30)
    cmplwi 0, 0x0
    .4byte 0x4082009C # bne .L_80196B44
    lis 3, 0xa04
    addi 29, 31, 0x40
    addi 0, 3, 0x4
    li 28, 0x0
    stw 0, 0xb0(30)
    .4byte 0x98ED8FD1 # stb r7, lbl_8053AB91@sda21(r0)
    lwz 0, 0x4(30)
    .4byte 0x900D8428 # stw r0, lbl_80539FE8@sda21(r0)
L_80196ACC:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80196AFC
    mr 3, 28
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x0(29)
    lfs 0, 0x4(3)
    stfs 0, 0x4(29)
    lfs 0, 0x8(3)
    stfs 0, 0x8(29)
L_80196AFC:
    addi 28, 28, 0x1
    addi 29, 29, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_80196ACC
    li 0, 0x0
    .4byte 0xC042B31C # lfs f2, lbl_8053E2BC@sda21(r0)
    .4byte 0x980D8FD0 # stb r0, lbl_8053AB90@sda21(r0)
    .4byte 0xC022B320 # lfs f1, lbl_8053E2C0@sda21(r0)
    stfs 2, 0x60(30)
    .4byte 0xC002B300 # lfs f0, lbl_8053E2A0@sda21(r0)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 0, 0x8c(30)
    stw 0, 0x230(30)
L_80196B44:
    lwz 3, 0x90(30)
    cmplwi 3, 0xa
    .4byte 0x41820018 # beq .L_80196B64
    subi 0, 3, 0xb
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80196B64
    cmplwi 3, 0xd
    .4byte 0x40820034 # bne .L_80196B94
L_80196B64:
    .4byte 0xC022B380 # lfs f1, lbl_8053E320@sda21(r0)
    li 0, 0x1f
    .4byte 0xC002B384 # lfs f0, lbl_8053E324@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 0, 0x230(30)
L_80196B94:
    lwz 3, 0x90(30)
    cmplwi 3, 0x14
    .4byte 0x41820018 # beq .L_80196BB4
    subi 0, 3, 0x15
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80196BB4
    cmplwi 3, 0x17
    .4byte 0x4082003C # bne .L_80196BEC
L_80196BB4:
    .4byte 0xC022B388 # lfs f1, lbl_8053E328@sda21(r0)
    li 3, 0x2
    .4byte 0xC002B38C # lfs f0, lbl_8053E32C@sda21(r0)
    li 0, 0x23
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 3, 0x114(30)
    stw 0, 0x230(30)
L_80196BEC:
    lwz 3, 0x90(30)
    cmplwi 3, 0x1
    .4byte 0x41820018 # beq .L_80196C0C
    subi 0, 3, 0x2
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80196C0C
    cmplwi 3, 0x4
    .4byte 0x40820070 # bne .L_80196C78
L_80196C0C:
    subi 0, 3, 0x1
    addi 7, 31, 0x10
    stw 0, 0x25c(30)
    addi 3, 31, 0x0
    mr 4, 7
    .4byte 0xC002B320 # lfs f0, lbl_8053E2C0@sda21(r0)
    lwz 5, 0x25c(30)
    li 0, 0x28
    lwz 6, 0x4(30)
    slwi 5, 5, 2
    stwx 6, 3, 5
    lwz 3, 0x25c(30)
    lfs 1, 0xc(30)
    mulli 3, 3, 0xc
    add 7, 7, 3
    stfs 1, 0x0(7)
    lfs 1, 0x10(30)
    stfs 1, 0x4(7)
    lfs 1, 0x14(30)
    stfs 1, 0x8(7)
    lwz 3, 0x25c(30)
    mulli 3, 3, 0xc
    add 3, 4, 3
    lfs 1, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x4(3)
    stw 0, 0x230(30)
L_80196C78:
    lwz 0, 0x90(30)
    cmplwi 0, 0x1f
    .4byte 0x40820014 # bne .L_80196C94
    lis 3, 0x500
    li 0, 0x2c
    stw 3, 0xb0(30)
    stw 0, 0x230(30)
L_80196C94:
    lwz 0, 0x90(30)
    cmplwi 0, 0x1e
    .4byte 0x40820038 # bne .L_80196CD4
    lis 4, 0xa04
    li 3, 0x4
    addi 0, 4, 0x4
    .4byte 0xC022B3C8 # lfs f1, lbl_8053E368@sda21(r0)
    stw 0, 0xb0(30)
    li 0, 0x2a
    .4byte 0xC002B308 # lfs f0, lbl_8053E2A8@sda21(r0)
    stw 3, 0x114(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stw 0, 0x230(30)
L_80196CD4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80196CF4:
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    stfs 2, 0x98(3)
    lfs 0, 0x8(4)
    stfs 1, 0x9c(3)
    stfs 0, 0xa0(3)
    stfs 2, 0xb0(3)
    stfs 1, 0xb4(3)
    blr

fn_80196D18:
    stfs 1, 0xb0(3)
    stfs 2, 0xb4(3)
    blr

fn_80196D24:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    blr

fn_80196D30:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 4
    stw 0, 0x14(1)
    mr 0, 3
    mr 4, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134DE4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80196D60:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_80196D70:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr

fn_80196D8C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x18(1)
    fmr 31, 2
    stfd 30, 0x10(1)
    fmr 30, 1
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl GetRoomConfigRecord
    fmr 1, 30
    mr 4, 30
    fmr 2, 31
    mr 5, 31
    bl fn_802D79E8
    lwz 0, 0x24(1)
    lfd 31, 0x18(1)
    lfd 30, 0x10(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

