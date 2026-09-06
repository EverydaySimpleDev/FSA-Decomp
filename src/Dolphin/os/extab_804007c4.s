# fn_804007C4 - actor@lbl_804B0F50: destructor (0x208)
.section extab, "a"
.balign 4
.global etb_8001008C
etb_8001008C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8001008C, 8

.section extabindex, "a"
.balign 4
.global eti_8001FE34
eti_8001FE34:
    .4byte fn_804007C4
    .4byte 0x00000208
    .4byte etb_8001008C
.size eti_8001FE34, 12

.text
.balign 4
.global fn_804007C4

fn_804007C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x418201D0 # beq .L_804009B0
    lis 4, lbl_804B0F50@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804B0F50@l
    stw 0, 0x0(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x18(3)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8040082C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8040082C:
    li 0, 0x0
    stw 0, 0xc(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80400854
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400854:
    li 0, 0x0
    stw 0, 0x14(30)
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80400888
    .4byte 0x41820018 # beq .L_80400880
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400880:
    li 0, 0x0
    stw 0, 0x18(30)
L_80400888:
    lwz 3, 0x1c(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_804008B4
    .4byte 0x41820018 # beq .L_804008AC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804008AC:
    li 0, 0x0
    stw 0, 0x1c(30)
L_804008B4:
    lwz 3, 0x20(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_804008E0
    .4byte 0x41820018 # beq .L_804008D8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804008D8:
    li 0, 0x0
    stw 0, 0x20(30)
L_804008E0:
    lwz 3, 0x24(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8040090C
    .4byte 0x41820018 # beq .L_80400904
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400904:
    li 0, 0x0
    stw 0, 0x24(30)
L_8040090C:
    lwz 3, 0x28(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80400938
    .4byte 0x41820018 # beq .L_80400930
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400930:
    li 0, 0x0
    stw 0, 0x28(30)
L_80400938:
    lwz 3, 0x2c(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80400964
    .4byte 0x41820018 # beq .L_8040095C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8040095C:
    li 0, 0x0
    stw 0, 0x2c(30)
L_80400964:
    lwz 3, 0x30(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80400990
    .4byte 0x41820018 # beq .L_80400988
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80400988:
    li 0, 0x0
    stw 0, 0x30(30)
L_80400990:
    lis 3, lbl_80529DEC@ha
    extsh. 0, 31
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x0
    stb 0, 0x225(3)
    .4byte 0x4081000C # ble .L_804009B0
    mr 3, 30
    bl dtor_80084580
L_804009B0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

