# fn_800F555C: the OIWA (falling-boulder) scheduler's largest method so far
# (see project_fsa_extab_bug_resolved.md / project_fsa_shared_effect_subsystem_crossref.md).
# Referenced by fn_800F5248 as its phase-3 handler. CONFIRMED (dispatch-
# table cross-reference, not a guess): spawns "KMRI" ("Smoke when cracking a
# jar") via fn_801F9484 near the end of its phase-0 branch (this->0x240==0)
# - strongly suggesting this whole function is OIWA's "break apart on
# impact/collision" handler, generalizing the same smoke-puff effect used
# elsewhere for breakable jars. Also CONFIRMED: plays sound 0x3cf via the
# documented fn_8013CC50 primitive and fires a notification via fn_801F0E34
# with magicConstant 0x4002c - both project_fsa_effect_playback_primitive.md
# primitives, reused again here.
#
# Structure (this->0x240 dispatches into 3 main branches, matching the
# phase-tracking convention seen throughout this cluster):
# - branch 0: checks this->0x4 against 4 players' IDs (fn_8023DE58 per
#   player index, matching the player-registry pattern from
#   project_fsa_player_registry_discovery.md), then a hitbox-size lookup
#   chain (fn_80239914/fn_80239108/fn_80238BC4) selects between two preset
#   sizes (lbl_8053BED8/lbl_8053BEDC) written to this->0x254/0x258, then
#   iterates 4 players x 8 boxes each via fn_80238CB4/fn_80230FD0, and
#   finally fn_80238D50 - all NEW, unexplored functions forming what looks
#   like a dedicated hitbox/collision subsystem (0x8023xxxx address range) -
#   worth a dedicated investigation if this thread continues.
# - branch 1: a per-frame "settle" tick incrementing a counter
#   (this->0x231) every 15 frames, checking whether the boulder's velocity
#   (this->0x3c/0x40/0x44) has gone near-zero, transitioning between 4
#   named sub-states (stored redundantly at both this->0x232 and
#   this->0x234) via fn_8022461C's classification (the same gate function
#   fn_800F51D8 also uses) applied to this->0xc (position), plus the SAME
#   "KMRI"-smoke-spawn + sound 0x3cf + notification sequence when settling
#   completes, and a large block using the confirmed global PRNG (see
#   reference_fsa_global_prng.md) with a DIFFERENT table pair
#   (lbl_8053BEA8/lbl_8053BE8C, twice) to compute a randomized scatter
#   offset before checking 4 players x 8 boxes again (fn_8022E088 this
#   time, plus fn_8022DF48 on a hit) and finally spawning via fn_801F9484
#   with a DIFFERENT code (0x4B4D5249 = "KMRI" again, byte-for-byte
#   identical to the phase-0 spawn).
# - default/else: state-machine cleanup - clamps this->0x3c/0x40 toward 0 in
#   small table-driven steps (lbl_8053BEF4/EF8/BEF0), decays this->0x44
#   toward the shared lbl_8053BE94 constant, and does the same paired-
#   single position accumulation (this->0xc/0x3c, this->0x14/0x44) seen
#   throughout this whole cluster (fn_800F4C70, fn_800F5248, etc).
#
# NOT YET UNDERSTOOD in detail: the exact hitbox/collision subsystem
# (fn_80239914/80239108/8023BC4/8023DE58/80238E08/80238CB4/80230FD0/
# 80238D50/8022E088/8022DF48), or the precise meaning of the this->0x232/
# 0x233/0x234 sub-state byte triplet. Flagging honestly rather than
# guessing, per this project's established practice.
.section extab, "a"
.balign 4
.global etb_800056F8
etb_800056F8:
    .4byte 0x310A0000
    .4byte 0x00000000
.size etb_800056F8, 8

.section extabindex, "a"
.balign 4
.global eti_800119A4
eti_800119A4:
    .4byte fn_800F555C
    .4byte 0x000008AC
    .4byte etb_800056F8
.size eti_800119A4, 12

.text
.balign 4
.global fn_800F555C

fn_800F555C:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stmw 26, 0x78(1)
    mr 28, 3
    .4byte 0xC0028F34 # lfs f0, lbl_8053BED4@sda21(r0)
    lfs 4, 0x10(3)
    li 30, 0x0
    lfs 1, 0xc(3)
    li 27, 0x0
    fadds 3, 0, 4
    fadds 2, 0, 1
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x4c(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    stfs 2, 0x48(1)
L_800F55C4:
    mr 3, 27
    bl fn_8023DE58
    lwz 0, 0x4(28)
    cmpw 0, 3
    .4byte 0x40820008 # bne .L_800F55DC
    li 30, 0x1
L_800F55DC:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFE0 # blt .L_800F55C4
    lwz 0, 0x240(28)
    cmpwi 0, 0x0
    .4byte 0x40820190 # bne .L_800F5780
    lwz 4, 0x4(28)
    addi 3, 1, 0x40
    lwz 5, 0x198(28)
    bl fn_80239914
    lwz 3, 0x198(28)
    bl fn_80239108
    cmpwi 3, 0x2
    .4byte 0x41800080 # blt .L_800F5690
    lwz 3, 0x198(28)
    bl fn_80238BC4
    mr. 26, 3
    .4byte 0x41800094 # blt .L_800F56B4
    cmpwi 26, 0x4
    .4byte 0x4080008C # bge .L_800F56B4
    lwz 3, 0x244(28)
    cmpwi 26, 0x2
    addi 0, 3, 0x1
    stw 0, 0x244(28)
    .4byte 0x4182003C # beq .L_800F5678
    .4byte 0x40800014 # bge .L_800F5654
    cmpwi 26, 0x0
    .4byte 0x41820018 # beq .L_800F5660
    .4byte 0x40800020 # bge .L_800F566C
    .4byte 0x48000064 # b .L_800F56B4
L_800F5654:
    cmpwi 26, 0x4
    .4byte 0x4080005C # bge .L_800F56B4
    .4byte 0x48000028 # b .L_800F5684
L_800F5660:
    .4byte 0xC0028F38 # lfs f0, lbl_8053BED8@sda21(r0)
    stfs 0, 0x254(28)
    .4byte 0x4800004C # b .L_800F56B4
L_800F566C:
    .4byte 0xC0028F3C # lfs f0, lbl_8053BEDC@sda21(r0)
    stfs 0, 0x254(28)
    .4byte 0x48000040 # b .L_800F56B4
L_800F5678:
    .4byte 0xC0028F38 # lfs f0, lbl_8053BED8@sda21(r0)
    stfs 0, 0x258(28)
    .4byte 0x48000034 # b .L_800F56B4
L_800F5684:
    .4byte 0xC0028F3C # lfs f0, lbl_8053BEDC@sda21(r0)
    stfs 0, 0x258(28)
    .4byte 0x48000028 # b .L_800F56B4
L_800F5690:
    lwz 0, 0x244(28)
    cmpwi 0, 0x3c
    .4byte 0x4080000C # bge .L_800F56A4
    li 0, 0x0
    stw 0, 0x244(28)
L_800F56A4:
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    stfs 0, 0x254(28)
    stfs 0, 0x258(28)
    stfs 0, 0x25c(28)
L_800F56B4:
    lwz 0, 0x244(28)
    cmpwi 0, 0x3c
    .4byte 0x418005EC # blt .L_800F5CA8
    li 0, 0x1
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    stw 0, 0x240(28)
    cmpwi 26, 0x2
    stfs 0, 0x254(28)
    stfs 0, 0x258(28)
    stfs 0, 0x25c(28)
    .4byte 0x41820040 # beq .L_800F571C
    .4byte 0x40800014 # bge .L_800F56F4
    cmpwi 26, 0x0
    .4byte 0x41820018 # beq .L_800F5700
    .4byte 0x40800024 # bge .L_800F5710
    .4byte 0x48000048 # b .L_800F5738
L_800F56F4:
    cmpwi 26, 0x4
    .4byte 0x40800040 # bge .L_800F5738
    .4byte 0x48000030 # b .L_800F572C
L_800F5700:
    li 0, 0x0
    stb 0, 0x232(28)
    stb 0, 0x234(28)
    .4byte 0x4800002C # b .L_800F5738
L_800F5710:
    stb 0, 0x232(28)
    stb 0, 0x234(28)
    .4byte 0x48000020 # b .L_800F5738
L_800F571C:
    li 0, 0x2
    stb 0, 0x232(28)
    stb 0, 0x234(28)
    .4byte 0x48000010 # b .L_800F5738
L_800F572C:
    li 0, 0x3
    stb 0, 0x232(28)
    stb 0, 0x234(28)
L_800F5738:
    lwz 3, 0x198(28)
    bl fn_80238E08
    li 29, 0x0
    lis 26, 0x1
L_800F5748:
    lwz 27, 0x198(28)
    mr 3, 29
    bl fn_80238CB4
    cmpw 3, 27
    .4byte 0x40820010 # bne .L_800F5768
    mr 3, 29
    addi 4, 26, 0x12
    bl fn_80230FD0
L_800F5768:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD8 # blt .L_800F5748
    lwz 3, 0x198(28)
    bl fn_80238D50
    .4byte 0x4800052C # b .L_800F5CA8
L_800F5780:
    cmpwi 0, 0x1
    .4byte 0x40820468 # bne .L_800F5BEC
    lbz 3, 0x231(28)
    addi 0, 3, 0x1
    stb 0, 0x231(28)
    lbz 0, 0x231(28)
    cmplwi 0, 0xf
    .4byte 0x40820018 # bne .L_800F57B4
    lwz 3, 0x23c(28)
    li 0, 0x0
    addi 3, 3, 0x1
    stw 3, 0x23c(28)
    stb 0, 0x231(28)
L_800F57B4:
    lwz 0, 0x23c(28)
    .4byte 0xC0228F40 # lfs f1, lbl_8053BEE0@sda21(r0)
    clrlwi 0, 0, 30
    stw 0, 0x23c(28)
    lfs 0, 0x3c(28)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x4080003C # bge .L_800F580C
    lfs 0, 0x40(28)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x4080002C # bge .L_800F580C
    lfs 1, 0x44(28)
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    fabs 1, 1
    fcmpu cr0, 0, 1
    .4byte 0x40820018 # bne .L_800F580C
    lwz 4, 0x4(28)
    addi 3, 1, 0x40
    lwz 5, 0x198(28)
    bl fn_80239914
    .4byte 0x48000048 # b .L_800F5850
L_800F580C:
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    lfs 0, 0x3c(28)
    fcmpu cr0, 1, 0
    .4byte 0x40820010 # bne .L_800F5828
    lfs 0, 0x40(28)
    fcmpu cr0, 1, 0
    .4byte 0x41820018 # beq .L_800F583C
L_800F5828:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x60
    li 5, 0x0
    bl fn_801F0E34
L_800F583C:
    mr 3, 28
    li 4, 0x2
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
L_800F5850:
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_800F5878
    cmpwi 0, 0xe
    .4byte 0x4182000C # beq .L_800F5878
    cmpwi 0, 0x2
    .4byte 0x408201F4 # bne .L_800F5A68
L_800F5878:
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    addi 3, 28, 0x3c
    .4byte 0xC0228F44 # lfs f1, lbl_8053BEE4@sda21(r0)
    addi 4, 1, 0x1c
    stfs 0, 0x34(1)
    stfs 0, 0x38(1)
    lwz 6, 0x34(1)
    stfs 0, 0x3c(1)
    lwz 5, 0x38(1)
    lwz 0, 0x3c(1)
    stw 6, 0x1c(1)
    stw 5, 0x20(1)
    stw 0, 0x24(1)
    bl fn_800F82CC
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    lfs 0, 0x3c(28)
    fcmpu cr0, 1, 0
    .4byte 0x408201AC # bne .L_800F5A68
    lfs 0, 0x40(28)
    fcmpu cr0, 1, 0
    .4byte 0x408201A0 # bne .L_800F5A68
    bl GetRoomConfigRecord
    lwz 4, 0x4(28)
    li 5, 0x0
    .4byte 0xC0228F28 # lfs f1, lbl_8053BEC8@sda21(r0)
    .4byte 0xC0428EF4 # lfs f2, lbl_8053BE94@sda21(r0)
    bl fn_802D79E8
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC0228F48 # lfs f1, lbl_8053BEE8@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 28
    addi 4, 4, 0x2c
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 28
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x2
    lis 3, 0x19
    stw 0, 0x240(28)
    li 0, -0x1
    .4byte 0xC3A28F4C # lfs f29, lbl_8053BEEC@sda21(r0)
    addi 31, 3, 0x660d
    stb 0, 0x232(28)
    li 29, 0x0
    .4byte 0xC3C28EEC # lfs f30, lbl_8053BE8C@sda21(r0)
    lis 26, 0x4330
    .4byte 0xCBE28F08 # lfd f31, lbl_8053BEA8@sda21(r0)
    lis 27, 0x4b4d
L_800F595C:
    lfs 0, 0xc(28)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stfs 0, 0x28(1)
    lfs 0, 0x10(28)
    stw 26, 0x58(1)
    stfs 0, 0x2c(1)
    lfs 0, 0x14(28)
    stw 26, 0x68(1)
    stfs 0, 0x30(1)
    lwz 0, 0xb4(4)
    mullw 3, 0, 31
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 1, 0x28(1)
    srwi 0, 0, 9
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 30
    fmuls 0, 29, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    subfic 0, 0, 0x12
    xoris 0, 0, 0x8000
    stw 0, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 31
    fadds 0, 1, 0
    stfs 0, 0x28(1)
    lwz 0, 0xb4(4)
    mullw 3, 0, 31
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 1, 0x2c(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 30
    fmuls 0, 29, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    subfic 0, 0, 0x12
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 0, 0x68(1)
    fsubs 0, 0, 31
    fadds 0, 1, 0
    stfs 0, 0x2c(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(28)
    addi 4, 27, 0x5249
    addi 6, 1, 0x28
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 29, 29, 0x1
    cmpwi 29, 0x8
    .4byte 0x4180FEF8 # blt .L_800F595C
L_800F5A68:
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_800F5B00
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    cmpwi 30, 0x1
    .4byte 0xC0028F38 # lfs f0, lbl_8053BED8@sda21(r0)
    li 0, -0x1
    stfs 1, 0x3c(28)
    stfs 1, 0x40(28)
    stfs 0, 0x44(28)
    lbz 3, 0x232(28)
    stb 3, 0x233(28)
    stb 0, 0x232(28)
    .4byte 0x40820058 # bne .L_800F5B00
    bl GetRoomConfigRecord
    lwz 4, 0x4(28)
    li 5, 0x0
    .4byte 0xC0228F50 # lfs f1, lbl_8053BEF0@sda21(r0)
    .4byte 0xC0428EF4 # lfs f2, lbl_8053BE94@sda21(r0)
    bl fn_802D79E8
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC0228F48 # lfs f1, lbl_8053BEE8@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 28
    addi 4, 4, 0x2c
    li 5, 0x0
    bl fn_801F0E34
L_800F5B00:
    lbz 0, 0x232(28)
    extsb 0, 0
    cmpwi 0, -0x1
    .4byte 0x4082019C # bne .L_800F5CA8
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    lfs 0, 0x44(28)
    fcmpu cr0, 1, 0
    .4byte 0x4082018C # bne .L_800F5CA8
    lbz 0, 0x234(28)
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_800F5B8C
    lbz 0, 0x233(28)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_800F5B74
    .4byte 0x40800014 # bge .L_800F5B50
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_800F5B5C
    .4byte 0x40800020 # bge .L_800F5B68
    .4byte 0x4800015C # b .L_800F5CA8
L_800F5B50:
    cmpwi 0, 0x4
    .4byte 0x40800154 # bge .L_800F5CA8
    .4byte 0x48000028 # b .L_800F5B80
L_800F5B5C:
    li 0, 0x3
    stb 0, 0x232(28)
    .4byte 0x48000144 # b .L_800F5CA8
L_800F5B68:
    li 0, 0x2
    stb 0, 0x232(28)
    .4byte 0x48000138 # b .L_800F5CA8
L_800F5B74:
    li 0, 0x0
    stb 0, 0x232(28)
    .4byte 0x4800012C # b .L_800F5CA8
L_800F5B80:
    li 0, 0x1
    stb 0, 0x232(28)
    .4byte 0x48000120 # b .L_800F5CA8
L_800F5B8C:
    lbz 0, 0x233(28)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_800F5BD4
    .4byte 0x40800014 # bge .L_800F5BB0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_800F5BBC
    .4byte 0x40800020 # bge .L_800F5BC8
    .4byte 0x480000FC # b .L_800F5CA8
L_800F5BB0:
    cmpwi 0, 0x4
    .4byte 0x408000F4 # bge .L_800F5CA8
    .4byte 0x48000028 # b .L_800F5BE0
L_800F5BBC:
    li 0, 0x2
    stb 0, 0x232(28)
    .4byte 0x480000E4 # b .L_800F5CA8
L_800F5BC8:
    li 0, 0x3
    stb 0, 0x232(28)
    .4byte 0x480000D8 # b .L_800F5CA8
L_800F5BD4:
    li 0, 0x1
    stb 0, 0x232(28)
    .4byte 0x480000CC # b .L_800F5CA8
L_800F5BE0:
    li 0, 0x0
    stb 0, 0x232(28)
    .4byte 0x480000C0 # b .L_800F5CA8
L_800F5BEC:
    li 27, 0x0
L_800F5BF0:
    lwz 26, 0x4(28)
    mr 3, 27
    bl fn_8023DE58
    cmpw 3, 26
    .4byte 0x40820098 # bne .L_800F5C98
    lfs 29, 0x60(28)
    li 26, 0x0
    lfs 0, 0xc(28)
    lfs 31, 0x68(28)
    lfs 30, 0x64(28)
    fadds 29, 29, 0
    lfs 1, 0x10(28)
    fadds 31, 31, 0
    lfs 28, 0x6c(28)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_800F5C30:
    mr 3, 27
    mr 4, 26
    addi 5, 1, 0x10
    bl fn_8022E088
    lfs 1, 0x10(1)
    li 0, 0x0
    fcmpo cr0, 1, 29
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_800F5C78
    lfs 0, 0x14(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_800F5C78
    fcmpo cr0, 1, 31
    .4byte 0x40800010 # bge .L_800F5C78
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_800F5C78
    li 0, 0x1
L_800F5C78:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_800F5C8C
    mr 3, 27
    bl fn_8022DF48
    .4byte 0x48000010 # b .L_800F5C98
L_800F5C8C:
    addi 26, 26, 0x1
    cmpwi 26, 0x8
    .4byte 0x4180FF9C # blt .L_800F5C30
L_800F5C98:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF50 # blt .L_800F5BF0
    .4byte 0x48000130 # b .L_800F5DD4
L_800F5CA8:
    lbz 0, 0x232(28)
    extsb 0, 0
    cmpwi 0, 0x1
    .4byte 0x41820054 # beq .L_800F5D08
    .4byte 0x40800014 # bge .L_800F5CCC
    cmpwi 0, -0x1
    .4byte 0x418200C8 # beq .L_800F5D88
    .4byte 0x40800018 # bge .L_800F5CDC
    .4byte 0x480000C0 # b .L_800F5D88
L_800F5CCC:
    cmpwi 0, 0x3
    .4byte 0x41820090 # beq .L_800F5D60
    .4byte 0x408000B4 # bge .L_800F5D88
    .4byte 0x4800005C # b .L_800F5D34
L_800F5CDC:
    lfs 2, 0x3c(28)
    .4byte 0xC0228F54 # lfs f1, lbl_8053BEF4@sda21(r0)
    .4byte 0xC0028F50 # lfs f0, lbl_8053BEF0@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x3c(28)
    lfs 1, 0x3c(28)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082008C # bne .L_800F5D88
    stfs 0, 0x3c(28)
    .4byte 0x48000084 # b .L_800F5D88
L_800F5D08:
    lfs 2, 0x3c(28)
    .4byte 0xC0228F54 # lfs f1, lbl_8053BEF4@sda21(r0)
    .4byte 0xC0028F58 # lfs f0, lbl_8053BEF8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x3c(28)
    lfs 1, 0x3c(28)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820060 # bne .L_800F5D88
    stfs 0, 0x3c(28)
    .4byte 0x48000058 # b .L_800F5D88
L_800F5D34:
    lfs 2, 0x40(28)
    .4byte 0xC0228F54 # lfs f1, lbl_8053BEF4@sda21(r0)
    .4byte 0xC0028F50 # lfs f0, lbl_8053BEF0@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x40(28)
    lfs 1, 0x40(28)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_800F5D88
    stfs 0, 0x40(28)
    .4byte 0x4800002C # b .L_800F5D88
L_800F5D60:
    lfs 2, 0x40(28)
    .4byte 0xC0228F54 # lfs f1, lbl_8053BEF4@sda21(r0)
    .4byte 0xC0028F58 # lfs f0, lbl_8053BEF8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x40(28)
    lfs 1, 0x40(28)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_800F5D88
    stfs 0, 0x40(28)
L_800F5D88:
    lfs 2, 0x44(28)
    .4byte 0xC0228F5C # lfs f1, lbl_8053BEFC@sda21(r0)
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(28)
    psq_l 2, 0xc(28), 0, 0
    psq_l 1, 0x3c(28), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(28), 0, 0
    psq_l 2, 0x14(28), 1, 0
    psq_l 1, 0x44(28), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(28), 1, 0
    lfs 1, 0x14(28)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800F5DD4
    stfs 0, 0x14(28)
    stfs 0, 0x44(28)
L_800F5DD4:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    lmw 26, 0x78(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

