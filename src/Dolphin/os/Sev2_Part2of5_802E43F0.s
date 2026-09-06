# SEV2 cluster, part 2/5 (Track A byte-match + overview - 980B). Uses
# unfamiliar fn_8016A3AC and calls fn_801902C0 (an unclaimed private
# helper from the earlier SAYA/198KB-gap-neighborhood investigation,
# still not landed - normal scaffolding, not a blocker).
.section extab, "a"
.balign 4
.global etb_8000CFA4
etb_8000CFA4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CFA4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C0D8
eti_8001C0D8:
    .4byte fn_802E43F0
    .4byte 0x000003D4
    .4byte etb_8000CFA4
.size eti_8001C0D8, 12

.text
.balign 4
.global fn_802E43F0

fn_802E43F0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 0, 0x90(3)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(3)
    rlwinm. 0, 0, 0, 28, 28
    psq_st 1, 0xc(1), 0, 0
    stfs 0, 0x14(1)
    .4byte 0x41820014 # beq .L_802E4434
    lfs 1, 0xc(1)
    .4byte 0xC002E260 # lfs f0, lbl_80541200@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_802E4434:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x41820014 # beq .L_802E4450
    lfs 1, 0xc(1)
    .4byte 0xC002E260 # lfs f0, lbl_80541200@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_802E4450:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820014 # beq .L_802E446C
    lfs 1, 0x10(1)
    .4byte 0xC002E264 # lfs f0, lbl_80541204@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(1)
L_802E446C:
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_802E4488
    lfs 1, 0x10(1)
    .4byte 0xC002E264 # lfs f0, lbl_80541204@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(1)
L_802E4488:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820040 # beq .L_802E44D0
    bl fn_801902C0
    lwz 0, 0x2b4(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_802E44D0
    lbz 0, 0x2c0(3)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_802E44D0
    li 0, 0x1
    lfs 0, 0xc(1)
    stb 0, 0x2c0(3)
    lfs 1, 0x10(1)
    stfs 0, 0x2a8(3)
    lfs 0, 0x14(1)
    stfs 1, 0x2ac(3)
    stfs 0, 0x2b0(3)
L_802E44D0:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820040 # beq .L_802E4518
    bl fn_801902C0
    lwz 0, 0x2d0(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_802E4518
    lbz 0, 0x2dc(3)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_802E4518
    li 0, 0x1
    lfs 0, 0xc(1)
    stb 0, 0x2dc(3)
    lfs 1, 0x10(1)
    stfs 0, 0x2c4(3)
    lfs 0, 0x14(1)
    stfs 1, 0x2c8(3)
    stfs 0, 0x2cc(3)
L_802E4518:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820044 # beq .L_802E4564
    bl fn_801902C0
    lwz 0, 0x618(3)
    cmpwi 0, 0x2
    .4byte 0x40800034 # bge .L_802E4564
    mulli 4, 0, 0x14
    lfs 2, 0xc(1)
    lfs 1, 0x10(1)
    lfs 0, 0x14(1)
    addi 4, 4, 0x5f0
    add 4, 3, 4
    stfs 2, 0x0(4)
    stfs 1, 0x4(4)
    stfs 0, 0x8(4)
    lwz 4, 0x618(3)
    addi 0, 4, 0x1
    stw 0, 0x618(3)
L_802E4564:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802E4588
    lbz 3, 0x284(31)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802E45A0
    subi 0, 3, 0x1
    stb 0, 0x284(31)
    .4byte 0x4800001C # b .L_802E45A0
L_802E4588:
    lbz 3, 0x284(31)
    lwz 0, 0x244(31)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802E45A0
    addi 0, 3, 0x1
    stb 0, 0x284(31)
L_802E45A0:
    lbz 30, 0x284(31)
    bl fn_8016A3AC
    stb 30, 0x1f2(3)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802E45C4
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1d1(3)
L_802E45C4:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x41820044 # beq .L_802E4610
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x41820028 # beq .L_802E4604
    lis 3, 0x5
    addi 4, 1, 0x8
    addi 0, 3, 0x78
    stw 0, 0x8(1)
    lwz 3, 0x230(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802E4604:
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1d2(3)
L_802E4610:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802E4628
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1d3(3)
L_802E4628:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802E464C
    lbz 3, 0x285(31)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802E4664
    subi 0, 3, 0x1
    stb 0, 0x285(31)
    .4byte 0x4800001C # b .L_802E4664
L_802E464C:
    lbz 3, 0x285(31)
    lwz 0, 0x258(31)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802E4664
    addi 0, 3, 0x1
    stb 0, 0x285(31)
L_802E4664:
    lbz 30, 0x285(31)
    bl fn_8016A3AC
    stb 30, 0x1f3(3)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802E4694
    bl fn_8016A3AC
    lwz 0, 0x1d8(3)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802E4694
    li 0, 0x100
    stw 0, 0x1d8(3)
L_802E4694:
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802E46AC
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1dc(3)
L_802E46AC:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802E46C4
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1ca(3)
L_802E46C4:
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802E46DC
    li 0, 0x0
    stb 0, 0x286(31)
    .4byte 0x4800001C # b .L_802E46F4
L_802E46DC:
    lbz 3, 0x286(31)
    lwz 0, 0x26c(31)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802E46F4
    addi 0, 3, 0x1
    stb 0, 0x286(31)
L_802E46F4:
    lbz 30, 0x286(31)
    bl fn_8016A3AC
    stb 30, 0x1f4(3)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802E4724
    lbz 3, 0x287(31)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802E473C
    subi 0, 3, 0x1
    stb 0, 0x287(31)
    .4byte 0x4800001C # b .L_802E473C
L_802E4724:
    lbz 3, 0x287(31)
    lwz 0, 0x274(31)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802E473C
    addi 0, 3, 0x1
    stb 0, 0x287(31)
L_802E473C:
    lbz 30, 0x287(31)
    bl fn_8016A3AC
    stb 30, 0x1f5(3)
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802E4768
    bl fn_8016A3AC
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x1cf(3)
    stb 0, 0x1d0(3)
L_802E4768:
    lwz 0, 0x27c(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802E4780
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1dd(3)
L_802E4780:
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802E47A0
    lbz 3, 0x288(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E47A0
    subi 0, 3, 0x1
    stb 0, 0x288(31)
L_802E47A0:
    lbz 31, 0x288(31)
    bl fn_8016A3AC
    stb 31, 0x1ef(3)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

