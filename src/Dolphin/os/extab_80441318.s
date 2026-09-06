# 901KB-gap non-actor manager block: 8 function(s), 1,164 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011164
etb_80011164:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80011164, 8

.global etb_8001116C
etb_8001116C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8001116C, 8

.global etb_80011174
etb_80011174:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80011174, 8

.global etb_8001117C
etb_8001117C:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8001117C, 8

.global etb_80011184
etb_80011184:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80011184, 8

.section extabindex, "a"
.balign 4
.global eti_80021028
eti_80021028:
    .4byte fn_80441318
    .4byte 0x000000D8
    .4byte etb_80011164
.size eti_80021028, 12

.global eti_80021034
eti_80021034:
    .4byte fn_804413F0
    .4byte 0x00000054
    .4byte etb_8001116C
.size eti_80021034, 12

.global eti_80021040
eti_80021040:
    .4byte fn_80441444
    .4byte 0x00000048
    .4byte etb_80011174
.size eti_80021040, 12

.global eti_8002104C
eti_8002104C:
    .4byte fn_80441490
    .4byte 0x0000029C
    .4byte etb_8001117C
.size eti_8002104C, 12

.global eti_80021058
eti_80021058:
    .4byte fn_80441730
    .4byte 0x00000048
    .4byte etb_80011184
.size eti_80021058, 12

.text
.balign 4
.global fn_80441318
.global fn_804413F0
.global fn_80441444
.global fn_8044148C
.global fn_80441490
.global fn_8044172C
.global fn_80441730
.global fn_80441778

fn_80441318:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80231A50
    cmpwi 3, 0x0
    .4byte 0x40800024 # bge .L_80441358
    lwz 4, 0x8(31)
    cmpwi 4, 0x3
    .4byte 0x40800010 # bge .L_80441350
    addi 0, 4, 0x1
    stw 0, 0x8(31)
    .4byte 0x4800001C # b .L_80441368
L_80441350:
    stw 3, 0x4(31)
    .4byte 0x48000014 # b .L_80441368
L_80441358:
    bl fn_8022F340
    stw 3, 0x4(31)
    li 0, 0x0
    stw 0, 0x8(31)
L_80441368:
    lwz 9, 0x4(31)
    cmpwi 9, 0x0
    .4byte 0x41800064 # blt .L_804413D4
    .4byte 0x80CD8DC0 # lwz r6, lbl_8053A980@sda21(r0)
    li 4, 0x16d
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    li 3, 0x105
    lwz 6, 0x4(6)
    li 0, 0x0
    lwz 8, 0x20(5)
    lhz 5, 0x4(6)
    lhz 6, 0x6(6)
    subi 7, 5, 0x16d
    srwi 5, 7, 31
    subi 6, 6, 0x105
    add 5, 5, 7
    stw 9, 0x22c(8)
    srawi 7, 5, 1
    srwi 5, 6, 31
    add 5, 5, 6
    stw 7, 0x238(8)
    srawi 5, 5, 1
    stw 5, 0x23c(8)
    stw 4, 0x240(8)
    stw 3, 0x244(8)
    stw 0, 0x234(8)
    .4byte 0x4800000C # b .L_804413DC
L_804413D4:
    li 0, 0x1
    stb 0, 0xe(31)
L_804413DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804413F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lhz 3, 0xc(3)
    cmplwi 3, 0x12c
    .4byte 0x40800010 # bge .L_8044141C
    addi 0, 3, 0x1
    sth 0, 0xc(31)
    .4byte 0x48000018 # b .L_80441430
L_8044141C:
    bl fn_80231A50
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80441430
    li 0, 0x2
    stb 0, 0xe(31)
L_80441430:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80441444:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    bl fn_802D39CC
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80441478
    li 3, 0x1
    li 0, 0x0
    stb 3, 0xe(31)
    sth 0, 0xc(31)
L_80441478:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8044148C:
    blr

fn_80441490:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 28, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x40820110 # bne .L_804415C0
    li 0, -0x1
    lis 3, lbl_80529DEC@ha
    stw 0, 0x4(28)
    addi 27, 3, lbl_80529DEC@l
    li 29, 0x0
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lwz 3, 0x1a8(27)
    lwz 4, 0x4(4)
    cmpwi 3, 0x0
    lhz 5, 0x4(4)
    lhz 4, 0x6(4)
    subi 5, 5, 0x16d
    srwi 0, 5, 31
    subi 4, 4, 0x105
    add 5, 0, 5
    srwi 0, 4, 31
    srawi 31, 5, 1
    add 0, 0, 4
    srawi 30, 0, 1
    .4byte 0x41800024 # blt .L_80441524
    cmpwi 3, 0x4
    .4byte 0x4080001C # bge .L_80441524
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800070 # blt .L_80441584
    lwz 0, 0x1a8(27)
    stw 0, 0x4(28)
    .4byte 0x48000064 # b .L_80441584
L_80441524:
    cmpwi 3, 0x4
    .4byte 0x4082005C # bne .L_80441584
    li 26, 0x0
    li 27, 0x1
L_80441534:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 27, 26
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820018 # beq .L_80441560
    mr 3, 26
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800008 # blt .L_80441560
    addi 29, 29, 0x1
L_80441560:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFCC # blt .L_80441534
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 29, 3
    .4byte 0x4082000C # bne .L_80441584
    li 0, 0x0
    stw 0, 0x4(28)
L_80441584:
    lwz 6, 0x4(28)
    cmpwi 6, 0x0
    .4byte 0x4180018C # blt .L_80441718
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    li 4, 0x16d
    li 3, 0x105
    li 0, 0x0
    lwz 5, 0x20(5)
    stw 6, 0x22c(5)
    stw 31, 0x238(5)
    stw 30, 0x23c(5)
    stw 4, 0x240(5)
    stw 3, 0x244(5)
    stw 0, 0x234(5)
    .4byte 0x4800015C # b .L_80441718
L_804415C0:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lbz 0, 0xed(4)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_80441648
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lwz 0, 0x110(4)
    lwz 3, 0x4(3)
    lhz 4, 0x4(3)
    lhz 3, 0x6(3)
    subi 4, 4, 0x16d
    stw 0, 0x4(28)
    srwi 0, 4, 31
    subi 3, 3, 0x105
    lwz 8, 0x4(28)
    add 4, 0, 4
    srwi 0, 3, 31
    cmpwi 8, 0x0
    srawi 6, 4, 1
    add 0, 0, 3
    srawi 7, 0, 1
    .4byte 0x41800108 # blt .L_80441718
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    li 3, 0x16d
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 0, 0x105
    lbz 5, 0xee(5)
    lwz 4, 0x20(4)
    stw 8, 0x22c(4)
    stw 6, 0x238(4)
    stw 7, 0x23c(4)
    stw 3, 0x240(4)
    stw 0, 0x244(4)
    stw 5, 0x234(4)
    .4byte 0x480000D4 # b .L_80441718
L_80441648:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x0
    .4byte 0x40820084 # bne .L_804416DC
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820078 # bne .L_804416DC
    .4byte 0x800D85A0 # lwz r0, lbl_8053A160@sda21(r0)
    stw 0, 0x4(28)
    lwz 9, 0x4(28)
    cmpwi 9, 0x0
    .4byte 0x418000A0 # blt .L_80441718
    .4byte 0x80CD8DC0 # lwz r6, lbl_8053A980@sda21(r0)
    li 4, 0x16d
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    li 3, 0x105
    lwz 6, 0x4(6)
    li 0, 0x0
    lwz 8, 0x20(5)
    lhz 5, 0x4(6)
    lhz 6, 0x6(6)
    subi 7, 5, 0x16d
    srwi 5, 7, 31
    subi 6, 6, 0x105
    add 5, 5, 7
    stw 9, 0x22c(8)
    srawi 7, 5, 1
    srwi 5, 6, 31
    add 5, 5, 6
    stw 7, 0x238(8)
    srawi 5, 5, 1
    stw 5, 0x23c(8)
    stw 4, 0x240(8)
    stw 3, 0x244(8)
    stw 0, 0x234(8)
    .4byte 0x48000040 # b .L_80441718
L_804416DC:
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_804416F8
    li 0, 0x0
    stb 0, 0xe(28)
L_804416F8:
    lbz 4, 0xe(28)
    lis 3, lbl_804B19BC@ha
    addi 0, 3, lbl_804B19BC@l
    mr 3, 28
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
L_80441718:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044172C:
    blr

fn_80441730:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80441760
    lis 5, lbl_804B19E0@ha
    extsh. 0, 4
    addi 0, 5, lbl_804B19E0@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80441760
    bl dtor_80084580
L_80441760:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80441778:
    lis 5, lbl_804B19E0@ha
    li 4, 0x0
    addi 5, 5, lbl_804B19E0@l
    li 0, -0x1
    stw 5, 0x0(3)
    sth 4, 0xc(3)
    stb 4, 0xe(3)
    stb 4, 0xf(3)
    stw 0, 0x4(3)
    stw 4, 0x8(3)
    blr

