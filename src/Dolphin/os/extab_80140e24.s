# Dispatch-cross-check bundle - 3 real FourCC actor vtable bodies
# (ctors already landed: fn_80142400, fn_80143650, fn_80143F10 - 3
# sinit entries for 3 dispatch-confirmed actor dtors, matching
# fn_80140E24/fn_80142624/fn_80143874 territory) plus shared helper
# functions, landed as ONE byte-contiguous 15-function, 13,072-byte
# Track-A bundle (0x80140E24-0x80144134). Found+verified via
# spanwalk.py (full contiguity confirmed, stopping exactly at the
# pre-existing extab_80144134.s boundary) and resolvefiles.py (1
# fused-dump function). .ctors placement (0x8045BF08-0x8045BF14)
# found by direct whole-table scan, independently re-verified after
# an earlier same-session automated-scan false-positive was caught
# (see project_fsa_dispatch_crosscheck_discovery.md).

.section extab, "a"
.balign 4
.global etb_80006C4C
etb_80006C4C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006C4C, 8

.global etb_80006C54
etb_80006C54:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006C54, 8

.global etb_80006C5C
etb_80006C5C:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80006C5C, 8

.global etb_80006C64
etb_80006C64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006C64, 8

.global etb_80006C6C
etb_80006C6C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006C6C, 8

.global etb_80006C74
etb_80006C74:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006C74, 8

.global etb_80006C7C
etb_80006C7C:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80006C7C, 8

.global etb_80006C84
etb_80006C84:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006C84, 8

.global etb_80006C8C
etb_80006C8C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006C8C, 8

.global etb_80006C94
etb_80006C94:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006C94, 8

.global etb_80006C9C
etb_80006C9C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006C9C, 8

.global etb_80006CA4
etb_80006CA4:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80006CA4, 8

.global etb_80006CAC
etb_80006CAC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006CAC, 8

.global etb_80006CB4
etb_80006CB4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006CB4, 8

.section extabindex, "a"
.balign 4
.global eti_80013600
eti_80013600:
    .4byte fn_80140E24
    .4byte 0x00000060
    .4byte etb_80006C4C
.size eti_80013600, 12

.global eti_8001360C
eti_8001360C:
    .4byte fn_80140E84
    .4byte 0x000001E0
    .4byte etb_80006C54
.size eti_8001360C, 12

.global eti_80013618
eti_80013618:
    .4byte fn_80141064
    .4byte 0x000011C0
    .4byte etb_80006C5C
.size eti_80013618, 12

.global eti_80013624
eti_80013624:
    .4byte fn_80142400
    .4byte 0x00000224
    .4byte etb_80006C64
.size eti_80013624, 12

.global eti_80013630
eti_80013630:
    .4byte fn_80142624
    .4byte 0x00000060
    .4byte etb_80006C6C
.size eti_80013630, 12

.global eti_8001363C
eti_8001363C:
    .4byte fn_80142684
    .4byte 0x000002A8
    .4byte etb_80006C74
.size eti_8001363C, 12

.global eti_80013648
eti_80013648:
    .4byte fn_8014292C
    .4byte 0x00000A04
    .4byte etb_80006C7C
.size eti_80013648, 12

.global eti_80013654
eti_80013654:
    .4byte fn_80143330
    .4byte 0x00000320
    .4byte etb_80006C84
.size eti_80013654, 12

.global eti_80013660
eti_80013660:
    .4byte fn_80143650
    .4byte 0x00000224
    .4byte etb_80006C8C
.size eti_80013660, 12

.global eti_8001366C
eti_8001366C:
    .4byte fn_80143874
    .4byte 0x00000060
    .4byte etb_80006C94
.size eti_8001366C, 12

.global eti_80013678
eti_80013678:
    .4byte fn_801438D4
    .4byte 0x00000040
    .4byte etb_80006C9C
.size eti_80013678, 12

.global eti_80013684
eti_80013684:
    .4byte fn_80143914
    .4byte 0x000004C4
    .4byte etb_80006CA4
.size eti_80013684, 12

.global eti_80013690
eti_80013690:
    .4byte fn_80143DD8
    .4byte 0x00000138
    .4byte etb_80006CAC
.size eti_80013690, 12

.global eti_8001369C
eti_8001369C:
    .4byte fn_80143F10
    .4byte 0x00000224
    .4byte etb_80006CB4
.size eti_8001369C, 12

.text
.balign 4
.global fn_80140E24
.global fn_80140E84
.global fn_80141064
.global fn_80142224
.global fn_80142400
.global fn_80142624
.global fn_80142684
.global fn_8014292C
.global fn_80143330
.global fn_80143650
.global fn_80143874
.global fn_801438D4
.global fn_80143914
.global fn_80143DD8
.global fn_80143F10

fn_80140E24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80140E68
    lis 5, lbl_8049F260@ha
    li 4, 0x0
    addi 0, 5, lbl_8049F260@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80140E68
    mr 3, 30
    bl dtor_80084580
L_80140E68:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80140E84:
    stwu 1, -0x80(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 10, 1, 0x38
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80140F08
L_80140EA8:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_80140F08:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80140EA8
    li 5, 0x1
    li 6, 0x0
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    li 9, -0x1
    stb 5, 0x58(1)
    li 4, 0x3
    li 0, 0x2
    .4byte 0xC0229F04 # lfs f1, lbl_8053CEA4@sda21(r0)
    stw 9, 0x48(1)
    li 7, 0x0
    li 8, 0x0
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 9, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    stb 6, 0x58(1)
    lwz 0, 0x31c(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80140FB0
    li 8, 0x1
    li 7, 0x3
L_80140FB0:
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    addi 0, 1, 0x8
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 1, 0x30(1)
    stw 0, 0x50(1)
    lhz 4, 0x94(3)
    cmplwi 4, 0x3
    .4byte 0x4182001C # beq .L_80141004
    subi 0, 4, 0x4
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80141004
    cmplwi 4, 0x7
    .4byte 0x40820030 # bne .L_80141030
L_80141004:
    .4byte 0xC0229F04 # lfs f1, lbl_8053CEA4@sda21(r0)
    lis 4, lbl_80465AC8@ha
    lwz 5, 0x318(3)
    addi 4, 4, lbl_80465AC8@l
    fmr 2, 1
    addi 6, 1, 0x38
    addi 5, 5, 0x444
    li 7, 0x3
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000028 # b .L_80141054
L_80141030:
    .4byte 0xC0229F04 # lfs f1, lbl_8053CEA4@sda21(r0)
    lis 4, lbl_80465ADC@ha
    lwz 5, 0x318(3)
    addi 4, 4, lbl_80465ADC@l
    fmr 2, 1
    addi 6, 1, 0x38
    addi 5, 5, 0x152
    li 9, 0x0
    bl fn_801F02BC
L_80141054:
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80141064:
    stwu 1, -0x1130(1)
    mflr 0
    stw 0, 0x1134(1)
    li 0, 0x1128
    stfd 31, 0x1120(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x1118
    stfd 30, 0x1110(1)
    psq_stx 30, 1, 0, 0, 0
    li 0, 0x1108
    stfd 29, 0x1100(1)
    psq_stx 29, 1, 0, 0, 0
    stw 31, 0x10fc(1)
    stw 30, 0x10f8(1)
    stw 29, 0x10f4(1)
    mr 31, 3
    li 4, 0x1
    lfs 3, 0x60(3)
    stfs 3, 0xb4(1)
    lfs 2, 0x64(3)
    stfs 2, 0xb8(1)
    lfs 1, 0x68(3)
    stfs 1, 0xbc(1)
    lfs 0, 0x6c(3)
    stfs 0, 0xc0(1)
    lfs 5, 0x10(3)
    lfs 4, 0xc(3)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0xb8(1)
    stfs 3, 0xb4(1)
    stfs 1, 0xbc(1)
    stfs 0, 0xc0(1)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80141110
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480010D8 # b .L_801421E4
L_80141110:
    lwz 0, 0x2f8(31)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_80141124
    cmpwi 0, 0x5
    .4byte 0x40820148 # bne .L_80141268
L_80141124:
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182006C # beq .L_80141198
    cmplwi 0, 0x5
    .4byte 0x41820064 # beq .L_80141198
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820124 # beq .L_80141268
    lwz 0, 0x2f8(31)
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_80141164
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x318(31)
    stw 0, 0x2f8(31)
L_80141164:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_80141184
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xa1
    li 5, 0x0
    bl fn_801F0E34
L_80141184:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48001050 # b .L_801421E4
L_80141198:
    li 30, 0x0
L_8014119C:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x418000A4 # blt .L_8014125C
    lfs 3, 0xbc(1)
    addi 4, 1, 0x1c
    lfs 1, 0xb4(1)
    lfs 4, 0xc0(1)
    lfs 0, 0xb8(1)
    fsubs 1, 1, 3
    .4byte 0xC0429F08 # lfs f2, lbl_8053CEA8@sda21(r0)
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8014125C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229F04 # lfs f1, lbl_8053CEA4@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229F04 # lfs f1, lbl_8053CEA4@sda21(r0)
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
L_8014125C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF38 # blt .L_8014119C
L_80141268:
    lwz 0, 0x2f8(31)
    cmpwi 0, 0x3
    .4byte 0x418204F4 # beq .L_80141764
    .4byte 0x4080001C # bge .L_80141290
    cmpwi 0, 0x1
    .4byte 0x4182016C # beq .L_801413E8
    .4byte 0x40800234 # bge .L_801414B4
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_801412A0
    .4byte 0x48000F58 # b .L_801421E4
L_80141290:
    cmpwi 0, 0x5
    .4byte 0x41820D90 # beq .L_80142024
    .4byte 0x40800F4C # bge .L_801421E4
    .4byte 0x48000D54 # b .L_80141FF0
L_801412A0:
    lwz 4, 0x4(31)
    addi 3, 1, 0xb4
    lwz 5, 0x198(31)
    bl fn_80239914
    mr 3, 31
    bl fn_801EF510
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x4082005C # bne .L_8014131C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820F08 # beq .L_801421E4
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xa0
    li 5, 0x0
    bl fn_801F0E34
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80141308
    li 0, 0x2
    stw 0, 0xbc(31)
L_80141308:
    li 3, 0x1
    li 0, 0x3c
    stw 3, 0x2f8(31)
    stw 0, 0x2fc(31)
    .4byte 0x48000ECC # b .L_801421E4
L_8014131C:
    li 29, 0x0
L_80141320:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_801413D8
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820098 # bne .L_801413D8
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    psq_l 0, 0xc(31), 0, 0
    lhz 0, 0x94(31)
    ps_sub 2, 1, 0
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x14(31), 1, 0
    cmplwi 0, 0x3
    .4byte 0xC0629F0C # lfs f3, lbl_8053CEAC@sda21(r0)
    ps_sub 0, 1, 0
    psq_st 2, 0xa8(1), 0, 0
    psq_st 0, 0xb0(1), 1, 0
    .4byte 0x40820008 # bne .L_80141380
    .4byte 0xC0629F10 # lfs f3, lbl_8053CEB0@sda21(r0)
L_80141380:
    psq_l 1, 0xa8(1), 0, 0
    lfs 31, 0xb0(1)
    ps_mul 1, 1, 1
    ps_madd 0, 31, 31, 1
    ps_sum0 0, 0, 1, 1
    fcmpo cr0, 0, 3
    .4byte 0x40800040 # bge .L_801413D8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xa0
    li 5, 0x0
    bl fn_801F0E34
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_801413C4
    li 0, 0x2
    stw 0, 0xbc(31)
L_801413C4:
    li 3, 0x1
    li 0, 0x3c
    stw 3, 0x2f8(31)
    stw 0, 0x2fc(31)
    .4byte 0x48000E10 # b .L_801421E4
L_801413D8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF40 # blt .L_80141320
    .4byte 0x48000E00 # b .L_801421E4
L_801413E8:
    lwz 4, 0x2fc(31)
    addi 3, 1, 0xb4
    subi 0, 4, 0x1
    stw 0, 0x2fc(31)
    lwz 4, 0x60(31)
    lwz 0, 0x64(31)
    stw 4, 0xb4(1)
    stw 0, 0xb8(1)
    lfs 3, 0xb4(1)
    lwz 4, 0x68(31)
    lwz 0, 0x6c(31)
    lfs 2, 0xb8(1)
    stw 4, 0xbc(1)
    stw 0, 0xc0(1)
    lfs 1, 0xbc(1)
    lfs 4, 0xc(31)
    lfs 0, 0xc0(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0xb4(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0xbc(1)
    fadds 0, 0, 3
    stfs 2, 0xb8(1)
    stfs 0, 0xc0(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 0, 0x2fc(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820010 # bne .L_80141474
    lwz 0, 0x318(31)
    xori 0, 0, 0x1
    stw 0, 0x318(31)
L_80141474:
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x0
    .4byte 0x40800D68 # bge .L_801421E4
    li 0, 0x1
    stw 0, 0xb8(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x41820010 # beq .L_801414A0
    lis 3, 0x1
    addi 0, 3, 0x2205
    stw 0, 0xb0(31)
L_801414A0:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x318(31)
    stw 0, 0x2f8(31)
    .4byte 0x48000D34 # b .L_801421E4
L_801414B4:
    lwz 3, 0x300(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801414C8
    subi 0, 3, 0x1
    stw 0, 0x300(31)
L_801414C8:
    lfs 2, 0x44(31)
    .4byte 0xC0229F14 # lfs f1, lbl_8053CEB4@sda21(r0)
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x44(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820234 # bne .L_8014173C
    lfs 1, 0xc(31)
    .4byte 0xC0029F18 # lfs f0, lbl_8053CEB8@sda21(r0)
    stfs 1, 0x9c(1)
    lfs 1, 0x10(31)
    stfs 1, 0xa0(1)
    fadds 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0xa4(1)
    stfs 0, 0xa0(1)
    lwz 0, 0x304(31)
    cmpwi 0, 0x0
    .4byte 0x41820080 # beq .L_801415B8
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80141550
    cmplwi 0, 0x4
    .4byte 0x40820030 # bne .L_8014157C
L_80141550:
    lwz 3, 0x4(31)
    addi 4, 1, 0x9c
    .4byte 0xC0229F1C # lfs f1, lbl_8053CEBC@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_801415A4
L_8014157C:
    lwz 3, 0x4(31)
    addi 4, 1, 0x9c
    .4byte 0xC0229F04 # lfs f1, lbl_8053CEA4@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801415A4:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x7
    li 5, 0x0
    bl fn_801F0E34
L_801415B8:
    li 0, 0x1
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stw 0, 0x304(31)
    stfs 0, 0x14(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_801415DC
    cmplwi 0, 0x4
    .4byte 0x4082011C # bne .L_801416F4
L_801415DC:
    li 0, -0x1
    mr 3, 31
    stw 0, 0x18(1)
    addi 6, 1, 0x18
    addi 8, 1, 0x14
    li 5, 0x0
    stw 0, 0x14(1)
    li 7, 0x0
    li 9, 0x0
    li 10, 0x0
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lwz 3, 0x14(1)
    li 29, 0x0
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80141624
    li 29, 0x1
    .4byte 0x48000018 # b .L_80141638
L_80141624:
    bl fn_80230CFC
    lwz 0, 0x18(1)
    cmpw 0, 3
    .4byte 0x41820008 # beq .L_80141638
    li 29, 0x1
L_80141638:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x408200B4 # bne .L_801416F4
    li 0, 0x0
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stw 0, 0x304(31)
    addi 3, 1, 0xb4
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 4, 0x60(31)
    lwz 0, 0x64(31)
    stw 4, 0xb4(1)
    stw 0, 0xb8(1)
    lfs 3, 0xb4(1)
    lwz 4, 0x68(31)
    lwz 0, 0x6c(31)
    lfs 2, 0xb8(1)
    stw 4, 0xbc(1)
    stw 0, 0xc0(1)
    lfs 1, 0xbc(1)
    lfs 4, 0xc(31)
    lfs 0, 0xc0(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0xb4(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0xbc(1)
    fadds 0, 0, 3
    stfs 2, 0xb8(1)
    stfs 0, 0xc0(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    mr 3, 31
    bl fn_801EF510
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000AF4 # b .L_801421E4
L_801416F4:
    mr 3, 31
    addi 4, 1, 0x9c
    li 5, 0x0
    li 6, 0x0
    bl fn_801EE8F4
    .4byte 0xC3E29F08 # lfs f31, lbl_8053CEA8@sda21(r0)
    psq_l 0, 0x9c(1), 0, 0
    psq_l 1, 0xa4(1), 1, 0
    ps_muls0 2, 0, 31
    .4byte 0xC0029F1C # lfs f0, lbl_8053CEBC@sda21(r0)
    ps_muls0 1, 1, 31
    psq_st 2, 0x9c(1), 0, 0
    psq_st 1, 0xa4(1), 1, 0
    lfs 1, 0x9c(1)
    stfs 1, 0x3c(31)
    lfs 1, 0xa0(1)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_8014173C:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000A84 # b .L_801421E4
L_80141764:
    lwz 30, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 30
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    mr 3, 31
    bl fn_801EF510
    lhz 0, 0x94(31)
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_801417A4
    cmpwi 0, 0x7
    .4byte 0x40820070 # bne .L_80141810
L_801417A4:
    lwz 4, 0x60(31)
    addi 3, 1, 0xb4
    lwz 0, 0x64(31)
    stw 4, 0xb4(1)
    stw 0, 0xb8(1)
    lfs 3, 0xb4(1)
    lwz 4, 0x68(31)
    lwz 0, 0x6c(31)
    lfs 2, 0xb8(1)
    stw 4, 0xbc(1)
    stw 0, 0xc0(1)
    lfs 1, 0xbc(1)
    lfs 4, 0xc(31)
    lfs 0, 0xc0(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0xb4(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0xbc(1)
    fadds 0, 0, 3
    stfs 2, 0xb8(1)
    stfs 0, 0xc0(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    .4byte 0x480009D8 # b .L_801421E4
L_80141810:
    addi 3, 31, 0xc
    addi 4, 31, 0x320
    bl PSVECDistance
    .4byte 0xC0029F20 # lfs f0, lbl_8053CEC0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820110 # bne .L_80141938
    lfs 0, 0xc(31)
    lis 0, 0x4330
    stw 0, 0x10d0(1)
    addi 3, 1, 0x8c
    fctiwz 1, 0
    .4byte 0xC8429F50 # lfd f2, lbl_8053CEF0@sda21(r0)
    stw 0, 0x10e0(1)
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stfd 1, 0x10c8(1)
    lwz 4, 0x10cc(1)
    addi 0, 4, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x10d4(1)
    lfd 1, 0x10d0(1)
    fsubs 1, 1, 2
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fctiwz 1, 1
    stfd 1, 0x10d8(1)
    lwz 4, 0x10dc(1)
    addi 0, 4, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x10e4(1)
    lfd 1, 0x10e0(1)
    fsubs 1, 1, 2
    stfs 1, 0x10(31)
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    psq_st 2, 0x320(31), 0, 0
    stfs 1, 0x328(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    lfs 1, 0x60(31)
    stfs 1, 0x8c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x90(1)
    lfs 2, 0x68(31)
    stfs 2, 0x94(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x98(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x94(1)
    fadds 0, 3, 2
    stfs 1, 0x90(1)
    stfs 0, 0x98(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    psq_l 1, 0xc(31), 0, 0
    li 0, 0x8
    lfs 0, 0x14(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    stw 0, 0x300(31)
    .4byte 0x480008B0 # b .L_801421E4
L_80141938:
    lfs 0, 0x3c(31)
    .4byte 0xC0229F00 # lfs f1, lbl_8053CEA0@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_80141954
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820138 # beq .L_80141A88
L_80141954:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_80141A88
    lfs 0, 0xc(31)
    lis 0, 0x4330
    stw 0, 0x10d8(1)
    addi 3, 1, 0x7c
    fctiwz 1, 0
    .4byte 0xC8429F50 # lfd f2, lbl_8053CEF0@sda21(r0)
    stw 0, 0x10c8(1)
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stfd 1, 0x10e0(1)
    lwz 4, 0x10e4(1)
    addi 0, 4, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x10dc(1)
    lfd 1, 0x10d8(1)
    fsubs 1, 1, 2
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fctiwz 1, 1
    stfd 1, 0x10d0(1)
    lwz 4, 0x10d4(1)
    addi 0, 4, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x10cc(1)
    lfd 1, 0x10c8(1)
    fsubs 1, 1, 2
    stfs 1, 0x10(31)
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    psq_st 2, 0x320(31), 0, 0
    stfs 1, 0x328(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    lfs 1, 0x60(31)
    stfs 1, 0x7c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x80(1)
    lfs 2, 0x68(31)
    stfs 2, 0x84(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x88(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x7c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x84(1)
    fadds 0, 3, 2
    stfs 1, 0x80(1)
    stfs 0, 0x88(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    psq_l 2, 0xc(31), 0, 0
    li 0, 0x8
    lfs 1, 0x14(31)
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    psq_st 2, 0x18(31), 0, 0
    stfs 1, 0x20(31)
    stw 0, 0x300(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    .4byte 0x48000374 # b .L_80141DF8
L_80141A88:
    psq_l 5, 0x3c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 4, 0x44(31)
    ps_mul 7, 5, 5
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC0229F24 # lfs f1, lbl_8053CEC4@sda21(r0)
    ps_madd 6, 4, 4, 7
    lfs 0, lbl_80539D44@l(3)
    psq_st 3, 0x70(1), 0, 0
    fmuls 0, 1, 0
    ps_sum0 6, 6, 7, 7
    stfs 2, 0x78(1)
    psq_st 5, 0x64(1), 0, 0
    fcmpo cr0, 6, 0
    stfs 4, 0x6c(1)
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80141B24
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80141AE8
    fmr 31, 6
    .4byte 0x48000028 # b .L_80141B0C
L_80141AE8:
    frsqrte 3, 6
    .4byte 0xC0429F08 # lfs f2, lbl_8053CEA8@sda21(r0)
    .4byte 0xC0029F28 # lfs f0, lbl_8053CEC8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80141B0C:
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
L_80141B24:
    lwz 0, 0x314(31)
    cmpwi 0, 0x0
    .4byte 0x41800024 # blt .L_80141B50
    .4byte 0xC3C29F2C # lfs f30, lbl_8053CECC@sda21(r0)
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
    .4byte 0x48000040 # b .L_80141B8C
L_80141B50:
    lwz 0, 0x310(31)
    cmpwi 0, 0x0
    .4byte 0x41800024 # blt .L_80141B7C
    .4byte 0xC3C29F18 # lfs f30, lbl_8053CEB8@sda21(r0)
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
    .4byte 0x48000014 # b .L_80141B8C
L_80141B7C:
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_80141B8C:
    lfs 1, 0xc(31)
    addi 3, 31, 0xc
    lfs 0, 0x3c(31)
    li 5, 0x0
    lfs 3, 0x64(1)
    fadds 4, 1, 0
    lfs 1, 0x68(1)
    lfs 0, 0x6c(1)
    .4byte 0xC0429F08 # lfs f2, lbl_8053CEA8@sda21(r0)
    stfs 4, 0xc(31)
    lfs 5, 0x10(31)
    lfs 4, 0x40(31)
    fadds 4, 5, 4
    stfs 4, 0x10(31)
    stfs 3, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    lfs 3, 0xbc(1)
    lfs 1, 0xb4(1)
    lfs 4, 0xc0(1)
    lfs 0, 0xb8(1)
    fsubs 1, 1, 3
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    bl fn_802265DC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80141C24
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8f
    .4byte 0x40820018 # bne .L_80141C38
L_80141C24:
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    .4byte 0x4800018C # b .L_80141DC0
L_80141C38:
    lfs 0, 0x3c(31)
    .4byte 0xC0229F00 # lfs f1, lbl_8053CEA0@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_80141C54
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820170 # beq .L_80141DC0
L_80141C54:
    bl SpatialRegistry_GetBase
    lis 4, 0x414d
    lwz 5, 0x4(31)
    addi 4, 4, 0x4f53
    addi 6, 1, 0xc4
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0xc4
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810144 # ble .L_80141DC0
L_80141C80:
    lwz 5, 0x0(4)
    cmplwi 5, 0x0
    .4byte 0x41820130 # beq .L_80141DB8
    .4byte 0x4182012C # beq .L_80141DB8
    lwz 3, 0x198(5)
    lwz 0, 0x198(31)
    cmpw 3, 0
    .4byte 0x4182011C # beq .L_80141DB8
    lfs 1, 0x10(5)
    lfs 0, 0x10(31)
    lfs 2, 0xc(5)
    fsubs 3, 1, 0
    lfs 1, 0xc(31)
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80141D14
    frsqrte 1, 4
    .4byte 0xC8629F30 # lfd f3, lbl_8053CED0@sda21(r0)
    .4byte 0xC8429F38 # lfd f2, lbl_8053CED8@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80141D98
L_80141D14:
    .4byte 0xC8029F40 # lfd f0, lbl_8053CEE0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80141D2C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80141D98
L_80141D2C:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 5, 0xc(1)
    rlwinm 3, 5, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80141D54
    .4byte 0x40800040 # bge .L_80141D84
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80141D6C
    .4byte 0x48000034 # b .L_80141D84
L_80141D54:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_80141D64
    li 0, 0x1
    .4byte 0x48000028 # b .L_80141D88
L_80141D64:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80141D88
L_80141D6C:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_80141D7C
    li 0, 0x5
    .4byte 0x48000010 # b .L_80141D88
L_80141D7C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80141D88
L_80141D84:
    li 0, 0x4
L_80141D88:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80141D98
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80141D98:
    .4byte 0xC0029F18 # lfs f0, lbl_8053CEB8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800018 # bge .L_80141DB8
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    .4byte 0x4800000C # b .L_80141DC0
L_80141DB8:
    addi 4, 4, 0x4
    .4byte 0x4200FEC4 # bdnz .L_80141C80
L_80141DC0:
    lfs 0, 0x70(1)
    lfs 1, 0x74(1)
    stfs 0, 0xc(31)
    lfs 0, 0x78(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_80141DF8:
    lwz 0, 0x30c(31)
    cmpwi 0, 0x2
    .4byte 0x4080004C # bge .L_80141E4C
    lfs 0, 0x3c(31)
    .4byte 0xC0229F00 # lfs f1, lbl_8053CEA0@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_80141E20
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820030 # beq .L_80141E4C
L_80141E20:
    lwz 3, 0x30c(31)
    addi 0, 3, 0x1
    stw 0, 0x30c(31)
    lwz 0, 0x30c(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_80141E4C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
L_80141E4C:
    lfs 1, 0x60(31)
    addi 3, 1, 0x54
    stfs 1, 0x54(1)
    lfs 4, 0x64(31)
    stfs 4, 0x58(1)
    lfs 2, 0x68(31)
    stfs 2, 0x5c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x60(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x54(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x5c(1)
    fadds 0, 3, 2
    stfs 1, 0x58(1)
    stfs 0, 0x60(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x300(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_80141EBC
    subi 0, 3, 0x1
    stw 0, 0x300(31)
    .4byte 0x4800032C # b .L_801421E4
L_80141EBC:
    .4byte 0x40820328 # bne .L_801421E4
    psq_l 3, 0x3c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x44(31)
    ps_mul 3, 3, 3
    .4byte 0xC0229F24 # lfs f1, lbl_8053CEC4@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 29, 29, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x408202F8 # bne .L_801421E4
    lwz 4, 0x4(31)
    addi 3, 1, 0x54
    lwz 5, 0x198(31)
    li 29, -0x1
    bl fn_80239558
    stw 3, 0x310(31)
    lwz 3, 0x310(31)
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80141F28
    bl fn_80230CFC
    li 0, -0x1
    mr 29, 3
    stw 0, 0x314(31)
    .4byte 0x48000070 # b .L_80141F94
L_80141F28:
    lwz 4, 0x4(31)
    addi 3, 1, 0x54
    lwz 5, 0x198(31)
    bl fn_80239470
    stw 3, 0x314(31)
    lwz 0, 0x314(31)
    cmpwi 0, 0x0
    .4byte 0x41800050 # blt .L_80141F94
    li 0, -0x1
    stw 0, 0x310(31)
    lwz 3, 0x314(31)
    bl fn_80230CFC
    mr. 29, 3
    .4byte 0x4082000C # bne .L_80141F68
    li 29, 0x1
    .4byte 0x48000030 # b .L_80141F94
L_80141F68:
    cmpwi 29, 0x1
    .4byte 0x4082000C # bne .L_80141F78
    li 29, 0x0
    .4byte 0x48000020 # b .L_80141F94
L_80141F78:
    cmpwi 29, 0x2
    .4byte 0x4082000C # bne .L_80141F88
    li 29, 0x3
    .4byte 0x48000010 # b .L_80141F94
L_80141F88:
    cmpwi 29, 0x3
    .4byte 0x40820008 # bne .L_80141F94
    li 29, 0x2
L_80141F94:
    cmpwi 29, 0x0
    .4byte 0x4180024C # blt .L_801421E4
    cmpwi 29, 0x4
    .4byte 0x40800244 # bge .L_801421E4
    mulli 4, 29, 0xc
    lis 3, lbl_80465A98@ha
    li 0, 0x0
    addi 3, 3, lbl_80465A98@l
    stw 0, 0x30c(31)
    lfsx 0, 3, 4
    add 3, 3, 4
    stfs 0, 0x3c(31)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    lfs 0, 0xc(31)
    stfs 0, 0x320(31)
    lfs 0, 0x10(31)
    stfs 0, 0x324(31)
    lfs 0, 0x14(31)
    stfs 0, 0x328(31)
    .4byte 0x480001F8 # b .L_801421E4
L_80141FF0:
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x30
    lfs 0, 0x14(31)
    addi 3, 31, 0x230
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x38(1)
    lwz 4, 0x308(31)
    lwz 6, 0x4(31)
    bl fn_800FE3EC
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_801421E4
    li 0, 0x5
    stw 0, 0x2f8(31)
L_80142024:
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820038 # beq .L_80142064
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80142064
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000184 # b .L_801421E4
L_80142064:
    mr 3, 31
    bl fn_801EF510
    lfs 2, 0x44(31)
    .4byte 0xC0229F14 # lfs f1, lbl_8053CEB4@sda21(r0)
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x44(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200DC # bne .L_80142188
    stfs 0, 0x14(31)
    .4byte 0xC0029F18 # lfs f0, lbl_8053CEB8@sda21(r0)
    lfs 1, 0xc(31)
    stfs 1, 0x48(1)
    lfs 1, 0x10(31)
    stfs 1, 0x4c(1)
    fadds 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x50(1)
    stfs 0, 0x4c(1)
    lwz 0, 0x304(31)
    cmpwi 0, 0x0
    .4byte 0x41820040 # beq .L_80142120
    lwz 3, 0x4(31)
    addi 4, 1, 0x48
    .4byte 0xC0229F1C # lfs f1, lbl_8053CEBC@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x7
    li 5, 0x0
    bl fn_801F0E34
L_80142120:
    li 0, 0x1
    .4byte 0xC0029F00 # lfs f0, lbl_8053CEA0@sda21(r0)
    stw 0, 0x304(31)
    addi 4, 1, 0x24
    .4byte 0xC0229F48 # lfs f1, lbl_8053CEE8@sda21(r0)
    addi 3, 31, 0x230
    stfs 0, 0x3c(1)
    addi 5, 1, 0x3c
    addi 6, 1, 0x10
    addi 7, 1, 0x8
    stfs 0, 0x40(1)
    li 8, 0x200
    stfs 0, 0x44(1)
    lwz 0, 0x4(31)
    stw 0, 0x10(1)
    psq_l 2, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 2, 0x0(4), 0, 0
    stfs 0, 0x2c(1)
    bl fn_800FDEA0
    lfs 1, 0x3c(1)
    .4byte 0xC0029F1C # lfs f0, lbl_8053CEBC@sda21(r0)
    stfs 1, 0x3c(31)
    lfs 1, 0x40(1)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_80142188:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lis 4, 0x4c4e
    .4byte 0xC0229F24 # lfs f1, lbl_8053CEC4@sda21(r0)
    mr 3, 31
    li 5, -0x1
    addi 4, 4, 0x424d
    bl fn_801F8108
    mr. 29, 3
    .4byte 0x4182001C # beq .L_801421E4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801421E4
    bl fn_801BEDBC
L_801421E4:
    li 0, 0x1128
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x1120(1)
    li 0, 0x1118
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x1110(1)
    li 0, 0x1108
    psq_lx 29, 1, 0, 0, 0
    lfd 29, 0x1100(1)
    lwz 31, 0x10fc(1)
    lwz 30, 0x10f8(1)
    lwz 0, 0x1134(1)
    lwz 29, 0x10f4(1)
    mtlr 0
    addi 1, 1, 0x1130
    blr

fn_80142224:
    .4byte 0xC0829F58 # lfs f4, lbl_8053CEF8@sda21(r0)
    lis 4, 0xa04
    .4byte 0xC0629F5C # lfs f3, lbl_8053CEFC@sda21(r0)
    li 5, 0x0
    stfs 4, 0x60(3)
    addi 4, 4, 0x4
    .4byte 0xC0429F60 # lfs f2, lbl_8053CF00@sda21(r0)
    li 0, -0x1
    stfs 4, 0x64(3)
    .4byte 0xC0229F64 # lfs f1, lbl_8053CF04@sda21(r0)
    stfs 3, 0x68(3)
    .4byte 0xC0029F68 # lfs f0, lbl_8053CF08@sda21(r0)
    stfs 3, 0x6c(3)
    stfs 2, 0x70(3)
    stfs 1, 0x74(3)
    stfs 0, 0x78(3)
    stfs 0, 0x7c(3)
    stfs 4, 0x80(3)
    stfs 4, 0x84(3)
    stfs 3, 0x88(3)
    stfs 3, 0x8c(3)
    stw 5, 0x300(3)
    stw 5, 0x30c(3)
    stw 4, 0xb0(3)
    stw 0, 0x310(3)
    stw 0, 0x314(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 27
    stw 0, 0x31c(3)
    lwz 0, 0x31c(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801422BC
    stfs 2, 0x60(3)
    li 0, 0x3
    stfs 2, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 0, 0xc0(3)
L_801422BC:
    lwz 6, 0x90(3)
    li 5, 0x1
    li 4, 0x0
    li 0, 0x3
    clrlwi 6, 6, 28
    sth 6, 0x94(3)
    lwz 6, 0x90(3)
    extrwi 6, 6, 8, 16
    stw 6, 0x308(3)
    stw 5, 0x318(3)
    stw 4, 0x304(3)
    stw 0, 0xbc(3)
    lhz 4, 0x94(3)
    cmplwi 4, 0x3
    .4byte 0x4182001C # beq .L_80142310
    subi 0, 4, 0x4
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80142310
    cmplwi 4, 0x7
    .4byte 0x4082005C # bne .L_80142368
L_80142310:
    li 0, 0x3
    .4byte 0xC0229F6C # lfs f1, lbl_8053CF0C@sda21(r0)
    stw 0, 0xc0(3)
    .4byte 0xC0029F70 # lfs f0, lbl_8053CF10@sda21(r0)
    stfs 1, 0x60(3)
    .4byte 0xC0A29F74 # lfs f5, lbl_8053CF14@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC0829F78 # lfs f4, lbl_8053CF18@sda21(r0)
    stfs 5, 0x68(3)
    .4byte 0xC0629F64 # lfs f3, lbl_8053CF04@sda21(r0)
    stfs 4, 0x6c(3)
    .4byte 0xC0429F7C # lfs f2, lbl_8053CF1C@sda21(r0)
    stfs 1, 0x80(3)
    .4byte 0xC0229F80 # lfs f1, lbl_8053CF20@sda21(r0)
    stfs 0, 0x84(3)
    .4byte 0xC0029F18 # lfs f0, lbl_8053CEB8@sda21(r0)
    stfs 5, 0x88(3)
    stfs 4, 0x8c(3)
    stfs 3, 0x70(3)
    stfs 2, 0x74(3)
    stfs 1, 0x78(3)
    stfs 0, 0x7c(3)
L_80142368:
    li 0, 0x3
    stw 0, 0x2f8(3)
    lhz 0, 0x94(3)
    cmpwi 0, 0x4
    .4byte 0x41820034 # beq .L_801423AC
    .4byte 0x4080001C # bge .L_80142398
    cmpwi 0, 0x2
    .4byte 0x41820068 # beq .L_801423EC
    .4byte 0x4080005C # bge .L_801423E4
    cmpwi 0, 0x1
    .4byte 0x4080001C # bge .L_801423AC
    .4byte 0x48000058 # b .L_801423EC
L_80142398:
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_801423EC
    cmpwi 0, 0x6
    .4byte 0x40800008 # bge .L_801423AC
    .4byte 0x48000018 # b .L_801423C0
L_801423AC:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x196(3)
    stb 0, 0x1a8(3)
    blr
L_801423C0:
    li 5, 0x1
    li 4, 0x0
    stb 5, 0x196(3)
    li 0, 0x4
    stb 4, 0x1a8(3)
    stw 5, 0xb8(3)
    stw 4, 0x318(3)
    stw 0, 0x2f8(3)
    blr
L_801423E4:
    li 0, 0x1
    stb 0, 0x196(3)
L_801423EC:
    li 4, 0x1
    li 0, 0x0
    stw 4, 0xb8(3)
    stw 0, 0x2f8(3)
    blr

fn_80142400:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BEE50@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BEE50@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80142450
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80142450:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80142488
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80142488:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801424C0
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801424C0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801424F8
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801424F8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80142530
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80142530:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80142568
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80142568:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801425A0
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801425A0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801425D8
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801425D8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80142610
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80142610:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80142624:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80142668
    lis 5, lbl_8049F330@ha
    li 4, 0x0
    addi 0, 5, lbl_8049F330@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80142668
    mr 3, 30
    bl dtor_80084580
L_80142668:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80142684:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    lwz 0, 0x254(3)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_801426D0
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x41800024 # blt .L_801426D0
    cmplwi 0, 0x7
    .4byte 0x4181001C # bgt .L_801426D0
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182024C # beq .L_80142918
L_801426D0:
    lhz 0, 0x94(31)
    cmplwi 0, 0x8
    .4byte 0x41820240 # beq .L_80142918
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801426F0
    cmpwi 0, 0x0
    .4byte 0x4082022C # bne .L_80142918
L_801426F0:
    li 0, -0x1
    addi 9, 1, 0x40
    stw 0, 0x50(1)
    li 10, 0x0
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_80142768
L_80142708:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_80142768:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80142708
    li 9, 0x0
    li 8, 0x1
    li 10, -0x1
    li 7, 0x3
    li 4, 0x2
    li 0, 0x80
    stw 10, 0x50(1)
    addi 5, 31, 0xc
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 6, 1, 0x8
    stw 9, 0x54(1)
    .4byte 0xC0229F88 # lfs f1, lbl_8053CF28@sda21(r0)
    stw 9, 0x58(1)
    stb 9, 0x5c(1)
    stb 9, 0x5d(1)
    stb 9, 0x5e(1)
    stb 8, 0x5f(1)
    stb 8, 0x60(1)
    stb 9, 0x61(1)
    stb 9, 0x62(1)
    stb 9, 0x63(1)
    stb 9, 0x64(1)
    stb 9, 0x65(1)
    stb 8, 0x66(1)
    stw 7, 0x68(1)
    stb 8, 0x6c(1)
    stb 9, 0x6d(1)
    stb 9, 0x6e(1)
    stw 10, 0x70(1)
    stw 9, 0x74(1)
    stw 4, 0x78(1)
    stb 9, 0xc(1)
    lwz 4, 0x4(31)
    stb 9, 0xd(1)
    stb 9, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    lfs 0, 0x270(31)
    li 0, 0x9
    fctiwz 0, 0
    stw 0, 0x70(1)
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stb 0, 0x53(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80142844
    cmplwi 0, 0x7
    .4byte 0x408200B0 # bne .L_801428F0
L_80142844:
    lwz 5, 0x25c(31)
    .4byte 0xC0429F8C # lfs f2, lbl_8053CF2C@sda21(r0)
    cmpwi 5, 0x5
    .4byte 0x4081000C # ble .L_8014285C
    .4byte 0xC0429F90 # lfs f2, lbl_8053CF30@sda21(r0)
    subi 5, 5, 0x6
L_8014285C:
    .4byte 0xC0229F94 # lfs f1, lbl_8053CF34@sda21(r0)
    addi 7, 1, 0x10
    .4byte 0xC0029F90 # lfs f0, lbl_8053CF30@sda21(r0)
    lis 3, lbl_8049F318@ha
    stfs 2, 0x10(1)
    lis 4, 0x5449
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    slwi 0, 5, 2
    stfs 1, 0x14(1)
    addi 3, 3, lbl_8049F318@l
    addi 4, 4, 0x4d47
    lwzx 5, 3, 0
    stfs 1, 0x18(1)
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    stfs 1, 0x30(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x3c(1)
    stw 7, 0x58(1)
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0229F94 # lfs f1, lbl_8053CF34@sda21(r0)
    mr 4, 3
    .4byte 0xC0429F98 # lfs f2, lbl_8053CF38@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x40
    li 6, 0x7
    bl fn_801EFD34
    .4byte 0x4800002C # b .L_80142918
L_801428F0:
    .4byte 0xC0229F90 # lfs f1, lbl_8053CF30@sda21(r0)
    lis 3, lbl_80465B50@ha
    lwz 5, 0x25c(31)
    addi 4, 3, lbl_80465B50@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x84
    addi 6, 1, 0x40
    li 7, 0x7
    bl fn_801F06F0
L_80142918:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8014292C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    li 0, 0x0
    mr 31, 3
    sth 0, 0x8(1)
    stw 0, 0x24(1)
    lwz 0, 0x254(3)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_801429B4
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x41800048 # blt .L_801429B4
    cmplwi 0, 0x7
    .4byte 0x41810040 # bgt .L_801429B4
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820984 # beq .L_80143310
    li 3, 0x1
    li 0, 0x201
    stw 3, 0x254(31)
    stw 0, 0xb0(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x7
    .4byte 0x4082000C # bne .L_801429B4
    lis 0, 0x400
    stw 0, 0xb0(31)
L_801429B4:
    lhz 0, 0x94(31)
    cmplwi 0, 0x8
    .4byte 0x40820068 # bne .L_80142A24
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801429E8
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4182092C # beq .L_80143310
L_801429E8:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x1e
    .4byte 0x40810914 # ble .L_80143310
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480008F0 # b .L_80143310
L_80142A24:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_80142A54
    mr 3, 31
    addi 5, 31, 0xc
    li 4, 0x80
    li 6, 0x3
    li 7, 0x0
    li 8, -0x1
    bl fn_801F37AC
    li 0, 0x0
    stw 0, 0x234(31)
L_80142A54:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x418200DC # beq .L_80142B40
    lwz 0, 0xe0(31)
    cmpwi 0, 0x1d
    .4byte 0x408208A0 # bne .L_80143310
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229F90 # lfs f1, lbl_8053CF30@sda21(r0)
    li 5, 0x1ff
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lhz 0, 0x94(31)
    cmplwi 0, 0x9
    .4byte 0x4082086C # bne .L_80143310
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0229F90 # lfs f1, lbl_8053CF30@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0029F9C # lfs f0, lbl_8053CF3C@sda21(r0)
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
    .4byte 0x4080002C # bge .L_80142B18
    bl SpatialRegistry_GetBase
    lis 4, 0x4d54
    lwz 5, 0x4(31)
    addi 4, 4, 0x424f
    addi 6, 31, 0xc
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480007FC # b .L_80143310
L_80142B18:
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480007D4 # b .L_80143310
L_80142B40:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820078 # beq .L_80142BC0
    .4byte 0x40800010 # bge .L_80142B5C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80142B68
    .4byte 0x480006E8 # b .L_80143240
L_80142B5C:
    cmpwi 0, 0x3
    .4byte 0x408006E0 # bge .L_80143240
    .4byte 0x4800066C # b .L_801431D0
L_80142B68:
    .4byte 0xC0229FA0 # lfs f1, lbl_8053CF40@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0xC0429FA4 # lfs f2, lbl_8053CF44@sda21(r0)
    .4byte 0xC0629FA8 # lfs f3, lbl_8053CF48@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082069C # bne .L_80143240
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    li 0, 0x1
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
L_80142BC0:
    lwz 0, 0x24c(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0829FB0 # lfs f4, lbl_8053CF50@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC0029FAC # lfs f0, lbl_8053CF4C@sda21(r0)
    lfsx 1, 3, 0
    addi 3, 31, 0x14
    .4byte 0xC0429FA4 # lfs f2, lbl_8053CF44@sda21(r0)
    fmadds 1, 4, 1, 0
    .4byte 0xC0629F90 # lfs f3, lbl_8053CF30@sda21(r0)
    bl fn_801F71A4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0029F90 # lfs f0, lbl_8053CF30@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0429FB4 # lfs f2, lbl_8053CF54@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x24c(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    add 3, 0, 3
    addi 0, 3, 0x200
    stw 0, 0x24c(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80142C64
    cmplwi 0, 0x6
    .4byte 0x408200A0 # bne .L_80142D00
L_80142C64:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820094 # bne .L_80142D00
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0029F90 # lfs f0, lbl_8053CF30@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0429FB8 # lfs f2, lbl_8053CF58@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0x96
    stw 0, 0x238(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 31
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80142D00
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1d
    li 5, 0x0
    bl fn_801F0E34
L_80142D00:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80142D24
    .4byte 0xC0229FA0 # lfs f1, lbl_8053CF40@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0xC0429FA4 # lfs f2, lbl_8053CF44@sda21(r0)
    .4byte 0xC0629FA8 # lfs f3, lbl_8053CF48@sda21(r0)
    bl fn_801F71A4
    .4byte 0x48000054 # b .L_80142D74
L_80142D24:
    .4byte 0xC0229F94 # lfs f1, lbl_8053CF34@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0xC0429FA4 # lfs f2, lbl_8053CF44@sda21(r0)
    .4byte 0xC0629FA8 # lfs f3, lbl_8053CF48@sda21(r0)
    bl fn_801F71A4
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80142D4C
    cmplwi 0, 0x7
    .4byte 0x4082002C # bne .L_80142D74
L_80142D4C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80142D74
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x248(31)
    mr 3, 31
    addi 4, 4, 0x1d
    li 5, 0x0
    bl fn_801F0E34
L_80142D74:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_80142EA4
    lfs 1, 0x270(31)
    .4byte 0xC0029FBC # lfs f0, lbl_8053CF5C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810118 # ble .L_80142EA4
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x41820020 # beq .L_80142DB8
    cmplwi 0, 0x7
    .4byte 0x41820018 # beq .L_80142DB8
    lwz 0, 0xb0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80142DB8
    li 0, 0x201
    stw 0, 0xb0(31)
L_80142DB8:
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182003C # beq .L_80142DFC
    cmplwi 0, 0x7
    .4byte 0x41820034 # beq .L_80142DFC
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_80142EAC
    .4byte 0xC0029FA0 # lfs f0, lbl_8053CF40@sda21(r0)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x270(31)
    addi 4, 4, 0x25
    bl fn_801F0E34
    .4byte 0x48000518 # b .L_80143310
L_80142DFC:
    lis 4, 0x5350
    mr 3, 31
    addi 4, 4, 0x4f54
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x41800038 # blt .L_80142E48
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x25
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    addi 5, 31, 0xc
    li 4, 0x80
    li 6, 0x3
    li 7, 0x0
    li 8, -0x1
    bl fn_801F37AC
    .4byte 0x480004CC # b .L_80143310
L_80142E48:
    li 30, 0x0
L_80142E4C:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x4180002C # blt .L_80142E94
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x24
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x1
    li 0, 0x14
    stw 3, 0x248(31)
    stw 0, 0x238(31)
    .4byte 0x4800001C # b .L_80142EAC
L_80142E94:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFB0 # blt .L_80142E4C
    .4byte 0x4800000C # b .L_80142EAC
L_80142EA4:
    li 0, 0x0
    stw 0, 0xb0(31)
L_80142EAC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_80142F1C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0029F90 # lfs f0, lbl_8053CF30@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0429FC0 # lfs f2, lbl_8053CF60@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0x3c
    stw 0, 0x23c(31)
    lwz 0, 0x250(31)
    xori 0, 0, 0x1
    stw 0, 0x250(31)
L_80142F1C:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x24
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x24(1)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80142F60
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80142F60
    cmplwi 0, 0x7
    .4byte 0x40820124 # bne .L_80143080
L_80142F60:
    .4byte 0xC0429F94 # lfs f2, lbl_8053CF34@sda21(r0)
    stfs 2, 0x40(31)
    lfs 1, 0xc(31)
    lfs 0, 0x260(31)
    fsubs 0, 1, 0
    fmuls 4, 0, 0
    fcmpo cr0, 4, 2
    .4byte 0x4081004C # ble .L_80142FC8
    frsqrte 1, 4
    .4byte 0xC8629FC8 # lfd f3, lbl_8053CF68@sda21(r0)
    .4byte 0xC8429FD0 # lfd f2, lbl_8053CF70@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_8014304C
L_80142FC8:
    .4byte 0xC8029FD8 # lfd f0, lbl_8053CF78@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80142FE0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_8014304C
L_80142FE0:
    stfs 4, 0x1c(1)
    lis 0, 0x7f80
    lwz 4, 0x1c(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80143008
    .4byte 0x40800040 # bge .L_80143038
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80143020
    .4byte 0x48000034 # b .L_80143038
L_80143008:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80143018
    li 0, 0x1
    .4byte 0x48000028 # b .L_8014303C
L_80143018:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8014303C
L_80143020:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80143030
    li 0, 0x5
    .4byte 0x48000010 # b .L_8014303C
L_80143030:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8014303C
L_80143038:
    li 0, 0x4
L_8014303C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8014304C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_8014304C:
    .4byte 0xC0029FE0 # lfs f0, lbl_8053CF80@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x408100D4 # ble .L_80143128
    lfs 1, 0xc(31)
    lfs 0, 0x260(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80143074
    li 0, 0x1
    stw 0, 0x250(31)
    .4byte 0x480000B8 # b .L_80143128
L_80143074:
    li 0, 0x0
    stw 0, 0x250(31)
    .4byte 0x480000AC # b .L_80143128
L_80143080:
    mr 3, 31
    addi 4, 1, 0x28
    li 5, 0x0
    li 6, 0x0
    bl fn_801EE8F4
    lfs 1, 0x28(1)
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_801430B8
    lfs 1, 0x3c(31)
    .4byte 0xC0029FE4 # lfs f0, lbl_8053CF84@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x3c(31)
    .4byte 0x48000014 # b .L_801430C8
L_801430B8:
    lfs 1, 0x3c(31)
    .4byte 0xC0029FE4 # lfs f0, lbl_8053CF84@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x3c(31)
L_801430C8:
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x41820040 # beq .L_80143110
    cmplwi 0, 0x6
    .4byte 0x41820038 # beq .L_80143110
    lfs 1, 0x2c(1)
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_80143100
    lfs 1, 0x40(31)
    .4byte 0xC0029FE4 # lfs f0, lbl_8053CF84@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x48000014 # b .L_80143110
L_80143100:
    lfs 1, 0x40(31)
    .4byte 0xC0029FE4 # lfs f0, lbl_8053CF84@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
L_80143110:
    lfs 0, 0xc(31)
    stfs 0, 0x260(31)
    lfs 0, 0x10(31)
    stfs 0, 0x264(31)
    lfs 0, 0x14(31)
    stfs 0, 0x268(31)
L_80143128:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80143148
    lfs 1, 0x3c(31)
    .4byte 0xC0029FE8 # lfs f0, lbl_8053CF88@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x3c(31)
    .4byte 0x48000014 # b .L_80143158
L_80143148:
    lfs 1, 0x3c(31)
    .4byte 0xC0029FE8 # lfs f0, lbl_8053CF88@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x3c(31)
L_80143158:
    .4byte 0xC3E29FEC # lfs f31, lbl_8053CF8C@sda21(r0)
    addi 4, 31, 0xc
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x41800018 # blt .L_801431B8
    cmplwi 0, 0x7
    .4byte 0x41810010 # bgt .L_801431B8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_801431B8:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    .4byte 0x48000074 # b .L_80143240
L_801431D0:
    mr 3, 31
    addi 5, 1, 0x20
    li 4, 0x0
    li 6, 0x0
    bl fn_801EE8F4
    lfs 1, 0x20(1)
    .4byte 0xC0029FF0 # lfs f0, lbl_8053CF90@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800050 # bge .L_80143240
    .4byte 0xC0029FBC # lfs f0, lbl_8053CF5C@sda21(r0)
    addi 4, 31, 0xc
    .4byte 0xC0229F90 # lfs f1, lbl_8053CF30@sda21(r0)
    li 5, 0x1fd
    stfs 0, 0x270(31)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    lwz 3, 0x4(31)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1d
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x230(31)
L_80143240:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_801432C0
    li 0, 0x0
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    stw 0, 0x24(1)
    lfs 1, 0x3c(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8014326C
    li 0, 0x1
    stw 0, 0x24(1)
L_8014326C:
    lwz 0, 0x258(31)
    lis 4, lbl_8049F2F8@ha
    lis 3, lbl_8049F2B8@ha
    slwi 0, 0, 2
    addi 4, 4, lbl_8049F2F8@l
    lwzx 0, 4, 0
    addi 3, 3, lbl_8049F2B8@l
    stw 0, 0x244(31)
    lwz 4, 0x24(1)
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x25c(31)
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 29
    stw 0, 0x258(31)
L_801432C0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801432D4
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801432D4:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801432E8
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_801432E8:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801432FC
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_801432FC:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80143310
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80143310:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80143330:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC0029F98 # lfs f0, lbl_8053CF38@sda21(r0)
    lis 4, 0x19
    stw 0, 0x34(1)
    addi 0, 4, 0x660d
    .4byte 0xC0629FF4 # lfs f3, lbl_8053CF94@sda21(r0)
    li 5, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0xC0229FA0 # lfs f1, lbl_8053CF40@sda21(r0)
    stfs 0, 0x60(3)
    .4byte 0xC0429FC0 # lfs f2, lbl_8053CF60@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC0029F90 # lfs f0, lbl_8053CF30@sda21(r0)
    stfs 3, 0x68(3)
    stfs 3, 0x6c(3)
    lwz 4, 0x90(3)
    clrlwi 4, 4, 24
    sth 4, 0x94(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 16, 8
    sth 4, 0x26c(3)
    stw 5, 0x238(3)
    stw 5, 0x23c(3)
    stw 5, 0x240(3)
    stw 5, 0x244(3)
    stw 5, 0x248(3)
    stw 5, 0x24c(3)
    stw 5, 0x250(3)
    stw 5, 0x254(3)
    stw 5, 0x258(3)
    stfs 1, 0x270(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(6)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    addi 0, 4, 0x3c
    stw 0, 0x23c(3)
    stw 5, 0x234(3)
    stw 5, 0xb0(3)
    lfs 0, 0xc(3)
    stfs 0, 0x260(3)
    lfs 0, 0x10(3)
    stfs 0, 0x264(3)
    lfs 0, 0x14(3)
    stfs 0, 0x268(3)
    lhz 0, 0x94(3)
    cmplwi 0, 0xa
    .4byte 0x418101E0 # bgt .L_80143604
    lis 4, jumptable_8049F384@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_8049F384@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    stfs 0, 0x270(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0429F90 # lfs f2, lbl_8053CF30@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC0229FB8 # lfs f1, lbl_8053CF58@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x248(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    addi 0, 3, 0x96
    stw 0, 0x238(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_801434F4
    li 0, 0x201
    stw 0, 0xb0(31)
L_801434F4:
    .4byte 0xC0029FF8 # lfs f0, lbl_8053CF98@sda21(r0)
    li 0, 0x1
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    .4byte 0x48000100 # b .L_80143604
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0x1d
    bl fn_801F0E34
    .4byte 0xC0229F94 # lfs f1, lbl_8053CF34@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC0029FF8 # lfs f0, lbl_8053CF98@sda21(r0)
    li 5, 0x1e
    stfs 1, 0x270(31)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC0229FFC # lfs f1, lbl_8053CF9C@sda21(r0)
    li 0, 0x0
    stfs 0, 0x14(31)
    stw 5, 0x238(31)
    lhz 3, 0x26c(31)
    rlwinm 3, 3, 30, 18, 28
    lfsx 0, 4, 3
    fmuls 0, 1, 0
    stfs 0, 0x3c(31)
    lhz 3, 0x26c(31)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    stw 0, 0x230(31)
    .4byte 0x48000094 # b .L_80143604
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1d
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    stfs 0, 0x270(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801435A4
    li 0, 0x201
    stw 0, 0xb0(31)
L_801435A4:
    .4byte 0xC0029FF8 # lfs f0, lbl_8053CF98@sda21(r0)
    li 0, 0x1
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    .4byte 0x48000050 # b .L_80143604
    .4byte 0xC042A000 # lfs f2, lbl_8053CFA0@sda21(r0)
    li 4, 0x64
    .4byte 0xC022A004 # lfs f1, lbl_8053CFA4@sda21(r0)
    lis 3, 0x400
    stfs 2, 0x60(31)
    li 0, 0x1
    .4byte 0xC0029FF8 # lfs f0, lbl_8053CF98@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x14(31)
    stw 4, 0x108(31)
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x48000014 # b .L_80143604
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    li 0, 0x2
    stfs 0, 0x270(31)
    stw 0, 0x230(31)
L_80143604:
    lfs 1, 0x3c(31)
    li 3, 0x0
    .4byte 0xC0029F94 # lfs f0, lbl_8053CF34@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8014361C
    li 3, 0x1
L_8014361C:
    lwz 0, 0x258(31)
    slwi 4, 3, 3
    lis 3, lbl_8049F2B8@ha
    add 0, 4, 0
    slwi 0, 0, 2
    addi 3, 3, lbl_8049F2B8@l
    lwzx 0, 3, 0
    stw 0, 0x25c(31)
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80143650:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BEF50@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BEF50@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801436A0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801436A0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801436D8
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801436D8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143710
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80143710:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143748
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80143748:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143780
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80143780:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801437B8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801437B8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801437F0
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801437F0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143828
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80143828:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143860
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80143860:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80143874:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_801438B8
    lis 5, lbl_8049F3B0@ha
    li 4, 0x0
    addi 0, 5, lbl_8049F3B0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801438B8
    mr 3, 30
    bl dtor_80084580
L_801438B8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801438D4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022A008 # lfs f1, lbl_8053CFA8@sda21(r0)
    lis 4, lbl_80465B68@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_80465B68@l
    fmr 2, 1
    li 6, 0x0
    lwz 5, 0x240(3)
    li 7, 0x0
    addi 5, 5, 0x1a
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80143914:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 31, 3
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_80143958
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_8014398C
L_80143958:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    li 3, 0x0
    stw 3, 0x23c(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182043C # beq .L_80143DB4
    li 0, 0xa
    stw 0, 0x238(31)
    stw 3, 0x230(31)
    .4byte 0x4800042C # b .L_80143DB4
L_8014398C:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801439A0
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801439A0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801439B4
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801439B4:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801439CC
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801439CC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408203E0 # bne .L_80143DB4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418200FC # beq .L_80143B20
    .4byte 0x40800010 # bge .L_80143A38
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80143A44
    .4byte 0x48000340 # b .L_80143D74
L_80143A38:
    cmpwi 0, 0x3
    .4byte 0x40800338 # bge .L_80143D74
    .4byte 0x480002C4 # b .L_80143D04
L_80143A44:
    li 0, 0x2
    .4byte 0xC3E2A00C # lfs f31, lbl_8053CFAC@sda21(r0)
    stw 0, 0x234(31)
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820304 # bne .L_80143D74
    lwz 3, 0x98(31)
    addi 0, 3, 0x1
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    clrlwi 0, 0, 31
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_80143AB4
    .4byte 0x40800024 # bge .L_80143ABC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80143AA8
    .4byte 0x48000018 # b .L_80143ABC
L_80143AA8:
    .4byte 0xC002A008 # lfs f0, lbl_8053CFA8@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0x4800000C # b .L_80143ABC
L_80143AB4:
    .4byte 0xC002A010 # lfs f0, lbl_8053CFB0@sda21(r0)
    stfs 0, 0x3c(31)
L_80143ABC:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002A008 # lfs f0, lbl_8053CFA8@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x1
    .4byte 0xC042A014 # lfs f2, lbl_8053CFB4@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x14
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000258 # b .L_80143D74
L_80143B20:
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80143B34
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_80143B94
L_80143B34:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002A008 # lfs f0, lbl_8053CFA8@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x0
    .4byte 0xC042A018 # lfs f2, lbl_8053CFB8@sda21(r0)
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
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x14
    stw 3, 0x238(31)
    stw 0, 0x230(31)
L_80143B94:
    li 29, 0x0
L_80143B98:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820150 # beq .L_80143CF4
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x4082013C # bne .L_80143CF4
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082012C # bne .L_80143CF4
    mr 3, 29
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x4082011C # bne .L_80143CF4
    mr 3, 29
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(31)
    .4byte 0xC002A01C # lfs f0, lbl_8053CFBC@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x408000F4 # bge .L_80143CF4
    mr 3, 29
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    .4byte 0xC002A020 # lfs f0, lbl_8053CFC0@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x408000CC # bge .L_80143CF4
    mr 3, 29
    bl fn_8023E724
    lwz 4, 0x4(31)
    mr 6, 3
    mr 3, 31
    addi 5, 31, 0xc
    addi 7, 31, 0x80
    addi 8, 1, 0x24
    addi 9, 1, 0x18
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x40820098 # bne .L_80143CF4
    li 0, 0x0
    .4byte 0xC002A024 # lfs f0, lbl_8053CFC4@sda21(r0)
    stw 0, 0x234(31)
    mr 3, 29
    stfs 0, 0x3c(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80143C90
    .4byte 0xC002A028 # lfs f0, lbl_8053CFC8@sda21(r0)
    stfs 0, 0x3c(31)
L_80143C90:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002A008 # lfs f0, lbl_8053CFA8@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x2
    .4byte 0xC042A014 # lfs f2, lbl_8053CFB4@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x32
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000084 # b .L_80143D74
L_80143CF4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE9C # blt .L_80143B98
    .4byte 0x48000074 # b .L_80143D74
L_80143D04:
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80143D18
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80143D74
L_80143D18:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002A008 # lfs f0, lbl_8053CFA8@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x0
    .4byte 0xC042A018 # lfs f2, lbl_8053CFB8@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
L_80143D74:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810038 # bgt .L_80143DB4
    li 0, 0x8
    stw 0, 0x234(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_80143D9C
    li 0, 0x2
    stw 0, 0x234(31)
L_80143D9C:
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    clrlwi 0, 0, 31
    stw 0, 0x240(31)
L_80143DB4:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80143DD8:
    stwu 1, -0x20(1)
    lis 4, 0x19
    .4byte 0xC062A02C # lfs f3, lbl_8053CFCC@sda21(r0)
    li 5, 0x0
    .4byte 0xC002A030 # lfs f0, lbl_8053CFD0@sda21(r0)
    addi 0, 4, 0x660d
    stfs 3, 0x60(3)
    .4byte 0xC022A008 # lfs f1, lbl_8053CFA8@sda21(r0)
    stfs 3, 0x64(3)
    .4byte 0xC042A024 # lfs f2, lbl_8053CFC4@sda21(r0)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 5, 0x98(3)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80143E7C
    .4byte 0x40800028 # bge .L_80143E8C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80143E74
    .4byte 0x4800001C # b .L_80143E8C
L_80143E74:
    stfs 1, 0x3c(3)
    .4byte 0x48000014 # b .L_80143E8C
L_80143E7C:
    .4byte 0xC002A010 # lfs f0, lbl_8053CFB0@sda21(r0)
    li 0, 0x1
    stfs 0, 0x3c(3)
    stw 0, 0x98(3)
L_80143E8C:
    li 6, 0x0
    lis 5, 0x19
    stw 6, 0x234(3)
    lis 4, 0x1
    addi 5, 5, 0x660d
    .4byte 0xC002A008 # lfs f0, lbl_8053CFA8@sda21(r0)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    addi 0, 4, 0x1101
    .4byte 0xC042A018 # lfs f2, lbl_8053CFB8@sda21(r0)
    lwz 4, 0xb4(7)
    mullw 4, 4, 5
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(7)
    lwz 4, 0xb4(7)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    stw 4, 0x238(3)
    stw 6, 0x23c(3)
    stw 6, 0x240(3)
    stw 6, 0x244(3)
    stw 6, 0x248(3)
    stw 0, 0xb0(3)
    stw 6, 0x230(3)
    addi 1, 1, 0x20
    blr

fn_80143F10:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BF050@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BF050@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143F60
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80143F60:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143F98
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80143F98:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80143FD0
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80143FD0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80144008
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80144008:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80144040
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80144040:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80144078
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80144078:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801440B0
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801440B0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801440E8
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801440E8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80144120
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80144120:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80142400
    .4byte fn_80143650
    .4byte fn_80143F10

