# fn_803B2FB0 - helper (0x1fc)
.section extab, "a"
.balign 4
.global etb_8000F4DC
etb_8000F4DC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000F4DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F264
eti_8001F264:
    .4byte fn_803B2FB0
    .4byte 0x000001FC
    .4byte etb_8000F4DC
.size eti_8001F264, 12

.text
.balign 4
.global fn_803B2FB0

fn_803B2FB0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    mr 31, 29
    stw 28, 0x10(1)
    .4byte 0x48000160 # b .L_803B3138
L_803B2FDC:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x40
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x418200AC # beq .L_803B30A4
    addi 28, 30, 0x4b0
    lbzx 0, 29, 28
    extrwi. 0, 0, 1, 30
    .4byte 0x40820128 # bne .L_803B3130
    lwz 0, 0x454(29)
    li 3, 0x0
    li 4, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810028 # ble .L_803B3048
L_803B3024:
    addi 0, 4, 0x4b4
    lbzx 0, 29, 0
    cmplwi 0, 0xff
    .4byte 0x41820010 # beq .L_803B3040
    clrlwi 3, 3, 24
    addi 0, 3, 0x1
    clrlwi 3, 0, 24
L_803B3040:
    addi 4, 4, 0x1
    .4byte 0x4200FFE0 # bdnz .L_803B3024
L_803B3048:
    clrlwi 3, 3, 24
    li 4, 0x1e
    addi 0, 3, 0x4b4
    li 5, -0x1
    stbx 30, 29, 0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lbzx 0, 29, 28
    ori 0, 0, 0x2
    stbx 0, 29, 28
    lwz 0, 0x3c0(31)
    cmpwi 0, 0xe7
    .4byte 0x408200B8 # bne .L_803B3130
    lis 3, 0x1
    addi 4, 1, 0x8
    addi 0, 3, 0x8
    stw 0, 0x8(1)
    lwz 3, 0x174(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000090 # b .L_803B3130
L_803B30A4:
    addi 6, 30, 0x4b0
    lbzx 0, 29, 6
    extrwi. 0, 0, 1, 30
    .4byte 0x41820080 # beq .L_803B3130
    clrlwi 5, 30, 24
    li 7, 0x0
    .4byte 0x4800005C # b .L_803B3118
L_803B30C0:
    addi 0, 7, 0x4b4
    lbzx 0, 29, 0
    cmplw 0, 5
    .4byte 0x40820048 # bne .L_803B3114
    subi 0, 3, 0x1
    cmpw 7, 0
    .4byte 0x4080002C # bge .L_803B3104
    mr 4, 7
    .4byte 0x48000014 # b .L_803B30F4
L_803B30E4:
    add 3, 29, 4
    addi 4, 4, 0x1
    lbz 0, 0x4b5(3)
    stb 0, 0x4b4(3)
L_803B30F4:
    lwz 3, 0x454(29)
    subi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x4180FFE4 # blt .L_803B30E4
L_803B3104:
    lwz 3, 0x454(29)
    li 4, 0xff
    addi 0, 3, 0x4b3
    stbx 4, 29, 0
L_803B3114:
    addi 7, 7, 0x1
L_803B3118:
    lwz 3, 0x454(29)
    cmpw 7, 3
    .4byte 0x4180FFA0 # blt .L_803B30C0
    lbzx 0, 29, 6
    rlwinm 0, 0, 0, 31, 29
    stbx 0, 29, 6
L_803B3130:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_803B3138:
    lwz 0, 0x454(29)
    cmpw 30, 0
    .4byte 0x4180FE9C # blt .L_803B2FDC
    li 28, 0x0
    .4byte 0x48000038 # b .L_803B3180
L_803B314C:
    addi 0, 28, 0x4b4
    lbzx 0, 29, 0
    cmplwi 0, 0xff
    .4byte 0x41820024 # beq .L_803B317C
    mulli 5, 0, 0xc
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 3, 0x30(3)
    li 6, 0x5
    addi 5, 5, 0x2f0
    add 5, 29, 5
    bl fn_8015F8FC
L_803B317C:
    addi 28, 28, 0x1
L_803B3180:
    lwz 0, 0x454(29)
    cmpw 28, 0
    .4byte 0x4180FFC4 # blt .L_803B314C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

