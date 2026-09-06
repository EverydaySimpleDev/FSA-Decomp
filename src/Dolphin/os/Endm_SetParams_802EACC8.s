# fn_802EACC8 - ENDM: setParams (0xB0)
# Calls GetRoomConfigRecord (per-room config accessor) x2, fn_8044B80C, and
# fn_80458FF0 (unfamiliar SDK/library utilities near .text end).
.section extab, "a"
.balign 4
.global etb_8000D164
etb_8000D164:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D164, 8

.section extabindex, "a"
.balign 4
.global eti_8001C348
eti_8001C348:
    .4byte fn_802EACC8
    .4byte 0x000000B0
    .4byte etb_8000D164
.size eti_8001C348, 12

.text
.balign 4
.global fn_802EACC8

fn_802EACC8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    stw 0, 0x284(31)
    bl GetRoomConfigRecord
    lwz 4, 0x8(3)
    lis 3, 0x100
    li 7, 0x0
    li 0, 0x1
    stw 4, 0x280(31)
    addi 4, 3, 0x28
    .4byte 0xC022E378 # lfs f1, lbl_80541318@sda21(r0)
    li 5, 0x1
    stw 7, 0x23c(31)
    li 6, 0x0
    .4byte 0xC002E34C # lfs f0, lbl_805412EC@sda21(r0)
    stb 7, 0x230(31)
    stb 7, 0x28d(31)
    stb 7, 0x298(31)
    stw 7, 0x240(31)
    stb 7, 0x294(31)
    stb 7, 0x295(31)
    stb 0, 0x299(31)
    stfs 1, 0x270(31)
    stfs 1, 0x274(31)
    stfs 0, 0x278(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    li 0, 0x0
    stw 0, 0x234(31)
    stb 0, 0x231(31)
    .4byte 0x806D9370 # lwz r3, lbl_8053AF30@sda21(r0)
    lbz 4, 0x294(31)
    bl fn_8044B80C
    stb 3, 0x29a(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

