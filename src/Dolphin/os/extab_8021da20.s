/*
 * NEW ACTOR (vtable lbl_804A6708). Per-frame facing/hover-offset
 * selector - the same recurring shape as TINK's fn_801DE12C: resets
 * this->0x3c/0x40/0x44 to defaults, then per-state (4/7/8/9/0xa) picks
 * a preset value for 0x44, or for state 4 computes an offset point via
 * the confirmed fn_801D01A0 using a constant table (lbl_80539D40 +
 * this->0x2c0) into 0x3c/0x40. Confirms fn_801D01A0 is a genuinely
 * shared cross-actor utility, not TINK/SLK2-specific.
 */
.section extab, "a"
.balign 4
.global etb_8000A494
etb_8000A494:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A494, 8

.section extabindex, "a"
.balign 4
.global eti_80018208
eti_80018208:
    .4byte fn_8021DA20
    .4byte 0x00000104
    .4byte etb_8000A494
.size eti_80018208, 12

.text
.balign 4
.global fn_8021DA20

fn_8021DA20:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 0, 0x248(3)
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_8021DA78
    .4byte 0x40800010 # bge .L_8021DA60
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_8021DA6C
    .4byte 0x48000030 # b .L_8021DA8C
L_8021DA60:
    cmpwi 0, 0x9
    .4byte 0x41820020 # beq .L_8021DA84
    .4byte 0x48000024 # b .L_8021DA8C
L_8021DA6C:
    .4byte 0xC002CDC8 # lfs f0, lbl_8053FD68@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000018 # b .L_8021DA8C
L_8021DA78:
    .4byte 0xC002CDCC # lfs f0, lbl_8053FD6C@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x4800000C # b .L_8021DA8C
L_8021DA84:
    .4byte 0xC002CDD0 # lfs f0, lbl_8053FD70@sda21(r0)
    stfs 0, 0x44(31)
L_8021DA8C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x8
    .4byte 0x4182007C # beq .L_8021DB10
    .4byte 0x4080001C # bge .L_8021DAB4
    cmpwi 0, 0x4
    .4byte 0x41820024 # beq .L_8021DAC4
    .4byte 0x4180006C # blt .L_8021DB10
    cmpwi 0, 0x7
    .4byte 0x40800018 # bge .L_8021DAC4
    .4byte 0x48000060 # b .L_8021DB10
L_8021DAB4:
    cmpwi 0, 0xa
    .4byte 0x4182003C # beq .L_8021DAF4
    .4byte 0x40800054 # bge .L_8021DB10
    .4byte 0x48000048 # b .L_8021DB08
L_8021DAC4:
    lis 4, lbl_80539D40@ha
    mr 3, 31
    addi 5, 4, lbl_80539D40@l
    addi 4, 31, 0x2c0
    lfs 1, 0x0(5)
    addi 5, 1, 0x8
    bl fn_801D01A0
    lfs 0, 0x8(1)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
    .4byte 0x48000020 # b .L_8021DB10
L_8021DAF4:
    .4byte 0xC022CDD4 # lfs f1, lbl_8053FD74@sda21(r0)
    .4byte 0xC002CDD8 # lfs f0, lbl_8053FD78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    .4byte 0x4800000C # b .L_8021DB10
L_8021DB08:
    .4byte 0xC002CDDC # lfs f0, lbl_8053FD7C@sda21(r0)
    stfs 0, 0x40(31)
L_8021DB10:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

