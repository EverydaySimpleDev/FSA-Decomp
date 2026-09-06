/*
 * NEW ACTOR (vtable lbl_804A5A30). "Got hit" reaction handler,
 * wildcard-scan variant: gated by the "moved far" delta box (this->
 * 0x60-0x6c), queries fn_801F2DB4 with the literal code "NULL"
 * (0x4E554C4C) as a wildcard match-anything argument; on success,
 * transitions via the confirmed fn_80205E0C(this, 7). Sibling of
 * fn_80206EFC/fn_802070B4.
 */
.section extab, "a"
.balign 4
.global etb_80009CC4
etb_80009CC4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009CC4, 8

.section extabindex, "a"
.balign 4
.global eti_8001768C
eti_8001768C:
    .4byte fn_80207004
    .4byte 0x000000B0
    .4byte etb_80009CC4
.size eti_8001768C, 12

.text
.balign 4
.global fn_80207004

fn_80207004:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x40820070 # bne .L_80207098
    lwz 0, 0x248(30)
    cmpwi 0, 0x3
    .4byte 0x41820064 # beq .L_80207098
    cmpwi 0, 0x4
    .4byte 0x4182005C # beq .L_80207098
    lfs 1, 0x68(30)
    lfs 0, 0x60(30)
    .4byte 0xC042C90C # lfs f2, lbl_8053F8AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810044 # ble .L_80207098
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810030 # ble .L_80207098
    lis 4, 0x4e55
    li 6, 0x0
    addi 4, 4, 0x4c4c
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    mr 31, 3
    .4byte 0x41820010 # beq .L_80207098
    mr 3, 30
    li 4, 0x7
    bl fn_80205E0C
L_80207098:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

