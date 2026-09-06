.section extab, "a"
.balign 4
.global etb_80006E34
etb_80006E34:
    .4byte 0x408A0000
    .4byte 0x00000000
.size etb_80006E34, 8

.section extabindex, "a"
.balign 4
.global eti_800138DC
eti_800138DC:
    .4byte fn_80150284
    .4byte 0x00003330
    .4byte etb_80006E34
.size eti_800138DC, 12

# fn_80150284 - SLR1's real update(). Survey-level only - this is the
# LARGEST single method landed this project (0x3330 bytes, over 3100
# instructions, even bigger than HINO's own update()). Opens by calling a
# cluster of small positional/vector-component accessors from THIS SAME
# reversed-extab-group (fn_801546F4/E8/E4/D0/BC - part of the ~39 small
# "grouped-but-unnamed" helpers in extab_801535b4.s) to fill several local
# structs, references a per-Type table at lbl_8049FA30, and branches early
# on this->0x94 (the same category sub-field setParams() derives from the
# spawn param). Given the size, not traced further - the load-bearing fact
# is that SLR1's update() is built almost entirely out of this cluster's
# small shared helpers rather than one-off inline logic, unlike HINO's
# update() which leans on the project-wide shared subsystems instead.
.text
.balign 4
.global fn_80150284

fn_80150284:
    stwu 1, -0x1190(1)
    mflr 0
    stw 0, 0x1194(1)
    li 0, 0x1188
    stfd 31, 0x1180(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x1178
    stfd 30, 0x1170(1)
    psq_stx 30, 1, 0, 0, 0
    stmw 24, 0x1150(1)
    mr 31, 3
    lis 3, lbl_8049FA30@ha
    addi 30, 3, lbl_8049FA30@l
    addi 3, 1, 0xd8
    addi 4, 31, 0x80
    bl fn_801546F4
    lfs 1, 0xc(31)
    addi 3, 1, 0x70
    lfs 2, 0x10(31)
    bl fn_801546E8
    addi 3, 1, 0x68
    bl fn_801546E4
    addi 3, 1, 0xcc
    addi 4, 31, 0xc
    bl fn_801546D0
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    li 4, 0x0
    li 0, -0x1
    sth 4, 0x8(1)
    addi 3, 1, 0xc0
    li 29, 0x0
    stfs 0, 0x14(1)
    li 28, 0x1
    stw 4, 0x10(1)
    stw 0, 0xc(1)
    bl fn_8003B2CC
    addi 3, 1, 0xc0
    bl fn_801546BC
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x40820098 # bne .L_801503BC
    lhz 0, 0x29c(31)
    cmplwi 0, 0xffff
    .4byte 0x4082003C # bne .L_8015036C
    bl fn_80154698
    clrlwi. 0, 3, 24
    .4byte 0x4082324C # bne .L_80153588
    mr 3, 31
    bl fn_8015461C
    lfs 1, 0xc(31)
    mr 26, 3
    lfs 2, 0x10(31)
    addi 3, 1, 0x38
    bl fn_801546E8
    mr 4, 26
    bl fn_80226998
    sth 3, 0x29c(31)
    .4byte 0x48003220 # b .L_80153588
L_8015036C:
    mr 3, 31
    bl fn_8015461C
    lfs 1, 0xc(31)
    mr 26, 3
    lfs 2, 0x10(31)
    addi 3, 1, 0x30
    bl fn_801546E8
    mr 4, 26
    bl fn_80226998
    lhz 0, 0x29c(31)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x418231EC # beq .L_80153588
    li 0, 0x28
    mr 3, 31
    stw 0, 0x250(31)
    li 4, 0x1
    bl fn_80154614
    li 0, 0x0
    sth 0, 0x94(31)
L_801503BC:
    lwz 0, 0x230(31)
    cmpwi 0, 0xf
    .4byte 0x41820054 # beq .L_80150418
    lwz 3, 0x2a4(31)
    cmpwi 3, 0x0
    .4byte 0x41800048 # blt .L_80150418
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801503EC
    bl fn_801544C0
    stw 3, 0x27c(31)
    .4byte 0x48000030 # b .L_80150418
L_801503EC:
    li 0, -0x2
    stw 0, 0x2a4(31)
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80150418
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48003174 # b .L_80153588
L_80150418:
    lhz 0, 0x94(31)
    cmplwi 0, 0x5
    .4byte 0x4182000C # beq .L_8015042C
    cmplwi 0, 0x3
    .4byte 0x408200A8 # bne .L_801504D0
L_8015042C:
    lfs 1, 0x14(31)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810078 # ble .L_801504B0
    cmplwi 0, 0x5
    .4byte 0x40820034 # bne .L_80150474
    lfs 2, 0x44(31)
    fcmpu cr0, 0, 2
    .4byte 0x41820054 # beq .L_801504A0
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    .4byte 0xC002A2C0 # lfs f0, lbl_8053D260@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800038 # bge .L_801504A0
    stfs 0, 0x44(31)
    .4byte 0x48000030 # b .L_801504A0
L_80150474:
    lfs 2, 0x44(31)
    fcmpu cr0, 0, 2
    .4byte 0x41820024 # beq .L_801504A0
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    .4byte 0xC002A2C4 # lfs f0, lbl_8053D264@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801504A0
    stfs 0, 0x44(31)
L_801504A0:
    addi 3, 31, 0xc
    addi 4, 31, 0x3c
    bl fn_801545F0
    .4byte 0x480030DC # b .L_80153588
L_801504B0:
    lis 4, 0x1
    addi 3, 31, 0x3c
    addi 0, 4, 0x2205
    stw 0, 0xb0(31)
    stfs 0, 0x14(31)
    bl fn_801546BC
    li 0, 0x0
    sth 0, 0x94(31)
L_801504D0:
    lwz 0, 0x2a4(31)
    cmpwi 0, -0x2
    .4byte 0x408200A4 # bne .L_8015057C
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x41820098 # beq .L_8015057C
    cmpwi 0, 0x9
    .4byte 0x41820090 # beq .L_8015057C
    cmpwi 0, 0xa
    .4byte 0x41820088 # beq .L_8015057C
    cmpwi 0, 0x11
    .4byte 0x41820080 # beq .L_8015057C
    cmpwi 0, 0x12
    .4byte 0x41820078 # beq .L_8015057C
    cmpwi 0, 0x13
    .4byte 0x41820070 # beq .L_8015057C
    cmpwi 0, 0x14
    .4byte 0x41820068 # beq .L_8015057C
    lis 3, lbl_804BF850@ha
    li 24, 0x0
    addi 25, 3, lbl_804BF850@l
    li 26, -0x1
    li 27, 0x2
L_8015052C:
    mr 3, 31
    bl fn_801545E8
    lwz 0, 0x0(25)
    cmpw 0, 3
    .4byte 0x4082000C # bne .L_80150548
    stw 26, 0x0(25)
    stw 27, 0xbc(31)
L_80150548:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFD8 # blt .L_8015052C
    bl fn_80154744
    .4byte 0xC002A2CC # lfs f0, lbl_8053D26C@sda21(r0)
    li 0, 0x7
    .4byte 0xC042A2C8 # lfs f2, lbl_8053D268@sda21(r0)
    fmuls 1, 0, 1
    lfs 0, 0x290(31)
    fmadds 0, 2, 0, 1
    stfs 0, 0x28c(31)
    stw 0, 0x230(31)
L_8015057C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x4082001C # bne .L_801505A0
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_801505A0
    addi 3, 31, 0xc
    bl fn_80154718
    li 28, 0x0
L_801505A0:
    mr 3, 31
    clrlwi 4, 28, 24
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x418200AC # beq .L_8015065C
    addi 3, 31, 0x2ac
    bl fn_801546BC
    lwz 0, 0x230(31)
    cmpwi 0, 0xc
    .4byte 0x4182003C # beq .L_80150600
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_80150600
    cmpwi 0, 0x3
    .4byte 0x41820028 # beq .L_80150600
    mr 3, 31
    bl fn_801545E0
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80150600
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x10
    li 5, 0x0
    bl fn_801F0E34
L_80150600:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_8015062C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
L_8015062C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x4182000C # beq .L_80150640
    li 0, 0x2
    stw 0, 0xbc(31)
L_80150640:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x40822F40 # bne .L_80153588
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41810008 # bgt .L_8015065C
    .4byte 0x48002F30 # b .L_80153588
L_8015065C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x10
    .4byte 0x41820428 # beq .L_80150A8C
    cmpwi 0, 0x9
    .4byte 0x41820420 # beq .L_80150A8C
    cmpwi 0, 0xa
    .4byte 0x41820418 # beq .L_80150A8C
    cmpwi 0, 0x11
    .4byte 0x41820410 # beq .L_80150A8C
    cmpwi 0, 0x12
    .4byte 0x41820408 # beq .L_80150A8C
    cmpwi 0, 0x13
    .4byte 0x41820400 # beq .L_80150A8C
    cmpwi 0, 0x14
    .4byte 0x418203F8 # beq .L_80150A8C
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820114 # bne .L_801507B4
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820104 # beq .L_801507B4
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x4082001C # bne .L_801506D8
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_80150704
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0x48000030 # b .L_80150704
L_801506D8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820024 # beq .L_80150704
    cmpwi 0, 0x5
    .4byte 0x4182001C # beq .L_80150704
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_80150704
    cmpwi 0, 0x10
    .4byte 0x4182000C # beq .L_80150704
    li 0, 0x4
    stw 0, 0x230(31)
L_80150704:
    addi 3, 31, 0x2ac
    bl fn_801546BC
    lis 3, lbl_804BF850@ha
    li 24, 0x0
    addi 25, 3, lbl_804BF850@l
    li 28, -0x1
    li 27, 0x2
L_80150720:
    mr 3, 31
    bl fn_801545E8
    lwz 0, 0x0(25)
    cmpw 0, 3
    .4byte 0x4082000C # bne .L_8015073C
    stw 28, 0x0(25)
    stw 27, 0xbc(31)
L_8015073C:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFD8 # blt .L_80150720
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_80150788
    .4byte 0x800D8F88 # lwz r0, lbl_8053AB48@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8015076C
    li 0, 0x0
    .4byte 0x900D83A8 # stw r0, lbl_80539F68@sda21(r0)
L_8015076C:
    .4byte 0x806D8F88 # lwz r3, lbl_8053AB48@sda21(r0)
    addi 0, 3, 0x2
    cmpwi 0, 0xc8
    .4byte 0x900D8F88 # stw r0, lbl_8053AB48@sda21(r0)
    .4byte 0x4081000C # ble .L_80150788
    li 0, 0xc8
    .4byte 0x900D8F88 # stw r0, lbl_8053AB48@sda21(r0)
L_80150788:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801545C0
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x40822DE8 # bne .L_80153588
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41810008 # bgt .L_801507B4
    .4byte 0x48002DD8 # b .L_80153588
L_801507B4:
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x408202D0 # bne .L_80150A8C
    lwz 3, 0x90(31)
    cmplwi 3, 0x2
    .4byte 0x418202C4 # beq .L_80150A8C
    cmplwi 3, 0x3
    .4byte 0x418202BC # beq .L_80150A8C
    cmplwi 3, 0x1
    .4byte 0x418202B4 # beq .L_80150A8C
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x408202A8 # bne .L_80150A8C
    lwz 4, 0x288(31)
    lwz 0, 0x98(31)
    cmpwi 4, 0x1
    mr 24, 0
    extrwi 25, 0, 1, 30
    .4byte 0x41820028 # beq .L_80150824
    cmpwi 4, 0x3
    .4byte 0x41820020 # beq .L_80150824
    cmplwi 3, 0x5
    .4byte 0x40820008 # bne .L_80150814
    addi 25, 25, 0x2
L_80150814:
    cmplwi 3, 0x6
    .4byte 0x4082000C # bne .L_80150824
    addi 25, 25, 0x4
    addi 24, 24, 0x4
L_80150824:
    addi 3, 1, 0xcc
    addi 4, 31, 0xc
    bl fn_801545A4
    slwi 0, 24, 3
    addi 3, 30, 0x188
    lfs 1, 0xc(31)
    add 6, 3, 0
    lfsx 0, 3, 0
    slwi 0, 25, 4
    addi 5, 30, 0x1c8
    addi 3, 31, 0x60
    fadds 0, 1, 0
    add 4, 5, 0
    stfs 0, 0xc(31)
    lfs 1, 0x10(31)
    lfs 0, 0x4(6)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    lfsx 1, 5, 0
    lfs 2, 0x4(4)
    lfs 3, 0x8(4)
    lfs 4, 0xc(4)
    bl fn_80154590
    li 24, 0x0
L_80150884:
    mr 3, 31
    mr 7, 24
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    stw 3, 0xc(1)
    .4byte 0x41800190 # blt .L_80150A34
    lfs 1, 0xc(31)
    addi 3, 1, 0x28
    lfs 2, 0x10(31)
    bl fn_801546E8
    mr 4, 3
    addi 3, 1, 0x60
    bl fn_8015457C
    addi 3, 1, 0x58
    bl fn_801546E4
    addi 3, 1, 0xb0
    addi 4, 31, 0x60
    bl fn_801546F4
    addi 3, 1, 0xb0
    addi 4, 1, 0x60
    bl fn_80154558
    addi 3, 1, 0xb8
    addi 4, 1, 0x60
    bl fn_80154558
    addi 3, 1, 0xb0
    addi 4, 1, 0x58
    bl fn_80154528
    lwz 3, 0xc(1)
    addi 4, 1, 0x58
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80150920
    lis 4, 0x2
    lwz 3, 0xc(1)
    addi 4, 4, 0x2
    bl fn_80230FD0
L_80150920:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x418200B8 # beq .L_801509E0
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x4180000C # blt .L_80150940
    cmplwi 0, 0x9
    .4byte 0x408100A4 # ble .L_801509E0
L_80150940:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_801509A0
    .4byte 0x40800014 # bge .L_80150960
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8015096C
    .4byte 0x4080002C # bge .L_80150984
    .4byte 0x48000074 # b .L_801509D0
L_80150960:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_801509D0
    .4byte 0x48000050 # b .L_801509B8
L_8015096C:
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC022A2D0 # lfs f1, lbl_8053D270@sda21(r0)
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000050 # b .L_801509D0
L_80150984:
    .4byte 0xC002A2D0 # lfs f0, lbl_8053D270@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    fneg 1, 0
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000034 # b .L_801509D0
L_801509A0:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC042A2D0 # lfs f2, lbl_8053D270@sda21(r0)
    fmr 3, 1
    bl fn_80154518
    .4byte 0x4800001C # b .L_801509D0
L_801509B8:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC002A2D0 # lfs f0, lbl_8053D270@sda21(r0)
    fmr 3, 1
    fneg 2, 0
    bl fn_80154518
L_801509D0:
    addi 3, 31, 0x2ac
    bl fn_801546BC
    li 0, 0x28
    stw 0, 0x254(31)
L_801509E0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x473
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x474
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000010 # b .L_80150A40
L_80150A34:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FE48 # blt .L_80150884
L_80150A40:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x40820024 # bne .L_80150A6C
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
    .4byte 0x48000018 # b .L_80150A80
L_80150A6C:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_80150A80:
    addi 3, 31, 0xc
    addi 4, 1, 0xcc
    bl fn_801545A4
L_80150A8C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x41820010 # beq .L_80150AA4
    lwz 0, 0x288(31)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_80150AC0
L_80150AA4:
    .4byte 0xC022A2D4 # lfs f1, lbl_8053D274@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC042A2D8 # lfs f2, lbl_8053D278@sda21(r0)
    .4byte 0xC062A2DC # lfs f3, lbl_8053D27C@sda21(r0)
    .4byte 0xC082A2E0 # lfs f4, lbl_8053D280@sda21(r0)
    bl fn_80154590
    .4byte 0x48000044 # b .L_80150B00
L_80150AC0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x10
    .4byte 0x41820020 # beq .L_80150AE8
    .4byte 0xC022A2E4 # lfs f1, lbl_8053D284@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC042A2D4 # lfs f2, lbl_8053D274@sda21(r0)
    .4byte 0xC062A2E0 # lfs f3, lbl_8053D280@sda21(r0)
    .4byte 0xC082A2E8 # lfs f4, lbl_8053D288@sda21(r0)
    bl fn_80154590
    .4byte 0x4800001C # b .L_80150B00
L_80150AE8:
    .4byte 0xC022A2C4 # lfs f1, lbl_8053D264@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC062A2EC # lfs f3, lbl_8053D28C@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
L_80150B00:
    lwz 3, 0x230(31)
    cmpwi 3, 0x10
    .4byte 0x41820018 # beq .L_80150B20
    subi 0, 3, 0x11
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_80150B20
    cmpwi 3, 0x14
    .4byte 0x408201C0 # bne .L_80150CDC
L_80150B20:
    lis 3, lbl_80465D78@ha
    li 0, 0x8
    addi 3, 3, lbl_80465D78@l
    addi 5, 1, 0xe4
    subi 4, 3, 0x4
    mtctr 0
L_80150B38:
    lwz 3, 0x4(4)
    lwzu 0, 0x8(4)
    stw 3, 0x4(5)
    stwu 0, 0x8(5)
    .4byte 0x4200FFF0 # bdnz .L_80150B38
    lwz 0, 0x4(4)
    lis 3, 0x4e55
    addi 4, 3, 0x4c4c
    mr 3, 31
    stw 0, 0x4(5)
    mr 5, 4
    addi 6, 1, 0xe8
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80150BA4
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x41800028 # blt .L_80150BA4
    cmplwi 0, 0x9
    .4byte 0x41810020 # bgt .L_80150BA4
    lwz 3, 0x2a4(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80150BA4
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80150BA4
    bl fn_801544B4
L_80150BA4:
    li 24, 0x0
    addi 25, 1, 0xa8
L_80150BAC:
    mr 3, 31
    mr 7, 24
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    stw 3, 0xc(1)
    .4byte 0x41800104 # blt .L_80150CD0
    lfs 1, 0xc(31)
    addi 3, 1, 0x20
    lfs 2, 0x10(31)
    bl fn_801546E8
    mr 4, 3
    addi 3, 1, 0x50
    bl fn_8015457C
    addi 3, 1, 0x48
    bl fn_801546E4
    addi 3, 1, 0xa0
    addi 4, 31, 0x60
    bl fn_801546F4
    addi 3, 1, 0xa0
    addi 4, 1, 0x50
    bl fn_80154558
    mr 3, 25
    addi 4, 1, 0x50
    bl fn_80154558
    addi 3, 1, 0xa0
    addi 4, 1, 0x48
    bl fn_80154528
    lwz 3, 0xc(1)
    addi 4, 1, 0x48
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_80150CD0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x473
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x474
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
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x4180002C # blt .L_80150CD0
    cmplwi 0, 0x9
    .4byte 0x41810024 # bgt .L_80150CD0
    lwz 3, 0x2a4(31)
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80150CD0
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80150CD0
    bl fn_801544B4
    .4byte 0x48000010 # b .L_80150CDC
L_80150CD0:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FED4 # blt .L_80150BAC
L_80150CDC:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x408200CC # bne .L_80150DB0
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x418200C0 # beq .L_80150DB0
    cmpwi 0, 0x3
    .4byte 0x418200B8 # beq .L_80150DB0
    mr 3, 31
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
    li 24, 0x0
L_80150D1C:
    mr 3, 31
    mr 7, 24
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    stw 3, 0xc(1)
    .4byte 0x41800064 # blt .L_80150DA0
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_80150DA0
    lwz 3, 0xc(1)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    lwz 3, 0xc(1)
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    fneg 1, 30
    lfs 0, 0x10(31)
    fsubs 0, 0, 2
    fneg 2, 0
    bl fn_8015465C
    clrlwi 3, 3, 16
    bl ClassifyBamAngleToQuadrant
    lwz 0, 0x98(31)
    cmpw 0, 3
    .4byte 0x40820010 # bne .L_80150DA0
    li 0, 0x2
    stw 0, 0x250(31)
    .4byte 0x48000028 # b .L_80150DC4
L_80150DA0:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FF74 # blt .L_80150D1C
    .4byte 0x48000018 # b .L_80150DC4
L_80150DB0:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_80150DC4:
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_80150DE8
    lwz 0, 0x250(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80150DE8
    lis 3, 0x1
    addi 0, 3, 0x2205
    stw 0, 0xb0(31)
L_80150DE8:
    lwz 0, 0x230(31)
    cmpwi 0, 0xd
    .4byte 0x41820314 # beq .L_80151104
    cmpwi 0, 0xe
    .4byte 0x4182030C # beq .L_80151104
    mr 3, 31
    bl fn_801545E8
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x10
    addi 7, 1, 0x14
    addi 8, 1, 0xc
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x40800068 # bge .L_80150E98
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_80150E50
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_80150E50
    cmpwi 0, 0x6
    .4byte 0x4082004C # bne .L_80150E98
L_80150E50:
    lis 3, lbl_804BF850@ha
    li 24, 0x0
    addi 25, 3, lbl_804BF850@l
    li 28, -0x1
    li 27, 0x2
L_80150E64:
    mr 3, 31
    bl fn_801545E8
    lwz 0, 0x0(25)
    cmpw 0, 3
    .4byte 0x4082000C # bne .L_80150E80
    stw 28, 0x0(25)
    stw 27, 0xbc(31)
L_80150E80:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFD8 # blt .L_80150E64
    li 0, 0x1
    stw 0, 0x230(31)
L_80150E98:
    mr 3, 31
    bl fn_8015461C
    bl fn_80154624
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80150ED0
    lfs 2, 0x10(31)
    lfs 0, 0x14(31)
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002A2F0 # lfs f0, lbl_8053D290@sda21(r0)
    stfs 2, 0x10(31)
    stfs 1, 0x14(31)
    stfs 1, 0x44(31)
    stfs 0, 0x2b0(31)
L_80150ED0:
    lfs 1, 0x2ac(31)
    addi 3, 31, 0x3c
    .4byte 0xC042A2F4 # lfs f2, lbl_8053D294@sda21(r0)
    .4byte 0xC062A2BC # lfs f3, lbl_8053D25C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2b0(31)
    addi 3, 31, 0x40
    .4byte 0xC042A2F4 # lfs f2, lbl_8053D294@sda21(r0)
    .4byte 0xC062A2BC # lfs f3, lbl_8053D25C@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x41820198 # beq .L_80151098
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x4180018C # blt .L_80151098
    lfs 1, 0x14(1)
    .4byte 0xC002A2F8 # lfs f0, lbl_8053D298@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080017C # bge .L_80151098
    mr 3, 31
    bl fn_801545E8
    lwz 0, 0xc(1)
    lis 4, lbl_804BF850@ha
    addi 4, 4, lbl_804BF850@l
    slwi 0, 0, 2
    lwzx 0, 4, 0
    cmpw 0, 3
    .4byte 0x41820158 # beq .L_80151098
    cmpwi 0, 0x0
    .4byte 0x4180004C # blt .L_80150F94
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x40820144 # bne .L_80151098
    lhz 3, 0x8(1)
    addi 0, 3, 0x7000
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(31)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lhz 3, 0x8(1)
    addi 0, 3, 0x7000
    extsh 3, 0
    bl fn_801544E4
    lfs 0, 0x28c(31)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    .4byte 0x48000108 # b .L_80151098
L_80150F94:
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x408200FC # bne .L_80151098
    mr 3, 31
    bl fn_801545E0
    cmpwi 3, 0x0
    .4byte 0x408000EC # bge .L_80151098
    .4byte 0x806D8F88 # lwz r3, lbl_8053AB48@sda21(r0)
    .4byte 0x800D83A8 # lwz r0, lbl_80539F68@sda21(r0)
    subf. 0, 3, 0
    .4byte 0x900D83A8 # stw r0, lbl_80539F68@sda21(r0)
    .4byte 0x40810040 # ble .L_80151000
    lhz 3, 0x8(1)
    addi 0, 3, 0x7000
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(31)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lhz 3, 0x8(1)
    addi 0, 3, 0x7000
    extsh 3, 0
    bl fn_801544E4
    lfs 0, 0x28c(31)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    .4byte 0x4800009C # b .L_80151098
L_80151000:
    mr 3, 31
    bl fn_801545E8
    lwz 0, 0xc(1)
    lis 4, lbl_804BF850@ha
    addi 4, 4, lbl_804BF850@l
    slwi 0, 0, 2
    lwzx 0, 4, 0
    cmpw 0, 3
    .4byte 0x4182004C # beq .L_8015106C
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182002C # beq .L_80151058
    cmplwi 0, 0x3
    .4byte 0x41820024 # beq .L_80151058
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80151058
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x65
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_8015106C
L_80151058:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x66
    li 5, 0x0
    bl fn_801F0E34
L_8015106C:
    li 0, 0xc8
    mr 3, 31
    .4byte 0x900D83A8 # stw r0, lbl_80539F68@sda21(r0)
    bl fn_801545E8
    lwz 5, 0xc(1)
    lis 4, lbl_804BF850@ha
    addi 4, 4, lbl_804BF850@l
    li 0, 0x3
    slwi 5, 5, 2
    stwx 3, 4, 5
    stw 0, 0xbc(31)
L_80151098:
    addi 3, 31, 0xc
    addi 4, 31, 0x3c
    bl fn_801545F0
    lwz 0, 0x230(31)
    cmpwi 0, 0xc
    .4byte 0x4182003C # beq .L_801510E8
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801510E8
    cmpwi 0, 0x3
    .4byte 0x41820028 # beq .L_801510E8
    mr 3, 31
    bl fn_801545E0
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_801510E8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x10
    li 5, 0x0
    bl fn_801F0E34
L_801510E8:
    addi 3, 1, 0xc0
    bl fn_801546BC
    mr 3, 31
    addi 4, 1, 0xc0
    li 5, 0x0
    bl fn_801545C0
    mr 29, 3
L_80151104:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80151124
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
L_80151124:
    lwz 0, 0x230(31)
    cmplwi 0, 0x14
    .4byte 0x418122B8 # bgt .L_801533E4
    lis 3, jumptable_8049FCF8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049FCF8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    addi 3, 31, 0xc
    bl fn_80154718
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082009C # bne .L_801511F4
    li 0, 0x0
    stw 0, 0x280(31)
    bl fn_80154744
    .4byte 0xC002A2FC # lfs f0, lbl_8053D29C@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1130(1)
    lwz 3, 0x1134(1)
    addi 0, 3, 0x96
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x278(31)
    lis 0, 0x4330
    stw 0, 0x1138(1)
    clrlwi 0, 3, 29
    .4byte 0xC862A348 # lfd f3, lbl_8053D2E8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002A300 # lfs f0, lbl_8053D2A0@sda21(r0)
    stw 0, 0x113c(1)
    lfd 2, 0x1138(1)
    fsubs 2, 2, 3
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 0, 3, 0x14
    stw 0, 0x240(31)
    stfs 0, 0x290(31)
    bl fn_80154744
    .4byte 0xC002A2CC # lfs f0, lbl_8053D26C@sda21(r0)
    li 0, 0x6
    .4byte 0xC042A2C8 # lfs f2, lbl_8053D268@sda21(r0)
    fmuls 1, 0, 1
    lfs 0, 0x290(31)
    fmadds 0, 2, 0, 1
    stfs 0, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x480021F4 # b .L_801533E4
L_801511F4:
    lwz 0, 0x90(31)
    .4byte 0xC022A2FC # lfs f1, lbl_8053D29C@sda21(r0)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_80151214
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80151214
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80151218
L_80151214:
    .4byte 0xC022A304 # lfs f1, lbl_8053D2A4@sda21(r0)
L_80151218:
    lwz 3, 0x10(1)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x40820068 # bne .L_8015128C
    lfs 0, 0x14(1)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820058 # bne .L_8015128C
    addi 3, 1, 0x94
    bl fn_8003B2CC
    addi 3, 1, 0x88
    bl fn_8003B2CC
    lwz 3, 0xc(1)
    bl fn_8023E724
    lwz 4, 0x4(31)
    mr 6, 3
    mr 3, 31
    addi 5, 31, 0xc
    addi 7, 31, 0x80
    addi 8, 1, 0x94
    addi 9, 1, 0x88
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8015128C
    .4byte 0xC002A300 # lfs f0, lbl_8053D2A0@sda21(r0)
    li 0, 0x4
    stfs 0, 0x290(31)
    stw 0, 0x230(31)
L_8015128C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_801512F8
    lwz 4, 0x258(31)
    addi 3, 30, 0xc8
    addi 0, 4, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 29
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801512D8
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_801512F8
L_801512D8:
    lwz 0, 0x258(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_801512F0
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_801512F8
L_801512F0:
    li 0, 0x6
    stw 0, 0x238(31)
L_801512F8:
    lwz 4, 0x98(31)
    addi 3, 30, 0x48
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8015132C
    cmpwi 0, 0x3
    .4byte 0x408220BC # bne .L_801533E4
L_8015132C:
    lwz 3, 0x98(31)
    lwz 0, 0x258(31)
    slwi 3, 3, 2
    clrlwi 0, 0, 30
    add 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x480020A0 # b .L_801533E4
    clrlwi. 0, 29, 24
    .4byte 0x418200A0 # beq .L_801513EC
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820094 # bne .L_801513EC
    mr 3, 31
    bl fn_8015461C
    bl fn_80154624
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80151380
    lfs 1, 0xc0(1)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820070 # beq .L_801513EC
L_80151380:
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x2ac
    bl fn_801546BC
    li 0, 0x8
    addi 3, 30, 0xe8
    stw 0, 0x238(31)
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801513CC
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_801513E0
L_801513CC:
    lwz 0, 0x98(31)
    addi 3, 30, 0xf8
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
L_801513E0:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48001FFC # b .L_801533E4
L_801513EC:
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x418000AC # blt .L_801514A0
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80151410
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41820094 # beq .L_801514A0
L_80151410:
    bl fn_80154744
    .4byte 0xC002A2FC # lfs f0, lbl_8053D29C@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 0, 3, 0x96
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x278(31)
    lis 0, 0x4330
    stw 0, 0x1138(1)
    clrlwi 0, 3, 29
    .4byte 0xC842A348 # lfd f2, lbl_8053D2E8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x113c(1)
    lfd 0, 0x1138(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1130(1)
    lwz 3, 0x1134(1)
    addi 0, 3, 0x14
    stw 0, 0x240(31)
    bl fn_80154744
    .4byte 0xC002A2CC # lfs f0, lbl_8053D26C@sda21(r0)
    li 3, 0x6
    .4byte 0xC042A2C8 # lfs f2, lbl_8053D268@sda21(r0)
    li 0, 0x0
    fmuls 1, 0, 1
    lfs 0, 0x290(31)
    fmadds 0, 2, 0, 1
    stfs 0, 0x28c(31)
    stw 3, 0x230(31)
    stw 0, 0x280(31)
    .4byte 0x48001F48 # b .L_801533E4
L_801514A0:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820084 # bne .L_8015152C
    addi 3, 31, 0x2ac
    bl fn_801546BC
    li 0, 0x0
    stw 0, 0x258(31)
    bl fn_80154744
    .4byte 0xC002A308 # lfs f0, lbl_8053D2A8@sda21(r0)
    li 0, 0x8
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 3, 3, 0x1
    stw 3, 0x25c(31)
    stw 0, 0x238(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801514F8
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_80151520
L_801514F8:
    bl fn_80154744
    .4byte 0xC002A30C # lfs f0, lbl_8053D2AC@sda21(r0)
    li 0, 0x0
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 3, 3, 0x14
    stw 3, 0x238(31)
    stw 0, 0x25c(31)
L_80151520:
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48001EBC # b .L_801533E4
L_8015152C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_80151598
    lwz 4, 0x258(31)
    addi 3, 30, 0xc8
    addi 0, 4, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 29
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80151578
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_80151598
L_80151578:
    lwz 0, 0x258(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_80151590
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80151598
L_80151590:
    li 0, 0x6
    stw 0, 0x238(31)
L_80151598:
    lwz 4, 0x98(31)
    addi 3, 30, 0x48
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801515CC
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_801515E4
L_801515CC:
    lwz 3, 0x98(31)
    lwz 0, 0x258(31)
    slwi 3, 3, 2
    clrlwi 0, 0, 30
    add 0, 3, 0
    stw 0, 0x274(31)
L_801515E4:
    lwz 0, 0x90(31)
    .4byte 0xC022A2FC # lfs f1, lbl_8053D29C@sda21(r0)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_80151604
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80151604
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80151608
L_80151604:
    .4byte 0xC022A304 # lfs f1, lbl_8053D2A4@sda21(r0)
L_80151608:
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80151628
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80151628
    li 0, 0x4
    stw 0, 0x230(31)
L_80151628:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40821DB4 # bne .L_801533E4
    lwz 3, 0x10(1)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x40821DA4 # bne .L_801533E4
    lfs 0, 0x14(1)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40821D94 # bne .L_801533E4
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48001D88 # b .L_801533E4
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40821D7C # bne .L_801533E4
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_801516CC
    .4byte 0x40800014 # bge .L_8015168C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80151698
    .4byte 0x4080002C # bge .L_801516B0
    .4byte 0x48000074 # b .L_801516FC
L_8015168C:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_801516FC
    .4byte 0x48000050 # b .L_801516E4
L_80151698:
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 1, 0x290(31)
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000050 # b .L_801516FC
L_801516B0:
    lfs 0, 0x290(31)
    addi 3, 31, 0x2ac
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    fneg 1, 0
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000034 # b .L_801516FC
L_801516CC:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 2, 0x290(31)
    fmr 3, 1
    bl fn_80154518
    .4byte 0x4800001C # b .L_801516FC
L_801516E4:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 0, 0x290(31)
    fmr 3, 1
    fneg 2, 0
    bl fn_80154518
L_801516FC:
    li 3, 0x0
    li 0, 0x14
    stw 3, 0x258(31)
    stw 0, 0x238(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0xa
    .4byte 0x4080000C # bge .L_80151720
    li 0, 0xa
    stw 0, 0x23c(31)
L_80151720:
    bl fn_80154744
    .4byte 0xC002A30C # lfs f0, lbl_8053D2AC@sda21(r0)
    li 0, 0x1
    fmadds 0, 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x48001CA0 # b .L_801533E4
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082019C # bne .L_801518EC
    lwz 3, 0x258(31)
    li 0, 0xf
    addi 3, 3, 0x1
    stw 3, 0x258(31)
    lwz 3, 0x258(31)
    clrlwi 3, 3, 30
    stw 3, 0x258(31)
    stw 0, 0x238(31)
    lwz 3, 0x25c(31)
    cmpwi 3, 0x0
    .4byte 0x41810158 # bgt .L_801518D4
    mr 3, 31
    bl fn_8015461C
    bl fn_80154624
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_801517F0
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4082002C # bne .L_801517C8
    bl fn_80154744
    .4byte 0xC002A310 # lfs f0, lbl_8053D2B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801517BC
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x48000050 # b .L_80151808
L_801517BC:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000044 # b .L_80151808
L_801517C8:
    bl fn_80154744
    .4byte 0xC002A310 # lfs f0, lbl_8053D2B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801517E4
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x48000028 # b .L_80151808
L_801517E4:
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x4800001C # b .L_80151808
L_801517F0:
    lwz 0, 0x98(31)
    clrlwi 0, 0, 31
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
L_80151808:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_80151868
    .4byte 0x40800014 # bge .L_80151828
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80151834
    .4byte 0x4080002C # bge .L_8015184C
    .4byte 0x48000074 # b .L_80151898
L_80151828:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_80151898
    .4byte 0x48000050 # b .L_80151880
L_80151834:
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 1, 0x290(31)
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000050 # b .L_80151898
L_8015184C:
    lfs 0, 0x290(31)
    addi 3, 31, 0x2ac
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    fneg 1, 0
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000034 # b .L_80151898
L_80151868:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 2, 0x290(31)
    fmr 3, 1
    bl fn_80154518
    .4byte 0x4800001C # b .L_80151898
L_80151880:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 0, 0x290(31)
    fmr 3, 1
    fneg 2, 0
    bl fn_80154518
L_80151898:
    bl fn_80154744
    .4byte 0xC002A314 # lfs f0, lbl_8053D2B4@sda21(r0)
    li 4, 0x0
    li 3, 0x8
    li 0, 0x1
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 5, 0x1144(1)
    addi 5, 5, 0x32
    stw 5, 0x23c(31)
    stw 4, 0x258(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48001B14 # b .L_801533E4
L_801518D4:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40821B08 # bne .L_801533E4
    subi 0, 3, 0x1
    stw 0, 0x25c(31)
    .4byte 0x48001AFC # b .L_801533E4
L_801518EC:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40821AF0 # bne .L_801533E4
    lfs 1, 0x14(1)
    .4byte 0xC002A2FC # lfs f0, lbl_8053D29C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40821ADC # bne .L_801533E4
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x41820060 # beq .L_80151974
    cmpwi 0, 0x3
    .4byte 0x41820058 # beq .L_80151974
    lwz 4, 0x98(31)
    addi 3, 30, 0x148
    lwz 0, 0x258(31)
    slwi 4, 4, 2
    lwz 5, 0x10(1)
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4082000C # bne .L_80151950
    li 0, 0x4
    stw 0, 0x230(31)
L_80151950:
    lwz 4, 0x98(31)
    addi 3, 30, 0x108
    lwz 0, 0x258(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x48001A74 # b .L_801533E4
L_80151974:
    lwz 0, 0x98(31)
    slwi 0, 0, 2
    stw 0, 0x274(31)
    .4byte 0x48001A64 # b .L_801533E4
    addi 3, 1, 0xcc
    addi 4, 31, 0xc
    bl fn_801545A4
    lfs 2, 0xd0(1)
    addi 4, 1, 0xcc
    .4byte 0xC002A318 # lfs f0, lbl_8053D2B8@sda21(r0)
    li 5, 0x33b
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 6, 0x0
    fsubs 0, 2, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0xd0(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182002C # beq .L_801519FC
    cmplwi 0, 0x3
    .4byte 0x41820024 # beq .L_801519FC
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_801519FC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x63
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_80151A10
L_801519FC:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x64
    li 5, 0x0
    bl fn_801F0E34
L_80151A10:
    li 0, 0x1
    addi 3, 31, 0x2ac
    .4byte 0x900D8F84 # stw r0, lbl_8053AB44@sda21(r0)
    bl fn_801546BC
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x238(31)
    li 0, 0x14
    mr 3, 31
    addi 4, 4, 0x9
    stw 0, 0x23c(31)
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(31)
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80151A6C
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80151A6C
    li 0, 0x0
    stw 0, 0x23c(31)
L_80151A6C:
    lwz 0, 0x10(1)
    cmpwi 0, -0x1
    .4byte 0x41820058 # beq .L_80151ACC
    mr 3, 31
    bl fn_8015461C
    bl fn_80154624
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80151A98
    lwz 0, 0x10(1)
    stw 0, 0x98(31)
    .4byte 0x48000038 # b .L_80151ACC
L_80151A98:
    lwz 3, 0x10(1)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4082000C # bne .L_80151AAC
    stw 3, 0x98(31)
    .4byte 0x48000024 # b .L_80151ACC
L_80151AAC:
    lhz 0, 0x8(1)
    cmplwi 0, 0x8000
    .4byte 0x40800010 # bge .L_80151AC4
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_80151ACC
L_80151AC4:
    li 0, 0x1
    stw 0, 0x98(31)
L_80151ACC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40821910 # bne .L_801533E4
    bl fn_80154744
    .4byte 0xC002A31C # lfs f0, lbl_8053D2BC@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 0, 3, 0x32
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x278(31)
    lis 0, 0x4330
    stw 0, 0x1138(1)
    clrlwi 0, 3, 29
    .4byte 0xC842A348 # lfd f2, lbl_8053D2E8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x113c(1)
    lfd 0, 0x1138(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1130(1)
    lwz 3, 0x1134(1)
    addi 0, 3, 0x14
    stw 0, 0x240(31)
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_80151B8C
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182002C # beq .L_80151B78
    cmplwi 0, 0x3
    .4byte 0x41820024 # beq .L_80151B78
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80151B78
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x65
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_80151B8C
L_80151B78:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x66
    li 5, 0x0
    bl fn_801F0E34
L_80151B8C:
    bl fn_80154744
    .4byte 0xC002A2CC # lfs f0, lbl_8053D26C@sda21(r0)
    li 0, 0x6
    .4byte 0xC042A2C8 # lfs f2, lbl_8053D268@sda21(r0)
    fmuls 1, 0, 1
    lfs 0, 0x290(31)
    fmadds 0, 2, 0, 1
    stfs 0, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x48001834 # b .L_801533E4
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_80151C10
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x41820040 # beq .L_80151C08
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x4180003C # blt .L_80151C10
    bl fn_8023E724
    lwz 4, 0x4(31)
    mr 6, 3
    mr 3, 31
    addi 5, 31, 0xc
    addi 7, 31, 0x80
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80151C10
L_80151C08:
    li 0, 0x14
    stw 0, 0x23c(31)
L_80151C10:
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80151C24
    li 0, 0xa
    stw 0, 0x23c(31)
L_80151C24:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820110 # bne .L_80151D3C
    lis 3, lbl_804BF850@ha
    li 24, 0x0
    addi 25, 3, lbl_804BF850@l
    li 27, -0x1
    li 28, 0x2
L_80151C44:
    mr 3, 31
    bl fn_801545E8
    lwz 0, 0x0(25)
    cmpw 0, 3
    .4byte 0x4082000C # bne .L_80151C60
    stw 27, 0x0(25)
    stw 28, 0xbc(31)
L_80151C60:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFD8 # blt .L_80151C44
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_80151C88
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x48001760 # b .L_801533E4
L_80151C88:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    fmr 2, 1
    fmr 3, 1
    bl fn_80154518
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80151CB0
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_80151CBC
L_80151CB0:
    li 0, 0x13
    stw 0, 0x230(31)
    .4byte 0x4800172C # b .L_801533E4
L_80151CBC:
    li 3, 0x0
    li 0, 0x14
    stw 3, 0x258(31)
    stw 3, 0x25c(31)
    stw 0, 0x238(31)
    bl fn_80154744
    .4byte 0xC002A314 # lfs f0, lbl_8053D2B4@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 0, 3, 0x32
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x278(31)
    lis 0, 0x4330
    stw 0, 0x1138(1)
    li 0, 0x1
    clrlwi 3, 3, 29
    .4byte 0xC842A348 # lfd f2, lbl_8053D2E8@sda21(r0)
    xoris 3, 3, 0x8000
    stw 3, 0x113c(1)
    lfd 0, 0x1138(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1130(1)
    lwz 3, 0x1134(1)
    addi 3, 3, 0x1e
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x480016AC # b .L_801533E4
L_80151D3C:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408216A0 # bne .L_801533E4
    bl fn_80154744
    lwz 3, 0x278(31)
    lis 0, 0x4330
    stw 0, 0x1140(1)
    clrlwi 0, 3, 29
    .4byte 0xC842A348 # lfd f2, lbl_8053D2E8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x1144(1)
    lfd 0, 0x1140(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1138(1)
    lwz 3, 0x113c(1)
    addi 0, 3, 0xd
    stw 0, 0x240(31)
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800044 # blt .L_80151DD4
    bl fn_80154744
    lhz 3, 0x8(1)
    lis 0, 0x4330
    stw 0, 0x1140(1)
    .4byte 0xC082A324 # lfs f4, lbl_8053D2C4@sda21(r0)
    stw 3, 0x1144(1)
    .4byte 0xC062A320 # lfs f3, lbl_8053D2C0@sda21(r0)
    .4byte 0xC842A350 # lfd f2, lbl_8053D2F0@sda21(r0)
    lfd 0, 0x1140(1)
    fnmsubs 1, 4, 1, 3
    fsubs 0, 0, 2
    fadds 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1138(1)
    lwz 0, 0x113c(1)
    sth 0, 0x29e(31)
L_80151DD4:
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x41800058 # blt .L_80151E34
    mr 3, 31
    bl fn_8015461C
    bl fn_80154624
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80151E00
    lwz 0, 0x10(1)
    stw 0, 0x98(31)
    .4byte 0x48000038 # b .L_80151E34
L_80151E00:
    lwz 3, 0x10(1)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4082000C # bne .L_80151E14
    stw 3, 0x98(31)
    .4byte 0x48000024 # b .L_80151E34
L_80151E14:
    lhz 0, 0x8(1)
    cmplwi 0, 0x8000
    .4byte 0x40800010 # bge .L_80151E2C
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_80151E34
L_80151E2C:
    li 0, 0x1
    stw 0, 0x98(31)
L_80151E34:
    lwz 3, 0x2a4(31)
    cmpwi 3, 0x0
    .4byte 0x418000E4 # blt .L_80151F20
    bl fn_8015445C
    mr. 24, 3
    .4byte 0x418200D8 # beq .L_80151F20
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x40820084 # bne .L_80151ED8
    li 0, 0x0
    sth 0, 0x2a0(31)
    bl fn_801544DC
    lfs 1, 0x0(3)
    mr 3, 24
    lfs 0, 0xc(31)
    fsubs 31, 1, 0
    bl fn_801544DC
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fsubs 30, 1, 0
    fmuls 0, 30, 30
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002A328 # lfs f0, lbl_8053D2C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810088 # ble .L_80151F20
    fmr 1, 31
    fmr 2, 30
    bl fn_8015465C
    sth 3, 0x29e(31)
    bl fn_80154744
    .4byte 0xC042A324 # lfs f2, lbl_8053D2C4@sda21(r0)
    .4byte 0xC002A320 # lfs f0, lbl_8053D2C0@sda21(r0)
    lhz 0, 0x29e(31)
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    add 0, 0, 3
    sth 0, 0x29e(31)
    .4byte 0x4800004C # b .L_80151F20
L_80151ED8:
    bl fn_80154744
    lwz 3, 0x278(31)
    lis 0, 0x4330
    stw 0, 0x1140(1)
    clrlwi 0, 3, 29
    .4byte 0xC842A348 # lfd f2, lbl_8053D2E8@sda21(r0)
    xoris 3, 0, 0x8000
    lwz 0, 0x240(31)
    stw 3, 0x1144(1)
    lfd 0, 0x1140(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1138(1)
    lwz 3, 0x113c(1)
    add 3, 3, 0
    addi 0, 3, 0xa
    stw 0, 0x240(31)
L_80151F20:
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80151F38
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x41820138 # beq .L_8015206C
L_80151F38:
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x4082012C # bne .L_8015206C
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800120 # blt .L_8015206C
    addi 3, 31, 0x2ac
    bl fn_801546BC
    lhz 0, 0x2a0(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80151F74
    lhz 3, 0x8(1)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x2a0(31)
L_80151F74:
    lwz 0, 0x278(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820014 # bne .L_80151F90
    lhz 3, 0x2a0(31)
    addi 0, 3, 0x100
    sth 0, 0x2a0(31)
    .4byte 0x48000010 # b .L_80151F9C
L_80151F90:
    lhz 3, 0x2a0(31)
    subi 0, 3, 0x100
    sth 0, 0x2a0(31)
L_80151F9C:
    lwz 3, 0xc(1)
    bl fn_80230CFC
    bl fn_801F6874
    addis 3, 3, 0x1
    lis 0, 0x4330
    addi 4, 3, -0x8000
    lhz 3, 0x2a0(31)
    clrlwi 4, 4, 16
    stw 0, 0x1140(1)
    subf 0, 4, 3
    .4byte 0xC822A348 # lfd f1, lbl_8053D2E8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x1144(1)
    lfd 0, 0x1140(1)
    fsubs 1, 0, 1
    bl fn_8015436C
    .4byte 0xC002A320 # lfs f0, lbl_8053D2C0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_80152000
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    lhz 3, 0x8(1)
    stfs 0, 0x14(1)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x2a0(31)
L_80152000:
    lwz 3, 0xc(1)
    bl fn_8023E724
    lhz 0, 0x2a0(31)
    lfs 31, 0x0(3)
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x14(1)
    addi 3, 31, 0xc
    .4byte 0xC042A2CC # lfs f2, lbl_8053D26C@sda21(r0)
    fmadds 1, 0, 1, 31
    .4byte 0xC062A2BC # lfs f3, lbl_8053D25C@sda21(r0)
    bl fn_801F71A4
    lwz 3, 0xc(1)
    bl fn_8023E724
    lhz 0, 0x2a0(31)
    lfs 31, 0x4(3)
    extsh 3, 0
    bl fn_801544E4
    lfs 0, 0x14(1)
    addi 3, 31, 0x10
    .4byte 0xC042A2CC # lfs f2, lbl_8053D26C@sda21(r0)
    fmadds 1, 0, 1, 31
    .4byte 0xC062A2BC # lfs f3, lbl_8053D25C@sda21(r0)
    bl fn_801F71A4
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x4800137C # b .L_801533E4
L_8015206C:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_801520A8
    lhz 0, 0x29e(31)
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(31)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lhz 0, 0x29e(31)
    extsh 3, 0
    bl fn_801544E4
    lfs 0, 0x28c(31)
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
L_801520A8:
    lwz 4, 0x2a4(31)
    cmpwi 4, -0x2
    .4byte 0x41821334 # beq .L_801533E4
    lwz 3, 0x90(31)
    cmplwi 3, 0x6
    .4byte 0x41820018 # beq .L_801520D4
    subi 0, 3, 0x2
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_801520D4
    cmplwi 3, 0x1
    .4byte 0x40821314 # bne .L_801533E4
L_801520D4:
    cmpwi 4, 0x0
    .4byte 0x4181130C # bgt .L_801533E4
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820018 # bne .L_801520FC
    lfs 1, 0x2b0(31)
    .4byte 0xC002A310 # lfs f0, lbl_8053D2B0@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x2b0(31)
    .4byte 0x480012EC # b .L_801533E4
L_801520FC:
    lfs 1, 0x2ac(31)
    .4byte 0xC002A310 # lfs f0, lbl_8053D2B0@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x2ac(31)
    .4byte 0x480012D8 # b .L_801533E4
    li 0, 0x12c
    li 3, 0x0
    stw 0, 0x248(31)
    li 0, 0x8
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    clrlwi. 0, 29, 24
    .4byte 0x41820088 # beq .L_801521B4
    addi 3, 31, 0x3c
    bl fn_801546BC
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x29e(31)
    li 0, 0x28
    stw 0, 0x24c(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80152194
    bl fn_80154744
    .4byte 0xC002A310 # lfs f0, lbl_8053D2B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80152178
    lhz 3, 0x29e(31)
    subi 0, 3, 0x4000
    sth 0, 0x29e(31)
    .4byte 0x48000010 # b .L_80152184
L_80152178:
    lhz 3, 0x29e(31)
    addi 0, 3, 0x4000
    sth 0, 0x29e(31)
L_80152184:
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    .4byte 0x4800001C # b .L_801521AC
L_80152194:
    li 0, 0x0
    stw 0, 0x264(31)
    lhz 3, 0x29e(31)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x29e(31)
L_801521AC:
    li 0, 0x8
    stw 0, 0x238(31)
L_801521B4:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_801521D8
    lhz 3, 0x8(1)
    li 0, 0x0
    addis 3, 3, 0x1
    addi 3, 3, -0x8000
    sth 3, 0x29e(31)
    stw 0, 0x264(31)
L_801521D8:
    lhz 3, 0x29e(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    lhz 0, 0x29e(31)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002A2C8 # lfs f0, lbl_8053D268@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2ac(31)
    lhz 0, 0x29e(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002A2C8 # lfs f0, lbl_8053D268@sda21(r0)
    addi 3, 1, 0xd8
    addi 4, 1, 0x70
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    bl fn_80154558
    addi 3, 1, 0xe0
    addi 4, 1, 0x70
    bl fn_80154558
    addi 3, 1, 0xd8
    addi 4, 1, 0x68
    bl fn_80154528
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80152264
    mr 3, 31
    bl fn_8015461C
    .4byte 0xC022A32C # lfs f1, lbl_8053D2CC@sda21(r0)
    mr 4, 3
    addi 3, 31, 0xc
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x41821184 # beq .L_801533E4
L_80152264:
    addi 3, 31, 0x2ac
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 3, 0x2
    li 0, 0x1e
    stw 3, 0x238(31)
    stw 0, 0x23c(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8015229C
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_801522A4
L_8015229C:
    li 0, 0x9
    stw 0, 0x230(31)
L_801522A4:
    addi 4, 30, 0x0
    lwz 3, 0x98(31)
    lwz 0, 0x0(4)
    li 5, 0x0
    cmpw 3, 0
    .4byte 0x4082000C # bne .L_801522C4
    stw 5, 0x258(31)
    .4byte 0x48001124 # b .L_801533E4
L_801522C4:
    lwzu 0, 0x4(4)
    li 5, 0x1
    cmpw 3, 0
    .4byte 0x4082000C # bne .L_801522DC
    stw 5, 0x258(31)
    .4byte 0x4800110C # b .L_801533E4
L_801522DC:
    lwzu 0, 0x4(4)
    li 5, 0x2
    cmpw 3, 0
    .4byte 0x4082000C # bne .L_801522F4
    stw 5, 0x258(31)
    .4byte 0x480010F4 # b .L_801533E4
L_801522F4:
    lwz 0, 0x4(4)
    li 5, 0x3
    cmpw 3, 0
    .4byte 0x408210E4 # bne .L_801533E4
    stw 5, 0x258(31)
    .4byte 0x480010DC # b .L_801533E4
    .4byte 0x480010D8 # b .L_801533E4
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_80152384
    li 0, 0x2
    addi 4, 30, 0x0
    stw 0, 0x238(31)
    addi 3, 30, 0x48
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x98(31)
    lwz 4, 0x258(31)
    addi 0, 4, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 30
    stw 0, 0x258(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 5
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80152378
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_80152384
L_80152378:
    lwz 0, 0x98(31)
    slwi 0, 0, 2
    stw 0, 0x274(31)
L_80152384:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40821058 # bne .L_801533E4
    .4byte 0xC022A330 # lfs f1, lbl_8053D2D0@sda21(r0)
    addi 3, 31, 0x58
    .4byte 0xC042A2F4 # lfs f2, lbl_8053D294@sda21(r0)
    .4byte 0xC062A2F0 # lfs f3, lbl_8053D290@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x54
    .4byte 0xC042A2F4 # lfs f2, lbl_8053D294@sda21(r0)
    .4byte 0xC062A334 # lfs f3, lbl_8053D2D4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x54(31)
    .4byte 0xC002A334 # lfs f0, lbl_8053D2D4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40801020 # bge .L_801533E4
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48001014 # b .L_801533E4
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_80152448
    li 0, 0x2
    addi 4, 30, 0x0
    stw 0, 0x238(31)
    addi 3, 30, 0x48
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x98(31)
    lwz 4, 0x258(31)
    addi 0, 4, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 30
    stw 0, 0x258(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 5
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8015243C
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_80152448
L_8015243C:
    lwz 0, 0x98(31)
    slwi 0, 0, 2
    stw 0, 0x274(31)
L_80152448:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820F94 # bne .L_801533E4
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x4842
    mr 4, 3
    addi 3, 6, 0x4d42
    addi 5, 31, 0xc
    li 6, 0x7
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000F60 # b .L_801533E4
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_801524A8
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801524A8
    li 0, 0x4
    stw 0, 0x230(31)
L_801524A8:
    clrlwi. 0, 29, 24
    .4byte 0x40820010 # bne .L_801524BC
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082015C # bne .L_80152614
L_801524BC:
    mr 24, 29
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x2ac
    bl fn_801546BC
    bl fn_80154744
    .4byte 0xC002A2FC # lfs f0, lbl_8053D29C@sda21(r0)
    clrlwi. 0, 29, 24
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 0, 3, 0x32
    stw 0, 0x23c(31)
    .4byte 0x40820088 # bne .L_8015257C
    bl fn_80154744
    .4byte 0xC002A300 # lfs f0, lbl_8053D2A0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800074 # bge .L_80152578
    lwz 3, 0x10(1)
    cmpwi 3, 0x0
    .4byte 0x4180006C # blt .L_8015257C
    lwz 0, 0x98(31)
    cmpw 0, 3
    .4byte 0x41820EC8 # beq .L_801533E4
    mr 3, 31
    bl fn_8015461C
    bl fn_80154624
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80152540
    lwz 0, 0x10(1)
    stw 0, 0x98(31)
    .4byte 0x48000040 # b .L_8015257C
L_80152540:
    lwz 3, 0x10(1)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4082000C # bne .L_80152554
    stw 3, 0x98(31)
    .4byte 0x4800002C # b .L_8015257C
L_80152554:
    lhz 0, 0x8(1)
    cmplwi 0, 0x8000
    .4byte 0x40800010 # bge .L_8015256C
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x48000014 # b .L_8015257C
L_8015256C:
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x48000008 # b .L_8015257C
L_80152578:
    li 24, 0x1
L_8015257C:
    clrlwi. 0, 24, 24
    .4byte 0x41820094 # beq .L_80152614
    mr 3, 31
    bl fn_8015461C
    bl fn_80154624
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_801525F4
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4082002C # bne .L_801525CC
    bl fn_80154744
    .4byte 0xC002A310 # lfs f0, lbl_8053D2B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801525C0
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x48000050 # b .L_8015260C
L_801525C0:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000044 # b .L_8015260C
L_801525CC:
    bl fn_80154744
    .4byte 0xC002A310 # lfs f0, lbl_8053D2B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801525E8
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x48000028 # b .L_8015260C
L_801525E8:
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x4800001C # b .L_8015260C
L_801525F4:
    lwz 0, 0x98(31)
    clrlwi 0, 0, 31
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
L_8015260C:
    li 0, 0x8
    stw 0, 0x238(31)
L_80152614:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_80152674
    .4byte 0x40800014 # bge .L_80152634
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80152640
    .4byte 0x4080002C # bge .L_80152658
    .4byte 0x48000074 # b .L_801526A4
L_80152634:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_801526A4
    .4byte 0x48000050 # b .L_8015268C
L_80152640:
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 1, 0x290(31)
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000050 # b .L_801526A4
L_80152658:
    lfs 0, 0x290(31)
    addi 3, 31, 0x2ac
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    fneg 1, 0
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000034 # b .L_801526A4
L_80152674:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 2, 0x290(31)
    fmr 3, 1
    bl fn_80154518
    .4byte 0x4800001C # b .L_801526A4
L_8015268C:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 0, 0x290(31)
    fmr 3, 1
    fneg 2, 0
    bl fn_80154518
L_801526A4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820D38 # bne .L_801533E4
    lwz 5, 0x258(31)
    addi 4, 30, 0xc8
    addi 3, 30, 0x48
    addi 0, 5, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 29
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x238(31)
    lwz 4, 0x98(31)
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80152710
    cmpwi 0, 0x3
    .4byte 0x40820CD8 # bne .L_801533E4
L_80152710:
    lwz 0, 0x258(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_80152728
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80152730
L_80152728:
    li 0, 0x6
    stw 0, 0x238(31)
L_80152730:
    lwz 3, 0x98(31)
    lwz 0, 0x258(31)
    slwi 3, 3, 2
    clrlwi 0, 0, 30
    add 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x48000C9C # b .L_801533E4
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_8015276C
    lfs 1, 0x14(1)
    .4byte 0xC002A328 # lfs f0, lbl_8053D2C8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820010 # beq .L_80152778
L_8015276C:
    .4byte 0x800D8F84 # lwz r0, lbl_8053AB44@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41820C70 # beq .L_801533E4
L_80152778:
    li 0, 0x1
    mr 3, 31
    .4byte 0x900D8F84 # stw r0, lbl_8053AB44@sda21(r0)
    li 4, 0x1
    bl fn_80154614
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000C50 # b .L_801533E4
    addi 3, 31, 0x2ac
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    li 5, 0x0
    li 4, 0x1e
    li 3, 0x2710
    stfs 0, 0x294(31)
    li 0, 0xe
    stw 5, 0x238(31)
    stw 4, 0x23c(31)
    stw 5, 0xb0(31)
    stw 3, 0x108(31)
    stw 0, 0x230(31)
    mr 3, 31
    li 4, 0x0
    bl fn_801544D0
    lfs 1, 0x2b8(31)
    addi 3, 31, 0xc
    .4byte 0xC042A334 # lfs f2, lbl_8053D2D4@sda21(r0)
    .4byte 0xC062A310 # lfs f3, lbl_8053D2B0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2bc(31)
    addi 3, 31, 0x10
    .4byte 0xC042A334 # lfs f2, lbl_8053D2D4@sda21(r0)
    .4byte 0xC062A310 # lfs f3, lbl_8053D2B0@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x23c(31)
    lfs 3, 0xc(31)
    lfs 2, 0x2b8(31)
    cmpwi 0, 0x0
    lfs 1, 0x10(31)
    lfs 0, 0x2bc(31)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    .4byte 0x4082017C # bne .L_801529A4
    fmuls 0, 0, 0
    fmadds 1, 2, 2, 0
    bl fn_80154378
    .4byte 0xC002A2E8 # lfs f0, lbl_8053D288@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800164 # bge .L_801529A4
    lwz 0, 0x274(31)
    cmpwi 0, 0x18
    .4byte 0x41820018 # beq .L_80152864
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
L_80152864:
    li 0, 0x18
    .4byte 0xC002A334 # lfs f0, lbl_8053D2D4@sda21(r0)
    stw 0, 0x274(31)
    lfs 1, 0x294(31)
    fadds 0, 1, 0
    stfs 0, 0x294(31)
    bl fn_802DEB58
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_80152908
    lfs 0, 0x294(31)
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810CF0 # ble .L_80153588
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x2aa
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x47
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000C84 # b .L_80153588
L_80152908:
    lfs 2, 0x298(31)
    .4byte 0xC022A338 # lfs f1, lbl_8053D2D8@sda21(r0)
    .4byte 0xC002A334 # lfs f0, lbl_8053D2D4@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x298(31)
    lfs 1, 0x298(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800AC0 # bge .L_801533E4
    lwz 0, 0x280(31)
    cmpwi 0, 0x1
    .4byte 0x40820068 # bne .L_80152998
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x2aa
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
L_80152998:
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000A44 # b .L_801533E4
L_801529A4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820A38 # bne .L_801533E4
    lwz 3, 0x258(31)
    lis 0, 0x4330
    addi 4, 30, 0xc8
    stw 0, 0x1140(1)
    addi 0, 3, 0x1
    .4byte 0xC822A348 # lfd f1, lbl_8053D2E8@sda21(r0)
    stw 0, 0x258(31)
    addi 3, 30, 0x48
    .4byte 0xC042A310 # lfs f2, lbl_8053D2B0@sda21(r0)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 29
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    xoris 0, 0, 0x8000
    stw 0, 0x1144(1)
    lfd 0, 0x1140(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1138(1)
    lwz 0, 0x113c(1)
    stw 0, 0x238(31)
    lwz 4, 0x98(31)
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80152A40
    cmpwi 0, 0x3
    .4byte 0x408209A8 # bne .L_801533E4
L_80152A40:
    lwz 0, 0x258(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_80152A58
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80152A60
L_80152A58:
    li 0, 0x6
    stw 0, 0x238(31)
L_80152A60:
    lwz 3, 0x98(31)
    lwz 0, 0x258(31)
    slwi 3, 3, 2
    clrlwi 0, 0, 30
    add 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x4800096C # b .L_801533E4
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x534c
    mr 4, 3
    addi 3, 6, 0x5234
    addi 5, 1, 0x12c
    li 6, -0x1
    bl fn_801542AC
    mr 28, 3
    addi 25, 1, 0x12c
    li 26, 0x0
    .4byte 0x48000100 # b .L_80152BA8
L_80152AAC:
    lwz 3, 0x0(25)
    cmplwi 3, 0x0
    .4byte 0x418200EC # beq .L_80152BA0
    mr 24, 3
    mr 27, 3
    bl fn_801544AC
    lwz 0, 0x2a4(31)
    cmpw 0, 3
    .4byte 0x408200D4 # bne .L_80152BA0
    mr 3, 27
    bl fn_8015449C
    mr 3, 24
    bl fn_801545E8
    stw 3, 0x2a4(31)
    mr 3, 24
    bl fn_801544C8
    cmplwi 3, 0x1
    .4byte 0x41820014 # beq .L_80152B04
    mr 3, 24
    bl fn_801544C8
    cmplwi 3, 0x3
    .4byte 0x4082000C # bne .L_80152B0C
L_80152B04:
    li 0, 0x1
    stw 0, 0x2a8(31)
L_80152B0C:
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x4082000C # bne .L_80152B28
    li 0, 0xb
    stw 0, 0x230(31)
L_80152B28:
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x4180001C # blt .L_80152B4C
    cmplwi 0, 0x9
    .4byte 0x41810014 # bgt .L_80152B4C
    li 0, 0x10
    mr 3, 27
    stw 0, 0x230(31)
    bl fn_80154490
L_80152B4C:
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80152B60
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_80152B88
L_80152B60:
    bl fn_80154744
    .4byte 0xC002A33C # lfs f0, lbl_8053D2DC@sda21(r0)
    li 0, 0x11
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 3, 3, 0x3c
    stw 3, 0x238(31)
    stw 0, 0x230(31)
L_80152B88:
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x408209F8 # bne .L_80153588
    li 0, 0xc
    stw 0, 0x230(31)
    .4byte 0x480009EC # b .L_80153588
L_80152BA0:
    addi 25, 25, 0x4
    addi 26, 26, 0x1
L_80152BA8:
    cmpw 26, 28
    .4byte 0x4180FF00 # blt .L_80152AAC
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x3
    .4byte 0x41800820 # blt .L_801533E4
    li 4, 0x0
    li 3, -0x1
    stw 4, 0x25c(31)
    li 0, 0x1
    stw 3, 0x2a4(31)
    sth 4, 0x94(31)
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x408207F8 # bne .L_801533E4
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x480007EC # b .L_801533E4
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x6a
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_80152C88
    lwz 0, 0x27c(31)
    cmpwi 0, 0x3
    .4byte 0x41820064 # beq .L_80152C88
    lwz 4, 0x258(31)
    addi 3, 30, 0xc8
    addi 0, 4, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 29
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80152C68
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_80152C88
L_80152C68:
    lwz 0, 0x258(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_80152C80
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80152C88
L_80152C80:
    li 0, 0x6
    stw 0, 0x238(31)
L_80152C88:
    lwz 4, 0x98(31)
    addi 3, 30, 0x48
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80152CBC
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_80152CD4
L_80152CBC:
    lwz 3, 0x98(31)
    lwz 0, 0x258(31)
    slwi 3, 3, 2
    clrlwi 0, 0, 30
    add 0, 3, 0
    stw 0, 0x274(31)
L_80152CD4:
    lwz 0, 0x2a4(31)
    cmpwi 0, -0x2
    .4byte 0x41820010 # beq .L_80152CEC
    lwz 0, 0x27c(31)
    cmpwi 0, 0x2
    .4byte 0x40820094 # bne .L_80152D7C
L_80152CEC:
    li 0, 0x0
    li 4, 0x1
    stw 0, 0x258(31)
    stw 0, 0x25c(31)
    stw 0, 0x260(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stw 4, 0x280(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x4082001C # bne .L_80152D34
    lis 3, 0x6
    li 0, 0xb
    addi 3, 3, 0x2209
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x48000034 # b .L_80152D64
L_80152D34:
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80152D54
    lis 3, 0x1
    li 0, 0xc
    addi 3, 3, 0x2205
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x48000014 # b .L_80152D64
L_80152D54:
    lis 3, 0x1
    addi 0, 3, 0x2205
    stw 0, 0xb0(31)
    stw 4, 0x230(31)
L_80152D64:
    li 0, 0x0
    mr 3, 31
    sth 0, 0x94(31)
    li 4, 0x1
    bl fn_80154614
    .4byte 0x4800066C # b .L_801533E4
L_80152D7C:
    addi 3, 1, 0x78
    addi 4, 31, 0x80
    bl fn_801546F4
    lfs 1, 0xc(31)
    addi 3, 1, 0x18
    lfs 2, 0x10(31)
    bl fn_801546E8
    mr 4, 3
    addi 3, 1, 0x40
    bl fn_8015457C
    addi 3, 1, 0x78
    addi 4, 1, 0x40
    bl fn_80154558
    addi 3, 1, 0x80
    addi 4, 1, 0x40
    bl fn_80154558
    mr 3, 31
    bl fn_801545E8
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    mr 4, 3
    mr 5, 28
    addi 3, 1, 0x78
    bl fn_80239914
    lwz 4, 0x27c(31)
    cmpwi 4, 0x0
    .4byte 0x4082008C # bne .L_80152E74
    lwz 3, 0x25c(31)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x4182007C # beq .L_80152E74
    addi 3, 31, 0x2ac
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80152E28
    li 3, 0x1
    li 0, 0x1e
    stw 3, 0x268(31)
    stw 0, 0x23c(31)
L_80152E28:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408205B4 # bne .L_801533E4
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80152E58
    lwz 3, 0x98(31)
    li 0, 0x1
    xori 3, 3, 0x2
    stw 3, 0x98(31)
    stw 0, 0x260(31)
    .4byte 0x48000014 # b .L_80152E68
L_80152E58:
    lwz 3, 0x25c(31)
    li 0, 0x0
    stw 3, 0x98(31)
    stw 0, 0x260(31)
L_80152E68:
    li 0, 0xa
    stw 0, 0x23c(31)
    .4byte 0x48000574 # b .L_801533E4
L_80152E74:
    cmpwi 4, 0x1
    .4byte 0x40820094 # bne .L_80152F0C
    lwz 3, 0x25c(31)
    lwz 0, 0x98(31)
    xori 3, 3, 0x1
    cmpw 3, 0
    .4byte 0x41820080 # beq .L_80152F0C
    addi 3, 31, 0x2ac
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80152EBC
    li 3, 0x0
    li 0, 0x1e
    stw 3, 0x268(31)
    stw 0, 0x23c(31)
L_80152EBC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820520 # bne .L_801533E4
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80152EEC
    lwz 3, 0x98(31)
    li 0, 0x1
    xori 3, 3, 0x2
    stw 3, 0x98(31)
    stw 0, 0x260(31)
    .4byte 0x48000018 # b .L_80152F00
L_80152EEC:
    lwz 3, 0x25c(31)
    li 0, 0x0
    xori 3, 3, 0x1
    stw 3, 0x98(31)
    stw 0, 0x260(31)
L_80152F00:
    li 0, 0xa
    stw 0, 0x23c(31)
    .4byte 0x480004DC # b .L_801533E4
L_80152F0C:
    cmpwi 4, 0x3
    .4byte 0x40820018 # bne .L_80152F28
    addi 3, 31, 0x2ac
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0x480004C0 # b .L_801533E4
L_80152F28:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_80152F88
    .4byte 0x40800014 # bge .L_80152F48
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80152F54
    .4byte 0x4080002C # bge .L_80152F6C
    .4byte 0x480004A0 # b .L_801533E4
L_80152F48:
    cmpwi 0, 0x4
    .4byte 0x40800498 # bge .L_801533E4
    .4byte 0x48000050 # b .L_80152FA0
L_80152F54:
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 1, 0x290(31)
    fmr 3, 2
    bl fn_80154518
    .4byte 0x4800047C # b .L_801533E4
L_80152F6C:
    lfs 0, 0x290(31)
    addi 3, 31, 0x2ac
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    fneg 1, 0
    fmr 3, 2
    bl fn_80154518
    .4byte 0x48000460 # b .L_801533E4
L_80152F88:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 2, 0x290(31)
    fmr 3, 1
    bl fn_80154518
    .4byte 0x48000448 # b .L_801533E4
L_80152FA0:
    .4byte 0xC022A2B8 # lfs f1, lbl_8053D258@sda21(r0)
    addi 3, 31, 0x2ac
    lfs 0, 0x290(31)
    fmr 3, 1
    fneg 2, 0
    bl fn_80154518
    .4byte 0x4800042C # b .L_801533E4
    li 24, 0x0
L_80152FC0:
    mr 3, 24
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200CC # beq .L_80153098
    mr 3, 24
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408200BC # bne .L_80153098
    mr 3, 24
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x408200AC # bne .L_80153098
    mr 3, 24
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8015461C
    cmpw 3, 28
    .4byte 0x40820090 # bne .L_80153098
    mr 3, 24
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x40820080 # bne .L_80153098
    mr 3, 24
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 24
    lfs 0, 0xc(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fsubs 0, 0, 1
    fmuls 0, 0, 0
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002A340 # lfs f0, lbl_8053D2E0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800040 # bge .L_80153098
    li 0, 0x0
    addi 4, 30, 0x24c
    stw 0, 0x258(31)
    addi 3, 30, 0x228
    li 0, 0x12
    lwz 5, 0x258(31)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x238(31)
    lwz 4, 0x258(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801530A4
L_80153098:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FF20 # blt .L_80152FC0
L_801530A4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820338 # bne .L_801533E4
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 30
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801530F8
    bl fn_80154744
    .4byte 0xC002A33C # lfs f0, lbl_8053D2DC@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    addi 0, 3, 0x3c
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80153100
L_801530F8:
    li 0, 0x2
    stw 0, 0x238(31)
L_80153100:
    lwz 3, 0x258(31)
    addi 0, 3, 0x10
    stw 0, 0x274(31)
    .4byte 0x480002D8 # b .L_801533E4
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408202CC # bne .L_801533E4
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x8
    .4byte 0x40810108 # ble .L_80153238
    lis 3, 0x1
    li 0, 0x0
    addi 4, 3, 0x2205
    mr 3, 31
    stw 4, 0xb0(31)
    li 4, 0x1
    stw 0, 0x258(31)
    stw 0, 0x238(31)
    bl fn_80154614
    lwz 0, 0x90(31)
    cmplwi 0, 0x6
    .4byte 0x4082001C # bne .L_8015317C
    lis 3, 0x6
    li 0, 0xb
    addi 3, 3, 0x2209
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x480000A0 # b .L_80153218
L_8015317C:
    lis 3, 0x1
    li 0, 0x12c
    addi 3, 3, 0x2205
    stw 3, 0xb0(31)
    stw 0, 0x23c(31)
    bl fn_80154744
    .4byte 0xC002A2FC # lfs f0, lbl_8053D29C@sda21(r0)
    lwz 0, 0x23c(31)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1140(1)
    lwz 3, 0x1144(1)
    add 0, 0, 3
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x278(31)
    lis 0, 0x4330
    stw 0, 0x1138(1)
    clrlwi 0, 3, 29
    .4byte 0xC842A348 # lfd f2, lbl_8053D2E8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x113c(1)
    lfd 0, 0x1138(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1130(1)
    lwz 3, 0x1134(1)
    addi 0, 3, 0x14
    stw 0, 0x240(31)
    bl fn_80154744
    .4byte 0xC002A2CC # lfs f0, lbl_8053D26C@sda21(r0)
    li 0, 0x6
    .4byte 0xC042A2C8 # lfs f2, lbl_8053D268@sda21(r0)
    fmuls 1, 0, 1
    lfs 0, 0x290(31)
    fmadds 0, 2, 0, 1
    stfs 0, 0x28c(31)
    stw 0, 0x230(31)
L_80153218:
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x418001C4 # blt .L_801533E4
    cmplwi 0, 0x9
    .4byte 0x418101BC # bgt .L_801533E4
    li 0, 0x10
    stw 0, 0x230(31)
    .4byte 0x480001B0 # b .L_801533E4
L_80153238:
    slwi 0, 0, 2
    addi 3, 30, 0x24c
    lwzx 0, 3, 0
    addi 3, 30, 0x228
    stw 0, 0x238(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x48000188 # b .L_801533E4
    li 0, 0x8
    addi 6, 30, 0x24c
    stw 0, 0x258(31)
    addi 5, 30, 0x228
    mr 3, 31
    li 4, 0x0
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 6, 0
    stw 0, 0x238(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    stw 0, 0x274(31)
    bl fn_80154614
    lis 3, 0xa04
    li 0, 0x14
    addi 3, 3, 0x2004
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082012C # bne .L_801533E4
    lwz 3, 0x258(31)
    subi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x408000F0 # bge .L_801533C0
    li 0, 0x0
    mr 3, 31
    stw 0, 0x238(31)
    stw 0, 0x258(31)
    bl fn_8015461C
    lis 6, 0x4842
    mr 4, 3
    addi 3, 6, 0x4d42
    addi 5, 31, 0xc
    li 6, 0x7
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    mr 3, 31
    bl fn_801F3668
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x40820050 # bne .L_80153368
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x5255
    mr 4, 3
    addi 3, 6, 0x5059
    addi 5, 31, 0xc
    lis 6, 0x3
    bl fn_80154248
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x3d9
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000050 # b .L_801533B4
L_80153368:
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x3
    lis 7, 0x5255
    mr 4, 3
    addi 5, 31, 0xc
    addi 3, 7, 0x5059
    addi 6, 6, 0x4
    bl fn_80154248
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2C8 # lfs f1, lbl_8053D268@sda21(r0)
    li 5, 0x3d9
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801533B4:
    li 0, 0x0
    stw 0, 0x288(31)
    .4byte 0x48000028 # b .L_801533E4
L_801533C0:
    slwi 0, 0, 2
    addi 3, 30, 0x24c
    lwzx 0, 3, 0
    addi 3, 30, 0x228
    stw 0, 0x238(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
L_801533E4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801533F8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801533F8:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015340C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8015340C:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80153420
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80153420:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80153434
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80153434:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80153448
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80153448:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015345C
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_8015345C:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80153470
    subi 0, 3, 0x1
    stw 0, 0x250(31)
L_80153470:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80153484
    subi 0, 3, 0x1
    stw 0, 0x254(31)
L_80153484:
    lwz 3, 0x230(31)
    cmpwi 3, 0xe
    .4byte 0x418200FC # beq .L_80153588
    subi 0, 3, 0x4
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_801534A4
    cmpwi 3, 0x8
    .4byte 0x408200E8 # bne .L_80153588
L_801534A4:
    clrlwi. 0, 29, 24
    .4byte 0x4182000C # beq .L_801534B4
    cmpwi 3, 0x8
    .4byte 0x418200D8 # beq .L_80153588
L_801534B4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408200CC # bne .L_80153588
    lwz 3, 0x258(31)
    lis 0, 0x4330
    addi 4, 30, 0xc8
    stw 0, 0x1140(1)
    addi 0, 3, 0x1
    .4byte 0xC822A348 # lfd f1, lbl_8053D2E8@sda21(r0)
    stw 0, 0x258(31)
    addi 3, 30, 0x48
    .4byte 0xC042A310 # lfs f2, lbl_8053D2B0@sda21(r0)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 29
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    xoris 0, 0, 0x8000
    stw 0, 0x1144(1)
    lfd 0, 0x1140(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1138(1)
    lwz 0, 0x113c(1)
    stw 0, 0x238(31)
    lwz 4, 0x98(31)
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80153550
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_80153588
L_80153550:
    lwz 0, 0x258(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_80153568
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80153570
L_80153568:
    li 0, 0x6
    stw 0, 0x238(31)
L_80153570:
    lwz 3, 0x98(31)
    lwz 0, 0x258(31)
    slwi 3, 3, 2
    clrlwi 0, 0, 30
    add 0, 3, 0
    stw 0, 0x274(31)
L_80153588:
    li 0, 0x1188
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x1180(1)
    li 0, 0x1178
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x1170(1)
    lmw 24, 0x1150(1)
    lwz 0, 0x1194(1)
    mtlr 0
    addi 1, 1, 0x1190
    blr

