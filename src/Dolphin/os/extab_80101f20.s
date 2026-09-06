/*
 * fn_80101F20(this): the fn_8010089C-class's Init()/Start() method - direct
 * counterpart to fn_801005C4 (the OTHER class's Init(), same shared-base
 * pattern documented on fn_80100D28). Branches on the same this->0x90
 * bit-15 mode flag:
 *  - Set: skips full init, just calls fn_80100A90 (this class's "pick next
 *    hit-type + find registry target" method landed earlier).
 *  - Clear: full init - resets bounds floats (this->0x60-0x6c), sets
 *    this->0x247=1/0x246=0/0x245=0, this->0x238=-1 (confirmed "no handle"
 *    sentinel, the counterpart to this->0x240 in the other class), nudges
 *    position (this->0xc/0x10) by spawn-offset constants and checkpoints
 *    it into this->0x24c/0x250/0x254, sets this->0x258, zeroes the 4-slot
 *    hit/miss counter array (this->0x25c-0x26e, matches fn_801008FC's
 *    per-target counters), draws the confirmed PRNG into this->0x244
 *    (hit-type/difficulty state), extracts a 5-bit player-index field
 *    from this->0x90 into this->0x248. Then makes a real virtual call
 *    through this->vtable[slot 13] and branches on its boolean return:
 *    success -> state 0, failure -> state 9 - the EXACT same vtable slot
 *    and success/failure state-transition pattern as fn_801005C4's Init(),
 *    strongly confirming both classes share the same base class's Init()
 *    contract (a virtual "can this target start?" hook at slot 13).
 */

.section extab, "a"
.balign 4
.global etb_80005908
etb_80005908:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005908, 8

.section extabindex, "a"
.balign 4
.global eti_80011CBC
eti_80011CBC:
    .4byte fn_80101F20
    .4byte 0x00000134
    .4byte etb_80005908
.size eti_80011CBC, 12

.text
.balign 4
.global fn_80101F20

fn_80101F20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x4182000C # beq .L_80101F48
    bl fn_80100A90
    .4byte 0x480000FC # b .L_80102040
L_80101F48:
    .4byte 0xC00291F4 # lfs f0, lbl_8053C194@sda21(r0)
    li 4, 0x1
    .4byte 0xC06291F8 # lfs f3, lbl_8053C198@sda21(r0)
    li 3, 0x0
    stfs 0, 0x60(31)
    li 0, -0x1
    .4byte 0xC04291FC # lfs f2, lbl_8053C19C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC0229200 # lfs f1, lbl_8053C1A0@sda21(r0)
    stfs 3, 0x68(31)
    .4byte 0xC00291F0 # lfs f0, lbl_8053C190@sda21(r0)
    stfs 3, 0x6c(31)
    stb 4, 0x247(31)
    stb 3, 0x246(31)
    stb 3, 0x245(31)
    stw 0, 0x238(31)
    lfs 3, 0xc(31)
    fadds 2, 3, 2
    stfs 2, 0xc(31)
    lfs 2, 0x10(31)
    fadds 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0xc(31)
    stfs 1, 0x24c(31)
    lfs 1, 0x10(31)
    stfs 1, 0x250(31)
    lfs 1, 0x14(31)
    stfs 1, 0x254(31)
    stfs 0, 0x258(31)
    stb 3, 0x25c(31)
    sth 3, 0x260(31)
    sth 3, 0x268(31)
    stb 3, 0x25d(31)
    sth 3, 0x262(31)
    sth 3, 0x26a(31)
    stb 3, 0x25e(31)
    sth 3, 0x264(31)
    sth 3, 0x26c(31)
    stb 3, 0x25f(31)
    sth 3, 0x266(31)
    sth 3, 0x26e(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    stb 3, 0x244(31)
    mr 3, 31
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stb 0, 0x248(31)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80102034
    li 3, 0x9
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x48000010 # b .L_80102040
L_80102034:
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x234(31)
L_80102040:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

