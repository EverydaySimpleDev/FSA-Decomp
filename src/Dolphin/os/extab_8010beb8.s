/*
 * fn_8010BEB8 (0x8010BEB8-0x8010BF78, 0xC4/196 bytes) - "setup(this)" for the 6th class this
 * session found embedding the "timed-cue lookup table" shared component (base dtor not yet
 * landed at the time, but confirmed via setState/spawn/update all agreeing on the +0x244
 * embedding offset - see project_fsa_multiple_inheritance_pattern.md). Matches the
 * established setup() shape: fn_801F5938 (base step), easing-constant float block at
 * this->0x60-0x8c from lbl_8053C488/8053C47C, then that component's own init triple
 * fn_801D2608(this+0x244, lbl_80539EE0@sda21, 2)/fn_801D22DC(this+0x244, 0, 2, 0)/
 * fn_801D1F14(this+0x244, ...).
 *
 * Then calls this->vtable[slot 15] (0x3c/4 - the CONFIRMED shared virtual contract); if
 * positive, clears this->0x11d and transitions via setState(5) (fn_8010B40C).
 */

.section extab, "a"
.balign 4
.global etb_80005C10
etb_80005C10:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005C10, 8

.section extabindex, "a"
.balign 4
.global eti_8001207C
eti_8001207C:
    .4byte fn_8010BEB8
    .4byte 0x000000C4
    .4byte etb_80005C10
.size eti_8001207C, 12

.text
.balign 4
.global fn_8010BEB8

fn_8010BEB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    .4byte 0xC02294E8 # lfs f1, lbl_8053C488@sda21(r0)
    addi 3, 31, 0x244
    .4byte 0xC00294DC # lfs f0, lbl_8053C47C@sda21(r0)
    .4byte 0x388D8320 # li r4, lbl_80539EE0@sda21
    stfs 1, 0x60(31)
    li 5, 0x2
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    bl fn_801D2608
    addi 3, 31, 0x244
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02294D0 # lfs f1, lbl_8053C470@sda21(r0)
    addi 3, 31, 0x244
    bl fn_801D1F14
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810018 # ble .L_8010BF68
    li 0, 0x0
    mr 3, 31
    stb 0, 0x11d(31)
    li 4, 0x5
    bl fn_8010B40C
L_8010BF68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

