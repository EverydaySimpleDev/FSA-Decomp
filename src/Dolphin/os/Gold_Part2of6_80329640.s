/*
 * GOLD cluster, part 2/6 - the core update(). Track A (byte-exact asm)
 * + structural overview - largest function in this cluster (0xEBC =
 * 3772 bytes), an extremely PRNG-heavy reward-shower state machine.
 *
 * fn_80329640(this): dispatches on this->0x230 (state 0/1/3/4/5/6, the
 * same states setParams, part 4/6, can start in). Nearly every state
 * follows the same shape: resolve or pick a target/index, spawn one or
 * more **"RUPY"** rewards via the confirmed fn_801F8544 dispatcher
 * (the same reward-spawn primitive as fn_8032A4FC, part 3/6), then
 * compute a heavily randomized scatter velocity for each spawned rupee
 * using the confirmed global PRNG (`lbl_8053AAF8->0xb4`) - some states
 * (0, 4, 6) drive the scatter through the shared runtime sine/cosine
 * wave table (`lbl_8052EBC0`) for a circular spray pattern (using a
 * per-room enable byte from the confirmed GetRoomConfigRecord, offset 0x31df,
 * to pick between two different circular-vs-direct scatter modes),
 * while others (1, 5) use simpler direct random X/Z multipliers. State
 * 5 additionally cycles a sub-variant counter (this->0x238) through 12
 * values via a reciprocal-multiplication "mod 12" idiom. Regardless of
 * state, the function ALWAYS ends by calling the confirmed NAVI-sway
 * utility fn_801F3668 (also reused by RUSA, FIRE, and GOLD's own
 * setParams, part 4/6).
 *
 * Net effect: GOLD is a rich "rupee shower" actor - on activation it
 * spawns and scatters multiple RUPY pickups around itself using
 * elaborate PRNG-driven trajectories, distinct from (though thematically
 * similar to) the simpler rupee-burst actor already landed this session
 * (vtable lbl_804A5A30, see [[project_fsa_rupee_burst_actor_progress]]).
 */
.section extab, "a"
.balign 4
.global etb_8000DBE4
etb_8000DBE4:
    .4byte 0x408A0000
    .4byte 0x00000000
.size etb_8000DBE4, 8

.section extabindex, "a"
.balign 4
.global eti_8001D23C
eti_8001D23C:
    .4byte fn_80329640
    .4byte 0x00000EBC
    .4byte etb_8000DBE4
.size eti_8001D23C, 12

.text
.balign 4
.global fn_80329640

fn_80329640:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stmw 24, 0xf0(1)
    mr 25, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x41820A30 # beq .L_8032A09C
    .4byte 0x4080001C # bge .L_8032968C
    cmpwi 0, 0x1
    .4byte 0x4182084C # beq .L_80329EC4
    .4byte 0x40800990 # bge .L_8032A00C
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_8032969C
    .4byte 0x48000E50 # b .L_8032A4D8
L_8032968C:
    cmpwi 0, 0x5
    .4byte 0x41820D1C # beq .L_8032A3AC
    .4byte 0x40800E44 # bge .L_8032A4D8
    .4byte 0x48000BE4 # b .L_8032A27C
L_8032969C:
    lwz 3, 0x98(25)
    bl fn_801F6874
    .4byte 0xC002ED70 # lfs f0, lbl_80541D10@sda21(r0)
    lis 5, lbl_804AB630@ha
    lis 4, 0x19
    .4byte 0xCBC2EDB8 # lfd f30, lbl_80541D58@sda21(r0)
    stfs 0, 0xc0(1)
    mr 27, 3
    .4byte 0xC3E2ED78 # lfs f31, lbl_80541D18@sda21(r0)
    addi 28, 5, lbl_804AB630@l
    stfs 0, 0xbc(1)
    addi 29, 4, 0x660d
    li 26, 0x0
    lis 30, 0x4330
    stfs 0, 0xb8(1)
    .4byte 0x480007CC # b .L_80329EA4
L_803296DC:
    lwz 3, 0x240(25)
    slwi 0, 3, 2
    add 4, 28, 0
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_80329710
L_803296F4:
    lwz 0, 0x0(4)
    cmpw 5, 0
    .4byte 0x41800008 # blt .L_80329704
    .4byte 0x48000014 # b .L_80329714
L_80329704:
    subi 4, 4, 0x4
    subi 3, 3, 0x1
    .4byte 0x4200FFE8 # bdnz .L_803296F4
L_80329710:
    li 3, 0x0
L_80329714:
    stw 3, 0x240(25)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stw 30, 0xc8(1)
    lwz 0, 0xb4(4)
    mullw 3, 0, 29
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x240(25)
    srwi 4, 0, 9
    addi 0, 3, 0x1
    oris 3, 4, 0x3f80
    xoris 0, 0, 0x8000
    stw 3, 0x54(1)
    stw 0, 0xcc(1)
    lfs 0, 0x54(1)
    lfd 1, 0xc8(1)
    fsubs 0, 0, 31
    fsubs 1, 1, 30
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
    lwz 4, 0x238(25)
    mr 24, 3
    cmpwi 4, 0x14
    .4byte 0x40800020 # bge .L_80329798
    cmpwi 4, 0x5
    .4byte 0x40810014 # ble .L_80329794
    cmplwi 24, 0x2
    .4byte 0x4082000C # bne .L_80329794
    li 24, 0x1
    .4byte 0x48000008 # b .L_80329798
L_80329794:
    li 24, 0x0
L_80329798:
    slwi 0, 24, 2
    lwzx 3, 28, 0
    cmpw 4, 3
    .4byte 0x418006FC # blt .L_80329EA0
    lwz 0, 0x238(25)
    subf 0, 3, 0
    stw 0, 0x238(25)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(25)
    mr 7, 24
    addi 6, 25, 0xc
    addi 4, 4, 0x5059
    bl fn_801F8544
    mr. 31, 3
    .4byte 0x418006CC # blt .L_80329EA0
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x418206B8 # beq .L_80329EA0
    lwz 0, 0x90(25)
    extrwi. 0, 0, 4, 12
    .4byte 0x40820238 # bne .L_80329A2C
    lwz 24, 0x4(25)
    bl GetRoomConfigRecord
    addis 4, 24, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820138 # bne .L_80329948
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 0, 0x4330
    lis 3, 0x19
    stw 0, 0xd0(1)
    lwz 4, 0xb4(5)
    addi 6, 3, 0x660d
    stw 0, 0xd8(1)
    mullw 3, 4, 6
    .4byte 0xC8C2EDB8 # lfd f6, lbl_80541D58@sda21(r0)
    .4byte 0xC0A2ED78 # lfs f5, lbl_80541D18@sda21(r0)
    .4byte 0xC0E2ED7C # lfs f7, lbl_80541D1C@sda21(r0)
    .4byte 0xC062ED80 # lfs f3, lbl_80541D20@sda21(r0)
    stw 0, 0xc8(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    lwz 0, 0xb4(7)
    lwz 4, 0x23c(25)
    srwi 5, 3, 9
    mullw 3, 0, 6
    oris 5, 5, 0x3f80
    xoris 0, 4, 0x8000
    stw 5, 0x34(1)
    stw 0, 0xcc(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    lfd 1, 0xc8(1)
    stw 0, 0xb4(7)
    lfs 0, 0x34(1)
    fsubs 1, 1, 6
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(7)
    fsubs 0, 0, 5
    lwz 0, 0xb4(8)
    fmadds 4, 7, 1, 5
    lwz 4, 0x23c(25)
    srwi 5, 3, 9
    mullw 3, 0, 6
    oris 5, 5, 0x3f80
    fmadds 2, 3, 0, 3
    xoris 0, 4, 0x8000
    stw 5, 0x30(1)
    stw 0, 0xd4(1)
    addis 3, 3, 0x3c6f
    lfd 1, 0xd0(1)
    subi 0, 3, 0xca1
    lfs 0, 0x30(1)
    stw 0, 0xb4(8)
    fsubs 1, 1, 6
    fsubs 0, 0, 5
    lwz 3, 0xb4(8)
    fmuls 4, 4, 2
    lwz 0, 0x23c(25)
    fmadds 2, 7, 1, 5
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    xoris 0, 0, 0x8000
    stw 3, 0x2c(1)
    fnmsubs 1, 3, 0, 5
    stw 0, 0xdc(1)
    lfs 0, 0x2c(1)
    fmuls 2, 2, 1
    lfd 1, 0xd8(1)
    fsubs 0, 0, 5
    stfs 4, 0x90(1)
    fsubs 1, 1, 6
    stfs 2, 0x8c(1)
    fnmsubs 0, 3, 0, 5
    fmadds 1, 7, 1, 5
    fmuls 0, 1, 0
    stfs 0, 0x88(1)
    psq_l 0, 0x88(1), 0, 0
    psq_st 0, 0x3c(31), 0, 0
    stfs 4, 0x44(31)
    .4byte 0x4800055C # b .L_80329EA0
L_80329948:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 0, 0x4330
    lis 3, 0x19
    .4byte 0xC002ED70 # lfs f0, lbl_80541D10@sda21(r0)
    lwz 4, 0xb4(5)
    addi 6, 3, 0x660d
    stw 0, 0xd8(1)
    mullw 3, 4, 6
    .4byte 0xC8E2EDB8 # lfd f7, lbl_80541D58@sda21(r0)
    stw 0, 0xd0(1)
    .4byte 0xC0C2ED78 # lfs f6, lbl_80541D18@sda21(r0)
    .4byte 0xC102ED7C # lfs f8, lbl_80541D1C@sda21(r0)
    .4byte 0xC082ED80 # lfs f4, lbl_80541D20@sda21(r0)
    addis 3, 3, 0x3c6f
    stfs 0, 0x84(1)
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    lwz 0, 0xb4(7)
    lwz 4, 0x23c(25)
    srwi 5, 3, 9
    mullw 3, 0, 6
    oris 5, 5, 0x3f80
    xoris 0, 4, 0x8000
    stw 5, 0x28(1)
    stw 0, 0xdc(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    lfd 2, 0xd8(1)
    stw 0, 0xb4(7)
    lfs 1, 0x28(1)
    fsubs 2, 2, 7
    lwz 3, 0xb4(7)
    lwz 0, 0x23c(25)
    fsubs 1, 1, 6
    srwi 3, 3, 9
    fmadds 5, 8, 2, 6
    oris 3, 3, 0x3f80
    xoris 0, 0, 0x8000
    stw 3, 0x24(1)
    fnmadds 3, 4, 1, 4
    stw 0, 0xd4(1)
    lfs 1, 0x24(1)
    lfd 2, 0xd0(1)
    fmuls 3, 5, 3
    fsubs 1, 1, 6
    fsubs 2, 2, 7
    stfs 3, 0x80(1)
    fnmsubs 1, 4, 1, 6
    fmadds 2, 8, 2, 6
    fmuls 1, 2, 1
    stfs 1, 0x7c(1)
    psq_l 1, 0x7c(1), 0, 0
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000478 # b .L_80329EA0
L_80329A2C:
    cmpwi 0, 0x6
    .4byte 0x408202B0 # bne .L_80329CE0
    lwz 24, 0x4(25)
    bl GetRoomConfigRecord
    addis 4, 24, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820138 # bne .L_80329B84
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 5, 0x19
    lis 3, lbl_8052EBC0@ha
    lis 4, 0x4330
    lwz 6, 0xb4(7)
    addi 5, 5, 0x660d
    addi 0, 3, lbl_8052EBC0@l
    stw 4, 0xd0(1)
    mullw 3, 6, 5
    .4byte 0xC0C2ED78 # lfs f6, lbl_80541D18@sda21(r0)
    .4byte 0xC0E2ED84 # lfs f7, lbl_80541D24@sda21(r0)
    .4byte 0xC042ED8C # lfs f2, lbl_80541D2C@sda21(r0)
    .4byte 0xC002ED88 # lfs f0, lbl_80541D28@sda21(r0)
    .4byte 0xC882EDB8 # lfd f4, lbl_80541D58@sda21(r0)
    addis 3, 3, 0x3c6f
    .4byte 0xC0A2ED7C # lfs f5, lbl_80541D1C@sda21(r0)
    subi 3, 3, 0xca1
    .4byte 0xC062ED80 # lfs f3, lbl_80541D20@sda21(r0)
    stw 3, 0xb4(7)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(7)
    lwz 3, 0xb4(6)
    srwi 4, 4, 9
    mullw 3, 3, 5
    oris 4, 4, 0x3f80
    stw 4, 0x50(1)
    lfs 1, 0x50(1)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    fsubs 1, 1, 6
    stw 3, 0xb4(6)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    fmuls 1, 7, 1
    lwz 4, 0xb4(6)
    lwz 3, 0xb4(7)
    fctiwz 1, 1
    srwi 4, 4, 9
    mullw 3, 3, 5
    oris 4, 4, 0x3f80
    stfd 1, 0xd8(1)
    stw 4, 0x4c(1)
    addis 3, 3, 0x3c6f
    lwz 4, 0xdc(1)
    subi 3, 3, 0xca1
    lfs 1, 0x4c(1)
    stw 3, 0xb4(7)
    rlwinm 3, 4, 30, 18, 28
    fsubs 1, 1, 6
    add 5, 0, 3
    lwz 4, 0x23c(25)
    lwz 3, 0xb4(7)
    xoris 0, 4, 0x8000
    fmadds 7, 2, 1, 0
    stw 0, 0xd4(1)
    srwi 0, 3, 9
    oris 0, 0, 0x3f80
    lfs 1, 0x4(5)
    lfd 2, 0xd0(1)
    lfs 0, 0x0(5)
    fmuls 1, 7, 1
    fsubs 4, 2, 4
    stw 0, 0x20(1)
    fmuls 0, 7, 0
    lfs 2, 0x20(1)
    fmadds 5, 5, 4, 6
    fsubs 2, 2, 6
    fmuls 4, 5, 1
    fmuls 0, 5, 0
    fmadds 1, 3, 2, 3
    stfs 4, 0x74(1)
    stfs 0, 0x70(1)
    fmuls 0, 5, 1
    psq_l 1, 0x70(1), 0, 0
    stfs 0, 0x78(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000320 # b .L_80329EA0
L_80329B84:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 0, 0x4330
    lis 3, 0x19
    .4byte 0xC002ED70 # lfs f0, lbl_80541D10@sda21(r0)
    lwz 4, 0xb4(5)
    addi 6, 3, 0x660d
    stw 0, 0xd0(1)
    mullw 3, 4, 6
    .4byte 0xC102ED78 # lfs f8, lbl_80541D18@sda21(r0)
    stw 0, 0xc8(1)
    .4byte 0xC122ED80 # lfs f9, lbl_80541D20@sda21(r0)
    stw 0, 0xe0(1)
    .4byte 0xC062ED88 # lfs f3, lbl_80541D28@sda21(r0)
    addis 3, 3, 0x3c6f
    .4byte 0xC022ED90 # lfs f1, lbl_80541D30@sda21(r0)
    subi 0, 3, 0xca1
    .4byte 0xC8C2EDB8 # lfd f6, lbl_80541D58@sda21(r0)
    stw 0, 0xb4(5)
    .4byte 0xC0E2ED7C # lfs f7, lbl_80541D1C@sda21(r0)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 4, 3, 9
    stfs 0, 0x6c(1)
    mullw 3, 0, 6
    oris 0, 4, 0x3f80
    stw 0, 0x48(1)
    lfs 2, 0x48(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 2, 8
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmuls 2, 9, 2
    lwz 5, 0xb4(7)
    lwz 0, 0xb4(8)
    fctiwz 2, 2
    lwz 4, 0x23c(25)
    mullw 3, 0, 6
    srwi 0, 5, 9
    xoris 6, 4, 0x8000
    oris 7, 0, 0x3f80
    stfd 2, 0xd8(1)
    addis 4, 3, 0x3c6f
    lwz 0, 0xdc(1)
    subi 4, 4, 0xca1
    stw 4, 0xb4(8)
    cntlzw 3, 0
    subfic 0, 0, 0x1
    cntlzw 0, 0
    lwz 5, 0xb4(8)
    extrwi 3, 3, 8, 19
    stw 7, 0x1c(1)
    extrwi 0, 0, 8, 19
    lwz 4, 0x23c(25)
    subf 0, 3, 0
    srwi 3, 5, 9
    oris 5, 3, 0x3f80
    stw 6, 0xd4(1)
    xoris 3, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 5, 0x18(1)
    lfs 4, 0x1c(1)
    lfs 2, 0x18(1)
    stw 3, 0xcc(1)
    fsubs 4, 4, 8
    fsubs 2, 2, 8
    lfd 5, 0xd0(1)
    stw 0, 0xe4(1)
    fsubs 5, 5, 6
    fmadds 1, 3, 2, 1
    lfd 3, 0xc8(1)
    lfd 2, 0xe0(1)
    fnmadds 4, 9, 4, 9
    fsubs 3, 3, 6
    fsubs 2, 2, 6
    fmadds 5, 7, 5, 8
    fmadds 3, 7, 3, 8
    fmuls 1, 2, 1
    fmuls 2, 5, 4
    fmuls 1, 3, 1
    stfs 2, 0x68(1)
    stfs 1, 0x64(1)
    psq_l 1, 0x64(1), 0, 0
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x480001C4 # b .L_80329EA0
L_80329CE0:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 0, 0x4330
    lis 3, 0x19
    clrlwi 5, 27, 16
    lwz 6, 0xb4(7)
    addi 3, 3, 0x660d
    lis 4, lbl_8052EBC0@ha
    stw 5, 0xe4(1)
    mullw 6, 6, 3
    .4byte 0xC882EDC0 # lfd f4, lbl_80541D60@sda21(r0)
    addi 5, 4, lbl_8052EBC0@l
    stw 0, 0xe0(1)
    .4byte 0xC002ED78 # lfs f0, lbl_80541D18@sda21(r0)
    lfd 2, 0xe0(1)
    addis 4, 6, 0x3c6f
    fsubs 4, 2, 4
    subi 4, 4, 0xca1
    .4byte 0xC062ED98 # lfs f3, lbl_80541D38@sda21(r0)
    stw 4, 0xb4(7)
    .4byte 0xC022ED94 # lfs f1, lbl_80541D34@sda21(r0)
    lwz 4, 0xb4(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    srwi 4, 4, 9
    stw 0, 0xd0(1)
    oris 6, 4, 0x3f80
    lwz 4, 0xb4(7)
    stw 6, 0x44(1)
    mullw 4, 4, 3
    .4byte 0xC8C2EDB8 # lfd f6, lbl_80541D58@sda21(r0)
    lfs 2, 0x44(1)
    .4byte 0xC0E2ED7C # lfs f7, lbl_80541D1C@sda21(r0)
    fsubs 2, 2, 0
    stw 0, 0xc8(1)
    fnmsubs 1, 3, 2, 1
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(7)
    fadds 1, 4, 1
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 7, 0xb4(7)
    fctiwz 1, 1
    lwz 4, 0xb4(9)
    srwi 8, 7, 9
    lwz 6, 0x23c(25)
    mullw 4, 4, 3
    stfd 1, 0xd8(1)
    xoris 7, 6, 0x8000
    lwz 6, 0xdc(1)
    oris 8, 8, 0x3f80
    stw 8, 0x40(1)
    rlwinm 6, 6, 30, 18, 28
    addis 4, 4, 0x3c6f
    add 6, 5, 6
    stw 7, 0xd4(1)
    lfs 3, 0x0(6)
    subi 4, 4, 0xca1
    lfs 1, 0x40(1)
    stw 4, 0xb4(9)
    lfd 2, 0xd0(1)
    fsubs 1, 1, 0
    lwz 5, 0xb4(9)
    lwz 4, 0x23c(25)
    fsubs 2, 2, 6
    srwi 5, 5, 9
    fadds 4, 0, 1
    oris 5, 5, 0x3f80
    xoris 4, 4, 0x8000
    stw 5, 0x3c(1)
    fmadds 5, 7, 2, 0
    stw 4, 0xcc(1)
    lfs 1, 0x3c(1)
    lfd 2, 0xc8(1)
    fmuls 4, 5, 4
    fsubs 1, 1, 0
    fsubs 2, 2, 6
    fmuls 3, 4, 3
    stfs 4, 0xb8(1)
    fadds 1, 0, 1
    fmadds 2, 7, 2, 0
    stfs 3, 0xb8(1)
    fmuls 2, 2, 1
    stfs 2, 0xbc(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lfs 1, 0x4(6)
    lwz 4, 0xb4(5)
    fmuls 1, 2, 1
    stw 0, 0xe8(1)
    mullw 3, 4, 3
    .4byte 0xC082EDA0 # lfs f4, lbl_80541D40@sda21(r0)
    .4byte 0xC042ED9C # lfs f2, lbl_80541D3C@sda21(r0)
    stfs 1, 0xbc(1)
    psq_l 5, 0xb8(1), 0, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 3, 0xb4(5)
    lwz 0, 0x23c(25)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    xoris 0, 0, 0x8000
    stw 3, 0x38(1)
    stw 0, 0xec(1)
    lfs 1, 0x38(1)
    lfd 3, 0xe8(1)
    fsubs 1, 1, 0
    psq_st 5, 0x3c(31), 0, 0
    fsubs 3, 3, 6
    fmuls 1, 2, 1
    fmadds 0, 4, 3, 0
    fmadds 0, 0, 1, 2
    stfs 0, 0xc0(1)
    stfs 0, 0x44(31)
L_80329EA0:
    addi 26, 26, 0x1
L_80329EA4:
    cmpwi 26, 0x64
    .4byte 0x40800010 # bge .L_80329EB8
    lwz 5, 0x238(25)
    cmpwi 5, 0x0
    .4byte 0x4181F828 # bgt .L_803296DC
L_80329EB8:
    mr 3, 25
    bl fn_801F3668
    .4byte 0x48000618 # b .L_8032A4D8
L_80329EC4:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_80329FB4
    lwz 0, 0x234(25)
    cmpwi 0, 0x0
    .4byte 0x408200D0 # bne .L_80329FB4
    psq_l 0, 0xc(25), 0, 0
    li 0, 0xc8
    lfs 4, 0x14(25)
    li 4, 0x1d
    .4byte 0xC042ED74 # lfs f2, lbl_80541D14@sda21(r0)
    li 5, -0x1
    psq_st 0, 0xac(1), 0, 0
    .4byte 0xC002EDA4 # lfs f0, lbl_80541D44@sda21(r0)
    lfs 3, 0xac(1)
    lfs 1, 0xb0(1)
    fadds 2, 3, 2
    stfs 4, 0xb4(1)
    fadds 0, 1, 0
    stfs 2, 0xac(1)
    stfs 0, 0xb0(1)
    stw 0, 0x234(25)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lwz 3, 0x4(25)
    addi 4, 1, 0xac
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    li 5, 0x3d5
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x24c(25)
    addi 4, 1, 0xac
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    li 5, 0x3d6
    lwz 3, 0x4(25)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x250(25)
    addi 4, 1, 0xac
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    li 5, 0x3d7
    lwz 3, 0x4(25)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x254(25)
L_80329FB4:
    lwz 0, 0x234(25)
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_80329FD8
    clrlwi. 0, 0, 29
    .4byte 0x40820014 # bne .L_80329FD8
    lwz 3, 0x198(25)
    li 4, 0x0
    li 5, 0x0
    bl fn_8032A4FC
L_80329FD8:
    lwz 3, 0x234(25)
    cmpwi 3, 0x0
    .4byte 0x418204F8 # beq .L_8032A4D8
    subi 0, 3, 0x1
    stw 0, 0x234(25)
    lwz 0, 0x234(25)
    cmpwi 0, 0x0
    .4byte 0x418104E4 # bgt .L_8032A4D8
    .4byte 0xC002EDA8 # lfs f0, lbl_80541D48@sda21(r0)
    li 0, 0x2
    stfs 0, 0x244(25)
    stw 0, 0x230(25)
    .4byte 0x480004D0 # b .L_8032A4D8
L_8032A00C:
    .4byte 0xC022ED70 # lfs f1, lbl_80541D10@sda21(r0)
    addi 3, 25, 0x244
    .4byte 0xC042ED7C # lfs f2, lbl_80541D1C@sda21(r0)
    .4byte 0xC062EDAC # lfs f3, lbl_80541D4C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x244(25)
    .4byte 0xC002ED78 # lfs f0, lbl_80541D18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408004AC # bge .L_8032A4D8
    lwz 4, 0x24c(25)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8032A050
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8032A050:
    lwz 4, 0x250(25)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8032A070
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8032A070:
    lwz 4, 0x254(25)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8032A090
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8032A090:
    mr 3, 25
    bl fn_801F3668
    .4byte 0x48000440 # b .L_8032A4D8
L_8032A09C:
    li 0, 0x3e8
    stw 0, 0x108(25)
    lwz 3, 0x234(25)
    cmpwi 3, 0x0
    .4byte 0x41820044 # beq .L_8032A0F0
    subi 0, 3, 0x1
    stw 0, 0x234(25)
    lwz 0, 0x234(25)
    cmpwi 0, 0x0
    .4byte 0x41810030 # bgt .L_8032A0F0
    lwz 4, 0x24c(25)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8032A0E4
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8032A0E4:
    mr 3, 25
    bl fn_801F3668
    .4byte 0x480003EC # b .L_8032A4D8
L_8032A0F0:
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    addi 3, 25, 0x248
    .4byte 0xC042EDB0 # lfs f2, lbl_80541D50@sda21(r0)
    .4byte 0xC062EDB4 # lfs f3, lbl_80541D54@sda21(r0)
    bl fn_801F71A4
    mr 3, 25
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182002C # beq .L_8032A140
    .4byte 0xC002ED70 # lfs f0, lbl_80541D10@sda21(r0)
    stfs 0, 0x3c(25)
    stfs 0, 0x40(25)
    stfs 0, 0x44(25)
    lwz 0, 0xe4(25)
    cmpwi 0, 0x1
    .4byte 0x408203A8 # bne .L_8032A4D8
    lwz 0, 0xe8(25)
    cmpwi 0, 0x0
    .4byte 0x4182039C # beq .L_8032A4D8
L_8032A140:
    lwz 0, 0xe4(25)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032A158
    lwz 0, 0xe8(25)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_8032A168
L_8032A158:
    mr 3, 25
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820374 # beq .L_8032A4D8
L_8032A168:
    psq_l 0, 0xc(25), 0, 0
    li 3, 0x0
    lfs 5, 0x14(25)
    li 0, 0x14
    psq_st 0, 0xa0(1), 0, 0
    .4byte 0xC082ED70 # lfs f4, lbl_80541D10@sda21(r0)
    sth 3, 0x8(1)
    .4byte 0xC002ED80 # lfs f0, lbl_80541D20@sda21(r0)
    stw 0, 0xd8(25)
    lfs 2, 0xa0(1)
    stw 0, 0xdc(25)
    .4byte 0xC022ED74 # lfs f1, lbl_80541D14@sda21(r0)
    stfs 4, 0x3c(25)
    fadds 3, 2, 1
    lfs 2, 0xa4(1)
    stfs 4, 0x40(25)
    .4byte 0xC022EDA4 # lfs f1, lbl_80541D44@sda21(r0)
    stfs 4, 0x44(25)
    fadds 1, 2, 1
    stfs 0, 0x248(25)
    lwz 3, 0x238(25)
    stfs 5, 0xa8(1)
    cmpwi 3, 0x0
    stfs 3, 0xa0(1)
    stfs 1, 0xa4(1)
    .4byte 0x40820030 # bne .L_8032A1FC
    addi 3, 3, 0x1
    li 0, 0x1f4
    stw 3, 0x238(25)
    mr 3, 25
    li 4, 0xff
    li 5, 0x1
    stw 0, 0x234(25)
    lwz 12, 0x0(25)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8032A1FC:
    lfs 0, 0xc(25)
    mr 3, 25
    .4byte 0xC022ED74 # lfs f1, lbl_80541D14@sda21(r0)
    addi 5, 1, 0x8
    psq_l 3, 0xc(25), 0, 0
    li 6, 0x0
    lfs 2, 0x14(25)
    fadds 0, 0, 1
    psq_st 3, 0xa0(1), 0, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0xc(25)
    li 10, 0x0
    lfs 0, 0x10(25)
    stfs 2, 0xa8(1)
    fadds 0, 0, 1
    stfs 0, 0x10(25)
    lwz 4, 0x198(25)
    bl fn_801EEC98
    psq_l 1, 0xa0(1), 0, 0
    li 5, 0x1
    lfs 0, 0xa8(1)
    psq_st 1, 0xc(25), 0, 0
    stfs 0, 0x14(25)
    lhz 4, 0x8(1)
    lwz 3, 0x198(25)
    addis 4, 4, 0x1
    addi 0, 4, -0x8000
    clrlwi 4, 0, 16
    bl fn_8032A4FC
    .4byte 0x48000260 # b .L_8032A4D8
L_8032A27C:
    lwz 0, 0x234(25)
    cmpwi 0, 0x0
    .4byte 0x408200D0 # bne .L_8032A354
    psq_l 0, 0xc(25), 0, 0
    li 0, 0xc8
    lfs 4, 0x14(25)
    li 4, 0x1d
    .4byte 0xC042ED74 # lfs f2, lbl_80541D14@sda21(r0)
    li 5, -0x1
    psq_st 0, 0x94(1), 0, 0
    .4byte 0xC002EDA4 # lfs f0, lbl_80541D44@sda21(r0)
    lfs 3, 0x94(1)
    lfs 1, 0x98(1)
    fadds 2, 3, 2
    stfs 4, 0x9c(1)
    fadds 0, 1, 0
    stfs 2, 0x94(1)
    stfs 0, 0x98(1)
    stw 0, 0x234(25)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lwz 3, 0x4(25)
    addi 4, 1, 0x94
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    li 5, 0x3d5
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x24c(25)
    addi 4, 1, 0x94
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    li 5, 0x3d6
    lwz 3, 0x4(25)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x250(25)
    addi 4, 1, 0x94
    .4byte 0xC022ED78 # lfs f1, lbl_80541D18@sda21(r0)
    li 5, 0x3d7
    lwz 3, 0x4(25)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x254(25)
L_8032A354:
    lwz 0, 0x234(25)
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_8032A378
    clrlwi. 0, 0, 29
    .4byte 0x40820014 # bne .L_8032A378
    lwz 3, 0x198(25)
    li 4, 0x0
    li 5, 0x0
    bl fn_8032A4FC
L_8032A378:
    lwz 3, 0x234(25)
    cmpwi 3, 0x0
    .4byte 0x41820158 # beq .L_8032A4D8
    subi 0, 3, 0x1
    stw 0, 0x234(25)
    lwz 0, 0x234(25)
    cmpwi 0, 0x0
    .4byte 0x41810144 # bgt .L_8032A4D8
    .4byte 0xC002EDA8 # lfs f0, lbl_80541D48@sda21(r0)
    li 0, 0x2
    stfs 0, 0x244(25)
    stw 0, 0x230(25)
    .4byte 0x48000130 # b .L_8032A4D8
L_8032A3AC:
    lis 3, 0x2aab
    lwz 4, 0x238(25)
    subi 0, 3, 0x5555
    mulhw 0, 0, 4
    srawi 0, 0, 1
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0xc
    subf 0, 0, 4
    stw 0, 0x238(25)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(25)
    lwz 7, 0x238(25)
    addi 4, 4, 0x5059
    addi 6, 25, 0xc
    bl fn_801F8544
    mr. 24, 3
    .4byte 0x418000DC # blt .L_8032A4D0
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200C8 # beq .L_8032A4D0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC062ED78 # lfs f3, lbl_80541D18@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC042ED80 # lfs f2, lbl_80541D20@sda21(r0)
    mullw 4, 0, 6
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 0, 0, 3
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 2, 0, 2
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x60(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 3
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fnmsubs 1, 2, 1, 3
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x5c(1)
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 3
    fnmsubs 1, 2, 1, 3
    stfs 1, 0x58(1)
    psq_l 1, 0x58(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_8032A4D0:
    mr 3, 25
    bl fn_801F3668
L_8032A4D8:
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    lmw 24, 0xf0(1)
    lwz 0, 0x134(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

