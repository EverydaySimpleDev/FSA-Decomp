# Fresh-gap-hunt batch 19 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A980
etb_8000A980:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A980, 8

.global etb_8000A988
etb_8000A988:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A988, 8

.global etb_8000A990
etb_8000A990:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A990, 8

.section extabindex, "a"
.balign 4
.global eti_8001894C
eti_8001894C:
    .4byte fn_8022CB94
    .4byte 0x0000008C
    .4byte etb_8000A980
.size eti_8001894C, 12

.global eti_80018958
eti_80018958:
    .4byte fn_8022CC20
    .4byte 0x0000008C
    .4byte etb_8000A988
.size eti_80018958, 12

.global eti_80018964
eti_80018964:
    .4byte fn_8022CCAC
    .4byte 0x0000009C
    .4byte etb_8000A990
.size eti_80018964, 12

.text
.balign 4
.global fn_8022CB94
.global fn_8022CC20
.global fn_8022CCAC

fn_8022CB94:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_8022CC10
    .4byte 0x4082000C # bne .L_8022CBB8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CBF8
L_8022CBB8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022CBC8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CBF8
L_8022CBC8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022CBD8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CBF8
L_8022CBD8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022CBF4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CBF8
L_8022CBF4:
    lbz 0, 0xcac(4)
L_8022CBF8:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022CC10
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024B9E8
L_8022CC10:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022CC20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_8022CC9C
    .4byte 0x4082000C # bne .L_8022CC44
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CC84
L_8022CC44:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022CC54
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CC84
L_8022CC54:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022CC64
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CC84
L_8022CC64:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022CC80
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CC84
L_8022CC80:
    lbz 0, 0xcac(4)
L_8022CC84:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022CC9C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024BAEC
L_8022CC9C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022CCAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022CCCC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022CD38
L_8022CCCC:
    .4byte 0x4082000C # bne .L_8022CCD8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CD18
L_8022CCD8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022CCE8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CD18
L_8022CCE8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022CCF8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CD18
L_8022CCF8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022CD14
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CD18
L_8022CD14:
    lbz 0, 0xcac(4)
L_8022CD18:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022CD34
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl GetBusyLocked
    .4byte 0x48000008 # b .L_8022CD38
L_8022CD34:
    li 3, 0x0
L_8022CD38:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

