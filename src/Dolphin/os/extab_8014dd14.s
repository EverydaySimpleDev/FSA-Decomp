.section extab, "a"
.balign 4
.global etb_80006E04
etb_80006E04:
    .4byte 0x40CA0000
    .4byte 0x00000000
.size etb_80006E04, 8

.section extabindex, "a"
.balign 4
.global eti_80013894
eti_80013894:
    .4byte fn_8014DD14
    .4byte 0x00001A58
    .4byte etb_80006E04
.size eti_80013894, 12

# fn_8014DD14 - HINO's ("Hinox") real update(). Survey-level - this is by
# far the largest per-actor method landed this project (0x1A58 bytes, over
# 1600 instructions), a full 10-state machine dispatched through a real
# jump table (jumptable_8049FA08, states 0-9) reached via `mtctr`/`bctr`
# after the state (this->0x230) is validated in range. Confirmed shared
# subsystems seen at the top of the function, before the dispatch: the
# universal spawn-param LSB re-check (mirrors setParams' flag-driven
# 0xb0 override, re-applied if this->0x90 was ever re-set to 1 at
# runtime), position integration via paired-single ops, the confirmed
# aggro/validity gate fn_801F3D94, the shared "get a table/lookup index"
# helper fn_801EEC98 (also used by KETH/BZBR/TKTA - still not decompiled),
# facing/homing via fn_801F2DB4/fn_801F2FAC, and the same effect-registry
# lookup+re-home pattern used in the destructor (SpatialRegistry_GetBase/fn_801F666C,
# gated on a handle matching the FourCC "BOYO" literal, 0x424F594F).
# Deeper in the state dispatch: knockback/hit-reaction via fn_801F2B7C,
# homing turns via fn_801F71A4, and conditional gates via fn_80237774/
# fn_80236228/fn_80236BEC before allowing a state-9 "final" transition.
# Not traced instruction-by-instruction past this point given the size -
# the dispatch structure and shared-subsystem reuse are the load-bearing
# facts, matching the survey-level precedent set for BZBR's/TKTA's own
# update() methods.
.text
.balign 4
.global fn_8014DD14

fn_8014DD14:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stmw 24, 0xa0(1)
    mr 31, 3
    lis 3, lbl_8049F840@ha
    psq_l 2, 0xc(31), 0, 0
    li 4, 0x0
    lfs 0, 0x14(31)
    addi 30, 3, lbl_8049F840@l
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    psq_st 2, 0x80(1), 0, 0
    stfs 0, 0x88(1)
    stw 4, 0x30(1)
    stfs 1, 0x2c(1)
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_8014DDF0
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 1
    .4byte 0x40810054 # ble .L_8014DDD0
    lfs 2, 0x44(31)
    fcmpu cr0, 1, 2
    .4byte 0x418219B8 # beq .L_8014F740
    .4byte 0xC022A230 # lfs f1, lbl_8053D1D0@sda21(r0)
    .4byte 0xC002A238 # lfs f0, lbl_8053D1D8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8014DDAC
    stfs 0, 0x44(31)
L_8014DDAC:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x48001974 # b .L_8014F740
L_8014DDD0:
    stfs 1, 0x14(31)
    lis 3, 0x904
    addi 0, 3, 0x2012
    stfs 1, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stw 0, 0xb0(31)
    stw 4, 0x90(31)
L_8014DDF0:
    lwz 0, 0x108(31)
    li 4, 0x1
    lfs 2, 0x3c(31)
    lfs 1, 0x40(31)
    cmpwi 0, 0x0
    lfs 0, 0x44(31)
    stfs 2, 0x74(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    .4byte 0x40810008 # ble .L_8014DE1C
    li 4, 0x0
L_8014DE1C:
    mr 3, 31
    clrlwi 4, 4, 24
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_8014DE50
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_8014DE50
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480018F4 # b .L_8014F740
L_8014DE50:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x30
    addi 7, 1, 0x2c
    addi 8, 31, 0x268
    li 5, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 24, 0x9c(31)
    li 25, 0x0
    lfs 2, 0x3c(31)
    lfs 1, 0x40(31)
    cmpwi 24, 0x0
    lfs 0, 0x44(31)
    stfs 2, 0x74(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    .4byte 0x41800048 # blt .L_8014DEE0
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8014DEE0
    lwz 3, 0x1a0(3)
    li 25, 0x1
    subis 0, 3, 0x424f
    cmplwi 0, 0x594f
    .4byte 0x40820020 # bne .L_8014DEE0
    lfs 0, 0x3c(31)
    .4byte 0xC022A23C # lfs f1, lbl_8053D1DC@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 0, 0x40(31)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
L_8014DEE0:
    lis 4, 0x4842
    lis 5, 0x4e55
    mr 3, 31
    li 6, 0x0
    addi 4, 4, 0x4d42
    addi 5, 5, 0x4c4c
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_8014DF20
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8014DF20
    clrlwi 0, 25, 24
    cmplwi 0, 0x1
    .4byte 0x408202C0 # bne .L_8014E1DC
L_8014DF20:
    li 0, 0x3
    stw 0, 0xbc(31)
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_8014DF4C
    lfs 0, 0x74(1)
    lfs 1, 0x78(1)
    stfs 0, 0x3c(31)
    lfs 0, 0x7c(1)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_8014DF4C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x40820158 # bne .L_8014E0AC
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    stfs 1, 0x60(1)
    stfs 1, 0x5c(1)
    stfs 1, 0x58(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8014DF88
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    stfs 1, 0x58(1)
    stfs 0, 0x5c(1)
    stfs 1, 0x60(1)
    .4byte 0x48000014 # b .L_8014DF98
L_8014DF88:
    .4byte 0xC002A244 # lfs f0, lbl_8053D1E4@sda21(r0)
    stfs 1, 0x58(1)
    stfs 0, 0x5c(1)
    stfs 1, 0x60(1)
L_8014DF98:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x418000CC # blt .L_8014E06C
    lfs 31, 0xc(31)
    lfs 30, 0x10(31)
    lfs 29, 0x14(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    mr 3, 31
    stfs 0, 0x14(31)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8014E040
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 31, 1
    fsubs 2, 30, 0
    bl fn_80093340
    .4byte 0xC002A248 # lfs f0, lbl_8053D1E8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042A24C # lfs f2, lbl_8053D1EC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x58(1)
    stfs 0, 0x5c(1)
L_8014E040:
    stfs 31, 0xc(31)
    addi 5, 1, 0x58
    stfs 30, 0x10(31)
    stfs 29, 0x14(31)
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_8022F784
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8014E06C
    li 0, 0x1
    .4byte 0x48000008 # b .L_8014E070
L_8014E06C:
    li 0, 0x0
L_8014E070:
    cmpwi 0, 0x0
    .4byte 0x41820038 # beq .L_8014E0AC
    li 0, -0x1
    li 5, 0x0
    stw 0, 0x254(31)
    li 4, 0x4
    li 3, 0x8
    li 0, 0x1
    stw 5, 0x24c(31)
    lwz 5, 0x98(31)
    xori 5, 5, 0x1
    stw 5, 0x98(31)
    stw 4, 0x248(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8014E0AC:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x408200B4 # bne .L_8014E180
    lwz 24, 0x250(31)
    cmpwi 24, 0x0
    .4byte 0x41800050 # blt .L_8014E128
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_8014E128
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    lis 4, 0x4
    .4byte 0xC002A24C # lfs f0, lbl_8053D1EC@sda21(r0)
    addi 4, 4, 0x8
    stfs 1, 0x78(1)
    li 5, 0x0
    stfs 1, 0x74(1)
    psq_l 2, 0x74(1), 0, 0
    stfs 1, 0x7c(1)
    psq_st 2, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    mr 3, 31
    stfs 0, 0x7c(1)
    bl fn_801F0E34
L_8014E128:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082009C # bne .L_8014E1CC
    li 0, 0x1
    stw 0, 0x258(31)
    lwz 3, 0x30(1)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_8014E16C
    xori 0, 0, 0x1
    li 3, 0x4
    stw 0, 0x98(31)
    li 0, 0x8
    lwz 4, 0x98(31)
    stw 4, 0x30(1)
    stw 3, 0x248(31)
    stw 0, 0x234(31)
L_8014E16C:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    .4byte 0x48000050 # b .L_8014E1CC
L_8014E180:
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_8014E1CC
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_8014E1CC
    li 0, 0x1
    stw 0, 0x258(31)
    lwz 3, 0x30(1)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_8014E1CC
    xori 0, 0, 0x1
    li 3, 0x4
    stw 0, 0x98(31)
    li 0, 0x8
    lwz 4, 0x98(31)
    stw 4, 0x30(1)
    stw 3, 0x248(31)
    stw 0, 0x234(31)
L_8014E1CC:
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
L_8014E1DC:
    lfs 1, 0x270(31)
    addi 3, 31, 0x3c
    .4byte 0xC042A250 # lfs f2, lbl_8053D1F0@sda21(r0)
    .4byte 0xC062A230 # lfs f3, lbl_8053D1D0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x274(31)
    addi 3, 31, 0x40
    .4byte 0xC042A250 # lfs f2, lbl_8053D1F0@sda21(r0)
    .4byte 0xC062A230 # lfs f3, lbl_8053D1D0@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_8014E2A4
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x4180006C # blt .L_8014E2A4
    lfs 1, 0x2c(1)
    .4byte 0xC002A254 # lfs f0, lbl_8053D1F4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080005C # bge .L_8014E2A4
    bl fn_80237774
    cmpwi 3, 0x0
    .4byte 0x40810050 # ble .L_8014E2A4
    lwz 3, 0x268(31)
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x40810040 # ble .L_8014E2A4
    lwz 3, 0x268(31)
    bl fn_80236BEC
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8014E2A4
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x40820024 # bne .L_8014E2A4
    cmpwi 0, 0x9
    .4byte 0x4182001C # beq .L_8014E2A4
    lwz 4, 0x268(31)
    li 3, 0x4
    li 0, 0x8
    stw 4, 0x254(31)
    stw 3, 0xbc(31)
    stw 0, 0x230(31)
L_8014E2A4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x41820040 # beq .L_8014E2EC
    cmpwi 0, 0x9
    .4byte 0x41820038 # beq .L_8014E2EC
    cmpwi 0, 0x5
    .4byte 0x4082001C # bne .L_8014E2D8
    mr 3, 31
    li 4, 0x4
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
    .4byte 0x48000018 # b .L_8014E2EC
L_8014E2D8:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_8014E2EC:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    mr 24, 3
    cmplwi 0, 0x9
    .4byte 0x418113D4 # bgt .L_8014F6DC
    lis 4, jumptable_8049FA08@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_8049FA08@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    li 4, 0x0
    li 0, 0x1
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x258(31)
    stw 0, 0x230(31)
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_8014E378
    lwz 4, 0x98(31)
    li 3, 0x4
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    li 0, 0x8
    xori 4, 4, 0x1
    stw 4, 0x98(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stw 3, 0x248(31)
    stw 0, 0x234(31)
L_8014E378:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082012C # bne .L_8014E4AC
    lwz 6, 0x248(31)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x1
    addi 4, 4, 0xa4
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 30
    stw 0, 0x248(31)
    bl fn_801F0E34
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    lwz 0, 0x248(31)
    clrlwi. 0, 0, 31
    .4byte 0x408200D0 # bne .L_8014E498
    lwz 0, 0x98(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A258 # lfs f1, lbl_8053D1F8@sda21(r0)
    clrlslwi 0, 0, 31, 15
    extsh 6, 0
    rlwinm 0, 6, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x270(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_8014E478
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x2
    .4byte 0x40810064 # ble .L_8014E478
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC022A230 # lfs f1, lbl_8053D1D0@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x0
    .4byte 0xC062A260 # lfs f3, lbl_8053D200@sda21(r0)
    mullw 3, 4, 3
    .4byte 0xC002A25C # lfs f0, lbl_8053D1FC@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    stw 0, 0x24c(31)
    oris 0, 3, 0x3f80
    stw 0, 0x28(1)
    lfs 2, 0x28(1)
    fsubs 1, 2, 1
    fnmsubs 0, 3, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    add 6, 6, 0
L_8014E478:
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 6, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A258 # lfs f1, lbl_8053D1F8@sda21(r0)
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x274(31)
L_8014E498:
    lwz 0, 0x248(31)
    addi 3, 30, 0x48
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8014E4AC:
    lwz 5, 0x98(31)
    li 4, 0x5
    lwz 0, 0x248(31)
    addi 3, 30, 0x20
    subi 6, 5, 0x2
    subfic 5, 5, 0x2
    nor 5, 6, 5
    srawi 5, 5, 31
    andc 4, 4, 5
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x1c
    .4byte 0x418211F4 # beq .L_8014F6DC
    cmpwi 0, 0x1d
    .4byte 0x418211EC # beq .L_8014F6DC
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8014E520
    lwz 3, 0x30(1)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x40820014 # bne .L_8014E520
    lfs 1, 0x2c(1)
    .4byte 0xC002A264 # lfs f0, lbl_8053D204@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_8014E52C
L_8014E520:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x418211B4 # beq .L_8014F6DC
L_8014E52C:
    li 4, 0x0
    .4byte 0xC002A268 # lfs f0, lbl_8053D208@sda21(r0)
    stw 4, 0x258(31)
    lfs 1, 0x2c(1)
    fcmpo cr0, 1, 0
    .4byte 0x4081005C # ble .L_8014E59C
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022A230 # lfs f1, lbl_8053D1D0@sda21(r0)
    lwz 3, 0xb4(5)
    .4byte 0xC002A23C # lfs f0, lbl_8053D1DC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x24(1)
    lfs 2, 0x24(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8014E59C
    stw 4, 0x24c(31)
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48001144 # b .L_8014F6DC
L_8014E59C:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48001138 # b .L_8014F6DC
    li 0, 0x5
    lis 4, 0x4
    stw 0, 0x234(31)
    li 0, 0x0
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    mr 3, 31
    stw 0, 0x248(31)
    addi 4, 4, 0x92
    li 5, 0x0
    stw 0, 0x24c(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    bl fn_801F0E34
    li 0, 0x3
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_8014E648
    li 0, 0x5
    stw 0, 0x234(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 31
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8014E648
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x4081000C # ble .L_8014E648
    li 0, 0x4
    stw 0, 0x230(31)
L_8014E648:
    lwz 5, 0x98(31)
    li 4, 0x2
    lwz 0, 0x248(31)
    addi 3, 30, 0x5c
    subi 6, 5, 0x2
    subfic 5, 5, 0x2
    nor 5, 6, 5
    srawi 5, 5, 31
    andc 4, 4, 5
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    .4byte 0x48001060 # b .L_8014F6DC
    li 0, 0x0
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    stw 0, 0x234(31)
    mr 3, 31
    addi 5, 31, 0x26c
    addi 6, 1, 0x30
    stw 0, 0x248(31)
    addi 7, 1, 0x2c
    li 8, 0x0
    li 10, 0x2
    stw 0, 0x24c(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    lwz 4, 0x198(31)
    lwz 9, 0x268(31)
    bl fn_801EEC98
    lwz 0, 0x30(1)
    cmpwi 0, -0x1
    .4byte 0x4082000C # bne .L_8014E6E0
    li 24, 0x1
    .4byte 0x4800003C # b .L_8014E718
L_8014E6E0:
    lhz 0, 0x26c(31)
    cmplwi 0, 0x4000
    .4byte 0x40810018 # ble .L_8014E700
    cmplwi 0, 0xc000
    .4byte 0x40800010 # bge .L_8014E700
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8014E708
L_8014E700:
    li 0, 0x2
    stw 0, 0x98(31)
L_8014E708:
    li 3, 0x46
    li 0, 0x5
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
L_8014E718:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8014E72C
    clrlwi. 0, 24, 24
    .4byte 0x418200A4 # beq .L_8014E7CC
L_8014E72C:
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x234(31)
    addi 0, 3, 0x660d
    .4byte 0xC022A230 # lfs f1, lbl_8053D1D0@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002A23C # lfs f0, lbl_8053D1DC@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    lfs 2, 0x20(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_8014E798
    lwz 4, 0x98(31)
    li 3, 0x4
    li 0, 0x8
    xori 4, 4, 0x1
    stw 4, 0x98(31)
    stw 3, 0x248(31)
    stw 0, 0x234(31)
L_8014E798:
    li 0, 0x0
    li 3, 0x64
    stw 0, 0x24c(31)
    li 0, 0x1
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    stw 3, 0x240(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stw 0, 0x230(31)
    .4byte 0x48000F14 # b .L_8014F6DC
L_8014E7CC:
    lhz 0, 0x26c(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A26C # lfs f1, lbl_8053D20C@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x270(31)
    lhz 0, 0x26c(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x274(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8014E858
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x5
    .4byte 0x40810020 # ble .L_8014E844
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x93
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0x248(31)
L_8014E844:
    lwz 0, 0x248(31)
    addi 3, 30, 0x120
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8014E858:
    lwz 5, 0x98(31)
    li 4, 0x6
    lwz 0, 0x248(31)
    addi 3, 30, 0xf0
    subi 6, 5, 0x2
    subfic 5, 5, 0x2
    nor 5, 6, 5
    srawi 5, 5, 31
    andc 4, 4, 5
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    .4byte 0x48000E50 # b .L_8014F6DC
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x248(31)
    addi 4, 30, 0xc4
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    mr 3, 31
    stw 0, 0x250(31)
    addi 5, 31, 0x26c
    addi 6, 1, 0x30
    addi 7, 1, 0x2c
    lwz 0, 0x248(31)
    addi 8, 31, 0x268
    li 9, 0x0
    li 10, 0x0
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x234(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    li 0, 0x7
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082024C # bne .L_8014EB4C
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082009C # bne .L_8014E9A8
    lfs 5, 0xc(31)
    stfs 5, 0x80(1)
    lfs 4, 0x10(31)
    stfs 4, 0x84(1)
    lfs 3, 0x14(31)
    stfs 3, 0x88(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4082002C # bne .L_8014E95C
    .4byte 0xC042A270 # lfs f2, lbl_8053D210@sda21(r0)
    .4byte 0xC022A274 # lfs f1, lbl_8053D214@sda21(r0)
    .4byte 0xC002A278 # lfs f0, lbl_8053D218@sda21(r0)
    fadds 2, 5, 2
    fadds 1, 4, 1
    fadds 0, 3, 0
    stfs 2, 0x80(1)
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
    .4byte 0x48000028 # b .L_8014E980
L_8014E95C:
    .4byte 0xC042A27C # lfs f2, lbl_8053D21C@sda21(r0)
    .4byte 0xC022A280 # lfs f1, lbl_8053D220@sda21(r0)
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    fadds 2, 5, 2
    fadds 1, 4, 1
    fadds 0, 3, 0
    stfs 2, 0x80(1)
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
L_8014E980:
    bl SpatialRegistry_GetBase
    lis 4, 0x4f49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    addi 6, 1, 0x80
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x250(31)
L_8014E9A8:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x8
    .4byte 0x40820118 # bne .L_8014EAD4
    bl SpatialRegistry_GetBase
    lwz 4, 0x250(31)
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820104 # beq .L_8014EAD4
    lwz 3, 0x98(31)
    bl fn_801F6874
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 9, 4, 0x660d
    extsh 0, 3
    lwz 5, 0xb4(8)
    lis 3, lbl_8052EBC0@ha
    addi 7, 3, lbl_8052EBC0@l
    .4byte 0xC002A24C # lfs f0, lbl_8053D1EC@sda21(r0)
    mullw 5, 5, 9
    lis 4, 0x4
    .4byte 0xC082A230 # lfs f4, lbl_8053D1D0@sda21(r0)
    mr 3, 31
    .4byte 0xC0A2A26C # lfs f5, lbl_8053D20C@sda21(r0)
    addi 4, 4, 0x93
    addis 5, 5, 0x3c6f
    .4byte 0xC062A288 # lfs f3, lbl_8053D228@sda21(r0)
    subi 6, 5, 0xca1
    .4byte 0xC022A284 # lfs f1, lbl_8053D224@sda21(r0)
    stw 6, 0xb4(8)
    li 5, 0x0
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 8, 0xb4(8)
    lwz 6, 0xb4(10)
    srwi 8, 8, 9
    stfs 0, 0x7c(1)
    mullw 6, 6, 9
    oris 8, 8, 0x3f80
    stw 8, 0x1c(1)
    lfs 2, 0x1c(1)
    addis 6, 6, 0x3c6f
    subi 6, 6, 0xca1
    fsubs 2, 2, 4
    stw 6, 0xb4(10)
    lwz 6, 0xb4(10)
    fmadds 5, 5, 2, 5
    srwi 6, 6, 9
    oris 6, 6, 0x3f80
    stw 6, 0x18(1)
    lfs 2, 0x18(1)
    fsubs 2, 2, 4
    fnmsubs 1, 3, 2, 1
    fctiwz 1, 1
    stfd 1, 0x90(1)
    lwz 6, 0x94(1)
    add 0, 0, 6
    rlwinm 0, 0, 30, 18, 28
    add 6, 7, 0
    lfsx 2, 7, 0
    lfs 1, 0x4(6)
    fmuls 2, 5, 2
    fmuls 1, 5, 1
    stfs 2, 0x74(1)
    stfs 1, 0x78(1)
    psq_l 1, 0x74(1), 0, 0
    psq_st 1, 0x3c(29), 0, 0
    stfs 0, 0x44(29)
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x8
    li 5, 0x0
    bl fn_801F0E34
L_8014EAD4:
    lwz 0, 0x248(31)
    cmpwi 0, 0xa
    .4byte 0x40810060 # ble .L_8014EB3C
    li 0, 0x64
    stw 0, 0x240(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_8014EB0C
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48000C38 # b .L_8014F740
L_8014EB0C:
    lwz 0, 0x98(31)
    li 5, 0x4
    li 4, -0x1
    li 3, 0x8
    xori 6, 0, 0x1
    li 0, 0x1
    stw 6, 0x98(31)
    stw 5, 0x248(31)
    stw 4, 0x250(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000C08 # b .L_8014F740
L_8014EB3C:
    slwi 0, 0, 2
    addi 3, 30, 0xc4
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8014EB4C:
    lwz 5, 0x98(31)
    li 4, 0xb
    lwz 0, 0x248(31)
    addi 3, 30, 0x6c
    subi 6, 5, 0x2
    subfic 5, 5, 0x2
    nor 5, 6, 5
    srawi 5, 5, 31
    andc 4, 4, 5
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    .4byte 0x48000B5C # b .L_8014F6DC
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800034 # blt .L_8014EBC0
    lwz 4, 0x198(31)
    bl fn_8022F948
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8014EBC0
    li 4, 0x0
    li 3, 0x64
    stw 4, 0x248(31)
    li 0, 0x3
    stw 3, 0x240(31)
    stw 0, 0xbc(31)
    stw 4, 0x230(31)
    .4byte 0x48000B20 # b .L_8014F6DC
L_8014EBC0:
    li 5, 0x0
    addi 4, 30, 0x160
    stw 5, 0x248(31)
    addi 3, 31, 0xc
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    stw 5, 0x24c(31)
    .4byte 0xC022A28C # lfs f1, lbl_8053D22C@sda21(r0)
    stw 5, 0x25c(31)
    stw 5, 0x260(31)
    lwz 0, 0x248(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x234(31)
    stw 5, 0x238(31)
    stfs 0, 0x284(31)
    stfs 0, 0x280(31)
    stfs 0, 0x27c(31)
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_8014ED0C
    lwz 25, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_8014EC2C
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_8014EC30
L_8014EC2C:
    addi 7, 3, 0xdc
L_8014EC30:
    lwz 6, 0x0(7)
    lis 3, lbl_80534C00@ha
    lwz 5, 0x4(7)
    addi 3, 3, lbl_80534C00@l
    lwz 4, 0x8(7)
    lwz 0, 0xc(7)
    stw 6, 0x64(1)
    .4byte 0xC042A23C # lfs f2, lbl_8053D1DC@sda21(r0)
    stw 5, 0x68(1)
    lfs 4, 0x64(1)
    stw 4, 0x6c(1)
    lfs 1, 0x68(1)
    stw 0, 0x70(1)
    lfs 3, 0x6c(1)
    lfs 0, 0x70(1)
    fadds 3, 4, 3
    fadds 0, 1, 0
    fmuls 3, 3, 2
    fmuls 2, 0, 2
    stfs 3, 0x80(1)
    stfs 2, 0x84(1)
    lfs 1, 0xc(31)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002A248 # lfs f0, lbl_8053D1E8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042A240 # lfs f2, lbl_8053D1E0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    sth 0, 0x26e(31)
    lhz 0, 0x26e(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 2, 0
    stfs 0, 0x27c(31)
    lhz 0, 0x26e(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 2, 0
    stfs 0, 0x280(31)
    lfs 1, 0x10(31)
    lfs 0, 0x84(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8014ED04
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8014ED0C
L_8014ED04:
    li 0, 0x3
    stw 0, 0x98(31)
L_8014ED0C:
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x278(31)
    addi 4, 4, 0x94
    stfs 0, 0x274(31)
    stfs 0, 0x270(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    bl fn_801F0E34
    li 0, 0x9
    stw 0, 0x230(31)
    lfs 5, 0xc(31)
    stfs 5, 0x80(1)
    lfs 4, 0x10(31)
    stfs 4, 0x84(1)
    lfs 3, 0x14(31)
    stfs 3, 0x88(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4082002C # bne .L_8014ED8C
    .4byte 0xC042A270 # lfs f2, lbl_8053D210@sda21(r0)
    .4byte 0xC022A274 # lfs f1, lbl_8053D214@sda21(r0)
    .4byte 0xC002A278 # lfs f0, lbl_8053D218@sda21(r0)
    fadds 2, 5, 2
    fadds 1, 4, 1
    fadds 0, 3, 0
    stfs 2, 0x80(1)
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
    .4byte 0x48000028 # b .L_8014EDB0
L_8014ED8C:
    .4byte 0xC042A27C # lfs f2, lbl_8053D21C@sda21(r0)
    .4byte 0xC022A280 # lfs f1, lbl_8053D220@sda21(r0)
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    fadds 2, 5, 2
    fadds 1, 4, 1
    fadds 0, 3, 0
    stfs 2, 0x80(1)
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
L_8014EDB0:
    lwz 3, 0x24c(31)
    lis 0, 0x4330
    stw 0, 0x90(1)
    slwi 0, 3, 3
    .4byte 0xC822A2A8 # lfd f1, lbl_8053D248@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC042A290 # lfs f2, lbl_8053D230@sda21(r0)
    stw 0, 0x94(1)
    lfs 3, 0x80(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0x80(1)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800028 # blt .L_8014EE18
    li 4, 0xf
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8014EE18
    lwz 3, 0x25c(31)
    cmpwi 3, 0xa
    .4byte 0x4080000C # bge .L_8014EE18
    addi 0, 3, 0x1
    stw 0, 0x25c(31)
L_8014EE18:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082029C # bne .L_8014F0BC
    li 0, 0xc
    stw 0, 0x238(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    clrlwi 0, 0, 31
    stw 0, 0x24c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0xa
    .4byte 0x40800270 # bge .L_8014F0BC
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800264 # blt .L_8014F0BC
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x40810258 # ble .L_8014F0BC
    lwz 3, 0x98(31)
    bl fn_801F6874
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    .4byte 0xC002A26C # lfs f0, lbl_8053D20C@sda21(r0)
    addi 0, 4, 0x660d
    lwz 4, 0xb4(5)
    extsh 27, 3
    .4byte 0xC082A230 # lfs f4, lbl_8053D1D0@sda21(r0)
    li 25, 0x0
    mullw 3, 4, 0
    .4byte 0xC062A29C # lfs f3, lbl_8053D23C@sda21(r0)
    .4byte 0xC022A298 # lfs f1, lbl_8053D238@sda21(r0)
    .4byte 0xC0A2A294 # lfs f5, lbl_8053D234@sda21(r0)
    .4byte 0xC042A2A0 # lfs f2, lbl_8053D240@sda21(r0)
    stfs 0, 0x7c(1)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(5)
    lwz 3, 0xb4(6)
    lwz 4, 0x24c(31)
    srwi 5, 5, 9
    mullw 3, 3, 0
    oris 5, 5, 0x3f80
    stw 5, 0x14(1)
    slwi 4, 4, 13
    lfs 0, 0x14(1)
    subfic 4, 4, 0x1000
    addis 3, 3, 0x3c6f
    fsubs 0, 0, 4
    subi 3, 3, 0xca1
    extsh 4, 4
    stw 3, 0xb4(6)
    subf 27, 4, 27
    fmuls 0, 5, 0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(6)
    lwz 3, 0xb4(5)
    fctiwz 0, 0
    srwi 4, 4, 9
    mullw 3, 3, 0
    oris 4, 4, 0x3f80
    stfd 0, 0x90(1)
    stw 4, 0x10(1)
    lwz 26, 0x94(1)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    lfs 0, 0x10(1)
    stw 3, 0xb4(5)
    fsubs 0, 0, 4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 3, 0xb4(6)
    fnmsubs 0, 3, 0, 1
    srwi 4, 4, 9
    mullw 3, 3, 0
    oris 0, 4, 0x3f80
    fctiwz 3, 0
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 0, 0, 4
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    fmadds 1, 2, 0, 4
    stfd 3, 0x98(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    lwz 3, 0x9c(1)
    stw 0, 0x8(1)
    subf 27, 3, 27
    lfs 0, 0x8(1)
    stfs 1, 0x74(1)
    fsubs 0, 0, 4
    fmadds 0, 2, 0, 4
    stfs 0, 0x78(1)
L_8014EFA4:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x418000FC # blt .L_8014F0A8
    bl fn_80236228
    slwi 29, 26, 2
    addi 28, 30, 0x0
    lwzx 0, 28, 29
    cmpw 3, 0
    .4byte 0x418000E4 # blt .L_8014F0A8
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    mr 7, 26
    addi 6, 1, 0x80
    addi 4, 4, 0x5059
    bl fn_801F8544
    mr. 24, 3
    .4byte 0x418000C0 # blt .L_8014F0A8
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820098 # beq .L_8014F094
    lfs 0, 0x27c(31)
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820044 # bne .L_8014F050
    lfs 0, 0x280(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820038 # bne .L_8014F050
    lis 4, lbl_8052EBC0@ha
    rlwinm 0, 27, 30, 18, 28
    addi 5, 4, lbl_8052EBC0@l
    lfs 3, 0x74(1)
    add 4, 5, 0
    lfsx 2, 5, 0
    lfs 1, 0x78(1)
    lfs 0, 0x4(4)
    fmuls 2, 3, 2
    fmuls 0, 1, 0
    stfs 2, 0x74(1)
    stfs 0, 0x78(1)
    .4byte 0x48000038 # b .L_8014F084
L_8014F050:
    lhz 0, 0x26e(31)
    lis 4, lbl_8052EBC0@ha
    addi 5, 4, lbl_8052EBC0@l
    lfs 3, 0x74(1)
    rlwinm 0, 0, 30, 18, 28
    lfs 1, 0x78(1)
    add 4, 5, 0
    lfsx 2, 5, 0
    lfs 0, 0x4(4)
    fmuls 2, 3, 2
    fmuls 0, 1, 0
    stfs 2, 0x74(1)
    stfs 0, 0x78(1)
L_8014F084:
    psq_l 1, 0x74(1), 0, 0
    lfs 0, 0x7c(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_8014F094:
    lwzx 0, 28, 29
    lwz 3, 0x254(31)
    neg 4, 0
    bl fn_802362C4
    .4byte 0x48000018 # b .L_8014F0BC
L_8014F0A8:
    addi 25, 25, 0x1
    addi 26, 26, 0x1
    cmpwi 25, 0x8
    clrlwi 26, 26, 29
    .4byte 0x4180FEEC # blt .L_8014EFA4
L_8014F0BC:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x418001DC # blt .L_8014F2A0
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_8014F124
    lwz 3, 0x254(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820044 # bne .L_8014F124
    lwz 3, 0x254(31)
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_8014F124
    lwz 3, 0x254(31)
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8014F124
    lwz 3, 0x254(31)
    bl fn_80237774
    cmpwi 3, 0x0
    .4byte 0x40810014 # ble .L_8014F124
    lwz 3, 0x254(31)
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x41820144 # beq .L_8014F264
L_8014F124:
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    stfs 1, 0x54(1)
    stfs 1, 0x50(1)
    stfs 1, 0x4c(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8014F154
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
    stfs 1, 0x54(1)
    .4byte 0x48000014 # b .L_8014F164
L_8014F154:
    .4byte 0xC002A244 # lfs f0, lbl_8053D1E4@sda21(r0)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
    stfs 1, 0x54(1)
L_8014F164:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x418000CC # blt .L_8014F238
    lfs 29, 0xc(31)
    lfs 30, 0x10(31)
    lfs 31, 0x14(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    mr 3, 31
    stfs 0, 0x14(31)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8014F20C
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 29, 1
    fsubs 2, 30, 0
    bl fn_80093340
    .4byte 0xC002A248 # lfs f0, lbl_8053D1E8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042A24C # lfs f2, lbl_8053D1EC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x98(1)
    lwz 0, 0x9c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
L_8014F20C:
    stfs 29, 0xc(31)
    addi 5, 1, 0x4c
    stfs 30, 0x10(31)
    stfs 31, 0x14(31)
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_8022F784
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8014F238
    li 0, 0x1
    .4byte 0x48000008 # b .L_8014F23C
L_8014F238:
    li 0, 0x0
L_8014F23C:
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_8014F264
    li 0, -0x1
    li 4, 0x0
    stw 0, 0x254(31)
    li 3, 0x5
    li 0, 0xb
    stw 4, 0x234(31)
    stw 3, 0x248(31)
    stw 0, 0x25c(31)
L_8014F264:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800034 # blt .L_8014F2A0
    lwz 4, 0x198(31)
    bl fn_8022F8AC
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8014F2A0
    li 0, -0x1
    li 4, 0x0
    stw 0, 0x254(31)
    li 3, 0x5
    li 0, 0xb
    stw 4, 0x234(31)
    stw 3, 0x248(31)
    stw 0, 0x25c(31)
L_8014F2A0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408203DC # bne .L_8014F684
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820030 # bne .L_8014F2F0
    lwz 0, 0x25c(31)
    cmpwi 0, 0xa
    .4byte 0x40800024 # bge .L_8014F2F0
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8014F2F0
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014F2F0
    li 0, 0x0
    stw 0, 0x248(31)
L_8014F2F0:
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x408101E4 # ble .L_8014F4DC
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_8014F320
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    stfs 1, 0x7c(1)
    .4byte 0x48000018 # b .L_8014F334
L_8014F320:
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    .4byte 0xC002A244 # lfs f0, lbl_8053D1E4@sda21(r0)
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    stfs 1, 0x7c(1)
L_8014F334:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800078 # blt .L_8014F3B4
    lfs 0, 0xc(31)
    stfs 0, 0x80(1)
    lfs 0, 0x10(31)
    stfs 0, 0x84(1)
    lfs 0, 0x14(31)
    stfs 0, 0x88(1)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    mr 3, 31
    stfs 0, 0x14(31)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8014F39C
    .4byte 0xC002A234 # lfs f0, lbl_8053D1D4@sda21(r0)
    stfs 0, 0x7c(1)
    stfs 0, 0x78(1)
    stfs 0, 0x74(1)
L_8014F39C:
    lfs 0, 0x80(1)
    stfs 0, 0xc(31)
    lfs 0, 0x84(1)
    stfs 0, 0x10(31)
    lfs 0, 0x88(1)
    stfs 0, 0x14(31)
L_8014F3B4:
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    stfs 1, 0x48(1)
    stfs 1, 0x44(1)
    stfs 1, 0x40(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8014F3E4
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    stfs 1, 0x48(1)
    .4byte 0x48000014 # b .L_8014F3F4
L_8014F3E4:
    .4byte 0xC002A244 # lfs f0, lbl_8053D1E4@sda21(r0)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    stfs 1, 0x48(1)
L_8014F3F4:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x418000CC # blt .L_8014F4C8
    lfs 29, 0xc(31)
    lfs 30, 0x10(31)
    lfs 31, 0x14(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    mr 3, 31
    stfs 0, 0x14(31)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8014F49C
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 29, 1
    fsubs 2, 30, 0
    bl fn_80093340
    .4byte 0xC002A248 # lfs f0, lbl_8053D1E8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042A24C # lfs f2, lbl_8053D1EC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x98(1)
    lwz 0, 0x9c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
L_8014F49C:
    stfs 29, 0xc(31)
    addi 5, 1, 0x40
    stfs 30, 0x10(31)
    stfs 31, 0x14(31)
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_8022F784
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8014F4C8
    li 0, 0x1
    .4byte 0x48000008 # b .L_8014F4CC
L_8014F4C8:
    li 0, 0x0
L_8014F4CC:
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8014F4DC
    li 0, -0x1
    stw 0, 0x254(31)
L_8014F4DC:
    lwz 0, 0x248(31)
    cmpwi 0, 0x4
    .4byte 0x4081018C # ble .L_8014F670
    li 0, 0x4
    stw 0, 0x248(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x4180012C # blt .L_8014F624
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    stfs 1, 0x3c(1)
    stfs 1, 0x38(1)
    stfs 1, 0x34(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8014F52C
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    .4byte 0x48000014 # b .L_8014F53C
L_8014F52C:
    .4byte 0xC002A244 # lfs f0, lbl_8053D1E4@sda21(r0)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
L_8014F53C:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x418000CC # blt .L_8014F610
    lfs 29, 0xc(31)
    lfs 30, 0x10(31)
    lfs 31, 0x14(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    mr 3, 31
    stfs 0, 0x14(31)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8014F5E4
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 29, 1
    fsubs 2, 30, 0
    bl fn_80093340
    .4byte 0xC002A248 # lfs f0, lbl_8053D1E8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042A24C # lfs f2, lbl_8053D1EC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x98(1)
    lwz 0, 0x9c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_8014F5E4:
    stfs 29, 0xc(31)
    addi 5, 1, 0x34
    stfs 30, 0x10(31)
    stfs 31, 0x14(31)
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_8022F784
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8014F610
    li 0, 0x1
    .4byte 0x48000008 # b .L_8014F614
L_8014F610:
    li 0, 0x0
L_8014F614:
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8014F624
    li 0, -0x1
    stw 0, 0x254(31)
L_8014F624:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40800044 # bge .L_8014F670
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x24c(31)
    li 5, 0x4
    li 4, 0x8
    li 3, 0x3
    stw 0, 0x254(31)
    li 0, 0x1
    lwz 6, 0x98(31)
    xori 6, 6, 0x1
    stw 6, 0x98(31)
    stw 5, 0x248(31)
    stw 4, 0x234(31)
    stw 3, 0xbc(31)
    stw 0, 0x230(31)
    .4byte 0x48000070 # b .L_8014F6DC
L_8014F670:
    lwz 0, 0x248(31)
    addi 3, 30, 0x160
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8014F684:
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x4181001C # bgt .L_8014F6A8
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8014F6A8
    lwz 4, 0x198(31)
    addi 5, 1, 0x80
    bl fn_8022F820
L_8014F6A8:
    lwz 5, 0x98(31)
    li 4, 0x5
    lwz 0, 0x248(31)
    addi 3, 30, 0x138
    subi 6, 5, 0x2
    subfic 5, 5, 0x2
    nor 5, 6, 5
    srawi 5, 5, 31
    andc 4, 4, 5
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
L_8014F6DC:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014F6F0
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_8014F6F0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014F704
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8014F704:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014F718
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8014F718:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014F72C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8014F72C:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014F740
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_8014F740:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    lmw 24, 0xa0(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

