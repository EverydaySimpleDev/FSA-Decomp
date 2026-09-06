# Fresh-gap-hunt batch 19 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A960
etb_8000A960:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A960, 8

.global etb_8000A968
etb_8000A968:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A968, 8

.global etb_8000A970
etb_8000A970:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A970, 8

.section extabindex, "a"
.balign 4
.global eti_8001891C
eti_8001891C:
    .4byte fn_8022C8EC
    .4byte 0x000000C0
    .4byte etb_8000A960
.size eti_8001891C, 12

.global eti_80018928
eti_80018928:
    .4byte fn_8022C9AC
    .4byte 0x000000C0
    .4byte etb_8000A968
.size eti_80018928, 12

.global eti_80018934
eti_80018934:
    .4byte fn_8022CA6C
    .4byte 0x0000008C
    .4byte etb_8000A970
.size eti_80018934, 12

.text
.balign 4
.global fn_8022C8EC
.global fn_8022C9AC
.global fn_8022CA6C

fn_8022C8EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C90C
    li 3, 0x0
    .4byte 0x48000094 # b .L_8022C99C
L_8022C90C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C91C
    li 3, 0x0
    .4byte 0x48000084 # b .L_8022C99C
L_8022C91C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C92C
    li 3, 0x0
    .4byte 0x48000074 # b .L_8022C99C
L_8022C92C:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C93C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C97C
L_8022C93C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C94C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C97C
L_8022C94C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C95C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C97C
L_8022C95C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C978
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C97C
L_8022C978:
    lbz 0, 0xcac(4)
L_8022C97C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C998
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80247534
    .4byte 0x48000008 # b .L_8022C99C
L_8022C998:
    li 3, 0x0
L_8022C99C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C9AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C9CC
    li 3, 0x0
    .4byte 0x48000094 # b .L_8022CA5C
L_8022C9CC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C9DC
    li 3, 0x0
    .4byte 0x48000084 # b .L_8022CA5C
L_8022C9DC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C9EC
    li 3, 0x0
    .4byte 0x48000074 # b .L_8022CA5C
L_8022C9EC:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C9FC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CA3C
L_8022C9FC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022CA0C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CA3C
L_8022CA0C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022CA1C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CA3C
L_8022CA1C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022CA38
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CA3C
L_8022CA38:
    lbz 0, 0xcac(4)
L_8022CA3C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022CA58
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80247564
    .4byte 0x48000008 # b .L_8022CA5C
L_8022CA58:
    li 3, 0x0
L_8022CA5C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022CA6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80ED90D0 # lwz r7, lbl_8053AC90@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x41820068 # beq .L_8022CAE8
    .4byte 0x4082000C # bne .L_8022CA90
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CAD0
L_8022CA90:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022CAA0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CAD0
L_8022CAA0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022CAB0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CAD0
L_8022CAB0:
    slwi 0, 3, 2
    add 6, 7, 0
    lwz 6, 0x4(6)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022CACC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CAD0
L_8022CACC:
    lbz 0, 0xcac(6)
L_8022CAD0:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022CAE8
    slwi 0, 3, 2
    add 3, 7, 0
    lwz 3, 0x4(3)
    bl fn_80248004
L_8022CAE8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

