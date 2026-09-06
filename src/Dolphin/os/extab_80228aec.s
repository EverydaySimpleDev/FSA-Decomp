# Dispatch-cross-check bundle - 2 real FourCC actor vtable bodies
# (ctors already landed: fn_80229578, fn_8022AB40 - 2 sinit entries
# for 2 dispatch-confirmed actor dtors, matching fn_80228AEC/
# fn_8022979C territory) plus shared helper functions, landed as ONE
# byte-contiguous 20-function, 9,796-byte Track-A bundle
# (0x80228AEC-0x8022B130). Found+verified via spanwalk.py (full
# contiguity confirmed, stopping exactly at the already-landed
# Game/stub_8022b130.cpp Phase-4 file boundary) and resolvefiles.py
# (7 fused-dump functions). .ctors placement (0x8045C1B8-0x8045C1C0)
# found by direct whole-table scan, independently re-verified after
# an earlier same-session automated-scan false-positive was caught
# (see project_fsa_dispatch_crosscheck_discovery.md).

.section extab, "a"
.balign 4
.global etb_8000A828
etb_8000A828:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A828, 8

.global etb_8000A830
etb_8000A830:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000A830, 8

.global etb_8000A838
etb_8000A838:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A838, 8

.global etb_8000A840
etb_8000A840:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A840, 8

.global etb_8000A848
etb_8000A848:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A848, 8

.global etb_8000A850
etb_8000A850:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A850, 8

.global etb_8000A858
etb_8000A858:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A858, 8

.global etb_8000A860
etb_8000A860:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A860, 8

.global etb_8000A868
etb_8000A868:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A868, 8

.global etb_8000A870
etb_8000A870:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A870, 8

.global etb_8000A878
etb_8000A878:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A878, 8

.global etb_8000A880
etb_8000A880:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A880, 8

.section extabindex, "a"
.balign 4
.global eti_80018748
eti_80018748:
    .4byte fn_80228AEC
    .4byte 0x00000074
    .4byte etb_8000A828
.size eti_80018748, 12

.global eti_80018754
eti_80018754:
    .4byte fn_80228B60
    .4byte 0x00000A18
    .4byte etb_8000A830
.size eti_80018754, 12

.global eti_80018760
eti_80018760:
    .4byte fn_80229578
    .4byte 0x00000224
    .4byte etb_8000A838
.size eti_80018760, 12

.global eti_8001876C
eti_8001876C:
    .4byte fn_8022979C
    .4byte 0x00000060
    .4byte etb_8000A840
.size eti_8001876C, 12

.global eti_80018778
eti_80018778:
    .4byte fn_802297FC
    .4byte 0x00000720
    .4byte etb_8000A848
.size eti_80018778, 12

.global eti_80018784
eti_80018784:
    .4byte fn_80229F1C
    .4byte 0x00000920
    .4byte etb_8000A850
.size eti_80018784, 12

.global eti_80018790
eti_80018790:
    .4byte fn_8022A83C
    .4byte 0x00000304
    .4byte etb_8000A858
.size eti_80018790, 12

.global eti_8001879C
eti_8001879C:
    .4byte fn_8022AB40
    .4byte 0x00000224
    .4byte etb_8000A860
.size eti_8001879C, 12

.global eti_800187A8
eti_800187A8:
    .4byte fn_8022AD64
    .4byte 0x00000024
    .4byte etb_8000A868
.size eti_800187A8, 12

.global eti_800187B4
eti_800187B4:
    .4byte fn_8022AD88
    .4byte 0x00000028
    .4byte etb_8000A870
.size eti_800187B4, 12

.global eti_800187C0
eti_800187C0:
    .4byte fn_8022AF78
    .4byte 0x000000EC
    .4byte etb_8000A878
.size eti_800187C0, 12

.global eti_800187CC
eti_800187CC:
    .4byte fn_8022B064
    .4byte 0x000000CC
    .4byte etb_8000A880
.size eti_800187CC, 12

.text
.balign 4
.global fn_80228AEC
.global fn_80228B60
.global fn_80229578
.global fn_8022979C
.global fn_802297FC
.global fn_80229F1C
.global fn_8022A83C
.global fn_8022AB40
.global fn_8022AD64
.global fn_8022AD88
.global fn_8022ADB0
.global fn_8022ADCC
.global fn_8022ADE4
.global fn_8022ADFC
.global fn_8022AF10
.global fn_8022AF2C
.global fn_8022AF44
.global fn_8022AF5C
.global fn_8022AF78
.global fn_8022B064

fn_80228AEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_80228B44
    lis 3, lbl_804A6DC8@ha
    addi 0, 3, lbl_804A6DC8@l
    stw 0, 0x0(30)
    lwz 3, 0x24c(30)
    bl fn_801EE434
    lwz 3, 0x250(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80228B44
    mr 3, 30
    bl dtor_80084580
L_80228B44:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80228B60:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 31, 3
    li 3, 0x0
    stb 3, 0x256(31)
    stw 3, 0x278(31)
    stb 3, 0x255(31)
    stw 3, 0x27c(31)
    stw 3, 0x280(31)
    stw 3, 0x284(31)
    stw 3, 0x288(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    cmpwi 0, 0x20
    .4byte 0x40820010 # bne .L_80228BC8
    li 0, 0x1
    stb 0, 0x254(31)
    .4byte 0x48000008 # b .L_80228BCC
L_80228BC8:
    stb 3, 0x254(31)
L_80228BCC:
    lwz 0, 0x90(31)
    extrwi. 3, 0, 3, 5
    addi 30, 3, 0x7
    .4byte 0x40820008 # bne .L_80228BE0
    mr 30, 3
L_80228BE0:
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_80228BF4
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80228BF8
L_80228BF4:
    addi 3, 3, 0xdc
L_80228BF8:
    lfs 31, 0x0(3)
    lfs 30, 0x4(3)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_80228C18
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80228C1C
L_80228C18:
    addi 3, 3, 0xdc
L_80228C1C:
    lwz 4, 0x90(31)
    lfs 4, 0x0(3)
    clrlwi 0, 4, 25
    lfs 5, 0x4(3)
    cmpwi 0, 0x6
    .4byte 0x4182001C # beq .L_80228C4C
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_80228C4C
    cmpwi 0, 0x20
    .4byte 0x4182000C # beq .L_80228C4C
    cmpwi 0, 0x24
    .4byte 0x40820040 # bne .L_80228C88
L_80228C4C:
    rlwinm. 0, 4, 19, 23, 28
    .4byte 0x40820038 # bne .L_80228C88
    rlwinm. 0, 4, 27, 23, 28
    .4byte 0x40820030 # bne .L_80228C88
    lfs 1, 0xc(31)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    fsubs 1, 1, 4
    fadds 1, 31, 1
    stfs 1, 0x238(31)
    lfs 1, 0x10(31)
    fsubs 1, 1, 5
    fadds 1, 30, 1
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
    .4byte 0x4800004C # b .L_80228CD0
L_80228C88:
    lis 3, 0x4330
    rlwinm 0, 4, 19, 23, 28
    stw 0, 0xc(1)
    rlwinm 0, 4, 27, 23, 28
    .4byte 0xC862D028 # lfd f3, lbl_8053FFC8@sda21(r0)
    stw 3, 0x8(1)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    lfd 1, 0x8(1)
    stw 0, 0x14(1)
    fsubs 2, 1, 3
    stw 3, 0x10(1)
    lfd 1, 0x10(1)
    fadds 2, 2, 31
    fsubs 1, 1, 3
    stfs 2, 0x238(31)
    fadds 1, 1, 30
    stfs 1, 0x23c(31)
    stfs 0, 0x240(31)
L_80228CD0:
    lwz 6, 0x4(31)
    li 3, 0x8
    lwz 0, 0x90(31)
    xoris 5, 3, 0x8000
    subi 4, 6, 0x8
    subi 3, 6, 0x7
    clrlwi 6, 0, 25
    addc 4, 4, 5
    subfe 4, 4, 4
    cmpwi 6, 0x19
    and 4, 3, 4
    .4byte 0x40820098 # bne .L_80228D94
    lfs 1, 0x10(31)
    clrrwi 3, 0, 27
    lfs 0, 0xc(31)
    extrwi. 6, 0, 3, 5
    fsubs 1, 1, 5
    rlwimi 3, 4, 24, 5, 7
    fsubs 0, 0, 4
    addi 30, 6, 0x7
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    stfd 0, 0x8(1)
    lwz 5, 0x14(1)
    lwz 4, 0xc(1)
    srawi 5, 5, 3
    addze 5, 5
    srawi 4, 4, 3
    addze 4, 4
    rlwimi 3, 4, 16, 8, 15
    rlwimi 3, 5, 8, 16, 23
    rlwimi 3, 0, 0, 24, 24
    ori 29, 3, 0x1
    .4byte 0x40820008 # bne .L_80228D60
    mr 30, 6
L_80228D60:
    bl SpatialRegistry_GetBase
    lis 4, 0x5741
    mr 5, 30
    mr 7, 29
    addi 6, 31, 0x238
    addi 4, 4, 0x5250
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x90(31)
    clrrwi 0, 0, 8
    stw 0, 0x90(31)
    .4byte 0x480001E0 # b .L_80228F70
L_80228D94:
    cmpwi 6, 0x1a
    .4byte 0x4082009C # bne .L_80228E34
    lfs 1, 0x10(31)
    clrrwi 3, 0, 27
    lfs 0, 0xc(31)
    extrwi. 6, 0, 3, 5
    fsubs 1, 1, 5
    rlwimi 3, 4, 24, 5, 7
    fsubs 0, 0, 4
    addi 30, 6, 0x7
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    stfd 0, 0x8(1)
    lwz 5, 0x14(1)
    lwz 4, 0xc(1)
    srawi 5, 5, 3
    addze 5, 5
    srawi 4, 4, 3
    addze 4, 4
    rlwimi 3, 4, 16, 8, 15
    rlwimi 3, 5, 8, 16, 23
    rlwimi 3, 0, 0, 24, 24
    ori 29, 3, 0x3
    .4byte 0x40820008 # bne .L_80228DFC
    mr 30, 6
L_80228DFC:
    bl SpatialRegistry_GetBase
    lis 4, 0x5741
    mr 5, 30
    mr 7, 29
    addi 6, 31, 0x238
    addi 4, 4, 0x5250
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x90(31)
    clrrwi 0, 0, 8
    ori 0, 0, 0x2
    stw 0, 0x90(31)
    .4byte 0x48000140 # b .L_80228F70
L_80228E34:
    cmpwi 6, 0x1b
    .4byte 0x4082009C # bne .L_80228ED4
    lfs 1, 0x10(31)
    clrrwi 3, 0, 27
    lfs 0, 0xc(31)
    extrwi. 6, 0, 3, 5
    fsubs 1, 1, 5
    rlwimi 3, 4, 24, 5, 7
    fsubs 0, 0, 4
    addi 30, 6, 0x7
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    stfd 0, 0x8(1)
    lwz 5, 0x14(1)
    lwz 4, 0xc(1)
    srawi 5, 5, 3
    addze 5, 5
    srawi 4, 4, 3
    addze 4, 4
    rlwimi 3, 4, 16, 8, 15
    rlwimi 3, 5, 8, 16, 23
    rlwimi 3, 0, 0, 24, 24
    ori 29, 3, 0x18
    .4byte 0x40820008 # bne .L_80228E9C
    mr 30, 6
L_80228E9C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5741
    mr 5, 30
    mr 7, 29
    addi 6, 31, 0x238
    addi 4, 4, 0x5250
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x90(31)
    clrrwi 0, 0, 8
    ori 0, 0, 0x17
    stw 0, 0x90(31)
    .4byte 0x480000A0 # b .L_80228F70
L_80228ED4:
    cmpwi 6, 0x1c
    .4byte 0x40820098 # bne .L_80228F70
    lfs 1, 0x10(31)
    clrrwi 3, 0, 27
    lfs 0, 0xc(31)
    extrwi. 6, 0, 3, 5
    fsubs 1, 1, 5
    rlwimi 3, 4, 24, 5, 7
    fsubs 0, 0, 4
    addi 30, 6, 0x7
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    stfd 0, 0x8(1)
    lwz 5, 0x14(1)
    lwz 4, 0xc(1)
    srawi 5, 5, 3
    addze 5, 5
    srawi 4, 4, 3
    addze 4, 4
    rlwimi 3, 4, 16, 8, 15
    rlwimi 3, 5, 8, 16, 23
    rlwimi 3, 0, 0, 24, 24
    ori 29, 3, 0x17
    .4byte 0x40820008 # bne .L_80228F3C
    mr 30, 6
L_80228F3C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5741
    mr 5, 30
    mr 7, 29
    addi 6, 31, 0x238
    addi 4, 4, 0x5250
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x90(31)
    clrrwi 0, 0, 8
    ori 0, 0, 0x18
    stw 0, 0x90(31)
L_80228F70:
    lwz 3, 0x90(31)
    extrwi. 0, 3, 1, 24
    .4byte 0x4082002C # bne .L_80228FA4
    clrlwi 0, 3, 25
    cmpwi 0, 0x20
    .4byte 0x41820020 # beq .L_80228FA4
    lfs 0, 0x238(31)
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x238(31)
    lfs 0, 0x23c(31)
    fadds 0, 0, 1
    stfs 0, 0x23c(31)
L_80228FA4:
    lwz 3, 0x90(31)
    extrwi. 0, 3, 1, 24
    .4byte 0x408200FC # bne .L_802290A8
    clrlwi 0, 3, 25
    cmpwi 0, 0xb
    .4byte 0x418200F0 # beq .L_802290A8
    cmpwi 0, 0x1e
    .4byte 0x418200E8 # beq .L_802290A8
    cmpwi 0, 0x1f
    .4byte 0x418200E0 # beq .L_802290A8
    cmpwi 0, 0x20
    .4byte 0x418200D8 # beq .L_802290A8
    lfs 1, 0xc(31)
    lis 0, 0x4330
    stw 0, 0x8(1)
    fctiwz 0, 1
    .4byte 0xC842D030 # lfd f2, lbl_8053FFD0@sda21(r0)
    .4byte 0xC062CFD0 # lfs f3, lbl_8053FF70@sda21(r0)
    stw 0, 0x20(1)
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    stw 0, 0x30(1)
    slwi 3, 4, 29
    srwi 4, 4, 31
    subf 3, 4, 3
    stw 0, 0x40(1)
    rotlwi 0, 3, 3
    add 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fsubs 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lfs 1, 0x10(31)
    fctiwz 0, 1
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    slwi 0, 3, 29
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 3
    add 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 2
    fsubs 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x44(1)
    lfd 0, 0x40(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_802290A8:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    cmpwi 0, 0x6
    .4byte 0x40820020 # bne .L_802290D4
    .4byte 0xC022CFF4 # lfs f1, lbl_8053FF94@sda21(r0)
    .4byte 0xC002CFF8 # lfs f0, lbl_8053FF98@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800032C # b .L_802293FC
L_802290D4:
    cmpwi 0, 0xb
    .4byte 0x40820020 # bne .L_802290F8
    .4byte 0xC022CFFC # lfs f1, lbl_8053FF9C@sda21(r0)
    .4byte 0xC002CFD0 # lfs f0, lbl_8053FF70@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000308 # b .L_802293FC
L_802290F8:
    cmpwi 0, 0x20
    .4byte 0x40820020 # bne .L_8022911C
    .4byte 0xC022D000 # lfs f1, lbl_8053FFA0@sda21(r0)
    .4byte 0xC002D004 # lfs f0, lbl_8053FFA4@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480002E4 # b .L_802293FC
L_8022911C:
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80229144
    .4byte 0xC002D008 # lfs f0, lbl_8053FFA8@sda21(r0)
    .4byte 0xC022CFC8 # lfs f1, lbl_8053FF68@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480002BC # b .L_802293FC
L_80229144:
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_8022916C
    .4byte 0xC042D008 # lfs f2, lbl_8053FFA8@sda21(r0)
    .4byte 0xC022CFC4 # lfs f1, lbl_8053FF64@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002CFCC # lfs f0, lbl_8053FF6C@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000294 # b .L_802293FC
L_8022916C:
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_80229190
    .4byte 0xC022D008 # lfs f1, lbl_8053FFA8@sda21(r0)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000270 # b .L_802293FC
L_80229190:
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_802291B8
    .4byte 0xC002D008 # lfs f0, lbl_8053FFA8@sda21(r0)
    .4byte 0xC022CFC8 # lfs f1, lbl_8053FF68@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000248 # b .L_802293FC
L_802291B8:
    cmpwi 0, 0xf
    .4byte 0x40820028 # bne .L_802291E4
    .4byte 0xC022D00C # lfs f1, lbl_8053FFAC@sda21(r0)
    .4byte 0xC002CFFC # lfs f0, lbl_8053FF9C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022D010 # lfs f1, lbl_8053FFB0@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002CFD0 # lfs f0, lbl_8053FF70@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800021C # b .L_802293FC
L_802291E4:
    cmpwi 0, 0x13
    .4byte 0x40820028 # bne .L_80229210
    .4byte 0xC022D014 # lfs f1, lbl_8053FFB4@sda21(r0)
    .4byte 0xC002CFFC # lfs f0, lbl_8053FF9C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022D018 # lfs f1, lbl_8053FFB8@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002CFD0 # lfs f0, lbl_8053FF70@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480001F0 # b .L_802293FC
L_80229210:
    cmpwi 0, 0x16
    .4byte 0x40820028 # bne .L_8022923C
    .4byte 0xC022D00C # lfs f1, lbl_8053FFAC@sda21(r0)
    .4byte 0xC002CFFC # lfs f0, lbl_8053FF9C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022D010 # lfs f1, lbl_8053FFB0@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002CFD0 # lfs f0, lbl_8053FF70@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480001C4 # b .L_802293FC
L_8022923C:
    cmpwi 0, 0x15
    .4byte 0x40820088 # bne .L_802292C8
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8022927C
    .4byte 0xC022D008 # lfs f1, lbl_8053FFA8@sda21(r0)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000184 # b .L_802293FC
L_8022927C:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800024 # blt .L_802292A8
    .4byte 0xC042D008 # lfs f2, lbl_8053FFA8@sda21(r0)
    .4byte 0xC022CFC4 # lfs f1, lbl_8053FF64@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002CFCC # lfs f0, lbl_8053FF6C@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000158 # b .L_802293FC
L_802292A8:
    .4byte 0xC002D008 # lfs f0, lbl_8053FFA8@sda21(r0)
    .4byte 0xC022CFC8 # lfs f1, lbl_8053FF68@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000138 # b .L_802293FC
L_802292C8:
    cmpwi 0, 0x23
    .4byte 0x40820088 # bne .L_80229354
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80229308
    .4byte 0xC022D008 # lfs f1, lbl_8053FFA8@sda21(r0)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480000F8 # b .L_802293FC
L_80229308:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800024 # blt .L_80229334
    .4byte 0xC002D008 # lfs f0, lbl_8053FFA8@sda21(r0)
    .4byte 0xC022CFC8 # lfs f1, lbl_8053FF68@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480000CC # b .L_802293FC
L_80229334:
    .4byte 0xC042D008 # lfs f2, lbl_8053FFA8@sda21(r0)
    .4byte 0xC022CFC4 # lfs f1, lbl_8053FF64@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002CFCC # lfs f0, lbl_8053FF6C@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480000AC # b .L_802293FC
L_80229354:
    cmpwi 0, 0x17
    .4byte 0x40820020 # bne .L_80229378
    .4byte 0xC022D008 # lfs f1, lbl_8053FFA8@sda21(r0)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000088 # b .L_802293FC
L_80229378:
    cmpwi 0, 0x18
    .4byte 0x40820020 # bne .L_8022939C
    .4byte 0xC022D008 # lfs f1, lbl_8053FFA8@sda21(r0)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000064 # b .L_802293FC
L_8022939C:
    cmpwi 0, 0x4
    .4byte 0x40820020 # bne .L_802293C0
    .4byte 0xC022D01C # lfs f1, lbl_8053FFBC@sda21(r0)
    .4byte 0xC002CFD8 # lfs f0, lbl_8053FF78@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000040 # b .L_802293FC
L_802293C0:
    cmpwi 0, 0x28
    .4byte 0x40820020 # bne .L_802293E4
    .4byte 0xC022D020 # lfs f1, lbl_8053FFC0@sda21(r0)
    .4byte 0xC002D024 # lfs f0, lbl_8053FFC4@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800001C # b .L_802293FC
L_802293E4:
    .4byte 0xC022D008 # lfs f1, lbl_8053FFA8@sda21(r0)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_802293FC:
    lwz 3, 0x90(31)
    clrlwi 0, 3, 25
    cmpwi 0, 0x28
    .4byte 0x40820010 # bne .L_80229418
    clrrwi 0, 3, 7
    ori 0, 0, 0x4
    stw 0, 0x90(31)
L_80229418:
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x108(31)
    stw 0, 0xb0(31)
    stb 3, 0x234(31)
    stb 3, 0x235(31)
    stb 3, 0x236(31)
    stb 3, 0x237(31)
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    cmpwi 0, 0xe
    .4byte 0x4082005C # bne .L_802294A8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CFD8 # lfs f1, lbl_8053FF78@sda21(r0)
    li 5, 0x553
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x24c(31)
    addi 4, 31, 0xc
    .4byte 0xC022CFD8 # lfs f1, lbl_8053FF78@sda21(r0)
    li 5, 0x4ee
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x250(31)
L_802294A8:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    cmpwi 0, 0x25
    .4byte 0x4082005C # bne .L_80229510
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CFD8 # lfs f1, lbl_8053FF78@sda21(r0)
    li 5, 0x553
    li 6, -0x1
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x24c(31)
    addi 4, 31, 0xc
    .4byte 0xC022CFD8 # lfs f1, lbl_8053FF78@sda21(r0)
    li 5, 0x4ee
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x250(31)
L_80229510:
    bl GetRoomConfigRecord
    lwz 0, 0x14(3)
    stw 0, 0x244(31)
    bl GetRoomConfigRecord
    lwz 0, 0x18(3)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    stw 0, 0x248(31)
    stfs 0, 0x258(31)
    stfs 0, 0x268(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x270(31)
    stfs 0, 0x264(31)
    stfs 0, 0x274(31)
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 0, 0x84(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80229578:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CF260@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CF260@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802295C8
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
L_802295C8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80229600
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
L_80229600:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80229638
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
L_80229638:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80229670
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
L_80229670:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802296A8
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
L_802296A8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802296E0
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
L_802296E0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80229718
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
L_80229718:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80229750
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
L_80229750:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80229788
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
L_80229788:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022979C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802297E0
    lis 5, lbl_804A6E20@ha
    li 4, 0x0
    addi 0, 5, lbl_804A6E20@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802297E0
    mr 3, 30
    bl dtor_80084580
L_802297E0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802297FC:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_80229890
L_80229830:
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
L_80229890:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80229830
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 5, 0x28(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 5, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 5, 0x3d(1)
    stb 5, 0x3e(1)
    stw 6, 0x40(1)
    stw 5, 0x44(1)
    stw 0, 0x48(1)
    lwz 0, 0x90(31)
    extrwi 0, 0, 6, 24
    cmplwi 0, 0xe
    .4byte 0x418105F0 # bgt .L_80229F00
    lis 3, jumptable_804A6E74@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A6E74@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8022998C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_8022998C:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x48000544 # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229A20
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229A20:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x480004B0 # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229AB4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229AB4:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x4800041C # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229B48
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229B48:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x48000388 # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229BDC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229BDC:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x480002F4 # b .L_80229F00
    li 3, 0x2
    li 0, 0x1
    stb 3, 0x2c(1)
    addi 29, 31, 0xc
    stb 0, 0x3d(1)
    lwz 0, 0x4(31)
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229C80
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    addi 7, 1, 0x10
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229C80:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x48000250 # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229D14
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229D14:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x480001BC # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229DA8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229DA8:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x48000128 # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229E3C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229E3C:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
    .4byte 0x48000094 # b .L_80229F00
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80229ED0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ADF0@ha
    addi 5, 3, lbl_8046ADF0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D038 # lfs f1, lbl_8053FFD8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80229ED0:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x234(31)
    bl fn_803075AC
L_80229F00:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80229F1C:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8046ACC8@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_8046ACC8@l
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    lwz 3, 0x230(3)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
    lwz 5, 0x90(31)
    extrwi 0, 5, 6, 24
    cmplwi 0, 0xe
    .4byte 0x418108C0 # bgt .L_8022A81C
    lis 3, jumptable_804A6EB0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A6EB0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x41810010 # bgt .L_80229F90
    li 0, 0x85
    stw 0, 0x234(31)
    .4byte 0x48000890 # b .L_8022A81C
L_80229F90:
    cmplwi 0, 0x4
    .4byte 0x41810010 # bgt .L_80229FA4
    li 0, 0x86
    stw 0, 0x234(31)
    .4byte 0x4800087C # b .L_8022A81C
L_80229FA4:
    cmplwi 0, 0x6
    .4byte 0x41810010 # bgt .L_80229FB8
    li 0, 0x87
    stw 0, 0x234(31)
    .4byte 0x48000868 # b .L_8022A81C
L_80229FB8:
    cmplwi 0, 0x8
    .4byte 0x41810010 # bgt .L_80229FCC
    li 0, 0x88
    stw 0, 0x234(31)
    .4byte 0x48000854 # b .L_8022A81C
L_80229FCC:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000848 # b .L_8022A81C
    clrlwi 3, 5, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x230(31)
    extrwi 3, 0, 3, 28
    addi 0, 3, 0x7d
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    clrlwi 29, 0, 30
    mr 3, 29
    bl fn_80237774
    lis 4, lbl_80529DEC@ha
    slwi 0, 29, 2
    addi 4, 4, lbl_80529DEC@l
    add 4, 4, 0
    lwz 0, 0xd8(4)
    cmpw 3, 0
    .4byte 0x408207F4 # bne .L_8022A81C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480007E8 # b .L_8022A81C
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x41810010 # bgt .L_8022A050
    li 0, 0x2ab
    stw 0, 0x234(31)
    .4byte 0x480007D0 # b .L_8022A81C
L_8022A050:
    cmplwi 0, 0x4
    .4byte 0x41810010 # bgt .L_8022A064
    li 0, 0x2ac
    stw 0, 0x234(31)
    .4byte 0x480007BC # b .L_8022A81C
L_8022A064:
    cmplwi 0, 0x6
    .4byte 0x41810010 # bgt .L_8022A078
    li 0, 0x2ad
    stw 0, 0x234(31)
    .4byte 0x480007A8 # b .L_8022A81C
L_8022A078:
    cmplwi 0, 0x8
    .4byte 0x41810010 # bgt .L_8022A08C
    li 0, 0x2ae
    stw 0, 0x234(31)
    .4byte 0x48000794 # b .L_8022A81C
L_8022A08C:
    cmplwi 0, 0xa
    .4byte 0x41810010 # bgt .L_8022A0A0
    li 0, 0x2ab
    stw 0, 0x234(31)
    .4byte 0x48000780 # b .L_8022A81C
L_8022A0A0:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000774 # b .L_8022A81C
    lfs 1, 0x10(31)
    lis 3, 0x19
    .4byte 0xC062D03C # lfs f3, lbl_8053FFDC@sda21(r0)
    li 4, 0x1aa
    addi 0, 3, 0x660d
    .4byte 0xC002D038 # lfs f0, lbl_8053FFD8@sda21(r0)
    fsubs 1, 1, 3
    .4byte 0xC042D040 # lfs f2, lbl_8053FFE0@sda21(r0)
    stfs 1, 0x10(31)
    stw 4, 0x234(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8022A12C
    lfs 0, 0xc(31)
    fsubs 0, 0, 3
    stfs 0, 0xc(31)
    .4byte 0x48000010 # b .L_8022A138
L_8022A12C:
    lfs 0, 0xc(31)
    fadds 0, 0, 3
    stfs 0, 0xc(31)
L_8022A138:
    lfs 1, 0x28(31)
    .4byte 0xC002D044 # lfs f0, lbl_8053FFE4@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4180001C # blt .L_8022A168
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x3b
    .4byte 0x418206B8 # beq .L_8022A81C
L_8022A168:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480006AC # b .L_8022A81C
    clrlwi 3, 5, 30
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0x8(3)
    .4byte 0xC002D048 # lfs f0, lbl_8053FFE8@sda21(r0)
    psq_st 2, 0xc(31), 0, 0
    stfs 1, 0x14(31)
    lfs 1, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    lwz 0, 0x230(31)
    cmplwi 0, 0xc
    .4byte 0x4180000C # blt .L_8022A1B0
    li 0, 0x0
    stw 0, 0x230(31)
L_8022A1B0:
    lis 3, 0xaaab
    lwz 0, 0x230(31)
    subi 3, 3, 0x5555
    mulhwu 0, 3, 0
    extrwi 3, 0, 16, 15
    addi 0, 3, 0x1c3
    stw 0, 0x234(31)
    lwz 3, 0x90(31)
    extrwi 0, 3, 6, 24
    cmpwi 0, 0xe
    .4byte 0x40820054 # bne .L_8022A22C
    lfs 1, 0xc(31)
    .4byte 0xC002D04C # lfs f0, lbl_8053FFEC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    bl fn_80239D38
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_8022A220
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8022A220
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_80236AB4
    clrlwi. 0, 3, 24
    .4byte 0x41820600 # beq .L_8022A81C
L_8022A220:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480005F4 # b .L_8022A81C
L_8022A22C:
    clrlwi 3, 3, 30
    bl fn_80235274
    clrlwi. 0, 3, 24
    .4byte 0x408205E4 # bne .L_8022A81C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480005D8 # b .L_8022A81C
    lwz 0, 0x230(31)
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_8022A2C4
    addi 29, 4, 0x0
    addi 30, 1, 0x24
    li 28, 0x0
L_8022A260:
    psq_l 0, 0xc(31), 0, 0
    mr 4, 30
    lfs 4, 0x14(31)
    li 7, 0x0
    lfs 2, 0x0(29)
    li 8, 0x1
    psq_st 0, 0x0(30), 0, 0
    lfs 0, 0x4(29)
    lfs 3, 0x24(1)
    lfs 1, 0x28(1)
    fadds 2, 3, 2
    stfs 4, 0x2c(1)
    fadds 0, 1, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x24(1)
    stfs 0, 0x28(1)
    lwz 0, 0x90(31)
    lwz 6, 0x4(31)
    clrlwi 5, 0, 30
    bl fn_802A20F0
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0x9
    .4byte 0x4180FFA4 # blt .L_8022A260
    .4byte 0x4800055C # b .L_8022A81C
L_8022A2C4:
    cmplwi 0, 0xb
    .4byte 0x40820074 # bne .L_8022A33C
    addi 29, 4, 0x48
    addi 30, 1, 0x18
    li 28, 0x0
L_8022A2D8:
    psq_l 0, 0xc(31), 0, 0
    mr 4, 30
    lfs 4, 0x14(31)
    li 7, 0x0
    lfs 2, 0x0(29)
    li 8, 0x1
    psq_st 0, 0x0(30), 0, 0
    lfs 0, 0x4(29)
    lfs 3, 0x18(1)
    lfs 1, 0x1c(1)
    fadds 2, 3, 2
    stfs 4, 0x20(1)
    fadds 0, 1, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x90(31)
    lwz 6, 0x4(31)
    clrlwi 5, 0, 30
    bl fn_802A20F0
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0xc
    .4byte 0x4180FFA4 # blt .L_8022A2D8
    .4byte 0x480004E4 # b .L_8022A81C
L_8022A33C:
    cmplwi 0, 0x15
    .4byte 0x408204DC # bne .L_8022A81C
    addi 29, 4, 0xa8
    addi 30, 1, 0xc
    li 28, 0x0
L_8022A350:
    psq_l 0, 0xc(31), 0, 0
    mr 4, 30
    lfs 4, 0x14(31)
    li 7, 0x0
    lfs 2, 0x0(29)
    li 8, 0x1
    psq_st 0, 0x0(30), 0, 0
    lfs 0, 0x4(29)
    lfs 3, 0xc(1)
    lfs 1, 0x10(1)
    fadds 2, 3, 2
    stfs 4, 0x14(1)
    fadds 0, 1, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 0, 0x90(31)
    lwz 6, 0x4(31)
    clrlwi 5, 0, 30
    bl fn_802A20F0
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0x10
    .4byte 0x4180FFA4 # blt .L_8022A350
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000464 # b .L_8022A81C
    clrlwi 3, 5, 30
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    .4byte 0xC022D050 # lfs f1, lbl_8053FFF0@sda21(r0)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002D054 # lfs f0, lbl_8053FFF4@sda21(r0)
    stfs 2, 0x14(31)
    lfs 2, 0xc(31)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022FA80
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8022A41C
    lwz 0, 0x90(31)
    extrwi 0, 0, 6, 24
    cmpwi 0, 0x8
    .4byte 0x408200F4 # bne .L_8022A50C
L_8022A41C:
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x418003F8 # blt .L_8022A81C
    lwz 0, 0x234(31)
    cmpwi 0, 0x2a3
    .4byte 0x408203EC # bne .L_8022A81C
    li 0, 0x2
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022F340
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    slwi 0, 3, 1
    lbz 3, 0x83(4)
    sraw 0, 3, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8022A470
    li 0, 0x2a5
    stw 0, 0x234(31)
    .4byte 0x480003B0 # b .L_8022A81C
L_8022A470:
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8037E694
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8022A4AC
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8022A4A0
    li 0, 0x2a5
    stw 0, 0x234(31)
    .4byte 0x48000380 # b .L_8022A81C
L_8022A4A0:
    li 0, 0x2a8
    stw 0, 0x234(31)
    .4byte 0x48000374 # b .L_8022A81C
L_8022A4AC:
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8037E694
    clrlwi 0, 3, 24
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_8022A4E8
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8022A4DC
    li 0, 0x2a4
    stw 0, 0x234(31)
    .4byte 0x48000344 # b .L_8022A81C
L_8022A4DC:
    li 0, 0x2a5
    stw 0, 0x234(31)
    .4byte 0x48000338 # b .L_8022A81C
L_8022A4E8:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8022A500
    li 0, 0x2a5
    stw 0, 0x234(31)
    .4byte 0x48000320 # b .L_8022A81C
L_8022A500:
    li 0, 0x2a8
    stw 0, 0x234(31)
    .4byte 0x48000314 # b .L_8022A81C
L_8022A50C:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000308 # b .L_8022A81C
    clrlwi 3, 5, 30
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    .4byte 0xC022D050 # lfs f1, lbl_8053FFF0@sda21(r0)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002D054 # lfs f0, lbl_8053FFF4@sda21(r0)
    stfs 2, 0x14(31)
    lfs 2, 0xc(31)
    fsubs 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022FA80
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8022A578
    lwz 0, 0x90(31)
    extrwi 0, 0, 6, 24
    cmpwi 0, 0x9
    .4byte 0x408200F4 # bne .L_8022A668
L_8022A578:
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x4081029C # ble .L_8022A81C
    lwz 0, 0x234(31)
    cmpwi 0, 0x2a3
    .4byte 0x40820290 # bne .L_8022A81C
    li 0, 0x2
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022F340
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    slwi 0, 3, 1
    lbz 3, 0x83(4)
    sraw 0, 3, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8022A5CC
    li 0, 0x2a6
    stw 0, 0x234(31)
    .4byte 0x48000254 # b .L_8022A81C
L_8022A5CC:
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8037E694
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8022A608
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8022A5FC
    li 0, 0x2a6
    stw 0, 0x234(31)
    .4byte 0x48000224 # b .L_8022A81C
L_8022A5FC:
    li 0, 0x2a9
    stw 0, 0x234(31)
    .4byte 0x48000218 # b .L_8022A81C
L_8022A608:
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8037E694
    clrlwi 0, 3, 24
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_8022A644
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8022A638
    li 0, 0x2a7
    stw 0, 0x234(31)
    .4byte 0x480001E8 # b .L_8022A81C
L_8022A638:
    li 0, 0x2a6
    stw 0, 0x234(31)
    .4byte 0x480001DC # b .L_8022A81C
L_8022A644:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8022A65C
    li 0, 0x2a6
    stw 0, 0x234(31)
    .4byte 0x480001C4 # b .L_8022A81C
L_8022A65C:
    li 0, 0x2a9
    stw 0, 0x234(31)
    .4byte 0x480001B8 # b .L_8022A81C
L_8022A668:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001AC # b .L_8022A81C
    clrlwi 3, 5, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x41810010 # bgt .L_8022A6A4
    li 0, 0x2f5
    stw 0, 0x234(31)
    .4byte 0x4800000C # b .L_8022A6AC
L_8022A6A4:
    li 0, 0x2f6
    stw 0, 0x234(31)
L_8022A6AC:
    lwz 0, 0x230(31)
    cmplwi 0, 0x4
    .4byte 0x40810168 # ble .L_8022A81C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800015C # b .L_8022A81C
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x41810010 # bgt .L_8022A6DC
    li 0, 0x306
    stw 0, 0x234(31)
    .4byte 0x48000144 # b .L_8022A81C
L_8022A6DC:
    cmplwi 0, 0x4
    .4byte 0x41810010 # bgt .L_8022A6F0
    li 0, 0x307
    stw 0, 0x234(31)
    .4byte 0x48000130 # b .L_8022A81C
L_8022A6F0:
    cmplwi 0, 0x6
    .4byte 0x41810010 # bgt .L_8022A704
    li 0, 0x308
    stw 0, 0x234(31)
    .4byte 0x4800011C # b .L_8022A81C
L_8022A704:
    cmplwi 0, 0x8
    .4byte 0x41810010 # bgt .L_8022A718
    li 0, 0x309
    stw 0, 0x234(31)
    .4byte 0x48000108 # b .L_8022A81C
L_8022A718:
    cmplwi 0, 0xa
    .4byte 0x41810010 # bgt .L_8022A72C
    li 0, 0x30a
    stw 0, 0x234(31)
    .4byte 0x480000F4 # b .L_8022A81C
L_8022A72C:
    cmplwi 0, 0xc
    .4byte 0x41810010 # bgt .L_8022A740
    li 0, 0x30b
    stw 0, 0x234(31)
    .4byte 0x480000E0 # b .L_8022A81C
L_8022A740:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000D4 # b .L_8022A81C
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x41810010 # bgt .L_8022A764
    li 0, 0x30c
    stw 0, 0x234(31)
    .4byte 0x480000BC # b .L_8022A81C
L_8022A764:
    cmplwi 0, 0x4
    .4byte 0x41810010 # bgt .L_8022A778
    li 0, 0x30d
    stw 0, 0x234(31)
    .4byte 0x480000A8 # b .L_8022A81C
L_8022A778:
    cmplwi 0, 0x6
    .4byte 0x41810010 # bgt .L_8022A78C
    li 0, 0x30e
    stw 0, 0x234(31)
    .4byte 0x48000094 # b .L_8022A81C
L_8022A78C:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000088 # b .L_8022A81C
    lwz 0, 0x230(31)
    cmplwi 0, 0x2
    .4byte 0x41810010 # bgt .L_8022A7B0
    li 0, 0x300
    stw 0, 0x234(31)
    .4byte 0x48000070 # b .L_8022A81C
L_8022A7B0:
    cmplwi 0, 0x4
    .4byte 0x41810010 # bgt .L_8022A7C4
    li 0, 0x301
    stw 0, 0x234(31)
    .4byte 0x4800005C # b .L_8022A81C
L_8022A7C4:
    cmplwi 0, 0x6
    .4byte 0x41810010 # bgt .L_8022A7D8
    li 0, 0x302
    stw 0, 0x234(31)
    .4byte 0x48000048 # b .L_8022A81C
L_8022A7D8:
    cmplwi 0, 0x8
    .4byte 0x41810010 # bgt .L_8022A7EC
    li 0, 0x303
    stw 0, 0x234(31)
    .4byte 0x48000034 # b .L_8022A81C
L_8022A7EC:
    cmplwi 0, 0xa
    .4byte 0x41810010 # bgt .L_8022A800
    li 0, 0x304
    stw 0, 0x234(31)
    .4byte 0x48000020 # b .L_8022A81C
L_8022A800:
    cmplwi 0, 0xc
    .4byte 0x41810010 # bgt .L_8022A814
    li 0, 0x305
    stw 0, 0x234(31)
    .4byte 0x4800000C # b .L_8022A81C
L_8022A814:
    li 0, 0x0
    stb 0, 0x11c(31)
L_8022A81C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8022A83C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 3, 0x90(3)
    extrwi 0, 3, 6, 24
    cmpwi 0, 0x5
    .4byte 0x41820060 # beq .L_8022A8BC
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_8022A884
    clrlwi 3, 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8022A8BC
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480002AC # b .L_8022AB2C
L_8022A884:
    cmpwi 0, 0x6
    .4byte 0x41820034 # beq .L_8022A8BC
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_8022A8BC
    cmpwi 0, 0x8
    .4byte 0x41820024 # beq .L_8022A8BC
    cmpwi 0, 0x9
    .4byte 0x4182001C # beq .L_8022A8BC
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8022A8BC
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000274 # b .L_8022AB2C
L_8022A8BC:
    lwz 0, 0x90(31)
    extrwi 0, 0, 6, 24
    cmpwi 0, 0x3
    .4byte 0x408200F0 # bne .L_8022A9B8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 0, 0x4330
    lis 3, 0x19
    .4byte 0xC082D038 # lfs f4, lbl_8053FFD8@sda21(r0)
    lwz 5, 0xb4(6)
    addi 4, 3, 0x660d
    .4byte 0xC0A2D04C # lfs f5, lbl_8053FFEC@sda21(r0)
    mullw 3, 5, 4
    stw 0, 0x18(1)
    .4byte 0xC862D060 # lfd f3, lbl_80540000@sda21(r0)
    .4byte 0xC022D040 # lfs f1, lbl_8053FFE0@sda21(r0)
    stw 0, 0x28(1)
    .4byte 0xC002D058 # lfs f0, lbl_8053FFF8@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 6, 0xc(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 2, 2, 4
    fmuls 2, 5, 2
    fctiwz 2, 2
    stfd 2, 0x10(1)
    lwz 0, 0x14(1)
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 3
    fsubs 1, 2, 1
    fadds 1, 6, 1
    stfs 1, 0xc(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 2, 0x10(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 4
    fmuls 1, 5, 1
    fctiwz 1, 1
    stfd 1, 0x20(1)
    lwz 0, 0x24(1)
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fsubs 0, 1, 0
    fadds 0, 2, 0
    stfs 0, 0x10(31)
    .4byte 0x48000048 # b .L_8022A9FC
L_8022A9B8:
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_8022A9D4
    lfs 1, 0x14(31)
    .4byte 0xC002D048 # lfs f0, lbl_8053FFE8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    .4byte 0x4800002C # b .L_8022A9FC
L_8022A9D4:
    cmpwi 0, 0xe
    .4byte 0x40820024 # bne .L_8022A9FC
    lfs 2, 0xc(31)
    .4byte 0xC022D04C # lfs f1, lbl_8053FFEC@sda21(r0)
    .4byte 0xC002D048 # lfs f0, lbl_8053FFE8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
L_8022A9FC:
    li 0, 0x0
    stw 0, 0x108(31)
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    lwz 4, 0x90(31)
    extrwi 0, 4, 6, 24
    cmplwi 0, 0xe
    .4byte 0x4181010C # bgt .L_8022AB24
    lis 3, jumptable_804A6EEC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A6EEC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x85
    stw 0, 0x234(31)
    .4byte 0x480000E8 # b .L_8022AB24
    li 0, 0x7d
    stw 0, 0x234(31)
    .4byte 0x480000DC # b .L_8022AB24
    li 0, 0x2ab
    stw 0, 0x234(31)
    .4byte 0x480000D0 # b .L_8022AB24
    li 0, 0x1aa
    stw 0, 0x234(31)
    .4byte 0x480000C4 # b .L_8022AB24
    li 0, 0x1c3
    stw 0, 0x234(31)
    .4byte 0x480000B8 # b .L_8022AB24
    clrlwi 3, 4, 30
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    li 0, 0x2a3
    lfs 2, 0x8(3)
    .4byte 0xC022D050 # lfs f1, lbl_8053FFF0@sda21(r0)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002D054 # lfs f0, lbl_8053FFF4@sda21(r0)
    stfs 2, 0x14(31)
    lfs 2, 0xc(31)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    stw 0, 0x234(31)
    .4byte 0x48000074 # b .L_8022AB24
    clrlwi 3, 4, 30
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    li 0, 0x2a3
    lfs 2, 0x8(3)
    .4byte 0xC022D050 # lfs f1, lbl_8053FFF0@sda21(r0)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002D054 # lfs f0, lbl_8053FFF4@sda21(r0)
    stfs 2, 0x14(31)
    lfs 2, 0xc(31)
    fsubs 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    stw 0, 0x234(31)
    .4byte 0x48000030 # b .L_8022AB24
    li 0, 0x2f5
    stw 0, 0x234(31)
    .4byte 0x48000024 # b .L_8022AB24
    li 0, 0x306
    stw 0, 0x234(31)
    .4byte 0x48000018 # b .L_8022AB24
    li 0, 0x30c
    stw 0, 0x234(31)
    .4byte 0x4800000C # b .L_8022AB24
    li 0, 0x300
    stw 0, 0x234(31)
L_8022AB24:
    li 0, 0x1
    stb 0, 0x11f(31)
L_8022AB2C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8022AB40:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CF360@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CF360@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022AB90
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
L_8022AB90:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022ABC8
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
L_8022ABC8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022AC00
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
L_8022AC00:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022AC38
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
L_8022AC38:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022AC70
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
L_8022AC70:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022ACA8
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
L_8022ACA8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022ACE0
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
L_8022ACE0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022AD18
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
L_8022AD18:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022AD50
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
L_8022AD50:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022AD64:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022AD88:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x19
    stw 0, 0x14(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    bl fn_8029D898
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022ADB0:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022ADC4
    li 3, 0x0
    blr
L_8022ADC4:
    lbz 3, 0x73(3)
    blr

fn_8022ADCC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    beqlr
    li 0, 0x0
    stb 0, 0x73(3)
    blr

fn_8022ADE4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    beqlr
    li 0, 0x1
    stb 0, 0x73(3)
    blr

fn_8022ADFC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AE10
    li 3, 0x0
    blr
L_8022AE10:
    .4byte 0x4082000C # bne .L_8022AE1C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AE20
L_8022AE1C:
    lbz 0, 0x6c(3)
L_8022AE20:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8022AE30
    li 3, 0x1
    blr
L_8022AE30:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AE40
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AE44
L_8022AE40:
    lbz 0, 0x6d(3)
L_8022AE44:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8022AE54
    li 3, 0x1
    blr
L_8022AE54:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AE64
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AE68
L_8022AE64:
    lbz 0, 0x6e(3)
L_8022AE68:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8022AE78
    li 3, 0x1
    blr
L_8022AE78:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AE88
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AE8C
L_8022AE88:
    lbz 0, 0x6f(3)
L_8022AE8C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8022AE9C
    li 3, 0x1
    blr
L_8022AE9C:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AEAC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AEB0
L_8022AEAC:
    lbz 0, 0x70(3)
L_8022AEB0:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8022AEC0
    li 3, 0x1
    blr
L_8022AEC0:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AED0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AED4
L_8022AED0:
    lbz 0, 0x71(3)
L_8022AED4:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8022AEE4
    li 3, 0x1
    blr
L_8022AEE4:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AEF4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AEF8
L_8022AEF4:
    lbz 0, 0x72(3)
L_8022AEF8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8022AF08
    li 3, 0x1
    blr
L_8022AF08:
    li 3, 0x0
    blr

fn_8022AF10:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AF24
    li 3, 0x0
    blr
L_8022AF24:
    lbz 3, 0x72(3)
    blr

fn_8022AF2C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    beqlr
    li 0, 0x0
    stb 0, 0x72(3)
    blr

fn_8022AF44:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    beqlr
    li 0, 0x1
    stb 0, 0x72(3)
    blr

fn_8022AF5C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AF70
    li 3, 0x0
    blr
L_8022AF70:
    lbz 3, 0x71(3)
    blr

fn_8022AF78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x418200B8 # beq .L_8022B04C
    li 31, 0x0
    li 30, 0x0
    stb 31, 0x71(3)
L_8022AFA4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022AFB8
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022AFF4
L_8022AFB8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022AFC8
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022AFF4
L_8022AFC8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022AFD8
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022AFF4
L_8022AFD8:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022AFF0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022AFF4
L_8022AFF0:
    lbz 0, 0xcac(4)
L_8022AFF4:
    clrlwi. 0, 0, 24
    .4byte 0x41820044 # beq .L_8022B03C
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_8024D98C
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_8024BAEC
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    li 4, 0x0
    lwzx 3, 3, 0
    bl fn_80248E94
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_8026FC8C
L_8022B03C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF5C # blt .L_8022AFA4
L_8022B04C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022B064:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820098 # beq .L_8022B118
    li 0, 0x1
    li 30, 0x0
    stb 0, 0x71(3)
    li 31, 0x0
L_8022B094:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B0A8
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022B0E4
L_8022B0A8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B0B8
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022B0E4
L_8022B0B8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B0C8
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022B0E4
L_8022B0C8:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B0E0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B0E4
L_8022B0E0:
    lbz 0, 0xcac(4)
L_8022B0E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8022B108
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_8024D98C
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_80248DD8
L_8022B108:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF80 # blt .L_8022B094
L_8022B118:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80229578
    .4byte fn_8022AB40

