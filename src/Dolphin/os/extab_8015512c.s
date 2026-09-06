.section extab, "a"
.balign 4
.global etb_80006EDC
etb_80006EDC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006EDC, 8

.section extabindex, "a"
.balign 4
.global eti_800139D8
eti_800139D8:
    .4byte fn_8015512C
    .4byte 0x00000288
    .4byte etb_80006EDC
.size eti_800139D8, 12

# fn_8015512C - TKTA's ("Tektite") real setParams(), fully traced.
# Zeroes 6 timer/state fields (+0x234/238/23c/240/244/248), then reduces
# the universal spawn param (this->0x90) down to its low 3 bits - this
# is FSALib's documented "Type" field (Red/Blue/Red-hidden-in-bush,
# though the JSON lists it as an 8-bit field; only 3 bits are actually
# consulted here). Splits on the LSB of that 3-bit value (i.e. Type's
# parity - Blue=1 is odd, the Reds=0/2 are even) to pick one of two
# different detection/interaction box sizes (this->0x60/64/68/6c,
# ->0x80/84/88/8c - Blue gets a smaller box, this->0x108=4, vs the Reds'
# larger box, this->0x108=8). Sets common velocity/idle-wobble defaults
# (+0x258/25c/260, +0x3c/40/44, +0x254=0xffff). Then checks the SAME
# 3-bit Type value against 4 and 5 - values FSALib does NOT document
# (only 0-2 are named "Red"/"Blue"/"Red hidden in bush") - suggesting
# undocumented Tektite behavior variants exist. Types 4/5 get an
# IMMEDIATE-hop setup: a PRNG-derived randomized per-instance idle-wobble
# phase (via the confirmed global LCG, reading the shared runtime wave
# table lbl_8052EBC0 - the SAME table ZLDA/KETH's idle animations use)
# and this->0x230=1 (an active/jumping state immediately). All other
# types get a DELAYED-hop setup instead: a PRNG-randomized COOLDOWN timer
# at this->0x238 and this->0x230=0 (starts idle, hops after the delay).
# Both paths set this->0xb0 (the shared "flags word" convention, 0x11101
# for the delayed path, 0 for the immediate path) and this->0x250 (0 vs
# 2, presumably an animation/behavior-variant selector).
.text
.balign 4
.global fn_8015512C

fn_8015512C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 29
    stw 0, 0x90(3)
    lwz 0, 0x90(3)
    clrlwi. 0, 0, 31
    .4byte 0x40820040 # bne .L_801551B0
    .4byte 0xC002A3BC # lfs f0, lbl_8053D35C@sda21(r0)
    li 0, 0x4
    .4byte 0xC042A39C # lfs f2, lbl_8053D33C@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022A3C0 # lfs f1, lbl_8053D360@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002A3B4 # lfs f0, lbl_8053D354@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x108(31)
    .4byte 0x4800004C # b .L_801551F8
L_801551B0:
    .4byte 0xC002A3C4 # lfs f0, lbl_8053D364@sda21(r0)
    li 0, 0x8
    .4byte 0xC062A3C0 # lfs f3, lbl_8053D360@sda21(r0)
    stfs 0, 0x54(31)
    .4byte 0xC042A3B4 # lfs f2, lbl_8053D354@sda21(r0)
    stfs 0, 0x58(31)
    .4byte 0xC022A3C8 # lfs f1, lbl_8053D368@sda21(r0)
    stfs 0, 0x5c(31)
    .4byte 0xC002A3CC # lfs f0, lbl_8053D36C@sda21(r0)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x108(31)
L_801551F8:
    .4byte 0xC002A390 # lfs f0, lbl_8053D330@sda21(r0)
    lis 6, 0x1
    subi 0, 6, 0x1
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    sth 0, 0x254(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_80155234
    cmplwi 0, 0x5
    .4byte 0x40820104 # bne .L_80155334
L_80155234:
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002A394 # lfs f0, lbl_8053D334@sda21(r0)
    lwz 4, 0xb4(11)
    mr 3, 31
    .4byte 0xC042A3A8 # lfs f2, lbl_8053D348@sda21(r0)
    addi 5, 1, 0x8
    mullw 4, 4, 0
    addi 6, 1, 0x14
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(11)
    lwz 0, 0xb4(11)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    sth 0, 0x8(1)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lwz 0, 0x14(1)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801552C8
    lhz 3, 0x8(1)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x8(1)
L_801552C8:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 6, 3, lbl_8052EBC0@l
    .4byte 0xC042A3AC # lfs f2, lbl_8053D34C@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002A39C # lfs f0, lbl_8053D33C@sda21(r0)
    lfsx 1, 6, 0
    li 5, 0x0
    li 3, 0x2
    li 0, 0x1
    fmuls 1, 2, 1
    stfs 1, 0x258(31)
    lhz 4, 0x8(1)
    rlwinm 4, 4, 30, 18, 28
    add 4, 6, 4
    lfs 1, 0x4(4)
    fmuls 1, 2, 1
    stfs 1, 0x25c(31)
    stfs 0, 0x44(31)
    stw 5, 0x238(31)
    lwz 4, 0x90(31)
    clrlwi 4, 4, 31
    stw 4, 0x90(31)
    stw 5, 0xb0(31)
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x48000070 # b .L_801553A0
L_80155334:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC002A394 # lfs f0, lbl_8053D334@sda21(r0)
    lwz 5, 0xb4(7)
    li 3, 0x0
    .4byte 0xC042A3D0 # lfs f2, lbl_8053D370@sda21(r0)
    addi 0, 6, 0x1101
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(7)
    lwz 4, 0xb4(7)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    addi 4, 4, 0x14
    stw 4, 0x238(31)
    stw 3, 0x250(31)
    stw 0, 0xb0(31)
    stw 3, 0x230(31)
L_801553A0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

