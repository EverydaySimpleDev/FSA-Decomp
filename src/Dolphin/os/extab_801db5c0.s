/*
 * fn_801DB5C0(this) (0x801DB5C0-0x801DB6C8, 0x108/264 bytes) - per-frame
 * driver on the SAME shared this->0x248 state convention. State==1: if
 * elapsed>=duration (this->0x24c/0x250), calls fn_801DB950(this, 1) (not yet
 * landed). State==0 (the "active roam/chase" case): ramps two damped values
 * (this->0x2d4/0x2e0 via fn_801CD950, an "approach at rate, clamp to max"
 * utility distinct from but structurally like the CONFIRMED fn_801F71A4) and
 * a facing-angle jitter (this->0x2de, gated by a threshold and randomized
 * via the CONFIRMED fn_801CD930 PRNG-range helper), then re-finds a target
 * via the CONFIRMED fn_801D05F8(this->0x2b0, this+0x2bc) and applies a
 * 90-frame (0x5a) persistence gate before actually switching this->0x2a8
 * (current target ID) - avoiding target flicker. Tail-calls fn_801DB6C8(this)
 * (landed alongside this file) to do the actual position/velocity update.
 * Other states: no-op.
 */

.section extab, "a"
.balign 4
.global etb_80008820
etb_80008820:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008820, 8

.section extabindex, "a"
.balign 4
.global eti_80015C64
eti_80015C64:
    .4byte fn_801DB5C0
    .4byte 0x00000108
    .4byte etb_80008820
.size eti_80015C64, 12

.text
.balign 4
.global fn_801DB5C0

fn_801DB5C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DB60C
    .4byte 0x408000D4 # bge .L_801DB6B4
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DB5F0
    .4byte 0x480000C8 # b .L_801DB6B4
L_801DB5F0:
    lwz 4, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 4, 0
    .4byte 0x418000B8 # blt .L_801DB6B4
    li 4, 0x1
    bl fn_801DB950
    .4byte 0x480000AC # b .L_801DB6B4
L_801DB60C:
    lfs 1, 0x2d8(31)
    addi 3, 31, 0x2d4
    .4byte 0xC042C340 # lfs f2, lbl_8053F2E0@sda21(r0)
    bl fn_801CD950
    .4byte 0xC022C354 # lfs f1, lbl_8053F2F4@sda21(r0)
    addi 3, 31, 0x2e0
    .4byte 0xC042C358 # lfs f2, lbl_8053F2F8@sda21(r0)
    bl fn_801CD950
    lha 0, 0x2de(31)
    cmpwi 0, 0x200
    .4byte 0x4182001C # beq .L_801DB650
    li 5, 0x20
    .4byte 0x40810008 # ble .L_801DB644
    li 5, 0x800
L_801DB644:
    addi 3, 31, 0x2de
    li 4, 0x200
    bl fn_801CD930
L_801DB650:
    lfs 1, 0x2b0(31)
    mr 3, 31
    addi 4, 31, 0x2bc
    bl fn_801D05F8
    cmpwi 3, -0x1
    .4byte 0x40820018 # bne .L_801DB67C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2a8(31)
    stw 0, 0x2ac(31)
    .4byte 0x48000034 # b .L_801DB6AC
L_801DB67C:
    lwz 4, 0x2ac(31)
    addi 0, 4, 0x1
    stw 0, 0x2ac(31)
    lwz 0, 0x2a8(31)
    cmpw 0, 3
    .4byte 0x4182001C # beq .L_801DB6AC
    lwz 0, 0x2ac(31)
    cmplwi 0, 0x5a
    .4byte 0x41800010 # blt .L_801DB6AC
    stw 3, 0x2a8(31)
    li 0, 0x0
    stw 0, 0x2ac(31)
L_801DB6AC:
    mr 3, 31
    bl fn_801DB6C8
L_801DB6B4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

