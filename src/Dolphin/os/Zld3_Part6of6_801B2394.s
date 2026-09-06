# ZLD3 cluster, part 6/6 (548B). setParams - calls its shared private
# helper Zld3_AdvanceAnimPhase (landed alongside), the per-room config family
# GetRoomConfigRecord/fn_802D7440/fn_802D800C/fn_802D8050, sound fn_80458F9C,
# plus unfamiliar fn_80119998/fn_80119DD0.
.section extab, "a"
.balign 4
.global etb_80007BB4
etb_80007BB4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007BB4, 8

.section extabindex, "a"
.balign 4
.global eti_80014B0C
eti_80014B0C:
    .4byte fn_801B2394
    .4byte 0x00000224
    .4byte etb_80007BB4
.size eti_80014B0C, 12

.text
.balign 4
.global fn_801B2394

fn_801B2394:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022B988 # lfs f1, lbl_8053E928@sda21(r0)
    li 4, 0x3c
    stw 0, 0x14(1)
    li 0, -0x1
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    li 3, 0x0
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 3, 0x240(30)
    stw 3, 0x244(30)
    stw 3, 0x248(30)
    stw 3, 0x234(30)
    stw 3, 0x238(30)
    stw 3, 0x23c(30)
    stw 3, 0x250(30)
    stw 0, 0x254(30)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
    li 0, 0x2
    mr 3, 30
    stw 0, 0x98(30)
    lwz 4, 0x250(30)
    bl Zld3_AdvanceAnimPhase
    lfs 1, 0xc(30)
    li 0, 0x0
    .4byte 0xC002B944 # lfs f0, lbl_8053E8E4@sda21(r0)
    stfs 1, 0x264(30)
    lfs 1, 0x10(30)
    stfs 1, 0x268(30)
    lfs 1, 0x14(30)
    stfs 1, 0x26c(30)
    lfs 1, 0xc(30)
    stfs 1, 0x270(30)
    lfs 1, 0x10(30)
    stfs 1, 0x274(30)
    lfs 1, 0x14(30)
    stfs 1, 0x278(30)
    lfs 1, 0xc(30)
    stfs 1, 0x27c(30)
    lfs 1, 0x10(30)
    stfs 1, 0x280(30)
    lfs 1, 0x14(30)
    stfs 1, 0x284(30)
    stb 0, 0x258(30)
    stb 0, 0x259(30)
    lfs 1, 0xc(30)
    stfs 1, 0x288(30)
    lfs 1, 0x10(30)
    stfs 1, 0x28c(30)
    lfs 1, 0x14(30)
    stfs 1, 0x290(30)
    lfs 1, 0xc(30)
    stfs 1, 0x294(30)
    lfs 1, 0x10(30)
    stfs 1, 0x298(30)
    lfs 1, 0x14(30)
    stfs 1, 0x29c(30)
    lfs 1, 0xc(30)
    stfs 1, 0x2a0(30)
    lfs 1, 0x10(30)
    stfs 1, 0x2a4(30)
    lfs 1, 0x14(30)
    stfs 1, 0x2a8(30)
    lfs 1, 0xc(30)
    stfs 1, 0x2ac(30)
    lfs 1, 0x10(30)
    stfs 1, 0x2b0(30)
    lfs 1, 0x14(30)
    stfs 1, 0x2b4(30)
    stw 0, 0x2b8(30)
    stw 0, 0x2bc(30)
    stfs 0, 0x25c(30)
    stfs 0, 0x260(30)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lwz 0, 0x90(30)
    li 31, 0xc8
    cmpwi 0, 0x1
    .4byte 0x4182005C # beq .L_801B2558
    .4byte 0x40800064 # bge .L_801B2564
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801B2510
    .4byte 0x48000058 # b .L_801B2564
L_801B2510:
    bl GetRoomConfigRecord
    li 4, 0x10
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801B2530
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000038 # b .L_801B2564
L_801B2530:
    li 0, 0x2
    stw 0, 0x90(30)
    bl GetRoomConfigRecord
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    li 0, 0x14
    stw 0, 0x230(30)
    .4byte 0x48000010 # b .L_801B2564
L_801B2558:
    li 0, 0xf
    li 31, 0x64
    stw 0, 0x230(30)
L_801B2564:
    lbz 0, 0x11c(30)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_801B25A0
    lwz 0, 0x90(30)
    cmplwi 0, 0x2
    .4byte 0x41820028 # beq .L_801B25A0
    bl fn_80119DD0
    mr 4, 31
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
L_801B25A0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

