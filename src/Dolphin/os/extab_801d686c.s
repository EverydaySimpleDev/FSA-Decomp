/*
 * fn_801D686C(this) (0x801D686C-0x801D69FC, 0x190/400 bytes) - the REAL C++
 * CONSTRUCTOR for dtor_801D46FC's class (fn_801D6554, landed earlier, is the
 * later-running setParams()/Init() that reads spawn params - this ctor runs
 * first: base-construct via fn_801D0F40, install primary vtable lbl_804A4958,
 * then build every embedded sub-object). Uses the "extended DESTROYMEMBER/
 * DESTROYBASE" 7-word extab format (see project_fsa_extab_bug_resolved.md) -
 * confirmed transcribing correctly with the existing tool - whose exception
 * table matches dtor_801D46FC's own teardown list exactly (dtor_801D7730@0x4c4,
 * dtor_801EB8CC@0x464, dtor_80217F80@0x448, DESTROYBASE dtor_801B7E1C@0x0) PLUS
 * one dtor_801D46FC's own destructor body never mentioned: dtor_801D69FC@0x568
 * (landed alongside this file) - an open discrepancy between the two tables,
 * not yet resolved.
 *
 * DEFINITIVELY ESTABLISHES this class's full field layout via two generic
 * container-init calls (__construct_array, the CONFIRMED array-init helper):
 *   - this+0x2a8: a 4-SLOT array of 0x18-byte "child" records (each constructed
 *     via callback fn_801D6A88, then individually via fn_801D789C) - THIS is
 *     the "up to 4 child sub-records" fn_801D5390 selects among via this->0x5b0.
 *   - this+0x308: a 16-SLOT array of 0x14-byte records (each constructed via
 *     callback fn_801D6A58, then individually via fn_801D7874).
 * Also constructs 6 more sub-objects (this+0x448/0x464/0x4c4/0x52c/0x540/0x554/
 * 0x568) via fn_80218020/fn_801EB950/fn_801D77B4/fn_801E4B0C(x3)/fn_801E6AB8 -
 * confirming yet more real methods on the already-tracked +0x448/+0x464/+0x4c4
 * families, and that the 3 "parallel" sub-objects at +0x52c/0x540/0x554 (from
 * fn_801D4ED4) share ONE constructor (fn_801E4B0C).
 *
 * Zero-initializes EVERY field this session's landing has referenced for this
 * class (this->0x5b0=-1 sentinel through this->0x614), giving a complete,
 * confirmed field map in one place. Stores a self-pointer at this->0x460 (an
 * "owner back-reference" - likely read by the +0x448 sub-object).
 */

.section extab, "a"
.balign 4
.global etb_80008620
etb_80008620:
    .4byte 0x180A0000
    .4byte 0x00000048
    .4byte 0x00090060
    .4byte 0x00000074
    .4byte 0x00000054
    .4byte 0x0000007C
    .4byte 0x00000048
    .4byte 0x00000084
    .4byte 0x0006003C
    .4byte 0x00000138
    .4byte 0x00090030
    .4byte 0x00000000
    .4byte 0x0780001D
    .4byte 0x00000568
    .4byte dtor_801D69FC
    .4byte 0x0780001D
    .4byte 0x000004C4
    .4byte dtor_801D7730
    .4byte 0x0780001D
    .4byte 0x00000464
    .4byte dtor_801EB8CC
    .4byte 0x0780001D
    .4byte 0x00000448
    .4byte dtor_80217F80
    .4byte 0x8680001D
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_80008620, 108

.section extabindex, "a"
.balign 4
.global eti_80015A18
eti_80015A18:
    .4byte fn_801D686C
    .4byte 0x00000190
    .4byte etb_80008620
.size eti_80015A18, 12

.text
.balign 4
.global fn_801D686C

fn_801D686C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    bl fn_801D0F40
    lis 3, lbl_804A4958@ha
    lis 4, fn_801D6A88@ha
    addi 0, 3, lbl_804A4958@l
    li 5, 0x0
    stw 0, 0x0(29)
    addi 3, 29, 0x2a8
    addi 4, 4, fn_801D6A88@l
    li 6, 0x18
    li 7, 0x4
    bl __construct_array
    lis 4, fn_801D6A58@ha
    addi 3, 29, 0x308
    addi 4, 4, fn_801D6A58@l
    li 5, 0x0
    li 6, 0x14
    li 7, 0x10
    bl __construct_array
    addi 3, 29, 0x448
    bl fn_80218020
    addi 3, 29, 0x464
    bl fn_801EB950
    addi 3, 29, 0x4c4
    bl fn_801D77B4
    addi 3, 29, 0x52c
    bl fn_801E4B0C
    addi 3, 29, 0x540
    bl fn_801E4B0C
    addi 3, 29, 0x554
    bl fn_801E4B0C
    addi 3, 29, 0x568
    bl fn_801E6AB8
    li 0, -0x1
    li 31, 0x0
    stw 0, 0x5b0(29)
    li 30, 0x0
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stw 31, 0x5b4(29)
    stw 31, 0x5b8(29)
    stfs 0, 0x5bc(29)
    stfs 0, 0x5c0(29)
    stfs 0, 0x5c4(29)
    stfs 0, 0x5c8(29)
    stb 31, 0x5cc(29)
    stb 31, 0x5cd(29)
    stb 31, 0x5ce(29)
    stb 31, 0x5cf(29)
    stb 31, 0x5d0(29)
    stb 31, 0x5d1(29)
    sth 31, 0x5d2(29)
    sth 31, 0x5d4(29)
    stw 31, 0x5d8(29)
    stw 31, 0x5dc(29)
    stfs 0, 0x5e0(29)
    stfs 0, 0x5e4(29)
    stb 31, 0x5e8(29)
    stb 31, 0x5e9(29)
    stfs 0, 0x5ec(29)
    stfs 0, 0x5f0(29)
    stfs 0, 0x5f4(29)
    stfs 0, 0x5f8(29)
    stw 31, 0x5fc(29)
    stfs 0, 0x600(29)
    stfs 0, 0x604(29)
    stfs 0, 0x608(29)
    stfs 0, 0x60c(29)
    stfs 0, 0x610(29)
    stfs 0, 0x614(29)
L_801D6998:
    addi 3, 31, 0x2a8
    add 3, 29, 3
    bl fn_801D789C
    addi 30, 30, 0x1
    addi 31, 31, 0x18
    cmpwi 30, 0x4
    .4byte 0x4180FFE8 # blt .L_801D6998
    li 30, 0x0
    mr 31, 30
L_801D69BC:
    addi 3, 31, 0x308
    add 3, 29, 3
    bl fn_801D7874
    addi 30, 30, 0x1
    addi 31, 31, 0x14
    cmpwi 30, 0x10
    .4byte 0x4180FFE8 # blt .L_801D69BC
    stw 29, 0x460(29)
    mr 3, 29
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

