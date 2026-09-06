# Fresh project-wide gap hunt continuation: 22 functions, 13,440 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_800065EC
etb_800065EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800065EC, 8

.global etb_800065F4
etb_800065F4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800065F4, 8

.global etb_800065FC
etb_800065FC:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_800065FC, 8

.global etb_80006604
etb_80006604:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006604, 8

.global etb_8000660C
etb_8000660C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000660C, 8

.global etb_80006614
etb_80006614:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006614, 8

.global etb_8000661C
etb_8000661C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000661C, 8

.global etb_80006624
etb_80006624:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_80006624, 8

.global etb_8000662C
etb_8000662C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000662C, 8

.global etb_80006634
etb_80006634:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_80006634, 8

.global etb_8000663C
etb_8000663C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000663C, 8

.global etb_80006644
etb_80006644:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006644, 8

.global etb_8000664C
etb_8000664C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000664C, 8

.global etb_80006654
etb_80006654:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006654, 8

.global etb_8000665C
etb_8000665C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000665C, 8

.global etb_80006664
etb_80006664:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006664, 8

.global etb_8000666C
etb_8000666C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000666C, 8

.global etb_80006674
etb_80006674:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_80006674, 8

.global etb_8000667C
etb_8000667C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000667C, 8

.global etb_80006684
etb_80006684:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006684, 8

.global etb_8000668C
etb_8000668C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000668C, 8

.section extabindex, "a"
.balign 4
.global eti_80012D30
eti_80012D30:
    .4byte fn_8012A3C8
    .4byte 0x00000224
    .4byte etb_800065EC
.size eti_80012D30, 12

.global eti_80012D3C
eti_80012D3C:
    .4byte fn_8012A5EC
    .4byte 0x000002D4
    .4byte etb_800065F4
.size eti_80012D3C, 12

.global eti_80012D48
eti_80012D48:
    .4byte fn_8012A8C0
    .4byte 0x000000E0
    .4byte etb_800065FC
.size eti_80012D48, 12

.global eti_80012D54
eti_80012D54:
    .4byte fn_8012A9A0
    .4byte 0x000000E4
    .4byte etb_80006604
.size eti_80012D54, 12

.global eti_80012D60
eti_80012D60:
    .4byte fn_8012AA84
    .4byte 0x000005A8
    .4byte etb_8000660C
.size eti_80012D60, 12

.global eti_80012D6C
eti_80012D6C:
    .4byte fn_8012B02C
    .4byte 0x000000AC
    .4byte etb_80006614
.size eti_80012D6C, 12

.global eti_80012D78
eti_80012D78:
    .4byte fn_8012B0D8
    .4byte 0x00000140
    .4byte etb_8000661C
.size eti_80012D78, 12

.global eti_80012D84
eti_80012D84:
    .4byte fn_8012B218
    .4byte 0x00000A28
    .4byte etb_80006624
.size eti_80012D84, 12

.global eti_80012D90
eti_80012D90:
    .4byte fn_8012BC40
    .4byte 0x000001EC
    .4byte etb_8000662C
.size eti_80012D90, 12

.global eti_80012D9C
eti_80012D9C:
    .4byte fn_8012BE2C
    .4byte 0x00000204
    .4byte etb_80006634
.size eti_80012D9C, 12

.global eti_80012DA8
eti_80012DA8:
    .4byte fn_8012C030
    .4byte 0x00000140
    .4byte etb_8000663C
.size eti_80012DA8, 12

.global eti_80012DB4
eti_80012DB4:
    .4byte fn_8012C170
    .4byte 0x000001C4
    .4byte etb_80006644
.size eti_80012DB4, 12

.global eti_80012DC0
eti_80012DC0:
    .4byte fn_8012C334
    .4byte 0x000001C4
    .4byte etb_8000664C
.size eti_80012DC0, 12

.global eti_80012DCC
eti_80012DCC:
    .4byte fn_8012C4F8
    .4byte 0x00000140
    .4byte etb_80006654
.size eti_80012DCC, 12

.global eti_80012DD8
eti_80012DD8:
    .4byte fn_8012C638
    .4byte 0x00000104
    .4byte etb_8000665C
.size eti_80012DD8, 12

.global eti_80012DE4
eti_80012DE4:
    .4byte fn_8012C73C
    .4byte 0x000001D4
    .4byte etb_80006664
.size eti_80012DE4, 12

.global eti_80012DF0
eti_80012DF0:
    .4byte fn_8012C914
    .4byte 0x000002D0
    .4byte etb_8000666C
.size eti_80012DF0, 12

.global eti_80012DFC
eti_80012DFC:
    .4byte fn_8012CBE4
    .4byte 0x00000378
    .4byte etb_80006674
.size eti_80012DFC, 12

.global eti_80012E08
eti_80012E08:
    .4byte fn_8012CF5C
    .4byte 0x0000078C
    .4byte etb_8000667C
.size eti_80012E08, 12

.global eti_80012E14
eti_80012E14:
    .4byte fn_8012D6E8
    .4byte 0x000000EC
    .4byte etb_80006684
.size eti_80012E14, 12

.global eti_80012E20
eti_80012E20:
    .4byte fn_8012D7D4
    .4byte 0x00000074
    .4byte etb_8000668C
.size eti_80012E20, 12

.text
.balign 4
.global fn_8012A3C8
.global fn_8012A5EC
.global fn_8012A8C0
.global fn_8012A9A0
.global fn_8012AA84
.global fn_8012B02C
.global fn_8012B0D8
.global fn_8012B218
.global fn_8012BC40
.global fn_8012BE2C
.global fn_8012C030
.global fn_8012C170
.global fn_8012C334
.global fn_8012C4F8
.global fn_8012C638
.global fn_8012C73C
.global fn_8012C910
.global fn_8012C914
.global fn_8012CBE4
.global fn_8012CF5C
.global fn_8012D6E8
.global fn_8012D7D4

fn_8012A3C8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BD690@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BD690@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A418
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
L_8012A418:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A450
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
L_8012A450:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A488
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
L_8012A488:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A4C0
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
L_8012A4C0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A4F8
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
L_8012A4F8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A530
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
L_8012A530:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A568
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
L_8012A568:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A5A0
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
L_8012A5A0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012A5D8
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
L_8012A5D8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012A5EC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x230(3)
    cmplwi 0, 0x9
    .4byte 0x4181018C # bgt .L_8012A78C
    lis 4, jumptable_8049E7C4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_8049E7C4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    .4byte 0xC0429BC8 # lfs f2, lbl_8053CB68@sda21(r0)
    lfs 0, 0x3f4(3)
    .4byte 0xC0229BCC # lfs f1, lbl_8053CB6C@sda21(r0)
    fadds 2, 2, 0
    .4byte 0xC0029BD0 # lfs f0, lbl_8053CB70@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x23c(3)
    stfs 0, 0x248(3)
    .4byte 0x48000150 # b .L_8012A78C
    .4byte 0xC0229BD4 # lfs f1, lbl_8053CB74@sda21(r0)
    lfs 0, 0x3f4(3)
    lfs 2, 0x23c(3)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810014 # ble .L_8012A668
    lfs 0, 0x244(3)
    fsubs 0, 2, 0
    stfs 0, 0x23c(3)
    .4byte 0x48000008 # b .L_8012A66C
L_8012A668:
    stfs 0, 0x23c(3)
L_8012A66C:
    lfs 1, 0x248(3)
    .4byte 0xC0029BD8 # lfs f0, lbl_8053CB78@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8012A68C
    lfs 0, 0x24c(3)
    fsubs 0, 1, 0
    stfs 0, 0x248(3)
    .4byte 0x48000104 # b .L_8012A78C
L_8012A68C:
    stfs 0, 0x248(3)
    .4byte 0x480000FC # b .L_8012A78C
    .4byte 0xC0229BDC # lfs f1, lbl_8053CB7C@sda21(r0)
    lfs 0, 0x3f4(3)
    lfs 2, 0x23c(3)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8012A6BC
    lfs 0, 0x244(3)
    fsubs 0, 2, 0
    stfs 0, 0x23c(3)
    .4byte 0x48000008 # b .L_8012A6C0
L_8012A6BC:
    stfs 0, 0x23c(3)
L_8012A6C0:
    lfs 1, 0x248(3)
    .4byte 0xC0029BE0 # lfs f0, lbl_8053CB80@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8012A6E0
    lfs 0, 0x24c(3)
    fsubs 0, 1, 0
    stfs 0, 0x248(3)
    .4byte 0x480000B0 # b .L_8012A78C
L_8012A6E0:
    stfs 0, 0x248(3)
    .4byte 0x480000A8 # b .L_8012A78C
    .4byte 0xC0229BD4 # lfs f1, lbl_8053CB74@sda21(r0)
    lfs 0, 0x3f4(3)
    lfs 2, 0x23c(3)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810014 # ble .L_8012A710
    lfs 0, 0x244(3)
    fsubs 0, 2, 0
    stfs 0, 0x23c(3)
    .4byte 0x48000008 # b .L_8012A714
L_8012A710:
    stfs 0, 0x23c(3)
L_8012A714:
    lfs 1, 0x248(3)
    .4byte 0xC0029BD8 # lfs f0, lbl_8053CB78@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8012A734
    lfs 0, 0x24c(3)
    fsubs 0, 1, 0
    stfs 0, 0x248(3)
    .4byte 0x4800005C # b .L_8012A78C
L_8012A734:
    stfs 0, 0x248(3)
    .4byte 0x48000054 # b .L_8012A78C
    .4byte 0xC0229BE4 # lfs f1, lbl_8053CB84@sda21(r0)
    lfs 0, 0x3f4(3)
    lfs 2, 0x23c(3)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810014 # ble .L_8012A764
    lfs 0, 0x244(3)
    fsubs 0, 2, 0
    stfs 0, 0x23c(3)
    .4byte 0x48000008 # b .L_8012A768
L_8012A764:
    stfs 0, 0x23c(3)
L_8012A768:
    lfs 1, 0x248(3)
    .4byte 0xC0029BE8 # lfs f0, lbl_8053CB88@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8012A788
    lfs 0, 0x24c(3)
    fsubs 0, 1, 0
    stfs 0, 0x248(3)
    .4byte 0x48000008 # b .L_8012A78C
L_8012A788:
    stfs 0, 0x248(3)
L_8012A78C:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    lfs 3, 0x238(3)
    lfs 2, 0x3fc(3)
    lfs 1, 0x23c(3)
    lfs 0, 0x400(3)
    fadds 4, 3, 2
    lfs 3, 0x248(3)
    fadds 2, 1, 0
    lwz 4, 0x24(4)
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    stb 5, 0x179(4)
    fsubs 5, 2, 3
    lfs 0, 0x3fc(3)
    fadds 2, 3, 2
    fcmpu cr0, 1, 0
    .4byte 0x40820024 # bne .L_8012A7F0
    lfs 0, 0x400(3)
    fcmpu cr0, 1, 0
    .4byte 0x40820018 # bne .L_8012A7F0
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8012A7F0
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_8012A834
L_8012A7F0:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lbz 0, 0x840(4)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_8012A86C
    li 0, 0x1
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    stb 0, 0x840(4)
    .4byte 0xC0029BF4 # lfs f0, lbl_8053CB94@sda21(r0)
    stfs 4, 0x844(4)
    stfs 5, 0x848(4)
    stfs 4, 0x84c(4)
    stfs 2, 0x850(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
    .4byte 0x4800003C # b .L_8012A86C
L_8012A834:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 6, 0x24(4)
    lbz 0, 0x7f5(6)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8012A86C
    stb 5, 0x7f4(6)
    li 4, 0x5
    li 0, 0x0
    stw 4, 0x7f8(6)
    stfs 4, 0x808(6)
    stfs 5, 0x80c(6)
    stfs 4, 0x810(6)
    stfs 2, 0x814(6)
    stb 0, 0x7f6(6)
L_8012A86C:
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 3, 3, 0x238
    .4byte 0xC0029BEC # lfs f0, lbl_8053CB8C@sda21(r0)
    addi 4, 1, 0x8
    lwz 5, 0x24(5)
    lfs 1, 0x10(5)
    fneg 1, 1
    stfs 1, 0x8(1)
    lfs 1, 0x20(5)
    fneg 1, 1
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    bl PSVECDistance
    .4byte 0xC0029BF8 # lfs f0, lbl_8053CB98@sda21(r0)
    fcmpo cr0, 1, 0
    mfcr 0
    srwi 3, 0, 31
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8012A8C0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 25, 0x34(1)
    mr 25, 3
    li 26, 0x0
    mr 27, 25
    lfs 1, 0x60(3)
    stfs 1, 0x20(1)
    lfs 0, 0x64(3)
    stfs 1, 0x10(1)
    stfs 0, 0x24(1)
    lwz 30, 0x10(1)
    lfs 1, 0x68(3)
    stfs 0, 0x14(1)
    stfs 1, 0x28(1)
    lwz 31, 0x14(1)
    lfs 0, 0x6c(3)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 28, 0x18(1)
    lwz 29, 0x1c(1)
    stfs 0, 0x2c(1)
    stw 28, 0x8(1)
    stw 29, 0xc(1)
L_8012A924:
    lfs 0, 0x20(1)
    addi 3, 1, 0x20
    lfs 4, 0x25c(27)
    lfs 1, 0x28(1)
    fadds 3, 0, 4
    lfs 2, 0x24(1)
    lfs 0, 0x2c(1)
    fadds 1, 1, 4
    stfs 3, 0x20(1)
    lfs 3, 0x260(27)
    fadds 2, 2, 3
    stfs 1, 0x28(1)
    fadds 0, 0, 3
    stfs 2, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(25)
    lwz 5, 0x198(25)
    bl fn_80239914
    addi 26, 26, 0x1
    stw 30, 0x20(1)
    cmpwi 26, 0x6
    addi 27, 27, 0xc
    stw 31, 0x24(1)
    stw 28, 0x28(1)
    stw 29, 0x2c(1)
    .4byte 0x4180FF9C # blt .L_8012A924
    lmw 25, 0x34(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8012A9A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8012A5EC
    lbz 0, 0x404(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8012AA08
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_8012AA70
    li 3, 0x0
    bl fn_80388EEC
    li 3, 0x28
    li 0, 0x1
    stw 3, 0x250(31)
    stb 0, 0x404(31)
    .4byte 0x4800006C # b .L_8012AA70
L_8012AA08:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_8012AA70
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 3, 0x1
    li 0, 0x0
    lwz 4, 0x24(4)
    stb 3, 0x17a(4)
    stb 0, 0x179(4)
    bl GetRoomConfigRecord
    li 4, 0x0
    li 5, 0x0
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xd
    li 5, 0x0
    bl fn_80136798
    bl fn_80119DD0
    li 4, 0x0
    li 5, 0x1
    bl fn_80119468
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
L_8012AA70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012AA84:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    mr 31, 3
    lwz 0, 0x250(3)
    cmpwi 0, 0x514
    .4byte 0x418001B4 # blt .L_8012AC5C
    .4byte 0x40820194 # bne .L_8012AC40
    .4byte 0xC0429BFC # lfs f2, lbl_8053CB9C@sda21(r0)
    addi 4, 1, 0x8
    lfs 0, 0x3f4(31)
    li 5, 0x460
    lfs 1, 0x3f8(31)
    li 6, 0x0
    fadds 2, 2, 0
    .4byte 0xC0029BEC # lfs f0, lbl_8053CB8C@sda21(r0)
    stfs 1, 0x8(1)
    li 7, -0x1
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    li 8, 0x0
    stfs 2, 0xc(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x10(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC0429BFC # lfs f2, lbl_8053CB9C@sda21(r0)
    addi 4, 1, 0x14
    lfs 0, 0x3f4(31)
    li 5, 0x46f
    lfs 1, 0x3f8(31)
    li 6, 0x0
    fadds 2, 2, 0
    .4byte 0xC0029BEC # lfs f0, lbl_8053CB8C@sda21(r0)
    stfs 1, 0x14(1)
    li 7, 0x0
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    li 8, 0x0
    stfs 2, 0x18(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC0429BFC # lfs f2, lbl_8053CB9C@sda21(r0)
    addi 4, 1, 0x20
    lfs 0, 0x3f4(31)
    li 5, 0x470
    lfs 1, 0x3f8(31)
    li 6, 0x0
    fadds 2, 2, 0
    .4byte 0xC0029BEC # lfs f0, lbl_8053CB8C@sda21(r0)
    stfs 1, 0x20(1)
    li 7, 0x1
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    li 8, 0x0
    stfs 2, 0x24(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x28(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC0429BFC # lfs f2, lbl_8053CB9C@sda21(r0)
    addi 4, 1, 0x2c
    lfs 0, 0x3f4(31)
    li 5, 0x46e
    lfs 1, 0x3f8(31)
    li 6, 0x0
    fadds 2, 2, 0
    .4byte 0xC0029BEC # lfs f0, lbl_8053CB8C@sda21(r0)
    stfs 1, 0x2c(1)
    li 7, 0x1
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    li 8, 0x0
    stfs 2, 0x30(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x34(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x238
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    li 5, 0x471
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x238
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    li 5, 0x472
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x63
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0x2c0(31)
    .4byte 0x48000014 # b .L_8012AC50
L_8012AC40:
    cmpwi 0, 0x51d
    .4byte 0x4082000C # bne .L_8012AC50
    li 0, 0xb
    stw 0, 0x2c0(31)
L_8012AC50:
    mr 3, 31
    bl fn_8012A5EC
    .4byte 0x480003B8 # b .L_8012B010
L_8012AC5C:
    cmpwi 0, 0x190
    .4byte 0x40810158 # ble .L_8012ADB8
    cmpwi 0, 0x2da
    .4byte 0x4180006C # blt .L_8012ACD4
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8012ACA0
    lwz 3, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2c0(31)
    lwz 0, 0x2c0(31)
    cmpwi 0, 0x6
    .4byte 0x4180000C # blt .L_8012AC98
    li 0, 0x0
    stw 0, 0x2c0(31)
L_8012AC98:
    li 0, 0x9
    stw 0, 0x2bc(31)
L_8012ACA0:
    lwz 0, 0x250(31)
    cmpwi 0, 0x2da
    .4byte 0x40820104 # bne .L_8012ADAC
    li 0, 0xe
    lis 4, 0x5
    stw 0, 0x2c0(31)
    li 0, 0x9
    mr 3, 31
    addi 4, 4, 0x64
    stw 0, 0x2bc(31)
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000DC # b .L_8012ADAC
L_8012ACD4:
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8012AD08
    lwz 3, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2c0(31)
    lwz 0, 0x2c0(31)
    cmpwi 0, 0x14
    .4byte 0x4180000C # blt .L_8012AD00
    li 0, 0xe
    stw 0, 0x2c0(31)
L_8012AD00:
    li 0, 0x9
    stw 0, 0x2bc(31)
L_8012AD08:
    lwz 3, 0x250(31)
    lis 0, 0x4330
    stw 0, 0x50(1)
    subi 0, 3, 0x190
    .4byte 0xC8429C18 # lfd f2, lbl_8053CBB8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC8029C08 # lfd f0, lbl_8053CBA8@sda21(r0)
    stw 0, 0x54(1)
    .4byte 0xC8629C00 # lfd f3, lbl_8053CBA0@sda21(r0)
    lfd 1, 0x50(1)
    fsub 1, 1, 2
    fdiv 0, 1, 0
    fsub 31, 3, 0
    fctiwz 0, 31
    stfd 0, 0x58(1)
    lwz 3, 0x5c(1)
    bl fn_801CD664
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x64(1)
    fctiwz 0, 31
    .4byte 0xC8429C18 # lfd f2, lbl_8053CBB8@sda21(r0)
    stw 0, 0x60(1)
    lfd 1, 0x60(1)
    stfd 0, 0x68(1)
    fsubs 0, 1, 2
    lwz 3, 0x6c(1)
    stfs 0, 0x3fc(31)
    bl fn_801CD664
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x74(1)
    li 4, 0x3
    .4byte 0xC8229C18 # lfd f1, lbl_8053CBB8@sda21(r0)
    li 5, 0x0
    stw 0, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x400(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134DE4
L_8012ADAC:
    mr 3, 31
    bl fn_8012A5EC
    .4byte 0x4800025C # b .L_8012B010
L_8012ADB8:
    cmpwi 0, 0x84
    .4byte 0x4081003C # ble .L_8012ADF8
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x40820094 # bne .L_8012AE5C
    lwz 3, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2c0(31)
    lwz 0, 0x2c0(31)
    cmpwi 0, 0x14
    .4byte 0x4180000C # blt .L_8012ADEC
    li 0, 0xe
    stw 0, 0x2c0(31)
L_8012ADEC:
    li 0, 0x9
    stw 0, 0x2bc(31)
    .4byte 0x48000068 # b .L_8012AE5C
L_8012ADF8:
    cmpwi 0, 0x7b
    .4byte 0x40810018 # ble .L_8012AE14
    li 3, 0x14
    li 0, 0x0
    stw 3, 0x2c0(31)
    stw 0, 0x2bc(31)
    .4byte 0x4800004C # b .L_8012AE5C
L_8012AE14:
    cmpwi 0, 0x3f
    .4byte 0x40810018 # ble .L_8012AE30
    li 3, 0x18
    li 0, 0x0
    stw 3, 0x2c0(31)
    stw 0, 0x2bc(31)
    .4byte 0x48000030 # b .L_8012AE5C
L_8012AE30:
    cmpwi 0, 0x3c
    .4byte 0x40810018 # ble .L_8012AE4C
    li 3, 0x19
    li 0, 0x0
    stw 3, 0x2c0(31)
    stw 0, 0x2bc(31)
    .4byte 0x48000014 # b .L_8012AE5C
L_8012AE4C:
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x2c0(31)
    stw 0, 0x2bc(31)
L_8012AE5C:
    lwz 0, 0x250(31)
    cmpwi 0, 0x190
    .4byte 0x40820038 # bne .L_8012AE9C
    .4byte 0xC0029BEC # lfs f0, lbl_8053CB8C@sda21(r0)
    stfs 0, 0x400(31)
    stfs 0, 0x3fc(31)
    bl GetRoomConfigRecord
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    li 3, 0x13
    li 0, 0x4
    stw 3, 0x2c0(31)
    stw 0, 0x2bc(31)
    .4byte 0x48000118 # b .L_8012AFB0
L_8012AE9C:
    cmpwi 0, 0x1e
    .4byte 0x40820028 # bne .L_8012AEC8
    .4byte 0xC0029BD0 # lfs f0, lbl_8053CB70@sda21(r0)
    .4byte 0xC0429BC8 # lfs f2, lbl_8053CB68@sda21(r0)
    stfs 0, 0x248(31)
    .4byte 0xC0029BCC # lfs f0, lbl_8053CB6C@sda21(r0)
    lfs 1, 0x3f4(31)
    fadds 1, 2, 1
    fsubs 0, 1, 0
    stfs 0, 0x23c(31)
    .4byte 0x480000EC # b .L_8012AFB0
L_8012AEC8:
    cmpwi 0, 0x0
    .4byte 0x408200E4 # bne .L_8012AFB0
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0x68(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    .4byte 0xC8A29C18 # lfd f5, lbl_8053CBB8@sda21(r0)
    stw 0, 0x6c(1)
    xoris 0, 5, 0x8000
    .4byte 0xC0629C10 # lfs f3, lbl_8053CBB0@sda21(r0)
    lfd 0, 0x68(1)
    stw 0, 0x74(1)
    fsubs 2, 0, 5
    .4byte 0xC0029C14 # lfs f0, lbl_8053CBB4@sda21(r0)
    stw 4, 0x70(1)
    lwz 4, 0x4(31)
    fmuls 2, 2, 3
    lfd 4, 0x70(1)
    stfs 1, 0x4c(1)
    fsubs 1, 4, 5
    lwz 5, 0x198(31)
    fadds 0, 2, 0
    stfs 2, 0x48(1)
    fmuls 1, 1, 3
    stfs 0, 0x48(1)
    stfs 1, 0x44(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    lis 3, lbl_804650C8@ha
    lfs 0, 0x4c(1)
    addi 6, 1, 0x38
    psq_l 1, 0x44(1), 0, 0
    addi 4, 3, lbl_804650C8@l
    stfs 0, 0x40(1)
    li 3, 0x0
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    lwz 0, 0x254(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_8012B010
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    bl fn_8011921C
    bl fn_80118454
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
L_8012AFB0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    lfs 1, 0x23c(31)
    lfs 0, 0x248(31)
    lfs 4, 0x238(31)
    lwz 3, 0x24(3)
    fadds 3, 1, 0
    fsubs 2, 1, 0
    stb 4, 0x179(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8012B010
    stb 4, 0x840(3)
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    stfs 4, 0x844(3)
    .4byte 0xC0029BF4 # lfs f0, lbl_8053CB94@sda21(r0)
    stfs 2, 0x848(3)
    stfs 4, 0x84c(3)
    stfs 3, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_8012B010:
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8012B02C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8012A5EC
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_8012B0C4
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    li 0, 0x604
    .4byte 0xC0629BE4 # lfs f3, lbl_8053CB84@sda21(r0)
    stw 0, 0x250(31)
    .4byte 0xC0429C20 # lfs f2, lbl_8053CBC0@sda21(r0)
    lwz 3, 0x230(31)
    .4byte 0xC0029BE8 # lfs f0, lbl_8053CB88@sda21(r0)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
    lfs 1, 0x3f4(31)
    lfs 4, 0x23c(31)
    fadds 1, 3, 1
    fsubs 1, 4, 1
    fdivs 1, 1, 2
    stfs 1, 0x244(31)
    lfs 1, 0x248(31)
    fsubs 0, 1, 0
    fdivs 0, 0, 2
    stfs 0, 0x24c(31)
L_8012B0C4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012B0D8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    bl fn_8012A5EC
    .4byte 0xC0229BD4 # lfs f1, lbl_8053CB74@sda21(r0)
    lfs 0, 0x3f4(31)
    lfs 2, 0x23c(31)
    fadds 0, 1, 0
    fcmpu cr0, 2, 0
    .4byte 0x40820100 # bne .L_8012B204
    .4byte 0xC0229BD8 # lfs f1, lbl_8053CB78@sda21(r0)
    lfs 0, 0x248(31)
    fcmpu cr0, 1, 0
    .4byte 0x408200F0 # bne .L_8012B204
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_8012B204
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0x28(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    .4byte 0xC8A29C18 # lfd f5, lbl_8053CBB8@sda21(r0)
    stw 0, 0x2c(1)
    xoris 0, 5, 0x8000
    .4byte 0xC0629C10 # lfs f3, lbl_8053CBB0@sda21(r0)
    lfd 0, 0x28(1)
    stw 0, 0x24(1)
    fsubs 2, 0, 5
    .4byte 0xC0029C14 # lfs f0, lbl_8053CBB4@sda21(r0)
    stw 4, 0x20(1)
    lwz 4, 0x4(31)
    fmuls 2, 2, 3
    lfd 4, 0x20(1)
    stfs 1, 0x1c(1)
    fsubs 1, 4, 5
    lwz 5, 0x198(31)
    fadds 0, 2, 0
    stfs 2, 0x18(1)
    fmuls 1, 1, 3
    stfs 0, 0x18(1)
    stfs 1, 0x14(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    lis 3, lbl_804650C8@ha
    lfs 0, 0x1c(1)
    addi 6, 1, 0x8
    psq_l 1, 0x14(1), 0, 0
    addi 4, 3, lbl_804650C8@l
    stfs 0, 0x10(1)
    li 3, 0x0
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    lwz 0, 0x254(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8012B204
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    bl fn_8011921C
    bl fn_80118454
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
L_8012B204:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8012B218:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stfd 30, 0xe0(1)
    psq_st 30, 0xe8(1), 0, 0
    stmw 25, 0xc4(1)
    .4byte 0x880D8EF1 # lbz r0, lbl_8053AAB1@sda21(r0)
    mr 31, 3
    extsb. 0, 0
    .4byte 0x40820090 # bne .L_8012B2D4
    .4byte 0xC0A29C28 # lfs f5, lbl_8053CBC8@sda21(r0)
    lis 3, lbl_804BD7C0@ha
    .4byte 0xC0429C34 # lfs f2, lbl_8053CBD4@sda21(r0)
    li 0, 0x1
    .4byte 0xC0C29C24 # lfs f6, lbl_8053CBC4@sda21(r0)
    addi 3, 3, lbl_804BD7C0@l
    .4byte 0xC0629C30 # lfs f3, lbl_8053CBD0@sda21(r0)
    .4byte 0xC0829C2C # lfs f4, lbl_8053CBCC@sda21(r0)
    .4byte 0xC0229C38 # lfs f1, lbl_8053CBD8@sda21(r0)
    .4byte 0xC0029C3C # lfs f0, lbl_8053CBDC@sda21(r0)
    stfs 6, 0x8c(1)
    stfs 5, 0x90(1)
    psq_l 6, 0x8c(1), 0, 0
    stfs 3, 0x80(1)
    stfs 2, 0x84(1)
    psq_l 3, 0x80(1), 0, 0
    stfs 1, 0x74(1)
    stfs 5, 0x78(1)
    psq_l 1, 0x74(1), 0, 0
    stfs 0, 0x68(1)
    stfs 2, 0x6c(1)
    psq_l 0, 0x68(1), 0, 0
    stfs 4, 0x94(1)
    psq_st 6, 0x0(3), 0, 0
    stfs 4, 0x8(3)
    stfs 4, 0x88(1)
    psq_st 3, 0xc(3), 0, 0
    stfs 4, 0x14(3)
    stfs 4, 0x7c(1)
    psq_st 1, 0x18(3), 0, 0
    stfs 4, 0x20(3)
    stfs 4, 0x70(1)
    psq_st 0, 0x24(3), 0, 0
    stfs 4, 0x2c(3)
    .4byte 0x980D8EF1 # stb r0, lbl_8053AAB1@sda21(r0)
L_8012B2D4:
    mr 3, 31
    bl fn_8012A5EC
    lwz 4, 0x234(31)
    cmpwi 4, 0x2
    .4byte 0x418201AC # beq .L_8012B490
    .4byte 0x40800014 # bge .L_8012B2FC
    cmpwi 4, 0x0
    .4byte 0x4182001C # beq .L_8012B30C
    .4byte 0x408000C4 # bge .L_8012B3B8
    .4byte 0x480008A4 # b .L_8012BB9C
L_8012B2FC:
    cmpwi 4, 0x4
    .4byte 0x41820570 # beq .L_8012B870
    .4byte 0x40800898 # bge .L_8012BB9C
    .4byte 0x48000318 # b .L_8012B620
L_8012B30C:
    psq_l 2, 0x2c8(31), 0, 0
    psq_l 1, 0x2f8(31), 0, 0
    .4byte 0xC0029C2C # lfs f0, lbl_8053CBCC@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x2c8(31), 0, 0
    psq_l 2, 0x2d0(31), 1, 0
    psq_l 1, 0x300(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2d0(31), 1, 0
    psq_l 2, 0x2d4(31), 0, 0
    psq_l 1, 0x304(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2d4(31), 0, 0
    psq_l 2, 0x2dc(31), 1, 0
    psq_l 1, 0x30c(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2dc(31), 1, 0
    psq_l 2, 0x2e0(31), 0, 0
    psq_l 1, 0x310(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2e0(31), 0, 0
    psq_l 2, 0x2e8(31), 1, 0
    psq_l 1, 0x318(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2e8(31), 1, 0
    psq_l 2, 0x2ec(31), 0, 0
    psq_l 1, 0x31c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2ec(31), 0, 0
    psq_l 2, 0x2f4(31), 1, 0
    psq_l 1, 0x324(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2f4(31), 1, 0
    lfs 1, 0x2d0(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820800 # bne .L_8012BB9C
    lwz 3, 0x234(31)
    li 0, 0x3c
    addi 3, 3, 0x1
    stw 3, 0x234(31)
    stw 0, 0x250(31)
    .4byte 0x480007E8 # b .L_8012BB9C
L_8012B3B8:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x408207DC # bne .L_8012BB9C
    lis 3, lbl_804BD7C0@ha
    addi 4, 4, 0x1
    li 0, 0x2
    mr 5, 31
    addi 3, 3, lbl_804BD7C0@l
    stw 4, 0x234(31)
    .4byte 0xC0629C40 # lfs f3, lbl_8053CBE0@sda21(r0)
    .4byte 0xC0029BEC # lfs f0, lbl_8053CB8C@sda21(r0)
    mtctr 0
L_8012B3E8:
    lfs 5, 0x3f4(31)
    lfs 4, 0x4(3)
    lfs 2, 0x3f8(31)
    lfs 1, 0x0(3)
    fadds 5, 5, 4
    lfs 4, 0x2cc(5)
    fadds 2, 2, 1
    lfs 1, 0x2c8(5)
    fsubs 4, 5, 4
    stfs 0, 0x64(1)
    fsubs 1, 2, 1
    stfs 0, 0x64(1)
    fdivs 2, 4, 3
    fdivs 1, 1, 3
    stfs 2, 0x60(1)
    stfs 1, 0x5c(1)
    psq_l 1, 0x5c(1), 0, 0
    psq_st 1, 0x2f8(5), 0, 0
    stfs 0, 0x300(5)
    lfs 5, 0x3f4(31)
    lfs 4, 0x10(3)
    lfs 1, 0xc(3)
    addi 3, 3, 0x18
    lfs 2, 0x3f8(31)
    fadds 5, 5, 4
    lfs 4, 0x2d8(5)
    fadds 2, 2, 1
    lfs 1, 0x2d4(5)
    fsubs 4, 5, 4
    fsubs 1, 2, 1
    fdivs 2, 4, 3
    fdivs 1, 1, 3
    stfs 2, 0x60(1)
    stfs 1, 0x5c(1)
    psq_l 1, 0x5c(1), 0, 0
    psq_st 1, 0x304(5), 0, 0
    stfs 0, 0x30c(5)
    addi 5, 5, 0x18
    .4byte 0x4200FF68 # bdnz .L_8012B3E8
    li 0, 0x28
    stw 0, 0x250(31)
    .4byte 0x48000710 # b .L_8012BB9C
L_8012B490:
    psq_l 1, 0x2c8(31), 0, 0
    psq_l 0, 0x2f8(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2c8(31), 0, 0
    psq_l 1, 0x2d0(31), 1, 0
    psq_l 0, 0x300(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2d0(31), 1, 0
    psq_l 1, 0x2d4(31), 0, 0
    psq_l 0, 0x304(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2d4(31), 0, 0
    psq_l 1, 0x2dc(31), 1, 0
    psq_l 0, 0x30c(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2dc(31), 1, 0
    psq_l 1, 0x2e0(31), 0, 0
    psq_l 0, 0x310(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2e0(31), 0, 0
    psq_l 1, 0x2e8(31), 1, 0
    psq_l 0, 0x318(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2e8(31), 1, 0
    psq_l 1, 0x2ec(31), 0, 0
    psq_l 0, 0x31c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2ec(31), 0, 0
    psq_l 1, 0x2f4(31), 1, 0
    psq_l 0, 0x324(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2f4(31), 1, 0
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820684 # bne .L_8012BB9C
    lis 3, lbl_804BD7C0@ha
    li 0, 0x2
    addi 4, 3, lbl_804BD7C0@l
    .4byte 0xC0429BEC # lfs f2, lbl_8053CB8C@sda21(r0)
    mr 3, 31
    .4byte 0xC0229C44 # lfs f1, lbl_8053CBE4@sda21(r0)
    mtctr 0
L_8012B538:
    stfs 2, 0x300(3)
    stfs 2, 0x2fc(3)
    stfs 2, 0x2f8(3)
    stfs 1, 0x300(3)
    lfs 0, 0x8(4)
    stfs 2, 0x4c(1)
    lfs 3, 0x3f4(31)
    stfs 0, 0x10(1)
    lfs 0, 0x3f8(31)
    psq_l 7, 0x4c(1), 1, 0
    psq_l 6, 0x10(1), 1, 0
    psq_l 4, 0x0(4), 0, 0
    ps_add 6, 6, 7
    stfs 0, 0x44(1)
    stfs 3, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    psq_st 6, 0x10(1), 1, 0
    ps_add 8, 4, 0
    lfs 5, 0x10(1)
    psq_st 4, 0x8(1), 0, 0
    psq_st 8, 0x2c8(3), 0, 0
    stfs 5, 0x2d0(3)
    stfs 2, 0x30c(3)
    stfs 2, 0x308(3)
    stfs 2, 0x304(3)
    stfs 1, 0x30c(3)
    lfs 0, 0x14(4)
    lfs 3, 0x3f4(31)
    stfs 0, 0x10(1)
    lfs 0, 0x3f8(31)
    psq_l 6, 0x10(1), 1, 0
    psq_l 4, 0xc(4), 0, 0
    addi 4, 4, 0x18
    ps_add 6, 6, 7
    psq_st 8, 0x8(1), 0, 0
    stfs 0, 0x44(1)
    stfs 3, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    psq_st 8, 0x50(1), 0, 0
    ps_add 8, 4, 0
    psq_st 4, 0x8(1), 0, 0
    psq_st 6, 0x10(1), 1, 0
    stfs 5, 0x58(1)
    lfs 5, 0x10(1)
    psq_st 8, 0x2d4(3), 0, 0
    stfs 5, 0x2dc(3)
    addi 3, 3, 0x18
    stfs 2, 0x4c(1)
    psq_st 8, 0x8(1), 0, 0
    psq_st 8, 0x50(1), 0, 0
    stfs 5, 0x58(1)
    .4byte 0x4200FF34 # bdnz .L_8012B538
    lwz 3, 0x234(31)
    li 0, 0x3c
    addi 3, 3, 0x1
    stw 3, 0x234(31)
    stw 0, 0x250(31)
    .4byte 0x48000580 # b .L_8012BB9C
L_8012B620:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820574 # bne .L_8012BB9C
    psq_l 2, 0x2c8(31), 0, 0
    psq_l 1, 0x2f8(31), 0, 0
    .4byte 0xC0029C48 # lfs f0, lbl_8053CBE8@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x2c8(31), 0, 0
    psq_l 2, 0x2d0(31), 1, 0
    psq_l 1, 0x300(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2d0(31), 1, 0
    psq_l 2, 0x2d4(31), 0, 0
    psq_l 1, 0x304(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2d4(31), 0, 0
    psq_l 2, 0x2dc(31), 1, 0
    psq_l 1, 0x30c(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2dc(31), 1, 0
    psq_l 2, 0x2e0(31), 0, 0
    psq_l 1, 0x310(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2e0(31), 0, 0
    psq_l 2, 0x2e8(31), 1, 0
    psq_l 1, 0x318(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2e8(31), 1, 0
    psq_l 2, 0x2ec(31), 0, 0
    psq_l 1, 0x31c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2ec(31), 0, 0
    psq_l 2, 0x2f4(31), 1, 0
    psq_l 1, 0x324(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x2f4(31), 1, 0
    lfs 1, 0x2d0(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408204E0 # bne .L_8012BB9C
    lwz 4, 0x234(31)
    li 3, 0x186
    li 0, 0x2
    mr 6, 31
    addi 4, 4, 0x1
    li 5, 0x0
    stw 4, 0x234(31)
    stw 3, 0x250(31)
    mtctr 0
L_8012B6E4:
    lwz 4, 0x328(6)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8012B704
    lwz 3, 0xf4(4)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(4)
    stw 0, 0x328(6)
L_8012B704:
    lwz 4, 0x338(6)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8012B724
    lwz 3, 0xf4(4)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(4)
    stw 0, 0x338(6)
L_8012B724:
    lwz 4, 0x348(6)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8012B744
    lwz 3, 0xf4(4)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(4)
    stw 0, 0x348(6)
L_8012B744:
    lwz 4, 0x32c(6)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8012B764
    lwz 3, 0xf4(4)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(4)
    stw 0, 0x32c(6)
L_8012B764:
    lwz 4, 0x33c(6)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8012B784
    lwz 3, 0xf4(4)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(4)
    stw 0, 0x33c(6)
L_8012B784:
    lwz 4, 0x34c(6)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8012B7A4
    lwz 3, 0xf4(4)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(4)
    stw 0, 0x34c(6)
L_8012B7A4:
    addi 6, 6, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FF38 # bdnz .L_8012B6E4
    mr 28, 31
    mr 27, 31
    li 30, 0x0
    li 29, 0x3b4
    li 26, 0x3b5
    li 25, 0x3b6
L_8012B7C8:
    lwz 3, 0x4(31)
    addi 4, 28, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 29, 16
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x358(27)
    addi 4, 28, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 26, 16
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x368(27)
    addi 4, 28, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 25, 16
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 30, 30, 0x1
    stw 3, 0x378(27)
    cmpwi 30, 0x4
    addi 29, 29, 0x3
    addi 28, 28, 0xc
    addi 27, 27, 0x4
    addi 26, 26, 0x3
    addi 25, 25, 0x3
    .4byte 0x4180FF60 # blt .L_8012B7C8
    .4byte 0x48000330 # b .L_8012BB9C
L_8012B870:
    lwz 0, 0x250(31)
    cmpwi 0, 0x168
    .4byte 0x4082002C # bne .L_8012B8A4
    bl fn_80119DD0
    li 4, 0x96
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x1
    li 9, 0x96
    li 10, 0x0
    bl fn_80119998
    .4byte 0x480002FC # b .L_8012BB9C
L_8012B8A4:
    cmpwi 0, 0xd2
    .4byte 0x408201E8 # bne .L_8012BA90
    li 0, 0x2
    mr 5, 31
    li 4, 0x0
    mtctr 0
L_8012B8BC:
    lwz 6, 0x358(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012B8DC
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x358(5)
L_8012B8DC:
    lwz 6, 0x368(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012B8FC
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x368(5)
L_8012B8FC:
    lwz 6, 0x378(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012B91C
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x378(5)
L_8012B91C:
    lwz 6, 0x35c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012B93C
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x35c(5)
L_8012B93C:
    lwz 6, 0x36c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012B95C
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x36c(5)
L_8012B95C:
    lwz 6, 0x37c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012B97C
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x37c(5)
L_8012B97C:
    addi 5, 5, 0x8
    addi 4, 4, 0x1
    .4byte 0x4200FF38 # bdnz .L_8012B8BC
    .4byte 0xC3C29BFC # lfs f30, lbl_8053CB9C@sda21(r0)
    mr 26, 31
    .4byte 0xC3E29BEC # lfs f31, lbl_8053CB8C@sda21(r0)
    li 30, 0x0
    li 25, 0x461
    li 27, 0x462
    li 28, 0x463
L_8012B9A4:
    lfs 1, 0x3f4(31)
    addi 4, 1, 0x14
    lfs 0, 0x3f8(31)
    clrlwi 5, 25, 16
    fadds 2, 30, 1
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    stfs 0, 0x14(1)
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    stfs 2, 0x18(1)
    li 9, 0x0
    li 10, 0x1
    stfs 31, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x388(26)
    addi 4, 1, 0x20
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 27, 16
    lfs 2, 0x3f4(31)
    li 6, 0x1
    lfs 0, 0x3f8(31)
    li 7, 0x2
    fadds 2, 30, 2
    li 8, 0x0
    stfs 0, 0x20(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x24(1)
    stfs 31, 0x28(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x398(26)
    addi 4, 1, 0x2c
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 28, 16
    lfs 2, 0x3f4(31)
    li 6, 0x1
    lfs 0, 0x3f8(31)
    li 7, 0x2
    fadds 2, 30, 2
    li 8, 0x0
    stfs 0, 0x2c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x30(1)
    stfs 31, 0x34(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    addi 30, 30, 0x1
    stw 3, 0x3a8(26)
    cmpwi 30, 0x4
    addi 25, 25, 0x3
    addi 26, 26, 0x4
    addi 27, 27, 0x3
    addi 28, 28, 0x3
    .4byte 0x4180FF1C # blt .L_8012B9A4
    .4byte 0x48000110 # b .L_8012BB9C
L_8012BA90:
    cmpwi 0, 0x1e
    .4byte 0x40820010 # bne .L_8012BAA4
    li 0, 0xa
    stw 0, 0x2c0(31)
    .4byte 0x480000FC # b .L_8012BB9C
L_8012BAA4:
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_8012BB9C
    li 3, 0xa
    lis 0, 0x4330
    stw 3, 0x2c0(31)
    li 4, 0x0
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    li 3, 0x0
    stw 4, 0x234(31)
    li 6, 0x1
    .4byte 0xC8A29C18 # lfd f5, lbl_8053CBB8@sda21(r0)
    li 7, 0x0
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    stw 0, 0xb0(1)
    lwz 4, 0x4(4)
    stw 0, 0xa8(1)
    lhz 0, 0x6(4)
    lhz 4, 0x4(4)
    xoris 0, 0, 0x8000
    .4byte 0xC0629C10 # lfs f3, lbl_8053CBB0@sda21(r0)
    stw 0, 0xb4(1)
    xoris 0, 4, 0x8000
    .4byte 0xC0029C14 # lfs f0, lbl_8053CBB4@sda21(r0)
    lfd 2, 0xb0(1)
    stw 0, 0xac(1)
    fsubs 2, 2, 5
    lwz 4, 0x4(31)
    lfd 4, 0xa8(1)
    stfs 1, 0xa0(1)
    fmuls 1, 2, 3
    lwz 5, 0x198(31)
    fsubs 2, 4, 5
    fadds 0, 1, 0
    stfs 1, 0x9c(1)
    fmuls 1, 2, 3
    stfs 0, 0x9c(1)
    stfs 1, 0x98(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    lis 3, lbl_804650C8@ha
    lfs 0, 0xa0(1)
    addi 6, 1, 0x38
    psq_l 1, 0x98(1), 0, 0
    addi 4, 3, lbl_804650C8@l
    stfs 0, 0x40(1)
    li 3, 0x0
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    lwz 0, 0x254(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_8012BC1C
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    bl fn_8011921C
    bl fn_80118454
    lwz 3, 0x230(31)
    addi 0, 3, 0x2
    stw 0, 0x230(31)
L_8012BB9C:
    mr 25, 31
    mr 26, 31
    li 30, 0x0
L_8012BBA8:
    lwz 3, 0x328(25)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8012BBC8
    addi 4, 26, 0x2c8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_8012BBC8:
    lwz 3, 0x338(25)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8012BBE8
    addi 4, 26, 0x2c8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_8012BBE8:
    lwz 3, 0x348(25)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8012BC08
    addi 4, 26, 0x2c8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_8012BC08:
    addi 30, 30, 0x1
    addi 26, 26, 0xc
    cmpwi 30, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FF90 # blt .L_8012BBA8
L_8012BC1C:
    psq_l 31, 0xf8(1), 0, 0
    lfd 31, 0xf0(1)
    psq_l 30, 0xe8(1), 0, 0
    lfd 30, 0xe0(1)
    lmw 25, 0xc4(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_8012BC40:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    bl fn_8012A5EC
    .4byte 0xC0229BDC # lfs f1, lbl_8053CB7C@sda21(r0)
    lfs 0, 0x3f4(25)
    lfs 2, 0x23c(25)
    fadds 0, 1, 0
    fcmpu cr0, 2, 0
    .4byte 0x408201AC # bne .L_8012BE18
    .4byte 0xC0229BE0 # lfs f1, lbl_8053CB80@sda21(r0)
    lfs 0, 0x248(25)
    fcmpu cr0, 1, 0
    .4byte 0x4082019C # bne .L_8012BE18
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820190 # bne .L_8012BE18
    .4byte 0x88029BC4 # lbz r0, lbl_8053CB64@sda21(r0)
    .4byte 0x38A29BC4 # li r5, lbl_8053CB64@sda21
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    mr 29, 25
    mulli 3, 0, 0xc
    lbz 0, 0x1(5)
    .4byte 0xC0029C10 # lfs f0, lbl_8053CBB0@sda21(r0)
    mr 28, 25
    li 31, 0x0
    addi 4, 3, 0x3b8
    add 4, 25, 4
    li 30, 0x3c0
    psq_l 3, 0x0(4), 0, 0
    mulli 3, 0, 0xc
    lfs 2, 0x8(4)
    li 27, 0x3c1
    lbz 0, 0x2(5)
    li 26, 0x3c2
    psq_st 3, 0x2c8(25), 0, 0
    addi 4, 3, 0x3b8
    stfs 2, 0x2d0(25)
    mulli 3, 0, 0xc
    add 4, 25, 4
    lbz 0, 0x3(5)
    stfs 1, 0x2f8(25)
    stfs 1, 0x2fc(25)
    stfs 0, 0x300(25)
    psq_l 3, 0x0(4), 0, 0
    lfs 2, 0x8(4)
    addi 4, 3, 0x3b8
    add 4, 25, 4
    psq_st 3, 0x2d4(25), 0, 0
    mulli 3, 0, 0xc
    stfs 2, 0x2dc(25)
    stfs 1, 0x304(25)
    stfs 1, 0x308(25)
    stfs 0, 0x30c(25)
    psq_l 3, 0x0(4), 0, 0
    lfs 2, 0x8(4)
    addi 4, 3, 0x3b8
    add 4, 25, 4
    psq_st 3, 0x2e0(25), 0, 0
    stfs 2, 0x2e8(25)
    stfs 1, 0x310(25)
    stfs 1, 0x314(25)
    stfs 0, 0x318(25)
    psq_l 3, 0x0(4), 0, 0
    lfs 2, 0x8(4)
    psq_st 3, 0x2ec(25), 0, 0
    stfs 2, 0x2f4(25)
    stfs 1, 0x31c(25)
    stfs 1, 0x320(25)
    stfs 0, 0x324(25)
L_8012BD60:
    lwz 3, 0x4(25)
    addi 4, 29, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 30, 16
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(28)
    addi 4, 29, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 27, 16
    lwz 3, 0x4(25)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x338(28)
    addi 4, 29, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 26, 16
    lwz 3, 0x4(25)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 31, 31, 0x1
    stw 3, 0x348(28)
    cmpwi 31, 0x4
    addi 30, 30, 0x3
    addi 29, 29, 0xc
    addi 28, 28, 0x4
    addi 27, 27, 0x3
    addi 26, 26, 0x3
    .4byte 0x4180FF60 # blt .L_8012BD60
    lwz 3, 0x230(25)
    li 0, 0x0
    addi 3, 3, 0x1
    stw 3, 0x230(25)
    stw 0, 0x234(25)
L_8012BE18:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8012BE2C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    bl fn_8012A5EC
    lwz 4, 0x4(25)
    li 3, 0x0
    lwz 5, 0x198(25)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418201B4 # beq .L_8012C01C
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    lwz 3, 0x230(25)
    .4byte 0x38A29BC0 # li r5, lbl_8053CB60@sda21
    .4byte 0x88029BC0 # lbz r0, lbl_8053CB60@sda21(r0)
    mr 29, 25
    addi 4, 3, 0x2
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    mulli 3, 0, 0xc
    stw 4, 0x230(25)
    lbz 0, 0x1(5)
    mr 28, 25
    .4byte 0xC0029C10 # lfs f0, lbl_8053CBB0@sda21(r0)
    li 31, 0x0
    addi 4, 3, 0x3b8
    li 30, 0x3c0
    add 4, 25, 4
    li 27, 0x3c1
    psq_l 3, 0x0(4), 0, 0
    mulli 3, 0, 0xc
    lfs 2, 0x8(4)
    li 26, 0x3c2
    lbz 0, 0x2(5)
    psq_st 3, 0x2c8(25), 0, 0
    addi 4, 3, 0x3b8
    mulli 3, 0, 0xc
    lbz 0, 0x3(5)
    stfs 2, 0x2d0(25)
    add 4, 25, 4
    stfs 1, 0x2f8(25)
    stfs 1, 0x2fc(25)
    stfs 0, 0x300(25)
    psq_l 3, 0x0(4), 0, 0
    lfs 2, 0x8(4)
    addi 4, 3, 0x3b8
    add 4, 25, 4
    psq_st 3, 0x2d4(25), 0, 0
    mulli 3, 0, 0xc
    stfs 2, 0x2dc(25)
    stfs 1, 0x304(25)
    stfs 1, 0x308(25)
    stfs 0, 0x30c(25)
    psq_l 3, 0x0(4), 0, 0
    lfs 2, 0x8(4)
    addi 4, 3, 0x3b8
    add 4, 25, 4
    psq_st 3, 0x2e0(25), 0, 0
    stfs 2, 0x2e8(25)
    stfs 1, 0x310(25)
    stfs 1, 0x314(25)
    stfs 0, 0x318(25)
    psq_l 3, 0x0(4), 0, 0
    lfs 2, 0x8(4)
    psq_st 3, 0x2ec(25), 0, 0
    stfs 2, 0x2f4(25)
    stfs 1, 0x31c(25)
    stfs 1, 0x320(25)
    stfs 0, 0x324(25)
L_8012BF5C:
    lwz 3, 0x4(25)
    addi 4, 29, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 30, 16
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x328(28)
    addi 4, 29, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 27, 16
    lwz 3, 0x4(25)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x338(28)
    addi 4, 29, 0x2c8
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    clrlwi 5, 26, 16
    lwz 3, 0x4(25)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 31, 31, 0x1
    stw 3, 0x348(28)
    cmpwi 31, 0x4
    addi 30, 30, 0x3
    addi 29, 29, 0xc
    addi 28, 28, 0x4
    addi 27, 27, 0x3
    addi 26, 26, 0x3
    .4byte 0x4180FF60 # blt .L_8012BF5C
    li 0, 0x0
    lis 4, 0x5
    stw 0, 0x234(25)
    mr 3, 25
    addi 4, 4, 0x62
    li 5, 0x0
    bl fn_801F0E34
L_8012C01C:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8012C030:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    bl fn_8012A5EC
    .4byte 0xC0229BD4 # lfs f1, lbl_8053CB74@sda21(r0)
    lfs 0, 0x3f4(31)
    lfs 2, 0x23c(31)
    fadds 0, 1, 0
    fcmpu cr0, 2, 0
    .4byte 0x40820100 # bne .L_8012C15C
    .4byte 0xC0229BD8 # lfs f1, lbl_8053CB78@sda21(r0)
    lfs 0, 0x248(31)
    fcmpu cr0, 1, 0
    .4byte 0x408200F0 # bne .L_8012C15C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_8012C15C
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0x28(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    .4byte 0xC8A29C18 # lfd f5, lbl_8053CBB8@sda21(r0)
    stw 0, 0x2c(1)
    xoris 0, 5, 0x8000
    .4byte 0xC0629C10 # lfs f3, lbl_8053CBB0@sda21(r0)
    lfd 0, 0x28(1)
    stw 0, 0x24(1)
    fsubs 2, 0, 5
    .4byte 0xC0029C14 # lfs f0, lbl_8053CBB4@sda21(r0)
    stw 4, 0x20(1)
    lwz 4, 0x4(31)
    fmuls 2, 2, 3
    lfd 4, 0x20(1)
    stfs 1, 0x1c(1)
    fsubs 1, 4, 5
    lwz 5, 0x198(31)
    fadds 0, 2, 0
    stfs 2, 0x18(1)
    fmuls 1, 1, 3
    stfs 0, 0x18(1)
    stfs 1, 0x14(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    lis 3, lbl_804650C8@ha
    lfs 0, 0x1c(1)
    addi 6, 1, 0x8
    psq_l 1, 0x14(1), 0, 0
    addi 4, 3, lbl_804650C8@l
    stfs 0, 0x10(1)
    li 3, 0x0
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    lwz 0, 0x254(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8012C15C
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    bl fn_8011921C
    bl fn_80118454
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
L_8012C15C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8012C170:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 0, 0x250(3)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_8012C1A0
    bl fn_80119DD0
    li 4, 0x0
    li 5, 0x0
    bl fn_80119468
L_8012C1A0:
    .4byte 0xC0229C4C # lfs f1, lbl_8053CBEC@sda21(r0)
    lfs 0, 0x3f4(31)
    lfs 2, 0x3bc(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820074 # bne .L_8012C22C
    .4byte 0xC0229C10 # lfs f1, lbl_8053CBB0@sda21(r0)
    fsubs 0, 2, 1
    stfs 0, 0x3bc(31)
    lfs 0, 0x3c8(31)
    fsubs 0, 0, 1
    stfs 0, 0x3c8(31)
    lfs 0, 0x3d4(31)
    fsubs 0, 0, 1
    stfs 0, 0x3d4(31)
    lfs 0, 0x3e0(31)
    fsubs 0, 0, 1
    stfs 0, 0x3e0(31)
    lwz 0, 0x3f0(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8012C220
    li 0, 0x6
    stw 0, 0x3f0(31)
    lwz 3, 0x3ec(31)
    addi 0, 3, 0x1
    stw 0, 0x3ec(31)
    lwz 0, 0x3ec(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8012C220
    li 0, 0x0
    stw 0, 0x3ec(31)
L_8012C220:
    mr 3, 31
    bl fn_8012A5EC
    .4byte 0x480000F8 # b .L_8012C320
L_8012C22C:
    stfs 0, 0x3bc(31)
    li 0, 0x0
    mr 3, 31
    stw 0, 0x3ec(31)
    bl fn_8012A5EC
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0229BEC # lfs f1, lbl_8053CB8C@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0x28(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    .4byte 0xC8A29C18 # lfd f5, lbl_8053CBB8@sda21(r0)
    stw 0, 0x2c(1)
    xoris 0, 5, 0x8000
    .4byte 0xC0629C10 # lfs f3, lbl_8053CBB0@sda21(r0)
    lfd 0, 0x28(1)
    stw 0, 0x24(1)
    fsubs 2, 0, 5
    .4byte 0xC0029C14 # lfs f0, lbl_8053CBB4@sda21(r0)
    stw 4, 0x20(1)
    lwz 4, 0x4(31)
    fmuls 2, 2, 3
    lfd 4, 0x20(1)
    stfs 1, 0x1c(1)
    fsubs 1, 4, 5
    lwz 5, 0x198(31)
    fadds 0, 2, 0
    stfs 2, 0x18(1)
    fmuls 1, 1, 3
    stfs 0, 0x18(1)
    stfs 1, 0x14(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    lis 3, lbl_804650C8@ha
    lfs 0, 0x1c(1)
    addi 6, 1, 0x8
    psq_l 1, 0x14(1), 0, 0
    addi 4, 3, lbl_804650C8@l
    stfs 0, 0x10(1)
    li 3, 0x0
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    lwz 0, 0x254(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8012C320
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    bl fn_8011921C
    bl fn_80118454
    lwz 3, 0x230(31)
    addi 0, 3, 0x2
    stw 0, 0x230(31)
L_8012C320:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8012C334:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    li 28, 0x0
L_8012C358:
    mr 3, 28
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820174 # bne .L_8012C4D8
    mr 3, 28
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820164 # beq .L_8012C4D8
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFD8 # blt .L_8012C358
    .4byte 0x880D8EF0 # lbz r0, lbl_8053AAB0@sda21(r0)
    extsb. 0, 0
    .4byte 0x408200A4 # bne .L_8012C430
    .4byte 0xC0229BC8 # lfs f1, lbl_8053CB68@sda21(r0)
    lis 3, lbl_804BD790@ha
    lfs 0, 0x3f4(31)
    addi 3, 3, lbl_804BD790@l
    .4byte 0xC0629BEC # lfs f3, lbl_8053CB8C@sda21(r0)
    li 0, 0x1
    lfs 5, 0x3f8(31)
    fadds 1, 1, 0
    .4byte 0xC0C29C50 # lfs f6, lbl_8053CBF0@sda21(r0)
    .4byte 0xC0029C54 # lfs f0, lbl_8053CBF4@sda21(r0)
    fadds 7, 6, 1
    stfs 3, 0x34(1)
    fsubs 4, 5, 6
    fsubs 2, 5, 0
    stfs 3, 0x8(3)
    fadds 1, 0, 5
    fadds 0, 6, 5
    stfs 4, 0x2c(1)
    stfs 7, 0x30(1)
    psq_l 4, 0x2c(1), 0, 0
    stfs 2, 0x20(1)
    stfs 7, 0x24(1)
    psq_l 2, 0x20(1), 0, 0
    stfs 1, 0x14(1)
    stfs 7, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x8(1)
    stfs 7, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    psq_st 4, 0x0(3), 0, 0
    stfs 3, 0x28(1)
    psq_st 2, 0xc(3), 0, 0
    stfs 3, 0x14(3)
    stfs 3, 0x1c(1)
    psq_st 1, 0x18(3), 0, 0
    stfs 3, 0x20(3)
    stfs 3, 0x10(1)
    psq_st 0, 0x24(3), 0, 0
    stfs 3, 0x2c(3)
    .4byte 0x980D8EF0 # stb r0, lbl_8053AAB0@sda21(r0)
L_8012C430:
    lis 3, lbl_804BD790@ha
    mr 30, 31
    addi 29, 3, lbl_804BD790@l
    li 28, 0x0
L_8012C440:
    psq_l 1, 0x0(29), 0, 0
    mr 3, 28
    lfs 0, 0x8(29)
    psq_st 1, 0x3b8(30), 0, 0
    stfs 0, 0x3c0(30)
    bl fn_8023EE28
    addi 28, 28, 0x1
    addi 29, 29, 0xc
    cmpwi 28, 0x4
    addi 30, 30, 0xc
    .4byte 0x4180FFD8 # blt .L_8012C440
    bl fn_8023077C
    li 0, 0x18
    li 30, 0x0
    stw 0, 0x3e8(31)
    li 0, 0x6
    mr 29, 31
    stw 30, 0x3ec(31)
    stw 0, 0x3f0(31)
L_8012C48C:
    lwz 5, 0x3e8(31)
    mr 3, 30
    lwz 0, 0x3ec(31)
    addi 4, 29, 0x3b8
    li 6, 0xff
    li 7, -0x80
    add 5, 5, 0
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 30, 30, 0x1
    addi 29, 29, 0xc
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_8012C48C
    lwz 4, 0x230(31)
    mr 3, 31
    addi 0, 4, 0x1
    stw 0, 0x230(31)
    bl fn_8012A5EC
L_8012C4D8:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8012C4F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820108 # beq .L_8012C61C
    lis 3, lbl_8049E770@ha
    li 0, 0x2
    addi 3, 3, lbl_8049E770@l
    mr 5, 30
    stw 3, 0x0(30)
    li 4, 0x0
    mtctr 0
L_8012C534:
    lwz 6, 0x388(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012C554
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x388(5)
L_8012C554:
    lwz 6, 0x398(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012C574
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x398(5)
L_8012C574:
    lwz 6, 0x3a8(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012C594
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x3a8(5)
L_8012C594:
    lwz 6, 0x38c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012C5B4
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x38c(5)
L_8012C5B4:
    lwz 6, 0x39c(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012C5D4
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x39c(5)
L_8012C5D4:
    lwz 6, 0x3ac(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8012C5F4
    lwz 3, 0xf4(6)
    li 0, 0x0
    ori 3, 3, 0x100
    stw 3, 0xf4(6)
    stw 0, 0x3ac(5)
L_8012C5F4:
    addi 5, 5, 0x8
    addi 4, 4, 0x1
    .4byte 0x4200FF38 # bdnz .L_8012C534
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8012C61C
    mr 3, 30
    bl dtor_80084580
L_8012C61C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012C638:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 27, 3
    lis 3, lbl_804650E0@ha
    li 28, 0x0
    mr 30, 27
    mr 29, 27
    addi 31, 3, lbl_804650E0@l
    psq_l 1, 0xc(27), 0, 0
    lfs 0, 0x14(27)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
L_8012C670:
    psq_l 2, 0x25c(30), 0, 0
    mr 3, 27
    lfs 0, 0x264(30)
    mr 4, 31
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    li 6, 0x0
    psq_st 2, 0xc(27), 0, 0
    li 7, 0x7
    fmr 2, 1
    stfs 0, 0x14(27)
    lwz 5, 0x2a4(29)
    lwz 0, 0x2c0(27)
    add 5, 5, 0
    bl fn_801F06F0
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x6
    addi 30, 30, 0xc
    .4byte 0x4180FFB8 # blt .L_8012C670
    lwz 0, 0x230(27)
    cmpwi 0, 0x0
    .4byte 0x40810054 # ble .L_8012C718
    li 28, 0x0
    mr 29, 27
L_8012C6D0:
    mr 3, 28
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8012C708
    lwz 5, 0x3e8(27)
    mr 3, 28
    lwz 0, 0x3ec(27)
    addi 4, 29, 0x3b8
    li 6, 0xff
    li 7, -0x80
    add 5, 5, 0
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8012C708:
    addi 28, 28, 0x1
    addi 29, 29, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FFBC # blt .L_8012C6D0
L_8012C718:
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(27), 0, 0
    stfs 0, 0x14(27)
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8012C73C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x258(3)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012C768
    subi 0, 3, 0x1
    stw 0, 0x258(31)
    .4byte 0x4800002C # b .L_8012C790
L_8012C768:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x1c
    .4byte 0x41820018 # beq .L_8012C790
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x1c
    li 6, 0x0
    bl fn_80458FF0
L_8012C790:
    lwz 3, 0x3f0(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8012C7A4
    subi 0, 3, 0x1
    stw 0, 0x3f0(31)
L_8012C7A4:
    lwz 3, 0x2bc(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8012C7B8
    subi 0, 3, 0x1
    stw 0, 0x2bc(31)
L_8012C7B8:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8012C7CC
    subi 0, 3, 0x1
    stw 0, 0x250(31)
L_8012C7CC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8012C7F0
    li 0, 0x1
    .4byte 0xC0029C58 # lfs f0, lbl_8053CBF8@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_8012C7F0:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lis 3, lbl_80529DEC@ha
    li 5, 0x1
    lwz 4, 0x24(4)
    addi 3, 3, lbl_80529DEC@l
    stb 5, 0x17c(4)
    lwz 0, 0x118(3)
    lwz 6, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8012C820
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8012C828
L_8012C820:
    li 0, 0x0
    .4byte 0x48000050 # b .L_8012C874
L_8012C828:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_8012C838
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_8012C840
L_8012C838:
    li 0, 0x0
    .4byte 0x48000038 # b .L_8012C874
L_8012C840:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8012C874:
    cmpwi 0, 0x0
    .4byte 0x41820064 # beq .L_8012C8DC
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x41800058 # blt .L_8012C8DC
    cmpwi 0, 0x9
    .4byte 0x41810050 # bgt .L_8012C8DC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    li 4, 0x1000
    li 5, -0x1
    stb 0, 0x85(3)
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_8012C8DC
    li 0, 0x1
    li 3, 0x0
    stb 0, 0x404(31)
    bl fn_80387494
    bl fn_80119DD0
    bl fn_80119958
    li 3, 0x9
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x250(31)
L_8012C8DC:
    lwz 4, 0x230(31)
    lis 3, lbl_8049E6EC@ha
    addi 0, 3, lbl_8049E6EC@l
    mr 3, 31
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012C910:
    blr

fn_8012C914:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    .4byte 0xC1629BC8 # lfs f11, lbl_8053CB68@sda21(r0)
    lis 0, 0x4330
    lfs 0, 0x10(31)
    lis 5, lbl_804650D4@ha
    lis 4, lbl_804650B0@ha
    lis 3, lbl_8052EBC0@ha
    fdivs 0, 0, 11
    addi 8, 4, lbl_804650B0@l
    addi 6, 5, lbl_804650D4@l
    stw 0, 0x38(1)
    .4byte 0xC9429C18 # lfd f10, lbl_8053CBB8@sda21(r0)
    li 4, 0x0
    fctiwz 0, 0
    stw 0, 0x48(1)
    .4byte 0xC0E29C64 # lfs f7, lbl_8053CC04@sda21(r0)
    li 0, 0x6
    .4byte 0xC1229C60 # lfs f9, lbl_8053CC00@sda21(r0)
    mr 7, 31
    stfd 0, 0x30(1)
    mr 9, 31
    .4byte 0xC0A29C5C # lfs f5, lbl_8053CBFC@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    lwz 5, 0x34(1)
    .4byte 0xC0C29C68 # lfs f6, lbl_8053CC08@sda21(r0)
    xoris 5, 5, 0x8000
    .4byte 0xC0029BD0 # lfs f0, lbl_8053CB70@sda21(r0)
    stw 5, 0x3c(1)
    .4byte 0xC0429BCC # lfs f2, lbl_8053CB6C@sda21(r0)
    lfd 1, 0x38(1)
    .4byte 0xC0829BEC # lfs f4, lbl_8053CB8C@sda21(r0)
    fsubs 8, 1, 10
    .4byte 0xC0629C6C # lfs f3, lbl_8053CC0C@sda21(r0)
    .4byte 0xC0229C70 # lfs f1, lbl_8053CC10@sda21(r0)
    fmuls 8, 11, 8
    stfs 8, 0x3f4(31)
    lfs 8, 0xc(31)
    fmuls 7, 8, 7
    fctiwz 7, 7
    stfd 7, 0x40(1)
    lwz 5, 0x44(1)
    xoris 5, 5, 0x8000
    stw 5, 0x4c(1)
    lfd 7, 0x48(1)
    fsubs 7, 7, 10
    fmadds 5, 9, 7, 5
    stfs 5, 0x3f8(31)
    lfs 5, 0x3f8(31)
    stfs 5, 0xc(31)
    lfs 5, 0x3f4(31)
    fadds 5, 6, 5
    stfs 5, 0x10(31)
    stw 4, 0x230(31)
    stw 4, 0x234(31)
    stfs 0, 0x248(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    lfs 5, 0x3f4(31)
    lfs 0, 0x3f8(31)
    fadds 5, 11, 5
    stfs 0, 0x238(31)
    fsubs 0, 5, 2
    stfs 0, 0x23c(31)
    stfs 4, 0x240(31)
    stfs 4, 0x400(31)
    stfs 4, 0x3fc(31)
    mtctr 0
L_8012CA38:
    lha 0, 0x0(6)
    addi 6, 6, 0x2
    lfs 5, 0x14(31)
    rlwinm 0, 0, 30, 18, 28
    psq_l 6, 0xc(31), 0, 0
    add 4, 3, 0
    stfs 5, 0x10(1)
    lfs 0, 0x0(4)
    lfs 2, 0x4(4)
    stfs 4, 0x1c(1)
    fmuls 0, 1, 0
    fmuls 2, 3, 2
    lwz 0, 0x0(8)
    psq_l 7, 0x10(1), 1, 0
    addi 8, 8, 0x4
    psq_l 5, 0x1c(1), 1, 0
    stfs 2, 0x14(1)
    ps_add 2, 7, 5
    stfs 0, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_add 2, 6, 0
    lfs 0, 0x10(1)
    psq_st 6, 0x8(1), 0, 0
    psq_st 2, 0x25c(7), 0, 0
    stfs 0, 0x264(7)
    addi 7, 7, 0xc
    stw 0, 0x2a4(9)
    addi 9, 9, 0x4
    psq_st 2, 0x8(1), 0, 0
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    .4byte 0x4200FF80 # bdnz .L_8012CA38
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x2bc(31)
    .4byte 0xC0229C74 # lfs f1, lbl_8053CC14@sda21(r0)
    stw 0, 0x2c0(31)
    .4byte 0xC0029C78 # lfs f0, lbl_8053CC18@sda21(r0)
    stw 3, 0x2c4(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x1c
    .4byte 0x41820014 # beq .L_8012CB0C
    li 4, 0x3c
    bl fn_80458F9C
    li 0, 0x3c
    stw 0, 0x258(31)
L_8012CB0C:
    li 0, 0x0
    stb 0, 0x404(31)
    stw 0, 0x388(31)
    stw 0, 0x398(31)
    stw 0, 0x3a8(31)
    stw 0, 0x38c(31)
    stw 0, 0x39c(31)
    stw 0, 0x3ac(31)
    stw 0, 0x390(31)
    stw 0, 0x3a0(31)
    stw 0, 0x3b0(31)
    stw 0, 0x394(31)
    stw 0, 0x3a4(31)
    stw 0, 0x3b4(31)
    bl fn_80119DD0
    li 4, 0x96
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x6e
    li 10, 0x0
    bl fn_80119998
    li 0, 0x3c
    li 4, 0x1
    stw 0, 0x250(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 2, 0x238(31)
    lfs 1, 0x23c(31)
    lfs 0, 0x248(31)
    lwz 3, 0x24(3)
    fsubs 3, 1, 0
    stb 4, 0x179(3)
    fadds 4, 1, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8012CBD0
    stb 4, 0x840(3)
    .4byte 0xC0229BF0 # lfs f1, lbl_8053CB90@sda21(r0)
    stfs 2, 0x844(3)
    .4byte 0xC0029BF4 # lfs f0, lbl_8053CB94@sda21(r0)
    stfs 3, 0x848(3)
    stfs 2, 0x84c(3)
    stfs 4, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_8012CBD0:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8012CBE4:
    stwu 1, -0x70(1)
    mflr 0
    lis 3, lbl_8049E668@ha
    stw 0, 0x74(1)
    stmw 14, 0x28(1)
    addi 16, 3, lbl_8049E668@l
    lis 3, lbl_804BD790@ha
    addi 31, 3, lbl_804BD790@l
    addi 20, 16, 0x84
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    lwz 15, 0x64(16)
    extsb. 0, 0
    lwz 0, 0x5c(16)
    stw 15, 0x24(1)
    lwz 15, 0x68(16)
    stw 0, 0x5c(20)
    lwz 0, 0x24(1)
    stw 15, 0x8(1)
    lwz 15, 0x6c(16)
    stw 0, 0x64(20)
    lwz 0, 0x8(1)
    stw 15, 0xc(1)
    lwz 15, 0x70(16)
    stw 0, 0x68(20)
    lwz 0, 0xc(1)
    stw 15, 0x10(1)
    lwz 15, 0x74(16)
    stw 0, 0x6c(20)
    lwz 0, 0x10(1)
    stw 15, 0x14(1)
    lwz 15, 0x78(16)
    stw 0, 0x70(20)
    lwz 0, 0x14(1)
    stw 15, 0x18(1)
    lwz 15, 0x7c(16)
    stw 0, 0x74(20)
    lwz 0, 0x18(1)
    stw 15, 0x1c(1)
    lwz 15, 0x80(16)
    stw 0, 0x78(20)
    lwz 0, 0x1c(1)
    lwz 17, 0x0(16)
    lwz 18, 0x4(16)
    lwz 19, 0x8(16)
    lwz 21, 0xc(16)
    lwz 22, 0x10(16)
    lwz 23, 0x14(16)
    lwz 24, 0x18(16)
    lwz 25, 0x1c(16)
    lwz 26, 0x20(16)
    lwz 27, 0x24(16)
    lwz 28, 0x28(16)
    lwz 29, 0x2c(16)
    lwz 30, 0x30(16)
    lwz 12, 0x34(16)
    lwz 11, 0x38(16)
    lwz 10, 0x3c(16)
    lwz 9, 0x40(16)
    lwz 8, 0x44(16)
    lwz 7, 0x48(16)
    lwz 6, 0x4c(16)
    lwz 5, 0x50(16)
    lwz 4, 0x54(16)
    lwz 3, 0x58(16)
    lwz 14, 0x60(16)
    stw 0, 0x7c(20)
    mr 0, 15
    stw 15, 0x20(1)
    stw 17, 0x84(16)
    stw 18, 0x88(16)
    stw 19, 0x8c(16)
    stw 21, 0xc(20)
    stw 22, 0x10(20)
    stw 23, 0x14(20)
    stw 24, 0x18(20)
    stw 25, 0x1c(20)
    stw 26, 0x20(20)
    stw 27, 0x24(20)
    stw 28, 0x28(20)
    stw 29, 0x2c(20)
    stw 30, 0x30(20)
    stw 12, 0x34(20)
    stw 11, 0x38(20)
    stw 10, 0x3c(20)
    stw 9, 0x40(20)
    stw 8, 0x44(20)
    stw 7, 0x48(20)
    stw 6, 0x4c(20)
    stw 5, 0x50(20)
    stw 4, 0x54(20)
    stw 3, 0x58(20)
    stw 14, 0x60(20)
    stw 0, 0x80(20)
    .4byte 0x40820030 # bne .L_8012CD88
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8012CD88:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CDC0
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8012CDC0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CDF8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x78
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8012CDF8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CE30
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x84
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8012CE30:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CE68
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x90
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8012CE68:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CEA0
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x9c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8012CEA0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CED8
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0xa8
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8012CED8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CF10
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0xb4
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8012CF10:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012CF48
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0xc0
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8012CF48:
    lmw 14, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8012CF5C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    bl fn_801F5930
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x418202A0 # beq .L_8012D224
    .4byte 0x40800010 # bge .L_8012CF98
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8012CFA4
    .4byte 0x48000738 # b .L_8012D6CC
L_8012CF98:
    cmpwi 0, 0x3
    .4byte 0x40800730 # bge .L_8012D6CC
    .4byte 0x48000528 # b .L_8012D4C8
L_8012CFA4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4082011C # bne .L_8012D0D8
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8012D00C
    .4byte 0x40800010 # bge .L_8012CFE4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8012CFF0
    .4byte 0x480006EC # b .L_8012D6CC
L_8012CFE4:
    cmpwi 0, 0x3
    .4byte 0x408006E4 # bge .L_8012D6CC
    .4byte 0x48000070 # b .L_8012D05C
L_8012CFF0:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x418206D4 # beq .L_8012D6CC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x480006C4 # b .L_8012D6CC
L_8012D00C:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012D024
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_8012D024:
    li 0, 0x0
    stw 0, 0x238(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 4, 4, 0x4556
    bl fn_801F7A08
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182067C # beq .L_8012D6CC
    bl fn_802B39E8
    .4byte 0x48000674 # b .L_8012D6CC
L_8012D05C:
    .4byte 0xC0229C80 # lfs f1, lbl_8053CC20@sda21(r0)
    lis 4, 0x3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 3, 31
    stfs 1, 0x40(1)
    addi 4, 4, 0x36
    li 5, 0x0
    stfs 1, 0x44(1)
    stfs 1, 0x48(1)
    lwz 6, 0x24(6)
    lfs 0, 0x10(6)
    fneg 0, 0
    stfs 0, 0x40(1)
    lfs 0, 0x20(6)
    fneg 0, 0
    stfs 1, 0x48(1)
    stfs 0, 0x44(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x40
    .4byte 0xC0229C84 # lfs f1, lbl_8053CC24@sda21(r0)
    li 5, 0x1bc
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x480005F8 # b .L_8012D6CC
L_8012D0D8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418205DC # beq .L_8012D6CC
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8012D140
    .4byte 0x40800010 # bge .L_8012D118
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8012D124
    .4byte 0x480000F4 # b .L_8012D208
L_8012D118:
    cmpwi 0, 0x3
    .4byte 0x408000EC # bge .L_8012D208
    .4byte 0x48000070 # b .L_8012D190
L_8012D124:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x418200DC # beq .L_8012D208
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x480000CC # b .L_8012D208
L_8012D140:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012D158
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_8012D158:
    li 0, 0x0
    stw 0, 0x238(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 4, 4, 0x4556
    bl fn_801F7A08
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_8012D208
    bl fn_802B39E8
    .4byte 0x4800007C # b .L_8012D208
L_8012D190:
    .4byte 0xC0229C80 # lfs f1, lbl_8053CC20@sda21(r0)
    lis 4, 0x3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 3, 31
    stfs 1, 0x34(1)
    addi 4, 4, 0x36
    li 5, 0x0
    stfs 1, 0x38(1)
    stfs 1, 0x3c(1)
    lwz 6, 0x24(6)
    lfs 0, 0x10(6)
    fneg 0, 0
    stfs 0, 0x34(1)
    lfs 0, 0x20(6)
    fneg 0, 0
    stfs 1, 0x3c(1)
    stfs 0, 0x38(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x34
    .4byte 0xC0229C84 # lfs f1, lbl_8053CC24@sda21(r0)
    li 5, 0x1bc
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x238(31)
L_8012D208:
    lbz 0, 0x231(31)
    cmplwi 0, 0x0
    .4byte 0x418204BC # beq .L_8012D6CC
    mr 3, 31
    li 4, 0x6
    bl fn_801F0D20
    .4byte 0x480004AC # b .L_8012D6CC
L_8012D224:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810134 # ble .L_8012D370
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820118 # bne .L_8012D370
    li 0, 0x0
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8012D2A8
    .4byte 0x40800010 # bge .L_8012D280
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8012D28C
    .4byte 0x480000F4 # b .L_8012D370
L_8012D280:
    cmpwi 0, 0x3
    .4byte 0x408000EC # bge .L_8012D370
    .4byte 0x48000070 # b .L_8012D2F8
L_8012D28C:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x418200DC # beq .L_8012D370
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x480000CC # b .L_8012D370
L_8012D2A8:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012D2C0
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_8012D2C0:
    li 0, 0x0
    stw 0, 0x238(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 4, 4, 0x4556
    bl fn_801F7A08
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_8012D370
    bl fn_802B39E8
    .4byte 0x4800007C # b .L_8012D370
L_8012D2F8:
    .4byte 0xC0229C80 # lfs f1, lbl_8053CC20@sda21(r0)
    lis 4, 0x3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 3, 31
    stfs 1, 0x28(1)
    addi 4, 4, 0x36
    li 5, 0x0
    stfs 1, 0x2c(1)
    stfs 1, 0x30(1)
    lwz 6, 0x24(6)
    lfs 0, 0x10(6)
    fneg 0, 0
    stfs 0, 0x28(1)
    lfs 0, 0x20(6)
    fneg 0, 0
    stfs 1, 0x30(1)
    stfs 0, 0x2c(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x28
    .4byte 0xC0229C84 # lfs f1, lbl_8053CC24@sda21(r0)
    li 5, 0x1bc
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x238(31)
L_8012D370:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x32
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x238(31)
    li 4, 0x12c
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8012D3A4
    li 4, 0x3e8
L_8012D3A4:
    lwz 0, 0x238(31)
    cmpw 0, 4
    .4byte 0x41800320 # blt .L_8012D6CC
    li 0, 0x2
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8012D3FC
    .4byte 0x40800010 # bge .L_8012D3D4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8012D3E0
    .4byte 0x480002FC # b .L_8012D6CC
L_8012D3D4:
    cmpwi 0, 0x3
    .4byte 0x408002F4 # bge .L_8012D6CC
    .4byte 0x48000070 # b .L_8012D44C
L_8012D3E0:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x418202E4 # beq .L_8012D6CC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x480002D4 # b .L_8012D6CC
L_8012D3FC:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012D414
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_8012D414:
    li 0, 0x0
    stw 0, 0x238(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 4, 4, 0x4556
    bl fn_801F7A08
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182028C # beq .L_8012D6CC
    bl fn_802B39E8
    .4byte 0x48000284 # b .L_8012D6CC
L_8012D44C:
    .4byte 0xC0229C80 # lfs f1, lbl_8053CC20@sda21(r0)
    lis 4, 0x3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 3, 31
    stfs 1, 0x1c(1)
    addi 4, 4, 0x36
    li 5, 0x0
    stfs 1, 0x20(1)
    stfs 1, 0x24(1)
    lwz 6, 0x24(6)
    lfs 0, 0x10(6)
    fneg 0, 0
    stfs 0, 0x1c(1)
    lfs 0, 0x20(6)
    fneg 0, 0
    stfs 1, 0x24(1)
    stfs 0, 0x20(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x1c
    .4byte 0xC0229C84 # lfs f1, lbl_8053CC24@sda21(r0)
    li 5, 0x1bc
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x48000208 # b .L_8012D6CC
L_8012D4C8:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x32
    li 5, 0x0
    bl fn_801F0E34
    lis 3, lbl_80529DEC@ha
    li 29, 0x0
    addi 30, 3, lbl_80529DEC@l
L_8012D4E8:
    mr 3, 29
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x4082009C # bne .L_8012D594
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_8012D594
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_8012D594
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_8012D594
    mr 3, 29
    bl fn_80236D14
    clrlwi. 0, 3, 24
    .4byte 0x4082005C # bne .L_8012D594
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    addi 5, 1, 0x8
    .4byte 0xC0029C8C # lfs f0, lbl_8053CC2C@sda21(r0)
    li 4, 0x1
    stfs 1, 0x8(1)
    li 6, 0x1
    fadds 1, 1, 0
    lfs 2, 0x4(3)
    mr 3, 29
    fsubs 0, 2, 0
    stfs 2, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_80238548
    li 0, 0x1
    lbz 3, 0x239(30)
    slw 0, 0, 29
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x239(30)
L_8012D594:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF4C # blt .L_8012D4E8
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0xaa
    .4byte 0x41800118 # blt .L_8012D6CC
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8012D604
    .4byte 0x40800010 # bge .L_8012D5DC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8012D5E8
    .4byte 0x480000F4 # b .L_8012D6CC
L_8012D5DC:
    cmpwi 0, 0x3
    .4byte 0x408000EC # bge .L_8012D6CC
    .4byte 0x48000070 # b .L_8012D654
L_8012D5E8:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x418200DC # beq .L_8012D6CC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x480000CC # b .L_8012D6CC
L_8012D604:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012D61C
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_8012D61C:
    li 0, 0x0
    stw 0, 0x238(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 4, 4, 0x4556
    bl fn_801F7A08
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_8012D6CC
    bl fn_802B39E8
    .4byte 0x4800007C # b .L_8012D6CC
L_8012D654:
    .4byte 0xC0229C80 # lfs f1, lbl_8053CC20@sda21(r0)
    lis 4, 0x3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 3, 31
    stfs 1, 0x10(1)
    addi 4, 4, 0x36
    li 5, 0x0
    stfs 1, 0x14(1)
    stfs 1, 0x18(1)
    lwz 6, 0x24(6)
    lfs 0, 0x10(6)
    fneg 0, 0
    stfs 0, 0x10(1)
    lfs 0, 0x20(6)
    fneg 0, 0
    stfs 1, 0x18(1)
    stfs 0, 0x14(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x10
    .4byte 0xC0229C84 # lfs f1, lbl_8053CC24@sda21(r0)
    li 5, 0x1bc
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x238(31)
L_8012D6CC:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8012D6E8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    clrlwi 0, 0, 31
    stb 0, 0x230(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 30
    stb 0, 0x231(31)
    lwz 0, 0x23c(31)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_8012D7A8
    bl GetRoomConfigRecord
    lwz 8, 0xcc(3)
    addi 4, 1, 0x18
    lwz 10, 0xd0(3)
    li 5, 0x58
    lwz 11, 0xd4(3)
    li 6, 0x1
    lwz 0, 0xd8(3)
    li 7, 0x0
    stw 8, 0x8(1)
    li 8, 0x0
    .4byte 0xC0029C80 # lfs f0, lbl_8053CC20@sda21(r0)
    li 9, 0x0
    stw 10, 0xc(1)
    li 10, 0x1
    lfs 2, 0x8(1)
    stw 11, 0x10(1)
    lfs 1, 0xc(1)
    stw 0, 0x14(1)
    lfs 5, 0x10(1)
    lfs 6, 0x14(1)
    fsubs 3, 2, 5
    .4byte 0xC0829C88 # lfs f4, lbl_8053CC28@sda21(r0)
    fsubs 2, 1, 6
    stfs 0, 0x20(1)
    .4byte 0xC0229C84 # lfs f1, lbl_8053CC24@sda21(r0)
    fmadds 0, 4, 3, 5
    fmadds 2, 4, 2, 6
    stfs 0, 0x18(1)
    stfs 2, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
L_8012D7A8:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8012D7C0
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
L_8012D7C0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8012D7D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_8012D82C
    lis 3, lbl_8049E7F0@ha
    addi 0, 3, lbl_8049E7F0@l
    stw 0, 0x0(30)
    lwz 3, 0x23c(30)
    bl fn_801EE434
    li 0, 0x0
    mr 3, 30
    stw 0, 0x23c(30)
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8012D82C
    mr 3, 30
    bl dtor_80084580
L_8012D82C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8012A3C8
    .4byte fn_8012CBE4

