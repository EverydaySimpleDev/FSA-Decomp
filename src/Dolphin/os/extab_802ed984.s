# fn_802ED984 - GNEF: main draw()/update() driver (0xCAC, largest piece)
# Reuses the private helper fn_802ED538 and the global cue-flag setter
# SetGlobalCueFlag (x6); manages a large set of effect handles via
# fn_800EC240 (teardown x5) + fn_8013C824 (resolve x5) + fn_8013CB44
# (sync x6) + fn_8013CC50 (spawn x14); notifies via fn_801F0E34 (x6);
# iterates the spatial registry via SpatialRegistry_GetBase (x10); queries per-room
# config via GetRoomConfigRecord (x6)/fn_802D800C/fn_802D8050 (x4); reuses the
# draw-half helper fn_804032E8. Track A: byte-match verified, structural
# overview per the large/complex-function exception - given the scale and
# effect-heavy nature, this is very plausibly a boss or major cutscene
# set-piece actor.
.section extab, "a"
.balign 4
.global etb_8000D234
etb_8000D234:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D234, 8

.section extabindex, "a"
.balign 4
.global eti_8001C468
eti_8001C468:
    .4byte fn_802ED984
    .4byte 0x00000CAC
    .4byte etb_8000D234
.size eti_8001C468, 12

.text
.balign 4
.global fn_802ED984

fn_802ED984:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8046F508@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    addi 31, 4, lbl_8046F508@l
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    lwz 0, 0x24c(3)
    cmplwi 0, 0x10
    .4byte 0x41810C64 # bgt .L_802EE614
    lis 4, jumptable_804AA3A4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AA3A4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820C3C # bne .L_802EE614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_802EDA20
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(30)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(30)
    stfs 0, 0x800(4)
    lfs 0, 0x14(30)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_802EDA20:
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820BE8 # beq .L_802EE614
    li 0, 0x14
    lis 3, 0x100
    stw 0, 0x250(30)
    addi 4, 3, 0xd
    li 5, 0x0
    li 6, 0x0
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    bl fn_8022ADE4
    .4byte 0x48000BB4 # b .L_802EE614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_802EDAA8
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(30)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(30)
    stfs 0, 0x800(4)
    lfs 0, 0x14(30)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_802EDAA8:
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41810B58 # bgt .L_802EE614
    li 0, 0x3c
    stw 0, 0x250(30)
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000B40 # b .L_802EE614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_802EDB1C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(30)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(30)
    stfs 0, 0x800(4)
    lfs 0, 0x14(30)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_802EDB1C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802EDB40
    li 0, 0x1
    .4byte 0xC002E47C # lfs f0, lbl_8054141C@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_802EDB40:
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41810AC0 # bgt .L_802EE614
    bl GetRoomConfigRecord
    lwz 0, 0x90(30)
    li 5, 0x1
    li 6, 0xff
    clrlwi 4, 0, 27
    bl fn_802D8050
    li 0, 0xb4
    stw 0, 0x250(30)
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000A90 # b .L_802EE614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_802EDBCC
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(30)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(30)
    stfs 0, 0x800(4)
    lfs 0, 0x14(30)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_802EDBCC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802EDBF0
    li 0, 0x1
    .4byte 0xC002E47C # lfs f0, lbl_8054141C@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_802EDBF0:
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41810A10 # bgt .L_802EE614
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lwz 31, 0x260(30)
    cmpwi 31, 0x0
    .4byte 0x41800034 # blt .L_802EDC4C
    bl SpatialRegistry_GetBase
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802EDC4C
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x534c
    cmplwi 0, 0x5234
    .4byte 0x4082000C # bne .L_802EDC4C
    li 3, 0x0
    bl SetGlobalCueFlag
L_802EDC4C:
    lwz 31, 0x264(30)
    cmpwi 31, 0x0
    .4byte 0x41800034 # blt .L_802EDC88
    bl SpatialRegistry_GetBase
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802EDC88
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x534c
    cmplwi 0, 0x5234
    .4byte 0x4082000C # bne .L_802EDC88
    li 3, 0x0
    bl SetGlobalCueFlag
L_802EDC88:
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000980 # b .L_802EE614
    bl GetRoomConfigRecord
    lwz 4, 0x258(30)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182096C # beq .L_802EE614
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x4182095C # beq .L_802EE614
    lwz 31, 0x260(30)
    cmpwi 31, 0x0
    .4byte 0x41800034 # blt .L_802EDCF8
    bl SpatialRegistry_GetBase
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802EDCF8
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x534c
    cmplwi 0, 0x5234
    .4byte 0x4082000C # bne .L_802EDCF8
    li 3, 0x1
    bl SetGlobalCueFlag
L_802EDCF8:
    lwz 31, 0x264(30)
    cmpwi 31, 0x0
    .4byte 0x41800034 # blt .L_802EDD34
    bl SpatialRegistry_GetBase
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802EDD34
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x534c
    cmplwi 0, 0x5234
    .4byte 0x4082000C # bne .L_802EDD34
    li 3, 0x1
    bl SetGlobalCueFlag
L_802EDD34:
    li 3, 0x3c
    li 0, 0x5
    stw 3, 0x250(30)
    stw 0, 0x24c(30)
    .4byte 0x480008D0 # b .L_802EE614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_802EDD8C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(30)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(30)
    stfs 0, 0x800(4)
    lfs 0, 0x14(30)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_802EDD8C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802EDDB0
    li 0, 0x1
    .4byte 0xC002E47C # lfs f0, lbl_8054141C@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_802EDDB0:
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41810850 # bgt .L_802EE614
    lwz 5, 0x230(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802EDDF0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(30)
L_802EDDF0:
    lwz 0, 0x254(30)
    addi 5, 31, 0xc0
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    slwi 29, 0, 3
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhzx 5, 5, 29
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0xc0
    stw 3, 0x230(30)
    add 3, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x2(3)
    addi 4, 30, 0xc
    lwz 3, 0x4(30)
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0xc0
    stw 3, 0x234(30)
    add 3, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x4(3)
    addi 4, 30, 0xc
    lwz 3, 0x4(30)
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0xc0
    stw 3, 0x238(30)
    add 3, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x6(3)
    addi 4, 30, 0xc
    lwz 3, 0x4(30)
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x23c(30)
    li 0, 0xb4
    lis 4, 0x5
    mr 3, 30
    stw 0, 0x250(30)
    addi 4, 4, 0x5a
    li 5, 0x0
    lwz 6, 0x24c(30)
    addi 0, 6, 0x1
    stw 0, 0x24c(30)
    bl fn_801F0E34
    .4byte 0x48000728 # b .L_802EE614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_802EDF34
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(30)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(30)
    stfs 0, 0x800(4)
    lfs 0, 0x14(30)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_802EDF34:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802EDF58
    li 0, 0x1
    .4byte 0xC002E47C # lfs f0, lbl_8054141C@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_802EDF58:
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x418100C4 # bgt .L_802EE030
    bl GetRoomConfigRecord
    lwz 4, 0x25c(30)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 29, 0x0
L_802EDF90:
    mr 3, 29
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE8 # blt .L_802EDF90
    lwz 29, 0x260(30)
    cmpwi 29, 0x0
    .4byte 0x41800034 # blt .L_802EDFE8
    bl SpatialRegistry_GetBase
    slwi 0, 29, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802EDFE8
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x534c
    cmplwi 0, 0x5234
    .4byte 0x4082000C # bne .L_802EDFE8
    li 3, 0x0
    bl SetGlobalCueFlag
L_802EDFE8:
    lwz 29, 0x264(30)
    cmpwi 29, 0x0
    .4byte 0x41800034 # blt .L_802EE024
    bl SpatialRegistry_GetBase
    slwi 0, 29, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802EE024
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x534c
    cmplwi 0, 0x5234
    .4byte 0x4082000C # bne .L_802EE024
    li 3, 0x0
    bl SetGlobalCueFlag
L_802EE024:
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
L_802EE030:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x5b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480005D0 # b .L_802EE614
    lbz 0, 0x279(30)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_802EE0A0
    lbz 0, 0x276(30)
    cmplwi 0, 0x0
    .4byte 0x418205B8 # beq .L_802EE614
    bl GetRoomConfigRecord
    lwz 4, 0x25c(30)
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    li 0, 0x7c
    lis 4, 0x5
    stw 0, 0x250(30)
    mr 3, 30
    addi 4, 4, 0x5c
    li 5, 0x0
    lwz 6, 0x24c(30)
    addi 0, 6, 0x1
    stw 0, 0x24c(30)
    bl fn_801F0E34
    .4byte 0x48000578 # b .L_802EE614
L_802EE0A0:
    bl fn_802ED538
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_802EE0FC
    lwz 5, 0x23c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802EE0D4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(30)
L_802EE0D4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802EE0F0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_8045815C
L_802EE0F0:
    li 0, 0x1
    stb 0, 0x279(30)
    .4byte 0x4800051C # b .L_802EE614
L_802EE0FC:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x5b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000504 # b .L_802EE614
    lbz 3, 0x275(30)
    subi 0, 3, 0x2
    stb 0, 0x275(30)
    lbz 0, 0x275(30)
    lwz 3, 0x234(30)
    stb 0, 0xbb(3)
    lbz 0, 0x275(30)
    lwz 3, 0x238(30)
    stb 0, 0xbb(3)
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x418104C8 # bgt .L_802EE614
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x234(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x234(30)
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x238(30)
    bl fn_800EC240
    li 3, 0x0
    li 0, 0xff
    stw 3, 0x238(30)
    stb 0, 0x275(30)
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000480 # b .L_802EE614
    lbz 0, 0x277(30)
    cmplwi 0, 0x0
    .4byte 0x41820474 # beq .L_802EE614
    lwz 0, 0x254(30)
    addi 5, 31, 0x3c
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    mulli 0, 0, 0x3
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    slwi 29, 0, 1
    li 8, 0x0
    lhzx 5, 5, 29
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0x3c
    lwz 3, 0x4(30)
    add 4, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x2(4)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0x3c
    lwz 3, 0x4(30)
    add 4, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x4(4)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x58
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x78
    li 0, 0xa
    stw 3, 0x250(30)
    stw 0, 0x24c(30)
    .4byte 0x480003B4 # b .L_802EE614
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x4181039C # bgt .L_802EE614
    lwz 0, 0x254(30)
    addi 5, 31, 0x54
    lwz 3, 0x4(30)
    addi 4, 30, 0x268
    mulli 0, 0, 0x3
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    slwi 29, 0, 1
    li 8, 0x0
    lhzx 5, 5, 29
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0x54
    stw 3, 0x240(30)
    add 3, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x2(3)
    addi 4, 30, 0x268
    lwz 3, 0x4(30)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x244(30)
    lis 3, lbl_804AA340@ha
    lis 5, 0x5449
    lwz 0, 0x254(30)
    addi 4, 3, lbl_804AA340@l
    addi 3, 5, 0x4d47
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    stw 3, 0x2cc(30)
    .4byte 0xC002E480 # lfs f0, lbl_80541420@sda21(r0)
    stfs 0, 0x44(30)
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x480002F0 # b .L_802EE614
    lwz 3, 0x240(30)
    addi 4, 30, 0x268
    li 5, 0x0
    li 6, -0x1
    li 7, 0x0
    bl fn_8013CB44
    lwz 3, 0x244(30)
    addi 4, 30, 0x268
    li 5, 0x0
    li 6, -0x1
    li 7, 0x0
    bl fn_8013CB44
    lbz 3, 0x275(30)
    cmplwi 3, 0x2
    .4byte 0x40810010 # ble .L_802EE370
    subi 0, 3, 0x2
    stb 0, 0x275(30)
    .4byte 0x4800000C # b .L_802EE378
L_802EE370:
    li 0, 0x0
    stb 0, 0x275(30)
L_802EE378:
    lbz 0, 0x275(30)
    lwz 3, 0x230(30)
    .4byte 0xC002E484 # lfs f0, lbl_80541424@sda21(r0)
    stb 0, 0xbb(3)
    lfs 1, 0x270(30)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820280 # bne .L_802EE614
    stfs 0, 0x270(30)
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(30)
    bl fn_800EC240
    li 3, 0x0
    li 0, 0xc
    stw 3, 0x230(30)
    stw 0, 0x24c(30)
    .4byte 0x48000258 # b .L_802EE614
    lbz 0, 0x278(30)
    cmplwi 0, 0x0
    .4byte 0x4182024C # beq .L_802EE614
    lwz 0, 0x254(30)
    addi 5, 31, 0xe0
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    mulli 0, 0, 0x5
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    slwi 29, 0, 1
    li 8, 0x0
    lhzx 5, 5, 29
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0xe0
    lwz 3, 0x4(30)
    add 4, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x2(4)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0xe0
    lwz 3, 0x4(30)
    add 4, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x4(4)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0xe0
    lwz 3, 0x4(30)
    add 4, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x6(4)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 0, 31, 0xe0
    lwz 3, 0x4(30)
    add 4, 0, 29
    .4byte 0xC022E478 # lfs f1, lbl_80541418@sda21(r0)
    lhz 5, 0x8(4)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x6f
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0xd
    li 0, 0xb4
    stw 3, 0x24c(30)
    stw 0, 0x250(30)
    .4byte 0x4800012C # b .L_802EE614
    lwz 3, 0x250(30)
    subi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41810114 # bgt .L_802EE614
    bl GetRoomConfigRecord
    lwz 0, 0x90(30)
    li 5, 0x1
    li 6, 0xff
    srwi 4, 0, 27
    bl fn_802D8050
    li 0, 0x0
    stw 0, 0x2cc(30)
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    .4byte 0x480000E4 # b .L_802EE614
    lwz 3, 0x240(30)
    addi 4, 30, 0x268
    li 5, 0x0
    li 6, -0x1
    li 7, 0x0
    bl fn_8013CB44
    lwz 3, 0x244(30)
    addi 4, 30, 0x268
    li 5, 0x0
    li 6, -0x1
    li 7, 0x0
    bl fn_8013CB44
    .4byte 0x480000B0 # b .L_802EE614
    lbz 3, 0x275(30)
    cmplwi 3, 0x8
    .4byte 0x40810010 # ble .L_802EE580
    subi 0, 3, 0x8
    stb 0, 0x275(30)
    .4byte 0x4800000C # b .L_802EE588
L_802EE580:
    li 0, 0x0
    stb 0, 0x275(30)
L_802EE588:
    lbz 0, 0x275(30)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_802EE5DC
    lwz 3, 0x240(30)
    addi 4, 30, 0x268
    li 5, 0x0
    li 6, -0x1
    stb 0, 0xbb(3)
    li 7, 0x0
    lbz 0, 0x275(30)
    lwz 3, 0x244(30)
    stb 0, 0xbb(3)
    lwz 3, 0x240(30)
    bl fn_8013CB44
    lwz 3, 0x244(30)
    addi 4, 30, 0x268
    li 5, 0x0
    li 6, -0x1
    li 7, 0x0
    bl fn_8013CB44
    .4byte 0x4800003C # b .L_802EE614
L_802EE5DC:
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x240(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x240(30)
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x244(30)
    bl fn_800EC240
    li 3, 0x0
    li 0, 0x10
    stw 3, 0x244(30)
    stw 0, 0x24c(30)
L_802EE614:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

