/*
 * fn_801D5B70(this) (0x801D5B70-0x801D5D84, 0x214/532 bytes) - called by
 * fn_801D5390's state==0xf case (extab_801d5390.s), this is ANOTHER exit-condition
 * evaluator: elapsed-time check (this->0x24c vs 0x250), then, if the CONFIRMED
 * fn_801CD2F8(this->0x4) self-ID check is true, a PRNG-gated random chance (against
 * the CONFIRMED global LCG `lbl_8053AAF8->0xb4`) that, on success, computes a
 * target-relative direction (fn_801D05F8 + fn_8023E724, the SAME pair used in
 * fn_801D5390's default path) normalized via the CONFIRMED frsqrte idiom and
 * accumulates a scaled step into this->0x5c4/0x5c8 (an impulse-style accumulator,
 * structurally similar to this session's earlier knockback/impulse-vector utility).
 * Ends by committing one of several target states (0xf/0x11/0xc/0x15/0x17) via the
 * CONFIRMED fn_801D5D84(this, newState) - now landed alongside this file
 * (extab_801d5d84.s) and finally read in full.
 */

.section extab, "a"
.balign 4
.global etb_800085F8
etb_800085F8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800085F8, 8

.section extabindex, "a"
.balign 4
.global eti_800159DC
eti_800159DC:
    .4byte fn_801D5B70
    .4byte 0x00000214
    .4byte etb_800085F8
.size eti_800159DC, 12

.text
.balign 4
.global fn_801D5B70

fn_801D5B70:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 3, 0x24c(3)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418001D8 # blt .L_801D5D6C
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820184 # beq .L_801D5D28
    lbz 0, 0x5d0(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801D5BC4
    mr 3, 31
    li 4, 0x15
    bl fn_801D5D84
    .4byte 0x480001AC # b .L_801D5D6C
L_801D5BC4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022C138 # lfs f1, lbl_8053F0D8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002C180 # lfs f0, lbl_8053F120@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800110 # bge .L_801D5D18
    .4byte 0xC022C184 # lfs f1, lbl_8053F124@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    li 30, 0x0
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x418000DC # blt .L_801D5D00
    bl fn_8023E724
    addic. 0, 31, 0x5c4
    lfs 2, 0x0(3)
    lfs 3, 0x4(3)
    li 30, 0x1
    .4byte 0x418200C4 # beq .L_801D5D00
    lfs 1, 0x10(31)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(31)
    fsubs 5, 3, 1
    .4byte 0xC022C130 # lfs f1, lbl_8053F0D0@sda21(r0)
    fsubs 4, 2, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 2, 5, 5
    fmuls 1, 1, 0
    fmadds 0, 4, 4, 2
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801D5C7C
    .4byte 0xC082C138 # lfs f4, lbl_8053F0D8@sda21(r0)
    .4byte 0xC0A2C128 # lfs f5, lbl_8053F0C8@sda21(r0)
L_801D5C7C:
    fmuls 0, 5, 5
    fmadds 6, 4, 4, 0
    fcmpo cr0, 6, 1
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801D5CCC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D5CA4
    .4byte 0x48000024 # b .L_801D5CC4
L_801D5CA4:
    frsqrte 3, 6
    .4byte 0xC042C158 # lfs f2, lbl_8053F0F8@sda21(r0)
    .4byte 0xC002C15C # lfs f0, lbl_8053F0FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_801D5CC4:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_801D5CCC:
    lfs 0, 0xc(31)
    .4byte 0xC022C188 # lfs f1, lbl_8053F128@sda21(r0)
    stfs 0, 0x5c4(31)
    fmuls 4, 4, 1
    lfs 0, 0x10(31)
    fmuls 5, 5, 1
    stfs 0, 0x5c8(31)
    lfs 0, 0x5c4(31)
    fadds 0, 0, 4
    stfs 0, 0x5c4(31)
    lfs 0, 0x5c8(31)
    fadds 0, 0, 5
    stfs 0, 0x5c8(31)
L_801D5D00:
    clrlwi. 0, 30, 24
    .4byte 0x41820014 # beq .L_801D5D18
    mr 3, 31
    li 4, 0x11
    bl fn_801D5D84
    .4byte 0x48000058 # b .L_801D5D6C
L_801D5D18:
    mr 3, 31
    li 4, 0xf
    bl fn_801D5D84
    .4byte 0x48000048 # b .L_801D5D6C
L_801D5D28:
    lbz 0, 0x5d0(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_801D5D60
    lwz 0, 0x108(31)
    cmpwi 0, 0xc
    .4byte 0x41810014 # bgt .L_801D5D50
    mr 3, 31
    li 4, 0xc
    bl fn_801D5D84
    .4byte 0x48000020 # b .L_801D5D6C
L_801D5D50:
    mr 3, 31
    li 4, 0x17
    bl fn_801D5D84
    .4byte 0x48000010 # b .L_801D5D6C
L_801D5D60:
    mr 3, 31
    li 4, 0xc
    bl fn_801D5D84
L_801D5D6C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

