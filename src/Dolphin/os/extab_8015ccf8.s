.section extab, "a"
.balign 4
.global etb_80006FE4
etb_80006FE4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006FE4, 8

.section extabindex, "a"
.balign 4
.global eti_80013B64
eti_80013B64:
    .4byte fn_8015CCF8
    .4byte 0x00000B4C
    .4byte etb_80006FE4
.size eti_80013B64, 12

.text
.balign 4
.global fn_8015CCF8

# fn_8015CCF8 - KETH's ("Keese") real update() (0xB4C/2892 bytes). Survey-
# level; not every branch's exact semantics are claimed, but the overall
# architecture and every confirmed subsystem call is real.
#
# Opens with the SAME "wall-mounted" virtual override check ctor/setParams/
# draw() all share (bit 27 of this->0x90 -> this->0x260, vtable slot 0x34):
# if the override handles it, the entire rest of update() is skipped except
# for a fallback animation-ID default, mirroring wall-mounted Keese's
# custom draw() path.
#
# Then dispatches on this->0x264 (the color/variant ID, see setParams). For
# variant 1: checks a countdown timer (this->0x26a, seeded to -1 in
# setParams) against a settings-gated real-time delta (GetRoomConfigRecord/
# fn_802DCD0C/fn_80226998), and once it expires, either clears the variant
# back to 0 (a timed "revert to normal color" mechanic) or continues.
#
# Then two validity gates (fn_801F3D94(this,1), fn_801F2FAC(this)) - if
# BOTH pass and a facing/state byte (this->0x25e) is 1, PROBABILISTICALLY
# (using the CONFIRMED global PRNG, lbl_8053AAF8->0xb4, see
# reference_fsa_global_prng.md) spawns an auxiliary companion object
# tagged 4-char code "BMTY" via the universal dispatcher fn_801F9484 -
# the SAME "spawn/track a non-catalogued auxiliary object" pattern ZLDA
# uses for its own "LIMT" companion (see project_fsa_zlda_actor_progress.md).
# "BMTY" is not one of the 195 catalogued player-visible actor codes,
# consistent with it being an internal-only companion/effect tag, not a
# guess at a real name.
#
# Otherwise: computes a facing angle via fn_8022461C (the SAME helper
# ZLDA's own tail-block idle-facing check uses) and, if it matches a
# specific value, makes a genuine VIRTUAL CALL through vtable slot 0x24
# (another actor-specific override, distinct from slot 0x34's wall-mount
# check and slot 19's movement-query override). Otherwise looks for a
# nearby registered "BMTY"-tagged entity via the CONFIRMED
# SpatialRegistry_GetBase+fn_801F666C registry pair (again mirroring ZLDA's "LIMT"
# lookup shape exactly, including checking the found entity's ->0x1a0
# type-tag field and a ->0x230 state value), invalidating the tracked
# reference if it's in a specific state; if still nothing found, tries a
# literal `"NULL"`-keyed lookup (fn_801F2DB4) before falling back to
# spawning a fresh "BMTY" companion the same way.
#
# The remainder is a genuine multi-state FSM on this->0x230 (states
# observed: 0, 2, 4, plus a default/negative path) - reminiscent of ZLDA's
# own `this->0x328` state machine but simpler. Confirmed pieces within it:
# a random per-axis flutter-speed pick using the shared anchor/wave table
# (lbl_8052EBC0, the SAME runtime sine-adjacent table ZLDA's draw() idle-
# blink calc uses), position integration via paired-single float ops
# (`ps_add` on this->0xc/0x14 with velocity fields this->0x3c/0x44),
# smoothing via the CONFIRMED fn_801F71A4 utility (same one used in
# dtor_801D46FC's class's movement driver), a temporary-bounding-box
# collision query via the CONFIRMED fn_801F2B7C utility (same "swap in an
# alternate box, query, restore" pattern as fn_801DD28C), and - when
# actively chasing - a distance check against a tracked PLAYER via
# fn_8023E724 (the CONFIRMED player-registry position accessor, see
# project_fsa_player_registry_discovery.md and project_fsa_zlda_actor_
# progress.md) - Keese, like ZLDA, tracks and reacts to nearby players
# through the same shared player-registry subsystem.
fn_8015CCF8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    mr 30, 3
    stw 29, 0x64(1)
    lwz 0, 0x90(3)
    srwi. 0, 0, 27
    .4byte 0x41820028 # beq .L_8015CD44
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820AF4 # beq .L_8015D828
    lis 3, 0x3
    addi 0, 3, 0x1201
    stw 0, 0xb0(30)
L_8015CD44:
    lwz 0, 0x264(30)
    cmpwi 0, 0x1
    .4byte 0x40820078 # bne .L_8015CDC4
    lhz 0, 0x26a(30)
    cmplwi 0, 0xffff
    .4byte 0x40820038 # bne .L_8015CD90
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820AC0 # bne .L_8015D828
    lwz 4, 0x4(30)
    addi 3, 1, 0x44
    lfs 1, 0x10(30)
    lfs 0, 0xc(30)
    stfs 0, 0x44(1)
    stfs 1, 0x48(1)
    bl fn_80226998
    sth 3, 0x26a(30)
    .4byte 0x48000A9C # b .L_8015D828
L_8015CD90:
    lwz 4, 0x4(30)
    addi 3, 1, 0x3c
    lfs 1, 0x10(30)
    lfs 0, 0xc(30)
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
    bl fn_80226998
    lhz 0, 0x26a(30)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41820A70 # beq .L_8015D828
    li 0, 0x0
    stw 0, 0x264(30)
L_8015CDC4:
    mr 3, 30
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820A54 # bne .L_8015D828
    mr 3, 30
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_8015CE64
    lbz 0, 0x25e(30)
    cmplwi 0, 0x1
    .4byte 0x40820A38 # bne .L_8015D828
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A588 # lfs f1, lbl_8053D528@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002A598 # lfs f0, lbl_8053D538@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x2c(1)
    lfs 2, 0x2c(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x408009F0 # bge .L_8015D828
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(30)
    addi 4, 4, 0x5254
    addi 6, 30, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480009C8 # b .L_8015D828
L_8015CE64:
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3b
    .4byte 0x4082001C # bne .L_8015CE94
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000998 # b .L_8015D828
L_8015CE94:
    lis 4, 0x424d
    mr 3, 30
    addi 4, 4, 0x5459
    bl fn_801F2718
    mr. 29, 3
    .4byte 0x41800044 # blt .L_8015CEEC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_8015CEEC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x424d
    cmplwi 0, 0x5459
    .4byte 0x40820020 # bne .L_8015CEEC
    lwz 0, 0x230(3)
    subfic 0, 0, 0x3
    cntlzw 0, 0
    extrwi 0, 0, 8, 19
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8015CEEC
    li 29, -0x1
L_8015CEEC:
    cmpwi 29, 0x0
    .4byte 0x408000A0 # bge .L_8015CF90
    lis 4, 0x4e55
    mr 3, 30
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_8015CF90
    lbz 0, 0x25e(30)
    cmplwi 0, 0x1
    .4byte 0x4082090C # bne .L_8015D828
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A588 # lfs f1, lbl_8053D528@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002A598 # lfs f0, lbl_8053D538@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x28(1)
    lfs 2, 0x28(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x408008C4 # bge .L_8015D828
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(30)
    addi 4, 4, 0x5254
    addi 6, 30, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800089C # b .L_8015D828
L_8015CF90:
    .4byte 0xC002A580 # lfs f0, lbl_8053D520@sda21(r0)
    li 4, 0x0
    li 0, -0x1
    sth 4, 0x8(1)
    mr 3, 30
    addi 5, 1, 0x8
    stfs 0, 0x38(1)
    addi 6, 1, 0x34
    addi 7, 1, 0x38
    addi 8, 1, 0x30
    stw 4, 0x34(1)
    li 9, 0x0
    li 10, 0x0
    stw 0, 0x30(1)
    lwz 4, 0x198(30)
    bl fn_801EEC98
    lfs 1, 0x274(30)
    addi 3, 30, 0x3c
    .4byte 0xC042A59C # lfs f2, lbl_8053D53C@sda21(r0)
    .4byte 0xC062A588 # lfs f3, lbl_8053D528@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x278(30)
    addi 3, 30, 0x40
    .4byte 0xC042A59C # lfs f2, lbl_8053D53C@sda21(r0)
    .4byte 0xC062A588 # lfs f3, lbl_8053D528@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(30), 0, 0
    mr 3, 30
    psq_l 0, 0x3c(30), 0, 0
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F2B7C
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4182055C # beq .L_8015D590
    .4byte 0x40800014 # bge .L_8015D04C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8015D058
    .4byte 0x40800410 # bge .L_8015D454
    .4byte 0x480007A4 # b .L_8015D7EC
L_8015D04C:
    cmpwi 0, 0x4
    .4byte 0x4080079C # bge .L_8015D7EC
    .4byte 0x480006FC # b .L_8015D750
L_8015D058:
    lwz 0, 0x264(30)
    li 31, 0x0
    cmpwi 0, 0x3
    .4byte 0x4082009C # bne .L_8015D100
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_8015D098
    lwz 0, 0x250(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A5A0 # lfs f1, lbl_8053D540@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x274(30)
    .4byte 0x48000028 # b .L_8015D0BC
L_8015D098:
    lwz 0, 0x250(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A5A0 # lfs f1, lbl_8053D540@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x278(30)
L_8015D0BC:
    lwz 3, 0x250(30)
    lwz 0, 0x254(30)
    add 0, 3, 0
    stw 0, 0x250(30)
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4181002C # bgt .L_8015D100
    lwz 3, 0x258(30)
    addi 0, 3, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8015D0F8
    li 0, 0x0
    stw 0, 0x258(30)
L_8015D0F8:
    li 0, 0x6
    stw 0, 0x234(30)
L_8015D100:
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200B0 # bne .L_8015D1C8
    lbz 0, 0x25e(30)
    cmplwi 0, 0x0
    .4byte 0x408200A4 # bne .L_8015D1C8
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x408202EC # bne .L_8015D41C
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x418002E0 # blt .L_8015D41C
    lfs 1, 0x38(1)
    .4byte 0xC002A5A4 # lfs f0, lbl_8053D544@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408002D0 # bge .L_8015D41C
    lhz 4, 0x8(1)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002A588 # lfs f0, lbl_8053D528@sda21(r0)
    addis 4, 4, 0x1
    .4byte 0xC042A5A8 # lfs f2, lbl_8053D548@sda21(r0)
    addi 4, 4, -0x8000
    li 0, 0x1
    sth 4, 0x268(30)
    li 31, 0x1
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x24(1)
    lfs 1, 0x24(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 3, 3, 0x32
    stw 3, 0x238(30)
    stw 0, 0x230(30)
    .4byte 0x48000258 # b .L_8015D41C
L_8015D1C8:
    lis 4, 0x1
    addi 3, 30, 0x25c
    addi 4, 4, -0x8000
    li 5, 0x1
    li 6, 0x3000
    bl fn_801F714C
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820234 # bne .L_8015D41C
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x41800228 # blt .L_8015D41C
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(30)
    .4byte 0xC002A5AC # lfs f0, lbl_8053D54C@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800200 # bge .L_8015D41C
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fcmpo cr0, 0, 1
    .4byte 0x408001E8 # bge .L_8015D41C
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(30)
    .4byte 0xC002A5B0 # lfs f0, lbl_8053D550@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x408001C0 # bge .L_8015D41C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002A588 # lfs f0, lbl_8053D528@sda21(r0)
    lwz 3, 0xb4(4)
    li 31, 0x1
    .4byte 0xC042A5B4 # lfs f2, lbl_8053D554@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 0, 3, 0xa
    stw 0, 0x238(30)
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fcmpo cr0, 0, 1
    .4byte 0x4081006C # ble .L_8015D33C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, 0x1
    .4byte 0xC002A588 # lfs f0, lbl_8053D528@sda21(r0)
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    .4byte 0xC042A5B8 # lfs f2, lbl_8053D558@sda21(r0)
    addi 0, 3, -0x8000
    mullw 3, 5, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 3, 3, 0x1000
    stw 3, 0x244(30)
    sth 0, 0x25c(30)
    .4byte 0x4800006C # b .L_8015D3A4
L_8015D33C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x1
    lis 4, 0x19
    .4byte 0xC002A588 # lfs f0, lbl_8053D528@sda21(r0)
    lwz 5, 0xb4(6)
    addi 0, 4, 0x660d
    .4byte 0xC042A5B8 # lfs f2, lbl_8053D558@sda21(r0)
    subi 4, 3, 0x1000
    mullw 5, 5, 0
    subi 0, 3, 0x7fff
    addis 3, 5, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    subf 3, 3, 4
    stw 3, 0x244(30)
    sth 0, 0x25c(30)
L_8015D3A4:
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 2, 0x4(3)
    lis 3, 0x19
    .4byte 0xC022A5BC # lfs f1, lbl_8053D55C@sda21(r0)
    addi 3, 3, 0x660d
    .4byte 0xC002A588 # lfs f0, lbl_8053D528@sda21(r0)
    li 0, 0x2
    fsubs 1, 2, 1
    .4byte 0xC042A5A8 # lfs f2, lbl_8053D548@sda21(r0)
    stfs 1, 0x26c(30)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 3, 3, 0x32
    stw 3, 0x23c(30)
    stw 0, 0x230(30)
L_8015D41C:
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x408203C8 # bne .L_8015D7EC
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xf
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xa9
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800039C # b .L_8015D7EC
L_8015D454:
    lhz 0, 0x268(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A5C0 # lfs f1, lbl_8053D560@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x274(30)
    lhz 0, 0x268(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x278(30)
    lwz 0, 0x34(1)
    cmpwi 0, -0x1
    .4byte 0x41820018 # beq .L_8015D4AC
    lhz 4, 0x8(1)
    addi 3, 30, 0x268
    li 5, 0x1
    li 6, 0x300
    bl fn_801F714C
L_8015D4AC:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x41810338 # bgt .L_8015D7EC
    lwz 3, 0x258(30)
    addi 0, 3, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8015D4D8
    li 0, 0x0
    stw 0, 0x258(30)
L_8015D4D8:
    li 0, 0x6
    stw 0, 0x234(30)
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820304 # bne .L_8015D7EC
    lwz 0, 0x258(30)
    cmpwi 0, 0x2
    .4byte 0x408202F8 # bne .L_8015D7EC
    mr 3, 30
    addi 5, 30, 0xc
    lwz 12, 0x0(30)
    lwz 4, 0x4(30)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408202D4 # bne .L_8015D7EC
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC022A588 # lfs f1, lbl_8053D528@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x0
    .4byte 0xC062A5C4 # lfs f3, lbl_8053D564@sda21(r0)
    mullw 3, 4, 3
    .4byte 0xC002A580 # lfs f0, lbl_8053D520@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 3, 0x54(1)
    addi 3, 3, 0x14
    stw 3, 0x238(30)
    stfs 0, 0x274(30)
    stfs 0, 0x278(30)
    stfs 0, 0x27c(30)
    stw 0, 0x230(30)
    .4byte 0x48000260 # b .L_8015D7EC
L_8015D590:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x408200C4 # bne .L_8015D65C
    lwz 0, 0x248(30)
    lwz 3, 0x244(30)
    cmpwi 0, 0x0
    clrlwi 4, 3, 16
    .4byte 0x4082001C # bne .L_8015D5C8
    lfs 1, 0x10(30)
    lfs 0, 0x26c(30)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8015D5C8
    li 0, 0x1
    stw 0, 0x248(30)
L_8015D5C8:
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x4182004C # beq .L_8015D61C
    addi 3, 30, 0x25c
    li 5, 0x1
    li 6, 0x200
    bl fn_801F714C
    lhz 5, 0x25c(30)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    addi 0, 5, -0x8000
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    stfs 0, 0x274(30)
    lhz 3, 0x25c(30)
    addi 0, 3, -0x8000
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfs 0, 0x4(3)
    stfs 0, 0x278(30)
    .4byte 0x48000044 # b .L_8015D65C
L_8015D61C:
    lhz 5, 0x25c(30)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022A5C8 # lfs f1, lbl_8053D568@sda21(r0)
    addi 0, 5, -0x8000
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x274(30)
    lhz 3, 0x25c(30)
    addi 0, 3, -0x8000
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x278(30)
L_8015D65C:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8015D69C
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4181002C # bgt .L_8015D69C
    lwz 3, 0x258(30)
    addi 0, 3, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8015D694
    li 0, 0x0
    stw 0, 0x258(30)
L_8015D694:
    li 0, 0x6
    stw 0, 0x234(30)
L_8015D69C:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820148 # bne .L_8015D7EC
    mr 3, 30
    addi 5, 30, 0xc
    lwz 12, 0x0(30)
    lwz 4, 0x4(30)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820120 # bne .L_8015D7EC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC022A588 # lfs f1, lbl_8053D528@sda21(r0)
    lwz 5, 0xb4(6)
    li 3, 0x2
    .4byte 0xC062A5C4 # lfs f3, lbl_8053D564@sda21(r0)
    li 0, 0x0
    mullw 4, 5, 4
    .4byte 0xC002A580 # lfs f0, lbl_8053D520@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 4, 0x54(1)
    addi 4, 4, 0x14
    stw 4, 0x238(30)
    stfs 0, 0x274(30)
    stfs 0, 0x278(30)
    stfs 0, 0x27c(30)
    stw 3, 0x258(30)
    stw 0, 0x248(30)
    stw 0, 0x230(30)
    .4byte 0x480000A0 # b .L_8015D7EC
L_8015D750:
    lfs 1, 0x270(30)
    addi 3, 30, 0x26c
    .4byte 0xC042A59C # lfs f2, lbl_8053D53C@sda21(r0)
    .4byte 0xC062A598 # lfs f3, lbl_8053D538@sda21(r0)
    bl fn_801F71A4
    lhz 4, 0x268(30)
    lis 3, lbl_8052EBC0@ha
    lwz 0, 0x244(30)
    addi 3, 3, lbl_8052EBC0@l
    lfs 3, 0x26c(30)
    add 0, 4, 0
    lfs 1, 0x280(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    add 3, 3, 0
    lfs 2, 0x4(3)
    fmuls 0, 3, 0
    fmuls 2, 3, 2
    fadds 0, 1, 0
    stfs 0, 0xc(30)
    lfs 0, 0x284(30)
    fadds 0, 0, 2
    stfs 0, 0x10(30)
    lwz 3, 0x244(30)
    addi 0, 3, 0x200
    stw 0, 0x244(30)
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4181002C # bgt .L_8015D7EC
    lwz 3, 0x258(30)
    addi 0, 3, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8015D7E4
    li 0, 0x0
    stw 0, 0x258(30)
L_8015D7E4:
    li 0, 0x6
    stw 0, 0x234(30)
L_8015D7EC:
    lwz 3, 0x234(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015D800
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_8015D800:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015D814
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_8015D814:
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015D828
    subi 0, 3, 0x1
    stw 0, 0x23c(30)
L_8015D828:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

