/*
 * FLME actor cluster, part 3/6 - the real per-frame update() logic.
 * Track A (byte-exact asm) + structural overview - largest function in
 * this whole gap (0xAB0 = 2736 bytes), a rich multi-effect-slot fire
 * hazard.
 *
 * fn_8015DF7C(this): translates the interaction box (this->0x60/64/68/
 * 6c) by position into local stack coords.
 *
 * - If this->0x254 (armed) is set: tests all 4 players against the box
 *   via fn_8023B004; on a hit, fires cue fn_801F0D20(this,3) and queues
 *   the confirmed companion-fairy hint-dispatch fn_80230FD0(playerIdx,
 *   0x30009) once (latched via this->0x244).
 * - Otherwise (not yet armed): if this->0x240 ("spinning up") is set,
 *   eases this->0x260 (an intensity/scale value) toward a per-type
 *   target via the confirmed fn_801F71A4. For type (this->0x94) 4/5:
 *   looks up a per-orientation offset (this->0x98-indexed into
 *   lbl_80466110) into this->0x60-0x6c, and once this->0x260 exceeds a
 *   threshold, does a player-visibility check (fn_801F2B20/fn_801F2B7C)
 *   and, if the global rumble flag is set, computes a SECOND offset and
 *   fires a per-frame notify fn_80239914. For other types: sets fixed
 *   offset constants instead, does the same visibility check, then
 *   scans all 4 players (Player_GetCapabilityFlagByIndex/fn_8023DE58 owner-match/
 *   fn_8023E724 position) and, for any in range, pushes them via the
 *   confirmed companion-fairy-hint-template fn_8023DFF4 (a NEW confirmed
 *   caller of that template, alongside RUSA - see
 *   [[project_fsa_companion_fairy_hint_dispatch]]).
 * - Non-4/5 types also run a two-slot "which flame plume is lit" handoff:
 *   as this->0x260 crosses a threshold, retires whichever of this->
 *   0x264/0x268 is currently active (the confirmed "cull" idiom: OR
 *   0xf4's bit0, set 0x24=1) and spawns a replacement into the OTHER
 *   slot via the confirmed fn_8013CC50 (codes 0x1ac/0x1ad/0x1ae/0x253
 *   selected by this->0x25c/0x258), syncing it via fn_8013CB44 and
 *   applying a parameter via fn_800EF008. When the interaction box
 *   constants change, also calls fn_8020D58C/fn_8020D7D0 (an
 *   animation/palette table lookup+apply, unconfirmed) and fires cue
 *   0x30011.
 * - Every ~10 frames (this->0x24c counter): for type 4/5, if this->
 *   0x264 is set, pushes computed color/param values into this->0x268
 *   and this->0x26c too (confirming those are ALSO managed effect
 *   slots for these types - FLME can track up to 4 total: 0x264/0x268/
 *   0x26c plus the destructor's implied 4th at 0x270); once past a
 *   second threshold, spawns a ring of 8 particle effects (code 0x54d)
 *   at evenly-stepped angles around the actor using the shared runtime
 *   wave table (lbl_8052EBC0). For other types: a similar but smaller
 *   burst (1 or 5 particles, chosen by this->0x260) using the same
 *   table-driven circular pattern.
 *
 * Net effect: FLME is a rich fire-jet hazard managing up to 4
 * concurrent flame/ember effect objects, alternating which plume is
 * "lit" as an intensity value oscillates, periodically bursting a ring
 * of particles, and separately detecting/reacting to nearby players
 * (companion-fairy warning or push) depending on its configured type.
 */
.section extab, "a"
.balign 4
.global etb_8000700C
etb_8000700C:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_8000700C, 8

.section extabindex, "a"
.balign 4
.global eti_80013BA0
eti_80013BA0:
    .4byte fn_8015DF7C
    .4byte 0x00000AB0
    .4byte etb_8000700C
.size eti_80013BA0, 12

.text
.balign 4
.global fn_8015DF7C

fn_8015DF7C:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    mr 30, 3
    lis 3, lbl_80466110@ha
    lfs 3, 0x60(30)
    addi 31, 3, lbl_80466110@l
    stfs 3, 0x10(1)
    lfs 2, 0x64(30)
    stfs 2, 0x14(1)
    lfs 1, 0x68(30)
    stfs 1, 0x18(1)
    lfs 0, 0x6c(30)
    stfs 0, 0x1c(1)
    lfs 30, 0x10(30)
    lfs 31, 0xc(30)
    fadds 2, 2, 30
    fadds 3, 3, 31
    fadds 1, 1, 31
    fadds 0, 0, 30
    stfs 2, 0x14(1)
    stfs 3, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x41820058 # beq .L_8015E058
    lwz 4, 0x4(30)
    addi 3, 1, 0x10
    bl fn_8023B004
    mr. 29, 3
    .4byte 0x41800038 # blt .L_8015E04C
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x408209E0 # bne .L_8015EA00
    mr 3, 30
    li 4, 0x3
    bl fn_801F0D20
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x9
    bl fn_80230FD0
    li 0, 0x1
    stw 0, 0x244(30)
    .4byte 0x480009B8 # b .L_8015EA00
L_8015E04C:
    li 0, 0x0
    stw 0, 0x244(30)
    .4byte 0x480009AC # b .L_8015EA00
L_8015E058:
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x418203DC # beq .L_8015E43C
    lhz 0, 0x94(30)
    .4byte 0xC022A5FC # lfs f1, lbl_8053D59C@sda21(r0)
    cmplwi 0, 0x4
    .4byte 0x40820008 # bne .L_8015E078
    .4byte 0xC022A600 # lfs f1, lbl_8053D5A0@sda21(r0)
L_8015E078:
    .4byte 0xC042A604 # lfs f2, lbl_8053D5A4@sda21(r0)
    addi 3, 30, 0x260
    .4byte 0xC062A5FC # lfs f3, lbl_8053D59C@sda21(r0)
    bl fn_801F71A4
    lhz 0, 0x94(30)
    cmplwi 0, 0x4
    .4byte 0x41820198 # beq .L_8015E228
    cmplwi 0, 0x5
    .4byte 0x41820190 # beq .L_8015E228
    lwz 0, 0x98(30)
    addi 3, 31, 0x20
    slwi 0, 0, 4
    lfsx 0, 3, 0
    add 3, 3, 0
    lfs 1, 0x4(3)
    stfs 0, 0x60(30)
    lfs 0, 0x8(3)
    stfs 1, 0x64(30)
    lfs 1, 0xc(3)
    stfs 0, 0x68(30)
    stfs 1, 0x6c(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x1
    .4byte 0x40820038 # bne .L_8015E10C
    lfs 0, 0x60(30)
    .4byte 0xC022A608 # lfs f1, lbl_8053D5A8@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x60(30)
    lfs 0, 0x64(30)
    fmuls 0, 0, 1
    stfs 0, 0x64(30)
    lfs 0, 0x68(30)
    fmuls 0, 0, 1
    stfs 0, 0x68(30)
    lfs 0, 0x6c(30)
    fmuls 0, 0, 1
    stfs 0, 0x6c(30)
L_8015E10C:
    lfs 1, 0x260(30)
    .4byte 0xC002A60C # lfs f0, lbl_8053D5AC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810360 # ble .L_8015E478
    mr 3, 30
    li 4, 0x5
    bl fn_801F2B20
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x9
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820338 # bne .L_8015E478
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820328 # bne .L_8015E478
    lwz 0, 0x98(30)
    addi 3, 31, 0x60
    slwi 0, 0, 4
    lfsx 0, 3, 0
    add 3, 3, 0
    lfs 1, 0x4(3)
    stfs 0, 0x80(30)
    lfs 0, 0x8(3)
    stfs 1, 0x84(30)
    lfs 1, 0xc(3)
    stfs 0, 0x88(30)
    stfs 1, 0x8c(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x1
    .4byte 0x40820038 # bne .L_8015E1C4
    lfs 0, 0x80(30)
    .4byte 0xC022A608 # lfs f1, lbl_8053D5A8@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x80(30)
    lfs 0, 0x84(30)
    fmuls 0, 0, 1
    stfs 0, 0x84(30)
    lfs 0, 0x88(30)
    fmuls 0, 0, 1
    stfs 0, 0x88(30)
    lfs 0, 0x8c(30)
    fmuls 0, 0, 1
    stfs 0, 0x8c(30)
L_8015E1C4:
    lwz 4, 0x80(30)
    addi 3, 1, 0x10
    lwz 0, 0x84(30)
    stw 4, 0x10(1)
    stw 0, 0x14(1)
    lfs 0, 0x10(1)
    lwz 4, 0x88(30)
    lwz 0, 0x8c(30)
    fadds 3, 0, 31
    lfs 0, 0x14(1)
    stw 4, 0x18(1)
    fadds 2, 0, 30
    stw 0, 0x1c(1)
    lfs 1, 0x18(1)
    lfs 0, 0x1c(1)
    fadds 1, 1, 31
    stfs 3, 0x10(1)
    fadds 0, 0, 30
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239914
    .4byte 0x48000254 # b .L_8015E478
L_8015E228:
    cmplwi 0, 0x5
    .4byte 0x40820044 # bne .L_8015E270
    .4byte 0xC022A610 # lfs f1, lbl_8053D5B0@sda21(r0)
    .4byte 0xC002A614 # lfs f0, lbl_8053D5B4@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC042A618 # lfs f2, lbl_8053D5B8@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC022A61C # lfs f1, lbl_8053D5BC@sda21(r0)
    stfs 2, 0x68(30)
    .4byte 0xC002A620 # lfs f0, lbl_8053D5C0@sda21(r0)
    stfs 1, 0x6c(30)
    .4byte 0xC022A624 # lfs f1, lbl_8053D5C4@sda21(r0)
    stfs 0, 0x80(30)
    .4byte 0xC002A628 # lfs f0, lbl_8053D5C8@sda21(r0)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 2, 0x8c(30)
    .4byte 0x4800003C # b .L_8015E2A8
L_8015E270:
    .4byte 0xC042A62C # lfs f2, lbl_8053D5CC@sda21(r0)
    .4byte 0xC022A630 # lfs f1, lbl_8053D5D0@sda21(r0)
    stfs 2, 0x60(30)
    .4byte 0xC002A634 # lfs f0, lbl_8053D5D4@sda21(r0)
    stfs 2, 0x64(30)
    .4byte 0xC042A638 # lfs f2, lbl_8053D5D8@sda21(r0)
    stfs 1, 0x68(30)
    .4byte 0xC022A63C # lfs f1, lbl_8053D5DC@sda21(r0)
    stfs 0, 0x6c(30)
    .4byte 0xC002A640 # lfs f0, lbl_8053D5E0@sda21(r0)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 0, 0x8c(30)
L_8015E2A8:
    lwz 5, 0x60(30)
    mr 3, 30
    lwz 0, 0x64(30)
    li 4, 0x5
    stw 5, 0x10(1)
    stw 0, 0x14(1)
    lfs 0, 0x10(1)
    lwz 5, 0x68(30)
    lwz 0, 0x6c(30)
    fadds 3, 0, 31
    lfs 0, 0x14(1)
    stw 5, 0x18(1)
    fadds 2, 0, 30
    stw 0, 0x1c(1)
    lfs 1, 0x18(1)
    lfs 0, 0x1c(1)
    fadds 1, 1, 31
    stfs 3, 0x10(1)
    fadds 0, 0, 30
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    bl fn_801F2B20
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x9
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x4082015C # bne .L_8015E478
    li 29, 0x0
L_8015E324:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_8015E42C
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x418200EC # beq .L_8015E42C
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    lfs 2, 0x0(3)
    fsubs 5, 1, 0
    lfs 0, 0xc(30)
    stfs 1, 0xc(1)
    fsubs 4, 2, 0
    .4byte 0xC002A644 # lfs f0, lbl_8053D5E4@sda21(r0)
    fmuls 1, 5, 5
    stfs 2, 0x8(1)
    fmadds 6, 4, 4, 1
    stfs 4, 0x8(1)
    stfs 5, 0xc(1)
    fcmpo cr0, 6, 0
    .4byte 0x408000A8 # bge .L_8015E42C
    lis 3, lbl_80539D44@ha
    .4byte 0xC022A648 # lfs f1, lbl_8053D5E8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_8015E3E0
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8015E3B8
    .4byte 0x48000024 # b .L_8015E3D8
L_8015E3B8:
    frsqrte 3, 6
    .4byte 0xC042A650 # lfs f2, lbl_8053D5F0@sda21(r0)
    .4byte 0xC002A654 # lfs f0, lbl_8053D5F4@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_8015E3D8:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_8015E3E0:
    lis 3, lbl_80539D44@ha
    fmuls 2, 5, 5
    .4byte 0xC022A648 # lfs f1, lbl_8053D5E8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmadds 2, 4, 4, 2
    fmuls 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x41820010 # beq .L_8015E410
    .4byte 0xC002A658 # lfs f0, lbl_8053D5F8@sda21(r0)
    fmuls 4, 4, 0
    fmuls 5, 5, 0
L_8015E410:
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    mr 3, 29
    stfs 4, 0x20(1)
    addi 4, 1, 0x20
    stfs 5, 0x24(1)
    stfs 0, 0x28(1)
    bl fn_8023DFF4
L_8015E42C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FEF0 # blt .L_8015E324
    .4byte 0x48000040 # b .L_8015E478
L_8015E43C:
    .4byte 0xC022A64C # lfs f1, lbl_8053D5EC@sda21(r0)
    addi 3, 30, 0x260
    .4byte 0xC042A604 # lfs f2, lbl_8053D5A4@sda21(r0)
    .4byte 0xC062A5FC # lfs f3, lbl_8053D59C@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022A5FC # lfs f1, lbl_8053D59C@sda21(r0)
    .4byte 0xC002A65C # lfs f0, lbl_8053D5FC@sda21(r0)
    stfs 1, 0x60(30)
    stfs 0, 0x64(30)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 0, 0x84(30)
    stfs 1, 0x88(30)
    stfs 0, 0x8c(30)
L_8015E478:
    lhz 0, 0x94(30)
    cmplwi 0, 0x4
    .4byte 0x41820410 # beq .L_8015E890
    cmplwi 0, 0x5
    .4byte 0x41820408 # beq .L_8015E890
    lfs 4, 0xc(30)
    lis 3, lbl_804A0310@ha
    addi 4, 3, lbl_804A0310@l
    .4byte 0xC002A604 # lfs f0, lbl_8053D5A4@sda21(r0)
    stfs 4, 0x20(1)
    lfs 3, 0x10(30)
    stfs 3, 0x24(1)
    lfs 1, 0x14(30)
    stfs 1, 0x28(1)
    lwz 0, 0x98(30)
    slwi 0, 0, 3
    add 3, 4, 0
    lfsx 2, 4, 0
    lfs 1, 0x4(3)
    fadds 2, 4, 2
    fadds 1, 3, 1
    stfs 2, 0x20(1)
    stfs 1, 0x24(1)
    lfs 1, 0x260(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800170 # bge .L_8015E64C
    lwz 4, 0x264(30)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8015E500
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8015E500:
    lwz 0, 0x268(30)
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_8015E5E4
    lwz 0, 0x264(30)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_8015E580
    lwz 0, 0x25c(30)
    li 5, 0x1ad
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_8015E52C
    li 5, 0x253
L_8015E52C:
    lwz 3, 0x258(30)
    lis 0, 0x4330
    stw 0, 0x30(1)
    addi 4, 1, 0x20
    xoris 0, 3, 0x8000
    .4byte 0xC842A668 # lfd f2, lbl_8053D608@sda21(r0)
    stw 0, 0x34(1)
    li 6, 0x1
    .4byte 0xC062A650 # lfs f3, lbl_8053D5F0@sda21(r0)
    li 7, 0x1
    lfd 1, 0x30(1)
    li 8, 0x0
    .4byte 0xC002A5FC # lfs f0, lbl_8053D59C@sda21(r0)
    li 9, 0x0
    fsubs 1, 1, 2
    lwz 3, 0x4(30)
    li 10, 0x1
    fmadds 1, 3, 1, 0
    bl fn_8013CC50
    stw 3, 0x268(30)
    .4byte 0x48000068 # b .L_8015E5E4
L_8015E580:
    lwz 0, 0x25c(30)
    li 5, 0x1ae
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_8015E594
    li 5, 0x253
L_8015E594:
    lwz 3, 0x258(30)
    lis 0, 0x4330
    stw 0, 0x30(1)
    addi 4, 1, 0x20
    xoris 0, 3, 0x8000
    .4byte 0xC842A668 # lfd f2, lbl_8053D608@sda21(r0)
    stw 0, 0x34(1)
    li 6, 0x1
    .4byte 0xC062A650 # lfs f3, lbl_8053D5F0@sda21(r0)
    li 7, 0x1
    lfd 1, 0x30(1)
    li 8, 0x0
    .4byte 0xC002A5FC # lfs f0, lbl_8053D59C@sda21(r0)
    li 9, 0x0
    fsubs 1, 1, 2
    lwz 3, 0x4(30)
    li 10, 0x1
    fmadds 1, 3, 1, 0
    bl fn_8013CC50
    stw 3, 0x268(30)
L_8015E5E4:
    li 0, 0x0
    stw 0, 0x264(30)
    lwz 3, 0x268(30)
    cmplwi 3, 0x0
    .4byte 0x418201A4 # beq .L_8015E798
    lwz 0, 0x98(30)
    li 29, 0x0
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_8015E60C
    li 29, 0x4000
L_8015E60C:
    addi 4, 1, 0x20
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x98(30)
    addi 5, 31, 0x0
    lwz 4, 0x268(30)
    extsh 3, 29
    slwi 0, 0, 2
    lwzx 0, 5, 0
    addi 6, 4, 0x68
    li 5, -0x8000
    extsh 4, 0
    bl fn_800EF008
    .4byte 0x48000150 # b .L_8015E798
L_8015E64C:
    lwz 5, 0x268(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8015E674
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x268(30)
L_8015E674:
    lwz 0, 0x264(30)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_8015E6E4
    lwz 0, 0x25c(30)
    li 5, 0x1ac
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_8015E694
    li 5, 0x252
L_8015E694:
    lwz 3, 0x258(30)
    lis 0, 0x4330
    stw 0, 0x30(1)
    addi 4, 1, 0x20
    xoris 0, 3, 0x8000
    .4byte 0xC842A668 # lfd f2, lbl_8053D608@sda21(r0)
    stw 0, 0x34(1)
    li 6, 0x1
    .4byte 0xC062A650 # lfs f3, lbl_8053D5F0@sda21(r0)
    li 7, 0x1
    lfd 1, 0x30(1)
    li 8, 0x0
    .4byte 0xC002A5FC # lfs f0, lbl_8053D59C@sda21(r0)
    li 9, 0x0
    fsubs 1, 1, 2
    lwz 3, 0x4(30)
    li 10, 0x1
    fmadds 1, 3, 1, 0
    bl fn_8013CC50
    stw 3, 0x264(30)
L_8015E6E4:
    lwz 3, 0x264(30)
    cmplwi 3, 0x0
    .4byte 0x418200AC # beq .L_8015E798
    lwz 0, 0x98(30)
    li 29, 0x0
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_8015E704
    li 29, 0x4000
L_8015E704:
    addi 4, 1, 0x20
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x98(30)
    addi 5, 31, 0x0
    lwz 4, 0x264(30)
    extsh 3, 29
    slwi 0, 0, 2
    lwzx 0, 5, 0
    addi 6, 4, 0x68
    li 5, -0x8000
    extsh 4, 0
    bl fn_800EF008
    .4byte 0xC022A5FC # lfs f1, lbl_8053D59C@sda21(r0)
    lfs 0, 0x60(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820038 # beq .L_8015E784
    .4byte 0xC022A65C # lfs f1, lbl_8053D5FC@sda21(r0)
    lfs 0, 0x68(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820028 # beq .L_8015E784
    lwz 29, 0x198(30)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 29
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
L_8015E784:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x11
    li 5, 0x0
    bl fn_801F0E34
L_8015E798:
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0xa
    .4byte 0x40810254 # ble .L_8015EA00
    lfs 1, 0x260(30)
    li 27, 0x5
    .4byte 0xC002A604 # lfs f0, lbl_8053D5A4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8015E7C8
    li 27, 0x1
L_8015E7C8:
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3E2A658 # lfs f31, lbl_8053D5F8@sda21(r0)
    .4byte 0xCBC2A668 # lfd f30, lbl_8053D608@sda21(r0)
    addi 31, 3, lbl_8052EBC0@l
    li 28, 0x0
    lis 29, 0x4330
    .4byte 0x4800009C # b .L_8015E87C
L_8015E7E4:
    lfs 0, 0xc(30)
    stfs 0, 0x20(1)
    lfs 0, 0x10(30)
    stfs 0, 0x24(1)
    lfs 0, 0x14(30)
    stfs 0, 0x28(1)
    lwz 3, 0x98(30)
    bl fn_801F6874
    xoris 0, 28, 0x8000
    stw 29, 0x30(1)
    lfs 0, 0x20(1)
    stw 0, 0x34(1)
    rlwinm 0, 3, 30, 18, 28
    lfsx 1, 31, 0
    lfd 2, 0x30(1)
    fsubs 2, 2, 30
    fmuls 29, 31, 2
    fmadds 0, 29, 1, 0
    stfs 0, 0x20(1)
    lwz 3, 0x98(30)
    bl fn_801F6874
    rlwinm 0, 3, 30, 18, 28
    lfs 0, 0x24(1)
    add 3, 31, 0
    .4byte 0xC022A5FC # lfs f1, lbl_8053D59C@sda21(r0)
    lfs 2, 0x4(3)
    addi 4, 1, 0x20
    li 5, 0x54d
    li 6, 0x1
    fmadds 0, 29, 2, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x24(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    addi 28, 28, 0x1
L_8015E87C:
    cmpw 28, 27
    .4byte 0x4180FF64 # blt .L_8015E7E4
    li 0, 0x0
    stw 0, 0x24c(30)
    .4byte 0x48000174 # b .L_8015EA00
L_8015E890:
    lwz 3, 0x264(30)
    cmplwi 3, 0x0
    .4byte 0x41820168 # beq .L_8015EA00
    .4byte 0xC042A660 # lfs f2, lbl_8053D600@sda21(r0)
    lfs 1, 0x260(30)
    .4byte 0xC002A604 # lfs f0, lbl_8053D5A4@sda21(r0)
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x30(1)
    lwz 0, 0x34(1)
    stb 0, 0xbb(3)
    lfs 1, 0x260(30)
    lwz 3, 0x268(30)
    stfs 1, 0xb0(3)
    stfs 1, 0xb4(3)
    lfs 1, 0x260(30)
    lwz 3, 0x26c(30)
    stfs 1, 0xb0(3)
    stfs 1, 0xb4(3)
    lfs 1, 0x260(30)
    fcmpo cr0, 1, 0
    .4byte 0x4081011C # ble .L_8015EA00
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0xa
    .4byte 0x408100AC # ble .L_8015E9A8
    lis 3, lbl_8052EBC0@ha
    li 27, 0x0
    addi 31, 3, lbl_8052EBC0@l
    li 29, 0x0
L_8015E910:
    lfs 0, 0xc(30)
    stfs 0, 0x20(1)
    lfs 0, 0x10(30)
    stfs 0, 0x24(1)
    lfs 0, 0x14(30)
    stfs 0, 0x28(1)
    lhz 0, 0x94(30)
    cmplwi 0, 0x5
    .4byte 0x4082000C # bne .L_8015E93C
    .4byte 0xC0A2A618 # lfs f5, lbl_8053D5B8@sda21(r0)
    .4byte 0x48000008 # b .L_8015E940
L_8015E93C:
    .4byte 0xC0A2A640 # lfs f5, lbl_8053D5E0@sda21(r0)
L_8015E940:
    rlwinm 0, 29, 30, 18, 28
    lfs 3, 0x20(1)
    add 3, 31, 0
    lfs 0, 0x24(1)
    lfs 4, 0x0(3)
    addi 4, 1, 0x20
    lfs 2, 0x4(3)
    li 5, 0x54d
    fmadds 3, 5, 4, 3
    .4byte 0xC022A5FC # lfs f1, lbl_8053D59C@sda21(r0)
    fmadds 0, 5, 2, 0
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    stfs 3, 0x20(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x24(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    addi 27, 27, 0x1
    addi 29, 29, 0x2000
    cmpwi 27, 0x8
    .4byte 0x4180FF74 # blt .L_8015E910
    li 0, 0x0
    stw 0, 0x24c(30)
L_8015E9A8:
    .4byte 0xC022A5FC # lfs f1, lbl_8053D59C@sda21(r0)
    lfs 0, 0x60(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820038 # beq .L_8015E9EC
    .4byte 0xC022A65C # lfs f1, lbl_8053D5FC@sda21(r0)
    lfs 0, 0x68(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820028 # beq .L_8015E9EC
    lwz 29, 0x198(30)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 29
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
L_8015E9EC:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x11
    li 5, 0x0
    bl fn_801F0E34
L_8015EA00:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

