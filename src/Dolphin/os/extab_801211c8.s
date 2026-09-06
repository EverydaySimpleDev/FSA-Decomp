# Fresh project-wide gap hunt continuation: 58 functions, 13,824 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_80006290
etb_80006290:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006290, 8

.global etb_80006298
etb_80006298:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80006298, 8

.global etb_800062A0
etb_800062A0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800062A0, 8

.global etb_800062A8
etb_800062A8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800062A8, 8

.global etb_800062B0
etb_800062B0:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_800062B0, 8

.global etb_800062B8
etb_800062B8:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_800062B8, 8

.global etb_800062C0
etb_800062C0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800062C0, 8

.global etb_800062C8
etb_800062C8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800062C8, 8

.global etb_800062D0
etb_800062D0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800062D0, 8

.global etb_800062D8
etb_800062D8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800062D8, 8

.global etb_800062E0
etb_800062E0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800062E0, 8

.global etb_800062E8
etb_800062E8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800062E8, 8

.global etb_800062F0
etb_800062F0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800062F0, 8

.global etb_800062F8
etb_800062F8:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800062F8, 8

.global etb_80006300
etb_80006300:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006300, 8

.global etb_80006308
etb_80006308:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006308, 8

.global etb_80006310
etb_80006310:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006310, 8

.global etb_80006318
etb_80006318:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006318, 8

.global etb_80006320
etb_80006320:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006320, 8

.global etb_80006328
etb_80006328:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80006328, 8

.global etb_80006330
etb_80006330:
    .4byte 0x384A0000
    .4byte 0x00000000
.size etb_80006330, 8

.global etb_80006338
etb_80006338:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80006338, 8

.global etb_80006340
etb_80006340:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80006340, 8

.global etb_80006348
etb_80006348:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80006348, 8

.global etb_80006350
etb_80006350:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80006350, 8

.global etb_80006358
etb_80006358:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80006358, 8

.global etb_80006360
etb_80006360:
    .4byte 0x290A0000
    .4byte 0x00000000
.size etb_80006360, 8

.global etb_80006368
etb_80006368:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_80006368, 8

.global etb_80006370
etb_80006370:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006370, 8

.global etb_80006378
etb_80006378:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006378, 8

.global etb_80006380
etb_80006380:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006380, 8

.global etb_80006388
etb_80006388:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006388, 8

.global etb_80006390
etb_80006390:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80006390, 8

.global etb_80006398
etb_80006398:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006398, 8

.global etb_800063A0
etb_800063A0:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_800063A0, 8

.global etb_800063A8
etb_800063A8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_800063A8, 8

.global etb_800063B0
etb_800063B0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800063B0, 8

.section extabindex, "a"
.balign 4
.global eti_80012880
eti_80012880:
    .4byte fn_801211C8
    .4byte 0x00000224
    .4byte etb_80006290
.size eti_80012880, 12

.global eti_8001288C
eti_8001288C:
    .4byte fn_80121438
    .4byte 0x00000298
    .4byte etb_80006298
.size eti_8001288C, 12

.global eti_80012898
eti_80012898:
    .4byte fn_801216D0
    .4byte 0x00000094
    .4byte etb_800062A0
.size eti_80012898, 12

.global eti_800128A4
eti_800128A4:
    .4byte fn_80121764
    .4byte 0x00000088
    .4byte etb_800062A8
.size eti_800128A4, 12

.global eti_800128B0
eti_800128B0:
    .4byte fn_801217EC
    .4byte 0x000002D0
    .4byte etb_800062B0
.size eti_800128B0, 12

.global eti_800128BC
eti_800128BC:
    .4byte fn_80121ABC
    .4byte 0x000000FC
    .4byte etb_800062B8
.size eti_800128BC, 12

.global eti_800128C8
eti_800128C8:
    .4byte fn_80121BB8
    .4byte 0x000001B0
    .4byte etb_800062C0
.size eti_800128C8, 12

.global eti_800128D4
eti_800128D4:
    .4byte fn_80121D68
    .4byte 0x00000048
    .4byte etb_800062C8
.size eti_800128D4, 12

.global eti_800128E0
eti_800128E0:
    .4byte fn_80121DC8
    .4byte 0x00000078
    .4byte etb_800062D0
.size eti_800128E0, 12

.global eti_800128EC
eti_800128EC:
    .4byte fn_80121E40
    .4byte 0x000000F4
    .4byte etb_800062D8
.size eti_800128EC, 12

.global eti_800128F8
eti_800128F8:
    .4byte fn_80121FA8
    .4byte 0x00000084
    .4byte etb_800062E0
.size eti_800128F8, 12

.global eti_80012904
eti_80012904:
    .4byte fn_8012202C
    .4byte 0x00000098
    .4byte etb_800062E8
.size eti_80012904, 12

.global eti_80012910
eti_80012910:
    .4byte fn_801220C4
    .4byte 0x00000084
    .4byte etb_800062F0
.size eti_80012910, 12

.global eti_8001291C
eti_8001291C:
    .4byte fn_80122148
    .4byte 0x00000400
    .4byte etb_800062F8
.size eti_8001291C, 12

.global eti_80012928
eti_80012928:
    .4byte fn_80122548
    .4byte 0x000001E8
    .4byte etb_80006300
.size eti_80012928, 12

.global eti_80012934
eti_80012934:
    .4byte fn_80122730
    .4byte 0x000000A4
    .4byte etb_80006308
.size eti_80012934, 12

.global eti_80012940
eti_80012940:
    .4byte fn_8012285C
    .4byte 0x0000003C
    .4byte etb_80006310
.size eti_80012940, 12

.global eti_8001294C
eti_8001294C:
    .4byte fn_80122898
    .4byte 0x0000014C
    .4byte etb_80006318
.size eti_8001294C, 12

.global eti_80012958
eti_80012958:
    .4byte fn_801229E4
    .4byte 0x000000B8
    .4byte etb_80006320
.size eti_80012958, 12

.global eti_80012964
eti_80012964:
    .4byte fn_80122A9C
    .4byte 0x000000FC
    .4byte etb_80006328
.size eti_80012964, 12

.global eti_80012970
eti_80012970:
    .4byte fn_80122B98
    .4byte 0x00000114
    .4byte etb_80006330
.size eti_80012970, 12

.global eti_8001297C
eti_8001297C:
    .4byte fn_80122CAC
    .4byte 0x0000008C
    .4byte etb_80006338
.size eti_8001297C, 12

.global eti_80012988
eti_80012988:
    .4byte fn_80122D38
    .4byte 0x000000FC
    .4byte etb_80006340
.size eti_80012988, 12

.global eti_80012994
eti_80012994:
    .4byte fn_80122E34
    .4byte 0x00000138
    .4byte etb_80006348
.size eti_80012994, 12

.global eti_800129A0
eti_800129A0:
    .4byte fn_80122F6C
    .4byte 0x00000130
    .4byte etb_80006350
.size eti_800129A0, 12

.global eti_800129AC
eti_800129AC:
    .4byte fn_8012309C
    .4byte 0x000002F8
    .4byte etb_80006358
.size eti_800129AC, 12

.global eti_800129B8
eti_800129B8:
    .4byte fn_80123394
    .4byte 0x00000720
    .4byte etb_80006360
.size eti_800129B8, 12

.global eti_800129C4
eti_800129C4:
    .4byte fn_80123AB4
    .4byte 0x000000E0
    .4byte etb_80006368
.size eti_800129C4, 12

.global eti_800129D0
eti_800129D0:
    .4byte fn_80123B94
    .4byte 0x0000019C
    .4byte etb_80006370
.size eti_800129D0, 12

.global eti_800129DC
eti_800129DC:
    .4byte fn_80123D30
    .4byte 0x00000058
    .4byte etb_80006378
.size eti_800129DC, 12

.global eti_800129E8
eti_800129E8:
    .4byte fn_80123D88
    .4byte 0x000000F8
    .4byte etb_80006380
.size eti_800129E8, 12

.global eti_800129F4
eti_800129F4:
    .4byte fn_80123E9C
    .4byte 0x00000100
    .4byte etb_80006388
.size eti_800129F4, 12

.global eti_80012A00
eti_80012A00:
    .4byte fn_80123F9C
    .4byte 0x000002DC
    .4byte etb_80006390
.size eti_80012A00, 12

.global eti_80012A0C
eti_80012A0C:
    .4byte fn_80124278
    .4byte 0x000001D0
    .4byte etb_80006398
.size eti_80012A0C, 12

.global eti_80012A18
eti_80012A18:
    .4byte fn_80124448
    .4byte 0x000001B8
    .4byte etb_800063A0
.size eti_80012A18, 12

.global eti_80012A24
eti_80012A24:
    .4byte fn_80124600
    .4byte 0x00000140
    .4byte etb_800063A8
.size eti_80012A24, 12

.global eti_80012A30
eti_80012A30:
    .4byte fn_80124740
    .4byte 0x00000088
    .4byte etb_800063B0
.size eti_80012A30, 12

.text
.balign 4
.global fn_801211C8
.global fn_801213EC
.global fn_801213F4
.global fn_801213FC
.global fn_80121404
.global fn_80121408
.global fn_8012140C
.global fn_80121410
.global fn_80121414
.global fn_80121418
.global fn_8012141C
.global fn_80121420
.global fn_80121424
.global fn_80121428
.global fn_80121430
.global fn_80121438
.global fn_801216D0
.global fn_80121764
.global fn_801217EC
.global fn_80121ABC
.global fn_80121BB8
.global fn_80121D68
.global fn_80121DB0
.global fn_80121DC8
.global fn_80121E40
.global fn_80121F34
.global fn_80121FA8
.global fn_8012202C
.global fn_801220C4
.global fn_80122148
.global fn_80122548
.global fn_80122730
.global fn_801227D4
.global fn_80122804
.global fn_80122834
.global fn_8012285C
.global fn_80122898
.global fn_801229E4
.global fn_80122A9C
.global fn_80122B98
.global fn_80122CAC
.global fn_80122D38
.global fn_80122E34
.global fn_80122F6C
.global fn_8012309C
.global fn_80123394
.global fn_80123AB4
.global fn_80123B94
.global fn_80123D30
.global fn_80123D88
.global fn_80123E80
.global fn_80123E94
.global fn_80123E9C
.global fn_80123F9C
.global fn_80124278
.global fn_80124448
.global fn_80124600
.global fn_80124740

fn_801211C8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BCD60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BCD60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80121218
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
L_80121218:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80121250
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
L_80121250:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80121288
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
L_80121288:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801212C0
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
L_801212C0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801212F8
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
L_801212F8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80121330
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
L_80121330:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80121368
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
L_80121368:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801213A0
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
L_801213A0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801213D8
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
L_801213D8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801213EC:
    li 3, 0x0
    blr

fn_801213F4:
    li 3, 0x0
    blr

fn_801213FC:
    li 3, 0x0
    blr

fn_80121404:
    blr

fn_80121408:
    blr

fn_8012140C:
    blr

fn_80121410:
    blr

fn_80121414:
    blr

fn_80121418:
    blr

fn_8012141C:
    blr

fn_80121420:
    blr

fn_80121424:
    blr

fn_80121428:
    li 3, 0x1
    blr

fn_80121430:
    li 3, 0x0
    blr

fn_80121438:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    mr 30, 4
    mr 29, 3
    stfs 0, 0x8(4)
    stfs 0, 0x4(4)
    stfs 0, 0x0(4)
    bl SpatialRegistry_GetBase
    lis 4, 0x4349
    addi 4, 4, 0x5243
    bl fn_801F7A08
    mr. 31, 3
    .4byte 0x4080000C # bge .L_801214A0
    li 3, 0x0
    .4byte 0x48000200 # b .L_8012169C
L_801214A0:
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x4082000C # bne .L_801214BC
    li 3, 0x0
    .4byte 0x480001E4 # b .L_8012169C
L_801214BC:
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801214D0
    li 3, 0x0
    .4byte 0x480001D0 # b .L_8012169C
L_801214D0:
    lwz 3, 0x4(29)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_801214E8
    li 3, 0x0
    .4byte 0x480001B8 # b .L_8012169C
L_801214E8:
    mr 3, 29
    addi 4, 1, 0x24
    bl fn_801F31C4
    mr 3, 31
    addi 4, 1, 0x14
    bl fn_801F31C4
    lfs 2, 0x14(1)
    .4byte 0xC0229A18 # lfs f1, lbl_8053C9B8@sda21(r0)
    lfs 0, 0x18(1)
    fadds 4, 2, 1
    lfs 5, 0x24(1)
    fadds 3, 0, 1
    lfs 1, 0x1c(1)
    .4byte 0xC0429A1C # lfs f2, lbl_8053C9BC@sda21(r0)
    lfs 0, 0x20(1)
    fadds 1, 1, 2
    stfs 3, 0x18(1)
    fadds 0, 0, 2
    lfs 2, 0x28(1)
    fcmpo cr0, 5, 4
    stfs 4, 0x14(1)
    stfs 1, 0x1c(1)
    lfs 3, 0x2c(1)
    lfs 1, 0x30(1)
    stfs 0, 0x20(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80121558
    fmr 5, 4
L_80121558:
    lfs 0, 0x18(1)
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8012156C
    fmr 2, 0
L_8012156C:
    lfs 0, 0x1c(1)
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80121580
    fmr 3, 0
L_80121580:
    lfs 0, 0x20(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80121594
    fmr 1, 0
L_80121594:
    fcmpo cr0, 3, 5
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_801215B4
    fcmpo cr0, 1, 2
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801215B4
    li 0, 0x1
L_801215B4:
    clrlwi. 0, 0, 24
    .4byte 0x418200E0 # beq .L_80121698
    psq_l 0, 0xc(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 4, 0x14(31)
    psq_st 0, 0x8(1), 0, 0
    lfs 1, 0xc(29)
    lfs 0, 0x8(1)
    lfs 3, 0x10(29)
    fsubs 0, 1, 0
    lfs 1, 0xc(1)
    .4byte 0xC0429A14 # lfs f2, lbl_8053C9B4@sda21(r0)
    fsubs 3, 3, 1
    stfs 4, 0x10(1)
    .4byte 0xC0229A20 # lfs f1, lbl_8053C9C0@sda21(r0)
    stfs 0, 0x0(30)
    stfs 3, 0x4(30)
    stfs 2, 0x8(30)
    psq_l 3, 0x0(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    lfs 29, 0x8(30)
    fmuls 0, 1, 0
    ps_madd 4, 29, 29, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80121674
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80121638
    fmr 31, 4
    .4byte 0x48000028 # b .L_8012165C
L_80121638:
    frsqrte 3, 4
    .4byte 0xC0429A24 # lfs f2, lbl_8053C9C4@sda21(r0)
    .4byte 0xC0029A28 # lfs f0, lbl_8053C9C8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_8012165C:
    psq_l 1, 0x0(30), 0, 0
    psq_l 0, 0x8(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x0(30), 0, 0
    psq_st 0, 0x8(30), 1, 0
L_80121674:
    .4byte 0xC3C29A2C # lfs f30, lbl_8053C9CC@sda21(r0)
    li 3, 0x1
    psq_l 1, 0x0(30), 0, 0
    psq_l 0, 0x8(30), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x0(30), 0, 0
    psq_st 0, 0x8(30), 1, 0
    .4byte 0x48000008 # b .L_8012169C
L_80121698:
    li 3, 0x0
L_8012169C:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x84(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_801216D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 4
    mr 3, 30
    bl fn_8023E98C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80121700
    li 3, -0x1
    .4byte 0x48000050 # b .L_8012174C
L_80121700:
    li 31, 0x0
L_80121704:
    mr 3, 31
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8012173C
    mr 3, 31
    bl fn_8023ECF0
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_8012173C
    mr 3, 31
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8012173C
    mr 3, 31
    .4byte 0x48000014 # b .L_8012174C
L_8012173C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFC0 # blt .L_80121704
    li 3, -0x1
L_8012174C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80121764:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    lbz 0, 0x332(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_801217D8
    mr 29, 27
    li 28, 0x0
    li 30, 0x0
    li 31, -0x1
    .4byte 0x48000038 # b .L_801217CC
L_80121798:
    bl SpatialRegistry_GetBase
    lwz 4, 0x364(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_801217C4
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4c49
    cmplwi 0, 0x4d54
    .4byte 0x4082000C # bne .L_801217C4
    stb 30, 0x11c(3)
    stw 31, 0x364(29)
L_801217C4:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_801217CC:
    lwz 0, 0x360(27)
    cmpw 28, 0
    .4byte 0x4180FFC4 # blt .L_80121798
L_801217D8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801217EC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 27, 3
    mr 28, 4
    lbz 0, 0x332(3)
    cmplwi 0, 0x0
    .4byte 0x4182029C # beq .L_80121AA8
    .4byte 0x418200E0 # beq .L_801218F0
    mr 30, 27
    li 29, 0x0
    .4byte 0x480000C8 # b .L_801218E4
L_80121820:
    lwz 0, 0x364(30)
    cmpwi 0, 0x0
    .4byte 0x408000B4 # bge .L_801218DC
    lbz 0, 0x332(27)
    cmplwi 0, 0x0
    .4byte 0x418200A8 # beq .L_801218DC
    cmpw 29, 3
    .4byte 0x408000A0 # bge .L_801218DC
    cmpwi 29, 0x0
    .4byte 0x41800098 # blt .L_801218DC
    xoris 3, 29, 0x8000
    lis 0, 0x4330
    stw 3, 0x1c(1)
    .4byte 0xC8229A30 # lfd f1, lbl_8053C9D0@sda21(r0)
    stw 0, 0x18(1)
    psq_l 2, 0xc(27), 0, 0
    lfs 4, 0x14(27)
    lfd 0, 0x18(1)
    psq_st 2, 0x8(1), 0, 0
    fsubs 1, 0, 1
    .4byte 0xC0429A10 # lfs f2, lbl_8053C9B0@sda21(r0)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    lfs 3, 0x8(1)
    fmadds 0, 2, 1, 0
    stfs 4, 0x10(1)
    fsubs 0, 3, 0
    stfs 0, 0x8(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4c49
    lwz 5, 0x4(27)
    addi 4, 4, 0x4d54
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x364(30)
    lwz 31, 0x364(30)
    cmpwi 31, 0x0
    .4byte 0x41800020 # blt .L_801218DC
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801218DC
    li 0, 0x0
    stb 0, 0x11d(3)
L_801218DC:
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_801218E4:
    lwz 3, 0x360(27)
    cmpw 29, 3
    .4byte 0x4180FF34 # blt .L_80121820
L_801218F0:
    mr 31, 27
    li 29, 0x0
    li 30, 0x0
    .4byte 0x480001A0 # b .L_80121A9C
L_80121900:
    bl SpatialRegistry_GetBase
    lwz 4, 0x364(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_80121920
    li 0, -0x1
    stw 0, 0x364(31)
    .4byte 0x48000174 # b .L_80121A90
L_80121920:
    lbz 0, 0x333(27)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80121940
    clrlwi. 0, 28, 24
    .4byte 0x40820010 # bne .L_80121940
    lbz 0, 0x335(27)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8012194C
L_80121940:
    li 0, 0x1
    stb 0, 0x11d(3)
    .4byte 0x4800000C # b .L_80121954
L_8012194C:
    li 0, 0x0
    stb 0, 0x11d(3)
L_80121954:
    clrlwi. 0, 28, 24
    .4byte 0x41820078 # beq .L_801219D0
    lwz 0, 0x24c(27)
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_801219A0
    lwz 4, 0x108(27)
    addi 0, 4, 0x2
    subf. 4, 30, 0
    .4byte 0x40800008 # bge .L_8012197C
    li 4, 0x0
L_8012197C:
    cmpwi 4, 0x4
    .4byte 0x41800008 # blt .L_80121988
    li 4, 0x4
L_80121988:
    lwz 0, 0x198(27)
    .4byte 0xC0029A38 # lfs f0, lbl_8053C9D8@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
    .4byte 0x480000F4 # b .L_80121A90
L_801219A0:
    cmpwi 0, 0xc
    .4byte 0x40800020 # bge .L_801219C4
    lwz 4, 0x108(27)
    lwz 0, 0x198(27)
    .4byte 0xC0029A38 # lfs f0, lbl_8053C9D8@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
    .4byte 0x480000D0 # b .L_80121A90
L_801219C4:
    li 0, 0x0
    stb 0, 0x11d(3)
    .4byte 0x480000C4 # b .L_80121A90
L_801219D0:
    lbz 0, 0x335(27)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80121A10
    lwz 0, 0x108(27)
    subf. 4, 30, 0
    .4byte 0x40800008 # bge .L_801219EC
    li 4, 0x0
L_801219EC:
    cmpwi 4, 0x4
    .4byte 0x41800008 # blt .L_801219F8
    li 4, 0x4
L_801219F8:
    lwz 0, 0x198(27)
    .4byte 0xC0029A38 # lfs f0, lbl_8053C9D8@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
    .4byte 0x48000084 # b .L_80121A90
L_80121A10:
    lbz 0, 0x333(27)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_80121A90
    lwz 0, 0x354(27)
    cmpwi 0, 0x2d
    .4byte 0x4080003C # bge .L_80121A60
    lwz 4, 0x108(27)
    addi 0, 4, 0x2
    subf. 4, 30, 0
    .4byte 0x40800008 # bge .L_80121A3C
    li 4, 0x0
L_80121A3C:
    cmpwi 4, 0x4
    .4byte 0x41800008 # blt .L_80121A48
    li 4, 0x4
L_80121A48:
    lwz 0, 0x198(27)
    .4byte 0xC0029A38 # lfs f0, lbl_8053C9D8@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
    .4byte 0x48000034 # b .L_80121A90
L_80121A60:
    lwz 0, 0x108(27)
    subf. 4, 30, 0
    .4byte 0x40800008 # bge .L_80121A70
    li 4, 0x0
L_80121A70:
    cmpwi 4, 0x4
    .4byte 0x41800008 # blt .L_80121A7C
    li 4, 0x4
L_80121A7C:
    lwz 0, 0x198(27)
    .4byte 0xC0029A38 # lfs f0, lbl_8053C9D8@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
L_80121A90:
    addi 31, 31, 0x4
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_80121A9C:
    lwz 0, 0x360(27)
    cmpw 29, 0
    .4byte 0x4180FE5C # blt .L_80121900
L_80121AA8:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80121ABC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    li 0, 0x0
    mr 27, 3
    .4byte 0x980D8EE0 # stb r0, lbl_8053AAA0@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x7c(12)
    mtctr 12
    bctrl
    lbz 0, 0x332(27)
    cmplwi 0, 0x0
    .4byte 0x418200A4 # beq .L_80121B9C
    psq_l 1, 0xc(27), 0, 0
    mr 29, 27
    lfs 2, 0x14(27)
    li 30, 0x0
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    lis 31, 0x4c49
    psq_st 1, 0x8(1), 0, 0
    .4byte 0xC3E29A10 # lfs f31, lbl_8053C9B0@sda21(r0)
    lfs 1, 0x8(1)
    stfs 2, 0x10(1)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000064 # b .L_80121B90
L_80121B30:
    lfs 0, 0x8(1)
    fadds 0, 0, 31
    stfs 0, 0x8(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(27)
    addi 4, 31, 0x4d54
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x364(29)
    lwz 28, 0x364(29)
    cmpwi 28, 0x0
    .4byte 0x41800034 # blt .L_80121B9C
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80121B88
    li 0, 0x0
    stb 0, 0x11d(3)
L_80121B88:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_80121B90:
    lwz 0, 0x360(27)
    cmpw 30, 0
    .4byte 0x4180FF98 # blt .L_80121B30
L_80121B9C:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80121BB8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    lwz 0, 0x35c(3)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_80121BE4
    li 3, 0x1
    .4byte 0x48000170 # b .L_80121D50
L_80121BE4:
    .4byte 0xC0429A14 # lfs f2, lbl_8053C9B4@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    addi 9, 1, 0x10
    lfs 3, 0x0(4)
    addi 3, 30, 0x268
    stfs 2, 0x28(1)
    addi 5, 1, 0x28
    lfs 0, 0x4(4)
    mr 4, 9
    stfs 2, 0x2c(1)
    addi 6, 1, 0xc
    addi 7, 1, 0x8
    li 8, 0x200
    stfs 2, 0x30(1)
    lwz 0, 0x4(30)
    stw 0, 0xc(1)
    psq_l 2, 0xc(30), 0, 0
    lfs 5, 0x14(30)
    psq_st 2, 0x1c(1), 0, 0
    lfs 4, 0x1c(1)
    lfs 2, 0x20(1)
    fadds 3, 4, 3
    stfs 5, 0x24(1)
    fadds 0, 2, 0
    stfs 5, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 0, 0x20(1)
    psq_l 0, 0x1c(1), 0, 0
    psq_st 0, 0x0(9), 0, 0
    bl fn_800FDEA0
    lfs 0, 0x28(1)
    mr 31, 3
    stfs 0, 0x3c(30)
    lfs 0, 0x2c(1)
    stfs 0, 0x40(30)
    lfs 0, 0x30(1)
    stfs 0, 0x44(30)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lha 0, 0x8(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_80121D14
    lwz 4, 0x374(30)
    addi 0, 4, 0x1
    stw 0, 0x374(30)
    lwz 0, 0x374(30)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_80121CD0
    li 0, 0xa
    stw 0, 0x374(30)
L_80121CD0:
    lwz 0, 0x374(30)
    cmpwi 0, 0xa
    .4byte 0x4180003C # blt .L_80121D14
    li 0, 0x0
    stw 0, 0x374(30)
    stw 3, 0x98(30)
    lwz 0, 0x238(30)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80121D14
    mr 4, 3
    addi 3, 30, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 30, 0x230
    bl fn_801D1F14
L_80121D14:
    cmpwi 31, 0x3
    .4byte 0x4182002C # beq .L_80121D44
    cmpwi 31, 0x1
    .4byte 0x4082002C # bne .L_80121D4C
    addi 3, 30, 0x268
    li 4, -0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_800FD894
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80121D4C
L_80121D44:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80121D50
L_80121D4C:
    li 3, 0x0
L_80121D50:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80121D68:
    stwu 1, -0x20(1)
    mflr 0
    mr 6, 3
    stw 0, 0x24(1)
    addi 5, 1, 0x8
    lfs 0, 0x14(3)
    addi 3, 6, 0x268
    psq_l 1, 0xc(6), 0, 0
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x10(1)
    lwz 4, 0x35c(6)
    lwz 6, 0x4(6)
    bl fn_800FE3EC
    lwz 0, 0x24(1)
    li 3, 0x1
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80121DB0:
    li 0, 0x0
    stb 0, 0x26a(3)
    stb 0, 0x26b(3)
    stb 0, 0x269(3)
    li 3, 0x1
    blr

fn_80121DC8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    mr 3, 4
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 4, 0x8(3)
    psq_st 0, 0x8(1), 0, 0
    lfs 0, 0xc(31)
    lfs 3, 0x8(1)
    lfs 2, 0xc(1)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    fsubs 1, 2, 1
    stfs 4, 0x10(1)
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80121E2C
    frsqrte 0, 1
    fmuls 1, 0, 1
L_80121E2C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80121E40:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_80121EA8
    .4byte 0x40800014 # bge .L_80121E74
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80121E80
    .4byte 0x40800028 # bge .L_80121E94
    .4byte 0x4800005C # b .L_80121ECC
L_80121E74:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_80121ECC
    .4byte 0x48000040 # b .L_80121EBC
L_80121E80:
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC0429A3C # lfs f2, lbl_8053C9DC@sda21(r0)
    bl fn_801CD950
    .4byte 0x4800003C # b .L_80121ECC
L_80121E94:
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC0429A40 # lfs f2, lbl_8053C9E0@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000028 # b .L_80121ECC
L_80121EA8:
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x40
    .4byte 0xC0429A3C # lfs f2, lbl_8053C9DC@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000014 # b .L_80121ECC
L_80121EBC:
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x40
    .4byte 0xC0429A40 # lfs f2, lbl_8053C9E0@sda21(r0)
    bl fn_801CD950
L_80121ECC:
    lfs 2, 0x44(31)
    .4byte 0xC0229A44 # lfs f1, lbl_8053C9E4@sda21(r0)
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_80121F1C
    stfs 0, 0x14(31)
    li 3, 0x1
    .4byte 0x48000008 # b .L_80121F20
L_80121F1C:
    li 3, 0x0
L_80121F20:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80121F34:
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    lwz 0, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_80121F88
    .4byte 0x40800014 # bge .L_80121F64
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80121F70
    .4byte 0x40800020 # bge .L_80121F7C
    .4byte 0x4800003C # b .L_80121F9C
L_80121F64:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_80121F9C
    .4byte 0x48000028 # b .L_80121F94
L_80121F70:
    .4byte 0xC0029A48 # lfs f0, lbl_8053C9E8@sda21(r0)
    stfs 0, 0x3c(3)
    .4byte 0x48000024 # b .L_80121F9C
L_80121F7C:
    .4byte 0xC0029A4C # lfs f0, lbl_8053C9EC@sda21(r0)
    stfs 0, 0x3c(3)
    .4byte 0x48000018 # b .L_80121F9C
L_80121F88:
    .4byte 0xC0029A48 # lfs f0, lbl_8053C9E8@sda21(r0)
    stfs 0, 0x40(3)
    .4byte 0x4800000C # b .L_80121F9C
L_80121F94:
    .4byte 0xC0029A4C # lfs f0, lbl_8053C9EC@sda21(r0)
    stfs 0, 0x40(3)
L_80121F9C:
    .4byte 0xC0029A28 # lfs f0, lbl_8053C9C8@sda21(r0)
    stfs 0, 0x44(3)
    blr

fn_80121FA8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0029A54 # lfs f0, lbl_8053C9F4@sda21(r0)
    li 5, 0x33a
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    li 8, 0x0
    li 9, 0x0
    psq_l 1, 0xc(31), 0, 0
    li 10, 0x1
    lfs 3, 0x14(3)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0xC0229A58 # lfs f1, lbl_8053C9F8@sda21(r0)
    lfs 2, 0xc(1)
    stfs 3, 0x10(1)
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xed
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8012202C:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0029A54 # lfs f0, lbl_8053C9F4@sda21(r0)
    li 5, 0x33a
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    li 8, 0x0
    li 9, 0x0
    psq_l 1, 0xc(31), 0, 0
    li 10, 0x1
    lfs 3, 0x14(3)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0xC0229A58 # lfs f1, lbl_8053C9F8@sda21(r0)
    lfs 2, 0xc(1)
    stfs 3, 0x10(1)
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xed
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0x230
    li 4, 0x9
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801220C4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0029A54 # lfs f0, lbl_8053C9F4@sda21(r0)
    li 5, 0x33a
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    li 8, 0x0
    li 9, 0x0
    psq_l 1, 0xc(31), 0, 0
    li 10, 0x1
    lfs 3, 0x14(3)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0xC0229A58 # lfs f1, lbl_8053C9F8@sda21(r0)
    lfs 2, 0xc(1)
    stfs 3, 0x10(1)
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xed
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80122148:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lwz 3, 0x344(3)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8012217C
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80122184
L_8012217C:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80122188
L_80122184:
    bl fn_8022EA0C
L_80122188:
    cmpwi 3, 0x0
    .4byte 0x4180039C # blt .L_80122528
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_801221A4
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_801221AC
L_801221A4:
    li 30, -0x1
    .4byte 0x4800000C # b .L_801221B4
L_801221AC:
    bl fn_8022EA0C
    mr 30, 3
L_801221B4:
    mr 28, 30
    li 29, 0x0
L_801221BC:
    mr 3, 29
    bl fn_8023ECF0
    cmpw 30, 3
    .4byte 0x4082000C # bne .L_801221D4
    mr 28, 29
    .4byte 0x48000010 # b .L_801221E0
L_801221D4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE0 # blt .L_801221BC
L_801221E0:
    mr 3, 28
    bl fn_80234E30
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80122200
    mr 3, 30
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80122208
L_80122200:
    li 0, 0x1
    .4byte 0x48000008 # b .L_8012220C
L_80122208:
    li 0, 0x0
L_8012220C:
    clrlwi. 0, 0, 24
    .4byte 0x40820030 # bne .L_80122240
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80122228
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80122230
L_80122228:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80122234
L_80122230:
    bl fn_8022EA0C
L_80122234:
    bl fn_8023BCD4
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8012224C
L_80122240:
    li 0, 0x0
    stb 0, 0x11d(31)
    .4byte 0x4800000C # b .L_80122254
L_8012224C:
    li 0, 0x1
    stb 0, 0x11d(31)
L_80122254:
    li 0, 0x0
    stb 0, 0x331(31)
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80122270
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80122278
L_80122270:
    li 3, -0x1
    .4byte 0x48000008 # b .L_8012227C
L_80122278:
    bl fn_8022EA0C
L_8012227C:
    bl fn_8023E724
    lwz 0, 0x344(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    cmpwi 0, 0x0
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x4180000C # blt .L_801222A4
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_801222AC
L_801222A4:
    li 28, -0x1
    .4byte 0x48000010 # b .L_801222B8
L_801222AC:
    mr 3, 0
    bl fn_8022EA0C
    mr 28, 3
L_801222B8:
    mr 3, 28
    bl fn_8023E98C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801222D0
    li 29, -0x1
    .4byte 0x4800004C # b .L_80122318
L_801222D0:
    li 29, 0x0
L_801222D4:
    mr 3, 29
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80122308
    mr 3, 29
    bl fn_8023ECF0
    cmpw 28, 3
    .4byte 0x40820018 # bne .L_80122308
    mr 3, 29
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122308
    .4byte 0x48000014 # b .L_80122318
L_80122308:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFC4 # blt .L_801222D4
    li 29, -0x1
L_80122318:
    cmpwi 29, 0x0
    .4byte 0x4180003C # blt .L_80122358
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80122334
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8012233C
L_80122334:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80122340
L_8012233C:
    bl fn_8022EA0C
L_80122340:
    cmpw 29, 3
    .4byte 0x41820014 # beq .L_80122358
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x8(3)
    stfs 0, 0x10(1)
L_80122358:
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8012236C
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80122374
L_8012236C:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80122378
L_80122374:
    bl fn_8022EA0C
L_80122378:
    bl fn_80230CFC
    stw 3, 0x98(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801223D4
    .4byte 0x40800014 # bge .L_801223A0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801223AC
    .4byte 0x40800028 # bge .L_801223C0
    .4byte 0x4800005C # b .L_801223F8
L_801223A0:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801223F8
    .4byte 0x48000040 # b .L_801223E8
L_801223AC:
    lfs 1, 0x8(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800003C # b .L_801223F8
L_801223C0:
    lfs 1, 0x8(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000028 # b .L_801223F8
L_801223D4:
    lfs 1, 0xc(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_801223F8
L_801223E8:
    lfs 1, 0xc(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_801223F8:
    .4byte 0xC0029A24 # lfs f0, lbl_8053C9C4@sda21(r0)
    stfs 0, 0x37c(31)
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80122414
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8012241C
L_80122414:
    li 28, -0x1
    .4byte 0x4800000C # b .L_80122424
L_8012241C:
    bl fn_8022EA0C
    mr 28, 3
L_80122424:
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80122438
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80122440
L_80122438:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80122444
L_80122440:
    bl fn_8022EA0C
L_80122444:
    bl fn_8023E10C
    mr 30, 3
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x40820020 # bne .L_80122478
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    stfs 0, 0xc(31)
    lfs 0, 0x10(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    .4byte 0x48000024 # b .L_80122498
L_80122478:
    lfs 1, 0x8(1)
    addi 3, 31, 0xc
    .4byte 0xC0429A5C # lfs f2, lbl_8053C9FC@sda21(r0)
    bl fn_801CD950
    lfs 1, 0xc(1)
    addi 3, 31, 0x10
    .4byte 0xC0429A5C # lfs f2, lbl_8053C9FC@sda21(r0)
    bl fn_801CD950
L_80122498:
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_801224AC
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_801224B4
L_801224AC:
    li 3, -0x1
    .4byte 0x48000008 # b .L_801224B8
L_801224B4:
    bl fn_8022EA0C
L_801224B8:
    bl fn_80230CFC
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_80122528
    lwz 4, 0x374(31)
    addi 0, 4, 0x1
    stw 0, 0x374(31)
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_801224E4
    li 0, 0xa
    stw 0, 0x374(31)
L_801224E4:
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180003C # blt .L_80122528
    li 0, 0x0
    stw 0, 0x374(31)
    stw 3, 0x98(31)
    lwz 0, 0x238(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80122528
    mr 4, 3
    addi 3, 31, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
L_80122528:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80122548:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x344(3)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80122570
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80122578
L_80122570:
    li 3, -0x1
    .4byte 0x48000008 # b .L_8012257C
L_80122578:
    bl fn_8022EA0C
L_8012257C:
    cmpwi 3, 0x0
    .4byte 0x4180019C # blt .L_8012271C
    li 0, 0x0
    stb 0, 0x331(31)
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_801225A0
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_801225A8
L_801225A0:
    li 3, -0x1
    .4byte 0x48000008 # b .L_801225AC
L_801225A8:
    bl fn_8022EA0C
L_801225AC:
    bl fn_8023E724
    lwz 0, 0x344(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    cmpwi 0, 0x0
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x4180000C # blt .L_801225D4
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_801225DC
L_801225D4:
    li 3, -0x1
    .4byte 0x4800000C # b .L_801225E4
L_801225DC:
    mr 3, 0
    bl fn_8022EA0C
L_801225E4:
    bl fn_80230CFC
    stw 3, 0x98(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_80122640
    .4byte 0x40800014 # bge .L_8012260C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80122618
    .4byte 0x40800028 # bge .L_8012262C
    .4byte 0x4800005C # b .L_80122664
L_8012260C:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_80122664
    .4byte 0x48000040 # b .L_80122654
L_80122618:
    lfs 1, 0x8(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800003C # b .L_80122664
L_8012262C:
    lfs 1, 0x8(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000028 # b .L_80122664
L_80122640:
    lfs 1, 0xc(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_80122664
L_80122654:
    lfs 1, 0xc(1)
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_80122664:
    .4byte 0xC0029A24 # lfs f0, lbl_8053C9C4@sda21(r0)
    addi 3, 31, 0xc
    lfs 1, 0x8(1)
    stfs 0, 0x37c(31)
    .4byte 0xC0429A60 # lfs f2, lbl_8053CA00@sda21(r0)
    bl fn_801CD950
    lfs 1, 0xc(1)
    addi 3, 31, 0x10
    .4byte 0xC0429A60 # lfs f2, lbl_8053CA00@sda21(r0)
    bl fn_801CD950
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_801226A0
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_801226A8
L_801226A0:
    li 3, -0x1
    .4byte 0x48000008 # b .L_801226AC
L_801226A8:
    bl fn_8022EA0C
L_801226AC:
    bl fn_80230CFC
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_8012271C
    lwz 4, 0x374(31)
    addi 0, 4, 0x1
    stw 0, 0x374(31)
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_801226D8
    li 0, 0xa
    stw 0, 0x374(31)
L_801226D8:
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180003C # blt .L_8012271C
    li 0, 0x0
    stw 0, 0x374(31)
    stw 3, 0x98(31)
    lwz 0, 0x238(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_8012271C
    mr 4, 3
    addi 3, 31, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
L_8012271C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80122730:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x41800078 # blt .L_801227C0
    clrlwi. 0, 6, 24
    .4byte 0x41820038 # beq .L_80122788
    lwz 3, 0x374(31)
    addi 0, 3, 0x1
    stw 0, 0x374(31)
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_80122774
    li 0, 0xa
    stw 0, 0x374(31)
L_80122774:
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x41800044 # blt .L_801227C0
    li 0, 0x0
    stw 0, 0x374(31)
L_80122788:
    clrlwi. 0, 5, 24
    stw 4, 0x98(31)
    .4byte 0x41820008 # beq .L_80122798
    addi 4, 4, 0x5
L_80122798:
    lwz 0, 0x238(31)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_801227C0
    addi 3, 31, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
L_801227C0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801227D4:
    lwz 4, 0x350(3)
    addi 0, 4, 0x1
    stw 0, 0x350(3)
    lwz 0, 0x350(3)
    cmpwi 0, 0x5a
    .4byte 0x41800014 # blt .L_801227FC
    li 0, 0x0
    stw 0, 0x350(3)
    li 3, 0x1
    blr
L_801227FC:
    li 3, 0x0
    blr

fn_80122804:
    lwz 4, 0x358(3)
    addi 0, 4, 0x1
    stw 0, 0x358(3)
    lwz 0, 0x358(3)
    cmpwi 0, 0xf
    .4byte 0x41800014 # blt .L_8012282C
    li 0, 0x0
    stw 0, 0x358(3)
    li 3, 0x1
    blr
L_8012282C:
    li 3, 0x0
    blr

fn_80122834:
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80122854
    lbz 0, 0x333(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80122854
    li 3, 0x1
    blr
L_80122854:
    li 3, 0x0
    blr

fn_8012285C:
    stwu 1, -0x10(1)
    mflr 0
    lwz 3, 0x344(3)
    stw 0, 0x14(1)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8012287C
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80122884
L_8012287C:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80122888
L_80122884:
    bl fn_8022EA0C
L_80122888:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80122898:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC0029A20 # lfs f0, lbl_8053C9C0@sda21(r0)
    li 6, 0x1
    stw 0, 0x44(1)
    li 7, 0x0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 4
    stw 29, 0x34(1)
    mr 29, 3
    lfs 2, 0x60(3)
    addi 3, 1, 0x20
    stfs 2, 0x20(1)
    lfs 5, 0x64(29)
    stfs 5, 0x24(1)
    lfs 3, 0x68(29)
    stfs 3, 0x28(1)
    lfs 4, 0x6c(29)
    stfs 4, 0x2c(1)
    lfs 1, 0xc(29)
    fadds 2, 2, 1
    fadds 1, 3, 1
    stfs 2, 0x20(1)
    lfs 3, 0x10(29)
    fadds 2, 5, 3
    stfs 1, 0x28(1)
    fadds 1, 4, 3
    stfs 2, 0x24(1)
    stfs 1, 0x2c(1)
    psq_l 1, 0xc(29), 0, 0
    lfs 2, 0x14(29)
    psq_st 1, 0x14(1), 0, 0
    lwz 4, 0x4(29)
    lfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    fsubs 0, 1, 0
    lwz 5, 0x198(29)
    stfs 0, 0x18(1)
    bl fn_8022FEB8
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    mr. 31, 3
    .4byte 0x4180000C # blt .L_80122950
    cmpwi 31, 0x4
    .4byte 0x41800014 # blt .L_80122960
L_80122950:
    li 0, -0x1
    li 3, -0x1
    stw 0, 0x34c(29)
    .4byte 0x4800006C # b .L_801229C8
L_80122960:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8012297C
    li 0, -0x1
    li 3, -0x1
    stw 0, 0x34c(29)
    .4byte 0x48000050 # b .L_801229C8
L_8012297C:
    lwz 5, 0x198(29)
    addi 7, 1, 0x8
    lwz 6, 0x4(29)
    mr 3, 31
    psq_l 1, 0x14(1), 0, 0
    clrlwi 4, 30, 16
    lfs 0, 0x1c(1)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801229BC
    stw 31, 0x34c(29)
    mr 3, 31
    .4byte 0x48000010 # b .L_801229C8
L_801229BC:
    li 0, -0x1
    li 3, -0x1
    stw 0, 0x34c(29)
L_801229C8:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801229E4:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    stw 0, 0x34(1)
    addi 5, 1, 0x8
    stw 31, 0x2c(1)
    mr 31, 3
    lfs 2, 0x60(3)
    addi 3, 1, 0x10
    stfs 2, 0x10(1)
    lfs 5, 0x64(31)
    stfs 5, 0x14(1)
    lfs 3, 0x68(31)
    stfs 3, 0x18(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x1c(1)
    lfs 1, 0xc(31)
    fadds 2, 2, 1
    fadds 1, 3, 1
    stfs 2, 0x10(1)
    lfs 3, 0x10(31)
    fadds 2, 5, 3
    stfs 1, 0x18(1)
    fadds 1, 4, 3
    stfs 0, 0x8(1)
    stfs 2, 0x14(1)
    stfs 1, 0x1c(1)
    stfs 0, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_8023AE34
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80122A6C
    li 3, 0x1
    .4byte 0x48000020 # b .L_80122A88
L_80122A6C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023AB94
    srwi 0, 3, 31
    xori 0, 0, 0x1
    clrlwi 3, 0, 24
L_80122A88:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80122A9C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 12, 0x0(3)
    mr 29, 4
    mr 30, 5
    mr 31, 6
    lwz 12, 0xc4(12)
    .4byte 0xC3E29A14 # lfs f31, lbl_8053C9B4@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122AE8
    .4byte 0xC3E29A1C # lfs f31, lbl_8053C9BC@sda21(r0)
L_80122AE8:
    lwz 3, 0x0(31)
    bl fn_80230CFC
    cmpwi 3, 0x2
    .4byte 0x41820054 # beq .L_80122B48
    .4byte 0x40800014 # bge .L_80122B0C
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80122B18
    .4byte 0x4080002C # bge .L_80122B30
    .4byte 0x4800006C # b .L_80122B74
L_80122B0C:
    cmpwi 3, 0x4
    .4byte 0x40800064 # bge .L_80122B74
    .4byte 0x4800004C # b .L_80122B60
L_80122B18:
    .4byte 0xC0229A18 # lfs f1, lbl_8053C9B8@sda21(r0)
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    fsubs 1, 1, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000048 # b .L_80122B74
L_80122B30:
    .4byte 0xC0229A1C # lfs f1, lbl_8053C9BC@sda21(r0)
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    fadds 1, 1, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000030 # b .L_80122B74
L_80122B48:
    .4byte 0xC0029A18 # lfs f0, lbl_8053C9B8@sda21(r0)
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    fsubs 0, 0, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000018 # b .L_80122B74
L_80122B60:
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    fadds 0, 0, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
L_80122B74:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80122B98:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 25, 0x14(1)
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    mr 26, 4
    mr 27, 5
    mr 28, 6
    stfs 0, 0x0(4)
    mr 25, 3
    stfs 0, 0x0(5)
    lwz 29, 0x0(6)
    cmpwi 29, 0x0
    .4byte 0x4180000C # blt .L_80122BE0
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_80122BE8
L_80122BE0:
    mr 31, 29
    .4byte 0x48000030 # b .L_80122C14
L_80122BE8:
    mr 31, 29
    li 30, 0x0
L_80122BF0:
    mr 3, 30
    mr 4, 29
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122C08
    mr 31, 30
L_80122C08:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE0 # blt .L_80122BF0
L_80122C14:
    stw 31, 0x0(28)
    mr 3, 25
    .4byte 0xC3E29A14 # lfs f31, lbl_8053C9B4@sda21(r0)
    lwz 12, 0x0(25)
    lwz 12, 0xc4(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122C3C
    .4byte 0xC3E29A1C # lfs f31, lbl_8053C9BC@sda21(r0)
L_80122C3C:
    lwz 3, 0x0(28)
    bl fn_80230CFC
    cmpwi 3, 0x2
    .4byte 0x41820038 # beq .L_80122C80
    .4byte 0x40800014 # bge .L_80122C60
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80122C6C
    .4byte 0x40800020 # bge .L_80122C78
    .4byte 0x48000034 # b .L_80122C90
L_80122C60:
    cmpwi 3, 0x4
    .4byte 0x4080002C # bge .L_80122C90
    .4byte 0x48000024 # b .L_80122C8C
L_80122C6C:
    fneg 0, 31
    stfs 0, 0x0(26)
    .4byte 0x4800001C # b .L_80122C90
L_80122C78:
    stfs 31, 0x0(26)
    .4byte 0x48000014 # b .L_80122C90
L_80122C80:
    fneg 0, 31
    stfs 0, 0x0(27)
    .4byte 0x48000008 # b .L_80122C90
L_80122C8C:
    stfs 31, 0x0(27)
L_80122C90:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 25, 0x14(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80122CAC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 12, 0x0(3)
    mr 29, 4
    mr 30, 5
    mr 31, 6
    lwz 12, 0xc4(12)
    .4byte 0xC3E29A14 # lfs f31, lbl_8053C9B4@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122CF8
    .4byte 0xC3E29A1C # lfs f31, lbl_8053C9BC@sda21(r0)
L_80122CF8:
    lwz 3, 0x0(31)
    bl fn_8022EA0C
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    stw 3, 0x0(31)
    fadds 0, 0, 31
    stfs 31, 0x0(29)
    stfs 0, 0x0(30)
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80122D38:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 12, 0x0(3)
    mr 29, 4
    mr 30, 5
    mr 31, 6
    lwz 12, 0xc4(12)
    .4byte 0xC3E29A14 # lfs f31, lbl_8053C9B4@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122D84
    .4byte 0xC3E29A1C # lfs f31, lbl_8053C9BC@sda21(r0)
L_80122D84:
    lwz 3, 0x0(31)
    bl fn_80230CFC
    cmpwi 3, 0x2
    .4byte 0x41820054 # beq .L_80122DE4
    .4byte 0x40800014 # bge .L_80122DA8
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80122DB4
    .4byte 0x4080002C # bge .L_80122DCC
    .4byte 0x4800006C # b .L_80122E10
L_80122DA8:
    cmpwi 3, 0x4
    .4byte 0x40800064 # bge .L_80122E10
    .4byte 0x4800004C # b .L_80122DFC
L_80122DB4:
    .4byte 0xC0229A18 # lfs f1, lbl_8053C9B8@sda21(r0)
    .4byte 0xC0029A10 # lfs f0, lbl_8053C9B0@sda21(r0)
    fsubs 1, 1, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000048 # b .L_80122E10
L_80122DCC:
    .4byte 0xC0229A20 # lfs f1, lbl_8053C9C0@sda21(r0)
    .4byte 0xC0029A10 # lfs f0, lbl_8053C9B0@sda21(r0)
    fadds 1, 1, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000030 # b .L_80122E10
L_80122DE4:
    .4byte 0xC0029A18 # lfs f0, lbl_8053C9B8@sda21(r0)
    .4byte 0xC0229A10 # lfs f1, lbl_8053C9B0@sda21(r0)
    fsubs 0, 0, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000018 # b .L_80122E10
L_80122DFC:
    .4byte 0xC0029A20 # lfs f0, lbl_8053C9C0@sda21(r0)
    .4byte 0xC0229A10 # lfs f1, lbl_8053C9B0@sda21(r0)
    fadds 0, 0, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
L_80122E10:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80122E34:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 12, 0x0(3)
    mr 29, 4
    mr 30, 5
    mr 31, 6
    lwz 12, 0xc4(12)
    .4byte 0xC3E29A14 # lfs f31, lbl_8053C9B4@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122E88
    .4byte 0xC3E29A1C # lfs f31, lbl_8053C9BC@sda21(r0)
L_80122E88:
    lwz 3, 0x0(31)
    bl fn_8022E970
    subi 3, 3, 0x1
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC8429A30 # lfd f2, lbl_8053C9D0@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC0029A24 # lfs f0, lbl_8053C9C4@sda21(r0)
    lfd 1, 0x8(1)
    lwz 3, 0x0(31)
    fsubs 1, 1, 2
    fmsubs 30, 0, 1, 0
    bl fn_80230CFC
    cmpwi 3, 0x2
    .4byte 0x41820050 # beq .L_80122F14
    .4byte 0x40800014 # bge .L_80122EDC
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80122EE8
    .4byte 0x4080002C # bge .L_80122F00
    .4byte 0x48000068 # b .L_80122F40
L_80122EDC:
    cmpwi 3, 0x4
    .4byte 0x40800060 # bge .L_80122F40
    .4byte 0x48000048 # b .L_80122F2C
L_80122EE8:
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    .4byte 0xC0229A18 # lfs f1, lbl_8053C9B8@sda21(r0)
    fmadds 0, 0, 30, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000044 # b .L_80122F40
L_80122F00:
    .4byte 0xC0229A1C # lfs f1, lbl_8053C9BC@sda21(r0)
    fmadds 0, 1, 30, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000030 # b .L_80122F40
L_80122F14:
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    .4byte 0xC0229A18 # lfs f1, lbl_8053C9B8@sda21(r0)
    fmadds 0, 0, 30, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000018 # b .L_80122F40
L_80122F2C:
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    .4byte 0xC0229A18 # lfs f1, lbl_8053C9B8@sda21(r0)
    fmadds 0, 0, 30, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
L_80122F40:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x44(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80122F6C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 12, 0x0(3)
    mr 29, 4
    mr 30, 5
    mr 31, 6
    lwz 12, 0xc4(12)
    .4byte 0xC3E29A14 # lfs f31, lbl_8053C9B4@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80122FC0
    .4byte 0xC3E29A1C # lfs f31, lbl_8053C9BC@sda21(r0)
L_80122FC0:
    lwz 3, 0x0(31)
    bl fn_8022E970
    subi 3, 3, 0x1
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC8429A30 # lfd f2, lbl_8053C9D0@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC0029A24 # lfs f0, lbl_8053C9C4@sda21(r0)
    lfd 1, 0x8(1)
    lwz 3, 0x0(31)
    fsubs 1, 1, 2
    fmsubs 30, 0, 1, 0
    bl fn_80230CFC
    cmpwi 3, 0x2
    .4byte 0x4182004C # beq .L_80123048
    .4byte 0x40800014 # bge .L_80123014
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80123020
    .4byte 0x40800028 # bge .L_80123034
    .4byte 0x48000060 # b .L_80123070
L_80123014:
    cmpwi 3, 0x4
    .4byte 0x40800058 # bge .L_80123070
    .4byte 0x48000044 # b .L_80123060
L_80123020:
    .4byte 0xC0229A1C # lfs f1, lbl_8053C9BC@sda21(r0)
    fmadds 0, 1, 30, 31
    stfs 0, 0x0(29)
    stfs 1, 0x0(30)
    .4byte 0x48000040 # b .L_80123070
L_80123034:
    .4byte 0xC0229A1C # lfs f1, lbl_8053C9BC@sda21(r0)
    fmadds 0, 1, 30, 31
    stfs 0, 0x0(29)
    stfs 1, 0x0(30)
    .4byte 0x4800002C # b .L_80123070
L_80123048:
    .4byte 0xC0229A1C # lfs f1, lbl_8053C9BC@sda21(r0)
    .4byte 0xC0029A18 # lfs f0, lbl_8053C9B8@sda21(r0)
    fmadds 1, 1, 30, 31
    stfs 1, 0x0(29)
    stfs 0, 0x0(30)
    .4byte 0x48000014 # b .L_80123070
L_80123060:
    .4byte 0xC0229A1C # lfs f1, lbl_8053C9BC@sda21(r0)
    fmadds 0, 1, 30, 31
    stfs 0, 0x0(29)
    stfs 1, 0x0(30)
L_80123070:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x44(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8012309C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 26, 0x28(1)
    mr 26, 3
    mr 27, 4
    lbz 0, 0x334(3)
    mr 28, 5
    mr 29, 6
    mr 30, 7
    cmplwi 0, 0x0
    mr 9, 8
    .4byte 0x4182002C # beq .L_80123100
    lwz 4, 0x198(26)
    mr 5, 27
    mr 6, 28
    mr 7, 29
    mr 8, 30
    li 10, 0x2
    bl fn_801EEC98
    li 0, 0x0
    stb 0, 0x334(26)
    .4byte 0x4800027C # b .L_80123378
L_80123100:
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    mr 31, 9
    stw 31, 0x14(1)
    mr 3, 31
    stfs 0, 0x10(1)
    stfs 0, 0xc(1)
    bl fn_8022CAF8
    cmpwi 3, 0x3
    .4byte 0x41820098 # beq .L_801231B8
    .4byte 0x4080001C # bge .L_80123140
    cmpwi 3, 0x1
    .4byte 0x41820044 # beq .L_80123170
    .4byte 0x40800064 # bge .L_80123194
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_8012314C
    .4byte 0x480000C4 # b .L_80123200
L_80123140:
    cmpwi 3, 0x5
    .4byte 0x41820098 # beq .L_801231DC
    .4byte 0x480000B8 # b .L_80123200
L_8012314C:
    mr 3, 26
    addi 4, 1, 0x10
    lwz 12, 0x0(26)
    addi 5, 1, 0xc
    addi 6, 1, 0x14
    lwz 12, 0xa4(12)
    mtctr 12
    bctrl
    .4byte 0x480000B4 # b .L_80123220
L_80123170:
    mr 3, 26
    addi 4, 1, 0x10
    lwz 12, 0x0(26)
    addi 5, 1, 0xc
    addi 6, 1, 0x14
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    .4byte 0x48000090 # b .L_80123220
L_80123194:
    mr 3, 26
    addi 4, 1, 0x10
    lwz 12, 0x0(26)
    addi 5, 1, 0xc
    addi 6, 1, 0x14
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    .4byte 0x4800006C # b .L_80123220
L_801231B8:
    mr 3, 26
    addi 4, 1, 0x10
    lwz 12, 0x0(26)
    addi 5, 1, 0xc
    addi 6, 1, 0x14
    lwz 12, 0xb0(12)
    mtctr 12
    bctrl
    .4byte 0x48000048 # b .L_80123220
L_801231DC:
    mr 3, 26
    addi 4, 1, 0x10
    lwz 12, 0x0(26)
    addi 5, 1, 0xc
    addi 6, 1, 0x14
    lwz 12, 0xb4(12)
    mtctr 12
    bctrl
    .4byte 0x48000024 # b .L_80123220
L_80123200:
    mr 3, 26
    addi 4, 1, 0x10
    lwz 12, 0x0(26)
    addi 5, 1, 0xc
    addi 6, 1, 0x14
    lwz 12, 0xb8(12)
    mtctr 12
    bctrl
L_80123220:
    lwz 3, 0x14(1)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0x10(1)
    lfs 0, 0xc(26)
    fadds 1, 1, 2
    lwz 3, 0x14(1)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 0, 0xc(1)
    lfs 1, 0x10(26)
    fadds 2, 0, 2
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    fsubs 5, 1, 2
    fmuls 1, 5, 5
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801232B4
    frsqrte 1, 4
    .4byte 0xC8629A68 # lfd f3, lbl_8053CA08@sda21(r0)
    .4byte 0xC8429A70 # lfd f2, lbl_8053CA10@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80123338
L_801232B4:
    .4byte 0xC8029A78 # lfd f0, lbl_8053CA18@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801232CC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80123338
L_801232CC:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801232F4
    .4byte 0x40800040 # bge .L_80123324
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8012330C
    .4byte 0x48000034 # b .L_80123324
L_801232F4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80123304
    li 0, 0x1
    .4byte 0x48000028 # b .L_80123328
L_80123304:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80123328
L_8012330C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8012331C
    li 0, 0x5
    .4byte 0x48000010 # b .L_80123328
L_8012331C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80123328
L_80123324:
    li 0, 0x4
L_80123328:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80123338
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80123338:
    fneg 1, 31
    lis 3, lbl_80534C00@ha
    fneg 2, 5
    stfs 4, 0x0(29)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC0029A50 # lfs f0, lbl_8053C9F0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    sth 0, 0x0(27)
    lhz 3, 0x0(27)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x0(28)
    stw 31, 0x0(30)
L_80123378:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 26, 0x28(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80123394:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    mr. 30, 4
    fmr 28, 1
    fmr 29, 2
    mr 31, 3
    fmr 31, 3
    fmr 30, 5
    .4byte 0x418006A4 # blt .L_80123A80
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_801233F4
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_801233FC
L_801233F4:
    li 29, -0x1
    .4byte 0x4800000C # b .L_80123404
L_801233FC:
    bl fn_8022EA0C
    mr 29, 3
L_80123404:
    mr 27, 29
    li 28, 0x0
L_8012340C:
    mr 3, 28
    bl fn_8023ECF0
    cmpw 29, 3
    .4byte 0x4082000C # bne .L_80123424
    mr 27, 28
    .4byte 0x48000010 # b .L_80123430
L_80123424:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFE0 # blt .L_8012340C
L_80123430:
    mr 3, 27
    bl fn_80234E30
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80123450
    mr 3, 29
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80123458
L_80123450:
    li 0, 0x1
    .4byte 0x48000008 # b .L_8012345C
L_80123458:
    li 0, 0x0
L_8012345C:
    clrlwi. 0, 0, 24
    .4byte 0x40820030 # bne .L_80123490
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80123478
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80123480
L_80123478:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80123484
L_80123480:
    bl fn_8022EA0C
L_80123484:
    bl fn_8023BCD4
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8012349C
L_80123490:
    li 0, 0x0
    stb 0, 0x11d(31)
    .4byte 0x4800000C # b .L_801234A4
L_8012349C:
    li 0, 0x1
    stb 0, 0x11d(31)
L_801234A4:
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801234CC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
    .4byte 0x480005B8 # b .L_80123A80
L_801234CC:
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_80123544
    mr 3, 30
    bl fn_8023E98C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801234F4
    li 27, -0x1
    .4byte 0x4800004C # b .L_8012353C
L_801234F4:
    li 27, 0x0
L_801234F8:
    mr 3, 27
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8012352C
    mr 3, 27
    bl fn_8023ECF0
    cmpw 30, 3
    .4byte 0x40820018 # bne .L_8012352C
    mr 3, 27
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8012352C
    .4byte 0x48000014 # b .L_8012353C
L_8012352C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_801234F8
    li 27, -0x1
L_8012353C:
    cmpwi 27, 0x0
    .4byte 0x41800058 # blt .L_80123598
L_80123544:
    mr 3, 30
    bl fn_8023E10C
    cmpwi 3, 0x8
    .4byte 0x4082001C # bne .L_8012356C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x88(12)
    mtctr 12
    bctrl
    .4byte 0x48000518 # b .L_80123A80
L_8012356C:
    mr 3, 30
    bl fn_8023DE58
    stw 3, 0x4(31)
    li 0, 0x0
    mr 3, 31
    stb 0, 0x331(31)
    lwz 12, 0x0(31)
    lwz 12, 0x8c(12)
    mtctr 12
    bctrl
    .4byte 0x480004EC # b .L_80123A80
L_80123598:
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    mr 3, 31
    mr 8, 30
    addi 4, 1, 0x8
    stw 0, 0x14(1)
    addi 5, 1, 0x14
    addi 6, 1, 0xc
    addi 7, 1, 0x10
    stw 0, 0x10(1)
    stfs 0, 0xc(1)
    lwz 12, 0x0(31)
    lwz 12, 0xa0(12)
    mtctr 12
    bctrl
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4082001C # bne .L_80123600
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x4082000C # bne .L_80123600
    .4byte 0xC0029A60 # lfs f0, lbl_8053CA00@sda21(r0)
    fmuls 30, 0, 30
L_80123600:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80123624
    fmr 1, 31
    addi 3, 31, 0x380
    fmr 2, 28
    bl fn_801CD950
    .4byte 0x48000014 # b .L_80123634
L_80123624:
    fmr 2, 29
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x380
    bl fn_801CD950
L_80123634:
    lhz 0, 0x8(1)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    lfs 2, 0x380(31)
    rlwinm 0, 0, 30, 18, 28
    addi 3, 31, 0x3c
    lfsx 1, 4, 0
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    fmuls 1, 2, 1
    stfs 1, 0x3c(31)
    lhz 0, 0x8(1)
    lfs 2, 0x380(31)
    rlwinm 0, 0, 30, 18, 28
    add 4, 4, 0
    lfs 1, 0x4(4)
    fmuls 1, 2, 1
    stfs 1, 0x40(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x0(3), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x8(3), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    stfs 0, 0x14(31)
    bl PSVECMag
    fdivs 1, 1, 31
    .4byte 0xC0029A58 # lfs f0, lbl_8053C9F8@sda21(r0)
    stfs 1, 0x37c(31)
    lfs 1, 0x37c(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801236C0
    stfs 0, 0x37c(31)
L_801236C0:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418201FC # beq .L_801238D4
    mr 3, 31
    li 27, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0xc4(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80123700
    li 27, 0xc
L_80123700:
    mr 3, 30
    addi 29, 27, 0x8
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x41820018 # beq .L_80123728
    mr 3, 30
    bl fn_8022E970
    subi 0, 3, 0x1
    mulli 0, 0, 0xc
    add 29, 29, 0
L_80123728:
    cmpwi 29, 0x30
    .4byte 0x41800008 # blt .L_80123734
    li 29, 0x30
L_80123734:
    mr 3, 30
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x418200C0 # beq .L_80123800
    addi 3, 31, 0xc
    li 4, 0x0
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x41820064 # beq .L_801237B8
    mr 28, 30
    li 27, 0x0
L_80123760:
    mr 3, 27
    bl fn_8023ECF0
    cmpw 30, 3
    .4byte 0x4082000C # bne .L_80123778
    mr 28, 27
    .4byte 0x48000010 # b .L_80123784
L_80123778:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFE0 # blt .L_80123760
L_80123784:
    mr 3, 28
    bl fn_80234E30
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801237A4
    mr 3, 30
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801237AC
L_801237A4:
    li 0, 0x1
    .4byte 0x48000008 # b .L_801237B0
L_801237AC:
    li 0, 0x0
L_801237B0:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_801237D8
L_801237B8:
    mr 3, 30
    mr 4, 29
    bl fn_8023E4E4
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x48000048 # b .L_8012381C
L_801237D8:
    mr 3, 30
    mr 4, 29
    bl fn_8023E4E4
    lfs 1, 0x0(3)
    .4byte 0xC0029A5C # lfs f0, lbl_8053C9FC@sda21(r0)
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000020 # b .L_8012381C
L_80123800:
    mr 3, 30
    mr 4, 29
    bl fn_8023E4E4
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
L_8012381C:
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 30
    lfs 0, 0xc(31)
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    fneg 1, 30
    addi 3, 3, lbl_80534C00@l
    fsubs 0, 0, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC0029A50 # lfs f0, lbl_8053C9F0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x14(1)
    addi 3, 1, 0x24
    lfs 0, 0x14(31)
    psq_l 1, 0xc(31), 0, 0
    stfs 0, 0x20(1)
    psq_l 3, 0x18(31), 0, 0
    psq_l 2, 0x20(1), 1, 0
    psq_l 0, 0x20(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x18(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x18(1), 0, 0
    psq_st 0, 0x20(1), 1, 0
    lfs 0, 0x20(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x2c(1)
    bl PSVECMag
    .4byte 0xC0029A58 # lfs f0, lbl_8053C9F8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_801238D4
    .4byte 0xC0029A24 # lfs f0, lbl_8053C9C4@sda21(r0)
    stfs 0, 0x380(31)
    stfs 0, 0x37c(31)
L_801238D4:
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_801238E8
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_801238F0
L_801238E8:
    li 27, -0x1
    .4byte 0x4800000C # b .L_801238F8
L_801238F0:
    bl fn_8022EA0C
    mr 27, 3
L_801238F8:
    mr 29, 27
    li 28, 0x0
L_80123900:
    mr 3, 28
    bl fn_8023ECF0
    cmpw 27, 3
    .4byte 0x4082000C # bne .L_80123918
    mr 29, 28
    .4byte 0x48000010 # b .L_80123924
L_80123918:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFE0 # blt .L_80123900
L_80123924:
    mr 3, 29
    bl fn_80234E30
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80123944
    mr 3, 27
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8012394C
L_80123944:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80123950
L_8012394C:
    li 0, 0x0
L_80123950:
    clrlwi. 0, 0, 24
    .4byte 0x41820038 # beq .L_8012398C
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8012396C
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80123974
L_8012396C:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80123978
L_80123974:
    bl fn_8022EA0C
L_80123978:
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
L_8012398C:
    lfs 1, 0x380(31)
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820078 # bne .L_80123A14
    lwz 5, 0x14(1)
    cmpwi 5, 0x0
    .4byte 0x418000D8 # blt .L_80123A80
    lwz 3, 0x374(31)
    addi 0, 3, 0x1
    stw 0, 0x374(31)
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_801239CC
    li 0, 0xa
    stw 0, 0x374(31)
L_801239CC:
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x418000AC # blt .L_80123A80
    li 0, 0x0
    addi 4, 5, 0x5
    stw 0, 0x374(31)
    stw 5, 0x98(31)
    lwz 0, 0x238(31)
    cmpw 4, 0
    .4byte 0x41820090 # beq .L_80123A80
    addi 3, 31, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
    .4byte 0x48000070 # b .L_80123A80
L_80123A14:
    lwz 4, 0x14(1)
    cmpwi 4, 0x0
    .4byte 0x41800064 # blt .L_80123A80
    lwz 3, 0x374(31)
    addi 0, 3, 0x1
    stw 0, 0x374(31)
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_80123A40
    li 0, 0xa
    stw 0, 0x374(31)
L_80123A40:
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x41800038 # blt .L_80123A80
    li 0, 0x0
    stw 0, 0x374(31)
    stw 4, 0x98(31)
    lwz 0, 0x238(31)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_80123A80
    addi 3, 31, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
L_80123A80:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80123AB4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    fmr 31, 1
    mr 9, 4
    lwz 4, 0x198(3)
    mr 10, 5
    mr 31, 3
    addi 5, 1, 0x8
    addi 6, 1, 0x14
    addi 7, 1, 0xc
    addi 8, 1, 0x10
    bl fn_801EEC98
    lwz 5, 0x14(1)
    cmpwi 5, 0x0
    .4byte 0x4180007C # blt .L_80123B78
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 31
    .4byte 0x41810070 # bgt .L_80123B78
    cmpwi 5, 0x0
    .4byte 0x41800068 # blt .L_80123B78
    lwz 3, 0x374(31)
    addi 0, 3, 0x1
    stw 0, 0x374(31)
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_80123B34
    li 0, 0xa
    stw 0, 0x374(31)
L_80123B34:
    lwz 0, 0x374(31)
    cmpwi 0, 0xa
    .4byte 0x4180003C # blt .L_80123B78
    li 0, 0x0
    addi 4, 5, 0x5
    stw 0, 0x374(31)
    stw 5, 0x98(31)
    lwz 0, 0x238(31)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_80123B78
    addi 3, 31, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229A14 # lfs f1, lbl_8053C9B4@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
L_80123B78:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80123B94:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lwz 12, 0x0(3)
    lwz 12, 0x78(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80123BCC
    li 3, 0x0
    .4byte 0x48000150 # b .L_80123D18
L_80123BCC:
    lis 4, lbl_80464CD8@ha
    mr 3, 31
    addi 4, 4, lbl_80464CD8@l
    bl fn_801F26CC
    mr. 30, 3
    .4byte 0x4080000C # bge .L_80123BEC
    li 3, 0x0
    .4byte 0x48000130 # b .L_80123D18
L_80123BEC:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820070 # beq .L_80123C6C
    lis 4, 0x4f4b
    lwz 5, 0x1a0(3)
    addi 0, 4, 0x544d
    cmpw 5, 0
    .4byte 0x41820044 # beq .L_80123C54
    .4byte 0x40800058 # bge .L_80123C6C
    lis 4, 0x4649
    addi 0, 4, 0x5245
    cmpw 5, 0
    .4byte 0x41820008 # beq .L_80123C2C
    .4byte 0x48000044 # b .L_80123C6C
L_80123C2C:
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 22
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_80123C4C
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_80123C4C
    cmpwi 0, 0x6
    .4byte 0x4082000C # bne .L_80123C54
L_80123C4C:
    li 3, 0x0
    .4byte 0x480000C8 # b .L_80123D18
L_80123C54:
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x41820008 # beq .L_80123C64
    .4byte 0x4800000C # b .L_80123C6C
L_80123C64:
    li 3, 0x0
    .4byte 0x480000B0 # b .L_80123D18
L_80123C6C:
    lwz 3, 0x108(31)
    subi 0, 3, 0x2
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810094 # ble .L_80123D14
    cmpwi 30, 0x0
    .4byte 0x41800078 # blt .L_80123D00
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820064 # beq .L_80123D00
    psq_l 0, 0xc(3), 0, 0
    lis 4, lbl_80534C00@ha
    lfs 4, 0x14(3)
    addi 3, 4, lbl_80534C00@l
    psq_st 0, 0x8(1), 0, 0
    lfs 1, 0x10(31)
    lfs 2, 0xc(1)
    lfs 0, 0x14(31)
    fsubs 2, 2, 4
    lfs 3, 0x8(1)
    fsubs 0, 1, 0
    lfs 1, 0xc(31)
    stfs 4, 0x10(1)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC0029A50 # lfs f0, lbl_8053C9F0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
L_80123D00:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x94(12)
    mtctr 12
    bctrl
L_80123D14:
    li 3, 0x1
L_80123D18:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80123D30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_80123D60
    li 0, 0x1
    stw 0, 0x360(31)
    .4byte 0x4800000C # b .L_80123D68
L_80123D60:
    li 0, 0x4
    stw 0, 0x360(31)
L_80123D68:
    lwz 0, 0x360(31)
    slwi 0, 0, 2
    stw 0, 0x108(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80123D88:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x333(3)
    stw 31, 0xc(1)
    mr 31, 3
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80123DB0
    li 3, 0x0
    .4byte 0x480000C0 # b .L_80123E6C
L_80123DB0:
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80123DC4
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80123DCC
L_80123DC4:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80123DD0
L_80123DCC:
    bl fn_8022EA0C
L_80123DD0:
    cmpwi 3, 0x0
    .4byte 0x41800094 # blt .L_80123E68
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80123DEC
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80123DF4
L_80123DEC:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80123DF8
L_80123DF4:
    bl fn_8022EA0C
L_80123DF8:
    cmpwi 3, 0x4
    .4byte 0x4080006C # bge .L_80123E68
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80123E14
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80123E1C
L_80123E14:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80123E20
L_80123E1C:
    bl fn_8022EA0C
L_80123E20:
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80123E34
    li 3, 0x0
    .4byte 0x4800003C # b .L_80123E6C
L_80123E34:
    lwz 3, 0x344(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80123E48
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80123E50
L_80123E48:
    li 3, -0x1
    .4byte 0x48000008 # b .L_80123E54
L_80123E50:
    bl fn_8022EA0C
L_80123E54:
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80123E68
    li 3, 0x0
    .4byte 0x48000008 # b .L_80123E6C
L_80123E68:
    li 3, 0x1
L_80123E6C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80123E80:
    lwz 0, 0x33c(3)
    stw 0, 0x340(3)
    stw 4, 0x33c(3)
    li 3, 0x1
    blr

fn_80123E94:
    li 3, 0x3
    blr

fn_80123E9C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 31
    bl fn_8022461C
    lis 4, lbl_80464D84@ha
    lhzu 0, lbl_80464D84@l(4)
    clrlwi 3, 3, 16
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123EE4
    li 3, 0x0
    .4byte 0x480000A0 # b .L_80123F80
L_80123EE4:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123EF8
    li 3, 0x0
    .4byte 0x4800008C # b .L_80123F80
L_80123EF8:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123F0C
    li 3, 0x0
    .4byte 0x48000078 # b .L_80123F80
L_80123F0C:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123F20
    li 3, 0x0
    .4byte 0x48000064 # b .L_80123F80
L_80123F20:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123F34
    li 3, 0x0
    .4byte 0x48000050 # b .L_80123F80
L_80123F34:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123F48
    li 3, 0x0
    .4byte 0x4800003C # b .L_80123F80
L_80123F48:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123F5C
    li 3, 0x0
    .4byte 0x48000028 # b .L_80123F80
L_80123F5C:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80123F70
    li 3, 0x0
    .4byte 0x48000014 # b .L_80123F80
L_80123F70:
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_801F15BC
L_80123F80:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80123F9C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    stw 28, 0x70(1)
    mr 31, 3
    bl fn_801F5778
    lbz 0, 0x332(31)
    cmplwi 0, 0x0
    .4byte 0x418200C0 # beq .L_80124090
    lwz 3, 0x360(31)
    lis 0, 0x4330
    psq_l 0, 0xc(31), 0, 0
    mr 29, 31
    subi 3, 3, 0x1
    lfs 5, 0x14(31)
    xoris 3, 3, 0x8000
    psq_st 0, 0x8(1), 0, 0
    .4byte 0xC8229A30 # lfd f1, lbl_8053C9D0@sda21(r0)
    li 28, 0x0
    stw 3, 0x54(1)
    li 30, -0x1
    lfs 4, 0xc(1)
    stw 0, 0x50(1)
    .4byte 0xC0629A38 # lfs f3, lbl_8053C9D8@sda21(r0)
    lfd 0, 0x50(1)
    .4byte 0xC0429A80 # lfs f2, lbl_8053CA20@sda21(r0)
    fadds 3, 4, 3
    fsubs 1, 0, 1
    lfs 0, 0x8(1)
    stfs 5, 0x10(1)
    .4byte 0xC3E29A84 # lfs f31, lbl_8053CA24@sda21(r0)
    fnmsubs 0, 2, 1, 0
    stfs 3, 0xc(1)
    stfs 0, 0x8(1)
    .4byte 0x4800004C # b .L_80124084
L_8012403C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x364(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80124058
    stw 30, 0x364(29)
    .4byte 0x48000028 # b .L_8012407C
L_80124058:
    cmpwi 28, 0x0
    .4byte 0x40810010 # ble .L_8012406C
    lfs 0, 0x8(1)
    fadds 0, 0, 31
    stfs 0, 0x8(1)
L_8012406C:
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
L_8012407C:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_80124084:
    lwz 0, 0x360(31)
    cmpw 28, 0
    .4byte 0x4180FFB0 # blt .L_8012403C
L_80124090:
    li 0, -0x1
    addi 9, 1, 0x14
    stw 0, 0x24(1)
    li 10, 0x0
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_80124108
L_801240A8:
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
L_80124108:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801240A8
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x24(1)
    stw 5, 0x28(1)
    stw 5, 0x2c(1)
    stb 5, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 4, 0x33(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stb 5, 0x37(1)
    stb 5, 0x38(1)
    stb 5, 0x39(1)
    stb 4, 0x3a(1)
    stw 3, 0x3c(1)
    stb 4, 0x40(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stw 6, 0x44(1)
    stw 5, 0x48(1)
    stw 0, 0x4c(1)
    lbz 0, 0x333(31)
    cmplwi 0, 0x0
    .4byte 0x4182009C # beq .L_80124220
    lwz 3, 0x354(31)
    lis 0, 0x4330
    stw 0, 0x50(1)
    mulli 0, 3, 0x3c
    .4byte 0xC8629A30 # lfd f3, lbl_8053C9D0@sda21(r0)
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    .4byte 0xC0229A88 # lfs f1, lbl_8053CA28@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x54(1)
    lfd 2, 0x50(1)
    fsubs 2, 2, 3
    fcmpo cr0, 2, 0
    .4byte 0x40800030 # bge .L_801241E8
    .4byte 0xC0029A8C # lfs f0, lbl_8053CA2C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 0, 2
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 0, 0
    .4byte 0x48000028 # b .L_8012420C
L_801241E8:
    .4byte 0xC0029A90 # lfs f0, lbl_8053CA30@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 0, 2
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
L_8012420C:
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 0, 0x6c(1)
    stb 0, 0x27(1)
L_80124220:
    .4byte 0xC0229A58 # lfs f1, lbl_8053C9F8@sda21(r0)
    mr 3, 31
    lwz 5, 0x338(31)
    addi 4, 31, 0x384
    lwz 0, 0x240(31)
    fmr 2, 1
    addi 6, 1, 0x14
    li 7, 0x407
    add 5, 5, 0
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 28, 0x70(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80124278:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    bl fn_801F5930
    .4byte 0xC0029A58 # lfs f0, lbl_8053C9F8@sda21(r0)
    li 0, 0x1
    mr 3, 31
    stfs 0, 0x37c(31)
    stb 0, 0x331(31)
    lfs 1, 0x60(31)
    stfs 1, 0x20(1)
    lfs 4, 0x64(31)
    stfs 4, 0x24(1)
    lfs 2, 0x68(31)
    stfs 2, 0x28(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 12, 0x0(31)
    lwz 12, 0x80(12)
    mtctr 12
    bctrl
    lbz 0, 0x333(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8012432C
    lwz 3, 0x354(31)
    addi 0, 3, 0x1
    stw 0, 0x354(31)
    lwz 0, 0x354(31)
    cmpwi 0, 0x12c
    .4byte 0x41800010 # blt .L_8012432C
    li 0, 0x0
    stb 0, 0x333(31)
    stw 0, 0x354(31)
L_8012432C:
    lbz 0, 0x335(31)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8012435C
    lwz 3, 0x378(31)
    addi 0, 3, 0x1
    stw 0, 0x378(31)
    lwz 0, 0x378(31)
    cmpwi 0, 0x5a
    .4byte 0x41800010 # blt .L_8012435C
    li 0, 0x0
    stb 0, 0x335(31)
    stw 0, 0x378(31)
L_8012435C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x68(12)
    mtctr 12
    bctrl
    lbz 0, 0x330(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8012438C
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    bl fn_80239914
L_8012438C:
    lbz 0, 0x331(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801243A8
    mr 3, 31
    addi 4, 1, 0x14
    li 5, 0x0
    bl fn_801F2618
L_801243A8:
    .4byte 0xC0029A14 # lfs f0, lbl_8053C9B4@sda21(r0)
    mr 3, 31
    addi 4, 1, 0x8
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_80121438
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801243EC
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_801243EC:
    lfs 0, 0x37c(31)
    addi 3, 31, 0x230
    stfs 0, 0x260(31)
    bl fn_801D1C18
    lwz 0, 0x108(31)
    mr 3, 31
    cntlzw 0, 0
    srwi 4, 0, 5
    bl fn_801217EC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x90(12)
    mtctr 12
    bctrl
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80124448:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 27, 3
    bl fn_801F5938
    lwz 0, 0x198(27)
    mr 3, 27
    .4byte 0x900D8370 # stw r0, lbl_80539F30@sda21(r0)
    lwz 12, 0x0(27)
    lwz 12, 0x64(12)
    mtctr 12
    bctrl
    .4byte 0xC0229A94 # lfs f1, lbl_8053CA34@sda21(r0)
    li 0, 0x2
    .4byte 0xC0029A98 # lfs f0, lbl_8053CA38@sda21(r0)
    mr 3, 27
    stfs 1, 0x60(27)
    stfs 1, 0x64(27)
    stfs 0, 0x68(27)
    stfs 0, 0x6c(27)
    lfs 0, 0x60(27)
    stfs 0, 0x70(27)
    lfs 0, 0x64(27)
    stfs 0, 0x74(27)
    lfs 0, 0x68(27)
    stfs 0, 0x78(27)
    lfs 0, 0x6c(27)
    stfs 0, 0x7c(27)
    lfs 0, 0x60(27)
    stfs 0, 0x80(27)
    lfs 0, 0x64(27)
    stfs 0, 0x84(27)
    lfs 0, 0x68(27)
    stfs 0, 0x88(27)
    lfs 0, 0x6c(27)
    stfs 0, 0x8c(27)
    stw 0, 0xb8(27)
    lwz 12, 0x0(27)
    lwz 12, 0x70(12)
    mtctr 12
    bctrl
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x74(12)
    mtctr 12
    bctrl
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lbz 0, 0x332(27)
    cmplwi 0, 0x0
    .4byte 0x418200C4 # beq .L_801245E4
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x7c(12)
    mtctr 12
    bctrl
    lbz 0, 0x332(27)
    cmplwi 0, 0x0
    .4byte 0x418200A4 # beq .L_801245E4
    psq_l 1, 0xc(27), 0, 0
    mr 29, 27
    lfs 2, 0x14(27)
    li 30, 0x0
    .4byte 0xC0029A1C # lfs f0, lbl_8053C9BC@sda21(r0)
    lis 31, 0x4c49
    psq_st 1, 0x8(1), 0, 0
    .4byte 0xC3E29A10 # lfs f31, lbl_8053C9B0@sda21(r0)
    lfs 1, 0x8(1)
    stfs 2, 0x10(1)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000064 # b .L_801245D8
L_80124578:
    lfs 0, 0x8(1)
    fadds 0, 0, 31
    stfs 0, 0x8(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(27)
    addi 4, 31, 0x4d54
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x364(29)
    lwz 28, 0x364(29)
    cmpwi 28, 0x0
    .4byte 0x41800034 # blt .L_801245E4
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801245D0
    li 0, 0x0
    stb 0, 0x11d(3)
L_801245D0:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_801245D8:
    lwz 0, 0x360(27)
    cmpw 30, 0
    .4byte 0x4180FF98 # blt .L_80124578
L_801245E4:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80124600:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    bl fn_80131F0C
    lwz 31, 0x0(3)
    cmpwi 31, 0x0
    .4byte 0x40820054 # bne .L_80124680
    .4byte 0x83ED8370 # lwz r31, lbl_80539F30@sda21(r0)
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_80124644
    li 3, 0x3
    .4byte 0x480000E0 # b .L_80124720
L_80124644:
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80124660
    li 3, 0x3
    .4byte 0x480000C4 # b .L_80124720
L_80124660:
    li 0, 0x1
    mr 4, 28
    stb 0, 0x334(3)
    lwz 12, 0x0(3)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    .4byte 0x480000A4 # b .L_80124720
L_80124680:
    li 30, 0x0
    li 29, 0x0
    .4byte 0x48000080 # b .L_80124708
L_8012468C:
    bl fn_80131F0C
    mr 4, 29
    bl fn_80131E30
    cmplwi 3, 0x0
    .4byte 0x41820068 # beq .L_80124704
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4641
    cmplwi 0, 0x5a52
    .4byte 0x40820058 # bne .L_80124704
    li 0, 0x1
    mr 4, 28
    stb 0, 0x334(3)
    lwz 12, 0x0(3)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_801246F8
    .4byte 0x40800010 # bge .L_801246E4
    cmpwi 3, 0x1
    .4byte 0x40800014 # bge .L_801246F0
    .4byte 0x48000020 # b .L_80124700
L_801246E4:
    cmpwi 3, 0x4
    .4byte 0x40800018 # bge .L_80124700
    .4byte 0x48000018 # b .L_80124704
L_801246F0:
    li 3, 0x1
    .4byte 0x4800002C # b .L_80124720
L_801246F8:
    li 30, 0x0
    .4byte 0x48000008 # b .L_80124704
L_80124700:
    li 30, 0x0
L_80124704:
    addi 29, 29, 0x1
L_80124708:
    cmpw 29, 31
    .4byte 0x4180FF80 # blt .L_8012468C
    clrlwi. 0, 30, 24
    li 3, 0x2
    .4byte 0x41820008 # beq .L_80124720
    li 3, 0x3
L_80124720:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80124740:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820050 # beq .L_801247AC
    lis 3, lbl_8049E0C8@ha
    addic. 0, 30, 0x230
    addi 3, 3, lbl_8049E0C8@l
    li 0, -0x1
    stw 3, 0x0(30)
    .4byte 0x900D8370 # stw r0, lbl_80539F30@sda21(r0)
    .4byte 0x41820018 # beq .L_80124790
    addic. 0, 30, 0x254
    .4byte 0x41820010 # beq .L_80124790
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x254(30)
L_80124790:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801247AC
    mr 3, 30
    bl dtor_80084580
L_801247AC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_801211C8

