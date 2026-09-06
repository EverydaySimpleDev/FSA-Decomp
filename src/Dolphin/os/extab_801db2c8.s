/*
 * fn_801DB2C8(this) -> mask (0x801DB2C8-0x801DB3F0, 0x128/296 bytes) -
 * structurally the same "collision/bounds-response" shape as
 * dtor_801D46FC's fn_801D7BA0 (extab_801d7ba0.s): if velocity
 * (this->0x60/0x64 vs this->0x68/0x6c, the SAME effect-propagation field
 * pair fn_801D7E6C/fn_801D7DB4 use) exceeds a threshold on either axis,
 * queries the CONFIRMED fn_801F2740(this, -1) 4-bit player-slot mask, and
 * for each set bit calls fn_801F329C(this, slot) -> bool (not yet landed);
 * on true, builds a position via fn_801CD0D0(&buf) (not yet landed) offset
 * by a constant, else falls back to a cached position - then calls
 * fn_80238548(slot, positionPtr, this->0x114, flag=1), CONFIRMING that
 * function's signature further (matches fn_801D7BA0's own call exactly).
 * Returns the mask fn_801F2740 produced.
 */

.section extab, "a"
.balign 4
.global etb_80008808
etb_80008808:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008808, 8

.section extabindex, "a"
.balign 4
.global eti_80015C40
eti_80015C40:
    .4byte fn_801DB2C8
    .4byte 0x00000128
    .4byte etb_80008808
.size eti_80015C40, 12

.text
.balign 4
.global fn_801DB2C8

fn_801DB2C8:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC042C344 # lfs f2, lbl_8053F2E4@sda21(r0)
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    li 30, 0x0
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100CC # ble .L_801DB3CC
    lfs 1, 0x6c(28)
    lfs 0, 0x64(28)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100B8 # ble .L_801DB3CC
    li 4, -0x1
    bl fn_801F2740
    clrlwi. 0, 3, 24
    mr 30, 3
    .4byte 0x418200A4 # beq .L_801DB3CC
    mr 3, 28
    addi 4, 1, 0x10
    bl fn_801F3128
    li 29, 0x0
    clrlwi 31, 30, 24
L_801DB340:
    li 0, 0x1
    slw 0, 0, 29
    and. 0, 31, 0
    .4byte 0x41820074 # beq .L_801DB3C0
    mr 3, 28
    mr 4, 29
    bl fn_801F329C
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_801DB39C
    lfs 2, 0x10(1)
    addi 3, 1, 0x18
    lfs 1, 0x14(1)
    addi 4, 1, 0x24
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    bl fn_801CD0D0
    lfs 1, 0x24(1)
    lfs 0, 0x28(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_801DB3AC
L_801DB39C:
    lfs 1, 0x10(1)
    lfs 0, 0x14(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801DB3AC:
    lwz 4, 0x114(28)
    mr 3, 29
    addi 5, 1, 0x8
    li 6, 0x1
    bl fn_80238548
L_801DB3C0:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF78 # blt .L_801DB340
L_801DB3CC:
    lwz 0, 0x44(1)
    mr 3, 30
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

