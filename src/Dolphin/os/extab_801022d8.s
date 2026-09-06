/*
 * fn_801022D8(this): first method of the fn_80102278-class. Calls
 * fn_801F02BC (unidentified, same "index*2+time+0x311" argument idiom seen
 * on the fn_801F06F0 calls in the shared-base pair above - likely a
 * sibling effect/sound entry point) using an index derived from
 * this->0x235*2+this->0x238. Then, only when this->0x230 is 4, 5, or 6,
 * computes a time-bucket index (this->0x240 mod 60, same reciprocal-
 * multiply idiom used throughout this region) and calls fn_8043CB24 (same
 * family as the earlier fn_8043D874/fn_8043D67C spawn-into-shared-table
 * calls) using the shared anchor/results table lbl_8053AED0.
 */

.section extab, "a"
.balign 4
.global etb_80005920
etb_80005920:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005920, 8

.section extabindex, "a"
.balign 4
.global eti_80011CE0
eti_80011CE0:
    .4byte fn_801022D8
    .4byte 0x000000C0
    .4byte etb_80005920
.size eti_80011CE0, 12

.text
.balign 4
.global fn_801022D8

fn_801022D8:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0229208 # lfs f1, lbl_8053C1A8@sda21(r0)
    lis 4, lbl_80463BB8@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_80463BB8@l
    fmr 2, 1
    li 6, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    li 7, 0x0
    li 8, 0x0
    lbz 0, 0x235(3)
    li 9, 0x0
    lwz 5, 0x238(3)
    slwi 0, 0, 1
    add 5, 0, 5
    addi 5, 5, 0x311
    bl fn_801F02BC
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_80102340
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_80102340
    cmpwi 0, 0x6
    .4byte 0x40820048 # bne .L_80102384
L_80102340:
    lis 3, 0x8889
    lwz 0, 0x240(31)
    subi 4, 3, 0x7777
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mulhw 4, 4, 0
    .4byte 0xC022920C # lfs f1, lbl_8053C1AC@sda21(r0)
    .4byte 0xC0429210 # lfs f2, lbl_8053C1B0@sda21(r0)
    li 5, 0xff
    .4byte 0xC0629214 # lfs f3, lbl_8053C1B4@sda21(r0)
    li 6, 0x0
    add 0, 4, 0
    li 7, 0x2
    srawi 0, 0, 5
    li 8, 0x1
    srwi 4, 0, 31
    add 4, 0, 4
    bl fn_8043CB24
L_80102384:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

