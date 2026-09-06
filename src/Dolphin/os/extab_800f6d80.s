# fn_800F6D80: the RUPY (rupee pickup) class's main per-frame update method -
# by far the largest function landed this session (3788 bytes). See
# project_fsa_extab_bug_resolved.md / project_fsa_shared_effect_subsystem_crossref.md
# / project_fsa_player_registry_discovery.md for the cluster this belongs
# to. Dispatches on this->0x230 (phase 0/2/3/4, the same phase convention
# used throughout this class) into per-phase blocks. Confirmed connections
# (all already-documented primitives, reused here): the player-position
# accessor fn_8023E724, the player-registry delegate fn_8022DCD8, the
# registry-lookup pair SpatialRegistry_GetBase+fn_801F666C, the sound/notification
# primitives fn_8013CC50/fn_801F0E34, the group helpers
# fn_8022F514/fn_8022F3DC, and the global PRNG (reference_fsa_global_prng.md)
# used repeatedly for randomized durations exactly like every other OIWA/
# RUPY method. Builds and spawns TWO 4-letter codes via fn_801F9484/
# fn_801F778C: "RUPY" again (a third independent spawn site, following
# fn_800F6820 and fn_801CB434 - see project_fsa_extab_bug_resolved.md) and
# "GOLD" (0x474F4C44) - NOT in the 195-entry dispatch table, thematically
# plausible as a "Gold Rupee" variant but NOT confirmed, flagged honestly
# rather than asserted.
#
# Recognized a real, well-known numerical idiom twice in this function
# (paired-single squared-distance via ps_mul/ps_madd/ps_sum0, then
# frsqrte + one Newton-Raphson refinement step via fmuls/fnmsubs, then
# ps_muls0 to apply the result) - this is the CLASSIC GameCube/Wii "fast
# inverse square root to normalize a 2D vector" pattern, used here to
# normalize a direction vector (this->0x254/0x25c, computed as the offset
# toward either the tracked player's position or another rupee actor's
# position) before scaling it into the actor's own velocity - i.e. this is
# a homing/attraction-toward-target movement calculation, applied whenever
# the squared distance falls within one of two threshold bands (compared
# against lbl_8053BF48 and a second constant).
#
# NOT YET FULLY UNDERSTOOD: the precise meaning of every phase transition,
# the exact conditions selecting between the two spawn codes, or what
# fn_8023DFF4/fn_8022DE10/fn_80093340/fn_801F3668/fn_802362C4/fn_8022C5EC/
# fn_80238548 do (all new, unexplored). Flagging honestly per this
# project's established practice rather than guessing. Uses paired-single
# instructions - needs -mgekko in cflags.
.section extab, "a"
.balign 4
.global etb_80005730
etb_80005730:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80005730, 8

.section extabindex, "a"
.balign 4
.global eti_800119F8
eti_800119F8:
    .4byte fn_800F6D80
    .4byte 0x00000ECC
    .4byte etb_80005730
.size eti_800119F8, 12

.text
.balign 4
.global fn_800F6D80

fn_800F6D80:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    li 4, 0x0
    li 0, -0x1
    sth 4, 0x8(1)
    mr 30, 3
    addi 5, 1, 0x8
    stfs 0, 0x38(1)
    addi 6, 1, 0x34
    addi 7, 1, 0x38
    addi 8, 1, 0x30
    stw 4, 0x34(1)
    li 9, 0x0
    li 10, 0x0
    stw 0, 0x30(1)
    lwz 4, 0x198(3)
    bl fn_801EEC98
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x41820660 # beq .L_800F7464
    .4byte 0x40800014 # bge .L_800F6E1C
    cmpwi 0, 0x0
    .4byte 0x41820044 # beq .L_800F6E54
    .4byte 0x408002D4 # bge .L_800F70E8
    .4byte 0x48000DF0 # b .L_800F7C08
L_800F6E1C:
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_800F6E2C
    .4byte 0x40800DE4 # bge .L_800F7C08
    .4byte 0x48000AA4 # b .L_800F78CC
L_800F6E2C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820DC4 # beq .L_800F7C08
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000DB8 # b .L_800F7C08
L_800F6E54:
    lfs 2, 0x44(30)
    li 31, 0x0
    .4byte 0xC0228F9C # lfs f1, lbl_8053BF3C@sda21(r0)
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(30)
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800108 # bge .L_800F6F7C
    lbz 0, 0x23c(30)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_800F6F6C
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0xa
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0428F90 # lfs f2, lbl_8053BF30@sda21(r0)
    stfs 0, 0x14(30)
    li 0, 0x1
    .4byte 0xC0628FB8 # lfs f3, lbl_8053BF58@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC0228F94 # lfs f1, lbl_8053BF34@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x28(1)
    lfs 0, 0x28(1)
    fsubs 0, 0, 2
    fnmsubs 0, 3, 0, 2
    fadds 0, 3, 0
    stfs 0, 0x44(30)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x24(1)
    lfs 0, 0x24(1)
    fsubs 0, 0, 2
    fsubs 0, 1, 0
    stfs 0, 0x3c(30)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x20(1)
    lfs 0, 0x20(1)
    fsubs 0, 0, 2
    fsubs 0, 1, 0
    stfs 0, 0x40(30)
    stb 0, 0x23c(30)
    .4byte 0x48000014 # b .L_800F6F7C
L_800F6F6C:
    stfs 0, 0x44(30)
    li 31, 0x1
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
L_800F6F7C:
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 3, 0x240(30)
    subi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x4181008C # bgt .L_800F703C
    lbz 3, 0x235(30)
    addi 0, 3, 0x1
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    clrlwi 0, 0, 30
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_800F7034
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0028F90 # lfs f0, lbl_8053BF30@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0428FBC # lfs f2, lbl_8053BF5C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 0, 3, 0x3c
    stw 0, 0x240(30)
    .4byte 0x4800000C # b .L_800F703C
L_800F7034:
    li 0, 0x2
    stw 0, 0x240(30)
L_800F703C:
    lwz 0, 0x30(1)
    cmpwi 0, -0x1
    .4byte 0x41820BC4 # beq .L_800F7C08
    lfs 1, 0x38(1)
    .4byte 0xC0028FC0 # lfs f0, lbl_8053BF60@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800BB4 # bge .L_800F7C08
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820BA8 # bne .L_800F7C08
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(30)
    addi 4, 30, 0xc
    .4byte 0xC0228F90 # lfs f1, lbl_8053BF30@sda21(r0)
    li 5, 0x3dc
    stw 0, 0x240(30)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    lwz 3, 0x4(30)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lbz 0, 0x234(30)
    .4byte 0x38AD82B0 # li r5, lbl_80539E70@sda21
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    slwi 0, 0, 1
    .4byte 0xC0228F90 # lfs f1, lbl_8053BF30@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x23
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000B24 # b .L_800F7C08
L_800F70E8:
    lis 4, 0x1
    mr 3, 30
    addi 0, 4, 0x1101
    li 4, 0x1
    stw 0, 0xb0(30)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820B04 # bne .L_800F7C08
    mr 3, 30
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x40820AF4 # bne .L_800F7C08
    lwz 3, 0x240(30)
    addi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4082003C # bne .L_800F7168
    lwz 4, 0x240(30)
    .4byte 0x386D82B8 # li r3, lbl_80539E78@sda21
    srwi 0, 4, 31
    add 0, 0, 4
    srawi 0, 0, 1
    lbzx 0, 3, 0
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    cmplwi 0, 0xff
    .4byte 0x40820088 # bne .L_800F71DC
    li 0, 0x0
    stb 0, 0x235(30)
    stw 0, 0x240(30)
    .4byte 0x48000078 # b .L_800F71DC
L_800F7168:
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_800F71A8
    lwz 0, 0x240(30)
    cmpwi 0, 0x6
    .4byte 0x40820064 # bne .L_800F71DC
    lbz 3, 0x235(30)
    addi 0, 3, 0x1
    stb 0, 0x235(30)
    lbz 3, 0x235(30)
    cmplwi 3, 0x7
    .4byte 0x4082000C # bne .L_800F719C
    subi 0, 3, 0x1
    stb 0, 0x235(30)
L_800F719C:
    li 0, 0x0
    stw 0, 0x240(30)
    .4byte 0x48000038 # b .L_800F71DC
L_800F71A8:
    lwz 0, 0x240(30)
    cmpwi 0, 0x6
    .4byte 0x4082002C # bne .L_800F71DC
    lbz 3, 0x235(30)
    addi 0, 3, 0x1
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    cmplwi 0, 0x7
    .4byte 0x4082000C # bne .L_800F71D4
    li 0, 0x0
    stb 0, 0x235(30)
L_800F71D4:
    li 0, 0x0
    stw 0, 0x240(30)
L_800F71DC:
    lwz 3, 0x30(1)
    cmpwi 3, -0x1
    .4byte 0x418200AC # beq .L_800F7290
    lfs 1, 0x38(1)
    .4byte 0xC0028FC4 # lfs f0, lbl_8053BF64@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080009C # bge .L_800F7290
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x40820090 # bne .L_800F7290
    lhz 0, 0x8(1)
    sth 0, 0x23e(30)
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    lwz 3, 0x30(1)
    fsubs 0, 0, 1
    fabs 30, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(30)
    .4byte 0xC0028FC8 # lfs f0, lbl_8053BF68@sda21(r0)
    fsubs 1, 1, 2
    fcmpo cr0, 30, 0
    fabs 1, 1
    .4byte 0x408001DC # bge .L_800F7420
    fcmpo cr0, 1, 0
    .4byte 0x408001D4 # bge .L_800F7420
    lwz 3, 0x30(1)
    li 4, 0x1
    bl fn_8022DE10
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201BC # bne .L_800F7420
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(30)
    lwz 3, 0x30(1)
    stw 3, 0x238(30)
    stw 0, 0x250(30)
    stw 0, 0x248(30)
    stw 0, 0x240(30)
    stb 0, 0x235(30)
    .4byte 0x48000194 # b .L_800F7420
L_800F7290:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    addi 5, 30, 0xc
    addi 4, 4, 0x5059
    addi 6, 1, 0x2c
    bl fn_801F778C
    mr 31, 3
    cmpwi 31, -0x1
    .4byte 0x41820104 # beq .L_800F73B4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    psq_l 0, 0xc(3), 0, 0
    lis 4, lbl_80534C00@ha
    lfs 4, 0x14(3)
    addi 3, 4, lbl_80534C00@l
    psq_st 0, 0x44(1), 0, 0
    lfs 1, 0xc(30)
    lfs 3, 0x44(1)
    lfs 2, 0x48(1)
    lfs 0, 0x10(30)
    fsubs 1, 3, 1
    stfs 4, 0x4c(1)
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC0428FCC # lfs f2, lbl_8053BF6C@sda21(r0)
    .4byte 0xC0028FD0 # lfs f0, lbl_8053BF70@sda21(r0)
    fmuls 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 0, 0x54(1)
    sth 0, 0x23e(30)
    lfs 1, 0x2c(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800108 # bge .L_800F7420
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    lhz 4, 0x94(3)
    li 0, -0x1
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_800F7340
    cmplwi 4, 0x3
    .4byte 0x4082000C # bne .L_800F7348
L_800F7340:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
L_800F7348:
    cmpwi 0, -0x1
    .4byte 0x418200D4 # beq .L_800F7420
    lis 3, lbl_8049C558@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_8049C558@l
    lwz 4, 0x244(30)
    lwzx 0, 3, 0
    add 0, 4, 0
    stw 0, 0x244(30)
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    lwz 4, 0x230(3)
    cmpwi 4, 0x0
    .4byte 0x4182002C # beq .L_800F73AC
    subi 0, 4, 0xf
    cmplwi 0, 0x1
    .4byte 0x40810020 # ble .L_800F73AC
    subi 0, 4, 0x1
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_800F73AC
    cmpwi 4, 0x9
    .4byte 0x4182000C # beq .L_800F73AC
    cmpwi 4, 0xd
    .4byte 0x40820078 # bne .L_800F7420
L_800F73AC:
    bl fn_801F3668
    .4byte 0x48000070 # b .L_800F7420
L_800F73B4:
    lwz 0, 0x24c(30)
    clrlwi. 0, 0, 28
    .4byte 0x40820064 # bne .L_800F7420
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0028F90 # lfs f0, lbl_8053BF30@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0428FD4 # lfs f2, lbl_8053BF74@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lha 3, 0x23e(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    add 3, 0, 3
    subi 0, 3, 0x4000
    sth 0, 0x23e(30)
L_800F7420:
    lha 0, 0x23e(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0428F9C # lfs f2, lbl_8053BF3C@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0xc(30)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(30)
    lha 0, 0x23e(30)
    lfs 0, 0x10(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(30)
    .4byte 0x480007A8 # b .L_800F7C08
L_800F7464:
    lwz 3, 0x238(30)
    mr 31, 3
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_800F7484
    lwz 3, 0x238(30)
    bl fn_8022F3DC
    mr 31, 3
L_800F7484:
    lwz 29, 0x108(30)
    mr 3, 30
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_800F7504
    lwz 0, 0x108(30)
    mr 3, 31
    lwz 4, 0x248(30)
    subf 0, 0, 29
    add 0, 4, 0
    stw 0, 0x248(30)
    stw 29, 0x108(30)
    bl fn_80236228
    cmpwi 3, 0x14
    .4byte 0x40810034 # ble .L_800F74F0
    mr 3, 31
    li 4, -0x14
    bl fn_802362C4
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    lwz 5, 0x4(30)
    addi 4, 4, 0x4c44
    addi 6, 30, 0xc
    li 7, 0x14
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_800F74F0:
    lwz 0, 0x248(30)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_800F7504
    lwz 3, 0x238(30)
    bl fn_8022DD74
L_800F7504:
    mr 3, 30
    li 4, 0x1
    bl fn_801F3D94
    lwz 3, 0x240(30)
    addi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4082003C # bne .L_800F7560
    lwz 4, 0x240(30)
    .4byte 0x386D82B8 # li r3, lbl_80539E78@sda21
    srwi 0, 4, 31
    add 0, 0, 4
    srawi 0, 0, 1
    lbzx 0, 3, 0
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    cmplwi 0, 0xff
    .4byte 0x40820088 # bne .L_800F75D4
    li 0, 0x0
    stb 0, 0x235(30)
    stw 0, 0x240(30)
    .4byte 0x48000078 # b .L_800F75D4
L_800F7560:
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_800F75A0
    lwz 0, 0x240(30)
    cmpwi 0, 0x6
    .4byte 0x40820064 # bne .L_800F75D4
    lbz 3, 0x235(30)
    addi 0, 3, 0x1
    stb 0, 0x235(30)
    lbz 3, 0x235(30)
    cmplwi 3, 0x7
    .4byte 0x4082000C # bne .L_800F7594
    subi 0, 3, 0x1
    stb 0, 0x235(30)
L_800F7594:
    li 0, 0x0
    stw 0, 0x240(30)
    .4byte 0x48000038 # b .L_800F75D4
L_800F75A0:
    lwz 0, 0x240(30)
    cmpwi 0, 0x6
    .4byte 0x4082002C # bne .L_800F75D4
    lbz 3, 0x235(30)
    addi 0, 3, 0x1
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    cmplwi 0, 0x7
    .4byte 0x4082000C # bne .L_800F75CC
    li 0, 0x0
    stb 0, 0x235(30)
L_800F75CC:
    li 0, 0x0
    stw 0, 0x240(30)
L_800F75D4:
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fsubs 0, 0, 1
    stfs 0, 0x254(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fsubs 0, 0, 1
    stfs 0, 0x258(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x8(3)
    addi 4, 30, 0x254
    lfs 0, 0x14(30)
    fsubs 0, 0, 1
    stfs 0, 0x25c(30)
    lwz 3, 0x238(30)
    bl fn_8023DFF4
    lwz 0, 0x24c(30)
    lis 3, lbl_8049C548@ha
    lbz 4, 0x234(30)
    addi 3, 3, lbl_8049C548@l
    clrlwi. 0, 0, 27
    slwi 4, 4, 2
    lwzx 29, 3, 4
    .4byte 0x4082002C # bne .L_800F7670
    mr 3, 31
    bl fn_80236228
    subf. 0, 29, 3
    .4byte 0x4081001C # ble .L_800F7670
    mr 3, 31
    neg 4, 29
    bl fn_802362C4
    lwz 0, 0x244(30)
    add 0, 0, 29
    stw 0, 0x244(30)
L_800F7670:
    lwz 3, 0x238(30)
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_800F76B4
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x230(30)
    addi 5, 1, 0x3c
    li 4, 0x0
    li 6, 0x1
    stw 0, 0x240(30)
    lfs 0, 0xc(30)
    stfs 0, 0x3c(1)
    lfs 0, 0x10(30)
    stfs 0, 0x40(1)
    lwz 3, 0x238(30)
    bl fn_80238548
L_800F76B4:
    lwz 3, 0x30(1)
    cmpwi 3, -0x1
    .4byte 0x418200CC # beq .L_800F7788
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fsubs 0, 0, 1
    stfs 0, 0x254(30)
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fsubs 0, 0, 1
    stfs 0, 0x258(30)
    lwz 3, 0x30(1)
    bl fn_8023E724
    lfs 2, 0x8(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x14(30)
    .4byte 0xC0228FD8 # lfs f1, lbl_8053BF78@sda21(r0)
    fsubs 0, 0, 2
    stfs 0, 0x25c(30)
    psq_l 2, 0x254(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 2, 2
    lfs 30, 0x25c(30)
    fmuls 0, 1, 0
    ps_madd 4, 30, 30, 2
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_800F7788
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800F774C
    fmr 31, 4
    .4byte 0x48000028 # b .L_800F7770
L_800F774C:
    frsqrte 3, 4
    .4byte 0xC0428F94 # lfs f2, lbl_8053BF34@sda21(r0)
    .4byte 0xC0028F98 # lfs f0, lbl_8053BF38@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_800F7770:
    psq_l 1, 0x254(30), 0, 0
    psq_l 0, 0x25c(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x254(30), 0, 0
    psq_st 0, 0x25c(30), 1, 0
L_800F7788:
    .4byte 0xC0828FDC # lfs f4, lbl_8053BF7C@sda21(r0)
    lfs 2, 0x254(30)
    lfs 0, 0xc(30)
    .4byte 0xC0228FE0 # lfs f1, lbl_8053BF80@sda21(r0)
    fmadds 2, 4, 2, 0
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    stfs 2, 0xc(30)
    lfs 3, 0x258(30)
    lfs 2, 0x10(30)
    fmadds 2, 4, 3, 2
    stfs 2, 0x10(30)
    lfs 2, 0x44(30)
    fsubs 1, 2, 1
    stfs 1, 0x44(30)
    lfs 2, 0x14(30)
    lfs 1, 0x44(30)
    fadds 1, 2, 1
    stfs 1, 0x14(30)
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820064 # bne .L_800F7840
    stfs 0, 0x14(30)
    lis 4, 0x5
    .4byte 0xC0028FB8 # lfs f0, lbl_8053BF58@sda21(r0)
    mr 3, 30
    addi 4, 4, 0x24
    li 5, 0x0
    stfs 0, 0x44(30)
    bl fn_801F0E34
    mr 3, 31
    bl fn_80236228
    cmpwi 3, 0x5
    .4byte 0x40810034 # ble .L_800F7840
    mr 3, 31
    li 4, -0x5
    bl fn_802362C4
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    lwz 5, 0x4(30)
    addi 4, 4, 0x4c44
    addi 6, 30, 0xc
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_800F7840:
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    li 4, 0x8
    stfs 0, 0x264(30)
    stfs 0, 0x260(30)
    lwz 3, 0x238(30)
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_800F786C
    .4byte 0xC0028FE4 # lfs f0, lbl_8053BF84@sda21(r0)
    stfs 0, 0x264(30)
    .4byte 0x480003A0 # b .L_800F7C08
L_800F786C:
    lwz 3, 0x238(30)
    li 4, 0x4
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_800F788C
    .4byte 0xC0028FE8 # lfs f0, lbl_8053BF88@sda21(r0)
    stfs 0, 0x264(30)
    .4byte 0x48000380 # b .L_800F7C08
L_800F788C:
    lwz 3, 0x238(30)
    li 4, 0x1
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_800F78AC
    .4byte 0xC0028FE4 # lfs f0, lbl_8053BF84@sda21(r0)
    stfs 0, 0x260(30)
    .4byte 0x48000360 # b .L_800F7C08
L_800F78AC:
    lwz 3, 0x238(30)
    li 4, 0x2
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4182034C # beq .L_800F7C08
    .4byte 0xC0028FE8 # lfs f0, lbl_8053BF88@sda21(r0)
    stfs 0, 0x260(30)
    .4byte 0x48000340 # b .L_800F7C08
L_800F78CC:
    lfs 29, 0x44(30)
    mr 3, 30
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_800F78F4
    mr 3, 30
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_800F78FC
L_800F78F4:
    stfs 29, 0x44(30)
    .4byte 0x480002CC # b .L_800F7BC4
L_800F78FC:
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    lwz 3, 0x240(30)
    addi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4082003C # bne .L_800F7960
    lwz 4, 0x240(30)
    .4byte 0x386D82B8 # li r3, lbl_80539E78@sda21
    srwi 0, 4, 31
    add 0, 0, 4
    srawi 0, 0, 1
    lbzx 0, 3, 0
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    cmplwi 0, 0xff
    .4byte 0x40820088 # bne .L_800F79D4
    li 0, 0x0
    stb 0, 0x235(30)
    stw 0, 0x240(30)
    .4byte 0x48000078 # b .L_800F79D4
L_800F7960:
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_800F79A0
    lwz 0, 0x240(30)
    cmpwi 0, 0x6
    .4byte 0x40820064 # bne .L_800F79D4
    lbz 3, 0x235(30)
    addi 0, 3, 0x1
    stb 0, 0x235(30)
    lbz 3, 0x235(30)
    cmplwi 3, 0x7
    .4byte 0x4082000C # bne .L_800F7994
    subi 0, 3, 0x1
    stb 0, 0x235(30)
L_800F7994:
    li 0, 0x0
    stw 0, 0x240(30)
    .4byte 0x48000038 # b .L_800F79D4
L_800F79A0:
    lwz 0, 0x240(30)
    cmpwi 0, 0x6
    .4byte 0x4082002C # bne .L_800F79D4
    lbz 3, 0x235(30)
    addi 0, 3, 0x1
    stb 0, 0x235(30)
    lbz 0, 0x235(30)
    cmplwi 0, 0x7
    .4byte 0x4082000C # bne .L_800F79CC
    li 0, 0x0
    stb 0, 0x235(30)
L_800F79CC:
    li 0, 0x0
    stw 0, 0x240(30)
L_800F79D4:
    lbz 0, 0x235(30)
    cmplwi 0, 0x0
    .4byte 0x418201E8 # beq .L_800F7BC4
    .4byte 0xC0228FA8 # lfs f1, lbl_8053BF48@sda21(r0)
    lfs 0, 0x14(30)
    fcmpu cr0, 1, 0
    .4byte 0x408201B4 # bne .L_800F7BA0
    cmplwi 0, 0x0
    .4byte 0x418201AC # beq .L_800F7BA0
    .4byte 0xC0028FEC # lfs f0, lbl_8053BF8C@sda21(r0)
    lis 4, 0x5
    mr 3, 30
    li 5, 0x0
    stfs 0, 0x44(30)
    addi 4, 4, 0x25
    bl fn_801F0E34
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0428F90 # lfs f2, lbl_8053BF30@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC0228F98 # lfs f1, lbl_8053BF38@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    cmpwi 0, 0x1
    .4byte 0x4080007C # bge .L_800F7AE4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC0228FB8 # lfs f1, lbl_8053BF58@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 2
    fsubs 0, 1, 0
    stfs 0, 0x254(30)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fsubs 0, 1, 0
    stfs 0, 0x258(30)
    .4byte 0x48000034 # b .L_800F7B14
L_800F7AE4:
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fsubs 0, 0, 1
    stfs 0, 0x254(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fsubs 0, 0, 1
    stfs 0, 0x258(30)
L_800F7B14:
    .4byte 0xC0028FF0 # lfs f0, lbl_8053BF90@sda21(r0)
    lis 3, lbl_80539D44@ha
    .4byte 0xC0228FD8 # lfs f1, lbl_8053BF78@sda21(r0)
    stfs 0, 0x25c(30)
    psq_l 2, 0x254(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 2, 2
    lfs 30, 0x25c(30)
    fmuls 0, 1, 0
    ps_madd 4, 30, 30, 2
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_800F7BA0
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800F7B64
    fmr 31, 4
    .4byte 0x48000028 # b .L_800F7B88
L_800F7B64:
    frsqrte 3, 4
    .4byte 0xC0428F94 # lfs f2, lbl_8053BF34@sda21(r0)
    .4byte 0xC0028F98 # lfs f0, lbl_8053BF38@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_800F7B88:
    psq_l 1, 0x254(30), 0, 0
    psq_l 0, 0x25c(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x254(30), 0, 0
    psq_st 0, 0x25c(30), 1, 0
L_800F7BA0:
    .4byte 0xC0428FF4 # lfs f2, lbl_8053BF94@sda21(r0)
    lfs 1, 0x254(30)
    lfs 0, 0xc(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(30)
    lfs 1, 0x258(30)
    lfs 0, 0x10(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(30)
L_800F7BC4:
    lfs 2, 0x44(30)
    .4byte 0xC0228FE0 # lfs f1, lbl_8053BF80@sda21(r0)
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(30)
    lfs 2, 0x14(30)
    lfs 1, 0x44(30)
    fadds 1, 2, 1
    stfs 1, 0x14(30)
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_800F7C08
    stfs 0, 0x14(30)
    li 0, 0x0
    stfs 0, 0x44(30)
    stb 0, 0x235(30)
L_800F7C08:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 0, 0xa4(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

