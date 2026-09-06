# 901KB-gap non-actor manager block: 11 function(s), 1,700 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000EED8
etb_8000EED8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000EED8, 8

.global etb_8000EEE0
etb_8000EEE0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EEE0, 8

.section extabindex, "a"
.balign 4
.global eti_8001ED18
eti_8001ED18:
    .4byte fn_803908D0
    .4byte 0x00000294
    .4byte etb_8000EED8
.size eti_8001ED18, 12

.global eti_8001ED24
eti_8001ED24:
    .4byte fn_80390E68
    .4byte 0x00000054
    .4byte etb_8000EEE0
.size eti_8001ED24, 12

.text
.balign 4
.global fn_80390818
.global fn_80390850
.global fn_80390894
.global fn_803908D0
.global fn_80390B64
.global fn_80390BA8
.global fn_80390BDC
.global fn_80390C38
.global fn_80390C6C
.global fn_80390E40
.global fn_80390E68

fn_80390818:
    lbz 0, 0x24(3)
    li 3, 0x0
    cmpwi 0, 0x6
    .4byte 0x40800010 # bge .L_80390834
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_80390840
    blr
L_80390834:
    cmpwi 0, 0x9
    bgelr
    .4byte 0x4800000C # b .L_80390848
L_80390840:
    li 3, 0x2
    blr
L_80390848:
    li 3, 0x1
    blr

fn_80390850:
    lbz 0, 0x24(3)
    li 4, -0x1
    cmpwi 0, 0x6
    .4byte 0x40800010 # bge .L_8039086C
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_80390878
    .4byte 0x48000024 # b .L_8039088C
L_8039086C:
    cmpwi 0, 0x9
    .4byte 0x4080001C # bge .L_8039088C
    .4byte 0x48000010 # b .L_80390884
L_80390878:
    lwz 3, 0x4c(3)
    lwz 4, 0x174(3)
    .4byte 0x4800000C # b .L_8039088C
L_80390884:
    lwz 3, 0x48(3)
    lwz 4, 0x174(3)
L_8039088C:
    mr 3, 4
    blr

fn_80390894:
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x40820014 # bne .L_803908B0
    lwz 0, 0x4c(3)
    add 3, 0, 4
    lbz 3, 0x3b2(3)
    blr
L_803908B0:
    cmplwi 0, 0x8
    .4byte 0x40820014 # bne .L_803908C8
    lwz 0, 0x48(3)
    add 3, 0, 4
    lbz 3, 0x3b2(3)
    blr
L_803908C8:
    li 3, 0x0
    blr

fn_803908D0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
L_803908F8:
    lwz 3, 0x48(28)
    addi 0, 31, 0x180
    lwzx 30, 3, 0
    cmpwi 30, 0x0
    .4byte 0x4180010C # blt .L_80390A14
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8039096C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80390954
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80390954
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80390954
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80390954
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80390954
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80390958
L_80390954:
    li 0, 0x1
L_80390958:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803909C0
L_8039096C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803909AC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803909AC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803909AC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803909AC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803909AC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803909AC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803909B0
L_803909AC:
    li 0, 0x1
L_803909B0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803909C0:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_80390A04
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80390A04
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x544b
    cmplwi 0, 0x5241
    .4byte 0x40820018 # bne .L_80390A04
    bl fn_802EB27C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80390A04
    li 3, 0x0
    .4byte 0x48000144 # b .L_80390B44
L_80390A04:
    lwz 3, 0x48(28)
    addi 0, 31, 0x180
    li 4, -0x1
    stwx 4, 3, 0
L_80390A14:
    lwz 3, 0x4c(28)
    addi 0, 31, 0x180
    lwzx 30, 3, 0
    cmpwi 30, 0x0
    .4byte 0x4180010C # blt .L_80390B30
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80390A88
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80390A70
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80390A70
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80390A70
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80390A70
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80390A70
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80390A74
L_80390A70:
    li 0, 0x1
L_80390A74:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80390ADC
L_80390A88:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80390AC8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80390AC8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80390AC8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80390AC8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80390AC8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80390AC8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80390ACC
L_80390AC8:
    li 0, 0x1
L_80390ACC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80390ADC:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_80390B20
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80390B20
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x544b
    cmplwi 0, 0x5241
    .4byte 0x40820018 # bne .L_80390B20
    bl fn_802EB27C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80390B20
    li 3, 0x0
    .4byte 0x48000028 # b .L_80390B44
L_80390B20:
    lwz 3, 0x4c(28)
    addi 0, 31, 0x180
    li 4, -0x1
    stwx 4, 3, 0
L_80390B30:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FDBC # blt .L_803908F8
    li 3, 0x1
L_80390B44:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80390B64:
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x4082001C # bne .L_80390B88
    lwz 4, 0x4c(3)
    li 3, 0xff
    li 0, 0x1
    stb 3, 0x19e(4)
    stb 0, 0x19f(4)
    blr
L_80390B88:
    cmplwi 0, 0x8
    bnelr
    lwz 4, 0x48(3)
    li 3, 0xff
    li 0, 0x1
    stb 3, 0x19e(4)
    stb 0, 0x19f(4)
    blr

fn_80390BA8:
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_80390BC0
    lwz 3, 0x4c(3)
    lbz 3, 0x19e(3)
    blr
L_80390BC0:
    cmplwi 0, 0x8
    .4byte 0x40820010 # bne .L_80390BD4
    lwz 3, 0x48(3)
    lbz 3, 0x19e(3)
    blr
L_80390BD4:
    li 3, 0xff
    blr

fn_80390BDC:
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x40820024 # bne .L_80390C08
    lwz 4, 0x4c(3)
    lwz 3, 0x150(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80390C00
    subi 0, 3, 0x1
    stw 0, 0x150(4)
L_80390C00:
    lwz 3, 0x150(4)
    blr
L_80390C08:
    cmplwi 0, 0x8
    .4byte 0x40820024 # bne .L_80390C30
    lwz 4, 0x48(3)
    lwz 3, 0x150(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80390C28
    subi 0, 3, 0x1
    stw 0, 0x150(4)
L_80390C28:
    lwz 3, 0x150(4)
    blr
L_80390C30:
    li 3, 0x0
    blr

fn_80390C38:
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_80390C50
    lwz 3, 0x4c(3)
    lwz 3, 0x148(3)
    blr
L_80390C50:
    cmplwi 0, 0x8
    .4byte 0x40820010 # bne .L_80390C64
    lwz 3, 0x48(3)
    lwz 3, 0x148(3)
    blr
L_80390C64:
    li 3, -0x1
    blr

fn_80390C6C:
    lbz 0, 0x24(3)
    cmplwi 0, 0x3
    .4byte 0x408201BC # bne .L_80390E30
    lbz 0, 0x41(3)
    cmpwi 0, 0x2
    .4byte 0x418200B0 # beq .L_80390D30
    .4byte 0x40800014 # bge .L_80390C98
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80390CA4
    .4byte 0x40800068 # bge .L_80390CF8
    .4byte 0x480001A4 # b .L_80390E38
L_80390C98:
    cmpwi 0, 0x4
    .4byte 0x4080019C # bge .L_80390E38
    .4byte 0x48000164 # b .L_80390E04
L_80390CA4:
    lwz 7, 0xc(3)
    li 5, 0x1
    li 4, 0x2
    li 0, 0x0
    lbz 6, 0x1(7)
    lbz 7, 0x0(7)
    rlwimi 6, 7, 8, 16, 23
    sth 6, 0x26(3)
    stb 5, 0x41(3)
    stw 4, 0x10(3)
    stw 0, 0x14(3)
    lbz 4, 0x43(3)
    addi 0, 4, 0x1
    stb 0, 0x43(3)
    lwz 4, 0xc(3)
    addi 0, 4, 0x1
    stw 0, 0xc(3)
    lwz 4, 0xc(3)
    addi 0, 4, 0x1
    stw 0, 0xc(3)
    .4byte 0x48000144 # b .L_80390E38
L_80390CF8:
    lhz 0, 0x28(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820028 # beq .L_80390D28
    lis 4, 0x1
    li 0, 0x2
    subi 4, 4, 0x4
    sth 4, 0x26(3)
    stb 0, 0x41(3)
    lbz 4, 0x43(3)
    addi 0, 4, 0x1
    stb 0, 0x43(3)
    .4byte 0x48000114 # b .L_80390E38
L_80390D28:
    li 0, 0x2
    stb 0, 0x41(3)
L_80390D30:
    lwz 4, 0xc(3)
    lbz 0, 0x1(4)
    lbz 4, 0x0(4)
    rlwimi 0, 4, 8, 16, 23
    sth 0, 0x26(3)
    lhz 0, 0x26(3)
    cmplwi 0, 0xfff0
    .4byte 0x40820038 # bne .L_80390D84
    lwz 4, 0x10(3)
    addi 0, 4, 0x2
    stw 0, 0x10(3)
    lwz 4, 0x14(3)
    addi 0, 4, 0x1
    stw 0, 0x14(3)
    lwz 4, 0xc(3)
    addi 0, 4, 0x1
    stw 0, 0xc(3)
    lwz 4, 0xc(3)
    addi 0, 4, 0x1
    stw 0, 0xc(3)
    .4byte 0x48000048 # b .L_80390DC8
L_80390D84:
    cmplwi 0, 0xfffe
    .4byte 0x4082001C # bne .L_80390DA4
    li 0, 0x3
    stb 0, 0x41(3)
    lwz 4, 0x4c(3)
    lbz 0, 0x3af(4)
    stb 0, 0x40(3)
    .4byte 0x48000028 # b .L_80390DC8
L_80390DA4:
    lwz 4, 0x10(3)
    addi 0, 4, 0x2
    stw 0, 0x10(3)
    lwz 4, 0xc(3)
    addi 0, 4, 0x1
    stw 0, 0xc(3)
    lwz 4, 0xc(3)
    addi 0, 4, 0x1
    stw 0, 0xc(3)
L_80390DC8:
    lwz 4, 0x4c(3)
    lwz 5, 0x10(3)
    lwz 4, 0x14(4)
    lwz 0, 0x2d0(4)
    cmpw 5, 0
    .4byte 0x41800018 # blt .L_80390DF4
    li 0, 0x3
    stb 0, 0x41(3)
    lwz 4, 0x4c(3)
    lbz 0, 0x3af(4)
    stb 0, 0x40(3)
L_80390DF4:
    lbz 4, 0x43(3)
    addi 0, 4, 0x1
    stb 0, 0x43(3)
    .4byte 0x48000038 # b .L_80390E38
L_80390E04:
    li 0, 0x4
    lis 4, 0x1
    stb 0, 0x24(3)
    subi 4, 4, 0x2
    li 0, 0x0
    sth 4, 0x26(3)
    stb 0, 0x41(3)
    lbz 4, 0x43(3)
    addi 0, 4, 0x1
    stb 0, 0x43(3)
    .4byte 0x4800000C # b .L_80390E38
L_80390E30:
    li 0, 0x0
    sth 0, 0x26(3)
L_80390E38:
    lhz 3, 0x26(3)
    blr

fn_80390E40:
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80390E54
    clrlwi. 0, 5, 24
    .4byte 0x41820010 # beq .L_80390E60
L_80390E54:
    stw 4, 0x20(3)
    li 3, 0x1
    blr
L_80390E60:
    li 3, 0x0
    blr

fn_80390E68:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    lhz 5, 0x28(3)
    extrwi. 0, 5, 1, 30
    .4byte 0x4182002C # beq .L_80390EAC
    rlwinm. 0, 5, 0, 25, 25
    .4byte 0x41820010 # beq .L_80390E98
    lwz 3, 0x48(3)
    bl fn_80394690
    .4byte 0x48000018 # b .L_80390EAC
L_80390E98:
    rlwinm. 0, 5, 0, 18, 18
    .4byte 0x41820008 # beq .L_80390EA4
    li 4, 0x1
L_80390EA4:
    lwz 3, 0x48(3)
    bl fn_8039499C
L_80390EAC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

