# fn_800F9C20: the rupee-container class's CONSTRUCTOR - closes the
# loop on this class's full lifecycle (ctor/dtor/loop/init/break/
# trigger/dispatch/physics/2 phase-handlers, see the running writeups
# in this file). Initializes the float-pair fields already established
# elsewhere (`this->0x60/64/68/6c` and `0x70/74/78/7c` and `0x80/84/88/
# 8c`) plus the core state fields `this->0x108/0x230/0x234/0x244/0x246/
# 0x249`, then derives `this->0x247`(item/formation-slot index) and
# `this->0x248`(mode byte) from BYTE-EXTRACTED SLICES of the universal
# spawn-parameter field `this->0x90` (bits 8-15 and 24-31) - confirms
# these two fields, read everywhere else in this class's other
# methods, are spawn-time-assigned per-instance identity, consistent
# with multiple copies of this container being spawned together as a
# formation/group with each instance knowing its own slot index.
#
# If `this->0x248==2`, sets an alternate float-pair init and computes
# the initial X/Z offset from a NEW global layout table
# `lbl_804638C0` (indexed by `this->0x247*2`) - a per-slot pre-baked
# position, distinct from the already-known `lbl_8052EBC0` anchor
# table. Otherwise (the default/common construction path), looks up
# the SAME kind of per-slot offset from ANOTHER new table
# `lbl_80463800` (indexed similarly, with a >=0x30 overflow falling
# back to that table's first entry).
#
# Accumulates a staggered start-delay `this->0x24c` by looping from
# 0 to `this->0x247` (this container's OWN formation index), adding a
# per-step increment that itself varies with the loop counter - "items
# later in the formation start their animation/count-up later,"
# matching the "distribute N items with individual offsets" idea
# already seen in `fn_800F8548`'s identity-index array.
#
# Finally rolls the CONFIRMED global PRNG (via `fn_80138A30`, NEW,
# unconfirmed, called with the player-registry singleton
# `lbl_8053AAF8` - plausibly "get active player count") to decide
# whether this instance gets a random countdown value stored in
# `this->0x23c`/`0x94` (a duration/timer pair reused throughout this
# class's other methods) or is left disabled (`this->0x23c=-1`).
.section extab, "a"
.balign 4
.global etb_800057A8
etb_800057A8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800057A8, 8

.section extabindex, "a"
.balign 4
.global eti_80011AAC
eti_80011AAC:
    .4byte fn_800F9C20
    .4byte 0x00000334
    .4byte etb_800057A8
.size eti_80011AAC, 12

.text
.balign 4
.global fn_800F9C20

fn_800F9C20:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC082908C # lfs f4, lbl_8053C02C@sda21(r0)
    stw 0, 0x34(1)
    li 0, 0x0
    .4byte 0xC0629090 # lfs f3, lbl_8053C030@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0xC0229094 # lfs f1, lbl_8053C034@sda21(r0)
    li 3, 0x4
    stfs 4, 0x70(31)
    .4byte 0xC0029008 # lfs f0, lbl_8053BFA8@sda21(r0)
    stfs 3, 0x74(31)
    stfs 1, 0x78(31)
    stfs 0, 0x7c(31)
    stw 3, 0x108(31)
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stb 0, 0x246(31)
    sth 0, 0x244(31)
    stb 0, 0x249(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 8
    stb 0, 0x247(31)
    lwz 0, 0x90(31)
    srwi 0, 0, 24
    stb 0, 0x248(31)
    lbz 0, 0x248(31)
    cmplwi 0, 0x2
    .4byte 0x408200A0 # bne .L_800F9D34
    stfs 4, 0x80(31)
    lis 4, 0x4330
    lis 5, lbl_804638C0@ha
    lis 3, 0x4
    stfs 3, 0x84(31)
    addi 5, 5, lbl_804638C0@l
    .4byte 0xC8429038 # lfd f2, lbl_8053BFD8@sda21(r0)
    addi 0, 3, 0x4
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 4, 0x60(31)
    stfs 3, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lbz 3, 0x247(31)
    stw 4, 0x10(1)
    slwi 3, 3, 2
    lfs 1, 0xc(31)
    lhax 3, 5, 3
    stw 4, 0x18(1)
    xoris 3, 3, 0x8000
    stw 3, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lbz 3, 0x247(31)
    lfs 1, 0x10(31)
    slwi 3, 3, 2
    add 3, 5, 3
    lha 3, 0x2(3)
    xoris 3, 3, 0x8000
    stw 3, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    stw 0, 0xb0(31)
    .4byte 0x48000210 # b .L_800F9F40
L_800F9D34:
    lbz 4, 0x247(31)
    cmplwi 4, 0x30
    .4byte 0x40800070 # bge .L_800F9DAC
    lis 3, lbl_80463800@ha
    lis 0, 0x4330
    clrlslwi 5, 4, 24, 2
    stw 0, 0x18(1)
    addi 4, 3, lbl_80463800@l
    .4byte 0xC8429038 # lfd f2, lbl_8053BFD8@sda21(r0)
    lhax 3, 4, 5
    lfs 1, 0xc(31)
    xoris 3, 3, 0x8000
    stw 0, 0x10(1)
    stw 3, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lbz 0, 0x247(31)
    lfs 1, 0x10(31)
    slwi 0, 0, 2
    add 3, 4, 0
    lha 0, 0x2(3)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x4800005C # b .L_800F9E04
L_800F9DAC:
    lis 4, lbl_80463800@ha
    lis 3, 0x4330
    addi 5, 4, lbl_80463800@l
    stw 3, 0x18(1)
    lha 4, 0x0(5)
    lha 0, 0x2(5)
    xoris 4, 4, 0x8000
    .4byte 0xC8429038 # lfd f2, lbl_8053BFD8@sda21(r0)
    stw 4, 0x1c(1)
    xoris 0, 0, 0x8000
    lfs 1, 0xc(31)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 0, 0, 2
    stw 3, 0x10(1)
    fadds 1, 1, 0
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_800F9E04:
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    li 0, 0x0
    li 4, 0x0
    stfs 0, 0x14(31)
    sth 0, 0x24c(31)
    .4byte 0x48000024 # b .L_800F9E3C
L_800F9E1C:
    cmplwi 0, 0x1e
    li 3, 0xa
    .4byte 0x40800008 # bge .L_800F9E2C
    subfic 3, 0, 0x28
L_800F9E2C:
    lhz 0, 0x24c(31)
    addi 4, 4, 0x1
    add 0, 0, 3
    sth 0, 0x24c(31)
L_800F9E3C:
    lbz 0, 0x247(31)
    cmpw 4, 0
    .4byte 0x4180FFD8 # blt .L_800F9E1C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x1c(1)
    .4byte 0xC8229038 # lfd f1, lbl_8053BFD8@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC042902C # lfs f2, lbl_8053BFCC@sda21(r0)
    lfd 0, 0x18(1)
    fsubs 3, 0, 1
    fcmpu cr0, 2, 3
    .4byte 0x40820018 # bne .L_800F9E8C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x23c(31)
    sth 0, 0x94(31)
    .4byte 0x480000B8 # b .L_800F9F40
L_800F9E8C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0229000 # lfs f1, lbl_8053BFA0@sda21(r0)
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
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x23c(31)
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    sth 0, 0x94(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_800F9F40
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x23c(31)
    sth 0, 0x94(31)
L_800F9F40:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

