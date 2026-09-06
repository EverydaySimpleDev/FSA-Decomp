.section extab, "a"
.balign 4
.global etb_8000D5B4
etb_8000D5B4:
    .4byte 0x50080000
    .4byte 0x00000000
.size etb_8000D5B4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C960
eti_8001C960:
    .4byte fn_803066F0
    .4byte 0x000001E0
    .4byte etb_8000D5B4
.size eti_8001C960, 12

.text
.balign 4
.global fn_803066F0

# fn_803066F0(playerIndex, maxOutputCount) - the SIBLING consumer for
# fn_80307830's 16-slot "transient effect marker" table (lbl_80504A38,
# see project_fsa_shadow_marker_system_and_shared_draw.md and
# extab_803064a8.s, the 40-slot table's own consumer with the same
# overall shape). Drains all 16 slots across up to 5 passes matched
# against each slot's ->0x0 field (same staggering scheme). For each
# occupied slot (->0x24==1, no expiry-flag variant here) matching
# owner (fn_8023DE58(resolvedPlayer)==slot->0x8) with the same
# special-case game-mode override as fn_803064A8, projects the world
# position to this player's screen space (fn_8023D9B0/fn_8023D4F8),
# clamp-culls against the same 0x180/0xE0 screen bounds, and ALSO
# culls if slot->0x20>=4 and this player already has 4 markers of that
# kind on screen (a per-kind on-screen count limit, `r28` counter -
# genuinely new detail not present in the 40-slot consumer).
#
# Packs survivors into the SAME per-player output array
# (`lbl_80506DE8[playerIndex*0x68] + 0x18`, i.e. immediately after
# fn_803064A8's own output region in the same per-player struct -
# confirms both consumers share one combined output buffer, just
# different sub-regions) with the same screen X/Y + packed-bitfield
# marker descriptor shape. Returns the count of entries written.
fn_803066F0:
    stwu 1, -0x30(1)
    mflr 0
    lis 3, lbl_80506DE8@ha
    stw 0, 0x34(1)
    addi 0, 3, lbl_80506DE8@l
    stmw 22, 0x8(1)
    mr 22, 4
    mulli 4, 22, 0x68
    mr 23, 5
    mr 3, 22
    li 29, 0x0
    add 4, 0, 4
    li 28, 0x0
    addi 30, 4, 0x18
    bl fn_8022EA0C
    mulli 5, 22, 0x280
    lis 4, lbl_80504A38@ha
    mr 27, 3
    addi 0, 4, lbl_80504A38@l
    li 26, 0x5
    add 31, 0, 5
L_80306744:
    mr 25, 31
    li 24, 0x0
L_8030674C:
    lbz 0, 0x24(25)
    cmplwi 0, 0x1
    .4byte 0x4082014C # bne .L_803068A0
    lwz 0, 0x0(25)
    cmpw 0, 26
    .4byte 0x40820140 # bne .L_803068A0
    mr 3, 27
    bl fn_8023DE58
    lwz 0, 0x8(25)
    cmpw 0, 3
    .4byte 0x40820034 # bne .L_803067A8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    subfic 0, 0, 0xb
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x40820010 # bne .L_8030679C
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_803067B8
L_8030679C:
    lbz 0, 0x23(25)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803067B8
L_803067A8:
    li 0, 0x1
    stb 0, 0x25(25)
    addi 25, 25, 0x28
    .4byte 0x480000F0 # b .L_803068A4
L_803067B8:
    mr 4, 27
    addi 3, 25, 0x10
    bl fn_8023D9B0
    clrlwi 22, 3, 23
    mr 4, 27
    addi 3, 25, 0x10
    bl fn_8023D4F8
    cmplwi 22, 0x180
    clrlwi 6, 3, 24
    .4byte 0x4182000C # beq .L_803067E8
    cmplwi 6, 0xe0
    .4byte 0x40820014 # bne .L_803067F8
L_803067E8:
    li 0, 0x1
    stb 0, 0x25(25)
    addi 25, 25, 0x28
    .4byte 0x480000B0 # b .L_803068A4
L_803067F8:
    lbz 0, 0x20(25)
    cmplwi 0, 0x4
    .4byte 0x41800020 # blt .L_80306820
    cmpwi 28, 0x4
    .4byte 0x41800014 # blt .L_8030681C
    li 0, 0x1
    stb 0, 0x25(25)
    addi 25, 25, 0x28
    .4byte 0x4800008C # b .L_803068A4
L_8030681C:
    addi 28, 28, 0x1
L_80306820:
    srawi 0, 22, 8
    addi 29, 29, 0x1
    clrlwi 3, 0, 24
    lbz 0, 0x3(30)
    rlwimi 0, 3, 0, 31, 31
    lwz 8, 0x1c(25)
    stb 0, 0x3(30)
    li 0, 0x1
    lbz 5, 0x20(25)
    cmpw 29, 23
    stb 22, 0x2(30)
    lbz 4, 0x21(25)
    stb 6, 0x1(30)
    lbz 3, 0x22(25)
    lbz 6, 0x3(30)
    rlwimi 6, 8, 25, 29, 30
    stb 0, 0x25(25)
    stb 6, 0x3(30)
    stb 8, 0x0(30)
    lbz 0, 0x3(30)
    rlwimi 0, 5, 5, 24, 26
    stb 0, 0x3(30)
    lbz 0, 0x3(30)
    rlwimi 0, 4, 4, 27, 27
    stb 0, 0x3(30)
    lbz 0, 0x3(30)
    rlwimi 0, 3, 3, 28, 28
    stb 0, 0x3(30)
    .4byte 0x4180000C # blt .L_8030689C
    mr 3, 29
    .4byte 0x48000024 # b .L_803068BC
L_8030689C:
    addi 30, 30, 0x4
L_803068A0:
    addi 25, 25, 0x28
L_803068A4:
    addi 24, 24, 0x1
    cmpwi 24, 0x10
    .4byte 0x4180FEA0 # blt .L_8030674C
    subic. 26, 26, 0x1
    .4byte 0x4080FE90 # bge .L_80306744
    mr 3, 29
L_803068BC:
    lmw 22, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

