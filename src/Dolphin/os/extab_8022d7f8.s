# Fresh-gap-hunt batch 12 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A9D8
etb_8000A9D8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A9D8, 8

.global etb_8000A9E0
etb_8000A9E0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A9E0, 8

.global etb_8000A9E8
etb_8000A9E8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A9E8, 8

.global etb_8000A9F0
etb_8000A9F0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A9F0, 8

.global etb_8000A9F8
etb_8000A9F8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A9F8, 8

.global etb_8000AA00
etb_8000AA00:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA00, 8

.global etb_8000AA08
etb_8000AA08:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA08, 8

.global etb_8000AA10
etb_8000AA10:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA10, 8

.section extabindex, "a"
.balign 4
.global eti_800189D0
eti_800189D0:
    .4byte fn_8022D7F8
    .4byte 0x0000009C
    .4byte etb_8000A9D8
.size eti_800189D0, 12

.global eti_800189DC
eti_800189DC:
    .4byte fn_8022D894
    .4byte 0x0000009C
    .4byte etb_8000A9E0
.size eti_800189DC, 12

.global eti_800189E8
eti_800189E8:
    .4byte fn_8022D930
    .4byte 0x0000009C
    .4byte etb_8000A9E8
.size eti_800189E8, 12

.global eti_800189F4
eti_800189F4:
    .4byte fn_8022D9CC
    .4byte 0x0000009C
    .4byte etb_8000A9F0
.size eti_800189F4, 12

.global eti_80018A00
eti_80018A00:
    .4byte fn_8022DA68
    .4byte 0x0000009C
    .4byte etb_8000A9F8
.size eti_80018A00, 12

.global eti_80018A0C
eti_80018A0C:
    .4byte fn_8022DB04
    .4byte 0x0000009C
    .4byte etb_8000AA00
.size eti_80018A0C, 12

.global eti_80018A18
eti_80018A18:
    .4byte fn_8022DBA0
    .4byte 0x0000009C
    .4byte etb_8000AA08
.size eti_80018A18, 12

.global eti_80018A24
eti_80018A24:
    .4byte fn_8022DC3C
    .4byte 0x0000009C
    .4byte etb_8000AA10
.size eti_80018A24, 12

.text
.balign 4
.global fn_8022D7F8
.global fn_8022D894
.global fn_8022D930
.global fn_8022D9CC
.global fn_8022DA68
.global fn_8022DB04
.global fn_8022DBA0
.global fn_8022DC3C

fn_8022D7F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022D818
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022D884
L_8022D818:
    .4byte 0x4082000C # bne .L_8022D824
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D864
L_8022D824:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022D834
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D864
L_8022D834:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022D844
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D864
L_8022D844:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D860
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D864
L_8022D860:
    lbz 0, 0xcac(4)
L_8022D864:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022D880
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024FF6C
    .4byte 0x48000008 # b .L_8022D884
L_8022D880:
    li 3, 0x0
L_8022D884:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022D894:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022D8B4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022D920
L_8022D8B4:
    .4byte 0x4082000C # bne .L_8022D8C0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D900
L_8022D8C0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022D8D0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D900
L_8022D8D0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022D8E0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D900
L_8022D8E0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D8FC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D900
L_8022D8FC:
    lbz 0, 0xcac(4)
L_8022D900:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022D91C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802517E4
    .4byte 0x48000008 # b .L_8022D920
L_8022D91C:
    li 3, 0x0
L_8022D920:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022D930:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022D950
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022D9BC
L_8022D950:
    .4byte 0x4082000C # bne .L_8022D95C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022D99C
L_8022D95C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022D96C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022D99C
L_8022D96C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022D97C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022D99C
L_8022D97C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022D998
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022D99C
L_8022D998:
    lbz 0, 0xcac(4)
L_8022D99C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022D9B8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_CheckField1240Eq14
    .4byte 0x48000008 # b .L_8022D9BC
L_8022D9B8:
    li 3, 0x0
L_8022D9BC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022D9CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022D9EC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DA58
L_8022D9EC:
    .4byte 0x4082000C # bne .L_8022D9F8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DA38
L_8022D9F8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DA08
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DA38
L_8022DA08:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DA18
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DA38
L_8022DA18:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DA34
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DA38
L_8022DA34:
    lbz 0, 0xcac(4)
L_8022DA38:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DA54
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80250090
    .4byte 0x48000008 # b .L_8022DA58
L_8022DA54:
    li 3, 0x0
L_8022DA58:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DA68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DA88
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DAF4
L_8022DA88:
    .4byte 0x4082000C # bne .L_8022DA94
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DAD4
L_8022DA94:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DAA4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DAD4
L_8022DAA4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DAB4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DAD4
L_8022DAB4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DAD0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DAD4
L_8022DAD0:
    lbz 0, 0xcac(4)
L_8022DAD4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DAF0
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80250ACC
    .4byte 0x48000008 # b .L_8022DAF4
L_8022DAF0:
    li 3, 0x0
L_8022DAF4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DB04:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DB24
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DB90
L_8022DB24:
    .4byte 0x4082000C # bne .L_8022DB30
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DB70
L_8022DB30:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DB40
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DB70
L_8022DB40:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DB50
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DB70
L_8022DB50:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DB6C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DB70
L_8022DB6C:
    lbz 0, 0xcac(4)
L_8022DB70:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DB8C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80250D30
    .4byte 0x48000008 # b .L_8022DB90
L_8022DB8C:
    li 3, 0x0
L_8022DB90:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DBA0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DBC0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DC2C
L_8022DBC0:
    .4byte 0x4082000C # bne .L_8022DBCC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DC0C
L_8022DBCC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DBDC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DC0C
L_8022DBDC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DBEC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DC0C
L_8022DBEC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DC08
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DC0C
L_8022DC08:
    lbz 0, 0xcac(4)
L_8022DC0C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DC28
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024F630
    .4byte 0x48000008 # b .L_8022DC2C
L_8022DC28:
    li 3, 0x0
L_8022DC2C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DC3C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DC5C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DCC8
L_8022DC5C:
    .4byte 0x4082000C # bne .L_8022DC68
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DCA8
L_8022DC68:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DC78
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DCA8
L_8022DC78:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DC88
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DCA8
L_8022DC88:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DCA4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DCA8
L_8022DCA4:
    lbz 0, 0xcac(4)
L_8022DCA8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DCC4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8028FC2C
    .4byte 0x48000008 # b .L_8022DCC8
L_8022DCC4:
    li 3, 0x0
L_8022DCC8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

