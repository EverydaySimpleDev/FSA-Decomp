/*
 * BOYO ("Bumper Block") actor cluster, part 3/4 - the core update().
 * Track A (byte-exact asm) + structural overview - largest function in
 * this cluster (0x7B0 = 1968 bytes), heavy float math throughout.
 *
 * fn_8015BC7C(this):
 * - Sets up two translated interaction rects (this->0x60/64/68/6c and
 *   0x80/84/88/8c offset by position) and decrements this->0x25c (the
 *   spin heading consumed by draw(), part 2/4) by a fixed amount every
 *   frame - BOYO's continuous visual spin.
 * - Scans all 4 players via the confirmed fn_8023DE58 (owner match
 *   against this->0x4) and fn_8023E724 (position lookup), computing an
 *   accurate squared-then-sqrt'd distance (frsqrte + Newton-Raphson,
 *   the project's standard "accurate distance" idiom) from each eligible
 *   player to this->0xc, with a quadrant-classifier fallback for the
 *   exactly-zero-distance case. A second nested loop de-duplicates two
 *   players simultaneously near the same zone, keeping only the closer
 *   one's distance.
 * - Picks the closest valid "blade"/zone across 4 candidates via
 *   fn_8022CAF8/fn_8022F478 (player-state validity checks) and
 *   fn_8023B0F4 (an offset-position accessor, unconfirmed), then runs a
 *   4-player hit-scan via the confirmed fn_801F285C and resolves the
 *   generic actor-list via the confirmed SpatialRegistry_GetBase.
 * - If a player is detected as gripping/hit (checked via 4 unconfirmed
 *   helpers in an unfamiliar 0x801Axxxx neighborhood: Saya_ForceState2,
 *   Saya_ForceState4, Saya_ForceState1, Saya_ForceState3 - shaped like input/held-item
 *   queries), blends this->0xc/0x10 toward the interacting player's
 *   position, rolls a PRNG-gated notify (fn_80134DE4 confirmed as
 *   PRNG-adjacent, fn_802378AC an effect/notify call), and queues cue
 *   0x30012 once via the confirmed fn_801F0E34.
 * - Drives BOYO's own physical motion based on the narrowed this->0x90
 *   mode (set up by setParams, part 4/4): modes in [1,5] generate a
 *   randomized bump direction (via the runtime sine-wave table
 *   lbl_8052EBC0, the SAME shared table confirmed in ZLDA's idle-blink
 *   animation) and ease this->0xc/0x14 toward it via the confirmed ease
 *   primitive fn_801F71A4; mode 0 instead applies a continuous
 *   back-and-forth wave directly to this->0xc/0x10 using the same table.
 * - Tail: advances a 3-cooldown-counter scripted "attack pattern"
 *   sequence (this->0x248 indexing tables lbl_804A0228/lbl_804A0244 into
 *   this->0x258/0x23c) and decrements the 3 timers (0x23c/0x240/0x244)
 *   each frame.
 *
 * Net effect: BOYO is a rotating bumper hazard - visually spinning in
 * place while its actual position oscillates or randomly bump-knocks
 * along an axis, detecting and reacting to nearby/gripping players.
 */
.section extab, "a"
.balign 4
.global etb_80006FB4
etb_80006FB4:
    .4byte 0x508A0000
    .4byte 0x00000000
.size etb_80006FB4, 8

.section extabindex, "a"
.balign 4
.global eti_80013B1C
eti_80013B1C:
    .4byte fn_8015BC7C
    .4byte 0x000007B0
    .4byte etb_80006FB4
.size eti_80013B1C, 12

.text
.balign 4
.global fn_8015BC7C

fn_8015BC7C:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stmw 22, 0x68(1)
    .4byte 0xC002A530 # lfs f0, lbl_8053D4D0@sda21(r0)
    mr 28, 3
    .4byte 0xC042A534 # lfs f2, lbl_8053D4D4@sda21(r0)
    li 0, 0x3e8
    stfs 0, 0x60(3)
    addi 3, 1, 0x4c
    .4byte 0xC022A538 # lfs f1, lbl_8053D4D8@sda21(r0)
    stfs 0, 0x64(28)
    .4byte 0xC002A53C # lfs f0, lbl_8053D4DC@sda21(r0)
    stfs 2, 0x68(28)
    stfs 2, 0x6c(28)
    stfs 1, 0x80(28)
    stfs 1, 0x84(28)
    stfs 0, 0x88(28)
    stfs 0, 0x8c(28)
    stw 0, 0x108(28)
    lhz 4, 0x25c(28)
    subi 0, 4, 0x100
    sth 0, 0x25c(28)
    lfs 3, 0x80(28)
    stfs 3, 0x4c(1)
    lfs 2, 0x84(28)
    stfs 2, 0x50(1)
    lfs 1, 0x88(28)
    stfs 1, 0x54(1)
    lfs 4, 0x8c(28)
    stfs 4, 0x58(1)
    lfs 0, 0x60(28)
    stfs 0, 0x3c(1)
    lfs 0, 0x64(28)
    stfs 0, 0x40(1)
    lfs 0, 0x68(28)
    stfs 0, 0x44(1)
    lfs 0, 0x6c(28)
    stfs 0, 0x48(1)
    lfs 5, 0x10(28)
    lfs 0, 0xc(28)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x14(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x18(1)
    stfs 3, 0x4c(1)
    stfs 2, 0x50(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    lwz 4, 0x4(28)
    lwz 5, 0x198(28)
    bl fn_80239914
    lfs 1, 0x3c(1)
    addi 31, 1, 0x2c
    lfs 4, 0x14(1)
    addi 30, 1, 0x1c
    lfs 0, 0x44(1)
    mr 26, 31
    fadds 3, 1, 4
    lfs 2, 0x40(1)
    lfs 5, 0x18(1)
    fadds 1, 0, 4
    lfs 0, 0x48(1)
    mr 25, 30
    fadds 2, 2, 5
    stfs 3, 0x3c(1)
    fadds 0, 0, 5
    .4byte 0xC3E2A540 # lfs f31, lbl_8053D4E0@sda21(r0)
    stfs 1, 0x44(1)
    li 29, 0x0
    stfs 2, 0x40(1)
    stfs 0, 0x48(1)
L_8015BDB4:
    li 0, -0x1
    stfs 31, 0x0(26)
    lwz 27, 0x4(28)
    mr 3, 29
    stw 0, 0x0(25)
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820114 # bne .L_8015BEE4
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(28)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(28)
    .4byte 0xC002A518 # lfs f0, lbl_8053D4B8@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fmadds 4, 30, 30, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_8015BE58
    frsqrte 1, 4
    .4byte 0xC862A548 # lfd f3, lbl_8053D4E8@sda21(r0)
    .4byte 0xC842A550 # lfd f2, lbl_8053D4F0@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_8015BEDC
L_8015BE58:
    .4byte 0xC802A558 # lfd f0, lbl_8053D4F8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_8015BE70
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_8015BEDC
L_8015BE70:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_8015BE98
    .4byte 0x40800040 # bge .L_8015BEC8
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8015BEB0
    .4byte 0x48000034 # b .L_8015BEC8
L_8015BE98:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8015BEA8
    li 0, 0x1
    .4byte 0x48000028 # b .L_8015BECC
L_8015BEA8:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8015BECC
L_8015BEB0:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8015BEC0
    li 0, 0x5
    .4byte 0x48000010 # b .L_8015BECC
L_8015BEC0:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8015BECC
L_8015BEC8:
    li 0, 0x4
L_8015BECC:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8015BEDC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_8015BEDC:
    stfs 4, 0x0(26)
    stw 29, 0x0(25)
L_8015BEE4:
    addi 29, 29, 0x1
    addi 25, 25, 0x4
    cmpwi 29, 0x4
    addi 26, 26, 0x4
    .4byte 0x4180FEC0 # blt .L_8015BDB4
    mr 27, 31
    mr 24, 30
    li 23, 0x0
L_8015BF04:
    mr 25, 31
    mr 26, 30
    li 22, 0x0
L_8015BF10:
    cmpw 23, 22
    .4byte 0x40800060 # bge .L_8015BF74
    mr 3, 22
    bl fn_8023DE58
    mr 29, 3
    mr 3, 23
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x40820044 # bne .L_8015BF74
    lfs 0, 0x0(27)
    lfs 2, 0x0(25)
    fcmpo cr0, 0, 2
    .4byte 0x40810034 # ble .L_8015BF74
    stw 22, 0x0(24)
    lis 0, 0x4330
    .4byte 0xC822A570 # lfd f1, lbl_8053D510@sda21(r0)
    stw 23, 0x0(26)
    lwz 3, 0x0(24)
    stw 0, 0x60(1)
    xoris 0, 3, 0x8000
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    stfs 2, 0x0(27)
    fsubs 0, 0, 1
    stfs 0, 0x0(25)
L_8015BF74:
    addi 22, 22, 0x1
    addi 26, 26, 0x4
    cmpwi 22, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FF8C # blt .L_8015BF10
    addi 23, 23, 0x1
    addi 24, 24, 0x4
    cmpwi 23, 0x4
    addi 27, 27, 0x4
    .4byte 0x4180FF6C # blt .L_8015BF04
    li 23, -0x1
    li 24, 0x0
L_8015BFA4:
    lwz 3, 0x0(30)
    cmpwi 3, 0x0
    .4byte 0x4180007C # blt .L_8015C028
    li 22, 0x0
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4182001C # beq .L_8015BFD8
    lwz 3, 0x0(30)
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x4182000C # beq .L_8015BFD8
    li 22, 0x1
    .4byte 0x48000018 # b .L_8015BFEC
L_8015BFD8:
    lwz 3, 0x0(30)
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8015BFEC
    li 22, 0x1
L_8015BFEC:
    clrlwi 0, 22, 24
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8015C028
    lwz 3, 0x0(30)
    addi 4, 1, 0x3c
    lwz 5, 0x4(28)
    li 6, 0x0
    .4byte 0xC022A518 # lfs f1, lbl_8053D4B8@sda21(r0)
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8015C028
    slwi 0, 24, 2
    addi 3, 1, 0x1c
    lwzx 23, 3, 0
    .4byte 0x48000014 # b .L_8015C038
L_8015C028:
    addi 24, 24, 0x1
    addi 30, 30, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FF70 # blt .L_8015BFA4
L_8015C038:
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, -0x1
    bl fn_801F285C
    mr 22, 3
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(28)
    mr 4, 28
    .4byte 0xC022A560 # lfs f1, lbl_8053D500@sda21(r0)
    bl fn_801F82CC
    lis 4, 0x4
    cmpwi 23, 0x0
    addi 0, 4, 0x2304
    stw 0, 0xb0(28)
    .4byte 0x4080008C # bge .L_8015C104
    cmpwi 22, 0x0
    .4byte 0x40800084 # bge .L_8015C104
    cmpwi 3, 0x0
    .4byte 0x4080007C # bge .L_8015C104
    lwz 0, 0x9c(28)
    cmpwi 0, 0x0
    .4byte 0x40800070 # bge .L_8015C104
    lhz 0, 0x94(28)
    cmplwi 0, 0x1
    .4byte 0x41820064 # beq .L_8015C104
    lwz 3, 0x198(28)
    addi 4, 1, 0x4c
    addi 5, 1, 0x14
    bl Saya_ForceState2
    cmpwi 3, 0x0
    .4byte 0x4082004C # bne .L_8015C104
    lwz 3, 0x198(28)
    addi 4, 1, 0x4c
    addi 5, 1, 0x14
    bl Saya_ForceState4
    cmpwi 3, 0x0
    .4byte 0x40820034 # bne .L_8015C104
    lwz 3, 0x198(28)
    addi 4, 1, 0x4c
    addi 5, 1, 0x14
    bl Saya_ForceState1
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_8015C104
    lwz 3, 0x198(28)
    addi 4, 1, 0x4c
    addi 5, 1, 0x14
    bl Saya_ForceState3
    cmpwi 3, 0x0
    .4byte 0x418200AC # beq .L_8015C1AC
L_8015C104:
    lfs 3, 0x44(1)
    cmpwi 23, 0x0
    lfs 1, 0x3c(1)
    li 0, 0x0
    lfs 4, 0x48(1)
    lfs 0, 0x40(1)
    fsubs 1, 1, 3
    .4byte 0xC042A564 # lfs f2, lbl_8053D504@sda21(r0)
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    sth 0, 0x94(28)
    .4byte 0x41800024 # blt .L_8015C160
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    mr 3, 23
    addi 4, 1, 0xc
    bl fn_802378AC
    .4byte 0x48000028 # b .L_8015C184
L_8015C160:
    cmpwi 22, 0x0
    .4byte 0x41800020 # blt .L_8015C184
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    mr 3, 22
    addi 4, 1, 0xc
    bl fn_802378AC
L_8015C184:
    lwz 0, 0x230(28)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_8015C1AC
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x12
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x230(28)
L_8015C1AC:
    li 0, 0x2000
    stw 0, 0xb0(28)
    lwz 0, 0x90(28)
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_8015C1D0
    .4byte 0x41800194 # blt .L_8015C354
    cmpwi 0, 0x6
    .4byte 0x4080018C # bge .L_8015C354
    .4byte 0x48000134 # b .L_8015C300
L_8015C1D0:
    lwz 0, 0x240(28)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_8015C2B4
    lwz 4, 0x238(28)
    lis 3, 0x4330
    lwz 0, 0x98(28)
    xoris 4, 4, 0x8000
    stw 3, 0x60(1)
    .4byte 0xC822A570 # lfd f1, lbl_8053D510@sda21(r0)
    cmpwi 0, 0x2
    stw 4, 0x64(1)
    .4byte 0xC042A56C # lfs f2, lbl_8053D50C@sda21(r0)
    lfd 0, 0x60(1)
    .4byte 0xC062A568 # lfs f3, lbl_8053D508@sda21(r0)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fmadds 3, 3, 0, 3
    .4byte 0x41820050 # beq .L_8015C264
    .4byte 0x40800014 # bge .L_8015C22C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8015C238
    .4byte 0x40800028 # bge .L_8015C24C
    .4byte 0x48000064 # b .L_8015C28C
L_8015C22C:
    cmpwi 0, 0x4
    .4byte 0x4080005C # bge .L_8015C28C
    .4byte 0x48000044 # b .L_8015C278
L_8015C238:
    stfs 3, 0x260(28)
    .4byte 0xC002A518 # lfs f0, lbl_8053D4B8@sda21(r0)
    stfs 0, 0x264(28)
    stfs 0, 0x268(28)
    .4byte 0x48000044 # b .L_8015C28C
L_8015C24C:
    fneg 1, 3
    .4byte 0xC002A518 # lfs f0, lbl_8053D4B8@sda21(r0)
    stfs 1, 0x260(28)
    stfs 0, 0x264(28)
    stfs 0, 0x268(28)
    .4byte 0x4800002C # b .L_8015C28C
L_8015C264:
    .4byte 0xC002A518 # lfs f0, lbl_8053D4B8@sda21(r0)
    stfs 0, 0x260(28)
    stfs 3, 0x264(28)
    stfs 0, 0x268(28)
    .4byte 0x48000018 # b .L_8015C28C
L_8015C278:
    .4byte 0xC022A518 # lfs f1, lbl_8053D4B8@sda21(r0)
    fneg 0, 3
    stfs 1, 0x260(28)
    stfs 0, 0x264(28)
    stfs 1, 0x268(28)
L_8015C28C:
    li 0, 0x1f4
    stw 0, 0x240(28)
    lwz 0, 0x238(28)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8015C2A8
    li 0, 0xa5
    stw 0, 0x240(28)
L_8015C2A8:
    lwz 0, 0x98(28)
    xori 0, 0, 0x1
    stw 0, 0x98(28)
L_8015C2B4:
    lfs 1, 0x260(28)
    addi 3, 28, 0x3c
    .4byte 0xC042A568 # lfs f2, lbl_8053D508@sda21(r0)
    .4byte 0xC062A520 # lfs f3, lbl_8053D4C0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x264(28)
    addi 3, 28, 0x40
    .4byte 0xC042A568 # lfs f2, lbl_8053D508@sda21(r0)
    .4byte 0xC062A520 # lfs f3, lbl_8053D4C0@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(28), 0, 0
    psq_l 0, 0x3c(28), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x44(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    .4byte 0x48000058 # b .L_8015C354
L_8015C300:
    lwz 4, 0x24c(28)
    lis 3, lbl_8052EBC0@ha
    lwz 0, 0x250(28)
    addi 3, 3, lbl_8052EBC0@l
    add 0, 4, 0
    stw 0, 0x24c(28)
    lwz 0, 0x24c(28)
    lfs 2, 0x234(28)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x26c(28)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(28)
    lwz 0, 0x24c(28)
    lfs 2, 0x234(28)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x270(28)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(28)
L_8015C354:
    lwz 0, 0x230(28)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8015C368
    .4byte 0x4080006C # bge .L_8015C3CC
    .4byte 0x48000068 # b .L_8015C3CC
L_8015C368:
    lwz 0, 0x23c(28)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_8015C3CC
    lwz 3, 0x248(28)
    addi 0, 3, 0x1
    stw 0, 0x248(28)
    lwz 0, 0x248(28)
    cmpwi 0, 0x6
    .4byte 0x40810018 # ble .L_8015C3A0
    li 0, 0x0
    stw 0, 0x258(28)
    stw 0, 0x248(28)
    stw 0, 0x230(28)
    .4byte 0x48000030 # b .L_8015C3CC
L_8015C3A0:
    lis 4, lbl_804A0228@ha
    lis 3, lbl_804A0244@ha
    slwi 0, 0, 2
    addi 4, 4, lbl_804A0228@l
    addi 3, 3, lbl_804A0244@l
    lwzx 0, 4, 0
    stw 0, 0x258(28)
    lwz 0, 0x248(28)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x23c(28)
L_8015C3CC:
    lwz 3, 0x23c(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015C3E0
    subi 0, 3, 0x1
    stw 0, 0x23c(28)
L_8015C3E0:
    lwz 3, 0x240(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015C3F4
    subi 0, 3, 0x1
    stw 0, 0x240(28)
L_8015C3F4:
    lwz 3, 0x244(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015C408
    subi 0, 3, 0x1
    stw 0, 0x244(28)
L_8015C408:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    lmw 22, 0x68(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

