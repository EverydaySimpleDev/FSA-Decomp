# fn_80391678 - actor@lbl_804AF490: vtable-slot function (0x2FC)
# Same call pattern as fn_803913E0 (fn_802EB27C handle-cleanup scan +
# SpatialRegistry_GetBase/fn_801F666C).
.section extab, "a"
.balign 4
.global etb_8000EEF8
etb_8000EEF8:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000EEF8, 8

.section extabindex, "a"
.balign 4
.global eti_8001ED48
eti_8001ED48:
    .4byte fn_80391678
    .4byte 0x000002FC
    .4byte etb_8000EEF8
.size eti_8001ED48, 12

.text
.balign 4
.global fn_80391678

fn_80391678:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    .4byte 0xC00201CC # lfs f0, lbl_8054316C@sda21(r0)
    stw 0, 0x24(1)
    li 0, -0x1
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    stw 5, 0x8(3)
    li 3, 0x1
    stw 5, 0x20(28)
    stb 5, 0x24(28)
    lbz 4, 0x24(28)
    stb 4, 0x25(28)
    sth 5, 0x26(28)
    stb 5, 0x41(28)
    stb 3, 0x40(28)
    sth 5, 0x28(28)
    stw 5, 0x10(28)
    stw 5, 0x14(28)
    stb 5, 0x42(28)
    stb 5, 0x43(28)
    sth 5, 0x3c(28)
    sth 5, 0x3e(28)
    stw 5, 0x34(28)
    stw 5, 0x38(28)
    stw 0, 0x30(28)
    stfs 0, 0x50(28)
    stfs 0, 0x54(28)
    stfs 0, 0x58(28)
    stb 5, 0x44(28)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lbz 0, 0xed(4)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80391724
    lwz 3, 0x18(28)
    lwz 0, 0x110(4)
    cmpw 3, 0
    .4byte 0x40820008 # bne .L_80391724
    stb 5, 0xed(4)
L_80391724:
    li 29, 0x0
    li 31, 0x0
L_8039172C:
    lwz 3, 0x48(28)
    addi 0, 31, 0x180
    lwzx 30, 3, 0
    cmpwi 30, 0x0
    .4byte 0x418000FC # blt .L_80391838
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803917A0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80391788
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80391788
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80391788
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80391788
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80391788
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8039178C
L_80391788:
    li 0, 0x1
L_8039178C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803917F4
L_803917A0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803917E0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803917E0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803917E0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803917E0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803917E0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803917E0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803917E4
L_803917E0:
    li 0, 0x1
L_803917E4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803917F4:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_80391828
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80391828
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x544b
    cmplwi 0, 0x5241
    .4byte 0x40820008 # bne .L_80391828
    bl fn_802EB27C
L_80391828:
    lwz 3, 0x48(28)
    addi 0, 31, 0x180
    li 4, -0x1
    stwx 4, 3, 0
L_80391838:
    lwz 3, 0x4c(28)
    addi 0, 31, 0x180
    lwzx 30, 3, 0
    cmpwi 30, 0x0
    .4byte 0x418000FC # blt .L_80391944
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803918AC
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80391894
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80391894
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80391894
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80391894
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80391894
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80391898
L_80391894:
    li 0, 0x1
L_80391898:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80391900
L_803918AC:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803918EC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803918EC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803918EC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803918EC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803918EC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803918EC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803918F0
L_803918EC:
    li 0, 0x1
L_803918F0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80391900:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_80391934
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80391934
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x544b
    cmplwi 0, 0x5241
    .4byte 0x40820008 # bne .L_80391934
    bl fn_802EB27C
L_80391934:
    lwz 3, 0x4c(28)
    addi 0, 31, 0x180
    li 4, -0x1
    stwx 4, 3, 0
L_80391944:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FDDC # blt .L_8039172C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

