# fn_802E4C74 - BLZ2: proximity/landing-point check (0xAC)
# Iterates 4 candidate offset-table entries (lbl_8046F148 + lbl_8046F188 pairs),
# computes a candidate position from this->position + offset, classifies terrain
# via fn_80226850, and checks fn_801EE3C0 (WARP-family whitelist predicate) on the
# result. Returns 1 on first accepted candidate, 0 if none of the 4 succeed.
.section extab, "a"
.balign 4
.global etb_8000CFD4
etb_8000CFD4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000CFD4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C108
eti_8001C108:
    .4byte fn_802E4C74
    .4byte 0x000000AC
    .4byte etb_8000CFD4
.size eti_8001C108, 12

.text
.balign 4
.global fn_802E4C74

fn_802E4C74:
    stwu 1, -0x30(1)
    mflr 0
    lis 6, lbl_8046F148@ha
    lis 5, lbl_8046F188@ha
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    addi 31, 6, lbl_8046F148@l
    mr 26, 3
    addi 30, 5, lbl_8046F188@l
    mr 27, 4
    li 29, 0x0
    li 28, 0x0
L_802E4CA4:
    lfs 3, 0x0(27)
    addi 3, 1, 0x8
    lfs 0, 0x0(31)
    lfs 2, 0x4(27)
    lfs 1, 0x0(30)
    fadds 3, 3, 0
    lfs 0, 0x8(27)
    fadds 1, 2, 1
    stfs 3, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lwz 4, 0x4(26)
    bl fn_80226850
    clrlwi 3, 3, 16
    bl fn_801EE3C0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802E4CF4
    li 29, 0x1
    .4byte 0x48000018 # b .L_802E4D08
L_802E4CF4:
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FFA0 # blt .L_802E4CA4
L_802E4D08:
    mr 3, 29
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

