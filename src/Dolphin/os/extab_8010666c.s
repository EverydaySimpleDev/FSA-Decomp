/*
 * fn_8010666C(this): constructor for the fn_80106040-class. Makes TWO
 * virtual calls through the SAME global manager (lbl_8053AAF8->0xa4,
 * vtable slot 6) used in fn_8010645C/fn_801060A0/fn_80105A34 - first
 * with args (0x3f3f3f3f, lbl_80539EC8's value), storing the result into
 * this->0x230; second with args (0x3f3f3f3f, &lbl_80463FC4), storing
 * into this->0x234 - CONFIRMS this class's this->0x230/0x234 fields
 * (checked by fn_8010645C's candidate loop) come from this manager,
 * not a per-slot loop like fn_80105A34's. Extracts this->0x29c (4 bits
 * at bit 28-31 of this->0x90) and this->0x2a0 (4 bits at bit 24-27) -
 * the exact fields fn_8010645C's state-2 completion passes to
 * fn_802D9FF4. Sets bounds floats at this->0x60/0x64/0x68/0x6c TWICE in
 * a row with two different constant pairs (the second pair - lbl_
 * 8053C28C/8053C290 - is what survives in the final object state,
 * since it's the literal last write; the first pair's write is
 * observably dead but present in the retail bytes, transcribed as-is).
 * Zeroes this->0xb8.
 */

.section extab, "a"
.balign 4
.global etb_80005A4C
etb_80005A4C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005A4C, 8

.section extabindex, "a"
.balign 4
.global eti_80011E84
eti_80011E84:
    .4byte fn_8010666C
    .4byte 0x000000D0
    .4byte etb_80005A4C
.size eti_80011E84, 12

.text
.balign 4
.global fn_8010666C

fn_8010666C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    .4byte 0x80AD8308 # lwz r5, lbl_80539EC8@sda21(r0)
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    stw 3, 0x230(31)
    lis 3, lbl_80463FC4@ha
    addi 5, 3, lbl_80463FC4@l
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    stw 3, 0x234(31)
    li 0, 0x1
    .4byte 0xC06292E4 # lfs f3, lbl_8053C284@sda21(r0)
    lwz 3, 0x90(31)
    .4byte 0xC04292E8 # lfs f2, lbl_8053C288@sda21(r0)
    clrlwi 3, 3, 28
    .4byte 0xC02292EC # lfs f1, lbl_8053C28C@sda21(r0)
    stw 3, 0x29c(31)
    .4byte 0xC00292F0 # lfs f0, lbl_8053C290@sda21(r0)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 24
    stw 3, 0x2a0(31)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 0, 0xb8(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

