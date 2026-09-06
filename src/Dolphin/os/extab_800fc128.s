# fn_800FC128: a "pendulum/swing" state handler for the container
# class - a rich, mostly self-contained mechanic. On the FIRST tick
# after entering this state (detected via the cached OWNER's
# `this->0x2ac` ready flag): if NOT ready, resets and bounces back to
# the earlier "waiting" state (`this->0x230=4`), marking itself
# `this->0x2ad=1`; if ready, zeroes both linked entries' velocity
# (`0x3c/0x44`, paired-single, needs `-mgekko`) and skips the rest for
# this frame.
#
# On subsequent ticks: decrements the cooldown byte, computes the
# command-slot from the event opcode (same `this->0x278`-driven
# pattern seen throughout this class), and wraps a throttle counter
# (`this->0x268`) that makes this function do its FULL body only every
# other significant tick (bailing early otherwise via the CONFIRMED
# `fn_801F3D94` gate).
#
# The full body advances two 16-bit "drift" fields (`this->0x2b2`/
# `0x2b4`) that behave like a slowly rotating angle - hitting the
# 90°/270° marks (`0x4000`/`0xc000`) plays a metronome-tick effect
# (`0x4cb`). Two countdown timers (`this->0x284`/`0x286`) gate a
# transition once both expire near the drift's midpoint: rolls the
# CONFIRMED global PRNG for a random duration and transitions to
# ANOTHER already-seen state (`this->0x27c=1`, `this->0x230=2`).
# Otherwise, the STEADY swing continues: three independent angle
# accumulators (`this->0x260`/`0x262`, the field also driven
# elsewhere) advance and are converted to a 3D offset
# (`this->0xc/0x10/0x14`) via repeated lookups into the shared anchor
# table `lbl_8052EBC0` - i.e. this state animates the item swinging on
# an arc/pendulum path rather than following physics integration like
# the fall/bounce states. Not yet cross-identified against the
# 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005810
etb_80005810:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005810, 8

.section extabindex, "a"
.balign 4
.global eti_80011B48
eti_80011B48:
    .4byte fn_800FC128
    .4byte 0x00000380
    .4byte etb_80005810
.size eti_80011B48, 12

.text
.balign 4
.global fn_800FC128

fn_800FC128:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    lbz 0, 0x2ac(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_800FC188
    li 0, 0x4
    lis 4, 0x4
    stw 0, 0xb0(31)
    li 5, 0x1
    li 6, 0x0
    li 0, 0x8
    stw 5, 0x27c(31)
    addi 4, 4, 0x5
    li 5, 0x0
    stw 6, 0x234(31)
    stw 0, 0x230(31)
    bl fn_801F0E34
    li 0, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x48000008 # b .L_800FC18C
L_800FC188:
    li 0, 0x0
L_800FC18C:
    clrlwi. 0, 0, 24
    .4byte 0x41820058 # beq .L_800FC1E8
    li 0, 0x0
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    sth 0, 0x284(31)
    sth 0, 0x286(31)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    bl SpatialRegistry_GetBase
    lwz 4, 0x288(31)
    bl fn_801F666C
    mr 30, 3
    bl SpatialRegistry_GetBase
    lwz 4, 0x28c(31)
    bl fn_801F666C
    psq_l 1, 0xc(1), 0, 0
    lfs 0, 0x14(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x480002AC # b .L_800FC490
L_800FC1E8:
    lbz 3, 0x256(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800FC1FC
    subi 0, 3, 0x1
    stb 0, 0x256(31)
L_800FC1FC:
    lbz 0, 0x278(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_800FC210
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_800FC21C
L_800FC210:
    li 0, 0x10
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_800FC224
L_800FC21C:
    li 0, 0x4
    stw 0, 0xb0(31)
L_800FC224:
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_800FC258
    addi 3, 3, 0x2000
    lis 0, 0x2
    stw 3, 0x268(31)
    lwz 3, 0x268(31)
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FC250
    li 0, 0x0
    stw 0, 0x268(31)
L_800FC250:
    li 0, 0x1
    .4byte 0x48000008 # b .L_800FC25C
L_800FC258:
    li 0, 0x0
L_800FC25C:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_800FC278
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    .4byte 0x4800021C # b .L_800FC490
L_800FC278:
    lwz 0, 0x234(31)
    cmpwi 0, 0x64
    .4byte 0x4180001C # blt .L_800FC29C
    lhz 3, 0x2b2(31)
    addi 0, 3, 0x400
    sth 0, 0x2b2(31)
    lhz 3, 0x2b4(31)
    subi 0, 3, 0x400
    sth 0, 0x2b4(31)
L_800FC29C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x14
    .4byte 0x4082000C # bne .L_800FC2B0
    li 0, 0x0
    stw 0, 0x27c(31)
L_800FC2B0:
    lhz 0, 0x2b2(31)
    cmplwi 0, 0x4000
    .4byte 0x4182000C # beq .L_800FC2C4
    cmplwi 0, 0xc000
    .4byte 0x40820018 # bne .L_800FC2D8
L_800FC2C4:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xcb
    li 5, 0x0
    bl fn_801F0E34
L_800FC2D8:
    lha 3, 0x284(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_800FC2EC
    subi 0, 3, 0x1
    sth 0, 0x284(31)
L_800FC2EC:
    lha 3, 0x286(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_800FC300
    subi 0, 3, 0x1
    sth 0, 0x286(31)
L_800FC300:
    lha 0, 0x284(31)
    cmpwi 0, 0x32
    .4byte 0x40800020 # bge .L_800FC328
    lhz 0, 0x2b2(31)
    cmplwi 0, 0x3000
    .4byte 0x40810014 # ble .L_800FC328
    cmplwi 0, 0x5000
    .4byte 0x4080000C # bge .L_800FC328
    li 0, 0x0
    sth 0, 0x284(31)
L_800FC328:
    lha 0, 0x286(31)
    cmpwi 0, 0x32
    .4byte 0x40800020 # bge .L_800FC350
    lhz 0, 0x2b4(31)
    cmplwi 0, 0x3000
    .4byte 0x40810014 # ble .L_800FC350
    cmplwi 0, 0x5000
    .4byte 0x4080000C # bge .L_800FC350
    li 0, 0x0
    sth 0, 0x286(31)
L_800FC350:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    lha 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_800FC408
    lha 0, 0x286(31)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_800FC408
    li 0, 0x1
    lis 3, 0x19
    stw 0, 0x27c(31)
    li 4, 0x2
    lis 0, 0x4330
    addi 3, 3, 0x660d
    stw 4, 0x230(31)
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC06290D8 # lfs f3, lbl_8053C078@sda21(r0)
    lwz 4, 0xb4(5)
    stw 0, 0x20(1)
    mullw 3, 4, 3
    .4byte 0xC8229038 # lfd f1, lbl_8053BFD8@sda21(r0)
    .4byte 0xC08290F0 # lfs f4, lbl_8053C090@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 0, 2, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fadds 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    stw 0, 0x234(31)
L_800FC408:
    lhz 4, 0x260(31)
    lis 3, lbl_8052EBC0@ha
    addi 6, 3, lbl_8052EBC0@l
    .4byte 0xC0829054 # lfs f4, lbl_8053BFF4@sda21(r0)
    addi 0, 4, 0x200
    .4byte 0xC06290D8 # lfs f3, lbl_8053C078@sda21(r0)
    sth 0, 0x260(31)
    mr 3, 31
    .4byte 0xC04290A8 # lfs f2, lbl_8053C048@sda21(r0)
    li 4, 0x1
    lhz 0, 0x260(31)
    lfs 0, 0x25c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 6, 0
    fmadds 0, 4, 1, 0
    stfs 0, 0x14(31)
    lhz 5, 0x262(31)
    addi 0, 5, 0xb0
    sth 0, 0x262(31)
    lhz 0, 0x262(31)
    lfs 0, 0x23c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 6, 0
    fmadds 0, 3, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x262(31)
    lfs 0, 0x240(31)
    rlwinm 0, 0, 30, 18, 28
    add 5, 6, 0
    lfs 1, 0x4(5)
    fmadds 0, 2, 1, 0
    fsubs 0, 0, 2
    stfs 0, 0x10(31)
    bl fn_801F3D94
L_800FC490:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

