/*
 * FIRE (burning status-effect actor) cluster, part 6/9 - the core
 * update(). Track A (byte-exact asm) + structural overview - largest
 * function in this cluster (0x994 = 2452 bytes).
 *
 * fn_802BB468(this): dispatches on this->0x238 (a phase counter,
 * 0/4/6/other).
 * - Phase 0: if this->0x278 already equals the owner (already
 *   activated), skips to the common continuation. Otherwise, for modes
 *   0/3/4/5 and room<8, spawns 2 persistent effects (this->0x230/0x234
 *   via the confirmed fn_8013CC50, codes 0x19b/0x19c) with a
 *   per-orientation parameter applied via fn_800EF008 using a NEW
 *   lookup table `lbl_8046D388` (shared with setParams, part 8/9); for
 *   room>=8, instead retires whichever of the two slots is already set
 *   (the confirmed cull idiom). Marks this->0x278 = owner (activated).
 * - Common continuation: for modes 3/4, runs the virtual "am I visible"
 *   check (vtable slot 0x34); if it fails and a one-shot flag
 *   (this->0x292) matches, latches this->0x293. For modes not in
 *   {0,3,4}: if this->0x230 (an "already armed" state) is set, nudges
 *   position by an orientation-dependent offset, writes the nudged
 *   position into BOTH effect slots' own `+0xa4/+0xa8/+0xac` fields
 *   (the same offsets the confirmed fn_801EE434 box-test reads), and if
 *   this->0x293 is set, eases a countdown (this->0x28c) toward zero via
 *   a direct float subtract; once it expires, calls the confirmed
 *   NAVI-sway utility fn_801F3668 (also reused by RUSA, see
 *   [[project_fsa_rusa_core_update_landed]]) and skips the rest of this
 *   pass, otherwise commits the nudged position into both slots.
 * - Snapshots position into this->0x248/0x250 (read by
 *   fn_802BAB80/fn_802BAE78, parts 1/9 and 4/9) and, for modes not
 *   2/3/4, chains through: a hit/visibility check (fn_801F2B7C then
 *   fn_801F2B20), player-validity checks (fn_8022CCAC/fn_80230188 for
 *   mode 1), an "am I still active" gate (fn_801F2618) guarding a
 *   further virtual call (vtable slot 0x58), and - once this->0x11c is
 *   set and specific state/mode conditions align - a position nudge
 *   plus a re-arm sequence. Modes 3/4/5 instead resolve a computed
 *   nudge value via `fn_80239A74` (unconfirmed) and, when armed, spawn
 *   an ember effect (code 0x19d) and queue the confirmed companion-
 *   fairy hint `fn_80230FD0` (code 0x20050).
 * - Tail: re-registers position with the confirmed spatial/camera
 *   registry (`lbl_8053AB10->0x24`+fn_8030C210) for modes not 5-9ish,
 *   decrements this->0x254, and manages a 3-state wobble counter
 *   (this->0x274) plus a re-arm timer (this->0x270) per mode.
 */
.section extab, "a"
.balign 4
.global etb_8000C8C4
etb_8000C8C4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C8C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001B6A0
eti_8001B6A0:
    .4byte fn_802BB468
    .4byte 0x00000994
    .4byte etb_8000C8C4
.size eti_8001B6A0, 12

.text
.balign 4
.global fn_802BB468

fn_802BB468:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    lwz 0, 0x238(3)
    cmpwi 0, 0x4
    .4byte 0x418208CC # beq .L_802BBD54
    .4byte 0x40800010 # bge .L_802BB49C
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BB4A8
    .4byte 0x4800091C # b .L_802BBDB4
L_802BB49C:
    cmpwi 0, 0x6
    .4byte 0x40800914 # bge .L_802BBDB4
    .4byte 0x480008D4 # b .L_802BBD78
L_802BB4A8:
    lwz 0, 0x278(31)
    lwz 4, 0x4(31)
    cmpw 0, 4
    .4byte 0x418201D0 # beq .L_802BB684
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_802BB4D8
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802BB4D8
    cmpwi 3, 0x5
    .4byte 0x408201B0 # bne .L_802BB684
L_802BB4D8:
    cmpwi 4, 0x8
    .4byte 0x40800150 # bge .L_802BB62C
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x24(1), 0, 0
    stfs 0, 0x2c(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802BB544
    .4byte 0x40800014 # bge .L_802BB510
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BB51C
    .4byte 0x40800028 # bge .L_802BB530
    .4byte 0x4800005C # b .L_802BB568
L_802BB510:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_802BB568
    .4byte 0x48000040 # b .L_802BB558
L_802BB51C:
    lfs 1, 0x24(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x24(1)
    .4byte 0x4800003C # b .L_802BB568
L_802BB530:
    lfs 1, 0x24(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x24(1)
    .4byte 0x48000028 # b .L_802BB568
L_802BB544:
    lfs 1, 0x28(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x28(1)
    .4byte 0x48000014 # b .L_802BB568
L_802BB558:
    lfs 1, 0x28(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x28(1)
L_802BB568:
    lwz 3, 0x4(31)
    addi 4, 1, 0x24
    .4byte 0xC022DBC8 # lfs f1, lbl_80540B68@sda21(r0)
    li 5, 0x19b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x4182002C # beq .L_802BB5C8
    lwz 0, 0x98(31)
    lis 3, lbl_8046D388@ha
    addi 4, 3, lbl_8046D388@l
    addi 6, 5, 0x68
    slwi 0, 0, 2
    li 3, 0x0
    lwzx 0, 4, 0
    li 5, 0x0
    extsh 4, 0
    bl fn_800EF008
L_802BB5C8:
    lwz 3, 0x4(31)
    addi 4, 1, 0x24
    .4byte 0xC022DBC8 # lfs f1, lbl_80540B68@sda21(r0)
    li 5, 0x19c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820080 # beq .L_802BB67C
    lwz 0, 0x98(31)
    lis 3, lbl_8046D388@ha
    addi 4, 3, lbl_8046D388@l
    addi 6, 5, 0x68
    slwi 0, 0, 2
    li 3, 0x0
    lwzx 0, 4, 0
    li 5, 0x0
    extsh 4, 0
    bl fn_800EF008
    .4byte 0x48000054 # b .L_802BB67C
L_802BB62C:
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802BB654
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(31)
L_802BB654:
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802BB67C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(31)
L_802BB67C:
    lwz 0, 0x4(31)
    stw 0, 0x278(31)
L_802BB684:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BB698
    cmpwi 0, 0x4
    .4byte 0x4082003C # bne .L_802BB6D0
L_802BB698:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_802BB6D0
    lbz 0, 0x292(31)
    cmplwi 0, 0x1
    .4byte 0x40820728 # bne .L_802BBDE4
    li 0, 0x1
    stb 0, 0x293(31)
    .4byte 0x48000008 # b .L_802BB6D0
    .4byte 0x48000718 # b .L_802BBDE4
L_802BB6D0:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BB6EC
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BB6EC
    cmpwi 0, 0x4
    .4byte 0x40820118 # bne .L_802BB800
L_802BB6EC:
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182010C # beq .L_802BB800
    lwz 0, 0x98(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    cmpwi 0, 0x2
    psq_st 1, 0x18(1), 0, 0
    stfs 0, 0x20(1)
    .4byte 0x4182004C # beq .L_802BB75C
    .4byte 0x40800014 # bge .L_802BB728
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BB734
    .4byte 0x40800028 # bge .L_802BB748
    .4byte 0x4800005C # b .L_802BB780
L_802BB728:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_802BB780
    .4byte 0x48000040 # b .L_802BB770
L_802BB734:
    lfs 1, 0x18(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x18(1)
    .4byte 0x4800003C # b .L_802BB780
L_802BB748:
    lfs 1, 0x18(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x18(1)
    .4byte 0x48000028 # b .L_802BB780
L_802BB75C:
    lfs 1, 0x1c(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
    .4byte 0x48000014 # b .L_802BB780
L_802BB770:
    lfs 1, 0x1c(1)
    .4byte 0xC002DBB0 # lfs f0, lbl_80540B50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x1c(1)
L_802BB780:
    lwz 3, 0x230(31)
    lfs 2, 0x18(1)
    lfs 1, 0x1c(1)
    stfs 2, 0xa4(3)
    lfs 0, 0x20(1)
    stfs 1, 0xa8(3)
    stfs 0, 0xac(3)
    lwz 3, 0x234(31)
    stfs 2, 0xa4(3)
    stfs 1, 0xa8(3)
    stfs 0, 0xac(3)
    lbz 0, 0x293(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_802BB800
    lfs 2, 0x28c(31)
    .4byte 0xC022DBE0 # lfs f1, lbl_80540B80@sda21(r0)
    .4byte 0xC002DBE4 # lfs f0, lbl_80540B84@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x28c(31)
    lfs 1, 0x28c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_802BB7E4
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000604 # b .L_802BBDE4
L_802BB7E4:
    lwz 3, 0x230(31)
    stfs 1, 0xb0(3)
    stfs 1, 0xb4(3)
    lfs 0, 0x28c(31)
    lwz 3, 0x234(31)
    stfs 0, 0xb0(3)
    stfs 0, 0xb4(3)
L_802BB800:
    lfs 3, 0x60(31)
    stfs 3, 0x8(1)
    lfs 2, 0x64(31)
    stfs 2, 0xc(1)
    lfs 1, 0x68(31)
    stfs 1, 0x10(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x14(1)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0xc(1)
    stfs 3, 0x8(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BB864
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BB864
    cmpwi 0, 0x4
    .4byte 0x40820084 # bne .L_802BB8E4
L_802BB864:
    lbz 0, 0x293(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802BB89C
    lfs 1, 0x23c(31)
    addi 3, 31, 0x3c
    .4byte 0xC042DBE8 # lfs f2, lbl_80540B88@sda21(r0)
    .4byte 0xC062DBC8 # lfs f3, lbl_80540B68@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x240(31)
    addi 3, 31, 0x40
    .4byte 0xC042DBE8 # lfs f2, lbl_80540B88@sda21(r0)
    .4byte 0xC062DBC8 # lfs f3, lbl_80540B68@sda21(r0)
    bl fn_801F71A4
    .4byte 0x4800002C # b .L_802BB8C4
L_802BB89C:
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC042DBEC # lfs f2, lbl_80540B8C@sda21(r0)
    .4byte 0xC062DBE8 # lfs f3, lbl_80540B88@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022DBB8 # lfs f1, lbl_80540B58@sda21(r0)
    addi 3, 31, 0x40
    .4byte 0xC042DBEC # lfs f2, lbl_80540B8C@sda21(r0)
    .4byte 0xC062DBE8 # lfs f3, lbl_80540B88@sda21(r0)
    bl fn_801F71A4
L_802BB8C4:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_802BB8E4:
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x248(31), 0, 0
    stfs 0, 0x250(31)
    lwz 4, 0x264(31)
    cmpwi 4, 0x2
    .4byte 0x418201FC # beq .L_802BBAF8
    subi 0, 4, 0x3
    cmplwi 0, 0x2
    .4byte 0x408101F0 # ble .L_802BBAF8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 30, 0x114(31)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_802BB924
    li 30, 0x0
L_802BB924:
    cmpwi 4, 0x1
    .4byte 0x40820024 # bne .L_802BB94C
    lwz 3, 0x260(31)
    bl fn_8022CCAC
    clrlwi. 0, 3, 24
    .4byte 0x40820308 # bne .L_802BBC40
    lwz 3, 0x260(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408202F8 # bne .L_802BBC40
L_802BB94C:
    lwz 5, 0x260(31)
    mr 3, 31
    mr 4, 30
    li 6, 0x16
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802BB97C
    mr 3, 31
    li 4, 0x5
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_802BB9E8
L_802BB97C:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_802BB9B8
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_802BB9A0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480002A4 # b .L_802BBC40
L_802BB9A0:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x26c(31)
    stw 0, 0x270(31)
    .4byte 0x4800028C # b .L_802BBC40
L_802BB9B8:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820274 # beq .L_802BBC40
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    .4byte 0x4800025C # b .L_802BBC40
L_802BB9E8:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802BBA14
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
L_802BBA14:
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x41820224 # beq .L_802BBC40
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x40820218 # bne .L_802BBC40
    lwz 0, 0x268(31)
    cmpwi 0, 0x2
    .4byte 0x4082020C # bne .L_802BBC40
    lbz 0, 0x290(31)
    cmplwi 0, 0x0
    .4byte 0x40820200 # bne .L_802BBC40
    psq_l 1, 0xc(31), 0, 0
    li 0, 0x0
    lfs 0, 0x14(31)
    psq_st 1, 0x248(31), 0, 0
    stfs 0, 0x250(31)
    lwz 30, 0x254(31)
    stw 0, 0x254(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_802BBA78
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802BBA84
    .4byte 0x48000034 # b .L_802BBAA8
L_802BBA78:
    cmpwi 0, 0x4
    .4byte 0x4080002C # bge .L_802BBAA8
    .4byte 0x48000018 # b .L_802BBA98
L_802BBA84:
    lfs 1, 0x10(31)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000014 # b .L_802BBAA8
L_802BBA98:
    lfs 1, 0xc(31)
    .4byte 0xC002DBC4 # lfs f0, lbl_80540B64@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
L_802BBAA8:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802BBAD4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
L_802BBAD4:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_802BBAE4
    stw 30, 0x254(31)
L_802BBAE4:
    psq_l 1, 0x248(31), 0, 0
    lfs 0, 0x250(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x4800014C # b .L_802BBC40
L_802BBAF8:
    cmpwi 4, 0x3
    li 30, -0x1
    .4byte 0x4182000C # beq .L_802BBB0C
    cmpwi 4, 0x4
    .4byte 0x40820020 # bne .L_802BBB28
L_802BBB0C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    lwz 5, 0x98(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_80239A74
    mr 30, 3
L_802BBB28:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BBB3C
    cmpwi 0, 0x4
    .4byte 0x40820054 # bne .L_802BBB8C
L_802BBB3C:
    cmpwi 30, 0x0
    .4byte 0x4180004C # blt .L_802BBB8C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x28c(31)
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x50
    bl fn_80230FD0
    li 0, 0x5
    stw 0, 0x25c(31)
    stw 0, 0x238(31)
    .4byte 0x4800002C # b .L_802BBBB4
L_802BBB8C:
    cmpwi 0, 0x5
    .4byte 0x41820024 # beq .L_802BBBB4
    lbz 0, 0x293(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802BBBB4
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_802BBBB4:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_802BBC40
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BBBE0
    cmpwi 0, 0x4
    .4byte 0x40820058 # bne .L_802BBC34
L_802BBBE0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x28c(31)
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2e
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_802BBC40
L_802BBC34:
    li 0, 0x5
    stw 0, 0x25c(31)
    stw 0, 0x238(31)
L_802BBC40:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800090 # blt .L_802BBCD8
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BBC68
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802BBC68
    cmpwi 0, 0x4
    .4byte 0x40820054 # bne .L_802BBCB8
L_802BBC68:
    lwz 3, 0x274(31)
    subi 0, 3, 0x1
    stw 0, 0x274(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_802BBCD8
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_802BBCD8
    li 0, 0x2
    stw 0, 0x274(31)
    lwz 3, 0x270(31)
    addi 0, 3, 0x1
    stw 0, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x4
    .4byte 0x41800030 # blt .L_802BBCD8
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_802BBCD8
L_802BBCB8:
    lwz 3, 0x270(31)
    addi 0, 3, 0x1
    stw 0, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x6
    .4byte 0x4180000C # blt .L_802BBCD8
    li 0, 0x3
    stw 0, 0x270(31)
L_802BBCD8:
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x408200D4 # bne .L_802BBDB4
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x418200C8 # beq .L_802BBDB4
    li 0, 0x0
    stw 0, 0x270(31)
    lwz 3, 0x280(31)
    cmpwi 3, 0x0
    .4byte 0x40820048 # bne .L_802BBD48
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802BBD30
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
L_802BBD30:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000070 # b .L_802BBDB4
L_802BBD48:
    subi 0, 3, 0x1
    stw 0, 0x280(31)
    .4byte 0x48000064 # b .L_802BBDB4
L_802BBD54:
    lwz 3, 0x270(31)
    addi 0, 3, 0x1
    stw 0, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x10
    .4byte 0x4180004C # blt .L_802BBDB4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000040 # b .L_802BBDB4
L_802BBD78:
    lwz 4, 0x25c(31)
    cmpwi 4, 0x0
    .4byte 0x4082002C # bne .L_802BBDAC
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0x2e
    bl fn_801F0E34
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800000C # b .L_802BBDB4
L_802BBDAC:
    subi 0, 4, 0x1
    stw 0, 0x25c(31)
L_802BBDB4:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_802BBDD0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802BBDD0:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802BBDE4
    subi 0, 3, 0x1
    stw 0, 0x254(31)
L_802BBDE4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

