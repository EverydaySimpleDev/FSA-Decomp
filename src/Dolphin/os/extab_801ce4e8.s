.section extab, "a"
.balign 4
.global etb_80008398
etb_80008398:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008398, 8

.section extabindex, "a"
.balign 4
.global eti_80015688
eti_80015688:
    .4byte fn_801CE4E8
    .4byte 0x000000AC
    .4byte etb_80008398
.size eti_80015688, 12

.text
.balign 4
.global fn_801CE4E8

# fn_801CE4E8 - GENERIC default for vtable offset 0x88 (see
# project_fsa_growing_area_extension.md). Based on the facing/direction
# index `this->0x98` (0-4), sets a direction vector
# `this->0x3c/0x40` from a fixed speed constant (`this->0x254`) and the
# threshold constant, oriented per direction - effectively "convert
# facing into a growth-direction vector." Then makes an INDIRECT call
# through `this->vtable[0x84]` (`fn_801CE594`, the "grow field 0x44
# over time" driver) - chaining the direction update into the growth
# step every time this slot fires.
fn_801CE4E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x41820050 # beq .L_801CE54C
    .4byte 0x40800014 # bge .L_801CE514
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801CE520
    .4byte 0x40800028 # bge .L_801CE534
    .4byte 0x48000064 # b .L_801CE574
L_801CE514:
    cmpwi 0, 0x4
    .4byte 0x4080005C # bge .L_801CE574
    .4byte 0x48000044 # b .L_801CE560
L_801CE520:
    lfs 1, 0x254(3)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 1, 0x3c(3)
    stfs 0, 0x40(3)
    .4byte 0x48000044 # b .L_801CE574
L_801CE534:
    lfs 1, 0x254(3)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fneg 1, 1
    stfs 1, 0x3c(3)
    stfs 0, 0x40(3)
    .4byte 0x4800002C # b .L_801CE574
L_801CE54C:
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x3c(3)
    lfs 0, 0x254(3)
    stfs 0, 0x40(3)
    .4byte 0x48000018 # b .L_801CE574
L_801CE560:
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x3c(3)
    lfs 0, 0x254(3)
    fneg 0, 0
    stfs 0, 0x40(3)
L_801CE574:
    lwz 12, 0x0(3)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
