.section extab, "a"
.balign 4
.global etb_80006CF4
etb_80006CF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006CF4, 8

.section extabindex, "a"
.balign 4
.global eti_800136FC
eti_800136FC:
    .4byte fn_80145374
    .4byte 0x000008FC
    .4byte etb_80006CF4
.size eti_800136FC, 12

# fn_80145374 - DDRK's ("Deadlock") real update(). Survey-level (0x8FC
# bytes, ~575 instructions) - a 5-state FSM (this->0x230 = 0..4) matching
# draw()'s "only visible in state 3/4" gating, i.e. DDRK spends most of
# its life dormant/invisible and only becomes visible once triggered.
# In states 2/3/4, opens with a "scan for a nearby target" loop over the
# 4 player slots (fn_802397B4 + fn_801F285C + fn_802379E4, the same
# per-slot iteration idiom seen throughout the player-registry work) and,
# on success, fires a PAIR of sound/effect handles (fn_8013CC50, codes
# 0x117/0x118) plus a reveal-style cue via fn_801F0E34. A genuine and
# notable discovery: elsewhere in the state machine, DDRK calls the
# confirmed facing/homing helper fn_801F2DB4 with a literal FourCC
# "HBMB" (the already-catalogued Bomb actor code, see
# [[project_fsa_actor_cluster_80203xxx]]) as one of its filter arguments -
# meaning Deadlock's trigger logic specifically checks for a nearby BOMB,
# not a player. Reads as "a hidden trap/mine that only springs into
# visibility when a bomb is placed/detonated near it" - fitting the name
# "Deadlock." Also re-rolls its own visual variant (this->0x98, 0-4) via
# the confirmed global PRNG at several state transitions. Not traced
# instruction-by-instruction given the size; the FSM shape and the
# HBMB-triggered reveal are the load-bearing facts.
.text
.balign 4
.global fn_80145374

fn_80145374:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    lfs 3, 0x60(3)
    stfs 3, 0x3c(1)
    lfs 2, 0x64(3)
    stfs 2, 0x40(1)
    lfs 1, 0x68(3)
    stfs 1, 0x44(1)
    lfs 4, 0x6c(3)
    stfs 4, 0x48(1)
    lfs 0, 0xc(3)
    lfs 5, 0x10(3)
    fadds 3, 3, 0
    fadds 2, 2, 5
    stfs 0, 0x24(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x28(1)
    stfs 3, 0x3c(1)
    stfs 2, 0x40(1)
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_801453F8
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_801453F8
    cmpwi 0, 0x4
    .4byte 0x408200E4 # bne .L_801454D8
L_801453F8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x3c
    lwz 5, 0x198(31)
    bl fn_802397B4
    li 30, 0x0
L_8014540C:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x418000A4 # blt .L_801454CC
    lfs 3, 0x44(1)
    addi 4, 1, 0x1c
    lfs 1, 0x3c(1)
    lfs 4, 0x48(1)
    lfs 0, 0x40(1)
    fsubs 1, 1, 3
    .4byte 0xC042A084 # lfs f2, lbl_8053D024@sda21(r0)
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    bl fn_802379E4
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801454CC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801454CC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF38 # blt .L_8014540C
L_801454D8:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820028 # beq .L_80145510
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    bl fn_801F2618
    .4byte 0x4800074C # b .L_80145C58
L_80145510:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x418200FC # beq .L_80145614
    cmpwi 0, 0x3
    .4byte 0x418200F4 # beq .L_80145614
    cmpwi 0, 0x4
    .4byte 0x418200EC # beq .L_80145614
    lis 3, 0x804
    li 30, 0x0
    addi 0, 3, 0x2104
    stw 0, 0xb0(31)
L_8014553C:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x4080004C # bge .L_801455A4
    lwz 3, 0x198(31)
    addi 4, 1, 0x3c
    addi 5, 1, 0x24
    bl Saya_ForceState4
    cmpwi 3, 0x0
    .4byte 0x40820034 # bne .L_801455A4
    lwz 3, 0x198(31)
    addi 4, 1, 0x3c
    addi 5, 1, 0x24
    bl Saya_ForceState2
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_801455A4
    lwz 3, 0x198(31)
    addi 4, 1, 0x3c
    addi 5, 1, 0x24
    bl Saya_ForceState1
    cmpwi 3, 0x0
    .4byte 0x4182005C # beq .L_801455FC
L_801455A4:
    li 0, 0x4
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    stw 0, 0x108(31)
    lwz 3, 0x250(31)
    subi 0, 3, 0x1
    stw 0, 0x250(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_801455E8
    stfs 0, 0x44(31)
    li 0, 0x2
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
L_801455E8:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000660 # b .L_80145C58
L_801455FC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF38 # blt .L_8014553C
    lis 3, 0x800
    addi 0, 3, 0x2100
    stw 0, 0xb0(31)
L_80145614:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820098 # beq .L_801456B4
    cmpwi 0, 0x3
    .4byte 0x41820090 # beq .L_801456B4
    cmpwi 0, 0x4
    .4byte 0x41820088 # beq .L_801456B4
    lis 4, lbl_80465B98@ha
    lis 3, 0x4e55
    addi 6, 4, lbl_80465B98@l
    lwz 30, 0x108(31)
    lwz 9, 0x0(6)
    addi 4, 3, 0x4c4c
    lwz 8, 0x4(6)
    mr 3, 31
    lwz 7, 0x8(6)
    mr 5, 4
    lwz 0, 0xc(6)
    addi 6, 1, 0x2c
    stw 9, 0x2c(1)
    stw 8, 0x30(1)
    stw 7, 0x34(1)
    stw 0, 0x38(1)
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_80145708
    lwz 0, 0x108(31)
    cmpw 30, 0
    .4byte 0x4082001C # bne .L_801456A0
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    li 0, 0x2
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
L_801456A0:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480005A8 # b .L_80145C58
L_801456B4:
    lis 4, 0x4e55
    lis 5, 0x4842
    mr 3, 31
    li 6, 0x0
    addi 4, 4, 0x4c4c
    addi 5, 5, 0x4d42
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80145708
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    li 0, 0x0
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 0, 0xd8(31)
    stw 0, 0xdc(31)
L_80145708:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014571C
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_8014571C:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80145730
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80145730:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80145744
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80145744:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80145758
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80145758:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    lwz 0, 0x230(31)
    mr 30, 3
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_801457BC
    cmpwi 0, 0x3
    .4byte 0x41820020 # beq .L_801457BC
    cmpwi 0, 0x4
    .4byte 0x41820018 # beq .L_801457BC
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_801457BC:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820308 # beq .L_80145ACC
    .4byte 0x40800014 # bge .L_801457DC
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801457EC
    .4byte 0x40800250 # bge .L_80145A24
    .4byte 0x48000454 # b .L_80145C2C
L_801457DC:
    cmpwi 0, 0x4
    .4byte 0x4182033C # beq .L_80145B1C
    .4byte 0x40800448 # bge .L_80145C2C
    .4byte 0x48000314 # b .L_80145AFC
L_801457EC:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x41820054 # beq .L_80145848
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80145814
    lfs 1, 0x44(31)
    .4byte 0xC002A084 # lfs f0, lbl_8053D024@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_80145814:
    lfs 0, 0x14(31)
    .4byte 0xC022A088 # lfs f1, lbl_8053D028@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40800028 # bge .L_80145848
    lfs 0, 0x44(31)
    fcmpo cr0, 0, 1
    .4byte 0x4080001C # bge .L_80145848
    stfs 1, 0x3c(31)
    li 0, 0x0
    stfs 1, 0x40(31)
    stfs 1, 0x44(31)
    stfs 1, 0x14(31)
    stw 0, 0x254(31)
L_80145848:
    li 0, 0x8
    stw 0, 0x234(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408203D4 # bne .L_80145C2C
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x408203C8 # bne .L_80145C2C
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820064 # bne .L_801458D4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002A084 # lfs f0, lbl_8053D024@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 2, 0x18(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801458C8
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x4800006C # b .L_80145930
L_801458C8:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000060 # b .L_80145930
L_801458D4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002A084 # lfs f0, lbl_8053D024@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80145928
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_80145930
L_80145928:
    li 0, 0x1
    stw 0, 0x98(31)
L_80145930:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8014598C
    .4byte 0x40800014 # bge .L_80145950
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014595C
    .4byte 0x4080002C # bge .L_80145974
    .4byte 0x4800006C # b .L_801459B8
L_80145950:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_801459B8
    .4byte 0x4800004C # b .L_801459A4
L_8014595C:
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000048 # b .L_801459B8
L_80145974:
    .4byte 0xC022A08C # lfs f1, lbl_8053D02C@sda21(r0)
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000030 # b .L_801459B8
L_8014598C:
    .4byte 0xC022A088 # lfs f1, lbl_8053D028@sda21(r0)
    .4byte 0xC002A080 # lfs f0, lbl_8053D020@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000018 # b .L_801459B8
L_801459A4:
    .4byte 0xC022A088 # lfs f1, lbl_8053D028@sda21(r0)
    .4byte 0xC002A08C # lfs f0, lbl_8053D02C@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
L_801459B8:
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x234(31)
    addi 3, 3, 0x660d
    .4byte 0xC002A080 # lfs f0, lbl_8053D020@sda21(r0)
    li 0, 0x1
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042A090 # lfs f2, lbl_8053D030@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 3, 3, 0x32
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x4800020C # b .L_80145C2C
L_80145A24:
    clrlwi. 0, 30, 24
    .4byte 0x40820010 # bne .L_80145A38
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408201F8 # bne .L_80145C2C
L_80145A38:
    li 3, 0x0
    clrlwi. 0, 30, 24
    stw 3, 0x24c(31)
    .4byte 0x4182000C # beq .L_80145A50
    li 0, 0x1
    stw 0, 0x24c(31)
L_80145A50:
    li 0, 0x8
    lis 3, 0x19
    stw 0, 0x234(31)
    addi 3, 3, 0x660d
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    li 0, 0x0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC062A090 # lfs f3, lbl_8053D030@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 3, 0x54(1)
    addi 3, 3, 0x32
    stw 3, 0x238(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x48000164 # b .L_80145C2C
L_80145ACC:
    li 0, 0xc8
    lis 3, 0xa04
    stw 0, 0x238(31)
    addi 0, 3, 0x2104
    lis 4, 0x4
    mr 3, 31
    stw 0, 0xb0(31)
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x3
    stw 0, 0x230(31)
L_80145AFC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_80145C2C
    li 3, 0x64
    li 0, 0x4
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    .4byte 0x48000114 # b .L_80145C2C
L_80145B1C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820108 # bne .L_80145C2C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A080 # lfs f1, lbl_8053D020@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042A094 # lfs f2, lbl_8053D034@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    clrlwi 0, 0, 30
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820050 # beq .L_80145BD8
    .4byte 0x40800014 # bge .L_80145BA0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80145BAC
    .4byte 0x40800028 # bge .L_80145BC0
    .4byte 0x48000064 # b .L_80145C00
L_80145BA0:
    cmpwi 0, 0x4
    .4byte 0x4080005C # bge .L_80145C00
    .4byte 0x48000044 # b .L_80145BEC
L_80145BAC:
    stfs 1, 0x3c(31)
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000044 # b .L_80145C00
L_80145BC0:
    .4byte 0xC022A08C # lfs f1, lbl_8053D02C@sda21(r0)
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x4800002C # b .L_80145C00
L_80145BD8:
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000018 # b .L_80145C00
L_80145BEC:
    .4byte 0xC022A088 # lfs f1, lbl_8053D028@sda21(r0)
    .4byte 0xC002A08C # lfs f0, lbl_8053D02C@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
L_80145C00:
    lis 4, 0x804
    li 3, 0x1
    addi 0, 4, 0x2104
    .4byte 0xC002A088 # lfs f0, lbl_8053D028@sda21(r0)
    stw 0, 0xb0(31)
    li 0, 0x0
    stw 3, 0x250(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
L_80145C2C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_80145C58
    li 0, 0x8
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 31
    stw 0, 0x244(31)
L_80145C58:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

