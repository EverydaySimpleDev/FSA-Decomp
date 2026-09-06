/*
 * fn_801D63D0(this) (0x801D63D0-0x801D652C, 0x15C/348 bytes) - a "RUPY-homing
 * velocity kick" for dtor_801D46FC's class. Loops up to 5 times: SpatialRegistry_GetBase
 * (CONFIRMED registry accessor) + fn_801F8544(registry, "RUPY", self type,
 * this+0xc, count=2) - the 4-char spawn code `0x52555059` = "RUPY" (the rupee-
 * container class already mapped this session) confirms this is a "find nearby
 * RUPY actors" search. The 5 iterations pass IDENTICAL arguments each time (no
 * visible search-cursor/slot parameter), so this likely relies on fn_801F8544
 * having its own internal randomization/rotation; on each hit, resolves the
 * found entry via the CONFIRMED fn_801F666C (find entry by ID),
 * then draws THREE separate values from the CONFIRMED global LCG
 * (`lbl_8053AAF8->0xb4`) to build a randomized velocity vector (scaled by
 * `lbl_8053F134`/`lbl_8053F138`) written into this->0x3c/0x40 (velocity) and
 * this->0x44 (speed) via `psq_st` - i.e. "get randomly knocked toward/away from
 * a nearby rupee." Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_80008608
etb_80008608:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008608, 8

.section extabindex, "a"
.balign 4
.global eti_800159F4
eti_800159F4:
    .4byte fn_801D63D0
    .4byte 0x0000015C
    .4byte etb_80008608
.size eti_800159F4, 12

.text
.balign 4
.global fn_801D63D0

fn_801D63D0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    lis 31, 0x5255
    stw 30, 0x28(1)
    li 30, 0x0
    stw 29, 0x24(1)
    mr 29, 3
    stw 28, 0x20(1)
L_801D63F8:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(29)
    addi 4, 31, 0x5059
    addi 6, 29, 0xc
    li 7, 0x2
    bl fn_801F8544
    mr. 28, 3
    .4byte 0x418000EC # blt .L_801D6500
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200D8 # beq .L_801D6500
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC0A2C138 # lfs f5, lbl_8053F0D8@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062C198 # lfs f3, lbl_8053F138@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC082C194 # lfs f4, lbl_8053F134@sda21(r0)
    .4byte 0xC002C15C # lfs f0, lbl_8053F0FC@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 1, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x1c(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fmsubs 1, 3, 1, 5
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fmuls 1, 4, 1
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    stfs 1, 0x18(1)
    fsubs 1, 2, 5
    fmsubs 1, 3, 1, 5
    fmuls 1, 4, 1
    stfs 1, 0x14(1)
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801D6500:
    addi 30, 30, 0x1
    cmpwi 30, 0x5
    .4byte 0x4180FEF0 # blt .L_801D63F8
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

