# OKAM cluster, part 6/7 (344B). Private helper - calls fn_801AF7D0
# (landed alongside).
.section extab, "a"
.balign 4
.global etb_80007B5C
etb_80007B5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007B5C, 8

.section extabindex, "a"
.balign 4
.global eti_80014A88
eti_80014A88:
    .4byte fn_801AF678
    .4byte 0x00000158
    .4byte etb_80007B5C
.size eti_80014A88, 12

.text
.balign 4
.global fn_801AF678

fn_801AF678:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_801AF7BC
    lwz 4, 0x254(31)
    li 0, 0x5
    stw 4, 0x24c(31)
    lwz 5, 0x24c(31)
    lwz 4, 0x240(31)
    add 4, 5, 4
    stw 4, 0x24c(31)
    stw 0, 0x234(31)
    lwz 0, 0x258(31)
    cmplwi 0, 0x7
    .4byte 0x418100FC # bgt .L_801AF7BC
    lis 4, jumptable_804A34B8@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A34B8@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    clrlwi 0, 0, 30
    stw 0, 0x240(31)
    .4byte 0x480000C8 # b .L_801AF7BC
    lwz 4, 0x240(31)
    addi 0, 4, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    clrlwi 0, 0, 30
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_801AF7BC
    li 4, 0x2
    bl fn_801AF7D0
    li 0, 0x1
    stb 0, 0x25c(31)
    .4byte 0x48000090 # b .L_801AF7BC
    lwz 4, 0x240(31)
    addi 0, 4, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x40810078 # ble .L_801AF7BC
    li 4, 0x0
    bl fn_801AF7D0
    li 0, 0x1
    stb 0, 0x25c(31)
    .4byte 0x48000064 # b .L_801AF7BC
    lwz 4, 0x240(31)
    addi 0, 4, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    clrlwi 0, 0, 30
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_801AF7BC
    li 4, 0x6
    bl fn_801AF7D0
    li 0, 0x1
    stb 0, 0x25c(31)
    .4byte 0x4800002C # b .L_801AF7BC
    lwz 4, 0x240(31)
    addi 0, 4, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x40810014 # ble .L_801AF7BC
    li 4, 0x4
    bl fn_801AF7D0
    li 0, 0x1
    stb 0, 0x25c(31)
L_801AF7BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

