/*
 * NEW ACTOR (vtable lbl_804A6708) - continuous orbit/wind-up motion,
 * called from fn_8021DC44 during states 4 and 7. Ramps a wind-up angle
 * (this->0x2bc) up or down over a fixed 120-frame (0x78) duration using
 * a smootherstep-style blend, then uses it to rotate a delta vector
 * between this->0x2c4/0x2cc (current) and this->0x2c8/0x2cc-style
 * anchor points, normalizing via a fast inverse-sqrt (frsqrte) idiom.
 * Clamps the resulting speed against a per-state min/max via a lookup
 * indexed into what is very likely a global sin/cos table
 * (lbl_8052EBC0, 8 bytes/entry - the same table fn_8021DFAC's teleport
 * setup references at +0x3000/+0x3004), then advances this->0x2c0/0x2c4
 * (the position anchor) along the rotated vector, committing into
 * this->0x2c0/0x2c4. Reads as an orbit-around-target motion with a
 * wind-up/wind-down speed ramp - consistent with a circling attacker
 * that spins up before diving in.
 */
.section extab, "a"
.balign 4
.global etb_8000A4B4
etb_8000A4B4:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000A4B4, 8

.section extabindex, "a"
.balign 4
.global eti_80018238
eti_80018238:
    .4byte fn_8021E4F8
    .4byte 0x000003D8
    .4byte etb_8000A4B4
.size eti_80018238, 12

.text
.balign 4
.global fn_8021E4F8

fn_8021E4F8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x7
    .4byte 0x41820074 # beq .L_8021E5A0
    .4byte 0x408000C8 # bge .L_8021E5F8
    cmpwi 0, 0x4
    .4byte 0x41820008 # beq .L_8021E540
    .4byte 0x480000BC # b .L_8021E5F8
L_8021E540:
    lwz 4, 0x24c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    lis 3, lbl_80539D44@ha
    subfic 0, 4, 0x78
    .4byte 0xC842CE20 # lfd f2, lbl_8053FDC0@sda21(r0)
    xoris 0, 0, 0x8000
    lfs 0, lbl_80539D44@l(3)
    stw 0, 0x34(1)
    lfd 1, 0x30(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8021E580
    .4byte 0xC002CE00 # lfs f0, lbl_8053FDA0@sda21(r0)
    stfs 0, 0x2bc(31)
    .4byte 0x4800007C # b .L_8021E5F8
L_8021E580:
    .4byte 0xC022CDBC # lfs f1, lbl_8053FD5C@sda21(r0)
    .4byte 0xC002CE00 # lfs f0, lbl_8053FDA0@sda21(r0)
    fdivs 2, 1, 2
    lfs 1, 0x2bc(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x2bc(31)
    .4byte 0x4800005C # b .L_8021E5F8
L_8021E5A0:
    lwz 4, 0x24c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    lis 3, lbl_80539D44@ha
    subfic 0, 4, 0x78
    .4byte 0xC842CE20 # lfd f2, lbl_8053FDC0@sda21(r0)
    xoris 0, 0, 0x8000
    lfs 0, lbl_80539D44@l(3)
    stw 0, 0x34(1)
    lfd 1, 0x30(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8021E5E0
    .4byte 0xC002CDBC # lfs f0, lbl_8053FD5C@sda21(r0)
    stfs 0, 0x2bc(31)
    .4byte 0x4800001C # b .L_8021E5F8
L_8021E5E0:
    .4byte 0xC002CDBC # lfs f0, lbl_8053FD5C@sda21(r0)
    lfs 1, 0x2bc(31)
    fdivs 2, 0, 2
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x2bc(31)
L_8021E5F8:
    lfs 1, 0x2c4(31)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x2cc(31)
    lfs 3, 0x2c0(31)
    fsubs 30, 1, 0
    lfs 0, 0x2c8(31)
    stfs 1, 0x24(1)
    fsubs 31, 3, 0
    .4byte 0xC022CE04 # lfs f1, lbl_8053FDA4@sda21(r0)
    fmuls 2, 30, 30
    lfs 0, lbl_80539D44@l(3)
    stfs 3, 0x20(1)
    fmadds 4, 31, 31, 2
    fmuls 0, 1, 0
    stfs 31, 0x20(1)
    stfs 30, 0x24(1)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_8021E680
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8021E658
    .4byte 0x48000024 # b .L_8021E678
L_8021E658:
    frsqrte 3, 4
    .4byte 0xC042CE08 # lfs f2, lbl_8053FDA8@sda21(r0)
    .4byte 0xC002CE0C # lfs f0, lbl_8053FDAC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_8021E678:
    fmuls 31, 31, 4
    fmuls 30, 30, 4
L_8021E680:
    lfs 0, 0x2bc(31)
    li 4, 0x0
    lwz 3, 0x2b4(31)
    fmuls 31, 31, 0
    cmpwi 3, 0x0
    fmuls 30, 30, 0
    .4byte 0x41800014 # blt .L_8021E6AC
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 14, 15
    .4byte 0x41820008 # beq .L_8021E6AC
    li 4, 0x1
L_8021E6AC:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_8021E6C4
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 29, 0x4(3)
    .4byte 0x4800000C # b .L_8021E6CC
L_8021E6C4:
    lfs 1, 0x24(31)
    lfs 29, 0x28(31)
L_8021E6CC:
    .4byte 0xC042CDBC # lfs f2, lbl_8053FD5C@sda21(r0)
    addi 3, 31, 0x2c8
    .4byte 0xC062CDB8 # lfs f3, lbl_8053FD58@sda21(r0)
    bl fn_801CD8E4
    fmr 1, 29
    .4byte 0xC042CDBC # lfs f2, lbl_8053FD5C@sda21(r0)
    .4byte 0xC062CDB8 # lfs f3, lbl_8053FD58@sda21(r0)
    addi 3, 31, 0x2cc
    bl fn_801CD8E4
    lfs 0, 0x2c8(31)
    lfs 2, 0x2cc(31)
    fadds 1, 0, 31
    stfs 0, 0x18(1)
    fadds 0, 2, 30
    stfs 2, 0x1c(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 0, 0x248(31)
    stfs 1, 0x18(1)
    cmpwi 0, 0x7
    stfs 0, 0x1c(1)
    .4byte 0x40820048 # bne .L_8021E768
    lwz 0, 0x2b4(31)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8021E744
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 14, 15
    .4byte 0x41820008 # beq .L_8021E744
    li 3, 0x1
L_8021E744:
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8021E768
    .4byte 0xC022CE10 # lfs f1, lbl_8053FDB0@sda21(r0)
    addi 3, 31, 0x2c0
    .4byte 0xC042CDBC # lfs f2, lbl_8053FD5C@sda21(r0)
    addi 4, 1, 0x28
    .4byte 0xC062CE14 # lfs f3, lbl_8053FDB4@sda21(r0)
    bl fn_801CD754
    .4byte 0x48000014 # b .L_8021E778
L_8021E768:
    lfs 0, 0x28(1)
    stfs 0, 0x2c0(31)
    lfs 0, 0x2c(1)
    stfs 0, 0x2c4(31)
L_8021E778:
    lfs 1, 0x2c0(31)
    lfs 0, 0x2c8(31)
    lfs 3, 0x2c4(31)
    fsubs 2, 1, 0
    lfs 0, 0x2cc(31)
    stfs 1, 0x10(1)
    fsubs 4, 3, 0
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    fmuls 1, 2, 2
    stfs 3, 0x14(1)
    fmadds 5, 4, 4, 1
    stfs 2, 0x10(1)
    stfs 4, 0x14(1)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8021E7BC
    .4byte 0x48000028 # b .L_8021E7E0
L_8021E7BC:
    frsqrte 3, 5
    .4byte 0xC042CE08 # lfs f2, lbl_8053FDA8@sda21(r0)
    .4byte 0xC002CE0C # lfs f0, lbl_8053FDAC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 0, 2, 0
    fmuls 5, 5, 0
L_8021E7E0:
    .4byte 0xC002CE18 # lfs f0, lbl_8053FDB8@sda21(r0)
    li 4, 0x622
    fcmpo cr0, 5, 0
    .4byte 0x4081004C # ble .L_8021E838
    .4byte 0xC002CDBC # lfs f0, lbl_8053FD5C@sda21(r0)
    .4byte 0xC022CE1C # lfs f1, lbl_8053FDBC@sda21(r0)
    fdivs 2, 0, 5
    lfs 0, 0x2bc(31)
    fmuls 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    extsh 0, 3
    cmpwi 0, 0x622
    .4byte 0x4081000C # ble .L_8021E828
    mr 3, 4
    .4byte 0x48000010 # b .L_8021E834
L_8021E828:
    cmpwi 0, 0x200
    .4byte 0x40800008 # bge .L_8021E834
    li 3, 0x200
L_8021E834:
    mr 4, 3
L_8021E838:
    lwz 0, 0x248(31)
    cmpwi 0, 0x7
    .4byte 0x4082000C # bne .L_8021E84C
    neg 0, 4
    extsh 4, 0
L_8021E84C:
    neg 0, 4
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 0, 30, 18, 28
    lfs 1, 0x2c8(31)
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x2cc(31)
    lfsx 7, 3, 0
    add 3, 3, 0
    lfs 6, 0x4(3)
    fmuls 3, 4, 7
    lfs 5, 0x10(1)
    fmuls 0, 4, 6
    stfs 1, 0x8(1)
    fmsubs 3, 5, 6, 3
    stfs 2, 0xc(1)
    fmadds 0, 5, 7, 0
    fadds 1, 1, 3
    fadds 0, 2, 0
    stfs 1, 0x2c0(31)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x2c4(31)
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 0, 0x74(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

