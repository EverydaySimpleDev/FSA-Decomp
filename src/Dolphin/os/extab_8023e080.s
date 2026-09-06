.section extab, "a"
.balign 4
.global etb_8000B1A0
etb_8000B1A0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1A0, 8

.global etb_8000B1A8
etb_8000B1A8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1A8, 8

.global etb_8000B1B0
etb_8000B1B0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1B0, 8

.global etb_8000B1B8
etb_8000B1B8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1B8, 8

.global etb_8000B1C0
etb_8000B1C0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1C0, 8

.global etb_8000B1C8
etb_8000B1C8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1C8, 8

.global etb_8000B1D0
etb_8000B1D0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1D0, 8

.global etb_8000B1D8
etb_8000B1D8:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000B1D8, 8

.global etb_8000B1E0
etb_8000B1E0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1E0, 8

.global etb_8000B1E8
etb_8000B1E8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1E8, 8

.global etb_8000B1F0
etb_8000B1F0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1F0, 8

.global etb_8000B1F8
etb_8000B1F8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B1F8, 8

.global etb_8000B200
etb_8000B200:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B200, 8

.global etb_8000B208
etb_8000B208:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B208, 8

.global etb_8000B210
etb_8000B210:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B210, 8

.global etb_8000B218
etb_8000B218:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B218, 8

.global etb_8000B220
etb_8000B220:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000B220, 8

.global etb_8000B228
etb_8000B228:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000B228, 8

.section extabindex, "a"
.balign 4
.global eti_8001957C
eti_8001957C:
    .4byte fn_8023E080
    .4byte 0x0000008C
    .4byte etb_8000B1A0
.size eti_8001957C, 12

.global eti_80019588
eti_80019588:
    .4byte fn_8023E3B8
    .4byte 0x000000A4
    .4byte etb_8000B1A8
.size eti_80019588, 12

.global eti_80019594
eti_80019594:
    .4byte fn_8023E7B0
    .4byte 0x000000A4
    .4byte etb_8000B1B0
.size eti_80019594, 12

.global eti_800195A0
eti_800195A0:
    .4byte fn_8023E854
    .4byte 0x0000009C
    .4byte etb_8000B1B8
.size eti_800195A0, 12

.global eti_800195AC
eti_800195AC:
    .4byte fn_8023E8F0
    .4byte 0x0000009C
    .4byte etb_8000B1C0
.size eti_800195AC, 12

.global eti_800195B8
eti_800195B8:
    .4byte fn_8023E98C
    .4byte 0x0000009C
    .4byte etb_8000B1C8
.size eti_800195B8, 12

.global eti_800195C4
eti_800195C4:
    .4byte fn_8023EA28
    .4byte 0x0000009C
    .4byte etb_8000B1D0
.size eti_800195C4, 12

.global eti_800195D0
eti_800195D0:
    .4byte fn_8023EAC4
    .4byte 0x000000F4
    .4byte etb_8000B1D8
.size eti_800195D0, 12

.global eti_800195DC
eti_800195DC:
    .4byte fn_8023EBB8
    .4byte 0x0000009C
    .4byte etb_8000B1E0
.size eti_800195DC, 12

.global eti_800195E8
eti_800195E8:
    .4byte fn_8023EC54
    .4byte 0x0000009C
    .4byte etb_8000B1E8
.size eti_800195E8, 12

.global eti_800195F4
eti_800195F4:
    .4byte fn_8023ECF0
    .4byte 0x0000009C
    .4byte etb_8000B1F0
.size eti_800195F4, 12

.global eti_80019600
eti_80019600:
    .4byte fn_8023ED8C
    .4byte 0x0000009C
    .4byte etb_8000B1F8
.size eti_80019600, 12

.global eti_8001960C
eti_8001960C:
    .4byte fn_8023EE28
    .4byte 0x0000008C
    .4byte etb_8000B200
.size eti_8001960C, 12

.global eti_80019618
eti_80019618:
    .4byte fn_8023EEB4
    .4byte 0x0000009C
    .4byte etb_8000B208
.size eti_80019618, 12

.global eti_80019624
eti_80019624:
    .4byte fn_8023EF50
    .4byte 0x0000009C
    .4byte etb_8000B210
.size eti_80019624, 12

.global eti_80019630
eti_80019630:
    .4byte fn_8023EFEC
    .4byte 0x0000009C
    .4byte etb_8000B218
.size eti_80019630, 12

.global eti_8001963C
eti_8001963C:
    .4byte fn_8023F088
    .4byte 0x0000014C
    .4byte etb_8000B220
.size eti_8001963C, 12

.global eti_80019648
eti_80019648:
    .4byte fn_8023F1D4
    .4byte 0x00000090
    .4byte etb_8000B228
.size eti_80019648, 12

.text
.balign 4
.global fn_8023E080
.global fn_8023E10C
.global fn_8023E190
.global fn_8023E214
.global fn_8023E2A0
.global fn_8023E32C
.global fn_8023E3B8
.global fn_8023E45C
.global fn_8023E4E4
.global fn_8023E578
.global fn_8023E604
.global fn_8023E690
.global fn_8023E724
.global fn_8023E7B0
.global fn_8023E854
.global fn_8023E8F0
.global fn_8023E98C
.global fn_8023EA28
.global fn_8023EAC4
.global fn_8023EBB8
.global fn_8023EC54
.global fn_8023ECF0
.global fn_8023ED8C
.global fn_8023EE28
.global fn_8023EEB4
.global fn_8023EF50
.global fn_8023EFEC
.global fn_8023F088
.global fn_8023F1D4

fn_8023E080:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8023E0FC
    .4byte 0x4082000C # bne .L_8023E0A4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E0E4
L_8023E0A4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E0B4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E0E4
L_8023E0B4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E0C4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E0E4
L_8023E0C4:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E0E0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E0E4
L_8023E0E0:
    lbz 0, 0xcac(5)
L_8023E0E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8023E0FC
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl Fairy_SetField_0xd28
L_8023E0FC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023E10C:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E120
    li 3, 0x0
    blr
L_8023E120:
    .4byte 0x4082000C # bne .L_8023E12C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E16C
L_8023E12C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E13C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E16C
L_8023E13C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E14C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E16C
L_8023E14C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E168
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E16C
L_8023E168:
    lbz 0, 0xcac(4)
L_8023E16C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E188
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lwz 3, 0xce4(3)
    blr
L_8023E188:
    li 3, 0x0
    blr

fn_8023E190:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E1A4
    li 3, 0x0
    blr
L_8023E1A4:
    .4byte 0x4082000C # bne .L_8023E1B0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E1F0
L_8023E1B0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E1C0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E1F0
L_8023E1C0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E1D0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E1F0
L_8023E1D0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E1EC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E1F0
L_8023E1EC:
    lbz 0, 0xcac(4)
L_8023E1F0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E20C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lwz 3, 0xce0(3)
    blr
L_8023E20C:
    li 3, 0x0
    blr

fn_8023E214:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E22C
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr
L_8023E22C:
    .4byte 0x4082000C # bne .L_8023E238
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E278
L_8023E238:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E248
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E278
L_8023E248:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E258
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E278
L_8023E258:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E274
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E278
L_8023E274:
    lbz 0, 0xcac(4)
L_8023E278:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E294
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    addi 3, 3, 0xcd4
    blr
L_8023E294:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr

fn_8023E2A0:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E2B8
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr
L_8023E2B8:
    .4byte 0x4082000C # bne .L_8023E2C4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E304
L_8023E2C4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E2D4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E304
L_8023E2D4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E2E4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E304
L_8023E2E4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E300
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E304
L_8023E300:
    lbz 0, 0xcac(4)
L_8023E304:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E320
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    addi 3, 3, 0xcc8
    blr
L_8023E320:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr

fn_8023E32C:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E344
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr
L_8023E344:
    .4byte 0x4082000C # bne .L_8023E350
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E390
L_8023E350:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E360
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E390
L_8023E360:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E370
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E390
L_8023E370:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E38C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E390
L_8023E38C:
    lbz 0, 0xcac(4)
L_8023E390:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E3AC
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    addi 3, 3, 0xcb0
    blr
L_8023E3AC:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr

fn_8023E3B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E3DC
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    .4byte 0x48000074 # b .L_8023E44C
L_8023E3DC:
    .4byte 0x4082000C # bne .L_8023E3E8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E428
L_8023E3E8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E3F8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E428
L_8023E3F8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E408
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E428
L_8023E408:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E424
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E428
L_8023E424:
    lbz 0, 0xcac(4)
L_8023E428:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E444
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024C378
    .4byte 0x4800000C # b .L_8023E44C
L_8023E444:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
L_8023E44C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023E45C:
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8023E470
    li 3, 0x0
    blr
L_8023E470:
    .4byte 0x4082000C # bne .L_8023E47C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E4BC
L_8023E47C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E48C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E4BC
L_8023E48C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E49C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E4BC
L_8023E49C:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E4B8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E4BC
L_8023E4B8:
    lbz 0, 0xcac(5)
L_8023E4BC:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_8023E4DC
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 0, 0x4(3)
    add 3, 0, 4
    lbz 3, 0x284(3)
    blr
L_8023E4DC:
    li 3, 0x0
    blr

fn_8023E4E4:
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x40820010 # bne .L_8023E4FC
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr
L_8023E4FC:
    .4byte 0x4082000C # bne .L_8023E508
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E548
L_8023E508:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E518
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E548
L_8023E518:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E528
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E548
L_8023E528:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E544
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E548
L_8023E544:
    lbz 0, 0xcac(5)
L_8023E548:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8023E56C
    slwi 0, 3, 2
    mulli 3, 4, 0xc
    add 4, 6, 0
    lwz 0, 0x4(4)
    addi 3, 3, 0x38
    add 3, 0, 3
    blr
L_8023E56C:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr

fn_8023E578:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E590
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr
L_8023E590:
    .4byte 0x4082000C # bne .L_8023E59C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E5DC
L_8023E59C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E5AC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E5DC
L_8023E5AC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E5BC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E5DC
L_8023E5BC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E5D8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E5DC
L_8023E5D8:
    lbz 0, 0xcac(4)
L_8023E5DC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E5F8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    addi 3, 3, 0x14
    blr
L_8023E5F8:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr

fn_8023E604:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E61C
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr
L_8023E61C:
    .4byte 0x4082000C # bne .L_8023E628
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E668
L_8023E628:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E638
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E668
L_8023E638:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E648
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E668
L_8023E648:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E664
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E668
L_8023E664:
    lbz 0, 0xcac(4)
L_8023E668:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E684
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    addi 3, 3, 0x2c4
    blr
L_8023E684:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr

fn_8023E690:
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    beqlr
    .4byte 0x4082000C # bne .L_8023E6A8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E6E8
L_8023E6A8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E6B8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E6E8
L_8023E6B8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E6C8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E6E8
L_8023E6C8:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E6E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E6E8
L_8023E6E4:
    lbz 0, 0xcac(5)
L_8023E6E8:
    clrlwi. 0, 0, 24
    beqlr
    slwi 0, 3, 2
    lfs 2, 0x0(4)
    add 3, 6, 0
    lfs 1, 0x4(4)
    lwz 3, 0x4(3)
    lfs 0, 0x8(4)
    stfs 2, 0x8(3)
    stfs 1, 0xc(3)
    stfs 0, 0x10(3)
    stfs 2, 0x2c(3)
    stfs 1, 0x30(3)
    stfs 0, 0x34(3)
    blr

fn_8023E724:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E73C
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr
L_8023E73C:
    .4byte 0x4082000C # bne .L_8023E748
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E788
L_8023E748:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E758
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E788
L_8023E758:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E768
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E788
L_8023E768:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E784
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E788
L_8023E784:
    lbz 0, 0xcac(4)
L_8023E788:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E7A4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    addi 3, 3, 0x8
    blr
L_8023E7A4:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    blr

fn_8023E7B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820010 # bne .L_8023E7D4
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
    .4byte 0x48000074 # b .L_8023E844
L_8023E7D4:
    .4byte 0x4082000C # bne .L_8023E7E0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E820
L_8023E7E0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E7F0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E820
L_8023E7F0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E800
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E820
L_8023E800:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E81C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E820
L_8023E81C:
    lbz 0, 0xcac(4)
L_8023E820:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E83C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_GetModeSubStructPtr
    .4byte 0x4800000C # b .L_8023E844
L_8023E83C:
    lis 3, lbl_804CF460@ha
    addi 3, 3, lbl_804CF460@l
L_8023E844:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023E854:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E874
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023E8E0
L_8023E874:
    .4byte 0x4082000C # bne .L_8023E880
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E8C0
L_8023E880:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E890
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E8C0
L_8023E890:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E8A0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E8C0
L_8023E8A0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E8BC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E8C0
L_8023E8BC:
    lbz 0, 0xcac(4)
L_8023E8C0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E8DC
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024F5E4
    .4byte 0x48000008 # b .L_8023E8E0
L_8023E8DC:
    li 3, 0x0
L_8023E8E0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023E8F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E910
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023E97C
L_8023E910:
    .4byte 0x4082000C # bne .L_8023E91C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E95C
L_8023E91C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E92C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E95C
L_8023E92C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E93C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E95C
L_8023E93C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E958
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E95C
L_8023E958:
    lbz 0, 0xcac(4)
L_8023E95C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023E978
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F2CC
    .4byte 0x48000008 # b .L_8023E97C
L_8023E978:
    li 3, 0x0
L_8023E97C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023E98C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E9AC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023EA18
L_8023E9AC:
    .4byte 0x4082000C # bne .L_8023E9B8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E9F8
L_8023E9B8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E9C8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E9F8
L_8023E9C8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E9D8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E9F8
L_8023E9D8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023E9F4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E9F8
L_8023E9F4:
    lbz 0, 0xcac(4)
L_8023E9F8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023EA14
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F418
    .4byte 0x48000008 # b .L_8023EA18
L_8023EA14:
    li 3, 0x0
L_8023EA18:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023EA28:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023EA48
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023EAB4
L_8023EA48:
    .4byte 0x4082000C # bne .L_8023EA54
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023EA94
L_8023EA54:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023EA64
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023EA94
L_8023EA64:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023EA74
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023EA94
L_8023EA74:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023EA90
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023EA94
L_8023EA90:
    lbz 0, 0xcac(4)
L_8023EA94:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023EAB0
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F448
    .4byte 0x48000008 # b .L_8023EAB4
L_8023EAB0:
    li 3, 0x0
L_8023EAB4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023EAC4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023EAF4
    li 3, 0x0
    .4byte 0x480000AC # b .L_8023EB9C
L_8023EAF4:
    li 30, 0x0
    li 31, 0x0
L_8023EAFC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023EB10
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023EB4C
L_8023EB10:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023EB20
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023EB4C
L_8023EB20:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023EB30
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023EB4C
L_8023EB30:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023EB48
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023EB4C
L_8023EB48:
    lbz 0, 0xcac(3)
L_8023EB4C:
    clrlwi. 0, 0, 24
    .4byte 0x41820038 # beq .L_8023EB88
    mr 3, 29
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8023EB88
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_8025F484
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023EB88
    li 3, 0x1
    .4byte 0x48000018 # b .L_8023EB9C
L_8023EB88:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF68 # blt .L_8023EAFC
    li 3, 0x0
L_8023EB9C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023EBB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023EBD8
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023EC44
L_8023EBD8:
    .4byte 0x4082000C # bne .L_8023EBE4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023EC24
L_8023EBE4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023EBF4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023EC24
L_8023EBF4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023EC04
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023EC24
L_8023EC04:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023EC20
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023EC24
L_8023EC20:
    lbz 0, 0xcac(4)
L_8023EC24:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023EC40
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F500
    .4byte 0x48000008 # b .L_8023EC44
L_8023EC40:
    li 3, 0x0
L_8023EC44:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023EC54:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023EC74
    li 3, -0x1
    .4byte 0x48000070 # b .L_8023ECE0
L_8023EC74:
    .4byte 0x4082000C # bne .L_8023EC80
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023ECC0
L_8023EC80:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023EC90
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023ECC0
L_8023EC90:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023ECA0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023ECC0
L_8023ECA0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023ECBC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023ECC0
L_8023ECBC:
    lbz 0, 0xcac(4)
L_8023ECC0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023ECDC
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F534
    .4byte 0x48000008 # b .L_8023ECE0
L_8023ECDC:
    li 3, -0x1
L_8023ECE0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023ECF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023ED10
    li 3, -0x1
    .4byte 0x48000070 # b .L_8023ED7C
L_8023ED10:
    .4byte 0x4082000C # bne .L_8023ED1C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023ED5C
L_8023ED1C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023ED2C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023ED5C
L_8023ED2C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023ED3C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023ED5C
L_8023ED3C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023ED58
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023ED5C
L_8023ED58:
    lbz 0, 0xcac(4)
L_8023ED5C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023ED78
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F55C
    .4byte 0x48000008 # b .L_8023ED7C
L_8023ED78:
    li 3, -0x1
L_8023ED7C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023ED8C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023EDAC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023EE18
L_8023EDAC:
    .4byte 0x4082000C # bne .L_8023EDB8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023EDF8
L_8023EDB8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023EDC8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023EDF8
L_8023EDC8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023EDD8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023EDF8
L_8023EDD8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023EDF4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023EDF8
L_8023EDF4:
    lbz 0, 0xcac(4)
L_8023EDF8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023EE14
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F590
    .4byte 0x48000008 # b .L_8023EE18
L_8023EE14:
    li 3, 0x0
L_8023EE18:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023EE28:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_8023EEA4
    .4byte 0x4082000C # bne .L_8023EE4C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023EE8C
L_8023EE4C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023EE5C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023EE8C
L_8023EE5C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023EE6C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023EE8C
L_8023EE6C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023EE88
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023EE8C
L_8023EE88:
    lbz 0, 0xcac(4)
L_8023EE8C:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8023EEA4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F5CC
L_8023EEA4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023EEB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023EED4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023EF40
L_8023EED4:
    .4byte 0x4082000C # bne .L_8023EEE0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023EF20
L_8023EEE0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023EEF0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023EF20
L_8023EEF0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023EF00
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023EF20
L_8023EF00:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023EF1C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023EF20
L_8023EF1C:
    lbz 0, 0xcac(4)
L_8023EF20:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023EF3C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F648
    .4byte 0x48000008 # b .L_8023EF40
L_8023EF3C:
    li 3, 0x0
L_8023EF40:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023EF50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023EF70
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023EFDC
L_8023EF70:
    .4byte 0x4082000C # bne .L_8023EF7C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023EFBC
L_8023EF7C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023EF8C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023EFBC
L_8023EF8C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023EF9C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023EFBC
L_8023EF9C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023EFB8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023EFBC
L_8023EFB8:
    lbz 0, 0xcac(4)
L_8023EFBC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023EFD8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F668
    .4byte 0x48000008 # b .L_8023EFDC
L_8023EFD8:
    li 3, 0x0
L_8023EFDC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023EFEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023F00C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023F078
L_8023F00C:
    .4byte 0x4082000C # bne .L_8023F018
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023F058
L_8023F018:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023F028
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023F058
L_8023F028:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023F038
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023F058
L_8023F038:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023F054
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023F058
L_8023F054:
    lbz 0, 0xcac(4)
L_8023F058:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023F074
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8025F684
    .4byte 0x48000008 # b .L_8023F078
L_8023F074:
    li 3, 0x0
L_8023F078:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023F088:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820110 # beq .L_8023F1B8
    lis 3, 0x19
    li 0, 0x4
    addi 4, 3, 0x660d
    .4byte 0xC042D08C # lfs f2, lbl_8054002C@sda21(r0)
    .4byte 0xC022D07C # lfs f1, lbl_8054001C@sda21(r0)
    li 7, 0x0
    mtctr 0
L_8023F0C8:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    cmpwi 0, 0x4
    .4byte 0x41800008 # blt .L_8023F114
    li 0, 0x3
L_8023F114:
    mulli 8, 0, 0xc
    addi 3, 7, 0x14
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    addi 7, 7, 0xc
    mr 5, 3
    addi 6, 8, 0x14
    add 3, 0, 3
    add 5, 0, 5
    add 6, 0, 6
    psq_l 3, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    addi 3, 8, 0x14
    psq_l 5, 0x0(6), 0, 0
    lfs 4, 0x8(6)
    psq_st 3, 0xc(1), 0, 0
    psq_st 5, 0x0(5), 0, 0
    stfs 4, 0x8(5)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    stfs 0, 0x14(1)
    add 3, 0, 3
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    .4byte 0x4200FF5C # bdnz .L_8023F0C8
    li 31, 0x0
    li 29, 0x0
    mr 30, 31
L_8023F17C:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x64
    addi 4, 30, 0x14
    add 6, 5, 31
    lbzx 7, 5, 0
    lwz 3, 0x4(6)
    add 4, 5, 4
    lwz 5, 0x44(6)
    lwz 6, 0x54(6)
    bl fn_80252F80
    addi 29, 29, 0x1
    addi 30, 30, 0xc
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FFC8 # blt .L_8023F17C
L_8023F1B8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8023F1D4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    slwi 31, 3, 2
    mr 26, 3
    mr 27, 4
    mr 28, 5
    mr 29, 6
    mr 30, 7
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    add 3, 0, 31
    lwz 3, 0x4(3)
    bl fn_80252F80
    mulli 3, 26, 0xc
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    psq_l 1, 0x0(27), 0, 0
    lfs 0, 0x8(27)
    addi 3, 3, 0x14
    add 3, 0, 3
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    add 3, 0, 31
    stw 28, 0x44(3)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    add 3, 0, 31
    stw 29, 0x54(3)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    add 3, 0, 26
    stb 30, 0x64(3)
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

