# FGN2 cluster, part 3 (Track A byte-match + overview - 0x28BC=10428B,
# the LARGEST function landed in this project to date). FGN2's core
# update() state machine. Calls out to the entire rest of this actor's
# private helper family (fn_80189DEC candidate-reassignment helper, the
# destructor's own accessor/setter group fn_8018A588-fn_8018A6AC, all
# landed alongside this file - see extab_80189dec.s/extab_8018a684.s),
# plus a large private numeric-ID helper family (fn_80154310-fn_80154744,
# fn_8017EAB4-fn_8017ED08) not shared with any other actor mapped so
# far, plus confirmed shared primitives: fn_8013CB44/fn_8013CC50 (effect
# spawn/sync), fn_801F3D94 (knockback), fn_801F71A4 (ease), fn_801F2718
# (existing-instance-by-FourCC lookup), fn_80458F9C/fn_80458FF0 (sound).
# Full per-state semantic breakdown deferred given the function's size;
# byte-matched via direct transcription of the dtk auto-disasm.
.section extab, "a"
.balign 4
.global etb_8000767C
etb_8000767C:
    .4byte 0x408A0000
    .4byte 0x00000000
.size etb_8000767C, 8

.section extabindex, "a"
.balign 4
.global eti_800143E0
eti_800143E0:
    .4byte fn_80187530
    .4byte 0x000028BC
    .4byte etb_8000767C
.size eti_800143E0, 12

.text
.balign 4
.global fn_80187530

fn_80187530:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stmw 24, 0x90(1)
    lis 4, lbl_804A1960@ha
    mr 31, 3
    addi 30, 4, lbl_804A1960@l
    addi 3, 1, 0x60
    bl fn_8003B2CC
    addi 3, 1, 0x54
    bl fn_8003B2CC
    addi 3, 1, 0x44
    addi 4, 31, 0x60
    bl fn_801546F4
    lfs 1, 0x2bc(31)
    addi 3, 1, 0x14
    lfs 2, 0x2c0(31)
    bl fn_8018A6A0
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xc(1)
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    li 28, -0x1
    sth 0, 0x8(1)
    bl fn_8018A684
    lfs 1, 0x64(1)
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x64(1)
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801875D0
    li 0, 0x2710
    stw 0, 0x108(31)
    bl fn_8017ECC0
L_801875D0:
    mr 3, 31
    .4byte 0xC022B040 # lfs f1, lbl_8053DFE0@sda21(r0)
    lwz 12, 0x0(31)
    .4byte 0xC042B044 # lfs f2, lbl_8053DFE4@sda21(r0)
    lwz 12, 0x2c(12)
    .4byte 0xC062B060 # lfs f3, lbl_8053E000@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8018760C
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    addi 3, 31, 0xc
    bl fn_8017EC70
    bl fn_8017ED08
    .4byte 0x480027C0 # b .L_80189DC8
L_8018760C:
    addi 3, 1, 0x60
    bl fn_80154718
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80187628
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80187628:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018763C
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8018763C:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80187650
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80187650:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80187664
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80187664:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80187678
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80187678:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8018768C
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_8018768C:
    mr 3, 31
    li 4, 0x0
    bl fn_801F3D94
    lwz 0, 0x230(31)
    cmpwi 0, 0x16
    .4byte 0x408200F0 # bne .L_80187790
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801876B8
    cmplwi 0, 0x1
    .4byte 0x408200DC # bne .L_80187790
L_801876B8:
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0xfa
    .4byte 0x40810034 # ble .L_80187700
    li 0, 0x5
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    stw 0, 0x26c(31)
    addi 3, 30, 0x30
    li 0, 0x17
    stfs 0, 0x280(31)
    lwz 4, 0x26c(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x480026CC # b .L_80189DC8
L_80187700:
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80187790
    lfs 1, 0x14(31)
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4082006C # bne .L_80187788
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_80187788
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x26c(31)
    mr 3, 31
    addi 4, 4, 0x46
    li 5, 0x0
    stw 0, 0x254(31)
    lwz 6, 0x108(31)
    lwz 0, 0x270(31)
    subfic 6, 6, 0x2710
    subf 0, 6, 0
    stw 0, 0x270(31)
    lwz 0, 0x270(31)
    .4byte 0x900D83F8 # stw r0, lbl_80539FB8@sda21(r0)
    bl fn_801F0E34
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_80187788
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80187788
    li 0, 0x19
    stw 0, 0x230(31)
L_80187788:
    addi 3, 31, 0x3c
    bl fn_801546BC
L_80187790:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801877A4
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_801877E0
L_801877A4:
    lfs 1, 0x2b0(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B054 # lfs f3, lbl_8053DFF4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2b4(31)
    addi 3, 31, 0x40
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B054 # lfs f3, lbl_8053DFF4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x288(31)
    addi 3, 31, 0x14
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    lfs 3, 0x280(31)
    bl fn_801F71A4
L_801877E0:
    addi 3, 31, 0xc
    addi 4, 31, 0x3c
    bl fn_801545F0
    lwz 3, 0x314(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8018780C
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_8018780C:
    lwz 0, 0x230(31)
    cmplwi 0, 0x1f
    .4byte 0x41812294 # bgt .L_80189AA8
    lis 3, jumptable_804A1AEC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A1AEC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80187888
    .4byte 0xC022B068 # lfs f1, lbl_8053E008@sda21(r0)
    addi 3, 1, 0x28
    .4byte 0xC062B06C # lfs f3, lbl_8053E00C@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_8017EC5C
    mr 4, 3
    addi 3, 1, 0x44
    bl fn_8017EC38
    addi 3, 1, 0x44
    addi 4, 1, 0x14
    bl fn_80154558
    addi 3, 1, 0x4c
    addi 4, 1, 0x14
    bl fn_80154558
    addi 3, 1, 0x44
    bl fn_8017EB94
    clrlwi. 0, 3, 24
    .4byte 0x41822224 # beq .L_80189AA8
L_80187888:
    bl fn_8018A660
    cmpwi 3, 0x0
    .4byte 0x41822218 # beq .L_80189AA8
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801878AC
    bl fn_8018A6AC
    li 4, 0x3c
    bl fn_80458F9C
L_801878AC:
    bl fn_8022ADE4
    .4byte 0xC022B070 # lfs f1, lbl_8053E010@sda21(r0)
    li 4, 0x0
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    li 3, 0x2
    stfs 1, 0x280(31)
    li 0, 0x1
    stw 4, 0x26c(31)
    stw 4, 0x234(31)
    stw 4, 0x250(31)
    .4byte 0x908D8FC0 # stw r4, lbl_8053AB80@sda21(r0)
    stfs 0, 0x28c(31)
    stw 3, 0x278(31)
    stw 0, 0x230(31)
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 1, 0x64(1)
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    fsubs 0, 1, 0
    cmplwi 0, 0x0
    stfs 0, 0x64(1)
    .4byte 0x408200E8 # bne .L_801879F0
    addi 3, 1, 0x60
    bl fn_8017EB44
    .4byte 0xC022B074 # lfs f1, lbl_8053E014@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x64
    .4byte 0x41802178 # blt .L_80189AA8
    .4byte 0x408200C8 # bne .L_801879FC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x74
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x362
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x363
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x364
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x365
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000010 # b .L_801879FC
L_801879F0:
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    addi 3, 1, 0x60
    bl fn_8017EC70
L_801879FC:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80187A60
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 1, 0x64(1)
    addi 3, 1, 0x60
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x64(1)
    bl fn_8017EB44
    .4byte 0xC022B074 # lfs f1, lbl_8053E014@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x12c
    .4byte 0x41802050 # blt .L_80189AA8
    .4byte 0x4800002C # b .L_80187A88
L_80187A60:
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 2, 0x64(1)
    addi 3, 1, 0x60
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x64(1)
    bl fn_8017EC70
L_80187A88:
    .4byte 0xC022B078 # lfs f1, lbl_8053E018@sda21(r0)
    li 3, 0x0
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    li 0, 0x3
    stfs 1, 0x2cc(31)
    stfs 0, 0x2c8(31)
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 1, 0x64(1)
    addi 3, 1, 0x60
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x64(1)
    bl fn_8017EB44
    .4byte 0xC022B074 # lfs f1, lbl_8053E014@sda21(r0)
    bl fn_8017EB1C
    .4byte 0xC022B07C # lfs f1, lbl_8053E01C@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042B080 # lfs f2, lbl_8053E020@sda21(r0)
    .4byte 0xC062B078 # lfs f3, lbl_8053E018@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    addi 3, 31, 0x2cc
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B084 # lfs f3, lbl_8053E024@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    addi 3, 31, 0x2c8
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B088 # lfs f3, lbl_8053E028@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2c8(31)
    .4byte 0xC002B08C # lfs f0, lbl_8053E02C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40821F88 # bne .L_80189AA8
    lfs 1, 0x290(31)
    .4byte 0xC002B090 # lfs f0, lbl_8053E030@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40821F74 # bne .L_80189AA8
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    addi 3, 1, 0x1c
    fmr 2, 1
    fmr 3, 1
    bl fn_8018A5B8
    mr 4, 3
    addi 3, 31, 0x2c8
    bl fn_8018A684
    .4byte 0xC002B07C # lfs f0, lbl_8053E01C@sda21(r0)
    li 3, 0x0
    li 0, 0x1
    stfs 0, 0x290(31)
    stw 3, 0x250(31)
    stw 0, 0x238(31)
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80187B84
    li 0, 0x32
    stw 0, 0x238(31)
L_80187B84:
    li 4, 0x0
    li 3, 0x1
    stw 4, 0x264(31)
    li 0, 0x4
    .4byte 0x988D8FC4 # stb r4, lbl_8053AB84@sda21(r0)
    .4byte 0x908D8FBC # stw r4, lbl_8053AB7C@sda21(r0)
    .4byte 0x906D8FB8 # stw r3, lbl_8053AB78@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x48001F04 # b .L_80189AA8
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 1, 0x64(1)
    addi 3, 1, 0x60
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x64(1)
    bl fn_8017EB44
    .4byte 0xC022B074 # lfs f1, lbl_8053E014@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40821ECC # bne .L_80189AA8
    li 24, 0x1
    li 29, 0x10
    lis 28, 0x4647
    .4byte 0x480000A8 # b .L_80187C94
L_80187BF0:
    mr 3, 31
    bl fn_8015461C
    mr 4, 3
    addi 3, 28, 0x4e32
    addi 5, 31, 0xc
    ori 6, 29, 0x1
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    cmpwi 3, 0x0
    .4byte 0x4180007C # blt .L_80187C94
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41820070 # beq .L_80187C94
    bl fn_8018A5B0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_80187C94
    .4byte 0x80AD8FBC # lwz r5, lbl_8053AB7C@sda21(r0)
    addi 3, 27, 0x2e0
    addi 4, 31, 0x2e0
    addi 0, 5, 0x1
    .4byte 0x900D8FBC # stw r0, lbl_8053AB7C@sda21(r0)
    bl fn_8018A684
    addi 3, 27, 0x2bc
    addi 4, 31, 0x2bc
    bl fn_8018A684
    lwz 0, 0x260(31)
    mr 3, 24
    stw 0, 0x260(27)
    bl fn_8018A614
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80187C84
    .4byte 0x806D8FB8 # lwz r3, lbl_8053AB78@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0x900D8FB8 # stw r0, lbl_8053AB78@sda21(r0)
    .4byte 0x4800000C # b .L_80187C8C
L_80187C84:
    li 0, 0x1
    stw 0, 0x264(27)
L_80187C8C:
    addi 29, 29, 0x10
    addi 24, 24, 0x1
L_80187C94:
    cmpwi 24, 0x4
    .4byte 0x4180FF58 # blt .L_80187BF0
    li 0, 0x0
    stw 0, 0x23c(31)
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80187CCC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x42
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x64
    stw 0, 0x23c(31)
L_80187CCC:
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x48001DD4 # b .L_80189AA8
    .4byte 0xC022B070 # lfs f1, lbl_8053E010@sda21(r0)
    li 4, 0x0
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    li 3, 0x2
    stfs 1, 0x280(31)
    li 0, 0x6
    stw 4, 0x26c(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x2ac(31)
    stw 3, 0x278(31)
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x408200B0 # bne .L_80187DC4
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 3, 0x2bc(31)
    addi 3, 1, 0x60
    .4byte 0xC042B040 # lfs f2, lbl_8053DFE0@sda21(r0)
    lfs 1, 0x64(1)
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    fsubs 2, 3, 2
    stfs 3, 0x60(1)
    fsubs 0, 1, 0
    stfs 2, 0x60(1)
    stfs 0, 0x64(1)
    bl fn_8017EB44
    .4byte 0xC022B074 # lfs f1, lbl_8053E014@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80187D7C
    .4byte 0x800D8FC0 # lwz r0, lbl_8053AB80@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80187D7C
    li 0, 0x1
    .4byte 0x900D8FC0 # stw r0, lbl_8053AB80@sda21(r0)
    .4byte 0x48001D30 # b .L_80189AA8
L_80187D7C:
    lfs 1, 0x2ac(31)
    .4byte 0xC002B094 # lfs f0, lbl_8053E034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081003C # ble .L_80187DC4
    .4byte 0x800D8FC0 # lwz r0, lbl_8053AB80@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_80187DC4
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80187DB8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x43
    li 5, 0x0
    bl fn_801F0E34
L_80187DB8:
    li 0, 0x2
    .4byte 0x900D8FC0 # stw r0, lbl_8053AB80@sda21(r0)
    .4byte 0x48001CE8 # b .L_80189AA8
L_80187DC4:
    .4byte 0xC022B07C # lfs f1, lbl_8053E01C@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042B080 # lfs f2, lbl_8053E020@sda21(r0)
    .4byte 0xC062B078 # lfs f3, lbl_8053E018@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2d4(31)
    addi 3, 31, 0xc
    .4byte 0xC042B080 # lfs f2, lbl_8053E020@sda21(r0)
    .4byte 0xC062B078 # lfs f3, lbl_8053E018@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042B088 # lfs f2, lbl_8053E028@sda21(r0)
    addi 3, 31, 0x2ac
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    .4byte 0x800D8FC0 # lwz r0, lbl_8053AB80@sda21(r0)
    cmpwi 0, 0x2
    .4byte 0x40821CA0 # bne .L_80189AA8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_80187E7C
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80187E70
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40821C7C # bne .L_80189AA8
    lwz 4, 0x26c(31)
    addi 3, 30, 0x48
    li 0, 0x1
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x234(31)
    stw 0, 0x278(31)
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x4
    .4byte 0x40821C48 # bne .L_80189AA8
    li 0, 0x28
    stw 0, 0x238(31)
    .4byte 0x48001C3C # b .L_80189AA8
L_80187E70:
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x48001C30 # b .L_80189AA8
L_80187E7C:
    cmpwi 0, 0x1
    .4byte 0x40821C28 # bne .L_80189AA8
    .4byte 0x880D83FC # lbz r0, lbl_80539FBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80187EA8
    bl fn_8018A6AC
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x4
    li 6, 0x0
    bl fn_80458FF0
L_80187EA8:
    li 3, 0x1
    li 0, 0x7
    .4byte 0x986D83FC # stb r3, lbl_80539FBC@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x48001BF0 # b .L_80189AA8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40821BE4 # bne .L_80189AA8
    lwz 4, 0x26c(31)
    addi 3, 30, 0x48
    subi 0, 4, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40801BB8 # bge .L_80189AA8
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80187F04
    bl fn_8018A63C
L_80187F04:
    li 0, 0x0
    li 3, 0x2
    stw 0, 0x26c(31)
    li 0, 0x8
    stw 3, 0x278(31)
    stw 0, 0x230(31)
    li 0, 0x78
    stw 0, 0x248(31)
    lwz 0, 0x314(31)
    cmplwi 0, 0x0
    .4byte 0x40820070 # bne .L_80187F9C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x380
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x314(31)
    lwz 3, 0x314(31)
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_80187F9C
    lfs 2, 0x294(31)
    lfs 1, 0x298(31)
    lfs 0, 0x29c(31)
    fctiwz 2, 2
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 2, 0x70(1)
    stfd 1, 0x78(1)
    lwz 4, 0x74(1)
    stfd 0, 0x80(1)
    lwz 5, 0x7c(1)
    lwz 6, 0x84(1)
    bl fn_8017EACC
L_80187F9C:
    bl fn_80154744
    .4byte 0xC042B09C # lfs f2, lbl_8053E03C@sda21(r0)
    .4byte 0xC002B098 # lfs f0, lbl_8053E038@sda21(r0)
    fmadds 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x238(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_80187FE0
    lis 3, lbl_804C17A8@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804C17A8@l
    li 4, 0x0
    stwx 4, 3, 0
    stw 4, 0x23c(31)
L_80187FE0:
    li 0, -0x1
    .4byte 0xC022B070 # lfs f1, lbl_8053E010@sda21(r0)
    stw 0, 0x268(31)
    li 0, 0x0
    addi 3, 30, 0x5c
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    stfs 1, 0x280(31)
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lfs 1, 0x28c(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082000C # bne .L_80188024
    .4byte 0xC002B084 # lfs f0, lbl_8053E024@sda21(r0)
    stfs 0, 0x28c(31)
L_80188024:
    li 3, 0x2
    li 0, 0x9
    stw 3, 0x278(31)
    stw 0, 0x230(31)
    .4byte 0xC022B07C # lfs f1, lbl_8053E01C@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042B054 # lfs f2, lbl_8053DFF4@sda21(r0)
    .4byte 0xC062B0A0 # lfs f3, lbl_8053E040@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80188088
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_80188074
    li 0, 0x0
    stw 0, 0x26c(31)
L_80188074:
    lwz 0, 0x26c(31)
    addi 3, 30, 0x5c
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_80188088:
    lfs 1, 0x14(31)
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    lfs 3, 0x2bc(31)
    lfs 2, 0xc(31)
    fcmpo cr0, 1, 0
    lfs 1, 0x2c0(31)
    lfs 0, 0x10(31)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    cror eq, gt, eq
    .4byte 0x408200A0 # bne .L_80188150
    bl fn_80154744
    .4byte 0xC062B0A8 # lfs f3, lbl_8053E048@sda21(r0)
    fmr 2, 31
    .4byte 0xC002B0A4 # lfs f0, lbl_8053E044@sda21(r0)
    fnmsubs 0, 3, 1, 0
    fmr 1, 30
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 27, 0x84(1)
    bl fn_8015465C
    lwz 0, 0x250(31)
    add 3, 3, 27
    extsh 24, 3
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80188100
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    mr 24, 3
L_80188100:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_80188150
    mr 3, 24
    bl fn_801544FC
    .4byte 0xC002B070 # lfs f0, lbl_8053E010@sda21(r0)
    mr 3, 24
    fmuls 0, 0, 1
    stfs 0, 0x2b0(31)
    bl fn_801544E4
    .4byte 0xC002B070 # lfs f0, lbl_8053E010@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b4(31)
    bl fn_80154744
    .4byte 0xC002B060 # lfs f0, lbl_8053E000@sda21(r0)
    fmadds 0, 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x23c(31)
L_80188150:
    fmuls 0, 31, 31
    fmadds 1, 30, 30, 0
    bl fn_80154378
    .4byte 0xC002B0AC # lfs f0, lbl_8053E04C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810024 # ble .L_80188188
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80188190
    addi 3, 31, 0x2b0
    bl fn_801546BC
    li 0, 0x1
    stw 0, 0x250(31)
    .4byte 0x4800000C # b .L_80188190
L_80188188:
    li 0, 0x0
    stw 0, 0x250(31)
L_80188190:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_801881EC
    mr 3, 31
    bl fn_801545E8
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x10
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_801881EC
    lfs 1, 0x10(1)
    .4byte 0xC002B060 # lfs f0, lbl_8053E000@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801881EC
    li 0, 0x11
    stw 0, 0x230(31)
L_801881EC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408218B4 # bne .L_80189AA8
    bl fn_80154744
    .4byte 0xC002B0B0 # lfs f0, lbl_8053E050@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x268(31)
    .4byte 0x800D8FBC # lwz r0, lbl_8053AB7C@sda21(r0)
    cmpwi 0, 0x2
    .4byte 0x418200D0 # beq .L_801882EC
    .4byte 0x40800010 # bge .L_80188230
    cmpwi 0, 0x1
    .4byte 0x408001A8 # bge .L_801883D0
    .4byte 0x48000274 # b .L_801884A0
L_80188230:
    cmpwi 0, 0x4
    .4byte 0x4080026C # bge .L_801884A0
    lis 3, lbl_804C17A8@ha
    li 0, 0x4
    addi 3, 3, lbl_804C17A8@l
    mtctr 0
L_80188248:
    lwz 4, 0x268(31)
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_801882D0
    lfs 0, 0x2bc(31)
    lis 0, 0x4330
    lis 3, lbl_804C17A8@ha
    stw 0, 0x80(1)
    .4byte 0xC862B108 # lfd f3, lbl_8053E0A8@sda21(r0)
    addi 3, 3, lbl_804C17A8@l
    stfs 0, 0x2d4(31)
    li 5, 0x1
    .4byte 0xC082B0B8 # lfs f4, lbl_8053E058@sda21(r0)
    li 0, 0xa
    lwz 4, 0x268(31)
    .4byte 0xC022B0B4 # lfs f1, lbl_8053E054@sda21(r0)
    xoris 4, 4, 0x8000
    lfs 5, 0x2d4(31)
    stw 4, 0x84(1)
    .4byte 0xC002B0BC # lfs f0, lbl_8053E05C@sda21(r0)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fnmsubs 1, 4, 2, 1
    fadds 1, 5, 1
    stfs 1, 0x2d4(31)
    lfs 1, 0x2c0(31)
    fsubs 0, 1, 0
    stfs 0, 0x2d8(31)
    lwz 4, 0x268(31)
    slwi 4, 4, 2
    stwx 5, 3, 4
    stw 0, 0x230(31)
    .4byte 0x480017DC # b .L_80189AA8
L_801882D0:
    addi 0, 4, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    clrlwi 0, 0, 30
    stw 0, 0x268(31)
    .4byte 0x4200FF64 # bdnz .L_80188248
    .4byte 0x480017C0 # b .L_80189AA8
L_801882EC:
    lwz 0, 0x268(31)
    cmpwi 0, 0x2
    .4byte 0x40810020 # ble .L_80188314
    bl fn_80154744
    .4byte 0xC002B0C0 # lfs f0, lbl_8053E060@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x268(31)
L_80188314:
    lis 3, lbl_804C17A8@ha
    li 0, 0x3
    addi 4, 3, lbl_804C17A8@l
    li 3, 0x0
    mtctr 0
L_80188328:
    lwz 5, 0x268(31)
    slwi 0, 5, 2
    lwzx 0, 4, 0
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_801883B0
    lfs 0, 0x2bc(31)
    lis 0, 0x4330
    lis 3, lbl_804C17A8@ha
    stw 0, 0x80(1)
    .4byte 0xC862B108 # lfd f3, lbl_8053E0A8@sda21(r0)
    addi 3, 3, lbl_804C17A8@l
    stfs 0, 0x2d4(31)
    li 5, 0x1
    .4byte 0xC082B0C8 # lfs f4, lbl_8053E068@sda21(r0)
    li 0, 0xa
    lwz 4, 0x268(31)
    .4byte 0xC022B0C4 # lfs f1, lbl_8053E064@sda21(r0)
    xoris 4, 4, 0x8000
    lfs 5, 0x2d4(31)
    stw 4, 0x84(1)
    .4byte 0xC002B0BC # lfs f0, lbl_8053E05C@sda21(r0)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fnmsubs 1, 4, 2, 1
    fadds 1, 5, 1
    stfs 1, 0x2d4(31)
    lfs 1, 0x2c0(31)
    fsubs 0, 1, 0
    stfs 0, 0x2d8(31)
    lwz 4, 0x268(31)
    slwi 4, 4, 2
    stwx 5, 3, 4
    stw 0, 0x230(31)
    .4byte 0x480016FC # b .L_80189AA8
L_801883B0:
    addi 0, 5, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x2
    .4byte 0x40810008 # ble .L_801883C8
    stw 3, 0x268(31)
L_801883C8:
    .4byte 0x4200FF60 # bdnz .L_80188328
    .4byte 0x480016DC # b .L_80189AA8
L_801883D0:
    lwz 0, 0x268(31)
    cmpwi 0, 0x1
    .4byte 0x40810020 # ble .L_801883F8
    bl fn_80154744
    .4byte 0xC002B0CC # lfs f0, lbl_8053E06C@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x268(31)
L_801883F8:
    lis 3, lbl_804C17A8@ha
    li 0, 0x2
    addi 4, 3, lbl_804C17A8@l
    li 3, 0x0
    mtctr 0
L_8018840C:
    lwz 5, 0x268(31)
    slwi 0, 5, 2
    lwzx 0, 4, 0
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_80188480
    cmpwi 5, 0x0
    .4byte 0x40820018 # bne .L_8018843C
    .4byte 0xC022B0D0 # lfs f1, lbl_8053E070@sda21(r0)
    lfs 0, 0x2bc(31)
    fadds 0, 1, 0
    stfs 0, 0x2d4(31)
    .4byte 0x48000014 # b .L_8018844C
L_8018843C:
    .4byte 0xC022B0D4 # lfs f1, lbl_8053E074@sda21(r0)
    lfs 0, 0x2bc(31)
    fadds 0, 1, 0
    stfs 0, 0x2d4(31)
L_8018844C:
    lfs 1, 0x2c0(31)
    lis 3, lbl_804C17A8@ha
    .4byte 0xC002B0BC # lfs f0, lbl_8053E05C@sda21(r0)
    addi 3, 3, lbl_804C17A8@l
    li 5, 0x1
    li 0, 0xa
    fsubs 0, 1, 0
    stfs 0, 0x2d8(31)
    lwz 4, 0x268(31)
    slwi 4, 4, 2
    stwx 5, 3, 4
    stw 0, 0x230(31)
    .4byte 0x4800162C # b .L_80189AA8
L_80188480:
    addi 0, 5, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x1
    .4byte 0x40810008 # ble .L_80188498
    stw 3, 0x268(31)
L_80188498:
    .4byte 0x4200FF74 # bdnz .L_8018840C
    .4byte 0x4800160C # b .L_80189AA8
L_801884A0:
    lfs 1, 0x2bc(31)
    li 0, 0xa
    .4byte 0xC002B0BC # lfs f0, lbl_8053E05C@sda21(r0)
    stfs 1, 0x2d4(31)
    lfs 1, 0x2c0(31)
    fsubs 0, 1, 0
    stfs 0, 0x2d8(31)
    stw 0, 0x230(31)
    .4byte 0x480015E8 # b .L_80189AA8
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    addi 3, 31, 0x3c
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    bl fn_801546BC
    li 0, 0xb
    stw 0, 0x230(31)
    lfs 1, 0xc(31)
    lfs 0, 0x2d4(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B0D8 # lfs f0, lbl_8053E078@sda21(r0)
    addi 3, 31, 0xc
    .4byte 0xC042B080 # lfs f2, lbl_8053E020@sda21(r0)
    fmuls 3, 0, 1
    lfs 1, 0x2d4(31)
    bl fn_801F71A4
    lfs 1, 0x10(31)
    lfs 0, 0x2d8(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B0D8 # lfs f0, lbl_8053E078@sda21(r0)
    addi 3, 31, 0x10
    .4byte 0xC042B080 # lfs f2, lbl_8053E020@sda21(r0)
    fmuls 3, 0, 1
    lfs 1, 0x2d8(31)
    bl fn_801F71A4
    lfs 1, 0xc(31)
    lfs 0, 0x2d4(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B070 # lfs f0, lbl_8053E010@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41811560 # bgt .L_80189AA8
    lfs 1, 0x10(31)
    lfs 0, 0x2d8(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B070 # lfs f0, lbl_8053E010@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41811544 # bgt .L_80189AA8
    li 3, 0x0
    li 0, 0xc
    stw 3, 0x26c(31)
    sth 3, 0x2ec(31)
    stw 0, 0x230(31)
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 3, 0x60(1)
    li 24, 0xa
    .4byte 0xC002B0DC # lfs f0, lbl_8053E07C@sda21(r0)
    lfs 2, 0x64(1)
    .4byte 0xC022B0E0 # lfs f1, lbl_8053E080@sda21(r0)
    fsubs 3, 3, 0
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    fsubs 1, 2, 1
    stfs 3, 0x60(1)
    stfs 1, 0x64(1)
    stfs 0, 0x68(1)
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801885C4
    li 24, 0xb
L_801885C4:
    mr 3, 31
    bl fn_80189DEC
    mr 27, 3
    mr 3, 31
    bl fn_8015461C
    slwi 0, 27, 4
    lis 7, 0x4647
    mr 4, 3
    addi 5, 1, 0x60
    addi 3, 7, 0x4e32
    or 6, 0, 24
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    stw 3, 0x274(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x418014A0 # blt .L_80189AA8
    li 3, 0x2
    li 0, 0x28
    stw 3, 0x278(31)
    stw 0, 0x238(31)
    lwz 3, 0x274(31)
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x41821480 # beq .L_80189AA8
    li 0, -0x1
    lis 4, 0x3
    stw 0, 0x258(31)
    mr 3, 31
    addi 4, 4, 0x2c
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_801545E8
    stw 3, 0x274(27)
    li 0, 0xd
    stw 0, 0x230(31)
    .4byte 0x4800144C # b .L_80189AA8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40821440 # bne .L_80189AA8
    li 0, 0x0
    addi 3, 30, 0x48
    stw 0, 0x250(31)
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x274(31)
    cmpwi 3, 0x0
    .4byte 0x41800210 # blt .L_801888A4
    bl fn_8015445C
    li 0, 0x1
    mr. 29, 3
    stw 0, 0x278(31)
    .4byte 0x418201E8 # beq .L_80188890
    addi 3, 1, 0x38
    addi 4, 31, 0xc
    bl fn_801546D0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x43
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 1, 0x54
    bl fn_801546BC
    mr 3, 29
    bl fn_801544DC
    mr 4, 3
    addi 3, 31, 0xc
    bl fn_8018A684
    lwz 0, 0x27c(31)
    lhz 3, 0x94(31)
    cmpw 0, 3
    .4byte 0x41820030 # beq .L_80188724
    bl fn_8022F3DC
    lwz 0, 0x27c(31)
    cmpw 0, 3
    .4byte 0x41820020 # beq .L_80188724
    mr 3, 0
    bl fn_8022F3DC
    lhz 0, 0x94(31)
    cmpw 0, 3
    .4byte 0x4182000C # beq .L_80188724
    lwz 0, 0x27c(31)
    sth 0, 0x94(31)
L_80188724:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4180004C # blt .L_80188778
    mr 3, 31
    bl fn_80189DEC
    mr 3, 29
    bl fn_801544DC
    lhz 0, 0x94(31)
    mr 4, 3
    .4byte 0x38AD8400 # li r5, lbl_80539FC0@sda21
    lwz 3, 0x4(31)
    slwi 0, 0, 1
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000020 # b .L_80188794
L_80188778:
    bl fn_80154744
    .4byte 0xC002B0CC # lfs f0, lbl_8053E06C@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x258(31)
L_80188794:
    mr 3, 31
    bl fn_801545E8
    lhz 9, 0x94(31)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    addi 3, 31, 0xc
    addi 4, 1, 0x38
    bl fn_8018A684
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801887EC
    lhz 3, 0x2ec(31)
    lhz 0, 0x8(1)
    subf 0, 3, 0
    clrlwi 0, 0, 16
    .4byte 0x48000014 # b .L_801887FC
L_801887EC:
    lhz 3, 0x8(1)
    lhz 0, 0x2ec(31)
    add 0, 3, 0
    clrlwi 0, 0, 16
L_801887FC:
    sth 0, 0x8(1)
    li 0, 0x800
    addi 3, 1, 0x54
    lwz 4, 0x258(31)
    addi 4, 4, 0x1
    stw 4, 0x258(31)
    lwz 4, 0x258(31)
    clrlwi 4, 4, 31
    stw 4, 0x258(31)
    sth 0, 0x2ec(31)
    bl fn_801546BC
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(31)
    lhz 0, 0x8(1)
    fmuls 0, 0, 1
    extsh 3, 0
    stfs 0, 0x54(1)
    bl fn_801544E4
    lfs 0, 0x28c(31)
    li 0, 0x0
    mr 3, 29
    fmuls 0, 0, 1
    stfs 0, 0x58(1)
    stb 0, 0x2ef(29)
    lhz 4, 0x94(31)
    bl fn_8018A5A8
    mr 3, 29
    addi 4, 1, 0x54
    bl fn_8017EAF8
    lhz 3, 0x8(1)
    bl ClassifyBamAngleToQuadrant
    mr 4, 3
    mr 3, 29
    bl fn_8018A5A0
    .4byte 0x4800000C # b .L_80188898
L_80188890:
    li 0, -0x1
    stw 0, 0x274(31)
L_80188898:
    li 0, 0xe
    stw 0, 0x230(31)
    .4byte 0x48001208 # b .L_80189AA8
L_801888A4:
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x480011FC # b .L_80189AA8
    lwz 3, 0x26c(31)
    cmpwi 3, 0x4
    .4byte 0x408011F0 # bge .L_80189AA8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408211E4 # bne .L_80189AA8
    slwi 0, 3, 2
    addi 3, 30, 0x48
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x4
    .4byte 0x408211BC # bne .L_80189AA8
    li 3, 0x14
    li 0, 0xf
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x480011A8 # b .L_80189AA8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082119C # bne .L_80189AA8
    li 0, 0x10
    stw 0, 0x230(31)
    mr 3, 31
    bl fn_801545E8
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x10
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_8018896C
    lfs 1, 0x10(1)
    .4byte 0xC002B060 # lfs f0, lbl_8053E000@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8018896C
    li 0, 0x11
    stw 0, 0x230(31)
    .4byte 0x48001140 # b .L_80189AA8
L_8018896C:
    lwz 3, 0x274(31)
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_80188998
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x40820024 # bne .L_801889A4
    li 3, -0x1
    li 0, 0x8
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    .4byte 0x48001114 # b .L_80189AA8
L_80188998:
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48001108 # b .L_80189AA8
L_801889A4:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408210FC # bne .L_80189AA8
    lwz 0, 0x278(31)
    cmpwi 0, 0x1
    .4byte 0x40820044 # bne .L_801889FC
    lwz 3, 0x26c(31)
    subi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801889E4
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x26c(31)
    stw 0, 0x278(31)
L_801889E4:
    lwz 0, 0x26c(31)
    addi 3, 30, 0x48
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x480010B0 # b .L_80189AA8
L_801889FC:
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_80188A1C
    li 0, 0x0
    stw 0, 0x26c(31)
L_80188A1C:
    lwz 0, 0x26c(31)
    addi 3, 30, 0x5c
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48001078 # b .L_80189AA8
    li 7, 0x0
    lis 3, lbl_804C17A8@ha
    stw 7, 0x26c(31)
    addi 6, 30, 0x7c
    addi 5, 3, lbl_804C17A8@l
    addi 3, 1, 0x60
    lwz 0, 0x26c(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    lwzx 0, 6, 0
    stw 0, 0x234(31)
    stw 7, 0x0(5)
    stw 7, 0x4(5)
    stw 7, 0x8(5)
    stw 7, 0xc(5)
    bl fn_8018A684
    lwz 3, 0x314(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80188A8C
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x314(31)
L_80188A8C:
    bl fn_8018A660
    cmpwi 3, 0x0
    .4byte 0x41821014 # beq .L_80189AA8
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x40800038 # bge .L_80188AD8
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x474f
    mr 4, 3
    addi 3, 6, 0x4c44
    addi 5, 31, 0xc
    li 6, 0x63
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
L_80188AD8:
    lwz 3, 0x4(31)
    addi 4, 1, 0x60
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x370
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x60
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x371
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0xa
    li 3, 0x3
    stw 0, 0x234(31)
    li 0, 0x15
    stw 3, 0x278(31)
    stw 0, 0x230(31)
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 2, 0x64(1)
    addi 3, 1, 0x60
    .4byte 0xC002B0E4 # lfs f0, lbl_8053E084@sda21(r0)
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x64(1)
    bl fn_8017EC70
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820F38 # bne .L_80189AA8
    lwz 3, 0x26c(31)
    cmpwi 3, 0x4
    .4byte 0x40800024 # bge .L_80188BA0
    addi 0, 3, 0x1
    addi 3, 30, 0x7c
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000F0C # b .L_80189AA8
L_80188BA0:
    .4byte 0xC022B048 # lfs f1, lbl_8053DFE8@sda21(r0)
    li 4, 0x0
    addi 3, 30, 0x30
    .4byte 0xC002B084 # lfs f0, lbl_8053E024@sda21(r0)
    stfs 1, 0x288(31)
    stw 4, 0x26c(31)
    stw 4, 0x278(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    stfs 0, 0x280(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    bl fn_8018A63C
    li 0, 0x16
    stw 0, 0x230(31)
    .4byte 0x48000EC4 # b .L_80189AA8
    addi 3, 31, 0x2b0
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x0
    addi 3, 1, 0x60
    stw 0, 0x26c(31)
    addi 4, 31, 0xc
    lwz 5, 0x234(31)
    addi 0, 5, 0x1e
    stw 0, 0x234(31)
    bl fn_8018A684
    lfs 3, 0x60(1)
    addi 4, 1, 0x60
    .4byte 0xC022B0DC # lfs f1, lbl_8053E07C@sda21(r0)
    li 5, 0xcb
    lfs 2, 0x64(1)
    li 6, 0x1
    .4byte 0xC002B0E8 # lfs f0, lbl_8053E088@sda21(r0)
    fsubs 3, 3, 1
    .4byte 0xC022B070 # lfs f1, lbl_8053E010@sda21(r0)
    li 7, 0x5
    fsubs 0, 2, 0
    li 8, 0x0
    stfs 3, 0x60(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x64(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x60
    .4byte 0xC022B070 # lfs f1, lbl_8053E010@sda21(r0)
    li 5, 0xcc
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    li 0, 0x12
    stw 3, 0x25c(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_80188D94
    li 0, 0x1
    .4byte 0xC022B044 # lfs f1, lbl_8053DFE4@sda21(r0)
    stw 0, 0x278(31)
    addi 3, 31, 0x60
    .4byte 0xC042B0EC # lfs f2, lbl_8053E08C@sda21(r0)
    .4byte 0xC062B0AC # lfs f3, lbl_8053E04C@sda21(r0)
    .4byte 0xC082B0F0 # lfs f4, lbl_8053E090@sda21(r0)
    bl fn_80154590
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_80188D58
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x43
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_801545E8
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_80188D28
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000D84 # b .L_80189AA8
L_80188D28:
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002B0F4 # lfs f0, lbl_8053E094@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002B0F4 # lfs f0, lbl_8053E094@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
L_80188D58:
    lwz 4, 0x26c(31)
    addi 3, 30, 0x48
    addi 0, 4, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x4
    .4byte 0x40820014 # bne .L_80188D94
    li 3, 0x32
    li 0, 0x13
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_80188D94:
    lwz 0, 0x278(31)
    cmpwi 0, 0x1
    .4byte 0x40820D0C # bne .L_80189AA8
    addi 3, 1, 0x60
    addi 4, 31, 0xc
    bl fn_8018A684
    lfs 2, 0x10(31)
    mr 3, 31
    lfs 1, 0x14(31)
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_80154510
    mr 4, 3
    mr 3, 31
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    addi 3, 31, 0xc
    addi 4, 1, 0x60
    bl fn_8018A684
    .4byte 0x48000CBC # b .L_80189AA8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_80188E28
    .4byte 0xC022B0F8 # lfs f1, lbl_8053E098@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x41820C98 # beq .L_80189AA8
    addi 3, 31, 0x2b0
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0x48000C84 # b .L_80189AA8
L_80188E28:
    lfs 1, 0x3c(31)
    lfs 0, 0x2b0(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B088 # lfs f0, lbl_8053E028@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810C68 # bgt .L_80189AA8
    lfs 1, 0x40(31)
    lfs 0, 0x2b4(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B088 # lfs f0, lbl_8053E028@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810C4C # bgt .L_80189AA8
    lwz 3, 0x26c(31)
    subi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80188E8C
    slwi 0, 0, 2
    addi 3, 30, 0x48
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000C20 # b .L_80189AA8
L_80188E8C:
    li 0, 0x0
    .4byte 0xC022B044 # lfs f1, lbl_8053DFE4@sda21(r0)
    stw 0, 0x26c(31)
    addi 3, 31, 0x60
    .4byte 0xC042B0EC # lfs f2, lbl_8053E08C@sda21(r0)
    .4byte 0xC062B0E4 # lfs f3, lbl_8053E084@sda21(r0)
    .4byte 0xC082B05C # lfs f4, lbl_8053DFFC@sda21(r0)
    bl fn_80154590
    li 0, 0x0
    addi 4, 30, 0x5c
    stw 0, 0x26c(31)
    li 3, 0x2
    .4byte 0xC002B084 # lfs f0, lbl_8053E024@sda21(r0)
    li 0, 0x8
    lwz 5, 0x26c(31)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x234(31)
    stfs 0, 0x28c(31)
    stw 3, 0x278(31)
    stw 0, 0x230(31)
    .4byte 0x48000BC8 # b .L_80189AA8
    lfs 1, 0x14(31)
    .4byte 0xC002B088 # lfs f0, lbl_8053E028@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80188EFC
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    stfs 0, 0x14(31)
L_80188EFC:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_80188F4C
    lwz 3, 0x26c(31)
    cmpwi 3, 0x5
    .4byte 0x40800030 # bge .L_80188F40
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820B8C # bne .L_80189AA8
    addi 0, 3, 0x1
    addi 3, 30, 0x30
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000B6C # b .L_80189AA8
L_80188F40:
    li 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000B60 # b .L_80189AA8
L_80188F4C:
    lwz 0, 0x250(31)
    clrlwi. 0, 0, 27
    .4byte 0x40820018 # bne .L_80188F6C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x45
    li 5, 0x0
    bl fn_801F0E34
L_80188F6C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820B34 # bne .L_80189AA8
    lwz 0, 0x26c(31)
    xori 0, 0, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_80188F9C
    li 0, 0x4
    stw 0, 0x234(31)
    .4byte 0x48000B10 # b .L_80189AA8
L_80188F9C:
    li 0, 0x8
    stw 0, 0x234(31)
    .4byte 0x48000B04 # b .L_80189AA8
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80188FDC
    lwz 4, 0x26c(31)
    addi 3, 30, 0x30
    .4byte 0xC002B054 # lfs f0, lbl_8053DFF4@sda21(r0)
    subi 0, 4, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    stfs 0, 0x280(31)
L_80188FDC:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x41810AC4 # bgt .L_80189AA8
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    li 3, 0x0
    li 0, 0x18
    stfs 0, 0x28c(31)
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x48000AA8 # b .L_80189AA8
    .4byte 0xC022B078 # lfs f1, lbl_8053E018@sda21(r0)
    addi 3, 31, 0x2cc
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B084 # lfs f3, lbl_8053E024@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022B048 # lfs f1, lbl_8053DFE8@sda21(r0)
    addi 3, 31, 0x2c8
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B088 # lfs f3, lbl_8053E028@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2c8(31)
    .4byte 0xC002B088 # lfs f0, lbl_8053E028@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800A70 # bge .L_80189AA8
    addi 3, 31, 0xc
    addi 4, 31, 0x2e0
    bl fn_8018A684
    addi 3, 31, 0x2d4
    addi 4, 31, 0xc
    bl fn_8018A684
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x290(31)
    stw 0, 0x230(31)
    .4byte 0x48000A44 # b .L_80189AA8
    lwz 0, 0x90(31)
    cmplwi 0, 0xb
    .4byte 0x4182006C # beq .L_801890DC
    li 24, 0x0
    mr 27, 31
L_8018907C:
    lhz 0, 0x94(31)
    cmpw 24, 0
    .4byte 0x41820028 # beq .L_801890AC
    lwz 3, 0x2f4(27)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80189098
    bl fn_8018A5E0
L_80189098:
    lwz 3, 0x304(27)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_801890CC
    bl fn_8018A5E0
    .4byte 0x48000024 # b .L_801890CC
L_801890AC:
    lwz 3, 0x2f4(27)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801890BC
    bl fn_8018A5D0
L_801890BC:
    lwz 3, 0x304(27)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801890CC
    bl fn_8018A5D0
L_801890CC:
    addi 24, 24, 0x1
    addi 27, 27, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFA4 # blt .L_8018907C
L_801890DC:
    lfs 0, 0x3c(31)
    .4byte 0xC022B048 # lfs f1, lbl_8053DFE8@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_801890F8
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x418209B4 # beq .L_80189AA8
L_801890F8:
    li 24, 0x0
    mr 27, 31
L_80189100:
    lwz 3, 0x2f4(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80189120
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
L_80189120:
    lwz 3, 0x304(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80189140
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
L_80189140:
    addi 24, 24, 0x1
    addi 27, 27, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFB4 # blt .L_80189100
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820950 # bne .L_80189AA8
    lwz 0, 0x254(31)
    li 29, 0x0
    cmpwi 0, 0x32
    .4byte 0x4181002C # bgt .L_80189194
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80189188
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
L_80189188:
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
L_80189194:
    lwz 0, 0x254(31)
    cmpwi 0, 0x32
    .4byte 0x40810214 # ble .L_801893B0
    mr 3, 31
    bl fn_8015461C
    .4byte 0xC022B044 # lfs f1, lbl_8053DFE4@sda21(r0)
    mr 4, 3
    addi 3, 31, 0xc
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x418201F4 # beq .L_801893B0
    lwz 0, 0x90(31)
    li 29, 0x1
    cmplwi 0, 0xa
    .4byte 0x408201E4 # bne .L_801893B0
    lbz 0, 0x2f0(31)
    cmplwi 0, 0x0
    .4byte 0x418201D8 # beq .L_801893B0
    li 24, 0x0
    mr 29, 31
    mr 28, 24
    mr 27, 24
L_801891EC:
    lwz 26, 0x2f4(29)
    cmplwi 26, 0x0
    .4byte 0x41820014 # beq .L_80189208
    bl fn_8018A5F0
    mr 4, 26
    bl fn_800EC240
    stw 28, 0x2f4(29)
L_80189208:
    lwz 26, 0x304(29)
    cmplwi 26, 0x0
    .4byte 0x41820014 # beq .L_80189224
    bl fn_8018A5F0
    mr 4, 26
    bl fn_800EC240
    stw 27, 0x304(29)
L_80189224:
    addi 24, 24, 0x1
    addi 29, 29, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFBC # blt .L_801891EC
    lhz 0, 0x94(31)
    addi 5, 30, 0xa0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lhz 0, 0x94(31)
    addi 5, 30, 0xa0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    add 5, 5, 0
    li 6, 0x1
    lhz 5, 0x2(5)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062B0FC # lfs f3, lbl_8053E09C@sda21(r0)
    lfs 1, 0xc(31)
    .4byte 0xC042B098 # lfs f2, lbl_8053E038@sda21(r0)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_8015465C
    clrlwi 28, 3, 16
    addi 3, 1, 0x54
    addis 28, 28, 0x1
    subi 28, 28, 0x3000
    bl fn_801546BC
    li 24, 0x0
    lis 27, 0x4647
L_801892D8:
    mr 3, 31
    bl fn_8015461C
    mr 4, 3
    addi 3, 27, 0x4e32
    addi 5, 31, 0xc
    li 6, 0xc
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    mr. 25, 3
    .4byte 0x41800068 # blt .L_80189368
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 25
    bl fn_8015445C
    mr. 25, 3
    .4byte 0x41820044 # beq .L_80189368
    lhz 4, 0x94(31)
    bl fn_8018A5A8
    extsh 26, 28
    mr 3, 26
    bl fn_801544FC
    .4byte 0xC002B078 # lfs f0, lbl_8053E018@sda21(r0)
    mr 3, 26
    fmuls 0, 0, 1
    stfs 0, 0x54(1)
    bl fn_801544E4
    .4byte 0xC002B078 # lfs f0, lbl_8053E018@sda21(r0)
    mr 3, 25
    addi 4, 1, 0x54
    fmuls 0, 0, 1
    stfs 0, 0x58(1)
    bl fn_8017EAF8
L_80189368:
    addi 24, 24, 0x1
    addi 28, 28, 0x1000
    cmpwi 24, 0x7
    .4byte 0x4180FF64 # blt .L_801892D8
    lwz 3, 0x274(31)
    bl fn_8015445C
    mr. 27, 3
    .4byte 0x4182001C # beq .L_801893A0
    bl fn_8018A5B0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801893A0
    li 0, -0x1
    stw 0, 0x274(27)
L_801893A0:
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
    .4byte 0x48000A1C # b .L_80189DC8
L_801893B0:
    cmpwi 29, 0x0
    .4byte 0x408201AC # bne .L_80189560
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 28, 3
    .4byte 0x4180018C # blt .L_80189560
    lhz 0, 0x94(31)
    cmpw 0, 28
    .4byte 0x41820024 # beq .L_80189404
    bl fn_8022F3DC
    lhz 0, 0x94(31)
    cmpw 0, 3
    .4byte 0x41820014 # beq .L_80189404
    mr 3, 0
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820160 # bne .L_80189560
L_80189404:
    lwz 0, 0x90(31)
    cmplwi 0, 0xa
    .4byte 0x40820154 # bne .L_80189560
    lwz 3, 0x274(31)
    bl fn_8015445C
    mr. 24, 3
    .4byte 0x41820144 # beq .L_80189560
    sth 28, 0x94(31)
    lis 0, 0x4330
    .4byte 0xC862B108 # lfd f3, lbl_8053E0A8@sda21(r0)
    lwz 3, 0x250(31)
    stw 0, 0x80(1)
    addi 0, 3, 0x1
    .4byte 0xC082B100 # lfs f4, lbl_8053E0A0@sda21(r0)
    stw 0, 0x250(31)
    .4byte 0xC002B078 # lfs f0, lbl_8053E018@sda21(r0)
    lwz 0, 0x250(31)
    lfs 1, 0x28c(24)
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fmadds 1, 4, 2, 1
    stfs 1, 0x28c(24)
    lfs 1, 0x28c(24)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_80189474
    stfs 0, 0x28c(24)
L_80189474:
    li 0, 0x0
    mr 3, 28
    stw 0, 0xd8(31)
    bl fn_8023B6CC
    mr 3, 24
    bl fn_801544DC
    lfs 1, 0x0(3)
    mr 3, 24
    lfs 0, 0xc(31)
    fsubs 30, 1, 0
    bl fn_801544DC
    lfs 1, 0x8(3)
    mr 3, 24
    .4byte 0xC002B040 # lfs f0, lbl_8053DFE0@sda21(r0)
    fadds 31, 0, 1
    bl fn_801544DC
    lfs 2, 0x4(3)
    fmr 1, 30
    lfs 0, 0x10(31)
    fsubs 2, 2, 31
    fsubs 2, 2, 0
    bl fn_8015465C
    lis 4, 0x2
    sth 3, 0x8(1)
    mr 3, 28
    addi 4, 4, 0x38
    bl fn_80230FD0
    lhz 0, 0x94(31)
    .4byte 0x38AD8400 # li r5, lbl_80539FC0@sda21
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(24)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544E4
    lfs 0, 0x28c(24)
    li 4, 0x1
    li 3, 0x1e
    li 0, 0x64
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
    stb 4, 0x2ef(31)
    stw 3, 0x238(31)
    stw 0, 0x23c(31)
    .4byte 0x4800086C # b .L_80189DC8
L_80189560:
    cmpwi 29, 0x0
    .4byte 0x408200C4 # bne .L_80189628
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_801895BC
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_801895BC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x42
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    li 29, 0x1
L_801895BC:
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801895D0
    lwz 0, 0x90(31)
    cmplwi 0, 0xb
    .4byte 0x41820010 # beq .L_801895DC
L_801895D0:
    .4byte 0x880D8FC4 # lbz r0, lbl_8053AB84@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_80189628
L_801895DC:
    cmpwi 28, 0x0
    .4byte 0x4180000C # blt .L_801895EC
    mr 3, 28
    bl fn_8023B6CC
L_801895EC:
    bl fn_80154744
    .4byte 0xC002B064 # lfs f0, lbl_8053E004@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_80189624
    mr 3, 31
    bl fn_8015461C
    lis 6, 0x4841
    mr 4, 3
    addi 3, 6, 0x5254
    addi 5, 31, 0xc
    li 6, 0x0
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
L_80189624:
    li 29, 0x1
L_80189628:
    cmpwi 29, 0x0
    .4byte 0x40820010 # bne .L_8018963C
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40820470 # bne .L_80189AA8
L_8018963C:
    lwz 3, 0x274(31)
    bl fn_8015445C
    li 24, 0x0
    mr 27, 3
    mr 26, 31
    mr 29, 24
    mr 28, 24
L_80189658:
    lwz 25, 0x2f4(26)
    cmplwi 25, 0x0
    .4byte 0x41820014 # beq .L_80189674
    bl fn_8018A5F0
    mr 4, 25
    bl fn_800EC240
    stw 29, 0x2f4(26)
L_80189674:
    lwz 25, 0x304(26)
    cmplwi 25, 0x0
    .4byte 0x41820014 # beq .L_80189690
    bl fn_8018A5F0
    mr 4, 25
    bl fn_800EC240
    stw 28, 0x304(26)
L_80189690:
    addi 24, 24, 0x1
    addi 26, 26, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFBC # blt .L_80189658
    lwz 0, 0x90(31)
    cmplwi 0, 0xa
    .4byte 0x40820074 # bne .L_8018971C
    lhz 0, 0x94(31)
    addi 5, 30, 0xa0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lhz 0, 0x94(31)
    addi 5, 30, 0xa0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    add 5, 5, 0
    li 6, 0x1
    lhz 5, 0x2(5)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000054 # b .L_8018976C
L_8018971C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x36e
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x36f
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8018976C:
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_80189788
    .4byte 0xC002B084 # lfs f0, lbl_8053E024@sda21(r0)
    li 0, -0x1
    stfs 0, 0x28c(27)
    stw 0, 0x274(27)
    stw 0, 0x274(31)
L_80189788:
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
    .4byte 0x48000314 # b .L_80189AA8
    lhz 0, 0x94(31)
    addi 5, 30, 0x90
    .4byte 0xC022B080 # lfs f1, lbl_8053E020@sda21(r0)
    addi 4, 31, 0xc
    clrlwi 0, 0, 30
    li 6, 0x1
    sth 0, 0x94(31)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    lhz 0, 0x94(31)
    li 10, 0x1
    lwz 3, 0x4(31)
    slwi 0, 0, 2
    lhzx 5, 5, 0
    bl fn_8013CC50
    stw 3, 0x2f4(31)
    addi 5, 30, 0x90
    .4byte 0xC022B080 # lfs f1, lbl_8053E020@sda21(r0)
    addi 4, 31, 0xc
    lhz 0, 0x94(31)
    li 6, 0x1
    lwz 3, 0x4(31)
    li 7, 0x2
    slwi 0, 0, 2
    li 8, 0x0
    add 5, 5, 0
    li 9, 0x0
    lhz 5, 0x2(5)
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
    li 0, 0x1f
    stw 0, 0x230(31)
    lwz 3, 0x2f4(31)
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80189858
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
    lfs 0, 0x290(31)
    lwz 3, 0x2f4(31)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 4, 0x84(1)
    bl fn_8018A5C8
L_80189858:
    lwz 3, 0x304(31)
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80189890
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
    lfs 0, 0x290(31)
    lwz 3, 0x304(31)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 4, 0x84(1)
    bl fn_8018A5C8
L_80189890:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x418200B8 # beq .L_80189960
    lwz 25, 0x2f4(31)
    cmplwi 25, 0x0
    .4byte 0x41820018 # beq .L_801898CC
    bl fn_8018A5F0
    mr 4, 25
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2f4(31)
L_801898CC:
    lwz 25, 0x304(31)
    cmplwi 25, 0x0
    .4byte 0x41820018 # beq .L_801898EC
    bl fn_8018A5F0
    mr 4, 25
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x304(31)
L_801898EC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B080 # lfs f1, lbl_8053E020@sda21(r0)
    li 5, 0x36e
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B080 # lfs f1, lbl_8053E020@sda21(r0)
    li 5, 0x36f
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
    .4byte 0x4800014C # b .L_80189AA8
L_80189960:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_80189978
    .4byte 0x880D8FC4 # lbz r0, lbl_8053AB84@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820134 # bne .L_80189AA8
L_80189978:
    .4byte 0xC022B048 # lfs f1, lbl_8053DFE8@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042B080 # lfs f2, lbl_8053E020@sda21(r0)
    .4byte 0xC062B078 # lfs f3, lbl_8053E018@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x290(31)
    .4byte 0xC002B0A0 # lfs f0, lbl_8053E040@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800110 # bge .L_80189AA8
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
    .4byte 0x48000100 # b .L_80189AA8
    bl fn_8018A660
    cmpwi 3, 0x0
    .4byte 0x418200F4 # beq .L_80189AA8
    li 5, 0x0
    li 4, 0x3
    stw 5, 0x26c(31)
    li 3, 0x4
    .4byte 0xC022B0A0 # lfs f1, lbl_8053E040@sda21(r0)
    li 0, 0x1a
    stw 5, 0x24c(31)
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    stw 5, 0x250(31)
    stw 5, 0x234(31)
    stw 4, 0x278(31)
    stw 3, 0x26c(31)
    stfs 1, 0x280(31)
    stfs 0, 0x288(31)
    stb 5, 0x2ee(31)
    stw 0, 0x230(31)
    lfs 1, 0x14(31)
    lfs 0, 0x288(31)
    fsubs 1, 1, 0
    bl fn_8015436C
    .4byte 0xC002B054 # lfs f0, lbl_8053DFF4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820094 # bne .L_80189AA8
    lwz 3, 0x314(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80189A30
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x314(31)
L_80189A30:
    bl fn_8018A63C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000060 # b .L_80189AA8
    .4byte 0xC022B078 # lfs f1, lbl_8053E018@sda21(r0)
    addi 3, 31, 0x2cc
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B084 # lfs f3, lbl_8053E024@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022B048 # lfs f1, lbl_8053DFE8@sda21(r0)
    addi 3, 31, 0x2c8
    .4byte 0xC042B064 # lfs f2, lbl_8053E004@sda21(r0)
    .4byte 0xC062B088 # lfs f3, lbl_8053E028@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2c8(31)
    .4byte 0xC002B088 # lfs f0, lbl_8053E028@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800028 # bge .L_80189AA8
    lwz 3, 0x314(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80189A9C
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x314(31)
L_80189A9C:
    mr 3, 31
    li 4, 0x0
    bl fn_8018A598
L_80189AA8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_80189AC4
    cmpwi 0, 0x10
    .4byte 0x4182000C # beq .L_80189AC4
    cmpwi 0, 0x17
    .4byte 0x4082002C # bne .L_80189AEC
L_80189AC4:
    lwz 0, 0x24c(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC042B104 # lfs f2, lbl_8053E0A4@sda21(r0)
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    fmadds 0, 2, 1, 0
    stfs 0, 0x288(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x300
    stw 0, 0x24c(31)
L_80189AEC:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820078 # beq .L_80189B6C
    .4byte 0x880D8FC4 # lbz r0, lbl_8053AB84@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x408202C8 # bne .L_80189DC8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x47
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80189B38
    lis 3, lbl_804C17A8@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804C17A8@l
    li 4, 0x0
    stwx 4, 3, 0
L_80189B38:
    li 0, -0x1
    stw 0, 0x268(31)
    lwz 3, 0x274(31)
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80189B60
    bl fn_8015445C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80189B60
    li 4, 0x0
    bl fn_8018A598
L_80189B60:
    li 0, 0x1c
    stw 0, 0x230(31)
    .4byte 0x48000260 # b .L_80189DC8
L_80189B6C:
    lwz 0, 0x230(31)
    cmpwi 0, 0xf
    .4byte 0x4182001C # beq .L_80189B90
    cmpwi 0, 0x10
    .4byte 0x41820014 # beq .L_80189B90
    cmpwi 0, 0x12
    .4byte 0x4182000C # beq .L_80189B90
    cmpwi 0, 0x13
    .4byte 0x4082023C # bne .L_80189DC8
L_80189B90:
    lfs 31, 0x14(31)
    lis 4, 0x4647
    lfs 1, 0x10(31)
    mr 3, 31
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    addi 4, 4, 0x4e32
    fsubs 1, 1, 31
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_801F2718
    stfs 31, 0x14(31)
    cmpwi 3, 0x0
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x418001F8 # blt .L_80189DC8
    bl fn_8015445C
    mr. 28, 3
    .4byte 0x418201EC # beq .L_80189DC8
    bl fn_8018A590
    lhz 0, 0x94(31)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41820040 # beq .L_80189C30
    mr 3, 28
    bl fn_8018A590
    clrlwi 3, 3, 16
    bl fn_8022F3DC
    lhz 0, 0x94(31)
    cmpw 0, 3
    .4byte 0x41820024 # beq .L_80189C30
    mr 3, 0
    bl fn_8022F3DC
    mr 29, 3
    mr 3, 28
    bl fn_8018A590
    clrlwi 0, 3, 16
    cmpw 0, 29
    .4byte 0x4082019C # bne .L_80189DC8
L_80189C30:
    mr 3, 28
    bl fn_801544C8
    cmplwi 3, 0xa
    .4byte 0x41820008 # beq .L_80189C44
    .4byte 0x48000188 # b .L_80189DC8
L_80189C44:
    lwz 0, 0x230(31)
    mr 5, 28
    cmpwi 0, 0x12
    .4byte 0x41820178 # beq .L_80189DC8
    cmpwi 0, 0x13
    .4byte 0x40820008 # bne .L_80189C60
    .4byte 0x4800016C # b .L_80189DC8
L_80189C60:
    lbz 0, 0x2ef(28)
    cmplwi 0, 0x1
    .4byte 0x40820160 # bne .L_80189DC8
    .4byte 0x800D8FB8 # lwz r0, lbl_8053AB78@sda21(r0)
    .4byte 0xC022B078 # lfs f1, lbl_8053E018@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40810008 # ble .L_80189C80
    .4byte 0xC022B104 # lfs f1, lbl_8053E0A4@sda21(r0)
L_80189C80:
    li 0, 0x0
    stw 0, 0x238(5)
    stw 0, 0x23c(5)
    lfs 0, 0x28c(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820108 # bne .L_80189DA0
    mr 3, 5
    li 4, 0x0
    bl fn_8018A598
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80189CC8
    lis 3, lbl_804C17A8@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804C17A8@l
    li 4, 0x0
    stwx 4, 3, 0
L_80189CC8:
    li 0, -0x1
    stw 0, 0x268(31)
    .4byte 0x808D8FB8 # lwz r4, lbl_8053AB78@sda21(r0)
    .4byte 0x806D8FBC # lwz r3, lbl_8053AB7C@sda21(r0)
    subic. 4, 4, 0x1
    subi 0, 3, 0x1
    .4byte 0x900D8FBC # stw r0, lbl_8053AB7C@sda21(r0)
    .4byte 0x908D8FB8 # stw r4, lbl_8053AB78@sda21(r0)
    .4byte 0x41810068 # bgt .L_80189D50
    mr 3, 28
    li 4, 0x0
    bl fn_8018A588
    li 5, 0x0
    li 0, 0x1
    .4byte 0x90AD8FB8 # stw r5, lbl_8053AB78@sda21(r0)
    addi 3, 31, 0x2d4
    addi 4, 31, 0xc
    .4byte 0x90AD8FBC # stw r5, lbl_8053AB7C@sda21(r0)
    .4byte 0x980D8FC4 # stb r0, lbl_8053AB84@sda21(r0)
    stw 5, 0x90(31)
    sth 5, 0x94(31)
    lhz 0, 0x94(31)
    stw 0, 0x27c(31)
    .4byte 0x800D83F8 # lwz r0, lbl_80539FB8@sda21(r0)
    stw 0, 0x270(31)
    bl fn_8018A684
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x44
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x14
    stw 0, 0x230(31)
    .4byte 0x4800007C # b .L_80189DC8
L_80189D50:
    mr 3, 28
    bl fn_801544DC
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022B088 # lfs f1, lbl_8053E028@sda21(r0)
    li 5, 0x556
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x47
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1c
    stw 0, 0x230(31)
    .4byte 0x4800002C # b .L_80189DC8
L_80189DA0:
    stb 0, 0x2ef(5)
    li 0, 0x1
    lis 4, 0x3
    mr 3, 31
    stw 0, 0x254(5)
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0xd
    stw 0, 0x230(31)
L_80189DC8:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    lmw 24, 0x90(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

