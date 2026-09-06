# fn_80396884 - leading helper (0x710) - HUD-heavy (fn_803037D4/fn_80458880 x12 each)
.section extab, "a"
.balign 4
.global etb_8000EFC8
etb_8000EFC8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EFC8, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE50
eti_8001EE50:
    .4byte fn_80396884
    .4byte 0x00000710
    .4byte etb_8000EFC8
.size eti_8001EE50, 12

.text
.balign 4
.global fn_80396884

fn_80396884:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x1a0(3)
    cmplwi 0, 0x0
    .4byte 0x418206E0 # beq .L_80396F80
    lwz 3, 0x3b8(31)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x4182035C # beq .L_80396C0C
    lbz 0, 0x1a1(31)
    cmplwi 0, 0x0
    .4byte 0x40820198 # bne .L_80396A54
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418200F8 # beq .L_803969CC
    lbz 0, 0x1a0(31)
    cmplwi 0, 0x2
    .4byte 0x40820074 # bne .L_80396954
    lwz 3, 0x168(31)
    cmpwi 3, 0x1
    .4byte 0x40800694 # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396924
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396924:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396940
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x48000644 # b .L_80396F80
L_80396940:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000630 # b .L_80396F80
L_80396954:
    cmplwi 0, 0x3
    .4byte 0x40820628 # bne .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x2
    .4byte 0x4080061C # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_8039699C
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_8039699C:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803969B8
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x480005CC # b .L_80396F80
L_803969B8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480005B8 # b .L_80396F80
L_803969CC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418205A0 # beq .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x0
    .4byte 0x40810594 # ble .L_80396F80
    subi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396A24
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396A24:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396A40
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x48000544 # b .L_80396F80
L_80396A40:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000530 # b .L_80396F80
L_80396A54:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418200F8 # beq .L_80396B60
    lbz 0, 0x1a0(31)
    cmplwi 0, 0x2
    .4byte 0x40820074 # bne .L_80396AE8
    lwz 3, 0x168(31)
    cmpwi 3, 0x1
    .4byte 0x40800500 # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396AB8
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396AB8:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396AD4
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x480004B0 # b .L_80396F80
L_80396AD4:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800049C # b .L_80396F80
L_80396AE8:
    cmplwi 0, 0x3
    .4byte 0x40820494 # bne .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x2
    .4byte 0x40800488 # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396B30
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396B30:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396B4C
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x48000438 # b .L_80396F80
L_80396B4C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000424 # b .L_80396F80
L_80396B60:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182040C # beq .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x0
    .4byte 0x40810400 # ble .L_80396F80
    subi 3, 3, 0x1
    li 0, -0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396BB8
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396BB8:
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396BDC
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396BDC:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396BF8
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x4800038C # b .L_80396F80
L_80396BF8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000378 # b .L_80396F80
L_80396C0C:
    lbz 0, 0x1a1(31)
    cmplwi 0, 0x0
    .4byte 0x408201A8 # bne .L_80396DBC
    lwz 3, 0x160(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x4
    bl fn_80309D48
    cmplwi 3, 0x0
    .4byte 0x418200F8 # beq .L_80396D2C
    lbz 0, 0x1a0(31)
    cmplwi 0, 0x2
    .4byte 0x40820074 # bne .L_80396CB4
    lwz 3, 0x168(31)
    cmpwi 3, 0x1
    .4byte 0x40800334 # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396C84
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396C84:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396CA0
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x480002E4 # b .L_80396F80
L_80396CA0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480002D0 # b .L_80396F80
L_80396CB4:
    cmplwi 0, 0x3
    .4byte 0x408202C8 # bne .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x2
    .4byte 0x408002BC # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396CFC
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396CFC:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396D18
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x4800026C # b .L_80396F80
L_80396D18:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000258 # b .L_80396F80
L_80396D2C:
    lwz 3, 0x160(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x8
    bl fn_80309D48
    cmplwi 3, 0x0
    .4byte 0x41820238 # beq .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x0
    .4byte 0x4081022C # ble .L_80396F80
    subi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396D8C
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396D8C:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396DA8
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x480001DC # b .L_80396F80
L_80396DA8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480001C8 # b .L_80396F80
L_80396DBC:
    lwz 3, 0x160(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D48
    cmplwi 3, 0x0
    .4byte 0x418200F8 # beq .L_80396ED0
    lbz 0, 0x1a0(31)
    cmplwi 0, 0x2
    .4byte 0x40820074 # bne .L_80396E58
    lwz 3, 0x168(31)
    cmpwi 3, 0x1
    .4byte 0x40800190 # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396E28
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396E28:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396E44
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x48000140 # b .L_80396F80
L_80396E44:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800012C # b .L_80396F80
L_80396E58:
    cmplwi 0, 0x3
    .4byte 0x40820124 # bne .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x2
    .4byte 0x40800118 # bge .L_80396F80
    addi 3, 3, 0x1
    li 0, 0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396EA0
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396EA0:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396EBC
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x480000C8 # b .L_80396F80
L_80396EBC:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480000B4 # b .L_80396F80
L_80396ED0:
    lwz 3, 0x160(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D48
    cmplwi 3, 0x0
    .4byte 0x41820094 # beq .L_80396F80
    lwz 3, 0x168(31)
    cmpwi 3, 0x0
    .4byte 0x40810088 # ble .L_80396F80
    subi 3, 3, 0x1
    li 0, -0x1
    stw 3, 0x168(31)
    sth 0, 0x19c(31)
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396F30
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396F30:
    lwz 3, 0x148(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820018 # beq .L_80396F54
    lwz 0, 0x168(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 0, 0x13c(3)
    stw 0, 0x148(31)
L_80396F54:
    lbz 0, 0x1aa(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80396F70
    lwz 3, 0x160(31)
    li 4, 0x9
    bl fn_803037D4
    .4byte 0x48000014 # b .L_80396F80
L_80396F70:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
L_80396F80:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

