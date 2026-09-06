.section extab, "a"
.balign 4
.global etb_80008FA4
etb_80008FA4:
    .4byte 0x500A0000
    .4byte 0x00000000
.size etb_80008FA4, 8

.section extabindex, "a"
.balign 4
.global eti_80016750
eti_80016750:
    .4byte fn_801F871C
    .4byte 0x00000730
    .4byte etb_80008FA4
.size eti_80016750, 12

.text
.balign 4
.global fn_801F871C

# fn_801F871C(actorPoolBase) - THE PER-FRAME "UPDATE ALL ACTIVE ACTORS"
# LOOP - the update-side twin of `fn_801F8658` (see its banner for the
# full pool/discovery writeup; same file layout, same
# [[project_fsa_rendering_pipeline_foothold]]-closing significance).
#
# Same 1024-slot sweep shape (stride 4, `+8`-offset slot read, occupied +
# visibility-flag gating). Per active slot, in order: `actor->vtable[0x1C]`
# (an extra hook called BEFORE update - not independently confirmed, but
# a natural fit for a "think"/"pre-update AI" slot given it fires first),
# `fn_801F33C4()` (unexplored), then the confirmed real update:
# `actor->vtable[0x14]()` - CONFIRMS this project's established
# update()-is-slot-5/byte-offset-0x14 convention by direct evidence. A
# SECOND near-identical copy of this same 3-call sequence
# (`vtable[0x1C]`/`fn_801F33C4`/`vtable[0x14]`) appears later in the
# function (own 1024-loop, own index/pointer pair) - likely a 2nd
# category-specific pass (e.g. "always update" vs. "update only if not
# culled", mirroring `fn_801F8658`'s paused-vs-not gating), not yet fully
# distinguished from the first. Also calls `actor->vtable[0x18]` and
# conditionally `actor->vtable[0x8]` (destructor - a "deferred destroy"
# flag processed inline during the update sweep, matching the "handle
# actors that requested their own destruction this frame" pattern) and
# `actor->vtable[0x24]` at various points - survey-level for these extra
# hooks' exact semantics/ordering, but the core `vtable[0x14]`=update()
# call sites are solid.
#
# Sibling functions: `fn_801F9484`=spawn, `fn_801F857C`=destroy-all,
# `fn_801F8658`=the draw-side counterpart (`vtable[0x20]`).
#
# Called as `fn_801F871C(this->0x8)` from `fn_80139D9C` (already landed,
# `src/Dolphin/os/extab_80139d9c.s`), itself called from (at least) states
# 7/8/0xB/0x12/0x14 inside `fn_80137300` (`src/Dolphin/os/extab_801352f4.s`)
# - called unconditionally every running frame from `main()`'s own loop
# (`src/Dolphin/os/extab_801344c0.s`), AFTER the draw+present pair, i.e.
# the ordinary "draw this frame, then update for next frame" structure.
# States 0x12/0x14 are NOT in the previously-identified loading-flavor
# state set ({7,8,9,0xA,0xB,0x16}, see [[project_fsa_multiple_inheritance_pattern]]/
# [[project_fsa_core_systems_gap]]) and their handlers just poll a
# transition predicate every frame while continuing to call update() -
# i.e. this is the genuine steady-state "gameplay is running" path, not a
# loading sub-step.
fn_801F871C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 22, 0x8(1)
    mr 25, 3
    li 29, 0x0
    bl fn_801F6068
    li 3, 0x0
    li 0, 0x20
    mr 4, 25
    stb 3, 0x3040(25)
    li 3, -0x1
    mtctr 0
L_801F8750:
    stw 3, 0x201c(4)
    stw 3, 0x2020(4)
    stw 3, 0x2024(4)
    stw 3, 0x2028(4)
    stw 3, 0x202c(4)
    stw 3, 0x2030(4)
    stw 3, 0x2034(4)
    stw 3, 0x2038(4)
    stw 3, 0x203c(4)
    stw 3, 0x2040(4)
    stw 3, 0x2044(4)
    stw 3, 0x2048(4)
    stw 3, 0x204c(4)
    stw 3, 0x2050(4)
    stw 3, 0x2054(4)
    stw 3, 0x2058(4)
    stw 3, 0x205c(4)
    stw 3, 0x2060(4)
    stw 3, 0x2064(4)
    stw 3, 0x2068(4)
    stw 3, 0x206c(4)
    stw 3, 0x2070(4)
    stw 3, 0x2074(4)
    stw 3, 0x2078(4)
    stw 3, 0x207c(4)
    stw 3, 0x2080(4)
    stw 3, 0x2084(4)
    stw 3, 0x2088(4)
    stw 3, 0x208c(4)
    stw 3, 0x2090(4)
    stw 3, 0x2094(4)
    stw 3, 0x2098(4)
    addi 4, 4, 0x80
    .4byte 0x4200FF7C # bdnz .L_801F8750
    li 0, 0x0
    li 28, 0x0
    stw 0, 0x301c(25)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_801F8810
    bl fn_80239D38
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_801F8824
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134CC8
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801F8824
L_801F8810:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x240(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801F8828
L_801F8824:
    li 28, 0x1
L_801F8828:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x96(3)
    lbz 27, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801F8840
    li 27, 0x1
L_801F8840:
    bl fn_8020D58C
    bl fn_8020D660
    bl CompanionRegistry_GetOrInit
    bl fn_8021F130
    bl fn_80204638
    li 4, 0x0
    clrlwi. 0, 28, 24
    stw 4, 0x54(3)
    .4byte 0x4082000C # bne .L_801F886C
    bl fn_801C0D70
    bl fn_801C0DCC
L_801F886C:
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x41820180 # beq .L_801F89F8
    mr 31, 25
    mr 30, 25
    li 27, 0x0
L_801F8888:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820148 # beq .L_801F89D8
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x418200A8 # beq .L_801F8944
    lbz 0, 0x11e(3)
    li 4, 0x0
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_801F88C8
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801F88C8
    lbz 0, 0xcc(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801F88CC
L_801F88C8:
    li 4, 0x1
L_801F88CC:
    clrlwi. 0, 4, 24
    .4byte 0x4182004C # beq .L_801F891C
    bl fn_801F32F4
    lwz 3, 0x8(31)
    addi 3, 3, 0x1dc
    bl fn_801EAB0C
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    bl fn_801F33C4
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    bl fn_801EE508
L_801F891C:
    lwz 3, 0x100c(31)
    bl fn_80456154
    lwz 3, 0x8(31)
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801F8944
    lbz 0, 0x1a8(3)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_801F8944
    addi 29, 29, 0x1
L_801F8944:
    lwz 3, 0x8(31)
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_801F89D8
    lwz 0, 0x8(30)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_801F89D8
    lwz 3, 0x100c(30)
    bl fn_80456120
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801F8988
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801F8988:
    li 3, 0x0
    addi 0, 27, 0x1
    stw 3, 0x8(30)
    lwz 3, 0x1008(25)
    cmpw 0, 3
    .4byte 0x4082003C # bne .L_801F89D8
    subic. 4, 3, 0x2
    slwi 3, 4, 2
    addi 0, 4, 0x1
    add 3, 25, 3
    mtctr 0
    .4byte 0x4180001C # blt .L_801F89D0
L_801F89B8:
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801F89D0
    subi 3, 3, 0x4
    subi 4, 4, 0x1
    .4byte 0x4200FFEC # bdnz .L_801F89B8
L_801F89D0:
    addi 0, 4, 0x1
    stw 0, 0x1008(25)
L_801F89D8:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmplwi 27, 0x400
    addi 31, 31, 0x4
    .4byte 0x4180FEA0 # blt .L_801F8888
    lwz 3, 0x200c(25)
    bl fn_80456154
    .4byte 0x48000370 # b .L_801F8D64
L_801F89F8:
    mr 30, 25
    mr 31, 25
    li 26, 0x0
L_801F8A04:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x4182033C # beq .L_801F8D48
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x418201F8 # beq .L_801F8C10
    clrlwi 0, 28, 24
    li 5, 0x0
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_801F8A80
    lbz 0, 0x11f(3)
    li 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801F8A40
    li 5, 0x0
L_801F8A40:
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801F8A5C
    lbz 0, 0x1a8(3)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_801F8A5C
    addi 29, 29, 0x1
L_801F8A5C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x88(4)
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_801F8A80
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x5357
    cmplwi 0, 0x444c
    .4byte 0x40820008 # bne .L_801F8A80
    li 5, 0x0
L_801F8A80:
    cmpwi 5, 0x0
    .4byte 0x4082018C # bne .L_801F8C10
    clrlwi. 0, 27, 24
    .4byte 0x41820098 # beq .L_801F8B24
    .4byte 0x41820110 # beq .L_801F8BA0
    lwz 6, 0x1a0(3)
    subis 0, 6, 0x464f
    cmplwi 0, 0x524d
    .4byte 0x41820084 # beq .L_801F8B24
    subis 0, 6, 0x414c
    cmplwi 0, 0x4345
    .4byte 0x41820078 # beq .L_801F8B24
    subis 0, 6, 0x494d
    cmplwi 0, 0x5550
    .4byte 0x4182006C # beq .L_801F8B24
    subis 5, 6, 0x5357
    cmplwi 5, 0x4556
    .4byte 0x41820060 # beq .L_801F8B24
    subis 0, 6, 0x5345
    cmplwi 0, 0x5632
    .4byte 0x41820054 # beq .L_801F8B24
    subis 0, 6, 0x4c54
    cmplwi 0, 0x4556
    .4byte 0x41820048 # beq .L_801F8B24
    subis 0, 6, 0x5052
    cmplwi 0, 0x5443
    .4byte 0x4182003C # beq .L_801F8B24
    subis 0, 6, 0x5354
    cmplwi 0, 0x504e
    .4byte 0x41820030 # beq .L_801F8B24
    subis 4, 6, 0x5455
    cmplwi 4, 0x4746
    .4byte 0x41820024 # beq .L_801F8B24
    subi 0, 4, 0x544c
    cmplwi 0, 0x1
    .4byte 0x40810018 # ble .L_801F8B24
    subis 0, 6, 0x5045
    cmplwi 0, 0x4646
    .4byte 0x4182000C # beq .L_801F8B24
    cmplwi 5, 0x444c
    .4byte 0x40820080 # bne .L_801F8BA0
L_801F8B24:
    bl fn_801F32F4
    lwz 3, 0x8(30)
    addi 3, 3, 0x1dc
    bl fn_801EAB0C
    lwz 3, 0x8(30)
    bl fn_801A6160
    cmpwi 3, 0x0
    .4byte 0x40820038 # bne .L_801F8B78
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    bl fn_801F33C4
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000024 # b .L_801F8B98
L_801F8B78:
    lwz 3, 0x8(30)
    lwz 0, 0xa4(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801F8B98
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
L_801F8B98:
    lwz 3, 0x8(30)
    bl fn_801EE508
L_801F8BA0:
    lwz 4, 0x8(30)
    lwz 0, 0xb8(4)
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_801F8BBC
    cmplwi 0, 0x2
    .4byte 0x40820030 # bne .L_801F8BE8
L_801F8BBC:
    lwz 0, 0x301c(25)
    slwi 3, 0, 2
    addi 3, 3, 0x201c
    lwzx 0, 25, 3
    cmpwi 0, -0x1
    .4byte 0x40820018 # bne .L_801F8BE8
    lwz 0, 0x198(4)
    stwx 0, 25, 3
    lwz 3, 0x301c(25)
    addi 0, 3, 0x1
    stw 0, 0x301c(25)
L_801F8BE8:
    lwz 3, 0x100c(30)
    bl fn_80456154
    lwz 3, 0x8(30)
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801F8C10
    lbz 0, 0x1a8(3)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_801F8C10
    addi 29, 29, 0x1
L_801F8C10:
    lwz 22, 0x8(30)
    lbz 0, 0x11c(22)
    cmplwi 0, 0x0
    .4byte 0x4082008C # bne .L_801F8CA8
    lwz 0, 0x8(31)
    cmplwi 0, 0x0
    .4byte 0x41820120 # beq .L_801F8D48
    lwz 3, 0x100c(31)
    bl fn_80456120
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801F8C54
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801F8C54:
    li 3, 0x0
    addi 0, 26, 0x1
    stw 3, 0x8(31)
    lwz 3, 0x1008(25)
    cmpw 0, 3
    .4byte 0x408200E0 # bne .L_801F8D48
    subic. 4, 3, 0x2
    slwi 3, 4, 2
    addi 0, 4, 0x1
    add 3, 25, 3
    mtctr 0
    .4byte 0x4180001C # blt .L_801F8C9C
L_801F8C84:
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801F8C9C
    subi 3, 3, 0x4
    subi 4, 4, 0x1
    .4byte 0x4200FFEC # bdnz .L_801F8C84
L_801F8C9C:
    addi 0, 4, 0x1
    stw 0, 0x1008(25)
    .4byte 0x480000A4 # b .L_801F8D48
L_801F8CA8:
    lbz 0, 0x1a8(22)
    cmplwi 0, 0x0
    .4byte 0x41820098 # beq .L_801F8D48
    lbz 0, 0x196(22)
    cmplwi 0, 0x0
    .4byte 0x4082008C # bne .L_801F8D48
    lfs 1, 0x88(22)
    lfs 0, 0x80(22)
    .4byte 0xC042C888 # lfs f2, lbl_8053F828@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810074 # ble .L_801F8D48
    lfs 1, 0x8c(22)
    lfs 0, 0x84(22)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810060 # ble .L_801F8D48
    lwz 0, 0x108(22)
    cmpwi 0, 0x0
    .4byte 0x40810054 # ble .L_801F8D48
    lwz 24, 0x198(22)
    lwz 23, 0x4(22)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 23
    lbz 0, 0x1(3)
    mr 6, 24
    addi 5, 22, 0xc
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801F8D48
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801F8D48:
    addi 26, 26, 0x1
    addi 31, 31, 0x4
    cmplwi 26, 0x400
    addi 30, 30, 0x4
    .4byte 0x4180FCAC # blt .L_801F8A04
    lwz 3, 0x200c(25)
    bl fn_80456154
L_801F8D64:
    mr 3, 25
    bl fn_801F6A4C
    lwz 4, 0x2018(25)
    .4byte 0x480000A4 # b .L_801F8E14
L_801F8D74:
    lbz 0, 0x11c(4)
    lwz 6, 0x160(4)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_801F8E10
    lbz 0, 0x165(4)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_801F8E08
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 5, 0x0
    lwz 7, 0x15c(4)
    lwz 3, 0x4(3)
    cmplwi 7, 0x0
    lwz 3, 0x8(3)
    .4byte 0x41820024 # beq .L_801F8DCC
    stw 6, 0x160(7)
    lwz 3, 0x160(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801F8DC4
    lwz 0, 0x15c(4)
    stw 0, 0x15c(3)
L_801F8DC4:
    li 5, 0x1
    .4byte 0x48000028 # b .L_801F8DF0
L_801F8DCC:
    lwz 0, 0x2018(3)
    cmplw 4, 0
    .4byte 0x4082001C # bne .L_801F8DF0
    stw 6, 0x2018(3)
    lwz 3, 0x2018(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801F8DEC
    stw 5, 0x15c(3)
L_801F8DEC:
    li 5, 0x1
L_801F8DF0:
    clrlwi. 0, 5, 24
    .4byte 0x4182001C # beq .L_801F8E10
    li 0, 0x0
    stw 0, 0x15c(4)
    stw 0, 0x160(4)
    .4byte 0x4800000C # b .L_801F8E10
L_801F8E08:
    li 0, 0x0
    stb 0, 0x165(4)
L_801F8E10:
    mr 4, 6
L_801F8E14:
    cmplwi 4, 0x0
    .4byte 0x4082FF5C # bne .L_801F8D74
    cmpwi 29, 0x0
    .4byte 0x40820018 # bne .L_801F8E38
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 3, 0x4(3)
    lwz 3, 0x8(3)
    stb 0, 0x305c(3)
L_801F8E38:
    lmw 22, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

