# 901KB-gap non-actor manager block: 16 functions, 16,940 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000FB94
etb_8000FB94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000FB94, 8

.global etb_8000FB9C
etb_8000FB9C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000FB9C, 8

.global etb_8000FBA4
etb_8000FBA4:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000FBA4, 8

.global etb_8000FBAC
etb_8000FBAC:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000FBAC, 8

.global etb_8000FBB4
etb_8000FBB4:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000FBB4, 8

.global etb_8000FBBC
etb_8000FBBC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FBBC, 8

.global etb_8000FBC4
etb_8000FBC4:
    .4byte 0x508A0000
    .4byte 0x00000000
.size etb_8000FBC4, 8

.global etb_8000FBCC
etb_8000FBCC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000FBCC, 8

.global etb_8000FBD4
etb_8000FBD4:
    .4byte 0x508A0000
    .4byte 0x00000000
.size etb_8000FBD4, 8

.section extabindex, "a"
.balign 4
.global eti_8001FA38
eti_8001FA38:
    .4byte fn_803DAA18
    .4byte 0x00000224
    .4byte etb_8000FB94
.size eti_8001FA38, 12

.global eti_8001FA44
eti_8001FA44:
    .4byte fn_803DAC58
    .4byte 0x0000204C
    .4byte etb_8000FB9C
.size eti_8001FA44, 12

.global eti_8001FA50
eti_8001FA50:
    .4byte fn_803DCCA4
    .4byte 0x000004F8
    .4byte etb_8000FBA4
.size eti_8001FA50, 12

.global eti_8001FA5C
eti_8001FA5C:
    .4byte fn_803DD1A4
    .4byte 0x00000238
    .4byte etb_8000FBAC
.size eti_8001FA5C, 12

.global eti_8001FA68
eti_8001FA68:
    .4byte fn_803DD3E0
    .4byte 0x00000380
    .4byte etb_8000FBB4
.size eti_8001FA68, 12

.global eti_8001FA74
eti_8001FA74:
    .4byte fn_803DD764
    .4byte 0x00000184
    .4byte etb_8000FBBC
.size eti_8001FA74, 12

.global eti_8001FA80
eti_8001FA80:
    .4byte fn_803DD970
    .4byte 0x000006EC
    .4byte etb_8000FBC4
.size eti_8001FA80, 12

.global eti_8001FA8C
eti_8001FA8C:
    .4byte fn_803DE05C
    .4byte 0x00000530
    .4byte etb_8000FBCC
.size eti_8001FA8C, 12

.global eti_8001FA98
eti_8001FA98:
    .4byte fn_803DE58C
    .4byte 0x000006B8
    .4byte etb_8000FBD4
.size eti_8001FA98, 12

.text
.balign 4
.global fn_803DAA18
.global fn_803DAC3C
.global fn_803DAC58
.global fn_803DCCA4
.global fn_803DD19C
.global fn_803DD1A0
.global fn_803DD1A4
.global fn_803DD3DC
.global fn_803DD3E0
.global fn_803DD760
.global fn_803DD764
.global fn_803DD8E8
.global fn_803DD93C
.global fn_803DD970
.global fn_803DE05C
.global fn_803DE58C

fn_803DAA18:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80528368@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80528368@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DAA68
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
L_803DAA68:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DAAA0
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
L_803DAAA0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DAAD8
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
L_803DAAD8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DAB10
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
L_803DAB10:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DAB48
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
L_803DAB48:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DAB80
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
L_803DAB80:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DABB8
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
L_803DABB8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DABF0
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
L_803DABF0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803DAC28
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
L_803DAC28:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803DAC3C:
    .4byte 0x806D9210 # lwz r3, lbl_8053ADD0@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_803DAC50
    lwz 3, 0x68(3)
    blr
L_803DAC50:
    li 3, 0x2
    blr

fn_803DAC58:
    stwu 1, -0x350(1)
    mflr 0
    stw 0, 0x354(1)
    stfd 31, 0x340(1)
    psq_st 31, 0x348(1), 0, 0
    stw 31, 0x33c(1)
    fmr 31, 1
    cmpwi 4, 0x1
    mr 31, 3
    .4byte 0x4182080C # beq .L_803DB488
    .4byte 0x40800010 # bge .L_803DAC90
    cmpwi 4, 0x0
    .4byte 0x40800014 # bge .L_803DAC9C
    .4byte 0x48001794 # b .L_803DC420
L_803DAC90:
    cmpwi 4, 0x3
    .4byte 0x4080178C # bge .L_803DC420
    .4byte 0x48000FDC # b .L_803DBC74
L_803DAC9C:
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x2f8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 8, 0x2f9(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0x2fa(1)
    stb 8, 0x2fb(1)
    lwz 3, 0x2f8(1)
    stb 8, 0x300(1)
    stb 8, 0x301(1)
    stb 7, 0x302(1)
    stb 0, 0x303(1)
    lwz 0, 0x300(1)
    stw 3, 0x2fc(1)
    stw 0, 0x304(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x304
    addi 5, 1, 0x2fc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x2e8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 8, 0x2e9(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0x2ea(1)
    stb 8, 0x2eb(1)
    lwz 3, 0x2e8(1)
    stb 8, 0x2f0(1)
    stb 8, 0x2f1(1)
    stb 7, 0x2f2(1)
    stb 0, 0x2f3(1)
    lwz 0, 0x2f0(1)
    stw 3, 0x2ec(1)
    stw 0, 0x2f4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2f4
    addi 5, 1, 0x2ec
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x2d8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 8, 0x2d9(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x2da(1)
    stb 8, 0x2db(1)
    lwz 3, 0x2d8(1)
    stb 8, 0x2e0(1)
    stb 8, 0x2e1(1)
    stb 7, 0x2e2(1)
    stb 0, 0x2e3(1)
    lwz 0, 0x2e0(1)
    stw 3, 0x2dc(1)
    stw 0, 0x2e4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2e4
    addi 5, 1, 0x2dc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x2c8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 8, 0x2c9(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0x2ca(1)
    stb 8, 0x2cb(1)
    lwz 3, 0x2c8(1)
    stb 8, 0x2d0(1)
    stb 8, 0x2d1(1)
    stb 7, 0x2d2(1)
    stb 0, 0x2d3(1)
    lwz 0, 0x2d0(1)
    stw 3, 0x2cc(1)
    stw 0, 0x2d4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2d4
    addi 5, 1, 0x2cc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x2b8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 8, 0x2b9(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0x2ba(1)
    stb 8, 0x2bb(1)
    lwz 3, 0x2b8(1)
    stb 8, 0x2c0(1)
    stb 8, 0x2c1(1)
    stb 7, 0x2c2(1)
    stb 0, 0x2c3(1)
    lwz 0, 0x2c0(1)
    stw 3, 0x2bc(1)
    stw 0, 0x2c4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2c4
    addi 5, 1, 0x2bc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x2a8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x2a9(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0x2aa(1)
    stb 0, 0x2ab(1)
    lwz 3, 0x2a8(1)
    stb 7, 0x2b0(1)
    stb 7, 0x2b1(1)
    stb 7, 0x2b2(1)
    stb 7, 0x2b3(1)
    lwz 0, 0x2b0(1)
    stw 3, 0x2ac(1)
    stw 0, 0x2b4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2b4
    addi 5, 1, 0x2ac
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x298(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x299(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0x29a(1)
    stb 0, 0x29b(1)
    lwz 3, 0x298(1)
    stb 7, 0x2a0(1)
    stb 7, 0x2a1(1)
    stb 7, 0x2a2(1)
    stb 7, 0x2a3(1)
    lwz 0, 0x2a0(1)
    stw 3, 0x29c(1)
    stw 0, 0x2a4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2a4
    addi 5, 1, 0x29c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x288(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x289(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x28a(1)
    stb 0, 0x28b(1)
    lwz 3, 0x288(1)
    stb 7, 0x290(1)
    stb 7, 0x291(1)
    stb 7, 0x292(1)
    stb 7, 0x293(1)
    lwz 0, 0x290(1)
    stw 3, 0x28c(1)
    stw 0, 0x294(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x294
    addi 5, 1, 0x28c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x278(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x279(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0x27a(1)
    stb 0, 0x27b(1)
    lwz 3, 0x278(1)
    stb 7, 0x280(1)
    stb 7, 0x281(1)
    stb 7, 0x282(1)
    stb 7, 0x283(1)
    lwz 0, 0x280(1)
    stw 3, 0x27c(1)
    stw 0, 0x284(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x284
    addi 5, 1, 0x27c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x268(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x269(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0x26a(1)
    stb 0, 0x26b(1)
    lwz 3, 0x268(1)
    stb 7, 0x270(1)
    stb 7, 0x271(1)
    stb 7, 0x272(1)
    stb 7, 0x273(1)
    lwz 0, 0x270(1)
    stw 3, 0x26c(1)
    stw 0, 0x274(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x274
    addi 5, 1, 0x26c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0020638 # lfs f0, lbl_805435D8@sda21(r0)
    lwz 12, 0x0(3)
    fmuls 31, 0, 31
    lwz 12, 0x24(12)
    fctiwz 0, 31
    stfd 0, 0x308(1)
    lwz 4, 0x30c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x310(1)
    lwz 4, 0x314(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x318(1)
    lwz 4, 0x31c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x320(1)
    lwz 4, 0x324(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x328(1)
    lwz 4, 0x32c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 7, 0xff
    li 4, 0xd2
    stb 7, 0x258(1)
    lis 3, 0x6164
    li 5, 0x506d
    stb 4, 0x259(1)
    addi 6, 3, 0x3031
    stb 0, 0x25a(1)
    stb 7, 0x25b(1)
    lwz 3, 0x258(1)
    stb 0, 0x260(1)
    stb 0, 0x261(1)
    stb 0, 0x262(1)
    stb 0, 0x263(1)
    lwz 0, 0x260(1)
    stw 3, 0x25c(1)
    stw 0, 0x264(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x264
    addi 5, 1, 0x25c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 3, 0x82
    li 7, 0xaa
    li 0, 0xff
    stb 3, 0x248(1)
    lis 3, 0x6261
    addi 6, 3, 0x3031
    li 5, 0x506d
    stb 7, 0x249(1)
    stb 4, 0x24a(1)
    stb 0, 0x24b(1)
    lwz 3, 0x248(1)
    stb 4, 0x250(1)
    stb 4, 0x251(1)
    stb 4, 0x252(1)
    stb 4, 0x253(1)
    lwz 0, 0x250(1)
    stw 3, 0x24c(1)
    stw 0, 0x254(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x254
    addi 5, 1, 0x24c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x48001804 # b .L_803DCC88
L_803DB488:
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x238(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x239(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0x23a(1)
    stb 0, 0x23b(1)
    lwz 3, 0x238(1)
    stb 7, 0x240(1)
    stb 7, 0x241(1)
    stb 7, 0x242(1)
    stb 7, 0x243(1)
    lwz 0, 0x240(1)
    stw 3, 0x23c(1)
    stw 0, 0x244(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x244
    addi 5, 1, 0x23c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x228(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x229(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0x22a(1)
    stb 0, 0x22b(1)
    lwz 3, 0x228(1)
    stb 7, 0x230(1)
    stb 7, 0x231(1)
    stb 7, 0x232(1)
    stb 7, 0x233(1)
    lwz 0, 0x230(1)
    stw 3, 0x22c(1)
    stw 0, 0x234(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x234
    addi 5, 1, 0x22c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x218(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x219(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x21a(1)
    stb 0, 0x21b(1)
    lwz 3, 0x218(1)
    stb 7, 0x220(1)
    stb 7, 0x221(1)
    stb 7, 0x222(1)
    stb 7, 0x223(1)
    lwz 0, 0x220(1)
    stw 3, 0x21c(1)
    stw 0, 0x224(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x224
    addi 5, 1, 0x21c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x208(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x209(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0x20a(1)
    stb 0, 0x20b(1)
    lwz 3, 0x208(1)
    stb 7, 0x210(1)
    stb 7, 0x211(1)
    stb 7, 0x212(1)
    stb 7, 0x213(1)
    lwz 0, 0x210(1)
    stw 3, 0x20c(1)
    stw 0, 0x214(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x214
    addi 5, 1, 0x20c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x1f8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x1f9(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0x1fa(1)
    stb 0, 0x1fb(1)
    lwz 3, 0x1f8(1)
    stb 7, 0x200(1)
    stb 7, 0x201(1)
    stb 7, 0x202(1)
    stb 7, 0x203(1)
    lwz 0, 0x200(1)
    stw 3, 0x1fc(1)
    stw 0, 0x204(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x204
    addi 5, 1, 0x1fc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x1e8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 8, 0x1e9(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0x1ea(1)
    stb 8, 0x1eb(1)
    lwz 3, 0x1e8(1)
    stb 8, 0x1f0(1)
    stb 8, 0x1f1(1)
    stb 7, 0x1f2(1)
    stb 0, 0x1f3(1)
    lwz 0, 0x1f0(1)
    stw 3, 0x1ec(1)
    stw 0, 0x1f4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1f4
    addi 5, 1, 0x1ec
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x1d8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 8, 0x1d9(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0x1da(1)
    stb 8, 0x1db(1)
    lwz 3, 0x1d8(1)
    stb 8, 0x1e0(1)
    stb 8, 0x1e1(1)
    stb 7, 0x1e2(1)
    stb 0, 0x1e3(1)
    lwz 0, 0x1e0(1)
    stw 3, 0x1dc(1)
    stw 0, 0x1e4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1e4
    addi 5, 1, 0x1dc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x1c8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 8, 0x1c9(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x1ca(1)
    stb 8, 0x1cb(1)
    lwz 3, 0x1c8(1)
    stb 8, 0x1d0(1)
    stb 8, 0x1d1(1)
    stb 7, 0x1d2(1)
    stb 0, 0x1d3(1)
    lwz 0, 0x1d0(1)
    stw 3, 0x1cc(1)
    stw 0, 0x1d4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1d4
    addi 5, 1, 0x1cc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x1b8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 8, 0x1b9(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0x1ba(1)
    stb 8, 0x1bb(1)
    lwz 3, 0x1b8(1)
    stb 8, 0x1c0(1)
    stb 8, 0x1c1(1)
    stb 7, 0x1c2(1)
    stb 0, 0x1c3(1)
    lwz 0, 0x1c0(1)
    stw 3, 0x1bc(1)
    stw 0, 0x1c4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c4
    addi 5, 1, 0x1bc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 8, 0xff
    li 7, 0x78
    li 0, 0x0
    stb 8, 0x1a8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 8, 0x1a9(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0x1aa(1)
    stb 8, 0x1ab(1)
    lwz 3, 0x1a8(1)
    stb 8, 0x1b0(1)
    stb 8, 0x1b1(1)
    stb 7, 0x1b2(1)
    stb 0, 0x1b3(1)
    lwz 0, 0x1b0(1)
    stw 3, 0x1ac(1)
    stw 0, 0x1b4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1b4
    addi 5, 1, 0x1ac
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0020638 # lfs f0, lbl_805435D8@sda21(r0)
    lwz 12, 0x0(3)
    fmuls 31, 0, 31
    lwz 12, 0x24(12)
    fctiwz 0, 31
    stfd 0, 0x328(1)
    lwz 4, 0x32c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x320(1)
    lwz 4, 0x324(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x318(1)
    lwz 4, 0x31c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x310(1)
    lwz 4, 0x314(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x308(1)
    lwz 4, 0x30c(1)
    mtctr 12
    bctrl
    li 4, 0x0
    li 3, 0x82
    li 7, 0xaa
    li 0, 0xff
    stb 3, 0x198(1)
    lis 3, 0x6164
    addi 6, 3, 0x3031
    li 5, 0x506d
    stb 7, 0x199(1)
    stb 4, 0x19a(1)
    stb 0, 0x19b(1)
    lwz 3, 0x198(1)
    stb 4, 0x1a0(1)
    stb 4, 0x1a1(1)
    stb 4, 0x1a2(1)
    stb 4, 0x1a3(1)
    lwz 0, 0x1a0(1)
    stw 3, 0x19c(1)
    stw 0, 0x1a4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1a4
    addi 5, 1, 0x19c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 7, 0xff
    li 4, 0xd2
    stb 7, 0x188(1)
    lis 3, 0x6261
    li 5, 0x506d
    stb 4, 0x189(1)
    addi 6, 3, 0x3031
    stb 0, 0x18a(1)
    stb 7, 0x18b(1)
    lwz 3, 0x188(1)
    stb 0, 0x190(1)
    stb 0, 0x191(1)
    stb 0, 0x192(1)
    stb 0, 0x193(1)
    lwz 0, 0x190(1)
    stw 3, 0x18c(1)
    stw 0, 0x194(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x194
    addi 5, 1, 0x18c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x48001018 # b .L_803DCC88
L_803DBC74:
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x178(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x179(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0x17a(1)
    stb 0, 0x17b(1)
    lwz 3, 0x178(1)
    stb 7, 0x180(1)
    stb 7, 0x181(1)
    stb 7, 0x182(1)
    stb 7, 0x183(1)
    lwz 0, 0x180(1)
    stw 3, 0x17c(1)
    stw 0, 0x184(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x184
    addi 5, 1, 0x17c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x168(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x169(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0x16a(1)
    stb 0, 0x16b(1)
    lwz 3, 0x168(1)
    stb 7, 0x170(1)
    stb 7, 0x171(1)
    stb 7, 0x172(1)
    stb 7, 0x173(1)
    lwz 0, 0x170(1)
    stw 3, 0x16c(1)
    stw 0, 0x174(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x174
    addi 5, 1, 0x16c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x158(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x159(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x15a(1)
    stb 0, 0x15b(1)
    lwz 3, 0x158(1)
    stb 7, 0x160(1)
    stb 7, 0x161(1)
    stb 7, 0x162(1)
    stb 7, 0x163(1)
    lwz 0, 0x160(1)
    stw 3, 0x15c(1)
    stw 0, 0x164(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x164
    addi 5, 1, 0x15c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x148(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x149(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0x14a(1)
    stb 0, 0x14b(1)
    lwz 3, 0x148(1)
    stb 7, 0x150(1)
    stb 7, 0x151(1)
    stb 7, 0x152(1)
    stb 7, 0x153(1)
    lwz 0, 0x150(1)
    stw 3, 0x14c(1)
    stw 0, 0x154(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x154
    addi 5, 1, 0x14c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x138(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x139(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0x13a(1)
    stb 0, 0x13b(1)
    lwz 3, 0x138(1)
    stb 7, 0x140(1)
    stb 7, 0x141(1)
    stb 7, 0x142(1)
    stb 7, 0x143(1)
    lwz 0, 0x140(1)
    stw 3, 0x13c(1)
    stw 0, 0x144(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x144
    addi 5, 1, 0x13c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x128(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x129(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0x12a(1)
    stb 0, 0x12b(1)
    lwz 3, 0x128(1)
    stb 7, 0x130(1)
    stb 7, 0x131(1)
    stb 7, 0x132(1)
    stb 7, 0x133(1)
    lwz 0, 0x130(1)
    stw 3, 0x12c(1)
    stw 0, 0x134(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x134
    addi 5, 1, 0x12c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x118(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x119(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0x11a(1)
    stb 0, 0x11b(1)
    lwz 3, 0x118(1)
    stb 7, 0x120(1)
    stb 7, 0x121(1)
    stb 7, 0x122(1)
    stb 7, 0x123(1)
    lwz 0, 0x120(1)
    stw 3, 0x11c(1)
    stw 0, 0x124(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x124
    addi 5, 1, 0x11c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x108(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x109(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x10a(1)
    stb 0, 0x10b(1)
    lwz 3, 0x108(1)
    stb 7, 0x110(1)
    stb 7, 0x111(1)
    stb 7, 0x112(1)
    stb 7, 0x113(1)
    lwz 0, 0x110(1)
    stw 3, 0x10c(1)
    stw 0, 0x114(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x114
    addi 5, 1, 0x10c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0xf8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0xf9(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0xfa(1)
    stb 0, 0xfb(1)
    lwz 3, 0xf8(1)
    stb 7, 0x100(1)
    stb 7, 0x101(1)
    stb 7, 0x102(1)
    stb 7, 0x103(1)
    lwz 0, 0x100(1)
    stw 3, 0xfc(1)
    stw 0, 0x104(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x104
    addi 5, 1, 0xfc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0xe8(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0xe9(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0xea(1)
    stb 0, 0xeb(1)
    lwz 3, 0xe8(1)
    stb 7, 0xf0(1)
    stb 7, 0xf1(1)
    stb 7, 0xf2(1)
    stb 7, 0xf3(1)
    lwz 0, 0xf0(1)
    stw 3, 0xec(1)
    stw 0, 0xf4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xf4
    addi 5, 1, 0xec
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 3, 0x82
    li 7, 0xaa
    li 0, 0xff
    stb 3, 0xd8(1)
    lis 3, 0x6164
    addi 6, 3, 0x3031
    li 5, 0x506d
    stb 7, 0xd9(1)
    stb 4, 0xda(1)
    stb 0, 0xdb(1)
    lwz 3, 0xd8(1)
    stb 4, 0xe0(1)
    stb 4, 0xe1(1)
    stb 4, 0xe2(1)
    stb 4, 0xe3(1)
    lwz 0, 0xe0(1)
    stw 3, 0xdc(1)
    stw 0, 0xe4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xe4
    addi 5, 1, 0xdc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 3, 0x82
    li 7, 0xaa
    li 0, 0xff
    stb 3, 0xc8(1)
    lis 3, 0x6261
    addi 6, 3, 0x3031
    li 5, 0x506d
    stb 7, 0xc9(1)
    stb 4, 0xca(1)
    stb 0, 0xcb(1)
    lwz 3, 0xc8(1)
    stb 4, 0xd0(1)
    stb 4, 0xd1(1)
    stb 4, 0xd2(1)
    stb 4, 0xd3(1)
    lwz 0, 0xd0(1)
    stw 3, 0xcc(1)
    stw 0, 0xd4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xd4
    addi 5, 1, 0xcc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x4800086C # b .L_803DCC88
L_803DC420:
    li 7, 0x0
    li 0, 0xff
    stb 7, 0xb8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0xb9(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0xba(1)
    stb 0, 0xbb(1)
    lwz 3, 0xb8(1)
    stb 7, 0xc0(1)
    stb 7, 0xc1(1)
    stb 7, 0xc2(1)
    stb 7, 0xc3(1)
    lwz 0, 0xc0(1)
    stw 3, 0xbc(1)
    stw 0, 0xc4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc4
    addi 5, 1, 0xbc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0xa8(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0xa9(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0xaa(1)
    stb 0, 0xab(1)
    lwz 3, 0xa8(1)
    stb 7, 0xb0(1)
    stb 7, 0xb1(1)
    stb 7, 0xb2(1)
    stb 7, 0xb3(1)
    lwz 0, 0xb0(1)
    stw 3, 0xac(1)
    stw 0, 0xb4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xb4
    addi 5, 1, 0xac
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x98(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x99(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x9a(1)
    stb 0, 0x9b(1)
    lwz 3, 0x98(1)
    stb 7, 0xa0(1)
    stb 7, 0xa1(1)
    stb 7, 0xa2(1)
    stb 7, 0xa3(1)
    lwz 0, 0xa0(1)
    stw 3, 0x9c(1)
    stw 0, 0xa4(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xa4
    addi 5, 1, 0x9c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x88(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x89(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0x8a(1)
    stb 0, 0x8b(1)
    lwz 3, 0x88(1)
    stb 7, 0x90(1)
    stb 7, 0x91(1)
    stb 7, 0x92(1)
    stb 7, 0x93(1)
    lwz 0, 0x90(1)
    stw 3, 0x8c(1)
    stw 0, 0x94(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x94
    addi 5, 1, 0x8c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x78(1)
    lis 4, 0x7268
    lis 3, 0x5073
    stb 7, 0x79(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0x7a(1)
    stb 0, 0x7b(1)
    lwz 3, 0x78(1)
    stb 7, 0x80(1)
    stb 7, 0x81(1)
    stb 7, 0x82(1)
    stb 7, 0x83(1)
    lwz 0, 0x80(1)
    stw 3, 0x7c(1)
    stw 0, 0x84(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x84
    addi 5, 1, 0x7c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x68(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x69(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6375
    stb 7, 0x6a(1)
    stb 0, 0x6b(1)
    lwz 3, 0x68(1)
    stb 7, 0x70(1)
    stb 7, 0x71(1)
    stb 7, 0x72(1)
    stb 7, 0x73(1)
    lwz 0, 0x70(1)
    stw 3, 0x6c(1)
    stw 0, 0x74(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    addi 5, 1, 0x6c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x58(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x59(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6375
    stb 7, 0x5a(1)
    stb 0, 0x5b(1)
    lwz 3, 0x58(1)
    stb 7, 0x60(1)
    stb 7, 0x61(1)
    stb 7, 0x62(1)
    stb 7, 0x63(1)
    lwz 0, 0x60(1)
    stw 3, 0x5c(1)
    stw 0, 0x64(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x64
    addi 5, 1, 0x5c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x48(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x49(1)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6375
    stb 7, 0x4a(1)
    stb 0, 0x4b(1)
    lwz 3, 0x48(1)
    stb 7, 0x50(1)
    stb 7, 0x51(1)
    stb 7, 0x52(1)
    stb 7, 0x53(1)
    lwz 0, 0x50(1)
    stw 3, 0x4c(1)
    stw 0, 0x54(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    addi 5, 1, 0x4c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x38(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x39(1)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6375
    stb 7, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 3, 0x38(1)
    stb 7, 0x40(1)
    stb 7, 0x41(1)
    stb 7, 0x42(1)
    stb 7, 0x43(1)
    lwz 0, 0x40(1)
    stw 3, 0x3c(1)
    stw 0, 0x44(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    addi 5, 1, 0x3c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x0
    li 0, 0xff
    stb 7, 0x28(1)
    lis 4, 0x7273
    lis 3, 0x5073
    stb 7, 0x29(1)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6375
    stb 7, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 3, 0x28(1)
    stb 7, 0x30(1)
    stb 7, 0x31(1)
    stb 7, 0x32(1)
    stb 7, 0x33(1)
    lwz 0, 0x30(1)
    stw 3, 0x2c(1)
    stw 0, 0x34(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x2c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x64
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 3, 0x82
    li 7, 0xaa
    li 0, 0xff
    stb 3, 0x18(1)
    lis 3, 0x6164
    addi 6, 3, 0x3031
    li 5, 0x506d
    stb 7, 0x19(1)
    stb 4, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 3, 0x18(1)
    stb 4, 0x20(1)
    stb 4, 0x21(1)
    stb 4, 0x22(1)
    stb 4, 0x23(1)
    lwz 0, 0x20(1)
    stw 3, 0x1c(1)
    stw 0, 0x24(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 3, 0x82
    li 7, 0xaa
    li 0, 0xff
    stb 3, 0x8(1)
    lis 3, 0x6261
    addi 6, 3, 0x3031
    li 5, 0x506d
    stb 7, 0x9(1)
    stb 4, 0xa(1)
    stb 0, 0xb(1)
    lwz 3, 0x8(1)
    stb 4, 0x10(1)
    stb 4, 0x11(1)
    stb 4, 0x12(1)
    stb 4, 0x13(1)
    lwz 0, 0x10(1)
    stw 3, 0xc(1)
    stw 0, 0x14(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xa2(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x32c(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x328(1)
    lwz 12, 0x24(12)
    lfd 0, 0x328(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x320(1)
    lwz 4, 0x324(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xa2(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x31c(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x318(1)
    lwz 12, 0x24(12)
    lfd 0, 0x318(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x310(1)
    lwz 4, 0x314(1)
    mtctr 12
    bctrl
L_803DCC88:
    psq_l 31, 0x348(1), 0, 0
    lwz 0, 0x354(1)
    lfd 31, 0x340(1)
    lwz 31, 0x33c(1)
    mtlr 0
    addi 1, 1, 0x350
    blr

fn_803DCCA4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 3, 0x90(3)
    cmpwi 3, 0x0
    .4byte 0x418204B8 # beq .L_803DD180
    addi 0, 3, 0x1
    lis 4, 0x4330
    stw 0, 0x90(31)
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    lwz 6, 0x90(31)
    lha 5, 0x12e(3)
    xoris 3, 6, 0x8000
    stw 4, 0x8(1)
    xoris 0, 5, 0x8000
    cmpw 6, 5
    stw 3, 0xc(1)
    lfd 0, 0x8(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 2
    stw 4, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fdivs 31, 1, 0
    .4byte 0x4180000C # blt .L_803DCD28
    li 0, 0x0
    stw 0, 0x90(31)
L_803DCD28:
    lbz 0, 0x9e(31)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_803DCDA8
    lbz 0, 0x9f(31)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_803DCDA8
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_803DCDA8:
    lbz 0, 0x9e(31)
    cmplwi 0, 0x1
    .4byte 0x41820078 # beq .L_803DCE28
    lbz 0, 0x9f(31)
    cmplwi 0, 0x1
    .4byte 0x4182006C # beq .L_803DCE28
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3131
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3132
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_803DCE28:
    lwz 0, 0x84(31)
    cmpwi 0, 0x2
    .4byte 0x41820198 # beq .L_803DCFC8
    lbz 0, 0x9e(31)
    cmpwi 0, 0x1
    .4byte 0x418200D4 # beq .L_803DCF10
    .4byte 0x40800188 # bge .L_803DCFC8
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803DCE54
    .4byte 0x4800017C # b .L_803DCFC8
    .4byte 0x48000178 # b .L_803DCFC8
L_803DCE54:
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11a(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11b(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x18(1)
    lwz 12, 0x24(12)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    .4byte 0x480000BC # b .L_803DCFC8
L_803DCF10:
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3131
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11c(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x24(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x20(1)
    lwz 12, 0x24(12)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3132
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11d(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_803DCFC8:
    .4byte 0xC0020648 # lfs f0, lbl_805435E8@sda21(r0)
    lwz 0, 0x84(31)
    fsubs 31, 0, 31
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_803DCFEC
    lbz 3, 0x9e(31)
    lbz 0, 0x9f(31)
    cmplw 3, 0
    .4byte 0x41820198 # beq .L_803DD180
L_803DCFEC:
    lbz 0, 0x9f(31)
    cmpwi 0, 0x1
    .4byte 0x418200D4 # beq .L_803DD0C8
    .4byte 0x40800188 # bge .L_803DD180
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803DD00C
    .4byte 0x4800017C # b .L_803DD180
    .4byte 0x48000178 # b .L_803DD180
L_803DD00C:
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11a(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x24(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x20(1)
    lwz 12, 0x24(12)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11b(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    .4byte 0x480000BC # b .L_803DD180
L_803DD0C8:
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3131
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11c(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x24(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x20(1)
    lwz 12, 0x24(12)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x696d
    addi 6, 4, 0x3132
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11d(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_803DD180:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803DD19C:
    blr

fn_803DD1A0:
    blr

fn_803DD1A4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 3, 0x8c(3)
    cmpwi 3, 0x1e
    .4byte 0x40800030 # bge .L_803DD200
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020658 # lfs f0, lbl_805435F8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 31, 1, 0
    .4byte 0x48000038 # b .L_803DD234
L_803DD200:
    subi 3, 3, 0x1e
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020658 # lfs f0, lbl_805435F8@sda21(r0)
    .4byte 0xC0620648 # lfs f3, lbl_805435E8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 31, 3, 0
L_803DD234:
    lwz 3, 0x88(31)
    cmpwi 3, 0x5
    subfic 0, 3, 0xa
    .4byte 0x40800008 # bge .L_803DD248
    mr 0, 3
L_803DD248:
    mullw 4, 0, 0
    lis 3, 0x4330
    lwz 0, 0x80(31)
    stw 3, 0x8(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    cmpwi 0, 0x0
    xoris 0, 4, 0x8000
    .4byte 0xC062065C # lfs f3, lbl_805435FC@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC0020660 # lfs f0, lbl_80543600@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x40820038 # bne .L_803DD2B8
    fmr 2, 30
    lwz 3, 0x50(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x54(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 30
    lwz 3, 0x58(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000044 # b .L_803DD2F8
L_803DD2B8:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x50(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 30
    lwz 3, 0x54(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    lwz 4, 0x54(31)
    fmr 2, 30
    lwz 3, 0x50(31)
    lfs 1, 0x8(4)
    lfs 0, 0x8(3)
    lwz 3, 0x58(31)
    fsubs 1, 1, 0
    bl fn_80402E08
L_803DD2F8:
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xa2(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0xc(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x8(1)
    lwz 12, 0x24(12)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xa2(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x18(1)
    lwz 12, 0x24(12)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 0, 0x54(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803DD3DC:
    blr

fn_803DD3E0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 4, 0x9e(3)
    cmplwi 4, 0x3
    .4byte 0x41820010 # beq .L_803DD41C
    lwz 0, 0x84(31)
    cmpwi 0, 0x1
    .4byte 0x41820074 # beq .L_803DD48C
L_803DD41C:
    lwz 3, 0x8c(31)
    cmpwi 3, 0x1e
    .4byte 0x40800030 # bge .L_803DD454
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020658 # lfs f0, lbl_805435F8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 31, 1, 0
    .4byte 0x480000A8 # b .L_803DD4F8
L_803DD454:
    subi 3, 3, 0x1e
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020658 # lfs f0, lbl_805435F8@sda21(r0)
    .4byte 0xC0620648 # lfs f3, lbl_805435E8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 31, 3, 0
    .4byte 0x48000070 # b .L_803DD4F8
L_803DD48C:
    lwz 3, 0x8c(31)
    cmpwi 3, 0x3c
    .4byte 0x40800030 # bge .L_803DD4C4
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020668 # lfs f0, lbl_80543608@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 31, 1, 0
    .4byte 0x48000038 # b .L_803DD4F8
L_803DD4C4:
    subi 3, 3, 0x3c
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020668 # lfs f0, lbl_80543608@sda21(r0)
    .4byte 0xC0620648 # lfs f3, lbl_805435E8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 31, 3, 0
L_803DD4F8:
    lwz 3, 0x88(31)
    cmpwi 3, 0x5
    subfic 0, 3, 0xa
    .4byte 0x40800008 # bge .L_803DD50C
    mr 0, 3
L_803DD50C:
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x8(1)
    cmpwi 4, 0x1
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC062065C # lfs f3, lbl_805435FC@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0020660 # lfs f0, lbl_80543600@sda21(r0)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x41820094 # beq .L_803DD5D4
    .4byte 0x40800010 # bge .L_803DD554
    cmpwi 4, 0x0
    .4byte 0x40800014 # bge .L_803DD560
    .4byte 0x4800016C # b .L_803DD6BC
L_803DD554:
    cmpwi 4, 0x3
    .4byte 0x40800164 # bge .L_803DD6BC
    .4byte 0x480000EC # b .L_803DD648
L_803DD560:
    fmr 2, 30
    lwz 3, 0x34(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x38(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x30(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 30
    lwz 3, 0x44(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x48(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 1, 31
    lbz 4, 0x9e(31)
    mr 3, 31
    bl fn_803DAC58
    lwz 3, 0x40(31)
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    .4byte 0x4800016C # b .L_803DD73C
L_803DD5D4:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x34(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 30
    lwz 3, 0x38(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x30(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x44(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 30
    lwz 3, 0x48(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    fmr 1, 31
    lbz 4, 0x9e(31)
    mr 3, 31
    bl fn_803DAC58
    lwz 3, 0x40(31)
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    .4byte 0x480000F8 # b .L_803DD73C
L_803DD648:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x34(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x38(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x30(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x44(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x48(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 1, 31
    lbz 4, 0x9e(31)
    mr 3, 31
    bl fn_803DAC58
    lwz 3, 0x40(31)
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    .4byte 0x48000084 # b .L_803DD73C
L_803DD6BC:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x34(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x38(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x44(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x48(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 30
    lwz 3, 0x30(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    fmr 2, 30
    lwz 3, 0x40(31)
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    fmr 1, 31
    lbz 4, 0x9e(31)
    mr 3, 31
    bl fn_803DAC58
    lwz 3, 0x40(31)
    li 0, 0x1
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
L_803DD73C:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 0, 0x44(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803DD760:
    blr

fn_803DD764:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC022066C # lfs f1, lbl_8054360C@sda21(r0)
    stw 0, 0x54(1)
    .4byte 0xC0020670 # lfs f0, lbl_80543610@sda21(r0)
    stw 31, 0x4c(1)
    mr 31, 3
    lfs 2, 0x7c(3)
    fadds 1, 2, 1
    stfs 1, 0x7c(3)
    lfs 1, 0x7c(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082013C # bne .L_803DD8D4
    stfs 0, 0x7c(31)
    li 0, 0xb
    addi 4, 1, 0x8
    li 5, -0x2
    stw 0, 0x8(1)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80457F80
    clrlwi. 0, 3, 24
    .4byte 0x41820118 # beq .L_803DD8D4
    lha 3, 0x98(31)
    subi 3, 3, 0x1
    extsh. 0, 3
    sth 3, 0x98(31)
    .4byte 0x41810104 # bgt .L_803DD8D4
    lis 3, lbl_80477898@ha
    addi 4, 1, 0xc
    addi 3, 3, lbl_80477898@l
    bl fn_80048474
    cmpwi 3, 0x1
    .4byte 0x408200EC # bne .L_803DD8D4
    lis 3, lbl_80529DEC@ha
    li 0, 0x2
    addi 5, 3, lbl_80529DEC@l
    li 12, 0x0
    mtctr 0
L_803DD800:
    add 4, 5, 12
    subis 3, 12, 0x7f90
    lbz 0, 0x216(4)
    addi 12, 12, 0x8
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    add 4, 5, 12
    stb 0, 0x7(3)
    subis 3, 12, 0x7f90
    addi 12, 12, 0x8
    lbz 0, 0x216(4)
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    stb 0, 0x7(3)
    .4byte 0x4200FF68 # bdnz .L_803DD800
    lis 4, 0x8070
    lis 3, 0x8070
    addi 4, 4, 0x1f
    bl OSSetSaveRegion
    li 3, 0x1
    bl __PADDisableRecalibration
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1558
    lwz 3, 0x3c(1)
    bl fn_800440D8
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl OSResetSystem
L_803DD8D4:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803DD8E8:
    lfs 2, 0x78(3)
    .4byte 0xC022066C # lfs f1, lbl_8054360C@sda21(r0)
    .4byte 0xC0020670 # lfs f0, lbl_80543610@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x78(3)
    lfs 1, 0x78(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    bnelr
    stfs 0, 0x78(3)
    .4byte 0xC0020664 # lfs f0, lbl_80543604@sda21(r0)
    stfs 0, 0x7c(3)
    lha 4, 0x9a(3)
    addi 4, 4, 0x1
    extsh 0, 4
    sth 4, 0x9a(3)
    cmpwi 0, 0x64
    blelr
    li 0, 0x7
    stw 0, 0x84(3)
    blr

fn_803DD93C:
    lfs 2, 0x7c(3)
    .4byte 0xC022066C # lfs f1, lbl_8054360C@sda21(r0)
    .4byte 0xC0020670 # lfs f0, lbl_80543610@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x7c(3)
    lfs 1, 0x7c(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    bnelr
    stfs 0, 0x7c(3)
    li 0, 0x6
    stw 0, 0x84(3)
    blr

fn_803DD970:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 22, 0x28(1)
    mr 25, 3
    lha 3, 0x9c(3)
    lis 4, lbl_804774C8@ha
    li 6, 0x0
    addi 0, 3, 0x1
    addi 5, 1, 0x8
    sth 0, 0x9c(25)
    addi 31, 4, lbl_804774C8@l
    li 28, 0x0
    li 27, 0x0
    lbz 0, 0x9e(25)
    cmpw 0, 6
    .4byte 0x4182000C # beq .L_803DD9CC
    stw 6, 0x0(5)
    addi 5, 5, 0x4
L_803DD9CC:
    lbz 0, 0x9e(25)
    li 6, 0x1
    cmpw 0, 6
    .4byte 0x41820008 # beq .L_803DD9E0
    stw 6, 0x0(5)
L_803DD9E0:
    lha 0, 0x9c(25)
    cmpwi 0, 0x0
    .4byte 0x4081016C # ble .L_803DDB54
    lwz 3, 0x14(25)
    li 4, 0x14
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420674 # lfs f2, lbl_80543614@sda21(r0)
    bl fn_80402B10
    addi 23, 25, 0x4
    mr 28, 3
    li 22, 0x1
L_803DDA10:
    lwz 3, 0x14(23)
    li 4, 0x14
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420674 # lfs f2, lbl_80543614@sda21(r0)
    bl fn_80402B10
    addi 22, 22, 0x1
    addi 23, 23, 0x4
    cmpwi 22, 0x7
    .4byte 0x4180FFDC # blt .L_803DDA10
    lha 0, 0x9c(25)
    cmpwi 0, 0x14
    .4byte 0x40810008 # ble .L_803DDA48
    li 0, 0x14
L_803DDA48:
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x10(1)
    addi 23, 31, 0x0
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    li 24, 0x0
    xoris 0, 3, 0x8000
    .4byte 0xC0020678 # lfs f0, lbl_80543618@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC0620648 # lfs f3, lbl_805435E8@sda21(r0)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 31, 3, 0
L_803DDA80:
    cmpwi 24, 0x0
    .4byte 0x40820064 # bne .L_803DDAE8
    lwz 3, 0x8(25)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 24, 0xa3
    lis 0, 0x4330
    lbzx 4, 25, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    .4byte 0x48000060 # b .L_803DDB44
L_803DDAE8:
    lwz 3, 0x4(25)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 24, 0xa3
    lis 0, 0x4330
    lbzx 4, 25, 4
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x18(1)
    lwz 12, 0x24(12)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
L_803DDB44:
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x32
    .4byte 0x4180FF30 # blt .L_803DDA80
L_803DDB54:
    mr 29, 25
    li 26, 0x0
    li 30, 0xa
L_803DDB60:
    lha 0, 0x9c(25)
    cmpw 0, 30
    .4byte 0x40810154 # ble .L_803DDCBC
    lwz 3, 0x50(29)
    li 4, 0x14
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    .4byte 0xC042067C # lfs f2, lbl_8054361C@sda21(r0)
    bl fn_80402940
    lha 0, 0x9c(25)
    subf 0, 30, 0
    cmpwi 0, 0x14
    .4byte 0x40810008 # ble .L_803DDB98
    li 0, 0x14
L_803DDB98:
    mullw 0, 0, 0
    lis 24, 0x4330
    stw 24, 0x18(1)
    cmpwi 26, 0x0
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020678 # lfs f0, lbl_80543618@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 1, 1, 0
    .4byte 0x40820080 # bne .L_803DDC44
    .4byte 0xC0020648 # lfs f0, lbl_805435E8@sda21(r0)
    addi 22, 31, 0x368
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    li 23, 0x0
    fsubs 30, 0, 1
L_803DDBDC:
    lwz 3, 0x4(25)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x110
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x5
    .4byte 0x4180FFA0 # blt .L_803DDBDC
    .4byte 0x4800007C # b .L_803DDCBC
L_803DDC44:
    .4byte 0xC0020648 # lfs f0, lbl_805435E8@sda21(r0)
    addi 22, 31, 0x390
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    li 23, 0x0
    fsubs 30, 0, 1
L_803DDC58:
    lwz 3, 0x4(25)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x115
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x5
    .4byte 0x4180FFA0 # blt .L_803DDC58
L_803DDCBC:
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x2
    addi 30, 30, 0x5
    .4byte 0x4180FE94 # blt .L_803DDB60
    lha 0, 0x9c(25)
    cmpwi 0, 0x0
    .4byte 0x4081005C # ble .L_803DDD34
    lbz 0, 0x9e(25)
    li 4, 0x14
    .4byte 0xC0220680 # lfs f1, lbl_80543620@sda21(r0)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    add 3, 25, 0
    lfs 0, 0x6c(3)
    lwz 3, 0x34(3)
    fsubs 1, 1, 0
    bl fn_80402940
    lbz 0, 0x9e(25)
    li 4, 0x14
    .4byte 0xC0220680 # lfs f1, lbl_80543620@sda21(r0)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    add 3, 25, 0
    lfs 0, 0x6c(3)
    lwz 3, 0x44(3)
    fsubs 1, 1, 0
    bl fn_80402940
L_803DDD34:
    lha 0, 0x9c(25)
    li 3, 0x5
    cmpw 0, 3
    .4byte 0x4081018C # ble .L_803DDECC
    lwz 0, 0x8(1)
    li 4, 0x14
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    addi 0, 3, 0x34
    lwzx 3, 25, 0
    bl fn_80402B10
    lwz 0, 0x8(1)
    mr 28, 3
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    li 4, 0x14
    slwi 3, 0, 2
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    addi 0, 3, 0x44
    li 5, 0x0
    lwzx 3, 25, 0
    bl fn_80402B10
    lha 3, 0x9c(25)
    subi 0, 3, 0x5
    cmpwi 0, 0x14
    .4byte 0x40810008 # ble .L_803DDDA4
    li 0, 0x14
L_803DDDA4:
    mullw 3, 0, 0
    lis 26, 0x4330
    lwz 0, 0x8(1)
    stw 26, 0x18(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    cmpwi 0, 0x1
    xoris 3, 3, 0x8000
    .4byte 0xC0020678 # lfs f0, lbl_80543618@sda21(r0)
    stw 3, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
    .4byte 0x41820088 # beq .L_803DDE5C
    .4byte 0x408000F4 # bge .L_803DDECC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_803DDDE8
    .4byte 0x480000E8 # b .L_803DDECC
L_803DDDE8:
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    addi 22, 31, 0x1c0
    li 23, 0x0
L_803DDDF4:
    lwz 3, 0x4(25)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0xdb
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 26, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x11
    .4byte 0x4180FFA0 # blt .L_803DDDF4
    .4byte 0x48000074 # b .L_803DDECC
L_803DDE5C:
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    addi 22, 31, 0x248
    li 23, 0x0
L_803DDE68:
    lwz 3, 0x4(25)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0xec
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 26, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x14
    .4byte 0x4180FFA0 # blt .L_803DDE68
L_803DDECC:
    lha 0, 0x9c(25)
    cmpwi 0, 0xf
    .4byte 0x408100CC # ble .L_803DDFA0
    lwz 3, 0x30(25)
    li 4, 0xf
    .4byte 0xC022067C # lfs f1, lbl_8054361C@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402940
    lha 4, 0x9c(25)
    mr 27, 3
    subi 0, 4, 0xf
    cmpwi 0, 0xf
    .4byte 0x40810008 # ble .L_803DDF08
    li 0, 0xf
L_803DDF08:
    mullw 0, 0, 0
    lis 26, 0x4330
    stw 26, 0x18(1)
    addi 22, 31, 0x190
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    li 23, 0x0
    xoris 0, 0, 0x8000
    .4byte 0xC0020684 # lfs f0, lbl_80543624@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
L_803DDF3C:
    lwz 3, 0x4(25)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0xd5
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 26, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x6
    .4byte 0x4180FFA0 # blt .L_803DDF3C
L_803DDFA0:
    clrlwi. 0, 28, 24
    .4byte 0x41820094 # beq .L_803DE038
    clrlwi. 0, 27, 24
    .4byte 0x4182008C # beq .L_803DE038
    lwz 3, 0x14(25)
    li 4, 0x0
    li 0, 0x1
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x18(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x1c(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x20(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x24(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x28(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x2c(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x50(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x54(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    stw 4, 0x80(25)
    stw 4, 0x88(25)
    stw 4, 0x8c(25)
    stw 0, 0x84(25)
    stw 0, 0x90(25)
L_803DE038:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 22, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803DE05C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 3, 0x88(3)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_803DE0A4
    addi 0, 3, 0x1
    stw 0, 0x88(31)
    lwz 0, 0x88(31)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_803DE0A4
    li 0, 0x0
    stw 0, 0x88(31)
L_803DE0A4:
    lbz 0, 0x9e(31)
    cmplwi 0, 0x2
    .4byte 0x40820040 # bne .L_803DE0EC
    lwz 3, 0x64(31)
    lwz 12, 0x18(3)
    mtctr 12
    bctrl
    lwz 4, 0x64(31)
    mr 30, 3
    lwz 12, 0x10(4)
    mtctr 12
    bctrl
    subf 0, 3, 30
    cmplwi 0, 0x1
    .4byte 0x41810010 # bgt .L_803DE0EC
    li 0, 0x0
    stw 0, 0x8c(31)
    .4byte 0x48000484 # b .L_803DE56C
L_803DE0EC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820218 # beq .L_803DE318
    li 4, 0x3
    stb 4, 0xa0(31)
    lwz 0, 0x80(31)
    cmpwi 0, 0x0
    .4byte 0x40820088 # bne .L_803DE19C
    lbz 0, 0x9e(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_803DE138
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    stb 0, 0x7f(3)
    stw 4, 0x68(31)
    .4byte 0x48000044 # b .L_803DE178
L_803DE138:
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_803DE154
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    stb 0, 0x7f(3)
    stw 4, 0x68(31)
    .4byte 0x48000028 # b .L_803DE178
L_803DE154:
    cmplwi 0, 0x2
    .4byte 0x40820020 # bne .L_803DE178
    .4byte 0xC0020664 # lfs f0, lbl_80543604@sda21(r0)
    li 0, 0x7
    li 4, 0x3c
    stfs 0, 0x7c(31)
    stw 0, 0x84(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
L_803DE178:
    lis 3, lbl_80529DEC@ha
    lbz 0, 0x9e(31)
    addi 4, 3, lbl_80529DEC@l
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    stb 0, 0x23a(4)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480003B4 # b .L_803DE54C
L_803DE19C:
    li 0, 0x0
    mr 30, 31
    sth 0, 0x9c(31)
    li 29, 0x0
L_803DE1AC:
    lwz 3, 0x34(30)
    li 0, 0x1
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x44(30)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lbz 0, 0x9e(31)
    cmpw 29, 0
    .4byte 0x40820038 # bne .L_803DE208
    .4byte 0xC0220680 # lfs f1, lbl_80543620@sda21(r0)
    lfs 0, 0x6c(30)
    lwz 3, 0x34(30)
    fsubs 2, 1, 0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220680 # lfs f1, lbl_80543620@sda21(r0)
    lfs 0, 0x6c(30)
    lwz 3, 0x44(30)
    fsubs 2, 1, 0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000024 # b .L_803DE228
L_803DE208:
    lwz 3, 0x34(30)
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x44(30)
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402E08
L_803DE228:
    lwz 3, 0x34(30)
    li 0, 0x0
    addi 29, 29, 0x1
    sth 0, 0x20(3)
    cmpwi 29, 0x2
    lwz 3, 0x34(30)
    sth 0, 0x22(3)
    lwz 3, 0x44(30)
    sth 0, 0x20(3)
    lwz 3, 0x44(30)
    addi 30, 30, 0x4
    sth 0, 0x22(3)
    .4byte 0x4180FF54 # blt .L_803DE1AC
    lwz 3, 0x30(31)
    li 0, 0x1
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC042067C # lfs f2, lbl_8054361C@sda21(r0)
    stb 0, 0xb0(3)
    lwz 3, 0x30(31)
    bl fn_80402E08
    lwz 3, 0x30(31)
    li 30, 0x0
    mr 29, 31
    li 28, 0x0
    sth 30, 0x22(3)
L_803DE290:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x14(29)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x14(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x7
    addi 29, 29, 0x4
    sth 30, 0x20(3)
    .4byte 0x4180FFDC # blt .L_803DE290
    mr 29, 31
    li 28, 0x0
    li 30, 0x0
L_803DE2C4:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x50(29)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x50(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x2
    addi 29, 29, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFDC # blt .L_803DE2C4
    lwz 3, 0x58(31)
    li 6, 0x0
    li 0, 0x4
    li 4, 0xc
    lwz 3, 0x4(3)
    li 5, -0x1
    stb 6, 0xb0(3)
    stw 0, 0x84(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000238 # b .L_803DE54C
L_803DE318:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820188 # beq .L_803DE4B4
    li 3, 0x0
    li 0, 0x3
    sth 3, 0x9c(31)
    mr 29, 31
    li 28, 0x0
    stb 0, 0xa0(31)
L_803DE348:
    lwz 3, 0x34(29)
    li 0, 0x1
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x44(29)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lbz 0, 0x9e(31)
    cmpw 28, 0
    .4byte 0x40820038 # bne .L_803DE3A4
    .4byte 0xC0220680 # lfs f1, lbl_80543620@sda21(r0)
    lfs 0, 0x6c(29)
    lwz 3, 0x34(29)
    fsubs 2, 1, 0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220680 # lfs f1, lbl_80543620@sda21(r0)
    lfs 0, 0x6c(29)
    lwz 3, 0x44(29)
    fsubs 2, 1, 0
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000024 # b .L_803DE3C4
L_803DE3A4:
    lwz 3, 0x34(29)
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x44(29)
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402E08
L_803DE3C4:
    lwz 3, 0x34(29)
    li 0, 0x0
    addi 28, 28, 0x1
    sth 0, 0x20(3)
    cmpwi 28, 0x2
    lwz 3, 0x34(29)
    sth 0, 0x22(3)
    lwz 3, 0x44(29)
    sth 0, 0x20(3)
    lwz 3, 0x44(29)
    addi 29, 29, 0x4
    sth 0, 0x22(3)
    .4byte 0x4180FF54 # blt .L_803DE348
    lwz 3, 0x30(31)
    li 0, 0x1
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC042067C # lfs f2, lbl_8054361C@sda21(r0)
    stb 0, 0xb0(3)
    lwz 3, 0x30(31)
    bl fn_80402E08
    lwz 3, 0x30(31)
    li 30, 0x0
    mr 29, 31
    li 28, 0x0
    sth 30, 0x22(3)
L_803DE42C:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x14(29)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x14(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x7
    addi 29, 29, 0x4
    sth 30, 0x20(3)
    .4byte 0x4180FFDC # blt .L_803DE42C
    mr 29, 31
    li 28, 0x0
    li 30, 0x0
L_803DE460:
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    lwz 3, 0x50(29)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x50(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x2
    addi 29, 29, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFDC # blt .L_803DE460
    lwz 3, 0x58(31)
    li 6, 0x0
    li 0, 0x4
    li 4, 0xc
    lwz 3, 0x4(3)
    li 5, -0x1
    stb 6, 0xb0(3)
    stw 0, 0x84(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800009C # b .L_803DE54C
L_803DE4B4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_803DE500
    lwz 0, 0x80(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_803DE54C
    li 3, 0x1
    li 0, 0x1e
    stw 3, 0x80(31)
    li 4, 0x26
    li 5, -0x1
    stw 3, 0x88(31)
    stw 0, 0x8c(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000050 # b .L_803DE54C
L_803DE500:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_803DE54C
    lwz 0, 0x80(31)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_803DE54C
    li 0, 0x0
    li 3, 0x1
    stw 0, 0x80(31)
    li 0, 0x1e
    li 4, 0x26
    li 5, -0x1
    stw 3, 0x88(31)
    stw 0, 0x8c(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803DE54C:
    lwz 3, 0x8c(31)
    addi 0, 3, 0x1
    stw 0, 0x8c(31)
    lwz 0, 0x8c(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_803DE56C
    li 0, 0x0
    stw 0, 0x8c(31)
L_803DE56C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803DE58C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 22, 0x28(1)
    mr 25, 3
    lha 3, 0x9c(3)
    lis 4, lbl_804774C8@ha
    li 6, 0x0
    addi 0, 3, 0x1
    addi 5, 1, 0x8
    sth 0, 0x9c(25)
    addi 31, 4, lbl_804774C8@l
    li 28, 0x0
    li 27, 0x0
    lbz 0, 0x9e(25)
    cmpw 0, 6
    .4byte 0x4182000C # beq .L_803DE5E8
    stw 6, 0x0(5)
    addi 5, 5, 0x4
L_803DE5E8:
    lbz 0, 0x9e(25)
    li 6, 0x1
    cmpw 0, 6
    .4byte 0x41820008 # beq .L_803DE5FC
    stw 6, 0x0(5)
L_803DE5FC:
    lha 0, 0x9c(25)
    li 3, 0x0
    cmpw 0, 3
    .4byte 0x40810194 # ble .L_803DE79C
    lwz 0, 0x8(1)
    li 4, 0x8
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC0420674 # lfs f2, lbl_80543614@sda21(r0)
    addi 0, 3, 0x34
    lwzx 3, 25, 0
    bl fn_80402B10
    lwz 0, 0x8(1)
    li 4, 0x8
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC0420674 # lfs f2, lbl_80543614@sda21(r0)
    addi 0, 3, 0x44
    lwzx 3, 25, 0
    bl fn_80402B10
    lha 0, 0x9c(25)
    cmpwi 0, 0x8
    .4byte 0x40810008 # ble .L_803DE664
    li 0, 0x8
L_803DE664:
    mullw 3, 0, 0
    lis 24, 0x4330
    lwz 0, 0x8(1)
    stw 24, 0x10(1)
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    cmpwi 0, 0x1
    xoris 3, 3, 0x8000
    .4byte 0xC0020688 # lfs f0, lbl_80543628@sda21(r0)
    stw 3, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fmuls 1, 1, 0
    .4byte 0x41820090 # beq .L_803DE724
    .4byte 0x40800104 # bge .L_803DE79C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_803DE6A8
    .4byte 0x480000F8 # b .L_803DE79C
L_803DE6A8:
    .4byte 0xC0020648 # lfs f0, lbl_805435E8@sda21(r0)
    addi 23, 31, 0x1c0
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    li 26, 0x0
    fsubs 30, 0, 1
L_803DE6BC:
    lwz 3, 0x4(25)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0xdb
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    addi 23, 23, 0x8
    cmpwi 26, 0x11
    .4byte 0x4180FFA0 # blt .L_803DE6BC
    .4byte 0x4800007C # b .L_803DE79C
L_803DE724:
    .4byte 0xC0020648 # lfs f0, lbl_805435E8@sda21(r0)
    addi 23, 31, 0x248
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    li 26, 0x0
    fsubs 30, 0, 1
L_803DE738:
    lwz 3, 0x4(25)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0xec
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    addi 23, 23, 0x8
    cmpwi 26, 0x14
    .4byte 0x4180FFA0 # blt .L_803DE738
L_803DE79C:
    lha 0, 0x9c(25)
    cmpwi 0, 0x0
    .4byte 0x4081005C # ble .L_803DE800
    lbz 0, 0x9e(25)
    li 4, 0x14
    .4byte 0xC0420680 # lfs f2, lbl_80543620@sda21(r0)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    add 3, 25, 0
    lfs 0, 0x6c(3)
    lwz 3, 0x34(3)
    fsubs 2, 2, 0
    bl fn_80402940
    lbz 0, 0x9e(25)
    li 4, 0x14
    .4byte 0xC0420680 # lfs f2, lbl_80543620@sda21(r0)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    add 3, 25, 0
    lfs 0, 0x6c(3)
    lwz 3, 0x44(3)
    fsubs 2, 2, 0
    bl fn_80402940
L_803DE800:
    lha 0, 0x9c(25)
    cmpwi 0, 0x0
    .4byte 0x408100CC # ble .L_803DE8D4
    lwz 3, 0x30(25)
    li 4, 0xf
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    li 5, 0x0
    .4byte 0xC042067C # lfs f2, lbl_8054361C@sda21(r0)
    bl fn_80402940
    lha 0, 0x9c(25)
    cmpwi 0, 0xf
    .4byte 0x40810008 # ble .L_803DE834
    li 0, 0xf
L_803DE834:
    mullw 0, 0, 0
    lis 24, 0x4330
    stw 24, 0x18(1)
    addi 23, 31, 0x190
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    li 26, 0x0
    xoris 0, 0, 0x8000
    .4byte 0xC0020684 # lfs f0, lbl_80543624@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC0620648 # lfs f3, lbl_805435E8@sda21(r0)
    lfd 1, 0x18(1)
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 30, 3, 0
L_803DE870:
    lwz 3, 0x4(25)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0xd5
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    addi 23, 23, 0x8
    cmpwi 26, 0x6
    .4byte 0x4180FFA0 # blt .L_803DE870
L_803DE8D4:
    lha 0, 0x9c(25)
    cmpwi 0, 0x0
    .4byte 0x40810164 # ble .L_803DEA40
    lwz 3, 0x14(25)
    li 4, 0x14
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402B10
    addi 23, 25, 0x4
    mr 28, 3
    li 22, 0x1
L_803DE904:
    lwz 3, 0x14(23)
    li 4, 0x14
    .4byte 0xC0220674 # lfs f1, lbl_80543614@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402B10
    addi 22, 22, 0x1
    addi 23, 23, 0x4
    cmpwi 22, 0x7
    .4byte 0x4180FFDC # blt .L_803DE904
    lha 0, 0x9c(25)
    cmpwi 0, 0x14
    .4byte 0x40810008 # ble .L_803DE93C
    li 0, 0x14
L_803DE93C:
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x18(1)
    addi 23, 31, 0x0
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    li 24, 0x0
    xoris 0, 3, 0x8000
    .4byte 0xC0020678 # lfs f0, lbl_80543618@sda21(r0)
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
L_803DE96C:
    cmpwi 24, 0x0
    .4byte 0x40820064 # bne .L_803DE9D4
    lwz 3, 0x8(25)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 24, 0xa3
    lis 0, 0x4330
    lbzx 4, 25, 4
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x18(1)
    lwz 12, 0x24(12)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    .4byte 0x48000060 # b .L_803DEA30
L_803DE9D4:
    lwz 3, 0x4(25)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 24, 0xa3
    lis 0, 0x4330
    lbzx 4, 25, 4
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8220640 # lfd f1, lbl_805435E0@sda21(r0)
    stw 0, 0x18(1)
    lwz 12, 0x24(12)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
L_803DEA30:
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x32
    .4byte 0x4180FF30 # blt .L_803DE96C
L_803DEA40:
    mr 29, 25
    li 26, 0x0
    li 30, 0x0
L_803DEA4C:
    lha 0, 0x9c(25)
    cmpw 0, 30
    .4byte 0x40810148 # ble .L_803DEB9C
    lwz 3, 0x50(29)
    li 4, 0x14
    .4byte 0xC022067C # lfs f1, lbl_8054361C@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420664 # lfs f2, lbl_80543604@sda21(r0)
    bl fn_80402940
    lha 0, 0x9c(25)
    mr 27, 3
    subf 0, 30, 0
    cmpwi 0, 0x14
    .4byte 0x40810008 # ble .L_803DEA88
    li 0, 0x14
L_803DEA88:
    mullw 0, 0, 0
    lis 24, 0x4330
    stw 24, 0x18(1)
    cmpwi 26, 0x0
    .4byte 0xC8420650 # lfd f2, lbl_805435F0@sda21(r0)
    .4byte 0xC0020678 # lfs f0, lbl_80543618@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
    .4byte 0x40820078 # bne .L_803DEB2C
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    addi 22, 31, 0x368
    li 23, 0x0
L_803DEAC4:
    lwz 3, 0x4(25)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x110
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x5
    .4byte 0x4180FFA0 # blt .L_803DEAC4
    .4byte 0x48000074 # b .L_803DEB9C
L_803DEB2C:
    .4byte 0xCBE20640 # lfd f31, lbl_805435E0@sda21(r0)
    addi 22, 31, 0x390
    li 23, 0x0
L_803DEB38:
    lwz 3, 0x4(25)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x115
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x5
    .4byte 0x4180FFA0 # blt .L_803DEB38
L_803DEB9C:
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x2
    addi 30, 30, 0x5
    .4byte 0x4180FEA0 # blt .L_803DEA4C
    clrlwi. 0, 28, 24
    .4byte 0x4182006C # beq .L_803DEC20
    clrlwi. 0, 27, 24
    .4byte 0x41820064 # beq .L_803DEC20
    lwz 3, 0x8(1)
    li 7, 0x0
    li 4, 0x1
    li 0, 0x3
    slwi 6, 3, 2
    addi 3, 6, 0x34
    lwzx 5, 25, 3
    addi 3, 6, 0x44
    lwz 5, 0x4(5)
    stb 7, 0xb0(5)
    lwzx 3, 25, 3
    lwz 3, 0x4(3)
    stb 7, 0xb0(3)
    lwz 3, 0x30(25)
    lwz 3, 0x4(3)
    stb 7, 0xb0(3)
    lwz 3, 0x58(25)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    stw 7, 0x80(25)
    stw 7, 0x88(25)
    stw 7, 0x8c(25)
    stb 4, 0xa0(25)
    stw 0, 0x84(25)
L_803DEC20:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 22, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_803DAA18

