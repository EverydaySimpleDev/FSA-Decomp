/*
 * fn_801DB6C8(this) (0x801DB6C8-0x801DB950, 0x288/648 bytes) - this class's
 * "chase target or free-roam" position/velocity update, called by
 * fn_801DB5C0 (extab_801db5c0.s).
 *
 * One-time init (this->0x16c==-1 sentinel): resolves the CONFIRMED
 * fn_801DAC6C() global singleton's tracked position via the CONFIRMED
 * fn_801DACAC(singleton, &buf) helper (both landed this session,
 * oscluster_801dac6c.c/extab_801dacac.s) and seeds this->0x2c4/0x2c8 (a
 * "free-roam anchor" position) and a per-frame drift into it from
 * this->0x2cc/0x2d0.
 *
 * If no target (this->0x2a8==-1): drifts the free-roam anchor by that
 * velocity each frame. Otherwise: looks up a per-target-index anchor point
 * in a 0xc-byte-stride array at this+0x1ac (indexed by this->0x2a8),
 * normalizes the delta from self position (this->0x2bc/0x2c0) via the
 * CONFIRMED frsqrte idiom (only past a distance threshold), and blends it by
 * a rate (this->0x2d4). Either way, adds the CONFIRMED "drift" velocity
 * (this->0x2b4/0x2b8, computed by fn_801DB3F0/fn_801D882C-style ramping
 * elsewhere) on top, then integrates the result into self position
 * (this->0x2bc/0x2c0) - clamping the per-frame step magnitude via a SECOND
 * frsqrte normalize against this->0x2e0 (a max-speed field).
 *
 * Finally advances a facing angle (this->0x2dc) by an angular rate
 * (this->0x2de), direction chosen by flag bit 18 of this->0x230.
 */

.section extab, "a"
.balign 4
.global etb_80008828
etb_80008828:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008828, 8

.section extabindex, "a"
.balign 4
.global eti_80015C70
eti_80015C70:
    .4byte fn_801DB6C8
    .4byte 0x00000288
    .4byte etb_80008828
.size eti_80015C70, 12

.text
.balign 4
.global fn_801DB6C8

fn_801DB6C8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x16c(3)
    cmpwi 0, -0x1
    .4byte 0x40820048 # bne .L_801DB72C
    bl fn_801DAC6C
    addi 4, 1, 0x8
    bl fn_801DACAC
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801DB72C
    lfs 0, 0x8(1)
    stfs 0, 0x2c4(31)
    lfs 0, 0xc(1)
    stfs 0, 0x2c8(31)
    lfs 1, 0x2c4(31)
    lfs 0, 0x2cc(31)
    fadds 0, 1, 0
    stfs 0, 0x2c4(31)
    lfs 1, 0x2c8(31)
    lfs 0, 0x2d0(31)
    fadds 0, 1, 0
    stfs 0, 0x2c8(31)
L_801DB72C:
    lwz 0, 0x2a8(31)
    cmpwi 0, -0x1
    .4byte 0x40820020 # bne .L_801DB754
    lfs 2, 0x2c4(31)
    lfs 1, 0x2b4(31)
    lfs 3, 0x2c8(31)
    lfs 0, 0x2b8(31)
    fadds 2, 2, 1
    fadds 3, 3, 0
    .4byte 0x480000C4 # b .L_801DB814
L_801DB754:
    mulli 4, 0, 0xc
    lfs 0, 0x2c0(31)
    lis 3, lbl_80539D44@ha
    lfs 2, 0x2bc(31)
    .4byte 0xC022C35C # lfs f1, lbl_8053F2FC@sda21(r0)
    addi 4, 4, 0x1ac
    add 4, 31, 4
    lfs 5, 0x4(4)
    lfs 4, 0x0(4)
    fsubs 7, 0, 5
    lfs 0, lbl_80539D44@l(3)
    fsubs 6, 2, 4
    fmuls 1, 1, 0
    fmuls 0, 7, 7
    fmadds 8, 6, 6, 0
    fcmpo cr0, 8, 1
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801DB7A8
    .4byte 0xC0C2C344 # lfs f6, lbl_8053F2E4@sda21(r0)
    .4byte 0xC0E2C360 # lfs f7, lbl_8053F300@sda21(r0)
    .4byte 0x4800004C # b .L_801DB7F0
L_801DB7A8:
    fcmpo cr0, 8, 1
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801DB7F0
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    fcmpo cr0, 8, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801DB7C8
    .4byte 0x48000024 # b .L_801DB7E8
L_801DB7C8:
    frsqrte 3, 8
    .4byte 0xC042C34C # lfs f2, lbl_8053F2EC@sda21(r0)
    .4byte 0xC002C364 # lfs f0, lbl_8053F304@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 8, 1, 0
    fmuls 8, 2, 0
L_801DB7E8:
    fmuls 6, 6, 8
    fmuls 7, 7, 8
L_801DB7F0:
    lfs 2, 0x2d4(31)
    lfs 1, 0x2b4(31)
    fmuls 6, 6, 2
    lfs 0, 0x2b8(31)
    fmuls 7, 7, 2
    fadds 2, 4, 6
    fadds 3, 5, 7
    fadds 2, 2, 1
    fadds 3, 3, 0
L_801DB814:
    lfs 1, 0x2c0(31)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x2bc(31)
    fsubs 5, 3, 1
    .4byte 0xC022C35C # lfs f1, lbl_8053F2FC@sda21(r0)
    fsubs 4, 2, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 2, 5, 5
    fmuls 0, 1, 0
    fmadds 6, 4, 4, 2
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x418200C8 # beq .L_801DB90C
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    lfs 7, 0x2e0(31)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801DB864
    fmr 0, 6
    .4byte 0x48000028 # b .L_801DB888
L_801DB864:
    frsqrte 3, 6
    .4byte 0xC042C34C # lfs f2, lbl_8053F2EC@sda21(r0)
    .4byte 0xC002C364 # lfs f0, lbl_8053F304@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 0, 2, 0
    fmuls 0, 6, 0
L_801DB888:
    fcmpo cr0, 0, 7
    .4byte 0x40800008 # bge .L_801DB894
    fmr 7, 0
L_801DB894:
    lis 3, lbl_80539D44@ha
    .4byte 0xC022C35C # lfs f1, lbl_8053F2FC@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801DB8EC
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801DB8C4
    .4byte 0x48000024 # b .L_801DB8E4
L_801DB8C4:
    frsqrte 3, 6
    .4byte 0xC042C34C # lfs f2, lbl_8053F2EC@sda21(r0)
    .4byte 0xC002C364 # lfs f0, lbl_8053F304@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_801DB8E4:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_801DB8EC:
    fmuls 4, 4, 7
    lfs 0, 0x2bc(31)
    fmuls 5, 5, 7
    fadds 0, 0, 4
    stfs 0, 0x2bc(31)
    lfs 0, 0x2c0(31)
    fadds 0, 0, 5
    stfs 0, 0x2c0(31)
L_801DB90C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820018 # beq .L_801DB92C
    lha 3, 0x2de(31)
    lha 0, 0x2dc(31)
    subf 0, 3, 0
    sth 0, 0x2dc(31)
    .4byte 0x48000014 # b .L_801DB93C
L_801DB92C:
    lha 3, 0x2dc(31)
    lha 0, 0x2de(31)
    add 0, 3, 0
    sth 0, 0x2dc(31)
L_801DB93C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

