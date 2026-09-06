# GNON cluster, part 4/8 (Track A byte-match + overview -
# 0x3288=12936B, the LARGEST function landed in this project).
# update() - GNON's core per-frame state machine, driving the byte-code
# script interpreter's actual opcode semantics (see slot21, fn_801964AC
# below). An earlier deep-dive session (project_fsa_gnon_actor_progress)
# did a TARGETED partial read (not exhaustive - the function is far too
# large for a full linear pass) and confirmed: (1) a per-frame countdown
# over a run of consecutive timer fields (this->0x234/0x238/0x23c/0x240/
# 0x244/0x248/...), each decremented by 1 if >0 every frame - these are
# the same timer fields slot21's script interpreter reloads from script
# bytes, confirming script bytes are HOLD-DURATIONS in frames, not raw
# dispatched opcodes; (2) a "both timers expired" handler that releases
# the same 5-slot effect-handle array the destructor manages (this->
# 0x328-0x338, via fn_8017EAB4's stop-flag setter), spawns 3 new sound/
# effect instances via fn_8013CC50 (IDs 0x57/0x1cc/0x1cd), fires a 3rd
# distinct settings-gated event fn_801F0E34(0x50002), and reconfigures
# this->0x230/0x234/0x2a8 (hitbox/state-config + timer reset). The bulk
# of the function (likely dozens more per-phase blocks) remains
# untraced - byte-matched via direct transcription, full per-opcode
# semantic mapping deferred to a dedicated future effort.
.section extab, "a"
.balign 4
.global etb_80007804
etb_80007804:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_80007804, 8

.section extabindex, "a"
.balign 4
.global eti_80014584
eti_80014584:
    .4byte fn_80192D98
    .4byte 0x00003288
    .4byte etb_80007804
.size eti_80014584, 12

.text
.balign 4
.global fn_80192D98

fn_80192D98:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stmw 27, 0x9c(1)
    lis 4, lbl_804A1FF8@ha
    mr 31, 3
    addi 30, 4, lbl_804A1FF8@l
    addi 3, 1, 0x74
    bl fn_8003B2CC
    addi 3, 1, 0x68
    bl fn_8003B2CC
    addi 3, 1, 0x58
    bl fn_8018E890
    addi 3, 1, 0x68
    li 28, 0x0
    bl fn_801546BC
    li 0, 0x2710
    stw 0, 0x108(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x1f
    .4byte 0x40820010 # bne .L_80192E08
    mr 3, 31
    bl fn_80192BD8
    .4byte 0x480031F8 # b .L_80195FFC
L_80192E08:
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80192E14
    bl fn_8017ECC0
L_80192E14:
    addi 3, 31, 0xc
    bl fn_80154718
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820330 # bne .L_80193154
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    mr 3, 31
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    lwz 12, 0x0(31)
    .4byte 0xC042B2FC # lfs f2, lbl_8053E29C@sda21(r0)
    lwz 12, 0x2c(12)
    .4byte 0xC062B300 # lfs f3, lbl_8053E2A0@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082319C # bne .L_80195FFC
    mr 3, 31
    li 4, 0x0
    bl fn_801F3D94
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x418200D4 # beq .L_80192F4C
    lbz 0, 0x2a6(31)
    cmplwi 0, 0x0
    .4byte 0x408202D0 # bne .L_80193154
    lfs 1, 0x2ac(31)
    .4byte 0xC002B304 # lfs f0, lbl_8053E2A4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408102C0 # ble .L_80193154
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x418202B0 # beq .L_80193154
    lwz 3, 0x298(31)
    cmpwi 3, 0x0
    .4byte 0x40810014 # ble .L_80192EC4
    lwz 0, 0x108(31)
    subfic 0, 0, 0x2710
    subf 0, 0, 3
    stw 0, 0x298(31)
L_80192EC4:
    lwz 0, 0x298(31)
    cmpwi 0, 0x0
    .4byte 0x41810064 # bgt .L_80192F30
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x41820068 # beq .L_80192F40
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80192F10
    li 0, 0x1e0
    mr 3, 31
    stw 0, 0x298(31)
    lis 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x2a0(31)
    .4byte 0x980D8FD1 # stb r0, lbl_8053AB91@sda21(r0)
    .4byte 0x48000034 # b .L_80192F40
L_80192F10:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80192F24
    li 3, 0x2
    li 4, 0x0
    bl fn_80196D30
L_80192F24:
    li 0, 0x9
    stw 0, 0x230(31)
    .4byte 0x48000014 # b .L_80192F40
L_80192F30:
    mr 3, 31
    lis 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
L_80192F40:
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0x4800020C # b .L_80193154
L_80192F4C:
    lbz 0, 0x2a6(31)
    cmplwi 0, 0x0
    .4byte 0x40820200 # bne .L_80193154
    li 27, 0x0
L_80192F5C:
    mr 3, 31
    mr 7, 27
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    mr. 29, 3
    .4byte 0x4180002C # blt .L_80192FA4
    addi 3, 1, 0x10
    bl fn_801546E4
    mr 3, 31
    addi 4, 1, 0x10
    bl fn_801F3128
    mr 3, 29
    addi 5, 1, 0x10
    li 4, 0x0
    li 6, 0x3
    bl fn_80238548
L_80192FA4:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFB0 # blt .L_80192F5C
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lfs 2, 0x10(31)
    lis 4, 0x474e
    lfs 1, 0x14(31)
    mr 3, 31
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    addi 4, 4, 0x4f4e
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_801F2718
    mr 0, 3
    addi 3, 31, 0xc
    mr 27, 0
    addi 4, 1, 0x74
    bl fn_80196D70
    cmpwi 27, 0x0
    .4byte 0x41800158 # blt .L_80193154
    mr 3, 27
    bl fn_8015445C
    mr. 29, 3
    .4byte 0x41820148 # beq .L_80193154
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x40820138 # bne .L_80193154
    mr 3, 29
    bl fn_801544C8
    cmplwi 3, 0x14
    .4byte 0x41820034 # beq .L_80193060
    mr 3, 29
    bl fn_801544C8
    cmplwi 3, 0x15
    .4byte 0x41820024 # beq .L_80193060
    mr 3, 29
    bl fn_801544C8
    cmplwi 3, 0x16
    .4byte 0x41820014 # beq .L_80193060
    mr 3, 29
    bl fn_801544C8
    cmplwi 3, 0x17
    .4byte 0x408200F8 # bne .L_80193154
L_80193060:
    lwz 4, 0x298(31)
    lis 0, 0x4330
    stw 0, 0x80(1)
    mr 3, 31
    xoris 0, 4, 0x8000
    .4byte 0xC842B2F0 # lfd f2, lbl_8053E290@sda21(r0)
    stw 0, 0x84(1)
    addi 5, 31, 0xc
    .4byte 0xC002B308 # lfs f0, lbl_8053E2A8@sda21(r0)
    li 4, 0x0
    lfd 1, 0x80(1)
    li 6, 0x3
    li 7, 0x0
    li 8, -0x1
    fsubs 1, 1, 2
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stw 0, 0x298(31)
    bl fn_801F37AC
    mr 3, 31
    li 4, 0x0
    bl fn_801544D0
    li 0, 0x1
    lis 4, 0x5
    .4byte 0x980D8FD0 # stb r0, lbl_8053AB90@sda21(r0)
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1ce
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 29
    li 4, 0x0
    bl fn_8018A5A8
    li 0, 0x1
    stb 0, 0x2a6(31)
    lwz 0, 0x298(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_80193130
    li 0, 0x9
    stw 0, 0x230(31)
    .4byte 0x48000020 # b .L_8019314C
L_80193130:
    li 0, 0xf
    mr 3, 31
    stw 0, 0x28c(31)
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
L_8019314C:
    addi 3, 31, 0x3c
    bl fn_801546BC
L_80193154:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80193168
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80193168:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019317C
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8019317C:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80193190
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80193190:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801931A4
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_801931A4:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801931B8
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_801931B8:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801931CC
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_801931CC:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801931E0
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_801931E0:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801931F4
    subi 0, 3, 0x1
    stw 0, 0x250(31)
L_801931F4:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80193208
    subi 0, 3, 0x1
    stw 0, 0x254(31)
L_80193208:
    lwz 3, 0x258(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019321C
    subi 0, 3, 0x1
    stw 0, 0x258(31)
L_8019321C:
    lwz 0, 0x28c(31)
    cmpwi 0, 0xf
    .4byte 0x40820018 # bne .L_8019323C
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x0
    .4byte 0x41822DCC # beq .L_80195FFC
    li 0, 0x3
    stw 0, 0x230(31)
L_8019323C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x1e
    .4byte 0x4182002C # beq .L_80193270
    lfs 1, 0x2b8(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B30C # lfs f2, lbl_8053E2AC@sda21(r0)
    .4byte 0xC062B2F8 # lfs f3, lbl_8053E298@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2bc(31)
    addi 3, 31, 0x40
    .4byte 0xC042B30C # lfs f2, lbl_8053E2AC@sda21(r0)
    .4byte 0xC062B2F8 # lfs f3, lbl_8053E298@sda21(r0)
    bl fn_801F71A4
L_80193270:
    addi 3, 31, 0xc
    addi 4, 31, 0x3c
    bl fn_801545F0
    lwz 3, 0x90(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8019329C
    subi 0, 3, 0x14
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_8019329C
    cmplwi 3, 0x17
    .4byte 0x40820010 # bne .L_801932A8
L_8019329C:
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
L_801932A8:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082029C # bne .L_8019354C
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x418200AC # beq .L_80193368
    cmpwi 0, 0xa
    .4byte 0x418200A4 # beq .L_80193368
    cmpwi 0, 0xc
    .4byte 0x4182009C # beq .L_80193368
    cmpwi 0, 0x19
    .4byte 0x41820094 # beq .L_80193368
    cmpwi 0, 0x1a
    .4byte 0x4182008C # beq .L_80193368
    cmpwi 0, 0x1b
    .4byte 0x41820084 # beq .L_80193368
    .4byte 0xC022B310 # lfs f1, lbl_8053E2B0@sda21(r0)
    lfs 0, 0x2ac(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820074 # bne .L_80193368
    .4byte 0xC022B314 # lfs f1, lbl_8053E2B4@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC062B318 # lfs f3, lbl_8053E2B8@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x4182001C # beq .L_80193334
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    .4byte 0x48000020 # b .L_80193350
L_80193334:
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
L_80193350:
    .4byte 0xC022B31C # lfs f1, lbl_8053E2BC@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC062B320 # lfs f3, lbl_8053E2C0@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
L_80193368:
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    lwz 0, 0x230(31)
    cmpwi 0, 0xc
    .4byte 0x41820038 # beq .L_801933C0
    cmpwi 0, 0xb
    .4byte 0x41820030 # beq .L_801933C0
    cmpwi 0, 0x10
    .4byte 0x41820028 # beq .L_801933C0
    cmpwi 0, 0x11
    .4byte 0x41820020 # beq .L_801933C0
    cmpwi 0, 0x12
    .4byte 0x41820018 # beq .L_801933C0
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    mr 28, 3
L_801933C0:
    lwz 0, 0x230(31)
    cmpwi 0, 0xe
    .4byte 0x4182017C # beq .L_80193544
    cmpwi 0, 0xf
    .4byte 0x41820174 # beq .L_80193544
    cmpwi 0, 0x4
    .4byte 0x40820044 # bne .L_8019341C
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_801933FC
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 31, 0x2ac
    .4byte 0xC042B2E4 # lfs f2, lbl_8053E284@sda21(r0)
    .4byte 0xC062B324 # lfs f3, lbl_8053E2C4@sda21(r0)
    bl fn_801F71A4
L_801933FC:
    .4byte 0xC022B328 # lfs f1, lbl_8053E2C8@sda21(r0)
    addi 3, 31, 0x14
    .4byte 0xC042B2E4 # lfs f2, lbl_8053E284@sda21(r0)
    .4byte 0xC062B324 # lfs f3, lbl_8053E2C4@sda21(r0)
    bl fn_801F71A4
    li 0, 0x0
    stw 0, 0x26c(31)
    .4byte 0x48000044 # b .L_8019345C
L_8019341C:
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x41800038 # blt .L_8019345C
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_80193448
    .4byte 0xC022B310 # lfs f1, lbl_8053E2B0@sda21(r0)
    addi 3, 31, 0x2ac
    .4byte 0xC042B2E4 # lfs f2, lbl_8053E284@sda21(r0)
    .4byte 0xC062B324 # lfs f3, lbl_8053E2C4@sda21(r0)
    bl fn_801F71A4
L_80193448:
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    addi 3, 31, 0x14
    .4byte 0xC042B2E4 # lfs f2, lbl_8053E284@sda21(r0)
    .4byte 0xC062B324 # lfs f3, lbl_8053E2C4@sda21(r0)
    bl fn_801F71A4
L_8019345C:
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_8019347C
    .4byte 0xC022B310 # lfs f1, lbl_8053E2B0@sda21(r0)
    addi 3, 31, 0x2ac
    .4byte 0xC042B2E4 # lfs f2, lbl_8053E284@sda21(r0)
    .4byte 0xC062B324 # lfs f3, lbl_8053E2C4@sda21(r0)
    bl fn_801F71A4
L_8019347C:
    lfs 1, 0x2ac(31)
    .4byte 0xC002B32C # lfs f0, lbl_8053E2CC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80193494
    .4byte 0xC002B310 # lfs f0, lbl_8053E2B0@sda21(r0)
    stfs 0, 0x2ac(31)
L_80193494:
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x418000A8 # blt .L_80193544
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x4082009C # bne .L_80193544
    lfs 1, 0x14(31)
    .4byte 0xC002B330 # lfs f0, lbl_8053E2D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080008C # bge .L_80193544
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1c8
    stfs 0, 0x14(31)
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    lwz 3, 0x4(31)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1c9
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x28
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    li 4, 0x0
    .4byte 0xC022B334 # lfs f1, lbl_8053E2D4@sda21(r0)
    .4byte 0xC042B2D8 # lfs f2, lbl_8053E278@sda21(r0)
    bl fn_80196D8C
    li 0, 0x1
    stw 0, 0x26c(31)
L_80193544:
    lfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
L_8019354C:
    lwz 0, 0x230(31)
    cmplwi 0, 0x2b
    .4byte 0x41812AA8 # bgt .L_80195FFC
    lis 3, jumptable_804A264C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A264C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lfs 1, 0x78(1)
    li 0, 0x1
    .4byte 0xC002B2FC # lfs f0, lbl_8053E29C@sda21(r0)
    addi 3, 1, 0x74
    fadds 0, 1, 0
    stfs 0, 0x78(1)
    stw 0, 0x26c(31)
    bl fn_8017EB44
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    li 0, 0x1
    stw 0, 0x28c(31)
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x96
    .4byte 0x41802A3C # blt .L_80195FFC
    bl fn_8022ADE4
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x264(31)
    stw 0, 0x230(31)
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lfs 1, 0x78(1)
    addi 3, 1, 0x74
    .4byte 0xC002B2FC # lfs f0, lbl_8053E29C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x78(1)
    bl fn_8017EB44
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    li 0, 0x6
    mr 3, 31
    stw 0, 0x28c(31)
    bl fn_801545E8
    mr 29, 3
    mr 3, 31
    bl fn_8015461C
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 28
    mr 5, 29
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    addi 3, 1, 0x74
    bl fn_801546BC
    .4byte 0xC002B33C # lfs f0, lbl_8053E2DC@sda21(r0)
    addi 3, 1, 0x3c
    addi 4, 1, 0x74
    stfs 0, 0x78(1)
    bl fn_801546D0
    mr 30, 3
    mr 3, 31
    bl fn_8015461C
    mr 29, 3
    mr 3, 31
    bl fn_801545E8
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 5, 28
    mr 6, 29
    mr 7, 30
    li 4, 0x34e
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41822960 # beq .L_80195FFC
    li 0, 0x2
    stw 0, 0x230(31)
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lfs 1, 0x78(1)
    addi 3, 1, 0x74
    .4byte 0xC002B2FC # lfs f0, lbl_8053E29C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x78(1)
    bl fn_8017EB44
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    mr 3, 31
    bl fn_801545E8
    mr 29, 3
    mr 3, 31
    bl fn_8015461C
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 28
    mr 5, 29
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    mr 3, 31
    bl fn_801545E8
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 28
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418228D4 # beq .L_80195FFC
    bl fn_8018A63C
    li 0, 0x1
    sth 0, 0x94(31)
    bl fn_8018A6AC
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0xc
    li 6, 0x0
    bl fn_80458FF0
    lis 3, 0x1
    li 0, 0x3
    addi 3, 3, -0x8000
    sth 3, 0x2b6(31)
    stw 0, 0x230(31)
    .4byte 0x48002898 # b .L_80195FFC
    li 0, 0x0
    stw 0, 0x264(31)
    bl fn_80154744
    .4byte 0xC042B340 # lfs f2, lbl_8053E2E0@sda21(r0)
    li 0, 0x0
    .4byte 0xC002B300 # lfs f0, lbl_8053E2A0@sda21(r0)
    fmadds 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 3, 0x8c(1)
    stw 3, 0x23c(31)
    .4byte 0x980D8FD0 # stb r0, lbl_8053AB90@sda21(r0)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_801937EC
    bl fn_80154744
    .4byte 0xC042B344 # lfs f2, lbl_8053E2E4@sda21(r0)
    .4byte 0xC002B340 # lfs f0, lbl_8053E2E0@sda21(r0)
    fmadds 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stw 0, 0x240(31)
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_801937EC
    bl fn_80154744
    .4byte 0xC002B348 # lfs f0, lbl_8053E2E8@sda21(r0)
    fmadds 0, 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stw 0, 0x240(31)
L_801937EC:
    li 0, 0x5
    li 3, 0x0
    stw 0, 0x28c(31)
    li 0, 0x4
    .4byte 0xC002B310 # lfs f0, lbl_8053E2B0@sda21(r0)
    stb 3, 0x2a6(31)
    sth 3, 0x2b4(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B334 # lfs f0, lbl_8053E2D4@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b8(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B334 # lfs f0, lbl_8053E2D4@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2bc(31)
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x40820048 # bne .L_80193898
    .4byte 0xC022B318 # lfs f1, lbl_8053E2B8@sda21(r0)
    lfs 0, 0x2e0(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810030 # ble .L_80193898
    lfs 1, 0x40(31)
    .4byte 0xC002B2F8 # lfs f0, lbl_8053E298@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810020 # ble .L_80193898
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80193898
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x23c(31)
    stw 0, 0x274(31)
L_80193898:
    lhz 6, 0x2b4(31)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x1000
    addi 4, 4, 0xb2
    sth 0, 0x2b4(31)
    bl fn_801F0E34
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_801938FC
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    addi 3, 31, 0xc
    addi 4, 31, 0x2c4
    bl fn_80196D70
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x52
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0x74
    bl fn_80196D70
L_801938FC:
    clrlwi. 0, 28, 24
    .4byte 0x40820010 # bne .L_80193910
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80193938
L_80193910:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80193938
    addi 3, 31, 0x2b8
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x480026C8 # b .L_80195FFC
L_80193938:
    lwz 3, 0x2a0(31)
    cmpwi 3, 0x3
    .4byte 0x4182001C # beq .L_8019395C
    lwz 0, 0x2fc(31)
    cmpwi 0, -0x1
    .4byte 0x40820010 # bne .L_8019395C
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x480026A4 # b .L_80195FFC
L_8019395C:
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x0
    .4byte 0x40822698 # bne .L_80195FFC
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082268C # bne .L_80195FFC
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_80193994
    lfs 1, 0x10(31)
    lfs 0, 0x2e0(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80193994
    li 0, 0x13
    stw 0, 0x230(31)
L_80193994:
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801939A8
    li 0, 0x19
    stw 0, 0x230(31)
L_801939A8:
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x4082264C # bne .L_80195FFC
    lfs 1, 0x10(31)
    lfs 0, 0x2e0(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080263C # bge .L_80195FFC
    li 0, 0x16
    stw 0, 0x230(31)
    .4byte 0x48002630 # b .L_80195FFC
    lwz 5, 0x240(31)
    li 4, 0x1
    li 0, 0x32
    addi 3, 31, 0x2b8
    stw 5, 0x264(31)
    stw 4, 0x28c(31)
    stw 0, 0x23c(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x268(31)
    stw 3, 0x26c(31)
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408225E8 # bne .L_80195FFC
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x0
    .4byte 0x408225DC # bne .L_80195FFC
    lwz 5, 0x264(31)
    li 0, 0x3
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    stw 5, 0x240(31)
    stw 0, 0x230(31)
    bl fn_80196D70
    bl fn_80154744
    .4byte 0xC002B30C # lfs f0, lbl_8053E2AC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000C4 # bge .L_80193B10
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x0
    .4byte 0x418000B8 # blt .L_80193B10
    lhz 0, 0x304(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC042B2FC # lfs f2, lbl_8053E29C@sda21(r0)
    lfs 0, 0xc(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x304(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC062B2FC # lfs f3, lbl_8053E29C@sda21(r0)
    mr 3, 31
    lfs 2, 0x10(31)
    li 4, 0x0
    .4byte 0xC002B328 # lfs f0, lbl_8053E2C8@sda21(r0)
    li 5, 0x0
    fmadds 1, 3, 1, 2
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_801545C0
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_80193B10
    lhz 0, 0x304(31)
    sth 0, 0x2b6(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_80193B00
    li 3, 0x0
    li 0, 0x1e
    stw 3, 0x274(31)
    stw 0, 0x24c(31)
    bl fn_80154744
    .4byte 0xC002B34C # lfs f0, lbl_8053E2EC@sda21(r0)
    lis 3, 0x1
    subi 0, 3, 0x7000
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 3, 0x8c(1)
    subf 0, 3, 0
    sth 0, 0x2b6(31)
L_80193B00:
    addi 3, 31, 0xc
    addi 4, 1, 0x74
    bl fn_80196D70
    .4byte 0x480024F0 # b .L_80195FFC
L_80193B10:
    lfs 3, 0x2dc(31)
    lfs 2, 0xc(31)
    lfs 1, 0x2e0(31)
    lfs 0, 0x10(31)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    sth 3, 0x2b6(31)
    bl fn_80154744
    .4byte 0xC042B350 # lfs f2, lbl_8053E2F0@sda21(r0)
    li 0, 0x0
    .4byte 0xC002B34C # lfs f0, lbl_8053E2EC@sda21(r0)
    addi 3, 1, 0x74
    lhz 5, 0x2b6(31)
    addi 4, 31, 0xc
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 6, 0x8c(1)
    add 5, 5, 6
    sth 5, 0x2b6(31)
    stw 0, 0x274(31)
    bl fn_80196D70
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC042B2FC # lfs f2, lbl_8053E29C@sda21(r0)
    lfs 0, 0xc(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC062B2FC # lfs f3, lbl_8053E29C@sda21(r0)
    mr 3, 31
    lfs 2, 0x10(31)
    li 4, 0x0
    .4byte 0xC002B328 # lfs f0, lbl_8053E2C8@sda21(r0)
    li 5, 0x0
    fmadds 1, 3, 1, 2
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_801545C0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80193BDC
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    sth 3, 0x2b6(31)
L_80193BDC:
    addi 3, 31, 0xc
    addi 4, 1, 0x74
    bl fn_80196D70
    .4byte 0x48002414 # b .L_80195FFC
    li 0, 0x5
    li 3, 0x0
    stw 0, 0x28c(31)
    li 0, 0x8
    sth 3, 0x2b4(31)
    stw 0, 0x230(31)
    lwz 3, 0x2fc(31)
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_80193C28
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80193C28
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480023D8 # b .L_80195FFC
L_80193C28:
    lfs 1, 0x2e0(31)
    lfs 0, 0x10(31)
    lfs 2, 0x2dc(31)
    fsubs 30, 1, 0
    lfs 0, 0xc(31)
    fsubs 31, 2, 0
    fmuls 0, 30, 30
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002B354 # lfs f0, lbl_8053E2F4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810068 # ble .L_80193CBC
    lhz 6, 0x2b4(31)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x1000
    addi 4, 4, 0xb2
    sth 0, 0x2b4(31)
    bl fn_801F0E34
    fmr 1, 31
    fmr 2, 30
    bl fn_8015465C
    sth 3, 0x2b6(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B358 # lfs f0, lbl_8053E2F8@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b8(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B358 # lfs f0, lbl_8053E2F8@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2bc(31)
    .4byte 0x48002344 # b .L_80195FFC
L_80193CBC:
    li 0, 0x1
    addi 3, 31, 0x2b8
    stw 0, 0x28c(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0x48002328 # b .L_80195FFC
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_80193D34
    lwz 3, 0x294(31)
    cmpwi 3, 0x0
    .4byte 0x40810018 # ble .L_80193D04
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80193D04
    li 4, 0x0
    bl fn_8018A598
L_80193D04:
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 1, 0x30
    fmr 2, 1
    fmr 3, 1
    bl fn_80196D60
    mr 4, 3
    addi 3, 31, 0x2d0
    bl fn_80196D70
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x294(31)
    stb 0, 0x2a5(31)
L_80193D34:
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x1
    .4byte 0x40820050 # bne .L_80193D8C
    bl fn_8018A660
    cmpwi 3, 0x0
    .4byte 0x418222B4 # beq .L_80195FFC
    li 27, 0x0
L_80193D50:
    mr 3, 27
    bl fn_80230C6C
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFF0 # blt .L_80193D50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    li 4, 0x0
    .4byte 0xC022B358 # lfs f1, lbl_8053E2F8@sda21(r0)
    .4byte 0xC042B2D8 # lfs f2, lbl_8053E278@sda21(r0)
    bl fn_80196D8C
L_80193D8C:
    li 0, 0x140
    li 30, 0x0
    stw 0, 0x298(31)
    mr 29, 31
    mr 28, 30
L_80193DA0:
    lwz 3, 0x328(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80193DB4
    bl fn_8017EAB4
    stw 28, 0x328(29)
L_80193DB4:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFE0 # blt .L_80193DA0
    addi 3, 31, 0x2b8
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 3, 0xe
    li 0, 0x1
    stw 3, 0x28c(31)
    stb 0, 0x2a6(31)
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x3
    .4byte 0x4082006C # bne .L_80193E58
    li 0, 0xd
    stw 0, 0x28c(31)
    lwz 3, 0x29c(31)
    addi 0, 3, 0x1
    stw 0, 0x29c(31)
    lwz 0, 0x29c(31)
    cmpwi 0, 0x3
    .4byte 0x4081000C # ble .L_80193E18
    li 0, 0x3
    stw 0, 0x29c(31)
L_80193E18:
    li 0, 0x1
    .4byte 0xC022B31C # lfs f1, lbl_8053E2BC@sda21(r0)
    .4byte 0x980D8FD0 # stb r0, lbl_8053AB90@sda21(r0)
    li 0, 0x140
    .4byte 0xC062B320 # lfs f3, lbl_8053E2C0@sda21(r0)
    fmr 2, 1
    stw 0, 0x298(31)
    addi 3, 31, 0x70
    fmr 4, 3
    lwz 0, 0x29c(31)
    mulli 4, 0, 0x64
    addi 0, 4, 0x1f4
    stw 0, 0x244(31)
    bl fn_80154590
    li 0, 0xe
    stw 0, 0xb0(31)
L_80193E58:
    li 0, 0xa
    stw 0, 0x230(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x5
    .4byte 0x408200FC # bne .L_80193F64
    li 0, 0xc
    lis 4, 0x5
    stw 0, 0x28c(31)
    mr 3, 31
    addi 4, 4, 0x7
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x8
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x536
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x537
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x538
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x328(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80193F4C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x539
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
L_80193F4C:
    li 3, 0x2
    li 4, 0x0
    bl fn_80196D30
    li 0, 0xd
    stw 0, 0x230(31)
    .4byte 0x4800209C # b .L_80195FFC
L_80193F64:
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x1
    .4byte 0x40820078 # bne .L_80193FE4
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 1, 0x74
    bl fn_8017EC70
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x40822064 # bne .L_80195FFC
    bl fn_80119DD0
    li 4, 0x32
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x1
    li 9, 0x32
    li 10, 0x0
    bl fn_80119998
    li 0, 0x46
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    stw 0, 0x23c(31)
    li 3, 0x1
    li 0, 0xb
    stfs 0, 0x2b0(31)
    stb 3, 0x2a6(31)
    stw 0, 0x230(31)
    .4byte 0x4800201C # b .L_80195FFC
L_80193FE4:
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x41812010 # bgt .L_80195FFC
    .4byte 0xC022B31C # lfs f1, lbl_8053E2BC@sda21(r0)
    addi 3, 31, 0x70
    .4byte 0xC062B320 # lfs f3, lbl_8053E2C0@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    lis 3, 0xa04
    li 4, 0x1
    addi 0, 3, 0x4
    li 3, 0xb
    stw 0, 0xb0(31)
    li 0, 0xc
    stb 4, 0x2a6(31)
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x48001FD0 # b .L_80195FFC
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_80194060
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 1, 0x74
    bl fn_8017EC70
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    .4byte 0x48001FA0 # b .L_80195FFC
L_80194060:
    li 0, 0x2
    addi 3, 31, 0xc
    sth 0, 0x94(31)
    addi 4, 31, 0x2dc
    lfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    bl fn_80196D70
    lfs 1, 0xc(31)
    .4byte 0xC002B344 # lfs f0, lbl_8053E2E4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x28c(31)
    cmpwi 0, 0xb
    .4byte 0x40821F68 # bne .L_80195FFC
    li 3, 0x4
    li 0, 0xc
    sth 3, 0x94(31)
    stw 0, 0x230(31)
    .4byte 0x48001F54 # b .L_80195FFC
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x40821F48 # bne .L_80195FFC
    li 0, 0x0
    .4byte 0x980D8FD0 # stb r0, lbl_8053AB90@sda21(r0)
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_801940F0
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    li 4, 0x5
    li 3, 0x2
    li 0, 0x10
    stfs 0, 0x2a8(31)
    stw 4, 0x28c(31)
    sth 3, 0x94(31)
    stw 0, 0x230(31)
    .4byte 0x48001F10 # b .L_80195FFC
L_801940F0:
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48001F04 # b .L_80195FFC
    bl fn_8018A660
    cmpwi 3, 0x0
    .4byte 0x41821EF8 # beq .L_80195FFC
    li 27, 0x0
L_8019410C:
    mr 3, 27
    bl fn_80230C6C
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFF0 # blt .L_8019410C
    li 0, 0x1
    stb 0, 0x2a5(31)
    bl GlobalMgr_SetBit0x10_0xdc
    bl fn_8018A6AC
    li 4, 0x3c
    bl fn_80458F9C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x6d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    li 0, 0xe
    stw 3, 0x238(31)
    stw 3, 0x264(31)
    stw 0, 0x230(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_801941C4
    bl fn_80154744
    .4byte 0xC002B35C # lfs f0, lbl_8053E2FC@sda21(r0)
    addi 4, 31, 0xc
    li 5, 0x488
    li 6, 0x1
    fmadds 0, 0, 1, 0
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stw 0, 0x238(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
L_801941C4:
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 31, 0x2ac
    .4byte 0xC042B360 # lfs f2, lbl_8053E300@sda21(r0)
    .4byte 0xC062B364 # lfs f3, lbl_8053E304@sda21(r0)
    bl fn_801F71A4
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0xdc
    .4byte 0x40820028 # bne .L_80194214
    bl fn_80119DD0
    li 4, 0x32
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x1
    li 9, 0x82
    li 10, 0x0
    bl fn_80119998
L_80194214:
    lwz 0, 0x264(31)
    cmpwi 0, 0x172
    .4byte 0x41801DE0 # blt .L_80195FFC
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    li 0, 0xa
    addi 3, 31, 0xc
    addi 4, 31, 0x2dc
    stfs 0, 0x2ac(31)
    stw 0, 0x238(31)
    bl fn_80196D70
    li 0, 0x6
    sth 0, 0x94(31)
    lwz 28, 0x328(31)
    cmplwi 28, 0x0
    .4byte 0x41820018 # beq .L_80194264
    bl fn_8018A5F0
    mr 4, 28
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x328(31)
L_80194264:
    bl GlobalMgr_GetByte_0x24f
    bl Table_SetSelfIndexedByte86
    li 0, 0xf
    stw 0, 0x230(31)
    .4byte 0x48001D88 # b .L_80195FFC
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40821D7C # bne .L_80195FFC
    bl fn_8022ADCC
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
    .4byte 0x48001D68 # b .L_80195FFC
    addi 3, 1, 0x74
    addi 4, 31, 0x2dc
    bl fn_80196D70
    lfs 2, 0x2e0(31)
    addi 3, 1, 0x74
    .4byte 0xC002B368 # lfs f0, lbl_8053E308@sda21(r0)
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x78(1)
    bl fn_8017EC70
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    mr 3, 31
    bl fn_8015461C
    bl fn_801826A4
    mr 4, 3
    addi 3, 1, 0x58
    bl fn_8017EC38
    .4byte 0xC042B330 # lfs f2, lbl_8053E2D0@sda21(r0)
    addi 3, 31, 0x2a8
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    lfs 1, 0x2dc(31)
    lfs 0, 0xc(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    lfs 2, 0x2e0(31)
    .4byte 0xC002B368 # lfs f0, lbl_8053E308@sda21(r0)
    lfs 3, 0x2a8(31)
    fsubs 2, 2, 0
    lfs 0, 0x10(31)
    fmuls 31, 3, 1
    fsubs 1, 2, 0
    bl fn_8015436C
    lfs 0, 0x2a8(31)
    fmr 3, 31
    .4byte 0xC042B2F8 # lfs f2, lbl_8053E298@sda21(r0)
    addi 3, 31, 0xc
    fmuls 30, 0, 1
    lfs 1, 0x2dc(31)
    bl fn_801F71A4
    lfs 1, 0x2e0(31)
    fmr 3, 30
    .4byte 0xC002B368 # lfs f0, lbl_8053E308@sda21(r0)
    addi 3, 31, 0x10
    .4byte 0xC042B2F8 # lfs f2, lbl_8053E298@sda21(r0)
    fsubs 1, 1, 0
    bl fn_801F71A4
    lfs 1, 0x2a8(31)
    .4byte 0xC002B36C # lfs f0, lbl_8053E30C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41801C94 # blt .L_80195FFC
    addi 3, 31, 0x2b8
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 3, 0x1
    li 0, 0x11
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x48001C70 # b .L_80195FFC
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 1, 0x74
    bl fn_8017EC70
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x32
    .4byte 0x40811C38 # ble .L_80195FFC
    li 0, 0x32
    addi 3, 1, 0x74
    stw 0, 0x264(31)
    bl fn_801546BC
    .4byte 0xC002B33C # lfs f0, lbl_8053E2DC@sda21(r0)
    mr 3, 31
    stfs 0, 0x78(1)
    bl fn_801545E8
    mr 29, 3
    mr 3, 31
    bl fn_8015461C
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 28
    mr 5, 29
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    addi 3, 1, 0x24
    addi 4, 1, 0x74
    bl fn_801546D0
    mr 30, 3
    mr 3, 31
    bl fn_8015461C
    mr 29, 3
    mr 3, 31
    bl fn_801545E8
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 5, 28
    mr 6, 29
    mr 7, 30
    li 4, 0x2dd
    li 8, 0x102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41821B9C # beq .L_80195FFC
    li 3, 0x6
    li 0, 0x12
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x48001B88 # b .L_80195FFC
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 1, 0x74
    bl fn_8017EC70
    .4byte 0xC022B338 # lfs f1, lbl_8053E2D8@sda21(r0)
    bl fn_8017EB1C
    mr 3, 31
    bl fn_801545E8
    mr 29, 3
    mr 3, 31
    bl fn_8015461C
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 28
    mr 5, 29
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    mr 3, 31
    bl fn_801545E8
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 28
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41821B10 # beq .L_80195FFC
    bl fn_8018A63C
    li 0, 0x3
    sth 0, 0x94(31)
    stw 0, 0x2a0(31)
    stw 0, 0x230(31)
    .4byte 0x48001AF8 # b .L_80195FFC
    lfs 1, 0x14(31)
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41801AE8 # blt .L_80195FFC
    li 0, 0x0
    addi 3, 31, 0x2b8
    stw 0, 0x240(31)
    stw 0, 0x264(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x78
    li 30, 0x0
    stw 0, 0x23c(31)
    mr 29, 31
    mr 28, 30
L_80194548:
    lwz 3, 0x328(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8019455C
    bl fn_8017EAB4
    stw 28, 0x328(29)
L_8019455C:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFE0 # blt .L_80194548
    li 3, 0x2
    li 0, 0x14
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x40821A78 # bne .L_80195FFC
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lfs 3, 0x74(1)
    .4byte 0xC002B370 # lfs f0, lbl_8053E310@sda21(r0)
    lfs 2, 0x78(1)
    .4byte 0xC022B374 # lfs f1, lbl_8053E314@sda21(r0)
    fadds 3, 3, 0
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    fadds 1, 2, 1
    stfs 3, 0x74(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    lwz 0, 0x328(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_801945F4
    lwz 3, 0x4(31)
    addi 4, 1, 0x74
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1d1
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
L_801945F4:
    lwz 0, 0x32c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019462C
    lwz 3, 0x4(31)
    addi 4, 1, 0x74
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1d2
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
L_8019462C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x53
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408219B4 # bne .L_80195FFC
    li 0, 0x64
    stw 0, 0x23c(31)
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x4
    .4byte 0x41800098 # blt .L_80194700
    li 0, 0x0
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stw 0, 0x264(31)
    lwz 28, 0x328(31)
    cmplwi 28, 0x0
    .4byte 0x41820018 # beq .L_8019469C
    bl fn_8018A5F0
    mr 4, 28
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x328(31)
L_8019469C:
    lwz 28, 0x32c(31)
    cmplwi 28, 0x0
    .4byte 0x41820018 # beq .L_801946BC
    bl fn_8018A5F0
    mr 4, 28
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x32c(31)
L_801946BC:
    li 30, 0x0
    mr 29, 31
    mr 28, 30
L_801946C8:
    lwz 3, 0x328(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801946DC
    bl fn_8017EAB4
    stw 28, 0x328(29)
L_801946DC:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFE0 # blt .L_801946C8
    li 3, 0x4
    li 0, 0x15
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x48001900 # b .L_80195FFC
L_80194700:
    lwz 3, 0x4(31)
    addi 4, 1, 0x74
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1c5
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x74
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1c6
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 28, 0x0
L_80194754:
    lwz 3, 0x4(31)
    addi 4, 1, 0x74
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1c7
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    cmpwi 28, 0xa
    .4byte 0x4180FFD0 # blt .L_80194754
    bl fn_80154744
    .4byte 0xC042B34C # lfs f2, lbl_8053E2EC@sda21(r0)
    lis 4, 0x3
    .4byte 0xC002B378 # lfs f0, lbl_8053E318@sda21(r0)
    mr 3, 31
    addi 4, 4, 0x54
    li 5, 0x0
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 30, 0x8c(1)
    bl fn_801F0E34
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    li 29, 0x0
    lis 28, 0x474e
L_801947D4:
    mr 3, 31
    bl fn_8015461C
    mr 4, 3
    addi 3, 28, 0x4f4e
    addi 5, 1, 0x74
    addi 6, 29, 0xa
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80194810
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80194810
    sth 30, 0x2b6(3)
L_80194810:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFBC # blt .L_801947D4
    .4byte 0x480017E0 # b .L_80195FFC
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x408217D4 # bne .L_80195FFC
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480017C8 # b .L_80195FFC
    lfs 1, 0x14(31)
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418017B8 # blt .L_80195FFC
    li 0, 0x0
    addi 3, 31, 0x2b8
    stw 0, 0x240(31)
    stw 0, 0x264(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x18
    li 3, 0x2
    stw 0, 0x23c(31)
    li 0, 0x17
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x0
    .4byte 0x41821778 # beq .L_80195FFC
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082176C # bne .L_80195FFC
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    li 27, 0x0
    bl fn_80196D70
    lfs 3, 0x74(1)
    li 0, 0x50
    .4byte 0xC042B370 # lfs f2, lbl_8053E310@sda21(r0)
    li 30, 0x0
    lfs 1, 0x78(1)
    lis 29, 0x474e
    .4byte 0xC002B374 # lfs f0, lbl_8053E314@sda21(r0)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x74(1)
    stfs 0, 0x78(1)
    stw 0, 0x23c(31)
L_801948D4:
    mr 3, 31
    bl fn_8015461C
    lwz 6, 0x264(31)
    mr 4, 3
    addi 3, 29, 0x4f4e
    addi 5, 1, 0x74
    addi 6, 6, 0x14
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_80194930
    bl fn_8015445C
    mr. 28, 3
    .4byte 0x41820024 # beq .L_80194930
    sth 27, 0x2b6(28)
    addi 27, 27, 0x3333
    addi 3, 28, 0x2e8
    addi 4, 31, 0x2dc
    bl fn_80196D70
    lwz 0, 0x2f8(31)
    stw 0, 0x2f8(28)
    stw 30, 0x294(28)
L_80194930:
    addi 30, 30, 0x1
    cmpwi 30, 0x5
    .4byte 0x4180FF9C # blt .L_801948D4
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    bl fn_8018E89C
    lwz 0, 0x264(31)
    cmpw 0, 3
    .4byte 0x418016A8 # blt .L_80195FFC
    li 3, 0x0
    li 0, 0x18
    stw 3, 0x264(31)
    stw 0, 0x230(31)
    .4byte 0x48001694 # b .L_80195FFC
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40821688 # bne .L_80195FFC
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x4082167C # bne .L_80195FFC
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48001670 # b .L_80195FFC
    lfs 1, 0x14(31)
    .4byte 0xC002B2D8 # lfs f0, lbl_8053E278@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41801660 # blt .L_80195FFC
    li 28, 0x0
    li 0, -0x1
    stw 28, 0x240(31)
    mr 30, 28
    mr 29, 31
    stw 0, 0x294(31)
L_801949B8:
    lwz 3, 0x328(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801949CC
    bl fn_8017EAB4
    stw 28, 0x328(29)
L_801949CC:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFE0 # blt .L_801949B8
    li 0, 0x1
    addi 3, 31, 0x2b8
    stb 0, 0x2a6(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 3, 0x2
    li 0, 0x1a
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x0
    .4byte 0x418215F0 # beq .L_80195FFC
    bl fn_8018A660
    cmpwi 3, 0x0
    .4byte 0x418215E4 # beq .L_80195FFC
    li 27, 0x0
L_80194A20:
    mr 3, 27
    bl fn_80230C6C
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFF0 # blt .L_80194A20
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lfs 3, 0x74(1)
    mr 3, 31
    .4byte 0xC042B370 # lfs f2, lbl_8053E310@sda21(r0)
    li 4, 0x44
    lfs 1, 0x78(1)
    .4byte 0xC002B374 # lfs f0, lbl_8053E314@sda21(r0)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x74(1)
    stfs 0, 0x78(1)
    bl fn_801F0D20
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb3
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x74
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1c5
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 28, 0x0
L_80194AAC:
    lwz 3, 0x4(31)
    addi 4, 1, 0x74
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1c7
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    cmpwi 28, 0xa
    .4byte 0x4180FFD0 # blt .L_80194AAC
    bl fn_80119DD0
    li 4, 0x3c
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x1
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    li 0, 0x1e
    li 3, 0x3c
    stw 0, 0x23c(31)
    li 0, -0x1
    li 29, 0x0
    stw 3, 0x240(31)
    stw 0, 0x318(31)
    stw 0, 0x31c(31)
    stw 0, 0x320(31)
    stw 0, 0x324(31)
    stw 29, 0x300(31)
L_80194B30:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80194B88
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_80194B88
    mr 3, 29
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820020 # bne .L_80194B88
    lwz 0, 0x300(31)
    slwi 3, 0, 2
    addi 0, 3, 0x308
    stwx 29, 31, 0
    lwz 3, 0x300(31)
    addi 0, 3, 0x1
    stw 0, 0x300(31)
L_80194B88:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFA0 # blt .L_80194B30
    li 0, 0x1b
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x3
    .4byte 0x41810284 # bgt .L_80194E28
    cmpwi 0, 0x1
    .4byte 0x4180027C # blt .L_80194E28
    cmpwi 0, 0x3
    .4byte 0x40820088 # bne .L_80194C3C
    lwz 0, 0x300(31)
    cmpwi 0, 0x1
    .4byte 0x4081007C # ble .L_80194C3C
    addi 28, 31, 0x4
    li 29, 0x1
    .4byte 0x48000034 # b .L_80194C00
L_80194BD0:
    lwz 3, 0x304(28)
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x308(28)
    li 5, 0xaf
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 28, 28, 0x4
    addi 29, 29, 0x1
L_80194C00:
    lwz 0, 0x300(31)
    cmpw 29, 0
    .4byte 0x4180FFC8 # blt .L_80194BD0
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x304(3)
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x308(31)
    li 5, 0xaf
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80194C3C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x40820120 # bne .L_80194D64
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x40810114 # ble .L_80194D64
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    bl fn_80154744
    lwz 3, 0x300(31)
    lis 0, 0x4330
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842B2F0 # lfd f2, lbl_8053E290@sda21(r0)
    stw 0, 0x8c(1)
    lfd 0, 0x88(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    cmpw 0, 3
    .4byte 0x41800008 # blt .L_80194CA0
    li 0, 0x0
L_80194CA0:
    slwi 0, 0, 2
    add 28, 31, 0
    lwz 3, 0x308(28)
    bl fn_8023E724
    mr 4, 3
    addi 3, 31, 0xc
    bl fn_80196D70
    mr 3, 31
    bl fn_8015461C
    bl fn_801826A4
    mr 4, 3
    addi 3, 1, 0x58
    bl fn_8017EC38
    lfs 1, 0x5c(1)
    .4byte 0xC002B340 # lfs f0, lbl_8053E2E0@sda21(r0)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_80194CF0
    stfs 0, 0x10(31)
L_80194CF0:
    lfs 1, 0x64(1)
    .4byte 0xC002B340 # lfs f0, lbl_8053E2E0@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_80194D0C
    stfs 0, 0x10(31)
L_80194D0C:
    lfs 1, 0x58(1)
    .4byte 0xC002B340 # lfs f0, lbl_8053E2E0@sda21(r0)
    lfs 2, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_80194D28
    stfs 0, 0xc(31)
L_80194D28:
    lfs 1, 0x60(1)
    .4byte 0xC002B340 # lfs f0, lbl_8053E2E0@sda21(r0)
    lfs 2, 0xc(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_80194D44
    stfs 0, 0xc(31)
L_80194D44:
    lwz 3, 0x308(28)
    addi 4, 1, 0x74
    li 5, 0xaf
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80194D64:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x4082007C # bne .L_80194DE8
    li 29, 0x0
L_80194D74:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_80194DDC
    mr 3, 29
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820040 # bne .L_80194DDC
    mr 3, 29
    bl fn_8022F3DC
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_80194DDC
    mr 3, 29
    bl fn_8022F3DC
    bl fn_8023E724
    mr 4, 3
    mr 3, 29
    li 5, 0xaf
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80194DDC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF90 # blt .L_80194D74
L_80194DE8:
    lwz 28, 0x328(31)
    cmplwi 28, 0x0
    .4byte 0x41820018 # beq .L_80194E08
    bl fn_8018A5F0
    mr 4, 28
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x328(31)
L_80194E08:
    lwz 28, 0x32c(31)
    cmplwi 28, 0x0
    .4byte 0x41820018 # beq .L_80194E28
    bl fn_8018A5F0
    mr 4, 28
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x32c(31)
L_80194E28:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408211CC # bne .L_80195FFC
    bl fn_8018A63C
    li 0, 0x0
    li 3, 0x7
    stb 0, 0x2a6(31)
    li 0, 0x1c
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x480011AC # b .L_80195FFC
    lwz 0, 0x25c(31)
    cmpwi 0, 0x6
    .4byte 0x408200A8 # bne .L_80194F04
    lwz 0, 0x294(31)
    cmpwi 0, 0x0
    .4byte 0x4080009C # bge .L_80194F04
    addi 3, 1, 0x74
    addi 4, 31, 0x2c4
    bl fn_80196D70
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x474e
    mr 4, 3
    addi 3, 6, 0x4f4e
    addi 5, 1, 0x74
    li 6, 0x1e
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    stw 3, 0x294(31)
    lwz 3, 0x294(31)
    cmpwi 3, 0x0
    .4byte 0x41801150 # blt .L_80195FFC
    bl fn_8015445C
    mr. 28, 3
    .4byte 0x40820010 # bne .L_80194EC8
    li 0, -0x1
    stw 0, 0x294(31)
    .4byte 0x48001138 # b .L_80195FFC
L_80194EC8:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb4
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    addi 3, 31, 0x2d0
    stb 0, 0x2a5(31)
    bl fn_801546BC
    li 0, 0x1000
    mr 3, 31
    stw 0, 0x25c(28)
    sth 0, 0x2b6(28)
    bl fn_801545E8
    stw 3, 0x294(28)
L_80194F04:
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x408210F0 # bne .L_80195FFC
    lfs 3, 0x2dc(31)
    lfs 1, 0xc(31)
    lfs 2, 0x2e0(31)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_8015465C
    sth 3, 0x2b6(31)
    li 3, 0x32
    li 0, 0x3
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x480010BC # b .L_80195FFC
    li 0, 0x0
    addi 3, 31, 0x2b8
    stw 0, 0x264(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    addi 3, 1, 0x18
    fmr 2, 1
    fmr 3, 1
    bl fn_80196D60
    mr 4, 3
    addi 3, 31, 0x2d0
    bl fn_80196D70
    li 3, 0x8
    li 0, 0x1e
    stw 3, 0x28c(31)
    stw 0, 0x230(31)
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x40821068 # bne .L_80195FFC
    li 0, 0x0
    stw 0, 0x240(31)
    lfs 3, 0x2dc(31)
    lfs 1, 0xc(31)
    lfs 2, 0x2e0(31)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_8015465C
    sth 3, 0x2b6(31)
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48001034 # b .L_80195FFC
    lwz 0, 0x328(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80195004
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1cf
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
L_80195004:
    lwz 0, 0x32c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019503C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1d0
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
L_8019503C:
    lwz 0, 0x328(31)
    cmplwi 0, 0x0
    .4byte 0x41820FB8 # beq .L_80195FFC
    lwz 0, 0x32c(31)
    cmplwi 0, 0x0
    .4byte 0x41820FAC # beq .L_80195FFC
    lwz 3, 0x90(31)
    cmplwi 3, 0xe
    .4byte 0x41820018 # beq .L_80195074
    subi 0, 3, 0xa
    lhz 3, 0x2b6(31)
    clrlslwi 0, 0, 28, 12
    add 0, 3, 0
    sth 0, 0x2b6(31)
L_80195074:
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B324 # lfs f0, lbl_8053E2C4@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B324 # lfs f0, lbl_8053E2C4@sda21(r0)
    addi 3, 31, 0x2b8
    addi 4, 31, 0x3c
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
    bl fn_80196D70
    li 0, -0x1
    li 4, 0x14
    stw 0, 0x268(31)
    li 3, 0x64
    li 0, 0x20
    stw 4, 0x238(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    lwz 3, 0x328(31)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x7
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x32c(31)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x7
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x90(31)
    cmplwi 0, 0xe
    .4byte 0x40820088 # bne .L_80195190
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x7
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8019513C
    li 0, 0x0
    stw 0, 0x234(31)
    .4byte 0x48000058 # b .L_80195190
L_8019513C:
    mr 3, 31
    li 4, -0x1
    li 5, -0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_801F2A10
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80195168
    li 0, 0x0
    stw 0, 0x234(31)
    .4byte 0x4800002C # b .L_80195190
L_80195168:
    mr 3, 31
    bl fn_8015461C
    .4byte 0xC022B2FC # lfs f1, lbl_8053E29C@sda21(r0)
    mr 4, 3
    addi 3, 31, 0xc
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80195190
    li 0, 0x0
    stw 0, 0x234(31)
L_80195190:
    addi 3, 1, 0x48
    addi 4, 31, 0x60
    bl fn_801546F4
    lfs 1, 0xc(31)
    addi 3, 1, 0x8
    lfs 2, 0x10(31)
    bl fn_80196D24
    addi 3, 1, 0x48
    addi 4, 1, 0x8
    bl fn_80154558
    addi 3, 1, 0x50
    addi 4, 1, 0x8
    bl fn_80154558
    lwz 4, 0x4(31)
    addi 3, 1, 0x48
    bl fn_8023B004
    mr. 27, 3
    .4byte 0x41800018 # blt .L_801951EC
    mr 3, 31
    mr 4, 27
    bl fn_80196020
    stw 27, 0x268(31)
    .4byte 0x48000E14 # b .L_80195FFC
L_801951EC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8019520C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    mr 28, 3
L_8019520C:
    clrlwi. 0, 28, 24
    .4byte 0x40820010 # bne .L_80195220
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820DE0 # bne .L_80195FFC
L_80195220:
    li 30, 0x0
    mr 29, 31
    mr 28, 30
L_8019522C:
    lwz 3, 0x328(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80195240
    bl fn_8017EAB4
    stw 28, 0x328(29)
L_80195240:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFE0 # blt .L_8019522C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x57
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1cc
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x1cd
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x330(31)
    lis 4, 0x5
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x2
    bl fn_801F0E34
    .4byte 0xC002B2F8 # lfs f0, lbl_8053E298@sda21(r0)
    li 3, 0x32
    li 0, 0x22
    stfs 0, 0x2a8(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000CFC # b .L_80195FFC
    lwz 4, 0x268(31)
    mr 3, 31
    bl fn_80196020
    .4byte 0x48000CEC # b .L_80195FFC
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80195334
    .4byte 0xC042B330 # lfs f2, lbl_8053E2D0@sda21(r0)
    addi 3, 31, 0x2a8
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
L_80195334:
    lwz 3, 0x328(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8019534C
    lfs 1, 0x2a8(31)
    fmr 2, 1
    bl fn_80196D18
L_8019534C:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80195364
    lfs 1, 0x2a8(31)
    fmr 2, 1
    bl fn_80196D18
L_80195364:
    lwz 3, 0x330(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8019537C
    lfs 1, 0x2a8(31)
    fmr 2, 1
    bl fn_80196D18
L_8019537C:
    lfs 1, 0x2a8(31)
    .4byte 0xC002B330 # lfs f0, lbl_8053E2D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800C74 # bge .L_80195FFC
    li 30, 0x0
    mr 29, 31
    mr 28, 30
L_80195398:
    lwz 3, 0x328(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801953AC
    bl fn_8017EAB4
    stw 28, 0x328(29)
L_801953AC:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFE0 # blt .L_80195398
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
    .4byte 0x48000C34 # b .L_80195FFC
    lwz 3, 0x90(31)
    mr 29, 31
    addi 28, 30, 0x320
    li 27, 0x0
    subi 0, 3, 0x14
    stw 0, 0x264(31)
    lwz 3, 0x90(31)
    subi 0, 3, 0x14
    slwi 30, 0, 2
L_801953F0:
    lwz 0, 0x328(29)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80195430
    add 0, 30, 27
    lwz 3, 0x4(31)
    slwi 0, 0, 1
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    lhzx 5, 28, 0
    addi 4, 31, 0xc
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(29)
L_80195430:
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFB4 # blt .L_801953F0
    li 3, 0x28
    li 0, 0x24
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    addi 3, 31, 0xc
    addi 4, 31, 0x2dc
    bl fn_80196D70
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    lfs 2, 0x2f4(31)
    lfs 0, 0xc(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    lfs 2, 0x2f4(31)
    mr 28, 31
    lfs 0, 0x10(31)
    li 29, 0x0
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
L_8019549C:
    lwz 3, 0x328(28)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x7
    li 7, 0x1
    bl fn_8013CB44
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFDC # blt .L_8019549C
    .4byte 0xC022B2FC # lfs f1, lbl_8053E29C@sda21(r0)
    addi 3, 31, 0x2f4
    .4byte 0xC042B360 # lfs f2, lbl_8053E300@sda21(r0)
    .4byte 0xC062B354 # lfs f3, lbl_8053E2F4@sda21(r0)
    bl fn_801F71A4
    lhz 3, 0x2b6(31)
    addi 0, 3, 0x1000
    sth 0, 0x2b6(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820B10 # bne .L_80195FFC
    lwz 28, 0x294(31)
    cmpwi 28, 0x0
    .4byte 0x40800008 # bge .L_80195500
    li 28, 0x0
L_80195500:
    cmpwi 28, 0x0
    .4byte 0x40820018 # bne .L_8019551C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
L_8019551C:
    lfs 3, 0x2e8(31)
    lfs 1, 0xc(31)
    lfs 2, 0x2ec(31)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_8015465C
    sth 3, 0x2b6(31)
    slwi 0, 28, 12
    subfic 0, 0, 0x2000
    lhz 3, 0x2b6(31)
    add 0, 3, 0
    sth 0, 0x2b6(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B37C # lfs f0, lbl_8053E31C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b8(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B37C # lfs f0, lbl_8053E31C@sda21(r0)
    lis 4, 0x5
    li 0, 0xc8
    mr 3, 31
    fmuls 0, 0, 1
    addi 4, 4, 0x1e
    li 5, 0x0
    stfs 0, 0x2bc(31)
    stw 0, 0x234(31)
    bl fn_801F0E34
    li 0, 0x25
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801955BC
    .4byte 0x880D8FD0 # lbz r0, lbl_8053AB90@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_801955D8
L_801955BC:
    addi 3, 31, 0x2b8
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x27
    stw 0, 0x230(31)
    .4byte 0x48000A28 # b .L_80195FFC
L_801955D8:
    .4byte 0xC022B380 # lfs f1, lbl_8053E320@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC062B384 # lfs f3, lbl_8053E324@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    li 27, 0x0
L_801955F4:
    mr 3, 31
    mr 7, 27
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    .4byte 0xC022B388 # lfs f1, lbl_8053E328@sda21(r0)
    mr 28, 3
    .4byte 0xC062B38C # lfs f3, lbl_8053E32C@sda21(r0)
    addi 3, 31, 0x60
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    cmpwi 28, 0x0
    .4byte 0x418000B4 # blt .L_801956E0
    lwz 0, 0x264(31)
    cmpw 0, 28
    .4byte 0x41820028 # beq .L_80195660
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_801956C4
    mr 3, 28
    bl fn_8022F3DC
    lwz 0, 0x264(31)
    cmpw 0, 3
    .4byte 0x40820068 # bne .L_801956C4
L_80195660:
    li 0, 0x1
    li 3, -0x8000
    sth 0, 0x94(31)
    bl fn_801544FC
    .4byte 0xC002B324 # lfs f0, lbl_8053E2C4@sda21(r0)
    li 3, -0x8000
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    bl fn_801544E4
    .4byte 0xC002B324 # lfs f0, lbl_8053E2C4@sda21(r0)
    addi 3, 31, 0x2b8
    addi 4, 31, 0x3c
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
    bl fn_80196D70
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x64
    li 0, 0x26
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x4800002C # b .L_801956EC
L_801956C4:
    addi 3, 31, 0x2b8
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x27
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801956EC
L_801956E0:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF0C # blt .L_801955F4
L_801956EC:
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    lwz 3, 0x2f8(31)
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_80195768
    bl fn_8015445C
    mr. 28, 3
    .4byte 0x4182005C # beq .L_80195768
    bl fn_801544DC
    lfs 1, 0x0(3)
    mr 3, 28
    lfs 0, 0xc(31)
    fsubs 31, 1, 0
    bl fn_801544DC
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fsubs 0, 1, 0
    fmuls 0, 0, 0
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002B38C # lfs f0, lbl_8053E32C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_80195768
    addi 3, 31, 0x2b8
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x27
    stw 0, 0x230(31)
    .4byte 0x48000898 # b .L_80195FFC
L_80195768:
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801957B0
    li 0, 0x0
    addi 3, 31, 0x2b8
    stw 0, 0x234(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x27
    stw 0, 0x230(31)
    .4byte 0x48000850 # b .L_80195FFC
L_801957B0:
    li 29, 0x0
    mr 28, 31
L_801957B8:
    lwz 3, 0x328(28)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x7
    li 7, 0x1
    bl fn_8013CB44
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFDC # blt .L_801957B8
    .4byte 0x4800081C # b .L_80195FFC
    lfs 0, 0x54(31)
    .4byte 0xC042B330 # lfs f2, lbl_8053E2D0@sda21(r0)
    fcmpo cr0, 0, 2
    .4byte 0x40810020 # ble .L_80195810
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    addi 3, 31, 0x54
    .4byte 0xC062B338 # lfs f3, lbl_8053E2D8@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
L_80195810:
    li 29, 0x0
    mr 28, 31
L_80195818:
    lwz 3, 0x328(28)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x7
    li 7, 0x1
    bl fn_8013CB44
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFDC # blt .L_80195818
    lhz 3, 0x94(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80195864
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_80195864
    .4byte 0x880D8FD0 # lbz r0, lbl_8053AB90@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x4082079C # bne .L_80195FFC
L_80195864:
    cmplwi 3, 0x0
    .4byte 0x4082007C # bne .L_801958E4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B390 # lfs f1, lbl_8053E330@sda21(r0)
    li 5, 0xff
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B390 # lfs f1, lbl_8053E330@sda21(r0)
    li 5, 0x100
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B390 # lfs f1, lbl_8053E330@sda21(r0)
    li 5, 0x101
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801958E4:
    addi 3, 31, 0x2b8
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x27
    stw 0, 0x230(31)
    .4byte 0x48000700 # b .L_80195FFC
    lfs 0, 0x54(31)
    .4byte 0xC042B330 # lfs f2, lbl_8053E2D0@sda21(r0)
    fcmpo cr0, 0, 2
    .4byte 0x40810060 # ble .L_8019596C
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    addi 3, 31, 0x54
    .4byte 0xC062B338 # lfs f3, lbl_8053E2D8@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x54(31)
    mr 28, 31
    li 29, 0x0
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
L_80195934:
    lwz 3, 0x328(28)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x7
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x328(28)
    addi 4, 31, 0x54
    bl fn_80196CF4
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_80195934
    .4byte 0x48000694 # b .L_80195FFC
L_8019596C:
    li 30, 0x0
    mr 29, 31
    mr 28, 30
L_80195978:
    lwz 3, 0x328(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8019598C
    bl fn_8017EAB4
    stw 28, 0x328(29)
L_8019598C:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFE0 # blt .L_80195978
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
    .4byte 0x48000654 # b .L_80195FFC
    lwz 3, 0x25c(31)
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820644 # bne .L_80195FFC
    lwz 3, 0x25c(31)
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820628 # bne .L_80195FFC
    lwz 3, 0x25c(31)
    bl fn_8022D75C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820614 # beq .L_80195FFC
    li 4, 0x0
    li 3, -0x1
    stw 4, 0x260(31)
    li 0, 0x29
    stw 4, 0x264(31)
    stw 4, 0x238(31)
    stw 3, 0x318(31)
    stw 3, 0x31c(31)
    stw 3, 0x320(31)
    stw 3, 0x324(31)
    stw 0, 0x230(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x40800010 # bge .L_80195A30
    .4byte 0x880D8FD1 # lbz r0, lbl_8053AB91@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820090 # bne .L_80195ABC
L_80195A30:
    lwz 3, 0x25c(31)
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    lwz 28, 0x25c(31)
    mr 3, 28
    bl fn_8023E724
    mulli 8, 28, 0xc
    lis 6, lbl_804C1C00@ha
    mr 5, 3
    lwz 3, 0x25c(31)
    addi 0, 6, lbl_804C1C00@l
    .4byte 0x808D8428 # lwz r4, lbl_80539FE8@sda21(r0)
    li 7, 0x6
    add 6, 0, 8
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x41820588 # beq .L_80195FFC
    li 29, 0x0
    mr 28, 31
L_80195A80:
    lwz 3, 0x318(28)
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80195AA0
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80195AA0
    li 4, 0x0
    bl fn_8018A598
L_80195AA0:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD4 # blt .L_80195A80
    li 0, 0x28
    stw 0, 0x230(31)
    .4byte 0x48000544 # b .L_80195FFC
L_80195ABC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820538 # bne .L_80195FFC
    li 28, 0x0
    mr 29, 31
L_80195AD0:
    lwz 0, 0x260(31)
    cmpwi 0, 0x4
    .4byte 0x408000F0 # bge .L_80195BC8
    lwz 0, 0x318(29)
    cmpwi 0, -0x1
    .4byte 0x40820124 # bne .L_80195C08
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lwz 0, 0x264(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_80195B08
    li 0, 0x4
    stw 0, 0x260(31)
L_80195B08:
    lwz 0, 0x260(31)
    addi 4, 30, 0x378
    lfs 3, 0x74(1)
    mr 3, 31
    slwi 5, 0, 3
    lfs 1, 0x78(1)
    addi 0, 5, 0x4
    lfsx 2, 4, 5
    lfsx 0, 4, 0
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x74(1)
    stfs 0, 0x78(1)
    bl fn_8015461C
    lwz 0, 0x260(31)
    addi 5, 30, 0x350
    addi 6, 30, 0x364
    mr 4, 3
    slwi 0, 0, 2
    li 7, -0x1
    lwzx 3, 5, 0
    addi 5, 1, 0x74
    lwzx 6, 6, 0
    li 8, -0x1
    bl fn_80154310
    stw 3, 0x318(29)
    lwz 0, 0x318(29)
    cmpwi 0, 0x0
    .4byte 0x41800090 # blt .L_80195C08
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x4842
    mr 4, 3
    addi 3, 6, 0x4d42
    addi 5, 1, 0x74
    li 6, 0xb
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x5
    .4byte 0x40810050 # ble .L_80195C08
    li 0, 0x5
    stw 0, 0x260(31)
    .4byte 0x48000044 # b .L_80195C08
L_80195BC8:
    lwz 3, 0x318(29)
    cmpwi 3, 0x0
    .4byte 0x41800038 # blt .L_80195C08
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4082002C # bne .L_80195C08
    li 0, -0x1
    stw 0, 0x318(29)
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_80195C08
    li 0, 0x3
    stw 0, 0x260(31)
L_80195C08:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FEBC # blt .L_80195AD0
    li 0, 0x8
    stw 0, 0x238(31)
    .4byte 0x480003DC # b .L_80195FFC
    lhz 6, 0x2b4(31)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x900
    addi 4, 4, 0x55
    sth 0, 0x2b4(31)
    bl fn_801F0E34
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
    lfs 1, 0x2b8(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B360 # lfs f2, lbl_8053E300@sda21(r0)
    .4byte 0xC062B354 # lfs f3, lbl_8053E2F4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2bc(31)
    addi 3, 31, 0x40
    .4byte 0xC042B360 # lfs f2, lbl_8053E300@sda21(r0)
    .4byte 0xC062B354 # lfs f3, lbl_8053E2F4@sda21(r0)
    bl fn_801F71A4
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B37C # lfs f0, lbl_8053E31C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x68(1)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B37C # lfs f0, lbl_8053E31C@sda21(r0)
    addi 3, 31, 0x2b8
    addi 4, 1, 0x68
    fmuls 0, 0, 1
    stfs 0, 0x6c(1)
    bl fn_80196D70
    .4byte 0xC022B394 # lfs f1, lbl_8053E334@sda21(r0)
    addi 3, 31, 0x2a8
    .4byte 0xC042B398 # lfs f2, lbl_8053E338@sda21(r0)
    .4byte 0xC062B358 # lfs f3, lbl_8053E2F8@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x2a8(31)
    addi 3, 1, 0x74
    lwz 5, 0x25c(31)
    addi 4, 31, 0xc
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    add 0, 5, 0
    stw 0, 0x25c(31)
    lfs 0, 0x2a8(31)
    lhz 5, 0x2b6(31)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    add 0, 5, 0
    sth 0, 0x2b6(31)
    bl fn_80196D70
    lhz 3, 0x2b4(31)
    addis 3, 3, 0x1
    subi 0, 3, 0x6000
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC042B39C # lfs f2, lbl_8053E33C@sda21(r0)
    lfs 0, 0x74(1)
    fmadds 0, 2, 1, 0
    stfs 0, 0x74(1)
    lhz 3, 0x2b4(31)
    addis 3, 3, 0x1
    subi 0, 3, 0x6000
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC042B39C # lfs f2, lbl_8053E33C@sda21(r0)
    lfs 0, 0x78(1)
    fmadds 0, 2, 1, 0
    stfs 0, 0x78(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_80195DB0
    .4byte 0xC022B2FC # lfs f1, lbl_8053E29C@sda21(r0)
    addi 3, 1, 0x74
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80195DA8
    lis 3, 0x474e
    lwz 4, 0x4(31)
    addi 3, 3, 0x4f4e
    addi 5, 1, 0x74
    li 6, 0x1f
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
L_80195DA8:
    li 0, 0x1
    stw 0, 0x238(31)
L_80195DB0:
    lis 3, 0x1
    lwz 4, 0x25c(31)
    subi 0, 3, 0x4000
    cmpw 4, 0
    .4byte 0x4081023C # ble .L_80195FFC
    li 3, 0x0
    li 0, 0x2b
    stw 3, 0x25c(31)
    stw 0, 0x230(31)
    .4byte 0x48000228 # b .L_80195FFC
    lhz 6, 0x2b4(31)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x900
    addi 4, 4, 0x55
    sth 0, 0x2b4(31)
    bl fn_801F0E34
    addi 3, 1, 0x74
    addi 4, 31, 0xc
    bl fn_80196D70
    lhz 3, 0x2b4(31)
    addis 3, 3, 0x1
    subi 0, 3, 0x6000
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC042B39C # lfs f2, lbl_8053E33C@sda21(r0)
    lfs 0, 0x74(1)
    fmadds 0, 2, 1, 0
    stfs 0, 0x74(1)
    lhz 3, 0x2b4(31)
    addis 3, 3, 0x1
    subi 0, 3, 0x6000
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC042B39C # lfs f2, lbl_8053E33C@sda21(r0)
    lfs 0, 0x78(1)
    fmadds 0, 2, 1, 0
    stfs 0, 0x78(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_80195E98
    .4byte 0xC022B2FC # lfs f1, lbl_8053E29C@sda21(r0)
    addi 3, 1, 0x74
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80195E90
    lis 3, 0x474e
    lwz 4, 0x4(31)
    addi 3, 3, 0x4f4e
    addi 5, 1, 0x74
    li 6, 0x1f
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
L_80195E90:
    li 0, 0x1
    stw 0, 0x238(31)
L_80195E98:
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
    lfs 1, 0x2b8(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B360 # lfs f2, lbl_8053E300@sda21(r0)
    .4byte 0xC062B354 # lfs f3, lbl_8053E2F4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2bc(31)
    addi 3, 31, 0x40
    .4byte 0xC042B360 # lfs f2, lbl_8053E300@sda21(r0)
    .4byte 0xC062B354 # lfs f3, lbl_8053E2F4@sda21(r0)
    bl fn_801F71A4
    lwz 3, 0x294(31)
    bl fn_8015445C
    mr. 28, 3
    .4byte 0x41820114 # beq .L_80195FFC
    lwz 0, 0x230(28)
    lfs 3, 0x2c4(28)
    lfs 2, 0xc(31)
    cmpwi 0, 0x4
    lfs 1, 0x2c8(28)
    lfs 0, 0x10(31)
    fsubs 31, 3, 2
    fsubs 30, 1, 0
    .4byte 0x41820014 # beq .L_80195F20
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_80195F20
    cmpwi 0, 0x9
    .4byte 0x40820024 # bne .L_80195F40
L_80195F20:
    fmuls 0, 30, 30
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002B308 # lfs f0, lbl_8053E2A8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80195F40
    li 0, 0x1d
    stw 0, 0x230(28)
L_80195F40:
    fmr 1, 31
    fmr 2, 30
    bl fn_8015465C
    sth 3, 0x2b6(31)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B37C # lfs f0, lbl_8053E31C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x68(1)
    lhz 0, 0x2b6(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B37C # lfs f0, lbl_8053E31C@sda21(r0)
    addi 3, 31, 0x2b8
    addi 4, 1, 0x68
    fmuls 0, 0, 1
    stfs 0, 0x6c(1)
    bl fn_80196D70
    fmuls 0, 30, 30
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002B3A0 # lfs f0, lbl_8053E340@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4181005C # bgt .L_80195FFC
    lwz 0, 0x230(28)
    cmpwi 0, 0x1e
    .4byte 0x40820050 # bne .L_80195FFC
    li 0, 0x1
    stw 0, 0x264(28)
    lwz 29, 0x328(31)
    cmplwi 29, 0x0
    .4byte 0x41820018 # beq .L_80195FD8
    bl fn_8018A5F0
    mr 4, 29
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x328(31)
L_80195FD8:
    li 5, 0x3
    li 0, 0x0
    stw 5, 0x25c(28)
    mr 3, 31
    li 4, 0x0
    stw 0, 0x234(28)
    stw 5, 0x260(28)
    stw 0, 0x238(28)
    bl fn_8018A598
L_80195FFC:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    lmw 27, 0x9c(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

