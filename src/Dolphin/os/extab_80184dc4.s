.section extab, "a"
.balign 4
.global etb_8000764C
etb_8000764C:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000764C, 8

.section extabindex, "a"
.balign 4
.global eti_80014398
eti_80014398:
    .4byte fn_80184DC4
    .4byte 0x000001FC
    .4byte etb_8000764C
.size eti_80014398, 12

.text
.balign 4
.global fn_80184DC4

# fn_80184DC4(this) - WNWN's real draw (see
# project_fsa_wnwn_actor_progress.md). Builds a large local render
# descriptor record on the stack (a 16-byte sequential index array
# `0..15` at `0x14-0x23`, plus many fixed flag/mode bytes at
# `0x24-0x4c` - the same kind of richer record `fn_801F06F0` accepts
# elsewhere, just with more fields populated than RIVR/GDMN/FAGN's
# draws use).
#
# Draws a TRAIL of up to 9 "echo" copies of itself: starting from index
# 0 or 1 (depending on whether `this->0x260 < 0`), walks the position
# array `this->0x294` (the first of the 2 ctor-constructed 10-element
# arrays, see extab_80201fc8.s) up to index 8, temporarily overwriting
# the actor's OWN position (`this->0xc/0x10/0x14`) with each trail
# entry's stored position and calling the CONFIRMED render primitive
# `fn_801F06F0` against a dedicated resource table `lbl_80466ED8`
# (id `0x13b`, override 7) for each echo. After the loop, restores the
# ORIGINAL position (saved before the loop) and draws once more - the
# "head" - using a DIFFERENT resource index derived from
# `this->0x264 + 0x134` (a per-instance animation-variant offset set in
# setParams). This is an afterimage/trail-chain rendering technique,
# similar in spirit to the position-trail-predictor lineage
# (SLK2/TZOK) but implemented via an explicit stored-position array
# rather than the shared `fn_801D1974` base.
fn_80184DC4:
    stwu 1, -0x70(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x74(1)
    li 0, -0x1
    addi 9, 1, 0x14
    stmw 26, 0x58(1)
    mr 31, 3
    stw 0, 0x24(1)
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_80184E50
L_80184DF0:
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
L_80184E50:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80184DF0
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x24(1)
    li 26, 0x0
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
    lwz 0, 0x260(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    cmpwi 0, 0x0
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x418000C0 # blt .L_80184FA0
    li 26, 0x1
    .4byte 0x480000B8 # b .L_80184FA0
L_80184EEC:
    lis 3, lbl_80466ED8@ha
    li 28, 0x0
    addi 30, 3, lbl_80466ED8@l
    li 29, -0x1
    .4byte 0x4800004C # b .L_80184F48
L_80184F00:
    lfs 0, 0x294(27)
    mr 3, 31
    .4byte 0xC022AFA0 # lfs f1, lbl_8053DF40@sda21(r0)
    mr 4, 30
    stfs 0, 0xc(31)
    addi 6, 1, 0x14
    fmr 2, 1
    li 5, 0x13b
    lfs 0, 0x298(27)
    li 7, 0x7
    stfs 0, 0x10(31)
    lfs 0, 0x29c(27)
    stfs 0, 0x14(31)
    stb 28, 0x34(1)
    stb 29, 0x31(1)
    bl fn_801F06F0
    addi 27, 27, 0xc
    addi 26, 26, 0x1
L_80184F48:
    cmpwi 26, 0x9
    .4byte 0x4180FFB4 # blt .L_80184F00
    lfs 0, 0x8(1)
    lis 3, lbl_80466ED8@ha
    .4byte 0xC022AFA0 # lfs f1, lbl_8053DF40@sda21(r0)
    addi 4, 3, lbl_80466ED8@l
    stfs 0, 0xc(31)
    li 0, 0x0
    lfs 3, 0xc(1)
    fmr 2, 1
    lfs 0, 0x10(1)
    mr 3, 31
    stfs 3, 0x10(31)
    addi 6, 1, 0x14
    li 7, 0x0
    stfs 0, 0x14(31)
    stb 0, 0x34(1)
    stb 0, 0x31(1)
    lwz 5, 0x264(31)
    addi 5, 5, 0x134
    bl fn_801F06F0
    .4byte 0x48000010 # b .L_80184FAC
L_80184FA0:
    mulli 0, 26, 0xc
    add 27, 31, 0
    .4byte 0x4BFFFF44 # b .L_80184EEC
L_80184FAC:
    lmw 26, 0x58(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr
