# Fresh-gap-hunt batch 21 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B188
etb_8000B188:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B188, 8

.global etb_8000B190
etb_8000B190:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B190, 8

.section extabindex, "a"
.balign 4
.global eti_80019558
eti_80019558:
    .4byte fn_8023DEDC
    .4byte 0x0000008C
    .4byte etb_8000B188
.size eti_80019558, 12

.global eti_80019564
eti_80019564:
    .4byte fn_8023DF68
    .4byte 0x0000008C
    .4byte etb_8000B190
.size eti_80019564, 12

.text
.balign 4
.global fn_8023DEDC
.global fn_8023DF68

fn_8023DEDC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8023DF58
    .4byte 0x4082000C # bne .L_8023DF00
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023DF40
L_8023DF00:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023DF10
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023DF40
L_8023DF10:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023DF20
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023DF40
L_8023DF20:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023DF3C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023DF40
L_8023DF3C:
    lbz 0, 0xcac(5)
L_8023DF40:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8023DF58
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80252BD0
L_8023DF58:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023DF68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8023DFE4
    .4byte 0x4082000C # bne .L_8023DF8C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023DFCC
L_8023DF8C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023DF9C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023DFCC
L_8023DF9C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023DFAC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023DFCC
L_8023DFAC:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023DFC8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023DFCC
L_8023DFC8:
    lbz 0, 0xcac(5)
L_8023DFCC:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8023DFE4
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80252CF0
L_8023DFE4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

