.section extab, "a"
.balign 4
.global etb_80006F14
etb_80006F14:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006F14, 8

.section extabindex, "a"
.balign 4
.global eti_80013A2C
eti_80013A2C:
    .4byte fn_80157FB0
    .4byte 0x00000424
    .4byte etb_80006F14
.size eti_80013A2C, 12

# fn_80157FB0 - SLR2's ("Bow Soldier") real setParams(). Fully traced,
# matches SLR1.json/SLR2.json's field layout closely. Sets the standard
# two AI detection boxes, then extracts the universal spawn param's
# sub-fields: this->0x94 = a "Behavior Flags"-derived byte, and
# this->0x280 = the TOP byte of the spawn param ("Chief Soldier ID" per
# FSALib) - converted to -1 when literally 0, meaning this->0x280 reuses
# the EXACT same "-1 = unlinked" sentinel convention as the newly-
# discovered player co-op link field (playerObj->0xd60, see
# [[project_fsa_player_target_helper_decoded]]) - strong evidence NPC
# "Chief Soldier" linking and the player link/chain mechanic share the
# same underlying idiom, just applied to different actor kinds. Also
# reads this->0x108 from a per-Type lookup table (lbl_8049FDC8, indexed
# by the raw "Type" byte: 0=Bow/2=Bomb/3=Bow-hidden-in-grass per
# SLR2.json), sets this->0x284 = -1 (a second, separate tracked-handle
# sentinel), randomizes this->0x98 (visual variant) and this->0x294
# (animation phase offset) via the confirmed global PRNG, and runs a
# "find my rank among stacked actors at this position" loop (comparing
# against a shared position table, storing the count into this->0x290 -
# the same cyclic-index-assignment idiom seen in earlier actor clusters).
# Sets this->0x230 (initial FSM state) based on Type (0xf for Bomb-like
# types >= 2, 8 for Hidden/Type==3, 2 otherwise) - UNLESS this->0x280
# (chief link) is non-negative, in which case this->0x230 is forced to
# 0xe (a dedicated "escort my chief" state) regardless of weapon type.
.text
.balign 4
.global fn_80157FB0

fn_80157FB0:
    stwu 1, -0x20(1)
    li 0, 0x0
    .4byte 0xC002A3F0 # lfs f0, lbl_8053D390@sda21(r0)
    .4byte 0xC022A3E8 # lfs f1, lbl_8053D388@sda21(r0)
    stfs 0, 0x60(3)
    .4byte 0xC002A3F4 # lfs f0, lbl_8053D394@sda21(r0)
    stfs 1, 0x64(3)
    .4byte 0xC022A3EC # lfs f1, lbl_8053D38C@sda21(r0)
    stfs 0, 0x68(3)
    .4byte 0xC002A470 # lfs f0, lbl_8053D410@sda21(r0)
    stfs 1, 0x6c(3)
    .4byte 0xC042A3E0 # lfs f2, lbl_8053D380@sda21(r0)
    stfs 0, 0x80(3)
    .4byte 0xC022A474 # lfs f1, lbl_8053D414@sda21(r0)
    stfs 0, 0x84(3)
    .4byte 0xC002A420 # lfs f0, lbl_8053D3C0@sda21(r0)
    stfs 2, 0x88(3)
    stfs 2, 0x8c(3)
    stfs 1, 0x70(3)
    stfs 1, 0x74(3)
    stfs 0, 0x78(3)
    stfs 0, 0x7c(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 8, 8
    sth 4, 0x94(3)
    lwz 4, 0x90(3)
    srwi 4, 4, 24
    stw 4, 0x280(3)
    stw 0, 0x28c(3)
    lwz 0, 0x280(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80158038
    li 0, -0x1
    stw 0, 0x280(3)
L_80158038:
    li 10, 0x0
    lis 4, 0x1
    stw 10, 0x25c(3)
    lis 5, 0x19
    addi 8, 5, 0x660d
    lis 6, lbl_8049FDC8@ha
    stw 10, 0x260(3)
    addi 9, 6, lbl_8049FDC8@l
    subi 5, 4, 0x1
    addi 0, 4, 0x2205
    stw 10, 0x264(3)
    li 7, 0x8
    .4byte 0xC042A3DC # lfs f2, lbl_8053D37C@sda21(r0)
    li 6, -0x1
    stw 10, 0x268(3)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stw 10, 0x26c(3)
    .4byte 0xC022A478 # lfs f1, lbl_8053D418@sda21(r0)
    stw 10, 0x270(3)
    stw 10, 0x238(3)
    stw 10, 0x23c(3)
    stw 10, 0x240(3)
    stw 10, 0x244(3)
    stw 10, 0x248(3)
    stw 10, 0x24c(3)
    stw 10, 0x250(3)
    stw 10, 0x254(3)
    stw 10, 0x258(3)
    lwz 4, 0x90(3)
    clrlwi 4, 4, 24
    stw 4, 0x90(3)
    lwz 4, 0x90(3)
    slwi 4, 4, 3
    lwzx 4, 9, 4
    stw 4, 0x108(3)
    stw 10, 0x274(3)
    stw 10, 0x278(3)
    stfs 2, 0x298(3)
    stfs 0, 0x2b4(3)
    stfs 0, 0x2b0(3)
    stfs 0, 0x2ac(3)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(9)
    mullw 4, 4, 8
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(9)
    lwz 4, 0xb4(9)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    clrlwi 4, 4, 30
    stw 4, 0x98(3)
    stb 10, 0x2a8(3)
    stw 7, 0x238(3)
    stw 6, 0x284(3)
    .4byte 0x808D8F90 # lwz r4, lbl_8053AB50@sda21(r0)
    stw 4, 0x27c(3)
    sth 5, 0x2aa(3)
    .4byte 0x808D8F90 # lwz r4, lbl_8053AB50@sda21(r0)
    addi 4, 4, 0x1
    .4byte 0x908D8F90 # stw r4, lbl_8053AB50@sda21(r0)
    stw 0, 0xb0(3)
    lhz 0, 0x94(3)
    cmplwi 0, 0x2
    .4byte 0x41820010 # beq .L_80158170
    lwz 0, 0x90(3)
    cmplwi 0, 0x3
    .4byte 0x4082000C # bne .L_80158178
L_80158170:
    lis 0, 0x400
    stw 0, 0xb0(3)
L_80158178:
    li 0, 0x0
    stw 0, 0x290(3)
    lwz 0, 0x90(3)
    cmplwi 0, 0x2
    .4byte 0x40820130 # bne .L_801582B8
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x118(4)
    cmpwi 0, 0x0
    .4byte 0x4082011C # bne .L_801582B8
    lwz 0, 0x11c(4)
    cmpwi 0, 0x3
    .4byte 0x40820110 # bne .L_801582B8
    lis 4, lbl_8049FFD8@ha
    li 5, 0x1
    stw 5, 0x108(3)
    li 0, 0x2
    addi 6, 4, lbl_8049FFD8@l
    .4byte 0xC022A454 # lfs f1, lbl_8053D3F4@sda21(r0)
    li 5, 0x0
    mtctr 0
L_801581CC:
    lfs 0, 0xc(3)
    lwz 0, 0x0(6)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    cmpw 4, 0
    .4byte 0x4082002C # bne .L_80158214
    lfs 0, 0x10(3)
    lwz 0, 0x4(6)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_80158214
    stw 5, 0x290(3)
    .4byte 0x480000A8 # b .L_801582B8
L_80158214:
    lfs 0, 0xc(3)
    addi 5, 5, 0x1
    lwzu 0, 0x8(6)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    cmpw 4, 0
    .4byte 0x4082002C # bne .L_80158260
    lfs 0, 0x10(3)
    lwz 0, 0x4(6)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_80158260
    stw 5, 0x290(3)
    .4byte 0x4800005C # b .L_801582B8
L_80158260:
    lfs 0, 0xc(3)
    addi 5, 5, 0x1
    lwzu 0, 0x8(6)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    cmpw 4, 0
    .4byte 0x4082002C # bne .L_801582AC
    lfs 0, 0x10(3)
    lwz 0, 0x4(6)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_801582AC
    stw 5, 0x290(3)
    .4byte 0x48000010 # b .L_801582B8
L_801582AC:
    addi 6, 6, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FF18 # bdnz .L_801581CC
L_801582B8:
    .4byte 0xC002A47C # lfs f0, lbl_8053D41C@sda21(r0)
    stfs 0, 0x2a4(3)
    lhz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801582D4
    .4byte 0xC002A45C # lfs f0, lbl_8053D3FC@sda21(r0)
    stfs 0, 0x2a4(3)
L_801582D4:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 4, 4, 0x660d
    .4byte 0xC002A3DC # lfs f0, lbl_8053D37C@sda21(r0)
    lwz 5, 0xb4(6)
    li 0, 0x0
    .4byte 0xC042A404 # lfs f2, lbl_8053D3A4@sda21(r0)
    mullw 4, 5, 4
    .4byte 0xC082A424 # lfs f4, lbl_8053D3C4@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    lfs 3, 0x2a4(3)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fmadds 0, 4, 3, 0
    stfs 0, 0x294(3)
    sth 0, 0x234(3)
    lwz 0, 0x90(3)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_80158350
    .4byte 0x40800008 # bge .L_80158344
    .4byte 0x4800002C # b .L_8015836C
L_80158344:
    cmpwi 0, 0x4
    .4byte 0x40800024 # bge .L_8015836C
    .4byte 0x4800003C # b .L_80158388
L_80158350:
    li 0, 0x4
    li 4, 0x1
    stw 0, 0xbc(3)
    li 0, 0xf
    stw 4, 0xb8(3)
    stw 0, 0x230(3)
    .4byte 0x48000038 # b .L_801583A0
L_8015836C:
    li 0, 0x2
    li 4, 0x1
    stw 0, 0xbc(3)
    li 0, 0x0
    stw 4, 0xb8(3)
    stw 0, 0x230(3)
    .4byte 0x4800001C # b .L_801583A0
L_80158388:
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 4, 0x1
    li 0, 0x8
    stfs 0, 0x298(3)
    stw 4, 0x278(3)
    stw 0, 0x230(3)
L_801583A0:
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    li 0, 0x0
    .4byte 0xC002A3DC # lfs f0, lbl_8053D37C@sda21(r0)
    stfs 1, 0x29c(3)
    stfs 0, 0x2a0(3)
    stw 0, 0x288(3)
    lwz 0, 0x280(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_801583CC
    li 0, 0xe
    stw 0, 0x230(3)
L_801583CC:
    addi 1, 1, 0x20
    blr

