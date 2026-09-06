# Fresh-gap-hunt batch 18 landing (4 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B2F0
etb_8000B2F0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B2F0, 8

.global etb_8000B2F8
etb_8000B2F8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B2F8, 8

.global etb_8000B300
etb_8000B300:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B300, 8

.global etb_8000B308
etb_8000B308:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B308, 8

.section extabindex, "a"
.balign 4
.global eti_8001975C
eti_8001975C:
    .4byte fn_80241498
    .4byte 0x00000038
    .4byte etb_8000B2F0
.size eti_8001975C, 12

.global eti_80019768
eti_80019768:
    .4byte fn_802414DC
    .4byte 0x00000038
    .4byte etb_8000B2F8
.size eti_80019768, 12

.global eti_80019774
eti_80019774:
    .4byte fn_80241544
    .4byte 0x00000038
    .4byte etb_8000B300
.size eti_80019774, 12

.global eti_80019780
eti_80019780:
    .4byte fn_802415CC
    .4byte 0x0000004C
    .4byte etb_8000B308
.size eti_80019780, 12

.text
.balign 4
.global fn_80241498
.global fn_802414D0
.global fn_802414DC
.global fn_80241514
.global fn_80241544
.global fn_8024157C
.global fn_802415CC
.global fn_80241618

fn_80241498:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_802414BC
    mr 3, 0
    bl fn_80236D14
    .4byte 0x48000008 # b .L_802414C0
L_802414BC:
    lbz 3, 0xb7b(3)
L_802414C0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802414D0:
    li 0, 0x1
    stb 0, 0xb7a(3)
    blr

fn_802414DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80241500
    mr 3, 0
    bl fn_80236E3C
    .4byte 0x48000008 # b .L_80241504
L_80241500:
    lbz 3, 0xb7a(3)
L_80241504:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80241514:
    stw 4, 0xc18(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8024153C
    lwz 0, 0x464(3)
    cmpwi 0, 0x3c
    .4byte 0x4080000C # bge .L_8024153C
    li 0, 0x3c
    stw 0, 0x464(3)
L_8024153C:
    li 3, 0x1
    blr

fn_80241544:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80241568
    mr 3, 0
    bl fn_80237060
    .4byte 0x48000008 # b .L_8024156C
L_80241568:
    lwz 3, 0xc18(3)
L_8024156C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024157C:
    lwz 0, 0xc10(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80241598
    cmpwi 4, 0x2
    .4byte 0x41800014 # blt .L_802415A0
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802415A0
L_80241598:
    li 3, 0x0
    blr
L_802415A0:
    stw 4, 0xc14(3)
    li 4, 0x1
    lwz 0, 0x4(3)
    li 3, 0x1
    .4byte 0x80AD9310 # lwz r5, lbl_8053AED0@sda21(r0)
    slw 0, 4, 0
    lbz 4, 0x255(5)
    clrlwi 0, 0, 24
    or 0, 4, 0
    stb 0, 0x255(5)
    blr

fn_802415CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_802415F0
    mr 3, 0
    bl fn_8023725C
    .4byte 0x4800001C # b .L_80241608
L_802415F0:
    lwz 0, 0xc10(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80241604
    li 3, 0x0
    .4byte 0x48000008 # b .L_80241608
L_80241604:
    lwz 3, 0xc14(3)
L_80241608:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80241618:
    stw 4, 0xc10(3)
    lwz 0, 0xc10(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80241634
    li 0, 0x0
    stw 0, 0xc14(3)
    .4byte 0x4800003C # b .L_8024166C
L_80241634:
    .4byte 0x41820038 # beq .L_8024166C
    cmpwi 5, 0x2
    .4byte 0x4180000C # blt .L_80241648
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_8024166C
L_80241648:
    stw 5, 0xc14(3)
    li 4, 0x1
    .4byte 0x80CD9310 # lwz r6, lbl_8053AED0@sda21(r0)
    lwz 0, 0x4(3)
    lbz 5, 0x255(6)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    or 0, 5, 0
    stb 0, 0x255(6)
L_8024166C:
    lwz 0, 0xc10(3)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_802416BC
    .4byte 0x80CD9310 # lwz r6, lbl_8053AED0@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(3)
    lbz 5, 0x255(6)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    or 0, 5, 0
    stb 0, 0x255(6)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802416BC
    lwz 0, 0x464(3)
    cmpwi 0, 0x3c
    .4byte 0x4080000C # bge .L_802416BC
    li 0, 0x3c
    stw 0, 0x464(3)
L_802416BC:
    li 3, 0x1
    blr

