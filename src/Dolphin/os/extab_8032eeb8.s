# Dispatch-cross-check bundle: 15 real FourCC actor vtable bodies
# (lbl_804AB850/AB8C0/AB968/AB9C0/ABA38/ABA90/ABAE8/AC010/AC0A8/AC100/
# AC1F8/AC250/AC2D8/AC330/AC388, ctors already landed) plus shared
# helper/update functions, landed as ONE byte-contiguous 107-function,
# 73,128-byte Track-A bundle (0x8032EEB8-0x80340C60). This is a large
# subset of the naively-clustered "23-actor" region (up to where
# already-landed content resumes at 0x80340C60; the remainder of that
# nominal cluster is further ahead, past currently-landed islands).
# Found+verified via spanwalk.py and resolvefiles.py (3 functions
# fused into neighbors dumps). See
# project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000DC8C
etb_8000DC8C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DC8C, 8

.global etb_8000DC94
etb_8000DC94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DC94, 8

.global etb_8000DC9C
etb_8000DC9C:
    .4byte 0x508A0000
    .4byte 0x00000000
.size etb_8000DC9C, 8

.global etb_8000DCA4
etb_8000DCA4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DCA4, 8

.global etb_8000DCAC
etb_8000DCAC:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_8000DCAC, 8

.global etb_8000DCB4
etb_8000DCB4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DCB4, 8

.global etb_8000DCBC
etb_8000DCBC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DCBC, 8

.global etb_8000DCC4
etb_8000DCC4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DCC4, 8

.global etb_8000DCCC
etb_8000DCCC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DCCC, 8

.global etb_8000DCD4
etb_8000DCD4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DCD4, 8

.global etb_8000DCDC
etb_8000DCDC:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000DCDC, 8

.global etb_8000DCE4
etb_8000DCE4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DCE4, 8

.global etb_8000DCEC
etb_8000DCEC:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000DCEC, 8

.global etb_8000DCF4
etb_8000DCF4:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_8000DCF4, 8

.global etb_8000DCFC
etb_8000DCFC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DCFC, 8

.global etb_8000DD04
etb_8000DD04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DD04, 8

.global etb_8000DD0C
etb_8000DD0C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DD0C, 8

.global etb_8000DD14
etb_8000DD14:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DD14, 8

.global etb_8000DD1C
etb_8000DD1C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DD1C, 8

.global etb_8000DD24
etb_8000DD24:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DD24, 8

.global etb_8000DD2C
etb_8000DD2C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DD2C, 8

.global etb_8000DD34
etb_8000DD34:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DD34, 8

.global etb_8000DD3C
etb_8000DD3C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000DD3C, 8

.global etb_8000DD44
etb_8000DD44:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DD44, 8

.global etb_8000DD4C
etb_8000DD4C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DD4C, 8

.global etb_8000DD54
etb_8000DD54:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DD54, 8

.global etb_8000DD5C
etb_8000DD5C:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_8000DD5C, 8

.global etb_8000DD64
etb_8000DD64:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000DD64, 8

.global etb_8000DD6C
etb_8000DD6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DD6C, 8

.global etb_8000DD74
etb_8000DD74:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DD74, 8

.global etb_8000DD7C
etb_8000DD7C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DD7C, 8

.global etb_8000DD84
etb_8000DD84:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DD84, 8

.global etb_8000DD8C
etb_8000DD8C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000DD8C, 8

.global etb_8000DD94
etb_8000DD94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DD94, 8

.global etb_8000DD9C
etb_8000DD9C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DD9C, 8

.global etb_8000DDA4
etb_8000DDA4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000DDA4, 8

.global etb_8000DDAC
etb_8000DDAC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DDAC, 8

.global etb_8000DDB4
etb_8000DDB4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DDB4, 8

.global etb_8000DDBC
etb_8000DDBC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000DDBC, 8

.global etb_8000DDC4
etb_8000DDC4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DDC4, 8

.global etb_8000DDCC
etb_8000DDCC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DDCC, 8

.global etb_8000DDD4
etb_8000DDD4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DDD4, 8

.global etb_8000DDDC
etb_8000DDDC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DDDC, 8

.global etb_8000DDE4
etb_8000DDE4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DDE4, 8

.global etb_8000DDEC
etb_8000DDEC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000DDEC, 8

.global etb_8000DDF4
etb_8000DDF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DDF4, 8

.global etb_8000DDFC
etb_8000DDFC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DDFC, 8

.global etb_8000DE04
etb_8000DE04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DE04, 8

.global etb_8000DE0C
etb_8000DE0C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DE0C, 8

.global etb_8000DE14
etb_8000DE14:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DE14, 8

.global etb_8000DE1C
etb_8000DE1C:
    .4byte 0x290A0000
    .4byte 0x00000000
.size etb_8000DE1C, 8

.global etb_8000DE24
etb_8000DE24:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DE24, 8

.global etb_8000DE2C
etb_8000DE2C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000DE2C, 8

.global etb_8000DE34
etb_8000DE34:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DE34, 8

.global etb_8000DE3C
etb_8000DE3C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DE3C, 8

.global etb_8000DE44
etb_8000DE44:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DE44, 8

.global etb_8000DE4C
etb_8000DE4C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DE4C, 8

.global etb_8000DE54
etb_8000DE54:
    .4byte 0x318A0000
    .4byte 0x00000000
.size etb_8000DE54, 8

.global etb_8000DE5C
etb_8000DE5C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DE5C, 8

.global etb_8000DE64
etb_8000DE64:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000DE64, 8

.global etb_8000DE6C
etb_8000DE6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DE6C, 8

.global etb_8000DE74
etb_8000DE74:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DE74, 8

.global etb_8000DE7C
etb_8000DE7C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DE7C, 8

.global etb_8000DE84
etb_8000DE84:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000DE84, 8

.global etb_8000DE8C
etb_8000DE8C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000DE8C, 8

.global etb_8000DE94
etb_8000DE94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DE94, 8

.global etb_8000DE9C
etb_8000DE9C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DE9C, 8

.global etb_8000DEA4
etb_8000DEA4:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000DEA4, 8

.global etb_8000DEAC
etb_8000DEAC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DEAC, 8

.global etb_8000DEB4
etb_8000DEB4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DEB4, 8

.global etb_8000DEBC
etb_8000DEBC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DEBC, 8

.global etb_8000DEC4
etb_8000DEC4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DEC4, 8

.global etb_8000DECC
etb_8000DECC:
    .4byte 0x318A0000
    .4byte 0x00000000
.size etb_8000DECC, 8

.global etb_8000DED4
etb_8000DED4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DED4, 8

.global etb_8000DEDC
etb_8000DEDC:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000DEDC, 8

.global etb_8000DEE4
etb_8000DEE4:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000DEE4, 8

.global etb_8000DEEC
etb_8000DEEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DEEC, 8

.global etb_8000DEF4
etb_8000DEF4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DEF4, 8

.global etb_8000DEFC
etb_8000DEFC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DEFC, 8

.global etb_8000DF04
etb_8000DF04:
    .4byte 0x098A0000
    .4byte 0x00000000
.size etb_8000DF04, 8

.global etb_8000DF0C
etb_8000DF0C:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_8000DF0C, 8

.global etb_8000DF14
etb_8000DF14:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DF14, 8

.global etb_8000DF1C
etb_8000DF1C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DF1C, 8

.global etb_8000DF24
etb_8000DF24:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DF24, 8

.global etb_8000DF2C
etb_8000DF2C:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000DF2C, 8

.global etb_8000DF34
etb_8000DF34:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DF34, 8

.global etb_8000DF3C
etb_8000DF3C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DF3C, 8

.global etb_8000DF44
etb_8000DF44:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DF44, 8

.global etb_8000DF4C
etb_8000DF4C:
    .4byte 0x220A0000
    .4byte 0x00000000
.size etb_8000DF4C, 8

.global etb_8000DF54
etb_8000DF54:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000DF54, 8

.global etb_8000DF5C
etb_8000DF5C:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000DF5C, 8

.global etb_8000DF64
etb_8000DF64:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000DF64, 8

.global etb_8000DF6C
etb_8000DF6C:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000DF6C, 8

.global etb_8000DF74
etb_8000DF74:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DF74, 8

.section extabindex, "a"
.balign 4
.global eti_8001D338
eti_8001D338:
    .4byte fn_8032EEB8
    .4byte 0x0000006C
    .4byte etb_8000DC8C
.size eti_8001D338, 12

.global eti_8001D344
eti_8001D344:
    .4byte fn_8032EF24
    .4byte 0x00000224
    .4byte etb_8000DC94
.size eti_8001D344, 12

.global eti_8001D350
eti_8001D350:
    .4byte fn_8032F148
    .4byte 0x00000360
    .4byte etb_8000DC9C
.size eti_8001D350, 12

.global eti_8001D35C
eti_8001D35C:
    .4byte fn_8032F4A8
    .4byte 0x000004C4
    .4byte etb_8000DCA4
.size eti_8001D35C, 12

.global eti_8001D368
eti_8001D368:
    .4byte fn_8032F96C
    .4byte 0x00001CF8
    .4byte etb_8000DCAC
.size eti_8001D368, 12

.global eti_8001D374
eti_8001D374:
    .4byte fn_80331664
    .4byte 0x00000354
    .4byte etb_8000DCB4
.size eti_8001D374, 12

.global eti_8001D380
eti_8001D380:
    .4byte fn_803319B8
    .4byte 0x00000188
    .4byte etb_8000DCBC
.size eti_8001D380, 12

.global eti_8001D38C
eti_8001D38C:
    .4byte fn_80331B40
    .4byte 0x000000E4
    .4byte etb_8000DCC4
.size eti_8001D38C, 12

.global eti_8001D398
eti_8001D398:
    .4byte fn_80331C24
    .4byte 0x00000114
    .4byte etb_8000DCCC
.size eti_8001D398, 12

.global eti_8001D3A4
eti_8001D3A4:
    .4byte fn_80331D38
    .4byte 0x00000134
    .4byte etb_8000DCD4
.size eti_8001D3A4, 12

.global eti_8001D3B0
eti_8001D3B0:
    .4byte fn_80331E6C
    .4byte 0x0000050C
    .4byte etb_8000DCDC
.size eti_8001D3B0, 12

.global eti_8001D3BC
eti_8001D3BC:
    .4byte fn_80332378
    .4byte 0x00000130
    .4byte etb_8000DCE4
.size eti_8001D3BC, 12

.global eti_8001D3C8
eti_8001D3C8:
    .4byte fn_803324A8
    .4byte 0x000005B8
    .4byte etb_8000DCEC
.size eti_8001D3C8, 12

.global eti_8001D3D4
eti_8001D3D4:
    .4byte fn_80332A60
    .4byte 0x00000618
    .4byte etb_8000DCF4
.size eti_8001D3D4, 12

.global eti_8001D3E0
eti_8001D3E0:
    .4byte fn_80333078
    .4byte 0x000000D0
    .4byte etb_8000DCFC
.size eti_8001D3E0, 12

.global eti_8001D3EC
eti_8001D3EC:
    .4byte fn_80333148
    .4byte 0x00000568
    .4byte etb_8000DD04
.size eti_8001D3EC, 12

.global eti_8001D3F8
eti_8001D3F8:
    .4byte fn_803336B0
    .4byte 0x00000084
    .4byte etb_8000DD0C
.size eti_8001D3F8, 12

.global eti_8001D404
eti_8001D404:
    .4byte fn_80333734
    .4byte 0x00000224
    .4byte etb_8000DD14
.size eti_8001D404, 12

.global eti_8001D410
eti_8001D410:
    .4byte fn_80333958
    .4byte 0x00000060
    .4byte etb_8000DD1C
.size eti_8001D410, 12

.global eti_8001D41C
eti_8001D41C:
    .4byte fn_803339B8
    .4byte 0x000001AC
    .4byte etb_8000DD24
.size eti_8001D41C, 12

.global eti_8001D428
eti_8001D428:
    .4byte fn_80333B64
    .4byte 0x00000328
    .4byte etb_8000DD2C
.size eti_8001D428, 12

.global eti_8001D434
eti_8001D434:
    .4byte fn_80333E8C
    .4byte 0x00000138
    .4byte etb_8000DD34
.size eti_8001D434, 12

.global eti_8001D440
eti_8001D440:
    .4byte fn_80333FC4
    .4byte 0x00000130
    .4byte etb_8000DD3C
.size eti_8001D440, 12

.global eti_8001D44C
eti_8001D44C:
    .4byte fn_803340F4
    .4byte 0x00000224
    .4byte etb_8000DD44
.size eti_8001D44C, 12

.global eti_8001D458
eti_8001D458:
    .4byte fn_80334318
    .4byte 0x00000060
    .4byte etb_8000DD4C
.size eti_8001D458, 12

.global eti_8001D464
eti_8001D464:
    .4byte fn_80334378
    .4byte 0x00000110
    .4byte etb_8000DD54
.size eti_8001D464, 12

.global eti_8001D470
eti_8001D470:
    .4byte fn_80334488
    .4byte 0x0000057C
    .4byte etb_8000DD5C
.size eti_8001D470, 12

.global eti_8001D47C
eti_8001D47C:
    .4byte fn_80334A04
    .4byte 0x00000C84
    .4byte etb_8000DD64
.size eti_8001D47C, 12

.global eti_8001D488
eti_8001D488:
    .4byte fn_80335688
    .4byte 0x00000094
    .4byte etb_8000DD6C
.size eti_8001D488, 12

.global eti_8001D494
eti_8001D494:
    .4byte fn_80335858
    .4byte 0x00000224
    .4byte etb_8000DD74
.size eti_8001D494, 12

.global eti_8001D4A0
eti_8001D4A0:
    .4byte fn_80335A7C
    .4byte 0x00000060
    .4byte etb_8000DD7C
.size eti_8001D4A0, 12

.global eti_8001D4AC
eti_8001D4AC:
    .4byte fn_80335ADC
    .4byte 0x00000270
    .4byte etb_8000DD84
.size eti_8001D4AC, 12

.global eti_8001D4B8
eti_8001D4B8:
    .4byte fn_80335D4C
    .4byte 0x000000D0
    .4byte etb_8000DD8C
.size eti_8001D4B8, 12

.global eti_8001D4C4
eti_8001D4C4:
    .4byte fn_80335E1C
    .4byte 0x00000224
    .4byte etb_8000DD94
.size eti_8001D4C4, 12

.global eti_8001D4D0
eti_8001D4D0:
    .4byte fn_80336040
    .4byte 0x00000254
    .4byte etb_8000DD9C
.size eti_8001D4D0, 12

.global eti_8001D4DC
eti_8001D4DC:
    .4byte fn_80336298
    .4byte 0x000009AC
    .4byte etb_8000DDA4
.size eti_8001D4DC, 12

.global eti_8001D4E8
eti_8001D4E8:
    .4byte fn_80336C44
    .4byte 0x000001C4
    .4byte etb_8000DDAC
.size eti_8001D4E8, 12

.global eti_8001D4F4
eti_8001D4F4:
    .4byte fn_80336E08
    .4byte 0x00000208
    .4byte etb_8000DDB4
.size eti_8001D4F4, 12

.global eti_8001D500
eti_8001D500:
    .4byte fn_80337010
    .4byte 0x0000009C
    .4byte etb_8000DDBC
.size eti_8001D500, 12

.global eti_8001D50C
eti_8001D50C:
    .4byte fn_803370AC
    .4byte 0x00000224
    .4byte etb_8000DDC4
.size eti_8001D50C, 12

.global eti_8001D518
eti_8001D518:
    .4byte fn_803372D0
    .4byte 0x00000060
    .4byte etb_8000DDCC
.size eti_8001D518, 12

.global eti_8001D524
eti_8001D524:
    .4byte fn_80337330
    .4byte 0x00000080
    .4byte etb_8000DDD4
.size eti_8001D524, 12

.global eti_8001D530
eti_8001D530:
    .4byte fn_8033742C
    .4byte 0x00000224
    .4byte etb_8000DDDC
.size eti_8001D530, 12

.global eti_8001D53C
eti_8001D53C:
    .4byte fn_80337650
    .4byte 0x00000060
    .4byte etb_8000DDE4
.size eti_8001D53C, 12

.global eti_8001D548
eti_8001D548:
    .4byte fn_803376B0
    .4byte 0x00000358
    .4byte etb_8000DDEC
.size eti_8001D548, 12

.global eti_8001D554
eti_8001D554:
    .4byte fn_80337A08
    .4byte 0x00000280
    .4byte etb_8000DDF4
.size eti_8001D554, 12

.global eti_8001D560
eti_8001D560:
    .4byte fn_80337C88
    .4byte 0x00000164
    .4byte etb_8000DDFC
.size eti_8001D560, 12

.global eti_8001D56C
eti_8001D56C:
    .4byte fn_80337DEC
    .4byte 0x00000784
    .4byte etb_8000DE04
.size eti_8001D56C, 12

.global eti_8001D578
eti_8001D578:
    .4byte fn_80338570
    .4byte 0x0000034C
    .4byte etb_8000DE0C
.size eti_8001D578, 12

.global eti_8001D584
eti_8001D584:
    .4byte fn_803388BC
    .4byte 0x00000224
    .4byte etb_8000DE14
.size eti_8001D584, 12

.global eti_8001D590
eti_8001D590:
    .4byte fn_80338AE4
    .4byte 0x00000890
    .4byte etb_8000DE1C
.size eti_8001D590, 12

.global eti_8001D59C
eti_8001D59C:
    .4byte fn_80339374
    .4byte 0x00000184
    .4byte etb_8000DE24
.size eti_8001D59C, 12

.global eti_8001D5A8
eti_8001D5A8:
    .4byte fn_803394F8
    .4byte 0x000000A4
    .4byte etb_8000DE2C
.size eti_8001D5A8, 12

.global eti_8001D5B4
eti_8001D5B4:
    .4byte fn_8033959C
    .4byte 0x00000224
    .4byte etb_8000DE34
.size eti_8001D5B4, 12

.global eti_8001D5C0
eti_8001D5C0:
    .4byte fn_803397C0
    .4byte 0x00000060
    .4byte etb_8000DE3C
.size eti_8001D5C0, 12

.global eti_8001D5CC
eti_8001D5CC:
    .4byte fn_80339820
    .4byte 0x000002CC
    .4byte etb_8000DE44
.size eti_8001D5CC, 12

.global eti_8001D5D8
eti_8001D5D8:
    .4byte fn_80339AEC
    .4byte 0x00000B6C
    .4byte etb_8000DE4C
.size eti_8001D5D8, 12

.global eti_8001D5E4
eti_8001D5E4:
    .4byte fn_8033A658
    .4byte 0x000011A4
    .4byte etb_8000DE54
.size eti_8001D5E4, 12

.global eti_8001D5F0
eti_8001D5F0:
    .4byte fn_8033B7FC
    .4byte 0x000001DC
    .4byte etb_8000DE5C
.size eti_8001D5F0, 12

.global eti_8001D5FC
eti_8001D5FC:
    .4byte fn_8033B9D8
    .4byte 0x000000F0
    .4byte etb_8000DE64
.size eti_8001D5FC, 12

.global eti_8001D608
eti_8001D608:
    .4byte fn_8033BAC8
    .4byte 0x00000394
    .4byte etb_8000DE6C
.size eti_8001D608, 12

.global eti_8001D614
eti_8001D614:
    .4byte fn_8033BE5C
    .4byte 0x00000224
    .4byte etb_8000DE74
.size eti_8001D614, 12

.global eti_8001D620
eti_8001D620:
    .4byte fn_8033C080
    .4byte 0x00000060
    .4byte etb_8000DE7C
.size eti_8001D620, 12

.global eti_8001D62C
eti_8001D62C:
    .4byte fn_8033C0E4
    .4byte 0x000001E0
    .4byte etb_8000DE84
.size eti_8001D62C, 12

.global eti_8001D638
eti_8001D638:
    .4byte fn_8033C2C4
    .4byte 0x0000009C
    .4byte etb_8000DE8C
.size eti_8001D638, 12

.global eti_8001D644
eti_8001D644:
    .4byte fn_8033C360
    .4byte 0x00000224
    .4byte etb_8000DE94
.size eti_8001D644, 12

.global eti_8001D650
eti_8001D650:
    .4byte fn_8033C584
    .4byte 0x0000019C
    .4byte etb_8000DE9C
.size eti_8001D650, 12

.global eti_8001D65C
eti_8001D65C:
    .4byte fn_8033C720
    .4byte 0x00000248
    .4byte etb_8000DEA4
.size eti_8001D65C, 12

.global eti_8001D668
eti_8001D668:
    .4byte fn_8033C968
    .4byte 0x000000E4
    .4byte etb_8000DEAC
.size eti_8001D668, 12

.global eti_8001D674
eti_8001D674:
    .4byte fn_8033CA4C
    .4byte 0x00000074
    .4byte etb_8000DEB4
.size eti_8001D674, 12

.global eti_8001D680
eti_8001D680:
    .4byte fn_8033CAC0
    .4byte 0x00000224
    .4byte etb_8000DEBC
.size eti_8001D680, 12

.global eti_8001D68C
eti_8001D68C:
    .4byte fn_8033CCE4
    .4byte 0x00000060
    .4byte etb_8000DEC4
.size eti_8001D68C, 12

.global eti_8001D698
eti_8001D698:
    .4byte fn_8033CD44
    .4byte 0x00000520
    .4byte etb_8000DECC
.size eti_8001D698, 12

.global eti_8001D6A4
eti_8001D6A4:
    .4byte fn_8033D264
    .4byte 0x00000248
    .4byte etb_8000DED4
.size eti_8001D6A4, 12

.global eti_8001D6B0
eti_8001D6B0:
    .4byte fn_8033D4CC
    .4byte 0x000005AC
    .4byte etb_8000DEDC
.size eti_8001D6B0, 12

.global eti_8001D6BC
eti_8001D6BC:
    .4byte fn_8033DA78
    .4byte 0x00000710
    .4byte etb_8000DEE4
.size eti_8001D6BC, 12

.global eti_8001D6C8
eti_8001D6C8:
    .4byte fn_8033E188
    .4byte 0x0000028C
    .4byte etb_8000DEEC
.size eti_8001D6C8, 12

.global eti_8001D6D4
eti_8001D6D4:
    .4byte fn_8033E414
    .4byte 0x00000224
    .4byte etb_8000DEF4
.size eti_8001D6D4, 12

.global eti_8001D6E0
eti_8001D6E0:
    .4byte fn_8033E638
    .4byte 0x00000060
    .4byte etb_8000DEFC
.size eti_8001D6E0, 12

.global eti_8001D6EC
eti_8001D6EC:
    .4byte fn_8033E698
    .4byte 0x000003BC
    .4byte etb_8000DF04
.size eti_8001D6EC, 12

.global eti_8001D6F8
eti_8001D6F8:
    .4byte fn_8033EA54
    .4byte 0x00000694
    .4byte etb_8000DF0C
.size eti_8001D6F8, 12

.global eti_8001D704
eti_8001D704:
    .4byte fn_8033F0E8
    .4byte 0x0000013C
    .4byte etb_8000DF14
.size eti_8001D704, 12

.global eti_8001D710
eti_8001D710:
    .4byte fn_8033F224
    .4byte 0x00000224
    .4byte etb_8000DF1C
.size eti_8001D710, 12

.global eti_8001D71C
eti_8001D71C:
    .4byte fn_8033F448
    .4byte 0x00000060
    .4byte etb_8000DF24
.size eti_8001D71C, 12

.global eti_8001D728
eti_8001D728:
    .4byte fn_8033F4AC
    .4byte 0x0000029C
    .4byte etb_8000DF2C
.size eti_8001D728, 12

.global eti_8001D734
eti_8001D734:
    .4byte fn_8033F77C
    .4byte 0x00000224
    .4byte etb_8000DF34
.size eti_8001D734, 12

.global eti_8001D740
eti_8001D740:
    .4byte fn_8033F9A0
    .4byte 0x00000060
    .4byte etb_8000DF3C
.size eti_8001D740, 12

.global eti_8001D74C
eti_8001D74C:
    .4byte fn_8033FA00
    .4byte 0x0000024C
    .4byte etb_8000DF44
.size eti_8001D74C, 12

.global eti_8001D758
eti_8001D758:
    .4byte fn_8033FC4C
    .4byte 0x000001B8
    .4byte etb_8000DF4C
.size eti_8001D758, 12

.global eti_8001D764
eti_8001D764:
    .4byte fn_8033FE04
    .4byte 0x0000084C
    .4byte etb_8000DF54
.size eti_8001D764, 12

.global eti_8001D770
eti_8001D770:
    .4byte fn_80340668
    .4byte 0x000000CC
    .4byte etb_8000DF5C
.size eti_8001D770, 12

.global eti_8001D77C
eti_8001D77C:
    .4byte fn_80340734
    .4byte 0x00000188
    .4byte etb_8000DF64
.size eti_8001D77C, 12

.global eti_8001D788
eti_8001D788:
    .4byte fn_803408BC
    .4byte 0x0000030C
    .4byte etb_8000DF6C
.size eti_8001D788, 12

.global eti_8001D794
eti_8001D794:
    .4byte fn_80340BF0
    .4byte 0x00000070
    .4byte etb_8000DF74
.size eti_8001D794, 12

.text
.balign 4
.global fn_8032EEB8
.global fn_8032EF24
.global fn_8032F148
.global fn_8032F4A8
.global fn_8032F96C
.global fn_80331664
.global fn_803319B8
.global fn_80331B40
.global fn_80331C24
.global fn_80331D38
.global fn_80331E6C
.global fn_80332378
.global fn_803324A8
.global fn_80332A60
.global fn_80333078
.global fn_80333148
.global fn_803336B0
.global fn_80333734
.global fn_80333958
.global fn_803339B8
.global fn_80333B64
.global fn_80333E8C
.global fn_80333FC4
.global fn_803340F4
.global fn_80334318
.global fn_80334378
.global fn_80334488
.global fn_80334A04
.global fn_80335688
.global fn_8033571C
.global fn_80335858
.global fn_80335A7C
.global fn_80335ADC
.global fn_80335D4C
.global fn_80335E1C
.global fn_80336040
.global fn_80336294
.global fn_80336298
.global fn_80336C44
.global fn_80336E08
.global fn_80337010
.global fn_803370AC
.global fn_803372D0
.global fn_80337330
.global fn_803373B0
.global fn_803373F8
.global fn_8033742C
.global fn_80337650
.global fn_803376B0
.global fn_80337A08
.global fn_80337C88
.global fn_80337DEC
.global fn_80338570
.global fn_803388BC
.global fn_80338AE0
.global fn_80338AE4
.global fn_80339374
.global fn_803394F8
.global fn_8033959C
.global fn_803397C0
.global fn_80339820
.global fn_80339AEC
.global fn_8033A658
.global fn_8033B7FC
.global fn_8033B9D8
.global fn_8033BAC8
.global fn_8033BE5C
.global fn_8033C080
.global fn_8033C0E0
.global fn_8033C0E4
.global fn_8033C2C4
.global fn_8033C360
.global fn_8033C584
.global fn_8033C720
.global fn_8033C968
.global fn_8033CA4C
.global fn_8033CAC0
.global fn_8033CCE4
.global fn_8033CD44
.global fn_8033D264
.global fn_8033D4AC
.global fn_8033D4CC
.global fn_8033DA78
.global fn_8033E188
.global fn_8033E414
.global fn_8033E638
.global fn_8033E698
.global fn_8033EA54
.global fn_8033F0E8
.global fn_8033F224
.global fn_8033F448
.global fn_8033F4A8
.global fn_8033F4AC
.global fn_8033F748
.global fn_8033F77C
.global fn_8033F9A0
.global fn_8033FA00
.global fn_8033FC4C
.global fn_8033FE04
.global fn_80340650
.global fn_80340658
.global fn_80340660
.global fn_80340668
.global fn_80340734
.global fn_803408BC
.global fn_80340BC8
.global fn_80340BF0

fn_8032EEB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820034 # beq .L_8032EF08
    lis 3, lbl_804AB850@ha
    addi 0, 3, lbl_804AB850@l
    stw 0, 0x0(30)
    lwz 3, 0x284(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8032EF08
    mr 3, 30
    bl dtor_80084580
L_8032EF08:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8032EF24:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805090F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805090F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032EF74
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
L_8032EF74:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032EFAC
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
L_8032EFAC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032EFE4
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
L_8032EFE4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032F01C
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
L_8032F01C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032F054
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
L_8032F054:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032F08C
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
L_8032F08C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032F0C4
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
L_8032F0C4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032F0FC
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
L_8032F0FC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032F134
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
L_8032F134:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8032F148:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 22, 0x28(1)
    mr 22, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    mr 30, 8
    mr 31, 9
    bl SpatialRegistry_GetBase
    mr 4, 22
    bl fn_801F666C
    mr. 25, 3
    .4byte 0xC3C2EEF8 # lfs f30, lbl_80541E98@sda21(r0)
    li 24, 0x0
    li 23, -0x1
    .4byte 0x40820028 # bne .L_8032F1C4
    cmplwi 28, 0x0
    .4byte 0x4182000C # beq .L_8032F1B0
    li 0, -0x1
    stw 0, 0x0(28)
L_8032F1B0:
    cmplwi 30, 0x0
    .4byte 0x418202D0 # beq .L_8032F484
    li 0, -0x1
    stw 0, 0x0(30)
    .4byte 0x480002C4 # b .L_8032F484
L_8032F1C4:
    mr 3, 31
    li 22, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800018 # bge .L_8032F1EC
    lwz 0, 0x4(25)
    cmpwi 0, 0x8
    .4byte 0x4082000C # bne .L_8032F1EC
    li 22, 0x2
    .4byte 0x4800001C # b .L_8032F204
L_8032F1EC:
    lwz 26, 0x4(25)
    mr 3, 31
    bl fn_8023DE58
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8032F204
    li 22, 0x1
L_8032F204:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820210 # beq .L_8032F420
    mr 3, 31
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x40820200 # bne .L_8032F420
    cmpwi 22, 0x0
    .4byte 0x418201F8 # beq .L_8032F420
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408201E8 # bne .L_8032F420
    mr 3, 31
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x408201D8 # bne .L_8032F420
    mr 3, 31
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x408201C8 # bne .L_8032F420
    cmpwi 22, 0x1
    .4byte 0x40820030 # bne .L_8032F290
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 31
    lfs 0, 0xc(25)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(25)
    fsubs 5, 0, 1
    .4byte 0x48000080 # b .L_8032F30C
L_8032F290:
    mr 3, 31
    bl fn_8023DE58
    mr 26, 3
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_8032F2B0
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_8032F2B4
L_8032F2B0:
    addi 7, 3, 0xdc
L_8032F2B4:
    lwz 6, 0x0(7)
    mr 3, 31
    lwz 5, 0x4(7)
    lwz 4, 0x8(7)
    lwz 0, 0xc(7)
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 4, 0x14(1)
    stw 0, 0x18(1)
    bl fn_8023E724
    lfs 2, 0x0(3)
    mr 3, 31
    lfs 1, 0xc(1)
    lfs 0, 0xc(25)
    fsubs 1, 2, 1
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(1)
    lfs 0, 0x10(25)
    fsubs 1, 2, 1
    fsubs 5, 0, 1
L_8032F30C:
    fmuls 1, 5, 5
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_8032F368
    frsqrte 1, 4
    .4byte 0xC862EF00 # lfd f3, lbl_80541EA0@sda21(r0)
    .4byte 0xC842EF08 # lfd f2, lbl_80541EA8@sda21(r0)
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
    .4byte 0x48000088 # b .L_8032F3EC
L_8032F368:
    .4byte 0xC802EF10 # lfd f0, lbl_80541EB0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_8032F380
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_8032F3EC
L_8032F380:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_8032F3A8
    .4byte 0x40800040 # bge .L_8032F3D8
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8032F3C0
    .4byte 0x48000034 # b .L_8032F3D8
L_8032F3A8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8032F3B8
    li 0, 0x1
    .4byte 0x48000028 # b .L_8032F3DC
L_8032F3B8:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8032F3DC
L_8032F3C0:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8032F3D0
    li 0, 0x5
    .4byte 0x48000010 # b .L_8032F3DC
L_8032F3D0:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8032F3DC
L_8032F3D8:
    li 0, 0x4
L_8032F3DC:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032F3EC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_8032F3EC:
    fmr 30, 4
    lis 3, lbl_80534C00@ha
    fneg 1, 31
    addi 3, 3, lbl_80534C00@l
    fneg 2, 5
    bl fn_80093340
    .4byte 0xC002EF18 # lfs f0, lbl_80541EB8@sda21(r0)
    mr 23, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 24, 0, 16
L_8032F420:
    cmpwi 23, 0x0
    .4byte 0x40800028 # bge .L_8032F44C
    cmplwi 28, 0x0
    .4byte 0x4182000C # beq .L_8032F438
    li 0, -0x1
    stw 0, 0x0(28)
L_8032F438:
    cmplwi 30, 0x0
    .4byte 0x41820048 # beq .L_8032F484
    li 0, -0x1
    stw 0, 0x0(30)
    .4byte 0x4800003C # b .L_8032F484
L_8032F44C:
    cmplwi 27, 0x0
    .4byte 0x41820008 # beq .L_8032F458
    sth 24, 0x0(27)
L_8032F458:
    cmplwi 28, 0x0
    .4byte 0x41820010 # beq .L_8032F46C
    clrlwi 3, 24, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x0(28)
L_8032F46C:
    cmplwi 29, 0x0
    .4byte 0x41820008 # beq .L_8032F478
    stfs 30, 0x0(29)
L_8032F478:
    cmplwi 30, 0x0
    .4byte 0x41820008 # beq .L_8032F484
    stw 23, 0x0(30)
L_8032F484:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 22, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8032F4A8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 29, 3
    stw 28, 0x50(1)
    lbz 0, 0x2a7(3)
    cmplwi 0, 0x1
    .4byte 0x4182047C # beq .L_8032F94C
    lbz 0, 0x288(29)
    cmplwi 0, 0x0
    .4byte 0x41820470 # beq .L_8032F94C
    li 0, -0x1
    addi 9, 1, 0x10
    stw 0, 0x20(1)
    li 10, 0x0
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_8032F558
L_8032F4F8:
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
L_8032F558:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8032F4F8
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x20(1)
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    li 31, 0x0
    stw 5, 0x24(1)
    li 30, 0x7
    li 28, 0x0
    stw 5, 0x28(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 5, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 5, 0x3d(1)
    stb 5, 0x3e(1)
    stw 6, 0x40(1)
    stw 5, 0x44(1)
    stw 0, 0x48(1)
    lfs 0, 0x14(29)
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_8032F604
    lwz 4, 0x4(29)
    addi 3, 29, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x39
    .4byte 0x40820008 # bne .L_8032F604
    li 30, 0x0
L_8032F604:
    li 0, 0x0
    stb 0, 0x30(1)
    lbz 0, 0x2a8(29)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8032F630
    lwz 3, 0x25c(29)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8032F630
    cmpwi 3, 0x3
    .4byte 0x41810008 # bgt .L_8032F630
    addi 28, 3, 0x1
L_8032F630:
    cmpwi 28, 0x3
    .4byte 0x4182005C # beq .L_8032F690
    .4byte 0x40800014 # bge .L_8032F64C
    cmpwi 28, 0x1
    .4byte 0x41820018 # beq .L_8032F658
    .4byte 0x40800030 # bge .L_8032F674
    .4byte 0x48000078 # b .L_8032F6C0
L_8032F64C:
    cmpwi 28, 0x5
    .4byte 0x40800070 # bge .L_8032F6C0
    .4byte 0x48000058 # b .L_8032F6AC
L_8032F658:
    li 4, 0x14
    li 3, 0xc8
    li 0, 0x96
    stb 4, 0x25(1)
    stb 3, 0x20(1)
    stb 0, 0x22(1)
    .4byte 0x48000050 # b .L_8032F6C0
L_8032F674:
    li 4, 0x14
    li 3, 0xc8
    li 0, 0xaa
    stb 4, 0x24(1)
    stb 3, 0x21(1)
    stb 0, 0x22(1)
    .4byte 0x48000034 # b .L_8032F6C0
L_8032F690:
    li 4, 0x14
    li 3, 0xb4
    li 0, 0xc8
    stb 4, 0x26(1)
    stb 3, 0x20(1)
    stb 0, 0x21(1)
    .4byte 0x48000018 # b .L_8032F6C0
L_8032F6AC:
    li 3, 0x14
    li 0, 0xc3
    stb 3, 0x24(1)
    stb 3, 0x26(1)
    stb 0, 0x21(1)
L_8032F6C0:
    lwz 0, 0x230(29)
    cmpwi 0, 0x3
    .4byte 0x40820034 # bne .L_8032F6FC
    li 0, 0x1
    stb 0, 0x2d(1)
    stb 0, 0x2c(1)
    lwz 0, 0x290(29)
    cmpwi 0, 0x0
    .4byte 0x4182004C # beq .L_8032F72C
    lwz 0, 0x26c(29)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x40820040 # bne .L_8032F72C
    li 0, 0x9
    stb 0, 0x1b(1)
    .4byte 0x48000034 # b .L_8032F72C
L_8032F6FC:
    lwz 0, 0x290(29)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8032F718
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_8032F718
    li 0, 0x9
    stb 0, 0x1b(1)
L_8032F718:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8032F72C
    li 0, 0x11
    stw 0, 0x40(1)
L_8032F72C:
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8032F764
    lbz 0, 0x288(29)
    li 30, -0x1
    stb 0, 0x23(1)
    lwz 3, 0xc8(29)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x2d(1)
    lwz 3, 0xc8(29)
    bl fn_8023CA88
    stb 3, 0x2c(1)
    li 31, 0x1
L_8032F764:
    lwz 0, 0x230(29)
    cmpwi 0, 0xa
    .4byte 0x408200F4 # bne .L_8032F860
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408201D0 # bne .L_8032F94C
    lwz 3, 0x25c(29)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x2d(1)
    lwz 3, 0x25c(29)
    bl fn_8023CA88
    stb 3, 0x2c(1)
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820060 # beq .L_8032F804
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    lis 3, lbl_80471A78@ha
    lwz 5, 0x264(29)
    addi 4, 3, lbl_80471A78@l
    fmr 2, 1
    mr 3, 29
    addi 5, 5, 0x11
    addi 6, 1, 0x10
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 29, 0xc
    stw 0, 0x8(1)
    li 6, 0x11
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    bl fn_803075AC
    .4byte 0x4800014C # b .L_8032F94C
L_8032F804:
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    lis 3, lbl_80471A78@ha
    lwz 5, 0x264(29)
    addi 4, 3, lbl_80471A78@l
    fmr 2, 1
    mr 3, 29
    addi 5, 5, 0x1d
    addi 6, 1, 0x10
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 29, 0xc
    stw 0, 0x8(1)
    li 6, 0x1d
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    bl fn_803075AC
    .4byte 0x480000F0 # b .L_8032F94C
L_8032F860:
    lwz 0, 0x290(29)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_8032F890
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8032F884
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_8032F884
    cmpwi 0, 0x1
    .4byte 0x40820070 # bne .L_8032F8F0
L_8032F884:
    lbz 0, 0x2a1(29)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_8032F8F0
L_8032F890:
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    lis 3, lbl_80471A78@ha
    lwz 5, 0x264(29)
    addi 4, 3, lbl_80471A78@l
    fmr 2, 1
    mr 3, 29
    mr 7, 30
    addi 5, 5, 0x2c7
    addi 6, 1, 0x10
    bl fn_801F06F0
    li 0, 0x0
    mr 10, 31
    stw 0, 0x8(1)
    addi 5, 29, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    lwz 6, 0x264(29)
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    addi 6, 6, 0x2c7
    bl fn_803075AC
    .4byte 0x48000060 # b .L_8032F94C
L_8032F8F0:
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    lis 3, lbl_80471A78@ha
    lwz 5, 0x264(29)
    addi 4, 3, lbl_80471A78@l
    fmr 2, 1
    mr 3, 29
    mr 7, 30
    addi 5, 5, 0x2af
    addi 6, 1, 0x10
    bl fn_801F06F0
    li 0, 0x0
    mr 10, 31
    stw 0, 0x8(1)
    addi 5, 29, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    lwz 6, 0x264(29)
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    addi 6, 6, 0x2af
    bl fn_803075AC
L_8032F94C:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8032F96C:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stmw 26, 0x68(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x40820030 # bne .L_8032F9C8
    lwz 3, 0x25c(31)
    li 5, 0x0
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40821C88 # bne .L_80331640
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48001C7C # b .L_80331640
L_8032F9C8:
    lbz 0, 0x2a7(31)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8032F9FC
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40821C54 # bne .L_80331640
    li 0, 0x0
    stb 0, 0x2a7(31)
    .4byte 0x48001C48 # b .L_80331640
L_8032F9FC:
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 3, -0x1
    li 4, 0x0
    stw 3, 0x40(1)
    li 0, 0x3e8
    li 30, 0x0
    stfs 0, 0x44(1)
    li 29, -0x1
    li 28, -0x1
    sth 4, 0x8(1)
    stw 3, 0x3c(1)
    lwz 3, 0x26c(31)
    addi 3, 3, 0x1
    stw 3, 0x26c(31)
    stw 0, 0x108(31)
    lwz 5, 0x2f4(31)
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_8032FA5C
    lwz 3, 0xf4(5)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 0, 0x24(5)
    stw 4, 0x2f4(31)
L_8032FA5C:
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8032FA70
    cmpwi 0, 0x6
    .4byte 0x40820020 # bne .L_8032FA8C
L_8032FA70:
    mr 3, 31
    bl fn_80332A60
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8032FA8C
    mr 3, 31
    bl fn_803324A8
L_8032FA8C:
    lfs 1, 0x2b8(31)
    addi 3, 31, 0x3c
    .4byte 0xC042EF20 # lfs f2, lbl_80541EC0@sda21(r0)
    .4byte 0xC062EF1C # lfs f3, lbl_80541EBC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2bc(31)
    addi 3, 31, 0x40
    .4byte 0xC042EF20 # lfs f2, lbl_80541EC0@sda21(r0)
    .4byte 0xC062EF1C # lfs f3, lbl_80541EBC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2c0(31)
    addi 3, 31, 0x44
    .4byte 0xC042EF24 # lfs f2, lbl_80541EC4@sda21(r0)
    .4byte 0xC062EF1C # lfs f3, lbl_80541EBC@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    li 27, 0x0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_8032FB2C
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8032FB0C
    cmpwi 0, 0x6
    .4byte 0x40820024 # bne .L_8032FB2C
L_8032FB0C:
    mr 3, 31
    bl fn_80332378
    mr 0, 3
    mr 3, 31
    mr 27, 0
    bl fn_80331E6C
    mr 3, 31
    bl fn_80331D38
L_8032FB2C:
    mr 3, 31
    bl fn_80331C24
    mr 3, 31
    bl fn_80331B40
    lwz 0, 0x230(31)
    cmplwi 0, 0xb
    .4byte 0x418118D8 # bgt .L_8033141C
    lis 3, jumptable_804AB938@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB938@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4182018C # beq .L_8032FCF4
    cmpwi 0, 0xa
    .4byte 0x40800140 # bge .L_8032FCB0
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x5
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820124 # beq .L_8032FCB0
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    lfs 0, 0x3c(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820018 # beq .L_8032FBB4
    .4byte 0xC022EF28 # lfs f1, lbl_80541EC8@sda21(r0)
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    stfs 1, 0x2bc(31)
    stfs 0, 0x2c0(31)
    .4byte 0x48000084 # b .L_8032FC34
L_8032FBB4:
    lfs 0, 0x40(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820078 # beq .L_8032FC34
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF30 # lfs f2, lbl_80541ED0@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x34(1)
    lfs 1, 0x34(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8032FC24
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    stfs 0, 0x2b8(31)
    .4byte 0x4800000C # b .L_8032FC2C
L_8032FC24:
    .4byte 0xC002EF28 # lfs f0, lbl_80541EC8@sda21(r0)
    stfs 0, 0x2b8(31)
L_8032FC2C:
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    stfs 0, 0x2c0(31)
L_8032FC34:
    psq_l 2, 0x2b8(31), 0, 0
    li 0, 0x14
    lfs 1, 0x2c0(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    psq_st 2, 0x2c4(31), 0, 0
    stfs 1, 0x2cc(31)
    stfs 0, 0x2c0(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2d0(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2d4(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2d8(31)
    stw 0, 0x23c(31)
    lwz 0, 0x290(31)
    cmpwi 0, 0x6
    .4byte 0x4182001C # beq .L_8032FCA4
    lis 3, 0x1
    li 0, 0xb
    subi 3, 3, 0x1
    stw 3, 0x290(31)
    stw 0, 0x230(31)
    .4byte 0x4800177C # b .L_8033141C
L_8032FCA4:
    li 0, 0x0
    stw 0, 0x23c(31)
    .4byte 0x48001770 # b .L_8033141C
L_8032FCB0:
    clrlwi. 0, 27, 24
    .4byte 0x41821768 # beq .L_8033141C
    li 0, 0x0
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    stw 0, 0x23c(31)
    li 0, 0x1
    lfs 1, 0xc(31)
    stfs 1, 0x2d0(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2d4(31)
    lfs 1, 0x14(31)
    stfs 1, 0x2d8(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2c0(31)
    stb 0, 0x2a5(31)
    .4byte 0x4800172C # b .L_8033141C
L_8032FCF4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820238 # bne .L_8032FF34
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC062EF34 # lfs f3, lbl_80541ED4@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x30(1)
    lfs 2, 0x30(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x58(1)
    lwz 3, 0x5c(1)
    addi 0, 3, 0x32
    stw 0, 0x238(31)
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    clrlwi 0, 0, 31
    stw 0, 0x258(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2c0(31)
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8032FDAC
    lfs 0, 0xc(31)
    li 0, 0x1
    stfs 0, 0x2d0(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2d4(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2d8(31)
    stb 0, 0x2a5(31)
L_8032FDAC:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820180 # bne .L_8032FF34
    lfs 1, 0x10(31)
    lfs 0, 0x2d4(31)
    lfs 2, 0xc(31)
    fsubs 30, 1, 0
    lfs 0, 0x2d0(31)
    fsubs 31, 2, 0
    fmuls 0, 30, 30
    fmadds 1, 31, 31, 0
    bl fn_80154378
    .4byte 0xC002EF38 # lfs f0, lbl_80541ED8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810040 # ble .L_8032FE24
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_8032FE24
    fneg 1, 31
    lis 3, lbl_80534C00@ha
    fneg 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002EF18 # lfs f0, lbl_80541EB8@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    sth 0, 0x8(1)
    .4byte 0x48000058 # b .L_8032FE78
L_8032FE24:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF3C # lfs f2, lbl_80541EDC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x2c(1)
    lfs 1, 0x2c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    sth 0, 0x8(1)
L_8032FE78:
    lbz 0, 0x2a3(31)
    .4byte 0xC3C2EF1C # lfs f30, lbl_80541EBC@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8032FE8C
    .4byte 0xC3C2EF30 # lfs f30, lbl_80541ED0@sda21(r0)
L_8032FE8C:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8032FEB8
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    lfs 0, 0x2b4(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082003C # bne .L_8032FEF0
L_8032FEB8:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 30, 0
    stfs 0, 0x2b8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 30, 0
    stfs 0, 0x2bc(31)
    .4byte 0x48000020 # b .L_8032FF0C
L_8032FEF0:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 30, 0
    stfs 0, 0x2b8(31)
L_8032FF0C:
    lfs 1, 0x2b8(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_8032FF2C
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8032FF34
L_8032FF2C:
    li 0, 0x1
    stw 0, 0x98(31)
L_8032FF34:
    lfs 1, 0x14(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8032FF54
    lfs 1, 0x44(31)
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
L_8032FF54:
    lfs 1, 0x14(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820044 # bne .L_8032FFA8
    stfs 0, 0x14(31)
    li 0, 0x2
    mr 3, 31
    lfs 0, 0xc(31)
    stfs 0, 0x2d0(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2d4(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2d8(31)
    stw 0, 0xb8(31)
    bl fn_803319B8
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8032FFA8
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    stfs 0, 0x44(31)
L_8032FFA8:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x4082145C # bne .L_8033141C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_8032FFE0
    lfs 1, 0x2bc(31)
    lfs 0, 0x2b4(31)
    fadds 0, 1, 0
    stfs 0, 0x2bc(31)
L_8032FFE0:
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    lfs 0, 0x2b4(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820010 # bne .L_8032FFFC
    li 0, 0x0
    stb 0, 0x2a9(31)
    .4byte 0x4800000C # b .L_80330004
L_8032FFFC:
    li 0, 0x1
    stb 0, 0x2a9(31)
L_80330004:
    .4byte 0xC002EF20 # lfs f0, lbl_80541EC0@sda21(r0)
    li 0, 0x2
    stfs 0, 0x2b4(31)
    stw 0, 0xb8(31)
    .4byte 0x48001408 # b .L_8033141C
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820100 # bne .L_80330120
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x418100B8 # bgt .L_803300E4
    lwz 0, 0x290(31)
    cmpwi 0, 0x6
    .4byte 0x418200AC # beq .L_803300E4
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 10, 0x28c(31)
    addi 5, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801EEC98
    li 0, 0xa
    lis 3, lbl_8052EBC0@ha
    stw 0, 0x240(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC062EF28 # lfs f3, lbl_80541EC8@sda21(r0)
    lhz 0, 0x8(1)
    .4byte 0xC022EF20 # lfs f1, lbl_80541EC0@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    lfsx 2, 3, 0
    fmuls 2, 3, 2
    stfs 2, 0x2b8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 2, 0x4(3)
    fmuls 2, 3, 2
    stfs 2, 0x2bc(31)
    stfs 1, 0x2c0(31)
    lfs 1, 0x2b8(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_803300C8
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_803300D0
L_803300C8:
    li 0, 0x1
    stw 0, 0x98(31)
L_803300D0:
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x230(31)
    stw 0, 0x290(31)
    .4byte 0x4800133C # b .L_8033141C
L_803300E4:
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 4, 0xa
    li 0, 0x0
    mr 3, 31
    stfs 0, 0x2b0(31)
    stw 4, 0x268(31)
    stw 0, 0x230(31)
    bl fn_803319B8
    lfs 0, 0xc(31)
    stfs 0, 0x2d0(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2d4(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2d8(31)
    .4byte 0x48001300 # b .L_8033141C
L_80330120:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820220 # bne .L_80330348
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 0, 0x2
    mr 3, 31
    addi 5, 1, 0x8
    stfs 0, 0x38(1)
    addi 6, 1, 0x40
    addi 7, 1, 0x38
    li 8, 0x0
    stw 0, 0x238(31)
    li 9, 0x0
    li 10, 0x0
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_80330188
    lwz 0, 0x174(31)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_80330188
    lfs 1, 0x38(1)
    .4byte 0xC002EF40 # lfs f0, lbl_80541EE0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810048 # ble .L_803301CC
L_80330188:
    lfs 3, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x2d0(31)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x10(31)
    lfs 0, 0x2d4(31)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fneg 1, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002EF18 # lfs f0, lbl_80541EB8@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    sth 0, 0x8(1)
L_803301CC:
    lhz 3, 0x8(1)
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x8(1)
    .4byte 0x408200C8 # bne .L_803302AC
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_8033024C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002EF44 # lfs f0, lbl_80541EE4@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x28(1)
    lfs 2, 0x28(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80330244
    li 0, 0x1
    .4byte 0x48000024 # b .L_80330264
L_80330244:
    li 0, -0x1
    .4byte 0x4800001C # b .L_80330264
L_8033024C:
    lfs 1, 0x2b0(31)
    lfs 0, 0x38(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80330264
    neg 0, 0
L_80330264:
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80330284
    lhz 3, 0x8(1)
    li 0, 0x1
    addi 3, 3, 0x2000
    sth 3, 0x8(1)
    stw 0, 0x2ac(31)
    .4byte 0x48000018 # b .L_80330298
L_80330284:
    lhz 3, 0x8(1)
    li 0, -0x1
    subi 3, 3, 0x2000
    sth 3, 0x8(1)
    stw 0, 0x2ac(31)
L_80330298:
    lfs 0, 0x38(1)
    li 0, 0x3
    stfs 0, 0x2b0(31)
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_803302B4
L_803302AC:
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    stfs 0, 0x2b0(31)
L_803302B4:
    lbz 0, 0x2a3(31)
    .4byte 0xC3C2EF30 # lfs f30, lbl_80541ED0@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_803302C8
    .4byte 0xC3C2EF48 # lfs f30, lbl_80541EE8@sda21(r0)
L_803302C8:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803302F4
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    lfs 0, 0x2b4(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082003C # bne .L_8033032C
L_803302F4:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 30, 0
    stfs 0, 0x2b8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 30, 0
    stfs 0, 0x2bc(31)
    .4byte 0x48000020 # b .L_80330348
L_8033032C:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 30, 0
    stfs 0, 0x2b8(31)
L_80330348:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x41810034 # bgt .L_80330384
    lfs 1, 0x2b8(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_80330374
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8033037C
L_80330374:
    li 0, 0x1
    stw 0, 0x98(31)
L_8033037C:
    li 0, 0xa
    stw 0, 0x250(31)
L_80330384:
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41810264 # bgt .L_803305F0
    lwz 0, 0x240(31)
    srwi 3, 0, 31
    clrlwi 0, 0, 31
    xor 0, 0, 3
    subf 0, 3, 0
    cmpwi 0, 0x1
    .4byte 0x40820248 # bne .L_803305F0
    lbz 0, 0x2a0(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_803303D4
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x1b6
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    li 0, 0x0
    stb 0, 0x2a0(31)
L_803303D4:
    bl GetRoomConfigRecord
    .4byte 0xC042EF4C # lfs f2, lbl_80541EEC@sda21(r0)
    lis 4, 0x19
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    addi 5, 4, 0x660d
    stfs 2, 0x50(1)
    .4byte 0xC062EF1C # lfs f3, lbl_80541EBC@sda21(r0)
    lwz 0, 0xb4(6)
    .4byte 0xC022EF50 # lfs f1, lbl_80541EF0@sda21(r0)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x24(1)
    lfs 0, 0x24(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    cmpwi 0, 0x2
    .4byte 0x418200DC # beq .L_80330510
    .4byte 0x40800014 # bge .L_8033044C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80330458
    .4byte 0x40800070 # bge .L_803304B4
    .4byte 0x4800017C # b .L_803305C4
L_8033044C:
    cmpwi 0, 0x4
    .4byte 0x40800174 # bge .L_803305C4
    .4byte 0x48000118 # b .L_8033056C
L_80330458:
    lfs 0, 0xcc(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    fsubs 0, 0, 2
    .4byte 0xC042EF54 # lfs f2, lbl_80541EF4@sda21(r0)
    stfs 0, 0x48(1)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 4, 0xd0(3)
    srwi 0, 0, 9
    lfs 0, 0xd8(3)
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    fsubs 1, 0, 4
    lfs 0, 0x20(1)
    fmadds 1, 2, 1, 4
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    stfs 0, 0x4c(1)
    .4byte 0x48000114 # b .L_803305C4
L_803304B4:
    lfs 0, 0xd4(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    fadds 0, 2, 0
    .4byte 0xC042EF54 # lfs f2, lbl_80541EF4@sda21(r0)
    stfs 0, 0x48(1)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 4, 0xd0(3)
    srwi 0, 0, 9
    lfs 0, 0xd8(3)
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    fsubs 1, 0, 4
    lfs 0, 0x1c(1)
    fmadds 1, 2, 1, 4
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    stfs 0, 0x4c(1)
    .4byte 0x480000B8 # b .L_803305C4
L_80330510:
    lfs 0, 0xd0(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    fsubs 0, 0, 2
    .4byte 0xC042EF54 # lfs f2, lbl_80541EF4@sda21(r0)
    stfs 0, 0x4c(1)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 4, 0xcc(3)
    srwi 0, 0, 9
    lfs 0, 0xd4(3)
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    fsubs 1, 0, 4
    lfs 0, 0x18(1)
    fmadds 1, 2, 1, 4
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    stfs 0, 0x48(1)
    .4byte 0x4800005C # b .L_803305C4
L_8033056C:
    lfs 0, 0xd8(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    fadds 0, 2, 0
    .4byte 0xC042EF54 # lfs f2, lbl_80541EF4@sda21(r0)
    stfs 0, 0x4c(1)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 4, 0xcc(3)
    srwi 0, 0, 9
    lfs 0, 0xd4(3)
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    fsubs 1, 0, 4
    lfs 0, 0x14(1)
    fmadds 1, 2, 1, 4
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    stfs 0, 0x48(1)
L_803305C4:
    bl SpatialRegistry_GetBase
    lbz 0, 0x2a1(31)
    lis 4, 0x4e49
    addi 4, 4, 0x5741
    addi 6, 1, 0x48
    slwi 0, 0, 12
    li 5, 0x0
    ori 7, 0, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_803305F0:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820E14 # bne .L_8033141C
    lfs 2, 0x2bc(31)
    lfs 0, 0x2b4(31)
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x2bc(31)
    lfs 0, 0x2b4(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820010 # bne .L_80330638
    li 0, 0x0
    stb 0, 0x2a9(31)
    .4byte 0x4800000C # b .L_80330640
L_80330638:
    li 0, 0x1
    stb 0, 0x2a9(31)
L_80330640:
    .4byte 0xC002EF20 # lfs f0, lbl_80541EC0@sda21(r0)
    stfs 0, 0x2b4(31)
    .4byte 0x48000DD4 # b .L_8033141C
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x408201B8 # bne .L_8033080C
    lwz 0, 0x290(31)
    cmplwi 0, 0x8
    .4byte 0x4181001C # bgt .L_8033067C
    lis 3, jumptable_804AB914@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB914@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
L_8033067C:
    li 0, 0x12
    stw 0, 0x23c(31)
    lfs 0, 0x3c(31)
    stfs 0, 0x2b8(31)
    lfs 0, 0x40(31)
    stfs 0, 0x2bc(31)
    lfs 0, 0x44(31)
    stfs 0, 0x2c0(31)
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_803306F8
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    .4byte 0xC042EEFC # lfs f2, lbl_80541E9C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stfs 2, 0x14(31)
    lfs 1, 0x2bc(31)
    lfs 0, 0x2c0(31)
    fsubs 0, 1, 0
    stfs 0, 0x2bc(31)
    stfs 2, 0x2c0(31)
    lfs 1, 0x40(31)
    lfs 0, 0x44(31)
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    stfs 2, 0x44(31)
L_803306F8:
    lwz 3, 0x25c(31)
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80330718
    lwz 3, 0x25c(31)
    bl fn_8022F3DC
    stw 3, 0x25c(31)
L_80330718:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000CFC # b .L_8033141C
    li 3, 0x0
    li 0, 0x3e8
    stw 3, 0x238(31)
    stw 0, 0x240(31)
    lwz 3, 0x25c(31)
    bl fn_80230CFC
    clrlwi 3, 3, 16
    bl fn_801F6874
    sth 3, 0x29c(31)
    lhz 0, 0x29c(31)
    sth 0, 0x29e(31)
    lwz 0, 0x290(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_80330768
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000CB8 # b .L_8033141C
L_80330768:
    cmpwi 0, 0x8
    .4byte 0x40820010 # bne .L_8033077C
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x48000CA4 # b .L_8033141C
L_8033077C:
    lis 3, 0x1
    li 28, 0x0
    subi 0, 3, 0x1
    li 27, 0x0
    sth 0, 0x94(31)
L_80330790:
    lwz 0, 0x25c(31)
    cmpw 28, 0
    .4byte 0x41820058 # beq .L_803307F0
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_803307F0
    lhz 0, 0x94(31)
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_803307C0
    sth 28, 0x94(31)
    .4byte 0x48000034 # b .L_803307F0
L_803307C0:
    bl SpatialRegistry_GetBase
    lwz 0, 0x25c(31)
    lis 4, 0x4e49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    slwi 0, 0, 8
    addi 6, 31, 0xc
    or 0, 0, 27
    li 8, -0x1
    ori 7, 0, 0x4
    li 9, -0x1
    bl fn_801F9484
L_803307F0:
    addi 28, 28, 0x1
    addi 27, 27, 0x10
    cmpwi 28, 0x4
    .4byte 0x4180FF94 # blt .L_80330790
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48000C14 # b .L_8033141C
L_8033080C:
    lbz 0, 0x2a8(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80330820
    lwz 0, 0xc8(31)
    stw 0, 0x25c(31)
L_80330820:
    lwz 3, 0xc8(31)
    bl fn_80230CFC
    stw 3, 0x98(31)
    lwz 3, 0xc8(31)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    stfs 0, 0x14(31)
    lwz 3, 0xc8(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    lwz 3, 0xc8(31)
    bl fn_8023BCD4
    stb 3, 0x288(31)
    .4byte 0x48000BB8 # b .L_8033141C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820254 # bne .L_80330AC4
    lis 3, 0x1
    li 27, 0x0
    subi 0, 3, 0x1
    sth 0, 0x94(31)
L_80330884:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200E4 # beq .L_80330974
    lwz 4, 0x25c(31)
    cmpw 27, 4
    .4byte 0x418200D8 # beq .L_80330974
    mr 3, 27
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x408200C8 # bne .L_80330974
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x408200B8 # bne .L_80330974
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x4082008C # bne .L_80330974
    mr 3, 27
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x41820014 # beq .L_80330910
    mr 3, 27
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800068 # bge .L_80330974
L_80330910:
    mr 3, 27
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_80330974
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80330954
    mr 3, 27
    bl fn_80236228
    cmpw 29, 3
    .4byte 0x40800038 # bge .L_80330974
    mr 3, 27
    bl fn_80236228
    sth 27, 0x94(31)
    mr 29, 3
    .4byte 0x48000024 # b .L_80330974
L_80330954:
    mr 3, 27
    bl fn_80237774
    cmpw 28, 3
    .4byte 0x40800014 # bge .L_80330974
    mr 3, 27
    bl fn_80237774
    sth 27, 0x94(31)
    mr 28, 3
L_80330974:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF08 # blt .L_80330884
    lhz 3, 0x94(31)
    cmplwi 3, 0x3
    .4byte 0x418100D8 # bgt .L_80330A60
    bl fn_8022F3DC
    lwz 0, 0x25c(31)
    cmpw 0, 3
    .4byte 0x41820024 # beq .L_803309BC
    lwz 4, 0x198(31)
    mr 3, 31
    lhz 9, 0x94(31)
    addi 5, 31, 0x29e
    addi 6, 1, 0x40
    addi 7, 1, 0x44
    addi 8, 1, 0x3c
    bl fn_8032F148
L_803309BC:
    lwz 0, 0x3c(1)
    lhz 3, 0x94(31)
    cmpw 0, 3
    .4byte 0x418200DC # beq .L_80330AA4
    bl fn_8022F340
    lwz 0, 0x25c(31)
    cmpw 0, 3
    .4byte 0x41820034 # beq .L_80330A0C
    lwz 0, 0x8(31)
    cmpwi 0, 0x8
    .4byte 0x41800028 # blt .L_80330A0C
    lhz 3, 0x94(31)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800024 # blt .L_80330A18
    lwz 27, 0x8(31)
    lhz 3, 0x94(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x41820010 # beq .L_80330A18
L_80330A0C:
    li 0, -0x1
    stw 0, 0x40(1)
    .4byte 0x48000090 # b .L_80330AA4
L_80330A18:
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC042EF18 # lfs f2, lbl_80541EB8@sda21(r0)
    li 0, -0x1
    .4byte 0xC002EF58 # lfs f0, lbl_80541EF8@sda21(r0)
    fmuls 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x58(1)
    lwz 3, 0x5c(1)
    sth 3, 0x29e(31)
    stw 0, 0x40(1)
    stfs 0, 0x44(1)
    .4byte 0x48000048 # b .L_80330AA4
L_80330A60:
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC042EF18 # lfs f2, lbl_80541EB8@sda21(r0)
    li 0, -0x1
    .4byte 0xC002EF58 # lfs f0, lbl_80541EF8@sda21(r0)
    fmuls 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x58(1)
    lwz 3, 0x5c(1)
    sth 3, 0x29e(31)
    stw 0, 0x40(1)
    stfs 0, 0x44(1)
L_80330AA4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_80330ABC
    li 0, 0x12c
    stw 0, 0x298(31)
    .4byte 0x4800000C # b .L_80330AC4
L_80330ABC:
    li 0, 0x64
    stw 0, 0x298(31)
L_80330AC4:
    lhz 3, 0x94(31)
    cmplwi 3, 0x3
    .4byte 0x41810104 # bgt .L_80330BD0
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x408200F8 # bne .L_80330BD0
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408200EC # bne .L_80330BD0
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_80330B28
    lhz 3, 0x94(31)
    lwz 4, 0x25c(31)
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80330B28
    lwz 4, 0x198(31)
    mr 3, 31
    lhz 9, 0x94(31)
    addi 5, 31, 0x29e
    addi 6, 1, 0x40
    addi 7, 1, 0x44
    addi 8, 1, 0x3c
    bl fn_8032F148
L_80330B28:
    li 0, 0x64
    stw 0, 0x298(31)
    lwz 0, 0x3c(1)
    lhz 3, 0x94(31)
    cmpw 0, 3
    .4byte 0x41820094 # beq .L_80330BD0
    bl fn_8022F3DC
    lwz 0, 0x25c(31)
    cmpw 0, 3
    .4byte 0x41820034 # beq .L_80330B80
    lwz 0, 0x8(31)
    cmpwi 0, 0x8
    .4byte 0x41800028 # blt .L_80330B80
    lhz 3, 0x94(31)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800024 # blt .L_80330B8C
    lwz 27, 0x8(31)
    lhz 3, 0x94(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x41820010 # beq .L_80330B8C
L_80330B80:
    li 0, -0x1
    stw 0, 0x40(1)
    .4byte 0x48000048 # b .L_80330BD0
L_80330B8C:
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC042EF18 # lfs f2, lbl_80541EB8@sda21(r0)
    li 0, -0x1
    .4byte 0xC002EF58 # lfs f0, lbl_80541EF8@sda21(r0)
    fmuls 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x58(1)
    lwz 3, 0x5c(1)
    sth 3, 0x29e(31)
    stw 0, 0x40(1)
    stfs 0, 0x44(1)
L_80330BD0:
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_80330C90
    lhz 3, 0x94(31)
    cmplwi 3, 0x3
    .4byte 0x41810098 # bgt .L_80330C88
    lwz 27, 0x4(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x41820090 # beq .L_80330C90
    lhz 3, 0x94(31)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4080006C # bge .L_80330C7C
    lhz 3, 0x94(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    lhz 3, 0x94(31)
    bl fn_8023DE58
    mr 27, 3
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_80330C40
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_80330C44
L_80330C40:
    addi 4, 3, 0xdc
L_80330C44:
    lfs 1, 0x0(4)
    li 3, 0x1
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 0, 0x0
    stfs 1, 0xc(31)
    lfs 1, 0x4(4)
    stfs 1, 0x10(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 3, 0x238(31)
    sth 0, 0x29c(31)
    sth 0, 0x29e(31)
    .4byte 0x48000018 # b .L_80330C90
L_80330C7C:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800000C # b .L_80330C90
L_80330C88:
    li 0, 0x0
    stb 0, 0x11c(31)
L_80330C90:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_80330D30
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x41800034 # blt .L_80330CD8
    lhz 3, 0x94(31)
    cmplwi 3, 0x3
    .4byte 0x41810028 # bgt .L_80330CD8
    lwz 27, 0x4(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x40820018 # bne .L_80330CD8
    lhz 4, 0x29e(31)
    addi 3, 31, 0x29c
    li 5, 0x1
    li 6, 0x1000
    bl fn_801F714C
L_80330CD8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF5C # lfs f2, lbl_80541EFC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 3, 0x5c(1)
    addi 0, 3, 0x2
    stw 0, 0x238(31)
L_80330D30:
    li 0, 0x2710
    lis 3, lbl_8052EBC0@ha
    stw 0, 0x23c(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042EF2C # lfs f2, lbl_80541ECC@sda21(r0)
    lhz 0, 0x29c(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmuls 1, 2, 1
    stfs 1, 0x2b8(31)
    lhz 0, 0x29c(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmuls 1, 2, 1
    stfs 1, 0x2bc(31)
    lfs 1, 0x2b8(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_80330D90
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_80330D98
L_80330D90:
    li 0, 0x1
    stw 0, 0x98(31)
L_80330D98:
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x418001A0 # blt .L_80330F40
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x41810194 # bgt .L_80330F40
    lwz 4, 0x25c(31)
    mr 3, 31
    bl fn_801F2740
    clrlwi. 28, 3, 24
    li 27, -0x1
    .4byte 0x4182017C # beq .L_80330F40
    li 29, 0x0
L_80330DCC:
    li 0, 0x1
    slw 0, 0, 29
    and. 0, 28, 0
    .4byte 0x41820060 # beq .L_80330E38
    mr 26, 29
    mr 3, 29
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80330E00
    mr 3, 29
    bl fn_8022F3DC
    mr 26, 3
L_80330E00:
    lhz 3, 0x94(31)
    cmpw 3, 26
    .4byte 0x40820030 # bne .L_80330E38
    lwz 0, 0x290(31)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_80330E20
    cmpwi 0, 0x8
    .4byte 0x4082000C # bne .L_80330E28
L_80330E20:
    mr 27, 29
    .4byte 0x48000020 # b .L_80330E44
L_80330E28:
    cmpw 3, 26
    .4byte 0x4082000C # bne .L_80330E38
    mr 27, 29
    .4byte 0x48000010 # b .L_80330E44
L_80330E38:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF8C # blt .L_80330DCC
L_80330E44:
    cmpwi 27, 0x0
    .4byte 0x418000F8 # blt .L_80330F40
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80330E98
    mr 3, 27
    bl fn_80236228
    lwz 0, 0x298(31)
    mr 28, 3
    cmpw 28, 0
    .4byte 0x40810014 # ble .L_80330E84
    mr 3, 27
    neg 4, 0
    bl fn_802362C4
    .4byte 0x4800005C # b .L_80330EDC
L_80330E84:
    mr 3, 27
    neg 4, 28
    bl fn_802362C4
    stw 28, 0x298(31)
    .4byte 0x48000048 # b .L_80330EDC
L_80330E98:
    mr 3, 27
    bl fn_80237774
    stw 3, 0x298(31)
    lwz 0, 0x290(31)
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_80330EC8
    lwz 0, 0x298(31)
    cmpwi 0, 0x4
    .4byte 0x41800024 # blt .L_80330EDC
    li 0, 0x4
    stw 0, 0x298(31)
    .4byte 0x48000018 # b .L_80330EDC
L_80330EC8:
    lwz 0, 0x298(31)
    cmpwi 0, 0x2
    .4byte 0x4180000C # blt .L_80330EDC
    li 0, 0x2
    stw 0, 0x298(31)
L_80330EDC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_80330F28
    lwz 0, 0x290(31)
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_80330F10
    mr 3, 27
    addi 5, 31, 0xc
    li 4, 0x4
    li 6, 0x1
    bl fn_80238548
    .4byte 0x48000030 # b .L_80330F3C
L_80330F10:
    mr 3, 27
    addi 5, 31, 0xc
    li 4, 0x2
    li 6, 0x1
    bl fn_80238548
    .4byte 0x48000018 # b .L_80330F3C
L_80330F28:
    mr 3, 31
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_80330F3C:
    li 30, 0x1
L_80330F40:
    cmpwi 30, 0x0
    .4byte 0x4182002C # beq .L_80330F70
    lwz 0, 0x298(31)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_80330F70
    li 0, 0x32
    li 3, 0x9
    stw 0, 0x244(31)
    li 0, 0x1
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x480004B0 # b .L_8033141C
L_80330F70:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80330F84
    cmpwi 30, 0x0
    .4byte 0x4182049C # beq .L_8033141C
L_80330F84:
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000490 # b .L_8033141C
    lbz 0, 0x2a6(31)
    lwz 4, 0x114(31)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80330FA4
    li 4, 0x1
L_80330FA4:
    mr 3, 31
    li 5, -0x1
    li 6, 0x5
    bl fn_801F2B7C
    lwz 3, 0x290(31)
    addis 0, 3, 0x0
    cmplwi 0, 0xffff
    .4byte 0x40820018 # bne .L_80330FD8
    lfs 1, 0x2c0(31)
    .4byte 0xC802EF60 # lfd f0, lbl_80541F00@sda21(r0)
    fadd 0, 1, 0
    frsp 0, 0
    stfs 0, 0x2c0(31)
L_80330FD8:
    .4byte 0xC022EF4C # lfs f1, lbl_80541EEC@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80330FF8
    clrlwi. 0, 27, 24
    .4byte 0x41820428 # beq .L_8033141C
L_80330FF8:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800041C # b .L_8033141C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820188 # bne .L_80331194
    lwz 27, 0x4(31)
    lwz 3, 0x25c(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x408200C0 # bne .L_803310E0
    lwz 3, 0x25c(31)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_803310E0
    lwz 3, 0x25c(31)
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x408200A0 # bne .L_803310E0
    lwz 3, 0x25c(31)
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820090 # bne .L_803310E0
    lwz 3, 0x25c(31)
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x40820080 # bne .L_803310E0
    lwz 3, 0x25c(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    lwz 3, 0x25c(31)
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fsubs 31, 0, 1
    fmuls 0, 31, 31
    fmadds 1, 30, 30, 0
    bl fn_80154378
    stfs 1, 0x44(1)
    fneg 1, 30
    lis 3, lbl_80534C00@ha
    fneg 2, 31
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002EF18 # lfs f0, lbl_80541EB8@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    sth 0, 0x29e(31)
    lwz 0, 0x25c(31)
    stw 0, 0x3c(1)
    lhz 3, 0x29e(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x40(1)
    .4byte 0x4800000C # b .L_803310E8
L_803310E0:
    li 0, -0x1
    stw 0, 0x40(1)
L_803310E8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF5C # lfs f2, lbl_80541EFC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 3, 0x5c(1)
    addi 0, 3, 0x2
    stw 0, 0x238(31)
    lwz 3, 0x3c(1)
    lwz 0, 0x25c(31)
    cmpw 3, 0
    .4byte 0x41820048 # beq .L_80331194
    lfs 1, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC042EF18 # lfs f2, lbl_80541EB8@sda21(r0)
    li 0, 0x1
    .4byte 0xC002EF58 # lfs f0, lbl_80541EF8@sda21(r0)
    fmuls 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x58(1)
    lwz 3, 0x5c(1)
    sth 3, 0x29e(31)
    stw 0, 0x40(1)
    stfs 0, 0x44(1)
L_80331194:
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_80331244
    lwz 27, 0x4(31)
    lwz 3, 0x25c(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x4182006C # beq .L_80331228
    lwz 3, 0x25c(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    lwz 3, 0x25c(31)
    bl fn_8023DE58
    mr 27, 3
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_803311EC
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_803311F0
L_803311EC:
    addi 4, 3, 0xdc
L_803311F0:
    lfs 1, 0x0(4)
    li 3, 0x1
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 0, 0x0
    stfs 1, 0xc(31)
    lfs 1, 0x4(4)
    stfs 1, 0x10(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 3, 0x238(31)
    sth 0, 0x29c(31)
    sth 0, 0x29e(31)
    .4byte 0x48000020 # b .L_80331244
L_80331228:
    lwz 3, 0x25c(31)
    bl fn_80236B50
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80331244
    li 0, 0x0
    stb 0, 0x11c(31)
L_80331244:
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80331264
    lhz 4, 0x29e(31)
    addi 3, 31, 0x29c
    li 5, 0x1
    li 6, 0x1000
    bl fn_801F714C
L_80331264:
    li 0, 0x2710
    stw 0, 0x23c(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_803312B4
    lhz 0, 0x29c(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022EF2C # lfs f1, lbl_80541ECC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x2b8(31)
    lhz 0, 0x29c(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x2bc(31)
    .4byte 0x48000010 # b .L_803312C0
L_803312B4:
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
L_803312C0:
    lfs 1, 0x2b8(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_803312E0
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_803312E8
L_803312E0:
    li 0, 0x1
    stw 0, 0x98(31)
L_803312E8:
    lwz 0, 0x40(1)
    cmpwi 0, 0x0
    .4byte 0x41800088 # blt .L_80331378
    lfs 1, 0x44(1)
    .4byte 0xC002EF4C # lfs f0, lbl_80541EEC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820074 # bne .L_80331378
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_80331358
    lwz 27, 0x298(31)
    cmpwi 27, 0x64
    .4byte 0x40800018 # bge .L_80331338
    lwz 3, 0x25c(31)
    bl fn_8022F340
    mr 4, 27
    bl fn_802362C4
    .4byte 0x48000040 # b .L_80331374
L_80331338:
    lwz 3, 0x25c(31)
    bl fn_8022F340
    mr 4, 3
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 27
    li 6, 0x0
    bl fn_8043D874
    .4byte 0x48000020 # b .L_80331374
L_80331358:
    lwz 3, 0x25c(31)
    li 5, 0x0
    lwz 4, 0x298(31)
    bl fn_80236554
    lwz 3, 0x25c(31)
    li 4, 0x9
    bl fn_80230EB8
L_80331374:
    li 30, 0x1
L_80331378:
    cmpwi 30, 0x0
    .4byte 0x418200A0 # beq .L_8033141C
    li 3, 0xa
    li 0, 0x1e
    stw 3, 0x230(31)
    stw 0, 0x248(31)
    .4byte 0x4800008C # b .L_8033141C
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x14(31)
    lwz 3, 0x25c(31)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803313E0
    lwz 3, 0x25c(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    lwz 3, 0x25c(31)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC002EF68 # lfs f0, lbl_80541F08@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
L_803313E0:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_8033141C
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000028 # b .L_8033141C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4181001C # bgt .L_8033141C
    psq_l 1, 0x2c4(31), 0, 0
    li 0, 0x8
    lfs 0, 0x2cc(31)
    psq_st 1, 0x2b8(31), 0, 0
    stfs 0, 0x2c0(31)
    stw 0, 0x230(31)
L_8033141C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_80331470
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80331470
    li 0, 0x8
    stw 0, 0x234(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80331450
    li 0, 0x4
    stw 0, 0x234(31)
L_80331450:
    lwz 4, 0x254(31)
    mr 3, 31
    addi 0, 4, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    clrlwi 0, 0, 30
    stw 0, 0x254(31)
    bl fn_803319B8
L_80331470:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820128 # beq .L_803315A0
    cmpwi 0, 0x1
    .4byte 0x41820120 # beq .L_803315A0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820114 # bne .L_803315A0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lbz 0, 0xc4(31)
    li 26, 0x0
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_803314BC
    li 26, 0x1
    .4byte 0x48000068 # b .L_80331520
L_803314BC:
    lwz 3, 0xc8(31)
    mr 27, 3
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803314E0
    lwz 3, 0xc8(31)
    bl fn_8022F3DC
    mr 27, 3
L_803314E0:
    mr 3, 27
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_803314F8
    li 26, 0x1
    .4byte 0x4800002C # b .L_80331520
L_803314F8:
    lwz 3, 0xc8(31)
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082001C # bne .L_80331520
    lwz 3, 0xc8(31)
    bl fn_8022F478
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80331520
    li 26, 0x1
L_80331520:
    clrlwi 0, 26, 24
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_80331598
    lwz 0, 0x290(31)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_80331544
    lbz 0, 0x2a1(31)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80331570
L_80331544:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0xd2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80331598
L_80331570:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0x348
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80331598:
    li 0, 0x1e
    stw 0, 0x24c(31)
L_803315A0:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803315B4
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_803315B4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803315C8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_803315C8:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803315DC
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_803315DC:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803315F0
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_803315F0:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80331604
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80331604:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80331618
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80331618:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8033162C
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_8033162C:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80331640
    subi 0, 3, 0x1
    stw 0, 0x250(31)
L_80331640:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    lmw 26, 0x68(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80331664:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 4
    lwz 29, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 28
    lbz 0, 0x1(3)
    mr 5, 31
    mr 6, 29
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803316D0
    li 3, 0x1
    .4byte 0x480002CC # b .L_80331998
L_803316D0:
    .4byte 0xC022EF6C # lfs f1, lbl_80541F0C@sda21(r0)
    mr 3, 31
    mr 4, 28
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803316F0
    li 3, 0x1
    .4byte 0x480002AC # b .L_80331998
L_803316F0:
    mr 3, 31
    mr 4, 28
    bl fn_80226850
    clrlwi 29, 3, 16
    cmpwi 29, 0x19c
    .4byte 0x4182000C # beq .L_80331710
    cmpwi 29, 0x19d
    .4byte 0x4082000C # bne .L_80331718
L_80331710:
    li 3, 0x1
    .4byte 0x48000284 # b .L_80331998
L_80331718:
    mr 3, 31
    mr 4, 28
    bl fn_8022461C
    clrlwi 3, 3, 16
    cmpwi 3, 0x20
    .4byte 0x4082001C # bne .L_80331748
    lfs 1, 0x14(30)
    .4byte 0xC002EF5C # lfs f0, lbl_80541EFC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80331748
    li 3, 0x0
    .4byte 0x48000254 # b .L_80331998
L_80331748:
    subi 0, 3, 0x10
    cmplwi 0, 0x6
    .4byte 0x4081000C # ble .L_8033175C
    cmpwi 3, 0x17
    .4byte 0x40820024 # bne .L_8033177C
L_8033175C:
    lfs 1, 0x14(30)
    .4byte 0xC002EF5C # lfs f0, lbl_80541EFC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8033177C
    li 0, 0x12c
    li 3, 0x0
    stw 0, 0x270(30)
    .4byte 0x48000220 # b .L_80331998
L_8033177C:
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_80331794
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 3, 0x0
    stfs 0, 0x2b4(30)
    .4byte 0x48000208 # b .L_80331998
L_80331794:
    cmpwi 3, 0x3
    li 0, 0x0
    .4byte 0x40820014 # bne .L_803317B0
    cmpwi 29, 0xc
    .4byte 0x4182000C # beq .L_803317B0
    li 0, 0x0
    .4byte 0x480001C0 # b .L_8033196C
L_803317B0:
    cmpwi 3, 0x27
    .4byte 0x418201B8 # beq .L_8033196C
    cmpwi 3, 0x2
    .4byte 0x418201B0 # beq .L_8033196C
    cmpwi 3, 0x39
    .4byte 0x418201A8 # beq .L_8033196C
    cmpwi 3, 0x28
    .4byte 0x40820030 # bne .L_803317FC
    lfs 0, 0x4(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    slwi 4, 5, 28
    srwi 5, 5, 31
    subf 4, 5, 4
    rotlwi 4, 4, 4
    add 4, 4, 5
    cmpwi 4, 0x4
    .4byte 0x41810174 # bgt .L_8033196C
L_803317FC:
    cmpwi 3, 0x29
    .4byte 0x40820030 # bne .L_80331830
    lfs 0, 0x4(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    slwi 4, 5, 28
    srwi 5, 5, 31
    subf 4, 5, 4
    rotlwi 4, 4, 4
    add 4, 4, 5
    cmpwi 4, 0xc
    .4byte 0x41800140 # blt .L_8033196C
L_80331830:
    cmpwi 3, 0x2c
    .4byte 0x40820030 # bne .L_80331864
    lfs 0, 0x4(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    slwi 4, 5, 28
    srwi 5, 5, 31
    subf 4, 5, 4
    rotlwi 4, 4, 4
    add 4, 4, 5
    cmpwi 4, 0x4
    .4byte 0x4181010C # bgt .L_8033196C
L_80331864:
    cmpwi 3, 0x2d
    .4byte 0x40820030 # bne .L_80331898
    lfs 0, 0x4(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    slwi 4, 5, 28
    srwi 5, 5, 31
    subf 4, 5, 4
    rotlwi 4, 4, 4
    add 4, 4, 5
    cmpwi 4, 0xc
    .4byte 0x418000D8 # blt .L_8033196C
L_80331898:
    cmpwi 3, 0x2a
    .4byte 0x40820030 # bne .L_803318CC
    lfs 0, 0x0(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    slwi 4, 5, 28
    srwi 5, 5, 31
    subf 4, 5, 4
    rotlwi 4, 4, 4
    add 4, 4, 5
    cmpwi 4, 0x4
    .4byte 0x418100A4 # bgt .L_8033196C
L_803318CC:
    cmpwi 3, 0x2b
    .4byte 0x40820030 # bne .L_80331900
    lfs 0, 0x0(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    slwi 4, 5, 28
    srwi 5, 5, 31
    subf 4, 5, 4
    rotlwi 4, 4, 4
    add 4, 4, 5
    cmpwi 4, 0xc
    .4byte 0x41800070 # blt .L_8033196C
L_80331900:
    cmpwi 3, 0x2e
    .4byte 0x40820030 # bne .L_80331934
    lfs 0, 0x0(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    slwi 4, 5, 28
    srwi 5, 5, 31
    subf 4, 5, 4
    rotlwi 4, 4, 4
    add 4, 4, 5
    cmpwi 4, 0x4
    .4byte 0x4181003C # bgt .L_8033196C
L_80331934:
    cmpwi 3, 0x2f
    .4byte 0x40820030 # bne .L_80331968
    lfs 0, 0x0(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0xc
    .4byte 0x41800008 # blt .L_8033196C
L_80331968:
    li 0, 0x1
L_8033196C:
    lwz 3, 0x270(30)
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_80331994
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8033198C
    subi 0, 3, 0x1
    stw 0, 0x270(30)
L_8033198C:
    li 3, 0x0
    .4byte 0x48000008 # b .L_80331998
L_80331994:
    clrlwi 3, 0, 24
L_80331998:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803319B8:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_80471A68@ha
    stw 0, 0x24(1)
    addi 5, 4, lbl_80471A68@l
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x98(3)
    addi 3, 1, 0x8
    lwz 8, 0x0(5)
    lwz 7, 0x4(5)
    clrlslwi 4, 0, 31, 1
    lwz 6, 0x8(5)
    lwz 5, 0xc(5)
    lwz 0, 0x254(31)
    stw 8, 0x8(1)
    slwi 0, 0, 2
    stw 7, 0xc(1)
    stw 6, 0x10(1)
    stw 5, 0x14(1)
    lwzx 0, 3, 0
    add 0, 4, 0
    stw 0, 0x264(31)
    lwz 3, 0x230(31)
    cmpwi 3, 0x9
    .4byte 0x40820034 # bne .L_80331A50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80331A40
    lwz 3, 0x264(31)
    addi 0, 3, 0x4
    stw 0, 0x264(31)
    .4byte 0x480000F0 # b .L_80331B2C
L_80331A40:
    lwz 3, 0x264(31)
    addi 0, 3, 0x8
    stw 0, 0x264(31)
    .4byte 0x480000E0 # b .L_80331B2C
L_80331A50:
    lbz 0, 0x2a3(31)
    cmplwi 0, 0x1
    .4byte 0x408200D4 # bne .L_80331B2C
    lbz 0, 0x2a8(31)
    cmplwi 0, 0x0
    .4byte 0x408200C8 # bne .L_80331B2C
    lfs 1, 0x14(31)
    .4byte 0xC002EF5C # lfs f0, lbl_80541EFC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4181000C # bgt .L_80331A80
    cmpwi 3, 0x1
    .4byte 0x408200B0 # bne .L_80331B2C
L_80331A80:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80331AC0
    lwz 0, 0x98(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_80331AA4
    li 0, 0xd
    stw 0, 0x264(31)
    .4byte 0x4800000C # b .L_80331AAC
L_80331AA4:
    li 0, 0xc
    stw 0, 0x264(31)
L_80331AAC:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
L_80331AC0:
    lwz 0, 0x254(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820064 # bne .L_80331B2C
    lbz 0, 0x2a1(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80331B04
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0x348
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80331B2C
L_80331B04:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0xd2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80331B2C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80331B40:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x2a3(3)
    cmplwi 0, 0x1
    .4byte 0x408200B4 # bne .L_80331C10
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40820058 # bne .L_80331BC0
    lwz 3, 0x2fc(31)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_80331BA8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0x116
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2fc(31)
    .4byte 0x4800006C # b .L_80331C10
L_80331BA8:
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x3
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x48000054 # b .L_80331C10
L_80331BC0:
    lwz 5, 0x2fc(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80331BE8
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2fc(31)
L_80331BE8:
    lwz 5, 0x300(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80331C10
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x300(31)
L_80331C10:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80331C24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x290(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80331C4C
    cmpwi 0, 0x6
    .4byte 0x408200DC # bne .L_80331D24
L_80331C4C:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x39
    .4byte 0x4082009C # bne .L_80331CFC
    lwz 3, 0x230(31)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_80331C7C
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80331C84
L_80331C7C:
    cmpwi 3, 0x1
    .4byte 0x4082007C # bne .L_80331CFC
L_80331C84:
    lfs 1, 0x14(31)
    .4byte 0xC002EF48 # lfs f0, lbl_80541EE8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080006C # bge .L_80331CFC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x7f
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x2f8(31)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_80331CE4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0x4d2
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2f8(31)
    .4byte 0x48000044 # b .L_80331D24
L_80331CE4:
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x3
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x4800002C # b .L_80331D24
L_80331CFC:
    lwz 5, 0x2f8(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80331D24
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2f8(31)
L_80331D24:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80331D38:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002EF5C # lfs f0, lbl_80541EFC@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lfs 1, 0x14(3)
    fcmpo cr0, 1, 0
    .4byte 0x408000F8 # bge .L_80331E54
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x408100EC # ble .L_80331E54
    lfs 1, 0x60(30)
    li 31, 0x0
    stfs 1, 0x8(1)
    lfs 4, 0x64(30)
    stfs 4, 0xc(1)
    lfs 2, 0x68(30)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(30)
    stfs 3, 0x14(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(30)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
L_80331DB8:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80331E48
    lwz 5, 0x4(30)
    mr 3, 31
    addi 4, 1, 0x8
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_80331E48
    lwz 4, 0x198(30)
    mr 3, 31
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_80331E48
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 4, 0x0
    li 3, 0x2
    li 0, 0x3
    stfs 0, 0x14(30)
    stw 4, 0x258(30)
    stw 4, 0x238(30)
    stw 4, 0x240(30)
    stfs 0, 0x2b8(30)
    stfs 0, 0x2bc(30)
    stfs 0, 0x2c0(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    lwz 4, 0xc8(30)
    stw 4, 0x25c(30)
    stw 3, 0xb8(30)
    stw 0, 0x230(30)
    .4byte 0x48000010 # b .L_80331E54
L_80331E48:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF68 # blt .L_80331DB8
L_80331E54:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80331E6C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr 31, 3
    lbz 0, 0x2a4(3)
    cmplwi 0, 0x1
    .4byte 0x40820454 # bne .L_803322DC
    lwz 0, 0x230(31)
    li 27, -0x1
    li 26, -0x1
    cmpwi 0, 0x3
    .4byte 0x418204C8 # beq .L_80332364
    bl SpatialRegistry_GetBase
    lwz 29, 0x1008(3)
    li 25, 0x0
    li 28, 0x0
    .4byte 0x4800011C # b .L_80331FCC
L_80331EB4:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 30, 3, 0
    cmplwi 30, 0x0
    .4byte 0x41820100 # beq .L_80331FC4
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x5741
    cmplwi 0, 0x5250
    .4byte 0x41820010 # beq .L_80331EE4
    subis 0, 3, 0x4349
    cmplwi 0, 0x5243
    .4byte 0x408200E4 # bne .L_80331FC4
L_80331EE4:
    lwz 3, 0x4(31)
    lwz 0, 0x4(30)
    cmpw 3, 0
    .4byte 0x408200D4 # bne .L_80331FC4
    lfs 3, 0xc(30)
    lfs 0, 0xc(31)
    lfs 2, 0x10(30)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 3, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80331F2C
    .4byte 0x48000028 # b .L_80331F50
L_80331F2C:
    frsqrte 4, 3
    .4byte 0xC042EF44 # lfs f2, lbl_80541EE4@sda21(r0)
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 3, 1, 0
    fmuls 0, 2, 0
    fmuls 3, 3, 0
L_80331F50:
    .4byte 0xC002EF70 # lfs f0, lbl_80541F10@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x4080006C # bge .L_80331FC4
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x5741
    cmplwi 0, 0x5250
    .4byte 0x40820048 # bne .L_80331FB0
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_80331FA8
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80331FC4
L_80331FA8:
    lwz 27, 0x198(30)
    .4byte 0x48000028 # b .L_80331FD4
L_80331FB0:
    lbz 0, 0x262(30)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80331FC4
    lwz 26, 0x198(30)
    .4byte 0x48000014 # b .L_80331FD4
L_80331FC4:
    addi 28, 28, 0x4
    addi 25, 25, 0x1
L_80331FCC:
    cmpw 25, 29
    .4byte 0x4180FEE4 # blt .L_80331EB4
L_80331FD4:
    cmpwi 27, 0x0
    .4byte 0x4080000C # bge .L_80331FE4
    cmpwi 26, 0x0
    .4byte 0x41800384 # blt .L_80332364
L_80331FE4:
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    cmpwi 27, 0x0
    li 5, 0x0
    li 25, 0x0
    stfs 0, 0x10(1)
    stfs 0, 0xc(1)
    stfs 0, 0x8(1)
    .4byte 0x4180006C # blt .L_8033206C
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820350 # beq .L_80332364
    psq_l 1, 0x238(30), 0, 0
    lfs 0, 0x240(30)
    psq_st 1, 0x8(1), 0, 0
    lwz 29, 0x4(31)
    stfs 0, 0x10(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8033204C
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
L_8033204C:
    lwz 4, 0x90(30)
    extrwi. 3, 4, 3, 5
    addi 0, 3, 0x7
    .4byte 0x40820008 # bne .L_80332060
    mr 0, 3
L_80332060:
    mr 5, 0
    clrlwi 25, 4, 25
    .4byte 0x48000070 # b .L_803320D8
L_8033206C:
    cmpwi 26, 0x0
    .4byte 0x40810068 # ble .L_803320D8
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x418202E0 # beq .L_80332364
    psq_l 1, 0x268(30), 0, 0
    lfs 0, 0x270(30)
    psq_st 1, 0x8(1), 0, 0
    lwz 29, 0x4(31)
    stfs 0, 0x10(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_803320BC
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
L_803320BC:
    lwz 0, 0x90(30)
    extrwi. 3, 0, 3, 5
    addi 0, 3, 0x7
    .4byte 0x40820008 # bne .L_803320D0
    mr 0, 3
L_803320D0:
    mr 5, 0
    li 25, 0x6
L_803320D8:
    cmpwi 25, 0x6
    .4byte 0x41820024 # beq .L_80332100
    cmpwi 25, 0x14
    .4byte 0x4182001C # beq .L_80332100
    cmpwi 25, 0x4
    .4byte 0x41820014 # beq .L_80332100
    cmpwi 25, 0x20
    .4byte 0x4182000C # beq .L_80332100
    cmpwi 25, 0x24
    .4byte 0x4082001C # bne .L_80332118
L_80332100:
    lfs 1, 0x14(31)
    .4byte 0xC002EF5C # lfs f0, lbl_80541EFC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082009C # bne .L_803321AC
    .4byte 0x48000250 # b .L_80332364
L_80332118:
    cmpwi 25, 0x0
    .4byte 0x4182001C # beq .L_80332138
    cmpwi 25, 0x3
    .4byte 0x41820014 # beq .L_80332138
    cmpwi 25, 0x15
    .4byte 0x4182000C # beq .L_80332138
    cmpwi 25, 0x23
    .4byte 0x40820018 # bne .L_8033214C
L_80332138:
    lfs 1, 0x40(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4182021C # beq .L_80332364
L_8033214C:
    cmpwi 25, 0x1
    .4byte 0x4182000C # beq .L_8033215C
    cmpwi 25, 0x2
    .4byte 0x40820018 # bne .L_80332170
L_8033215C:
    lfs 1, 0x40(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x418201F8 # beq .L_80332364
L_80332170:
    cmpwi 25, 0x17
    .4byte 0x40820018 # bne .L_8033218C
    lfs 1, 0x3c(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x418201DC # beq .L_80332364
L_8033218C:
    cmpwi 25, 0x18
    .4byte 0x4082001C # bne .L_803321AC
    lfs 1, 0x3c(31)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_803321AC
    .4byte 0x480001BC # b .L_80332364
L_803321AC:
    psq_l 1, 0x8(1), 0, 0
    li 4, 0x14
    lfs 0, 0x10(1)
    li 0, 0x0
    psq_st 1, 0xc(31), 0, 0
    addi 3, 31, 0x2b8
    stfs 0, 0x14(31)
    stw 5, 0x4(31)
    stw 4, 0x284(31)
    psq_st 1, 0x2e8(31), 0, 0
    stfs 0, 0x2f0(31)
    psq_st 1, 0x2d0(31), 0, 0
    stfs 0, 0x2d8(31)
    stb 0, 0x2a4(31)
    stb 0, 0x2a5(31)
    bl PSVECMag
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80332200
    fmr 1, 0
    .4byte 0x48000014 # b .L_80332210
L_80332200:
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_80332210
    fmr 1, 0
L_80332210:
    .4byte 0xC002EF44 # lfs f0, lbl_80541EE4@sda21(r0)
    cmpwi 25, 0x6
    fmuls 2, 1, 0
    .4byte 0x41820038 # beq .L_80332254
    cmpwi 25, 0x14
    .4byte 0x41820030 # beq .L_80332254
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 3, 0x14
    li 0, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2c0(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2b8(31)
    stw 3, 0x238(31)
    stw 0, 0x258(31)
L_80332254:
    cmpwi 25, 0x3
    .4byte 0x41820030 # beq .L_80332288
    .4byte 0x40800014 # bge .L_80332270
    cmpwi 25, 0x0
    .4byte 0x41820024 # beq .L_80332288
    .4byte 0x40800034 # bge .L_8033229C
    .4byte 0x48000058 # b .L_803322C4
L_80332270:
    cmpwi 25, 0x18
    .4byte 0x41820040 # beq .L_803322B4
    .4byte 0x4080004C # bge .L_803322C4
    cmpwi 25, 0x17
    .4byte 0x40800028 # bge .L_803322A8
    .4byte 0x48000040 # b .L_803322C4
L_80332288:
    fneg 2, 2
    fneg 0, 1
    stfs 2, 0x40(31)
    stfs 0, 0x2bc(31)
    .4byte 0x4800002C # b .L_803322C4
L_8033229C:
    stfs 2, 0x40(31)
    stfs 1, 0x2bc(31)
    .4byte 0x48000020 # b .L_803322C4
L_803322A8:
    stfs 2, 0x3c(31)
    stfs 1, 0x2b8(31)
    .4byte 0x48000014 # b .L_803322C4
L_803322B4:
    fneg 2, 2
    fneg 0, 1
    stfs 2, 0x3c(31)
    stfs 0, 0x2b8(31)
L_803322C4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40810098 # ble .L_80332364
    li 0, 0x14
    stw 0, 0x23c(31)
    .4byte 0x4800008C # b .L_80332364
L_803322DC:
    lwz 3, 0x284(31)
    subi 0, 3, 0x1
    stw 0, 0x284(31)
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x41810074 # bgt .L_80332364
    lfs 3, 0x2e8(31)
    lfs 0, 0xc(31)
    lfs 2, 0x2ec(31)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 3, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8033232C
    .4byte 0x48000028 # b .L_80332350
L_8033232C:
    frsqrte 4, 3
    .4byte 0xC042EF44 # lfs f2, lbl_80541EE4@sda21(r0)
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 3, 1, 0
    fmuls 0, 2, 0
    fmuls 3, 3, 0
L_80332350:
    .4byte 0xC002EF70 # lfs f0, lbl_80541F10@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x4081000C # ble .L_80332364
    li 0, 0x1
    stb 0, 0x2a4(31)
L_80332364:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80332378:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 5, 0x0
    stw 0, 0x34(1)
    addi 4, 1, 0x8
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    stfs 0, 0x10(1)
    stfs 0, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_801F2618
    clrlwi 0, 3, 24
    mr 31, 3
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803323FC
    mr 3, 30
    bl fn_801F11B4
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x408200A8 # bne .L_80332488
    lfs 1, 0xc(1)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80332488
    stfs 0, 0x2bc(30)
    .4byte 0x48000090 # b .L_80332488
L_803323FC:
    lwz 3, 0x270(30)
    cmpwi 3, 0x0
    .4byte 0x40810044 # ble .L_80332448
    lwz 0, 0x274(30)
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80332424
    stw 3, 0x274(30)
    li 0, 0x5
    stw 0, 0x278(30)
    .4byte 0x48000028 # b .L_80332448
L_80332424:
    lwz 3, 0x278(30)
    subi 0, 3, 0x1
    stw 0, 0x278(30)
    lwz 0, 0x278(30)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_80332448
    li 0, 0x0
    stw 0, 0x270(30)
    stw 0, 0x274(30)
L_80332448:
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80332488
    lbz 0, 0x2a9(30)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80332488
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    lfs 0, 0x2b4(30)
    fcmpu cr0, 1, 0
    .4byte 0x4082000C # bne .L_80332488
    stfs 1, 0x40(30)
    stfs 1, 0x2bc(30)
L_80332488:
    lwz 0, 0x34(1)
    mr 3, 31
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803324A8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    li 4, -0x1
    li 0, 0x0
    stw 4, 0x20(1)
    mr 31, 3
    stfs 0, 0x24(1)
    sth 0, 0x8(1)
    lwz 0, 0x290(3)
    cmpwi 0, 0x6
    .4byte 0x408201E0 # bne .L_803326C8
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x408201D4 # bne .L_803326C8
    lfs 1, 0x14(31)
    .4byte 0xC002EF5C # lfs f0, lbl_80541EFC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408001C4 # bge .L_803326C8
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x418101B8 # bgt .L_803326C8
    lwz 4, 0x198(31)
    addi 6, 1, 0x20
    addi 7, 1, 0x24
    li 5, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lfs 1, 0x24(1)
    .4byte 0xC002EF38 # lfs f0, lbl_80541ED8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800180 # bge .L_803326C0
    lwz 0, 0x20(1)
    cmpwi 0, 0x0
    .4byte 0x41800174 # blt .L_803326C0
    lbz 0, 0x2a2(31)
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_803325B8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF74 # lfs f2, lbl_80541F14@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    addi 0, 3, 0xc8
    stw 0, 0x240(31)
    .4byte 0x4800005C # b .L_80332610
L_803325B8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF78 # lfs f2, lbl_80541F18@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    addi 0, 3, 0x64
    stw 0, 0x240(31)
L_80332610:
    lbz 0, 0x2a1(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80332648
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0x348
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80332670
L_80332648:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0xd2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80332670:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x0
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    stw 3, 0x238(31)
    li 0, 0x1
    stw 3, 0x258(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x2dc(31), 0, 0
    stfs 0, 0x2e4(31)
    lwz 3, 0x4(31)
    stw 3, 0x294(31)
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_803326C8
L_803326C0:
    li 0, 0x0
    stw 0, 0x280(31)
L_803326C8:
    lwz 0, 0x290(31)
    cmpwi 0, 0x6
    .4byte 0x40820370 # bne .L_80332A40
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40820364 # bne .L_80332A40
    lwz 3, 0x280(31)
    addi 0, 3, 0x1
    stw 0, 0x280(31)
    lwz 3, 0x240(31)
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add. 0, 0, 3
    .4byte 0x40820074 # bne .L_80332778
    lwz 0, 0x290(31)
    cmpwi 0, 0x6
    .4byte 0x40820068 # bne .L_80332778
    lfs 3, 0xc(31)
    lfs 2, 0x2dc(31)
    lfs 1, 0x10(31)
    lfs 0, 0x2e0(31)
    fsubs 2, 3, 2
    lwz 0, 0x4(31)
    fsubs 0, 1, 0
    stw 0, 0x294(31)
    fmuls 1, 2, 2
    psq_l 3, 0xc(31), 0, 0
    fmuls 0, 0, 0
    lfs 2, 0x14(31)
    psq_st 3, 0x2dc(31), 0, 0
    fadds 1, 1, 0
    stfs 2, 0x2e4(31)
    lwz 3, 0x294(31)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x40820010 # bne .L_8033276C
    .4byte 0xC002EF7C # lfs f0, lbl_80541F1C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_80332778
L_8033276C:
    li 0, 0x0
    stw 0, 0x280(31)
    .4byte 0x480002CC # b .L_80332A40
L_80332778:
    lbz 3, 0x2a3(31)
    cmplwi 3, 0x1
    .4byte 0x40820010 # bne .L_80332790
    lwz 0, 0x280(31)
    cmpwi 0, 0xa
    .4byte 0x40800018 # bge .L_803327A4
L_80332790:
    cmplwi 3, 0x0
    .4byte 0x408202AC # bne .L_80332A40
    lwz 0, 0x280(31)
    cmpwi 0, 0x2d
    .4byte 0x418002A0 # blt .L_80332A40
L_803327A4:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x20
    addi 7, 1, 0x24
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x20(1)
    cmpwi 0, 0x0
    .4byte 0x41800268 # blt .L_80332A38
    lbz 0, 0x2a3(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803327F0
    lfs 1, 0x24(1)
    .4byte 0xC002EF40 # lfs f0, lbl_80541EE0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4180001C # blt .L_80332808
L_803327F0:
    cmplwi 0, 0x1
    .4byte 0x40820244 # bne .L_80332A38
    lfs 1, 0x24(1)
    .4byte 0xC002EF80 # lfs f0, lbl_80541F20@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800234 # bge .L_80332A38
L_80332808:
    li 0, 0x32
    stw 0, 0x238(31)
    lbz 0, 0x2a2(31)
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_80332878
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF74 # lfs f2, lbl_80541F14@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    addi 0, 3, 0xc8
    stw 0, 0x240(31)
    .4byte 0x4800005C # b .L_803328D0
L_80332878:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF78 # lfs f2, lbl_80541F18@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    addi 0, 3, 0x64
    stw 0, 0x240(31)
L_803328D0:
    lbz 0, 0x2a1(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80332908
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0x348
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80332930
L_80332908:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0xd2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80332930:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lbz 0, 0x2a3(31)
    .4byte 0xC3E2EF30 # lfs f31, lbl_80541ED0@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80332958
    .4byte 0xC3E2EF48 # lfs f31, lbl_80541EE8@sda21(r0)
L_80332958:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80332984
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    lfs 0, 0x2b4(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082009C # bne .L_80332A1C
L_80332984:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    lwz 5, 0xb4(6)
    addi 0, 4, 0x660d
    .4byte 0xC042EF30 # lfs f2, lbl_80541ED0@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    mullw 4, 5, 0
    .4byte 0xC062EF84 # lfs f3, lbl_80541F24@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lhz 4, 0x8(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 1
    fmsubs 0, 2, 0, 1
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    add 4, 4, 0
    rlwinm 0, 4, 30, 18, 28
    sth 4, 0x8(1)
    lfsx 0, 3, 0
    fmuls 0, 31, 0
    stfs 0, 0x2b8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 31, 0
    stfs 0, 0x2bc(31)
    .4byte 0x48000020 # b .L_80332A38
L_80332A1C:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 31, 0
    stfs 0, 0x2b8(31)
L_80332A38:
    li 0, 0x0
    stw 0, 0x280(31)
L_80332A40:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80332A60:
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
    stw 28, 0x40(1)
    mr 30, 3
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4082059C # bne .L_80333040
    lwz 0, 0x284(30)
    cmpwi 0, 0x0
    .4byte 0x41810590 # bgt .L_80333040
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x40820584 # bne .L_80333040
    lis 3, 0x4
    addi 0, 3, 0x1302
    stw 0, 0xb0(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x40810564 # ble .L_80333038
    lfs 3, 0x60(30)
    li 31, 0x0
    li 29, 0x0
    stfs 3, 0x28(1)
    lfs 2, 0x64(30)
    stfs 2, 0x2c(1)
    lfs 1, 0x68(30)
    stfs 1, 0x30(1)
    lfs 4, 0x6c(30)
    stfs 4, 0x34(1)
    lfs 0, 0xc(30)
    stfs 0, 0x14(1)
    fadds 3, 3, 0
    fadds 1, 1, 0
    lfs 0, 0x10(30)
    fadds 2, 2, 0
    stfs 0, 0x18(1)
    fadds 0, 4, 0
    stfs 3, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(30)
    mr 4, 30
    .4byte 0xC022EF88 # lfs f1, lbl_80541F28@sda21(r0)
    bl fn_801F82CC
    mr. 28, 3
    .4byte 0x418000B4 # blt .L_80332BFC
    lwz 0, 0x198(30)
    cmpw 28, 0
    .4byte 0x418200A8 # beq .L_80332BFC
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    mr. 28, 3
    li 4, 0x0
    .4byte 0x40820008 # bne .L_80332B74
    .4byte 0x48000090 # b .L_80332C00
L_80332B74:
    lwz 3, 0x1a0(28)
    subis 0, 3, 0x464c
    cmplwi 0, 0x4d45
    .4byte 0x40820008 # bne .L_80332B88
    li 4, 0x1
L_80332B88:
    clrlwi. 0, 4, 24
    .4byte 0x41820060 # beq .L_80332BEC
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    mr 3, 28
    addi 4, 1, 0x1c
    stfs 0, 0x24(1)
    stfs 0, 0x20(1)
    stfs 0, 0x1c(1)
    bl fn_801F3128
    addi 5, 1, 0x1c
    psq_l 0, 0x3c(28), 0, 0
    psq_l 2, 0x0(5), 0, 0
    mr 3, 30
    psq_l 1, 0x8(5), 1, 0
    li 6, 0x0
    ps_sub 0, 2, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(28), 1, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 4, 0x118(28)
    lwz 7, 0x168(28)
    lwz 8, 0x110(28)
    bl fn_801F37AC
    mr 29, 3
L_80332BEC:
    clrlwi. 0, 29, 24
    .4byte 0x4182000C # beq .L_80332BFC
    li 0, 0x1
    stb 0, 0x164(28)
L_80332BFC:
    mr 4, 29
L_80332C00:
    clrlwi. 0, 4, 24
    .4byte 0x4182000C # beq .L_80332C10
    li 31, 0x2
    .4byte 0x4800009C # b .L_80332CA8
L_80332C10:
    lis 4, 0x4e55
    lis 5, 0x464c
    mr 3, 30
    li 6, 0x0
    addi 4, 4, 0x4c4c
    addi 5, 5, 0x4d45
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_80332CA4
    mr 3, 30
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x40820064 # bne .L_80332CA4
    lwz 3, 0x198(30)
    addi 4, 1, 0x28
    addi 5, 1, 0x14
    bl Saya_ForceState2
    cmpwi 3, 0x0
    .4byte 0x4082004C # bne .L_80332CA4
    lwz 3, 0x198(30)
    addi 4, 1, 0x28
    addi 5, 1, 0x14
    bl Saya_ForceState4
    cmpwi 3, 0x0
    .4byte 0x40820034 # bne .L_80332CA4
    lwz 3, 0x198(30)
    addi 4, 1, 0x28
    addi 5, 1, 0x14
    bl Saya_ForceState3
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_80332CA4
    lwz 3, 0x198(30)
    addi 4, 1, 0x28
    addi 5, 1, 0x14
    bl Saya_ForceState1
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_80332CA8
L_80332CA4:
    li 31, 0x1
L_80332CA8:
    cmpwi 31, 0x0
    .4byte 0x4081038C # ble .L_80333038
    lbz 0, 0x2a2(30)
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_80332D18
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF74 # lfs f2, lbl_80541F14@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0xc8
    stw 0, 0x240(30)
    .4byte 0x4800005C # b .L_80332D70
L_80332D18:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF78 # lfs f2, lbl_80541F18@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0x64
    stw 0, 0x240(30)
L_80332D70:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80332D90
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_80332D9C
L_80332D90:
    lwz 3, 0x268(30)
    subi 0, 3, 0x1
    stw 0, 0x268(30)
L_80332D9C:
    lbz 0, 0x2a1(30)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80332DD4
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0x348
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80332DFC
L_80332DD4:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022EF1C # lfs f1, lbl_80541EBC@sda21(r0)
    li 5, 0xd2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80332DFC:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_80332E74
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF74 # lfs f2, lbl_80541F14@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 3, 0x3c(1)
    addi 0, 3, 0xc8
    stw 0, 0x240(30)
L_80332E74:
    cmpwi 31, 0x1
    .4byte 0x41820010 # beq .L_80332E88
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x408200D4 # bne .L_80332F58
L_80332E88:
    li 0, 0x0
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    stw 0, 0x238(30)
    addi 3, 30, 0x3c
    stw 0, 0x258(30)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
    bl PSVECMag
    .4byte 0xC002EF48 # lfs f0, lbl_80541EE8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810180 # ble .L_80333030
    psq_l 2, 0x3c(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x44(30)
    ps_mul 2, 2, 2
    .4byte 0xC022EF88 # lfs f1, lbl_80541F28@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80332F38
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80332EFC
    fmr 31, 4
    .4byte 0x48000028 # b .L_80332F20
L_80332EFC:
    frsqrte 3, 4
    .4byte 0xC042EF44 # lfs f2, lbl_80541EE4@sda21(r0)
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80332F20:
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
L_80332F38:
    .4byte 0xC3C2EF48 # lfs f30, lbl_80541EE8@sda21(r0)
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
    .4byte 0x480000DC # b .L_80333030
L_80332F58:
    lwz 4, 0x240(30)
    li 0, 0x0
    .4byte 0xC042EEFC # lfs f2, lbl_80541E9C@sda21(r0)
    lis 3, lbl_80539D44@ha
    stw 4, 0x238(30)
    .4byte 0xC022EF88 # lfs f1, lbl_80541F28@sda21(r0)
    stw 0, 0x258(30)
    stfs 2, 0x14(30)
    stfs 2, 0x44(30)
    psq_l 3, 0x3c(30), 0, 0
    lfs 0, 0x44(30)
    psq_st 3, 0x2b8(30), 0, 0
    stfs 0, 0x2c0(30)
    psq_l 3, 0x2b8(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    lfs 29, 0x2c0(30)
    fmuls 0, 1, 0
    ps_madd 4, 29, 29, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80333004
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80332FC8
    fmr 30, 4
    .4byte 0x48000028 # b .L_80332FEC
L_80332FC8:
    frsqrte 3, 4
    .4byte 0xC042EF44 # lfs f2, lbl_80541EE4@sda21(r0)
    .4byte 0xC002EF2C # lfs f0, lbl_80541ECC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_80332FEC:
    psq_l 1, 0x2b8(30), 0, 0
    psq_l 0, 0x2c0(30), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x2b8(30), 0, 0
    psq_st 0, 0x2c0(30), 1, 0
L_80333004:
    lbz 0, 0x2a3(30)
    .4byte 0xC3E2EF30 # lfs f31, lbl_80541ED0@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80333018
    .4byte 0xC3E2EF48 # lfs f31, lbl_80541EE8@sda21(r0)
L_80333018:
    psq_l 1, 0x2b8(30), 0, 0
    psq_l 0, 0x2c0(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x2b8(30), 0, 0
    psq_st 0, 0x2c0(30), 1, 0
L_80333030:
    li 0, 0x1
    stw 0, 0x230(30)
L_80333038:
    li 0, 0x1000
    stw 0, 0xb0(30)
L_80333040:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 0, 0x84(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80333078:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, -0x1
    stw 28, 0x10(1)
    mr 28, 3
    lwz 0, 0x16c(3)
    cmpwi 0, -0x1
    .4byte 0x41820084 # beq .L_80333128
    lis 30, 0x4e49
L_803330AC:
    bl SpatialRegistry_GetBase
    mr 5, 29
    addi 4, 30, 0x5741
    bl fn_801F78F4
    mr. 31, 3
    mr 29, 31
    .4byte 0x41800064 # blt .L_80333128
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x4182FFD4 # beq .L_803330AC
    lwz 3, 0x198(31)
    lwz 0, 0x198(28)
    cmpw 3, 0
    .4byte 0x4182FFC4 # beq .L_803330AC
    lwz 3, 0x16c(31)
    lwz 0, 0x16c(28)
    cmpw 3, 0
    .4byte 0x4082FFB4 # bne .L_803330AC
    .4byte 0xC022EF4C # lfs f1, lbl_80541EEC@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80333120
    lbz 0, 0xc4(31)
    cmplwi 0, 0x1
    .4byte 0x4082FF90 # bne .L_803330AC
L_80333120:
    li 0, 0x0
    stb 0, 0x11c(28)
L_80333128:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80333148:
    stwu 1, -0x30(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC022EF8C # lfs f1, lbl_80541F2C@sda21(r0)
    stw 0, 0x34(1)
    .4byte 0xC002EF90 # lfs f0, lbl_80541F30@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    sth 4, 0x8(1)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 4, 0x254(3)
    stw 4, 0x258(3)
    stw 4, 0x25c(3)
    stw 4, 0x260(3)
    stw 4, 0x234(3)
    stw 4, 0x238(3)
    stw 4, 0x23c(3)
    stw 4, 0x240(3)
    stw 4, 0x244(3)
    stw 4, 0x248(3)
    stw 4, 0x24c(3)
    stw 4, 0x250(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    sth 0, 0x94(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 22
    stw 0, 0x25c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 19
    stb 0, 0x2a1(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 18
    stb 0, 0x2a2(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 16
    stb 0, 0x2a3(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 17
    stb 0, 0x2a7(3)
    stb 4, 0x2a8(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8033322C
    li 0, 0x0
    stb 0, 0x2a7(31)
L_8033322C:
    li 9, 0x1
    lis 3, 0x19
    stb 9, 0x2a4(31)
    li 6, 0x3e8
    li 7, 0x0
    addi 5, 3, 0x660d
    stb 9, 0x2a5(31)
    li 4, 0xff
    .4byte 0xC042EF1C # lfs f2, lbl_80541EBC@sda21(r0)
    li 3, 0x32
    lwz 8, 0x90(31)
    li 0, 0xa
    .4byte 0xC082EF3C # lfs f4, lbl_80541EDC@sda21(r0)
    clrlwi 8, 8, 28
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    stw 8, 0x290(31)
    .4byte 0xC002EF20 # lfs f0, lbl_80541EC0@sda21(r0)
    lfs 3, 0xc(31)
    stfs 3, 0x2d0(31)
    lfs 3, 0x10(31)
    stfs 3, 0x2d4(31)
    lfs 3, 0x14(31)
    stfs 3, 0x2d8(31)
    stw 6, 0x108(31)
    stw 7, 0x264(31)
    stw 7, 0x26c(31)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 6, 0xb4(8)
    mullw 5, 6, 5
    addis 5, 5, 0x3c6f
    subi 5, 5, 0xca1
    stw 5, 0xb4(8)
    lwz 5, 0xb4(8)
    srwi 5, 5, 9
    oris 5, 5, 0x3f80
    stw 5, 0x14(1)
    lfs 3, 0x14(1)
    fsubs 2, 3, 2
    fmuls 2, 4, 2
    fctiwz 2, 2
    stfd 2, 0x20(1)
    lwz 5, 0x24(1)
    sth 5, 0x29c(31)
    sth 7, 0x29e(31)
    stb 4, 0x288(31)
    stfs 1, 0x2b0(31)
    stw 7, 0x2ac(31)
    stw 7, 0x298(31)
    stw 7, 0x270(31)
    stw 7, 0x274(31)
    stw 7, 0x278(31)
    stw 3, 0x27c(31)
    stw 7, 0x280(31)
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    psq_st 2, 0x2dc(31), 0, 0
    stfs 1, 0x2e4(31)
    lwz 3, 0x4(31)
    stw 3, 0x294(31)
    stw 0, 0x268(31)
    stw 7, 0x2f4(31)
    stw 7, 0x2f8(31)
    stw 7, 0x2fc(31)
    stw 7, 0x300(31)
    stb 9, 0x2a0(31)
    stb 9, 0x2a9(31)
    stfs 0, 0x2b4(31)
    stw 9, 0x28c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80333398
    li 0, 0x4
    stw 0, 0x28c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 5, 0x0
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x4081002C # ble .L_80333398
L_80333370:
    lbz 0, 0x83(4)
    sraw 0, 0, 5
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_80333390
    li 0, 0x0
    stb 0, 0x2a0(31)
    .4byte 0x4800000C # b .L_80333398
L_80333390:
    addi 5, 5, 0x2
    .4byte 0x4200FFDC # bdnz .L_80333370
L_80333398:
    li 3, 0x0
    .4byte 0xC022EEFC # lfs f1, lbl_80541E9C@sda21(r0)
    stb 3, 0x2a6(31)
    .4byte 0xC002EF94 # lfs f0, lbl_80541F34@sda21(r0)
    stfs 1, 0x2b8(31)
    stfs 1, 0x2bc(31)
    stfs 1, 0x2c0(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 1, 0x44(31)
    stfs 1, 0x2cc(31)
    stfs 1, 0x2c8(31)
    stfs 1, 0x2c4(31)
    stfs 0, 0x184(31)
    stw 3, 0x284(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x2e8(31), 0, 0
    stfs 0, 0x2f0(31)
    lwz 0, 0x290(31)
    cmpwi 0, 0x5
    .4byte 0x41820178 # beq .L_80333564
    .4byte 0x4080001C # bge .L_8033340C
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_8033343C
    .4byte 0x41800020 # blt .L_8033341C
    cmpwi 0, 0x4
    .4byte 0x40800144 # bge .L_80333548
    .4byte 0x48000028 # b .L_80333430
L_8033340C:
    cmpwi 0, 0x8
    .4byte 0x41820020 # beq .L_80333430
    .4byte 0x40800008 # bge .L_8033341C
    .4byte 0x4800019C # b .L_803335B4
L_8033341C:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x230(31)
    stw 0, 0xb8(31)
    .4byte 0x48000270 # b .L_8033369C
L_80333430:
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000264 # b .L_8033369C
L_8033343C:
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 10, 0x28c(31)
    addi 5, 1, 0x8
    addi 8, 1, 0x18
    li 6, 0x0
    li 7, 0x0
    li 9, 0x0
    bl fn_801EEC98
    li 0, 0xa
    stw 0, 0x240(31)
    lwz 0, 0x18(1)
    cmpwi 0, -0x1
    .4byte 0x40820064 # bne .L_803334D4
    bl GetRoomConfigRecord
    mr 4, 3
    lis 3, lbl_80534C00@ha
    lfs 4, 0xd4(4)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0xcc(4)
    lfs 6, 0xd8(4)
    lfs 0, 0xd0(4)
    fsubs 2, 1, 4
    .4byte 0xC0A2EF44 # lfs f5, lbl_80541EE4@sda21(r0)
    fsubs 1, 0, 6
    lfs 3, 0xc(31)
    fmadds 4, 5, 2, 4
    lfs 0, 0x10(31)
    fmadds 2, 5, 1, 6
    fsubs 1, 4, 3
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002EF18 # lfs f0, lbl_80541EB8@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    sth 0, 0x8(1)
L_803334D4:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042EF2C # lfs f2, lbl_80541ECC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002EEFC # lfs f0, lbl_80541E9C@sda21(r0)
    lfsx 1, 3, 0
    fmuls 1, 2, 1
    stfs 1, 0x2b8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmuls 1, 2, 1
    stfs 1, 0x2bc(31)
    lfs 1, 0x2b8(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_8033352C
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_80333534
L_8033352C:
    li 0, 0x1
    stw 0, 0x98(31)
L_80333534:
    li 3, 0x1
    li 0, 0x7
    stb 3, 0x2a6(31)
    stw 0, 0x230(31)
    .4byte 0x48000158 # b .L_8033369C
L_80333548:
    li 0, 0x1
    li 3, 0x3e8
    stw 0, 0x290(31)
    li 0, 0x6
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x4800013C # b .L_8033369C
L_80333564:
    li 0, 0x2
    li 4, 0x0
    stw 0, 0xb8(31)
    stw 3, 0x290(31)
    lwz 3, 0x25c(31)
    bl fn_8023061C
    lwz 3, 0x25c(31)
    li 5, 0x0
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803335A8
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480000F8 # b .L_8033369C
L_803335A8:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480000EC # b .L_8033369C
L_803335B4:
    stw 3, 0x230(31)
    li 0, 0x2
    stw 0, 0xb8(31)
    lwz 0, 0x290(31)
    cmpwi 0, 0x7
    .4byte 0x408200D4 # bne .L_8033369C
    li 3, 0x6
    li 0, 0x1
    stw 3, 0x290(31)
    stw 0, 0x230(31)
    lbz 0, 0x2a2(31)
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_80333644
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF74 # lfs f2, lbl_80541F14@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    addi 0, 3, 0xc8
    stw 0, 0x240(31)
    .4byte 0x4800005C # b .L_8033369C
L_80333644:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EF1C # lfs f0, lbl_80541EBC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EF78 # lfs f2, lbl_80541F18@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    addi 0, 3, 0x64
    stw 0, 0x240(31)
L_8033369C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803336B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182004C # beq .L_80333718
    lis 3, lbl_804AB8C0@ha
    addi 0, 3, lbl_804AB8C0@l
    stw 0, 0x0(30)
    lwz 3, 0x2f4(30)
    bl fn_801EE434
    lwz 3, 0x2f8(30)
    bl fn_801EE434
    lwz 3, 0x2fc(30)
    bl fn_801EE434
    lwz 3, 0x300(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80333718
    mr 3, 30
    bl dtor_80084580
L_80333718:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80333734:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805091F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805091F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80333784
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
L_80333784:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803337BC
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
L_803337BC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803337F4
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
L_803337F4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033382C
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
L_8033382C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80333864
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
L_80333864:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033389C
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
L_8033389C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803338D4
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
L_803338D4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033390C
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
L_8033390C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80333944
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
L_80333944:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80333958:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8033399C
    lis 5, lbl_804AB968@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB968@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033399C
    mr 3, 30
    bl dtor_80084580
L_8033399C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803339B8:
    stwu 1, -0x20(1)
    mflr 0
    psq_l 1, 0x0(5), 0, 0
    stw 0, 0x24(1)
    lfs 0, 0x8(5)
    stw 31, 0x1c(1)
    mr 31, 3
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x240(3)
    cmpwi 0, 0x2
    .4byte 0x4182008C # beq .L_80333A70
    .4byte 0x40800014 # bge .L_803339FC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80333A08
    .4byte 0x40800048 # bge .L_80333A3C
    .4byte 0x480000DC # b .L_80333AD4
L_803339FC:
    cmpwi 0, 0x4
    .4byte 0x408000D4 # bge .L_80333AD4
    .4byte 0x480000A0 # b .L_80333AA4
L_80333A08:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80333A28
    lfs 1, 0xc(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x480000B0 # b .L_80333AD4
L_80333A28:
    lfs 1, 0xc(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800009C # b .L_80333AD4
L_80333A3C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80333A5C
    lfs 1, 0xc(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800007C # b .L_80333AD4
L_80333A5C:
    lfs 1, 0xc(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000068 # b .L_80333AD4
L_80333A70:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80333A90
    lfs 1, 0x8(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000048 # b .L_80333AD4
L_80333A90:
    lfs 1, 0x8(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000034 # b .L_80333AD4
L_80333AA4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80333AC4
    lfs 1, 0x8(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000014 # b .L_80333AD4
L_80333AC4:
    lfs 1, 0x8(1)
    .4byte 0xC002EF98 # lfs f0, lbl_80541F38@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
L_80333AD4:
    addi 3, 1, 0x8
    bl fn_8022461C
    lwz 0, 0x240(31)
    clrlwi 3, 3, 16
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_80333B2C
    .4byte 0x40800014 # bge .L_80333B00
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80333B0C
    .4byte 0x40800024 # bge .L_80333B1C
    .4byte 0x48000050 # b .L_80333B4C
L_80333B00:
    cmpwi 0, 0x4
    .4byte 0x40800048 # bge .L_80333B4C
    .4byte 0x48000034 # b .L_80333B3C
L_80333B0C:
    cmpwi 3, 0x41
    .4byte 0x4082003C # bne .L_80333B4C
    li 3, 0x1
    .4byte 0x48000038 # b .L_80333B50
L_80333B1C:
    cmpwi 3, 0x40
    .4byte 0x4082002C # bne .L_80333B4C
    li 3, 0x1
    .4byte 0x48000028 # b .L_80333B50
L_80333B2C:
    cmpwi 3, 0x43
    .4byte 0x4082001C # bne .L_80333B4C
    li 3, 0x1
    .4byte 0x48000018 # b .L_80333B50
L_80333B3C:
    cmpwi 3, 0x42
    .4byte 0x4082000C # bne .L_80333B4C
    li 3, 0x1
    .4byte 0x48000008 # b .L_80333B50
L_80333B4C:
    li 3, 0x0
L_80333B50:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80333B64:
    stwu 1, -0x70(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x74(1)
    li 0, -0x1
    addi 9, 1, 0x20
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    stw 0, 0x30(1)
    stw 0, 0x34(1)
    .4byte 0x48000064 # b .L_80333BF4
L_80333B94:
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
L_80333BF4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80333B94
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x3d(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x30(1)
    stw 5, 0x34(1)
    stw 5, 0x38(1)
    stb 5, 0x3c(1)
    stb 5, 0x3e(1)
    stb 4, 0x3f(1)
    stb 4, 0x40(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stb 5, 0x43(1)
    stb 5, 0x44(1)
    stb 5, 0x45(1)
    stb 4, 0x46(1)
    stw 3, 0x48(1)
    stb 4, 0x4c(1)
    stb 5, 0x4d(1)
    stb 5, 0x4e(1)
    stw 6, 0x50(1)
    stw 5, 0x54(1)
    stw 0, 0x58(1)
    stb 6, 0x3d(1)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820104 # bne .L_80333D78
    .4byte 0xC042EF9C # lfs f2, lbl_80541F3C@sda21(r0)
    lfs 0, 0x10(31)
    lfs 1, 0xc(31)
    fadds 2, 2, 0
    .4byte 0xC002EFA0 # lfs f0, lbl_80541F40@sda21(r0)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80333CF0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471A90@ha
    addi 5, 3, lbl_80471A90@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EFA4 # lfs f1, lbl_80541F44@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x20
    fmr 2, 1
    li 6, 0x0
    lwz 3, 0x20(4)
    addi 4, 1, 0x14
    bl fn_802F86CC
L_80333CF0:
    lwz 0, 0x4(31)
    lwz 3, 0x238(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x25
    .4byte 0x40800050 # bge .L_80333D50
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471AA0@ha
    addi 5, 3, lbl_80471AA0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EFA4 # lfs f1, lbl_80541F44@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80333D50:
    lwz 6, 0x238(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0x25
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x48000100 # b .L_80333E74
L_80333D78:
    .4byte 0xC042EFA8 # lfs f2, lbl_80541F48@sda21(r0)
    lfs 0, 0x10(31)
    lfs 1, 0xc(31)
    fadds 2, 2, 0
    .4byte 0xC002EFA0 # lfs f0, lbl_80541F40@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80333DF0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471A90@ha
    addi 5, 3, lbl_80471A90@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 5, 3
    .4byte 0xC022EFAC # lfs f1, lbl_80541F4C@sda21(r0)
    addi 7, 1, 0x20
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    .4byte 0xC042EFA4 # lfs f2, lbl_80541F44@sda21(r0)
    li 6, 0x3
    bl fn_802F86CC
L_80333DF0:
    lwz 0, 0x4(31)
    lwz 3, 0x238(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x27
    .4byte 0x40800050 # bge .L_80333E50
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471AA0@ha
    addi 5, 3, lbl_80471AA0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EFA4 # lfs f1, lbl_80541F44@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80333E50:
    lwz 6, 0x238(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0x27
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
L_80333E74:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80333E8C:
    stwu 1, -0x20(1)
    mflr 0
    li 4, -0x64
    li 5, -0x1
    stw 0, 0x24(1)
    li 6, 0x1
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801F2B7C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408200E8 # bne .L_80333FB0
    addi 5, 31, 0xc
    psq_l 0, 0x3c(31), 0, 0
    psq_l 1, 0x0(5), 0, 0
    mr 3, 31
    ps_add 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 1, 0x8(5), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80333F1C
    lwz 0, 0x244(31)
    cmpwi 0, 0x258
    .4byte 0x4081000C # ble .L_80333F24
L_80333F1C:
    li 0, 0x0
    stb 0, 0x11c(31)
L_80333F24:
    lfs 1, 0x40(31)
    lfs 0, 0x3c(31)
    fabs 1, 1
    .4byte 0xC042EFB0 # lfs f2, lbl_80541F50@sda21(r0)
    fabs 3, 0
    lwz 0, 0x234(31)
    frsp 0, 1
    frsp 1, 3
    fadds 0, 1, 0
    fadds 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    subf 0, 3, 0
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0xf
    .4byte 0x4181003C # bgt .L_80333FA4
    li 0, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810028 # bgt .L_80333FA4
    li 0, 0x1e
    lis 4, 0x3
    stw 0, 0x234(31)
    li 0, 0x0
    mr 3, 31
    addi 4, 4, 0x10
    stw 0, 0x238(31)
    li 5, 0x0
    bl fn_801F0E34
L_80333FA4:
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
L_80333FB0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80333FC4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x80
    lwz 4, 0x90(3)
    extrwi 4, 4, 4, 24
    stw 4, 0x240(3)
    stw 0, 0x108(3)
    lwz 0, 0x90(3)
    clrlwi. 0, 0, 28
    .4byte 0x41820028 # beq .L_80334014
    li 0, 0x1
    .4byte 0xC022EFB4 # lfs f1, lbl_80541F54@sda21(r0)
    stw 0, 0x23c(3)
    .4byte 0xC002EFB8 # lfs f0, lbl_80541F58@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x48000024 # b .L_80334034
L_80334014:
    li 0, 0x0
    .4byte 0xC022EFBC # lfs f1, lbl_80541F5C@sda21(r0)
    stw 0, 0x23c(3)
    .4byte 0xC002EFC0 # lfs f0, lbl_80541F60@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
L_80334034:
    lwz 0, 0x240(3)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80334090
    .4byte 0x40800014 # bge .L_80334054
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80334060
    .4byte 0x4080002C # bge .L_80334078
    .4byte 0x4800006C # b .L_803340BC
L_80334054:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_803340BC
    .4byte 0x4800004C # b .L_803340A8
L_80334060:
    .4byte 0xC022EFA0 # lfs f1, lbl_80541F40@sda21(r0)
    .4byte 0xC002EFC4 # lfs f0, lbl_80541F64@sda21(r0)
    stfs 1, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 1, 0x44(3)
    .4byte 0x48000048 # b .L_803340BC
L_80334078:
    .4byte 0xC022EFA0 # lfs f1, lbl_80541F40@sda21(r0)
    .4byte 0xC002EFC8 # lfs f0, lbl_80541F68@sda21(r0)
    stfs 1, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 1, 0x44(3)
    .4byte 0x48000030 # b .L_803340BC
L_80334090:
    .4byte 0xC022EFC4 # lfs f1, lbl_80541F64@sda21(r0)
    .4byte 0xC002EFA0 # lfs f0, lbl_80541F40@sda21(r0)
    stfs 1, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    .4byte 0x48000018 # b .L_803340BC
L_803340A8:
    .4byte 0xC022EFC8 # lfs f1, lbl_80541F68@sda21(r0)
    .4byte 0xC002EFA0 # lfs f0, lbl_80541F40@sda21(r0)
    stfs 1, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
L_803340BC:
    li 6, 0x0
    lis 4, 0x3
    stw 6, 0x230(3)
    li 0, 0x1e
    addi 4, 4, 0x19
    li 5, 0x0
    stw 6, 0x238(3)
    stw 0, 0x234(3)
    stw 6, 0x244(3)
    bl fn_801F0E34
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803340F4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805092F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805092F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80334144
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
L_80334144:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033417C
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
L_8033417C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803341B4
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
L_803341B4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803341EC
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
L_803341EC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80334224
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
L_80334224:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033425C
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
L_8033425C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80334294
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
L_80334294:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803342CC
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
L_803342CC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80334304
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
L_80334304:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80334318:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8033435C
    lis 5, lbl_804AB9C0@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB9C0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033435C
    mr 3, 30
    bl dtor_80084580
L_8033435C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80334378:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    lis 31, 0x5741
    stw 30, 0x38(1)
    li 30, -0x1
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 3
L_803343A0:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x5250
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x418000B0 # blt .L_80334464
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_803343A0
    lwz 29, 0x90(3)
    clrlwi 0, 29, 24
    cmplwi 0, 0x7
    .4byte 0x4082FFC8 # bne .L_803343A0
    extrwi. 31, 29, 3, 5
    .4byte 0x40820014 # bne .L_803343F4
    bl GetRoomConfigRecord
    lfs 5, 0xcc(3)
    lfs 6, 0xd0(3)
    .4byte 0x48000010 # b .L_80334400
L_803343F4:
    .4byte 0xC0C2EFD0 # lfs f6, lbl_80541F70@sda21(r0)
    addi 31, 31, 0x7
    fmr 5, 6
L_80334400:
    lis 6, 0x4330
    rlwinm 3, 29, 19, 23, 28
    rlwinm 0, 29, 27, 23, 28
    stw 3, 0x1c(1)
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    mr 3, 28
    stw 6, 0x18(1)
    mr 4, 31
    .4byte 0xC862EFD8 # lfd f3, lbl_80541F78@sda21(r0)
    addi 5, 1, 0x8
    lfd 1, 0x18(1)
    stw 0, 0x24(1)
    fsubs 2, 1, 3
    .4byte 0xC082EFD4 # lfs f4, lbl_80541F74@sda21(r0)
    stw 6, 0x20(1)
    lfd 1, 0x20(1)
    fadds 2, 2, 5
    stfs 0, 0x10(1)
    fsubs 0, 1, 3
    fadds 1, 4, 2
    fadds 0, 0, 6
    stfs 1, 0x8(1)
    fadds 0, 4, 0
    stfs 0, 0xc(1)
    bl fn_801F349C
L_80334464:
    lwz 0, 0x44(1)
    mr 3, 30
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80334488:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stfd 29, 0x100(1)
    psq_st 29, 0x108(1), 0, 0
    stfd 28, 0xf0(1)
    psq_st 28, 0xf8(1), 0, 0
    stfd 27, 0xe0(1)
    psq_st 27, 0xe8(1), 0, 0
    stfd 26, 0xd0(1)
    psq_st 26, 0xd8(1), 0, 0
    stw 31, 0xcc(1)
    stw 30, 0xc8(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x5
    .4byte 0x418204E4 # beq .L_803349BC
    li 0, -0x1
    addi 9, 1, 0x8c
    stw 0, 0x9c(1)
    li 10, 0x0
    stw 0, 0xa0(1)
    .4byte 0x48000064 # b .L_80334554
L_803344F4:
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
L_80334554:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803344F4
    li 10, 0x0
    li 5, -0x1
    li 4, 0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0x9c(1)
    addi 9, 1, 0x50
    stw 10, 0xa0(1)
    stw 10, 0xa4(1)
    stb 10, 0xa8(1)
    stb 10, 0xa9(1)
    stb 10, 0xaa(1)
    stb 4, 0xab(1)
    stb 4, 0xac(1)
    stb 10, 0xad(1)
    stb 10, 0xae(1)
    stb 10, 0xaf(1)
    stb 10, 0xb0(1)
    stb 10, 0xb1(1)
    stb 4, 0xb2(1)
    stw 3, 0xb4(1)
    stb 4, 0xb8(1)
    stb 10, 0xb9(1)
    stb 10, 0xba(1)
    stw 5, 0xbc(1)
    stw 10, 0xc0(1)
    stw 0, 0xc4(1)
    stw 5, 0x60(1)
    stw 5, 0x64(1)
    .4byte 0x48000064 # b .L_80334638
L_803345D8:
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
L_80334638:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803345D8
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x60(1)
    addi 3, 1, 0x20
    stw 6, 0x64(1)
    stw 6, 0x68(1)
    stb 6, 0x6c(1)
    stb 6, 0x6d(1)
    stb 6, 0x6e(1)
    stb 5, 0x6f(1)
    stb 5, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stb 6, 0x73(1)
    stb 6, 0x74(1)
    stb 6, 0x75(1)
    stb 5, 0x76(1)
    stw 4, 0x78(1)
    stb 5, 0x7c(1)
    stb 6, 0x7d(1)
    stb 6, 0x7e(1)
    stw 7, 0x80(1)
    stw 6, 0x84(1)
    stw 0, 0x88(1)
    bl PSMTXIdentity
    li 0, -0x1
    stb 0, 0xa9(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x408200D8 # bne .L_8033479C
    lfs 29, 0x240(31)
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x20
    fmuls 7, 30, 26
    stw 0, 0x68(1)
    fneg 6, 27
    fmuls 10, 31, 3
    fmuls 2, 28, 27
    fmuls 9, 31, 26
    fmuls 1, 28, 26
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x20(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x30(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x40(1)
    fmuls 0, 29, 0
    stfs 5, 0x24(1)
    stfs 4, 0x34(1)
    stfs 3, 0x44(1)
    stfs 2, 0x28(1)
    stfs 1, 0x38(1)
    stfs 0, 0x48(1)
L_8033479C:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820110 # bne .L_803348B4
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x4182007C # beq .L_8033482C
    .4byte 0xC042EFE0 # lfs f2, lbl_80541F80@sda21(r0)
    lfs 0, 0x10(31)
    lfs 1, 0xc(31)
    fadds 2, 2, 0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8033482C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471AB8@ha
    addi 5, 3, lbl_80471AB8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EFE4 # lfs f1, lbl_80541F84@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x8c
    fmr 2, 1
    li 6, 0x0
    lwz 3, 0x20(4)
    addi 4, 1, 0x14
    bl fn_802F86CC
L_8033482C:
    lwz 0, 0x4(31)
    lwz 3, 0x24c(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x25
    .4byte 0x40800050 # bge .L_8033488C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471AC8@ha
    addi 5, 3, lbl_80471AC8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EFE4 # lfs f1, lbl_80541F84@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x50
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_8033488C:
    lwz 6, 0x24c(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0x25
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x4800010C # b .L_803349BC
L_803348B4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x4182007C # beq .L_80334938
    .4byte 0xC042EFE8 # lfs f2, lbl_80541F88@sda21(r0)
    lfs 0, 0x10(31)
    lfs 1, 0xc(31)
    fadds 2, 2, 0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80334938
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471AB8@ha
    addi 5, 3, lbl_80471AB8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 5, 3
    .4byte 0xC022EFEC # lfs f1, lbl_80541F8C@sda21(r0)
    addi 7, 1, 0x8c
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    .4byte 0xC042EFE4 # lfs f2, lbl_80541F84@sda21(r0)
    li 6, 0x3
    bl fn_802F86CC
L_80334938:
    lwz 0, 0x4(31)
    lwz 3, 0x24c(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x27
    .4byte 0x40800050 # bge .L_80334998
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471AC8@ha
    addi 5, 3, lbl_80471AC8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EFE4 # lfs f1, lbl_80541F84@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x50
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80334998:
    lwz 6, 0x24c(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0x27
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
L_803349BC:
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    psq_l 29, 0x108(1), 0, 0
    lfd 29, 0x100(1)
    psq_l 28, 0xf8(1), 0, 0
    lfd 28, 0xf0(1)
    psq_l 27, 0xe8(1), 0, 0
    lfd 27, 0xe0(1)
    psq_l 26, 0xd8(1), 0, 0
    lfd 26, 0xd0(1)
    lwz 31, 0xcc(1)
    lwz 0, 0x134(1)
    lwz 30, 0xc8(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

fn_80334A04:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    li 0, 0x0
    mr 30, 3
    sth 0, 0x8(1)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 0, 0x90(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820164 # beq .L_80334BB8
    psq_l 3, 0xc(30), 0, 0
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0x14(30)
    addi 4, 1, 0x1c
    addi 5, 3, lbl_8052EBC0@l
    lis 3, 0x5342
    stfs 0, 0x24(1)
    addi 6, 3, 0x414c
    psq_l 0, 0x18(1), 1, 0
    addi 31, 5, 0x4
    psq_st 3, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    lhz 0, 0x26c(30)
    ps_add 4, 1, 0
    .4byte 0xC042EFF0 # lfs f2, lbl_80541F90@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lfsx 0, 5, 0
    lfsx 5, 31, 0
    fmuls 1, 2, 0
    psq_st 4, 0x8(4), 1, 0
    fmuls 0, 2, 5
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    psq_l 0, 0x10(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 5, 0x4(30)
    bl fn_802A1688
    psq_l 3, 0xc(30), 0, 0
    lis 5, lbl_8052EBC0@ha
    lfs 0, 0x14(30)
    addi 4, 1, 0x1c
    lis 3, 0x5342
    addi 5, 5, lbl_8052EBC0@l
    stfs 0, 0x24(1)
    addi 6, 3, 0x414c
    psq_l 0, 0x18(1), 1, 0
    psq_st 3, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    lhz 7, 0x26c(30)
    ps_add 0, 1, 0
    .4byte 0xC042EFF0 # lfs f2, lbl_80541F90@sda21(r0)
    addi 0, 7, 0x1500
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    psq_st 0, 0x8(4), 1, 0
    lfsx 1, 5, 0
    lfsx 0, 31, 0
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    psq_l 0, 0x10(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 5, 0x4(30)
    bl fn_802A1688
    psq_l 3, 0xc(30), 0, 0
    lis 5, lbl_8052EBC0@ha
    lfs 0, 0x14(30)
    addi 4, 1, 0x1c
    lis 3, 0x5342
    addi 5, 5, lbl_8052EBC0@l
    stfs 0, 0x24(1)
    addi 6, 3, 0x414c
    psq_l 0, 0x18(1), 1, 0
    psq_st 3, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    lhz 7, 0x26c(30)
    ps_add 0, 1, 0
    .4byte 0xC042EFF0 # lfs f2, lbl_80541F90@sda21(r0)
    subi 0, 7, 0x1500
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    psq_st 0, 0x8(4), 1, 0
    lfsx 1, 5, 0
    lfsx 0, 31, 0
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    psq_l 0, 0x10(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 5, 0x4(30)
    bl fn_802A1688
    .4byte 0x48000160 # b .L_80334D14
L_80334BB8:
    psq_l 3, 0xc(30), 0, 0
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0x14(30)
    addi 4, 1, 0x1c
    addi 5, 3, lbl_8052EBC0@l
    lis 3, 0x5342
    stfs 0, 0x24(1)
    addi 6, 3, 0x414c
    psq_l 0, 0x18(1), 1, 0
    addi 31, 5, 0x4
    psq_st 3, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    lhz 0, 0x26c(30)
    ps_add 4, 1, 0
    .4byte 0xC042EFF4 # lfs f2, lbl_80541F94@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lfsx 0, 5, 0
    lfsx 5, 31, 0
    fmuls 1, 2, 0
    psq_st 4, 0x8(4), 1, 0
    fmuls 0, 2, 5
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    psq_l 0, 0x10(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 5, 0x4(30)
    bl fn_802A1688
    psq_l 3, 0xc(30), 0, 0
    lis 5, lbl_8052EBC0@ha
    lfs 0, 0x14(30)
    addi 4, 1, 0x1c
    lis 3, 0x5342
    addi 5, 5, lbl_8052EBC0@l
    stfs 0, 0x24(1)
    addi 6, 3, 0x414c
    psq_l 0, 0x18(1), 1, 0
    psq_st 3, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    lhz 7, 0x26c(30)
    ps_add 0, 1, 0
    .4byte 0xC042EFF4 # lfs f2, lbl_80541F94@sda21(r0)
    addi 0, 7, 0x1500
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    psq_st 0, 0x8(4), 1, 0
    lfsx 1, 5, 0
    lfsx 0, 31, 0
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    psq_l 0, 0x10(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 5, 0x4(30)
    bl fn_802A1688
    psq_l 3, 0xc(30), 0, 0
    lis 5, lbl_8052EBC0@ha
    lfs 0, 0x14(30)
    addi 4, 1, 0x1c
    lis 3, 0x5342
    addi 5, 5, lbl_8052EBC0@l
    stfs 0, 0x24(1)
    addi 6, 3, 0x414c
    psq_l 0, 0x18(1), 1, 0
    psq_st 3, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    lhz 7, 0x26c(30)
    ps_add 0, 1, 0
    .4byte 0xC042EFF4 # lfs f2, lbl_80541F94@sda21(r0)
    subi 0, 7, 0x1500
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    psq_st 0, 0x8(4), 1, 0
    lfsx 1, 5, 0
    lfsx 0, 31, 0
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    psq_l 0, 0x10(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 5, 0x4(30)
    bl fn_802A1688
L_80334D14:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 4, 0x198(30)
    mr 31, 3
    mr 3, 30
    addi 5, 1, 0x8
    addi 8, 1, 0xc
    li 6, 0x0
    li 7, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80334D6C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x260(30), 0, 0
    stfs 0, 0x268(30)
L_80334D6C:
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    lfs 0, 0x14(30)
    fcmpu cr0, 1, 0
    .4byte 0x408200A0 # bne .L_80334E18
    lwz 0, 0x230(30)
    cmpwi 0, 0x7
    .4byte 0x41820094 # beq .L_80334E18
    lwz 0, 0x250(30)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_80334DBC
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x5
    bl fn_801F2B7C
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000028 # b .L_80334DE0
L_80334DBC:
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x4
    bl fn_801F2B7C
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80334DE0:
    clrlwi. 0, 0, 24
    .4byte 0x41820034 # beq .L_80334E18
    lfs 0, 0x3c(30)
    li 3, 0x14
    lfs 2, 0x40(30)
    li 0, 0x3
    fneg 1, 0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fneg 2, 2
    stfs 1, 0x3c(30)
    stfs 2, 0x40(30)
    stfs 0, 0x44(30)
    stw 3, 0x244(30)
    stw 0, 0x230(30)
L_80334E18:
    lwz 0, 0x230(30)
    cmplwi 0, 0x7
    .4byte 0x418107D0 # bgt .L_803355F0
    lis 3, jumptable_804ABA18@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804ABA18@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x244(30)
    subi 0, 3, 0x1
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x418107A0 # bgt .L_803355F0
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(30)
    stw 0, 0x244(30)
    .4byte 0x4800078C # b .L_803355F0
    li 0, 0x0
    sth 0, 0x8(1)
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_80334EA8
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800024 # blt .L_80334EA8
    clrlwi. 0, 31, 24
    .4byte 0x41820130 # beq .L_80334FBC
    lhz 3, 0x26c(30)
    li 0, 0xa
    addi 3, 3, 0x2000
    sth 3, 0x26c(30)
    stw 0, 0x254(30)
    .4byte 0x48000118 # b .L_80334FBC
L_80334EA8:
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC022EFF8 # lfs f1, lbl_80541F98@sda21(r0)
    mr 0, 4
    lfs 4, 0x260(30)
    fmuls 2, 1, 0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 4, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80334EF0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80334EF0
    li 0, 0x1
L_80334EF0:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80334F30
    lfs 1, 0x264(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80334F24
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80334F24
    li 0, 0x1
L_80334F24:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80334F30
    li 3, 0x1
L_80334F30:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80334F70
    lfs 1, 0x268(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80334F64
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80334F64
    li 0, 0x1
L_80334F64:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80334F70
    li 4, 0x1
L_80334F70:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_80334F84
    li 0, 0x0
    sth 0, 0x26c(30)
    .4byte 0x4800003C # b .L_80334FBC
L_80334F84:
    lfs 1, 0xc(30)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x264(30)
    addi 3, 3, lbl_80534C00@l
    lfs 0, 0x10(30)
    fsubs 1, 4, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002EFFC # lfs f0, lbl_80541F9C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    sth 0, 0x26c(30)
L_80334FBC:
    lwz 3, 0x254(30)
    lis 0, 0x4330
    stw 0, 0x28(1)
    subi 0, 3, 0x1
    .4byte 0xC842F028 # lfd f2, lbl_80541FC8@sda21(r0)
    stw 0, 0x254(30)
    .4byte 0xC002EFF0 # lfs f0, lbl_80541F90@sda21(r0)
    lwz 3, 0x244(30)
    addi 0, 3, 0x1
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    mullw 0, 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 1, 0x28(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x23c(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x5
    .4byte 0x4180000C # blt .L_80335018
    li 0, 0x2
    stw 0, 0x230(30)
L_80335018:
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x408000D4 # bge .L_803350F4
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC042EFF8 # lfs f2, lbl_80541F98@sda21(r0)
    mr 0, 4
    lfs 1, 0x260(30)
    fmuls 2, 2, 0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8033506C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8033506C
    li 0, 0x1
L_8033506C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_803350AC
    lfs 1, 0x264(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_803350A0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803350A0
    li 0, 0x1
L_803350A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_803350AC
    li 3, 0x1
L_803350AC:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_803350EC
    lfs 1, 0x268(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_803350E0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803350E0
    li 0, 0x1
L_803350E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_803350EC
    li 4, 0x1
L_803350EC:
    clrlwi. 0, 4, 24
    .4byte 0x40820044 # bne .L_80335134
L_803350F4:
    lhz 0, 0x26c(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0x23c(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x3c(30)
    lhz 0, 0x26c(30)
    lfs 1, 0x23c(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(30)
    .4byte 0x48000010 # b .L_80335140
L_80335134:
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
L_80335140:
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    .4byte 0x480004A4 # b .L_803355F0
    li 0, 0x0
    sth 0, 0x8(1)
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_80335190
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800024 # blt .L_80335190
    clrlwi. 0, 31, 24
    .4byte 0x41820130 # beq .L_803352A4
    lhz 3, 0x26c(30)
    li 0, 0xa
    addi 3, 3, 0x2000
    sth 3, 0x26c(30)
    stw 0, 0x254(30)
    .4byte 0x48000118 # b .L_803352A4
L_80335190:
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC022EFF8 # lfs f1, lbl_80541F98@sda21(r0)
    mr 0, 4
    lfs 4, 0x260(30)
    fmuls 2, 1, 0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 4, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_803351D8
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803351D8
    li 0, 0x1
L_803351D8:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80335218
    lfs 1, 0x264(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8033520C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8033520C
    li 0, 0x1
L_8033520C:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80335218
    li 3, 0x1
L_80335218:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80335258
    lfs 1, 0x268(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8033524C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8033524C
    li 0, 0x1
L_8033524C:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80335258
    li 4, 0x1
L_80335258:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_8033526C
    li 0, 0x0
    sth 0, 0x26c(30)
    .4byte 0x4800003C # b .L_803352A4
L_8033526C:
    lfs 1, 0xc(30)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x264(30)
    addi 3, 3, lbl_80534C00@l
    lfs 0, 0x10(30)
    fsubs 1, 4, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002EFFC # lfs f0, lbl_80541F9C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    sth 0, 0x26c(30)
L_803352A4:
    lwz 3, 0x254(30)
    subi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x408000D4 # bge .L_8033538C
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC042EFF8 # lfs f2, lbl_80541F98@sda21(r0)
    mr 0, 4
    lfs 1, 0x260(30)
    fmuls 2, 2, 0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80335304
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80335304
    li 0, 0x1
L_80335304:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80335344
    lfs 1, 0x264(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80335338
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80335338
    li 0, 0x1
L_80335338:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80335344
    li 3, 0x1
L_80335344:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80335384
    lfs 1, 0x268(30)
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80335378
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80335378
    li 0, 0x1
L_80335378:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80335384
    li 4, 0x1
L_80335384:
    clrlwi. 0, 4, 24
    .4byte 0x40820034 # bne .L_803353BC
L_8033538C:
    lhz 0, 0x26c(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    stfs 0, 0x3c(30)
    lhz 0, 0x26c(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    stfs 0, 0x40(30)
    .4byte 0x48000010 # b .L_803353C8
L_803353BC:
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
L_803353C8:
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    .4byte 0x4800021C # b .L_803355F0
    lwz 4, 0x244(30)
    addi 3, 30, 0x3c
    .4byte 0xC002F000 # lfs f0, lbl_80541FA0@sda21(r0)
    subi 0, 4, 0x1
    stw 0, 0x244(30)
    psq_l 2, 0x0(3), 0, 0
    lfs 31, 0x44(30)
    ps_mul 2, 2, 2
    ps_madd 1, 31, 31, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    .4byte 0x40810028 # ble .L_8033542C
    .4byte 0xC042F004 # lfs f2, lbl_80541FA4@sda21(r0)
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    .4byte 0xC042F004 # lfs f2, lbl_80541FA4@sda21(r0)
    addi 3, 30, 0x40
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
L_8033542C:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x418101BC # bgt .L_803355F0
    li 0, 0x0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    stw 0, 0x230(30)
    li 0, 0x5a
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    stw 0, 0x244(30)
    .4byte 0x48000198 # b .L_803355F0
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182017C # beq .L_803355F0
    .4byte 0xC002F008 # lfs f0, lbl_80541FA8@sda21(r0)
    li 0, 0x6
    stfs 0, 0x14(30)
    stw 0, 0x230(30)
    .4byte 0x48000168 # b .L_803355F0
    lfs 2, 0x44(30)
    .4byte 0xC022F00C # lfs f1, lbl_80541FAC@sda21(r0)
    .4byte 0xC002F010 # lfs f0, lbl_80541FB0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(30)
    lfs 1, 0x44(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803354B4
    stfs 0, 0x44(30)
L_803354B4:
    lfs 0, 0x14(30)
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082012C # bne .L_803355F0
    lfs 0, 0x44(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800120 # bge .L_803355F0
    stfs 1, 0x44(30)
    li 3, 0x0
    li 0, 0x28
    stfs 1, 0x40(30)
    stfs 1, 0x3c(30)
    stfs 1, 0x14(30)
    stw 3, 0x230(30)
    stw 0, 0x244(30)
    lwz 0, 0x90(30)
    clrlwi. 0, 0, 31
    .4byte 0x41820020 # beq .L_8033551C
    bl GetRoomConfigRecord
    lwz 4, 0x4(30)
    li 5, 0x0
    .4byte 0xC022EFD4 # lfs f1, lbl_80541F74@sda21(r0)
    .4byte 0xC042EFD0 # lfs f2, lbl_80541F70@sda21(r0)
    bl fn_802D79E8
    .4byte 0x4800001C # b .L_80335534
L_8033551C:
    bl GetRoomConfigRecord
    lwz 4, 0x4(30)
    li 5, 0x0
    .4byte 0xC022F014 # lfs f1, lbl_80541FB4@sda21(r0)
    .4byte 0xC042EFD0 # lfs f2, lbl_80541F70@sda21(r0)
    bl fn_802D79E8
L_80335534:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0xf
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000A8 # b .L_803355F0
    lwz 3, 0x25c(30)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_80335564
    subi 0, 3, 0x1
    stw 0, 0x25c(30)
    .4byte 0x48000090 # b .L_803355F0
L_80335564:
    lfs 1, 0x240(30)
    .4byte 0xC002F018 # lfs f0, lbl_80541FB8@sda21(r0)
    .4byte 0xC3E2F01C # lfs f31, lbl_80541FBC@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC002F020 # lfs f0, lbl_80541FC0@sda21(r0)
    stfs 1, 0x240(30)
    psq_l 2, 0x3c(30), 0, 0
    psq_l 1, 0x44(30), 1, 0
    ps_muls0 2, 2, 31
    ps_muls0 1, 1, 31
    psq_st 2, 0x3c(30), 0, 0
    psq_st 1, 0x44(30), 1, 0
    lfs 1, 0x240(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800054 # bge .L_803355F0
    .4byte 0xC002EFD0 # lfs f0, lbl_80541F70@sda21(r0)
    mr 3, 30
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    lwz 12, 0x0(30)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40800010 # bge .L_803355D8
    mr 3, 30
    bl fn_801F3668
    .4byte 0x4800001C # b .L_803355F0
L_803355D8:
    .4byte 0xC022EFE4 # lfs f1, lbl_80541F84@sda21(r0)
    li 0, 0x6
    .4byte 0xC002F024 # lfs f0, lbl_80541FC4@sda21(r0)
    stfs 1, 0x240(30)
    stfs 0, 0x14(30)
    stw 0, 0x230(30)
L_803355F0:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80335604
    cmpwi 0, 0x2
    .4byte 0x40820068 # bne .L_80335668
L_80335604:
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x41810028 # bgt .L_80335634
    li 0, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_80335634
    li 3, 0xa
    li 0, 0x0
    stw 3, 0x248(30)
    stw 0, 0x24c(30)
L_80335634:
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x41810020 # bgt .L_8033565C
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x19
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x46
    stw 0, 0x258(30)
L_8033565C:
    lwz 3, 0x258(30)
    subi 0, 3, 0x1
    stw 0, 0x258(30)
L_80335668:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80335688:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    mr 3, 5
    bl fn_8022461C
    lwz 0, 0x230(31)
    clrlwi 3, 3, 16
    cmpwi 0, 0x3
    .4byte 0x4182003C # beq .L_803356EC
    cmpwi 3, 0xc
    .4byte 0x41820014 # beq .L_803356CC
    cmpwi 3, 0x3
    .4byte 0x4182000C # beq .L_803356CC
    cmpwi 3, 0xe
    .4byte 0x40820024 # bne .L_803356EC
L_803356CC:
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_803356DC
    li 0, 0x1e
    stw 0, 0x25c(31)
L_803356DC:
    li 0, 0x7
    li 3, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000020 # b .L_80335708
L_803356EC:
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_80335704
    cmpwi 3, 0x22
    .4byte 0x4182000C # beq .L_80335704
    li 3, 0x1
    .4byte 0x48000008 # b .L_80335708
L_80335704:
    li 3, 0x0
L_80335708:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033571C:
    li 0, 0x80
    lis 4, 0x4
    stw 0, 0x108(3)
    addi 0, 4, 0x2304
    stw 0, 0xb0(3)
    lwz 0, 0x90(3)
    clrlwi. 0, 0, 31
    .4byte 0x4182004C # beq .L_80335784
    li 0, 0x1
    .4byte 0xC042F030 # lfs f2, lbl_80541FD0@sda21(r0)
    stw 0, 0x250(3)
    .4byte 0xC022F034 # lfs f1, lbl_80541FD4@sda21(r0)
    stfs 2, 0x60(3)
    .4byte 0xC002EFD4 # lfs f0, lbl_80541F74@sda21(r0)
    stfs 1, 0x64(3)
    .4byte 0xC022EFE8 # lfs f1, lbl_80541F88@sda21(r0)
    stfs 0, 0x68(3)
    .4byte 0xC002F038 # lfs f0, lbl_80541FD8@sda21(r0)
    stfs 1, 0x6c(3)
    .4byte 0xC022F03C # lfs f1, lbl_80541FDC@sda21(r0)
    stfs 0, 0x80(3)
    .4byte 0xC002F040 # lfs f0, lbl_80541FE0@sda21(r0)
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 0, 0x8c(3)
    .4byte 0x4800004C # b .L_803357CC
L_80335784:
    li 0, 0x0
    .4byte 0xC022F034 # lfs f1, lbl_80541FD4@sda21(r0)
    stw 0, 0x250(3)
    .4byte 0xC002F044 # lfs f0, lbl_80541FE4@sda21(r0)
    stfs 1, 0x60(3)
    .4byte 0xC022F014 # lfs f1, lbl_80541FB4@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002F048 # lfs f0, lbl_80541FE8@sda21(r0)
    stfs 1, 0x68(3)
    .4byte 0xC022F04C # lfs f1, lbl_80541FEC@sda21(r0)
    stfs 0, 0x6c(3)
    .4byte 0xC002F010 # lfs f0, lbl_80541FB0@sda21(r0)
    stfs 1, 0x80(3)
    .4byte 0xC022F050 # lfs f1, lbl_80541FF0@sda21(r0)
    stfs 0, 0x84(3)
    .4byte 0xC002EFD4 # lfs f0, lbl_80541F74@sda21(r0)
    stfs 1, 0x88(3)
    stfs 0, 0x8c(3)
L_803357CC:
    lwz 0, 0x90(3)
    .4byte 0xC022EFD0 # lfs f1, lbl_80541F70@sda21(r0)
    extrwi 0, 0, 1, 27
    .4byte 0xC002EFE4 # lfs f0, lbl_80541F84@sda21(r0)
    sth 0, 0x94(3)
    stfs 1, 0x234(3)
    stfs 1, 0x238(3)
    stfs 1, 0x23c(3)
    stfs 0, 0x240(3)
    stfs 1, 0x268(3)
    stfs 1, 0x264(3)
    stfs 1, 0x260(3)
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80335814
    li 0, 0x0
    stw 0, 0x230(3)
    .4byte 0x48000014 # b .L_80335824
L_80335814:
    li 0, 0x5
    .4byte 0xC002F008 # lfs f0, lbl_80541FA8@sda21(r0)
    stw 0, 0x230(3)
    stfs 0, 0x14(3)
L_80335824:
    li 6, 0x0
    li 5, 0xa
    stw 6, 0x24c(3)
    li 4, 0x64
    li 0, 0x1
    stw 5, 0x248(3)
    stw 4, 0x244(3)
    stw 6, 0x254(3)
    stw 6, 0x258(3)
    stw 6, 0x25c(3)
    sth 6, 0x26c(3)
    stw 0, 0xb8(3)
    blr

fn_80335858:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805093F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805093F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803358A8
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
L_803358A8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803358E0
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
L_803358E0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335918
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
L_80335918:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335950
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
L_80335950:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335988
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
L_80335988:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803359C0
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
L_803359C0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803359F8
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
L_803359F8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335A30
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
L_80335A30:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335A68
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
L_80335A68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80335A7C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80335AC0
    lis 5, lbl_804ABA38@ha
    li 4, 0x0
    addi 0, 5, lbl_804ABA38@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80335AC0
    mr 3, 30
    bl dtor_80084580
L_80335AC0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80335ADC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    psq_l 1, 0x230(31), 0, 0
    lfs 0, 0x238(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820224 # bne .L_80335D38
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082018C # bne .L_80335CAC
    lbz 0, 0x247(31)
    cmplwi 0, 0x0
    .4byte 0x41820158 # beq .L_80335C84
    lbz 3, 0x246(31)
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_80335B54
    li 0, 0x5
    stb 0, 0x246(31)
    lwz 0, 0x90(31)
    ori 0, 0, 0x1
    stw 0, 0x90(31)
    .4byte 0x48000134 # b .L_80335C84
L_80335B54:
    subi 3, 3, 0x1
    li 0, -0x2
    stb 3, 0x246(31)
    lwz 3, 0x90(31)
    and 0, 3, 0
    stw 0, 0x90(31)
    lbz 0, 0x248(31)
    cmplwi 0, 0x2
    .4byte 0x40800090 # bge .L_80335C04
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022F058 # lfs f1, lbl_80541FF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 0, 0x23c(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_80335BE4
    lfs 2, 0x14(1)
    .4byte 0xC822F060 # lfd f1, lbl_80542000@sda21(r0)
    .4byte 0xC002F068 # lfs f0, lbl_80542008@sda21(r0)
    fadd 1, 2, 1
    frsp 1, 1
    stfs 1, 0x14(1)
    stfs 0, 0x23c(31)
    .4byte 0x480000A4 # b .L_80335C84
L_80335BE4:
    lfs 2, 0x14(1)
    .4byte 0xC822F060 # lfd f1, lbl_80542000@sda21(r0)
    .4byte 0xC002F06C # lfs f0, lbl_8054200C@sda21(r0)
    fsub 1, 2, 1
    frsp 1, 1
    stfs 1, 0x14(1)
    stfs 0, 0x23c(31)
    .4byte 0x48000084 # b .L_80335C84
L_80335C04:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022F058 # lfs f1, lbl_80541FF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 0, 0x23c(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_80335C6C
    lfs 2, 0x18(1)
    .4byte 0xC022F070 # lfs f1, lbl_80542010@sda21(r0)
    .4byte 0xC002F068 # lfs f0, lbl_80542008@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x18(1)
    stfs 0, 0x23c(31)
    .4byte 0x4800001C # b .L_80335C84
L_80335C6C:
    lfs 2, 0x18(1)
    .4byte 0xC022F070 # lfs f1, lbl_80542010@sda21(r0)
    .4byte 0xC002F06C # lfs f0, lbl_8054200C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x18(1)
    stfs 0, 0x23c(31)
L_80335C84:
    bl SpatialRegistry_GetBase
    lwz 0, 0x90(31)
    lis 4, 0x4241
    lwz 5, 0x4(31)
    addi 4, 4, 0x4c4c
    addi 6, 1, 0x14
    rlwinm 7, 0, 0, 24, 4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80335CAC:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4181007C # bgt .L_80335D30
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    lis 0, 0x4330
    .4byte 0xC862F078 # lfd f3, lbl_80542018@sda21(r0)
    lwz 4, 0xb4(5)
    addi 3, 3, 0x660d
    stw 0, 0x20(1)
    mullw 3, 4, 3
    .4byte 0xC002F058 # lfs f0, lbl_80541FF8@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 3, 0xb4(5)
    lbz 0, 0x245(31)
    srwi 4, 3, 9
    lbz 3, 0x244(31)
    oris 4, 4, 0x3f80
    stw 0, 0x24(1)
    stw 4, 0x8(1)
    lfd 2, 0x20(1)
    lfs 1, 0x8(1)
    fsubs 2, 2, 3
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    add 0, 3, 0
    stw 0, 0x240(31)
    .4byte 0x4800000C # b .L_80335D38
L_80335D30:
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80335D38:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80335D4C:
    stwu 1, -0x20(1)
    li 0, 0x2000
    lis 4, 0x4330
    lis 5, 0x19
    stw 0, 0xb0(3)
    addi 5, 5, 0x660d
    .4byte 0xC022F080 # lfs f1, lbl_80542020@sda21(r0)
    li 0, 0x5
    psq_l 0, 0xc(3), 0, 0
    lfs 2, 0x14(3)
    stw 4, 0x10(1)
    .4byte 0xC862F078 # lfd f3, lbl_80542018@sda21(r0)
    psq_st 0, 0x230(3), 0, 0
    .4byte 0xC002F058 # lfs f0, lbl_80541FF8@sda21(r0)
    stfs 2, 0x238(3)
    stfs 1, 0x23c(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 8, 16
    stb 4, 0x244(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 8, 8
    stb 4, 0x245(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(6)
    mullw 4, 4, 5
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 5, 0xb4(6)
    lbz 4, 0x245(3)
    srwi 5, 5, 9
    oris 5, 5, 0x3f80
    stw 4, 0x14(1)
    stw 5, 0x8(1)
    lfd 2, 0x10(1)
    lfs 1, 0x8(1)
    fsubs 2, 2, 3
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    stw 4, 0x240(3)
    stb 0, 0x246(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stb 0, 0x247(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    stb 0, 0x248(3)
    addi 1, 1, 0x20
    blr

fn_80335E1C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805094F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805094F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335E6C
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
L_80335E6C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335EA4
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
L_80335EA4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335EDC
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
L_80335EDC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335F14
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
L_80335F14:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335F4C
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
L_80335F4C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335F84
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
L_80335F84:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335FBC
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
L_80335FBC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80335FF4
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
L_80335FF4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033602C
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
L_8033602C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80336040:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    li 30, 0x0
    stw 29, 0x34(1)
    mr 29, 3
    lwz 3, 0x26c(3)
    addi 0, 3, 0x1
    stw 0, 0x26c(29)
    lwz 0, 0x26c(29)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80336088
    li 0, 0x0
    li 31, 0x0
    stw 0, 0x260(29)
    .4byte 0x48000040 # b .L_803360C4
L_80336088:
    cmpwi 0, 0x10
    .4byte 0x40800014 # bge .L_803360A0
    li 0, 0x1
    li 31, 0x0
    stw 0, 0x260(29)
    .4byte 0x48000028 # b .L_803360C4
L_803360A0:
    cmpwi 0, 0x18
    .4byte 0x40800014 # bge .L_803360B8
    li 0, 0x2
    li 31, 0x1
    stw 0, 0x260(29)
    .4byte 0x48000010 # b .L_803360C4
L_803360B8:
    li 0, 0x3
    li 31, 0x2
    stw 0, 0x260(29)
L_803360C4:
    lwz 3, 0x24c(29)
    bl fn_80230CFC
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_803360E0
    li 0, 0x2b0
    stw 0, 0x270(29)
    .4byte 0x48000034 # b .L_80336110
L_803360E0:
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_803360F4
    li 0, 0x2b4
    stw 0, 0x270(29)
    .4byte 0x48000020 # b .L_80336110
L_803360F4:
    cmpwi 3, 0x2
    .4byte 0x40820010 # bne .L_80336108
    li 0, 0x2b8
    stw 0, 0x270(29)
    .4byte 0x4800000C # b .L_80336110
L_80336108:
    li 0, 0x2bc
    stw 0, 0x270(29)
L_80336110:
    lwz 6, 0x270(29)
    lis 4, 0x38e4
    lwz 5, 0x260(29)
    subi 0, 4, 0x71c7
    add 4, 6, 5
    stw 4, 0x270(29)
    lwz 5, 0x26c(29)
    mulhw 0, 0, 5
    srawi 0, 0, 3
    srwi 4, 0, 31
    add 0, 0, 4
    mulli 0, 0, 0x24
    subf 0, 0, 5
    cmpwi 0, 0x6
    .4byte 0x40800010 # bge .L_80336158
    li 0, 0x0
    stw 0, 0x264(29)
    .4byte 0x4800005C # b .L_803361B0
L_80336158:
    cmpwi 0, 0xc
    .4byte 0x40800010 # bge .L_8033616C
    li 0, 0x1
    stw 0, 0x264(29)
    .4byte 0x48000048 # b .L_803361B0
L_8033616C:
    cmpwi 0, 0x12
    .4byte 0x40800010 # bge .L_80336180
    li 0, 0x0
    stw 0, 0x264(29)
    .4byte 0x48000034 # b .L_803361B0
L_80336180:
    cmpwi 0, 0x18
    .4byte 0x40800010 # bge .L_80336194
    li 0, 0x2
    stw 0, 0x264(29)
    .4byte 0x48000020 # b .L_803361B0
L_80336194:
    cmpwi 0, 0x1e
    .4byte 0x40800010 # bge .L_803361A8
    li 0, 0x3
    stw 0, 0x264(29)
    .4byte 0x4800000C # b .L_803361B0
L_803361A8:
    li 0, 0x2
    stw 0, 0x264(29)
L_803361B0:
    lwz 4, 0x264(29)
    addi 0, 4, 0x296
    clrlwi 0, 0, 16
    stw 0, 0x274(29)
    lwz 0, 0x26c(29)
    cmpwi 0, 0x28
    .4byte 0x40810008 # ble .L_803361D0
    li 30, 0x1
L_803361D0:
    slwi 0, 3, 2
    lis 3, lbl_80471AE0@ha
    add 0, 31, 0
    psq_l 4, 0xc(29), 0, 0
    mulli 0, 0, 0xc
    lfs 3, 0x14(29)
    addi 5, 3, lbl_80471AE0@l
    stfs 3, 0x1c(1)
    addi 4, 1, 0x20
    add 3, 5, 0
    lfsx 2, 5, 0
    li 6, 0xff
    lfs 1, 0x4(3)
    li 7, -0x80
    lfs 0, 0x8(3)
    li 8, -0x80
    stfs 2, 0x8(1)
    li 9, 0x1
    psq_l 5, 0x1c(1), 1, 0
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    psq_l 0, 0x10(1), 1, 0
    psq_l 1, 0x8(1), 0, 0
    ps_add 0, 5, 0
    psq_st 4, 0x14(1), 0, 0
    ps_add 1, 4, 1
    psq_st 4, 0x0(4), 0, 0
    stfs 3, 0x28(1)
    psq_st 1, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
    lwz 3, 0x24c(29)
    lwz 5, 0x270(29)
    bl fn_80230498
    lwz 3, 0x250(29)
    addi 4, 1, 0x14
    lwz 5, 0x274(29)
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 0, 0x44(1)
    mr 3, 30
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80336294:
    blr

fn_80336298:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stmw 27, 0x7c(1)
    mr 28, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x41820374 # beq .L_80336628
    .4byte 0x40800014 # bge .L_803362CC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_803362D8
    .4byte 0x40800188 # bge .L_8033644C
    .4byte 0x4800092C # b .L_80336BF4
L_803362CC:
    cmpwi 0, 0x4
    .4byte 0x40800924 # bge .L_80336BF4
    .4byte 0x48000794 # b .L_80336A68
L_803362D8:
    lbz 0, 0x285(28)
    cmplwi 0, 0x1
    .4byte 0x40820078 # bne .L_80336358
    li 0, 0x1
    li 27, 0x0
    stw 0, 0x230(28)
L_803362F0:
    lwz 4, 0x24c(28)
    cmpw 27, 4
    .4byte 0x41820044 # beq .L_8033633C
    lwz 0, 0x250(28)
    cmpw 27, 0
    .4byte 0x41820038 # beq .L_8033633C
    mr 3, 27
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80336348
    mr 3, 27
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8033633C
    mr 3, 27
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80336348
L_8033633C:
    lwz 3, 0x278(28)
    addi 0, 3, 0x1
    stw 0, 0x278(28)
L_80336348:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFA0 # blt .L_803362F0
    .4byte 0x480008A0 # b .L_80336BF4
L_80336358:
    li 0, 0x1
    li 27, 0x0
    stb 0, 0x285(28)
L_80336364:
    lwz 4, 0x24c(28)
    cmpw 27, 4
    .4byte 0x41820044 # beq .L_803363B0
    lwz 0, 0x250(28)
    cmpw 27, 0
    .4byte 0x41820038 # beq .L_803363B0
    mr 3, 27
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803363CC
    mr 3, 27
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_803363B0
    mr 3, 27
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_803363CC
L_803363B0:
    mr 3, 27
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_803363CC
    li 0, 0x0
    stb 0, 0x285(28)
    .4byte 0x48000010 # b .L_803363D8
L_803363CC:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF90 # blt .L_80336364
L_803363D8:
    lbz 0, 0x285(28)
    cmplwi 0, 0x1
    .4byte 0x40820814 # bne .L_80336BF4
    li 27, 0x0
L_803363E8:
    lwz 4, 0x24c(28)
    cmpw 27, 4
    .4byte 0x41820044 # beq .L_80336434
    lwz 0, 0x250(28)
    cmpw 27, 0
    .4byte 0x41820038 # beq .L_80336434
    mr 3, 27
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8033643C
    mr 3, 27
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80336434
    mr 3, 27
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8033643C
L_80336434:
    mr 3, 27
    bl fn_80230AD4
L_8033643C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFA4 # blt .L_803363E8
    .4byte 0x480007AC # b .L_80336BF4
L_8033644C:
    bl fn_80336040
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082079C # bne .L_80336BF4
    li 27, 0x0
    mr 29, 28
L_80336464:
    lwz 4, 0x24c(28)
    cmpw 27, 4
    .4byte 0x41820044 # beq .L_803364B0
    lwz 0, 0x250(28)
    cmpw 27, 0
    .4byte 0x41820038 # beq .L_803364B0
    mr 3, 27
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820158 # bne .L_803365E4
    mr 3, 27
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_803364B0
    mr 3, 27
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820138 # bne .L_803365E4
L_803364B0:
    lwz 0, 0x2a0(29)
    cmplwi 0, 0x0
    .4byte 0x408200E8 # bne .L_803365A0
    cmpwi 27, 0x2
    .4byte 0x41820084 # beq .L_80336544
    .4byte 0x40800014 # bge .L_803364D8
    cmpwi 27, 0x0
    .4byte 0x41820018 # beq .L_803364E4
    .4byte 0x40800044 # bge .L_80336514
    .4byte 0x480000CC # b .L_803365A0
L_803364D8:
    cmpwi 27, 0x4
    .4byte 0x408000C4 # bge .L_803365A0
    .4byte 0x48000094 # b .L_80336574
L_803364E4:
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022F088 # lfs f1, lbl_80542028@sda21(r0)
    li 5, 0x477
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a0(29)
    .4byte 0x48000090 # b .L_803365A0
L_80336514:
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022F088 # lfs f1, lbl_80542028@sda21(r0)
    li 5, 0x479
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a0(29)
    .4byte 0x48000060 # b .L_803365A0
L_80336544:
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022F088 # lfs f1, lbl_80542028@sda21(r0)
    li 5, 0x476
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a0(29)
    .4byte 0x48000030 # b .L_803365A0
L_80336574:
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022F088 # lfs f1, lbl_80542028@sda21(r0)
    li 5, 0x478
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a0(29)
L_803365A0:
    lwz 0, 0x2b0(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_803365D8
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022F088 # lfs f1, lbl_80542028@sda21(r0)
    li 5, 0x475
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2b0(29)
L_803365D8:
    addi 0, 27, 0x281
    li 3, 0x0
    stbx 3, 28, 0
L_803365E4:
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FE74 # blt .L_80336464
    li 0, 0x2
    li 3, 0x5a
    stw 0, 0x230(28)
    li 0, 0xa
    stw 3, 0x234(28)
    stw 0, 0x25c(28)
    lwz 3, 0x24c(28)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x294(28), 0, 0
    stfs 0, 0x29c(28)
    .4byte 0x480005D0 # b .L_80336BF4
L_80336628:
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x41810044 # bgt .L_80336674
    lwz 0, 0x254(28)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80336668
    lwz 5, 0x4(28)
    addi 6, 1, 0x44
    psq_l 1, 0xc(28), 0, 0
    li 4, 0xd4
    lfs 0, 0x14(28)
    li 7, 0x1
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x4c(1)
    lwz 3, 0x24c(28)
    bl fn_8038BD08
L_80336668:
    li 0, 0x3
    stw 0, 0x230(28)
    .4byte 0x480000A8 # b .L_80336718
L_80336674:
    lwz 3, 0x25c(28)
    subi 0, 3, 0x1
    stw 0, 0x25c(28)
    lwz 0, 0x25c(28)
    cmpwi 0, 0x0
    .4byte 0x40820090 # bne .L_80336718
    lwz 3, 0x258(28)
    addi 0, 3, 0x1
    stw 0, 0x258(28)
    lwz 0, 0x258(28)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_803366B0
    li 0, 0x8
    stw 0, 0x25c(28)
    .4byte 0x4800006C # b .L_80336718
L_803366B0:
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_803366E4
    li 0, 0x3
    lis 3, 0x1
    stw 0, 0x25c(28)
    addi 4, 3, 0x8
    lwz 3, 0x24c(28)
    bl fn_80230FD0
    lis 4, 0x100
    lwz 3, 0x24c(28)
    addi 4, 4, 0x2
    bl fn_80230F44
    .4byte 0x48000038 # b .L_80336718
L_803366E4:
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_80336700
    li 3, 0x2
    li 0, 0x1e
    stw 3, 0x258(28)
    stw 0, 0x25c(28)
    .4byte 0x4800001C # b .L_80336718
L_80336700:
    cmpwi 0, 0x3
    .4byte 0x41800014 # blt .L_80336718
    li 3, 0x2
    li 0, 0x5a
    stw 3, 0x258(28)
    stw 0, 0x25c(28)
L_80336718:
    mr 31, 28
    li 30, 0x0
    li 29, 0x0
L_80336724:
    lwz 4, 0x24c(28)
    cmpw 29, 4
    .4byte 0x41820044 # beq .L_80336770
    lwz 0, 0x250(28)
    cmpw 29, 0
    .4byte 0x41820038 # beq .L_80336770
    mr 3, 29
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820308 # bne .L_80336A54
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80336770
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408202E8 # bne .L_80336A54
L_80336770:
    lwz 3, 0x278(28)
    lis 5, 0x4330
    xoris 0, 30, 0x8000
    lfs 6, 0x298(28)
    xoris 3, 3, 0x8000
    lfs 7, 0x29c(28)
    stw 3, 0x64(1)
    addi 4, 1, 0x50
    .4byte 0xC882F0A0 # lfd f4, lbl_80542040@sda21(r0)
    mr 3, 29
    stw 5, 0x60(1)
    li 6, 0xff
    .4byte 0xC002F088 # lfs f0, lbl_80542028@sda21(r0)
    li 7, -0x80
    lfd 1, 0x60(1)
    li 8, -0x80
    stw 0, 0x6c(1)
    li 9, 0x1
    fsubs 3, 1, 4
    .4byte 0xC042F08C # lfs f2, lbl_8054202C@sda21(r0)
    stw 5, 0x68(1)
    lfs 5, 0x27c(28)
    lfd 1, 0x68(1)
    fsubs 3, 3, 0
    lfs 0, 0x294(28)
    fsubs 1, 1, 4
    stfs 6, 0x3c(1)
    stfs 7, 0x58(1)
    fnmsubs 1, 3, 2, 1
    stfs 7, 0x40(1)
    fmadds 0, 5, 1, 0
    stfs 0, 0x38(1)
    psq_l 0, 0x38(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 5, 0x258(28)
    addi 5, 5, 0x31a
    bl fn_80230498
    lwz 3, 0x2a0(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80336824
    addi 4, 1, 0x50
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_80336824:
    lwz 3, 0x2b0(31)
    cmplwi 3, 0x0
    .4byte 0x4182007C # beq .L_803368A8
    lwz 4, 0x278(28)
    lis 7, 0x4330
    xoris 0, 30, 0x8000
    stw 7, 0x68(1)
    xoris 4, 4, 0x8000
    .4byte 0xC882F0A0 # lfd f4, lbl_80542040@sda21(r0)
    stw 4, 0x6c(1)
    addi 4, 1, 0x2c
    .4byte 0xC002F088 # lfs f0, lbl_80542028@sda21(r0)
    li 5, 0x0
    lfd 1, 0x68(1)
    li 6, -0x1
    stw 7, 0x60(1)
    li 7, 0x1
    fsubs 3, 1, 4
    .4byte 0xC042F08C # lfs f2, lbl_8054202C@sda21(r0)
    stw 0, 0x64(1)
    lfs 5, 0x27c(28)
    lfd 1, 0x60(1)
    fsubs 3, 3, 0
    lfs 0, 0x294(28)
    fsubs 1, 1, 4
    lfs 6, 0x29c(28)
    lfs 4, 0x298(28)
    fnmsubs 1, 3, 2, 1
    stfs 4, 0x30(1)
    stfs 6, 0x34(1)
    fmadds 0, 5, 1, 0
    stfs 0, 0x2c(1)
    bl fn_8013CB44
L_803368A8:
    lbz 0, 0x280(28)
    cmplwi 0, 0x0
    .4byte 0x40820098 # bne .L_80336948
    lwz 3, 0x278(28)
    lis 4, 0x4330
    xoris 0, 30, 0x8000
    stw 4, 0x68(1)
    xoris 3, 3, 0x8000
    .4byte 0xC862F0A0 # lfd f3, lbl_80542040@sda21(r0)
    stw 3, 0x6c(1)
    mr 3, 28
    .4byte 0xC002F088 # lfs f0, lbl_80542028@sda21(r0)
    addi 5, 1, 0x20
    lfd 1, 0x68(1)
    stw 0, 0x64(1)
    fsubs 2, 1, 3
    .4byte 0xC0A2F08C # lfs f5, lbl_8054202C@sda21(r0)
    stw 4, 0x60(1)
    lfs 4, 0x27c(28)
    lfd 1, 0x60(1)
    fsubs 2, 2, 0
    fadds 4, 5, 4
    lfs 0, 0x294(28)
    fsubs 1, 1, 3
    lfs 6, 0x29c(28)
    lfs 3, 0x298(28)
    fnmsubs 1, 2, 5, 1
    stfs 3, 0x24(1)
    stfs 6, 0x28(1)
    fmadds 0, 4, 1, 0
    stfs 0, 0x20(1)
    lwz 12, 0x0(28)
    lwz 4, 0x4(28)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80336948
    li 0, 0x1
    stb 0, 0x280(28)
L_80336948:
    lfs 1, 0x27c(28)
    .4byte 0xC002F090 # lfs f0, lbl_80542030@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_80336980
    lwz 0, 0x258(28)
    cmpwi 0, 0x2
    .4byte 0x41800020 # blt .L_80336980
    lbz 0, 0x280(28)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80336980
    .4byte 0xC002F08C # lfs f0, lbl_8054202C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x27c(28)
    .4byte 0x480000D4 # b .L_80336A50
L_80336980:
    lwz 0, 0x258(28)
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_80336998
    lbz 0, 0x280(28)
    cmplwi 0, 0x1
    .4byte 0x408200BC # bne .L_80336A50
L_80336998:
    addi 27, 29, 0x281
    lbzx 0, 28, 27
    cmplwi 0, 0x0
    .4byte 0x408200AC # bne .L_80336A50
    .4byte 0xC062F094 # lfs f3, lbl_80542034@sda21(r0)
    addi 4, 1, 0x14
    lfs 0, 0x50(1)
    li 5, 0xcb
    lfs 2, 0x54(1)
    li 6, 0x0
    .4byte 0xC022F098 # lfs f1, lbl_80542038@sda21(r0)
    fadds 3, 3, 0
    lfs 0, 0x58(1)
    li 7, 0x1
    fsubs 2, 2, 1
    .4byte 0xC022F088 # lfs f1, lbl_80542028@sda21(r0)
    stfs 3, 0x14(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x18(1)
    li 10, 0x1
    stfs 0, 0x1c(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    .4byte 0xC062F094 # lfs f3, lbl_80542034@sda21(r0)
    addi 4, 1, 0x8
    lfs 0, 0x50(1)
    li 5, 0xcc
    lfs 2, 0x54(1)
    li 6, 0x0
    .4byte 0xC022F098 # lfs f1, lbl_80542038@sda21(r0)
    fadds 3, 3, 0
    lfs 0, 0x58(1)
    li 7, 0x1
    fsubs 2, 2, 1
    .4byte 0xC022F088 # lfs f1, lbl_80542028@sda21(r0)
    stfs 3, 0x8(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0xc(1)
    li 10, 0x1
    stfs 0, 0x10(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    li 0, 0x1
    stbx 0, 28, 27
L_80336A50:
    addi 30, 30, 0x1
L_80336A54:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FCC4 # blt .L_80336724
    .4byte 0x48000190 # b .L_80336BF4
L_80336A68:
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x41810184 # bgt .L_80336BF4
    lwz 3, 0x24c(28)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x41820174 # beq .L_80336BF4
    li 27, 0x1
    li 29, 0x0
L_80336A8C:
    lwz 4, 0x24c(28)
    cmpw 29, 4
    .4byte 0x41820044 # beq .L_80336AD8
    lwz 0, 0x250(28)
    cmpw 29, 0
    .4byte 0x41820038 # beq .L_80336AD8
    mr 3, 29
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80336AF4
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80336AD8
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80336AF4
L_80336AD8:
    mr 3, 29
    li 4, 0x0
    bl fn_80230224
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80336AF4
    li 27, 0x0
    .4byte 0x48000010 # b .L_80336B00
L_80336AF4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF90 # blt .L_80336A8C
L_80336B00:
    cmpwi 27, 0x1
    .4byte 0x408200F0 # bne .L_80336BF4
    lwz 4, 0x2a0(28)
    li 3, 0x1
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336B28
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336B28:
    lwz 4, 0x2b0(28)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336B44
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336B44:
    lwz 4, 0x2a4(28)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336B60
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336B60:
    lwz 4, 0x2b4(28)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336B7C
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336B7C:
    lwz 4, 0x2a8(28)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336B98
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336B98:
    lwz 4, 0x2b8(28)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336BB4
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336BB4:
    lwz 4, 0x2ac(28)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336BD0
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336BD0:
    lwz 4, 0x2bc(28)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80336BEC
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
L_80336BEC:
    li 0, 0x0
    stb 0, 0x11c(28)
L_80336BF4:
    lwz 3, 0x234(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80336C08
    subi 0, 3, 0x1
    stw 0, 0x234(28)
L_80336C08:
    lwz 3, 0x238(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80336C1C
    subi 0, 3, 0x1
    stw 0, 0x238(28)
L_80336C1C:
    lwz 3, 0x23c(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80336C30
    subi 0, 3, 0x1
    stw 0, 0x23c(28)
L_80336C30:
    lmw 27, 0x7c(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80336C44:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    lwz 30, 0x198(3)
    bl fn_8020D58C
    lbz 0, 0x1(3)
    mr 8, 3
    mr 4, 29
    mr 5, 31
    mulli 3, 0, 0x784
    mr 6, 30
    li 7, 0x0
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80336CA8
    li 3, 0x1
    .4byte 0x48000148 # b .L_80336DEC
L_80336CA8:
    mr 3, 31
    mr 4, 29
    bl fn_8022461C
    clrlwi. 30, 3, 16
    .4byte 0x4182002C # beq .L_80336CE4
    cmpwi 30, 0x2
    .4byte 0x41820024 # beq .L_80336CE4
    cmpwi 30, 0x50
    .4byte 0x4182001C # beq .L_80336CE4
    cmpwi 30, 0x39
    .4byte 0x41820014 # beq .L_80336CE4
    cmpwi 30, 0xd
    .4byte 0x4182000C # beq .L_80336CE4
    cmpwi 30, 0x61
    .4byte 0x4082000C # bne .L_80336CEC
L_80336CE4:
    li 3, 0x0
    .4byte 0x48000104 # b .L_80336DEC
L_80336CEC:
    cmpwi 30, 0x22
    .4byte 0x4082001C # bne .L_80336D0C
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80336D0C
    li 3, 0x0
    .4byte 0x480000E4 # b .L_80336DEC
L_80336D0C:
    cmpwi 30, 0x25
    .4byte 0x4082001C # bne .L_80336D2C
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80336D2C
    li 3, 0x0
    .4byte 0x480000C4 # b .L_80336DEC
L_80336D2C:
    cmpwi 30, 0x4
    .4byte 0x40820028 # bne .L_80336D58
    lfs 0, 0x4(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x41800090 # blt .L_80336DDC
    li 3, 0x0
    .4byte 0x48000098 # b .L_80336DEC
L_80336D58:
    cmpwi 30, 0x5
    .4byte 0x40820028 # bne .L_80336D84
    lfs 0, 0x4(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_80336DDC
    li 3, 0x0
    .4byte 0x4800006C # b .L_80336DEC
L_80336D84:
    cmpwi 30, 0x6
    .4byte 0x40820028 # bne .L_80336DB0
    lfs 0, 0x0(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x41800038 # blt .L_80336DDC
    li 3, 0x0
    .4byte 0x48000040 # b .L_80336DEC
L_80336DB0:
    cmpwi 30, 0x7
    .4byte 0x40820028 # bne .L_80336DDC
    lfs 0, 0x0(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_80336DDC
    li 3, 0x0
    .4byte 0x48000014 # b .L_80336DEC
L_80336DDC:
    mr 3, 31
    mr 4, 29
    li 5, 0x1
    bl fn_802265DC
L_80336DEC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80336E08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 3, 0x90(3)
    clrlwi 3, 3, 30
    stw 3, 0x24c(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 2, 28
    stw 3, 0x250(31)
    stw 0, 0x254(31)
    lwz 3, 0x24c(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x24(31), 0, 0
    stfs 0, 0x2c(31)
    lwz 3, 0x24c(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    li 3, 0x0
    li 0, 0x1
    li 30, 0x0
    stw 3, 0x2a0(31)
    stw 3, 0x2b0(31)
    stb 0, 0x281(31)
    stw 3, 0x2a4(31)
    stw 3, 0x2b4(31)
    stb 0, 0x282(31)
    stw 3, 0x2a8(31)
    stw 3, 0x2b8(31)
    stb 0, 0x283(31)
    stw 3, 0x2ac(31)
    stw 3, 0x2bc(31)
    stb 0, 0x284(31)
    stw 3, 0x240(31)
    stw 3, 0x244(31)
    stw 3, 0x248(31)
    stw 3, 0x234(31)
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    stb 0, 0x285(31)
L_80336ECC:
    lwz 4, 0x24c(31)
    cmpw 30, 4
    .4byte 0x41820044 # beq .L_80336F18
    lwz 0, 0x250(31)
    cmpw 30, 0
    .4byte 0x41820038 # beq .L_80336F18
    mr 3, 30
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80336F34
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80336F18
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80336F34
L_80336F18:
    mr 3, 30
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80336F34
    li 0, 0x0
    stb 0, 0x285(31)
    .4byte 0x48000010 # b .L_80336F40
L_80336F34:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF90 # blt .L_80336ECC
L_80336F40:
    lbz 0, 0x285(31)
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_80336FB0
    li 30, 0x0
L_80336F50:
    lwz 4, 0x24c(31)
    cmpw 30, 4
    .4byte 0x41820044 # beq .L_80336F9C
    lwz 0, 0x250(31)
    cmpw 30, 0
    .4byte 0x41820038 # beq .L_80336F9C
    mr 3, 30
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_80336FA4
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80336F9C
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80336FA4
L_80336F9C:
    mr 3, 30
    bl fn_80230AD4
L_80336FA4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFA4 # blt .L_80336F50
L_80336FB0:
    li 3, 0x0
    .4byte 0xC002F0A8 # lfs f0, lbl_80542048@sda21(r0)
    stw 3, 0x258(31)
    li 0, 0x1
    stfs 0, 0x27c(31)
    stb 3, 0x280(31)
    stw 3, 0x260(31)
    stw 3, 0x268(31)
    stw 3, 0x26c(31)
    stw 3, 0x270(31)
    stw 3, 0x274(31)
    stw 3, 0x264(31)
    stw 3, 0x278(31)
    stfs 0, 0x29c(31)
    stfs 0, 0x298(31)
    stfs 0, 0x294(31)
    stb 0, 0x11f(31)
    stw 3, 0x230(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80337010:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x41820054 # beq .L_80337088
    lis 3, lbl_804ABA90@ha
    mr 31, 28
    addi 0, 3, lbl_804ABA90@l
    li 30, 0x0
    stw 0, 0x0(28)
L_8033704C:
    lwz 3, 0x2a0(31)
    bl fn_801EE434
    lwz 3, 0x2b0(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFE4 # blt .L_8033704C
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_80337088
    mr 3, 28
    bl dtor_80084580
L_80337088:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803370AC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805095F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805095F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803370FC
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
L_803370FC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80337134
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
L_80337134:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033716C
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
L_8033716C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803371A4
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
L_803371A4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803371DC
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
L_803371DC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80337214
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
L_80337214:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033724C
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
L_8033724C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80337284
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
L_80337284:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803372BC
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
L_803372BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803372D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80337314
    lis 5, lbl_804ABAE8@ha
    li 4, 0x0
    addi 0, 5, lbl_804ABAE8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80337314
    mr 3, 30
    bl dtor_80084580
L_80337314:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80337330:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022F0B0 # lfs f1, lbl_80542050@sda21(r0)
    lis 4, lbl_80471BA0@ha
    stw 0, 0x24(1)
    addi 4, 4, lbl_80471BA0@l
    fmr 2, 1
    li 6, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    li 7, -0x1
    lwz 5, 0x234(3)
    addi 5, 5, 0x1af
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x234(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x1af
    bl fn_803075AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803373B0:
    lwz 4, 0x230(3)
    subi 0, 4, 0x1
    stw 0, 0x230(3)
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 0, 0x90(3)
    clrlwi. 0, 0, 28
    .4byte 0x4082001C # bne .L_803373EC
    lwz 4, 0x234(3)
    addi 0, 4, 0x1
    stw 0, 0x234(3)
    lwz 0, 0x234(3)
    clrlwi 0, 0, 31
    stw 0, 0x234(3)
L_803373EC:
    li 0, 0xa
    stw 0, 0x230(3)
    blr

fn_803373F8:
    li 0, 0x2710
    li 4, 0x0
    stw 0, 0x108(3)
    li 0, 0xa
    stw 4, 0x234(3)
    stw 0, 0x230(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    cmplwi 0, 0x2
    bnelr
    li 0, 0x1
    stw 0, 0x234(3)
    blr

fn_8033742C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805096F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805096F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033747C
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
L_8033747C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803374B4
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
L_803374B4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803374EC
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
L_803374EC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80337524
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
L_80337524:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033755C
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
L_8033755C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80337594
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
L_80337594:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803375CC
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
L_803375CC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80337604
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
L_80337604:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033763C
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
L_8033763C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80337650:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80337694
    lis 5, lbl_804AC010@ha
    li 4, 0x0
    addi 0, 5, lbl_804AC010@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80337694
    mr 3, 30
    bl dtor_80084580
L_80337694:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803376B0:
    stwu 1, -0x20(1)
    lwz 4, 0x234(3)
    subi 0, 4, 0x1
    stw 0, 0x234(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x41810338 # bgt .L_80337A00
    lwz 4, 0x238(3)
    addi 0, 4, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x250(3)
    cmplwi 0, 0xf
    .4byte 0x418102B8 # bgt .L_80337998
    lis 4, jumptable_804AC064@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AC064@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80337720
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_80337720
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_80337720
    cmpwi 0, 0x4
    .4byte 0x40820038 # bne .L_80337754
L_80337720:
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 4, 4, lbl_80471BB8@l
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 5, 0x250(3)
    lwz 0, 0x238(3)
    slwi 5, 5, 4
    lwzx 4, 4, 5
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x48000248 # b .L_80337998
L_80337754:
    cmpwi 0, 0x5
    .4byte 0x40820240 # bne .L_80337998
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 5, 4, lbl_80471BB8@l
    clrlwi 0, 0, 30
    stw 0, 0x238(3)
    lwz 4, 0x250(3)
    lwz 0, 0x238(3)
    slwi 4, 4, 4
    add 4, 5, 4
    slwi 0, 0, 2
    lwz 4, 0x4(4)
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x48000208 # b .L_80337998
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_803377B8
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_803377B8
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_803377B8
    cmpwi 0, 0x4
    .4byte 0x40820038 # bne .L_803377EC
L_803377B8:
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 4, 4, lbl_80471BB8@l
    clrlwi 0, 0, 30
    stw 0, 0x238(3)
    lwz 5, 0x250(3)
    lwz 0, 0x238(3)
    slwi 5, 5, 4
    lwzx 4, 4, 5
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x480001B0 # b .L_80337998
L_803377EC:
    cmpwi 0, 0x5
    .4byte 0x408201A8 # bne .L_80337998
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 5, 4, lbl_80471BB8@l
    clrlwi 0, 0, 30
    stw 0, 0x238(3)
    lwz 4, 0x250(3)
    lwz 0, 0x238(3)
    slwi 4, 4, 4
    add 4, 5, 4
    slwi 0, 0, 2
    lwz 4, 0x4(4)
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x48000170 # b .L_80337998
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80337850
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_80337850
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_80337850
    cmpwi 0, 0x4
    .4byte 0x40820038 # bne .L_80337884
L_80337850:
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 4, 4, lbl_80471BB8@l
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 5, 0x250(3)
    lwz 0, 0x238(3)
    slwi 5, 5, 4
    lwzx 4, 4, 5
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x48000118 # b .L_80337998
L_80337884:
    cmpwi 0, 0x5
    .4byte 0x40820110 # bne .L_80337998
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x40800038 # bge .L_803378CC
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 4, 4, lbl_80471BB8@l
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 5, 0x250(3)
    lwz 0, 0x238(3)
    slwi 5, 5, 4
    lwzx 4, 4, 5
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x480000D0 # b .L_80337998
L_803378CC:
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 5, 4, lbl_80471BB8@l
    clrlwi 0, 0, 30
    stw 0, 0x238(3)
    lwz 4, 0x250(3)
    lwz 0, 0x238(3)
    slwi 4, 4, 4
    add 4, 5, 4
    slwi 0, 0, 2
    lwz 4, 0x4(4)
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x48000098 # b .L_80337998
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80337928
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_80337928
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_80337928
    cmpwi 0, 0x4
    .4byte 0x40820038 # bne .L_8033795C
L_80337928:
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 4, 4, lbl_80471BB8@l
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 5, 0x250(3)
    lwz 0, 0x238(3)
    slwi 5, 5, 4
    lwzx 4, 4, 5
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x234(3)
    .4byte 0x48000040 # b .L_80337998
L_8033795C:
    cmpwi 0, 0x5
    .4byte 0x40820038 # bne .L_80337998
    lwz 0, 0x238(3)
    lis 4, lbl_80471BB8@ha
    addi 5, 4, lbl_80471BB8@l
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 4, 0x250(3)
    lwz 0, 0x238(3)
    slwi 4, 4, 4
    add 4, 5, 4
    slwi 0, 0, 2
    lwz 4, 0x4(4)
    lwzx 0, 4, 0
    stw 0, 0x234(3)
L_80337998:
    lwz 0, 0x238(3)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80337A00
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC002F0BC # lfs f0, lbl_8054205C@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC042F0B8 # lfs f2, lbl_80542058@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lwz 4, 0x234(3)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    add 0, 4, 0
    stw 0, 0x234(3)
L_80337A00:
    addi 1, 1, 0x20
    blr

fn_80337A08:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    lwz 4, 0x250(3)
    lwz 31, 0x248(3)
    cmpwi 4, 0xe
    .4byte 0x4182001C # beq .L_80337A48
    .4byte 0x40800024 # bge .L_80337A54
    cmpwi 4, 0x7
    .4byte 0x4080001C # bge .L_80337A54
    cmpwi 4, 0x5
    .4byte 0x40800008 # bge .L_80337A48
    .4byte 0x48000010 # b .L_80337A54
L_80337A48:
    li 0, 0x0
    stw 0, 0x248(30)
    .4byte 0x48000220 # b .L_80337C70
L_80337A54:
    lwz 0, 0x230(30)
    cmpwi 0, 0x3
    .4byte 0x4182010C # beq .L_80337B68
    .4byte 0x40800018 # bge .L_80337A78
    cmpwi 0, 0x2
    .4byte 0x408001C8 # bge .L_80337C30
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80337A84
    .4byte 0x480001BC # b .L_80337C30
L_80337A78:
    cmpwi 0, 0x5
    .4byte 0x418200EC # beq .L_80337B68
    .4byte 0x408001B0 # bge .L_80337C30
L_80337A84:
    lwz 3, 0x244(30)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_80337A9C
    subi 0, 3, 0x1
    stw 0, 0x244(30)
    .4byte 0x480001D8 # b .L_80337C70
L_80337A9C:
    li 0, 0x14
    mr 3, 30
    stw 0, 0x244(30)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    lfs 1, 0x8(1)
    .4byte 0xC002F0C0 # lfs f0, lbl_80542060@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80337B5C
    lfs 1, 0xc(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002F0C4 # lfs f0, lbl_80542064@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80337B0C
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80337B18
L_80337B0C:
    li 0, 0x3
    stw 0, 0x248(30)
    .4byte 0x4800011C # b .L_80337C30
L_80337B18:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80337B34
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80337B34
    li 0, 0x1
    stw 0, 0x248(30)
    .4byte 0x48000100 # b .L_80337C30
L_80337B34:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80337B50
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80337B50
    li 0, 0x2
    stw 0, 0x248(30)
    .4byte 0x480000E4 # b .L_80337C30
L_80337B50:
    li 0, 0x0
    stw 0, 0x248(30)
    .4byte 0x480000D8 # b .L_80337C30
L_80337B5C:
    li 0, 0x3
    stw 0, 0x248(30)
    .4byte 0x480000CC # b .L_80337C30
L_80337B68:
    lwz 0, 0x258(30)
    cmpwi 4, 0xe
    lwz 3, 0x25c(30)
    mullw 5, 0, 0
    mullw 6, 3, 3
    .4byte 0x4182003C # beq .L_80337BB8
    .4byte 0x40800010 # bge .L_80337B90
    cmpwi 4, 0x7
    .4byte 0x40800010 # bge .L_80337B98
    .4byte 0x4800002C # b .L_80337BB8
L_80337B90:
    cmpwi 4, 0x10
    .4byte 0x40800024 # bge .L_80337BB8
L_80337B98:
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_80337BAC
    li 0, 0x0
    stw 0, 0x248(30)
    .4byte 0x48000070 # b .L_80337C18
L_80337BAC:
    li 0, 0x1
    stw 0, 0x248(30)
    .4byte 0x48000064 # b .L_80337C18
L_80337BB8:
    cmpwi 5, 0x0
    .4byte 0x40820018 # bne .L_80337BD4
    cmpwi 6, 0x0
    .4byte 0x40820010 # bne .L_80337BD4
    li 0, 0x2
    stw 0, 0x248(30)
    .4byte 0x48000048 # b .L_80337C18
L_80337BD4:
    cmpw 5, 6
    .4byte 0x40810024 # ble .L_80337BFC
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_80337BF0
    li 0, 0x0
    stw 0, 0x248(30)
    .4byte 0x4800002C # b .L_80337C18
L_80337BF0:
    li 0, 0x1
    stw 0, 0x248(30)
    .4byte 0x48000020 # b .L_80337C18
L_80337BFC:
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_80337C10
    li 0, 0x2
    stw 0, 0x248(30)
    .4byte 0x4800000C # b .L_80337C18
L_80337C10:
    li 0, 0x3
    stw 0, 0x248(30)
L_80337C18:
    lwz 0, 0x230(30)
    cmpwi 0, 0x5
    .4byte 0x40820010 # bne .L_80337C30
    lwz 0, 0x248(30)
    xori 0, 0, 0x1
    stw 0, 0x248(30)
L_80337C30:
    lwz 0, 0x250(30)
    cmpwi 0, 0x4
    .4byte 0x40820038 # bne .L_80337C70
    lwz 0, 0x248(30)
    cmpwi 0, 0x2
    .4byte 0x4180000C # blt .L_80337C50
    cmpwi 31, 0x2
    .4byte 0x41800014 # blt .L_80337C60
L_80337C50:
    cmpwi 0, 0x2
    .4byte 0x4080001C # bge .L_80337C70
    cmpwi 31, 0x2
    .4byte 0x41800014 # blt .L_80337C70
L_80337C60:
    li 3, 0x0
    li 0, 0x14
    stw 3, 0x238(30)
    stw 0, 0x234(30)
L_80337C70:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80337C88:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, lbl_80471BB8@ha
    stw 30, 0x18(1)
    addi 9, 3, lbl_80471BB8@l
    lwz 5, 0x230(31)
    cmpwi 5, 0x2
    .4byte 0x41820124 # beq .L_80337DD4
    lwz 0, 0x250(31)
    addi 3, 9, 0x100
    addi 4, 9, 0x194
    li 7, 0x0
    slwi 10, 0, 3
    lwzx 3, 3, 10
    cmpwi 3, 0x2
    .4byte 0x40820008 # bne .L_80337CD8
    addi 4, 9, 0x180
L_80337CD8:
    cmpwi 5, 0x0
    .4byte 0x41820018 # beq .L_80337CF4
    subi 3, 5, 0x3
    cmplwi 3, 0x1
    .4byte 0x4081000C # ble .L_80337CF4
    cmpwi 5, 0x1
    .4byte 0x40820040 # bne .L_80337D30
L_80337CF4:
    lwz 5, 0x248(31)
    addi 8, 9, 0x0
    slwi 6, 0, 4
    lwz 3, 0x238(31)
    add 6, 8, 6
    addi 8, 9, 0x100
    add 8, 8, 10
    slwi 5, 5, 4
    slwi 3, 3, 2
    lwz 6, 0x8(6)
    add 3, 5, 3
    lwz 5, 0x4(8)
    lwzx 3, 6, 3
    add 30, 5, 3
    .4byte 0x4800003C # b .L_80337D68
L_80337D30:
    lwz 5, 0x248(31)
    addi 8, 9, 0x0
    slwi 6, 0, 4
    lwz 3, 0x238(31)
    add 6, 8, 6
    addi 8, 9, 0x100
    add 8, 8, 10
    slwi 5, 5, 4
    slwi 3, 3, 2
    lwz 6, 0xc(6)
    add 3, 5, 3
    lwz 5, 0x4(8)
    lwzx 3, 6, 3
    add 30, 5, 3
L_80337D68:
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_80337D74
    li 7, 0x3
L_80337D74:
    .4byte 0xC022F0BC # lfs f1, lbl_8054205C@sda21(r0)
    mr 3, 31
    mr 5, 30
    li 6, 0x0
    fmr 2, 1
    bl fn_801F06F0
    lwz 0, 0x250(31)
    cmpwi 0, 0x4
    .4byte 0x40800040 # bge .L_80337DD4
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80337DA4
    .4byte 0x48000034 # b .L_80337DD4
L_80337DA4:
    li 0, 0x0
    mr 6, 30
    stw 0, 0x8(1)
    addi 5, 31, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
L_80337DD4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80337DEC:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC002F0D4 # lfs f0, lbl_80542074@sda21(r0)
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    lfs 1, 0x60(3)
    stfs 1, 0x50(1)
    fsubs 1, 1, 0
    lfs 2, 0x64(3)
    stfs 2, 0x54(1)
    lfs 2, 0x68(3)
    stfs 2, 0x58(1)
    fadds 0, 2, 0
    lfs 2, 0x6c(3)
    stfs 2, 0x5c(1)
    stfs 1, 0x50(1)
    stfs 0, 0x58(1)
    lwz 0, 0x254(3)
    cmpwi 0, 0x1
    .4byte 0x4082005C # bne .L_80337E98
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80337E5C
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_80337E5C
    cmpwi 0, 0x1
    .4byte 0x40820040 # bne .L_80337E98
L_80337E5C:
    lfs 0, 0x50(1)
    lfs 4, 0x26c(31)
    lfs 1, 0x58(1)
    fadds 3, 0, 4
    lfs 2, 0x54(1)
    lfs 0, 0x5c(1)
    fadds 1, 1, 4
    stfs 3, 0x50(1)
    lfs 3, 0x270(31)
    fadds 2, 2, 3
    stfs 1, 0x58(1)
    fadds 0, 0, 3
    stfs 2, 0x54(1)
    stfs 0, 0x5c(1)
    .4byte 0x4800003C # b .L_80337ED0
L_80337E98:
    lfs 0, 0x50(1)
    lfs 4, 0xc(31)
    lfs 1, 0x58(1)
    fadds 3, 0, 4
    lfs 2, 0x54(1)
    lfs 0, 0x5c(1)
    fadds 1, 1, 4
    stfs 3, 0x50(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x58(1)
    fadds 0, 0, 3
    stfs 2, 0x54(1)
    stfs 0, 0x5c(1)
L_80337ED0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_80337EEC
    lwz 4, 0x4(31)
    addi 3, 1, 0x50
    lwz 5, 0x198(31)
    bl fn_80239914
L_80337EEC:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4182031C # beq .L_80338230
    .4byte 0x4080001C # bge .L_80337F34
    cmpwi 0, 0x1
    .4byte 0x41820124 # beq .L_80338044
    .4byte 0x408001B4 # bge .L_803380D8
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80337F44
    .4byte 0x48000608 # b .L_80338538
L_80337F34:
    cmpwi 0, 0x5
    .4byte 0x418204A4 # beq .L_803383DC
    .4byte 0x408005FC # bge .L_80338538
    .4byte 0x480005AC # b .L_803384EC
L_80337F44:
    lbz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_80337FB0
    bl fn_8023A30C
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_80337FB0
    lfs 3, 0x27c(31)
    li 0, 0x3
    lfs 2, 0x10(31)
    lfs 1, 0x278(31)
    lfs 0, 0xc(31)
    fsubs 4, 3, 2
    .4byte 0xC062F0C8 # lfs f3, lbl_80542068@sda21(r0)
    fsubs 2, 1, 0
    .4byte 0xC022F0CC # lfs f1, lbl_8054206C@sda21(r0)
    fdivs 4, 4, 3
    .4byte 0xC002F0D0 # lfs f0, lbl_80542070@sda21(r0)
    stfs 1, 0x1c(1)
    fdivs 2, 2, 3
    stfs 4, 0x18(1)
    stfs 2, 0x14(1)
    psq_l 2, 0x14(1), 0, 0
    psq_st 2, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    stfs 0, 0x260(31)
    stw 0, 0x230(31)
    .4byte 0x4800058C # b .L_80338538
L_80337FB0:
    lwz 4, 0x4(31)
    addi 3, 1, 0x50
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x24c(31)
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4180055C # blt .L_80338538
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002F0D8 # lfs f0, lbl_80542078@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820548 # bne .L_80338538
    lwz 3, 0x24c(31)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820538 # beq .L_80338538
    lwz 5, 0x198(31)
    addi 7, 1, 0x44
    lwz 6, 0x4(31)
    li 8, 0x0
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x4c(1)
    lwz 3, 0x24c(31)
    lwz 4, 0x264(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820504 # beq .L_80338538
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480004F8 # b .L_80338538
L_80338044:
    lwz 4, 0x4(31)
    addi 3, 1, 0x50
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x24c(31)
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_803380D8
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002F0D8 # lfs f0, lbl_80542078@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408204B4 # bne .L_80338538
    lwz 3, 0x24c(31)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418204A4 # beq .L_80338538
    lwz 5, 0x198(31)
    addi 7, 1, 0x38
    lwz 6, 0x4(31)
    li 8, 0x0
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x40(1)
    lwz 3, 0x24c(31)
    lwz 4, 0x264(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_803380D8
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000464 # b .L_80338538
L_803380D8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820444 # bne .L_80338538
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820434 # bne .L_80338538
    li 0, 0x1
    lis 4, 0x4330
    stw 0, 0x254(31)
    li 3, 0x5
    .4byte 0xC002F0D8 # lfs f0, lbl_80542078@sda21(r0)
    li 0, 0x0
    lwz 5, 0x90(31)
    stw 4, 0x60(1)
    extrwi 5, 5, 2, 14
    .4byte 0xC8A2F0E0 # lfd f5, lbl_80542080@sda21(r0)
    mulli 5, 5, 0x46
    stw 4, 0x68(1)
    stfs 0, 0x34(1)
    addi 4, 5, 0x1e
    stw 4, 0x23c(31)
    psq_l 2, 0x278(31), 0, 0
    lfs 1, 0x280(31)
    psq_st 2, 0xc(31), 0, 0
    stfs 1, 0x14(31)
    lwz 4, 0x23c(31)
    lfs 2, 0x28(31)
    xoris 4, 4, 0x8000
    lfs 1, 0x10(31)
    stw 4, 0x64(1)
    lfs 3, 0x24(31)
    fsubs 6, 2, 1
    stw 4, 0x6c(1)
    lfd 4, 0x60(1)
    lfs 2, 0xc(31)
    lfd 1, 0x68(1)
    fsubs 4, 4, 5
    fsubs 2, 3, 2
    fsubs 1, 1, 5
    fdivs 3, 6, 4
    fdivs 1, 2, 1
    stfs 3, 0x30(1)
    stfs 1, 0x2c(1)
    psq_l 1, 0x2c(1), 0, 0
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    lwz 4, 0x23c(31)
    stw 4, 0x240(31)
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    lwz 4, 0x250(31)
    cmpwi 4, 0x4
    .4byte 0x41820008 # beq .L_803381C8
    .4byte 0x4800004C # b .L_80338210
L_803381C8:
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x41800024 # blt .L_803381F4
    lis 3, lbl_80471BB8@ha
    slwi 0, 4, 4
    addi 3, 3, lbl_80471BB8@l
    add 3, 3, 0
    lwz 3, 0x4(3)
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x48000348 # b .L_80338538
L_803381F4:
    lis 3, lbl_80471BB8@ha
    slwi 0, 4, 4
    addi 3, 3, lbl_80471BB8@l
    lwzx 3, 3, 0
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x4800032C # b .L_80338538
L_80338210:
    lis 3, lbl_80471BB8@ha
    slwi 0, 4, 4
    addi 3, 3, lbl_80471BB8@l
    add 3, 3, 0
    lwz 3, 0x4(3)
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x4800030C # b .L_80338538
L_80338230:
    lfs 0, 0x14(31)
    .4byte 0xC0C2F0D8 # lfs f6, lbl_80542078@sda21(r0)
    fcmpo cr0, 0, 6
    .4byte 0x40810018 # ble .L_80338254
    lfs 1, 0x44(31)
    lfs 0, 0x260(31)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x480002E8 # b .L_80338538
L_80338254:
    cror eq, lt, eq
    .4byte 0x408202E0 # bne .L_80338538
    lfs 0, 0x44(31)
    fcmpo cr0, 0, 6
    .4byte 0x408002D4 # bge .L_80338538
    stfs 6, 0x14(31)
    lis 4, 0x4330
    .4byte 0xC882F0E0 # lfd f4, lbl_80542080@sda21(r0)
    li 3, 0x5
    lwz 5, 0x90(31)
    li 0, 0x0
    stw 4, 0x68(1)
    extrwi 5, 5, 2, 14
    mulli 5, 5, 0x46
    stw 4, 0x60(1)
    stfs 6, 0x28(1)
    addi 4, 5, 0x1e
    stw 4, 0x23c(31)
    psq_l 1, 0x278(31), 0, 0
    lfs 0, 0x280(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 4, 0x23c(31)
    lfs 1, 0x28(31)
    xoris 4, 4, 0x8000
    lfs 0, 0x10(31)
    stw 4, 0x6c(1)
    lfs 2, 0x24(31)
    fsubs 5, 1, 0
    stw 4, 0x64(1)
    lfd 3, 0x68(1)
    lfs 1, 0xc(31)
    lfd 0, 0x60(1)
    fsubs 3, 3, 4
    fsubs 1, 2, 1
    fsubs 0, 0, 4
    fdivs 2, 5, 3
    fdivs 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    psq_l 0, 0x20(1), 0, 0
    psq_st 0, 0x3c(31), 0, 0
    stfs 6, 0x44(31)
    lwz 4, 0x23c(31)
    stw 4, 0x240(31)
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    lwz 4, 0x250(31)
    cmpwi 4, 0x3
    .4byte 0x418200A4 # beq .L_803383BC
    .4byte 0x40800010 # bge .L_8033832C
    cmpwi 4, 0x2
    .4byte 0x40800014 # bge .L_80338338
    .4byte 0x48000094 # b .L_803383BC
L_8033832C:
    cmpwi 4, 0x5
    .4byte 0x4080008C # bge .L_803383BC
    .4byte 0x48000040 # b .L_80338374
L_80338338:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022F0CC # lfs f1, lbl_8054206C@sda21(r0)
    .4byte 0xC042F0D8 # lfs f2, lbl_80542078@sda21(r0)
    bl fn_802D79E8
    lwz 0, 0x250(31)
    lis 3, lbl_80471BB8@ha
    addi 3, 3, lbl_80471BB8@l
    slwi 0, 0, 4
    add 3, 3, 0
    lwz 3, 0x4(3)
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x480001C8 # b .L_80338538
L_80338374:
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x41800024 # blt .L_803383A0
    lis 3, lbl_80471BB8@ha
    slwi 0, 4, 4
    addi 3, 3, lbl_80471BB8@l
    add 3, 3, 0
    lwz 3, 0x4(3)
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x4800019C # b .L_80338538
L_803383A0:
    lis 3, lbl_80471BB8@ha
    slwi 0, 4, 4
    addi 3, 3, lbl_80471BB8@l
    lwzx 3, 3, 0
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x48000180 # b .L_80338538
L_803383BC:
    lis 3, lbl_80471BB8@ha
    slwi 0, 4, 4
    addi 3, 3, lbl_80471BB8@l
    add 3, 3, 0
    lwz 3, 0x4(3)
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x48000160 # b .L_80338538
L_803383DC:
    lbz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_80338474
    bl fn_8023A30C
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80338474
    lfs 3, 0x27c(31)
    lis 3, lbl_80471BB8@ha
    lfs 2, 0x10(31)
    li 4, 0x0
    lfs 1, 0x278(31)
    li 0, 0x3
    lfs 0, 0xc(31)
    fsubs 4, 3, 2
    .4byte 0xC062F0C8 # lfs f3, lbl_80542068@sda21(r0)
    addi 3, 3, lbl_80471BB8@l
    fsubs 2, 1, 0
    .4byte 0xC022F0CC # lfs f1, lbl_8054206C@sda21(r0)
    fdivs 4, 4, 3
    .4byte 0xC002F0D0 # lfs f0, lbl_80542070@sda21(r0)
    stfs 1, 0x10(1)
    fdivs 2, 2, 3
    stfs 4, 0xc(1)
    stfs 2, 0x8(1)
    psq_l 2, 0x8(1), 0, 0
    psq_st 2, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    stfs 0, 0x260(31)
    stw 4, 0x240(31)
    stw 0, 0x230(31)
    stw 4, 0x238(31)
    lwz 0, 0x250(31)
    slwi 0, 0, 4
    add 3, 3, 0
    lwz 3, 0x4(3)
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x480000C8 # b .L_80338538
L_80338474:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_803384A0
    lfs 1, 0xc(31)
    lfs 0, 0x24(31)
    fcmpu cr0, 1, 0
    .4byte 0x408200AC # bne .L_80338538
    lfs 1, 0x10(31)
    lfs 0, 0x28(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082009C # bne .L_80338538
L_803384A0:
    psq_l 2, 0x24(31), 0, 0
    lis 3, lbl_80471BB8@ha
    lfs 1, 0x2c(31)
    li 0, 0x0
    .4byte 0xC002F0D8 # lfs f0, lbl_80542078@sda21(r0)
    addi 3, 3, lbl_80471BB8@l
    psq_st 2, 0xc(31), 0, 0
    stfs 1, 0x14(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    stw 0, 0x238(31)
    lwz 0, 0x250(31)
    slwi 0, 0, 4
    lwzx 3, 3, 0
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x48000050 # b .L_80338538
L_803384EC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x50
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x24c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80338538
    lwz 0, 0x254(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80338530
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_80338538
L_80338530:
    li 0, 0x1
    stw 0, 0x230(31)
L_80338538:
    mr 3, 31
    bl fn_80337A08
    mr 3, 31
    bl fn_803376B0
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8033855C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8033855C:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80338570:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, 0x19
    li 6, 0x0
    stw 0, 0x44(1)
    li 5, 0x2710
    .4byte 0xC002F0D8 # lfs f0, lbl_80542078@sda21(r0)
    addi 4, 4, 0x660d
    stw 31, 0x3c(1)
    mr 31, 3
    .4byte 0xC062F0BC # lfs f3, lbl_8054205C@sda21(r0)
    li 0, 0x3
    stw 6, 0x230(3)
    lis 3, 0x4330
    .4byte 0xC082F0E8 # lfs f4, lbl_80542088@sda21(r0)
    stw 6, 0xb0(31)
    .4byte 0xC842F0E0 # lfd f2, lbl_80542080@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 5, 0x108(31)
    stw 6, 0x23c(31)
    psq_l 1, 0x24(31), 0, 0
    lfs 0, 0x2c(31)
    stw 3, 0x18(1)
    psq_st 1, 0x26c(31), 0, 0
    stfs 0, 0x274(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    stw 3, 0x28(1)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    lfs 1, 0xc(31)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    subi 3, 3, 0x3
    xoris 3, 3, 0x8000
    stw 3, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    lfs 1, 0x10(31)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    subi 3, 3, 0x3
    xoris 3, 3, 0x8000
    stw 3, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x24(31), 0, 0
    stfs 0, 0x2c(31)
    stw 6, 0x238(31)
    stw 6, 0x234(31)
    stw 6, 0x244(31)
    stw 0, 0x248(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 3, 7
    stw 0, 0x258(31)
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 6
    .4byte 0x41820010 # beq .L_803386E4
    lwz 0, 0x258(31)
    neg 0, 0
    stw 0, 0x258(31)
L_803386E4:
    lwz 3, 0x258(31)
    lis 0, 0x4330
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842F0E0 # lfd f2, lbl_80542080@sda21(r0)
    stw 0, 0x2c(1)
    .4byte 0xC062F0EC # lfs f3, lbl_8054208C@sda21(r0)
    lfd 1, 0x28(1)
    lfs 0, 0x24(31)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0x278(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 3, 11
    stw 0, 0x25c(31)
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 10
    .4byte 0x41820010 # beq .L_80338738
    lwz 0, 0x25c(31)
    neg 0, 0
    stw 0, 0x25c(31)
L_80338738:
    lwz 4, 0x25c(31)
    lis 0, 0x4330
    stw 0, 0x28(1)
    li 3, -0x1
    xoris 0, 4, 0x8000
    .4byte 0xC842F0E0 # lfd f2, lbl_80542080@sda21(r0)
    stw 0, 0x2c(1)
    li 4, 0x0
    .4byte 0xC062F0EC # lfs f3, lbl_8054208C@sda21(r0)
    li 0, 0x1
    lfd 1, 0x28(1)
    lfs 0, 0x28(31)
    fsubs 2, 1, 2
    .4byte 0xC022F0D8 # lfs f1, lbl_80542078@sda21(r0)
    fmadds 0, 3, 2, 0
    stfs 0, 0x27c(31)
    stfs 1, 0x280(31)
    stw 3, 0x24c(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 20
    addi 3, 3, 0x12b
    stw 3, 0x264(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 16
    stw 3, 0x250(31)
    stw 4, 0x240(31)
    stfs 1, 0x260(31)
    stw 0, 0x254(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 5
    stb 0, 0x268(31)
    lbz 0, 0x268(31)
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_803387F8
    li 0, 0x2
    addi 3, 31, 0x278
    stw 0, 0x230(31)
    stw 4, 0x254(31)
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_803387F8
    li 0, 0x1
    stw 0, 0x230(31)
    psq_l 1, 0x278(31), 0, 0
    lfs 0, 0x280(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
L_803387F8:
    mr 3, 31
    bl fn_80337A08
    lwz 0, 0x250(31)
    cmpwi 0, 0x2
    .4byte 0x41820008 # beq .L_80338810
    .4byte 0x48000050 # b .L_8033885C
L_80338810:
    .4byte 0xC042F0F0 # lfs f2, lbl_80542090@sda21(r0)
    lis 3, lbl_80471BB8@ha
    .4byte 0xC022F0EC # lfs f1, lbl_8054208C@sda21(r0)
    addi 3, 3, lbl_80471BB8@l
    stfs 2, 0x80(31)
    .4byte 0xC002F0F4 # lfs f0, lbl_80542094@sda21(r0)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 0, 0x250(31)
    slwi 0, 0, 4
    lwzx 3, 3, 0
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
    .4byte 0x48000048 # b .L_803388A0
L_8033885C:
    .4byte 0xC022F0F8 # lfs f1, lbl_80542098@sda21(r0)
    lis 3, lbl_80471BB8@ha
    .4byte 0xC002F0F4 # lfs f0, lbl_80542094@sda21(r0)
    addi 3, 3, lbl_80471BB8@l
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 0, 0x250(31)
    slwi 0, 0, 4
    lwzx 3, 3, 0
    lwz 0, 0x0(3)
    stw 0, 0x234(31)
L_803388A0:
    li 0, 0x1
    stb 0, 0x194(31)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803388BC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805097F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805097F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033890C
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
L_8033890C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80338944
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
L_80338944:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033897C
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
L_8033897C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803389B4
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
L_803389B4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803389EC
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
L_803389EC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80338A24
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
L_80338A24:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80338A5C
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
L_80338A5C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80338A94
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
L_80338A94:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80338ACC
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
L_80338ACC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80338AE0:
    blr

fn_80338AE4:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stmw 27, 0x7c(1)
    mr 28, 3
    lis 4, 0x5
    lfs 1, 0x10(3)
    addi 4, 4, 0x3b
    lfs 30, 0x64(3)
    li 5, 0x0
    lfs 28, 0x6c(3)
    lfs 0, 0xc(3)
    fadds 30, 30, 1
    lfs 31, 0x60(3)
    fadds 28, 28, 1
    lfs 29, 0x68(3)
    fadds 31, 31, 0
    fadds 29, 29, 0
    bl fn_801F0E34
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x2c(3)
    lbz 3, 0xc(4)
    cmplwi 3, 0x80
    .4byte 0x4081001C # ble .L_80338B7C
    subi 3, 3, 0x1
    clrlwi 0, 3, 24
    cmplwi 0, 0x80
    .4byte 0x41810008 # bgt .L_80338B78
    li 3, 0x80
L_80338B78:
    stb 3, 0xc(4)
L_80338B7C:
    li 30, 0x0
    mr 31, 28
L_80338B84:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820110 # beq .L_80338CA0
    lwz 0, 0x230(28)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_80338BA8
    cmpwi 0, 0x3
    .4byte 0x408200FC # bne .L_80338CA0
L_80338BA8:
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 4, 1, 0x50
    lfs 0, 0x8(3)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x58(1)
    lwz 0, 0x230(28)
    cmpwi 0, 0x1
    .4byte 0x41820064 # beq .L_80338C30
    psq_l 0, 0x3c(28), 0, 0
    lis 0, 0x4330
    psq_l 3, 0x8(4), 1, 0
    mr 3, 4
    ps_add 1, 1, 0
    stw 0, 0x70(1)
    .4byte 0xC882F130 # lfd f4, lbl_805420D0@sda21(r0)
    .4byte 0xC002F108 # lfs f0, lbl_805420A8@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0xC0A2F10C # lfs f5, lbl_805420AC@sda21(r0)
    psq_l 1, 0x44(28), 1, 0
    .4byte 0xC042F110 # lfs f2, lbl_805420B0@sda21(r0)
    ps_add 1, 3, 1
    .4byte 0xC062F114 # lfs f3, lbl_805420B4@sda21(r0)
    psq_st 1, 0x8(4), 1, 0
    lwz 0, 0x248(31)
    lfs 1, 0xc(28)
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    fsubs 0, 1, 0
    lfd 1, 0x70(1)
    fsubs 1, 1, 4
    fmadds 1, 5, 1, 0
    bl fn_801F71A4
L_80338C30:
    lwz 0, 0x230(28)
    cmpwi 0, 0x3
    .4byte 0x40820048 # bne .L_80338C80
    lwz 0, 0x244(28)
    lis 3, 0x51ec
    subi 6, 3, 0x7ae1
    mr 3, 30
    mulli 0, 0, 0xff
    addi 4, 1, 0x50
    li 5, 0x3cf
    li 7, -0x80
    mulhw 0, 6, 0
    li 8, -0x80
    li 9, 0x1
    srawi 0, 0, 4
    srwi 6, 0, 31
    add 0, 0, 6
    clrlwi 6, 0, 24
    bl fn_80230498
    .4byte 0x48000024 # b .L_80338CA0
L_80338C80:
    mr 3, 30
    addi 4, 1, 0x50
    li 5, 0x3cf
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80338CA0:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FED8 # blt .L_80338B84
    lwz 0, 0x230(28)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80338CD4
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_80338CD4
    lfs 1, 0x40(28)
    .4byte 0xC002F118 # lfs f0, lbl_805420B8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x40(28)
L_80338CD4:
    li 0, 0x0
    stw 0, 0x234(28)
    lwz 0, 0x230(28)
    cmpwi 0, 0x2
    .4byte 0x418204C0 # beq .L_803391A4
    .4byte 0x40800014 # bge .L_80338CFC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80338D08
    .4byte 0x40800208 # bge .L_80338EFC
    .4byte 0x48000648 # b .L_80339340
L_80338CFC:
    cmpwi 0, 0x4
    .4byte 0x40800640 # bge .L_80339340
    .4byte 0x48000510 # b .L_80339214
L_80338D08:
    mr 31, 28
    li 29, 0x0
    .4byte 0x3BC2F100 # li r30, lbl_805420A0@sda21
L_80338D14:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820118 # beq .L_80338E38
    mr 3, 29
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820108 # bne .L_80338E38
    mr 3, 29
    bl fn_8023561C
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_80338E38
    mr 3, 29
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x408200E8 # bne .L_80338E38
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_80338D94
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80338D94
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_80338D94
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_80338D94
    li 0, 0x1
L_80338D94:
    addi 3, 29, 0x25c
    stbx 0, 28, 3
    lbzx 0, 28, 3
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_80338E10
    lwz 3, 0x234(28)
    addi 0, 3, 0x1
    stw 0, 0x234(28)
    lwz 0, 0x26c(31)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_80338E38
    .4byte 0xC022F10C # lfs f1, lbl_805420AC@sda21(r0)
    addi 4, 1, 0x20
    lfs 0, 0x10(28)
    li 6, 0x1
    lfs 3, 0x14(28)
    li 7, 0x2
    fadds 2, 1, 0
    lfs 0, 0xc(28)
    lhz 5, 0x0(30)
    li 8, 0x0
    stfs 0, 0x20(1)
    li 9, 0x0
    stfs 2, 0x24(1)
    li 10, 0x1
    .4byte 0xC022F11C # lfs f1, lbl_805420BC@sda21(r0)
    stfs 3, 0x28(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    stw 3, 0x26c(31)
    .4byte 0x4800002C # b .L_80338E38
L_80338E10:
    lwz 5, 0x26c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80338E38
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x26c(31)
L_80338E38:
    addi 29, 29, 0x1
    addi 30, 30, 0x2
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FECC # blt .L_80338D14
    lwz 0, 0x234(28)
    cmpwi 0, 0x4
    .4byte 0x418004EC # blt .L_80339340
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x418204E0 # beq .L_80339340
    li 27, 0x0
L_80338E68:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 27
    psq_st 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    bl fn_8022E970
    cmpwi 3, 0x1
    .4byte 0x40810030 # ble .L_80338EBC
    mr 3, 27
    bl fn_80234A88
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80338EBC
    mr 3, 27
    li 4, 0x5
    li 5, 0x1
    bl fn_8022CA6C
    addi 0, 27, 0x260
    li 3, 0x1
    stbx 3, 28, 0
L_80338EBC:
    mr 3, 27
    addi 4, 1, 0x44
    li 5, 0x3cd
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80338E68
    li 3, 0x32
    li 0, 0x1
    stw 3, 0x240(28)
    stw 0, 0x230(28)
    .4byte 0x48000448 # b .L_80339340
L_80338EFC:
    lwz 3, 0x240(28)
    subi 0, 3, 0x1
    stw 0, 0x240(28)
    lwz 0, 0x240(28)
    cmpwi 0, 0x0
    .4byte 0x4181014C # bgt .L_8033905C
    li 27, 0x0
L_80338F18:
    mr 3, 27
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x258(28)
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_80338F40
    mr 3, 27
    bl fn_8023E724
    lfs 0, 0x4(3)
    stfs 0, 0x258(28)
L_80338F40:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFD0 # blt .L_80338F18
    li 5, 0x0
    li 4, 0x1
    li 3, 0x2
    li 0, 0x3
    stw 5, 0x5c(1)
    addi 27, 1, 0x60
    li 29, 0x4
    stw 4, 0x60(1)
    stw 3, 0x64(1)
    stw 0, 0x68(1)
L_80338F74:
    mr 31, 27
    li 30, 0x1
    .4byte 0x48000070 # b .L_80338FEC
L_80338F80:
    lwz 3, -0x4(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x8(1), 0, 0
    lwz 3, 0x0(31)
    stfs 0, 0x10(1)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    psq_st 0, 0x14(1), 0, 0
    lfs 1, 0x8(1)
    lfs 0, 0x14(1)
    stfs 2, 0x1c(1)
    fcmpo cr0, 1, 0
    .4byte 0x40810028 # ble .L_80338FE4
    subi 0, 30, 0x1
    addi 4, 1, 0x5c
    slwi 3, 0, 2
    lwzx 0, 4, 3
    stw 0, 0x6c(1)
    lwz 0, 0x0(31)
    stwx 0, 4, 3
    lwz 0, 0x6c(1)
    stw 0, 0x0(31)
L_80338FE4:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_80338FEC:
    cmpw 30, 29
    .4byte 0x4180FF90 # blt .L_80338F80
    subic. 29, 29, 0x1
    .4byte 0x4181FF7C # bgt .L_80338F74
    lwz 0, 0x5c(1)
    li 6, 0x0
    lwz 3, 0x60(1)
    li 5, 0x1
    slwi 4, 0, 2
    lwz 0, 0x64(1)
    add 4, 28, 4
    slwi 3, 3, 2
    stw 6, 0x248(4)
    add 4, 28, 3
    slwi 3, 0, 2
    lwz 0, 0x68(1)
    stw 5, 0x248(4)
    add 3, 28, 3
    li 4, 0x2
    slwi 0, 0, 2
    stw 4, 0x248(3)
    add 3, 28, 0
    li 0, 0x3
    .4byte 0xC002F120 # lfs f0, lbl_805420C0@sda21(r0)
    stw 0, 0x248(3)
    stfs 0, 0x40(28)
    stw 4, 0x230(28)
    .4byte 0x480002E8 # b .L_80339340
L_8033905C:
    li 27, 0x0
L_80339060:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80339078
    mr 29, 27
    .4byte 0x48000010 # b .L_80339084
L_80339078:
    mr 3, 27
    bl fn_8022F3DC
    mr 29, 3
L_80339084:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 0, 29, 0x260
    lfs 0, 0x8(3)
    psq_st 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    lbzx 0, 28, 0
    cmplwi 0, 0x0
    .4byte 0x418200BC # beq .L_80339164
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 27
    psq_st 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    bl fn_8022E8D4
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x74(1)
    .4byte 0xC842F130 # lfd f2, lbl_805420D0@sda21(r0)
    stw 0, 0x70(1)
    lfs 3, 0x38(1)
    lfd 0, 0x70(1)
    lfs 5, 0x2c(1)
    fsubs 0, 0, 2
    .4byte 0xC022F10C # lfs f1, lbl_805420AC@sda21(r0)
    fsubs 4, 3, 5
    fmuls 0, 1, 0
    fcmpo cr0, 4, 0
    .4byte 0x40800064 # bge .L_80339164
    stw 3, 0x74(1)
    .4byte 0xC022F124 # lfs f1, lbl_805420C4@sda21(r0)
    stw 0, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fcmpo cr0, 4, 0
    .4byte 0x40810044 # ble .L_80339164
    lfs 0, 0xc(28)
    fcmpo cr0, 5, 0
    .4byte 0x40810020 # ble .L_8033914C
    stw 3, 0x74(1)
    stw 0, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 2
    fsubs 0, 3, 0
    stfs 0, 0x38(1)
    .4byte 0x4800001C # b .L_80339164
L_8033914C:
    stw 3, 0x74(1)
    stw 0, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 2
    fadds 0, 3, 0
    stfs 0, 0x38(1)
L_80339164:
    lwz 0, 0x240(28)
    li 5, 0x3cd
    cmpwi 0, 0x2e
    .4byte 0x41810008 # bgt .L_80339178
    li 5, 0x3ce
L_80339178:
    mr 3, 27
    addi 4, 1, 0x38
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FEC4 # blt .L_80339060
    .4byte 0x480001A0 # b .L_80339340
L_803391A4:
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x3a
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC382F128 # lfs f28, lbl_805420C8@sda21(r0)
    li 27, 0x0
L_803391C0:
    mr 3, 27
    bl fn_8023E724
    lfs 0, 0x4(3)
    fcmpo cr0, 28, 0
    .4byte 0x40800010 # bge .L_803391E0
    mr 3, 27
    bl fn_8023E724
    lfs 28, 0x4(3)
L_803391E0:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFD8 # blt .L_803391C0
    lfs 1, 0x258(28)
    .4byte 0xC002F12C # lfs f0, lbl_805420CC@sda21(r0)
    fsubs 1, 1, 28
    fcmpo cr0, 1, 0
    .4byte 0x40810144 # ble .L_80339340
    li 3, 0x32
    li 0, 0x3
    stw 3, 0x244(28)
    stw 0, 0x230(28)
    .4byte 0x48000130 # b .L_80339340
L_80339214:
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x3a
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x244(28)
    subi 0, 3, 0x1
    stw 0, 0x244(28)
    lwz 0, 0x244(28)
    cmpwi 0, 0x0
    .4byte 0x41810104 # bgt .L_80339340
    bl GetRoomConfigRecord
    lwz 4, 0x238(28)
    lwz 5, 0x23c(28)
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xf
    li 5, 0x0
    bl fn_80136798
    lwz 5, 0x264(28)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80339288
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x264(28)
L_80339288:
    lwz 5, 0x268(28)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_803392B0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x268(28)
L_803392B0:
    lwz 5, 0x26c(28)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_803392D8
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x26c(28)
L_803392D8:
    lwz 5, 0x270(28)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_803392F8
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x270(28)
L_803392F8:
    lwz 5, 0x274(28)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80339318
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x274(28)
L_80339318:
    lwz 5, 0x278(28)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80339338
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x278(28)
L_80339338:
    li 0, 0x0
    stb 0, 0x11c(28)
L_80339340:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    lmw 27, 0x7c(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_80339374:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002F128 # lfs f0, lbl_805420C8@sda21(r0)
    stw 0, 0x34(1)
    li 0, 0x2710
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 4, 0x90(3)
    li 3, 0x0
    clrlwi 4, 4, 28
    sth 4, 0x94(31)
    stw 0, 0x108(31)
    stw 3, 0x230(31)
    stw 3, 0x234(31)
    stw 3, 0x240(31)
    stw 3, 0x244(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 20
    stw 0, 0x23c(31)
    stfs 0, 0x258(31)
    stw 3, 0x264(31)
    stw 3, 0x268(31)
    stb 3, 0x25c(31)
    stw 3, 0x26c(31)
    stw 3, 0x248(31)
    stb 3, 0x260(31)
    stb 3, 0x25d(31)
    stw 3, 0x270(31)
    stw 3, 0x24c(31)
    stb 3, 0x261(31)
    stb 3, 0x25e(31)
    stw 3, 0x274(31)
    stw 3, 0x250(31)
    stb 3, 0x262(31)
    stb 3, 0x25f(31)
    stw 3, 0x278(31)
    stw 3, 0x254(31)
    stb 3, 0x263(31)
    lwz 0, 0x264(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80339470
    .4byte 0xC042F10C # lfs f2, lbl_805420AC@sda21(r0)
    addi 4, 1, 0x14
    lfs 1, 0x10(31)
    li 5, 0x4e0
    lfs 3, 0x14(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    fadds 2, 2, 1
    .4byte 0xC022F11C # lfs f1, lbl_805420BC@sda21(r0)
    li 7, 0x2
    stfs 0, 0x14(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x18(1)
    li 10, 0x1
    stfs 3, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x264(31)
L_80339470:
    lwz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803394C8
    .4byte 0xC042F10C # lfs f2, lbl_805420AC@sda21(r0)
    addi 4, 1, 0x8
    lfs 1, 0x10(31)
    li 5, 0x4e1
    lfs 3, 0x14(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    fadds 2, 2, 1
    .4byte 0xC022F11C # lfs f1, lbl_805420BC@sda21(r0)
    li 7, 0x2
    stfs 0, 0x8(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0xc(1)
    li 10, 0x1
    stfs 3, 0x10(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x268(31)
L_803394C8:
    .4byte 0xC042F138 # lfs f2, lbl_805420D8@sda21(r0)
    .4byte 0xC022F13C # lfs f1, lbl_805420DC@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002F140 # lfs f0, lbl_805420E0@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803394F8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x4182005C # beq .L_80339578
    lis 3, lbl_804AC0A8@ha
    addi 0, 3, lbl_804AC0A8@l
    stw 0, 0x0(28)
    lwz 3, 0x264(28)
    bl fn_801EE434
    lwz 3, 0x268(28)
    bl fn_801EE434
    li 30, 0x0
    mr 31, 28
L_80339544:
    lwz 3, 0x26c(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFEC # blt .L_80339544
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_80339578
    mr 3, 28
    bl dtor_80084580
L_80339578:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8033959C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805098F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805098F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803395EC
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
L_803395EC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80339624
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
L_80339624:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033965C
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
L_8033965C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80339694
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
L_80339694:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803396CC
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
L_803396CC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80339704
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
L_80339704:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033973C
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
L_8033973C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80339774
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
L_80339774:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803397AC
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
L_803397AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803397C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80339804
    lis 5, lbl_804AC100@ha
    li 4, 0x0
    addi 0, 5, lbl_804AC100@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80339804
    mr 3, 30
    bl dtor_80084580
L_80339804:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80339820:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stw 0, 0x34(1)
    li 0, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(3)
    psq_st 1, 0x18(1), 0, 0
    lfs 1, 0x1c(1)
    stfs 2, 0x20(1)
    fsubs 1, 1, 2
    stfs 0, 0x20(1)
    stfs 1, 0x1c(1)
    lwz 3, 0x24c(3)
    cmpwi 3, 0x5
    .4byte 0x41820054 # beq .L_803398B8
    .4byte 0x40800070 # bge .L_803398D8
    cmpwi 3, 0x1
    .4byte 0x41820008 # beq .L_80339878
    .4byte 0x48000064 # b .L_803398D8
L_80339878:
    lwz 3, 0x260(31)
    cmpwi 3, 0x75
    .4byte 0x41820014 # beq .L_80339894
    .4byte 0x40800028 # bge .L_803398AC
    cmpwi 3, 0x6b
    .4byte 0x41820014 # beq .L_803398A0
    .4byte 0x4800001C # b .L_803398AC
L_80339894:
    li 3, 0x2
    stw 3, 0x260(31)
    .4byte 0x4800003C # b .L_803398D8
L_803398A0:
    li 3, 0x4
    stw 3, 0x260(31)
    .4byte 0x48000030 # b .L_803398D8
L_803398AC:
    li 3, 0x1
    stw 3, 0x260(31)
    .4byte 0x48000024 # b .L_803398D8
L_803398B8:
    lwz 3, 0x260(31)
    cmpwi 3, 0x45
    .4byte 0x41800010 # blt .L_803398D0
    subi 3, 3, 0x45
    stw 3, 0x260(31)
    .4byte 0x4800000C # b .L_803398D8
L_803398D0:
    subi 3, 3, 0x40
    stw 3, 0x260(31)
L_803398D8:
    lwz 3, 0x260(31)
    cmpwi 3, 0x1
    .4byte 0x41810194 # bgt .L_80339A74
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042F14C # lfs f2, lbl_805420EC@sda21(r0)
    lwz 3, 0xb4(5)
    .4byte 0xC002F150 # lfs f0, lbl_805420F0@sda21(r0)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x408001B0 # bge .L_80339AD8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002F154 # lfs f0, lbl_805420F4@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_80339994
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x26
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x18
    addi 7, 7, 0x1400
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000148 # b .L_80339AD8
L_80339994:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002F158 # lfs f0, lbl_805420F8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_803399D4
    li 0, 0x1
L_803399D4:
    clrlwi. 0, 0, 24
    .4byte 0x40820100 # bne .L_80339AD8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002F150 # lfs f0, lbl_805420F0@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_80339A4C
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(31)
    addi 4, 4, 0x5259
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000090 # b .L_80339AD8
L_80339A4C:
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000068 # b .L_80339AD8
L_80339A74:
    cmpwi 3, 0x2
    .4byte 0x4082002C # bne .L_80339AA4
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000038 # b .L_80339AD8
L_80339AA4:
    cmpwi 3, 0x3
    .4byte 0x41820030 # beq .L_80339AD8
    cmpwi 3, 0x4
    .4byte 0x40820028 # bne .L_80339AD8
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(31)
    addi 4, 4, 0x5259
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80339AD8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80339AEC:
    stwu 1, -0x130(1)
    mflr 0
    lis 4, lbl_80471D60@ha
    li 10, 0x0
    stw 0, 0x134(1)
    li 0, -0x1
    addi 9, 1, 0xe0
    stw 31, 0x12c(1)
    mr 31, 3
    stw 30, 0x128(1)
    addi 30, 4, lbl_80471D60@l
    stw 0, 0xf0(1)
    stw 0, 0xf4(1)
    .4byte 0x48000064 # b .L_80339B84
L_80339B24:
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
L_80339B84:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80339B24
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0xf0(1)
    addi 3, 1, 0xb0
    stw 6, 0xf4(1)
    stw 6, 0xf8(1)
    stb 6, 0xfc(1)
    stb 6, 0xfd(1)
    stb 6, 0xfe(1)
    stb 5, 0xff(1)
    stb 5, 0x100(1)
    stb 6, 0x101(1)
    stb 6, 0x102(1)
    stb 6, 0x103(1)
    stb 6, 0x104(1)
    stb 6, 0x105(1)
    stb 5, 0x106(1)
    stw 4, 0x108(1)
    stb 5, 0x10c(1)
    stb 6, 0x10d(1)
    stb 6, 0x10e(1)
    stw 7, 0x110(1)
    stw 6, 0x114(1)
    stw 0, 0x118(1)
    bl PSMTXIdentity
    addi 3, 1, 0x80
    bl PSMTXIdentity
    li 0, 0x1
    stb 0, 0xfc(1)
    stb 0, 0xfd(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820A24 # beq .L_8033A640
    cmpwi 0, 0x4
    .4byte 0x41820A1C # beq .L_8033A640
    lwz 0, 0x254(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80339C3C
    li 0, 0x96
    stb 0, 0xf4(1)
L_80339C3C:
    lwz 0, 0x24c(31)
    cmplwi 0, 0x9
    .4byte 0x418109FC # bgt .L_8033A640
    lis 3, jumptable_804AC154@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AC154@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022F15C # lfs f1, lbl_805420FC@sda21(r0)
    addi 3, 1, 0x80
    .4byte 0xC062F148 # lfs f3, lbl_805420E8@sda21(r0)
    fmr 2, 1
    bl PSMTXTrans
    lha 0, 0x25a(31)
    lis 4, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 3, 1, 0xb0
    rlwinm 0, 0, 30, 18, 28
    addi 4, 4, lbl_8052EBC0@l
    lfsx 4, 4, 0
    add 4, 4, 0
    lfs 3, 0x4(4)
    mr 5, 3
    fneg 2, 4
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    stfs 3, 0xb0(1)
    addi 4, 1, 0x80
    stfs 2, 0xb4(1)
    stfs 4, 0xc0(1)
    stfs 3, 0xc4(1)
    stfs 1, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xd0(1)
    stfs 0, 0xb8(1)
    bl PSMTXConcat
    addi 0, 1, 0xb0
    stw 0, 0xf8(1)
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x74(1)
    stfs 1, 0x78(1)
    stfs 2, 0x7c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_80339D38
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x74
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
L_80339D38:
    li 0, 0x28
    li 3, 0x0
    stb 3, 0xfd(1)
    .4byte 0xC062F158 # lfs f3, lbl_805420F8@sda21(r0)
    stb 3, 0xf4(1)
    .4byte 0xC022F160 # lfs f1, lbl_80542100@sda21(r0)
    stb 0, 0xf0(1)
    .4byte 0xC002F164 # lfs f0, lbl_80542104@sda21(r0)
    stb 0, 0xf1(1)
    stb 0, 0xf2(1)
    lfs 2, 0x14(31)
    fnmsubs 1, 3, 2, 1
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80339D78
    .4byte 0x48000008 # b .L_80339D7C
L_80339D78:
    fmr 0, 1
L_80339D7C:
    fctiwz 1, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stfd 1, 0x120(1)
    lwz 0, 0x124(1)
    stb 0, 0xf3(1)
    lfs 2, 0x10(31)
    lfs 1, 0xc(31)
    stfs 1, 0x68(1)
    stfs 2, 0x6c(1)
    stfs 0, 0x70(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800894 # bge .L_8033A640
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x68
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
    .4byte 0x48000854 # b .L_8033A640
    lha 4, 0x25a(31)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 0, 1, 0xb0
    rlwinm 4, 4, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    lfsx 5, 3, 4
    add 4, 3, 4
    lfs 4, 0x4(4)
    mr 3, 31
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    fneg 3, 5
    stfs 4, 0xb0(1)
    addi 4, 30, 0x10
    fmr 2, 1
    addi 6, 1, 0xe0
    stfs 1, 0xc4(1)
    li 5, 0x27
    li 7, 0x7
    stfs 5, 0xb8(1)
    stfs 3, 0xd0(1)
    stfs 4, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xc0(1)
    stfs 0, 0xb4(1)
    stw 0, 0xf8(1)
    bl fn_801F06F0
    .4byte 0x480007E0 # b .L_8033A640
    lha 4, 0x25a(31)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 0, 1, 0xb0
    rlwinm 4, 4, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    lfsx 4, 3, 4
    add 3, 3, 4
    lfs 3, 0x4(3)
    fneg 1, 4
    .4byte 0xC042F14C # lfs f2, lbl_805420EC@sda21(r0)
    stfs 3, 0xb0(1)
    stfs 2, 0xc4(1)
    stfs 4, 0xb8(1)
    stfs 1, 0xd0(1)
    stfs 3, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xc0(1)
    stfs 0, 0xb4(1)
    stw 0, 0xf8(1)
    lwz 3, 0x288(31)
    lbz 0, 0x0(3)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x41820014 # beq .L_80339EDC
    cmpwi 0, 0x73
    .4byte 0x4182000C # beq .L_80339EDC
    cmpwi 0, 0x79
    .4byte 0x4082004C # bne .L_80339F24
L_80339EDC:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5449
    addi 4, 3, 0x4d47
    addi 5, 30, 0x24
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022F148 # lfs f1, lbl_805420E8@sda21(r0)
    mr 4, 3
    .4byte 0xC042F168 # lfs f2, lbl_80542108@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0xe0
    li 6, 0x7
    bl fn_801EFD34
    .4byte 0x48000720 # b .L_8033A640
L_80339F24:
    cmpwi 0, 0x6c
    .4byte 0x41820014 # beq .L_80339F3C
    cmpwi 0, 0x78
    .4byte 0x4182000C # beq .L_80339F3C
    cmpwi 0, 0x70
    .4byte 0x4082004C # bne .L_80339F84
L_80339F3C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5449
    addi 4, 3, 0x4d47
    addi 5, 30, 0x34
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022F148 # lfs f1, lbl_805420E8@sda21(r0)
    mr 4, 3
    .4byte 0xC042F168 # lfs f2, lbl_80542108@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0xe0
    li 6, 0x7
    bl fn_801EFD34
    .4byte 0x480006C0 # b .L_8033A640
L_80339F84:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5449
    addi 4, 3, 0x4d47
    addi 5, 30, 0x44
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022F148 # lfs f1, lbl_805420E8@sda21(r0)
    mr 4, 3
    .4byte 0xC042F168 # lfs f2, lbl_80542108@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0xe0
    li 6, 0x7
    bl fn_801EFD34
    .4byte 0x48000678 # b .L_8033A640
    .4byte 0xC022F16C # lfs f1, lbl_8054210C@sda21(r0)
    addi 3, 1, 0x80
    .4byte 0xC062F148 # lfs f3, lbl_805420E8@sda21(r0)
    fmr 2, 1
    bl PSMTXTrans
    lha 0, 0x25a(31)
    lis 4, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 3, 1, 0xb0
    rlwinm 0, 0, 30, 18, 28
    addi 4, 4, lbl_8052EBC0@l
    lfsx 4, 4, 0
    add 4, 4, 0
    lfs 3, 0x4(4)
    mr 5, 3
    fneg 2, 4
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    stfs 3, 0xb0(1)
    addi 4, 1, 0x80
    stfs 2, 0xb4(1)
    stfs 4, 0xc0(1)
    stfs 3, 0xc4(1)
    stfs 1, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xd0(1)
    stfs 0, 0xb8(1)
    bl PSMTXConcat
    addi 0, 1, 0xb0
    stw 0, 0xf8(1)
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x5c(1)
    stfs 1, 0x60(1)
    stfs 2, 0x64(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_8033A0A4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x54
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x5c
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
L_8033A0A4:
    li 0, 0x28
    li 3, 0x0
    stb 3, 0xfd(1)
    .4byte 0xC062F158 # lfs f3, lbl_805420F8@sda21(r0)
    stb 3, 0xf4(1)
    .4byte 0xC022F160 # lfs f1, lbl_80542100@sda21(r0)
    stb 0, 0xf0(1)
    .4byte 0xC002F164 # lfs f0, lbl_80542104@sda21(r0)
    stb 0, 0xf1(1)
    stb 0, 0xf2(1)
    lfs 2, 0x14(31)
    fnmsubs 1, 3, 2, 1
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8033A0E4
    .4byte 0x48000008 # b .L_8033A0E8
L_8033A0E4:
    fmr 0, 1
L_8033A0E8:
    fctiwz 1, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stfd 1, 0x120(1)
    lwz 0, 0x124(1)
    stb 0, 0xf3(1)
    lfs 2, 0x10(31)
    lfs 1, 0xc(31)
    stfs 1, 0x50(1)
    stfs 2, 0x54(1)
    stfs 0, 0x58(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800528 # bge .L_8033A640
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x54
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x50
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
    .4byte 0x480004E8 # b .L_8033A640
    lha 4, 0x25a(31)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 0, 1, 0xb0
    rlwinm 4, 4, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    lfsx 5, 3, 4
    add 4, 3, 4
    lfs 4, 0x4(4)
    mr 3, 31
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    fneg 3, 5
    stfs 4, 0xb0(1)
    addi 4, 30, 0x64
    fmr 2, 1
    addi 6, 1, 0xe0
    stfs 1, 0xc4(1)
    li 5, 0x16d
    li 7, 0x7
    stfs 5, 0xb8(1)
    stfs 3, 0xd0(1)
    stfs 4, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xc0(1)
    stfs 0, 0xb4(1)
    stw 0, 0xf8(1)
    bl fn_801F06F0
    .4byte 0x48000474 # b .L_8033A640
    lha 4, 0x25a(31)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 0, 1, 0xb0
    rlwinm 4, 4, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    lfsx 5, 3, 4
    add 4, 3, 4
    lfs 4, 0x4(4)
    mr 3, 31
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    fneg 3, 5
    stfs 4, 0xb0(1)
    addi 4, 30, 0x10
    fmr 2, 1
    addi 6, 1, 0xe0
    stfs 1, 0xc4(1)
    li 5, 0x21
    li 7, 0x7
    stfs 5, 0xb8(1)
    stfs 3, 0xd0(1)
    stfs 4, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xc0(1)
    stfs 0, 0xb4(1)
    stw 0, 0xf8(1)
    bl fn_801F06F0
    .4byte 0x48000400 # b .L_8033A640
    .4byte 0xC022F168 # lfs f1, lbl_80542108@sda21(r0)
    addi 3, 1, 0x80
    .4byte 0xC062F148 # lfs f3, lbl_805420E8@sda21(r0)
    fmr 2, 1
    bl PSMTXTrans
    lha 0, 0x25a(31)
    lis 4, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 3, 1, 0xb0
    rlwinm 0, 0, 30, 18, 28
    addi 4, 4, lbl_8052EBC0@l
    lfsx 4, 4, 0
    add 4, 4, 0
    lfs 3, 0x4(4)
    mr 5, 3
    fneg 2, 4
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    stfs 3, 0xb0(1)
    addi 4, 1, 0x80
    stfs 2, 0xb4(1)
    stfs 4, 0xc0(1)
    stfs 3, 0xc4(1)
    stfs 1, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xd0(1)
    stfs 0, 0xb8(1)
    bl PSMTXConcat
    addi 0, 1, 0xb0
    stw 0, 0xf8(1)
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x44(1)
    stfs 1, 0x48(1)
    stfs 2, 0x4c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_8033A31C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x78
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x44
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
L_8033A31C:
    li 0, 0x28
    li 3, 0x0
    stb 3, 0xfd(1)
    .4byte 0xC062F158 # lfs f3, lbl_805420F8@sda21(r0)
    stb 3, 0xf4(1)
    .4byte 0xC022F160 # lfs f1, lbl_80542100@sda21(r0)
    stb 0, 0xf0(1)
    .4byte 0xC002F164 # lfs f0, lbl_80542104@sda21(r0)
    stb 0, 0xf1(1)
    stb 0, 0xf2(1)
    lfs 2, 0x14(31)
    fnmsubs 1, 3, 2, 1
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8033A35C
    .4byte 0x48000008 # b .L_8033A360
L_8033A35C:
    fmr 0, 1
L_8033A360:
    fctiwz 1, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stfd 1, 0x120(1)
    lwz 0, 0x124(1)
    stb 0, 0xf3(1)
    lfs 2, 0x10(31)
    lfs 1, 0xc(31)
    stfs 1, 0x38(1)
    stfs 2, 0x3c(1)
    stfs 0, 0x40(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408002B0 # bge .L_8033A640
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x78
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x38
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
    .4byte 0x48000270 # b .L_8033A640
    .4byte 0xC022F15C # lfs f1, lbl_805420FC@sda21(r0)
    addi 3, 1, 0x80
    .4byte 0xC062F148 # lfs f3, lbl_805420E8@sda21(r0)
    fmr 2, 1
    bl PSMTXTrans
    lha 0, 0x25a(31)
    lis 4, lbl_8052EBC0@ha
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    addi 3, 1, 0xb0
    rlwinm 0, 0, 30, 18, 28
    addi 4, 4, lbl_8052EBC0@l
    lfsx 4, 4, 0
    add 4, 4, 0
    lfs 3, 0x4(4)
    mr 5, 3
    fneg 2, 4
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    stfs 3, 0xb0(1)
    addi 4, 1, 0x80
    stfs 2, 0xb4(1)
    stfs 4, 0xc0(1)
    stfs 3, 0xc4(1)
    stfs 1, 0xd8(1)
    stfs 0, 0xd4(1)
    stfs 0, 0xc8(1)
    stfs 0, 0xd0(1)
    stfs 0, 0xb8(1)
    bl PSMTXConcat
    addi 0, 1, 0xb0
    stw 0, 0xf8(1)
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_8033A4BC
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 2, 0x34(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408000A4 # bge .L_8033A51C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x88
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x2c
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
    .4byte 0x48000064 # b .L_8033A51C
L_8033A4BC:
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    stfs 2, 0x28(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_8033A51C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x98
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x20
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
L_8033A51C:
    li 0, 0x28
    li 3, 0x0
    stb 3, 0xfd(1)
    .4byte 0xC062F158 # lfs f3, lbl_805420F8@sda21(r0)
    stb 3, 0xf4(1)
    .4byte 0xC022F160 # lfs f1, lbl_80542100@sda21(r0)
    stb 0, 0xf0(1)
    .4byte 0xC002F164 # lfs f0, lbl_80542104@sda21(r0)
    stb 0, 0xf1(1)
    stb 0, 0xf2(1)
    lfs 2, 0x14(31)
    fnmsubs 1, 3, 2, 1
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8033A55C
    .4byte 0x48000008 # b .L_8033A560
L_8033A55C:
    fmr 0, 1
L_8033A560:
    fctiwz 0, 0
    stfd 0, 0x120(1)
    lwz 0, 0x124(1)
    stb 0, 0xf3(1)
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_8033A5E0
    lfs 2, 0x10(31)
    lfs 1, 0xc(31)
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408000A4 # bge .L_8033A640
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x88
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x14
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
    .4byte 0x48000064 # b .L_8033A640
L_8033A5E0:
    lfs 2, 0x10(31)
    lfs 1, 0xc(31)
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_8033A640
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x98
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0xe0
    bl fn_802F6CF4
L_8033A640:
    lwz 0, 0x134(1)
    lwz 31, 0x12c(1)
    lwz 30, 0x128(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

fn_8033A658:
    stwu 1, -0x160(1)
    mflr 0
    stw 0, 0x164(1)
    stfd 31, 0x150(1)
    psq_st 31, 0x158(1), 0, 0
    stfd 30, 0x140(1)
    psq_st 30, 0x148(1), 0, 0
    stfd 29, 0x130(1)
    psq_st 29, 0x138(1), 0, 0
    stfd 28, 0x120(1)
    psq_st 28, 0x128(1), 0, 0
    stfd 27, 0x110(1)
    psq_st 27, 0x118(1), 0, 0
    stfd 26, 0x100(1)
    psq_st 26, 0x108(1), 0, 0
    stmw 26, 0xe8(1)
    li 0, 0x0
    mr 31, 3
    sth 0, 0x8(1)
    addi 3, 31, 0x3c
    .4byte 0xC042F170 # lfs f2, lbl_80542110@sda21(r0)
    li 30, 0x0
    lfs 1, 0x27c(31)
    .4byte 0xC062F14C # lfs f3, lbl_805420EC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x280(31)
    addi 3, 31, 0x40
    .4byte 0xC042F170 # lfs f2, lbl_80542110@sda21(r0)
    .4byte 0xC062F14C # lfs f3, lbl_805420EC@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_8033A720
    lwz 3, 0x238(31)
    lwz 0, 0x264(31)
    cmpw 3, 0
    .4byte 0x41800018 # blt .L_8033A720
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    mr 30, 3
L_8033A720:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820850 # beq .L_8033AF78
    .4byte 0x40800014 # bge .L_8033A740
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8033A750
    .4byte 0x40800730 # bge .L_8033AE68
    .4byte 0x48000E84 # b .L_8033B5C0
L_8033A740:
    cmpwi 0, 0x4
    .4byte 0x41820E5C # beq .L_8033B5A0
    .4byte 0x40800E78 # bge .L_8033B5C0
    .4byte 0x480009A4 # b .L_8033B0F0
L_8033A750:
    lwz 3, 0x238(31)
    lwz 0, 0x270(31)
    cmpw 3, 0
    .4byte 0x4180053C # blt .L_8033AC98
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x24c(31)
    cmplwi 0, 0x9
    .4byte 0x41810514 # bgt .L_8033AC84
    lis 3, jumptable_804AC1A4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AC1A4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x276
    bl fn_802A381C
    .4byte 0x480004E4 # b .L_8033AC84
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0xd
    bl fn_802A381C
    .4byte 0x480004CC # b .L_8033AC84
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x21
    .4byte 0x41820010 # beq .L_8033A7E0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480004A8 # b .L_8033AC84
L_8033A7E0:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    addi 4, 31, 0xc
    stw 0, 0x260(31)
    li 6, 0x79
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 5, 0x4(31)
    bl fn_802A381C
    .4byte 0x4800047C # b .L_8033AC84
    lfs 1, 0xc(31)
    addi 4, 1, 0xd4
    .4byte 0xC002F174 # lfs f0, lbl_80542114@sda21(r0)
    li 6, 0x1
    lwz 5, 0x4(31)
    li 7, 0x0
    fsubs 1, 1, 0
    lfs 2, 0x10(31)
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stfs 2, 0xd8(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 1, 0xd4(1)
    stfs 0, 0xdc(1)
    bl fn_8029D8F0
    .4byte 0x48000440 # b .L_8033AC84
    .4byte 0xC362F178 # lfs f27, lbl_80542118@sda21(r0)
    li 27, 0x0
    .4byte 0xC382F174 # lfs f28, lbl_80542114@sda21(r0)
    lis 29, 0x4330
    .4byte 0xCBA2F190 # lfd f29, lbl_80542130@sda21(r0)
    .4byte 0xC3C2F148 # lfs f30, lbl_805420E8@sda21(r0)
L_8033A860:
    xoris 0, 27, 0x8000
    stw 29, 0xe0(1)
    li 28, 0x0
    stw 0, 0xe4(1)
    lfd 0, 0xe0(1)
    fsubs 0, 0, 29
    fmuls 31, 28, 0
L_8033A87C:
    xoris 0, 28, 0x8000
    lfs 1, 0x10(31)
    stw 0, 0xe4(1)
    addi 4, 1, 0xc8
    lfs 0, 0xc(31)
    fsubs 2, 1, 27
    stw 29, 0xe0(1)
    li 6, 0x1b0
    fsubs 0, 0, 27
    lwz 5, 0x4(31)
    lfd 1, 0xe0(1)
    stfs 30, 0xd0(1)
    fsubs 1, 1, 29
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    fadds 0, 0, 31
    fmuls 26, 28, 1
    stfs 0, 0xc8(1)
    fadds 0, 2, 26
    stfs 0, 0xcc(1)
    bl fn_802A381C
    lfs 1, 0x10(31)
    addi 4, 1, 0xbc
    lfs 0, 0xc(31)
    li 6, 0x0
    fsubs 1, 1, 27
    lwz 5, 0x4(31)
    fsubs 0, 0, 27
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 30, 0xc4(1)
    addi 5, 5, 0x1
    fadds 1, 1, 26
    fadds 0, 0, 31
    stfs 1, 0xc0(1)
    stfs 0, 0xbc(1)
    bl fn_802A381C
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    .4byte 0x4180FF6C # blt .L_8033A87C
    addi 27, 27, 0x1
    cmpwi 27, 0x6
    .4byte 0x4180FF44 # blt .L_8033A860
    .4byte 0x48000364 # b .L_8033AC84
    lfs 2, 0x10(31)
    addi 4, 1, 0xb0
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 6, 0x272
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    lwz 5, 0x4(31)
    fsubs 1, 0, 1
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0xb4(1)
    stfs 1, 0xb0(1)
    stfs 0, 0xb8(1)
    bl fn_802A381C
    lfs 2, 0x10(31)
    addi 4, 1, 0xa4
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 6, 0x27d
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    lwz 5, 0x4(31)
    fadds 1, 1, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0xa8(1)
    stfs 1, 0xa4(1)
    stfs 0, 0xac(1)
    bl fn_802A381C
    .4byte 0xC042F17C # lfs f2, lbl_8054211C@sda21(r0)
    addi 4, 1, 0x98
    lfs 1, 0x10(31)
    li 6, 0x275
    lfs 0, 0xc(31)
    fadds 3, 2, 1
    lwz 5, 0x4(31)
    fsubs 1, 0, 2
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x9c(1)
    stfs 1, 0x98(1)
    stfs 0, 0xa0(1)
    bl fn_802A381C
    .4byte 0xC042F17C # lfs f2, lbl_8054211C@sda21(r0)
    addi 4, 1, 0x8c
    lfs 1, 0x10(31)
    li 6, 0x27a
    lfs 0, 0xc(31)
    fadds 3, 2, 1
    lwz 5, 0x4(31)
    fadds 1, 2, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x90(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x94(1)
    bl fn_802A381C
    .4byte 0x48000280 # b .L_8033AC84
    lfs 2, 0x10(31)
    addi 4, 1, 0x80
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 6, 0x273
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    lwz 5, 0x4(31)
    fsubs 1, 0, 1
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x84(1)
    stfs 1, 0x80(1)
    stfs 0, 0x88(1)
    bl fn_802A381C
    lfs 2, 0x10(31)
    addi 4, 1, 0x74
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 6, 0x27c
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    lwz 5, 0x4(31)
    fadds 1, 1, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x78(1)
    stfs 1, 0x74(1)
    stfs 0, 0x7c(1)
    bl fn_802A381C
    .4byte 0xC042F17C # lfs f2, lbl_8054211C@sda21(r0)
    addi 4, 1, 0x68
    lfs 1, 0x10(31)
    li 6, 0x274
    lfs 0, 0xc(31)
    fadds 3, 2, 1
    lwz 5, 0x4(31)
    fsubs 1, 0, 2
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x6c(1)
    stfs 1, 0x68(1)
    stfs 0, 0x70(1)
    bl fn_802A381C
    .4byte 0xC042F17C # lfs f2, lbl_8054211C@sda21(r0)
    addi 4, 1, 0x5c
    lfs 1, 0x10(31)
    li 6, 0x27b
    lfs 0, 0xc(31)
    fadds 3, 2, 1
    lwz 5, 0x4(31)
    fadds 1, 2, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x60(1)
    stfs 1, 0x5c(1)
    stfs 0, 0x64(1)
    bl fn_802A381C
    .4byte 0x4800019C # b .L_8033AC84
    lfs 2, 0x10(31)
    addi 4, 1, 0x50
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 6, 0x361
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    lwz 5, 0x4(31)
    fsubs 1, 0, 1
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x54(1)
    stfs 1, 0x50(1)
    stfs 0, 0x58(1)
    bl fn_802A381C
    lfs 2, 0x10(31)
    addi 4, 1, 0x44
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 6, 0x361
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    lwz 5, 0x4(31)
    fadds 1, 1, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x48(1)
    stfs 1, 0x44(1)
    stfs 0, 0x4c(1)
    bl fn_802A381C
    .4byte 0xC042F17C # lfs f2, lbl_8054211C@sda21(r0)
    addi 4, 1, 0x38
    lfs 1, 0x10(31)
    li 6, 0x361
    lfs 0, 0xc(31)
    fadds 3, 2, 1
    lwz 5, 0x4(31)
    fsubs 1, 0, 2
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x3c(1)
    stfs 1, 0x38(1)
    stfs 0, 0x40(1)
    bl fn_802A381C
    .4byte 0xC042F17C # lfs f2, lbl_8054211C@sda21(r0)
    addi 4, 1, 0x2c
    lfs 1, 0x10(31)
    li 6, 0x361
    lfs 0, 0xc(31)
    fadds 3, 2, 1
    lwz 5, 0x4(31)
    fadds 1, 2, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x30(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    bl fn_802A381C
    .4byte 0x480000B8 # b .L_8033AC84
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x40
    .4byte 0x4180000C # blt .L_8033ABF8
    cmpwi 0, 0x49
    .4byte 0x40810010 # ble .L_8033AC04
L_8033ABF8:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000084 # b .L_8033AC84
L_8033AC04:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x11
    bl fn_802A381C
    .4byte 0x4800006C # b .L_8033AC84
    lis 4, 0x544b
    mr 3, 31
    addi 4, 4, 0x5241
    bl fn_801F2718
    mr. 27, 3
    .4byte 0x41800020 # blt .L_8033AC50
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8033AC50
    li 0, 0x0
    stb 0, 0x11c(3)
L_8033AC50:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x10
    .4byte 0x4082000C # bne .L_8033AC70
    li 0, 0x1
    stb 0, 0x258(31)
L_8033AC70:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x9e
    bl fn_802A381C
L_8033AC84:
    li 0, 0x0
    .4byte 0xC002F14C # lfs f0, lbl_805420EC@sda21(r0)
    stw 0, 0x238(31)
    stfs 0, 0x44(31)
    .4byte 0x4800092C # b .L_8033B5C0
L_8033AC98:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x5
    .4byte 0x41820070 # beq .L_8033AD10
    .4byte 0x408000D8 # bge .L_8033AD7C
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8033ACB4
    .4byte 0x480000CC # b .L_8033AD7C
L_8033ACB4:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x21
    .4byte 0x418200B4 # beq .L_8033AD7C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_8033AD04
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8033AD04:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000AAC # b .L_8033B7B8
L_8033AD10:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x40
    .4byte 0x4180000C # blt .L_8033AD38
    cmpwi 0, 0x49
    .4byte 0x40810048 # ble .L_8033AD7C
L_8033AD38:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_8033AD70
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8033AD70:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000A40 # b .L_8033B7B8
L_8033AD7C:
    lwz 0, 0x244(31)
    stw 0, 0x248(31)
    lbz 0, 0x278(31)
    cmplwi 0, 0x0
    .4byte 0x40820834 # bne .L_8033B5C0
    li 29, 0xfff
    bl SpatialRegistry_GetBase
    lwz 28, 0x1008(3)
    li 26, 0x0
    li 27, 0x0
    .4byte 0x48000080 # b .L_8033AE24
L_8033ADA8:
    bl SpatialRegistry_GetBase
    addi 0, 27, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820064 # beq .L_8033AE1C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x464c
    cmplwi 0, 0x594f
    .4byte 0x40820054 # bne .L_8033AE1C
    cmplwi 4, 0x0
    .4byte 0x4182004C # beq .L_8033AE1C
    lwz 3, 0x230(4)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8033ADE8
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_8033ADF0
L_8033ADE8:
    lwz 0, 0x248(4)
    .4byte 0x48000008 # b .L_8033ADF4
L_8033ADF0:
    li 0, 0xfff
L_8033ADF4:
    cmpw 0, 29
    .4byte 0x41810024 # bgt .L_8033AE1C
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8033AE0C
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_8033AE14
L_8033AE0C:
    lwz 0, 0x248(4)
    .4byte 0x48000008 # b .L_8033AE18
L_8033AE14:
    li 0, 0xfff
L_8033AE18:
    mr 29, 0
L_8033AE1C:
    addi 27, 27, 0x4
    addi 26, 26, 0x1
L_8033AE24:
    cmpw 26, 28
    .4byte 0x4180FF80 # blt .L_8033ADA8
    lwz 0, 0x244(31)
    cmpw 29, 0
    .4byte 0x4082002C # bne .L_8033AE60
    lwz 4, 0x26c(31)
    li 0, 0x1
    lwz 3, 0x274(31)
    add 3, 4, 3
    stw 3, 0x244(31)
    lwz 3, 0x244(31)
    mulli 3, 3, 0x3c
    addi 3, 3, 0x3c
    stw 3, 0x270(31)
    stb 0, 0x278(31)
L_8033AE60:
    stw 29, 0x26c(31)
    .4byte 0x4800075C # b .L_8033B5C0
L_8033AE68:
    lwz 5, 0x238(31)
    cmpwi 5, 0x5a
    .4byte 0x41800090 # blt .L_8033AF00
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x40
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 8, 1, 0x10
    lha 11, 0x25a(31)
    li 6, 0x0
    lha 4, 0x25c(31)
    li 7, 0x0
    li 9, 0x0
    li 10, 0x0
    add 4, 11, 4
    sth 4, 0x25a(31)
    stw 0, 0x238(31)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 1, 0x4(3)
    fcmpo cr0, 1, 0
    .4byte 0x408106D4 # ble .L_8033B5C0
    lwz 3, 0x264(31)
    addi 0, 3, 0xa
    stw 0, 0x264(31)
    .4byte 0x480006C4 # b .L_8033B5C0
L_8033AF00:
    cmpwi 5, 0x1e
    .4byte 0x41800020 # blt .L_8033AF24
    lha 3, 0x25a(31)
    lha 0, 0x25c(31)
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    add 0, 3, 0
    sth 0, 0x25a(31)
    stfs 0, 0x44(31)
    .4byte 0x480006A0 # b .L_8033B5C0
L_8033AF24:
    lha 0, 0x25c(31)
    lis 3, 0x8889
    subi 3, 3, 0x7777
    lha 4, 0x25a(31)
    mullw 0, 0, 5
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 4
    srwi 3, 0, 31
    add 0, 0, 3
    add 0, 4, 0
    sth 0, 0x25a(31)
    lfs 1, 0x84(31)
    lfs 0, 0x44(31)
    fsubs 0, 1, 0
    stfs 0, 0x84(31)
    lfs 1, 0x8c(31)
    lfs 0, 0x44(31)
    fsubs 0, 1, 0
    stfs 0, 0x8c(31)
    .4byte 0x4800064C # b .L_8033B5C0
L_8033AF78:
    lha 3, 0x25a(31)
    lha 0, 0x25c(31)
    add 0, 3, 0
    sth 0, 0x25a(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x4
    .4byte 0x40800018 # bge .L_8033AFA8
    cmpwi 0, 0x2
    .4byte 0x408000A4 # bge .L_8033B03C
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_8033AFB0
    .4byte 0x4800061C # b .L_8033B5C0
L_8033AFA8:
    cmpwi 0, 0xa
    .4byte 0x40800614 # bge .L_8033B5C0
L_8033AFB0:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x41810608 # bgt .L_8033B5C0
    lfs 1, 0x10(31)
    mr 3, 31
    lfs 0, 0x14(31)
    addi 5, 1, 0x8
    addi 8, 1, 0x10
    li 6, 0x0
    fsubs 0, 1, 0
    li 7, 0x0
    li 9, 0x0
    li 10, 0x0
    stfs 0, 0x10(31)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lfs 2, 0x10(31)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0x14(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022F180 # lfs f1, lbl_80542120@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x10(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x27c(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x280(31)
    .4byte 0x48000588 # b .L_8033B5C0
L_8033B03C:
    lis 3, 0x6666
    lwz 4, 0x238(31)
    addi 0, 3, 0x6667
    mulhw 0, 0, 4
    srawi 0, 0, 3
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x14
    subf 0, 0, 4
    cmpwi 0, 0x1
    .4byte 0x4082055C # bne .L_8033B5C0
    cmpwi 4, 0x3d
    .4byte 0x41810554 # bgt .L_8033B5C0
    lfs 1, 0x10(31)
    mr 3, 31
    lfs 0, 0x14(31)
    addi 5, 1, 0x8
    addi 8, 1, 0x10
    li 6, 0x0
    fsubs 0, 1, 0
    li 7, 0x0
    li 9, 0x0
    li 10, 0x0
    stfs 0, 0x10(31)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lfs 2, 0x10(31)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0x14(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022F184 # lfs f1, lbl_80542124@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x10(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x27c(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x280(31)
    .4byte 0x480004D4 # b .L_8033B5C0
L_8033B0F0:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_8033B128
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8033B128:
    lwz 0, 0x24c(31)
    cmplwi 0, 0x9
    .4byte 0x41810400 # bgt .L_8033B530
    lis 3, jumptable_804AC17C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AC17C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x7e
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x7f
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x18
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000380 # b .L_8033B530
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F188 # lfs f1, lbl_80542128@sda21(r0)
    li 5, 0x357
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_80339820
    .4byte 0x48000338 # b .L_8033B530
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0xad
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0xaf
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0xb0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480002A8 # b .L_8033B530
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x82
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x83
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x84
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x288(31)
    lbz 0, 0x0(3)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x4182000C # beq .L_8033B320
    cmpwi 0, 0x73
    .4byte 0x40820030 # bne .L_8033B34C
L_8033B320:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x80
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_8033B374
L_8033B34C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x81
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8033B374:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001A8 # b .L_8033B530
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0xa7
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0xa8
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000140 # b .L_8033B530
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0xab
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0xac
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0xb
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_80339820
    .4byte 0x480000D0 # b .L_8033B530
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x99
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x9a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000068 # b .L_8033B530
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x78
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F14C # lfs f1, lbl_805420EC@sda21(r0)
    li 5, 0x79
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x18
    li 5, 0x0
    bl fn_801F0E34
L_8033B530:
    lwz 0, 0x254(31)
    cmpwi 0, 0x1
    .4byte 0x4082005C # bne .L_8033B594
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    li 7, 0x4
    bl fn_801F8544
    mr. 28, 3
    .4byte 0x41800038 # blt .L_8033B594
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8033B594
    .4byte 0xC022F148 # lfs f1, lbl_805420E8@sda21(r0)
    .4byte 0xC002F18C # lfs f0, lbl_8054212C@sda21(r0)
    stfs 1, 0x20(1)
    stfs 1, 0x24(1)
    psq_l 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_8033B594:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000024 # b .L_8033B5C0
L_8033B5A0:
    bl GetRoomConfigRecord
    lwz 4, 0x250(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8033B5C0
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x238(31)
L_8033B5C0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182009C # beq .L_8033B664
    cmpwi 0, 0x4
    .4byte 0x41820094 # beq .L_8033B664
    lfs 2, 0x10(31)
    addi 4, 1, 0x14
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stfs 1, 0x14(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 5, 0x240(31)
    lis 3, 0x1
    lha 4, 0x25c(31)
    addi 0, 3, -0x8000
    add 3, 5, 4
    stw 3, 0x240(31)
    lwz 3, 0x240(31)
    cmpw 3, 0
    .4byte 0x41800040 # blt .L_8033B664
    addi 0, 3, -0x8000
    stw 0, 0x240(31)
    lwz 3, 0x23c(31)
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41810020 # bgt .L_8033B664
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x23c(31)
    mr 3, 31
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
L_8033B664:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8033B678
    cmpwi 0, 0x2
    .4byte 0x4082012C # bne .L_8033B7A0
L_8033B678:
    .4byte 0xC022F174 # lfs f1, lbl_80542114@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8033B69C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000108 # b .L_8033B7A0
L_8033B69C:
    clrlwi. 0, 30, 24
    .4byte 0x40820020 # bne .L_8033B6C0
    lwz 4, 0x114(31)
    mr 3, 31
    lwz 6, 0x268(31)
    li 5, -0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8033B6CC
L_8033B6C0:
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480000D8 # b .L_8033B7A0
L_8033B6CC:
    li 26, 0x0
L_8033B6D0:
    mr 3, 31
    addi 5, 1, 0xc
    li 4, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    cmpw 26, 3
    .4byte 0x408200A8 # bne .L_8033B794
    lwz 0, 0xc(1)
    cmpwi 0, 0x1
    .4byte 0x40820060 # bne .L_8033B758
    mr 3, 26
    bl fn_8022F340
    bl fn_802357E0
    mr 29, 3
    mr 3, 26
    bl fn_8022F340
    mr 4, 29
    bl fn_802359A4
    mr 3, 26
    bl fn_8022F340
    bl fn_802357E0
    lwz 28, 0x4(31)
    mr 27, 3
    mr 3, 26
    bl fn_8022F340
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    mr 5, 28
    mr 7, 27
    addi 6, 31, 0xc
    li 8, 0x0
    bl fn_801F6718
L_8033B758:
    mr 3, 26
    bl fn_8023E724
    mr 29, 3
    mr 3, 26
    bl fn_8023B6CC
    lwz 7, 0xc(1)
    mr 4, 3
    mr 3, 31
    mr 5, 29
    mr 8, 26
    li 6, 0x0
    bl fn_801F37AC
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_8033B7A0
L_8033B794:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF34 # blt .L_8033B6D0
L_8033B7A0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820010 # beq .L_8033B7B8
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
L_8033B7B8:
    psq_l 31, 0x158(1), 0, 0
    lfd 31, 0x150(1)
    psq_l 30, 0x148(1), 0, 0
    lfd 30, 0x140(1)
    psq_l 29, 0x138(1), 0, 0
    lfd 29, 0x130(1)
    psq_l 28, 0x128(1), 0, 0
    lfd 28, 0x120(1)
    psq_l 27, 0x118(1), 0, 0
    lfd 27, 0x110(1)
    psq_l 26, 0x108(1), 0, 0
    lfd 26, 0x100(1)
    lmw 26, 0xe8(1)
    lwz 0, 0x164(1)
    mtlr 0
    addi 1, 1, 0x160
    blr

fn_8033B7FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    lwz 31, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 30
    mr 6, 31
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8033B860
    li 3, 0x1
    .4byte 0x48000160 # b .L_8033B9BC
L_8033B860:
    mr 3, 30
    mr 4, 29
    bl fn_8022461C
    clrlwi. 0, 3, 16
    mr 31, 3
    .4byte 0x41820014 # beq .L_8033B888
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8033B888
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8033B890
L_8033B888:
    li 3, 0x0
    .4byte 0x48000130 # b .L_8033B9BC
L_8033B890:
    cmplwi 0, 0x22
    .4byte 0x4082001C # bne .L_8033B8B0
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8033B8B0
    li 3, 0x0
    .4byte 0x48000110 # b .L_8033B9BC
L_8033B8B0:
    clrlwi 0, 31, 16
    cmplwi 0, 0x39
    .4byte 0x4082000C # bne .L_8033B8C4
    li 3, 0x0
    .4byte 0x480000FC # b .L_8033B9BC
L_8033B8C4:
    cmplwi 0, 0x25
    .4byte 0x4082001C # bne .L_8033B8E4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8033B8E4
    li 3, 0x0
    .4byte 0x480000DC # b .L_8033B9BC
L_8033B8E4:
    clrlwi 0, 31, 16
    cmplwi 0, 0x4
    .4byte 0x40820028 # bne .L_8033B914
    lfs 0, 0x4(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x418000B0 # blt .L_8033B9B8
    li 3, 0x0
    .4byte 0x480000AC # b .L_8033B9BC
L_8033B914:
    cmplwi 0, 0x5
    .4byte 0x40820028 # bne .L_8033B940
    lfs 0, 0x4(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x40800084 # bge .L_8033B9B8
    li 3, 0x0
    .4byte 0x48000080 # b .L_8033B9BC
L_8033B940:
    cmplwi 0, 0x6
    .4byte 0x40820028 # bne .L_8033B96C
    lfs 0, 0x0(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x41800058 # blt .L_8033B9B8
    li 3, 0x0
    .4byte 0x48000054 # b .L_8033B9BC
L_8033B96C:
    cmplwi 0, 0x7
    .4byte 0x40820028 # bne .L_8033B998
    lfs 0, 0x0(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x4080002C # bge .L_8033B9B8
    li 3, 0x0
    .4byte 0x48000028 # b .L_8033B9BC
L_8033B998:
    cmplwi 0, 0x3
    .4byte 0x41820014 # beq .L_8033B9B0
    cmplwi 0, 0xe
    .4byte 0x4182000C # beq .L_8033B9B0
    cmplwi 0, 0xd
    .4byte 0x4082000C # bne .L_8033B9B8
L_8033B9B0:
    li 3, 0x0
    .4byte 0x48000008 # b .L_8033B9BC
L_8033B9B8:
    li 3, 0x1
L_8033B9BC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8033B9D8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lis 31, 0x464c
    stw 30, 0x18(1)
    li 30, -0x1
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
L_8033BA04:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x594f
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x41800064 # blt .L_8033BA7C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_8033BA04
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8033BA44
    cmpwi 0, 0x4
    .4byte 0x4082000C # bne .L_8033BA4C
L_8033BA44:
    lwz 3, 0x248(3)
    .4byte 0x48000008 # b .L_8033BA50
L_8033BA4C:
    li 3, 0xfff
L_8033BA50:
    lwz 0, 0x26c(28)
    cmpw 3, 0
    .4byte 0x40800008 # bge .L_8033BA60
    stw 3, 0x26c(28)
L_8033BA60:
    cmpw 29, 3
    .4byte 0x4080FFA0 # bge .L_8033BA04
    lwz 0, 0x244(28)
    cmpw 3, 0
    .4byte 0x4080FF94 # bge .L_8033BA04
    mr 29, 3
    .4byte 0x4BFFFF8C # b .L_8033BA04
L_8033BA7C:
    lwz 3, 0x26c(28)
    lwz 0, 0x244(28)
    cmpw 3, 0
    .4byte 0x4082000C # bne .L_8033BA94
    li 0, 0x1
    stb 0, 0x278(28)
L_8033BA94:
    cmpwi 29, 0x0
    .4byte 0x41820010 # beq .L_8033BAA8
    lwz 0, 0x244(28)
    subf 0, 29, 0
    stw 0, 0x274(28)
L_8033BAA8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8033BAC8:
    stwu 1, -0x40(1)
    mflr 0
    li 6, 0x0
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    stw 0, 0x44(1)
    li 5, 0x5
    stw 31, 0x3c(1)
    mr 31, 3
    lis 3, 0x1
    lwz 0, 0x90(31)
    addi 4, 3, -0x8000
    li 3, 0x1
    clrlwi 0, 0, 21
    stw 0, 0x244(31)
    li 0, 0xfff
    lwz 7, 0x90(31)
    extrwi 7, 7, 5, 16
    stw 7, 0x250(31)
    lwz 7, 0x90(31)
    extrwi 7, 7, 4, 12
    stw 7, 0x24c(31)
    lwz 7, 0x90(31)
    extrwi 7, 7, 4, 8
    stw 7, 0x254(31)
    lwz 7, 0x90(31)
    extrwi 7, 7, 3, 5
    mulli 7, 7, 0x5
    addi 7, 7, 0xf
    stw 7, 0x264(31)
    stw 6, 0x108(31)
    stfs 0, 0x284(31)
    stfs 0, 0x280(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    sth 6, 0x234(31)
    stw 6, 0x260(31)
    stw 6, 0x288(31)
    stw 6, 0x238(31)
    stw 5, 0x23c(31)
    sth 6, 0x25a(31)
    stw 4, 0x240(31)
    stb 6, 0x258(31)
    stw 3, 0x114(31)
    stw 3, 0x268(31)
    lwz 3, 0x244(31)
    mulli 3, 3, 0x3c
    addi 3, 3, 0x3c
    stw 3, 0x270(31)
    lwz 3, 0x244(31)
    stw 3, 0x248(31)
    stb 6, 0x278(31)
    stw 0, 0x26c(31)
    stw 6, 0x274(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8033BBB8
    stw 6, 0x230(31)
    .4byte 0x4800000C # b .L_8033BBC0
L_8033BBB8:
    li 0, 0x4
    stw 0, 0x230(31)
L_8033BBC0:
    lwz 0, 0x24c(31)
    cmplwi 0, 0x9
    .4byte 0x41810280 # bgt .L_8033BE48
    lis 3, jumptable_804AC1CC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AC1CC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 3, 0x1000
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    li 0, 0x2
    stfs 1, 0x20(1)
    psq_l 3, 0xc(31), 0, 0
    stfs 1, 0x24(1)
    .4byte 0xC022F198 # lfs f1, lbl_80542138@sda21(r0)
    psq_l 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    ps_add 3, 3, 2
    .4byte 0xC002F19C # lfs f0, lbl_8054213C@sda21(r0)
    psq_l 2, 0x28(1), 1, 0
    psq_st 3, 0xc(31), 0, 0
    psq_l 3, 0x14(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x14(31), 1, 0
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    sth 3, 0x25c(31)
    stw 0, 0x114(31)
    .4byte 0x480001F8 # b .L_8033BE48
    .4byte 0xC022F1A0 # lfs f1, lbl_80542140@sda21(r0)
    li 3, 0x1000
    .4byte 0xC002F1A4 # lfs f0, lbl_80542144@sda21(r0)
    li 0, 0x2
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    sth 3, 0x25c(31)
    stw 0, 0x114(31)
    .4byte 0x480001BC # b .L_8033BE48
    .4byte 0xC042F148 # lfs f2, lbl_805420E8@sda21(r0)
    li 0, 0x800
    .4byte 0xC002F174 # lfs f0, lbl_80542114@sda21(r0)
    stfs 2, 0x14(1)
    psq_l 3, 0xc(31), 0, 0
    stfs 0, 0x18(1)
    .4byte 0xC022F1A8 # lfs f1, lbl_80542148@sda21(r0)
    psq_l 0, 0x14(1), 0, 0
    stfs 2, 0x1c(1)
    ps_add 3, 3, 0
    .4byte 0xC002F1AC # lfs f0, lbl_8054214C@sda21(r0)
    psq_l 2, 0x1c(1), 1, 0
    psq_st 3, 0xc(31), 0, 0
    psq_l 3, 0x14(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x14(31), 1, 0
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    sth 0, 0x25c(31)
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    stw 3, 0x288(31)
    li 0, 0x2
    stw 0, 0x114(31)
    .4byte 0x48000140 # b .L_8033BE48
    .4byte 0xC022F1B0 # lfs f1, lbl_80542150@sda21(r0)
    li 0, 0x400
    .4byte 0xC002F1B4 # lfs f0, lbl_80542154@sda21(r0)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    sth 0, 0x25c(31)
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    stw 3, 0x288(31)
    li 3, 0x4
    li 0, 0x2
    stw 3, 0x114(31)
    stw 0, 0x268(31)
    .4byte 0x480000F0 # b .L_8033BE48
    .4byte 0xC022F1A0 # lfs f1, lbl_80542140@sda21(r0)
    li 3, 0x800
    .4byte 0xC002F1A4 # lfs f0, lbl_80542144@sda21(r0)
    li 0, 0x4
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    sth 3, 0x25c(31)
    stw 0, 0x114(31)
    .4byte 0x480000B4 # b .L_8033BE48
    .4byte 0xC002F1A0 # lfs f0, lbl_80542140@sda21(r0)
    li 3, 0x800
    .4byte 0xC042F1A4 # lfs f2, lbl_80542144@sda21(r0)
    li 0, 0x4
    stfs 0, 0x80(31)
    .4byte 0xC022F1B8 # lfs f1, lbl_80542158@sda21(r0)
    stfs 0, 0x84(31)
    .4byte 0xC002F1BC # lfs f0, lbl_8054215C@sda21(r0)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    sth 3, 0x25c(31)
    stw 0, 0x114(31)
    .4byte 0x48000070 # b .L_8033BE48
    .4byte 0xC022F17C # lfs f1, lbl_8054211C@sda21(r0)
    li 3, 0x800
    .4byte 0xC002F148 # lfs f0, lbl_805420E8@sda21(r0)
    li 0, 0x2
    stfs 1, 0x8(1)
    psq_l 3, 0xc(31), 0, 0
    stfs 1, 0xc(1)
    .4byte 0xC022F1A0 # lfs f1, lbl_80542140@sda21(r0)
    psq_l 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    ps_add 3, 3, 2
    .4byte 0xC002F1A4 # lfs f0, lbl_80542144@sda21(r0)
    psq_l 2, 0x10(1), 1, 0
    psq_st 3, 0xc(31), 0, 0
    psq_l 3, 0x14(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x14(31), 1, 0
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    sth 3, 0x25c(31)
    stw 0, 0x114(31)
L_8033BE48:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8033BE5C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805099F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805099F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033BEAC
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
L_8033BEAC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033BEE4
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
L_8033BEE4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033BF1C
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
L_8033BF1C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033BF54
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
L_8033BF54:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033BF8C
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
L_8033BF8C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033BFC4
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
L_8033BFC4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033BFFC
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
L_8033BFFC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C034
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
L_8033C034:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C06C
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
L_8033C06C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033C080:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8033C0C4
    lis 5, lbl_804AC1F8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AC1F8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033C0C4
    mr 3, 30
    bl dtor_80084580
L_8033C0C4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033C0E0:
    blr

fn_8033C0E4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 31, 3
    .4byte 0xC802F1C0 # lfd f0, lbl_80542160@sda21(r0)
    lfs 1, 0x44(3)
    addi 30, 1, 0x8
    .4byte 0xC3E2F1C8 # lfs f31, lbl_80542168@sda21(r0)
    li 29, 0x0
    fsub 0, 1, 0
    li 28, 0x0
    frsp 0, 0
    stfs 0, 0x44(3)
L_8033C130:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    stfs 0, 0x10(1)
    psq_st 1, 0x0(30), 0, 0
    psq_l 2, 0x8(30), 1, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(30), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(30), 1, 0
    lfs 0, 0x10(1)
    fcmpo cr0, 0, 31
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8033C18C
    stfs 31, 0x10(1)
    mr 3, 28
    li 4, 0x2
    bl fn_80230BF4
    li 29, 0x1
    .4byte 0x4800009C # b .L_8033C224
L_8033C18C:
    lfs 0, 0x44(31)
    fcmpo cr0, 0, 31
    .4byte 0x40810070 # ble .L_8033C204
    lwz 3, 0x4(31)
    mr 4, 30
    .4byte 0xC022F1CC # lfs f1, lbl_8054216C@sda21(r0)
    li 5, 0x345
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x230(31)
    lis 3, 0x6666
    addi 6, 3, 0x6667
    mr 3, 28
    mulli 0, 0, 0xff
    addi 4, 1, 0x8
    li 5, 0x3cf
    li 7, -0x80
    mulhw 0, 6, 0
    li 8, -0x80
    li 9, 0x1
    srawi 0, 0, 4
    srwi 6, 0, 31
    add 0, 0, 6
    clrlwi 6, 0, 24
    bl fn_80230498
    .4byte 0x48000024 # b .L_8033C224
L_8033C204:
    mr 3, 28
    mr 4, 30
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8033C224:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF04 # blt .L_8033C130
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x28
    .4byte 0x4081000C # ble .L_8033C250
    li 0, 0x28
    stw 0, 0x230(31)
L_8033C250:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_8033C29C
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_8033C29C
    bl fn_80231368
    li 28, 0x0
L_8033C278:
    mr 3, 28
    li 4, 0x0
    li 5, 0x1
    bl fn_8022CA6C
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFE8 # blt .L_8033C278
    li 0, 0x0
    stb 0, 0x11c(31)
L_8033C29C:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8033C2C4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    li 31, 0x0
    stw 31, 0x230(3)
    li 30, 0x0
    .4byte 0xC3E2F1D0 # lfs f31, lbl_80542170@sda21(r0)
L_8033C2F8:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8033C310
    stb 31, 0x11c(29)
    .4byte 0x48000008 # b .L_8033C314
L_8033C310:
    stfs 31, 0x44(29)
L_8033C314:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_8033C2F8
    lwz 0, 0x90(29)
    clrlwi. 0, 0, 31
    .4byte 0x40820014 # bne .L_8033C33C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0xff
    lwz 3, 0x2c(3)
    stb 0, 0xc(3)
L_8033C33C:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8033C360:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80509AF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80509AF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C3B0
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
L_8033C3B0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C3E8
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
L_8033C3E8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C420
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
L_8033C420:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C458
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
L_8033C458:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C490
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
L_8033C490:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C4C8
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
L_8033C4C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C500
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
L_8033C500:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C538
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
L_8033C538:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033C570
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
L_8033C570:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033C584:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    mr 31, 3
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_8033C610
L_8033C5B0:
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
L_8033C610:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8033C5B0
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 5, 0x28(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 5, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 5, 0x3d(1)
    stb 5, 0x3e(1)
    stw 6, 0x40(1)
    stw 5, 0x44(1)
    stw 0, 0x48(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x3c
    .4byte 0x4080001C # bge .L_8033C6A8
    lwz 0, 0x234(31)
    srwi 3, 0, 31
    clrlwi 0, 0, 31
    xor 0, 0, 3
    subf. 0, 3, 0
    .4byte 0x40820068 # bne .L_8033C70C
L_8033C6A8:
    li 0, 0x1
    .4byte 0xC022F1D8 # lfs f1, lbl_80542178@sda21(r0)
    stb 0, 0x3d(1)
    lis 3, lbl_80471E10@ha
    addi 4, 3, lbl_80471E10@l
    fmr 2, 1
    lwz 5, 0x23c(31)
    mr 3, 31
    addi 6, 1, 0x10
    li 7, 0x1
    addi 5, 5, 0x5e
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x23c(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x5e
    bl fn_803075AC
L_8033C70C:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8033C720:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC042F1DC # lfs f2, lbl_8054217C@sda21(r0)
    lfs 1, 0x248(3)
    addi 3, 31, 0x3c
    .4byte 0xC062F1E0 # lfs f3, lbl_80542180@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x24c(31)
    addi 3, 31, 0x40
    .4byte 0xC042F1DC # lfs f2, lbl_8054217C@sda21(r0)
    .4byte 0xC062F1E0 # lfs f3, lbl_80542180@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x250(31)
    addi 3, 31, 0x14
    .4byte 0xC042F1E4 # lfs f2, lbl_80542184@sda21(r0)
    .4byte 0xC062F1E0 # lfs f3, lbl_80542180@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 3, 0x254(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8033C7BC
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
L_8033C7BC:
    lwz 3, 0x258(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8033C7E0
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
L_8033C7E0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8033C7F0
    .4byte 0x480000B8 # b .L_8033C8A4
L_8033C7F0:
    lis 3, 0x6666
    lwz 4, 0x234(31)
    addi 0, 3, 0x6667
    mulhw 0, 0, 4
    srawi 0, 0, 1
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x5
    subf. 0, 0, 4
    .4byte 0x40820058 # bne .L_8033C86C
    lwz 3, 0x240(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    lwz 3, 0x240(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    fneg 1, 31
    addi 3, 3, lbl_80534C00@l
    fsubs 0, 0, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002F1E8 # lfs f0, lbl_80542188@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    sth 0, 0x244(31)
L_8033C86C:
    lha 0, 0x244(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022F1EC # lfs f1, lbl_8054218C@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x248(31)
    lha 0, 0x244(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x24c(31)
L_8033C8A4:
    lwz 3, 0x234(31)
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add. 0, 0, 3
    .4byte 0x40820024 # bne .L_8033C8E0
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8033C8E0
    li 0, 0x0
    stw 0, 0x23c(31)
L_8033C8E0:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4181004C # bgt .L_8033C940
    lwz 4, 0x254(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8033C918
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8033C918:
    lwz 4, 0x258(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8033C938
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8033C938:
    mr 3, 31
    bl fn_801F3668
L_8033C940:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8033C968:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x8
    .4byte 0xC082F1F0 # lfs f4, lbl_80542190@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0xb4
    .4byte 0xC062F1EC # lfs f3, lbl_8054218C@sda21(r0)
    li 5, 0x183
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC042F1F4 # lfs f2, lbl_80542194@sda21(r0)
    li 7, 0x0
    lwz 4, 0x90(3)
    li 3, 0x0
    .4byte 0xC002F1F8 # lfs f0, lbl_80542198@sda21(r0)
    li 8, 0x0
    clrlwi 4, 4, 30
    .4byte 0xC022F1D8 # lfs f1, lbl_80542178@sda21(r0)
    stw 4, 0x240(31)
    addi 4, 31, 0xc
    li 9, 0x0
    li 10, 0x1
    stw 6, 0x108(31)
    li 6, 0x0
    stw 3, 0x23c(31)
    stfs 4, 0x248(31)
    stfs 4, 0x24c(31)
    stfs 4, 0x250(31)
    stfs 4, 0x3c(31)
    stfs 4, 0x40(31)
    stfs 4, 0x44(31)
    stfs 3, 0x3c(31)
    stfs 2, 0x250(31)
    stfs 0, 0x40(31)
    stw 3, 0x234(31)
    stw 0, 0x238(31)
    sth 3, 0x244(31)
    stw 3, 0x230(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x254(31)
    addi 4, 31, 0xc
    .4byte 0xC022F1D8 # lfs f1, lbl_80542178@sda21(r0)
    li 5, 0x184
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x258(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033CA4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_8033CAA4
    lis 3, lbl_804AC250@ha
    addi 0, 3, lbl_804AC250@l
    stw 0, 0x0(30)
    lwz 3, 0x254(30)
    bl fn_801EE434
    lwz 3, 0x258(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033CAA4
    mr 3, 30
    bl dtor_80084580
L_8033CAA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033CAC0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80509BF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80509BF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CB10
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
L_8033CB10:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CB48
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
L_8033CB48:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CB80
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
L_8033CB80:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CBB8
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
L_8033CBB8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CBF0
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
L_8033CBF0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CC28
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
L_8033CC28:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CC60
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
L_8033CC60:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CC98
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
L_8033CC98:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033CCD0
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
L_8033CCD0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033CCE4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8033CD28
    lis 5, lbl_804AC2D8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AC2D8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033CD28
    mr 3, 30
    bl dtor_80084580
L_8033CD28:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033CD44:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stfd 31, 0x140(1)
    psq_st 31, 0x148(1), 0, 0
    stfd 30, 0x130(1)
    psq_st 30, 0x138(1), 0, 0
    stfd 29, 0x120(1)
    psq_st 29, 0x128(1), 0, 0
    stfd 28, 0x110(1)
    psq_st 28, 0x118(1), 0, 0
    stfd 27, 0x100(1)
    psq_st 27, 0x108(1), 0, 0
    stfd 26, 0xf0(1)
    psq_st 26, 0xf8(1), 0, 0
    stmw 26, 0xd8(1)
    mr 30, 3
    lis 3, lbl_80471E28@ha
    lwz 0, 0x25c(30)
    addi 31, 3, lbl_80471E28@l
    cmpwi 0, 0x4
    .4byte 0x41820458 # beq .L_8033D1F0
    .4byte 0x4080001C # bge .L_8033CDB8
    cmpwi 0, 0x2
    .4byte 0x418200B4 # beq .L_8033CE58
    .4byte 0x408002CC # bge .L_8033D074
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8033CDC4
    .4byte 0x4800046C # b .L_8033D220
L_8033CDB8:
    cmpwi 0, 0x6
    .4byte 0x4182009C # beq .L_8033CE58
    .4byte 0x40800460 # bge .L_8033D220
L_8033CDC4:
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8033CDEC
    lwz 0, 0x250(30)
    lis 3, lbl_804ABCA0@ha
    addi 3, 3, lbl_804ABCA0@l
    addi 4, 31, 0x30
    slwi 0, 0, 2
    lwzx 3, 3, 0
    addi 28, 3, 0x475
    .4byte 0x48000020 # b .L_8033CE08
L_8033CDEC:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8033CE00
    addi 4, 31, 0x44
    li 28, 0x1c1
    .4byte 0x4800000C # b .L_8033CE08
L_8033CE00:
    li 28, 0x37c
    addi 4, 31, 0x44
L_8033CE08:
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    mr 3, 30
    mr 5, 28
    li 6, 0x0
    fmr 2, 1
    li 7, 0x3
    bl fn_801F06F0
    li 0, 0x0
    mr 6, 28
    stw 0, 0x8(1)
    addi 5, 30, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    bl fn_803075AC
    .4byte 0x480003CC # b .L_8033D220
L_8033CE58:
    cmpwi 0, 0x2
    .4byte 0x408200FC # bne .L_8033CF58
    lwz 4, 0x254(30)
    lis 3, lbl_804ABCA0@ha
    lwz 0, 0x250(30)
    addi 3, 3, lbl_804ABCA0@l
    slwi 4, 4, 4
    .4byte 0xC382F208 # lfs f28, lbl_805421A8@sda21(r0)
    add 3, 3, 4
    slwi 0, 0, 2
    lwzx 3, 3, 0
    li 27, 0x0
    .4byte 0xCBA2F218 # lfd f29, lbl_805421B8@sda21(r0)
    lis 29, 0x4330
    .4byte 0xC3C2F20C # lfs f30, lbl_805421AC@sda21(r0)
    addi 28, 3, 0x3b4
    .4byte 0xC3E2F210 # lfs f31, lbl_805421B0@sda21(r0)
    .4byte 0xC362F204 # lfs f27, lbl_805421A4@sda21(r0)
L_8033CEA0:
    xoris 0, 27, 0x8000
    stw 29, 0xc8(1)
    li 26, 0x0
    stw 0, 0xcc(1)
    lfd 0, 0xc8(1)
    fsubs 0, 0, 29
    fmadds 26, 28, 0, 27
L_8033CEBC:
    xoris 0, 26, 0x8000
    psq_l 4, 0xc(30), 0, 0
    stw 0, 0xcc(1)
    mr 3, 30
    lfs 3, 0x14(30)
    mr 5, 28
    stw 29, 0xc8(1)
    addi 4, 31, 0x44
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    li 6, 0x0
    lfd 0, 0xc8(1)
    li 7, 0x3
    stfs 31, 0x30(1)
    fmr 2, 1
    fsubs 0, 0, 29
    stfs 26, 0x28(1)
    psq_l 5, 0x30(1), 1, 0
    fmadds 0, 28, 0, 30
    psq_st 4, 0x4c(1), 0, 0
    stfs 3, 0x54(1)
    stfs 0, 0x2c(1)
    psq_l 0, 0x28(1), 0, 0
    ps_add 0, 4, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 0, 0x14(30), 1, 0
    ps_add 0, 0, 5
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F06F0
    psq_l 1, 0x4c(1), 0, 0
    addi 26, 26, 0x1
    lfs 0, 0x54(1)
    cmpwi 26, 0x2
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x4180FF78 # blt .L_8033CEBC
    addi 27, 27, 0x1
    cmpwi 27, 0x2
    .4byte 0x4180FF50 # blt .L_8033CEA0
    .4byte 0x48000074 # b .L_8033CFC8
L_8033CF58:
    .4byte 0xC022F210 # lfs f1, lbl_805421B0@sda21(r0)
    mr 3, 30
    .4byte 0xC002F204 # lfs f0, lbl_805421A4@sda21(r0)
    addi 4, 31, 0x44
    stfs 1, 0x1c(1)
    li 5, 0x37d
    psq_l 3, 0xc(30), 0, 0
    li 6, 0x0
    stfs 0, 0x20(1)
    li 7, 0x3
    lfs 0, 0x14(30)
    psq_l 2, 0x1c(1), 0, 0
    stfs 1, 0x24(1)
    ps_add 5, 3, 2
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    psq_l 4, 0x24(1), 1, 0
    fmr 2, 1
    psq_st 3, 0x40(1), 0, 0
    psq_st 5, 0xc(30), 0, 0
    psq_l 3, 0x14(30), 1, 0
    stfs 0, 0x48(1)
    ps_add 0, 3, 4
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F06F0
    psq_l 1, 0x40(1), 0, 0
    lfs 0, 0x48(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
L_8033CFC8:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8033CFF0
    lwz 0, 0x250(30)
    lis 3, lbl_804ABCA0@ha
    addi 3, 3, lbl_804ABCA0@l
    slwi 0, 0, 2
    lwzx 3, 3, 0
    addi 6, 3, 0x3ca
    .4byte 0x48000008 # b .L_8033CFF4
L_8033CFF0:
    li 6, 0x37d
L_8033CFF4:
    .4byte 0xC022F210 # lfs f1, lbl_805421B0@sda21(r0)
    addi 5, 30, 0xc
    .4byte 0xC002F204 # lfs f0, lbl_805421A4@sda21(r0)
    li 0, 0x0
    stfs 1, 0x10(1)
    li 7, 0x0
    psq_l 2, 0x0(5), 0, 0
    li 8, 0x2
    stfs 0, 0x14(1)
    li 9, -0x1
    lfs 0, 0x14(30)
    li 10, 0x0
    psq_l 3, 0x10(1), 0, 0
    stfs 1, 0x18(1)
    ps_add 3, 2, 3
    psq_l 1, 0x18(1), 1, 0
    psq_st 2, 0x34(1), 0, 0
    psq_st 3, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    stfs 0, 0x3c(1)
    ps_add 0, 2, 1
    psq_st 0, 0x8(5), 1, 0
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    bl fn_803075AC
    psq_l 1, 0x34(1), 0, 0
    lfs 0, 0x3c(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x480001B0 # b .L_8033D220
L_8033D074:
    li 0, -0x1
    addi 9, 1, 0x88
    stw 0, 0x98(1)
    li 10, 0x0
    stw 0, 0x9c(1)
    .4byte 0x48000064 # b .L_8033D0EC
L_8033D08C:
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
L_8033D0EC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8033D08C
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x98(1)
    addi 3, 1, 0x58
    stw 6, 0x9c(1)
    stw 6, 0xa0(1)
    stb 6, 0xa4(1)
    stb 6, 0xa5(1)
    stb 6, 0xa6(1)
    stb 5, 0xa7(1)
    stb 5, 0xa8(1)
    stb 6, 0xa9(1)
    stb 6, 0xaa(1)
    stb 6, 0xab(1)
    stb 6, 0xac(1)
    stb 6, 0xad(1)
    stb 5, 0xae(1)
    stw 4, 0xb0(1)
    stb 5, 0xb4(1)
    stb 6, 0xb5(1)
    stb 6, 0xb6(1)
    stw 7, 0xb8(1)
    stw 6, 0xbc(1)
    stw 0, 0xc0(1)
    bl PSMTXIdentity
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    addi 0, 1, 0x58
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    mr 3, 30
    .4byte 0xC062F214 # lfs f3, lbl_805421B4@sda21(r0)
    fmr 2, 1
    stfs 0, 0x5c(1)
    addi 4, 31, 0x44
    addi 6, 1, 0x88
    li 5, 0x1c1
    stfs 3, 0x58(1)
    li 7, 0x3
    stfs 0, 0x60(1)
    stfs 0, 0x68(1)
    stfs 3, 0x6c(1)
    stfs 0, 0x70(1)
    stfs 0, 0x78(1)
    stfs 0, 0x7c(1)
    stfs 3, 0x80(1)
    stw 0, 0xa0(1)
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    li 6, 0x1c1
    li 7, 0x1
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    bl fn_803075AC
    .4byte 0x48000034 # b .L_8033D220
L_8033D1F0:
    lis 3, 0x5449
    addi 4, 31, 0x58
    addi 3, 3, 0x4d47
    bl fn_804032E8
    .4byte 0xC022F210 # lfs f1, lbl_805421B0@sda21(r0)
    mr 4, 3
    mr 3, 30
    li 5, 0x0
    fmr 2, 1
    li 6, 0x7
    fmr 3, 1
    bl fn_801EFD34
L_8033D220:
    psq_l 31, 0x148(1), 0, 0
    lfd 31, 0x140(1)
    psq_l 30, 0x138(1), 0, 0
    lfd 30, 0x130(1)
    psq_l 29, 0x128(1), 0, 0
    lfd 29, 0x120(1)
    psq_l 28, 0x118(1), 0, 0
    lfd 28, 0x110(1)
    psq_l 27, 0x108(1), 0, 0
    lfd 27, 0x100(1)
    psq_l 26, 0xf8(1), 0, 0
    lfd 26, 0xf0(1)
    lmw 26, 0xd8(1)
    lwz 0, 0x154(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_8033D264:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    stw 0, 0x44(1)
    clrlwi 0, 4, 24
    mulli 0, 0, 0xc
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    li 30, 0x0
    stw 29, 0x34(1)
    mr 29, 4
    lis 4, lbl_80471E28@ha
    stw 28, 0x30(1)
    addi 5, 4, lbl_80471E28@l
    mr 28, 3
    lfsx 1, 5, 0
    psq_l 3, 0xc(28), 0, 0
    add 6, 5, 0
    lfs 2, 0x14(3)
    addi 4, 1, 0x18
    lfs 4, 0x4(6)
    li 5, 0x0
    stfs 1, 0x3c(3)
    lfs 1, 0x8(6)
    stfs 4, 0x40(3)
    stfs 1, 0x44(3)
    psq_l 4, 0xc(28), 0, 0
    psq_l 1, 0x3c(28), 0, 0
    stfs 2, 0x2c(1)
    ps_add 1, 4, 1
    psq_st 3, 0x24(1), 0, 0
    psq_st 1, 0xc(28), 0, 0
    psq_l 2, 0x14(28), 1, 0
    psq_l 1, 0x44(28), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(28), 1, 0
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 0, 0x20(1)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_8033D3A8
    clrlwi 0, 29, 24
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_8033D370
    .4byte 0x40800014 # bge .L_8033D32C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8033D338
    .4byte 0x40800030 # bge .L_8033D354
    .4byte 0x48000084 # b .L_8033D3AC
L_8033D32C:
    cmpwi 0, 0x4
    .4byte 0x4080007C # bge .L_8033D3AC
    .4byte 0x48000058 # b .L_8033D38C
L_8033D338:
    lfs 1, 0x18(1)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820064 # bne .L_8033D3AC
    li 30, 0x1
    .4byte 0x4800005C # b .L_8033D3AC
L_8033D354:
    lfs 1, 0x18(1)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820048 # bne .L_8033D3AC
    li 30, 0x1
    .4byte 0x48000040 # b .L_8033D3AC
L_8033D370:
    lfs 1, 0x1c(1)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_8033D3AC
    li 30, 0x1
    .4byte 0x48000024 # b .L_8033D3AC
L_8033D38C:
    lfs 1, 0x1c(1)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_8033D3AC
    li 30, 0x1
    .4byte 0x48000008 # b .L_8033D3AC
L_8033D3A8:
    li 30, 0x1
L_8033D3AC:
    clrlwi. 0, 30, 24
    .4byte 0x408200B8 # bne .L_8033D468
    lfs 1, 0x60(28)
    li 30, 0x1
    li 29, 0x0
    stfs 1, 0x8(1)
    lfs 4, 0x64(28)
    stfs 4, 0xc(1)
    lfs 2, 0x68(28)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(28)
    stfs 3, 0x14(1)
    lfs 0, 0xc(28)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(28)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
L_8033D404:
    lwz 5, 0x4(28)
    mr 3, 29
    .4byte 0xC022F210 # lfs f1, lbl_805421B0@sda21(r0)
    addi 4, 1, 0x8
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8033D45C
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x40820014 # bne .L_8033D444
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8033D45C
L_8033D444:
    lwz 31, 0x198(28)
    mr 3, 29
    bl fn_80238CB4
    cmpw 3, 31
    .4byte 0x41820008 # beq .L_8033D45C
    li 30, 0x0
L_8033D45C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFA0 # blt .L_8033D404
L_8033D468:
    psq_l 0, 0x24(1), 0, 0
    mr 3, 30
    lfs 1, 0x2c(1)
    psq_st 0, 0xc(28), 0, 0
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    stfs 1, 0x14(28)
    stfs 0, 0x3c(28)
    stfs 0, 0x40(28)
    stfs 0, 0x44(28)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8033D4AC:
    .4byte 0xC002F228 # lfs f0, lbl_805421C8@sda21(r0)
    fcmpo cr0, 1, 2
    fadds 0, 3, 0
    .4byte 0x4080000C # bge .L_8033D4C4
    fsubs 1, 2, 0
    blr
L_8033D4C4:
    fadds 1, 2, 0
    blr

fn_8033D4CC:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 29, 3
    lwz 3, 0x198(3)
    bl fn_80239108
    lwz 0, 0x260(29)
    cmpw 3, 0
    .4byte 0x4180034C # blt .L_8033D84C
    addi 3, 29, 0xc
    addi 4, 29, 0x24
    bl PSVECDistance
    lwz 3, 0x260(29)
    lis 0, 0x4330
    stw 0, 0x40(1)
    slwi 0, 3, 4
    .4byte 0xC862F218 # lfd f3, lbl_805421B8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002F228 # lfs f0, lbl_805421C8@sda21(r0)
    stw 0, 0x44(1)
    lfd 2, 0x40(1)
    fsubs 2, 2, 3
    fsubs 0, 2, 0
    fcmpo cr0, 1, 0
    .4byte 0x40800514 # bge .L_8033DA54
    lwz 3, 0x198(29)
    bl fn_80238BC4
    mr 31, 3
    lis 3, lbl_804A79E0@ha
    mulli 30, 31, 0xc
    psq_l 3, 0xc(29), 0, 0
    addi 4, 3, lbl_804A79E0@l
    lfs 2, 0x14(29)
    psq_st 3, 0x24(1), 0, 0
    mr 3, 29
    add 6, 4, 30
    lfsx 0, 4, 30
    lfs 1, 0x4(6)
    li 4, 0x0
    stfs 0, 0x30(1)
    li 5, 0x0
    lfs 0, 0x8(6)
    stfs 1, 0x34(1)
    psq_l 1, 0x30(1), 0, 0
    stfs 0, 0x38(1)
    ps_add 1, 3, 1
    psq_l 0, 0x38(1), 1, 0
    stfs 2, 0x2c(1)
    psq_st 1, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8033D5D0
    psq_l 1, 0x24(1), 0, 0
    lfs 0, 0x2c(1)
    psq_st 1, 0xc(29), 0, 0
    stfs 0, 0x14(29)
    .4byte 0x48000488 # b .L_8033DA54
L_8033D5D0:
    psq_l 1, 0x24(1), 0, 0
    lfs 0, 0x2c(1)
    psq_st 1, 0xc(29), 0, 0
    stfs 0, 0x14(29)
    lbz 0, 0x270(29)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8033D610
    lwz 3, 0x26c(29)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8033D604
    addi 0, 31, 0x1
    stw 0, 0x26c(29)
    .4byte 0x48000010 # b .L_8033D610
L_8033D604:
    addi 0, 31, 0x1
    cmpw 0, 3
    .4byte 0x40820448 # bne .L_8033DA54
L_8033D610:
    lwz 0, 0x260(29)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8033D630
    mr 3, 29
    clrlwi 4, 31, 24
    bl fn_8033D264
    clrlwi. 0, 3, 24
    .4byte 0x41820428 # beq .L_8033DA54
L_8033D630:
    lbz 0, 0x264(29)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8033D650
    bl GetRoomConfigRecord
    addi 0, 31, 0x1
    lwz 4, 0x16c(29)
    clrlwi 5, 0, 24
    bl fn_802D7584
L_8033D650:
    cmpwi 31, 0x0
    .4byte 0x41800114 # blt .L_8033D768
    cmpwi 31, 0x4
    .4byte 0x4080010C # bge .L_8033D768
    lwz 3, 0x198(29)
    bl fn_80238E08
    lwz 0, 0x25c(29)
    cmpwi 0, 0x5
    .4byte 0x41820028 # beq .L_8033D698
    .4byte 0x40800018 # bge .L_8033D68C
    cmpwi 0, 0x2
    .4byte 0x40800060 # bge .L_8033D6DC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8033D698
    .4byte 0x48000094 # b .L_8033D71C
L_8033D68C:
    cmpwi 0, 0x7
    .4byte 0x4080008C # bge .L_8033D71C
    .4byte 0x48000048 # b .L_8033D6DC
L_8033D698:
    lis 3, lbl_804AC2A8@ha
    .4byte 0xC3E2F22C # lfs f31, lbl_805421CC@sda21(r0)
    addi 3, 3, lbl_804AC2A8@l
    lfsx 0, 3, 30
    add 3, 3, 30
    stfs 0, 0x3c(29)
    lfs 0, 0x4(3)
    stfs 0, 0x40(29)
    lfs 0, 0x8(3)
    stfs 0, 0x44(29)
    psq_l 1, 0x3c(29), 0, 0
    psq_l 0, 0x44(29), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(29), 0, 0
    psq_st 0, 0x44(29), 1, 0
    .4byte 0x48000044 # b .L_8033D71C
L_8033D6DC:
    lis 3, lbl_804AC2A8@ha
    .4byte 0xC3E2F230 # lfs f31, lbl_805421D0@sda21(r0)
    addi 3, 3, lbl_804AC2A8@l
    lfsx 0, 3, 30
    add 3, 3, 30
    stfs 0, 0x3c(29)
    lfs 0, 0x4(3)
    stfs 0, 0x40(29)
    lfs 0, 0x8(3)
    stfs 0, 0x44(29)
    psq_l 1, 0x3c(29), 0, 0
    psq_l 0, 0x44(29), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(29), 0, 0
    psq_st 0, 0x44(29), 1, 0
L_8033D71C:
    lbz 0, 0x271(29)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8033D734
    li 0, 0x0
    stb 0, 0x271(29)
    .4byte 0x4800001C # b .L_8033D74C
L_8033D734:
    lfs 0, 0xc(29)
    stfs 0, 0x238(29)
    lfs 0, 0x10(29)
    stfs 0, 0x23c(29)
    lfs 0, 0x14(29)
    stfs 0, 0x240(29)
L_8033D74C:
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stb 0, 0x272(29)
L_8033D768:
    lwz 0, 0x25c(29)
    cmpwi 0, 0x4
    .4byte 0x408202E4 # bne .L_8033DA54
    cmpwi 31, 0x0
    .4byte 0x40820034 # bne .L_8033D7AC
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    li 5, 0x31a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
    .4byte 0x480002AC # b .L_8033DA54
L_8033D7AC:
    cmpwi 31, 0x1
    .4byte 0x40820034 # bne .L_8033D7E4
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    li 5, 0x31b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
    .4byte 0x48000274 # b .L_8033DA54
L_8033D7E4:
    cmpwi 31, 0x2
    .4byte 0x40820034 # bne .L_8033D81C
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    li 5, 0x31c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
    .4byte 0x4800023C # b .L_8033DA54
L_8033D81C:
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022F200 # lfs f1, lbl_805421A0@sda21(r0)
    li 5, 0x319
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
    .4byte 0x4800020C # b .L_8033DA54
L_8033D84C:
    lwz 0, 0x90(29)
    extrwi. 0, 0, 1, 15
    .4byte 0x418200FC # beq .L_8033D950
    addi 3, 29, 0xc
    addi 4, 29, 0x24
    bl PSVECDistance
    .4byte 0xC002F200 # lfs f0, lbl_805421A0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408100E4 # ble .L_8033D950
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x408200CC # bne .L_8033D944
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    stfs 0, 0x3c(29)
    stfs 0, 0x40(29)
    stfs 0, 0x44(29)
    lwz 0, 0x25c(29)
    cmpwi 0, 0x5
    .4byte 0x41820028 # beq .L_8033D8BC
    .4byte 0x40800018 # bge .L_8033D8B0
    cmpwi 0, 0x2
    .4byte 0x40800024 # bge .L_8033D8C4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8033D8BC
    .4byte 0x4800001C # b .L_8033D8C8
L_8033D8B0:
    cmpwi 0, 0x7
    .4byte 0x40800014 # bge .L_8033D8C8
    .4byte 0x4800000C # b .L_8033D8C4
L_8033D8BC:
    .4byte 0xC3E2F234 # lfs f31, lbl_805421D4@sda21(r0)
    .4byte 0x48000008 # b .L_8033D8C8
L_8033D8C4:
    .4byte 0xC3E2F238 # lfs f31, lbl_805421D8@sda21(r0)
L_8033D8C8:
    lfs 1, 0xc(29)
    lfs 0, 0x24(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8033D8E4
    fneg 0, 31
    stfs 0, 0x3c(29)
    .4byte 0x48000034 # b .L_8033D914
L_8033D8E4:
    .4byte 0x4080000C # bge .L_8033D8F0
    stfs 31, 0x3c(29)
    .4byte 0x48000028 # b .L_8033D914
L_8033D8F0:
    lfs 1, 0x10(29)
    lfs 0, 0x28(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8033D90C
    fneg 0, 31
    stfs 0, 0x40(29)
    .4byte 0x4800000C # b .L_8033D914
L_8033D90C:
    .4byte 0x40800008 # bge .L_8033D914
    stfs 31, 0x40(29)
L_8033D914:
    lfs 0, 0xc(29)
    lis 4, 0x3
    mr 3, 29
    li 5, 0x0
    stfs 0, 0x238(29)
    addi 4, 4, 0x4
    lfs 0, 0x10(29)
    stfs 0, 0x23c(29)
    lfs 0, 0x14(29)
    stfs 0, 0x240(29)
    bl fn_801F0E34
    .4byte 0x48000114 # b .L_8033DA54
L_8033D944:
    subi 0, 3, 0x1
    stw 0, 0x248(29)
    .4byte 0x48000108 # b .L_8033DA54
L_8033D950:
    lfs 1, 0x60(29)
    stfs 1, 0x8(1)
    lfs 4, 0x64(29)
    stfs 4, 0xc(1)
    lfs 2, 0x68(29)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(29)
    stfs 3, 0x14(1)
    lfs 0, 0xc(29)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(29)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8033D9AC
    cmpwi 0, 0x2
    .4byte 0x408200AC # bne .L_8033DA54
L_8033D9AC:
    lwz 4, 0x4(29)
    addi 3, 1, 0x8
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    stw 3, 0x258(29)
    lwz 3, 0x258(29)
    cmpwi 3, 0x0
    .4byte 0x4180007C # blt .L_8033DA54
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820068 # bne .L_8033DA54
    lwz 3, 0x258(29)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_8033DA54
    lwz 5, 0x198(29)
    addi 7, 1, 0x18
    lwz 6, 0x4(29)
    li 8, 0x0
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x20(1)
    lwz 3, 0x258(29)
    lwz 4, 0x268(29)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8033DA54
    li 0, 0x1
    stw 0, 0x234(29)
    lwz 3, 0x258(29)
    bl fn_80230CFC
    stw 3, 0x254(29)
    lwz 0, 0x254(29)
    xori 0, 0, 0x1
    stw 0, 0x254(29)
L_8033DA54:
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8033DA78:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    mr 31, 3
    addi 3, 1, 0x4c
    lfs 1, 0x60(31)
    stfs 1, 0x4c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x50(1)
    lfs 2, 0x68(31)
    stfs 2, 0x54(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x58(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x4c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x54(1)
    fadds 0, 3, 2
    stfs 1, 0x50(1)
    stfs 0, 0x58(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_8033DB30
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_8033DB30
    lwz 30, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 30
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
L_8033DB30:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820584 # beq .L_8033E0BC
    .4byte 0x408005BC # bge .L_8033E0F8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8033DB4C
    .4byte 0x480005B0 # b .L_8033E0F8
L_8033DB4C:
    addi 3, 31, 0xc
    addi 4, 31, 0x24
    bl PSVECDistance
    .4byte 0xC002F23C # lfs f0, lbl_805421DC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8033DB6C
    .4byte 0xC3C2F240 # lfs f30, lbl_805421E0@sda21(r0)
    .4byte 0x48000048 # b .L_8033DBB0
L_8033DB6C:
    lwz 3, 0x260(31)
    lis 0, 0x4330
    stw 0, 0x60(1)
    slwi 0, 3, 4
    .4byte 0xC862F218 # lfd f3, lbl_805421B8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC042F220 # lfs f2, lbl_805421C0@sda21(r0)
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 3
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8033DBAC
    fmr 30, 2
    .4byte 0x48000008 # b .L_8033DBB0
L_8033DBAC:
    .4byte 0xC3C2F244 # lfs f30, lbl_805421E4@sda21(r0)
L_8033DBB0:
    addi 3, 31, 0xc
    addi 4, 31, 0x238
    bl PSVECDistance
    fcmpo cr0, 1, 30
    cror eq, gt, eq
    .4byte 0x408201A0 # bne .L_8033DD64
    .4byte 0xC022F248 # lfs f1, lbl_805421E8@sda21(r0)
    lfs 2, 0x24(31)
    lfs 3, 0xc(31)
    fadds 0, 1, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8033DBFC
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8033DBFC
    stfs 2, 0xc(31)
    .4byte 0x48000028 # b .L_8033DC20
L_8033DBFC:
    lfs 1, 0x238(31)
    .4byte 0xC002F228 # lfs f0, lbl_805421C8@sda21(r0)
    fcmpo cr0, 3, 1
    fadds 0, 30, 0
    .4byte 0x4080000C # bge .L_8033DC18
    fsubs 0, 1, 0
    .4byte 0x48000008 # b .L_8033DC1C
L_8033DC18:
    fadds 0, 1, 0
L_8033DC1C:
    stfs 0, 0xc(31)
L_8033DC20:
    .4byte 0xC022F248 # lfs f1, lbl_805421E8@sda21(r0)
    lfs 2, 0x28(31)
    lfs 3, 0x10(31)
    fadds 0, 1, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8033DC54
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8033DC54
    stfs 2, 0x10(31)
    .4byte 0x48000028 # b .L_8033DC78
L_8033DC54:
    lfs 1, 0x23c(31)
    .4byte 0xC002F228 # lfs f0, lbl_805421C8@sda21(r0)
    fcmpo cr0, 3, 1
    fadds 0, 30, 0
    .4byte 0x4080000C # bge .L_8033DC70
    fsubs 0, 1, 0
    .4byte 0x48000008 # b .L_8033DC74
L_8033DC70:
    fadds 0, 1, 0
L_8033DC74:
    stfs 0, 0x10(31)
L_8033DC78:
    psq_l 2, 0xc(31), 0, 0
    li 0, 0x0
    lfs 1, 0x14(31)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    psq_st 2, 0x238(31), 0, 0
    stfs 1, 0x240(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stb 0, 0x272(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8033DCC0
    bl fn_801EE434
L_8033DCC0:
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 15
    .4byte 0x40820088 # bne .L_8033DD50
    addi 3, 31, 0xc
    addi 4, 31, 0x24
    bl PSVECDistance
    lwz 3, 0x260(31)
    lis 0, 0x4330
    stw 0, 0x60(1)
    slwi 0, 3, 4
    .4byte 0xC862F218 # lfd f3, lbl_805421B8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002F228 # lfs f0, lbl_805421C8@sda21(r0)
    stw 0, 0x64(1)
    lfd 2, 0x60(1)
    fsubs 2, 2, 3
    fsubs 0, 2, 0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820044 # bne .L_8033DD50
    li 0, -0x1
    mr 3, 31
    stw 0, 0x244(31)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x25c(31)
    cmpwi 0, 0x4
    .4byte 0x418203BC # beq .L_8033E0F8
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    .4byte 0x480003AC # b .L_8033E0F8
L_8033DD50:
    li 3, 0x8
    li 0, 0x1e
    stw 3, 0x244(31)
    stw 0, 0x248(31)
    .4byte 0x48000398 # b .L_8033E0F8
L_8033DD64:
    lbz 0, 0x265(31)
    cmplwi 0, 0x0
    .4byte 0x4182010C # beq .L_8033DE78
    lfs 1, 0x60(31)
    stfs 1, 0x30(1)
    lfs 4, 0x64(31)
    stfs 4, 0x34(1)
    lfs 2, 0x68(31)
    stfs 2, 0x38(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x3c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x30(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x38(1)
    fadds 0, 3, 2
    stfs 1, 0x34(1)
    stfs 0, 0x3c(1)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8033DDCC
    cmpwi 0, 0x2
    .4byte 0x40820330 # bne .L_8033E0F8
L_8033DDCC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x30
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x258(31)
    lwz 3, 0x258(31)
    cmpwi 3, 0x0
    .4byte 0x41800300 # blt .L_8033E0F8
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408202EC # bne .L_8033E0F8
    lwz 3, 0x258(31)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418202DC # beq .L_8033E0F8
    lwz 5, 0x198(31)
    addi 7, 1, 0x40
    lwz 6, 0x4(31)
    li 8, 0x0
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x48(1)
    lwz 3, 0x258(31)
    lwz 4, 0x268(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x418202A8 # beq .L_8033E0F8
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 3, 0x258(31)
    bl fn_80230CFC
    stw 3, 0x254(31)
    lwz 0, 0x254(31)
    xori 0, 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000284 # b .L_8033E0F8
L_8033DE78:
    addi 4, 31, 0xc
    psq_l 0, 0x3c(31), 0, 0
    psq_l 1, 0x0(4), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_8033DEB4
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    .4byte 0x48000248 # b .L_8033E0F8
L_8033DEB4:
    .4byte 0x408200DC # bne .L_8033DF90
    psq_l 3, 0x3c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x44(31)
    ps_mul 3, 3, 3
    .4byte 0xC022F208 # lfs f1, lbl_805421A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_8033DEF4
    mr 3, 31
    bl fn_8033D4CC
    .4byte 0x48000208 # b .L_8033E0F8
L_8033DEF4:
    lwz 0, 0x260(31)
    psq_l 0, 0x3c(31), 0, 0
    cmpwi 0, 0x2
    stfs 31, 0x2c(1)
    psq_st 0, 0x24(1), 0, 0
    .4byte 0x40820058 # bne .L_8033DF60
    .4byte 0xC002F220 # lfs f0, lbl_805421C0@sda21(r0)
    fcmpu cr0, 0, 30
    .4byte 0x4082004C # bne .L_8033DF60
    mr 3, 4
    addi 4, 31, 0x238
    bl PSVECDistance
    .4byte 0xC002F224 # lfs f0, lbl_805421C4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8033DF60
    lwz 3, 0x26c(31)
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_8033DF60
    subi 0, 3, 0x1
    mr 3, 31
    clrlwi 4, 0, 24
    bl fn_8033D264
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8033DF60
    li 0, 0x0
    .4byte 0x48000018 # b .L_8033DF74
L_8033DF60:
    psq_l 1, 0x24(1), 0, 0
    li 0, 0x1
    lfs 0, 0x2c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_8033DF74:
    clrlwi. 0, 0, 24
    .4byte 0x40820180 # bne .L_8033E0F8
    li 3, 0x8
    li 0, 0x1
    stw 3, 0x244(31)
    stb 0, 0x271(31)
    .4byte 0x4800016C # b .L_8033E0F8
L_8033DF90:
    .4byte 0x4080010C # bge .L_8033E09C
    lfs 1, 0x60(31)
    stfs 1, 0x8(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc(1)
    lfs 2, 0x68(31)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x14(1)
    lfs 0, 0x0(4)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x4(4)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8033DFF0
    cmpwi 0, 0x2
    .4byte 0x4082010C # bne .L_8033E0F8
L_8033DFF0:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x258(31)
    lwz 3, 0x258(31)
    cmpwi 3, 0x0
    .4byte 0x418000DC # blt .L_8033E0F8
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408200C8 # bne .L_8033E0F8
    lwz 3, 0x258(31)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418200B8 # beq .L_8033E0F8
    lwz 5, 0x198(31)
    addi 7, 1, 0x18
    lwz 6, 0x4(31)
    li 8, 0x0
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x20(1)
    lwz 3, 0x258(31)
    lwz 4, 0x268(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_8033E0F8
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 3, 0x258(31)
    bl fn_80230CFC
    stw 3, 0x254(31)
    lwz 0, 0x254(31)
    xori 0, 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000060 # b .L_8033E0F8
L_8033E09C:
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x41820054 # beq .L_8033E0F8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x48000040 # b .L_8033E0F8
L_8033E0BC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x4c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x258(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8033E0F8
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x234(31)
    stw 0, 0x254(31)
L_8033E0F8:
    lbz 0, 0x272(31)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_8033E160
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8033E118
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_8033E160
L_8033E118:
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x41810034 # bgt .L_8033E160
    lwz 4, 0x250(31)
    lis 3, lbl_804ABC80@ha
    addi 3, 3, lbl_804ABC80@l
    addi 0, 4, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    clrlwi 0, 0, 30
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x24c(31)
L_8033E160:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 0, 0x94(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8033E188:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 16
    stw 0, 0x25c(3)
    lwz 0, 0x25c(3)
    cmpwi 0, 0x4
    .4byte 0x41820110 # beq .L_8033E2C0
    .4byte 0x40800018 # bge .L_8033E1CC
    cmpwi 0, 0x2
    .4byte 0x40800090 # bge .L_8033E24C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8033E1D8
    .4byte 0x4800012C # b .L_8033E2F4
L_8033E1CC:
    cmpwi 0, 0x6
    .4byte 0x4182007C # beq .L_8033E24C
    .4byte 0x40800120 # bge .L_8033E2F4
L_8033E1D8:
    .4byte 0xC022F210 # lfs f1, lbl_805421B0@sda21(r0)
    li 0, 0x2
    .4byte 0xC002F224 # lfs f0, lbl_805421C4@sda21(r0)
    stfs 1, 0x14(1)
    psq_l 2, 0xc(31), 0, 0
    stfs 0, 0x18(1)
    .4byte 0xC062F24C # lfs f3, lbl_805421EC@sda21(r0)
    psq_l 0, 0x14(1), 0, 0
    stfs 1, 0x1c(1)
    ps_add 0, 2, 0
    .4byte 0xC042F250 # lfs f2, lbl_805421F0@sda21(r0)
    psq_l 4, 0x1c(1), 1, 0
    .4byte 0xC022F254 # lfs f1, lbl_805421F4@sda21(r0)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002F258 # lfs f0, lbl_805421F8@sda21(r0)
    psq_l 5, 0x14(31), 1, 0
    ps_add 4, 5, 4
    psq_st 4, 0x14(31), 1, 0
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 3, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x1a4(31)
    stw 0, 0x260(31)
    .4byte 0x480000AC # b .L_8033E2F4
L_8033E24C:
    .4byte 0xC022F210 # lfs f1, lbl_805421B0@sda21(r0)
    li 0, 0x4
    .4byte 0xC002F25C # lfs f0, lbl_805421FC@sda21(r0)
    stfs 1, 0x8(1)
    psq_l 2, 0xc(31), 0, 0
    stfs 0, 0xc(1)
    .4byte 0xC062F260 # lfs f3, lbl_80542200@sda21(r0)
    psq_l 0, 0x8(1), 0, 0
    stfs 1, 0x10(1)
    ps_add 0, 2, 0
    .4byte 0xC042F264 # lfs f2, lbl_80542204@sda21(r0)
    psq_l 4, 0x10(1), 1, 0
    .4byte 0xC022F268 # lfs f1, lbl_80542208@sda21(r0)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002F254 # lfs f0, lbl_805421F4@sda21(r0)
    psq_l 5, 0x14(31), 1, 0
    ps_add 4, 5, 4
    psq_st 4, 0x14(31), 1, 0
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 3, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x1a4(31)
    stw 0, 0x260(31)
    .4byte 0x48000038 # b .L_8033E2F4
L_8033E2C0:
    .4byte 0xC022F260 # lfs f1, lbl_80542200@sda21(r0)
    li 0, 0x4
    .4byte 0xC002F268 # lfs f0, lbl_80542208@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x1a4(31)
    stw 0, 0x260(31)
L_8033E2F4:
    addi 3, 31, 0xc
    lis 4, lbl_804ABC80@ha
    psq_l 2, 0x0(3), 0, 0
    li 6, 0x0
    lfs 1, 0x14(31)
    li 5, 0x2
    .4byte 0xC002F210 # lfs f0, lbl_805421B0@sda21(r0)
    addi 4, 4, lbl_804ABC80@l
    psq_st 2, 0x24(31), 0, 0
    li 0, -0x1
    stfs 1, 0x2c(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 6, 0x244(31)
    stw 6, 0x248(31)
    stw 5, 0xb8(31)
    stw 6, 0x234(31)
    stw 6, 0x250(31)
    lwz 4, 0x0(4)
    stw 4, 0x24c(31)
    stw 5, 0x254(31)
    stw 0, 0x258(31)
    stb 6, 0x272(31)
    lwz 0, 0x90(31)
    clrlwi 4, 0, 20
    addi 0, 4, 0x12b
    stw 0, 0x268(31)
    stb 6, 0x265(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 14
    stb 0, 0x264(31)
    lbz 0, 0x264(31)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_8033E3BC
    lwz 4, 0x260(31)
    lwz 5, 0x16c(31)
    subi 4, 4, 0x1
    bl fn_8028D4DC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8033E3BC
    li 0, 0x1
    mr 3, 31
    stb 0, 0x265(31)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8033E3BC:
    psq_l 1, 0xc(31), 0, 0
    li 0, 0x1
    lfs 0, 0x14(31)
    psq_st 1, 0x238(31), 0, 0
    stfs 0, 0x240(31)
    stb 0, 0x270(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8033E3E8
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8033E3F0
L_8033E3E8:
    li 0, 0x0
    stb 0, 0x270(31)
L_8033E3F0:
    li 0, 0x0
    stw 0, 0x26c(31)
    stb 0, 0x271(31)
    stw 0, 0x230(31)
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8033E414:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80509CF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80509CF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E464
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
L_8033E464:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E49C
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
L_8033E49C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E4D4
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
L_8033E4D4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E50C
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
L_8033E50C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E544
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
L_8033E544:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E57C
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
L_8033E57C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E5B4
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
L_8033E5B4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E5EC
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
L_8033E5EC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033E624
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
L_8033E624:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033E638:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8033E67C
    lis 5, lbl_804AC330@ha
    li 4, 0x0
    addi 0, 5, lbl_804AC330@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033E67C
    mr 3, 30
    bl dtor_80084580
L_8033E67C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033E698:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    mr 31, 3
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    lfs 1, 0x240(3)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820324 # beq .L_8033EA10
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8033E768
L_8033E708:
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
L_8033E768:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8033E708
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    addi 3, 1, 0x8
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 0, 0x70(1)
    bl PSMTXIdentity
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_8033E8E0
    .4byte 0xC022F27C # lfs f1, lbl_8054221C@sda21(r0)
    lfs 5, 0x240(31)
    .4byte 0xC002F280 # lfs f0, lbl_80542220@sda21(r0)
    fsubs 2, 1, 5
    .4byte 0xC062F278 # lfs f3, lbl_80542218@sda21(r0)
    .4byte 0xC082F274 # lfs f4, lbl_80542214@sda21(r0)
    fmuls 29, 0, 5
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    fmuls 0, 3, 2
    fmuls 30, 4, 0
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    bl cos
    frsp 3, 1
    fmuls 7, 30, 26
    fneg 6, 27
    fmuls 10, 31, 3
    fmuls 2, 28, 27
    fmuls 9, 31, 26
    fmuls 1, 28, 26
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x8(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x18(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x28(1)
    fmuls 0, 29, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    .4byte 0x480000E8 # b .L_8033E9C4
L_8033E8E0:
    .4byte 0xC002F27C # lfs f0, lbl_8054221C@sda21(r0)
    lfs 29, 0x240(31)
    .4byte 0xC042F278 # lfs f2, lbl_80542218@sda21(r0)
    fsubs 0, 0, 29
    .4byte 0xC062F274 # lfs f3, lbl_80542214@sda21(r0)
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    fmuls 0, 2, 0
    fmuls 31, 3, 0
    bl sin
    frsp 26, 1
    fmr 1, 31
    bl sin
    frsp 27, 1
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    bl cos
    frsp 3, 1
    fmuls 7, 31, 28
    fneg 6, 27
    fmuls 10, 30, 3
    fmuls 2, 26, 27
    fmuls 9, 30, 28
    fmuls 1, 26, 28
    fmuls 0, 26, 3
    fmuls 8, 31, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 28, 10
    fmuls 3, 26, 31
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 30, 31
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x8(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x18(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x28(1)
    fmuls 0, 29, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
L_8033E9C4:
    li 8, 0x0
    addi 6, 1, 0x8
    li 5, 0x1
    li 0, -0x3
    .4byte 0xC022F27C # lfs f1, lbl_8054221C@sda21(r0)
    lis 3, lbl_80471E98@ha
    stw 6, 0x50(1)
    addi 4, 3, lbl_80471E98@l
    fmr 2, 1
    mr 3, 31
    stb 8, 0x58(1)
    addi 6, 1, 0x38
    li 7, -0x1
    stb 5, 0x59(1)
    stb 8, 0x54(1)
    stb 0, 0x55(1)
    lwz 5, 0x244(31)
    addi 5, 5, 0x172
    bl fn_801F06F0
L_8033EA10:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    lwz 0, 0xe4(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_8033EA54:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stmw 27, 0x6c(1)
    mr 30, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_8033EAAC
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
L_8033EAAC:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810028 # ble .L_8033EAEC
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8033EAEC
    li 0, 0x2
    stw 0, 0x230(30)
L_8033EAEC:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x41820158 # beq .L_8033EC4C
    .4byte 0x40800010 # bge .L_8033EB08
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8033EB14
    .4byte 0x48000308 # b .L_8033EE0C
L_8033EB08:
    cmpwi 0, 0x3
    .4byte 0x40800300 # bge .L_8033EE0C
    .4byte 0x4800026C # b .L_8033ED7C
L_8033EB14:
    lwz 3, 0x248(30)
    cmpwi 3, 0x0
    .4byte 0x418202F0 # beq .L_8033EE0C
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x418102E4 # bgt .L_8033EE0C
    lwz 0, 0x254(30)
    cmpwi 0, 0x2
    .4byte 0x41820098 # beq .L_8033EBCC
    .4byte 0x40800014 # bge .L_8033EB4C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8033EB58
    .4byte 0x4080004C # bge .L_8033EB90
    .4byte 0x480000F4 # b .L_8033EC3C
L_8033EB4C:
    cmpwi 0, 0x4
    .4byte 0x408000EC # bge .L_8033EC3C
    .4byte 0x480000B0 # b .L_8033EC04
L_8033EB58:
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x64(1)
    .4byte 0xC842F298 # lfd f2, lbl_80542238@sda21(r0)
    stw 0, 0x60(1)
    .4byte 0xC062F284 # lfs f3, lbl_80542224@sda21(r0)
    lfd 1, 0x60(1)
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    .4byte 0x480000B0 # b .L_8033EC3C
L_8033EB90:
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x64(1)
    .4byte 0xC842F298 # lfd f2, lbl_80542238@sda21(r0)
    stw 0, 0x60(1)
    .4byte 0xC062F284 # lfs f3, lbl_80542224@sda21(r0)
    lfd 1, 0x60(1)
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    fsubs 1, 1, 2
    fneg 1, 1
    fmuls 1, 3, 1
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    .4byte 0x48000074 # b .L_8033EC3C
L_8033EBCC:
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x64(1)
    .4byte 0xC062F270 # lfs f3, lbl_80542210@sda21(r0)
    stw 0, 0x60(1)
    .4byte 0xC822F298 # lfd f1, lbl_80542238@sda21(r0)
    lfd 0, 0x60(1)
    .4byte 0xC042F284 # lfs f2, lbl_80542224@sda21(r0)
    fsubs 0, 0, 1
    stfs 3, 0x3c(30)
    fmuls 0, 2, 0
    stfs 0, 0x40(30)
    stfs 3, 0x44(30)
    .4byte 0x4800003C # b .L_8033EC3C
L_8033EC04:
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x64(1)
    .4byte 0xC062F270 # lfs f3, lbl_80542210@sda21(r0)
    stw 0, 0x60(1)
    .4byte 0xC822F298 # lfd f1, lbl_80542238@sda21(r0)
    lfd 0, 0x60(1)
    .4byte 0xC042F284 # lfs f2, lbl_80542224@sda21(r0)
    fsubs 0, 0, 1
    stfs 3, 0x3c(30)
    fneg 0, 0
    fmuls 0, 2, 0
    stfs 0, 0x40(30)
    stfs 3, 0x44(30)
L_8033EC3C:
    li 0, 0x1
    stw 0, 0x24c(30)
    stw 0, 0x230(30)
    .4byte 0x480001C4 # b .L_8033EE0C
L_8033EC4C:
    lwz 3, 0x254(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x4082007C # bne .L_8033ECD4
    lfs 0, 0x2c(30)
    addi 4, 1, 0x50
    psq_l 1, 0x24(30), 0, 0
    addi 3, 30, 0xc
    stfs 0, 0x34(1)
    psq_l 3, 0x234(30), 0, 0
    psq_l 2, 0x34(1), 1, 0
    psq_l 0, 0x23c(30), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x2c(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0x2c(1), 0, 0
    psq_st 0, 0x34(1), 1, 0
    lfs 0, 0x34(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 0, 0x58(1)
    bl PSVECDistance
    lwz 3, 0x258(30)
    lis 0, 0x4330
    stw 0, 0x60(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842F298 # lfd f2, lbl_80542238@sda21(r0)
    stw 0, 0x64(1)
    .4byte 0xC062F288 # lfs f3, lbl_80542228@sda21(r0)
    lfd 0, 0x60(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820068 # beq .L_8033ED38
L_8033ECD4:
    lwz 3, 0x254(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41820084 # beq .L_8033ED64
    lfs 0, 0x2c(30)
    addi 4, 1, 0x44
    psq_l 1, 0x24(30), 0, 0
    addi 3, 30, 0xc
    stfs 0, 0x28(1)
    psq_l 3, 0x234(30), 0, 0
    psq_l 2, 0x28(1), 1, 0
    psq_l 0, 0x23c(30), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x20(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
    lfs 0, 0x28(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 0, 0x4c(1)
    bl PSVECDistance
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_8033ED64
L_8033ED38:
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    li 3, 0x3c
    li 0, 0x0
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    lwz 4, 0x254(30)
    xori 4, 4, 0x1
    stw 4, 0x254(30)
    stw 3, 0x24c(30)
    stw 0, 0x230(30)
L_8033ED64:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x408200A0 # bne .L_8033EE0C
    li 0, 0x10
    stw 0, 0x24c(30)
    .4byte 0x48000094 # b .L_8033EE0C
L_8033ED7C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_8033EDD8
    lfs 2, 0x240(30)
    .4byte 0xC022F27C # lfs f1, lbl_8054221C@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800314 # bge .L_8033F0BC
    .4byte 0xC002F28C # lfs f0, lbl_8054222C@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x240(30)
    lfs 0, 0x240(30)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x408202F8 # bne .L_8033F0BC
    stfs 1, 0x240(30)
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x480002E8 # b .L_8033F0BC
L_8033EDD8:
    lfs 2, 0x240(30)
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x408102D8 # ble .L_8033F0BC
    .4byte 0xC002F28C # lfs f0, lbl_8054222C@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x240(30)
    lfs 0, 0x240(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408202BC # bne .L_8033F0BC
    stfs 1, 0x240(30)
    .4byte 0x480002B4 # b .L_8033F0BC
L_8033EE0C:
    lbz 0, 0x262(30)
    cmplwi 0, 0x0
    .4byte 0x41820064 # beq .L_8033EE78
    lfs 1, 0x10(30)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0x238(30)
    addi 3, 3, lbl_8052EBC0@l
    fsubs 0, 1, 0
    stfs 0, 0x10(30)
    lhz 4, 0x25c(30)
    addi 0, 4, 0x800
    sth 0, 0x25c(30)
    lhz 0, 0x25c(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    stfs 0, 0x238(30)
    lfs 1, 0x10(30)
    lfs 0, 0x238(30)
    fadds 0, 1, 0
    stfs 0, 0x10(30)
    lhz 0, 0x25c(30)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8033EE78
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    li 0, 0x0
    stfs 0, 0x238(30)
    stb 0, 0x262(30)
L_8033EE78:
    li 31, 0x0
    .4byte 0xC3E2F270 # lfs f31, lbl_80542210@sda21(r0)
L_8033EE80:
    lwz 27, 0x4(30)
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x4182000C # beq .L_8033EE9C
    li 3, 0x0
    .4byte 0x48000148 # b .L_8033EFE0
L_8033EE9C:
    lis 4, lbl_80534C00@ha
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3A2F270 # lfs f29, lbl_80542210@sda21(r0)
    addi 28, 4, lbl_80534C00@l
    .4byte 0xC3C2F290 # lfs f30, lbl_80542230@sda21(r0)
    addi 29, 3, lbl_8052EBC0@l
    li 27, 0x0
L_8033EEB8:
    mr 3, 31
    mr 4, 27
    addi 5, 1, 0x14
    bl fn_8022E088
    psq_l 1, 0x14(1), 0, 0
    mr 3, 28
    psq_l 0, 0xc(30), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x14(1), 0, 0
    psq_l 0, 0x14(30), 1, 0
    lfs 1, 0x18(1)
    ps_sub 0, 2, 0
    lfs 2, 0x14(1)
    psq_st 0, 0x1c(1), 1, 0
    stfs 29, 0x1c(1)
    bl fn_80093340
    lfs 3, 0x14(1)
    fmuls 2, 1, 30
    lfs 0, 0x18(1)
    fmuls 1, 3, 3
    fmuls 0, 0, 0
    fctiwz 2, 2
    fadds 4, 1, 0
    stfd 2, 0x60(1)
    fcmpo cr0, 4, 29
    lwz 0, 0x64(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8033EF30
    .4byte 0x48000028 # b .L_8033EF54
L_8033EF30:
    frsqrte 3, 4
    .4byte 0xC042F284 # lfs f2, lbl_80542224@sda21(r0)
    .4byte 0xC002F294 # lfs f0, lbl_80542234@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_8033EF54:
    rlwinm 0, 0, 30, 18, 28
    stfs 29, 0x1c(1)
    add 3, 29, 0
    lfs 1, 0x0(3)
    li 0, 0x0
    lfs 0, 0x4(3)
    fmuls 1, 4, 1
    fmuls 2, 4, 0
    stfs 1, 0x18(1)
    stfs 2, 0x14(1)
    lfs 0, 0x60(30)
    lfs 3, 0x64(30)
    fcmpo cr0, 2, 0
    lfs 0, 0x68(30)
    lfs 4, 0x6c(30)
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_8033EFB8
    fcmpo cr0, 1, 3
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8033EFB8
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8033EFB8
    fcmpo cr0, 1, 4
    .4byte 0x40800008 # bge .L_8033EFB8
    li 0, 0x1
L_8033EFB8:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8033EFD0
    mr 3, 31
    bl fn_8022DF48
    li 3, 0x1
    .4byte 0x48000014 # b .L_8033EFE0
L_8033EFD0:
    addi 27, 27, 0x1
    cmpwi 27, 0x8
    .4byte 0x4180FEE0 # blt .L_8033EEB8
    li 3, 0x0
L_8033EFE0:
    clrlwi. 0, 3, 24
    mr 27, 3
    .4byte 0x4182007C # beq .L_8033F064
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820060 # bne .L_8033F064
    lfs 0, 0x14(30)
    addi 4, 1, 0x38
    psq_l 1, 0xc(30), 0, 0
    mr 3, 31
    stfs 0, 0x10(1)
    psq_l 3, 0x18(30), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x20(30), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 0, 0x40(1)
    bl fn_8023DEDC
    li 28, 0x0
L_8033F050:
    mr 3, 31
    bl fn_8022CB94
    addi 28, 28, 0x1
    cmpwi 28, 0x3
    .4byte 0x4180FFF0 # blt .L_8033F050
L_8033F064:
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 31
    .4byte 0x40810008 # ble .L_8033F07C
    li 27, 0x0
L_8033F07C:
    addi 4, 31, 0x25e
    clrlwi 3, 27, 24
    lbzx 0, 30, 4
    cmplw 3, 0
    .4byte 0x4182000C # beq .L_8033F098
    li 0, 0x1
    stb 0, 0x262(30)
L_8033F098:
    addi 31, 31, 0x1
    stbx 27, 30, 4
    cmpwi 31, 0x4
    .4byte 0x4180FDDC # blt .L_8033EE80
    lwz 3, 0x24c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8033F0BC
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
L_8033F0BC:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    lmw 27, 0x6c(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_8033F0E8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC022F270 # lfs f1, lbl_80542210@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC002F27C # lfs f0, lbl_8054221C@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    stb 4, 0x25e(3)
    stb 4, 0x25f(3)
    stb 4, 0x260(3)
    stb 4, 0x261(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    stw 0, 0x248(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 20
    stw 0, 0x250(3)
    lwz 0, 0x250(3)
    stw 0, 0x254(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 8, 12
    stw 0, 0x258(3)
    stw 4, 0x24c(3)
    sth 4, 0x25c(3)
    stb 4, 0x262(3)
    stfs 1, 0x23c(3)
    stfs 1, 0x238(3)
    stfs 1, 0x234(3)
    stfs 0, 0x240(3)
    stw 4, 0x230(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810014 # ble .L_8033F198
    li 0, 0x2
    .4byte 0xC002F270 # lfs f0, lbl_80542210@sda21(r0)
    stw 0, 0x230(31)
    stfs 0, 0x240(31)
L_8033F198:
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8033F1DC
    .4byte 0x40800010 # bge .L_8033F1B4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8033F1C0
    .4byte 0x48000060 # b .L_8033F210
L_8033F1B4:
    cmpwi 0, 0x3
    .4byte 0x40800058 # bge .L_8033F210
    .4byte 0x4800003C # b .L_8033F1F8
L_8033F1C0:
    .4byte 0xC022F2A0 # lfs f1, lbl_80542240@sda21(r0)
    .4byte 0xC002F2A4 # lfs f0, lbl_80542244@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000038 # b .L_8033F210
L_8033F1DC:
    .4byte 0xC022F2A8 # lfs f1, lbl_80542248@sda21(r0)
    .4byte 0xC002F2AC # lfs f0, lbl_8054224C@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800001C # b .L_8033F210
L_8033F1F8:
    .4byte 0xC022F2B0 # lfs f1, lbl_80542250@sda21(r0)
    .4byte 0xC002F2B4 # lfs f0, lbl_80542254@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8033F210:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033F224:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80509DF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80509DF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F274
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
L_8033F274:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F2AC
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
L_8033F2AC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F2E4
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
L_8033F2E4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F31C
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
L_8033F31C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F354
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
L_8033F354:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F38C
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
L_8033F38C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F3C4
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
L_8033F3C4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F3FC
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
L_8033F3FC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F434
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
L_8033F434:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033F448:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8033F48C
    lis 5, lbl_804AC388@ha
    li 4, 0x0
    addi 0, 5, lbl_804AC388@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033F48C
    mr 3, 30
    bl dtor_80084580
L_8033F48C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033F4A8:
    blr

fn_8033F4AC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 31, 3
    li 28, 0x0
    lbz 0, 0x23c(3)
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_8033F550
    bl GetRoomConfigRecord
    lwz 4, 0x234(31)
    lwz 5, 0x238(31)
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x10
    li 5, 0x1
    bl fn_80136798
    li 28, 0x0
L_8033F510:
    mr 3, 28
    bl fn_80237810
    mr 4, 3
    mr 3, 28
    subi 4, 4, 0x4
    bl fn_8023764C
    mr 3, 28
    li 4, 0x0
    li 5, 0x1
    bl fn_8022CA6C
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFD0 # blt .L_8033F510
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001CC # b .L_8033F718
L_8033F550:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x418100D0 # bgt .L_8033F628
    lis 3, lbl_80529DEC@ha
    li 29, 0x0
    addi 30, 3, lbl_80529DEC@l
L_8033F568:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_8033F614
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800090 # bge .L_8033F614
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820080 # bne .L_8033F614
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820070 # bne .L_8033F614
    mr 3, 29
    bl fn_80236D14
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_8033F614
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    addi 5, 1, 0x8
    .4byte 0xC002F2B8 # lfs f0, lbl_80542258@sda21(r0)
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
    li 28, 0x1
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x239(30)
L_8033F614:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF4C # blt .L_8033F568
    li 0, 0x12c
    stw 0, 0x230(31)
L_8033F628:
    clrlwi. 0, 28, 24
    .4byte 0x41820098 # beq .L_8033F6C4
    bl GetRoomConfigRecord
    lwz 8, 0xcc(3)
    lis 4, 0x3
    lwz 7, 0xd0(3)
    addi 4, 4, 0x36
    lwz 6, 0xd4(3)
    li 5, 0x0
    lwz 0, 0xd8(3)
    mr 3, 31
    stw 8, 0x1c(1)
    .4byte 0xC042F2BC # lfs f2, lbl_8054225C@sda21(r0)
    stw 7, 0x20(1)
    lfs 1, 0x1c(1)
    stw 6, 0x24(1)
    lfs 0, 0x20(1)
    stw 0, 0x28(1)
    lfs 3, 0x24(1)
    lfs 4, 0x28(1)
    fsubs 1, 1, 3
    fsubs 0, 0, 4
    fmadds 31, 2, 1, 3
    fmadds 30, 2, 0, 4
    bl fn_801F0E34
    .4byte 0xC002F2C0 # lfs f0, lbl_80542260@sda21(r0)
    addi 4, 1, 0x10
    stfs 31, 0x10(1)
    li 5, 0x1bc
    .4byte 0xC022F2C4 # lfs f1, lbl_80542264@sda21(r0)
    li 6, 0x2
    stfs 30, 0x14(1)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x18(1)
    li 10, 0x1
    lwz 3, 0x4(31)
    bl fn_8013CC50
L_8033F6C4:
    li 29, 0x0
    li 30, 0x1
L_8033F6CC:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8033F700
    mr 3, 29
    bl fn_80236A18
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8033F700
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8033F700
    stb 30, 0x23c(31)
L_8033F700:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFC4 # blt .L_8033F6CC
    lwz 3, 0x230(31)
    subi 0, 3, 0x1
    stw 0, 0x230(31)
L_8033F718:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 0, 0x64(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8033F748:
    li 0, 0x12c
    li 4, 0x1
    stw 0, 0x230(3)
    li 0, 0x0
    lwz 5, 0x90(3)
    extrwi 5, 5, 4, 24
    stw 5, 0x234(3)
    lwz 5, 0x90(3)
    extrwi 5, 5, 4, 20
    stw 5, 0x238(3)
    stw 4, 0x114(3)
    stb 0, 0x23c(3)
    blr

fn_8033F77C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80509EF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80509EF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F7CC
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
L_8033F7CC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F804
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
L_8033F804:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F83C
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
L_8033F83C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F874
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
L_8033F874:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F8AC
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
L_8033F8AC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F8E4
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
L_8033F8E4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F91C
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
L_8033F91C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F954
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
L_8033F954:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8033F98C
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
L_8033F98C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033F9A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8033F9E4
    lis 5, lbl_804AC3E0@ha
    li 4, 0x0
    addi 0, 5, lbl_804AC3E0@l
    stw 0, 0x0(30)
    bl fn_801BB30C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8033F9E4
    mr 3, 30
    bl dtor_80084580
L_8033F9E4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8033FA00:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stw 31, 0x9c(1)
    mr 31, 3
    bl fn_801BA670
    li 0, -0x1
    addi 9, 1, 0x5c
    stw 0, 0x6c(1)
    li 10, 0x0
    stw 0, 0x70(1)
    .4byte 0x48000064 # b .L_8033FA90
L_8033FA30:
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
L_8033FA90:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8033FA30
    li 6, 0x0
    li 5, 0x1
    stb 6, 0x78(1)
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stb 5, 0x7c(1)
    addi 3, 1, 0x2c
    stb 6, 0x7d(1)
    stw 7, 0x6c(1)
    stw 6, 0x70(1)
    stw 6, 0x74(1)
    stb 6, 0x79(1)
    stb 6, 0x7a(1)
    stb 5, 0x7b(1)
    stb 6, 0x7e(1)
    stb 6, 0x7f(1)
    stb 6, 0x80(1)
    stb 6, 0x81(1)
    stb 5, 0x82(1)
    stw 4, 0x84(1)
    stb 5, 0x88(1)
    stb 6, 0x89(1)
    stb 6, 0x8a(1)
    stw 7, 0x8c(1)
    stw 6, 0x90(1)
    stw 0, 0x94(1)
    stb 6, 0x7c(1)
    stb 5, 0x7d(1)
    stb 6, 0x78(1)
    bl PSMTXIdentity
    .4byte 0xC002F2C8 # lfs f0, lbl_80542268@sda21(r0)
    stfs 0, 0x28(1)
    stfs 0, 0x24(1)
    stfs 0, 0x20(1)
    lwz 4, 0x248(31)
    cmpwi 4, 0x0
    .4byte 0x418200A0 # beq .L_8033FBD0
    lwz 0, 0x280(31)
    cmplwi 0, 0x8
    .4byte 0x4181006C # bgt .L_8033FBA8
    lis 3, jumptable_804AC494@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AC494@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC002F2CC # lfs f0, lbl_8054226C@sda21(r0)
    li 0, 0x1
    stb 0, 0x79(1)
    stfs 0, 0x28(1)
    .4byte 0x48000070 # b .L_8033FBD8
    .4byte 0xC002F2D0 # lfs f0, lbl_80542270@sda21(r0)
    li 0, 0x1
    stb 0, 0x79(1)
    stfs 0, 0x28(1)
    .4byte 0x4800005C # b .L_8033FBD8
    .4byte 0xC002F2D4 # lfs f0, lbl_80542274@sda21(r0)
    li 0, 0x1
    stb 0, 0x79(1)
    stfs 0, 0x28(1)
    .4byte 0x48000048 # b .L_8033FBD8
    .4byte 0xC002F2D8 # lfs f0, lbl_80542278@sda21(r0)
    li 0, 0x0
    stb 0, 0x79(1)
    stfs 0, 0x28(1)
    .4byte 0x48000034 # b .L_8033FBD8
L_8033FBA8:
    cmpwi 4, 0x2
    .4byte 0x4182000C # beq .L_8033FBB8
    cmpwi 4, 0x5
    .4byte 0x40820010 # bne .L_8033FBC4
L_8033FBB8:
    li 0, 0x0
    stb 0, 0x79(1)
    .4byte 0x48000018 # b .L_8033FBD8
L_8033FBC4:
    li 0, -0x1
    stb 0, 0x79(1)
    .4byte 0x4800000C # b .L_8033FBD8
L_8033FBD0:
    li 0, -0x1
    stb 0, 0x79(1)
L_8033FBD8:
    .4byte 0xC002F2C8 # lfs f0, lbl_80542268@sda21(r0)
    addi 3, 1, 0x2c
    addi 4, 1, 0x14
    addi 5, 1, 0x8
    stfs 0, 0x8(1)
    addi 6, 1, 0x20
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    lfs 0, 0x2b4(31)
    stfs 0, 0x14(1)
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    bl fn_8033FC4C
    .4byte 0xC022F2DC # lfs f1, lbl_8054227C@sda21(r0)
    addi 0, 1, 0x2c
    lis 3, lbl_80471EB0@ha
    stw 0, 0x74(1)
    fmr 2, 1
    addi 4, 3, lbl_80471EB0@l
    mr 3, 31
    addi 6, 1, 0x5c
    li 5, 0x173
    li 7, -0x1
    bl fn_801F06F0
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8033FC4C:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stfd 28, 0x60(1)
    psq_st 28, 0x68(1), 0, 0
    stfd 27, 0x50(1)
    psq_st 27, 0x58(1), 0, 0
    stfd 26, 0x40(1)
    psq_st 26, 0x48(1), 0, 0
    stfd 25, 0x30(1)
    psq_st 25, 0x38(1), 0, 0
    stfd 24, 0x20(1)
    psq_st 24, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 30, 5
    mr 28, 3
    lfs 1, 0x0(5)
    mr 29, 4
    mr 31, 6
    bl sin
    frsp 31, 1
    lfs 1, 0x4(30)
    bl sin
    frsp 30, 1
    lfs 1, 0x8(30)
    bl sin
    frsp 29, 1
    lfs 1, 0x0(30)
    bl cos
    frsp 28, 1
    lfs 1, 0x4(30)
    bl cos
    frsp 27, 1
    lfs 1, 0x8(30)
    bl cos
    frsp 24, 1
    lfs 13, 0x0(29)
    fmuls 3, 27, 29
    lfs 10, 0x4(29)
    fneg 11, 30
    lfs 6, 0x8(29)
    fmuls 4, 27, 24
    lfs 2, 0x0(31)
    fmuls 7, 31, 27
    lfs 1, 0x4(31)
    fmuls 8, 31, 30
    lfs 0, 0x8(31)
    fmuls 26, 28, 29
    fmuls 5, 13, 4
    fmuls 25, 28, 24
    fmsubs 9, 8, 24, 26
    fmuls 4, 31, 29
    stfs 5, 0x0(28)
    fmuls 12, 13, 3
    fmadds 8, 8, 29, 25
    fmuls 3, 31, 24
    fmadds 5, 25, 30, 4
    stfs 12, 0x10(28)
    fmuls 11, 13, 11
    fmsubs 4, 26, 30, 3
    fmuls 3, 28, 27
    fmuls 9, 10, 9
    stfs 11, 0x20(28)
    fmuls 8, 10, 8
    fmuls 7, 10, 7
    stfs 9, 0x4(28)
    fmuls 5, 6, 5
    fmuls 4, 6, 4
    stfs 8, 0x14(28)
    fmuls 3, 6, 3
    stfs 7, 0x24(28)
    stfs 5, 0x8(28)
    stfs 4, 0x18(28)
    stfs 3, 0x28(28)
    stfs 2, 0xc(28)
    stfs 1, 0x1c(28)
    stfs 0, 0x2c(28)
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    psq_l 28, 0x68(1), 0, 0
    lfd 28, 0x60(1)
    psq_l 27, 0x58(1), 0, 0
    lfd 27, 0x50(1)
    psq_l 26, 0x48(1), 0, 0
    lfd 26, 0x40(1)
    psq_l 25, 0x38(1), 0, 0
    lfd 25, 0x30(1)
    psq_l 24, 0x28(1), 0, 0
    lfd 24, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0xa4(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8033FE04:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x4
    .4byte 0x4182037C # beq .L_803401AC
    .4byte 0x40800010 # bge .L_8033FE44
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_8033FE4C
    .4byte 0x4800036C # b .L_803401AC
L_8033FE44:
    cmpwi 0, 0x6
    .4byte 0x40800364 # bge .L_803401AC
L_8033FE4C:
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_8033FE94
    .4byte 0xC022F2E0 # lfs f1, lbl_80542280@sda21(r0)
    .4byte 0xC002F2E4 # lfs f0, lbl_80542284@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_8033FE94:
    lwz 0, 0x248(30)
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_8033FEC4
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3
    .4byte 0x4080001C # bge .L_8033FEC4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0xa4(12)
    mtctr 12
    bctrl
    .4byte 0x480002EC # b .L_803401AC
L_8033FEC4:
    lfs 3, 0x60(30)
    li 31, 0x0
    stfs 3, 0x20(1)
    lfs 2, 0x64(30)
    stfs 2, 0x24(1)
    lfs 1, 0x68(30)
    stfs 1, 0x28(1)
    lfs 0, 0x6c(30)
    stfs 0, 0x2c(1)
    lfs 5, 0x10(30)
    lfs 4, 0xc(30)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x24(1)
    stfs 3, 0x20(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
L_8033FF10:
    mr 3, 31
    bl fn_80233E40
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8033FF3C
    lwz 5, 0x4(30)
    mr 3, 31
    lwz 6, 0x198(30)
    addi 4, 1, 0x20
    bl fn_802399D8
    .4byte 0x48000214 # b .L_8034014C
L_8033FF3C:
    lwz 5, 0x4(30)
    mr 3, 31
    .4byte 0xC022F2E8 # lfs f1, lbl_80542288@sda21(r0)
    addi 4, 1, 0x20
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201F0 # bne .L_8034014C
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8033FF80
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x41820080 # beq .L_8033FFFC
L_8033FF80:
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x41820068 # beq .L_8033FFF0
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x32
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022F2DC # lfs f1, lbl_8054227C@sda21(r0)
    li 5, 0x15b
    li 6, 0x0
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022F2DC # lfs f1, lbl_8054227C@sda21(r0)
    li 5, 0x15c
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8033FFF0:
    mr 3, 30
    li 4, 0x0
    bl fn_801BACE8
L_8033FFFC:
    lwz 27, 0x4(30)
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820140 # bne .L_8034014C
    lis 4, lbl_80534C00@ha
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3E2F2C8 # lfs f31, lbl_80542268@sda21(r0)
    addi 28, 4, lbl_80534C00@l
    .4byte 0xC3C2F2EC # lfs f30, lbl_8054228C@sda21(r0)
    addi 29, 3, lbl_8052EBC0@l
    li 27, 0x0
L_8034002C:
    mr 3, 31
    mr 4, 27
    addi 5, 1, 0x14
    bl fn_8022E088
    psq_l 1, 0x14(1), 0, 0
    mr 3, 28
    psq_l 0, 0xc(30), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x14(1), 0, 0
    psq_l 0, 0x14(30), 1, 0
    lfs 1, 0x18(1)
    ps_sub 0, 2, 0
    lfs 2, 0x14(1)
    psq_st 0, 0x1c(1), 1, 0
    stfs 31, 0x1c(1)
    bl fn_80093340
    lfs 3, 0x14(1)
    fmuls 2, 1, 30
    lfs 0, 0x18(1)
    fmuls 1, 3, 3
    fmuls 0, 0, 0
    fctiwz 2, 2
    fadds 4, 1, 0
    stfd 2, 0x30(1)
    fcmpo cr0, 4, 31
    lwz 0, 0x34(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803400A4
    .4byte 0x48000028 # b .L_803400C8
L_803400A4:
    frsqrte 3, 4
    .4byte 0xC042F2F0 # lfs f2, lbl_80542290@sda21(r0)
    .4byte 0xC002F2F4 # lfs f0, lbl_80542294@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_803400C8:
    rlwinm 0, 0, 30, 18, 28
    stfs 31, 0x1c(1)
    add 3, 29, 0
    lfs 1, 0x0(3)
    li 0, 0x0
    lfs 0, 0x4(3)
    fmuls 1, 4, 1
    fmuls 2, 4, 0
    stfs 1, 0x18(1)
    stfs 2, 0x14(1)
    lfs 0, 0x60(30)
    lfs 3, 0x64(30)
    fcmpo cr0, 2, 0
    lfs 0, 0x68(30)
    lfs 4, 0x6c(30)
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_8034012C
    fcmpo cr0, 1, 3
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8034012C
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8034012C
    fcmpo cr0, 1, 4
    .4byte 0x40800008 # bge .L_8034012C
    li 0, 0x1
L_8034012C:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_80340140
    mr 3, 31
    bl fn_8022DF48
    .4byte 0x48000010 # b .L_8034014C
L_80340140:
    addi 27, 27, 0x1
    cmpwi 27, 0x8
    .4byte 0x4180FEE4 # blt .L_8034002C
L_8034014C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FDBC # blt .L_8033FF10
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x4082004C # bne .L_803401AC
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_803401AC
    .4byte 0xC022F2E0 # lfs f1, lbl_80542280@sda21(r0)
    .4byte 0xC002F2E4 # lfs f0, lbl_80542284@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_803401AC:
    lwz 0, 0x248(30)
    cmpwi 0, 0x1
    .4byte 0x40820078 # bne .L_8034022C
    lbz 0, 0x2b1(30)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_803401F8
    lfs 2, 0x2b4(30)
    .4byte 0xC022F2F8 # lfs f1, lbl_80542298@sda21(r0)
    .4byte 0xC002F2FC # lfs f0, lbl_8054229C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x2b4(30)
    lfs 1, 0x2b4(30)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082005C # bne .L_80340240
    stfs 0, 0x2b4(30)
    li 0, 0x0
    stb 0, 0x2b1(30)
    .4byte 0x4800004C # b .L_80340240
L_803401F8:
    lfs 2, 0x2b4(30)
    .4byte 0xC022F2F8 # lfs f1, lbl_80542298@sda21(r0)
    .4byte 0xC002F2DC # lfs f0, lbl_8054227C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x2b4(30)
    lfs 1, 0x2b4(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820028 # bne .L_80340240
    stfs 0, 0x2b4(30)
    li 0, 0x1
    stb 0, 0x2b1(30)
    .4byte 0x48000018 # b .L_80340240
L_8034022C:
    .4byte 0xC022F2DC # lfs f1, lbl_8054227C@sda21(r0)
    lfs 0, 0x2b4(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_80340240
    stfs 1, 0x2b4(30)
L_80340240:
    lwz 0, 0x248(30)
    cmpwi 0, 0x3
    .4byte 0x418201D0 # beq .L_80340418
    .4byte 0x4080001C # bge .L_80340268
    cmpwi 0, 0x1
    .4byte 0x418200B4 # beq .L_80340308
    .4byte 0x40800194 # bge .L_803403EC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80340274
    .4byte 0x480003B4 # b .L_80340618
L_80340268:
    cmpwi 0, 0x5
    .4byte 0x418201DC # beq .L_80340448
    .4byte 0x480003A8 # b .L_80340618
L_80340274:
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_803402BC
    .4byte 0xC022F2E0 # lfs f1, lbl_80542280@sda21(r0)
    .4byte 0xC002F2E4 # lfs f0, lbl_80542284@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_803402BC:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x4180033C # blt .L_80340618
    .4byte 0xC022F300 # lfs f1, lbl_805422A0@sda21(r0)
    mr 3, 30
    addi 4, 30, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800324 # blt .L_80340618
    mr 3, 30
    li 4, 0x1
    bl fn_801BACE8
    .4byte 0x48000314 # b .L_80340618
L_80340308:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x81
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_80340364
    .4byte 0xC022F2E0 # lfs f1, lbl_80542280@sda21(r0)
    .4byte 0xC002F2E4 # lfs f0, lbl_80542284@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_80340364:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    .4byte 0xC022F304 # lfs f1, lbl_805422A4@sda21(r0)
    lfs 0, 0x54(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820024 # beq .L_803403A8
    .4byte 0xC042F308 # lfs f2, lbl_805422A8@sda21(r0)
    addi 3, 30, 0x54
    bl fn_801CD950
    lfs 0, 0x54(30)
    stfs 0, 0x58(30)
    lfs 0, 0x54(30)
    stfs 0, 0x5c(30)
    .4byte 0x48000274 # b .L_80340618
L_803403A8:
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800264 # blt .L_80340618
    addi 3, 30, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x41820254 # beq .L_80340618
    mr 3, 30
    li 4, 0x2
    bl fn_801BACE8
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0xb0(12)
    mtctr 12
    bctrl
    .4byte 0x48000230 # b .L_80340618
L_803403EC:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x40810224 # ble .L_80340618
    addi 3, 30, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820214 # beq .L_80340618
    mr 3, 30
    li 4, 0x3
    bl fn_801BACE8
    .4byte 0x48000204 # b .L_80340618
L_80340418:
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x418001F4 # blt .L_80340618
    addi 3, 30, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x418201E4 # beq .L_80340618
    mr 3, 30
    li 4, 0x5
    bl fn_801BACE8
    .4byte 0x480001D4 # b .L_80340618
L_80340448:
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_80340490
    .4byte 0xC022F2E0 # lfs f1, lbl_80542280@sda21(r0)
    .4byte 0xC002F2E4 # lfs f0, lbl_80542284@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_80340490:
    li 28, 0x0
L_80340494:
    lwz 27, 0x4(30)
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820140 # bne .L_803405E4
    lis 4, lbl_80534C00@ha
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3C2F2C8 # lfs f30, lbl_80542268@sda21(r0)
    addi 29, 4, lbl_80534C00@l
    .4byte 0xC3E2F2EC # lfs f31, lbl_8054228C@sda21(r0)
    addi 31, 3, lbl_8052EBC0@l
    li 27, 0x0
L_803404C4:
    mr 3, 28
    mr 4, 27
    addi 5, 1, 0x8
    bl fn_8022E088
    psq_l 1, 0x8(1), 0, 0
    mr 3, 29
    psq_l 0, 0xc(30), 0, 0
    psq_l 2, 0x10(1), 1, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x8(1), 0, 0
    psq_l 0, 0x14(30), 1, 0
    lfs 1, 0xc(1)
    ps_sub 0, 2, 0
    lfs 2, 0x8(1)
    psq_st 0, 0x10(1), 1, 0
    stfs 30, 0x10(1)
    bl fn_80093340
    lfs 3, 0x8(1)
    fmuls 2, 1, 31
    lfs 0, 0xc(1)
    fmuls 1, 3, 3
    fmuls 0, 0, 0
    fctiwz 2, 2
    fadds 4, 1, 0
    stfd 2, 0x30(1)
    fcmpo cr0, 4, 30
    lwz 0, 0x34(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8034053C
    .4byte 0x48000028 # b .L_80340560
L_8034053C:
    frsqrte 3, 4
    .4byte 0xC042F2F0 # lfs f2, lbl_80542290@sda21(r0)
    .4byte 0xC002F2F4 # lfs f0, lbl_80542294@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_80340560:
    rlwinm 0, 0, 30, 18, 28
    stfs 30, 0x10(1)
    add 3, 31, 0
    lfs 1, 0x0(3)
    li 0, 0x0
    lfs 0, 0x4(3)
    fmuls 1, 4, 1
    fmuls 2, 4, 0
    stfs 1, 0xc(1)
    stfs 2, 0x8(1)
    lfs 0, 0x60(30)
    lfs 3, 0x64(30)
    fcmpo cr0, 2, 0
    lfs 0, 0x68(30)
    lfs 4, 0x6c(30)
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_803405C4
    fcmpo cr0, 1, 3
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_803405C4
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_803405C4
    fcmpo cr0, 1, 4
    .4byte 0x40800008 # bge .L_803405C4
    li 0, 0x1
L_803405C4:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_803405D8
    mr 3, 28
    bl fn_8022DF48
    .4byte 0x48000010 # b .L_803405E4
L_803405D8:
    addi 27, 27, 0x1
    cmpwi 27, 0x8
    .4byte 0x4180FEE4 # blt .L_803404C4
L_803405E4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FEA8 # blt .L_80340494
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x40810020 # ble .L_80340618
    addi 3, 30, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80340618
    mr 3, 30
    li 4, 0x0
    bl fn_801BACE8
L_80340618:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80340650:
    li 3, 0x0
    blr

fn_80340658:
    li 3, 0x0
    blr

fn_80340660:
    li 3, 0x0
    blr

fn_80340668:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    .4byte 0xC3C2F2C8 # lfs f30, lbl_80542268@sda21(r0)
    mr 30, 3
    .4byte 0xC3E2F30C # lfs f31, lbl_805422AC@sda21(r0)
    li 3, 0x0
    li 31, 0x0
L_803406A0:
    addi 0, 31, 0x2ac
    lbzx 0, 30, 0
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_803406CC
    stfs 30, 0x8(1)
    mr 3, 31
    addi 4, 1, 0x8
    stfs 30, 0xc(1)
    stfs 31, 0x10(1)
    bl fn_802314D8
    li 3, 0x1
L_803406CC:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFCC # blt .L_803406A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8034070C
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x82
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0xa4(12)
    mtctr 12
    bctrl
L_8034070C:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x44(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80340734:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x90(3)
    mr 31, 3
    li 30, 0x0
    clrlwi. 0, 0, 31
    .4byte 0x41820130 # beq .L_80340894
    li 29, 0x0
L_8034076C:
    mr 3, 29
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_8034081C
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    .4byte 0xC002F310 # lfs f0, lbl_805422B0@sda21(r0)
    fsubs 2, 1, 2
    fmuls 1, 2, 2
    fmadds 1, 31, 31, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800068 # bge .L_8034081C
    fmr 1, 31
    lis 3, lbl_80534C00@ha
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC042F2EC # lfs f2, lbl_8054228C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002F2C8 # lfs f0, lbl_80542268@sda21(r0)
    addi 0, 3, lbl_8052EBC0@l
    fmuls 1, 1, 2
    mr 3, 29
    stfs 0, 0x10(1)
    addi 4, 1, 0x8
    fctiwz 0, 1
    stfd 0, 0x18(1)
    lwz 5, 0x1c(1)
    clrlwi 5, 5, 16
    addi 5, 5, 0x3000
    rlwinm 5, 5, 30, 18, 28
    add 5, 0, 5
    lfs 1, 0x4(5)
    lfs 0, 0x0(5)
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_8023DFF4
    li 30, 0x1
L_8034081C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF48 # blt .L_8034076C
    clrlwi. 0, 30, 24
    .4byte 0x41820040 # beq .L_8034086C
    lwz 0, 0x2b8(31)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_80340894
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022F314 # lfs f1, lbl_805422B4@sda21(r0)
    li 5, 0x553
    li 6, -0x1
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2b8(31)
    .4byte 0x4800002C # b .L_80340894
L_8034086C:
    lwz 5, 0x2b8(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80340894
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2b8(31)
L_80340894:
    mr 3, 30
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803408BC:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    mr 30, 3
    lbz 0, 0x2b0(3)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_8034092C
    lhz 4, 0x2b2(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    addi 0, 4, 0x800
    sth 0, 0x2b2(30)
    lhz 0, 0x2b2(30)
    lfs 1, 0x28(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fadds 0, 1, 0
    stfs 0, 0x10(30)
    lhz 0, 0x2b2(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8034092C
    li 0, 0x0
    stb 0, 0x2b0(30)
L_8034092C:
    li 31, 0x0
L_80340930:
    lwz 27, 0x4(30)
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x4182000C # beq .L_8034094C
    li 28, 0x0
    .4byte 0x48000148 # b .L_80340A90
L_8034094C:
    lis 4, lbl_80534C00@ha
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3C2F2C8 # lfs f30, lbl_80542268@sda21(r0)
    addi 28, 4, lbl_80534C00@l
    .4byte 0xC3E2F2EC # lfs f31, lbl_8054228C@sda21(r0)
    addi 29, 3, lbl_8052EBC0@l
    li 27, 0x0
L_80340968:
    mr 3, 31
    mr 4, 27
    addi 5, 1, 0x14
    bl fn_8022E088
    psq_l 1, 0x14(1), 0, 0
    mr 3, 28
    psq_l 0, 0xc(30), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x14(1), 0, 0
    psq_l 0, 0x14(30), 1, 0
    lfs 1, 0x18(1)
    ps_sub 0, 2, 0
    lfs 2, 0x14(1)
    psq_st 0, 0x1c(1), 1, 0
    stfs 30, 0x1c(1)
    bl fn_80093340
    lfs 3, 0x14(1)
    fmuls 2, 1, 31
    lfs 0, 0x18(1)
    fmuls 1, 3, 3
    fmuls 0, 0, 0
    fctiwz 2, 2
    fadds 4, 1, 0
    stfd 2, 0x30(1)
    fcmpo cr0, 4, 30
    lwz 0, 0x34(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803409E0
    .4byte 0x48000028 # b .L_80340A04
L_803409E0:
    frsqrte 3, 4
    .4byte 0xC042F2F0 # lfs f2, lbl_80542290@sda21(r0)
    .4byte 0xC002F2F4 # lfs f0, lbl_80542294@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_80340A04:
    rlwinm 0, 0, 30, 18, 28
    stfs 30, 0x1c(1)
    add 3, 29, 0
    lfs 1, 0x0(3)
    li 0, 0x0
    lfs 0, 0x4(3)
    fmuls 1, 4, 1
    fmuls 2, 4, 0
    stfs 1, 0x18(1)
    stfs 2, 0x14(1)
    lfs 0, 0x60(30)
    lfs 3, 0x64(30)
    fcmpo cr0, 2, 0
    lfs 0, 0x68(30)
    lfs 4, 0x6c(30)
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_80340A68
    fcmpo cr0, 1, 3
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80340A68
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_80340A68
    fcmpo cr0, 1, 4
    .4byte 0x40800008 # bge .L_80340A68
    li 0, 0x1
L_80340A68:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80340A80
    mr 3, 31
    bl fn_8022DF48
    li 28, 0x1
    .4byte 0x48000014 # b .L_80340A90
L_80340A80:
    addi 27, 27, 0x1
    cmpwi 27, 0x8
    .4byte 0x4180FEE0 # blt .L_80340968
    li 28, 0x0
L_80340A90:
    mr 3, 31
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80340AD8
    mr 3, 30
    li 4, -0x1
    bl fn_801F2740
    li 0, 0x1
    clrlwi 3, 3, 24
    slw 0, 0, 31
    and. 0, 0, 3
    .4byte 0x418200DC # beq .L_80340B98
    lwz 0, 0x90(30)
    clrlwi. 0, 0, 31
    .4byte 0x418200D0 # beq .L_80340B98
    mr 3, 31
    bl fn_8022DC3C
    .4byte 0x480000C4 # b .L_80340B98
L_80340AD8:
    clrlwi. 0, 28, 24
    .4byte 0x41820058 # beq .L_80340B34
    lfs 1, 0x14(30)
    .4byte 0xC002F2C8 # lfs f0, lbl_80542268@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820044 # bne .L_80340B34
    stfs 1, 0x10(1)
    addi 4, 1, 0x20
    psq_l 0, 0xc(30), 0, 0
    mr 3, 31
    psq_l 2, 0x10(1), 1, 0
    psq_l 1, 0x20(30), 1, 0
    psq_l 3, 0x18(30), 0, 0
    ps_sub 1, 2, 1
    psq_st 0, 0x8(1), 0, 0
    ps_sub 0, 0, 3
    psq_st 1, 0x10(1), 1, 0
    lfs 1, 0x10(1)
    psq_st 0, 0x8(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    stfs 1, 0x28(1)
    bl fn_8023DF68
L_80340B34:
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x8(3)
    lfs 0, 0x14(30)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_80340B50
    li 28, 0x0
L_80340B50:
    addi 27, 31, 0x2ac
    clrlwi 3, 28, 24
    lbzx 0, 30, 27
    cmplw 3, 0
    .4byte 0x41820034 # beq .L_80340B94
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022F2FC # lfs f1, lbl_8054229C@sda21(r0)
    li 5, 0x54e
    li 6, -0x1
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stb 0, 0x2b0(30)
L_80340B94:
    stbx 28, 30, 27
L_80340B98:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FD90 # blt .L_80340930
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80340BC8:
    li 0, 0x0
    stb 0, 0x2ac(3)
    stb 0, 0x2ad(3)
    stb 0, 0x2ae(3)
    stb 0, 0x2af(3)
    sth 0, 0x2b2(3)
    stb 0, 0x2b0(3)
    lfs 0, 0x28(3)
    stfs 0, 0x10(3)
    blr

fn_80340BF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801BB1AC
    lfs 1, 0xc(31)
    li 0, 0x1
    .4byte 0xC042F2E8 # lfs f2, lbl_80542288@sda21(r0)
    .4byte 0xC002F2DC # lfs f0, lbl_8054227C@sda21(r0)
    fsubs 1, 1, 2
    stfs 1, 0xc(31)
    lfs 1, 0x24(31)
    fsubs 1, 1, 2
    stfs 1, 0x24(31)
    lfs 1, 0x10(31)
    fsubs 1, 1, 2
    stfs 1, 0x10(31)
    lfs 1, 0x28(31)
    fsubs 1, 1, 2
    stfs 1, 0x28(31)
    stfs 0, 0x2b4(31)
    stb 0, 0x2b1(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8032EF24
    .4byte fn_80333734
    .4byte fn_803340F4
    .4byte fn_80335858
    .4byte fn_80335E1C
    .4byte fn_803370AC
    .4byte fn_8033742C
    .4byte fn_803388BC
    .4byte fn_8033959C
    .4byte fn_8033BE5C
    .4byte fn_8033C360
    .4byte fn_8033CAC0
    .4byte fn_8033E414
    .4byte fn_8033F224
    .4byte fn_8033F77C

