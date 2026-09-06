/*
 * fn_801D5390(this) (0x801D5390-0x801D5B70, 0x7E0/2016 bytes) - dtor_801D46FC's
 * class's STATE-TRANSITION-CONDITION EVALUATOR: a THIRD real compiler jumptable on
 * this->0x248 (`jumptable_804A4AD4`, distinct from fn_801D47DC's `jumptable_804A49FC`
 * and fn_801D4ED4's `jumptable_804A4A68`), where each of the ~26 cases checks a
 * state-specific exit condition (elapsed-time thresholds on this->0x24c, position
 * proximity checks against stored offsets like this->0x5ec/0x5f0/0x5f4/0x5f8, flag
 * bits on this->0x230, or a virtual/registry lookup) and, when satisfied, calls the
 * CONFIRMED fn_801D5D84(this, newState) "commit new state" helper (already referenced
 * by fn_801D4A84) with a hardcoded target state (0x1-0x1a). This is the first place
 * fn_801D5D84's actual CALLERS-with-real-conditions are seen in bulk - every other
 * site that called it did so unconditionally or behind a single simple check.
 *
 * Several cases pick a random slot among up to 4 "child" sub-records (each 0x18
 * bytes, at this+0x0/0x18/0x30/0x48-ish stride, tested via a per-slot validity check
 * fn_801D0B44(this, index) and picked via the CONFIRMED fn_801CD664 PRNG-index
 * helper) and store the winner into this->0x5b0 - a "pick one of my active children"
 * selection, structurally similar to the ring-peer/candidate-selection pattern from
 * fn_801D3320's class earlier in this session.
 *
 * Also confirms further real methods on the this+0x448 sub-object (fn_80217A30,
 * fn_802179EC, fn_80217DE8, fn_8021775C, fn_80217874 - alongside the already-
 * confirmed dtor_80217F80/fn_80217CD8/fn_8021798C), calls the CONFIRMED registry
 * accessor SpatialRegistry_GetBase, and directly manipulates the CONFIRMED global PRNG
 * (`lbl_8053AAF8->0xb4` via `fn_80134DE4`, see [[reference_fsa_global_prng]]).
 * Structure is fully understood; the exact real-world meaning of each of the ~26
 * individual state-transition conditions is NOT all traced (many callees -
 * fn_801CD228/fn_801F68E0/fn_801F6884/fn_80458FF0/fn_801D5B70/fn_801D72C0/
 * fn_801D05F8/fn_801D70BC/fn_801E4790/fn_801E667C - are not yet landed). Needs
 * -mgekko (psq_l/psq_st, one small position-copy case).
 */

.section extab, "a"
.balign 4
.global etb_800085F0
etb_800085F0:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_800085F0, 8

.section extabindex, "a"
.balign 4
.global eti_800159D0
eti_800159D0:
    .4byte fn_801D5390
    .4byte 0x000007E0
    .4byte etb_800085F0
.size eti_800159D0, 12

.text
.balign 4
.global fn_801D5390

fn_801D5390:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 26, 0x48(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmplwi 0, 0x1a
    .4byte 0x418107B0 # bgt .L_801D5B5C
    lis 4, jumptable_804A4AD4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A4AD4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x4(31)
    bl fn_801CD228
    clrlwi. 0, 3, 24
    .4byte 0x41820788 # beq .L_801D5B5C
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820778 # beq .L_801D5B5C
    mr 3, 31
    li 4, 0x1
    bl fn_801D5D84
    .4byte 0x48000768 # b .L_801D5B5C
    lfs 1, 0x14(31)
    .4byte 0xC002C14C # lfs f0, lbl_8053F0EC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820754 # bne .L_801D5B5C
    stfs 0, 0x14(31)
    li 4, 0x2
    bl fn_801D5D84
    .4byte 0x48000744 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800738 # blt .L_801D5B5C
    li 4, 0x3
    bl fn_801D5D84
    .4byte 0x4800072C # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800720 # blt .L_801D5B5C
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    mr 3, 31
    li 4, 0x4
    bl fn_801D5D84
    .4byte 0x480006F0 # b .L_801D5B5C
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418006E0 # blt .L_801D5B5C
    li 29, 0x0
    mr 27, 31
    mr 30, 29
    addi 26, 1, 0x28
    li 28, -0x1
L_801D5494:
    lwz 0, 0x5b0(31)
    cmpw 30, 0
    .4byte 0x41820030 # beq .L_801D54CC
    lbz 0, 0x2a8(27)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801D54CC
    mr 3, 31
    mr 4, 30
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801D54CC
    stw 30, 0x0(26)
    addi 26, 26, 0x4
    addi 29, 29, 0x1
L_801D54CC:
    addi 30, 30, 0x1
    addi 27, 27, 0x18
    cmpwi 30, 0x4
    .4byte 0x4180FFBC # blt .L_801D5494
    cmpwi 29, 0x0
    .4byte 0x40810018 # ble .L_801D54F8
    mr 3, 29
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x28
    lwzx 28, 3, 0
L_801D54F8:
    stw 28, 0x5b0(31)
    mr 3, 31
    li 4, 0x5
    bl fn_801D5D84
    .4byte 0x48000654 # b .L_801D5B5C
    lwz 4, 0x5b0(31)
    cmpwi 4, -0x1
    .4byte 0x418200B0 # beq .L_801D55C4
    mulli 5, 4, 0x18
    addi 0, 5, 0x2a8
    lbzx 0, 31, 0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801D5538
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x40820090 # bne .L_801D55C4
L_801D5538:
    li 29, 0x0
    mr 26, 31
    mr 28, 29
    addi 27, 1, 0x18
    li 30, -0x1
L_801D554C:
    lwz 0, 0x5b0(31)
    cmpw 28, 0
    .4byte 0x41820030 # beq .L_801D5584
    lbz 0, 0x2a8(26)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801D5584
    mr 3, 31
    mr 4, 28
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801D5584
    stw 28, 0x0(27)
    addi 27, 27, 0x4
    addi 29, 29, 0x1
L_801D5584:
    addi 28, 28, 0x1
    addi 26, 26, 0x18
    cmpwi 28, 0x4
    .4byte 0x4180FFBC # blt .L_801D554C
    cmpwi 29, 0x0
    .4byte 0x40810018 # ble .L_801D55B0
    mr 3, 29
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x18
    lwzx 30, 3, 0
L_801D55B0:
    stw 30, 0x5b0(31)
    mr 3, 31
    li 4, 0x5
    bl fn_801D5D84
    .4byte 0x4800059C # b .L_801D5B5C
L_801D55C4:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x4180058C # blt .L_801D5B5C
    li 29, 0x0
    mr 26, 31
    mr 28, 29
    addi 27, 1, 0x8
    li 30, -0x1
L_801D55E8:
    lwz 0, 0x5b0(31)
    cmpw 28, 0
    .4byte 0x41820030 # beq .L_801D5620
    lbz 0, 0x2a8(26)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801D5620
    mr 3, 31
    mr 4, 28
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801D5620
    stw 28, 0x0(27)
    addi 27, 27, 0x4
    addi 29, 29, 0x1
L_801D5620:
    addi 28, 28, 0x1
    addi 26, 26, 0x18
    cmpwi 28, 0x4
    .4byte 0x4180FFBC # blt .L_801D55E8
    cmpwi 29, 0x0
    .4byte 0x40810018 # ble .L_801D564C
    mr 3, 29
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x8
    lwzx 30, 3, 0
L_801D564C:
    lwz 0, 0x5b0(31)
    cmpwi 0, -0x1
    .4byte 0x4082000C # bne .L_801D5660
    cmpwi 30, -0x1
    .4byte 0x41820500 # beq .L_801D5B5C
L_801D5660:
    stw 30, 0x5b0(31)
    mr 3, 31
    li 4, 0x5
    bl fn_801D5D84
    .4byte 0x480004EC # b .L_801D5B5C
    lfs 1, 0x14(31)
    .4byte 0xC002C168 # lfs f0, lbl_8053F108@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408204D8 # bne .L_801D5B5C
    stfs 0, 0x14(31)
    li 4, 0x7
    bl fn_801D5D84
    .4byte 0x480004C8 # b .L_801D5B5C
    lwz 0, 0x230(31)
    clrlwi. 0, 0, 31
    .4byte 0x408204BC # bne .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1e
    .4byte 0x418004B0 # blt .L_801D5B5C
    li 4, 0x8
    bl fn_801D5D84
    .4byte 0x480004A4 # b .L_801D5B5C
    lfs 1, 0x14(31)
    .4byte 0xC002C170 # lfs f0, lbl_8053F110@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820490 # bne .L_801D5B5C
    stfs 0, 0x14(31)
    li 4, 0x9
    bl fn_801D5D84
    .4byte 0x48000480 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800474 # blt .L_801D5B5C
    li 4, 0xa
    bl fn_801D5D84
    .4byte 0x48000468 # b .L_801D5B5C
    bl fn_801D5B70
    .4byte 0x48000460 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800454 # blt .L_801D5B5C
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D572C
    mr 3, 31
    li 4, 0xf
    bl fn_801D5D84
    .4byte 0x48000434 # b .L_801D5B5C
L_801D572C:
    addi 3, 31, 0x448
    bl fn_80217CD8
    mr 3, 31
    li 4, 0xc
    bl fn_801D5D84
    .4byte 0x4800041C # b .L_801D5B5C
    lwz 4, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 4, 0
    .4byte 0x4180040C # blt .L_801D5B5C
    li 4, 0xd
    bl fn_801D5D84
    .4byte 0x48000400 # b .L_801D5B5C
    lbz 3, 0x5cf(31)
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_801D57B0
    subi 0, 3, 0x1
    stb 0, 0x5cf(31)
    lbz 0, 0x5cf(31)
    cmplwi 0, 0x0
    .4byte 0x408203E0 # bne .L_801D5B5C
    addi 3, 31, 0x4c4
    addi 4, 31, 0xc
    bl fn_801D72C0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x60
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0xe
    bl fn_801D5D84
    .4byte 0x480003B0 # b .L_801D5B5C
L_801D57B0:
    lfs 0, 0x3c(31)
    .4byte 0xC022C12C # lfs f1, lbl_8053F0CC@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x408003A0 # bge .L_801D5B5C
    lfs 0, 0x40(31)
    fcmpo cr0, 0, 1
    .4byte 0x40800394 # bge .L_801D5B5C
    li 0, 0xa
    stb 0, 0x5cf(31)
    .4byte 0x48000388 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x6
    .4byte 0x4180037C # blt .L_801D5B5C
    lbz 3, 0x5d0(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801D5804
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x4182000C # beq .L_801D5804
    subi 0, 3, 0x1
    stb 0, 0x5d0(31)
L_801D5804:
    mr 3, 31
    li 4, 0xa
    bl fn_801D5D84
    .4byte 0x4800034C # b .L_801D5B5C
    lbz 4, 0x5cf(31)
    cmplwi 4, 0x0
    .4byte 0x41820058 # beq .L_801D5874
    subi 0, 4, 0x1
    stb 0, 0x5cf(31)
    lbz 0, 0x5cf(31)
    cmplwi 0, 0x0
    .4byte 0x4082032C # bne .L_801D5B5C
    .4byte 0xC022C128 # lfs f1, lbl_8053F0C8@sda21(r0)
    addi 4, 31, 0xc
    bl fn_801D05F8
    mr 5, 3
    addi 3, 31, 0x4c4
    addi 4, 31, 0xc
    bl fn_801D70BC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x69
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x10
    bl fn_801D5D84
    .4byte 0x480002EC # b .L_801D5B5C
L_801D5874:
    lfs 0, 0x3c(31)
    .4byte 0xC022C12C # lfs f1, lbl_8053F0CC@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x408002DC # bge .L_801D5B5C
    lfs 0, 0x40(31)
    fcmpo cr0, 0, 1
    .4byte 0x408002D0 # bge .L_801D5B5C
    li 0, 0xa
    stb 0, 0x5cf(31)
    .4byte 0x480002C4 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x6
    .4byte 0x418002B8 # blt .L_801D5B5C
    lbz 3, 0x5d0(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801D58C8
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x4182000C # beq .L_801D58C8
    subi 0, 3, 0x1
    stb 0, 0x5d0(31)
L_801D58C8:
    mr 3, 31
    li 4, 0xa
    bl fn_801D5D84
    .4byte 0x48000288 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf
    .4byte 0x4180027C # blt .L_801D5B5C
    li 4, 0x12
    bl fn_801D5D84
    .4byte 0x48000270 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf
    .4byte 0x41800264 # blt .L_801D5B5C
    li 4, 0x13
    bl fn_801D5D84
    .4byte 0x48000258 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x32
    .4byte 0x4180024C # blt .L_801D5B5C
    li 4, 0x14
    bl fn_801D5D84
    .4byte 0x48000240 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf
    .4byte 0x41800234 # blt .L_801D5B5C
    li 4, 0xa
    bl fn_801D5D84
    .4byte 0x48000228 # b .L_801D5B5C
    lfs 1, 0xc(31)
    lfs 0, 0x5ec(31)
    .4byte 0xC042C174 # lfs f2, lbl_8053F114@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x4080020C # bge .L_801D5B5C
    lfs 1, 0x10(31)
    lfs 0, 0x5f0(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x408001F4 # bge .L_801D5B5C
    li 4, 0x16
    bl fn_801D5D84
    .4byte 0x480001E8 # b .L_801D5B5C
    lfs 1, 0xc(31)
    lfs 0, 0x5f4(31)
    .4byte 0xC042C174 # lfs f2, lbl_8053F114@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x408001CC # bge .L_801D5B5C
    lfs 1, 0x10(31)
    lfs 0, 0x5f8(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x408001B4 # bge .L_801D5B5C
    li 4, 0x17
    bl fn_801D5D84
    .4byte 0x480001A8 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x32
    .4byte 0x418000C8 # blt .L_801D5A88
    li 0, 0x0
    li 3, 0x4
    stw 0, 0x5b4(31)
    bl fn_801CD664
    stw 3, 0x5b8(31)
    lfs 0, 0x600(31)
    stfs 0, 0x5bc(31)
    lfs 0, 0x604(31)
    stfs 0, 0x5c0(31)
    lwz 0, 0x5fc(31)
    stw 0, 0x4(31)
    psq_l 1, 0x600(31), 0, 0
    lfs 0, 0x608(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    psq_l 1, 0x600(31), 0, 0
    lfs 0, 0x608(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    mr 4, 3
    mr 3, 31
    bl fn_801E4790
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801D5A50
    li 3, 0x4
    bl fn_801CD664
    addi 0, 3, 0x3
    addi 3, 31, 0x448
    stb 0, 0x5d0(31)
    bl fn_80217A30
    .4byte 0x4800002C # b .L_801D5A78
L_801D5A50:
    li 3, 0x2
    bl fn_801CD664
    addi 0, 3, 0x1
    addi 3, 31, 0x448
    stb 0, 0x5d0(31)
    bl fn_802179EC
    addi 3, 31, 0x448
    bl fn_80217DE8
    addi 3, 31, 0x448
    bl fn_80217CD8
L_801D5A78:
    mr 3, 31
    li 4, 0xa
    bl fn_801D5D84
    .4byte 0x480000D8 # b .L_801D5B5C
L_801D5A88:
    lwz 3, 0x5fc(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801D5AC8
    lwz 4, 0x24c(31)
    lis 0, 0x4330
    stw 0, 0x38(1)
    addi 3, 31, 0x448
    subfic 0, 4, 0x32
    .4byte 0xC822C178 # lfd f1, lbl_8053F118@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 1, 0, 1
    bl fn_80217874
    .4byte 0x48000098 # b .L_801D5B5C
L_801D5AC8:
    lwz 4, 0x24c(31)
    lis 0, 0x4330
    stw 0, 0x38(1)
    addi 3, 31, 0x448
    subfic 0, 4, 0x32
    .4byte 0xC822C178 # lfd f1, lbl_8053F118@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 1, 0, 1
    bl fn_8021775C
    .4byte 0x48000068 # b .L_801D5B5C
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820058 # beq .L_801D5B5C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x3
    li 5, 0x0
    bl fn_80134DE4
    mr 3, 31
    li 4, 0x19
    bl fn_801D5D84
    .4byte 0x48000038 # b .L_801D5B5C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1c2
    .4byte 0x41800010 # blt .L_801D5B40
    li 4, 0x1a
    bl fn_801D5D84
    .4byte 0x48000020 # b .L_801D5B5C
L_801D5B40:
    cmpwi 0, 0xc8
    .4byte 0x40820018 # bne .L_801D5B5C
    li 0, 0x0
    stb 0, 0x11d(31)
    .4byte 0x4800000C # b .L_801D5B5C
    addi 3, 31, 0x568
    bl fn_801E667C
L_801D5B5C:
    lmw 26, 0x48(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

