/*
 * NEW ACTOR (vtable lbl_804A5A30). Rail-history append/peek logic:
 * unless state is 8+, picks between fn_801D22A0/fn_801D22DC/the newly-
 * confirmed sibling fn_801D2264 (append/commit/peek variants of the
 * confirmed rail-history family from TINK) based on this->0x350 (a
 * mode value) and this->0x278 (sub-state), operating on the confirmed
 * this->0x270 history buffer. Ends by calling the confirmed
 * fn_801CE4BC().
 */
.section extab, "a"
.balign 4
.global etb_80009C38
etb_80009C38:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009C38, 8

.section extabindex, "a"
.balign 4
.global eti_800175D8
eti_800175D8:
    .4byte fn_80205478
    .4byte 0x0000012C
    .4byte etb_80009C38
.size eti_800175D8, 12

.text
.balign 4
.global fn_80205478

fn_80205478:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x6
    .4byte 0x41820020 # beq .L_802054B4
    .4byte 0x40800010 # bge .L_802054A8
    cmpwi 0, 0x5
    .4byte 0x408000F0 # bge .L_80205590
    .4byte 0x48000010 # b .L_802054B4
L_802054A8:
    cmpwi 0, 0x8
    .4byte 0x40800008 # bge .L_802054B4
    .4byte 0x480000E0 # b .L_80205590
L_802054B4:
    lwz 3, 0x350(31)
    cmpwi 3, 0x2
    .4byte 0x40820018 # bne .L_802054D4
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    bl fn_801D22A0
    .4byte 0x480000B8 # b .L_80205588
L_802054D4:
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_80205520
    lwz 0, 0x278(31)
    cmpwi 0, 0x4
    .4byte 0x40800024 # bge .L_80205508
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802054F4
    .4byte 0x48000018 # b .L_80205508
L_802054F4:
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    bl fn_801D2264
    .4byte 0x48000084 # b .L_80205588
L_80205508:
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800006C # b .L_80205588
L_80205520:
    lwz 0, 0x278(31)
    cmpwi 0, 0x4
    .4byte 0x4080002C # bge .L_80205554
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80205538
    .4byte 0x48000020 # b .L_80205554
L_80205538:
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    li 6, 0x0
    addi 4, 4, 0x4
    bl fn_801D22DC
    .4byte 0x48000038 # b .L_80205588
L_80205554:
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_80205574
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    addi 4, 4, 0x4
    bl fn_801D22A0
    .4byte 0x48000018 # b .L_80205588
L_80205574:
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    addi 4, 4, 0x4
    bl fn_801D2264
L_80205588:
    mr 3, 31
    bl fn_801CE4BC
L_80205590:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

