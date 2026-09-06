/*
 * UNIVERSAL BASE-ACTOR DEFAULT - fn_801F4F28(this). Landed as Track A
 * (byte-matched) + structural overview: the generic "on defeated,
 * decide reward" dispatcher. On a special-day global flag + this->0x1a8
 * category, may trigger a category-specific drop via fn_801CB434.
 * Otherwise, if this->0x18c (a drop-table index) is set, rolls a
 * chance-gated *rare* item drop (tracked via a global per-day bitmask
 * at lbl_8050EC80, avoiding repeat drops) and may spawn a special item
 * actor via fn_801F9484; if this->0x18c is unset, instead calls the
 * confirmed **fn_801F52A4 generic loot-table function** directly. Ends
 * with a shared tail: 2 more jittered SFX, a target/companion-link
 * resolution using the confirmed fn_8022F514/fn_8022F3DC delegate pair,
 * an animation cue selection based on this->0xbc, and a room-membership
 * commit via the confirmed fn_802D7704/fn_802D766C pair.
 */
.section extab, "a"
.balign 4
.global etb_80008ED4
etb_80008ED4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008ED4, 8

.section extabindex, "a"
.balign 4
.global eti_80016618
eti_80016618:
    .4byte fn_801F4F28
    .4byte 0x0000037C
    .4byte etb_80008ED4
.size eti_80016618, 12

.text
.balign 4
.global fn_801F4F28

fn_801F4F28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_801F4F84
    lbz 0, 0x1a8(31)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_801F4F84
    bl SpatialRegistry_GetBase
    bl fn_801F7A6C
    cmpwi 3, 0x1
    .4byte 0x40820018 # bne .L_801F4F84
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x0
    bl fn_801CB434
    .4byte 0x48000180 # b .L_801F5100
L_801F4F84:
    lwz 0, 0x18c(31)
    cmpwi 0, 0x0
    .4byte 0x41820160 # beq .L_801F50EC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820150 # beq .L_801F50EC
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820144 # beq .L_801F50EC
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x40820138 # bne .L_801F50EC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    lwz 6, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_801F4FD8
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_801F4FE0
L_801F4FD8:
    li 0, 0x0
    .4byte 0x48000054 # b .L_801F5030
L_801F4FE0:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_801F4FF0
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_801F4FF8
L_801F4FF0:
    li 0, 0x0
    .4byte 0x4800003C # b .L_801F5030
L_801F4FF8:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_801F5030:
    cmpwi 0, 0x0
    .4byte 0x418200B8 # beq .L_801F50EC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002C838 # lfs f0, lbl_8053F7D8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800070 # bge .L_801F50EC
    lwz 0, 0x10c(31)
    cmpwi 0, 0x0
    .4byte 0x41800064 # blt .L_801F50EC
    cmpwi 0, 0x4
    .4byte 0x4080005C # bge .L_801F50EC
    bl fn_801CCDA4
    mr 30, 3
    lwz 3, 0x10c(31)
    bl fn_8022F340
    cmpw 3, 30
    .4byte 0x40820044 # bne .L_801F50EC
    bl SpatialRegistry_GetBase
    lis 4, 0x4352
    addi 4, 4, 0x544c
    bl fn_801F7A08
    cmpwi 3, 0x0
    .4byte 0x4080002C # bge .L_801F50EC
    bl SpatialRegistry_GetBase
    lis 4, 0x4352
    lwz 5, 0x4(31)
    addi 4, 4, 0x544c
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000018 # b .L_801F5100
L_801F50EC:
    lwz 0, 0x18c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801F5100
    mr 3, 31
    bl fn_801F52A4
L_801F5100:
    lwz 0, 0xc0(31)
    lis 3, lbl_8046A00C@ha
    addi 5, 3, lbl_8046A00C@l
    lwz 3, 0x4(31)
    slwi 0, 0, 2
    addi 4, 31, 0xc
    lfsx 1, 5, 0
    li 5, 0x172
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0xc0(31)
    mr 5, 3
    lis 4, lbl_8046A00C@ha
    lwz 3, 0x4(31)
    slwi 0, 0, 2
    mr 29, 5
    addi 5, 4, lbl_8046A00C@l
    addi 4, 31, 0xc
    lfsx 1, 5, 0
    li 5, 0x173
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 30, 0x10c(31)
    cmpwi 30, 0x0
    .4byte 0x4180008C # blt .L_801F520C
    cmpwi 30, 0x4
    .4byte 0x40800084 # bge .L_801F520C
    bl fn_8013C824
    mr 4, 30
    mr 5, 29
    bl fn_8013C830
    lwz 3, 0x10c(31)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801F51B8
    lwz 3, 0x10c(31)
    bl fn_8022F3DC
    stw 3, 0x10c(31)
L_801F51B8:
    lwz 0, 0xfc(31)
    cmpwi 0, 0x1
    .4byte 0x40820040 # bne .L_801F5200
    lwz 3, 0x10c(31)
    bl fn_802357E0
    mr 4, 3
    lwz 3, 0x10c(31)
    bl fn_802359A4
    lwz 3, 0x10c(31)
    bl fn_802357E0
    mr 29, 3
    bl SpatialRegistry_GetBase
    lwz 4, 0x10c(31)
    mr 7, 29
    lwz 5, 0x4(31)
    addi 6, 31, 0xc
    li 8, 0x0
    bl fn_801F6718
L_801F5200:
    lwz 3, 0x10c(31)
    lwz 4, 0x198(31)
    bl fn_80235B68
L_801F520C:
    lwz 0, 0xbc(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_801F5220
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_801F5238
L_801F5220:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xf0
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_801F524C
L_801F5238:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
L_801F524C:
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 30, 0x16c(31)
    cmpwi 30, -0x1
    .4byte 0x4182001C # beq .L_801F5278
    bl GetRoomConfigRecord
    lbz 5, 0x1a8(31)
    mr 4, 30
    lwz 6, 0x4(31)
    bl fn_802D7704
    .4byte 0x48000014 # b .L_801F5288
L_801F5278:
    bl GetRoomConfigRecord
    lbz 4, 0x1a8(31)
    lwz 5, 0x4(31)
    bl fn_802D766C
L_801F5288:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

