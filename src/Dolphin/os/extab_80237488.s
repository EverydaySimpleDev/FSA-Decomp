# Fresh-gap-hunt batch 16 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000AEB8
etb_8000AEB8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AEB8, 8

.global etb_8000AEC0
etb_8000AEC0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AEC0, 8

.global etb_8000AEC8
etb_8000AEC8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AEC8, 8

.global etb_8000AED0
etb_8000AED0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AED0, 8

.global etb_8000AED8
etb_8000AED8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AED8, 8

.section extabindex, "a"
.balign 4
.global eti_80019120
eti_80019120:
    .4byte fn_80237488
    .4byte 0x0000009C
    .4byte etb_8000AEB8
.size eti_80019120, 12

.global eti_8001912C
eti_8001912C:
    .4byte fn_80237524
    .4byte 0x0000008C
    .4byte etb_8000AEC0
.size eti_8001912C, 12

.global eti_80019138
eti_80019138:
    .4byte fn_802375B0
    .4byte 0x0000009C
    .4byte etb_8000AEC8
.size eti_80019138, 12

.global eti_80019144
eti_80019144:
    .4byte fn_8023764C
    .4byte 0x0000008C
    .4byte etb_8000AED0
.size eti_80019144, 12

.global eti_80019150
eti_80019150:
    .4byte fn_802376D8
    .4byte 0x0000009C
    .4byte etb_8000AED8
.size eti_80019150, 12

.text
.balign 4
.global fn_80237488
.global fn_80237524
.global fn_802375B0
.global fn_8023764C
.global fn_802376D8

fn_80237488:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_802374A8
    li 3, 0x0
    .4byte 0x48000070 # b .L_80237514
L_802374A8:
    .4byte 0x4082000C # bne .L_802374B4
    li 0, 0x0
    .4byte 0x48000044 # b .L_802374F4
L_802374B4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802374C4
    li 0, 0x0
    .4byte 0x48000034 # b .L_802374F4
L_802374C4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802374D4
    li 0, 0x0
    .4byte 0x48000024 # b .L_802374F4
L_802374D4:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802374F0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802374F4
L_802374F0:
    lbz 0, 0xcac(5)
L_802374F4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80237510
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80247594
    .4byte 0x48000008 # b .L_80237514
L_80237510:
    li 3, 0x0
L_80237514:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80237524:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_802375A0
    .4byte 0x4082000C # bne .L_80237548
    li 0, 0x0
    .4byte 0x48000044 # b .L_80237588
L_80237548:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80237558
    li 0, 0x0
    .4byte 0x48000034 # b .L_80237588
L_80237558:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80237568
    li 0, 0x0
    .4byte 0x48000024 # b .L_80237588
L_80237568:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80237584
    li 0, 0x0
    .4byte 0x48000008 # b .L_80237588
L_80237584:
    lbz 0, 0xcac(5)
L_80237588:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_802375A0
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_802416FC
L_802375A0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802375B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802375D0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023763C
L_802375D0:
    .4byte 0x4082000C # bne .L_802375DC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023761C
L_802375DC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802375EC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023761C
L_802375EC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802375FC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023761C
L_802375FC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80237618
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023761C
L_80237618:
    lbz 0, 0xcac(4)
L_8023761C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80237638
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80241794
    .4byte 0x48000008 # b .L_8023763C
L_80237638:
    li 3, 0x0
L_8023763C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023764C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_802376C8
    .4byte 0x4082000C # bne .L_80237670
    li 0, 0x0
    .4byte 0x48000044 # b .L_802376B0
L_80237670:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80237680
    li 0, 0x0
    .4byte 0x48000034 # b .L_802376B0
L_80237680:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80237690
    li 0, 0x0
    .4byte 0x48000024 # b .L_802376B0
L_80237690:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802376AC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802376B0
L_802376AC:
    lbz 0, 0xcac(5)
L_802376B0:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_802376C8
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80241804
L_802376C8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802376D8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802376F8
    li 3, 0x0
    .4byte 0x48000070 # b .L_80237764
L_802376F8:
    .4byte 0x4082000C # bne .L_80237704
    li 0, 0x0
    .4byte 0x48000044 # b .L_80237744
L_80237704:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80237714
    li 0, 0x0
    .4byte 0x48000034 # b .L_80237744
L_80237714:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80237724
    li 0, 0x0
    .4byte 0x48000024 # b .L_80237744
L_80237724:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80237740
    li 0, 0x0
    .4byte 0x48000008 # b .L_80237744
L_80237740:
    lbz 0, 0xcac(4)
L_80237744:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80237760
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80241864
    .4byte 0x48000008 # b .L_80237764
L_80237760:
    li 3, 0x0
L_80237764:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

