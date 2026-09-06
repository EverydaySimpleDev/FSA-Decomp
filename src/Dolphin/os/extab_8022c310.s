# Fresh-gap-hunt batch 14 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A920
etb_8000A920:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A920, 8

.global etb_8000A928
etb_8000A928:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A928, 8

.global etb_8000A930
etb_8000A930:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A930, 8

.global etb_8000A938
etb_8000A938:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A938, 8

.global etb_8000A940
etb_8000A940:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A940, 8

.global etb_8000A948
etb_8000A948:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A948, 8

.section extabindex, "a"
.balign 4
.global eti_800188BC
eti_800188BC:
    .4byte fn_8022C310
    .4byte 0x0000009C
    .4byte etb_8000A920
.size eti_800188BC, 12

.global eti_800188C8
eti_800188C8:
    .4byte fn_8022C3AC
    .4byte 0x000000C0
    .4byte etb_8000A928
.size eti_800188C8, 12

.global eti_800188D4
eti_800188D4:
    .4byte fn_8022C46C
    .4byte 0x000000C0
    .4byte etb_8000A930
.size eti_800188D4, 12

.global eti_800188E0
eti_800188E0:
    .4byte fn_8022C52C
    .4byte 0x000000C0
    .4byte etb_8000A938
.size eti_800188E0, 12

.global eti_800188EC
eti_800188EC:
    .4byte fn_8022C5EC
    .4byte 0x000000C0
    .4byte etb_8000A940
.size eti_800188EC, 12

.global eti_800188F8
eti_800188F8:
    .4byte fn_8022C6AC
    .4byte 0x000000C0
    .4byte etb_8000A948
.size eti_800188F8, 12

.text
.balign 4
.global fn_8022C310
.global fn_8022C3AC
.global fn_8022C46C
.global fn_8022C52C
.global fn_8022C5EC
.global fn_8022C6AC

fn_8022C310:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C330
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022C39C
L_8022C330:
    .4byte 0x4082000C # bne .L_8022C33C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C37C
L_8022C33C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C34C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C37C
L_8022C34C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C35C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C37C
L_8022C35C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C378
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C37C
L_8022C378:
    lbz 0, 0xcac(4)
L_8022C37C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C398
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80246228
    .4byte 0x48000008 # b .L_8022C39C
L_8022C398:
    li 3, 0x0
L_8022C39C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C3AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C3CC
    li 3, 0x0
    .4byte 0x48000094 # b .L_8022C45C
L_8022C3CC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C3DC
    li 3, 0x0
    .4byte 0x48000084 # b .L_8022C45C
L_8022C3DC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C3EC
    li 3, 0x0
    .4byte 0x48000074 # b .L_8022C45C
L_8022C3EC:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C3FC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C43C
L_8022C3FC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C40C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C43C
L_8022C40C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C41C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C43C
L_8022C41C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C438
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C43C
L_8022C438:
    lbz 0, 0xcac(4)
L_8022C43C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C458
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802466B4
    .4byte 0x48000008 # b .L_8022C45C
L_8022C458:
    li 3, 0x0
L_8022C45C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C46C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022C48C
    li 3, 0x0
    .4byte 0x48000094 # b .L_8022C51C
L_8022C48C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C49C
    li 3, 0x0
    .4byte 0x48000084 # b .L_8022C51C
L_8022C49C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C4AC
    li 3, 0x0
    .4byte 0x48000074 # b .L_8022C51C
L_8022C4AC:
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022C4BC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C4FC
L_8022C4BC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C4CC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C4FC
L_8022C4CC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C4DC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C4FC
L_8022C4DC:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C4F8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C4FC
L_8022C4F8:
    lbz 0, 0xcac(5)
L_8022C4FC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C518
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80246904
    .4byte 0x48000008 # b .L_8022C51C
L_8022C518:
    li 3, 0x0
L_8022C51C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C52C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022C54C
    li 3, 0x0
    .4byte 0x48000094 # b .L_8022C5DC
L_8022C54C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C55C
    li 3, 0x0
    .4byte 0x48000084 # b .L_8022C5DC
L_8022C55C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C56C
    li 3, 0x0
    .4byte 0x48000074 # b .L_8022C5DC
L_8022C56C:
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022C57C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C5BC
L_8022C57C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C58C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C5BC
L_8022C58C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C59C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C5BC
L_8022C59C:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C5B8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C5BC
L_8022C5B8:
    lbz 0, 0xcac(5)
L_8022C5BC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C5D8
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80246B10
    .4byte 0x48000008 # b .L_8022C5DC
L_8022C5D8:
    li 3, 0x0
L_8022C5DC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C5EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022C60C
    li 3, 0x0
    .4byte 0x48000094 # b .L_8022C69C
L_8022C60C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C61C
    li 3, 0x0
    .4byte 0x48000084 # b .L_8022C69C
L_8022C61C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C62C
    li 3, 0x0
    .4byte 0x48000074 # b .L_8022C69C
L_8022C62C:
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022C63C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C67C
L_8022C63C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C64C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C67C
L_8022C64C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C65C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C67C
L_8022C65C:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C678
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C67C
L_8022C678:
    lbz 0, 0xcac(5)
L_8022C67C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C698
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80246D1C
    .4byte 0x48000008 # b .L_8022C69C
L_8022C698:
    li 3, 0x0
L_8022C69C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022C6AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C6CC
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000094 # b .L_8022C75C
L_8022C6CC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C6DC
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000084 # b .L_8022C75C
L_8022C6DC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C6EC
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
    .4byte 0x48000074 # b .L_8022C75C
L_8022C6EC:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C6FC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C73C
L_8022C6FC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C70C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C73C
L_8022C70C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C71C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C73C
L_8022C71C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C738
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C73C
L_8022C738:
    lbz 0, 0xcac(4)
L_8022C73C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C758
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80246F28
    .4byte 0x48000008 # b .L_8022C75C
L_8022C758:
    .4byte 0xC022D068 # lfs f1, lbl_80540008@sda21(r0)
L_8022C75C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

