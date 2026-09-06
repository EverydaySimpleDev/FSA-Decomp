/*
 * UNIVERSAL BASE-ACTOR DEFAULT - fn_801F52A4(this). **The generic enemy
 * loot table.** Landed as Track A (byte-matched) + structural overview:
 * a weighted-random roll (using the confirmed global PRNG) picks a
 * drop-table row via this->0x18c (index into per-row weight tables
 * lbl_80469D48/lbl_80469D78), then a 14-way jumptable
 * (jumptable_804A57C4) decides which reward code(s) and counts to spawn
 * - mostly **"RUPY"** (0x52555059) in counts of 1-20, with one row
 * spawning **"HART"** (0x48415254, a heart pickup) instead. Up to 2
 * independent reward slots can be filled per roll. The shared tail then
 * spawns each filled slot via the universal dispatcher fn_801F9484,
 * launching it at a randomized angle read from the confirmed sin/cos
 * table lbl_8052EBC0, skipping any slot still holding the "NULL"
 * sentinel code (0x4E554C4C). This is the actual generic reward-drop
 * table every FSA enemy uses unless it defines its own (as TINK and
 * [[project_fsa_rupee_burst_actor_progress]]'s actor both do).
 */
.section extab, "a"
.balign 4
.global etb_80008EDC
etb_80008EDC:
    .4byte 0x498A0000
    .4byte 0x00000000
.size etb_80008EDC, 8

.section extabindex, "a"
.balign 4
.global eti_80016624
eti_80016624:
    .4byte fn_801F52A4
    .4byte 0x000004D4
    .4byte etb_80008EDC
.size eti_80016624, 12

.text
.balign 4
.global fn_801F52A4

fn_801F52A4:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stmw 23, 0x6c(1)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    mr 24, 3
    lis 3, lbl_80469D48@ha
    lwz 0, 0xb4(7)
    addi 6, 4, 0x660d
    lwz 4, 0x18c(24)
    addi 3, 3, lbl_80469D48@l
    mullw 5, 0, 6
    .4byte 0xC042C7D4 # lfs f2, lbl_8053F774@sda21(r0)
    slwi 0, 4, 2
    lfsx 0, 3, 0
    addis 3, 5, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x408003F8 # bge .L_801F5734
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80469D78@ha
    .4byte 0x8142C788 # lwz r10, lbl_8053F728@sda21(r0)
    slwi 4, 4, 5
    lwz 5, 0xb4(11)
    addi 0, 3, lbl_80469D78@l
    .4byte 0x8122C78C # lwz r9, lbl_8053F72C@sda21(r0)
    add 3, 0, 4
    mullw 4, 5, 6
    .4byte 0x81020FA0 # lwz r8, lbl_80543F40@sda21(r0)
    .4byte 0x80E20FA4 # lwz r7, lbl_80543F44@sda21(r0)
    .4byte 0x80C20FA8 # lwz r6, lbl_80543F48@sda21(r0)
    .4byte 0x80A20FAC # lwz r5, lbl_80543F4C@sda21(r0)
    .4byte 0xC022C804 # lfs f1, lbl_8053F7A4@sda21(r0)
    addis 4, 4, 0x3c6f
    stw 10, 0x20(1)
    subi 0, 4, 0xca1
    stw 0, 0xb4(11)
    lwz 0, 0xb4(11)
    stw 9, 0x24(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 8, 0x18(1)
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    stw 7, 0x1c(1)
    fsubs 0, 0, 2
    stw 6, 0x10(1)
    fmuls 0, 1, 0
    stw 5, 0x14(1)
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 0, 0x44(1)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmplwi 0, 0xd
    .4byte 0x41810194 # bgt .L_801F5564
    lis 3, jumptable_804A57C4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A57C4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 3, 0x4841
    li 0, 0x1
    addi 3, 3, 0x5254
    stw 0, 0x10(1)
    stw 3, 0x20(1)
    .4byte 0x48000164 # b .L_801F5564
    lis 3, 0x4841
    li 0, 0x2
    addi 3, 3, 0x5254
    stw 0, 0x10(1)
    stw 3, 0x20(1)
    .4byte 0x4800014C # b .L_801F5564
    lis 3, 0x5255
    li 0, 0x1
    addi 3, 3, 0x5059
    stw 0, 0x10(1)
    stw 3, 0x20(1)
    .4byte 0x48000134 # b .L_801F5564
    lis 3, 0x5255
    li 0, 0x1
    addi 3, 3, 0x5059
    stw 0, 0x10(1)
    stw 3, 0x20(1)
    stw 0, 0x18(1)
    .4byte 0x48000118 # b .L_801F5564
    lis 4, 0x5255
    li 3, 0x1
    addi 4, 4, 0x5059
    li 0, 0x2
    stw 4, 0x20(1)
    stw 3, 0x10(1)
    stw 0, 0x18(1)
    .4byte 0x480000F8 # b .L_801F5564
    lis 4, 0x5255
    li 3, 0x1
    addi 4, 4, 0x5059
    li 0, 0x3
    stw 4, 0x20(1)
    stw 3, 0x10(1)
    stw 0, 0x18(1)
    .4byte 0x480000D8 # b .L_801F5564
    lis 4, 0x5255
    li 3, 0x1
    addi 4, 4, 0x5059
    li 0, 0x4
    stw 4, 0x20(1)
    stw 3, 0x10(1)
    stw 0, 0x18(1)
    .4byte 0x480000B8 # b .L_801F5564
    lis 4, 0x5255
    li 3, 0x1
    addi 4, 4, 0x5059
    li 0, 0x5
    stw 4, 0x20(1)
    stw 3, 0x10(1)
    stw 0, 0x18(1)
    .4byte 0x48000098 # b .L_801F5564
    lis 3, 0x5255
    li 0, 0x5
    addi 3, 3, 0x5059
    stw 0, 0x10(1)
    stw 3, 0x20(1)
    .4byte 0x48000080 # b .L_801F5564
    lis 3, 0x5255
    li 0, 0xa
    addi 3, 3, 0x5059
    stw 0, 0x10(1)
    stw 3, 0x20(1)
    .4byte 0x48000068 # b .L_801F5564
    lis 4, 0x5255
    li 3, 0x5
    addi 4, 4, 0x5059
    li 0, 0x1
    stw 4, 0x20(1)
    stw 3, 0x10(1)
    stw 0, 0x18(1)
    .4byte 0x48000048 # b .L_801F5564
    lis 4, 0x5255
    li 3, 0xa
    addi 4, 4, 0x5059
    li 0, 0x1
    stw 4, 0x20(1)
    stw 3, 0x10(1)
    stw 0, 0x18(1)
    .4byte 0x48000028 # b .L_801F5564
    lis 4, 0x5255
    li 3, 0x14
    addi 4, 4, 0x5059
    li 0, 0x1
    stw 4, 0x20(1)
    stw 3, 0x10(1)
    stw 4, 0x24(1)
    stw 3, 0x14(1)
    stw 0, 0x1c(1)
L_801F5564:
    lfs 1, 0x10(24)
    addi 29, 1, 0x18
    lfs 0, 0x14(24)
    addi 28, 1, 0x20
    lfs 30, 0xc(24)
    addi 27, 1, 0x10
    fsubs 27, 1, 0
    .4byte 0xC3E2C7A0 # lfs f31, lbl_8053F740@sda21(r0)
    .4byte 0xC382C83C # lfs f28, lbl_8053F7DC@sda21(r0)
    li 26, 0x0
    .4byte 0xCBA2C7F8 # lfd f29, lbl_8053F798@sda21(r0)
    lis 31, 0x4330
    .4byte 0x48000188 # b .L_801F571C
L_801F5598:
    xoris 0, 26, 0x8000
    lwz 3, 0x0(29)
    stw 0, 0x44(1)
    li 25, 0x0
    oris 0, 3, 0x26
    lwz 30, 0x0(27)
    stw 31, 0x40(1)
    ori 0, 0, 0x1e00
    lfd 0, 0x40(1)
    stw 0, 0x0(29)
    fsubs 0, 0, 29
    fmuls 26, 28, 0
    .4byte 0x4800013C # b .L_801F5704
L_801F55CC:
    stfs 30, 0x34(1)
    stfs 27, 0x38(1)
    stfs 31, 0x3c(1)
    bl SpatialRegistry_GetBase
    lwz 4, 0x0(28)
    addi 6, 1, 0x34
    lwz 5, 0x4(24)
    li 8, -0x1
    lwz 7, 0x0(29)
    li 9, -0x1
    bl fn_801F9484
    mr. 23, 3
    .4byte 0x41800104 # blt .L_801F5700
    lwz 0, 0x0(27)
    cmplwi 0, 0x1
    .4byte 0x408100F8 # ble .L_801F5700
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200E4 # beq .L_801F5700
    lwz 4, 0x0(27)
    lis 0, 0x4330
    psq_l 4, 0x34(1), 0, 0
    stw 4, 0x44(1)
    lfs 3, 0x3c(1)
    stw 0, 0x40(1)
    .4byte 0xC842C7E8 # lfd f2, lbl_8053F788@sda21(r0)
    lfd 1, 0x40(1)
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    fsubs 1, 1, 2
    psq_st 4, 0x28(1), 0, 0
    stfs 3, 0x30(1)
    fdivs 5, 26, 1
    fmr 1, 5
    fcmpo cr0, 5, 0
    .4byte 0x40800008 # bge .L_801F5664
    fneg 1, 5
L_801F5664:
    .4byte 0xC062C840 # lfs f3, lbl_8053F7E0@sda21(r0)
    lis 4, lbl_8052EBC0@ha
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    addi 5, 4, lbl_8052EBC0@l
    fmuls 2, 3, 1
    .4byte 0xC082C810 # lfs f4, lbl_8053F7B0@sda21(r0)
    fcmpo cr0, 5, 0
    lfs 1, 0x28(1)
    fctiwz 0, 2
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    clrlslwi 0, 0, 21, 3
    add 4, 5, 0
    lfs 0, 0x4(4)
    fmadds 0, 4, 0, 1
    stfs 0, 0x28(1)
    .4byte 0x40800028 # bge .L_801F56CC
    .4byte 0xC002C844 # lfs f0, lbl_8053F7E4@sda21(r0)
    fmuls 0, 0, 5
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 5, 0
    fneg 1, 0
    .4byte 0x4800001C # b .L_801F56E4
L_801F56CC:
    fmuls 0, 3, 5
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 1, 5, 0
L_801F56E4:
    lfs 0, 0x2c(1)
    lfs 2, 0x30(1)
    fmadds 0, 4, 1, 0
    stfs 0, 0x2c(1)
    psq_l 0, 0x28(1), 0, 0
    psq_st 0, 0xc(3), 0, 0
    stfs 2, 0x14(3)
L_801F5700:
    addi 25, 25, 0x1
L_801F5704:
    cmplw 25, 30
    .4byte 0x4180FEC4 # blt .L_801F55CC
    addi 29, 29, 0x4
    addi 28, 28, 0x4
    addi 27, 27, 0x4
    addi 26, 26, 0x1
L_801F571C:
    cmpwi 26, 0x2
    .4byte 0x40800014 # bge .L_801F5734
    lwz 3, 0x0(28)
    subis 0, 3, 0x4e55
    cmplwi 0, 0x4c4c
    .4byte 0x4082FE68 # bne .L_801F5598
L_801F5734:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    lmw 23, 0x6c(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

