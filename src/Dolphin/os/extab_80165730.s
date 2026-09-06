/*
 * ARRW (arrow projectile) actor cluster, part 2/6 - the core update().
 * Track A (byte-exact asm) + structural overview - largest function in
 * this cluster (0xBA8 = 2984 bytes), a rich flight/collision/embed
 * state machine.
 *
 * fn_80165730(this):
 * - this->0x94==3 (special variant): just hit-tests all 4 players via
 *   Player_GetCapabilityFlagByIndex/fn_8022E438/fn_8023B190 and applies a hit reaction via
 *   fn_8022E1A0, skipping all flight logic.
 * - Otherwise, if not yet embedded (this->0x230!=4): looks up an
 *   existing "FLME" or "BLZ2" actor instance via fn_801F2718 (the
 *   confirmed existing-instance-query primitive, see
 *   [[project_fsa_fary_actor_progress]]'s "ZLD2"/"ZLD4" precedent); if
 *   one is found and idle (->0x94==0), spawns an ignite effect and
 *   transitions straight to state 4 ("attached/lighting a torch") -
 *   this is the fire-arrow-lights-a-torch interaction.
 * - Integrates position (this->0xc/0x14 += this->0x3c/0x44 velocity)
 *   unconditionally. For fire-type arrows (0x94==2/4) still flying,
 *   manages a persistent trailing glow effect (this->0x278, synced via
 *   the confirmed fn_8013CB44 using a per-orientation offset table
 *   `lbl_804662FC` and applied via fn_800EF008) plus a second slot
 *   (this->0x27c) and does a visibility/hit check via fn_801F2B7C.
 * - Main state dispatch (this->0x230):
 *   - State 0 (flying): validates continued flight via fn_801F2A10 and
 *     a lifetime timer (this->0x108); if it should stop, falls into the
 *     "embed" logic below. If still flying, orientation 3 (down-shot)
 *     rolls the confirmed global PRNG to pick a randomized gravity/arc
 *     constant, applies gravity scaling to the velocity, queues cue
 *     0x4d1, arms a 100-frame "committed" timer, spawns 2 more effect
 *     slots (codes 0x117/0x118), and transitions to state 1 (falling
 *     arc, minimal extra logic before merging back into the tail).
 *   - Embed logic (reached from state 0 or 2): spawns/syncs an
 *     "embedded in wall" effect (code selected by orientation from
 *     0x281-0x284) and, via a 2-iteration loop using a new offset table
 *     `lbl_8053AC98` and fn_802A20F0, plants what looks like a 2-segment
 *     arrow-shaft decal at the impact point. Hit-tests all 4 players
 *     again and applies a push/damage reaction via fn_80238548 (gated
 *     by the global rumble-enabled flag for which direction code to
 *     use). If fn_801F2618 (an "can I still act" check) passes and the
 *     arrow is fire-type, re-spawns a "BLZE" actor (a blaze/burst
 *     effect, new confirmed FourCC) via the confirmed fn_801F9484
 *     dispatcher, then retires the embed effect and transitions to
 *     state 2 ("embedded, settling").
 *   - States 2/3 (settling): fire a cue, register the arrow's position
 *     with the confirmed spatial/camera registry (`lbl_8053AB10->0x24`
 *     + fn_8030C210, from [[project_fsa_zlda_actor_progress]]), and run
 *     a short wobble-then-finalize counter sequence before signaling
 *     "ready to despawn" (this->0x26c=2).
 *   - State 4 (attached to FLME/BLZ2): once this->0x244 expires,
 *     retires both effect slots via the confirmed cull idiom.
 * - Tail: decrements 5 countdown timers; for states 0/1, updates
 *   this->0x268 (a sprite-frame index, either an accumulating counter
 *   for fire-types or a direct table lookup `lbl_804A0530` by
 *   orientation+state for others).
 */
.section extab, "a"
.balign 4
.global etb_80007144
etb_80007144:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80007144, 8

.section extabindex, "a"
.balign 4
.global eti_80013D14
eti_80013D14:
    .4byte fn_80165730
    .4byte 0x00000BA8
    .4byte etb_80007144
.size eti_80013D14, 12

.text
.balign 4
.global fn_80165730

fn_80165730:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 27, 0x4c(1)
    mr 30, 3
    lis 4, lbl_804A0530@ha
    lhz 0, 0x94(3)
    addi 31, 4, lbl_804A0530@l
    cmplwi 0, 0x3
    .4byte 0x408200A8 # bne .L_80165804
    lfs 3, 0x60(30)
    li 28, 0x0
    stfs 3, 0x24(1)
    lfs 2, 0x64(30)
    stfs 2, 0x28(1)
    lfs 1, 0x68(30)
    stfs 1, 0x2c(1)
    lfs 0, 0x6c(30)
    stfs 0, 0x30(1)
    lfs 5, 0x10(30)
    lfs 4, 0xc(30)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x28(1)
    stfs 3, 0x24(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
L_801657AC:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_801657F4
    lwz 4, 0x90(30)
    mr 3, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_801657F4
    lwz 5, 0x4(30)
    mr 3, 28
    addi 4, 1, 0x24
    bl fn_8023B190
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801657F4
    lwz 4, 0x198(30)
    mr 3, 28
    bl fn_8022E1A0
L_801657F4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFB0 # blt .L_801657AC
    .4byte 0x48000ABC # b .L_801662BC
L_80165804:
    lwz 0, 0x230(30)
    cmpwi 0, 0x4
    .4byte 0x418200D8 # beq .L_801658E4
    lis 4, 0x464c
    addi 4, 4, 0x4d45
    bl fn_801F2718
    mr. 28, 3
    .4byte 0x40800048 # bge .L_80165868
    lis 4, 0x424c
    mr 3, 30
    addi 4, 4, 0x5a32
    bl fn_801F2718
    mr. 28, 3
    .4byte 0x41800030 # blt .L_80165868
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80165858
    li 28, -0x1
    .4byte 0x48000014 # b .L_80165868
L_80165858:
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80165868
    li 28, -0x1
L_80165868:
    cmpwi 28, 0x0
    .4byte 0x41800078 # blt .L_801658E4
    .4byte 0xC002A828 # lfs f0, lbl_8053D7C8@sda21(r0)
    addi 4, 30, 0xc
    .4byte 0xC022A820 # lfs f1, lbl_8053D7C0@sda21(r0)
    li 5, 0xbd
    stfs 0, 0x44(30)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    stfs 0, 0x40(30)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x3c(30)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    stw 3, 0x278(30)
    li 0, 0x2
    lis 4, 0x3
    li 6, 0x0
    stw 0, 0x26c(30)
    li 0, 0x14
    mr 3, 30
    addi 4, 4, 0x5
    stw 6, 0x108(30)
    li 5, 0x0
    stw 6, 0x258(30)
    stw 0, 0x244(30)
    bl fn_801F0E34
    li 0, 0x4
    stw 0, 0x230(30)
L_801658E4:
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80165918
    cmplwi 0, 0x4
    .4byte 0x4082014C # bne .L_80165A60
L_80165918:
    lwz 0, 0x230(30)
    cmpwi 0, 0x4
    .4byte 0x41820140 # beq .L_80165A60
    lwz 0, 0x260(30)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80165964
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A820 # lfs f1, lbl_8053D7C0@sda21(r0)
    li 5, 0xbd
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x278(30)
    li 0, 0x1
    stw 0, 0x260(30)
L_80165964:
    lwz 3, 0x278(30)
    cmplwi 3, 0x0
    .4byte 0x418200A0 # beq .L_80165A0C
    lfs 3, 0xc(30)
    addi 9, 31, 0x0
    addi 4, 1, 0x34
    li 5, 0x0
    stfs 3, 0x34(1)
    li 6, 0x2
    li 7, 0x1
    lfs 2, 0x10(30)
    stfs 2, 0x38(1)
    lfs 0, 0x14(30)
    stfs 0, 0x3c(1)
    lwz 0, 0x98(30)
    slwi 0, 0, 3
    add 8, 9, 0
    lfsx 1, 9, 0
    lfs 0, 0x4(8)
    fadds 1, 3, 1
    fadds 0, 2, 0
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    bl fn_8013CB44
    lwz 4, 0x98(30)
    li 6, 0x0
    cmpwi 4, 0x2
    .4byte 0x40820014 # bne .L_801659E4
    lis 3, lbl_804662FC@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_804662FC@l
    lwzx 6, 3, 0
L_801659E4:
    lis 5, lbl_804662FC@ha
    slwi 0, 4, 2
    addi 5, 5, lbl_804662FC@l
    lwz 3, 0x278(30)
    lwzx 0, 5, 0
    extsh 4, 6
    addi 6, 3, 0x68
    li 3, -0x1
    extsh 5, 0
    bl fn_800EF008
L_80165A0C:
    lwz 3, 0x27c(30)
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0xC022A82C # lfs f1, lbl_8053D7CC@sda21(r0)
    mr 3, 30
    .4byte 0xC002A830 # lfs f0, lbl_8053D7D0@sda21(r0)
    li 6, 0x7
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x70(30)
    stfs 1, 0x74(30)
    stfs 0, 0x78(30)
    stfs 0, 0x7c(30)
    lwz 4, 0x114(30)
    lwz 5, 0x90(30)
    bl fn_801F2B7C
L_80165A60:
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4182063C # beq .L_801660A4
    .4byte 0x40800014 # bge .L_80165A80
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80165A90
    .4byte 0x4080056C # bge .L_80165FE4
    .4byte 0x48000724 # b .L_801661A0
L_80165A80:
    cmpwi 0, 0x4
    .4byte 0x418206C0 # beq .L_80166144
    .4byte 0x40800718 # bge .L_801661A0
    .4byte 0x48000630 # b .L_801660BC
L_80165A90:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80165AA4
    li 0, 0x0
    stb 0, 0x11c(30)
L_80165AA4:
    lbz 0, 0x274(30)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80165AD0
    lwz 4, 0x90(30)
    mr 3, 30
    lwz 5, 0x98(30)
    li 6, 0x1
    li 7, 0x1
    bl fn_801F2A10
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80165ADC
L_80165AD0:
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x40820170 # bne .L_80165C48
L_80165ADC:
    lwz 0, 0x98(30)
    cmpwi 0, 0x3
    .4byte 0x40820060 # bne .L_80165B44
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A820 # lfs f1, lbl_8053D7C0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002A834 # lfs f0, lbl_8053D7D4@sda21(r0)
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
    .4byte 0x40800010 # bge .L_80165B3C
    .4byte 0xC002A838 # lfs f0, lbl_8053D7D8@sda21(r0)
    stfs 0, 0x3c(30)
    .4byte 0x4800000C # b .L_80165B44
L_80165B3C:
    .4byte 0xC002A83C # lfs f0, lbl_8053D7DC@sda21(r0)
    stfs 0, 0x3c(30)
L_80165B44:
    lfs 1, 0x3c(30)
    lis 4, 0x4
    .4byte 0xC042A840 # lfs f2, lbl_8053D7E0@sda21(r0)
    mr 3, 30
    .4byte 0xC002A838 # lfs f0, lbl_8053D7D8@sda21(r0)
    addi 4, 4, 0xd1
    fmuls 1, 1, 2
    li 5, 0x0
    stfs 1, 0x3c(30)
    lfs 1, 0x40(30)
    fmuls 1, 1, 2
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    bl fn_801F0E34
    li 0, 0x64
    stw 0, 0x248(30)
    lwz 0, 0x98(30)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_80165BC8
    .4byte 0x40800014 # bge .L_80165BA4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80165BB0
    .4byte 0x40800020 # bge .L_80165BBC
    .4byte 0x4800003C # b .L_80165BDC
L_80165BA4:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_80165BDC
    .4byte 0x48000028 # b .L_80165BD4
L_80165BB0:
    li 0, 0x3
    stw 0, 0x258(30)
    .4byte 0x48000024 # b .L_80165BDC
L_80165BBC:
    li 0, 0x1
    stw 0, 0x258(30)
    .4byte 0x48000018 # b .L_80165BDC
L_80165BC8:
    li 0, 0x0
    stw 0, 0x258(30)
    .4byte 0x4800000C # b .L_80165BDC
L_80165BD4:
    li 0, 0x2
    stw 0, 0x258(30)
L_80165BDC:
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x26c(30)
    addi 4, 30, 0xc
    .4byte 0xC022A820 # lfs f1, lbl_8053D7C0@sda21(r0)
    li 5, 0x117
    stw 0, 0x108(30)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    lwz 3, 0x4(30)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A820 # lfs f1, lbl_8053D7C0@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stw 0, 0x230(30)
    .4byte 0x4800055C # b .L_801661A0
L_80165C48:
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80165C5C
    cmplwi 0, 0x4
    .4byte 0x40820120 # bne .L_80165D78
L_80165C5C:
    lwz 3, 0x27c(30)
    cmplwi 3, 0x0
    .4byte 0x4082007C # bne .L_80165CE0
    lwz 0, 0x98(30)
    li 5, 0x0
    cmpwi 0, 0x2
    .4byte 0x41820034 # beq .L_80165CA8
    .4byte 0x40800014 # bge .L_80165C8C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80165C98
    .4byte 0x4080001C # bge .L_80165CA0
    .4byte 0x4800002C # b .L_80165CB4
L_80165C8C:
    cmpwi 0, 0x4
    .4byte 0x40800024 # bge .L_80165CB4
    .4byte 0x4800001C # b .L_80165CB0
L_80165C98:
    li 5, 0x283
    .4byte 0x48000018 # b .L_80165CB4
L_80165CA0:
    li 5, 0x282
    .4byte 0x48000010 # b .L_80165CB4
L_80165CA8:
    li 5, 0x281
    .4byte 0x48000008 # b .L_80165CB4
L_80165CB0:
    li 5, 0x284
L_80165CB4:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A820 # lfs f1, lbl_8053D7C0@sda21(r0)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x27c(30)
    .4byte 0x48000018 # b .L_80165CF4
L_80165CE0:
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_80165CF4:
    lwz 3, 0x98(30)
    bl fn_801F6874
    extsh 28, 3
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3E2A830 # lfs f31, lbl_8053D7D0@sda21(r0)
    addi 29, 3, lbl_8052EBC0@l
    li 27, 0x0
    addi 28, 28, 0x2000
L_80165D14:
    lfs 3, 0xc(30)
    rlwinm 0, 28, 30, 18, 28
    add 5, 29, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x34(1)
    addi 4, 1, 0x34
    lfs 1, 0x0(5)
    li 7, 0x0
    lfs 2, 0x10(30)
    li 8, 0x0
    lfs 0, 0x4(5)
    fmadds 1, 31, 1, 3
    stfs 2, 0x38(1)
    fmadds 0, 31, 0, 2
    lfs 2, 0x14(30)
    stfs 2, 0x3c(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    lwz 5, 0x90(30)
    lwz 6, 0x4(30)
    bl fn_802A20F0
    addi 27, 27, 0x1
    subi 28, 28, 0x4000
    cmpwi 27, 0x2
    .4byte 0x4180FFA0 # blt .L_80165D14
L_80165D78:
    lfs 3, 0x60(30)
    stfs 3, 0x14(1)
    lfs 2, 0x64(30)
    stfs 2, 0x18(1)
    lfs 1, 0x68(30)
    stfs 1, 0x1c(1)
    lfs 0, 0x6c(30)
    stfs 0, 0x20(1)
    lfs 5, 0x10(30)
    lfs 4, 0xc(30)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x18(1)
    stfs 3, 0x14(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lbz 0, 0x274(30)
    cmplwi 0, 0x0
    .4byte 0x40820128 # bne .L_80165EF0
    li 27, 0x0
L_80165DD0:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820108 # beq .L_80165EE4
    lwz 4, 0x90(30)
    mr 3, 27
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x408200F4 # bne .L_80165EE4
    lwz 5, 0x4(30)
    mr 3, 27
    addi 4, 1, 0x14
    bl fn_8023B190
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_80165EE4
    lfs 3, 0x1c(1)
    lfs 1, 0x14(1)
    lfs 4, 0x20(1)
    lfs 0, 0x18(1)
    fsubs 1, 1, 3
    .4byte 0xC042A834 # lfs f2, lbl_8053D7D4@sda21(r0)
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80165E4C
    cmplwi 0, 0x4
    .4byte 0x40820050 # bne .L_80165E98
L_80165E4C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80165E74
    mr 3, 27
    addi 5, 1, 0xc
    li 4, 0x0
    li 6, 0x0
    bl fn_80238548
    .4byte 0x48000018 # b .L_80165E88
L_80165E74:
    mr 3, 27
    addi 5, 1, 0xc
    li 4, 0x2
    li 6, 0x0
    bl fn_80238548
L_80165E88:
    lwz 4, 0x198(30)
    mr 3, 27
    bl fn_8022E1A0
    .4byte 0x48000048 # b .L_80165EDC
L_80165E98:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80165EC0
    mr 3, 27
    addi 5, 1, 0xc
    li 4, 0x0
    li 6, 0x1
    bl fn_80238548
    .4byte 0x48000018 # b .L_80165ED4
L_80165EC0:
    mr 3, 27
    addi 5, 1, 0xc
    li 4, 0x1
    li 6, 0x1
    bl fn_80238548
L_80165ED4:
    li 0, 0x0
    stb 0, 0x11c(30)
L_80165EDC:
    li 0, 0x1
    stb 0, 0x274(30)
L_80165EE4:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FEE4 # blt .L_80165DD0
L_80165EF0:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_80165F9C
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80165F1C
    cmplwi 0, 0x4
    .4byte 0x4082002C # bne .L_80165F44
L_80165F1C:
    bl SpatialRegistry_GetBase
    lwz 0, 0x90(30)
    lis 4, 0x424c
    lwz 5, 0x4(30)
    addi 4, 4, 0x5a45
    addi 6, 30, 0xc
    clrlwi 7, 0, 30
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80165F44:
    li 4, 0x1
    li 3, 0x0
    stw 4, 0x26c(30)
    stw 3, 0x108(30)
    lwz 5, 0x27c(30)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80165F74
    lwz 0, 0xf4(5)
    ori 0, 0, 0x1
    stw 0, 0xf4(5)
    stw 4, 0x24(5)
    stw 3, 0x27c(30)
L_80165F74:
    .4byte 0xC002A828 # lfs f0, lbl_8053D7C8@sda21(r0)
    li 3, 0x0
    li 0, 0x2
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 3, 0x258(30)
    stw 3, 0x244(30)
    stw 0, 0x230(30)
    .4byte 0x48000208 # b .L_801661A0
L_80165F9C:
    lwz 0, 0x258(30)
    lwz 3, 0x270(30)
    cmpw 0, 3
    .4byte 0x4182001C # beq .L_80165FC4
    lis 4, 0x3
    stw 3, 0x258(30)
    mr 3, 30
    li 5, 0x0
    addi 4, 4, 0x1d
    bl fn_801F0E34
L_80165FC4:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x408001D4 # bge .L_801661A0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 30, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x480001C0 # b .L_801661A0
L_80165FE4:
    lwz 0, 0x248(30)
    clrlwi. 0, 0, 31
    .4byte 0x40820030 # bne .L_8016601C
    lwz 4, 0x258(30)
    addi 3, 31, 0x20
    addi 0, 4, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    clrlwi 0, 0, 30
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x98(30)
L_8016601C:
    lwz 5, 0x278(30)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80166044
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x278(30)
L_80166044:
    lwz 5, 0x27c(30)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80166064
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x27c(30)
L_80166064:
    .4byte 0xC022A828 # lfs f1, lbl_8053D7C8@sda21(r0)
    addi 3, 30, 0x234
    .4byte 0xC042A834 # lfs f2, lbl_8053D7D4@sda21(r0)
    .4byte 0xC062A844 # lfs f3, lbl_8053D7E4@sda21(r0)
    bl fn_801F71A4
    lfs 2, 0x44(30)
    .4byte 0xC022A848 # lfs f1, lbl_8053D7E8@sda21(r0)
    .4byte 0xC002A828 # lfs f0, lbl_8053D7C8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(30)
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    .4byte 0x4080010C # bge .L_801661A0
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000100 # b .L_801661A0
L_801660A4:
    mr 3, 30
    lis 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x3
    stw 0, 0x230(30)
L_801660BC:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_801660D8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 30, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_801660D8:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80166120
    li 0, 0x1
    stw 0, 0x244(30)
    lwz 3, 0x258(30)
    addi 0, 3, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_80166110
    li 0, 0x1e
    stw 0, 0x244(30)
    .4byte 0x48000014 # b .L_80166120
L_80166110:
    cmpwi 0, 0x7
    .4byte 0x4180000C # blt .L_80166120
    li 0, 0x0
    stb 0, 0x11c(30)
L_80166120:
    lwz 0, 0x258(30)
    cmpwi 0, 0x6
    .4byte 0x40820078 # bne .L_801661A0
    lwz 0, 0x244(30)
    cmpwi 0, 0x3
    .4byte 0x4080006C # bge .L_801661A0
    li 0, 0x2
    stw 0, 0x26c(30)
    .4byte 0x48000060 # b .L_801661A0
L_80166144:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_801661A0
    lwz 5, 0x278(30)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80166178
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x278(30)
L_80166178:
    lwz 5, 0x27c(30)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80166198
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x27c(30)
L_80166198:
    li 0, 0x0
    stb 0, 0x11c(30)
L_801661A0:
    lwz 3, 0x244(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801661B4
    subi 0, 3, 0x1
    stw 0, 0x244(30)
L_801661B4:
    lwz 3, 0x248(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801661C8
    subi 0, 3, 0x1
    stw 0, 0x248(30)
L_801661C8:
    lwz 3, 0x24c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801661DC
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
L_801661DC:
    lwz 3, 0x250(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801661F0
    subi 0, 3, 0x1
    stw 0, 0x250(30)
L_801661F0:
    lwz 3, 0x254(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80166204
    subi 0, 3, 0x1
    stw 0, 0x254(30)
L_80166204:
    lwz 0, 0x230(30)
    cmpwi 0, 0x4
    .4byte 0x418200B0 # beq .L_801662BC
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80166220
    cmpwi 0, 0x1
    .4byte 0x40820080 # bne .L_8016629C
L_80166220:
    lwz 0, 0x98(30)
    stw 0, 0x268(30)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x4180008C # blt .L_801662BC
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80166248
    cmplwi 0, 0x4
    .4byte 0x40820078 # bne .L_801662BC
L_80166248:
    lwz 0, 0x98(30)
    mulli 0, 0, 0x3
    stw 0, 0x268(30)
    lwz 3, 0x268(30)
    lwz 0, 0x264(30)
    add 0, 3, 0
    stw 0, 0x268(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_801662BC
    li 0, 0x2
    stw 0, 0x244(30)
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    cmpwi 0, 0x2
    .4byte 0x40810030 # ble .L_801662BC
    li 0, 0x0
    stw 0, 0x264(30)
    .4byte 0x48000024 # b .L_801662BC
L_8016629C:
    lwz 4, 0x98(30)
    addi 3, 31, 0x30
    lwz 0, 0x258(30)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x268(30)
L_801662BC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 27, 0x4c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

