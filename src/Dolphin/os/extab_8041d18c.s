# fn_8041D18C - actor@lbl_804B13D4: fused multi-entry-point vtable body
# (0xB98, 3 slots). Not contiguous with the ctor/dtor - reached only via
# the vtable itself.
.section extab, "a"
.balign 4
.global etb_8001052C
etb_8001052C:
    .4byte 0x68080000
    .4byte 0x00000000
.size etb_8001052C, 8

.section extabindex, "a"
.balign 4
.global eti_80020380
eti_80020380:
    .4byte fn_8041D18C
    .4byte 0x00000B98
    .4byte etb_8001052C
.size eti_80020380, 12

.text
.balign 4
.global fn_8041D18C

fn_8041D18C:
    stwu 1, -0x40(1)
    mflr 0
    lis 6, lbl_8048D320@ha
    stw 0, 0x44(1)
    stmw 19, 0xc(1)
    mr 29, 3
    mr 30, 4
    addi 27, 6, lbl_8048D320@l
    li 31, -0x1
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(5)
    cmplwi 0, 0x0
    .4byte 0x40820310 # bne .L_8041D4CC
    li 0, 0x1
    lbz 3, 0x28d(29)
    slw 19, 0, 30
    clrlwi 28, 19, 24
    and 3, 3, 28
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x40820078 # bne .L_8041D258
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820068 # bne .L_8041D258
    mr 3, 30
    bl fn_8022EA0C
    bl fn_8023BE0C
    clrlwi. 0, 3, 24
    .4byte 0x418200CC # beq .L_8041D2D0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x255(3)
    and. 0, 0, 28
    .4byte 0x408200BC # bne .L_8041D2D0
    lbz 5, 0x28d(29)
    mr 0, 28
    lis 4, 0x6e69
    lis 3, 0x5068
    or 0, 5, 0
    stb 0, 0x28d(29)
    addi 5, 3, 0x7031
    addi 6, 4, 0x3032
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800007C # b .L_8041D2D0
L_8041D258:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8041D298
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x255(3)
    and. 0, 0, 28
    .4byte 0x40820014 # bne .L_8041D298
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8041D2D0
L_8041D298:
    lbz 0, 0x28d(29)
    lis 3, 0x5068
    lis 4, 0x6e69
    andc 0, 0, 28
    addi 5, 3, 0x7031
    stb 0, 0x28d(29)
    addi 6, 4, 0x3032
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041D2D0:
    mr 3, 30
    bl fn_80236D14
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_8041D358
    lwz 3, 0x4(29)
    lwz 5, 0x398(27)
    lwz 12, 0x0(3)
    lwz 6, 0x39c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200C8 # bne .L_8041D3CC
    lwz 3, 0x4(29)
    lwz 5, 0x398(27)
    lwz 12, 0x0(3)
    lwz 6, 0x39c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    addi 4, 27, 0x398
    stb 0, 0xb0(3)
    lwz 5, 0x8(4)
    lwz 3, 0x4(29)
    lwz 6, 0xc(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000078 # b .L_8041D3CC
L_8041D358:
    lwz 3, 0x4(29)
    lwz 5, 0x398(27)
    lwz 12, 0x0(3)
    lwz 6, 0x39c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_8041D3CC
    lwz 3, 0x4(29)
    lwz 5, 0x398(27)
    lwz 12, 0x0(3)
    lwz 6, 0x39c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 4, 27, 0x398
    stb 0, 0xb0(3)
    lwz 5, 0x8(4)
    lwz 3, 0x4(29)
    lwz 6, 0xc(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041D3CC:
    mr 3, 30
    bl fn_80236E3C
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_8041D454
    lwz 3, 0x4(29)
    addi 19, 27, 0x398
    lwz 5, 0x10(19)
    lwz 12, 0x0(3)
    lwz 6, 0x14(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820420 # bne .L_8041D824
    lwz 3, 0x4(29)
    lwz 5, 0x10(19)
    lwz 12, 0x0(3)
    lwz 6, 0x14(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x18(19)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(19)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480003D4 # b .L_8041D824
L_8041D454:
    lwz 3, 0x4(29)
    addi 19, 27, 0x398
    lwz 5, 0x10(19)
    lwz 12, 0x0(3)
    lwz 6, 0x14(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x408203A8 # bne .L_8041D824
    lwz 3, 0x4(29)
    lwz 5, 0x10(19)
    lwz 12, 0x0(3)
    lwz 6, 0x14(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x18(19)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(19)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800035C # b .L_8041D824
L_8041D4CC:
    li 0, 0x1
    lbz 3, 0x28d(29)
    slw 19, 0, 30
    clrlwi 28, 19, 24
    and 3, 3, 28
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x4082007C # bne .L_8041D568
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_8041D568
    mr 3, 30
    bl fn_8022EA0C
    bl fn_8023BE0C
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_8041D5E4
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x255(3)
    and. 0, 0, 28
    .4byte 0x408200C4 # bne .L_8041D5E4
    lbz 5, 0x28d(29)
    mr 4, 28
    slwi 3, 30, 3
    addi 0, 27, 0x9b8
    or 4, 5, 4
    stb 4, 0x28d(29)
    add 6, 0, 3
    lwz 3, 0x4(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000080 # b .L_8041D5E4
L_8041D568:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8041D5A8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x255(3)
    and. 0, 0, 28
    .4byte 0x40820014 # bne .L_8041D5A8
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_8041D5E4
L_8041D5A8:
    lbz 4, 0x28d(29)
    slwi 3, 30, 3
    addi 0, 27, 0x9b8
    andc 4, 4, 28
    stb 4, 0x28d(29)
    add 6, 0, 3
    lwz 3, 0x4(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041D5E4:
    mr 3, 30
    bl fn_80236D14
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_8041D67C
    lwz 3, 0x4(29)
    slwi 20, 30, 5
    addi 19, 27, 0x9d8
    lwz 12, 0x0(3)
    add 19, 19, 20
    lwz 5, 0x0(19)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(19)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_8041D700
    lwz 3, 0x4(29)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x1
    addi 0, 27, 0x9d8
    stb 4, 0xb0(3)
    add 4, 0, 20
    lwz 5, 0x8(4)
    lwz 3, 0x4(29)
    lwz 6, 0xc(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000088 # b .L_8041D700
L_8041D67C:
    lwz 3, 0x4(29)
    slwi 20, 30, 5
    addi 19, 27, 0x9d8
    lwz 12, 0x0(3)
    add 19, 19, 20
    lwz 5, 0x0(19)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(19)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_8041D700
    lwz 3, 0x4(29)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    addi 0, 27, 0x9d8
    stb 4, 0xb0(3)
    add 4, 0, 20
    lwz 5, 0x8(4)
    lwz 3, 0x4(29)
    lwz 6, 0xc(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041D700:
    mr 3, 30
    bl fn_80236E3C
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_8041D79C
    lwz 3, 0x4(29)
    addi 0, 27, 0x9d8
    slwi 20, 30, 5
    lwz 12, 0x0(3)
    add 19, 0, 20
    lwz 5, 0x10(19)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(19)
    mtctr 12
    addi 19, 19, 0x10
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_8041D824
    lwz 3, 0x4(29)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x1
    addi 0, 27, 0x9d8
    stb 4, 0xb0(3)
    add 4, 0, 20
    lwz 5, 0x18(4)
    lwz 3, 0x4(29)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800008C # b .L_8041D824
L_8041D79C:
    lwz 3, 0x4(29)
    addi 0, 27, 0x9d8
    slwi 20, 30, 5
    lwz 12, 0x0(3)
    add 19, 0, 20
    lwz 5, 0x10(19)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(19)
    mtctr 12
    addi 19, 19, 0x10
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_8041D824
    lwz 3, 0x4(29)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    addi 0, 27, 0x9d8
    stb 4, 0xb0(3)
    add 4, 0, 20
    lwz 5, 0x18(4)
    lwz 3, 0x4(29)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041D824:
    mr 3, 30
    bl fn_802373EC
    cmplwi 3, 0xd
    .4byte 0x41810070 # bgt .L_8041D8A0
    lis 4, jumptable_804B13E0@ha
    slwi 0, 3, 2
    addi 3, 4, jumptable_804B13E0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 31, 0x5
    .4byte 0x48000050 # b .L_8041D8A0
    li 31, 0xb
    .4byte 0x48000048 # b .L_8041D8A0
    li 31, 0x2
    .4byte 0x48000040 # b .L_8041D8A0
    li 31, 0x3
    .4byte 0x48000038 # b .L_8041D8A0
    li 31, 0x6
    .4byte 0x48000030 # b .L_8041D8A0
    li 31, 0x7
    .4byte 0x48000028 # b .L_8041D8A0
    li 31, 0x4
    .4byte 0x48000020 # b .L_8041D8A0
    li 31, 0x8
    .4byte 0x48000018 # b .L_8041D8A0
    li 31, 0xa
    .4byte 0x48000010 # b .L_8041D8A0
    li 31, 0x1
    .4byte 0x48000008 # b .L_8041D8A0
    li 31, 0x0
L_8041D8A0:
    slwi 0, 30, 2
    add 4, 29, 0
    lwz 0, 0x178(4)
    cmpw 31, 0
    .4byte 0x40820020 # bne .L_8041D8D0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 0, 0x1
    slw 0, 0, 30
    lbz 3, 0x255(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820444 # beq .L_8041DD10
L_8041D8D0:
    mulli 3, 30, 0x60
    addi 0, 27, 0x538
    addi 20, 27, 0x6b8
    stw 31, 0x178(4)
    addi 23, 27, 0x248
    addi 22, 27, 0x2a8
    add 21, 0, 3
    add 20, 20, 3
    mr 28, 23
    mr 26, 22
    mr 25, 21
    mr 24, 20
    li 19, 0x0
L_8041D904:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x408200A4 # bne .L_8041D9B4
    cmpw 19, 31
    .4byte 0x40820050 # bne .L_8041D968
    lwz 3, 0x4(29)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000EC # b .L_8041DA50
L_8041D968:
    lwz 3, 0x4(29)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480000A0 # b .L_8041DA50
L_8041D9B4:
    cmpw 19, 31
    .4byte 0x40820050 # bne .L_8041DA08
    lwz 3, 0x4(29)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(24)
    stb 0, 0xb0(3)
    lwz 6, 0x4(24)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800004C # b .L_8041DA50
L_8041DA08:
    lwz 3, 0x4(29)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(24)
    stb 0, 0xb0(3)
    lwz 6, 0x4(24)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041DA50:
    addi 19, 19, 0x1
    addi 26, 26, 0x8
    cmpwi 19, 0xc
    addi 25, 25, 0x8
    addi 24, 24, 0x8
    addi 28, 28, 0x8
    .4byte 0x4180FE9C # blt .L_8041D904
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820148 # bne .L_8041DBC0
    li 19, 0x0
L_8041DA80:
    cmpw 19, 31
    .4byte 0x40820050 # bne .L_8041DAD4
    lwz 3, 0x4(29)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800004C # b .L_8041DB1C
L_8041DAD4:
    lwz 3, 0x4(29)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041DB1C:
    addi 19, 19, 0x1
    addi 22, 22, 0x8
    cmpwi 19, 0xc
    addi 23, 23, 0x8
    .4byte 0x4180FF54 # blt .L_8041DA80
    mr 3, 30
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x40820044 # bne .L_8041DB80
    addi 20, 27, 0x320
    li 21, 0x0
    li 19, 0x1
L_8041DB4C:
    lwz 3, 0x4(29)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    stb 19, 0xb0(3)
    cmpwi 21, 0x3
    addi 20, 20, 0x8
    .4byte 0x4180FFD4 # blt .L_8041DB4C
    .4byte 0x48000194 # b .L_8041DD10
L_8041DB80:
    addi 20, 27, 0x320
    li 21, 0x0
    li 19, 0x0
L_8041DB8C:
    lwz 3, 0x4(29)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    stb 19, 0xb0(3)
    cmpwi 21, 0x3
    addi 20, 20, 0x8
    .4byte 0x4180FFD4 # blt .L_8041DB8C
    .4byte 0x48000154 # b .L_8041DD10
L_8041DBC0:
    li 19, 0x0
L_8041DBC4:
    cmpw 19, 31
    .4byte 0x40820050 # bne .L_8041DC18
    lwz 3, 0x4(29)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(20)
    stb 0, 0xb0(3)
    lwz 6, 0x4(20)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800004C # b .L_8041DC60
L_8041DC18:
    lwz 3, 0x4(29)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(20)
    stb 0, 0xb0(3)
    lwz 6, 0x4(20)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041DC60:
    addi 19, 19, 0x1
    addi 20, 20, 0x8
    cmpwi 19, 0xc
    addi 21, 21, 0x8
    .4byte 0x4180FF54 # blt .L_8041DBC4
    mr 3, 30
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x4082004C # bne .L_8041DCCC
    mulli 0, 30, 0x18
    addi 20, 27, 0x898
    li 21, 0x0
    li 19, 0x1
    add 20, 20, 0
L_8041DC98:
    lwz 3, 0x4(29)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    stb 19, 0xb0(3)
    cmpwi 21, 0x3
    addi 20, 20, 0x8
    .4byte 0x4180FFD4 # blt .L_8041DC98
    .4byte 0x48000048 # b .L_8041DD10
L_8041DCCC:
    mulli 0, 30, 0x18
    addi 20, 27, 0x898
    li 21, 0x0
    li 19, 0x0
    add 20, 20, 0
L_8041DCE0:
    lwz 3, 0x4(29)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    stb 19, 0xb0(3)
    cmpwi 21, 0x3
    addi 20, 20, 0x8
    .4byte 0x4180FFD4 # blt .L_8041DCE0
L_8041DD10:
    lmw 19, 0xc(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

