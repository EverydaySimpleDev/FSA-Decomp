/*
 * IDENTIFIED: this is ZLDA - "Princess Zelda" (see extab_80109534.s's header note;
 * project_fsa_zlda_actor_progress.md already fully decompiled this exact function as
 * setParams() - the bit-unpacking of this->0x90 matches FSALib's spawn-parameter convention,
 * see project_fsa_actor_system_discovery.md).
 *
 * fn_8010AE10 (0x8010AE10-0x8010AF38, 0x12C/300 bytes) - ZLDA's setParams() - the structural
 * analog of fn_80107F38/fn_80108764/fn_801091EC for the other classes embedding the shared
 * fn_801D1C18-family base type.
 *
 * Calls fn_801F5938 (base step), unpacks this->0x90 bitfields into this->0x320/0x324/0x2fc,
 * initializes the easing-constant float block (this->0x60-0x8c) and this->0x108=4/0xb8=2/
 * 0x11e=1.
 *
 * The base-subobject init at this+0x33c: fn_801D2608(this+0x33c, <table>, 0xe, ...) where
 * <table> is chosen between two real addresses (lbl_8049CEA8 or lbl_8049CE70) based on
 * this->0x320 - ANOTHER new argument variant of this call (2nd arg now a real address AND
 * varies per-instance-flag, not just per-class; 3rd arg is 0xe=14, a third distinct count
 * value after the previously-seen 2 and 8). Followed by the standard fn_801D22DC(this+0x33c,
 * 2,2,0) + fn_801D1F14(this+0x33c,...) pair.
 *
 * Then GetRoomConfigRecord (confirmed settings accessor) + fn_802D7440(0) (new), then directly
 * re-spawns the "LIMT" companion handle via the CONFIRMED SpatialRegistry_GetBase+fn_801F9484 pair
 * (same 4-char code as fn_80109534's own lazy-spawn logic), caching into this->0x310.
 */

.section extab, "a"
.balign 4
.global etb_80005BBC
etb_80005BBC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005BBC, 8

.section extabindex, "a"
.balign 4
.global eti_8001201C
eti_8001201C:
    .4byte fn_8010AE10
    .4byte 0x0000012C
    .4byte etb_80005BBC
.size eti_8001201C, 12

.text
.balign 4
.global fn_8010AE10

fn_8010AE10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    li 4, 0x4
    .4byte 0xC022949C # lfs f1, lbl_8053C43C@sda21(r0)
    li 3, 0x2
    clrlwi 0, 0, 27
    .4byte 0xC00294A0 # lfs f0, lbl_8053C440@sda21(r0)
    stw 0, 0x320(31)
    li 0, 0x1
    lwz 5, 0x90(31)
    extrwi 5, 5, 5, 23
    stw 5, 0x324(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 8, 16
    stw 5, 0x2fc(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 4, 0x108(31)
    stw 3, 0xb8(31)
    stb 0, 0x11e(31)
    lwz 0, 0x320(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8010AEC0
    lis 4, lbl_8049CEA8@ha
    addi 3, 31, 0x33c
    addi 4, 4, lbl_8049CEA8@l
    li 5, 0xe
    bl fn_801D2608
    .4byte 0x48000018 # b .L_8010AED4
L_8010AEC0:
    lis 4, lbl_8049CE70@ha
    addi 3, 31, 0x33c
    addi 4, 4, lbl_8049CE70@l
    li 5, 0xe
    bl fn_801D2608
L_8010AED4:
    addi 3, 31, 0x33c
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229440 # lfs f1, lbl_8053C3E0@sda21(r0)
    addi 3, 31, 0x33c
    bl fn_801D1F14
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
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
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

