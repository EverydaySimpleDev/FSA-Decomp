.section extab, "a"
.balign 4
.global etb_8000AE60
etb_8000AE60:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE60, 8

.global etb_8000AE68
etb_8000AE68:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE68, 8

.global etb_8000AE70
etb_8000AE70:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE70, 8

.global etb_8000AE78
etb_8000AE78:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE78, 8

.global etb_8000AE80
etb_8000AE80:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE80, 8

.global etb_8000AE88
etb_8000AE88:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000AE88, 8

.global etb_8000AE90
etb_8000AE90:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE90, 8

.global etb_8000AE98
etb_8000AE98:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000AE98, 8

.global etb_8000AEA0
etb_8000AEA0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AEA0, 8

.global etb_8000AEA8
etb_8000AEA8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000AEA8, 8

.section extabindex, "a"
.balign 4
.global eti_8001909C
eti_8001909C:
    .4byte fn_80236BEC
    .4byte 0x0000009C
    .4byte etb_8000AE60
.size eti_8001909C, 12

.global eti_800190A8
eti_800190A8:
    .4byte fn_80236C88
    .4byte 0x0000008C
    .4byte etb_8000AE68
.size eti_800190A8, 12

.global eti_800190B4
eti_800190B4:
    .4byte fn_80236D14
    .4byte 0x0000009C
    .4byte etb_8000AE70
.size eti_800190B4, 12

.global eti_800190C0
eti_800190C0:
    .4byte fn_80236DB0
    .4byte 0x0000008C
    .4byte etb_8000AE78
.size eti_800190C0, 12

.global eti_800190CC
eti_800190CC:
    .4byte fn_80236E3C
    .4byte 0x0000009C
    .4byte etb_8000AE80
.size eti_800190CC, 12

.global eti_800190D8
eti_800190D8:
    .4byte fn_80236ED8
    .4byte 0x00000188
    .4byte etb_8000AE88
.size eti_800190D8, 12

.global eti_800190E4
eti_800190E4:
    .4byte fn_80237060
    .4byte 0x0000009C
    .4byte etb_8000AE90
.size eti_800190E4, 12

.global eti_800190F0
eti_800190F0:
    .4byte fn_802370FC
    .4byte 0x00000160
    .4byte etb_8000AE98
.size eti_800190F0, 12

.global eti_800190FC
eti_800190FC:
    .4byte fn_8023725C
    .4byte 0x0000009C
    .4byte etb_8000AEA0
.size eti_800190FC, 12

.global eti_80019108
eti_80019108:
    .4byte fn_802372F8
    .4byte 0x000000F4
    .4byte etb_8000AEA8
.size eti_80019108, 12

.text
.balign 4
.global fn_80236BEC
.global fn_80236C88
.global fn_80236D14
.global fn_80236DB0
.global fn_80236E3C
.global fn_80236ED8
.global fn_80237060
.global fn_802370FC
.global fn_8023725C
.global fn_802372F8

fn_80236BEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236C0C
    li 3, 0x1
    .4byte 0x48000070 # b .L_80236C78
L_80236C0C:
    .4byte 0x4082000C # bne .L_80236C18
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236C58
L_80236C18:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236C28
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236C58
L_80236C28:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236C38
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236C58
L_80236C38:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236C54
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236C58
L_80236C54:
    lbz 0, 0xcac(4)
L_80236C58:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236C74
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80270C88
    .4byte 0x48000008 # b .L_80236C78
L_80236C74:
    li 3, 0x1
L_80236C78:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236C88:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_80236D04
    .4byte 0x4082000C # bne .L_80236CAC
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236CEC
L_80236CAC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236CBC
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236CEC
L_80236CBC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236CCC
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236CEC
L_80236CCC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236CE8
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236CEC
L_80236CE8:
    lbz 0, 0xcac(4)
L_80236CEC:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80236D04
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_SetFlag_0xb7b
L_80236D04:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236D14:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236D34
    li 3, 0x1
    .4byte 0x48000070 # b .L_80236DA0
L_80236D34:
    .4byte 0x4082000C # bne .L_80236D40
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236D80
L_80236D40:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236D50
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236D80
L_80236D50:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236D60
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236D80
L_80236D60:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236D7C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236D80
L_80236D7C:
    lbz 0, 0xcac(4)
L_80236D80:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236D9C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80241498
    .4byte 0x48000008 # b .L_80236DA0
L_80236D9C:
    li 3, 0x1
L_80236DA0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236DB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_80236E2C
    .4byte 0x4082000C # bne .L_80236DD4
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236E14
L_80236DD4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236DE4
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236E14
L_80236DE4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236DF4
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236E14
L_80236DF4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236E10
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236E14
L_80236E10:
    lbz 0, 0xcac(4)
L_80236E14:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80236E2C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802414D0
L_80236E2C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236E3C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236E5C
    li 3, 0x1
    .4byte 0x48000070 # b .L_80236EC8
L_80236E5C:
    .4byte 0x4082000C # bne .L_80236E68
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236EA8
L_80236E68:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236E78
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236EA8
L_80236E78:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236E88
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236EA8
L_80236E88:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236EA4
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236EA8
L_80236EA4:
    lbz 0, 0xcac(4)
L_80236EA8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236EC4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802414DC
    .4byte 0x48000008 # b .L_80236EC8
L_80236EC4:
    li 3, 0x1
L_80236EC8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80236ED8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236F10
    li 3, 0x0
    .4byte 0x48000134 # b .L_80237040
L_80236F10:
    .4byte 0x4082000C # bne .L_80236F1C
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236F5C
L_80236F1C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80236F2C
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236F5C
L_80236F2C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80236F3C
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236F5C
L_80236F3C:
    slwi 0, 30, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80236F58
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236F5C
L_80236F58:
    lbz 0, 0xcac(3)
L_80236F5C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80236F6C
    li 3, 0x0
    .4byte 0x480000D8 # b .L_80237040
L_80236F6C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x418200B4 # beq .L_8023702C
    li 28, 0x0
    li 29, 0x0
L_80236F84:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80236F98
    li 0, 0x0
    .4byte 0x48000040 # b .L_80236FD4
L_80236F98:
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_80236FA8
    li 0, 0x0
    .4byte 0x48000030 # b .L_80236FD4
L_80236FA8:
    cmpwi 28, 0x4
    .4byte 0x4180000C # blt .L_80236FB8
    li 0, 0x0
    .4byte 0x48000020 # b .L_80236FD4
L_80236FB8:
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80236FD0
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236FD4
L_80236FD0:
    lbz 0, 0xcac(3)
L_80236FD4:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80237014
    mr 3, 30
    mr 4, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80237014
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    mr 4, 31
    lwzx 3, 3, 0
    bl fn_80241514
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80237014
    li 3, 0x0
    .4byte 0x48000030 # b .L_80237040
L_80237014:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FF64 # blt .L_80236F84
    li 3, 0x1
    .4byte 0x48000018 # b .L_80237040
L_8023702C:
    slwi 0, 30, 2
    mr 4, 31
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80241514
L_80237040:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80237060:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80237080
    li 3, 0x0
    .4byte 0x48000070 # b .L_802370EC
L_80237080:
    .4byte 0x4082000C # bne .L_8023708C
    li 0, 0x0
    .4byte 0x48000044 # b .L_802370CC
L_8023708C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023709C
    li 0, 0x0
    .4byte 0x48000034 # b .L_802370CC
L_8023709C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802370AC
    li 0, 0x0
    .4byte 0x48000024 # b .L_802370CC
L_802370AC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802370C8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802370CC
L_802370C8:
    lbz 0, 0xcac(4)
L_802370CC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802370E8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80241544
    .4byte 0x48000008 # b .L_802370EC
L_802370E8:
    li 3, 0x0
L_802370EC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802370FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80237134
    li 3, 0x0
    .4byte 0x4800010C # b .L_8023723C
L_80237134:
    .4byte 0x4082000C # bne .L_80237140
    li 0, 0x0
    .4byte 0x48000044 # b .L_80237180
L_80237140:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80237150
    li 0, 0x0
    .4byte 0x48000034 # b .L_80237180
L_80237150:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80237160
    li 0, 0x0
    .4byte 0x48000024 # b .L_80237180
L_80237160:
    slwi 0, 30, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023717C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80237180
L_8023717C:
    lbz 0, 0xcac(3)
L_80237180:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80237190
    li 3, 0x0
    .4byte 0x480000B0 # b .L_8023723C
L_80237190:
    li 28, 0x0
    li 29, 0x0
L_80237198:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802371AC
    li 0, 0x0
    .4byte 0x48000040 # b .L_802371E8
L_802371AC:
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_802371BC
    li 0, 0x0
    .4byte 0x48000030 # b .L_802371E8
L_802371BC:
    cmpwi 28, 0x4
    .4byte 0x4180000C # blt .L_802371CC
    li 0, 0x0
    .4byte 0x48000020 # b .L_802371E8
L_802371CC:
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_802371E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802371E8
L_802371E4:
    lbz 0, 0xcac(3)
L_802371E8:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80237228
    mr 3, 30
    mr 4, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80237228
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    mr 4, 31
    lwzx 3, 3, 0
    bl fn_8024157C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80237228
    li 3, 0x0
    .4byte 0x48000018 # b .L_8023723C
L_80237228:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FF64 # blt .L_80237198
    li 3, 0x1
L_8023723C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023725C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023727C
    li 3, 0x0
    .4byte 0x48000070 # b .L_802372E8
L_8023727C:
    .4byte 0x4082000C # bne .L_80237288
    li 0, 0x0
    .4byte 0x48000044 # b .L_802372C8
L_80237288:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80237298
    li 0, 0x0
    .4byte 0x48000034 # b .L_802372C8
L_80237298:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802372A8
    li 0, 0x0
    .4byte 0x48000024 # b .L_802372C8
L_802372A8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_802372C4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802372C8
L_802372C4:
    lbz 0, 0xcac(4)
L_802372C8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802372E4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802415CC
    .4byte 0x48000008 # b .L_802372E8
L_802372E4:
    li 3, 0x0
L_802372E8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802372F8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80237328
    li 3, 0x0
    .4byte 0x480000B4 # b .L_802373D8
L_80237328:
    li 30, 0x0
    li 31, 0x0
L_80237330:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80237344
    li 0, 0x0
    .4byte 0x48000040 # b .L_80237380
L_80237344:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_80237354
    li 0, 0x0
    .4byte 0x48000030 # b .L_80237380
L_80237354:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80237364
    li 0, 0x0
    .4byte 0x48000020 # b .L_80237380
L_80237364:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023737C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80237380
L_8023737C:
    lbz 0, 0xcac(3)
L_80237380:
    clrlwi. 0, 0, 24
    .4byte 0x41820040 # beq .L_802373C4
    mr 3, 27
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802373C4
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    mr 4, 28
    mr 5, 29
    lwzx 3, 3, 0
    bl fn_80241618
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802373C4
    li 3, 0x0
    .4byte 0x48000018 # b .L_802373D8
L_802373C4:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF60 # blt .L_80237330
    li 3, 0x1
L_802373D8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

