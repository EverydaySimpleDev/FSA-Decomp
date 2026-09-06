# Fresh-gap-hunt batch 14 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B028
etb_8000B028:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B028, 8

.global etb_8000B030
etb_8000B030:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B030, 8

.global etb_8000B038
etb_8000B038:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B038, 8

.global etb_8000B040
etb_8000B040:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B040, 8

.global etb_8000B048
etb_8000B048:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B048, 8

.section extabindex, "a"
.balign 4
.global eti_80019348
eti_80019348:
    .4byte fn_8023A5B8
    .4byte 0x0000009C
    .4byte etb_8000B028
.size eti_80019348, 12

.global eti_80019354
eti_80019354:
    .4byte fn_8023A6CC
    .4byte 0x000000F0
    .4byte etb_8000B030
.size eti_80019354, 12

.global eti_80019360
eti_80019360:
    .4byte fn_8023A7BC
    .4byte 0x000000E0
    .4byte etb_8000B038
.size eti_80019360, 12

.global eti_8001936C
eti_8001936C:
    .4byte fn_8023A89C
    .4byte 0x000000E0
    .4byte etb_8000B040
.size eti_8001936C, 12

.global eti_80019378
eti_80019378:
    .4byte fn_8023A97C
    .4byte 0x0000009C
    .4byte etb_8000B048
.size eti_80019378, 12

.text
.balign 4
.global fn_8023A5B8
.global fn_8023A654
.global fn_8023A6CC
.global fn_8023A7BC
.global fn_8023A89C
.global fn_8023A97C

fn_8023A5B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023A5D8
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023A644
L_8023A5D8:
    .4byte 0x4082000C # bne .L_8023A5E4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023A624
L_8023A5E4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023A5F4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023A624
L_8023A5F4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023A604
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023A624
L_8023A604:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A620
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A624
L_8023A620:
    lbz 0, 0xcac(4)
L_8023A624:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023A640
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_GetField_0xb9b
    .4byte 0x48000008 # b .L_8023A644
L_8023A640:
    li 3, 0x0
L_8023A644:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023A654:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    beqlr
    .4byte 0x4082000C # bne .L_8023A66C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023A6AC
L_8023A66C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023A67C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023A6AC
L_8023A67C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023A68C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023A6AC
L_8023A68C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A6A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A6AC
L_8023A6A8:
    lbz 0, 0xcac(4)
L_8023A6AC:
    clrlwi. 0, 0, 24
    beqlr
    slwi 0, 3, 2
    li 4, 0x1
    add 3, 5, 0
    lwz 3, 0x4(3)
    stb 4, 0xb9f(3)
    blr

fn_8023A6CC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023A704
    li 3, -0x1
    .4byte 0x4800009C # b .L_8023A79C
L_8023A704:
    li 30, 0x0
    li 31, 0x0
L_8023A70C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023A720
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023A75C
L_8023A720:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023A730
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023A75C
L_8023A730:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023A740
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023A75C
L_8023A740:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A758
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A75C
L_8023A758:
    lbz 0, 0xcac(4)
L_8023A75C:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8023A788
    addi 0, 31, 0x4
    mr 4, 28
    lwzx 3, 3, 0
    mr 5, 29
    bl fn_80256C74
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023A788
    mr 3, 30
    .4byte 0x48000018 # b .L_8023A79C
L_8023A788:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF78 # blt .L_8023A70C
    li 3, -0x1
L_8023A79C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023A7BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023A7EC
    li 3, -0x1
    .4byte 0x480000A0 # b .L_8023A888
L_8023A7EC:
    li 30, 0x0
    li 31, 0x0
L_8023A7F4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023A808
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023A844
L_8023A808:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023A818
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023A844
L_8023A818:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023A828
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023A844
L_8023A828:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A840
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A844
L_8023A840:
    lbz 0, 0xcac(4)
L_8023A844:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8023A874
    addi 0, 31, 0x4
    mr 4, 27
    lwzx 3, 3, 0
    mr 5, 28
    mr 6, 29
    bl fn_80273FB8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023A874
    mr 3, 30
    .4byte 0x48000018 # b .L_8023A888
L_8023A874:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_8023A7F4
    li 3, -0x1
L_8023A888:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023A89C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023A8CC
    li 3, -0x1
    .4byte 0x480000A0 # b .L_8023A968
L_8023A8CC:
    li 30, 0x0
    li 31, 0x0
L_8023A8D4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023A8E8
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023A924
L_8023A8E8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023A8F8
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023A924
L_8023A8F8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023A908
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023A924
L_8023A908:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A920
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A924
L_8023A920:
    lbz 0, 0xcac(4)
L_8023A924:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8023A954
    addi 0, 31, 0x4
    mr 4, 27
    lwzx 3, 3, 0
    mr 5, 28
    mr 6, 29
    bl fn_80256DCC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023A954
    mr 3, 30
    .4byte 0x48000018 # b .L_8023A968
L_8023A954:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_8023A8D4
    li 3, -0x1
L_8023A968:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023A97C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x810D90D0 # lwz r8, lbl_8053AC90@sda21(r0)
    cmplwi 8, 0x0
    .4byte 0x4082000C # bne .L_8023A99C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023AA08
L_8023A99C:
    .4byte 0x4082000C # bne .L_8023A9A8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023A9E8
L_8023A9A8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023A9B8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023A9E8
L_8023A9B8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023A9C8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023A9E8
L_8023A9C8:
    slwi 0, 3, 2
    add 7, 8, 0
    lwz 7, 0x4(7)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8023A9E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A9E8
L_8023A9E4:
    lbz 0, 0xcac(7)
L_8023A9E8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023AA04
    slwi 0, 3, 2
    add 3, 8, 0
    lwz 3, 0x4(3)
    bl fn_80256DCC
    .4byte 0x48000008 # b .L_8023AA08
L_8023AA04:
    li 3, 0x0
L_8023AA08:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

