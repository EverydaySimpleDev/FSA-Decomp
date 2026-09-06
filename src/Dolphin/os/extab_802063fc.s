/*
 * NEW ACTOR (vtable lbl_804A5A30). Finds the nearest reachable target of
 * a confirmed-family type: bulk-queries up to 20 nearby matches via
 * fn_801F7274, sorts them by distance to this actor via qsort with
 * comparator fn_802068A0, then returns the owner ID (this->0x198) of
 * the first one within reach (fn_801CF888), or -1 if none.
 */
.section extab, "a"
.balign 4
.global etb_80009C60
etb_80009C60:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80009C60, 8

.section extabindex, "a"
.balign 4
.global eti_80017614
eti_80017614:
    .4byte fn_802063FC
    .4byte 0x000000E4
    .4byte etb_80009C60
.size eti_80017614, 12

.text
.balign 4
.global fn_802063FC

fn_802063FC:
    stwu 1, -0x1030(1)
    mflr 0
    stw 0, 0x1034(1)
    stmw 27, 0x101c(1)
    mr 27, 3
    lfs 0, 0xc(3)
    stfs 0, 0x8(1)
    lfs 0, 0x10(3)
    stfs 0, 0xc(1)
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(27)
    addi 5, 1, 0x10
    li 6, -0x1
    bl fn_801F7274
    mr 30, 3
    cmpwi 30, 0x2
    .4byte 0x41800030 # blt .L_8020646C
    lfs 1, 0x8(1)
    lis 3, fn_802068A0@ha
    lfs 0, 0xc(1)
    .4byte 0x38AD90A0 # li r5, lbl_8053AC60@sda21
    .4byte 0xD02D90A0 # stfs f1, lbl_8053AC60@sda21(r0)
    addi 6, 3, fn_802068A0@l
    mr 4, 30
    addi 3, 1, 0x10
    stfs 0, 0x4(5)
    li 5, 0x4
    bl qsort
L_8020646C:
    cmpwi 30, 0x14
    addi 28, 1, 0x10
    li 29, -0x1
    li 31, 0x14
    .4byte 0x41810008 # bgt .L_80206484
    mr 31, 30
L_80206484:
    li 30, 0x0
    .4byte 0x48000038 # b .L_802064C0
L_8020648C:
    lwz 5, 0x0(28)
    mr 3, 27
    lwz 6, 0x4(27)
    addi 4, 1, 0x8
    addi 5, 5, 0xc
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802064B8
    lwz 3, 0x0(28)
    lwz 29, 0x198(3)
    .4byte 0x48000014 # b .L_802064C8
L_802064B8:
    addi 30, 30, 0x1
    addi 28, 28, 0x4
L_802064C0:
    cmpw 30, 31
    .4byte 0x4180FFC8 # blt .L_8020648C
L_802064C8:
    mr 3, 29
    lmw 27, 0x101c(1)
    lwz 0, 0x1034(1)
    mtlr 0
    addi 1, 1, 0x1030
    blr

