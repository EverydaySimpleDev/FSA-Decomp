/*
 * fn_801D7AFC(this) (0x801D7AFC-0x801D7BA0, 0xA4/164 bytes) - a NEW translation
 * unit starting right after the "this+0x4c4" launcher sub-object's file closed
 * (extab_801d78d8.s), but its field offsets (this->0xc/0x10/0x14 self position,
 * this->0x4 self type, this->0x198/0x280) are the SAME ones dtor_801D46FC's
 * class uses - this is another method of THAT class, in a separate TU (an
 * already-established pattern this session: a class's methods can span
 * multiple __sinit-bounded translation units).
 *
 * Checks whether velocity (this->0x54/0x5c) magnitude exceeds a threshold
 * (`lbl_8053F1A0`); if so AND the CONFIRMED fn_801CD2F8(this->0x4) self-ID
 * check passes, plays sound 0x1c7-offset-from-(this->0x280) via the SDK-
 * shaped fn_803075AC(this->0x198, this->0x4, &buf, 0, 2, -1, 1, this->0x280+
 * 0x1c7) - same call family as fn_801D3CBC's tail. Needs -mgekko. Caller not
 * yet traced.
 */

.section extab, "a"
.balign 4
.global etb_800086FC
etb_800086FC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800086FC, 8

.section extabindex, "a"
.balign 4
.global eti_80015ACC
eti_80015ACC:
    .4byte fn_801D7AFC
    .4byte 0x000000A4
    .4byte etb_800086FC
.size eti_80015ACC, 12

.text
.balign 4
.global fn_801D7AFC

fn_801D7AFC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022C200 # lfs f1, lbl_8053F1A0@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, lbl_80539D44@ha
    psq_l 3, 0x54(31), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    lfs 2, 0x5c(31)
    fmuls 0, 1, 0
    ps_madd 2, 2, 2, 3
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820048 # bne .L_801D7B8C
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801D7B8C
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x280(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x1c7
    bl fn_803075AC
L_801D7B8C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

