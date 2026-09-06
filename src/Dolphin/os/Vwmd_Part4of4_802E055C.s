# VWMD cluster, part 4/4 (72B). Uses the per-room config accessor
# GetRoomConfigRecord plus unfamiliar fn_802D77E4.
.section extab, "a"
.balign 4
.global etb_8000CEBC
etb_8000CEBC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CEBC, 8

.section extabindex, "a"
.balign 4
.global eti_8001BF94
eti_8001BF94:
    .4byte fn_802E055C
    .4byte 0x00000048
    .4byte etb_8000CEBC
.size eti_8001BF94, 12

.text
.balign 4
.global fn_802E055C

fn_802E055C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D77E4
    lwz 0, 0x90(31)
    srwi 0, 0, 27
    stw 0, 0x230(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

