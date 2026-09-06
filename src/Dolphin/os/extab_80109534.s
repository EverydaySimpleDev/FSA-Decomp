/*
 * IDENTIFIED: this class is ZLDA - "Princess Zelda" (see reference_fsa_actor_dispatch_table.md
 * and project_fsa_zlda_actor_progress.md - vtable lbl_8049CEE0 and ctor fn_8010AFC4 both match
 * that table's ZLDA entry exactly). This whole file family (fn_80109534/fn_801096C8/
 * fn_80109AE0/fn_80109D78/fn_80109FA4/fn_8010AE10/fn_8010AF3C/fn_8010AFC4) was landed earlier
 * this session as an anonymous "fn_80109534-class" during the multiple-inheritance sweep,
 * before ZLDA's identity was known from the separate dispatch-table investigation - the two
 * threads are now confirmed to be the same class.
 *
 * fn_80109534 (0x80109534-0x801096C8, 0x194/404 bytes) - ZLDA's "lazy-spawn and configure the
 * 'LIMT' companion handle" helper (matches project_fsa_zlda_actor_progress.md's description of
 * this being called from update()'s state-14 respawn path and the always-run tail block).
 *
 * A "lazy-spawn and configure a companion handle" pattern: if this->0x310 < 0 (not yet
 * spawned), spawns one via the CONFIRMED universal actor-spawn dispatcher fn_801F9484 with
 * a NEW 4-char code 0x4C494D54 ("LIMT"), caching the result into this->0x310; aborts (leaves
 * this->0x310=-1) on failure. Then always looks the handle up via the CONFIRMED
 * SpatialRegistry_GetBase(get registry)+fn_801F666C(find by ID) pair; if not found, resets this->0x310=
 * -1 and aborts.
 *
 * Sets the found handle's this->0x11d flag (an "active/valid" flag matching the field
 * confirmed in project_fsa_shared_effect_subsystem_crossref.md's fn_801F666C description) to
 * 1 if (this->0x2f8==0 or this->0x328==0xc), else 0. Then, depending on this->0x328==0xc
 * and further this->0x358 threshold checks (or, on the other branch, this->0x108/0x30c/0x2f8
 * checks), writes a position/rotation triple into the handle's this->0x24c (int)/0x250
 * (int)/0x254 (float, from lbl_8053C3FC via this->0x198's sda21 base) - not individually
 * understood beyond the shape.
 */

.section extab, "a"
.balign 4
.global etb_80005B94
etb_80005B94:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005B94, 8

.section extabindex, "a"
.balign 4
.global eti_80011FE0
eti_80011FE0:
    .4byte fn_80109534
    .4byte 0x00000194
    .4byte etb_80005B94
.size eti_80011FE0, 12

.text
.balign 4
.global fn_80109534

fn_80109534:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x310(3)
    cmpwi 0, 0x0
    .4byte 0x40800038 # bge .L_80109588
    bl SpatialRegistry_GetBase
    lis 4, 0x4c49
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d54
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x310(31)
    lwz 0, 0x310(31)
    cmpwi 0, 0x0
    .4byte 0x41800130 # blt .L_801096B4
L_80109588:
    bl SpatialRegistry_GetBase
    lwz 4, 0x310(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_801095A8
    li 0, -0x1
    stw 0, 0x310(31)
    .4byte 0x48000110 # b .L_801096B4
L_801095A8:
    lbz 0, 0x2f8(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801095C0
    lwz 0, 0x328(31)
    cmpwi 0, 0xc
    .4byte 0x40820010 # bne .L_801095CC
L_801095C0:
    li 0, 0x1
    stb 0, 0x11d(3)
    .4byte 0x4800000C # b .L_801095D4
L_801095CC:
    li 0, 0x0
    stb 0, 0x11d(3)
L_801095D4:
    lwz 0, 0x328(31)
    cmpwi 0, 0xc
    .4byte 0x41820008 # beq .L_801095E4
    .4byte 0x48000060 # b .L_80109640
L_801095E4:
    lwz 0, 0x358(31)
    cmpwi 0, 0x8
    .4byte 0x40800024 # bge .L_80109610
    lwz 4, 0x108(31)
    lwz 0, 0x198(31)
    .4byte 0xC002945C # lfs f0, lbl_8053C3FC@sda21(r0)
    addi 4, 4, 0x2
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
    .4byte 0x480000A8 # b .L_801096B4
L_80109610:
    cmpwi 0, 0xc
    .4byte 0x40800020 # bge .L_80109634
    lwz 4, 0x108(31)
    lwz 0, 0x198(31)
    .4byte 0xC002945C # lfs f0, lbl_8053C3FC@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
    .4byte 0x48000084 # b .L_801096B4
L_80109634:
    li 0, 0x0
    stb 0, 0x11d(3)
    .4byte 0x48000078 # b .L_801096B4
L_80109640:
    lwz 5, 0x108(31)
    cmpwi 5, 0x0
    .4byte 0x4182006C # beq .L_801096B4
    cmpwi 5, 0x4
    .4byte 0x4082001C # bne .L_8010966C
    lwz 0, 0x198(31)
    .4byte 0xC002945C # lfs f0, lbl_8053C3FC@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 5, 0x24c(3)
    .4byte 0x4800004C # b .L_801096B4
L_8010966C:
    lwz 0, 0x30c(31)
    cmpwi 0, 0x2d
    .4byte 0x4080002C # bge .L_801096A0
    lbz 0, 0x2f8(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_801096A0
    lwz 4, 0x198(31)
    addi 0, 5, 0x2
    .4byte 0xC002945C # lfs f0, lbl_8053C3FC@sda21(r0)
    stw 4, 0x250(3)
    stfs 0, 0x254(3)
    stw 0, 0x24c(3)
    .4byte 0x48000018 # b .L_801096B4
L_801096A0:
    lwz 0, 0x198(31)
    .4byte 0xC002945C # lfs f0, lbl_8053C3FC@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 5, 0x24c(3)
L_801096B4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

