# fn_803A8884 - small class (dtor fn_803A87A8, already landed):
# constructor (0x354). Allocates via fn_80084370 (operator new, x2), calls
# fn_80083A68, and several helpers from the still-unexamined shared
# subsystems (fn_802F93F4/802F9714/802FF798/803EE254/803FCBC4/80458xxx).
# This class only overrides its destructor - lbl_804AF878's own vtable is
# just 4 words (0,0,dtor,0), with the earlier "vt+0x20 slot" read against
# it in actor #7's investigation actually landing in UNRELATED adjacent
# data, not a real multi-inheritance sub-view as first suspected - CORRECTED
# from [[project_fsa_901kb_gap_roster]]'s earlier note.
.section extab, "a"
.balign 4
.global etb_8000F394
etb_8000F394:
    .4byte 0x10080000
    .4byte 0x00000278
    .4byte 0x00000018
    .4byte 0x00000290
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000F394, 40

.section extabindex, "a"
.balign 4
.global eti_8001F0A8
eti_8001F0A8:
    .4byte fn_803A8884
    .4byte 0x00000354
    .4byte etb_8000F394
.size eti_8001F0A8, 12

.text
.balign 4
.global fn_803A8884

fn_803A8884:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, lbl_804AF878@ha
    lis 4, lbl_80529DEC@ha
    stw 0, 0x14(1)
    addi 0, 5, lbl_804AF878@l
    lis 6, lbl_804761A0@ha
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_80529DEC@l
    stw 30, 0x8(1)
    addi 30, 6, lbl_804761A0@l
    stw 0, 0x0(31)
    lwz 3, 0x8(3)
    bl fn_80083A68
    li 0, 0x4
    lis 3, lbl_80529DEC@ha
    stw 0, 0xc(31)
    addi 4, 3, lbl_80529DEC@l
    lbz 0, 0x242(4)
    cmplwi 0, 0x0
    .4byte 0x40820210 # bne .L_803A8AE8
    li 0, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 0, 0x242(4)
    lwz 3, 0x20(3)
    bl fn_802FF798
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x18
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x7000
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x30
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x48
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x4000
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x30
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x58
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x30
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x2364(3)
L_803A8AE8:
    li 3, 0x364
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_803A8AFC
    bl fn_803EE254
L_803A8AFC:
    stw 30, 0x4(31)
    li 3, 0x354
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_803A8B14
    bl fn_803FCBC4
L_803A8B14:
    stw 30, 0x8(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x1a
    .4byte 0x41820040 # beq .L_803A8B68
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x1a
    li 6, 0x0
    bl fn_80458FF0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1a
    li 5, 0x1
    bl fn_80458408
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x248(3)
    .4byte 0x48000030 # b .L_803A8B94
L_803A8B68:
    lis 4, lbl_80529DEC@ha
    addi 30, 4, lbl_80529DEC@l
    lbz 0, 0x248(30)
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_803A8B94
    lis 4, 0x100
    li 5, 0x1
    addi 4, 4, 0x1a
    bl fn_80458408
    li 0, 0x1
    stb 0, 0x248(30)
L_803A8B94:
    lis 3, lbl_80529DEC@ha
    li 4, 0x3
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0xc(3)
    bl fn_804580DC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_803A8BB8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458090
L_803A8BB8:
    .4byte 0x93ED91D8 # stw r31, lbl_8053AD98@sda21(r0)
    mr 3, 31
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

