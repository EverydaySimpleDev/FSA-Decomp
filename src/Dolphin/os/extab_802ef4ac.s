# fn_802EF4AC - EMSK: update() (0x84)
# Countdown timer at this->0x234; on expiry, looks up an 8-byte-stride
# table (lbl_8046F610) indexed by this->0x230, queries the per-room config
# via GetRoomConfigRecord + fn_802D9FF4 using the table's second field, then
# notifies via fn_80136798(lbl_8053AAF8, 0xf, 0).
#
# Attempted real-C++ promotion (Phase 4): logic/args/table-stride fully
# confirmed correct (a struct-array translation matched the shape
# exactly), but retail's r30/r31 register assignment for "idx<<3" vs the
# lwzx result is swapped vs a cached-idx translation (near-miss, only 2
# instructions differ); re-reading `this->0x230` fresh per access (no
# cached idx) added extra loads (0x90, 12 bytes too long); an explicit
# `TableEntry*` intermediate pointer landed 8 bytes SHORT (0x7c) instead.
# 3 variants tried, none matched - deferred, closest is the cached-idx
# version (only a register-number swap, not a structural difference).
.section extab, "a"
.balign 4
.global etb_8000D2A4
etb_8000D2A4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D2A4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C510
eti_8001C510:
    .4byte fn_802EF4AC
    .4byte 0x00000084
    .4byte etb_8000D2A4
.size eti_8001C510, 12

.text
.balign 4
.global fn_802EF4AC

fn_802EF4AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    lwz 4, 0x234(3)
    subi 0, 4, 0x1
    stw 0, 0x234(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_802EF518
    lwz 0, 0x230(3)
    lis 3, lbl_8046F610@ha
    addi 3, 3, lbl_8046F610@l
    slwi 30, 0, 3
    lwzx 31, 3, 30
    bl GetRoomConfigRecord
    lis 5, lbl_8046F610@ha
    mr 4, 31
    addi 0, 5, lbl_8046F610@l
    add 5, 0, 30
    lwz 5, 0x4(5)
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xf
    li 5, 0x0
    bl fn_80136798
L_802EF518:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
