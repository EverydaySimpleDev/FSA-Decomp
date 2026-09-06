# fn_8045787C (dtor) + fn_804578F4 (ctor) - a multiple-inheritance-shaped
# class matching the earlier-documented pattern (see
# project_fsa_multiple_inheritance_pattern.md): installs lbl_804B1E28 at
# this+0x8 (secondary base vtable) AND this+0x18 = &lbl_804B1E28+0x24 (a
# nested embedded view into the SAME vtable, same convention as the
# "timed-cue lookup table" component). Chains to base ctor fn_8003EE34 /
# sub-init fn_8007E6F4 / dtor dtor_8003EEE0 - all still unexplored (much
# earlier in .text, likely a foundational base class, out of scope for
# this landing). Landed on the strength of the real ctor/dtor pair and the
# recognized structural pattern.
.section extab, "a"
.balign 4
.global etb_80011624
etb_80011624:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80011624, 8

.global etb_8001162C
etb_8001162C:
    .4byte 0x100A0000
    .4byte 0x00000034
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001E
    .4byte 0x00000000
    .4byte dtor_8003EEE0
.size etb_8001162C, 28

.section extabindex, "a"
.balign 4
.global eti_800215C8
eti_800215C8:
    .4byte fn_8045787C
    .4byte 0x00000078
    .4byte etb_80011624
.size eti_800215C8, 12

.global eti_800215D4
eti_800215D4:
    .4byte fn_804578F4
    .4byte 0x000000F0
    .4byte etb_8001162C
.size eti_800215D4, 12

.text
.balign 4
.global fn_8045787C
.global fn_804578F4

fn_8045787C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820040 # beq .L_804578D8
    lis 4, lbl_804B1E28@ha
    addi 3, 30, 0x18
    addi 5, 4, lbl_804B1E28@l
    li 4, 0x0
    stw 5, 0x8(30)
    addi 0, 5, 0x24
    stw 0, 0x18(30)
    bl fn_8007E75C
    mr 3, 30
    li 4, 0x0
    bl dtor_8003EEE0
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_804578D8
    mr 3, 30
    bl dtor_80084580
L_804578D8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804578F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    mr 0, 5
    mr 5, 6
    stw 31, 0x1c(1)
    mr 31, 4
    mr 6, 0
    stw 30, 0x18(1)
    mr 30, 3
    bl fn_8003EE34
    addi 3, 30, 0x18
    bl fn_8007E6F4
    lis 3, lbl_804B1E28@ha
    li 0, 0x1
    addi 3, 3, lbl_804B1E28@l
    cmplwi 31, 0x0
    stw 3, 0x8(30)
    addi 3, 3, 0x24
    stw 3, 0x18(30)
    stb 0, 0x31(30)
    stw 31, 0x34(30)
    .4byte 0x41820028 # beq .L_80457974
    lfs 0, 0x0(31)
    addi 0, 30, 0x38
    stfs 0, 0x38(30)
    lfs 0, 0x4(31)
    stfs 0, 0x3c(30)
    lfs 0, 0x8(31)
    stfs 0, 0x40(30)
    stw 0, 0x14(30)
    .4byte 0x4800000C # b .L_8045797C
L_80457974:
    li 0, 0x0
    stw 0, 0x14(30)
L_8045797C:
    li 5, 0x0
    lis 3, 0x4
    stb 5, 0x44(30)
    addi 4, 3, 0xa5
    lis 3, 0x3
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    stb 5, 0x45(30)
    addi 0, 3, 0x6d
    .4byte 0xC0020EC8 # lfs f0, lbl_80543E68@sda21(r0)
    mr 3, 30
    stb 5, 0x50(30)
    stb 5, 0x51(30)
    stb 5, 0x52(30)
    stfs 1, 0x4c(30)
    stfs 0, 0x48(30)
    stw 4, 0x54(30)
    stw 0, 0x58(30)
    stw 4, 0xc(1)
    stw 0, 0x8(1)
    stb 5, 0x30(30)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

