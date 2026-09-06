# fn_8006A36C onward: __fwrite/fwrite stdio internals, split from the
# original extab_8006a268.s. Deep control flow (300+ lines), not
# attempted - matches this session's established hard-category note
# ("indirect-call-through-function-pointer stdio internals"). The 3
# trivial bare-blr stubs right before this (__end_critical_region/
# __begin_critical_region/__kill_critical_regions) are now real C++ in
# Game/stub_8006a360.cpp.
.text
.balign 4
.global fn_8006A36C
.global __fwrite
.global fwrite

fn_8006A36C:
    cmpwi 3, -0x1
    .4byte 0x4082000C # bne .L_8006A37C
    li 3, -0x1
    blr
L_8006A37C:
    lis 4, lbl_80497DF0@ha
    clrlwi 0, 3, 24
    addi 3, 4, lbl_80497DF0@l
    lbzx 3, 3, 0
    blr

__fwrite:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 4
    mr 26, 6
    mr 27, 3
    mr 28, 5
    li 4, 0x0
    mr 3, 26
    bl fwide
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8006A3D0
    mr 3, 26
    li 4, -0x1
    bl fwide
L_8006A3D0:
    mullw. 29, 25, 28
    .4byte 0x4182001C # beq .L_8006A3F0
    lbz 0, 0xa(26)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8006A3F0
    lhz 0, 0x4(26)
    extrwi. 0, 0, 3, 23
    .4byte 0x4082000C # bne .L_8006A3F8
L_8006A3F0:
    li 3, 0x0
    .4byte 0x48000294 # b .L_8006A688
L_8006A3F8:
    cmplwi 0, 0x2
    .4byte 0x40820008 # bne .L_8006A404
    bl __stdio_atexit
L_8006A404:
    lbz 0, 0x5(26)
    li 31, 0x1
    li 3, 0x0
    extrwi. 0, 0, 1, 28
    .4byte 0x41820014 # beq .L_8006A428
    lbz 0, 0x4(26)
    extrwi 0, 0, 2, 29
    cmplwi 0, 0x2
    .4byte 0x40820008 # bne .L_8006A42C
L_8006A428:
    li 3, 0x1
L_8006A42C:
    cmpwi 3, 0x0
    .4byte 0x40820018 # bne .L_8006A448
    lbz 0, 0x4(26)
    extrwi 0, 0, 2, 29
    cmplwi 0, 0x1
    .4byte 0x41820008 # beq .L_8006A448
    li 31, 0x0
L_8006A448:
    lbz 0, 0x8(26)
    extrwi. 0, 0, 3, 24
    .4byte 0x40820054 # bne .L_8006A4A4
    lbz 3, 0x4(26)
    rlwinm. 0, 3, 29, 30, 30
    extrwi 3, 3, 3, 26
    .4byte 0x41820044 # beq .L_8006A4A4
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x41820024 # beq .L_8006A48C
    mr 3, 26
    li 4, 0x0
    li 5, 0x2
    bl fseek
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8006A48C
    li 3, 0x0
    .4byte 0x48000200 # b .L_8006A688
L_8006A48C:
    lbz 0, 0x8(26)
    li 3, 0x1
    rlwimi 0, 3, 5, 24, 26
    mr 3, 26
    stb 0, 0x8(26)
    bl __prep_buffer
L_8006A4A4:
    lbz 0, 0x8(26)
    extrwi 0, 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_8006A4CC
    li 3, 0x1
    li 0, 0x0
    stb 3, 0xa(26)
    li 3, 0x0
    stw 0, 0x28(26)
    .4byte 0x480001C0 # b .L_8006A688
L_8006A4CC:
    cmplwi 29, 0x0
    mr 30, 27
    li 28, 0x0
    .4byte 0x41820120 # beq .L_8006A5F8
    lwz 4, 0x24(26)
    lwz 3, 0x1c(26)
    cmplw 4, 3
    .4byte 0x4082000C # bne .L_8006A4F4
    cmpwi 31, 0x0
    .4byte 0x41820108 # beq .L_8006A5F8
L_8006A4F4:
    lwz 0, 0x20(26)
    subf 3, 3, 4
    subf 0, 3, 0
    stw 0, 0x28(26)
L_8006A504:
    lwz 0, 0x28(26)
    li 27, 0x0
    cmplw 0, 29
    stw 0, 0x8(1)
    .4byte 0x40810008 # ble .L_8006A51C
    stw 29, 0x8(1)
L_8006A51C:
    lbz 0, 0x4(26)
    extrwi 0, 0, 2, 29
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_8006A558
    lwz 5, 0x8(1)
    cmplwi 5, 0x0
    .4byte 0x41820024 # beq .L_8006A558
    mr 3, 30
    li 4, 0xa
    bl __memrchr
    mr. 27, 3
    .4byte 0x41820010 # beq .L_8006A558
    addi 0, 27, 0x1
    subf 0, 30, 0
    stw 0, 0x8(1)
L_8006A558:
    lwz 5, 0x8(1)
    cmplwi 5, 0x0
    .4byte 0x4182003C # beq .L_8006A59C
    lwz 3, 0x24(26)
    mr 4, 30
    bl memcpy
    lwz 3, 0x8(1)
    lwz 0, 0x24(26)
    add 30, 30, 3
    add 28, 28, 3
    add 0, 0, 3
    subf 29, 3, 29
    stw 0, 0x24(26)
    lwz 3, 0x8(1)
    lwz 0, 0x28(26)
    subf 0, 3, 0
    stw 0, 0x28(26)
L_8006A59C:
    lwz 0, 0x28(26)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8006A5BC
    cmplwi 27, 0x0
    .4byte 0x40820010 # bne .L_8006A5BC
    lbz 0, 0x4(26)
    extrwi. 0, 0, 2, 29
    .4byte 0x40820030 # bne .L_8006A5E8
L_8006A5BC:
    mr 3, 26
    li 4, 0x0
    bl __flush_buffer
    cmpwi 3, 0x0
    .4byte 0x4182001C # beq .L_8006A5E8
    li 3, 0x1
    li 0, 0x0
    stb 3, 0xa(26)
    li 29, 0x0
    stw 0, 0x28(26)
    .4byte 0x48000014 # b .L_8006A5F8
L_8006A5E8:
    cmplwi 29, 0x0
    .4byte 0x4182000C # beq .L_8006A5F8
    cmpwi 31, 0x0
    .4byte 0x4082FF10 # bne .L_8006A504
L_8006A5F8:
    cmplwi 29, 0x0
    .4byte 0x41820068 # beq .L_8006A664
    cmpwi 31, 0x0
    .4byte 0x40820060 # bne .L_8006A664
    lwz 27, 0x1c(26)
    add 0, 30, 29
    lwz 31, 0x20(26)
    mr 3, 26
    addi 4, 1, 0x8
    stw 30, 0x1c(26)
    stw 29, 0x20(26)
    stw 0, 0x24(26)
    bl __flush_buffer
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_8006A644
    li 3, 0x1
    li 0, 0x0
    stb 3, 0xa(26)
    stw 0, 0x28(26)
L_8006A644:
    lwz 0, 0x8(1)
    mr 3, 26
    stw 27, 0x1c(26)
    add 28, 28, 0
    stw 31, 0x20(26)
    bl __prep_buffer
    li 0, 0x0
    stw 0, 0x28(26)
L_8006A664:
    lbz 0, 0x4(26)
    extrwi 0, 0, 2, 29
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8006A67C
    li 0, 0x0
    stw 0, 0x28(26)
L_8006A67C:
    subi 0, 25, 0x1
    add 0, 28, 0
    divwu 3, 0, 25
L_8006A688:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fwrite:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    li 3, 0x2
    bl __begin_critical_region
    mr 3, 28
    mr 4, 29
    mr 5, 30
    mr 6, 31
    bl __fwrite
    mr 0, 3
    li 3, 0x2
    mr 31, 0
    bl __end_critical_region
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
