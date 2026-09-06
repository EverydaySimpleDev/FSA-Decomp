# fn_803B7F6C - actor@lbl_804AFAB0: fused multi-entry-point vtable body (0x21C, 5 slots)
.section extab, "a"
.balign 4
.global etb_8000F5E4
etb_8000F5E4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000F5E4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F2E8
eti_8001F2E8:
    .4byte fn_803B7F6C
    .4byte 0x0000021C
    .4byte etb_8000F5E4
.size eti_8001F2E8, 12

.text
.balign 4
.global fn_803B7F6C

fn_803B7F6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x294(3)
    cmplwi 0, 0x6
    .4byte 0x418101F8 # bgt .L_803B8178
    lis 4, jumptable_804AFABC@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AFABC@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 4, 0x280(3)
    subi 0, 4, 0x1
    stw 0, 0x280(3)
    lwz 0, 0x280(3)
    cmpwi 0, 0x0
    .4byte 0x408201C8 # bne .L_803B8178
    li 0, 0x1
    stb 0, 0x294(3)
    .4byte 0x480001BC # b .L_803B8178
    lbz 4, 0x296(3)
    addi 0, 4, 0x2
    stb 0, 0x296(3)
    lbz 0, 0x296(3)
    cmplwi 0, 0xfe
    .4byte 0x418001A4 # blt .L_803B8178
    li 0, 0xff
    lis 4, lbl_80529DEC@ha
    stb 0, 0x296(3)
    li 5, 0x2
    li 0, 0x1
    addi 4, 4, lbl_80529DEC@l
    stb 5, 0x294(3)
    stb 0, 0x295(3)
    lwz 0, 0x118(4)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_803B800C
    stw 0, 0x284(3)
    .4byte 0x4800000C # b .L_803B8014
L_803B800C:
    li 0, 0x0
    stw 0, 0x284(3)
L_803B8014:
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    cmpwi 0, 0x4
    .4byte 0x4080000C # bge .L_803B8030
    stw 0, 0x288(3)
    .4byte 0x4800000C # b .L_803B8038
L_803B8030:
    li 0, 0x0
    stw 0, 0x288(3)
L_803B8038:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 0, 0x0
    li 3, 0xff
    lwz 4, 0x20(4)
    stb 0, 0x235c(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235d(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235e(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(4)
    stb 0, 0x235f(4)
    bl fn_80128C58
    li 0, -0x100
    addi 3, 1, 0x8
    stw 0, 0x8(1)
    bl fn_8013A884
    .4byte 0x480000F4 # b .L_803B8178
    lbz 0, 0x295(3)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_803B809C
    .4byte 0x418000E4 # blt .L_803B8178
    .4byte 0x480000E0 # b .L_803B8178
L_803B809C:
    lwz 4, 0x280(3)
    subi 0, 4, 0x1
    stw 0, 0x280(3)
    lwz 0, 0x280(3)
    cmpwi 0, 0x0
    .4byte 0x408100C8 # ble .L_803B8178
    lis 5, lbl_8050DB0C@ha
    li 4, 0x2
    addi 5, 5, lbl_8050DB0C@l
    li 0, 0x1
    lha 5, 0x80(5)
    stw 5, 0x280(3)
    stb 4, 0x295(3)
    stb 0, 0x29b(3)
    .4byte 0x480000A4 # b .L_803B8178
    lwz 4, 0x280(3)
    subi 0, 4, 0x1
    stw 0, 0x280(3)
    lwz 0, 0x280(3)
    cmpwi 0, 0x0
    .4byte 0x4181008C # bgt .L_803B8178
    li 0, 0x3c
    stw 0, 0x280(3)
    .4byte 0x48000080 # b .L_803B8178
    lwz 4, 0x280(3)
    subi 0, 4, 0x1
    stw 0, 0x280(3)
    lwz 0, 0x280(3)
    cmpwi 0, 0x0
    .4byte 0x41810068 # bgt .L_803B8178
    li 0, 0x3c
    stw 0, 0x280(3)
    .4byte 0x4800005C # b .L_803B8178
    lbz 4, 0x296(3)
    cmplwi 4, 0xf5
    .4byte 0x41800018 # blt .L_803B8140
    li 4, 0xff
    li 0, 0x5
    stb 4, 0x296(3)
    stb 0, 0x294(3)
    .4byte 0x4800003C # b .L_803B8178
L_803B8140:
    addi 0, 4, 0xa
    stb 0, 0x296(3)
    .4byte 0x48000030 # b .L_803B8178
    lbz 4, 0x296(3)
    cmplwi 4, 0xa
    .4byte 0x4181001C # bgt .L_803B8170
    li 4, 0x0
    li 0, 0x1
    stb 4, 0x296(3)
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    stb 0, 0x1d(3)
    .4byte 0x4800000C # b .L_803B8178
L_803B8170:
    subi 0, 4, 0xa
    stb 0, 0x296(3)
L_803B8178:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

