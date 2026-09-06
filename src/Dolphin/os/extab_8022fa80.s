.section extab, "a"
.balign 4
.global etb_8000AAF8
etb_8000AAF8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAF8, 8

.global etb_8000AB00
etb_8000AB00:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB00, 8

.global etb_8000AB08
etb_8000AB08:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB08, 8

.global etb_8000AB10
etb_8000AB10:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB10, 8

.global etb_8000AB18
etb_8000AB18:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB18, 8

.global etb_8000AB20
etb_8000AB20:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000AB20, 8

.global etb_8000AB28
etb_8000AB28:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB28, 8

.global etb_8000AB30
etb_8000AB30:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000AB30, 8

.global etb_8000AB38
etb_8000AB38:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB38, 8

.global etb_8000AB40
etb_8000AB40:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB40, 8

.global etb_8000AB48
etb_8000AB48:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB48, 8

.global etb_8000AB50
etb_8000AB50:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AB50, 8

.section extabindex, "a"
.balign 4
.global eti_80018B80
eti_80018B80:
    .4byte fn_8022FA80
    .4byte 0x0000009C
    .4byte etb_8000AAF8
.size eti_80018B80, 12

.global eti_80018B8C
eti_80018B8C:
    .4byte fn_8022FB1C
    .4byte 0x0000009C
    .4byte etb_8000AB00
.size eti_80018B8C, 12

.global eti_80018B98
eti_80018B98:
    .4byte fn_8022FBB8
    .4byte 0x0000009C
    .4byte etb_8000AB08
.size eti_80018B98, 12

.global eti_80018BA4
eti_80018BA4:
    .4byte fn_8022FC54
    .4byte 0x0000009C
    .4byte etb_8000AB10
.size eti_80018BA4, 12

.global eti_80018BB0
eti_80018BB0:
    .4byte fn_8022FCF0
    .4byte 0x0000009C
    .4byte etb_8000AB18
.size eti_80018BB0, 12

.global eti_80018BBC
eti_80018BBC:
    .4byte fn_8022FD8C
    .4byte 0x000000F4
    .4byte etb_8000AB20
.size eti_80018BBC, 12

.global eti_80018BC8
eti_80018BC8:
    .4byte fn_8022FE80
    .4byte 0x00000038
    .4byte etb_8000AB28
.size eti_80018BC8, 12

.global eti_80018BD4
eti_80018BD4:
    .4byte fn_8022FEB8
    .4byte 0x000000D4
    .4byte etb_8000AB30
.size eti_80018BD4, 12

.global eti_80018BE0
eti_80018BE0:
    .4byte fn_8022FF8C
    .4byte 0x00000038
    .4byte etb_8000AB38
.size eti_80018BE0, 12

.global eti_80018BEC
eti_80018BEC:
    .4byte fn_8022FFC4
    .4byte 0x0000008C
    .4byte etb_8000AB40
.size eti_80018BEC, 12

.global eti_80018BF8
eti_80018BF8:
    .4byte fn_80230050
    .4byte 0x0000009C
    .4byte etb_8000AB48
.size eti_80018BF8, 12

.global eti_80018C04
eti_80018C04:
    .4byte fn_802300EC
    .4byte 0x0000009C
    .4byte etb_8000AB50
.size eti_80018C04, 12

.text
.balign 4
.global fn_8022FA80
.global fn_8022FB1C
.global fn_8022FBB8
.global fn_8022FC54
.global fn_8022FCF0
.global fn_8022FD8C
.global fn_8022FE80
.global fn_8022FEB8
.global fn_8022FF8C
.global fn_8022FFC4
.global fn_80230050
.global fn_802300EC

fn_8022FA80:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022FAA0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022FB0C
L_8022FAA0:
    .4byte 0x4082000C # bne .L_8022FAAC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022FAEC
L_8022FAAC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022FABC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022FAEC
L_8022FABC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022FACC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022FAEC
L_8022FACC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022FAE8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FAEC
L_8022FAE8:
    lbz 0, 0xcac(4)
L_8022FAEC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022FB08
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024C458
    .4byte 0x48000008 # b .L_8022FB0C
L_8022FB08:
    li 3, 0x0
L_8022FB0C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022FB1C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022FB3C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022FBA8
L_8022FB3C:
    .4byte 0x4082000C # bne .L_8022FB48
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022FB88
L_8022FB48:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022FB58
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022FB88
L_8022FB58:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022FB68
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022FB88
L_8022FB68:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022FB84
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FB88
L_8022FB84:
    lbz 0, 0xcac(5)
L_8022FB88:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022FBA4
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024C460
    .4byte 0x48000008 # b .L_8022FBA8
L_8022FBA4:
    li 3, 0x0
L_8022FBA8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022FBB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022FBD8
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022FC44
L_8022FBD8:
    .4byte 0x4082000C # bne .L_8022FBE4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022FC24
L_8022FBE4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022FBF4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022FC24
L_8022FBF4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022FC04
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022FC24
L_8022FC04:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022FC20
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FC24
L_8022FC20:
    lbz 0, 0xcac(5)
L_8022FC24:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022FC40
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024C4C4
    .4byte 0x48000008 # b .L_8022FC44
L_8022FC40:
    li 3, 0x0
L_8022FC44:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022FC54:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022FC74
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022FCE0
L_8022FC74:
    .4byte 0x4082000C # bne .L_8022FC80
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022FCC0
L_8022FC80:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022FC90
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022FCC0
L_8022FC90:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022FCA0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022FCC0
L_8022FCA0:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022FCBC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FCC0
L_8022FCBC:
    lbz 0, 0xcac(5)
L_8022FCC0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022FCDC
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024C5A0
    .4byte 0x48000008 # b .L_8022FCE0
L_8022FCDC:
    li 3, 0x0
L_8022FCE0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022FCF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022FD10
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022FD7C
L_8022FD10:
    .4byte 0x4082000C # bne .L_8022FD1C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022FD5C
L_8022FD1C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022FD2C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022FD5C
L_8022FD2C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022FD3C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022FD5C
L_8022FD3C:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022FD58
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FD5C
L_8022FD58:
    lbz 0, 0xcac(5)
L_8022FD5C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022FD78
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024C828
    .4byte 0x48000008 # b .L_8022FD7C
L_8022FD78:
    li 3, 0x0
L_8022FD7C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022FD8C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022FDBC
    li 3, -0x1
    .4byte 0x480000AC # b .L_8022FE64
L_8022FDBC:
    li 30, 0x0
    li 31, 0x0
L_8022FDC4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022FDD8
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022FE14
L_8022FDD8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022FDE8
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022FE14
L_8022FDE8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022FDF8
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022FE14
L_8022FDF8:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022FE10
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FE14
L_8022FE10:
    lbz 0, 0xcac(3)
L_8022FE14:
    clrlwi. 0, 0, 24
    .4byte 0x41820038 # beq .L_8022FE50
    mr 3, 30
    bl fn_8037F1E4
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8022FE50
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    mr 4, 29
    lwzx 3, 3, 0
    bl fn_8024CA0C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8022FE50
    mr 3, 30
    .4byte 0x48000018 # b .L_8022FE64
L_8022FE50:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF68 # blt .L_8022FDC4
    li 3, -0x1
L_8022FE64:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022FE80:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x810D90D0 # lwz r8, lbl_8053AC90@sda21(r0)
    cmplwi 8, 0x0
    .4byte 0x41820014 # beq .L_8022FEA8
    slwi 0, 3, 2
    add 3, 8, 0
    lwz 3, 0x4(3)
    bl fn_8024CAC8
L_8022FEA8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022FEB8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    mr 26, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820094 # beq .L_8022FF78
    li 30, 0x0
    li 31, 0x0
L_8022FEF0:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022FF04
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022FF40
L_8022FF04:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022FF14
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022FF40
L_8022FF14:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022FF24
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022FF40
L_8022FF24:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022FF3C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FF40
L_8022FF3C:
    lbz 0, 0xcac(4)
L_8022FF40:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8022FF68
    addi 0, 31, 0x4
    mr 4, 25
    lwzx 3, 3, 0
    mr 5, 26
    mr 6, 27
    mr 7, 28
    mr 8, 29
    bl fn_8024CD20
L_8022FF68:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF7C # blt .L_8022FEF0
L_8022FF78:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8022FF8C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x812D90D0 # lwz r9, lbl_8053AC90@sda21(r0)
    cmplwi 9, 0x0
    .4byte 0x41820014 # beq .L_8022FFB4
    slwi 0, 3, 2
    add 3, 9, 0
    lwz 3, 0x4(3)
    bl fn_8024CD20
L_8022FFB4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022FFC4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_80230040
    .4byte 0x4082000C # bne .L_8022FFE8
    li 0, 0x0
    .4byte 0x48000044 # b .L_80230028
L_8022FFE8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022FFF8
    li 0, 0x0
    .4byte 0x48000034 # b .L_80230028
L_8022FFF8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80230008
    li 0, 0x0
    .4byte 0x48000024 # b .L_80230028
L_80230008:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80230024
    li 0, 0x0
    .4byte 0x48000008 # b .L_80230028
L_80230024:
    lbz 0, 0xcac(5)
L_80230028:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80230040
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024E020
L_80230040:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80230050:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80230070
    li 3, 0x0
    .4byte 0x48000070 # b .L_802300DC
L_80230070:
    .4byte 0x4082000C # bne .L_8023007C
    li 0, 0x0
    .4byte 0x48000044 # b .L_802300BC
L_8023007C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023008C
    li 0, 0x0
    .4byte 0x48000034 # b .L_802300BC
L_8023008C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023009C
    li 0, 0x0
    .4byte 0x48000024 # b .L_802300BC
L_8023009C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802300B8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802300BC
L_802300B8:
    lbz 0, 0xcac(4)
L_802300BC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802300D8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024E03C
    .4byte 0x48000008 # b .L_802300DC
L_802300D8:
    li 3, 0x0
L_802300DC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802300EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023010C
    li 3, 0x0
    .4byte 0x48000070 # b .L_80230178
L_8023010C:
    .4byte 0x4082000C # bne .L_80230118
    li 0, 0x0
    .4byte 0x48000044 # b .L_80230158
L_80230118:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80230128
    li 0, 0x0
    .4byte 0x48000034 # b .L_80230158
L_80230128:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80230138
    li 0, 0x0
    .4byte 0x48000024 # b .L_80230158
L_80230138:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80230154
    li 0, 0x0
    .4byte 0x48000008 # b .L_80230158
L_80230154:
    lbz 0, 0xcac(4)
L_80230158:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80230174
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024E060
    .4byte 0x48000008 # b .L_80230178
L_80230174:
    li 3, 0x0
L_80230178:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

