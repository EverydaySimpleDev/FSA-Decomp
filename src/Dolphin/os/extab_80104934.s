/*
 * fn_80104934(this): constructor/setParams for the fn_80104894-class.
 * Extracts bits 28-31 of this->0x90 into this->0x238 and 4 bits at
 * offset 20 into this->0x234, resets this->0x240 (float)/0x23c/0x244/
 * 0x245/0x246. If this->0x234==2, sets this->0x244=1. Checks a global
 * debug/feature flag byte (GetRoomConfigRecord()+0x31f9) and if set, makes a
 * virtual call through this->vtable[slot 12] (the same "draw"-shaped
 * slot used elsewhere) with args (0xff, 1). Then, if this->0x234==2,
 * makes a virtual call through this->vtable[slot 13] and branches on
 * its boolean return (success -> this->0x245=2/0x246=1, failure ->
 * this->0x246=2) - the SAME vtable slot 13 "can this start?" contract
 * seen on the shared-base minigame family's Init() methods, but here on
 * an UNRELATED class (different vtable, lbl_8049CB04) - generalizes
 * slot 13 from "the minigame family's Init() contract" to a broader
 * engine-wide virtual hook (likely defined on a common Actor base
 * class) reused by many unrelated actor types, not just the minigame
 * family.
 */

.section extab, "a"
.balign 4
.global etb_800059A0
etb_800059A0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800059A0, 8

.section extabindex, "a"
.balign 4
.global eti_80011DA0
eti_80011DA0:
    .4byte fn_80104934
    .4byte 0x000000E4
    .4byte etb_800059A0
.size eti_80011DA0, 12

.text
.balign 4
.global fn_80104934

fn_80104934:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0029258 # lfs f0, lbl_8053C1F8@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x90(3)
    clrlwi 3, 3, 28
    stw 3, 0x238(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 20
    stw 3, 0x234(31)
    stfs 0, 0x240(31)
    stw 0, 0x23c(31)
    stb 0, 0x244(31)
    stb 0, 0x245(31)
    stb 0, 0x246(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_80104990
    li 0, 0x1
    stb 0, 0x244(31)
L_80104990:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f9(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_801049C0
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_801049C0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x4082003C # bne .L_80104A04
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801049FC
    li 3, 0x2
    li 0, 0x1
    stb 3, 0x245(31)
    stb 0, 0x246(31)
    .4byte 0x4800000C # b .L_80104A04
L_801049FC:
    li 0, 0x2
    stb 0, 0x246(31)
L_80104A04:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

