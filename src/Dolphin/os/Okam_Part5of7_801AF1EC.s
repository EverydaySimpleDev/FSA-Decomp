# OKAM cluster, part 5/7 (Track A byte-match + overview - 1164B).
# Private helper called from the update() state handler - uses the
# confirmed effect spawn fn_8013CC50, fn_801EEC98/fn_801F0E34/
# fn_801F2618/fn_801F285C/fn_801F2B7C/fn_801F305C, plus unfamiliar
# fn_80237948.
.section extab, "a"
.balign 4
.global etb_80007B54
etb_80007B54:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_80007B54, 8

.section extabindex, "a"
.balign 4
.global eti_80014A7C
eti_80014A7C:
    .4byte fn_801AF1EC
    .4byte 0x0000048C
    .4byte etb_80007B54
.size eti_80014A7C, 12

.text
.balign 4
.global fn_801AF1EC

fn_801AF1EC:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stfd 27, 0x30(1)
    psq_st 27, 0x38(1), 0, 0
    stfd 26, 0x20(1)
    psq_st 26, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x8(1)
    li 9, -0x1
    li 30, 0x0
L_801AF244:
    cmpwi 9, 0x0
    .4byte 0x40800020 # bge .L_801AF268
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    mr 9, 3
L_801AF268:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_801AF244
    lwz 4, 0x258(31)
    cmplwi 4, 0x6
    .4byte 0x418102CC # bgt .L_801AF548
    lis 3, jumptable_804A349C@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804A349C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    cmpwi 4, 0x0
    .4byte 0x40820040 # bne .L_801AF2DC
    lfs 5, 0x26c(31)
    .4byte 0xC002B8C8 # lfs f0, lbl_8053E868@sda21(r0)
    lfs 4, 0x270(31)
    fadds 1, 0, 5
    .4byte 0xC002B8CC # lfs f0, lbl_8053E86C@sda21(r0)
    .4byte 0xC042B8AC # lfs f2, lbl_8053E84C@sda21(r0)
    fadds 0, 0, 4
    .4byte 0xC062B8C4 # lfs f3, lbl_8053E864@sda21(r0)
    stfs 1, 0x60(31)
    fadds 1, 2, 5
    stfs 0, 0x64(31)
    fadds 0, 3, 4
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800003C # b .L_801AF314
L_801AF2DC:
    lfs 5, 0x26c(31)
    .4byte 0xC002B8CC # lfs f0, lbl_8053E86C@sda21(r0)
    lfs 4, 0x270(31)
    fadds 1, 0, 5
    .4byte 0xC002B8D4 # lfs f0, lbl_8053E874@sda21(r0)
    .4byte 0xC042B8C4 # lfs f2, lbl_8053E864@sda21(r0)
    fadds 0, 0, 4
    .4byte 0xC062B8D0 # lfs f3, lbl_8053E870@sda21(r0)
    stfs 1, 0x60(31)
    fadds 1, 2, 5
    stfs 0, 0x64(31)
    fadds 0, 3, 4
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_801AF314:
    lwz 7, 0x60(31)
    mr 3, 31
    lwz 0, 0x64(31)
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    stw 7, 0x80(31)
    stw 0, 0x84(31)
    lwz 7, 0x68(31)
    lwz 0, 0x6c(31)
    stw 7, 0x88(31)
    stw 0, 0x8c(31)
    bl fn_801F2B7C
    .4byte 0x48000200 # b .L_801AF548
    lfs 3, 0x26c(31)
    cmpwi 9, 0x0
    .4byte 0xC002B8DC # lfs f0, lbl_8053E87C@sda21(r0)
    lfs 4, 0x270(31)
    fadds 1, 0, 3
    .4byte 0xC042B8D8 # lfs f2, lbl_8053E878@sda21(r0)
    fadds 0, 0, 4
    fadds 3, 2, 3
    stfs 1, 0x60(31)
    fadds 1, 2, 4
    stfs 0, 0x64(31)
    stfs 3, 0x68(31)
    stfs 1, 0x6c(31)
    .4byte 0x4180005C # blt .L_801AF3DC
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x8
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lwz 0, 0x8(1)
    cmpwi 0, 0x0
    .4byte 0x41800030 # blt .L_801AF3DC
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820028 # beq .L_801AF3DC
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801AF3DC
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000258 # b .L_801AF630
L_801AF3DC:
    lfs 5, 0x26c(31)
    mr 3, 31
    .4byte 0xC002B8E4 # lfs f0, lbl_8053E884@sda21(r0)
    li 4, -0x64
    lfs 4, 0x270(31)
    li 5, -0x1
    fadds 1, 0, 5
    .4byte 0xC002B8CC # lfs f0, lbl_8053E86C@sda21(r0)
    .4byte 0xC042B8E0 # lfs f2, lbl_8053E880@sda21(r0)
    li 6, 0x1
    fadds 0, 0, 4
    .4byte 0xC062B8C4 # lfs f3, lbl_8053E864@sda21(r0)
    stfs 1, 0x60(31)
    fadds 1, 2, 5
    fadds 2, 3, 4
    stfs 0, 0x64(31)
    stfs 1, 0x68(31)
    stfs 2, 0x6c(31)
    lwz 7, 0x60(31)
    lwz 0, 0x64(31)
    stw 7, 0x80(31)
    stw 0, 0x84(31)
    lwz 7, 0x68(31)
    lwz 0, 0x6c(31)
    stw 7, 0x88(31)
    stw 0, 0x8c(31)
    bl fn_801F2B7C
    .4byte 0x48000100 # b .L_801AF548
    lfs 3, 0x26c(31)
    cmpwi 9, 0x0
    .4byte 0xC002B8DC # lfs f0, lbl_8053E87C@sda21(r0)
    lfs 4, 0x270(31)
    fadds 1, 0, 3
    .4byte 0xC042B8D8 # lfs f2, lbl_8053E878@sda21(r0)
    fadds 0, 0, 4
    fadds 3, 2, 3
    stfs 1, 0x60(31)
    fadds 1, 2, 4
    stfs 0, 0x64(31)
    stfs 3, 0x68(31)
    stfs 1, 0x6c(31)
    .4byte 0x4180005C # blt .L_801AF4DC
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x8
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lwz 0, 0x8(1)
    cmpwi 0, 0x0
    .4byte 0x41800030 # blt .L_801AF4DC
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820028 # bne .L_801AF4DC
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801AF4DC
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000158 # b .L_801AF630
L_801AF4DC:
    lfs 5, 0x26c(31)
    mr 3, 31
    .4byte 0xC002B8CC # lfs f0, lbl_8053E86C@sda21(r0)
    li 4, -0x64
    lfs 4, 0x270(31)
    li 5, -0x1
    fadds 1, 0, 5
    .4byte 0xC002B8E4 # lfs f0, lbl_8053E884@sda21(r0)
    .4byte 0xC042B8C4 # lfs f2, lbl_8053E864@sda21(r0)
    li 6, 0x1
    fadds 0, 0, 4
    .4byte 0xC062B8E0 # lfs f3, lbl_8053E880@sda21(r0)
    stfs 1, 0x60(31)
    fadds 1, 2, 5
    fadds 2, 3, 4
    stfs 0, 0x64(31)
    stfs 1, 0x68(31)
    stfs 2, 0x6c(31)
    lwz 7, 0x60(31)
    lwz 0, 0x64(31)
    stw 7, 0x80(31)
    stw 0, 0x84(31)
    lwz 7, 0x68(31)
    lwz 0, 0x6c(31)
    stw 7, 0x88(31)
    stw 0, 0x8c(31)
    bl fn_801F2B7C
L_801AF548:
    lfs 31, 0x60(31)
    li 30, 0x0
    lfs 30, 0x64(31)
    lfs 29, 0x68(31)
    lfs 28, 0x6c(31)
    lfs 27, 0xc(31)
    lfs 26, 0x10(31)
L_801AF564:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x418000A4 # blt .L_801AF624
    fadds 31, 31, 27
    .4byte 0xC042B8A4 # lfs f2, lbl_8053E844@sda21(r0)
    fadds 29, 29, 27
    addi 4, 1, 0xc
    fadds 30, 30, 26
    fadds 28, 28, 26
    fsubs 1, 31, 29
    fsubs 0, 30, 28
    fmadds 1, 2, 1, 29
    fmadds 0, 2, 0, 28
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801AF624
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B8A0 # lfs f1, lbl_8053E840@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B8A0 # lfs f1, lbl_8053E840@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801AF624:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF38 # blt .L_801AF564
L_801AF630:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    psq_l 27, 0x38(1), 0, 0
    lfd 27, 0x30(1)
    psq_l 26, 0x28(1), 0, 0
    lfd 26, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x84(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

