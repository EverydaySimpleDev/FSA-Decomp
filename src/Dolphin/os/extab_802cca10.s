# Dispatch-cross-check bundle: 9 real FourCC actor vtable bodies
# (lbl_804A9020/9078/927C/92D0/9328/93D0/9428/9480/94D8, ctors already
# landed) plus shared helper/update functions, landed as ONE
# byte-contiguous 67-function, 32,664-byte Track-A bundle
# (0x802CCA10-0x802D49A8). Found+verified via spanwalk.py (stopped
# exactly at the pre-existing extab_802d49a8.s boundary) and
# resolvefiles.py (2 functions, fn_802D39CC/802D39FC, were fused into
# a neighbors dump file). See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000CB9C
etb_8000CB9C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CB9C, 8

.global etb_8000CBA4
etb_8000CBA4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CBA4, 8

.global etb_8000CBAC
etb_8000CBAC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CBAC, 8

.global etb_8000CBB4
etb_8000CBB4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CBB4, 8

.global etb_8000CBBC
etb_8000CBBC:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_8000CBBC, 8

.global etb_8000CBC4
etb_8000CBC4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CBC4, 8

.global etb_8000CBCC
etb_8000CBCC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CBCC, 8

.global etb_8000CBD4
etb_8000CBD4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CBD4, 8

.global etb_8000CBDC
etb_8000CBDC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CBDC, 8

.global etb_8000CBE4
etb_8000CBE4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CBE4, 8

.global etb_8000CBEC
etb_8000CBEC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CBEC, 8

.global etb_8000CBF4
etb_8000CBF4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CBF4, 8

.global etb_8000CBFC
etb_8000CBFC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CBFC, 8

.global etb_8000CC04
etb_8000CC04:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CC04, 8

.global etb_8000CC0C
etb_8000CC0C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000CC0C, 8

.global etb_8000CC14
etb_8000CC14:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CC14, 8

.global etb_8000CC1C
etb_8000CC1C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CC1C, 8

.global etb_8000CC24
etb_8000CC24:
    .4byte 0x220A0000
    .4byte 0x00000000
.size etb_8000CC24, 8

.global etb_8000CC2C
etb_8000CC2C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CC2C, 8

.global etb_8000CC34
etb_8000CC34:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CC34, 8

.global etb_8000CC3C
etb_8000CC3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CC3C, 8

.global etb_8000CC44
etb_8000CC44:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CC44, 8

.global etb_8000CC4C
etb_8000CC4C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CC4C, 8

.global etb_8000CC54
etb_8000CC54:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000CC54, 8

.global etb_8000CC5C
etb_8000CC5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CC5C, 8

.global etb_8000CC64
etb_8000CC64:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CC64, 8

.global etb_8000CC6C
etb_8000CC6C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CC6C, 8

.global etb_8000CC74
etb_8000CC74:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CC74, 8

.global etb_8000CC7C
etb_8000CC7C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CC7C, 8

.global etb_8000CC84
etb_8000CC84:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CC84, 8

.global etb_8000CC8C
etb_8000CC8C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CC8C, 8

.global etb_8000CC94
etb_8000CC94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CC94, 8

.global etb_8000CC9C
etb_8000CC9C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CC9C, 8

.global etb_8000CCA4
etb_8000CCA4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CCA4, 8

.global etb_8000CCAC
etb_8000CCAC:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_8000CCAC, 8

.global etb_8000CCB4
etb_8000CCB4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CCB4, 8

.global etb_8000CCBC
etb_8000CCBC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CCBC, 8

.global etb_8000CCC4
etb_8000CCC4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CCC4, 8

.global etb_8000CCCC
etb_8000CCCC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CCCC, 8

.global etb_8000CCD4
etb_8000CCD4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CCD4, 8

.global etb_8000CCDC
etb_8000CCDC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CCDC, 8

.global etb_8000CCE4
etb_8000CCE4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CCE4, 8

.global etb_8000CCEC
etb_8000CCEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CCEC, 8

.global etb_8000CCF4
etb_8000CCF4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CCF4, 8

.global etb_8000CCFC
etb_8000CCFC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CCFC, 8

.global etb_8000CD04
etb_8000CD04:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CD04, 8

.global etb_8000CD0C
etb_8000CD0C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CD0C, 8

.global etb_8000CD14
etb_8000CD14:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CD14, 8

.global etb_8000CD1C
etb_8000CD1C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CD1C, 8

.global etb_8000CD24
etb_8000CD24:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CD24, 8

.global etb_8000CD2C
etb_8000CD2C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CD2C, 8

.global etb_8000CD34
etb_8000CD34:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CD34, 8

.global etb_8000CD3C
etb_8000CD3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CD3C, 8

.global etb_8000CD44
etb_8000CD44:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CD44, 8

.global etb_8000CD4C
etb_8000CD4C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000CD4C, 8

.global etb_8000CD54
etb_8000CD54:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CD54, 8

.global etb_8000CD5C
etb_8000CD5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CD5C, 8

.section extabindex, "a"
.balign 4
.global eti_8001BAE4
eti_8001BAE4:
    .4byte fn_802CCA10
    .4byte 0x000000A4
    .4byte etb_8000CB9C
.size eti_8001BAE4, 12

.global eti_8001BAF0
eti_8001BAF0:
    .4byte fn_802CCAB4
    .4byte 0x000001D8
    .4byte etb_8000CBA4
.size eti_8001BAF0, 12

.global eti_8001BAFC
eti_8001BAFC:
    .4byte fn_802CCC8C
    .4byte 0x00000224
    .4byte etb_8000CBAC
.size eti_8001BAFC, 12

.global eti_8001BB08
eti_8001BB08:
    .4byte fn_802CCEB0
    .4byte 0x00000060
    .4byte etb_8000CBB4
.size eti_8001BB08, 12

.global eti_8001BB14
eti_8001BB14:
    .4byte fn_802CCF14
    .4byte 0x00000B5C
    .4byte etb_8000CBBC
.size eti_8001BB14, 12

.global eti_8001BB20
eti_8001BB20:
    .4byte fn_802CDB18
    .4byte 0x00000224
    .4byte etb_8000CBC4
.size eti_8001BB20, 12

.global eti_8001BB2C
eti_8001BB2C:
    .4byte fn_802CDD3C
    .4byte 0x00000060
    .4byte etb_8000CBCC
.size eti_8001BB2C, 12

.global eti_8001BB38
eti_8001BB38:
    .4byte fn_802CDD9C
    .4byte 0x0000076C
    .4byte etb_8000CBD4
.size eti_8001BB38, 12

.global eti_8001BB44
eti_8001BB44:
    .4byte fn_802CE508
    .4byte 0x000002A0
    .4byte etb_8000CBDC
.size eti_8001BB44, 12

.global eti_8001BB50
eti_8001BB50:
    .4byte fn_802CE7A8
    .4byte 0x00000194
    .4byte etb_8000CBE4
.size eti_8001BB50, 12

.global eti_8001BB5C
eti_8001BB5C:
    .4byte fn_802CE93C
    .4byte 0x00000224
    .4byte etb_8000CBEC
.size eti_8001BB5C, 12

.global eti_8001BB68
eti_8001BB68:
    .4byte fn_802CEB60
    .4byte 0x00000060
    .4byte etb_8000CBF4
.size eti_8001BB68, 12

.global eti_8001BB74
eti_8001BB74:
    .4byte fn_802CEBC0
    .4byte 0x0000002C
    .4byte etb_8000CBFC
.size eti_8001BB74, 12

.global eti_8001BB80
eti_8001BB80:
    .4byte fn_802CEBEC
    .4byte 0x00000024
    .4byte etb_8000CC04
.size eti_8001BB80, 12

.global eti_8001BB8C
eti_8001BB8C:
    .4byte fn_802CEC10
    .4byte 0x00000520
    .4byte etb_8000CC0C
.size eti_8001BB8C, 12

.global eti_8001BB98
eti_8001BB98:
    .4byte fn_802CF130
    .4byte 0x000002D8
    .4byte etb_8000CC14
.size eti_8001BB98, 12

.global eti_8001BBA4
eti_8001BBA4:
    .4byte fn_802CF408
    .4byte 0x00000190
    .4byte etb_8000CC1C
.size eti_8001BBA4, 12

.global eti_8001BBB0
eti_8001BBB0:
    .4byte fn_802CF598
    .4byte 0x0000027C
    .4byte etb_8000CC24
.size eti_8001BBB0, 12

.global eti_8001BBBC
eti_8001BBBC:
    .4byte fn_802CF814
    .4byte 0x000002A8
    .4byte etb_8000CC2C
.size eti_8001BBBC, 12

.global eti_8001BBC8
eti_8001BBC8:
    .4byte fn_802CFABC
    .4byte 0x000000EC
    .4byte etb_8000CC34
.size eti_8001BBC8, 12

.global eti_8001BBD4
eti_8001BBD4:
    .4byte fn_802CFBA8
    .4byte 0x00000224
    .4byte etb_8000CC3C
.size eti_8001BBD4, 12

.global eti_8001BBE0
eti_8001BBE0:
    .4byte fn_802CFDCC
    .4byte 0x00000060
    .4byte etb_8000CC44
.size eti_8001BBE0, 12

.global eti_8001BBEC
eti_8001BBEC:
    .4byte fn_802CFE2C
    .4byte 0x000002E0
    .4byte etb_8000CC4C
.size eti_8001BBEC, 12

.global eti_8001BBF8
eti_8001BBF8:
    .4byte fn_802D010C
    .4byte 0x000005B0
    .4byte etb_8000CC54
.size eti_8001BBF8, 12

.global eti_8001BC04
eti_8001BC04:
    .4byte fn_802D0900
    .4byte 0x00000224
    .4byte etb_8000CC5C
.size eti_8001BC04, 12

.global eti_8001BC10
eti_8001BC10:
    .4byte fn_802D0B24
    .4byte 0x00000060
    .4byte etb_8000CC64
.size eti_8001BC10, 12

.global eti_8001BC1C
eti_8001BC1C:
    .4byte fn_802D0B84
    .4byte 0x0000002C
    .4byte etb_8000CC6C
.size eti_8001BC1C, 12

.global eti_8001BC28
eti_8001BC28:
    .4byte fn_802D0BB0
    .4byte 0x00000024
    .4byte etb_8000CC74
.size eti_8001BC28, 12

.global eti_8001BC34
eti_8001BC34:
    .4byte fn_802D0BD4
    .4byte 0x00000254
    .4byte etb_8000CC7C
.size eti_8001BC34, 12

.global eti_8001BC40
eti_8001BC40:
    .4byte fn_802D0E28
    .4byte 0x00000184
    .4byte etb_8000CC84
.size eti_8001BC40, 12

.global eti_8001BC4C
eti_8001BC4C:
    .4byte fn_802D0FAC
    .4byte 0x000002C4
    .4byte etb_8000CC8C
.size eti_8001BC4C, 12

.global eti_8001BC58
eti_8001BC58:
    .4byte fn_802D12B8
    .4byte 0x00000224
    .4byte etb_8000CC94
.size eti_8001BC58, 12

.global eti_8001BC64
eti_8001BC64:
    .4byte fn_802D14DC
    .4byte 0x0000002C
    .4byte etb_8000CC9C
.size eti_8001BC64, 12

.global eti_8001BC70
eti_8001BC70:
    .4byte fn_802D1508
    .4byte 0x00000024
    .4byte etb_8000CCA4
.size eti_8001BC70, 12

.global eti_8001BC7C
eti_8001BC7C:
    .4byte fn_802D152C
    .4byte 0x00000888
    .4byte etb_8000CCAC
.size eti_8001BC7C, 12

.global eti_8001BC88
eti_8001BC88:
    .4byte fn_802D1DB4
    .4byte 0x00000238
    .4byte etb_8000CCB4
.size eti_8001BC88, 12

.global eti_8001BC94
eti_8001BC94:
    .4byte fn_802D1FEC
    .4byte 0x0000070C
    .4byte etb_8000CCBC
.size eti_8001BC94, 12

.global eti_8001BCA0
eti_8001BCA0:
    .4byte fn_802D26F8
    .4byte 0x000000B0
    .4byte etb_8000CCC4
.size eti_8001BCA0, 12

.global eti_8001BCAC
eti_8001BCAC:
    .4byte fn_802D27A8
    .4byte 0x000000D8
    .4byte etb_8000CCCC
.size eti_8001BCAC, 12

.global eti_8001BCB8
eti_8001BCB8:
    .4byte fn_802D2880
    .4byte 0x00000224
    .4byte etb_8000CCD4
.size eti_8001BCB8, 12

.global eti_8001BCC4
eti_8001BCC4:
    .4byte fn_802D2AA4
    .4byte 0x00000060
    .4byte etb_8000CCDC
.size eti_8001BCC4, 12

.global eti_8001BCD0
eti_8001BCD0:
    .4byte fn_802D2B04
    .4byte 0x00000024
    .4byte etb_8000CCE4
.size eti_8001BCD0, 12

.global eti_8001BCDC
eti_8001BCDC:
    .4byte fn_802D2B28
    .4byte 0x000001E4
    .4byte etb_8000CCEC
.size eti_8001BCDC, 12

.global eti_8001BCE8
eti_8001BCE8:
    .4byte fn_802D2D0C
    .4byte 0x00000078
    .4byte etb_8000CCF4
.size eti_8001BCE8, 12

.global eti_8001BCF4
eti_8001BCF4:
    .4byte fn_802D2D84
    .4byte 0x00000194
    .4byte etb_8000CCFC
.size eti_8001BCF4, 12

.global eti_8001BD00
eti_8001BD00:
    .4byte fn_802D2F60
    .4byte 0x00000224
    .4byte etb_8000CD04
.size eti_8001BD00, 12

.global eti_8001BD0C
eti_8001BD0C:
    .4byte fn_802D3184
    .4byte 0x00000060
    .4byte etb_8000CD0C
.size eti_8001BD0C, 12

.global eti_8001BD18
eti_8001BD18:
    .4byte fn_802D31E4
    .4byte 0x0000002C
    .4byte etb_8000CD14
.size eti_8001BD18, 12

.global eti_8001BD24
eti_8001BD24:
    .4byte fn_802D3210
    .4byte 0x00000024
    .4byte etb_8000CD1C
.size eti_8001BD24, 12

.global eti_8001BD30
eti_8001BD30:
    .4byte fn_802D3234
    .4byte 0x00000254
    .4byte etb_8000CD24
.size eti_8001BD30, 12

.global eti_8001BD3C
eti_8001BD3C:
    .4byte fn_802D3488
    .4byte 0x00000184
    .4byte etb_8000CD2C
.size eti_8001BD3C, 12

.global eti_8001BD48
eti_8001BD48:
    .4byte fn_802D360C
    .4byte 0x0000014C
    .4byte etb_8000CD34
.size eti_8001BD48, 12

.global eti_8001BD54
eti_8001BD54:
    .4byte fn_802D3794
    .4byte 0x00000224
    .4byte etb_8000CD3C
.size eti_8001BD54, 12

.global eti_8001BD60
eti_8001BD60:
    .4byte fn_802D3A18
    .4byte 0x00000330
    .4byte etb_8000CD44
.size eti_8001BD60, 12

.global eti_8001BD6C
eti_8001BD6C:
    .4byte fn_802D3D48
    .4byte 0x00000990
    .4byte etb_8000CD4C
.size eti_8001BD6C, 12

.global eti_8001BD78
eti_8001BD78:
    .4byte fn_802D4768
    .4byte 0x0000010C
    .4byte etb_8000CD54
.size eti_8001BD78, 12

.global eti_8001BD84
eti_8001BD84:
    .4byte fn_802D4874
    .4byte 0x00000134
    .4byte etb_8000CD5C
.size eti_8001BD84, 12

.text
.balign 4
.global fn_802CCA10
.global fn_802CCAB4
.global fn_802CCC8C
.global fn_802CCEB0
.global fn_802CCF10
.global fn_802CCF14
.global fn_802CDA70
.global fn_802CDB18
.global fn_802CDD3C
.global fn_802CDD9C
.global fn_802CE508
.global fn_802CE7A8
.global fn_802CE93C
.global fn_802CEB60
.global fn_802CEBC0
.global fn_802CEBEC
.global fn_802CEC10
.global fn_802CF130
.global fn_802CF408
.global fn_802CF598
.global fn_802CF814
.global fn_802CFABC
.global fn_802CFBA8
.global fn_802CFDCC
.global fn_802CFE2C
.global fn_802D010C
.global fn_802D06BC
.global fn_802D0900
.global fn_802D0B24
.global fn_802D0B84
.global fn_802D0BB0
.global fn_802D0BD4
.global fn_802D0E28
.global fn_802D0FAC
.global fn_802D1270
.global fn_802D12B8
.global fn_802D14DC
.global fn_802D1508
.global fn_802D152C
.global fn_802D1DB4
.global fn_802D1FEC
.global fn_802D26F8
.global fn_802D27A8
.global fn_802D2880
.global fn_802D2AA4
.global fn_802D2B04
.global fn_802D2B28
.global fn_802D2D0C
.global fn_802D2D84
.global fn_802D2F18
.global fn_802D2F60
.global fn_802D3184
.global fn_802D31E4
.global fn_802D3210
.global fn_802D3234
.global fn_802D3488
.global fn_802D360C
.global fn_802D3758
.global fn_802D3794
.global fn_802D39B8
.global fn_802D39CC
.global fn_802D39FC
.global fn_802D3A18
.global fn_802D3D48
.global fn_802D46D8
.global fn_802D4768
.global fn_802D4874

fn_802CCA10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182006C # beq .L_802CCA98
    lis 3, lbl_804A9020@ha
    addi 0, 3, lbl_804A9020@l
    stw 0, 0x0(30)
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802CCA4C
    bl fn_801EE434
L_802CCA4C:
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802CCA5C
    bl fn_801EE434
L_802CCA5C:
    lwz 3, 0x238(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802CCA6C
    bl fn_801EE434
L_802CCA6C:
    lwz 3, 0x23c(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802CCA7C
    bl fn_801EE434
L_802CCA7C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802CCA98
    mr 3, 30
    bl dtor_80084580
L_802CCA98:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CCAB4:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC022DE3C # lfs f1, lbl_80540DDC@sda21(r0)
    stw 0, 0x44(1)
    li 0, 0x0
    .4byte 0xC002DE34 # lfs f0, lbl_80540DD4@sda21(r0)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 0, 0x230(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x408200C8 # bne .L_802CCBC8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xaf
    bl fn_802A3948
    li 0, 0x2
    .4byte 0xC062DE34 # lfs f3, lbl_80540DD4@sda21(r0)
    stw 0, 0x240(31)
    addi 4, 1, 0x2c
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    li 5, 0x426
    lfs 2, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 2, 3, 2
    lfs 4, 0x14(31)
    fadds 0, 3, 0
    li 8, 0x0
    stfs 4, 0x34(1)
    li 9, 0x0
    stfs 0, 0x2c(1)
    li 10, 0x1
    stfs 2, 0x30(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x230(31)
    addi 4, 1, 0x20
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    li 5, 0x427
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 3, 2, 1
    lfs 4, 0x14(31)
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x28(1)
    li 8, 0x0
    stfs 0, 0x20(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x24(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    .4byte 0x480000AC # b .L_802CCC70
L_802CCBC8:
    li 0, 0x0
    .4byte 0xC062DE34 # lfs f3, lbl_80540DD4@sda21(r0)
    stw 0, 0x240(31)
    addi 4, 1, 0x14
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    li 5, 0x42d
    lfs 2, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 2, 3, 2
    lfs 4, 0x14(31)
    fadds 0, 3, 0
    li 8, 0x0
    stfs 4, 0x1c(1)
    li 9, 0x0
    stfs 0, 0x14(1)
    li 10, 0x1
    stfs 2, 0x18(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0x8
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    li 5, 0x42e
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 3, 2, 1
    lfs 4, 0x14(31)
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x10(1)
    li 8, 0x0
    stfs 0, 0x8(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0xc(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
L_802CCC70:
    li 0, 0xf
    stw 0, 0x244(31)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802CCC8C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3768@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3768@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCCDC
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
L_802CCCDC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCD14
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
L_802CCD14:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCD4C
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
L_802CCD4C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCD84
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
L_802CCD84:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCDBC
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
L_802CCDBC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCDF4
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
L_802CCDF4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCE2C
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
L_802CCE2C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCE64
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
L_802CCE64:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CCE9C
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
L_802CCE9C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CCEB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802CCEF4
    lis 5, lbl_804A9078@ha
    li 4, 0x0
    addi 0, 5, lbl_804A9078@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802CCEF4
    mr 3, 30
    bl dtor_80084580
L_802CCEF4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CCF10:
    blr

fn_802CCF14:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stmw 24, 0xd0(1)
    mr 28, 3
    lfs 5, 0x10(3)
    lfs 1, 0xc(3)
    stfs 1, 0x24(1)
    stfs 5, 0x28(1)
    lfs 0, 0x60(3)
    stfs 0, 0xac(1)
    fadds 3, 0, 1
    lfs 0, 0x64(3)
    stfs 0, 0xb0(1)
    fadds 2, 0, 5
    lfs 0, 0x68(3)
    stfs 0, 0xb4(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(3)
    fadds 0, 4, 5
    stfs 4, 0xb8(1)
    stfs 3, 0xac(1)
    stfs 2, 0xb0(1)
    stfs 1, 0xb4(1)
    stfs 0, 0xb8(1)
    lwz 0, 0x238(3)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_802CCFA8
    lwz 4, 0x4(28)
    addi 3, 1, 0xac
    .4byte 0xC022DE40 # lfs f1, lbl_80540DE0@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    mr 26, 3
    .4byte 0x4800001C # b .L_802CCFC0
L_802CCFA8:
    lwz 4, 0x4(28)
    addi 3, 1, 0xac
    .4byte 0xC022DE44 # lfs f1, lbl_80540DE4@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    mr 26, 3
L_802CCFC0:
    lwz 4, 0x4(28)
    addi 3, 1, 0xac
    addi 5, 1, 0x24
    li 6, 0x1
    bl fn_8023B8E4
    li 0, 0xc8
    addi 31, 1, 0x9c
    stw 0, 0x108(28)
    li 0, 0x0
    mr 29, 3
    mr 30, 31
    stw 0, 0xd8(28)
    li 24, 0x0
    li 27, -0x1
L_802CCFF8:
    stw 27, 0x0(30)
    mr 3, 24
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802CD010
    stw 24, 0x0(30)
L_802CD010:
    addi 24, 24, 0x1
    addi 30, 30, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFDC # blt .L_802CCFF8
    addi 30, 1, 0x8c
    li 24, 0x0
    mr 25, 30
    li 27, -0x1
L_802CD030:
    stw 27, 0x0(25)
    mr 3, 24
    lwz 5, 0x4(28)
    addi 4, 1, 0xac
    addi 6, 1, 0x1c
    bl fn_8023AAF8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802CD054
    stw 24, 0x0(25)
L_802CD054:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFD0 # blt .L_802CD030
    lwz 0, 0x230(28)
    cmplwi 0, 0x8
    .4byte 0x418109E8 # bgt .L_802CDA54
    lis 3, jumptable_804A90CC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A90CC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    cmpwi 26, 0x0
    .4byte 0x41800100 # blt .L_802CD18C
    lwz 0, 0x238(28)
    cmpwi 0, 0x3
    .4byte 0x40820040 # bne .L_802CD0D8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 5, 0x4(28)
    li 6, 0x3f
    bl fn_802A381C
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x15
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x3c
    li 0, 0x4
    stw 3, 0x23c(28)
    stw 0, 0x230(28)
    .4byte 0x48000980 # b .L_802CDA54
L_802CD0D8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 5, 0x4(28)
    li 6, 0x91
    bl fn_802A381C
    li 0, 0x1
    .4byte 0xC022DE48 # lfs f1, lbl_80540DE8@sda21(r0)
    stw 0, 0x230(28)
    addi 4, 1, 0x80
    li 5, 0x28b
    li 6, 0x0
    lfs 3, 0x14(28)
    li 7, 0x0
    lfs 2, 0x10(28)
    li 8, 0x0
    lfs 0, 0xc(28)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x80(1)
    stfs 2, 0x84(1)
    stfs 3, 0x88(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lfs 3, 0x14(28)
    addi 4, 1, 0x74
    lfs 2, 0x10(28)
    li 5, 0x28c
    lfs 0, 0xc(28)
    li 6, 0x0
    .4byte 0xC022DE48 # lfs f1, lbl_80540DE8@sda21(r0)
    li 7, 0x0
    stfs 0, 0x74(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x78(1)
    stfs 3, 0x7c(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x13
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480008CC # b .L_802CDA54
L_802CD18C:
    li 29, 0x0
L_802CD190:
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x41800150 # blt .L_802CD2E8
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(28)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(28)
    .4byte 0xC002DE44 # lfs f0, lbl_80540DE4@sda21(r0)
    fsubs 1, 1, 2
    fmuls 1, 1, 1
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_802CD220
    frsqrte 1, 4
    .4byte 0xC862DE50 # lfd f3, lbl_80540DF0@sda21(r0)
    .4byte 0xC842DE58 # lfd f2, lbl_80540DF8@sda21(r0)
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
    .4byte 0x48000088 # b .L_802CD2A4
L_802CD220:
    .4byte 0xC802DE60 # lfd f0, lbl_80540E00@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_802CD238
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_802CD2A4
L_802CD238:
    stfs 4, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_802CD260
    .4byte 0x40800040 # bge .L_802CD290
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_802CD278
    .4byte 0x48000034 # b .L_802CD290
L_802CD260:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802CD270
    li 0, 0x1
    .4byte 0x48000028 # b .L_802CD294
L_802CD270:
    li 0, 0x2
    .4byte 0x48000020 # b .L_802CD294
L_802CD278:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802CD288
    li 0, 0x5
    .4byte 0x48000010 # b .L_802CD294
L_802CD288:
    li 0, 0x3
    .4byte 0x48000008 # b .L_802CD294
L_802CD290:
    li 0, 0x4
L_802CD294:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802CD2A4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_802CD2A4:
    .4byte 0xC002DE40 # lfs f0, lbl_80540DE0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800194 # bge .L_802CD440
    fctiwz 0, 4
    stfd 0, 0xc0(1)
    lwz 0, 0xc4(1)
    srawi 0, 0, 3
    stw 0, 0x23c(28)
    lwz 0, 0x238(28)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802CD2DC
    li 0, 0x3
    stw 0, 0x230(28)
    .4byte 0x4800017C # b .L_802CD454
L_802CD2DC:
    li 0, 0x2
    stw 0, 0x230(28)
    .4byte 0x48000170 # b .L_802CD454
L_802CD2E8:
    lwz 0, 0x0(30)
    cmpwi 0, 0x0
    .4byte 0x41800150 # blt .L_802CD440
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(28)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(28)
    .4byte 0xC002DE44 # lfs f0, lbl_80540DE4@sda21(r0)
    fsubs 1, 1, 2
    fmuls 1, 1, 1
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_802CD378
    frsqrte 1, 4
    .4byte 0xC862DE50 # lfd f3, lbl_80540DF0@sda21(r0)
    .4byte 0xC842DE58 # lfd f2, lbl_80540DF8@sda21(r0)
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
    .4byte 0x48000088 # b .L_802CD3FC
L_802CD378:
    .4byte 0xC802DE60 # lfd f0, lbl_80540E00@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_802CD390
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_802CD3FC
L_802CD390:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_802CD3B8
    .4byte 0x40800040 # bge .L_802CD3E8
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_802CD3D0
    .4byte 0x48000034 # b .L_802CD3E8
L_802CD3B8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802CD3C8
    li 0, 0x1
    .4byte 0x48000028 # b .L_802CD3EC
L_802CD3C8:
    li 0, 0x2
    .4byte 0x48000020 # b .L_802CD3EC
L_802CD3D0:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802CD3E0
    li 0, 0x5
    .4byte 0x48000010 # b .L_802CD3EC
L_802CD3E0:
    li 0, 0x3
    .4byte 0x48000008 # b .L_802CD3EC
L_802CD3E8:
    li 0, 0x4
L_802CD3EC:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802CD3FC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_802CD3FC:
    .4byte 0xC002DE68 # lfs f0, lbl_80540E08@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080003C # bge .L_802CD440
    fctiwz 0, 4
    stfd 0, 0xc0(1)
    lwz 0, 0xc4(1)
    srawi 0, 0, 3
    stw 0, 0x23c(28)
    lwz 0, 0x238(28)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802CD434
    li 0, 0x3
    stw 0, 0x230(28)
    .4byte 0x48000024 # b .L_802CD454
L_802CD434:
    li 0, 0x2
    stw 0, 0x230(28)
    .4byte 0x48000018 # b .L_802CD454
L_802CD440:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FD40 # blt .L_802CD190
L_802CD454:
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x90
    .4byte 0x418205EC # beq .L_802CDA54
    lwz 0, 0x238(28)
    cmpwi 0, 0x3
    .4byte 0x418205E0 # beq .L_802CDA54
    li 0, 0x5
    stw 0, 0x230(28)
    .4byte 0x480005D4 # b .L_802CDA54
    cmpwi 26, 0x0
    .4byte 0x418205CC # beq .L_802CDA54
    li 0, 0x5
    stw 0, 0x230(28)
    .4byte 0x480005C0 # b .L_802CDA54
    lwz 3, 0x23c(28)
    cmpwi 3, 0x0
    .4byte 0x408200B8 # bne .L_802CD558
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 5, 0x4(28)
    li 6, 0x91
    bl fn_802A381C
    lfs 3, 0x14(28)
    addi 4, 1, 0x68
    lfs 2, 0x10(28)
    li 5, 0x28b
    lfs 0, 0xc(28)
    li 6, 0x0
    .4byte 0xC022DE48 # lfs f1, lbl_80540DE8@sda21(r0)
    li 7, 0x0
    stfs 0, 0x68(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x6c(1)
    stfs 3, 0x70(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lfs 3, 0x14(28)
    addi 4, 1, 0x5c
    lfs 2, 0x10(28)
    li 5, 0x28c
    lfs 0, 0xc(28)
    li 6, 0x0
    .4byte 0xC022DE48 # lfs f1, lbl_80540DE8@sda21(r0)
    li 7, 0x0
    stfs 0, 0x5c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x60(1)
    stfs 3, 0x64(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x13
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(28)
    .4byte 0x48000500 # b .L_802CDA54
L_802CD558:
    subi 0, 3, 0x1
    stw 0, 0x23c(28)
    .4byte 0x480004F4 # b .L_802CDA54
    lwz 3, 0x23c(28)
    cmpwi 3, 0x0
    .4byte 0x40820040 # bne .L_802CD5AC
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 5, 0x4(28)
    li 6, 0x3f
    bl fn_802A381C
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x15
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x4
    li 0, 0x3c
    stw 3, 0x230(28)
    stw 0, 0x23c(28)
    .4byte 0x480004AC # b .L_802CDA54
L_802CD5AC:
    subi 0, 3, 0x1
    stw 0, 0x23c(28)
    .4byte 0x480004A0 # b .L_802CDA54
    lwz 3, 0x23c(28)
    cmpwi 3, 0x0
    .4byte 0x40820038 # bne .L_802CD5F8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 5, 0x4(28)
    li 6, 0x3e
    bl fn_802A381C
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x16
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0x230(28)
    .4byte 0x48000460 # b .L_802CDA54
L_802CD5F8:
    subi 0, 3, 0x1
    stw 0, 0x23c(28)
    .4byte 0x48000454 # b .L_802CDA54
    cmpwi 26, 0x0
    .4byte 0x41800010 # blt .L_802CD618
    li 0, 0x7
    stw 0, 0x230(28)
    .4byte 0x48000440 # b .L_802CDA54
L_802CD618:
    li 0, 0x4
    li 25, 0x0
    mtctr 0
L_802CD624:
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x41800134 # blt .L_802CD760
    li 0, 0x2
    mr 3, 25
    stw 0, 0x230(28)
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 25
    lfs 0, 0xc(28)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(28)
    .4byte 0xC002DE44 # lfs f0, lbl_80540DE4@sda21(r0)
    fsubs 1, 1, 2
    fmuls 1, 1, 1
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_802CD6BC
    frsqrte 1, 4
    .4byte 0xC862DE50 # lfd f3, lbl_80540DF0@sda21(r0)
    .4byte 0xC842DE58 # lfd f2, lbl_80540DF8@sda21(r0)
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
    .4byte 0x48000088 # b .L_802CD740
L_802CD6BC:
    .4byte 0xC802DE60 # lfd f0, lbl_80540E00@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_802CD6D4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_802CD740
L_802CD6D4:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_802CD6FC
    .4byte 0x40800040 # bge .L_802CD72C
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_802CD714
    .4byte 0x48000034 # b .L_802CD72C
L_802CD6FC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802CD70C
    li 0, 0x1
    .4byte 0x48000028 # b .L_802CD730
L_802CD70C:
    li 0, 0x2
    .4byte 0x48000020 # b .L_802CD730
L_802CD714:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802CD724
    li 0, 0x5
    .4byte 0x48000010 # b .L_802CD730
L_802CD724:
    li 0, 0x3
    .4byte 0x48000008 # b .L_802CD730
L_802CD72C:
    li 0, 0x4
L_802CD730:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802CD740
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_802CD740:
    fctiwz 0, 4
    li 0, 0x6
    stfd 0, 0xc0(1)
    lwz 3, 0xc4(1)
    srawi 3, 3, 3
    stw 3, 0x23c(28)
    stw 0, 0x230(28)
    .4byte 0x48000010 # b .L_802CD76C
L_802CD760:
    addi 31, 31, 0x4
    addi 25, 25, 0x1
    .4byte 0x4200FEBC # bdnz .L_802CD624
L_802CD76C:
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x91
    .4byte 0x418202D4 # beq .L_802CDA54
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x22e
    .4byte 0x418202BC # beq .L_802CDA54
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x418202A4 # beq .L_802CDA54
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000298 # b .L_802CDA54
    lwz 3, 0x23c(28)
    cmpwi 3, 0x0
    .4byte 0x408200B8 # bne .L_802CD880
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 5, 0x4(28)
    li 6, 0x92
    bl fn_802A381C
    lfs 3, 0x14(28)
    addi 4, 1, 0x50
    lfs 2, 0x10(28)
    li 5, 0x28b
    lfs 0, 0xc(28)
    li 6, 0x0
    .4byte 0xC022DE6C # lfs f1, lbl_80540E0C@sda21(r0)
    li 7, 0x0
    stfs 0, 0x50(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x54(1)
    stfs 3, 0x58(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lfs 3, 0x14(28)
    addi 4, 1, 0x44
    lfs 2, 0x10(28)
    li 5, 0x28c
    lfs 0, 0xc(28)
    li 6, 0x0
    .4byte 0xC022DE6C # lfs f1, lbl_80540E0C@sda21(r0)
    li 7, 0x0
    stfs 0, 0x44(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x48(1)
    stfs 3, 0x4c(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x12
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x480001D8 # b .L_802CDA54
L_802CD880:
    subi 0, 3, 0x1
    stw 0, 0x23c(28)
    .4byte 0x480001CC # b .L_802CDA54
    cmpwi 26, 0x0
    .4byte 0x408001C4 # bge .L_802CDA54
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 5, 0x4(28)
    li 6, 0x92
    bl fn_802A381C
    lfs 3, 0x14(28)
    addi 4, 1, 0x38
    lfs 2, 0x10(28)
    li 5, 0x28b
    lfs 0, 0xc(28)
    li 6, 0x0
    .4byte 0xC022DE6C # lfs f1, lbl_80540E0C@sda21(r0)
    li 7, 0x0
    stfs 0, 0x38(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x3c(1)
    stfs 3, 0x40(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lfs 3, 0x14(28)
    addi 4, 1, 0x2c
    lfs 2, 0x10(28)
    li 5, 0x28c
    lfs 0, 0xc(28)
    li 6, 0x0
    .4byte 0xC022DE6C # lfs f1, lbl_80540E0C@sda21(r0)
    li 7, 0x0
    stfs 0, 0x2c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x30(1)
    stfs 3, 0x34(1)
    lwz 3, 0x4(28)
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x12
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000110 # b .L_802CDA54
    cmpwi 29, 0x0
    .4byte 0x41800108 # blt .L_802CDA54
    mr 3, 29
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_802CDA54
    lfs 1, 0x10(28)
    addi 3, 1, 0x14
    lfs 0, 0xc(28)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    lwz 4, 0x4(28)
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x408200D0 # bne .L_802CDA54
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 6, 0x4(28)
    li 5, 0x0
    li 7, 0x3e0
    bl fn_802A3948
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x45
    li 5, 0x0
    bl fn_801F0E34
    lwz 25, 0x4(28)
    cmpwi 25, 0x8
    .4byte 0x4180002C # blt .L_802CD9E8
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 25
    addi 4, 4, 0x5249
    addi 6, 28, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000068 # b .L_802CDA4C
L_802CD9E8:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x75
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DE70 # lfs f1, lbl_80540E10@sda21(r0)
    li 5, 0x24a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DE70 # lfs f1, lbl_80540E10@sda21(r0)
    li 5, 0x24b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802CDA4C:
    li 0, 0x0
    stb 0, 0x11c(28)
L_802CDA54:
    psq_l 31, 0xf8(1), 0, 0
    lfd 31, 0xf0(1)
    lmw 24, 0xd0(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_802CDA70:
    .4byte 0xC022DE74 # lfs f1, lbl_80540E14@sda21(r0)
    li 0, 0x0
    .4byte 0xC002DE78 # lfs f0, lbl_80540E18@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 26
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    cmpwi 0, 0x2
    .4byte 0x41820024 # beq .L_802CDAC8
    lfs 0, 0xc(3)
    .4byte 0xC022DE7C # lfs f1, lbl_80540E1C@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    .4byte 0x48000014 # b .L_802CDAD8
L_802CDAC8:
    lfs 1, 0xc(3)
    .4byte 0xC002DE7C # lfs f0, lbl_80540E1C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(3)
L_802CDAD8:
    lwz 0, 0x238(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802CDAEC
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802CDAF8
L_802CDAEC:
    li 0, 0x0
    stw 0, 0x230(3)
    blr
L_802CDAF8:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802CDB0C
    li 0, 0x5
    stw 0, 0x230(3)
    blr
L_802CDB0C:
    li 0, 0x8
    stw 0, 0x230(3)
    blr

fn_802CDB18:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3868@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3868@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDB68
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
L_802CDB68:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDBA0
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
L_802CDBA0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDBD8
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
L_802CDBD8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDC10
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
L_802CDC10:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDC48
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
L_802CDC48:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDC80
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
L_802CDC80:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDCB8
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
L_802CDCB8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDCF0
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
L_802CDCF0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CDD28
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
L_802CDD28:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CDD3C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802CDD80
    lis 5, lbl_804A927C@ha
    li 4, 0x0
    addi 0, 5, lbl_804A927C@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802CDD80
    mr 3, 30
    bl dtor_80084580
L_802CDD80:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CDD9C:
    stwu 1, -0x90(1)
    mflr 0
    lis 4, lbl_804A90F0@ha
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    addi 29, 4, lbl_804A90F0@l
    lwz 0, 0x230(3)
    lis 3, lbl_8046D920@ha
    addi 30, 3, lbl_8046D920@l
    cmpwi 0, 0x1
    .4byte 0x4082071C # bne .L_802CE4EC
    li 0, -0x1
    addi 9, 1, 0x14
    stw 0, 0x24(1)
    li 10, 0x0
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_802CDE4C
L_802CDDEC:
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
L_802CDE4C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802CDDEC
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x24(1)
    .4byte 0x3862DE88 # li r3, lbl_80540E28@sda21
    stw 6, 0x28(1)
    stw 6, 0x2c(1)
    stb 6, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stb 6, 0x37(1)
    stb 6, 0x38(1)
    stb 6, 0x39(1)
    stb 5, 0x3a(1)
    stw 4, 0x3c(1)
    stb 5, 0x40(1)
    stb 6, 0x41(1)
    stb 6, 0x42(1)
    stw 7, 0x44(1)
    stw 6, 0x48(1)
    stw 0, 0x4c(1)
    lwz 0, 0x238(31)
    lbzx 0, 3, 0
    stb 0, 0x30(1)
    lwz 0, 0x23c(31)
    lbzx 0, 3, 0
    stb 5, 0x38(1)
    stb 0, 0x31(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1b
    .4byte 0x418000C0 # blt .L_802CDFA8
    cmpwi 0, 0x1e
    .4byte 0x418100B8 # bgt .L_802CDFA8
    addi 3, 1, 0x50
    bl PSMTXIdentity
    lha 0, 0x248(31)
    lis 3, lbl_8052EBC0@ha
    lfsu 9, lbl_8052EBC0@l(3)
    rlwinm 0, 0, 30, 18, 28
    lfs 11, 0x24c(31)
    lfsx 7, 3, 0
    addi 4, 3, 0x4
    lfs 3, 0x4(3)
    fmuls 0, 9, 9
    fmuls 1, 9, 7
    lfsx 2, 4, 0
    fmuls 6, 3, 3
    lfs 12, 0x250(31)
    fmuls 5, 3, 9
    fmuls 10, 2, 3
    fmuls 8, 2, 9
    lfs 13, 0x254(31)
    fmadds 2, 1, 9, 6
    addi 0, 1, 0x50
    fmsubs 3, 1, 3, 5
    fmadds 1, 6, 7, 0
    fneg 4, 7
    stw 0, 0x2c(1)
    fmsubs 0, 5, 7, 5
    fmuls 5, 12, 3
    fmuls 6, 11, 4
    fmuls 4, 12, 2
    fmuls 2, 13, 1
    stfs 5, 0x54(1)
    fmuls 1, 13, 0
    fmuls 9, 11, 10
    stfs 6, 0x70(1)
    fmuls 7, 11, 8
    fmuls 3, 12, 8
    stfs 4, 0x64(1)
    fmuls 0, 13, 10
    stfs 9, 0x50(1)
    stfs 7, 0x60(1)
    stfs 3, 0x74(1)
    stfs 2, 0x58(1)
    stfs 1, 0x68(1)
    stfs 0, 0x78(1)
    .4byte 0x48000024 # b .L_802CDFC8
L_802CDFA8:
    cmpwi 0, 0x15
    .4byte 0x40820010 # bne .L_802CDFBC
    li 0, 0x1
    stb 0, 0x41(1)
    .4byte 0x48000010 # b .L_802CDFC8
L_802CDFBC:
    li 0, 0x1
    stb 0, 0x35(1)
    stb 0, 0x37(1)
L_802CDFC8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x22
    .4byte 0x408200B0 # bne .L_802CE080
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_802CE034
    lis 3, 0x5449
    addi 4, 30, 0x608
    addi 3, 3, 0x4d47
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x408004D8 # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480004BC # b .L_802CE4EC
L_802CE034:
    lwz 0, 0x234(31)
    lis 3, 0x5449
    addi 4, 29, 0x0
    slwi 0, 0, 2
    addi 3, 3, 0x4d47
    lwzx 4, 4, 0
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x4080048C # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x48000470 # b .L_802CE4EC
L_802CE080:
    slwi 0, 0, 2
    addi 3, 29, 0x0
    lis 5, 0x5449
    lwzx 4, 3, 0
    addi 3, 5, 0x4d47
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802CE0C4
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802CE0C4:
    addi 9, 1, 0x14
    li 10, 0x0
    .4byte 0x48000064 # b .L_802CE130
L_802CE0D0:
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
L_802CE130:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802CE0D0
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 7, 0x24(1)
    .4byte 0x3882DE88 # li r4, lbl_80540E28@sda21
    stw 6, 0x28(1)
    stw 6, 0x2c(1)
    stb 6, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stb 6, 0x37(1)
    stb 6, 0x38(1)
    stb 6, 0x39(1)
    stb 5, 0x3a(1)
    stw 3, 0x3c(1)
    stb 5, 0x40(1)
    stb 6, 0x41(1)
    stb 6, 0x42(1)
    stw 7, 0x44(1)
    stw 6, 0x48(1)
    stw 0, 0x4c(1)
    lwz 0, 0x238(31)
    lbzx 3, 4, 0
    addi 0, 3, 0x1
    stb 0, 0x30(1)
    lwz 0, 0x23c(31)
    lbzx 0, 4, 0
    stb 0, 0x31(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802CE1E0
    cmpwi 0, 0x8
    .4byte 0x41800074 # blt .L_802CE248
    cmpwi 0, 0xe
    .4byte 0x4181006C # bgt .L_802CE248
L_802CE1E0:
    li 0, 0x0
    li 3, 0x1
    li 5, 0x96
    stw 3, 0x48(1)
    lis 3, 0x5449
    addi 4, 29, 0x144
    stb 5, 0x27(1)
    addi 3, 3, 0x4d47
    stb 0, 0x40(1)
    stb 0, 0x38(1)
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x408002C4 # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480002A8 # b .L_802CE4EC
L_802CE248:
    cmpwi 0, 0x15
    .4byte 0x4082004C # bne .L_802CE298
    li 0, 0x1
    lis 3, 0x5449
    stb 0, 0x41(1)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x61c
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x40800274 # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x48000258 # b .L_802CE4EC
L_802CE298:
    cmpwi 0, 0x31
    .4byte 0x40820044 # bne .L_802CE2E0
    lis 3, 0x5449
    addi 4, 30, 0x628
    addi 3, 3, 0x4d47
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x4080022C # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x48000210 # b .L_802CE4EC
L_802CE2E0:
    cmpwi 0, 0x33
    .4byte 0x4082006C # bne .L_802CE350
    li 0, 0x1
    lis 3, 0x5449
    stb 0, 0x38(1)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x634
    bl fn_804032E8
    lfs 2, 0x10(31)
    .4byte 0xC002DE90 # lfs f0, lbl_80540E30@sda21(r0)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002DE94 # lfs f0, lbl_80540E34@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x408001BC # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480001A0 # b .L_802CE4EC
L_802CE350:
    cmpwi 0, 0x34
    .4byte 0x40820044 # bne .L_802CE398
    lis 3, 0x5449
    addi 4, 30, 0x644
    addi 3, 3, 0x4d47
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x40800174 # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x48000158 # b .L_802CE4EC
L_802CE398:
    cmpwi 0, 0x37
    .4byte 0x4180006C # blt .L_802CE408
    cmpwi 0, 0x39
    .4byte 0x41810064 # bgt .L_802CE408
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x40(1)
    lis 3, 0x5449
    addi 4, 29, 0x180
    stb 0, 0x38(1)
    addi 3, 3, 0x4d47
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    add 4, 4, 0
    lwz 4, -0xdc(4)
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x40800104 # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480000E8 # b .L_802CE4EC
L_802CE408:
    cmpwi 0, 0x3e
    .4byte 0x40820044 # bne .L_802CE450
    lis 3, 0x5449
    addi 4, 30, 0x658
    addi 3, 3, 0x4d47
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x408000BC # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480000A0 # b .L_802CE4EC
L_802CE450:
    cmpwi 0, 0x42
    .4byte 0x4082004C # bne .L_802CE4A0
    li 0, 0x1
    lis 3, 0x5449
    stb 0, 0x38(1)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x670
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x4080006C # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x48000050 # b .L_802CE4EC
L_802CE4A0:
    cmpwi 0, 0x43
    .4byte 0x40820048 # bne .L_802CE4EC
    li 0, 0x1
    lis 3, 0x5449
    stb 0, 0x38(1)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x684
    bl fn_804032E8
    lwz 4, 0x4(31)
    lbz 0, 0x259(31)
    add 0, 4, 0
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802CE4EC
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x14
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802CE4EC:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_802CE508:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820124 # beq .L_802CE648
    .4byte 0x4080026C # bge .L_802CE794
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802CE538
    .4byte 0x48000260 # b .L_802CE794
L_802CE538:
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802CE560
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820238 # bne .L_802CE794
L_802CE560:
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x418200D4 # beq .L_802CE63C
    lwz 3, 0x4(31)
    cmpwi 3, 0x8
    .4byte 0x41800058 # blt .L_802CE5CC
    .4byte 0xC042DE98 # lfs f2, lbl_80540E38@sda21(r0)
    lfs 1, 0xc(31)
    .4byte 0xC002DE94 # lfs f0, lbl_80540E34@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x8(1)
    lfs 1, 0x10(31)
    fadds 1, 2, 1
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    lis 4, 0x4b4d
    lbz 0, 0x259(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x0
    add 5, 5, 0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000060 # b .L_802CE628
L_802CE5CC:
    lbz 0, 0x259(31)
    addi 4, 31, 0xc
    .4byte 0xC022DE9C # lfs f1, lbl_80540E3C@sda21(r0)
    li 5, 0x564
    add 3, 3, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x259(31)
    li 5, 0x503
    .4byte 0xC022DEA0 # lfs f1, lbl_80540E40@sda21(r0)
    li 6, 0x1
    add 3, 3, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802CE628:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
L_802CE63C:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000150 # b .L_802CE794
L_802CE648:
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802CE65C
    cmpwi 0, 0x3
    .4byte 0x40820108 # bne .L_802CE760
L_802CE65C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408200EC # bne .L_802CE760
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x418200D4 # beq .L_802CE754
    lwz 3, 0x4(31)
    cmpwi 3, 0x8
    .4byte 0x41800058 # blt .L_802CE6E4
    .4byte 0xC042DE98 # lfs f2, lbl_80540E38@sda21(r0)
    lfs 1, 0xc(31)
    .4byte 0xC002DE94 # lfs f0, lbl_80540E34@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x8(1)
    lfs 1, 0x10(31)
    fadds 1, 2, 1
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    lis 4, 0x4b4d
    lbz 0, 0x259(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x0
    add 5, 5, 0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000060 # b .L_802CE740
L_802CE6E4:
    lbz 0, 0x259(31)
    addi 4, 31, 0xc
    .4byte 0xC022DE9C # lfs f1, lbl_80540E3C@sda21(r0)
    li 5, 0x564
    add 3, 3, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x259(31)
    li 5, 0x503
    .4byte 0xC022DEA0 # lfs f1, lbl_80540E40@sda21(r0)
    li 6, 0x1
    add 3, 3, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802CE740:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
L_802CE754:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000038 # b .L_802CE794
L_802CE760:
    lwz 0, 0x240(31)
    cmpwi 0, 0x4
    .4byte 0x4082002C # bne .L_802CE794
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802CE794
    li 0, 0x2
    stw 0, 0x230(31)
L_802CE794:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802CE7A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 20
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 16
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 12
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 8
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 6
    stw 0, 0x244(3)
    lwz 0, 0x244(3)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802CE810
    li 0, 0x1
    stb 0, 0x259(31)
    .4byte 0x4800000C # b .L_802CE818
L_802CE810:
    li 0, 0x0
    stb 0, 0x259(31)
L_802CE818:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 5, 5
    .4byte 0x41820010 # beq .L_802CE830
    li 0, 0x1
    stb 0, 0x258(31)
    .4byte 0x4800000C # b .L_802CE838
L_802CE830:
    li 0, 0x0
    stb 0, 0x258(31)
L_802CE838:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802CE854
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802CE854
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802CE860
L_802CE854:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_802CE868
L_802CE860:
    li 0, 0x0
    stw 0, 0x230(31)
L_802CE868:
    .4byte 0xC002DEA0 # lfs f0, lbl_80540E40@sda21(r0)
    li 0, 0x0
    stfs 0, 0x24c(31)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    sth 0, 0x248(31)
    lwz 3, 0x234(31)
    cmpwi 3, 0x1b
    .4byte 0x40820020 # bne .L_802CE8A8
    .4byte 0xC002DEA4 # lfs f0, lbl_80540E44@sda21(r0)
    li 0, 0x4000
    stfs 0, 0x24c(31)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    sth 0, 0x248(31)
    .4byte 0x48000068 # b .L_802CE90C
L_802CE8A8:
    cmpwi 3, 0x1c
    .4byte 0x40820020 # bne .L_802CE8CC
    .4byte 0xC002DEA4 # lfs f0, lbl_80540E44@sda21(r0)
    li 0, -0x4000
    stfs 0, 0x24c(31)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    sth 0, 0x248(31)
    .4byte 0x48000044 # b .L_802CE90C
L_802CE8CC:
    cmpwi 3, 0x1d
    .4byte 0x40820020 # bne .L_802CE8F0
    .4byte 0xC002DEA4 # lfs f0, lbl_80540E44@sda21(r0)
    li 0, -0x8000
    stfs 0, 0x24c(31)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    sth 0, 0x248(31)
    .4byte 0x48000020 # b .L_802CE90C
L_802CE8F0:
    cmpwi 3, 0x1e
    .4byte 0x40820018 # bne .L_802CE90C
    .4byte 0xC002DEA4 # lfs f0, lbl_80540E44@sda21(r0)
    stfs 0, 0x24c(31)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    sth 0, 0x248(31)
L_802CE90C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0x11f(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CE93C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3968@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3968@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CE98C
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
L_802CE98C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CE9C4
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
L_802CE9C4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CE9FC
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
L_802CE9FC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CEA34
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
L_802CEA34:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CEA6C
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
L_802CEA6C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CEAA4
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
L_802CEAA4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CEADC
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
L_802CEADC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CEB14
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
L_802CEB14:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CEB4C
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
L_802CEB4C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CEB60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802CEBA4
    lis 5, lbl_804A92D0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A92D0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802CEBA4
    mr 3, 30
    bl dtor_80084580
L_802CEBA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CEBC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CEBEC:
    stwu 1, -0x10(1)
    mflr 0
    addi 6, 3, 0x23c
    stw 0, 0x14(1)
    bl fn_801F132C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CEC10:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x40820268 # bne .L_802CEE9C
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x4082003C # bne .L_802CEC7C
    li 3, 0x64
    bl fn_801CD664
    cmpwi 3, 0x3c
    .4byte 0x408004BC # bge .L_802CF10C
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000494 # b .L_802CF10C
L_802CEC7C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x3
    .4byte 0x408200D8 # bne .L_802CED5C
    lfs 31, 0x10(31)
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lfs 3, 0xc(31)
    stw 3, 0x54(1)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    stw 0, 0x50(1)
    .4byte 0xC842DEB0 # lfd f2, lbl_80540E50@sda21(r0)
    lfd 1, 0x50(1)
    stfs 31, 0x48(1)
    fsubs 1, 1, 2
    stfs 0, 0x4c(1)
    fadds 0, 3, 1
    stfs 0, 0x44(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x44
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lfs 31, 0x10(31)
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lfs 3, 0xc(31)
    stw 3, 0x5c(1)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    stw 0, 0x58(1)
    .4byte 0xC842DEB0 # lfd f2, lbl_80540E50@sda21(r0)
    lfd 1, 0x58(1)
    stfs 31, 0x3c(1)
    fsubs 1, 1, 2
    stfs 0, 0x40(1)
    fadds 0, 3, 1
    stfs 0, 0x38(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x38
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480003B4 # b .L_802CF10C
L_802CED5C:
    cmpwi 0, 0x2
    .4byte 0x408200A0 # bne .L_802CEE00
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x58(1)
    .4byte 0xC822DEB0 # lfd f1, lbl_80540E50@sda21(r0)
    li 3, 0xd
    stw 4, 0x5c(1)
    lfs 2, 0x10(31)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    fadds 31, 2, 0
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lfs 3, 0xc(31)
    stw 3, 0x54(1)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    stw 0, 0x50(1)
    .4byte 0xC842DEB0 # lfd f2, lbl_80540E50@sda21(r0)
    lfd 1, 0x50(1)
    stfs 31, 0x30(1)
    fsubs 1, 1, 2
    stfs 0, 0x34(1)
    fadds 0, 3, 1
    stfs 0, 0x2c(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x26
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x2c
    addi 7, 7, 0x2d01
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000310 # b .L_802CF10C
L_802CEE00:
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x58(1)
    .4byte 0xC822DEB0 # lfd f1, lbl_80540E50@sda21(r0)
    li 3, 0xd
    stw 4, 0x5c(1)
    lfs 2, 0x10(31)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    fadds 31, 2, 0
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lfs 3, 0xc(31)
    stw 3, 0x54(1)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    stw 0, 0x50(1)
    .4byte 0xC842DEB0 # lfd f2, lbl_80540E50@sda21(r0)
    lfd 1, 0x50(1)
    stfs 31, 0x24(1)
    fsubs 1, 1, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 1
    stfs 0, 0x20(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x26
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x20
    addi 7, 7, 0x2d00
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000274 # b .L_802CF10C
L_802CEE9C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x41820268 # beq .L_802CF10C
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x4082025C # bne .L_802CF10C
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4080011C # bge .L_802CEFD8
    li 3, 0x64
    bl fn_801CD664
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408200A8 # bne .L_802CEF78
    cmpwi 3, 0x28
    .4byte 0x41800234 # blt .L_802CF10C
    cmpwi 3, 0x3c
    .4byte 0x4181022C # bgt .L_802CF10C
    clrlwi. 0, 3, 31
    .4byte 0x41820068 # beq .L_802CEF50
    lfs 1, 0x14(31)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_802CEF28
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x26
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    addi 7, 7, 0xa00
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480001E8 # b .L_802CF10C
L_802CEF28:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    lis 7, 0x26
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480001C0 # b .L_802CF10C
L_802CEF50:
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000198 # b .L_802CF10C
L_802CEF78:
    cmpwi 3, 0xa
    .4byte 0x41810190 # bgt .L_802CF10C
    clrlwi. 0, 3, 31
    .4byte 0x4182002C # beq .L_802CEFB0
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    lis 7, 0x26
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000160 # b .L_802CF10C
L_802CEFB0:
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000138 # b .L_802CF10C
L_802CEFD8:
    .4byte 0x4082002C # bne .L_802CF004
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800010C # b .L_802CF10C
L_802CF004:
    cmpwi 0, 0x2
    .4byte 0x4082002C # bne .L_802CF034
    bl SpatialRegistry_GetBase
    lis 4, 0x4d54
    lwz 5, 0x4(31)
    addi 4, 4, 0x424f
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000DC # b .L_802CF10C
L_802CF034:
    cmpwi 0, 0x3
    .4byte 0x408200D4 # bne .L_802CF10C
    lfs 31, 0x10(31)
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lfs 3, 0xc(31)
    stw 3, 0x5c(1)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    stw 0, 0x58(1)
    .4byte 0xC842DEB0 # lfd f2, lbl_80540E50@sda21(r0)
    lfd 1, 0x58(1)
    stfs 31, 0x18(1)
    fsubs 1, 1, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 1
    stfs 0, 0x14(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x14
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lfs 31, 0x10(31)
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lfs 3, 0xc(31)
    stw 3, 0x54(1)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    stw 0, 0x50(1)
    .4byte 0xC842DEB0 # lfd f2, lbl_80540E50@sda21(r0)
    lfd 1, 0x50(1)
    stfs 31, 0xc(1)
    fsubs 1, 1, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 1
    stfs 0, 0x8(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802CF10C:
    li 0, 0x0
    stb 0, 0x11c(31)
    psq_l 31, 0x78(1), 0, 0
    lwz 0, 0x84(1)
    lfd 31, 0x70(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802CF130:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 4, 0x4(3)
    cmpwi 4, 0x8
    .4byte 0x41800084 # blt .L_802CF1D0
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    stfs 1, 0x10(1)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802CF1B0
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x6
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000240 # b .L_802CF3EC
L_802CF1B0:
    cmpwi 0, 0x1
    .4byte 0x40820238 # bne .L_802CF3EC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x2f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000220 # b .L_802CF3EC
L_802CF1D0:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408201C8 # bne .L_802CF3A0
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x4182001C # beq .L_802CF208
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x40820044 # bne .L_802CF248
L_802CF208:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001A8 # b .L_802CF3EC
L_802CF248:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xe
    .4byte 0x408200EC # bne .L_802CF348
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802CF2D4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800011C # b .L_802CF3EC
L_802CF2D4:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820110 # beq .L_802CF3EC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000A8 # b .L_802CF3EC
L_802CF348:
    mr 3, 31
    bl fn_802CF598
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEBC # lfs f1, lbl_80540E5C@sda21(r0)
    li 5, 0x357
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x6
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x2
    mr 3, 31
    stw 0, 0x234(31)
    bl fn_802CEC10
    .4byte 0x48000050 # b .L_802CF3EC
L_802CF3A0:
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_802CF3EC
    .4byte 0xC022DEBC # lfs f1, lbl_80540E5C@sda21(r0)
    mr 3, 4
    addi 4, 31, 0xc
    li 5, 0x358
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x2f
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_802CEC10
L_802CF3EC:
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802CF408:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    lwz 0, 0x238(3)
    cmpwi 0, 0x2
    .4byte 0x41820158 # beq .L_802CF580
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 31, 0x7
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_802CF4A8
L_802CF448:
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
L_802CF4A8:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802CF448
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lbz 0, 0x244(30)
    stb 0, 0x1b(1)
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802CF554
    stb 5, 0x28(1)
    li 31, -0x1
    lwz 3, 0xc8(30)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x25(1)
    lwz 3, 0xc8(30)
    bl fn_8023CA88
    stb 3, 0x24(1)
L_802CF554:
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    lis 3, lbl_8046DFB8@ha
    addi 4, 3, lbl_8046DFB8@l
    mr 7, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x8
    li 5, 0x27
    li 8, 0x0
    li 9, 0x1
    bl fn_801F02BC
L_802CF580:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802CF598:
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
    mr 28, 3
    li 29, -0x1
    lfs 31, 0x60(3)
    lfs 0, 0xc(3)
    lfs 29, 0x68(3)
    lfs 30, 0x64(3)
    fadds 31, 31, 0
    lfs 1, 0x10(3)
    fadds 29, 29, 0
    lfs 28, 0x6c(3)
    fadds 30, 30, 1
    lwz 31, 0x4(3)
    fadds 28, 28, 1
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_802CF63C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802CF640
L_802CF63C:
    addi 3, 3, 0xdc
L_802CF640:
    lfs 1, 0x0(3)
    lis 31, 0x424c
    lfs 0, 0x4(3)
    fneg 1, 1
    fneg 0, 0
    fadds 31, 31, 1
    fadds 30, 30, 0
    fadds 29, 29, 1
    fadds 28, 28, 0
L_802CF664:
    bl SpatialRegistry_GetBase
    mr 5, 29
    addi 4, 31, 0x5a32
    bl fn_801F78F4
    mr. 30, 3
    mr 29, 30
    .4byte 0x4080000C # bge .L_802CF688
    li 3, 0x0
    .4byte 0x48000130 # b .L_802CF7B4
L_802CF688:
    lwz 0, 0x198(28)
    cmpw 30, 0
    .4byte 0x4182FFD4 # beq .L_802CF664
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFC0 # beq .L_802CF664
    lfs 27, 0x60(3)
    lfs 0, 0xc(3)
    lfs 25, 0x68(3)
    lfs 26, 0x64(3)
    fadds 27, 27, 0
    lfs 1, 0x10(3)
    fadds 25, 25, 0
    lfs 24, 0x6c(3)
    fadds 26, 26, 1
    lwz 30, 0x4(3)
    fadds 24, 24, 1
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_802CF6E8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802CF6EC
L_802CF6E8:
    addi 3, 3, 0xdc
L_802CF6EC:
    lfs 1, 0x0(3)
    lfs 0, 0x4(3)
    fneg 1, 1
    fneg 0, 0
    fadds 27, 27, 1
    fadds 26, 26, 0
    fadds 25, 25, 1
    fcmpo cr0, 27, 31
    fadds 24, 24, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802CF71C
    fmr 27, 31
L_802CF71C:
    fcmpo cr0, 26, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802CF72C
    fmr 26, 30
L_802CF72C:
    fcmpo cr0, 25, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802CF73C
    fmr 25, 29
L_802CF73C:
    fcmpo cr0, 24, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802CF74C
    fmr 24, 28
L_802CF74C:
    fcmpo cr0, 25, 27
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802CF76C
    fcmpo cr0, 24, 26
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802CF76C
    li 0, 0x1
L_802CF76C:
    clrlwi. 0, 0, 24
    .4byte 0x4182FEF4 # beq .L_802CF664
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x2f
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x1a2
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x1
L_802CF7B4:
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

fn_802CF814:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x238(3)
    cmpwi 0, 0x2
    .4byte 0x41820230 # beq .L_802CFA64
    li 0, 0xff
    stb 0, 0x244(31)
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802CF888
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
    stb 3, 0x244(31)
    .4byte 0x48000220 # b .L_802CFAA4
L_802CF888:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200D4 # bne .L_802CF974
    lfs 1, 0x44(31)
    .4byte 0xC002DEC0 # lfs f0, lbl_80540E60@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 30, 0x114(31)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802CF8EC
    li 30, 0x0
L_802CF8EC:
    lfs 1, 0x14(31)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4180001C # blt .L_802CF914
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802CF92C
L_802CF914:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800017C # b .L_802CFAA4
L_802CF92C:
    lwz 5, 0xc8(31)
    mr 3, 31
    mr 4, 30
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802CF95C
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x4182014C # beq .L_802CFAA4
L_802CF95C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000134 # b .L_802CFAA4
L_802CF974:
    lbz 0, 0x245(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_802CF9A4
    lfs 2, 0x10(31)
    li 0, 0x1
    lfs 1, 0x14(31)
    .4byte 0xC002DEA8 # lfs f0, lbl_80540E48@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stb 0, 0x245(31)
L_802CF9A4:
    lfs 1, 0x40(31)
    .4byte 0xC002DEC4 # lfs f0, lbl_80540E64@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 30, 0x114(31)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802CF9EC
    li 30, 0x0
L_802CF9EC:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802CFA1C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800008C # b .L_802CFAA4
L_802CFA1C:
    lwz 5, 0xc8(31)
    mr 3, 31
    mr 4, 30
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802CFA4C
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_802CFAA4
L_802CFA4C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000044 # b .L_802CFAA4
L_802CFA64:
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_802CFAA4
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226AE0
    mr 30, 3
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x0
    bl fn_802D7310
    li 0, 0x0
    stb 0, 0x11c(31)
L_802CFAA4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CFABC:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022DEC8 # lfs f1, lbl_80540E68@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC002DECC # lfs f0, lbl_80540E6C@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0xff
    lwz 4, 0x90(31)
    clrlwi 4, 4, 28
    stw 4, 0x230(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 4, 12
    stw 4, 0x234(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 4, 8
    stw 4, 0x238(31)
    stb 3, 0x244(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x23c(31)
    stb 0, 0x245(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x4082005C # bne .L_802CFB94
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x3d1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DEB8 # lfs f1, lbl_80540E58@sda21(r0)
    li 5, 0x3d2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1e
    stw 0, 0x240(31)
L_802CFB94:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CFBA8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3A68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3A68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFBF8
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
L_802CFBF8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFC30
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
L_802CFC30:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFC68
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
L_802CFC68:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFCA0
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
L_802CFCA0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFCD8
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
L_802CFCD8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFD10
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
L_802CFD10:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFD48
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
L_802CFD48:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFD80
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
L_802CFD80:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CFDB8
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
L_802CFDB8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CFDCC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802CFE10
    lis 5, lbl_804A9328@ha
    li 4, 0x0
    addi 0, 5, lbl_804A9328@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802CFE10
    mr 3, 30
    bl dtor_80084580
L_802CFE10:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CFE2C:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    lbz 0, 0x26c(3)
    cmplwi 0, 0x1
    .4byte 0x408202A8 # bne .L_802D00F4
    li 0, -0x1
    addi 9, 1, 0x34
    stw 0, 0x44(1)
    li 10, 0x0
    stw 0, 0x48(1)
    .4byte 0x48000064 # b .L_802CFEC8
L_802CFE68:
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
L_802CFEC8:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802CFE68
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x51(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x44(1)
    .4byte 0xC842DED0 # lfd f2, lbl_80540E70@sda21(r0)
    stw 5, 0x48(1)
    .4byte 0xC062DED8 # lfs f3, lbl_80540E78@sda21(r0)
    stw 5, 0x4c(1)
    .4byte 0xC022DEDC # lfs f1, lbl_80540E7C@sda21(r0)
    stb 5, 0x50(1)
    stb 5, 0x52(1)
    stb 4, 0x53(1)
    stb 4, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 5, 0x59(1)
    stb 4, 0x5a(1)
    stw 3, 0x5c(1)
    stb 4, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stw 6, 0x64(1)
    stw 5, 0x68(1)
    stw 0, 0x6c(1)
    stb 6, 0x51(1)
    lfs 0, 0x270(31)
    fsub 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x70(1)
    lwz 0, 0x74(1)
    stb 0, 0x47(1)
    lfs 2, 0x10(31)
    lfs 0, 0xc(31)
    lwz 3, 0x264(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    addi 30, 3, 0x175
    stfs 2, 0x2c(1)
    stfs 0, 0x28(1)
    stfs 3, 0x30(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_802CFFE4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E040@ha
    addi 5, 3, lbl_8046E040@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022DEE0 # lfs f1, lbl_80540E80@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x34
    lwz 3, 0x20(4)
    addi 4, 1, 0x28
    bl fn_802F86CC
L_802CFFE4:
    lfs 0, 0x270(31)
    lis 3, lbl_8046DFD0@ha
    .4byte 0xC062DED8 # lfs f3, lbl_80540E78@sda21(r0)
    addi 3, 3, lbl_8046DFD0@l
    fctiwz 0, 0
    .4byte 0xC022DEDC # lfs f1, lbl_80540E7C@sda21(r0)
    stfd 0, 0x70(1)
    lwz 0, 0x74(1)
    stb 0, 0x47(1)
    lfs 2, 0x10(31)
    lfs 0, 0xc(31)
    fadds 2, 3, 2
    lwz 0, 0x264(31)
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    slwi 0, 0, 2
    stfs 2, 0x20(1)
    lwzx 3, 3, 0
    stfs 0, 0x1c(1)
    addi 30, 3, 0x175
    stfs 3, 0x24(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_802D0090
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E040@ha
    addi 5, 3, lbl_8046E040@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022DEE0 # lfs f1, lbl_80540E80@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x34
    lwz 3, 0x20(4)
    addi 4, 1, 0x1c
    bl fn_802F86CC
L_802D0090:
    .4byte 0xC062DED8 # lfs f3, lbl_80540E78@sda21(r0)
    li 7, 0x0
    lfs 2, 0x10(31)
    li 0, 0x80
    .4byte 0xC022DEDC # lfs f1, lbl_80540E7C@sda21(r0)
    addi 5, 1, 0x10
    lfs 0, 0xc(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    addi 6, 1, 0x8
    fadds 0, 1, 0
    stb 7, 0xc(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x14(1)
    .4byte 0xC022DEE4 # lfs f1, lbl_80540E84@sda21(r0)
    stfs 0, 0x10(1)
    stfs 3, 0x18(1)
    stb 7, 0xd(1)
    lwz 4, 0x4(31)
    stb 7, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_802D00F4:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802D010C:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8046DFD0@ha
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 30, 3
    addi 31, 4, lbl_8046DFD0@l
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x41820508 # beq .L_802D0638
    .4byte 0x40800574 # bge .L_802D06A8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802D0144
    .4byte 0x48000568 # b .L_802D06A8
L_802D0144:
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D0168
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182044C # beq .L_802D05B0
L_802D0168:
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_802D01BC
    li 0, 0x1
    li 5, 0xc
    stw 0, 0x230(30)
    li 0, 0x0
    li 3, 0x0
    li 4, 0x3
    stw 5, 0x268(30)
    li 5, 0xa
    stw 0, 0x264(30)
    bl fn_802DE764
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802D01BC
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_802D01BC:
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x40820248 # bne .L_802D0418
    li 3, 0x0
    li 4, 0x3
    li 5, 0x6
    bl fn_802DE764
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_802D020C
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D0204
    li 0, 0x1
    stw 0, 0x254(30)
    .4byte 0x4800000C # b .L_802D020C
L_802D0204:
    li 0, 0x0
    stw 0, 0x254(30)
L_802D020C:
    lwz 0, 0x24c(30)
    stw 0, 0x248(30)
    lwz 3, 0x240(30)
    lwz 0, 0x244(30)
    cmpw 3, 0
    .4byte 0x408001EC # bge .L_802D040C
    lwz 0, 0x254(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 4, 0x234(3)
    cmplwi 4, 0x13
    .4byte 0x418101AC # bgt .L_802D03E4
    lis 3, jumptable_804A937C@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804A937C@l
    lwzx 3, 3, 0
    mtctr 3
    bctr
    bl SpatialRegistry_GetBase
    lis 4, 0x4849
    lwz 5, 0x4(30)
    addi 4, 4, 0x4e4f
    addi 6, 30, 0x258
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x240(30)
    slwi 0, 0, 2
    add 4, 30, 0
    stw 3, 0x274(4)
    .4byte 0x4800015C # b .L_802D03E4
    slwi 0, 4, 2
    addi 3, 31, 0x10
    lwzx 29, 3, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x534c
    lwz 5, 0x4(30)
    mr 7, 29
    addi 6, 30, 0x258
    addi 4, 4, 0x5231
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x240(30)
    slwi 0, 0, 2
    add 4, 30, 0
    stw 3, 0x274(4)
    .4byte 0x48000118 # b .L_802D03E4
    slwi 0, 4, 2
    addi 3, 31, 0x10
    lwzx 29, 3, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(30)
    mr 7, 29
    addi 6, 30, 0x258
    addi 4, 4, 0x5059
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x240(30)
    slwi 0, 0, 2
    add 4, 30, 0
    stw 3, 0x274(4)
    .4byte 0x480000D4 # b .L_802D03E4
    slwi 0, 4, 2
    addi 3, 31, 0x10
    lwzx 29, 3, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    lwz 5, 0x4(30)
    mr 7, 29
    addi 6, 30, 0x258
    addi 4, 4, 0x5459
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x240(30)
    slwi 0, 0, 2
    add 4, 30, 0
    stw 3, 0x274(4)
    .4byte 0x48000090 # b .L_802D03E4
    addi 3, 31, 0x10
    lwzx 29, 3, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x484e
    lwz 5, 0x4(30)
    mr 7, 29
    addi 6, 30, 0x258
    addi 4, 4, 0x5259
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x240(30)
    slwi 0, 0, 2
    add 4, 30, 0
    stw 3, 0x274(4)
    .4byte 0x48000050 # b .L_802D03E4
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    addi 4, 4, 0x5459
    bl fn_801F7A08
    cmpwi 3, 0x0
    .4byte 0x40800038 # bge .L_802D03E4
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    lwz 5, 0x4(30)
    addi 4, 4, 0x5459
    addi 6, 30, 0x258
    li 7, 0x14
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x240(30)
    slwi 0, 0, 2
    add 4, 30, 0
    stw 3, 0x274(4)
L_802D03E4:
    lwz 3, 0x240(30)
    addi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 3, 0x240(30)
    lwz 0, 0x244(30)
    cmpw 3, 0
    .4byte 0x418001D0 # blt .L_802D05CC
    li 0, 0x2
    stw 0, 0x230(30)
    .4byte 0x480001C4 # b .L_802D05CC
L_802D040C:
    li 0, 0x2
    stw 0, 0x230(30)
    .4byte 0x480001B8 # b .L_802D05CC
L_802D0418:
    cmpwi 0, 0x1d
    .4byte 0x408201B0 # bne .L_802D05CC
    li 28, -0x1
    li 3, 0x64
    bl fn_801CD664
    cmpwi 3, 0xa
    .4byte 0x40800010 # bge .L_802D0440
    li 0, 0x2
    stw 0, 0x254(30)
    .4byte 0x48000020 # b .L_802D045C
L_802D0440:
    cmpwi 3, 0x28
    .4byte 0x40800010 # bge .L_802D0454
    li 0, 0x1
    stw 0, 0x254(30)
    .4byte 0x4800000C # b .L_802D045C
L_802D0454:
    li 0, 0x0
    stw 0, 0x254(30)
L_802D045C:
    lwz 0, 0x254(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 0, 0x234(3)
    cmpwi 0, 0x10
    .4byte 0x40820020 # bne .L_802D0490
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    addi 4, 4, 0x5459
    bl fn_801F7A08
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_802D0490
    li 28, 0x1
L_802D0490:
    lwz 0, 0x254(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x234(3)
    cmpwi 3, 0xa
    .4byte 0x41820028 # beq .L_802D04CC
    subi 0, 3, 0xb
    cmplwi 0, 0x4
    .4byte 0x4081001C # ble .L_802D04CC
    cmpwi 3, 0x11
    .4byte 0x41820014 # beq .L_802D04CC
    cmpwi 3, 0x13
    .4byte 0x4182000C # beq .L_802D04CC
    cmpwi 3, 0x10
    .4byte 0x4082000C # bne .L_802D04D4
L_802D04CC:
    cmpwi 28, 0x0
    .4byte 0x418000FC # blt .L_802D05CC
L_802D04D4:
    lfs 2, 0x25c(30)
    addi 4, 1, 0x20
    .4byte 0xC022DEE8 # lfs f1, lbl_80540E88@sda21(r0)
    li 5, 0x1d3
    lfs 3, 0x260(30)
    li 6, 0x0
    lfs 0, 0x258(30)
    fsubs 2, 2, 1
    .4byte 0xC022DEE0 # lfs f1, lbl_80540E80@sda21(r0)
    li 7, 0x0
    stfs 0, 0x20(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x24(1)
    li 10, 0x1
    stfs 3, 0x28(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lfs 2, 0x25c(30)
    addi 4, 1, 0x14
    .4byte 0xC022DEE8 # lfs f1, lbl_80540E88@sda21(r0)
    li 5, 0x1d4
    lfs 3, 0x260(30)
    li 6, 0x0
    lfs 0, 0x258(30)
    fsubs 2, 2, 1
    .4byte 0xC022DEE0 # lfs f1, lbl_80540E80@sda21(r0)
    li 7, -0x1
    stfs 0, 0x14(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x18(1)
    li 10, 0x1
    stfs 3, 0x1c(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lfs 2, 0x25c(30)
    addi 4, 1, 0x8
    .4byte 0xC022DEE8 # lfs f1, lbl_80540E88@sda21(r0)
    li 5, 0x1d5
    lfs 3, 0x260(30)
    li 6, 0x0
    lfs 0, 0x258(30)
    fsubs 2, 2, 1
    .4byte 0xC022DEE0 # lfs f1, lbl_80540E80@sda21(r0)
    li 7, 0x0
    stfs 0, 0x8(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0xc(1)
    li 10, 0x1
    stfs 3, 0x10(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    .4byte 0x48000020 # b .L_802D05CC
L_802D05B0:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_802D05CC
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x230(30)
    stw 0, 0x264(30)
L_802D05CC:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802D0620
    lwz 3, 0x268(30)
    cmpwi 3, 0x0
    .4byte 0x40820038 # bne .L_802D0618
    lwz 0, 0x264(30)
    addi 4, 31, 0x60
    addi 3, 31, 0x0
    .4byte 0xC002DEEC # lfs f0, lbl_80540E8C@sda21(r0)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x268(30)
    lwz 0, 0x264(30)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(30)
    stfs 0, 0x270(30)
    .4byte 0x4800000C # b .L_802D0620
L_802D0618:
    subi 0, 3, 0x1
    stw 0, 0x268(30)
L_802D0620:
    .4byte 0xC022DEF0 # lfs f1, lbl_80540E90@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC042DEF4 # lfs f2, lbl_80540E94@sda21(r0)
    .4byte 0xC062DEF8 # lfs f3, lbl_80540E98@sda21(r0)
    bl fn_801F71A4
    .4byte 0x48000074 # b .L_802D06A8
L_802D0638:
    mr 29, 30
    li 27, 0x0
    li 31, -0x1
    .4byte 0x4800003C # b .L_802D0680
L_802D0648:
    lwz 28, 0x274(29)
    cmpwi 28, 0x0
    .4byte 0x41800028 # blt .L_802D0678
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_802D0678
    stw 31, 0x274(29)
    lwz 3, 0x674(30)
    addi 0, 3, 0x1
    stw 0, 0x674(30)
L_802D0678:
    addi 29, 29, 0x4
    addi 27, 27, 0x1
L_802D0680:
    lwz 4, 0x244(30)
    addi 0, 4, 0x1
    cmpw 27, 0
    .4byte 0x4180FFBC # blt .L_802D0648
    lwz 3, 0x674(30)
    subi 0, 4, 0x1
    cmpw 3, 0
    .4byte 0x4180000C # blt .L_802D06A8
    mr 3, 30
    bl fn_801F35AC
L_802D06A8:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802D06BC:
    li 0, 0x8
    mr 5, 3
    li 4, -0x1
    mtctr 0
L_802D06CC:
    stw 4, 0x274(5)
    stw 4, 0x278(5)
    stw 4, 0x27c(5)
    stw 4, 0x280(5)
    stw 4, 0x284(5)
    stw 4, 0x288(5)
    stw 4, 0x28c(5)
    stw 4, 0x290(5)
    stw 4, 0x294(5)
    stw 4, 0x298(5)
    stw 4, 0x29c(5)
    stw 4, 0x2a0(5)
    stw 4, 0x2a4(5)
    stw 4, 0x2a8(5)
    stw 4, 0x2ac(5)
    stw 4, 0x2b0(5)
    stw 4, 0x2b4(5)
    stw 4, 0x2b8(5)
    stw 4, 0x2bc(5)
    stw 4, 0x2c0(5)
    stw 4, 0x2c4(5)
    stw 4, 0x2c8(5)
    stw 4, 0x2cc(5)
    stw 4, 0x2d0(5)
    stw 4, 0x2d4(5)
    stw 4, 0x2d8(5)
    stw 4, 0x2dc(5)
    stw 4, 0x2e0(5)
    stw 4, 0x2e4(5)
    stw 4, 0x2e8(5)
    stw 4, 0x2ec(5)
    stw 4, 0x2f0(5)
    addi 5, 5, 0x80
    .4byte 0x4200FF7C # bdnz .L_802D06CC
    .4byte 0xC022DEFC # lfs f1, lbl_80540E9C@sda21(r0)
    .4byte 0xC002DF00 # lfs f0, lbl_80540EA0@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 5
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 10
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 15
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 20
    mulli 0, 0, 0x1e
    stw 0, 0x24c(3)
    lwz 0, 0x24c(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802D07B4
    li 0, 0xa
    stw 0, 0x24c(3)
L_802D07B4:
    li 0, 0x1
    stw 0, 0x248(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    stw 0, 0x244(3)
    lwz 0, 0x244(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802D07DC
    li 0, 0x100
    stw 0, 0x244(3)
L_802D07DC:
    li 6, 0x0
    li 4, 0x3
    stw 6, 0x240(3)
    li 0, 0x1
    lwz 5, 0x90(3)
    srwi 5, 5, 27
    stw 5, 0x250(3)
    stw 6, 0x230(3)
    stw 4, 0x264(3)
    stw 6, 0x268(3)
    stw 6, 0x674(3)
    stb 0, 0x26c(3)
    lwz 4, 0x234(3)
    cmpwi 4, 0xa
    .4byte 0x41820030 # beq .L_802D0844
    cmpwi 4, 0x11
    .4byte 0x41820028 # beq .L_802D0844
    cmpwi 4, 0x13
    .4byte 0x41820020 # beq .L_802D0844
    subi 0, 4, 0xb
    cmplwi 0, 0x2
    .4byte 0x40810014 # ble .L_802D0844
    cmpwi 4, 0xf
    .4byte 0x4182000C # beq .L_802D0844
    cmpwi 4, 0xe
    .4byte 0x40820008 # bne .L_802D0848
L_802D0844:
    stb 6, 0x26c(3)
L_802D0848:
    lwz 4, 0x238(3)
    cmpwi 4, 0xa
    .4byte 0x41820030 # beq .L_802D0880
    cmpwi 4, 0x11
    .4byte 0x41820028 # beq .L_802D0880
    cmpwi 4, 0x13
    .4byte 0x41820020 # beq .L_802D0880
    subi 0, 4, 0xb
    cmplwi 0, 0x2
    .4byte 0x40810014 # ble .L_802D0880
    cmpwi 4, 0xf
    .4byte 0x4182000C # beq .L_802D0880
    cmpwi 4, 0xe
    .4byte 0x40820008 # bne .L_802D0884
L_802D0880:
    stb 6, 0x26c(3)
L_802D0884:
    addi 4, 3, 0x8
    lwz 4, 0x234(4)
    cmpwi 4, 0xa
    .4byte 0x41820030 # beq .L_802D08C0
    cmpwi 4, 0x11
    .4byte 0x41820028 # beq .L_802D08C0
    cmpwi 4, 0x13
    .4byte 0x41820020 # beq .L_802D08C0
    subi 0, 4, 0xb
    cmplwi 0, 0x2
    .4byte 0x40810014 # ble .L_802D08C0
    cmpwi 4, 0xf
    .4byte 0x4182000C # beq .L_802D08C0
    cmpwi 4, 0xe
    .4byte 0x40820008 # bne .L_802D08C4
L_802D08C0:
    stb 6, 0x26c(3)
L_802D08C4:
    .4byte 0xC002DEEC # lfs f0, lbl_80540E8C@sda21(r0)
    li 0, 0x0
    .4byte 0xC042DEDC # lfs f2, lbl_80540E7C@sda21(r0)
    stfs 0, 0x270(3)
    .4byte 0xC022DF04 # lfs f1, lbl_80540EA4@sda21(r0)
    stw 0, 0x254(3)
    lfs 0, 0xc(3)
    fadds 0, 2, 0
    stfs 0, 0x258(3)
    lfs 0, 0x10(3)
    fadds 0, 1, 0
    stfs 0, 0x25c(3)
    lfs 0, 0x14(3)
    stfs 0, 0x260(3)
    blr

fn_802D0900:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3B68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3B68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D0950
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
L_802D0950:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D0988
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
L_802D0988:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D09C0
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
L_802D09C0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D09F8
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
L_802D09F8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D0A30
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
L_802D0A30:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D0A68
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
L_802D0A68:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D0AA0
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
L_802D0AA0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D0AD8
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
L_802D0AD8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D0B10
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
L_802D0B10:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D0B24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802D0B68
    lis 5, lbl_804A93D0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A93D0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802D0B68
    mr 3, 30
    bl dtor_80084580
L_802D0B68:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D0B84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D0BB0:
    stwu 1, -0x10(1)
    mflr 0
    addi 6, 3, 0x230
    stw 0, 0x14(1)
    bl fn_801F132C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D0BD4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002DF08 # lfs f0, lbl_80540EA8@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    psq_l 2, 0xc(30), 0, 0
    lfs 1, 0x14(3)
    stfs 1, 0x10(1)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 31, 0x4(3)
    cmpwi 31, 0x8
    .4byte 0x41800028 # blt .L_802D0C34
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 31
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802D0C34:
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x4182001C # beq .L_802D0C64
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x40820044 # bne .L_802D0CA4
L_802D0C64:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000168 # b .L_802D0E08
L_802D0CA4:
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xe
    .4byte 0x408200EC # bne .L_802D0DA4
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802D0D30
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000DC # b .L_802D0E08
L_802D0D30:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x418200D0 # beq .L_802D0E08
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000068 # b .L_802D0E08
L_802D0DA4:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    li 5, 0x8c
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    li 5, 0x8d
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
L_802D0E08:
    li 0, 0x0
    stb 0, 0x11c(30)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802D0E28:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    li 31, 0x7
    stw 30, 0x48(1)
    mr 30, 3
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_802D0EBC
L_802D0E5C:
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
L_802D0EBC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802D0E5C
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lbz 0, 0x234(30)
    stb 0, 0x1b(1)
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802D0F68
    stb 5, 0x28(1)
    li 31, -0x1
    lwz 3, 0xc8(30)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x25(1)
    lwz 3, 0xc8(30)
    bl fn_8023CA88
    stb 3, 0x24(1)
L_802D0F68:
    .4byte 0xC022DF0C # lfs f1, lbl_80540EAC@sda21(r0)
    lis 3, lbl_8046E058@ha
    addi 4, 3, lbl_8046E058@l
    mr 7, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x8
    li 5, 0x29
    li 8, 0x0
    li 9, 0x1
    bl fn_801F02BC
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802D0FAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0xff
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    stb 0, 0x234(3)
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802D1014
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
    stb 3, 0x234(31)
    .4byte 0x48000248 # b .L_802D1258
L_802D1014:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820140 # bne .L_802D116C
    lfs 1, 0x44(31)
    .4byte 0xC002DF10 # lfs f0, lbl_80540EB0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 30, 0x114(31)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802D1078
    li 30, 0x0
L_802D1078:
    lfs 1, 0x14(31)
    .4byte 0xC002DF08 # lfs f0, lbl_80540EA8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4180001C # blt .L_802D10A0
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_802D1124
L_802D10A0:
    lfs 1, 0x14(31)
    .4byte 0xC002DF08 # lfs f0, lbl_80540EA8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800060 # bge .L_802D110C
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x90
    .4byte 0x4082001C # bne .L_802D10E0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x91
    bl fn_802A381C
    .4byte 0x48000030 # b .L_802D110C
L_802D10E0:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x91
    .4byte 0x40820018 # bne .L_802D110C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x92
    bl fn_802A381C
L_802D110C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000138 # b .L_802D1258
L_802D1124:
    lwz 5, 0xc8(31)
    mr 3, 31
    mr 4, 30
    li 6, 0x4
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802D1154
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820108 # beq .L_802D1258
L_802D1154:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000F0 # b .L_802D1258
L_802D116C:
    lbz 0, 0x235(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_802D119C
    lfs 2, 0x10(31)
    li 0, 0x1
    lfs 1, 0x14(31)
    .4byte 0xC002DF08 # lfs f0, lbl_80540EA8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stb 0, 0x235(31)
L_802D119C:
    lfs 1, 0x40(31)
    .4byte 0xC002DF14 # lfs f0, lbl_80540EB4@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 30, 0x114(31)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802D11E4
    li 30, 0x0
L_802D11E4:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802D1214
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000048 # b .L_802D1258
L_802D1214:
    lwz 5, 0xc8(31)
    mr 3, 31
    mr 4, 30
    li 6, 0x4
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802D1244
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802D1258
L_802D1244:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802D1258:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D1270:
    .4byte 0xC002DF18 # lfs f0, lbl_80540EB8@sda21(r0)
    li 4, 0x0
    .4byte 0xC042DF1C # lfs f2, lbl_80540EBC@sda21(r0)
    li 0, 0xff
    stfs 0, 0x60(3)
    .4byte 0xC022DF20 # lfs f1, lbl_80540EC0@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002DF24 # lfs f0, lbl_80540EC4@sda21(r0)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 4, 0x230(3)
    stb 0, 0x234(3)
    stb 4, 0x235(3)
    blr

fn_802D12B8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3C68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3C68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D1308
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
L_802D1308:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D1340
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
L_802D1340:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D1378
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
L_802D1378:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D13B0
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
L_802D13B0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D13E8
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
L_802D13E8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D1420
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
L_802D1420:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D1458
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
L_802D1458:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D1490
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
L_802D1490:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D14C8
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
L_802D14C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D14DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D1508:
    stwu 1, -0x10(1)
    mflr 0
    addi 6, 3, 0x248
    stw 0, 0x14(1)
    bl fn_801F132C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D152C:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 26, 0x48(1)
    mr 31, 3
    lis 5, lbl_8046E070@ha
    addi 4, 31, 0xc
    psq_l 1, 0x0(4), 0, 0
    addi 30, 5, lbl_8046E070@l
    lfs 0, 0x14(3)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x40820518 # bne .L_802D1A8C
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    stfs 0, 0x28(1)
    lwz 28, 0x4(31)
    cmpwi 28, 0x8
    .4byte 0x41800028 # blt .L_802D15B0
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 28
    addi 4, 4, 0x5249
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802D15B0:
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x41810184 # bgt .L_802D173C
    li 3, 0x64
    bl fn_801CD664
    mr 30, 3
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x5
    .4byte 0x40820014 # bne .L_802D15E8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820024 # beq .L_802D1608
L_802D15E8:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x3
    .4byte 0x408200AC # bne .L_802D16A0
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082009C # bne .L_802D16A0
L_802D1608:
    cmpwi 30, 0x19
    .4byte 0x4080000C # bge .L_802D1618
    li 26, 0x0
    .4byte 0x48000028 # b .L_802D163C
L_802D1618:
    cmpwi 30, 0x32
    .4byte 0x4080000C # bge .L_802D1628
    li 26, 0x1
    .4byte 0x48000018 # b .L_802D163C
L_802D1628:
    cmpwi 30, 0x4b
    .4byte 0x4080000C # bge .L_802D1638
    li 26, 0x2
    .4byte 0x48000008 # b .L_802D163C
L_802D1638:
    li 26, 0x1
L_802D163C:
    lfs 1, 0x14(31)
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_802D1678
    bl SpatialRegistry_GetBase
    addis 7, 26, 0x26
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x20
    li 8, -0x1
    li 9, -0x1
    addi 7, 7, 0xa00
    bl fn_801F9484
    .4byte 0x48000240 # b .L_802D18B4
L_802D1678:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x20
    addis 7, 26, 0x26
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000218 # b .L_802D18B4
L_802D16A0:
    cmpwi 30, 0x19
    .4byte 0x41810210 # bgt .L_802D18B4
    clrlwi. 0, 30, 31
    .4byte 0x41820068 # beq .L_802D1714
    lfs 1, 0x14(31)
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_802D16EC
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x26
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x20
    addi 7, 7, 0xa00
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480001CC # b .L_802D18B4
L_802D16EC:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x20
    lis 7, 0x26
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480001A4 # b .L_802D18B4
L_802D1714:
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800017C # b .L_802D18B4
L_802D173C:
    cmpwi 0, 0x2
    .4byte 0x4082002C # bne .L_802D176C
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800014C # b .L_802D18B4
L_802D176C:
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_802D179C
    bl SpatialRegistry_GetBase
    lis 4, 0x4d54
    lwz 5, 0x4(31)
    addi 4, 4, 0x424f
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800011C # b .L_802D18B4
L_802D179C:
    cmpwi 0, 0x4
    .4byte 0x408200D8 # bne .L_802D1878
    lfs 30, 0x24(1)
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    stw 3, 0x3c(1)
    .4byte 0xC842DF38 # lfd f2, lbl_80540ED8@sda21(r0)
    stw 0, 0x38(1)
    lfs 3, 0x20(1)
    lfd 1, 0x38(1)
    stfs 30, 0x18(1)
    fsubs 1, 1, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 1
    stfs 0, 0x14(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x14
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lfs 30, 0x24(1)
    li 3, 0xd
    bl fn_801CD664
    subi 3, 3, 0x6
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    stw 3, 0x44(1)
    .4byte 0xC842DF38 # lfd f2, lbl_80540ED8@sda21(r0)
    stw 0, 0x40(1)
    lfs 3, 0x20(1)
    lfd 1, 0x40(1)
    stfs 30, 0xc(1)
    fsubs 1, 1, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 1
    stfs 0, 0x8(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000040 # b .L_802D18B4
L_802D1878:
    cmpwi 0, 0x5
    .4byte 0x40820038 # bne .L_802D18B4
    li 3, 0x64
    bl fn_801CD664
    cmpwi 3, 0x3c
    .4byte 0x40800028 # bge .L_802D18B4
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802D18B4:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x4182001C # beq .L_802D18E4
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x40820044 # bne .L_802D1924
L_802D18E4:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000468 # b .L_802D1D88
L_802D1924:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xe
    .4byte 0x408200EC # bne .L_802D1A24
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802D19B0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480003DC # b .L_802D1D88
L_802D19B0:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x418203D0 # beq .L_802D1D88
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000368 # b .L_802D1D88
L_802D1A24:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0xab
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
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
    .4byte 0x48000300 # b .L_802D1D88
L_802D1A8C:
    cmpwi 0, 0x1
    .4byte 0x4082023C # bne .L_802D1CCC
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0xb
    bl fn_801F0E34
    lwz 28, 0x4(31)
    cmpwi 28, 0x8
    .4byte 0x418000E8 # blt .L_802D1B94
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 28
    addi 4, 4, 0x5249
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0xC3E2DF28 # lfs f31, lbl_80540EC8@sda21(r0)
    addi 29, 30, 0x0
    .4byte 0xC3C2DF30 # lfs f30, lbl_80540ED0@sda21(r0)
    addi 28, 30, 0x14
    li 26, 0x0
    lis 30, 0x424c
L_802D1AEC:
    lfs 2, 0xc(31)
    addi 3, 1, 0x20
    lfs 1, 0x0(29)
    lfs 0, 0x0(28)
    fadds 1, 2, 1
    stfs 1, 0x20(1)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 31, 0x28(1)
    stfs 0, 0x24(1)
    lwz 4, 0x4(31)
    bl fn_80226AE0
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 27, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(5)
    mr 5, 27
    bl fn_802F9908
    lwz 4, 0x4(31)
    mr 3, 27
    addi 5, 1, 0x2c
    bl fn_80226CA8
    lfs 1, 0x2c(1)
    lfs 0, 0x30(1)
    fadds 1, 1, 30
    fadds 0, 0, 30
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x5a45
    addi 6, 1, 0x2c
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x5
    addi 29, 29, 0x4
    .4byte 0x4180FF60 # blt .L_802D1AEC
    .4byte 0x480001F8 # b .L_802D1D88
L_802D1B94:
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    mr 3, 28
    addi 4, 31, 0xc
    li 5, 0x1a3
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1a4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1a4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC3C2DF28 # lfs f30, lbl_80540EC8@sda21(r0)
    addi 28, 30, 0x28
    .4byte 0xC3E2DF30 # lfs f31, lbl_80540ED0@sda21(r0)
    addi 29, 30, 0x5c
    li 27, 0x0
    lis 30, 0x424c
L_802D1C24:
    lfs 2, 0xc(31)
    addi 3, 1, 0x20
    lfs 1, 0x0(28)
    lfs 0, 0x0(29)
    fadds 1, 2, 1
    stfs 1, 0x20(1)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 30, 0x28(1)
    stfs 0, 0x24(1)
    lwz 4, 0x4(31)
    bl fn_80226AE0
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 26, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(5)
    mr 5, 26
    bl fn_802F9908
    lwz 4, 0x4(31)
    mr 3, 26
    addi 5, 1, 0x2c
    bl fn_80226CA8
    lfs 1, 0x2c(1)
    lfs 0, 0x30(1)
    fadds 1, 1, 31
    fadds 0, 0, 31
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x5a45
    addi 6, 1, 0x2c
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0xd
    addi 28, 28, 0x4
    .4byte 0x4180FF60 # blt .L_802D1C24
    .4byte 0x480000C0 # b .L_802D1D88
L_802D1CCC:
    lwz 28, 0x4(31)
    cmpwi 28, 0x8
    .4byte 0x4180002C # blt .L_802D1D00
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 28
    addi 4, 4, 0x5249
    addi 6, 1, 0x20
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000078 # b .L_802D1D74
L_802D1D00:
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    mr 3, 28
    li 5, 0x4ef
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x4f0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x4f1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802D1D74:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0xb
    li 5, 0x0
    bl fn_801F0E34
L_802D1D88:
    li 0, 0x0
    stb 0, 0x11c(31)
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 26, 0x48(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802D1DB4:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    li 31, 0x7
    stw 30, 0x58(1)
    mr 30, 3
    stw 29, 0x54(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_802D1E4C
L_802D1DEC:
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
L_802D1E4C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802D1DEC
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
    lbz 0, 0x254(30)
    stb 0, 0x23(1)
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802D1EF8
    stb 5, 0x30(1)
    li 31, -0x1
    lwz 3, 0xc8(30)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x2d(1)
    lwz 3, 0xc8(30)
    bl fn_8023CA88
    stb 3, 0x2c(1)
L_802D1EF8:
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802D1F50
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    lis 3, lbl_8046E100@ha
    lwz 5, 0x234(30)
    addi 4, 3, lbl_8046E100@l
    lwz 0, 0x238(30)
    fmr 2, 1
    mr 3, 30
    mr 7, 31
    add 5, 5, 0
    addi 6, 1, 0x10
    li 8, 0x0
    li 9, 0x1
    addi 5, 5, 0x1bb
    bl fn_801F02BC
    .4byte 0x4800003C # b .L_802D1F88
L_802D1F50:
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    lis 3, lbl_8046E100@ha
    lwz 5, 0x234(30)
    addi 4, 3, lbl_8046E100@l
    lwz 0, 0x238(30)
    fmr 2, 1
    mr 3, 30
    mr 7, 31
    add 5, 5, 0
    addi 6, 1, 0x10
    li 8, 0x0
    li 9, 0x1
    addi 5, 5, 0x21
    bl fn_801F02BC
L_802D1F88:
    lwz 0, 0x234(30)
    cmpwi 0, 0x1
    .4byte 0x40820040 # bne .L_802D1FD0
    li 7, 0x0
    li 0, 0x80
    stb 7, 0xc(1)
    addi 5, 30, 0xc
    lwz 4, 0x4(30)
    addi 6, 1, 0x8
    stb 7, 0xd(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0xe(1)
    .4byte 0xC022DF40 # lfs f1, lbl_80540EE0@sda21(r0)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_802D1FD0:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802D1FEC:
    stwu 1, -0x1020(1)
    mflr 0
    stw 0, 0x1024(1)
    li 0, 0xff
    stw 31, 0x101c(1)
    mr 31, 3
    stw 30, 0x1018(1)
    stw 29, 0x1014(1)
    stb 0, 0x254(3)
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x418200B0 # beq .L_802D20C8
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
    stb 3, 0x254(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820404 # bne .L_802D2460
    lwz 3, 0x250(31)
    subi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_802D20A0
    li 0, 0x4
    stw 0, 0x250(31)
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_802D20A0
    li 0, 0x0
    stw 0, 0x23c(31)
L_802D20A0:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800014 # blt .L_802D20BC
    lwz 3, 0x23c(31)
    addi 0, 3, 0x2
    stw 0, 0x238(31)
    .4byte 0x480003A8 # b .L_802D2460
L_802D20BC:
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x4800039C # b .L_802D2460
L_802D20C8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 29, 0x114(31)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802D20E0
    li 29, 0x0
L_802D20E0:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082029C # bne .L_802D2394
    lfs 2, 0x44(31)
    .4byte 0xC022DF44 # lfs f1, lbl_80540EE4@sda21(r0)
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    fadds 1, 2, 1
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
    .4byte 0x4180001C # blt .L_802D2154
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x418201FC # beq .L_802D234C
L_802D2154:
    lfs 1, 0x14(31)
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800078 # bge .L_802D21D8
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x90
    .4byte 0x4082001C # bne .L_802D2194
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x91
    bl fn_802A381C
    .4byte 0x48000048 # b .L_802D21D8
L_802D2194:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x91
    .4byte 0x4182001C # beq .L_802D21C4
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x22e
    .4byte 0x40820018 # bne .L_802D21D8
L_802D21C4:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x92
    bl fn_802A381C
L_802D21D8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x40820154 # bne .L_802D2334
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a32
    addi 6, 1, 0xc
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0xc
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810128 # ble .L_802D2334
L_802D2210:
    lwz 5, 0x0(4)
    cmplwi 5, 0x0
    .4byte 0x41820114 # beq .L_802D232C
    .4byte 0x41820110 # beq .L_802D232C
    lfs 1, 0x10(5)
    lfs 0, 0x10(31)
    lfs 2, 0xc(5)
    fsubs 3, 1, 0
    lfs 1, 0xc(31)
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_802D2294
    frsqrte 1, 4
    .4byte 0xC862DF48 # lfd f3, lbl_80540EE8@sda21(r0)
    .4byte 0xC842DF50 # lfd f2, lbl_80540EF0@sda21(r0)
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
    .4byte 0x48000088 # b .L_802D2318
L_802D2294:
    .4byte 0xC802DF58 # lfd f0, lbl_80540EF8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_802D22AC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_802D2318
L_802D22AC:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 6, 0x8(1)
    rlwinm 3, 6, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_802D22D4
    .4byte 0x40800040 # bge .L_802D2304
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_802D22EC
    .4byte 0x48000034 # b .L_802D2304
L_802D22D4:
    clrlwi. 0, 6, 9
    .4byte 0x4182000C # beq .L_802D22E4
    li 0, 0x1
    .4byte 0x48000028 # b .L_802D2308
L_802D22E4:
    li 0, 0x2
    .4byte 0x48000020 # b .L_802D2308
L_802D22EC:
    clrlwi. 0, 6, 9
    .4byte 0x4182000C # beq .L_802D22FC
    li 0, 0x5
    .4byte 0x48000010 # b .L_802D2308
L_802D22FC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_802D2308
L_802D2304:
    li 0, 0x4
L_802D2308:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802D2318
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_802D2318:
    .4byte 0xC002DF60 # lfs f0, lbl_80540F00@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_802D232C
    li 0, 0x2
    sth 0, 0x94(5)
L_802D232C:
    addi 4, 4, 0x4
    .4byte 0x4200FEE0 # bdnz .L_802D2210
L_802D2334:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000108 # b .L_802D2450
L_802D234C:
    lwz 5, 0xc8(31)
    mr 3, 31
    mr 4, 29
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802D237C
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x418200D8 # beq .L_802D2450
L_802D237C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000C0 # b .L_802D2450
L_802D2394:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_802D23C4
    lfs 2, 0x10(31)
    li 0, 0x1
    lfs 1, 0x14(31)
    .4byte 0xC002DF28 # lfs f0, lbl_80540EC8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stw 0, 0x24c(31)
L_802D23C4:
    lfs 1, 0x40(31)
    mr 3, 31
    .4byte 0xC002DF64 # lfs f0, lbl_80540F04@sda21(r0)
    mr 4, 29
    li 6, 0x1
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 5, 0xc8(31)
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_802D243C
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_802D243C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802D2450
L_802D243C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802D2450:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802D2460:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820274 # bne .L_802D26DC
    lfs 3, 0xc(31)
    lfs 2, 0x18(31)
    fcmpu cr0, 3, 2
    .4byte 0x40820014 # bne .L_802D248C
    lfs 1, 0x10(31)
    lfs 0, 0x1c(31)
    fcmpu cr0, 1, 0
    .4byte 0x418201C4 # beq .L_802D264C
L_802D248C:
    fcmpu cr0, 3, 2
    .4byte 0x418200DC # beq .L_802D256C
    fcmpo cr0, 3, 2
    .4byte 0x4080006C # bge .L_802D2504
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x4182020C # beq .L_802D26B0
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D24CC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(31)
L_802D24CC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1a7
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    li 0, 0x1
    stw 0, 0x244(31)
    .4byte 0x480001B0 # b .L_802D26B0
L_802D2504:
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x418201A4 # beq .L_802D26B0
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D2534
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(31)
L_802D2534:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1a9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    li 0, 0x2
    stw 0, 0x244(31)
    .4byte 0x48000148 # b .L_802D26B0
L_802D256C:
    lfs 1, 0x10(31)
    lfs 0, 0x1c(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080006C # bge .L_802D25E4
    lwz 0, 0x244(31)
    cmpwi 0, 0x3
    .4byte 0x4182012C # beq .L_802D26B0
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D25AC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(31)
L_802D25AC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    li 0, 0x3
    stw 0, 0x244(31)
    .4byte 0x480000D0 # b .L_802D26B0
L_802D25E4:
    lwz 0, 0x244(31)
    cmpwi 0, 0x4
    .4byte 0x418200C4 # beq .L_802D26B0
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D2614
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(31)
L_802D2614:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1a6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    li 0, 0x4
    stw 0, 0x244(31)
    .4byte 0x48000068 # b .L_802D26B0
L_802D264C:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4182005C # beq .L_802D26B0
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D267C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(31)
L_802D267C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1a8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    li 0, 0x0
    stw 0, 0x244(31)
L_802D26B0:
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_802D26DC
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lbz 0, 0x254(31)
    lwz 3, 0x230(31)
    stb 0, 0xbb(3)
L_802D26DC:
    lwz 0, 0x1024(1)
    lwz 31, 0x101c(1)
    lwz 30, 0x1018(1)
    lwz 29, 0x1014(1)
    mtlr 0
    addi 1, 1, 0x1020
    blr

fn_802D26F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820078 # beq .L_802D278C
    lis 4, lbl_804A9428@ha
    addi 3, 30, 0xc
    addi 0, 4, lbl_804A9428@l
    stw 0, 0x0(30)
    lwz 4, 0x4(30)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x41820028 # beq .L_802D2760
    lfs 0, 0xc(30)
    lis 3, lbl_804C0EA0@ha
    stfsu 0, lbl_804C0EA0@l(3)
    lfs 0, 0x10(30)
    stfs 0, 0x4(3)
    lfs 0, 0x14(30)
    stfs 0, 0x8(3)
    lwz 0, 0x4(30)
    .4byte 0x900D8FA8 # stw r0, lbl_8053AB68@sda21(r0)
L_802D2760:
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802D2770
    bl fn_801EE434
L_802D2770:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802D278C
    mr 3, 30
    bl dtor_80084580
L_802D278C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D27A8:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC062DF68 # lfs f3, lbl_80540F08@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0xff
    .4byte 0xC042DF30 # lfs f2, lbl_80540ED0@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x0
    .4byte 0xC022DF6C # lfs f1, lbl_80540F0C@sda21(r0)
    lwz 4, 0x90(31)
    .4byte 0xC002DF70 # lfs f0, lbl_80540F10@sda21(r0)
    clrlwi 4, 4, 25
    stw 4, 0x240(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 5, 20
    stw 4, 0x234(31)
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stb 0, 0x254(31)
    sth 3, 0x94(31)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 3, 0x230(31)
    stw 3, 0x244(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_802D2864
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF2C # lfs f1, lbl_80540ECC@sda21(r0)
    li 5, 0x1a8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
L_802D2864:
    li 0, 0x4
    stw 0, 0x250(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D2880:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3D68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3D68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D28D0
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
L_802D28D0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2908
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
L_802D2908:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2940
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
L_802D2940:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2978
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
L_802D2978:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D29B0
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
L_802D29B0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D29E8
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
L_802D29E8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2A20
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
L_802D2A20:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2A58
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
L_802D2A58:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2A90
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
L_802D2A90:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D2AA4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802D2AE8
    lis 5, lbl_804A9480@ha
    li 4, 0x0
    addi 0, 5, lbl_804A9480@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802D2AE8
    mr 3, 30
    bl dtor_80084580
L_802D2AE8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D2B04:
    stwu 1, -0x10(1)
    mflr 0
    addi 6, 3, 0x234
    stw 0, 0x14(1)
    bl fn_801F132C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D2B28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 4, 0x4(3)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_802D2B64
    cmpwi 0, 0x3b
    .4byte 0x4182000C # beq .L_802D2B64
    cmpwi 0, 0x39
    .4byte 0x408200D8 # bne .L_802D2C38
L_802D2B64:
    .4byte 0xC002DF78 # lfs f0, lbl_80540F18@sda21(r0)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x14(31)
    addi 4, 4, 0x47
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF7C # lfs f1, lbl_80540F1C@sda21(r0)
    li 5, 0x4f3
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF7C # lfs f1, lbl_80540F1C@sda21(r0)
    li 5, 0x4f4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF7C # lfs f1, lbl_80540F1C@sda21(r0)
    li 5, 0x4f5
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF7C # lfs f1, lbl_80540F1C@sda21(r0)
    li 5, 0x4f6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000C4 # b .L_802D2CF8
L_802D2C38:
    lwz 0, 0x230(31)
    cmpwi 0, 0x50
    .4byte 0x4080009C # bge .L_802D2CDC
    lwz 3, 0x4(31)
    cmpwi 3, 0x8
    .4byte 0x41800044 # blt .L_802D2C90
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002DF78 # lfs f0, lbl_80540F18@sda21(r0)
    stfs 1, 0x10(1)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000050 # b .L_802D2CDC
L_802D2C90:
    .4byte 0xC022DF7C # lfs f1, lbl_80540F1C@sda21(r0)
    addi 4, 31, 0xc
    li 5, 0x8a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF7C # lfs f1, lbl_80540F1C@sda21(r0)
    li 5, 0x8b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802D2CDC:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11c(31)
L_802D2CF8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802D2D0C:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022DF7C # lfs f1, lbl_80540F1C@sda21(r0)
    lis 4, lbl_8046E118@ha
    stw 0, 0x24(1)
    addi 4, 4, lbl_8046E118@l
    fmr 2, 1
    li 5, 0x2b
    stw 31, 0x1c(1)
    mr 31, 3
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x2b
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802D2D84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_802D2DE8
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
    lwz 3, 0x230(31)
    cmpwi 3, 0x3e8
    .4byte 0x4080012C # bge .L_802D2F04
    addi 0, 3, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000120 # b .L_802D2F04
L_802D2DE8:
    lfs 2, 0x44(31)
    .4byte 0xC022DF80 # lfs f1, lbl_80540F20@sda21(r0)
    .4byte 0xC002DF78 # lfs f0, lbl_80540F18@sda21(r0)
    fadds 1, 2, 1
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
    .4byte 0x41800018 # blt .L_802D2E3C
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_802D2EC0
L_802D2E3C:
    lfs 1, 0x14(31)
    .4byte 0xC002DF78 # lfs f0, lbl_80540F18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800060 # bge .L_802D2EA8
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x90
    .4byte 0x4082001C # bne .L_802D2E7C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x91
    bl fn_802A381C
    .4byte 0x48000030 # b .L_802D2EA8
L_802D2E7C:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x91
    .4byte 0x40820018 # bne .L_802D2EA8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x92
    bl fn_802A381C
L_802D2EA8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000048 # b .L_802D2F04
L_802D2EC0:
    lwz 5, 0xc8(31)
    mr 3, 31
    li 4, 0x0
    li 6, 0x5
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802D2EF0
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802D2F04
L_802D2EF0:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802D2F04:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D2F18:
    .4byte 0xC002DF84 # lfs f0, lbl_80540F24@sda21(r0)
    li 4, 0x1
    .4byte 0xC042DF88 # lfs f2, lbl_80540F28@sda21(r0)
    li 0, 0x0
    stfs 0, 0x60(3)
    .4byte 0xC022DF8C # lfs f1, lbl_80540F2C@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002DF90 # lfs f0, lbl_80540F30@sda21(r0)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stw 4, 0x1a4(3)
    stw 0, 0x230(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 0, 0x234(3)
    blr

fn_802D2F60:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3E68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3E68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2FB0
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
L_802D2FB0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D2FE8
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
L_802D2FE8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3020
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
L_802D3020:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3058
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
L_802D3058:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3090
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
L_802D3090:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D30C8
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
L_802D30C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3100
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
L_802D3100:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3138
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
L_802D3138:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3170
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
L_802D3170:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D3184:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802D31C8
    lis 5, lbl_804A94D8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A94D8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802D31C8
    mr 3, 30
    bl dtor_80084580
L_802D31C8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D31E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D3210:
    stwu 1, -0x10(1)
    mflr 0
    addi 6, 3, 0x230
    stw 0, 0x14(1)
    bl fn_801F132C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D3234:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 4, 0x4(3)
    cmpwi 4, 0x8
    .4byte 0x41800058 # blt .L_802D32A8
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002DF98 # lfs f0, lbl_80540F38@sda21(r0)
    stfs 1, 0x10(1)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x18
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001C8 # b .L_802D346C
L_802D32A8:
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x4182001C # beq .L_802D32D4
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x40820044 # bne .L_802D3314
L_802D32D4:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800015C # b .L_802D346C
L_802D3314:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xe
    .4byte 0x408200E0 # bne .L_802D3408
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802D33A0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000D0 # b .L_802D346C
L_802D33A0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000068 # b .L_802D346C
L_802D3408:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    li 5, 0x91
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    li 5, 0x92
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
L_802D346C:
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802D3488:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    li 31, 0x7
    stw 30, 0x48(1)
    mr 30, 3
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_802D351C
L_802D34BC:
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
L_802D351C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802D34BC
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lbz 0, 0x234(30)
    stb 0, 0x1b(1)
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802D35C8
    stb 5, 0x28(1)
    li 31, -0x1
    lwz 3, 0xc8(30)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x25(1)
    lwz 3, 0xc8(30)
    bl fn_8023CA88
    stb 3, 0x24(1)
L_802D35C8:
    .4byte 0xC022DF9C # lfs f1, lbl_80540F3C@sda21(r0)
    lis 3, lbl_8046E130@ha
    addi 4, 3, lbl_8046E130@l
    mr 7, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x8
    li 5, 0x28
    li 8, 0x0
    li 9, 0x1
    bl fn_801F02BC
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802D360C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0xff
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    stb 0, 0x234(3)
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802D3674
    lwz 3, 0xc8(30)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    lfs 0, 0x4(3)
    stfs 0, 0x10(30)
    lfs 0, 0x8(3)
    stfs 0, 0x14(30)
    lwz 3, 0xc8(30)
    bl fn_8023DE58
    stw 3, 0x4(30)
    lwz 3, 0xc8(30)
    bl fn_8023BCD4
    stb 3, 0x234(30)
    .4byte 0x480000D0 # b .L_802D3740
L_802D3674:
    lfs 1, 0x44(30)
    .4byte 0xC002DFA0 # lfs f0, lbl_80540F40@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(30)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 31, 0x114(30)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802D36BC
    li 31, 0x0
L_802D36BC:
    lfs 1, 0x14(30)
    .4byte 0xC002DF98 # lfs f0, lbl_80540F38@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4180001C # blt .L_802D36E4
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802D36FC
L_802D36E4:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000048 # b .L_802D3740
L_802D36FC:
    lwz 5, 0xc8(30)
    mr 3, 30
    mr 4, 31
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802D372C
    mr 3, 30
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802D3740
L_802D372C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802D3740:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D3758:
    .4byte 0xC002DFA4 # lfs f0, lbl_80540F44@sda21(r0)
    li 0, 0x0
    .4byte 0xC042DFA8 # lfs f2, lbl_80540F48@sda21(r0)
    stfs 0, 0x60(3)
    .4byte 0xC022DFAC # lfs f1, lbl_80540F4C@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002DFB0 # lfs f0, lbl_80540F50@sda21(r0)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 0, 0x230(3)
    blr

fn_802D3794:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3F68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3F68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D37E4
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
L_802D37E4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D381C
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
L_802D381C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3854
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
L_802D3854:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D388C
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
L_802D388C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D38C4
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
L_802D38C4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D38FC
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
L_802D38FC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D3934
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
L_802D3934:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D396C
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
L_802D396C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802D39A4
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
L_802D39A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802D39B8:
    addis 3, 3, 0x1
    slwi 0, 4, 2
    add 3, 3, 0
    stw 5, 0x31a8(3)
    blr

fn_802D39CC:
    lwz 4, 0x18(3)
    lwz 0, 0x10(3)
    cmpw 4, 0
    .4byte 0x4082001C # bne .L_802D39F4
    lwz 4, 0x14(3)
    lwz 0, 0xc(3)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_802D39F4
    li 3, 0x1
    blr
L_802D39F4:
    li 3, 0x0
    blr

fn_802D39FC:
    lwz 4, 0x18(3)
    lwz 0, 0x14(3)
    mulli 4, 4, 0xa
    add 3, 3, 4
    add 3, 3, 0
    lbz 3, 0x60(3)
    blr

fn_802D3A18:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x96(4)
    lbz 30, 0x94(4)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802D3A48
    li 30, 0x1
L_802D3A48:
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802D3A68
    li 3, 0x0
    bl fn_8037F1E4
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802D3A68
    li 30, 0x1
L_802D3A68:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    lbz 0, 0x31f0(3)
    cmplwi 0, 0x1
    .4byte 0x408202B0 # bne .L_802D3D30
    lwz 3, 0xc4(31)
    cmpwi 3, 0x0
    .4byte 0x418202A4 # beq .L_802D3D30
    clrlwi. 0, 30, 24
    .4byte 0x4082029C # bne .L_802D3D30
    subi 0, 3, 0x1
    stw 0, 0xc4(31)
    lwz 5, 0xc4(31)
    cmpwi 5, 0x708
    .4byte 0x40820054 # bne .L_802D3AFC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D3AD4
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x146
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000018 # b .L_802D3AE8
L_802D3AD4:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x195
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
L_802D3AE8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x30
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000238 # b .L_802D3D30
L_802D3AFC:
    cmpwi 5, 0x294
    .4byte 0x40820054 # bne .L_802D3B54
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802D3B2C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x147
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000018 # b .L_802D3B40
L_802D3B2C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x196
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
L_802D3B40:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x30
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480001E0 # b .L_802D3D30
L_802D3B54:
    cmpwi 5, 0x12c
    .4byte 0x4082003C # bne .L_802D3B94
    lis 4, 0x8889
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    subi 0, 4, 0x7777
    mulhw 0, 0, 5
    add 0, 0, 5
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 4, 0, 4
    bl fn_8043EDE8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x31
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480001A0 # b .L_802D3D30
L_802D3B94:
    cmpwi 5, 0xf0
    .4byte 0x4082003C # bne .L_802D3BD4
    lis 4, 0x8889
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    subi 0, 4, 0x7777
    mulhw 0, 0, 5
    add 0, 0, 5
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 4, 0, 4
    bl fn_8043EDE8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x32
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000160 # b .L_802D3D30
L_802D3BD4:
    cmpwi 5, 0xb4
    .4byte 0x4082003C # bne .L_802D3C14
    lis 4, 0x8889
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    subi 0, 4, 0x7777
    mulhw 0, 0, 5
    add 0, 0, 5
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 4, 0, 4
    bl fn_8043EDE8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x33
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000120 # b .L_802D3D30
L_802D3C14:
    cmpwi 5, 0x78
    .4byte 0x4082003C # bne .L_802D3C54
    lis 4, 0x8889
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    subi 0, 4, 0x7777
    mulhw 0, 0, 5
    add 0, 0, 5
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 4, 0, 4
    bl fn_8043EDE8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x34
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480000E0 # b .L_802D3D30
L_802D3C54:
    cmpwi 5, 0x3c
    .4byte 0x4082003C # bne .L_802D3C94
    lis 4, 0x8889
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    subi 0, 4, 0x7777
    mulhw 0, 0, 5
    add 0, 0, 5
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 4, 0, 4
    bl fn_8043EDE8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x35
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480000A0 # b .L_802D3D30
L_802D3C94:
    cmpwi 5, 0x0
    .4byte 0x40820098 # bne .L_802D3D30
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 4, 0x24(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lfs 1, 0x10(4)
    fneg 1, 1
    stfs 1, 0x8(1)
    lfs 1, 0x20(4)
    fneg 1, 1
    stfs 0, 0x10(1)
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_802D3D0C
    bl SpatialRegistry_GetBase
    lis 4, 0x5455
    addi 6, 1, 0x8
    addi 4, 4, 0x544d
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x48000028 # b .L_802D3D30
L_802D3D0C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5455
    addi 6, 1, 0x8
    addi 4, 4, 0x4746
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802D3D30:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802D3D48:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    li 7, 0x0
    stw 0, 0x24(1)
    li 0, 0x5
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    mr 6, 29
    li 3, 0xff
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    addis 4, 4, 0x1
    stw 5, 0x328c(4)
    mtctr 0
L_802D3D90:
    stb 3, 0x60(6)
    stb 3, 0x61(6)
    stb 3, 0x62(6)
    stb 3, 0x63(6)
    stb 3, 0x64(6)
    stb 3, 0x65(6)
    stb 3, 0x66(6)
    stb 3, 0x67(6)
    stb 3, 0x68(6)
    stb 3, 0x69(6)
    stb 3, 0x6a(6)
    addi 7, 7, 0x1
    stb 3, 0x6b(6)
    stb 3, 0x6c(6)
    stb 3, 0x6d(6)
    stb 3, 0x6e(6)
    stb 3, 0x6f(6)
    stb 3, 0x70(6)
    stb 3, 0x71(6)
    stb 3, 0x72(6)
    stb 3, 0x73(6)
    addi 6, 6, 0x14
    .4byte 0x4200FFA8 # bdnz .L_802D3D90
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 31, 0x0
    li 30, 0x0
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082046C # bne .L_802D426C
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_802D3E38
    lwz 4, 0x4(29)
    lis 3, lbl_804A9710@ha
    lwz 0, 0x8(29)
    addi 3, 3, lbl_804A9710@l
    slwi 4, 4, 4
    add 3, 3, 4
    slwi 0, 0, 2
    lwzx 3, 3, 0
    bl fn_80403328
    .4byte 0x48000028 # b .L_802D3E5C
L_802D3E38:
    lwz 4, 0x4(29)
    lis 3, lbl_804A9830@ha
    lwz 0, 0x8(29)
    addi 3, 3, lbl_804A9830@l
    slwi 4, 4, 4
    add 3, 3, 4
    slwi 0, 0, 2
    lwzx 3, 3, 0
    bl fn_80403328
L_802D3E5C:
    mr 4, 3
L_802D3E60:
    lbz 0, 0x0(4)
    cmplwi 0, 0x2c
    .4byte 0x41820010 # beq .L_802D3E78
    addi 31, 31, 0x1
    addi 4, 4, 0x1
    .4byte 0x4BFFFFEC # b .L_802D3E60
L_802D3E78:
    add 5, 31, 3
    addi 31, 31, 0x5
    lbz 4, 0x1(5)
    add 6, 3, 31
    subi 0, 4, 0x30
    stw 0, 0x14(29)
    lwz 0, 0x14(29)
    stw 0, 0xc(29)
    lbz 4, 0x3(5)
    subi 0, 4, 0x30
    stw 0, 0x18(29)
    lwz 0, 0x18(29)
    stw 0, 0x10(29)
    lbzx 4, 3, 31
    subi 0, 4, 0x30
    stw 0, 0x34(29)
    lbz 0, 0x1(6)
    cmplwi 0, 0x2c
    .4byte 0x41820070 # beq .L_802D3F30
    cmplwi 0, 0xd
    .4byte 0x41820068 # beq .L_802D3F30
    lwz 0, 0x34(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D3EE4
    li 0, 0x0
    stw 0, 0x34(29)
    .4byte 0x48000034 # b .L_802D3F14
L_802D3EE4:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802D3EF8
    li 0, 0xa
    stw 0, 0x34(29)
    .4byte 0x48000020 # b .L_802D3F14
L_802D3EF8:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802D3F0C
    li 0, 0x14
    stw 0, 0x34(29)
    .4byte 0x4800000C # b .L_802D3F14
L_802D3F0C:
    li 0, 0x1e
    stw 0, 0x34(29)
L_802D3F14:
    lbz 4, 0x1(6)
    addi 31, 31, 0x1
    lwz 5, 0x34(29)
    subi 0, 4, 0x30
    clrlwi 0, 0, 24
    add 0, 5, 0
    stw 0, 0x34(29)
L_802D3F30:
    lwz 0, 0x34(29)
    add 4, 31, 3
    addi 31, 31, 0x4
    stw 0, 0x38(29)
    add 5, 3, 31
    lbz 4, 0x2(4)
    subi 0, 4, 0x30
    stw 0, 0x3c(29)
    lbzx 4, 3, 31
    subi 0, 4, 0x30
    stw 0, 0x40(29)
    lbz 0, 0x1(5)
    cmplwi 0, 0x2c
    .4byte 0x41820070 # beq .L_802D3FD4
    cmplwi 0, 0xd
    .4byte 0x41820068 # beq .L_802D3FD4
    lwz 0, 0x40(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D3F88
    li 0, 0x0
    stw 0, 0x40(29)
    .4byte 0x48000034 # b .L_802D3FB8
L_802D3F88:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802D3F9C
    li 0, 0xa
    stw 0, 0x40(29)
    .4byte 0x48000020 # b .L_802D3FB8
L_802D3F9C:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802D3FB0
    li 0, 0x14
    stw 0, 0x40(29)
    .4byte 0x4800000C # b .L_802D3FB8
L_802D3FB0:
    li 0, 0x1e
    stw 0, 0x40(29)
L_802D3FB8:
    lbz 4, 0x1(5)
    addi 31, 31, 0x1
    lwz 5, 0x40(29)
    subi 0, 4, 0x30
    clrlwi 0, 0, 24
    add 0, 5, 0
    stw 0, 0x40(29)
L_802D3FD4:
    addi 31, 31, 0x2
    lbzx 4, 3, 31
    add 5, 3, 31
    subi 0, 4, 0x30
    stw 0, 0x44(29)
    lbz 0, 0x1(5)
    cmplwi 0, 0x2c
    .4byte 0x41820070 # beq .L_802D4060
    cmplwi 0, 0xd
    .4byte 0x41820068 # beq .L_802D4060
    lwz 0, 0x44(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D4014
    li 0, 0x0
    stw 0, 0x44(29)
    .4byte 0x48000034 # b .L_802D4044
L_802D4014:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802D4028
    li 0, 0xa
    stw 0, 0x44(29)
    .4byte 0x48000020 # b .L_802D4044
L_802D4028:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802D403C
    li 0, 0x14
    stw 0, 0x44(29)
    .4byte 0x4800000C # b .L_802D4044
L_802D403C:
    li 0, 0x1e
    stw 0, 0x44(29)
L_802D4044:
    lbz 4, 0x1(5)
    addi 31, 31, 0x1
    lwz 5, 0x44(29)
    subi 0, 4, 0x30
    clrlwi 0, 0, 24
    add 0, 5, 0
    stw 0, 0x44(29)
L_802D4060:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802D4078
    li 0, 0x0
    .4byte 0x48000030 # b .L_802D40A4
L_802D4078:
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    lwz 0, 0x4(4)
    cmpwi 0, 0x8
    .4byte 0x40820018 # bne .L_802D40A0
    lwz 0, 0x8(4)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_802D40A0
    li 0, 0x1
    .4byte 0x48000008 # b .L_802D40A4
L_802D40A0:
    li 0, 0x0
L_802D40A4:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_802D40B8
    li 0, 0x0
    stw 0, 0x48(29)
    .4byte 0x4800000C # b .L_802D40C0
L_802D40B8:
    li 0, 0x0
    stw 0, 0x48(29)
L_802D40C0:
    li 0, 0x1
    addi 31, 31, 0x2
    stw 0, 0x4c(29)
    add 5, 3, 31
    lbzx 4, 3, 31
    subi 0, 4, 0x30
    stw 0, 0x50(29)
    lbz 0, 0x1(5)
    cmplwi 0, 0x2c
    .4byte 0x41820050 # beq .L_802D4134
    cmplwi 0, 0xd
    .4byte 0x41820048 # beq .L_802D4134
    lwz 0, 0x50(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D4108
    li 0, 0x0
    stw 0, 0x50(29)
    .4byte 0x48000014 # b .L_802D4118
L_802D4108:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802D4118
    li 0, 0xa
    stw 0, 0x50(29)
L_802D4118:
    lbz 4, 0x1(5)
    addi 31, 31, 0x1
    lwz 5, 0x50(29)
    subi 0, 4, 0x30
    clrlwi 0, 0, 24
    add 0, 5, 0
    stw 0, 0x50(29)
L_802D4134:
    add 4, 31, 3
    lbz 4, 0x2(4)
    subi 0, 4, 0x30
    stw 0, 0x54(29)
    lwz 0, 0x54(29)
    cmpwi 0, 0x2
    .4byte 0x4180000C # blt .L_802D4158
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_802D4160
L_802D4158:
    li 0, 0x5
    stw 0, 0x54(29)
L_802D4160:
    addi 31, 31, 0x4
    lbzx 4, 3, 31
    subi 0, 4, 0x30
    stw 0, 0x58(29)
L_802D4170:
    add 4, 3, 31
    lbz 0, 0x0(4)
    cmplwi 0, 0xd
    .4byte 0x40820018 # bne .L_802D4194
    lbz 0, 0x1(4)
    cmplwi 0, 0xa
    .4byte 0x4082000C # bne .L_802D4194
    addi 31, 31, 0x2
    .4byte 0x4800000C # b .L_802D419C
L_802D4194:
    addi 31, 31, 0x1
    .4byte 0x4BFFFFD8 # b .L_802D4170
L_802D419C:
    mr 6, 29
L_802D41A0:
    add 4, 3, 31
    lbz 5, 0x0(4)
    cmpwi 5, 0x65
    .4byte 0x4082001C # bne .L_802D41C8
    lbz 0, 0x1(4)
    cmpwi 0, 0x6e
    .4byte 0x40820010 # bne .L_802D41C8
    lbz 0, 0x2(4)
    cmpwi 0, 0x64
    .4byte 0x418204F8 # beq .L_802D46BC
L_802D41C8:
    cmplwi 5, 0xd
    .4byte 0x40820020 # bne .L_802D41EC
    lbz 0, 0x1(4)
    cmplwi 0, 0xa
    .4byte 0x40820014 # bne .L_802D41EC
    li 30, 0x0
    addi 31, 31, 0x2
    addi 6, 6, 0xa
    .4byte 0x4BFFFFB8 # b .L_802D41A0
L_802D41EC:
    cmplwi 5, 0x2c
    .4byte 0x4082000C # bne .L_802D41FC
    addi 31, 31, 0x1
    .4byte 0x4BFFFFA8 # b .L_802D41A0
L_802D41FC:
    cmpwi 5, 0x4e
    .4byte 0x40820010 # bne .L_802D4210
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    .4byte 0x4BFFFF94 # b .L_802D41A0
L_802D4210:
    lbz 7, 0x1(4)
    subi 0, 5, 0x30
    clrlwi 8, 0, 24
    cmplwi 7, 0x2c
    .4byte 0x41820038 # beq .L_802D4258
    cmplwi 7, 0xd
    .4byte 0x41820030 # beq .L_802D4258
    mulli 4, 8, 0xa
    li 5, 0x9
    subi 0, 7, 0x30
    subfc 5, 8, 5
    addze 5, 8
    clrlwi 0, 0, 24
    subf 5, 5, 8
    clrlwi 4, 4, 24
    and 8, 4, 5
    addi 31, 31, 0x1
    add 8, 8, 0
L_802D4258:
    addi 0, 30, 0x60
    addi 31, 31, 0x1
    stbx 8, 6, 0
    addi 30, 30, 0x1
    .4byte 0x4BFFFF38 # b .L_802D41A0
L_802D426C:
    bl fn_80134DC0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 6, 0x0
    li 4, 0x1
    slw 0, 4, 6
    lbz 3, 0x82(5)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_802D42A4
    mr 6, 4
L_802D42A4:
    li 0, 0x1
    lbz 3, 0x82(5)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_802D42D0
    addi 6, 6, 0x1
L_802D42D0:
    li 0, 0x2
    lbz 3, 0x82(5)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_802D42FC
    addi 6, 6, 0x1
L_802D42FC:
    li 0, 0x3
    lbz 3, 0x82(5)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_802D4328
    addi 6, 6, 0x1
L_802D4328:
    li 4, 0x0
    li 3, 0x0
    mtctr 6
    cmpwi 6, 0x0
    .4byte 0x40810024 # ble .L_802D435C
L_802D433C:
    lbz 0, 0x83(5)
    sraw 0, 0, 3
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820008 # bne .L_802D4354
    addi 4, 4, 0x1
L_802D4354:
    addi 3, 3, 0x2
    .4byte 0x4200FFE4 # bdnz .L_802D433C
L_802D435C:
    lwz 0, 0x4(29)
    cmpwi 4, 0x0
    lwz 3, 0x8(29)
    slwi 0, 0, 2
    add 31, 3, 0
    .4byte 0x41820014 # beq .L_802D4384
    lis 3, lbl_8046E7B8@ha
    addi 3, 3, lbl_8046E7B8@l
    bl fn_80403328
    .4byte 0x48000010 # b .L_802D4390
L_802D4384:
    lis 3, lbl_8046E7C8@ha
    addi 3, 3, lbl_8046E7C8@l
    bl fn_80403328
L_802D4390:
    li 0, 0x1
    cmpwi 31, 0x0
    stw 0, 0x14(29)
    li 4, 0x0
    stw 0, 0x18(29)
    .4byte 0x4182003C # beq .L_802D43E0
L_802D43A8:
    add 5, 3, 4
    lbz 0, 0x0(5)
    cmplwi 0, 0xd
    .4byte 0x4082001C # bne .L_802D43D0
    lbz 0, 0x1(5)
    cmplwi 0, 0xa
    .4byte 0x40820010 # bne .L_802D43D0
    addi 4, 4, 0x2
    addi 30, 30, 0x1
    .4byte 0x4800000C # b .L_802D43D8
L_802D43D0:
    addi 4, 4, 0x1
    .4byte 0x4BFFFFD4 # b .L_802D43A8
L_802D43D8:
    cmpw 31, 30
    .4byte 0x4082FFCC # bne .L_802D43A8
L_802D43E0:
    add 5, 3, 4
    lbzx 6, 3, 4
    lbz 5, 0x1(5)
    subi 0, 6, 0x30
    cmplwi 5, 0x2c
    clrlwi 6, 0, 24
    .4byte 0x41820050 # beq .L_802D4448
    cmplwi 5, 0xd
    .4byte 0x41820048 # beq .L_802D4448
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_802D4414
    li 6, 0x0
    .4byte 0x48000028 # b .L_802D4438
L_802D4414:
    cmplwi 6, 0x1
    .4byte 0x4082000C # bne .L_802D4424
    li 6, 0xa
    .4byte 0x48000018 # b .L_802D4438
L_802D4424:
    cmplwi 6, 0x2
    .4byte 0x4082000C # bne .L_802D4434
    li 6, 0x14
    .4byte 0x48000008 # b .L_802D4438
L_802D4434:
    li 6, 0x1e
L_802D4438:
    subi 0, 5, 0x30
    addi 4, 4, 0x1
    clrlwi 0, 0, 24
    add 6, 6, 0
L_802D4448:
    stb 6, 0x6b(29)
    addi 4, 4, 0x2
    add 6, 3, 4
    lbzx 5, 3, 4
    subi 0, 5, 0x30
    stw 0, 0x34(29)
    lbz 0, 0x1(6)
    cmplwi 0, 0x2c
    .4byte 0x41820070 # beq .L_802D44D8
    cmplwi 0, 0xd
    .4byte 0x41820068 # beq .L_802D44D8
    lwz 0, 0x34(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D448C
    li 0, 0x0
    stw 0, 0x34(29)
    .4byte 0x48000034 # b .L_802D44BC
L_802D448C:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802D44A0
    li 0, 0xa
    stw 0, 0x34(29)
    .4byte 0x48000020 # b .L_802D44BC
L_802D44A0:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802D44B4
    li 0, 0x14
    stw 0, 0x34(29)
    .4byte 0x4800000C # b .L_802D44BC
L_802D44B4:
    li 0, 0x1e
    stw 0, 0x34(29)
L_802D44BC:
    lbz 5, 0x1(6)
    addi 4, 4, 0x1
    lwz 6, 0x34(29)
    subi 0, 5, 0x30
    clrlwi 0, 0, 24
    add 0, 6, 0
    stw 0, 0x34(29)
L_802D44D8:
    lwz 0, 0x34(29)
    add 5, 4, 3
    addi 4, 4, 0x4
    stw 0, 0x38(29)
    add 6, 3, 4
    lbz 5, 0x2(5)
    subi 0, 5, 0x30
    stw 0, 0x3c(29)
    lbzx 5, 3, 4
    subi 0, 5, 0x30
    stw 0, 0x40(29)
    lbz 0, 0x1(6)
    cmplwi 0, 0x2c
    .4byte 0x41820070 # beq .L_802D457C
    cmplwi 0, 0xd
    .4byte 0x41820068 # beq .L_802D457C
    lwz 0, 0x40(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D4530
    li 0, 0x0
    stw 0, 0x40(29)
    .4byte 0x48000034 # b .L_802D4560
L_802D4530:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802D4544
    li 0, 0xa
    stw 0, 0x40(29)
    .4byte 0x48000020 # b .L_802D4560
L_802D4544:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802D4558
    li 0, 0x14
    stw 0, 0x40(29)
    .4byte 0x4800000C # b .L_802D4560
L_802D4558:
    li 0, 0x1e
    stw 0, 0x40(29)
L_802D4560:
    lbz 5, 0x1(6)
    addi 4, 4, 0x1
    lwz 6, 0x40(29)
    subi 0, 5, 0x30
    clrlwi 0, 0, 24
    add 0, 6, 0
    stw 0, 0x40(29)
L_802D457C:
    addi 4, 4, 0x2
    lbzx 5, 3, 4
    add 6, 3, 4
    subi 0, 5, 0x30
    stw 0, 0x48(29)
    lbz 0, 0x1(6)
    cmplwi 0, 0x2c
    .4byte 0x41820050 # beq .L_802D45E8
    cmplwi 0, 0xd
    .4byte 0x41820048 # beq .L_802D45E8
    lwz 0, 0x48(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D45BC
    li 0, 0x0
    stw 0, 0x48(29)
    .4byte 0x48000014 # b .L_802D45CC
L_802D45BC:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802D45CC
    li 0, 0xa
    stw 0, 0x48(29)
L_802D45CC:
    lbz 5, 0x1(6)
    addi 4, 4, 0x1
    lwz 6, 0x48(29)
    subi 0, 5, 0x30
    clrlwi 0, 0, 24
    add 0, 6, 0
    stw 0, 0x48(29)
L_802D45E8:
    addi 4, 4, 0x2
    lbzx 5, 3, 4
    add 6, 3, 4
    subi 0, 5, 0x30
    stw 0, 0x50(29)
    lbz 0, 0x1(6)
    cmplwi 0, 0x2c
    .4byte 0x41820050 # beq .L_802D4654
    cmplwi 0, 0xd
    .4byte 0x41820048 # beq .L_802D4654
    lwz 0, 0x50(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D4628
    li 0, 0x0
    stw 0, 0x50(29)
    .4byte 0x48000014 # b .L_802D4638
L_802D4628:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802D4638
    li 0, 0xa
    stw 0, 0x50(29)
L_802D4638:
    lbz 5, 0x1(6)
    addi 4, 4, 0x1
    lwz 6, 0x50(29)
    subi 0, 5, 0x30
    clrlwi 0, 0, 24
    add 0, 6, 0
    stw 0, 0x50(29)
L_802D4654:
    add 5, 4, 3
    lbz 5, 0x2(5)
    subi 0, 5, 0x30
    stw 0, 0x4c(29)
    lwz 0, 0x4c(29)
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_802D4680
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802D4680
    li 0, 0x1
    stw 0, 0x4c(29)
L_802D4680:
    add 5, 4, 3
    lbz 5, 0x4(5)
    subi 0, 5, 0x30
    stw 0, 0x54(29)
    lwz 0, 0x54(29)
    cmpwi 0, 0x2
    .4byte 0x4180000C # blt .L_802D46A4
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_802D46AC
L_802D46A4:
    li 0, 0x5
    stw 0, 0x54(29)
L_802D46AC:
    add 3, 4, 3
    lbz 3, 0x6(3)
    subi 0, 3, 0x30
    stw 0, 0x58(29)
L_802D46BC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802D46D8:
    clrlwi. 0, 6, 24
    srwi 9, 5, 5
    .4byte 0x40820048 # bne .L_802D4728
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    slwi 3, 4, 9
    lis 7, lbl_8046E1CC@ha
    slwi 0, 9, 2
    lwz 4, 0x4(6)
    clrlslwi 6, 5, 27, 2
    addi 5, 7, lbl_8046E1CC@l
    lwz 4, 0xc(4)
    lwzx 5, 5, 6
    add 3, 4, 3
    add 3, 3, 0
    lwz 0, 0x2d48(3)
    and 3, 5, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr
L_802D4728:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E1CC@ha
    slwi 7, 4, 9
    clrlslwi 0, 5, 27, 2
    lwz 8, 0x4(8)
    addi 4, 3, lbl_8046E1CC@l
    slwi 6, 9, 2
    lwzx 0, 4, 0
    lwz 5, 0xc(8)
    li 3, 0x1
    add 4, 5, 7
    add 5, 4, 6
    lwz 4, 0x2d48(5)
    or 0, 4, 0
    stw 0, 0x2d48(5)
    blr

fn_802D4768:
    stwu 1, -0x10(1)
    li 10, 0x8
    subfc 0, 10, 4
    srwi 9, 4, 31
    srwi 10, 10, 31
    stw 31, 0xc(1)
    subfe 9, 9, 10
    subi 8, 4, 0x7
    andc 8, 8, 9
    li 0, 0xf
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    li 31, 0x3c
    slwi 12, 8, 7
    li 11, 0x78
    mtctr 0
L_802D47A4:
    lwz 8, 0x4(10)
    lwz 9, 0xc(8)
    add 8, 9, 11
    addi 0, 8, 0x2948
    lhzx 0, 12, 0
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802D47D4
    add 8, 9, 12
    slwi 0, 31, 1
    add 8, 8, 0
    sth 5, 0x2948(8)
    .4byte 0x48000010 # b .L_802D47E0
L_802D47D4:
    subi 11, 11, 0x8
    subi 31, 31, 0x4
    .4byte 0x4200FFC8 # bdnz .L_802D47A4
L_802D47E0:
    srawi 0, 31, 2
    cmpwi 4, 0x8
    subfic 0, 0, 0xf
    stw 0, 0x4(6)
    srawi 0, 0, 31
    stw 0, 0x0(6)
    .4byte 0x40800034 # bge .L_802D482C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x18(3)
    lwz 5, 0x4(4)
    mulli 4, 0, 0x280
    lwz 0, 0x14(3)
    lwz 3, 0xc(5)
    slwi 0, 0, 6
    add 3, 3, 4
    add 3, 3, 0
    lwz 0, 0x1048(3)
    lwz 3, 0x104c(3)
    .4byte 0x48000038 # b .L_802D4860
L_802D482C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    slwi 0, 4, 3
    lwz 4, 0x18(3)
    lwz 5, 0x4(5)
    mulli 4, 4, 0x280
    lwz 3, 0x14(3)
    lwz 5, 0xc(5)
    slwi 3, 3, 6
    add 4, 5, 4
    add 3, 4, 3
    add 3, 3, 0
    lwz 0, 0x1010(3)
    lwz 3, 0x1014(3)
L_802D4860:
    stw 3, 0x4(7)
    stw 0, 0x0(7)
    lwz 31, 0xc(1)
    addi 1, 1, 0x10
    blr

fn_802D4874:
    stwu 1, -0x10(1)
    li 10, 0x8
    subfc 0, 10, 4
    srwi 9, 4, 31
    srwi 10, 10, 31
    stw 31, 0xc(1)
    subfe 9, 9, 10
    subi 8, 4, 0x7
    andc 8, 8, 9
    li 0, 0x40
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    li 31, 0x0
    slwi 12, 8, 7
    li 11, 0x0
    mtctr 0
L_802D48B0:
    lwz 8, 0x4(10)
    lwz 9, 0xc(8)
    add 8, 9, 11
    addi 0, 8, 0x2948
    lhzx 0, 12, 0
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802D48E0
    add 8, 9, 12
    slwi 0, 31, 1
    add 8, 8, 0
    sth 5, 0x2948(8)
    .4byte 0x48000010 # b .L_802D48EC
L_802D48E0:
    addi 11, 11, 0x2
    addi 31, 31, 0x1
    .4byte 0x4200FFC8 # bdnz .L_802D48B0
L_802D48EC:
    li 5, 0x1
    li 0, 0x0
    stw 5, 0x4(6)
    stw 0, 0x0(6)
L_802D48FC:
    cmpwi 31, 0x0
    .4byte 0x41820028 # beq .L_802D4928
    lwz 8, 0x4(6)
    subi 31, 31, 0x1
    lwz 5, 0x0(6)
    slwi 0, 8, 1
    stw 0, 0x4(6)
    slwi 0, 5, 1
    rlwimi 0, 8, 1, 31, 31
    stw 0, 0x0(6)
    .4byte 0x4BFFFFD8 # b .L_802D48FC
L_802D4928:
    cmpwi 4, 0x8
    .4byte 0x40800034 # bge .L_802D4960
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x18(3)
    lwz 5, 0x4(4)
    mulli 4, 0, 0x280
    lwz 0, 0x14(3)
    lwz 3, 0xc(5)
    slwi 0, 0, 6
    add 3, 3, 4
    add 3, 3, 0
    lwz 0, 0x1048(3)
    lwz 3, 0x104c(3)
    .4byte 0x48000038 # b .L_802D4994
L_802D4960:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    slwi 0, 4, 3
    lwz 4, 0x18(3)
    lwz 5, 0x4(5)
    mulli 4, 4, 0x280
    lwz 3, 0x14(3)
    lwz 5, 0xc(5)
    slwi 3, 3, 6
    add 4, 5, 4
    add 3, 4, 3
    add 3, 3, 0
    lwz 0, 0x1010(3)
    lwz 3, 0x1014(3)
L_802D4994:
    stw 3, 0x4(7)
    stw 0, 0x0(7)
    lwz 31, 0xc(1)
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802CCC8C
    .4byte fn_802CDB18
    .4byte fn_802CE93C
    .4byte fn_802CFBA8
    .4byte fn_802D0900
    .4byte fn_802D12B8
    .4byte fn_802D2880
    .4byte fn_802D2F60
    .4byte fn_802D3794

