# Fresh project-wide gap hunt continuation: 29 functions, 8,424 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80005F98
etb_80005F98:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005F98, 8

.global etb_80005FA0
etb_80005FA0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005FA0, 8

.global etb_80005FA8
etb_80005FA8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80005FA8, 8

.global etb_80005FB0
etb_80005FB0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80005FB0, 8

.global etb_80005FB8
etb_80005FB8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005FB8, 8

.global etb_80005FC0
etb_80005FC0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005FC0, 8

.global etb_80005FC8
etb_80005FC8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80005FC8, 8

.global etb_80005FD0
etb_80005FD0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80005FD0, 8

.global etb_80005FD8
etb_80005FD8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80005FD8, 8

.global etb_80005FE0
etb_80005FE0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80005FE0, 8

.global etb_80005FE8
etb_80005FE8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005FE8, 8

.global etb_80005FF0
etb_80005FF0:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80005FF0, 8

.global etb_80005FF8
etb_80005FF8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80005FF8, 8

.global etb_80006000
etb_80006000:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80006000, 8

.global etb_80006008
etb_80006008:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006008, 8

.global etb_80006010
etb_80006010:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006010, 8

.global etb_80006018
etb_80006018:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006018, 8

.global etb_80006020
etb_80006020:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006020, 8

.global etb_80006028
etb_80006028:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006028, 8

.global etb_80006030
etb_80006030:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006030, 8

.global etb_80006038
etb_80006038:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006038, 8

.global etb_80006040
etb_80006040:
    .4byte 0x18080000
    .4byte 0x00000068
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_80006040, 24

.global etb_80006058
etb_80006058:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006058, 8

.global etb_80006060
etb_80006060:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006060, 8

.global etb_80006068
etb_80006068:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006068, 8

.global etb_80006070
etb_80006070:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006070, 8

.global etb_80006078
etb_80006078:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006078, 8

.global etb_80006080
etb_80006080:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006080, 8

.section extabindex, "a"
.balign 4
.global eti_80012460
eti_80012460:
    .4byte fn_80118160
    .4byte 0x00000224
    .4byte etb_80005F98
.size eti_80012460, 12

.global eti_8001246C
eti_8001246C:
    .4byte fn_80118384
    .4byte 0x00000038
    .4byte etb_80005FA0
.size eti_8001246C, 12

.global eti_80012478
eti_80012478:
    .4byte fn_801183BC
    .4byte 0x00000098
    .4byte etb_80005FA8
.size eti_80012478, 12

.global eti_80012484
eti_80012484:
    .4byte fn_80118454
    .4byte 0x0000009C
    .4byte etb_80005FB0
.size eti_80012484, 12

.global eti_80012490
eti_80012490:
    .4byte fn_801184F0
    .4byte 0x000001C0
    .4byte etb_80005FB8
.size eti_80012490, 12

.global eti_8001249C
eti_8001249C:
    .4byte fn_801186B0
    .4byte 0x0000006C
    .4byte etb_80005FC0
.size eti_8001249C, 12

.global eti_800124A8
eti_800124A8:
    .4byte fn_8011871C
    .4byte 0x0000007C
    .4byte etb_80005FC8
.size eti_800124A8, 12

.global eti_800124B4
eti_800124B4:
    .4byte fn_80118798
    .4byte 0x000000F4
    .4byte etb_80005FD0
.size eti_800124B4, 12

.global eti_800124C0
eti_800124C0:
    .4byte fn_8011888C
    .4byte 0x0000002C
    .4byte etb_80005FD8
.size eti_800124C0, 12

.global eti_800124CC
eti_800124CC:
    .4byte fn_801188B8
    .4byte 0x00000028
    .4byte etb_80005FE0
.size eti_800124CC, 12

.global eti_800124D8
eti_800124D8:
    .4byte fn_801188E0
    .4byte 0x00000058
    .4byte etb_80005FE8
.size eti_800124D8, 12

.global eti_800124E4
eti_800124E4:
    .4byte fn_80118938
    .4byte 0x00000078
    .4byte etb_80005FF0
.size eti_800124E4, 12

.global eti_800124F0
eti_800124F0:
    .4byte fn_801189B0
    .4byte 0x00000470
    .4byte etb_80005FF8
.size eti_800124F0, 12

.global eti_800124FC
eti_800124FC:
    .4byte fn_80118E20
    .4byte 0x000002C4
    .4byte etb_80006000
.size eti_800124FC, 12

.global eti_80012508
eti_80012508:
    .4byte fn_801190E4
    .4byte 0x00000138
    .4byte etb_80006008
.size eti_80012508, 12

.global eti_80012514
eti_80012514:
    .4byte fn_8011921C
    .4byte 0x00000090
    .4byte etb_80006010
.size eti_80012514, 12

.global eti_80012520
eti_80012520:
    .4byte fn_801192AC
    .4byte 0x000001BC
    .4byte etb_80006018
.size eti_80012520, 12

.global eti_8001252C
eti_8001252C:
    .4byte fn_80119468
    .4byte 0x0000005C
    .4byte etb_80006020
.size eti_8001252C, 12

.global eti_80012538
eti_80012538:
    .4byte fn_801194C4
    .4byte 0x00000164
    .4byte etb_80006028
.size eti_80012538, 12

.global eti_80012544
eti_80012544:
    .4byte fn_80119628
    .4byte 0x00000330
    .4byte etb_80006030
.size eti_80012544, 12

.global eti_80012550
eti_80012550:
    .4byte fn_80119998
    .4byte 0x000003B0
    .4byte etb_80006038
.size eti_80012550, 12

.global eti_8001255C
eti_8001255C:
    .4byte fn_80119D48
    .4byte 0x00000088
    .4byte etb_80006040
.size eti_8001255C, 12

.global eti_80012568
eti_80012568:
    .4byte fn_80119DD0
    .4byte 0x0000008C
    .4byte etb_80006058
.size eti_80012568, 12

.global eti_80012574
eti_80012574:
    .4byte fn_80119E5C
    .4byte 0x00000078
    .4byte etb_80006060
.size eti_80012574, 12

.global eti_80012580
eti_80012580:
    .4byte fn_80119ED4
    .4byte 0x00000224
    .4byte etb_80006068
.size eti_80012580, 12

.global eti_8001258C
eti_8001258C:
    .4byte fn_8011A0F8
    .4byte 0x000000B8
    .4byte etb_80006070
.size eti_8001258C, 12

.global eti_80012598
eti_80012598:
    .4byte fn_8011A1B0
    .4byte 0x00000038
    .4byte etb_80006078
.size eti_80012598, 12

.global eti_800125A4
eti_800125A4:
    .4byte fn_8011A1E8
    .4byte 0x00000060
    .4byte etb_80006080
.size eti_800125A4, 12

.text
.balign 4
.global fn_80118160
.global fn_80118384
.global fn_801183BC
.global fn_80118454
.global fn_801184F0
.global fn_801186B0
.global fn_8011871C
.global fn_80118798
.global fn_8011888C
.global fn_801188B8
.global fn_801188E0
.global fn_80118938
.global fn_801189B0
.global fn_80118E20
.global fn_801190E4
.global fn_8011921C
.global fn_801192AC
.global fn_80119468
.global fn_801194C4
.global fn_80119628
.global fn_80119958
.global fn_80119998
.global fn_80119D48
.global fn_80119DD0
.global fn_80119E5C
.global fn_80119ED4
.global fn_8011A0F8
.global fn_8011A1B0
.global fn_8011A1E8

fn_80118160:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC3F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC3F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801181B0
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
L_801181B0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801181E8
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
L_801181E8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80118220
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
L_80118220:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80118258
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
L_80118258:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80118290
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
L_80118290:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801182C8
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
L_801182C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80118300
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
L_80118300:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80118338
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
L_80118338:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80118370
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
L_80118370:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80118384:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 0, 0x0
    stb 0, 0x0(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801183BC:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x0
    stw 0, 0x14(1)
    stb 6, 0x1(3)
    .4byte 0x880D8ED1 # lbz r0, lbl_8053AA91@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082005C # bne .L_80118434
    lis 3, lbl_804BC504@ha
    stbu 6, lbl_804BC504@l(3)
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    lis 4, fn_80119E5C@ha
    lis 5, lbl_804BC4F8@ha
    stb 6, 0x1(3)
    addi 4, 4, fn_80119E5C@l
    stb 6, 0x2(3)
    addi 5, 5, lbl_804BC4F8@l
    stw 6, 0x8(3)
    stw 6, 0xc(3)
    stw 6, 0x10(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 6, 0x1c(3)
    stw 6, 0x20(3)
    stw 6, 0x24(3)
    stw 6, 0x28(3)
    stw 6, 0x2c(3)
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8ED1 # stb r0, lbl_8053AA91@sda21(r0)
L_80118434:
    lis 3, lbl_804BC504@ha
    li 0, 0x0
    addi 3, 3, lbl_804BC504@l
    stb 0, 0x1(3)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80118454:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stb 0, 0x1(3)
    .4byte 0x880D8ED1 # lbz r0, lbl_8053AA91@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820060 # bne .L_801184D0
    li 0, 0x0
    lis 3, lbl_804BC504@ha
    stbu 0, lbl_804BC504@l(3)
    lis 4, fn_80119E5C@ha
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    lis 5, lbl_804BC4F8@ha
    stb 0, 0x1(3)
    addi 4, 4, fn_80119E5C@l
    addi 5, 5, lbl_804BC4F8@l
    stb 0, 0x2(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 0, 0x1c(3)
    stw 0, 0x20(3)
    stw 0, 0x24(3)
    stw 0, 0x28(3)
    stw 0, 0x2c(3)
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8ED1 # stb r0, lbl_8053AA91@sda21(r0)
L_801184D0:
    lis 3, lbl_804BC504@ha
    li 0, 0x1
    addi 3, 3, lbl_804BC504@l
    stb 0, 0x1(3)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801184F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 4
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 6, 0x0
    clrlwi. 0, 30, 24
    stb 6, 0x0(31)
    .4byte 0x418200A8 # beq .L_801185C8
    .4byte 0x880D8ED1 # lbz r0, lbl_8053AA91@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082005C # bne .L_80118588
    lis 3, lbl_804BC504@ha
    stbu 6, lbl_804BC504@l(3)
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    lis 4, fn_80119E5C@ha
    lis 5, lbl_804BC4F8@ha
    stb 6, 0x1(3)
    addi 4, 4, fn_80119E5C@l
    stb 6, 0x2(3)
    addi 5, 5, lbl_804BC4F8@l
    stw 6, 0x8(3)
    stw 6, 0xc(3)
    stw 6, 0x10(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 6, 0x1c(3)
    stw 6, 0x20(3)
    stw 6, 0x24(3)
    stw 6, 0x28(3)
    stw 6, 0x2c(3)
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8ED1 # stb r0, lbl_8053AA91@sda21(r0)
L_80118588:
    li 0, 0x0
    lis 3, lbl_804BC504@ha
    stbu 0, lbl_804BC504@l(3)
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    stb 0, 0x1(3)
    stb 0, 0x2(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 0, 0x1c(3)
    stw 0, 0x20(3)
    stw 0, 0x24(3)
    stw 0, 0x28(3)
    stw 0, 0x10(3)
L_801185C8:
    lwz 5, 0x14(31)
    lwz 4, 0x10(31)
    addi 3, 5, 0x3
    cmplw 5, 5
    subf 3, 5, 3
    srwi 3, 3, 2
    .4byte 0x4080007C # bge .L_8011865C
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80118644
L_801185F0:
    lwz 0, 0x0(5)
    stw 0, 0x0(4)
    lwz 0, 0x4(5)
    stw 0, 0x4(4)
    lwz 0, 0x8(5)
    stw 0, 0x8(4)
    lwz 0, 0xc(5)
    stw 0, 0xc(4)
    lwz 0, 0x10(5)
    stw 0, 0x10(4)
    lwz 0, 0x14(5)
    stw 0, 0x14(4)
    lwz 0, 0x18(5)
    stw 0, 0x18(4)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(4)
    addi 4, 4, 0x20
    .4byte 0x4200FFB8 # bdnz .L_801185F0
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_8011865C
L_80118644:
    mtctr 3
L_80118648:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80118648
L_8011865C:
    lwz 0, 0x14(31)
    mr 3, 4
    .4byte 0x48000008 # b .L_8011866C
L_80118668:
    addi 3, 3, 0x4
L_8011866C:
    cmplw 3, 0
    .4byte 0x4082FFF8 # bne .L_80118668
    stw 4, 0x14(31)
    li 4, 0x0
    li 0, 0x13
    li 3, 0x1
    stb 4, 0x0(31)
    stb 4, 0x1(31)
    stb 4, 0x2(31)
    stw 0, 0x4(31)
    stw 4, 0x8(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801186B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820028 # beq .L_80118700
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x0(30)
    li 3, 0x1
    stb 0, 0x1(30)
    stb 0, 0x2(30)
    stw 31, 0x4(30)
    stw 0, 0x8(30)
    .4byte 0x48000008 # b .L_80118704
L_80118700:
    li 3, 0x0
L_80118704:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011871C:
    stwu 1, -0x10(1)
    lwz 6, 0x10(3)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_80118734
    li 0, 0x0
    .4byte 0x48000014 # b .L_80118744
L_80118734:
    lwz 0, 0x14(3)
    subf 0, 6, 0
    srawi 0, 0, 2
    addze 0, 0
L_80118744:
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80118754
    lwz 3, 0x14(3)
    .4byte 0x48000040 # b .L_80118790
L_80118754:
    lwz 3, 0x14(3)
    cmplw 4, 3
    .4byte 0x40820008 # bne .L_80118764
    .4byte 0x48000030 # b .L_80118790
L_80118764:
    stw 5, 0x8(1)
    stw 5, 0xc(1)
    .4byte 0x48000008 # b .L_80118774
L_80118770:
    addi 4, 4, 0x4
L_80118774:
    cmplw 4, 3
    .4byte 0x41820014 # beq .L_8011878C
    lwz 6, 0x0(4)
    lwz 0, 0x1a0(6)
    cmplw 5, 0
    .4byte 0x4082FFE8 # bne .L_80118770
L_8011878C:
    mr 3, 4
L_80118790:
    addi 1, 1, 0x10
    blr

fn_80118798:
    stwu 1, -0x10(1)
    lwz 5, 0x198(4)
    lwz 7, 0x14(3)
    stw 5, 0x8(1)
    lwz 6, 0x10(3)
    stw 5, 0xc(1)
    .4byte 0x48000008 # b .L_801187B8
L_801187B4:
    addi 6, 6, 0x4
L_801187B8:
    cmplw 6, 7
    .4byte 0x41820014 # beq .L_801187D0
    lwz 4, 0x0(6)
    lwz 0, 0x198(4)
    cmpw 5, 0
    .4byte 0x4082FFE8 # bne .L_801187B4
L_801187D0:
    cmplw 6, 7
    .4byte 0x418200B0 # beq .L_80118884
    addi 5, 6, 0x4
    addi 4, 7, 0x3
    cmplw 5, 7
    subf 4, 5, 4
    srwi 4, 4, 2
    .4byte 0x4080007C # bge .L_80118868
    srwi. 0, 4, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80118850
L_801187FC:
    lwz 0, 0x0(5)
    stw 0, 0x0(6)
    lwz 0, 0x4(5)
    stw 0, 0x4(6)
    lwz 0, 0x8(5)
    stw 0, 0x8(6)
    lwz 0, 0xc(5)
    stw 0, 0xc(6)
    lwz 0, 0x10(5)
    stw 0, 0x10(6)
    lwz 0, 0x14(5)
    stw 0, 0x14(6)
    lwz 0, 0x18(5)
    stw 0, 0x18(6)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(6)
    addi 6, 6, 0x20
    .4byte 0x4200FFB8 # bdnz .L_801187FC
    andi. 4, 4, 0x7
    .4byte 0x4182001C # beq .L_80118868
L_80118850:
    mtctr 4
L_80118854:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(6)
    addi 6, 6, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80118854
L_80118868:
    lwz 0, 0x14(3)
    mr 4, 6
    .4byte 0x48000008 # b .L_80118878
L_80118874:
    addi 4, 4, 0x4
L_80118878:
    cmplw 4, 0
    .4byte 0x4082FFF8 # bne .L_80118874
    stw 6, 0x14(3)
L_80118884:
    addi 1, 1, 0x10
    blr

fn_8011888C:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0xc
    stw 0, 0x14(1)
    stw 4, 0x8(1)
    addi 4, 1, 0x8
    bl fn_801188B8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801188B8:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 4
    stw 0, 0x14(1)
    lwz 4, 0x8(3)
    bl fn_801188E0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801188E0:
    stwu 1, -0x10(1)
    mflr 0
    mr 6, 5
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x4(3)
    subf 0, 0, 4
    srawi 0, 0, 2
    addze 31, 0
    bl fn_80118938
    lwz 3, 0x4(30)
    slwi 0, 31, 2
    add 3, 3, 0
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80118938:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr. 30, 5
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x41820038 # beq .L_80118994
    bl fn_801189B0
    lwz 0, 0x8(29)
    cmplw 3, 0
    .4byte 0x41820028 # beq .L_80118994
    lwz 0, 0x0(31)
    mtctr 30
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_80118994
L_80118980:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8011898C
    stw 0, 0x0(3)
L_8011898C:
    addi 3, 3, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80118980
L_80118994:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801189B0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr. 28, 5
    mr 27, 3
    mr 30, 4
    .4byte 0x4082000C # bne .L_801189D8
    mr 3, 4
    .4byte 0x48000438 # b .L_80118E0C
L_801189D8:
    lwz 5, 0x4(27)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_801189EC
    li 0, 0x0
    .4byte 0x48000014 # b .L_801189FC
L_801189EC:
    lwz 0, 0x8(27)
    subf 0, 5, 0
    srawi 0, 0, 2
    addze 0, 0
L_801189FC:
    lwz 3, 0xc(27)
    add 0, 28, 0
    cmplw 0, 3
    .4byte 0x41810218 # bgt .L_80118C20
    slwi 7, 28, 2
    lwz 6, 0x8(27)
    add 8, 30, 7
    cmplw 8, 6
    .4byte 0x40800144 # bge .L_80118B60
    subf 9, 7, 6
    addi 3, 6, 0x3
    cmplw 9, 6
    subf 3, 9, 3
    mr 5, 9
    srwi 3, 3, 2
    .4byte 0x4080007C # bge .L_80118AB4
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80118A9C
L_80118A48:
    lwz 0, 0x0(5)
    stw 0, 0x0(6)
    lwz 0, 0x4(5)
    stw 0, 0x4(6)
    lwz 0, 0x8(5)
    stw 0, 0x8(6)
    lwz 0, 0xc(5)
    stw 0, 0xc(6)
    lwz 0, 0x10(5)
    stw 0, 0x10(6)
    lwz 0, 0x14(5)
    stw 0, 0x14(6)
    lwz 0, 0x18(5)
    stw 0, 0x18(6)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(6)
    addi 6, 6, 0x20
    .4byte 0x4200FFB8 # bdnz .L_80118A48
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_80118AB4
L_80118A9C:
    mtctr 3
L_80118AA0:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(6)
    addi 6, 6, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80118AA0
L_80118AB4:
    addi 3, 9, 0x3
    cmplw 9, 30
    subf 3, 30, 3
    lwz 6, 0x8(27)
    mr 5, 9
    srwi 3, 3, 2
    .4byte 0x4081006C # ble .L_80118B38
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820050 # beq .L_80118B28
L_80118ADC:
    lwz 0, -0x4(5)
    stw 0, -0x4(6)
    lwz 0, -0x8(5)
    stw 0, -0x8(6)
    lwz 0, -0xc(5)
    stw 0, -0xc(6)
    lwz 0, -0x10(5)
    stw 0, -0x10(6)
    lwz 0, -0x14(5)
    stw 0, -0x14(6)
    lwz 0, -0x18(5)
    stw 0, -0x18(6)
    lwz 0, -0x1c(5)
    stw 0, -0x1c(6)
    lwzu 0, -0x20(5)
    stwu 0, -0x20(6)
    .4byte 0x4200FFC0 # bdnz .L_80118ADC
    andi. 3, 3, 0x7
    .4byte 0x41820014 # beq .L_80118B38
L_80118B28:
    mtctr 3
L_80118B2C:
    lwzu 0, -0x4(5)
    stwu 0, -0x4(6)
    .4byte 0x4200FFF8 # bdnz .L_80118B2C
L_80118B38:
    mr 3, 30
    .4byte 0x48000008 # b .L_80118B44
L_80118B40:
    addi 3, 3, 0x4
L_80118B44:
    cmplw 3, 8
    .4byte 0x4082FFF8 # bne .L_80118B40
    lwz 0, 0x8(27)
    mr 3, 4
    add 0, 0, 7
    stw 0, 0x8(27)
    .4byte 0x480002B0 # b .L_80118E0C
L_80118B60:
    addi 3, 6, 0x3
    cmplw 30, 6
    subf 3, 30, 3
    mr 6, 8
    mr 5, 30
    srwi 3, 3, 2
    .4byte 0x4080007C # bge .L_80118BF4
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80118BDC
L_80118B88:
    lwz 0, 0x0(5)
    stw 0, 0x0(6)
    lwz 0, 0x4(5)
    stw 0, 0x4(6)
    lwz 0, 0x8(5)
    stw 0, 0x8(6)
    lwz 0, 0xc(5)
    stw 0, 0xc(6)
    lwz 0, 0x10(5)
    stw 0, 0x10(6)
    lwz 0, 0x14(5)
    stw 0, 0x14(6)
    lwz 0, 0x18(5)
    stw 0, 0x18(6)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(6)
    addi 6, 6, 0x20
    .4byte 0x4200FFB8 # bdnz .L_80118B88
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_80118BF4
L_80118BDC:
    mtctr 3
L_80118BE0:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(6)
    addi 6, 6, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80118BE0
L_80118BF4:
    lwz 0, 0x8(27)
    mr 3, 30
    .4byte 0x48000008 # b .L_80118C04
L_80118C00:
    addi 3, 3, 0x4
L_80118C04:
    cmplw 3, 0
    .4byte 0x4082FFF8 # bne .L_80118C00
    lwz 0, 0x8(27)
    mr 3, 4
    add 0, 0, 7
    stw 0, 0x8(27)
    .4byte 0x480001F0 # b .L_80118E0C
L_80118C20:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80118C30
    li 4, 0x0
    .4byte 0x48000014 # b .L_80118C40
L_80118C30:
    lwz 0, 0x8(27)
    subf 0, 5, 0
    srawi 0, 0, 2
    addze 4, 0
L_80118C40:
    lwz 12, 0x10(27)
    mr 5, 28
    add 29, 4, 28
    mtctr 12
    bctrl
    cmplw 29, 3
    mr 31, 3
    .4byte 0x40810008 # ble .L_80118C64
    mr 31, 29
L_80118C64:
    slwi 3, 31, 2
    bl fn_80084370
    mr. 0, 3
    .4byte 0x4082000C # bne .L_80118C7C
    lwz 3, 0x8(27)
    .4byte 0x48000194 # b .L_80118E0C
L_80118C7C:
    lwz 5, 0x4(27)
    addi 4, 30, 0x3
    stw 27, 0x8(1)
    mr 6, 0
    cmplw 5, 30
    subf 4, 5, 4
    stw 0, 0xc(1)
    srwi 4, 4, 2
    .4byte 0x4080007C # bge .L_80118D18
    srwi. 3, 4, 3
    mtctr 3
    .4byte 0x41820058 # beq .L_80118D00
L_80118CAC:
    lwz 3, 0x0(5)
    stw 3, 0x0(6)
    lwz 3, 0x4(5)
    stw 3, 0x4(6)
    lwz 3, 0x8(5)
    stw 3, 0x8(6)
    lwz 3, 0xc(5)
    stw 3, 0xc(6)
    lwz 3, 0x10(5)
    stw 3, 0x10(6)
    lwz 3, 0x14(5)
    stw 3, 0x14(6)
    lwz 3, 0x18(5)
    stw 3, 0x18(6)
    lwz 3, 0x1c(5)
    addi 5, 5, 0x20
    stw 3, 0x1c(6)
    addi 6, 6, 0x20
    .4byte 0x4200FFB8 # bdnz .L_80118CAC
    andi. 4, 4, 0x7
    .4byte 0x4182001C # beq .L_80118D18
L_80118D00:
    mtctr 4
L_80118D04:
    lwz 3, 0x0(5)
    addi 5, 5, 0x4
    stw 3, 0x0(6)
    addi 6, 6, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80118D04
L_80118D18:
    lwz 5, 0x8(27)
    slwi 3, 28, 2
    mr 29, 6
    mr 7, 30
    addi 4, 5, 0x3
    cmplw 30, 5
    subf 4, 30, 4
    add 5, 6, 3
    srwi 4, 4, 2
    .4byte 0x4080007C # bge .L_80118DB8
    srwi. 3, 4, 3
    mtctr 3
    .4byte 0x41820058 # beq .L_80118DA0
L_80118D4C:
    lwz 3, 0x0(7)
    stw 3, 0x0(5)
    lwz 3, 0x4(7)
    stw 3, 0x4(5)
    lwz 3, 0x8(7)
    stw 3, 0x8(5)
    lwz 3, 0xc(7)
    stw 3, 0xc(5)
    lwz 3, 0x10(7)
    stw 3, 0x10(5)
    lwz 3, 0x14(7)
    stw 3, 0x14(5)
    lwz 3, 0x18(7)
    stw 3, 0x18(5)
    lwz 3, 0x1c(7)
    addi 7, 7, 0x20
    stw 3, 0x1c(5)
    addi 5, 5, 0x20
    .4byte 0x4200FFB8 # bdnz .L_80118D4C
    andi. 4, 4, 0x7
    .4byte 0x4182001C # beq .L_80118DB8
L_80118DA0:
    mtctr 4
L_80118DA4:
    lwz 3, 0x0(7)
    addi 7, 7, 0x4
    stw 3, 0x0(5)
    addi 5, 5, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80118DA4
L_80118DB8:
    lwz 3, 0x4(27)
    lwz 5, 0x8(27)
    mr 4, 3
    .4byte 0x48000008 # b .L_80118DCC
L_80118DC8:
    addi 4, 4, 0x4
L_80118DCC:
    cmplw 4, 5
    .4byte 0x4082FFF8 # bne .L_80118DC8
    lwz 5, 0x4(27)
    lwz 4, 0x8(27)
    stw 3, 0xc(1)
    subf 4, 5, 4
    srawi 4, 4, 2
    addze 4, 4
    add 4, 28, 4
    slwi 4, 4, 2
    add 4, 0, 4
    stw 4, 0x8(27)
    stw 0, 0x4(27)
    stw 31, 0xc(27)
    bl dtor_80084580
    mr 3, 29
L_80118E0C:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80118E20:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4182027C # beq .L_801190C4
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdd(3)
    rlwinm 0, 0, 0, 24, 30
    stb 0, 0xdd(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdd(3)
    rlwinm 0, 0, 0, 31, 29
    stb 0, 0xdd(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdd(3)
    rlwinm 0, 0, 0, 30, 28
    stb 0, 0xdd(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdd(3)
    rlwinm 0, 0, 0, 29, 27
    stb 0, 0xdd(3)
    lbz 0, 0x2(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80118EBC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80118EBC
    li 0, 0x1
    .4byte 0xC00297FC # lfs f0, lbl_8053C79C@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_80118EBC:
    lbz 0, 0x1(31)
    cmplwi 0, 0x0
    .4byte 0x40820200 # bne .L_801190C4
    lwz 29, 0x10(31)
    li 30, 0x1
    .4byte 0x48000048 # b .L_80118F18
L_80118ED4:
    lwz 28, 0x0(29)
    cmplwi 28, 0x0
    .4byte 0x41820038 # beq .L_80118F14
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80118F14
    li 30, 0x0
L_80118F14:
    addi 29, 29, 0x4
L_80118F18:
    lwz 0, 0x14(31)
    cmplw 29, 0
    .4byte 0x4082FFB4 # bne .L_80118ED4
    clrlwi. 0, 30, 24
    .4byte 0x41820190 # beq .L_801190B8
    lwz 0, 0x4(31)
    cmpwi 0, 0xe
    .4byte 0x40800184 # bge .L_801190B8
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 6, 0x0
    stb 6, 0x0(31)
    .4byte 0x880D8ED1 # lbz r0, lbl_8053AA91@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082005C # bne .L_80118FAC
    lis 3, lbl_804BC504@ha
    stbu 6, lbl_804BC504@l(3)
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    lis 4, fn_80119E5C@ha
    lis 5, lbl_804BC4F8@ha
    stb 6, 0x1(3)
    addi 4, 4, fn_80119E5C@l
    stb 6, 0x2(3)
    addi 5, 5, lbl_804BC4F8@l
    stw 6, 0x8(3)
    stw 6, 0xc(3)
    stw 6, 0x10(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 6, 0x1c(3)
    stw 6, 0x20(3)
    stw 6, 0x24(3)
    stw 6, 0x28(3)
    stw 6, 0x2c(3)
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8ED1 # stb r0, lbl_8053AA91@sda21(r0)
L_80118FAC:
    li 0, 0x0
    lis 3, lbl_804BC504@ha
    stbu 0, lbl_804BC504@l(3)
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    stb 0, 0x1(3)
    stb 0, 0x2(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 0, 0x1c(3)
    stw 0, 0x20(3)
    stw 0, 0x24(3)
    stw 0, 0x28(3)
    stw 0, 0x10(3)
    lwz 5, 0x14(31)
    lwz 4, 0x10(31)
    addi 3, 5, 0x3
    cmplw 5, 5
    subf 3, 5, 3
    srwi 3, 3, 2
    .4byte 0x4080007C # bge .L_80119080
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80119068
L_80119014:
    lwz 0, 0x0(5)
    stw 0, 0x0(4)
    lwz 0, 0x4(5)
    stw 0, 0x4(4)
    lwz 0, 0x8(5)
    stw 0, 0x8(4)
    lwz 0, 0xc(5)
    stw 0, 0xc(4)
    lwz 0, 0x10(5)
    stw 0, 0x10(4)
    lwz 0, 0x14(5)
    stw 0, 0x14(4)
    lwz 0, 0x18(5)
    stw 0, 0x18(4)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(4)
    addi 4, 4, 0x20
    .4byte 0x4200FFB8 # bdnz .L_80119014
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_80119080
L_80119068:
    mtctr 3
L_8011906C:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFF0 # bdnz .L_8011906C
L_80119080:
    lwz 0, 0x14(31)
    mr 3, 4
    .4byte 0x48000008 # b .L_80119090
L_8011908C:
    addi 3, 3, 0x4
L_80119090:
    cmplw 3, 0
    .4byte 0x4082FFF8 # bne .L_8011908C
    stw 4, 0x14(31)
    li 3, 0x0
    li 0, 0x13
    stb 3, 0x0(31)
    stb 3, 0x1(31)
    stb 3, 0x2(31)
    stw 0, 0x4(31)
    stw 3, 0x8(31)
L_801190B8:
    lwz 3, 0x8(31)
    addi 0, 3, 0x1
    stw 0, 0x8(31)
L_801190C4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801190E4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x18(3)
    cmplwi 0, 0x14
    .4byte 0x40800108 # bge .L_80119208
    li 3, 0x50
    bl fn_80084370
    mr. 6, 3
    .4byte 0x418200F8 # beq .L_80119208
    lwz 4, 0x14(31)
    addi 0, 31, 0xc
    lwz 5, 0x10(31)
    mr 7, 6
    addi 3, 4, 0x3
    stw 0, 0x8(1)
    subf 3, 5, 3
    cmplw 5, 4
    stw 6, 0xc(1)
    srwi 3, 3, 2
    .4byte 0x4080007C # bge .L_801191B8
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_801191A0
L_8011914C:
    lwz 0, 0x0(5)
    stw 0, 0x0(7)
    lwz 0, 0x4(5)
    stw 0, 0x4(7)
    lwz 0, 0x8(5)
    stw 0, 0x8(7)
    lwz 0, 0xc(5)
    stw 0, 0xc(7)
    lwz 0, 0x10(5)
    stw 0, 0x10(7)
    lwz 0, 0x14(5)
    stw 0, 0x14(7)
    lwz 0, 0x18(5)
    stw 0, 0x18(7)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(7)
    addi 7, 7, 0x20
    .4byte 0x4200FFB8 # bdnz .L_8011914C
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_801191B8
L_801191A0:
    mtctr 3
L_801191A4:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(7)
    addi 7, 7, 0x4
    .4byte 0x4200FFF0 # bdnz .L_801191A4
L_801191B8:
    lwz 3, 0x10(31)
    lwz 0, 0x14(31)
    mr 4, 3
    .4byte 0x48000008 # b .L_801191CC
L_801191C8:
    addi 4, 4, 0x4
L_801191CC:
    cmplw 4, 0
    .4byte 0x4082FFF8 # bne .L_801191C8
    lwz 5, 0x10(31)
    li 0, 0x14
    lwz 4, 0x14(31)
    stw 3, 0xc(1)
    subf 4, 5, 4
    srawi 4, 4, 2
    addze 4, 4
    slwi 4, 4, 2
    add 4, 6, 4
    stw 4, 0x14(31)
    stw 6, 0x10(31)
    stw 0, 0x18(31)
    bl dtor_80084580
L_80119208:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8011921C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D8ED2 # lbz r0, lbl_8053AA92@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820064 # bne .L_80119294
    li 8, 0x0
    .4byte 0x88CD8ED0 # lbz r6, lbl_8053AA90@sda21(r0)
    lis 3, lbl_804BC540@ha
    stbu 8, lbl_804BC540@l(3)
    lis 4, fn_80087AB4@ha
    li 7, 0x13
    addi 0, 4, fn_80087AB4@l
    lis 5, lbl_804BC534@ha
    lis 4, fn_801192AC@ha
    stb 8, 0x1(3)
    addi 4, 4, fn_801192AC@l
    addi 5, 5, lbl_804BC534@l
    stb 8, 0x2(3)
    stw 7, 0x4(3)
    stw 8, 0x8(3)
    stb 6, 0x8(1)
    stb 6, 0xc(3)
    stw 8, 0x10(3)
    stw 8, 0x14(3)
    stw 8, 0x18(3)
    stw 0, 0x1c(3)
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8ED2 # stb r0, lbl_8053AA92@sda21(r0)
L_80119294:
    lwz 0, 0x14(1)
    lis 3, lbl_804BC540@ha
    addi 3, 3, lbl_804BC540@l
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801192AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820184 # beq .L_8011944C
    lwz 5, 0x14(30)
    lwz 4, 0x10(30)
    addi 3, 5, 0x3
    cmplw 5, 5
    subf 3, 5, 3
    srwi 3, 3, 2
    .4byte 0x4080007C # bge .L_80119360
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80119348
L_801192F4:
    lwz 0, 0x0(5)
    stw 0, 0x0(4)
    lwz 0, 0x4(5)
    stw 0, 0x4(4)
    lwz 0, 0x8(5)
    stw 0, 0x8(4)
    lwz 0, 0xc(5)
    stw 0, 0xc(4)
    lwz 0, 0x10(5)
    stw 0, 0x10(4)
    lwz 0, 0x14(5)
    stw 0, 0x14(4)
    lwz 0, 0x18(5)
    stw 0, 0x18(4)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(4)
    addi 4, 4, 0x20
    .4byte 0x4200FFB8 # bdnz .L_801192F4
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_80119360
L_80119348:
    mtctr 3
L_8011934C:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFF0 # bdnz .L_8011934C
L_80119360:
    lwz 0, 0x14(30)
    mr 3, 4
    .4byte 0x48000008 # b .L_80119370
L_8011936C:
    addi 3, 3, 0x4
L_80119370:
    cmplw 3, 0
    .4byte 0x4082FFF8 # bne .L_8011936C
    addic. 0, 30, 0xc
    stw 4, 0x14(30)
    .4byte 0x418200BC # beq .L_8011943C
    lwz 5, 0x14(30)
    lwz 4, 0x10(30)
    addi 3, 5, 0x3
    cmplw 5, 5
    subf 3, 5, 3
    srwi 3, 3, 2
    .4byte 0x4080007C # bge .L_80119418
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80119400
L_801193AC:
    lwz 0, 0x0(5)
    stw 0, 0x0(4)
    lwz 0, 0x4(5)
    stw 0, 0x4(4)
    lwz 0, 0x8(5)
    stw 0, 0x8(4)
    lwz 0, 0xc(5)
    stw 0, 0xc(4)
    lwz 0, 0x10(5)
    stw 0, 0x10(4)
    lwz 0, 0x14(5)
    stw 0, 0x14(4)
    lwz 0, 0x18(5)
    stw 0, 0x18(4)
    lwz 0, 0x1c(5)
    addi 5, 5, 0x20
    stw 0, 0x1c(4)
    addi 4, 4, 0x20
    .4byte 0x4200FFB8 # bdnz .L_801193AC
    andi. 3, 3, 0x7
    .4byte 0x4182001C # beq .L_80119418
L_80119400:
    mtctr 3
L_80119404:
    lwz 0, 0x0(5)
    addi 5, 5, 0x4
    stw 0, 0x0(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFF0 # bdnz .L_80119404
L_80119418:
    lwz 0, 0x14(30)
    mr 3, 4
    .4byte 0x48000008 # b .L_80119428
L_80119424:
    addi 3, 3, 0x4
L_80119428:
    cmplw 3, 0
    .4byte 0x4082FFF8 # bne .L_80119424
    stw 4, 0x14(30)
    lwz 3, 0x10(30)
    bl dtor_80084580
L_8011943C:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011944C
    mr 3, 30
    bl dtor_80084580
L_8011944C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80119468:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 5, 0x2
    mr 10, 4
    stw 0, 0x14(1)
    .4byte 0x4182001C # beq .L_80119498
    .4byte 0x40800018 # bge .L_80119498
    cmpwi 5, 0x0
    .4byte 0x40800008 # bge .L_80119490
    .4byte 0x4800000C # b .L_80119498
L_80119490:
    li 4, 0x23
    .4byte 0x48000008 # b .L_8011949C
L_80119498:
    li 4, 0x46
L_8011949C:
    mr 6, 5
    li 5, 0x0
    li 7, 0x0
    li 8, 0x2
    li 9, 0x0
    bl fn_80119998
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801194C4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x41820134 # beq .L_80119614
    lwz 0, 0x24(31)
    cmpwi 0, 0x2
    .4byte 0x41820128 # beq .L_80119614
    .4byte 0xC02297F8 # lfs f1, lbl_8053C798@sda21(r0)
    lfs 0, 0x14(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820118 # beq .L_80119614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 0, 0x24(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8011951C
    .4byte 0x40800040 # bge .L_80119554
    .4byte 0x4800003C # b .L_80119554
L_8011951C:
    li 6, 0x0
    li 0, -0x1
    stw 6, 0x1c(1)
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    stw 0, 0x24(1)
    lwz 3, 0x2c(31)
    stw 6, 0x18(1)
    lwz 12, 0x0(3)
    stw 0, 0x20(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x48000038 # b .L_80119588
L_80119554:
    li 6, 0x0
    li 0, 0xff
    stw 6, 0xc(1)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x2c(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
L_80119588:
    lfs 0, 0x14(31)
    lwz 3, 0x2c(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x28(1)
    lwz 12, 0x24(12)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 7, 0x4330
    lwz 3, 0x2c(31)
    li 4, 0x0
    lwz 8, 0x4(5)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    lhz 0, 0x6(8)
    lhz 8, 0x4(8)
    xoris 0, 0, 0x8000
    .4byte 0xC02297F8 # lfs f1, lbl_8053C798@sda21(r0)
    xoris 8, 8, 0x8000
    stw 7, 0x30(1)
    .4byte 0xC8829808 # lfd f4, lbl_8053C7A8@sda21(r0)
    fmr 2, 1
    stw 8, 0x34(1)
    lwz 12, 0xec(12)
    lfd 0, 0x30(1)
    stw 0, 0x3c(1)
    fsubs 3, 0, 4
    stw 7, 0x38(1)
    lfd 0, 0x38(1)
    fsubs 4, 0, 4
    mtctr 12
    bctrl
L_80119614:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80119628:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(4)
    cmpwi 0, 0x16
    .4byte 0x418202FC # beq .L_80119944
    .4byte 0x40800014 # bge .L_80119660
    cmpwi 0, 0x9
    .4byte 0x418202F0 # beq .L_80119944
    .4byte 0x48000008 # b .L_80119660
    .4byte 0x480002E8 # b .L_80119944
L_80119660:
    lbz 0, 0x0(31)
    cmplwi 0, 0x0
    .4byte 0x418202DC # beq .L_80119944
    lbz 0, 0x1(31)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_801196A8
    lbz 0, 0x2(31)
    cmplwi 0, 0x0
    .4byte 0x418202C4 # beq .L_80119944
    lwz 3, 0x10(31)
    subi 0, 3, 0x1
    stw 0, 0x10(31)
    lwz 0, 0x10(31)
    cmpwi 0, 0x0
    .4byte 0x418102AC # bgt .L_80119944
    li 0, 0x0
    stb 0, 0x1(31)
    .4byte 0x480002A0 # b .L_80119944
L_801196A8:
    lwz 3, 0x4(31)
    addi 0, 3, 0x1
    stw 0, 0x4(31)
    lwz 0, 0x1c(31)
    cmpwi 0, 0x1
    .4byte 0x41820054 # beq .L_80119710
    .4byte 0x40800010 # bge .L_801196D0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801196DC
    .4byte 0x48000198 # b .L_80119864
L_801196D0:
    cmpwi 0, 0x3
    .4byte 0x40800190 # bge .L_80119864
    .4byte 0x4800004C # b .L_80119724
L_801196DC:
    lbz 0, 0x2(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801196FC
    lwz 0, 0x10(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_801196FC
    li 0, 0x1
    stb 0, 0x1(31)
L_801196FC:
    lfs 1, 0x14(31)
    lfs 0, 0x18(31)
    fsubs 0, 1, 0
    stfs 0, 0x14(31)
    .4byte 0x48000158 # b .L_80119864
L_80119710:
    lfs 1, 0x14(31)
    lfs 0, 0x18(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    .4byte 0x48000144 # b .L_80119864
L_80119724:
    lwz 0, 0x24(31)
    cmpwi 0, 0x2
    .4byte 0x408200D0 # bne .L_801197FC
    lwz 3, 0x8(31)
    lwz 4, 0x4(31)
    srwi 0, 3, 31
    add 0, 0, 3
    srawi 0, 0, 1
    cmpw 4, 0
    .4byte 0x408200B4 # bne .L_801197FC
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    li 3, 0x0
    stfs 0, 0x8(1)
    li 5, 0x3ec
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0xc(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x10(1)
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x3ed
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x3ee
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x3ef
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801197FC:
    lwz 3, 0x8(31)
    lwz 4, 0x4(31)
    srwi 0, 3, 31
    add 0, 0, 3
    srawi 3, 0, 1
    addi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x4180003C # blt .L_80119854
    lbz 0, 0x2(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80119840
    lwz 0, 0x10(31)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_80119840
    li 0, 0x1
    stb 0, 0x1(31)
    .4byte 0x48000028 # b .L_80119864
L_80119840:
    lfs 1, 0x14(31)
    lfs 0, 0x18(31)
    fsubs 0, 1, 0
    stfs 0, 0x14(31)
    .4byte 0x48000014 # b .L_80119864
L_80119854:
    lfs 1, 0x14(31)
    lfs 0, 0x18(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
L_80119864:
    lfs 1, 0x14(31)
    .4byte 0xC0029810 # lfs f0, lbl_8053C7B0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80119880
    stfs 0, 0x14(31)
    .4byte 0x48000018 # b .L_80119894
L_80119880:
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80119894
    stfs 0, 0x14(31)
L_80119894:
    lwz 3, 0x4(31)
    lwz 0, 0x8(31)
    cmpw 3, 0
    .4byte 0x408100A4 # ble .L_80119944
    lbz 0, 0x2(31)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_80119908
    lwz 0, 0x10(31)
    cmpwi 0, 0x0
    .4byte 0x41810044 # bgt .L_801198FC
    li 0, 0x0
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    stb 0, 0x0(31)
    stb 0, 0x1(31)
    stb 0, 0x2(31)
    stw 0, 0x4(31)
    stw 0, 0x8(31)
    stw 0, 0xc(31)
    stfs 0, 0x14(31)
    stfs 0, 0x18(31)
    stw 0, 0x1c(31)
    stw 0, 0x20(31)
    stw 0, 0x24(31)
    stw 0, 0x28(31)
    stw 0, 0x10(31)
    .4byte 0x4800004C # b .L_80119944
L_801198FC:
    li 0, 0x1
    stb 0, 0x1(31)
    .4byte 0x48000040 # b .L_80119944
L_80119908:
    li 0, 0x0
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    stb 0, 0x0(31)
    stb 0, 0x1(31)
    stb 0, 0x2(31)
    stw 0, 0x4(31)
    stw 0, 0x8(31)
    stw 0, 0xc(31)
    stfs 0, 0x14(31)
    stfs 0, 0x18(31)
    stw 0, 0x1c(31)
    stw 0, 0x20(31)
    stw 0, 0x24(31)
    stw 0, 0x28(31)
    stw 0, 0x10(31)
L_80119944:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80119958:
    li 0, 0x0
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    stb 0, 0x0(3)
    stb 0, 0x1(3)
    stb 0, 0x2(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 0, 0x1c(3)
    stw 0, 0x20(3)
    stw 0, 0x24(3)
    stw 0, 0x28(3)
    stw 0, 0x10(3)
    blr

fn_80119998:
    stwu 1, -0x40(1)
    mflr 0
    li 11, 0x1
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stb 11, 0x0(3)
    li 3, 0x0
    stb 3, 0x1(31)
    stb 3, 0x2(31)
    stw 3, 0x4(31)
    stw 4, 0x8(31)
    stw 5, 0xc(31)
    stw 6, 0x1c(31)
    stw 7, 0x20(31)
    stw 8, 0x24(31)
    stw 10, 0x28(31)
    stw 9, 0x10(31)
    lwz 0, 0x10(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_801199F4
    stb 11, 0x2(31)
    .4byte 0x48000008 # b .L_801199F8
L_801199F4:
    stb 3, 0x2(31)
L_801199F8:
    lwz 0, 0x24(31)
    cmpwi 0, 0x2
    .4byte 0x4082002C # bne .L_80119A2C
    cmpwi 6, 0x2
    .4byte 0x4182001C # beq .L_80119A24
    .4byte 0x40800018 # bge .L_80119A24
    cmpwi 6, 0x0
    .4byte 0x40800008 # bge .L_80119A1C
    .4byte 0x4800000C # b .L_80119A24
L_80119A1C:
    li 0, 0x23
    .4byte 0x48000008 # b .L_80119A28
L_80119A24:
    li 0, 0x46
L_80119A28:
    stw 0, 0x8(31)
L_80119A2C:
    lwz 0, 0x1c(31)
    cmpwi 0, 0x1
    .4byte 0x41820114 # beq .L_80119B48
    .4byte 0x40800010 # bge .L_80119A48
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80119A54
    .4byte 0x480002F0 # b .L_80119D34
L_80119A48:
    cmpwi 0, 0x3
    .4byte 0x408002E8 # bge .L_80119D34
    .4byte 0x480001F0 # b .L_80119C40
L_80119A54:
    lwz 0, 0x24(31)
    cmpwi 0, 0x2
    .4byte 0x408200B4 # bne .L_80119B10
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    addi 4, 1, 0x20
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    li 3, 0x0
    stfs 0, 0x20(1)
    li 5, 0x3ec
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x24(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x28(1)
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x20
    li 3, 0x0
    li 5, 0x3ed
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x20
    li 3, 0x0
    li 5, 0x3ee
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x20
    li 3, 0x0
    li 5, 0x3ef
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80119B10:
    .4byte 0xC0429810 # lfs f2, lbl_8053C7B0@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x30(1)
    .4byte 0xC8229808 # lfd f1, lbl_8053C7A8@sda21(r0)
    stfs 2, 0x14(31)
    lwz 3, 0x8(31)
    subi 0, 3, 0x1
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x18(31)
    .4byte 0x480001F0 # b .L_80119D34
L_80119B48:
    lwz 0, 0x24(31)
    cmpwi 0, 0x2
    .4byte 0x408200B4 # bne .L_80119C04
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    addi 4, 1, 0x14
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    li 3, 0x0
    stfs 0, 0x14(1)
    li 5, 0x3f0
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x18(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x1c(1)
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x3f1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x3f2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x0
    li 5, 0x3f3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80119C04:
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x30(1)
    .4byte 0xC8229808 # lfd f1, lbl_8053C7A8@sda21(r0)
    stfs 0, 0x14(31)
    .4byte 0xC0429810 # lfs f2, lbl_8053C7B0@sda21(r0)
    lwz 3, 0x8(31)
    subi 0, 3, 0x1
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x18(31)
    .4byte 0x480000F8 # b .L_80119D34
L_80119C40:
    lwz 0, 0x24(31)
    cmpwi 0, 0x2
    .4byte 0x408200B4 # bne .L_80119CFC
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    li 3, 0x0
    stfs 0, 0x8(1)
    li 5, 0x3f0
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0xc(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x10(1)
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x3f1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x3f2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC0229800 # lfs f1, lbl_8053C7A0@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x0
    li 5, 0x3f3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80119CFC:
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x30(1)
    .4byte 0xC8229808 # lfd f1, lbl_8053C7A8@sda21(r0)
    stfs 0, 0x14(31)
    .4byte 0xC0429814 # lfs f2, lbl_8053C7B4@sda21(r0)
    lwz 3, 0x8(31)
    subi 0, 3, 0x1
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x18(31)
L_80119D34:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80119D48:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    lwz 0, 0x2c(3)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_80119DB4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    .4byte 0x80AD8350 # lwz r5, lbl_80539F10@sda21(r0)
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 31, 3
    li 3, 0x168
    bl fn_80084370
    mr. 29, 3
    .4byte 0x4182000C # beq .L_80119DB0
    mr 4, 31
    bl fn_80097800
L_80119DB0:
    stw 29, 0x2c(30)
L_80119DB4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80119DD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D8ED1 # lbz r0, lbl_8053AA91@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820060 # bne .L_80119E44
    li 0, 0x0
    lis 3, lbl_804BC504@ha
    stbu 0, lbl_804BC504@l(3)
    lis 4, fn_80119E5C@ha
    .4byte 0xC00297F8 # lfs f0, lbl_8053C798@sda21(r0)
    lis 5, lbl_804BC4F8@ha
    stb 0, 0x1(3)
    addi 4, 4, fn_80119E5C@l
    addi 5, 5, lbl_804BC4F8@l
    stb 0, 0x2(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    stw 0, 0x1c(3)
    stw 0, 0x20(3)
    stw 0, 0x24(3)
    stw 0, 0x28(3)
    stw 0, 0x2c(3)
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8ED1 # stb r0, lbl_8053AA91@sda21(r0)
L_80119E44:
    lwz 0, 0x14(1)
    lis 3, lbl_804BC504@ha
    addi 3, 3, lbl_804BC504@l
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80119E5C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820040 # beq .L_80119EB8
    lwz 3, 0x2c(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80119EA0
    .4byte 0x41820018 # beq .L_80119EA0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80119EA0:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x2c(30)
    .4byte 0x4081000C # ble .L_80119EB8
    mr 3, 30
    bl dtor_80084580
L_80119EB8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80119ED4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC4F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC4F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80119F24
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x68
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80119F24:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80119F5C
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x74
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80119F5C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80119F94
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x80
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80119F94:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80119FCC
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x8c
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80119FCC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A004
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x98
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8011A004:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A03C
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0xa4
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8011A03C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A074
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0xb0
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8011A074:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A0AC
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0xbc
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8011A0AC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A0E4
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0xc8
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8011A0E4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011A0F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5930
    lbz 0, 0x239(31)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_8011A19C
    lbz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_8011A16C
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1e
    .4byte 0x41800030 # blt .L_8011A16C
    bl fn_8011921C
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_8011A19C
    bl fn_8011921C
    lwz 4, 0x230(31)
    bl fn_801186B0
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8011A19C
    li 0, 0x1
    stb 0, 0x239(31)
L_8011A16C:
    lwz 0, 0x90(31)
    clrrwi. 0, 0, 27
    .4byte 0x41820028 # beq .L_8011A19C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8011A19C
    li 0, 0x1
    stb 0, 0x238(31)
L_8011A19C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011A1B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    clrlwi 0, 0, 27
    stw 0, 0x230(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011A1E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8011A22C
    lis 5, lbl_8049DAD8@ha
    li 4, 0x0
    addi 0, 5, lbl_8049DAD8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011A22C
    mr 3, 30
    bl dtor_80084580
L_8011A22C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80118160
    .4byte fn_80119ED4

