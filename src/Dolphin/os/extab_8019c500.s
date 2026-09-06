# Unnamed actor cluster, part 8/9 - one dtk-fused block, 5 functions.
#
# - fn_8019C500 (184B) - validity-check helper: calls fn_80230498,
#   fn_8023DE58, Player_GetCapabilityFlagByIndex (player-state validity checks, same
#   family GNON's slot22 used).
# - fn_8019C5B8 (564B, Track A) - effect/sound trigger helper: calls
#   fn_800EC240, fn_8013C824, fn_8013CB44, fn_8013CC50, fn_801F666C,
#   SpatialRegistry_GetBase.
# - fn_8019C7EC (184B) - the real destructor: culls handles via the
#   confirmed fn_801EE434, per-room-config accessor GetRoomConfigRecord/
#   fn_802D7440, then the shared base dtor dtor_801F593C plus a
#   conditional second-base dtor dtor_80084580 (multiple inheritance,
#   same pattern confirmed throughout this gap).
# - fn_8019C8A4 (1272B, Track A) - another effect/trigger helper: calls
#   fn_8013CC50, fn_801F666C, SpatialRegistry_GetBase, fn_801F9484 (generic FourCC
#   actor dispatcher), GetRoomConfigRecord, fn_802D7440, fn_80458F9C (sound).
# - fn_8019CD9C (40B) - wrapper: passes the global PRNG struct to
#   fn_8013670C.
.section extab, "a"
.balign 4
.global etb_8000787C
etb_8000787C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000787C, 8

.global etb_80007884
etb_80007884:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80007884, 8

.global etb_8000788C
etb_8000788C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000788C, 8

.global etb_80007894
etb_80007894:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80007894, 8

.global etb_8000789C
etb_8000789C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000789C, 8

.section extabindex, "a"
.balign 4
.global eti_80014638
eti_80014638:
    .4byte fn_8019C500
    .4byte 0x000000B8
    .4byte etb_80007884
.size eti_80014638, 12

.global eti_80014644
eti_80014644:
    .4byte fn_8019C5B8
    .4byte 0x00000234
    .4byte etb_8000788C
.size eti_80014644, 12

.global eti_80014650
eti_80014650:
    .4byte fn_8019C7EC
    .4byte 0x000000B8
    .4byte etb_80007894
.size eti_80014650, 12

.global eti_8001465C
eti_8001465C:
    .4byte fn_8019C8A4
    .4byte 0x000004F8
    .4byte etb_8000789C
.size eti_8001465C, 12

.global eti_80014668
eti_80014668:
    .4byte fn_8019CD9C
    .4byte 0x00000028
    .4byte etb_8000787C
.size eti_80014668, 12

.text
.balign 4
.global fn_8019C500
.global fn_8019C5B8
.global fn_8019C7EC
.global fn_8019C8A4
.global fn_8019CD9C

fn_8019C500:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 27, 3
    mr 28, 4
    li 29, 0x0
    mr 30, 27
L_8019C520:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8019C594
    lwz 31, 0x4(27)
    mr 3, 29
    bl fn_8023DE58
    cmpw 31, 3
    .4byte 0x40820054 # bne .L_8019C594
    lfs 0, 0x2a4(30)
    cmpwi 28, 0x0
    stfs 0, 0x8(1)
    lfs 0, 0x2a8(30)
    stfs 0, 0xc(1)
    lfs 0, 0x2ac(30)
    stfs 0, 0x10(1)
    .4byte 0x40820014 # bne .L_8019C574
    .4byte 0xC022B44C # lfs f1, lbl_8053E3EC@sda21(r0)
    lfs 0, 0x10(27)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_8019C574:
    mr 3, 29
    addi 4, 1, 0x8
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8019C594:
    addi 29, 29, 0x1
    addi 30, 30, 0xc
    cmpwi 29, 0x4
    .4byte 0x4180FF80 # blt .L_8019C520
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8019C5B8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 0, 0x90(3)
    cmpwi 0, 0x1
    .4byte 0x408201EC # bne .L_8019C7CC
    lwz 0, 0x230(31)
    cmpwi 0, 0x49
    .4byte 0x418201E0 # beq .L_8019C7CC
    bl SpatialRegistry_GetBase
    lwz 4, 0x25c(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201CC # beq .L_8019C7CC
    lwz 29, 0xa0(31)
    cmpwi 29, 0x0
    .4byte 0x418001C0 # blt .L_8019C7CC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201AC # beq .L_8019C7CC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4152
    cmplwi 0, 0x5257
    .4byte 0x4082019C # bne .L_8019C7CC
    lfs 0, 0xc(3)
    stfs 0, 0xc(31)
    lfs 0, 0x10(3)
    stfs 0, 0x10(31)
    lfs 0, 0x14(3)
    stfs 0, 0x14(31)
    lwz 0, 0x26c(3)
    cmpwi 0, 0x1
    .4byte 0x41800010 # blt .L_8019C664
    li 0, -0x1
    stw 0, 0x250(31)
    .4byte 0x4800016C # b .L_8019C7CC
L_8019C664:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820114 # bne .L_8019C780
    .4byte 0x800D8540 # lwz r0, lbl_8053A100@sda21(r0)
    mr 29, 31
    li 28, 0x0
    li 30, 0x0
    stw 0, 0x250(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
L_8019C690:
    lwz 0, 0x304(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8019C6B0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x304(29)
    bl fn_800EC240
    stw 30, 0x304(29)
L_8019C6B0:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x3
    .4byte 0x4180FFD4 # blt .L_8019C690
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0xb5
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0xb6
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x304(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019C748
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x199
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
L_8019C748:
    lwz 0, 0x308(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019C780
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x19a
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x308(31)
L_8019C780:
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    mr 29, 31
    li 28, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
L_8019C7A4:
    lwz 3, 0x304(29)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x5
    li 7, 0x1
    bl fn_8013CB44
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0xd
    .4byte 0x4180FFDC # blt .L_8019C7A4
L_8019C7CC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8019C7EC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x41820070 # beq .L_8019C880
    lis 3, lbl_804A2944@ha
    mr 31, 28
    addi 0, 3, lbl_804A2944@l
    li 30, 0x0
    stw 0, 0x0(28)
L_8019C828:
    lwz 3, 0x304(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0xd
    .4byte 0x4180FFEC # blt .L_8019C828
    lwz 0, 0x90(28)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8019C864
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    li 0, 0x0
    .4byte 0x980D8FD8 # stb r0, lbl_8053AB98@sda21(r0)
    .4byte 0x980D8FE8 # stb r0, lbl_8053ABA8@sda21(r0)
L_8019C864:
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_8019C880
    mr 3, 28
    bl dtor_80084580
L_8019C880:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8019C8A4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    li 4, 0x0
    li 6, 0xc
    .4byte 0x988D8FE8 # stb r4, lbl_8053ABA8@sda21(r0)
    mr 31, 3
    .4byte 0xC042B494 # lfs f2, lbl_8053E434@sda21(r0)
    slwi 0, 6, 2
    .4byte 0xC022B498 # lfs f1, lbl_8053E438@sda21(r0)
    li 3, -0x1
    stfs 2, 0x60(31)
    add 5, 31, 0
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 4, 0x244(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 4, 0x240(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    stfs 0, 0x2a4(31)
    stfs 0, 0x2dc(31)
    stfs 0, 0x2d8(31)
    stfs 0, 0x2d4(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2e8(31)
    stfs 0, 0x2e4(31)
    stfs 0, 0x2e0(31)
    stfs 0, 0x2c4(31)
    stfs 0, 0x2c0(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2f4(31)
    stfs 0, 0x2f0(31)
    stfs 0, 0x2ec(31)
    stfs 0, 0x2d0(31)
    stfs 0, 0x2cc(31)
    stfs 0, 0x2c8(31)
    stfs 0, 0x300(31)
    stfs 0, 0x2fc(31)
    stfs 0, 0x2f8(31)
    stw 3, 0x25c(31)
    stw 3, 0x264(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    sth 0, 0x94(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 30
    stw 0, 0x90(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    stb 4, 0x268(31)
    lfs 0, 0xc(31)
    stfs 0, 0x280(31)
    lfs 0, 0x10(31)
    stfs 0, 0x284(31)
    lfs 0, 0x14(31)
    stfs 0, 0x288(31)
    lfs 0, 0xc(31)
    stfs 0, 0x28c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x290(31)
    lfs 0, 0x14(31)
    stfs 0, 0x294(31)
    lfs 0, 0xc(31)
    stfs 0, 0x298(31)
    lfs 0, 0x10(31)
    stfs 0, 0x29c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2a0(31)
    stw 4, 0x304(31)
    stw 4, 0x308(31)
    stw 4, 0x30c(31)
    stw 4, 0x310(31)
    stw 4, 0x314(31)
    stw 4, 0x318(31)
    stw 4, 0x31c(31)
    stw 4, 0x320(31)
    stw 4, 0x324(31)
    stw 4, 0x328(31)
    stw 4, 0x32c(31)
    stw 4, 0x330(31)
    subfic 0, 6, 0xd
    mtctr 0
    cmpwi 6, 0xd
    .4byte 0x40800010 # bge .L_8019CA58
L_8019CA4C:
    stw 4, 0x304(5)
    addi 5, 5, 0x4
    .4byte 0x4200FFF8 # bdnz .L_8019CA4C
L_8019CA58:
    li 4, 0x0
    lis 3, 0xa04
    .4byte 0x908D8FDC # stw r4, lbl_8053AB9C@sda21(r0)
    addi 3, 3, 0x4
    li 0, 0x5
    stw 3, 0xb0(31)
    stw 4, 0x254(31)
    stw 0, 0x258(31)
    lwz 0, 0x90(31)
    cmpwi 0, 0x2
    .4byte 0x41820208 # beq .L_8019CC88
    .4byte 0x40800014 # bge .L_8019CA98
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8019CAA4
    .4byte 0x4080013C # bge .L_8019CBCC
    .4byte 0x480002F0 # b .L_8019CD84
L_8019CA98:
    cmpwi 0, 0x4
    .4byte 0x408002E8 # bge .L_8019CD84
    .4byte 0x480002CC # b .L_8019CD6C
L_8019CAA4:
    li 3, 0x2
    li 0, 0x24
    stw 3, 0x98(31)
    .4byte 0x988D8FD8 # stb r4, lbl_8053AB98@sda21(r0)
    stw 0, 0x254(31)
    .4byte 0x908D8FE0 # stw r4, lbl_8053ABA0@sda21(r0)
    .4byte 0x908D8FE4 # stw r4, lbl_8053ABA4@sda21(r0)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    bl SpatialRegistry_GetBase
    lis 4, 0x4c49
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d54
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x260(31)
    lwz 30, 0x260(31)
    cmpwi 30, 0x0
    .4byte 0x41800030 # blt .L_8019CB38
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8019CB38
    lwz 4, 0x258(31)
    lwz 0, 0x198(31)
    .4byte 0xC002B448 # lfs f0, lbl_8053E3E8@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
L_8019CB38:
    lwz 0, 0x304(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019CB70
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x1ca
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
L_8019CB70:
    lwz 0, 0x308(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019CBA8
    lwz 3, 0x4(31)
    addi 4, 31, 0x280
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x1cb
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x308(31)
L_8019CBA8:
    lfs 1, 0x10(31)
    li 0, 0x0
    .4byte 0xC002B49C # lfs f0, lbl_8053E43C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x280(31)
    stfs 0, 0xc(31)
    stw 0, 0x230(31)
    .4byte 0x480001BC # b .L_8019CD84
L_8019CBCC:
    lis 0, 0xa00
    stw 0, 0xb0(31)
    lwz 0, 0x304(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019CC0C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x533
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
L_8019CC0C:
    lwz 0, 0x308(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019CC44
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x534
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x308(31)
L_8019CC44:
    lwz 0, 0x30c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8019CC7C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x535
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x30c(31)
L_8019CC7C:
    li 0, 0x46
    stw 0, 0x230(31)
    .4byte 0x48000100 # b .L_8019CD84
L_8019CC88:
    .4byte 0xC002B3E0 # lfs f0, lbl_8053E380@sda21(r0)
    stfs 0, 0x270(31)
    lwz 0, 0x304(31)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_8019CCF8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x32c
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
    lis 3, lbl_804A28C4@ha
    addi 4, 3, lbl_804A28C4@l
    lhz 0, 0x94(31)
    lwz 5, 0x304(31)
    mulli 0, 0, 0x3
    add 3, 4, 0
    lbzx 0, 4, 0
    lbz 4, 0x2(3)
    lbz 3, 0x1(3)
    stb 0, 0xbc(5)
    stb 3, 0xbd(5)
    stb 4, 0xbe(5)
L_8019CCF8:
    lwz 0, 0x308(31)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_8019CD60
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    li 5, 0x184
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x308(31)
    lis 3, lbl_804A28C4@ha
    addi 4, 3, lbl_804A28C4@l
    lhz 0, 0x94(31)
    lwz 5, 0x308(31)
    mulli 0, 0, 0x3
    add 3, 4, 0
    lbzx 0, 4, 0
    lbz 4, 0x2(3)
    lbz 3, 0x1(3)
    stb 0, 0xbc(5)
    stb 3, 0xbd(5)
    stb 4, 0xbe(5)
L_8019CD60:
    li 0, 0x4a
    stw 0, 0x230(31)
    .4byte 0x4800001C # b .L_8019CD84
L_8019CD6C:
    lfs 0, 0x14(31)
    li 3, 0x9
    li 0, 0x4f
    stfs 0, 0x26c(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8019CD84:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8019CD9C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_8013670C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

