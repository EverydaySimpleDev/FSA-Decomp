/*
 * NEW ACTOR (vtable lbl_804A5A30) - main per-frame BEHAVIOR dispatcher,
 * jumptable_804A5AD4 on this->0x248 (state, 10 cases 0-9). Landed as
 * Track A (byte-matched) + structural overview - traced in full but too
 * large/branchy to narrate every case in a header comment.
 *
 * Resolves and validates up to 2 tracked target IDs (this->0x340/0x338)
 * via the spatial registry and the confirmed fn_801CC820/fn_801CC538/
 * fn_801CC640 family, transitioning state via the confirmed
 * fn_80205E0C(this, mode) throughout. Notably: **spawns a single "RUPY"
 * reward** via fn_801F8544 (0x52555059, matching TINK's reward mechanic
 * - see [[project_fsa_tink_state_machine_landed]]) with a value pulled
 * from a per-index table (lbl_8046A288) and the confirmed
 * fn_8032D564 lookup, accumulating a running total into this->0x344 -
 * this is the "reward pool" later drained by fn_80206168's burst-spawn
 * loop. Also reuses the confirmed fn_80217374 (zigzag-wander), the
 * confirmed fn_8021B904/fn_801D02E0 (look-at, from SLK2), fn_801D0280
 * (facing helper), fn_801D2918, fn_801CD930, and ClassifyBamAngleToQuadrant.
 */
.section extab, "a"
.balign 4
.global etb_80009C40
etb_80009C40:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80009C40, 8

.section extabindex, "a"
.balign 4
.global eti_800175E4
eti_800175E4:
    .4byte fn_802055A4
    .4byte 0x00000868
    .4byte etb_80009C40
.size eti_800175E4, 12

.text
.balign 4
.global fn_802055A4

fn_802055A4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    clrlwi. 0, 4, 24
    mr 29, 4
    mr 31, 3
    .4byte 0x4182000C # beq .L_802055D4
    bl fn_801F11B4
    .4byte 0x48000058 # b .L_80205628
L_802055D4:
    lwz 0, 0x248(31)
    cmpwi 0, 0x3
    .4byte 0x4080004C # bge .L_80205628
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_802055EC
    .4byte 0x48000040 # b .L_80205628
L_802055EC:
    lwz 12, 0x0(3)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80205628
    lfs 0, 0x18(31)
    mr 3, 31
    li 4, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x1c(31)
    stfs 0, 0x10(31)
    bl fn_80205E0C
L_80205628:
    lbz 0, 0x348(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80205640
    li 0, -0x1
    stw 0, 0x340(31)
    .4byte 0x480000A4 # b .L_802056E0
L_80205640:
    lwz 0, 0x248(31)
    cmpwi 0, 0x7
    .4byte 0x41820028 # beq .L_80205670
    .4byte 0x40800018 # bge .L_80205664
    cmpwi 0, 0x6
    .4byte 0x40800028 # bge .L_8020567C
    cmpwi 0, 0x3
    .4byte 0x40800014 # bge .L_80205670
    .4byte 0x4800001C # b .L_8020567C
L_80205664:
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_80205670
    .4byte 0x48000010 # b .L_8020567C
L_80205670:
    li 0, -0x1
    stw 0, 0x340(31)
    .4byte 0x48000068 # b .L_802056E0
L_8020567C:
    lwz 30, 0x340(31)
    li 27, 0x1
    cmpwi 30, 0x0
    .4byte 0x41800044 # blt .L_802056CC
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820030 # beq .L_802056CC
    bl fn_801CC9B0
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_802056CC
    lwz 6, 0x4(31)
    mr 3, 31
    addi 4, 31, 0xc
    addi 5, 30, 0xc
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_802056CC
    li 27, 0x0
L_802056CC:
    clrlwi. 0, 27, 24
    .4byte 0x41820010 # beq .L_802056E0
    mr 3, 31
    bl fn_802063FC
    stw 3, 0x340(31)
L_802056E0:
    lbz 0, 0x349(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802056F8
    li 0, -0x1
    stw 0, 0x338(31)
    .4byte 0x48000078 # b .L_8020576C
L_802056F8:
    lwz 0, 0x248(31)
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_8020572C
    .4byte 0x4080001C # bge .L_80205720
    cmpwi 0, 0x2
    .4byte 0x41820060 # beq .L_8020576C
    .4byte 0x41800028 # blt .L_80205738
    cmpwi 0, 0x6
    .4byte 0x40800054 # bge .L_8020576C
    .4byte 0x48000010 # b .L_8020572C
L_80205720:
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8020572C
    .4byte 0x48000010 # b .L_80205738
L_8020572C:
    li 0, -0x1
    stw 0, 0x338(31)
    .4byte 0x48000038 # b .L_8020576C
L_80205738:
    lbz 5, 0x34b(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    mr 3, 31
    .4byte 0xC822C8E8 # lfd f1, lbl_8053F888@sda21(r0)
    addi 4, 31, 0xc
    stw 5, 0x34(1)
    .4byte 0xC042C8C4 # lfs f2, lbl_8053F864@sda21(r0)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    stw 3, 0x338(31)
L_8020576C:
    lwz 0, 0x248(31)
    cmplwi 0, 0x9
    .4byte 0x4181060C # bgt .L_80205D80
    lis 3, jumptable_804A5AD4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A5AD4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x340(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_802057AC
    mr 3, 31
    li 4, 0x1
    bl fn_80205E0C
    .4byte 0x48000074 # b .L_8020581C
L_802057AC:
    lwz 3, 0x338(31)
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_8020581C
    bl fn_801CCF34
    cmpwi 3, 0x0
    .4byte 0x4181003C # bgt .L_802057FC
    lwz 27, 0x4(31)
    lwz 3, 0x338(31)
    bl fn_8023E724
    mr 5, 3
    mr 3, 31
    mr 6, 27
    addi 4, 31, 0xc
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_802057FC
    mr 3, 31
    li 4, 0x6
    bl fn_80205E0C
    .4byte 0x48000024 # b .L_8020581C
L_802057FC:
    .4byte 0xC022C8C0 # lfs f1, lbl_8053F860@sda21(r0)
    mr 3, 31
    bl fn_801D183C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8020581C
    mr 3, 31
    li 4, 0x2
    bl fn_80205E0C
L_8020581C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_80205858
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80205844
    mr 3, 31
    li 4, 0x8
    bl fn_80205E0C
    .4byte 0x48000540 # b .L_80205D80
L_80205844:
    lha 4, 0x33c(31)
    addi 3, 31, 0x368
    bl fn_80217374
    sth 3, 0x33c(31)
    .4byte 0x4800052C # b .L_80205D80
L_80205858:
    cmpwi 0, 0x8
    .4byte 0x40820524 # bne .L_80205D80
    clrlwi. 0, 29, 24
    .4byte 0x4182000C # beq .L_80205870
    mr 3, 31
    bl fn_801D11FC
L_80205870:
    lha 4, 0x33c(31)
    mr 5, 29
    addi 3, 31, 0x374
    bl fn_8021B904
    sth 3, 0x33c(31)
    .4byte 0x480004FC # b .L_80205D80
    lwz 27, 0x340(31)
    cmpwi 27, 0x0
    .4byte 0x40800014 # bge .L_802058A4
    mr 3, 31
    li 4, 0x0
    bl fn_80205E0C
    .4byte 0x480004E0 # b .L_80205D80
L_802058A4:
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    lfs 1, 0xc(3)
    mr 27, 3
    .4byte 0xC002C8C8 # lfs f0, lbl_8053F868@sda21(r0)
    stfs 1, 0x32c(31)
    lfs 1, 0x10(3)
    stfs 1, 0x330(31)
    lfs 1, 0x14(3)
    stfs 1, 0x334(31)
    lfs 4, 0x32c(31)
    lfs 3, 0xc(31)
    lfs 2, 0x330(31)
    lfs 1, 0x10(31)
    fsubs 3, 4, 3
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820484 # bne .L_80205D80
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x9f
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x90(27)
    mr 3, 27
    clrlwi 4, 0, 24
    bl fn_8032D564
    cmpwi 3, 0xbb8
    mr 6, 3
    .4byte 0x4081000C # ble .L_80205938
    li 6, 0xbb8
    .4byte 0x48000010 # b .L_80205944
L_80205938:
    cmpwi 3, 0x1
    .4byte 0x40800008 # bge .L_80205944
    li 6, 0x1
L_80205944:
    lwz 5, 0x344(31)
    li 4, 0x1
    li 0, 0x3
    mr 3, 31
    add 5, 5, 6
    stw 5, 0x344(31)
    lwz 5, 0x198(31)
    sth 4, 0x94(27)
    stw 5, 0x264(27)
    stb 4, 0x282(27)
    stw 0, 0x230(27)
    bl fn_802063FC
    stw 3, 0x340(31)
    .4byte 0x48000408 # b .L_80205D80
    lwz 0, 0x340(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_80205998
    mr 3, 31
    li 4, 0x1
    bl fn_80205E0C
    .4byte 0x480003EC # b .L_80205D80
L_80205998:
    lwz 3, 0x338(31)
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_80205A08
    bl fn_801CCF34
    cmpwi 3, 0x0
    .4byte 0x4081005C # ble .L_80205A08
    lwz 4, 0x338(31)
    mr 3, 31
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_80205A08
    lbz 4, 0x34c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    mr 3, 31
    .4byte 0xC822C8E8 # lfd f1, lbl_8053F888@sda21(r0)
    addi 5, 31, 0xc
    stw 4, 0x34(1)
    .4byte 0xC042C8C4 # lfs f2, lbl_8053F864@sda21(r0)
    lfd 0, 0x30(1)
    lwz 4, 0x338(31)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D08B4
    clrlwi 0, 3, 24
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820014 # beq .L_80205A18
L_80205A08:
    mr 3, 31
    li 4, 0x0
    bl fn_80205E0C
    .4byte 0x4800036C # b .L_80205D80
L_80205A18:
    mr 3, 31
    bl fn_801D12CC
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80205A38
    mr 3, 31
    li 4, 0x0
    bl fn_80205E0C
    .4byte 0x4800034C # b .L_80205D80
L_80205A38:
    mr 3, 31
    addi 4, 31, 0x32c
    bl fn_801D02E0
    sth 3, 0x33c(31)
    .4byte 0x48000338 # b .L_80205D80
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4082032C # bne .L_80205D80
    mr 3, 31
    li 4, 0x4
    bl fn_80205E0C
    .4byte 0x4800031C # b .L_80205D80
    lfs 1, 0x14(31)
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820308 # bne .L_80205D80
    lis 3, lbl_8046A288@ha
    .4byte 0xC3E2C8CC # lfs f31, lbl_8053F86C@sda21(r0)
    addi 29, 3, lbl_8046A288@l
    lis 30, 0x5255
    .4byte 0x4800017C # b .L_80205C08
L_80205A90:
    li 0, 0xc
    addi 3, 29, 0x58
    li 4, 0xb
    mtctr 0
L_80205AA0:
    lwz 0, 0x4(3)
    cmplw 5, 0
    .4byte 0x4180002C # blt .L_80205AD4
    lis 3, lbl_8046A288@ha
    slwi 4, 4, 3
    addi 3, 3, lbl_8046A288@l
    lwz 0, 0x344(31)
    add 4, 3, 4
    lwz 3, 0x4(4)
    lwz 28, 0x0(4)
    subf 0, 3, 0
    stw 0, 0x344(31)
    .4byte 0x48000010 # b .L_80205AE0
L_80205AD4:
    subi 3, 3, 0x8
    subi 4, 4, 0x1
    .4byte 0x4200FFC4 # bdnz .L_80205AA0
L_80205AE0:
    lfs 0, 0x14(31)
    lfs 1, 0x10(31)
    fadds 2, 31, 0
    lfs 0, 0xc(31)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 7, 28
    addi 4, 30, 0x5059
    addi 6, 1, 0x14
    bl fn_801F8544
    mr. 27, 3
    .4byte 0x418000F0 # blt .L_80205C08
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200DC # beq .L_80205C08
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC0A2C8D0 # lfs f5, lbl_8053F870@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062C8D8 # lfs f3, lbl_8053F878@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC082C8D4 # lfs f4, lbl_8053F874@sda21(r0)
    .4byte 0xC022C8E0 # lfs f1, lbl_8053F880@sda21(r0)
    .4byte 0xC002C8DC # lfs f0, lbl_8053F87C@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 2, 2, 5
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 2, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x28(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fmsubs 1, 3, 1, 5
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fmuls 1, 4, 1
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    stfs 1, 0x24(1)
    fsubs 1, 2, 5
    fmsubs 1, 3, 1, 5
    fmuls 1, 4, 1
    stfs 1, 0x20(1)
    psq_l 1, 0x20(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_80205C08:
    lwz 5, 0x344(31)
    cmplwi 5, 0x0
    .4byte 0x4082FE80 # bne .L_80205A90
    mr 3, 31
    li 4, 0x0
    bl fn_80205E0C
    .4byte 0x48000160 # b .L_80205D80
    addi 3, 31, 0x35c
    bl fn_801D2918
    clrlwi. 0, 3, 24
    .4byte 0x41820150 # beq .L_80205D80
    mr 3, 31
    li 4, 0x7
    bl fn_80205E0C
    .4byte 0x48000140 # b .L_80205D80
    lwz 0, 0x340(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_80205C60
    mr 3, 31
    li 4, 0x1
    bl fn_80205E0C
    .4byte 0x48000124 # b .L_80205D80
L_80205C60:
    lwz 3, 0x338(31)
    cmpwi 3, 0x0
    .4byte 0x41800090 # blt .L_80205CF8
    bl fn_801CCF34
    cmpwi 3, 0x0
    .4byte 0x41810084 # bgt .L_80205CF8
    lwz 4, 0x338(31)
    mr 3, 31
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_80205CF8
    lbz 4, 0x34c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    mr 3, 31
    .4byte 0xC822C8E8 # lfd f1, lbl_8053F888@sda21(r0)
    addi 5, 31, 0xc
    stw 4, 0x34(1)
    .4byte 0xC042C8C4 # lfs f2, lbl_8053F864@sda21(r0)
    lfd 0, 0x30(1)
    lwz 4, 0x338(31)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D08B4
    clrlwi 0, 3, 24
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x4082002C # bne .L_80205CF8
    lwz 27, 0x4(31)
    lwz 3, 0x338(31)
    bl fn_8023E724
    mr 5, 3
    mr 3, 31
    mr 6, 27
    addi 4, 31, 0xc
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80205D08
L_80205CF8:
    mr 3, 31
    li 4, 0x0
    bl fn_80205E0C
    .4byte 0x4800007C # b .L_80205D80
L_80205D08:
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_80205D1C
    mr 3, 31
    bl fn_801D11FC
    .4byte 0x48000068 # b .L_80205D80
L_80205D1C:
    lwz 4, 0x338(31)
    mr 3, 31
    bl fn_801D0280
    addi 0, 3, -0x8000
    addi 3, 31, 0x33c
    extsh 4, 0
    li 5, 0x200
    bl fn_801CD930
    .4byte 0x48000044 # b .L_80205D80
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800038 # blt .L_80205D80
    mr 3, 31
    li 4, 0x0
    bl fn_80205E0C
    .4byte 0x48000028 # b .L_80205D80
    clrlwi. 0, 29, 24
    .4byte 0x4182000C # beq .L_80205D6C
    mr 3, 31
    bl fn_801D11FC
L_80205D6C:
    lha 4, 0x33c(31)
    mr 5, 29
    addi 3, 31, 0x374
    bl fn_8021B904
    sth 3, 0x33c(31)
L_80205D80:
    lwz 0, 0x248(31)
    cmpwi 0, 0x6
    .4byte 0x41820034 # beq .L_80205DBC
    .4byte 0x4080001C # bge .L_80205DA8
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_80205DBC
    .4byte 0x41800038 # blt .L_80205DD0
    cmpwi 0, 0x3
    .4byte 0x40800050 # bge .L_80205DF0
    .4byte 0x4800002C # b .L_80205DD0
L_80205DA8:
    cmpwi 0, 0xa
    .4byte 0x40800024 # bge .L_80205DD0
    cmpwi 0, 0x8
    .4byte 0x40800008 # bge .L_80205DBC
    .4byte 0x48000038 # b .L_80205DF0
L_80205DBC:
    lha 0, 0x33c(31)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    .4byte 0x48000024 # b .L_80205DF0
L_80205DD0:
    mr 3, 31
    addi 4, 31, 0x32c
    bl fn_801D02E0
    sth 3, 0x33c(31)
    lha 0, 0x33c(31)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
L_80205DF0:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

