/*
 * GOLD cluster, part 3/6 - reward-drop helper. Track A (byte-exact
 * asm) + structural overview.
 *
 * fn_8032A4FC(this, targetId, scatterMode): resolves targetId via the
 * confirmed SpatialRegistry_GetBase/fn_801F666C pair; if found, computes a
 * randomized angle (confirmed global PRNG) added to the target's
 * position and spawns a **"RUPY"** (0x52555059, Rupee) reward via
 * fn_801F8544 - a distinct, specialized reward-spawn dispatcher
 * (confirmed also used by the core update(), part 2/6, and setParams,
 * part 4/6). If spawned successfully: computes a scatter velocity for
 * the new rupee - a circular pattern via the shared runtime wave table
 * when scatterMode is set, or a simpler direct PRNG-driven X/Z
 * multiplier otherwise - and writes it into the spawned rupee's own
 * velocity field (+0x3c/0x44).
 */
.section extab, "a"
.balign 4
.global etb_8000DBEC
etb_8000DBEC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DBEC, 8

.section extabindex, "a"
.balign 4
.global eti_8001D248
eti_8001D248:
    .4byte fn_8032A4FC
    .4byte 0x000002BC
    .4byte etb_8000DBEC
.size eti_8001D248, 12

.text
.balign 4
.global fn_8032A4FC

fn_8032A4FC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 4
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 29, 3
    stw 28, 0x50(1)
    mr 28, 5
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820264 # beq .L_8032A798
    psq_l 1, 0xc(29), 0, 0
    lis 3, 0x19
    lfs 0, 0x14(29)
    addi 0, 3, 0x660d
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    psq_st 1, 0x38(1), 0, 0
    .4byte 0xC0C2ED78 # lfs f6, lbl_80541D18@sda21(r0)
    stfs 0, 0x40(1)
    .4byte 0xC062ED74 # lfs f3, lbl_80541D14@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC022EDA4 # lfs f1, lbl_80541D44@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC802EDC8 # lfd f0, lbl_80541D68@sda21(r0)
    .4byte 0xC0A2ED70 # lfs f5, lbl_80541D10@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 4, 0x38(1)
    srwi 0, 0, 9
    lfs 2, 0x3c(1)
    oris 0, 0, 0x3f80
    fadds 3, 4, 3
    stw 0, 0x1c(1)
    fadds 2, 2, 1
    lfs 1, 0x1c(1)
    stfs 5, 0x40(1)
    fsubs 1, 1, 6
    stfs 3, 0x38(1)
    fmul 1, 0, 1
    stfs 2, 0x3c(1)
    bl __cvt_fp2unsigned
    mr 30, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(29)
    mr 7, 30
    addi 6, 1, 0x38
    addi 4, 4, 0x5059
    bl fn_801F8544
    mr. 29, 3
    .4byte 0x418001BC # blt .L_8032A798
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201A8 # beq .L_8032A798
    clrlwi. 0, 28, 24
    .4byte 0x418200D4 # beq .L_8032A6CC
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 5, 0x19
    lis 4, lbl_8052EBC0@ha
    .4byte 0xC0A2ED78 # lfs f5, lbl_80541D18@sda21(r0)
    lwz 0, 0xb4(7)
    addi 6, 5, 0x660d
    addi 5, 4, lbl_8052EBC0@l
    .4byte 0xC082EDD4 # lfs f4, lbl_80541D74@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC022EDD0 # lfs f1, lbl_80541D70@sda21(r0)
    .4byte 0xC062ED80 # lfs f3, lbl_80541D20@sda21(r0)
    .4byte 0xC002ED9C # lfs f0, lbl_80541D3C@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    srwi 0, 0, 9
    oris 4, 0, 0x3f80
    lwz 0, 0xb4(7)
    stw 4, 0x18(1)
    mullw 4, 0, 6
    lfs 2, 0x18(1)
    fsubs 2, 2, 5
    addis 4, 4, 0x3c6f
    fnmsubs 1, 4, 2, 1
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    fctiwz 1, 1
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    stfd 1, 0x48(1)
    oris 0, 0, 0x3f80
    lwz 4, 0x4c(1)
    stw 0, 0x14(1)
    add 31, 31, 4
    rlwinm 0, 31, 30, 18, 28
    lfs 4, 0x14(1)
    add 4, 5, 0
    lfsx 2, 5, 0
    lfs 1, 0x4(4)
    fsubs 4, 4, 5
    fmuls 2, 3, 2
    fmuls 1, 3, 1
    fmadds 0, 0, 4, 0
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    psq_l 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x480000D0 # b .L_8032A798
L_8032A6CC:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC082ED78 # lfs f4, lbl_80541D18@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062EDD8 # lfs f3, lbl_80541D78@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC042ED80 # lfs f2, lbl_80541D20@sda21(r0)
    .4byte 0xC002ED9C # lfs f0, lbl_80541D3C@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 1, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x28(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fnmsubs 1, 3, 1, 2
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x24(1)
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 4
    fnmsubs 1, 3, 1, 2
    stfs 1, 0x20(1)
    psq_l 1, 0x20(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_8032A798:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

