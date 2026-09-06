# fn_802F4510 - TBO2: draw()-related (0xCC)
# Resolves a per-player-index record via fn_8020D58C/fn_8020D7D0 (same
# pair used by BLZ2), then calls fn_80239914.
.section extab, "a"
.balign 4
.global etb_8000D37C
etb_8000D37C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D37C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C63C
eti_8001C63C:
    .4byte fn_802F4510
    .4byte 0x000000CC
    .4byte etb_8000D37C
.size eti_8001C63C, 12

.text
.balign 4
.global fn_802F4510

fn_802F4510:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022E53C # lfs f1, lbl_805414DC@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002E540 # lfs f0, lbl_805414E0@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 1, 0x8
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 4, 0x80(31)
    lwz 0, 0x84(31)
    stw 4, 0x8(1)
    stw 0, 0xc(1)
    lfs 3, 0x8(1)
    lwz 4, 0x88(31)
    lwz 0, 0x8c(31)
    lfs 2, 0xc(1)
    stw 4, 0x10(1)
    stw 0, 0x14(1)
    lfs 1, 0x10(1)
    lfs 4, 0xc(31)
    lfs 5, 0x10(31)
    lfs 0, 0x14(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x8(1)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 31, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 31
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

