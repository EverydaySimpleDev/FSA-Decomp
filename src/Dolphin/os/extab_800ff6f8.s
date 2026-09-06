/*
 * fn_800FF6F8(this): the class's main update() method (0x800FF6F8-0x80100...,
 * 0xCFC/3324 bytes, own exception vector, -mgekko for psq_l/psq_st). Same
 * class whose base destructor is fn_800FF060 and whose first method landed
 * was fn_800FF0C0. Structure:
 *  - Copies/reflows a family of this->0xc/0x10/0x14/0x60/0x64/0x68/0x6c
 *    position-like floats into stack scratch space (paired-single loads).
 *  - Calls fn_80239914(this->0x4, this->0x198), then advances a per-frame
 *    counter at this->0x234 against a byte table lbl_80539EA8 indexed by
 *    this->0x23c, resetting this->0x23c/0x234 on wrap (mod-3 counter idiom).
 *  - Dispatches on this->0x230 (state 0-9) via jumptable_8049C8AC - same
 *    "state" field convention seen on fn_800FF0C0. Each state case ends by
 *    jumping to a shared epilogue at .L_801003D4.
 *  - Repeated idiom across several states: call fn_8022FEB8/fn_8022FD8C to
 *    obtain/validate a handle into this->0x240, then guard further work on
 *    it via fn_802300EC/fn_8038AD24/fn_803865B8/fn_8037EFB4/fn_80384C58/
 *    fn_80388CAC (all unidentified handle-validity checks returning a
 *    byte/int status).
 *  - State transitions write literal next-state constants into this->0x230
 *    and reset this->0x248 (a step/frame counter) to 0.
 *  - Uses the confirmed global PRNG (lbl_8053AAF8/fn_80138A30) and the
 *    confirmed angle-from-vector utility fn_80093340 (called twice, with
 *    fneg'd direction components) to classify an angle into a 0-3 facing
 *    index stored at this->0x235, via the same 0x2000/0x6000/0xa000/0xe000
 *    16-bit-angle quadrant thresholds seen nowhere else yet (worth checking
 *    for reuse elsewhere).
 *  - One state performs a virtual call through this->vtable[0xc] (this->0x0
 *    -> +0x30, mtctr/bctrl) - a real polymorphic dispatch, not a direct bl.
 *  - Also touches a global struct via lbl_8053AB10->0x24 with fields at
 *    +0x7f4..+0x804 (a one-shot "already triggered" flag guard pattern,
 *    appears 3x identically) - likely a shared camera/event-trigger struct,
 *    not yet cross-identified.
 *  - Calls the confirmed effect-spawn subsystem entry SpatialRegistry_GetBase/
 *    fn_801F68E0/fn_801F6884 in the "state 5"/"state 8" transitions.
 * Exact per-state game-logic semantics NOT fully resolved - this banner
 * records observable structure, not a claimed full understanding. Revisit if
 * this class is identified against the actor dispatch table.
 */

.section extab, "a"
.balign 4
.global etb_800058B8
etb_800058B8:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800058B8, 8

.section extabindex, "a"
.balign 4
.global eti_80011C44
eti_80011C44:
    .4byte fn_800FF6F8
    .4byte 0x00000CFC
    .4byte etb_800058B8
.size eti_80011C44, 12

.text
.balign 4
.global fn_800FF6F8

fn_800FF6F8:
    stwu 1, -0xb0(1)
    mflr 0
    .4byte 0xC0029188 # lfs f0, lbl_8053C128@sda21(r0)
    stw 0, 0xb4(1)
    stw 31, 0xac(1)
    mr 31, 3
    addi 3, 1, 0x5c
    stw 30, 0xa8(1)
    stw 29, 0xa4(1)
    stw 28, 0xa0(1)
    psq_l 6, 0xc(31), 0, 0
    lfs 5, 0x14(31)
    lfs 1, 0x60(31)
    psq_st 6, 0x78(1), 0, 0
    stfs 1, 0x5c(1)
    lfs 2, 0x7c(1)
    lfs 4, 0x64(31)
    fsubs 0, 2, 0
    stfs 5, 0x80(1)
    stfs 4, 0x60(1)
    lfs 2, 0x68(31)
    stfs 0, 0x7c(1)
    stfs 2, 0x64(1)
    lfs 3, 0x6c(31)
    psq_st 6, 0x6c(1), 0, 0
    stfs 3, 0x68(1)
    lfs 0, 0xc(31)
    stfs 5, 0x74(1)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x5c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x64(1)
    fadds 0, 3, 2
    stfs 1, 0x60(1)
    stfs 0, 0x68(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lbz 4, 0x234(31)
    .4byte 0x386D82E8 # li r3, lbl_80539EA8@sda21
    addi 0, 4, 0x1
    stb 0, 0x234(31)
    lwz 4, 0x23c(31)
    lbz 5, 0x234(31)
    lbzx 0, 3, 4
    cmplw 5, 0
    .4byte 0x40820028 # bne .L_800FF7E0
    addi 0, 4, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_800FF7D8
    li 0, 0x0
    stw 0, 0x23c(31)
L_800FF7D8:
    li 0, 0x0
    stb 0, 0x234(31)
L_800FF7E0:
    lwz 0, 0x230(31)
    cmplwi 0, 0x9
    .4byte 0x41810BEC # bgt .L_801003D4
    lis 3, jumptable_8049C8AC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049C8AC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x240(31)
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x41800BA4 # blt .L_801003D4
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820B98 # beq .L_801003D4
    lwz 5, 0x198(31)
    addi 7, 1, 0x44
    lwz 6, 0x4(31)
    li 4, 0x26b
    psq_l 1, 0x78(1), 0, 0
    li 8, 0x0
    lfs 0, 0x80(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x4c(1)
    lwz 3, 0x240(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820B64 # beq .L_801003D4
    li 28, 0x0
L_800FF878:
    mr 3, 28
    bl fn_802308E0
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFF0 # blt .L_800FF878
    li 0, 0x1
    mr 3, 31
    stw 0, 0x230(31)
    addi 4, 1, 0x20
    addi 5, 1, 0x10
    lwz 6, 0x240(31)
    addi 6, 6, 0x1
    bl fn_801EE558
    lfs 1, 0x10(1)
    .4byte 0xC002918C # lfs f0, lbl_8053C12C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800B1C # bge .L_801003D4
    lfs 1, 0x20(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x24(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC0029190 # lfs f0, lbl_8053C130@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_800FF900
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_800FF90C
L_800FF900:
    li 0, 0x3
    stb 0, 0x235(31)
    .4byte 0x48000ACC # b .L_801003D4
L_800FF90C:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_800FF928
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_800FF928
    li 0, 0x1
    stb 0, 0x235(31)
    .4byte 0x48000AB0 # b .L_801003D4
L_800FF928:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_800FF944
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_800FF944
    li 0, 0x2
    stb 0, 0x235(31)
    .4byte 0x48000A94 # b .L_801003D4
L_800FF944:
    li 0, 0x0
    stb 0, 0x235(31)
    .4byte 0x48000A88 # b .L_801003D4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_800FF994
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x6c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x70(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x74(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_800FF994:
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x240(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820A1C # beq .L_801003D4
    lwz 3, 0x240(31)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x4182015C # beq .L_800FFB24
    .4byte 0x40800A08 # bge .L_801003D4
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_800FF9DC
    .4byte 0x480009FC # b .L_801003D4
L_800FF9DC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_800FFA0C
    lwz 3, 0x240(31)
    li 4, 0x285
    bl fn_8038470C
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
    .4byte 0x480009CC # b .L_801003D4
L_800FFA0C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x8c(1)
    mullw 3, 5, 4
    .4byte 0xC8429180 # lfd f2, lbl_8053C120@sda21(r0)
    stw 0, 0x88(1)
    .4byte 0xC0029178 # lfs f0, lbl_8053C118@sda21(r0)
    lfd 1, 0x88(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 1, 2
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    stw 0, 0x284(31)
    lwz 0, 0x284(31)
    cmpwi 0, 0x4
    .4byte 0x4082000C # bne .L_800FFA94
    li 0, 0x3
    stw 0, 0x284(31)
L_800FFA94:
    lwz 4, 0x284(31)
    lwz 3, 0x240(31)
    addi 4, 4, 0x1
    bl fn_803894BC
    lwz 3, 0x240(31)
    lwz 4, 0x260(31)
    bl fn_8038938C
    lwz 3, 0x240(31)
    li 4, 0x26c
    bl fn_8038470C
    lwz 29, 0x284(31)
    mr 28, 31
    li 30, 0x0
L_800FFAC8:
    mr 3, 30
    bl fn_802373EC
    stw 3, 0x28c(28)
    mr 3, 30
    bl fn_8023725C
    stw 3, 0x29c(28)
    mr 3, 30
    li 4, 0x0
    li 5, 0x1
    bl fn_802372F8
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_800FFAC8
    mr 3, 29
    li 4, 0x5
    li 5, 0x1
    bl fn_802372F8
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
    .4byte 0x480008B4 # b .L_801003D4
L_800FFB24:
    lwz 3, 0x240(31)
    li 4, 0x26d
    bl fn_8038470C
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
    .4byte 0x48000894 # b .L_801003D4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_800FFB88
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x6c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x70(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x74(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_800FFB88:
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x240(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820824 # beq .L_801003D4
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x230(31)
    stw 0, 0x248(31)
    bl fn_80230534
    .4byte 0x4800080C # b .L_801003D4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_800FFC10
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x6c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x70(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x74(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_800FFC10:
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x240(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182079C # beq .L_801003D4
    lwz 3, 0x284(31)
    li 4, 0x4
    li 5, 0x0
    li 0, -0x2
    stw 3, 0x240(31)
    li 3, 0x0
    stw 4, 0x230(31)
    stw 5, 0x248(31)
    lwz 4, 0x260(31)
    mulli 4, 4, 0x3c
    stw 4, 0x244(31)
    lwz 4, 0x260(31)
    mulli 4, 4, 0x3c
    stw 4, 0x24c(31)
    stb 0, 0x237(31)
    stb 5, 0x238(31)
    stw 5, 0x250(31)
    stw 5, 0x254(31)
    stw 5, 0x258(31)
    stw 5, 0x25c(31)
    stw 5, 0x260(31)
    bl fn_80230534
    lwz 3, 0x240(31)
    bl fn_802308E0
    bl fn_8022B278
    mr 3, 31
    li 4, 0x3a
    bl fn_801F0D20
    .4byte 0x80CD93C0 # lwz r6, lbl_8053AF80@sda21(r0)
    lis 3, 0x100
    addi 4, 3, 0x7
    li 5, 0x1
    lwz 0, 0x58(6)
    li 6, 0x0
    stw 0, 0x288(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    lbz 28, 0x239(31)
    cmplwi 28, 0x0
    .4byte 0x418206FC # beq .L_801003D4
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x480006E4 # b .L_801003D4
    lwz 3, 0x24c(31)
    lwz 4, 0x244(31)
    subi 0, 3, 0xb4
    cmpw 4, 0
    .4byte 0x40820018 # bne .L_800FFD1C
    lwz 3, 0x240(31)
    li 4, 0x0
    bl fn_8023061C
    li 0, -0x1
    stb 0, 0x237(31)
L_800FFD1C:
    lbz 3, 0x237(31)
    extsb. 0, 3
    .4byte 0x41800078 # blt .L_800FFD9C
    lbz 3, 0x238(31)
    addi 0, 3, 0x1
    stb 0, 0x238(31)
    lbz 0, 0x238(31)
    cmplwi 0, 0xf
    .4byte 0x40820154 # bne .L_800FFE90
    mr 3, 31
    li 4, 0x2a
    bl fn_801F0D20
    lwz 3, 0x240(31)
    li 4, 0x0
    li 5, 0x1
    bl fn_802372F8
    lbz 0, 0x237(31)
    li 4, 0x5
    li 5, 0x1
    extsb 0, 0
    stw 0, 0x240(31)
    lwz 3, 0x240(31)
    bl fn_802372F8
    lwz 3, 0x240(31)
    bl fn_802308E0
    lwz 4, 0x244(31)
    li 3, -0x2
    li 0, 0x0
    stw 4, 0x24c(31)
    stb 3, 0x237(31)
    stb 0, 0x238(31)
    .4byte 0x480000F8 # b .L_800FFE90
L_800FFD9C:
    extsb 0, 3
    cmpwi 0, -0x2
    .4byte 0x4082009C # bne .L_800FFE40
    lwz 3, 0x240(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x50(1), 0, 0
    stfs 0, 0x58(1)
    lwz 0, 0x244(31)
    clrlwi. 0, 0, 29
    .4byte 0x40820010 # bne .L_800FFDD8
    lbz 3, 0x238(31)
    addi 0, 3, 0x1
    stb 0, 0x238(31)
L_800FFDD8:
    lbz 0, 0x238(31)
    addi 4, 1, 0x50
    lwz 3, 0x240(31)
    li 6, 0xff
    clrlwi 5, 0, 30
    li 7, -0x80
    addi 5, 5, 0xbd
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lis 3, 0x8889
    lwz 4, 0x244(31)
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf 0, 0, 4
    cmpwi 0, 0x3b
    .4byte 0x40820064 # bne .L_800FFE90
    mr 3, 31
    li 4, 0x3f
    bl fn_801F0D20
    .4byte 0x48000054 # b .L_800FFE90
L_800FFE40:
    cmpwi 0, -0x1
    .4byte 0x4082004C # bne .L_800FFE90
    li 28, 0x0
    li 30, 0x0
L_800FFE50:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_800FFE84
    mr 3, 28
    bl fn_8023A3DC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_800FFE84
    lwz 0, 0x240(31)
    cmpw 0, 28
    .4byte 0x4182000C # beq .L_800FFE84
    stb 28, 0x237(31)
    stb 30, 0x238(31)
L_800FFE84:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_800FFE50
L_800FFE90:
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lbz 0, 0x237(31)
    extsb 0, 0
    cmpwi 0, -0x1
    .4byte 0x40820050 # bne .L_800FFEF8
    lwz 0, 0x240(31)
    slwi 0, 0, 2
    add 4, 31, 0
    lwz 3, 0x250(4)
    addi 0, 3, 0x1
    stw 0, 0x250(4)
    lwz 0, 0x240(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x250(3)
    cmpwi 0, 0xbb8
    .4byte 0x41800014 # blt .L_800FFEEC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80458508
    .4byte 0x48000010 # b .L_800FFEF8
L_800FFEEC:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458508
L_800FFEF8:
    lwz 3, 0x250(31)
    li 0, 0x1
    cmpwi 3, 0xe10
    .4byte 0x40820008 # bne .L_800FFF0C
    stb 0, 0x236(31)
L_800FFF0C:
    lwz 3, 0x254(31)
    cmpwi 3, 0xe10
    .4byte 0x40820008 # bne .L_800FFF1C
    stb 0, 0x236(31)
L_800FFF1C:
    lwz 3, 0x258(31)
    cmpwi 3, 0xe10
    .4byte 0x40820008 # bne .L_800FFF2C
    stb 0, 0x236(31)
L_800FFF2C:
    lwz 3, 0x25c(31)
    cmpwi 3, 0xe10
    .4byte 0x40820008 # bne .L_800FFF3C
    stb 0, 0x236(31)
L_800FFF3C:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_800FFF54
    lbz 0, 0x236(31)
    cmplwi 0, 0x0
    .4byte 0x41820484 # beq .L_801003D4
L_800FFF54:
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    li 4, 0x3b
    stw 0, 0x248(31)
    bl fn_801F0D20
    li 0, 0x2
    li 4, 0x0
    stb 0, 0x235(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458508
    .4byte 0x48000448 # b .L_801003D4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    lwz 0, 0x248(31)
    cmpwi 0, 0x32
    .4byte 0x40810418 # ble .L_801003D4
    cmpwi 3, 0x1
    .4byte 0x40820410 # bne .L_801003D4
    lwz 3, 0x240(31)
    bl fn_8022EA0C
    stw 3, 0x240(31)
    lwz 3, 0x240(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x240(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x418003D4 # blt .L_801003D4
    mr 3, 31
    bl fn_801003F4
    lwz 3, 0x240(31)
    li 4, 0x1
    bl fn_803894BC
    lwz 5, 0x198(31)
    addi 7, 1, 0x38
    lwz 6, 0x4(31)
    li 4, 0x26e
    psq_l 1, 0x78(1), 0, 0
    li 8, 0x2
    lfs 0, 0x80(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x40(1)
    lwz 3, 0x240(31)
    bl fn_8038AD24
    li 3, 0x6
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
    bl ClearPoseOverrideEligible
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 0, 0x0
    stw 0, 0x248(31)
    .4byte 0x4800036C # b .L_801003D4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x240(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x240(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x240(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x4182032C # beq .L_801003D4
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40810038 # ble .L_801000EC
    slwi 0, 0, 2
    lis 3, lbl_8049C848@ha
    add 4, 31, 0
    lwz 0, 0x270(4)
    addi 3, 3, lbl_8049C848@l
    slwi 0, 0, 2
    lwzx 5, 3, 0
    cmpwi 5, 0x0
    .4byte 0x41820014 # beq .L_801000EC
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 6, 0x0
    lwz 4, 0x260(4)
    bl fn_8043D874
L_801000EC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x248(31)
    cmpw 0, 3
    .4byte 0x40800080 # bge .L_8010017C
    slwi 0, 0, 2
    lwz 3, 0x240(31)
    add 4, 31, 0
    lwz 4, 0x264(4)
    addi 4, 4, 0x1
    bl fn_803894BC
    lwz 0, 0x248(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x274(3)
    cmpwi 0, 0x2
    .4byte 0x41820034 # beq .L_80100160
    .4byte 0x40800014 # bge .L_80100144
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80100150
    .4byte 0x4080001C # bge .L_80100158
    .4byte 0x4800002C # b .L_8010016C
L_80100144:
    cmpwi 0, 0x4
    .4byte 0x40800024 # bge .L_8010016C
    .4byte 0x4800001C # b .L_80100168
L_80100150:
    li 30, 0x36b
    .4byte 0x48000018 # b .L_8010016C
L_80100158:
    li 30, 0x36c
    .4byte 0x48000010 # b .L_8010016C
L_80100160:
    li 30, 0x36d
    .4byte 0x48000008 # b .L_8010016C
L_80100168:
    li 30, 0x36e
L_8010016C:
    lwz 3, 0x240(31)
    mr 4, 30
    bl fn_8038470C
    .4byte 0x48000020 # b .L_80100198
L_8010017C:
    lwz 3, 0x240(31)
    li 4, 0x36f
    bl fn_8038470C
    li 3, 0x7
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
L_80100198:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    .4byte 0x48000230 # b .L_801003D4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x240(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x240(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x240(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418201F0 # beq .L_801003D4
    lwz 3, 0x240(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x418201DC # beq .L_801003D4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 29, 0x0
    mr 28, 31
L_80100238:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80100258
    lwz 4, 0x28c(28)
    mr 3, 29
    lwz 5, 0x29c(28)
    bl fn_802372F8
L_80100258:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD4 # blt .L_80100238
    .4byte 0x4800016C # b .L_801003D4
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x240(31)
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4180013C # blt .L_801003D4
    lwz 5, 0x198(31)
    addi 7, 1, 0x2c
    lwz 6, 0x4(31)
    li 4, 0x370
    psq_l 1, 0x78(1), 0, 0
    li 8, 0x0
    lfs 0, 0x80(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x34(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182010C # beq .L_801003D4
    li 3, 0x9
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    stw 0, 0x248(31)
    lwz 6, 0x240(31)
    addi 6, 6, 0x1
    bl fn_801EE558
    lfs 1, 0xc(1)
    .4byte 0xC002918C # lfs f0, lbl_8053C12C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000D4 # bge .L_801003D4
    lfs 1, 0x14(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x18(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC0029190 # lfs f0, lbl_8053C130@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80100348
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80100354
L_80100348:
    li 0, 0x3
    stb 0, 0x235(31)
    .4byte 0x48000084 # b .L_801003D4
L_80100354:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80100370
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80100370
    li 0, 0x1
    stb 0, 0x235(31)
    .4byte 0x48000068 # b .L_801003D4
L_80100370:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8010038C
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8010038C
    li 0, 0x2
    stb 0, 0x235(31)
    .4byte 0x4800004C # b .L_801003D4
L_8010038C:
    li 0, 0x0
    stb 0, 0x235(31)
    .4byte 0x48000040 # b .L_801003D4
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x240(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801003D4
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
L_801003D4:
    lwz 0, 0xb4(1)
    lwz 31, 0xac(1)
    lwz 30, 0xa8(1)
    lwz 29, 0xa4(1)
    lwz 28, 0xa0(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

