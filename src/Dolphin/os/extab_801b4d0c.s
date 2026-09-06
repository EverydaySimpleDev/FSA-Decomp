# TLWP (vtable lbl_804A38D4, ctor fn_802003C4) cluster, part 1/7
# (444B). draw() dispatcher - calls fn_801B4EC8 (landed alongside),
# uses the already-landed fn_801F02BC and the confirmed 3D render-
# primitive fn_801F06F0.
.section extab, "a"
.balign 4
.global etb_80007C0C
etb_80007C0C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007C0C, 8

.section extabindex, "a"
.balign 4
.global eti_80014B90
eti_80014B90:
    .4byte fn_801B4D0C
    .4byte 0x000001BC
    .4byte etb_80007C0C
.size eti_80014B90, 12

.text
.balign 4
.global fn_801B4D0C

fn_801B4D0C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    lwz 0, 0x250(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801B4D3C
    .4byte 0x41800188 # blt .L_801B4EB4
    cmpwi 0, 0x4
    .4byte 0x40800180 # bge .L_801B4EB4
    .4byte 0x48000178 # b .L_801B4EB0
L_801B4D3C:
    lis 3, lbl_8050EC80@ha
    lwz 4, 0x254(31)
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    slw 4, 5, 4
    clrlwi 4, 4, 24
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 0, 0x7a(3)
    and. 0, 4, 0
    .4byte 0x4182014C # beq .L_801B4EB4
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801B4DE4
L_801B4D84:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801B4DE4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801B4D84
    li 10, 0x0
    .4byte 0xC022BA70 # lfs f1, lbl_8053EA10@sda21(r0)
    stb 10, 0x25(1)
    li 9, 0x1
    li 11, -0x1
    li 8, 0x3
    li 0, 0x2
    lis 3, lbl_804690F8@ha
    addi 4, 3, lbl_804690F8@l
    fmr 2, 1
    stw 11, 0x18(1)
    mr 3, 31
    addi 6, 1, 0x8
    li 5, 0x431
    stw 10, 0x1c(1)
    li 7, -0x1
    stw 10, 0x20(1)
    stb 10, 0x24(1)
    stb 10, 0x26(1)
    stb 9, 0x27(1)
    stb 9, 0x28(1)
    stb 10, 0x29(1)
    stb 10, 0x2a(1)
    stb 10, 0x2b(1)
    stb 10, 0x2c(1)
    stb 10, 0x2d(1)
    stb 9, 0x2e(1)
    stw 8, 0x30(1)
    stb 9, 0x34(1)
    stb 10, 0x35(1)
    stb 10, 0x36(1)
    stw 11, 0x38(1)
    stw 10, 0x3c(1)
    stw 0, 0x40(1)
    stb 11, 0x25(1)
    bl fn_801F06F0
    .4byte 0xC022BA70 # lfs f1, lbl_8053EA10@sda21(r0)
    lis 3, lbl_804690F8@ha
    addi 4, 3, lbl_804690F8@l
    addi 6, 1, 0x8
    fmr 2, 1
    mr 3, 31
    li 5, 0x431
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000008 # b .L_801B4EB4
L_801B4EB0:
    bl fn_801B4EC8
L_801B4EB4:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

