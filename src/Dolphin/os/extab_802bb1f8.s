/*
 * FIRE (burning status-effect actor) cluster, part 5/9 - draw().
 * Track A (byte-exact asm) + structural overview.
 *
 * fn_802BB1F8(this): no-ops for this->0x264 (mode) 5/6. Otherwise
 * computes an orientation-sign value from this->0x268, and depending on
 * room (this->0x4) and mode (0, 3/4, or 5) registers a HUD/map marker
 * via the confirmed fn_803075AC with a marker offset (0x109 or 0xf1);
 * mode 1 additionally validates via fn_8022CCAC/fn_80230188
 * (unconfirmed) before an orientation-dependent position nudge (the
 * classic 4-direction +/- constant idiom, matching BOYO/FARY). Finally
 * spawns an ambient effect group via the confirmed
 * fn_80158B5C(lbl_8053AB10->0x2c, ...) - the same primitive
 * FARY/FLME/ARRW all use for ambient fire glow.
 */
.section extab, "a"
.balign 4
.global etb_8000C8BC
etb_8000C8BC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C8BC, 8

.section extabindex, "a"
.balign 4
.global eti_8001B694
eti_8001B694:
    .4byte fn_802BB1F8
    .4byte 0x00000270
    .4byte etb_8000C8BC
.size eti_8001B694, 12

.text
.balign 4
.global fn_802BB1F8

fn_802BB1F8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lwz 3, 0x264(3)
    cmpwi 3, 0x5
    .4byte 0x41820238 # beq .L_802BB450
    cmpwi 3, 0x6
    .4byte 0x41820230 # beq .L_802BB450
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x18(1), 0, 0
    stfs 0, 0x20(1)
    lwz 0, 0x268(31)
    lwz 4, 0x4(31)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    cmpwi 4, 0x8
    srwi 30, 0, 5
    .4byte 0x4180014C # blt .L_802BB398
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_802BB26C
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802BB26C
    cmpwi 3, 0x5
    .4byte 0x40820048 # bne .L_802BB2B0
L_802BB26C:
    li 3, 0x0
    neg 0, 30
    stw 3, 0x8(1)
    or 0, 0, 30
    srwi 7, 0, 31
    addi 5, 31, 0xc
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x1
    lwz 6, 0x26c(31)
    lwz 0, 0x270(31)
    lwz 3, 0x198(31)
    add 6, 6, 0
    addi 6, 6, 0x109
    bl fn_803075AC
    .4byte 0x480001A4 # b .L_802BB450
L_802BB2B0:
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_802BB2D8
    lwz 3, 0x260(31)
    bl fn_8022CCAC
    clrlwi. 0, 3, 24
    .4byte 0x4082018C # bne .L_802BB450
    lwz 3, 0x260(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082017C # bne .L_802BB450
L_802BB2D8:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802BB32C
    .4byte 0x40800014 # bge .L_802BB2F8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BB304
    .4byte 0x40800028 # bge .L_802BB318
    .4byte 0x4800005C # b .L_802BB350
L_802BB2F8:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_802BB350
    .4byte 0x48000040 # b .L_802BB340
L_802BB304:
    lfs 1, 0x18(1)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x18(1)
    .4byte 0x4800003C # b .L_802BB350
L_802BB318:
    lfs 1, 0x18(1)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x18(1)
    .4byte 0x48000028 # b .L_802BB350
L_802BB32C:
    lfs 1, 0x1c(1)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x1c(1)
    .4byte 0x48000014 # b .L_802BB350
L_802BB340:
    lfs 1, 0x1c(1)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
L_802BB350:
    li 3, 0x0
    neg 0, 30
    stw 3, 0x8(1)
    or 0, 0, 30
    srwi 7, 0, 31
    addi 5, 1, 0x18
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x1
    lwz 4, 0x26c(31)
    lwz 0, 0x270(31)
    lwz 3, 0x198(31)
    add 6, 4, 0
    lwz 4, 0x4(31)
    addi 6, 6, 0xf1
    bl fn_803075AC
    .4byte 0x480000BC # b .L_802BB450
L_802BB398:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_802BB404
    .4byte 0x40800070 # bge .L_802BB414
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802BB3BC
    .4byte 0x40800030 # bge .L_802BB3E0
    .4byte 0x48000060 # b .L_802BB414
    .4byte 0x4800005C # b .L_802BB414
L_802BB3BC:
    lfs 3, 0x18(1)
    .4byte 0xC042DBD8 # lfs f2, lbl_80540B78@sda21(r0)
    lfs 1, 0x1c(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    .4byte 0x48000038 # b .L_802BB414
L_802BB3E0:
    lfs 3, 0x18(1)
    .4byte 0xC042DBD8 # lfs f2, lbl_80540B78@sda21(r0)
    lfs 1, 0x1c(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    .4byte 0x48000014 # b .L_802BB414
L_802BB404:
    lfs 1, 0x1c(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x1c(1)
L_802BB414:
    li 7, 0x0
    li 0, 0x80
    stb 7, 0x14(1)
    addi 5, 1, 0x18
    lwz 4, 0x4(31)
    addi 6, 1, 0x10
    stb 7, 0x15(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0x16(1)
    .4byte 0xC022DBDC # lfs f1, lbl_80540B7C@sda21(r0)
    stb 0, 0x17(1)
    lwz 0, 0x14(1)
    stw 0, 0x10(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_802BB450:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

