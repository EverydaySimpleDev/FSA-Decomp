/*
 * fn_801045D8(this): a second method of the fn_801042D0-class - reads
 * as its update()/tick method (survey-level, not full semantics).
 *  - Computes a smoothed target value (f31) from this->0x10, a
 *    per-variant lookup pair (lbl_80463C30, indexed by this->0x238) and
 *    constants (lbl_8049C3B8/lbl_8053C1FC/lbl_8053C208) - the SAME
 *    variant-indexed lookup convention as fn_801042D0.
 *  - Dispatches on this->0x234 (0-3), the 0/3 branches set/clear
 *    this->0x244 directly; branch 2 (this->0x234==2) is the main body,
 *    itself dispatching on this->0x245 (0/1/2):
 *    - 0: looks up a target position via fn_801EEC98/fn_8023E724
 *      (confirmed position-getter), compares against the smoothed value
 *      f31, and on a close-enough match makes a virtual call through
 *      this->vtable[slot 12] then advances this->0x245 to 1.
 *    - 1: decays this->0x240 (a timer) toward 0, clearing this->0x244
 *      once it crosses a threshold and advancing this->0x245 to 2 at a
 *      second threshold; then calls GetRoomConfigRecord/fn_802D79E8 (highlight/
 *      UI toggle family) and fn_80134DE4 (unidentified, rumble-like).
 *    - other: resets this->0x240/0x244.
 *  - If this->0x244 is set, calls fn_80239914 (confirmed message/UI
 *    draw) with a computed bounding box around this->0xc using f31.
 *  - If this->0x246 is 1 or 2, calls fn_80458FF0 (confirmed sound/effect
 *    call using the shared table lbl_8053AF80) with a per-variant index
 *    from lbl_8053AF80's own indexed table, then resets this->0x246.
 */

.section extab, "a"
.balign 4
.global etb_80005990
etb_80005990:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80005990, 8

.section extabindex, "a"
.balign 4
.global eti_80011D88
eti_80011D88:
    .4byte fn_801045D8
    .4byte 0x000002BC
    .4byte etb_80005990
.size eti_80011D88, 12

.text
.balign 4
.global fn_801045D8

fn_801045D8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    lis 6, 0x4330
    lwz 0, 0x238(3)
    lis 4, lbl_80463C30@ha
    addi 31, 4, lbl_80463C30@l
    lis 4, lbl_8049C3B8@ha
    addi 7, 4, lbl_8049C3B8@l
    slwi 8, 0, 2
    addi 4, 31, 0x220
    lha 5, 0x0(7)
    lwzx 0, 4, 8
    addi 4, 31, 0x268
    lha 7, 0x4(7)
    add 5, 5, 0
    lwz 0, 0x234(3)
    xoris 5, 5, 0x8000
    stw 6, 0x30(1)
    xoris 7, 7, 0x8000
    .4byte 0xC8829268 # lfd f4, lbl_8053C208@sda21(r0)
    stw 5, 0x34(1)
    cmpwi 0, 0x1
    .4byte 0xC062925C # lfs f3, lbl_8053C1FC@sda21(r0)
    lfd 0, 0x30(1)
    lfs 1, 0x10(3)
    fsubs 2, 0, 4
    stw 7, 0x2c(1)
    lfsx 0, 4, 8
    stw 6, 0x28(1)
    fmadds 1, 3, 2, 1
    lfd 2, 0x28(1)
    fsubs 2, 2, 4
    fadds 0, 1, 0
    fadds 31, 2, 0
    .4byte 0x4182002C # beq .L_801046A4
    .4byte 0x40800010 # bge .L_8010468C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80104698
    .4byte 0x48000140 # b .L_801047C8
L_8010468C:
    cmpwi 0, 0x3
    .4byte 0x40800138 # bge .L_801047C8
    .4byte 0x4800001C # b .L_801046B0
L_80104698:
    li 0, 0x1
    stb 0, 0x244(30)
    .4byte 0x48000128 # b .L_801047C8
L_801046A4:
    li 0, 0x0
    stb 0, 0x244(30)
    .4byte 0x4800011C # b .L_801047C8
L_801046B0:
    lbz 0, 0x245(30)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_80104740
    .4byte 0xC0029258 # lfs f0, lbl_8053C1F8@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    addi 5, 1, 0x8
    addi 6, 1, 0x10
    addi 7, 1, 0x14
    stfs 0, 0x14(1)
    addi 8, 1, 0xc
    li 9, 0x0
    li 10, 0x0
    stw 0, 0x10(1)
    stw 0, 0xc(1)
    lwz 4, 0x198(30)
    bl fn_801EEC98
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x418000CC # blt .L_801047C8
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC0029270 # lfs f0, lbl_8053C210@sda21(r0)
    fsubs 1, 1, 31
    fcmpo cr0, 1, 0
    .4byte 0x408000B4 # bge .L_801047C8
    mr 3, 30
    li 4, 0xff
    lwz 12, 0x0(30)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0x245(30)
    .4byte 0x4800008C # b .L_801047C8
L_80104740:
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_801047B8
    lfs 2, 0x240(30)
    .4byte 0xC0229274 # lfs f1, lbl_8053C214@sda21(r0)
    .4byte 0xC0029278 # lfs f0, lbl_8053C218@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x240(30)
    lfs 1, 0x240(30)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80104770
    li 0, 0x0
    stb 0, 0x244(30)
L_80104770:
    lfs 1, 0x240(30)
    .4byte 0xC002927C # lfs f0, lbl_8053C21C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8010478C
    stfs 0, 0x240(30)
    li 0, 0x2
    stb 0, 0x245(30)
L_8010478C:
    bl GetRoomConfigRecord
    lwz 4, 0x4(30)
    li 5, 0x0
    .4byte 0xC0229280 # lfs f1, lbl_8053C220@sda21(r0)
    .4byte 0xC0429258 # lfs f2, lbl_8053C1F8@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x48000014 # b .L_801047C8
L_801047B8:
    .4byte 0xC002927C # lfs f0, lbl_8053C21C@sda21(r0)
    li 0, 0x0
    stfs 0, 0x240(30)
    stb 0, 0x244(30)
L_801047C8:
    lbz 0, 0x244(30)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8010480C
    .4byte 0xC0029284 # lfs f0, lbl_8053C224@sda21(r0)
    addi 3, 1, 0x18
    lfs 2, 0xc(30)
    fsubs 1, 31, 0
    fadds 3, 0, 2
    fsubs 2, 2, 0
    fadds 0, 0, 31
    stfs 1, 0x1c(1)
    stfs 2, 0x18(1)
    stfs 3, 0x20(1)
    stfs 0, 0x24(1)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239914
L_8010480C:
    lbz 0, 0x246(30)
    cmplwi 0, 0x0
    .4byte 0x41820060 # beq .L_80104874
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80104844
    lwz 0, 0x238(30)
    addi 4, 31, 0x28c
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 5, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    bl fn_80458FF0
    .4byte 0x4800002C # b .L_8010486C
L_80104844:
    cmplwi 0, 0x2
    .4byte 0x40820024 # bne .L_8010486C
    lwz 0, 0x238(30)
    addi 4, 31, 0x28c
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 5, 0x1
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    bl fn_80458FF0
L_8010486C:
    li 0, 0x0
    stb 0, 0x246(30)
L_80104874:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

