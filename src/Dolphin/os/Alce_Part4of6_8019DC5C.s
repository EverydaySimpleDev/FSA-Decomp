# ALCE cluster, part 4/6 (Track A byte-match + overview - 600B). Shared
# private helper called by BOTH state handlers above - a spawn/reward
# trigger: uses the confirmed effect spawn fn_8013CC50, lookup-table
# accessor Warp_GetLookupTableValue, NAVI sway utility fn_801F3668, the SPECIALIZED
# reward-spawn dispatcher fn_801F8544 (confirmed via GOLD), and the
# generic FourCC actor dispatcher fn_801F9484.
.section extab, "a"
.balign 4
.global etb_800078C4
etb_800078C4:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_800078C4, 8

.section extabindex, "a"
.balign 4
.global eti_800146A4
eti_800146A4:
    .4byte fn_8019DC5C
    .4byte 0x00000258
    .4byte etb_800078C4
.size eti_800146A4, 12

.text
.balign 4
.global fn_8019DC5C

fn_8019DC5C:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_804C1E30@ha
    stw 0, 0x44(1)
    stmw 20, 0x10(1)
    mr 21, 3
    addi 22, 4, lbl_804C1E30@l
    bl SpatialRegistry_GetBase
    addi 23, 22, 0x3000
    addi 25, 22, 0x4000
    addi 24, 22, 0x0
    lwz 31, 0x1008(3)
    mr 28, 23
    mr 27, 25
    mr 26, 24
    li 22, 0x0
    li 29, 0x0
    .4byte 0x4800016C # b .L_8019DE0C
L_8019DCA4:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 30, 3, 0
    cmplwi 30, 0x0
    .4byte 0x41820144 # beq .L_8019DDF8
    lwz 3, 0x4(30)
    lwz 0, 0x4(21)
    cmpw 3, 0
    .4byte 0x40820134 # bne .L_8019DDF8
    lbz 0, 0x1a8(30)
    cmplwi 0, 0x1
    .4byte 0x40820128 # bne .L_8019DDF8
    lbz 0, 0x196(30)
    cmplwi 0, 0x0
    .4byte 0x4082011C # bne .L_8019DDF8
    lwz 3, 0x16c(30)
    li 0, 0x1
    stw 3, 0x0(28)
    stb 0, 0x0(27)
    lfs 0, 0xc(30)
    stfs 0, 0x0(26)
    lfs 0, 0x10(30)
    stfs 0, 0x4(26)
    lfs 0, 0x14(30)
    stfs 0, 0x8(26)
    lwz 0, 0x238(21)
    cmpwi 0, 0x1
    .4byte 0x41820094 # beq .L_8019DDA4
    .4byte 0x40800010 # bge .L_8019DD24
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8019DD30
    .4byte 0x480000D8 # b .L_8019DDF8
L_8019DD24:
    cmpwi 0, 0x4
    .4byte 0x408000D0 # bge .L_8019DDF8
    .4byte 0x480000B4 # b .L_8019DDE0
L_8019DD30:
    lwz 20, 0x4(30)
    mr 3, 30
    bl Warp_GetLookupTableValue
    mr 3, 20
    addi 4, 30, 0xc
    li 5, 0x172
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 20, 0x4(30)
    mr 3, 30
    bl Warp_GetLookupTableValue
    mr 3, 20
    addi 4, 30, 0xc
    li 5, 0x173
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 30
    bl fn_801F4694
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000058 # b .L_8019DDF8
L_8019DDA4:
    lwz 20, 0x4(30)
    mr 3, 30
    bl Warp_GetLookupTableValue
    mr 3, 20
    addi 4, 30, 0xc
    li 5, 0x35c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x4800001C # b .L_8019DDF8
L_8019DDE0:
    li 0, 0x4
    stw 0, 0x0(28)
    lwz 3, 0x250(21)
    addi 0, 3, 0x1
    stw 0, 0x250(21)
    stw 31, 0x254(21)
L_8019DDF8:
    addi 29, 29, 0x4
    addi 28, 28, 0x4
    addi 27, 27, 0x1
    addi 26, 26, 0xc
    addi 22, 22, 0x1
L_8019DE0C:
    cmpw 22, 31
    .4byte 0x4180FE94 # blt .L_8019DCA4
    li 20, 0x0
    .4byte 0x48000080 # b .L_8019DE98
L_8019DE1C:
    lbz 0, 0x0(25)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_8019DE88
    lwz 0, 0x238(21)
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_8019DE64
    .4byte 0x40800054 # bge .L_8019DE88
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8019DE44
    .4byte 0x48000048 # b .L_8019DE88
L_8019DE44:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(21)
    mr 6, 24
    li 7, 0x2
    addi 4, 4, 0x5059
    bl fn_801F8544
    .4byte 0x48000028 # b .L_8019DE88
L_8019DE64:
    bl SpatialRegistry_GetBase
    lis 4, 0x5a41
    lwz 5, 0x4(21)
    lwz 8, 0x0(23)
    mr 6, 24
    addi 4, 4, 0x534c
    li 7, 0x0
    li 9, -0x1
    bl fn_801F9484
L_8019DE88:
    addi 25, 25, 0x1
    addi 24, 24, 0xc
    addi 23, 23, 0x4
    addi 20, 20, 0x1
L_8019DE98:
    cmpw 20, 31
    .4byte 0x4180FF80 # blt .L_8019DE1C
    lmw 20, 0x10(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

