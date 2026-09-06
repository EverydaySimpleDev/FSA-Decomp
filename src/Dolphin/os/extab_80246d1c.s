# Fresh-gap-hunt batch 15 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B458
etb_8000B458:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B458, 8

.global etb_8000B460
etb_8000B460:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B460, 8

.section extabindex, "a"
.balign 4
.global eti_80019978
eti_80019978:
    .4byte fn_80246D1C
    .4byte 0x0000020C
    .4byte etb_8000B458
.size eti_80019978, 12

.global eti_80019984
eti_80019984:
    .4byte fn_80246F28
    .4byte 0x00000204
    .4byte etb_8000B460
.size eti_80019984, 12

.text
.balign 4
.global fn_80246D1C
.global fn_80246F28

fn_80246D1C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    mr 31, 4
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246D48
    li 0, 0x0
    .4byte 0x48000058 # b .L_80246D9C
L_80246D48:
    lbz 0, 0xcee(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246D5C
    li 0, 0x0
    .4byte 0x48000044 # b .L_80246D9C
L_80246D5C:
    lbz 0, 0x1215(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246D70
    li 0, 0x0
    .4byte 0x48000030 # b .L_80246D9C
L_80246D70:
    lbz 0, 0xca0(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246D84
    li 0, 0x0
    .4byte 0x4800001C # b .L_80246D9C
L_80246D84:
    lbz 0, 0xce9(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246D98
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246D9C
L_80246D98:
    li 0, 0x1
L_80246D9C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246DAC
    li 0, 0x0
    .4byte 0x48000144 # b .L_80246EEC
L_80246DAC:
    li 28, 0x0
    mr 27, 28
L_80246DB4:
    lwz 0, 0x4(30)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80246DC8
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80246E28
L_80246DC8:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80246E18
    lwz 26, 0xd60(30)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80246DFC
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80246E28
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80246E28
L_80246DFC:
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_80246E28
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80246E28
L_80246E18:
    lwz 0, 0xd60(30)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80246E28
    addi 28, 28, 0x1
L_80246E28:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80246DB4
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80246E44
    li 3, 0x5
    .4byte 0x4800001C # b .L_80246E5C
L_80246E44:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80246E58
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80246E5C
L_80246E58:
    lwz 3, 0x120c(30)
L_80246E5C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80246ED4
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80246E7C
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_80246E80
L_80246E7C:
    lwz 29, 0x1224(30)
L_80246E80:
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80246E94
    li 0, 0x0
    .4byte 0x4800003C # b .L_80246ECC
L_80246E94:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_80246EBC
L_80246EA0:
    lwz 26, 0xd60(30)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80246EB8
    addi 27, 27, 0x1
L_80246EB8:
    addi 28, 28, 0x1
L_80246EBC:
    lwz 0, 0x4(30)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80246EA0
    addi 0, 27, 0x1
L_80246ECC:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80246EE0
L_80246ED4:
    lbz 0, 0x11ea(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246EE8
L_80246EE0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246EEC
L_80246EE8:
    li 0, 0x1
L_80246EEC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246EFC
    li 3, 0x0
    .4byte 0x4800001C # b .L_80246F14
L_80246EFC:
    lwz 3, 0x11ec(30)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    mr 5, 31
    bl fn_80309D6C
L_80246F14:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80246F28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246F50
    li 0, 0x0
    .4byte 0x48000058 # b .L_80246FA4
L_80246F50:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246F64
    li 0, 0x0
    .4byte 0x48000044 # b .L_80246FA4
L_80246F64:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246F78
    li 0, 0x0
    .4byte 0x48000030 # b .L_80246FA4
L_80246F78:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246F8C
    li 0, 0x0
    .4byte 0x4800001C # b .L_80246FA4
L_80246F8C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246FA0
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246FA4
L_80246FA0:
    li 0, 0x1
L_80246FA4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246FB4
    li 0, 0x0
    .4byte 0x48000144 # b .L_802470F4
L_80246FB4:
    li 29, 0x0
    mr 28, 29
L_80246FBC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80246FD0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80247030
L_80246FD0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80247020
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80247004
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80247030
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80247030
L_80247004:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80247030
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80247030
L_80247020:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80247030
    addi 29, 29, 0x1
L_80247030:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80246FBC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024704C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80247064
L_8024704C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80247060
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80247064
L_80247060:
    lwz 3, 0x120c(31)
L_80247064:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802470DC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80247084
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80247088
L_80247084:
    lwz 30, 0x1224(31)
L_80247088:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024709C
    li 0, 0x0
    .4byte 0x4800003C # b .L_802470D4
L_8024709C:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802470C4
L_802470A8:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802470C0
    addi 28, 28, 0x1
L_802470C0:
    addi 29, 29, 0x1
L_802470C4:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802470A8
    addi 0, 28, 0x1
L_802470D4:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802470E8
L_802470DC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802470F0
L_802470E8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802470F4
L_802470F0:
    li 0, 0x1
L_802470F4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80247104
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80247118
L_80247104:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309D90
L_80247118:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

