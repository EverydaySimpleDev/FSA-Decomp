# Fresh-gap-hunt batch 11 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A8C8
etb_8000A8C8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A8C8, 8

.global etb_8000A8D0
etb_8000A8D0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A8D0, 8

.global etb_8000A8D8
etb_8000A8D8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A8D8, 8

.global etb_8000A8E0
etb_8000A8E0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A8E0, 8

.global etb_8000A8E8
etb_8000A8E8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A8E8, 8

.global etb_8000A8F0
etb_8000A8F0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A8F0, 8

.global etb_8000A8F8
etb_8000A8F8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A8F8, 8

.global etb_8000A900
etb_8000A900:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A900, 8

.global etb_8000A908
etb_8000A908:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A908, 8

.global etb_8000A910
etb_8000A910:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A910, 8

.section extabindex, "a"
.balign 4
.global eti_80018838
eti_80018838:
    .4byte fn_8022BC38
    .4byte 0x0000009C
    .4byte etb_8000A8C8
.size eti_80018838, 12

.global eti_80018844
eti_80018844:
    .4byte fn_8022BCD4
    .4byte 0x0000009C
    .4byte etb_8000A8D0
.size eti_80018844, 12

.global eti_80018850
eti_80018850:
    .4byte fn_8022BD70
    .4byte 0x000000B4
    .4byte etb_8000A8D8
.size eti_80018850, 12

.global eti_8001885C
eti_8001885C:
    .4byte fn_8022BE24
    .4byte 0x000000A8
    .4byte etb_8000A8E0
.size eti_8001885C, 12

.global eti_80018868
eti_80018868:
    .4byte fn_8022BECC
    .4byte 0x0000009C
    .4byte etb_8000A8E8
.size eti_80018868, 12

.global eti_80018874
eti_80018874:
    .4byte fn_8022BF68
    .4byte 0x0000009C
    .4byte etb_8000A8F0
.size eti_80018874, 12

.global eti_80018880
eti_80018880:
    .4byte fn_8022C004
    .4byte 0x0000009C
    .4byte etb_8000A8F8
.size eti_80018880, 12

.global eti_8001888C
eti_8001888C:
    .4byte fn_8022C0A0
    .4byte 0x0000009C
    .4byte etb_8000A900
.size eti_8001888C, 12

.global eti_80018898
eti_80018898:
    .4byte fn_8022C13C
    .4byte 0x0000009C
    .4byte etb_8000A908
.size eti_80018898, 12

.global eti_800188A4
eti_800188A4:
    .4byte fn_8022C1D8
    .4byte 0x0000009C
    .4byte etb_8000A910
.size eti_800188A4, 12

.text
.balign 4
.global fn_8022BC38
.global fn_8022BCD4
.global fn_8022BD70
.global fn_8022BE24
.global fn_8022BECC
.global fn_8022BF68
.global fn_8022C004
.global fn_8022C0A0
.global fn_8022C13C
.global fn_8022C1D8

fn_8022BC38:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80ED90D0 # lwz r7, lbl_8053AC90@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8022BC58
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022BCC4
L_8022BC58:
    .4byte 0x4082000C # bne .L_8022BC64
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022BCA4
L_8022BC64:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022BC74
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022BCA4
L_8022BC74:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022BC84
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022BCA4
L_8022BC84:
    slwi 0, 3, 2
    add 6, 7, 0
    lwz 6, 0x4(6)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022BCA0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BCA4
L_8022BCA0:
    lbz 0, 0xcac(6)
L_8022BCA4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022BCC0
    slwi 0, 3, 2
    add 3, 7, 0
    lwz 3, 0x4(3)
    bl fn_80241E28
    .4byte 0x48000008 # b .L_8022BCC4
L_8022BCC0:
    li 3, 0x0
L_8022BCC4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022BCD4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022BCF4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022BD60
L_8022BCF4:
    .4byte 0x4082000C # bne .L_8022BD00
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022BD40
L_8022BD00:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022BD10
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022BD40
L_8022BD10:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022BD20
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022BD40
L_8022BD20:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022BD3C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BD40
L_8022BD3C:
    lbz 0, 0xcac(4)
L_8022BD40:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022BD5C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8023FC24
    .4byte 0x48000008 # b .L_8022BD60
L_8022BD5C:
    li 3, 0x0
L_8022BD60:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022BD70:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_8022BE0C
    li 30, 0x0
    li 31, 0x0
L_8022BD98:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022BDAC
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022BDE8
L_8022BDAC:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022BDBC
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022BDE8
L_8022BDBC:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022BDCC
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022BDE8
L_8022BDCC:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022BDE4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BDE8
L_8022BDE4:
    lbz 0, 0xcac(4)
L_8022BDE8:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_8022BDFC
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_80241E64
L_8022BDFC:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF90 # blt .L_8022BD98
L_8022BE0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022BE24:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820084 # beq .L_8022BEBC
    .4byte 0x4082000C # bne .L_8022BE48
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022BE88
L_8022BE48:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022BE58
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022BE88
L_8022BE58:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022BE68
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022BE88
L_8022BE68:
    slwi 0, 3, 2
    add 5, 5, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022BE84
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BE88
L_8022BE84:
    lbz 0, 0xcac(5)
L_8022BE88:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_8022BEBC
    lfs 0, 0x8(4)
    addi 5, 1, 0x8
    psq_l 1, 0x0(4), 0, 0
    slwi 0, 3, 2
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    mr 4, 5
    psq_st 1, 0x0(5), 0, 0
    add 3, 3, 0
    stfs 0, 0x10(1)
    lwz 3, 0x4(3)
    bl fn_8023FF90
L_8022BEBC:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022BECC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022BEEC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022BF58
L_8022BEEC:
    .4byte 0x4082000C # bne .L_8022BEF8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022BF38
L_8022BEF8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022BF08
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022BF38
L_8022BF08:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022BF18
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022BF38
L_8022BF18:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022BF34
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BF38
L_8022BF34:
    lbz 0, 0xcac(4)
L_8022BF38:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022BF54
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8023FFAC
    .4byte 0x48000008 # b .L_8022BF58
L_8022BF54:
    li 3, 0x0
L_8022BF58:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022BF68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022BF88
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022BFF4
L_8022BF88:
    .4byte 0x4082000C # bne .L_8022BF94
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022BFD4
L_8022BF94:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022BFA4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022BFD4
L_8022BFA4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022BFB4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022BFD4
L_8022BFB4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022BFD0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BFD4
L_8022BFD0:
    lbz 0, 0xcac(4)
L_8022BFD4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022BFF0
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802454C0
    .4byte 0x48000008 # b .L_8022BFF4
L_8022BFF0:
    li 3, 0x0
L_8022BFF4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C004:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C024
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022C090
L_8022C024:
    .4byte 0x4082000C # bne .L_8022C030
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C070
L_8022C030:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C040
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C070
L_8022C040:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C050
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C070
L_8022C050:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C06C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C070
L_8022C06C:
    lbz 0, 0xcac(4)
L_8022C070:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C08C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802456FC
    .4byte 0x48000008 # b .L_8022C090
L_8022C08C:
    li 3, 0x0
L_8022C090:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C0A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C0C0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022C12C
L_8022C0C0:
    .4byte 0x4082000C # bne .L_8022C0CC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C10C
L_8022C0CC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C0DC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C10C
L_8022C0DC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C0EC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C10C
L_8022C0EC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C108
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C10C
L_8022C108:
    lbz 0, 0xcac(4)
L_8022C10C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C128
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80245938
    .4byte 0x48000008 # b .L_8022C12C
L_8022C128:
    li 3, 0x0
L_8022C12C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C13C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C15C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022C1C8
L_8022C15C:
    .4byte 0x4082000C # bne .L_8022C168
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C1A8
L_8022C168:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C178
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C1A8
L_8022C178:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C188
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C1A8
L_8022C188:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C1A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C1A8
L_8022C1A4:
    lbz 0, 0xcac(4)
L_8022C1A8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C1C4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80245B74
    .4byte 0x48000008 # b .L_8022C1C8
L_8022C1C4:
    li 3, 0x0
L_8022C1C8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C1D8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C1F8
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022C264
L_8022C1F8:
    .4byte 0x4082000C # bne .L_8022C204
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C244
L_8022C204:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C214
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C244
L_8022C214:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C224
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C244
L_8022C224:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C240
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C244
L_8022C240:
    lbz 0, 0xcac(4)
L_8022C244:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C260
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80245DB0
    .4byte 0x48000008 # b .L_8022C264
L_8022C260:
    li 3, 0x0
L_8022C264:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

