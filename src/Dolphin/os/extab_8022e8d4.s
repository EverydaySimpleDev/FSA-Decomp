# Fresh-gap-hunt batch 20 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000AA80
etb_8000AA80:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA80, 8

.global etb_8000AA88
etb_8000AA88:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA88, 8

.section extabindex, "a"
.balign 4
.global eti_80018ACC
eti_80018ACC:
    .4byte fn_8022E8D4
    .4byte 0x0000009C
    .4byte etb_8000AA80
.size eti_80018ACC, 12

.global eti_80018AD8
eti_80018AD8:
    .4byte fn_8022E970
    .4byte 0x0000009C
    .4byte etb_8000AA88
.size eti_80018AD8, 12

.text
.balign 4
.global fn_8022E8D4
.global fn_8022E970

fn_8022E8D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E8F4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022E960
L_8022E8F4:
    .4byte 0x4082000C # bne .L_8022E900
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E940
L_8022E900:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E910
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E940
L_8022E910:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E920
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E940
L_8022E920:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E93C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E940
L_8022E93C:
    lbz 0, 0xcac(4)
L_8022E940:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022E95C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80248778
    .4byte 0x48000008 # b .L_8022E960
L_8022E95C:
    li 3, 0x0
L_8022E960:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022E970:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E990
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022E9FC
L_8022E990:
    .4byte 0x4082000C # bne .L_8022E99C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E9DC
L_8022E99C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E9AC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E9DC
L_8022E9AC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E9BC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E9DC
L_8022E9BC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E9D8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E9DC
L_8022E9D8:
    lbz 0, 0xcac(4)
L_8022E9DC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022E9F8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80248970
    .4byte 0x48000008 # b .L_8022E9FC
L_8022E9F8:
    li 3, 0x0
L_8022E9FC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

