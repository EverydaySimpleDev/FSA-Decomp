# 901KB-gap non-actor manager block: 33 functions, 44,484 bytes
# (0x80382B48-0x8038D90C), fully contiguous at the extab AND
# extabindex level with the neighboring pre-existing extab_80381560.s
# and extab_8038d90c.s entries (zero gap on either side). Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort
# (see project_fsa_901kb_gap_roster.md). Found+verified via
# spanwalk.py and resolvefiles.py (1 fused-dump function).

.section extab, "a"
.balign 4
.global etb_8000ECE8
etb_8000ECE8:
    .4byte 0x588A0000
    .4byte 0x00000000
.size etb_8000ECE8, 8

.global etb_8000ECF0
etb_8000ECF0:
    .4byte 0x484A0000
    .4byte 0x00000000
.size etb_8000ECF0, 8

.global etb_8000ECF8
etb_8000ECF8:
    .4byte 0x78CA0000
    .4byte 0x00000000
.size etb_8000ECF8, 8

.global etb_8000ED00
etb_8000ED00:
    .4byte 0x580A0000
    .4byte 0x00000000
.size etb_8000ED00, 8

.global etb_8000ED08
etb_8000ED08:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000ED08, 8

.global etb_8000ED10
etb_8000ED10:
    .4byte 0x48080000
    .4byte 0x00000000
.size etb_8000ED10, 8

.global etb_8000ED18
etb_8000ED18:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000ED18, 8

.global etb_8000ED20
etb_8000ED20:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_8000ED20, 8

.global etb_8000ED28
etb_8000ED28:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000ED28, 8

.global etb_8000ED30
etb_8000ED30:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000ED30, 8

.global etb_8000ED38
etb_8000ED38:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000ED38, 8

.global etb_8000ED40
etb_8000ED40:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000ED40, 8

.global etb_8000ED48
etb_8000ED48:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000ED48, 8

.global etb_8000ED50
etb_8000ED50:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000ED50, 8

.global etb_8000ED58
etb_8000ED58:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000ED58, 8

.global etb_8000ED60
etb_8000ED60:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000ED60, 8

.global etb_8000ED68
etb_8000ED68:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_8000ED68, 8

.global etb_8000ED70
etb_8000ED70:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000ED70, 8

.global etb_8000ED78
etb_8000ED78:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000ED78, 8

.global etb_8000ED80
etb_8000ED80:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000ED80, 8

.global etb_8000ED88
etb_8000ED88:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000ED88, 8

.global etb_8000ED90
etb_8000ED90:
    .4byte 0x480A0000
    .4byte 0x00000000
.size etb_8000ED90, 8

.global etb_8000ED98
etb_8000ED98:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000ED98, 8

.global etb_8000EDA0
etb_8000EDA0:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000EDA0, 8

.global etb_8000EDA8
etb_8000EDA8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EDA8, 8

.global etb_8000EDB0
etb_8000EDB0:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_8000EDB0, 8

.global etb_8000EDB8
etb_8000EDB8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EDB8, 8

.global etb_8000EDC0
etb_8000EDC0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000EDC0, 8

.global etb_8000EDC8
etb_8000EDC8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000EDC8, 8

.global etb_8000EDD0
etb_8000EDD0:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000EDD0, 8

.section extabindex, "a"
.balign 4
.global eti_8001EAA8
eti_8001EAA8:
    .4byte fn_80382B48
    .4byte 0x00000774
    .4byte etb_8000ECE8
.size eti_8001EAA8, 12

.global eti_8001EAB4
eti_8001EAB4:
    .4byte fn_803832BC
    .4byte 0x000004E8
    .4byte etb_8000ECF0
.size eti_8001EAB4, 12

.global eti_8001EAC0
eti_8001EAC0:
    .4byte fn_803837A4
    .4byte 0x00000688
    .4byte etb_8000ECF8
.size eti_8001EAC0, 12

.global eti_8001EACC
eti_8001EACC:
    .4byte fn_80383EB0
    .4byte 0x000007F4
    .4byte etb_8000ED00
.size eti_8001EACC, 12

.global eti_8001EAD8
eti_8001EAD8:
    .4byte fn_8038470C
    .4byte 0x0000054C
    .4byte etb_8000ED08
.size eti_8001EAD8, 12

.global eti_8001EAE4
eti_8001EAE4:
    .4byte fn_80384C58
    .4byte 0x00000D08
    .4byte etb_8000ED10
.size eti_8001EAE4, 12

.global eti_8001EAF0
eti_8001EAF0:
    .4byte fn_80385960
    .4byte 0x00000C58
    .4byte etb_8000ED18
.size eti_8001EAF0, 12

.global eti_8001EAFC
eti_8001EAFC:
    .4byte fn_803865B8
    .4byte 0x00000EDC
    .4byte etb_8000ED20
.size eti_8001EAFC, 12

.global eti_8001EB08
eti_8001EB08:
    .4byte fn_80387494
    .4byte 0x00001818
    .4byte etb_8000ED28
.size eti_8001EB08, 12

.global eti_8001EB14
eti_8001EB14:
    .4byte fn_80388CAC
    .4byte 0x00000240
    .4byte etb_8000ED30
.size eti_8001EB14, 12

.global eti_8001EB20
eti_8001EB20:
    .4byte fn_80388EEC
    .4byte 0x00000230
    .4byte etb_8000ED38
.size eti_8001EB20, 12

.global eti_8001EB2C
eti_8001EB2C:
    .4byte fn_8038911C
    .4byte 0x00000138
    .4byte etb_8000ED40
.size eti_8001EB2C, 12

.global eti_8001EB38
eti_8001EB38:
    .4byte fn_80389254
    .4byte 0x00000138
    .4byte etb_8000ED48
.size eti_8001EB38, 12

.global eti_8001EB44
eti_8001EB44:
    .4byte fn_8038938C
    .4byte 0x00000130
    .4byte etb_8000ED50
.size eti_8001EB44, 12

.global eti_8001EB50
eti_8001EB50:
    .4byte fn_803894BC
    .4byte 0x00000130
    .4byte etb_8000ED58
.size eti_8001EB50, 12

.global eti_8001EB5C
eti_8001EB5C:
    .4byte fn_803895EC
    .4byte 0x00000378
    .4byte etb_8000ED60
.size eti_8001EB5C, 12

.global eti_8001EB68
eti_8001EB68:
    .4byte fn_80389964
    .4byte 0x0000028C
    .4byte etb_8000ED68
.size eti_8001EB68, 12

.global eti_8001EB74
eti_8001EB74:
    .4byte fn_80389BF0
    .4byte 0x00000388
    .4byte etb_8000ED70
.size eti_8001EB74, 12

.global eti_8001EB80
eti_8001EB80:
    .4byte fn_80389F78
    .4byte 0x000004B4
    .4byte etb_8000ED78
.size eti_8001EB80, 12

.global eti_8001EB8C
eti_8001EB8C:
    .4byte fn_8038A42C
    .4byte 0x00000558
    .4byte etb_8000ED80
.size eti_8001EB8C, 12

.global eti_8001EB98
eti_8001EB98:
    .4byte fn_8038A984
    .4byte 0x000003A0
    .4byte etb_8000ED88
.size eti_8001EB98, 12

.global eti_8001EBA4
eti_8001EBA4:
    .4byte fn_8038AD24
    .4byte 0x00000B84
    .4byte etb_8000ED90
.size eti_8001EBA4, 12

.global eti_8001EBB0
eti_8001EBB0:
    .4byte fn_8038B8A8
    .4byte 0x00000460
    .4byte etb_8000ED98
.size eti_8001EBB0, 12

.global eti_8001EBBC
eti_8001EBBC:
    .4byte fn_8038BD08
    .4byte 0x00000904
    .4byte etb_8000EDA0
.size eti_8001EBBC, 12

.global eti_8001EBC8
eti_8001EBC8:
    .4byte fn_8038C60C
    .4byte 0x0000006C
    .4byte etb_8000EDA8
.size eti_8001EBC8, 12

.global eti_8001EBD4
eti_8001EBD4:
    .4byte fn_8038C678
    .4byte 0x00000DDC
    .4byte etb_8000EDB0
.size eti_8001EBD4, 12

.global eti_8001EBE0
eti_8001EBE0:
    .4byte fn_8038D454
    .4byte 0x00000054
    .4byte etb_8000EDB8
.size eti_8001EBE0, 12

.global eti_8001EBEC
eti_8001EBEC:
    .4byte fn_8038D4A8
    .4byte 0x000000C8
    .4byte etb_8000EDC0
.size eti_8001EBEC, 12

.global eti_8001EBF8
eti_8001EBF8:
    .4byte fn_8038D570
    .4byte 0x00000300
    .4byte etb_8000EDC8
.size eti_8001EBF8, 12

.global eti_8001EC04
eti_8001EC04:
    .4byte fn_8038D870
    .4byte 0x0000009C
    .4byte etb_8000EDD0
.size eti_8001EC04, 12

.text
.balign 4
.global fn_80382B48
.global fn_803832BC
.global fn_803837A4
.global fn_80383E2C
.global fn_80383EB0
.global fn_803846A4
.global fn_803846BC
.global fn_8038470C
.global fn_80384C58
.global fn_80385960
.global fn_803865B8
.global fn_80387494
.global fn_80388CAC
.global fn_80388EEC
.global fn_8038911C
.global fn_80389254
.global fn_8038938C
.global fn_803894BC
.global fn_803895EC
.global fn_80389964
.global fn_80389BF0
.global fn_80389F78
.global fn_8038A42C
.global fn_8038A984
.global fn_8038AD24
.global fn_8038B8A8
.global fn_8038BD08
.global fn_8038C60C
.global fn_8038C678
.global fn_8038D454
.global fn_8038D4A8
.global fn_8038D570
.global fn_8038D870

fn_80382B48:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stmw 21, 0x64(1)
    .4byte 0x810D91B8 # lwz r8, lbl_8053AD78@sda21(r0)
    addi 23, 1, 0x34
    .4byte 0xC3C20128 # lfs f30, lbl_805430C8@sda21(r0)
    slwi 4, 4, 3
    lwz 8, 0x8(8)
    li 0, 0x0
    fmr 31, 30
    stfs 30, 0x30(1)
    addi 8, 8, 0x20
    mr 26, 3
    add 3, 8, 4
    lwz 4, 0x4(8)
    lwz 3, 0x10(3)
    mr 27, 5
    stfs 30, 0x34(1)
    mr 28, 6
    add 3, 4, 3
    mr 29, 7
    addi 31, 3, 0x8
    stw 0, 0x1c(1)
    mr 25, 23
    li 21, 0x0
    stfs 30, 0x38(1)
    add 31, 8, 31
    li 22, 0x1
    li 30, 0x0
    stfs 30, 0x3c(1)
    stfs 30, 0x40(1)
    stfs 30, 0x44(1)
    stfs 30, 0x48(1)
    stfs 30, 0x4c(1)
    stfs 30, 0x50(1)
    stfs 30, 0x54(1)
    .4byte 0x48000170 # b .L_80382D5C
L_80382BF0:
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x40820028 # bne .L_80382C20
    fcmpo cr0, 31, 30
    stfs 31, -0x4(25)
    .4byte 0x40810008 # ble .L_80382C0C
    fmr 30, 31
L_80382C0C:
    .4byte 0xC3E20128 # lfs f31, lbl_805430C8@sda21(r0)
    addi 25, 25, 0x4
    addi 22, 22, 0x1
    addi 21, 21, 0x1
    .4byte 0x48000140 # b .L_80382D5C
L_80382C20:
    cmpwi 0, 0x1a
    .4byte 0x408200B8 # bne .L_80382CDC
    lbz 0, 0x2(24)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_80382C6C
    lbz 3, 0x4(24)
    extsb. 0, 3
    .4byte 0x4182008C # beq .L_80382CCC
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x41820080 # beq .L_80382CCC
    cmpwi 0, 0x12
    .4byte 0x41820078 # beq .L_80382CCC
    cmpwi 0, 0x19
    .4byte 0x41820070 # beq .L_80382CCC
    cmpwi 0, 0x1
    .4byte 0x41820068 # beq .L_80382CCC
    .4byte 0x48000064 # b .L_80382CCC
L_80382C6C:
    cmpwi 0, 0x3
    .4byte 0x4082005C # bne .L_80382CCC
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 4, 27, 0x30
    addi 5, 1, 0x14
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x15(1)
    lis 0, 0x4330
    stw 0, 0x58(1)
    mr 4, 27
    xoris 5, 5, 0x8000
    .4byte 0xC8420138 # lfd f2, lbl_805430D8@sda21(r0)
    stw 5, 0x5c(1)
    lbz 3, 0x5(24)
    lfd 0, 0x58(1)
    .4byte 0xC0220148 # lfs f1, lbl_805430E8@sda21(r0)
    fsubs 0, 0, 2
    fadds 31, 31, 0
    bl fn_80381560
    fadds 31, 31, 1
L_80382CCC:
    lbz 0, 0x1(24)
    extsb 0, 0
    add 21, 21, 0
    .4byte 0x48000084 # b .L_80382D5C
L_80382CDC:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    clrlwi 24, 0, 24
    mr 4, 24
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    addi 21, 21, 0x1
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80382D18
    lbzx 0, 31, 21
    slwi 24, 24, 8
    addi 21, 21, 0x1
    or 24, 24, 0
L_80382D18:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 24
    addi 5, 1, 0x10
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x11(1)
    lis 0, 0x4330
    stw 0, 0x58(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    fadds 31, 31, 0
L_80382D5C:
    add 24, 31, 21
    lbz 3, 0x0(24)
    extsb. 0, 3
    .4byte 0x4082FE88 # bne .L_80382BF0
    fcmpo cr0, 31, 30
    slwi 0, 22, 2
    addi 3, 1, 0x2c
    stfsx 31, 3, 0
    .4byte 0x40810008 # ble .L_80382D84
    fmr 30, 31
L_80382D84:
    li 25, 0x0
    cmplwi 28, 0x0
    stw 25, 0x1c(1)
    li 22, 0x1
    .4byte 0xC3E20128 # lfs f31, lbl_805430C8@sda21(r0)
    stb 25, 0x1a(1)
    stb 25, 0x19(1)
    stb 25, 0x18(1)
    stb 25, 0x0(26)
    .4byte 0x41820008 # beq .L_80382DB0
    stb 25, 0x0(28)
L_80382DB0:
    cmplwi 29, 0x0
    .4byte 0x4182000C # beq .L_80382DC0
    li 0, 0x0
    stb 0, 0x0(29)
L_80382DC0:
    .4byte 0xC042014C # lfs f2, lbl_805430EC@sda21(r0)
    lfs 1, 0x30(1)
    .4byte 0xC002011C # lfs f0, lbl_805430BC@sda21(r0)
    fsubs 1, 2, 1
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 6, 0x5c(1)
    cmpwi 6, 0x0
    .4byte 0x40810440 # ble .L_80383224
    addi 3, 1, 0x20
    li 4, 0xf
    .4byte 0x38A20140 # li r5, lbl_805430E0@sda21
    crclr 6
    bl fn_8006B414
    mr 3, 26
    addi 4, 1, 0x20
    bl strcat
    .4byte 0x4800041C # b .L_80383224
L_80382E0C:
    extsb 0, 4
    cmpwi 0, 0xa
    .4byte 0x408200C0 # bne .L_80382ED4
    clrlwi 0, 30, 24
    li 3, 0x0
    cmplwi 0, 0x1
    stb 4, 0x18(1)
    stb 3, 0x19(1)
    .4byte 0x4082001C # bne .L_80382E48
    cmplwi 28, 0x0
    .4byte 0x41820014 # beq .L_80382E48
    mr 3, 28
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000034 # b .L_80382E78
L_80382E48:
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_80382E6C
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_80382E6C
    mr 3, 29
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000010 # b .L_80382E78
L_80382E6C:
    mr 3, 26
    addi 4, 1, 0x18
    bl strcat
L_80382E78:
    lfs 1, 0x0(23)
    addi 22, 22, 0x1
    .4byte 0xC042014C # lfs f2, lbl_805430EC@sda21(r0)
    addi 25, 25, 0x1
    .4byte 0xC002011C # lfs f0, lbl_805430BC@sda21(r0)
    addi 23, 23, 0x4
    fsubs 1, 2, 1
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 6, 0x5c(1)
    cmpwi 6, 0x0
    .4byte 0x40810024 # ble .L_80382ECC
    addi 3, 1, 0x20
    li 4, 0xf
    .4byte 0x38A20140 # li r5, lbl_805430E0@sda21
    crclr 6
    bl fn_8006B414
    mr 3, 26
    addi 4, 1, 0x20
    bl strcat
L_80382ECC:
    .4byte 0xC3E20128 # lfs f31, lbl_805430C8@sda21(r0)
    .4byte 0x48000354 # b .L_80383224
L_80382ED4:
    cmpwi 0, 0x1a
    .4byte 0x408201E0 # bne .L_803830B8
    lbz 0, 0x2(24)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x408200F4 # bne .L_80382FDC
    lbz 3, 0x4(24)
    extsb. 0, 3
    .4byte 0x41820020 # beq .L_80382F14
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x41820014 # beq .L_80382F14
    cmpwi 0, 0x12
    .4byte 0x4182000C # beq .L_80382F14
    cmpwi 0, 0x19
    .4byte 0x40820054 # bne .L_80382F64
L_80382F14:
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x4080018C # bge .L_803830A8
    subi 0, 22, 0x1
    clrlslwi 6, 30, 24, 2
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x5c(1)
    addi 4, 6, 0x5c
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 0, 6, 0x64
    stw 3, 0x58(1)
    addi 30, 30, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x58(1)
    stfsx 31, 5, 4
    fsubs 0, 0, 1
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfsx 0, 3, 0
    .4byte 0x48000148 # b .L_803830A8
L_80382F64:
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80382F84
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_80382F84
    cmpwi 0, 0x11
    .4byte 0x4182000C # beq .L_80382F84
    cmpwi 0, 0x1a
    .4byte 0x40820128 # bne .L_803830A8
L_80382F84:
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x4080011C # bge .L_803830A8
    subi 0, 22, 0x1
    clrlslwi 6, 30, 24, 2
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x5c(1)
    addi 4, 6, 0x5c
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 0, 6, 0x64
    stw 3, 0x58(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x58(1)
    stfsx 31, 5, 4
    fsubs 0, 0, 1
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfsx 0, 3, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 30, 0xe6(3)
    addi 30, 30, 0x1
    .4byte 0x480000D0 # b .L_803830A8
L_80382FDC:
    cmpwi 0, 0x3
    .4byte 0x408200C8 # bne .L_803830A8
    clrlwi 0, 30, 24
    addi 21, 27, 0x30
    li 3, 0x0
    stb 21, 0x18(1)
    cmplwi 0, 0x1
    stb 3, 0x19(1)
    .4byte 0x4082001C # bne .L_80383018
    cmplwi 28, 0x0
    .4byte 0x41820014 # beq .L_80383018
    mr 3, 28
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000034 # b .L_80383048
L_80383018:
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_8038303C
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_8038303C
    mr 3, 29
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000010 # b .L_80383048
L_8038303C:
    mr 3, 26
    addi 4, 1, 0x18
    bl strcat
L_80383048:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 21
    addi 5, 1, 0xc
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0xd(1)
    lis 0, 0x4330
    stw 0, 0x58(1)
    mr 4, 27
    xoris 5, 5, 0x8000
    .4byte 0xC8420138 # lfd f2, lbl_805430D8@sda21(r0)
    stw 5, 0x5c(1)
    mr 5, 26
    lbz 3, 0x5(24)
    addi 6, 1, 0x1c
    lfd 0, 0x58(1)
    .4byte 0xC0220148 # lfs f1, lbl_805430E8@sda21(r0)
    fsubs 0, 0, 2
    fadds 31, 31, 0
    bl fn_8037F580
    fadds 31, 31, 1
L_803830A8:
    lbz 0, 0x1(24)
    extsb 0, 0
    add 25, 25, 0
    .4byte 0x48000170 # b .L_80383224
L_803830B8:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    clrlwi 21, 0, 24
    mr 4, 21
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_8038316C
    lbz 4, 0x0(24)
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    li 0, 0x0
    stb 4, 0x18(1)
    slwi 21, 21, 8
    lbz 3, 0x1(24)
    stb 3, 0x19(1)
    stb 0, 0x1a(1)
    .4byte 0x40820028 # bne .L_8038312C
    cmplwi 28, 0x0
    .4byte 0x41820020 # beq .L_8038312C
    extsb 0, 4
    cmpwi 0, 0x20
    .4byte 0x41820044 # beq .L_8038315C
    mr 3, 28
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000034 # b .L_8038315C
L_8038312C:
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_80383150
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_80383150
    mr 3, 29
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000010 # b .L_8038315C
L_80383150:
    mr 3, 26
    addi 4, 1, 0x18
    bl strcat
L_8038315C:
    lbz 0, 0x0(24)
    addi 25, 25, 0x2
    or 21, 21, 0
    .4byte 0x48000078 # b .L_803831E0
L_8038316C:
    clrlwi 0, 30, 24
    lbz 4, 0x0(24)
    li 3, 0x0
    cmplwi 0, 0x1
    stb 4, 0x18(1)
    stb 3, 0x19(1)
    .4byte 0x40820028 # bne .L_803831AC
    cmplwi 28, 0x0
    .4byte 0x41820020 # beq .L_803831AC
    extsb 0, 4
    cmpwi 0, 0x20
    .4byte 0x41820044 # beq .L_803831DC
    mr 3, 28
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000034 # b .L_803831DC
L_803831AC:
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_803831D0
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_803831D0
    mr 3, 29
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000010 # b .L_803831DC
L_803831D0:
    mr 3, 26
    addi 4, 1, 0x18
    bl strcat
L_803831DC:
    addi 25, 25, 0x1
L_803831E0:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 21
    addi 5, 1, 0x8
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x9(1)
    lis 0, 0x4330
    stw 0, 0x58(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    fadds 31, 31, 0
L_80383224:
    add 24, 31, 25
    lbz 4, 0x0(24)
    extsb. 0, 4
    .4byte 0x4082FBDC # bne .L_80382E0C
    clrlwi 0, 30, 24
    li 3, 0x0
    cmplwi 0, 0x1
    stb 4, 0x18(1)
    stb 3, 0x19(1)
    .4byte 0x4082001C # bne .L_80383264
    cmplwi 28, 0x0
    .4byte 0x41820014 # beq .L_80383264
    mr 3, 28
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000034 # b .L_80383294
L_80383264:
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_80383288
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_80383288
    mr 3, 29
    addi 4, 1, 0x18
    bl strcat
    .4byte 0x48000010 # b .L_80383294
L_80383288:
    mr 3, 26
    addi 4, 1, 0x18
    bl strcat
L_80383294:
    fmr 1, 30
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    lmw 21, 0x64(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_803832BC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stmw 23, 0x2c(1)
    .4byte 0x810D91B8 # lwz r8, lbl_8053AD78@sda21(r0)
    slwi 4, 4, 3
    li 0, 0x0
    .4byte 0xC3E20128 # lfs f31, lbl_805430C8@sda21(r0)
    lwz 8, 0x8(8)
    mr 23, 3
    mr 24, 5
    mr 25, 6
    addi 5, 8, 0x20
    mr 26, 7
    add 3, 5, 4
    lwz 4, 0x24(8)
    lwz 3, 0x10(3)
    li 29, 0x0
    li 28, 0x1
    li 27, 0x0
    add 3, 4, 3
    stw 0, 0x10(1)
    addi 30, 3, 0x8
    add 30, 5, 30
    .4byte 0x48000408 # b .L_8038372C
L_80383328:
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x40820064 # bne .L_80383394
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80383354
    cmplwi 25, 0x0
    .4byte 0x41820010 # beq .L_80383354
    lwz 0, 0x10(1)
    stbx 3, 25, 0
    .4byte 0x4800002C # b .L_8038337C
L_80383354:
    clrlwi 0, 27, 24
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_80383374
    cmplwi 26, 0x0
    .4byte 0x41820010 # beq .L_80383374
    lwz 0, 0x10(1)
    stbx 3, 26, 0
    .4byte 0x4800000C # b .L_8038337C
L_80383374:
    lwz 0, 0x10(1)
    stbx 3, 23, 0
L_8038337C:
    lwz 3, 0x10(1)
    addi 28, 28, 0x1
    addi 29, 29, 0x1
    addi 0, 3, 0x1
    stw 0, 0x10(1)
    .4byte 0x4800039C # b .L_8038372C
L_80383394:
    cmpwi 0, 0x1a
    .4byte 0x40820258 # bne .L_803835F0
    lbz 0, 0x2(31)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x4082017C # bne .L_80383524
    lbz 3, 0x4(31)
    extsb. 0, 3
    .4byte 0x41820020 # beq .L_803833D4
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x41820014 # beq .L_803833D4
    cmpwi 0, 0x12
    .4byte 0x4182000C # beq .L_803833D4
    cmpwi 0, 0x19
    .4byte 0x40820098 # bne .L_80383468
L_803833D4:
    clrlwi 5, 27, 24
    cmplwi 5, 0x2
    .4byte 0x40800204 # bge .L_803835E0
    subi 0, 28, 0x1
    clrlslwi 6, 27, 24, 2
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x1c(1)
    addi 3, 6, 0x5c
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    cmplwi 5, 0x0
    stw 0, 0x18(1)
    addi 0, 6, 0x64
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x18(1)
    stfsx 31, 4, 3
    fsubs 0, 0, 1
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfsx 0, 3, 0
    .4byte 0x40820020 # bne .L_80383440
    cmplwi 25, 0x0
    .4byte 0x41820038 # beq .L_80383460
    lwz 0, 0x10(1)
    li 3, 0x0
    stbx 3, 23, 0
    stw 3, 0x10(1)
    .4byte 0x48000024 # b .L_80383460
L_80383440:
    cmplwi 5, 0x1
    .4byte 0x4082001C # bne .L_80383460
    cmplwi 26, 0x0
    .4byte 0x41820014 # beq .L_80383460
    lwz 0, 0x10(1)
    li 3, 0x0
    stbx 3, 25, 0
    stw 3, 0x10(1)
L_80383460:
    addi 27, 27, 0x1
    .4byte 0x4800017C # b .L_803835E0
L_80383468:
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80383488
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_80383488
    cmpwi 0, 0x11
    .4byte 0x4182000C # beq .L_80383488
    cmpwi 0, 0x1a
    .4byte 0x4082015C # bne .L_803835E0
L_80383488:
    clrlwi 6, 27, 24
    cmplwi 6, 0x2
    .4byte 0x40800150 # bge .L_803835E0
    subi 0, 28, 0x1
    clrlslwi 7, 27, 24, 2
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x1c(1)
    addi 4, 7, 0x5c
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 0, 7, 0x64
    stw 3, 0x18(1)
    cmplwi 6, 0x0
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x18(1)
    stfsx 31, 5, 4
    fsubs 0, 0, 1
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfsx 0, 3, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 27, 0xe6(3)
    .4byte 0x40820020 # bne .L_803834FC
    cmplwi 25, 0x0
    .4byte 0x41820038 # beq .L_8038351C
    lwz 0, 0x10(1)
    li 3, 0x0
    stbx 3, 23, 0
    stw 3, 0x10(1)
    .4byte 0x48000024 # b .L_8038351C
L_803834FC:
    cmplwi 6, 0x1
    .4byte 0x4082001C # bne .L_8038351C
    cmplwi 26, 0x0
    .4byte 0x41820014 # beq .L_8038351C
    lwz 0, 0x10(1)
    li 3, 0x0
    stbx 3, 25, 0
    stw 3, 0x10(1)
L_8038351C:
    addi 27, 27, 0x1
    .4byte 0x480000C0 # b .L_803835E0
L_80383524:
    cmpwi 0, 0x3
    .4byte 0x408200B8 # bne .L_803835E0
    clrlwi 0, 27, 24
    addi 4, 24, 0x30
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80383550
    cmplwi 25, 0x0
    .4byte 0x41820010 # beq .L_80383550
    lwz 0, 0x10(1)
    stbx 4, 25, 0
    .4byte 0x4800002C # b .L_80383578
L_80383550:
    clrlwi 0, 27, 24
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_80383570
    cmplwi 26, 0x0
    .4byte 0x41820010 # beq .L_80383570
    lwz 0, 0x10(1)
    stbx 4, 26, 0
    .4byte 0x4800000C # b .L_80383578
L_80383570:
    lwz 0, 0x10(1)
    stbx 4, 23, 0
L_80383578:
    lwz 6, 0x10(1)
    addi 5, 1, 0xc
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 6, 0x1
    stw 0, 0x10(1)
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0xd(1)
    lis 0, 0x4330
    stw 0, 0x18(1)
    mr 4, 24
    xoris 5, 5, 0x8000
    .4byte 0xC8420138 # lfd f2, lbl_805430D8@sda21(r0)
    stw 5, 0x1c(1)
    mr 5, 23
    lbz 3, 0x5(31)
    addi 6, 1, 0x10
    lfd 0, 0x18(1)
    .4byte 0xC0220124 # lfs f1, lbl_805430C4@sda21(r0)
    fsubs 0, 0, 2
    fadds 31, 31, 0
    bl fn_8037F580
    fadds 31, 31, 1
L_803835E0:
    lbz 0, 0x1(31)
    extsb 0, 0
    add 29, 29, 0
    .4byte 0x48000140 # b .L_8038372C
L_803835F0:
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80383610
    cmplwi 25, 0x0
    .4byte 0x41820010 # beq .L_80383610
    lwz 0, 0x10(1)
    stbx 3, 25, 0
    .4byte 0x4800002C # b .L_80383638
L_80383610:
    clrlwi 0, 27, 24
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_80383630
    cmplwi 26, 0x0
    .4byte 0x41820010 # beq .L_80383630
    lwz 0, 0x10(1)
    stbx 3, 26, 0
    .4byte 0x4800000C # b .L_80383638
L_80383630:
    lwz 0, 0x10(1)
    stbx 3, 23, 0
L_80383638:
    lwz 3, 0x10(1)
    lbz 31, 0x0(31)
    addi 0, 3, 0x1
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stw 0, 0x10(1)
    mr 4, 31
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    addi 29, 29, 0x1
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_803836E8
    clrlwi 0, 27, 24
    slwi 31, 31, 8
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80383698
    cmplwi 25, 0x0
    .4byte 0x41820014 # beq .L_80383698
    lbzx 3, 30, 29
    lwz 0, 0x10(1)
    stbx 3, 25, 0
    .4byte 0x48000034 # b .L_803836C8
L_80383698:
    clrlwi 0, 27, 24
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_803836BC
    cmplwi 26, 0x0
    .4byte 0x41820014 # beq .L_803836BC
    lbzx 3, 30, 29
    lwz 0, 0x10(1)
    stbx 3, 26, 0
    .4byte 0x48000010 # b .L_803836C8
L_803836BC:
    lbzx 3, 30, 29
    lwz 0, 0x10(1)
    stbx 3, 23, 0
L_803836C8:
    lbzx 0, 30, 29
    addi 29, 29, 0x1
    lwz 3, 0x10(1)
    extsb 4, 0
    addi 0, 3, 0x1
    clrlwi 3, 4, 24
    stw 0, 0x10(1)
    or 31, 31, 3
L_803836E8:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    addi 5, 1, 0x8
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x9(1)
    lis 0, 0x4330
    stw 0, 0x18(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fadds 31, 31, 0
L_8038372C:
    add 31, 30, 29
    lbz 3, 0x0(31)
    extsb. 0, 3
    .4byte 0x4082FBF0 # bne .L_80383328
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8038375C
    cmplwi 25, 0x0
    .4byte 0x41820010 # beq .L_8038375C
    lwz 0, 0x10(1)
    stbx 3, 25, 0
    .4byte 0x4800002C # b .L_80383784
L_8038375C:
    clrlwi 0, 27, 24
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_8038377C
    cmplwi 26, 0x0
    .4byte 0x41820010 # beq .L_8038377C
    lwz 0, 0x10(1)
    stbx 3, 26, 0
    .4byte 0x4800000C # b .L_80383784
L_8038377C:
    lwz 0, 0x10(1)
    stbx 3, 23, 0
L_80383784:
    fmr 1, 31
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    lmw 23, 0x2c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803837A4:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stfd 30, 0xf0(1)
    psq_st 30, 0xf8(1), 0, 0
    stfd 29, 0xe0(1)
    psq_st 29, 0xe8(1), 0, 0
    stmw 17, 0xa4(1)
    .4byte 0x810D91B8 # lwz r8, lbl_8053AD78@sda21(r0)
    mr 25, 5
    subi 5, 25, 0x1
    li 0, 0x1
    lwz 7, 0x8(8)
    mr 26, 6
    slw 0, 0, 5
    slwi 6, 4, 3
    addi 9, 7, 0x20
    li 4, 0x0
    add 6, 9, 6
    lwz 7, 0x24(7)
    lwz 6, 0x10(6)
    mr 24, 3
    .4byte 0xC3A20128 # lfs f29, lbl_805430C8@sda21(r0)
    fmr 30, 1
    stw 4, 0x14(1)
    add 3, 7, 6
    addi 31, 3, 0x8
    fmr 31, 2
    stfs 29, 0x5c(8)
    mr 30, 26
    add 31, 9, 31
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    clrlwi 22, 0, 24
    slwi 21, 5, 1
    li 29, 0x0
    stfs 29, 0x64(3)
    li 28, 0x1
    li 27, 0x0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 29, 0x60(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 29, 0x68(3)
    stb 4, 0x0(24)
    .4byte 0x480004B0 # b .L_80383D08
L_8038385C:
    extsb 0, 6
    cmpwi 0, 0xa
    .4byte 0x4082010C # bne .L_80383970
    fnmsubs 1, 29, 31, 30
    .4byte 0xC002011C # lfs f0, lbl_805430BC@sda21(r0)
    subi 0, 28, 0x1
    lwz 4, 0x14(1)
    addi 5, 1, 0x28
    lis 3, 0x4330
    fmadds 0, 1, 0, 0
    add 5, 5, 4
    xoris 4, 0, 0x8000
    stb 6, 0x0(5)
    li 0, 0x0
    .4byte 0xC8420138 # lfd f2, lbl_805430D8@sda21(r0)
    fctiwz 0, 0
    stb 0, 0x1(5)
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    stfd 0, 0x90(1)
    lfs 1, 0x64(5)
    lwz 6, 0x94(1)
    stw 3, 0x90(1)
    xoris 0, 6, 0x8000
    stw 4, 0x94(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_803838E8
    stw 0, 0x94(1)
    lfs 1, 0x5c(5)
    stw 3, 0x90(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x5c(5)
L_803838E8:
    stw 4, 0x94(1)
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    stw 3, 0x90(1)
    lfs 1, 0x68(5)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_80383924
    stw 0, 0x94(1)
    lfs 1, 0x60(5)
    stw 3, 0x90(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x60(5)
L_80383924:
    cmpwi 6, 0x0
    .4byte 0x40810024 # ble .L_8038394C
    addi 3, 1, 0x18
    li 4, 0xf
    .4byte 0x38A20140 # li r5, lbl_805430E0@sda21
    crclr 6
    bl fn_8006B414
    mr 3, 24
    addi 4, 1, 0x18
    bl strcat
L_8038394C:
    mr 3, 24
    addi 4, 1, 0x28
    bl strcat
    li 0, 0x0
    .4byte 0xC3A20128 # lfs f29, lbl_805430C8@sda21(r0)
    stw 0, 0x14(1)
    addi 28, 28, 0x1
    addi 29, 29, 0x1
    .4byte 0x4800039C # b .L_80383D08
L_80383970:
    cmpwi 0, 0x1a
    .4byte 0x408202E4 # bne .L_80383C58
    lbz 0, 0x2(20)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x4082015C # bne .L_80383AE0
    lbz 3, 0x4(20)
    extsb. 0, 3
    .4byte 0x41820020 # beq .L_803839B0
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x41820014 # beq .L_803839B0
    cmpwi 0, 0x12
    .4byte 0x4182000C # beq .L_803839B0
    cmpwi 0, 0x19
    .4byte 0x40820054 # bne .L_80383A00
L_803839B0:
    clrlwi 0, 27, 24
    cmplwi 0, 0x2
    .4byte 0x40800290 # bge .L_80383C48
    subi 0, 28, 0x1
    clrlslwi 6, 27, 24, 2
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x94(1)
    addi 4, 6, 0x5c
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 0, 6, 0x64
    stw 3, 0x90(1)
    addi 27, 27, 0x1
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x90(1)
    stfsx 29, 5, 4
    fsubs 0, 0, 1
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfsx 0, 3, 0
    .4byte 0x4800024C # b .L_80383C48
L_80383A00:
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80383A20
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_80383A20
    cmpwi 0, 0x11
    .4byte 0x4182000C # beq .L_80383A20
    cmpwi 0, 0x1a
    .4byte 0x4082005C # bne .L_80383A78
L_80383A20:
    clrlwi 0, 27, 24
    cmplwi 0, 0x2
    .4byte 0x40800220 # bge .L_80383C48
    subi 0, 28, 0x1
    clrlslwi 6, 27, 24, 2
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x94(1)
    addi 4, 6, 0x5c
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 0, 6, 0x64
    stw 3, 0x90(1)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lfd 0, 0x90(1)
    stfsx 29, 5, 4
    fsubs 0, 0, 1
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfsx 0, 3, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 27, 0xe6(3)
    addi 27, 27, 0x1
    .4byte 0x480001D4 # b .L_80383C48
L_80383A78:
    cmpwi 0, 0x2e
    .4byte 0x408201CC # bne .L_80383C48
    cmpwi 25, 0x1
    .4byte 0x418001C4 # blt .L_80383C48
    cmpwi 25, 0x4
    .4byte 0x418101BC # bgt .L_80383C48
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x82(4)
    and 3, 0, 22
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x418201A0 # beq .L_80383C48
    lbz 0, 0x83(4)
    sraw 0, 0, 21
    clrlwi 0, 0, 30
    cmplwi 0, 0x1
    .4byte 0x4082018C # bne .L_80383C48
    subi 3, 25, 0x1
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180017C # blt .L_80383C48
    subi 3, 25, 0x1
    li 4, 0x0
    bl fn_80230E1C
    .4byte 0x4800016C # b .L_80383C48
L_80383AE0:
    cmpwi 0, 0x3
    .4byte 0x40820164 # bne .L_80383C48
    lbz 3, 0x4(20)
    extsb. 0, 3
    .4byte 0x4082007C # bne .L_80383B6C
    lwz 6, 0x14(1)
    addi 4, 25, 0x30
    addi 5, 1, 0x28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 6, 0x1
    stbx 4, 5, 6
    addi 5, 1, 0x10
    stw 0, 0x14(1)
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 5, 0x11(1)
    lis 0, 0x4330
    stw 0, 0x90(1)
    mr 4, 25
    xoris 5, 5, 0x8000
    .4byte 0xC8420138 # lfd f2, lbl_805430D8@sda21(r0)
    stw 5, 0x94(1)
    addi 5, 1, 0x28
    lbz 3, 0x5(20)
    addi 6, 1, 0x14
    lfd 0, 0x90(1)
    .4byte 0xC0220124 # lfs f1, lbl_805430C4@sda21(r0)
    fsubs 0, 0, 2
    fadds 29, 29, 0
    bl fn_8037F580
    fadds 29, 29, 1
    .4byte 0x480000E0 # b .L_80383C48
L_80383B6C:
    extsb 0, 3
    cmpwi 0, 0x2
    .4byte 0x408200D4 # bne .L_80383C48
    lis 3, 0x6666
    li 19, 0x3e8
    addi 23, 3, 0x6667
    li 18, 0x0
    li 17, 0x0
L_80383B8C:
    cmpw 26, 19
    .4byte 0x41800008 # blt .L_80383B98
    li 18, 0x1
L_80383B98:
    clrlwi. 0, 18, 24
    .4byte 0x4082000C # bne .L_80383BA8
    cmpwi 19, 0x1
    .4byte 0x40820060 # bne .L_80383C04
L_80383BA8:
    divw 4, 26, 19
    lwz 7, 0x14(1)
    addi 6, 1, 0x28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 7, 0x1
    stw 0, 0x14(1)
    addi 4, 4, 0x30
    addi 5, 1, 0xc
    stbx 4, 6, 7
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0xd(1)
    lis 0, 0x4330
    stw 0, 0x90(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x94(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 1
    fadds 29, 29, 0
L_80383C04:
    divw 3, 26, 19
    addi 17, 17, 0x1
    cmpwi 17, 0x4
    mulhw 0, 23, 19
    mullw 4, 3, 19
    srawi 0, 0, 2
    srwi 3, 0, 31
    subf 26, 4, 26
    add 19, 0, 3
    .4byte 0x4180FF64 # blt .L_80383B8C
    lbz 3, 0x5(20)
    mr 4, 30
    .4byte 0xC0220124 # lfs f1, lbl_805430C4@sda21(r0)
    addi 5, 1, 0x28
    addi 6, 1, 0x14
    bl fn_8037F580
    fadds 29, 29, 1
L_80383C48:
    lbz 0, 0x1(20)
    extsb 0, 0
    add 29, 29, 0
    .4byte 0x480000B4 # b .L_80383D08
L_80383C58:
    lwz 5, 0x14(1)
    addi 4, 1, 0x28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stbx 6, 4, 5
    addi 0, 5, 0x1
    lbz 20, 0x0(20)
    stw 0, 0x14(1)
    mr 4, 20
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    addi 29, 29, 0x1
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80383CC4
    lwz 4, 0x14(1)
    addi 3, 1, 0x28
    lbzx 5, 31, 29
    slwi 20, 20, 8
    addi 0, 4, 0x1
    stbx 5, 3, 4
    lbzx 3, 31, 29
    addi 29, 29, 0x1
    stw 0, 0x14(1)
    clrlwi 0, 3, 24
    or 20, 20, 0
L_80383CC4:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 20
    addi 5, 1, 0x8
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x9(1)
    lis 0, 0x4330
    stw 0, 0x90(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    stw 0, 0x94(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 1
    fadds 29, 29, 0
L_80383D08:
    add 20, 31, 29
    lbz 6, 0x0(20)
    extsb. 0, 6
    .4byte 0x4082FB48 # bne .L_8038385C
    fnmsubs 1, 29, 31, 30
    .4byte 0xC002011C # lfs f0, lbl_805430BC@sda21(r0)
    subi 0, 28, 0x1
    lis 3, 0x4330
    xoris 4, 0, 0x8000
    lwz 0, 0x14(1)
    fmadds 0, 1, 0, 0
    addi 5, 1, 0x28
    .4byte 0xC8420138 # lfd f2, lbl_805430D8@sda21(r0)
    stbx 6, 5, 0
    fctiwz 0, 0
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    lfs 1, 0x64(5)
    stfd 0, 0x90(1)
    lwz 6, 0x94(1)
    stw 3, 0x90(1)
    xoris 0, 6, 0x8000
    stw 4, 0x94(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_80383D8C
    stw 0, 0x94(1)
    lfs 1, 0x5c(5)
    stw 3, 0x90(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x5c(5)
L_80383D8C:
    stw 4, 0x94(1)
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    stw 3, 0x90(1)
    lfs 1, 0x68(5)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_80383DC8
    stw 0, 0x94(1)
    lfs 1, 0x60(5)
    stw 3, 0x90(1)
    lfd 0, 0x90(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x60(5)
L_80383DC8:
    cmpwi 6, 0x0
    .4byte 0x40810024 # ble .L_80383DF0
    addi 3, 1, 0x18
    li 4, 0xf
    .4byte 0x38A20140 # li r5, lbl_805430E0@sda21
    crclr 6
    bl fn_8006B414
    mr 3, 24
    addi 4, 1, 0x18
    bl strcat
L_80383DF0:
    mr 3, 24
    addi 4, 1, 0x28
    bl strcat
    mr 3, 28
    psq_l 31, 0x108(1), 0, 0
    lfd 31, 0x100(1)
    psq_l 30, 0xf8(1), 0, 0
    lfd 30, 0xf0(1)
    psq_l 29, 0xe8(1), 0, 0
    lfd 29, 0xe0(1)
    lmw 17, 0xa4(1)
    lwz 0, 0x114(1)
    mtlr 0
    addi 1, 1, 0x110
    blr

fn_80383E2C:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    slwi 3, 3, 3
    li 0, 0x0
    lwz 5, 0x8(5)
    addi 6, 5, 0x20
    lwz 5, 0x24(5)
    add 3, 6, 3
    lwz 3, 0x10(3)
    add 3, 5, 3
    stb 0, 0x0(4)
    addi 3, 3, 0x8
    add 3, 6, 3
    lbz 0, 0x0(3)
    cmpwi 0, 0x1a
    .4byte 0x40820044 # bne .L_80383EA8
    lbz 0, 0x2(3)
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_80383EA8
    lbz 6, 0x4(3)
    extsb 5, 6
    subi 0, 5, 0x7
    cmplwi 0, 0x2c
    .4byte 0x41810024 # bgt .L_80383EA8
    lis 5, jumptable_804AF0CC@ha
    slwi 0, 0, 2
    addi 5, 5, jumptable_804AF0CC@l
    lwzx 0, 5, 0
    mtctr 0
    bctr
    stb 6, 0x0(4)
    blr
L_80383EA8:
    li 3, 0x0
    blr

fn_80383EB0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 21, 0x24(1)
    mr 23, 3
    mr 22, 4
    bl fn_8022EA0C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 31, 3
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80383F30
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80383F18
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80383F18
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80383F18
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80383F18
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80383F18
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80383F1C
L_80383F18:
    li 0, 0x1
L_80383F1C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80383F84
L_80383F30:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80383F70
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80383F70
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80383F70
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80383F70
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80383F70
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80383F70
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80383F74
L_80383F70:
    li 0, 0x1
L_80383F74:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80383F84:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80383FAC
    mr 3, 23
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80383FAC
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80383FAC
    mr 27, 3
    .4byte 0x48000008 # b .L_80383FB0
L_80383FAC:
    mr 27, 23
L_80383FB0:
    lis 4, lbl_80529DEC@ha
    lis 3, lbl_8050EC80@ha
    mr 23, 22
    slwi 24, 27, 1
    addi 28, 4, lbl_80529DEC@l
    addi 29, 3, lbl_8050EC80@l
L_80383FC8:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 3, 23, 3
    addi 0, 3, 0x10
    li 6, 0x0
    lwz 4, 0x8(4)
    addi 5, 4, 0x20
    lwz 4, 0x24(4)
    lwzx 0, 5, 0
    add 4, 4, 0
    addi 26, 4, 0x8
    add 26, 5, 26
    lbz 0, 0x0(26)
    cmpwi 0, 0x1a
    .4byte 0x40820044 # bne .L_80384040
    lbz 0, 0x2(26)
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_80384040
    lbz 5, 0x4(26)
    extsb 4, 5
    subi 0, 4, 0x7
    cmplwi 0, 0x2c
    .4byte 0x41810024 # bgt .L_80384040
    lis 4, jumptable_804AF278@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AF278@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    mr 6, 5
    .4byte 0x48000008 # b .L_80384044
L_80384040:
    li 26, 0x0
L_80384044:
    cmplwi 26, 0x0
    .4byte 0x41820644 # beq .L_8038468C
    extsb 4, 6
    subi 0, 4, 0x7
    cmplwi 0, 0x2c
    .4byte 0x4181FF70 # bgt .L_80383FC8
    lis 4, jumptable_804AF1C4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AF1C4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 21, 0x6(26)
    lwz 22, 0xa(26)
    bl GetRoomConfigRecord
    lbz 4, 0x5(26)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80384098
    mr 23, 21
    .4byte 0x4BFFFF34 # b .L_80383FC8
L_80384098:
    mr 23, 22
    .4byte 0x4BFFFF2C # b .L_80383FC8
    lbz 30, 0x5(26)
    lwz 23, 0x6(26)
    cmplwi 30, 0x10
    lbz 22, 0xe(26)
    lwz 26, 0xa(26)
    .4byte 0x418102B0 # bgt .L_80384364
    lis 3, jumptable_804AF180@ha
    slwi 0, 30, 2
    addi 3, 3, jumptable_804AF180@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x40820284 # bne .L_80384364
    mr 3, 31
    bl fn_8023EF50
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    lwz 3, 0x280(3)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80384110
    clrlwi. 0, 30, 24
    .4byte 0x41820040 # beq .L_8038414C
L_80384110:
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_80384124
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x4182002C # beq .L_8038414C
L_80384124:
    cmpwi 3, 0x2
    .4byte 0x40820010 # bne .L_80384138
    clrlwi 0, 30, 24
    cmplwi 0, 0x2
    .4byte 0x41820018 # beq .L_8038414C
L_80384138:
    cmpwi 3, 0x9
    .4byte 0x40820228 # bne .L_80384364
    clrlwi 0, 30, 24
    cmplwi 0, 0x10
    .4byte 0x4082021C # bne .L_80384364
L_8038414C:
    cmplwi 22, 0x0
    mr 26, 23
    .4byte 0x41820210 # beq .L_80384364
    mr 3, 31
    bl fn_8023EE28
    .4byte 0x48000204 # b .L_80384364
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x424f
    cmplwi 0, 0x5244
    .4byte 0x408201F0 # bne .L_80384364
    cmplwi 22, 0x0
    mr 26, 23
    .4byte 0x418201E4 # beq .L_80384364
    mr 3, 31
    bl fn_8023EE28
    .4byte 0x480001D8 # b .L_80384364
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x5354
    cmplwi 0, 0x4f4e
    .4byte 0x408201C4 # bne .L_80384364
    cmplwi 22, 0x0
    mr 26, 23
    .4byte 0x418201B8 # beq .L_80384364
    mr 3, 31
    bl fn_8023EE28
    .4byte 0x480001AC # b .L_80384364
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x40820198 # bne .L_80384364
    cmplwi 22, 0x0
    mr 26, 23
    .4byte 0x4182018C # beq .L_80384364
    mr 3, 31
    bl fn_8023EE28
    .4byte 0x48000180 # b .L_80384364
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x4e49
    cmplwi 0, 0x5741
    .4byte 0x4082016C # bne .L_80384364
    cmplwi 22, 0x0
    mr 26, 23
    .4byte 0x41820160 # beq .L_80384364
    mr 3, 31
    bl fn_8023EE28
    .4byte 0x48000154 # b .L_80384364
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x4752
    cmplwi 0, 0x4153
    .4byte 0x40820140 # bne .L_80384364
    cmplwi 22, 0x0
    mr 26, 23
    .4byte 0x41820134 # beq .L_80384364
    mr 3, 31
    bl fn_8023EE28
    .4byte 0x48000128 # b .L_80384364
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x5455
    cmplwi 0, 0x424f
    .4byte 0x40820114 # bne .L_80384364
    mr 3, 31
    bl fn_8023EF50
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    lwz 0, 0x90(3)
    extrwi. 3, 0, 5, 20
    .4byte 0x40820010 # bne .L_80384284
    clrlwi 0, 30, 24
    cmplwi 0, 0xa
    .4byte 0x4182002C # beq .L_803842AC
L_80384284:
    cmplwi 3, 0x1
    .4byte 0x40820010 # bne .L_80384298
    clrlwi 0, 30, 24
    cmplwi 0, 0x8
    .4byte 0x41820018 # beq .L_803842AC
L_80384298:
    cmplwi 3, 0x2
    .4byte 0x408200C8 # bne .L_80384364
    clrlwi 0, 30, 24
    cmplwi 0, 0x9
    .4byte 0x408200BC # bne .L_80384364
L_803842AC:
    cmplwi 22, 0x0
    mr 26, 23
    .4byte 0x418200B0 # beq .L_80384364
    mr 3, 31
    bl fn_8023EE28
    .4byte 0x480000A4 # b .L_80384364
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x504c
    cmplwi 0, 0x4159
    .4byte 0x40820090 # bne .L_80384364
    mr 3, 27
    bl fn_8023ECF0
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_803842F4
    clrlwi 0, 30, 24
    cmplwi 0, 0xb
    .4byte 0x41820058 # beq .L_80384348
L_803842F4:
    mr 3, 31
    bl fn_8023ECF0
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_80384310
    clrlwi 0, 30, 24
    cmplwi 0, 0xc
    .4byte 0x4182003C # beq .L_80384348
L_80384310:
    mr 3, 31
    bl fn_8023ECF0
    cmpwi 3, 0x2
    .4byte 0x40820010 # bne .L_8038432C
    clrlwi 0, 30, 24
    cmplwi 0, 0xd
    .4byte 0x41820020 # beq .L_80384348
L_8038432C:
    mr 3, 31
    bl fn_8023ECF0
    cmpwi 3, 0x3
    .4byte 0x4082002C # bne .L_80384364
    clrlwi 0, 30, 24
    cmplwi 0, 0xe
    .4byte 0x40820020 # bne .L_80384364
L_80384348:
    mr 26, 23
    .4byte 0x48000018 # b .L_80384364
    mr 3, 31
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80384364
    mr 26, 23
L_80384364:
    mr 23, 26
    .4byte 0x4BFFFC60 # b .L_80383FC8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lbz 7, 0x5(26)
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 7, 0x14(1)
    mullw 4, 5, 4
    .4byte 0xC8420150 # lfd f2, lbl_805430F0@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0020124 # lfs f0, lbl_805430C4@sda21(r0)
    lfd 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 2, 1, 2
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    addi 6, 4, 0x1
    cmpw 6, 7
    .4byte 0x40810008 # ble .L_803843E4
    mr 6, 7
L_803843E4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 0, 3, 0x14
    li 5, 0x0
    lwz 3, 0x8(4)
    addi 3, 3, 0x20
    lhzx 0, 3, 0
    lhz 4, 0x8(3)
    add 6, 0, 6
    mtctr 4
    cmplwi 4, 0x0
    .4byte 0x40810024 # ble .L_80384430
L_80384410:
    lhz 0, 0x14(3)
    cmplw 0, 6
    .4byte 0x4082000C # bne .L_80384424
    mr 25, 5
    .4byte 0x48000010 # b .L_80384430
L_80384424:
    addi 3, 3, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FFE4 # bdnz .L_80384410
L_80384430:
    cmplw 5, 4
    .4byte 0x41800008 # blt .L_8038443C
    li 25, 0x12b
L_8038443C:
    mr 23, 25
    .4byte 0x4BFFFB88 # b .L_80383FC8
    lwz 21, 0x5(26)
    lwz 22, 0x9(26)
    lwz 30, 0xd(26)
    lwz 26, 0x11(26)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x3
    .4byte 0x41820034 # beq .L_80384494
    .4byte 0x40800014 # bge .L_80384478
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_80384484
    .4byte 0x4080001C # bge .L_8038448C
    .4byte 0x4BFFFB54 # b .L_80383FC8
L_80384478:
    cmpwi 3, 0x5
    .4byte 0x4080FB4C # bge .L_80383FC8
    .4byte 0x4800001C # b .L_8038449C
L_80384484:
    mr 23, 21
    .4byte 0x4BFFFB40 # b .L_80383FC8
L_8038448C:
    mr 23, 22
    .4byte 0x4BFFFB38 # b .L_80383FC8
L_80384494:
    mr 23, 30
    .4byte 0x4BFFFB30 # b .L_80383FC8
L_8038449C:
    mr 23, 26
    .4byte 0x4BFFFB28 # b .L_80383FC8
    lwz 21, 0x5(26)
    mr 3, 27
    lwz 22, 0x9(26)
    lwz 23, 0xd(26)
    bl fn_80236100
    cmpw 3, 21
    .4byte 0x4180FB0C # blt .L_80383FC8
    mr 23, 22
    .4byte 0x4BFFFB04 # b .L_80383FC8
    .4byte 0x4BFFFB00 # b .L_80383FC8
    cmpwi 27, 0x2
    lwz 0, 0x5(26)
    lwz 3, 0x9(26)
    lwz 4, 0xd(26)
    lwz 5, 0x11(26)
    .4byte 0x41820034 # beq .L_80384514
    .4byte 0x40800014 # bge .L_803844F8
    cmpwi 27, 0x0
    .4byte 0x41820018 # beq .L_80384504
    .4byte 0x4080001C # bge .L_8038450C
    .4byte 0x4BFFFAD4 # b .L_80383FC8
L_803844F8:
    cmpwi 27, 0x4
    .4byte 0x4080FACC # bge .L_80383FC8
    .4byte 0x4800001C # b .L_8038451C
L_80384504:
    mr 23, 0
    .4byte 0x4BFFFAC0 # b .L_80383FC8
L_8038450C:
    mr 23, 3
    .4byte 0x4BFFFAB8 # b .L_80383FC8
L_80384514:
    mr 23, 4
    .4byte 0x4BFFFAB0 # b .L_80383FC8
L_8038451C:
    mr 23, 5
    .4byte 0x4BFFFAA8 # b .L_80383FC8
    lwz 4, 0x118(28)
    lwz 8, 0x5(26)
    cmpwi 4, 0x0
    lwz 9, 0x9(26)
    lwz 7, 0x11c(28)
    .4byte 0x4180000C # blt .L_80384544
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_8038454C
L_80384544:
    li 0, 0x0
    .4byte 0x48000054 # b .L_8038459C
L_8038454C:
    cmpwi 7, 0x0
    .4byte 0x4180000C # blt .L_8038455C
    cmpwi 7, 0x3
    .4byte 0x4081000C # ble .L_80384564
L_8038455C:
    li 0, 0x0
    .4byte 0x4800003C # b .L_8038459C
L_80384564:
    lwz 0, 0x10(29)
    lis 3, lbl_8050EC80@ha
    slwi 5, 4, 2
    li 6, 0x1
    mulli 4, 0, 0xc8
    addi 0, 3, lbl_8050EC80@l
    add 5, 7, 5
    add 3, 0, 4
    slw 4, 6, 5
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038459C:
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_803845AC
    mr 23, 8
    .4byte 0x4BFFFA20 # b .L_80383FC8
L_803845AC:
    mr 23, 9
    .4byte 0x4BFFFA18 # b .L_80383FC8
    lbz 3, 0x5(26)
    lhz 30, 0x6(26)
    cmplwi 3, 0x1
    lwz 21, 0x8(26)
    lwz 22, 0xc(26)
    .4byte 0x41800018 # blt .L_803845E0
    cmplwi 3, 0x4
    .4byte 0x41810010 # bgt .L_803845E0
    subi 0, 3, 0x1
    clrlwi 23, 0, 24
    .4byte 0x48000008 # b .L_803845E4
L_803845E0:
    clrlwi 23, 27, 24
L_803845E4:
    bl GetRoomConfigRecord
    mr 4, 23
    mr 5, 30
    bl fn_802D7E5C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80384604
    mr 23, 21
    .4byte 0x4BFFF9C8 # b .L_80383FC8
L_80384604:
    mr 23, 22
    .4byte 0x4BFFF9C0 # b .L_80383FC8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x5(26)
    lbz 0, 0x83(3)
    lwz 3, 0x9(26)
    sraw 0, 0, 24
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_80384634
    mr 23, 4
    .4byte 0x4BFFF998 # b .L_80383FC8
L_80384634:
    mr 23, 3
    .4byte 0x4BFFF990 # b .L_80383FC8
    lwz 21, 0x5(26)
    mr 3, 27
    lwz 22, 0x9(26)
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4182000C # beq .L_8038465C
    mr 23, 21
    .4byte 0x4BFFF970 # b .L_80383FC8
L_8038465C:
    mr 23, 22
    .4byte 0x4BFFF968 # b .L_80383FC8
    lwz 21, 0x5(26)
    mr 3, 27
    lwz 22, 0x9(26)
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_80384684
    mr 23, 21
    .4byte 0x4BFFF948 # b .L_80383FC8
L_80384684:
    mr 23, 22
    .4byte 0x4BFFF940 # b .L_80383FC8
L_8038468C:
    mr 3, 23
    lmw 21, 0x24(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803846A4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 3
    lwz 3, 0x8(4)
    add 3, 3, 0
    lhz 3, 0x34(3)
    blr

fn_803846BC:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    li 6, 0x0
    lwz 4, 0x8(4)
    addi 4, 4, 0x20
    lhz 5, 0x8(4)
    mtctr 5
    cmplwi 5, 0x0
    .4byte 0x40810024 # ble .L_803846FC
L_803846DC:
    lhz 0, 0x14(4)
    cmplw 0, 3
    .4byte 0x4082000C # bne .L_803846F0
    mr 3, 6
    .4byte 0x48000010 # b .L_803846FC
L_803846F0:
    addi 4, 4, 0x8
    addi 6, 6, 0x1
    .4byte 0x4200FFE4 # bdnz .L_803846DC
L_803846FC:
    cmplw 6, 5
    bltlr
    li 3, 0x12b
    blr

fn_8038470C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    mr 29, 4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038478C
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384774
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384774
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384774
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384774
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384774
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384778
L_80384774:
    li 0, 0x1
L_80384778:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803847E0
L_8038478C:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803847CC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803847CC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803847CC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803847CC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803847CC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803847CC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803847D0
L_803847CC:
    li 0, 0x1
L_803847D0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803847E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80384808
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80384808
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80384808
    mr 31, 3
    .4byte 0x48000008 # b .L_8038480C
L_80384808:
    mr 31, 30
L_8038480C:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 30, 31, 2
    add 3, 0, 30
    lwz 3, 0x114(3)
    bl fn_803913E0
    mr 3, 31
    mr 4, 29
    bl fn_80383EB0
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 29, 3
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384890
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384878
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384878
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384878
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384878
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384878
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038487C
L_80384878:
    li 0, 0x1
L_8038487C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803848E4
L_80384890:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803848D0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803848D0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803848D0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803848D0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803848D0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803848D0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803848D4
L_803848D0:
    li 0, 0x1
L_803848D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803848E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80384908
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80384908
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80384908
    .4byte 0x48000008 # b .L_8038490C
L_80384908:
    mr 3, 31
L_8038490C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    addi 4, 4, 0x114
    lwzx 3, 4, 0
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x40820110 # bne .L_80384A34
    lwzx 3, 4, 30
    mr 4, 29
    li 5, 0x1
    bl fn_80390E40
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384998
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384980
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384980
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384980
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384980
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384980
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384984
L_80384980:
    li 0, 0x1
L_80384984:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803849EC
L_80384998:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803849D8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803849D8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803849D8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803849D8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803849D8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803849D8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803849DC
L_803849D8:
    li 0, 0x1
L_803849DC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803849EC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80384A10
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80384A10
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80384A10
    .4byte 0x48000008 # b .L_80384A14
L_80384A10:
    mr 3, 31
L_80384A14:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x1
    li 3, 0x1
    add 4, 4, 0
    lwz 4, 0x114(4)
    stb 5, 0x24(4)
    .4byte 0x4800020C # b .L_80384C3C
L_80384A34:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384A94
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384A7C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384A7C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384A7C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384A7C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384A7C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384A80
L_80384A7C:
    li 0, 0x1
L_80384A80:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80384AE8
L_80384A94:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80384AD4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80384AD4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80384AD4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80384AD4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80384AD4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80384AD4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80384AD8
L_80384AD4:
    li 0, 0x1
L_80384AD8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80384AE8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80384B0C
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80384B0C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80384B0C
    .4byte 0x48000008 # b .L_80384B10
L_80384B0C:
    mr 3, 31
L_80384B10:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    addi 4, 4, 0x114
    lwzx 3, 4, 0
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x40820110 # bne .L_80384C38
    lwzx 3, 4, 30
    mr 4, 29
    li 5, 0x1
    bl fn_80390E40
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384B9C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384B84
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384B84
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384B84
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384B84
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384B84
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384B88
L_80384B84:
    li 0, 0x1
L_80384B88:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80384BF0
L_80384B9C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80384BDC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80384BDC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80384BDC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80384BDC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80384BDC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80384BDC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80384BE0
L_80384BDC:
    li 0, 0x1
L_80384BE0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80384BF0:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80384C14
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80384C14
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80384C14
    .4byte 0x48000008 # b .L_80384C18
L_80384C14:
    mr 3, 31
L_80384C18:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x6
    li 3, 0x1
    add 4, 4, 0
    lwz 4, 0x114(4)
    stb 5, 0x24(4)
    .4byte 0x48000008 # b .L_80384C3C
L_80384C38:
    li 3, 0x0
L_80384C3C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80384C58:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 23, 0x3c(1)
    mr 28, 3
    mr 27, 4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384CD0
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384CB8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384CB8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384CB8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384CB8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384CB8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384CBC
L_80384CB8:
    li 0, 0x1
L_80384CBC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80384D24
L_80384CD0:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80384D10
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80384D10
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80384D10
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80384D10
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80384D10
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80384D10
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80384D14
L_80384D10:
    li 0, 0x1
L_80384D14:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80384D24:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80384D4C
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80384D4C
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80384D4C
    mr 30, 3
    .4byte 0x48000008 # b .L_80384D50
L_80384D4C:
    mr 30, 28
L_80384D50:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384DB0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384D98
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384D98
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384D98
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384D98
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384D98
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384D9C
L_80384D98:
    li 0, 0x1
L_80384D9C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80384E04
L_80384DB0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80384DF0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80384DF0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80384DF0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80384DF0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80384DF0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80384DF0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80384DF4
L_80384DF0:
    li 0, 0x1
L_80384DF4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80384E04:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80384E28
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80384E28
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80384E28
    .4byte 0x48000008 # b .L_80384E2C
L_80384E28:
    mr 3, 30
L_80384E2C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80384E50
    li 3, 0x1
    .4byte 0x48000B00 # b .L_8038594C
L_80384E50:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384EB0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384E98
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384E98
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384E98
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384E98
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384E98
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384E9C
L_80384E98:
    li 0, 0x1
L_80384E9C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80384F04
L_80384EB0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80384EF0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80384EF0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80384EF0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80384EF0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80384EF0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80384EF0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80384EF4
L_80384EF0:
    li 0, 0x1
L_80384EF4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80384F04:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80384F28
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80384F28
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80384F28
    .4byte 0x48000008 # b .L_80384F2C
L_80384F28:
    mr 3, 30
L_80384F2C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x418200FC # beq .L_80385040
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80384FA8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80384F90
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80384F90
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80384F90
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80384F90
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80384F90
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80384F94
L_80384F90:
    li 0, 0x1
L_80384F94:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80384FFC
L_80384FA8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80384FE8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80384FE8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80384FE8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80384FE8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80384FE8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80384FE8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80384FEC
L_80384FE8:
    li 0, 0x1
L_80384FEC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80384FFC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385020
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385020
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385020
    .4byte 0x48000008 # b .L_80385024
L_80385020:
    mr 3, 30
L_80385024:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x4082090C # bne .L_80385948
L_80385040:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803850A0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385088
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385088
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385088
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385088
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385088
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038508C
L_80385088:
    li 0, 0x1
L_8038508C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803850F4
L_803850A0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803850E0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803850E0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803850E0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803850E0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803850E0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803850E0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803850E4
L_803850E0:
    li 0, 0x1
L_803850E4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803850F4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385118
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385118
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385118
    .4byte 0x48000008 # b .L_8038511C
L_80385118:
    mr 3, 30
L_8038511C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    addi 4, 4, 0x114
    lwzx 3, 4, 0
    lbz 0, 0x40(3)
    cmplwi 0, 0x0
    .4byte 0x40820814 # bne .L_80385948
    slwi 29, 30, 2
    lwzx 3, 4, 29
    lhz 3, 0x28(3)
    extrwi. 0, 3, 1, 29
    .4byte 0x408204D8 # bne .L_80385620
    rlwinm. 0, 3, 0, 20, 20
    .4byte 0x4182000C # beq .L_8038515C
    li 3, 0x1
    .4byte 0x48000010 # b .L_80385168
L_8038515C:
    mr 3, 28
    mr 4, 27
    bl fn_8022FB1C
L_80385168:
    clrlwi. 0, 3, 24
    .4byte 0x418207DC # beq .L_80385948
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803851D0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803851B8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803851B8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803851B8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803851B8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803851B8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803851BC
L_803851B8:
    li 0, 0x1
L_803851BC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385224
L_803851D0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385210
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385210
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385210
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385210
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385210
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385210
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385214
L_80385210:
    li 0, 0x1
L_80385214:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385224:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385248
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385248
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385248
    .4byte 0x48000008 # b .L_8038524C
L_80385248:
    mr 3, 28
L_8038524C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 4, 4, 0
    lwz 4, 0x114(4)
    lhz 4, 0x28(4)
    extrwi. 0, 4, 1, 28
    .4byte 0x4082000C # bne .L_80385270
    rlwinm. 0, 4, 0, 24, 24
    .4byte 0x4182000C # beq .L_80385278
L_80385270:
    li 3, 0x1
    .4byte 0x48000088 # b .L_803852FC
L_80385278:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80385294
    li 4, 0x0
    bl fn_8023061C
    .4byte 0x4800006C # b .L_803852FC
L_80385294:
    addi 23, 1, 0x28
    li 25, 0x0
    mr 24, 23
    li 26, -0x1
L_803852A4:
    stw 26, 0x0(24)
    mr 3, 25
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_803852C0
    stw 25, 0x0(24)
L_803852C0:
    addi 25, 25, 0x1
    addi 24, 24, 0x4
    cmpwi 25, 0x4
    .4byte 0x4180FFD8 # blt .L_803852A4
    li 26, 0x0
L_803852D4:
    lwz 3, 0x0(23)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_803852E8
    li 4, 0x0
    bl fn_80230224
L_803852E8:
    addi 26, 26, 0x1
    addi 23, 23, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFE0 # blt .L_803852D4
    li 3, 0x1
L_803852FC:
    clrlwi. 0, 3, 24
    .4byte 0x41820648 # beq .L_80385948
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lwz 25, 0x20(3)
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 25
    li 6, 0x1
    bl fn_802D46D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80385388
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385370
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385370
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385370
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385370
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385370
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80385374
L_80385370:
    li 0, 0x1
L_80385374:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803853DC
L_80385388:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803853C8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803853C8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803853C8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803853C8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803853C8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803853C8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803853CC
L_803853C8:
    li 0, 0x1
L_803853CC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803853DC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385400
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385400
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385400
    .4byte 0x48000008 # b .L_80385404
L_80385400:
    mr 3, 30
L_80385404:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x408201A8 # bne .L_803855C4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80385480
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385468
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385468
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385468
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385468
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385468
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038546C
L_80385468:
    li 0, 0x1
L_8038546C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803854D4
L_80385480:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803854C0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803854C0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803854C0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803854C0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803854C0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803854C0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803854C4
L_803854C0:
    li 0, 0x1
L_803854C4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803854D4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803854F8
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803854F8
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803854F8
    .4byte 0x48000008 # b .L_803854FC
L_803854F8:
    mr 3, 30
L_803854FC:
    li 8, 0x0
    addi 10, 1, 0x18
    mr 9, 8
    li 0, -0x1
    .4byte 0x48000034 # b .L_80385540
L_80385510:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 7, 9, 0xfc
    lwzx 6, 6, 7
    lwzx 4, 5, 7
    stw 6, 0x0(10)
    cmpw 4, 3
    .4byte 0x4082000C # bne .L_80385534
    stwx 0, 5, 7
    mr 31, 8
L_80385534:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 8, 8, 0x1
L_80385540:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 4, 0xf8(6)
    cmpw 8, 4
    .4byte 0x4180FFC4 # blt .L_80385510
    subi 0, 4, 0x1
    slwi 5, 31, 2
    addi 4, 1, 0x18
    stw 0, 0xf8(6)
    add 4, 4, 5
    .4byte 0x48000018 # b .L_8038557C
L_80385568:
    lwzu 3, 0x4(4)
    addi 0, 5, 0xfc
    addi 31, 31, 0x1
    addi 5, 5, 0x4
    stwx 3, 6, 0
L_8038557C:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 0, 0xf8(6)
    cmpw 31, 0
    .4byte 0x4180FFE0 # blt .L_80385568
    slwi 0, 0, 2
    li 4, -0x1
    add 3, 6, 0
    stw 4, 0xfc(3)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820014 # bne .L_803855C4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x29
    li 5, -0x1
    bl fn_80458880
L_803855C4:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    li 23, 0x1
    li 24, 0x0
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 4, 0x28(3)
    extrwi. 0, 4, 1, 28
    .4byte 0x4082000C # bne .L_803855EC
    rlwinm. 0, 4, 0, 24, 24
    .4byte 0x41820008 # beq .L_803855F0
L_803855EC:
    li 23, 0x0
L_803855F0:
    rlwinm. 0, 4, 0, 20, 20
    .4byte 0x40820008 # bne .L_803855FC
    li 24, 0x1
L_803855FC:
    bl fn_80391678
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 28
    mr 5, 27
    mr 6, 23
    mr 7, 24
    bl fn_803895EC
    li 3, 0x1
    .4byte 0x48000330 # b .L_8038594C
L_80385620:
    rlwinm. 0, 3, 0, 20, 20
    .4byte 0x4182000C # beq .L_80385630
    li 3, 0x1
    .4byte 0x48000010 # b .L_8038563C
L_80385630:
    mr 3, 28
    mr 4, 27
    bl fn_8022FB1C
L_8038563C:
    clrlwi. 0, 3, 24
    .4byte 0x41820308 # beq .L_80385948
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lwz 25, 0x20(3)
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 25
    li 6, 0x1
    bl fn_802D46D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803856C8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803856B0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803856B0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803856B0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803856B0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803856B0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803856B4
L_803856B0:
    li 0, 0x1
L_803856B4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038571C
L_803856C8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385708
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385708
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385708
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385708
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385708
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385708
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038570C
L_80385708:
    li 0, 0x1
L_8038570C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038571C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385740
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385740
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385740
    .4byte 0x48000008 # b .L_80385744
L_80385740:
    mr 3, 30
L_80385744:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x408201A8 # bne .L_80385904
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803857C0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803857A8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803857A8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803857A8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803857A8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803857A8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803857AC
L_803857A8:
    li 0, 0x1
L_803857AC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385814
L_803857C0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385800
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385800
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385800
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385800
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385800
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385800
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385804
L_80385800:
    li 0, 0x1
L_80385804:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385814:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385838
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385838
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385838
    .4byte 0x48000008 # b .L_8038583C
L_80385838:
    mr 3, 30
L_8038583C:
    li 8, 0x0
    addi 10, 1, 0x8
    mr 9, 8
    li 0, -0x1
    .4byte 0x48000034 # b .L_80385880
L_80385850:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 7, 9, 0xfc
    lwzx 6, 6, 7
    lwzx 4, 5, 7
    stw 6, 0x0(10)
    cmpw 4, 3
    .4byte 0x4082000C # bne .L_80385874
    stwx 0, 5, 7
    mr 31, 8
L_80385874:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 8, 8, 0x1
L_80385880:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 4, 0xf8(6)
    cmpw 8, 4
    .4byte 0x4180FFC4 # blt .L_80385850
    subi 0, 4, 0x1
    slwi 5, 31, 2
    addi 4, 1, 0x8
    stw 0, 0xf8(6)
    add 4, 4, 5
    .4byte 0x48000018 # b .L_803858BC
L_803858A8:
    lwzu 3, 0x4(4)
    addi 0, 5, 0xfc
    addi 31, 31, 0x1
    addi 5, 5, 0x4
    stwx 3, 6, 0
L_803858BC:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 0, 0xf8(6)
    cmpw 31, 0
    .4byte 0x4180FFE0 # blt .L_803858A8
    slwi 0, 0, 2
    li 4, -0x1
    add 3, 6, 0
    stw 4, 0xfc(3)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820014 # bne .L_80385904
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x29
    li 5, -0x1
    bl fn_80458880
L_80385904:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    li 23, 0x0
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    extrwi. 0, 0, 1, 20
    .4byte 0x40820008 # bne .L_80385924
    li 23, 0x1
L_80385924:
    bl fn_80391678
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 28
    mr 5, 27
    mr 7, 23
    li 6, 0x0
    bl fn_803895EC
    li 3, 0x1
    .4byte 0x48000008 # b .L_8038594C
L_80385948:
    li 3, 0x0
L_8038594C:
    lmw 23, 0x3c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80385960:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 25, 0x44(1)
    mr 28, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803859D4
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803859BC
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803859BC
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803859BC
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803859BC
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803859BC
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803859C0
L_803859BC:
    li 0, 0x1
L_803859C0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385A28
L_803859D4:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385A14
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385A14
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385A14
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385A14
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385A14
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385A14
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385A18
L_80385A14:
    li 0, 0x1
L_80385A18:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385A28:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80385A50
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80385A50
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80385A50
    mr 30, 3
    .4byte 0x48000008 # b .L_80385A54
L_80385A50:
    mr 30, 28
L_80385A54:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80385AB4
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385A9C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385A9C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385A9C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385A9C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385A9C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80385AA0
L_80385A9C:
    li 0, 0x1
L_80385AA0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385B08
L_80385AB4:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385AF4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385AF4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385AF4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385AF4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385AF4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385AF4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385AF8
L_80385AF4:
    li 0, 0x1
L_80385AF8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385B08:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385B2C
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385B2C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385B2C
    .4byte 0x48000008 # b .L_80385B30
L_80385B2C:
    mr 3, 30
L_80385B30:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80385B54
    li 3, 0x1
    .4byte 0x48000A54 # b .L_803865A4
L_80385B54:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80385BB4
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385B9C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385B9C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385B9C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385B9C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385B9C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80385BA0
L_80385B9C:
    li 0, 0x1
L_80385BA0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385C08
L_80385BB4:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385BF4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385BF4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385BF4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385BF4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385BF4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385BF4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385BF8
L_80385BF4:
    li 0, 0x1
L_80385BF8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385C08:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385C2C
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385C2C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385C2C
    .4byte 0x48000008 # b .L_80385C30
L_80385C2C:
    mr 3, 30
L_80385C30:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x418200FC # beq .L_80385D44
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80385CAC
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385C94
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385C94
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385C94
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385C94
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385C94
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80385C98
L_80385C94:
    li 0, 0x1
L_80385C98:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385D00
L_80385CAC:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385CEC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385CEC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385CEC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385CEC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385CEC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385CEC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385CF0
L_80385CEC:
    li 0, 0x1
L_80385CF0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385D00:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385D24
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385D24
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385D24
    .4byte 0x48000008 # b .L_80385D28
L_80385D24:
    mr 3, 30
L_80385D28:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x40820860 # bne .L_803865A0
L_80385D44:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80385DA4
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385D8C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385D8C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385D8C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385D8C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385D8C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80385D90
L_80385D8C:
    li 0, 0x1
L_80385D90:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385DF8
L_80385DA4:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385DE4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385DE4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385DE4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385DE4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385DE4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385DE4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385DE8
L_80385DE4:
    li 0, 0x1
L_80385DE8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385DF8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385E1C
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385E1C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385E1C
    .4byte 0x48000008 # b .L_80385E20
L_80385E1C:
    mr 3, 30
L_80385E20:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    addi 4, 4, 0x114
    lwzx 3, 4, 0
    lbz 0, 0x40(3)
    cmplwi 0, 0x0
    .4byte 0x40820768 # bne .L_803865A0
    slwi 29, 30, 2
    lwzx 26, 4, 29
    lhz 3, 0x28(26)
    extrwi 0, 3, 1, 19
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80385E64
    mr 3, 26
    bl fn_80391678
    li 3, 0x1
    .4byte 0x48000744 # b .L_803865A4
L_80385E64:
    clrlwi. 0, 3, 31
    .4byte 0x40820470 # bne .L_803862D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80385ECC
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80385EB4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80385EB4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80385EB4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80385EB4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80385EB4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80385EB8
L_80385EB4:
    li 0, 0x1
L_80385EB8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80385F20
L_80385ECC:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80385F0C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80385F0C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80385F0C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80385F0C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80385F0C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80385F0C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80385F10
L_80385F0C:
    li 0, 0x1
L_80385F10:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80385F20:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80385F44
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80385F44
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80385F44
    .4byte 0x48000008 # b .L_80385F48
L_80385F44:
    mr 3, 28
L_80385F48:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 4, 4, 0
    lwz 4, 0x114(4)
    lhz 4, 0x28(4)
    extrwi. 0, 4, 1, 28
    .4byte 0x4082000C # bne .L_80385F6C
    rlwinm. 0, 4, 0, 24, 24
    .4byte 0x4182000C # beq .L_80385F74
L_80385F6C:
    li 3, 0x1
    .4byte 0x48000088 # b .L_80385FF8
L_80385F74:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80385F90
    li 4, 0x0
    bl fn_8023061C
    .4byte 0x4800006C # b .L_80385FF8
L_80385F90:
    addi 25, 1, 0x28
    li 27, 0x0
    mr 26, 25
    li 28, -0x1
L_80385FA0:
    stw 28, 0x0(26)
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80385FBC
    stw 27, 0x0(26)
L_80385FBC:
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFD8 # blt .L_80385FA0
    li 28, 0x0
L_80385FD0:
    lwz 3, 0x0(25)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80385FE4
    li 4, 0x0
    bl fn_80230224
L_80385FE4:
    addi 28, 28, 0x1
    addi 25, 25, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFE0 # blt .L_80385FD0
    li 3, 0x1
L_80385FF8:
    clrlwi. 0, 3, 24
    .4byte 0x418205A4 # beq .L_803865A0
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lwz 27, 0x20(3)
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 27
    li 6, 0x1
    bl fn_802D46D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80386084
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038606C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038606C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038606C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038606C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038606C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386070
L_8038606C:
    li 0, 0x1
L_80386070:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803860D8
L_80386084:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803860C4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803860C4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803860C4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803860C4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803860C4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803860C4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803860C8
L_803860C4:
    li 0, 0x1
L_803860C8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803860D8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803860FC
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803860FC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803860FC
    .4byte 0x48000008 # b .L_80386100
L_803860FC:
    mr 3, 30
L_80386100:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x408201A8 # bne .L_803862C0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038617C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386164
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386164
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386164
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386164
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386164
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386168
L_80386164:
    li 0, 0x1
L_80386168:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803861D0
L_8038617C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803861BC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803861BC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803861BC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803861BC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803861BC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803861BC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803861C0
L_803861BC:
    li 0, 0x1
L_803861C0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803861D0:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803861F4
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803861F4
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803861F4
    .4byte 0x48000008 # b .L_803861F8
L_803861F4:
    mr 3, 30
L_803861F8:
    li 8, 0x0
    addi 10, 1, 0x18
    mr 9, 8
    li 0, -0x1
    .4byte 0x48000034 # b .L_8038623C
L_8038620C:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 7, 9, 0xfc
    lwzx 6, 6, 7
    lwzx 4, 5, 7
    stw 6, 0x0(10)
    cmpw 4, 3
    .4byte 0x4082000C # bne .L_80386230
    stwx 0, 5, 7
    mr 31, 8
L_80386230:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 8, 8, 0x1
L_8038623C:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 4, 0xf8(6)
    cmpw 8, 4
    .4byte 0x4180FFC4 # blt .L_8038620C
    subi 0, 4, 0x1
    slwi 5, 31, 2
    addi 4, 1, 0x18
    stw 0, 0xf8(6)
    add 4, 4, 5
    .4byte 0x48000018 # b .L_80386278
L_80386264:
    lwzu 3, 0x4(4)
    addi 0, 5, 0xfc
    addi 31, 31, 0x1
    addi 5, 5, 0x4
    stwx 3, 6, 0
L_80386278:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 0, 0xf8(6)
    cmpw 31, 0
    .4byte 0x4180FFE0 # blt .L_80386264
    slwi 0, 0, 2
    li 4, -0x1
    add 3, 6, 0
    stw 4, 0xfc(3)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820014 # bne .L_803862C0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x29
    li 5, -0x1
    bl fn_80458880
L_803862C0:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    bl fn_80391678
    li 3, 0x1
    .4byte 0x480002D0 # b .L_803865A4
L_803862D8:
    bl GetRoomConfigRecord
    lwz 5, 0x20(26)
    mr 4, 30
    li 6, 0x1
    bl fn_802D46D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038634C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386334
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386334
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386334
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386334
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386334
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386338
L_80386334:
    li 0, 0x1
L_80386338:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803863A0
L_8038634C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038638C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038638C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038638C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038638C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038638C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038638C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386390
L_8038638C:
    li 0, 0x1
L_80386390:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803863A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803863C4
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803863C4
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803863C4
    .4byte 0x48000008 # b .L_803863C8
L_803863C4:
    mr 3, 30
L_803863C8:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x408201A8 # bne .L_80386588
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80386444
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038642C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038642C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038642C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038642C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038642C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386430
L_8038642C:
    li 0, 0x1
L_80386430:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80386498
L_80386444:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80386484
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80386484
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80386484
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80386484
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80386484
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80386484
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386488
L_80386484:
    li 0, 0x1
L_80386488:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80386498:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803864BC
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803864BC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803864BC
    .4byte 0x48000008 # b .L_803864C0
L_803864BC:
    mr 3, 30
L_803864C0:
    li 8, 0x0
    addi 10, 1, 0x8
    mr 9, 8
    li 0, -0x1
    .4byte 0x48000034 # b .L_80386504
L_803864D4:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 7, 9, 0xfc
    lwzx 6, 6, 7
    lwzx 4, 5, 7
    stw 6, 0x0(10)
    cmpw 4, 3
    .4byte 0x4082000C # bne .L_803864F8
    stwx 0, 5, 7
    mr 31, 8
L_803864F8:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 8, 8, 0x1
L_80386504:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 4, 0xf8(6)
    cmpw 8, 4
    .4byte 0x4180FFC4 # blt .L_803864D4
    subi 0, 4, 0x1
    slwi 5, 31, 2
    addi 4, 1, 0x8
    stw 0, 0xf8(6)
    add 4, 4, 5
    .4byte 0x48000018 # b .L_80386540
L_8038652C:
    lwzu 3, 0x4(4)
    addi 0, 5, 0xfc
    addi 31, 31, 0x1
    addi 5, 5, 0x4
    stwx 3, 6, 0
L_80386540:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 0, 0xf8(6)
    cmpw 31, 0
    .4byte 0x4180FFE0 # blt .L_8038652C
    slwi 0, 0, 2
    li 4, -0x1
    add 3, 6, 0
    stw 4, 0xfc(3)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820014 # bne .L_80386588
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x29
    li 5, -0x1
    bl fn_80458880
L_80386588:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    bl fn_80391678
    li 3, 0x1
    .4byte 0x48000008 # b .L_803865A4
L_803865A0:
    li 3, 0x0
L_803865A4:
    lmw 25, 0x44(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803865B8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 24, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038662C
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386614
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386614
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386614
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386614
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386614
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386618
L_80386614:
    li 0, 0x1
L_80386618:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80386680
L_8038662C:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038666C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038666C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038666C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038666C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038666C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038666C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386670
L_8038666C:
    li 0, 0x1
L_80386670:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80386680:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_803866A8
    mr 3, 24
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_803866A8
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_803866A8
    mr 30, 3
    .4byte 0x48000008 # b .L_803866AC
L_803866A8:
    mr 30, 24
L_803866AC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038670C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803866F4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803866F4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803866F4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803866F4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803866F4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803866F8
L_803866F4:
    li 0, 0x1
L_803866F8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80386760
L_8038670C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038674C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038674C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038674C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038674C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038674C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038674C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386750
L_8038674C:
    li 0, 0x1
L_80386750:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80386760:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80386784
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80386784
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80386784
    .4byte 0x48000008 # b .L_80386788
L_80386784:
    mr 3, 30
L_80386788:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lbz 3, 0xe7(4)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_803867B8
    li 3, 0x1
    .4byte 0x48000CCC # b .L_80387480
L_803867B8:
    slwi 29, 30, 1
    add 4, 4, 29
    lha 3, 0xf0(4)
    cmpwi 3, 0x0
    .4byte 0x40810128 # ble .L_803868F0
    subi 0, 3, 0x1
    sth 0, 0xf0(4)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lha 0, 0xf0(3)
    cmpwi 0, 0x0
    .4byte 0x40820104 # bne .L_803868E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80386848
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386830
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386830
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386830
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386830
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386830
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386834
L_80386830:
    li 0, 0x1
L_80386834:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038689C
L_80386848:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80386888
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80386888
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80386888
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80386888
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80386888
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80386888
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038688C
L_80386888:
    li 0, 0x1
L_8038688C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038689C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803868C0
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803868C0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803868C0
    .4byte 0x48000008 # b .L_803868C4
L_803868C0:
    mr 3, 30
L_803868C4:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    li 3, 0x1
    lbz 4, 0xe7(5)
    clrlwi 0, 0, 24
    or 0, 4, 0
    stb 0, 0xe7(5)
    .4byte 0x48000B9C # b .L_80387480
L_803868E8:
    li 3, 0x0
    .4byte 0x48000B94 # b .L_80387480
L_803868F0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80386950
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386938
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386938
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386938
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386938
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386938
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038693C
L_80386938:
    li 0, 0x1
L_8038693C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803869A4
L_80386950:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80386990
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80386990
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80386990
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80386990
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80386990
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80386990
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386994
L_80386990:
    li 0, 0x1
L_80386994:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803869A4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803869C8
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803869C8
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803869C8
    .4byte 0x48000008 # b .L_803869CC
L_803869C8:
    mr 3, 30
L_803869CC:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x418200FC # beq .L_80386AE0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80386A48
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386A30
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386A30
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386A30
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386A30
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386A30
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386A34
L_80386A30:
    li 0, 0x1
L_80386A34:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80386A9C
L_80386A48:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80386A88
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80386A88
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80386A88
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80386A88
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80386A88
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80386A88
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386A8C
L_80386A88:
    li 0, 0x1
L_80386A8C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80386A9C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80386AC0
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80386AC0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80386AC0
    .4byte 0x48000008 # b .L_80386AC4
L_80386AC0:
    mr 3, 30
L_80386AC4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x408209A0 # bne .L_8038747C
L_80386AE0:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 31, 30, 2
    li 25, 0x0
    li 24, 0x0
    add 3, 0, 31
    lwz 3, 0x114(3)
    bl fn_803908D0
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80386B0C
    li 3, 0x0
    .4byte 0x48000978 # b .L_80387480
L_80386B0C:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    bl fn_80390BA8
    clrlwi 0, 3, 24
    cmplwi 0, 0xff
    .4byte 0x4182003C # beq .L_80386B60
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    bl fn_80390BA8
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80386B44
    li 25, 0x1
L_80386B44:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    bl fn_80390BDC
    cmplwi 3, 0x0
    .4byte 0x40820008 # bne .L_80386B60
    li 24, 0x1
L_80386B60:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80386BC0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386BA8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386BA8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386BA8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386BA8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386BA8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386BAC
L_80386BA8:
    li 0, 0x1
L_80386BAC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80386C14
L_80386BC0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80386C00
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80386C00
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80386C00
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80386C00
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80386C00
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80386C00
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386C04
L_80386C00:
    li 0, 0x1
L_80386C04:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80386C14:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80386C38
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80386C38
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80386C38
    .4byte 0x48000008 # b .L_80386C3C
L_80386C38:
    mr 3, 30
L_80386C3C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x40(3)
    cmplwi 0, 0x0
    .4byte 0x408202E8 # bne .L_80386F3C
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x408200B4 # bne .L_80386D28
    li 27, 0x0
    mr 28, 27
    mr 26, 27
L_80386C84:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 28
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820048 # beq .L_80386CE4
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 26, 0x114
    lwzx 3, 3, 0
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80386CC0
    cmplwi 0, 0x9
    .4byte 0x40820028 # bne .L_80386CE4
L_80386CC0:
    mr 3, 28
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80386CE4
    li 27, 0x1
L_80386CE4:
    addi 28, 28, 0x1
    addi 26, 26, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FF94 # blt .L_80386C84
    clrlwi. 0, 27, 24
    .4byte 0x41820024 # beq .L_80386D1C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x4182000C # beq .L_80386D1C
    li 0, 0x1
    .4byte 0x48000008 # b .L_80386D20
L_80386D1C:
    li 0, 0x0
L_80386D20:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80386D30
L_80386D28:
    clrlwi. 0, 25, 24
    .4byte 0x41820030 # beq .L_80386D5C
L_80386D30:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    lhz 3, 0x28(3)
    extrwi. 0, 3, 1, 26
    .4byte 0x4182000C # beq .L_80386D50
    rlwinm. 0, 3, 0, 19, 19
    .4byte 0x41820010 # beq .L_80386D5C
L_80386D50:
    clrlwi 0, 24, 24
    cmplwi 0, 0x1
    .4byte 0x40820724 # bne .L_8038747C
L_80386D5C:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    extrwi 0, 0, 1, 19
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80386D80
    li 3, 0x1
    .4byte 0x48000704 # b .L_80387480
L_80386D80:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80386DE0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80386DC8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80386DC8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80386DC8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80386DC8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80386DC8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80386DCC
L_80386DC8:
    li 0, 0x1
L_80386DCC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80386E34
L_80386DE0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80386E20
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80386E20
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80386E20
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80386E20
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80386E20
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80386E20
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80386E24
L_80386E20:
    li 0, 0x1
L_80386E24:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80386E34:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80386E58
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80386E58
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80386E58
    .4byte 0x48000008 # b .L_80386E5C
L_80386E58:
    mr 3, 30
L_80386E5C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    addi 3, 4, 0x114
    lwzx 4, 3, 0
    lwzx 3, 3, 31
    lwz 4, 0x2c(4)
    bl fn_80390894
    clrlwi 0, 3, 24
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_80386EA8
    .4byte 0x40800034 # bge .L_80386EB8
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_80386E94
    .4byte 0x48000028 # b .L_80386EB8
L_80386E94:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x59
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_80386EB8
L_80386EA8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x5a
    li 5, -0x1
    bl fn_80458880
L_80386EB8:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 24, 0x114(3)
    lhz 0, 0x28(24)
    extrwi. 0, 0, 1, 19
    .4byte 0x40820018 # bne .L_80386EE4
    bl GetRoomConfigRecord
    lwz 5, 0x20(24)
    mr 4, 30
    li 6, 0x1
    bl fn_802D46D8
L_80386EE4:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    bl fn_80390C38
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820028 # beq .L_80386F24
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    bl fn_80390C38
    mr 4, 3
    mr 3, 30
    bl fn_8038470C
    li 3, 0x0
    .4byte 0x48000560 # b .L_80387480
L_80386F24:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    li 5, 0x2
    li 3, 0x0
    add 4, 0, 29
    sth 5, 0xf0(4)
    .4byte 0x48000548 # b .L_80387480
L_80386F3C:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x408200B4 # bne .L_8038700C
    li 27, 0x0
    mr 26, 27
    mr 28, 27
L_80386F68:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 26
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820048 # beq .L_80386FC8
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 28, 0x114
    lwzx 3, 3, 0
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80386FA4
    cmplwi 0, 0x9
    .4byte 0x40820028 # bne .L_80386FC8
L_80386FA4:
    mr 3, 26
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80386FC8
    li 27, 0x1
L_80386FC8:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FF94 # blt .L_80386F68
    clrlwi. 0, 27, 24
    .4byte 0x41820024 # beq .L_80387000
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x4182000C # beq .L_80387000
    li 0, 0x1
    .4byte 0x48000008 # b .L_80387004
L_80387000:
    li 0, 0x0
L_80387004:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80387014
L_8038700C:
    clrlwi. 0, 25, 24
    .4byte 0x41820010 # beq .L_80387020
L_80387014:
    clrlwi 0, 24, 24
    cmplwi 0, 0x1
    .4byte 0x40820460 # bne .L_8038747C
L_80387020:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    lis 3, lbl_804755A0@ha
    addi 3, 3, lbl_804755A0@l
    mr 4, 30
    add 5, 0, 31
    lwz 5, 0x114(5)
    lhz 0, 0x28(5)
    extrwi 5, 0, 1, 23
    crclr 6
    bl OSReport
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x114(3)
    bl fn_80390B64
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803870B8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803870A0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803870A0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803870A0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803870A0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803870A0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803870A4
L_803870A0:
    li 0, 0x1
L_803870A4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038710C
L_803870B8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803870F8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803870F8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803870F8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803870F8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803870F8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803870F8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803870FC
L_803870F8:
    li 0, 0x1
L_803870FC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038710C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387130
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387130
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387130
    .4byte 0x48000008 # b .L_80387134
L_80387130:
    mr 3, 30
L_80387134:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    addi 3, 4, 0x114
    lwzx 4, 3, 0
    lwzx 3, 3, 31
    lwz 4, 0x2c(4)
    bl fn_80390894
    clrlwi 0, 3, 24
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_80387180
    .4byte 0x40800034 # bge .L_80387190
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_8038716C
    .4byte 0x48000028 # b .L_80387190
L_8038716C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x59
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_80387190
L_80387180:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x5a
    li 5, -0x1
    bl fn_80458880
L_80387190:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803871F0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803871D8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803871D8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803871D8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803871D8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803871D8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803871DC
L_803871D8:
    li 0, 0x1
L_803871DC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387244
L_803871F0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387230
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387230
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387230
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387230
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387230
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387230
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387234
L_80387230:
    li 0, 0x1
L_80387234:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387244:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387268
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387268
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387268
    .4byte 0x48000008 # b .L_8038726C
L_80387268:
    mr 3, 30
L_8038726C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x408200FC # bne .L_80387380
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803872E8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803872D0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803872D0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803872D0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803872D0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803872D0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803872D4
L_803872D0:
    li 0, 0x1
L_803872D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038733C
L_803872E8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387328
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387328
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387328
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387328
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387328
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387328
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038732C
L_80387328:
    li 0, 0x1
L_8038732C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038733C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387360
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387360
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387360
    .4byte 0x48000008 # b .L_80387364
L_80387360:
    mr 3, 30
L_80387364:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x2
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
    .4byte 0x480000F8 # b .L_80387474
L_80387380:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803873E0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803873C8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803873C8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803873C8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803873C8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803873C8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803873CC
L_803873C8:
    li 0, 0x1
L_803873CC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387434
L_803873E0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387420
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387420
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387420
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387420
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387420
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387420
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387424
L_80387420:
    li 0, 0x1
L_80387424:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387434:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387458
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387458
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387458
    .4byte 0x48000008 # b .L_8038745C
L_80387458:
    mr 3, 30
L_8038745C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x7
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
L_80387474:
    li 3, 0x0
    .4byte 0x48000008 # b .L_80387480
L_8038747C:
    li 3, 0x0
L_80387480:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80387494:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 25, 0x44(1)
    mr 28, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80387508
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803874F0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803874F0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803874F0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803874F0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803874F0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803874F4
L_803874F0:
    li 0, 0x1
L_803874F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038755C
L_80387508:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387548
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387548
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387548
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387548
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387548
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387548
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038754C
L_80387548:
    li 0, 0x1
L_8038754C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038755C:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80387584
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80387584
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80387584
    mr 31, 3
    .4byte 0x48000008 # b .L_80387588
L_80387584:
    mr 31, 28
L_80387588:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803875E8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803875D0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803875D0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803875D0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803875D0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803875D0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803875D4
L_803875D0:
    li 0, 0x1
L_803875D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038763C
L_803875E8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387628
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387628
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387628
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387628
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387628
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387628
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038762C
L_80387628:
    li 0, 0x1
L_8038762C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038763C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387660
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387660
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387660
    .4byte 0x48000008 # b .L_80387664
L_80387660:
    mr 3, 31
L_80387664:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80387688
    li 3, 0x1
    .4byte 0x48001614 # b .L_80388C98
L_80387688:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803876E8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803876D0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803876D0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803876D0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803876D0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803876D0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803876D4
L_803876D0:
    li 0, 0x1
L_803876D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038773C
L_803876E8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387728
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387728
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387728
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387728
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387728
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387728
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038772C
L_80387728:
    li 0, 0x1
L_8038772C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038773C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387760
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387760
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387760
    .4byte 0x48000008 # b .L_80387764
L_80387760:
    mr 3, 31
L_80387764:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x5
    .4byte 0x418205D4 # beq .L_80387D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803877E0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803877C8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803877C8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803877C8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803877C8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803877C8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803877CC
L_803877C8:
    li 0, 0x1
L_803877CC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387834
L_803877E0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387820
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387820
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387820
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387820
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387820
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387820
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387824
L_80387820:
    li 0, 0x1
L_80387824:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387834:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387858
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387858
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387858
    .4byte 0x48000008 # b .L_8038785C
L_80387858:
    mr 3, 31
L_8038785C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x418204DC # beq .L_80387D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803878D8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803878C0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803878C0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803878C0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803878C0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803878C0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803878C4
L_803878C0:
    li 0, 0x1
L_803878C4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038792C
L_803878D8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387918
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387918
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387918
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387918
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387918
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387918
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038791C
L_80387918:
    li 0, 0x1
L_8038791C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038792C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387950
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387950
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387950
    .4byte 0x48000008 # b .L_80387954
L_80387950:
    mr 3, 31
L_80387954:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x1
    .4byte 0x418203E4 # beq .L_80387D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803879D0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803879B8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803879B8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803879B8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803879B8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803879B8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803879BC
L_803879B8:
    li 0, 0x1
L_803879BC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387A24
L_803879D0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387A10
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387A10
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387A10
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387A10
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387A10
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387A10
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387A14
L_80387A10:
    li 0, 0x1
L_80387A14:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387A24:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387A48
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387A48
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387A48
    .4byte 0x48000008 # b .L_80387A4C
L_80387A48:
    mr 3, 31
L_80387A4C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x6
    .4byte 0x418202EC # beq .L_80387D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80387AC8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80387AB0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80387AB0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80387AB0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80387AB0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80387AB0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80387AB4
L_80387AB0:
    li 0, 0x1
L_80387AB4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387B1C
L_80387AC8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387B08
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387B08
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387B08
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387B08
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387B08
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387B08
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387B0C
L_80387B08:
    li 0, 0x1
L_80387B0C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387B1C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387B40
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387B40
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387B40
    .4byte 0x48000008 # b .L_80387B44
L_80387B40:
    mr 3, 31
L_80387B44:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x3
    .4byte 0x418201F4 # beq .L_80387D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80387BC0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80387BA8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80387BA8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80387BA8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80387BA8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80387BA8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80387BAC
L_80387BA8:
    li 0, 0x1
L_80387BAC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387C14
L_80387BC0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387C00
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387C00
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387C00
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387C00
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387C00
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387C00
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387C04
L_80387C00:
    li 0, 0x1
L_80387C04:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387C14:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387C38
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387C38
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387C38
    .4byte 0x48000008 # b .L_80387C3C
L_80387C38:
    mr 3, 31
L_80387C3C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x7
    .4byte 0x418200FC # beq .L_80387D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80387CB8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80387CA0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80387CA0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80387CA0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80387CA0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80387CA0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80387CA4
L_80387CA0:
    li 0, 0x1
L_80387CA4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387D0C
L_80387CB8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387CF8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387CF8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387CF8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387CF8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387CF8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387CF8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387CFC
L_80387CF8:
    li 0, 0x1
L_80387CFC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387D0C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387D30
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387D30
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387D30
    .4byte 0x48000008 # b .L_80387D34
L_80387D30:
    mr 3, 31
L_80387D34:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x4
    .4byte 0x40820F48 # bne .L_80388C94
L_80387D50:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 29, 31, 2
    add 3, 0, 29
    lwz 4, 0x114(3)
    lhz 3, 0x28(4)
    clrlwi. 0, 3, 31
    .4byte 0x4082087C # bne .L_803885E4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80387DCC
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80387DB4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80387DB4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80387DB4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80387DB4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80387DB4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80387DB8
L_80387DB4:
    li 0, 0x1
L_80387DB8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387E20
L_80387DCC:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387E0C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387E0C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387E0C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387E0C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387E0C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387E0C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387E10
L_80387E0C:
    li 0, 0x1
L_80387E10:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387E20:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80387E44
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80387E44
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80387E44
    .4byte 0x48000008 # b .L_80387E48
L_80387E44:
    mr 3, 28
L_80387E48:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 4, 4, 0
    lwz 4, 0x114(4)
    lhz 4, 0x28(4)
    extrwi. 0, 4, 1, 28
    .4byte 0x4082000C # bne .L_80387E6C
    rlwinm. 0, 4, 0, 24, 24
    .4byte 0x4182000C # beq .L_80387E74
L_80387E6C:
    li 3, 0x1
    .4byte 0x48000088 # b .L_80387EF8
L_80387E74:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80387E90
    li 4, 0x0
    bl fn_8023061C
    .4byte 0x4800006C # b .L_80387EF8
L_80387E90:
    addi 25, 1, 0x28
    li 27, 0x0
    mr 26, 25
    li 28, -0x1
L_80387EA0:
    stw 28, 0x0(26)
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80387EBC
    stw 27, 0x0(26)
L_80387EBC:
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFD8 # blt .L_80387EA0
    li 28, 0x0
L_80387ED0:
    lwz 3, 0x0(25)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80387EE4
    li 4, 0x0
    bl fn_80230224
L_80387EE4:
    addi 28, 28, 0x1
    addi 25, 25, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFE0 # blt .L_80387ED0
    li 3, 0x1
L_80387EF8:
    clrlwi. 0, 3, 24
    .4byte 0x41820D98 # beq .L_80388C94
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lwz 27, 0x20(3)
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 27
    li 6, 0x1
    bl fn_802D46D8
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 4, 0x114(3)
    lhz 3, 0x28(4)
    extrwi. 0, 3, 1, 28
    .4byte 0x4082000C # bne .L_80387F44
    rlwinm. 0, 3, 0, 24, 24
    .4byte 0x418202B8 # beq .L_803881F8
L_80387F44:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80387FA4
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80387F8C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80387F8C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80387F8C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80387F8C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80387F8C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80387F90
L_80387F8C:
    li 0, 0x1
L_80387F90:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80387FF8
L_80387FA4:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80387FE4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80387FE4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80387FE4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80387FE4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80387FE4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80387FE4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80387FE8
L_80387FE4:
    li 0, 0x1
L_80387FE8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80387FF8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038801C
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038801C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038801C
    .4byte 0x48000008 # b .L_80388020
L_8038801C:
    mr 3, 31
L_80388020:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x408201A8 # bne .L_803881E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038809C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388084
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388084
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388084
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388084
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388084
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388088
L_80388084:
    li 0, 0x1
L_80388088:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803880F0
L_8038809C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803880DC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803880DC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803880DC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803880DC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803880DC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803880DC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803880E0
L_803880DC:
    li 0, 0x1
L_803880E0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803880F0:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80388114
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80388114
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80388114
    .4byte 0x48000008 # b .L_80388118
L_80388114:
    mr 3, 31
L_80388118:
    li 8, 0x0
    addi 10, 1, 0x18
    mr 9, 8
    li 0, -0x1
    .4byte 0x48000034 # b .L_8038815C
L_8038812C:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 7, 9, 0xfc
    lwzx 6, 6, 7
    lwzx 4, 5, 7
    stw 6, 0x0(10)
    cmpw 4, 3
    .4byte 0x4082000C # bne .L_80388150
    stwx 0, 5, 7
    mr 30, 8
L_80388150:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 8, 8, 0x1
L_8038815C:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 4, 0xf8(6)
    cmpw 8, 4
    .4byte 0x4180FFC4 # blt .L_8038812C
    subi 0, 4, 0x1
    slwi 5, 30, 2
    addi 4, 1, 0x18
    stw 0, 0xf8(6)
    add 4, 4, 5
    .4byte 0x48000018 # b .L_80388198
L_80388184:
    lwzu 3, 0x4(4)
    addi 0, 5, 0xfc
    addi 30, 30, 0x1
    addi 5, 5, 0x4
    stwx 3, 6, 0
L_80388198:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 0, 0xf8(6)
    cmpw 30, 0
    .4byte 0x4180FFE0 # blt .L_80388184
    slwi 0, 0, 2
    li 4, -0x1
    add 3, 6, 0
    stw 4, 0xfc(3)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820014 # bne .L_803881E0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x29
    li 5, -0x1
    bl fn_80458880
L_803881E0:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    bl fn_80391678
    li 3, 0x1
    .4byte 0x48000AA4 # b .L_80388C98
L_803881F8:
    li 0, 0x1
    stb 0, 0x42(4)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388260
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388248
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388248
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388248
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388248
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388248
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038824C
L_80388248:
    li 0, 0x1
L_8038824C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803882B4
L_80388260:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803882A0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803882A0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803882A0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803882A0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803882A0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803882A0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803882A4
L_803882A0:
    li 0, 0x1
L_803882A4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803882B4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803882D8
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803882D8
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803882D8
    .4byte 0x48000008 # b .L_803882DC
L_803882D8:
    mr 3, 31
L_803882DC:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x6
    .4byte 0x418200FC # beq .L_803883F0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388358
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388340
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388340
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388340
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388340
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388340
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388344
L_80388340:
    li 0, 0x1
L_80388344:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803883AC
L_80388358:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388398
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388398
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388398
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388398
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388398
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388398
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038839C
L_80388398:
    li 0, 0x1
L_8038839C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803883AC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803883D0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803883D0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803883D0
    .4byte 0x48000008 # b .L_803883D4
L_803883D0:
    mr 3, 31
L_803883D4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x7
    .4byte 0x408200FC # bne .L_803884E8
L_803883F0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388450
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388438
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388438
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388438
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388438
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388438
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038843C
L_80388438:
    li 0, 0x1
L_8038843C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803884A4
L_80388450:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388490
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388490
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388490
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388490
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388490
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388490
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388494
L_80388490:
    li 0, 0x1
L_80388494:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803884A4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803884C8
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803884C8
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803884C8
    .4byte 0x48000008 # b .L_803884CC
L_803884C8:
    mr 3, 31
L_803884CC:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x8
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
    .4byte 0x480000F8 # b .L_803885DC
L_803884E8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388548
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388530
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388530
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388530
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388530
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388530
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388534
L_80388530:
    li 0, 0x1
L_80388534:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038859C
L_80388548:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388588
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388588
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388588
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388588
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388588
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388588
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038858C
L_80388588:
    li 0, 0x1
L_8038858C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038859C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803885C0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803885C0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803885C0
    .4byte 0x48000008 # b .L_803885C4
L_803885C0:
    mr 3, 31
L_803885C4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x5
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
L_803885DC:
    li 3, 0x0
    .4byte 0x480006B8 # b .L_80388C98
L_803885E4:
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x4082000C # bne .L_803885F4
    rlwinm. 0, 3, 0, 24, 24
    .4byte 0x418202B8 # beq .L_803888A8
L_803885F4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388654
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038863C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038863C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038863C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038863C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038863C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388640
L_8038863C:
    li 0, 0x1
L_80388640:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803886A8
L_80388654:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388694
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388694
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388694
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388694
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388694
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388694
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388698
L_80388694:
    li 0, 0x1
L_80388698:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803886A8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803886CC
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803886CC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803886CC
    .4byte 0x48000008 # b .L_803886D0
L_803886CC:
    mr 3, 31
L_803886D0:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x408201A8 # bne .L_80388890
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038874C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388734
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388734
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388734
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388734
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388734
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388738
L_80388734:
    li 0, 0x1
L_80388738:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803887A0
L_8038874C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038878C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038878C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038878C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038878C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038878C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038878C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388790
L_8038878C:
    li 0, 0x1
L_80388790:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803887A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803887C4
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803887C4
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803887C4
    .4byte 0x48000008 # b .L_803887C8
L_803887C4:
    mr 3, 31
L_803887C8:
    li 8, 0x0
    addi 10, 1, 0x8
    mr 9, 8
    li 0, -0x1
    .4byte 0x48000034 # b .L_8038880C
L_803887DC:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 7, 9, 0xfc
    lwzx 6, 6, 7
    lwzx 4, 5, 7
    stw 6, 0x0(10)
    cmpw 4, 3
    .4byte 0x4082000C # bne .L_80388800
    stwx 0, 5, 7
    mr 30, 8
L_80388800:
    addi 9, 9, 0x4
    addi 10, 10, 0x4
    addi 8, 8, 0x1
L_8038880C:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 4, 0xf8(6)
    cmpw 8, 4
    .4byte 0x4180FFC4 # blt .L_803887DC
    subi 0, 4, 0x1
    slwi 5, 30, 2
    addi 4, 1, 0x8
    stw 0, 0xf8(6)
    add 4, 4, 5
    .4byte 0x48000018 # b .L_80388848
L_80388834:
    lwzu 3, 0x4(4)
    addi 0, 5, 0xfc
    addi 30, 30, 0x1
    addi 5, 5, 0x4
    stwx 3, 6, 0
L_80388848:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 0, 0xf8(6)
    cmpw 30, 0
    .4byte 0x4180FFE0 # blt .L_80388834
    slwi 0, 0, 2
    li 4, -0x1
    add 3, 6, 0
    stw 4, 0xfc(3)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820014 # bne .L_80388890
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x29
    li 5, -0x1
    bl fn_80458880
L_80388890:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    bl fn_80391678
    li 3, 0x1
    .4byte 0x480003F4 # b .L_80388C98
L_803888A8:
    li 0, 0x1
    stb 0, 0x42(4)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388910
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803888F8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803888F8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803888F8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803888F8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803888F8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803888FC
L_803888F8:
    li 0, 0x1
L_803888FC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80388964
L_80388910:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388950
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388950
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388950
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388950
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388950
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388950
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388954
L_80388950:
    li 0, 0x1
L_80388954:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80388964:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80388988
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80388988
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80388988
    .4byte 0x48000008 # b .L_8038898C
L_80388988:
    mr 3, 31
L_8038898C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x6
    .4byte 0x418200FC # beq .L_80388AA0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388A08
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803889F0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803889F0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803889F0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803889F0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803889F0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803889F4
L_803889F0:
    li 0, 0x1
L_803889F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80388A5C
L_80388A08:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388A48
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388A48
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388A48
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388A48
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388A48
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388A48
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388A4C
L_80388A48:
    li 0, 0x1
L_80388A4C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80388A5C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80388A80
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80388A80
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80388A80
    .4byte 0x48000008 # b .L_80388A84
L_80388A80:
    mr 3, 31
L_80388A84:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x7
    .4byte 0x408200FC # bne .L_80388B98
L_80388AA0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388B00
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388AE8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388AE8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388AE8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388AE8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388AE8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388AEC
L_80388AE8:
    li 0, 0x1
L_80388AEC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80388B54
L_80388B00:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388B40
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388B40
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388B40
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388B40
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388B40
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388B40
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388B44
L_80388B40:
    li 0, 0x1
L_80388B44:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80388B54:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80388B78
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80388B78
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80388B78
    .4byte 0x48000008 # b .L_80388B7C
L_80388B78:
    mr 3, 31
L_80388B7C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x8
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
    .4byte 0x480000F8 # b .L_80388C8C
L_80388B98:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388BF8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388BE0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388BE0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388BE0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388BE0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388BE0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388BE4
L_80388BE0:
    li 0, 0x1
L_80388BE4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80388C4C
L_80388BF8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388C38
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388C38
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388C38
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388C38
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388C38
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388C38
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388C3C
L_80388C38:
    li 0, 0x1
L_80388C3C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80388C4C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80388C70
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80388C70
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80388C70
    .4byte 0x48000008 # b .L_80388C74
L_80388C70:
    mr 3, 31
L_80388C74:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x5
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
L_80388C8C:
    li 3, 0x0
    .4byte 0x48000008 # b .L_80388C98
L_80388C94:
    li 3, 0x0
L_80388C98:
    lmw 25, 0x44(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80388CAC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388D2C
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388D14
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388D14
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388D14
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388D14
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388D14
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388D18
L_80388D14:
    li 0, 0x1
L_80388D18:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80388D80
L_80388D2C:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388D6C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388D6C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388D6C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388D6C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388D6C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388D6C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388D70
L_80388D6C:
    li 0, 0x1
L_80388D70:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80388D80:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80388DA8
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80388DA8
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80388DA8
    mr 29, 3
    .4byte 0x48000008 # b .L_80388DAC
L_80388DA8:
    mr 29, 30
L_80388DAC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388E0C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388DF4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388DF4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388DF4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388DF4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388DF4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388DF8
L_80388DF4:
    li 0, 0x1
L_80388DF8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80388E60
L_80388E0C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388E4C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388E4C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388E4C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388E4C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388E4C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388E4C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388E50
L_80388E4C:
    li 0, 0x1
L_80388E50:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80388E60:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80388E84
    mr 3, 29
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80388E84
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80388E84
    .4byte 0x48000008 # b .L_80388E88
L_80388E84:
    mr 3, 29
L_80388E88:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80388EAC
    li 3, 0x1
    .4byte 0x48000028 # b .L_80388ED0
L_80388EAC:
    mr 3, 30
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80388ECC
    mr 3, 30
    mr 4, 31
    bl fn_80384C58
    .4byte 0x48000008 # b .L_80388ED0
L_80388ECC:
    li 3, 0x0
L_80388ED0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80388EEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80388F64
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80388F4C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80388F4C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80388F4C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80388F4C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80388F4C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80388F50
L_80388F4C:
    li 0, 0x1
L_80388F50:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80388FB8
L_80388F64:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80388FA4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80388FA4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80388FA4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80388FA4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80388FA4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80388FA4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80388FA8
L_80388FA4:
    li 0, 0x1
L_80388FA8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80388FB8:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80388FE0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80388FE0
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80388FE0
    mr 30, 3
    .4byte 0x48000008 # b .L_80388FE4
L_80388FE0:
    mr 30, 31
L_80388FE4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389044
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038902C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038902C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038902C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038902C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038902C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389030
L_8038902C:
    li 0, 0x1
L_80389030:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80389098
L_80389044:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389084
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389084
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389084
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389084
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389084
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389084
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80389088
L_80389084:
    li 0, 0x1
L_80389088:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80389098:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803890BC
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803890BC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803890BC
    .4byte 0x48000008 # b .L_803890C0
L_803890BC:
    mr 3, 30
L_803890C0:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_803890E4
    li 3, 0x1
    .4byte 0x48000024 # b .L_80389104
L_803890E4:
    mr 3, 31
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80389100
    mr 3, 31
    bl fn_80385960
    .4byte 0x48000008 # b .L_80389104
L_80389100:
    li 3, 0x0
L_80389104:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8038911C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389198
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389180
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389180
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389180
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389180
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389180
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389184
L_80389180:
    li 0, 0x1
L_80389184:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803891EC
L_80389198:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803891D8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803891D8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803891D8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803891D8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803891D8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803891D8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803891DC
L_803891D8:
    li 0, 0x1
L_803891DC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803891EC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80389210
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80389210
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80389210
    .4byte 0x48000008 # b .L_80389214
L_80389210:
    mr 3, 30
L_80389214:
    lis 4, 0x2
    subi 0, 4, 0x7961
    cmpw 31, 0
    .4byte 0x40810008 # ble .L_80389228
    mr 31, 0
L_80389228:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    stw 31, 0x38(3)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80389254:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803892D0
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803892B8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803892B8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803892B8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803892B8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803892B8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803892BC
L_803892B8:
    li 0, 0x1
L_803892BC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80389324
L_803892D0:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389310
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389310
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389310
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389310
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389310
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389310
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80389314
L_80389310:
    li 0, 0x1
L_80389314:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80389324:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80389348
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80389348
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80389348
    .4byte 0x48000008 # b .L_8038934C
L_80389348:
    mr 3, 30
L_8038934C:
    lis 4, 0x2
    subi 0, 4, 0x7961
    cmpw 31, 0
    .4byte 0x40810008 # ble .L_80389360
    mr 31, 0
L_80389360:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    stw 31, 0x34(3)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8038938C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389408
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_803893F0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_803893F0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_803893F0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_803893F0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_803893F0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_803893F4
L_803893F0:
    li 0, 0x1
L_803893F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038945C
L_80389408:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389448
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389448
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389448
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389448
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389448
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389448
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038944C
L_80389448:
    li 0, 0x1
L_8038944C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038945C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80389480
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80389480
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80389480
    .4byte 0x48000008 # b .L_80389484
L_80389480:
    mr 3, 30
L_80389484:
    cmpwi 31, 0x270f
    .4byte 0x40810008 # ble .L_80389490
    li 31, 0x270f
L_80389490:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    sth 31, 0x3e(3)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803894BC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389538
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389520
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389520
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389520
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389520
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389520
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389524
L_80389520:
    li 0, 0x1
L_80389524:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038958C
L_80389538:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389578
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389578
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389578
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389578
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389578
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389578
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038957C
L_80389578:
    li 0, 0x1
L_8038957C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038958C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803895B0
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803895B0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803895B0
    .4byte 0x48000008 # b .L_803895B4
L_803895B0:
    mr 3, 30
L_803895B4:
    cmpwi 31, 0x9
    .4byte 0x40810008 # ble .L_803895C0
    li 31, 0x9
L_803895C0:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    sth 31, 0x3c(3)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803895EC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 26, 4
    mr 28, 5
    mr 29, 6
    mr 30, 7
    mr 31, 26
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389670
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389658
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389658
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389658
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389658
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389658
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038965C
L_80389658:
    li 0, 0x1
L_8038965C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803896C4
L_80389670:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803896B0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803896B0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803896B0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803896B0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803896B0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803896B0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803896B4
L_803896B0:
    li 0, 0x1
L_803896B4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803896C4:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_803896EC
    mr 3, 26
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_803896EC
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_803896EC
    mr 27, 3
    .4byte 0x48000008 # b .L_803896F0
L_803896EC:
    mr 27, 26
L_803896F0:
    li 26, 0x0
L_803896F4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389754
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038973C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038973C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038973C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038973C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038973C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389740
L_8038973C:
    li 0, 0x1
L_80389740:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_803897A8
L_80389754:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389794
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389794
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389794
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389794
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389794
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389794
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80389798
L_80389794:
    li 0, 0x1
L_80389798:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803897A8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_803897CC
    mr 3, 26
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_803897CC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_803897CC
    .4byte 0x48000008 # b .L_803897D0
L_803897CC:
    mr 3, 26
L_803897D0:
    slwi 3, 3, 2
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 0, 3, 0x114
    lwzx 3, 4, 0
    lbz 0, 0x24(3)
    cmplwi 0, 0x9
    .4byte 0x4082015C # bne .L_80389944
    clrlwi. 0, 30, 24
    .4byte 0x4182004C # beq .L_8038983C
    cmpw 26, 27
    .4byte 0x40820014 # bne .L_8038980C
    mr 3, 31
    mr 4, 28
    bl fn_8022FB1C
    .4byte 0x48000034 # b .L_8038983C
L_8038980C:
    mr 3, 26
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820018 # bne .L_80389830
    mr 3, 26
    bl fn_8022EA0C
    mr 4, 28
    bl fn_8022FB1C
    .4byte 0x48000010 # b .L_8038983C
L_80389830:
    mr 3, 26
    mr 4, 28
    bl fn_8022FB1C
L_8038983C:
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_80389850
    mr 3, 26
    li 4, 0x0
    bl fn_8023061C
L_80389850:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803898B0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389898
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389898
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389898
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389898
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389898
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038989C
L_80389898:
    li 0, 0x1
L_8038989C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80389904
L_803898B0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_803898F0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_803898F0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_803898F0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_803898F0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_803898F0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_803898F0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_803898F4
L_803898F0:
    li 0, 0x1
L_803898F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80389904:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80389928
    mr 3, 26
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80389928
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80389928
    .4byte 0x48000008 # b .L_8038992C
L_80389928:
    mr 3, 26
L_8038992C:
    slwi 3, 3, 2
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 0, 3, 0x114
    li 5, 0x0
    lwzx 3, 4, 0
    stb 5, 0x24(3)
L_80389944:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FDA8 # blt .L_803896F4
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80389964:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 26, 4
    mr 27, 5
    addi 31, 1, 0x8
    rlwinm 30, 6, 0, 29, 29
    rlwinm 29, 6, 0, 30, 30
    li 28, 0x0
L_8038998C:
    li 0, 0x0
    cmpw 28, 26
    stb 0, 0x0(31)
    .4byte 0x418201F0 # beq .L_80389B88
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 28
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x418201D4 # beq .L_80389B88
    mr 3, 28
    bl fn_8022FA80
    clrlwi. 0, 3, 24
    .4byte 0x408201CC # bne .L_80389B90
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389A28
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389A10
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389A10
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389A10
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389A10
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389A10
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389A14
L_80389A10:
    li 0, 0x1
L_80389A14:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80389A7C
L_80389A28:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389A68
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389A68
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389A68
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389A68
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389A68
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389A68
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80389A6C
L_80389A68:
    li 0, 0x1
L_80389A6C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80389A7C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80389AA0
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80389AA0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80389AA0
    .4byte 0x48000008 # b .L_80389AA4
L_80389AA0:
    mr 3, 28
L_80389AA4:
    slwi 3, 3, 2
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 0, 3, 0x114
    lwzx 3, 4, 0
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x408200D4 # bne .L_80389B90
    cmpwi 30, 0x0
    .4byte 0x40820014 # bne .L_80389AD8
    cmpwi 29, 0x0
    .4byte 0x4082000C # bne .L_80389AD8
    cmplwi 27, 0x265
    .4byte 0x4082005C # bne .L_80389B30
L_80389AD8:
    mr 3, 28
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_80389B90
    li 0, 0x1
    li 24, 0x0
    stb 0, 0x0(31)
    li 25, 0x0
L_80389AF8:
    mr 3, 28
    mr 4, 24
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80389B20
    mr 3, 24
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80389B20
    stb 25, 0x0(31)
L_80389B20:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FFD0 # blt .L_80389AF8
    .4byte 0x48000064 # b .L_80389B90
L_80389B30:
    mr 3, 28
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80389B90
    li 0, 0x1
    li 24, 0x0
    stb 0, 0x0(31)
    li 25, 0x0
L_80389B50:
    mr 3, 28
    mr 4, 24
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80389B78
    mr 3, 24
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80389B78
    stb 25, 0x0(31)
L_80389B78:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FFD0 # blt .L_80389B50
    .4byte 0x4800000C # b .L_80389B90
L_80389B88:
    li 0, 0x2
    stb 0, 0x0(31)
L_80389B90:
    addi 28, 28, 0x1
    addi 31, 31, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FDF0 # blt .L_8038998C
    lbz 0, 0x8(1)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_80389BD8
    lbz 0, 0x9(1)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80389BD8
    lbz 0, 0xa(1)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80389BD8
    lbz 0, 0xb(1)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80389BD8
    li 3, 0x1
    .4byte 0x48000008 # b .L_80389BDC
L_80389BD8:
    li 3, 0x0
L_80389BDC:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80389BF0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    mr 29, 4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389C70
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389C58
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389C58
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389C58
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389C58
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389C58
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389C5C
L_80389C58:
    li 0, 0x1
L_80389C5C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80389CC4
L_80389C70:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389CB0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389CB0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389CB0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389CB0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389CB0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389CB0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80389CB4
L_80389CB0:
    li 0, 0x1
L_80389CB4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80389CC4:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80389CEC
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80389CEC
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_80389CEC
    mr 31, 3
    .4byte 0x48000008 # b .L_80389CF0
L_80389CEC:
    mr 31, 30
L_80389CF0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389D50
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389D38
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389D38
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389D38
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389D38
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389D38
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389D3C
L_80389D38:
    li 0, 0x1
L_80389D3C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80389DA4
L_80389D50:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389D90
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389D90
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389D90
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389D90
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389D90
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389D90
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80389D94
L_80389D90:
    li 0, 0x1
L_80389D94:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80389DA4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80389DC8
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80389DC8
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80389DC8
    .4byte 0x48000008 # b .L_80389DCC
L_80389DC8:
    mr 3, 31
L_80389DCC:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x40820174 # bne .L_80389F58
    mr 3, 31
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820164 # bne .L_80389F58
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 30, 31, 2
    mr 4, 29
    li 5, 0x0
    add 3, 0, 30
    lwz 3, 0x114(3)
    bl fn_80390E40
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389E74
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389E5C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389E5C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389E5C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389E5C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389E5C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389E60
L_80389E5C:
    li 0, 0x1
L_80389E60:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_80389EC8
L_80389E74:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80389EB4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80389EB4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80389EB4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80389EB4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80389EB4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80389EB4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_80389EB8
L_80389EB4:
    li 0, 0x1
L_80389EB8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80389EC8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_80389EEC
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80389EEC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_80389EEC
    .4byte 0x48000008 # b .L_80389EF0
L_80389EEC:
    mr 3, 31
L_80389EF0:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x1
    li 3, 0x1
    add 4, 4, 0
    lwz 4, 0x114(4)
    stb 5, 0x24(4)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 4, 0, 30
    lwz 4, 0x114(4)
    lhz 0, 0x28(4)
    ori 0, 0, 0x1000
    sth 0, 0x28(4)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 4, 0, 30
    lwz 4, 0x114(4)
    lhz 0, 0x28(4)
    ori 0, 0, 0x80
    sth 0, 0x28(4)
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 4, 0, 30
    lwz 4, 0x114(4)
    lhz 0, 0x28(4)
    ori 0, 0, 0x20
    sth 0, 0x28(4)
    .4byte 0x48000008 # b .L_80389F5C
L_80389F58:
    li 3, 0x0
L_80389F5C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80389F78:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 4
    mr 26, 6
    mr 27, 7
    mr 28, 8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80389FF8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80389FE0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80389FE0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80389FE0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80389FE0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80389FE0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80389FE4
L_80389FE0:
    li 0, 0x1
L_80389FE4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038A04C
L_80389FF8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038A038
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038A038
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038A038
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038A038
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038A038
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038A038
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038A03C
L_8038A038:
    li 0, 0x1
L_8038A03C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038A04C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038A070
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038A070
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038A070
    .4byte 0x48000008 # b .L_8038A074
L_8038A070:
    mr 3, 31
L_8038A074:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    addi 4, 4, 0x114
    lwzx 3, 4, 0
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x40820388 # bne .L_8038A414
    clrlwi 30, 28, 16
    andi. 0, 30, 0x11f
    .4byte 0x4182037C # beq .L_8038A414
    rlwinm. 28, 30, 0, 25, 25
    .4byte 0x4182001C # beq .L_8038A0BC
    slwi 0, 31, 2
    lwzx 3, 4, 0
    lhz 0, 0x28(3)
    ori 0, 0, 0x40
    sth 0, 0x28(3)
    .4byte 0x48000040 # b .L_8038A0F8
L_8038A0BC:
    rlwinm. 0, 30, 0, 22, 22
    .4byte 0x4182001C # beq .L_8038A0DC
    slwi 0, 31, 2
    lwzx 3, 4, 0
    lhz 0, 0x28(3)
    ori 0, 0, 0x200
    sth 0, 0x28(3)
    .4byte 0x48000020 # b .L_8038A0F8
L_8038A0DC:
    rlwinm. 0, 30, 0, 21, 21
    .4byte 0x41820018 # beq .L_8038A0F8
    slwi 0, 31, 2
    lwzx 3, 4, 0
    lhz 0, 0x28(3)
    ori 0, 0, 0x400
    sth 0, 0x28(3)
L_8038A0F8:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 29, 31, 2
    mr 4, 26
    li 5, 0x0
    add 3, 0, 29
    lwz 3, 0x114(3)
    bl fn_80390E40
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 0, -0x1
    psq_l 1, 0x0(27), 0, 0
    add 3, 3, 29
    lfs 0, 0x8(27)
    lwz 3, 0x114(3)
    psq_st 1, 0x8(1), 0, 0
    psq_st 1, 0x50(3), 0, 0
    stfs 0, 0x58(3)
    stw 0, 0x30(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stfs 0, 0x10(1)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038A1A0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038A188
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038A188
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038A188
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038A188
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038A188
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038A18C
L_8038A188:
    li 0, 0x1
L_8038A18C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038A1F4
L_8038A1A0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038A1E0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038A1E0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038A1E0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038A1E0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038A1E0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038A1E0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038A1E4
L_8038A1E0:
    li 0, 0x1
L_8038A1E4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038A1F4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038A218
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038A218
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038A218
    .4byte 0x48000008 # b .L_8038A21C
L_8038A218:
    mr 3, 31
L_8038A21C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x6
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038A294
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038A27C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038A27C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038A27C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038A27C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038A27C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038A280
L_8038A27C:
    li 0, 0x1
L_8038A280:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038A2E8
L_8038A294:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038A2D4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038A2D4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038A2D4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038A2D4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038A2D4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038A2D4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038A2D8
L_8038A2D4:
    li 0, 0x1
L_8038A2D8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038A2E8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038A30C
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038A30C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038A30C
    .4byte 0x48000008 # b .L_8038A310
L_8038A30C:
    mr 3, 31
L_8038A310:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    rlwinm. 0, 30, 0, 30, 30
    lwz 0, 0xf8(4)
    slwi 0, 0, 2
    add 4, 4, 0
    stw 3, 0xfc(4)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 3, 0xf8(4)
    addi 0, 3, 0x1
    stw 0, 0xf8(4)
    .4byte 0x41820020 # beq .L_8038A358
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x80
    sth 0, 0x28(3)
    .4byte 0x4800001C # b .L_8038A370
L_8038A358:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x1
    sth 0, 0x28(3)
L_8038A370:
    rlwinm. 0, 30, 0, 28, 28
    .4byte 0x41820020 # beq .L_8038A394
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x10
    sth 0, 0x28(3)
    .4byte 0x48000024 # b .L_8038A3B4
L_8038A394:
    rlwinm. 0, 30, 0, 27, 27
    .4byte 0x4182001C # beq .L_8038A3B4
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x20
    sth 0, 0x28(3)
L_8038A3B4:
    rlwinm. 0, 30, 0, 23, 23
    .4byte 0x4182001C # beq .L_8038A3D4
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x100
    sth 0, 0x28(3)
L_8038A3D4:
    rlwinm. 0, 30, 0, 17, 17
    .4byte 0x4182001C # beq .L_8038A3F4
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x2000
    sth 0, 0x28(3)
L_8038A3F4:
    cmpwi 28, 0x0
    .4byte 0x40820014 # bne .L_8038A40C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x28
    li 5, -0x1
    bl fn_80458880
L_8038A40C:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8038A418
L_8038A414:
    li 3, 0x0
L_8038A418:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8038A42C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 24, 0x20(1)
    mr 31, 4
    mr 29, 5
    mr 25, 6
    mr 26, 7
    mr 27, 8
    mr 28, 9
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038A4B4
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038A49C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038A49C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038A49C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038A49C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038A49C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038A4A0
L_8038A49C:
    li 0, 0x1
L_8038A4A0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038A508
L_8038A4B4:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038A4F4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038A4F4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038A4F4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038A4F4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038A4F4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038A4F4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038A4F8
L_8038A4F4:
    li 0, 0x1
L_8038A4F8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038A508:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038A52C
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038A52C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038A52C
    .4byte 0x48000008 # b .L_8038A530
L_8038A52C:
    mr 3, 31
L_8038A530:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x40820424 # bne .L_8038A96C
    mr 3, 31
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_8038A578
    clrlwi 0, 28, 16
    andi. 0, 0, 0x19f
    .4byte 0x418203F8 # beq .L_8038A96C
L_8038A578:
    rlwinm. 0, 28, 0, 19, 19
    clrlwi 30, 28, 16
    li 24, 0x0
    .4byte 0x4182003C # beq .L_8038A5C0
    mr 3, 29
    mr 4, 28
    bl fn_8037EC98
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8038A5F8
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 31, 2
    li 24, 0x1
    add 3, 3, 0
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x800
    sth 0, 0x28(3)
    .4byte 0x4800003C # b .L_8038A5F8
L_8038A5C0:
    mr 3, 29
    mr 4, 26
    bl fn_8022FCF0
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8038A5F8
    mr 3, 29
    mr 4, 28
    bl fn_8037EC98
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8038A5F8
    mr 3, 29
    mr 4, 26
    bl fn_8022FC54
    li 24, 0x1
L_8038A5F8:
    clrlwi. 0, 24, 24
    .4byte 0x41820370 # beq .L_8038A96C
    rlwinm. 28, 30, 0, 25, 25
    .4byte 0x41820024 # beq .L_8038A628
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x40
    sth 0, 0x28(3)
    .4byte 0x48000050 # b .L_8038A674
L_8038A628:
    rlwinm. 0, 30, 0, 22, 22
    .4byte 0x41820024 # beq .L_8038A650
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x200
    sth 0, 0x28(3)
    .4byte 0x48000028 # b .L_8038A674
L_8038A650:
    rlwinm. 0, 30, 0, 21, 21
    .4byte 0x41820020 # beq .L_8038A674
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x400
    sth 0, 0x28(3)
L_8038A674:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 29, 31, 2
    mr 4, 25
    li 5, 0x0
    add 3, 0, 29
    lwz 3, 0x114(3)
    bl fn_80390E40
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    psq_l 1, 0x0(27), 0, 0
    add 3, 0, 29
    lfs 0, 0x8(27)
    lwz 3, 0x114(3)
    psq_st 1, 0x8(1), 0, 0
    psq_st 1, 0x50(3), 0, 0
    stfs 0, 0x58(3)
    stw 26, 0x30(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stfs 0, 0x10(1)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038A718
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038A700
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038A700
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038A700
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038A700
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038A700
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038A704
L_8038A700:
    li 0, 0x1
L_8038A704:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038A76C
L_8038A718:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038A758
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038A758
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038A758
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038A758
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038A758
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038A758
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038A75C
L_8038A758:
    li 0, 0x1
L_8038A75C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038A76C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038A790
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038A790
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038A790
    .4byte 0x48000008 # b .L_8038A794
L_8038A790:
    mr 3, 31
L_8038A794:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x6
    add 3, 4, 0
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038A80C
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038A7F4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038A7F4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038A7F4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038A7F4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038A7F4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038A7F8
L_8038A7F4:
    li 0, 0x1
L_8038A7F8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038A860
L_8038A80C:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038A84C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038A84C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038A84C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038A84C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038A84C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038A84C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038A850
L_8038A84C:
    li 0, 0x1
L_8038A850:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038A860:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038A884
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038A884
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038A884
    .4byte 0x48000008 # b .L_8038A888
L_8038A884:
    mr 3, 31
L_8038A888:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    rlwinm. 0, 30, 0, 30, 30
    lwz 0, 0xf8(4)
    slwi 0, 0, 2
    add 4, 4, 0
    stw 3, 0xfc(4)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 3, 0xf8(4)
    addi 0, 3, 0x1
    stw 0, 0xf8(4)
    .4byte 0x4182001C # beq .L_8038A8CC
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x80
    sth 0, 0x28(3)
L_8038A8CC:
    rlwinm. 0, 30, 0, 24, 24
    .4byte 0x4182001C # beq .L_8038A8EC
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x4
    sth 0, 0x28(3)
L_8038A8EC:
    rlwinm. 0, 30, 0, 29, 29
    .4byte 0x4182001C # beq .L_8038A90C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x8
    sth 0, 0x28(3)
L_8038A90C:
    rlwinm. 0, 30, 0, 23, 23
    .4byte 0x4182001C # beq .L_8038A92C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x100
    sth 0, 0x28(3)
L_8038A92C:
    rlwinm. 0, 30, 0, 17, 17
    .4byte 0x4182001C # beq .L_8038A94C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x2000
    sth 0, 0x28(3)
L_8038A94C:
    cmpwi 28, 0x0
    .4byte 0x40820014 # bne .L_8038A964
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x28
    li 5, -0x1
    bl fn_80458880
L_8038A964:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8038A970
L_8038A96C:
    li 3, 0x0
L_8038A970:
    lmw 24, 0x20(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8038A984:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 26, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    mr 30, 8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038AA08
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038A9F0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038A9F0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038A9F0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038A9F0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038A9F0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038A9F4
L_8038A9F0:
    li 0, 0x1
L_8038A9F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038AA5C
L_8038AA08:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038AA48
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038AA48
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038AA48
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038AA48
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038AA48
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038AA48
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038AA4C
L_8038AA48:
    li 0, 0x1
L_8038AA4C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038AA5C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038AA80
    mr 3, 26
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038AA80
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038AA80
    .4byte 0x48000008 # b .L_8038AA84
L_8038AA80:
    mr 3, 26
L_8038AA84:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x40820270 # bne .L_8038AD0C
    mr 3, 26
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820260 # bne .L_8038AD0C
    mr 3, 26
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x41820250 # beq .L_8038AD0C
    mr 3, 26
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_8038AAEC
    clrlwi 0, 30, 16
    andi. 0, 0, 0x19f
    .4byte 0x41820224 # beq .L_8038AD0C
L_8038AAEC:
    rlwinm. 0, 30, 0, 19, 19
    clrlwi 31, 30, 16
    li 25, 0x0
    .4byte 0x4182003C # beq .L_8038AB34
    mr 3, 27
    mr 4, 30
    bl fn_8037EC98
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8038AB6C
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 26, 2
    li 25, 0x1
    add 3, 3, 0
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x800
    sth 0, 0x28(3)
    .4byte 0x4800003C # b .L_8038AB6C
L_8038AB34:
    mr 3, 27
    mr 4, 29
    bl fn_8022FCF0
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8038AB6C
    mr 3, 27
    mr 4, 30
    bl fn_8037EC98
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8038AB6C
    mr 3, 27
    mr 4, 29
    bl fn_8022FC54
    li 25, 0x1
L_8038AB6C:
    clrlwi. 0, 25, 24
    .4byte 0x4182019C # beq .L_8038AD0C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 30, 26, 2
    mr 4, 28
    li 5, 0x0
    add 3, 0, 30
    lwz 3, 0x114(3)
    bl fn_80390E40
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038ABF0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038ABD8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038ABD8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038ABD8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038ABD8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038ABD8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038ABDC
L_8038ABD8:
    li 0, 0x1
L_8038ABDC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038AC44
L_8038ABF0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038AC30
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038AC30
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038AC30
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038AC30
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038AC30
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038AC30
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038AC34
L_8038AC30:
    li 0, 0x1
L_8038AC34:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038AC44:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038AC68
    mr 3, 26
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038AC68
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038AC68
    .4byte 0x48000008 # b .L_8038AC6C
L_8038AC68:
    mr 3, 26
L_8038AC6C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 3, 3, 2
    rlwinm. 0, 31, 0, 30, 30
    li 5, 0x1
    add 3, 4, 3
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
    .4byte 0x4182001C # beq .L_8038ACA4
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 30
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x80
    sth 0, 0x28(3)
L_8038ACA4:
    rlwinm. 0, 31, 0, 24, 24
    .4byte 0x4182001C # beq .L_8038ACC4
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 30
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x4
    sth 0, 0x28(3)
L_8038ACC4:
    rlwinm. 0, 31, 0, 29, 29
    .4byte 0x4182001C # beq .L_8038ACE4
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 30
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x8
    sth 0, 0x28(3)
L_8038ACE4:
    rlwinm. 0, 31, 0, 23, 23
    .4byte 0x4182001C # beq .L_8038AD04
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 30
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x100
    sth 0, 0x28(3)
L_8038AD04:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8038AD10
L_8038AD0C:
    li 3, 0x0
L_8038AD10:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8038AD24:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 23, 0x5c(1)
    mr 27, 3
    mr 29, 4
    mr 30, 5
    mr 24, 6
    mr 26, 7
    mr 28, 8
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(9)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038ADAC
    lwz 3, 0x4c(9)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038AD94
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038AD94
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038AD94
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038AD94
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038AD94
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038AD98
L_8038AD94:
    li 0, 0x1
L_8038AD98:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038AE00
L_8038ADAC:
    lwz 3, 0x4c(9)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038ADEC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038ADEC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038ADEC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038ADEC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038ADEC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038ADEC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038ADF0
L_8038ADEC:
    li 0, 0x1
L_8038ADF0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038AE00:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038AE28
    mr 3, 27
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038AE28
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038AE28
    mr 31, 3
    .4byte 0x48000008 # b .L_8038AE2C
L_8038AE28:
    mr 31, 27
L_8038AE2C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8038AE4C
    rlwinm. 0, 28, 0, 18, 18
    .4byte 0x4082000C # bne .L_8038AE4C
    li 3, 0x0
    .4byte 0x48000A4C # b .L_8038B894
L_8038AE4C:
    mr 3, 31
    mr 4, 29
    bl fn_80383EB0
    mr 29, 3
    cmplwi 29, 0xea
    .4byte 0x4182000C # beq .L_8038AE6C
    cmplwi 29, 0xeb
    .4byte 0x4082002C # bne .L_8038AE94
L_8038AE6C:
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 29
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820164 # bne .L_8038AFEC
    li 3, 0x0
    .4byte 0x48000A04 # b .L_8038B894
L_8038AE94:
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 29
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082013C # bne .L_8038AFEC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038AF14
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038AEFC
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038AEFC
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038AEFC
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038AEFC
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038AEFC
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038AF00
L_8038AEFC:
    li 0, 0x1
L_8038AF00:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038AF68
L_8038AF14:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038AF54
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038AF54
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038AF54
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038AF54
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038AF54
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038AF54
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038AF58
L_8038AF54:
    li 0, 0x1
L_8038AF58:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038AF68:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038AF8C
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038AF8C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038AF8C
    .4byte 0x48000008 # b .L_8038AF90
L_8038AF8C:
    mr 3, 31
L_8038AF90:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    slwi 0, 29, 3
    mr 4, 29
    lwz 5, 0x8(5)
    addi 7, 5, 0x20
    add 5, 7, 0
    lwz 6, 0x4(7)
    lwz 0, 0x10(5)
    add 5, 6, 0
    addi 5, 5, 0x8
    add 5, 7, 5
    lbz 0, 0x0(5)
    cmpwi 0, 0x1a
    .4byte 0x40820020 # bne .L_8038AFE4
    lbz 0, 0x2(5)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8038AFE4
    lbz 0, 0x4(5)
    cmpwi 0, 0x5
    .4byte 0x40820008 # bne .L_8038AFE4
    lwz 4, 0x5(5)
L_8038AFE4:
    bl fn_80383EB0
    mr 29, 3
L_8038AFEC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8038B008
    rlwinm. 0, 28, 0, 25, 25
    clrlwi 25, 28, 16
    .4byte 0x41820268 # beq .L_8038B26C
L_8038B008:
    cmpwi 24, 0x8
    .4byte 0x40800038 # bge .L_8038B044
    lfs 0, 0x8(26)
    addi 8, 1, 0x40
    psq_l 1, 0x0(26), 0, 0
    mr 4, 31
    stfs 0, 0x48(1)
    mr 5, 27
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 29
    psq_st 1, 0x0(8), 0, 0
    mr 7, 30
    mr 9, 28
    bl fn_8038A42C
    .4byte 0x48000854 # b .L_8038B894
L_8038B044:
    li 3, 0x0
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_8038B0B0
    .4byte 0xC0220158 # lfs f1, lbl_805430F8@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC002015C # lfs f0, lbl_805430FC@sda21(r0)
    addi 6, 1, 0x4c
    stfs 1, 0x8(1)
    li 5, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C4A0
    lfs 0, 0x54(1)
    addi 8, 1, 0x34
    psq_l 1, 0x4c(1), 0, 0
    mr 4, 31
    stfs 0, 0x3c(1)
    mr 5, 27
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 29
    psq_st 1, 0x0(8), 0, 0
    mr 7, 30
    mr 9, 28
    bl fn_8038A42C
    .4byte 0x480007E8 # b .L_8038B894
L_8038B0B0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038B110
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038B0F8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038B0F8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038B0F8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038B0F8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038B0F8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038B0FC
L_8038B0F8:
    li 0, 0x1
L_8038B0FC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038B164
L_8038B110:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038B150
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038B150
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038B150
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038B150
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038B150
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038B150
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038B154
L_8038B150:
    li 0, 0x1
L_8038B154:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038B164:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038B188
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038B188
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038B188
    .4byte 0x48000008 # b .L_8038B18C
L_8038B188:
    mr 3, 31
L_8038B18C:
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8038B1A0
    li 0, 0x0
    .4byte 0x48000074 # b .L_8038B210
L_8038B1A0:
    li 24, 0x0
    li 23, 0x1
    mr 25, 24
L_8038B1AC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 23, 24
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_8038B1E8
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 25, 0x114
    lwzx 3, 3, 0
    bl fn_80390818
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8038B1E8
    li 0, 0x1
    .4byte 0x48000018 # b .L_8038B1FC
L_8038B1E8:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFB8 # blt .L_8038B1AC
    li 0, 0x0
L_8038B1FC:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8038B20C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8038B210
L_8038B20C:
    li 0, 0x1
L_8038B210:
    clrlwi. 0, 0, 24
    .4byte 0x41820038 # beq .L_8038B24C
    lfs 0, 0x8(26)
    addi 8, 1, 0x28
    psq_l 1, 0x0(26), 0, 0
    mr 4, 31
    stfs 0, 0x30(1)
    mr 5, 27
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 29
    psq_st 1, 0x0(8), 0, 0
    mr 7, 30
    mr 9, 28
    bl fn_8038A42C
    .4byte 0x4800064C # b .L_8038B894
L_8038B24C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    mr 5, 27
    mr 6, 29
    mr 7, 30
    mr 8, 28
    bl fn_8038A984
    .4byte 0x4800062C # b .L_8038B894
L_8038B26C:
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038B2C8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038B2B0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038B2B0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038B2B0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038B2B0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038B2B0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038B2B4
L_8038B2B0:
    li 0, 0x1
L_8038B2B4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038B31C
L_8038B2C8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038B308
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038B308
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038B308
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038B308
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038B308
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038B308
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038B30C
L_8038B308:
    li 0, 0x1
L_8038B30C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038B31C:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038B344
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038B344
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038B344
    mr 23, 3
    .4byte 0x48000008 # b .L_8038B348
L_8038B344:
    mr 23, 31
L_8038B348:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 29, 3
    lwz 4, 0x8(3)
    addi 6, 4, 0x20
    add 4, 6, 0
    lwz 5, 0x4(6)
    lwz 0, 0x10(4)
    add 4, 5, 0
    addi 24, 4, 0x8
    add 24, 6, 24
    lbz 4, 0x0(24)
    cmpwi 4, 0x1a
    .4byte 0x40820024 # bne .L_8038B39C
    lbz 0, 0x2(24)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8038B39C
    lbz 0, 0x4(24)
    cmpwi 0, 0x1f
    .4byte 0x4082000C # bne .L_8038B39C
    li 4, 0x1
    .4byte 0x48000080 # b .L_8038B418
L_8038B39C:
    extsb 0, 4
    cmpwi 0, 0x1a
    .4byte 0x40820070 # bne .L_8038B414
    lbz 0, 0x2(24)
    cmpwi 0, 0x2
    .4byte 0x40820064 # bne .L_8038B414
    lbz 0, 0x4(24)
    cmpwi 0, 0x2f
    .4byte 0x40820058 # bne .L_8038B414
    lbz 0, 0xed(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8038B414
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x4180003C # blt .L_8038B414
    mr 3, 23
    bl fn_8022EA0C
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800028 # blt .L_8038B414
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 4, 0x1
    stb 4, 0xed(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stw 23, 0x110(3)
    lbz 0, 0x5(24)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 0, 0xee(3)
    .4byte 0x48000008 # b .L_8038B418
L_8038B414:
    li 4, 0x0
L_8038B418:
    clrlwi. 0, 4, 24
    .4byte 0x418202B8 # beq .L_8038B6D4
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    mr 5, 29
    mr 6, 28
    bl fn_80389964
    clrlwi. 0, 3, 24
    .4byte 0x41820458 # beq .L_8038B890
    lfs 0, 0x8(26)
    addi 8, 1, 0x1c
    psq_l 1, 0x0(26), 0, 0
    mr 4, 31
    stfs 0, 0x24(1)
    mr 5, 27
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 29
    psq_st 1, 0x0(8), 0, 0
    mr 7, 30
    mr 9, 28
    bl fn_8038A42C
    clrlwi. 0, 3, 24
    .4byte 0x41820420 # beq .L_8038B890
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038B4D4
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038B4BC
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038B4BC
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038B4BC
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038B4BC
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038B4BC
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038B4C0
L_8038B4BC:
    li 0, 0x1
L_8038B4C0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038B528
L_8038B4D4:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038B514
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038B514
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038B514
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038B514
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038B514
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038B514
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038B518
L_8038B514:
    li 0, 0x1
L_8038B518:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038B528:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038B550
    mr 3, 27
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038B550
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038B550
    mr 23, 3
    .4byte 0x48000008 # b .L_8038B554
L_8038B550:
    mr 23, 27
L_8038B554:
    rlwinm 26, 25, 0, 29, 29
    rlwinm 25, 25, 0, 30, 30
    li 24, 0x0
L_8038B560:
    cmpw 24, 23
    .4byte 0x4182015C # beq .L_8038B6C0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 24
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820140 # beq .L_8038B6C0
    mr 3, 24
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820018 # bne .L_8038B5A8
    mr 3, 24
    bl fn_8022EA0C
    mr 4, 30
    bl fn_8022FBB8
    .4byte 0x48000010 # b .L_8038B5B4
L_8038B5A8:
    mr 3, 24
    mr 4, 30
    bl fn_8022FBB8
L_8038B5B4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038B614
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038B5FC
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038B5FC
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038B5FC
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038B5FC
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038B5FC
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038B600
L_8038B5FC:
    li 0, 0x1
L_8038B600:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038B668
L_8038B614:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038B654
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038B654
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038B654
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038B654
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038B654
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038B654
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038B658
L_8038B654:
    li 0, 0x1
L_8038B658:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038B668:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038B68C
    mr 3, 24
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038B68C
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038B68C
    .4byte 0x48000008 # b .L_8038B690
L_8038B68C:
    mr 3, 24
L_8038B690:
    slwi 3, 3, 2
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 0, 3, 0x114
    cmpwi 26, 0x0
    lwzx 3, 4, 0
    li 0, 0x9
    stb 0, 0x24(3)
    .4byte 0x40820014 # bne .L_8038B6C0
    cmpwi 25, 0x0
    .4byte 0x4082000C # bne .L_8038B6C0
    mr 3, 24
    bl fn_802308E0
L_8038B6C0:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FE98 # blt .L_8038B560
    li 3, 0x1
    .4byte 0x480001C4 # b .L_8038B894
L_8038B6D4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038B734
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038B71C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038B71C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038B71C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038B71C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038B71C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038B720
L_8038B71C:
    li 0, 0x1
L_8038B720:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038B788
L_8038B734:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038B774
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038B774
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038B774
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038B774
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038B774
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038B774
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038B778
L_8038B774:
    li 0, 0x1
L_8038B778:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038B788:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038B7AC
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038B7AC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038B7AC
    .4byte 0x48000008 # b .L_8038B7B0
L_8038B7AC:
    mr 3, 31
L_8038B7B0:
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8038B7C4
    li 0, 0x0
    .4byte 0x48000074 # b .L_8038B834
L_8038B7C4:
    li 24, 0x0
    li 23, 0x1
    mr 25, 24
L_8038B7D0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 23, 24
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_8038B80C
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 25, 0x114
    lwzx 3, 3, 0
    bl fn_80390818
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8038B80C
    li 0, 0x1
    .4byte 0x48000018 # b .L_8038B820
L_8038B80C:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFB8 # blt .L_8038B7D0
    li 0, 0x0
L_8038B820:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8038B830
    li 0, 0x0
    .4byte 0x48000008 # b .L_8038B834
L_8038B830:
    li 0, 0x1
L_8038B834:
    clrlwi. 0, 0, 24
    .4byte 0x41820038 # beq .L_8038B870
    lfs 0, 0x8(26)
    addi 8, 1, 0x10
    psq_l 1, 0x0(26), 0, 0
    mr 4, 31
    stfs 0, 0x18(1)
    mr 5, 27
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 29
    psq_st 1, 0x0(8), 0, 0
    mr 7, 30
    mr 9, 28
    bl fn_8038A42C
    .4byte 0x48000028 # b .L_8038B894
L_8038B870:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    mr 5, 27
    mr 6, 29
    mr 7, 30
    mr 8, 28
    bl fn_8038A984
    .4byte 0x48000008 # b .L_8038B894
L_8038B890:
    li 3, 0x0
L_8038B894:
    lmw 23, 0x5c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8038B8A8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038B928
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038B910
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038B910
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038B910
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038B910
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038B910
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038B914
L_8038B910:
    li 0, 0x1
L_8038B914:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038B97C
L_8038B928:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038B968
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038B968
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038B968
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038B968
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038B968
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038B968
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038B96C
L_8038B968:
    li 0, 0x1
L_8038B96C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038B97C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038B9A0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038B9A0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038B9A0
    .4byte 0x48000008 # b .L_8038B9A4
L_8038B9A0:
    mr 3, 31
L_8038B9A4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x40820334 # bne .L_8038BCF0
    mr 3, 31
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820324 # bne .L_8038BCF0
    mr 3, 31
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x41820314 # beq .L_8038BCF0
    clrlwi 30, 29, 16
    andi. 0, 30, 0x91f
    .4byte 0x418201BC # beq .L_8038BBA4
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    slwi 29, 31, 2
    mr 4, 28
    li 5, 0x0
    add 3, 0, 29
    lwz 3, 0x114(3)
    bl fn_80390E40
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038BA68
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038BA50
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038BA50
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038BA50
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038BA50
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038BA50
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038BA54
L_8038BA50:
    li 0, 0x1
L_8038BA54:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038BABC
L_8038BA68:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038BAA8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038BAA8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038BAA8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038BAA8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038BAA8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038BAA8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038BAAC
L_8038BAA8:
    li 0, 0x1
L_8038BAAC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038BABC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038BAE0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038BAE0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038BAE0
    .4byte 0x48000008 # b .L_8038BAE4
L_8038BAE0:
    mr 3, 31
L_8038BAE4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 3, 3, 2
    rlwinm. 0, 30, 0, 30, 30
    li 5, 0x1
    add 3, 4, 3
    lwz 3, 0x114(3)
    stb 5, 0x24(3)
    .4byte 0x41820020 # beq .L_8038BB20
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x80
    sth 0, 0x28(3)
    .4byte 0x4800001C # b .L_8038BB38
L_8038BB20:
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x1
    sth 0, 0x28(3)
L_8038BB38:
    rlwinm. 0, 30, 0, 28, 28
    .4byte 0x41820020 # beq .L_8038BB5C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x10
    sth 0, 0x28(3)
    .4byte 0x48000024 # b .L_8038BB7C
L_8038BB5C:
    rlwinm. 0, 30, 0, 27, 27
    .4byte 0x4182001C # beq .L_8038BB7C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x20
    sth 0, 0x28(3)
L_8038BB7C:
    rlwinm. 0, 30, 0, 23, 23
    .4byte 0x4182001C # beq .L_8038BB9C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    add 3, 0, 29
    lwz 3, 0x114(3)
    lhz 0, 0x28(3)
    ori 0, 0, 0x100
    sth 0, 0x28(3)
L_8038BB9C:
    li 3, 0x1
    .4byte 0x48000154 # b .L_8038BCF4
L_8038BBA4:
    mr 3, 31
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820130 # beq .L_8038BCF0
    mr 3, 27
    mr 4, 29
    bl fn_8037EC98
    clrlwi. 0, 3, 24
    .4byte 0x4182011C # beq .L_8038BCF0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 31, 2
    mr 4, 28
    li 5, 0x0
    add 3, 3, 0
    lwz 3, 0x114(3)
    bl fn_80390E40
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038BC54
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038BC3C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038BC3C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038BC3C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038BC3C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038BC3C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038BC40
L_8038BC3C:
    li 0, 0x1
L_8038BC40:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038BCA8
L_8038BC54:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038BC94
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038BC94
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038BC94
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038BC94
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038BC94
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038BC94
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038BC98
L_8038BC94:
    li 0, 0x1
L_8038BC98:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038BCA8:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038BCCC
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038BCCC
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038BCCC
    .4byte 0x48000008 # b .L_8038BCD0
L_8038BCCC:
    mr 3, 31
L_8038BCD0:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    li 5, 0x1
    li 3, 0x1
    add 4, 4, 0
    lwz 4, 0x114(4)
    stb 5, 0x24(4)
    .4byte 0x48000008 # b .L_8038BCF4
L_8038BCF0:
    li 3, 0x0
L_8038BCF4:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8038BD08:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 24, 0x60(1)
    mr 28, 3
    mr 30, 4
    mr 26, 5
    mr 27, 6
    mr 29, 7
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(8)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038BD8C
    lwz 3, 0x4c(8)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038BD74
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038BD74
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038BD74
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038BD74
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038BD74
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038BD78
L_8038BD74:
    li 0, 0x1
L_8038BD78:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038BDE0
L_8038BD8C:
    lwz 3, 0x4c(8)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038BDCC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038BDCC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038BDCC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038BDCC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038BDCC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038BDCC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038BDD0
L_8038BDCC:
    li 0, 0x1
L_8038BDD0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038BDE0:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038BE08
    mr 3, 28
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038BE08
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038BE08
    mr 31, 3
    .4byte 0x48000008 # b .L_8038BE0C
L_8038BE08:
    mr 31, 28
L_8038BE0C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8038BE2C
    rlwinm. 0, 29, 0, 18, 18
    .4byte 0x4082000C # bne .L_8038BE2C
    li 3, 0x0
    .4byte 0x480007D0 # b .L_8038C5F8
L_8038BE2C:
    mr 3, 31
    mr 4, 30
    bl fn_80383EB0
    rlwinm. 0, 29, 0, 26, 26
    clrlwi 25, 29, 16
    mr 30, 3
    .4byte 0x4082002C # bne .L_8038BE70
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 30
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820164 # bne .L_8038BFC8
    li 3, 0x0
    .4byte 0x4800078C # b .L_8038C5F8
L_8038BE70:
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 30
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082013C # bne .L_8038BFC8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038BEF0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038BED8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038BED8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038BED8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038BED8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038BED8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038BEDC
L_8038BED8:
    li 0, 0x1
L_8038BEDC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038BF44
L_8038BEF0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038BF30
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038BF30
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038BF30
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038BF30
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038BF30
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038BF30
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038BF34
L_8038BF30:
    li 0, 0x1
L_8038BF34:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038BF44:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038BF68
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038BF68
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038BF68
    .4byte 0x48000008 # b .L_8038BF6C
L_8038BF68:
    mr 3, 31
L_8038BF6C:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    slwi 0, 30, 3
    mr 4, 30
    lwz 5, 0x8(5)
    addi 7, 5, 0x20
    add 5, 7, 0
    lwz 6, 0x4(7)
    lwz 0, 0x10(5)
    add 5, 6, 0
    addi 5, 5, 0x8
    add 5, 7, 5
    lbz 0, 0x0(5)
    cmpwi 0, 0x1a
    .4byte 0x40820020 # bne .L_8038BFC0
    lbz 0, 0x2(5)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8038BFC0
    lbz 0, 0x4(5)
    cmpwi 0, 0x5
    .4byte 0x40820008 # bne .L_8038BFC0
    lwz 4, 0x5(5)
L_8038BFC0:
    bl fn_80383EB0
    mr 30, 3
L_8038BFC8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8038BFE0
    rlwinm. 0, 25, 0, 25, 25
    .4byte 0x41820258 # beq .L_8038C234
L_8038BFE0:
    cmpwi 26, 0x8
    .4byte 0x40800034 # bge .L_8038C018
    lfs 0, 0x8(27)
    addi 7, 1, 0x40
    psq_l 1, 0x0(27), 0, 0
    mr 4, 31
    stfs 0, 0x48(1)
    mr 5, 28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 30
    psq_st 1, 0x0(7), 0, 0
    mr 8, 29
    bl fn_80389F78
    .4byte 0x480005E4 # b .L_8038C5F8
L_8038C018:
    li 3, 0x0
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x4082005C # bne .L_8038C080
    .4byte 0xC0220158 # lfs f1, lbl_805430F8@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC002015C # lfs f0, lbl_805430FC@sda21(r0)
    addi 6, 1, 0x4c
    stfs 1, 0x8(1)
    li 5, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C4A0
    lfs 0, 0x54(1)
    addi 7, 1, 0x34
    psq_l 1, 0x4c(1), 0, 0
    mr 4, 31
    stfs 0, 0x3c(1)
    mr 5, 28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 30
    psq_st 1, 0x0(7), 0, 0
    mr 8, 29
    bl fn_80389F78
    .4byte 0x4800057C # b .L_8038C5F8
L_8038C080:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038C0E0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038C0C8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038C0C8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038C0C8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038C0C8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038C0C8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038C0CC
L_8038C0C8:
    li 0, 0x1
L_8038C0CC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038C134
L_8038C0E0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038C120
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038C120
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038C120
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038C120
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038C120
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038C120
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038C124
L_8038C120:
    li 0, 0x1
L_8038C124:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038C134:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038C158
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038C158
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038C158
    .4byte 0x48000008 # b .L_8038C15C
L_8038C158:
    mr 3, 31
L_8038C15C:
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8038C170
    li 0, 0x0
    .4byte 0x48000074 # b .L_8038C1E0
L_8038C170:
    li 26, 0x0
    li 25, 0x1
    mr 24, 26
L_8038C17C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 25, 26
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_8038C1B8
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 24, 0x114
    lwzx 3, 3, 0
    bl fn_80390818
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8038C1B8
    li 0, 0x1
    .4byte 0x48000018 # b .L_8038C1CC
L_8038C1B8:
    addi 26, 26, 0x1
    addi 24, 24, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFB8 # blt .L_8038C17C
    li 0, 0x0
L_8038C1CC:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8038C1DC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8038C1E0
L_8038C1DC:
    li 0, 0x1
L_8038C1E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820034 # beq .L_8038C218
    lfs 0, 0x8(27)
    addi 7, 1, 0x28
    psq_l 1, 0x0(27), 0, 0
    mr 4, 31
    stfs 0, 0x30(1)
    mr 5, 28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 30
    psq_st 1, 0x0(7), 0, 0
    mr 8, 29
    bl fn_80389F78
    .4byte 0x480003E4 # b .L_8038C5F8
L_8038C218:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    mr 5, 28
    mr 6, 30
    mr 7, 29
    bl fn_8038B8A8
    .4byte 0x480003C8 # b .L_8038C5F8
L_8038C234:
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038C290
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038C278
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038C278
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038C278
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038C278
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038C278
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038C27C
L_8038C278:
    li 0, 0x1
L_8038C27C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038C2E4
L_8038C290:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038C2D0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038C2D0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038C2D0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038C2D0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038C2D0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038C2D0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038C2D4
L_8038C2D0:
    li 0, 0x1
L_8038C2D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038C2E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038C30C
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038C30C
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038C30C
    mr 25, 3
    .4byte 0x48000008 # b .L_8038C310
L_8038C30C:
    mr 25, 31
L_8038C310:
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    slwi 0, 30, 3
    lwz 3, 0x8(6)
    addi 5, 3, 0x20
    add 3, 5, 0
    lwz 4, 0x4(5)
    lwz 0, 0x10(3)
    add 3, 4, 0
    addi 26, 3, 0x8
    add 26, 5, 26
    lbz 3, 0x0(26)
    cmpwi 3, 0x1a
    .4byte 0x40820024 # bne .L_8038C364
    lbz 0, 0x2(26)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8038C364
    lbz 0, 0x4(26)
    cmpwi 0, 0x1f
    .4byte 0x4082000C # bne .L_8038C364
    li 4, 0x1
    .4byte 0x48000080 # b .L_8038C3E0
L_8038C364:
    extsb 0, 3
    cmpwi 0, 0x1a
    .4byte 0x40820070 # bne .L_8038C3DC
    lbz 0, 0x2(26)
    cmpwi 0, 0x2
    .4byte 0x40820064 # bne .L_8038C3DC
    lbz 0, 0x4(26)
    cmpwi 0, 0x2f
    .4byte 0x40820058 # bne .L_8038C3DC
    lbz 0, 0xed(6)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8038C3DC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x4180003C # blt .L_8038C3DC
    mr 3, 25
    bl fn_8022EA0C
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800028 # blt .L_8038C3DC
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 4, 0x1
    stb 4, 0xed(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stw 25, 0x110(3)
    lbz 0, 0x5(26)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 0, 0xee(3)
    .4byte 0x48000008 # b .L_8038C3E0
L_8038C3DC:
    li 4, 0x0
L_8038C3E0:
    clrlwi. 0, 4, 24
    .4byte 0x4182005C # beq .L_8038C440
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    mr 5, 30
    mr 6, 29
    bl fn_80389964
    clrlwi. 0, 3, 24
    .4byte 0x418201F4 # beq .L_8038C5F4
    lfs 0, 0x8(27)
    addi 7, 1, 0x1c
    psq_l 1, 0x0(27), 0, 0
    mr 4, 31
    stfs 0, 0x24(1)
    mr 5, 28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 30
    psq_st 1, 0x0(7), 0, 0
    mr 8, 29
    bl fn_80389F78
    clrlwi. 0, 3, 24
    .4byte 0x418201C0 # beq .L_8038C5F4
    li 3, 0x1
    .4byte 0x480001BC # b .L_8038C5F8
L_8038C440:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038C4A0
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038C488
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038C488
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038C488
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038C488
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038C488
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038C48C
L_8038C488:
    li 0, 0x1
L_8038C48C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038C4F4
L_8038C4A0:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038C4E0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038C4E0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038C4E0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038C4E0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038C4E0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038C4E0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038C4E4
L_8038C4E0:
    li 0, 0x1
L_8038C4E4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038C4F4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038C518
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038C518
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038C518
    .4byte 0x48000008 # b .L_8038C51C
L_8038C518:
    mr 3, 31
L_8038C51C:
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8038C530
    li 0, 0x0
    .4byte 0x48000074 # b .L_8038C5A0
L_8038C530:
    li 26, 0x0
    li 25, 0x1
    mr 24, 26
L_8038C53C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 25, 26
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_8038C578
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 24, 0x114
    lwzx 3, 3, 0
    bl fn_80390818
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8038C578
    li 0, 0x1
    .4byte 0x48000018 # b .L_8038C58C
L_8038C578:
    addi 26, 26, 0x1
    addi 24, 24, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFB8 # blt .L_8038C53C
    li 0, 0x0
L_8038C58C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8038C59C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8038C5A0
L_8038C59C:
    li 0, 0x1
L_8038C5A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820034 # beq .L_8038C5D8
    lfs 0, 0x8(27)
    addi 7, 1, 0x10
    psq_l 1, 0x0(27), 0, 0
    mr 4, 31
    stfs 0, 0x18(1)
    mr 5, 28
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 6, 30
    psq_st 1, 0x0(7), 0, 0
    mr 8, 29
    bl fn_80389F78
    .4byte 0x48000024 # b .L_8038C5F8
L_8038C5D8:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    mr 5, 28
    mr 6, 30
    mr 7, 29
    bl fn_8038B8A8
    .4byte 0x48000008 # b .L_8038C5F8
L_8038C5F4:
    li 3, 0x0
L_8038C5F8:
    lmw 24, 0x60(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8038C60C:
    stwu 1, -0x10(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x14(1)
    .4byte 0x812D91B8 # lwz r9, lbl_8053AD78@sda21(r0)
    lwz 9, 0x8(9)
    addi 9, 9, 0x20
    lhz 11, 0x8(9)
    mtctr 11
    cmplwi 11, 0x0
    .4byte 0x40810024 # ble .L_8038C658
L_8038C638:
    lhz 0, 0x14(9)
    cmplw 0, 6
    .4byte 0x4082000C # bne .L_8038C64C
    mr 6, 10
    .4byte 0x48000010 # b .L_8038C658
L_8038C64C:
    addi 9, 9, 0x8
    addi 10, 10, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038C638
L_8038C658:
    cmplw 10, 11
    .4byte 0x41800008 # blt .L_8038C664
    li 6, 0x12b
L_8038C664:
    bl fn_8038A984
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8038C678:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stmw 20, 0xa0(1)
    mr 27, 3
    mr 31, 4
    mr 29, 5
    mr 20, 6
    mr 26, 7
    mr 28, 8
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(9)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038C700
    lwz 3, 0x4c(9)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038C6E8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038C6E8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038C6E8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038C6E8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038C6E8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038C6EC
L_8038C6E8:
    li 0, 0x1
L_8038C6EC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038C754
L_8038C700:
    lwz 3, 0x4c(9)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038C740
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038C740
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038C740
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038C740
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038C740
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038C740
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038C744
L_8038C740:
    li 0, 0x1
L_8038C744:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038C754:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038C77C
    mr 3, 27
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038C77C
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038C77C
    mr 30, 3
    .4byte 0x48000008 # b .L_8038C780
L_8038C77C:
    mr 30, 27
L_8038C780:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8038C7A0
    rlwinm. 0, 28, 0, 18, 18
    .4byte 0x4082000C # bne .L_8038C7A0
    li 3, 0x0
    .4byte 0x48000CA4 # b .L_8038D440
L_8038C7A0:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 4, 0x0
    lwz 3, 0x8(3)
    addi 3, 3, 0x20
    lhz 5, 0x8(3)
    mtctr 5
    cmplwi 5, 0x0
    .4byte 0x40810024 # ble .L_8038C7E0
L_8038C7C0:
    lhz 0, 0x14(3)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038C7D4
    mr 23, 4
    .4byte 0x48000010 # b .L_8038C7E0
L_8038C7D4:
    addi 3, 3, 0x8
    addi 4, 4, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038C7C0
L_8038C7E0:
    cmplw 4, 5
    .4byte 0x41800008 # blt .L_8038C7EC
    li 23, 0x12b
L_8038C7EC:
    mr 3, 30
    mr 4, 23
    bl fn_80383EB0
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 25, 3, 3
    mr 23, 3
    lwz 0, 0x8(4)
    add 3, 0, 25
    lhz 31, 0x34(3)
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 23
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820148 # bne .L_8038C974
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038C890
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038C878
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038C878
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038C878
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038C878
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038C878
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038C87C
L_8038C878:
    li 0, 0x1
L_8038C87C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038C8E4
L_8038C890:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038C8D0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038C8D0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038C8D0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038C8D0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038C8D0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038C8D0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038C8D4
L_8038C8D0:
    li 0, 0x1
L_8038C8D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038C8E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038C908
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038C908
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038C908
    .4byte 0x48000008 # b .L_8038C90C
L_8038C908:
    mr 3, 30
L_8038C90C:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    mr 4, 23
    lwz 5, 0x8(5)
    addi 7, 5, 0x20
    add 5, 7, 25
    lwz 6, 0x4(7)
    lwz 0, 0x10(5)
    add 5, 6, 0
    addi 5, 5, 0x8
    add 5, 7, 5
    lbz 0, 0x0(5)
    cmpwi 0, 0x1a
    .4byte 0x40820020 # bne .L_8038C95C
    lbz 0, 0x2(5)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8038C95C
    lbz 0, 0x4(5)
    cmpwi 0, 0x5
    .4byte 0x40820008 # bne .L_8038C95C
    lwz 4, 0x5(5)
L_8038C95C:
    bl fn_80383EB0
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 3
    lwz 3, 0x8(4)
    add 3, 3, 0
    lhz 31, 0x34(3)
L_8038C974:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(6)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8038C990
    rlwinm. 0, 28, 0, 25, 25
    clrlwi 25, 28, 16
    .4byte 0x41820358 # beq .L_8038CCE4
L_8038C990:
    cmpwi 20, 0x8
    .4byte 0x40800088 # bge .L_8038CA1C
    psq_l 1, 0x0(26), 0, 0
    li 5, 0x0
    lfs 0, 0x8(26)
    psq_st 1, 0x40(1), 0, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 0, 0x48(1)
    lwz 4, 0x8(3)
    psq_st 1, 0x7c(1), 0, 0
    addi 4, 4, 0x20
    lhz 6, 0x8(4)
    stfs 0, 0x84(1)
    mtctr 6
    cmplwi 6, 0x0
    .4byte 0x40810024 # ble .L_8038C9F0
L_8038C9D0:
    lhz 0, 0x14(4)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038C9E4
    mr 24, 5
    .4byte 0x48000010 # b .L_8038C9F0
L_8038C9E4:
    addi 4, 4, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038C9D0
L_8038C9F0:
    cmplw 5, 6
    .4byte 0x41800008 # blt .L_8038C9FC
    li 24, 0x12b
L_8038C9FC:
    mr 4, 30
    mr 5, 27
    mr 6, 24
    mr 7, 29
    mr 9, 28
    addi 8, 1, 0x40
    bl fn_8038A42C
    .4byte 0x48000A28 # b .L_8038D440
L_8038CA1C:
    li 3, 0x0
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x408200B0 # bne .L_8038CAD8
    .4byte 0xC0220158 # lfs f1, lbl_805430F8@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC002015C # lfs f0, lbl_805430FC@sda21(r0)
    addi 6, 1, 0x88
    stfs 1, 0x8(1)
    li 5, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C4A0
    psq_l 1, 0x88(1), 0, 0
    li 5, 0x0
    lfs 0, 0x90(1)
    psq_st 1, 0x34(1), 0, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 0, 0x3c(1)
    lwz 4, 0x8(3)
    psq_st 1, 0x70(1), 0, 0
    addi 4, 4, 0x20
    lhz 6, 0x8(4)
    stfs 0, 0x78(1)
    mtctr 6
    cmplwi 6, 0x0
    .4byte 0x40810024 # ble .L_8038CAAC
L_8038CA8C:
    lhz 0, 0x14(4)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038CAA0
    mr 24, 5
    .4byte 0x48000010 # b .L_8038CAAC
L_8038CAA0:
    addi 4, 4, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038CA8C
L_8038CAAC:
    cmplw 5, 6
    .4byte 0x41800008 # blt .L_8038CAB8
    li 24, 0x12b
L_8038CAB8:
    mr 4, 30
    mr 5, 27
    mr 6, 24
    mr 7, 29
    mr 9, 28
    addi 8, 1, 0x34
    bl fn_8038A42C
    .4byte 0x4800096C # b .L_8038D440
L_8038CAD8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038CB38
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038CB20
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038CB20
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038CB20
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038CB20
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038CB20
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038CB24
L_8038CB20:
    li 0, 0x1
L_8038CB24:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038CB8C
L_8038CB38:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038CB78
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038CB78
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038CB78
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038CB78
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038CB78
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038CB78
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038CB7C
L_8038CB78:
    li 0, 0x1
L_8038CB7C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038CB8C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038CBB0
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038CBB0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038CBB0
    .4byte 0x48000008 # b .L_8038CBB4
L_8038CBB0:
    mr 3, 30
L_8038CBB4:
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8038CBC8
    li 0, 0x0
    .4byte 0x48000074 # b .L_8038CC38
L_8038CBC8:
    li 20, 0x0
    li 22, 0x1
    mr 21, 20
L_8038CBD4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 22, 20
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_8038CC10
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 21, 0x114
    lwzx 3, 3, 0
    bl fn_80390818
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8038CC10
    li 0, 0x1
    .4byte 0x48000018 # b .L_8038CC24
L_8038CC10:
    addi 20, 20, 0x1
    addi 21, 21, 0x4
    cmpwi 20, 0x4
    .4byte 0x4180FFB8 # blt .L_8038CBD4
    li 0, 0x0
L_8038CC24:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8038CC34
    li 0, 0x0
    .4byte 0x48000008 # b .L_8038CC38
L_8038CC34:
    li 0, 0x1
L_8038CC38:
    clrlwi. 0, 0, 24
    .4byte 0x41820088 # beq .L_8038CCC4
    psq_l 1, 0x0(26), 0, 0
    li 5, 0x0
    lfs 0, 0x8(26)
    psq_st 1, 0x28(1), 0, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 0, 0x30(1)
    lwz 4, 0x8(3)
    psq_st 1, 0x64(1), 0, 0
    addi 4, 4, 0x20
    lhz 6, 0x8(4)
    stfs 0, 0x6c(1)
    mtctr 6
    cmplwi 6, 0x0
    .4byte 0x40810024 # ble .L_8038CC98
L_8038CC78:
    lhz 0, 0x14(4)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038CC8C
    mr 24, 5
    .4byte 0x48000010 # b .L_8038CC98
L_8038CC8C:
    addi 4, 4, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038CC78
L_8038CC98:
    cmplw 5, 6
    .4byte 0x41800008 # blt .L_8038CCA4
    li 24, 0x12b
L_8038CCA4:
    mr 4, 30
    mr 5, 27
    mr 6, 24
    mr 7, 29
    mr 9, 28
    addi 8, 1, 0x28
    bl fn_8038A42C
    .4byte 0x48000780 # b .L_8038D440
L_8038CCC4:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 30
    mr 5, 27
    mr 6, 31
    mr 7, 29
    mr 8, 28
    bl fn_8038C60C
    .4byte 0x48000760 # b .L_8038D440
L_8038CCE4:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 4, 0x0
    lwz 3, 0x8(3)
    addi 3, 3, 0x20
    lhz 5, 0x8(3)
    mtctr 5
    cmplwi 5, 0x0
    .4byte 0x40810024 # ble .L_8038CD24
L_8038CD04:
    lhz 0, 0x14(3)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038CD18
    mr 24, 4
    .4byte 0x48000010 # b .L_8038CD24
L_8038CD18:
    addi 3, 3, 0x8
    addi 4, 4, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038CD04
L_8038CD24:
    cmplw 4, 5
    .4byte 0x41800008 # blt .L_8038CD30
    li 24, 0x12b
L_8038CD30:
    lbz 0, 0x7f(6)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038CD8C
    lwz 3, 0x4c(6)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038CD74
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038CD74
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038CD74
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038CD74
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038CD74
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038CD78
L_8038CD74:
    li 0, 0x1
L_8038CD78:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038CDE0
L_8038CD8C:
    lwz 3, 0x4c(6)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038CDCC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038CDCC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038CDCC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038CDCC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038CDCC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038CDCC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038CDD0
L_8038CDCC:
    li 0, 0x1
L_8038CDD0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038CDE0:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038CE08
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038CE08
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038CE08
    mr 23, 3
    .4byte 0x48000008 # b .L_8038CE0C
L_8038CE08:
    mr 23, 30
L_8038CE0C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slwi 0, 24, 3
    lwz 4, 0x8(3)
    addi 6, 4, 0x20
    add 4, 6, 0
    lwz 5, 0x4(6)
    lwz 0, 0x10(4)
    add 4, 5, 0
    addi 20, 4, 0x8
    add 20, 6, 20
    lbz 4, 0x0(20)
    cmpwi 4, 0x1a
    .4byte 0x40820024 # bne .L_8038CE60
    lbz 0, 0x2(20)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8038CE60
    lbz 0, 0x4(20)
    cmpwi 0, 0x1f
    .4byte 0x4082000C # bne .L_8038CE60
    li 4, 0x1
    .4byte 0x48000080 # b .L_8038CEDC
L_8038CE60:
    extsb 0, 4
    cmpwi 0, 0x1a
    .4byte 0x40820070 # bne .L_8038CED8
    lbz 0, 0x2(20)
    cmpwi 0, 0x2
    .4byte 0x40820064 # bne .L_8038CED8
    lbz 0, 0x4(20)
    cmpwi 0, 0x2f
    .4byte 0x40820058 # bne .L_8038CED8
    lbz 0, 0xed(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8038CED8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x4180003C # blt .L_8038CED8
    mr 3, 23
    bl fn_8022EA0C
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800028 # blt .L_8038CED8
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 4, 0x1
    stb 4, 0xed(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stw 23, 0x110(3)
    lbz 0, 0x5(20)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 0, 0xee(3)
    .4byte 0x48000008 # b .L_8038CEDC
L_8038CED8:
    li 4, 0x0
L_8038CEDC:
    clrlwi. 0, 4, 24
    .4byte 0x41820350 # beq .L_8038D230
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 5, 0x0
    lwz 4, 0x8(3)
    addi 4, 4, 0x20
    lhz 6, 0x8(4)
    mtctr 6
    cmplwi 6, 0x0
    .4byte 0x40810024 # ble .L_8038CF24
L_8038CF04:
    lhz 0, 0x14(4)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038CF18
    mr 22, 5
    .4byte 0x48000010 # b .L_8038CF24
L_8038CF18:
    addi 4, 4, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038CF04
L_8038CF24:
    cmplw 5, 6
    .4byte 0x41800008 # blt .L_8038CF30
    li 22, 0x12b
L_8038CF30:
    mr 4, 30
    mr 5, 22
    mr 6, 28
    bl fn_80389964
    clrlwi. 0, 3, 24
    .4byte 0x418204F8 # beq .L_8038D43C
    psq_l 1, 0x0(26), 0, 0
    li 5, 0x0
    lfs 0, 0x8(26)
    psq_st 1, 0x1c(1), 0, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 0, 0x24(1)
    lwz 4, 0x8(3)
    psq_st 1, 0x58(1), 0, 0
    addi 4, 4, 0x20
    lhz 6, 0x8(4)
    stfs 0, 0x60(1)
    mtctr 6
    cmplwi 6, 0x0
    .4byte 0x40810024 # ble .L_8038CFA0
L_8038CF80:
    lhz 0, 0x14(4)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038CF94
    mr 21, 5
    .4byte 0x48000010 # b .L_8038CFA0
L_8038CF94:
    addi 4, 4, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038CF80
L_8038CFA0:
    cmplw 5, 6
    .4byte 0x41800008 # blt .L_8038CFAC
    li 21, 0x12b
L_8038CFAC:
    mr 4, 30
    mr 5, 27
    mr 6, 21
    mr 7, 29
    mr 9, 28
    addi 8, 1, 0x1c
    bl fn_8038A42C
    clrlwi. 0, 3, 24
    .4byte 0x41820470 # beq .L_8038D43C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038D030
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038D018
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038D018
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038D018
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038D018
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038D018
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038D01C
L_8038D018:
    li 0, 0x1
L_8038D01C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038D084
L_8038D030:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038D070
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038D070
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038D070
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038D070
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038D070
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038D070
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038D074
L_8038D070:
    li 0, 0x1
L_8038D074:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038D084:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_8038D0AC
    mr 3, 27
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8038D0AC
    cmpwi 3, 0x4
    .4byte 0x4080000C # bge .L_8038D0AC
    mr 21, 3
    .4byte 0x48000008 # b .L_8038D0B0
L_8038D0AC:
    mr 21, 27
L_8038D0B0:
    rlwinm 22, 25, 0, 29, 29
    rlwinm 23, 25, 0, 30, 30
    li 20, 0x0
L_8038D0BC:
    cmpw 20, 21
    .4byte 0x4182015C # beq .L_8038D21C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 20
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820140 # beq .L_8038D21C
    mr 3, 20
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820018 # bne .L_8038D104
    mr 3, 20
    bl fn_8022EA0C
    mr 4, 29
    bl fn_8022FBB8
    .4byte 0x48000010 # b .L_8038D110
L_8038D104:
    mr 3, 20
    mr 4, 29
    bl fn_8022FBB8
L_8038D110:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038D170
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038D158
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038D158
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038D158
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038D158
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038D158
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038D15C
L_8038D158:
    li 0, 0x1
L_8038D15C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038D1C4
L_8038D170:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038D1B0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038D1B0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038D1B0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038D1B0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038D1B0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038D1B0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038D1B4
L_8038D1B0:
    li 0, 0x1
L_8038D1B4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038D1C4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038D1E8
    mr 3, 20
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038D1E8
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038D1E8
    .4byte 0x48000008 # b .L_8038D1EC
L_8038D1E8:
    mr 3, 20
L_8038D1EC:
    slwi 3, 3, 2
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 0, 3, 0x114
    cmpwi 22, 0x0
    lwzx 3, 4, 0
    li 0, 0x9
    stb 0, 0x24(3)
    .4byte 0x40820014 # bne .L_8038D21C
    cmpwi 23, 0x0
    .4byte 0x4082000C # bne .L_8038D21C
    mr 3, 20
    bl fn_802308E0
L_8038D21C:
    addi 20, 20, 0x1
    cmpwi 20, 0x4
    .4byte 0x4180FE98 # blt .L_8038D0BC
    li 3, 0x1
    .4byte 0x48000214 # b .L_8038D440
L_8038D230:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8038D290
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8038D278
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8038D278
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8038D278
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8038D278
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8038D278
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8038D27C
L_8038D278:
    li 0, 0x1
L_8038D27C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8038D2E4
L_8038D290:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8038D2D0
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8038D2D0
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8038D2D0
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8038D2D0
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8038D2D0
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8038D2D0
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8038D2D4
L_8038D2D0:
    li 0, 0x1
L_8038D2D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8038D2E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8038D308
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8038D308
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8038D308
    .4byte 0x48000008 # b .L_8038D30C
L_8038D308:
    mr 3, 30
L_8038D30C:
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8038D320
    li 0, 0x0
    .4byte 0x48000074 # b .L_8038D390
L_8038D320:
    li 20, 0x0
    li 23, 0x1
    mr 22, 20
L_8038D32C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 23, 20
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_8038D368
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 22, 0x114
    lwzx 3, 3, 0
    bl fn_80390818
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8038D368
    li 0, 0x1
    .4byte 0x48000018 # b .L_8038D37C
L_8038D368:
    addi 20, 20, 0x1
    addi 22, 22, 0x4
    cmpwi 20, 0x4
    .4byte 0x4180FFB8 # blt .L_8038D32C
    li 0, 0x0
L_8038D37C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8038D38C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8038D390
L_8038D38C:
    li 0, 0x1
L_8038D390:
    clrlwi. 0, 0, 24
    .4byte 0x41820088 # beq .L_8038D41C
    psq_l 1, 0x0(26), 0, 0
    li 5, 0x0
    lfs 0, 0x8(26)
    psq_st 1, 0x10(1), 0, 0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 0, 0x18(1)
    lwz 4, 0x8(3)
    psq_st 1, 0x4c(1), 0, 0
    addi 4, 4, 0x20
    lhz 6, 0x8(4)
    stfs 0, 0x54(1)
    mtctr 6
    cmplwi 6, 0x0
    .4byte 0x40810024 # ble .L_8038D3F0
L_8038D3D0:
    lhz 0, 0x14(4)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_8038D3E4
    mr 21, 5
    .4byte 0x48000010 # b .L_8038D3F0
L_8038D3E4:
    addi 4, 4, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FFE4 # bdnz .L_8038D3D0
L_8038D3F0:
    cmplw 5, 6
    .4byte 0x41800008 # blt .L_8038D3FC
    li 21, 0x12b
L_8038D3FC:
    mr 4, 30
    mr 5, 27
    mr 6, 21
    mr 7, 29
    mr 9, 28
    addi 8, 1, 0x10
    bl fn_8038A42C
    .4byte 0x48000028 # b .L_8038D440
L_8038D41C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 30
    mr 5, 27
    mr 6, 31
    mr 7, 29
    mr 8, 28
    bl fn_8038C60C
    .4byte 0x48000008 # b .L_8038D440
L_8038D43C:
    li 3, 0x0
L_8038D440:
    lmw 20, 0xa0(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_8038D454:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    li 30, 0x0
L_8038D470:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 31, 0x114
    lwzx 3, 3, 0
    bl fn_80391678
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFE4 # blt .L_8038D470
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8038D4A8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x1
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    li 29, 0x0
L_8038D4CC:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 0, 30, 0xfc
    lwzx 4, 5, 0
    cmpwi 4, -0x1
    .4byte 0x4182003C # beq .L_8038D518
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 31, 4
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8038D518
    slwi 3, 4, 2
    addi 0, 3, 0x114
    lwzx 3, 5, 0
    bl fn_80390E68
L_8038D518:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFA8 # blt .L_8038D4CC
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lbz 0, 0xe4(4)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8038D554
    lwz 3, 0x4(4)
    lfs 1, 0x70(4)
    lwz 12, 0x0(3)
    lfs 2, 0x74(4)
    lwz 12, 0x94(12)
    mtctr 12
    bctrl
L_8038D554:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8038D570:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    li 30, 0x1
    stw 29, 0x14(1)
    li 29, 0x0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 31, 0xe7(3)
L_8038D59C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8038D5E0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 31, 0x114
    lwzx 3, 3, 0
    stw 29, 0x18(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwzx 3, 3, 0
    bl fn_80390EBC
L_8038D5E0:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFB0 # blt .L_8038D59C
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lbz 0, 0xe4(4)
    cmplwi 0, 0x0
    .4byte 0x418200F0 # beq .L_8038D6EC
    lwz 3, 0x7c(4)
    cmpwi 3, 0x0
    .4byte 0x4082005C # bne .L_8038D664
    li 29, 0x0
    li 31, 0x1
    li 30, 0x0
L_8038D618:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slw 0, 31, 29
    lbz 3, 0xe5(3)
    and. 0, 3, 0
    .4byte 0x4182002C # beq .L_8038D654
    mr 3, 29
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8038D654
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 30, 0xe4(3)
L_8038D654:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFBC # blt .L_8038D618
    .4byte 0x4800008C # b .L_8038D6EC
L_8038D664:
    subi 0, 3, 0x1
    stw 0, 0x7c(4)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lfs 1, 0x70(3)
    lfs 0, 0x78(3)
    fsubs 0, 1, 0
    stfs 0, 0x70(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x7c(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8038D698
    li 0, 0x0
    stb 0, 0xe4(3)
L_8038D698:
    li 29, 0x0
    li 30, 0x1
    li 31, 0x0
L_8038D6A4:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    slw 0, 30, 29
    lbz 3, 0xe5(3)
    and. 0, 3, 0
    .4byte 0x4182002C # beq .L_8038D6E0
    mr 3, 29
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8038D6E0
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 31, 0xe4(3)
L_8038D6E0:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFBC # blt .L_8038D6A4
L_8038D6EC:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    lbz 0, 0xe9(5)
    cmplwi 0, 0x0
    .4byte 0x41820114 # beq .L_8038D80C
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8038D720
    lis 3, 0x5
    lwz 4, 0x44(5)
    addi 0, 3, 0x7e40
    cmplw 4, 0
    .4byte 0x4080000C # bge .L_8038D720
    addi 0, 4, 0x1
    stw 0, 0x44(5)
L_8038D720:
    .4byte 0x83ED91B8 # lwz r31, lbl_8053AD78@sda21(r0)
    lis 4, 0x91a3
    lis 3, 0x8889
    lwz 6, 0x44(31)
    subi 0, 4, 0x4c3b
    subi 5, 3, 0x7777
    mulhw 3, 0, 6
    mulhw 0, 5, 6
    add 3, 3, 6
    srawi 4, 3, 11
    add 0, 0, 6
    srwi 6, 4, 31
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 6, 4, 6
    add 4, 0, 3
    mulhw 0, 5, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 4, 0, 4
    .4byte 0x40820008 # bne .L_8038D784
    li 4, 0x1
L_8038D784:
    mulli 3, 6, 0x3c
    lwz 0, 0x48(31)
    add 3, 4, 3
    cmplw 3, 0
    .4byte 0x40810078 # ble .L_8038D80C
    lbz 0, 0xeb(31)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8038D7D8
    bl GetRoomConfigRecord
    lbz 4, 0xea(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_8038D80C
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lbz 30, 0xea(3)
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000038 # b .L_8038D80C
L_8038D7D8:
    bl GetRoomConfigRecord
    lbz 4, 0xea(31)
    bl fn_802D800C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8038D80C
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lbz 30, 0xea(3)
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_8038D80C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lbz 0, 0xed(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8038D848
    li 29, 0x0
    .4byte 0x3BCD9118 # li r30, lbl_8053ACD8@sda21
    li 31, 0x1
    .4byte 0x48000010 # b .L_8038D838
L_8038D82C:
    stb 31, 0x0(30)
    addi 30, 30, 0x1
    addi 29, 29, 0x1
L_8038D838:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 29, 3
    .4byte 0x4180FFE8 # blt .L_8038D82C
L_8038D848:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 0, 0x0
    stb 0, 0xe8(3)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8038D870:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    li 29, 0x0
    li 27, 0x0
    li 30, -0x1
    mr 28, 29
    mr 31, 29
L_8038D894:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 29, 0x114
    lwzx 3, 3, 0
    bl fn_80391678
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    addi 4, 29, 0x114
    addi 3, 29, 0xfc
    addi 27, 27, 0x1
    lwz 5, 0x8(6)
    addi 0, 28, 0xf0
    lwzx 4, 6, 4
    cmpwi 27, 0x4
    addi 29, 29, 0x4
    addi 28, 28, 0x2
    stw 5, 0x4(4)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    stwx 30, 4, 3
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    sthx 31, 3, 0
    .4byte 0x4180FFB4 # blt .L_8038D894
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 0, 0x0
    stw 0, 0xf8(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 0, 0xe4(3)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

