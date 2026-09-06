# fn_802F53F4 - shared rendering infrastructure helper (0x17C)
# NOT an actor. Called by fn_80304FB0. Calls fn_8022EA0C (target resolve)
# and fn_803068D0 (unfamiliar). Track A: byte-match verified, structural
# overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D3CC
etb_8000D3CC:
    .4byte 0x50080000
    .4byte 0x00000000
.size etb_8000D3CC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C6B4
eti_8001C6B4:
    .4byte fn_802F53F4
    .4byte 0x0000017C
    .4byte etb_8000D3CC
.size eti_8001C6B4, 12

.text
.balign 4
.global fn_802F53F4

fn_802F53F4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 22, 0x8(1)
    mr 23, 5
    mr 22, 3
    mr 26, 4
    lbz 0, 0x2(5)
    extrwi. 0, 0, 3, 27
    .4byte 0x41820144 # beq .L_802F555C
    lbz 0, 0x3(23)
    extrwi 0, 0, 4, 24
    cmplwi 0, 0x5
    .4byte 0x4182000C # beq .L_802F5434
    cmplwi 0, 0xe
    .4byte 0x40820110 # bne .L_802F5540
L_802F5434:
    slwi 3, 26, 2
    li 0, 0xd
    add 3, 22, 3
    subi 4, 23, 0x4
    lwz 3, 0x11c(3)
    subi 5, 3, 0x4
    mtctr 0
L_802F5450:
    lwz 3, 0x4(4)
    lwzu 0, 0x8(4)
    stw 3, 0x4(5)
    stwu 0, 0x8(5)
    .4byte 0x4200FFF0 # bdnz .L_802F5450
    lbz 0, 0x2(23)
    extrwi 0, 0, 2, 24
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_802F5488
    lbz 0, 0x5(23)
    add 3, 22, 26
    extrwi 0, 0, 1, 24
    stb 0, 0x134(3)
    .4byte 0x4800001C # b .L_802F54A0
L_802F5488:
    cmplwi 0, 0x3
    .4byte 0x40820014 # bne .L_802F54A0
    lbz 0, 0x4(23)
    add 3, 22, 26
    extrwi 0, 0, 2, 25
    stb 0, 0x130(3)
L_802F54A0:
    lbz 0, 0x2(23)
    extrwi. 0, 0, 1, 25
    .4byte 0x41820098 # beq .L_802F5540
    lis 5, lbl_80506DA8@ha
    lis 4, lbl_80506DB8@ha
    lis 3, lbl_80506DC8@ha
    slwi 25, 26, 2
    addi 0, 5, lbl_80506DA8@l
    addi 4, 4, lbl_80506DB8@l
    add 29, 0, 25
    li 24, 0x0
    addi 0, 3, lbl_80506DC8@l
    lis 3, lbl_80506DD8@ha
    add 28, 4, 25
    li 30, 0x0
    add 27, 0, 25
    addi 31, 3, lbl_80506DD8@l
L_802F54E4:
    lbz 0, 0x7(23)
    mr 3, 26
    lbz 5, 0x6(23)
    extrwi 4, 0, 4, 24
    clrlwi 0, 0, 28
    sraw 5, 5, 30
    sraw 4, 4, 24
    sraw 0, 0, 24
    clrlwi 5, 5, 30
    clrlwi 4, 4, 31
    stb 5, 0x0(29)
    clrlwi 0, 0, 31
    stb 4, 0x0(28)
    stb 0, 0x0(27)
    bl fn_8022EA0C
    addi 24, 24, 0x1
    stwx 3, 31, 25
    cmpwi 24, 0x4
    addi 30, 30, 0x2
    addi 29, 29, 0x1
    addi 28, 28, 0x1
    addi 27, 27, 0x1
    .4byte 0x4180FFA8 # blt .L_802F54E4
L_802F5540:
    add 3, 22, 26
    li 4, 0x1
    slwi 0, 26, 2
    stb 4, 0x12c(3)
    add 3, 22, 0
    lwz 3, 0x11c(3)
    bl fn_803068D0
L_802F555C:
    lmw 22, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

