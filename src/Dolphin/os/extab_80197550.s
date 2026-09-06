# Unnamed actor cluster, part 2/9 (Track A byte-match + overview -
# 0x198=408B). update() dispatcher - calls into 3 private per-state
# handlers (fn_801976E8/fn_801979C4/fn_80197EB0, landed alongside) and
# the actor's own large state-machine body (fn_80198828, landed
# alongside); also uses fn_801F71A4 (ease) and an unfamiliar fn_8030C210.
.section extab, "a"
.balign 4
.global etb_80007854
etb_80007854:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007854, 8

.section extabindex, "a"
.balign 4
.global eti_800145FC
eti_800145FC:
    .4byte fn_80197550
    .4byte 0x00000198
    .4byte etb_80007854
.size eti_800145FC, 12

.text
.balign 4
.global fn_80197550

fn_80197550:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x2710
    .4byte 0xC062B3D0 # lfs f3, lbl_8053E370@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 31, 0x3c
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    stw 0, 0x108(31)
    lfs 1, 0x274(31)
    bl fn_801F71A4
    lfs 1, 0x278(31)
    addi 3, 31, 0x40
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    .4byte 0xC062B3D0 # lfs f3, lbl_8053E370@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x26c(31)
    addi 3, 31, 0x14
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    .4byte 0xC062B3D0 # lfs f3, lbl_8053E370@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x90(31)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_8019761C
    .4byte 0x40800014 # bge .L_801975F8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80197604
    .4byte 0x40800020 # bge .L_80197610
    .4byte 0x4800007C # b .L_80197670
L_801975F8:
    cmpwi 0, 0x4
    .4byte 0x40800074 # bge .L_80197670
    .4byte 0x48000048 # b .L_80197648
L_80197604:
    mr 3, 31
    bl fn_80198828
    .4byte 0x48000064 # b .L_80197670
L_80197610:
    mr 3, 31
    bl fn_80197EB0
    .4byte 0x48000058 # b .L_80197670
L_8019761C:
    mr 3, 31
    bl fn_801979C4
    lfs 3, 0x8(1)
    .4byte 0xC042B3D8 # lfs f2, lbl_8053E378@sda21(r0)
    lfs 1, 0xc(1)
    .4byte 0xC002B3DC # lfs f0, lbl_8053E37C@sda21(r0)
    fadds 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x4800002C # b .L_80197670
L_80197648:
    mr 3, 31
    bl fn_801976E8
    lfs 3, 0x8(1)
    .4byte 0xC042B3D8 # lfs f2, lbl_8053E378@sda21(r0)
    lfs 1, 0xc(1)
    .4byte 0xC002B3DC # lfs f0, lbl_8053E37C@sda21(r0)
    fadds 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
L_80197670:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x8
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80197694
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80197694:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801976A8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801976A8:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801976C0
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801976C0:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801976D4
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_801976D4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

