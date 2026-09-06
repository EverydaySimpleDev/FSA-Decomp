/*
 * fn_80101B48(this): another method of the fn_8010089C-class. Branches on
 * bit 15 of this->0x90 (a mode flag):
 *  - Set: builds a 0x60-byte stack config struct (16-slot index array
 *    0x8-0x18, defaults at 0x18-0x40 including a this->0x244-indexed
 *    override at +0x13), then calls the confirmed effect-spawn subsystem
 *    fn_801F06F0 with table lbl_80463BA0.
 *  - Clear: sets this->0x10 = this->0x250+this->0x258, then calls
 *    fn_801F06F0 with an index derived from this->0x246/0x247 (same
 *    "index*2+time+0x311" idiom fn_800FF6F8/fn_80100D28 use elsewhere).
 * Then, if this->0x230 is in {5,6,7,8}: computes a bucket index from
 * this->0x23c mod 60 into a NEW shared table lbl_8053AF18 (parallel in
 * shape to fn_800FF0C0's lbl_8053AF00 - same +0x30/+0x31/+0x32 flag-byte
 * convention), and loops over this->0x244 entries copying each per-slot
 * value (this->0x260-family, 2 bytes per slot) into lbl_8053AF18's byte
 * array (+0x2c onward) while OR-ing per-slot bits into +0x32. Reads like
 * "commit this target's per-attempt stats into a shared results/HUD
 * table" - a second sighting of the lbl_8053AFxx-style shared table
 * convention, now with its own dedicated instance for this class.
 */

.section extab, "a"
.balign 4
.global etb_800058F8
etb_800058F8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800058F8, 8

.section extabindex, "a"
.balign 4
.global eti_80011CA4
eti_80011CA4:
    .4byte fn_80101B48
    .4byte 0x000002A8
    .4byte etb_800058F8
.size eti_80011CA4, 12

.text
.balign 4
.global fn_80101B48

fn_80101B48:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820154 # beq .L_80101CB8
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80101BE0
L_80101B80:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_80101BE0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80101B80
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lbz 0, 0x244(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80101C6C
    li 0, 0x6
    stb 0, 0x13(1)
    .4byte 0x48000018 # b .L_80101C80
L_80101C6C:
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80101C80
    cmplwi 0, 0x5
    .4byte 0x41810008 # bgt .L_80101C80
    stb 0, 0x13(1)
L_80101C80:
    lwz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820154 # beq .L_80101DDC
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    lis 3, lbl_80463BA0@ha
    lbz 5, 0x246(31)
    addi 4, 3, lbl_80463BA0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x155
    addi 6, 1, 0x8
    li 7, -0x1
    bl fn_801F06F0
    .4byte 0x48000128 # b .L_80101DDC
L_80101CB8:
    lfs 2, 0x250(31)
    lis 4, lbl_80463BA0@ha
    lfs 0, 0x258(31)
    addi 4, 4, lbl_80463BA0@l
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    li 6, 0x0
    fadds 0, 2, 0
    li 7, 0x0
    fmr 2, 1
    stfs 0, 0x10(31)
    lbz 0, 0x247(31)
    lbz 5, 0x246(31)
    slwi 0, 0, 1
    add 5, 0, 5
    addi 5, 5, 0x311
    bl fn_801F06F0
    lwz 3, 0x230(31)
    cmpwi 3, 0x5
    .4byte 0x41820018 # beq .L_80101D18
    subi 0, 3, 0x6
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80101D18
    cmpwi 3, 0x8
    .4byte 0x408200C8 # bne .L_80101DDC
L_80101D18:
    lis 3, 0x8889
    lwz 6, 0x23c(31)
    subi 3, 3, 0x7777
    lis 0, 0x4330
    mulhw 3, 3, 6
    stw 0, 0x48(1)
    .4byte 0xC84291B8 # lfd f2, lbl_8053C158@sda21(r0)
    mr 8, 31
    .4byte 0xC00291B4 # lfs f0, lbl_8053C154@sda21(r0)
    li 7, 0x0
    add 0, 3, 6
    .4byte 0x806D9358 # lwz r3, lbl_8053AF18@sda21(r0)
    srawi 0, 0, 5
    li 5, 0x1
    srwi 4, 0, 31
    add 4, 0, 4
    mulli 0, 4, 0x3c
    stb 4, 0x30(3)
    .4byte 0x806D9358 # lwz r3, lbl_8053AF18@sda21(r0)
    subf 0, 0, 6
    xoris 0, 0, 0x8000
    stw 0, 0x4c(1)
    lfd 1, 0x48(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    stb 0, 0x31(3)
    .4byte 0x806D9358 # lwz r3, lbl_8053AF18@sda21(r0)
    lbz 0, 0x32(3)
    ori 0, 0, 0x10
    stb 0, 0x32(3)
    .4byte 0x48000034 # b .L_80101DD0
L_80101DA0:
    .4byte 0x80CD9358 # lwz r6, lbl_8053AF18@sda21(r0)
    slw 3, 5, 7
    addi 0, 7, 0x2c
    addi 7, 7, 0x1
    lbz 4, 0x32(6)
    clrlwi 3, 3, 24
    or 3, 4, 3
    stb 3, 0x32(6)
    lhz 4, 0x260(8)
    addi 8, 8, 0x2
    .4byte 0x806D9358 # lwz r3, lbl_8053AF18@sda21(r0)
    stbx 4, 3, 0
L_80101DD0:
    lbz 0, 0x244(31)
    cmpw 7, 0
    .4byte 0x4180FFC8 # blt .L_80101DA0
L_80101DDC:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

