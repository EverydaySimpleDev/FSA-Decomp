/*
 * fn_80106EE0(this): constructor for the fn_80106C84-class - extracts
 * this->0x234 (4 bits, mode/variant) and this->0x238 (4 bits) from
 * this->0x90, the EXACT fields fn_80106C84's update() dispatches on.
 * Reads a rect (GetRoomConfigRecord()->0xcc/0xd0/0xd4/0xd8) and computes a
 * lerped position via constant lbl_8053C2B4. Branches on this->0x234
 * (0/1/other): modes 0 and 1 play different sound cues (fn_8013CC50,
 * IDs 0x504/0x505 respectively) and store the resulting handle into
 * this->0x240; mode 2 (implicit else) skips the sound. Finally, if
 * this->0x240 is set, ORs a bit into that handle's owner-object flag
 * word at +0xf4 - the SAME field fn_80106C84's update() manipulates,
 * confirming the connection.
 */

.section extab, "a"
.balign 4
.global etb_80005A7C
etb_80005A7C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005A7C, 8

.section extabindex, "a"
.balign 4
.global eti_80011ECC
eti_80011ECC:
    .4byte fn_80106EE0
    .4byte 0x00000134
    .4byte etb_80005A7C
.size eti_80011ECC, 12

.text
.balign 4
.global fn_80106EE0

fn_80106EE0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    bl fn_801F5938
    lwz 0, 0x90(30)
    clrlwi 0, 0, 28
    stw 0, 0x234(30)
    lwz 0, 0x90(30)
    extrwi 0, 0, 4, 24
    stw 0, 0x238(30)
    lwz 31, 0x234(30)
    bl GetRoomConfigRecord
    lwz 6, 0xcc(3)
    cmpwi 31, 0x1
    lwz 5, 0xd0(3)
    lwz 4, 0xd4(3)
    lwz 0, 0xd8(3)
    stw 6, 0x8(1)
    .4byte 0xC0029300 # lfs f0, lbl_8053C2A0@sda21(r0)
    stw 5, 0xc(1)
    lfs 2, 0x8(1)
    stw 4, 0x10(1)
    lfs 1, 0xc(1)
    stw 0, 0x14(1)
    lfs 4, 0x10(1)
    lfs 5, 0x14(1)
    fsubs 2, 2, 4
    .4byte 0xC0629314 # lfs f3, lbl_8053C2B4@sda21(r0)
    fsubs 1, 1, 5
    stfs 0, 0x20(1)
    fmadds 0, 3, 2, 4
    fmadds 1, 3, 1, 5
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    .4byte 0x41820044 # beq .L_80106FB8
    .4byte 0x4080006C # bge .L_80106FE4
    cmpwi 31, 0x0
    .4byte 0x40800008 # bge .L_80106F88
    .4byte 0x48000060 # b .L_80106FE4
L_80106F88:
    lwz 3, 0x4(30)
    addi 4, 1, 0x18
    .4byte 0xC0229304 # lfs f1, lbl_8053C2A4@sda21(r0)
    li 5, 0x505
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x240(30)
    .4byte 0x48000030 # b .L_80106FE4
L_80106FB8:
    lwz 3, 0x4(30)
    addi 4, 1, 0x18
    .4byte 0xC0229304 # lfs f1, lbl_8053C2A4@sda21(r0)
    li 5, 0x504
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x240(30)
L_80106FE4:
    lwz 3, 0x240(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80106FFC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
L_80106FFC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

