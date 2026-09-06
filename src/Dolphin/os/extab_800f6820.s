# fn_800F6820: a NEW, DIFFERENT actor class than OIWA (the falling-boulder
# scheduler landed just before this in address order - see
# project_fsa_extab_bug_resolved.md) - this function's field layout
# (this->0x238/0x244/0x18c, no this->0x230 phase byte) doesn't match OIWA's
# confirmed pattern, and it calls entirely different helpers. Full callee
# investigation done - see project_fsa_extab_bug_resolved.md's
# fn_800F6820-callees section for details. Summary: this->0x238 is a
# tracked PLAYER INDEX (fn_8022DCD8/fn_8022DD74 are two more instances of
# the confirmed player-registry "safe delegate" family from
# project_fsa_player_registry_discovery.md); the 4-letter code
# 0x52555059 = "RUPY" IS reached via the real universal actor dispatcher
# fn_801F9484 after all (fn_801F8544 is a thin unconditional forwarding
# wrapper, `fn_801F9484(..., -1, -1)` - CORRECTING this file's original
# comment, which wrongly assumed fn_801F8544 was unrelated to the
# dispatcher without checking); fn_801CD150 transforms a position through a
# settings-derived origin remap (using GetRoomConfigRecord, the confirmed shared
# settings accessor) - plausibly a "collected item flies toward a HUD
# element" positioning step; fn_801F4F28 (892 bytes, the "on collected"
# handler) is a substantial function reusing multiple pieces of the
# ALREADY-CONFIRMED player-registry/interaction infrastructure
# (fn_8022F340/fn_8022F514/fn_8022F3DC special-mode remap and group
# helpers from project_fsa_player_registry_discovery.md) and, under a
# special-game-mode gate, spawns "CRTL" (CONFIRMED via the dispatch table:
# "Crystal Ball") as a bonus reward via fn_801F9484 directly. This strongly
# suggests fn_800F6820's class IS a rupee/money pickup actor whose
# collection handler can conditionally award a bonus Crystal Ball in
# certain story modes. Reuses the confirmed registry-lookup pair
# SpatialRegistry_GetBase+fn_801F666C, the sound-effect primitive fn_8013CC50, and the
# global PRNG (see reference_fsa_global_prng.md) with a new table set.
# Uses paired-single instructions - needs -mgekko in cflags.
.section extab, "a"
.balign 4
.global etb_80005720
etb_80005720:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80005720, 8

.section extabindex, "a"
.balign 4
.global eti_800119E0
eti_800119E0:
    .4byte fn_800F6820
    .4byte 0x00000294
    .4byte etb_80005720
.size eti_800119E0, 12

.text
.balign 4
.global fn_800F6820

fn_800F6820:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 27, 3
    lwz 29, 0x4(3)
    lwz 3, 0x238(3)
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_800F6850
    lwz 3, 0x238(27)
    bl fn_8022DD74
L_800F6850:
    lwz 0, 0x90(27)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x4182001C # beq .L_800F6874
    addi 3, 27, 0xc
    addi 4, 1, 0x20
    li 28, 0x1
    bl fn_801CD150
    li 29, 0x8
    .4byte 0x48000020 # b .L_800F6890
L_800F6874:
    lfs 0, 0xc(27)
    li 28, 0x0
    stfs 0, 0x20(1)
    lfs 0, 0x10(27)
    stfs 0, 0x24(1)
    lfs 0, 0x14(27)
    stfs 0, 0x28(1)
L_800F6890:
    mr 30, 29
    lis 31, 0x5255
    .4byte 0x480001B8 # b .L_800F6A50
L_800F689C:
    cmpwi 28, 0x0
    .4byte 0x4082006C # bne .L_800F690C
    cmpwi 0, 0xc8
    .4byte 0x41800018 # blt .L_800F68C0
    lwz 3, 0x244(27)
    li 29, 0x3
    subi 0, 3, 0x32
    stw 0, 0x244(27)
    .4byte 0x48000098 # b .L_800F6954
L_800F68C0:
    cmpwi 0, 0x50
    .4byte 0x41800018 # blt .L_800F68DC
    lwz 3, 0x244(27)
    li 29, 0x2
    subi 0, 3, 0x14
    stw 0, 0x244(27)
    .4byte 0x4800007C # b .L_800F6954
L_800F68DC:
    cmpwi 0, 0x14
    .4byte 0x41800018 # blt .L_800F68F8
    lwz 3, 0x244(27)
    li 29, 0x1
    subi 0, 3, 0x5
    stw 0, 0x244(27)
    .4byte 0x48000060 # b .L_800F6954
L_800F68F8:
    lwz 3, 0x244(27)
    li 29, 0x0
    subi 0, 3, 0x1
    stw 0, 0x244(27)
    .4byte 0x4800004C # b .L_800F6954
L_800F690C:
    cmpwi 0, 0xc8
    .4byte 0x41800018 # blt .L_800F6928
    lwz 3, 0x244(27)
    li 29, 0x4
    subi 0, 3, 0x64
    stw 0, 0x244(27)
    .4byte 0x48000030 # b .L_800F6954
L_800F6928:
    cmpwi 0, 0x32
    .4byte 0x41800018 # blt .L_800F6944
    lwz 3, 0x244(27)
    li 29, 0x3
    subi 0, 3, 0x32
    stw 0, 0x244(27)
    .4byte 0x48000014 # b .L_800F6954
L_800F6944:
    lwz 3, 0x244(27)
    li 29, 0x2
    subi 0, 3, 0x14
    stw 0, 0x244(27)
L_800F6954:
    bl SpatialRegistry_GetBase
    mr 5, 30
    mr 7, 29
    addi 4, 31, 0x5059
    addi 6, 1, 0x20
    bl fn_801F8544
    mr. 29, 3
    .4byte 0x418000E0 # blt .L_800F6A50
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200CC # beq .L_800F6A50
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC0628F90 # lfs f3, lbl_8053BF30@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC0428F94 # lfs f2, lbl_8053BF34@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC0028F98 # lfs f0, lbl_8053BF38@sda21(r0)
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
    fsubs 1, 1, 3
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
    fsubs 1, 1, 3
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fsubs 1, 2, 1
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x18(1)
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 3
    fsubs 1, 2, 1
    stfs 1, 0x14(1)
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_800F6A50:
    lwz 0, 0x244(27)
    cmpwi 0, 0x0
    .4byte 0x4181FE44 # bgt .L_800F689C
    lbz 0, 0x234(27)
    .4byte 0x38AD82B0 # li r5, lbl_80539E70@sda21
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    slwi 0, 0, 1
    .4byte 0xC0228F90 # lfs f1, lbl_8053BF30@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    mr 3, 27
    stw 0, 0x18c(27)
    bl fn_801F4F28
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

