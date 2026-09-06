# fn_8038FD08 - KNBN: setParams-related (0x110)
# Calls fn_80138AB0 (x2, related to the boss-defeat/despawn notifier
# family fn_80138A30/80138B7C).
.section extab, "a"
.balign 4
.global etb_8000EE68
etb_8000EE68:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EE68, 8

.section extabindex, "a"
.balign 4
.global eti_8001ECA0
eti_8001ECA0:
    .4byte fn_8038FD08
    .4byte 0x00000110
    .4byte etb_8000EE68
.size eti_8001ECA0, 12

.text
.balign 4
.global fn_8038FD08

fn_8038FD08:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC02201B8 # lfs f1, lbl_80543158@sda21(r0)
    li 4, 0x0
    stw 0, 0x14(1)
    li 0, -0x1
    .4byte 0xC00201C4 # lfs f0, lbl_80543164@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x3c(3)
    stfs 1, 0x40(3)
    stfs 1, 0x44(3)
    stw 4, 0x230(3)
    stw 0, 0x234(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_8038FDB4
    lwz 0, 0x90(31)
    clrrwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_8038FD74
    stb 4, 0x11c(31)
    .4byte 0x48000094 # b .L_8038FE04
L_8038FD74:
    bl fn_80138AB0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8038FD9C
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 2, 2
    .4byte 0x41820010 # beq .L_8038FD9C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800006C # b .L_8038FE04
L_8038FD9C:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 3, 3
    .4byte 0x41820060 # beq .L_8038FE04
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000054 # b .L_8038FE04
L_8038FDB4:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 1, 1
    .4byte 0x4182000C # beq .L_8038FDC8
    stb 4, 0x11c(31)
    .4byte 0x48000040 # b .L_8038FE04
L_8038FDC8:
    bl fn_80138AB0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8038FDF0
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 2, 2
    .4byte 0x41820010 # beq .L_8038FDF0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000018 # b .L_8038FE04
L_8038FDF0:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 3, 3
    .4byte 0x4182000C # beq .L_8038FE04
    li 0, 0x0
    stb 0, 0x11c(31)
L_8038FE04:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

