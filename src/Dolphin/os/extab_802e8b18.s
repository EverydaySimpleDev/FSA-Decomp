# fn_802E8B18 - actor @lbl_804A9FB0: setParams (0xC0)
# Extracts a 3-bit mode selector from this->0x90 into this->0x248, zeroes a
# large block of state/handle fields (0x230-0x270 range), calls GetRoomConfigRecord
# (per-room config accessor) then fn_802D75BC(this->0x16c) query; based on
# the result and this->0x248's mode, either leaves this->0x244=0 or sets it
# to 1 with this->0x24c=0x14, else clears flag byte this->0x11c.
.section extab, "a"
.balign 4
.global etb_8000D0EC
etb_8000D0EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D0EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C294
eti_8001C294:
    .4byte fn_802E8B18
    .4byte 0x000000C0
    .4byte etb_8000D0EC
.size eti_8001C294, 12

.text
.balign 4
.global fn_802E8B18

fn_802E8B18:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x90(3)
    clrlwi 3, 3, 29
    stw 3, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x264(31)
    stw 0, 0x254(31)
    stw 0, 0x268(31)
    stw 0, 0x258(31)
    stw 0, 0x26c(31)
    stw 0, 0x25c(31)
    stw 0, 0x270(31)
    stw 0, 0x260(31)
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    bl fn_802D75BC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802E8B94
    li 0, 0x0
    stw 0, 0x244(31)
    .4byte 0x48000034 # b .L_802E8BC4
L_802E8B94:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802E8BA8
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_802E8BBC
L_802E8BA8:
    li 3, 0x1
    li 0, 0x14
    stw 3, 0x244(31)
    stw 0, 0x24c(31)
    .4byte 0x4800000C # b .L_802E8BC4
L_802E8BBC:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802E8BC4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

