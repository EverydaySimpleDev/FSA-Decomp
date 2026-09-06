# Fresh project-wide gap hunt continuation: 28 functions, 10,364 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80008A38
etb_80008A38:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008A38, 8

.global etb_80008A40
etb_80008A40:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008A40, 8

.global etb_80008A48
etb_80008A48:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008A48, 8

.global etb_80008A50
etb_80008A50:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008A50, 8

.global etb_80008A58
etb_80008A58:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008A58, 8

.global etb_80008A60
etb_80008A60:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80008A60, 8

.global etb_80008A68
etb_80008A68:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_80008A68, 8

.global etb_80008A70
etb_80008A70:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008A70, 8

.global etb_80008A78
etb_80008A78:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008A78, 8

.global etb_80008A80
etb_80008A80:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008A80, 8

.global etb_80008A88
etb_80008A88:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008A88, 8

.global etb_80008A90
etb_80008A90:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008A90, 8

.global etb_80008A98
etb_80008A98:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008A98, 8

.global etb_80008AA0
etb_80008AA0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008AA0, 8

.global etb_80008AA8
etb_80008AA8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008AA8, 8

.global etb_80008AB0
etb_80008AB0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008AB0, 8

.global etb_80008AB8
etb_80008AB8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008AB8, 8

.global etb_80008AC0
etb_80008AC0:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008AC0, 8

.global etb_80008AC8
etb_80008AC8:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80008AC8, 8

.global etb_80008AD0
etb_80008AD0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008AD0, 8

.global etb_80008AD8
etb_80008AD8:
    .4byte 0x08080000
    .4byte 0x00000054
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8780001F
    .4byte 0x00000010
    .4byte dtor_80105D80
.size etb_80008AD8, 28

.global etb_80008AF4
etb_80008AF4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008AF4, 8

.section extabindex, "a"
.balign 4
.global eti_80015F88
eti_80015F88:
    .4byte fn_801E44CC
    .4byte 0x0000014C
    .4byte etb_80008A38
.size eti_80015F88, 12

.global eti_80015F94
eti_80015F94:
    .4byte fn_801E4618
    .4byte 0x00000140
    .4byte etb_80008A40
.size eti_80015F94, 12

.global eti_80015FA0
eti_80015FA0:
    .4byte fn_801E47F4
    .4byte 0x00000224
    .4byte etb_80008A48
.size eti_80015FA0, 12

.global eti_80015FAC
eti_80015FAC:
    .4byte fn_801E4AB0
    .4byte 0x0000005C
    .4byte etb_80008A50
.size eti_80015FAC, 12

.global eti_80015FB8
eti_80015FB8:
    .4byte fn_801E4B30
    .4byte 0x00000224
    .4byte etb_80008A58
.size eti_80015FB8, 12

.global eti_80015FC4
eti_80015FC4:
    .4byte fn_801E4D88
    .4byte 0x000009CC
    .4byte etb_80008A60
.size eti_80015FC4, 12

.global eti_80015FD0
eti_80015FD0:
    .4byte fn_801E5754
    .4byte 0x00000454
    .4byte etb_80008A68
.size eti_80015FD0, 12

.global eti_80015FDC
eti_80015FDC:
    .4byte fn_801E5BA8
    .4byte 0x000001FC
    .4byte etb_80008A70
.size eti_80015FDC, 12

.global eti_80015FE8
eti_80015FE8:
    .4byte fn_801E5DA4
    .4byte 0x00000224
    .4byte etb_80008A78
.size eti_80015FE8, 12

.global eti_80015FF4
eti_80015FF4:
    .4byte fn_801E5FC8
    .4byte 0x000001FC
    .4byte etb_80008A80
.size eti_80015FF4, 12

.global eti_80016000
eti_80016000:
    .4byte fn_801E61C4
    .4byte 0x00000070
    .4byte etb_80008A88
.size eti_80016000, 12

.global eti_8001600C
eti_8001600C:
    .4byte fn_801E6234
    .4byte 0x000000A0
    .4byte etb_80008A90
.size eti_8001600C, 12

.global eti_80016018
eti_80016018:
    .4byte fn_801E62D4
    .4byte 0x00000048
    .4byte etb_80008A98
.size eti_80016018, 12

.global eti_80016024
eti_80016024:
    .4byte fn_801E631C
    .4byte 0x00000078
    .4byte etb_80008AA0
.size eti_80016024, 12

.global eti_80016030
eti_80016030:
    .4byte fn_801E6394
    .4byte 0x00000044
    .4byte etb_80008AA8
.size eti_80016030, 12

.global eti_8001603C
eti_8001603C:
    .4byte fn_801E63D8
    .4byte 0x00000080
    .4byte etb_80008AB0
.size eti_8001603C, 12

.global eti_80016048
eti_80016048:
    .4byte fn_801E6458
    .4byte 0x00000224
    .4byte etb_80008AB8
.size eti_80016048, 12

.global eti_80016054
eti_80016054:
    .4byte fn_801E667C
    .4byte 0x00000148
    .4byte etb_80008AC0
.size eti_80016054, 12

.global eti_80016060
eti_80016060:
    .4byte fn_801E67C4
    .4byte 0x000002C0
    .4byte etb_80008AC8
.size eti_80016060, 12

.global eti_8001606C
eti_8001606C:
    .4byte fn_801E6A84
    .4byte 0x00000034
    .4byte etb_80008AD0
.size eti_8001606C, 12

.global eti_80016078
eti_80016078:
    .4byte fn_801E6AB8
    .4byte 0x0000006C
    .4byte etb_80008AD8
.size eti_80016078, 12

.global eti_80016084
eti_80016084:
    .4byte fn_801E6B24
    .4byte 0x00000224
    .4byte etb_80008AF4
.size eti_80016084, 12

.text
.balign 4
.global fn_801E44CC
.global fn_801E4618
.global fn_801E4758
.global fn_801E4790
.global fn_801E47F4
.global fn_801E4A18
.global fn_801E4AB0
.global fn_801E4B0C
.global fn_801E4B30
.global fn_801E4D54
.global fn_801E4D74
.global fn_801E4D88
.global fn_801E5754
.global fn_801E5BA8
.global fn_801E5DA4
.global fn_801E5FC8
.global fn_801E61C4
.global fn_801E6234
.global fn_801E62D4
.global fn_801E631C
.global fn_801E6394
.global fn_801E63D8
.global fn_801E6458
.global fn_801E667C
.global fn_801E67C4
.global fn_801E6A84
.global fn_801E6AB8
.global fn_801E6B24

fn_801E44CC:
    stwu 1, -0x30(1)
    mflr 0
    lfs 1, 0x80(3)
    stw 0, 0x34(1)
    lfs 4, 0x84(3)
    stw 31, 0x2c(1)
    mr 31, 6
    lfs 2, 0x88(3)
    stw 30, 0x28(1)
    mr 30, 5
    lfs 3, 0x8c(3)
    mr 3, 4
    stfs 1, 0x10(1)
    addi 4, 1, 0x10
    addi 5, 1, 0x8
    stfs 4, 0x14(1)
    stfs 2, 0x18(1)
    stfs 3, 0x1c(1)
    lfs 0, 0x0(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x10(1)
    lfs 2, 0x4(30)
    fadds 1, 4, 2
    stfs 0, 0x18(1)
    fadds 0, 3, 2
    stfs 1, 0x14(1)
    stfs 0, 0x1c(1)
    bl fn_801CC29C
    lfs 1, 0x0(30)
    cmplwi 31, 0x0
    lfs 0, 0x8(1)
    fadds 0, 1, 0
    stfs 0, 0x0(30)
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fadds 0, 1, 0
    stfs 0, 0x4(30)
    .4byte 0x41820098 # beq .L_801E45FC
    lfs 1, 0x8(1)
    lis 4, lbl_80539D44@ha
    lfs 0, 0xc(1)
    fmuls 3, 1, 1
    .4byte 0xC022C594 # lfs f1, lbl_8053F534@sda21(r0)
    fmuls 2, 0, 0
    lfs 0, lbl_80539D44@l(4)
    fmuls 0, 1, 0
    fadds 4, 3, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_801E45E4
    .4byte 0xC002C590 # lfs f0, lbl_8053F530@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E45AC
    .4byte 0x48000024 # b .L_801E45CC
L_801E45AC:
    frsqrte 3, 4
    .4byte 0xC042C598 # lfs f2, lbl_8053F538@sda21(r0)
    .4byte 0xC002C59C # lfs f0, lbl_8053F53C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801E45CC:
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    fmuls 1, 1, 4
    fmuls 0, 0, 4
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801E45E4:
    lfs 2, 0xc(1)
    lfs 1, 0x8(1)
    .4byte 0xC002C590 # lfs f0, lbl_8053F530@sda21(r0)
    stfs 1, 0x0(31)
    stfs 2, 0x4(31)
    stfs 0, 0x8(31)
L_801E45FC:
    lwz 0, 0x34(1)
    clrlwi 3, 3, 24
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801E4618:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    clrlwi. 0, 5, 24
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr 29, 3
    .4byte 0x4182005C # beq .L_801E4698
    lbz 0, 0x5e8(29)
    lis 3, 0x4330
    lbz 4, 0x5e9(29)
    stw 0, 0x14(1)
    lfs 6, 0x5e0(29)
    stw 3, 0x10(1)
    .4byte 0xC842C588 # lfd f2, lbl_8053F528@sda21(r0)
    lfd 0, 0x10(1)
    stw 4, 0xc(1)
    fsubs 0, 0, 2
    .4byte 0xC062C570 # lfs f3, lbl_8053F510@sda21(r0)
    stw 3, 0x8(1)
    lfs 5, 0x5e4(29)
    lfd 1, 0x8(1)
    fmadds 4, 3, 0, 6
    stfs 6, 0x0(30)
    fsubs 0, 1, 2
    stfs 5, 0x4(30)
    fmadds 0, 3, 0, 5
    stfs 4, 0x8(30)
    stfs 0, 0xc(30)
    .4byte 0x480000A8 # b .L_801E473C
L_801E4698:
    lwz 31, 0x5d8(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801E46B0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E46B4
L_801E46B0:
    addi 3, 3, 0xdc
L_801E46B4:
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820044 # beq .L_801E4700
    .4byte 0xC062C574 # lfs f3, lbl_8053F514@sda21(r0)
    lfs 0, 0x0(3)
    .4byte 0xC042C578 # lfs f2, lbl_8053F518@sda21(r0)
    lfs 1, 0x4(3)
    fadds 0, 3, 0
    lfs 4, 0x8(3)
    lfs 5, 0xc(3)
    fadds 2, 2, 1
    .4byte 0xC022C57C # lfs f1, lbl_8053F51C@sda21(r0)
    fsubs 3, 4, 3
    stfs 0, 0x0(30)
    fsubs 0, 5, 1
    stfs 2, 0x4(30)
    stfs 3, 0x8(30)
    stfs 0, 0xc(30)
    .4byte 0x48000040 # b .L_801E473C
L_801E4700:
    .4byte 0xC062C578 # lfs f3, lbl_8053F518@sda21(r0)
    lfs 0, 0x0(3)
    .4byte 0xC042C580 # lfs f2, lbl_8053F520@sda21(r0)
    lfs 1, 0x4(3)
    fadds 0, 3, 0
    lfs 4, 0x8(3)
    lfs 5, 0xc(3)
    fadds 2, 2, 1
    .4byte 0xC022C584 # lfs f1, lbl_8053F524@sda21(r0)
    fsubs 3, 4, 3
    stfs 0, 0x0(30)
    fsubs 0, 5, 1
    stfs 2, 0x4(30)
    stfs 3, 0x8(30)
    stfs 0, 0xc(30)
L_801E473C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801E4758:
    .4byte 0xC022C5B4 # lfs f1, lbl_8053F554@sda21(r0)
    .4byte 0xC082C11C # lfs f4, lbl_8053F0BC@sda21(r0)
    .4byte 0xC002C5B8 # lfs f0, lbl_8053F558@sda21(r0)
    fmuls 3, 1, 4
    .4byte 0xC022C570 # lfs f1, lbl_8053F510@sda21(r0)
    fmuls 2, 0, 4
    .4byte 0xC002C5BC # lfs f0, lbl_8053F55C@sda21(r0)
    fmuls 1, 1, 4
    stfs 3, 0x80(3)
    fmuls 0, 0, 4
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 0, 0x8c(3)
    blr

fn_801E4790:
    clrlwi. 0, 4, 24
    .4byte 0xC082C11C # lfs f4, lbl_8053F0BC@sda21(r0)
    .4byte 0x41820008 # beq .L_801E47A0
    .4byte 0xC082C5C0 # lfs f4, lbl_8053F560@sda21(r0)
L_801E47A0:
    .4byte 0xC002C5B4 # lfs f0, lbl_8053F554@sda21(r0)
    .4byte 0xC042C5B8 # lfs f2, lbl_8053F558@sda21(r0)
    fmuls 3, 0, 4
    .4byte 0xC022C570 # lfs f1, lbl_8053F510@sda21(r0)
    .4byte 0xC002C5BC # lfs f0, lbl_8053F55C@sda21(r0)
    fmuls 2, 2, 4
    fmuls 1, 1, 4
    stfs 3, 0x60(3)
    fmuls 0, 0, 4
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 0, 0x6c(3)
    lfs 0, 0x60(3)
    stfs 0, 0x70(3)
    lfs 0, 0x64(3)
    stfs 0, 0x74(3)
    lfs 0, 0x68(3)
    stfs 0, 0x78(3)
    lfs 0, 0x6c(3)
    stfs 0, 0x7c(3)
    blr

fn_801E47F4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C9B58@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C9B58@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4844
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
L_801E4844:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E487C
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
L_801E487C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E48B4
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
L_801E48B4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E48EC
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
L_801E48EC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4924
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
L_801E4924:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E495C
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
L_801E495C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4994
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
L_801E4994:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E49CC
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
L_801E49CC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4A04
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
L_801E4A04:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E4A18:
    lhz 4, 0x4(3)
    cmplwi 4, 0x0
    .4byte 0x41820080 # beq .L_801E4AA0
    subi 0, 4, 0x1
    sth 0, 0x4(3)
    lhz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801E4A5C
    .4byte 0xC002C5C8 # lfs f0, lbl_8053F568@sda21(r0)
    li 0, 0x0
    stfs 0, 0x0(3)
    sth 0, 0x4(3)
    sth 0, 0x6(3)
    sth 0, 0x8(3)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    .4byte 0x48000050 # b .L_801E4AA8
L_801E4A5C:
    lfs 1, 0xc(3)
    lis 4, lbl_8052EBC0@ha
    lfs 0, 0x10(3)
    addi 4, 4, lbl_8052EBC0@l
    fsubs 0, 1, 0
    stfs 0, 0xc(3)
    lhz 5, 0x4(3)
    lhz 0, 0x6(3)
    lha 6, 0x8(3)
    subf 0, 5, 0
    lfs 1, 0xc(3)
    mullw 0, 6, 0
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x0(3)
    .4byte 0x4800000C # b .L_801E4AA8
L_801E4AA0:
    .4byte 0xC002C5C8 # lfs f0, lbl_8053F568@sda21(r0)
    stfs 0, 0x0(3)
L_801E4AA8:
    lfs 1, 0x0(3)
    blr

fn_801E4AB0:
    clrlwi. 0, 4, 16
    stwu 1, -0x10(1)
    .4byte 0x4182004C # beq .L_801E4B04
    .4byte 0xC002C5C8 # lfs f0, lbl_8053F568@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC842C5D0 # lfd f2, lbl_8053F570@sda21(r0)
    stfs 0, 0x0(3)
    .4byte 0xC062C5CC # lfs f3, lbl_8053F56C@sda21(r0)
    sth 4, 0x6(3)
    sth 4, 0x4(3)
    sth 5, 0x8(3)
    stfs 1, 0xc(3)
    lhz 0, 0x6(3)
    lfs 1, 0xc(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x10(3)
L_801E4B04:
    addi 1, 1, 0x10
    blr

fn_801E4B0C:
    .4byte 0xC002C5C8 # lfs f0, lbl_8053F568@sda21(r0)
    li 0, 0x0
    stfs 0, 0x0(3)
    sth 0, 0x4(3)
    sth 0, 0x6(3)
    sth 0, 0x8(3)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    blr

fn_801E4B30:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C9C58@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C9C58@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4B80
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
L_801E4B80:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4BB8
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
L_801E4BB8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4BF0
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
L_801E4BF0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4C28
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
L_801E4C28:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4C60
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
L_801E4C60:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4C98
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
L_801E4C98:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4CD0
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
L_801E4CD0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4D08
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
L_801E4D08:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E4D40
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
L_801E4D40:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E4D54:
    lwz 4, 0x230(3)
    li 0, 0x0
    .4byte 0xC002C5D8 # lfs f0, lbl_8053F578@sda21(r0)
    rlwinm 4, 4, 0, 18, 16
    stw 4, 0x230(3)
    stb 0, 0x5ce(3)
    stfs 0, 0x4bc(3)
    blr

fn_801E4D74:
    li 0, 0x32
    .4byte 0xC002C5DC # lfs f0, lbl_8053F57C@sda21(r0)
    stb 0, 0x5ce(3)
    stfs 0, 0x4bc(3)
    blr

fn_801E4D88:
    stwu 1, -0x1080(1)
    mflr 0
    stw 0, 0x1084(1)
    li 0, 0x1078
    stfd 31, 0x1070(1)
    psq_stx 31, 1, 0, 0, 0
    stmw 26, 0x1058(1)
    mr 27, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(27)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x50
    li 7, -0x1
    bl fn_801F7818
    mr 31, 3
    mr 29, 27
    li 30, 0x0
L_801E4DD0:
    lbz 0, 0x30c(29)
    cmplwi 0, 0x0
    .4byte 0x418200F0 # beq .L_801E4EC8
    lwz 28, 0x308(29)
    cmpwi 28, 0x0
    .4byte 0x4080001C # bge .L_801E4E00
    addi 28, 29, 0x308
    mr 3, 28
    bl fn_801D7874
    li 0, 0x0
    stb 0, 0x4(28)
    .4byte 0x480000CC # b .L_801E4EC8
L_801E4E00:
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E4E2C
    addi 28, 29, 0x308
    mr 3, 28
    bl fn_801D7874
    li 0, 0x0
    stb 0, 0x4(28)
    .4byte 0x480000A0 # b .L_801E4EC8
L_801E4E2C:
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_801E4E60
    lwz 4, 0x4(3)
    lwz 0, 0x4(27)
    cmpw 4, 0
    .4byte 0x4082001C # bne .L_801E4E60
    lhz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_801E4E60
    lwz 0, 0x90(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801E4E78
L_801E4E60:
    addi 28, 29, 0x308
    mr 3, 28
    bl fn_801D7874
    li 0, 0x0
    stb 0, 0x4(28)
    .4byte 0x48000054 # b .L_801E4EC8
L_801E4E78:
    addi 7, 1, 0x50
    li 6, 0x0
    mtctr 31
    cmpwi 31, 0x0
    .4byte 0x40810024 # ble .L_801E4EAC
L_801E4E8C:
    lwz 4, 0x0(7)
    lwz 5, 0x198(3)
    lwz 0, 0x198(4)
    cmpw 5, 0
    .4byte 0x41820010 # beq .L_801E4EAC
    addi 7, 7, 0x4
    addi 6, 6, 0x1
    .4byte 0x4200FFE4 # bdnz .L_801E4E8C
L_801E4EAC:
    cmpw 6, 31
    .4byte 0x41800018 # blt .L_801E4EC8
    addi 28, 29, 0x308
    mr 3, 28
    bl fn_801D7874
    li 0, 0x0
    stb 0, 0x4(28)
L_801E4EC8:
    addi 30, 30, 0x1
    addi 29, 29, 0x14
    cmpwi 30, 0x10
    .4byte 0x4180FEFC # blt .L_801E4DD0
    addi 29, 1, 0x50
    li 28, 0x0
    .4byte 0x4800084C # b .L_801E572C
L_801E4EE4:
    lwz 30, 0x0(29)
    cmplwi 30, 0x0
    .4byte 0x41820838 # beq .L_801E5724
    lbz 0, 0x11c(30)
    cmplwi 0, 0x0
    .4byte 0x4182082C # beq .L_801E5724
    lhz 0, 0x94(30)
    cmplwi 0, 0x1
    .4byte 0x41820820 # beq .L_801E5724
    lwz 0, 0x90(30)
    cmplwi 0, 0x0
    .4byte 0x40820814 # bne .L_801E5724
    lwz 7, 0x1a0(30)
    li 5, 0x0
    subis 0, 7, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x408200B0 # bne .L_801E4FD4
    li 0, 0x4
    mr 4, 5
    mr 6, 27
    mtctr 0
L_801E4F38:
    lwz 3, 0x308(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E4F5C
    lbz 0, 0x30c(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E4F5C
    li 5, 0x1
    .4byte 0x4800007C # b .L_801E4FD4
L_801E4F5C:
    lwz 3, 0x31c(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E4F80
    lbz 0, 0x320(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E4F80
    li 5, 0x1
    .4byte 0x48000058 # b .L_801E4FD4
L_801E4F80:
    lwz 3, 0x330(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E4FA4
    lbz 0, 0x334(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E4FA4
    li 5, 0x1
    .4byte 0x48000034 # b .L_801E4FD4
L_801E4FA4:
    lwz 3, 0x344(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E4FC8
    lbz 0, 0x348(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E4FC8
    li 5, 0x1
    .4byte 0x48000010 # b .L_801E4FD4
L_801E4FC8:
    addi 6, 6, 0x50
    addi 4, 4, 0x3
    .4byte 0x4200FF68 # bdnz .L_801E4F38
L_801E4FD4:
    clrlwi. 0, 5, 24
    .4byte 0x418201A0 # beq .L_801E5178
    subis 0, 7, 0x4842
    li 5, 0x0
    cmplwi 0, 0x4d42
    .4byte 0x408200B0 # bne .L_801E5098
    li 0, 0x4
    mr 4, 5
    mr 6, 27
    mtctr 0
L_801E4FFC:
    lwz 3, 0x308(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5020
    lbz 0, 0x30d(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5020
    li 5, 0x1
    .4byte 0x4800007C # b .L_801E5098
L_801E5020:
    lwz 3, 0x31c(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5044
    lbz 0, 0x321(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5044
    li 5, 0x1
    .4byte 0x48000058 # b .L_801E5098
L_801E5044:
    lwz 3, 0x330(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5068
    lbz 0, 0x335(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5068
    li 5, 0x1
    .4byte 0x48000034 # b .L_801E5098
L_801E5068:
    lwz 3, 0x344(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E508C
    lbz 0, 0x349(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E508C
    li 5, 0x1
    .4byte 0x48000010 # b .L_801E5098
L_801E508C:
    addi 6, 6, 0x50
    addi 4, 4, 0x3
    .4byte 0x4200FF68 # bdnz .L_801E4FFC
L_801E5098:
    clrlwi. 0, 5, 24
    .4byte 0x418200DC # beq .L_801E5178
    .4byte 0xC002C5D8 # lfs f0, lbl_8053F578@sda21(r0)
    li 0, 0x10
    mr 5, 27
    li 4, 0x0
    stfs 0, 0x20(1)
    stfs 0, 0x24(1)
    psq_l 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    mtctr 0
L_801E50CC:
    lwz 3, 0x308(5)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820090 # bne .L_801E5168
    lbz 0, 0x30c(5)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_801E5168
    lbz 0, 0x30d(5)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_801E5168
    mulli 3, 4, 0x14
    addi 26, 3, 0x308
    add 26, 27, 26
    mr 3, 26
    bl fn_801D7830
    lfs 0, 0x14(30)
    psq_l 1, 0xc(30), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x8(26), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x10(26), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 1, 2, 0
    .4byte 0xC002C5D8 # lfs f0, lbl_8053F578@sda21(r0)
    psq_st 3, 0x8(1), 0, 0
    psq_st 1, 0x10(1), 1, 0
    lfs 1, 0x10(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801E5154
    stfs 0, 0x8(26)
    stfs 0, 0xc(26)
    stfs 0, 0x10(1)
    stfs 0, 0x10(26)
L_801E5154:
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x480005C0 # b .L_801E5724
L_801E5168:
    addi 5, 5, 0x14
    addi 4, 4, 0x1
    .4byte 0x4200FF5C # bdnz .L_801E50CC
    .4byte 0x480005B0 # b .L_801E5724
L_801E5178:
    lfs 3, 0x10(27)
    li 5, 0x0
    lfs 0, 0x1c(27)
    lfs 2, 0xc(27)
    lfs 1, 0x18(27)
    fsubs 3, 3, 0
    lfs 0, 0xc(30)
    fsubs 2, 2, 1
    stfs 0, 0x44(1)
    lfs 0, 0x10(30)
    stfs 0, 0x48(1)
    lfs 0, 0x14(30)
    stfs 0, 0x4c(1)
    lwz 7, 0x1a0(30)
    subis 0, 7, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x408200B0 # bne .L_801E5268
    li 0, 0x4
    mr 4, 5
    mr 6, 27
    mtctr 0
L_801E51CC:
    lwz 3, 0x308(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E51F0
    lbz 0, 0x30c(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E51F0
    li 5, 0x1
    .4byte 0x4800007C # b .L_801E5268
L_801E51F0:
    lwz 3, 0x31c(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5214
    lbz 0, 0x320(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5214
    li 5, 0x1
    .4byte 0x48000058 # b .L_801E5268
L_801E5214:
    lwz 3, 0x330(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5238
    lbz 0, 0x334(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5238
    li 5, 0x1
    .4byte 0x48000034 # b .L_801E5268
L_801E5238:
    lwz 3, 0x344(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E525C
    lbz 0, 0x348(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E525C
    li 5, 0x1
    .4byte 0x48000010 # b .L_801E5268
L_801E525C:
    addi 6, 6, 0x50
    addi 4, 4, 0x3
    .4byte 0x4200FF68 # bdnz .L_801E51CC
L_801E5268:
    clrlwi. 0, 5, 24
    .4byte 0x418200E0 # beq .L_801E534C
    subis 0, 7, 0x4842
    li 5, 0x0
    cmplwi 0, 0x4d42
    .4byte 0x408200B0 # bne .L_801E532C
    li 0, 0x4
    mr 4, 5
    mr 6, 27
    mtctr 0
L_801E5290:
    lwz 3, 0x308(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E52B4
    lbz 0, 0x30d(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E52B4
    li 5, 0x1
    .4byte 0x4800007C # b .L_801E532C
L_801E52B4:
    lwz 3, 0x31c(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E52D8
    lbz 0, 0x321(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E52D8
    li 5, 0x1
    .4byte 0x48000058 # b .L_801E532C
L_801E52D8:
    lwz 3, 0x330(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E52FC
    lbz 0, 0x335(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E52FC
    li 5, 0x1
    .4byte 0x48000034 # b .L_801E532C
L_801E52FC:
    lwz 3, 0x344(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5320
    lbz 0, 0x349(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5320
    li 5, 0x1
    .4byte 0x48000010 # b .L_801E532C
L_801E5320:
    addi 6, 6, 0x50
    addi 4, 4, 0x3
    .4byte 0x4200FF68 # bdnz .L_801E5290
L_801E532C:
    clrlwi. 0, 5, 24
    .4byte 0x4082001C # bne .L_801E534C
    lfs 1, 0x44(1)
    lfs 0, 0x48(1)
    fadds 1, 1, 2
    fadds 0, 0, 3
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
L_801E534C:
    lfs 3, 0x44(1)
    lfs 2, 0xc(27)
    lfs 1, 0x48(1)
    lfs 0, 0x10(27)
    fsubs 2, 3, 2
    lfs 3, 0x47c(27)
    fsubs 1, 1, 0
    fmuls 2, 2, 2
    fmuls 0, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408203A4 # bne .L_801E5724
    addi 3, 27, 0x464
    addi 4, 1, 0x44
    addi 5, 1, 0x2c
    bl fn_801EB00C
    lwz 0, 0x230(27)
    rlwinm. 8, 0, 0, 17, 17
    .4byte 0x408201A8 # bne .L_801E5544
    lwz 7, 0x1a0(30)
    li 5, 0x0
    subis 0, 7, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x408200B0 # bne .L_801E5460
    li 0, 0x4
    mr 4, 5
    mr 6, 27
    mtctr 0
L_801E53C4:
    lwz 3, 0x308(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E53E8
    lbz 0, 0x30c(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E53E8
    li 5, 0x1
    .4byte 0x4800007C # b .L_801E5460
L_801E53E8:
    lwz 3, 0x31c(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E540C
    lbz 0, 0x320(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E540C
    li 5, 0x1
    .4byte 0x48000058 # b .L_801E5460
L_801E540C:
    lwz 3, 0x330(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5430
    lbz 0, 0x334(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5430
    li 5, 0x1
    .4byte 0x48000034 # b .L_801E5460
L_801E5430:
    lwz 3, 0x344(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5454
    lbz 0, 0x348(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5454
    li 5, 0x1
    .4byte 0x48000010 # b .L_801E5460
L_801E5454:
    addi 6, 6, 0x50
    addi 4, 4, 0x3
    .4byte 0x4200FF68 # bdnz .L_801E53C4
L_801E5460:
    clrlwi. 0, 5, 24
    .4byte 0x418200E0 # beq .L_801E5544
    subis 0, 7, 0x4842
    li 5, 0x0
    cmplwi 0, 0x4d42
    .4byte 0x408200B0 # bne .L_801E5524
    li 0, 0x4
    mr 4, 5
    mr 6, 27
    mtctr 0
L_801E5488:
    lwz 3, 0x308(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E54AC
    lbz 0, 0x30d(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E54AC
    li 5, 0x1
    .4byte 0x4800007C # b .L_801E5524
L_801E54AC:
    lwz 3, 0x31c(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E54D0
    lbz 0, 0x321(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E54D0
    li 5, 0x1
    .4byte 0x48000058 # b .L_801E5524
L_801E54D0:
    lwz 3, 0x330(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E54F4
    lbz 0, 0x335(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E54F4
    li 5, 0x1
    .4byte 0x48000034 # b .L_801E5524
L_801E54F4:
    lwz 3, 0x344(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5518
    lbz 0, 0x349(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5518
    li 5, 0x1
    .4byte 0x48000010 # b .L_801E5524
L_801E5518:
    addi 6, 6, 0x50
    addi 4, 4, 0x3
    .4byte 0x4200FF68 # bdnz .L_801E5488
L_801E5524:
    clrlwi. 0, 5, 24
    .4byte 0x4082001C # bne .L_801E5544
    mr 3, 27
    mr 4, 30
    addi 5, 1, 0x2c
    li 6, 0x0
    bl fn_801E5BA8
    .4byte 0x480001E4 # b .L_801E5724
L_801E5544:
    cmplwi 8, 0x0
    .4byte 0x418201DC # beq .L_801E5724
    psq_l 3, 0x2c(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x34(1)
    ps_mul 3, 3, 3
    .4byte 0xC022C5E0 # lfs f1, lbl_8053F580@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x408201A4 # bne .L_801E5724
    .4byte 0xC002C5D8 # lfs f0, lbl_8053F578@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x4081012C # ble .L_801E56B8
    stfs 0, 0x14(1)
    li 5, 0x0
    stfs 0, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x408200B0 # bne .L_801E5668
    li 0, 0x4
    mr 4, 5
    mr 6, 27
    mtctr 0
L_801E55CC:
    lwz 3, 0x308(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E55F0
    lbz 0, 0x30c(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E55F0
    li 5, 0x1
    .4byte 0x4800007C # b .L_801E5668
L_801E55F0:
    lwz 3, 0x31c(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5614
    lbz 0, 0x320(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5614
    li 5, 0x1
    .4byte 0x48000058 # b .L_801E5668
L_801E5614:
    lwz 3, 0x330(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E5638
    lbz 0, 0x334(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E5638
    li 5, 0x1
    .4byte 0x48000034 # b .L_801E5668
L_801E5638:
    lwz 3, 0x344(6)
    lwz 0, 0x198(30)
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_801E565C
    lbz 0, 0x348(6)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801E565C
    li 5, 0x1
    .4byte 0x48000010 # b .L_801E5668
L_801E565C:
    addi 6, 6, 0x50
    addi 4, 4, 0x3
    .4byte 0x4200FF68 # bdnz .L_801E55CC
L_801E5668:
    clrlwi. 0, 5, 24
    .4byte 0x4082004C # bne .L_801E56B8
    li 0, 0x10
    mr 4, 27
    li 3, 0x0
    mtctr 0
L_801E5680:
    lbz 0, 0x30c(4)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801E56AC
    mulli 4, 3, 0x14
    lwz 3, 0x198(30)
    li 0, 0x1
    addi 4, 4, 0x308
    add 4, 27, 4
    stw 3, 0x0(4)
    stb 0, 0x4(4)
    .4byte 0x48000010 # b .L_801E56B8
L_801E56AC:
    addi 4, 4, 0x14
    addi 3, 3, 0x1
    .4byte 0x4200FFCC # bdnz .L_801E5680
L_801E56B8:
    lfs 0, 0x4c(1)
    addi 5, 1, 0x2c
    lfs 1, 0x44(1)
    stfs 0, 0x40(1)
    lfs 0, 0x48(1)
    psq_l 3, 0x40(1), 1, 0
    psq_l 2, 0x8(5), 1, 0
    stfs 1, 0x38(1)
    ps_add 1, 3, 2
    psq_l 2, 0x0(5), 0, 0
    stfs 0, 0x3c(1)
    lfs 0, 0x478(27)
    psq_st 1, 0x40(1), 1, 0
    psq_l 3, 0x38(1), 0, 0
    lfs 1, 0x40(1)
    ps_add 2, 3, 2
    fcmpo cr0, 1, 0
    psq_st 2, 0x38(1), 0, 0
    .4byte 0x40810014 # ble .L_801E5714
    mr 3, 27
    mr 4, 30
    li 6, 0x1
    bl fn_801E5BA8
L_801E5714:
    psq_l 1, 0x38(1), 0, 0
    lfs 0, 0x40(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
L_801E5724:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_801E572C:
    cmpw 28, 31
    .4byte 0x4180F7B4 # blt .L_801E4EE4
    li 0, 0x1078
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x1070(1)
    lmw 26, 0x1058(1)
    lwz 0, 0x1084(1)
    mtlr 0
    addi 1, 1, 0x1080
    blr

fn_801E5754:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 29, 3
    li 30, 0x0
    mr 28, 29
L_801E5780:
    lbz 0, 0x2a8(28)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_801E5800
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801E57D0
    mr 3, 30
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_801E57D0
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801E57D0
    lwz 31, 0x4(29)
    mr 3, 30
    bl fn_8023DE58
    cmpw 3, 31
    .4byte 0x41820034 # beq .L_801E5800
L_801E57D0:
    addi 31, 28, 0x2a8
    mr 3, 31
    bl fn_801D789C
    li 0, 0x0
    mr 3, 30
    stb 0, 0x0(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801E5800
    mr 3, 30
    li 4, 0x0
    bl fn_80230224
L_801E5800:
    addi 30, 30, 0x1
    addi 28, 28, 0x18
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_801E5780
    li 30, 0x0
    mr 31, 29
L_801E5818:
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_801E5838
    .4byte 0x40810350 # ble .L_801E5B74
    lwz 3, 0x2ac(31)
    subi 0, 3, 0x1
    stw 0, 0x2ac(31)
    .4byte 0x48000340 # b .L_801E5B74
L_801E5838:
    lbz 0, 0x2a8(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801E5860
    lfs 1, 0x47c(29)
    mr 3, 29
    mr 4, 30
    addi 5, 29, 0xc
    bl fn_801D08B4
    clrlwi. 0, 3, 24
    .4byte 0x41820318 # beq .L_801E5B74
L_801E5860:
    lfs 3, 0x10(29)
    mr 3, 30
    lfs 2, 0x1c(29)
    lfs 1, 0xc(29)
    lfs 0, 0x18(29)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    stfs 1, 0x28(1)
    lfs 2, 0x4(3)
    stfs 2, 0x2c(1)
    lfs 0, 0x8(3)
    stfs 0, 0x30(1)
    lbz 0, 0x2a8(31)
    cmplwi 0, 0x0
    .4byte 0x41820064 # beq .L_801E5904
    fadds 1, 1, 31
    fadds 0, 2, 30
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820048 # beq .L_801E5904
    lwz 4, 0x2b0(31)
    lis 3, 0x6666
    addi 0, 3, 0x6667
    addi 3, 4, 0x1
    stw 3, 0x2b0(31)
    lwz 4, 0x2b0(31)
    mulhw 0, 0, 4
    srawi 0, 0, 4
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x28
    subf. 0, 0, 4
    .4byte 0x40820014 # bne .L_801E5904
    mr 3, 30
    li 4, 0xa
    li 5, 0x0
    bl fn_80236074
L_801E5904:
    addi 3, 29, 0x464
    addi 4, 1, 0x28
    addi 5, 1, 0x10
    bl fn_801EB00C
    lfs 1, 0x18(1)
    .4byte 0xC002C5D8 # lfs f0, lbl_8053F578@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810208 # ble .L_801E5B28
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820060 # beq .L_801E598C
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_801E598C
    mr 3, 30
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_801E598C
    mr 3, 30
    bl fn_80236BEC
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_801E598C
    mr 3, 30
    bl fn_80230C6C
    mr 3, 30
    bl fn_80230AD4
    li 0, 0x1
    mr 3, 30
    stb 0, 0x2a8(31)
    bl fn_80230CFC
    mr 4, 3
    addi 3, 31, 0x2b4
    bl fn_8021BD18
L_801E598C:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_801E59E8
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x418201D0 # beq .L_801E5B74
    mr 3, 30
    bl fn_80236BEC
    clrlwi. 0, 3, 24
    .4byte 0x408201C0 # bne .L_801E5B74
    lfs 1, 0x10(1)
    mr 3, 30
    lfs 0, 0x14(1)
    addi 4, 1, 0x10
    fadds 1, 1, 31
    fadds 0, 0, 30
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_8023DFF4
    mr 3, 30
    bl fn_8022CD48
    .4byte 0x48000190 # b .L_801E5B74
L_801E59E8:
    lfs 2, 0x28(1)
    addi 3, 31, 0x2b4
    lfs 1, 0x2c(1)
    lfs 0, 0x30(1)
    stfs 2, 0x1c(1)
    psq_l 2, 0x10(1), 0, 0
    stfs 1, 0x20(1)
    psq_l 1, 0x18(1), 1, 0
    stfs 0, 0x24(1)
    psq_l 3, 0x1c(1), 0, 0
    psq_l 0, 0x24(1), 1, 0
    ps_add 2, 3, 2
    ps_add 0, 0, 1
    psq_st 2, 0x1c(1), 0, 0
    psq_st 0, 0x24(1), 1, 0
    bl fn_8021BCBC
    lwz 5, 0x2b4(31)
    mr 3, 30
    addi 4, 1, 0x1c
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x0
    bl fn_80230498
    mr 3, 30
    bl fn_8022CB94
    lfs 3, 0x28(1)
    li 28, 0x0
    lfs 2, 0x2c(1)
    li 27, 0x0
    lfs 1, 0x10(1)
    li 26, 0x0
    lfs 0, 0x14(1)
    fsubs 1, 3, 1
    stfs 3, 0x8(1)
    fsubs 0, 2, 0
    stfs 2, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820024 # bne .L_801E5AB0
    mr 3, 30
    addi 5, 1, 0x8
    li 28, 0x1
    li 4, 0x0
    li 6, 0x19
    bl fn_80238548
    mr 26, 3
    .4byte 0x48000030 # b .L_801E5ADC
L_801E5AB0:
    lfs 1, 0x24(1)
    lfs 0, 0x478(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810020 # ble .L_801E5ADC
    lwz 4, 0x114(29)
    mr 3, 30
    addi 5, 1, 0x8
    li 27, 0x1
    li 6, 0x17
    bl fn_80238548
    mr 26, 3
L_801E5ADC:
    clrlwi. 0, 28, 24
    .4byte 0x4082000C # bne .L_801E5AEC
    clrlwi. 0, 27, 24
    .4byte 0x4182008C # beq .L_801E5B74
L_801E5AEC:
    mr 3, 30
    li 4, 0x0
    bl fn_80230224
    addi 3, 31, 0x2a8
    bl fn_801D789C
    li 3, 0x0
    clrlwi. 0, 26, 24
    stb 3, 0x2a8(31)
    .4byte 0x41820010 # beq .L_801E5B1C
    li 0, 0x78
    stw 0, 0x2ac(31)
    .4byte 0x4800005C # b .L_801E5B74
L_801E5B1C:
    li 0, 0x1e
    stw 0, 0x2ac(31)
    .4byte 0x48000050 # b .L_801E5B74
L_801E5B28:
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820044 # beq .L_801E5B74
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x8(3)
    lfs 0, 0x478(29)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820028 # beq .L_801E5B74
    mr 3, 30
    bl fn_80236BEC
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801E5B74
    mr 3, 30
    addi 4, 1, 0x10
    bl fn_8023DFF4
    mr 3, 30
    bl fn_8022CD48
L_801E5B74:
    addi 30, 30, 0x1
    addi 31, 31, 0x18
    cmpwi 30, 0x4
    .4byte 0x4180FC98 # blt .L_801E5818
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801E5BA8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x10
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    lwz 3, 0x198(4)
    mr 4, 30
    stw 29, 0x14(1)
    mr 29, 5
    mtctr 0
L_801E5BDC:
    lbz 0, 0x30c(4)
    cmplwi 0, 0x0
    .4byte 0x41820198 # beq .L_801E5D7C
    lwz 0, 0x308(4)
    cmpw 0, 3
    .4byte 0x4082018C # bne .L_801E5D7C
    clrlwi. 0, 6, 24
    .4byte 0x4082009C # bne .L_801E5C94
    lfs 5, 0x4(29)
    lis 3, lbl_80539D44@ha
    lfs 4, 0x0(29)
    fmuls 2, 5, 5
    .4byte 0xC022C5E0 # lfs f1, lbl_8053F580@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmadds 6, 4, 4, 2
    fmuls 0, 1, 0
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801E5C64
    .4byte 0xC002C5D8 # lfs f0, lbl_8053F578@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E5C3C
    .4byte 0x48000024 # b .L_801E5C5C
L_801E5C3C:
    frsqrte 3, 6
    .4byte 0xC042C5E4 # lfs f2, lbl_8053F584@sda21(r0)
    .4byte 0xC002C5E8 # lfs f0, lbl_8053F588@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_801E5C5C:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_801E5C64:
    .4byte 0xC022C5EC # lfs f1, lbl_8053F58C@sda21(r0)
    mulli 3, 31, 0x14
    .4byte 0xC002C5F0 # lfs f0, lbl_8053F590@sda21(r0)
    li 0, 0x1
    fmuls 4, 4, 1
    add 3, 30, 3
    fmuls 5, 5, 1
    stfs 4, 0x310(3)
    stfs 5, 0x314(3)
    stfs 0, 0x318(3)
    stb 0, 0x30d(3)
    .4byte 0x480000F8 # b .L_801E5D88
L_801E5C94:
    .4byte 0xC022C5F4 # lfs f1, lbl_8053F594@sda21(r0)
    mr 3, 30
    addi 4, 30, 0xc
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x4180003C # blt .L_801E5CE4
    mulli 0, 4, 0x18
    add 3, 30, 0
    lbz 0, 0x2a8(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801E5CE4
    mr 3, 30
    bl fn_801D0280
    lis 4, lbl_8052EBC0@ha
    rlwinm 0, 3, 30, 18, 28
    addi 4, 4, lbl_8052EBC0@l
    add 3, 4, 0
    lfsx 5, 4, 0
    lfs 6, 0x4(3)
    .4byte 0x4800006C # b .L_801E5D4C
L_801E5CE4:
    lfs 6, 0x4(29)
    lis 3, lbl_80539D44@ha
    lfs 5, 0x0(29)
    fmuls 2, 6, 6
    .4byte 0xC022C5E0 # lfs f1, lbl_8053F580@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmadds 4, 5, 5, 2
    fmuls 0, 1, 0
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801E5D4C
    .4byte 0xC002C5D8 # lfs f0, lbl_8053F578@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E5D24
    .4byte 0x48000024 # b .L_801E5D44
L_801E5D24:
    frsqrte 3, 4
    .4byte 0xC042C5E4 # lfs f2, lbl_8053F584@sda21(r0)
    .4byte 0xC002C5E8 # lfs f0, lbl_8053F588@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801E5D44:
    fmuls 5, 5, 4
    fmuls 6, 6, 4
L_801E5D4C:
    .4byte 0xC022C5F8 # lfs f1, lbl_8053F598@sda21(r0)
    mulli 3, 31, 0x14
    .4byte 0xC002C5E8 # lfs f0, lbl_8053F588@sda21(r0)
    li 0, 0x1
    fmuls 5, 5, 1
    add 3, 30, 3
    fmuls 6, 6, 1
    stfs 5, 0x310(3)
    stfs 6, 0x314(3)
    stfs 0, 0x318(3)
    stb 0, 0x30d(3)
    .4byte 0x48000010 # b .L_801E5D88
L_801E5D7C:
    addi 4, 4, 0x14
    addi 31, 31, 0x1
    .4byte 0x4200FE58 # bdnz .L_801E5BDC
L_801E5D88:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801E5DA4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C9D58@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C9D58@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5DF4
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
L_801E5DF4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5E2C
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
L_801E5E2C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5E64
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
L_801E5E64:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5E9C
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
L_801E5E9C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5ED4
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
L_801E5ED4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5F0C
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
L_801E5F0C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5F44
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
L_801E5F44:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5F7C
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
L_801E5F7C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E5FB4
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
L_801E5FB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E5FC8:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    mr 30, 3
    addi 3, 30, 0x2a8
    bl fn_801DA938
    lis 5, 0x4943
    mr 4, 3
    addi 3, 5, 0x4542
    bl fn_804032E8
    mr. 31, 3
    .4byte 0x418201B0 # beq .L_801E61AC
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801E6078
L_801E6018:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801E6078:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801E6018
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820058 # beq .L_801E614C
    addi 3, 30, 0x2a8
    bl fn_801DA904
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_801E614C
    .4byte 0xC042C600 # lfs f2, lbl_8053F5A0@sda21(r0)
    addi 0, 1, 0x8
    .4byte 0xC002C608 # lfs f0, lbl_8053F5A8@sda21(r0)
    .4byte 0xC022C604 # lfs f1, lbl_8053F5A4@sda21(r0)
    stfs 2, 0x14(1)
    stfs 2, 0x24(1)
    stfs 2, 0x34(1)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 2, 0x10(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 2, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 0, 0x30(1)
    stw 0, 0x50(1)
L_801E614C:
    bl fn_801DAC6C
    bl fn_801DAD2C
    lbz 7, 0x4c(1)
    mr 4, 31
    lbz 6, 0x4d(1)
    addi 5, 1, 0x38
    lbz 0, 0x4e(1)
    add 7, 7, 3
    add 6, 6, 3
    stb 7, 0x4c(1)
    add 0, 0, 3
    .4byte 0xC022C600 # lfs f1, lbl_8053F5A0@sda21(r0)
    stb 6, 0x4d(1)
    mr 3, 30
    li 6, -0x1
    stb 0, 0x4e(1)
    lwz 0, 0x248(30)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_801E61A0
    fmr 2, 1
    .4byte 0x48000008 # b .L_801E61A4
L_801E61A0:
    .4byte 0xC042C60C # lfs f2, lbl_8053F5AC@sda21(r0)
L_801E61A4:
    .4byte 0xC062C600 # lfs f3, lbl_8053F5A0@sda21(r0)
    bl fn_801EFD34
L_801E61AC:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_801E61C4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022C60C # lfs f1, lbl_8053F5AC@sda21(r0)
    li 5, 0x0
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    li 6, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    lfs 0, 0x10(3)
    addi 3, 31, 0x2c8
    lfs 2, 0x14(31)
    fadds 1, 1, 0
    lfs 0, 0xc(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 2, 0x10(1)
    bl fn_801CB71C
    addi 3, 31, 0x2cc
    addi 4, 1, 0x8
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB71C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801E6234:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022C60C # lfs f1, lbl_8053F5AC@sda21(r0)
    li 5, 0x25c
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    li 8, 0x0
    li 9, 0x0
    lfs 0, 0x10(3)
    li 10, 0x1
    lfs 3, 0x14(3)
    fadds 2, 1, 0
    lfs 0, 0xc(3)
    .4byte 0xC022C608 # lfs f1, lbl_8053F5A8@sda21(r0)
    stfs 0, 0x8(1)
    stfs 2, 0xc(1)
    stfs 3, 0x10(1)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    stw 3, 0x2c8(31)
    addi 4, 1, 0x8
    .4byte 0xC022C608 # lfs f1, lbl_8053F5A8@sda21(r0)
    li 5, 0x25d
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2cc(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801E62D4:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    .4byte 0xC022C608 # lfs f1, lbl_8053F5A8@sda21(r0)
    stw 0, 0x14(1)
    addi 4, 4, 0xc
    lwz 3, 0x4(3)
    li 5, 0x259
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E631C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022C608 # lfs f1, lbl_8053F5A8@sda21(r0)
    li 5, 0x25a
    stw 0, 0x14(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x4(3)
    addi 4, 31, 0xc
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022C608 # lfs f1, lbl_8053F5A8@sda21(r0)
    li 5, 0x25b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E6394:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x2c0(3)
    bl fn_801EE434
    lwz 3, 0x2c4(31)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2c0(31)
    stw 0, 0x2c4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E63D8:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022C608 # lfs f1, lbl_8053F5A8@sda21(r0)
    li 5, 0x25e
    stw 0, 0x14(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    addi 4, 31, 0xc
    li 9, 0x0
    lwz 3, 0x4(3)
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2c0(31)
    addi 4, 31, 0xc
    .4byte 0xC022C608 # lfs f1, lbl_8053F5A8@sda21(r0)
    li 5, 0x25f
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2c4(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E6458:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C9E58@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C9E58@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E64A8
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
L_801E64A8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E64E0
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
L_801E64E0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6518
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
L_801E6518:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6550
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
L_801E6550:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6588
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
L_801E6588:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E65C0
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
L_801E65C0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E65F8
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
L_801E65F8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6630
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
L_801E6630:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6668
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
L_801E6668:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E667C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
    lwz 3, 0x4(3)
    addi 0, 3, 0x1
    stw 0, 0x4(28)
    lwz 0, 0x4(28)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801E66C0
    li 0, 0x0
    stw 0, 0x4(28)
L_801E66C0:
    lwz 0, 0x0(28)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801E670C
    .4byte 0x40800014 # bge .L_801E66E0
    cmpwi 0, 0x0
    .4byte 0x418200CC # beq .L_801E67A0
    .4byte 0x40800018 # bge .L_801E66F0
    .4byte 0x480000C4 # b .L_801E67A0
L_801E66E0:
    cmpwi 0, 0x4
    .4byte 0x418200B8 # beq .L_801E679C
    .4byte 0x408000B8 # bge .L_801E67A0
    .4byte 0x48000094 # b .L_801E6780
L_801E66F0:
    lwz 0, 0x4(28)
    cmpwi 0, 0x190
    .4byte 0x418000A8 # blt .L_801E67A0
    mr 3, 28
    li 4, 0x2
    bl fn_801E67C4
    .4byte 0x48000098 # b .L_801E67A0
L_801E670C:
    addi 3, 28, 0x10
    bl fn_801D1C18
    lwz 30, 0x20(28)
    li 31, 0x0
L_801E671C:
    addi 0, 31, 0xc
    lbzx 0, 28, 0
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_801E6754
    mr 3, 31
    bl fn_8023E724
    mr 4, 3
    mr 3, 31
    mr 5, 30
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_801E6754:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFC0 # blt .L_801E671C
    addi 3, 28, 0x10
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801E67A0
    mr 3, 28
    li 4, 0x3
    bl fn_801E67C4
    .4byte 0x48000024 # b .L_801E67A0
L_801E6780:
    lwz 0, 0x4(28)
    cmpwi 0, 0x82
    .4byte 0x41800018 # blt .L_801E67A0
    mr 3, 28
    li 4, 0x4
    bl fn_801E67C4
    .4byte 0x48000008 # b .L_801E67A0
L_801E679C:
    li 29, 0x1
L_801E67A0:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801E67C4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 4
    cmpwi 31, 0x3
    mr 30, 3
    .4byte 0x41820194 # beq .L_801E6974
    .4byte 0x40800014 # bge .L_801E67F8
    cmpwi 31, 0x1
    .4byte 0x41820018 # beq .L_801E6804
    .4byte 0x4080013C # bge .L_801E692C
    .4byte 0x48000270 # b .L_801E6A64
L_801E67F8:
    cmpwi 31, 0x5
    .4byte 0x40800268 # bge .L_801E6A64
    .4byte 0x48000238 # b .L_801E6A38
L_801E6804:
    li 0, 0x0
    stb 0, 0xc(30)
    stb 0, 0xd(30)
    stb 0, 0xe(30)
    stb 0, 0xf(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    mr 28, 3
    li 26, 0x0
    .4byte 0x48000094 # b .L_801E68BC
L_801E682C:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801E6858
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801E6858
    addi 0, 26, 0xc
    li 3, 0x1
    stbx 3, 30, 0
L_801E6858:
    addi 27, 26, 0x1
    li 29, 0x1
    .4byte 0x48000050 # b .L_801E68B0
L_801E6864:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_801E68AC
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801E68AC
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_801E68AC
    mr 3, 27
    bl fn_802349EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801E68AC
    addi 0, 27, 0xc
    stbx 29, 30, 0
L_801E68AC:
    addi 27, 27, 0x1
L_801E68B0:
    cmpwi 27, 0x4
    .4byte 0x4180FFB0 # blt .L_801E6864
    addi 26, 26, 0x1
L_801E68BC:
    cmpw 26, 28
    .4byte 0x4180FF6C # blt .L_801E682C
    li 26, 0x0
L_801E68C8:
    addi 0, 26, 0xc
    lbzx 0, 30, 0
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_801E6900
    mr 3, 26
    bl fn_8023E724
    mr 4, 3
    mr 3, 26
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_801E6900:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFC0 # blt .L_801E68C8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458F9C
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1
    bl fn_80458F04
    .4byte 0x4800013C # b .L_801E6A64
L_801E692C:
    addi 3, 30, 0x10
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    li 26, 0x0
    lis 29, 0x1
L_801E6948:
    addi 0, 26, 0xc
    lbzx 0, 30, 0
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801E6964
    mr 3, 26
    addi 4, 29, 0x1
    bl fn_80230FD0
L_801E6964:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFDC # blt .L_801E6948
    .4byte 0x480000F4 # b .L_801E6A64
L_801E6974:
    li 26, 0x0
L_801E6978:
    addi 0, 26, 0xc
    lbzx 0, 30, 0
    cmplwi 0, 0x0
    .4byte 0x418200A4 # beq .L_801E6A28
    mr 3, 26
    bl fn_8023E724
    lfs 2, 0x0(3)
    .4byte 0xC022C610 # lfs f1, lbl_8053F5B0@sda21(r0)
    stfs 2, 0x8(1)
    .4byte 0xC002C614 # lfs f0, lbl_8053F5B4@sda21(r0)
    fadds 1, 2, 1
    lfs 2, 0x4(3)
    stfs 2, 0xc(1)
    fadds 0, 2, 0
    lfs 2, 0x8(3)
    mr 3, 26
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_8023DE58
    .4byte 0xC022C618 # lfs f1, lbl_8053F5B8@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0xcb
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 26
    bl fn_8023DE58
    .4byte 0xC022C618 # lfs f1, lbl_8053F5B8@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0xcc
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x2
    mr 3, 26
    addi 4, 4, 0xe
    bl fn_80230FD0
L_801E6A28:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF48 # blt .L_801E6978
    .4byte 0x48000030 # b .L_801E6A64
L_801E6A38:
    lwz 0, 0x8(30)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801E6A64
    bl GetRoomConfigRecord
    li 4, 0x9
    li 5, 0x0
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xd
    li 5, 0x0
    bl fn_80136798
L_801E6A64:
    li 0, 0x0
    stw 0, 0x4(30)
    stw 31, 0x0(30)
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801E6A84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x0(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801E6AA8
    stw 4, 0x8(3)
    li 4, 0x1
    bl fn_801E67C4
L_801E6AA8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E6AB8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stw 4, 0x0(3)
    addi 3, 31, 0x10
    stw 4, 0x4(31)
    stw 0, 0x8(31)
    bl fn_801D267C
    li 0, 0x0
    addi 3, 31, 0x10
    stb 0, 0xc(31)
    .4byte 0x388D8598 # li r4, lbl_8053A158@sda21
    li 5, 0x1
    stb 0, 0xd(31)
    stb 0, 0xe(31)
    stb 0, 0xf(31)
    bl fn_801D2608
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E6B24:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C9F58@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C9F58@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6B74
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
L_801E6B74:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6BAC
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
L_801E6BAC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6BE4
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
L_801E6BE4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6C1C
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
L_801E6C1C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6C54
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
L_801E6C54:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6C8C
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
L_801E6C8C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6CC4
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
L_801E6CC4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6CFC
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
L_801E6CFC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E6D34
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
L_801E6D34:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_801E47F4
    .4byte fn_801E4B30
    .4byte fn_801E5DA4
    .4byte fn_801E6458
    .4byte fn_801E6B24

