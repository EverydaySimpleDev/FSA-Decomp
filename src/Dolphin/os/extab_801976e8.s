# Unnamed actor cluster, part 3/9 (Track A byte-match + overview -
# 0x2DC=732B). update() state handler #1 - calls fn_800EC240 (full
# effect-handle teardown, confirmed sibling of fn_801EE434's soft-stop
# path), fn_8013C824 (handle-resolve wrapper), fn_8013CC50 (effect
# spawn), fn_801F71A4 (ease).
.section extab, "a"
.balign 4
.global etb_8000785C
etb_8000785C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000785C, 8

.section extabindex, "a"
.balign 4
.global eti_80014608
eti_80014608:
    .4byte fn_801976E8
    .4byte 0x000002DC
    .4byte etb_8000785C
.size eti_80014608, 12

.text
.balign 4
.global fn_801976E8

fn_801976E8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022B3E0 # lfs f1, lbl_8053E380@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    stw 31, 0x1c(1)
    .4byte 0xC062B3E4 # lfs f3, lbl_8053E384@sda21(r0)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lhz 0, 0x94(3)
    addi 3, 30, 0x270
    mulli 31, 0, 0x6
    bl fn_801F71A4
    lwz 0, 0x230(30)
    cmpwi 0, 0x51
    .4byte 0x41820138 # beq .L_80197864
    .4byte 0x40800014 # bge .L_80197744
    cmpwi 0, 0x4f
    .4byte 0x41820018 # beq .L_80197750
    .4byte 0x40800028 # bge .L_80197764
    .4byte 0x48000264 # b .L_801979A4
L_80197744:
    cmpwi 0, 0x53
    .4byte 0x4080025C # bge .L_801979A4
    .4byte 0x4800016C # b .L_801978B8
L_80197750:
    .4byte 0x806D8FE0 # lwz r3, lbl_8053ABA0@sda21(r0)
    li 0, 0x4f
    addi 3, 3, 0x1
    .4byte 0x906D8FE0 # stw r3, lbl_8053ABA0@sda21(r0)
    stw 0, 0x230(30)
L_80197764:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80197798
    li 0, 0x9
    stw 0, 0x234(30)
    lwz 3, 0x254(30)
    addi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_80197798
    li 0, 0x0
    stw 0, 0x254(30)
L_80197798:
    .4byte 0x800D8FE4 # lwz r0, lbl_8053ABA4@sda21(r0)
    cmpwi 0, 0x2
    .4byte 0x40820204 # bne .L_801979A4
    li 28, 0x0
    mr 29, 30
L_801977AC:
    cmplwi 28, 0x1
    .4byte 0x4081000C # ble .L_801977BC
    cmpwi 28, 0x5
    .4byte 0x40820050 # bne .L_80197808
L_801977BC:
    lwz 0, 0x304(29)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_80197840
    add 0, 31, 28
    lis 4, lbl_804A28FC@ha
    slwi 0, 0, 1
    lwz 3, 0x4(30)
    addi 4, 4, lbl_804A28FC@l
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    lhzx 5, 4, 0
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(29)
    .4byte 0x4800003C # b .L_80197840
L_80197808:
    add 0, 31, 28
    lis 4, lbl_804A28FC@ha
    slwi 0, 0, 1
    lwz 3, 0x4(30)
    addi 4, 4, lbl_804A28FC@l
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    lhzx 5, 4, 0
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80197840:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x6
    .4byte 0x4180FF60 # blt .L_801977AC
    li 3, 0x1e0
    li 0, 0x51
    stw 3, 0x238(30)
    stw 0, 0x230(30)
    .4byte 0x48000144 # b .L_801979A4
L_80197864:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80197898
    li 0, 0x9
    stw 0, 0x234(30)
    lwz 3, 0x254(30)
    addi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_80197898
    li 0, 0x0
    stw 0, 0x254(30)
L_80197898:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820104 # bne .L_801979A4
    li 3, 0x3
    li 0, 0x52
    .4byte 0x906D8FE4 # stw r3, lbl_8053ABA4@sda21(r0)
    stw 0, 0x230(30)
    .4byte 0x480000F0 # b .L_801979A4
L_801978B8:
    .4byte 0x800D8FE4 # lwz r0, lbl_8053ABA4@sda21(r0)
    cmpwi 0, 0x4
    .4byte 0x4082004C # bne .L_8019790C
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    li 28, 0x0
    mr 29, 30
    stfs 0, 0x26c(30)
    mr 31, 28
    stfs 0, 0x14(30)
L_801978DC:
    lwz 0, 0x304(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801978FC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x304(29)
    bl fn_800EC240
    stw 31, 0x304(29)
L_801978FC:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x6
    .4byte 0x4180FFD4 # blt .L_801978DC
L_8019790C:
    .4byte 0x800D8FE4 # lwz r0, lbl_8053ABA4@sda21(r0)
    cmpwi 0, 0x5
    .4byte 0x4082005C # bne .L_80197970
    lfs 1, 0x284(30)
    lis 3, 0x4330
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    li 0, 0x8
    stw 3, 0x8(1)
    fsubs 0, 1, 0
    .4byte 0xC842B3F8 # lfd f2, lbl_8053E398@sda21(r0)
    .4byte 0xC062B3F4 # lfs f3, lbl_8053E394@sda21(r0)
    .4byte 0xC082B3F0 # lfs f4, lbl_8053E390@sda21(r0)
    stfs 0, 0x10(30)
    lfs 0, 0x280(30)
    stfs 0, 0xc(30)
    lhz 3, 0x94(30)
    lfs 0, 0xc(30)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fsubs 1, 3, 1
    fmadds 0, 4, 1, 0
    stfs 0, 0xc(30)
    stw 0, 0x254(30)
    .4byte 0x48000038 # b .L_801979A4
L_80197970:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801979A4
    li 0, 0x9
    stw 0, 0x234(30)
    lwz 3, 0x254(30)
    addi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_801979A4
    li 0, 0x0
    stw 0, 0x254(30)
L_801979A4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

