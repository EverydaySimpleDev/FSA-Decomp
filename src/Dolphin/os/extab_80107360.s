/*
 * fn_80107360(this): a method of a NEW class, first past fn_8010713C's
 * __sinit boundary. Only acts if this->0x274==2 (a state field):
 * adjusts a position (this->0xc/0x10/0x14 vs this->0x28c, constant
 * lbl_8053C308), and if this->0x4==0, plays a sound cue (fn_8013CC50,
 * ID 0x5a). Then unconditionally calls fn_80230FD0 (the confirmed
 * "big" call seen in the 4-player-consensus class's celebration
 * sequence, arg 0x20036 here) and fn_80134DE4 (unidentified, rumble-
 * like). Checkpoints this->0x274 into this->0x278, advances
 * this->0x274 to 3, then a (now-dead, since 0x274 was just set to 3)
 * check against the OLD value 2 calls fn_80230FD0 again with a
 * different arg (0x20035) - transcribed as-is from the retail bytes.
 * Sets this->0x284 to a constant.
 */

.section extab, "a"
.balign 4
.global etb_80005AC0
etb_80005AC0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005AC0, 8

.section extabindex, "a"
.balign 4
.global eti_80011EFC
eti_80011EFC:
    .4byte fn_80107360
    .4byte 0x000000F8
    .4byte etb_80005AC0
.size eti_80011EFC, 12

.text
.balign 4
.global fn_80107360

fn_80107360:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x274(3)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_80107388
    li 3, 0x0
    .4byte 0x480000C0 # b .L_80107444
L_80107388:
    lfs 1, 0x28c(31)
    addi 4, 1, 0x8
    .4byte 0xC0029368 # lfs f0, lbl_8053C308@sda21(r0)
    stfs 1, 0x10(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    psq_st 1, 0x0(4), 0, 0
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(31)
    cmpwi 3, 0x0
    .4byte 0x40820024 # bne .L_801073E0
    .4byte 0xC0229334 # lfs f1, lbl_8053C2D4@sda21(r0)
    li 5, 0x5a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801073E0:
    lis 4, 0x2
    lwz 3, 0x26c(31)
    addi 4, 4, 0x36
    bl fn_80230FD0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    lwz 3, 0x274(31)
    li 0, 0x3
    stw 3, 0x278(31)
    stw 0, 0x274(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_80107428
    .4byte 0x4080001C # bge .L_80107438
    .4byte 0x48000018 # b .L_80107438
    .4byte 0x48000014 # b .L_80107438
L_80107428:
    lis 4, 0x2
    lwz 3, 0x26c(31)
    addi 4, 4, 0x35
    bl fn_80230FD0
L_80107438:
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    li 3, 0x1
    stfs 0, 0x284(31)
L_80107444:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

