/*
 * FARY actor cluster, part 2/5 - the core update(). Track A (byte-exact
 * asm) + structural overview - largest function in this cluster (0xA04
 * = 2564 bytes), a genuinely scripted "flame trap" state machine.
 *
 * fn_8016088C(this):
 * - One-time init (this->0x268 flag): gated on the same virtual-method
 *   (vtable slot 0x34) check seen in draw()/setParams(); on success,
 *   fires a haptic-rumble pattern once (fn_8043D67C(controllerId, 0x339,
 *   0), gated by a global "rumble enabled" flag lbl_8053AAF8->0x7f and a
 *   per-controller once-only bit table lbl_8050EC80), then sets
 *   this->0xb0=0x20000 and spawns TWO persistent flame/ember effect
 *   objects at this->0x290/0x294 via the confirmed effect-spawn
 *   primitive fn_8013CC50 (effect codes 0x183/0x184) if not already
 *   spawned - these are the SAME two sub-objects synced every frame by
 *   Fary_SyncEmberEffectPosition (part 4/5) and culled by the confirmed fn_801EE434
 *   (part 5/5, shared with the WARP cluster).
 * - If this->0x258 != 2: eases 3 target values (0x278/0x27c/0x280) via
 *   the confirmed fn_801F71A4 primitive into a working delta, then
 *   accumulates into this->0xc/0x14 (position) - a smoothing motion.
 *   Syncs both effect sub-objects' positions via fn_8013CB44 (a sibling
 *   of the confirmed effect-spawn primitive).
 * - Main state machine on this->0x230:
 *   - State 0: one-shot init call fn_801F3604(this), falls into state 1.
 *   - State 1 ("search for a target"): computes a wobble/bob value
 *     (shared runtime wave table lbl_8052EBC0) into this->0x280; if not
 *     yet armed, either sets up an initial angle/timer or rolls TWO
 *     independent values from the CONFIRMED global PRNG
 *     (lbl_8053AAF8->0xb4, the Numerical Recipes LCG - see
 *     [[reference_fsa_global_prng]]) directly (not through a wrapper)
 *     into this->0x240/0x248 - a randomized retry delay. Common tail:
 *     translates the interaction box (this->0x60/64/68/6c) by position
 *     and searches for a nearby eligible player via fn_8023AF14 (falling
 *     back to fn_8023B8E4) - literal FourCC constants "PEFF" (spawn via
 *     the confirmed fn_801F9484 dispatcher, room>=8 only), "ZLD2", and
 *     "ZLD4" (looked up via fn_801F2718, NOT spawned - existing-instance
 *     queries) appear as fallback/special targets when no player is
 *     found nearby, setting global flag bytes lbl_8053AB9C/lbl_8053ABEC
 *     to 0x20 if found. Transitions to state 2 on success.
 *   - State 2 ("commit"): if no real target was found (this->0x254<0),
 *     queues the confirmed companion-fairy hint-dispatch fn_80230FD0
 *     with hint code 0x2000B (see
 *     [[project_fsa_companion_fairy_hint_dispatch]]); otherwise queues a
 *     stronger cue via the confirmed fn_801F0E34 (code 0x400C8). Bumps a
 *     persistent play-count byte (lbl_80529DEC->0x24f, capped at 99),
 *     resets timers, sets this->0x11e=1 (the same "primed" flag ZLDA's
 *     setParams uses), snapshots this->0x264=this->0x4 (owner/room), and
 *     advances to state 3.
 *   - State 3 ("aim and fire"): re-arms this->0x234, resolves the locked
 *     target's current position (via SpatialRegistry_GetBase/fn_801F666C if a real
 *     actor handle, else fn_8023DE58/fn_8023E724 for a plain player
 *     index) with a cached fallback if the owner no longer matches.
 *     Computes an aim angle via the confirmed atan2 fn_80093340 every 4
 *     frames, converting it through the shared wave table into a
 *     direction vector (this->0x278/0x27c). Once this->0x248 exceeds
 *     100 (gated on a room-state check via GetRoomConfigRecord/fn_802DCD0C,
 *     unconfirmed), deactivates both effect sub-objects (the confirmed
 *     fn_8013C824/fn_800EC240 cull pair) and fires a second haptic
 *     pattern (code 0x33a), clearing this->0x11c.
 *   - State 4 ("settle"): eases this->0x10 (vertical position) toward a
 *     target player's height (fn_8023E724(this->0x25c), a specific
 *     player slot fixed by setParams) via fn_801F71A4; once close
 *     enough, advances a completion counter and clears this->0x11c.
 *   - State 5 ("wind-down"): eases an intensity value (this->0x270)
 *     toward zero via fn_801F71A4; once below threshold, clears
 *     this->0x11c.
 * - Tail (every frame): decrements 4 consecutive timer fields
 *   (this->0x234/0x238/0x23c/0x240) by 1 each if positive. Unless in
 *   state 4, deactivates both effect sub-objects once this->0x234
 *   expires (unless this->0x258 keeps it re-armed at 0x400).
 *
 * Net effect: FARY is a scripted flame-trap actor - it searches for (or
 * falls back to special script-marker) a target, aims a randomized
 * telegraph at it using the shared PRNG, then fires (deactivating its
 * idle ember effects and cueing a hit), with haptic feedback throughout.
 */
.section extab, "a"
.balign 4
.global etb_8000706C
etb_8000706C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000706C, 8

.section extabindex, "a"
.balign 4
.global eti_80013C30
eti_80013C30:
    .4byte fn_8016088C
    .4byte 0x00000A04
    .4byte etb_8000706C
.size eti_80013C30, 12

.text
.balign 4
.global fn_8016088C

fn_8016088C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 31, 3
    lbz 0, 0x268(3)
    cmplwi 0, 0x0
    .4byte 0x408200FC # bne .L_801609BC
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x418200F0 # beq .L_801609BC
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820980 # beq .L_80161264
    li 0, 0x1
    stb 0, 0x268(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_80160944
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 6, 3, 0
    lbz 4, 0x87(6)
    clrlwi. 0, 4, 31
    .4byte 0x40820028 # bne .L_80160944
    lis 3, lbl_80529DEC@ha
    ori 0, 4, 0x1
    addi 5, 3, lbl_80529DEC@l
    stb 0, 0x87(6)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x339
    lbz 6, 0x24f(5)
    li 5, 0x0
    bl fn_8043D67C
L_80160944:
    lis 0, 0x2
    stw 0, 0xb0(31)
    lwz 0, 0x290(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80160984
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A6D0 # lfs f1, lbl_8053D670@sda21(r0)
    li 5, 0x183
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x290(31)
L_80160984:
    lwz 0, 0x294(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_801609BC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A6D0 # lfs f1, lbl_8053D670@sda21(r0)
    li 5, 0x184
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x294(31)
L_801609BC:
    lwz 0, 0x258(31)
    cmpwi 0, 0x2
    .4byte 0x41820060 # beq .L_80160A24
    lfs 1, 0x278(31)
    addi 3, 31, 0x3c
    .4byte 0xC042A6D4 # lfs f2, lbl_8053D674@sda21(r0)
    .4byte 0xC062A6D8 # lfs f3, lbl_8053D678@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x27c(31)
    addi 3, 31, 0x40
    .4byte 0xC042A6D4 # lfs f2, lbl_8053D674@sda21(r0)
    .4byte 0xC062A6D8 # lfs f3, lbl_8053D678@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x280(31)
    addi 3, 31, 0x14
    .4byte 0xC042A6DC # lfs f2, lbl_8053D67C@sda21(r0)
    .4byte 0xC062A6D8 # lfs f3, lbl_8053D678@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_80160A24:
    lwz 3, 0x290(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x294(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4182043C # beq .L_80160E98
    .4byte 0x4080001C # bge .L_80160A7C
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_80160A9C
    .4byte 0x40800394 # bge .L_80160E00
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80160A8C
    .4byte 0x48000710 # b .L_80161188
L_80160A7C:
    cmpwi 0, 0x5
    .4byte 0x418206D0 # beq .L_80161150
    .4byte 0x40800704 # bge .L_80161188
    .4byte 0x48000600 # b .L_80161088
L_80160A8C:
    mr 3, 31
    bl fn_801F3604
    li 0, 0x1
    stw 0, 0x230(31)
L_80160A9C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408206E4 # bne .L_80161188
    lwz 4, 0x244(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042A6E4 # lfs f2, lbl_8053D684@sda21(r0)
    addi 0, 4, 0x300
    .4byte 0xC002A6E0 # lfs f0, lbl_8053D680@sda21(r0)
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x280(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x408200C8 # bne .L_80160BA8
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4182004C # beq .L_80160B38
    clrlwi. 0, 0, 29
    .4byte 0x40820034 # bne .L_80160B28
    lwz 0, 0x248(31)
    .4byte 0xC022A6D8 # lfs f1, lbl_8053D678@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x278(31)
    lwz 0, 0x248(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x27c(31)
L_80160B28:
    lwz 3, 0x248(31)
    addi 0, 3, 0x100
    stw 0, 0x248(31)
    .4byte 0x48000130 # b .L_80160C64
L_80160B38:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC022A6D0 # lfs f1, lbl_8053D670@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x1
    .4byte 0xC062A6E8 # lfs f3, lbl_8053D688@sda21(r0)
    mullw 3, 4, 3
    .4byte 0xC002A6EC # lfs f0, lbl_8053D68C@sda21(r0)
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
    stfd 1, 0x30(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x1e
    stw 3, 0x240(31)
    stw 0, 0x24c(31)
    stfs 0, 0x278(31)
    stfs 0, 0x27c(31)
    .4byte 0x480000C0 # b .L_80160C64
L_80160BA8:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200B4 # bne .L_80160C64
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC042A6D0 # lfs f2, lbl_8053D670@sda21(r0)
    lwz 3, 0xb4(4)
    li 0, 0x0
    .4byte 0xC062A6F0 # lfs f3, lbl_8053D690@sda21(r0)
    mullw 3, 3, 5
    .4byte 0xC022A6F4 # lfs f1, lbl_8053D694@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(4)
    lwz 3, 0xb4(4)
    lwz 4, 0x248(31)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    add 3, 4, 3
    stw 3, 0x248(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 5
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(4)
    lwz 3, 0xb4(4)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 3, 3, 0x28
    stw 3, 0x240(31)
    stw 0, 0x24c(31)
L_80160C64:
    lfs 3, 0x60(31)
    li 5, 0x1
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stfs 3, 0x1c(1)
    lfs 2, 0x64(31)
    stfs 2, 0x20(1)
    lfs 1, 0x68(31)
    stfs 1, 0x24(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x28(1)
    lfs 5, 0x10(31)
    lfs 0, 0xc(31)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x14(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80160CCC
    li 5, 0x0
L_80160CCC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x1c
    .4byte 0xC022A6EC # lfs f1, lbl_8053D68C@sda21(r0)
    bl fn_8023AF14
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_80160CF8
    lwz 4, 0x4(31)
    addi 3, 1, 0x1c
    addi 5, 1, 0x14
    li 6, 0x1
    bl fn_8023B8E4
L_80160CF8:
    cmpwi 3, 0x0
    .4byte 0x41800074 # blt .L_80160D70
    li 6, 0x0
    li 0, 0x1f4
    stw 6, 0x244(31)
    li 4, 0x20
    li 5, 0x0
    stw 6, 0x248(31)
    stw 6, 0x24c(31)
    stw 0, 0x234(31)
    stw 3, 0x244(31)
    lwz 3, 0x244(31)
    bl fn_80236554
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x41800030 # blt .L_80160D64
    bl SpatialRegistry_GetBase
    lwz 0, 0x244(31)
    lis 4, 0x5045
    mr 5, 30
    addi 6, 31, 0xc
    clrlwi 0, 0, 30
    addi 4, 4, 0x4646
    ori 7, 0, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80160D64:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x4800041C # b .L_80161188
L_80160D70:
    lis 4, 0x5a4c
    mr 3, 31
    addi 4, 4, 0x4432
    bl fn_801F2718
    stw 3, 0x254(31)
    lwz 30, 0x254(31)
    cmpwi 30, 0x0
    .4byte 0x4180002C # blt .L_80160DB8
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80160DB8
    li 3, 0x20
    li 0, 0x2
    .4byte 0x906D8FDC # stw r3, lbl_8053AB9C@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x480003D4 # b .L_80161188
L_80160DB8:
    lis 4, 0x5a4c
    mr 3, 31
    addi 4, 4, 0x4434
    bl fn_801F2718
    stw 3, 0x254(31)
    lwz 30, 0x254(31)
    cmpwi 30, 0x0
    .4byte 0x418003B4 # blt .L_80161188
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418203A0 # beq .L_80161188
    li 3, 0x20
    li 0, 0x2
    .4byte 0x906D902C # stw r3, lbl_8053ABEC@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x4800038C # b .L_80161188
L_80160E00:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80160E20
    lis 4, 0x2
    lwz 3, 0x244(31)
    addi 4, 4, 0xb
    bl fn_80230FD0
    .4byte 0x48000018 # b .L_80160E34
L_80160E20:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc8
    li 5, 0x0
    bl fn_801F0E34
L_80160E34:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_80160E6C
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lbz 3, 0x24f(4)
    cmplwi 3, 0x63
    .4byte 0x40800010 # bge .L_80160E64
    addi 0, 3, 0x1
    stb 0, 0x24f(4)
    .4byte 0x4800000C # b .L_80160E6C
L_80160E64:
    li 0, 0x63
    stb 0, 0x24f(4)
L_80160E6C:
    li 4, 0x0
    li 3, 0x1
    stw 4, 0x23c(31)
    li 0, 0x3
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0xb0(31)
    stb 3, 0x11e(31)
    lwz 3, 0x4(31)
    stw 3, 0x264(31)
    stw 0, 0x230(31)
L_80160E98:
    li 0, 0x1f4
    stw 0, 0x234(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 30, 0x254(31)
    lfs 31, 0xc(31)
    cmpwi 30, 0x0
    lfs 30, 0x10(31)
    .4byte 0x40800060 # bge .L_80160F1C
    lwz 3, 0x244(31)
    bl fn_8023DE58
    lwz 0, 0x264(31)
    cmpw 0, 3
    .4byte 0x40820038 # bne .L_80160F08
    lwz 3, 0x244(31)
    bl fn_8023E724
    lfs 31, 0x0(3)
    lfs 30, 0x4(3)
    lwz 3, 0x244(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x284(31)
    lfs 0, 0x4(3)
    stfs 0, 0x288(31)
    lfs 0, 0x8(3)
    stfs 0, 0x28c(31)
    .4byte 0x4800006C # b .L_80160F70
L_80160F08:
    li 0, 0xc8
    stw 0, 0x248(31)
    lfs 31, 0x284(31)
    lfs 30, 0x288(31)
    .4byte 0x48000058 # b .L_80160F70
L_80160F1C:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_80160F70
    lwz 4, 0x264(31)
    lwz 0, 0x4(3)
    cmpw 4, 0
    .4byte 0x40820024 # bne .L_80160F60
    lfs 31, 0xc(3)
    lfs 30, 0x10(3)
    stfs 31, 0x284(31)
    lfs 0, 0x10(3)
    stfs 0, 0x288(31)
    lfs 0, 0x14(3)
    stfs 0, 0x28c(31)
    .4byte 0x48000014 # b .L_80160F70
L_80160F60:
    li 0, 0xc8
    stw 0, 0x248(31)
    lfs 31, 0x284(31)
    lfs 30, 0x288(31)
L_80160F70:
    .4byte 0xC002A6F8 # lfs f0, lbl_8053D698@sda21(r0)
    stfs 0, 0x26c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80160FC0
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 31, 1
    fsubs 2, 30, 0
    bl fn_80093340
    .4byte 0xC002A6FC # lfs f0, lbl_8053D69C@sda21(r0)
    li 0, 0x4
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    sth 3, 0x274(31)
    stw 0, 0x23c(31)
L_80160FC0:
    lhz 0, 0x274(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0x26c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x278(31)
    lhz 0, 0x274(31)
    lfs 1, 0x26c(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x27c(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x64
    .4byte 0x41810014 # bgt .L_80161018
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x41820174 # beq .L_80161188
L_80161018:
    lwz 0, 0x290(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80161034
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x290(31)
    bl fn_800EC240
L_80161034:
    lwz 0, 0x294(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80161050
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x294(31)
    bl fn_800EC240
L_80161050:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8016107C
    lis 4, lbl_80529DEC@ha
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x33a
    lbz 6, 0x24f(5)
    li 5, 0x0
    bl fn_8043D67C
L_8016107C:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000104 # b .L_80161188
L_80161088:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408200F8 # bne .L_80161188
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_80161118
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_801610C0
    li 0, 0x0
    stw 0, 0x250(31)
L_801610C0:
    lwz 3, 0x25c(31)
    cmpwi 3, 0x0
    .4byte 0x4180007C # blt .L_80161144
    bl fn_8023E724
    lfs 30, 0x4(3)
    addi 3, 31, 0x10
    .4byte 0xC042A6DC # lfs f2, lbl_8053D67C@sda21(r0)
    fmr 1, 30
    .4byte 0xC062A6E4 # lfs f3, lbl_8053D684@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x10(31)
    .4byte 0xC002A6D0 # lfs f0, lbl_8053D670@sda21(r0)
    fsubs 1, 1, 30
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800044 # bge .L_80161144
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x250(31)
    stw 0, 0x248(31)
    .4byte 0x48000030 # b .L_80161144
L_80161118:
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    clrlwi 0, 0, 29
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80161144
    li 0, 0x0
    stb 0, 0x11c(31)
L_80161144:
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x4800003C # b .L_80161188
L_80161150:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_80161188
    .4byte 0xC022A6EC # lfs f1, lbl_8053D68C@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0xC042A6DC # lfs f2, lbl_8053D67C@sda21(r0)
    .4byte 0xC062A700 # lfs f3, lbl_8053D6A0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x270(31)
    .4byte 0xC002A6D0 # lfs f0, lbl_8053D670@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80161188
    li 0, 0x0
    stb 0, 0x11c(31)
L_80161188:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820038 # beq .L_801611C8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801611C8
    li 0, 0x4
    stw 0, 0x238(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_801611C8
    li 0, 0x0
    stw 0, 0x250(31)
L_801611C8:
    li 29, 0x0
    mr 30, 31
L_801611D0:
    lwz 3, 0x234(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801611E4
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_801611E4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820068 # beq .L_80161254
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_8016124C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810050 # bgt .L_80161254
    lwz 0, 0x290(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80161224
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x290(31)
    bl fn_800EC240
L_80161224:
    lwz 0, 0x294(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80161240
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x294(31)
    bl fn_800EC240
L_80161240:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800000C # b .L_80161254
L_8016124C:
    li 0, 0x400
    stw 0, 0x234(31)
L_80161254:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF70 # blt .L_801611D0
L_80161264:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x74(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

