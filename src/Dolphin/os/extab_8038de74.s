# fn_8038DE74 - actor@lbl_804AF32C: setParams (0x22C)
# Spawns a FourCC-tagged actor via SpatialRegistry_GetBase/fn_801F9484, queries
# per-room config via GetRoomConfigRecord/fn_802D800C/fn_802D8050, reuses
# fn_8022F340 (x6, heavily shared across this actor's own functions) and
# fn_8038470C. Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000EE28
etb_8000EE28:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EE28, 8

.section extabindex, "a"
.balign 4
.global eti_8001EC40
eti_8001EC40:
    .4byte fn_8038DE74
    .4byte 0x0000022C
    .4byte etb_8000EE28
.size eti_8001EC40, 12

.text
.balign 4
.global fn_8038DE74

fn_8038DE74:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 3, 0x234(3)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 0, 0x274(3)
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_8038DEE0
    lwz 3, 0x234(31)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 30, 0x274(3)
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8038DEE0
    li 0, 0xc
    stw 0, 0x29c(31)
    .4byte 0x480000A4 # b .L_8038DF80
L_8038DEE0:
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_802373EC
    cmplwi 3, 0xa
    .4byte 0x41810088 # bgt .L_8038DF78
    lis 4, jumptable_804AF38C@ha
    slwi 0, 3, 2
    addi 3, 4, jumptable_804AF38C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x1
    stw 0, 0x29c(31)
    .4byte 0x4800006C # b .L_8038DF80
    li 0, 0x2
    stw 0, 0x29c(31)
    .4byte 0x48000060 # b .L_8038DF80
    li 0, 0x3
    stw 0, 0x29c(31)
    .4byte 0x48000054 # b .L_8038DF80
    li 0, 0x4
    stw 0, 0x29c(31)
    .4byte 0x48000048 # b .L_8038DF80
    li 0, 0x5
    stw 0, 0x29c(31)
    .4byte 0x4800003C # b .L_8038DF80
    li 0, 0x6
    stw 0, 0x29c(31)
    .4byte 0x48000030 # b .L_8038DF80
    li 0, 0x7
    stw 0, 0x29c(31)
    .4byte 0x48000024 # b .L_8038DF80
    li 0, 0x8
    stw 0, 0x29c(31)
    .4byte 0x48000018 # b .L_8038DF80
    li 0, 0x9
    stw 0, 0x29c(31)
    .4byte 0x4800000C # b .L_8038DF80
L_8038DF78:
    li 0, 0xc
    stw 0, 0x29c(31)
L_8038DF80:
    lwz 0, 0x29c(31)
    cmpwi 0, 0xc
    .4byte 0x41820020 # beq .L_8038DFA8
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x4180000C # blt .L_8038DFA8
    li 0, 0xc
    stw 0, 0x29c(31)
L_8038DFA8:
    lwz 0, 0x29c(31)
    cmpwi 0, 0xc
    .4byte 0x40820024 # bne .L_8038DFD4
    li 0, 0x267
    stw 0, 0x260(31)
    lwz 3, 0x234(31)
    lwz 4, 0x260(31)
    bl fn_8038470C
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480000B8 # b .L_8038E088
L_8038DFD4:
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200A0 # bne .L_8038E088
    bl SpatialRegistry_GetBase
    lwz 5, 0x29c(31)
    lis 4, 0x4246
    lwz 0, 0x234(31)
    addi 4, 4, 0x5259
    clrlslwi 6, 5, 28, 4
    lwz 5, 0x4(31)
    ori 7, 6, 0x3
    li 8, -0x1
    addi 6, 31, 0xc
    li 9, -0x1
    rlwimi 7, 0, 8, 22, 23
    bl fn_801F9484
    stw 3, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_8038E080
    li 0, 0x5
    stw 0, 0x230(31)
    lwz 3, 0x234(31)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 0, 0x274(3)
    cmpwi 0, 0x0
    .4byte 0x41820038 # beq .L_8038E088
    lwz 3, 0x234(31)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 30, 0x274(3)
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x4800000C # b .L_8038E088
L_8038E080:
    li 0, 0x0
    stw 0, 0x29c(31)
L_8038E088:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

