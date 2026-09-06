/*
 * RUSA core-update cluster (vtable lbl_804A6270), part 7/7.
 *
 * fn_80212170(this): if this->0x230 bit16 is set AND this->0x2bc
 * (attached-to-platform flag) is nonzero, builds a box from this->0xc/
 * 0x10/0x14 (position) and calls fn_800FE3EC(this->0x4, box, this->0x2c0)
 * - the sibling of the fn_800FDEA0 physics push seen in fn_802110A8
 *   (part 2/7), here used to sync this actor's position when it is being
 *   carried by a moving platform.
 */
.section extab, "a"
.balign 4
.global etb_8000A088
etb_8000A088:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A088, 8

.section extabindex, "a"
.balign 4
.global eti_80017C14
eti_80017C14:
    .4byte fn_80212170
    .4byte 0x00000058
    .4byte etb_8000A088
.size eti_80017C14, 12

.text
.balign 4
.global fn_80212170

fn_80212170:
    stwu 1, -0x20(1)
    mflr 0
    mr 6, 3
    stw 0, 0x24(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820030 # beq .L_802121B8
    lbz 4, 0x2bc(6)
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_802121B8
    psq_l 1, 0xc(6), 0, 0
    addi 5, 1, 0x8
    lfs 0, 0x14(6)
    addi 3, 6, 0x2c0
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x10(1)
    lwz 6, 0x4(6)
    bl fn_800FE3EC
L_802121B8:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

