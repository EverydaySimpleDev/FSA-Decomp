.section extab, "a"
.balign 4
.global etb_8000A7C0
etb_8000A7C0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A7C0, 8

.section extabindex, "a"
.balign 4
.global eti_800186AC
eti_800186AC:
    .4byte fn_802265FC
    .4byte 0x00000254
    .4byte etb_8000A7C0
.size eti_800186AC, 12

.text
.balign 4
.global fn_802265FC

# fn_802265FC(point, roomParam) - CONFIRMED byte-for-byte identical
# algorithm to the already-decompiled `fn_8022461C` (RUPY's terrain/
# hazard classifier, extab_8022461c.s - see its banner for the full
# writeup: bounding-rect check, 512-cell grid lookup via
# `fn_802F9908`, `lbl_8046CB88` raw-code-to-category translation, and
# the two room-specific overrides using the SAME magic constants
# `+0x31df`/0x61/0xe/7/2/3/0x10/`lbl_8053FF50`/0x51). A second,
# separately-compiled instance of the same terrain classifier
# (confirmed as this actor's own call target from `fn_801840E0`,
# "Class C" of the RUSA-repel movement family - extab_801840e0.s),
# not a shared/reused function - the compiler emitted two copies
# rather than one, matching the pattern already seen with the RUSA-
# repel classes' own near-identical siblings.
fn_802265FC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 4
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    mr 31, 28
    .4byte 0x4080000C # bge .L_80226638
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_8022663C
L_80226638:
    addi 6, 3, 0xdc
L_8022663C:
    lwz 3, 0x0(6)
    li 0, 0x0
    lwz 5, 0x4(6)
    stw 3, 0x8(1)
    lwz 4, 0x8(6)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(6)
    fcmpo cr0, 2, 3
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802266A4
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802266A4
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802266A4
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802266A4
    li 0, 0x1
L_802266A4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802266B4
    li 0, 0xf
    .4byte 0x48000088 # b .L_80226738
L_802266B4:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_802266EC
    li 6, 0x0
    .4byte 0x48000010 # b .L_802266F8
L_802266EC:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802266F8
    li 6, 0x1ff
L_802266F8:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80226708
    li 0, 0x0
    .4byte 0x48000010 # b .L_80226714
L_80226708:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80226714
    li 0, 0x1ff
L_80226714:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    mr 4, 31
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80226738:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 0, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 29, 3, 0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80226788
    clrlwi. 4, 29, 16
    .4byte 0x4082000C # bne .L_80226770
    li 3, 0x2
    .4byte 0x480000C4 # b .L_80226830
L_80226770:
    subi 3, 4, 0x61
    subfic 0, 4, 0x61
    nor 0, 3, 0
    srawi 0, 0, 31
    andc 3, 4, 0
    .4byte 0x480000AC # b .L_80226830
L_80226788:
    clrlwi 0, 29, 16
    cmplwi 0, 0xe
    .4byte 0x4082009C # bne .L_8022682C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_8022682C
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_802267C4
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_80226824
L_802267C4:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x4082005C # bne .L_8022682C
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_8022682C
    bl GetRoomConfigRecord
    lwz 28, 0x14(3)
    bl GetRoomConfigRecord
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x18(31)
    add 3, 28, 3
    mulli 0, 0, 0xa
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpwi 0, 0x10
    .4byte 0x4082001C # bne .L_8022682C
    lfs 1, 0x4(30)
    .4byte 0xC002CFB0 # lfs f0, lbl_8053FF50@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8022682C
L_80226824:
    li 3, 0x51
    .4byte 0x48000008 # b .L_80226830
L_8022682C:
    clrlwi 3, 29, 16
L_80226830:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
