# SAYA cluster, part 15/18 (Track A byte-match + overview -
# 0x12BC=4796B, the LARGEST piece of this actor). A major helper body -
# uses the global PRNG advance, the boss-defeat notifier fn_80138B7C
# (from GOMA), effect spawn fn_8013CC50, the confirmed lookup-table
# accessor fn_801EE8F4, the SPECIALIZED reward-spawn dispatcher
# fn_801F8544 (confirmed via GOLD/ALCE/TENN), the generic FourCC actor
# dispatcher fn_801F9484, the spatial-registry bulk-find fn_801F7818,
# the existing-instance-by-FourCC lookup fn_801F2718, its own private
# helper Saya_AdvanceCycleCounter (landed alongside), plus an extensive shared-
# library call list (fn_80138A30/801EEC98/801F0D20/801F0E34/801F666C/
# 801F6884/801F68E0/801F71A4/801F856C/8022B1C8/8022B1E0/8022EA0C/
# 8022FD8C/8022FE80/8022FEB8/802300EC/80230534/80230C6C/80239914/
# 8023DE58/8030C210/8037EFB4/8038470C/80384C58/803865B8/80388CAC/
# 8038AD24/80458508/80458FF0) not chased further given the size.
.section extab, "a"
.balign 4
.global etb_80007A1C
etb_80007A1C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007A1C, 8

.section extabindex, "a"
.balign 4
.global eti_800148A8
eti_800148A8:
    .4byte fn_801A68DC
    .4byte 0x000012BC
    .4byte etb_80007A1C
.size eti_800148A8, 12

.text
.balign 4
.global fn_801A68DC

fn_801A68DC:
    stwu 1, -0x2130(1)
    mflr 0
    stw 0, 0x2134(1)
    li 0, -0x1
    stw 31, 0x212c(1)
    stw 30, 0x2128(1)
    stw 29, 0x2124(1)
    mr 29, 3
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0xa0(1), 0, 0
    stw 0, 0x1c(1)
    lwz 0, 0x260(3)
    stfs 0, 0xa8(1)
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_801A693C
    lwz 4, 0x198(29)
    addi 6, 1, 0x1c
    addi 7, 1, 0x20
    li 5, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
L_801A693C:
    lfs 4, 0xc(29)
    addi 30, 1, 0x98
    lfs 1, 0xa4(1)
    stfs 4, 0x94(1)
    .4byte 0xC002B6A0 # lfs f0, lbl_8053E640@sda21(r0)
    lfs 5, 0x10(29)
    fsubs 0, 1, 0
    stfs 5, 0x98(1)
    lfs 1, 0x14(29)
    stfs 0, 0xa4(1)
    stfs 1, 0x9c(1)
    psq_l 2, 0xc(29), 0, 0
    lfs 1, 0x14(29)
    lfs 0, 0x60(29)
    psq_st 2, 0x88(1), 0, 0
    fadds 3, 0, 4
    stfs 0, 0x78(1)
    lfs 0, 0x64(29)
    stfs 1, 0x90(1)
    fadds 2, 0, 5
    stfs 0, 0x7c(1)
    lfs 0, 0x68(29)
    stfs 0, 0x80(1)
    fadds 1, 0, 4
    lfs 4, 0x6c(29)
    fadds 0, 4, 5
    stfs 4, 0x84(1)
    stfs 3, 0x78(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x80(1)
    stfs 0, 0x84(1)
    lwz 0, 0x250(29)
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_801A69D4
    lwz 4, 0x4(29)
    addi 3, 1, 0x78
    lwz 5, 0x198(29)
    bl fn_80239914
L_801A69D4:
    lwz 3, 0x70(29)
    addi 4, 29, 0xc
    lwz 0, 0x74(29)
    stw 3, 0x78(1)
    stw 0, 0x7c(1)
    lfs 3, 0x78(1)
    lwz 3, 0x78(29)
    lwz 0, 0x7c(29)
    lfs 2, 0x7c(1)
    stw 3, 0x80(1)
    stw 0, 0x84(1)
    lfs 1, 0x80(1)
    lfs 4, 0xc(29)
    lfs 0, 0x84(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x78(1)
    lfs 3, 0x10(29)
    fadds 2, 2, 3
    stfs 1, 0x80(1)
    fadds 0, 0, 3
    stfs 2, 0x7c(1)
    stfs 0, 0x84(1)
    lwz 0, 0x230(29)
    cmplwi 0, 0xd
    .4byte 0x41811100 # bgt .L_801A7B38
    lis 3, jumptable_804A2E84@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A2E84@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x260(29)
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_801A6AE4
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801A6A7C
    lfs 1, 0x20(1)
    .4byte 0xC002B6A4 # lfs f0, lbl_8053E644@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_801A6AA8
L_801A6A7C:
    lwz 0, 0x250(29)
    cmpwi 0, 0x3
    .4byte 0x418210B4 # beq .L_801A7B38
    cmpwi 0, 0x1
    .4byte 0x418210AC # beq .L_801A7B38
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
    .4byte 0x48001094 # b .L_801A7B38
L_801A6AA8:
    .4byte 0xC002B6A8 # lfs f0, lbl_8053E648@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41811088 # bgt .L_801A7B38
    lwz 0, 0x250(29)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_801A6AE4
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_801A6AE4
    cmpwi 0, 0x4
    .4byte 0x41820018 # beq .L_801A6AE4
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
L_801A6AE4:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x4082104C # bne .L_801A7B38
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    stw 3, 0x264(29)
    lwz 0, 0x264(29)
    cmpwi 0, 0x1
    .4byte 0x40810038 # ble .L_801A6B3C
    li 31, 0x1
    .4byte 0x48000024 # b .L_801A6B30
L_801A6B10:
    mr 3, 31
    bl fn_8023DE58
    mr 30, 3
    li 3, 0x0
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x40821054 # bne .L_801A7B7C
    addi 31, 31, 0x1
L_801A6B30:
    lwz 0, 0x264(29)
    cmpw 31, 0
    .4byte 0x4180FFD8 # blt .L_801A6B10
L_801A6B3C:
    lwz 0, 0x260(29)
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_801A6BCC
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801A6B64
    lfs 1, 0x20(1)
    .4byte 0xC002B6A4 # lfs f0, lbl_8053E644@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_801A6B90
L_801A6B64:
    lwz 0, 0x250(29)
    cmpwi 0, 0x3
    .4byte 0x41820FCC # beq .L_801A7B38
    cmpwi 0, 0x1
    .4byte 0x41820FC4 # beq .L_801A7B38
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
    .4byte 0x48000FAC # b .L_801A7B38
L_801A6B90:
    .4byte 0xC002B6A8 # lfs f0, lbl_8053E648@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810FA0 # bgt .L_801A7B38
    lwz 0, 0x250(29)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_801A6BCC
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_801A6BCC
    cmpwi 0, 0x4
    .4byte 0x41820018 # beq .L_801A6BCC
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
L_801A6BCC:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820F64 # bne .L_801A7B38
    lwz 4, 0x4(29)
    addi 3, 1, 0x78
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    stw 3, 0x268(29)
    lwz 3, 0x268(29)
    cmpwi 3, 0x0
    .4byte 0x41800F34 # blt .L_801A7B38
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820F28 # beq .L_801A7B38
    lwz 0, 0x260(29)
    li 4, 0x422
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_801A6C28
    li 4, 0x41a
L_801A6C28:
    lwz 5, 0x198(29)
    addi 7, 1, 0x6c
    lwz 6, 0x4(29)
    li 8, 0x100
    psq_l 1, 0xa0(1), 0, 0
    lfs 0, 0xa8(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x74(1)
    lwz 3, 0x268(29)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820EE4 # beq .L_801A7B38
    lwz 6, 0x268(29)
    mr 3, 29
    addi 4, 1, 0x30
    addi 5, 1, 0x18
    addi 6, 6, 0x1
    bl fn_801EE8F4
    lfs 1, 0x18(1)
    .4byte 0xC002B68C # lfs f0, lbl_8053E62C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_801A6D10
    lfs 1, 0x30(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x34(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B6AC # lfs f0, lbl_8053E64C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x2110(1)
    lwz 0, 0x2114(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_801A6CC4
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_801A6CD0
L_801A6CC4:
    li 0, 0x3
    stw 0, 0x98(29)
    .4byte 0x48000044 # b .L_801A6D10
L_801A6CD0:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_801A6CEC
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_801A6CEC
    li 0, 0x1
    stw 0, 0x98(29)
    .4byte 0x48000028 # b .L_801A6D10
L_801A6CEC:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_801A6D08
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_801A6D08
    li 0, 0x2
    stw 0, 0x98(29)
    .4byte 0x4800000C # b .L_801A6D10
L_801A6D08:
    li 0, 0x0
    stw 0, 0x98(29)
L_801A6D10:
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x48000E20 # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A6D60
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x88(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x8c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x90(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A6D60:
    lwz 4, 0x4(29)
    addi 3, 1, 0x78
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x268(29)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820DB4 # beq .L_801A7B38
    lwz 3, 0x268(29)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x4182002C # beq .L_801A6DC0
    .4byte 0x40800DA0 # bge .L_801A7B38
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_801A6DA8
    .4byte 0x48000D94 # b .L_801A7B38
L_801A6DA8:
    lwz 3, 0x268(29)
    li 4, 0x41b
    bl fn_8038470C
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x48000D7C # b .L_801A7B38
L_801A6DC0:
    lwz 3, 0x268(29)
    li 4, 0x41c
    bl fn_8038470C
    li 0, 0xc
    stw 0, 0x230(29)
    .4byte 0x48000D64 # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A6E1C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x88(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x8c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x90(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A6E1C:
    lwz 4, 0x4(29)
    addi 3, 1, 0x78
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x268(29)
    lwz 4, 0x198(29)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820CF4 # beq .L_801A7B38
    li 3, 0x0
    bl fn_80230534
    li 0, 0xe10
    mr 3, 29
    stw 0, 0x258(29)
    li 4, 0x3a
    bl fn_801F0D20
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x7
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    bl SetSessionFlag_0x6e
    li 3, 0x0
    stw 3, 0x244(29)
    stw 3, 0x248(29)
    stw 3, 0x24c(29)
    stw 3, 0x238(29)
    stw 3, 0x23c(29)
    lwz 0, 0x250(29)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_801A6EB4
    li 0, 0x4
    stw 0, 0x250(29)
    stw 3, 0x234(29)
    stw 3, 0x240(29)
L_801A6EB4:
    li 0, 0x4
    stw 0, 0x230(29)
    .4byte 0x48000C7C # b .L_801A7B38
    lwz 3, 0x258(29)
    li 0, -0x1
    subi 3, 3, 0x1
    stw 3, 0x258(29)
    stw 0, 0x270(29)
    lwz 0, 0x258(29)
    clrlwi. 0, 0, 28
    .4byte 0x40820024 # bne .L_801A6F00
    bl SpatialRegistry_GetBase
    lis 4, 0x4649
    lwz 5, 0x4(29)
    addi 4, 4, 0x5348
    addi 6, 1, 0x110c
    li 7, -0x1
    bl fn_801F7818
    stw 3, 0x270(29)
L_801A6F00:
    lwz 0, 0x258(29)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801A6F18
    lwz 0, 0x270(29)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_801A6F8C
L_801A6F18:
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820C14 # beq .L_801A7B38
    li 30, 0x0
L_801A6F2C:
    mr 3, 30
    bl fn_80230C6C
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFF0 # blt .L_801A6F2C
    mr 3, 29
    li 4, 0x3b
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458508
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801A6F74
    li 0, 0x0
    stw 0, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
L_801A6F74:
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x244(29)
    stw 3, 0x248(29)
    stw 0, 0x230(29)
    .4byte 0x48000BB0 # b .L_801A7B38
L_801A6F8C:
    lwz 0, 0x26c(29)
    cmpwi 0, 0x0
    .4byte 0x408001A8 # bge .L_801A713C
    lwz 0, 0x250(29)
    cmpwi 0, 0x4
    .4byte 0x4082019C # bne .L_801A713C
    .4byte 0xC022B6B0 # lfs f1, lbl_8053E650@sda21(r0)
    lis 4, 0x4649
    .4byte 0xC002B6B4 # lfs f0, lbl_8053E654@sda21(r0)
    mr 3, 29
    stfs 1, 0x60(29)
    addi 4, 4, 0x5348
    .4byte 0xC022B6B8 # lfs f1, lbl_8053E658@sda21(r0)
    stfs 0, 0x64(29)
    .4byte 0xC002B6BC # lfs f0, lbl_8053E65C@sda21(r0)
    stfs 1, 0x68(29)
    stfs 0, 0x6c(29)
    bl fn_801F2718
    stw 3, 0x26c(29)
    .4byte 0xC022B6C0 # lfs f1, lbl_8053E660@sda21(r0)
    .4byte 0xC002B6C4 # lfs f0, lbl_8053E664@sda21(r0)
    stfs 1, 0x60(29)
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
    lwz 31, 0x26c(29)
    cmpwi 31, 0x0
    .4byte 0x41800144 # blt .L_801A713C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820130 # beq .L_801A713C
    lfs 1, 0x10(3)
    lfs 0, 0x10(29)
    lfs 2, 0xc(3)
    fsubs 3, 1, 0
    lfs 1, 0xc(29)
    .4byte 0xC002B6B4 # lfs f0, lbl_8053E654@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801A7084
    frsqrte 1, 4
    .4byte 0xC862B6C8 # lfd f3, lbl_8053E668@sda21(r0)
    .4byte 0xC842B6D0 # lfd f2, lbl_8053E670@sda21(r0)
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
    .4byte 0x48000088 # b .L_801A7108
L_801A7084:
    .4byte 0xC802B6D8 # lfd f0, lbl_8053E678@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801A709C
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
    .4byte 0x48000070 # b .L_801A7108
L_801A709C:
    stfs 4, 0x10(1)
    lis 0, 0x7f80
    lwz 5, 0x10(1)
    rlwinm 4, 5, 0, 1, 8
    cmpw 4, 0
    .4byte 0x41820014 # beq .L_801A70C4
    .4byte 0x40800040 # bge .L_801A70F4
    cmpwi 4, 0x0
    .4byte 0x41820020 # beq .L_801A70DC
    .4byte 0x48000034 # b .L_801A70F4
L_801A70C4:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_801A70D4
    li 0, 0x1
    .4byte 0x48000028 # b .L_801A70F8
L_801A70D4:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801A70F8
L_801A70DC:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_801A70EC
    li 0, 0x5
    .4byte 0x48000010 # b .L_801A70F8
L_801A70EC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801A70F8
L_801A70F4:
    li 0, 0x4
L_801A70F8:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A7108
    lis 4, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(4)
L_801A7108:
    .4byte 0xC002B6B8 # lfs f0, lbl_8053E658@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40810010 # ble .L_801A7120
    li 0, -0x1
    stw 0, 0x26c(29)
    .4byte 0x48000020 # b .L_801A713C
L_801A7120:
    .4byte 0xC002B6B4 # lfs f0, lbl_8053E654@sda21(r0)
    stfs 0, 0x60(1)
    stfs 0, 0x64(1)
    psq_l 1, 0x60(1), 0, 0
    stfs 0, 0x68(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801A713C:
    lwz 31, 0x26c(29)
    cmpwi 31, 0x0
    .4byte 0x41800210 # blt .L_801A7354
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x418201F4 # beq .L_801A734C
    lfs 1, 0x10(31)
    lfs 0, 0x10(29)
    lfs 2, 0xc(31)
    fsubs 3, 1, 0
    lfs 1, 0xc(29)
    .4byte 0xC002B6B4 # lfs f0, lbl_8053E654@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801A71D0
    frsqrte 1, 4
    .4byte 0xC862B6C8 # lfd f3, lbl_8053E668@sda21(r0)
    .4byte 0xC842B6D0 # lfd f2, lbl_8053E670@sda21(r0)
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
    .4byte 0x48000088 # b .L_801A7254
L_801A71D0:
    .4byte 0xC802B6D8 # lfd f0, lbl_8053E678@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801A71E8
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801A7254
L_801A71E8:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801A7210
    .4byte 0x40800040 # bge .L_801A7240
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801A7228
    .4byte 0x48000034 # b .L_801A7240
L_801A7210:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A7220
    li 0, 0x1
    .4byte 0x48000028 # b .L_801A7244
L_801A7220:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801A7244
L_801A7228:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A7238
    li 0, 0x5
    .4byte 0x48000010 # b .L_801A7244
L_801A7238:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801A7244
L_801A7240:
    li 0, 0x4
L_801A7244:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A7254
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801A7254:
    .4byte 0xC002B6E0 # lfs f0, lbl_8053E680@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800080 # bge .L_801A72DC
    lwz 0, 0x250(29)
    cmpwi 0, 0x5
    .4byte 0x41820018 # beq .L_801A7280
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
L_801A7280:
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x5c
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022B688 # lfs f1, lbl_8053E628@sda21(r0)
    li 5, 0x54e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x25c(29)
    li 3, 0x0
    li 0, -0x1
    addi 4, 4, 0x1
    stw 4, 0x25c(29)
    stb 3, 0x11c(31)
    stw 0, 0x26c(29)
    .4byte 0x4800007C # b .L_801A7354
L_801A72DC:
    .4byte 0xC002B6B4 # lfs f0, lbl_8053E654@sda21(r0)
    addi 3, 1, 0x94
    .4byte 0xC042B6E4 # lfs f2, lbl_8053E684@sda21(r0)
    stfs 0, 0x54(1)
    .4byte 0xC062B688 # lfs f3, lbl_8053E628@sda21(r0)
    stfs 0, 0x58(1)
    psq_l 1, 0x54(1), 0, 0
    stfs 0, 0x5c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    lfs 0, 0xc(31)
    stfs 0, 0x94(1)
    lfs 0, 0x10(31)
    stfs 0, 0x98(1)
    lfs 0, 0x14(31)
    stfs 0, 0x9c(1)
    lfs 1, 0xc(29)
    bl fn_801F71A4
    lfs 1, 0x10(29)
    mr 3, 30
    .4byte 0xC042B6E4 # lfs f2, lbl_8053E684@sda21(r0)
    .4byte 0xC062B688 # lfs f3, lbl_8053E628@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0x94(1), 0, 0
    lfs 0, 0x9c(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x4800000C # b .L_801A7354
L_801A734C:
    li 0, -0x1
    stw 0, 0x26c(29)
L_801A7354:
    lis 3, 0x8889
    lwz 5, 0x258(29)
    subi 0, 3, 0x7777
    mulhw 0, 0, 5
    add 3, 0, 5
    srawi 0, 3, 5
    srwi 4, 0, 31
    add 0, 0, 4
    cmpwi 0, 0xb
    .4byte 0x418107C0 # bgt .L_801A7B38
    srawi 0, 3, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 0, 0, 5
    .4byte 0x408207A8 # bne .L_801A7B38
    cmpwi 5, 0x3c
    .4byte 0x408107A0 # ble .L_801A7B38
    mr 3, 29
    li 4, 0x3f
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80458508
    .4byte 0x48000784 # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x244(29)
    addi 0, 3, 0x1
    stw 0, 0x244(29)
    lwz 0, 0x244(29)
    cmpwi 0, 0x32
    .4byte 0x40810760 # ble .L_801A7B38
    li 0, 0x33
    li 3, 0x0
    stw 0, 0x244(29)
    bl fn_8023DE58
    mr 30, 3
    li 3, 0x0
    bl fn_8022EA0C
    lwz 5, 0x198(29)
    mr 4, 30
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x41800720 # blt .L_801A7B38
    lwz 30, 0x198(29)
    li 3, 0x0
    lwz 31, 0x4(29)
    psq_l 1, 0xa0(1), 0, 0
    lfs 0, 0xa8(1)
    psq_st 1, 0x48(1), 0, 0
    stfs 0, 0x50(1)
    bl fn_8022EA0C
    mr 5, 30
    mr 6, 31
    addi 7, 1, 0x48
    li 4, 0x41d
    li 8, 0x102
    bl fn_8038AD24
    li 0, 0x6
    stw 0, 0x230(29)
    .4byte 0x480006DC # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    li 3, 0x0
    bl fn_8023DE58
    mr 30, 3
    li 3, 0x0
    bl fn_8022EA0C
    lwz 5, 0x198(29)
    mr 4, 30
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_8022EA0C
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820694 # beq .L_801A7B38
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    lwz 0, 0x25c(29)
    cmpwi 0, 0xa
    .4byte 0x41800018 # blt .L_801A74D0
    li 3, 0x0
    bl fn_8022EA0C
    li 4, 0x41e
    bl fn_8038470C
    .4byte 0x48000014 # b .L_801A74E0
L_801A74D0:
    li 3, 0x0
    bl fn_8022EA0C
    li 4, 0x420
    bl fn_8038470C
L_801A74E0:
    li 0, 0x7
    stw 0, 0x230(29)
    .4byte 0x48000650 # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A7530
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x88(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x8c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x90(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A7530:
    li 3, 0x0
    bl fn_8023DE58
    mr 30, 3
    li 3, 0x0
    bl fn_8022EA0C
    lwz 5, 0x198(29)
    mr 4, 30
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_8022EA0C
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418205D0 # beq .L_801A7B38
    li 0, 0x32
    stw 0, 0x244(29)
    lwz 0, 0x25c(29)
    cmpwi 0, 0xa
    .4byte 0x418001C4 # blt .L_801A7740
    bl SpatialRegistry_GetBase
    lis 4, 0x5341
    lwz 5, 0x4(29)
    addi 4, 4, 0x5941
    addi 6, 1, 0x10c
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0x10c
    addi 5, 1, 0xac
    li 7, 0x0
    li 8, 0x0
    .4byte 0x48000044 # b .L_801A75F0
L_801A75B0:
    lwz 6, 0x0(4)
    cmplwi 6, 0x0
    .4byte 0x41820030 # beq .L_801A75E8
    lwz 0, 0x90(6)
    cmplwi 0, 0x2
    .4byte 0x40820024 # bne .L_801A75E8
    lfs 0, 0xc(6)
    addi 8, 8, 0x1
    lfs 1, 0x10(6)
    stfs 0, 0x0(5)
    lfs 0, 0x14(6)
    stfs 1, 0x4(5)
    stfs 0, 0x8(5)
    addi 5, 5, 0xc
L_801A75E8:
    addi 4, 4, 0x4
    addi 7, 7, 0x1
L_801A75F0:
    cmpw 7, 3
    .4byte 0x4080000C # bge .L_801A7600
    cmpwi 8, 0x7
    .4byte 0x4180FFB4 # blt .L_801A75B0
L_801A7600:
    cmpwi 8, 0x0
    .4byte 0x40810094 # ble .L_801A7698
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 8, 0x8000
    lis 0, 0x4330
    lwz 6, 0xb4(7)
    addi 4, 4, 0x660d
    stw 3, 0x2114(1)
    addi 5, 1, 0xac
    mullw 6, 6, 4
    .4byte 0xC842B698 # lfd f2, lbl_8053E638@sda21(r0)
    stw 0, 0x2110(1)
    addi 4, 1, 0xb0
    .4byte 0xC002B688 # lfs f0, lbl_8053E628@sda21(r0)
    addi 3, 1, 0xb4
    addis 6, 6, 0x3c6f
    lfd 1, 0x2110(1)
    subi 0, 6, 0xca1
    stw 0, 0xb4(7)
    fsubs 2, 1, 2
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x2118(1)
    lwz 0, 0x211c(1)
    mulli 0, 0, 0xc
    lfsx 2, 5, 0
    lfsx 1, 4, 0
    lfsx 0, 3, 0
    stfs 2, 0x94(1)
    stfs 1, 0x98(1)
    stfs 0, 0x9c(1)
L_801A7698:
    lwz 0, 0x25c(29)
    lis 30, 0x8
    cmpwi 0, 0x28
    .4byte 0x4081000C # ble .L_801A76B0
    addi 30, 30, 0x3
    .4byte 0x48000020 # b .L_801A76CC
L_801A76B0:
    cmpwi 0, 0x1e
    .4byte 0x4081000C # ble .L_801A76C0
    addi 30, 30, 0x2
    .4byte 0x48000010 # b .L_801A76CC
L_801A76C0:
    cmpwi 0, 0x14
    .4byte 0x40810008 # ble .L_801A76CC
    addi 30, 30, 0x1
L_801A76CC:
    bl SpatialRegistry_GetBase
    lis 4, 0x484e
    lwz 5, 0x4(29)
    mr 7, 30
    addi 6, 29, 0xc
    addi 4, 4, 0x5259
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 30, 3
    .4byte 0x41800028 # blt .L_801A771C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801A771C
    psq_l 1, 0x94(1), 0, 0
    lfs 0, 0x9c(1)
    psq_st 1, 0x2a4(3), 0, 0
    stfs 0, 0x2ac(3)
L_801A771C:
    li 3, 0x0
    stw 3, 0x244(29)
    lwz 0, 0x250(29)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_801A7740
    li 0, 0x4
    stw 0, 0x250(29)
    stw 3, 0x234(29)
    stw 3, 0x240(29)
L_801A7740:
    li 0, 0x8
    stw 0, 0x230(29)
    .4byte 0x480003F0 # b .L_801A7B38
    lwz 3, 0x244(29)
    addi 0, 3, 0x1
    stw 0, 0x244(29)
    lwz 0, 0x244(29)
    cmpwi 0, 0x32
    .4byte 0x408103D8 # ble .L_801A7B38
    lwz 0, 0x25c(29)
    cmpwi 0, 0xa
    .4byte 0x41800018 # blt .L_801A7784
    li 3, 0x0
    bl fn_8022EA0C
    li 4, 0x41f
    bl fn_8038470C
    .4byte 0x48000014 # b .L_801A7794
L_801A7784:
    li 3, 0x0
    bl fn_8022EA0C
    li 4, 0x421
    bl fn_8038470C
L_801A7794:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801A77B0
    li 0, 0x0
    stw 0, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
L_801A77B0:
    li 0, 0x9
    stw 0, 0x230(29)
    .4byte 0x48000380 # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A7800
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x88(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x8c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x90(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A7800:
    li 3, 0x0
    bl fn_8023DE58
    mr 30, 3
    li 3, 0x0
    bl fn_8022EA0C
    lwz 5, 0x198(29)
    mr 4, 30
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_8022EA0C
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820300 # beq .L_801A7B38
    li 3, 0x0
    bl fn_8022EA0C
    lwz 4, 0x198(29)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x418202E8 # beq .L_801A7B38
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    bl ClearSessionFlag_0x6e
    lwz 0, 0x250(29)
    cmpwi 0, 0x3
    .4byte 0x41820020 # beq .L_801A78A4
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_801A78A4
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x250(29)
    stw 0, 0x234(29)
    stw 0, 0x240(29)
L_801A78A4:
    lwz 0, 0x270(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801A78D0
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x23
    lwz 5, 0x4(29)
    addi 4, 4, 0x5059
    addi 6, 29, 0xc
    addi 7, 7, 0x7
    bl fn_801F8544
L_801A78D0:
    li 3, -0x1
    li 0, 0xa
    stw 3, 0x258(29)
    stw 0, 0x230(29)
    .4byte 0x48000258 # b .L_801A7B38
    lwz 0, 0x250(29)
    cmpwi 0, 0x3
    .4byte 0x4182024C # beq .L_801A7B38
    cmpwi 0, 0x1
    .4byte 0x41820244 # beq .L_801A7B38
    lwz 4, 0x4(29)
    addi 3, 1, 0x78
    lwz 5, 0x198(29)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    stw 3, 0x268(29)
    lwz 3, 0x268(29)
    cmpwi 3, 0x0
    .4byte 0x41800214 # blt .L_801A7B38
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820208 # beq .L_801A7B38
    lwz 0, 0x25c(29)
    li 4, 0x421
    cmpwi 0, 0xa
    .4byte 0x41800008 # blt .L_801A7948
    li 4, 0x41f
L_801A7948:
    lwz 5, 0x198(29)
    addi 7, 1, 0x3c
    lwz 6, 0x4(29)
    li 8, 0x100
    psq_l 1, 0xa0(1), 0, 0
    lfs 0, 0xa8(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x44(1)
    lwz 3, 0x268(29)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418201C4 # beq .L_801A7B38
    lwz 6, 0x268(29)
    mr 3, 29
    addi 4, 1, 0x24
    addi 5, 1, 0x14
    addi 6, 6, 0x1
    bl fn_801EE8F4
    lfs 1, 0x14(1)
    .4byte 0xC002B68C # lfs f0, lbl_8053E62C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_801A7A30
    lfs 1, 0x24(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x28(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B6AC # lfs f0, lbl_8053E64C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x2118(1)
    lwz 0, 0x211c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_801A79E4
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_801A79F0
L_801A79E4:
    li 0, 0x3
    stw 0, 0x98(29)
    .4byte 0x48000044 # b .L_801A7A30
L_801A79F0:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_801A7A0C
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_801A7A0C
    li 0, 0x1
    stw 0, 0x98(29)
    .4byte 0x48000028 # b .L_801A7A30
L_801A7A0C:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_801A7A28
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_801A7A28
    li 0, 0x2
    stw 0, 0x98(29)
    .4byte 0x4800000C # b .L_801A7A30
L_801A7A28:
    li 0, 0x0
    stw 0, 0x98(29)
L_801A7A30:
    li 0, 0xb
    stw 0, 0x230(29)
    .4byte 0x48000100 # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A7A80
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x88(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x8c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x90(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A7A80:
    lwz 4, 0x4(29)
    addi 3, 1, 0x78
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x268(29)
    lwz 4, 0x198(29)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_801A7B38
    li 0, 0xa
    stw 0, 0x230(29)
    .4byte 0x48000084 # b .L_801A7B38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A7AFC
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x88(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x8c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x90(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801A7AFC:
    lwz 4, 0x4(29)
    addi 3, 1, 0x78
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x268(29)
    lwz 4, 0x198(29)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801A7B38
    li 3, 0x0
    bl fn_80230534
    li 0, 0x0
    stw 0, 0x230(29)
L_801A7B38:
    lwz 3, 0x234(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A7B4C
    subi 0, 3, 0x1
    stw 0, 0x234(29)
L_801A7B4C:
    lwz 3, 0x238(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A7B60
    subi 0, 3, 0x1
    stw 0, 0x238(29)
L_801A7B60:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A7B74
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
L_801A7B74:
    mr 3, 29
    bl Saya_AdvanceCycleCounter
L_801A7B7C:
    lwz 0, 0x2134(1)
    lwz 31, 0x212c(1)
    lwz 30, 0x2128(1)
    lwz 29, 0x2124(1)
    mtlr 0
    addi 1, 1, 0x2130
    blr

