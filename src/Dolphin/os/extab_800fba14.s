# fn_800FBA14: the "in-flight" jumptable_8049C6F0 state (7, per
# fn_800FB6E0's transition) handler - the item is airborne after a
# bounce, steering toward its target while falling. Gates on the
# CONFIRMED `fn_801F3D94(this,1)` first; if satisfied, just zeroes
# velocity/applies default gravity and returns. Otherwise re-queries
# the NEW `fn_801EEC98` clearance search (same call as
# `fn_800FB6E0`/`fn_800FBA14` share) to either nudge position toward
# the shared anchor table `lbl_8052EBC0` or toggle `this->0x238` flag
# bits, then applies gravity + paired-single position integration
# (the same idiom used throughout this class). On landing: if a
# `this->0x238` flag bit is set, resets `this->0x257=0` and calls the
# CONFIRMED `fn_800FB6E0(this,0)` to bounce again; otherwise computes
# an elapsed-time-scaled velocity and transitions to a NEW state
# (`this->0x230=5`, `this->0x234=0x19`/25 - a state/phase pairing not
# seen before). Regardless of that branch, UNCONDITIONALLY re-runs the
# exact same "re-init embedded sub-object (`this+0x290`) + register
# into the spatial system via `fn_802F601C` + `GetRoomConfigRecord`/
# `fn_802D79E8`/`fn_80134DE4` + 4-sound landing-crash burst
# (`0x4e6`-`0x4e9`) via `fn_8013CC50`" sequence ALREADY seen verbatim
# in `fn_800FB32C`'s category-0 landing path - this exact block is
# duplicated across at least 2 state handlers in this class rather
# than factored into a shared helper. Needs `-mgekko`. Not yet cross-
# identified against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005800
etb_80005800:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005800, 8

.section extabindex, "a"
.balign 4
.global eti_80011B30
eti_80011B30:
    .4byte fn_800FBA14
    .4byte 0x0000037C
    .4byte etb_80005800
.size eti_80011B30, 12

.text
.balign 4
.global fn_800FBA14

fn_800FBA14:
    stwu 1, -0x40(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    bl fn_801F3D94
    cmpwi 3, 0x1
    .4byte 0x4082001C # bne .L_800FBA50
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    .4byte 0xC002905C # lfs f0, lbl_8053BFFC@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000330 # b .L_800FBD7C
L_800FBA50:
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_800FBA84
    addi 0, 3, 0x800
    stw 0, 0x268(31)
    lwz 3, 0x268(31)
    cmplwi 3, 0x8000
    .4byte 0x41800310 # blt .L_800FBD7C
    lis 0, 0x1
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FBA84
    li 0, 0x0
    stw 0, 0x268(31)
L_800FBA84:
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x10
    stfs 0, 0x14(1)
    addi 7, 1, 0x14
    addi 8, 1, 0xc
    li 9, 0x0
    stw 0, 0x10(1)
    li 10, 0x0
    stw 0, 0xc(1)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lfs 1, 0x44(31)
    .4byte 0xC0029068 # lfs f0, lbl_8053C008@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810050 # ble .L_800FBB1C
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x4180005C # blt .L_800FBB34
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0xc(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x8(1)
    lfs 1, 0x10(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x4800001C # b .L_800FBB34
L_800FBB1C:
    lwz 0, 0x238(31)
    clrrwi 0, 0, 1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    ori 0, 0, 0x10
    stw 0, 0x238(31)
L_800FBB34:
    lfs 1, 0x44(31)
    .4byte 0xC0029040 # lfs f0, lbl_8053BFE0@sda21(r0)
    .4byte 0xC082900C # lfs f4, lbl_8053BFAC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 4
    cror eq, lt, eq
    .4byte 0x40820208 # bne .L_800FBD7C
    lwz 0, 0x238(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x4182001C # beq .L_800FBB9C
    li 0, 0x0
    mr 3, 31
    stb 0, 0x257(31)
    li 4, 0x0
    bl fn_800FB6E0
    .4byte 0x48000058 # b .L_800FBBF0
L_800FBB9C:
    lbz 5, 0x257(31)
    lis 4, 0x4330
    stw 4, 0x28(1)
    li 3, 0x5
    .4byte 0xC8429018 # lfd f2, lbl_8053BFB8@sda21(r0)
    li 0, 0x19
    stw 5, 0x2c(1)
    .4byte 0xC0629078 # lfs f3, lbl_8053C018@sda21(r0)
    lfd 0, 0x28(1)
    stw 5, 0x34(1)
    fsubs 1, 0, 2
    stw 4, 0x30(1)
    lfd 0, 0x30(1)
    fmuls 1, 3, 1
    fsubs 0, 0, 2
    stfs 0, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 4, 0x44(31)
    stfs 4, 0x14(31)
    stw 3, 0x230(31)
    stw 0, 0x234(31)
L_800FBBF0:
    psq_l 0, 0xc(31), 0, 0
    li 3, 0x1
    lfs 2, 0x14(31)
    li 0, 0x0
    psq_st 0, 0x18(1), 0, 0
    lwz 4, 0x4(31)
    lfs 0, 0x18(1)
    lfs 1, 0x1c(1)
    stfs 0, 0x290(31)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 1, 0x294(31)
    stfs 2, 0x298(31)
    stb 3, 0x29c(31)
    stfs 0, 0x2a0(31)
    sth 0, 0x2a4(31)
    stb 0, 0x2a6(31)
    stb 3, 0x29d(31)
    lbz 0, 0x29d(31)
    stfs 2, 0x20(1)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_800FBC68
    .4byte 0x40800010 # bge .L_800FBC54
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_800FBC60
    .4byte 0x48000028 # b .L_800FBC78
L_800FBC54:
    cmpwi 0, 0x3
    .4byte 0x40800020 # bge .L_800FBC78
    .4byte 0x48000014 # b .L_800FBC70
L_800FBC60:
    .4byte 0xC0229020 # lfs f1, lbl_8053BFC0@sda21(r0)
    .4byte 0x48000018 # b .L_800FBC7C
L_800FBC68:
    .4byte 0xC0229024 # lfs f1, lbl_8053BFC4@sda21(r0)
    .4byte 0x48000010 # b .L_800FBC7C
L_800FBC70:
    .4byte 0xC0229028 # lfs f1, lbl_8053BFC8@sda21(r0)
    .4byte 0x48000008 # b .L_800FBC7C
L_800FBC78:
    .4byte 0xC0229020 # lfs f1, lbl_8053BFC0@sda21(r0)
L_800FBC7C:
    cmpwi 4, 0x8
    .4byte 0x40800020 # bge .L_800FBCA0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0x290
    .4byte 0xC042902C # lfs f2, lbl_8053BFCC@sda21(r0)
    li 5, 0x2
    lwz 3, 0x20(3)
    li 6, 0x0
    bl fn_802F601C
L_800FBCA0:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC0229008 # lfs f1, lbl_8053BFA8@sda21(r0)
    .4byte 0xC042900C # lfs f2, lbl_8053BFAC@sda21(r0)
    bl fn_802D79E8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e7
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_800FBD7C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

