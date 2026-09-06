.section extab, "a"
.balign 4
.global etb_80007EAC
etb_80007EAC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007EAC, 8

.section extabindex, "a"
.balign 4
.global eti_80014F80
eti_80014F80:
    .4byte fn_801BDEEC
    .4byte 0x00000208
    .4byte etb_80007EAC
.size eti_80014F80, 12

.text
.balign 4
.global fn_801BDEEC

# fn_801BDEEC(this) - BMST's real draw(). Builds the standard shared
# material struct (overriding the blend/color bytes to a fixed tint
# 0x80,0x80,0x80 when this->0x248==2 - a "damaged/faded" tint mode).
# Draws the main body-segment model via the CONFIRMED fn_801F06F0
# using a dedicated model table (lbl_804693D8).
#
# When flag bit 18 (0x2000, the SAME bit setParams sets from
# this->0x2b0) is CLEAR: does a one-time GLOBAL latch check
# (lbl_8053AC08, a byte flag) - on the first segment to reach this
# code, initializes a small global byte array (lbl_8053AC0C, 4 bytes,
# set to 0xFF) - plausibly a "have we drawn any Big Moldorm segment
# yet this frame" or shared visual-state init, run once regardless of
# how many segments exist.
#
# Then computes a position by indexing a GLOBAL anchor/socket-position
# table (`lbl_8052EBC0`, already documented elsewhere as "a shared set
# of container socket/anchor positions" - see extab_800f8bac.s) using
# this->0x2a8 (BMST's own jittered per-instance value) as the index,
# blending it against this segment's own position (this->0xc/0x10/0x14)
# with BMST-specific constants (lbl_8053ECA4/A8/AC/B0) - consistent
# with using shared anchor slots to space/align body segments along
# the Moldorm's body chain (an "undulating snake body" visual, fitting
# the classic Moldorm enemy). Finishes by calling the already-landed
# fn_8013AC90 with the computed position and the lbl_8053AC0C array,
# passing a boolean computed from a distance/threshold comparison.
fn_801BDEEC:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x14
    stw 31, 0x5c(1)
    mr 31, 3
    stw 0, 0x24(1)
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_801BDF78
L_801BDF18:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801BDF78:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801BDF18
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x24(1)
    stw 5, 0x28(1)
    stw 5, 0x2c(1)
    stb 5, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 4, 0x33(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stb 5, 0x37(1)
    stb 5, 0x38(1)
    stb 5, 0x39(1)
    stb 4, 0x3a(1)
    stw 3, 0x3c(1)
    stb 4, 0x40(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stw 6, 0x44(1)
    stw 5, 0x48(1)
    stw 0, 0x4c(1)
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_801BE008
    li 0, 0x80
    stb 0, 0x28(1)
    stb 0, 0x29(1)
    stb 0, 0x2a(1)
L_801BE008:
    .4byte 0xC022BD00 # lfs f1, lbl_8053ECA0@sda21(r0)
    lis 3, lbl_804693D8@ha
    addi 4, 3, lbl_804693D8@l
    addi 6, 1, 0x14
    fmr 2, 1
    mr 3, 31
    li 5, 0x13c
    li 7, -0x1
    bl fn_801F06F0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x408200AC # bne .L_801BE0E0
    .4byte 0x880D9048 # lbz r0, lbl_8053AC08@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820024 # bne .L_801BE064
    li 4, 0xff
    .4byte 0x386D904C # li r3, lbl_8053AC0C@sda21
    li 0, 0x1
    .4byte 0x988D904C # stb r4, lbl_8053AC0C@sda21(r0)
    stb 4, 0x1(3)
    stb 4, 0x2(3)
    stb 4, 0x3(3)
    .4byte 0x980D9048 # stb r0, lbl_8053AC08@sda21(r0)
L_801BE064:
    lha 0, 0x2a8(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042BD08 # lfs f2, lbl_8053ECA8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 1, 0x10(31)
    add 3, 4, 0
    .4byte 0xC0A2BD04 # lfs f5, lbl_8053ECA4@sda21(r0)
    lfs 4, 0x4(3)
    li 6, 0x0
    fadds 0, 5, 1
    .4byte 0xC062BD0C # lfs f3, lbl_8053ECAC@sda21(r0)
    fmadds 4, 2, 4, 1
    lfsx 2, 4, 0
    lfs 1, 0xc(31)
    fadds 4, 5, 4
    lfs 5, 0x14(31)
    fmadds 1, 3, 2, 1
    stfs 5, 0x10(1)
    fcmpo cr0, 4, 0
    stfs 1, 0x8(1)
    stfs 4, 0xc(1)
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801BE0C8
    li 6, 0x1
L_801BE0C8:
    .4byte 0xC022BD10 # lfs f1, lbl_8053ECB0@sda21(r0)
    addi 3, 1, 0x8
    .4byte 0x388D904C # li r4, lbl_8053AC0C@sda21
    li 5, 0x0
    li 7, 0x0
    bl fn_8013AC90
L_801BE0E0:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

