# Fresh-gap-hunt batch 28 landing (non-ctors stragglers, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B318
etb_8000B318:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B318, 8

.global etb_8000B320
etb_8000B320:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B320, 8

.global etb_8000B328
etb_8000B328:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B328, 8

.global etb_8000B330
etb_8000B330:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B330, 8

.global etb_8000B338
etb_8000B338:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B338, 8

.section extabindex, "a"
.balign 4
.global eti_80019798
eti_80019798:
    .4byte fn_802416FC
    .4byte 0x00000098
    .4byte etb_8000B318
.size eti_80019798, 12

.global eti_800197A4
eti_800197A4:
    .4byte fn_80241794
    .4byte 0x00000038
    .4byte etb_8000B320
.size eti_800197A4, 12

.global eti_800197B0
eti_800197B0:
    .4byte fn_802417CC
    .4byte 0x00000038
    .4byte etb_8000B328
.size eti_800197B0, 12

.global eti_800197BC
eti_800197BC:
    .4byte fn_80241804
    .4byte 0x00000060
    .4byte etb_8000B330
.size eti_800197BC, 12

.global eti_800197C8
eti_800197C8:
    .4byte fn_80241864
    .4byte 0x00000038
    .4byte etb_8000B338
.size eti_800197C8, 12

.text
.balign 4
.global fn_802416FC
.global fn_80241794
.global fn_802417CC
.global fn_80241804
.global fn_80241864

fn_802416FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80241730
    mr 3, 0
    bl fn_80237524
    .4byte 0x48000050 # b .L_8024177C
L_80241730:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8024175C
    lwz 0, 0xbfc(30)
    cmpwi 0, 0x0
    .4byte 0x40810034 # ble .L_8024177C
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8024175C
    .4byte 0x48000024 # b .L_8024177C
L_8024175C:
    lwz 0, 0xc08(30)
    add 0, 0, 31
    stw 0, 0xc08(30)
    lwz 0, 0xc08(30)
    cmpwi 0, 0x180
    .4byte 0x4081000C # ble .L_8024177C
    li 0, 0x180
    stw 0, 0xc08(30)
L_8024177C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80241794:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_802417B8
    mr 3, 0
    bl fn_802375B0
    .4byte 0x48000008 # b .L_802417BC
L_802417B8:
    lwz 3, 0xc08(3)
L_802417BC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802417CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_802417F0
    mr 3, 0
    bl fn_80237810
    .4byte 0x48000008 # b .L_802417F4
L_802417F0:
    lwz 3, 0xbf8(3)
L_802417F4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80241804:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80241828
    mr 3, 0
    bl fn_8023764C
    .4byte 0x48000030 # b .L_80241854
L_80241828:
    cmpwi 4, 0x0
    .4byte 0x40800010 # bge .L_8024183C
    li 0, 0x0
    stw 0, 0xbfc(3)
    .4byte 0x4800001C # b .L_80241854
L_8024183C:
    lwz 0, 0xbf8(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_80241850
    stw 0, 0xbfc(3)
    .4byte 0x48000008 # b .L_80241854
L_80241850:
    stw 4, 0xbfc(3)
L_80241854:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80241864:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80241888
    mr 3, 0
    bl fn_802376D8
    .4byte 0x48000008 # b .L_8024188C
L_80241888:
    lwz 3, 0xbfc(3)
L_8024188C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

