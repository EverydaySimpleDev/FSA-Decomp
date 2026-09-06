.section extab, "a"
.balign 4
.global etb_80006A5C
etb_80006A5C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006A5C, 8

.section extabindex, "a"
.balign 4
.global eti_80013318
eti_80013318:
    .4byte fn_80139D9C
    .4byte 0x00000408
    .4byte etb_80006A5C
.size eti_80013318, 12

# fn_80139D9C(this) - THIS CLASS'S "start" step (1032 bytes). Gated by a
# combination of the Scene Manager's own state (this->0x4c) and animation
# sub-state (this->0x60/0x88) - roughly "only run the heavy path when NOT
# already deep into a specific transition." When gated in: calls
# fn_80136500 (the Scene Manager's own "tick" method, landed earlier in
# this class), a real virtual call through this->0xc's vtable (slot
# 0x10), and a chain of finalize/setup calls on this->0x20/0x24/0x8
# (fn_8023F390/fn_801914C4/fn_8016DE30/fn_801F871C/fn_80190DC8/
# fn_8016DCEC - none decompiled yet), plus fn_802A3A0C(lbl_8053AC98) and
# fn_80136364 (the Scene Manager's own DVD/module-4 helper). Otherwise
# takes a shorter path (just fn_8023F390 + fn_802A3A0C).
#
# Then loops over the 4 player slots: calls 5 different per-player query
# functions (fn_80236100/fn_80237774/fn_80235A30/fn_80235ACC/fn_8023587C,
# each keyed by slot index) and, for EACH, only commits the result into
# the boot-config struct (lbl_80529DEC, at offsets +0x150/+0x160/+0x170/
# +0x180/+0x190 relative to a per-slot 4-byte-strided sub-pointer) when a
# repeated specific condition holds: `sceneObj->0x7f && boot-config->
# 0x118==9 && boot-config->0x11c==3` - i.e. these per-player values are
# only snapshotted into the boot config during ONE SPECIFIC pending
# transition (idA=9, idB=3 - matches the "state-7 transition with 2
# target IDs" request shape from fn_801365E8/fn_8013665C in the Scene
# Manager). If that condition is false, the query still runs (for side
# effects) but its result is discarded. After the loop, 2 more single
# (non-looped) fields (this->0xf8/0xfc, read off the CURRENT SCENE
# OBJECT directly) get the SAME conditional-commit treatment into boot-
# config->0x1b0/0x214. Finally checks 4 bits of boot-config->0x24a to
# pick between 2 mutually-exclusive final commits into boot-config->0x215
# (1 or 0), each ALSO gated by the same 9/3-transition condition.
#
# Overall: this looks like a "snapshot per-player + scene progress data
# into the boot-config struct, but ONLY during one specific save/
# checkpoint-triggering transition" - plausibly the actual SAVE-GAME
# data-capture step, though not confirmed without decompiling the still-
# unexplored per-player query functions.
.text
.balign 4
.global fn_80139D9C

fn_80139D9C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4c(4)
    cmpwi 3, 0x7
    .4byte 0x40820010 # bne .L_80139DD4
    lwz 0, 0x60(4)
    cmpwi 0, 0x4
    .4byte 0x4080004C # bge .L_80139E1C
L_80139DD4:
    lwz 0, 0x4c(4)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_80139DE8
    li 0, 0x1
    .4byte 0x48000014 # b .L_80139DF8
L_80139DE8:
    lbz 0, 0x88(4)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_80139DF8:
    clrlwi. 0, 0, 24
    .4byte 0x40820020 # bne .L_80139E1C
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_80139E8C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80139E1C
    cmpwi 3, 0xc
    .4byte 0x40820074 # bne .L_80139E8C
L_80139E1C:
    mr 3, 4
    bl fn_80136500
    lwz 3, 0xc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    bl fn_8023F390
    lwz 3, 0x20(30)
    bl fn_801914C4
    lwz 3, 0x24(30)
    bl fn_8016DE30
    lwz 3, 0x8(30)
    bl fn_801F871C
    lwz 3, 0x20(30)
    bl fn_80190DC8
    lwz 3, 0x24(30)
    bl fn_8016DCEC
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    bl fn_802A3A0C
    bl fn_8038D570
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136364
    lwz 3, 0x2c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80139E98
    bl fn_8044B960
    .4byte 0x48000010 # b .L_80139E98
L_80139E8C:
    bl fn_8023F390
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    bl fn_802A3A0C
L_80139E98:
    bl fn_8011921C
    bl fn_80118E20
    lwz 4, 0x34(30)
    lis 3, lbl_80529DEC@ha
    addi 31, 3, lbl_80529DEC@l
    li 29, 0x0
    addi 0, 4, 0x1
    stw 0, 0x34(30)
    mr 30, 31
L_80139EBC:
    mr 3, 29
    bl fn_80236100
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80139EF4
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_80139EF4
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80139EF4
    li 0, 0x1
    .4byte 0x48000008 # b .L_80139EF8
L_80139EF4:
    li 0, 0x0
L_80139EF8:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80139F04
    stw 3, 0x150(30)
L_80139F04:
    mr 3, 29
    bl fn_80237774
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80139F3C
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_80139F3C
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80139F3C
    li 0, 0x1
    .4byte 0x48000008 # b .L_80139F40
L_80139F3C:
    li 0, 0x0
L_80139F40:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80139F4C
    stw 3, 0x160(30)
L_80139F4C:
    mr 3, 29
    bl fn_80235A30
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80139F84
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_80139F84
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80139F84
    li 0, 0x1
    .4byte 0x48000008 # b .L_80139F88
L_80139F84:
    li 0, 0x0
L_80139F88:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80139F94
    stw 3, 0x170(30)
L_80139F94:
    mr 3, 29
    bl fn_8023587C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80139FCC
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_80139FCC
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80139FCC
    li 0, 0x1
    .4byte 0x48000008 # b .L_80139FD0
L_80139FCC:
    li 0, 0x0
L_80139FD0:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80139FDC
    stw 3, 0x180(30)
L_80139FDC:
    mr 3, 29
    bl fn_80235ACC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8013A014
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_8013A014
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8013A014
    li 0, 0x1
    .4byte 0x48000008 # b .L_8013A018
L_8013A014:
    li 0, 0x0
L_8013A018:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_8013A024
    stw 3, 0x190(30)
L_8013A024:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FE8C # blt .L_80139EBC
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    lwz 4, 0xf8(5)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8013A068
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_8013A068
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8013A068
    li 0, 0x1
    .4byte 0x48000008 # b .L_8013A06C
L_8013A068:
    li 0, 0x0
L_8013A06C:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8013A080
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    stw 4, 0x1b0(3)
L_8013A080:
    lbz 0, 0x7f(5)
    lbz 4, 0xfc(5)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8013A0B0
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_8013A0B0
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8013A0B0
    li 0, 0x1
    .4byte 0x48000008 # b .L_8013A0B4
L_8013A0B0:
    li 0, 0x0
L_8013A0B4:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8013A0C8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    stb 4, 0x214(3)
L_8013A0C8:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x24a(3)
    clrlwi. 0, 3, 31
    .4byte 0x40820068 # bne .L_8013A140
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x40820060 # bne .L_8013A140
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x40820058 # bne .L_8013A140
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x40820050 # bne .L_8013A140
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8013A120
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_8013A120
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8013A120
    li 0, 0x1
    .4byte 0x48000008 # b .L_8013A124
L_8013A120:
    li 0, 0x0
L_8013A124:
    clrlwi. 0, 0, 24
    .4byte 0x40820060 # bne .L_8013A188
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x215(3)
    .4byte 0x4800004C # b .L_8013A188
L_8013A140:
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8013A16C
    lwz 0, 0x118(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_8013A16C
    lwz 0, 0x11c(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8013A16C
    li 0, 0x1
    .4byte 0x48000008 # b .L_8013A170
L_8013A16C:
    li 0, 0x0
L_8013A170:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8013A188
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x215(3)
L_8013A188:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

