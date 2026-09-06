.section extab, "a"
.balign 4
.global etb_8000ADF0
etb_8000ADF0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ADF0, 8

.global etb_8000ADF8
etb_8000ADF8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ADF8, 8

.global etb_8000AE00
etb_8000AE00:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE00, 8

.global etb_8000AE08
etb_8000AE08:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000AE08, 8

.global etb_8000AE10
etb_8000AE10:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000AE10, 8

.global etb_8000AE18
etb_8000AE18:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE18, 8

.global etb_8000AE20
etb_8000AE20:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE20, 8

.global etb_8000AE28
etb_8000AE28:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE28, 8

.global etb_8000AE30
etb_8000AE30:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE30, 8

.global etb_8000AE38
etb_8000AE38:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000AE38, 8

.global etb_8000AE40
etb_8000AE40:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE40, 8

.global etb_8000AE48
etb_8000AE48:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE48, 8

.global etb_8000AE50
etb_8000AE50:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE50, 8

.section extabindex, "a"
.balign 4
.global eti_80018FF4
eti_80018FF4:
    .4byte fn_802362C4
    .4byte 0x0000008C
    .4byte etb_8000ADF0
.size eti_80018FF4, 12

.global eti_80019000
eti_80019000:
    .4byte fn_80236350
    .4byte 0x0000008C
    .4byte etb_8000ADF8
.size eti_80019000, 12

.global eti_8001900C
eti_8001900C:
    .4byte fn_802363DC
    .4byte 0x0000008C
    .4byte etb_8000AE00
.size eti_8001900C, 12

.global eti_80019018
eti_80019018:
    .4byte fn_80236468
    .4byte 0x000000EC
    .4byte etb_8000AE08
.size eti_80019018, 12

.global eti_80019024
eti_80019024:
    .4byte fn_80236554
    .4byte 0x000000DC
    .4byte etb_8000AE10
.size eti_80019024, 12

.global eti_80019030
eti_80019030:
    .4byte fn_80236630
    .4byte 0x0000009C
    .4byte etb_8000AE18
.size eti_80019030, 12

.global eti_8001903C
eti_8001903C:
    .4byte fn_802366CC
    .4byte 0x0000009C
    .4byte etb_8000AE20
.size eti_8001903C, 12

.global eti_80019048
eti_80019048:
    .4byte fn_80236768
    .4byte 0x0000009C
    .4byte etb_8000AE28
.size eti_80019048, 12

.global eti_80019054
eti_80019054:
    .4byte fn_80236804
    .4byte 0x0000008C
    .4byte etb_8000AE30
.size eti_80019054, 12

.global eti_80019060
eti_80019060:
    .4byte fn_80236890
    .4byte 0x000000EC
    .4byte etb_8000AE38
.size eti_80019060, 12

.global eti_8001906C
eti_8001906C:
    .4byte fn_8023697C
    .4byte 0x0000009C
    .4byte etb_8000AE40
.size eti_8001906C, 12

.global eti_80019078
eti_80019078:
    .4byte fn_80236A18
    .4byte 0x0000009C
    .4byte etb_8000AE48
.size eti_80019078, 12

.global eti_80019084
eti_80019084:
    .4byte fn_80236AB4
    .4byte 0x0000009C
    .4byte etb_8000AE50
.size eti_80019084, 12

.text
.balign 4
.global fn_802362C4
.global fn_80236350
.global fn_802363DC
.global fn_80236468
.global fn_80236554
.global fn_80236630
.global fn_802366CC
.global fn_80236768
.global fn_80236804
.global fn_80236890
.global fn_8023697C
.global fn_80236A18
.global fn_80236AB4

fn_802362C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_80236340
    .4byte 0x4082000C # bne .L_802362E8
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236328
L_802362E8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802362F8
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236328
L_802362F8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236308
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236328
L_80236308:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236324
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236328
L_80236324:
    lbz 0, 0xcac(5)
L_80236328:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80236340
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024ED4C
L_80236340:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236350:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_802363CC
    .4byte 0x4082000C # bne .L_80236374
    li 0, 0x0
    .4byte 0x48000044 # b .L_802363B4
L_80236374:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236384
    li 0, 0x0
    .4byte 0x48000034 # b .L_802363B4
L_80236384:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236394
    li 0, 0x0
    .4byte 0x48000024 # b .L_802363B4
L_80236394:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802363B0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802363B4
L_802363B0:
    lbz 0, 0xcac(4)
L_802363B4:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_802363CC
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802708D0
L_802363CC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802363DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_80236458
    .4byte 0x4082000C # bne .L_80236400
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236440
L_80236400:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236410
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236440
L_80236410:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236420
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236440
L_80236420:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023643C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236440
L_8023643C:
    lbz 0, 0xcac(4)
L_80236440:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80236458
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802708E8
L_80236458:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236468:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x418200A0 # beq .L_80236534
    .4byte 0x4082000C # bne .L_802364A4
    li 0, 0x0
    .4byte 0x48000044 # b .L_802364E4
L_802364A4:
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_802364B4
    li 0, 0x0
    .4byte 0x48000034 # b .L_802364E4
L_802364B4:
    cmpwi 28, 0x4
    .4byte 0x4180000C # blt .L_802364C4
    li 0, 0x0
    .4byte 0x48000024 # b .L_802364E4
L_802364C4:
    slwi 0, 28, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802364E0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802364E4
L_802364E0:
    lbz 0, 0xcac(3)
L_802364E4:
    clrlwi. 0, 0, 24
    .4byte 0x4182004C # beq .L_80236534
    li 30, 0x0
    li 31, 0x0
L_802364F4:
    cmpw 28, 30
    .4byte 0x41820018 # beq .L_80236510
    mr 3, 28
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80236524
L_80236510:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    mr 4, 29
    lwzx 3, 3, 0
    bl fn_80270D34
L_80236524:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFC4 # blt .L_802364F4
L_80236534:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80236554:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x418200A4 # beq .L_8023661C
    .4byte 0x4082000C # bne .L_80236588
    li 0, 0x0
    .4byte 0x48000044 # b .L_802365C8
L_80236588:
    cmpwi 27, 0x0
    .4byte 0x4080000C # bge .L_80236598
    li 0, 0x0
    .4byte 0x48000034 # b .L_802365C8
L_80236598:
    cmpwi 27, 0x4
    .4byte 0x4180000C # blt .L_802365A8
    li 0, 0x0
    .4byte 0x48000024 # b .L_802365C8
L_802365A8:
    slwi 0, 27, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802365C4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802365C8
L_802365C4:
    lbz 0, 0xcac(3)
L_802365C8:
    clrlwi. 0, 0, 24
    .4byte 0x41820050 # beq .L_8023661C
    li 30, 0x0
    li 31, 0x0
L_802365D8:
    cmpw 27, 30
    .4byte 0x41820018 # beq .L_802365F4
    mr 3, 27
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8023660C
L_802365F4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    mr 4, 28
    mr 5, 29
    lwzx 3, 3, 0
    bl fn_80270DDC
L_8023660C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFC0 # blt .L_802365D8
L_8023661C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80236630:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236650
    li 3, 0x0
    .4byte 0x48000070 # b .L_802366BC
L_80236650:
    .4byte 0x4082000C # bne .L_8023665C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023669C
L_8023665C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023666C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023669C
L_8023666C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023667C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023669C
L_8023667C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236698
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023669C
L_80236698:
    lbz 0, 0xcac(4)
L_8023669C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802366B8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8023FFC4
    .4byte 0x48000008 # b .L_802366BC
L_802366B8:
    li 3, 0x0
L_802366BC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802366CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_802366EC
    li 3, 0x0
    .4byte 0x48000070 # b .L_80236758
L_802366EC:
    .4byte 0x4082000C # bne .L_802366F8
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236738
L_802366F8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236708
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236738
L_80236708:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236718
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236738
L_80236718:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236734
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236738
L_80236734:
    lbz 0, 0xcac(4)
L_80236738:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236754
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024018C
    .4byte 0x48000008 # b .L_80236758
L_80236754:
    li 3, 0x0
L_80236758:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236768:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236788
    li 3, 0x0
    .4byte 0x48000070 # b .L_802367F4
L_80236788:
    .4byte 0x4082000C # bne .L_80236794
    li 0, 0x0
    .4byte 0x48000044 # b .L_802367D4
L_80236794:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802367A4
    li 0, 0x0
    .4byte 0x48000034 # b .L_802367D4
L_802367A4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802367B4
    li 0, 0x0
    .4byte 0x48000024 # b .L_802367D4
L_802367B4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802367D0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802367D4
L_802367D0:
    lbz 0, 0xcac(4)
L_802367D4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802367F0
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80240354
    .4byte 0x48000008 # b .L_802367F4
L_802367F0:
    li 3, 0x0
L_802367F4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236804:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_80236880
    .4byte 0x4082000C # bne .L_80236828
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236868
L_80236828:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236838
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236868
L_80236838:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236848
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236868
L_80236848:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236864
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236868
L_80236864:
    lbz 0, 0xcac(5)
L_80236868:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80236880
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80270F00
L_80236880:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236890:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802368B8
    li 3, 0x1
    .4byte 0x480000B0 # b .L_80236964
L_802368B8:
    li 30, 0x0
    li 31, 0x0
L_802368C0:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802368D4
    li 0, 0x0
    .4byte 0x48000040 # b .L_80236910
L_802368D4:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_802368E4
    li 0, 0x0
    .4byte 0x48000030 # b .L_80236910
L_802368E4:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_802368F4
    li 0, 0x0
    .4byte 0x48000020 # b .L_80236910
L_802368F4:
    addi 0, 31, 0x4
    lwzx 3, 4, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023690C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236910
L_8023690C:
    lbz 0, 0xcac(3)
L_80236910:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80236950
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 30
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820020 # beq .L_80236950
    addi 0, 31, 0x4
    lwzx 3, 4, 0
    bl fn_80270A04
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80236950
    li 3, 0x0
    .4byte 0x48000018 # b .L_80236964
L_80236950:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF64 # blt .L_802368C0
    li 3, 0x1
L_80236964:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023697C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023699C
    li 3, -0x1
    .4byte 0x48000070 # b .L_80236A08
L_8023699C:
    .4byte 0x4082000C # bne .L_802369A8
    li 0, 0x0
    .4byte 0x48000044 # b .L_802369E8
L_802369A8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_802369B8
    li 0, 0x0
    .4byte 0x48000034 # b .L_802369E8
L_802369B8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802369C8
    li 0, 0x0
    .4byte 0x48000024 # b .L_802369E8
L_802369C8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802369E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802369E8
L_802369E4:
    lbz 0, 0xcac(4)
L_802369E8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236A04
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024322C
    .4byte 0x48000008 # b .L_80236A08
L_80236A04:
    li 3, -0x1
L_80236A08:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236A18:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236A38
    li 3, 0x1
    .4byte 0x48000070 # b .L_80236AA4
L_80236A38:
    .4byte 0x4082000C # bne .L_80236A44
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236A84
L_80236A44:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236A54
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236A84
L_80236A54:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236A64
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236A84
L_80236A64:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236A80
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236A84
L_80236A80:
    lbz 0, 0xcac(4)
L_80236A84:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236AA0
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80270A04
    .4byte 0x48000008 # b .L_80236AA4
L_80236AA0:
    li 3, 0x1
L_80236AA4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236AB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236AD4
    li 3, 0x1
    .4byte 0x48000070 # b .L_80236B40
L_80236AD4:
    .4byte 0x4082000C # bne .L_80236AE0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236B20
L_80236AE0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236AF0
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236B20
L_80236AF0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236B00
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236B20
L_80236B00:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236B1C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236B20
L_80236B1C:
    lbz 0, 0xcac(4)
L_80236B20:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236B3C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80270A58
    .4byte 0x48000008 # b .L_80236B40
L_80236B3C:
    li 3, 0x1
L_80236B40:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

