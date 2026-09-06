/*
 * fn_8010B284 (0x8010B284-0x8010B40C, 0x188/392 bytes) - a NEW, unrelated function (not part
 * of the fn_80109534-class - only touches the base this->0x4/0xc/0x10/0x14 fields common to
 * every actor). Survey-level only.
 *
 * Loops over the 4 player/candidate slots (0-3): gets each candidate's position via the
 * CONFIRMED fn_8023E724 (position-getter). If this->0x4==8 (a type filter), also gates on
 * fn_8023DE58 (the CONFIRMED owner-match check) being false (i.e. NOT self-owned), and if so
 * calls fn_801CD150(this, &candidatePos) (new, likely an angle/heading compute - same "CD"
 * prefix family as the CONFIRMED fn_801CD950 rotate-toward call).
 *
 * Then checks whether this->0x10 (a height/Y coordinate) falls within a vertical range of
 * the candidate's Y (this->0xc adjusted by a constant lbl_8053C45C, compared against the
 * candidate's stored height). If in range, loops 0-0x18 (24 - a 24-hour/time-of-day-style
 * table?) computing an interpolated value via `fmadds` against lbl_8053C460/8053C468
 * constants (int-to-float via the 0x4330.... trick) and, once that value crosses this->0x10,
 * calls fn_80226850(this, &out) (new) and checks the resulting 16-bit value against two
 * ranges (`0x250-0x26f` or `>=0x3e7`) to set a found flag. Returns 1 if any of the 4
 * candidates satisfied all these checks, else 0 (via `cntlzw`+shift boolean idiom).
 */

.section extab, "a"
.balign 4
.global etb_80005BF0
etb_80005BF0:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_80005BF0, 8

.section extabindex, "a"
.balign 4
.global eti_8001204C
eti_8001204C:
    .4byte fn_8010B284
    .4byte 0x00000188
    .4byte etb_80005BF0
.size eti_8001204C, 12

.text
.balign 4
.global fn_8010B284

fn_8010B284:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 3
    li 31, 0x0
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
L_8010B2C8:
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    lwz 0, 0x4(28)
    cmpwi 0, 0x8
    .4byte 0x40820020 # bne .L_8010B308
    mr 3, 31
    bl fn_8023DE58
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8010B308
    addi 3, 1, 0x14
    mr 4, 3
    bl fn_801CD150
L_8010B308:
    lfs 1, 0x10(28)
    lfs 0, 0x18(1)
    fcmpo cr0, 1, 0
    .4byte 0x418100B8 # bgt .L_8010B3CC
    lfs 2, 0xc(28)
    .4byte 0xC02294BC # lfs f1, lbl_8053C45C@sda21(r0)
    lfs 3, 0x14(1)
    fsubs 0, 2, 1
    fcmpo cr0, 0, 3
    .4byte 0x418100A0 # bgt .L_8010B3CC
    fadds 0, 1, 2
    fcmpo cr0, 3, 0
    .4byte 0x41810094 # bgt .L_8010B3CC
    .4byte 0xC3C294C0 # lfs f30, lbl_8053C460@sda21(r0)
    li 29, 0x0
    .4byte 0xCBE294C8 # lfd f31, lbl_8053C468@sda21(r0)
    li 30, 0x1
    lis 31, 0x4330
L_8010B350:
    xoris 0, 30, 0x8000
    stw 31, 0x20(1)
    lfs 1, 0x10(28)
    stw 0, 0x24(1)
    lfs 0, 0x18(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 31
    fmadds 1, 30, 2, 1
    fcmpo cr0, 1, 0
    stfs 1, 0xc(1)
    cror eq, gt, eq
    .4byte 0x41820040 # beq .L_8010B3BC
    lwz 4, 0x4(28)
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3e7
    .4byte 0x40800014 # bge .L_8010B3A8
    cmplwi 0, 0x250
    .4byte 0x41800014 # blt .L_8010B3B0
    cmplwi 0, 0x26f
    .4byte 0x4181000C # bgt .L_8010B3B0
L_8010B3A8:
    li 29, 0x1
    .4byte 0x48000010 # b .L_8010B3BC
L_8010B3B0:
    addi 30, 30, 0x1
    cmpwi 30, 0x18
    .4byte 0x4081FF98 # ble .L_8010B350
L_8010B3BC:
    clrlwi 0, 29, 24
    cntlzw 0, 0
    srwi 3, 0, 5
    .4byte 0x48000014 # b .L_8010B3DC
L_8010B3CC:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FEF4 # blt .L_8010B2C8
    li 3, 0x0
L_8010B3DC:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 0, 0x64(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

