/*
 * GOLD cluster, part 4/6 - setParams().
 *
 * fn_8032A7B8(this): resets working counters (this->0x24c/0x250/0x254)
 * and unpacks the raw spawn parameter into this->0x238 (an 8-bit
 * variant) and this->0x23c (a 4-bit selector). A computed jump table
 * (jumptable_804AB6B4, 8 entries) sets the initial this->0x230 state
 * (0/1/3/4/5) from the 4-bit selector - matching the states the core
 * update() (part 2/6) dispatches on; state 3 additionally sets up a
 * direction-vector default (this->0x60/64/68/6c). For states 1/3/4:
 * checks the shared "am I active" virtual method (vtable slot 0x34,
 * the same check used throughout this cluster and others this session)
 * and, if it fails, calls the confirmed NAVI-sway utility fn_801F3668.
 */
.section extab, "a"
.balign 4
.global etb_8000DBF4
etb_8000DBF4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DBF4, 8

.section extabindex, "a"
.balign 4
.global eti_8001D254
eti_8001D254:
    .4byte fn_8032A7B8
    .4byte 0x00000128
    .4byte etb_8000DBF4
.size eti_8001D254, 12

.text
.balign 4
.global fn_8032A7B8

fn_8032A7B8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC022ED70 # lfs f1, lbl_80541D10@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0xb
    .4byte 0xC002ED78 # lfs f0, lbl_80541D18@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    stw 4, 0x24c(3)
    stw 4, 0x250(3)
    stw 4, 0x254(3)
    lwz 3, 0x90(3)
    clrlwi 3, 3, 16
    stw 3, 0x238(31)
    stw 4, 0x234(31)
    stfs 1, 0x244(31)
    stfs 0, 0x248(31)
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 8
    stw 0, 0x23c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 12
    cmplwi 0, 0x7
    .4byte 0x4181001C # bgt .L_8032A838
    lis 3, jumptable_804AB6B4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB6B4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
L_8032A838:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x4800004C # b .L_8032A88C
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000040 # b .L_8032A88C
    stw 4, 0x238(31)
    li 0, 0x3
    .4byte 0xC022EDDC # lfs f1, lbl_80541D7C@sda21(r0)
    .4byte 0xC002ED74 # lfs f0, lbl_80541D14@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_8032A88C
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8032A88C
    li 0, 0x5
    stw 0, 0x230(31)
L_8032A88C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_8032A8A8
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_8032A8A8
    cmpwi 0, 0x4
    .4byte 0x40820028 # bne .L_8032A8CC
L_8032A8A8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8032A8CC
    mr 3, 31
    bl fn_801F3668
L_8032A8CC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

