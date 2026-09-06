# Fresh-gap-hunt batch 25 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B478
etb_8000B478:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B478, 8

.global etb_8000B480
etb_8000B480:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B480, 8

.section extabindex, "a"
.balign 4
.global eti_800199A8
eti_800199A8:
    .4byte fn_80247534
    .4byte 0x00000030
    .4byte etb_8000B478
.size eti_800199A8, 12

.global eti_800199B4
eti_800199B4:
    .4byte fn_80247564
    .4byte 0x00000030
    .4byte etb_8000B480
.size eti_800199B4, 12

.text
.balign 4
.global fn_80247534
.global fn_80247564

fn_80247534:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x11ec(3)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80247564:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x11ec(3)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A3B0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

