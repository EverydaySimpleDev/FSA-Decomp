/*
 * TINK (vtable lbl_804A51E4) - the largest function in this gap, and per
 * cross-referenced research the real vtable update() entry point. Landed
 * as Track A (byte-matched) + structural overview.
 *
 * Opens with an animation-cue gate (fn_80218538) and an anim-cue queue
 * call (fn_801F0E34), then resolves all 3 tracked targets fresh via the
 * confirmed spatial registry (SpatialRegistry_GetBase + fn_801F750C/fn_801F7464/
 * fn_801F732C for fresh nearest-queries, fn_801F666C for cached-ID lookup)
 * - the same opening pattern as fn_801E1300. The body then repeats, 4
 * times, a proximity/state-transition block structurally identical to
 * fn_801DEA70's state-0xd/state-7 cases: reload this->0x248, compare
 * distance-to-target (via GetRoomConfigRecord's config record) against a radius,
 * and call fn_801E1594(this, newState) to commit a transition. One of
 * these 4 blocks additionally spawns TINK's reward via
 * fn_801E1AB4(this) and plays a cue via fn_8020CF7C/fn_801F0E34. The
 * 4-way repetition most likely corresponds to running this same
 * proximity check independently against each of the 3 tracked targets
 * plus one companion/general case, rather than a single flat 0x248
 * dispatch (unlike fn_801DEA70, which dispatches once via a single
 * jumptable).
 */
.section extab, "a"
.balign 4
.global etb_80008940
etb_80008940:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80008940, 8

.section extabindex, "a"
.balign 4
.global eti_80015E14
eti_80015E14:
    .4byte fn_801E002C
    .4byte 0x00000CC8
    .4byte etb_80008940
.size eti_80015E14, 12

.text
.balign 4
.global fn_801E002C

fn_801E002C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    cmplwi 4, 0x0
    mr 31, 3
    .4byte 0x41820670 # beq .L_801E06D4
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x41800664 # blt .L_801E06D4
    lwz 4, 0x27c(31)
    lwz 5, 0x24c(31)
    slwi 0, 4, 1
    cmpw 5, 0
    .4byte 0x41800630 # blt .L_801E06B4
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x40820024 # bne .L_801E00B4
    bl fn_80218538
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801E00B4
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x70
    li 5, 0x0
    bl fn_801F0E34
L_801E00B4:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x408203B8 # bne .L_801E0474
    lwz 0, 0x2ac(31)
    stw 0, 0x2b8(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(31)
    lwz 5, 0x2b8(31)
    bl fn_801F750C
    stw 3, 0x2ac(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801E00F8
    li 0, -0x1
    stw 0, 0x2b0(31)
    stw 0, 0x2b4(31)
    .4byte 0x48000050 # b .L_801E0144
L_801E00F8:
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(31)
    li 5, -0x1
    bl fn_801F7464
    stw 3, 0x2b0(31)
    lwz 0, 0x2b0(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801E0124
    li 0, -0x1
    stw 0, 0x2b4(31)
    .4byte 0x48000024 # b .L_801E0144
L_801E0124:
    bl SpatialRegistry_GetBase
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    .4byte 0xC022C514 # lfs f1, lbl_8053F4B4@sda21(r0)
    mr 6, 5
    lwz 7, 0x2b8(31)
    bl fn_801F732C
    stw 3, 0x2b4(31)
L_801E0144:
    lwz 29, 0x2ac(31)
    li 3, 0x0
    cmpwi 29, 0x0
    .4byte 0x41800010 # blt .L_801E0160
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
L_801E0160:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E0180
    lwz 29, 0x2b0(31)
    cmpwi 29, 0x0
    .4byte 0x41800010 # blt .L_801E0180
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
L_801E0180:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E01A0
    lwz 29, 0x2b4(31)
    cmpwi 29, 0x0
    .4byte 0x41800010 # blt .L_801E01A0
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
L_801E01A0:
    cmplwi 3, 0x0
    .4byte 0x41820090 # beq .L_801E0234
    lwz 0, 0x230(31)
    li 4, 0x0
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    lwz 0, 0x98(31)
    lfs 2, 0xc(3)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E01F4
    .4byte 0x40800044 # bge .L_801E020C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E01D8
    .4byte 0x48000038 # b .L_801E020C
L_801E01D8:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801E020C
    li 4, 0x1
    .4byte 0x4800001C # b .L_801E020C
L_801E01F4:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801E020C
    li 4, 0x1
L_801E020C:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_801E0224
    mr 3, 31
    li 4, 0x6
    bl fn_801E1594
    .4byte 0x48000AA0 # b .L_801E0CC0
L_801E0224:
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000A90 # b .L_801E0CC0
L_801E0234:
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801E0260
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E0264
L_801E0260:
    addi 3, 3, 0xdc
L_801E0264:
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    li 30, 0x0
    lfs 1, 0x8(3)
    lfs 0, 0x0(3)
    fadds 30, 2, 1
    lfs 29, 0xc(31)
    fsubs 31, 0, 2
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801E0298
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E029C
L_801E0298:
    addi 3, 3, 0xdc
L_801E029C:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801E02BC
    li 30, 0x1
L_801E02BC:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801E02D8
    lfs 0, 0xc(31)
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_801E02D8
    stfs 30, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E02DC
L_801E02D8:
    stfs 31, 0x2c4(31)
L_801E02DC:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801E02F8
    .4byte 0x408000E4 # bge .L_801E03CC
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801E0354
    .4byte 0x480000D8 # b .L_801E03CC
L_801E02F8:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801E0314
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801E031C
L_801E0314:
    li 0, 0x1
    stw 0, 0x98(31)
L_801E031C:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E0344
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000980 # b .L_801E0CC0
L_801E0344:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000970 # b .L_801E0CC0
L_801E0354:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E0390
    .4byte 0x40800044 # bge .L_801E03A8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E0374
    .4byte 0x48000038 # b .L_801E03A8
L_801E0374:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 30, 0
    .4byte 0x40800024 # bge .L_801E03A8
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E03A8
L_801E0390:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 30
    .4byte 0x40800008 # bge .L_801E03A8
    li 3, 0x1
L_801E03A8:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801E03B8
    stfs 30, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E03BC
L_801E03B8:
    stfs 31, 0x2c4(31)
L_801E03BC:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480008F8 # b .L_801E0CC0
L_801E03CC:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E040C
    .4byte 0x40800044 # bge .L_801E0424
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E03F0
    .4byte 0x48000038 # b .L_801E0424
L_801E03F0:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801E0424
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E0424
L_801E040C:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801E0424
    li 3, 0x1
L_801E0424:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801E043C
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000888 # b .L_801E0CC0
L_801E043C:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E0464
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000860 # b .L_801E0CC0
L_801E0464:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000850 # b .L_801E0CC0
L_801E0474:
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801E04A0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E04A4
L_801E04A0:
    addi 3, 3, 0xdc
L_801E04A4:
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    li 30, 0x0
    lfs 1, 0x8(3)
    lfs 0, 0x0(3)
    fadds 31, 2, 1
    lfs 29, 0xc(31)
    fsubs 30, 0, 2
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801E04D8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E04DC
L_801E04D8:
    addi 3, 3, 0xdc
L_801E04DC:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801E04FC
    li 30, 0x1
L_801E04FC:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801E0518
    lfs 0, 0xc(31)
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_801E0518
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E051C
L_801E0518:
    stfs 30, 0x2c4(31)
L_801E051C:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801E0538
    .4byte 0x408000E4 # bge .L_801E060C
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801E0594
    .4byte 0x480000D8 # b .L_801E060C
L_801E0538:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801E0554
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801E055C
L_801E0554:
    li 0, 0x1
    stw 0, 0x98(31)
L_801E055C:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E0584
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000740 # b .L_801E0CC0
L_801E0584:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000730 # b .L_801E0CC0
L_801E0594:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E05D0
    .4byte 0x40800044 # bge .L_801E05E8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E05B4
    .4byte 0x48000038 # b .L_801E05E8
L_801E05B4:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 31, 0
    .4byte 0x40800024 # bge .L_801E05E8
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E05E8
L_801E05D0:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_801E05E8
    li 3, 0x1
L_801E05E8:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801E05F8
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E05FC
L_801E05F8:
    stfs 30, 0x2c4(31)
L_801E05FC:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480006B8 # b .L_801E0CC0
L_801E060C:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E064C
    .4byte 0x40800044 # bge .L_801E0664
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E0630
    .4byte 0x48000038 # b .L_801E0664
L_801E0630:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801E0664
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E0664
L_801E064C:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801E0664
    li 3, 0x1
L_801E0664:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801E067C
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000648 # b .L_801E0CC0
L_801E067C:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E06A4
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000620 # b .L_801E0CC0
L_801E06A4:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000610 # b .L_801E0CC0
L_801E06B4:
    subic. 5, 5, 0xd
    .4byte 0x41800608 # blt .L_801E0CC0
    divw 0, 5, 4
    mullw 0, 0, 4
    subf. 0, 0, 5
    .4byte 0x408205F8 # bne .L_801E0CC0
    bl fn_8020CF7C
    .4byte 0x480005F0 # b .L_801E0CC0
L_801E06D4:
    lwz 29, 0x2ac(31)
    li 30, 0x0
    mr 3, 30
    cmpwi 29, 0x0
    .4byte 0x41800010 # blt .L_801E06F4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
L_801E06F4:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E0714
    lwz 29, 0x2b0(31)
    cmpwi 29, 0x0
    .4byte 0x41800010 # blt .L_801E0714
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
L_801E0714:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E0734
    lwz 29, 0x2b4(31)
    cmpwi 29, 0x0
    .4byte 0x41800010 # blt .L_801E0734
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
L_801E0734:
    lwz 0, 0x248(31)
    cmpwi 0, 0x3
    .4byte 0x408200C8 # bne .L_801E0804
    cmplwi 3, 0x0
    .4byte 0x418200C0 # beq .L_801E0804
    lwz 29, 0x2ac(31)
    cmpwi 29, -0x1
    .4byte 0x408200B4 # bne .L_801E0804
    lfs 1, 0xc(3)
    lfs 0, 0xc(31)
    .4byte 0xC042C518 # lfs f2, lbl_8053F4B8@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800098 # bge .L_801E0804
    lfs 1, 0x10(3)
    lfs 0, 0x10(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800080 # bge .L_801E0804
    lwz 0, 0x230(31)
    .4byte 0xC3A2C4F8 # lfs f29, lbl_8053F498@sda21(r0)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x4182000C # beq .L_801E07A0
    .4byte 0xC3A2C500 # lfs f29, lbl_8053F4A0@sda21(r0)
    .4byte 0x4800004C # b .L_801E07E8
L_801E07A0:
    cmpwi 29, 0x0
    .4byte 0x41800020 # blt .L_801E07C4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801E07C4
    .4byte 0xC3A2C500 # lfs f29, lbl_8053F4A0@sda21(r0)
    .4byte 0x48000028 # b .L_801E07E8
L_801E07C4:
    lwz 29, 0x2b0(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_801E07E8
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801E07E8
    .4byte 0xC3A2C500 # lfs f29, lbl_8053F4A0@sda21(r0)
L_801E07E8:
    lfs 1, 0x14(31)
    .4byte 0xC002C4E8 # lfs f0, lbl_8053F488@sda21(r0)
    fsubs 1, 29, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801E0804
    li 30, 0x1
L_801E0804:
    clrlwi. 0, 30, 24
    .4byte 0x41820270 # beq .L_801E0A78
    bl fn_801CCF7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801E082C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x19
    li 5, 0x0
    bl fn_801F0E34
L_801E082C:
    mr 3, 31
    li 4, 0x0
    bl fn_801E1AB4
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801E0864
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E0868
L_801E0864:
    addi 3, 3, 0xdc
L_801E0868:
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    li 30, 0x0
    lfs 1, 0x8(3)
    lfs 0, 0x0(3)
    fadds 31, 2, 1
    lfs 29, 0xc(31)
    fsubs 30, 0, 2
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801E089C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E08A0
L_801E089C:
    addi 3, 3, 0xdc
L_801E08A0:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801E08C0
    li 30, 0x1
L_801E08C0:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801E08DC
    lfs 0, 0xc(31)
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_801E08DC
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E08E0
L_801E08DC:
    stfs 30, 0x2c4(31)
L_801E08E0:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801E08FC
    .4byte 0x408000E4 # bge .L_801E09D0
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801E0958
    .4byte 0x480000D8 # b .L_801E09D0
L_801E08FC:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801E0918
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801E0920
L_801E0918:
    li 0, 0x1
    stw 0, 0x98(31)
L_801E0920:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E0948
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x4800037C # b .L_801E0CC0
L_801E0948:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x4800036C # b .L_801E0CC0
L_801E0958:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E0994
    .4byte 0x40800044 # bge .L_801E09AC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E0978
    .4byte 0x48000038 # b .L_801E09AC
L_801E0978:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 31, 0
    .4byte 0x40800024 # bge .L_801E09AC
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E09AC
L_801E0994:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_801E09AC
    li 3, 0x1
L_801E09AC:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801E09BC
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E09C0
L_801E09BC:
    stfs 30, 0x2c4(31)
L_801E09C0:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480002F4 # b .L_801E0CC0
L_801E09D0:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E0A10
    .4byte 0x40800044 # bge .L_801E0A28
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E09F4
    .4byte 0x48000038 # b .L_801E0A28
L_801E09F4:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801E0A28
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E0A28
L_801E0A10:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801E0A28
    li 3, 0x1
L_801E0A28:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801E0A40
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000284 # b .L_801E0CC0
L_801E0A40:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E0A68
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x4800025C # b .L_801E0CC0
L_801E0A68:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x4800024C # b .L_801E0CC0
L_801E0A78:
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800240 # blt .L_801E0CC0
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801E0AB0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E0AB4
L_801E0AB0:
    addi 3, 3, 0xdc
L_801E0AB4:
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    li 30, 0x0
    lfs 1, 0x8(3)
    lfs 0, 0x0(3)
    fadds 31, 2, 1
    lfs 29, 0xc(31)
    fsubs 30, 0, 2
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801E0AE8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E0AEC
L_801E0AE8:
    addi 3, 3, 0xdc
L_801E0AEC:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801E0B0C
    li 30, 0x1
L_801E0B0C:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801E0B28
    lfs 0, 0xc(31)
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_801E0B28
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E0B2C
L_801E0B28:
    stfs 30, 0x2c4(31)
L_801E0B2C:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801E0B48
    .4byte 0x408000E4 # bge .L_801E0C1C
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801E0BA4
    .4byte 0x480000D8 # b .L_801E0C1C
L_801E0B48:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801E0B64
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801E0B6C
L_801E0B64:
    li 0, 0x1
    stw 0, 0x98(31)
L_801E0B6C:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E0B94
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000130 # b .L_801E0CC0
L_801E0B94:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000120 # b .L_801E0CC0
L_801E0BA4:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E0BE0
    .4byte 0x40800044 # bge .L_801E0BF8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E0BC4
    .4byte 0x48000038 # b .L_801E0BF8
L_801E0BC4:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 31, 0
    .4byte 0x40800024 # bge .L_801E0BF8
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E0BF8
L_801E0BE0:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_801E0BF8
    li 3, 0x1
L_801E0BF8:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801E0C08
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801E0C0C
L_801E0C08:
    stfs 30, 0x2c4(31)
L_801E0C0C:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480000A8 # b .L_801E0CC0
L_801E0C1C:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E0C5C
    .4byte 0x40800044 # bge .L_801E0C74
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E0C40
    .4byte 0x48000038 # b .L_801E0C74
L_801E0C40:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801E0C74
    li 3, 0x1
    .4byte 0x4800001C # b .L_801E0C74
L_801E0C5C:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801E0C74
    li 3, 0x1
L_801E0C74:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801E0C8C
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000038 # b .L_801E0CC0
L_801E0C8C:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801E0CB4
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000010 # b .L_801E0CC0
L_801E0CB4:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
L_801E0CC0:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x54(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

