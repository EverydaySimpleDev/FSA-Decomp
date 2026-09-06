# Dispatch-cross-check bundle: 12 real FourCC actor vtable bodies
# (lbl_804AAFB8/AB098/AB170/AB1F0/AB258/AB2B0/AB308/AB3A8/AB464/AB4C0/
# AB580/AB5D8, ctors already landed) plus shared helper/update
# functions, landed as ONE byte-contiguous 90-function, 71,088-byte
# Track-A bundle (0x80317EB8-0x80329468) - the largest single landing
# since the original 149-function mega-bundle. Found+verified via
# spanwalk.py (stopped exactly at the pre-existing extab_80329468.s
# boundary) and resolvefiles.py (no fused dumps this time). This one
# span fully absorbed the naively-clustered "14-actor" region plus 2
# extra actors that clustering had missed as contiguous. See
# project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000D92C
etb_8000D92C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D92C, 8

.global etb_8000D934
etb_8000D934:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D934, 8

.global etb_8000D93C
etb_8000D93C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D93C, 8

.global etb_8000D944
etb_8000D944:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D944, 8

.global etb_8000D94C
etb_8000D94C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D94C, 8

.global etb_8000D954
etb_8000D954:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D954, 8

.global etb_8000D95C
etb_8000D95C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D95C, 8

.global etb_8000D964
etb_8000D964:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D964, 8

.global etb_8000D96C
etb_8000D96C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D96C, 8

.global etb_8000D974
etb_8000D974:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D974, 8

.global etb_8000D97C
etb_8000D97C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D97C, 8

.global etb_8000D984
etb_8000D984:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D984, 8

.global etb_8000D98C
etb_8000D98C:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000D98C, 8

.global etb_8000D994
etb_8000D994:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D994, 8

.global etb_8000D99C
etb_8000D99C:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000D99C, 8

.global etb_8000D9A4
etb_8000D9A4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D9A4, 8

.global etb_8000D9AC
etb_8000D9AC:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000D9AC, 8

.global etb_8000D9B4
etb_8000D9B4:
    .4byte 0x30CA0000
    .4byte 0x00000000
.size etb_8000D9B4, 8

.global etb_8000D9BC
etb_8000D9BC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D9BC, 8

.global etb_8000D9C4
etb_8000D9C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D9C4, 8

.global etb_8000D9CC
etb_8000D9CC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D9CC, 8

.global etb_8000D9D4
etb_8000D9D4:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_8000D9D4, 8

.global etb_8000D9DC
etb_8000D9DC:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_8000D9DC, 8

.global etb_8000D9E4
etb_8000D9E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D9E4, 8

.global etb_8000D9EC
etb_8000D9EC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D9EC, 8

.global etb_8000D9F4
etb_8000D9F4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D9F4, 8

.global etb_8000D9FC
etb_8000D9FC:
    .4byte 0x198A0000
    .4byte 0x00000000
.size etb_8000D9FC, 8

.global etb_8000DA04
etb_8000DA04:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DA04, 8

.global etb_8000DA0C
etb_8000DA0C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DA0C, 8

.global etb_8000DA14
etb_8000DA14:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DA14, 8

.global etb_8000DA1C
etb_8000DA1C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DA1C, 8

.global etb_8000DA24
etb_8000DA24:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DA24, 8

.global etb_8000DA2C
etb_8000DA2C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DA2C, 8

.global etb_8000DA34
etb_8000DA34:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DA34, 8

.global etb_8000DA3C
etb_8000DA3C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DA3C, 8

.global etb_8000DA44
etb_8000DA44:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DA44, 8

.global etb_8000DA4C
etb_8000DA4C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DA4C, 8

.global etb_8000DA54
etb_8000DA54:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DA54, 8

.global etb_8000DA5C
etb_8000DA5C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DA5C, 8

.global etb_8000DA64
etb_8000DA64:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000DA64, 8

.global etb_8000DA6C
etb_8000DA6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DA6C, 8

.global etb_8000DA74
etb_8000DA74:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DA74, 8

.global etb_8000DA7C
etb_8000DA7C:
    .4byte 0x218A0000
    .4byte 0x00000000
.size etb_8000DA7C, 8

.global etb_8000DA84
etb_8000DA84:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000DA84, 8

.global etb_8000DA8C
etb_8000DA8C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DA8C, 8

.global etb_8000DA94
etb_8000DA94:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DA94, 8

.global etb_8000DA9C
etb_8000DA9C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000DA9C, 8

.global etb_8000DAA4
etb_8000DAA4:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_8000DAA4, 8

.global etb_8000DAAC
etb_8000DAAC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000DAAC, 8

.global etb_8000DAB4
etb_8000DAB4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DAB4, 8

.global etb_8000DABC
etb_8000DABC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DABC, 8

.global etb_8000DAC4
etb_8000DAC4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DAC4, 8

.global etb_8000DACC
etb_8000DACC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DACC, 8

.global etb_8000DAD4
etb_8000DAD4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DAD4, 8

.global etb_8000DADC
etb_8000DADC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DADC, 8

.global etb_8000DAE4
etb_8000DAE4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DAE4, 8

.global etb_8000DAEC
etb_8000DAEC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000DAEC, 8

.global etb_8000DAF4
etb_8000DAF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DAF4, 8

.global etb_8000DAFC
etb_8000DAFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DAFC, 8

.global etb_8000DB04
etb_8000DB04:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DB04, 8

.global etb_8000DB0C
etb_8000DB0C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DB0C, 8

.global etb_8000DB14
etb_8000DB14:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000DB14, 8

.global etb_8000DB1C
etb_8000DB1C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000DB1C, 8

.global etb_8000DB24
etb_8000DB24:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DB24, 8

.global etb_8000DB2C
etb_8000DB2C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DB2C, 8

.global etb_8000DB34
etb_8000DB34:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DB34, 8

.global etb_8000DB3C
etb_8000DB3C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DB3C, 8

.global etb_8000DB44
etb_8000DB44:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DB44, 8

.global etb_8000DB4C
etb_8000DB4C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DB4C, 8

.global etb_8000DB54
etb_8000DB54:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000DB54, 8

.global etb_8000DB5C
etb_8000DB5C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DB5C, 8

.global etb_8000DB64
etb_8000DB64:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DB64, 8

.global etb_8000DB6C
etb_8000DB6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DB6C, 8

.global etb_8000DB74
etb_8000DB74:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DB74, 8

.global etb_8000DB7C
etb_8000DB7C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DB7C, 8

.global etb_8000DB84
etb_8000DB84:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000DB84, 8

.global etb_8000DB8C
etb_8000DB8C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DB8C, 8

.global etb_8000DB94
etb_8000DB94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DB94, 8

.global etb_8000DB9C
etb_8000DB9C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DB9C, 8

.global etb_8000DBA4
etb_8000DBA4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000DBA4, 8

.global etb_8000DBAC
etb_8000DBAC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DBAC, 8

.global etb_8000DBB4
etb_8000DBB4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DBB4, 8

.global etb_8000DBBC
etb_8000DBBC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000DBBC, 8

.global etb_8000DBC4
etb_8000DBC4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000DBC4, 8

.global etb_8000DBCC
etb_8000DBCC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000DBCC, 8

.global etb_8000DBD4
etb_8000DBD4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000DBD4, 8

.section extabindex, "a"
.balign 4
.global eti_8001CE28
eti_8001CE28:
    .4byte fn_80317EB8
    .4byte 0x00000060
    .4byte etb_8000D92C
.size eti_8001CE28, 12

.global eti_8001CE34
eti_8001CE34:
    .4byte fn_80317F18
    .4byte 0x00000344
    .4byte etb_8000D934
.size eti_8001CE34, 12

.global eti_8001CE40
eti_8001CE40:
    .4byte fn_8031825C
    .4byte 0x0000034C
    .4byte etb_8000D93C
.size eti_8001CE40, 12

.global eti_8001CE4C
eti_8001CE4C:
    .4byte fn_803185A8
    .4byte 0x0000024C
    .4byte etb_8000D944
.size eti_8001CE4C, 12

.global eti_8001CE58
eti_8001CE58:
    .4byte fn_803187F4
    .4byte 0x00000390
    .4byte etb_8000D94C
.size eti_8001CE58, 12

.global eti_8001CE64
eti_8001CE64:
    .4byte fn_80318B84
    .4byte 0x000001F0
    .4byte etb_8000D954
.size eti_8001CE64, 12

.global eti_8001CE70
eti_8001CE70:
    .4byte fn_80318D74
    .4byte 0x0000036C
    .4byte etb_8000D95C
.size eti_8001CE70, 12

.global eti_8001CE7C
eti_8001CE7C:
    .4byte fn_803190E0
    .4byte 0x000002D4
    .4byte etb_8000D964
.size eti_8001CE7C, 12

.global eti_8001CE88
eti_8001CE88:
    .4byte fn_803193B4
    .4byte 0x000002A4
    .4byte etb_8000D96C
.size eti_8001CE88, 12

.global eti_8001CE94
eti_8001CE94:
    .4byte fn_80319658
    .4byte 0x00000218
    .4byte etb_8000D974
.size eti_8001CE94, 12

.global eti_8001CEA0
eti_8001CEA0:
    .4byte fn_80319870
    .4byte 0x0000013C
    .4byte etb_8000D97C
.size eti_8001CEA0, 12

.global eti_8001CEAC
eti_8001CEAC:
    .4byte fn_803199AC
    .4byte 0x000000AC
    .4byte etb_8000D984
.size eti_8001CEAC, 12

.global eti_8001CEB8
eti_8001CEB8:
    .4byte fn_80319A58
    .4byte 0x000000F4
    .4byte etb_8000D98C
.size eti_8001CEB8, 12

.global eti_8001CEC4
eti_8001CEC4:
    .4byte fn_80319B4C
    .4byte 0x000003AC
    .4byte etb_8000D994
.size eti_8001CEC4, 12

.global eti_8001CED0
eti_8001CED0:
    .4byte fn_80319EF8
    .4byte 0x00000318
    .4byte etb_8000D99C
.size eti_8001CED0, 12

.global eti_8001CEDC
eti_8001CEDC:
    .4byte fn_8031A210
    .4byte 0x00000060
    .4byte etb_8000D9A4
.size eti_8001CEDC, 12

.global eti_8001CEE8
eti_8001CEE8:
    .4byte fn_8031A270
    .4byte 0x00000434
    .4byte etb_8000D9AC
.size eti_8001CEE8, 12

.global eti_8001CEF4
eti_8001CEF4:
    .4byte fn_8031A6A4
    .4byte 0x000012F0
    .4byte etb_8000D9B4
.size eti_8001CEF4, 12

.global eti_8001CF00
eti_8001CF00:
    .4byte fn_8031B994
    .4byte 0x00000498
    .4byte etb_8000D9BC
.size eti_8001CF00, 12

.global eti_8001CF0C
eti_8001CF0C:
    .4byte fn_8031BE2C
    .4byte 0x00000224
    .4byte etb_8000D9C4
.size eti_8001CF0C, 12

.global eti_8001CF18
eti_8001CF18:
    .4byte fn_8031C050
    .4byte 0x00000060
    .4byte etb_8000D9CC
.size eti_8001CF18, 12

.global eti_8001CF24
eti_8001CF24:
    .4byte fn_8031C0B0
    .4byte 0x000004E8
    .4byte etb_8000D9D4
.size eti_8001CF24, 12

.global eti_8001CF30
eti_8001CF30:
    .4byte fn_8031C598
    .4byte 0x00001518
    .4byte etb_8000D9DC
.size eti_8001CF30, 12

.global eti_8001CF3C
eti_8001CF3C:
    .4byte fn_8031DAB0
    .4byte 0x00000278
    .4byte etb_8000D9E4
.size eti_8001CF3C, 12

.global eti_8001CF48
eti_8001CF48:
    .4byte fn_8031DD28
    .4byte 0x000001F8
    .4byte etb_8000D9EC
.size eti_8001CF48, 12

.global eti_8001CF54
eti_8001CF54:
    .4byte fn_8031DF20
    .4byte 0x00000224
    .4byte etb_8000D9F4
.size eti_8001CF54, 12

.global eti_8001CF60
eti_8001CF60:
    .4byte fn_8031E144
    .4byte 0x000004FC
    .4byte etb_8000D9FC
.size eti_8001CF60, 12

.global eti_8001CF6C
eti_8001CF6C:
    .4byte fn_8031E640
    .4byte 0x000003FC
    .4byte etb_8000DA04
.size eti_8001CF6C, 12

.global eti_8001CF78
eti_8001CF78:
    .4byte fn_8031EA3C
    .4byte 0x000000EC
    .4byte etb_8000DA0C
.size eti_8001CF78, 12

.global eti_8001CF84
eti_8001CF84:
    .4byte fn_8031EB28
    .4byte 0x00000194
    .4byte etb_8000DA14
.size eti_8001CF84, 12

.global eti_8001CF90
eti_8001CF90:
    .4byte fn_8031ECBC
    .4byte 0x0000006C
    .4byte etb_8000DA1C
.size eti_8001CF90, 12

.global eti_8001CF9C
eti_8001CF9C:
    .4byte fn_8031ED28
    .4byte 0x00000224
    .4byte etb_8000DA24
.size eti_8001CF9C, 12

.global eti_8001CFA8
eti_8001CFA8:
    .4byte fn_8031EF4C
    .4byte 0x00000060
    .4byte etb_8000DA2C
.size eti_8001CFA8, 12

.global eti_8001CFB4
eti_8001CFB4:
    .4byte fn_8031EFAC
    .4byte 0x000001E4
    .4byte etb_8000DA34
.size eti_8001CFB4, 12

.global eti_8001CFC0
eti_8001CFC0:
    .4byte fn_8031F190
    .4byte 0x000007EC
    .4byte etb_8000DA3C
.size eti_8001CFC0, 12

.global eti_8001CFCC
eti_8001CFCC:
    .4byte fn_8031F97C
    .4byte 0x000001C0
    .4byte etb_8000DA44
.size eti_8001CFCC, 12

.global eti_8001CFD8
eti_8001CFD8:
    .4byte fn_8031FB3C
    .4byte 0x00000224
    .4byte etb_8000DA4C
.size eti_8001CFD8, 12

.global eti_8001CFE4
eti_8001CFE4:
    .4byte fn_8031FD60
    .4byte 0x00000060
    .4byte etb_8000DA54
.size eti_8001CFE4, 12

.global eti_8001CFF0
eti_8001CFF0:
    .4byte fn_8031FDC0
    .4byte 0x00000264
    .4byte etb_8000DA5C
.size eti_8001CFF0, 12

.global eti_8001CFFC
eti_8001CFFC:
    .4byte fn_80320024
    .4byte 0x0000012C
    .4byte etb_8000DA64
.size eti_8001CFFC, 12

.global eti_8001D008
eti_8001D008:
    .4byte fn_80320150
    .4byte 0x00000224
    .4byte etb_8000DA6C
.size eti_8001D008, 12

.global eti_8001D014
eti_8001D014:
    .4byte fn_80320374
    .4byte 0x000009A4
    .4byte etb_8000DA74
.size eti_8001D014, 12

.global eti_8001D020
eti_8001D020:
    .4byte fn_80320D18
    .4byte 0x000004E8
    .4byte etb_8000DA7C
.size eti_8001D020, 12

.global eti_8001D02C
eti_8001D02C:
    .4byte fn_80321200
    .4byte 0x00000FF4
    .4byte etb_8000DA84
.size eti_8001D02C, 12

.global eti_8001D038
eti_8001D038:
    .4byte fn_8032221C
    .4byte 0x000004D0
    .4byte etb_8000DA8C
.size eti_8001D038, 12

.global eti_8001D044
eti_8001D044:
    .4byte fn_803226EC
    .4byte 0x00000278
    .4byte etb_8000DA94
.size eti_8001D044, 12

.global eti_8001D050
eti_8001D050:
    .4byte fn_80322964
    .4byte 0x00000260
    .4byte etb_8000DA9C
.size eti_8001D050, 12

.global eti_8001D05C
eti_8001D05C:
    .4byte fn_80322BC4
    .4byte 0x00000380
    .4byte etb_8000DAA4
.size eti_8001D05C, 12

.global eti_8001D068
eti_8001D068:
    .4byte fn_80322F44
    .4byte 0x00000374
    .4byte etb_8000DAAC
.size eti_8001D068, 12

.global eti_8001D074
eti_8001D074:
    .4byte fn_803232B8
    .4byte 0x0000017C
    .4byte etb_8000DAB4
.size eti_8001D074, 12

.global eti_8001D080
eti_8001D080:
    .4byte fn_80323434
    .4byte 0x000002D4
    .4byte etb_8000DABC
.size eti_8001D080, 12

.global eti_8001D08C
eti_8001D08C:
    .4byte fn_80323708
    .4byte 0x00000074
    .4byte etb_8000DAC4
.size eti_8001D08C, 12

.global eti_8001D098
eti_8001D098:
    .4byte fn_8032377C
    .4byte 0x00000224
    .4byte etb_8000DACC
.size eti_8001D098, 12

.global eti_8001D0A4
eti_8001D0A4:
    .4byte fn_803239A0
    .4byte 0x000001C8
    .4byte etb_8000DAD4
.size eti_8001D0A4, 12

.global eti_8001D0B0
eti_8001D0B0:
    .4byte fn_80323B68
    .4byte 0x00000A08
    .4byte etb_8000DADC
.size eti_8001D0B0, 12

.global eti_8001D0BC
eti_8001D0BC:
    .4byte fn_80324570
    .4byte 0x0000006C
    .4byte etb_8000DAE4
.size eti_8001D0BC, 12

.global eti_8001D0C8
eti_8001D0C8:
    .4byte fn_803245DC
    .4byte 0x000004E8
    .4byte etb_8000DAEC
.size eti_8001D0C8, 12

.global eti_8001D0D4
eti_8001D0D4:
    .4byte fn_80324AC4
    .4byte 0x00000324
    .4byte etb_8000DAF4
.size eti_8001D0D4, 12

.global eti_8001D0E0
eti_8001D0E0:
    .4byte fn_80324DE8
    .4byte 0x00000224
    .4byte etb_8000DAFC
.size eti_8001D0E0, 12

.global eti_8001D0EC
eti_8001D0EC:
    .4byte fn_8032500C
    .4byte 0x00000060
    .4byte etb_8000DB04
.size eti_8001D0EC, 12

.global eti_8001D0F8
eti_8001D0F8:
    .4byte fn_8032506C
    .4byte 0x000004DC
    .4byte etb_8000DB0C
.size eti_8001D0F8, 12

.global eti_8001D104
eti_8001D104:
    .4byte fn_80325548
    .4byte 0x0000020C
    .4byte etb_8000DB14
.size eti_8001D104, 12

.global eti_8001D110
eti_8001D110:
    .4byte fn_80325754
    .4byte 0x000002DC
    .4byte etb_8000DB1C
.size eti_8001D110, 12

.global eti_8001D11C
eti_8001D11C:
    .4byte fn_80325A30
    .4byte 0x00000780
    .4byte etb_8000DB24
.size eti_8001D11C, 12

.global eti_8001D128
eti_8001D128:
    .4byte fn_803261B0
    .4byte 0x00000058
    .4byte etb_8000DB2C
.size eti_8001D128, 12

.global eti_8001D134
eti_8001D134:
    .4byte fn_80326208
    .4byte 0x000002B8
    .4byte etb_8000DB34
.size eti_8001D134, 12

.global eti_8001D140
eti_8001D140:
    .4byte fn_803264C0
    .4byte 0x000003AC
    .4byte etb_8000DB3C
.size eti_8001D140, 12

.global eti_8001D14C
eti_8001D14C:
    .4byte fn_8032686C
    .4byte 0x00000224
    .4byte etb_8000DB44
.size eti_8001D14C, 12

.global eti_8001D158
eti_8001D158:
    .4byte fn_80326A90
    .4byte 0x000001CC
    .4byte etb_8000DB4C
.size eti_8001D158, 12

.global eti_8001D164
eti_8001D164:
    .4byte fn_80326C5C
    .4byte 0x000005D0
    .4byte etb_8000DB54
.size eti_8001D164, 12

.global eti_8001D170
eti_8001D170:
    .4byte fn_8032722C
    .4byte 0x000001B4
    .4byte etb_8000DB5C
.size eti_8001D170, 12

.global eti_8001D17C
eti_8001D17C:
    .4byte fn_8032742C
    .4byte 0x00000074
    .4byte etb_8000DB64
.size eti_8001D17C, 12

.global eti_8001D188
eti_8001D188:
    .4byte fn_803274A0
    .4byte 0x00000224
    .4byte etb_8000DB6C
.size eti_8001D188, 12

.global eti_8001D194
eti_8001D194:
    .4byte fn_803276C4
    .4byte 0x00000060
    .4byte etb_8000DB74
.size eti_8001D194, 12

.global eti_8001D1A0
eti_8001D1A0:
    .4byte fn_80327724
    .4byte 0x000002AC
    .4byte etb_8000DB7C
.size eti_8001D1A0, 12

.global eti_8001D1AC
eti_8001D1AC:
    .4byte fn_803279D0
    .4byte 0x00000A2C
    .4byte etb_8000DB84
.size eti_8001D1AC, 12

.global eti_8001D1B8
eti_8001D1B8:
    .4byte fn_803283FC
    .4byte 0x000001D0
    .4byte etb_8000DB8C
.size eti_8001D1B8, 12

.global eti_8001D1C4
eti_8001D1C4:
    .4byte fn_803285CC
    .4byte 0x00000224
    .4byte etb_8000DB94
.size eti_8001D1C4, 12

.global eti_8001D1D0
eti_8001D1D0:
    .4byte fn_803287F0
    .4byte 0x00000060
    .4byte etb_8000DB9C
.size eti_8001D1D0, 12

.global eti_8001D1DC
eti_8001D1DC:
    .4byte fn_80328850
    .4byte 0x00000050
    .4byte etb_8000DBA4
.size eti_8001D1DC, 12

.global eti_8001D1E8
eti_8001D1E8:
    .4byte fn_803288A0
    .4byte 0x00000228
    .4byte etb_8000DBAC
.size eti_8001D1E8, 12

.global eti_8001D1F4
eti_8001D1F4:
    .4byte fn_80328B48
    .4byte 0x00000224
    .4byte etb_8000DBB4
.size eti_8001D1F4, 12

.global eti_8001D200
eti_8001D200:
    .4byte fn_80328D6C
    .4byte 0x00000060
    .4byte etb_8000DBBC
.size eti_8001D200, 12

.global eti_8001D20C
eti_8001D20C:
    .4byte fn_80328DCC
    .4byte 0x000000B0
    .4byte etb_8000DBC4
.size eti_8001D20C, 12

.global eti_8001D218
eti_8001D218:
    .4byte fn_80328E7C
    .4byte 0x00000358
    .4byte etb_8000DBCC
.size eti_8001D218, 12

.global eti_8001D224
eti_8001D224:
    .4byte fn_80329244
    .4byte 0x00000224
    .4byte etb_8000DBD4
.size eti_8001D224, 12

.text
.balign 4
.global fn_80317EB8
.global fn_80317F18
.global fn_8031825C
.global fn_803185A8
.global fn_803187F4
.global fn_80318B84
.global fn_80318D74
.global fn_803190E0
.global fn_803193B4
.global fn_80319658
.global fn_80319870
.global fn_803199AC
.global fn_80319A58
.global fn_80319B4C
.global fn_80319EF8
.global fn_8031A210
.global fn_8031A270
.global fn_8031A6A4
.global fn_8031B994
.global fn_8031BE2C
.global fn_8031C050
.global fn_8031C0B0
.global fn_8031C598
.global fn_8031DAB0
.global fn_8031DD28
.global fn_8031DF20
.global fn_8031E144
.global fn_8031E640
.global fn_8031EA3C
.global fn_8031EB28
.global fn_8031ECBC
.global fn_8031ED28
.global fn_8031EF4C
.global fn_8031EFAC
.global fn_8031F190
.global fn_8031F97C
.global fn_8031FB3C
.global fn_8031FD60
.global fn_8031FDC0
.global fn_80320024
.global fn_80320150
.global fn_80320374
.global fn_80320D18
.global fn_80321200
.global fn_803221F4
.global fn_8032221C
.global fn_803226EC
.global fn_80322964
.global fn_80322BC4
.global fn_80322F44
.global fn_803232B8
.global fn_80323434
.global fn_80323708
.global fn_8032377C
.global fn_803239A0
.global fn_80323B68
.global fn_80324570
.global fn_803245DC
.global fn_80324AC4
.global fn_80324DE8
.global fn_8032500C
.global fn_8032506C
.global fn_80325548
.global fn_80325754
.global fn_80325A30
.global fn_803261B0
.global fn_80326208
.global fn_803264C0
.global fn_8032686C
.global fn_80326A90
.global fn_80326C5C
.global fn_8032722C
.global fn_803273E0
.global fn_8032742C
.global fn_803274A0
.global fn_803276C4
.global fn_80327724
.global fn_803279D0
.global fn_803283FC
.global fn_803285CC
.global fn_803287F0
.global fn_80328850
.global fn_803288A0
.global fn_80328AC8
.global fn_80328B48
.global fn_80328D6C
.global fn_80328DCC
.global fn_80328E7C
.global fn_803291D4
.global fn_80329244

fn_80317EB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80317EFC
    lis 5, lbl_804AAFB8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AAFB8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80317EFC
    mr 3, 30
    bl dtor_80084580
L_80317EFC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80317F18:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 1, 0x14
    stw 30, 0x28(1)
    lfs 1, 0x60(31)
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    bl GetRoomConfigRecord
    li 4, 0x1e
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80317FA8
    lwz 0, 0x264(31)
    cmpwi 0, 0x2
    .4byte 0x4182001C # beq .L_80317FC0
L_80317FA8:
    bl GetRoomConfigRecord
    li 4, 0x1e
    bl fn_802D800C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820210 # bne .L_803181CC
L_80317FC0:
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x14(1)
    stw 0, 0x18(1)
    lfs 3, 0x14(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x18(1)
    stw 3, 0x1c(1)
    stw 0, 0x20(1)
    lfs 1, 0x1c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x20(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x14(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x1c(1)
    fadds 0, 0, 3
    stfs 2, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418200FC # beq .L_8031811C
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800184 # blt .L_803181CC
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820178 # beq .L_803181CC
    lwz 4, 0x244(31)
    addi 7, 1, 0x8
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8031809C
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_803180A0
L_8031809C:
    li 0, 0x0
L_803180A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820128 # beq .L_803181CC
    bl GetRoomConfigRecord
    li 4, 0x1e
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820114 # bne .L_803181CC
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800108 # blt .L_803181CC
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200F4 # beq .L_803181CC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x408200E4 # bne .L_803181CC
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_80318110
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_80318110
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80318110
    cmplwi 0, 0x8
    .4byte 0x408200C0 # bne .L_803181CC
L_80318110:
    li 0, 0x3
    stw 0, 0x264(3)
    .4byte 0x480000B4 # b .L_803181CC
L_8031811C:
    lwz 3, 0x234(31)
    addi 4, 1, 0x14
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_803181CC
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    bl GetRoomConfigRecord
    li 4, 0x1f
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_803181CC
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800054 # blt .L_803181CC
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_803181CC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x40820030 # bne .L_803181CC
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_803181C4
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_803181C4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803181C4
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_803181CC
L_803181C4:
    li 0, 0x2
    stw 0, 0x264(3)
L_803181CC:
    lwz 3, 0x260(31)
    subi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x41810064 # bgt .L_80318244
    lwz 0, 0x264(31)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8031820C
    lwz 0, 0x25c(31)
    lis 3, lbl_804AAF88@ha
    addi 3, 3, lbl_804AAF88@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x25c(31)
    .4byte 0x4800001C # b .L_80318224
L_8031820C:
    lwz 0, 0x25c(31)
    lis 3, lbl_804AAFA0@ha
    addi 3, 3, lbl_804AAFA0@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x25c(31)
L_80318224:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_8031823C
    li 0, 0x14
    stw 0, 0x260(31)
    .4byte 0x4800000C # b .L_80318244
L_8031823C:
    li 0, 0x8
    stw 0, 0x260(31)
L_80318244:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8031825C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 1, 0x14
    stw 30, 0x28(1)
    lfs 1, 0x60(31)
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    bl GetRoomConfigRecord
    li 4, 0x1f
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_803182EC
    lwz 0, 0x264(31)
    cmpwi 0, 0x2
    .4byte 0x4182001C # beq .L_80318304
L_803182EC:
    bl GetRoomConfigRecord
    li 4, 0x1f
    bl fn_802D800C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820210 # bne .L_80318510
L_80318304:
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x14(1)
    stw 0, 0x18(1)
    lfs 3, 0x14(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x18(1)
    stw 3, 0x1c(1)
    stw 0, 0x20(1)
    lfs 1, 0x1c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x20(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x14(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x1c(1)
    fadds 0, 0, 3
    stfs 2, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418200FC # beq .L_80318460
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800184 # blt .L_80318510
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820178 # beq .L_80318510
    lwz 4, 0x244(31)
    addi 7, 1, 0x8
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_803183E0
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_803183E4
L_803183E0:
    li 0, 0x0
L_803183E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820128 # beq .L_80318510
    bl GetRoomConfigRecord
    li 4, 0x1f
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820114 # bne .L_80318510
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800108 # blt .L_80318510
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200F4 # beq .L_80318510
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x408200E4 # bne .L_80318510
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_80318454
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_80318454
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80318454
    cmplwi 0, 0x8
    .4byte 0x408200C0 # bne .L_80318510
L_80318454:
    li 0, 0x3
    stw 0, 0x264(3)
    .4byte 0x480000B4 # b .L_80318510
L_80318460:
    lwz 3, 0x234(31)
    addi 4, 1, 0x14
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80318510
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    bl GetRoomConfigRecord
    li 4, 0x1e
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_80318510
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800054 # blt .L_80318510
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80318510
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x40820030 # bne .L_80318510
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_80318508
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_80318508
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80318508
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_80318510
L_80318508:
    li 0, 0x2
    stw 0, 0x264(3)
L_80318510:
    lwz 3, 0x260(31)
    subi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x4181006C # bgt .L_80318590
    lwz 0, 0x264(31)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_80318550
    lwz 0, 0x25c(31)
    lis 3, lbl_804AAF58@ha
    addi 3, 3, lbl_804AAF58@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x25c(31)
    .4byte 0x4800001C # b .L_80318568
L_80318550:
    lwz 0, 0x25c(31)
    lis 3, lbl_804AAF70@ha
    addi 3, 3, lbl_804AAF70@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x25c(31)
L_80318568:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_8031857C
    cmpwi 0, 0x5
    .4byte 0x40820010 # bne .L_80318588
L_8031857C:
    li 0, 0x8
    stw 0, 0x260(31)
    .4byte 0x4800000C # b .L_80318590
L_80318588:
    li 0, 0xa
    stw 0, 0x260(31)
L_80318590:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803185A8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 1, 0x14
    stw 30, 0x28(1)
    lfs 1, 0x60(31)
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x14(1)
    stw 0, 0x18(1)
    lfs 3, 0x14(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x18(1)
    stw 3, 0x1c(1)
    stw 0, 0x20(1)
    lfs 1, 0x1c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x20(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x14(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x1c(1)
    fadds 0, 0, 3
    stfs 2, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182007C # beq .L_803186F4
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800094 # blt .L_80318734
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_80318734
    lwz 4, 0x244(31)
    addi 7, 1, 0x8
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80318734
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_80318734
L_803186F4:
    lwz 3, 0x234(31)
    addi 4, 1, 0x14
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80318734
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_80318734:
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 3, 0x25c(31)
    cmpwi 3, 0x2
    .4byte 0x40800010 # bge .L_80318758
    lwz 0, 0x260(31)
    cmpwi 0, 0x10
    .4byte 0x40800018 # bge .L_8031876C
L_80318758:
    cmpwi 3, 0x2
    .4byte 0x41800080 # blt .L_803187DC
    lwz 0, 0x260(31)
    cmpwi 0, 0xa
    .4byte 0x41800074 # blt .L_803187DC
L_8031876C:
    li 0, 0x0
    stw 0, 0x260(31)
    bl GetRoomConfigRecord
    li 4, 0x2
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_803187C4
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x6
    .4byte 0x4180000C # blt .L_803187A8
    li 0, 0x0
    stw 0, 0x264(31)
L_803187A8:
    lwz 0, 0x264(31)
    lis 3, lbl_804AAF40@ha
    addi 3, 3, lbl_804AAF40@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x25c(31)
    .4byte 0x4800001C # b .L_803187DC
L_803187C4:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 31
    stw 0, 0x25c(31)
L_803187DC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803187F4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    addi 3, 1, 0x24
    stw 30, 0x48(1)
    lfs 1, 0x60(31)
    stfs 1, 0x24(1)
    lfs 4, 0x64(31)
    stfs 4, 0x28(1)
    lfs 2, 0x68(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x24(1)
    stw 0, 0x28(1)
    lfs 3, 0x24(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x28(1)
    stw 3, 0x2c(1)
    stw 0, 0x30(1)
    lfs 1, 0x2c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x30(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x24(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x2c(1)
    fadds 0, 0, 3
    stfs 2, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820218 # beq .L_80318ADC
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_803189D8
    li 0, 0x14
    stw 0, 0x268(31)
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_803188F8
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_80318910
L_803188F8:
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_80318928
L_80318910:
    lwz 6, 0x234(31)
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_80318928:
    lfs 1, 0x8(1)
    .4byte 0xC002E958 # lfs f0, lbl_805418F8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_803189CC
    lfs 1, 0x18(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x1c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E95C # lfs f0, lbl_805418FC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8031897C
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80318988
L_8031897C:
    li 0, 0x3
    stw 0, 0x264(31)
    .4byte 0x4800005C # b .L_803189E0
L_80318988:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_803189A4
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_803189A4
    li 0, 0x1
    stw 0, 0x264(31)
    .4byte 0x48000040 # b .L_803189E0
L_803189A4:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_803189C0
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_803189C0
    li 0, 0x2
    stw 0, 0x264(31)
    .4byte 0x48000024 # b .L_803189E0
L_803189C0:
    li 0, 0x0
    stw 0, 0x264(31)
    .4byte 0x48000018 # b .L_803189E0
L_803189CC:
    li 0, 0x2
    stw 0, 0x264(31)
    .4byte 0x4800000C # b .L_803189E0
L_803189D8:
    subi 0, 3, 0x1
    stw 0, 0x268(31)
L_803189E0:
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x418200D4 # beq .L_80318ABC
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x418000AC # blt .L_80318ABC
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_80318ABC
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7F40
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80318A44
    li 0, 0x578
    stw 0, 0x244(31)
    .4byte 0x4800000C # b .L_80318A4C
L_80318A44:
    li 0, 0x577
    stw 0, 0x244(31)
L_80318A4C:
    lwz 4, 0x244(31)
    addi 7, 1, 0xc
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80318A90
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_80318A94
L_80318A90:
    li 0, 0x0
L_80318A94:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80318ABC
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 31
    stw 0, 0x25c(31)
    lwz 0, 0x264(31)
    lwz 3, 0x25c(31)
    slwi 0, 0, 1
    or 0, 3, 0
    stw 0, 0x25c(31)
L_80318ABC:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_80318B40
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x264(31)
    stw 0, 0x268(31)
    .4byte 0x48000068 # b .L_80318B40
L_80318ADC:
    lwz 3, 0x234(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80318B40
    li 0, -0x1
    li 3, 0x0
    stw 0, 0x234(31)
    li 0, 0x2
    stw 3, 0x230(31)
    stw 0, 0x264(31)
    stw 3, 0x268(31)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 31
    stw 0, 0x25c(31)
    lwz 3, 0x25c(31)
    addi 0, 3, 0x4
    stw 0, 0x25c(31)
L_80318B40:
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x18
    .4byte 0x41800018 # blt .L_80318B6C
    li 0, 0x0
    stw 0, 0x260(31)
    lwz 0, 0x25c(31)
    xori 0, 0, 0x1
    stw 0, 0x25c(31)
L_80318B6C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80318B84:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 1, 0x14
    stw 30, 0x28(1)
    lfs 1, 0x60(31)
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x14(1)
    stw 0, 0x18(1)
    lfs 3, 0x14(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x18(1)
    stw 3, 0x1c(1)
    stw 0, 0x20(1)
    lfs 1, 0x1c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x20(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x14(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x1c(1)
    fadds 0, 0, 3
    stfs 2, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182007C # beq .L_80318CD0
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800094 # blt .L_80318D10
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_80318D10
    lwz 4, 0x244(31)
    addi 7, 1, 0x8
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80318D10
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_80318D10
L_80318CD0:
    lwz 3, 0x234(31)
    addi 4, 1, 0x14
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80318D10
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_80318D10:
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 3, 0x25c(31)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_80318D34
    lwz 0, 0x260(31)
    cmpwi 0, 0x10
    .4byte 0x40800018 # bge .L_80318D48
L_80318D34:
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_80318D5C
    lwz 0, 0x260(31)
    cmpwi 0, 0x32
    .4byte 0x41800018 # blt .L_80318D5C
L_80318D48:
    li 0, 0x0
    stw 0, 0x260(31)
    lwz 0, 0x25c(31)
    xori 0, 0, 0x1
    stw 0, 0x25c(31)
L_80318D5C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80318D74:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    addi 3, 1, 0x24
    stw 30, 0x48(1)
    lfs 1, 0x60(31)
    stfs 1, 0x24(1)
    lfs 4, 0x64(31)
    stfs 4, 0x28(1)
    lfs 2, 0x68(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x24(1)
    stw 0, 0x28(1)
    lfs 3, 0x24(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x28(1)
    stw 3, 0x2c(1)
    stw 0, 0x30(1)
    lfs 1, 0x2c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x30(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x24(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x2c(1)
    fadds 0, 0, 3
    stfs 2, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_80318EE4
    bl GetRoomConfigRecord
    li 4, 0x2
    bl fn_802D7F40
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80318E6C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000260 # b .L_803190C8
L_80318E6C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800094 # blt .L_80318F24
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_80318F24
    lwz 4, 0x244(31)
    addi 7, 1, 0x18
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x20(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80318F24
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_80318F24
L_80318EE4:
    lwz 3, 0x234(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80318F24
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_80318F24:
    lwz 0, 0x23c(31)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_80318F60
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x8
    .4byte 0x41800184 # blt .L_803190C8
    li 0, 0x0
    stw 0, 0x260(31)
    lwz 0, 0x25c(31)
    xori 0, 0, 0x1
    stw 0, 0x25c(31)
    .4byte 0x4800016C # b .L_803190C8
L_80318F60:
    lwz 3, 0x260(31)
    subi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_80318F98
    lwz 0, 0x25c(31)
    .4byte 0x386D85F0 # li r3, lbl_8053A1B0@sda21
    xori 0, 0, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 31
    lbzx 0, 3, 0
    stw 0, 0x260(31)
L_80318F98:
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_803190A8
    li 0, 0x14
    stw 0, 0x268(31)
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80318FC8
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_80318FE0
L_80318FC8:
    mr 3, 31
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_80318FF8
L_80318FE0:
    lwz 6, 0x234(31)
    mr 3, 31
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_80318FF8:
    lfs 1, 0x8(1)
    .4byte 0xC002E958 # lfs f0, lbl_805418F8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_8031909C
    lfs 1, 0xc(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E95C # lfs f0, lbl_805418FC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8031904C
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80319058
L_8031904C:
    li 0, 0x3
    stw 0, 0x264(31)
    .4byte 0x4800005C # b .L_803190B0
L_80319058:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80319074
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80319074
    li 0, 0x1
    stw 0, 0x264(31)
    .4byte 0x48000040 # b .L_803190B0
L_80319074:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80319090
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80319090
    li 0, 0x2
    stw 0, 0x264(31)
    .4byte 0x48000024 # b .L_803190B0
L_80319090:
    li 0, 0x0
    stw 0, 0x264(31)
    .4byte 0x48000018 # b .L_803190B0
L_8031909C:
    li 0, 0x2
    stw 0, 0x264(31)
    .4byte 0x4800000C # b .L_803190B0
L_803190A8:
    subi 0, 3, 0x1
    stw 0, 0x268(31)
L_803190B0:
    lwz 3, 0x25c(31)
    lwz 0, 0x264(31)
    clrlwi 3, 3, 31
    slwi 0, 0, 1
    add 0, 3, 0
    stw 0, 0x25c(31)
L_803190C8:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803190E0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    addi 3, 1, 0x24
    stw 30, 0x48(1)
    lfs 1, 0x60(31)
    stfs 1, 0x24(1)
    lfs 4, 0x64(31)
    stfs 4, 0x28(1)
    lfs 2, 0x68(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x24(1)
    stw 0, 0x28(1)
    lfs 3, 0x24(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x28(1)
    stw 3, 0x2c(1)
    stw 0, 0x30(1)
    lfs 1, 0x2c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x30(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x24(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x2c(1)
    fadds 0, 0, 3
    stfs 2, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182007C # beq .L_8031922C
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800094 # blt .L_8031926C
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_8031926C
    lwz 4, 0x244(31)
    addi 7, 1, 0x18
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x20(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_8031926C
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_8031926C
L_8031922C:
    lwz 3, 0x234(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8031926C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8031926C:
    lwz 0, 0x23c(31)
    cmplwi 0, 0x1
    .4byte 0x40820128 # bne .L_8031939C
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_80319388
    li 0, 0x14
    stw 0, 0x268(31)
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_803192A8
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_803192C0
L_803192A8:
    mr 3, 31
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_803192D8
L_803192C0:
    lwz 6, 0x234(31)
    mr 3, 31
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_803192D8:
    lfs 1, 0x8(1)
    .4byte 0xC002E958 # lfs f0, lbl_805418F8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_8031937C
    lfs 1, 0xc(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E95C # lfs f0, lbl_805418FC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8031932C
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80319338
L_8031932C:
    li 0, 0x3
    stw 0, 0x264(31)
    .4byte 0x4800005C # b .L_80319390
L_80319338:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80319354
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80319354
    li 0, 0x1
    stw 0, 0x264(31)
    .4byte 0x48000040 # b .L_80319390
L_80319354:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80319370
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80319370
    li 0, 0x2
    stw 0, 0x264(31)
    .4byte 0x48000024 # b .L_80319390
L_80319370:
    li 0, 0x0
    stw 0, 0x264(31)
    .4byte 0x48000018 # b .L_80319390
L_8031937C:
    li 0, 0x2
    stw 0, 0x264(31)
    .4byte 0x4800000C # b .L_80319390
L_80319388:
    subi 0, 3, 0x1
    stw 0, 0x268(31)
L_80319390:
    lwz 0, 0x264(31)
    slwi 0, 0, 3
    stw 0, 0x25c(31)
L_8031939C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803193B4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 1, 0x14
    stw 30, 0x28(1)
    lfs 1, 0x60(31)
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 0, 0x264(31)
    cmpwi 0, 0x2
    .4byte 0x408201E8 # bne .L_80319614
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x14(1)
    stw 0, 0x18(1)
    lfs 3, 0x14(1)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    lfs 2, 0x18(1)
    stw 3, 0x1c(1)
    stw 0, 0x20(1)
    lfs 1, 0x1c(1)
    lfs 4, 0xc(31)
    lfs 0, 0x20(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x14(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x1c(1)
    fadds 0, 0, 3
    stfs 2, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418200E8 # beq .L_80319578
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4180015C # blt .L_80319614
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820150 # beq .L_80319614
    lwz 4, 0x244(31)
    addi 7, 1, 0x8
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8031950C
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_80319510
L_8031950C:
    li 0, 0x0
L_80319510:
    clrlwi. 0, 0, 24
    .4byte 0x41820100 # beq .L_80319614
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x418000F4 # blt .L_80319614
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200E0 # beq .L_80319614
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x408200D0 # bne .L_80319614
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_8031956C
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_8031956C
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8031956C
    cmplwi 0, 0x8
    .4byte 0x408200AC # bne .L_80319614
L_8031956C:
    li 0, 0x3
    stw 0, 0x264(3)
    .4byte 0x480000A0 # b .L_80319614
L_80319578:
    lwz 3, 0x234(31)
    addi 4, 1, 0x14
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_80319614
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800054 # blt .L_80319614
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80319614
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x40820030 # bne .L_80319614
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_8031960C
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_8031960C
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8031960C
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_80319614
L_8031960C:
    li 0, 0x2
    stw 0, 0x264(3)
L_80319614:
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x28
    .4byte 0x41800018 # blt .L_80319640
    li 0, 0x0
    stw 0, 0x260(31)
    lwz 0, 0x25c(31)
    xori 0, 0, 0x1
    stw 0, 0x25c(31)
L_80319640:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80319658:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lwz 0, 0x264(3)
    cmpwi 0, 0x2
    .4byte 0x408201E0 # bne .L_80319858
    lfs 1, 0x248(31)
    stfs 1, 0x14(1)
    lfs 4, 0x24c(31)
    stfs 4, 0x18(1)
    lfs 2, 0x250(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x254(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418200F8 # beq .L_803197C4
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800164 # blt .L_80319858
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820158 # beq .L_80319858
    mr 3, 30
    bl fn_802373EC
    cmpwi 3, 0x6
    .4byte 0x40820148 # bne .L_80319858
    lwz 4, 0x244(31)
    addi 7, 1, 0x8
    lwz 5, 0x198(31)
    mr 3, 30
    lwz 6, 0x4(31)
    li 8, 0x10
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80319758
    stw 30, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_8031975C
L_80319758:
    li 0, 0x0
L_8031975C:
    clrlwi. 0, 0, 24
    .4byte 0x418200F8 # beq .L_80319858
    lwz 31, 0x258(31)
    cmpwi 31, 0x0
    .4byte 0x418000EC # blt .L_80319858
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200D8 # beq .L_80319858
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x408200C8 # bne .L_80319858
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_803197B8
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_803197B8
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803197B8
    cmplwi 0, 0x8
    .4byte 0x408200A4 # bne .L_80319858
L_803197B8:
    li 0, 0x3
    stw 0, 0x264(3)
    .4byte 0x48000098 # b .L_80319858
L_803197C4:
    lwz 3, 0x234(31)
    addi 4, 1, 0x14
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80319858
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800054 # blt .L_80319850
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80319850
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x534e
    cmplwi 0, 0x5043
    .4byte 0x40820030 # bne .L_80319850
    lwz 0, 0x238(3)
    cmplwi 0, 0x6
    .4byte 0x4182001C # beq .L_80319848
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_80319848
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80319848
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_80319850
L_80319848:
    li 0, 0x2
    stw 0, 0x264(3)
L_80319850:
    mr 3, 31
    bl fn_801F35AC
L_80319858:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80319870:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_80471638@ha
    stw 0, 0x24(1)
    addi 4, 4, lbl_80471638@l
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0x270(3)
    cmplwi 0, 0x0
    .4byte 0x41820104 # beq .L_80319998
    lwz 0, 0x23c(31)
    clrlwi 0, 0, 30
    cmpwi 0, 0x2
    .4byte 0x41820070 # beq .L_80319914
    .4byte 0x40800010 # bge .L_803198B8
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_803198C4
    .4byte 0x480000E4 # b .L_80319998
L_803198B8:
    cmpwi 0, 0x4
    .4byte 0x408000DC # bge .L_80319998
    .4byte 0x480000B4 # b .L_80319974
L_803198C4:
    .4byte 0xC022E960 # lfs f1, lbl_80541900@sda21(r0)
    addi 4, 4, 0x0
    lwz 5, 0x26c(31)
    li 6, 0x0
    lwz 0, 0x25c(31)
    fmr 2, 1
    li 7, 0x7
    add 5, 5, 0
    bl fn_801F06F0
    lwz 6, 0x26c(31)
    addi 5, 31, 0xc
    lwz 0, 0x25c(31)
    li 7, 0x0
    lwz 3, 0x198(31)
    li 8, 0x0
    lwz 4, 0x4(31)
    add 6, 6, 0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x48000088 # b .L_80319998
L_80319914:
    .4byte 0xC022E960 # lfs f1, lbl_80541900@sda21(r0)
    addi 4, 4, 0x14
    lwz 5, 0x26c(31)
    li 6, 0x0
    lwz 0, 0x25c(31)
    fmr 2, 1
    li 7, 0x7
    add 5, 5, 0
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x26c(31)
    lwz 0, 0x25c(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    add 6, 6, 0
    bl fn_803075AC
    .4byte 0x48000028 # b .L_80319998
L_80319974:
    .4byte 0xC022E960 # lfs f1, lbl_80541900@sda21(r0)
    addi 4, 4, 0x28
    lwz 5, 0x26c(31)
    li 6, 0x0
    lwz 0, 0x25c(31)
    fmr 2, 1
    li 7, 0x7
    add 5, 5, 0
    bl fn_801F06F0
L_80319998:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803199AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x240(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_80319A18
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    lwz 4, 0x240(31)
    cmplwi 4, 0x1
    .4byte 0x40820010 # bne .L_803199F4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_80319A04
L_803199F4:
    cmplwi 4, 0x2
    .4byte 0x40820018 # bne .L_80319A10
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80319A10
L_80319A04:
    li 0, 0x0
    stb 0, 0x270(31)
    .4byte 0x4800000C # b .L_80319A18
L_80319A10:
    li 0, 0x1
    stb 0, 0x270(31)
L_80319A18:
    lbz 0, 0x270(31)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_80319A44
    lwz 4, 0x238(31)
    lis 3, lbl_804AAED4@ha
    addi 0, 3, lbl_804AAED4@l
    mr 3, 31
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
L_80319A44:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80319A58:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    lwz 0, 0x238(3)
    cmplwi 0, 0x0
    .4byte 0x408200C4 # bne .L_80319B38
    bl SpatialRegistry_GetBase
    lwz 31, 0x1008(3)
    li 26, 0x0
    li 29, 0x0
    .4byte 0x480000A8 # b .L_80319B30
L_80319A8C:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 30, 3, 0
    cmplwi 30, 0x0
    .4byte 0x4182008C # beq .L_80319B28
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4a49
    cmplwi 0, 0x4a49
    .4byte 0x4082007C # bne .L_80319B28
    lwz 0, 0x4(30)
    lwz 28, 0x4(25)
    cmpw 0, 28
    .4byte 0x4082006C # bne .L_80319B28
    lwz 27, 0x90(30)
    extrwi 0, 27, 8, 8
    cmplwi 0, 0x2a
    .4byte 0x4082005C # bne .L_80319B28
    bl SpatialRegistry_GetBase
    clrlwi 0, 27, 20
    lis 4, 0x534e
    mr 5, 28
    addi 6, 30, 0xc
    addi 4, 4, 0x5043
    oris 7, 0, 0x9
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x258(25)
    lwz 27, 0x258(25)
    cmpwi 27, 0x0
    .4byte 0x41800034 # blt .L_80319B38
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    lwz 4, 0x198(25)
    li 0, 0x0
    stw 4, 0x258(3)
    stb 0, 0x11c(30)
    .4byte 0x48000014 # b .L_80319B38
L_80319B28:
    addi 29, 29, 0x4
    addi 26, 26, 0x1
L_80319B30:
    cmpw 26, 31
    .4byte 0x4180FF58 # blt .L_80319A8C
L_80319B38:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80319B4C:
    stwu 1, -0x20(1)
    mflr 0
    li 6, 0x0
    li 5, -0x1
    stw 0, 0x24(1)
    li 4, 0x2
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 6, 0x230(3)
    stw 5, 0x234(3)
    lwz 0, 0x90(3)
    clrlwi 3, 0, 20
    addi 0, 3, 0x12b
    stw 0, 0x244(31)
    stw 5, 0x258(31)
    stw 6, 0x25c(31)
    stw 6, 0x260(31)
    stw 4, 0x264(31)
    stw 6, 0x268(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 12
    cmplwi 0, 0xa
    .4byte 0x41810258 # bgt .L_80319E00
    lis 3, jumptable_804AB00C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB00C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    stw 6, 0x238(31)
    stw 6, 0x23c(31)
    stw 6, 0x26c(31)
    .4byte 0x48000230 # b .L_80319E00
    li 3, 0x1
    li 0, 0x2f
    stw 3, 0x238(31)
    stw 4, 0x23c(31)
    stw 0, 0x26c(31)
    .4byte 0x48000218 # b .L_80319E00
    li 3, 0x1
    li 0, 0xc3
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    stw 0, 0x26c(31)
    .4byte 0x48000200 # b .L_80319E00
    stw 4, 0x238(31)
    li 3, 0x1
    li 0, 0x12e
    stw 3, 0x23c(31)
    stw 0, 0x26c(31)
    bl GetRoomConfigRecord
    li 4, 0x2
    bl fn_802D7F40
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201D4 # bne .L_80319E00
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001C8 # b .L_80319E00
    li 0, 0x3
    li 3, 0x1
    stw 0, 0x238(31)
    li 0, 0x130
    stw 3, 0x23c(31)
    stw 0, 0x26c(31)
    .4byte 0x480001AC # b .L_80319E00
    li 0, 0x4
    li 3, 0x3
    stw 0, 0x238(31)
    li 0, 0x530
    stw 3, 0x23c(31)
    stw 0, 0x26c(31)
    lwz 0, 0x264(31)
    lwz 3, 0x25c(31)
    slwi 0, 0, 1
    or 0, 3, 0
    stw 0, 0x25c(31)
    .4byte 0x4800017C # b .L_80319E00
    li 0, 0x5
    li 4, 0x1
    stw 0, 0x238(31)
    li 3, 0x132
    li 0, 0x580
    stw 4, 0x23c(31)
    stw 3, 0x26c(31)
    stw 0, 0x244(31)
    stw 6, 0x264(31)
    .4byte 0x48000154 # b .L_80319E00
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC002E964 # lfs f0, lbl_80541904@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0x8(1)
    stfs 2, 0x10(1)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x534e
    lwz 5, 0x4(31)
    addi 4, 4, 0x5043
    addi 6, 1, 0x8
    lis 7, 0x8
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x258(31)
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800018 # blt .L_80319D18
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    lwz 0, 0x198(31)
    stw 0, 0x258(3)
L_80319D18:
    li 0, 0x6
    li 5, 0x1
    stw 0, 0x238(31)
    li 4, 0x126
    li 3, 0x591
    li 0, 0xa
    stw 5, 0x23c(31)
    stw 4, 0x26c(31)
    stw 3, 0x244(31)
    stw 0, 0x260(31)
    bl GetRoomConfigRecord
    li 4, 0x1f
    bl fn_802D800C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200AC # bne .L_80319E00
    li 0, 0x3
    stw 0, 0x264(31)
    .4byte 0x480000A0 # b .L_80319E00
    li 0, 0x7
    li 5, 0x1
    stw 0, 0x238(31)
    li 4, 0x120
    li 3, 0x58e
    li 0, 0x14
    stw 5, 0x23c(31)
    stw 4, 0x26c(31)
    stw 3, 0x244(31)
    stw 0, 0x260(31)
    bl GetRoomConfigRecord
    li 4, 0x1e
    bl fn_802D800C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_80319E00
    li 0, 0x3
    stw 0, 0x264(31)
    .4byte 0x48000054 # b .L_80319E00
    li 3, 0x8
    li 0, 0x315
    stw 3, 0x238(31)
    stw 4, 0x23c(31)
    stw 0, 0x26c(31)
    .4byte 0x4800003C # b .L_80319E00
    stw 4, 0x238(31)
    li 3, 0x37e
    li 0, 0x3c
    stw 4, 0x23c(31)
    stw 3, 0x26c(31)
    stw 0, 0x260(31)
    bl GetRoomConfigRecord
    li 4, 0x2
    bl fn_802D7F40
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80319E00
    li 0, 0x0
    stb 0, 0x11c(31)
L_80319E00:
    lwz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80319E30
    .4byte 0xC022E968 # lfs f1, lbl_80541908@sda21(r0)
    .4byte 0xC002E96C # lfs f0, lbl_8054190C@sda21(r0)
    stfs 1, 0x248(31)
    .4byte 0xC022E970 # lfs f1, lbl_80541910@sda21(r0)
    stfs 0, 0x24c(31)
    .4byte 0xC002E974 # lfs f0, lbl_80541914@sda21(r0)
    stfs 1, 0x250(31)
    stfs 0, 0x254(31)
    .4byte 0x4800003C # b .L_80319E68
L_80319E30:
    .4byte 0xC022E978 # lfs f1, lbl_80541918@sda21(r0)
    .4byte 0xC002E97C # lfs f0, lbl_8054191C@sda21(r0)
    stfs 1, 0x248(31)
    stfs 1, 0x24c(31)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    lwz 3, 0x248(31)
    lwz 0, 0x24c(31)
    stw 3, 0x60(31)
    stw 0, 0x64(31)
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    stw 3, 0x68(31)
    stw 0, 0x6c(31)
L_80319E68:
    lwz 3, 0x90(31)
    srwi. 0, 3, 27
    .4byte 0x41820060 # beq .L_80319ED0
    extrwi 0, 3, 2, 6
    mr 3, 31
    stw 0, 0x240(31)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    lwz 4, 0x240(31)
    cmplwi 4, 0x1
    .4byte 0x40820010 # bne .L_80319EA8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_80319EB8
L_80319EA8:
    cmplwi 4, 0x2
    .4byte 0x40820018 # bne .L_80319EC4
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80319EC4
L_80319EB8:
    li 0, 0x0
    stb 0, 0x270(31)
    .4byte 0x48000020 # b .L_80319EE0
L_80319EC4:
    li 0, 0x1
    stb 0, 0x270(31)
    .4byte 0x48000014 # b .L_80319EE0
L_80319ED0:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x240(31)
    stb 0, 0x270(31)
L_80319EE0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80319EF8:
    stwu 1, -0x60(1)
    mflr 0
    lis 3, lbl_804AAE68@ha
    stw 0, 0x64(1)
    stmw 14, 0x18(1)
    addi 16, 3, lbl_804AAE68@l
    lis 3, lbl_805081F8@ha
    addi 31, 3, lbl_805081F8@l
    addi 20, 16, 0x6c
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    lwz 15, 0x64(16)
    extsb. 0, 0
    lwz 0, 0x5c(16)
    stw 15, 0xc(1)
    lwz 15, 0x68(16)
    stw 0, 0x5c(20)
    lwz 0, 0xc(1)
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
    stw 0, 0x64(20)
    mr 0, 15
    stw 15, 0x8(1)
    stw 17, 0x6c(16)
    stw 18, 0x70(16)
    stw 19, 0x74(16)
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
    stw 0, 0x68(20)
    .4byte 0x40820030 # bne .L_8031A03C
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
L_8031A03C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A074
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
L_8031A074:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A0AC
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
L_8031A0AC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A0E4
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
L_8031A0E4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A11C
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
L_8031A11C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A154
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
L_8031A154:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A18C
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
L_8031A18C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A1C4
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
L_8031A1C4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031A1FC
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
L_8031A1FC:
    lmw 14, 0x18(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8031A210:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8031A254
    lis 5, lbl_804AB098@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB098@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8031A254
    mr 3, 30
    bl dtor_80084580
L_8031A254:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031A270:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    stw 29, 0x94(1)
    stw 28, 0x90(1)
    mr 30, 3
    lbz 0, 0x281(3)
    cmplwi 0, 0x1
    .4byte 0x418203DC # beq .L_8031A67C
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x418203D0 # beq .L_8031A67C
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_8031A2BC
    .4byte 0x480003C4 # b .L_8031A67C
L_8031A2BC:
    li 0, -0x1
    addi 9, 1, 0x4c
    stw 0, 0x5c(1)
    li 10, 0x0
    stw 0, 0x60(1)
    .4byte 0x48000064 # b .L_8031A334
L_8031A2D4:
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
L_8031A334:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8031A2D4
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x5c(1)
    stw 5, 0x60(1)
    stw 5, 0x64(1)
    stb 5, 0x68(1)
    stb 5, 0x69(1)
    stb 5, 0x6a(1)
    stb 4, 0x6b(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stb 5, 0x6f(1)
    stb 5, 0x70(1)
    stb 5, 0x71(1)
    stb 4, 0x72(1)
    stw 3, 0x74(1)
    stb 4, 0x78(1)
    stb 5, 0x79(1)
    stb 5, 0x7a(1)
    stw 6, 0x7c(1)
    stw 5, 0x80(1)
    stw 0, 0x84(1)
    lwz 0, 0x270(30)
    cmpwi 0, 0x4
    .4byte 0x40820020 # bne .L_8031A3D0
    lwz 0, 0x278(30)
    cmpwi 0, 0x3
    .4byte 0x4080000C # bge .L_8031A3C8
    li 31, 0x0
    .4byte 0x48000010 # b .L_8031A3D4
L_8031A3C8:
    li 31, 0x3
    .4byte 0x48000008 # b .L_8031A3D4
L_8031A3D0:
    mr 31, 0
L_8031A3D4:
    li 4, 0x0
    li 3, 0x1
    stb 4, 0x6c(1)
    stb 3, 0x79(1)
    lbz 0, 0x284(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8031A3FC
    stb 3, 0x68(1)
    stb 3, 0x69(1)
    .4byte 0x48000010 # b .L_8031A408
L_8031A3FC:
    li 0, 0x3
    stb 4, 0x68(1)
    stb 0, 0x69(1)
L_8031A408:
    lwz 0, 0x230(30)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_8031A41C
    cmpwi 0, 0x6
    .4byte 0x408200B8 # bne .L_8031A4D0
L_8031A41C:
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x79(1)
    stb 0, 0x6b(1)
    lwz 3, 0x26c(30)
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_8031A458
    cmpwi 3, 0x3
    .4byte 0x4181001C # bgt .L_8031A458
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x69(1)
    lwz 3, 0x26c(30)
    bl fn_8023CA88
    stb 3, 0x68(1)
L_8031A458:
    addi 0, 31, 0x8
    .4byte 0xC022E9A8 # lfs f1, lbl_80541948@sda21(r0)
    lis 3, lbl_804AB038@ha
    lis 4, lbl_804716C8@ha
    addi 28, 3, lbl_804AB038@l
    slwi 29, 0, 2
    fmr 2, 1
    lwz 5, 0x25c(30)
    lwzx 0, 28, 29
    addi 4, 4, lbl_804716C8@l
    mr 3, 30
    addi 6, 1, 0x4c
    add 5, 5, 0
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x25c(30)
    lwzx 0, 28, 29
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    add 6, 6, 0
    bl fn_803075AC
    .4byte 0x480001B0 # b .L_8031A67C
L_8031A4D0:
    psq_l 4, 0xc(30), 0, 0
    addi 3, 1, 0x1c
    psq_l 0, 0x2b0(30), 0, 0
    lfs 1, 0x14(30)
    ps_add 5, 4, 0
    .4byte 0xC042E994 # lfs f2, lbl_80541934@sda21(r0)
    .4byte 0xC002E990 # lfs f0, lbl_80541930@sda21(r0)
    .4byte 0xC062E9A8 # lfs f3, lbl_80541948@sda21(r0)
    psq_st 5, 0xc(30), 0, 0
    psq_l 6, 0x14(30), 1, 0
    psq_l 5, 0x2b8(30), 1, 0
    psq_st 4, 0x10(1), 0, 0
    ps_add 4, 6, 5
    stfs 1, 0x18(1)
    psq_st 4, 0x14(30), 1, 0
    lfs 4, 0x14(30)
    lfs 1, 0x248(30)
    fadds 1, 4, 1
    stfs 1, 0x14(30)
    lfs 1, 0x248(30)
    fmuls 1, 2, 1
    fdivs 0, 1, 0
    fadds 31, 3, 0
    bl PSMTXIdentity
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    addi 0, 1, 0x1c
    stfs 31, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x24(1)
    stfs 0, 0x2c(1)
    stfs 31, 0x30(1)
    stfs 0, 0x34(1)
    stfs 0, 0x3c(1)
    stfs 0, 0x40(1)
    stfs 31, 0x44(1)
    stw 0, 0x64(1)
    lwz 0, 0x274(30)
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_8031A5F0
    .4byte 0xC022E9A8 # lfs f1, lbl_80541948@sda21(r0)
    lis 3, lbl_804AB038@ha
    addi 29, 3, lbl_804AB038@l
    slwi 28, 31, 2
    fmr 2, 1
    lwz 5, 0x25c(30)
    lwzx 0, 29, 28
    lis 4, lbl_804716C8@ha
    addi 4, 4, lbl_804716C8@l
    mr 3, 30
    add 5, 5, 0
    addi 6, 1, 0x4c
    li 7, -0x1
    bl fn_801F06F0
    li 3, -0x1
    li 0, 0x0
    stb 3, 0x69(1)
    lwzx 3, 29, 28
    stb 0, 0x68(1)
    lwz 0, 0x138(30)
    lwz 4, 0x25c(30)
    cmplwi 0, 0x0
    add 8, 4, 3
    .4byte 0x40820060 # bne .L_8031A628
    lis 4, lbl_804716C8@ha
    lwz 3, 0x4(30)
    addi 7, 4, lbl_804716C8@l
    addi 5, 1, 0x4c
    addi 4, 30, 0xc
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
    .4byte 0x4800003C # b .L_8031A628
L_8031A5F0:
    .4byte 0xC022E9A8 # lfs f1, lbl_80541948@sda21(r0)
    lis 3, lbl_804AB038@ha
    slwi 0, 31, 2
    lis 4, lbl_804716C8@ha
    addi 3, 3, lbl_804AB038@l
    fmr 2, 1
    lwzx 0, 3, 0
    addi 4, 4, lbl_804716C8@l
    lwz 5, 0x25c(30)
    mr 3, 30
    addi 6, 1, 0x4c
    add 5, 5, 0
    li 7, 0x7
    bl fn_801F06F0
L_8031A628:
    li 4, 0x0
    lis 3, lbl_804AB038@ha
    stw 4, 0x8(1)
    slwi 0, 31, 2
    addi 3, 3, lbl_804AB038@l
    addi 5, 30, 0xc
    stw 4, 0xc(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    lwz 6, 0x25c(30)
    li 10, 0x0
    lwzx 0, 3, 0
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    add 6, 6, 0
    bl fn_803075AC
    psq_l 1, 0x10(1), 0, 0
    lfs 0, 0x18(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
L_8031A67C:
    psq_l 31, 0xa8(1), 0, 0
    lwz 0, 0xb4(1)
    lfd 31, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    lwz 28, 0x90(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_8031A6A4:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stmw 26, 0x88(1)
    mr 31, 3
    lis 4, lbl_80471678@ha
    lbz 0, 0x281(3)
    addi 30, 4, lbl_80471678@l
    cmplwi 0, 0x1
    .4byte 0x40820094 # bne .L_8031A774
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082126C # bne .L_8031B968
    lwz 26, 0x4(31)
    cmpwi 26, 0x8
    .4byte 0x4180002C # blt .L_8031A734
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 26
    addi 4, 4, 0x5249
    addi 6, 31, 0xc
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800002C # b .L_8031A75C
L_8031A734:
    .4byte 0xC022E9A8 # lfs f1, lbl_80541948@sda21(r0)
    mr 3, 26
    addi 4, 31, 0xc
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8031A75C:
    mr 3, 31
    li 4, 0x42
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x281(31)
    .4byte 0x480011F8 # b .L_8031B968
L_8031A774:
    lfs 1, 0x10(31)
    li 28, 0x0
    lfs 0, 0xc(31)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8031A7A4
    li 3, 0x0
    li 0, 0x32
    stb 3, 0x17c(31)
    stw 0, 0x174(31)
L_8031A7A4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8031A7EC
    lfs 1, 0x28c(31)
    addi 3, 31, 0x3c
    .4byte 0xC042E994 # lfs f2, lbl_80541934@sda21(r0)
    .4byte 0xC062E9A8 # lfs f3, lbl_80541948@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x290(31)
    addi 3, 31, 0x40
    .4byte 0xC042E994 # lfs f2, lbl_80541934@sda21(r0)
    .4byte 0xC062E9A8 # lfs f3, lbl_80541948@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x294(31)
    addi 3, 31, 0x44
    .4byte 0xC042E994 # lfs f2, lbl_80541934@sda21(r0)
    .4byte 0xC062E9A8 # lfs f3, lbl_80541948@sda21(r0)
    bl fn_801F71A4
L_8031A7EC:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_8031A820
    cmpwi 0, 0x2
    .4byte 0x41820024 # beq .L_8031A820
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_8031A820:
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x41820098 # beq .L_8031A8C0
    cmpwi 0, 0x6
    .4byte 0x41820090 # beq .L_8031A8C0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    lis 3, lbl_8052EBC0@ha
    lwz 5, 0xb4(6)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC002E9A8 # lfs f0, lbl_80541948@sda21(r0)
    addi 3, 31, 0x2b8
    mullw 5, 5, 0
    .4byte 0xC0A2E9A4 # lfs f5, lbl_80541944@sda21(r0)
    .4byte 0xC022E988 # lfs f1, lbl_80541928@sda21(r0)
    .4byte 0xC042E9AC # lfs f2, lbl_8054194C@sda21(r0)
    .4byte 0xC062E9A0 # lfs f3, lbl_80541940@sda21(r0)
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lwz 5, 0x27c(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 4, 0x8(1)
    fsubs 0, 4, 0
    fmuls 0, 5, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    add 5, 0, 5
    addi 0, 5, 0x200
    stw 0, 0x27c(31)
    lwz 0, 0x27c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmadds 1, 1, 0, 1
    bl fn_801F71A4
L_8031A8C0:
    lfs 0, 0x60(31)
    lfs 1, 0x14(1)
    stfs 0, 0x70(1)
    lfs 5, 0x18(1)
    fadds 3, 0, 1
    lfs 0, 0x64(31)
    stfs 0, 0x74(1)
    fadds 2, 0, 5
    lfs 0, 0x68(31)
    stfs 0, 0x78(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(31)
    fadds 0, 4, 5
    stfs 4, 0x7c(1)
    stfs 3, 0x70(1)
    stfs 2, 0x74(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820504 # bne .L_8031AE14
    lfs 1, 0x10(31)
    addi 3, 1, 0x70
    lfs 0, 0x248(31)
    li 5, 0x0
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    fsubs 0, 1, 0
    psq_st 3, 0x64(1), 0, 0
    stfs 0, 0x10(31)
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    stfs 2, 0x6c(1)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 4, 0x4(31)
    lfs 1, 0x14(31)
    bl fn_8023AF14
    lwz 27, 0x4(31)
    mr 29, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8031A98C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    mr 28, 3
L_8031A98C:
    cmpwi 29, 0x0
    .4byte 0x40800080 # bge .L_8031AA10
    li 26, 0x0
L_8031A998:
    mr 3, 26
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_8031AA04
    mr 3, 26
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8031AA04
    lwz 5, 0x4(31)
    mr 3, 26
    addi 4, 1, 0x70
    addi 6, 1, 0x14
    li 7, 0x1
    bl fn_8023B9CC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820024 # beq .L_8031A9FC
    lwz 5, 0x4(31)
    mr 3, 26
    addi 4, 1, 0x70
    addi 6, 1, 0x14
    bl fn_8023B848
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8031AA04
L_8031A9FC:
    mr 29, 26
    .4byte 0x48000010 # b .L_8031AA10
L_8031AA04:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF8C # blt .L_8031A998
L_8031AA10:
    cmpwi 29, 0x0
    .4byte 0x41800344 # blt .L_8031AD58
    mr 3, 29
    bl fn_80234C5C
    clrlwi. 0, 3, 24
    .4byte 0x40820334 # bne .L_8031AD58
    mr 3, 29
    bl fn_8022B7C4
    clrlwi. 0, 3, 24
    .4byte 0x40820324 # bne .L_8031AD58
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820314 # bne .L_8031AD58
    mr 3, 29
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820304 # bne .L_8031AD58
    lhz 0, 0x94(31)
    cmplwi 0, 0x5
    .4byte 0x40820074 # bne .L_8031AAD4
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8031AA98
    stw 29, 0x26c(31)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0xb0(31)
    .4byte 0x480002C4 # b .L_8031AD58
L_8031AA98:
    mr 3, 29
    bl fn_8023E724
    lfs 2, 0x8(3)
    lfs 1, 0x14(31)
    .4byte 0xC002E990 # lfs f0, lbl_80541930@sda21(r0)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408202A0 # bne .L_8031AD58
    stw 29, 0x26c(31)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0xb0(31)
    .4byte 0x48000288 # b .L_8031AD58
L_8031AAD4:
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_8031AB3C
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8031AB24
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002E9B0 # lfs f0, lbl_80541950@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810014 # bgt .L_8031AB24
    mr 3, 29
    bl fn_80234ECC
    clrlwi. 0, 3, 24
    .4byte 0x41820238 # beq .L_8031AD58
L_8031AB24:
    stw 29, 0x26c(31)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0xb0(31)
    .4byte 0x48000220 # b .L_8031AD58
L_8031AB3C:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408201F0 # bne .L_8031AD44
    mr 3, 29
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x408201E0 # bne .L_8031AD44
    mr 3, 29
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x408201D0 # bne .L_8031AD44
    mr 3, 29
    bl fn_80233DA4
    clrlwi. 0, 3, 24
    .4byte 0x408201C0 # bne .L_8031AD44
    lwz 0, 0x270(31)
    cmpwi 0, 0x5
    .4byte 0x418201B4 # beq .L_8031AD44
    cmpwi 0, 0x6
    .4byte 0x418201AC # beq .L_8031AD44
    cmpwi 0, 0x7
    .4byte 0x418201A4 # beq .L_8031AD44
    mr 3, 29
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201A4 # bne .L_8031AD58
    lwz 3, 0x270(31)
    cmpwi 3, 0x4
    .4byte 0x4082001C # bne .L_8031ABDC
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_8031ABDC
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000020 # b .L_8031ABF8
L_8031ABDC:
    cmpwi 3, 0x4
    .4byte 0x40820018 # bne .L_8031ABF8
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8031ABF8
    li 0, 0x3
    stw 0, 0x270(31)
L_8031ABF8:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 3, 0x8(3)
    mr 3, 29
    .4byte 0xC002E9B4 # lfs f0, lbl_80541954@sda21(r0)
    psq_st 1, 0x58(1), 0, 0
    lfs 1, 0x5c(1)
    lfs 2, 0x58(1)
    fsubs 0, 1, 0
    stfs 3, 0x60(1)
    stfs 2, 0x4c(1)
    stfs 0, 0x50(1)
    stfs 3, 0x54(1)
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8031AC60
    mr 3, 29
    addi 4, 1, 0x58
    li 5, 0x336
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_8031AC80
L_8031AC60:
    mr 3, 29
    addi 4, 1, 0x58
    li 5, 0xed
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8031AC80:
    mr 26, 29
    mr 3, 29
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8031ACA4
    mr 3, 29
    bl fn_8022F3DC
    mr 26, 3
L_8031ACA4:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8031ACFC
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_8031ACFC
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8031ACFC
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 26
    li 4, 0x13f
    li 6, 0x0
    bl fn_8043D67C
    bl GetRoomConfigRecord
    li 4, 0x0
    li 5, 0x1
    bl fn_802D7F84
L_8031ACFC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x270(31)
    slwi 0, 29, 24
    lis 7, 0x494d
    slwi 6, 29, 26
    addis 4, 4, 0xa0
    lwz 5, 0x4(31)
    add 0, 4, 0
    li 8, -0x1
    addi 4, 7, 0x5550
    li 9, -0x1
    add 7, 0, 6
    addi 6, 1, 0x4c
    addi 7, 7, 0x4
    bl fn_801F9484
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000C28 # b .L_8031B968
L_8031AD44:
    stw 29, 0x26c(31)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0xb0(31)
L_8031AD58:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_8031AE04
    li 26, 0x0
L_8031AD68:
    mr 3, 26
    bl fn_80233D20
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_8031ADF8
    mr 3, 26
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    addi 4, 1, 0x34
    lfs 2, 0x8(3)
    addi 3, 1, 0x40
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    psq_st 0, 0x0(3), 0, 0
    stfs 2, 0x48(1)
    lfs 0, 0x44(1)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    fsubs 2, 0, 2
    psq_st 4, 0x0(4), 0, 0
    lfs 0, 0x38(1)
    stfs 3, 0x3c(1)
    fsubs 0, 0, 3
    stfs 2, 0x44(1)
    stfs 1, 0x48(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    bl PSVECDistance
    .4byte 0xC002E9B8 # lfs f0, lbl_80541958@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_8031ADF8
    stw 26, 0x26c(31)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0xb0(31)
    .4byte 0x48000010 # b .L_8031AE04
L_8031ADF8:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF68 # blt .L_8031AD68
L_8031AE04:
    psq_l 1, 0x64(1), 0, 0
    lfs 0, 0x6c(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
L_8031AE14:
    lwz 0, 0x230(31)
    cmplwi 0, 0x6
    .4byte 0x41810990 # bgt .L_8031B7AC
    lis 3, jumptable_804AB0EC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB0EC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lbz 0, 0x286(31)
    cmplwi 0, 0x1
    .4byte 0x40820114 # bne .L_8031AF54
    li 26, -0x1
    li 27, 0x0
    lis 29, 0x424f
L_8031AE50:
    bl SpatialRegistry_GetBase
    mr 5, 26
    addi 4, 29, 0x4d45
    bl fn_801F78F4
    mr. 26, 3
    .4byte 0x4180008C # blt .L_8031AEF0
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_8031AE50
    lfs 3, 0x10(31)
    lfs 1, 0x14(31)
    lfs 2, 0xc(31)
    lfs 0, 0xc(3)
    fsubs 3, 3, 1
    lfs 1, 0x10(3)
    fsubs 2, 2, 0
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    fsubs 1, 3, 1
    fmuls 2, 2, 2
    fmuls 1, 1, 1
    fadds 3, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031AEBC
    .4byte 0x48000028 # b .L_8031AEE0
L_8031AEBC:
    frsqrte 4, 3
    .4byte 0xC042E984 # lfs f2, lbl_80541924@sda21(r0)
    .4byte 0xC002E988 # lfs f0, lbl_80541928@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 3, 1, 0
    fmuls 0, 2, 0
    fmuls 3, 3, 0
L_8031AEE0:
    .4byte 0xC002E98C # lfs f0, lbl_8054192C@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x4080FF68 # bge .L_8031AE50
    li 27, 0x1
L_8031AEF0:
    clrlwi. 0, 27, 24
    .4byte 0x40820018 # bne .L_8031AF0C
    mr 3, 31
    addi 4, 1, 0x1c
    addi 5, 1, 0x10
    li 6, 0x0
    bl fn_801EE558
L_8031AF0C:
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8031AF28
    lfs 1, 0x10(1)
    .4byte 0xC002E98C # lfs f0, lbl_8054192C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_8031AF40
L_8031AF28:
    .4byte 0xC022E990 # lfs f1, lbl_80541930@sda21(r0)
    addi 3, 31, 0x248
    .4byte 0xC042E994 # lfs f2, lbl_80541934@sda21(r0)
    .4byte 0xC062E998 # lfs f3, lbl_80541938@sda21(r0)
    bl fn_801F71A4
    .4byte 0x48000018 # b .L_8031AF54
L_8031AF40:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    addi 3, 31, 0x248
    .4byte 0xC042E99C # lfs f2, lbl_8054193C@sda21(r0)
    .4byte 0xC062E9A0 # lfs f3, lbl_80541940@sda21(r0)
    bl fn_801F71A4
L_8031AF54:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002E9A8 # lfs f0, lbl_80541948@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042E9A4 # lfs f2, lbl_80541944@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x260(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    add 3, 0, 3
    addi 0, 3, 0x200
    stw 0, 0x260(31)
    lhz 0, 0x94(31)
    cmpwi 0, 0x5
    .4byte 0x4182016C # beq .L_8031B128
    .4byte 0x40800018 # bge .L_8031AFD8
    cmpwi 0, 0x3
    .4byte 0x40800108 # bge .L_8031B0D0
    cmpwi 0, 0x1
    .4byte 0x40800010 # bge .L_8031AFE0
    .4byte 0x480007D8 # b .L_8031B7AC
L_8031AFD8:
    cmpwi 0, 0x8
    .4byte 0x408007D0 # bge .L_8031B7AC
L_8031AFE0:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8031B03C
    .4byte 0x40800014 # bge .L_8031B000
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8031B00C
    .4byte 0x4080002C # bge .L_8031B024
    .4byte 0x4800006C # b .L_8031B068
L_8031B000:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_8031B068
    .4byte 0x4800004C # b .L_8031B054
L_8031B00C:
    .4byte 0xC022E9BC # lfs f1, lbl_8054195C@sda21(r0)
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x294(31)
    .4byte 0x48000048 # b .L_8031B068
L_8031B024:
    .4byte 0xC022E9C0 # lfs f1, lbl_80541960@sda21(r0)
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x294(31)
    .4byte 0x48000030 # b .L_8031B068
L_8031B03C:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    .4byte 0xC002E9BC # lfs f0, lbl_8054195C@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 1, 0x294(31)
    .4byte 0x48000018 # b .L_8031B068
L_8031B054:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    .4byte 0xC002E9C0 # lfs f0, lbl_80541960@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 1, 0x294(31)
L_8031B068:
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_8031B07C
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_8031B0A0
L_8031B07C:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820728 # bne .L_8031B7AC
    li 0, 0xc8
    stw 0, 0x250(31)
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x48000710 # b .L_8031B7AC
L_8031B0A0:
    lwz 0, 0x250(31)
    cmpwi 0, 0x64
    .4byte 0x40820014 # bne .L_8031B0BC
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x480006F4 # b .L_8031B7AC
L_8031B0BC:
    cmpwi 0, 0x0
    .4byte 0x408206EC # bne .L_8031B7AC
    li 0, 0xc8
    stw 0, 0x250(31)
    .4byte 0x480006E0 # b .L_8031B7AC
L_8031B0D0:
    lwz 4, 0x264(31)
    lis 3, lbl_8052EBC0@ha
    lwz 0, 0x268(31)
    addi 3, 3, lbl_8052EBC0@l
    add 0, 4, 0
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    lfs 2, 0x238(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x298(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x264(31)
    lfs 2, 0x238(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x29c(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000688 # b .L_8031B7AC
L_8031B128:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    li 4, 0x0
    add 3, 0, 27
    lbz 3, 0x31df(3)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8031B158
    clrlwi 0, 28, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8031B158
    li 4, 0x1
L_8031B158:
    lfs 1, 0x14(31)
    li 5, 0x0
    .4byte 0xC002E9C4 # lfs f0, lbl_80541964@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8031B17C
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_8031B17C
    li 5, 0x1
L_8031B17C:
    lwz 6, 0x250(31)
    cmpwi 6, 0x0
    .4byte 0x41820020 # beq .L_8031B1A4
    lbz 0, 0x280(31)
    cmplw 0, 3
    .4byte 0x40820014 # bne .L_8031B1A4
    clrlwi. 0, 4, 24
    .4byte 0x4082000C # bne .L_8031B1A4
    clrlwi. 0, 5, 24
    .4byte 0x4182060C # beq .L_8031B7AC
L_8031B1A4:
    cmpwi 6, 0x0
    .4byte 0x41820014 # beq .L_8031B1BC
    clrlwi. 0, 4, 24
    .4byte 0x4082000C # bne .L_8031B1BC
    clrlwi. 0, 5, 24
    .4byte 0x41820028 # beq .L_8031B1E0
L_8031B1BC:
    clrlwi. 0, 5, 24
    .4byte 0x4182000C # beq .L_8031B1CC
    .4byte 0xC002E9C8 # lfs f0, lbl_80541968@sda21(r0)
    stfs 0, 0x14(31)
L_8031B1CC:
    li 0, 0x1f4
    stw 0, 0x250(31)
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
L_8031B1E0:
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_8031B234
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_8031B21C
    .4byte 0x40800088 # bge .L_8031B27C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8031B204
    .4byte 0x4800007C # b .L_8031B27C
L_8031B204:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    .4byte 0xC002E984 # lfs f0, lbl_80541924@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 1, 0x294(31)
    .4byte 0x48000064 # b .L_8031B27C
L_8031B21C:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    .4byte 0xC002E9CC # lfs f0, lbl_8054196C@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 1, 0x294(31)
    .4byte 0x4800004C # b .L_8031B27C
L_8031B234:
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_8031B268
    .4byte 0x4080003C # bge .L_8031B27C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8031B250
    .4byte 0x48000030 # b .L_8031B27C
L_8031B250:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    .4byte 0xC002E9CC # lfs f0, lbl_8054196C@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 1, 0x290(31)
    stfs 0, 0x294(31)
    .4byte 0x48000018 # b .L_8031B27C
L_8031B268:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    .4byte 0xC002E984 # lfs f0, lbl_80541924@sda21(r0)
    stfs 1, 0x28c(31)
    stfs 1, 0x290(31)
    stfs 0, 0x294(31)
L_8031B27C:
    lbz 0, 0x280(31)
    cmplw 0, 3
    .4byte 0x41820528 # beq .L_8031B7AC
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_8031B2AC
    lfs 1, 0x44(31)
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    fneg 1, 1
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    stfs 0, 0x14(31)
    .4byte 0x4800001C # b .L_8031B2C4
L_8031B2AC:
    lfs 1, 0x40(31)
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    fneg 1, 1
    stfs 1, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x14(31)
L_8031B2C4:
    stb 3, 0x280(31)
    .4byte 0x480004E4 # b .L_8031B7AC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x6d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x270(31)
    addi 5, 30, 0x0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022E9A8 # lfs f1, lbl_80541948@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x270(31)
    addi 5, 30, 0x10
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022E9A8 # lfs f1, lbl_80541948@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x270(31)
    addi 5, 30, 0x20
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022E9A8 # lfs f1, lbl_80541948@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0xa
    li 0, 0x2
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41810418 # bgt .L_8031B7AC
    lwz 0, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x4800040C # b .L_8031B7AC
    lfs 2, 0x2a4(31)
    lfs 1, 0xc(31)
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x3c(31)
    lfs 2, 0x2a8(31)
    lfs 1, 0x10(31)
    fsubs 1, 2, 1
    stfs 1, 0x40(31)
    lfs 2, 0x3c(31)
    lfs 1, 0x40(31)
    fmuls 2, 2, 2
    fmuls 1, 1, 1
    fadds 5, 2, 1
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031B3EC
    .4byte 0x48000028 # b .L_8031B410
L_8031B3EC:
    frsqrte 3, 5
    .4byte 0xC042E984 # lfs f2, lbl_80541924@sda21(r0)
    .4byte 0xC002E988 # lfs f0, lbl_80541928@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 0, 2, 0
    fmuls 5, 5, 0
L_8031B410:
    psq_l 2, 0x3c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x44(31)
    ps_mul 2, 2, 2
    .4byte 0xC022E9D0 # lfs f1, lbl_80541970@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_8031B494
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8031B458
    fmr 31, 4
    .4byte 0x48000028 # b .L_8031B47C
L_8031B458:
    frsqrte 3, 4
    .4byte 0xC042E984 # lfs f2, lbl_80541924@sda21(r0)
    .4byte 0xC002E988 # lfs f0, lbl_80541928@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_8031B47C:
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
L_8031B494:
    .4byte 0xC022E9D4 # lfs f1, lbl_80541974@sda21(r0)
    li 0, 0x4
    .4byte 0xC002E9D8 # lfs f0, lbl_80541978@sda21(r0)
    fdivs 1, 1, 5
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fmuls 1, 1, 1
    fmuls 0, 1, 0
    stfs 0, 0x244(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    stw 0, 0x230(31)
    lfs 2, 0x44(31)
    lfs 1, 0x244(31)
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 4, 0xc(31)
    lfs 3, 0x2a4(31)
    lfs 2, 0x10(31)
    lfs 1, 0x2a8(31)
    fsubs 3, 4, 3
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 3, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031B524
    .4byte 0x48000028 # b .L_8031B548
L_8031B524:
    frsqrte 4, 3
    .4byte 0xC042E984 # lfs f2, lbl_80541924@sda21(r0)
    .4byte 0xC002E988 # lfs f0, lbl_80541928@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 3, 1, 0
    fmuls 0, 2, 0
    fmuls 3, 3, 0
L_8031B548:
    .4byte 0xC002E9DC # lfs f0, lbl_8054197C@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x4080025C # bge .L_8031B7AC
    lfs 0, 0x2a4(31)
    li 3, 0x1
    li 0, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x2a8(31)
    stfs 0, 0x10(31)
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    .4byte 0x48000238 # b .L_8031B7AC
    lwz 3, 0x270(31)
    cmpwi 3, 0x4
    .4byte 0x4082001C # bne .L_8031B59C
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_8031B59C
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000020 # b .L_8031B5B8
L_8031B59C:
    cmpwi 3, 0x4
    .4byte 0x40820018 # bne .L_8031B5B8
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8031B5B8
    li 0, 0x3
    stw 0, 0x270(31)
L_8031B5B8:
    lwz 3, 0x26c(31)
    mr 28, 3
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8031B5DC
    lwz 3, 0x26c(31)
    bl fn_8022F3DC
    mr 28, 3
L_8031B5DC:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8031B634
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_8031B634
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8031B634
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 28
    li 4, 0x13f
    li 6, 0x0
    bl fn_8043D67C
    bl GetRoomConfigRecord
    li 4, 0x0
    li 5, 0x1
    bl fn_802D7F84
L_8031B634:
    lwz 0, 0x270(31)
    cmpwi 0, 0x5
    .4byte 0x41820038 # beq .L_8031B674
    cmpwi 0, 0x6
    .4byte 0x41820030 # beq .L_8031B674
    cmpwi 0, 0x7
    .4byte 0x41820028 # beq .L_8031B674
    lis 3, lbl_804AB078@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_804AB078@l
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lwzx 5, 4, 0
    mr 4, 28
    li 6, 0x0
    bl fn_8043D874
    .4byte 0x48000030 # b .L_8031B6A0
L_8031B674:
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x11
    bl fn_80230FD0
    lwz 0, 0x270(31)
    lis 3, lbl_804AB078@ha
    addi 4, 3, lbl_804AB078@l
    mr 3, 28
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_802362C4
L_8031B6A0:
    lwz 3, 0x26c(31)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800034 # blt .L_8031B6E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_8031B6E0
    lwz 0, 0x270(31)
    cmpwi 0, 0x4
    .4byte 0x40800018 # bge .L_8031B6E0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 28
    subfic 4, 0, 0x194
    li 6, 0x0
    bl fn_8043D67C
L_8031B6E0:
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    li 6, 0x0
    li 5, 0x32
    li 4, 0x1e
    stfs 1, 0x44(31)
    li 0, 0x6
    .4byte 0xC002E988 # lfs f0, lbl_80541928@sda21(r0)
    mr 3, 31
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x14(31)
    stw 6, 0x25c(31)
    stw 5, 0x24c(31)
    stw 4, 0x250(31)
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    bl fn_801F3604
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 3, 0x26c(31)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8031B77C
    lwz 3, 0x26c(31)
    bl fn_8023E724
    lfs 0, 0x8(3)
    stfs 0, 0x14(31)
    lwz 3, 0x26c(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    lwz 3, 0x26c(31)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC002E9E0 # lfs f0, lbl_80541980@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
L_8031B77C:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_8031B7AC
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    mr 3, 31
    bl fn_801F3668
L_8031B7AC:
    psq_l 2, 0x3c(31), 0, 0
    lfs 30, 0x44(31)
    ps_mul 2, 2, 2
    .4byte 0xC002E99C # lfs f0, lbl_8054193C@sda21(r0)
    ps_madd 1, 30, 30, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    .4byte 0x40810058 # ble .L_8031B820
    lwz 0, 0x270(31)
    cmpwi 0, 0x7
    .4byte 0x4082000C # bne .L_8031B7E0
    li 5, 0x347
    .4byte 0x48000020 # b .L_8031B7FC
L_8031B7E0:
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_8031B7F0
    cmpwi 0, 0x6
    .4byte 0x4082000C # bne .L_8031B7F8
L_8031B7F0:
    li 5, 0x346
    .4byte 0x48000008 # b .L_8031B7FC
L_8031B7F8:
    li 5, 0x345
L_8031B7FC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022E9E4 # lfs f1, lbl_80541984@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8031B820:
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x40820044 # bne .L_8031B878
    lwz 4, 0x25c(31)
    addi 3, 30, 0x40
    lwz 5, 0x24c(31)
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4081000C # ble .L_8031B85C
    addi 0, 4, 0x1
    stw 0, 0x25c(31)
L_8031B85C:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x4
    .4byte 0x41800074 # blt .L_8031B8D8
    li 0, 0x0
    stw 0, 0x25c(31)
    stw 0, 0x24c(31)
    .4byte 0x48000064 # b .L_8031B8D8
L_8031B878:
    lwz 4, 0x25c(31)
    addi 3, 30, 0x30
    lwz 5, 0x24c(31)
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4081000C # ble .L_8031B89C
    addi 0, 4, 0x1
    stw 0, 0x25c(31)
L_8031B89C:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x4
    .4byte 0x41800034 # blt .L_8031B8D8
    li 0, 0x0
    stw 0, 0x25c(31)
    stw 0, 0x24c(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_8031B8D8
    lwz 3, 0x278(31)
    addi 0, 3, 0x1
    stw 0, 0x278(31)
    lwz 0, 0x278(31)
    clrlwi 0, 0, 30
    stw 0, 0x278(31)
L_8031B8D8:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080004C # bge .L_8031B92C
    lhz 0, 0x94(31)
    cmplwi 0, 0x8
    .4byte 0x40820040 # bne .L_8031B92C
    lbz 0, 0x282(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8031B92C
    lfs 2, 0x10(31)
    addi 4, 1, 0x28
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    stfs 1, 0x28(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8031B92C:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031B940
    subi 0, 3, 0x1
    stw 0, 0x250(31)
L_8031B940:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031B954
    subi 0, 3, 0x1
    stw 0, 0x254(31)
L_8031B954:
    lwz 3, 0x258(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031B968
    subi 0, 3, 0x1
    stw 0, 0x258(31)
L_8031B968:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    lmw 26, 0x88(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_8031B994:
    stwu 1, -0x30(1)
    mflr 0
    li 7, 0x0
    li 6, 0x2710
    stw 0, 0x34(1)
    li 5, -0x1
    .4byte 0xC022E980 # lfs f1, lbl_80541920@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC082E9A8 # lfs f4, lbl_80541948@sda21(r0)
    stw 30, 0x28(1)
    addi 4, 3, 0x660d
    .4byte 0xC002E9E8 # lfs f0, lbl_80541988@sda21(r0)
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 8
    sth 0, 0x94(31)
    li 0, 0x64
    lwz 3, 0x90(31)
    clrlwi 3, 3, 29
    stw 3, 0x270(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 19
    stw 3, 0x274(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 17
    stb 3, 0x284(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 21
    stb 3, 0x286(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 6
    stb 3, 0x282(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 5
    stb 3, 0x283(31)
    stw 7, 0x25c(31)
    stw 7, 0x260(31)
    stw 7, 0x264(31)
    stw 7, 0x268(31)
    stw 7, 0x24c(31)
    stw 7, 0x250(31)
    stw 7, 0x254(31)
    stw 7, 0x258(31)
    sth 7, 0x288(31)
    stw 6, 0x108(31)
    stw 5, 0x26c(31)
    stw 7, 0x98(31)
    lfs 2, 0xc(31)
    stfs 2, 0x298(31)
    lfs 2, 0x10(31)
    stfs 2, 0x29c(31)
    lfs 2, 0x14(31)
    stfs 2, 0x2a0(31)
    stfs 1, 0x2ac(31)
    stfs 1, 0x2a8(31)
    stfs 1, 0x2a4(31)
    stw 0, 0x268(31)
    stw 7, 0x278(31)
    stfs 4, 0x23c(31)
    stfs 1, 0x240(31)
    stfs 1, 0x244(31)
    stfs 1, 0x248(31)
    stb 7, 0x280(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 7
    stb 0, 0x281(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 23
    stb 0, 0x285(31)
    stfs 0, 0x238(31)
    stfs 1, 0x2b8(31)
    stfs 1, 0x2b4(31)
    stfs 1, 0x2b0(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    .4byte 0xC062E9EC # lfs f3, lbl_8054198C@sda21(r0)
    srwi 0, 0, 9
    .4byte 0xC042E9F0 # lfs f2, lbl_80541990@sda21(r0)
    oris 0, 0, 0x3f80
    .4byte 0xC002E9E0 # lfs f0, lbl_80541980@sda21(r0)
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 1, 1, 4
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x27c(31)
    stw 7, 0x230(31)
    lwz 0, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 1, 1, 4
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x264(31)
    stfs 0, 0x14(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8031BB7C
    .4byte 0xC002E9F4 # lfs f0, lbl_80541994@sda21(r0)
    lis 0, 0x2
    stfs 0, 0x14(31)
    stw 0, 0xb0(31)
L_8031BB7C:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8031BBB8
    lfs 2, 0x10(31)
    lis 0, 0x2
    lfs 1, 0x14(31)
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stw 0, 0xb0(31)
L_8031BBB8:
    lhz 0, 0x94(31)
    cmplwi 0, 0x8
    .4byte 0x41810164 # bgt .L_8031BD24
    lis 3, jumptable_804AB108@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB108@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, 0x0
    li 0, 0x32
    stb 3, 0x17c(31)
    stw 0, 0x174(31)
    .4byte 0x48000138 # b .L_8031BD24
    li 0, 0x2
    lis 3, 0x19
    stw 0, 0x98(31)
    addi 0, 3, 0x660d
    .4byte 0xC002E9A8 # lfs f0, lbl_80541948@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042E9F8 # lfs f2, lbl_80541998@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x98(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    or 0, 3, 0
    stw 0, 0x98(31)
    .4byte 0x480000D0 # b .L_8031BD24
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002E9A8 # lfs f0, lbl_80541948@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042E9F8 # lfs f2, lbl_80541998@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x98(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    or 0, 3, 0
    stw 0, 0x98(31)
    .4byte 0x48000070 # b .L_8031BD24
    li 0, -0x64
    stw 0, 0x268(31)
    lwz 0, 0x264(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x238(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x298(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x264(31)
    lfs 2, 0x238(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x29c(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000020 # b .L_8031BD24
    li 0, 0x3c
    stw 0, 0x180(31)
    .4byte 0x48000014 # b .L_8031BD24
    li 0, 0x3
    .4byte 0xC002E980 # lfs f0, lbl_80541920@sda21(r0)
    stw 0, 0x230(31)
    stfs 0, 0x14(31)
L_8031BD24:
    .4byte 0xC082E980 # lfs f4, lbl_80541920@sda21(r0)
    .4byte 0xC062E9FC # lfs f3, lbl_8054199C@sda21(r0)
    stfs 4, 0x28c(31)
    .4byte 0xC042EA00 # lfs f2, lbl_805419A0@sda21(r0)
    stfs 4, 0x290(31)
    .4byte 0xC022EA04 # lfs f1, lbl_805419A4@sda21(r0)
    stfs 4, 0x294(31)
    .4byte 0xC002E998 # lfs f0, lbl_80541938@sda21(r0)
    stfs 4, 0x3c(31)
    stfs 4, 0x40(31)
    stfs 4, 0x44(31)
    stfs 3, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x5
    .4byte 0x41820010 # beq .L_8031BD78
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_8031BD98
L_8031BD78:
    .4byte 0xC002E9FC # lfs f0, lbl_8054199C@sda21(r0)
    .4byte 0xC022EA08 # lfs f1, lbl_805419A8@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002EA04 # lfs f0, lbl_805419A4@sda21(r0)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000024 # b .L_8031BDB8
L_8031BD98:
    .4byte 0xC022EA0C # lfs f1, lbl_805419AC@sda21(r0)
    .4byte 0xC002EA10 # lfs f0, lbl_805419B0@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022E9F4 # lfs f1, lbl_80541994@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002E9B8 # lfs f0, lbl_80541958@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_8031BDB8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8031BDD4
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000044 # b .L_8031BE14
L_8031BDD4:
    lbz 0, 0x283(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8031BDF8
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8031BDF8
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000020 # b .L_8031BE14
L_8031BDF8:
    lbz 0, 0x285(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8031BE14
    lwz 3, 0x230(31)
    li 0, 0x1
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8031BE14:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8031BE2C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805082F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805082F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031BE7C
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
L_8031BE7C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031BEB4
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
L_8031BEB4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031BEEC
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
L_8031BEEC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031BF24
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
L_8031BF24:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031BF5C
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
L_8031BF5C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031BF94
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
L_8031BF94:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031BFCC
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
L_8031BFCC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031C004
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
L_8031C004:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031C03C
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
L_8031C03C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031C050:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8031C094
    lis 5, lbl_804AB170@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB170@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8031C094
    mr 3, 30
    bl dtor_80084580
L_8031C094:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031C0B0:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x5c(1)
    addi 9, 1, 0x4c
    li 10, 0x0
    stw 0, 0x60(1)
    .4byte 0x48000064 # b .L_8031C170
L_8031C110:
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
L_8031C170:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8031C110
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x69(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 4, 0x6c(1)
    stb 5, 0x79(1)
    stw 6, 0x5c(1)
    stw 5, 0x60(1)
    stw 5, 0x64(1)
    stb 5, 0x68(1)
    stb 5, 0x6a(1)
    stb 4, 0x6b(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stb 5, 0x6f(1)
    stb 5, 0x70(1)
    stb 5, 0x71(1)
    stb 4, 0x72(1)
    stw 3, 0x74(1)
    stb 4, 0x78(1)
    stb 5, 0x7a(1)
    stw 6, 0x7c(1)
    stw 5, 0x80(1)
    stw 0, 0x84(1)
    stb 4, 0x79(1)
    stb 5, 0x69(1)
    stb 5, 0x6c(1)
    lwz 3, 0x230(31)
    cmpwi 3, 0x8
    .4byte 0x41820358 # beq .L_8031C550
    cmpwi 3, 0x9
    .4byte 0x40820008 # bne .L_8031C208
    .4byte 0x4800034C # b .L_8031C550
L_8031C208:
    subi 0, 3, 0x5
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8031C21C
    cmpwi 3, 0x7
    .4byte 0x4082015C # bne .L_8031C374
L_8031C21C:
    addi 3, 1, 0x1c
    bl PSMTXIdentity
    lfs 30, 0x23c(31)
    lfs 29, 0x238(31)
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x1c
    fmuls 7, 30, 26
    lis 3, lbl_804AB130@ha
    fneg 6, 27
    stw 0, 0x64(1)
    fmuls 10, 31, 3
    addi 3, 3, lbl_804AB130@l
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
    stfs 8, 0x1c(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x2c(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x3c(1)
    fmuls 0, 29, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
    lwz 4, 0x268(31)
    lwz 0, 0x4(31)
    slwi 4, 4, 2
    lwz 5, 0x254(31)
    lwzx 3, 3, 4
    cmpwi 0, 0x8
    add 30, 5, 3
    .4byte 0x40800230 # bge .L_8031C550
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804716F0@ha
    addi 5, 3, lbl_804716F0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EA1C # lfs f1, lbl_805419BC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x4c
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x480001E0 # b .L_8031C550
L_8031C374:
    cmpwi 3, 0x2
    .4byte 0x418200E8 # beq .L_8031C460
    li 0, 0x11
    stb 5, 0x69(1)
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    stw 0, 0x7c(1)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8031C39C
    stb 4, 0x68(1)
L_8031C39C:
    psq_l 2, 0xc(31), 0, 0
    lis 3, lbl_804AB130@ha
    psq_l 1, 0x294(31), 0, 0
    addi 5, 3, lbl_804AB130@l
    lfs 0, 0x14(31)
    lis 4, lbl_804716F0@ha
    ps_add 3, 2, 1
    .4byte 0xC022EA1C # lfs f1, lbl_805419BC@sda21(r0)
    psq_st 2, 0x10(1), 0, 0
    addi 4, 4, lbl_804716F0@l
    fmr 2, 1
    mr 3, 31
    psq_st 3, 0xc(31), 0, 0
    addi 6, 1, 0x4c
    li 7, 0x7
    psq_l 4, 0x14(31), 1, 0
    psq_l 3, 0x29c(31), 1, 0
    stfs 0, 0x18(1)
    ps_add 0, 4, 3
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x268(31)
    lwz 8, 0x254(31)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    add 5, 8, 0
    bl fn_801F06F0
    li 0, 0x0
    lis 3, lbl_804AB130@ha
    stw 0, 0x8(1)
    addi 4, 3, lbl_804AB130@l
    addi 5, 31, 0xc
    li 7, 0x0
    stw 0, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 0, 0x268(31)
    lwz 6, 0x254(31)
    slwi 0, 0, 2
    lwz 3, 0x198(31)
    lwzx 0, 4, 0
    lwz 4, 0x4(31)
    add 6, 6, 0
    bl fn_803075AC
    psq_l 1, 0x10(1), 0, 0
    lfs 0, 0x18(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x480000F4 # b .L_8031C550
L_8031C460:
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_8031C48C
    cmpwi 3, 0x3
    .4byte 0x4181001C # bgt .L_8031C48C
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x69(1)
    lwz 3, 0x264(31)
    bl fn_8023CA88
    stb 3, 0x68(1)
L_8031C48C:
    li 0, 0x1
    lis 3, lbl_804AB130@ha
    stb 0, 0x79(1)
    addi 3, 3, lbl_804AB130@l
    lwz 4, 0x268(31)
    lwz 0, 0x4(31)
    slwi 4, 4, 2
    lwz 5, 0x254(31)
    lwzx 3, 3, 4
    cmpwi 0, 0x8
    add 30, 5, 3
    .4byte 0x40800050 # bge .L_8031C508
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804716F0@ha
    addi 5, 3, lbl_804716F0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EA1C # lfs f1, lbl_805419BC@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x4c
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_8031C508:
    li 0, 0x0
    lis 3, lbl_804AB130@ha
    stw 0, 0x8(1)
    addi 4, 3, lbl_804AB130@l
    addi 5, 31, 0xc
    li 7, 0x0
    stw 0, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 0, 0x268(31)
    lwz 6, 0x254(31)
    slwi 0, 0, 2
    lwz 3, 0x198(31)
    lwzx 0, 4, 0
    lwz 4, 0x4(31)
    add 6, 6, 0
    bl fn_803075AC
L_8031C550:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 0, 0xf4(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_8031C598:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stfd 30, 0xf0(1)
    psq_st 30, 0xf8(1), 0, 0
    stmw 26, 0xd8(1)
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    li 0, 0x0
    stw 0, 0x2c(1)
    mr 28, 3
    li 27, 0x0
    sth 0, 0x8(1)
    stw 0, 0x28(1)
    stfs 0, 0x24(1)
    lfs 1, 0x10(3)
    lfs 0, 0xc(3)
    stfs 0, 0x30(1)
    stfs 1, 0x34(1)
    lfs 0, 0xc(3)
    stfs 0, 0x288(3)
    lfs 0, 0x10(3)
    stfs 0, 0x28c(3)
    lfs 0, 0x14(3)
    stfs 0, 0x290(3)
    lfs 0, 0x60(3)
    lfs 1, 0x30(1)
    stfs 0, 0xb4(1)
    lfs 5, 0x34(1)
    fadds 3, 0, 1
    lfs 0, 0x64(3)
    stfs 0, 0xb8(1)
    fadds 2, 0, 5
    lfs 0, 0x68(3)
    stfs 0, 0xbc(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(3)
    fadds 0, 4, 5
    stfs 4, 0xc0(1)
    stfs 3, 0xb4(1)
    stfs 2, 0xb8(1)
    stfs 1, 0xbc(1)
    stfs 0, 0xc0(1)
    lhz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x41820038 # beq .L_8031C688
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8031C688
    lfs 1, 0x27c(28)
    addi 3, 28, 0x3c
    .4byte 0xC042EA20 # lfs f2, lbl_805419C0@sda21(r0)
    .4byte 0xC062EA1C # lfs f3, lbl_805419BC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x280(28)
    addi 3, 28, 0x40
    .4byte 0xC042EA20 # lfs f2, lbl_805419C0@sda21(r0)
    .4byte 0xC062EA1C # lfs f3, lbl_805419BC@sda21(r0)
    bl fn_801F71A4
L_8031C688:
    lhz 0, 0x94(28)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8031C6B4
    psq_l 1, 0xc(28), 0, 0
    psq_l 0, 0x3c(28), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x44(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
L_8031C6B4:
    lhz 0, 0x94(28)
    cmplwi 0, 0x3
    .4byte 0x40820028 # bne .L_8031C6E4
    lwz 0, 0x230(28)
    cmpwi 0, 0x7
    .4byte 0x4182001C # beq .L_8031C6E4
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_8031C6E4
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_8031C6E4:
    lwz 3, 0x230(28)
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8031C704
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8031C704
    cmpwi 3, 0xa
    .4byte 0x40820470 # bne .L_8031CB70
L_8031C704:
    li 26, 0x0
L_8031C708:
    mr 3, 26
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_8031C76C
    lwz 31, 0x4(28)
    mr 3, 26
    bl fn_8023DE58
    cmpw 31, 3
    .4byte 0x40820044 # bne .L_8031C76C
    mr 3, 26
    bl fn_8023A478
    lfs 3, 0x0(3)
    lfs 0, 0xc(28)
    lfs 2, 0x4(3)
    lfs 1, 0x10(28)
    fsubs 3, 3, 0
    .4byte 0xC002EA24 # lfs f0, lbl_805419C4@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4181000C # bgt .L_8031C76C
    li 27, 0x1
    .4byte 0x48000010 # b .L_8031C778
L_8031C76C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF94 # blt .L_8031C708
L_8031C778:
    clrlwi. 0, 27, 24
    .4byte 0x41820110 # beq .L_8031C88C
    lfs 0, 0x44(28)
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408200FC # bne .L_8031C88C
    lfs 0, 0x14(28)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408200EC # bne .L_8031C88C
    .4byte 0xC002EA28 # lfs f0, lbl_805419C8@sda21(r0)
    stfs 0, 0x44(28)
    bl fn_8023A240
    cmpwi 3, 0x2
    .4byte 0x41820074 # beq .L_8031C828
    .4byte 0x40800014 # bge .L_8031C7CC
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8031C7D8
    .4byte 0x4080003C # bge .L_8031C800
    .4byte 0x480000AC # b .L_8031C874
L_8031C7CC:
    cmpwi 3, 0x4
    .4byte 0x408000A4 # bge .L_8031C874
    .4byte 0x4800007C # b .L_8031C850
L_8031C7D8:
    .4byte 0xC022EA2C # lfs f1, lbl_805419CC@sda21(r0)
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    stfs 1, 0x80(1)
    lfs 1, 0x44(28)
    stfs 0, 0x84(1)
    psq_l 0, 0x80(1), 0, 0
    stfs 1, 0x88(1)
    psq_st 0, 0x3c(28), 0, 0
    stfs 1, 0x44(28)
    .4byte 0x48000078 # b .L_8031C874
L_8031C800:
    .4byte 0xC022EA30 # lfs f1, lbl_805419D0@sda21(r0)
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    stfs 1, 0x74(1)
    lfs 1, 0x44(28)
    stfs 0, 0x78(1)
    psq_l 0, 0x74(1), 0, 0
    stfs 1, 0x7c(1)
    psq_st 0, 0x3c(28), 0, 0
    stfs 1, 0x44(28)
    .4byte 0x48000050 # b .L_8031C874
L_8031C828:
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    .4byte 0xC002EA2C # lfs f0, lbl_805419CC@sda21(r0)
    stfs 1, 0x68(1)
    lfs 1, 0x44(28)
    stfs 0, 0x6c(1)
    psq_l 0, 0x68(1), 0, 0
    stfs 1, 0x70(1)
    psq_st 0, 0x3c(28), 0, 0
    stfs 1, 0x44(28)
    .4byte 0x48000028 # b .L_8031C874
L_8031C850:
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    .4byte 0xC002EA30 # lfs f0, lbl_805419D0@sda21(r0)
    stfs 1, 0x5c(1)
    lfs 1, 0x44(28)
    stfs 0, 0x60(1)
    psq_l 0, 0x5c(1), 0, 0
    stfs 1, 0x64(1)
    psq_st 0, 0x3c(28), 0, 0
    stfs 1, 0x44(28)
L_8031C874:
    psq_l 1, 0x3c(28), 0, 0
    li 0, 0x3
    lfs 0, 0x44(28)
    psq_st 1, 0x27c(28), 0, 0
    stfs 0, 0x284(28)
    sth 0, 0x94(28)
L_8031C88C:
    lfs 0, 0x14(28)
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810018 # ble .L_8031C8B0
    lfs 1, 0x44(28)
    .4byte 0xC002EA34 # lfs f0, lbl_805419D4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(28)
    .4byte 0x48000050 # b .L_8031C8FC
L_8031C8B0:
    cror eq, lt, eq
    .4byte 0x40820048 # bne .L_8031C8FC
    lfs 0, 0x44(28)
    fcmpo cr0, 0, 1
    .4byte 0x4080003C # bge .L_8031C8FC
    stfs 1, 0x14(28)
    li 0, 0x0
    stfs 1, 0x44(28)
    stfs 1, 0x40(28)
    stfs 1, 0x3c(28)
    sth 0, 0x94(28)
    lbz 0, 0x278(28)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8031C8FC
    mr 3, 28
    li 4, 0x42
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x278(28)
L_8031C8FC:
    lwz 4, 0x4(28)
    addi 3, 1, 0xb4
    lfs 1, 0x14(28)
    li 5, 0x0
    bl fn_8023AF14
    lwz 4, 0x198(28)
    mr 31, 3
    mr 3, 28
    addi 5, 1, 0x8
    addi 6, 1, 0x28
    addi 7, 1, 0x24
    addi 8, 1, 0x2c
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    cmpwi 31, 0x0
    .4byte 0x40800080 # bge .L_8031C9BC
    li 26, 0x0
L_8031C944:
    mr 3, 26
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_8031C9B0
    mr 3, 26
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8031C9B0
    lwz 5, 0x4(28)
    mr 3, 26
    addi 4, 1, 0xb4
    addi 6, 1, 0x30
    li 7, 0x1
    bl fn_8023B9CC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820024 # beq .L_8031C9A8
    lwz 5, 0x4(28)
    mr 3, 26
    addi 4, 1, 0xb4
    addi 6, 1, 0x30
    bl fn_8023B848
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8031C9B0
L_8031C9A8:
    mr 31, 26
    .4byte 0x48000010 # b .L_8031C9BC
L_8031C9B0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF8C # blt .L_8031C944
L_8031C9BC:
    cmpwi 31, 0x0
    .4byte 0x418001B0 # blt .L_8031CB70
    mr 3, 31
    bl fn_80234C5C
    clrlwi. 0, 3, 24
    .4byte 0x408201A0 # bne .L_8031CB70
    mr 3, 31
    bl fn_8022B7C4
    clrlwi. 0, 3, 24
    .4byte 0x40820190 # bne .L_8031CB70
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820180 # bne .L_8031CB70
    mr 3, 31
    bl fn_80234ECC
    clrlwi. 0, 3, 24
    .4byte 0x40820170 # bne .L_8031CB70
    mr 3, 31
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820160 # bne .L_8031CB70
    mr 3, 31
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8031CA30
    mr 3, 31
    bl fn_8022F3DC
L_8031CA30:
    lwz 0, 0x230(28)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_8031CA44
    cmpwi 0, 0x4
    .4byte 0x40820130 # bne .L_8031CB70
L_8031CA44:
    mr 3, 31
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x4082010C # bne .L_8031CB5C
    mr 3, 31
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x408200FC # bne .L_8031CB5C
    mr 3, 31
    bl fn_80233DA4
    clrlwi. 0, 3, 24
    .4byte 0x408200EC # bne .L_8031CB5C
    mr 3, 31
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200EC # bne .L_8031CB70
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 3, 0x8(3)
    mr 3, 31
    .4byte 0xC002EA38 # lfs f0, lbl_805419D8@sda21(r0)
    psq_st 1, 0x98(1), 0, 0
    lfs 1, 0x9c(1)
    lfs 2, 0x98(1)
    fsubs 0, 1, 0
    stfs 3, 0xa0(1)
    stfs 2, 0x8c(1)
    stfs 0, 0x90(1)
    stfs 3, 0x94(1)
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8031CAF0
    mr 3, 31
    addi 4, 1, 0x98
    li 5, 0x336
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_8031CB10
L_8031CAF0:
    mr 3, 31
    addi 4, 1, 0x98
    li 5, 0xed
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8031CB10:
    bl SpatialRegistry_GetBase
    lwz 4, 0x90(28)
    slwi 0, 31, 24
    slwi 7, 31, 26
    lis 8, 0x494d
    clrlwi 4, 4, 30
    lwz 5, 0x4(28)
    addis 6, 4, 0xa0
    li 9, -0x1
    add 0, 6, 0
    addi 4, 8, 0x5550
    add 7, 0, 7
    addi 6, 1, 0x8c
    li 8, -0x1
    addi 7, 7, 0x4
    bl fn_801F9484
    mr 3, 28
    bl fn_801F3668
    .4byte 0x48000F34 # b .L_8031DA8C
L_8031CB5C:
    stw 31, 0x264(28)
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(28)
    stw 0, 0xb0(28)
L_8031CB70:
    lbz 0, 0x17d(28)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8031CB9C
    li 0, 0x14
    stw 0, 0x250(28)
    lwz 0, 0x4(28)
    stw 0, 0x270(28)
    psq_l 1, 0x3c(28), 0, 0
    lfs 0, 0x44(28)
    psq_st 1, 0x27c(28), 0, 0
    stfs 0, 0x284(28)
L_8031CB9C:
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_8031CBB4
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x41820D0C # beq .L_8031D8BC
L_8031CBB4:
    lwz 4, 0x230(28)
    cmplwi 4, 0xa
    .4byte 0x41810D3C # bgt .L_8031D8F8
    lis 3, jumptable_804AB1C4@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804AB1C4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 1, 0x24(1)
    .4byte 0xC002EA3C # lfs f0, lbl_805419DC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800D14 # bge .L_8031D8F8
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x244(28)
    stw 0, 0x230(28)
    .4byte 0x48000D00 # b .L_8031D8F8
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    li 3, 0x1e
    .4byte 0xC002EA40 # lfs f0, lbl_805419E0@sda21(r0)
    li 0, 0x2
    stfs 1, 0x44(28)
    stfs 1, 0x40(28)
    stfs 1, 0x3c(28)
    stfs 1, 0x14(28)
    stw 3, 0x244(28)
    stfs 0, 0x44(28)
    stw 0, 0x230(28)
    lwz 3, 0x264(28)
    mr 26, 3
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8031CC4C
    lwz 3, 0x264(28)
    bl fn_8022F3DC
    mr 26, 3
L_8031CC4C:
    lwz 0, 0x268(28)
    lis 3, lbl_804AB160@ha
    addi 5, 3, lbl_804AB160@l
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    slwi 0, 0, 2
    mr 4, 26
    lwzx 5, 5, 0
    li 6, 0x0
    bl fn_8043D874
    mr 3, 26
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800030 # blt .L_8031CCAC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8031CCAC
    lwz 0, 0x90(28)
    mr 5, 26
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 6, 0x0
    clrlwi 0, 0, 30
    subfic 4, 0, 0x194
    bl fn_8043D67C
L_8031CCAC:
    mr 3, 28
    bl fn_801F3604
    lfs 2, 0x44(28)
    .4byte 0xC002EA34 # lfs f0, lbl_805419D4@sda21(r0)
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x44(28)
    lfs 0, 0x14(28)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_8031CCF4
    lfs 0, 0x44(28)
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_8031CCF4
    stfs 1, 0x44(28)
    stfs 1, 0x40(28)
    stfs 1, 0x3c(28)
    stfs 1, 0x14(28)
L_8031CCF4:
    lwz 3, 0x264(28)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8031CD2C
    lwz 3, 0x264(28)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(28)
    lwz 3, 0x264(28)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC002EA44 # lfs f0, lbl_805419E4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(28)
L_8031CD2C:
    lwz 0, 0x244(28)
    cmpwi 0, 0x0
    .4byte 0x40820BC4 # bne .L_8031D8F8
    mr 3, 28
    li 4, 0xff
    lwz 12, 0x0(28)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    mr 3, 28
    bl fn_801F3668
    .4byte 0x48000B9C # b .L_8031D8F8
    cmpwi 4, 0x4
    .4byte 0x40820070 # bne .L_8031CDD4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EA1C # lfs f0, lbl_805419BC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EA48 # lfs f2, lbl_805419E8@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC082EA40 # lfs f4, lbl_805419E0@sda21(r0)
    .4byte 0xC062EA4C # lfs f3, lbl_805419EC@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x26c(28)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    add 3, 0, 3
    addi 0, 3, 0x500
    stw 0, 0x26c(28)
    .4byte 0x4800006C # b .L_8031CE3C
L_8031CDD4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EA1C # lfs f0, lbl_805419BC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EA50 # lfs f2, lbl_805419F0@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC082EA54 # lfs f4, lbl_805419F4@sda21(r0)
    .4byte 0xC062EA20 # lfs f3, lbl_805419C0@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x26c(28)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    add 3, 0, 3
    addi 0, 3, 0x200
    stw 0, 0x26c(28)
L_8031CE3C:
    lwz 0, 0x26c(28)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC002EA40 # lfs f0, lbl_805419E0@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC042EA20 # lfs f2, lbl_805419C0@sda21(r0)
    lfsx 1, 3, 0
    addi 3, 28, 0x29c
    fmadds 1, 4, 1, 0
    bl fn_801F71A4
    lfs 1, 0x24(1)
    .4byte 0xC002EA3C # lfs f0, lbl_805419DC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8031CE84
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x244(28)
    stw 0, 0x230(28)
L_8031CE84:
    psq_l 2, 0x3c(28), 0, 0
    lfs 31, 0x44(28)
    ps_mul 2, 2, 2
    .4byte 0xC002EA20 # lfs f0, lbl_805419C0@sda21(r0)
    ps_madd 1, 31, 31, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    .4byte 0x40810028 # ble .L_8031CEC8
    psq_l 1, 0xc(28), 0, 0
    psq_l 0, 0x3c(28), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x44(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    .4byte 0x48000014 # b .L_8031CED8
L_8031CEC8:
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    stfs 0, 0x44(28)
    stfs 0, 0x40(28)
    stfs 0, 0x3c(28)
L_8031CED8:
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000A10 # b .L_8031D8F8
    cmpwi 4, 0x4
    .4byte 0x40820070 # bne .L_8031CF60
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EA1C # lfs f0, lbl_805419BC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EA48 # lfs f2, lbl_805419E8@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC082EA40 # lfs f4, lbl_805419E0@sda21(r0)
    .4byte 0xC062EA4C # lfs f3, lbl_805419EC@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x26c(28)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    add 3, 0, 3
    addi 0, 3, 0x500
    stw 0, 0x26c(28)
    .4byte 0x4800006C # b .L_8031CFC8
L_8031CF60:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EA1C # lfs f0, lbl_805419BC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EA50 # lfs f2, lbl_805419F0@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC082EA54 # lfs f4, lbl_805419F4@sda21(r0)
    .4byte 0xC062EA20 # lfs f3, lbl_805419C0@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x26c(28)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    add 3, 0, 3
    addi 0, 3, 0x200
    stw 0, 0x26c(28)
L_8031CFC8:
    lwz 0, 0x26c(28)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC002EA40 # lfs f0, lbl_805419E0@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC042EA20 # lfs f2, lbl_805419C0@sda21(r0)
    lfsx 1, 3, 0
    addi 3, 28, 0x29c
    fmadds 1, 4, 1, 0
    bl fn_801F71A4
    lfs 0, 0x14(28)
    .4byte 0xC022EA18 # lfs f1, lbl_805419B8@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408208F8 # bne .L_8031D8F8
    lfs 0, 0x44(28)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408208E8 # bne .L_8031D8F8
    lwz 29, 0x4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408203A4 # bne .L_8031D3D0
    lhz 0, 0x94(28)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8031D044
    li 0, 0x0
    sth 0, 0x94(28)
L_8031D044:
    .4byte 0xC042EA18 # lfs f2, lbl_805419B8@sda21(r0)
    .4byte 0xC002EA58 # lfs f0, lbl_805419F8@sda21(r0)
    stfs 2, 0x14(28)
    stfs 2, 0x44(28)
    lfs 1, 0x24(1)
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_8031D06C
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x41820340 # beq .L_8031D3A8
L_8031D06C:
    lhz 0, 0x276(28)
    sth 0, 0x274(28)
    lwz 29, 0x4(28)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_8031D08C
    addi 5, 3, 0xcc
    .4byte 0x48000008 # b .L_8031D090
L_8031D08C:
    addi 5, 3, 0xdc
L_8031D090:
    lwz 0, 0x0(5)
    lwz 4, 0x4(5)
    stw 0, 0xa4(1)
    lwz 3, 0x8(5)
    .4byte 0xC022EA5C # lfs f1, lbl_805419FC@sda21(r0)
    lfs 0, 0xa4(1)
    lwz 0, 0xc(5)
    fadds 0, 1, 0
    lfs 2, 0xc(28)
    stw 4, 0xa8(1)
    fcmpo cr0, 2, 0
    stw 3, 0xac(1)
    stw 0, 0xb0(1)
    .4byte 0x41800014 # blt .L_8031D0D8
    lfs 0, 0xac(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x4081003C # ble .L_8031D110
L_8031D0D8:
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    lfs 1, 0x27c(28)
    stfs 0, 0x54(1)
    psq_l 2, 0xc(28), 0, 0
    stfs 1, 0x50(1)
    psq_l 1, 0x50(1), 0, 0
    stfs 0, 0x58(1)
    ps_add 1, 2, 1
    psq_l 0, 0x58(1), 1, 0
    psq_st 1, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    .4byte 0x48000090 # b .L_8031D19C
L_8031D110:
    lfs 0, 0xa8(1)
    lfs 2, 0x10(28)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x41800014 # blt .L_8031D134
    lfs 0, 0xb0(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x4081003C # ble .L_8031D16C
L_8031D134:
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    lfs 1, 0x280(28)
    stfs 0, 0x44(1)
    psq_l 2, 0xc(28), 0, 0
    stfs 1, 0x48(1)
    psq_l 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    ps_add 1, 2, 1
    psq_l 0, 0x4c(1), 1, 0
    psq_st 1, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    .4byte 0x48000034 # b .L_8031D19C
L_8031D16C:
    psq_l 1, 0xc(28), 0, 0
    mr 3, 28
    psq_l 0, 0x27c(28), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x284(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    bl fn_801F2618
L_8031D19C:
    lfs 0, 0xa4(1)
    .4byte 0xC022EA60 # lfs f1, lbl_80541A00@sda21(r0)
    lfs 2, 0xc(28)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    .4byte 0x41810038 # bgt .L_8031D1E8
    lfs 0, 0xac(1)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x41800028 # blt .L_8031D1E8
    lfs 0, 0xa8(1)
    lfs 2, 0x10(28)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    .4byte 0x41810014 # bgt .L_8031D1E8
    lfs 0, 0xb0(1)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4080000C # bge .L_8031D1F0
L_8031D1E8:
    mr 3, 28
    bl fn_801F3668
L_8031D1F0:
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x41810700 # bgt .L_8031D8F8
    lhz 4, 0x8(1)
    li 5, 0x0
    lis 3, lbl_80539D44@ha
    .4byte 0xC042EA64 # lfs f2, lbl_80541A04@sda21(r0)
    addis 4, 4, 0x1
    mr 6, 5
    addi 0, 4, -0x8000
    sth 0, 0x274(28)
    mr 0, 5
    lfs 0, lbl_80539D44@l(3)
    lfs 1, 0x288(28)
    fmuls 2, 2, 0
    lfs 0, 0xc(28)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8031D254
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031D254
    li 0, 0x1
L_8031D254:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_8031D294
    lfs 1, 0x28c(28)
    li 0, 0x0
    lfs 0, 0x10(28)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8031D288
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031D288
    li 0, 0x1
L_8031D288:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8031D294
    li 6, 0x1
L_8031D294:
    clrlwi. 0, 6, 24
    .4byte 0x4182003C # beq .L_8031D2D4
    lfs 1, 0x290(28)
    li 0, 0x0
    lfs 0, 0x14(28)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8031D2C8
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031D2C8
    li 0, 0x1
L_8031D2C8:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8031D2D4
    li 5, 0x1
L_8031D2D4:
    clrlwi. 0, 5, 24
    .4byte 0x4182008C # beq .L_8031D364
    lwz 0, 0x244(28)
    cmpwi 0, 0x0
    .4byte 0x40820080 # bne .L_8031D364
    li 0, 0x2
    lis 3, 0x19
    stw 0, 0x244(28)
    addi 0, 3, 0x660d
    .4byte 0xC002EA1C # lfs f0, lbl_805419BC@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042EA30 # lfs f2, lbl_805419D0@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8031D358
    lhz 3, 0x274(28)
    addi 0, 3, 0x2000
    sth 0, 0x274(28)
    .4byte 0x48000010 # b .L_8031D364
L_8031D358:
    lhz 3, 0x274(28)
    subi 0, 3, 0x2000
    sth 0, 0x274(28)
L_8031D364:
    lhz 0, 0x274(28)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022EA30 # lfs f1, lbl_805419D0@sda21(r0)
    sth 0, 0x276(28)
    lhz 0, 0x274(28)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x27c(28)
    lhz 0, 0x274(28)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x280(28)
    .4byte 0x48000554 # b .L_8031D8F8
L_8031D3A8:
    stfs 2, 0x27c(28)
    li 0, 0x3
    mr 3, 28
    li 4, 0x0
    stfs 2, 0x280(28)
    li 5, 0x0
    stfs 2, 0x284(28)
    stw 0, 0x230(28)
    bl fn_801F2618
    .4byte 0x4800052C # b .L_8031D8F8
L_8031D3D0:
    lwz 0, 0x270(28)
    lwz 3, 0x4(28)
    cmpw 0, 3
    .4byte 0x41820034 # beq .L_8031D410
    stw 3, 0x270(28)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022EA30 # lfs f1, lbl_805419D0@sda21(r0)
    stfs 0, 0x27c(28)
    lhz 0, 0x276(28)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x280(28)
L_8031D410:
    lhz 0, 0x94(28)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8031D424
    li 0, 0x0
    sth 0, 0x94(28)
L_8031D424:
    .4byte 0xC042EA18 # lfs f2, lbl_805419B8@sda21(r0)
    .4byte 0xC002EA58 # lfs f0, lbl_805419F8@sda21(r0)
    stfs 2, 0x14(28)
    stfs 2, 0x44(28)
    lfs 1, 0x24(1)
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_8031D44C
    lwz 0, 0x174(28)
    cmpwi 0, 0x0
    .4byte 0x418201E0 # beq .L_8031D628
L_8031D44C:
    lhz 0, 0x276(28)
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    sth 0, 0x274(28)
    psq_l 1, 0xc(28), 0, 0
    psq_l 0, 0x27c(28), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x284(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    bl fn_801F2618
    lwz 0, 0x174(28)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8031D49C
    lwz 0, 0x244(28)
    cmpwi 0, 0x0
    .4byte 0x40820460 # bne .L_8031D8F8
L_8031D49C:
    lhz 4, 0x8(1)
    li 5, 0x0
    lis 3, lbl_80539D44@ha
    .4byte 0xC042EA64 # lfs f2, lbl_80541A04@sda21(r0)
    addis 4, 4, 0x1
    mr 6, 5
    addi 0, 4, -0x8000
    sth 0, 0x274(28)
    mr 0, 5
    lfs 0, lbl_80539D44@l(3)
    lfs 1, 0x288(28)
    fmuls 2, 2, 0
    lfs 0, 0xc(28)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8031D4F4
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031D4F4
    li 0, 0x1
L_8031D4F4:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_8031D534
    lfs 1, 0x28c(28)
    li 0, 0x0
    lfs 0, 0x10(28)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8031D528
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031D528
    li 0, 0x1
L_8031D528:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8031D534
    li 6, 0x1
L_8031D534:
    clrlwi. 0, 6, 24
    .4byte 0x4182003C # beq .L_8031D574
    lfs 1, 0x290(28)
    li 0, 0x0
    lfs 0, 0x14(28)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8031D568
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8031D568
    li 0, 0x1
L_8031D568:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8031D574
    li 5, 0x1
L_8031D574:
    clrlwi. 0, 5, 24
    .4byte 0x41820080 # beq .L_8031D5F8
    li 0, 0x2
    lis 3, 0x19
    stw 0, 0x244(28)
    addi 0, 3, 0x660d
    .4byte 0xC002EA1C # lfs f0, lbl_805419BC@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042EA30 # lfs f2, lbl_805419D0@sda21(r0)
    lwz 3, 0xb4(4)
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
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8031D5EC
    lhz 3, 0x274(28)
    addi 0, 3, 0x2000
    sth 0, 0x274(28)
    .4byte 0x48000010 # b .L_8031D5F8
L_8031D5EC:
    lhz 3, 0x274(28)
    subi 0, 3, 0x2000
    sth 0, 0x274(28)
L_8031D5F8:
    lhz 0, 0x274(28)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022EA30 # lfs f1, lbl_805419D0@sda21(r0)
    sth 0, 0x276(28)
    lhz 0, 0x274(28)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x27c(28)
    stfs 1, 0x280(28)
    .4byte 0x480002D4 # b .L_8031D8F8
L_8031D628:
    stfs 2, 0x27c(28)
    li 0, 0x3
    mr 3, 28
    li 4, 0x0
    stfs 2, 0x280(28)
    li 5, 0x0
    stfs 2, 0x284(28)
    stw 0, 0x230(28)
    bl fn_801F2618
    .4byte 0x480002AC # b .L_8031D8F8
    psq_l 1, 0xc(28), 0, 0
    mr 3, 28
    psq_l 0, 0x27c(28), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x284(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    bl fn_801F2618
    lwz 0, 0x248(28)
    cmpwi 0, 0x0
    .4byte 0x41810160 # bgt .L_8031D7E8
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    stfs 0, 0x44(28)
    stfs 0, 0x40(28)
    stfs 0, 0x3c(28)
    stfs 0, 0x284(28)
    stfs 0, 0x280(28)
    stfs 0, 0x27c(28)
    lwz 0, 0x230(28)
    cmpwi 0, 0x7
    .4byte 0x408200F4 # bne .L_8031D7A4
    li 26, 0x0
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8031D6E8
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x3f
    li 30, 0x45e
    li 29, 0x45f
    li 5, 0x0
    bl fn_801F0E34
    li 26, 0x1
    .4byte 0x48000058 # b .L_8031D73C
L_8031D6E8:
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8031D71C
    lis 4, 0x5
    mr 3, 28
    addi 4, 4, 0x40
    li 30, 0x2a9
    li 29, 0x2aa
    li 5, 0x0
    bl fn_801F0E34
    li 26, 0x1
    .4byte 0x48000024 # b .L_8031D73C
L_8031D71C:
    lfs 2, 0x23c(28)
    .4byte 0xC022EA20 # lfs f1, lbl_805419C0@sda21(r0)
    .4byte 0xC002EA68 # lfs f0, lbl_80541A08@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x23c(28)
    lfs 1, 0x238(28)
    fsubs 0, 1, 0
    stfs 0, 0x238(28)
L_8031D73C:
    clrlwi 0, 26, 24
    cmplwi 0, 0x1
    .4byte 0x408200A4 # bne .L_8031D7E8
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    mr 5, 30
    .4byte 0xC022EA1C # lfs f1, lbl_805419BC@sda21(r0)
    addi 4, 28, 0xc
    stfs 0, 0x238(28)
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    lwz 3, 0x4(28)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    mr 5, 29
    .4byte 0xC022EA1C # lfs f1, lbl_805419BC@sda21(r0)
    addi 4, 28, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000048 # b .L_8031D7E8
L_8031D7A4:
    cmpwi 0, 0x6
    .4byte 0x40820040 # bne .L_8031D7E8
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022EA1C # lfs f1, lbl_805419BC@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
L_8031D7E8:
    lwz 0, 0x230(28)
    cmpwi 0, 0x5
    .4byte 0x40820024 # bne .L_8031D814
    lfs 2, 0x23c(28)
    .4byte 0xC022EA20 # lfs f1, lbl_805419C0@sda21(r0)
    .4byte 0xC002EA68 # lfs f0, lbl_80541A08@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x23c(28)
    lfs 1, 0x238(28)
    fsubs 0, 1, 0
    stfs 0, 0x238(28)
L_8031D814:
    lfs 1, 0x238(28)
    .4byte 0xC002EA20 # lfs f0, lbl_805419C0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000D8 # bge .L_8031D8F8
    mr 3, 28
    bl fn_801F3668
    .4byte 0x480000CC # b .L_8031D8F8
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_8031D8F8
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x24c(28)
    stw 0, 0x230(28)
    .4byte 0x4800009C # b .L_8031D8F8
    lwz 0, 0x24c(28)
    cmpwi 0, 0x0
    .4byte 0x41810090 # bgt .L_8031D8F8
    lwz 4, 0x90(28)
    li 5, 0xa
    li 0, 0x1e
    mr 3, 28
    clrlwi 6, 4, 30
    li 4, 0x42
    stw 6, 0x268(28)
    stw 5, 0x230(28)
    stw 0, 0x24c(28)
    bl fn_801F0D20
    .4byte 0x48000064 # b .L_8031D8F8
    lwz 0, 0x24c(28)
    cmpwi 0, 0x0
    .4byte 0x41810058 # bgt .L_8031D8F8
    lwz 3, 0x90(28)
    li 0, 0x0
    clrlwi 3, 3, 30
    stw 3, 0x268(28)
    stw 0, 0x230(28)
    .4byte 0x48000040 # b .L_8031D8F8
L_8031D8BC:
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    stfs 0, 0x27c(28)
    stfs 0, 0x280(28)
    lwz 0, 0x230(28)
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_8031D8E8
    lwz 3, 0x90(28)
    li 0, 0x3
    clrlwi 3, 3, 30
    stw 3, 0x268(28)
    stw 0, 0x230(28)
L_8031D8E8:
    mr 3, 28
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_8031D8F8:
    psq_l 2, 0x3c(28), 0, 0
    lfs 30, 0x44(28)
    ps_mul 2, 2, 2
    .4byte 0xC002EA20 # lfs f0, lbl_805419C0@sda21(r0)
    ps_madd 1, 30, 30, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    .4byte 0x4081002C # ble .L_8031D940
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022EA6C # lfs f1, lbl_80541A0C@sda21(r0)
    li 5, 0x345
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8031D940:
    lwz 0, 0x230(28)
    cmpwi 0, 0x8
    .4byte 0x41820048 # beq .L_8031D990
    cmpwi 0, 0x9
    .4byte 0x41820040 # beq .L_8031D990
    lwz 0, 0x4(28)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_8031D990
    lfs 2, 0x10(28)
    addi 4, 1, 0x38
    lfs 0, 0x14(28)
    lfs 1, 0xc(28)
    fsubs 2, 2, 0
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    stfs 1, 0x38(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x3c(1)
    stfs 0, 0x40(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8031D990:
    lwz 3, 0x240(28)
    addi 0, 3, 0x1
    stw 0, 0x240(28)
    lwz 0, 0x230(28)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_8031D9B8
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_8031D9B8
    cmpwi 0, 0x6
    .4byte 0x40820048 # bne .L_8031D9FC
L_8031D9B8:
    lwz 4, 0x254(28)
    lis 3, lbl_804716E0@ha
    addi 3, 3, lbl_804716E0@l
    lwz 5, 0x240(28)
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4081000C # ble .L_8031D9E0
    addi 0, 4, 0x1
    stw 0, 0x254(28)
L_8031D9E0:
    lwz 0, 0x254(28)
    cmpwi 0, 0x4
    .4byte 0x41800054 # blt .L_8031DA3C
    li 0, 0x0
    stw 0, 0x254(28)
    stw 0, 0x240(28)
    .4byte 0x48000044 # b .L_8031DA3C
L_8031D9FC:
    lwz 4, 0x254(28)
    lis 3, lbl_804716E0@ha
    addi 3, 3, lbl_804716E0@l
    lwz 5, 0x240(28)
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4081000C # ble .L_8031DA24
    addi 0, 4, 0x1
    stw 0, 0x254(28)
L_8031DA24:
    lwz 0, 0x254(28)
    cmpwi 0, 0x4
    .4byte 0x41800010 # blt .L_8031DA3C
    li 0, 0x0
    stw 0, 0x254(28)
    stw 0, 0x240(28)
L_8031DA3C:
    lwz 3, 0x244(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031DA50
    subi 0, 3, 0x1
    stw 0, 0x244(28)
L_8031DA50:
    lwz 3, 0x248(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031DA64
    subi 0, 3, 0x1
    stw 0, 0x248(28)
L_8031DA64:
    lwz 3, 0x24c(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031DA78
    subi 0, 3, 0x1
    stw 0, 0x24c(28)
L_8031DA78:
    lwz 3, 0x250(28)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031DA8C
    subi 0, 3, 0x1
    stw 0, 0x250(28)
L_8031DA8C:
    psq_l 31, 0x108(1), 0, 0
    lfd 31, 0x100(1)
    psq_l 30, 0xf8(1), 0, 0
    lfd 30, 0xf0(1)
    lmw 26, 0xd8(1)
    lwz 0, 0x114(1)
    mtlr 0
    addi 1, 1, 0x110
    blr

fn_8031DAB0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    mr 3, 5
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_8031DAF8
    .4byte 0xC002EA18 # lfs f0, lbl_805419B8@sda21(r0)
    li 0, 0x5
    li 3, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    .4byte 0x48000220 # b .L_8031DD14
L_8031DAF8:
    cmpwi 0, 0xe
    .4byte 0x40820028 # bne .L_8031DB24
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x41820014 # beq .L_8031DB1C
    li 3, 0xa
    li 0, 0x7
    stw 3, 0x248(31)
    stw 0, 0x230(31)
L_8031DB1C:
    li 3, 0x0
    .4byte 0x480001F4 # b .L_8031DD14
L_8031DB24:
    cmpwi 0, 0xd
    .4byte 0x40820028 # bne .L_8031DB50
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_8031DB48
    li 3, 0xa
    li 0, 0x6
    stw 3, 0x248(31)
    stw 0, 0x230(31)
L_8031DB48:
    li 3, 0x0
    .4byte 0x480001C8 # b .L_8031DD14
L_8031DB50:
    cmpwi 0, 0x0
    .4byte 0x418201BC # beq .L_8031DD10
    cmpwi 0, 0x27
    .4byte 0x418201B4 # beq .L_8031DD10
    cmpwi 0, 0x2
    .4byte 0x418201AC # beq .L_8031DD10
    cmpwi 0, 0x28
    .4byte 0x40820030 # bne .L_8031DB9C
    lfs 0, 0x10(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0x8
    .4byte 0x41810178 # bgt .L_8031DD10
L_8031DB9C:
    cmpwi 0, 0x29
    .4byte 0x40820030 # bne .L_8031DBD0
    lfs 0, 0x10(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0x8
    .4byte 0x41800144 # blt .L_8031DD10
L_8031DBD0:
    cmpwi 0, 0x2c
    .4byte 0x40820030 # bne .L_8031DC04
    lfs 0, 0x10(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0x8
    .4byte 0x41810110 # bgt .L_8031DD10
L_8031DC04:
    cmpwi 0, 0x2d
    .4byte 0x40820030 # bne .L_8031DC38
    lfs 0, 0x10(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0x8
    .4byte 0x418000DC # blt .L_8031DD10
L_8031DC38:
    cmpwi 0, 0x2a
    .4byte 0x40820030 # bne .L_8031DC6C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0x8
    .4byte 0x418100A8 # bgt .L_8031DD10
L_8031DC6C:
    cmpwi 0, 0x2b
    .4byte 0x40820030 # bne .L_8031DCA0
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0x8
    .4byte 0x41800074 # blt .L_8031DD10
L_8031DCA0:
    cmpwi 0, 0x2e
    .4byte 0x40820030 # bne .L_8031DCD4
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    slwi 3, 4, 28
    srwi 4, 4, 31
    subf 3, 4, 3
    rotlwi 3, 3, 4
    add 3, 3, 4
    cmpwi 3, 0x8
    .4byte 0x41810040 # bgt .L_8031DD10
L_8031DCD4:
    cmpwi 0, 0x2f
    .4byte 0x40820030 # bne .L_8031DD08
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8031DD10
L_8031DD08:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8031DD14
L_8031DD10:
    li 3, 0x0
L_8031DD14:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8031DD28:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, 0x19
    lis 4, 0x2
    stw 0, 0x24(1)
    li 9, 0x0
    li 8, 0x2710
    li 7, -0x1
    lwz 0, 0x90(3)
    li 6, 0x64
    .4byte 0xC062EA1C # lfs f3, lbl_805419BC@sda21(r0)
    addi 5, 5, 0x660d
    clrlwi 0, 0, 30
    .4byte 0xC042EA18 # lfs f2, lbl_805419B8@sda21(r0)
    stw 0, 0x268(3)
    addi 0, 4, 0xa
    .4byte 0xC002EA70 # lfs f0, lbl_80541A10@sda21(r0)
    lwz 10, 0x90(3)
    .4byte 0xC022EA74 # lfs f1, lbl_80541A14@sda21(r0)
    extrwi 4, 10, 8, 8
    sth 4, 0x94(3)
    stw 9, 0x254(3)
    stw 9, 0x258(3)
    stw 9, 0x25c(3)
    stw 9, 0x260(3)
    stw 9, 0x240(3)
    stw 9, 0x244(3)
    stw 9, 0x248(3)
    stw 9, 0x24c(3)
    stw 9, 0x250(3)
    sth 9, 0x274(3)
    lhz 4, 0x274(3)
    sth 4, 0x276(3)
    stw 8, 0x108(3)
    stw 7, 0x264(3)
    stw 9, 0x98(3)
    lfs 4, 0xc(3)
    stfs 4, 0x288(3)
    lfs 4, 0x10(3)
    stfs 4, 0x28c(3)
    lfs 4, 0x14(3)
    stfs 4, 0x290(3)
    stw 6, 0x260(3)
    stfs 3, 0x238(3)
    stfs 2, 0x23c(3)
    stb 9, 0x278(3)
    lwz 4, 0x4(3)
    stw 4, 0x270(3)
    stfs 0, 0x234(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(6)
    mullw 4, 4, 5
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    stw 4, 0x25c(3)
    stw 0, 0xb0(3)
    stfs 2, 0x29c(3)
    stfs 2, 0x298(3)
    stfs 2, 0x294(3)
    stw 9, 0x26c(3)
    lhz 0, 0x94(3)
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8031DE88
    .4byte 0x40800010 # bge .L_8031DE60
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8031DE6C
    .4byte 0x4800004C # b .L_8031DEA8
L_8031DE60:
    cmpwi 0, 0x3
    .4byte 0x40800044 # bge .L_8031DEA8
    .4byte 0x48000038 # b .L_8031DEA0
L_8031DE6C:
    lwz 4, 0x90(3)
    li 0, 0x1
    clrlwi 4, 4, 30
    stw 4, 0x268(3)
    stw 9, 0x230(3)
    stb 0, 0x278(3)
    .4byte 0x48000024 # b .L_8031DEA8
L_8031DE88:
    lwz 4, 0x90(3)
    li 0, 0x4
    clrlwi 4, 4, 30
    stw 4, 0x268(3)
    stw 0, 0x230(3)
    .4byte 0x4800000C # b .L_8031DEA8
L_8031DEA0:
    li 0, 0x8
    stw 0, 0x230(3)
L_8031DEA8:
    .4byte 0xC042EA18 # lfs f2, lbl_805419B8@sda21(r0)
    li 5, 0x1
    .4byte 0xC022EA78 # lfs f1, lbl_80541A18@sda21(r0)
    stfs 2, 0x27c(3)
    .4byte 0xC002EA7C # lfs f0, lbl_80541A1C@sda21(r0)
    stfs 2, 0x280(3)
    stfs 2, 0x284(3)
    stfs 2, 0x3c(3)
    stfs 2, 0x40(3)
    stfs 2, 0x44(3)
    stw 5, 0xb8(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8031DF0C
    bl fn_801F3668
    .4byte 0x48000008 # b .L_8031DF10
L_8031DF0C:
    stb 5, 0x194(3)
L_8031DF10:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8031DF20:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805083F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805083F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031DF70
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
L_8031DF70:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031DFA8
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
L_8031DFA8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031DFE0
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
L_8031DFE0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031E018
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
L_8031E018:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031E050
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
L_8031E050:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031E088
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
L_8031E088:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031E0C0
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
L_8031E0C0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031E0F8
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
L_8031E0F8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031E130
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
L_8031E130:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031E144:
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
    stw 29, 0xc4(1)
    li 0, -0x1
    mr 29, 3
    stw 0, 0x8c(1)
    addi 9, 1, 0x7c
    li 10, 0x0
    stw 0, 0x90(1)
    .4byte 0x48000064 # b .L_8031E208
L_8031E1A8:
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
L_8031E208:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8031E1A8
    li 7, 0x0
    li 6, 0x1
    li 8, -0x1
    li 5, 0x3
    li 4, 0x2
    stw 8, 0x8c(1)
    lis 3, lbl_80471718@ha
    li 30, 0x89
    stw 7, 0x90(1)
    addi 0, 3, lbl_80471718@l
    mr 31, 0
    stw 7, 0x94(1)
    stb 7, 0x98(1)
    stb 7, 0x99(1)
    stb 7, 0x9a(1)
    stb 6, 0x9b(1)
    stb 6, 0x9c(1)
    stb 7, 0x9d(1)
    stb 7, 0x9e(1)
    stb 7, 0x9f(1)
    stb 7, 0xa0(1)
    stb 7, 0xa1(1)
    stb 6, 0xa2(1)
    stw 5, 0xa4(1)
    stb 6, 0xa8(1)
    stb 7, 0xa9(1)
    stb 7, 0xaa(1)
    stw 8, 0xac(1)
    stw 7, 0xb0(1)
    stw 4, 0xb4(1)
    lwz 0, 0x248(29)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_8031E2AC
    lwz 3, 0x250(29)
    lis 4, lbl_8047172C@ha
    addi 0, 4, lbl_8047172C@l
    mr 31, 0
    addi 30, 3, 0x471
L_8031E2AC:
    li 3, 0x1
    li 0, -0x1
    stb 3, 0xa9(1)
    stb 0, 0x99(1)
    lwz 0, 0x230(29)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_8031E2D0
    cmpwi 0, 0x3
    .4byte 0x40820144 # bne .L_8031E410
L_8031E2D0:
    lfs 1, 0x238(29)
    addi 3, 1, 0x4c
    lfs 0, 0x240(29)
    fmuls 29, 1, 0
    bl PSMTXIdentity
    lfs 30, 0x23c(29)
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x4c
    fmuls 7, 30, 26
    stw 0, 0x94(1)
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
    stfs 8, 0x4c(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x5c(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x6c(1)
    fmuls 0, 29, 0
    stfs 5, 0x50(1)
    stfs 4, 0x60(1)
    stfs 3, 0x70(1)
    stfs 2, 0x54(1)
    stfs 1, 0x64(1)
    stfs 0, 0x74(1)
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x40800234 # bge .L_8031E5F4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534f
    mr 5, 31
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EA84 # lfs f1, lbl_80541A24@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x7c
    lwz 3, 0x20(4)
    addi 4, 29, 0xc
    bl fn_802F86CC
    .4byte 0x480001E8 # b .L_8031E5F4
L_8031E410:
    li 0, 0x0
    addi 3, 1, 0x1c
    stb 0, 0x99(1)
    bl PSMTXIdentity
    lfs 31, 0x23c(29)
    lfs 29, 0x240(29)
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl sin
    frsp 26, 1
    fmr 1, 31
    bl sin
    frsp 27, 1
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 31, 1
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    bl cos
    frsp 4, 1
    addi 0, 1, 0x1c
    fmuls 8, 31, 28
    stw 0, 0x94(1)
    fneg 7, 27
    .4byte 0xC002EA80 # lfs f0, lbl_80541A20@sda21(r0)
    fmuls 11, 30, 4
    fmuls 3, 26, 27
    fmuls 10, 30, 28
    fmuls 2, 26, 28
    fmuls 1, 26, 4
    fmuls 9, 31, 4
    fmsubs 6, 3, 4, 10
    fmadds 5, 3, 28, 11
    fmuls 4, 26, 31
    fmadds 3, 11, 27, 2
    fmsubs 2, 10, 27, 1
    fmuls 1, 30, 31
    fmuls 9, 29, 9
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    stfs 9, 0x1c(1)
    fmuls 5, 29, 5
    fmuls 4, 29, 4
    stfs 8, 0x2c(1)
    fmuls 3, 29, 3
    fmuls 2, 29, 2
    stfs 7, 0x3c(1)
    fmuls 1, 29, 1
    stfs 6, 0x20(1)
    stfs 5, 0x30(1)
    stfs 4, 0x40(1)
    stfs 3, 0x24(1)
    stfs 2, 0x34(1)
    stfs 1, 0x44(1)
    lfs 1, 0x14(29)
    fcmpu cr0, 1, 0
    .4byte 0x4182000C # beq .L_8031E510
    li 0, 0x1
    stb 0, 0x98(1)
L_8031E510:
    lwz 0, 0x258(29)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_8031E524
    cmpwi 0, 0x5
    .4byte 0x40820084 # bne .L_8031E5A4
L_8031E524:
    .4byte 0xC022EA84 # lfs f1, lbl_80541A24@sda21(r0)
    mr 3, 29
    mr 4, 31
    mr 5, 30
    fmr 2, 1
    addi 6, 1, 0x7c
    li 7, -0x1
    bl fn_801F06F0
    lfs 1, 0x10(29)
    addi 4, 29, 0xc
    .4byte 0xC002EA84 # lfs f0, lbl_80541A24@sda21(r0)
    psq_l 3, 0x0(4), 0, 0
    lfs 2, 0x14(29)
    fsubs 0, 1, 0
    psq_st 3, 0x10(1), 0, 0
    stfs 0, 0x10(29)
    lwz 0, 0x138(29)
    stfs 2, 0x18(1)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8031E590
    lwz 3, 0x4(29)
    mr 7, 31
    mr 8, 30
    addi 5, 1, 0x7c
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
L_8031E590:
    psq_l 1, 0x10(1), 0, 0
    lfs 0, 0x18(1)
    psq_st 1, 0xc(29), 0, 0
    stfs 0, 0x14(29)
    .4byte 0x48000024 # b .L_8031E5C4
L_8031E5A4:
    .4byte 0xC022EA84 # lfs f1, lbl_80541A24@sda21(r0)
    mr 3, 29
    mr 4, 31
    mr 5, 30
    fmr 2, 1
    addi 6, 1, 0x7c
    li 7, 0x7
    bl fn_801F06F0
L_8031E5C4:
    li 0, 0x0
    mr 6, 30
    stw 0, 0x8(1)
    addi 5, 29, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    bl fn_803075AC
L_8031E5F4:
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
    lwz 30, 0xc8(1)
    lwz 0, 0x134(1)
    lwz 29, 0xc4(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

fn_8031E640:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lfs 3, 0x60(3)
    stfs 3, 0x20(1)
    lfs 2, 0x64(3)
    stfs 2, 0x24(1)
    lfs 1, 0x68(3)
    stfs 1, 0x28(1)
    lfs 4, 0x6c(3)
    stfs 4, 0x2c(1)
    lfs 0, 0xc(3)
    lfs 5, 0x10(3)
    fadds 3, 3, 0
    fadds 2, 2, 5
    stfs 0, 0xc(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0x10(1)
    stfs 3, 0x20(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x4182028C # beq .L_8031E940
    .4byte 0x40800014 # bge .L_8031E6CC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8031E6D8
    .4byte 0x40800154 # bge .L_8031E818
    .4byte 0x480002AC # b .L_8031E974
L_8031E6CC:
    cmpwi 0, 0x4
    .4byte 0x408002A4 # bge .L_8031E974
    .4byte 0x4800023C # b .L_8031E910
L_8031E6D8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 30, 0x198(31)
    lwz 29, 0x4(31)
    bl fn_8020D58C
    mr 7, 3
    mr 5, 29
    lbz 0, 0x0(3)
    mr 6, 30
    addi 4, 1, 0x20
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 7, 3
    bl fn_8020D8C0
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AB94
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_8031E748
    lis 4, lbl_80471708@ha
    mr 3, 31
    addi 4, 4, lbl_80471708@l
    bl fn_801F26CC
    cmpwi 3, 0x0
    .4byte 0x41800230 # blt .L_8031E974
L_8031E748:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8031E790
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a45
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000078 # b .L_8031E804
L_8031E790:
    .4byte 0xC022EA88 # lfs f1, lbl_80541A28@sda21(r0)
    addi 4, 31, 0xc
    lfs 0, 0x240(31)
    li 5, 0x28d
    lwz 3, 0x4(31)
    li 6, 0x0
    fmuls 1, 1, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022EA88 # lfs f1, lbl_80541A28@sda21(r0)
    addi 4, 31, 0xc
    lfs 0, 0x240(31)
    li 5, 0x28e
    lwz 3, 0x4(31)
    li 6, 0x0
    fmuls 1, 1, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 5, 0x0
    bl fn_801F0E34
L_8031E804:
    li 3, 0x1
    li 0, 0x28
    stw 3, 0x230(31)
    stw 0, 0x25c(31)
    .4byte 0x48000160 # b .L_8031E974
L_8031E818:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x25c(31)
    subi 0, 3, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x41810138 # bgt .L_8031E974
    lwz 3, 0x258(31)
    cmpwi 3, 0x4
    .4byte 0x4182000C # beq .L_8031E854
    cmpwi 3, 0x5
    .4byte 0x4082000C # bne .L_8031E85C
L_8031E854:
    subi 29, 3, 0x4
    .4byte 0x48000008 # b .L_8031E860
L_8031E85C:
    addi 29, 3, 0x4
L_8031E860:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    mr 7, 29
    addi 6, 31, 0xc
    addi 4, 4, 0x5059
    bl fn_801F8544
    lwz 30, 0x260(31)
    mr 29, 3
    cmpwi 30, 0x0
    .4byte 0x40810018 # ble .L_8031E8A0
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_8031E8A0:
    cmpwi 29, 0x0
    .4byte 0x41800038 # blt .L_8031E8DC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8031E8DC
    .4byte 0xC022EA80 # lfs f1, lbl_80541A20@sda21(r0)
    .4byte 0xC002EA8C # lfs f0, lbl_80541A2C@sda21(r0)
    stfs 1, 0x14(1)
    stfs 1, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_8031E8DC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EA90 # lfs f1, lbl_80541A30@sda21(r0)
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000068 # b .L_8031E974
L_8031E910:
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_8031E940
    lwz 5, 0x268(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8031E940
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x268(31)
L_8031E940:
    lfs 1, 0x23c(31)
    .4byte 0xC042EA90 # lfs f2, lbl_80541A30@sda21(r0)
    .4byte 0xC002EA94 # lfs f0, lbl_80541A34@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x23c(31)
    lfs 1, 0x238(31)
    fsubs 0, 1, 0
    stfs 0, 0x238(31)
    lfs 0, 0x238(31)
    fcmpo cr0, 0, 2
    .4byte 0x4080000C # bge .L_8031E974
    mr 3, 31
    bl fn_801F3668
L_8031E974:
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x408200A4 # bne .L_8031EA20
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4181008C # bgt .L_8031EA20
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    clrlwi 0, 0, 30
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_8031EA18
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EA84 # lfs f0, lbl_80541A24@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EA98 # lfs f2, lbl_80541A38@sda21(r0)
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
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 0, 3, 0x3c
    stw 0, 0x24c(31)
    .4byte 0x4800000C # b .L_8031EA20
L_8031EA18:
    li 0, 0x2
    stw 0, 0x24c(31)
L_8031EA20:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8031EA3C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    mr 3, 5
    bl fn_8022461C
    clrlwi 3, 3, 16
    cmpwi 3, 0xc
    .4byte 0x41820014 # beq .L_8031EA74
    cmpwi 3, 0x3
    .4byte 0x4182000C # beq .L_8031EA74
    cmpwi 3, 0xe
    .4byte 0x40820024 # bne .L_8031EA94
L_8031EA74:
    .4byte 0xC002EA80 # lfs f0, lbl_80541A20@sda21(r0)
    li 0, 0x2
    li 3, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    .4byte 0x48000084 # b .L_8031EB14
L_8031EA94:
    cmpwi 3, 0xd
    .4byte 0x40820070 # bne .L_8031EB08
    .4byte 0xC002EA80 # lfs f0, lbl_80541A20@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8031EAF8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EA84 # lfs f1, lbl_80541A24@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x268(31)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x22
    bl fn_801F0E34
L_8031EAF8:
    li 0, 0x3
    li 3, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_8031EB14
L_8031EB08:
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_8031EB14:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031EB28:
    stwu 1, -0x20(1)
    mflr 0
    li 7, 0x0
    li 6, 0x2300
    stw 0, 0x24(1)
    li 5, 0x2710
    li 4, -0x1
    .4byte 0xC042EA84 # lfs f2, lbl_80541A24@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC002EA80 # lfs f0, lbl_80541A20@sda21(r0)
    lwz 0, 0x90(31)
    .4byte 0xC022EA98 # lfs f1, lbl_80541A38@sda21(r0)
    clrlwi 0, 0, 28
    stw 0, 0x258(31)
    addi 0, 3, 0x660d
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 12
    stw 3, 0x248(31)
    stw 7, 0x268(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 5, 5
    stw 3, 0x260(31)
    stw 6, 0xb0(31)
    stw 7, 0x230(31)
    sth 7, 0x264(31)
    stw 5, 0x108(31)
    stw 7, 0x244(31)
    stw 4, 0x254(31)
    stw 7, 0x98(31)
    stfs 2, 0x238(31)
    stfs 0, 0x23c(31)
    stw 7, 0x25c(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    addi 0, 3, 0x3c
    stw 0, 0x24c(31)
    stw 7, 0x250(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_8031EC10
    cmpwi 0, 0x5
    .4byte 0x40820010 # bne .L_8031EC1C
L_8031EC10:
    .4byte 0xC002EA9C # lfs f0, lbl_80541A3C@sda21(r0)
    stfs 0, 0x240(31)
    .4byte 0x48000008 # b .L_8031EC20
L_8031EC1C:
    stfs 2, 0x240(31)
L_8031EC20:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8031EC48
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000064 # b .L_8031ECA8
L_8031EC48:
    .4byte 0xC022EAA0 # lfs f1, lbl_80541A40@sda21(r0)
    .4byte 0xC002EA80 # lfs f0, lbl_80541A20@sda21(r0)
    stfs 1, 0x234(31)
    .4byte 0xC062EAA4 # lfs f3, lbl_80541A44@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC042EAA8 # lfs f2, lbl_80541A48@sda21(r0)
    stfs 0, 0x40(31)
    .4byte 0xC022EAAC # lfs f1, lbl_80541A4C@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0xC002EAB0 # lfs f0, lbl_80541A50@sda21(r0)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8031ECA8
    mr 3, 31
    bl fn_801F3668
L_8031ECA8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8031ECBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820034 # beq .L_8031ED0C
    lis 3, lbl_804AB1F0@ha
    addi 0, 3, lbl_804AB1F0@l
    stw 0, 0x0(30)
    lwz 3, 0x268(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8031ED0C
    mr 3, 30
    bl dtor_80084580
L_8031ED0C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031ED28:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805084F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805084F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031ED78
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
L_8031ED78:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EDB0
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
L_8031EDB0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EDE8
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
L_8031EDE8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EE20
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
L_8031EE20:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EE58
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
L_8031EE58:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EE90
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
L_8031EE90:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EEC8
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
L_8031EEC8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EF00
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
L_8031EF00:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031EF38
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
L_8031EF38:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031EF4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8031EF90
    lis 5, lbl_804AB258@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB258@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8031EF90
    mr 3, 30
    bl dtor_80084580
L_8031EF90:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031EFAC:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_8031F03C
L_8031EFDC:
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
L_8031F03C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8031EFDC
    li 6, 0x0
    li 5, 0x1
    stb 6, 0x24(1)
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    stb 6, 0x35(1)
    li 0, -0x2
    stb 6, 0x25(1)
    stw 7, 0x18(1)
    stw 6, 0x1c(1)
    stw 6, 0x20(1)
    stb 6, 0x26(1)
    stb 5, 0x27(1)
    stb 5, 0x28(1)
    stb 6, 0x29(1)
    stb 6, 0x2a(1)
    stb 6, 0x2b(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 5, 0x2e(1)
    stw 4, 0x30(1)
    stb 5, 0x34(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 3, 0x40(1)
    stb 0, 0x25(1)
    stb 6, 0x24(1)
    stb 5, 0x35(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x408200B0 # bne .L_8031F178
    lwz 4, 0x244(31)
    lis 3, lbl_804AB248@ha
    lwz 0, 0x4(31)
    addi 3, 3, lbl_804AB248@l
    slwi 4, 4, 2
    lwz 5, 0x238(31)
    lwzx 3, 3, 4
    cmpwi 0, 0x8
    add 30, 5, 3
    .4byte 0x40800050 # bge .L_8031F140
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8047174C@ha
    addi 5, 3, lbl_8047174C@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EAB8 # lfs f1, lbl_80541A58@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x8
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_8031F140:
    lwz 0, 0x244(31)
    lis 3, lbl_804AB248@ha
    addi 4, 3, lbl_804AB248@l
    lwz 6, 0x238(31)
    slwi 0, 0, 2
    lwz 3, 0x198(31)
    lwzx 0, 4, 0
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    li 7, 0x0
    add 6, 6, 0
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
L_8031F178:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8031F190:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    mr 29, 3
    psq_l 1, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    lfs 5, 0x10(3)
    ps_add 0, 1, 0
    lfs 1, 0xc(3)
    psq_st 0, 0xc(29), 0, 0
    psq_l 2, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x14(29), 1, 0
    lfs 0, 0x60(3)
    stfs 0, 0x68(1)
    fadds 3, 0, 1
    lfs 0, 0x64(3)
    stfs 0, 0x6c(1)
    fadds 2, 0, 5
    lfs 0, 0x68(3)
    stfs 0, 0x70(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(3)
    fadds 0, 4, 5
    stfs 4, 0x74(1)
    stfs 3, 0x68(1)
    stfs 2, 0x6c(1)
    stfs 1, 0x70(1)
    stfs 0, 0x74(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x418201E8 # beq .L_8031F404
    .4byte 0x40800010 # bge .L_8031F230
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8031F23C
    .4byte 0x480005F8 # b .L_8031F824
L_8031F230:
    cmpwi 0, 0x3
    .4byte 0x408005F0 # bge .L_8031F824
    .4byte 0x48000584 # b .L_8031F7BC
L_8031F23C:
    lhz 0, 0x94(29)
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_8031F26C
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8031F26C
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x480005BC # b .L_8031F824
L_8031F26C:
    lwz 4, 0x4(29)
    addi 3, 1, 0x68
    addi 5, 1, 0xc
    bl fn_8023A89C
    mr. 30, 3
    .4byte 0x418005A4 # blt .L_8031F824
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 30
    psq_st 1, 0x5c(1), 0, 0
    stfs 0, 0x64(1)
    bl fn_8023A654
    mr 3, 30
    bl fn_80230CFC
    cmpwi 3, 0x0
    .4byte 0x40820030 # bne .L_8031F2DC
    lfs 1, 0x5c(1)
    .4byte 0xC002EABC # lfs f0, lbl_80541A5C@sda21(r0)
    .4byte 0xC042EAB8 # lfs f2, lbl_80541A58@sda21(r0)
    fadds 3, 1, 0
    .4byte 0xC022EAC0 # lfs f1, lbl_80541A60@sda21(r0)
    .4byte 0xC002EAC4 # lfs f0, lbl_80541A64@sda21(r0)
    stfs 2, 0x50(1)
    stfs 3, 0x5c(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    .4byte 0x48000094 # b .L_8031F36C
L_8031F2DC:
    cmpwi 3, 0x1
    .4byte 0x40820030 # bne .L_8031F310
    lfs 1, 0x5c(1)
    .4byte 0xC002EABC # lfs f0, lbl_80541A5C@sda21(r0)
    .4byte 0xC042EAC8 # lfs f2, lbl_80541A68@sda21(r0)
    fsubs 3, 1, 0
    .4byte 0xC022EAC0 # lfs f1, lbl_80541A60@sda21(r0)
    .4byte 0xC002EAC4 # lfs f0, lbl_80541A64@sda21(r0)
    stfs 2, 0x50(1)
    stfs 3, 0x5c(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    .4byte 0x48000060 # b .L_8031F36C
L_8031F310:
    cmpwi 3, 0x2
    .4byte 0x40820030 # bne .L_8031F344
    lfs 1, 0x60(1)
    .4byte 0xC002EABC # lfs f0, lbl_80541A5C@sda21(r0)
    .4byte 0xC042EAC0 # lfs f2, lbl_80541A60@sda21(r0)
    fadds 3, 1, 0
    .4byte 0xC022EAB8 # lfs f1, lbl_80541A58@sda21(r0)
    .4byte 0xC002EAC4 # lfs f0, lbl_80541A64@sda21(r0)
    stfs 2, 0x50(1)
    stfs 3, 0x60(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    .4byte 0x4800002C # b .L_8031F36C
L_8031F344:
    lfs 1, 0x60(1)
    .4byte 0xC002EABC # lfs f0, lbl_80541A5C@sda21(r0)
    .4byte 0xC042EAC0 # lfs f2, lbl_80541A60@sda21(r0)
    fsubs 3, 1, 0
    .4byte 0xC022EAC8 # lfs f1, lbl_80541A68@sda21(r0)
    .4byte 0xC002EAC4 # lfs f0, lbl_80541A64@sda21(r0)
    stfs 2, 0x50(1)
    stfs 3, 0x60(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
L_8031F36C:
    lwz 0, 0x248(29)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8031F3A0
    bl SpatialRegistry_GetBase
    lwz 7, 0x244(29)
    lis 4, 0x5255
    lwz 5, 0x4(29)
    addi 4, 4, 0x5059
    addi 6, 1, 0x5c
    addi 7, 7, 0x4
    bl fn_801F8544
    mr 31, 3
    .4byte 0x48000030 # b .L_8031F3CC
L_8031F3A0:
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_8031F3CC
    bl SpatialRegistry_GetBase
    lwz 7, 0x244(29)
    lis 4, 0x4553
    lwz 5, 0x4(29)
    addi 4, 4, 0x5259
    addi 6, 1, 0x5c
    addis 7, 7, 0x1
    bl fn_801F8544
    mr 31, 3
L_8031F3CC:
    cmpwi 31, 0x0
    .4byte 0x41800028 # blt .L_8031F3F8
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8031F3F8
    psq_l 1, 0x50(1), 0, 0
    lfs 0, 0x58(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_8031F3F8:
    mr 3, 29
    bl fn_801F3668
    .4byte 0x48000424 # b .L_8031F824
L_8031F404:
    lhz 0, 0x94(29)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_8031F418
    cmplwi 0, 0x5
    .4byte 0x4082002C # bne .L_8031F440
L_8031F418:
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8031F440
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x480003E8 # b .L_8031F824
L_8031F440:
    lwz 4, 0x4(29)
    addi 3, 29, 0xc
    bl fn_80226850
    lhz 0, 0x26c(29)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41820048 # beq .L_8031F4A0
    lhz 0, 0x94(29)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_8031F470
    cmplwi 0, 0x5
    .4byte 0x4082001C # bne .L_8031F488
L_8031F470:
    mr 3, 29
    li 4, 0x3
    bl fn_801F0D20
    mr 3, 29
    bl fn_801F3668
    .4byte 0x480004DC # b .L_8031F960
L_8031F488:
    mr 3, 29
    li 4, 0x42
    bl fn_801F0D20
    li 0, 0x0
    stw 0, 0x230(29)
    .4byte 0x48000388 # b .L_8031F824
L_8031F4A0:
    li 30, 0x0
    mr 31, 29
L_8031F4A8:
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408202F4 # bne .L_8031F7A8
    mr 3, 30
    bl fn_802373EC
    cmpwi 3, 0x9
    .4byte 0x408202E4 # bne .L_8031F7A8
    mr 3, 30
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x408202D4 # bne .L_8031F7A8
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 30
    psq_st 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    bl fn_80230CFC
    cmpwi 3, 0x2
    .4byte 0x41820094 # beq .L_8031F590
    .4byte 0x40800014 # bge .L_8031F514
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8031F520
    .4byte 0x4080004C # bge .L_8031F558
    .4byte 0x480000EC # b .L_8031F5FC
L_8031F514:
    cmpwi 3, 0x4
    .4byte 0x408000E4 # bge .L_8031F5FC
    .4byte 0x480000AC # b .L_8031F5C8
L_8031F520:
    .4byte 0xC002EAC0 # lfs f0, lbl_80541A60@sda21(r0)
    .4byte 0xC022EACC # lfs f1, lbl_80541A6C@sda21(r0)
    stfs 0, 0x40(1)
    psq_l 3, 0x44(1), 0, 0
    stfs 1, 0x38(1)
    psq_l 1, 0x4c(1), 1, 0
    stfs 0, 0x3c(1)
    psq_l 0, 0x40(1), 1, 0
    psq_l 2, 0x38(1), 0, 0
    ps_add 0, 1, 0
    ps_add 1, 3, 2
    psq_st 0, 0x4c(1), 1, 0
    psq_st 1, 0x44(1), 0, 0
    .4byte 0x480000A8 # b .L_8031F5FC
L_8031F558:
    .4byte 0xC002EAC0 # lfs f0, lbl_80541A60@sda21(r0)
    .4byte 0xC022EAD0 # lfs f1, lbl_80541A70@sda21(r0)
    stfs 0, 0x34(1)
    psq_l 3, 0x44(1), 0, 0
    stfs 1, 0x2c(1)
    psq_l 1, 0x4c(1), 1, 0
    stfs 0, 0x30(1)
    psq_l 0, 0x34(1), 1, 0
    psq_l 2, 0x2c(1), 0, 0
    ps_add 0, 1, 0
    ps_add 1, 3, 2
    psq_st 0, 0x4c(1), 1, 0
    psq_st 1, 0x44(1), 0, 0
    .4byte 0x48000070 # b .L_8031F5FC
L_8031F590:
    .4byte 0xC022EAC0 # lfs f1, lbl_80541A60@sda21(r0)
    .4byte 0xC002EACC # lfs f0, lbl_80541A6C@sda21(r0)
    stfs 1, 0x28(1)
    psq_l 3, 0x44(1), 0, 0
    stfs 1, 0x20(1)
    psq_l 1, 0x4c(1), 1, 0
    stfs 0, 0x24(1)
    psq_l 0, 0x28(1), 1, 0
    psq_l 2, 0x20(1), 0, 0
    ps_add 0, 1, 0
    ps_add 1, 3, 2
    psq_st 0, 0x4c(1), 1, 0
    psq_st 1, 0x44(1), 0, 0
    .4byte 0x48000038 # b .L_8031F5FC
L_8031F5C8:
    .4byte 0xC022EAC0 # lfs f1, lbl_80541A60@sda21(r0)
    .4byte 0xC002EAD0 # lfs f0, lbl_80541A70@sda21(r0)
    stfs 1, 0x1c(1)
    psq_l 3, 0x44(1), 0, 0
    stfs 1, 0x14(1)
    psq_l 1, 0x4c(1), 1, 0
    stfs 0, 0x18(1)
    psq_l 0, 0x1c(1), 1, 0
    psq_l 2, 0x14(1), 0, 0
    ps_add 0, 1, 0
    ps_add 1, 3, 2
    psq_st 0, 0x4c(1), 1, 0
    psq_st 1, 0x44(1), 0, 0
L_8031F5FC:
    addi 3, 29, 0xc
    addi 4, 1, 0x44
    bl PSVECDistance
    .4byte 0xC002EAD4 # lfs f0, lbl_80541A74@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8031F68C
    lwz 0, 0x25c(31)
    cmpwi 0, 0x3
    .4byte 0x4080018C # bge .L_8031F7A8
    mr 3, 30
    bl fn_8022F340
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    slwi 0, 3, 1
    lbz 3, 0x83(4)
    sraw 0, 3, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082002C # bne .L_8031F66C
    mr 3, 4
    li 4, 0x8
    li 5, 0x0
    bl fn_80134DE4
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x80
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_8031F678
L_8031F66C:
    mr 3, 30
    li 4, 0x3
    bl fn_803037D4
L_8031F678:
    li 3, 0x18
    li 0, 0x3
    stw 3, 0x24c(31)
    stw 0, 0x25c(31)
    .4byte 0x48000120 # b .L_8031F7A8
L_8031F68C:
    addi 3, 29, 0xc
    addi 4, 1, 0x44
    bl PSVECDistance
    .4byte 0xC002EACC # lfs f0, lbl_80541A6C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8031F71C
    lwz 0, 0x25c(31)
    cmpwi 0, 0x2
    .4byte 0x408000FC # bge .L_8031F7A8
    mr 3, 30
    bl fn_8022F340
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    slwi 0, 3, 1
    lbz 3, 0x83(4)
    sraw 0, 3, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082002C # bne .L_8031F6FC
    mr 3, 4
    li 4, 0x7
    li 5, 0x0
    bl fn_80134DE4
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x7f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_8031F708
L_8031F6FC:
    mr 3, 30
    li 4, 0x2
    bl fn_803037D4
L_8031F708:
    li 3, 0x38
    li 0, 0x2
    stw 3, 0x24c(31)
    stw 0, 0x25c(31)
    .4byte 0x48000090 # b .L_8031F7A8
L_8031F71C:
    addi 3, 29, 0xc
    addi 4, 1, 0x44
    bl PSVECDistance
    .4byte 0xC002EAD8 # lfs f0, lbl_80541A78@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800078 # bge .L_8031F7A8
    lwz 0, 0x25c(31)
    cmpwi 0, 0x1
    .4byte 0x4080006C # bge .L_8031F7A8
    mr 3, 30
    bl fn_8022F340
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    slwi 0, 3, 1
    lbz 3, 0x83(4)
    sraw 0, 3, 0
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082002C # bne .L_8031F78C
    mr 3, 4
    li 4, 0x6
    li 5, 0x0
    bl fn_80134DE4
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x7e
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_8031F798
L_8031F78C:
    mr 3, 30
    li 4, 0x1
    bl fn_803037D4
L_8031F798:
    li 3, 0x4a
    li 0, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x25c(31)
L_8031F7A8:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FCF4 # blt .L_8031F4A8
    .4byte 0x4800006C # b .L_8031F824
L_8031F7BC:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_8031F824
    lhz 0, 0x94(29)
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_8031F7FC
    mr 3, 29
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x0
    stw 0, 0x230(29)
    .4byte 0x4800002C # b .L_8031F824
L_8031F7FC:
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_8031F80C
    cmplwi 0, 0x5
    .4byte 0x4082001C # bne .L_8031F824
L_8031F80C:
    lwz 4, 0x4(29)
    addi 3, 29, 0xc
    bl fn_80226850
    sth 3, 0x26c(29)
    li 0, 0x1
    stw 0, 0x230(29)
L_8031F824:
    lwz 4, 0x238(29)
    lis 3, lbl_80471740@ha
    addi 3, 3, lbl_80471740@l
    lwz 5, 0x234(29)
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x41810078 # bgt .L_8031F8B8
    addi 0, 4, 0x1
    stw 0, 0x238(29)
    lwz 0, 0x238(29)
    cmpwi 0, 0x3
    .4byte 0x41800064 # blt .L_8031F8B8
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x238(29)
    addi 0, 3, 0x660d
    .4byte 0xC002EAB8 # lfs f0, lbl_80541A58@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042EADC # lfs f2, lbl_80541A7C@sda21(r0)
    lwz 3, 0xb4(4)
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
    stfd 0, 0x78(1)
    lwz 3, 0x7c(1)
    addi 0, 3, 0x3c
    stw 0, 0x234(29)
L_8031F8B8:
    lwz 3, 0x24c(29)
    li 0, 0x0
    cmpwi 3, 0x0
    .4byte 0x4081001C # ble .L_8031F8E0
    subi 3, 3, 0x1
    stw 3, 0x24c(29)
    lwz 3, 0x24c(29)
    cmpwi 3, 0x0
    .4byte 0x41810008 # bgt .L_8031F8E0
    stw 0, 0x25c(29)
L_8031F8E0:
    lwz 3, 0x250(29)
    cmpwi 3, 0x0
    .4byte 0x4081001C # ble .L_8031F904
    subi 3, 3, 0x1
    stw 3, 0x250(29)
    lwz 3, 0x250(29)
    cmpwi 3, 0x0
    .4byte 0x41810008 # bgt .L_8031F904
    stw 0, 0x260(29)
L_8031F904:
    lwz 3, 0x254(29)
    cmpwi 3, 0x0
    .4byte 0x4081001C # ble .L_8031F928
    subi 3, 3, 0x1
    stw 3, 0x254(29)
    lwz 3, 0x254(29)
    cmpwi 3, 0x0
    .4byte 0x41810008 # bgt .L_8031F928
    stw 0, 0x264(29)
L_8031F928:
    lwz 3, 0x258(29)
    cmpwi 3, 0x0
    .4byte 0x4081001C # ble .L_8031F94C
    subi 3, 3, 0x1
    stw 3, 0x258(29)
    lwz 3, 0x258(29)
    cmpwi 3, 0x0
    .4byte 0x41810008 # bgt .L_8031F94C
    stw 0, 0x268(29)
L_8031F94C:
    lwz 3, 0x234(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8031F960
    subi 0, 3, 0x1
    stw 0, 0x234(29)
L_8031F960:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8031F97C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8031F9A8
    bl fn_801F3668
    .4byte 0x48000184 # b .L_8031FB28
L_8031F9A8:
    lwz 3, 0x90(31)
    lis 0, 0x4330
    li 5, 0x0
    li 4, 0x2710
    clrlwi 6, 3, 30
    li 3, -0x1
    stw 6, 0x244(31)
    .4byte 0xC842EAF0 # lfd f2, lbl_80541A90@sda21(r0)
    lwz 6, 0x90(31)
    stw 0, 0x10(1)
    extrwi 6, 6, 8, 16
    .4byte 0xC062EACC # lfs f3, lbl_80541A6C@sda21(r0)
    stw 6, 0x248(31)
    .4byte 0xC022EAD4 # lfs f1, lbl_80541A74@sda21(r0)
    lwz 6, 0x90(31)
    stw 0, 0x20(1)
    extrwi 0, 6, 8, 8
    sth 0, 0x94(31)
    sth 5, 0x26c(31)
    stw 5, 0x238(31)
    stw 5, 0x234(31)
    stw 5, 0x24c(31)
    stw 5, 0x25c(31)
    stw 5, 0x250(31)
    stw 5, 0x260(31)
    stw 5, 0x254(31)
    stw 5, 0x264(31)
    stw 5, 0x258(31)
    stw 5, 0x268(31)
    stw 4, 0x108(31)
    stw 5, 0x23c(31)
    stw 3, 0x240(31)
    stw 5, 0x230(31)
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    srawi 0, 0, 4
    addze 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fmadds 0, 3, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    srawi 0, 0, 4
    addze 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 2
    fmadds 0, 3, 0, 1
    stfs 0, 0x10(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_8031FAA0
    cmplwi 0, 0x4
    .4byte 0x4082001C # bne .L_8031FAB8
L_8031FAA0:
    li 0, 0x1
    addi 3, 31, 0xc
    stw 0, 0x230(31)
    lwz 4, 0x4(31)
    bl fn_80226850
    sth 3, 0x26c(31)
L_8031FAB8:
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8031FACC
    li 0, 0x2
    stw 0, 0x230(31)
L_8031FACC:
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_8031FAE0
    cmplwi 0, 0x5
    .4byte 0x4082000C # bne .L_8031FAE8
L_8031FAE0:
    li 0, 0x2
    stw 0, 0x230(31)
L_8031FAE8:
    .4byte 0xC002EAC0 # lfs f0, lbl_80541A60@sda21(r0)
    .4byte 0xC062EAE0 # lfs f3, lbl_80541A80@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC042EAD4 # lfs f2, lbl_80541A74@sda21(r0)
    stfs 0, 0x40(31)
    .4byte 0xC022EAE4 # lfs f1, lbl_80541A84@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0xC002EAE8 # lfs f0, lbl_80541A88@sda21(r0)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8031FB28:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8031FB3C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805085F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805085F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FB8C
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
L_8031FB8C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FBC4
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
L_8031FBC4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FBFC
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
L_8031FBFC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FC34
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
L_8031FC34:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FC6C
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
L_8031FC6C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FCA4
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
L_8031FCA4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FCDC
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
L_8031FCDC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FD14
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
L_8031FD14:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031FD4C
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
L_8031FD4C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031FD60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8031FDA4
    lis 5, lbl_804AB2B0@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB2B0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8031FDA4
    mr 3, 30
    bl dtor_80084580
L_8031FDA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031FDC0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    psq_l 1, 0x230(31), 0, 0
    lfs 0, 0x238(3)
    psq_st 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820218 # bne .L_80320010
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082017C # bne .L_8031FF80
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_8031FE5C
    .4byte 0x40800014 # bge .L_8031FE28
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8031FE34
    .4byte 0x40800028 # bge .L_8031FE48
    .4byte 0x4800005C # b .L_8031FE80
L_8031FE28:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_8031FE80
    .4byte 0x48000040 # b .L_8031FE70
L_8031FE34:
    lfs 1, 0x10(1)
    .4byte 0xC002EAF8 # lfs f0, lbl_80541A98@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(1)
    .4byte 0x4800003C # b .L_8031FE80
L_8031FE48:
    lfs 1, 0x10(1)
    .4byte 0xC002EAF8 # lfs f0, lbl_80541A98@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(1)
    .4byte 0x48000028 # b .L_8031FE80
L_8031FE5C:
    lfs 1, 0x14(1)
    .4byte 0xC002EAFC # lfs f0, lbl_80541A9C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x14(1)
    .4byte 0x48000014 # b .L_8031FE80
L_8031FE70:
    lfs 1, 0x14(1)
    .4byte 0xC002EAFC # lfs f0, lbl_80541A9C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x14(1)
L_8031FE80:
    lwz 3, 0x248(31)
    cmplwi 3, 0x2
    .4byte 0x418000C8 # blt .L_8031FF50
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_8031FF24
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022EB00 # lfs f1, lbl_80541AA0@sda21(r0)
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
    .4byte 0x40820024 # bne .L_8031FF04
    lfs 2, 0x10(1)
    .4byte 0xC822EB08 # lfd f1, lbl_80541AA8@sda21(r0)
    .4byte 0xC002EB10 # lfs f0, lbl_80541AB0@sda21(r0)
    fadd 1, 2, 1
    frsp 1, 1
    stfs 1, 0x10(1)
    stfs 0, 0x23c(31)
    .4byte 0x48000050 # b .L_8031FF50
L_8031FF04:
    lfs 2, 0x10(1)
    .4byte 0xC822EB08 # lfd f1, lbl_80541AA8@sda21(r0)
    .4byte 0xC002EB14 # lfs f0, lbl_80541AB4@sda21(r0)
    fsub 1, 2, 1
    frsp 1, 1
    stfs 1, 0x10(1)
    stfs 0, 0x23c(31)
    .4byte 0x48000030 # b .L_8031FF50
L_8031FF24:
    cmplwi 3, 0x2
    .4byte 0x40820018 # bne .L_8031FF40
    lfs 1, 0x14(1)
    .4byte 0xC002EB18 # lfs f0, lbl_80541AB8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x14(1)
    .4byte 0x48000014 # b .L_8031FF50
L_8031FF40:
    lfs 1, 0x14(1)
    .4byte 0xC002EB18 # lfs f0, lbl_80541AB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x14(1)
L_8031FF50:
    bl SpatialRegistry_GetBase
    lis 4, 0xf801
    lwz 7, 0x24c(31)
    addi 0, 4, 0x1ff
    lis 4, 0x4649
    lwz 5, 0x4(31)
    addi 4, 4, 0x5245
    addi 6, 1, 0x10
    and 7, 7, 0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8031FF80:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x41810080 # bgt .L_80320008
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    lis 0, 0x4330
    .4byte 0xC862EB20 # lfd f3, lbl_80541AC0@sda21(r0)
    lwz 4, 0xb4(5)
    addi 3, 3, 0x660d
    stw 0, 0x20(1)
    mullw 3, 4, 3
    .4byte 0xC002EB00 # lfs f0, lbl_80541AA0@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 3, 0xb4(5)
    lbz 0, 0x245(31)
    srwi 4, 3, 9
    lbz 3, 0x244(31)
    oris 4, 4, 0x3f80
    xoris 0, 0, 0x8000
    stw 4, 0x8(1)
    stw 0, 0x24(1)
    lfs 1, 0x8(1)
    lfd 2, 0x20(1)
    fsubs 0, 1, 0
    fsubs 1, 2, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    add 0, 3, 0
    stw 0, 0x240(31)
    .4byte 0x4800000C # b .L_80320010
L_80320008:
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80320010:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80320024:
    stwu 1, -0x20(1)
    li 0, 0x0
    stw 0, 0x24c(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x250(3)
    lwz 0, 0x250(3)
    cmplwi 0, 0x3
    .4byte 0x4080000C # bge .L_80320050
    li 0, 0x3
    stw 0, 0x250(3)
L_80320050:
    psq_l 2, 0xc(3), 0, 0
    lis 0, 0x4330
    lfs 0, 0x14(3)
    lis 4, 0x19
    .4byte 0xC022EB28 # lfs f1, lbl_80541AC8@sda21(r0)
    addi 4, 4, 0x660d
    psq_st 2, 0x230(3), 0, 0
    .4byte 0xC862EB30 # lfd f3, lbl_80541AD0@sda21(r0)
    stfs 0, 0x238(3)
    .4byte 0xC002EB00 # lfs f0, lbl_80541AA0@sda21(r0)
    stfs 1, 0x23c(3)
    lwz 5, 0x90(3)
    stw 0, 0x10(1)
    extrwi 0, 5, 8, 16
    stb 0, 0x244(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 8, 8
    stb 0, 0x245(3)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 4, 0, 4
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 4, 0xb4(5)
    lbz 0, 0x245(3)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 0, 0x14(1)
    stw 4, 0x8(1)
    lfd 2, 0x10(1)
    lfs 1, 0x8(1)
    fsubs 2, 2, 3
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 7
    stb 0, 0x254(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 6
    stb 0, 0x255(3)
    lwz 5, 0x90(3)
    lwz 0, 0x250(3)
    rlwinm 4, 5, 0, 26, 27
    lbz 6, 0x255(3)
    xori 4, 4, 0x20
    slwi 0, 0, 6
    ori 4, 4, 0xf
    clrrwi 5, 5, 27
    or 0, 4, 0
    slwi 4, 6, 16
    or 0, 5, 0
    or 0, 4, 0
    stw 0, 0x24c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 26
    xori 0, 0, 0x2
    stw 0, 0x248(3)
    addi 1, 1, 0x20
    blr

fn_80320150:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805086F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805086F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803201A0
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
L_803201A0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803201D8
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
L_803201D8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80320210
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
L_80320210:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80320248
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
L_80320248:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80320280
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
L_80320280:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803202B8
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
L_803202B8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803202F0
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
L_803202F0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80320328
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
L_80320328:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80320360
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
L_80320360:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80320374:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stw 31, 0xcc(1)
    mr 31, 3
    stw 30, 0xc8(1)
    stw 29, 0xc4(1)
    lwz 4, 0x4(3)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x408200A0 # bne .L_80320444
    lfs 1, 0x14(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800090 # bge .L_80320444
    lfs 0, 0xc(31)
    lis 3, 0x4330
    stw 3, 0xa8(1)
    li 0, 0x1
    fctiwz 1, 0
    .4byte 0xC842EB60 # lfd f2, lbl_80541B00@sda21(r0)
    stw 3, 0xb8(1)
    .4byte 0xC062EB3C # lfs f3, lbl_80541ADC@sda21(r0)
    stfd 1, 0xa0(1)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    lwz 3, 0xa4(1)
    rlwinm 3, 3, 0, 16, 27
    xoris 3, 3, 0x8000
    stw 3, 0xac(1)
    lfd 1, 0xa8(1)
    fsubs 1, 1, 2
    fadds 1, 3, 1
    stfs 1, 0x2b8(31)
    lfs 1, 0x10(31)
    fctiwz 1, 1
    stfd 1, 0xb0(1)
    lwz 3, 0xb4(1)
    rlwinm 3, 3, 0, 16, 27
    xoris 3, 3, 0x8000
    stw 3, 0xbc(1)
    lfd 1, 0xb8(1)
    fsubs 1, 1, 2
    fadds 1, 3, 1
    stfs 1, 0x2bc(31)
    stw 0, 0x2a8(31)
    stfs 0, 0x14(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480008BC # b .L_80320CFC
L_80320444:
    cmpwi 0, 0xe
    .4byte 0x40820128 # bne .L_80320570
    lfs 1, 0x14(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800118 # bge .L_80320570
    bl fn_802DEB58
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80320484
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000094 # b .L_80320514
L_80320484:
    lfs 0, 0xc(31)
    lis 3, 0x4330
    stw 3, 0xb0(1)
    li 0, 0x1
    fctiwz 1, 0
    .4byte 0xC842EB60 # lfd f2, lbl_80541B00@sda21(r0)
    stw 3, 0xa0(1)
    .4byte 0xC062EB3C # lfs f3, lbl_80541ADC@sda21(r0)
    stfd 1, 0xb8(1)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    lwz 3, 0xbc(1)
    rlwinm 3, 3, 0, 16, 27
    xoris 3, 3, 0x8000
    stw 3, 0xb4(1)
    lfd 1, 0xb0(1)
    fsubs 1, 1, 2
    fadds 1, 3, 1
    stfs 1, 0x2b8(31)
    lfs 1, 0x10(31)
    fctiwz 1, 1
    stfd 1, 0xa8(1)
    lwz 3, 0xac(1)
    rlwinm 3, 3, 0, 16, 27
    xoris 3, 3, 0x8000
    stw 3, 0xa4(1)
    lfd 1, 0xa0(1)
    fsubs 1, 1, 2
    fadds 1, 3, 1
    stfs 1, 0x2bc(31)
    stw 0, 0x2a8(31)
    stb 0, 0x2ac(31)
    stfs 0, 0x14(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480007EC # b .L_80320CFC
L_80320514:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB44 # lfs f1, lbl_80541AE4@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB44 # lfs f1, lbl_80541AE4@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000790 # b .L_80320CFC
L_80320570:
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_80320580
    cmpwi 0, 0x3b
    .4byte 0x40820058 # bne .L_803205D4
L_80320580:
    cmpwi 0, 0xd
    .4byte 0x40820014 # bne .L_80320598
    lfs 1, 0x14(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4180000C # blt .L_803205A0
L_80320598:
    cmpwi 0, 0x3b
    .4byte 0x40820038 # bne .L_803205D4
L_803205A0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB44 # lfs f1, lbl_80541AE4@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_801F3668
    .4byte 0x4800072C # b .L_80320CFC
L_803205D4:
    lwz 3, 0x4(31)
    cmpwi 3, 0x8
    .4byte 0x41800044 # blt .L_80320620
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stfs 1, 0x9c(1)
    psq_st 2, 0x94(1), 0, 0
    stfs 0, 0x9c(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x94
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000050 # b .L_8032066C
L_80320620:
    .4byte 0xC022EB48 # lfs f1, lbl_80541AE8@sda21(r0)
    addi 4, 31, 0xc
    li 5, 0x564
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB4C # lfs f1, lbl_80541AEC@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8032066C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    lhz 0, 0x94(31)
    cmpwi 0, 0x2
    .4byte 0x41820630 # beq .L_80320CB8
    .4byte 0x40800010 # bge .L_8032069C
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_803206A4
    .4byte 0x4800065C # b .L_80320CF4
L_8032069C:
    cmpwi 0, 0x4
    .4byte 0x40800654 # bge .L_80320CF4
L_803206A4:
    lwz 0, 0x264(31)
    cmpwi 0, 0x2
    mr 29, 0
    .4byte 0x40800008 # bge .L_803206B8
    lwz 29, 0x294(31)
L_803206B8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408200B8 # bne .L_8032077C
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_80320724
    cmpwi 29, 0x8
    .4byte 0x40820024 # bne .L_803206FC
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_80320724
    lbz 0, 0x2ad(31)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_80320724
    li 29, 0x3
    .4byte 0x4800002C # b .L_80320724
L_803206FC:
    cmpwi 29, 0x4
    .4byte 0x40820024 # bne .L_80320724
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80320724
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x40820008 # bne .L_80320724
    li 29, 0x3
L_80320724:
    cmpwi 29, 0x7
    .4byte 0x4082002C # bne .L_80320754
    bl fn_802DE814
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820018 # beq .L_80320750
    lwz 3, 0x23c(31)
    bl fn_8022F340
    bl fn_80237810
    cmpwi 3, 0x10
    .4byte 0x41820008 # beq .L_80320754
L_80320750:
    li 29, 0x6
L_80320754:
    cmpwi 29, 0x2
    .4byte 0x40820024 # bne .L_8032077C
    bl GetRoomConfigRecord
    bl fn_802D7948
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_80320778
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800008 # blt .L_8032077C
L_80320778:
    li 29, 0x6
L_8032077C:
    cmplwi 29, 0x8
    .4byte 0x41810574 # bgt .L_80320CF4
    lis 3, jumptable_804AB360@ha
    slwi 0, 29, 2
    addi 3, 3, jumptable_804AB360@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl SpatialRegistry_GetBase
    lis 4, 0x4e4e
    lwz 5, 0x4(31)
    addi 4, 4, 0x4a4e
    addi 6, 31, 0xc
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 30, 3
    .4byte 0x41800530 # blt .L_80320CF4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182051C # beq .L_80320CF4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    addi 0, 4, 0x660d
    lwz 4, 0xb4(5)
    .4byte 0xC042EB4C # lfs f2, lbl_80541AEC@sda21(r0)
    mullw 4, 4, 0
    stfs 1, 0x7c(1)
    .4byte 0xC002EB44 # lfs f0, lbl_80541AE4@sda21(r0)
    stfs 1, 0x80(1)
    psq_l 1, 0x7c(1), 0, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    psq_st 1, 0x3c(3), 0, 0
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 0, 1
    stfs 0, 0x84(1)
    stfs 0, 0x44(3)
    .4byte 0x480004B8 # b .L_80320CF4
    lfs 2, 0x10(31)
    lfs 0, 0x14(31)
    lwz 0, 0x23c(31)
    fsubs 2, 2, 0
    lfs 1, 0xc(31)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    clrlslwi 3, 0, 30, 8
    stfs 1, 0x70(1)
    addi 30, 3, 0x3
    stfs 2, 0x74(1)
    stfs 0, 0x78(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4e49
    lwz 5, 0x4(31)
    mr 7, 30
    addi 6, 1, 0x70
    addi 4, 4, 0x5741
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000464 # b .L_80320CF4
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x26
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    addi 7, 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000438 # b .L_80320CF4
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5459
    addi 6, 31, 0xc
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 29, 0x4(31)
    mr 30, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200CC # beq .L_803209CC
    cmpwi 30, 0x0
    .4byte 0x418003EC # blt .L_80320CF4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418203D8 # beq .L_80320CF4
    .4byte 0xC062EB40 # lfs f3, lbl_80541AE0@sda21(r0)
    lfs 0, 0x3c(31)
    fcmpu cr0, 3, 0
    .4byte 0x4082008C # bne .L_803209B8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC022EB4C # lfs f1, lbl_80541AEC@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC002EB48 # lfs f0, lbl_80541AE8@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810024 # ble .L_80320998
    .4byte 0xC002EB50 # lfs f0, lbl_80541AF0@sda21(r0)
    stfs 3, 0x68(1)
    stfs 0, 0x64(1)
    psq_l 0, 0x64(1), 0, 0
    stfs 3, 0x6c(1)
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x48000360 # b .L_80320CF4
L_80320998:
    .4byte 0xC002EB54 # lfs f0, lbl_80541AF4@sda21(r0)
    stfs 3, 0x5c(1)
    stfs 0, 0x58(1)
    psq_l 0, 0x58(1), 0, 0
    stfs 3, 0x60(1)
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x48000340 # b .L_80320CF4
L_803209B8:
    psq_l 1, 0x3c(31), 0, 0
    lfs 0, 0x44(31)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x4800032C # b .L_80320CF4
L_803209CC:
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_803209F8
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_803209F8
    psq_l 1, 0x3c(31), 0, 0
    lfs 0, 0x44(31)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_803209F8:
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    lfs 0, 0x3c(31)
    fcmpu cr0, 1, 0
    .4byte 0x408200F4 # bne .L_80320AF8
    lfs 2, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x4c(1)
    stfs 2, 0x50(1)
    stfs 1, 0x54(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5459
    addi 6, 1, 0x4c
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800040 # blt .L_80320A84
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80320A84
    .4byte 0xC022EB58 # lfs f1, lbl_80541AF8@sda21(r0)
    lfs 0, 0x40(31)
    lfs 2, 0x44(31)
    fmuls 0, 1, 0
    stfs 2, 0x48(1)
    stfs 0, 0x40(1)
    stfs 0, 0x44(1)
    psq_l 0, 0x40(1), 0, 0
    psq_st 0, 0x3c(3), 0, 0
    stfs 2, 0x44(3)
L_80320A84:
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5459
    addi 6, 31, 0xc
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800248 # blt .L_80320CF4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820234 # beq .L_80320CF4
    lfs 2, 0x40(31)
    .4byte 0xC022EB58 # lfs f1, lbl_80541AF8@sda21(r0)
    fneg 0, 2
    lfs 3, 0x44(31)
    fmuls 2, 1, 2
    stfs 3, 0x3c(1)
    fmuls 0, 1, 0
    stfs 2, 0x38(1)
    stfs 0, 0x34(1)
    psq_l 0, 0x34(1), 0, 0
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x48000200 # b .L_80320CF4
L_80320AF8:
    lfs 0, 0x40(31)
    fcmpu cr0, 1, 0
    .4byte 0x408201F4 # bne .L_80320CF4
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5459
    addi 6, 31, 0xc
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800040 # blt .L_80320B6C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80320B6C
    .4byte 0xC022EB58 # lfs f1, lbl_80541AF8@sda21(r0)
    lfs 0, 0x3c(31)
    lfs 2, 0x44(31)
    fmuls 0, 1, 0
    stfs 2, 0x30(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    psq_l 0, 0x28(1), 0, 0
    psq_st 0, 0x3c(3), 0, 0
    stfs 2, 0x44(3)
L_80320B6C:
    bl SpatialRegistry_GetBase
    lis 4, 0x424d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5459
    addi 6, 31, 0xc
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800160 # blt .L_80320CF4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182014C # beq .L_80320CF4
    lfs 0, 0x3c(31)
    .4byte 0xC042EB58 # lfs f2, lbl_80541AF8@sda21(r0)
    fneg 1, 0
    lfs 3, 0x44(31)
    fmuls 0, 2, 0
    stfs 3, 0x24(1)
    fmuls 1, 2, 1
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    psq_l 0, 0x1c(1), 0, 0
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x48000118 # b .L_80320CF4
    bl SpatialRegistry_GetBase
    lis 4, 0x4248
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000F0 # b .L_80320CF4
    cmpwi 29, 0x3
    .4byte 0x40820014 # bne .L_80320C20
    lwz 0, 0x23c(31)
    clrlslwi 3, 0, 30, 8
    addi 29, 3, 0x32
    .4byte 0x48000010 # b .L_80320C2C
L_80320C20:
    lwz 0, 0x23c(31)
    clrlslwi 3, 0, 30, 8
    addi 29, 3, 0x38
L_80320C2C:
    lfs 2, 0x10(31)
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stfs 1, 0x10(1)
    stfs 2, 0x14(1)
    stfs 0, 0x18(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4e49
    lwz 5, 0x4(31)
    mr 7, 29
    addi 6, 1, 0x10
    addi 4, 4, 0x5741
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800080 # blt .L_80320CF4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182006C # beq .L_80320CF4
    psq_l 2, 0x3c(31), 0, 0
    lfs 1, 0x44(31)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    psq_st 2, 0x88(1), 0, 0
    stfs 0, 0x44(31)
    psq_l 2, 0x3c(31), 0, 0
    lfs 0, 0x44(31)
    stfs 1, 0x90(1)
    psq_st 2, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x48000040 # b .L_80320CF4
L_80320CB8:
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stfs 0, 0x14(31)
    bl SpatialRegistry_GetBase
    lwz 0, 0x298(31)
    lis 4, 0x4c53
    lwz 6, 0x294(31)
    addi 4, 4, 0x5449
    clrlslwi 0, 0, 30, 22
    lwz 5, 0x4(31)
    ori 7, 6, 0x180
    addi 6, 31, 0xc
    li 8, -0x1
    li 9, -0x1
    or 7, 7, 0
    bl fn_801F9484
L_80320CF4:
    mr 3, 31
    bl fn_801F3668
L_80320CFC:
    lwz 0, 0xd4(1)
    lwz 31, 0xcc(1)
    lwz 30, 0xc8(1)
    lwz 29, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_80320D18:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    stw 28, 0x80(1)
    mr 29, 3
    lwz 3, 0x230(3)
    cmpwi 3, 0x0
    .4byte 0x40820018 # bne .L_80320D88
    lwz 0, 0x278(29)
    cmpwi 0, 0xb4
    .4byte 0x4181000C # bgt .L_80320D88
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182042C # beq .L_803211B0
L_80320D88:
    lhz 0, 0x94(29)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_80320DD8
    cmpwi 3, 0x4
    .4byte 0x40820040 # bne .L_80320DD8
    lbz 0, 0xc4(29)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_80320DD8
    lis 3, 0x8889
    lwz 4, 0x248(29)
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 4
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x1e
    subf 0, 0, 4
    cmpwi 0, 0xf
    .4byte 0x408003DC # bge .L_803211B0
L_80320DD8:
    lwz 0, 0x2b0(29)
    cmpwi 0, 0x6
    .4byte 0x408003D0 # bge .L_803211B0
    lbz 0, 0x28c(29)
    cmplwi 0, 0x0
    .4byte 0x418203C4 # beq .L_803211B0
    li 0, -0x1
    addi 9, 1, 0x40
    stw 0, 0x50(1)
    li 30, 0x0
    li 31, -0x1
    li 10, 0x0
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_80320E70
L_80320E10:
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
L_80320E70:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80320E10
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x50(1)
    stw 5, 0x54(1)
    stw 5, 0x58(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 5, 0x5e(1)
    stb 4, 0x5f(1)
    stb 4, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 5, 0x65(1)
    stb 4, 0x66(1)
    stw 3, 0x68(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stw 6, 0x70(1)
    stw 5, 0x74(1)
    stw 0, 0x78(1)
    lbz 0, 0x28c(29)
    stb 0, 0x53(1)
    stb 4, 0x6d(1)
    stb 4, 0x5d(1)
    stb 4, 0x5c(1)
    lwz 0, 0x2a8(29)
    cmpwi 0, 0x1
    .4byte 0x408200F4 # bne .L_80320FF4
    addi 3, 1, 0x10
    bl PSMTXIdentity
    lfs 30, 0x238(29)
    lfs 29, 0x234(29)
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    bl cos
    frsp 3, 1
    li 0, 0x0
    fmuls 7, 30, 26
    addi 3, 1, 0x10
    fneg 6, 27
    stw 3, 0x58(1)
    fmuls 10, 31, 3
    stb 0, 0x5d(1)
    fmuls 2, 28, 27
    li 31, -0x1
    fmuls 9, 31, 26
    stb 0, 0x5c(1)
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
    stfs 8, 0x10(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x20(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x30(1)
    fmuls 0, 29, 0
    stfs 5, 0x14(1)
    stfs 4, 0x24(1)
    stfs 3, 0x34(1)
    stfs 2, 0x18(1)
    stfs 1, 0x28(1)
    stfs 0, 0x38(1)
L_80320FF4:
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8032102C
    li 0, 0x0
    stb 0, 0x60(1)
    lwz 3, 0xc8(29)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x5d(1)
    lwz 3, 0xc8(29)
    bl fn_8023CA88
    stb 3, 0x5c(1)
    li 30, 0x1
    .4byte 0x48000040 # b .L_80321068
L_8032102C:
    lwz 0, 0x230(29)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_80321040
    cmpwi 0, 0x6
    .4byte 0x4082002C # bne .L_80321068
L_80321040:
    li 0, 0x0
    stb 0, 0x60(1)
    lwz 3, 0x29c(29)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x5d(1)
    lwz 3, 0x29c(29)
    bl fn_8023CA88
    stb 3, 0x5c(1)
    li 30, 0x1
L_80321068:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 28, 0x264(29)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408200B8 # bne .L_80321130
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_803210D8
    cmpwi 28, 0x8
    .4byte 0x40820024 # bne .L_803210B0
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_803210D8
    lbz 0, 0x2ad(29)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_803210D8
    li 28, 0x3
    .4byte 0x4800002C # b .L_803210D8
L_803210B0:
    cmpwi 28, 0x4
    .4byte 0x40820024 # bne .L_803210D8
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_803210D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x40820008 # bne .L_803210D8
    li 28, 0x3
L_803210D8:
    cmpwi 28, 0x7
    .4byte 0x4082002C # bne .L_80321108
    bl fn_802DE814
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820018 # beq .L_80321104
    lwz 3, 0x23c(29)
    bl fn_8022F340
    bl fn_80237810
    cmpwi 3, 0x10
    .4byte 0x41820008 # beq .L_80321108
L_80321104:
    li 28, 0x6
L_80321108:
    cmpwi 28, 0x2
    .4byte 0x40820024 # bne .L_80321130
    bl GetRoomConfigRecord
    bl fn_802D7948
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8032112C
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x41800008 # blt .L_80321130
L_8032112C:
    li 28, 0x6
L_80321130:
    cmpwi 28, 0x2
    .4byte 0x4082000C # bne .L_80321140
    li 28, 0x8
    .4byte 0x48000020 # b .L_8032115C
L_80321140:
    cmpwi 28, 0x8
    .4byte 0x4082000C # bne .L_80321150
    li 28, 0x4
    .4byte 0x48000010 # b .L_8032115C
L_80321150:
    cmpwi 28, 0x4
    .4byte 0x40820008 # bne .L_8032115C
    li 28, 0xa
L_8032115C:
    .4byte 0xC022EB4C # lfs f1, lbl_80541AEC@sda21(r0)
    lis 3, lbl_8047182C@ha
    addi 4, 3, lbl_8047182C@l
    mr 7, 31
    fmr 2, 1
    mr 3, 29
    addi 5, 28, 0x90
    addi 6, 1, 0x40
    bl fn_801F06F0
    li 0, 0x0
    mr 10, 30
    stw 0, 0x8(1)
    addi 5, 29, 0xc
    addi 6, 28, 0x90
    li 7, 0x0
    stw 0, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    bl fn_803075AC
L_803211B0:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    lwz 0, 0xf4(1)
    lwz 28, 0x80(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_80321200:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stw 31, 0xbc(1)
    stw 30, 0xb8(1)
    stw 29, 0xb4(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80321238
    cmpwi 0, 0x3
    .4byte 0x40820048 # bne .L_8032127C
L_80321238:
    lwz 3, 0x23c(31)
    li 5, 0x0
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820F7C # bne .L_803221D0
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80321270
    mr 3, 31
    bl fn_80322F44
    .4byte 0x48000F64 # b .L_803221D0
L_80321270:
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000F58 # b .L_803221D0
L_8032127C:
    addi 3, 31, 0xc
    psq_l 0, 0x3c(31), 0, 0
    psq_l 1, 0x0(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x40810060 # ble .L_80321308
    lfs 1, 0x2b8(31)
    .4byte 0xC042EB38 # lfs f2, lbl_80541AD8@sda21(r0)
    .4byte 0xC062EB4C # lfs f3, lbl_80541AEC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2bc(31)
    addi 3, 31, 0x10
    .4byte 0xC042EB38 # lfs f2, lbl_80541AD8@sda21(r0)
    .4byte 0xC062EB4C # lfs f3, lbl_80541AEC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x238(31)
    .4byte 0xC042EB38 # lfs f2, lbl_80541AD8@sda21(r0)
    .4byte 0xC002EB68 # lfs f0, lbl_80541B08@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x238(31)
    lfs 1, 0x234(31)
    fsubs 0, 1, 0
    stfs 0, 0x234(31)
    lfs 0, 0x234(31)
    fcmpo cr0, 0, 2
    .4byte 0x40800ED8 # bge .L_803221D0
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000ECC # b .L_803221D0
L_80321308:
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x41810EB8 # bgt .L_803221C8
    lis 3, jumptable_804AB384@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB384@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408201CC # bne .L_80321510
    lfs 1, 0x14(31)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810040 # ble .L_80321394
    lwz 0, 0x27c(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80321380
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x48
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x27c(31)
L_80321380:
    lfs 1, 0x44(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x48000160 # b .L_803214F0
L_80321394:
    .4byte 0x4080015C # bge .L_803214F0
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x0
    .4byte 0x40820138 # bne .L_803214D8
    li 0, 0x0
    mr 3, 31
    stw 0, 0x230(31)
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x41810E0C # bgt .L_803221D0
    lbz 0, 0x2ac(31)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_803213D8
    .4byte 0x48000DFC # b .L_803221D0
L_803213D8:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x49
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB6C # lfs f1, lbl_80541B0C@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    lis 3, 0x19
    stb 0, 0x2a4(31)
    addi 4, 3, 0x660d
    .4byte 0xC022EB4C # lfs f1, lbl_80541AEC@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042EB48 # lfs f2, lbl_80541AE8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 0, 0x18(1)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 2
    stfs 0, 0x44(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0x3c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0x40(31)
    .4byte 0x4800001C # b .L_803214F0
L_803214D8:
    li 0, 0x0
    stb 0, 0x2a4(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_803214F0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820CD0 # bne .L_803221C8
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x4800017C # b .L_80321688
L_80321510:
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    mr 3, 31
    addi 4, 1, 0xa4
    li 5, 0x0
    stfs 0, 0xac(1)
    stfs 0, 0xa8(1)
    stfs 0, 0xa4(1)
    bl fn_801F2618
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    lfs 0, 0xa8(1)
    fcmpu cr0, 1, 0
    .4byte 0x40820058 # bne .L_80321594
    lwz 0, 0x27c(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80321568
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x48
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x27c(31)
L_80321568:
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80321580
    li 0, 0x0
    stb 0, 0x2a4(31)
    stb 0, 0x2a5(31)
L_80321580:
    lfs 1, 0x40(31)
    .4byte 0xC002EB70 # lfs f0, lbl_80541B10@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x480000F8 # b .L_80321688
L_80321594:
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x0
    .4byte 0x408200D0 # bne .L_8032166C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x49
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB6C # lfs f1, lbl_80541B0C@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    lis 3, 0x19
    stb 0, 0x2a4(31)
    addi 4, 3, 0x660d
    .4byte 0xC042EB4C # lfs f2, lbl_80541AEC@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC062EB48 # lfs f3, lbl_80541AE8@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC022EB74 # lfs f1, lbl_80541B14@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fsubs 0, 3, 0
    stfs 0, 0x3c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x48000020 # b .L_80321688
L_8032166C:
    li 0, 0x1
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    stb 0, 0x2a5(31)
    stfs 1, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
L_80321688:
    lfs 5, 0x10(31)
    li 0, -0x1
    lfs 1, 0xc(31)
    lfs 0, 0x60(31)
    stfs 0, 0x94(1)
    fadds 3, 0, 1
    lfs 0, 0x64(31)
    stfs 0, 0x98(1)
    fadds 2, 0, 5
    lfs 0, 0x68(31)
    stfs 0, 0x9c(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(31)
    fadds 0, 4, 5
    stfs 4, 0xa0(1)
    stfs 3, 0x94(1)
    stfs 2, 0x98(1)
    stfs 1, 0x9c(1)
    stfs 0, 0xa0(1)
    stw 0, 0x29c(31)
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_8032173C
    mr 3, 31
    bl fn_80322964
    li 30, 0x0
    .4byte 0xC3E2EB40 # lfs f31, lbl_80541AE0@sda21(r0)
L_803216F4:
    lwz 5, 0x4(31)
    mr 3, 30
    addi 4, 1, 0x94
    bl fn_80239C00
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_80321730
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 31
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80321730
    stw 30, 0x29c(31)
    .4byte 0x48000010 # b .L_8032173C
L_80321730:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFBC # blt .L_803216F4
L_8032173C:
    lwz 3, 0x29c(31)
    cmpwi 3, 0x0
    .4byte 0x41800174 # blt .L_803218B8
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x40820168 # bne .L_803218B8
    lwz 3, 0x29c(31)
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x40820158 # bne .L_803218B8
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    li 0, 0x0
    stfs 0, 0x234(31)
    stw 0, 0xb0(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408200B8 # bne .L_80321838
    lwz 3, 0x29c(31)
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820124 # bne .L_803218B8
    lwz 0, 0x29c(31)
    stw 0, 0x23c(31)
    lwz 3, 0x29c(31)
    bl fn_8023E724
    lfs 2, 0x8(3)
    addi 4, 1, 0x88
    psq_l 1, 0x0(3), 0, 0
    li 5, 0xed
    .4byte 0xC002EB78 # lfs f0, lbl_80541B18@sda21(r0)
    li 6, 0xff
    psq_st 1, 0x0(4), 0, 0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    lfs 1, 0x8c(1)
    stfs 2, 0x90(1)
    fsubs 0, 1, 0
    lfs 1, 0x88(1)
    stfs 2, 0x84(1)
    lwz 3, 0x29c(31)
    stfs 1, 0x7c(1)
    stfs 0, 0x80(1)
    bl fn_80230498
    psq_l 0, 0x7c(1), 0, 0
    li 5, 0x5a
    lfs 1, 0x84(1)
    li 4, 0xa
    psq_st 0, 0xc(31), 0, 0
    li 0, 0x5
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    mr 3, 31
    stfs 1, 0x14(31)
    stw 5, 0x258(31)
    stw 4, 0x25c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    bl fn_801F3604
    .4byte 0x48000084 # b .L_803218B8
L_80321838:
    lwz 3, 0x29c(31)
    li 5, 0x1
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_803218B8
    lwz 0, 0x29c(31)
    stw 0, 0x23c(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_803218A8
    mr 3, 31
    bl fn_80322F44
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4180003C # blt .L_803218B8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_803218B8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x1a1
    lwz 5, 0x29c(31)
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000014 # b .L_803218B8
L_803218A8:
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_803218B8
    mr 3, 31
    bl fn_80322BC4
L_803218B8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820904 # bne .L_803221C8
    lwz 3, 0x278(31)
    subi 0, 3, 0x1
    stw 0, 0x278(31)
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x418108EC # bgt .L_803221C8
    mr 3, 31
    bl fn_801F3668
    .4byte 0x480008E0 # b .L_803221C8
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200BC # bne .L_803219C0
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_80321950
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
    stb 3, 0x28c(31)
    .4byte 0x48000164 # b .L_80321AB0
L_80321950:
    lfs 2, 0x44(31)
    .4byte 0xC022EB7C # lfs f1, lbl_80541B1C@sda21(r0)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
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
    .4byte 0x4180001C # blt .L_803219A8
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182010C # beq .L_80321AB0
L_803219A8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000F4 # b .L_80321AB0
L_803219C0:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_80321A08
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
    stb 3, 0x28c(31)
    .4byte 0x480000AC # b .L_80321AB0
L_80321A08:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80321A48
    lfs 2, 0x40(31)
    li 0, 0x1
    lfs 1, 0x44(31)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x40(31)
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stw 0, 0x26c(31)
L_80321A48:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80321A64
    lfs 1, 0x40(31)
    .4byte 0xC002EB70 # lfs f0, lbl_80541B10@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
L_80321A64:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80321AB0
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80321AB0:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x41810710 # bgt .L_803221C8
    lwz 3, 0x294(31)
    lwz 0, 0x264(31)
    cmpw 3, 0
    .4byte 0x40820700 # bne .L_803221C8
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x418106F4 # bgt .L_803221C8
    li 3, 0x5a
    li 0, 0x4
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x480006E0 # b .L_803221C8
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480006D4 # b .L_803221C8
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200CC # bne .L_80321BDC
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_80321B6C
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
    bl fn_80230CFC
    clrlslwi 0, 3, 31, 1
    stw 0, 0x290(31)
    lwz 3, 0xc8(31)
    bl fn_8023BCD4
    stb 3, 0x28c(31)
    .4byte 0x48000164 # b .L_80321CCC
L_80321B6C:
    lfs 2, 0x44(31)
    .4byte 0xC022EB7C # lfs f1, lbl_80541B1C@sda21(r0)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
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
    .4byte 0x4180001C # blt .L_80321BC4
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182010C # beq .L_80321CCC
L_80321BC4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000F4 # b .L_80321CCC
L_80321BDC:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_80321C24
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
    stb 3, 0x28c(31)
    .4byte 0x480000AC # b .L_80321CCC
L_80321C24:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80321C64
    lfs 2, 0x40(31)
    li 0, 0x1
    lfs 1, 0x44(31)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x40(31)
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stw 0, 0x26c(31)
L_80321C64:
    lwz 0, 0x26c(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80321C80
    lfs 1, 0x40(31)
    .4byte 0xC002EB70 # lfs f0, lbl_80541B10@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
L_80321C80:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80321CCC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80321CCC:
    lis 3, 0x8889
    lwz 4, 0x248(31)
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 4
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x1e
    subf 0, 0, 4
    cmpwi 0, 0x1d
    .4byte 0x408204D0 # bne .L_803221C8
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x6e
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480004B8 # b .L_803221C8
    lwz 3, 0x29c(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x70(1), 0, 0
    stfs 0, 0x78(1)
    lwz 3, 0x258(31)
    subi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4181009C # bgt .L_80321DDC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_80321DA8
    lwz 5, 0x4(31)
    cmpwi 5, 0x8
    .4byte 0x41800024 # blt .L_80321D80
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80321D80
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x1a1
    lwz 5, 0x29c(31)
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000054 # b .L_80321DD0
L_80321D80:
    psq_l 1, 0xc(31), 0, 0
    addi 6, 1, 0x64
    lfs 0, 0x14(31)
    li 4, 0xd3
    li 7, 0x1
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x6c(1)
    lwz 3, 0x29c(31)
    bl fn_8038BD08
    .4byte 0x4800002C # b .L_80321DD0
L_80321DA8:
    lwz 5, 0x4(31)
    addi 6, 1, 0x58
    psq_l 1, 0xc(31), 0, 0
    li 4, 0xd3
    lfs 0, 0x14(31)
    li 7, 0x1
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x60(1)
    lwz 3, 0x29c(31)
    bl fn_8038BD08
L_80321DD0:
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x480003F0 # b .L_803221C8
L_80321DDC:
    lwz 3, 0x25c(31)
    subi 0, 3, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x418103D8 # bgt .L_803221C8
    lwz 3, 0x270(31)
    addi 0, 3, 0x1
    stw 0, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_80321E3C
    lfs 1, 0x74(1)
    li 0, 0x4
    .4byte 0xC002EB80 # lfs f0, lbl_80541B20@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stw 0, 0x25c(31)
    lwz 3, 0x29c(31)
    bl fn_8022F340
    lis 4, 0x100
    addi 4, 4, 0x2
    bl fn_80230F44
    .4byte 0x48000084 # b .L_80321EBC
L_80321E3C:
    cmpwi 0, 0x3
    .4byte 0x4181007C # bgt .L_80321EBC
    li 0, 0x3
    .4byte 0xC002EB84 # lfs f0, lbl_80541B24@sda21(r0)
    stw 0, 0x270(31)
    li 0, 0xc8
    .4byte 0xC022EB88 # lfs f1, lbl_80541B28@sda21(r0)
    addi 4, 31, 0xc
    lfs 2, 0x74(1)
    li 5, 0x562
    li 6, 0x0
    li 7, 0x1
    fsubs 0, 2, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x10(31)
    stw 0, 0x25c(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2c8(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB8C # lfs f1, lbl_80541B2C@sda21(r0)
    li 5, 0x563
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2c4(31)
L_80321EBC:
    lwz 5, 0x270(31)
    addi 4, 1, 0x70
    lwz 3, 0x29c(31)
    li 6, 0xff
    addi 5, 5, 0xed
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x480002E8 # b .L_803221C8
    lwz 3, 0x29c(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x418200E0 # beq .L_80321FD0
    lwz 30, 0x2a0(31)
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_80321F24
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80321F1C
    li 0, 0x0
    stb 0, 0x11c(3)
L_80321F1C:
    li 0, -0x1
    stw 0, 0x2a0(31)
L_80321F24:
    lwz 3, 0x29c(31)
    li 4, 0x0
    bl fn_8023061C
    lwz 3, 0x29c(31)
    li 5, 0x0
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820280 # beq .L_803221C8
    lwz 5, 0x2c4(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80321F74
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2c4(31)
L_80321F74:
    lwz 5, 0x2c8(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80321F9C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2c8(31)
L_80321F9C:
    lwz 0, 0x29c(31)
    stw 0, 0x23c(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80321FBC
    mr 3, 31
    bl fn_80322F44
    .4byte 0x48000210 # b .L_803221C8
L_80321FBC:
    cmplwi 0, 0x2
    .4byte 0x40820208 # bne .L_803221C8
    mr 3, 31
    bl fn_80322BC4
    .4byte 0x480001FC # b .L_803221C8
L_80321FD0:
    lwz 0, 0x2a0(31)
    cmpwi 0, 0x0
    .4byte 0x408001F0 # bge .L_803221C8
    bl SpatialRegistry_GetBase
    lwz 0, 0x29c(31)
    lis 4, 0x5045
    lwz 5, 0x4(31)
    addi 4, 4, 0x4646
    clrlwi 0, 0, 30
    addi 6, 31, 0xc
    ori 7, 0, 0x24
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2a0(31)
    .4byte 0x480001BC # b .L_803221C8
    li 29, 0x0
L_80322014:
    mr 3, 29
    bl fn_8023A51C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820198 # bne .L_803221BC
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820184 # bne .L_803221BC
    mr 3, 29
    bl fn_8023A478
    lfs 3, 0x0(3)
    lfs 0, 0xc(31)
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002EB90 # lfs f0, lbl_80541B30@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4181014C # bgt .L_803221BC
    lwz 3, 0x2b0(31)
    li 0, -0x1
    cmpwi 3, 0x6
    .4byte 0x41820024 # beq .L_803220A4
    .4byte 0x40800014 # bge .L_80322098
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_803220A4
    .4byte 0x40800020 # bge .L_803220B0
    .4byte 0x48000028 # b .L_803220BC
L_80322098:
    cmpwi 3, 0xb
    .4byte 0x40800020 # bge .L_803220BC
    .4byte 0x48000018 # b .L_803220B8
L_803220A4:
    bl fn_8023A240
    xori 0, 3, 0x1
    .4byte 0x48000010 # b .L_803220BC
L_803220B0:
    subi 0, 3, 0x2
    .4byte 0x48000008 # b .L_803220BC
L_803220B8:
    subi 0, 3, 0x7
L_803220BC:
    cmpwi 0, 0x2
    .4byte 0x41820070 # beq .L_80322130
    .4byte 0x40800014 # bge .L_803220D8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_803220E4
    .4byte 0x40800038 # bge .L_80322108
    .4byte 0x480000A8 # b .L_8032217C
L_803220D8:
    cmpwi 0, 0x4
    .4byte 0x408000A0 # bge .L_8032217C
    .4byte 0x48000074 # b .L_80322154
L_803220E4:
    .4byte 0xC022EB44 # lfs f1, lbl_80541AE4@sda21(r0)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
    psq_l 0, 0x4c(1), 0, 0
    stfs 1, 0x54(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    .4byte 0x48000098 # b .L_8032219C
L_80322108:
    .4byte 0xC002EB94 # lfs f0, lbl_80541B34@sda21(r0)
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    stfs 0, 0x40(1)
    .4byte 0xC002EB44 # lfs f0, lbl_80541AE4@sda21(r0)
    stfs 1, 0x44(1)
    psq_l 1, 0x40(1), 0, 0
    stfs 0, 0x48(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000070 # b .L_8032219C
L_80322130:
    .4byte 0xC002EB44 # lfs f0, lbl_80541AE4@sda21(r0)
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    stfs 0, 0x38(1)
    stfs 1, 0x34(1)
    psq_l 1, 0x34(1), 0, 0
    stfs 0, 0x3c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x4800004C # b .L_8032219C
L_80322154:
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    .4byte 0xC022EB94 # lfs f1, lbl_80541B34@sda21(r0)
    stfs 0, 0x28(1)
    .4byte 0xC002EB44 # lfs f0, lbl_80541AE4@sda21(r0)
    stfs 1, 0x2c(1)
    psq_l 1, 0x28(1), 0, 0
    stfs 0, 0x30(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000024 # b .L_8032219C
L_8032217C:
    .4byte 0xC022EB40 # lfs f1, lbl_80541AE0@sda21(r0)
    .4byte 0xC002EB44 # lfs f0, lbl_80541AE4@sda21(r0)
    stfs 1, 0x1c(1)
    stfs 1, 0x20(1)
    psq_l 1, 0x1c(1), 0, 0
    stfs 0, 0x24(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_8032219C:
    li 0, 0x0
    lis 3, 0x2
    stw 0, 0x2b0(31)
    addi 3, 3, 0x100a
    li 0, 0x8
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_803221D0
L_803221BC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE50 # blt .L_80322014
L_803221C8:
    mr 3, 31
    bl fn_803226EC
L_803221D0:
    psq_l 31, 0xc8(1), 0, 0
    lwz 0, 0xd4(1)
    lfd 31, 0xc0(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    lwz 29, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_803221F4:
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    lwz 0, 0x278(3)
    cmpwi 0, 0xb4
    bgtlr
    li 0, 0xb6
    stw 0, 0x278(3)
    blr

fn_8032221C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    mr 30, 4
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 5
    mr 3, 28
    bl fn_8022461C
    clrlwi 29, 3, 16
    mr 3, 28
    mr 4, 30
    bl fn_80226850
    subi 0, 29, 0x10
    cmplwi 0, 0x6
    .4byte 0x4081000C # ble .L_80322270
    cmpwi 29, 0x17
    .4byte 0x40820014 # bne .L_80322280
L_80322270:
    li 0, 0x1
    li 3, 0x0
    stw 0, 0x274(31)
    .4byte 0x48000450 # b .L_803226CC
L_80322280:
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x408200AC # bne .L_80322334
    cmpwi 29, 0x3
    .4byte 0x408200A4 # bne .L_80322334
    lfs 1, 0x14(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080008C # bge .L_8032232C
    lfs 1, 0x0(28)
    lis 3, 0x4330
    lfs 0, 0x4(28)
    li 0, 0x1
    fctiwz 2, 1
    stw 3, 0x10(1)
    fctiwz 1, 0
    .4byte 0xC862EB60 # lfd f3, lbl_80541B00@sda21(r0)
    stw 3, 0x20(1)
    .4byte 0xC082EB3C # lfs f4, lbl_80541ADC@sda21(r0)
    stfd 2, 0x8(1)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stfd 1, 0x18(1)
    lwz 4, 0xc(1)
    lwz 3, 0x1c(1)
    rlwinm 4, 4, 0, 16, 27
    xoris 4, 4, 0x8000
    rlwinm 3, 3, 0, 16, 27
    stw 4, 0x14(1)
    xoris 3, 3, 0x8000
    stw 3, 0x24(1)
    lfd 2, 0x10(1)
    lfd 1, 0x20(1)
    fsubs 2, 2, 3
    fsubs 1, 1, 3
    fadds 2, 4, 2
    fadds 1, 4, 1
    stfs 2, 0x2b8(31)
    stfs 1, 0x2bc(31)
    stw 0, 0x2a8(31)
    stfs 0, 0x14(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
L_8032232C:
    li 3, 0x0
    .4byte 0x4800039C # b .L_803226CC
L_80322334:
    cmpwi 29, 0xe
    .4byte 0x40820170 # bne .L_803224A8
    lbz 0, 0x2ac(31)
    cmplwi 0, 0x0
    .4byte 0x40820164 # bne .L_803224A8
    lfs 1, 0x14(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080014C # bge .L_803224A0
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80322370
    li 29, 0x45e
    li 30, 0x45f
    .4byte 0x480000D4 # b .L_80322440
L_80322370:
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8032239C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 29, 0x2a9
    li 30, 0x2aa
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000A8 # b .L_80322440
L_8032239C:
    lfs 1, 0x14(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800090 # bge .L_80322438
    lfs 1, 0x0(28)
    lis 3, 0x4330
    lfs 0, 0x4(28)
    li 0, 0x1
    fctiwz 2, 1
    stw 3, 0x18(1)
    fctiwz 1, 0
    .4byte 0xC862EB60 # lfd f3, lbl_80541B00@sda21(r0)
    stw 3, 0x8(1)
    .4byte 0xC082EB3C # lfs f4, lbl_80541ADC@sda21(r0)
    stfd 2, 0x20(1)
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stfd 1, 0x10(1)
    lwz 4, 0x24(1)
    lwz 3, 0x14(1)
    rlwinm 4, 4, 0, 16, 27
    xoris 4, 4, 0x8000
    rlwinm 3, 3, 0, 16, 27
    stw 4, 0x1c(1)
    xoris 3, 3, 0x8000
    stw 3, 0xc(1)
    lfd 2, 0x18(1)
    lfd 1, 0x8(1)
    fsubs 2, 2, 3
    fsubs 1, 1, 3
    fadds 2, 4, 2
    fadds 1, 4, 1
    stfs 2, 0x2b8(31)
    stfs 1, 0x2bc(31)
    stw 0, 0x2a8(31)
    stb 0, 0x2ac(31)
    stfs 0, 0x14(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
L_80322438:
    li 3, 0x0
    .4byte 0x48000290 # b .L_803226CC
L_80322440:
    lwz 3, 0x4(31)
    mr 5, 29
    .4byte 0xC022EB44 # lfs f1, lbl_80541AE4@sda21(r0)
    addi 4, 31, 0xc
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    mr 5, 30
    .4byte 0xC022EB44 # lfs f1, lbl_80541AE4@sda21(r0)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    mr 3, 31
    stb 0, 0x2ac(31)
    bl fn_801F3668
L_803224A0:
    li 3, 0x0
    .4byte 0x48000228 # b .L_803226CC
L_803224A8:
    cmpwi 29, 0xd
    .4byte 0x4182000C # beq .L_803224B8
    cmpwi 29, 0x3b
    .4byte 0x40820060 # bne .L_80322514
L_803224B8:
    lbz 0, 0x2ac(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_80322514
    lfs 1, 0x14(31)
    .4byte 0xC002EB38 # lfs f0, lbl_80541AD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080003C # bge .L_8032250C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EB44 # lfs f1, lbl_80541AE4@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_801F3668
    li 0, 0x1
    stb 0, 0x2ac(31)
L_8032250C:
    li 3, 0x0
    .4byte 0x480001BC # b .L_803226CC
L_80322514:
    cmpwi 29, 0x0
    .4byte 0x418201B0 # beq .L_803226C8
    cmpwi 29, 0x3
    .4byte 0x418201A8 # beq .L_803226C8
    cmpwi 29, 0xe
    .4byte 0x418201A0 # beq .L_803226C8
    cmpwi 29, 0xd
    .4byte 0x41820198 # beq .L_803226C8
    cmpwi 29, 0x3b
    .4byte 0x41820190 # beq .L_803226C8
    cmpwi 29, 0x4
    .4byte 0x41820188 # beq .L_803226C8
    cmpwi 29, 0x5
    .4byte 0x41820180 # beq .L_803226C8
    cmpwi 29, 0x6
    .4byte 0x41820178 # beq .L_803226C8
    cmpwi 29, 0x7
    .4byte 0x41820170 # beq .L_803226C8
    cmpwi 29, 0x2
    .4byte 0x41820168 # beq .L_803226C8
    cmpwi 29, 0x50
    .4byte 0x41820160 # beq .L_803226C8
    cmpwi 29, 0xc
    .4byte 0x41820158 # beq .L_803226C8
    cmpwi 29, 0x27
    .4byte 0x41820150 # beq .L_803226C8
    cmpwi 29, 0x28
    .4byte 0x41820148 # beq .L_803226C8
    cmpwi 29, 0x29
    .4byte 0x41820140 # beq .L_803226C8
    cmpwi 29, 0x2a
    .4byte 0x41820138 # beq .L_803226C8
    cmpwi 29, 0x2b
    .4byte 0x41820130 # beq .L_803226C8
    cmpwi 29, 0x2c
    .4byte 0x41820128 # beq .L_803226C8
    cmpwi 29, 0x2d
    .4byte 0x41820120 # beq .L_803226C8
    cmpwi 29, 0x2e
    .4byte 0x41820118 # beq .L_803226C8
    cmpwi 29, 0x2f
    .4byte 0x41820110 # beq .L_803226C8
    cmpwi 29, 0x20
    .4byte 0x41820108 # beq .L_803226C8
    cmpwi 29, 0x39
    .4byte 0x41820100 # beq .L_803226C8
    cmpwi 29, 0x3a
    .4byte 0x418200F8 # beq .L_803226C8
    cmpwi 29, 0x4c
    .4byte 0x418200F0 # beq .L_803226C8
    cmpwi 29, 0x4d
    .4byte 0x418200E8 # beq .L_803226C8
    cmpwi 29, 0x4e
    .4byte 0x418200E0 # beq .L_803226C8
    cmpwi 29, 0x4f
    .4byte 0x418200D8 # beq .L_803226C8
    mr 3, 28
    mr 4, 30
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3a
    .4byte 0x4182001C # beq .L_80322624
    mr 3, 28
    mr 4, 30
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3d
    .4byte 0x40820014 # bne .L_80322634
L_80322624:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x274(31)
    .4byte 0x4800009C # b .L_803226CC
L_80322634:
    cmpwi 29, 0x25
    .4byte 0x40820030 # bne .L_80322668
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80322660
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80322660
    li 3, 0x1
    .4byte 0x48000070 # b .L_803226CC
L_80322660:
    li 3, 0x0
    .4byte 0x48000068 # b .L_803226CC
L_80322668:
    cmpwi 29, 0x26
    .4byte 0x40820030 # bne .L_8032269C
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80322694
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80322694
    li 3, 0x1
    .4byte 0x4800003C # b .L_803226CC
L_80322694:
    li 3, 0x0
    .4byte 0x48000034 # b .L_803226CC
L_8032269C:
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_803226C8
    cmpwi 29, 0x22
    .4byte 0x40820014 # bne .L_803226C0
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803226C8
L_803226C0:
    li 3, 0x1
    .4byte 0x48000008 # b .L_803226CC
L_803226C8:
    li 3, 0x0
L_803226CC:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803226EC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x230(3)
    cmpwi 3, 0x0
    .4byte 0x4182001C # beq .L_80322724
    subi 0, 3, 0x5
    cmplwi 0, 0x3
    .4byte 0x40810010 # ble .L_80322724
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_80322748
L_80322724:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41810210 # bgt .L_8032293C
    lwz 3, 0x264(31)
    li 0, 0xa
    xori 3, 3, 0x1
    stw 3, 0x264(31)
    stw 0, 0x248(31)
    .4byte 0x480001F8 # b .L_8032293C
L_80322748:
    cmpwi 3, 0x2
    .4byte 0x408201F0 # bne .L_8032293C
    lbz 0, 0x2a6(31)
    cmplwi 0, 0x1
    .4byte 0x40820118 # bne .L_80322870
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x40810034 # ble .L_80322798
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_80322788
    lwz 3, 0x264(31)
    li 0, 0xa
    xori 3, 3, 0x1
    stw 3, 0x264(31)
    stw 0, 0x248(31)
L_80322788:
    lwz 3, 0x260(31)
    subi 0, 3, 0x1
    stw 0, 0x260(31)
    .4byte 0x480001A8 # b .L_8032293C
L_80322798:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, 0x9249
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    lwz 5, 0xb4(6)
    addi 0, 4, 0x660d
    .4byte 0xC042EB98 # lfs f2, lbl_80541B38@sda21(r0)
    addi 3, 3, 0x2493
    mullw 4, 5, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    addi 0, 4, 0x28
    stw 0, 0x24c(31)
    lwz 5, 0x24c(31)
    lwz 0, 0x2b4(31)
    mulhw 3, 3, 5
    add 3, 3, 5
    srawi 3, 3, 2
    srwi 4, 3, 31
    add 3, 3, 4
    mulli 3, 3, 0x7
    subf 3, 3, 5
    subf 0, 3, 0
    stw 0, 0x268(31)
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80322838
    addi 0, 3, 0x7
    stw 0, 0x268(31)
L_80322838:
    lwz 4, 0x288(31)
    lis 3, lbl_80471784@ha
    lwz 0, 0x268(31)
    addi 5, 3, lbl_80471784@l
    mulli 6, 4, 0x1c
    li 3, 0x5
    slwi 4, 0, 2
    li 0, 0x0
    add 5, 5, 6
    lwzx 4, 5, 4
    stw 4, 0x264(31)
    stw 3, 0x248(31)
    stb 0, 0x2a6(31)
    .4byte 0x480000D0 # b .L_8032293C
L_80322870:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x418100C4 # bgt .L_8032293C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x7
    .4byte 0x40810010 # ble .L_80322894
    li 0, 0x5
    stw 0, 0x248(31)
    .4byte 0x48000030 # b .L_803228C0
L_80322894:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803228A4
    li 0, 0x0
    stw 0, 0x24c(31)
L_803228A4:
    lwz 0, 0x24c(31)
    lis 3, lbl_80471760@ha
    addi 3, 3, lbl_80471760@l
    subfic 0, 0, 0x7
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x248(31)
L_803228C0:
    lwz 6, 0x268(31)
    lis 5, 0x9249
    lis 3, lbl_80471784@ha
    lis 4, 0x3
    addi 6, 6, 0x1
    addi 0, 5, 0x2493
    stw 6, 0x268(31)
    addi 6, 3, lbl_80471784@l
    mr 3, 31
    addi 4, 4, 0x6a
    lwz 8, 0x268(31)
    li 5, 0x0
    mulhw 0, 0, 8
    add 0, 0, 8
    srawi 0, 0, 2
    srwi 7, 0, 31
    add 0, 0, 7
    mulli 0, 0, 0x7
    subf 0, 0, 8
    stw 0, 0x268(31)
    lwz 7, 0x288(31)
    lwz 0, 0x268(31)
    mulli 7, 7, 0x1c
    slwi 0, 0, 2
    add 6, 6, 7
    lwzx 0, 6, 0
    stw 0, 0x264(31)
    bl fn_801F0E34
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_8032293C:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80322950
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80322950:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80322964:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC022EB9C # lfs f1, lbl_80541B3C@sda21(r0)
    li 4, -0x1
    stw 0, 0x54(1)
    .4byte 0xC002EBA0 # lfs f0, lbl_80541B40@sda21(r0)
    stmw 25, 0x34(1)
    mr 27, 3
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    psq_l 1, 0xc(27), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    bl fn_801F2740
    clrlwi. 31, 3, 24
    .4byte 0x418201C0 # beq .L_80322B6C
    li 30, 0x1
    li 29, 0x0
L_803229B8:
    clrlwi 0, 30, 24
    and. 0, 31, 0
    .4byte 0x4182019C # beq .L_80322B5C
    mr 3, 29
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 4, 0x8(3)
    mr 3, 29
    psq_st 0, 0x8(1), 0, 0
    lfs 3, 0xc(27)
    lfs 2, 0x8(1)
    lfs 1, 0x10(27)
    lfs 0, 0xc(1)
    fsubs 2, 3, 2
    stfs 4, 0x10(1)
    fsubs 0, 1, 0
    fabs 1, 2
    fabs 0, 0
    frsp 1, 1
    frsp 0, 0
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x20(1)
    stfd 0, 0x28(1)
    lwz 25, 0x24(1)
    lwz 28, 0x2c(1)
    bl fn_80230CFC
    cmpwi 25, 0x0
    mr 26, 3
    .4byte 0x41800014 # blt .L_80322A40
    cmpwi 25, 0xf
    .4byte 0x4181000C # bgt .L_80322A40
    cmpwi 26, 0x0
    .4byte 0x4182000C # beq .L_80322A48
L_80322A40:
    cmpwi 26, 0x1
    .4byte 0x40820070 # bne .L_80322AB4
L_80322A48:
    lfs 2, 0xc(27)
    lfs 0, 0x8(1)
    fcmpo cr0, 2, 0
    .4byte 0x40810034 # ble .L_80322A88
    subfic 3, 25, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822EB60 # lfd f1, lbl_80541B00@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0xc(27)
    .4byte 0x48000030 # b .L_80322AB4
L_80322A88:
    subfic 3, 25, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822EB60 # lfd f1, lbl_80541B00@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0xc(27)
L_80322AB4:
    lwz 25, 0x4(27)
    bl GetRoomConfigRecord
    addis 4, 25, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_80322B5C
    cmpwi 28, 0x0
    .4byte 0x41800014 # blt .L_80322AE8
    cmpwi 28, 0xf
    .4byte 0x4181000C # bgt .L_80322AE8
    cmpwi 26, 0x3
    .4byte 0x4182000C # beq .L_80322AF0
L_80322AE8:
    cmpwi 26, 0x2
    .4byte 0x40820070 # bne .L_80322B5C
L_80322AF0:
    lfs 2, 0x10(27)
    lfs 0, 0xc(1)
    fcmpo cr0, 2, 0
    .4byte 0x40810034 # ble .L_80322B30
    subfic 3, 28, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822EB60 # lfd f1, lbl_80541B00@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x10(27)
    .4byte 0x48000030 # b .L_80322B5C
L_80322B30:
    subfic 3, 28, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822EB60 # lfd f1, lbl_80541B00@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0x10(27)
L_80322B5C:
    addi 29, 29, 0x1
    clrlslwi 30, 30, 25, 1
    cmpwi 29, 0x4
    .4byte 0x4180FE50 # blt .L_803229B8
L_80322B6C:
    mr 3, 27
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80322B98
    psq_l 1, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0xc(27), 0, 0
    stfs 0, 0x14(27)
L_80322B98:
    .4byte 0xC022EBA4 # lfs f1, lbl_80541B44@sda21(r0)
    .4byte 0xC002EB3C # lfs f0, lbl_80541ADC@sda21(r0)
    stfs 1, 0x60(27)
    stfs 1, 0x64(27)
    stfs 0, 0x68(27)
    stfs 0, 0x6c(27)
    lmw 25, 0x34(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80322BC4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 27, 0x4c(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 29, 3
    li 31, 0x0
    li 30, 0x0
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80322C00
    li 31, 0x4
    .4byte 0x480000E0 # b .L_80322CDC
L_80322C00:
    lbz 0, 0x7f(4)
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_80322C78
    lwz 3, 0x23c(29)
    bl fn_80236228
    mr 28, 3
    li 27, 0x0
L_80322C1C:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_80322C68
    mr 3, 27
    bl fn_8023DE58
    lwz 0, 0x4(29)
    cmpw 0, 3
    .4byte 0x40820028 # bne .L_80322C68
    mr 3, 27
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80322C68
    mr 3, 27
    bl fn_80236228
    cmpw 28, 3
    .4byte 0x40800008 # bge .L_80322C68
    addi 31, 31, 0x1
L_80322C68:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFAC # blt .L_80322C1C
    .4byte 0x48000068 # b .L_80322CDC
L_80322C78:
    lwz 3, 0x23c(29)
    bl fn_80237774
    mr 28, 3
    li 27, 0x0
L_80322C88:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80322CD0
    mr 3, 27
    bl fn_8023DE58
    lwz 0, 0x4(29)
    cmpw 0, 3
    .4byte 0x40820028 # bne .L_80322CD0
    mr 3, 27
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80322CD0
    mr 3, 27
    bl fn_80237774
    cmpw 28, 3
    .4byte 0x40800008 # bge .L_80322CD0
    addi 31, 31, 0x1
L_80322CD0:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFB0 # blt .L_80322C88
L_80322CDC:
    lwz 0, 0x90(29)
    extrwi. 3, 0, 1, 13
    .4byte 0x41820010 # beq .L_80322CF4
    li 3, 0xa
    li 30, 0x1
    stw 3, 0x10(1)
L_80322CF4:
    extrwi. 3, 0, 1, 12
    .4byte 0x41820018 # beq .L_80322D10
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x3
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322D10:
    extrwi. 3, 0, 1, 11
    .4byte 0x41820018 # beq .L_80322D2C
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x4
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322D2C:
    extrwi. 3, 0, 1, 10
    .4byte 0x41820018 # beq .L_80322D48
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x8
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322D48:
    extrwi. 3, 0, 1, 9
    .4byte 0x41820018 # beq .L_80322D64
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x6
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322D64:
    extrwi. 3, 0, 1, 8
    .4byte 0x41820018 # beq .L_80322D80
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x5
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322D80:
    extrwi. 3, 0, 1, 7
    .4byte 0x41820018 # beq .L_80322D9C
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x7
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322D9C:
    extrwi. 3, 0, 1, 6
    .4byte 0x41820018 # beq .L_80322DB8
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x1
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322DB8:
    extrwi. 3, 0, 1, 5
    .4byte 0x41820018 # beq .L_80322DD4
    slwi 4, 30, 2
    addi 3, 1, 0x10
    li 5, 0x9
    addi 30, 30, 0x1
    stwx 5, 3, 4
L_80322DD4:
    extrwi. 0, 0, 1, 27
    .4byte 0x41820018 # beq .L_80322DF0
    slwi 0, 30, 2
    addi 3, 1, 0x10
    li 4, 0x2
    addi 30, 30, 0x1
    stwx 4, 3, 0
L_80322DF0:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x3c(1)
    addi 3, 1, 0x10
    mullw 4, 5, 4
    .4byte 0xC842EB60 # lfd f2, lbl_80541B00@sda21(r0)
    stw 0, 0x38(1)
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    lfd 1, 0x38(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 2, 1, 2
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    divw 0, 4, 30
    mullw 0, 0, 30
    subf 0, 0, 4
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x294(29)
    lwz 0, 0x294(29)
    cmpwi 0, 0x2
    .4byte 0x418200A4 # beq .L_80322F20
    cmpwi 31, 0x2
    .4byte 0x41820038 # beq .L_80322EBC
    .4byte 0x40800014 # bge .L_80322E9C
    cmpwi 31, 0x0
    .4byte 0x4182001C # beq .L_80322EAC
    .4byte 0x40800020 # bge .L_80322EB4
    .4byte 0x48000038 # b .L_80322ED0
L_80322E9C:
    cmpwi 31, 0x4
    .4byte 0x4182002C # beq .L_80322ECC
    .4byte 0x4080002C # bge .L_80322ED0
    .4byte 0x4800001C # b .L_80322EC4
L_80322EAC:
    .4byte 0xC3E2EBA8 # lfs f31, lbl_80541B48@sda21(r0)
    .4byte 0x48000020 # b .L_80322ED0
L_80322EB4:
    .4byte 0xC3E2EB8C # lfs f31, lbl_80541B2C@sda21(r0)
    .4byte 0x48000018 # b .L_80322ED0
L_80322EBC:
    .4byte 0xC3E2EBAC # lfs f31, lbl_80541B4C@sda21(r0)
    .4byte 0x48000010 # b .L_80322ED0
L_80322EC4:
    .4byte 0xC3E2EB38 # lfs f31, lbl_80541AD8@sda21(r0)
    .4byte 0x48000008 # b .L_80322ED0
L_80322ECC:
    .4byte 0xC3E2EB48 # lfs f31, lbl_80541AE8@sda21(r0)
L_80322ED0:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    lwz 3, 0xb4(4)
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
    fcmpo cr0, 0, 31
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80322F20
    li 0, 0x2
    stw 0, 0x298(29)
L_80322F20:
    li 0, 0x4
    stw 0, 0x230(29)
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 27, 0x4c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80322F44:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 31, 3
    lwz 0, 0x284(3)
    cmpwi 0, 0x0
    .4byte 0x40820100 # bne .L_80323060
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80322F80
    li 0, 0x0
    stw 0, 0x288(31)
    .4byte 0x48000100 # b .L_8032307C
L_80322F80:
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408200CC # bne .L_80323054
    lwz 3, 0x23c(31)
    bl fn_80236228
    mr 29, 3
    li 27, 0x0
    mr 30, 29
    mr 28, 30
L_80322FA4:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_80322FEC
    mr 3, 27
    bl fn_80236228
    cmpw 30, 3
    .4byte 0x40800010 # bge .L_80322FD0
    mr 3, 27
    bl fn_80236228
    mr 30, 3
L_80322FD0:
    mr 3, 27
    bl fn_80236228
    cmpw 29, 3
    .4byte 0x40810010 # ble .L_80322FEC
    mr 3, 27
    bl fn_80236228
    mr 29, 3
L_80322FEC:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFB0 # blt .L_80322FA4
    cmpw 30, 28
    .4byte 0x40820010 # bne .L_8032300C
    li 0, 0x1
    stw 0, 0x288(31)
    .4byte 0x48000074 # b .L_8032307C
L_8032300C:
    cmpw 29, 28
    .4byte 0x40820024 # bne .L_80323034
    subf 0, 28, 30
    li 3, 0x3
    cmpwi 0, 0x1f4
    stw 3, 0x288(31)
    .4byte 0x41800058 # blt .L_8032307C
    li 0, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x4800004C # b .L_8032307C
L_80323034:
    subf 0, 28, 30
    li 3, 0x2
    cmpwi 0, 0x1f4
    stw 3, 0x288(31)
    .4byte 0x41800038 # blt .L_8032307C
    li 0, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x4800002C # b .L_8032307C
L_80323054:
    li 0, 0x4
    stw 0, 0x288(31)
    .4byte 0x48000020 # b .L_8032307C
L_80323060:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80323074
    li 0, 0x5
    stw 0, 0x288(31)
    .4byte 0x4800000C # b .L_8032307C
L_80323074:
    li 0, 0x5
    stw 0, 0x288(31)
L_8032307C:
    li 0, 0x2
    stw 0, 0x230(31)
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x40820080 # bne .L_8032310C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, 0x9249
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    .4byte 0xC042EB98 # lfs f2, lbl_80541B38@sda21(r0)
    addi 0, 3, 0x2493
    mullw 3, 5, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 2
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x7
    subf 0, 0, 4
    stw 0, 0x2b4(31)
    .4byte 0x4800008C # b .L_80323194
L_8032310C:
    cmpwi 0, 0x1
    .4byte 0x40820080 # bne .L_80323190
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, 0x9249
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    .4byte 0xC042EB98 # lfs f2, lbl_80541B38@sda21(r0)
    addi 0, 3, 0x2493
    mullw 3, 5, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 2
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x7
    subf 0, 0, 4
    stw 0, 0x2b4(31)
    .4byte 0x48000008 # b .L_80323194
L_80323190:
    stw 0, 0x2b4(31)
L_80323194:
    lwz 4, 0x288(31)
    lis 3, lbl_80471784@ha
    lwz 0, 0x2b4(31)
    addi 3, 3, lbl_80471784@l
    mulli 4, 4, 0x1c
    slwi 0, 0, 2
    add 3, 3, 4
    lwzx 0, 3, 0
    stw 0, 0x294(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_803231D4
    li 0, 0x14
    stw 0, 0x260(31)
    .4byte 0x480000D4 # b .L_803232A4
L_803231D4:
    lis 3, 0x19
    lwz 4, 0xb4(5)
    addi 0, 3, 0x660d
    lis 3, 0x9249
    mullw 4, 4, 0
    .4byte 0xC002EB4C # lfs f0, lbl_80541AEC@sda21(r0)
    .4byte 0xC042EB98 # lfs f2, lbl_80541B38@sda21(r0)
    addi 3, 3, 0x2493
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    addi 0, 4, 0x28
    stw 0, 0x24c(31)
    lwz 5, 0x24c(31)
    lwz 0, 0x2b4(31)
    mulhw 3, 3, 5
    add 3, 3, 5
    srawi 3, 3, 2
    srwi 4, 3, 31
    add 3, 3, 4
    mulli 3, 3, 0x7
    subf 3, 3, 5
    subf 0, 3, 0
    stw 0, 0x268(31)
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80323270
    addi 0, 3, 0x7
    stw 0, 0x268(31)
L_80323270:
    lwz 4, 0x288(31)
    lis 3, lbl_80471784@ha
    lwz 0, 0x268(31)
    addi 5, 3, lbl_80471784@l
    mulli 6, 4, 0x1c
    li 3, 0x5
    slwi 4, 0, 2
    li 0, 0x0
    add 5, 5, 6
    lwzx 4, 5, 4
    stw 4, 0x264(31)
    stw 3, 0x248(31)
    stb 0, 0x2a6(31)
L_803232A4:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803232B8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002EB40 # lfs f0, lbl_80541AE0@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC022EBB0 # lfs f1, lbl_80541B50@sda21(r0)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    stfs 0, 0x14(3)
    .4byte 0xC002EB80 # lfs f0, lbl_80541B20@sda21(r0)
    stw 0, 0xb0(3)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x0
    .4byte 0xC022EBB4 # lfs f1, lbl_80541B54@sda21(r0)
    .4byte 0xC042EB40 # lfs f2, lbl_80541AE0@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80323340
    mr 3, 29
    li 4, 0x2
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 31, 3, 24
    .4byte 0x4800001C # b .L_80323358
L_80323340:
    mr 3, 29
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 31, 3, 24
L_80323358:
    cmpwi 31, 0x0
    .4byte 0x40810030 # ble .L_8032338C
    li 30, 0x0
L_80323364:
    sraw 0, 31, 30
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_80323380
    mr 3, 30
    li 4, 0x64
    li 5, 0x1
    bl fn_80236074
L_80323380:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_80323364
L_8032338C:
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022EB4C # lfs f1, lbl_80541AEC@sda21(r0)
    li 5, 0x59
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022EB4C # lfs f1, lbl_80541AEC@sda21(r0)
    li 5, 0x5a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022EB4C # lfs f1, lbl_80541AEC@sda21(r0)
    li 5, 0x5b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80323434:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x0
    li 5, 0x1
    stw 0, 0x14(1)
    li 4, 0x384
    .4byte 0xC142EB4C # lfs f10, lbl_80541AEC@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC122EB40 # lfs f9, lbl_80541AE0@sda21(r0)
    stw 30, 0x8(1)
    .4byte 0xC102EBB8 # lfs f8, lbl_80541B58@sda21(r0)
    lwz 0, 0x90(3)
    .4byte 0xC0E2EB9C # lfs f7, lbl_80541B3C@sda21(r0)
    clrlwi 0, 0, 28
    .4byte 0xC0C2EBB4 # lfs f6, lbl_80541B54@sda21(r0)
    sth 0, 0x94(3)
    li 3, 0xff
    li 0, -0x1
    .4byte 0xC0A2EBA0 # lfs f5, lbl_80541B40@sda21(r0)
    lwz 7, 0x90(31)
    .4byte 0xC082EBA4 # lfs f4, lbl_80541B44@sda21(r0)
    extrwi 7, 7, 4, 20
    .4byte 0xC062EB3C # lfs f3, lbl_80541ADC@sda21(r0)
    stw 7, 0x284(31)
    .4byte 0xC042EBBC # lfs f2, lbl_80541B5C@sda21(r0)
    lwz 7, 0x90(31)
    .4byte 0xC022EBC0 # lfs f1, lbl_80541B60@sda21(r0)
    extrwi 7, 7, 2, 14
    .4byte 0xC002EBC4 # lfs f0, lbl_80541B64@sda21(r0)
    stw 7, 0x23c(31)
    stw 6, 0x290(31)
    stw 6, 0x2c4(31)
    stw 6, 0x2c8(31)
    stw 6, 0x240(31)
    stw 6, 0x244(31)
    stw 6, 0x280(31)
    stw 6, 0x294(31)
    stw 6, 0x288(31)
    stw 5, 0x298(31)
    stb 6, 0x2a4(31)
    stb 6, 0x2a5(31)
    stb 5, 0x2a6(31)
    stb 6, 0x2ad(31)
    stw 6, 0x2b4(31)
    stw 6, 0x248(31)
    stw 6, 0x24c(31)
    stw 6, 0x250(31)
    stw 6, 0x254(31)
    stw 6, 0x258(31)
    stw 6, 0x25c(31)
    stw 6, 0x260(31)
    stw 6, 0x264(31)
    stw 6, 0x268(31)
    stw 6, 0x26c(31)
    stw 6, 0x270(31)
    stw 6, 0x274(31)
    stw 4, 0x278(31)
    stw 6, 0x27c(31)
    stfs 10, 0x234(31)
    stfs 9, 0x238(31)
    stb 3, 0x28c(31)
    stw 0, 0x29c(31)
    stfs 8, 0x80(31)
    stfs 7, 0x84(31)
    stfs 6, 0x88(31)
    stfs 5, 0x8c(31)
    stfs 4, 0x60(31)
    stfs 4, 0x64(31)
    stfs 3, 0x68(31)
    stfs 3, 0x6c(31)
    stfs 2, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 3, 0x7c(31)
    stw 6, 0x2a8(31)
    stb 6, 0x2ac(31)
    stfs 9, 0x2c0(31)
    stfs 9, 0x2bc(31)
    stfs 9, 0x2b8(31)
    stw 0, 0x2a0(31)
    lhz 0, 0x94(31)
    cmpwi 0, 0x2
    .4byte 0x41820024 # beq .L_803235A4
    .4byte 0x40800014 # bge .L_80323598
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_803235A4
    .4byte 0x40800034 # bge .L_803235C4
    .4byte 0x480000B0 # b .L_80323644
L_80323598:
    cmpwi 0, 0x4
    .4byte 0x408000A8 # bge .L_80323644
    .4byte 0x48000060 # b .L_80323600
L_803235A4:
    li 0, 0xa
    lis 3, 0x2
    stw 0, 0x248(31)
    addi 3, 3, 0x100a
    li 0, 0x0
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x48000084 # b .L_80323644
L_803235C4:
    stw 6, 0xb0(31)
    li 5, 0x0
    li 6, 0x0
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803235F4
    mr 3, 31
    bl fn_80322F44
    .4byte 0x48000054 # b .L_80323644
L_803235F4:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000048 # b .L_80323644
L_80323600:
    stw 6, 0xb0(31)
    li 0, 0x2
    li 5, 0x0
    li 6, 0x0
    stw 0, 0x294(31)
    stw 0, 0x264(31)
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032363C
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_80323644
L_8032363C:
    li 0, 0x3
    stw 0, 0x230(31)
L_80323644:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_8032368C
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    .4byte 0xC042EB40 # lfs f2, lbl_80541AE0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stfs 2, 0x14(31)
    lfs 1, 0x40(31)
    lfs 0, 0x44(31)
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    stfs 2, 0x44(31)
L_8032368C:
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 16
    stw 0, 0x2b0(31)
    lwz 0, 0x2b0(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_803236B4
    li 3, 0x0
    li 0, 0x7
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
L_803236B4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_803236F0
    mr 3, 31
    addi 5, 31, 0xc
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803236F0
    li 0, 0x0
    stb 0, 0x11c(31)
L_803236F0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80323708:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_80323760
    lis 3, lbl_804AB308@ha
    addi 0, 3, lbl_804AB308@l
    stw 0, 0x0(30)
    lwz 3, 0x2c4(30)
    bl fn_801EE434
    lwz 3, 0x2c8(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80323760
    mr 3, 30
    bl dtor_80084580
L_80323760:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8032377C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805087F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805087F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803237CC
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
L_803237CC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80323804
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
L_80323804:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032383C
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
L_8032383C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80323874
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
L_80323874:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803238AC
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
L_803238AC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803238E4
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
L_803238E4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032391C
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
L_8032391C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80323954
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
L_80323954:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032398C
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
L_8032398C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803239A0:
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
    .4byte 0x48000064 # b .L_80323A2C
L_803239CC:
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
L_80323A2C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803239CC
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
    lfs 0, 0x234(31)
    fctiwz 0, 0
    stb 5, 0x2d(1)
    stb 5, 0x2c(1)
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    stb 5, 0x30(1)
    stb 0, 0x23(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80323B24
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80323B24
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8047184C@ha
    addi 5, 3, lbl_8047184C@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EBD0 # lfs f1, lbl_80541B70@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x10
    fmr 2, 1
    li 6, 0xe7
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80323B24:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0xe7
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80323B68:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    lbz 4, 0x278(31)
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplw 4, 0
    .4byte 0x41820134 # beq .L_80323CD4
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082010C # bne .L_80323CC8
    lwz 0, 0x98(31)
    cmplwi 0, 0x7
    .4byte 0x418100E0 # bgt .L_80323CA8
    lis 3, jumptable_804AB3FC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB3FC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022EBD4 # lfs f1, lbl_80541B74@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480000B0 # b .L_80323CA8
    .4byte 0xC022EBDC # lfs f1, lbl_80541B7C@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000098 # b .L_80323CA8
    .4byte 0xC022EBD8 # lfs f1, lbl_80541B78@sda21(r0)
    .4byte 0xC002EBD4 # lfs f0, lbl_80541B74@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000080 # b .L_80323CA8
    .4byte 0xC022EBD8 # lfs f1, lbl_80541B78@sda21(r0)
    .4byte 0xC002EBDC # lfs f0, lbl_80541B7C@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000068 # b .L_80323CA8
    .4byte 0xC022EBE0 # lfs f1, lbl_80541B80@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000050 # b .L_80323CA8
    .4byte 0xC002EBE4 # lfs f0, lbl_80541B84@sda21(r0)
    .4byte 0xC022EBE0 # lfs f1, lbl_80541B80@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000034 # b .L_80323CA8
    .4byte 0xC002EBE0 # lfs f0, lbl_80541B80@sda21(r0)
    .4byte 0xC022EBE4 # lfs f1, lbl_80541B84@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000018 # b .L_80323CA8
    .4byte 0xC022EBE4 # lfs f1, lbl_80541B84@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_80323CA8:
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80323CBC
    lfs 0, 0x270(31)
    stfs 0, 0x44(31)
L_80323CBC:
    lfs 0, 0x274(31)
    stfs 0, 0x14(31)
    .4byte 0x48000010 # b .L_80323CD4
L_80323CC8:
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_80323CD4:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    stb 0, 0x278(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418206E0 # beq .L_803243F4
    .4byte 0x408007D8 # bge .L_803244F0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80323D28
    .4byte 0x480007CC # b .L_803244F0
L_80323D28:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80323D3C
    li 0, 0x0
    stb 0, 0x11c(31)
L_80323D3C:
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_80323D9C
    lwz 3, 0x26c(31)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_80323D70
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    .4byte 0x48000030 # b .L_80323D9C
L_80323D70:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EBD0 # lfs f1, lbl_80541B70@sda21(r0)
    li 5, 0x35d
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x26c(31)
L_80323D9C:
    lis 4, lbl_80471840@ha
    mr 3, 31
    addi 4, 4, lbl_80471840@l
    bl fn_801F26CC
    mr. 30, 3
    .4byte 0x41800048 # blt .L_80323DF8
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_80323DF8
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x464c
    cmplwi 0, 0x4d45
    .4byte 0x4182001C # beq .L_80323DF0
    subis 0, 4, 0x424c
    cmplwi 0, 0x5a32
    .4byte 0x40820018 # bne .L_80323DF8
    lhz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80323DF8
L_80323DF0:
    mr 3, 31
    bl fn_801F3668
L_80323DF8:
    lbz 0, 0x268(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80323E10
    lwz 3, 0x260(31)
    subi 0, 3, 0x1
    stw 0, 0x260(31)
L_80323E10:
    lbz 4, 0x268(31)
    li 0, 0x0
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    mr 3, 31
    stb 4, 0x269(31)
    addi 4, 1, 0x20
    li 5, 0x0
    stb 0, 0x268(31)
    stfs 0, 0x28(1)
    stfs 0, 0x24(1)
    stfs 0, 0x20(1)
    bl fn_801F2618
    lbz 0, 0x26a(31)
    clrlwi 29, 3, 24
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80323E70
    lwz 4, 0x90(31)
    mr 3, 31
    lwz 5, 0x98(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_801F2A10
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80323E84
L_80323E70:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80323E84
    cmpwi 29, 0x0
    .4byte 0x418200FC # beq .L_80323F7C
L_80323E84:
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x40800030 # bge .L_80323EBC
    .4byte 0xC022EBD0 # lfs f1, lbl_80541B70@sda21(r0)
    mr 3, 30
    addi 4, 31, 0xc
    li 5, 0x339
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000028 # b .L_80323EE0
L_80323EBC:
    bl SpatialRegistry_GetBase
    lis 4, 0x4854
    mr 5, 30
    addi 4, 4, 0x4d4b
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80323EE0:
    cmpwi 29, 0x0
    .4byte 0x41820068 # beq .L_80323F4C
    .4byte 0xC022EBD8 # lfs f1, lbl_80541B78@sda21(r0)
    lfs 0, 0x20(1)
    fcmpu cr0, 1, 0
    .4byte 0x41820030 # beq .L_80323F24
    lfs 2, 0x3c(31)
    .4byte 0xC002EBE8 # lfs f0, lbl_80541B88@sda21(r0)
    .4byte 0xC022EBEC # lfs f1, lbl_80541B8C@sda21(r0)
    fmuls 2, 2, 0
    .4byte 0xC002EBF0 # lfs f0, lbl_80541B90@sda21(r0)
    stfs 2, 0x3c(31)
    lfs 2, 0x40(31)
    fmuls 1, 2, 1
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x4800002C # b .L_80323F4C
L_80323F24:
    lfs 2, 0x3c(31)
    .4byte 0xC002EBEC # lfs f0, lbl_80541B8C@sda21(r0)
    .4byte 0xC022EBE8 # lfs f1, lbl_80541B88@sda21(r0)
    fmuls 2, 2, 0
    .4byte 0xC002EBF0 # lfs f0, lbl_80541B90@sda21(r0)
    stfs 2, 0x3c(31)
    lfs 2, 0x40(31)
    fmuls 1, 2, 1
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_80323F4C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x27
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x64
    li 3, 0x0
    stw 0, 0x23c(31)
    li 0, 0x1
    stw 3, 0x108(31)
    stw 0, 0x230(31)
    .4byte 0x48000578 # b .L_803244F0
L_80323F7C:
    lfs 1, 0x14(31)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408002A8 # bge .L_80324230
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    lwz 4, 0x4(31)
    clrlwi 29, 3, 16
    addi 3, 31, 0xc
    bl fn_80226850
    cmpwi 29, 0xc
    .4byte 0x4182000C # beq .L_80323FB8
    cmpwi 29, 0x3
    .4byte 0x40820010 # bne .L_80323FC4
L_80323FB8:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000530 # b .L_803244F0
L_80323FC4:
    cmpwi 29, 0xe
    .4byte 0x408200C8 # bne .L_80324090
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_80323FFC
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x61
    li 29, 0x2a9
    li 30, 0x2aa
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800003C # b .L_80324034
L_80323FFC:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80324028
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x42
    li 29, 0x45e
    li 30, 0x45f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_80324034
L_80324028:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480004C0 # b .L_803244F0
L_80324034:
    lwz 3, 0x4(31)
    mr 5, 29
    .4byte 0xC022EBF4 # lfs f1, lbl_80541B94@sda21(r0)
    addi 4, 31, 0xc
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    mr 5, 30
    .4byte 0xC022EBF4 # lfs f1, lbl_80541B94@sda21(r0)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000464 # b .L_803244F0
L_80324090:
    cmpwi 29, 0xd
    .4byte 0x4182000C # beq .L_803240A0
    cmpwi 29, 0x39
    .4byte 0x4082004C # bne .L_803240E8
L_803240A0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EBF4 # lfs f1, lbl_80541B94@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800040C # b .L_803244F0
L_803240E8:
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    li 4, 0x64
    .4byte 0xC042EBF8 # lfs f2, lbl_80541B98@sda21(r0)
    li 0, 0x0
    stfs 0, 0x14(31)
    addi 3, 31, 0xc
    .4byte 0xC002EBFC # lfs f0, lbl_80541B9C@sda21(r0)
    lfs 1, 0x3c(31)
    fmuls 1, 1, 2
    stfs 1, 0x3c(31)
    lfs 1, 0x40(31)
    fmuls 1, 1, 2
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    stw 4, 0x23c(31)
    stw 0, 0x108(31)
    lwz 4, 0x4(31)
    bl fn_80225000
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80324154
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x74
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000078 # b .L_803241C8
L_80324154:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80224D0C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80324184
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x72
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000048 # b .L_803241C8
L_80324184:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80224A04
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_803241B4
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x73
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_803241C8
L_803241B4:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x75
    li 5, 0x0
    bl fn_801F0E34
L_803241C8:
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x40800030 # bge .L_80324200
    .4byte 0xC022EBD0 # lfs f1, lbl_80541B70@sda21(r0)
    mr 3, 30
    addi 4, 31, 0xc
    li 5, 0x339
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000028 # b .L_80324224
L_80324200:
    bl SpatialRegistry_GetBase
    lis 4, 0x4854
    mr 5, 30
    addi 4, 4, 0x4d4b
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80324224:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480002C4 # b .L_803244F0
L_80324230:
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80324294
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80324270
    lfs 1, 0x44(31)
    .4byte 0xC802EC00 # lfd f0, lbl_80541BA0@sda21(r0)
    fsub 0, 1, 0
    frsp 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000028 # b .L_80324294
L_80324270:
    lfs 2, 0x270(31)
    .4byte 0xC022EC08 # lfs f1, lbl_80541BA8@sda21(r0)
    .4byte 0xC802EC00 # lfd f0, lbl_80541BA0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x270(31)
    lfs 1, 0x40(31)
    fadd 0, 1, 0
    frsp 0, 0
    stfs 0, 0x40(31)
L_80324294:
    lfs 3, 0x60(31)
    stfs 3, 0x10(1)
    lfs 2, 0x64(31)
    stfs 2, 0x14(1)
    lfs 1, 0x68(31)
    stfs 1, 0x18(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x1c(1)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x14(1)
    stfs 3, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lbz 0, 0x26a(31)
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_803243C0
    li 29, 0x0
L_803242EC:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_803243B4
    lwz 4, 0x90(31)
    mr 3, 29
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x408200A8 # bne .L_803243B4
    lwz 5, 0x4(31)
    mr 3, 29
    addi 4, 1, 0x10
    bl fn_8023B190
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_803243B4
    lfs 3, 0x18(1)
    lfs 1, 0x10(1)
    lfs 4, 0x1c(1)
    lfs 0, 0x14(1)
    fsubs 1, 1, 3
    .4byte 0xC042EBF8 # lfs f2, lbl_80541B98@sda21(r0)
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80324390
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80324390
    mr 3, 29
    addi 5, 1, 0x8
    li 4, 0x1
    li 6, 0x1
    bl fn_80238548
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000020 # b .L_803243AC
L_80324390:
    mr 3, 29
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0xb
    bl fn_80238548
    li 0, 0x0
    stb 0, 0x11c(31)
L_803243AC:
    li 0, 0x1
    stb 0, 0x26a(31)
L_803243B4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF30 # blt .L_803242EC
L_803243C0:
    lwz 0, 0x24c(31)
    lwz 3, 0x25c(31)
    cmpw 0, 3
    .4byte 0x41820008 # beq .L_803243D4
    stw 3, 0x24c(31)
L_803243D4:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800114 # bge .L_803244F0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x48000100 # b .L_803244F0
L_803243F4:
    .4byte 0xC022EBD8 # lfs f1, lbl_80541B78@sda21(r0)
    addi 3, 31, 0x234
    .4byte 0xC042EBF8 # lfs f2, lbl_80541B98@sda21(r0)
    .4byte 0xC062EC0C # lfs f3, lbl_80541BAC@sda21(r0)
    bl fn_801F71A4
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_803244A0
    lwz 3, 0x26c(31)
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_80324454
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    lfs 0, 0x234(31)
    lwz 3, 0x26c(31)
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    stb 0, 0xbb(3)
    .4byte 0x48000050 # b .L_803244A0
L_80324454:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EBD0 # lfs f1, lbl_80541B70@sda21(r0)
    li 5, 0x35d
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x26c(31)
    lwz 3, 0x26c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803244A0
    lfs 0, 0x234(31)
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    stb 0, 0xbb(3)
L_803244A0:
    lfs 1, 0x44(31)
    .4byte 0xC002EBEC # lfs f0, lbl_80541B8C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    lbz 0, 0x278(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803244CC
    lfs 1, 0x14(31)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800020 # blt .L_803244E8
L_803244CC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_803244E8
    lfs 1, 0x234(31)
    .4byte 0xC002EBD4 # lfs f0, lbl_80541B74@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_803244F0
L_803244E8:
    li 0, 0x0
    stb 0, 0x11c(31)
L_803244F0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80324504
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80324504:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80324518
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80324518:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8032452C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8032452C:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80324540
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80324540:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80324554
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80324554:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80324570:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820034 # beq .L_803245C0
    lis 3, lbl_804AB3A8@ha
    addi 0, 3, lbl_804AB3A8@l
    stw 0, 0x0(30)
    lwz 3, 0x26c(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803245C0
    mr 3, 30
    bl dtor_80084580
L_803245C0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803245DC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 3
    stw 28, 0x10(1)
    .4byte 0x80C2EBC8 # lwz r6, lbl_80541B68@sda21(r0)
    .4byte 0x8002EBCC # lwz r0, lbl_80541B6C@sda21(r0)
    stw 6, 0x8(1)
    stw 0, 0xc(1)
    lwz 28, 0x198(3)
    bl fn_8020D58C
    lbz 0, 0x1(3)
    mr 8, 3
    mr 4, 31
    mr 5, 30
    mulli 3, 0, 0x784
    mr 6, 28
    addi 7, 1, 0x8
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80324658
    li 3, 0x1
    .4byte 0x48000450 # b .L_80324AA4
L_80324658:
    mr 3, 30
    mr 4, 31
    bl fn_8022461C
    clrlwi 28, 3, 16
    mr 3, 30
    mr 4, 31
    bl fn_80226850
    subi 0, 28, 0x10
    clrlwi 4, 3, 16
    cmplwi 0, 0x7
    .4byte 0x40810014 # ble .L_80324694
    cmpwi 4, 0x140
    .4byte 0x41800064 # blt .L_803246EC
    cmpwi 4, 0x15f
    .4byte 0x4181005C # bgt .L_803246EC
L_80324694:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_803246C0
    li 4, 0x1
    li 0, 0x6
    stw 4, 0x250(29)
    li 3, 0x0
    stw 0, 0x260(29)
    stb 4, 0x268(29)
    stb 4, 0x269(29)
    .4byte 0x480003E8 # b .L_80324AA4
L_803246C0:
    lhz 0, 0x94(29)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_803246EC
    li 0, 0x1
    stb 0, 0x268(29)
    lbz 3, 0x268(29)
    lbz 0, 0x269(29)
    cmplw 3, 0
    .4byte 0x4182000C # beq .L_803246EC
    li 3, 0x1
    .4byte 0x480003BC # b .L_80324AA4
L_803246EC:
    lhz 0, 0x94(29)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8032470C
    lwz 0, 0x250(29)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032470C
    li 3, 0x0
    .4byte 0x4800039C # b .L_80324AA4
L_8032470C:
    subi 0, 4, 0x230
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80324720
    cmpwi 4, 0x234
    .4byte 0x40820014 # bne .L_80324730
L_80324720:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x250(29)
    .4byte 0x48000378 # b .L_80324AA4
L_80324730:
    cmpwi 28, 0x0
    .4byte 0x41820340 # beq .L_80324A74
    cmpwi 28, 0x4
    .4byte 0x41820338 # beq .L_80324A74
    cmpwi 28, 0x5
    .4byte 0x41820330 # beq .L_80324A74
    cmpwi 28, 0x6
    .4byte 0x41820328 # beq .L_80324A74
    cmpwi 28, 0x7
    .4byte 0x41820320 # beq .L_80324A74
    cmpwi 28, 0x2
    .4byte 0x41820318 # beq .L_80324A74
    cmpwi 28, 0x3
    .4byte 0x41820310 # beq .L_80324A74
    cmpwi 28, 0x50
    .4byte 0x41820308 # beq .L_80324A74
    cmpwi 28, 0xe
    .4byte 0x41820300 # beq .L_80324A74
    cmpwi 28, 0xc
    .4byte 0x418202F8 # beq .L_80324A74
    cmpwi 28, 0x27
    .4byte 0x418202F0 # beq .L_80324A74
    cmpwi 28, 0x28
    .4byte 0x418202E8 # beq .L_80324A74
    cmpwi 28, 0x29
    .4byte 0x418202E0 # beq .L_80324A74
    cmpwi 28, 0x2a
    .4byte 0x418202D8 # beq .L_80324A74
    cmpwi 28, 0x2b
    .4byte 0x418202D0 # beq .L_80324A74
    cmpwi 28, 0x2c
    .4byte 0x418202C8 # beq .L_80324A74
    cmpwi 28, 0x2d
    .4byte 0x418202C0 # beq .L_80324A74
    cmpwi 28, 0x2e
    .4byte 0x418202B8 # beq .L_80324A74
    cmpwi 28, 0x2f
    .4byte 0x418202B0 # beq .L_80324A74
    cmpwi 28, 0x20
    .4byte 0x418202A8 # beq .L_80324A74
    cmpwi 28, 0xd
    .4byte 0x418202A0 # beq .L_80324A74
    cmpwi 28, 0x23
    .4byte 0x41820298 # beq .L_80324A74
    cmpwi 28, 0x39
    .4byte 0x41820290 # beq .L_80324A74
    cmpwi 28, 0x3a
    .4byte 0x41820288 # beq .L_80324A74
    cmpwi 28, 0x3b
    .4byte 0x41820280 # beq .L_80324A74
    cmpwi 28, 0x4c
    .4byte 0x41820278 # beq .L_80324A74
    cmpwi 28, 0x4d
    .4byte 0x41820270 # beq .L_80324A74
    cmpwi 28, 0x4e
    .4byte 0x41820268 # beq .L_80324A74
    cmpwi 28, 0x4f
    .4byte 0x41820260 # beq .L_80324A74
    cmpwi 28, 0x24
    .4byte 0x41820258 # beq .L_80324A74
    subi 0, 28, 0x7
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80324834
    cmpwi 28, 0xa
    .4byte 0x4082004C # bne .L_8032487C
L_80324834:
    lwz 0, 0x98(29)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80324848
    li 3, 0x0
    .4byte 0x48000260 # b .L_80324AA4
L_80324848:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80324874
    lwz 3, 0x264(29)
    addi 0, 3, 0x1
    stw 0, 0x264(29)
    lwz 0, 0x264(29)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_80324874
    li 3, 0x1
    .4byte 0x48000234 # b .L_80324AA4
L_80324874:
    li 3, 0x0
    .4byte 0x4800022C # b .L_80324AA4
L_8032487C:
    cmpwi 28, 0x6
    .4byte 0x41820014 # beq .L_80324894
    cmpwi 28, 0x9
    .4byte 0x4182000C # beq .L_80324894
    cmpwi 28, 0xb
    .4byte 0x4082004C # bne .L_803248DC
L_80324894:
    lwz 0, 0x98(29)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803248A8
    li 3, 0x0
    .4byte 0x48000200 # b .L_80324AA4
L_803248A8:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_803248D4
    lwz 3, 0x264(29)
    addi 0, 3, 0x1
    stw 0, 0x264(29)
    lwz 0, 0x264(29)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_803248D4
    li 3, 0x1
    .4byte 0x480001D4 # b .L_80324AA4
L_803248D4:
    li 3, 0x0
    .4byte 0x480001CC # b .L_80324AA4
L_803248DC:
    cmpwi 28, 0x4
    .4byte 0x4082004C # bne .L_8032492C
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_803248F8
    li 3, 0x0
    .4byte 0x480001B0 # b .L_80324AA4
L_803248F8:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80324924
    lwz 3, 0x264(29)
    addi 0, 3, 0x1
    stw 0, 0x264(29)
    lwz 0, 0x264(29)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_80324924
    li 3, 0x1
    .4byte 0x48000184 # b .L_80324AA4
L_80324924:
    li 3, 0x0
    .4byte 0x4800017C # b .L_80324AA4
L_8032492C:
    cmpwi 28, 0x5
    .4byte 0x4082004C # bne .L_8032497C
    lwz 0, 0x98(29)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80324948
    li 3, 0x0
    .4byte 0x48000160 # b .L_80324AA4
L_80324948:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80324974
    lwz 3, 0x264(29)
    addi 0, 3, 0x1
    stw 0, 0x264(29)
    lwz 0, 0x264(29)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_80324974
    li 3, 0x1
    .4byte 0x48000134 # b .L_80324AA4
L_80324974:
    li 3, 0x0
    .4byte 0x4800012C # b .L_80324AA4
L_8032497C:
    mr 3, 30
    mr 4, 31
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3a
    .4byte 0x4182001C # beq .L_803249AC
    mr 3, 30
    mr 4, 31
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3d
    .4byte 0x40820014 # bne .L_803249BC
L_803249AC:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x250(29)
    .4byte 0x480000EC # b .L_80324AA4
L_803249BC:
    cmpwi 28, 0x25
    .4byte 0x40820038 # bne .L_803249F8
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_803249E8
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_803249E8
    li 3, 0x1
    .4byte 0x480000C0 # b .L_80324AA4
L_803249E8:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x250(29)
    .4byte 0x480000B0 # b .L_80324AA4
L_803249F8:
    cmpwi 28, 0x26
    .4byte 0x40820038 # bne .L_80324A34
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80324A24
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80324A24
    li 3, 0x1
    .4byte 0x48000084 # b .L_80324AA4
L_80324A24:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x250(29)
    .4byte 0x48000074 # b .L_80324AA4
L_80324A34:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80324A60
    cmpwi 28, 0x22
    .4byte 0x40820014 # bne .L_80324A58
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80324A60
L_80324A58:
    li 3, 0x1
    .4byte 0x48000048 # b .L_80324AA4
L_80324A60:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80324A74
    li 3, 0x0
    .4byte 0x48000034 # b .L_80324AA4
L_80324A74:
    lwz 0, 0x250(29)
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_80324AA0
    li 0, 0x1
    stb 0, 0x268(29)
    lwz 0, 0x260(29)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_80324AA0
    li 0, 0x0
    stw 0, 0x260(29)
    stw 0, 0x250(29)
L_80324AA0:
    li 3, 0x0
L_80324AA4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80324AC4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022EC10 # lfs f1, lbl_80541BB0@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC002EBF0 # lfs f0, lbl_80541B90@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 3, 0x90(3)
    extrwi 3, 3, 3, 25
    stw 3, 0x98(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 2, 22
    sth 3, 0x94(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 30
    stw 3, 0x90(31)
    stb 0, 0x268(31)
    stb 0, 0x269(31)
    stw 0, 0x26c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    stw 0, 0x254(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    lwz 0, 0x98(31)
    cmplwi 0, 0x7
    .4byte 0x418100E0 # bgt .L_80324C30
    lis 3, jumptable_804AB41C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB41C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022EBD4 # lfs f1, lbl_80541B74@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480000B0 # b .L_80324C30
    .4byte 0xC022EBDC # lfs f1, lbl_80541B7C@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000098 # b .L_80324C30
    .4byte 0xC022EBD8 # lfs f1, lbl_80541B78@sda21(r0)
    .4byte 0xC002EBD4 # lfs f0, lbl_80541B74@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000080 # b .L_80324C30
    .4byte 0xC022EBD8 # lfs f1, lbl_80541B78@sda21(r0)
    .4byte 0xC002EBDC # lfs f0, lbl_80541B7C@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000068 # b .L_80324C30
    .4byte 0xC022EBE0 # lfs f1, lbl_80541B80@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000050 # b .L_80324C30
    .4byte 0xC002EBE4 # lfs f0, lbl_80541B84@sda21(r0)
    .4byte 0xC022EBE0 # lfs f1, lbl_80541B80@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000034 # b .L_80324C30
    .4byte 0xC002EBE0 # lfs f0, lbl_80541B80@sda21(r0)
    .4byte 0xC022EBE4 # lfs f1, lbl_80541B84@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000018 # b .L_80324C30
    .4byte 0xC022EBE4 # lfs f1, lbl_80541B84@sda21(r0)
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_80324C30:
    .4byte 0xC022EC14 # lfs f1, lbl_80541BB4@sda21(r0)
    li 0, 0x1f4
    .4byte 0xC002EBD8 # lfs f0, lbl_80541B78@sda21(r0)
    stfs 1, 0x234(31)
    stw 0, 0x240(31)
    stfs 0, 0x274(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    stb 0, 0x278(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x40820108 # bne .L_80324D70
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_80324CD8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022EBD0 # lfs f1, lbl_80541B70@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC062EC1C # lfs f3, lbl_80541BBC@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC002EC18 # lfs f0, lbl_80541BB8@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fmadds 0, 3, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x480000DC # b .L_80324DB0
L_80324CD8:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC082EBD0 # lfs f4, lbl_80541B70@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC0A2EC1C # lfs f5, lbl_80541BBC@sda21(r0)
    mullw 3, 0, 4
    .4byte 0xC022EC18 # lfs f1, lbl_80541BB8@sda21(r0)
    .4byte 0xC042EC24 # lfs f2, lbl_80541BC4@sda21(r0)
    .4byte 0xC002EC20 # lfs f0, lbl_80541BC0@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 3, 0xc(1)
    fsubs 3, 3, 4
    fmadds 1, 5, 3, 1
    stfs 1, 0x270(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 3, 0x40(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 4
    fmadds 0, 2, 1, 0
    fsubs 0, 3, 0
    stfs 0, 0x40(31)
    .4byte 0x48000044 # b .L_80324DB0
L_80324D70:
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_80324DB0
    lwz 0, 0x26c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80324DB0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EBD0 # lfs f1, lbl_80541B70@sda21(r0)
    li 5, 0x35d
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x26c(31)
L_80324DB0:
    li 3, 0x0
    li 0, 0x2710
    stw 3, 0x25c(31)
    stw 3, 0x260(31)
    stw 3, 0x264(31)
    stw 0, 0x108(31)
    stw 3, 0x230(31)
    stb 3, 0x26a(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80324DE8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805088F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805088F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324E38
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
L_80324E38:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324E70
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
L_80324E70:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324EA8
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
L_80324EA8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324EE0
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
L_80324EE0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324F18
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
L_80324F18:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324F50
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
L_80324F50:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324F88
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
L_80324F88:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324FC0
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
L_80324FC0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80324FF8
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
L_80324FF8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8032500C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80325050
    lis 5, lbl_804AB464@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB464@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80325050
    mr 3, 30
    bl dtor_80084580
L_80325050:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8032506C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_80325178
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    addi 4, 1, 0x38
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820458 # bne .L_80325530
    .4byte 0xC022EC28 # lfs f1, lbl_80541BC8@sda21(r0)
    lfs 0, 0x38(1)
    fcmpu cr0, 1, 0
    .4byte 0x4182004C # beq .L_80325134
    lbz 0, 0x275(31)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_80325124
    lfs 1, 0x3c(31)
    li 0, 0x0
    .4byte 0xC802EC38 # lfd f0, lbl_80541BD8@sda21(r0)
    fmul 0, 1, 0
    frsp 0, 0
    stfs 0, 0x3c(31)
    lfs 0, 0x3c(31)
    fneg 0, 0
    stfs 0, 0x40(31)
    stb 0, 0x275(31)
    .4byte 0x48000410 # b .L_80325530
L_80325124:
    lfs 0, 0x3c(31)
    fneg 0, 0
    stfs 0, 0x3c(31)
    .4byte 0x48000400 # b .L_80325530
L_80325134:
    lbz 0, 0x275(31)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80325168
    lfs 1, 0x40(31)
    li 0, 0x0
    .4byte 0xC802EC38 # lfd f0, lbl_80541BD8@sda21(r0)
    fmul 0, 1, 0
    frsp 0, 0
    stfs 0, 0x40(31)
    lfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stb 0, 0x275(31)
    .4byte 0x480003CC # b .L_80325530
L_80325168:
    lfs 0, 0x40(31)
    fneg 0, 0
    stfs 0, 0x40(31)
    .4byte 0x480003BC # b .L_80325530
L_80325178:
    lbz 0, 0x276(31)
    cmplwi 0, 0x1
    .4byte 0x408201EC # bne .L_8032536C
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x408203A4 # bne .L_80325530
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    mr 3, 31
    lfs 1, 0x3c(31)
    li 4, 0x0
    stfs 0, 0x30(1)
    li 5, 0x0
    psq_l 2, 0xc(31), 0, 0
    stfs 1, 0x2c(1)
    psq_l 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    ps_add 1, 2, 1
    psq_l 0, 0x34(1), 1, 0
    psq_st 1, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80325240
    lfs 2, 0x234(31)
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40810028 # ble .L_80325210
    lfs 1, 0x3c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80325204
    fneg 0, 1
    stfs 0, 0x3c(31)
    .4byte 0x48000030 # b .L_80325230
L_80325204:
    fneg 0, 2
    stfs 0, 0x234(31)
    .4byte 0x48000024 # b .L_80325230
L_80325210:
    lfs 1, 0x3c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80325228
    fneg 0, 2
    stfs 0, 0x234(31)
    .4byte 0x4800000C # b .L_80325230
L_80325228:
    fneg 0, 1
    stfs 0, 0x3c(31)
L_80325230:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x40(31)
    stb 0, 0x276(31)
L_80325240:
    lbz 0, 0x276(31)
    cmplwi 0, 0x1
    .4byte 0x408202E8 # bne .L_80325530
    lfs 2, 0x40(31)
    mr 3, 31
    lfs 1, 0x234(31)
    li 4, 0x0
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    li 5, 0x0
    fadds 1, 2, 1
    stfs 0, 0x28(1)
    stfs 1, 0x40(31)
    psq_l 2, 0x28(1), 1, 0
    lfs 1, 0x40(31)
    stfs 0, 0x20(1)
    psq_l 3, 0xc(31), 0, 0
    stfs 1, 0x24(1)
    psq_l 0, 0x20(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 0, 0x14(31), 1, 0
    ps_add 0, 0, 2
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_803252BC
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x40(31)
    stb 0, 0x277(31)
    .4byte 0x48000278 # b .L_80325530
L_803252BC:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4181026C # bgt .L_80325530
    lbz 0, 0x277(31)
    cmplwi 0, 0x0
    .4byte 0x40820260 # bne .L_80325530
    lfs 2, 0x3c(31)
    .4byte 0xC022EC28 # lfs f1, lbl_80541BC8@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800044 # bge .L_80325324
    lfs 0, 0x234(31)
    fcmpo cr0, 0, 1
    .4byte 0x4081000C # ble .L_803252F8
    fneg 0, 2
    stfs 0, 0x3c(31)
L_803252F8:
    .4byte 0xC002EC40 # lfs f0, lbl_80541BE0@sda21(r0)
    stfs 0, 0x40(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80325318
    .4byte 0xC002EC44 # lfs f0, lbl_80541BE4@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x4800004C # b .L_80325360
L_80325318:
    .4byte 0xC002EC48 # lfs f0, lbl_80541BE8@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x48000040 # b .L_80325360
L_80325324:
    lfs 0, 0x234(31)
    fcmpo cr0, 0, 1
    .4byte 0x4080000C # bge .L_80325338
    fneg 0, 2
    stfs 0, 0x3c(31)
L_80325338:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    stfs 0, 0x40(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80325358
    .4byte 0xC002EC4C # lfs f0, lbl_80541BEC@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x4800000C # b .L_80325360
L_80325358:
    .4byte 0xC002EC50 # lfs f0, lbl_80541BF0@sda21(r0)
    stfs 0, 0x234(31)
L_80325360:
    li 0, 0x0
    stb 0, 0x276(31)
    .4byte 0x480001C8 # b .L_80325530
L_8032536C:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x408201BC # bne .L_80325530
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    mr 3, 31
    lfs 1, 0x3c(31)
    li 4, 0x0
    stfs 0, 0x14(1)
    li 5, 0x0
    psq_l 2, 0xc(31), 0, 0
    stfs 1, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    ps_add 1, 2, 1
    psq_l 0, 0x1c(1), 1, 0
    psq_st 1, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80325428
    lfs 2, 0x234(31)
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40810028 # ble .L_803253F8
    lfs 1, 0x3c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_803253EC
    fneg 0, 1
    stfs 0, 0x3c(31)
    .4byte 0x48000030 # b .L_80325418
L_803253EC:
    fneg 0, 2
    stfs 0, 0x234(31)
    .4byte 0x48000024 # b .L_80325418
L_803253F8:
    lfs 1, 0x3c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80325410
    fneg 0, 2
    stfs 0, 0x234(31)
    .4byte 0x4800000C # b .L_80325418
L_80325410:
    fneg 0, 1
    stfs 0, 0x3c(31)
L_80325418:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    li 0, 0x1
    stfs 0, 0x40(31)
    stb 0, 0x276(31)
L_80325428:
    lbz 0, 0x276(31)
    cmplwi 0, 0x0
    .4byte 0x40820100 # bne .L_80325530
    lfs 2, 0x40(31)
    mr 3, 31
    lfs 1, 0x234(31)
    li 4, 0x0
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    li 5, 0x0
    fadds 1, 2, 1
    stfs 0, 0x10(1)
    stfs 1, 0x40(31)
    psq_l 2, 0x10(1), 1, 0
    lfs 1, 0x40(31)
    stfs 0, 0xc(1)
    psq_l 3, 0xc(31), 0, 0
    stfs 1, 0x8(1)
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 0, 0x14(31), 1, 0
    ps_add 0, 0, 2
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8032549C
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    stfs 0, 0x40(31)
    .4byte 0x48000098 # b .L_80325530
L_8032549C:
    lfs 2, 0x3c(31)
    .4byte 0xC022EC28 # lfs f1, lbl_80541BC8@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800044 # bge .L_803254EC
    lfs 0, 0x234(31)
    fcmpo cr0, 0, 1
    .4byte 0x4081000C # ble .L_803254C0
    fneg 0, 2
    stfs 0, 0x3c(31)
L_803254C0:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    stfs 0, 0x40(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_803254E0
    .4byte 0xC002EC44 # lfs f0, lbl_80541BE4@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x4800004C # b .L_80325528
L_803254E0:
    .4byte 0xC002EC48 # lfs f0, lbl_80541BE8@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x48000040 # b .L_80325528
L_803254EC:
    lfs 0, 0x234(31)
    fcmpo cr0, 0, 1
    .4byte 0x4080000C # bge .L_80325500
    fneg 0, 2
    stfs 0, 0x3c(31)
L_80325500:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    stfs 0, 0x40(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80325520
    .4byte 0xC002EC4C # lfs f0, lbl_80541BEC@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x4800000C # b .L_80325528
L_80325520:
    .4byte 0xC002EC50 # lfs f0, lbl_80541BF0@sda21(r0)
    stfs 0, 0x234(31)
L_80325528:
    li 0, 0x1
    stb 0, 0x276(31)
L_80325530:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80325548:
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
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803255A8
    li 3, 0x1
    .4byte 0x48000194 # b .L_80325738
L_803255A8:
    mr 3, 30
    mr 4, 29
    bl fn_8022461C
    clrlwi 31, 3, 16
    mr 3, 30
    mr 4, 29
    bl fn_80226850
    cmpwi 31, 0x20
    clrlwi 0, 3, 16
    .4byte 0x4082000C # bne .L_803255D8
    li 3, 0x1
    .4byte 0x48000164 # b .L_80325738
L_803255D8:
    cmpwi 0, 0x230
    .4byte 0x4182000C # beq .L_803255E8
    cmpwi 0, 0x231
    .4byte 0x4082000C # bne .L_803255F0
L_803255E8:
    li 3, 0x0
    .4byte 0x4800014C # b .L_80325738
L_803255F0:
    cmpwi 31, 0x0
    .4byte 0x41820140 # beq .L_80325734
    cmpwi 31, 0x4
    .4byte 0x41820138 # beq .L_80325734
    cmpwi 31, 0x5
    .4byte 0x41820130 # beq .L_80325734
    cmpwi 31, 0x6
    .4byte 0x41820128 # beq .L_80325734
    cmpwi 31, 0x7
    .4byte 0x41820120 # beq .L_80325734
    cmpwi 31, 0x2
    .4byte 0x41820118 # beq .L_80325734
    cmpwi 31, 0x50
    .4byte 0x41820110 # beq .L_80325734
    cmpwi 31, 0xe
    .4byte 0x41820108 # beq .L_80325734
    cmpwi 31, 0xc
    .4byte 0x41820100 # beq .L_80325734
    cmpwi 31, 0x27
    .4byte 0x418200F8 # beq .L_80325734
    cmpwi 31, 0x28
    .4byte 0x418200F0 # beq .L_80325734
    cmpwi 31, 0x29
    .4byte 0x418200E8 # beq .L_80325734
    cmpwi 31, 0x2a
    .4byte 0x418200E0 # beq .L_80325734
    cmpwi 31, 0x2b
    .4byte 0x418200D8 # beq .L_80325734
    cmpwi 31, 0x2c
    .4byte 0x418200D0 # beq .L_80325734
    cmpwi 31, 0x2d
    .4byte 0x418200C8 # beq .L_80325734
    cmpwi 31, 0x2e
    .4byte 0x418200C0 # beq .L_80325734
    cmpwi 31, 0x2f
    .4byte 0x418200B8 # beq .L_80325734
    cmpwi 31, 0xd
    .4byte 0x418200B0 # beq .L_80325734
    cmpwi 31, 0x39
    .4byte 0x418200A8 # beq .L_80325734
    cmpwi 31, 0x3a
    .4byte 0x418200A0 # beq .L_80325734
    cmpwi 31, 0x3b
    .4byte 0x41820098 # beq .L_80325734
    cmpwi 31, 0x4c
    .4byte 0x41820090 # beq .L_80325734
    cmpwi 31, 0x4d
    .4byte 0x41820088 # beq .L_80325734
    cmpwi 31, 0x4e
    .4byte 0x41820080 # beq .L_80325734
    cmpwi 31, 0x4f
    .4byte 0x41820078 # beq .L_80325734
    cmpwi 31, 0x24
    .4byte 0x41820070 # beq .L_80325734
    cmpwi 0, 0x3a
    .4byte 0x4082000C # bne .L_803256D8
    li 3, 0x0
    .4byte 0x48000064 # b .L_80325738
L_803256D8:
    cmpwi 31, 0x25
    .4byte 0x40820018 # bne .L_803256F4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000048 # b .L_80325738
L_803256F4:
    cmpwi 31, 0x26
    .4byte 0x4082001C # bne .L_80325714
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000028 # b .L_80325738
L_80325714:
    cmpwi 31, 0x22
    .4byte 0x40820014 # bne .L_8032572C
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80325734
L_8032572C:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80325738
L_80325734:
    li 3, 0x0
L_80325738:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80325754:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    li 0, -0x1
    mr 30, 3
    stw 0, 0x50(1)
    addi 9, 1, 0x40
    li 10, 0x0
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_803257F8
L_80325798:
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
L_803257F8:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80325798
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x50(1)
    .4byte 0xC022EC28 # lfs f1, lbl_80541BC8@sda21(r0)
    li 31, 0x0
    stw 5, 0x54(1)
    li 29, 0x7
    stw 5, 0x58(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 5, 0x5e(1)
    stb 4, 0x5f(1)
    stb 4, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 5, 0x65(1)
    stb 4, 0x66(1)
    stw 3, 0x68(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stw 6, 0x70(1)
    stw 5, 0x74(1)
    stw 0, 0x78(1)
    lfs 0, 0x14(30)
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_803258A0
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x39
    .4byte 0x40820008 # bne .L_803258A0
    li 29, 0x0
L_803258A0:
    addi 3, 1, 0x10
    bl PSMTXIdentity
    lfs 31, 0x27c(30)
    fmr 1, 31
    bl sin
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 3, 1
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    fneg 1, 30
    .4byte 0xC042EC54 # lfs f2, lbl_80541BF4@sda21(r0)
    li 0, 0x1
    addi 3, 1, 0x10
    stfs 2, 0x24(1)
    stfs 3, 0x10(1)
    stfs 30, 0x18(1)
    stfs 1, 0x30(1)
    stfs 3, 0x38(1)
    stfs 0, 0x34(1)
    stfs 0, 0x28(1)
    stfs 0, 0x20(1)
    stfs 0, 0x14(1)
    stw 3, 0x58(1)
    stb 0, 0x5d(1)
    stb 0, 0x5c(1)
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80325920
    li 0, 0x0
    stb 0, 0x5d(1)
    stb 0, 0x5c(1)
L_80325920:
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_80325958
    li 0, 0x0
    stb 0, 0x60(1)
    lwz 3, 0xc8(30)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x5d(1)
    lwz 3, 0xc8(30)
    bl fn_8023CA88
    stb 3, 0x5c(1)
    li 31, 0x1
    li 29, -0x1
L_80325958:
    lwz 0, 0x230(30)
    cmpwi 0, 0x3
    .4byte 0x4182002C # beq .L_8032598C
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    lis 3, lbl_80471870@ha
    lwz 5, 0x250(30)
    addi 4, 3, lbl_80471870@l
    fmr 2, 1
    mr 3, 30
    mr 7, 29
    addi 5, 5, 0x8c
    addi 6, 1, 0x40
    bl fn_801F06F0
L_8032598C:
    lwz 0, 0x230(30)
    cmpwi 0, 0x3
    .4byte 0x4182003C # beq .L_803259D0
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x250(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x8c
    bl fn_803075AC
    .4byte 0x48000038 # b .L_80325A04
L_803259D0:
    li 0, 0x0
    mr 10, 31
    stw 0, 0x8(1)
    addi 5, 30, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    lwz 6, 0x250(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0xe8
    bl fn_803075AC
L_80325A04:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 0, 0xb4(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_80325A30:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_80325A84
    lwz 3, 0x26c(31)
    li 5, 0x0
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820720 # bne .L_80326194
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000714 # b .L_80326194
L_80325A84:
    lfs 3, 0x60(31)
    stfs 3, 0x38(1)
    lfs 2, 0x64(31)
    stfs 2, 0x3c(1)
    lfs 1, 0x68(31)
    stfs 1, 0x40(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x44(1)
    lfs 5, 0x10(31)
    lfs 0, 0xc(31)
    fadds 2, 2, 5
    fadds 3, 3, 0
    stfs 0, 0x8(1)
    fadds 1, 1, 0
    fadds 0, 4, 5
    stfs 5, 0xc(1)
    stfs 3, 0x38(1)
    stfs 2, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_80325B20
    li 0, 0x0
    stw 0, 0x260(31)
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
    lwz 0, 0xc8(31)
    stw 0, 0x264(31)
    .4byte 0x48000008 # b .L_80325B24
L_80325B20:
    bl fn_8032506C
L_80325B24:
    lbz 0, 0x278(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80325B44
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_80325B44
    li 0, 0x12c
    stw 0, 0x23c(31)
L_80325B44:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182009C # beq .L_80325BE8
    .4byte 0x40800010 # bge .L_80325B60
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80325B6C
    .4byte 0x480003FC # b .L_80325F58
L_80325B60:
    cmpwi 0, 0x4
    .4byte 0x408003F4 # bge .L_80325F58
    .4byte 0x48000300 # b .L_80325E68
L_80325B6C:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    li 29, 0x0
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stfs 0, 0x14(31)
L_80325B84:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_80325BD8
    lwz 5, 0x4(31)
    mr 3, 29
    addi 4, 1, 0x38
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80325BD8
    lwz 4, 0x198(31)
    mr 3, 29
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80325BD8
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x258(31)
    stw 0, 0x230(31)
L_80325BD8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFA4 # blt .L_80325B84
    .4byte 0x48000374 # b .L_80325F58
L_80325BE8:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820124 # bne .L_80325D24
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_80325C48
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80325C2C
    li 3, 0x1e
    li 0, 0x1
    stw 3, 0x248(31)
    stw 0, 0x260(31)
L_80325C2C:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80325C48
    lfs 1, 0x44(31)
    .4byte 0xC002EC58 # lfs f0, lbl_80541BF8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(31)
L_80325C48:
    lfs 0, 0x14(31)
    .4byte 0xC022EC28 # lfs f1, lbl_80541BC8@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_80325C68
    lfs 0, 0x44(31)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_80325C68
    stfs 1, 0x14(31)
L_80325C68:
    .4byte 0xC022EC28 # lfs f1, lbl_80541BC8@sda21(r0)
    lfs 0, 0x14(31)
    fcmpu cr0, 1, 0
    .4byte 0x408202E4 # bne .L_80325F58
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x418102D8 # bgt .L_80325F58
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80325CAC
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_80325CAC
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_80325CC8
L_80325CAC:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 29, 3, 24
    .4byte 0x4800001C # b .L_80325CE0
L_80325CC8:
    mr 3, 31
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 29, 3, 24
L_80325CE0:
    cmpwi 29, 0x0
    .4byte 0x40810030 # ble .L_80325D14
    li 30, 0x0
L_80325CEC:
    sraw 0, 29, 30
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_80325D08
    mr 3, 30
    li 4, 0x64
    li 5, 0x0
    bl fn_80236074
L_80325D08:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_80325CEC
L_80325D14:
    mr 3, 31
    li 4, 0x5
    bl fn_801F2B20
    .4byte 0x48000238 # b .L_80325F58
L_80325D24:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4082022C # bne .L_80325F58
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_80325D68
    li 0, 0xa
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    stw 0, 0x248(31)
    li 0, 0x1
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stw 0, 0x260(31)
L_80325D68:
    lbz 0, 0x276(31)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80325D98
    lfs 1, 0x234(31)
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80325D8C
    stfs 0, 0x27c(31)
    .4byte 0x48000034 # b .L_80325DBC
L_80325D8C:
    .4byte 0xC002EC2C # lfs f0, lbl_80541BCC@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x48000028 # b .L_80325DBC
L_80325D98:
    lfs 1, 0x234(31)
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80325DB4
    .4byte 0xC002EC30 # lfs f0, lbl_80541BD0@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x4800000C # b .L_80325DBC
L_80325DB4:
    .4byte 0xC002EC34 # lfs f0, lbl_80541BD4@sda21(r0)
    stfs 0, 0x27c(31)
L_80325DBC:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41810094 # bgt .L_80325E58
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80325DF0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_80325DF0
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_80325E0C
L_80325DF0:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 30, 3, 24
    .4byte 0x4800001C # b .L_80325E24
L_80325E0C:
    mr 3, 31
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 30, 3, 24
L_80325E24:
    cmpwi 30, 0x0
    .4byte 0x40810030 # ble .L_80325E58
    li 29, 0x0
L_80325E30:
    sraw 0, 30, 29
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_80325E4C
    mr 3, 29
    li 4, 0x64
    li 5, 0x0
    bl fn_80236074
L_80325E4C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFDC # blt .L_80325E30
L_80325E58:
    mr 3, 31
    li 4, 0x5
    bl fn_801F2B20
    .4byte 0x480000F4 # b .L_80325F58
L_80325E68:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80325EA0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_80325EA0
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_80325EBC
L_80325EA0:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 30, 3, 24
    .4byte 0x4800001C # b .L_80325ED4
L_80325EBC:
    mr 3, 31
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 30, 3, 24
L_80325ED4:
    mr 3, 31
    li 4, 0x5
    bl fn_801F2B20
    cmpwi 30, 0x0
    .4byte 0x40810030 # ble .L_80325F14
    li 29, 0x0
L_80325EEC:
    sraw 0, 30, 29
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_80325F08
    mr 3, 29
    li 4, 0x64
    li 5, 0x0
    bl fn_80236074
L_80325F08:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFDC # blt .L_80325EEC
L_80325F14:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_80325F58
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x8
    .4byte 0x4081000C # ble .L_80325F40
    li 0, 0x0
    stb 0, 0x11c(31)
L_80325F40:
    lwz 0, 0x250(31)
    lis 3, lbl_804AB440@ha
    addi 3, 3, lbl_804AB440@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(31)
L_80325F58:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x408200A8 # bne .L_80326008
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4182009C # beq .L_80326008
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80325F80
    cmpwi 0, 0x2
    .4byte 0x4082008C # bne .L_80326008
L_80325F80:
    lwz 3, 0x198(31)
    addi 4, 1, 0x38
    addi 5, 1, 0x8
    li 29, 0x0
    bl Saya_ForceState3
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_80325FA0
    li 29, 0x1
L_80325FA0:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_80325FC0
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80325FC0
    li 29, 0x2
L_80325FC0:
    clrlwi. 0, 29, 24
    .4byte 0x40820010 # bne .L_80325FD4
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80326008
L_80325FD4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    addi 7, 1, 0x2c
    li 5, 0x0
    bl fn_8029EDB8
    li 0, 0x3
    stw 0, 0x230(31)
L_80326008:
    lis 3, lbl_80471860@ha
    lwz 7, 0x230(31)
    addi 6, 3, lbl_80471860@l
    lwz 5, 0x0(6)
    cmpwi 7, 0x0
    lwz 4, 0x4(6)
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    stw 5, 0x1c(1)
    stw 4, 0x20(1)
    stw 3, 0x24(1)
    stw 0, 0x28(1)
    .4byte 0x41820080 # beq .L_803260B8
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x40820074 # bne .L_803260B8
    cmpwi 7, 0x3
    .4byte 0x4182006C # beq .L_803260B8
    lwz 4, 0x23c(31)
    slwi 0, 4, 30
    srwi 3, 4, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add. 0, 0, 3
    .4byte 0x40820050 # bne .L_803260B8
    cmpwi 4, 0x64
    .4byte 0x40810014 # ble .L_80326084
    lwz 0, 0x250(31)
    xori 0, 0, 0x1
    stw 0, 0x250(31)
    .4byte 0x48000038 # b .L_803260B8
L_80326084:
    lwz 4, 0x258(31)
    addi 3, 1, 0x1c
    addi 4, 4, 0x1
    slwi 0, 4, 30
    srwi 4, 4, 31
    subf 0, 4, 0
    rotlwi 0, 0, 2
    add 0, 0, 4
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x250(31)
L_803260B8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x41820044 # beq .L_80326104
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80326104
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    addi 7, 1, 0x10
    li 5, 0x0
    bl fn_8029EDB8
    li 0, 0x3
    stw 0, 0x230(31)
L_80326104:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820088 # beq .L_80326194
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_80326194
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80326130
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80326130:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80326144
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80326144:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80326158
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80326158:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8032616C
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_8032616C:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80326180
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80326180:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80326194
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_80326194:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803261B0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    addi 7, 1, 0x8
    li 5, 0x0
    bl fn_8029EDB8
    li 0, 0x3
    stw 0, 0x230(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80326208:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC042EC28 # lfs f2, lbl_80541BC8@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC022EC5C # lfs f1, lbl_80541BFC@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC002EC60 # lfs f0, lbl_80541C00@sda21(r0)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stfs 2, 0x3c(3)
    stfs 2, 0x40(3)
    stfs 2, 0x44(3)
    stfs 2, 0x14(3)
    stw 0, 0xb0(3)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022EC64 # lfs f1, lbl_80541C04@sda21(r0)
    .4byte 0xC042EC28 # lfs f2, lbl_80541BC8@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803262A8
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_803262A8
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_803262C4
L_803262A8:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 30, 3, 24
    .4byte 0x4800001C # b .L_803262DC
L_803262C4:
    mr 3, 31
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 30, 3, 24
L_803262DC:
    li 0, 0x0
    lis 3, lbl_804AB440@ha
    stw 0, 0x250(31)
    addi 5, 3, lbl_804AB440@l
    mr 3, 31
    li 4, 0x5
    lwz 0, 0x250(31)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    stw 0, 0x238(31)
    bl fn_801F2B20
    cmpwi 30, 0x0
    .4byte 0x40810030 # ble .L_8032633C
    li 29, 0x0
L_80326314:
    sraw 0, 30, 29
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_80326330
    mr 3, 29
    li 4, 0x64
    li 5, 0x0
    bl fn_80236074
L_80326330:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFDC # blt .L_80326314
L_8032633C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 5, 0x59
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 5, 0x5a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 5, 0x5b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x39
    .4byte 0x41820014 # beq .L_803263F0
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_803263F0
    cmpwi 0, 0x3b
    .4byte 0x408200B8 # bne .L_803264A4
L_803263F0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 5, 0x4f3
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 5, 0x4f4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 5, 0x4f5
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 5, 0x4f6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
L_803264A4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803264C0:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC042EC68 # lfs f2, lbl_80541C08@sda21(r0)
    li 6, 0x0
    stw 0, 0x24(1)
    li 5, 0x2
    .4byte 0xC022EC6C # lfs f1, lbl_80541C0C@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0x5
    .4byte 0xC002EC70 # lfs f0, lbl_80541C10@sda21(r0)
    lwz 0, 0x90(31)
    addi 4, 3, 0x3308
    .4byte 0xC082EC74 # lfs f4, lbl_80541C14@sda21(r0)
    li 3, -0x1
    extrwi 0, 0, 2, 14
    .4byte 0xC062EC78 # lfs f3, lbl_80541C18@sda21(r0)
    stw 0, 0x26c(31)
    li 0, 0x1
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    .4byte 0xC042EC54 # lfs f2, lbl_80541BF4@sda21(r0)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    .4byte 0xC022EC28 # lfs f1, lbl_80541BC8@sda21(r0)
    stfs 0, 0x80(31)
    .4byte 0xC002EC7C # lfs f0, lbl_80541C1C@sda21(r0)
    stfs 4, 0x84(31)
    .4byte 0xC082EC48 # lfs f4, lbl_80541BE8@sda21(r0)
    stfs 3, 0x88(31)
    stfs 3, 0x8c(31)
    stw 6, 0x250(31)
    stw 6, 0x254(31)
    stw 6, 0x258(31)
    stw 6, 0x25c(31)
    stw 6, 0x260(31)
    stw 6, 0x264(31)
    stw 6, 0x238(31)
    stw 6, 0x23c(31)
    stw 6, 0x240(31)
    stw 6, 0x244(31)
    stw 6, 0x248(31)
    stw 6, 0x24c(31)
    stw 5, 0x108(31)
    stw 5, 0x118(31)
    stw 5, 0x114(31)
    stfs 2, 0x280(31)
    stfs 1, 0x27c(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 27
    stb 5, 0x278(31)
    stw 6, 0x268(31)
    stw 4, 0xb0(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 4, 20
    stw 4, 0x270(31)
    lwz 4, 0x90(31)
    clrlwi 4, 4, 28
    stw 4, 0x90(31)
    stw 3, 0x264(31)
    stb 6, 0x274(31)
    stb 0, 0x275(31)
    stb 0, 0x277(31)
    stfs 0, 0x234(31)
    stb 0, 0x276(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_803265D4
    .4byte 0xC082EC44 # lfs f4, lbl_80541BE4@sda21(r0)
L_803265D4:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    cmpwi 0, 0x3
    .4byte 0x41820168 # beq .L_80326748
    .4byte 0x4080001C # bge .L_80326600
    cmpwi 0, 0x1
    .4byte 0x41820054 # beq .L_80326640
    .4byte 0x40800078 # bge .L_80326668
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80326610
    .4byte 0x4800025C # b .L_80326858
L_80326600:
    cmpwi 0, 0x5
    .4byte 0x418201F0 # beq .L_803267F4
    .4byte 0x40800250 # bge .L_80326858
    .4byte 0x4800008C # b .L_80326698
L_80326610:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    lis 3, 0x7
    li 5, 0x12c
    li 4, 0x0
    stfs 0, 0x3c(31)
    addi 0, 3, 0x3308
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 5, 0x23c(31)
    stw 4, 0x230(31)
    stw 0, 0xb0(31)
    .4byte 0x4800021C # b .L_80326858
L_80326640:
    li 0, 0x12c
    lis 3, 0x7
    stw 0, 0x23c(31)
    li 5, 0xa
    li 4, 0x2
    addi 0, 3, 0x3308
    stw 5, 0x248(31)
    stw 4, 0x230(31)
    stw 0, 0xb0(31)
    .4byte 0x480001F4 # b .L_80326858
L_80326668:
    li 0, 0x12c
    lis 3, 0x7
    stw 0, 0x23c(31)
    li 0, 0xa
    li 4, 0x2
    addi 3, 3, 0x3308
    stw 0, 0x248(31)
    li 0, 0x0
    stw 4, 0x230(31)
    stw 3, 0xb0(31)
    stb 0, 0x275(31)
    .4byte 0x480001C4 # b .L_80326858
L_80326698:
    li 0, 0x12c
    lis 5, 0x7
    stw 0, 0x23c(31)
    li 0, 0x78
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    stw 0, 0x248(31)
    li 0, 0x2
    addi 5, 5, 0x3308
    addi 4, 4, 0x660d
    stw 0, 0x230(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022EC54 # lfs f1, lbl_80541BF4@sda21(r0)
    li 0, 0x0
    stw 5, 0xb0(31)
    .4byte 0xC062EC80 # lfs f3, lbl_80541C20@sda21(r0)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 4, 0x14(1)
    rlwinm 4, 4, 30, 18, 28
    lfsx 1, 3, 4
    add 3, 3, 4
    fmuls 1, 4, 1
    stfs 1, 0x3c(31)
    lfs 1, 0x4(3)
    fmuls 1, 4, 1
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    stb 0, 0x275(31)
    .4byte 0x48000114 # b .L_80326858
L_80326748:
    li 0, 0x12c
    lis 4, 0x7
    stw 0, 0x23c(31)
    li 5, 0xa
    lis 3, 0x19
    li 0, 0x2
    stw 5, 0x24c(31)
    addi 4, 4, 0x3308
    addi 3, 3, 0x660d
    .4byte 0xC002EC54 # lfs f0, lbl_80541BF4@sda21(r0)
    stw 0, 0x230(31)
    li 0, 0x0
    .4byte 0xC042EC84 # lfs f2, lbl_80541C24@sda21(r0)
    stw 4, 0xb0(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    stb 0, 0x277(31)
    oris 0, 3, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_803267D4
    stfs 4, 0x3c(31)
    .4byte 0x4800000C # b .L_803267DC
L_803267D4:
    fneg 0, 4
    stfs 0, 0x3c(31)
L_803267DC:
    .4byte 0xC002EC28 # lfs f0, lbl_80541BC8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stb 0, 0x275(31)
    .4byte 0x48000068 # b .L_80326858
L_803267F4:
    li 0, 0x12c
    lis 3, 0x7
    stw 0, 0x23c(31)
    li 4, 0x0
    li 5, 0x2
    addi 0, 3, 0x3308
    stw 4, 0x90(31)
    li 4, 0x0
    stw 5, 0x230(31)
    stw 0, 0xb0(31)
    lwz 3, 0x26c(31)
    bl fn_8023061C
    lwz 3, 0x26c(31)
    li 5, 0x0
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80326850
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_80326858
L_80326850:
    li 0, 0x1
    stw 0, 0x230(31)
L_80326858:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8032686C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805089F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805089F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803268BC
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
L_803268BC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803268F4
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
L_803268F4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032692C
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
L_8032692C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80326964
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
L_80326964:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032699C
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
L_8032699C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803269D4
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
L_803269D4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80326A0C
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
L_80326A0C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80326A44
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
L_80326A44:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80326A7C
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
L_80326A7C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80326A90:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x40
    stw 31, 0x8c(1)
    mr 31, 3
    stw 0, 0x50(1)
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_80326B1C
L_80326ABC:
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
L_80326B1C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80326ABC
    li 6, 0x0
    .4byte 0xC022EC88 # lfs f1, lbl_80541C28@sda21(r0)
    .4byte 0xC002EC8C # lfs f0, lbl_80541C2C@sda21(r0)
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    stw 6, 0x58(1)
    addi 0, 1, 0x10
    stw 7, 0x50(1)
    stw 6, 0x54(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 6, 0x5e(1)
    stb 5, 0x5f(1)
    stb 5, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 6, 0x63(1)
    stb 6, 0x64(1)
    stb 6, 0x65(1)
    stb 5, 0x66(1)
    stw 4, 0x68(1)
    stb 5, 0x6c(1)
    stb 6, 0x6d(1)
    stb 6, 0x6e(1)
    stw 7, 0x70(1)
    stw 6, 0x74(1)
    stw 3, 0x78(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x3c(1)
    stfs 0, 0x10(1)
    stfs 1, 0x14(1)
    stfs 1, 0x18(1)
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    stfs 1, 0x30(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    stw 0, 0x58(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x100
    .4byte 0x4080000C # bge .L_80326BE4
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820068 # bne .L_80326C48
L_80326BE4:
    li 0, 0x1
    .4byte 0xC022EC90 # lfs f1, lbl_80541C30@sda21(r0)
    stb 0, 0x6d(1)
    lis 3, lbl_80471888@ha
    addi 4, 3, lbl_80471888@l
    fmr 2, 1
    lwz 5, 0x250(31)
    mr 3, 31
    addi 6, 1, 0x40
    li 7, 0x0
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
    lwz 6, 0x250(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x5e
    bl fn_803075AC
L_80326C48:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80326C5C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 31, 3
    .4byte 0xC042EC94 # lfs f2, lbl_80541C34@sda21(r0)
    lfs 1, 0x258(3)
    addi 3, 31, 0x3c
    .4byte 0xC062EC98 # lfs f3, lbl_80541C38@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x25c(31)
    addi 3, 31, 0x40
    .4byte 0xC042EC94 # lfs f2, lbl_80541C34@sda21(r0)
    .4byte 0xC062EC98 # lfs f3, lbl_80541C38@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x260(31)
    addi 3, 31, 0x14
    .4byte 0xC042EC9C # lfs f2, lbl_80541C3C@sda21(r0)
    .4byte 0xC062EC98 # lfs f3, lbl_80541C38@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 3, 0x264(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80326D00
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
L_80326D00:
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80326D24
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
L_80326D24:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182027C # beq .L_80326FA8
    .4byte 0x40800398 # bge .L_803270C8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80326D40
    .4byte 0x4800038C # b .L_803270C8
L_80326D40:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820380 # bne .L_803270C8
    lwz 4, 0x244(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042ECA4 # lfs f2, lbl_80541C44@sda21(r0)
    addi 0, 4, 0x300
    .4byte 0xC002ECA0 # lfs f0, lbl_80541C40@sda21(r0)
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x260(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820090 # bne .L_80326E14
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80326DA4
    lwz 3, 0x248(31)
    addi 0, 3, 0x100
    stw 0, 0x248(31)
    .4byte 0x48000130 # b .L_80326ED0
L_80326DA4:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC022EC90 # lfs f1, lbl_80541C30@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x1
    .4byte 0xC062ECA8 # lfs f3, lbl_80541C48@sda21(r0)
    mullw 3, 4, 3
    .4byte 0xC002EC88 # lfs f0, lbl_80541C28@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x28(1)
    lwz 3, 0x2c(1)
    addi 3, 3, 0x1e
    stw 3, 0x240(31)
    stw 0, 0x24c(31)
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    .4byte 0x480000C0 # b .L_80326ED0
L_80326E14:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200B4 # bne .L_80326ED0
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC042EC90 # lfs f2, lbl_80541C30@sda21(r0)
    lwz 3, 0xb4(4)
    li 0, 0x0
    .4byte 0xC062ECAC # lfs f3, lbl_80541C4C@sda21(r0)
    mullw 3, 3, 5
    .4byte 0xC022ECB0 # lfs f1, lbl_80541C50@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(4)
    lwz 3, 0xb4(4)
    lwz 4, 0x248(31)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    add 3, 4, 3
    stw 3, 0x248(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 5
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(4)
    lwz 3, 0xb4(4)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x28
    stw 3, 0x240(31)
    stw 0, 0x24c(31)
L_80326ED0:
    lfs 4, 0x60(31)
    addi 3, 1, 0x14
    .4byte 0xC022EC88 # lfs f1, lbl_80541C28@sda21(r0)
    li 5, 0x1
    stfs 4, 0x14(1)
    lfs 3, 0x64(31)
    stfs 3, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x20(1)
    lfs 6, 0x10(31)
    lfs 5, 0xc(31)
    fadds 3, 3, 6
    fadds 4, 4, 5
    fadds 2, 2, 5
    fadds 0, 0, 6
    stfs 3, 0x18(1)
    stfs 4, 0x14(1)
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    mr. 30, 3
    .4byte 0x41800198 # blt .L_803270C8
    li 3, 0x0
    li 0, 0x1f4
    stw 3, 0x244(31)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 0, 0x234(31)
    stw 30, 0x244(31)
    lwz 29, 0x4(31)
    cmpwi 29, 0x8
    .4byte 0x4180002C # blt .L_80326F84
    bl SpatialRegistry_GetBase
    clrlwi 0, 30, 30
    lis 4, 0x5045
    mr 5, 29
    addi 6, 31, 0xc
    addi 4, 4, 0x4646
    ori 7, 0, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80326F84:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x23c(31)
    sth 3, 0x254(31)
    stw 3, 0x248(31)
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    stb 0, 0x11e(31)
    .4byte 0x48000124 # b .L_803270C8
L_80326FA8:
    lwz 3, 0x244(31)
    bl fn_8023C830
    li 0, 0x3e8
    stw 0, 0x234(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_8032702C
    lwz 3, 0x244(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    lwz 3, 0x244(31)
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
    .4byte 0xC002ECB4 # lfs f0, lbl_80541C54@sda21(r0)
    li 0, 0x5
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 3, 0x34(1)
    sth 3, 0x254(31)
    stw 0, 0x23c(31)
L_8032702C:
    lha 0, 0x254(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022ECB8 # lfs f1, lbl_80541C58@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x258(31)
    lha 0, 0x254(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x25c(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x2d0
    .4byte 0x4081005C # ble .L_803270C8
    lwz 5, 0x264(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80327098
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x264(31)
L_80327098:
    lwz 5, 0x268(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_803270C0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x268(31)
L_803270C0:
    li 0, 0x0
    stb 0, 0x11c(31)
L_803270C8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_803270FC
    li 0, 0x4
    stw 0, 0x238(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_803270FC
    li 0, 0x0
    stw 0, 0x250(31)
L_803270FC:
    li 0, 0x2
    mr 5, 31
    li 7, 0x0
    mtctr 0
L_8032710C:
    lwz 3, 0x234(5)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80327120
    subi 0, 3, 0x1
    stw 0, 0x234(5)
L_80327120:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4181005C # bgt .L_80327184
    lwz 6, 0x264(31)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_80327154
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x264(31)
L_80327154:
    lwz 6, 0x268(31)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_8032717C
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x268(31)
L_8032717C:
    li 0, 0x0
    stb 0, 0x11c(31)
L_80327184:
    lwz 3, 0x238(5)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80327198
    subi 0, 3, 0x1
    stw 0, 0x238(5)
L_80327198:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4181005C # bgt .L_803271FC
    lwz 6, 0x264(31)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_803271CC
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x264(31)
L_803271CC:
    lwz 6, 0x268(31)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_803271F4
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x268(31)
L_803271F4:
    li 0, 0x0
    stb 0, 0x11c(31)
L_803271FC:
    addi 5, 5, 0x8
    addi 7, 7, 0x1
    .4byte 0x4200FF08 # bdnz .L_8032710C
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8032722C:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002ECBC # lfs f0, lbl_80541C5C@sda21(r0)
    li 11, 0xa
    stw 0, 0x34(1)
    li 0, 0x0
    .4byte 0xC022ECC0 # lfs f1, lbl_80541C60@sda21(r0)
    li 5, 0x183
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC0A2EC88 # lfs f5, lbl_80541C28@sda21(r0)
    stw 30, 0x28(1)
    addi 12, 3, 0x660d
    li 30, 0x400
    .4byte 0xC062EC90 # lfs f3, lbl_80541C30@sda21(r0)
    stw 29, 0x24(1)
    li 29, 0x8
    .4byte 0xC082ECA8 # lfs f4, lbl_80541C48@sda21(r0)
    lis 3, 0x2
    stfs 0, 0x60(31)
    addi 4, 31, 0xc
    .4byte 0xC042ECAC # lfs f2, lbl_80541C4C@sda21(r0)
    li 6, 0x0
    stfs 0, 0x64(31)
    li 7, 0x0
    .4byte 0xC002ECC4 # lfs f0, lbl_80541C64@sda21(r0)
    li 8, 0x0
    stfs 1, 0x68(31)
    li 9, 0x0
    li 10, 0x1
    stfs 1, 0x6c(31)
    .4byte 0xC022EC8C # lfs f1, lbl_80541C2C@sda21(r0)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stw 29, 0x108(31)
    stw 0, 0x250(31)
    stfs 5, 0x258(31)
    stfs 5, 0x25c(31)
    stfs 5, 0x260(31)
    stfs 5, 0x3c(31)
    stfs 5, 0x40(31)
    stfs 5, 0x44(31)
    stw 30, 0x234(31)
    stfs 0, 0x260(31)
    stw 11, 0x23c(31)
    .4byte 0x83AD8F38 # lwz r29, lbl_8053AAF8@sda21(r0)
    lwz 11, 0xb4(29)
    mullw 11, 11, 12
    addis 11, 11, 0x3c6f
    subi 11, 11, 0xca1
    stw 11, 0xb4(29)
    lwz 11, 0xb4(29)
    srwi 11, 11, 9
    oris 11, 11, 0x3f80
    stw 11, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 11, 0x14(1)
    addi 11, 11, 0x1e
    stw 11, 0x240(31)
    .4byte 0x83AD8F38 # lwz r29, lbl_8053AAF8@sda21(r0)
    lwz 11, 0xb4(29)
    mullw 11, 11, 12
    addis 11, 11, 0x3c6f
    subi 11, 11, 0xca1
    stw 11, 0xb4(29)
    lwz 11, 0xb4(29)
    srwi 11, 11, 9
    oris 11, 11, 0x3f80
    stw 11, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 11, 0x1c(1)
    stw 11, 0x248(31)
    stw 0, 0x230(31)
    stw 3, 0xb0(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x264(31)
    addi 4, 31, 0xc
    .4byte 0xC022EC8C # lfs f1, lbl_80541C2C@sda21(r0)
    li 5, 0x184
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x268(31)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803273E0:
    lwz 4, 0x264(3)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_80327404
    lfs 0, 0xc(3)
    stfs 0, 0xa4(4)
    lfs 0, 0x10(3)
    stfs 0, 0xa8(4)
    lfs 0, 0x14(3)
    stfs 0, 0xac(4)
L_80327404:
    lwz 4, 0x268(3)
    cmplwi 4, 0x0
    beqlr
    lfs 0, 0xc(3)
    stfs 0, 0xa4(4)
    lfs 0, 0x10(3)
    stfs 0, 0xa8(4)
    lfs 0, 0x14(3)
    stfs 0, 0xac(4)
    blr

fn_8032742C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_80327484
    lis 3, lbl_804AB4C0@ha
    addi 0, 3, lbl_804AB4C0@l
    stw 0, 0x0(30)
    lwz 3, 0x264(30)
    bl fn_801EE434
    lwz 3, 0x268(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80327484
    mr 3, 30
    bl dtor_80084580
L_80327484:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803274A0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80508AF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80508AF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803274F0
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
L_803274F0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80327528
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
L_80327528:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80327560
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
L_80327560:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80327598
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
L_80327598:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803275D0
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
L_803275D0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80327608
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
L_80327608:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80327640
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
L_80327640:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80327678
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
L_80327678:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803276B0
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
L_803276B0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803276C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80327708
    lis 5, lbl_804AB528@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB528@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80327708
    mr 3, 30
    bl dtor_80084580
L_80327708:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80327724:
    stwu 1, -0x90(1)
    mflr 0
    .4byte 0xC022ECC8 # lfs f1, lbl_80541C68@sda21(r0)
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    stw 30, 0x88(1)
    lfs 0, 0x25c(3)
    fcmpu cr0, 1, 0
    .4byte 0x41820270 # beq .L_803279B8
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_8032776C
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x418201F8 # beq .L_80327960
L_8032776C:
    li 0, -0x1
    addi 9, 1, 0x40
    stw 0, 0x50(1)
    li 10, 0x0
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_803277E4
L_80327784:
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
L_803277E4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80327784
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x50(1)
    addi 3, 1, 0x10
    stw 6, 0x54(1)
    stw 6, 0x58(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 6, 0x5e(1)
    stb 5, 0x5f(1)
    stb 5, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 6, 0x63(1)
    stb 6, 0x64(1)
    stb 6, 0x65(1)
    stb 5, 0x66(1)
    stw 4, 0x68(1)
    stb 5, 0x6c(1)
    stb 6, 0x6d(1)
    stb 6, 0x6e(1)
    stw 7, 0x70(1)
    stw 6, 0x74(1)
    stw 0, 0x78(1)
    bl PSMTXIdentity
    lwz 3, 0x240(31)
    lis 0, 0x4330
    stw 0, 0x80(1)
    addi 0, 1, 0x10
    addi 3, 3, 0x1
    lfs 1, 0x25c(31)
    xoris 3, 3, 0x8000
    .4byte 0xC002ECC8 # lfs f0, lbl_80541C68@sda21(r0)
    stw 3, 0x84(1)
    .4byte 0xC862ECD0 # lfd f3, lbl_80541C70@sda21(r0)
    lfd 2, 0x80(1)
    stfs 0, 0x14(1)
    fsubs 2, 2, 3
    stfs 0, 0x18(1)
    fmuls 1, 2, 1
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 1, 0x10(1)
    stfs 1, 0x24(1)
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    stfs 1, 0x38(1)
    stw 0, 0x58(1)
    lwz 0, 0x4(31)
    lwz 3, 0x234(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x141
    .4byte 0x40800050 # bge .L_8032791C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804718D0@ha
    addi 5, 3, lbl_804718D0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022ECCC # lfs f1, lbl_80541C6C@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x40
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_8032791C:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    stw 0, 0xc(1)
    lwz 4, 0x240(31)
    lwz 6, 0x234(31)
    neg 0, 4
    lwz 3, 0x198(31)
    or 0, 0, 4
    lwz 4, 0x4(31)
    srwi 7, 0, 31
    addi 6, 6, 0x141
    bl fn_803075AC
    .4byte 0x4800005C # b .L_803279B8
L_80327960:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, lbl_804AB518@ha
    lwz 0, 0x250(31)
    lis 6, 0x5449
    lwz 3, 0xa4(3)
    addi 5, 4, lbl_804AB518@l
    slwi 0, 0, 2
    addi 4, 6, 0x4d47
    lwz 12, 0x0(3)
    lwzx 5, 5, 0
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_803279B8
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    li 6, 0x0
    lwz 3, 0x20(7)
    bl fn_802F745C
L_803279B8:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803279D0:
    stwu 1, -0x60(1)
    mflr 0
    .4byte 0xC002ECCC # lfs f0, lbl_80541C6C@sda21(r0)
    stw 0, 0x64(1)
    stmw 26, 0x48(1)
    mr 30, 3
    lfs 1, 0x25c(3)
    fcmpo cr0, 1, 0
    .4byte 0x408000C8 # bge .L_80327AB8
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_80327A80
    lbz 0, 0x25a(30)
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_80327A80
    lwz 3, 0x240(30)
    lis 0, 0x4330
    stw 0, 0x38(1)
    addi 4, 30, 0xc
    addi 0, 3, 0x1
    .4byte 0xC822ECD0 # lfd f1, lbl_80541C70@sda21(r0)
    xoris 0, 0, 0x8000
    lwz 3, 0x4(30)
    stw 0, 0x3c(1)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    lfd 0, 0x38(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    fsubs 1, 0, 1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x25a(30)
L_80327A80:
    lbz 0, 0x25a(30)
    cmplwi 0, 0x0
    .4byte 0x40820960 # bne .L_803283E8
    lfs 2, 0x25c(30)
    .4byte 0xC022ECD8 # lfs f1, lbl_80541C78@sda21(r0)
    .4byte 0xC002ECCC # lfs f0, lbl_80541C6C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x25c(30)
    lfs 1, 0x25c(30)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082093C # bne .L_803283E8
    stfs 0, 0x25c(30)
    .4byte 0x48000934 # b .L_803283E8
L_80327AB8:
    lfs 7, 0x10(30)
    li 31, 0x0
    lfs 5, 0xc(30)
    lfs 0, 0x60(30)
    .4byte 0xC082ECDC # lfs f4, lbl_80541C7C@sda21(r0)
    stfs 0, 0x24(1)
    fadds 3, 0, 5
    .4byte 0xC022ECE0 # lfs f1, lbl_80541C80@sda21(r0)
    lfs 0, 0x64(30)
    stfs 0, 0x28(1)
    fadds 2, 0, 7
    lfs 0, 0x68(30)
    stfs 0, 0x2c(1)
    fadds 0, 0, 5
    lfs 6, 0x6c(30)
    stfs 3, 0x24(1)
    fadds 5, 6, 7
    stfs 2, 0x28(1)
    lwz 4, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 3, 0x28(1)
    lwz 0, 0x2c(1)
    stw 4, 0x14(1)
    stw 3, 0x18(1)
    lfs 0, 0x14(1)
    stw 0, 0x1c(1)
    lfs 2, 0x18(1)
    fadds 3, 0, 4
    stfs 6, 0x30(1)
    lfs 0, 0x1c(1)
    fsubs 1, 2, 1
    stfs 5, 0x30(1)
    fsubs 0, 0, 4
    lwz 0, 0x30(1)
    stfs 3, 0x14(1)
    stw 0, 0x20(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80327B84
    cmplwi 0, 0x3
    .4byte 0x4082008C # bne .L_80327C0C
L_80327B84:
    li 28, 0x3
L_80327B88:
    mr 3, 28
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_80327C04
    lbz 0, 0x259(30)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80327C04
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 28
    stfs 0, 0x10(1)
    psq_st 1, 0x8(1), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(1), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x10(1), 1, 0
    bl fn_80230CFC
    mr 5, 3
    mr 3, 28
    addi 4, 1, 0x8
    li 6, 0xff
    addi 5, 5, 0x3c
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80327C04:
    subic. 28, 28, 0x1
    .4byte 0x4080FF80 # bge .L_80327B88
L_80327C0C:
    .4byte 0xC022ECE4 # lfs f1, lbl_80541C84@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80327C38
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi 31, 3, 24
L_80327C38:
    li 0, 0x0
    addi 3, 1, 0x24
    stw 0, 0x238(30)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239914
    lhz 3, 0x94(30)
    cmpwi 3, 0x2
    .4byte 0x40800010 # bge .L_80327C68
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_80327C74
    .4byte 0x4800074C # b .L_803283B0
L_80327C68:
    cmpwi 3, 0x4
    .4byte 0x40800744 # bge .L_803283B0
    .4byte 0x48000340 # b .L_80327FB0
L_80327C74:
    li 0, 0x0
    li 27, 0x0
    stb 0, 0x254(30)
    stb 0, 0x255(30)
    stb 0, 0x256(30)
    stb 0, 0x257(30)
L_80327C8C:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200F0 # beq .L_80327D88
    mr 3, 27
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x408200E0 # bne .L_80327D88
    addi 28, 27, 0x254
    lbzx 0, 30, 28
    cmplwi 0, 0x0
    .4byte 0x408200D0 # bne .L_80327D88
    lwz 5, 0x4(30)
    mr 3, 27
    .4byte 0xC022ECC8 # lfs f1, lbl_80541C68@sda21(r0)
    addi 4, 1, 0x14
    li 6, 0x0
    bl fn_8023B0F4
    stbx 3, 30, 28
    lbzx 0, 30, 28
    cmplwi 0, 0x0
    .4byte 0x418200A8 # beq .L_80327D88
    mr 3, 27
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800090 # bge .L_80327D88
    mr 3, 27
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_80327D1C
    lwz 3, 0x238(30)
    addi 0, 3, 0x1
    stw 0, 0x238(30)
    .4byte 0x48000018 # b .L_80327D30
L_80327D1C:
    mr 3, 27
    bl fn_8022E970
    lwz 0, 0x238(30)
    add 0, 0, 3
    stw 0, 0x238(30)
L_80327D30:
    li 26, 0x0
    li 29, 0x1
L_80327D38:
    addi 28, 26, 0x254
    lbzx 0, 30, 28
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80327D7C
    mr 3, 26
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x41820028 # beq .L_80327D7C
    cmpw 27, 26
    .4byte 0x41820020 # beq .L_80327D7C
    mr 3, 27
    mr 4, 26
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80327D7C
    stbx 29, 30, 28
L_80327D7C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFB4 # blt .L_80327D38
L_80327D88:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FEFC # blt .L_80327C8C
    li 26, 0x0
L_80327D98:
    addi 0, 26, 0x254
    lbzx 0, 30, 0
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80327DD4
    mr 3, 26
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80327DC8
    mr 3, 26
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80327DD4
L_80327DC8:
    lwz 3, 0x238(30)
    addi 0, 3, 0x1
    stw 0, 0x238(30)
L_80327DD4:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFBC # blt .L_80327D98
    lbz 0, 0x258(30)
    cmplwi 0, 0x1
    .4byte 0x41820600 # beq .L_803283E8
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_80327E08
    lwz 0, 0x238(30)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_80327E08
    stw 3, 0x238(30)
L_80327E08:
    lwz 4, 0x238(30)
    cmpwi 4, 0x1
    .4byte 0x408100E0 # ble .L_80327EF0
    cmpwi 31, 0x0
    .4byte 0x40820070 # bne .L_80327E88
    subi 3, 4, 0x1
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x38(1)
    .4byte 0xC842ECD0 # lfd f2, lbl_80541C70@sda21(r0)
    stw 3, 0x3c(1)
    .4byte 0xC062ECE8 # lfs f3, lbl_80541C88@sda21(r0)
    lfd 0, 0x38(1)
    lfs 1, 0x264(30)
    fsubs 2, 0, 2
    lfs 0, 0x10(30)
    fmadds 1, 3, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810038 # ble .L_80327E88
    .4byte 0xC002ECEC # lfs f0, lbl_80541C8C@sda21(r0)
    li 0, 0x1
    stfs 0, 0x40(30)
    stw 0, 0x234(30)
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x418200BC # beq .L_80327F28
    lwz 3, 0x238(30)
    lwz 0, 0x23c(30)
    cmpw 3, 0
    .4byte 0x418000AC # blt .L_80327F28
    stw 3, 0x23c(30)
    .4byte 0x480000A4 # b .L_80327F28
L_80327E88:
    cmpwi 31, 0x0
    .4byte 0x40820050 # bne .L_80327EDC
    subi 3, 4, 0x1
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x38(1)
    .4byte 0xC842ECD0 # lfd f2, lbl_80541C70@sda21(r0)
    stw 3, 0x3c(1)
    .4byte 0xC062ECE8 # lfs f3, lbl_80541C88@sda21(r0)
    lfd 0, 0x38(1)
    lfs 1, 0x264(30)
    fsubs 2, 0, 2
    lfs 0, 0x10(30)
    fmadds 1, 3, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_80327EDC
    .4byte 0xC002ECF0 # lfs f0, lbl_80541C90@sda21(r0)
    li 0, 0x0
    stfs 0, 0x40(30)
    stw 0, 0x234(30)
    .4byte 0x48000050 # b .L_80327F28
L_80327EDC:
    .4byte 0xC002ECC8 # lfs f0, lbl_80541C68@sda21(r0)
    li 0, 0x0
    stfs 0, 0x40(30)
    stw 0, 0x234(30)
    .4byte 0x4800003C # b .L_80327F28
L_80327EF0:
    .4byte 0x41810028 # bgt .L_80327F18
    lfs 1, 0x264(30)
    lfs 0, 0x10(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_80327F18
    .4byte 0xC002ECF0 # lfs f0, lbl_80541C90@sda21(r0)
    li 0, 0x0
    stfs 0, 0x40(30)
    stw 0, 0x234(30)
    .4byte 0x48000014 # b .L_80327F28
L_80327F18:
    .4byte 0xC002ECC8 # lfs f0, lbl_80541C68@sda21(r0)
    li 0, 0x0
    stfs 0, 0x40(30)
    stw 0, 0x234(30)
L_80327F28:
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x41820480 # beq .L_803283B0
    lwz 3, 0x238(30)
    cmpwi 3, 0x4
    .4byte 0x41800474 # blt .L_803283B0
    subi 3, 3, 0x1
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x38(1)
    .4byte 0xC842ECD0 # lfd f2, lbl_80541C70@sda21(r0)
    stw 3, 0x3c(1)
    .4byte 0xC062ECE8 # lfs f3, lbl_80541C88@sda21(r0)
    lfd 0, 0x38(1)
    lfs 1, 0x264(30)
    fsubs 2, 0, 2
    lfs 0, 0x10(30)
    fmadds 1, 3, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4182000C # beq .L_80327F84
    cmpwi 31, 0x0
    .4byte 0x41820430 # beq .L_803283B0
L_80327F84:
    li 0, 0x1
    .4byte 0xC002ECC8 # lfs f0, lbl_80541C68@sda21(r0)
    stb 0, 0x258(30)
    cmpwi 31, 0x0
    stfs 0, 0x40(30)
    .4byte 0x40820010 # bne .L_80327FA8
    li 0, 0x0
    stw 0, 0x234(30)
    .4byte 0x4800040C # b .L_803283B0
L_80327FA8:
    stw 0, 0x234(30)
    .4byte 0x48000404 # b .L_803283B0
L_80327FB0:
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x41820184 # beq .L_8032813C
    .4byte 0x40800014 # bge .L_80327FD0
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80327FE0
    .4byte 0x40800118 # bge .L_803280E0
    .4byte 0x480003E4 # b .L_803283B0
L_80327FD0:
    cmpwi 0, 0x4
    .4byte 0x418202FC # beq .L_803282D0
    .4byte 0x408003D8 # bge .L_803283B0
    .4byte 0x48000264 # b .L_80328240
L_80327FE0:
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x408200B8 # bne .L_803280A4
    li 26, 0x0
L_80327FF4:
    mr 3, 26
    bl fn_80233EDC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x418200A0 # beq .L_803280A4
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80328098
    mr 3, 26
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_80328098
    lwz 5, 0x4(30)
    mr 3, 26
    .4byte 0xC022ECC8 # lfs f1, lbl_80541C68@sda21(r0)
    addi 4, 1, 0x14
    li 6, 0x0
    bl fn_8023B0F4
    addi 0, 26, 0x254
    stbx 3, 30, 0
    lbzx 0, 30, 0
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_80328098
    mr 3, 26
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x28(1)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_80328098
    lwz 4, 0x238(30)
    mr 3, 26
    addi 0, 4, 0x1
    stw 0, 0x238(30)
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80328098
    lwz 3, 0x238(30)
    addi 0, 3, 0x1
    stw 0, 0x238(30)
L_80328098:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF54 # blt .L_80327FF4
L_803280A4:
    lwz 0, 0x238(30)
    cmpwi 0, 0x4
    .4byte 0x41800304 # blt .L_803283B0
    li 26, 0x0
L_803280B4:
    mr 3, 26
    bl fn_80230AD4
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFF0 # blt .L_803280B4
    li 0, 0x1
    .4byte 0xC002ECEC # lfs f0, lbl_80541C8C@sda21(r0)
    stw 0, 0x230(30)
    stb 0, 0x259(30)
    stfs 0, 0x40(30)
    .4byte 0x480002D4 # b .L_803283B0
L_803280E0:
    lfs 2, 0x10(30)
    lfs 1, 0x264(30)
    .4byte 0xC002ECF4 # lfs f0, lbl_80541C94@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408202B8 # bne .L_803283B0
    cmplwi 3, 0x2
    .4byte 0x40820010 # bne .L_80328110
    .4byte 0xC002ECCC # lfs f0, lbl_80541C6C@sda21(r0)
    stfs 0, 0x3c(30)
    .4byte 0x48000014 # b .L_80328120
L_80328110:
    cmplwi 3, 0x3
    .4byte 0x4082000C # bne .L_80328120
    .4byte 0xC002ECF8 # lfs f0, lbl_80541C98@sda21(r0)
    stfs 0, 0x3c(30)
L_80328120:
    .4byte 0xC002ECC8 # lfs f0, lbl_80541C68@sda21(r0)
    li 3, 0x2
    li 0, 0xf0
    stfs 0, 0x40(30)
    stw 3, 0x230(30)
    stw 0, 0x244(30)
    .4byte 0x48000278 # b .L_803283B0
L_8032813C:
    lwz 3, 0x244(30)
    subi 0, 3, 0x1
    stw 0, 0x244(30)
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x40820058 # bne .L_803281A8
    bl GetRoomConfigRecord
    lfs 2, 0xc(30)
    lfs 1, 0xd4(3)
    .4byte 0xC002ECFC # lfs f0, lbl_80541C9C@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810094 # ble .L_80328200
    bl GetRoomConfigRecord
    lwz 28, 0x18(3)
    bl GetRoomConfigRecord
    mr 29, 3
    bl GetRoomConfigRecord
    lwz 4, 0x14(29)
    mr 5, 28
    addi 4, 4, 0x1
    bl fn_802D9FE8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x11
    li 5, 0x0
    bl fn_80136798
    .4byte 0x4800005C # b .L_80328200
L_803281A8:
    cmplwi 0, 0x3
    .4byte 0x40820054 # bne .L_80328200
    bl GetRoomConfigRecord
    lfs 2, 0xc(30)
    lfs 1, 0xcc(3)
    .4byte 0xC002ECE4 # lfs f0, lbl_80541C84@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800038 # bge .L_80328200
    bl GetRoomConfigRecord
    lwz 28, 0x18(3)
    bl GetRoomConfigRecord
    mr 29, 3
    bl GetRoomConfigRecord
    lwz 4, 0x14(29)
    mr 5, 28
    subi 4, 4, 0x1
    bl fn_802D9FE8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x11
    li 5, 0x0
    bl fn_80136798
L_80328200:
    cmpwi 31, 0x0
    .4byte 0x40820010 # bne .L_80328214
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x408201A0 # bne .L_803283B0
L_80328214:
    psq_l 0, 0xc(30), 0, 0
    li 0, 0x3
    lfs 2, 0x14(30)
    .4byte 0xC022ECC8 # lfs f1, lbl_80541C68@sda21(r0)
    psq_st 0, 0x260(30), 0, 0
    .4byte 0xC002ECF0 # lfs f0, lbl_80541C90@sda21(r0)
    stfs 2, 0x268(30)
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stw 0, 0x230(30)
    .4byte 0x48000174 # b .L_803283B0
L_80328240:
    lfs 2, 0x264(30)
    lfs 1, 0x10(30)
    .4byte 0xC002ECF4 # lfs f0, lbl_80541C94@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820158 # bne .L_803283B0
    psq_l 2, 0xc(30), 0, 0
    li 26, 0x0
    lfs 1, 0x14(30)
    .4byte 0xC002ECC8 # lfs f0, lbl_80541C68@sda21(r0)
    psq_st 2, 0x260(30), 0, 0
    stfs 1, 0x268(30)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
L_80328280:
    mr 3, 26
    li 4, 0x0
    bl fn_80230224
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFEC # blt .L_80328280
    bl fn_80231368
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_803282B4
    li 0, 0x3
    sth 0, 0x94(30)
    .4byte 0x48000014 # b .L_803282C4
L_803282B4:
    cmplwi 0, 0x3
    .4byte 0x4082000C # bne .L_803282C4
    li 0, 0x2
    sth 0, 0x94(30)
L_803282C4:
    li 0, 0x4
    stw 0, 0x230(30)
    .4byte 0x480000E4 # b .L_803283B0
L_803282D0:
    li 26, 0x0
L_803282D4:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80328364
    mr 3, 26
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_80328364
    lwz 5, 0x4(30)
    mr 3, 26
    .4byte 0xC022ECC8 # lfs f1, lbl_80541C68@sda21(r0)
    addi 4, 1, 0x14
    li 6, 0x0
    bl fn_8023B0F4
    addi 0, 26, 0x254
    stbx 3, 30, 0
    lbzx 0, 30, 0
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_80328364
    mr 3, 26
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x28(1)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_80328364
    lwz 4, 0x238(30)
    mr 3, 26
    addi 0, 4, 0x1
    stw 0, 0x238(30)
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80328364
    lwz 3, 0x238(30)
    addi 0, 3, 0x1
    stw 0, 0x238(30)
L_80328364:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF68 # blt .L_803282D4
    lbz 3, 0x259(30)
    cmplwi 3, 0x1
    .4byte 0x4082001C # bne .L_80328394
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_80328394
    li 0, 0x0
    stb 0, 0x259(30)
    .4byte 0x48000020 # b .L_803283B0
L_80328394:
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_803283B0
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_803283B0
    li 0, 0x0
    stw 0, 0x230(30)
L_803283B0:
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_803283E8
    li 0, 0xa
    stw 0, 0x24c(30)
    lwz 3, 0x250(30)
    addi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    clrlwi 0, 0, 30
    stw 0, 0x250(30)
L_803283E8:
    lmw 26, 0x48(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803283FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lis 30, 0x4f53
    stw 29, 0x14(1)
    li 29, -0x1
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    sth 0, 0x94(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 20
    stw 0, 0x248(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 19
    stb 0, 0x25a(3)
L_80328450:
    bl SpatialRegistry_GetBase
    mr 5, 29
    addi 4, 30, 0x494e
    bl fn_801F78F4
    mr. 29, 3
    .4byte 0x41800054 # blt .L_803284B8
    lwz 0, 0x198(31)
    cmpw 29, 0
    .4byte 0x4182FFE0 # beq .L_80328450
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 4, 3
    .4byte 0x4182FFCC # beq .L_80328450
    lwz 3, 0x248(4)
    lwz 0, 0x248(31)
    cmpw 3, 0
    .4byte 0x4082FFBC # bne .L_80328450
    .4byte 0xC022ECC8 # lfs f1, lbl_80541C68@sda21(r0)
    addi 3, 4, 0xc
    lwz 4, 0x4(4)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4082FFA4 # bne .L_80328450
    li 0, 0x0
    stb 0, 0x11c(31)
L_803284B8:
    li 0, 0x2710
    .4byte 0xC022ECF4 # lfs f1, lbl_80541C94@sda21(r0)
    stw 0, 0x108(31)
    li 3, 0x0
    .4byte 0xC002ECCC # lfs f0, lbl_80541C6C@sda21(r0)
    li 0, 0xa
    lfs 2, 0x10(31)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    psq_st 2, 0x260(31), 0, 0
    stfs 1, 0x268(31)
    stw 3, 0x230(31)
    stw 3, 0x234(31)
    stw 3, 0x244(31)
    stfs 0, 0x25c(31)
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    stw 0, 0x24c(31)
    stw 3, 0x250(31)
    stb 3, 0x258(31)
    stb 3, 0x259(31)
    stb 3, 0x254(31)
    stb 3, 0x255(31)
    stb 3, 0x256(31)
    stb 3, 0x257(31)
    lbz 0, 0x25a(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80328538
    .4byte 0xC002ECC8 # lfs f0, lbl_80541C68@sda21(r0)
    stfs 0, 0x25c(31)
L_80328538:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80328578
    .4byte 0xC062ED00 # lfs f3, lbl_80541CA0@sda21(r0)
    .4byte 0xC042ED04 # lfs f2, lbl_80541CA4@sda21(r0)
    stfs 3, 0x80(31)
    .4byte 0xC022ED08 # lfs f1, lbl_80541CA8@sda21(r0)
    stfs 2, 0x84(31)
    .4byte 0xC002ED0C # lfs f0, lbl_80541CAC@sda21(r0)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800003C # b .L_803285B0
L_80328578:
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_803285B0
    .4byte 0xC062ED10 # lfs f3, lbl_80541CB0@sda21(r0)
    .4byte 0xC042ED00 # lfs f2, lbl_80541CA0@sda21(r0)
    stfs 3, 0x80(31)
    .4byte 0xC022ED14 # lfs f1, lbl_80541CB4@sda21(r0)
    stfs 2, 0x84(31)
    .4byte 0xC002ED08 # lfs f0, lbl_80541CA8@sda21(r0)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_803285B0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803285CC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80508BF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80508BF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032861C
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
L_8032861C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328654
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
L_80328654:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032868C
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
L_8032868C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803286C4
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
L_803286C4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803286FC
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
L_803286FC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328734
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
L_80328734:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032876C
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
L_8032876C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803287A4
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
L_803287A4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803287DC
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
L_803287DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803287F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80328834
    lis 5, lbl_804AB580@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB580@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80328834
    mr 3, 30
    bl dtor_80084580
L_80328834:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80328850:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804718E8@ha
    .4byte 0xC022ED18 # lfs f1, lbl_80541CB8@sda21(r0)
    stw 0, 0x14(1)
    addi 4, 4, lbl_804718E8@l
    fmr 2, 1
    lis 6, lbl_80471904@ha
    lwz 0, 0x23c(3)
    li 7, 0x0
    slwi 0, 0, 2
    lwzx 5, 4, 0
    addi 4, 6, lbl_80471904@l
    li 6, 0x0
    addi 5, 5, 0x12f
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803288A0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_80328918
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_80328918
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022ED18 # lfs f1, lbl_80541CB8@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800019C # b .L_80328AB0
L_80328918:
    lfs 5, 0x70(31)
    .4byte 0xC042ED1C # lfs f2, lbl_80541CBC@sda21(r0)
    stfs 5, 0x20(1)
    .4byte 0xC0E2ED20 # lfs f7, lbl_80541CC0@sda21(r0)
    lfs 0, 0x74(31)
    stfs 0, 0x24(1)
    lfs 4, 0x78(31)
    stfs 4, 0x28(1)
    lfs 3, 0x7c(31)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 2, 0x14(1)
    stfs 7, 0x18(1)
    stfs 7, 0x1c(1)
    lfs 8, 0x10(31)
    lfs 1, 0xc(31)
    fadds 6, 0, 8
    fadds 0, 5, 1
    stfs 1, 0x8(1)
    fadds 5, 4, 1
    fadds 4, 3, 8
    stfs 8, 0xc(1)
    fadds 3, 2, 1
    fadds 2, 2, 8
    stfs 0, 0x20(1)
    fadds 1, 7, 1
    fadds 0, 7, 8
    stfs 6, 0x24(1)
    stfs 5, 0x28(1)
    stfs 4, 0x2c(1)
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x408000D0 # bge .L_80328A78
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_803289B8
    .4byte 0x480000C4 # b .L_80328A78
L_803289B8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x10
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi 30, 3, 24
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    cmpwi 30, 0x0
    mr 30, 3
    .4byte 0x41810034 # bgt .L_80328A34
    cmpwi 30, 0x0
    .4byte 0x4080002C # bge .L_80328A34
    lwz 0, 0x9c(31)
    cmpwi 0, 0x0
    .4byte 0x40800020 # bge .L_80328A34
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    addi 5, 1, 0x8
    li 6, 0x1
    bl fn_8023BB50
    cmpwi 3, 0x0
    .4byte 0x41800048 # blt .L_80328A78
L_80328A34:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80328A54
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x80
    li 5, 0x0
    bl fn_801F0E34
L_80328A54:
    cmpwi 30, 0x0
    .4byte 0x41800010 # blt .L_80328A68
    mr 3, 30
    addi 4, 31, 0xc
    bl fn_802379E4
L_80328A68:
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x23c(31)
L_80328A78:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_80328AB0
    lwz 3, 0x198(31)
    bl fn_80239638
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x7
    .4byte 0x41800010 # blt .L_80328AB0
    li 0, 0x0
    stw 0, 0x23c(31)
    stw 0, 0x230(31)
L_80328AB0:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80328AC8:
    li 0, 0x2710
    lis 4, 0x104
    stw 0, 0x108(3)
    li 6, 0x0
    li 5, 0x2
    addi 0, 4, 0x2304
    stw 6, 0x234(3)
    .4byte 0xC0A2ED24 # lfs f5, lbl_80541CC4@sda21(r0)
    stw 6, 0x23c(3)
    .4byte 0xC082ED28 # lfs f4, lbl_80541CC8@sda21(r0)
    stw 6, 0x238(3)
    .4byte 0xC062ED2C # lfs f3, lbl_80541CCC@sda21(r0)
    stw 6, 0x230(3)
    .4byte 0xC042ED30 # lfs f2, lbl_80541CD0@sda21(r0)
    stw 5, 0x114(3)
    .4byte 0xC022ED34 # lfs f1, lbl_80541CD4@sda21(r0)
    stw 5, 0xb8(3)
    .4byte 0xC002ED38 # lfs f0, lbl_80541CD8@sda21(r0)
    stw 0, 0xb0(3)
    stfs 5, 0x80(3)
    stfs 5, 0x84(3)
    stfs 4, 0x88(3)
    stfs 4, 0x8c(3)
    stfs 3, 0x60(3)
    stfs 3, 0x64(3)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 1, 0x70(3)
    stfs 1, 0x74(3)
    stfs 0, 0x78(3)
    stfs 0, 0x7c(3)
    blr

fn_80328B48:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80508CF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80508CF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328B98
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
L_80328B98:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328BD0
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
L_80328BD0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328C08
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
L_80328C08:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328C40
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
L_80328C40:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328C78
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
L_80328C78:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328CB0
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
L_80328CB0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328CE8
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
L_80328CE8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328D20
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
L_80328D20:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80328D58
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
L_80328D58:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80328D6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80328DB0
    lis 5, lbl_804AB5D8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AB5D8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80328DB0
    mr 3, 30
    bl dtor_80084580
L_80328DB0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80328DCC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80328E38
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80471918@ha
    addi 5, 3, lbl_80471918@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022ED40 # lfs f1, lbl_80541CE0@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 6, 0x17a
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80328E38:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x17a
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80328E7C:
    stwu 1, -0x30(1)
    mflr 0
    li 4, 0x0
    li 5, 0x0
    stw 0, 0x34(1)
    li 0, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    li 28, 0x0
    lfs 5, 0x10(3)
    lfs 1, 0xc(3)
    lfs 0, 0x60(3)
    stfs 0, 0x10(1)
    fadds 3, 0, 1
    lfs 0, 0x64(3)
    stfs 0, 0x14(1)
    fadds 2, 0, 5
    lfs 0, 0x68(3)
    stfs 0, 0x18(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(3)
    fadds 0, 4, 5
    stfs 4, 0x1c(1)
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stb 0, 0x238(3)
    stb 0, 0x239(3)
    stb 0, 0x23a(3)
    stb 0, 0x23b(3)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi 30, 3, 24
    li 29, 0x0
L_80328F30:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182010C # beq .L_80329048
    mr 3, 29
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x408200FC # bne .L_80329048
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x408100BC # ble .L_80329020
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0xc(31)
    .4byte 0xC002ED44 # lfs f0, lbl_80541CE4@sda21(r0)
    lfs 2, 0x0(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4080009C # bge .L_80329020
    mr 3, 29
    bl fn_8023E724
    .4byte 0xC022ED44 # lfs f1, lbl_80541CE4@sda21(r0)
    lfs 0, 0xc(31)
    lfs 2, 0x0(3)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081007C # ble .L_80329020
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40820070 # bne .L_80329020
    cmpwi 30, 0x0
    .4byte 0x40820068 # bne .L_80329020
    lwz 5, 0x4(31)
    mr 3, 29
    addi 4, 1, 0x10
    bl fn_8023B190
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_80329020
    lfs 3, 0x18(1)
    mr 3, 29
    lfs 1, 0x10(1)
    addi 5, 1, 0x8
    lfs 4, 0x1c(1)
    li 6, 0x14
    lfs 0, 0x14(1)
    fsubs 1, 1, 3
    .4byte 0xC042ED48 # lfs f2, lbl_80541CE8@sda21(r0)
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 4, 0x114(31)
    bl fn_80238548
    clrlwi. 0, 28, 24
    .4byte 0x40820008 # bne .L_80329020
    li 28, 0x1
L_80329020:
    lwz 5, 0x4(31)
    mr 3, 29
    lwz 6, 0x198(31)
    addi 4, 1, 0x10
    bl fn_802399D8
    lwz 4, 0x198(31)
    mr 3, 29
    bl fn_80239718
    addi 0, 29, 0x238
    stbx 3, 31, 0
L_80329048:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8032909C
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0xc(31)
    .4byte 0xC002ED4C # lfs f0, lbl_80541CEC@sda21(r0)
    lfs 2, 0x0(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4080002C # bge .L_8032909C
    mr 3, 29
    bl fn_8023E724
    .4byte 0xC022ED4C # lfs f1, lbl_80541CEC@sda21(r0)
    lfs 0, 0xc(31)
    lfs 2, 0x0(3)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081000C # ble .L_8032909C
    li 0, 0x1
    stw 0, 0x230(31)
L_8032909C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE8C # blt .L_80328F30
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820078 # beq .L_80329128
    .4byte 0x40800014 # bge .L_803290C8
    cmpwi 0, 0x0
    .4byte 0x418200B0 # beq .L_8032916C
    .4byte 0x40800014 # bge .L_803290D4
    .4byte 0x480000A8 # b .L_8032916C
L_803290C8:
    cmpwi 0, 0x4
    .4byte 0x408000A0 # bge .L_8032916C
    .4byte 0x4800007C # b .L_8032914C
L_803290D4:
    cmpwi 30, 0x0
    .4byte 0x40820010 # bne .L_803290E8
    clrlwi 0, 28, 24
    cmplwi 0, 0x1
    .4byte 0x40820088 # bne .L_8032916C
L_803290E8:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022ED50 # lfs f1, lbl_80541CF0@sda21(r0)
    .4byte 0xC042ED54 # lfs f2, lbl_80541CF4@sda21(r0)
    bl fn_802D79E8
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0xf
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x2
    li 0, 0x64
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x48000048 # b .L_8032916C
L_80329128:
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810030 # bgt .L_8032916C
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000024 # b .L_8032916C
L_8032914C:
    lfs 0, 0x10(31)
    lfs 1, 0x240(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_8032916C
    stfs 1, 0x10(31)
    li 0, 0x0
    stw 0, 0x230(31)
L_8032916C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_80329198
    lfs 1, 0x40(31)
    .4byte 0xC002ED58 # lfs f0, lbl_80541CF8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_803291B4
    .4byte 0xC002ED5C # lfs f0, lbl_80541CFC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x48000020 # b .L_803291B4
L_80329198:
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_803291AC
    .4byte 0xC002ED60 # lfs f0, lbl_80541D00@sda21(r0)
    stfs 0, 0x40(31)
    .4byte 0x4800000C # b .L_803291B4
L_803291AC:
    .4byte 0xC002ED54 # lfs f0, lbl_80541CF4@sda21(r0)
    stfs 0, 0x40(31)
L_803291B4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803291D4:
    li 0, 0x2710
    li 4, 0x0
    stw 0, 0x108(3)
    li 0, 0x4
    .4byte 0xC062ED64 # lfs f3, lbl_80541D04@sda21(r0)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    .4byte 0xC042ED68 # lfs f2, lbl_80541D08@sda21(r0)
    psq_st 1, 0x23c(3), 0, 0
    .4byte 0xC022ED44 # lfs f1, lbl_80541CE4@sda21(r0)
    stfs 0, 0x244(3)
    .4byte 0xC002ED6C # lfs f0, lbl_80541D0C@sda21(r0)
    stw 4, 0x230(3)
    stw 4, 0x234(3)
    stb 4, 0x238(3)
    stb 4, 0x239(3)
    stb 4, 0x23a(3)
    stb 4, 0x23b(3)
    stw 0, 0x114(3)
    stfs 3, 0x80(3)
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 0, 0x8c(3)
    stfs 3, 0x60(3)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    blr

fn_80329244:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80508DF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80508DF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80329294
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
L_80329294:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803292CC
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
L_803292CC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80329304
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
L_80329304:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032933C
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
L_8032933C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80329374
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
L_80329374:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803293AC
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
L_803293AC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803293E4
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
L_803293E4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8032941C
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
L_8032941C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80329454
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
L_80329454:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80319EF8
    .4byte fn_8031BE2C
    .4byte fn_8031DF20
    .4byte fn_8031ED28
    .4byte fn_8031FB3C
    .4byte fn_80320150
    .4byte fn_8032377C
    .4byte fn_80324DE8
    .4byte fn_8032686C
    .4byte fn_803274A0
    .4byte fn_803285CC
    .4byte fn_80328B48
    .4byte fn_80329244

