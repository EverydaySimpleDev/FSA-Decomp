.section extab, "a"
.balign 4
.global etb_80006CFC
etb_80006CFC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006CFC, 8

.section extabindex, "a"
.balign 4
.global eti_80013708
eti_80013708:
    .4byte fn_80145C70
    .4byte 0x000000CC
    .4byte etb_80006CFC
.size eti_80013708, 12

# fn_80145C70 - DDRK's ("Deadlock") real setParams(). Fully traced.
# Unlike every other actor decompiled so far, this one never reads the
# universal spawn parameter (this->0x90) at all - DDRK has no configurable
# spawn fields (matches it being absent from FSALib's actor list, i.e.
# not a placeable/documented Level Editor actor - consistent with it
# being a purely internal "trap" spawned by other game logic rather than
# hand-placed in levels). Sets the standard AI detection box, zeroes all
# FSM/timer fields, sets a fixed flags word (this->0xb0 = 0x08042104),
# this->0x108 = 4 (aggro/attention countdown default), this->0x250 = 1
# (NOT the usual -1 "disabled" sentinel - starts as a live countdown),
# and picks this->0x98 (visual variant, 0-3) via the confirmed global
# PRNG rather than from any spawn data.
.text
.balign 4
.global fn_80145C70

fn_80145C70:
    stwu 1, -0x20(1)
    lis 4, 0x804
    .4byte 0xC062A098 # lfs f3, lbl_8053D038@sda21(r0)
    lis 5, 0x19
    addi 8, 5, 0x660d
    .4byte 0xC022A09C # lfs f1, lbl_8053D03C@sda21(r0)
    stfs 3, 0x60(3)
    addi 0, 4, 0x2104
    .4byte 0xC002A080 # lfs f0, lbl_8053D020@sda21(r0)
    li 7, 0x0
    stfs 3, 0x64(3)
    li 6, 0x4
    .4byte 0xC042A094 # lfs f2, lbl_8053D034@sda21(r0)
    li 5, 0x1
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(9)
    mullw 4, 4, 8
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(9)
    lwz 4, 0xb4(9)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    clrlwi 4, 4, 30
    stw 4, 0x98(3)
    stw 7, 0x234(3)
    stw 7, 0x238(3)
    stw 7, 0x23c(3)
    stw 7, 0x240(3)
    stw 7, 0x244(3)
    stw 7, 0x248(3)
    stw 7, 0x24c(3)
    stw 6, 0x108(3)
    stw 5, 0x250(3)
    stw 0, 0xb0(3)
    stw 7, 0x230(3)
    addi 1, 1, 0x20
    blr

