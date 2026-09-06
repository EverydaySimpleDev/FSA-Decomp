/*
 * fn_80102D34(this): the fn_80102278-class's Init() method - same shared-
 * base contract as fn_801005C4/fn_80101F20. Resets bounds floats
 * (this->0x60-0x6c), this->0x235=1, this->0x234/0x238=0, this->0x23c=-1
 * (handle sentinel), draws the confirmed PRNG into this->0x236, then uses
 * a second PRNG draw quantized+offset by 0x10 into this->0x24c (clamped
 * to 0x13 if it lands on 0x14 - an exclusive-upper-bound clamp), zeroes
 * the 4-slot array (this->0x274/0x278/0x27c/0x280 - same shape as the
 * OTHER two classes' 4-candidate arrays), then makes the same virtual
 * call through this->vtable[slot 13] with the same success/failure
 * pattern - EXCEPT the failure state here is 7, not 9 (a class-specific
 * detail; the shared base's *contract* - same vtable slot, same
 * boolean-branch shape - is identical, only the literal failure-state
 * value differs per sibling class).
 */

.section extab, "a"
.balign 4
.global etb_80005930
etb_80005930:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005930, 8

.section extabindex, "a"
.balign 4
.global eti_80011CF8
eti_80011CF8:
    .4byte fn_80102D34
    .4byte 0x00000124
    .4byte etb_80005930
.size eti_80011CF8, 12

.text
.balign 4
.global fn_80102D34

fn_80102D34:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0229224 # lfs f1, lbl_8053C1C4@sda21(r0)
    li 4, 0x1
    stw 0, 0x24(1)
    li 0, -0x1
    .4byte 0xC0029228 # lfs f0, lbl_8053C1C8@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stfs 1, 0x60(3)
    li 3, 0x0
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stb 4, 0x235(31)
    stw 3, 0x238(31)
    stb 3, 0x234(31)
    stw 0, 0x23c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    stb 3, 0x236(31)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0029208 # lfs f0, lbl_8053C1A8@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042922C # lfs f2, lbl_8053C1CC@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    addi 0, 3, 0x10
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x14
    .4byte 0x4082000C # bne .L_80102DF4
    li 0, 0x13
    stw 0, 0x24c(31)
L_80102DF4:
    li 0, 0x0
    mr 3, 31
    stw 0, 0x274(31)
    stw 0, 0x278(31)
    stw 0, 0x27c(31)
    stw 0, 0x280(31)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80102E38
    li 3, 0x7
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x244(31)
    .4byte 0x48000010 # b .L_80102E44
L_80102E38:
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x244(31)
L_80102E44:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

