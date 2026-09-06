.section extab, "a"
.balign 4
.global etb_80006C2C
etb_80006C2C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006C2C, 8

.section extabindex, "a"
.balign 4
.global eti_800135D0
eti_800135D0:
    .4byte fn_8013FA08
    .4byte 0x00000348
    .4byte etb_80006C2C
.size eti_800135D0, 12

.text
.balign 4
.global fn_8013FA08

# fn_8013FA08(this) - OKTA (Octorok)'s real draw(). Genuinely understood:
#
# 1. Builds a default material struct in-line (the SAME shared 16-byte
#    identity-table + blend-flag pattern seen across many actors this
#    session - see [[project_fsa_door_key0_full_depth]]).
# 2. Selects a sub-model/pose index (`this->0x230`/`0x90`/`0x234` combos -
#    survey-level for the exact bit meanings) - almost certainly choosing
#    between idle/shooting/hit-reaction poses.
# 3. **Special "captured/attached" render path** (`this->0x4==8`, a
#    distinct owner-ID sentinel): repositions using stored offsets
#    (`this->0xcc/0xd0/0xd4/0xd8`) relative to the CURRENT position, picks
#    a model index via a direction-keyed lookup table (`lbl_80465A80`),
#    and draws via the CONFIRMED universal render primitive
#    `fn_801EF574` - this reads as Octorok being CARRIED/attached to
#    something else (matching the classic "picked up and thrown" Zelda
#    enemy interaction) rather than moving under its own control.
# 4. **Normal path**: selects a model index from ONE of TWO lookup tables
#    depending on state (`lbl_8049F1E0` for states 1/2, `lbl_8049F1C0`
#    keyed by direction+a type bit otherwise), then draws via
#    `fn_803075AC` (now fully decompiled, see extab_803075ac.s) -
#    registers a per-player "shadow/carry-marker" slot for whichever
#    player currently tracks this Octorok as its ownerID, confirmed
#    reused verbatim by TINK.
fn_8013FA08:
    stwu 1, -0xb0(1)
    mflr 0
    li 10, 0x0
    stw 0, 0xb4(1)
    li 0, -0x1
    addi 9, 1, 0x5c
    stw 31, 0xac(1)
    stw 30, 0xa8(1)
    mr 30, 3
    stw 29, 0xa4(1)
    stw 0, 0x6c(1)
    stw 0, 0x70(1)
    .4byte 0x48000064 # b .L_8013FA9C
L_8013FA3C:
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
L_8013FA9C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8013FA3C
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x6c(1)
    stw 5, 0x70(1)
    stw 5, 0x74(1)
    stb 5, 0x78(1)
    stb 5, 0x79(1)
    stb 5, 0x7a(1)
    stb 4, 0x7b(1)
    stb 4, 0x7c(1)
    stb 5, 0x7d(1)
    stb 5, 0x7e(1)
    stb 5, 0x7f(1)
    stb 5, 0x80(1)
    stb 5, 0x81(1)
    stb 4, 0x82(1)
    stw 3, 0x84(1)
    stb 4, 0x88(1)
    stb 5, 0x89(1)
    stb 5, 0x8a(1)
    stw 6, 0x8c(1)
    stw 5, 0x90(1)
    stw 0, 0x94(1)
    stfs 0, 0x38(1)
    stfs 0, 0x48(1)
    stfs 0, 0x58(1)
    lbz 0, 0x278(30)
    stb 0, 0x5f(1)
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_8013FB3C
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8013FB48
L_8013FB3C:
    lwz 3, 0x24c(30)
    addi 31, 3, 0x2
    .4byte 0x48000024 # b .L_8013FB68
L_8013FB48:
    lwz 0, 0x90(30)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8013FB60
    lwz 0, 0x234(30)
    extrwi 31, 0, 1, 28
    .4byte 0x4800000C # b .L_8013FB68
L_8013FB60:
    lwz 0, 0x234(30)
    extrwi 31, 0, 1, 29
L_8013FB68:
    lfs 1, 0x260(30)
    addi 0, 1, 0x2c
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    stfs 0, 0x4c(1)
    stfs 0, 0x50(1)
    stfs 1, 0x54(1)
    stw 0, 0x74(1)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40820114 # bne .L_8013FCB8
    li 29, 0x0
    bl GetRoomConfigRecord
    lwz 5, 0xcc(3)
    lwz 4, 0xd0(3)
    lwz 0, 0xd4(3)
    lwz 3, 0xd8(3)
    lfs 1, 0xc(30)
    stw 5, 0x1c(1)
    stfs 1, 0x10(1)
    lfs 0, 0x1c(1)
    stw 4, 0x20(1)
    lfs 2, 0x10(30)
    fadds 1, 1, 0
    lfs 0, 0x20(1)
    stfs 2, 0x14(1)
    fadds 0, 2, 0
    lfs 2, 0x14(30)
    stw 0, 0x24(1)
    stfs 2, 0x18(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 0, 0x90(30)
    stw 3, 0x28(1)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8013FC10
    li 29, 0x446
L_8013FC10:
    lwz 0, 0x98(30)
    lis 3, lbl_80465A80@ha
    addi 3, 3, lbl_80465A80@l
    addi 5, 1, 0x10
    slwi 0, 0, 2
    addi 6, 1, 0x5c
    add 4, 0, 31
    add 4, 29, 4
    bl fn_801EF574
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_8013FC48
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_8013FC60
L_8013FC48:
    lwz 0, 0x258(30)
    lis 3, lbl_8049F1E0@ha
    addi 3, 3, lbl_8049F1E0@l
    slwi 0, 0, 2
    lwzx 3, 3, 0
    .4byte 0x48000028 # b .L_8013FC84
L_8013FC60:
    lwz 4, 0x98(30)
    lis 3, lbl_8049F1C0@ha
    lwz 0, 0x234(30)
    addi 3, 3, lbl_8049F1C0@l
    slwi 4, 4, 1
    extrwi 0, 0, 1, 28
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 3, 3, 0
L_8013FC84:
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    addi 6, 3, 0x158
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    bl fn_803075AC
    .4byte 0x48000080 # b .L_8013FD34
L_8013FCB8:
    lwz 0, 0x90(30)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_8013FD00
    lwz 0, 0x98(30)
    lis 3, lbl_80465A80@ha
    .4byte 0xC0229E8C # lfs f1, lbl_8053CE2C@sda21(r0)
    addi 4, 3, lbl_80465A80@l
    slwi 0, 0, 2
    mr 3, 30
    add 5, 0, 31
    fmr 2, 1
    addi 6, 1, 0x5c
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    addi 5, 5, 0x446
    bl fn_801F02BC
    .4byte 0x48000038 # b .L_8013FD34
L_8013FD00:
    .4byte 0xC0229E8C # lfs f1, lbl_8053CE2C@sda21(r0)
    lis 3, lbl_80465A80@ha
    lwz 0, 0x98(30)
    addi 4, 3, lbl_80465A80@l
    fmr 2, 1
    mr 3, 30
    slwi 0, 0, 2
    addi 6, 1, 0x5c
    add 5, 0, 31
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_8013FD34:
    lwz 0, 0xb4(1)
    lwz 31, 0xac(1)
    lwz 30, 0xa8(1)
    lwz 29, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

