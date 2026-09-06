/*
 * ARRW (arrow projectile) actor cluster, part 4/6 - terrain-collision
 * classifier. Track A (byte-exact asm) + structural overview.
 *
 * fn_8016636C(this, dirVec, pos): looks up a resource table via
 * fn_8020D58C, then calls fn_8020D6AC(entry, dirVec, pos, ownerId) - if
 * it reports an immediate block, returns "stop" (1) right away.
 * Otherwise computes a facing angle (fn_8022461C) and queries the
 * terrain/tile type under the arrow (fn_80226850, returning a wide
 * numeric code). A long cascade of `cmpwi`/range checks against dozens
 * of specific terrain-type codes decides the outcome per type: some
 * ranges (e.g. 0x40-0x9a for orientation 0/4) mean "pass through, no
 * collision" (return 0); many individual codes accumulate a "stuck in
 * wall" counter (this->0x238/0x240, capped ~20 frames) before finally
 * returning "stop" (1); two special codes (0x25/0x26) additionally
 * check a room-config byte (GetRoomConfigRecord()->0x170/0x171) to decide.
 * Once stuck for >11 frames (this->0x23c), resets both counters and
 * returns "stop" again. Net effect: "given the terrain under the arrow
 * right now, should it embed here or keep flying?" - not called by any
 * of the other 5 functions in this cluster, so its actual caller (very
 * likely a top-level update() wrapper outside this gap, matching the
 * pattern already seen with FLME's fn_8015DE10) is unconfirmed.
 */
.section extab, "a"
.balign 4
.global etb_80007154
etb_80007154:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80007154, 8

.section extabindex, "a"
.balign 4
.global eti_80013D2C
eti_80013D2C:
    .4byte fn_8016636C
    .4byte 0x000004A8
    .4byte etb_80007154
.size eti_80013D2C, 12

.text
.balign 4
.global fn_8016636C

fn_8016636C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    mr 28, 4
    mr 27, 5
    lwz 30, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    lis 3, lbl_804662E8@ha
    lbz 0, 0x1(8)
    addi 7, 3, lbl_804662E8@l
    mr 29, 28
    mr 4, 28
    mulli 3, 0, 0x784
    mr 5, 27
    mr 6, 30
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801663D4
    li 3, 0x1
    .4byte 0x48000430 # b .L_80166800
L_801663D4:
    mr 3, 27
    mr 4, 28
    bl fn_8022461C
    clrlwi 30, 3, 16
    mr 3, 27
    mr 4, 28
    bl fn_80226850
    subi 0, 30, 0x10
    clrlwi 28, 3, 16
    cmplwi 0, 0x7
    .4byte 0x40810014 # ble .L_80166410
    cmpwi 28, 0x140
    .4byte 0x41800024 # blt .L_80166428
    cmpwi 28, 0x15f
    .4byte 0x4181001C # bgt .L_80166428
L_80166410:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x23c(31)
    li 3, 0x0
    stb 0, 0x238(31)
    .4byte 0x480003DC # b .L_80166800
L_80166428:
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8016643C
    cmplwi 0, 0x4
    .4byte 0x4082001C # bne .L_80166454
L_8016643C:
    cmpwi 28, 0x40
    .4byte 0x41800014 # blt .L_80166454
    cmpwi 28, 0x9a
    .4byte 0x4181000C # bgt .L_80166454
    li 3, 0x0
    .4byte 0x480003B0 # b .L_80166800
L_80166454:
    subi 0, 28, 0x230
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80166468
    cmpwi 28, 0x234
    .4byte 0x40820014 # bne .L_80166478
L_80166468:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x238(31)
    .4byte 0x4800038C # b .L_80166800
L_80166478:
    cmpwi 30, 0x0
    .4byte 0x41820350 # beq .L_801667CC
    cmpwi 30, 0x4
    .4byte 0x41820348 # beq .L_801667CC
    cmpwi 30, 0x5
    .4byte 0x41820340 # beq .L_801667CC
    cmpwi 30, 0x6
    .4byte 0x41820338 # beq .L_801667CC
    cmpwi 30, 0x7
    .4byte 0x41820330 # beq .L_801667CC
    cmpwi 30, 0x2
    .4byte 0x41820328 # beq .L_801667CC
    cmpwi 30, 0x3
    .4byte 0x41820320 # beq .L_801667CC
    cmpwi 30, 0x50
    .4byte 0x41820318 # beq .L_801667CC
    cmpwi 30, 0xe
    .4byte 0x41820310 # beq .L_801667CC
    cmpwi 30, 0xc
    .4byte 0x41820308 # beq .L_801667CC
    cmpwi 30, 0x27
    .4byte 0x41820300 # beq .L_801667CC
    cmpwi 30, 0x28
    .4byte 0x418202F8 # beq .L_801667CC
    cmpwi 30, 0x29
    .4byte 0x418202F0 # beq .L_801667CC
    cmpwi 30, 0x2a
    .4byte 0x418202E8 # beq .L_801667CC
    cmpwi 30, 0x2b
    .4byte 0x418202E0 # beq .L_801667CC
    cmpwi 30, 0x2c
    .4byte 0x418202D8 # beq .L_801667CC
    cmpwi 30, 0x2d
    .4byte 0x418202D0 # beq .L_801667CC
    cmpwi 30, 0x2e
    .4byte 0x418202C8 # beq .L_801667CC
    cmpwi 30, 0x2f
    .4byte 0x418202C0 # beq .L_801667CC
    cmpwi 30, 0x20
    .4byte 0x418202B8 # beq .L_801667CC
    cmpwi 30, 0xd
    .4byte 0x418202B0 # beq .L_801667CC
    cmpwi 30, 0x39
    .4byte 0x418202A8 # beq .L_801667CC
    cmpwi 30, 0x3a
    .4byte 0x418202A0 # beq .L_801667CC
    cmpwi 30, 0x3b
    .4byte 0x41820298 # beq .L_801667CC
    cmpwi 30, 0x4c
    .4byte 0x41820290 # beq .L_801667CC
    cmpwi 30, 0x4d
    .4byte 0x41820288 # beq .L_801667CC
    cmpwi 30, 0x4e
    .4byte 0x41820280 # beq .L_801667CC
    cmpwi 30, 0x4f
    .4byte 0x41820278 # beq .L_801667CC
    cmpwi 30, 0x24
    .4byte 0x41820270 # beq .L_801667CC
    subi 0, 30, 0x7
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80166574
    cmpwi 30, 0xa
    .4byte 0x4082004C # bne .L_801665BC
L_80166574:
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80166588
    li 3, 0x0
    .4byte 0x4800027C # b .L_80166800
L_80166588:
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801665B4
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_801665B4
    li 3, 0x1
    .4byte 0x48000250 # b .L_80166800
L_801665B4:
    li 3, 0x0
    .4byte 0x48000248 # b .L_80166800
L_801665BC:
    cmpwi 30, 0x6
    .4byte 0x41820014 # beq .L_801665D4
    cmpwi 30, 0x9
    .4byte 0x4182000C # beq .L_801665D4
    cmpwi 30, 0xb
    .4byte 0x4082004C # bne .L_8016661C
L_801665D4:
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801665E8
    li 3, 0x0
    .4byte 0x4800021C # b .L_80166800
L_801665E8:
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80166614
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_80166614
    li 3, 0x1
    .4byte 0x480001F0 # b .L_80166800
L_80166614:
    li 3, 0x0
    .4byte 0x480001E8 # b .L_80166800
L_8016661C:
    cmpwi 30, 0x4
    .4byte 0x4082004C # bne .L_8016666C
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_80166638
    li 3, 0x0
    .4byte 0x480001CC # b .L_80166800
L_80166638:
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80166664
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_80166664
    li 3, 0x1
    .4byte 0x480001A0 # b .L_80166800
L_80166664:
    li 3, 0x0
    .4byte 0x48000198 # b .L_80166800
L_8016666C:
    cmpwi 30, 0x5
    .4byte 0x4082004C # bne .L_801666BC
    lwz 0, 0x98(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80166688
    li 3, 0x0
    .4byte 0x4800017C # b .L_80166800
L_80166688:
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801666B4
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_801666B4
    li 3, 0x1
    .4byte 0x48000150 # b .L_80166800
L_801666B4:
    li 3, 0x0
    .4byte 0x48000148 # b .L_80166800
L_801666BC:
    mr 3, 27
    mr 4, 29
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3a
    .4byte 0x4182001C # beq .L_801666EC
    mr 3, 27
    mr 4, 29
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3d
    .4byte 0x40820014 # bne .L_801666FC
L_801666EC:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x238(31)
    .4byte 0x48000108 # b .L_80166800
L_801666FC:
    cmpwi 28, 0x14
    .4byte 0x40820014 # bne .L_80166714
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x238(31)
    .4byte 0x480000F0 # b .L_80166800
L_80166714:
    cmpwi 30, 0x25
    .4byte 0x40820038 # bne .L_80166750
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80166740
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80166740
    li 3, 0x1
    .4byte 0x480000C4 # b .L_80166800
L_80166740:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x238(31)
    .4byte 0x480000B4 # b .L_80166800
L_80166750:
    cmpwi 30, 0x26
    .4byte 0x40820038 # bne .L_8016678C
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8016677C
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8016677C
    li 3, 0x1
    .4byte 0x48000088 # b .L_80166800
L_8016677C:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x238(31)
    .4byte 0x48000078 # b .L_80166800
L_8016678C:
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801667B8
    cmpwi 30, 0x22
    .4byte 0x40820014 # bne .L_801667B0
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801667B8
L_801667B0:
    li 3, 0x1
    .4byte 0x4800004C # b .L_80166800
L_801667B8:
    lbz 0, 0x238(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801667CC
    li 3, 0x0
    .4byte 0x48000038 # b .L_80166800
L_801667CC:
    lbz 0, 0x238(31)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_801667FC
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0xb
    .4byte 0x40810010 # ble .L_801667FC
    li 0, 0x0
    stw 0, 0x23c(31)
    stb 0, 0x238(31)
L_801667FC:
    li 3, 0x0
L_80166800:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

