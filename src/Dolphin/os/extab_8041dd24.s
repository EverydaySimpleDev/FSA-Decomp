# 901KB-gap non-actor manager block: 9 functions, 9,404 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010534
etb_80010534:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_80010534, 8

.global etb_8001053C
etb_8001053C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8001053C, 8

.global etb_80010544
etb_80010544:
    .4byte 0x48080000
    .4byte 0x00000000
.size etb_80010544, 8

.global etb_8001054C
etb_8001054C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8001054C, 8

.global etb_80010554
etb_80010554:
    .4byte 0x50080000
    .4byte 0x00000000
.size etb_80010554, 8

.global etb_8001055C
etb_8001055C:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_8001055C, 8

.global etb_80010564
etb_80010564:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010564, 8

.global etb_8001056C
etb_8001056C:
    .4byte 0x318A0000
    .4byte 0x00000000
.size etb_8001056C, 8

.global etb_80010574
etb_80010574:
    .4byte 0x504A0000
    .4byte 0x00000000
.size etb_80010574, 8

.section extabindex, "a"
.balign 4
.global eti_8002038C
eti_8002038C:
    .4byte fn_8041DD24
    .4byte 0x00000690
    .4byte etb_80010534
.size eti_8002038C, 12

.global eti_80020398
eti_80020398:
    .4byte fn_8041E3B4
    .4byte 0x000001D8
    .4byte etb_8001053C
.size eti_80020398, 12

.global eti_800203A4
eti_800203A4:
    .4byte fn_8041E58C
    .4byte 0x0000017C
    .4byte etb_80010544
.size eti_800203A4, 12

.global eti_800203B0
eti_800203B0:
    .4byte fn_8041E708
    .4byte 0x000001AC
    .4byte etb_8001054C
.size eti_800203B0, 12

.global eti_800203BC
eti_800203BC:
    .4byte fn_8041E8B4
    .4byte 0x000004FC
    .4byte etb_80010554
.size eti_800203BC, 12

.global eti_800203C8
eti_800203C8:
    .4byte fn_8041EDB0
    .4byte 0x0000084C
    .4byte etb_8001055C
.size eti_800203C8, 12

.global eti_800203D4
eti_800203D4:
    .4byte fn_8041F5FC
    .4byte 0x00000124
    .4byte etb_80010564
.size eti_800203D4, 12

.global eti_800203E0
eti_800203E0:
    .4byte fn_8041F720
    .4byte 0x0000050C
    .4byte etb_8001056C
.size eti_800203E0, 12

.global eti_800203EC
eti_800203EC:
    .4byte fn_8041FC2C
    .4byte 0x000005B4
    .4byte etb_80010574
.size eti_800203EC, 12

.text
.balign 4
.global fn_8041DD24
.global fn_8041E3B4
.global fn_8041E58C
.global fn_8041E708
.global fn_8041E8B4
.global fn_8041EDB0
.global fn_8041F5FC
.global fn_8041F720
.global fn_8041FC2C

fn_8041DD24:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 25, 3
    lis 3, lbl_8048D320@ha
    addi 26, 3, lbl_8048D320@l
    lbz 0, 0x28a(25)
    clrlwi. 0, 0, 31
    .4byte 0x41820658 # beq .L_8041E3A0
    li 3, 0x0
    bl fn_80237810
    lis 4, lbl_80529DEC@ha
    mr 27, 3
    addi 3, 4, lbl_80529DEC@l
    lwz 0, 0xd8(3)
    cmpwi 27, 0x20
    mr 24, 0
    .4byte 0x40810008 # ble .L_8041DD74
    li 27, 0x20
L_8041DD74:
    cmpwi 27, 0x0
    .4byte 0x40800008 # bge .L_8041DD80
    li 27, 0x0
L_8041DD80:
    cmpw 27, 0
    .4byte 0x40800008 # bge .L_8041DD8C
    mr 24, 27
L_8041DD8C:
    cmpwi 24, 0x0
    .4byte 0x40800008 # bge .L_8041DD98
    li 24, 0x0
L_8041DD98:
    addi 31, 26, 0x148
    addi 30, 26, 0x188
    addi 29, 26, 0x1c8
    addi 28, 26, 0x208
    li 26, 0x0
L_8041DDAC:
    cmpwi 24, 0x4
    .4byte 0x41800138 # blt .L_8041DEE8
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    .4byte 0xC0420A60 # lfs f2, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220A6C # lfs f1, lbl_80543A0C@sda21(r0)
    .4byte 0xC0420A60 # lfs f2, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    subi 24, 24, 0x4
    .4byte 0x480004A0 # b .L_8041E384
L_8041DEE8:
    cmpwi 24, 0x0
    .4byte 0x408200F0 # bne .L_8041DFDC
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    cmpwi 27, 0x0
    stb 0, 0xb0(3)
    .4byte 0x40810054 # ble .L_8041DF90
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    .4byte 0x480003F4 # b .L_8041E380
L_8041DF90:
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480003A8 # b .L_8041E380
L_8041DFDC:
    cmpwi 24, 0x1
    .4byte 0x40820134 # bne .L_8041E114
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820A6C # lfs f4, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820A6C # lfs f4, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    .4byte 0x48000270 # b .L_8041E380
L_8041E114:
    cmpwi 24, 0x2
    .4byte 0x40820134 # bne .L_8041E24C
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620A6C # lfs f3, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620A6C # lfs f3, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    .4byte 0x48000138 # b .L_8041E380
L_8041E24C:
    cmpwi 24, 0x3
    .4byte 0x40820130 # bne .L_8041E380
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420A6C # lfs f2, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420A6C # lfs f2, lbl_80543A0C@sda21(r0)
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
L_8041E380:
    li 24, 0x0
L_8041E384:
    addi 26, 26, 0x1
    addi 30, 30, 0x8
    cmpwi 26, 0x8
    addi 29, 29, 0x8
    addi 28, 28, 0x8
    addi 31, 31, 0x8
    .4byte 0x4180FA10 # blt .L_8041DDAC
L_8041E3A0:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8041E3B4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x1
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    slw 30, 0, 4
    clrlwi 31, 30, 24
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x82(5)
    and 3, 0, 31
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x40820014 # bne .L_8041E408
    lbz 0, 0x28f(29)
    andc 0, 0, 31
    stb 0, 0x28f(29)
    .4byte 0x4800016C # b .L_8041E570
L_8041E408:
    .4byte 0x808D9310 # lwz r4, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdd(4)
    and 3, 0, 31
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820028 # beq .L_8041E448
    lbz 3, 0x290(29)
    and. 0, 3, 31
    .4byte 0x4082001C # bne .L_8041E448
    or 0, 3, 31
    stb 0, 0x290(29)
    lbz 0, 0x28f(29)
    or 0, 0, 31
    stb 0, 0x28f(29)
    .4byte 0x4800012C # b .L_8041E570
L_8041E448:
    lbz 0, 0xdc(4)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x41820014 # beq .L_8041E464
    lbz 0, 0x28f(29)
    andc 0, 0, 31
    stb 0, 0x28f(29)
    .4byte 0x48000110 # b .L_8041E570
L_8041E464:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31ef(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8041E49C
    bl fn_8022AF5C
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8041E49C
    bl GetSessionFlag_0x6e
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8041E49C
    bl GetSessionFlag_0x6f
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8041E4BC
L_8041E49C:
    lbz 3, 0x28f(29)
    clrlwi 0, 30, 24
    andc 3, 3, 31
    stb 3, 0x28f(29)
    lbz 3, 0x293(29)
    or 0, 3, 0
    stb 0, 0x293(29)
    .4byte 0x480000B8 # b .L_8041E570
L_8041E4BC:
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5e(3)
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_8041E510
    li 31, 0x0
    li 30, 0x1
    .4byte 0x4800001C # b .L_8041E4F0
L_8041E4D8:
    slw 0, 30, 31
    lbz 3, 0x28f(29)
    clrlwi 0, 0, 24
    addi 31, 31, 0x1
    or 0, 3, 0
    stb 0, 0x28f(29)
L_8041E4F0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 31, 3
    .4byte 0x4180FFDC # blt .L_8041E4D8
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    li 0, 0x0
    stb 0, 0x5e(3)
    .4byte 0x48000064 # b .L_8041E570
L_8041E510:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x40820014 # bne .L_8041E530
    lbz 0, 0x28f(29)
    andc 0, 0, 31
    stb 0, 0x28f(29)
    .4byte 0x48000044 # b .L_8041E570
L_8041E530:
    bl GetSessionFlag_0x6e
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_8041E570
    bl GetSessionFlag_0x6f
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_8041E570
    lbz 0, 0x293(29)
    and. 0, 0, 31
    .4byte 0x41820020 # beq .L_8041E570
    lbz 3, 0x28f(29)
    clrlwi 0, 30, 24
    or 0, 3, 0
    stb 0, 0x28f(29)
    lbz 0, 0x293(29)
    andc 0, 0, 31
    stb 0, 0x293(29)
L_8041E570:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8041E58C:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 26, 3
    addi 29, 4, lbl_80529DEC@l
    li 27, 0x0
    mr 30, 26
    mr 31, 29
L_8041E5B4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 28, 0, 27
    lbz 3, 0x82(3)
    clrlwi 0, 28, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820108 # beq .L_8041E6E0
    mr 3, 27
    bl fn_80237774
    stw 3, 0xd8(31)
    mr 25, 29
    addi 24, 31, 0xd8
    li 23, 0x0
L_8041E5F4:
    cmpw 23, 27
    .4byte 0x4182002C # beq .L_8041E624
    mr 3, 23
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8041E624
    mr 3, 23
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082000C # bne .L_8041E624
    lwz 0, 0x0(24)
    stw 0, 0xd8(25)
L_8041E624:
    addi 23, 23, 0x1
    addi 25, 25, 0x4
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_8041E5F4
    lbz 5, 0x28a(26)
    clrlwi 4, 28, 24
    li 0, 0x0
    mr 3, 27
    or 4, 5, 4
    stb 4, 0x28a(26)
    stw 0, 0x198(30)
    bl fn_80236100
    stw 3, 0xe8(31)
    clrlwi 4, 28, 24
    li 0, 0x0
    mr 3, 27
    lbz 5, 0x28b(26)
    or 4, 5, 4
    stb 4, 0x28b(26)
    stw 0, 0x1a8(30)
    bl fn_802375B0
    stw 3, 0x108(31)
    mr 24, 29
    addi 25, 31, 0x108
    li 23, 0x0
L_8041E688:
    cmpw 23, 27
    .4byte 0x4182002C # beq .L_8041E6B8
    mr 3, 23
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8041E6B8
    mr 3, 23
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082000C # bne .L_8041E6B8
    lwz 0, 0x0(25)
    stw 0, 0x108(24)
L_8041E6B8:
    addi 23, 23, 0x1
    addi 24, 24, 0x4
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_8041E688
    lbz 4, 0x289(26)
    clrlwi 3, 28, 24
    li 0, 0x0
    or 3, 4, 3
    stb 3, 0x289(26)
    stw 0, 0x1b8(30)
L_8041E6E0:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FEC4 # blt .L_8041E5B4
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8041E708:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 4
    mr 28, 3
    mr 29, 5
    mr 30, 6
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8041E748
    mr 3, 27
    bl fn_8022F3DC
    mr 31, 3
    .4byte 0x48000008 # b .L_8041E74C
L_8041E748:
    mr 31, 27
L_8041E74C:
    clrlwi. 0, 30, 24
    .4byte 0x41820040 # beq .L_8041E790
    mr 3, 31
    bl fn_80236100
    add 0, 29, 3
    cmpwi 0, 0x270f
    .4byte 0x40810014 # ble .L_8041E778
    mr 3, 31
    bl fn_80236228
    subfic 29, 3, 0x270f
    .4byte 0x4800006C # b .L_8041E7E0
L_8041E778:
    cmpwi 0, -0x1388
    .4byte 0x40800064 # bge .L_8041E7E0
    mr 3, 31
    bl fn_80236228
    subfic 29, 3, -0x1388
    .4byte 0x48000054 # b .L_8041E7E0
L_8041E790:
    mr 3, 31
    bl fn_80236228
    add 0, 29, 3
    cmpwi 0, 0x270f
    .4byte 0x40810014 # ble .L_8041E7B4
    mr 3, 31
    bl fn_80236228
    subfic 29, 3, 0x270f
    .4byte 0x48000030 # b .L_8041E7E0
L_8041E7B4:
    cmpwi 0, 0x0
    .4byte 0x40800028 # bge .L_8041E7E0
    mr 3, 31
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x4181000C # bgt .L_8041E7D4
    li 29, 0x0
    .4byte 0x48000010 # b .L_8041E7E0
L_8041E7D4:
    mr 3, 31
    bl fn_80236228
    neg 29, 3
L_8041E7E0:
    cmpwi 29, 0x3e8
    .4byte 0x4080000C # bge .L_8041E7F0
    cmpwi 29, -0x3e8
    .4byte 0x41810040 # bgt .L_8041E82C
L_8041E7F0:
    srawi 0, 29, 31
    lis 3, 0x51ec
    xor 4, 0, 29
    slwi 5, 27, 1
    subf 4, 0, 4
    subi 0, 3, 0x7ae1
    mulhw 4, 0, 4
    add 3, 28, 5
    li 0, 0x0
    srawi 4, 4, 5
    srwi 5, 4, 31
    add 4, 4, 5
    sth 4, 0x224(3)
    sth 0, 0x22c(3)
    .4byte 0x48000014 # b .L_8041E83C
L_8041E82C:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x34
    bl fn_80230FD0
L_8041E83C:
    clrlwi. 0, 30, 24
    .4byte 0x41820014 # beq .L_8041E854
    mr 3, 31
    mr 4, 29
    bl fn_8023619C
    .4byte 0x48000010 # b .L_8041E860
L_8041E854:
    mr 3, 31
    mr 4, 29
    bl fn_802362C4
L_8041E860:
    mr 3, 31
    bl fn_80236100
    lis 4, lbl_80529DEC@ha
    slwi 6, 31, 2
    addi 4, 4, lbl_80529DEC@l
    li 0, 0x1
    add 5, 4, 6
    add 4, 28, 6
    stw 3, 0xe8(5)
    li 3, 0x0
    slw 0, 0, 31
    stw 3, 0x1a8(4)
    clrlwi 0, 0, 24
    lbz 3, 0x28b(28)
    or 0, 3, 0
    stb 0, 0x28b(28)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8041E8B4:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, lbl_80529DEC@ha
    stw 0, 0x34(1)
    li 0, 0x1
    stmw 22, 0x8(1)
    mr 26, 4
    slw 28, 0, 26
    addi 30, 5, lbl_80529DEC@l
    clrlwi 31, 28, 24
    mr 25, 3
    lbz 0, 0x239(30)
    and 3, 0, 31
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x418200DC # beq .L_8041E9D0
    mr 3, 26
    bl fn_80237774
    lis 4, lbl_80529DEC@ha
    slwi 29, 26, 2
    addi 24, 4, lbl_80529DEC@l
    li 22, 0x0
    add 27, 24, 29
    stw 3, 0xd8(27)
    addi 23, 27, 0xd8
    addi 27, 27, 0xd8
L_8041E920:
    cmpw 22, 26
    .4byte 0x4182002C # beq .L_8041E950
    mr 3, 22
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8041E950
    mr 3, 22
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082000C # bne .L_8041E950
    lwz 0, 0x0(23)
    stw 0, 0xd8(24)
L_8041E950:
    addi 22, 22, 0x1
    addi 24, 24, 0x4
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_8041E920
    lbz 5, 0x28a(25)
    clrlwi 4, 28, 24
    lis 3, lbl_8050DB0C@ha
    add 7, 25, 29
    or 4, 5, 4
    li 5, 0x0
    stb 4, 0x28a(25)
    slwi 0, 26, 1
    addi 6, 3, lbl_8050DB0C@l
    mr 3, 26
    stw 5, 0x198(7)
    add 4, 25, 0
    lha 5, 0x74(6)
    lha 0, 0x76(6)
    mullw 5, 5, 0
    addi 0, 5, 0x1e
    sth 0, 0x21a(4)
    lwz 0, 0x1d8(7)
    stw 0, 0x1e8(7)
    lwz 0, 0x0(27)
    stw 0, 0x1d8(7)
    bl fn_80237810
    add 4, 25, 29
    stw 3, 0x1f8(4)
    lbz 0, 0x239(30)
    andc 0, 0, 31
    stb 0, 0x239(30)
    .4byte 0x48000234 # b .L_8041EC00
L_8041E9D0:
    slwi 27, 26, 2
    mr 3, 26
    add 30, 30, 27
    lwzu 29, 0xd8(30)
    bl fn_80237774
    cmpw 29, 3
    .4byte 0x408000FC # bge .L_8041EAE4
    add 29, 25, 27
    lwz 3, 0x198(29)
    addi 0, 3, 0x1
    stw 0, 0x198(29)
    lwz 0, 0x198(29)
    cmpwi 0, 0xa
    .4byte 0x41800088 # blt .L_8041EA8C
    lwz 4, 0x0(30)
    lis 3, lbl_80529DEC@ha
    addi 23, 3, lbl_80529DEC@l
    li 22, 0x0
    addi 0, 4, 0x1
    add 3, 23, 27
    stw 0, 0x0(30)
    addi 24, 3, 0xd8
L_8041EA28:
    cmpw 22, 26
    .4byte 0x4182002C # beq .L_8041EA58
    mr 3, 22
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8041EA58
    mr 3, 22
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082000C # bne .L_8041EA58
    lwz 0, 0x0(24)
    stw 0, 0xd8(23)
L_8041EA58:
    addi 22, 22, 0x1
    addi 23, 23, 0x4
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_8041EA28
    lbz 5, 0x28a(25)
    clrlwi 4, 28, 24
    li 0, 0x0
    mr 3, 26
    or 5, 5, 4
    li 4, 0x9
    stb 5, 0x28a(25)
    stw 0, 0x198(29)
    bl fn_80230EB8
L_8041EA8C:
    lbz 0, 0x291(25)
    cmplwi 0, 0x0
    .4byte 0x4182016C # beq .L_8041EC00
    lis 3, lbl_8050DB0C@ha
    slwi 0, 26, 1
    addi 3, 3, lbl_8050DB0C@l
    add 6, 25, 27
    add 4, 25, 0
    lha 5, 0x74(3)
    lha 0, 0x76(3)
    mr 3, 26
    mullw 5, 5, 0
    addi 0, 5, 0x1e
    sth 0, 0x21a(4)
    lwz 0, 0x1d8(6)
    stw 0, 0x1e8(6)
    lwz 0, 0x0(30)
    stw 0, 0x1d8(6)
    bl fn_80237810
    add 4, 25, 27
    stw 3, 0x1f8(4)
    .4byte 0x48000120 # b .L_8041EC00
L_8041EAE4:
    lwz 29, 0x0(30)
    mr 3, 26
    bl fn_80237774
    cmpw 29, 3
    .4byte 0x40810100 # ble .L_8041EBF4
    lis 3, lbl_80529DEC@ha
    mr 0, 31
    addi 23, 3, lbl_80529DEC@l
    add 29, 25, 27
    lbz 3, 0x24a(23)
    or 0, 3, 0
    stb 0, 0x24a(23)
    lwz 3, 0x198(29)
    addi 0, 3, 0x1
    stw 0, 0x198(29)
    lwz 0, 0x198(29)
    cmpwi 0, 0xa
    .4byte 0x41800074 # blt .L_8041EB9C
    lwz 4, 0x0(30)
    add 3, 23, 27
    li 22, 0x0
    subi 0, 4, 0x1
    addi 24, 3, 0xd8
    stw 0, 0x0(30)
L_8041EB44:
    cmpw 22, 26
    .4byte 0x4182002C # beq .L_8041EB74
    mr 3, 22
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8041EB74
    mr 3, 22
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082000C # bne .L_8041EB74
    lwz 0, 0x0(24)
    stw 0, 0xd8(23)
L_8041EB74:
    addi 22, 22, 0x1
    addi 23, 23, 0x4
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_8041EB44
    lbz 4, 0x28a(25)
    clrlwi 3, 28, 24
    li 0, 0x0
    or 3, 4, 3
    stb 3, 0x28a(25)
    stw 0, 0x198(29)
L_8041EB9C:
    lbz 0, 0x291(25)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_8041EC00
    lis 3, lbl_8050DB0C@ha
    slwi 0, 26, 1
    addi 3, 3, lbl_8050DB0C@l
    add 6, 25, 27
    add 4, 25, 0
    lha 5, 0x74(3)
    lha 0, 0x76(3)
    mr 3, 26
    mullw 5, 5, 0
    addi 0, 5, 0x1e
    sth 0, 0x21a(4)
    lwz 0, 0x1d8(6)
    stw 0, 0x1e8(6)
    lwz 0, 0x0(30)
    stw 0, 0x1d8(6)
    bl fn_80237810
    add 4, 25, 27
    stw 3, 0x1f8(4)
    .4byte 0x48000010 # b .L_8041EC00
L_8041EBF4:
    add 3, 25, 27
    li 0, 0x0
    stw 0, 0x198(3)
L_8041EC00:
    lis 3, lbl_80529DEC@ha
    slwi 23, 26, 2
    addi 0, 3, lbl_80529DEC@l
    add 27, 0, 23
    lwzu 29, 0xe8(27)
    mr 3, 26
    bl fn_80236100
    cmpw 29, 3
    .4byte 0x40800084 # bge .L_8041ECA4
    add 23, 25, 23
    lwz 3, 0x1a8(23)
    addi 0, 3, 0x1
    stw 0, 0x1a8(23)
    lwz 0, 0x1a8(23)
    cmpwi 0, 0x2
    .4byte 0x41800108 # blt .L_8041ED44
    lwz 4, 0x0(27)
    mr 3, 26
    addi 0, 4, 0x2
    stw 0, 0x0(27)
    lwz 29, 0x0(27)
    bl fn_80236100
    cmpw 29, 3
    .4byte 0x41800020 # blt .L_8041EC7C
    mr 3, 26
    bl fn_80236100
    stw 3, 0x0(27)
    mr 3, 26
    li 4, 0x51
    bl fn_80230EB8
    .4byte 0x48000010 # b .L_8041EC88
L_8041EC7C:
    mr 3, 26
    li 4, 0x4
    bl fn_80230EB8
L_8041EC88:
    lbz 4, 0x28b(25)
    clrlwi 3, 28, 24
    li 0, 0x0
    or 3, 4, 3
    stb 3, 0x28b(25)
    stw 0, 0x1a8(23)
    .4byte 0x480000A4 # b .L_8041ED44
L_8041ECA4:
    lwz 29, 0x0(27)
    mr 3, 26
    bl fn_80236100
    cmpw 29, 3
    .4byte 0x40810084 # ble .L_8041ED38
    add 23, 25, 23
    lwz 3, 0x1a8(23)
    addi 0, 3, 0x1
    stw 0, 0x1a8(23)
    lwz 0, 0x1a8(23)
    cmpwi 0, 0x2
    .4byte 0x41800074 # blt .L_8041ED44
    lwz 4, 0x0(27)
    mr 3, 26
    subi 0, 4, 0x2
    stw 0, 0x0(27)
    lwz 29, 0x0(27)
    bl fn_80236100
    cmpw 29, 3
    .4byte 0x41810020 # bgt .L_8041ED10
    mr 3, 26
    bl fn_80236100
    stw 3, 0x0(27)
    mr 3, 26
    li 4, 0x51
    bl fn_80230EB8
    .4byte 0x48000010 # b .L_8041ED1C
L_8041ED10:
    mr 3, 26
    li 4, 0x4e
    bl fn_80230EB8
L_8041ED1C:
    lbz 4, 0x28b(25)
    clrlwi 3, 28, 24
    li 0, 0x0
    or 3, 4, 3
    stb 3, 0x28b(25)
    stw 0, 0x1a8(23)
    .4byte 0x48000010 # b .L_8041ED44
L_8041ED38:
    add 3, 25, 23
    li 0, 0x0
    stw 0, 0x1a8(3)
L_8041ED44:
    slwi 0, 26, 1
    add 23, 25, 0
    lha 4, 0x224(23)
    cmpwi 4, 0x0
    .4byte 0x40810048 # ble .L_8041ED9C
    lha 3, 0x22c(23)
    cmpwi 3, 0x0
    .4byte 0x40820034 # bne .L_8041ED94
    subi 0, 4, 0x1
    lis 4, 0x2
    sth 0, 0x224(23)
    mr 3, 26
    addi 4, 4, 0x34
    bl fn_80230FD0
    lha 0, 0x224(23)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8041ED9C
    li 0, 0xc
    sth 0, 0x22c(23)
    .4byte 0x4800000C # b .L_8041ED9C
L_8041ED94:
    subi 0, 3, 0x1
    sth 0, 0x22c(23)
L_8041ED9C:
    lmw 22, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8041EDB0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stmw 24, 0x30(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 5, lbl_8048D320@ha
    mr 24, 3
    lbz 0, 0x7e(4)
    addi 4, 5, lbl_8048D320@l
    cmplwi 0, 0x0
    .4byte 0x408200E4 # bne .L_8041EEC4
    li 4, 0x0
    bl fn_8041E3B4
    mr 3, 24
    li 4, 0x0
    bl fn_8041E8B4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8041EE14
    mr 3, 24
    bl fn_8041DD24
L_8041EE14:
    mr 3, 24
    li 4, 0x0
    bl fn_8041D18C
    mr 3, 24
    bl fn_8041CC04
    mr 3, 24
    li 4, 0x0
    bl fn_8041A868
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x14c(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8041EE50
    li 0, 0x1
    stb 0, 0x217(3)
L_8041EE50:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4182005C # beq .L_8041EEB8
    li 3, 0x0
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_8041EEB8
    li 3, 0x0
    bl fn_80237774
    cmpwi 3, 0x0
    .4byte 0x4082003C # bne .L_8041EEB8
    lbz 3, 0x292(24)
    extsb 0, 3
    cmpwi 0, 0x2
    .4byte 0x41800020 # blt .L_8041EEAC
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5d(3)
    cmplwi 0, 0x0
    .4byte 0x40820414 # bne .L_8041F2B0
    li 0, 0x1
    stb 0, 0x5d(3)
    .4byte 0x48000408 # b .L_8041F2B0
L_8041EEAC:
    addi 0, 3, 0x1
    stb 0, 0x292(24)
    .4byte 0x480003FC # b .L_8041F2B0
L_8041EEB8:
    li 0, 0x0
    stb 0, 0x292(24)
    .4byte 0x480003F0 # b .L_8041F2B0
L_8041EEC4:
    addi 26, 4, 0xb40
    addi 30, 4, 0xb20
    mr 29, 26
    addi 28, 4, 0xb60
    li 25, 0x0
L_8041EED8:
    mr 3, 24
    mr 4, 25
    bl fn_8041E3B4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 27, 0, 25
    lbz 0, 0x82(3)
    clrlwi 31, 27, 24
    and 3, 0, 31
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820148 # beq .L_8041F050
    mr 3, 24
    mr 4, 25
    bl fn_8041E8B4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 0, 25, 0x14c
    lwz 3, 0x20(3)
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_8041EFB8
    lbz 3, 0x28c(24)
    and. 0, 3, 31
    .4byte 0x40820100 # bne .L_8041F038
    mr 0, 31
    lwz 5, 0x0(30)
    or 0, 3, 0
    lwz 6, 0x4(30)
    stb 0, 0x28c(24)
    lwz 3, 0x18(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000084 # b .L_8041F038
L_8041EFB8:
    lbz 3, 0x28c(24)
    and. 0, 3, 31
    .4byte 0x41820078 # beq .L_8041F038
    andc 0, 3, 31
    lwz 5, 0x0(30)
    stb 0, 0x28c(24)
    lwz 6, 0x4(30)
    lwz 3, 0x18(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_8041F038:
    mr 3, 24
    mr 4, 25
    bl fn_8041D18C
    mr 3, 24
    mr 4, 25
    bl fn_8041C0C0
L_8041F050:
    addi 25, 25, 0x1
    addi 29, 29, 0x8
    cmpwi 25, 0x4
    addi 28, 28, 0x8
    addi 30, 30, 0x8
    .4byte 0x4180FE74 # blt .L_8041EED8
    mr 3, 24
    bl fn_8041B69C
    mr 29, 24
    li 25, 0x0
    li 28, 0x0
L_8041F07C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 25
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820204 # beq .L_8041F298
    mr 3, 24
    mr 4, 25
    li 5, 0x0
    bl fn_80419C38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x20(3)
    lbz 0, 0x214(4)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8041F0D4
    lwz 0, 0x230(4)
    cmpw 25, 0
    .4byte 0x40820010 # bne .L_8041F0D4
    addi 0, 25, 0x217
    li 3, 0x1
    stbx 3, 4, 0
L_8041F0D4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 0, 25, 0x14c
    lwz 3, 0x20(3)
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x41820150 # beq .L_8041F238
    lwz 3, 0x4(24)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(24)
    fctiwz 0, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    stfd 0, 0x8(1)
    lwz 12, 0x3c(12)
    lwz 27, 0xc(1)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(24)
    fctiwz 0, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    stfd 0, 0x10(1)
    lwz 12, 0x3c(12)
    lwz 30, 0x14(1)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(24)
    fsubs 31, 1, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 2, 0x2c(3)
    fctiwz 0, 31
    lfs 1, 0x24(3)
    cmpwi 25, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fsubs 1, 2, 1
    stfd 0, 0x18(1)
    lwz 3, 0x20(3)
    lwz 0, 0x1c(1)
    add 3, 3, 28
    fctiwz 0, 1
    stw 27, 0x1d0(3)
    stw 30, 0x1d4(3)
    stfd 0, 0x20(1)
    stw 0, 0x1d8(3)
    lwz 0, 0x24(1)
    stw 0, 0x1dc(3)
    .4byte 0x4182000C # beq .L_8041F1E0
    cmpwi 25, 0x2
    .4byte 0x40820030 # bne .L_8041F20C
L_8041F1E0:
    lfs 1, 0xf8(29)
    .4byte 0xC0020A7C # lfs f0, lbl_80543A1C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8041F200
    .4byte 0xC0020A80 # lfs f0, lbl_80543A20@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xf8(29)
    .4byte 0x4800009C # b .L_8041F298
L_8041F200:
    .4byte 0xC0020A84 # lfs f0, lbl_80543A24@sda21(r0)
    stfs 0, 0xf8(29)
    .4byte 0x48000090 # b .L_8041F298
L_8041F20C:
    lfs 1, 0xf8(29)
    .4byte 0xC0020A88 # lfs f0, lbl_80543A28@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8041F22C
    .4byte 0xC0020A80 # lfs f0, lbl_80543A20@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xf8(29)
    .4byte 0x48000070 # b .L_8041F298
L_8041F22C:
    .4byte 0xC0020A8C # lfs f0, lbl_80543A2C@sda21(r0)
    stfs 0, 0xf8(29)
    .4byte 0x48000064 # b .L_8041F298
L_8041F238:
    cmpwi 25, 0x0
    .4byte 0x4182000C # beq .L_8041F248
    cmpwi 25, 0x2
    .4byte 0x4082002C # bne .L_8041F270
L_8041F248:
    lfs 1, 0xf8(29)
    .4byte 0xC0020A80 # lfs f0, lbl_80543A20@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8041F264
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0xf8(29)
    .4byte 0x48000038 # b .L_8041F298
L_8041F264:
    fsubs 0, 1, 0
    stfs 0, 0xf8(29)
    .4byte 0x4800002C # b .L_8041F298
L_8041F270:
    lfs 1, 0xf8(29)
    .4byte 0xC0020A90 # lfs f0, lbl_80543A30@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8041F28C
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    stfs 0, 0xf8(29)
    .4byte 0x48000010 # b .L_8041F298
L_8041F28C:
    .4byte 0xC0020A80 # lfs f0, lbl_80543A20@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xf8(29)
L_8041F298:
    addi 25, 25, 0x1
    addi 28, 28, 0x10
    cmpwi 25, 0x4
    addi 29, 29, 0x4
    addi 26, 26, 0x8
    .4byte 0x4180FDD0 # blt .L_8041F07C
L_8041F2B0:
    lbz 0, 0x291(24)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_8041F33C
    li 26, 0x0
    li 25, 0x1
L_8041F2C4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 25, 26
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_8041F2F4
    mr 3, 24
    mr 4, 26
    bl fn_80419570
    mr 3, 24
    mr 4, 26
    bl fn_8041918C
L_8041F2F4:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFC8 # blt .L_8041F2C4
    li 26, 0x0
    li 25, 0x1
L_8041F308:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 25, 26
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820014 # beq .L_8041F330
    mr 3, 24
    mr 4, 26
    li 5, 0x0
    bl fn_80418D08
L_8041F330:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFD0 # blt .L_8041F308
L_8041F33C:
    li 0, 0x0
    stb 0, 0x28a(24)
    stb 0, 0x28b(24)
    stb 0, 0x289(24)
    lwz 3, 0x50(24)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8041F35C
    bl fn_80441490
L_8041F35C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x41820028 # beq .L_8041F390
    lbz 0, 0x298(24)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8041F390
    bl fn_80236890
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8041F390
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xb
    bl fn_801367E0
L_8041F390:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082001C # bne .L_8041F3B8
    lbz 0, 0x298(24)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8041F3CC
    li 0, 0x1
    stb 0, 0x298(24)
    .4byte 0x48000018 # b .L_8041F3CC
L_8041F3B8:
    lbz 0, 0x298(24)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8041F3CC
    li 0, 0x0
    stb 0, 0x298(24)
L_8041F3CC:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x9
    .4byte 0x408200B8 # bne .L_8041F494
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x408200AC # bne .L_8041F494
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    li 4, 0x1
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8041F418
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x217(3)
L_8041F418:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8041F440
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x218(3)
L_8041F440:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8041F468
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x219(3)
L_8041F468:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x3
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820160 # beq .L_8041F5E0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x21a(3)
    .4byte 0x48000150 # b .L_8041F5E0
L_8041F494:
    cmpwi 4, 0x0
    .4byte 0x40820018 # bne .L_8041F4B0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820090 # beq .L_8041F53C
L_8041F4B0:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_8041F4CC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_8041F53C
L_8041F4CC:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_8041F4E8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_8041F53C
L_8041F4E8:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_8041F504
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_8041F53C
L_8041F504:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_8041F520
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_8041F53C
L_8041F520:
    cmpwi 4, 0xa
    .4byte 0x408200BC # bne .L_8041F5E0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x408200A8 # bne .L_8041F5E0
L_8041F53C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    li 4, 0x1
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8041F568
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x217(3)
L_8041F568:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8041F590
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x218(3)
L_8041F590:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8041F5B8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x219(3)
L_8041F5B8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x3
    slw 0, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_8041F5E0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 4, 0x21a(3)
L_8041F5E0:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    lmw 24, 0x30(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8041F5FC:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x9
    .4byte 0x40820010 # bne .L_8041F630
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x418200E0 # beq .L_8041F70C
L_8041F630:
    cmpwi 4, 0x0
    .4byte 0x40820018 # bne .L_8041F64C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200C4 # beq .L_8041F70C
L_8041F64C:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_8041F668
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200A8 # beq .L_8041F70C
L_8041F668:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_8041F684
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182008C # beq .L_8041F70C
L_8041F684:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_8041F6A0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820070 # beq .L_8041F70C
L_8041F6A0:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_8041F6BC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8041F70C
L_8041F6BC:
    cmpwi 4, 0xa
    .4byte 0x4082001C # bne .L_8041F6DC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_8041F6DC
    .4byte 0x48000034 # b .L_8041F70C
L_8041F6DC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x18(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 3, 0x50(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8041F70C
    bl fn_8044148C
L_8041F70C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8041F720:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stmw 26, 0x68(1)
    lis 4, lbl_80529DEC@ha
    mr 26, 3
    addi 3, 4, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x9
    .4byte 0x40820010 # bne .L_8041F784
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x41820468 # beq .L_8041FBE8
L_8041F784:
    cmpwi 4, 0x0
    .4byte 0x40820018 # bne .L_8041F7A0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182044C # beq .L_8041FBE8
L_8041F7A0:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_8041F7BC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820430 # beq .L_8041FBE8
L_8041F7BC:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_8041F7D8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820414 # beq .L_8041FBE8
L_8041F7D8:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_8041F7F4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418203F8 # beq .L_8041FBE8
L_8041F7F4:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_8041F810
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418203DC # beq .L_8041FBE8
L_8041F810:
    cmpwi 4, 0xa
    .4byte 0x4082001C # bne .L_8041F830
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_8041F830
    .4byte 0x480003BC # b .L_8041FBE8
L_8041F830:
    lbz 0, 0x291(26)
    cmplwi 0, 0x0
    .4byte 0x41820390 # beq .L_8041FBC8
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    lis 3, lbl_8050DB0C@ha
    lwz 7, 0x4(5)
    addi 30, 3, lbl_8050DB0C@l
    lwz 6, 0x24(6)
    lis 3, lbl_8050EC80@ha
    lhz 5, 0x4(7)
    mr 29, 26
    lhz 0, 0x6(7)
    mr 28, 26
    xoris 5, 5, 0x8000
    stw 4, 0x38(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8620A58 # lfd f3, lbl_805439F8@sda21(r0)
    stw 5, 0x3c(1)
    addi 31, 3, lbl_8050EC80@l
    lfs 4, 0x858(6)
    li 27, 0x0
    lfd 0, 0x38(1)
    stw 0, 0x44(1)
    fsubs 2, 0, 3
    lfs 5, 0x40(30)
    stw 4, 0x40(1)
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    lfd 1, 0x40(1)
    fdivs 2, 2, 4
    fsubs 1, 1, 3
    fmuls 29, 5, 2
    fdivs 1, 1, 4
    fmuls 28, 5, 1
    fadds 31, 0, 29
    fadds 30, 0, 28
L_8041F8C4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x418202D8 # beq .L_8041FBB4
    mr 3, 27
    bl fn_8022EA0C
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x408002C4 # bge .L_8041FBB4
    lha 0, 0x21a(29)
    cmpwi 0, 0x0
    .4byte 0x40810148 # ble .L_8041FA44
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x41820128 # beq .L_8041FA44
    mr 3, 27
    bl fn_8022EA0C
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    addi 7, 1, 0x28
    li 6, 0x0
    lwz 3, 0x24(5)
    li 5, 0x0
    bl fn_8030C5F0
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 6, 0x4330
    lha 0, 0x4e(30)
    addi 4, 1, 0x18
    lwz 7, 0x4(3)
    xoris 5, 0, 0x8000
    stw 6, 0x58(1)
    lhz 0, 0x6(7)
    lhz 7, 0x4(7)
    xoris 0, 0, 0x8000
    lwz 3, 0x4c(26)
    stw 0, 0x5c(1)
    xoris 7, 7, 0x8000
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    .4byte 0xC9220A58 # lfd f9, lbl_805439F8@sda21(r0)
    lfd 1, 0x58(1)
    stw 7, 0x3c(1)
    fsubs 1, 1, 9
    lfs 2, 0x2c(1)
    stw 6, 0x38(1)
    lfs 6, 0x28(1)
    fdivs 3, 2, 1
    lfd 5, 0x38(1)
    stw 0, 0x54(1)
    .4byte 0xC0E20A94 # lfs f7, lbl_80543A34@sda21(r0)
    stw 6, 0x50(1)
    .4byte 0xC0220A98 # lfs f1, lbl_80543A38@sda21(r0)
    fsubs 5, 5, 9
    lfd 4, 0x50(1)
    stw 7, 0x44(1)
    fmuls 3, 28, 3
    fsubs 4, 4, 9
    .4byte 0xC0420A9C # lfs f2, lbl_80543A3C@sda21(r0)
    fdivs 6, 6, 5
    stw 6, 0x40(1)
    lfd 8, 0x40(1)
    stw 5, 0x4c(1)
    stw 6, 0x48(1)
    lfd 5, 0x48(1)
    stfs 0, 0x18(1)
    fsubs 8, 8, 9
    fmuls 6, 29, 6
    stfs 0, 0x1c(1)
    fsubs 5, 5, 9
    fnmsubs 0, 4, 7, 3
    fnmsubs 26, 8, 7, 6
    stfs 31, 0x20(1)
    fadds 27, 5, 0
    stfs 30, 0x24(1)
    bl fn_800938EC
    lwz 3, 0x4c(26)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    fmr 1, 26
    lwz 3, 0x8(28)
    fmr 2, 27
    lwz 4, 0x4c(26)
    bl fn_8009D340
    li 0, 0x0
    sth 0, 0x234(29)
    .4byte 0x48000174 # b .L_8041FBB4
L_8041FA44:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_8041FA5C
    li 0, 0x1
    .4byte 0x48000014 # b .L_8041FA6C
L_8041FA5C:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_8041FA6C:
    clrlwi. 0, 0, 24
    .4byte 0x40820144 # bne .L_8041FBB4
    mr 3, 27
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x0
    .4byte 0x40810130 # ble .L_8041FBB4
    mr 3, 27
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x12c
    .4byte 0x4080011C # bge .L_8041FBB4
    mr 3, 27
    bl fn_8022EA0C
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    addi 7, 1, 0x28
    li 6, 0x0
    lwz 3, 0x24(5)
    li 5, 0x0
    bl fn_8030C5F0
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 6, 0x4330
    lha 0, 0x4e(30)
    addi 4, 1, 0x8
    lwz 7, 0x4(3)
    xoris 5, 0, 0x8000
    stw 6, 0x38(1)
    lhz 0, 0x6(7)
    lhz 7, 0x4(7)
    xoris 0, 0, 0x8000
    lwz 3, 0x4c(26)
    stw 0, 0x3c(1)
    xoris 7, 7, 0x8000
    .4byte 0xC0020A60 # lfs f0, lbl_80543A00@sda21(r0)
    .4byte 0xC9220A58 # lfd f9, lbl_805439F8@sda21(r0)
    lfd 1, 0x38(1)
    stw 7, 0x54(1)
    fsubs 1, 1, 9
    lfs 2, 0x2c(1)
    stw 6, 0x50(1)
    lfs 6, 0x28(1)
    fdivs 3, 2, 1
    lfd 5, 0x50(1)
    stw 0, 0x44(1)
    .4byte 0xC0E20A94 # lfs f7, lbl_80543A34@sda21(r0)
    stw 6, 0x40(1)
    .4byte 0xC0220A98 # lfs f1, lbl_80543A38@sda21(r0)
    fsubs 5, 5, 9
    lfd 4, 0x40(1)
    stw 7, 0x5c(1)
    fmuls 3, 28, 3
    fsubs 4, 4, 9
    .4byte 0xC0420A9C # lfs f2, lbl_80543A3C@sda21(r0)
    fdivs 6, 6, 5
    stw 6, 0x58(1)
    lfd 8, 0x58(1)
    stw 5, 0x4c(1)
    stw 6, 0x48(1)
    lfd 5, 0x48(1)
    stfs 0, 0x8(1)
    fsubs 8, 8, 9
    fmuls 6, 29, 6
    stfs 0, 0xc(1)
    fsubs 5, 5, 9
    fnmsubs 0, 4, 7, 3
    fnmsubs 27, 8, 7, 6
    stfs 31, 0x10(1)
    fadds 26, 5, 0
    stfs 30, 0x14(1)
    bl fn_800938EC
    lwz 3, 0x4c(26)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    fmr 1, 27
    lwz 3, 0x2c(28)
    fmr 2, 26
    lwz 4, 0x4c(26)
    bl fn_8009D340
L_8041FBB4:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x4
    addi 29, 29, 0x2
    .4byte 0x4180FD00 # blt .L_8041F8C4
L_8041FBC8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220A60 # lfs f1, lbl_80543A00@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(26)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_8041FBE8:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    lmw 26, 0x68(1)
    lwz 0, 0xe4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_8041FC2C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 22, 0x8(1)
    mr 30, 3
    lis 4, lbl_80529DEC@ha
    lis 3, lbl_8048D320@ha
    .4byte 0xC3E20A60 # lfs f31, lbl_80543A00@sda21(r0)
    addi 29, 4, lbl_80529DEC@l
    mr 28, 30
    mr 27, 30
    addi 31, 3, lbl_8048D320@l
    li 22, 0x0
L_8041FC68:
    mr 3, 30
    mr 4, 22
    bl fn_8041E3B4
    mr 3, 22
    bl fn_80237774
    stw 3, 0xd8(29)
    mr 3, 22
    bl fn_80236100
    stw 3, 0xe8(29)
    mr 3, 22
    bl fn_802375B0
    stw 3, 0x108(29)
    li 0, 0x180
    li 3, 0x0
    add 4, 30, 22
    stw 0, 0x188(28)
    li 0, 0xff
    addi 29, 29, 0x4
    stw 3, 0x198(28)
    stw 3, 0x1a8(28)
    stw 3, 0x1b8(28)
    stfs 31, 0xf8(28)
    stfs 31, 0x108(28)
    stfs 31, 0x118(28)
    stfs 31, 0x128(28)
    stfs 31, 0x138(28)
    stfs 31, 0x148(28)
    stfs 31, 0x158(28)
    stfs 31, 0x168(28)
    stb 22, 0x285(4)
    addi 22, 22, 0x1
    cmpwi 22, 0x4
    stb 0, 0x281(4)
    sth 3, 0x23c(27)
    stw 3, 0x1c8(28)
    stw 3, 0x1d8(28)
    stw 3, 0x1e8(28)
    stw 3, 0x1f8(28)
    sth 3, 0x21a(27)
    sth 3, 0x224(27)
    sth 3, 0x22c(27)
    stw 3, 0x208(28)
    addi 28, 28, 0x4
    sth 3, 0x234(27)
    addi 27, 27, 0x2
    .4byte 0x4180FF4C # blt .L_8041FC68
    li 0, -0x1
    sth 0, 0x222(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820314 # bne .L_80420048
    lwz 3, 0x4(30)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3133
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x6e69
    stb 0, 0xb0(3)
    lis 4, 0x5068
    addi 6, 5, 0x3032
    lwz 3, 0x4(30)
    addi 5, 4, 0x7031
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6969
    stb 0, 0xb0(3)
    lis 4, 0x5068
    addi 6, 5, 0x6233
    lwz 3, 0x4(30)
    addi 5, 4, 0x3170
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x398(31)
    stb 0, 0xb0(3)
    lwz 6, 0x39c(31)
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 4, 31, 0x398
    stb 0, 0xb0(3)
    lwz 5, 0x8(4)
    lwz 3, 0x4(30)
    lwz 6, 0xc(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 4, 31, 0x398
    stb 0, 0xb0(3)
    lwz 5, 0x10(4)
    lwz 3, 0x4(30)
    lwz 6, 0x14(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 4, 31, 0x398
    stb 0, 0xb0(3)
    lwz 5, 0x18(4)
    lwz 3, 0x4(30)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820034 # bne .L_8041FE9C
    lwz 3, 0x4(30)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000030 # b .L_8041FEC8
L_8041FE9C:
    lwz 3, 0x4(30)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8041FEC8:
    addi 27, 31, 0xae0
    addi 28, 31, 0xb20
    addi 29, 31, 0xb40
    addi 26, 31, 0xb60
    addi 25, 31, 0xb80
    addi 24, 31, 0xbc0
    addi 23, 31, 0xbe0
    addi 22, 31, 0xc00
    li 31, 0x0
L_8041FEEC:
    lwz 3, 0x18(30)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x18(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(24)
    stb 0, 0xb0(3)
    lwz 6, 0x4(24)
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(23)
    stb 0, 0xb0(3)
    lwz 6, 0x4(23)
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 31, 31, 0x1
    li 0, 0x0
    cmpwi 31, 0x4
    stb 0, 0xb0(3)
    addi 27, 27, 0x8
    addi 28, 28, 0x8
    addi 29, 29, 0x8
    addi 26, 26, 0x8
    addi 25, 25, 0x8
    addi 24, 24, 0x8
    addi 23, 23, 0x8
    addi 22, 22, 0x8
    .4byte 0x4180FEB8 # blt .L_8041FEEC
    mr 3, 30
    li 4, 0x1
    bl fn_8041A868
    .4byte 0x4800000C # b .L_80420050
L_80420048:
    mr 3, 30
    bl fn_8041C67C
L_80420050:
    lbz 0, 0x291(30)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_80420098
    li 29, 0x0
    li 31, 0x1
L_80420064:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 31, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820014 # beq .L_8042008C
    mr 3, 30
    mr 4, 29
    li 5, 0x1
    bl fn_80418D08
L_8042008C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_80420064
L_80420098:
    li 5, 0xf
    lis 3, lbl_80529DEC@ha
    stb 5, 0x28a(30)
    li 4, 0x0
    li 0, -0x2
    addi 3, 3, lbl_80529DEC@l
    stb 5, 0x28b(30)
    stb 5, 0x289(30)
    stb 4, 0x28c(30)
    stb 4, 0x28d(30)
    stb 4, 0x28e(30)
    stw 0, 0x178(30)
    stw 0, 0x17c(30)
    stw 0, 0x180(30)
    stw 0, 0x184(30)
    lwz 4, 0x118(3)
    cmpwi 4, 0x8
    .4byte 0x408000D8 # bge .L_804201B4
    lwz 5, 0x11c(3)
    cmpwi 5, 0x4
    .4byte 0x408000CC # bge .L_804201B4
    cmpwi 4, 0x0
    .4byte 0x4082002C # bne .L_8042011C
    cmpwi 5, 0x0
    .4byte 0x40820024 # bne .L_8042011C
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    clrlwi. 0, 0, 31
    .4byte 0x4182009C # beq .L_804201B4
L_8042011C:
    cmpwi 4, 0x0
    .4byte 0x4082000C # bne .L_8042012C
    cmpwi 5, 0x1
    .4byte 0x4182008C # beq .L_804201B4
L_8042012C:
    cmpwi 4, 0x1
    .4byte 0x4082000C # bne .L_8042013C
    cmpwi 5, 0x3
    .4byte 0x4182007C # beq .L_804201B4
L_8042013C:
    cmpwi 4, 0x2
    .4byte 0x4082000C # bne .L_8042014C
    cmpwi 5, 0x3
    .4byte 0x4182006C # beq .L_804201B4
L_8042014C:
    cmpwi 4, 0x4
    .4byte 0x4082000C # bne .L_8042015C
    cmpwi 5, 0x3
    .4byte 0x4182005C # beq .L_804201B4
L_8042015C:
    cmpwi 4, 0x5
    .4byte 0x4082000C # bne .L_8042016C
    cmpwi 5, 0x1
    .4byte 0x4182004C # beq .L_804201B4
L_8042016C:
    cmpwi 4, 0x5
    .4byte 0x4082000C # bne .L_8042017C
    cmpwi 5, 0x3
    .4byte 0x4182003C # beq .L_804201B4
L_8042017C:
    cmpwi 4, 0x6
    .4byte 0x4082000C # bne .L_8042018C
    cmpwi 5, 0x1
    .4byte 0x4182002C # beq .L_804201B4
L_8042018C:
    cmpwi 4, 0x6
    .4byte 0x4082000C # bne .L_8042019C
    cmpwi 5, 0x3
    .4byte 0x4182001C # beq .L_804201B4
L_8042019C:
    cmpwi 4, 0x7
    .4byte 0x4082000C # bne .L_804201AC
    cmpwi 5, 0x3
    .4byte 0x4182000C # beq .L_804201B4
L_804201AC:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043A608
L_804201B4:
    lwz 3, 0x50(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_804201C4
    bl fn_8044172C
L_804201C4:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 22, 0x8(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

