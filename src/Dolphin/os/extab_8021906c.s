/*
 * NEW ACTOR (vtable lbl_804A6550). While flag bit 15 is set and a
 * "damage counter" (this->0x2d8) condition is met (fn_801CD950 +
 * global PRNG via fn_80138A30 pick a hit count), loops that many times
 * playing a hit-reaction sequence per matched player (fn_80230BF4 mode
 * 1 + fn_80230498 damage-number/particle spawn - the same pattern as
 * the orbit-attacker's fn_8021DFAC), then writes this->0x2d8 into a
 * global manager byte (lbl_8053AB10->0x2c->0xc). Unconditionally calls
 * the unconfirmed fn_801CE0A4(this, arg) - already seen on the orbit-
 * attacker's fn_8021DB24, confirming it as a genuinely shared cross-
 * actor utility - then fn_8021B548(this) (outside this gap).
 */
.section extab, "a"
.balign 4
.global etb_8000A338
etb_8000A338:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A338, 8

.section extabindex, "a"
.balign 4
.global eti_8001801C
eti_8001801C:
    .4byte fn_8021906C
    .4byte 0x00000110
    .4byte etb_8000A338
.size eti_8001801C, 12

.text
.balign 4
.global fn_8021906C

fn_8021906C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x418200B0 # beq .L_80219148
    .4byte 0x418200AC # beq .L_80219148
    lwz 0, 0x248(28)
    cmpwi 0, 0x2
    .4byte 0x4080000C # bge .L_802190B4
    cmpwi 0, 0x0
    .4byte 0x4080007C # bge .L_8021912C
L_802190B4:
    .4byte 0xC022CCD0 # lfs f1, lbl_8053FC70@sda21(r0)
    lfs 0, 0x2d8(28)
    fcmpu cr0, 1, 0
    .4byte 0x4182006C # beq .L_8021912C
    .4byte 0xC042CCD4 # lfs f2, lbl_8053FC74@sda21(r0)
    addi 3, 28, 0x2d8
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x40820058 # bne .L_8021912C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    mr 31, 3
    li 30, 0x0
    .4byte 0x4800003C # b .L_80219124
L_802190EC:
    mr 3, 30
    li 4, 0x1
    bl fn_80230BF4
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    mr 3, 30
    li 5, 0x3d
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 30, 30, 0x1
L_80219124:
    cmpw 30, 31
    .4byte 0x4180FFC4 # blt .L_802190EC
L_8021912C:
    lfs 0, 0x2d8(28)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fctiwz 0, 0
    lwz 3, 0x2c(3)
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0xc(3)
L_80219148:
    mr 3, 28
    mr 4, 29
    bl fn_801CE0A4
    mr 3, 28
    bl fn_8021B548
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

