# EGOL cluster, part 4/6 (188B). setParams-like - advances the global
# PRNG to derive a jitter value (this->0x8/0x10-0x18 range), computed
# via the standard "mullw+addis+subi" LCG-advance idiom, no calls.
.section extab, "a"
.balign 4
.global etb_80007B84
etb_80007B84:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007B84, 8

.section extabindex, "a"
.balign 4
.global eti_80014AC4
eti_80014AC4:
    .4byte fn_801B0654
    .4byte 0x000000BC
    .4byte etb_80007B84
.size eti_80014AC4, 12

.text
.balign 4
.global fn_801B0654

fn_801B0654:
    stwu 1, -0x20(1)
    lwz 0, 0x254(3)
    lwz 4, 0x108(3)
    cmpw 0, 4
    .4byte 0x418200A4 # beq .L_801B0708
    stw 4, 0x254(3)
    lwz 4, 0x258(3)
    cmpwi 4, 0x0
    .4byte 0x4081000C # ble .L_801B0680
    subi 0, 4, 0x1
    stw 0, 0x258(3)
L_801B0680:
    lwz 0, 0x258(3)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_801B0694
    li 0, 0x0
    stw 0, 0xb0(3)
L_801B0694:
    li 5, 0x0
    lis 4, 0x19
    stw 5, 0x234(3)
    addi 0, 4, 0x660d
    .4byte 0xC002B8E8 # lfs f0, lbl_8053E888@sda21(r0)
    stw 5, 0x244(3)
    .4byte 0xC042B91C # lfs f2, lbl_8053E8BC@sda21(r0)
    lwz 4, 0x98(3)
    addi 4, 4, 0x10
    stw 4, 0x250(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(6)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    addi 0, 4, 0x3c
    stw 0, 0x23c(3)
    stw 5, 0x230(3)
L_801B0708:
    addi 1, 1, 0x20
    blr

