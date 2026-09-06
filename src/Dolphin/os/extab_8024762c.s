.section extab, "a"
.balign 4
.global etb_8000B490
etb_8000B490:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B490, 8

.global etb_8000B498
etb_8000B498:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B498, 8

.global etb_8000B4A0
etb_8000B4A0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B4A0, 8

.global etb_8000B4A8
etb_8000B4A8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B4A8, 8

.global etb_8000B4B0
etb_8000B4B0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B4B0, 8

.global etb_8000B4B8
etb_8000B4B8:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000B4B8, 8

.global etb_8000B4C0
etb_8000B4C0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B4C0, 8

.section extabindex, "a"
.balign 4
.global eti_800199CC
eti_800199CC:
    .4byte fn_8024762C
    .4byte 0x00000570
    .4byte etb_8000B490
.size eti_800199CC, 12

.global eti_800199D8
eti_800199D8:
    .4byte fn_80247B9C
    .4byte 0x00000038
    .4byte etb_8000B498
.size eti_800199D8, 12

.global eti_800199E4
eti_800199E4:
    .4byte fn_80247BD4
    .4byte 0x00000038
    .4byte etb_8000B4A0
.size eti_800199E4, 12

.global eti_800199F0
eti_800199F0:
    .4byte fn_80247C0C
    .4byte 0x00000300
    .4byte etb_8000B4A8
.size eti_800199F0, 12

.global eti_800199FC
eti_800199FC:
    .4byte fn_80247F58
    .4byte 0x000000AC
    .4byte etb_8000B4B0
.size eti_800199FC, 12

.global eti_80019A08
eti_80019A08:
    .4byte fn_80248004
    .4byte 0x00000600
    .4byte etb_8000B4B8
.size eti_80019A08, 12

.global eti_80019A14
eti_80019A14:
    .4byte fn_80248604
    .4byte 0x0000009C
    .4byte etb_8000B4C0
.size eti_80019A14, 12

.text
.balign 4
.global fn_8024762C
.global fn_80247B9C
.global fn_80247BD4
.global fn_80247C0C
.global fn_80247F0C
.global fn_80247F58
.global fn_80248004
.global fn_80248604

fn_8024762C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    bl fn_8022AF5C
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_802476F8
    lbz 0, 0xce8(31)
    cmplwi 0, 0x0
    .4byte 0x40820080 # bne .L_802476D4
    lwz 0, 0x1240(31)
    cmpwi 0, 0xb
    .4byte 0x41820074 # beq .L_802476D4
    mr 3, 31
    li 4, 0xb
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80247680
    li 0, 0x0
    .4byte 0x48000048 # b .L_802476C4
L_80247680:
    li 3, 0xb
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    stb 0, 0x124d(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_802476C0
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802476C0
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802476C0
    li 0, 0x0
    stb 0, 0xcfe(31)
L_802476C0:
    li 0, 0x1
L_802476C4:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_802476D4
    li 0, 0x1
    stb 0, 0xbd4(31)
L_802476D4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x408004AC # bge .L_80247B88
    lwz 3, 0xbc0(31)
    cmpwi 3, 0x0
    .4byte 0x408104A0 # ble .L_80247B88
    subi 0, 3, 0x1
    stw 0, 0xbc0(31)
    .4byte 0x48000494 # b .L_80247B88
L_802476F8:
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x40820488 # bne .L_80247B88
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_80247734
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80247734
    .4byte 0x48000144 # b .L_80247874
L_80247734:
    li 29, 0x0
    mr 28, 29
L_8024773C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80247750
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802477B0
L_80247750:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802477A0
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80247784
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802477B0
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802477B0
L_80247784:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_802477B0
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802477B0
L_802477A0:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802477B0
    addi 29, 29, 0x1
L_802477B0:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8024773C
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802477CC
    li 3, 0x5
    .4byte 0x4800001C # b .L_802477E4
L_802477CC:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802477E0
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802477E4
L_802477E0:
    lwz 3, 0x120c(31)
L_802477E4:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_80247868
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80247804
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80247808
L_80247804:
    lwz 30, 0x1224(31)
L_80247808:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024781C
    li 0, 0x0
    .4byte 0x4800003C # b .L_80247854
L_8024781C:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80247844
L_80247828:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80247840
    addi 28, 28, 0x1
L_80247840:
    addi 29, 29, 0x1
L_80247844:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80247828
    addi 0, 28, 0x1
L_80247854:
    subf 3, 30, 0
    subf 0, 0, 30
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_80247874
L_80247868:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_80247874:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_8024788C
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_80233EDC
    .4byte 0x48000024 # b .L_802478AC
L_8024788C:
    lwz 0, 0x1240(31)
    li 3, 0x0
    cmpwi 0, 0x1b
    .4byte 0x41820010 # beq .L_802478A8
    lwz 0, 0x1244(31)
    cmpwi 0, 0x1b
    .4byte 0x40820008 # bne .L_802478AC
L_802478A8:
    li 3, 0x1
L_802478AC:
    clrlwi. 0, 3, 24
    .4byte 0x408202D8 # bne .L_80247B88
    lbz 0, 0xce8(31)
    cmplwi 0, 0x0
    .4byte 0x408202CC # bne .L_80247B88
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4080005C # bge .L_80247924
    lwz 3, 0x48c(31)
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_802478F4
    subi 0, 3, 0x1
    stw 0, 0x48c(31)
    lbz 0, 0x491(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802478F4
    li 0, 0x1
    stw 0, 0x48c(31)
L_802478F4:
    lwz 0, 0x48c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8024790C
    li 0, 0x0
    stw 0, 0xbc0(31)
    .4byte 0x48000080 # b .L_80247988
L_8024790C:
    lwz 3, 0xbc0(31)
    cmpwi 3, 0x0
    .4byte 0x40810074 # ble .L_80247988
    subi 0, 3, 0x1
    stw 0, 0xbc0(31)
    .4byte 0x48000068 # b .L_80247988
L_80247924:
    .4byte 0x4180000C # blt .L_80247930
    bl fn_8023C36C
    .4byte 0x48000008 # b .L_80247934
L_80247930:
    lwz 3, 0x48c(31)
L_80247934:
    cmpwi 3, 0x0
    .4byte 0x40810018 # ble .L_80247950
    lwz 0, 0x48c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80247950
    li 0, 0x1
    stb 0, 0x490(31)
L_80247950:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247964
    bl fn_8023C36C
    .4byte 0x48000008 # b .L_80247968
L_80247964:
    lwz 3, 0x48c(31)
L_80247968:
    stw 3, 0x48c(31)
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247980
    bl fn_8023BEA8
    .4byte 0x48000008 # b .L_80247984
L_80247980:
    lwz 3, 0xbc0(31)
L_80247984:
    stw 3, 0xbc0(31)
L_80247988:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024799C
    bl fn_8023C36C
    .4byte 0x48000008 # b .L_802479A0
L_8024799C:
    lwz 3, 0x48c(31)
L_802479A0:
    cmpwi 3, 0x0
    .4byte 0x40810068 # ble .L_80247A0C
    lwz 0, 0x1240(31)
    cmpwi 0, 0xb
    .4byte 0x4182005C # beq .L_80247A0C
    mr 3, 31
    li 4, 0xb
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4182016C # beq .L_80247B30
    li 3, 0xb
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    stb 0, 0x124d(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080014C # bge .L_80247B30
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820140 # bne .L_80247B30
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x41820134 # beq .L_80247B30
    li 0, 0x0
    stb 0, 0xcfe(31)
    .4byte 0x48000128 # b .L_80247B30
L_80247A0C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247A20
    bl fn_8023C36C
    .4byte 0x48000008 # b .L_80247A24
L_80247A20:
    lwz 3, 0x48c(31)
L_80247A24:
    cmpwi 3, 0x0
    .4byte 0x40820108 # bne .L_80247B30
    lwz 0, 0x1240(31)
    cmpwi 0, 0xb
    .4byte 0x408200FC # bne .L_80247B30
    mr 3, 31
    li 4, 0x0
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80247A54
    li 0, 0x0
    .4byte 0x480000A4 # b .L_80247AF4
L_80247A54:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(31)
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x40820018 # bne .L_80247A88
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80247A88
    stw 3, 0x1244(31)
    .4byte 0x48000038 # b .L_80247ABC
L_80247A88:
    lbz 0, 0x434(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80247AB4
    lwz 0, 0x1240(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_80247AA8
    li 0, 0x0
    .4byte 0x48000050 # b .L_80247AF4
L_80247AA8:
    li 0, 0x2
    stw 0, 0x1244(31)
    .4byte 0x4800000C # b .L_80247ABC
L_80247AB4:
    li 0, 0x0
    stw 0, 0x1244(31)
L_80247ABC:
    li 0, 0x1
    stb 0, 0x124c(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80247AF0
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80247AF0
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80247AF0
    li 0, 0x0
    stb 0, 0xcfe(31)
L_80247AF0:
    li 0, 0x1
L_80247AF4:
    clrlwi. 0, 0, 24
    .4byte 0x41820038 # beq .L_80247B30
    lbz 0, 0xbd4(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80247B30
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80247B30:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(31)
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182003C # beq .L_80247B88
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 3, 0x58(3)
    subis 0, 3, 0x100
    cmplwi 0, 0x19
    .4byte 0x40820028 # bne .L_80247B88
    li 27, 0x0
L_80247B68:
    mr 3, 27
    bl fn_8023C36C
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_80247B88
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFE8 # blt .L_80247B68
    bl fn_8022AD64
L_80247B88:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80247B9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80247BC0
    mr 3, 0
    bl fn_8023BEA8
    .4byte 0x48000008 # b .L_80247BC4
L_80247BC0:
    lwz 3, 0xbc0(3)
L_80247BC4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80247BD4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80247BF8
    mr 3, 0
    bl fn_8023C36C
    .4byte 0x48000008 # b .L_80247BFC
L_80247BF8:
    lwz 3, 0x48c(3)
L_80247BFC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80247C0C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl fn_8022AF5C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80247C48
    li 0, 0x3c
    li 3, 0x1
    stw 0, 0xbc0(31)
    .4byte 0x480002A8 # b .L_80247EEC
L_80247C48:
    bl fn_8022ADFC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80247C5C
    li 3, 0x0
    .4byte 0x48000294 # b .L_80247EEC
L_80247C5C:
    lwz 0, 0x1240(31)
    cmpwi 0, 0xb
    .4byte 0x40820038 # bne .L_80247C9C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80247C84
    li 0, 0x2d0
    stw 0, 0x48c(31)
    .4byte 0x4800000C # b .L_80247C8C
L_80247C84:
    li 0, 0x168
    stw 0, 0x48c(31)
L_80247C8C:
    li 0, 0x3c
    li 3, 0x1
    stw 0, 0xbc0(31)
    .4byte 0x48000254 # b .L_80247EEC
L_80247C9C:
    mr 3, 31
    li 4, 0xb
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80247CB8
    li 3, 0x0
    .4byte 0x48000238 # b .L_80247EEC
L_80247CB8:
    li 29, 0x0
    mr 30, 29
L_80247CC0:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4082000C # bne .L_80247CD4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80247D34
L_80247CD4:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80247D24
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_80247D08
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_80247D34
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80247D34
L_80247D08:
    lwz 28, 0x4(31)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_80247D34
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80247D34
L_80247D24:
    lwz 0, 0xd60(31)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_80247D34
    addi 29, 29, 0x1
L_80247D34:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_80247CC0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80247D50
    li 3, 0x5
    .4byte 0x4800001C # b .L_80247D68
L_80247D50:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247D64
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80247D68
L_80247D64:
    lwz 3, 0x120c(31)
L_80247D68:
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80247D80
    mr 3, 31
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
L_80247D80:
    li 30, 0x0
    mr 29, 30
L_80247D88:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_80247D9C
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_80247DFC
L_80247D9C:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80247DEC
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_80247DD0
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_80247DFC
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_80247DFC
L_80247DD0:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_80247DFC
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_80247DFC
L_80247DEC:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_80247DFC
    addi 30, 30, 0x1
L_80247DFC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_80247D88
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_80247E18
    li 3, 0x5
    .4byte 0x4800001C # b .L_80247E30
L_80247E18:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247E2C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80247E30
L_80247E2C:
    lwz 3, 0x120c(31)
L_80247E30:
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_80247E40
    li 3, 0x0
    .4byte 0x480000B0 # b .L_80247EEC
L_80247E40:
    lwz 0, 0x48c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80247E54
    li 0, 0x1
    stb 0, 0x490(31)
L_80247E54:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80247E70
    li 0, 0x2d0
    stw 0, 0x48c(31)
    .4byte 0x4800000C # b .L_80247E78
L_80247E70:
    li 0, 0x168
    stw 0, 0x48c(31)
L_80247E78:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800068 # bge .L_80247EE8
    mr 3, 31
    li 4, 0xb
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80247ED8
    li 3, 0xb
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    stb 0, 0x124d(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80247ED8
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80247ED8
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80247ED8
    li 0, 0x0
    stb 0, 0xcfe(31)
L_80247ED8:
    lbz 0, 0x490(31)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80247EE8
    bl fn_8022AD88
L_80247EE8:
    li 3, 0x1
L_80247EEC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80247F0C:
    lwz 4, 0xc9c(3)
    cmpwi 4, 0x0
    .4byte 0x40810010 # ble .L_80247F24
    subi 0, 4, 0x1
    stw 0, 0xc9c(3)
    blr
L_80247F24:
    lfs 2, 0xc8c(3)
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    fcmpo cr0, 2, 1
    bgelr
    .4byte 0xC002D098 # lfs f0, lbl_80540038@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0xc8c(3)
    lfs 0, 0xc8c(3)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    bnelr
    stfs 1, 0xc8c(3)
    blr

fn_80247F58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xd60(3)
    cmpwi 3, 0x0
    .4byte 0x4180003C # blt .L_80247FB0
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80247FB0
    mr 3, 31
    li 4, 0x33
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_80247FF0
    mr 3, 31
    addi 5, 31, 0x8
    li 4, 0x0
    li 6, 0x12
    bl fn_80272160
    .4byte 0x48000044 # b .L_80247FF0
L_80247FB0:
    bl fn_80239D38
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80247FF0
    lbz 0, 0xd34(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80247FF0
    mr 3, 31
    li 4, 0x33
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80247FF0
    mr 3, 31
    addi 5, 31, 0x8
    li 4, 0x0
    li 6, 0x12
    bl fn_80272160
L_80247FF0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80248004:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    li 27, 0x0
    mr 29, 3
    mr 30, 4
    mr 31, 5
    mr 28, 27
L_80248028:
    lwz 0, 0x4(29)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024803C
    addi 27, 27, 0x1
    .4byte 0x48000064 # b .L_8024809C
L_8024803C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024808C
    lwz 26, 0xd60(29)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80248070
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024809C
    addi 27, 27, 0x1
    .4byte 0x48000030 # b .L_8024809C
L_80248070:
    lwz 26, 0x4(29)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024809C
    addi 27, 27, 0x1
    .4byte 0x48000014 # b .L_8024809C
L_8024808C:
    lwz 0, 0xd60(29)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024809C
    addi 27, 27, 0x1
L_8024809C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80248028
    cmpwi 27, 0x1
    .4byte 0x40810544 # ble .L_802485F0
    lbz 0, 0x1216(29)
    cmplwi 0, 0x1
    .4byte 0x41820538 # beq .L_802485F0
    lbz 4, 0xcfe(29)
    cmplwi 4, 0x1
    .4byte 0x4182052C # beq .L_802485F0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802480E0
    cmplwi 4, 0x1
    .4byte 0x41820514 # beq .L_802485F0
L_802480E0:
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    bl fn_8023DE58
    mr 28, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80248114
    cmpwi 30, 0x4
    .4byte 0x41820008 # beq .L_80248114
    li 30, 0x5
L_80248114:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x41820014 # beq .L_80248134
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x3
    .4byte 0x40820020 # bne .L_80248150
L_80248134:
    cmpwi 30, 0x2
    .4byte 0x4082000C # bne .L_80248144
    li 30, 0x1
    .4byte 0x48000010 # b .L_80248150
L_80248144:
    cmpwi 30, 0x3
    .4byte 0x40820008 # bne .L_80248150
    li 30, 0x0
L_80248150:
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_80248184
    mr 3, 29
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80248184
    lwz 0, 0x120c(29)
    cmpwi 0, 0x4
    .4byte 0x4082047C # bne .L_802485F0
    cmpwi 30, 0x5
    .4byte 0x41820008 # beq .L_80248184
    .4byte 0x48000470 # b .L_802485F0
L_80248184:
    lbz 0, 0x1214(29)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8024819C
    lwz 0, 0x120c(29)
    cmpw 0, 30
    .4byte 0x41820458 # beq .L_802485F0
L_8024819C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(29)
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x418201A8 # beq .L_80248360
    cmpwi 30, 0x4
    .4byte 0x418201A0 # beq .L_80248360
    lwz 0, 0x120c(29)
    cmpwi 0, 0x4
    .4byte 0x40820194 # bne .L_80248360
    lwz 3, 0xd60(29)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802481E4
    bl fn_80234004
    .4byte 0x48000008 # b .L_802481E8
L_802481E4:
    lwz 3, 0x1224(29)
L_802481E8:
    cmpwi 3, 0x0
    .4byte 0x41820174 # beq .L_80248360
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    bl fn_8023E724
    mr 28, 3
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    bl fn_8023DE58
    psq_l 1, 0x0(28), 0, 0
    addi 5, 1, 0x8
    lfs 0, 0x8(28)
    mr 4, 3
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0xbec(29)
    bl fn_8030B110
    clrlwi. 0, 3, 24
    .4byte 0x408200C0 # bne .L_802482F0
    lwz 26, 0x3b4(29)
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    bl fn_8023DE58
    stw 3, 0x3b4(29)
    stw 26, 0xce0(29)
    lwz 0, 0x3b4(29)
    stw 0, 0xce4(29)
    lwz 0, 0x3b4(29)
    cmpwi 0, 0x8
    .4byte 0x41800030 # blt .L_8024828C
    cmpwi 26, 0x8
    .4byte 0x40800028 # bge .L_8024828C
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    bl fn_8023E32C
    lfs 0, 0x0(3)
    stfs 0, 0xcb0(29)
    lfs 0, 0x4(3)
    stfs 0, 0xcb4(29)
    lfs 0, 0x8(3)
    stfs 0, 0xcb8(29)
L_8024828C:
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    bl fn_8023E724
    lfs 0, 0x0(3)
    addi 5, 29, 0xcbc
    addi 4, 29, 0xd1c
    stfs 0, 0x8(29)
    lfs 0, 0x4(3)
    stfs 0, 0xc(29)
    lfs 0, 0x8(3)
    stfs 0, 0x10(29)
    lfs 0, 0x8(29)
    stfs 0, 0x2c(29)
    lfs 0, 0xc(29)
    stfs 0, 0x30(29)
    lfs 0, 0x10(29)
    stfs 0, 0x34(29)
    psq_l 1, 0x8(29), 0, 0
    lfs 0, 0x10(29)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0xcc4(29)
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0xcc4(29)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0xd24(29)
L_802482F0:
    li 27, 0x0
    mr 26, 29
L_802482F8:
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    li 4, 0x0
    bl fn_8023E4E4
    lfs 0, 0x0(3)
    stfs 0, 0x38(26)
    lfs 0, 0x4(3)
    stfs 0, 0x3c(26)
    lfs 0, 0x8(3)
    stfs 0, 0x40(26)
    lwz 3, 0x4(29)
    bl fn_8022EA0C
    li 4, 0x0
    bl fn_8023E45C
    addi 0, 27, 0x284
    addi 27, 27, 0x1
    cmpwi 27, 0x31
    stbx 3, 29, 0
    addi 26, 26, 0xc
    .4byte 0x4180FFB4 # blt .L_802482F8
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80248360
    li 0, 0x1
    stb 0, 0x1216(29)
L_80248360:
    li 26, 0x0
L_80248364:
    lwz 3, 0x4(29)
    mr 4, 26
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_802483C0
    mr 3, 26
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_802483C0
    mr 3, 26
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802483AC
    lwz 0, 0x120c(29)
    cmpwi 0, 0x4
    .4byte 0x40820020 # bne .L_802483C0
    cmpwi 30, 0x4
    .4byte 0x41820018 # beq .L_802483C0
L_802483AC:
    mr 3, 26
    bl fn_8023ECF0
    bl fn_8023105C
    mr 3, 26
    bl fn_802310F8
L_802483C0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF9C # blt .L_80248364
    lwz 3, 0x120c(29)
    li 0, 0x0
    stw 3, 0x1210(29)
    stw 30, 0x120c(29)
    stw 0, 0x1224(29)
    lwz 0, 0x120c(29)
    cmpwi 0, 0x4
    .4byte 0x41820010 # beq .L_802483F8
    lwz 3, 0x4(29)
    li 4, 0x0
    bl fn_802382D0
L_802483F8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(29)
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820014 # beq .L_80248428
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80248428
    stb 3, 0x121d(29)
L_80248428:
    lwz 0, 0xd60(29)
    cmpwi 0, 0x0
    .4byte 0x408001C0 # bge .L_802485F0
    cmpwi 30, 0x4
    .4byte 0x4082002C # bne .L_80248464
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80248458
    lis 4, 0x1
    mr 3, 29
    addi 4, 4, 0x10
    bl fn_8024F0E8
L_80248458:
    li 0, 0x1
    stw 0, 0x123c(29)
    .4byte 0x48000190 # b .L_802485F0
L_80248464:
    lbz 0, 0x1216(29)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_802484E8
    lbz 0, 0x454(29)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80248488
    mr 3, 29
    bl fn_8024B2E0
    .4byte 0x48000064 # b .L_802484E8
L_80248488:
    li 5, 0x0
    li 0, 0x31
    mr 6, 29
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    mr 3, 5
    li 4, 0x1
    mtctr 0
L_802484A4:
    lfs 1, 0x8(29)
    stfs 1, 0x38(6)
    lfs 1, 0xc(29)
    stfs 1, 0x3c(6)
    lfs 1, 0x10(29)
    stfs 1, 0x40(6)
    lfs 1, 0x10(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802484D4
    addi 0, 5, 0x284
    stbx 4, 29, 0
    .4byte 0x4800000C # b .L_802484DC
L_802484D4:
    addi 0, 5, 0x284
    stbx 3, 29, 0
L_802484DC:
    addi 6, 6, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FFC0 # bdnz .L_802484A4
L_802484E8:
    lwz 0, 0x1210(29)
    cmpwi 0, 0x4
    .4byte 0x40820060 # bne .L_80248550
    clrlwi 31, 31, 24
    li 26, 0x0
    lis 30, 0x1
L_80248500:
    lwz 3, 0x4(29)
    mr 4, 26
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80248540
    cmplwi 31, 0x1
    .4byte 0x40820010 # bne .L_80248528
    mr 3, 26
    addi 4, 30, 0x11
    bl fn_80230FD0
L_80248528:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80248540
    mr 3, 26
    bl fn_80238244
L_80248540:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFB8 # blt .L_80248500
    .4byte 0x480000A4 # b .L_802485F0
L_80248550:
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820098 # bne .L_802485F0
    cmpwi 30, 0x5
    .4byte 0x41820014 # beq .L_80248574
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x37
    bl fn_8024F0E8
L_80248574:
    li 26, 0x0
L_80248578:
    cmpwi 30, 0x0
    .4byte 0x40820018 # bne .L_80248594
    lis 4, 0x1
    mr 3, 26
    addi 4, 4, 0x18
    bl fn_80230FD0
    .4byte 0x48000054 # b .L_802485E4
L_80248594:
    cmpwi 30, 0x1
    .4byte 0x40820018 # bne .L_802485B0
    lis 4, 0x1
    mr 3, 26
    addi 4, 4, 0x19
    bl fn_80230FD0
    .4byte 0x48000038 # b .L_802485E4
L_802485B0:
    cmpwi 30, 0x2
    .4byte 0x40820018 # bne .L_802485CC
    lis 4, 0x1
    mr 3, 26
    addi 4, 4, 0x17
    bl fn_80230FD0
    .4byte 0x4800001C # b .L_802485E4
L_802485CC:
    cmpwi 30, 0x3
    .4byte 0x40820014 # bne .L_802485E4
    lis 4, 0x1
    mr 3, 26
    addi 4, 4, 0x1a
    bl fn_80230FD0
L_802485E4:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF8C # blt .L_80248578
L_802485F0:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80248604:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x1216(3)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_80248690
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80248630
    bl fn_8024B2E0
    .4byte 0x48000064 # b .L_80248690
L_80248630:
    li 6, 0x0
    li 0, 0x31
    mr 7, 3
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    mr 4, 6
    li 5, 0x1
    mtctr 0
L_8024864C:
    lfs 1, 0x8(3)
    stfs 1, 0x38(7)
    lfs 1, 0xc(3)
    stfs 1, 0x3c(7)
    lfs 1, 0x10(3)
    stfs 1, 0x40(7)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024867C
    addi 0, 6, 0x284
    stbx 5, 3, 0
    .4byte 0x4800000C # b .L_80248684
L_8024867C:
    addi 0, 6, 0x284
    stbx 4, 3, 0
L_80248684:
    addi 7, 7, 0xc
    addi 6, 6, 0x1
    .4byte 0x4200FFC0 # bdnz .L_8024864C
L_80248690:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

