.section extab, "a"
.balign 4
.global etb_8000A098
etb_8000A098:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_8000A098, 8

.section extabindex, "a"
.balign 4
.global eti_80017C2C
eti_80017C2C:
    .4byte fn_80212288
    .4byte 0x000004D8
    .4byte etb_8000A098
.size eti_80017C2C, 12

.text
.balign 4
.global fn_80212288

# fn_80212288(this) - RUSA's real setParams (see
# project_fsa_rusa_actor_progress.md for the full actor picture).
# Chains the ALREADY-CONFIRMED shared base setParams `fn_801D0ED0` (see
# extab_801d0ed0.s), then decodes a densely packed spawn-parameter word
# `this->0x90` into: a clamped 0-2 "type" (`0x2a8`), a clamped 0-4
# "sub-variant" (`0x2ac`), a 3-bit flag byte (`0x2bc`), a 5-bit field
# (`0x2b4`), another 5-bit field (`0x2b0`), and sets/clears individual
# flag bits in `this->0x230` from individual bits of `0x90`. Picks a
# facing-direction offset pair (`this->0x390/0x394`) from one of 3
# lookup-table rows keyed by `type`, and separately a second pair
# (`0x3a4/0x3a8`) keyed by a different 2-bit field of `0x90`. Initializes
# a small local anim/bounding-rect block (`0x60-0x8c`) from those
# offsets, resets a 1000-tick timer (`0x108`, mirrored to `0x244`),
# and sets initial color/tint to full (`0x54/0x58/0x5c`).
#
# If `this->0x2b8` (a tracked target-ID field, decoded from `0x90` bits
# 12-16) is nonzero: calls the CONFIRMED `GetRoomConfigRecord()` + `fn_802D8050`
# pair to mark that ID as HIGHLIGHTED (the same "highlight toggle" idiom
# used elsewhere, e.g. extab_80103a90.s).
#
# If flag bit 0x20000 of `0x230` is set: spawns a child "ARIJ" actor
# (code 0x4152494A = "ARIJ", the ALREADY-DECOMPILED actor from
# project_fsa_final_6_actors_batch.md) via the CONFIRMED actor dispatcher
# `fn_801F9484`, at RUSA's own position, storing the handle at
# `this->0x388`. If the spawn is valid (`fn_801F666C`): on
# sub-variant==3, calls `fn_80212F5C` (a "reset to falling/drop" state
# initializer - snapshots an anchor position, sets active+visible flags,
# resets the timer, resets tint, and scales 4 stored velocity components
# by the tint); on sub-variant==0, if the spawned ARIJ handle is still
# valid, calls `fn_80212ECC` (picks a behavior state via `fn_80213774`
# based on another flag bit / the current state). This is the concrete
# spawn side of the relationship already inferred from ARIJ's own
# onRecoverFromHit override (`fn_80212FF4`, which notifies a tracked
# actor via registry lookup) - RUSA is (at least one of) the actor that
# relationship refers to.
#
# Computes a facing-dependent velocity pair (`0x39c/0x3a0`) from the
# direction offsets, depending on sub-variant==4 vs other.
#
# Registers itself into the NEW "active RUSA instances" array
# (`lbl_804CCDB8`, via `RusaRegistry_GetOrInit`+`RusaRegistry_Register`, see
# extab_80212ac0.s) keyed by `this->0x198`.
#
# Finally, if the initial state differs from the default tint/color
# (`0x248 != 0` and color != full and != `0x398`): looks up a global
# stats/scene-manager singleton (`fn_801902C0`) and, if its counter at
# `0x4a8` is below 10, records a 0x24-byte entry (position + color) into
# a table at `singleton+0x340` and increments the counter - a "log this
# spawn for some kind of tracked-events list" side effect (max 10
# entries), of unclear ultimate consumer.
fn_80212288:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stfd 29, 0x10(1)
    psq_st 29, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 29
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_802122D4
    li 0, 0x2
    .4byte 0x48000010 # b .L_802122E0
L_802122D4:
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802122E0
    li 0, 0x0
L_802122E0:
    stw 0, 0x2a8(31)
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_80212320
    .4byte 0x40800010 # bge .L_80212300
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021230C
    .4byte 0x48000048 # b .L_80212344
L_80212300:
    cmpwi 0, 0x3
    .4byte 0x40800040 # bge .L_80212344
    .4byte 0x4800002C # b .L_80212334
L_8021230C:
    .4byte 0xC022CB74 # lfs f1, lbl_8053FB14@sda21(r0)
    .4byte 0xC002CB64 # lfs f0, lbl_8053FB04@sda21(r0)
    stfs 1, 0x390(31)
    stfs 0, 0x394(31)
    .4byte 0x48000028 # b .L_80212344
L_80212320:
    .4byte 0xC022CB70 # lfs f1, lbl_8053FB10@sda21(r0)
    .4byte 0xC002CB84 # lfs f0, lbl_8053FB24@sda21(r0)
    stfs 1, 0x390(31)
    stfs 0, 0x394(31)
    .4byte 0x48000014 # b .L_80212344
L_80212334:
    .4byte 0xC022CB88 # lfs f1, lbl_8053FB28@sda21(r0)
    .4byte 0xC002CB8C # lfs f0, lbl_8053FB2C@sda21(r0)
    stfs 1, 0x390(31)
    stfs 0, 0x394(31)
L_80212344:
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 28
    .4byte 0x41820010 # beq .L_8021235C
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
L_8021235C:
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820010 # beq .L_80212374
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_80212374:
    lwz 0, 0x90(31)
    extrwi 0, 0, 3, 24
    stb 0, 0x2bc(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 20
    cmpwi 0, 0x4
    .4byte 0x4081000C # ble .L_80212398
    li 0, 0x4
    .4byte 0x48000010 # b .L_802123A4
L_80212398:
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802123A4
    li 0, 0x0
L_802123A4:
    stw 0, 0x2ac(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 18
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_802123DC
    .4byte 0x40800038 # bge .L_802123F0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802123C8
    .4byte 0x4800002C # b .L_802123F0
L_802123C8:
    .4byte 0xC022CB90 # lfs f1, lbl_8053FB30@sda21(r0)
    .4byte 0xC002CB94 # lfs f0, lbl_8053FB34@sda21(r0)
    stfs 1, 0x3a4(31)
    stfs 0, 0x3a8(31)
    .4byte 0x48000028 # b .L_80212400
L_802123DC:
    .4byte 0xC022CB98 # lfs f1, lbl_8053FB38@sda21(r0)
    .4byte 0xC002CB9C # lfs f0, lbl_8053FB3C@sda21(r0)
    stfs 1, 0x3a4(31)
    stfs 0, 0x3a8(31)
    .4byte 0x48000014 # b .L_80212400
L_802123F0:
    .4byte 0xC022CB70 # lfs f1, lbl_8053FB10@sda21(r0)
    .4byte 0xC002CB74 # lfs f0, lbl_8053FB14@sda21(r0)
    stfs 1, 0x3a4(31)
    stfs 0, 0x3a8(31)
L_80212400:
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 6
    .4byte 0x41820010 # beq .L_80212418
    lwz 0, 0x230(31)
    oris 0, 0, 0x1
    stw 0, 0x230(31)
L_80212418:
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 5
    .4byte 0x41820010 # beq .L_80212430
    lwz 0, 0x230(31)
    ori 0, 0, 0x8000
    stw 0, 0x230(31)
L_80212430:
    lwz 0, 0x90(31)
    li 5, 0x0
    .4byte 0xC042CB74 # lfs f2, lbl_8053FB14@sda21(r0)
    li 4, 0x2
    extrwi 0, 0, 5, 12
    .4byte 0xC022CBA0 # lfs f1, lbl_8053FB40@sda21(r0)
    stw 0, 0x2b8(31)
    li 3, 0x3e8
    li 0, 0x1
    lwz 6, 0x90(31)
    extrwi 6, 6, 5, 7
    stw 6, 0x2b4(31)
    lwz 6, 0x90(31)
    srwi 6, 6, 27
    stw 6, 0x2b0(31)
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 5, 0xb0(31)
    stw 4, 0x98(31)
    lwz 4, 0x230(31)
    ori 4, 4, 0x380
    stw 4, 0x230(31)
    stw 3, 0x108(31)
    lwz 3, 0x108(31)
    stw 3, 0x244(31)
    stb 0, 0x194(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_80212548
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820020 # beq .L_80212504
    li 0, 0x5
    stw 0, 0x248(31)
    lfs 0, 0x394(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
    .4byte 0x4800001C # b .L_8021251C
L_80212504:
    li 0, 0x3
    stw 0, 0x248(31)
    lfs 0, 0x390(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
L_8021251C:
    lwz 30, 0x2b8(31)
    cmpwi 30, 0x0
    .4byte 0x41820018 # beq .L_8021253C
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_8021253C:
    .4byte 0xC002CB74 # lfs f0, lbl_8053FB14@sda21(r0)
    stfs 0, 0x398(31)
    .4byte 0x48000018 # b .L_8021255C
L_80212548:
    stw 5, 0x248(31)
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
L_8021255C:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x24c(31)
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820088 # beq .L_80212608
    bl SpatialRegistry_GetBase
    lis 4, 0x4152
    lwz 5, 0x4(31)
    lwz 7, 0x198(31)
    addi 4, 4, 0x494a
    addi 6, 31, 0xc
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x388(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x388(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80212608
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x3
    .4byte 0x4182003C # beq .L_80212604
    .4byte 0x4080003C # bge .L_80212608
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_802125DC
    .4byte 0x48000030 # b .L_80212608
L_802125DC:
    lwz 30, 0x388(31)
    cmpwi 30, 0x0
    .4byte 0x41800024 # blt .L_80212608
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80212608
    bl fn_80212ECC
    .4byte 0x48000008 # b .L_80212608
L_80212604:
    bl fn_80212F5C
L_80212608:
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x4
    .4byte 0x4082006C # bne .L_8021267C
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820018 # beq .L_80212634
    .4byte 0xC022CB60 # lfs f1, lbl_8053FB00@sda21(r0)
    lfs 0, 0x394(31)
    fmuls 0, 1, 0
    stfs 0, 0x39c(31)
    .4byte 0x48000014 # b .L_80212644
L_80212634:
    .4byte 0xC022CB60 # lfs f1, lbl_8053FB00@sda21(r0)
    lfs 0, 0x390(31)
    fmuls 0, 1, 0
    stfs 0, 0x39c(31)
L_80212644:
    lfs 2, 0x39c(31)
    .4byte 0xC022CB60 # lfs f1, lbl_8053FB00@sda21(r0)
    .4byte 0xC002CBA4 # lfs f0, lbl_8053FB44@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x39c(31)
    lfs 1, 0x39c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80212668
    stfs 0, 0x39c(31)
L_80212668:
    .4byte 0xC022CB60 # lfs f1, lbl_8053FB00@sda21(r0)
    lfs 0, 0x394(31)
    fmadds 0, 1, 0, 1
    stfs 0, 0x3a0(31)
    .4byte 0x4800001C # b .L_80212694
L_8021267C:
    .4byte 0xC042CB60 # lfs f2, lbl_8053FB00@sda21(r0)
    lfs 1, 0x394(31)
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    fmuls 1, 2, 1
    stfs 1, 0x39c(31)
    stfs 0, 0x3a0(31)
L_80212694:
    bl RusaRegistry_GetOrInit
    lwz 4, 0x198(31)
    bl RusaRegistry_Register
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_802126D0
    .4byte 0xC022CB58 # lfs f1, lbl_8053FAF8@sda21(r0)
    lfs 0, 0x54(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_802126D0
    lfs 0, 0x398(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_802126D0
    li 3, 0x1
L_802126D0:
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_80212730
    lfs 29, 0x3a8(31)
    lfs 30, 0x398(31)
    lfs 31, 0x54(31)
    bl fn_801902C0
    lwz 0, 0x4a8(3)
    cmpwi 0, 0xa
    .4byte 0x40800040 # bge .L_80212730
    mulli 4, 0, 0x24
    lfs 0, 0xc(31)
    addi 4, 4, 0x340
    add 4, 3, 4
    stfs 0, 0x0(4)
    lfs 0, 0x10(31)
    stfs 0, 0x4(4)
    lfs 0, 0x14(31)
    stfs 0, 0x8(4)
    stfs 31, 0xc(4)
    stfs 30, 0x10(4)
    stfs 29, 0x14(4)
    lwz 4, 0x4a8(3)
    addi 0, 4, 0x1
    stw 0, 0x4a8(3)
L_80212730:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    psq_l 29, 0x18(1), 0, 0
    lfd 29, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x44(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
