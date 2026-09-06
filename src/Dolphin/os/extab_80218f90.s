/*
 * NEW ACTOR (vtable lbl_804A6550). Per-frame facing/hover-offset
 * selector - the same recurring shape as TINK's fn_801DE12C and the
 * orbit-attacker's fn_8021DA20: resets this->0x3c/0x40/0x44 to
 * defaults, then per-state picks a preset for 0x44 (state 5, or state
 * 0xb gated further on a sub-field this->0x280), or computes an offset
 * point via the confirmed fn_801D01A0 (state 4 using table this->0x24,
 * state 0xd using table this->0x2bc) into 0x3c/0x40.
 */
.section extab, "a"
.balign 4
.global etb_8000A330
etb_8000A330:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A330, 8

.section extabindex, "a"
.balign 4
.global eti_80018010
eti_80018010:
    .4byte fn_80218F90
    .4byte 0x000000DC
    .4byte etb_8000A330
.size eti_80018010, 12

.text
.balign 4
.global fn_80218F90

fn_80218F90:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 0, 0x248(3)
    cmpwi 0, 0xb
    .4byte 0x4182005C # beq .L_80219018
    .4byte 0x4080001C # bge .L_80218FDC
    cmpwi 0, 0x5
    .4byte 0x41820044 # beq .L_8021900C
    .4byte 0x4080008C # bge .L_80219058
    cmpwi 0, 0x4
    .4byte 0x40800014 # bge .L_80218FE8
    .4byte 0x48000080 # b .L_80219058
L_80218FDC:
    cmpwi 0, 0xd
    .4byte 0x40800078 # bge .L_80219058
    .4byte 0x48000054 # b .L_80219038
L_80218FE8:
    lfs 1, 0x254(31)
    addi 4, 31, 0x24
    addi 5, 1, 0x8
    bl fn_801D01A0
    lfs 0, 0x8(1)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
    .4byte 0x48000050 # b .L_80219058
L_8021900C:
    .4byte 0xC002CCC8 # lfs f0, lbl_8053FC68@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000044 # b .L_80219058
L_80219018:
    lwz 0, 0x280(31)
    cmpwi 0, 0xf
    .4byte 0x4080000C # bge .L_8021902C
    cmpwi 0, 0xb
    .4byte 0x40800030 # bge .L_80219058
L_8021902C:
    .4byte 0xC002CCCC # lfs f0, lbl_8053FC6C@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000024 # b .L_80219058
L_80219038:
    lfs 1, 0x254(31)
    addi 4, 31, 0x2bc
    addi 5, 1, 0x8
    bl fn_801D01A0
    lfs 0, 0x8(1)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
L_80219058:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

