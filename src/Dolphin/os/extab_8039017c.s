# fn_8039017C (dtor) + fn_8039027C (real ctor, direct vtable-install) - a
# NEW standalone class (vtable lbl_804AF480, short - only the dtor slot is
# populated). Uses a lock-style call (fn_80083A68, same family as
# fn_8008382C/fn_800839B8 seen on the earlier async-task-shaped singleton)
# and clears 4 fields on the confirmed player-candidate-tracking global
# (lbl_80529DEC->0xf8/0xfc/0x100/0x104) before releasing its own
# sub-object at this+0x4 - a small tracked-state singleton, not part of
# the "attachment resolver" family.
.section extab, "a"
.balign 4
.global etb_8000EEA0
etb_8000EEA0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EEA0, 8

.global etb_8000EEA8
etb_8000EEA8:
    .4byte 0x10080000
    .4byte 0x0000029C
    .4byte 0x00000018
    .4byte 0x000002B8
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000EEA8, 40

.section extabindex, "a"
.balign 4
.global eti_8001ECF4
eti_8001ECF4:
    .4byte fn_8039017C
    .4byte 0x00000100
    .4byte etb_8000EEA0
.size eti_8001ECF4, 12

.global eti_8001ED00
eti_8001ED00:
    .4byte fn_8039027C
    .4byte 0x00000378
    .4byte etb_8000EEA8
.size eti_8001ED00, 12

.text
.balign 4
.global fn_8039017C
.global fn_8039027C

fn_8039017C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x418200C8 # beq .L_80390260
    lis 4, lbl_804AF480@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804AF480@l
    stw 0, 0x0(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0xf8(3)
    stw 0, 0xfc(3)
    stw 0, 0x100(3)
    stw 0, 0x104(3)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80390200
    .4byte 0x41820018 # beq .L_803901F8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803901F8:
    li 0, 0x0
    stw 0, 0x4(30)
L_80390200:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8039022C
    .4byte 0x41820018 # beq .L_80390224
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80390224:
    li 0, 0x0
    stw 0, 0x8(30)
L_8039022C:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x34(3)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D91C0 # stw r3, lbl_8053AD80@sda21(r0)
    .4byte 0x4081000C # ble .L_80390260
    mr 3, 30
    bl dtor_80084580
L_80390260:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8039027C:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, lbl_804AF480@ha
    lis 4, lbl_80529DEC@ha
    stw 0, 0x14(1)
    addi 0, 5, lbl_804AF480@l
    lis 6, lbl_80475670@ha
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_80529DEC@l
    stw 30, 0x8(1)
    addi 30, 6, lbl_80475670@l
    stw 0, 0x0(31)
    lwz 3, 0x8(3)
    bl fn_80083A68
    .4byte 0x93ED91C0 # stw r31, lbl_8053AD80@sda21(r0)
    li 0, 0x0
    stw 0, 0x4(31)
    stw 0, 0x8(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    bl fn_80158B3C
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lbz 0, 0x242(4)
    cmplwi 0, 0x0
    .4byte 0x40820210 # bne .L_803904F4
    li 0, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 0, 0x242(4)
    lwz 3, 0x20(3)
    bl fn_802FF798
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x18
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x7000
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x30
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x48
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x30
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x58
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x30
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x2364(3)
L_803904F4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80390520
    li 3, 0x66c
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_80390518
    bl fn_804122F4
L_80390518:
    stw 30, 0x4(31)
    .4byte 0x4800001C # b .L_80390538
L_80390520:
    li 3, 0x154
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_80390534
    bl fn_8041787C
L_80390534:
    stw 30, 0x8(31)
L_80390538:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x1a
    .4byte 0x41820040 # beq .L_80390588
    lis 4, 0x100
    li 5, 0x1
    addi 4, 4, 0x1a
    li 6, 0x0
    bl fn_80458FF0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1a
    li 5, 0x1
    bl fn_80458408
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x248(3)
    .4byte 0x48000030 # b .L_803905B4
L_80390588:
    lis 4, lbl_80529DEC@ha
    addi 30, 4, lbl_80529DEC@l
    lbz 0, 0x248(30)
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_803905B4
    lis 4, 0x100
    li 5, 0x1
    addi 4, 4, 0x1a
    bl fn_80458408
    li 0, 0x1
    stb 0, 0x248(30)
L_803905B4:
    lis 3, lbl_80529DEC@ha
    li 4, 0x3
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0xc(3)
    bl fn_804580DC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_803905D8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458090
L_803905D8:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

