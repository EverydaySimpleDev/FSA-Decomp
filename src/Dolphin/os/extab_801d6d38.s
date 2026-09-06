/*
 * fn_801D6D38(this, deltaVec2) (0x801D6D38-0x801D6E20, 0xE8/232 bytes) - normalizes
 * a caller-supplied 2D delta via the CONFIRMED frsqrte/Newton-Raphson fast-inverse-
 * sqrt idiom (only when its magnitude exceeds a threshold), scales it by
 * `lbl_8053F168`, then calls fn_801E4AB0(this, 0x3c, 0x2000) and
 * fn_801E4AB0(this+0x14, 0x3c, 0x2000) - the SAME "trigger" call fn_801D6D08
 * makes, confirming this class embeds (at least) TWO of the shared 0x14-byte-
 * strided sub-objects directly at offset 0 and 0x14 (one per velocity axis).
 * Part of the reusable "this+0x4c4" sub-object's own utility library. Needs
 * -mgekko. Caller not yet traced.
 */

.section extab, "a"
.balign 4
.global etb_800086B4
etb_800086B4:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800086B4, 8

.section extabindex, "a"
.balign 4
.global eti_80015A60
eti_80015A60:
    .4byte fn_801D6D38
    .4byte 0x000000E8
    .4byte etb_800086B4
.size eti_80015A60, 12

.text
.balign 4
.global fn_801D6D38

fn_801D6D38:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    lfs 31, 0x4(4)
    lis 5, lbl_80539D44@ha
    lfs 1, 0x0(4)
    mr 31, 3
    fmuls 3, 31, 31
    .4byte 0xC042C1B8 # lfs f2, lbl_8053F158@sda21(r0)
    lfs 0, lbl_80539D44@l(5)
    fmadds 5, 1, 1, 3
    fmuls 0, 2, 0
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801D6D8C
    .4byte 0xC022C1B0 # lfs f1, lbl_8053F150@sda21(r0)
    .4byte 0xC3E2C1BC # lfs f31, lbl_8053F15C@sda21(r0)
    .4byte 0x4800004C # b .L_801D6DD4
L_801D6D8C:
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801D6DD4
    .4byte 0xC002C1B0 # lfs f0, lbl_8053F150@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D6DAC
    .4byte 0x48000024 # b .L_801D6DCC
L_801D6DAC:
    frsqrte 4, 5
    .4byte 0xC062C1C0 # lfs f3, lbl_8053F160@sda21(r0)
    .4byte 0xC002C1C4 # lfs f0, lbl_8053F164@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 0, 5, 2, 0
    fmuls 5, 3, 0
L_801D6DCC:
    fmuls 1, 1, 5
    fmuls 31, 31, 5
L_801D6DD4:
    .4byte 0xC002C1C8 # lfs f0, lbl_8053F168@sda21(r0)
    mr 3, 31
    li 4, 0x3c
    li 5, 0x2000
    fmuls 1, 1, 0
    fmuls 31, 31, 0
    bl fn_801E4AB0
    fmr 1, 31
    addi 3, 31, 0x14
    li 4, 0x3c
    li 5, 0x2000
    bl fn_801E4AB0
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

