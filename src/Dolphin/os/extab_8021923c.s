/*
 * NEW ACTOR (vtable lbl_804A6550) - main per-frame BEHAVIOR dispatcher,
 * jumptable_804A65F4 on this->0x248 (state, 13 cases 0-0xc). Landed as
 * Track A (byte-matched) + structural overview - traced in full but too
 * large/branchy to narrate every case in a header comment.
 *
 * Shares heavy structural DNA with the orbit-attacker
 * ([[project_fsa_orbit_attacker_actor_progress]]): resolves a target
 * via the confirmed fn_8022FE80/fn_8022FD8C or fn_8022FEB8 family,
 * tests a hitbox against it via fn_8038C678, and on a landed hit either
 * transitions state via fn_80219AFC (this actor's own state-ENTRY
 * handler, analogous to fn_8021DFAC/fn_801E1594) or loops the matched
 * player(s) spawning damage-number effects (fn_80230BF4 + fn_80230498).
 * Also reuses the confirmed fn_801D0020+fn_801CD354 quadrant/
 * permutation pair, the confirmed rail-history pair fn_801D21F0/
 * fn_801D22DC (from TINK), and the confirmed animation-controller
 * bitmask query fn_8030AAF4+fn_80309D6C (from
 * [[project_fsa_player_status_effect_discovered]]) to gate a
 * per-type-lookup effect spawn (lbl_8046A640, 8 bytes/entry). One
 * branch triggers a global screen-effect (lbl_8053AF80 + fn_80458880,
 * unconfirmed) alongside a PRNG-driven multi-hit loop identical in
 * shape to fn_80219AFC's own.
 */
.section extab, "a"
.balign 4
.global etb_8000A348
etb_8000A348:
    .4byte 0x218A0000
    .4byte 0x00000000
.size etb_8000A348, 8

.section extabindex, "a"
.balign 4
.global eti_80018034
eti_80018034:
    .4byte fn_8021923C
    .4byte 0x000008C0
    .4byte etb_8000A348
.size eti_80018034, 12

.text
.balign 4
.global fn_8021923C

fn_8021923C:
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
    stw 28, 0x40(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x40820034 # bne .L_802192C8
    .4byte 0xC002CCE4 # lfs f0, lbl_8053FC84@sda21(r0)
    lfs 4, 0x10(31)
    lfs 1, 0xc(31)
    fadds 3, 0, 4
    fadds 2, 0, 1
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x38(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 2, 0x34(1)
    .4byte 0x4800000C # b .L_802192D0
L_802192C8:
    addi 4, 1, 0x2c
    bl fn_801F31C4
L_802192D0:
    lwz 0, 0x248(31)
    cmplwi 0, 0xc
    .4byte 0x41810724 # bgt .L_802199FC
    lis 3, jumptable_804A65F4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A65F4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    li 6, 0x0
    stw 0, 0x2b8(31)
    li 7, 0x0
    lwz 3, 0x2b8(31)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x2b8(31)
    cmpw 0, 3
    .4byte 0x408206D8 # bne .L_802199FC
    .4byte 0xC022CCBC # lfs f1, lbl_8053FC5C@sda21(r0)
    mr 3, 0
    .4byte 0xC002CCE8 # lfs f0, lbl_8053FC88@sda21(r0)
    addi 6, 1, 0x20
    stfs 1, 0x20(1)
    li 4, 0x150
    li 7, 0x2
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418206A4 # beq .L_802199FC
    mr 3, 31
    li 4, 0x1
    bl fn_80219AFC
    .4byte 0x48000694 # b .L_802199FC
    lwz 3, 0x2b8(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x2b8(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x4182066C # beq .L_802199FC
    lwz 3, 0x2b8(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x41820658 # beq .L_802199FC
    mr 3, 31
    li 4, 0x4
    bl fn_80219AFC
    .4byte 0x48000648 # b .L_802199FC
    .4byte 0xC022CCEC # lfs f1, lbl_8053FC8C@sda21(r0)
    mr 3, 31
    lfs 0, 0x2ac(31)
    addi 4, 31, 0xc
    fmuls 1, 1, 0
    bl fn_801D05F8
    stw 3, 0x2b8(31)
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x0
    .4byte 0x41800620 # blt .L_802199FC
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820614 # beq .L_802199FC
    lwz 0, 0x2b4(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80219408
    mr 3, 31
    li 4, 0x4
    bl fn_80219AFC
    .4byte 0x480005F8 # b .L_802199FC
L_80219408:
    cmpwi 0, 0x3
    .4byte 0x408205F0 # bne .L_802199FC
    mr 3, 31
    li 4, 0x8
    bl fn_80219AFC
    .4byte 0x480005E0 # b .L_802199FC
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    .4byte 0xC002CCE4 # lfs f0, lbl_8053FC84@sda21(r0)
    li 29, 0x0
    lfs 1, 0x10(31)
    mr 30, 29
    lfs 2, 0xc(31)
    fadds 26, 0, 1
    fadds 27, 0, 2
    fsubs 28, 1, 0
    fsubs 29, 2, 0
L_8021945C:
    mr 3, 31
    mr 4, 30
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x418200CC # beq .L_80219538
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8021948C
    mr 3, 30
    bl fn_8022F3DC
    .4byte 0x48000008 # b .L_80219490
L_8021948C:
    mr 3, 30
L_80219490:
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820090 # beq .L_80219538
    mr 3, 30
    bl fn_80230CFC
    lis 4, lbl_8046A640@ha
    slwi 5, 3, 3
    addi 0, 4, lbl_8046A640@l
    mr 3, 30
    add 4, 0, 5
    lfs 30, 0x4(4)
    bl fn_80230CFC
    lis 4, lbl_8046A640@ha
    slwi 0, 3, 3
    addi 4, 4, lbl_8046A640@l
    mr 3, 30
    lfsx 31, 4, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    li 0, 0x0
    lfs 0, 0x4(3)
    fadds 1, 31, 1
    fadds 0, 30, 0
    fcmpo cr0, 1, 29
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_80219528
    fcmpo cr0, 0, 28
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80219528
    fcmpo cr0, 1, 27
    .4byte 0x40800010 # bge .L_80219528
    fcmpo cr0, 0, 26
    .4byte 0x40800008 # bge .L_80219528
    li 0, 0x1
L_80219528:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80219538
    li 29, 0x1
    .4byte 0x48000010 # b .L_80219544
L_80219538:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF1C # blt .L_8021945C
L_80219544:
    clrlwi. 0, 29, 24
    .4byte 0x418204B4 # beq .L_802199FC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x47
    li 5, -0x1
    bl fn_80458880
    mr 3, 31
    li 4, 0x4
    bl fn_80219AFC
    .4byte 0x48000494 # b .L_802199FC
    lfs 3, 0x24(31)
    lfs 0, 0xc(31)
    .4byte 0xC042CCD8 # lfs f2, lbl_8053FC78@sda21(r0)
    fsubs 0, 3, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800038 # bge .L_802195BC
    lfs 1, 0x28(31)
    lfs 0, 0x10(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800020 # bge .L_802195BC
    stfs 3, 0xc(31)
    mr 3, 31
    li 4, 0x5
    lfs 0, 0x28(31)
    stfs 0, 0x10(31)
    bl fn_80219AFC
    .4byte 0x48000444 # b .L_802199FC
L_802195BC:
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80219604
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802195F0
    addi 3, 31, 0x270
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000018 # b .L_80219604
L_802195F0:
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
L_80219604:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x2d
    .4byte 0x408203F0 # bne .L_802199FC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x6c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480003D8 # b .L_802199FC
    lfs 1, 0x14(31)
    .4byte 0xC002CCEC # lfs f0, lbl_8053FC8C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408203C4 # bne .L_802199FC
    stfs 0, 0x14(31)
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418203B0 # beq .L_802199FC
    lwz 0, 0x2b4(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8021966C
    mr 3, 31
    li 4, 0x8
    bl fn_80219AFC
    .4byte 0x48000394 # b .L_802199FC
L_8021966C:
    mr 3, 31
    li 4, 0x6
    bl fn_80219AFC
    .4byte 0x48000384 # b .L_802199FC
    bl SpatialRegistry_GetBase
    lbz 0, 0x3041(3)
    cmplwi 0, 0x0
    .4byte 0x40820374 # bne .L_802199FC
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x2b8(31)
    lwz 3, 0x2b8(31)
    cmpwi 3, 0x0
    .4byte 0x41800344 # blt .L_802199FC
    .4byte 0xC022CCBC # lfs f1, lbl_8053FC5C@sda21(r0)
    addi 7, 1, 0x14
    .4byte 0xC002CCE8 # lfs f0, lbl_8053FC88@sda21(r0)
    li 8, 0x0
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    lwz 4, 0x2a8(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820310 # beq .L_802199FC
    mr 3, 31
    li 4, 0x7
    bl fn_80219AFC
    .4byte 0x48000300 # b .L_802199FC
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x2b8(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418202D4 # beq .L_802199FC
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_80219748
    mr 3, 31
    li 4, 0xa
    bl fn_80219AFC
    .4byte 0x480002B8 # b .L_802199FC
L_80219748:
    mr 3, 31
    li 4, 0x6
    bl fn_80219AFC
    .4byte 0x480002A8 # b .L_802199FC
    lwz 3, 0x2b8(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x2b8(31)
    cmpw 0, 3
    .4byte 0x4082027C # bne .L_802199FC
    .4byte 0xC022CCBC # lfs f1, lbl_8053FC5C@sda21(r0)
    mr 3, 0
    .4byte 0xC002CCE8 # lfs f0, lbl_8053FC88@sda21(r0)
    addi 7, 1, 0x8
    stfs 1, 0x8(1)
    li 8, 0x4002
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    lwz 4, 0x2a8(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820244 # beq .L_802199FC
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x4182007C # beq .L_80219840
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    mr 30, 3
    li 28, 0x0
    .4byte 0x48000058 # b .L_80219838
L_802197E4:
    mr 3, 31
    mr 5, 28
    addi 4, 31, 0xc
    li 6, 0x0
    bl fn_801D0020
    bl fn_801CD354
    mr 29, 3
    mr 3, 28
    mr 4, 29
    bl fn_80230BF4
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    mr 3, 28
    addi 5, 29, 0x3c
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 28, 28, 0x1
L_80219838:
    cmpw 28, 30
    .4byte 0x4180FFA8 # blt .L_802197E4
L_80219840:
    mr 3, 31
    li 4, 0x9
    bl fn_80219AFC
    .4byte 0x480001B0 # b .L_802199FC
    lwz 3, 0x2b8(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x2b8(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820188 # beq .L_802199FC
    lwz 3, 0x2b8(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x41820174 # beq .L_802199FC
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820058 # beq .L_802198EC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    mr 30, 3
    li 28, 0x0
    .4byte 0x4800003C # b .L_802198E4
L_802198AC:
    mr 3, 28
    li 4, 0x1
    bl fn_80230BF4
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    mr 3, 28
    li 5, 0x3d
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 28, 28, 0x1
L_802198E4:
    cmpw 28, 30
    .4byte 0x4180FFC4 # blt .L_802198AC
L_802198EC:
    li 3, 0x0
    bl fn_80230534
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_80219910
    mr 3, 31
    li 4, 0xa
    bl fn_80219AFC
    .4byte 0x480000F0 # b .L_802199FC
L_80219910:
    mr 3, 31
    li 4, 0x6
    bl fn_80219AFC
    .4byte 0x480000E0 # b .L_802199FC
    lhz 0, 0x2ce(31)
    cmplwi 0, 0x0
    .4byte 0x408200D4 # bne .L_802199FC
    mr 3, 31
    li 4, 0xb
    bl fn_80219AFC
    .4byte 0x480000C4 # b .L_802199FC
    lfs 1, 0x14(31)
    .4byte 0xC002CCF0 # lfs f0, lbl_8053FC90@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408200B0 # bne .L_802199FC
    stfs 0, 0x14(31)
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_802199FC
    mr 3, 31
    li 4, 0xc
    bl fn_80219AFC
    .4byte 0x4800008C # b .L_802199FC
    lfs 1, 0x2bc(31)
    lfs 0, 0xc(31)
    .4byte 0xC042CCD8 # lfs f2, lbl_8053FC78@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800028 # bge .L_802199B4
    lfs 1, 0x2c0(31)
    lfs 0, 0x10(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800010 # bge .L_802199B4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800004C # b .L_802199FC
L_802199B4:
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_802199FC
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802199E8
    addi 3, 31, 0x270
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000018 # b .L_802199FC
L_802199E8:
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
L_802199FC:
    lwz 0, 0x248(31)
    li 4, 0x0
    cmpwi 0, 0xa
    .4byte 0x4182004C # beq .L_80219A54
    cmpwi 0, 0x6
    mr 3, 4
    .4byte 0x40800010 # bge .L_80219A24
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_80219A30
    .4byte 0x48000028 # b .L_80219A48
L_80219A24:
    cmpwi 0, 0xb
    .4byte 0x40800020 # bge .L_80219A48
    .4byte 0x48000018 # b .L_80219A44
L_80219A30:
    lwz 0, 0x2b4(31)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_80219A48
    li 3, 0x1
    .4byte 0x48000008 # b .L_80219A48
L_80219A44:
    li 3, 0x1
L_80219A48:
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80219A54
    li 4, 0x1
L_80219A54:
    addi 3, 31, 0x2c8
    bl fn_8021A570
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80219AAC
    lwz 0, 0x2c8(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_80219A98
    .4byte 0x4080003C # bge .L_80219AAC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80219A80
    .4byte 0x48000030 # b .L_80219AAC
L_80219A80:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x6e
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_80219AAC
L_80219A98:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x6d
    li 5, 0x0
    bl fn_801F0E34
L_80219AAC:
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
    lwz 29, 0x44(1)
    lwz 0, 0xb4(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

