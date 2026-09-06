# fn_802EF80C - LTEV: setParams (0x390)
# Calls fn_80128C58/fn_8013A884 (x5 each, unfamiliar animation/texture
# utilities) plus GetRoomConfigRecord/fn_802D800C (per-room config) and
# fn_80458FF0 (unfamiliar SDK utility near .text end). Track A: byte-match
# verified, structural overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D2B4
etb_8000D2B4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D2B4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C528
eti_8001C528:
    .4byte fn_802EF80C
    .4byte 0x00000390
    .4byte etb_8000D2B4
.size eti_8001C528, 12

.text
.balign 4
.global fn_802EF80C

fn_802EF80C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x418202B0 # beq .L_802EFAD8
    .4byte 0x4080001C # bge .L_802EF848
    cmpwi 0, 0x1
    .4byte 0x41820110 # beq .L_802EF944
    .4byte 0x408001FC # bge .L_802EFA34
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802EF854
    .4byte 0x48000294 # b .L_802EFAD8
L_802EF848:
    cmpwi 0, 0x5
    .4byte 0x418202D0 # beq .L_802EFB1C
    .4byte 0x48000288 # b .L_802EFAD8
L_802EF854:
    lwz 3, 0x268(31)
    subi 0, 3, 0x4
    stw 0, 0x268(31)
    lwz 3, 0x24c(31)
    lwz 0, 0x25c(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802EF880
    lwz 0, 0x270(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
    .4byte 0x48000008 # b .L_802EF884
L_802EF880:
    stw 0, 0x24c(31)
L_802EF884:
    lwz 3, 0x250(31)
    lwz 0, 0x260(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802EF8A4
    lwz 0, 0x274(31)
    add 0, 3, 0
    stw 0, 0x250(31)
    .4byte 0x48000008 # b .L_802EF8A8
L_802EF8A4:
    stw 0, 0x250(31)
L_802EF8A8:
    lwz 3, 0x254(31)
    lwz 0, 0x264(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802EF8C8
    lwz 0, 0x278(31)
    add 0, 3, 0
    stw 0, 0x254(31)
    .4byte 0x48000008 # b .L_802EF8CC
L_802EF8C8:
    stw 0, 0x254(31)
L_802EF8CC:
    lwz 0, 0x268(31)
    lwz 3, 0x26c(31)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802EF900
    stw 3, 0x268(31)
    li 0, 0x4
    lwz 3, 0x25c(31)
    stw 3, 0x24c(31)
    lwz 3, 0x260(31)
    stw 3, 0x250(31)
    lwz 3, 0x264(31)
    stw 3, 0x254(31)
    stw 0, 0x230(31)
L_802EF900:
    lwz 0, 0x268(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x24c(31)
    addi 3, 1, 0x18
    lwz 0, 0x250(31)
    lwz 5, 0x254(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x258(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x18(1)
    bl fn_8013A884
    .4byte 0x48000248 # b .L_802EFB88
L_802EF944:
    lwz 3, 0x268(31)
    addi 0, 3, 0x4
    stw 0, 0x268(31)
    lwz 3, 0x24c(31)
    lwz 0, 0x25c(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802EF970
    lwz 0, 0x270(31)
    add 0, 3, 0
    stw 0, 0x24c(31)
    .4byte 0x48000008 # b .L_802EF974
L_802EF970:
    stw 0, 0x24c(31)
L_802EF974:
    lwz 3, 0x250(31)
    lwz 0, 0x260(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802EF994
    lwz 0, 0x274(31)
    add 0, 3, 0
    stw 0, 0x250(31)
    .4byte 0x48000008 # b .L_802EF998
L_802EF994:
    stw 0, 0x250(31)
L_802EF998:
    lwz 3, 0x254(31)
    lwz 0, 0x264(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802EF9B8
    lwz 0, 0x278(31)
    add 0, 3, 0
    stw 0, 0x254(31)
    .4byte 0x48000008 # b .L_802EF9BC
L_802EF9B8:
    stw 0, 0x254(31)
L_802EF9BC:
    lwz 0, 0x268(31)
    lwz 3, 0x26c(31)
    cmpw 0, 3
    .4byte 0x41800028 # blt .L_802EF9F0
    stw 3, 0x268(31)
    li 0, 0x4
    lwz 3, 0x25c(31)
    stw 3, 0x24c(31)
    lwz 3, 0x260(31)
    stw 3, 0x250(31)
    lwz 3, 0x264(31)
    stw 3, 0x254(31)
    stw 0, 0x230(31)
L_802EF9F0:
    lwz 0, 0x268(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x24c(31)
    addi 3, 1, 0x14
    lwz 0, 0x250(31)
    lwz 5, 0x254(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x258(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x14(1)
    bl fn_8013A884
    .4byte 0x48000158 # b .L_802EFB88
L_802EFA34:
    lwz 3, 0x268(31)
    addi 0, 3, 0x4
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    lwz 3, 0x26c(31)
    cmpw 0, 3
    .4byte 0x41800048 # blt .L_802EFA94
    stw 3, 0x268(31)
    li 0, 0x4
    stw 0, 0x230(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x10
    .4byte 0x40820030 # bne .L_802EFA94
    bl GetRoomConfigRecord
    lwz 4, 0x240(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_802EFA94
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_802EFA94:
    lwz 0, 0x268(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x24c(31)
    addi 3, 1, 0x10
    lwz 0, 0x250(31)
    lwz 5, 0x254(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x258(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x10(1)
    bl fn_8013A884
    .4byte 0x480000B4 # b .L_802EFB88
L_802EFAD8:
    lwz 0, 0x268(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x24c(31)
    addi 3, 1, 0xc
    lwz 0, 0x250(31)
    lwz 5, 0x254(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x258(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0xc(1)
    bl fn_8013A884
    .4byte 0x48000070 # b .L_802EFB88
L_802EFB1C:
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x4182001C # beq .L_802EFB40
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802EFB48
L_802EFB40:
    li 0, 0x2
    stw 0, 0x230(31)
L_802EFB48:
    lwz 0, 0x268(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x24c(31)
    addi 3, 1, 0x8
    lwz 0, 0x250(31)
    lwz 5, 0x254(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x258(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x8(1)
    bl fn_8013A884
L_802EFB88:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

