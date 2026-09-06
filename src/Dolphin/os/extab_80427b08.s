# 901KB-gap non-actor manager block: 10 function(s), 1,112 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800106E4
etb_800106E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800106E4, 8

.global etb_800106EC
etb_800106EC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800106EC, 8

.global etb_800106F4
etb_800106F4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800106F4, 8

.global etb_800106FC
etb_800106FC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800106FC, 8

.global etb_80010704
etb_80010704:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010704, 8

.global etb_8001070C
etb_8001070C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001070C, 8

.global etb_80010714
etb_80010714:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010714, 8

.global etb_8001071C
etb_8001071C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001071C, 8

.global etb_80010724
etb_80010724:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80010724, 8

.section extabindex, "a"
.balign 4
.global eti_800204F4
eti_800204F4:
    .4byte fn_80427B08
    .4byte 0x00000224
    .4byte etb_800106E4
.size eti_800204F4, 12

.global eti_80020500
eti_80020500:
    .4byte fn_80427D2C
    .4byte 0x00000034
    .4byte etb_800106EC
.size eti_80020500, 12

.global eti_8002050C
eti_8002050C:
    .4byte fn_80427D60
    .4byte 0x00000034
    .4byte etb_800106F4
.size eti_8002050C, 12

.global eti_80020518
eti_80020518:
    .4byte fn_80427D94
    .4byte 0x00000020
    .4byte etb_800106FC
.size eti_80020518, 12

.global eti_80020524
eti_80020524:
    .4byte fn_80427DB4
    .4byte 0x00000020
    .4byte etb_80010704
.size eti_80020524, 12

.global eti_80020530
eti_80020530:
    .4byte fn_80427DD4
    .4byte 0x00000034
    .4byte etb_8001070C
.size eti_80020530, 12

.global eti_8002053C
eti_8002053C:
    .4byte fn_80427E08
    .4byte 0x00000020
    .4byte etb_80010714
.size eti_8002053C, 12

.global eti_80020548
eti_80020548:
    .4byte fn_80427E28
    .4byte 0x00000030
    .4byte etb_8001071C
.size eti_80020548, 12

.global eti_80020554
eti_80020554:
    .4byte fn_80427E58
    .4byte 0x000000DC
    .4byte etb_80010724
.size eti_80020554, 12

.text
.balign 4
.global fn_80427B08
.global fn_80427D2C
.global fn_80427D60
.global fn_80427D94
.global fn_80427DB4
.global fn_80427DD4
.global fn_80427E08
.global fn_80427E28
.global fn_80427E58
.global fn_80427F34

fn_80427B08:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052A440@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8052A440@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427B58
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80427B58:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427B90
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80427B90:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427BC8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80427BC8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427C00
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80427C00:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427C38
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80427C38:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427C70
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80427C70:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427CA8
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80427CA8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427CE0
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80427CE0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80427D18
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80427D18:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427D2C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D92FD # lbz r0, lbl_8053AEBD@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80427D4C
    li 3, 0x0
    .4byte 0x48000008 # b .L_80427D50
L_80427D4C:
    bl fn_80427DD4
L_80427D50:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427D60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D92FD # lbz r0, lbl_8053AEBD@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80427D80
    li 3, 0x0
    .4byte 0x48000008 # b .L_80427D84
L_80427D80:
    bl fn_80427E08
L_80427D84:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427D94:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80427E28
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427DB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80427E58
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427DD4:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    mr 4, 5
    stw 0, 0x14(1)
    mr 5, 6
    mr 6, 7
    bl fn_804281FC
    lwz 0, 0x14(1)
    li 3, 0x1
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427E08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8042829C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427E28:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8042E1F4
    .4byte 0xA08D92FE # lhz r4, lbl_8053AEBE@sda21(r0)
    bl fn_8042E1E4
    bl fn_804283D4
    lwz 0, 0x14(1)
    li 3, 0x1
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427E58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8042E1F4
    bl fn_8042E1FC
    .4byte 0xB06D92FE # sth r3, lbl_8053AEBE@sda21(r0)
    bl fn_8042E1F4
    li 4, 0x1
    bl fn_8042E1E4
    li 0, 0x0
    lis 3, fn_80428134@ha
    .4byte 0x980D92FD # stb r0, lbl_8053AEBD@sda21(r0)
    addi 0, 3, fn_80428134@l
    lis 4, fn_804280C0@ha
    lis 3, fn_804287EC@ha
    stw 0, 0x10(30)
    addi 4, 4, fn_804280C0@l
    addi 0, 3, fn_804287EC@l
    mr 3, 31
    stw 4, 0x14(30)
    stw 0, 0x18(30)
    bl fn_80427F34
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80427EF0
    .4byte 0x906D92F4 # stw r3, lbl_8053AEB4@sda21(r0)
    bl fn_8042840C
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80427EE8
    li 0, 0x1
    li 3, 0x0
    .4byte 0x980D92FD # stb r0, lbl_8053AEBD@sda21(r0)
    .4byte 0x48000038 # b .L_80427F1C
L_80427EE8:
    li 3, 0x1
    .4byte 0x48000030 # b .L_80427F1C
L_80427EF0:
    li 3, 0x0
    bl fn_80427F34
    .4byte 0x906D92F4 # stw r3, lbl_8053AEB4@sda21(r0)
    bl fn_8042840C
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80427F18
    li 0, 0x1
    li 3, 0x0
    .4byte 0x980D92FD # stb r0, lbl_8053AEBD@sda21(r0)
    .4byte 0x48000008 # b .L_80427F1C
L_80427F18:
    li 3, 0x1
L_80427F1C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80427F34:
    cmpwi 3, 0x0
    .4byte 0x41800020 # blt .L_80427F58
    cmpwi 3, 0x4
    .4byte 0x40800018 # bge .L_80427F58
    lis 4, lbl_804B15C0@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_804B15C0@l
    lwzx 3, 3, 0
    blr
L_80427F58:
    li 3, 0x0
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80427B08

