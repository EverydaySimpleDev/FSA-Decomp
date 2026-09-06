# fn_803A86A4 - actor@lbl_804AF860: vtable-slot function (0x104)
# Calls fn_803EDBF0 (x3)/fn_803FC5E4 (x2), same shared subsystem.
.section extab, "a"
.balign 4
.global etb_8000F384
etb_8000F384:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F384, 8

.section extabindex, "a"
.balign 4
.global eti_8001F090
eti_8001F090:
    .4byte fn_803A86A4
    .4byte 0x00000104
    .4byte etb_8000F384
.size eti_8001F090, 12

.text
.balign 4
.global fn_803A86A4

fn_803A86A4:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x14(1)
    li 0, 0x4
    stw 31, 0xc(1)
    addi 31, 4, lbl_80529DEC@l
    stw 0, 0xc(3)
    lbz 0, 0x237(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_803A86D8
    cmplwi 0, 0x4
    .4byte 0x4082008C # bne .L_803A8760
L_803A86D8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820064 # beq .L_803A8748
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803A8704
    lwz 3, 0x4(3)
    li 4, 0x2
    bl fn_803EDBF0
    .4byte 0x48000010 # b .L_803A8710
L_803A8704:
    lwz 3, 0x4(3)
    li 4, 0x1
    bl fn_803EDBF0
L_803A8710:
    lbz 0, 0x237(31)
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_803A8728
    li 0, 0x9
    stb 0, 0x237(31)
    .4byte 0x48000070 # b .L_803A8794
L_803A8728:
    cmplwi 0, 0x4
    .4byte 0x40820010 # bne .L_803A873C
    li 0, 0x7
    stb 0, 0x237(31)
    .4byte 0x4800005C # b .L_803A8794
L_803A873C:
    li 0, 0x0
    stb 0, 0x237(31)
    .4byte 0x48000050 # b .L_803A8794
L_803A8748:
    lwz 3, 0x8(3)
    li 4, 0x1
    bl fn_803FC5E4
    li 0, 0x0
    stb 0, 0x237(31)
    .4byte 0x48000038 # b .L_803A8794
L_803A8760:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803A8780
    lwz 3, 0x4(3)
    li 4, 0x0
    bl fn_803EDBF0
    .4byte 0x48000010 # b .L_803A878C
L_803A8780:
    lwz 3, 0x8(3)
    li 4, 0x0
    bl fn_803FC5E4
L_803A878C:
    li 0, 0x0
    stb 0, 0x237(31)
L_803A8794:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

