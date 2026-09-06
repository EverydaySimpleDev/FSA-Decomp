# Unnamed actor cluster, part 6/9 (Track A byte-match + overview -
# 0x3CCC=15564B, the LARGEST function landed in this project). The
# actor's core state-machine body, called from the update() dispatcher
# fn_80197550. Reuses an extensive shared library across this whole
# gap: the fn_80154xxx/fn_8017Exxx numeric-ID helper family (also used
# by FGN2/BPH2's update()s), several of FGN2's own accessor functions
# (fn_8018A590/8018A5C8/8018A5F0/8018A660), BPH2's per-room-config
# wrapper fn_8018E8DC, GNON's PRNG wrapper fn_80196D30, plus this
# actor's own private helpers Actor_SetVec2_0x0/fn_8019C500/fn_8019CD9C
# (landed alongside) and confirmed primitives fn_8013CB44/fn_8013CC50/
# fn_801EE434/fn_80119998/fn_80119DD0/fn_80182660. Full per-state
# semantic breakdown deferred given the function's size; byte-matched
# via direct transcription of the dtk auto-disasm.
.section extab, "a"
.balign 4
.global etb_80007874
etb_80007874:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_80007874, 8

.section extabindex, "a"
.balign 4
.global eti_8001462C
eti_8001462C:
    .4byte fn_80198828
    .4byte 0x00003CCC
    .4byte etb_80007874
.size eti_8001462C, 12

.text
.balign 4
.global fn_80198828

fn_80198828:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stmw 27, 0xbc(1)
    lis 4, lbl_804A2700@ha
    mr 31, 3
    addi 30, 4, lbl_804A2700@l
    addi 3, 1, 0xa0
    bl fn_8003B2CC
    li 0, 0x0
    addi 3, 1, 0x1c
    sth 0, 0x8(1)
    bl fn_801546E4
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_801988DC
    lwz 0, 0x230(31)
    cmpwi 0, 0x1f
    .4byte 0x4182000C # beq .L_80198898
    cmpwi 0, 0x21
    .4byte 0x40820048 # bne .L_801988DC
L_80198898:
    lis 4, 0x4e55
    mr 3, 31
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801988DC
    lwz 0, 0x108(31)
    cmpwi 0, 0x2710
    .4byte 0x4182001C # beq .L_801988DC
    addi 3, 31, 0x274
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x25
    stw 0, 0x230(31)
L_801988DC:
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x418000A8 # blt .L_8019898C
    .4byte 0x806D8FDC # lwz r3, lbl_8053AB9C@sda21(r0)
    li 0, 0x0
    lwz 4, 0x258(31)
    srawi 3, 3, 2
    addze 3, 3
    add 3, 4, 3
    stw 3, 0x258(31)
    .4byte 0x900D8FDC # stw r0, lbl_8053AB9C@sda21(r0)
    lwz 0, 0x258(31)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_8019891C
    li 0, 0x5
    stw 0, 0x258(31)
L_8019891C:
    lwz 3, 0x260(31)
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41820020 # beq .L_80198948
    mr 3, 31
    bl fn_801545E8
    .4byte 0xC022B448 # lfs f1, lbl_8053E3E8@sda21(r0)
    mr 4, 3
    lwz 5, 0x258(31)
    mr 3, 27
    bl SetTriple_0x24c_0x250_0x254
L_80198948:
    lwz 0, 0x304(31)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8019898C
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x58
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
L_8019898C:
    lwz 3, 0x230(31)
    cmpwi 3, 0x3
    .4byte 0x41820018 # beq .L_801989AC
    subi 0, 3, 0x6
    cmplwi 0, 0xc
    .4byte 0x4081000C # ble .L_801989AC
    cmpwi 3, 0x13
    .4byte 0x40820030 # bne .L_801989D8
L_801989AC:
    addi 3, 1, 0xa0
    addi 4, 31, 0x280
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    addi 3, 1, 0xa0
    .4byte 0xC002B44C # lfs f0, lbl_8053E3EC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
L_801989D8:
    lwz 3, 0x230(31)
    cmpwi 3, 0x2e
    .4byte 0x41820020 # beq .L_80198A00
    cmpwi 3, 0x2f
    .4byte 0x41820018 # beq .L_80198A00
    subi 0, 3, 0x33
    cmplwi 0, 0x10
    .4byte 0x4081000C # ble .L_80198A00
    cmpwi 3, 0x44
    .4byte 0x40820028 # bne .L_80198A24
L_80198A00:
    li 3, 0x7
    li 4, 0x3
    bl fn_8019CE40
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_80198A24
    li 3, 0xc
    bl Mgr_SetSpawnParam
    li 3, 0x1
    bl GlobalMgr_SetByte_0x24d
L_80198A24:
    lwz 3, 0x230(31)
    cmpwi 3, 0x2e
    .4byte 0x41820020 # beq .L_80198A4C
    cmpwi 3, 0x2f
    .4byte 0x41820018 # beq .L_80198A4C
    subi 0, 3, 0x33
    cmplwi 0, 0xc
    .4byte 0x4081000C # ble .L_80198A4C
    cmpwi 3, 0x40
    .4byte 0x4082003C # bne .L_80198A84
L_80198A4C:
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0xa
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
L_80198A84:
    lwz 0, 0x230(31)
    cmplwi 0, 0x45
    .4byte 0x4181395C # bgt .L_8019C3E8
    lis 3, jumptable_804A2998@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A2998@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x3
    stw 0, 0x234(31)
    bl fn_8018A660
    cmpwi 3, 0x0
    .4byte 0x41823930 # beq .L_8019C3E8
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x4a8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x4a9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 28, 0x0
    mr 27, 31
L_80198B14:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_80198BB8
    cmpwi 28, 0x0
    .4byte 0x4082002C # bne .L_80198B54
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    addi 3, 27, 0x2a4
    bl fn_8019CECC
    lfs 1, 0xc(31)
    .4byte 0xC002B454 # lfs f0, lbl_8053E3F4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x2a4(27)
    .4byte 0x4800003C # b .L_80198B8C
L_80198B54:
    addi 3, 27, 0x2a4
    addi 4, 31, 0x2a4
    bl fn_8019CECC
    xoris 3, 28, 0x8000
    lis 0, 0x4330
    stw 3, 0xb4(1)
    .4byte 0xC842B440 # lfd f2, lbl_8053E3E0@sda21(r0)
    stw 0, 0xb0(1)
    .4byte 0xC062B3EC # lfs f3, lbl_8053E38C@sda21(r0)
    lfd 1, 0xb0(1)
    lfs 0, 0x2a4(27)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0x2a4(27)
L_80198B8C:
    addi 3, 27, 0x2d4
    addi 4, 27, 0x2a4
    bl fn_8019CECC
    mr 3, 28
    addi 4, 27, 0x2a4
    li 5, 0xc3
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80198BB8:
    addi 28, 28, 0x1
    addi 27, 27, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FF50 # blt .L_80198B14
    li 0, 0x0
    li 4, 0x4
    stw 0, 0x248(31)
    li 3, 0xb4
    li 0, 0x1
    stw 4, 0x244(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408237E8 # bne .L_8019C3E8
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41810034 # bgt .L_80198C4C
    li 0, 0x0
    li 4, 0x32
    stw 0, 0x244(31)
    addi 3, 30, 0x19c
    li 0, 0x2
    stw 4, 0x234(31)
    lwz 4, 0x244(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    .4byte 0x480037A0 # b .L_8019C3E8
L_80198C4C:
    slwi 0, 0, 2
    addi 3, 30, 0x1b0
    lwzx 0, 3, 0
    addi 3, 30, 0x19c
    stw 0, 0x234(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x254(31)
    .4byte 0x48003778 # b .L_8019C3E8
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082375C # bne .L_8019C3E8
    li 0, 0x0
    li 4, 0x3
    stw 0, 0x98(31)
    stw 4, 0x234(31)
    lwz 3, 0x98(31)
    lwz 0, 0x244(31)
    slwi 3, 3, 3
    add 0, 3, 0
    stw 0, 0x254(31)
    stw 4, 0x230(31)
    .4byte 0x48003730 # b .L_8019C3E8
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x98(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80198CE0
    .4byte 0xC002B458 # lfs f0, lbl_8053E3F8@sda21(r0)
    stfs 0, 0x278(31)
L_80198CE0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_80198D24
    li 4, 0x3
    stw 4, 0x98(31)
    lwz 3, 0x98(31)
    lwz 0, 0x244(31)
    slwi 3, 3, 3
    add 0, 3, 0
    stw 0, 0x254(31)
    stw 4, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 29
    stw 0, 0x244(31)
L_80198D24:
    lfs 1, 0x2a8(31)
    .4byte 0xC002B45C # lfs f0, lbl_8053E3FC@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x418136B0 # bgt .L_8019C3E8
    addi 3, 31, 0x274
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 4, 0x0
    stw 4, 0x244(31)
    lwz 3, 0x98(31)
    lwz 0, 0x244(31)
    slwi 3, 3, 3
    add 0, 3, 0
    stw 0, 0x254(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x32
    .4byte 0x4180366C # blt .L_8019C3E8
    stw 4, 0x248(31)
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    lis 4, 0x4
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    mr 3, 31
    addi 4, 4, 0xb5
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0xa0
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x33b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x4
    stw 0, 0x230(31)
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x32
    .4byte 0x418035E0 # blt .L_8019C3E8
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0xc8
    .4byte 0x40800024 # bge .L_80198E54
    addi 3, 1, 0xa0
    addi 4, 31, 0x280
    bl fn_8019CECC
    addi 3, 1, 0xa0
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    .4byte 0x48003598 # b .L_8019C3E8
L_80198E54:
    li 0, 0xc8
    addi 3, 1, 0xa0
    stw 0, 0x248(31)
    addi 4, 31, 0x280
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    addi 3, 1, 0xa0
    .4byte 0xC002B44C # lfs f0, lbl_8053E3EC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    .4byte 0xC002B458 # lfs f0, lbl_8053E3F8@sda21(r0)
    stfs 0, 0x278(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80198ED0
    lwz 4, 0x98(31)
    li 0, 0x3
    lwz 3, 0x244(31)
    slwi 4, 4, 3
    add 3, 4, 3
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 29
    stw 0, 0x244(31)
L_80198ED0:
    lfs 1, 0x2a8(31)
    .4byte 0xC002B400 # lfs f0, lbl_8053E3A0@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x41813504 # bgt .L_8019C3E8
    addi 3, 31, 0x274
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x8
    li 4, 0x3
    stw 0, 0x234(31)
    li 0, 0x0
    addi 3, 1, 0xa0
    stw 4, 0x98(31)
    stw 0, 0x244(31)
    lwz 4, 0x98(31)
    lwz 0, 0x244(31)
    slwi 4, 4, 3
    add 0, 4, 0
    stw 0, 0x254(31)
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    mr 3, 31
    stfs 0, 0xa4(1)
    bl fn_801545E8
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    mr 27, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 27
    mr 5, 28
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    addi 3, 1, 0x78
    addi 4, 1, 0xa0
    bl fn_801546D0
    mr 29, 3
    mr 3, 31
    bl fn_8015461C
    mr 28, 3
    mr 3, 31
    bl fn_801545E8
    mr 27, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 5, 27
    mr 6, 28
    mr 7, 29
    li 4, 0x2d8
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41823434 # beq .L_8019C3E8
    li 27, 0x0
L_80198FBC:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80198FF4
    mr 3, 27
    bl fn_8023E724
    mr 4, 3
    mr 3, 27
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80198FF4:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC0 # blt .L_80198FBC
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x480033E0 # b .L_8019C3E8
    mr 3, 31
    bl fn_801545E8
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    mr 27, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 27
    mr 5, 28
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    mr 3, 31
    bl fn_801545E8
    mr 27, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 27
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41823388 # beq .L_8019C3E8
    li 6, 0x0
    li 3, 0x8
    stw 6, 0x98(31)
    li 0, 0x7
    stw 6, 0x244(31)
    lwz 5, 0x98(31)
    lwz 4, 0x244(31)
    slwi 5, 5, 3
    add 4, 5, 4
    stw 4, 0x254(31)
    stw 3, 0x234(31)
    stw 6, 0x248(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40823348 # bne .L_8019C3E8
    li 0, 0x1
    addi 4, 30, 0x0
    stb 0, 0x268(31)
    addi 3, 30, 0x1c
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x40813300 # ble .L_8019C3E8
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x480032F4 # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408232E8 # bne .L_8019C3E8
    lwz 0, 0x244(31)
    addi 4, 30, 0x0
    addi 3, 30, 0x1c
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_80199180
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    mr 3, 31
    .4byte 0xC002B45C # lfs f0, lbl_8053E3FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8015461C
    lis 6, 0x5a4c
    mr 4, 3
    addi 3, 6, 0x4432
    addi 5, 1, 0xa0
    li 6, 0x1
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    stw 3, 0x264(31)
L_80199180:
    li 4, 0x0
    stw 4, 0x98(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x6
    .4byte 0x4081324C # ble .L_8019C3E8
    stw 4, 0x244(31)
    li 3, 0x3
    li 0, 0x9
    stw 3, 0x98(31)
    stw 0, 0x230(31)
    .4byte 0x48003234 # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80199200
    lwz 4, 0x244(31)
    addi 3, 30, 0x38
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_80199200
    li 0, 0x0
    stw 0, 0x244(31)
L_80199200:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x32
    .4byte 0x418031D4 # blt .L_8019C3E8
    li 3, 0x0
    li 0, 0xa
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80199270
    lwz 4, 0x244(31)
    addi 3, 30, 0x38
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_80199270
    li 0, 0x0
    stw 0, 0x244(31)
L_80199270:
    addi 3, 1, 0xa0
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    mr 3, 31
    stfs 0, 0xa4(1)
    bl fn_801545E8
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    mr 27, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 27
    mr 5, 28
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    addi 3, 1, 0x6c
    addi 4, 1, 0xa0
    bl fn_801546D0
    mr 27, 3
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
    mr 7, 27
    li 4, 0x2d9
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418230E8 # beq .L_8019C3E8
    li 0, 0xb
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80199354
    lwz 4, 0x244(31)
    addi 3, 30, 0x38
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_80199354
    li 0, 0x0
    stw 0, 0x244(31)
L_80199354:
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
    .4byte 0x41823040 # beq .L_8019C3E8
    li 3, 0x0
    li 0, 0xc
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80199408
    lwz 4, 0x244(31)
    addi 3, 30, 0x38
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_80199408
    li 0, 0x0
    stw 0, 0x244(31)
L_80199408:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0xb4
    .4byte 0x41802FCC # blt .L_8019C3E8
    addi 3, 1, 0xa0
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    mr 3, 31
    stfs 0, 0xa4(1)
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
    addi 3, 1, 0x60
    addi 4, 1, 0xa0
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
    li 4, 0x2da
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41822F38 # beq .L_8019C3E8
    li 3, 0x0
    li 0, 0xd
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48002F24 # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80199510
    lwz 4, 0x244(31)
    addi 3, 30, 0x38
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_80199510
    li 0, 0x0
    stw 0, 0x244(31)
L_80199510:
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
    .4byte 0x41822E84 # beq .L_8019C3E8
    li 0, 0x0
    stw 0, 0x244(31)
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41800020 # blt .L_80199598
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80199590
    li 0, 0x0
    stw 0, 0x258(3)
L_80199590:
    li 0, -0x1
    stw 0, 0x264(31)
L_80199598:
    li 0, 0xe
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_801995F4
    lwz 0, 0x244(31)
    .4byte 0x388D8528 # li r4, lbl_8053A0E8@sda21
    .4byte 0x386D8530 # li r3, lbl_8053A0F0@sda21
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x4081000C # ble .L_801995F4
    li 0, 0x1
    stw 0, 0x244(31)
L_801995F4:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x64
    .4byte 0x41802DE0 # blt .L_8019C3E8
    li 0, 0x0
    addi 3, 1, 0xa0
    stw 0, 0x248(31)
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 2, 0xa4(1)
    addi 4, 1, 0xa0
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    li 5, 0x33b
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 6, 0x0
    fsubs 0, 2, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0xa4(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x29a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x29b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x29c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x29d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x292
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x310(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x293
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x314(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x294
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x318(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x295
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x31c(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x296
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x320(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x297
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x324(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x298
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x299
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
    li 0, 0x0
    li 4, 0x140
    li 3, 0x3
    stw 0, 0x244(31)
    li 0, 0xf
    stw 4, 0x24c(31)
    stw 3, 0x98(31)
    stw 0, 0x230(31)
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x57
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x14
    .4byte 0x41802B3C # blt .L_8019C3E8
    li 4, 0x0
    li 3, 0x14
    stw 4, 0x244(31)
    li 0, 0x10
    stb 4, 0x268(31)
    lwz 5, 0x98(31)
    lwz 4, 0x244(31)
    slwi 5, 5, 3
    add 4, 5, 4
    stw 4, 0x254(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48002B08 # b .L_8019C3E8
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x57
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x28
    .4byte 0x40800034 # bge .L_80199940
    li 0, 0x2
    lis 4, 0x4
    stw 0, 0x98(31)
    li 0, 0x0
    mr 3, 31
    addi 4, 4, 0xb6
    stw 0, 0x244(31)
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x11
    stw 0, 0x230(31)
    .4byte 0x48002AAC # b .L_8019C3E8
L_80199940:
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x41812AA0 # bgt .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40822A94 # bne .L_8019C3E8
    lwz 0, 0x98(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_8019996C
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80199984
L_8019996C:
    li 0, 0x0
    stw 0, 0x98(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    .4byte 0x48000014 # b .L_80199994
L_80199984:
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80199994
    li 0, 0x1
    stw 0, 0x98(31)
L_80199994:
    lwz 3, 0x98(31)
    li 0, 0x14
    slwi 3, 3, 3
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x48002A40 # b .L_8019C3E8
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x57
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40822A14 # bne .L_8019C3E8
    li 0, 0x1
    addi 4, 30, 0xd0
    stb 0, 0x268(31)
    addi 3, 30, 0xe8
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x418029CC # blt .L_8019C3E8
    li 3, 0x0
    li 0, 0x12
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x480029B8 # b .L_8019C3E8
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x57
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x41810038 # bgt .L_80199A94
    li 3, 0x0
    .4byte 0xC022B460 # lfs f1, lbl_8053E400@sda21(r0)
    stw 3, 0x24c(31)
    .4byte 0xC002B464 # lfs f0, lbl_8053E404@sda21(r0)
    stfs 1, 0x26c(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_80199A94
    lfs 0, 0x26c(31)
    li 0, 0x13
    stfs 0, 0x14(31)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
L_80199A94:
    li 28, 0x3
    addi 27, 31, 0xc
L_80199A9C:
    lwz 3, 0x304(27)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0xd
    .4byte 0x4180FFDC # blt .L_80199A9C
    .4byte 0x48002924 # b .L_8019C3E8
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0xa
    .4byte 0x4180290C # blt .L_8019C3E8
    li 3, 0x0
    li 0, 0x258
    stw 3, 0x248(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x1c1
    stw 0, 0x24c(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    lwz 3, 0x4(31)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x1c2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x330(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x1c3
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x334(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x1c4
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb8
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
    li 0, 0x14
    stw 0, 0x230(31)
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x59
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
    addi 3, 1, 0xa0
    addi 4, 31, 0x280
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    addi 3, 1, 0xa0
    .4byte 0xC002B468 # lfs f0, lbl_8053E408@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8017EB44
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40802798 # bge .L_8019C3E8
    li 0, 0x0
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_80119DD0
    li 4, 0x64
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    lwz 27, 0x330(31)
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_80199CA4
    bl fn_8018A5F0
    mr 4, 27
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x330(31)
L_80199CA4:
    lwz 27, 0x334(31)
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_80199CC4
    bl fn_8018A5F0
    mr 4, 27
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x334(31)
L_80199CC4:
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x474e
    mr 4, 3
    addi 3, 6, 0x4f4e
    addi 5, 31, 0x280
    li 6, 0x0
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    stw 3, 0x25c(31)
    lwz 3, 0x25c(31)
    cmpwi 3, 0x0
    .4byte 0x418026F0 # blt .L_8019C3E8
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41820018 # beq .L_80199D1C
    mr 3, 31
    bl fn_801545E8
    mr 4, 3
    mr 3, 27
    bl SetField_0x2f8
L_80199D1C:
    lwz 27, 0x304(31)
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_80199D3C
    bl fn_8018A5F0
    mr 4, 27
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x304(31)
L_80199D3C:
    lwz 27, 0x308(31)
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_80199D5C
    bl fn_8018A5F0
    mr 4, 27
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x308(31)
L_80199D5C:
    li 0, 0x15
    stw 0, 0x230(31)
    .4byte 0x48002684 # b .L_8019C3E8
    lwz 3, 0x25c(31)
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_80199DD8
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182005C # beq .L_80199DD8
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_80199D9C
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000040 # b .L_80199DD8
L_80199D9C:
    mr 3, 31
    bl fn_801545E8
    mr 4, 3
    mr 3, 31
    addi 6, 1, 0xc
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80199DD8
    stw 0, 0x98(31)
L_80199DD8:
    lwz 3, 0x25c(31)
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x41822604 # beq .L_8019C3E8
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x408225F4 # bne .L_8019C3E8
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    mr 3, 31
    li 4, 0x0
    stfs 0, 0x26c(31)
    bl fn_8019C500
    li 0, 0x16
    stw 0, 0x230(31)
    .4byte 0x480025D4 # b .L_8019C3E8
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x244(31)
    stw 3, 0x248(31)
    stw 3, 0x234(31)
    stw 0, 0x98(31)
    lwz 27, 0x328(31)
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_80199E50
    bl fn_8018A5F0
    mr 4, 27
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x328(31)
L_80199E50:
    lwz 27, 0x32c(31)
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_80199E70
    bl fn_8018A5F0
    mr 4, 27
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x32c(31)
L_80199E70:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x2a4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x2a5
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
    mr 27, 31
    li 29, 0x0
L_80199ED0:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_80199F2C
    mr 3, 29
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820034 # bne .L_80199F2C
    mr 3, 29
    bl fn_8023E724
    mr 4, 3
    addi 3, 27, 0x2d4
    bl fn_8019CECC
    mr 3, 29
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80199F2C
    mr 3, 29
    li 4, 0x1
    bl fn_8023764C
L_80199F2C:
    addi 29, 29, 0x1
    addi 27, 27, 0xc
    cmpwi 29, 0x4
    .4byte 0x4180FF98 # blt .L_80199ED0
    li 3, 0x1
    li 0, 0x17
    stb 3, 0x268(31)
    stw 0, 0x230(31)
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 2, 0xa4(1)
    addi 3, 1, 0xa0
    lfs 0, 0xa8(1)
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0xa4(1)
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    li 28, 0x3
    addi 27, 31, 0xc
L_80199F84:
    lwz 3, 0x304(27)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0xd
    .4byte 0x4180FFDC # blt .L_80199F84
    lfs 1, 0x14(31)
    .4byte 0xC002B3D0 # lfs f0, lbl_8053E370@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_80199FD8
    li 0, 0xff
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    stw 0, 0x248(31)
    li 0, 0x30
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    .4byte 0x48002414 # b .L_8019C3E8
L_80199FD8:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480023FC # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 2, 0xa4(1)
    addi 3, 1, 0xa0
    lfs 0, 0xa8(1)
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0xa4(1)
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    li 28, 0x3
    addi 27, 31, 0xc
L_8019A028:
    lwz 3, 0x304(27)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0xd
    .4byte 0x4180FFDC # blt .L_8019A028
    lwz 3, 0x248(31)
    subi 0, 3, 0x4
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_8019A07C
    li 3, 0x0
    li 0, 0x31
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48002370 # b .L_8019C3E8
L_8019A07C:
    lwz 3, 0x328(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8019A090
    clrlwi 4, 0, 24
    bl fn_8018A5C8
L_8019A090:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41822350 # beq .L_8019C3E8
    lwz 0, 0x248(31)
    clrlwi 4, 0, 24
    bl fn_8018A5C8
    .4byte 0x48002340 # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 2, 0xa4(1)
    addi 3, 1, 0xa0
    lfs 0, 0xa8(1)
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0xa4(1)
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40822304 # bne .L_8019C3E8
    lwz 0, 0x244(31)
    addi 4, 30, 0x44
    addi 3, 30, 0x60
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x40820140 # bne .L_8019A258
    mr 27, 31
    li 30, 0x0
    li 28, 0x0
L_8019A128:
    lwz 29, 0x304(27)
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_8019A144
    bl fn_8018A5F0
    mr 4, 29
    bl fn_800EC240
    stw 28, 0x304(27)
L_8019A144:
    addi 30, 30, 0x1
    addi 27, 27, 0x4
    cmpwi 30, 0xd
    .4byte 0x4180FFD8 # blt .L_8019A128
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x29e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x29f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x2a0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x2a1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x2a2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x2a3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x68
    li 5, 0x0
    bl fn_801F0E34
L_8019A258:
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x6
    .4byte 0x4081217C # ble .L_8019C3E8
    li 3, 0x0
    li 0, 0x32
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x48002168 # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 2, 0xa4(1)
    addi 3, 1, 0xa0
    lfs 0, 0xa8(1)
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0xa4(1)
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082212C # bne .L_8019C3E8
    addi 3, 1, 0xa0
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    mr 3, 31
    stfs 0, 0xa4(1)
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
    addi 3, 1, 0x54
    addi 4, 1, 0xa0
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
    li 4, 0x2db
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41822098 # beq .L_8019C3E8
    li 3, 0x0
    li 0, 0x18
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48002084 # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 1, 0xa0
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
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
    .4byte 0x4182200C # beq .L_8019C3E8
    li 3, 0x0
    li 0, 0x19
    stw 3, 0x244(31)
    stw 3, 0x248(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48001FF0 # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 1, 0xa0
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_8019A478
    lwz 0, 0x244(31)
    addi 4, 30, 0x7c
    addi 3, 30, 0xa0
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x8
    .4byte 0x40810014 # ble .L_8019A478
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x244(31)
    stw 0, 0x248(31)
L_8019A478:
    lwz 0, 0x244(31)
    cmpwi 0, 0x3
    .4byte 0x40820064 # bne .L_8019A4E4
    lwz 0, 0x234(31)
    cmpwi 0, 0x28
    .4byte 0x40820058 # bne .L_8019A4E4
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x4080004C # bge .L_8019A4E4
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    mr 3, 31
    .4byte 0xC002B45C # lfs f0, lbl_8053E3FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8015461C
    lis 6, 0x5a4c
    mr 4, 3
    addi 3, 6, 0x4432
    addi 5, 1, 0xa0
    li 6, 0x1
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    stw 3, 0x264(31)
L_8019A4E4:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41821EFC # beq .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8019A538
    lwz 4, 0x244(31)
    addi 3, 30, 0xc4
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8019A538
    li 0, 0x0
    stw 0, 0x244(31)
L_8019A538:
    addi 3, 1, 0xa0
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    mr 3, 31
    stfs 0, 0xa4(1)
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
    addi 3, 1, 0x48
    addi 4, 1, 0xa0
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
    li 4, 0x2dc
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41821E20 # beq .L_8019C3E8
    li 3, 0x0
    li 0, 0x1a
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48001E0C # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 1, 0xa0
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8019A648
    lwz 4, 0x244(31)
    addi 3, 30, 0xc4
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8019A648
    li 0, 0x0
    stw 0, 0x244(31)
L_8019A648:
    mr 3, 31
    bl fn_801545E8
    mr 28, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 28
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41821D80 # beq .L_8019C3E8
    lwz 3, 0x25c(31)
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8019A684
    li 4, 0xb
    bl SetField_0x28c
L_8019A684:
    li 0, 0x1b
    stw 0, 0x230(31)
    .4byte 0x48001D5C # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8019A6D8
    lwz 4, 0x244(31)
    addi 3, 30, 0xc4
    li 0, 0x5
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8019A6D8
    li 0, 0x0
    stw 0, 0x244(31)
L_8019A6D8:
    lwz 3, 0x25c(31)
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41821D04 # beq .L_8019C3E8
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmplwi 0, 0x4
    .4byte 0x40820024 # bne .L_8019A718
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 1, 0xa0
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
L_8019A718:
    mr 3, 27
    bl fn_801544DC
    mr 3, 27
    bl fn_801544DC
    mr 3, 27
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmplwi 0, 0x3
    .4byte 0x40821CB0 # bne .L_8019C3E8
    addi 3, 31, 0x28c
    addi 4, 31, 0xc
    bl fn_8019CECC
    .4byte 0xC022B46C # lfs f1, lbl_8053E40C@sda21(r0)
    addi 3, 31, 0x80
    .4byte 0xC062B3EC # lfs f3, lbl_8053E38C@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    li 0, 0x1c
    stw 0, 0x230(31)
    .4byte 0x48001C80 # b .L_8019C3E8
    li 4, 0x0
    li 3, 0x2
    stw 4, 0x244(31)
    li 0, 0x1d
    .4byte 0xC002B3D0 # lfs f0, lbl_8053E370@sda21(r0)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 4, 0x240(31)
    stw 4, 0x234(31)
    stw 4, 0x244(31)
    stw 3, 0x98(31)
    stfs 0, 0x278(31)
    stw 0, 0x230(31)
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41800040 # blt .L_8019A7F8
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41820034 # beq .L_8019A7F8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    mr 3, 27
    .4byte 0xC002B468 # lfs f0, lbl_8053E408@sda21(r0)
    addi 4, 1, 0xa0
    fsubs 0, 1, 0
    stfs 0, 0xa4(1)
    lwz 0, 0x25c(31)
    stw 0, 0x25c(27)
    bl fn_80182660
L_8019A7F8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_8019A844
    lwz 5, 0x98(31)
    addi 3, 30, 0x100
    lwz 4, 0x244(31)
    li 0, 0x3
    slwi 5, 5, 3
    add 4, 5, 4
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 29
    stw 0, 0x244(31)
L_8019A844:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    clrlwi. 0, 3, 24
    .4byte 0x41821B90 # beq .L_8019C3E8
    addi 3, 31, 0x274
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x1e
    stw 0, 0x230(31)
    .4byte 0x48001B74 # b .L_8019C3E8
    addi 3, 31, 0x298
    addi 4, 31, 0x28c
    bl fn_8019CECC
    bl fn_80154744
    .4byte 0xC062B474 # lfs f3, lbl_8053E414@sda21(r0)
    .4byte 0xC042B470 # lfs f2, lbl_8053E410@sda21(r0)
    lfs 0, 0x298(31)
    fnmsubs 1, 3, 1, 2
    fadds 0, 0, 1
    stfs 0, 0x298(31)
    bl fn_80154744
    .4byte 0xC062B3EC # lfs f3, lbl_8053E38C@sda21(r0)
    .4byte 0xC042B478 # lfs f2, lbl_8053E418@sda21(r0)
    lfs 0, 0x29c(31)
    fmadds 1, 3, 1, 2
    fadds 0, 0, 1
    stfs 0, 0x29c(31)
    lfs 3, 0x298(31)
    lfs 2, 0xc(31)
    lfs 1, 0x29c(31)
    lfs 0, 0x10(31)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    bl fn_801544FC
    .4byte 0xC002B47C # lfs f0, lbl_8053E41C@sda21(r0)
    fmr 2, 31
    fmuls 0, 0, 1
    fmr 1, 30
    stfs 0, 0x274(31)
    bl fn_8015465C
    bl fn_801544E4
    .4byte 0xC002B47C # lfs f0, lbl_8053E41C@sda21(r0)
    fmr 2, 31
    fmuls 0, 0, 1
    fmr 1, 30
    stfs 0, 0x278(31)
    bl fn_8015465C
    clrlwi 3, 3, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    li 0, 0x0
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x238(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x4080004C # bge .L_8019A988
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    mr 3, 31
    .4byte 0xC002B45C # lfs f0, lbl_8053E3FC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8015461C
    lis 6, 0x5a4c
    mr 4, 3
    addi 3, 6, 0x4432
    addi 5, 1, 0xa0
    li 6, 0x1
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    stw 3, 0x264(31)
L_8019A988:
    li 3, 0x1
    li 0, 0x1f
    stb 3, 0x268(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_8019A9E4
    lwz 5, 0x98(31)
    addi 3, 30, 0x100
    lwz 4, 0x244(31)
    li 0, 0x3
    slwi 5, 5, 3
    add 4, 5, 4
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 29
    stw 0, 0x244(31)
L_8019A9E4:
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41800040 # blt .L_8019AA2C
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41820034 # beq .L_8019AA2C
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    mr 3, 27
    .4byte 0xC002B468 # lfs f0, lbl_8053E408@sda21(r0)
    addi 4, 1, 0xa0
    fsubs 0, 1, 0
    stfs 0, 0xa4(1)
    lwz 0, 0x25c(31)
    stw 0, 0x25c(27)
    bl fn_80182660
L_8019AA2C:
    lwz 3, 0x25c(31)
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_8019AA60
    bl GetField_0xb0
    cmplwi 3, 0xe
    .4byte 0x4082001C # bne .L_8019AA60
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8019AA60
    li 0, 0x22
    stw 0, 0x230(31)
    .4byte 0x4800198C # b .L_8019C3E8
L_8019AA60:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8019AA94
    addi 3, 31, 0x274
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x20
    stw 0, 0x230(31)
    .4byte 0x48001958 # b .L_8019C3E8
L_8019AA94:
    li 27, 0x0
L_8019AA98:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200D8 # beq .L_8019AB7C
    mr 3, 27
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x408200BC # bne .L_8019AB7C
    mr 3, 27
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 27
    lfs 0, 0xc(31)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fsubs 31, 1, 0
    fmuls 0, 31, 31
    fmadds 1, 30, 30, 0
    bl fn_80154378
    .4byte 0xC002B454 # lfs f0, lbl_8053E3F4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8019AB7C
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    addis 3, 3, 0x1
    fmr 1, 30
    addi 0, 3, -0x8000
    fmr 2, 31
    sth 0, 0x8(1)
    bl fn_8015465C
    clrlwi 3, 3, 16
    bl ClassifyBamAngleToQuadrant
    lhz 0, 0x8(1)
    stw 3, 0xc(1)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B480 # lfs f0, lbl_8053E420@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x274(31)
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B480 # lfs f0, lbl_8053E420@sda21(r0)
    li 0, 0x14
    fmuls 0, 0, 1
    stfs 0, 0x278(31)
    stw 0, 0x238(31)
    lwz 0, 0xc(1)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x48001958 # b .L_8019C4D0
L_8019AB7C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF14 # blt .L_8019AA98
    .4byte 0xC042B478 # lfs f2, lbl_8053E418@sda21(r0)
    lfs 1, 0x290(31)
    lfs 0, 0x10(31)
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810010 # bgt .L_8019ABAC
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x40821840 # bne .L_8019C3E8
L_8019ABAC:
    bl fn_80154744
    .4byte 0xC042B488 # lfs f2, lbl_8053E428@sda21(r0)
    li 0, 0xa
    .4byte 0xC002B484 # lfs f0, lbl_8053E424@sda21(r0)
    stw 0, 0x238(31)
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 28, 0xb4(1)
    extsh 27, 28
    mr 3, 27
    bl fn_801544FC
    .4byte 0xC002B47C # lfs f0, lbl_8053E41C@sda21(r0)
    mr 3, 27
    fmuls 0, 0, 1
    stfs 0, 0x274(31)
    bl fn_801544E4
    .4byte 0xC002B47C # lfs f0, lbl_8053E41C@sda21(r0)
    clrlwi 3, 28, 16
    fmuls 0, 0, 1
    stfs 0, 0x278(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    .4byte 0x480017E0 # b .L_8019C3E8
    li 0, 0x3
    addi 3, 30, 0x100
    stw 0, 0x98(31)
    li 0, 0x21
    lwz 4, 0x98(31)
    slwi 4, 4, 5
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    lwz 3, 0x25c(31)
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_8019AC64
    bl GetField_0xb0
    cmplwi 3, 0xe
    .4byte 0x4082001C # bne .L_8019AC64
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8019AC64
    li 0, 0x22
    stw 0, 0x230(31)
    .4byte 0x48001788 # b .L_8019C3E8
L_8019AC64:
    mr 3, 31
    bl fn_801545E8
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x10
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41801750 # blt .L_8019C3E8
    lfs 1, 0x10(1)
    .4byte 0xC002B44C # lfs f0, lbl_8053E3EC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40811740 # ble .L_8019C3E8
    stw 0, 0x98(31)
    addi 3, 30, 0x100
    li 0, 0x1e
    lwz 4, 0x98(31)
    slwi 4, 4, 5
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    .4byte 0x4800171C # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 2, 0xa4(1)
    addi 4, 1, 0xa0
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    li 5, 0x33b
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 6, 0x0
    fsubs 0, 2, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0xa4(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    addi 3, 31, 0x274
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 3, 0x0
    li 0, 0x23
    stb 3, 0x268(31)
    stw 0, 0x230(31)
    lwz 3, 0x25c(31)
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x418216A8 # beq .L_8019C3E8
    li 0, 0x3
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 3
    stw 0, 0x254(31)
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x418000C4 # blt .L_8019AE24
    bl fn_8015445C
    mr. 28, 3
    .4byte 0x418200B8 # beq .L_8019AE24
    addi 3, 1, 0x94
    bl fn_8003B2CC
    addi 3, 1, 0x94
    bl fn_801546BC
    mr 3, 28
    bl fn_801544DC
    lfs 31, 0x0(3)
    mr 3, 27
    bl fn_801544DC
    lfs 0, 0x0(3)
    mr 3, 28
    fsubs 30, 0, 31
    bl fn_801544DC
    lfs 31, 0x8(3)
    mr 3, 28
    bl fn_801544DC
    lfs 0, 0x4(3)
    mr 3, 27
    fsubs 31, 0, 31
    bl fn_801544DC
    lfs 0, 0x4(3)
    fmr 1, 30
    fsubs 31, 0, 31
    fmr 2, 31
    bl fn_8015465C
    bl fn_801544FC
    .4byte 0xC002B408 # lfs f0, lbl_8053E3A8@sda21(r0)
    fmr 2, 31
    fmuls 0, 0, 1
    fmr 1, 30
    stfs 0, 0x94(1)
    bl fn_8015465C
    bl fn_801544E4
    .4byte 0xC002B408 # lfs f0, lbl_8053E3A8@sda21(r0)
    mr 3, 28
    addi 4, 1, 0x94
    fmuls 0, 0, 1
    stfs 0, 0x98(1)
    bl fn_8017EAF8
    addi 3, 28, 0x274
    addi 4, 1, 0x94
    bl fn_8019CECC
    mr 3, 28
    li 4, 0x11
    bl SetField_0xb0
L_8019AE24:
    li 3, 0x14
    li 0, 0x24
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x480015B4 # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8019AE58
    li 0, 0x3
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 3
    stw 0, 0x254(31)
L_8019AE58:
    lwz 3, 0x25c(31)
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41820038 # beq .L_8019AE9C
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_8019AE84
    li 0, 0x2e
    stw 0, 0x230(31)
    .4byte 0x48001568 # b .L_8019C3E8
L_8019AE84:
    mr 3, 27
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmplwi 0, 0x5
    .4byte 0x41821554 # beq .L_8019C3E8
    .4byte 0x48000010 # b .L_8019AEA8
L_8019AE9C:
    li 0, 0x2e
    stw 0, 0x230(31)
    .4byte 0x48001544 # b .L_8019C3E8
L_8019AEA8:
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41801538 # blt .L_8019C3E8
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4082152C # bne .L_8019C3E8
    li 3, -0x1
    li 0, 0x1e
    stw 3, 0x264(31)
    stw 0, 0x230(31)
    .4byte 0x48001518 # b .L_8019C3E8
    li 0, 0x0
    addi 3, 31, 0x274
    stb 0, 0x268(31)
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb6
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002B3E4 # lfs f0, lbl_8053E384@sda21(r0)
    li 0, 0x26
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x480014D8 # b .L_8019C3E8
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41800020 # blt .L_8019AF3C
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8019AF34
    li 0, 0x0
    stw 0, 0x258(3)
L_8019AF34:
    li 0, -0x1
    stw 0, 0x264(31)
L_8019AF3C:
    lfs 1, 0x14(31)
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_8019AF60
    lfs 1, 0x44(31)
    .4byte 0xC002B3D0 # lfs f0, lbl_8053E370@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x4800148C # b .L_8019C3E8
L_8019AF60:
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    lwz 3, 0x258(31)
    subi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_8019AF94
    li 3, 0x12c
    li 0, 0x1e
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    .4byte 0x48001458 # b .L_8019C3E8
L_8019AF94:
    li 0, 0x27
    stw 0, 0x230(31)
    .4byte 0x4800144C # b .L_8019C3E8
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x244(31)
    mr 3, 31
    addi 4, 4, 0xb7
    li 5, 0x0
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    bl fn_801F0E34
    li 0, 0x4
    addi 4, 30, 0x18c
    li 5, 0x0
    mtctr 0
L_8019AFE8:
    lwz 3, 0x98(31)
    lwz 0, 0x0(4)
    cmpw 3, 0
    .4byte 0x4082001C # bne .L_8019B010
    stw 5, 0x244(31)
    li 3, 0x8
    li 0, 0x28
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x480013DC # b .L_8019C3E8
L_8019B010:
    addi 4, 4, 0x4
    addi 5, 5, 0x1
    .4byte 0x4200FFD0 # bdnz .L_8019AFE8
    .4byte 0x480013CC # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_8019B090
    lwz 4, 0x244(31)
    li 0, 0x8
    addi 3, 30, 0x18c
    addi 4, 4, 0x1
    stw 4, 0x244(31)
    lwz 4, 0x244(31)
    clrlwi 4, 4, 30
    stw 4, 0x244(31)
    stw 0, 0x234(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x98(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0xc
    .4byte 0x4180001C # blt .L_8019B090
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8019B090
    li 0, 0x29
    stw 0, 0x230(31)
    .4byte 0x4800135C # b .L_8019C3E8
L_8019B090:
    lwz 0, 0x98(31)
    slwi 0, 0, 3
    stw 0, 0x254(31)
    .4byte 0x4800134C # b .L_8019C3E8
    li 0, 0x0
    addi 4, 30, 0x1b0
    stw 0, 0x244(31)
    addi 3, 30, 0x19c
    li 0, 0x2a
    lwz 5, 0x244(31)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x234(31)
    lwz 4, 0x244(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40821308 # bne .L_8019C3E8
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x4
    .4byte 0x40810020 # ble .L_8019B118
    li 0, 0x0
    li 3, 0x1
    stw 0, 0x244(31)
    li 0, 0x2b
    .4byte 0x986D8FE8 # stb r3, lbl_8053ABA8@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x480012D4 # b .L_8019C3E8
L_8019B118:
    slwi 0, 0, 2
    addi 3, 30, 0x1b0
    lwzx 0, 3, 0
    addi 3, 30, 0x19c
    stw 0, 0x234(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x254(31)
    .4byte 0x480012AC # b .L_8019C3E8
    .4byte 0x880D8FD8 # lbz r0, lbl_8053AB98@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x408212A0 # bne .L_8019C3E8
    li 3, 0x0
    li 0, 0x2c
    .4byte 0x986D8FE8 # stb r3, lbl_8053ABA8@sda21(r0)
    .4byte 0x986D8FD8 # stb r3, lbl_8053AB98@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x48001288 # b .L_8019C3E8
    li 0, 0x4
    addi 4, 30, 0x1b0
    stw 0, 0x244(31)
    addi 3, 30, 0x19c
    li 0, 0x2d
    lwz 5, 0x244(31)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x234(31)
    lwz 4, 0x244(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40821244 # bne .L_8019C3E8
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_8019B1C8
    li 0, 0x5
    stw 0, 0x258(31)
L_8019B1C8:
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_8019B1F4
    li 3, 0x5
    li 0, 0x1e
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    .4byte 0x480011F8 # b .L_8019C3E8
L_8019B1F4:
    slwi 0, 0, 2
    addi 3, 30, 0x1b0
    lwzx 0, 3, 0
    addi 3, 30, 0x19c
    stw 0, 0x234(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x254(31)
    .4byte 0x480011D0 # b .L_8019C3E8
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x258(31)
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    stb 0, 0x268(31)
    bl fn_8019CECC
    lfs 2, 0x10(31)
    li 0, 0x2
    .4byte 0xC022B48C # lfs f1, lbl_8053E42C@sda21(r0)
    .4byte 0xC002B44C # lfs f0, lbl_8053E3EC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x10(31)
    stw 0, 0x98(31)
    lfs 1, 0x284(31)
    fsubs 0, 1, 0
    stfs 0, 0x284(31)
    lwz 0, 0x304(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019B298
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x40d
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
L_8019B298:
    lwz 0, 0x308(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019B2D0
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x40e
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x308(31)
L_8019B2D0:
    lwz 5, 0x98(31)
    mr 3, 31
    lwz 0, 0x244(31)
    li 4, 0x1
    slwi 5, 5, 3
    add 0, 5, 0
    stw 0, 0x254(31)
    bl fn_8019C500
    li 4, 0x0
    li 3, 0x46
    stw 4, 0x244(31)
    li 0, 0x2f
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 4, 0x240(31)
    stw 3, 0x234(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    lbz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8019B348
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 31, 0xc
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
L_8019B348:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_8019B3A4
    li 0, 0x1
    addi 4, 30, 0xd0
    stb 0, 0x268(31)
    addi 3, 30, 0xe8
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8019B3A4
    li 0, 0x2
    stw 0, 0x244(31)
L_8019B3A4:
    lbz 0, 0x268(31)
    cmplwi 0, 0x1
    .4byte 0x4082103C # bne .L_8019C3E8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40821030 # bne .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0x2a4
    bl fn_8019CECC
    lfs 2, 0xa4(1)
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    .4byte 0xC022B3E8 # lfs f1, lbl_8053E388@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0xa4(1)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 30
    mulli 4, 0, 0xc
    add 3, 31, 4
    lfs 0, 0x2a4(3)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8019B404
    lfs 0, 0x2a8(3)
    fcmpu cr0, 0, 1
    .4byte 0x41820014 # beq .L_8019B414
L_8019B404:
    addi 4, 4, 0x2a4
    addi 3, 1, 0xa0
    add 4, 31, 4
    bl fn_8019CECC
L_8019B414:
    mr 3, 31
    bl fn_8015461C
    lwz 0, 0x248(31)
    lis 6, 0x5a4c
    mr 4, 3
    addi 5, 1, 0xa0
    slwi 0, 0, 4
    addi 3, 6, 0x4432
    li 7, -0x1
    li 8, -0x1
    ori 6, 0, 0x2
    bl fn_80154310
    cmpwi 3, 0x0
    .4byte 0x41800FA0 # blt .L_8019C3E8
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8019B464
    addi 3, 3, 0x280
    addi 4, 31, 0x280
    bl fn_8019CECC
L_8019B464:
    lwz 3, 0x248(31)
    li 0, 0x32
    addi 3, 3, 0x1
    stw 3, 0x248(31)
    stw 0, 0x238(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x5
    .4byte 0x40810F68 # ble .L_8019C3E8
    li 0, 0x33
    stw 0, 0x230(31)
    .4byte 0x48000F5C # b .L_8019C3E8
    .4byte 0x800D8FE0 # lwz r0, lbl_8053ABA0@sda21(r0)
    cmpwi 0, 0x6
    .4byte 0x41800F50 # blt .L_8019C3E8
    li 4, 0x0
    li 3, 0x32
    stw 4, 0x248(31)
    li 0, 0x34
    stw 4, 0x238(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000F30 # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820F24 # bne .L_8019C3E8
    li 3, 0x0
    li 0, 0xf
    stb 3, 0x268(31)
    stw 0, 0x234(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8019B4EC
    stw 3, 0x98(31)
    .4byte 0x48000024 # b .L_8019B50C
L_8019B4EC:
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8019B50C
    li 0, 0x3
    li 3, 0x32
    stw 0, 0x98(31)
    li 0, 0x35
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8019B50C:
    lwz 0, 0x98(31)
    slwi 0, 0, 3
    stw 0, 0x254(31)
    .4byte 0x48000ED0 # b .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820EC4 # bne .L_8019C3E8
    li 6, 0x1
    addi 4, 30, 0x100
    stb 6, 0x268(31)
    li 3, 0x0
    li 0, 0x36
    lwz 5, 0x98(31)
    slwi 5, 5, 5
    lwzx 4, 4, 5
    stw 4, 0x254(31)
    .4byte 0x906D8FE0 # stw r3, lbl_8053ABA0@sda21(r0)
    .4byte 0x90CD8FE4 # stw r6, lbl_8053ABA4@sda21(r0)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000E8C # b .L_8019C3E8
    .4byte 0x800D8FE0 # lwz r0, lbl_8053ABA0@sda21(r0)
    cmpwi 0, 0x6
    .4byte 0x41800E80 # blt .L_8019C3E8
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x3c
    .4byte 0x40810E68 # ble .L_8019C3E8
    li 5, 0x0
    li 0, 0x2
    .4byte 0x90AD8FE0 # stw r5, lbl_8053ABA0@sda21(r0)
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    stw 5, 0x248(31)
    .4byte 0x900D8FE4 # stw r0, lbl_8053ABA4@sda21(r0)
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0xc
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
    li 3, 0x0
    li 0, 0x37
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000E08 # b .L_8019C3E8
    .4byte 0x800D8FE4 # lwz r0, lbl_8053ABA4@sda21(r0)
    cmpwi 0, 0x3
    .4byte 0x40820DFC # bne .L_8019C3E8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820DF0 # bne .L_8019C3E8
    li 0, 0x0
    stb 0, 0x268(31)
    lwz 3, 0x98(31)
    cmpwi 3, 0x3
    .4byte 0x4082000C # bne .L_8019B618
    stw 0, 0x98(31)
    .4byte 0x4800002C # b .L_8019B640
L_8019B618:
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8019B62C
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x48000018 # b .L_8019B640
L_8019B62C:
    cmpwi 3, 0x2
    .4byte 0x40820010 # bne .L_8019B640
    li 0, 0x38
    stw 0, 0x230(31)
    .4byte 0x48000DAC # b .L_8019C3E8
L_8019B640:
    li 0, 0x8
    stw 0, 0x234(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 3
    stw 0, 0x254(31)
    .4byte 0x48000D94 # b .L_8019C3E8
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 31, 0xc
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
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
    addi 3, 1, 0xa0
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    addi 3, 1, 0x3c
    addi 4, 1, 0xa0
    stfs 0, 0xa4(1)
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
    li 4, 0x2de
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820CEC # beq .L_8019C3E8
    li 0, 0x39
    stw 0, 0x230(31)
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 31, 0xc
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
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
    .4byte 0x41820C78 # beq .L_8019C3E8
    li 0, 0x0
    li 3, 0x14
    stw 0, 0x244(31)
    li 0, 0x3a
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820C54 # bne .L_8019C3E8
    li 0, 0x0
    stb 0, 0x268(31)
    lwz 3, 0x98(31)
    cmpwi 3, 0x2
    .4byte 0x40820014 # bne .L_8019B7BC
    stw 0, 0x98(31)
    li 0, 0x8
    stw 0, 0x234(31)
    .4byte 0x4800009C # b .L_8019B854
L_8019B7BC:
    cmpwi 3, 0x0
    .4byte 0x40820094 # bne .L_8019B854
    li 0, 0x3
    .4byte 0xC002B47C # lfs f0, lbl_8053E41C@sda21(r0)
    stw 0, 0x234(31)
    .4byte 0xC042B44C # lfs f2, lbl_8053E3EC@sda21(r0)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 29
    stw 0, 0x244(31)
    stfs 0, 0x274(31)
    lfs 1, 0x280(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800054 # bge .L_8019B854
    addi 3, 31, 0x274
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 28, 0x0
    li 3, 0x2
    stw 28, 0x244(31)
    li 0, 0x1e
    mr 27, 31
    stw 3, 0x98(31)
    stw 0, 0x238(31)
L_8019B830:
    addi 3, 27, 0x2d4
    addi 4, 27, 0x2a4
    bl fn_8019CECC
    addi 28, 28, 0x1
    addi 27, 27, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FFE8 # blt .L_8019B830
    li 0, 0x3b
    stw 0, 0x230(31)
L_8019B854:
    lwz 3, 0x98(31)
    lwz 0, 0x244(31)
    slwi 3, 3, 3
    add 0, 3, 0
    stw 0, 0x254(31)
    .4byte 0x48000B80 # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0x2a4
    bl fn_8019CECC
    lfs 1, 0x280(31)
    mr 27, 31
    .4byte 0xC002B490 # lfs f0, lbl_8053E430@sda21(r0)
    li 29, 0x0
    fsubs 0, 1, 0
    stfs 0, 0xa0(1)
L_8019B890:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8019B904
    mr 3, 29
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x4082004C # bne .L_8019B904
    lfs 1, 0xa0(1)
    addi 3, 27, 0x2d4
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    .4byte 0xC062B3D0 # lfs f3, lbl_8053E370@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0xa4(1)
    addi 3, 27, 0x2d8
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    .4byte 0xC062B3D0 # lfs f3, lbl_8053E370@sda21(r0)
    bl fn_801F71A4
    mr 3, 29
    addi 4, 27, 0x2d4
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8019B904:
    addi 29, 29, 0x1
    addi 27, 27, 0xc
    cmpwi 29, 0x4
    .4byte 0x4180FF80 # blt .L_8019B890
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820ACC # bne .L_8019C3E8
    li 27, 0x1
L_8019B924:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8019B978
    mr 3, 27
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x4082002C # bne .L_8019B978
    mr 3, 27
    bl fn_8023E724
    mr 4, 3
    mr 3, 27
    li 5, 0x122
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8019B978:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFA4 # blt .L_8019B924
    li 3, 0x0
    bl fn_8023E724
    mr 4, 3
    addi 3, 31, 0x2d4
    bl fn_8019CECC
    lfs 1, 0x2d8(31)
    li 0, 0x3c
    .4byte 0xC002B44C # lfs f0, lbl_8053E3EC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x29c(31)
    stw 0, 0x230(31)
    .4byte 0x48000A38 # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    lfs 1, 0x29c(31)
    addi 3, 31, 0x2d8
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    .4byte 0xC062B3D0 # lfs f3, lbl_8053E370@sda21(r0)
    bl fn_801F71A4
    li 3, 0x0
    li 4, 0x3
    bl fn_80230BF4
    addi 4, 31, 0x2d4
    li 3, 0x0
    li 5, 0xff
    bl fn_802303FC
    lfs 1, 0x29c(31)
    lfs 0, 0x2d8(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B3D0 # lfs f0, lbl_8053E370@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418109E0 # bgt .L_8019C3E8
    li 0, 0x8
    li 3, 0x0
    stw 0, 0x238(31)
    li 0, 0x3d
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x480009C4 # b .L_8019C3E8
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019BA60
    li 3, 0x0
    bl fn_8023E724
    mr 4, 3
    li 3, 0x0
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000060 # b .L_8019BABC
L_8019BA60:
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_8019BA94
    li 3, 0x0
    bl fn_8023E724
    mr 4, 3
    li 3, 0x0
    li 5, 0x3c
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x4800002C # b .L_8019BABC
L_8019BA94:
    li 3, 0x0
    bl fn_8023E724
    mr 4, 3
    li 3, 0x0
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8019BABC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820924 # bne .L_8019C3E8
    li 0, 0x8
    stw 0, 0x238(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8019BAF0
    li 0, 0x14
    stw 0, 0x238(31)
L_8019BAF0:
    lwz 0, 0x248(31)
    cmpwi 0, 0x3
    .4byte 0x418008F0 # blt .L_8019C3E8
    li 0, 0x0
    lis 3, 0x2
    stw 0, 0x238(31)
    addi 4, 3, 0xe
    li 3, 0x0
    stw 0, 0x248(31)
    bl fn_80230FD0
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
    li 0, 0x3e
    stw 0, 0x230(31)
    .4byte 0x480008BC # b .L_8019C3E8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408208B0 # bne .L_8019C3E8
    li 3, 0x0
    bl fn_8023E724
    lwz 5, 0x248(31)
    mr 4, 3
    li 3, 0x0
    li 6, 0xff
    addi 5, 5, 0x31a
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8019BB80
    li 0, 0x8
    stw 0, 0x238(31)
    .4byte 0x48000028 # b .L_8019BBA4
L_8019BB80:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8019BB94
    li 0, 0x3
    stw 0, 0x238(31)
    .4byte 0x48000014 # b .L_8019BBA4
L_8019BB94:
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8019BBA4
    li 0, 0x1e
    stw 0, 0x238(31)
L_8019BBA4:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x3
    .4byte 0x41800830 # blt .L_8019C3E8
    li 0, 0x3f
    stw 0, 0x230(31)
    .4byte 0x48000824 # b .L_8019C3E8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820818 # bne .L_8019C3E8
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 31, 0x280
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
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
    addi 3, 1, 0xa0
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    addi 3, 1, 0x30
    addi 4, 1, 0xa0
    stfs 0, 0xa4(1)
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
    li 4, 0x2df
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820770 # beq .L_8019C3E8
    li 0, 0x40
    stw 0, 0x230(31)
    .4byte 0x48000764 # b .L_8019C3E8
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 31, 0x280
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
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
    .4byte 0x418206F8 # beq .L_8019C3E8
    lwz 3, 0x308(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8019BD0C
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x308(31)
L_8019BD0C:
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3f4
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3f5
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3f6
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3f7
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3f8
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3f9
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3fa
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x3fb
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x1
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x12
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x30c(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x13
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x310(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x40f
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x410
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x411
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x412
    li 6, 0x0
    li 7, 0x6
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    li 0, 0x41
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x480003FC # b .L_8019C3E8
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x258
    .4byte 0x4080003C # bge .L_8019C040
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0xa
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
L_8019C040:
    lwz 0, 0x248(31)
    cmpwi 0, 0x258
    .4byte 0x40820054 # bne .L_8019C09C
    lwz 3, 0x304(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8019C064
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x304(31)
L_8019C064:
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0xe
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
L_8019C09C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x29e
    .4byte 0x40820010 # bne .L_8019C0B4
    li 3, 0x14a
    li 4, 0x0
    bl fn_80196D30
L_8019C0B4:
    lwz 0, 0x248(31)
    cmpwi 0, 0x3de
    .4byte 0x40820030 # bne .L_8019C0EC
    li 0, 0x4
    lis 4, 0x5
    .4byte 0x900D8FE4 # stw r0, lbl_8053ABA4@sda21(r0)
    mr 3, 31
    addi 4, 4, 0xf
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x1
    li 4, 0x1
    li 5, 0xff
    bl fn_8018E8DC
L_8019C0EC:
    lwz 0, 0x248(31)
    cmpwi 0, 0x3e8
    .4byte 0x4082003C # bne .L_8019C130
    addi 3, 1, 0xa0
    addi 4, 31, 0xc
    bl fn_8019CECC
    addi 3, 31, 0xc
    addi 4, 31, 0x280
    bl fn_8019CECC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x60
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0xc
    addi 4, 1, 0xa0
    bl fn_8019CECC
L_8019C130:
    lwz 0, 0x248(31)
    cmpwi 0, 0x5a0
    .4byte 0x418002B0 # blt .L_8019C3E8
    bl fn_80119DD0
    li 4, 0x64
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x64
    li 10, 0x0
    bl fn_80119998
    li 3, 0x0
    bl fn_8023E724
    mr 4, 3
    li 3, 0x0
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    li 0, 0xc8
    li 3, 0x0
    stw 0, 0x238(31)
    li 0, 0x42
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000248 # b .L_8019C3E8
    lwz 0, 0x238(31)
    cmpwi 0, 0x32
    .4byte 0x40820040 # bne .L_8019C1EC
    li 0, 0x5
    addi 3, 1, 0xa0
    .4byte 0x900D8FE4 # stw r0, lbl_8053ABA4@sda21(r0)
    addi 4, 31, 0x280
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    addi 3, 31, 0xc
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    addi 4, 1, 0xa0
    fadds 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8019CECC
    mr 3, 31
    li 4, 0x0
    bl fn_8019C500
L_8019C1EC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4182004C # beq .L_8019C240
    cmpwi 0, 0x32
    .4byte 0x408001EC # bge .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0x280
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    addi 3, 31, 0xc
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    addi 4, 1, 0xa0
    fadds 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8019CECC
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 1, 0xa0
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    .4byte 0x480001AC # b .L_8019C3E8
L_8019C240:
    li 0, 0x43
    stw 0, 0x230(31)
    addi 3, 1, 0xa0
    addi 4, 31, 0x280
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    addi 3, 31, 0xc
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    addi 4, 1, 0xa0
    fadds 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8019CECC
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 1, 0xa0
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
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
    addi 3, 1, 0xa0
    bl fn_801546BC
    .4byte 0xC002B430 # lfs f0, lbl_8053E3D0@sda21(r0)
    addi 3, 1, 0x24
    addi 4, 1, 0xa0
    stfs 0, 0xa4(1)
    bl fn_801546D0
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    mr 30, 3
    mr 3, 31
    bl fn_801545E8
    mr 29, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 5, 29
    mr 6, 30
    mr 7, 28
    li 4, 0x2e0
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_8019C3E8
    li 0, 0x44
    stw 0, 0x230(31)
    .4byte 0x480000C8 # b .L_8019C3E8
    addi 3, 1, 0xa0
    addi 4, 31, 0x280
    bl fn_8019CECC
    lfs 1, 0xa4(1)
    addi 3, 31, 0xc
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    addi 4, 1, 0xa0
    fadds 0, 1, 0
    stfs 0, 0xa4(1)
    bl fn_8019CECC
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 3, 1, 0xa0
    bl fn_8017EC70
    .4byte 0xC022B450 # lfs f1, lbl_8053E3F0@sda21(r0)
    bl fn_8017EB1C
    mr 3, 31
    li 4, 0x0
    bl fn_8019C500
    mr 3, 31
    bl fn_801545E8
    mr 29, 3
    mr 3, 31
    bl fn_8015461C
    mr 30, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 30
    mr 5, 29
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    mr 3, 31
    bl fn_801545E8
    mr 30, 3
    li 3, 0x0
    bl fn_8022EA0C
    mr 4, 30
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8019C3E8
    li 3, 0x7
    li 4, 0x3
    bl fn_8019CDE4
    li 3, 0xc
    bl fn_8019CD9C
    li 3, 0x1
    bl GlobalMgr_SetByte_0x24d
    li 0, 0x45
    stw 0, 0x230(31)
L_8019C3E8:
    lwz 3, 0x230(31)
    cmpwi 3, 0x1f
    .4byte 0x41820028 # beq .L_8019C418
    cmpwi 3, 0x21
    .4byte 0x41820020 # beq .L_8019C418
    subi 0, 3, 0x23
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_8019C418
    cmpwi 3, 0x26
    .4byte 0x4182000C # beq .L_8019C418
    cmpwi 3, 0x2d
    .4byte 0x40820068 # bne .L_8019C47C
L_8019C418:
    addi 3, 1, 0x84
    addi 4, 31, 0x60
    bl fn_801546F4
    lfs 1, 0xc(31)
    addi 3, 1, 0x14
    lfs 2, 0x10(31)
    bl Actor_SetVec2_0x0
    addi 3, 1, 0x84
    addi 4, 1, 0x14
    bl fn_80154558
    addi 3, 1, 0x8c
    addi 4, 1, 0x14
    bl fn_80154558
    addi 3, 1, 0x84
    addi 4, 1, 0x1c
    bl fn_80154528
    mr 3, 31
    bl fn_801545E8
    mr 30, 3
    mr 3, 31
    bl fn_8015461C
    mr 4, 3
    mr 5, 30
    addi 3, 1, 0x84
    bl fn_80239914
L_8019C47C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_8019C4D0
    li 0, 0x0
    stb 0, 0x268(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8019C4D0
    lwz 4, 0x98(31)
    li 0, 0x3
    lwz 3, 0x244(31)
    slwi 4, 4, 3
    add 3, 4, 3
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 29
    stw 0, 0x244(31)
L_8019C4D0:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    lmw 27, 0xbc(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

