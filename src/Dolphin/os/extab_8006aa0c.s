.text
.balign 4
.global fseek
.global fn_8006AA78
.global fn_8006ACE8
.global wcstombs
.global fn_8006AEE4


fseek:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    li 3, 0x2
    bl __begin_critical_region
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_8006AA78
    mr 0, 3
    li 3, 0x2
    mr 31, 0
    bl __end_critical_region
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8006AA78:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 3
    stw 4, 0x8(1)
    lhz 0, 0x4(3)
    extrwi 0, 0, 3, 23
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8006AAB4
    lbz 0, 0xa(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006AAC4
L_8006AAB4:
    li 0, 0x28
    li 3, -0x1
    .4byte 0x900D8B78 # stw r0, errno@sda21(r0)
    .4byte 0x48000210 # b .L_8006ACD0
L_8006AAC4:
    lbz 0, 0x8(30)
    extrwi 0, 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8006AB04
    li 4, 0x0
    bl __flush_buffer
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_8006AB04
    li 0, 0x1
    li 4, 0x0
    stb 0, 0xa(30)
    li 0, 0x28
    li 3, -0x1
    stw 4, 0x28(30)
    .4byte 0x900D8B78 # stw r0, errno@sda21(r0)
    .4byte 0x480001D0 # b .L_8006ACD0
L_8006AB04:
    cmpwi 31, 0x1
    .4byte 0x408200B4 # bne .L_8006ABBC
    lhz 0, 0x4(30)
    li 31, 0x0
    li 4, 0x0
    extrwi 0, 0, 3, 23
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_8006AB2C
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8006AB38
L_8006AB2C:
    lbz 0, 0xa(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006AB48
L_8006AB38:
    li 0, 0x28
    li 3, -0x1
    .4byte 0x900D8B78 # stw r0, errno@sda21(r0)
    .4byte 0x4800006C # b .L_8006ABB0
L_8006AB48:
    lbz 0, 0x8(30)
    extrwi. 5, 0, 3, 24
    .4byte 0x4082000C # bne .L_8006AB5C
    lwz 3, 0x18(30)
    .4byte 0x48000058 # b .L_8006ABB0
L_8006AB5C:
    lwz 7, 0x1c(30)
    cmplwi 5, 0x3
    lwz 0, 0x24(30)
    lwz 3, 0x34(30)
    subf 6, 7, 0
    add 3, 3, 6
    .4byte 0x4180000C # blt .L_8006AB80
    subi 4, 5, 0x2
    subf 3, 4, 3
L_8006AB80:
    lbz 0, 0x5(30)
    extrwi. 0, 0, 1, 28
    .4byte 0x40820028 # bne .L_8006ABB0
    subf. 0, 4, 6
    mtctr 0
    .4byte 0x4182001C # beq .L_8006ABB0
L_8006AB98:
    lbz 0, 0x0(7)
    addi 7, 7, 0x1
    cmplwi 0, 0xa
    .4byte 0x40820008 # bne .L_8006ABAC
    addi 3, 3, 0x1
L_8006ABAC:
    .4byte 0x4200FFEC # bdnz .L_8006AB98
L_8006ABB0:
    lwz 0, 0x8(1)
    add 0, 0, 3
    stw 0, 0x8(1)
L_8006ABBC:
    cmpwi 31, 0x2
    .4byte 0x41820090 # beq .L_8006AC50
    lbz 0, 0x4(30)
    extrwi 0, 0, 3, 26
    cmplwi 0, 0x3
    .4byte 0x41820080 # beq .L_8006AC50
    lbz 0, 0x8(30)
    extrwi 0, 0, 3, 24
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8006ABEC
    cmplwi 0, 0x3
    .4byte 0x40820068 # bne .L_8006AC50
L_8006ABEC:
    lwz 3, 0x8(1)
    lwz 0, 0x18(30)
    cmplw 3, 0
    .4byte 0x40800010 # bge .L_8006AC08
    lwz 0, 0x34(30)
    cmplw 3, 0
    .4byte 0x40800018 # bge .L_8006AC1C
L_8006AC08:
    lbz 0, 0x8(30)
    li 3, 0x0
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x8(30)
    .4byte 0x48000048 # b .L_8006AC60
L_8006AC1C:
    lwz 4, 0x1c(30)
    subf 0, 0, 3
    li 3, 0x2
    add 0, 4, 0
    stw 0, 0x24(30)
    lwz 4, 0x8(1)
    lwz 0, 0x18(30)
    subf 0, 4, 0
    stw 0, 0x28(30)
    lbz 0, 0x8(30)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x8(30)
    .4byte 0x48000014 # b .L_8006AC60
L_8006AC50:
    lbz 0, 0x8(30)
    li 3, 0x0
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x8(30)
L_8006AC60:
    lbz 0, 0x8(30)
    extrwi. 0, 0, 3, 24
    .4byte 0x40820064 # bne .L_8006ACCC
    lwz 12, 0x38(30)
    cmplwi 12, 0x0
    .4byte 0x41820044 # beq .L_8006ACB8
    mr 5, 31
    addi 4, 1, 0x8
    lwz 3, 0x0(30)
    lwz 6, 0x48(30)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_8006ACB8
    li 0, 0x1
    li 4, 0x0
    stb 0, 0xa(30)
    li 0, 0x28
    li 3, -0x1
    stw 4, 0x28(30)
    .4byte 0x900D8B78 # stw r0, errno@sda21(r0)
    .4byte 0x4800001C # b .L_8006ACD0
L_8006ACB8:
    li 3, 0x0
    stb 3, 0x9(30)
    lwz 0, 0x8(1)
    stw 0, 0x18(30)
    stw 3, 0x28(30)
L_8006ACCC:
    li 3, 0x0
L_8006ACD0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8006ACE8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    li 3, 0x2
    bl __begin_critical_region
    lhz 0, 0x4(30)
    li 4, 0x0
    extrwi 0, 0, 3, 23
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_8006AD24
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8006AD30
L_8006AD24:
    lbz 0, 0xa(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006AD40
L_8006AD30:
    li 0, 0x28
    li 31, -0x1
    .4byte 0x900D8B78 # stw r0, errno@sda21(r0)
    .4byte 0x4800006C # b .L_8006ADA8
L_8006AD40:
    lbz 0, 0x8(30)
    extrwi. 5, 0, 3, 24
    .4byte 0x4082000C # bne .L_8006AD54
    lwz 31, 0x18(30)
    .4byte 0x48000058 # b .L_8006ADA8
L_8006AD54:
    lwz 7, 0x1c(30)
    cmplwi 5, 0x3
    lwz 0, 0x24(30)
    lwz 3, 0x34(30)
    subf 6, 7, 0
    add 31, 3, 6
    .4byte 0x4180000C # blt .L_8006AD78
    subi 4, 5, 0x2
    subf 31, 4, 31
L_8006AD78:
    lbz 0, 0x5(30)
    extrwi. 0, 0, 1, 28
    .4byte 0x40820028 # bne .L_8006ADA8
    subf. 0, 4, 6
    mtctr 0
    .4byte 0x4182001C # beq .L_8006ADA8
L_8006AD90:
    lbz 0, 0x0(7)
    addi 7, 7, 0x1
    cmplwi 0, 0xa
    .4byte 0x40820008 # bne .L_8006ADA4
    addi 31, 31, 0x1
L_8006ADA4:
    .4byte 0x4200FFEC # bdnz .L_8006AD90
L_8006ADA8:
    li 3, 0x2
    bl __end_critical_region
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

wcstombs:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr. 28, 3
    mr 29, 5
    li 31, 0x0
    .4byte 0x4182000C # beq .L_8006ADF4
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8006ADFC
L_8006ADF4:
    li 3, 0x0
    .4byte 0x480000D8 # b .L_8006AED0
L_8006ADFC:
    mr 30, 4
    .4byte 0x480000C4 # b .L_8006AEC4
L_8006AE04:
    lhz 6, 0x0(30)
    cmplwi 6, 0x0
    .4byte 0x40820010 # bne .L_8006AE1C
    li 0, 0x0
    stbx 0, 28, 31
    .4byte 0x480000B8 # b .L_8006AED0
L_8006AE1C:
    .4byte 0x80028480 # lwz r0, lbl_8053B420@sda21(r0)
    cmplwi 6, 0x80
    addi 30, 30, 0x2
    stw 0, 0x8(1)
    .4byte 0x4080000C # bge .L_8006AE38
    li 27, 0x1
    .4byte 0x48000018 # b .L_8006AE4C
L_8006AE38:
    cmplwi 6, 0x800
    .4byte 0x4080000C # bge .L_8006AE48
    li 27, 0x2
    .4byte 0x48000008 # b .L_8006AE4C
L_8006AE48:
    li 27, 0x3
L_8006AE4C:
    cmpwi 27, 0x2
    addi 5, 1, 0xc
    add 5, 5, 27
    .4byte 0x4182002C # beq .L_8006AE84
    .4byte 0x40800010 # bge .L_8006AE6C
    cmpwi 27, 0x1
    .4byte 0x40800030 # bge .L_8006AE94
    .4byte 0x4800003C # b .L_8006AEA4
L_8006AE6C:
    cmpwi 27, 0x4
    .4byte 0x40800034 # bge .L_8006AEA4
    clrlwi 0, 6, 26
    extrwi 6, 6, 10, 16
    ori 0, 0, 0x80
    stbu 0, -0x1(5)
L_8006AE84:
    clrlwi 0, 6, 26
    extrwi 6, 6, 10, 16
    ori 0, 0, 0x80
    stbu 0, -0x1(5)
L_8006AE94:
    addi 4, 1, 0x8
    lbzx 0, 4, 27
    or 0, 6, 0
    stb 0, -0x1(5)
L_8006AEA4:
    add 0, 31, 27
    cmplw 0, 29
    .4byte 0x41810024 # bgt .L_8006AED0
    mr 5, 27
    add 3, 28, 31
    addi 4, 1, 0xc
    bl strncat
    add 31, 31, 27
L_8006AEC4:
    cmplw 31, 29
    mr 3, 31
    .4byte 0x4081FF38 # ble .L_8006AE04
L_8006AED0:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8006AEE4:
    subi 6, 3, 0x1
    subi 7, 4, 0x1
    addi 4, 5, 0x1
    .4byte 0x48000030 # b .L_8006AF20
L_8006AEF4:
    lbzu 3, 0x1(6)
    lbzu 0, 0x1(7)
    cmplw 3, 0
    .4byte 0x41820020 # beq .L_8006AF20
    lbz 4, 0x0(6)
    li 3, 0x1
    lbz 0, 0x0(7)
    cmplw 4, 0
    bgelr
    li 3, -0x1
    blr
L_8006AF20:
    subic. 4, 4, 0x1
    .4byte 0x4082FFD0 # bne .L_8006AEF4
    li 3, 0x0
    blr
