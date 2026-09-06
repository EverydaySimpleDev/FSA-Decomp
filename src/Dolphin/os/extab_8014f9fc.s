.section extab, "a"
.balign 4
.global etb_80006E1C
etb_80006E1C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006E1C, 8

.section extabindex, "a"
.balign 4
.global eti_800138B8
eti_800138B8:
    .4byte fn_8014F9FC
    .4byte 0x0000013C
    .4byte etb_80006E1C
.size eti_800138B8, 12

# fn_8014F9FC - HINO's ("Hinox") real setParams(). HINO.json documents no
# per-actor fields, matching the code: it isolates only the LSB of the
# universal spawn param (this->0x90, masked down to just that bit, same
# "plain engine flag" pattern as BZBR) and, when set, overwrites the
# flags word this->0xb0 with a DIFFERENT constant (0x9042012) than the
# unflagged default - a real, previously-undocumented behavior toggle
# (plausibly "sleeping"/inactive Hinox vs. active). Also sets two AI
# detection boxes (0x60-0x6c narrow, 0x80-0x8c wide), zeroes all FSM/timer/
# handle fields (0x230-0x268, all -1/0 sentinels matching the shared
# convention), and sets this->0x98 = 2 (a "variant/mode" field also read by
# the destructor and update()'s dispatch) - EXCEPT the confirmed global
# PRNG (lbl_8053AAF8->0xb4, the same Numerical-Recipes LCG) is rolled once
# and, with some probability, this->0x98 is overridden to 3 instead: a
# genuine random Hinox variant selection at spawn time, not documented in
# FSALib. Finishes zeroing the remaining idle-wobble/handle fields.
.text
.balign 4
.global fn_8014F9FC

fn_8014F9FC:
    stwu 1, -0x10(1)
    li 5, 0x0
    .4byte 0xC002A2B0 # lfs f0, lbl_8053D250@sda21(r0)
    li 0, -0x1
    .4byte 0xC042A2B4 # lfs f2, lbl_8053D254@sda21(r0)
    stfs 0, 0x60(3)
    .4byte 0xC022A27C # lfs f1, lbl_8053D21C@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002A270 # lfs f0, lbl_8053D210@sda21(r0)
    stfs 2, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 0, 0x80(3)
    stfs 0, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    stw 5, 0x248(3)
    stw 5, 0x24c(3)
    stw 5, 0x250(3)
    stw 5, 0x254(3)
    stw 5, 0x258(3)
    stw 5, 0x25c(3)
    stw 5, 0x260(3)
    stw 5, 0x234(3)
    stw 5, 0x238(3)
    stw 5, 0x23c(3)
    stw 5, 0x240(3)
    stw 5, 0x244(3)
    lwz 4, 0x90(3)
    clrlwi 4, 4, 31
    stw 4, 0x90(3)
    stw 5, 0x264(3)
    stw 0, 0x268(3)
    lwz 0, 0x90(3)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8014FA94
    lis 4, 0x904
    addi 0, 4, 0x2012
    stw 0, 0xb0(3)
L_8014FA94:
    li 7, 0x3
    lis 4, 0x19
    stw 7, 0xbc(3)
    li 6, 0x1
    li 5, 0x2
    addi 0, 4, 0x660d
    stw 6, 0xb8(3)
    .4byte 0xC022A230 # lfs f1, lbl_8053D1D0@sda21(r0)
    stw 5, 0x98(3)
    .4byte 0xC002A23C # lfs f0, lbl_8053D1DC@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8014FAF8
    stw 7, 0x98(3)
L_8014FAF8:
    li 4, 0x0
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    sth 4, 0x26c(3)
    li 0, -0x1
    stfs 0, 0x278(3)
    stfs 0, 0x274(3)
    stfs 0, 0x270(3)
    stfs 0, 0x284(3)
    stfs 0, 0x280(3)
    stfs 0, 0x27c(3)
    sth 4, 0x26e(3)
    stw 0, 0x250(3)
    stw 0, 0x254(3)
    stw 4, 0x230(3)
    addi 1, 1, 0x10
    blr

