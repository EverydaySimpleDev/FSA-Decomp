# Fresh-gap-hunt batch 13 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
# AbsS32 (the leading abs() leaf) was split out and promoted to
# Game/stub_8006a258.cpp - this file now starts at __flush_buffer.
# The 3 trivial bare-blr stubs right after __prep_buffer are split out
# to Game/stub_8006a360.cpp; __flush_buffer/__prep_buffer here use a
# real indirect call (bctrl through a stored function pointer) -
# confirmed hard category, matches fn_8006A36C onward's own stdio
# internals (unattempted, huge control flow).
.text
.balign 4
.global __flush_buffer
.global __prep_buffer

__flush_buffer:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 4
    lwz 3, 0x1c(3)
    lwz 0, 0x24(31)
    subf. 0, 3, 0
    .4byte 0x41820050 # beq .L_8006A2E0
    stw 0, 0x28(31)
    addi 5, 31, 0x28
    lwz 12, 0x40(31)
    lwz 3, 0x0(31)
    lwz 4, 0x1c(31)
    lwz 6, 0x48(31)
    mtctr 12
    bctrl
    cmplwi 30, 0x0
    .4byte 0x4182000C # beq .L_8006A2C4
    lwz 0, 0x28(31)
    stw 0, 0x0(30)
L_8006A2C4:
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_8006A2D0
    .4byte 0x48000048 # b .L_8006A314
L_8006A2D0:
    lwz 3, 0x18(31)
    lwz 0, 0x28(31)
    add 0, 3, 0
    stw 0, 0x18(31)
L_8006A2E0:
    lwz 0, 0x1c(31)
    li 3, 0x0
    stw 0, 0x24(31)
    lwz 0, 0x20(31)
    stw 0, 0x28(31)
    lwz 5, 0x18(31)
    lwz 4, 0x2c(31)
    lwz 0, 0x28(31)
    and 4, 5, 4
    subf 0, 4, 0
    stw 0, 0x28(31)
    lwz 0, 0x18(31)
    stw 0, 0x34(31)
L_8006A314:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

__prep_buffer:
    lwz 0, 0x1c(3)
    stw 0, 0x24(3)
    lwz 0, 0x20(3)
    stw 0, 0x28(3)
    lwz 5, 0x18(3)
    lwz 4, 0x2c(3)
    lwz 0, 0x28(3)
    and 4, 5, 4
    subf 0, 4, 0
    stw 0, 0x28(3)
    lwz 0, 0x18(3)
    stw 0, 0x34(3)
    blr

