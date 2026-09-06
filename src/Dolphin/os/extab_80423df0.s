# fn_80423DF0 - actor@lbl_804B146C: fused multi-entry-point vtable body
# (0x358, 3 slots). Not contiguous with the ctor/dtor.
.section extab, "a"
.balign 4
.global etb_8001062C
etb_8001062C:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8001062C, 8

.section extabindex, "a"
.balign 4
.global eti_80020470
eti_80020470:
    .4byte fn_80423DF0
    .4byte 0x00000358
    .4byte etb_8001062C
.size eti_80020470, 12

.text
.balign 4
.global fn_80423DF0

fn_80423DF0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x1
    stmw 25, 0x14(1)
    mr 28, 4
    mr 27, 3
    lis 4, lbl_8048E1B8@ha
    slw 26, 0, 28
    li 29, -0x1
    clrlwi 31, 26, 24
    addi 30, 4, lbl_8048E1B8@l
    lbz 3, 0x259(3)
    and 3, 3, 31
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x4082007C # bne .L_80423EB0
    mr 3, 28
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_80423EB0
    mr 3, 28
    bl fn_8022EA0C
    bl fn_8023BE0C
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_80423F2C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x255(3)
    and. 0, 0, 31
    .4byte 0x408200C4 # bne .L_80423F2C
    lbz 5, 0x259(27)
    mr 4, 31
    slwi 3, 28, 3
    addi 0, 30, 0xe28
    or 4, 5, 4
    stb 4, 0x259(27)
    add 6, 0, 3
    lwz 3, 0x4(27)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000080 # b .L_80423F2C
L_80423EB0:
    mr 3, 28
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80423EF0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x255(3)
    and. 0, 0, 31
    .4byte 0x40820014 # bne .L_80423EF0
    mr 3, 28
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80423F2C
L_80423EF0:
    lbz 4, 0x259(27)
    slwi 3, 28, 3
    addi 0, 30, 0xe28
    andc 4, 4, 31
    stb 4, 0x259(27)
    add 6, 0, 3
    lwz 3, 0x4(27)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80423F2C:
    mr 3, 28
    bl fn_802373EC
    cmplwi 3, 0xd
    .4byte 0x41810070 # bgt .L_80423FA8
    lis 4, jumptable_804B1478@ha
    slwi 0, 3, 2
    addi 3, 4, jumptable_804B1478@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 29, 0x5
    .4byte 0x48000050 # b .L_80423FA8
    li 29, 0xb
    .4byte 0x48000048 # b .L_80423FA8
    li 29, 0x2
    .4byte 0x48000040 # b .L_80423FA8
    li 29, 0x3
    .4byte 0x48000038 # b .L_80423FA8
    li 29, 0x6
    .4byte 0x48000030 # b .L_80423FA8
    li 29, 0x7
    .4byte 0x48000028 # b .L_80423FA8
    li 29, 0x4
    .4byte 0x48000020 # b .L_80423FA8
    li 29, 0x8
    .4byte 0x48000018 # b .L_80423FA8
    li 29, 0xa
    .4byte 0x48000010 # b .L_80423FA8
    li 29, 0x1
    .4byte 0x48000008 # b .L_80423FA8
    li 29, 0x0
L_80423FA8:
    slwi 0, 28, 2
    add 4, 27, 0
    lwz 0, 0x148(4)
    cmpw 29, 0
    .4byte 0x40820014 # bne .L_80423FCC
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x255(3)
    and. 0, 0, 31
    .4byte 0x4182016C # beq .L_80424134
L_80423FCC:
    mulli 3, 28, 0x60
    addi 0, 30, 0x6e8
    addi 26, 30, 0x868
    stw 29, 0x148(4)
    li 25, 0x0
    add 31, 0, 3
    add 26, 26, 3
L_80423FE8:
    cmpw 25, 29
    .4byte 0x40820050 # bne .L_8042403C
    lwz 3, 0x4(27)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800004C # b .L_80424084
L_8042403C:
    lwz 3, 0x4(27)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80424084:
    addi 25, 25, 0x1
    addi 26, 26, 0x8
    cmpwi 25, 0xc
    addi 31, 31, 0x8
    .4byte 0x4180FF54 # blt .L_80423FE8
    mr 3, 28
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x4082004C # bne .L_804240F0
    mulli 0, 28, 0x18
    addi 26, 30, 0x688
    li 25, 0x0
    li 28, 0x1
    add 26, 26, 0
L_804240BC:
    lwz 3, 0x4(27)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    stb 28, 0xb0(3)
    cmpwi 25, 0x3
    addi 26, 26, 0x8
    .4byte 0x4180FFD4 # blt .L_804240BC
    .4byte 0x48000048 # b .L_80424134
L_804240F0:
    mulli 0, 28, 0x18
    addi 26, 30, 0x688
    li 25, 0x0
    li 28, 0x0
    add 26, 26, 0
L_80424104:
    lwz 3, 0x4(27)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    stb 28, 0xb0(3)
    cmpwi 25, 0x3
    addi 26, 26, 0x8
    .4byte 0x4180FFD4 # blt .L_80424104
L_80424134:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

