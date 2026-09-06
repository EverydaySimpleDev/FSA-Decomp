# Fresh-gap-hunt batch 8 landing (non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008F5C
etb_80008F5C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008F5C, 8

.global etb_80008F64
etb_80008F64:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008F64, 8

.global etb_80008F6C
etb_80008F6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008F6C, 8

.global etb_80008F74
etb_80008F74:
    .4byte 0x504A0000
    .4byte 0x00000000
.size etb_80008F74, 8

.global etb_80008F7C
etb_80008F7C:
    .4byte 0x484A0000
    .4byte 0x00000000
.size etb_80008F7C, 8

.global etb_80008F84
etb_80008F84:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80008F84, 8

.section extabindex, "a"
.balign 4
.global eti_800166E4
eti_800166E4:
    .4byte fn_801F7B18
    .4byte 0x00000194
    .4byte etb_80008F5C
.size eti_800166E4, 12

.global eti_800166F0
eti_800166F0:
    .4byte fn_801F7CAC
    .4byte 0x000001DC
    .4byte etb_80008F64
.size eti_800166F0, 12

.global eti_800166FC
eti_800166FC:
    .4byte fn_801F7E88
    .4byte 0x000000D0
    .4byte etb_80008F6C
.size eti_800166FC, 12

.global eti_80016708
eti_80016708:
    .4byte fn_801F7F58
    .4byte 0x000001B0
    .4byte etb_80008F74
.size eti_80016708, 12

.global eti_80016714
eti_80016714:
    .4byte fn_801F8108
    .4byte 0x000001C4
    .4byte etb_80008F7C
.size eti_80016714, 12

.global eti_80016720
eti_80016720:
    .4byte fn_801F82CC
    .4byte 0x0000017C
    .4byte etb_80008F84
.size eti_80016720, 12

.text
.balign 4
.global fn_801F7884
.global fn_801F78F4
.global fn_801F7A08
.global fn_801F7A6C
.global fn_801F7AB8
.global fn_801F7B18
.global fn_801F7CAC
.global fn_801F7E88
.global fn_801F7F58
.global fn_801F8108
.global fn_801F82CC
.global fn_801F8448
.global fn_801F84C4

fn_801F7884:
    lwz 0, 0x1008(3)
    li 8, 0x0
    mr 6, 3
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810054 # ble .L_801F78EC
L_801F789C:
    lwz 7, 0x8(6)
    cmplwi 7, 0x0
    .4byte 0x4182003C # beq .L_801F78E0
    lbz 0, 0x11c(7)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_801F78E0
    lwz 0, 0x4(7)
    cmpw 5, 0
    .4byte 0x40820024 # bne .L_801F78E0
    lwz 0, 0x1a0(7)
    cmplw 4, 0
    .4byte 0x40820018 # bne .L_801F78E0
    slwi 0, 8, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    lwz 3, 0x198(3)
    blr
L_801F78E0:
    addi 6, 6, 0x4
    addi 8, 8, 0x1
    .4byte 0x4200FFB4 # bdnz .L_801F789C
L_801F78EC:
    li 3, -0x1
    blr

fn_801F78F4:
    cmpwi 5, 0x0
    li 8, 0x0
    .4byte 0x41800094 # blt .L_801F7990
    .4byte 0x80ED85A8 # lwz r7, lbl_8053A168@sda21(r0)
    cmpwi 7, 0x0
    .4byte 0x41800038 # blt .L_801F7940
    slwi 0, 7, 2
    add 6, 3, 0
    lwz 6, 0x8(6)
    cmplwi 6, 0x0
    .4byte 0x41820024 # beq .L_801F7940
    lbz 0, 0x11c(6)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801F7940
    lwz 0, 0x198(6)
    cmpw 5, 0
    .4byte 0x4082000C # bne .L_801F7940
    addi 8, 7, 0x1
    .4byte 0x48000054 # b .L_801F7990
L_801F7940:
    lwz 0, 0x1008(3)
    mr 6, 3
    li 9, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_801F7990
L_801F7958:
    lwz 7, 0x8(6)
    cmplwi 7, 0x0
    .4byte 0x41820024 # beq .L_801F7984
    lbz 0, 0x11c(7)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801F7984
    lwz 0, 0x198(7)
    cmpw 5, 0
    .4byte 0x4082000C # bne .L_801F7984
    addi 8, 9, 0x1
    .4byte 0x48000010 # b .L_801F7990
L_801F7984:
    addi 6, 6, 0x4
    addi 9, 9, 0x1
    .4byte 0x4200FFCC # bdnz .L_801F7958
L_801F7990:
    lwz 6, 0x1008(3)
    slwi 5, 8, 2
    mr 7, 8
    subf 0, 8, 6
    add 5, 3, 5
    mtctr 0
    cmpw 8, 6
    .4byte 0x4080004C # bge .L_801F79F8
L_801F79B0:
    lwz 6, 0x8(5)
    cmplwi 6, 0x0
    .4byte 0x41820034 # beq .L_801F79EC
    lbz 0, 0x11c(6)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_801F79EC
    lwz 0, 0x1a0(6)
    cmplw 4, 0
    .4byte 0x4082001C # bne .L_801F79EC
    slwi 0, 7, 2
    .4byte 0x90ED85A8 # stw r7, lbl_8053A168@sda21(r0)
    add 3, 3, 0
    lwz 3, 0x8(3)
    lwz 3, 0x198(3)
    blr
L_801F79EC:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
    .4byte 0x4200FFBC # bdnz .L_801F79B0
L_801F79F8:
    li 0, -0x1
    li 3, -0x1
    .4byte 0x900D85A8 # stw r0, lbl_8053A168@sda21(r0)
    blr

fn_801F7A08:
    lwz 0, 0x1008(3)
    li 7, 0x0
    mr 5, 3
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810048 # ble .L_801F7A64
L_801F7A20:
    lwz 6, 0x8(5)
    cmplwi 6, 0x0
    .4byte 0x41820030 # beq .L_801F7A58
    lbz 0, 0x11c(6)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_801F7A58
    lwz 0, 0x1a0(6)
    cmplw 4, 0
    .4byte 0x40820018 # bne .L_801F7A58
    slwi 0, 7, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    lwz 3, 0x198(3)
    blr
L_801F7A58:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
    .4byte 0x4200FFC0 # bdnz .L_801F7A20
L_801F7A64:
    li 3, -0x1
    blr

fn_801F7A6C:
    lwz 0, 0x1008(3)
    li 5, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810034 # ble .L_801F7AB0
L_801F7A80:
    lwz 4, 0x8(3)
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_801F7AA8
    lbz 0, 0x11c(4)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801F7AA8
    lbz 0, 0x1a8(4)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801F7AA8
    addi 5, 5, 0x1
L_801F7AA8:
    addi 3, 3, 0x4
    .4byte 0x4200FFD4 # bdnz .L_801F7A80
L_801F7AB0:
    mr 3, 5
    blr

fn_801F7AB8:
    lwz 0, 0x1008(3)
    li 8, 0x0
    li 6, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810044 # ble .L_801F7B10
L_801F7AD0:
    lwz 7, 0x8(3)
    cmplwi 7, 0x0
    .4byte 0x41820030 # beq .L_801F7B08
    lbz 0, 0x11c(7)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_801F7B08
    lwz 0, 0x1a0(7)
    cmplw 4, 0
    .4byte 0x40820018 # bne .L_801F7B08
    lwz 0, 0x198(7)
    cmpw 5, 0
    .4byte 0x4182000C # beq .L_801F7B08
    stb 6, 0x11c(7)
    addi 8, 8, 0x1
L_801F7B08:
    addi 3, 3, 0x4
    .4byte 0x4200FFC4 # bdnz .L_801F7AD0
L_801F7B10:
    mr 3, 8
    blr

fn_801F7B18:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl GetRoomConfigRecord
    li 28, 0x0
L_801F7B40:
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, -0x1
    bl fn_802D39B8
    mr 3, 28
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801F7B7C
    mr 3, 28
    bl fn_8023EF50
    mr 29, 3
    bl GetRoomConfigRecord
    mr 4, 28
    mr 5, 29
    bl fn_802D39B8
L_801F7B7C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFBC # blt .L_801F7B40
    lwz 29, 0x1008(30)
    mr 31, 30
    li 30, 0x0
    .4byte 0x480000E8 # b .L_801F7C7C
L_801F7B98:
    lwz 4, 0x8(31)
    cmplwi 4, 0x0
    .4byte 0x418200D4 # beq .L_801F7C74
    lbz 0, 0x11c(4)
    cmplwi 0, 0x0
    .4byte 0x418200C8 # beq .L_801F7C74
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x545a
    cmplwi 0, 0x4f4b
    .4byte 0x418200B8 # beq .L_801F7C74
    lwz 28, 0x198(4)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31a8(3)
    cmpw 28, 0
    .4byte 0x418200A0 # beq .L_801F7C74
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31ac(3)
    cmpw 28, 0
    .4byte 0x4182008C # beq .L_801F7C74
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31b0(3)
    cmpw 28, 0
    .4byte 0x41820078 # beq .L_801F7C74
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31b4(3)
    cmpw 28, 0
    .4byte 0x41820064 # beq .L_801F7C74
    lwz 5, 0x8(31)
    lwz 4, 0x1a0(5)
    subis 3, 4, 0x5241
    cmplwi 3, 0x4e4b
    .4byte 0x41820050 # beq .L_801F7C74
    subis 0, 4, 0x4742
    cmplwi 0, 0x414f
    .4byte 0x41820044 # beq .L_801F7C74
    subis 0, 4, 0x454e
    cmplwi 0, 0x444d
    .4byte 0x41820038 # beq .L_801F7C74
    subis 0, 4, 0x444d
    cmplwi 0, 0x4741
    .4byte 0x4182002C # beq .L_801F7C74
    cmplwi 3, 0x534e
    .4byte 0x4082001C # bne .L_801F7C6C
    lwz 0, 0x230(5)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801F7C74
    li 0, 0x0
    stb 0, 0x11c(5)
    .4byte 0x4800000C # b .L_801F7C74
L_801F7C6C:
    li 0, 0x0
    stb 0, 0x11c(5)
L_801F7C74:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_801F7C7C:
    cmpw 30, 29
    .4byte 0x4180FF18 # blt .L_801F7B98
    bl fn_80204638
    bl fn_802048F4
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801F7CAC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 29, 3
    bl GetRoomConfigRecord
    mr 31, 3
    li 27, 0x0
L_801F7CCC:
    bl GetRoomConfigRecord
    mr 4, 27
    li 5, -0x1
    bl fn_802D39B8
    mr 3, 27
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801F7D08
    mr 3, 27
    bl fn_8023EF50
    mr 28, 3
    bl GetRoomConfigRecord
    mr 4, 27
    mr 5, 28
    bl fn_802D39B8
L_801F7D08:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFBC # blt .L_801F7CCC
    lwz 28, 0x1008(29)
    mr 30, 29
    li 29, 0x0
    .4byte 0x48000144 # b .L_801F7E64
L_801F7D24:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820130 # beq .L_801F7E5C
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x41820124 # beq .L_801F7E5C
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x40820118 # bne .L_801F7E5C
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x545a
    cmplwi 0, 0x4f4b
    .4byte 0x41820108 # beq .L_801F7E5C
    subis 0, 4, 0x4641
    cmplwi 0, 0x5a52
    .4byte 0x418200FC # beq .L_801F7E5C
    subis 0, 4, 0x444d
    cmplwi 0, 0x4741
    .4byte 0x418200F0 # beq .L_801F7E5C
    lfs 2, 0xc(3)
    li 0, 0x0
    lfs 0, 0xcc(31)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801F7DB8
    lfs 1, 0x10(3)
    lfs 0, 0xd0(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801F7DB8
    lfs 0, 0xd4(31)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801F7DB8
    lfs 0, 0xd8(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801F7DB8
    li 0, 0x1
L_801F7DB8:
    clrlwi. 0, 0, 24
    .4byte 0x408200A0 # bne .L_801F7E5C
    lwz 27, 0x198(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31a8(3)
    cmpw 27, 0
    .4byte 0x41820088 # beq .L_801F7E5C
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31ac(3)
    cmpw 27, 0
    .4byte 0x41820074 # beq .L_801F7E5C
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31b0(3)
    cmpw 27, 0
    .4byte 0x41820060 # beq .L_801F7E5C
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 0, 0x31b4(3)
    cmpw 27, 0
    .4byte 0x4182004C # beq .L_801F7E5C
    lwz 5, 0x8(30)
    lwz 4, 0x1a0(5)
    subis 3, 4, 0x5241
    cmplwi 3, 0x4e4b
    .4byte 0x41820038 # beq .L_801F7E5C
    subis 0, 4, 0x4742
    cmplwi 0, 0x414f
    .4byte 0x4182002C # beq .L_801F7E5C
    cmplwi 3, 0x534e
    .4byte 0x4082001C # bne .L_801F7E54
    lwz 0, 0x230(5)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801F7E5C
    li 0, 0x0
    stb 0, 0x11c(5)
    .4byte 0x4800000C # b .L_801F7E5C
L_801F7E54:
    li 0, 0x0
    stb 0, 0x11c(5)
L_801F7E5C:
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_801F7E64:
    cmpw 29, 28
    .4byte 0x4180FEBC # blt .L_801F7D24
    bl fn_80204638
    bl fn_802048F4
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801F7E88:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x1008(31)
    mr 4, 31
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810094 # ble .L_801F7F44
L_801F7EB4:
    lwz 5, 0x8(4)
    cmplwi 5, 0x0
    .4byte 0x41820080 # beq .L_801F7F3C
    lbz 0, 0x11c(5)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_801F7F3C
    lwz 0, 0x4(5)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_801F7F34
    lbz 0, 0x194(5)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_801F7F3C
    lfs 2, 0xc(5)
    li 0, 0x0
    lfs 0, 0xcc(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801F7F2C
    lfs 1, 0x10(5)
    lfs 0, 0xd0(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801F7F2C
    lfs 0, 0xd4(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801F7F2C
    lfs 0, 0xd8(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801F7F2C
    li 0, 0x1
L_801F7F2C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_801F7F3C
L_801F7F34:
    li 0, 0x0
    stb 0, 0x11c(5)
L_801F7F3C:
    addi 4, 4, 0x4
    .4byte 0x4200FF74 # bdnz .L_801F7EB4
L_801F7F44:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F7F58:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stmw 22, 0x28(1)
    mr 25, 4
    fmr 31, 1
    lwz 28, 0x4(4)
    mr 22, 3
    mr 26, 5
    mr 27, 6
    li 30, -0x1
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    lwz 24, 0x1008(22)
    add 3, 0, 28
    mr 31, 22
    lbz 23, 0x31df(3)
    li 29, 0x0
    .4byte 0x48000138 # b .L_801F80E0
L_801F7FAC:
    lwz 28, 0x8(31)
    cmplwi 28, 0x0
    .4byte 0x41820124 # beq .L_801F80D8
    lbz 0, 0x11c(28)
    cmplwi 0, 0x0
    .4byte 0x41820118 # beq .L_801F80D8
    lwz 3, 0x4(28)
    lwz 0, 0x4(25)
    cmpw 3, 0
    .4byte 0x40820108 # bne .L_801F80D8
    lwz 0, 0x198(28)
    cmpw 27, 0
    .4byte 0x418200FC # beq .L_801F80D8
    cmplwi 23, 0x0
    .4byte 0x4082001C # bne .L_801F8000
    lfs 1, 0x14(25)
    lfs 0, 0x14(28)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 31
    .4byte 0x418100DC # bgt .L_801F80D8
L_801F8000:
    mr 22, 26
    .4byte 0x480000BC # b .L_801F80C0
L_801F8008:
    lwz 0, 0x1a0(28)
    cmplw 3, 0
    .4byte 0x408200AC # bne .L_801F80BC
    mr 3, 25
    addi 4, 1, 0x18
    bl fn_801F31C4
    mr 3, 28
    addi 4, 1, 0x8
    bl fn_801F31C4
    lfs 3, 0x18(1)
    lfs 4, 0x8(1)
    lfs 0, 0x1c(1)
    fcmpo cr0, 3, 4
    lfs 1, 0x20(1)
    lfs 2, 0x24(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F8050
    fmr 3, 4
L_801F8050:
    lfs 4, 0xc(1)
    fcmpo cr0, 0, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F8064
    fmr 0, 4
L_801F8064:
    lfs 4, 0x10(1)
    fcmpo cr0, 1, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F8078
    fmr 1, 4
L_801F8078:
    lfs 4, 0x14(1)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F808C
    fmr 2, 4
L_801F808C:
    fcmpo cr0, 1, 3
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_801F80AC
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F80AC
    li 0, 0x1
L_801F80AC:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_801F80BC
    lwz 30, 0x198(28)
    .4byte 0x48000018 # b .L_801F80D0
L_801F80BC:
    addi 22, 22, 0x4
L_801F80C0:
    lwz 3, 0x0(22)
    subis 0, 3, 0x4e55
    cmplwi 0, 0x4c4c
    .4byte 0x4082FF3C # bne .L_801F8008
L_801F80D0:
    cmpwi 30, 0x0
    .4byte 0x40800014 # bge .L_801F80E8
L_801F80D8:
    addi 31, 31, 0x4
    addi 29, 29, 0x1
L_801F80E0:
    cmpw 29, 24
    .4byte 0x4180FEC8 # blt .L_801F7FAC
L_801F80E8:
    mr 3, 30
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    lmw 22, 0x28(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801F8108:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 23, 0x3c(1)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 7, 0x4e55
    mr 25, 3
    fmr 31, 1
    lwz 3, 0x4(6)
    addi 0, 7, 0x4c4c
    stw 4, 0x8(1)
    mr 26, 5
    lwz 29, 0x8(3)
    stw 0, 0xc(1)
    li 30, -0x1
    lwz 23, 0x4(25)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    mr 27, 29
    add 3, 0, 23
    li 31, 0x0
    lbz 28, 0x31df(3)
    .4byte 0x48000138 # b .L_801F82A0
L_801F816C:
    lwz 23, 0x8(27)
    cmplwi 23, 0x0
    .4byte 0x41820124 # beq .L_801F8298
    lbz 0, 0x11c(23)
    cmplwi 0, 0x0
    .4byte 0x41820118 # beq .L_801F8298
    lwz 3, 0x4(23)
    lwz 0, 0x4(25)
    cmpw 3, 0
    .4byte 0x40820108 # bne .L_801F8298
    lwz 0, 0x198(23)
    cmpw 26, 0
    .4byte 0x418200FC # beq .L_801F8298
    cmplwi 28, 0x0
    .4byte 0x4082001C # bne .L_801F81C0
    lfs 1, 0x14(25)
    lfs 0, 0x14(23)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 31
    .4byte 0x418100DC # bgt .L_801F8298
L_801F81C0:
    addi 24, 1, 0x8
    .4byte 0x480000BC # b .L_801F8280
L_801F81C8:
    lwz 0, 0x1a0(23)
    cmplw 3, 0
    .4byte 0x408200AC # bne .L_801F827C
    mr 3, 25
    addi 4, 1, 0x10
    bl fn_801F31C4
    mr 3, 23
    addi 4, 1, 0x20
    bl fn_801F31C4
    lfs 3, 0x10(1)
    lfs 4, 0x20(1)
    lfs 0, 0x14(1)
    fcmpo cr0, 3, 4
    lfs 1, 0x18(1)
    lfs 2, 0x1c(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F8210
    fmr 3, 4
L_801F8210:
    lfs 4, 0x24(1)
    fcmpo cr0, 0, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F8224
    fmr 0, 4
L_801F8224:
    lfs 4, 0x28(1)
    fcmpo cr0, 1, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F8238
    fmr 1, 4
L_801F8238:
    lfs 4, 0x2c(1)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F824C
    fmr 2, 4
L_801F824C:
    fcmpo cr0, 1, 3
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_801F826C
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F826C
    li 0, 0x1
L_801F826C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_801F827C
    lwz 30, 0x198(23)
    .4byte 0x48000018 # b .L_801F8290
L_801F827C:
    addi 24, 24, 0x4
L_801F8280:
    lwz 3, 0x0(24)
    subis 0, 3, 0x4e55
    cmplwi 0, 0x4c4c
    .4byte 0x4082FF3C # bne .L_801F81C8
L_801F8290:
    cmpwi 30, 0x0
    .4byte 0x40800018 # bge .L_801F82AC
L_801F8298:
    addi 27, 27, 0x4
    addi 31, 31, 0x1
L_801F82A0:
    lwz 0, 0x1008(29)
    cmpw 31, 0
    .4byte 0x4180FEC4 # blt .L_801F816C
L_801F82AC:
    mr 3, 30
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 23, 0x3c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801F82CC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    fmr 31, 1
    mr 27, 4
    mr 29, 3
    mr 28, 5
    mr 3, 27
    addi 4, 1, 0x8
    li 30, -0x1
    bl fn_801F31C4
    lwz 31, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    lwz 29, 0x2018(29)
    add 3, 0, 31
    lbz 31, 0x31df(3)
    .4byte 0x48000104 # b .L_801F8420
L_801F8320:
    lbz 0, 0x11c(29)
    cmplwi 0, 0x0
    .4byte 0x418200F4 # beq .L_801F841C
    lwz 3, 0x4(29)
    lwz 0, 0x4(27)
    cmpw 3, 0
    .4byte 0x408200E4 # bne .L_801F841C
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x408200D8 # bne .L_801F841C
    clrlwi. 0, 28, 24
    .4byte 0x40820014 # bne .L_801F8360
    lwz 3, 0x1a0(29)
    subis 0, 3, 0x4152
    cmplwi 0, 0x494a
    .4byte 0x418200C0 # beq .L_801F841C
L_801F8360:
    cmplwi 31, 0x0
    .4byte 0x4082001C # bne .L_801F8380
    lfs 1, 0x14(27)
    lfs 0, 0x14(29)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 31
    .4byte 0x418100A0 # bgt .L_801F841C
L_801F8380:
    mr 3, 29
    addi 4, 1, 0x18
    bl fn_801F31C4
    lfs 3, 0x18(1)
    lfs 4, 0x8(1)
    lfs 0, 0x1c(1)
    fcmpo cr0, 3, 4
    lfs 1, 0x20(1)
    lfs 2, 0x24(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F83B0
    fmr 3, 4
L_801F83B0:
    lfs 4, 0xc(1)
    fcmpo cr0, 0, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F83C4
    fmr 0, 4
L_801F83C4:
    lfs 4, 0x10(1)
    fcmpo cr0, 1, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F83D8
    fmr 1, 4
L_801F83D8:
    lfs 4, 0x14(1)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F83EC
    fmr 2, 4
L_801F83EC:
    fcmpo cr0, 1, 3
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_801F840C
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F840C
    li 0, 0x1
L_801F840C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_801F841C
    lwz 30, 0x198(29)
    .4byte 0x48000010 # b .L_801F8428
L_801F841C:
    lwz 29, 0x160(29)
L_801F8420:
    cmplwi 29, 0x0
    .4byte 0x4082FEFC # bne .L_801F8320
L_801F8428:
    mr 3, 30
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801F8448:
    lwz 5, 0x15c(4)
    li 6, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820028 # beq .L_801F847C
    lwz 0, 0x160(4)
    stw 0, 0x160(5)
    lwz 3, 0x160(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801F8474
    lwz 0, 0x15c(4)
    stw 0, 0x15c(3)
L_801F8474:
    li 6, 0x1
    .4byte 0x48000030 # b .L_801F84A8
L_801F847C:
    lwz 0, 0x2018(3)
    cmplw 4, 0
    .4byte 0x40820024 # bne .L_801F84A8
    lwz 0, 0x160(4)
    stw 0, 0x2018(3)
    lwz 3, 0x2018(3)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801F84A4
    li 0, 0x0
    stw 0, 0x15c(3)
L_801F84A4:
    li 6, 0x1
L_801F84A8:
    clrlwi. 0, 6, 24
    .4byte 0x41820010 # beq .L_801F84BC
    li 0, 0x0
    stw 0, 0x15c(4)
    stw 0, 0x160(4)
L_801F84BC:
    clrlwi 3, 6, 24
    blr

fn_801F84C4:
    lwz 0, 0x2018(3)
    li 5, 0x0
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_801F8520
    mr 3, 0
L_801F84D8:
    cmplw 3, 4
    lwz 0, 0x160(3)
    .4byte 0x40820010 # bne .L_801F84F0
    li 0, 0x1
    stb 0, 0x165(4)
    .4byte 0x48000014 # b .L_801F8500
L_801F84F0:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801F8500
    mr 3, 0
    .4byte 0x4BFFFFDC # b .L_801F84D8
L_801F8500:
    cmplw 3, 4
    .4byte 0x41820038 # beq .L_801F853C
    stw 4, 0x160(3)
    li 0, 0x1
    li 5, 0x1
    stw 3, 0x15c(4)
    stb 0, 0x165(4)
    .4byte 0x48000020 # b .L_801F853C
L_801F8520:
    stw 4, 0x2018(3)
    li 3, 0x0
    li 0, 0x1
    li 5, 0x1
    stw 3, 0x15c(4)
    stw 3, 0x160(4)
    stb 0, 0x165(4)
L_801F853C:
    clrlwi 3, 5, 24
    blr

