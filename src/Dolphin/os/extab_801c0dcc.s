.section extab, "a"
.balign 4
.global etb_80007FB4
etb_80007FB4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80007FB4, 8

.section extabindex, "a"
.balign 4
.global eti_8001510C
eti_8001510C:
    .4byte fn_801C0DCC
    .4byte 0x00000220
    .4byte etb_80007FB4
.size eti_8001510C, 12

.text
.balign 4
.global fn_801C0DCC

fn_801C0DCC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 30, 3
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x418200B0 # beq .L_801C0E98
    bl fn_8011921C
    li 4, 0xf
    bl fn_801186B0
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_801C0E98
    lwz 27, 0x50(30)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_801C0E24
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801C0E24
    bl fn_801C186C
L_801C0E24:
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    li 5, -0x1
    addi 4, 4, 0x4d42
    bl fn_801F7AB8
    mr 27, 30
    li 29, 0x0
    li 31, 0x1
    .4byte 0x48000024 # b .L_801C0E68
L_801C0E48:
    bl SpatialRegistry_GetBase
    lwz 4, 0x10(27)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801C0E60
    stw 31, 0x568(3)
L_801C0E60:
    addi 27, 27, 0x4
    addi 29, 29, 0x1
L_801C0E68:
    lwz 0, 0xc(30)
    cmpw 29, 0
    .4byte 0x4180FFD8 # blt .L_801C0E48
    lhz 0, 0x0(30)
    rlwinm 0, 0, 0, 26, 24
    sth 0, 0x0(30)
    lhz 0, 0x0(30)
    ori 0, 0, 0x400
    sth 0, 0x0(30)
    lhz 0, 0x0(30)
    rlwinm 0, 0, 0, 24, 22
    sth 0, 0x0(30)
L_801C0E98:
    lhz 0, 0x0(30)
    rlwinm. 0, 0, 0, 22, 22
    .4byte 0x41820030 # beq .L_801C0ED0
    bl fn_8011921C
    li 4, 0xd
    bl fn_801186B0
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801C0ED0
    lhz 0, 0x0(30)
    ori 0, 0, 0x80
    sth 0, 0x0(30)
    lhz 0, 0x0(30)
    rlwinm 0, 0, 0, 23, 21
    sth 0, 0x0(30)
L_801C0ED0:
    lhz 0, 0x0(30)
    rlwinm. 0, 0, 0, 26, 28
    .4byte 0x41820100 # beq .L_801C0FD8
    li 29, 0x0
    mr 27, 30
    mr 31, 29
    .4byte 0x48000030 # b .L_801C0F18
L_801C0EEC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x10(27)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801C0F10
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820008 # beq .L_801C0F10
    addi 29, 29, 0x1
L_801C0F10:
    addi 27, 27, 0x4
    addi 31, 31, 0x1
L_801C0F18:
    lwz 0, 0xc(30)
    cmpw 31, 0
    .4byte 0x4180FFCC # blt .L_801C0EEC
    lhz 3, 0x2(30)
    clrlwi 4, 29, 16
    mr 31, 30
    li 29, 0x0
    subf 0, 3, 4
    orc 3, 4, 3
    srwi 0, 0, 1
    subf 0, 0, 3
    srwi 28, 0, 31
    .4byte 0x48000060 # b .L_801C0FA8
L_801C0F4C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x10(31)
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x41820044 # beq .L_801C0FA0
    lhz 0, 0x0(30)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820008 # beq .L_801C0F70
    bl fn_801C27A8
L_801C0F70:
    lhz 0, 0x0(30)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x41820014 # beq .L_801C0F8C
    cmplwi 28, 0x0
    .4byte 0x4182000C # beq .L_801C0F8C
    mr 3, 27
    bl fn_801C272C
L_801C0F8C:
    lhz 0, 0x0(30)
    rlwinm. 0, 0, 0, 26, 26
    .4byte 0x4182000C # beq .L_801C0FA0
    mr 3, 27
    bl fn_801C26FC
L_801C0FA0:
    addi 31, 31, 0x4
    addi 29, 29, 0x1
L_801C0FA8:
    lwz 0, 0xc(30)
    cmpw 29, 0
    .4byte 0x4180FF9C # blt .L_801C0F4C
    lhz 3, 0x0(30)
    li 0, -0x29
    cmplwi 28, 0x0
    and 0, 3, 0
    sth 0, 0x0(30)
    .4byte 0x41820010 # beq .L_801C0FD8
    lhz 0, 0x0(30)
    rlwinm 0, 0, 0, 28, 26
    sth 0, 0x0(30)
L_801C0FD8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

