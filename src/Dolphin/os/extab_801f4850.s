/*
 * UNIVERSAL BASE-ACTOR DEFAULT - fn_801F4850(this). Landed as Track A
 * (byte-matched) + structural overview: the generic per-frame "death
 * countdown" tick. Started by fn_801F4E0C (this->0x188 = 300), this
 * function decrements this->0x188 each call: every 8th tick plays a
 * jittered hit-flash SFX pair (0x68/0x69), every 32nd tick queues a
 * flash animation cue (0x30001). On reaching 0 (the actor's death
 * actually completing): if the owning room is <8, triggers a light/
 * particle burst via the confirmed fn_802F601C (spatial light-probe
 * family), plays 3 death SFX (0x59/0x5a/0x5b) with jittered pitch,
 * queues the death animation cue, resolves a shadow marker, and spawns
 * a **"GOLD"**-coded actor (0x474F4C44) at this->0xc via the universal
 * dispatcher fn_801F9484. It then spawns a burst of up to 5 **"RUPY"**
 * reward actors via fn_801F8544 with a launch pattern that varies by
 * this->0x1a0's type code ("BWRT" with subtype 1, or "BOIC" get a wider
 * spread) - the SAME reward mechanic TINK and the rupee-burst actor use
 * explicitly, here as the universal fallback every non-overriding actor
 * gets for free. Finally triggers either a PRNG-seeded screen shake
 * (fn_80138B7C, for BWRT-subtype-1/BOIC types) or a generic manager
 * effect (fn_80458F9C) for other types.
 */
.section extab, "a"
.balign 4
.global etb_80008EC4
etb_80008EC4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008EC4, 8

.section extabindex, "a"
.balign 4
.global eti_80016600
eti_80016600:
    .4byte fn_801F4850
    .4byte 0x000005BC
    .4byte etb_80008EC4
.size eti_80016600, 12

.text
.balign 4
.global fn_801F4850

fn_801F4850:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    mr 29, 3
    stw 28, 0x70(1)
    lwz 3, 0x188(3)
    cmpwi 3, -0x1
    .4byte 0x4082000C # bne .L_801F4884
    li 3, 0x0
    .4byte 0x4800056C # b .L_801F4DEC
L_801F4884:
    subi 0, 3, 0x1
    stw 0, 0x188(29)
    lwz 0, 0x188(29)
    clrlwi. 0, 0, 29
    .4byte 0x40820100 # bne .L_801F4994
    psq_l 0, 0xc(29), 0, 0
    lis 3, 0x19
    lfs 4, 0x14(29)
    addi 4, 1, 0x5c
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    addi 11, 3, 0x660d
    psq_st 0, 0x0(4), 0, 0
    li 5, 0x68
    .4byte 0xC002C7AC # lfs f0, lbl_8053F74C@sda21(r0)
    li 6, 0x2
    stfs 4, 0x64(1)
    li 7, 0x0
    .4byte 0xC0A2C7D4 # lfs f5, lbl_8053F774@sda21(r0)
    fmuls 6, 0, 3
    lwz 0, 0xb4(12)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    mullw 3, 0, 11
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 4, 0x5c(1)
    srwi 0, 0, 9
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x28(1)
    lfs 0, 0x28(1)
    fsubs 0, 0, 5
    fmsubs 0, 3, 0, 6
    fadds 0, 1, 0
    fmr 1, 5
    fadds 0, 4, 0
    stfs 0, 0x5c(1)
    lwz 0, 0xb4(12)
    mullw 3, 0, 11
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 4, 0x60(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x24(1)
    lfs 0, 0x24(1)
    fsubs 0, 0, 5
    fmsubs 0, 3, 0, 6
    fadds 0, 2, 0
    fadds 0, 4, 0
    stfs 0, 0x60(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x5c
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    li 5, 0x69
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801F4994:
    lwz 0, 0x188(29)
    clrlwi. 0, 0, 27
    .4byte 0x40820018 # bne .L_801F49B4
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
L_801F49B4:
    lwz 0, 0x188(29)
    cmpwi 0, 0x0
    .4byte 0x4082042C # bne .L_801F4DE8
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x40800024 # bge .L_801F49EC
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    addi 4, 29, 0xc
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 5, 0x2
    fmr 2, 1
    li 6, 0x0
    lwz 3, 0x20(3)
    bl fn_802F601C
L_801F49EC:
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022C830 # lfs f1, lbl_8053F7D0@sda21(r0)
    li 5, 0x59
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022C834 # lfs f1, lbl_8053F7D4@sda21(r0)
    li 5, 0x5a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022C834 # lfs f1, lbl_8053F7D4@sda21(r0)
    li 5, 0x5b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x50(1), 0, 0
    stfs 0, 0x58(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    lwz 5, 0x4(29)
    addi 4, 4, 0x4c44
    addi 6, 29, 0xc
    li 7, 0x50
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 3, 0x1a0(29)
    li 4, 0x0
    subis 0, 3, 0x4257
    cmplwi 0, 0x5254
    .4byte 0x40820014 # bne .L_801F4AD8
    lwz 0, 0x90(29)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_801F4AD8
    li 4, 0x2
L_801F4AD8:
    mr 30, 4
    lis 31, 0x5255
    .4byte 0x48000284 # b .L_801F4D64
L_801F4AE4:
    lfs 0, 0xc(29)
    cmpwi 30, 0x1
    li 28, 0x4
    stfs 0, 0x50(1)
    lfs 0, 0x10(29)
    stfs 0, 0x54(1)
    lfs 0, 0x14(29)
    stfs 0, 0x58(1)
    .4byte 0x40800008 # bge .L_801F4B0C
    li 28, 0x7
L_801F4B0C:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(29)
    mr 7, 28
    addi 4, 31, 0x5059
    addi 6, 1, 0x50
    bl fn_801F8544
    mr. 28, 3
    .4byte 0x41800238 # blt .L_801F4D60
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    lwz 4, 0x1a0(29)
    subis 0, 4, 0x4647
    cmplwi 0, 0x414e
    .4byte 0x408200D8 # bne .L_801F4C1C
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC0A2C7D4 # lfs f5, lbl_8053F774@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062C82C # lfs f3, lbl_8053F7CC@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC042C800 # lfs f2, lbl_8053F7A0@sda21(r0)
    .4byte 0xC022C7AC # lfs f1, lbl_8053F74C@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x20(1)
    lfs 4, 0x20(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 4, 4, 5
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 4, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x4c(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x1c(1)
    lfs 4, 0x1c(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 4, 4, 5
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fsubs 1, 1, 4
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x48(1)
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 5
    fnmsubs 1, 3, 1, 2
    stfs 1, 0x44(1)
    psq_l 1, 0x44(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x48000148 # b .L_801F4D60
L_801F4C1C:
    subis 0, 4, 0x424f
    cmplwi 0, 0x4943
    .4byte 0x40820070 # bne .L_801F4C94
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    .4byte 0xC022C7E0 # lfs f1, lbl_8053F780@sda21(r0)
    addi 0, 4, 0x660d
    lwz 4, 0xb4(5)
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    mullw 4, 4, 0
    .4byte 0xC062C7D4 # lfs f3, lbl_8053F774@sda21(r0)
    .4byte 0xC082C82C # lfs f4, lbl_8053F7CC@sda21(r0)
    .4byte 0xC042C800 # lfs f2, lbl_8053F7A0@sda21(r0)
    stfs 1, 0x3c(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stfs 0, 0x40(1)
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 1, 1, 3
    fnmsubs 1, 4, 1, 2
    stfs 1, 0x38(1)
    psq_l 1, 0x38(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x480000D0 # b .L_801F4D60
L_801F4C94:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC082C7D4 # lfs f4, lbl_8053F774@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062C82C # lfs f3, lbl_8053F7CC@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC042C800 # lfs f2, lbl_8053F7A0@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 1, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x34(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fnmsubs 1, 3, 1, 2
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x30(1)
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 4
    fnmsubs 1, 3, 1, 2
    stfs 1, 0x2c(1)
    psq_l 1, 0x2c(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801F4D60:
    addi 30, 30, 0x1
L_801F4D64:
    cmpwi 30, 0x5
    .4byte 0x4180FD7C # blt .L_801F4AE4
    li 0, 0x0
    stb 0, 0x11c(29)
    lwz 28, 0x16c(29)
    cmpwi 28, -0x1
    .4byte 0x4182001C # beq .L_801F4D98
    bl GetRoomConfigRecord
    lbz 5, 0x1a8(29)
    mr 4, 28
    lwz 6, 0x4(29)
    bl fn_802D7704
    .4byte 0x48000014 # b .L_801F4DA8
L_801F4D98:
    bl GetRoomConfigRecord
    lbz 4, 0x1a8(29)
    lwz 5, 0x4(29)
    bl fn_802D766C
L_801F4DA8:
    lwz 3, 0x1a0(29)
    subis 0, 3, 0x4257
    cmplwi 0, 0x5254
    .4byte 0x40820010 # bne .L_801F4DC4
    lwz 0, 0x90(29)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_801F4DD0
L_801F4DC4:
    subis 0, 3, 0x4752
    cmplwi 0, 0x4f4b
    .4byte 0x40820010 # bne .L_801F4DDC
L_801F4DD0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    .4byte 0x48000010 # b .L_801F4DE8
L_801F4DDC:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
L_801F4DE8:
    li 3, 0x1
L_801F4DEC:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 28, 0x70(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

