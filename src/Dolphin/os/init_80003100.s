.text
.balign 4
.global __check_pad3_80003100
.global __set_debug_bba_80003140
.global __get_debug_bba_8000314C

__check_pad3_80003100:
    mflr 0
    lis 3, 0x8000
    stw 0, 0x4(1)
    stwu 1, -0x8(1)
    lhz 0, 0x30e4(3)
    andi. 0, 0, 0xeef
    cmpwi 0, 0xeef
    .4byte 0x40820014 # bne .L_80003130
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl OSResetSystem
L_80003130:
    lwz 0, 0xc(1)
    addi 1, 1, 0x8
    mtlr 0
    blr

__set_debug_bba_80003140:
    li 0, 0x1
    .4byte 0x980D88D8 # stb r0, Debug_BBA@sda21(r0)
    blr

__get_debug_bba_8000314C:
    .4byte 0x886D88D8 # lbz r3, Debug_BBA@sda21(r0)
    blr

