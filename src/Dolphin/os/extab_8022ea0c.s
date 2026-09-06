.section extab, "a"
.balign 4
.global etb_8000AA90
etb_8000AA90:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000AA90, 8

.section extabindex, "a"
.balign 4
.global eti_80018AE4
eti_80018AE4:
    .4byte fn_8022EA0C
    .4byte 0x00000934
    .4byte etb_8000AA90
.size eti_80018AE4, 12

# fn_8022EA0C - "resolve the linked/related player index," called by
# fn_8022D534's two-stage capability check (see
# [[project_fsa_player_target_helper_decoded]]). Survey-level - by far
# the largest function in this whole helper family (0x934 bytes, ~590
# instructions) and the first genuinely RECURSIVE one found in the family
# (it calls itself once, deep in a comparison branch). Signature:
# fn_8022EA0C(playerIndex) -> s32 resolvedIndex.
#
# Structure: repeatedly re-derives the player object for the input index
# via the confirmed lbl_8053AC90 roster + playerObj->0xcac master-flag
# gate (same pattern as every other function in this family), then chains
# through several NEW delegate calls (Player_IsLinked, Player_GetLinkTargetIndex,
# fn_8022F514, fn_8022F3DC, Player_GetCapabilityFlag, fn_802486A0, fn_80240888,
# fn_8022E438, fn_80234004, fn_8022CAF8 - none independently decompiled
# yet) to compute an initial candidate, then runs one or two 4-iteration
# loops over ALL player slots doing pairwise comparisons (via
# fn_8022F3DC/fn_8022F514/Player_GetCapabilityFlag/fn_802486A0/fn_80240888) to find a
# "best" match by some ordering rule, recursing into itself when a
# specific tie-breaking condition is hit. Net effect (from the caller's
# use, and the loop-over-4-with-tie-breaking shape): finds "the" related
# player for a linked-player query - most likely resolving to whichever
# player in a linked group should actually answer the original
# capability question. Not traced instruction-by-instruction given the
# size and the sheer number of still-unexplored delegate calls it opens;
# a good target for a dedicated follow-up session given how much of the
# player-capability picture still hides behind these ~10 new names.
.text
.balign 4
.global fn_8022EA0C

fn_8022EA0C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022EA34
    li 3, -0x1
    .4byte 0x480008FC # b .L_8022F32C
L_8022EA34:
    .4byte 0x4082000C # bne .L_8022EA40
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022EA80
L_8022EA40:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022EA50
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022EA80
L_8022EA50:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022EA60
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022EA80
L_8022EA60:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022EA7C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022EA80
L_8022EA7C:
    lbz 0, 0xcac(3)
L_8022EA80:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022EA90
    mr 3, 30
    .4byte 0x480008A0 # b .L_8022F32C
L_8022EA90:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022EAA0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022EB0C
L_8022EAA0:
    .4byte 0x4082000C # bne .L_8022EAAC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022EAEC
L_8022EAAC:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022EABC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022EAEC
L_8022EABC:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022EACC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022EAEC
L_8022EACC:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022EAE8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022EAEC
L_8022EAE8:
    lbz 0, 0xcac(3)
L_8022EAEC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022EAFC
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022EB0C
L_8022EAFC:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_IsLinked
L_8022EB0C:
    clrlwi. 0, 3, 24
    .4byte 0x41820400 # beq .L_8022EF10
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022EB28
    li 29, -0x1
    .4byte 0x48000074 # b .L_8022EB98
L_8022EB28:
    .4byte 0x4082000C # bne .L_8022EB34
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022EB74
L_8022EB34:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022EB44
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022EB74
L_8022EB44:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022EB54
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022EB74
L_8022EB54:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022EB70
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022EB74
L_8022EB70:
    lbz 0, 0xcac(3)
L_8022EB74:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022EB84
    li 29, -0x1
    .4byte 0x48000018 # b .L_8022EB98
L_8022EB84:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_GetLinkTargetIndex
    mr 29, 3
L_8022EB98:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022EBAC
    li 29, -0x1
    .4byte 0x48000360 # b .L_8022EF08
L_8022EBAC:
    .4byte 0x4082000C # bne .L_8022EBB8
    li 3, 0x0
    .4byte 0x48000044 # b .L_8022EBF8
L_8022EBB8:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8022EBC8
    li 3, 0x0
    .4byte 0x48000034 # b .L_8022EBF8
L_8022EBC8:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_8022EBD8
    li 3, 0x0
    .4byte 0x48000024 # b .L_8022EBF8
L_8022EBD8:
    slwi 0, 29, 2
    add 3, 3, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022EBF4
    li 3, 0x0
    .4byte 0x48000008 # b .L_8022EBF8
L_8022EBF4:
    bl Player_GetCapabilityFlag
L_8022EBF8:
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8022EC04
    .4byte 0x48000308 # b .L_8022EF08
L_8022EC04:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022EC18
    li 3, 0x0
    .4byte 0x48000030 # b .L_8022EC44
L_8022EC18:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022EC30
    li 3, 0x0
    .4byte 0x48000018 # b .L_8022EC44
L_8022EC30:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    slwi 0, 29, 2
    add 3, 3, 0
    lwz 3, 0x4(3)
    bl Player_IsLinked
L_8022EC44:
    clrlwi. 0, 3, 24
    .4byte 0x418200F0 # beq .L_8022ED38
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022EC60
    li 29, -0x1
    .4byte 0x48000034 # b .L_8022EC90
L_8022EC60:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022EC78
    li 29, -0x1
    .4byte 0x4800001C # b .L_8022EC90
L_8022EC78:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    slwi 0, 29, 2
    add 3, 3, 0
    lwz 3, 0x4(3)
    bl Player_GetLinkTargetIndex
    mr 29, 3
L_8022EC90:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022ECA4
    li 29, -0x1
    .4byte 0x48000268 # b .L_8022EF08
L_8022ECA4:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8022ECB8
    .4byte 0x48000254 # b .L_8022EF08
L_8022ECB8:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8022ECDC
    mr 3, 29
    bl fn_8022F3DC
    bl fn_8022EA0C
    mr 29, 3
    .4byte 0x48000230 # b .L_8022EF08
L_8022ECDC:
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x41820008 # beq .L_8022ECF0
    .4byte 0x4800021C # b .L_8022EF08
L_8022ECF0:
    mr 27, 29
    li 28, 0x0
    .4byte 0x48000028 # b .L_8022ED20
L_8022ECFC:
    addi 28, 28, 0x1
    addi 27, 27, 0x1
    .4byte 0x48000008 # b .L_8022ED0C
L_8022ED08:
    addi 27, 27, 0x1
L_8022ED0C:
    mr 3, 27
    mr 4, 29
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182FFEC # beq .L_8022ED08
L_8022ED20:
    mr 3, 29
    bl fn_80234004
    cmpw 28, 3
    .4byte 0x4180FFD0 # blt .L_8022ECFC
    mr 29, 27
    .4byte 0x480001D4 # b .L_8022EF08
L_8022ED38:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022ED4C
    li 3, 0x0
    .4byte 0x48000030 # b .L_8022ED78
L_8022ED4C:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022ED64
    li 3, 0x0
    .4byte 0x48000018 # b .L_8022ED78
L_8022ED64:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    slwi 0, 29, 2
    add 3, 3, 0
    lwz 3, 0x4(3)
    bl fn_802486A0
L_8022ED78:
    cmpwi 3, 0x4
    .4byte 0x41820008 # beq .L_8022ED84
    .4byte 0x48000188 # b .L_8022EF08
L_8022ED84:
    mr 27, 29
    slwi 30, 29, 2
    li 28, 0x0
    .4byte 0x48000130 # b .L_8022EEC0
L_8022ED94:
    addi 28, 28, 0x1
    addi 27, 27, 0x1
    .4byte 0x48000008 # b .L_8022EDA4
L_8022EDA0:
    addi 27, 27, 0x1
L_8022EDA4:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022EDB8
    li 0, 0x0
    .4byte 0x48000104 # b .L_8022EEB8
L_8022EDB8:
    cmpwi 27, 0x0
    .4byte 0x4080000C # bge .L_8022EDC8
    li 0, 0x0
    .4byte 0x480000F4 # b .L_8022EEB8
L_8022EDC8:
    cmpwi 27, 0x4
    .4byte 0x4180000C # blt .L_8022EDD8
    li 0, 0x0
    .4byte 0x480000E4 # b .L_8022EEB8
L_8022EDD8:
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8022EDE8
    li 0, 0x0
    .4byte 0x480000D4 # b .L_8022EEB8
L_8022EDE8:
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_8022EDF8
    li 0, 0x0
    .4byte 0x480000C4 # b .L_8022EEB8
L_8022EDF8:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022EE10
    li 0, 0x0
    .4byte 0x480000AC # b .L_8022EEB8
L_8022EE10:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022EE28
    li 0, 0x0
    .4byte 0x48000094 # b .L_8022EEB8
L_8022EE28:
    cmpw 27, 29
    .4byte 0x4082000C # bne .L_8022EE38
    li 0, 0x1
    .4byte 0x48000084 # b .L_8022EEB8
L_8022EE38:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8022EE8C
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082000C # bne .L_8022EE60
    li 0, 0x1
    .4byte 0x4800005C # b .L_8022EEB8
L_8022EE60:
    mr 3, 29
    bl fn_8022F3DC
    mr 31, 3
    mr 3, 27
    bl fn_8022F3DC
    cmpw 3, 31
    .4byte 0x4082000C # bne .L_8022EE84
    li 0, 0x1
    .4byte 0x48000038 # b .L_8022EEB8
L_8022EE84:
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022EEB8
L_8022EE8C:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8022EEB4
    mr 3, 29
    bl fn_8022F3DC
    subf 0, 27, 3
    cntlzw 0, 0
    srwi 0, 0, 5
    .4byte 0x48000008 # b .L_8022EEB8
L_8022EEB4:
    li 0, 0x0
L_8022EEB8:
    clrlwi. 0, 0, 24
    .4byte 0x4182FEE4 # beq .L_8022EDA0
L_8022EEC0:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022EED4
    li 3, 0x0
    .4byte 0x4800002C # b .L_8022EEFC
L_8022EED4:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022EEEC
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022EEFC
L_8022EEEC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 3, 0x4
    lwzx 3, 30, 0
    bl fn_80240888
L_8022EEFC:
    cmpw 28, 3
    .4byte 0x4180FE94 # blt .L_8022ED94
    mr 29, 27
L_8022EF08:
    mr 3, 29
    .4byte 0x48000420 # b .L_8022F32C
L_8022EF10:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022EF24
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022EF90
L_8022EF24:
    .4byte 0x4082000C # bne .L_8022EF30
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022EF70
L_8022EF30:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022EF40
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022EF70
L_8022EF40:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022EF50
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022EF70
L_8022EF50:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022EF6C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022EF70
L_8022EF6C:
    lbz 0, 0xcac(3)
L_8022EF70:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022EF80
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022EF90
L_8022EF80:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl fn_802486A0
L_8022EF90:
    cmpwi 3, 0x4
    .4byte 0x4182000C # beq .L_8022EFA0
    mr 3, 30
    .4byte 0x48000390 # b .L_8022F32C
L_8022EFA0:
    mr 31, 30
    slwi 28, 30, 2
    li 27, 0x0
    .4byte 0x480002FC # b .L_8022F2A8
L_8022EFB0:
    addi 31, 31, 0x1
    addi 27, 27, 0x1
    slwi 29, 31, 2
    .4byte 0x4800000C # b .L_8022EFC8
L_8022EFC0:
    addi 29, 29, 0x4
    addi 31, 31, 0x1
L_8022EFC8:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022EFDC
    li 0, 0x0
    .4byte 0x480002C8 # b .L_8022F2A0
L_8022EFDC:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022EFEC
    li 0, 0x0
    .4byte 0x480002B8 # b .L_8022F2A0
L_8022EFEC:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022EFFC
    li 0, 0x0
    .4byte 0x480002A8 # b .L_8022F2A0
L_8022EFFC:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022F00C
    li 0, 0x0
    .4byte 0x48000298 # b .L_8022F2A0
L_8022F00C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022F01C
    li 0, 0x0
    .4byte 0x48000288 # b .L_8022F2A0
L_8022F01C:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022F02C
    li 3, 0x0
    .4byte 0x48000040 # b .L_8022F068
L_8022F02C:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022F03C
    li 3, 0x0
    .4byte 0x48000030 # b .L_8022F068
L_8022F03C:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022F04C
    li 3, 0x0
    .4byte 0x48000020 # b .L_8022F068
L_8022F04C:
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022F064
    li 3, 0x0
    .4byte 0x48000008 # b .L_8022F068
L_8022F064:
    bl Player_GetCapabilityFlag
L_8022F068:
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F078
    li 0, 0x0
    .4byte 0x4800022C # b .L_8022F2A0
L_8022F078:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022F08C
    li 3, 0x0
    .4byte 0x48000040 # b .L_8022F0C8
L_8022F08C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022F09C
    li 3, 0x0
    .4byte 0x48000030 # b .L_8022F0C8
L_8022F09C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022F0AC
    li 3, 0x0
    .4byte 0x48000020 # b .L_8022F0C8
L_8022F0AC:
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022F0C4
    li 3, 0x0
    .4byte 0x48000008 # b .L_8022F0C8
L_8022F0C4:
    bl Player_GetCapabilityFlag
L_8022F0C8:
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F0D8
    li 0, 0x0
    .4byte 0x480001CC # b .L_8022F2A0
L_8022F0D8:
    cmpw 31, 30
    .4byte 0x4082000C # bne .L_8022F0E8
    li 0, 0x1
    .4byte 0x480001BC # b .L_8022F2A0
L_8022F0E8:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022F0FC
    li 3, 0x0
    .4byte 0x4800002C # b .L_8022F124
L_8022F0FC:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F114
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022F124
L_8022F114:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    bl Player_IsLinked
L_8022F124:
    clrlwi. 0, 3, 24
    .4byte 0x418200E4 # beq .L_8022F20C
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022F140
    li 3, -0x1
    .4byte 0x4800002C # b .L_8022F168
L_8022F140:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F158
    li 3, -0x1
    .4byte 0x48000014 # b .L_8022F168
L_8022F158:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    bl Player_GetLinkTargetIndex
L_8022F168:
    cmpw 30, 3
    .4byte 0x4082000C # bne .L_8022F178
    li 0, 0x1
    .4byte 0x4800012C # b .L_8022F2A0
L_8022F178:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022F18C
    li 26, -0x1
    .4byte 0x48000030 # b .L_8022F1B8
L_8022F18C:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F1A4
    li 26, -0x1
    .4byte 0x48000018 # b .L_8022F1B8
L_8022F1A4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    bl Player_GetLinkTargetIndex
    mr 26, 3
L_8022F1B8:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022F1CC
    li 3, -0x1
    .4byte 0x4800002C # b .L_8022F1F4
L_8022F1CC:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F1E4
    li 3, -0x1
    .4byte 0x48000014 # b .L_8022F1F4
L_8022F1E4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    bl Player_GetLinkTargetIndex
L_8022F1F4:
    cmpw 26, 3
    .4byte 0x4082000C # bne .L_8022F204
    li 0, 0x1
    .4byte 0x480000A0 # b .L_8022F2A0
L_8022F204:
    li 0, 0x0
    .4byte 0x48000098 # b .L_8022F2A0
L_8022F20C:
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022F220
    li 3, 0x0
    .4byte 0x4800002C # b .L_8022F248
L_8022F220:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F238
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022F248
L_8022F238:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    bl Player_IsLinked
L_8022F248:
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_8022F29C
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022F264
    li 3, -0x1
    .4byte 0x4800002C # b .L_8022F28C
L_8022F264:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022F27C
    li 3, -0x1
    .4byte 0x48000014 # b .L_8022F28C
L_8022F27C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    bl Player_GetLinkTargetIndex
L_8022F28C:
    subf 0, 31, 3
    cntlzw 0, 0
    srwi 0, 0, 5
    .4byte 0x48000008 # b .L_8022F2A0
L_8022F29C:
    li 0, 0x0
L_8022F2A0:
    clrlwi. 0, 0, 24
    .4byte 0x4182FD1C # beq .L_8022EFC0
L_8022F2A8:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022F2BC
    li 3, 0x0
    .4byte 0x48000068 # b .L_8022F320
L_8022F2BC:
    .4byte 0x4082000C # bne .L_8022F2C8
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022F304
L_8022F2C8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022F2D8
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022F304
L_8022F2D8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022F2E8
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022F304
L_8022F2E8:
    addi 0, 3, 0x4
    lwzx 4, 28, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022F300
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F304
L_8022F300:
    lbz 0, 0xcac(4)
L_8022F304:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022F314
    li 3, 0x0
    .4byte 0x48000010 # b .L_8022F320
L_8022F314:
    addi 0, 3, 0x4
    lwzx 3, 28, 0
    bl fn_80240888
L_8022F320:
    cmpw 27, 3
    .4byte 0x4180FC8C # blt .L_8022EFB0
    mr 3, 31
L_8022F32C:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

