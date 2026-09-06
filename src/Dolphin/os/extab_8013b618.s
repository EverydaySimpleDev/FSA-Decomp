.section extab, "a"
.balign 4
.global etb_80006B0C
etb_80006B0C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006B0C, 8

.section extabindex, "a"
.balign 4
.global eti_80013420
eti_80013420:
    .4byte fn_8013B618
    .4byte 0x00000104
    .4byte etb_80006B0C
.size eti_80013420, 12

# fn_8013B618(this) - fuses fn_8013B538's scene-type-whitelist check
# (conditionally suppress this->0x20 via fn_802FF0EC) with fn_8013B4F8's
# "touch every tracked sub-object" tail (this->0x28 -> fn_8013D5D4,
# this->0x8/0xc -> fn_800C1EA4 on both). Confirms fn_8013B538/fn_8013B4F8
# are pieces re-combined here, not independent - this is likely the real
# per-frame update() and the smaller ones are its exposed sub-steps.
.text
.balign 4
.global fn_8013B618

fn_8013B618:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013B68C
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8013B674
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8013B674
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8013B674
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8013B674
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8013B674
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8013B678
L_8013B674:
    li 0, 0x1
L_8013B678:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013B6E0
L_8013B68C:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8013B6CC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8013B6CC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8013B6CC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8013B6CC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8013B6CC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8013B6CC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8013B6D0
L_8013B6CC:
    li 0, 0x1
L_8013B6D0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013B6E0:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8013B6F0
    lwz 3, 0x20(31)
    bl fn_802FF0EC
L_8013B6F0:
    lwz 3, 0x28(31)
    bl fn_8013D5D4
    lwz 3, 0x8(31)
    bl fn_800C1EA4
    lwz 3, 0xc(31)
    bl fn_800C1EA4
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
