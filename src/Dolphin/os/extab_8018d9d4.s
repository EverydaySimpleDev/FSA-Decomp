# BPH2 cluster, part 4 - one dtk-fused block, 12 functions (9 have
# their own extab entry, 3 are extab-less leaves), landed together.
#
# - fn_8018D9D4 (Track A) - state-machine helper, small.
# - fn_8018DA6C (Track A, 0x204) - state-machine helper.
# - fn_8018DC70 (Track A, 0x35C) - uses the confirmed spatial-registry
#   bulk-find fn_801F7818, fn_80093340 (likely atan2, per SLK2 findings),
#   SpatialRegistry_GetBase, and several type-predicate helpers (fn_80230188/
#   fn_80236BEC/fn_8023DE58/fn_8023DFF4/fn_8023E724/Player_GetCapabilityFlagByIndex) shared
#   with FGN2's own fn_80189DEC - a "find/validate a target/anchor"
#   utility.
# - fn_8018DFCC (Track A, 0x340) - thin wrapper, calls fn_8018E30C then
#   fn_801F0E34.
# - fn_8018E30C (Track A, 0x2D8) - calls the confirmed effect-spawn
#   fn_8013CC50 and fn_801F0E34 - an effect-trigger helper.
# - fn_8018E5E4 (Track A, 0x2AC) - calls the per-room config accessor
#   GetRoomConfigRecord/fn_802D7440 and plays a sound via fn_80458F9C - a
#   room-config-gated one-shot sound trigger, same idiom as GOMA's
#   setParams intro-sound guard.
# - fn_8018E890 - empty stub (bare blr).
# - fn_8018E894 - trivial setter (this->0x234).
# - fn_8018E89C - wrapper: passes the global PRNG struct to fn_80138A30.
# - fn_8018E8C0 - trivial 3-float struct-copy accessor.
# - fn_8018E8DC - wrapper: GetRoomConfigRecord then fn_802D8050 (per-room
#   config record, extended query variant).
# - fn_8018E930 - wrapper: GetRoomConfigRecord then fn_802D800C (another
#   per-room config record query variant).
.section extab, "a"
.balign 4
.global etb_800076D4
etb_800076D4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800076D4, 8

.global etb_800076DC
etb_800076DC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800076DC, 8

.global etb_800076E4
etb_800076E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800076E4, 8

.global etb_800076EC
etb_800076EC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800076EC, 8

.global etb_800076F4
etb_800076F4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800076F4, 8

.global etb_800076FC
etb_800076FC:
    .4byte 0x38CA0000
    .4byte 0x00000000
.size etb_800076FC, 8

.global etb_80007704
etb_80007704:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_80007704, 8

.global etb_8000770C
etb_8000770C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000770C, 8

.global etb_80007714
etb_80007714:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007714, 8

.section extabindex, "a"
.balign 4
.global eti_80014464
eti_80014464:
    .4byte fn_8018D9D4
    .4byte 0x00000098
    .4byte etb_800076EC
.size eti_80014464, 12

.global eti_80014470
eti_80014470:
    .4byte fn_8018DA6C
    .4byte 0x00000204
    .4byte etb_800076F4
.size eti_80014470, 12

.global eti_8001447C
eti_8001447C:
    .4byte fn_8018DC70
    .4byte 0x0000035C
    .4byte etb_800076FC
.size eti_8001447C, 12

.global eti_80014488
eti_80014488:
    .4byte fn_8018DFCC
    .4byte 0x00000340
    .4byte etb_80007704
.size eti_80014488, 12

.global eti_80014494
eti_80014494:
    .4byte fn_8018E30C
    .4byte 0x000002D8
    .4byte etb_8000770C
.size eti_80014494, 12

.global eti_800144A0
eti_800144A0:
    .4byte fn_8018E5E4
    .4byte 0x000002AC
    .4byte etb_80007714
.size eti_800144A0, 12

.global eti_800144AC
eti_800144AC:
    .4byte fn_8018E89C
    .4byte 0x00000024
    .4byte etb_800076D4
.size eti_800144AC, 12

.global eti_800144B8
eti_800144B8:
    .4byte fn_8018E8DC
    .4byte 0x00000054
    .4byte etb_800076DC
.size eti_800144B8, 12

.global eti_800144C4
eti_800144C4:
    .4byte fn_8018E930
    .4byte 0x00000034
    .4byte etb_800076E4
.size eti_800144C4, 12

.text
.balign 4
.global fn_8018D9D4
.global fn_8018DA6C
.global fn_8018DC70
.global fn_8018DFCC
.global fn_8018E30C
.global fn_8018E5E4
.global fn_8018E890
.global fn_8018E894
.global fn_8018E89C
.global fn_8018E8C0
.global fn_8018E8DC
.global fn_8018E930

fn_8018D9D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820060 # beq .L_8018DA50
    lis 3, lbl_804A1E50@ha
    addi 0, 3, lbl_804A1E50@l
    stw 0, 0x0(30)
    lwz 3, 0x328(30)
    bl fn_801EE434
    lwz 3, 0x32c(30)
    bl fn_801EE434
    lwz 3, 0x330(30)
    bl fn_801EE434
    lwz 0, 0x26c(30)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8018DA34
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    bl fn_8022ADCC
L_8018DA34:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8018DA50
    mr 3, 30
    bl dtor_80084580
L_8018DA50:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8018DA6C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lbz 0, 0x27b(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8018DA9C
    li 3, 0x0
    .4byte 0x480001BC # b .L_8018DC54
L_8018DA9C:
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 15
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820198 # beq .L_8018DC48
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 10
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820180 # beq .L_8018DC48
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 5
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820168 # beq .L_8018DC48
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    srwi 4, 0, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820150 # beq .L_8018DC48
    li 29, 0x0
L_8018DB00:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_8018DB64
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820044 # bne .L_8018DB64
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_8018DB64
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8018DB64
    lbz 0, 0x29c(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8018DB64
    mr 3, 29
    li 4, 0x0
    bl fn_8023061C
    li 0, 0x0
    stb 0, 0x29c(31)
L_8018DB64:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF94 # blt .L_8018DB00
    .4byte 0xC022B158 # lfs f1, lbl_8053E0F8@sda21(r0)
    lfs 0, 0x284(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820024 # beq .L_8018DBA0
    stfs 1, 0x284(31)
    li 0, 0x12c
    lis 4, 0x4
    mr 3, 31
    stw 0, 0x244(31)
    addi 4, 4, 0x1f
    li 5, 0x0
    bl fn_801F0E34
L_8018DBA0:
    lfs 1, 0x280(31)
    .4byte 0xC002B214 # lfs f0, lbl_8053E1B4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408100A4 # ble .L_8018DC50
    li 0, -0x1
    stw 0, 0x27c(31)
    lwz 5, 0x328(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8018DBE0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x328(31)
L_8018DBE0:
    lwz 5, 0x32c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8018DC08
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x32c(31)
L_8018DC08:
    lwz 5, 0x330(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8018DC30
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x330(31)
L_8018DC30:
    .4byte 0xC002B190 # lfs f0, lbl_8053E130@sda21(r0)
    li 0, 0x6
    li 3, 0x1
    stfs 0, 0x294(31)
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_8018DC54
L_8018DC48:
    .4byte 0xC002B1A0 # lfs f0, lbl_8053E140@sda21(r0)
    stfs 0, 0x284(31)
L_8018DC50:
    li 3, 0x0
L_8018DC54:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8018DC70:
    stwu 1, -0x1070(1)
    mflr 0
    stw 0, 0x1074(1)
    li 0, 0x1068
    stfd 31, 0x1060(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x1058
    stfd 30, 0x1050(1)
    psq_stx 30, 1, 0, 0, 0
    li 0, 0x1048
    stfd 29, 0x1040(1)
    psq_stx 29, 1, 0, 0, 0
    stmw 25, 0x1024(1)
    mr 29, 3
    mr 30, 4
    lwz 0, 0x26c(3)
    cmpwi 0, 0x1
    .4byte 0x418202E0 # beq .L_8018DF94
    lbz 0, 0x27a(29)
    cmplwi 0, 0x1
    .4byte 0x408202D4 # bne .L_8018DF94
    .4byte 0xC002B128 # lfs f0, lbl_8053E0C8@sda21(r0)
    stfs 0, 0x10(1)
    stfs 0, 0xc(1)
    stfs 0, 0x8(1)
    lwz 0, 0x254(29)
    cmpwi 0, 0x0
    .4byte 0x408002B8 # bge .L_8018DF94
    li 31, 0x0
L_8018DCE4:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820298 # beq .L_8018DF88
    lwz 28, 0x4(29)
    mr 3, 31
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x40820284 # bne .L_8018DF88
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820274 # bne .L_8018DF88
    cmpwi 30, 0x3
    .4byte 0x4182001C # beq .L_8018DD38
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810254 # ble .L_8018DF88
L_8018DD38:
    lfs 30, 0x10(29)
    mr 3, 31
    .4byte 0xC002B17C # lfs f0, lbl_8053E11C@sda21(r0)
    lfs 31, 0xc(29)
    fsubs 30, 30, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    mr 3, 31
    fsubs 29, 0, 31
    bl fn_8023E724
    lfs 0, 0x4(3)
    lis 3, lbl_80534C00@ha
    fmr 1, 29
    addi 3, 3, lbl_80534C00@l
    fsubs 2, 0, 30
    bl fn_80093340
    .4byte 0xC002B210 # lfs f0, lbl_8053E1B0@sda21(r0)
    cmpwi 30, 0x1
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x1018(1)
    lwz 0, 0x101c(1)
    clrlwi 26, 0, 16
    .4byte 0x41820014 # beq .L_8018DDA8
    cmplwi 26, 0x2000
    .4byte 0x4180000C # blt .L_8018DDA8
    cmplwi 26, 0xe000
    .4byte 0x418001E4 # blt .L_8018DF88
L_8018DDA8:
    cmpwi 30, 0x2
    .4byte 0x41820048 # beq .L_8018DDF4
    .4byte 0x40800014 # bge .L_8018DDC4
    cmpwi 30, 0x0
    .4byte 0x4182003C # beq .L_8018DDF4
    .4byte 0x40800028 # bge .L_8018DDE4
    .4byte 0x48000034 # b .L_8018DDF4
L_8018DDC4:
    cmpwi 30, 0x4
    .4byte 0x4080002C # bge .L_8018DDF4
    .4byte 0xC002B218 # lfs f0, lbl_8053E1B8@sda21(r0)
    addis 26, 26, 0x1
    addi 26, 26, -0x8000
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x48000020 # b .L_8018DE00
L_8018DDE4:
    .4byte 0xC002B190 # lfs f0, lbl_8053E130@sda21(r0)
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x48000010 # b .L_8018DE00
L_8018DDF4:
    .4byte 0xC002B1EC # lfs f0, lbl_8053E18C@sda21(r0)
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
L_8018DE00:
    cmpwi 30, 0x0
    .4byte 0x4182000C # beq .L_8018DE10
    cmpwi 30, 0x1
    .4byte 0x408200B8 # bne .L_8018DEC4
L_8018DE10:
    bl SpatialRegistry_GetBase
    lis 4, 0x4649
    lwz 5, 0x4(29)
    addi 4, 4, 0x5245
    addi 6, 1, 0x14
    li 7, -0x1
    bl fn_801F7818
    mr 28, 3
    addi 27, 1, 0x14
    li 25, 0x0
    .4byte 0x48000084 # b .L_8018DEBC
L_8018DE3C:
    lwz 3, 0x0(27)
    cmplwi 3, 0x0
    .4byte 0x41820070 # beq .L_8018DEB4
    lwz 0, 0x90(3)
    extrwi. 0, 0, 2, 24
    .4byte 0x40820064 # bne .L_8018DEB4
    lfs 2, 0xc(3)
    lfs 1, 0xc(29)
    .4byte 0xC002B14C # lfs f0, lbl_8053E0EC@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800044 # bge .L_8018DEB4
    lfs 2, 0x10(29)
    .4byte 0xC002B12C # lfs f0, lbl_8053E0CC@sda21(r0)
    lfs 1, 0x10(3)
    fsubs 0, 2, 0
    fcmpo cr0, 0, 1
    .4byte 0x4080002C # bge .L_8018DEB4
    fsubs 1, 1, 2
    .4byte 0xC002B160 # lfs f0, lbl_8053E100@sda21(r0)
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8018DEB4
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8018DEB4:
    addi 27, 27, 0x4
    addi 25, 25, 0x1
L_8018DEBC:
    cmpw 25, 28
    .4byte 0x4180FF7C # blt .L_8018DE3C
L_8018DEC4:
    cmpwi 30, 0x1
    .4byte 0x41820074 # beq .L_8018DF3C
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x0(3)
    .4byte 0xC062B21C # lfs f3, lbl_8053E1BC@sda21(r0)
    fsubs 2, 0, 31
    lfs 1, 0x8(1)
    .4byte 0xC002B170 # lfs f0, lbl_8053E110@sda21(r0)
    fabs 2, 2
    frsp 2, 2
    fnmsubs 1, 3, 2, 1
    fcmpo cr0, 1, 0
    stfs 1, 0x8(1)
    .4byte 0x40800008 # bge .L_8018DF04
    stfs 0, 0x8(1)
L_8018DF04:
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x4(3)
    .4byte 0xC062B220 # lfs f3, lbl_8053E1C0@sda21(r0)
    fsubs 2, 0, 30
    lfs 1, 0xc(1)
    .4byte 0xC002B170 # lfs f0, lbl_8053E110@sda21(r0)
    fabs 2, 2
    frsp 2, 2
    fnmsubs 1, 3, 2, 1
    fcmpo cr0, 1, 0
    stfs 1, 0xc(1)
    .4byte 0x40800008 # bge .L_8018DF3C
    stfs 0, 0xc(1)
L_8018DF3C:
    lis 3, lbl_8052EBC0@ha
    rlwinm 4, 26, 30, 18, 28
    addi 0, 3, lbl_8052EBC0@l
    lfs 3, 0x8(1)
    add 4, 0, 4
    lfs 1, 0xc(1)
    lfs 2, 0x0(4)
    mr 3, 31
    lfs 0, 0x4(4)
    fmuls 2, 3, 2
    fmuls 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_80236BEC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8018DF88
    mr 3, 31
    addi 4, 1, 0x8
    bl fn_8023DFF4
L_8018DF88:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FD54 # blt .L_8018DCE4
L_8018DF94:
    li 0, 0x1068
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x1060(1)
    li 0, 0x1058
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x1050(1)
    li 0, 0x1048
    psq_lx 29, 1, 0, 0, 0
    lfd 29, 0x1040(1)
    lmw 25, 0x1024(1)
    lwz 0, 0x1074(1)
    mtlr 0
    addi 1, 1, 0x1070
    blr

fn_8018DFCC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stfd 29, 0x10(1)
    psq_st 29, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC002B1F0 # lfs f0, lbl_8053E190@sda21(r0)
    lfs 31, 0xc(3)
    lwz 0, 0x26c(3)
    fsubs 31, 31, 0
    lfs 30, 0x10(3)
    cmpwi 0, 0x1
    lfs 29, 0x14(3)
    .4byte 0x418202CC # beq .L_8018E2E0
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_8018E034
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_8018E034
    cmpwi 0, 0xb
    .4byte 0x40820018 # bne .L_8018E048
L_8018E034:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x49
    li 5, 0x0
    bl fn_801F0E34
L_8018E048:
    lwz 0, 0x268(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8018E068
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x4b
    li 5, 0x0
    bl fn_801F0E34
L_8018E068:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820270 # bne .L_8018E2E0
    lwz 0, 0x268(31)
    cmplwi 0, 0xd
    .4byte 0x41810244 # bgt .L_8018E2C0
    lis 3, jumptable_804A1F30@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A1F30@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x40810214 # ble .L_8018E2C0
    li 0, 0x0
    stw 0, 0x264(31)
    .4byte 0x48000208 # b .L_8018E2C0
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x7
    .4byte 0x408101F0 # ble .L_8018E2C0
    lwz 0, 0x268(31)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_8018E0F0
    mr 3, 31
    li 4, 0x4
    bl fn_8018E30C
    .4byte 0x48000024 # b .L_8018E110
L_8018E0F0:
    cmpwi 0, 0x5
    .4byte 0x40820014 # bne .L_8018E108
    mr 3, 31
    li 4, 0x6
    bl fn_8018E30C
    .4byte 0x4800000C # b .L_8018E110
L_8018E108:
    li 0, 0x7
    stw 0, 0x264(31)
L_8018E110:
    li 0, 0x1
    stb 0, 0x27a(31)
    .4byte 0x480001A8 # b .L_8018E2C0
    .4byte 0xC002B188 # lfs f0, lbl_8053E128@sda21(r0)
    lwz 3, 0x328(31)
    fadds 30, 30, 0
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018E13C
    stfs 31, 0xa4(3)
    stfs 30, 0xa8(3)
    stfs 29, 0xac(3)
L_8018E13C:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018E154
    stfs 31, 0xa4(3)
    stfs 30, 0xa8(3)
    stfs 29, 0xac(3)
L_8018E154:
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    clrlwi 0, 0, 30
    stw 0, 0x264(31)
    .4byte 0x48000154 # b .L_8018E2C0
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x7
    .4byte 0x4081013C # ble .L_8018E2C0
    lwz 0, 0x268(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_8018E1A4
    mr 3, 31
    li 4, 0x2
    bl fn_8018E30C
    .4byte 0x4800000C # b .L_8018E1AC
L_8018E1A4:
    li 0, 0x7
    stw 0, 0x264(31)
L_8018E1AC:
    li 0, 0x1
    stb 0, 0x27a(31)
    .4byte 0x4800010C # b .L_8018E2C0
    .4byte 0xC002B224 # lfs f0, lbl_8053E1C4@sda21(r0)
    lwz 3, 0x328(31)
    fadds 30, 30, 0
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018E1D8
    stfs 31, 0xa4(3)
    stfs 30, 0xa8(3)
    stfs 29, 0xac(3)
L_8018E1D8:
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018E1F0
    stfs 31, 0xa4(3)
    stfs 30, 0xa8(3)
    stfs 29, 0xac(3)
L_8018E1F0:
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    clrlwi 0, 0, 30
    stw 0, 0x264(31)
    .4byte 0x480000B8 # b .L_8018E2C0
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x15
    .4byte 0x408100A0 # ble .L_8018E2C0
    lwz 0, 0x268(31)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_8018E240
    mr 3, 31
    li 4, 0x8
    bl fn_8018E30C
    .4byte 0x4800000C # b .L_8018E248
L_8018E240:
    li 0, 0x15
    stw 0, 0x264(31)
L_8018E248:
    li 0, 0x1
    stb 0, 0x27a(31)
    .4byte 0x48000070 # b .L_8018E2C0
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x5
    .4byte 0x40810058 # ble .L_8018E2C0
    li 0, 0x0
    stw 0, 0x264(31)
    .4byte 0x4800004C # b .L_8018E2C0
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0xb
    .4byte 0x40810034 # ble .L_8018E2C0
    mr 3, 31
    li 4, 0xd
    bl fn_8018E30C
    li 0, 0x1
    stb 0, 0x27a(31)
    .4byte 0x4800001C # b .L_8018E2C0
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    clrlwi 0, 0, 30
    stw 0, 0x264(31)
L_8018E2C0:
    lwz 4, 0x270(31)
    lis 3, lbl_804A1B70@ha
    lwz 0, 0x264(31)
    addi 3, 3, lbl_804A1B70@l
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8018E2E0:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    psq_l 29, 0x18(1), 0, 0
    lfd 29, 0x10(1)
    lwz 0, 0x44(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8018E30C:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002B1F0 # lfs f0, lbl_8053E190@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lfs 1, 0xc(3)
    stfs 1, 0x8(1)
    fsubs 0, 1, 0
    lfs 1, 0x10(3)
    stfs 1, 0xc(1)
    lfs 1, 0x14(3)
    stfs 1, 0x10(1)
    stfs 0, 0x8(1)
    lwz 0, 0x26c(3)
    cmpwi 0, 0x1
    .4byte 0x41820284 # beq .L_8018E5D0
    cmpwi 4, 0x0
    .4byte 0x4180027C # blt .L_8018E5D0
    lwz 0, 0x268(31)
    cmpw 0, 4
    .4byte 0x41820270 # beq .L_8018E5D0
    stw 4, 0x268(31)
    li 4, 0x0
    stb 4, 0x27a(31)
    stw 4, 0x234(31)
    stw 4, 0x264(31)
    .4byte 0x48000008 # b .L_8018E380
    .4byte 0x48000254 # b .L_8018E5D0
L_8018E380:
    lwz 0, 0x268(31)
    cmplwi 0, 0xd
    .4byte 0x41810228 # bgt .L_8018E5B0
    lis 3, jumptable_804A1F68@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A1F68@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    stw 4, 0x270(31)
    .4byte 0x48000208 # b .L_8018E5B0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x6
    stw 0, 0x270(31)
    .4byte 0x480001E8 # b .L_8018E5B0
    lwz 4, 0x328(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8018E3EC
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8018E3EC:
    lwz 4, 0x32c(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8018E40C
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8018E40C:
    lfs 2, 0xc(1)
    addi 4, 1, 0x8
    .4byte 0xC002B224 # lfs f0, lbl_8053E1C4@sda21(r0)
    li 5, 0x54
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 6, 0x1
    fadds 0, 2, 0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0xc(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x328(31)
    addi 4, 1, 0x8
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 5, 0x55
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
    li 0, 0xe
    stw 0, 0x270(31)
    .4byte 0x48000134 # b .L_8018E5B0
    li 0, 0x12
    stw 0, 0x270(31)
    .4byte 0x48000128 # b .L_8018E5B0
    lwz 4, 0x328(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8018E4AC
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8018E4AC:
    lwz 4, 0x32c(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8018E4CC
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8018E4CC:
    lfs 1, 0xc(1)
    .4byte 0xC002B188 # lfs f0, lbl_8053E128@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x4082003C # bne .L_8018E520
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 5, 0x52
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
    li 0, 0x0
    stw 0, 0x32c(31)
    .4byte 0x4800005C # b .L_8018E578
L_8018E520:
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 5, 0x50
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(31)
    addi 4, 1, 0x8
    .4byte 0xC022B130 # lfs f1, lbl_8053E0D0@sda21(r0)
    li 5, 0x51
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x32c(31)
L_8018E578:
    li 0, 0x1a
    stw 0, 0x270(31)
    .4byte 0x48000030 # b .L_8018E5B0
    li 0, 0x1e
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_8018E5B0
    li 0, 0x34
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_8018E5B0
    li 0, 0x3b
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_8018E5B0
    li 0, 0x47
    stw 0, 0x270(31)
L_8018E5B0:
    lwz 4, 0x270(31)
    lis 3, lbl_804A1B70@ha
    lwz 0, 0x264(31)
    addi 3, 3, lbl_804A1B70@l
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8018E5D0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8018E5E4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0C2B164 # lfs f6, lbl_8053E104@sda21(r0)
    li 6, 0x0
    stw 0, 0x14(1)
    li 4, -0x1
    .4byte 0xC0A2B144 # lfs f5, lbl_8053E0E4@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_804C18B8@ha
    .4byte 0xC082B128 # lfs f4, lbl_8053E0C8@sda21(r0)
    stfs 6, 0x80(31)
    addi 5, 3, lbl_804C18B8@l
    stfs 6, 0x84(31)
    stfs 5, 0x88(31)
    stfs 5, 0x8c(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 31
    stw 0, 0x26c(31)
    stw 6, 0x24c(31)
    stw 6, 0x250(31)
    stw 6, 0x254(31)
    stw 6, 0x258(31)
    stw 6, 0x25c(31)
    stw 6, 0x260(31)
    stw 6, 0x234(31)
    stw 6, 0x238(31)
    stw 6, 0x23c(31)
    stw 6, 0x240(31)
    stw 6, 0x244(31)
    stw 6, 0x248(31)
    stw 6, 0x2e8(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2f8(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2fc(31)
    lfs 0, 0x14(31)
    stfs 0, 0x300(31)
    stw 6, 0x2ec(31)
    lfs 0, 0xc(31)
    stfs 0, 0x304(31)
    lfs 0, 0x10(31)
    stfs 0, 0x308(31)
    lfs 0, 0x14(31)
    stfs 0, 0x30c(31)
    stw 6, 0x2f0(31)
    lfs 0, 0xc(31)
    stfs 0, 0x310(31)
    lfs 0, 0x10(31)
    stfs 0, 0x314(31)
    lfs 0, 0x14(31)
    stfs 0, 0x318(31)
    stw 6, 0x2f4(31)
    lfs 0, 0xc(31)
    stfs 0, 0x31c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x320(31)
    lfs 0, 0x14(31)
    stfs 0, 0x324(31)
    stfs 4, 0x8(5)
    stfs 4, 0x4(5)
    stfs 4, 0x0(5)
    .4byte 0x908D8408 # stw r4, lbl_80539FC8@sda21(r0)
    stw 6, 0x270(31)
    stw 6, 0x264(31)
    stfs 4, 0x280(31)
    stfs 4, 0x288(31)
    stw 6, 0x268(31)
    stb 6, 0x27b(31)
    stb 6, 0x29c(31)
    stfs 4, 0x2b4(31)
    stfs 4, 0x2b0(31)
    stfs 4, 0x2ac(31)
    stfs 4, 0x44(31)
    stfs 4, 0x40(31)
    stfs 4, 0x3c(31)
    lfs 0, 0xc(31)
    li 3, 0x1
    .4byte 0xC042B130 # lfs f2, lbl_8053E0D0@sda21(r0)
    li 0, 0x300
    stfs 0, 0x2a0(31)
    .4byte 0xC022B1EC # lfs f1, lbl_8053E18C@sda21(r0)
    lfs 3, 0x10(31)
    .4byte 0xC002B1A0 # lfs f0, lbl_8053E140@sda21(r0)
    stfs 3, 0x2a4(31)
    lfs 3, 0x14(31)
    stfs 3, 0x2a8(31)
    lfs 3, 0xc(31)
    stfs 3, 0x2c4(31)
    lfs 3, 0x10(31)
    stfs 3, 0x2c8(31)
    lfs 3, 0x14(31)
    stfs 3, 0x2cc(31)
    lfs 3, 0xc(31)
    stfs 3, 0x2d0(31)
    lfs 3, 0x10(31)
    stfs 3, 0x2d4(31)
    lfs 3, 0x14(31)
    stfs 3, 0x2d8(31)
    lfs 3, 0xc(31)
    stfs 3, 0x2dc(31)
    lfs 3, 0x10(31)
    stfs 3, 0x2e0(31)
    lfs 3, 0x14(31)
    stfs 3, 0x2e4(31)
    stw 4, 0x254(31)
    stb 3, 0x196(31)
    stfs 2, 0x294(31)
    stfs 2, 0x298(31)
    stfs 2, 0x2b8(31)
    stfs 2, 0x2bc(31)
    stfs 1, 0x2c0(31)
    stb 6, 0x27a(31)
    stfs 4, 0x28c(31)
    stfs 0, 0x284(31)
    stfs 4, 0x290(31)
    stw 0, 0x274(31)
    stw 6, 0x328(31)
    stw 6, 0x32c(31)
    stw 6, 0x330(31)
    stw 4, 0x27c(31)
    sth 6, 0x278(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_8018E838
    li 0, 0x9
    .4byte 0x908D840C # stw r4, lbl_80539FCC@sda21(r0)
    .4byte 0xC002B140 # lfs f0, lbl_8053E0E0@sda21(r0)
    .4byte 0x900D8410 # stw r0, lbl_80539FD0@sda21(r0)
    lfs 1, 0x2a4(31)
    fadds 0, 1, 0
    stfs 0, 0x2a4(31)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    .4byte 0xC022B1C8 # lfs f1, lbl_8053E168@sda21(r0)
    li 4, 0x3c
    .4byte 0xC002B1CC # lfs f0, lbl_8053E16C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022B1D0 # lfs f1, lbl_8053E170@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002B184 # lfs f0, lbl_8053E124@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000048 # b .L_8018E87C
L_8018E838:
    stfs 6, 0x60(31)
    lis 3, 0x504
    addi 3, 3, 0x4
    li 0, 0x1a
    stfs 6, 0x64(31)
    stfs 5, 0x68(31)
    stfs 5, 0x6c(31)
    stw 3, 0xb0(31)
    lwz 3, 0x4(31)
    .4byte 0x906D8408 # stw r3, lbl_80539FC8@sda21(r0)
    lfs 0, 0x2a0(31)
    stfs 0, 0x0(5)
    lfs 0, 0x2a4(31)
    stfs 0, 0x4(5)
    lfs 0, 0x2a8(31)
    stfs 0, 0x8(5)
    stw 0, 0x230(31)
L_8018E87C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8018E890:
    blr

fn_8018E894:
    stw 4, 0x234(3)
    blr

fn_8018E89C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8018E8C0:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr

fn_8018E8DC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl GetRoomConfigRecord
    mr 4, 29
    mr 5, 30
    mr 6, 31
    bl fn_802D8050
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8018E930:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D800C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

