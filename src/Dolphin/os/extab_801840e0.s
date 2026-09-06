.section extab, "a"
.balign 4
.global etb_80007624
etb_80007624:
    .4byte 0x198A0000
    .4byte 0x00000000
.size etb_80007624, 8

.section extabindex, "a"
.balign 4
.global eti_8001435C
eti_8001435C:
    .4byte fn_801840E0
    .4byte 0x00000934
    .4byte etb_80007624
.size eti_8001435C, 12

.text
.balign 4
.global fn_801840E0

# fn_801840E0 - update() override for "Class C" of the RUSA-repel
# movement-actor family (vtable lbl_804A1888, ctor fn_8020221C, see
# extab_8020221c.s). Confirmed to share the SAME core primitives as
# "Class A"/"Class B" (fn_8018299C/fn_8018359C, extab_8018299c.s/
# extab_8018359c.s - see those files for the shared shape): the
# fn_801F3D94 knockback gate and the CONFIRMED fn_801F305C secondary
# gate (extab_801f305c.s - "is a player interacting with me," both
# followed by the same interrupt-handling pattern, though this class
# stores its own interrupted-state marker at `this->0xbc` rather than
# reusing `this->0x230` directly), velocity ease via `fn_801F71A4` +
# paired-single position integration, the CONFIRMED RUSA registry
# init+repel (`RusaRegistry_GetOrInit`/`fn_80212AF0`), and the ALREADY-CONFIRMED
# `fn_801EEC98` "find relevant player, report distance+angle" call
# (extab_801eec98.s) also seen in A/B. Structurally distinct otherwise
# - only ~9% line-level similarity to A/B by direct diff - and
# substantially larger (0x934 bytes vs. 0x764/0x67c), reflecting
# genuinely more elaborate behavior:
#
# - Caches SIX float fields into registers at entry: `this->0x80/0x84`
#   (min corner) and `this->0x88/0x8c` (max corner) of a bounding
#   RECTANGLE - CONFIRMED via `fn_801F23BC` below, which reads this
#   exact field layout as a min/max-corner rect - plus `this->0x10/0xc`
#   (current position). Computes a blended target point via `fmadds`
#   between the two corners, weighted by a constant (`lbl_8053DF0C`) -
#   waypoint/midpoint interpolation within the home rectangle, distinct
#   from A/B's single fixed-direction movement.
# - State dispatch is a manual compare-chain on `this->0x230`
#   (0/2/4, matched via `beq`/`bge` pairs) rather than A/B's jump
#   table, with a SECOND nested compare-chain on `this->0x98`
#   (also 0/2/4) selecting one of 4 signed axis-direction combinations
#   into `this->0x258/0x25c/0x260` - a "pick which of 4
#   diagonal/axis directions to head toward next" choice.
# - Uses the CONFIRMED global PRNG (`lbl_8053AAF8->0xb4`, the
#   Numerical Recipes LCG - reference_fsa_global_prng.md) repeatedly -
#   at least 5 separate advances in this one function - to randomize
#   wait durations and, in one branch, to probabilistically pick
#   between two outcomes (a `fn_801F23BC`/`fn_8023E724`-adjacent branch
#   around `this->0x98`).
# - Reads two parallel small lookup tables, `lbl_804A1808` and
#   `lbl_804A1848`, indexed by `(this->0x98, this->0x240)`, into
#   `this->0x24c`/`this->0x234` respectively - contents/meaning not
#   characterized.
# - Calls the CONFIRMED `fn_802265FC(point, roomParam)`
#   (extab_802265fc.s - a byte-for-byte duplicate of RUPY's
#   fn_8022461C terrain/hazard classifier), the CONFIRMED
#   `fn_8023E724(playerIdx)` player-position accessor, the CONFIRMED
#   `fn_801F23BC(this, roomID, this+0xc, this+0x18-style, this+0x80,
#   out, unused)` (extab_801f23bc.s - "pick a random valid point inside
#   my home rectangle, with retry/fallback"), and the CONFIRMED
#   `fn_801F0E34(this, 0x40ab, 0)` (extab_801f0e34.s - "post a
#   room-scoped notification," hitting its generic default path here).
#
# Given the scale, the exact per-state gameplay meaning (which
# waypoint is visited when, what `this->0x98`'s 5-way sub-state
# actually represents) was NOT fully traced - flagged as a dedicated
# future investigation rather than guessed at.
fn_801840E0:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stfd 28, 0x70(1)
    psq_st 28, 0x78(1), 0, 0
    stfd 27, 0x60(1)
    psq_st 27, 0x68(1), 0, 0
    stfd 26, 0x50(1)
    psq_st 26, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 29, 3
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    lfs 29, 0x80(3)
    li 5, 0x0
    lfs 28, 0x84(3)
    li 0, -0x1
    lfs 27, 0x88(3)
    li 4, 0x1
    lfs 26, 0x8c(3)
    lfs 30, 0x10(3)
    lfs 31, 0xc(3)
    sth 5, 0x8(1)
    stfs 0, 0x28(1)
    stw 0, 0x24(1)
    stw 0, 0x20(1)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182004C # beq .L_801841B8
    li 0, 0x2
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    stw 0, 0xbc(29)
    lfs 1, 0x14(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_8018419C
    lfs 1, 0x44(29)
    .4byte 0xC002AF60 # lfs f0, lbl_8053DF00@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
    .4byte 0x4800000C # b .L_801841A4
L_8018419C:
    stfs 0, 0x14(29)
    stfs 0, 0x44(29)
L_801841A4:
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000814 # b .L_801849C8
L_801841B8:
    mr 3, 29
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80184210
    li 0, 0x2
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    stw 0, 0xbc(29)
    lfs 1, 0x14(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_801841F4
    lfs 1, 0x44(29)
    .4byte 0xC002AF60 # lfs f0, lbl_8053DF00@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
    .4byte 0x4800000C # b .L_801841FC
L_801841F4:
    stfs 0, 0x14(29)
    stfs 0, 0x44(29)
L_801841FC:
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480007BC # b .L_801849C8
L_80184210:
    lfs 1, 0x258(29)
    addi 3, 29, 0x3c
    .4byte 0xC042AF68 # lfs f2, lbl_8053DF08@sda21(r0)
    lfs 3, 0x250(29)
    bl fn_801F71A4
    lfs 1, 0x25c(29)
    addi 3, 29, 0x40
    .4byte 0xC042AF68 # lfs f2, lbl_8053DF08@sda21(r0)
    lfs 3, 0x250(29)
    bl fn_801F71A4
    psq_l 1, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    bl RusaRegistry_GetOrInit
    addi 4, 29, 0xc
    bl fn_80212AF0
    mr 3, 29
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    lwz 4, 0x198(29)
    mr 3, 29
    addi 5, 1, 0x8
    addi 6, 1, 0x20
    addi 7, 1, 0x28
    addi 8, 1, 0x24
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    fadds 29, 29, 31
    mr 30, 3
    fadds 27, 27, 31
    .4byte 0xC042AF6C # lfs f2, lbl_8053DF0C@sda21(r0)
    fadds 28, 28, 30
    addi 3, 1, 0x2c
    fadds 26, 26, 30
    fsubs 1, 29, 27
    fsubs 0, 28, 26
    fmadds 1, 2, 1, 27
    fmadds 0, 2, 0, 26
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(29)
    bl fn_802265FC
    mr 31, 3
    .4byte 0xC002AF60 # lfs f0, lbl_8053DF00@sda21(r0)
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    stfs 0, 0x250(29)
    .4byte 0x4082000C # bne .L_80184308
    .4byte 0xC002AF70 # lfs f0, lbl_8053DF10@sda21(r0)
    stfs 0, 0x250(29)
L_80184308:
    lwz 0, 0x230(29)
    cmpwi 0, 0x2
    .4byte 0x418203CC # beq .L_801846DC
    .4byte 0x40800014 # bge .L_80184328
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80184334
    .4byte 0x40800030 # bge .L_80184350
    .4byte 0x48000664 # b .L_80184988
L_80184328:
    cmpwi 0, 0x4
    .4byte 0x4080065C # bge .L_80184988
    .4byte 0x48000528 # b .L_80184858
L_80184334:
    li 4, 0x0
    li 3, 0x2
    stw 4, 0x234(29)
    li 0, 0x1
    stw 4, 0x240(29)
    stw 3, 0xbc(29)
    stw 0, 0x230(29)
L_80184350:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x408200B8 # bne .L_80184410
    lwz 3, 0x98(29)
    lwz 0, 0x20(1)
    cmpw 3, 0
    .4byte 0x408200A8 # bne .L_80184410
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4082002C # bne .L_8018439C
    lwz 3, 0x24(1)
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(29)
    .4byte 0xC002AF74 # lfs f0, lbl_8053DF14@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x41800038 # blt .L_801843D0
L_8018439C:
    lwz 0, 0x98(29)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182006C # beq .L_80184410
    lwz 3, 0x24(1)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(29)
    .4byte 0xC002AF74 # lfs f0, lbl_8053DF14@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800044 # bge .L_80184410
L_801843D0:
    lwz 3, 0x24(1)
    bl fn_8023E724
    lwz 4, 0x4(29)
    mr 6, 3
    mr 3, 29
    addi 5, 29, 0xc
    addi 7, 29, 0x80
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80184410
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x4800057C # b .L_80184988
L_80184410:
    clrlwi. 0, 30, 24
    .4byte 0x40820010 # bne .L_80184424
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x408201C4 # bne .L_801845E4
L_80184424:
    clrlwi. 3, 30, 24
    mr 0, 30
    .4byte 0x40820010 # bne .L_8018443C
    clrlwi 3, 31, 16
    cmplwi 3, 0x50
    .4byte 0x41820014 # beq .L_8018444C
L_8018443C:
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
L_8018444C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 4, 4, 0x660d
    clrlwi. 3, 30, 24
    lwz 5, 0xb4(6)
    .4byte 0xC042AF60 # lfs f2, lbl_8053DF00@sda21(r0)
    mullw 3, 5, 4
    .4byte 0xC022AF78 # lfs f1, lbl_8053DF18@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x1c(1)
    lfs 0, 0x1c(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 3, 3, 0x32
    stw 3, 0x238(29)
    .4byte 0x4082006C # bne .L_80184514
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002AF7C # lfs f0, lbl_8053DF1C@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800024 # bge .L_80184508
    lwz 4, 0x20(1)
    cmpwi 4, -0x1
    .4byte 0x41820024 # beq .L_80184514
    lwz 3, 0x98(29)
    cmpw 3, 4
    .4byte 0x4182048C # beq .L_80184988
    stw 4, 0x98(29)
    .4byte 0x48000010 # b .L_80184514
L_80184508:
    li 3, 0x8
    li 0, 0x1
    stw 3, 0x234(29)
L_80184514:
    clrlwi. 0, 0, 24
    .4byte 0x418200CC # beq .L_801845E4
    lwz 0, 0x98(29)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820064 # bne .L_80184588
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022AF60 # lfs f1, lbl_8053DF00@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002AF6C # lfs f0, lbl_8053DF0C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8018457C
    li 0, 0x2
    stw 0, 0x98(29)
    .4byte 0x4800006C # b .L_801845E4
L_8018457C:
    li 0, 0x3
    stw 0, 0x98(29)
    .4byte 0x48000060 # b .L_801845E4
L_80184588:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022AF60 # lfs f1, lbl_8053DF00@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002AF6C # lfs f0, lbl_8053DF0C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801845DC
    li 0, 0x0
    stw 0, 0x98(29)
    .4byte 0x4800000C # b .L_801845E4
L_801845DC:
    li 0, 0x1
    stw 0, 0x98(29)
L_801845E4:
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80184640
    .4byte 0x40800014 # bge .L_80184604
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80184610
    .4byte 0x4080002C # bge .L_80184628
    .4byte 0x4800006C # b .L_8018466C
L_80184604:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_8018466C
    .4byte 0x4800004C # b .L_80184658
L_80184610:
    .4byte 0xC022AF7C # lfs f1, lbl_8053DF1C@sda21(r0)
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    stfs 1, 0x258(29)
    stfs 0, 0x25c(29)
    stfs 0, 0x260(29)
    .4byte 0x48000048 # b .L_8018466C
L_80184628:
    .4byte 0xC022AF80 # lfs f1, lbl_8053DF20@sda21(r0)
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    stfs 1, 0x258(29)
    stfs 0, 0x25c(29)
    stfs 0, 0x260(29)
    .4byte 0x48000030 # b .L_8018466C
L_80184640:
    .4byte 0xC022AF64 # lfs f1, lbl_8053DF04@sda21(r0)
    .4byte 0xC002AF7C # lfs f0, lbl_8053DF1C@sda21(r0)
    stfs 1, 0x258(29)
    stfs 0, 0x25c(29)
    stfs 1, 0x260(29)
    .4byte 0x48000018 # b .L_8018466C
L_80184658:
    .4byte 0xC022AF64 # lfs f1, lbl_8053DF04@sda21(r0)
    .4byte 0xC002AF80 # lfs f0, lbl_8053DF20@sda21(r0)
    stfs 1, 0x258(29)
    stfs 0, 0x25c(29)
    stfs 1, 0x260(29)
L_8018466C:
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x40820314 # bne .L_80184988
    lwz 5, 0x98(29)
    lis 4, lbl_804A1808@ha
    lwz 0, 0x240(29)
    lis 3, lbl_804A1848@ha
    slwi 5, 5, 2
    addi 4, 4, lbl_804A1808@l
    add 0, 5, 0
    addi 3, 3, lbl_804A1848@l
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x24c(29)
    lwz 4, 0x98(29)
    lwz 0, 0x240(29)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(29)
    lwz 3, 0x240(29)
    addi 0, 3, 0x1
    stw 0, 0x240(29)
    lwz 0, 0x240(29)
    clrlwi 0, 0, 30
    stw 0, 0x240(29)
    .4byte 0x480002B0 # b .L_80184988
L_801846DC:
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    lis 4, 0x4
    li 0, 0x0
    mr 3, 29
    stfs 0, 0x44(29)
    addi 4, 4, 0xab
    li 5, 0x0
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stfs 0, 0x260(29)
    stfs 0, 0x25c(29)
    stfs 0, 0x258(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
    lwz 6, 0x98(29)
    addi 0, 6, 0xc
    stw 0, 0x24c(29)
    bl fn_801F0E34
    clrlwi 0, 31, 16
    .4byte 0xC002AF84 # lfs f0, lbl_8053DF24@sda21(r0)
    cmplwi 0, 0x50
    stfs 0, 0x254(29)
    .4byte 0x4182000C # beq .L_80184740
    .4byte 0xC002AF88 # lfs f0, lbl_8053DF28@sda21(r0)
    stfs 0, 0x254(29)
L_80184740:
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x41820094 # beq .L_801847DC
    .4byte 0x40800014 # bge .L_80184760
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8018476C
    .4byte 0x40800048 # bge .L_801847A0
    .4byte 0x480000EC # b .L_80184848
L_80184760:
    cmpwi 0, 0x4
    .4byte 0x408000E4 # bge .L_80184848
    .4byte 0x480000A8 # b .L_80184810
L_8018476C:
    lfs 0, 0x254(29)
    .4byte 0xC062AF64 # lfs f3, lbl_8053DF04@sda21(r0)
    stfs 0, 0x258(29)
    .4byte 0xC042AF8C # lfs f2, lbl_8053DF2C@sda21(r0)
    stfs 3, 0x25c(29)
    .4byte 0xC002AF84 # lfs f0, lbl_8053DF24@sda21(r0)
    stfs 3, 0x260(29)
    lfs 1, 0x254(29)
    fmuls 1, 2, 1
    stfs 1, 0x3c(29)
    stfs 3, 0x40(29)
    stfs 0, 0x44(29)
    .4byte 0x480000AC # b .L_80184848
L_801847A0:
    lfs 0, 0x254(29)
    .4byte 0xC062AF64 # lfs f3, lbl_8053DF04@sda21(r0)
    fneg 1, 0
    .4byte 0xC042AF8C # lfs f2, lbl_8053DF2C@sda21(r0)
    .4byte 0xC002AF84 # lfs f0, lbl_8053DF24@sda21(r0)
    stfs 1, 0x258(29)
    stfs 3, 0x25c(29)
    stfs 3, 0x260(29)
    lfs 1, 0x254(29)
    fmuls 1, 2, 1
    fneg 1, 1
    stfs 1, 0x3c(29)
    stfs 3, 0x40(29)
    stfs 0, 0x44(29)
    .4byte 0x48000070 # b .L_80184848
L_801847DC:
    lfs 1, 0x254(29)
    .4byte 0xC062AF64 # lfs f3, lbl_8053DF04@sda21(r0)
    .4byte 0xC042AF8C # lfs f2, lbl_8053DF2C@sda21(r0)
    stfs 3, 0x258(29)
    .4byte 0xC002AF84 # lfs f0, lbl_8053DF24@sda21(r0)
    stfs 1, 0x25c(29)
    stfs 3, 0x260(29)
    lfs 1, 0x254(29)
    fmuls 1, 2, 1
    stfs 3, 0x3c(29)
    stfs 1, 0x40(29)
    stfs 0, 0x44(29)
    .4byte 0x4800003C # b .L_80184848
L_80184810:
    lfs 0, 0x254(29)
    .4byte 0xC062AF64 # lfs f3, lbl_8053DF04@sda21(r0)
    fneg 1, 0
    .4byte 0xC042AF8C # lfs f2, lbl_8053DF2C@sda21(r0)
    stfs 3, 0x258(29)
    .4byte 0xC002AF84 # lfs f0, lbl_8053DF24@sda21(r0)
    stfs 1, 0x25c(29)
    stfs 3, 0x260(29)
    lfs 1, 0x254(29)
    fmuls 1, 2, 1
    stfs 3, 0x3c(29)
    fneg 1, 1
    stfs 1, 0x40(29)
    stfs 0, 0x44(29)
L_80184848:
    li 0, 0x3
    stw 0, 0xbc(29)
    stw 0, 0x230(29)
    .4byte 0x48000134 # b .L_80184988
L_80184858:
    clrlwi 0, 31, 16
    .4byte 0xC342AF90 # lfs f26, lbl_8053DF30@sda21(r0)
    cmplwi 0, 0x50
    .4byte 0x41820008 # beq .L_8018486C
    .4byte 0xC342AF68 # lfs f26, lbl_8053DF08@sda21(r0)
L_8018486C:
    lfs 1, 0x14(29)
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8018488C
    lfs 1, 0x44(29)
    .4byte 0xC002AF60 # lfs f0, lbl_8053DF00@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
L_8018488C:
    fmr 3, 26
    .4byte 0xC022AF64 # lfs f1, lbl_8053DF04@sda21(r0)
    .4byte 0xC042AF68 # lfs f2, lbl_8053DF08@sda21(r0)
    addi 3, 29, 0x258
    bl fn_801F71A4
    fmr 3, 26
    .4byte 0xC022AF64 # lfs f1, lbl_8053DF04@sda21(r0)
    .4byte 0xC042AF68 # lfs f2, lbl_8053DF08@sda21(r0)
    addi 3, 29, 0x25c
    bl fn_801F71A4
    lfs 1, 0x14(29)
    .4byte 0xC002AF64 # lfs f0, lbl_8053DF04@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200C4 # bne .L_80184988
    clrlwi. 0, 30, 24
    stfs 0, 0x44(29)
    .4byte 0x40820048 # bne .L_80184918
    lfs 0, 0x3c(29)
    .4byte 0xC022AF68 # lfs f1, lbl_8053DF08@sda21(r0)
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x408000A0 # bge .L_80184988
    lfs 0, 0x258(29)
    fcmpo cr0, 0, 1
    .4byte 0x40800094 # bge .L_80184988
    lfs 0, 0x40(29)
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800080 # bge .L_80184988
    lfs 0, 0x25c(29)
    fcmpo cr0, 0, 1
    .4byte 0x40800074 # bge .L_80184988
L_80184918:
    .4byte 0xC022AF64 # lfs f1, lbl_8053DF04@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002AF60 # lfs f0, lbl_8053DF00@sda21(r0)
    stfs 1, 0x44(29)
    li 0, 0x0
    .4byte 0xC042AF78 # lfs f2, lbl_8053DF18@sda21(r0)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 3, 3, 0x32
    stw 3, 0x23c(29)
    stw 0, 0x230(29)
L_80184988:
    lwz 3, 0x234(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018499C
    subi 0, 3, 0x1
    stw 0, 0x234(29)
L_8018499C:
    lwz 3, 0x238(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801849B0
    subi 0, 3, 0x1
    stw 0, 0x238(29)
L_801849B0:
    addi 4, 29, 0x8
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801849C8
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801849C8:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    psq_l 28, 0x78(1), 0, 0
    lfd 28, 0x70(1)
    psq_l 27, 0x68(1), 0, 0
    lfd 27, 0x60(1)
    psq_l 26, 0x58(1), 0, 0
    lfd 26, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0xb4(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr
