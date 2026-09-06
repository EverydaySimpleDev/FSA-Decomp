# MAJOR: dispatch-cross-check bundle - 4 real FourCC actor vtable
# bodies (ctors already landed: fn_80167714, fn_80168688, fn_8016A090,
# fn_8016FDE4, fn_80171F4C, fn_80172670, fn_80175460 - 7 sinit entries
# for 4 dispatch-confirmed actor dtors, matching fn_801676A8/8016A138/
# fn_80167938/fn_80172170/fn_80174600 territory) plus shared helper/
# update functions, landed as ONE byte-contiguous 76-function,
# ~26,972-byte Track-A bundle (0x801676A8-0x80175684).
# Found+verified via spanwalk.py (full contiguity confirmed, stopping
# exactly at the pre-existing extab_80175684.s boundary) and
# resolvefiles.py (2 fused-dump functions). .ctors placement
# (0x8045BF64-0x8045BF80) found by brute-force scanning every
# currently-unclaimed .ctors gap for the exact 7-address subsequence.
# See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000717C
etb_8000717C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000717C, 8

.global etb_80007184
etb_80007184:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007184, 8

.global etb_8000718C
etb_8000718C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000718C, 8

.global etb_80007194
etb_80007194:
    .4byte 0x118A0000
    .4byte 0x00000000
.size etb_80007194, 8

.global etb_8000719C
etb_8000719C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000719C, 8

.global etb_800071A4
etb_800071A4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800071A4, 8

.global etb_800071AC
etb_800071AC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800071AC, 8

.global etb_800071B4
etb_800071B4:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_800071B4, 8

.global etb_800071BC
etb_800071BC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800071BC, 8

.global etb_800071C4
etb_800071C4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800071C4, 8

.global etb_800071CC
etb_800071CC:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_800071CC, 8

.global etb_800071D4
etb_800071D4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800071D4, 8

.global etb_800071DC
etb_800071DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800071DC, 8

.global etb_800071E4
etb_800071E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800071E4, 8

.global etb_800071EC
etb_800071EC:
    .4byte 0x70080000
    .4byte 0x0000023C
    .4byte 0x00000088
    .4byte 0x0000025C
    .4byte 0x00000074
    .4byte 0x0000027C
    .4byte 0x00000060
    .4byte 0x0000029C
    .4byte 0x0000004C
    .4byte 0x000002A4
    .4byte 0x00000038
    .4byte 0x000003A8
    .4byte 0x0005009C
    .4byte 0x00000000
    .4byte 0x09800018
    .4byte 0x000000D4
    .4byte 0x00000004
    .4byte 0x00000008
    .4byte dtor_800C7918
    .4byte 0x09800018
    .4byte 0x000000B4
    .4byte 0x00000004
    .4byte 0x00000008
    .4byte dtor_800C78DC
    .4byte 0x09800018
    .4byte 0x00000054
    .4byte 0x00000008
    .4byte 0x0000000C
    .4byte dtor_800C7894
    .4byte 0x09800018
    .4byte 0x00000014
    .4byte 0x00000008
    .4byte 0x00000008
    .4byte dtor_800C7858
    .4byte 0x89800018
    .4byte 0x00000004
    .4byte 0x00000002
    .4byte 0x00000008
    .4byte dtor_800C781C
    .4byte 0x87800012
    .4byte 0x00000088
    .4byte dtor_800BB738
.size etb_800071EC, 168

.global etb_80007294
etb_80007294:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007294, 8

.global etb_8000729C
etb_8000729C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000729C, 8

.global etb_800072A4
etb_800072A4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072A4, 8

.global etb_800072AC
etb_800072AC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072AC, 8

.global etb_800072B4
etb_800072B4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072B4, 8

.global etb_800072BC
etb_800072BC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072BC, 8

.global etb_800072C4
etb_800072C4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072C4, 8

.global etb_800072CC
etb_800072CC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072CC, 8

.global etb_800072D4
etb_800072D4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072D4, 8

.global etb_800072DC
etb_800072DC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072DC, 8

.global etb_800072E4
etb_800072E4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072E4, 8

.global etb_800072EC
etb_800072EC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072EC, 8

.global etb_800072F4
etb_800072F4:
    .4byte 0x098A0000
    .4byte 0x00000000
.size etb_800072F4, 8

.global etb_800072FC
etb_800072FC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800072FC, 8

.global etb_80007304
etb_80007304:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80007304, 8

.global etb_8000730C
etb_8000730C:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000730C, 8

.global etb_80007314
etb_80007314:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_80007314, 8

.global etb_8000731C
etb_8000731C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000731C, 8

.global etb_80007324
etb_80007324:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_80007324, 8

.global etb_8000732C
etb_8000732C:
    .4byte 0x090A0000
    .4byte 0x00000000
.size etb_8000732C, 8

.global etb_80007334
etb_80007334:
    .4byte 0x0A4A0000
    .4byte 0x00000000
.size etb_80007334, 8

.global etb_8000733C
etb_8000733C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000733C, 8

.global etb_80007344
etb_80007344:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007344, 8

.global etb_8000734C
etb_8000734C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000734C, 8

.global etb_80007354
etb_80007354:
    .4byte 0x484A0000
    .4byte 0x00000000
.size etb_80007354, 8

.global etb_8000735C
etb_8000735C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000735C, 8

.global etb_80007364
etb_80007364:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007364, 8

.global etb_8000736C
etb_8000736C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000736C, 8

.global etb_80007374
etb_80007374:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80007374, 8

.global etb_8000737C
etb_8000737C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000737C, 8

.global etb_80007384
etb_80007384:
    .4byte 0x48080000
    .4byte 0x00000CF8
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A800019
    .4byte dtor_80084580
.size etb_80007384, 24

.global etb_8000739C
etb_8000739C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000739C, 8

.global etb_800073A4
etb_800073A4:
    .4byte 0x2A4A0000
    .4byte 0x00000000
.size etb_800073A4, 8

.global etb_800073AC
etb_800073AC:
    .4byte 0x22CA0000
    .4byte 0x00000000
.size etb_800073AC, 8

.global etb_800073B4
etb_800073B4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800073B4, 8

.global etb_800073BC
etb_800073BC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800073BC, 8

.global etb_800073C4
etb_800073C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800073C4, 8

.global etb_800073CC
etb_800073CC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800073CC, 8

.global etb_800073D4
etb_800073D4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800073D4, 8

.global etb_800073DC
etb_800073DC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800073DC, 8

.global etb_800073E4
etb_800073E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800073E4, 8

.global etb_800073EC
etb_800073EC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800073EC, 8

.global etb_800073F4
etb_800073F4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800073F4, 8

.global etb_800073FC
etb_800073FC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800073FC, 8

.global etb_80007404
etb_80007404:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007404, 8

.global etb_8000740C
etb_8000740C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000740C, 8

.global etb_80007414
etb_80007414:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80007414, 8

.global etb_8000741C
etb_8000741C:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_8000741C, 8

.global etb_80007424
etb_80007424:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80007424, 8

.global etb_8000742C
etb_8000742C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000742C, 8

.global etb_80007434
etb_80007434:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007434, 8

.global etb_8000743C
etb_8000743C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000743C, 8

.global etb_80007444
etb_80007444:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007444, 8

.global etb_8000744C
etb_8000744C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000744C, 8

.global etb_80007454
etb_80007454:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007454, 8

.section extabindex, "a"
.balign 4
.global eti_80013D68
eti_80013D68:
    .4byte fn_801676A8
    .4byte 0x0000006C
    .4byte etb_8000717C
.size eti_80013D68, 12

.global eti_80013D74
eti_80013D74:
    .4byte fn_80167714
    .4byte 0x00000224
    .4byte etb_80007184
.size eti_80013D74, 12

.global eti_80013D80
eti_80013D80:
    .4byte fn_80167938
    .4byte 0x00000060
    .4byte etb_8000718C
.size eti_80013D80, 12

.global eti_80013D8C
eti_80013D8C:
    .4byte fn_80167998
    .4byte 0x000002FC
    .4byte etb_80007194
.size eti_80013D8C, 12

.global eti_80013D98
eti_80013D98:
    .4byte fn_80167C94
    .4byte 0x00000934
    .4byte etb_8000719C
.size eti_80013D98, 12

.global eti_80013DA4
eti_80013DA4:
    .4byte fn_80168688
    .4byte 0x00000224
    .4byte etb_800071A4
.size eti_80013DA4, 12

.global eti_80013DB0
eti_80013DB0:
    .4byte fn_801688AC
    .4byte 0x00000060
    .4byte etb_800071AC
.size eti_80013DB0, 12

.global eti_80013DBC
eti_80013DBC:
    .4byte fn_8016890C
    .4byte 0x0000032C
    .4byte etb_800071B4
.size eti_80013DBC, 12

.global eti_80013DC8
eti_80013DC8:
    .4byte fn_80168C38
    .4byte 0x00000240
    .4byte etb_800071BC
.size eti_80013DC8, 12

.global eti_80013DD4
eti_80013DD4:
    .4byte fn_80168E78
    .4byte 0x000001B8
    .4byte etb_800071C4
.size eti_80013DD4, 12

.global eti_80013DE0
eti_80013DE0:
    .4byte fn_80169030
    .4byte 0x00000D9C
    .4byte etb_800071CC
.size eti_80013DE0, 12

.global eti_80013DEC
eti_80013DEC:
    .4byte fn_80169DCC
    .4byte 0x000002C4
    .4byte etb_800071D4
.size eti_80013DEC, 12

.global eti_80013DF8
eti_80013DF8:
    .4byte fn_8016A090
    .4byte 0x00000224
    .4byte etb_800071DC
.size eti_80013DF8, 12

.global eti_80013E04
eti_80013E04:
    .4byte fn_8016A2B4
    .4byte 0x0000007C
    .4byte etb_800071E4
.size eti_80013E04, 12

.global eti_80013E10
eti_80013E10:
    .4byte fn_8016A3BC
    .4byte 0x00000420
    .4byte etb_800071EC
.size eti_80013E10, 12

.global eti_80013E1C
eti_80013E1C:
    .4byte fn_8016A7DC
    .4byte 0x00000210
    .4byte etb_80007294
.size eti_80013E1C, 12

.global eti_80013E28
eti_80013E28:
    .4byte fn_8016A9EC
    .4byte 0x0000005C
    .4byte etb_8000729C
.size eti_80013E28, 12

.global eti_80013E34
eti_80013E34:
    .4byte fn_8016AA48
    .4byte 0x0000005C
    .4byte etb_800072A4
.size eti_80013E34, 12

.global eti_80013E40
eti_80013E40:
    .4byte fn_8016AAA4
    .4byte 0x0000005C
    .4byte etb_800072AC
.size eti_80013E40, 12

.global eti_80013E4C
eti_80013E4C:
    .4byte fn_8016AB00
    .4byte 0x0000005C
    .4byte etb_800072B4
.size eti_80013E4C, 12

.global eti_80013E58
eti_80013E58:
    .4byte fn_8016AB5C
    .4byte 0x0000005C
    .4byte etb_800072BC
.size eti_80013E58, 12

.global eti_80013E64
eti_80013E64:
    .4byte fn_8016ABB8
    .4byte 0x0000005C
    .4byte etb_800072C4
.size eti_80013E64, 12

.global eti_80013E70
eti_80013E70:
    .4byte fn_8016AC14
    .4byte 0x0000005C
    .4byte etb_800072CC
.size eti_80013E70, 12

.global eti_80013E7C
eti_80013E7C:
    .4byte fn_8016AC70
    .4byte 0x0000005C
    .4byte etb_800072D4
.size eti_80013E7C, 12

.global eti_80013E88
eti_80013E88:
    .4byte fn_8016ACCC
    .4byte 0x0000005C
    .4byte etb_800072DC
.size eti_80013E88, 12

.global eti_80013E94
eti_80013E94:
    .4byte fn_8016AD28
    .4byte 0x0000005C
    .4byte etb_800072E4
.size eti_80013E94, 12

.global eti_80013EA0
eti_80013EA0:
    .4byte fn_8016AD84
    .4byte 0x0000005C
    .4byte etb_800072EC
.size eti_80013EA0, 12

.global eti_80013EAC
eti_80013EAC:
    .4byte fn_8016ADE0
    .4byte 0x00000274
    .4byte etb_800072F4
.size eti_80013EAC, 12

.global eti_80013EB8
eti_80013EB8:
    .4byte fn_8016B054
    .4byte 0x0000005C
    .4byte etb_800072FC
.size eti_80013EB8, 12

.global eti_80013EC4
eti_80013EC4:
    .4byte fn_8016B0B0
    .4byte 0x00000198
    .4byte etb_80007304
.size eti_80013EC4, 12

.global eti_80013ED0
eti_80013ED0:
    .4byte fn_8016B248
    .4byte 0x0000028C
    .4byte etb_8000730C
.size eti_80013ED0, 12

.global eti_80013EDC
eti_80013EDC:
    .4byte fn_8016B4D4
    .4byte 0x000003D8
    .4byte etb_80007314
.size eti_80013EDC, 12

.global eti_80013EE8
eti_80013EE8:
    .4byte fn_8016B8AC
    .4byte 0x00000064
    .4byte etb_8000731C
.size eti_80013EE8, 12

.global eti_80013EF4
eti_80013EF4:
    .4byte fn_8016B910
    .4byte 0x000009EC
    .4byte etb_80007324
.size eti_80013EF4, 12

.global eti_80013F00
eti_80013F00:
    .4byte fn_8016C2FC
    .4byte 0x00000818
    .4byte etb_8000732C
.size eti_80013F00, 12

.global eti_80013F0C
eti_80013F0C:
    .4byte fn_8016CB14
    .4byte 0x00000770
    .4byte etb_80007334
.size eti_80013F0C, 12

.global eti_80013F18
eti_80013F18:
    .4byte fn_8016D284
    .4byte 0x0000005C
    .4byte etb_8000733C
.size eti_80013F18, 12

.global eti_80013F24
eti_80013F24:
    .4byte fn_8016D2E0
    .4byte 0x0000005C
    .4byte etb_80007344
.size eti_80013F24, 12

.global eti_80013F30
eti_80013F30:
    .4byte fn_8016D33C
    .4byte 0x0000005C
    .4byte etb_8000734C
.size eti_80013F30, 12

.global eti_80013F3C
eti_80013F3C:
    .4byte fn_8016D398
    .4byte 0x000006D4
    .4byte etb_80007354
.size eti_80013F3C, 12

.global eti_80013F48
eti_80013F48:
    .4byte fn_8016DA6C
    .4byte 0x000000F4
    .4byte etb_8000735C
.size eti_80013F48, 12

.global eti_80013F54
eti_80013F54:
    .4byte fn_8016DB60
    .4byte 0x0000018C
    .4byte etb_80007364
.size eti_80013F54, 12

.global eti_80013F60
eti_80013F60:
    .4byte fn_8016DCEC
    .4byte 0x00000144
    .4byte etb_8000736C
.size eti_80013F60, 12

.global eti_80013F6C
eti_80013F6C:
    .4byte fn_8016DE30
    .4byte 0x00000F58
    .4byte etb_80007374
.size eti_80013F6C, 12

.global eti_80013F78
eti_80013F78:
    .4byte fn_8016EE84
    .4byte 0x00000238
    .4byte etb_8000737C
.size eti_80013F78, 12

.global eti_80013F84
eti_80013F84:
    .4byte fn_8016F0BC
    .4byte 0x00000D24
    .4byte etb_80007384
.size eti_80013F84, 12

.global eti_80013F90
eti_80013F90:
    .4byte fn_8016FDE4
    .4byte 0x00000224
    .4byte etb_8000739C
.size eti_80013F90, 12

.global eti_80013F9C
eti_80013F9C:
    .4byte fn_80170008
    .4byte 0x00000448
    .4byte etb_800073A4
.size eti_80013F9C, 12

.global eti_80013FA8
eti_80013FA8:
    .4byte fn_80170450
    .4byte 0x00001570
    .4byte etb_800073AC
.size eti_80013FA8, 12

.global eti_80013FB4
eti_80013FB4:
    .4byte fn_801719C0
    .4byte 0x00000068
    .4byte etb_800073B4
.size eti_80013FB4, 12

.global eti_80013FC0
eti_80013FC0:
    .4byte fn_80171A28
    .4byte 0x000000D0
    .4byte etb_800073BC
.size eti_80013FC0, 12

.global eti_80013FCC
eti_80013FCC:
    .4byte fn_80171AF8
    .4byte 0x00000454
    .4byte etb_800073C4
.size eti_80013FCC, 12

.global eti_80013FD8
eti_80013FD8:
    .4byte fn_80171F4C
    .4byte 0x00000224
    .4byte etb_800073CC
.size eti_80013FD8, 12

.global eti_80013FE4
eti_80013FE4:
    .4byte fn_80172170
    .4byte 0x00000060
    .4byte etb_800073D4
.size eti_80013FE4, 12

.global eti_80013FF0
eti_80013FF0:
    .4byte fn_801721D0
    .4byte 0x00000040
    .4byte etb_800073DC
.size eti_80013FF0, 12

.global eti_80013FFC
eti_80013FFC:
    .4byte fn_80172210
    .4byte 0x00000320
    .4byte etb_800073E4
.size eti_80013FFC, 12

.global eti_80014008
eti_80014008:
    .4byte fn_80172530
    .4byte 0x00000140
    .4byte etb_800073EC
.size eti_80014008, 12

.global eti_80014014
eti_80014014:
    .4byte fn_80172670
    .4byte 0x00000224
    .4byte etb_800073F4
.size eti_80014014, 12

.global eti_80014020
eti_80014020:
    .4byte fn_80172894
    .4byte 0x0000006C
    .4byte etb_800073FC
.size eti_80014020, 12

.global eti_8001402C
eti_8001402C:
    .4byte fn_80172900
    .4byte 0x000002C8
    .4byte etb_80007404
.size eti_8001402C, 12

.global eti_80014038
eti_80014038:
    .4byte fn_80172BC8
    .4byte 0x000001FC
    .4byte etb_8000740C
.size eti_80014038, 12

.global eti_80014044
eti_80014044:
    .4byte fn_80172DC4
    .4byte 0x0000145C
    .4byte etb_80007414
.size eti_80014044, 12

.global eti_80014050
eti_80014050:
    .4byte fn_80174220
    .4byte 0x000002C4
    .4byte etb_8000741C
.size eti_80014050, 12

.global eti_8001405C
eti_8001405C:
    .4byte fn_801744E4
    .4byte 0x0000011C
    .4byte etb_80007424
.size eti_8001405C, 12

.global eti_80014068
eti_80014068:
    .4byte fn_80174600
    .4byte 0x000000DC
    .4byte etb_8000742C
.size eti_80014068, 12

.global eti_80014074
eti_80014074:
    .4byte fn_801746DC
    .4byte 0x00000468
    .4byte etb_80007434
.size eti_80014074, 12

.global eti_80014080
eti_80014080:
    .4byte fn_80174B44
    .4byte 0x000004E0
    .4byte etb_8000743C
.size eti_80014080, 12

.global eti_8001408C
eti_8001408C:
    .4byte fn_80175024
    .4byte 0x000002B4
    .4byte etb_80007444
.size eti_8001408C, 12

.global eti_80014098
eti_80014098:
    .4byte fn_801752D8
    .4byte 0x00000188
    .4byte etb_8000744C
.size eti_80014098, 12

.global eti_800140A4
eti_800140A4:
    .4byte fn_80175460
    .4byte 0x00000224
    .4byte etb_80007454
.size eti_800140A4, 12

.text
.balign 4
.global fn_801676A8
.global fn_80167714
.global fn_80167938
.global fn_80167998
.global fn_80167C94
.global fn_801685C8
.global fn_80168688
.global fn_801688AC
.global fn_8016890C
.global fn_80168C38
.global fn_80168E78
.global fn_80169030
.global fn_80169DCC
.global fn_8016A090
.global fn_8016A2B4
.global fn_8016A330
.global fn_8016A3AC
.global fn_8016A3BC
.global fn_8016A7DC
.global fn_8016A9EC
.global fn_8016AA48
.global fn_8016AAA4
.global fn_8016AB00
.global fn_8016AB5C
.global fn_8016ABB8
.global fn_8016AC14
.global fn_8016AC70
.global fn_8016ACCC
.global fn_8016AD28
.global fn_8016AD84
.global fn_8016ADE0
.global fn_8016B054
.global fn_8016B0B0
.global fn_8016B248
.global fn_8016B4D4
.global fn_8016B8AC
.global fn_8016B910
.global fn_8016C2FC
.global fn_8016CB14
.global fn_8016D284
.global fn_8016D2E0
.global fn_8016D33C
.global fn_8016D398
.global fn_8016DA6C
.global fn_8016DB60
.global fn_8016DCEC
.global fn_8016DE30
.global fn_8016ED88
.global fn_8016EDB0
.global fn_8016EE84
.global fn_8016F0BC
.global fn_8016FDE0
.global fn_8016FDE4
.global fn_80170008
.global fn_80170450
.global fn_801719C0
.global fn_80171A28
.global fn_80171AF8
.global fn_80171F4C
.global fn_80172170
.global fn_801721D0
.global fn_80172210
.global fn_80172530
.global fn_80172670
.global fn_80172894
.global fn_80172900
.global fn_80172BC8
.global fn_80172DC4
.global fn_80174220
.global fn_801744E4
.global fn_80174600
.global fn_801746DC
.global fn_80174B44
.global fn_80175024
.global fn_801752D8
.global fn_80175460

fn_801676A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820034 # beq .L_801676F8
    lis 3, lbl_804A0668@ha
    addi 0, 3, lbl_804A0668@l
    stw 0, 0x0(30)
    lwz 3, 0x26c(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801676F8
    mr 3, 30
    bl dtor_80084580
L_801676F8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80167714:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C05A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C05A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80167764
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
L_80167764:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016779C
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
L_8016779C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801677D4
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
L_801677D4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016780C
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
L_8016780C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80167844
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
L_80167844:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016787C
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
L_8016787C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801678B4
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
L_801678B4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801678EC
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
L_801678EC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80167924
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
L_80167924:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80167938:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8016797C
    lis 5, lbl_804A06C0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A06C0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8016797C
    mr 3, 30
    bl dtor_80084580
L_8016797C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80167998:
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
    stw 30, 0x78(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x40820240 # bne .L_80167C28
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80167A64
L_80167A04:
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
L_80167A64:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80167A04
    li 6, 0x0
    li 5, 0x1
    .4byte 0xC022A8A0 # lfs f1, lbl_8053D840@sda21(r0)
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    stw 6, 0x50(1)
    addi 0, 1, 0x8
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
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
    stw 3, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    stw 0, 0x50(1)
    lfs 30, 0x258(31)
    lfs 29, 0x254(31)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022A8A0 # lfs f1, lbl_8053D840@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022A8A0 # lfs f1, lbl_8053D840@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A8A0 # lfs f1, lbl_8053D840@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    fmuls 7, 30, 26
    stw 0, 0x50(1)
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
    lwz 0, 0x4(31)
    lwz 3, 0x250(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x92
    .4byte 0x40800078 # bge .L_80167C4C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80466338@ha
    addi 5, 3, lbl_80466338@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A8A4 # lfs f1, lbl_8053D844@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x38
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x48000028 # b .L_80167C4C
L_80167C28:
    .4byte 0xC022A8A4 # lfs f1, lbl_8053D844@sda21(r0)
    lis 4, lbl_80466338@ha
    lwz 5, 0x250(31)
    addi 4, 4, lbl_80466338@l
    fmr 2, 1
    li 6, 0x0
    addi 5, 5, 0x92
    li 7, 0x0
    bl fn_801F06F0
L_80167C4C:
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
    lwz 31, 0x7c(1)
    lwz 0, 0xe4(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_80167C94:
    stwu 1, -0x60(1)
    mflr 0
    .4byte 0xC002A8A0 # lfs f0, lbl_8053D840@sda21(r0)
    stw 0, 0x64(1)
    li 0, 0x0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    mr 30, 3
    stw 29, 0x54(1)
    sth 0, 0x8(1)
    stw 0, 0x18(1)
    stfs 0, 0x14(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x41820298 # beq .L_80167F64
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x41820140 # beq .L_80167E18
    lfs 0, 0xc(30)
    lis 0, 0x4330
    lis 3, lbl_8052EBC0@ha
    stw 0, 0x38(1)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC822A8F0 # lfd f1, lbl_8053D890@sda21(r0)
    stfs 0, 0x260(30)
    addi 3, 30, 0x260
    .4byte 0xC042A8A8 # lfs f2, lbl_8053D848@sda21(r0)
    lfs 0, 0x10(30)
    stw 0, 0x48(1)
    stfs 0, 0x264(30)
    lfs 0, 0x14(30)
    stfs 0, 0x268(30)
    lfs 0, 0x260(30)
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    rlwinm 0, 0, 0, 16, 28
    xoris 0, 0, 0x8000
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 1
    stfs 0, 0x260(30)
    lfs 0, 0x264(30)
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 0, 0x44(1)
    rlwinm 0, 0, 0, 16, 28
    xoris 0, 0, 0x8000
    stw 0, 0x4c(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 1
    stfs 0, 0x264(30)
    lwz 0, 0x24c(30)
    lfs 0, 0x260(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x260(30)
    lwz 0, 0x24c(30)
    lfs 0, 0x264(30)
    rlwinm 0, 0, 30, 18, 28
    add 4, 4, 0
    lfs 1, 0x4(4)
    fmadds 0, 2, 1, 0
    stfs 0, 0x264(30)
    lwz 4, 0x4(30)
    bl fn_8022461C
    clrlwi 29, 3, 16
    subi 0, 29, 0x2
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80167DB8
    cmpwi 29, 0xe
    .4byte 0x40820064 # bne .L_80167E18
L_80167DB8:
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80167DD8
    cmpwi 29, 0xe
    .4byte 0x4082000C # bne .L_80167DD8
    li 0, 0x1
    stb 0, 0x25c(30)
L_80167DD8:
    li 4, 0x0
    .4byte 0xC002A8A0 # lfs f0, lbl_8053D840@sda21(r0)
    stw 4, 0xd8(30)
    li 3, 0x1e
    li 0, 0x2
    stw 4, 0xdc(30)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x274(30)
    stfs 0, 0x270(30)
    stfs 0, 0x26c(30)
    stfs 0, 0x258(30)
    stw 4, 0x234(30)
    stw 3, 0x238(30)
    stw 0, 0x230(30)
L_80167E18:
    mr 3, 30
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820024 # bne .L_80167E4C
    lis 4, 0x4e55
    mr 3, 30
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80167E68
L_80167E4C:
    li 0, 0x14
    mr 3, 30
    stw 0, 0x23c(30)
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000748 # b .L_801685AC
L_80167E68:
    lfs 1, 0x26c(30)
    addi 3, 30, 0x3c
    .4byte 0xC042A8AC # lfs f2, lbl_8053D84C@sda21(r0)
    lfs 3, 0x278(30)
    bl fn_801F71A4
    lfs 1, 0x270(30)
    addi 3, 30, 0x40
    .4byte 0xC042A8AC # lfs f2, lbl_8053D84C@sda21(r0)
    lfs 3, 0x27c(30)
    bl fn_801F71A4
    psq_l 1, 0xc(30), 0, 0
    mr 3, 30
    psq_l 0, 0x3c(30), 0, 0
    addi 5, 1, 0x8
    addi 6, 1, 0x18
    addi 7, 1, 0x14
    ps_add 0, 1, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 4, 0x198(30)
    bl fn_801EEC98
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80167F54
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_80167F54
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 5, 3, lbl_8052EBC0@l
    .4byte 0xC042A8B0 # lfs f2, lbl_8053D850@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002A8A0 # lfs f0, lbl_8053D840@sda21(r0)
    lfsx 1, 5, 0
    li 3, 0x0
    li 0, 0x1
    fmuls 1, 2, 1
    stfs 1, 0x3c(30)
    lhz 4, 0x8(1)
    rlwinm 4, 4, 30, 18, 28
    add 4, 5, 4
    lfs 1, 0x4(4)
    fmuls 1, 2, 1
    stfs 1, 0x40(30)
    stfs 0, 0x26c(30)
    stfs 0, 0x270(30)
    stfs 0, 0x274(30)
    stw 3, 0x248(30)
    stw 0, 0x230(30)
L_80167F54:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_80167F64:
    lwz 3, 0x234(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80167F78
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_80167F78:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80167F8C
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_80167F8C:
    addi 4, 30, 0x8
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80167FA4
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_80167FA4:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80167FB8
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_80167FB8:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x41820334 # beq .L_801682F4
    .4byte 0x40800010 # bge .L_80167FD4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80167FE0
    .4byte 0x4800059C # b .L_8016856C
L_80167FD4:
    cmpwi 0, 0x3
    .4byte 0x40800594 # bge .L_8016856C
    .4byte 0x48000354 # b .L_80168330
L_80167FE0:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80168048
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A8B4 # lfs f1, lbl_8053D854@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x26c(30)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x270(30)
    lwz 0, 0x18(1)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80168040
    .4byte 0xC002A8A0 # lfs f0, lbl_8053D840@sda21(r0)
    stfs 0, 0x274(30)
    stfs 0, 0x270(30)
    stfs 0, 0x26c(30)
L_80168040:
    li 0, 0x1e
    stw 0, 0x238(30)
L_80168048:
    lwz 29, 0x9c(30)
    cmpwi 29, 0x0
    .4byte 0x418000D8 # blt .L_80168128
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200C4 # beq .L_80168128
    lfs 3, 0xc(3)
    lis 4, lbl_80534C00@ha
    lfs 1, 0xc(30)
    addi 0, 4, lbl_80534C00@l
    lfs 2, 0x10(3)
    mr 3, 0
    lfs 0, 0x10(30)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002A8B8 # lfs f0, lbl_8053D858@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042A8B0 # lfs f2, lbl_8053D850@sda21(r0)
    fmuls 1, 1, 0
    .4byte 0xC002A8A0 # lfs f0, lbl_8053D840@sda21(r0)
    li 0, 0x0
    fctiwz 1, 1
    stfd 1, 0x48(1)
    lwz 5, 0x4c(1)
    rlwinm 3, 5, 30, 18, 28
    sth 5, 0x8(1)
    lfsx 1, 4, 3
    fmuls 1, 2, 1
    stfs 1, 0x3c(30)
    lhz 3, 0x8(1)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 1, 0x4(3)
    fmuls 1, 2, 1
    stfs 1, 0x40(30)
    stfs 0, 0x274(30)
    stfs 0, 0x270(30)
    stfs 0, 0x26c(30)
    stw 0, 0x248(30)
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8016811C
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xd4
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x8
    stw 0, 0x240(30)
L_8016811C:
    li 0, 0x1
    stw 0, 0x230(30)
    .4byte 0x48000448 # b .L_8016856C
L_80168128:
    li 31, 0x0
L_8016812C:
    mr 3, 30
    mr 7, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    mr. 29, 3
    .4byte 0x4180019C # blt .L_801682E4
    psq_l 0, 0xc(30), 0, 0
    addi 4, 1, 0x1c
    lfs 1, 0x14(30)
    psq_st 0, 0x24(1), 0, 0
    lfs 3, 0x60(30)
    lfs 2, 0x24(1)
    lfs 5, 0x68(30)
    lfs 4, 0x64(30)
    fadds 3, 3, 2
    lfs 0, 0x28(1)
    fadds 5, 5, 2
    lfs 6, 0x6c(30)
    fadds 4, 4, 0
    .4byte 0xC042A8B4 # lfs f2, lbl_8053D854@sda21(r0)
    fadds 6, 6, 0
    stfs 1, 0x2c(1)
    fsubs 1, 3, 5
    fsubs 0, 4, 6
    fmadds 1, 2, 1, 5
    fmadds 0, 2, 0, 6
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_80168228
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_80168228
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A8A4 # lfs f1, lbl_8053D844@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A8A4 # lfs f1, lbl_8053D844@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xd4
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x8
    stw 0, 0x240(30)
L_80168228:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC062A8A4 # lfs f3, lbl_8053D844@sda21(r0)
    lwz 6, 0xb4(7)
    addi 0, 4, 0x660d
    addi 5, 3, lbl_8052EBC0@l
    .4byte 0xC0A2A8C0 # lfs f5, lbl_8053D860@sda21(r0)
    mullw 4, 6, 0
    .4byte 0xC022A8BC # lfs f1, lbl_8053D85C@sda21(r0)
    .4byte 0xC042A8C4 # lfs f2, lbl_8053D864@sda21(r0)
    addi 3, 29, 0x1
    .4byte 0xC002A8A0 # lfs f0, lbl_8053D840@sda21(r0)
    li 0, 0x1
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(7)
    lwz 4, 0xb4(7)
    lhz 6, 0x8(1)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 4, 0xc(1)
    fsubs 3, 4, 3
    fnmsubs 1, 5, 3, 1
    fctiwz 1, 1
    stfd 1, 0x48(1)
    lwz 4, 0x4c(1)
    add 6, 6, 4
    rlwinm 4, 6, 30, 18, 28
    sth 6, 0x8(1)
    lfsx 1, 5, 4
    fmuls 1, 2, 1
    stfs 1, 0x3c(30)
    lhz 4, 0x8(1)
    rlwinm 4, 4, 30, 18, 28
    add 4, 5, 4
    lfs 1, 0x4(4)
    fmuls 1, 2, 1
    stfs 1, 0x40(30)
    stfs 0, 0x26c(30)
    stfs 0, 0x270(30)
    stfs 0, 0x274(30)
    stw 3, 0x248(30)
    lhz 3, 0x8(1)
    stw 3, 0x24c(30)
    stw 0, 0x230(30)
L_801682E4:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE40 # blt .L_8016812C
    .4byte 0x4800027C # b .L_8016856C
L_801682F4:
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80168308
    li 0, 0xa
    stw 0, 0x23c(30)
L_80168308:
    lfs 0, 0x3c(30)
    .4byte 0xC022A8C8 # lfs f1, lbl_8053D868@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40800258 # bge .L_8016856C
    lfs 0, 0x40(30)
    fcmpo cr0, 0, 1
    .4byte 0x4080024C # bge .L_8016856C
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000240 # b .L_8016856C
L_80168330:
    lfs 1, 0x260(30)
    addi 3, 30, 0xc
    .4byte 0xC042A8C8 # lfs f2, lbl_8053D868@sda21(r0)
    .4byte 0xC062A8A4 # lfs f3, lbl_8053D844@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x264(30)
    addi 3, 30, 0x10
    .4byte 0xC042A8C8 # lfs f2, lbl_8053D868@sda21(r0)
    .4byte 0xC062A8A4 # lfs f3, lbl_8053D844@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x238(30)
    lfs 3, 0xc(30)
    lfs 2, 0x260(30)
    cmpwi 0, 0x0
    lfs 1, 0x10(30)
    lfs 0, 0x264(30)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    .4byte 0x408201C0 # bne .L_80168538
    fmuls 1, 0, 0
    .4byte 0xC002A8A0 # lfs f0, lbl_8053D840@sda21(r0)
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801683D8
    frsqrte 1, 4
    .4byte 0xC862A8D0 # lfd f3, lbl_8053D870@sda21(r0)
    .4byte 0xC842A8D8 # lfd f2, lbl_8053D878@sda21(r0)
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
    .4byte 0x48000088 # b .L_8016845C
L_801683D8:
    .4byte 0xC802A8E0 # lfd f0, lbl_8053D880@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801683F0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_8016845C
L_801683F0:
    stfs 4, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80168418
    .4byte 0x40800040 # bge .L_80168448
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80168430
    .4byte 0x48000034 # b .L_80168448
L_80168418:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80168428
    li 0, 0x1
    .4byte 0x48000028 # b .L_8016844C
L_80168428:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8016844C
L_80168430:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80168440
    li 0, 0x5
    .4byte 0x48000010 # b .L_8016844C
L_80168440:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8016844C
L_80168448:
    li 0, 0x4
L_8016844C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8016845C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_8016845C:
    .4byte 0xC002A8E8 # lfs f0, lbl_8053D888@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x408000D4 # bge .L_80168538
    lwz 0, 0x250(30)
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_80168488
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
L_80168488:
    li 0, 0x3
    .4byte 0xC042A8AC # lfs f2, lbl_8053D84C@sda21(r0)
    stw 0, 0x250(30)
    .4byte 0xC002A8EC # lfs f0, lbl_8053D88C@sda21(r0)
    lfs 1, 0x258(30)
    fadds 1, 1, 2
    stfs 1, 0x258(30)
    lfs 1, 0x254(30)
    fsubs 0, 1, 0
    stfs 0, 0x254(30)
    lfs 0, 0x254(30)
    fcmpo cr0, 0, 2
    .4byte 0x408000B4 # bge .L_8016856C
    lbz 0, 0x25c(30)
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_8016852C
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A8A4 # lfs f1, lbl_8053D844@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022A8A4 # lfs f1, lbl_8053D844@sda21(r0)
    li 5, 0x2aa
    li 6, -0x1
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
L_8016852C:
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000038 # b .L_8016856C
L_80168538:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8016856C
    li 0, 0x3
    stw 0, 0x234(30)
    lwz 3, 0x250(30)
    addi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8016856C
    li 0, 0x0
    stw 0, 0x250(30)
L_8016856C:
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_801685AC
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801685AC
    li 0, 0x6
    stw 0, 0x234(30)
    lwz 3, 0x250(30)
    addi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_801685AC
    li 0, 0x0
    stw 0, 0x250(30)
L_801685AC:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801685C8:
    .4byte 0xC022A8C4 # lfs f1, lbl_8053D864@sda21(r0)
    lis 4, 0x1
    .4byte 0xC002A8F8 # lfs f0, lbl_8053D898@sda21(r0)
    li 5, 0x0
    stfs 1, 0x60(3)
    addi 4, 4, 0x1101
    .4byte 0xC082A8FC # lfs f4, lbl_8053D89C@sda21(r0)
    li 0, 0x1
    stfs 1, 0x64(3)
    .4byte 0xC062A900 # lfs f3, lbl_8053D8A0@sda21(r0)
    stfs 0, 0x68(3)
    .4byte 0xC042A8C8 # lfs f2, lbl_8053D868@sda21(r0)
    stfs 0, 0x6c(3)
    .4byte 0xC022A8A0 # lfs f1, lbl_8053D840@sda21(r0)
    stfs 4, 0x80(3)
    .4byte 0xC002A8A4 # lfs f0, lbl_8053D844@sda21(r0)
    stfs 4, 0x84(3)
    stfs 3, 0x88(3)
    stfs 3, 0x8c(3)
    stw 5, 0x244(3)
    stw 5, 0x248(3)
    stw 5, 0x24c(3)
    stw 5, 0x234(3)
    stw 5, 0x238(3)
    stw 5, 0x23c(3)
    stw 5, 0x240(3)
    stw 5, 0x250(3)
    stfs 2, 0x278(3)
    stfs 2, 0x27c(3)
    stfs 2, 0x280(3)
    stfs 1, 0x26c(3)
    stfs 1, 0x270(3)
    stfs 1, 0x274(3)
    stfs 1, 0x3c(3)
    stfs 1, 0x40(3)
    stfs 1, 0x44(3)
    stb 5, 0x25c(3)
    stfs 0, 0x254(3)
    lfs 0, 0xc(3)
    stfs 0, 0x260(3)
    lfs 0, 0x10(3)
    stfs 0, 0x264(3)
    lfs 0, 0x14(3)
    stfs 0, 0x268(3)
    stw 4, 0xb0(3)
    stw 0, 0xb8(3)
    stw 5, 0x230(3)
    blr

fn_80168688:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C06A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C06A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801686D8
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
L_801686D8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80168710
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
L_80168710:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80168748
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
L_80168748:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80168780
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
L_80168780:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801687B8
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
L_801687B8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801687F0
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
L_801687F0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80168828
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
L_80168828:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80168860
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
L_80168860:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80168898
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
L_80168898:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801688AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_801688F0
    lis 5, lbl_804A0738@ha
    li 4, 0x0
    addi 0, 5, lbl_804A0738@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801688F0
    mr 3, 30
    bl dtor_80084580
L_801688F0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8016890C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr. 30, 5
    mr 31, 6
    .4byte 0x40820040 # bne .L_80168974
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8016894C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80168950
L_8016894C:
    addi 3, 3, 0xdc
L_80168950:
    lfs 0, 0x0(3)
    stfs 0, 0x0(31)
    lfs 0, 0x4(3)
    stfs 0, 0x4(31)
    lfs 0, 0x8(3)
    stfs 0, 0x8(31)
    lfs 0, 0xc(3)
    stfs 0, 0xc(31)
    .4byte 0x480002A4 # b .L_80168C14
L_80168974:
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x8(4)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lfs 1, 0x8(1)
    bl __cvt_fp2unsigned
    lfs 1, 0xc(1)
    clrrwi 29, 3, 3
    bl __cvt_fp2unsigned
    lis 0, 0x4330
    clrrwi 28, 3, 3
    stw 29, 0x1c(1)
    li 27, 0x0
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC862A918 # lfd f3, lbl_8053D8B8@sda21(r0)
    lfd 1, 0x18(1)
    stw 28, 0x24(1)
    fsubs 2, 1, 3
    .4byte 0xC3E2A90C # lfs f31, lbl_8053D8AC@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3C2A910 # lfs f30, lbl_8053D8B0@sda21(r0)
    lfd 1, 0x20(1)
    stfs 2, 0x8(1)
    fsubs 1, 1, 3
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
L_801689E0:
    lfs 0, 0x8(1)
    fcmpo cr0, 0, 31
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_801689F8
    stfs 31, 0x8(1)
    .4byte 0x48000044 # b .L_80168A38
L_801689F8:
    mr 4, 30
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800014 # blt .L_80168A20
    cmplwi 0, 0x10
    .4byte 0x4080000C # bge .L_80168A20
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_80168A38
L_80168A20:
    lfs 0, 0x8(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fadds 0, 0, 30
    stfs 0, 0x8(1)
    .4byte 0x4180FFAC # blt .L_801689E0
L_80168A38:
    lis 0, 0x4330
    lfs 2, 0x8(1)
    stw 29, 0x24(1)
    li 27, 0x0
    .4byte 0xC822A918 # lfd f1, lbl_8053D8B8@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3C2A910 # lfs f30, lbl_8053D8B0@sda21(r0)
    lfd 0, 0x20(1)
    stfs 2, 0x8(31)
    fsubs 0, 0, 1
    stfs 0, 0x8(1)
L_80168A64:
    lfs 0, 0x8(1)
    fcmpo cr0, 0, 30
    .4byte 0x40800010 # bge .L_80168A7C
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    stfs 0, 0x8(1)
    .4byte 0x48000058 # b .L_80168AD0
L_80168A7C:
    mr 4, 30
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800028 # blt .L_80168AB8
    cmplwi 0, 0x10
    .4byte 0x40800020 # bge .L_80168AB8
    clrlwi. 0, 3, 31
    .4byte 0x41820018 # beq .L_80168AB8
    lfs 1, 0x8(1)
    .4byte 0xC002A910 # lfs f0, lbl_8053D8B0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800001C # b .L_80168AD0
L_80168AB8:
    lfs 0, 0x8(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fsubs 0, 0, 30
    stfs 0, 0x8(1)
    .4byte 0x4180FF98 # blt .L_80168A64
L_80168AD0:
    lis 0, 0x4330
    lfs 2, 0x8(1)
    stw 29, 0x24(1)
    li 27, 0x0
    .4byte 0xC862A918 # lfd f3, lbl_8053D8B8@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    lfd 1, 0x20(1)
    stfs 2, 0x0(31)
    fsubs 2, 1, 3
    .4byte 0xC3C2A90C # lfs f30, lbl_8053D8AC@sda21(r0)
    stw 28, 0x1c(1)
    .4byte 0xC3E2A910 # lfs f31, lbl_8053D8B0@sda21(r0)
    stw 0, 0x18(1)
    lfd 1, 0x18(1)
    stfs 2, 0x8(1)
    fsubs 1, 1, 3
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
L_80168B1C:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80168B34
    stfs 30, 0xc(1)
    .4byte 0x48000044 # b .L_80168B74
L_80168B34:
    mr 4, 30
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800014 # blt .L_80168B5C
    cmplwi 0, 0x10
    .4byte 0x4080000C # bge .L_80168B5C
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_80168B74
L_80168B5C:
    lfs 0, 0xc(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fadds 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FFAC # blt .L_80168B1C
L_80168B74:
    lis 0, 0x4330
    lfs 2, 0xc(1)
    stw 28, 0x24(1)
    li 27, 0x0
    .4byte 0xC822A918 # lfd f1, lbl_8053D8B8@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3E2A910 # lfs f31, lbl_8053D8B0@sda21(r0)
    lfd 0, 0x20(1)
    stfs 2, 0xc(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(1)
L_80168BA0:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 31
    .4byte 0x40800010 # bge .L_80168BB8
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    stfs 0, 0xc(1)
    .4byte 0x48000058 # b .L_80168C0C
L_80168BB8:
    mr 4, 30
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800028 # blt .L_80168BF4
    cmplwi 0, 0x10
    .4byte 0x40800020 # bge .L_80168BF4
    clrlwi. 0, 3, 31
    .4byte 0x41820018 # beq .L_80168BF4
    lfs 1, 0xc(1)
    .4byte 0xC002A910 # lfs f0, lbl_8053D8B0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800001C # b .L_80168C0C
L_80168BF4:
    lfs 0, 0xc(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fsubs 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FF98 # blt .L_80168BA0
L_80168C0C:
    lfs 0, 0xc(1)
    stfs 0, 0x4(31)
L_80168C14:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80168C38:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    lwz 3, 0x90(3)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 31, -0x1
    lfs 2, 0x4(3)
    li 30, 0x0
    lfs 8, 0xc(29)
    lfs 9, 0x10(29)
    lfs 1, 0x60(29)
    fsubs 5, 0, 8
    stfs 0, 0x8(1)
    fsubs 4, 2, 9
    fadds 7, 1, 8
    .4byte 0xC002A920 # lfs f0, lbl_8053D8C0@sda21(r0)
    stfs 1, 0x1c(1)
    lfs 1, 0x64(29)
    fsubs 3, 7, 0
    stfs 2, 0xc(1)
    fadds 6, 1, 9
    stfs 1, 0x20(1)
    lfs 1, 0x68(29)
    fsubs 2, 6, 0
    stfs 5, 0x8(1)
    fadds 5, 1, 8
    stfs 1, 0x24(1)
    lfs 8, 0x6c(29)
    fadds 1, 5, 0
    stfs 4, 0xc(1)
    fadds 4, 8, 9
    stfs 8, 0x28(1)
    stfs 7, 0x1c(1)
    fadds 0, 4, 0
    stfs 6, 0x20(1)
    stfs 5, 0x24(1)
    stfs 4, 0x28(1)
    stfs 3, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
L_80168CF0:
    mr 3, 30
    bl fn_8023EA28
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820074 # beq .L_80168D74
    lwz 4, 0x90(29)
    mr 3, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80168D50
    lwz 4, 0x90(29)
    mr 3, 30
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_80168D74
    lwz 0, 0x90(29)
    cmpw 30, 0
    .4byte 0x4182003C # beq .L_80168D74
    mr 3, 30
    bl fn_80235580
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80168D74
L_80168D50:
    lwz 5, 0x4(29)
    mr 3, 30
    .4byte 0xC022A908 # lfs f1, lbl_8053D8A8@sda21(r0)
    addi 4, 1, 0x1c
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80168D74
    mr 31, 30
L_80168D74:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_80168CF0
    cmpwi 31, 0x0
    .4byte 0x418000D4 # blt .L_80168E58
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x418200A4 # beq .L_80168E38
    li 30, 0x0
L_80168D9C:
    mr 3, 30
    mr 4, 31
    bl fn_8022E438
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820078 # bne .L_80168E28
    li 0, 0x1
    mr 3, 30
    stb 0, 0x261(29)
    lwz 4, 0x198(29)
    bl fn_8022E23C
    mr 3, 30
    bl fn_8022CC20
    mr 3, 30
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_80168E28
    psq_l 1, 0xc(29), 0, 0
    mr 3, 30
    lfs 0, 0x14(29)
    psq_st 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    bl fn_8023E724
    addi 4, 1, 0x10
    psq_l 0, 0x0(3), 0, 0
    psq_l 2, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 0, 0x8(3), 1, 0
    mr 3, 30
    ps_sub 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    bl fn_8023DFF4
L_80168E28:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF6C # blt .L_80168D9C
    .4byte 0x4800001C # b .L_80168E50
L_80168E38:
    li 0, 0x1
    mr 3, 31
    stb 0, 0x261(29)
    lwz 4, 0x198(29)
    bl fn_8022E23C
    .4byte 0x48000010 # b .L_80168E5C
L_80168E50:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80168E5C
L_80168E58:
    li 3, 0x0
L_80168E5C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80168E78:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_80168F08
L_80168EA8:
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
L_80168F08:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80168EA8
    li 7, -0x1
    li 6, 0x0
    stw 7, 0x40(1)
    li 5, 0x1
    li 4, 0x3
    li 3, 0x2
    li 0, 0x11
    stw 7, 0x20(1)
    stw 6, 0x24(1)
    stw 6, 0x28(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 6, 0x2e(1)
    stb 5, 0x2f(1)
    stb 5, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 6, 0x33(1)
    stb 6, 0x34(1)
    stb 6, 0x35(1)
    stb 5, 0x36(1)
    stw 4, 0x38(1)
    stb 5, 0x3c(1)
    stb 6, 0x3d(1)
    stb 6, 0x3e(1)
    stw 6, 0x44(1)
    stw 3, 0x48(1)
    stw 0, 0x40(1)
    lwz 0, 0x4(31)
    lwz 3, 0x250(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x69
    .4byte 0x40800050 # bge .L_80168FE4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80466350@ha
    addi 5, 3, lbl_80466350@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A924 # lfs f1, lbl_8053D8C4@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x10
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80168FE4:
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
    addi 6, 6, 0x69
    bl fn_803075AC
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80169030:
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
    mr 30, 3
    lwz 3, 0x90(3)
    mr 31, 3
    bl fn_8022F478
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_80169094
    lwz 3, 0x90(30)
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80169094
    lwz 3, 0x90(30)
    bl fn_8022F3DC
    mr 31, 3
L_80169094:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820074 # bne .L_80169110
    lfs 3, 0x3c(30)
    lfs 1, 0x364(30)
    .4byte 0xC002A928 # lfs f0, lbl_8053D8C8@sda21(r0)
    fsubs 2, 3, 1
    fabs 2, 2
    frsp 2, 2
    fcmpo cr0, 2, 0
    .4byte 0x40810018 # ble .L_801690D4
    .4byte 0xC042A92C # lfs f2, lbl_8053D8CC@sda21(r0)
    addi 3, 30, 0x3c
    .4byte 0xC062A930 # lfs f3, lbl_8053D8D0@sda21(r0)
    bl fn_801F71A4
    .4byte 0x48000008 # b .L_801690D8
L_801690D4:
    stfs 3, 0x364(30)
L_801690D8:
    lfs 3, 0x40(30)
    lfs 1, 0x368(30)
    .4byte 0xC002A928 # lfs f0, lbl_8053D8C8@sda21(r0)
    fsubs 2, 3, 1
    fabs 2, 2
    frsp 2, 2
    fcmpo cr0, 2, 0
    .4byte 0x40810018 # ble .L_8016910C
    .4byte 0xC042A92C # lfs f2, lbl_8053D8CC@sda21(r0)
    addi 3, 30, 0x40
    .4byte 0xC062A930 # lfs f3, lbl_8053D8D0@sda21(r0)
    bl fn_801F71A4
    .4byte 0x48000008 # b .L_80169110
L_8016910C:
    stfs 3, 0x368(30)
L_80169110:
    .4byte 0xC022A934 # lfs f1, lbl_8053D8D4@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80169130
    li 0, 0x0
    stb 0, 0x11c(30)
L_80169130:
    lwz 0, 0x268(30)
    cmpwi 0, 0x5
    .4byte 0x40800114 # bge .L_8016924C
    mulli 4, 0, 0x18
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    addi 5, 1, 0x68
    stfs 0, 0x70(1)
    mr 3, 31
    addi 6, 4, 0x2f4
    stfs 0, 0x6c(1)
    add 6, 30, 6
    add 4, 30, 4
    stfs 0, 0x68(1)
    lfs 0, 0x0(6)
    stfs 0, 0x68(1)
    lfs 0, 0x4(6)
    stfs 0, 0x6c(1)
    lwz 4, 0x300(4)
    bl fn_8022BC38
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_801691B4
    mr 3, 31
    bl fn_8023E724
    lwz 0, 0x268(30)
    lfs 0, 0x0(3)
    mulli 4, 0, 0x18
    addi 4, 4, 0x2f4
    add 4, 30, 4
    stfs 0, 0x0(4)
    lfs 0, 0x4(3)
    stfs 0, 0x4(4)
    .4byte 0x4800009C # b .L_8016924C
L_801691B4:
    mr 3, 31
    bl fn_8023DE58
    lwz 0, 0x268(30)
    mulli 0, 0, 0x18
    add 4, 30, 0
    stw 3, 0x2fc(4)
    mr 3, 31
    bl fn_8023E724
    lwz 0, 0x268(30)
    lfs 0, 0x0(3)
    mulli 4, 0, 0x18
    addi 4, 4, 0x2ec
    add 4, 30, 4
    stfs 0, 0x0(4)
    lfs 0, 0x4(3)
    stfs 0, 0x4(4)
    lwz 3, 0x268(30)
    addi 0, 3, 0x1
    stw 0, 0x268(30)
    lwz 0, 0x268(30)
    cmpwi 0, 0x5
    .4byte 0x40800044 # bge .L_8016924C
    mr 3, 31
    bl fn_8023DE58
    lwz 0, 0x268(30)
    mulli 0, 0, 0x18
    add 4, 30, 0
    stw 3, 0x300(4)
    mr 3, 31
    bl fn_8023E724
    lwz 0, 0x268(30)
    lfs 0, 0x0(3)
    mulli 4, 0, 0x18
    addi 4, 4, 0x2f4
    add 4, 30, 4
    stfs 0, 0x0(4)
    lfs 0, 0x4(3)
    stfs 0, 0x4(4)
L_8016924C:
    addi 29, 30, 0xc
    psq_l 0, 0x3c(30), 0, 0
    psq_l 1, 0x0(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(29), 0, 0
    psq_l 1, 0x8(29), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(29), 1, 0
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x418205F8 # beq .L_80169870
    .4byte 0x408009F8 # bge .L_80169C74
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8016928C
    .4byte 0x480009EC # b .L_80169C74
L_8016928C:
    lfs 1, 0x3c(30)
    lfs 0, 0x364(30)
    .4byte 0xC042A924 # lfs f2, lbl_8053D8C4@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082021C # bne .L_801694C8
    lfs 1, 0x40(30)
    lfs 0, 0x368(30)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x408201FC # bne .L_801694C8
    lwz 0, 0x180(30)
    stw 0, 0x174(30)
    lfs 0, 0x364(30)
    stfs 0, 0x3c(30)
    lfs 0, 0x368(30)
    stfs 0, 0x40(30)
    lfs 0, 0x36c(30)
    stfs 0, 0x44(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x41820160 # beq .L_80169458
    lwz 4, 0x264(30)
    li 3, 0x1
    li 0, 0x0
    stw 4, 0x26c(30)
    stw 3, 0x230(30)
    stw 0, 0x174(30)
    lwz 29, 0x4(30)
    lwz 3, 0x90(30)
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x41820950 # beq .L_80169C74
    lwz 3, 0x264(30)
    cmpwi 3, 0x0
    .4byte 0x40810040 # ble .L_80169370
    subi 0, 3, 0x1
    lfs 1, 0xc(30)
    mulli 3, 0, 0x18
    lfs 0, 0x10(30)
    addi 3, 3, 0x27c
    add 3, 30, 3
    lfs 3, 0x0(3)
    lfs 2, 0x4(3)
    fsubs 31, 3, 1
    stfs 3, 0x48(1)
    fsubs 30, 2, 0
    stfs 2, 0x4c(1)
    stfs 31, 0x48(1)
    stfs 30, 0x4c(1)
    .4byte 0x48000050 # b .L_801693BC
L_80169370:
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x40810030 # ble .L_801693A8
    lfs 3, 0x2f4(30)
    lfs 2, 0x2f8(30)
    lfs 1, 0xc(30)
    lfs 0, 0x10(30)
    fsubs 31, 3, 1
    stfs 3, 0x40(1)
    fsubs 30, 2, 0
    stfs 2, 0x44(1)
    stfs 31, 0x40(1)
    stfs 30, 0x44(1)
    .4byte 0x48000018 # b .L_801693BC
L_801693A8:
    stw 3, 0x26c(30)
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(30)
    stw 0, 0x174(30)
L_801693BC:
    lis 3, lbl_80539D44@ha
    fmuls 2, 30, 30
    .4byte 0xC022A938 # lfs f1, lbl_8053D8D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmadds 4, 31, 31, 2
    fmuls 0, 1, 0
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_8016941C
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801693F4
    .4byte 0x48000024 # b .L_80169414
L_801693F4:
    frsqrte 3, 4
    .4byte 0xC042A93C # lfs f2, lbl_8053D8DC@sda21(r0)
    .4byte 0xC002A940 # lfs f0, lbl_8053D8E0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_80169414:
    fmuls 31, 31, 4
    fmuls 30, 30, 4
L_8016941C:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80169440
    .4byte 0xC002A944 # lfs f0, lbl_8053D8E4@sda21(r0)
    fmuls 1, 0, 31
    fmuls 0, 0, 30
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x48000838 # b .L_80169C74
L_80169440:
    .4byte 0xC002A948 # lfs f0, lbl_8053D8E8@sda21(r0)
    fmuls 1, 0, 31
    fmuls 0, 0, 30
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x48000820 # b .L_80169C74
L_80169458:
    lwz 3, 0x90(30)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0x0(29)
    lfs 4, 0x4(3)
    fsubs 3, 1, 0
    lfs 0, 0x4(29)
    stfs 1, 0x38(1)
    fsubs 2, 4, 0
    .4byte 0xC002A94C # lfs f0, lbl_8053D8EC@sda21(r0)
    fmuls 1, 3, 3
    stfs 4, 0x3c(1)
    fmadds 1, 2, 2, 1
    stfs 3, 0x38(1)
    stfs 2, 0x3c(1)
    fcmpo cr0, 1, 0
    .4byte 0x408000F4 # bge .L_8016958C
    lwz 3, 0x90(30)
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    li 0, 0x0
    lfs 1, 0x8(3)
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    psq_st 2, 0xc(30), 0, 0
    stfs 1, 0x14(30)
    stfs 0, 0x14(30)
    stb 0, 0x11c(30)
    .4byte 0x480007B0 # b .L_80169C74
L_801694C8:
    lwz 3, 0x264(30)
    cmpwi 3, 0x5
    .4byte 0x408000BC # bge .L_8016958C
    lbz 0, 0x17d(30)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80169500
    mulli 3, 3, 0x18
    lfs 0, 0xc(30)
    addi 3, 3, 0x274
    add 3, 30, 3
    stfs 0, 0x0(3)
    lfs 0, 0x10(30)
    stfs 0, 0x4(3)
    .4byte 0x48000090 # b .L_8016958C
L_80169500:
    mulli 0, 3, 0x18
    lwz 4, 0x4(30)
    add 3, 30, 0
    stw 4, 0x288(3)
    lwz 0, 0x264(30)
    lfs 0, 0xc(30)
    mulli 3, 0, 0x18
    addi 3, 3, 0x27c
    add 3, 30, 3
    stfs 0, 0x0(3)
    lfs 0, 0x10(30)
    stfs 0, 0x4(3)
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    cmpwi 0, 0x5
    .4byte 0x40800034 # bge .L_80169578
    mulli 0, 0, 0x18
    lwz 4, 0x4(30)
    add 3, 30, 0
    stw 4, 0x284(3)
    lwz 0, 0x264(30)
    lfs 0, 0xc(30)
    mulli 3, 0, 0x18
    addi 3, 3, 0x274
    add 3, 30, 3
    stfs 0, 0x0(3)
    lfs 0, 0x10(30)
    stfs 0, 0x4(3)
L_80169578:
    lwz 5, 0x4(30)
    mr 3, 30
    addi 4, 30, 0xc
    addi 6, 30, 0x370
    bl fn_8016890C
L_8016958C:
    lwz 4, 0x4(30)
    cmpwi 4, 0x0
    .4byte 0x4082001C # bne .L_801695B0
    .4byte 0xC022A950 # lfs f1, lbl_8053D8F0@sda21(r0)
    addi 3, 30, 0xc
    bl fn_801F6758
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820084 # beq .L_80169630
L_801695B0:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x41800094 # blt .L_8016964C
    lfs 0, 0x370(30)
    .4byte 0xC022A954 # lfs f1, lbl_8053D8F4@sda21(r0)
    lfs 2, 0xc(30)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x41820044 # beq .L_80169618
    lfs 0, 0x378(30)
    fadds 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x41820030 # beq .L_80169618
    lfs 0, 0x374(30)
    lfs 2, 0x10(30)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x41820018 # beq .L_80169618
    lfs 0, 0x37c(30)
    fadds 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80169620
L_80169618:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80169624
L_80169620:
    li 0, 0x0
L_80169624:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8016964C
L_80169630:
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x36c(30)
    stfs 0, 0x368(30)
    stfs 0, 0x364(30)
L_8016964C:
    mr 3, 31
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80169664
    li 0, 0x1
    stw 0, 0x244(30)
L_80169664:
    lwz 29, 0x8(30)
    lwz 3, 0x90(30)
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820014 # bne .L_80169688
    lwz 3, 0x90(30)
    bl fn_802373EC
    cmpwi 3, 0x3
    .4byte 0x4182000C # beq .L_80169690
L_80169688:
    li 0, 0x1
    stw 0, 0x244(30)
L_80169690:
    lwz 3, 0x90(30)
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820020 # bne .L_801696BC
    lwz 3, 0x90(30)
    bl fn_8022F478
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801696BC
    li 0, 0x1
    stw 0, 0x244(30)
L_801696BC:
    mr 3, 30
    bl fn_80168C38
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_801696DC
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x4182059C # beq .L_80169C74
L_801696DC:
    .4byte 0xC3E2A958 # lfs f31, lbl_8053D8F8@sda21(r0)
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8016970C
    li 0, 0x1
    stw 0, 0x254(30)
L_8016970C:
    lwz 29, 0x4(30)
    lwz 3, 0x90(30)
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x41820138 # beq .L_80169854
    lwz 3, 0x264(30)
    cmpwi 3, 0x0
    .4byte 0x40810040 # ble .L_80169768
    subi 0, 3, 0x1
    lfs 1, 0xc(30)
    mulli 3, 0, 0x18
    lfs 0, 0x10(30)
    addi 3, 3, 0x27c
    add 3, 30, 3
    lfs 3, 0x0(3)
    lfs 2, 0x4(3)
    fsubs 4, 3, 1
    stfs 3, 0x30(1)
    fsubs 5, 2, 0
    stfs 2, 0x34(1)
    stfs 4, 0x30(1)
    stfs 5, 0x34(1)
    .4byte 0x48000058 # b .L_801697BC
L_80169768:
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x40810030 # ble .L_801697A0
    lfs 3, 0x2f4(30)
    lfs 2, 0x2f8(30)
    lfs 1, 0xc(30)
    lfs 0, 0x10(30)
    fsubs 4, 3, 1
    stfs 3, 0x28(1)
    fsubs 5, 2, 0
    stfs 2, 0x2c(1)
    stfs 4, 0x28(1)
    stfs 5, 0x2c(1)
    .4byte 0x48000020 # b .L_801697BC
L_801697A0:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x174(30)
    lwz 3, 0x264(30)
    stw 3, 0x26c(30)
    stw 0, 0x230(30)
    .4byte 0x480004BC # b .L_80169C74
L_801697BC:
    lis 3, lbl_80539D44@ha
    fmuls 2, 5, 5
    .4byte 0xC022A938 # lfs f1, lbl_8053D8D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmadds 6, 4, 4, 2
    fmuls 0, 1, 0
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_8016981C
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801697F4
    .4byte 0x48000024 # b .L_80169814
L_801697F4:
    frsqrte 3, 6
    .4byte 0xC042A93C # lfs f2, lbl_8053D8DC@sda21(r0)
    .4byte 0xC002A940 # lfs f0, lbl_8053D8E0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_80169814:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_8016981C:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80169840
    .4byte 0xC002A944 # lfs f0, lbl_8053D8E4@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x48000018 # b .L_80169854
L_80169840:
    .4byte 0xC002A948 # lfs f0, lbl_8053D8E8@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
L_80169854:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x174(30)
    lwz 3, 0x264(30)
    stw 3, 0x26c(30)
    stw 0, 0x230(30)
    .4byte 0x48000408 # b .L_80169C74
L_80169870:
    lwz 3, 0x90(30)
    mr 5, 29
    lwz 4, 0x4(30)
    bl fn_8022BC38
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082015C # bne .L_801699E4
    mr 3, 31
    bl fn_8022D75C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_801698BC
    lwz 3, 0x90(30)
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820138 # bne .L_801699E4
    lwz 0, 0x90(30)
    cmpw 31, 0
    .4byte 0x4182012C # beq .L_801699E4
L_801698BC:
    lwz 3, 0x90(30)
    bl fn_8023E724
    lfs 3, 0x0(3)
    lfs 2, 0x4(3)
    lfs 1, 0xc(30)
    lfs 0, 0x10(30)
    lbz 0, 0x260(30)
    fsubs 4, 3, 1
    stfs 3, 0x20(1)
    fsubs 5, 2, 0
    cmplwi 0, 0x1
    stfs 2, 0x24(1)
    stfs 4, 0x20(1)
    stfs 5, 0x24(1)
    .4byte 0x40820010 # bne .L_80169904
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x4800036C # b .L_80169C6C
L_80169904:
    fmuls 1, 5, 5
    .4byte 0xC002A94C # lfs f0, lbl_8053D8EC@sda21(r0)
    fmadds 6, 4, 4, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800030 # bge .L_80169944
    lwz 3, 0x90(30)
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    li 0, 0x1
    lfs 1, 0x8(3)
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    psq_st 2, 0xc(30), 0, 0
    stfs 1, 0x14(30)
    stfs 0, 0x14(30)
    stb 0, 0x260(30)
    .4byte 0x4800032C # b .L_80169C6C
L_80169944:
    lis 3, lbl_80539D44@ha
    .4byte 0xC022A938 # lfs f1, lbl_8053D8D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_8016999C
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80169974
    .4byte 0x48000024 # b .L_80169994
L_80169974:
    frsqrte 3, 6
    .4byte 0xC042A93C # lfs f2, lbl_8053D8DC@sda21(r0)
    .4byte 0xC002A940 # lfs f0, lbl_8053D8E0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_80169994:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_8016999C:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_801699CC
    lbz 0, 0x261(30)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_801699CC
    .4byte 0xC002A944 # lfs f0, lbl_8053D8E4@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x480002A4 # b .L_80169C6C
L_801699CC:
    .4byte 0xC002A948 # lfs f0, lbl_8053D8E8@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x4800028C # b .L_80169C6C
L_801699E4:
    lwz 3, 0x26c(30)
    cmpwi 3, 0x0
    .4byte 0x40810040 # ble .L_80169A2C
    subi 0, 3, 0x1
    lfs 1, 0xc(30)
    mulli 3, 0, 0x18
    lfs 0, 0x10(30)
    addi 3, 3, 0x27c
    add 3, 30, 3
    lfs 3, 0x0(3)
    lfs 2, 0x4(3)
    fsubs 4, 3, 1
    stfs 3, 0x18(1)
    fsubs 5, 2, 0
    stfs 2, 0x1c(1)
    stfs 4, 0x18(1)
    stfs 5, 0x1c(1)
    .4byte 0x48000090 # b .L_80169AB8
L_80169A2C:
    lwz 3, 0x270(30)
    lwz 0, 0x268(30)
    cmpw 3, 0
    .4byte 0x4080003C # bge .L_80169A74
    mulli 3, 3, 0x18
    lfs 1, 0xc(30)
    lfs 0, 0x10(30)
    addi 3, 3, 0x2f4
    add 3, 30, 3
    lfs 3, 0x0(3)
    lfs 2, 0x4(3)
    fsubs 4, 3, 1
    stfs 3, 0x10(1)
    fsubs 5, 2, 0
    stfs 2, 0x14(1)
    stfs 4, 0x10(1)
    stfs 5, 0x14(1)
    .4byte 0x48000048 # b .L_80169AB8
L_80169A74:
    lwz 29, 0x4(30)
    mr 3, 31
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x408201F0 # bne .L_80169C74
    mr 3, 31
    bl fn_8023E724
    lfs 3, 0x0(3)
    lfs 2, 0x4(3)
    lfs 1, 0xc(30)
    lfs 0, 0x10(30)
    fsubs 4, 3, 1
    stfs 3, 0x8(1)
    fsubs 5, 2, 0
    stfs 2, 0xc(1)
    stfs 4, 0x8(1)
    stfs 5, 0xc(1)
L_80169AB8:
    lis 3, lbl_80539D44@ha
    fmuls 2, 5, 5
    .4byte 0xC022A938 # lfs f1, lbl_8053D8D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmadds 6, 4, 4, 2
    fmuls 0, 1, 0
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_80169B18
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80169AF0
    .4byte 0x48000024 # b .L_80169B10
L_80169AF0:
    frsqrte 3, 6
    .4byte 0xC042A93C # lfs f2, lbl_8053D8DC@sda21(r0)
    .4byte 0xC002A940 # lfs f0, lbl_8053D8E0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_80169B10:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_80169B18:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x40810028 # ble .L_80169B48
    lbz 0, 0x261(30)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80169B48
    .4byte 0xC002A944 # lfs f0, lbl_8053D8E4@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x48000018 # b .L_80169B5C
L_80169B48:
    .4byte 0xC002A948 # lfs f0, lbl_8053D8E8@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
L_80169B5C:
    lwz 4, 0x264(30)
    cmpwi 4, 0x0
    .4byte 0x40810010 # ble .L_80169B74
    lwz 0, 0x26c(30)
    cmpwi 0, 0x0
    .4byte 0x4181001C # bgt .L_80169B8C
L_80169B74:
    lwz 3, 0x268(30)
    cmpwi 3, 0x0
    .4byte 0x408100F0 # ble .L_80169C6C
    lwz 0, 0x270(30)
    cmpw 0, 3
    .4byte 0x408000E4 # bge .L_80169C6C
L_80169B8C:
    cmpwi 4, 0x0
    li 4, 0x1
    .4byte 0x40810024 # ble .L_80169BB8
    lwz 3, 0x26c(30)
    cmpwi 3, 0x0
    .4byte 0x40810018 # ble .L_80169BB8
    subi 0, 3, 0x1
    mulli 3, 0, 0x18
    addi 3, 3, 0x274
    add 3, 30, 3
    .4byte 0x48000018 # b .L_80169BCC
L_80169BB8:
    lwz 0, 0x270(30)
    li 4, 0x0
    mulli 3, 0, 0x18
    addi 3, 3, 0x2ec
    add 3, 30, 3
L_80169BCC:
    lfs 1, 0x8(3)
    lfs 0, 0xc(30)
    .4byte 0xC042A95C # lfs f2, lbl_8053D8FC@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820080 # bne .L_80169C6C
    lfs 1, 0xc(3)
    lfs 0, 0x10(30)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820060 # bne .L_80169C6C
    .4byte 0xC042A908 # lfs f2, lbl_8053D8A8@sda21(r0)
    clrlwi 0, 4, 24
    lfs 1, 0x0(3)
    cmplwi 0, 0x1
    stfs 2, 0x5c(1)
    lfs 0, 0x4(3)
    stfs 2, 0x60(1)
    lwz 0, 0x10(3)
    stfs 1, 0x5c(1)
    stfs 0, 0x60(1)
    stw 0, 0x4(30)
    psq_l 0, 0x5c(1), 0, 0
    stfs 2, 0x64(1)
    psq_st 0, 0xc(30), 0, 0
    stfs 2, 0x14(30)
    .4byte 0x40820014 # bne .L_80169C60
    lwz 3, 0x26c(30)
    subi 0, 3, 0x1
    stw 0, 0x26c(30)
    .4byte 0x48000010 # b .L_80169C6C
L_80169C60:
    lwz 3, 0x270(30)
    addi 0, 3, 0x1
    stw 0, 0x270(30)
L_80169C6C:
    mr 3, 30
    bl fn_80168C38
L_80169C74:
    lfs 2, 0x10(30)
    addi 4, 1, 0x50
    lfs 0, 0x14(30)
    lfs 1, 0xc(30)
    fsubs 2, 2, 0
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    stfs 1, 0x50(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x54(1)
    stfs 0, 0x58(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x234(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80169CB8
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_80169CB8:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80169CCC
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_80169CCC:
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80169CE0
    subi 0, 3, 0x1
    stw 0, 0x23c(30)
L_80169CE0:
    lwz 3, 0x240(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80169CF4
    subi 0, 3, 0x1
    stw 0, 0x240(30)
L_80169CF4:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80169D20
    lwz 3, 0x258(30)
    subi 0, 3, 0x1
    stw 0, 0x258(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_80169D20
    li 0, 0x0
    stb 0, 0x11c(30)
L_80169D20:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_80169D6C
    lwz 3, 0x250(30)
    li 0, 0x2
    addi 3, 3, 0x1
    stw 3, 0x250(30)
    lwz 3, 0x250(30)
    clrlwi 3, 3, 30
    stw 3, 0x250(30)
    stw 0, 0x234(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80169D6C
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x8d
    li 5, 0x0
    bl fn_801F0E34
L_80169D6C:
    .4byte 0xC022A908 # lfs f1, lbl_8053D8A8@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80169DA0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 30, 0xc
    lwz 5, 0x90(30)
    li 7, 0x0
    lwz 6, 0x4(30)
    li 8, 0x0
    bl fn_802A20F0
L_80169DA0:
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

fn_80169DCC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022A960 # lfs f1, lbl_8053D900@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC002A920 # lfs f0, lbl_8053D8C0@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 31
    stw 29, 0x14(1)
    li 29, 0x0
    lwz 3, 0x90(3)
    extrwi 3, 3, 3, 25
    stw 3, 0x98(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 23
    stw 3, 0x25c(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 30
    stw 3, 0x90(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    lfs 0, 0xc(31)
    stfs 0, 0x274(31)
    lfs 0, 0x10(31)
    stfs 0, 0x278(31)
    lwz 0, 0x4(31)
    stw 0, 0x284(31)
    lfs 0, 0xc(31)
    stfs 0, 0x28c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x290(31)
    lwz 0, 0x4(31)
    stw 0, 0x29c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2a4(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2a8(31)
    lwz 0, 0x4(31)
    stw 0, 0x2b4(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2bc(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c0(31)
    lwz 0, 0x4(31)
    stw 0, 0x2cc(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2d4(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2d8(31)
    lwz 0, 0x4(31)
    stw 0, 0x2e4(31)
L_80169EC4:
    lwz 3, 0x90(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x2f4(30)
    lfs 0, 0x4(3)
    stfs 0, 0x2f8(30)
    lwz 3, 0x90(31)
    bl fn_8023DE58
    addi 29, 29, 0x1
    stw 3, 0x300(30)
    cmpwi 29, 0x5
    addi 30, 30, 0x18
    .4byte 0x4180FFD0 # blt .L_80169EC4
    li 0, 0x0
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    stw 0, 0x264(31)
    mr 3, 31
    addi 4, 31, 0xc
    addi 6, 31, 0x370
    stw 0, 0x268(31)
    stw 0, 0x26c(31)
    stw 0, 0x270(31)
    stw 0, 0x250(31)
    stfs 0, 0x36c(31)
    stfs 0, 0x368(31)
    stfs 0, 0x364(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 5, 0x4(31)
    bl fn_8016890C
    lwz 0, 0x98(31)
    lis 5, lbl_804A0718@ha
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80539D44@ha
    slwi 0, 0, 2
    addi 5, 5, lbl_804A0718@l
    lwzx 0, 5, 0
    addi 4, 4, lbl_8052EBC0@l
    lfs 0, lbl_80539D44@l(3)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC022A938 # lfs f1, lbl_8053D8D8@sda21(r0)
    add 3, 4, 0
    .4byte 0xC062A964 # lfs f3, lbl_8053D904@sda21(r0)
    lfs 2, 0x4(3)
    fmuls 0, 1, 0
    lfsx 4, 4, 0
    fmuls 5, 3, 2
    fmuls 4, 3, 4
    fmuls 1, 5, 5
    fmadds 6, 4, 4, 1
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_80169FD8
    .4byte 0xC002A908 # lfs f0, lbl_8053D8A8@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80169FB0
    .4byte 0x48000024 # b .L_80169FD0
L_80169FB0:
    frsqrte 3, 6
    .4byte 0xC042A93C # lfs f2, lbl_8053D8DC@sda21(r0)
    .4byte 0xC002A940 # lfs f0, lbl_8053D8E0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_80169FD0:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_80169FD8:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80169FFC
    .4byte 0xC002A944 # lfs f0, lbl_8053D8E4@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    .4byte 0x48000018 # b .L_8016A010
L_80169FFC:
    .4byte 0xC002A948 # lfs f0, lbl_8053D8E8@sda21(r0)
    fmuls 1, 0, 4
    fmuls 0, 0, 5
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
L_8016A010:
    li 3, 0x0
    li 0, 0x4
    sth 3, 0x94(31)
    stw 0, 0x23c(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x3
    .4byte 0x40810020 # ble .L_8016A048
    lfs 0, 0x3c(31)
    .4byte 0xC022A968 # lfs f1, lbl_8053D908@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 0, 0x40(31)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
L_8016A048:
    li 4, 0x0
    li 3, 0x12c
    stw 4, 0x254(31)
    li 0, 0x3c
    .4byte 0xC002A96C # lfs f0, lbl_8053D90C@sda21(r0)
    stb 4, 0x260(31)
    stb 4, 0x261(31)
    stw 3, 0x258(31)
    stw 0, 0x180(31)
    stfs 0, 0x184(31)
    stw 4, 0x230(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016A090:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C07A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C07A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A0E0
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
L_8016A0E0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A118
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
L_8016A118:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A150
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
L_8016A150:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A188
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
L_8016A188:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A1C0
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
L_8016A1C0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A1F8
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
L_8016A1F8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A230
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
L_8016A230:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A268
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
L_8016A268:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016A2A0
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
L_8016A2A0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8016A2B4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x124(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016A2E4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x124(31)
    bl fn_800EC240
L_8016A2E4:
    lwz 0, 0x128(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016A300
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x128(31)
    bl fn_800EC240
L_8016A300:
    lwz 0, 0x12c(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016A31C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12c(31)
    bl fn_800EC240
L_8016A31C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8016A330:
    li 4, 0x0
    li 0, -0x1
    stb 4, 0x1ec(3)
    stb 4, 0x1ed(3)
    stb 4, 0x1ee(3)
    stb 4, 0x1ef(3)
    stb 4, 0x1f0(3)
    stb 4, 0x1f1(3)
    stb 4, 0x1f2(3)
    stb 4, 0x1f3(3)
    stb 4, 0x1f4(3)
    stb 4, 0x1f5(3)
    stb 4, 0x1c4(3)
    stb 4, 0x1c5(3)
    stb 4, 0x1c6(3)
    stb 4, 0x1c7(3)
    stb 4, 0x1c8(3)
    stb 4, 0x1c9(3)
    stb 4, 0x1ca(3)
    stb 4, 0x1cb(3)
    stb 4, 0x1cc(3)
    stb 4, 0x1cd(3)
    stb 4, 0x1ce(3)
    stb 4, 0x1cf(3)
    stb 4, 0x1d1(3)
    stb 4, 0x1d2(3)
    stb 4, 0x1d3(3)
    stw 0, 0x1d8(3)
    stb 4, 0x1dc(3)
    stb 4, 0x1dd(3)
    blr

fn_8016A3AC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0x24(3)
    blr

fn_8016A3BC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, 0x0
    stmw 18, 0x8(1)
    mr. 24, 3
    lwz 19, 0x48(1)
    mr 23, 5
    lwz 30, 0x4c(1)
    mr 22, 6
    lwz 28, 0x50(1)
    mr 21, 7
    lwz 27, 0x54(1)
    mr 20, 8
    lwz 26, 0x58(1)
    mr 18, 9
    mr 29, 10
    .4byte 0x41820024 # beq .L_8016A424
    lwz 12, 0x0(3)
    lis 6, 0x4a33
    mr 5, 4
    lwz 12, 0x18(12)
    addi 4, 6, 0x4420
    mtctr 12
    bctrl
    mr 0, 3
L_8016A424:
    cmplwi 0, 0x0
    .4byte 0x41820358 # beq .L_8016A780
    mr 3, 0
    mr 4, 18
    bl fn_800CC094
    cmplwi 23, 0x0
    mr 31, 3
    .4byte 0x41820040 # beq .L_8016A480
    mr 3, 24
    lis 4, 0x4a33
    lwz 12, 0x0(24)
    mr 5, 23
    addi 4, 4, 0x4420
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 4, 0x0
    bl fn_800CECCC
    stw 3, 0x0(30)
    mr 4, 31
    lwz 3, 0x0(30)
    bl fn_800C6210
    .4byte 0x48000014 # b .L_8016A490
L_8016A480:
    cmplwi 30, 0x0
    .4byte 0x4182000C # beq .L_8016A490
    li 0, 0x0
    stw 0, 0x0(30)
L_8016A490:
    cmplwi 22, 0x0
    .4byte 0x41820040 # beq .L_8016A4D4
    mr 3, 24
    lis 4, 0x4a33
    lwz 12, 0x0(24)
    mr 5, 22
    addi 4, 4, 0x4420
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 4, 0x0
    bl fn_800CECCC
    stw 3, 0x0(28)
    mr 4, 31
    lwz 3, 0x0(28)
    bl fn_800C6210
    .4byte 0x48000014 # b .L_8016A4E4
L_8016A4D4:
    cmplwi 28, 0x0
    .4byte 0x4182000C # beq .L_8016A4E4
    li 0, 0x0
    stw 0, 0x0(28)
L_8016A4E4:
    cmplwi 21, 0x0
    .4byte 0x41820040 # beq .L_8016A528
    mr 3, 24
    lis 4, 0x4a33
    lwz 12, 0x0(24)
    mr 5, 21
    addi 4, 4, 0x4420
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 4, 0x0
    bl fn_800CECCC
    stw 3, 0x0(27)
    mr 4, 31
    lwz 3, 0x0(27)
    bl fn_800C68CC
    .4byte 0x48000014 # b .L_8016A538
L_8016A528:
    cmplwi 27, 0x0
    .4byte 0x4182000C # beq .L_8016A538
    li 0, 0x0
    stw 0, 0x0(27)
L_8016A538:
    cmplwi 20, 0x0
    .4byte 0x41820040 # beq .L_8016A57C
    mr 3, 24
    lis 4, 0x4a33
    lwz 12, 0x0(24)
    mr 5, 20
    addi 4, 4, 0x4420
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 4, 0x0
    bl fn_800CECCC
    stw 3, 0x0(26)
    mr 4, 31
    lwz 3, 0x0(26)
    bl fn_800C68CC
    .4byte 0x48000014 # b .L_8016A58C
L_8016A57C:
    cmplwi 26, 0x0
    .4byte 0x4182000C # beq .L_8016A58C
    li 0, 0x0
    stw 0, 0x0(26)
L_8016A58C:
    li 25, 0x0
    .4byte 0x480000FC # b .L_8016A68C
L_8016A594:
    mr 4, 29
    li 3, 0xf4
    li 5, 0x0
    bl fn_8008440C
    mr. 24, 3
    .4byte 0x418200B8 # beq .L_8016A660
    lis 3, lbl_8049AA18@ha
    lis 4, fn_800DFA80@ha
    addi 0, 3, lbl_8049AA18@l
    li 6, 0x8
    lis 3, dtor_800C781C@ha
    stw 0, 0x0(24)
    addi 5, 3, dtor_800C781C@l
    addi 4, 4, fn_800DFA80@l
    addi 3, 24, 0x4
    li 7, 0x2
    bl __construct_array
    lis 3, fn_800DFABC@ha
    lis 5, dtor_800C7858@ha
    addi 4, 3, fn_800DFABC@l
    li 6, 0x8
    addi 3, 24, 0x14
    addi 5, 5, dtor_800C7858@l
    li 7, 0x8
    bl __construct_array
    lis 3, fn_800DFA98@ha
    lis 5, dtor_800C7894@ha
    addi 4, 3, fn_800DFA98@l
    li 6, 0xc
    addi 3, 24, 0x54
    addi 5, 5, dtor_800C7894@l
    li 7, 0x8
    bl __construct_array
    lis 3, fn_800DFAEC@ha
    lis 5, dtor_800C78DC@ha
    addi 4, 3, fn_800DFAEC@l
    li 6, 0x8
    addi 3, 24, 0xb4
    addi 5, 5, dtor_800C78DC@l
    li 7, 0x4
    bl __construct_array
    lis 3, fn_800DFAD4@ha
    lis 5, dtor_800C7918@ha
    addi 4, 3, fn_800DFAD4@l
    li 6, 0x8
    addi 3, 24, 0xd4
    addi 5, 5, dtor_800C7918@l
    li 7, 0x4
    bl __construct_array
    mr 3, 24
    bl fn_800C73EC
L_8016A660:
    lwz 3, 0x60(31)
    clrlslwi 18, 25, 16, 2
    lwzx 3, 3, 18
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lwz 3, 0x60(31)
    addi 25, 25, 0x1
    lwzx 3, 3, 18
    stw 24, 0x3c(3)
L_8016A68C:
    lhz 0, 0x5c(31)
    clrlwi 3, 25, 16
    cmplw 3, 0
    .4byte 0x4180FEFC # blt .L_8016A594
    cmplwi 23, 0x0
    .4byte 0x41820020 # beq .L_8016A6C0
    lwz 4, 0x0(30)
    addi 3, 31, 0x58
    bl fn_800DFB04
    lis 5, lbl_80536C50@ha
    mr 4, 3
    addi 3, 5, lbl_80536C50@l
    bl fn_800BB5EC
L_8016A6C0:
    cmplwi 22, 0x0
    .4byte 0x41820020 # beq .L_8016A6E4
    lwz 4, 0x0(28)
    addi 3, 31, 0x58
    bl fn_800DFB04
    lis 5, lbl_80536C50@ha
    mr 4, 3
    addi 3, 5, lbl_80536C50@l
    bl fn_800BB5EC
L_8016A6E4:
    cmplwi 21, 0x0
    .4byte 0x41820020 # beq .L_8016A708
    lwz 4, 0x0(27)
    addi 3, 31, 0x58
    bl fn_800DFD94
    lis 5, lbl_80536C50@ha
    mr 4, 3
    addi 3, 5, lbl_80536C50@l
    bl fn_800BB5EC
L_8016A708:
    cmplwi 20, 0x0
    .4byte 0x41820020 # beq .L_8016A72C
    lwz 4, 0x0(26)
    addi 3, 31, 0x58
    bl fn_800DFD94
    lis 5, lbl_80536C50@ha
    mr 4, 3
    addi 3, 5, lbl_80536C50@l
    bl fn_800BB5EC
L_8016A72C:
    mr 4, 29
    li 3, 0xdc
    li 5, 0x0
    bl fn_8008440C
    mr. 20, 3
    .4byte 0x41820038 # beq .L_8016A778
    lis 3, lbl_8049A8B8@ha
    mr 18, 20
    addi 0, 3, lbl_8049A8B8@l
    stw 0, 0x0(20)
    addi 3, 18, 0x88
    bl fn_800BB6E0
    mr 3, 18
    bl fn_800C2710
    mr 3, 18
    mr 4, 31
    li 5, 0x0
    li 6, 0x1
    bl fn_800C2794
L_8016A778:
    stw 20, 0x0(19)
    .4byte 0x4800004C # b .L_8016A7C8
L_8016A780:
    cmplwi 30, 0x0
    .4byte 0x4182000C # beq .L_8016A790
    li 0, 0x0
    stw 0, 0x0(30)
L_8016A790:
    cmplwi 28, 0x0
    .4byte 0x4182000C # beq .L_8016A7A0
    li 0, 0x0
    stw 0, 0x0(28)
L_8016A7A0:
    cmplwi 27, 0x0
    .4byte 0x4182000C # beq .L_8016A7B0
    li 0, 0x0
    stw 0, 0x0(27)
L_8016A7B0:
    cmplwi 26, 0x0
    .4byte 0x4182000C # beq .L_8016A7C0
    li 0, 0x0
    stw 0, 0x0(26)
L_8016A7C0:
    li 0, 0x0
    stw 0, 0x0(19)
L_8016A7C8:
    lmw 18, 0x8(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8016A7DC:
    stwu 1, -0x60(1)
    mflr 0
    cmpwi 6, 0x1
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 4
    .4byte 0x40820034 # bne .L_8016A828
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_8016A810
    li 0, 0x1
    .4byte 0x48000014 # b .L_8016A820
L_8016A810:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_8016A820:
    clrlwi. 0, 0, 24
    .4byte 0x408201B4 # bne .L_8016A9D8
L_8016A828:
    slwi 0, 6, 10
    lis 3, 0x4330
    xoris 4, 0, 0x8000
    stw 3, 0x48(1)
    .4byte 0xC882A9A8 # lfd f4, lbl_8053D948@sda21(r0)
    clrlwi. 0, 7, 24
    stw 4, 0x4c(1)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfd 0, 0x48(1)
    .4byte 0xC062A9B0 # lfs f3, lbl_8053D950@sda21(r0)
    fsubs 0, 0, 4
    lwz 4, 0x24(4)
    fmuls 6, 3, 0
    .4byte 0x4182004C # beq .L_8016A8A8
    lfs 3, 0x10(4)
    .4byte 0xC002A9B4 # lfs f0, lbl_8053D954@sda21(r0)
    fneg 3, 3
    stw 3, 0x50(1)
    fmuls 5, 3, 1
    fmuls 0, 5, 0
    fsubs 3, 3, 5
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    slwi 0, 0, 9
    xoris 0, 0, 0x8000
    stw 0, 0x54(1)
    lfd 0, 0x50(1)
    fsubs 0, 0, 4
    fadds 0, 3, 0
    stfs 0, 0x8(1)
    .4byte 0x4800000C # b .L_8016A8B0
L_8016A8A8:
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    stfs 0, 0x8(1)
L_8016A8B0:
    clrlwi. 0, 8, 24
    .4byte 0x41820054 # beq .L_8016A908
    lfs 3, 0x20(4)
    lis 0, 0x4330
    .4byte 0xC002A9B4 # lfs f0, lbl_8053D954@sda21(r0)
    fneg 4, 3
    stw 0, 0x48(1)
    .4byte 0xC862A9A8 # lfd f3, lbl_8053D948@sda21(r0)
    fmuls 1, 4, 1
    fmuls 0, 1, 0
    fsubs 1, 4, 1
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    slwi 0, 0, 9
    xoris 0, 0, 0x8000
    stw 0, 0x4c(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 3
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800000C # b .L_8016A910
L_8016A908:
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    stfs 0, 0xc(1)
L_8016A910:
    lfs 0, 0xc(1)
    addi 3, 1, 0x14
    .4byte 0xC082A9A4 # lfs f4, lbl_8053D944@sda21(r0)
    addi 4, 31, 0x24
    fadds 0, 0, 6
    .4byte 0xC0A2A99C # lfs f5, lbl_8053D93C@sda21(r0)
    stfs 6, 0x10(1)
    psq_l 3, 0x0(5), 0, 0
    stfs 0, 0xc(1)
    psq_l 1, 0x10(1), 1, 0
    psq_l 6, 0x8(1), 0, 0
    psq_l 0, 0x8(5), 1, 0
    ps_add 3, 6, 3
    stfs 5, 0x14(1)
    ps_add 0, 1, 0
    stfs 4, 0x18(1)
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 3, 0x8(1)
    lfs 1, 0xc(1)
    lfs 0, 0x10(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x20(1)
    stfs 4, 0x24(1)
    stfs 4, 0x28(1)
    stfs 5, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 4, 0x34(1)
    stfs 5, 0x38(1)
    stfs 4, 0x3c(1)
    stfs 0, 0x40(1)
    stfs 2, 0x18(31)
    stfs 5, 0x1c(31)
    stfs 2, 0x20(31)
    bl PSMTXCopy
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
L_8016A9D8:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8016A9EC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1dd(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AA38
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, -0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9A0 # lfs f1, lbl_8053D940@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xec(3)
    bl fn_8016A7DC
L_8016AA38:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AA48:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1f5(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AA94
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9B0 # lfs f1, lbl_8053D950@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9C0 # lfs f2, lbl_8053D960@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xe0(3)
    bl fn_8016A7DC
L_8016AA94:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AAA4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1dc(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AAF0
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9B0 # lfs f1, lbl_8053D950@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A99C # lfs f2, lbl_8053D93C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xcc(3)
    bl fn_8016A7DC
L_8016AAF0:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AB00:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1f4(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AB4C
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xd4(3)
    bl fn_8016A7DC
L_8016AB4C:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AB5C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x1d8(3)
    cmpwi 0, 0x0
    .4byte 0x40810038 # ble .L_8016ABA8
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xc0(3)
    bl fn_8016A7DC
L_8016ABA8:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016ABB8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1f3(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AC04
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xb4(3)
    bl fn_8016A7DC
L_8016AC04:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AC14:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1f2(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AC60
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0x9c(3)
    bl fn_8016A7DC
L_8016AC60:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AC70:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1f1(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016ACBC
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9B0 # lfs f1, lbl_8053D950@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0x90(3)
    bl fn_8016A7DC
L_8016ACBC:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016ACCC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1f0(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AD18
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0x84(3)
    bl fn_8016A7DC
L_8016AD18:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AD28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1ef(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016AD74
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0x28(3)
    bl fn_8016A7DC
L_8016AD74:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016AD84:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1ed(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016ADD0
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9B0 # lfs f1, lbl_8053D950@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9C0 # lfs f2, lbl_8053D960@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0x1c(3)
    bl fn_8016A7DC
L_8016ADD0:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016ADE0:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stfd 28, 0x70(1)
    psq_st 28, 0x78(1), 0, 0
    stfd 27, 0x60(1)
    psq_st 27, 0x68(1), 0, 0
    stfd 26, 0x50(1)
    psq_st 26, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    mr 31, 3
    lbz 0, 0x1ec(3)
    cmplwi 0, 0x0
    .4byte 0x418201E4 # beq .L_8016B010
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 5, 0x4330
    stw 5, 0x28(1)
    lwz 7, 0x20(3)
    stw 5, 0x30(1)
    lwz 4, 0x2380(7)
    lwz 0, 0x2384(7)
    xoris 4, 4, 0x8000
    .4byte 0x80CD8DC0 # lwz r6, lbl_8053A980@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x2c(1)
    lwz 7, 0x4(6)
    stw 0, 0x34(1)
    .4byte 0xC902A9A8 # lfd f8, lbl_8053D948@sda21(r0)
    lfd 0, 0x28(1)
    lfd 1, 0x30(1)
    fsubs 0, 0, 8
    .4byte 0xC0C2A998 # lfs f6, lbl_8053D938@sda21(r0)
    fsubs 5, 1, 8
    lwz 8, 0x24(3)
    lhz 4, 0x4(7)
    fdivs 11, 6, 0
    xoris 6, 4, 0x8000
    lhz 0, 0x6(7)
    .4byte 0xC042A99C # lfs f2, lbl_8053D93C@sda21(r0)
    lfs 0, 0x858(8)
    xoris 4, 0, 0x8000
    fdivs 9, 2, 0
    lwz 0, 0x1c0(31)
    lfs 1, 0x10(8)
    clrlwi 0, 0, 21
    lfs 0, 0x20(8)
    xoris 0, 0, 0x8000
    fneg 1, 1
    stw 6, 0x3c(1)
    fdivs 10, 6, 5
    .4byte 0xC0E2A9C4 # lfs f7, lbl_8053D964@sda21(r0)
    stw 5, 0x38(1)
    .4byte 0xC082A9A0 # lfs f4, lbl_8053D940@sda21(r0)
    lfd 3, 0x38(1)
    stw 4, 0x44(1)
    stw 5, 0x40(1)
    fsubs 3, 3, 8
    fneg 0, 0
    lfd 2, 0x40(1)
    fmuls 29, 1, 11
    fmuls 3, 11, 3
    stw 0, 0x24(1)
    fsubs 2, 2, 8
    stw 5, 0x20(1)
    fmuls 28, 0, 10
    fmuls 3, 4, 3
    lfd 5, 0x20(1)
    fmuls 2, 10, 2
    stw 6, 0x14(1)
    fsubs 5, 5, 8
    fmuls 2, 4, 2
    stw 5, 0x10(1)
    fmuls 31, 9, 3
    fmuls 4, 7, 5
    lfd 6, 0x10(1)
    stw 4, 0x1c(1)
    fsubs 27, 6, 8
    stw 5, 0x18(1)
    fmuls 30, 9, 2
    fsubs 29, 29, 4
    lfd 0, 0x18(1)
    fsubs 28, 28, 4
    fsubs 26, 0, 8
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    lwz 3, 0xf4(31)
    li 4, 0x0
    bl fn_80092984
    .4byte 0x80A20F98 # lwz r5, lbl_80543F38@sda21(r0)
    addi 4, 1, 0xc
    lbz 0, 0x1ec(31)
    li 3, 0x1
    stw 5, 0x8(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 3, 0xcc01
    fsubs 3, 29, 31
    stfs 0, -0x8000(3)
    fsubs 1, 28, 30
    fadds 2, 29, 31
    stfs 0, -0x8000(3)
    fadds 4, 28, 30
    stfs 0, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 26, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 26, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 4, -0x8000(3)
L_8016B010:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    psq_l 28, 0x78(1), 0, 0
    lfd 28, 0x70(1)
    psq_l 27, 0x68(1), 0, 0
    lfd 27, 0x60(1)
    psq_l 26, 0x58(1), 0, 0
    lfd 26, 0x50(1)
    lwz 0, 0xb4(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_8016B054:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1d3(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016B0A0
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, -0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9BC # lfs f2, lbl_8053D95C@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xa8(3)
    bl fn_8016A7DC
L_8016B0A0:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016B0B0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 28, 3
    lbz 0, 0x1cf(3)
    cmplwi 0, 0x0
    .4byte 0x41820140 # beq .L_8016B220
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 31, 28
    .4byte 0xC022A9C8 # lfs f1, lbl_8053D968@sda21(r0)
    li 29, 0x0
    lwz 30, 0x24(3)
    lfs 0, 0x858(30)
    fdivs 31, 1, 0
L_8016B100:
    lwz 0, 0x3c(31)
    cmplwi 0, 0x0
    .4byte 0x41820108 # beq .L_8016B210
    cmpwi 29, 0x3
    .4byte 0x40820010 # bne .L_8016B120
    lbz 0, 0x1d0(28)
    cmplwi 0, 0x0
    .4byte 0x418200F4 # beq .L_8016B210
L_8016B120:
    cmpwi 29, 0x1
    .4byte 0x4182000C # beq .L_8016B130
    cmpwi 29, 0x2
    .4byte 0x40820010 # bne .L_8016B13C
L_8016B130:
    lbz 0, 0x1d0(28)
    cmplwi 0, 0x0
    .4byte 0x408200D8 # bne .L_8016B210
L_8016B13C:
    xoris 3, 29, 0x8000
    lis 0, 0x4330
    stw 3, 0x3c(1)
    addi 3, 1, 0x8
    lfs 0, 0x10(30)
    stw 0, 0x38(1)
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    fneg 5, 0
    lfd 0, 0x38(1)
    .4byte 0xC082A9D0 # lfs f4, lbl_8053D970@sda21(r0)
    fsubs 3, 0, 1
    .4byte 0xC022A9CC # lfs f1, lbl_8053D96C@sda21(r0)
    lfs 2, 0x20(30)
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    fnmsubs 4, 4, 3, 1
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    .4byte 0xC062A9D4 # lfs f3, lbl_8053D974@sda21(r0)
    stfs 1, 0x8(1)
    fsubs 2, 4, 2
    stfs 0, 0xc(1)
    fadds 2, 3, 2
    stfs 0, 0x10(1)
    stfs 5, 0x14(1)
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 2, 0x24(1)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 4, 0x34(1)
    lwz 4, 0x3c(31)
    stfs 31, 0x18(4)
    stfs 31, 0x1c(4)
    stfs 31, 0x20(4)
    lwz 4, 0x3c(31)
    addi 4, 4, 0x24
    bl PSMTXCopy
    lwz 3, 0x3c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x3c(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0x3c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
L_8016B210:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmpwi 29, 0x6
    .4byte 0x4180FEE4 # blt .L_8016B100
L_8016B220:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8016B248:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    mr 31, 3
    lwz 0, 0x120(3)
    cmplwi 0, 0x0
    .4byte 0x4182023C # beq .L_8016B4B0
    lbz 0, 0x1ce(31)
    cmplwi 0, 0x0
    .4byte 0x41820230 # beq .L_8016B4B0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 5, 0x4330
    .4byte 0xC162A99C # lfs f11, lbl_8053D93C@sda21(r0)
    lwz 6, 0x20(3)
    .4byte 0xC0C2A9A4 # lfs f6, lbl_8053D944@sda21(r0)
    lwz 4, 0x2380(6)
    lwz 7, 0x24(3)
    fmuls 5, 6, 11
    xoris 4, 4, 0x8000
    .4byte 0xC142A9A0 # lfs f10, lbl_8053D940@sda21(r0)
    lwz 0, 0x2384(6)
    stw 4, 0x4c(1)
    xoris 0, 0, 0x8000
    .4byte 0xC802A9A8 # lfd f0, lbl_8053D948@sda21(r0)
    stw 5, 0x48(1)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfd 1, 0x48(1)
    stw 0, 0x54(1)
    fsubs 1, 1, 0
    .4byte 0xC0E2A998 # lfs f7, lbl_8053D938@sda21(r0)
    stw 5, 0x50(1)
    lwz 4, 0x4(4)
    lfd 2, 0x50(1)
    fdivs 31, 7, 1
    lfs 1, 0x858(7)
    lfs 4, 0x10(7)
    stfs 6, 0x28(1)
    lhz 0, 0x4(4)
    lhz 6, 0x6(4)
    xoris 4, 0, 0x8000
    xoris 0, 6, 0x8000
    fsubs 2, 2, 0
    stfs 6, 0x34(1)
    fdivs 12, 11, 1
    lfs 9, 0x20(7)
    stw 4, 0x5c(1)
    .4byte 0xC062A9B0 # lfs f3, lbl_8053D950@sda21(r0)
    stw 5, 0x58(1)
    .4byte 0xC022A9DC # lfs f1, lbl_8053D97C@sda21(r0)
    fdivs 13, 7, 2
    stw 0, 0x64(1)
    lfd 8, 0x58(1)
    stw 5, 0x60(1)
    .4byte 0xC042A9D8 # lfs f2, lbl_8053D978@sda21(r0)
    lfd 6, 0x60(1)
    fneg 4, 4
    stfs 10, 0x14(1)
    stfs 10, 0x18(1)
    fmuls 7, 4, 31
    fneg 4, 9
    stfs 11, 0x8(1)
    fsubs 9, 8, 0
    fsubs 8, 6, 0
    stfs 1, 0xc(1)
    fmuls 6, 4, 13
    fmuls 9, 31, 9
    stfs 7, 0x2c(1)
    fsubs 4, 7, 3
    fmuls 7, 13, 8
    stfs 6, 0x30(1)
    fsubs 3, 6, 10
    fmuls 8, 10, 9
    stfs 4, 0x2c(1)
    fmuls 6, 10, 7
    stfs 3, 0x30(1)
    fmuls 4, 12, 8
    psq_l 31, 0x14(1), 0, 0
    fmuls 3, 12, 6
    psq_l 6, 0x2c(1), 0, 0
    psq_l 1, 0x8(1), 0, 0
    stfs 4, 0x20(1)
    ps_mul 4, 6, 31
    stfs 3, 0x24(1)
    psq_st 4, 0x2c(1), 0, 0
    psq_l 6, 0x20(1), 0, 0
    lfs 3, 0x30(1)
    lfs 4, 0x2c(1)
    fadds 2, 3, 2
    stw 4, 0x3c(1)
    ps_mul 3, 6, 1
    stw 5, 0x38(1)
    fadds 4, 4, 10
    lfd 1, 0x38(1)
    stw 0, 0x44(1)
    fsubs 31, 1, 0
    stw 5, 0x40(1)
    lfd 1, 0x40(1)
    stfs 11, 0x1c(1)
    fsubs 30, 1, 0
    stfs 5, 0x34(1)
    stfs 4, 0x2c(1)
    stfs 2, 0x30(1)
    stfs 11, 0x10(1)
    psq_st 3, 0x20(1), 0, 0
    stfs 5, 0x28(1)
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    lwz 3, 0x120(31)
    li 4, 0x0
    bl fn_80092984
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 3, 0xcc01
    lfs 2, 0x2c(1)
    stfs 0, -0x8000(3)
    lfs 1, 0x20(1)
    stfs 0, -0x8000(3)
    fsubs 5, 2, 1
    lfs 4, 0x30(1)
    lfs 3, 0x24(1)
    fadds 2, 2, 1
    stfs 0, -0x8000(3)
    fsubs 1, 4, 3
    stfs 5, -0x8000(3)
    fadds 3, 4, 3
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
L_8016B4B0:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    lwz 0, 0x94(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8016B4D4:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stw 31, 0xac(1)
    mr 31, 3
    lbz 0, 0x1cc(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8016B510
    lwz 0, 0x110(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8016B528
L_8016B510:
    lbz 0, 0x1cd(31)
    cmplwi 0, 0x0
    .4byte 0x41820370 # beq .L_8016B888
    lwz 0, 0x118(31)
    cmplwi 0, 0x0
    .4byte 0x41820364 # beq .L_8016B888
L_8016B528:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 5, 0x4330
    .4byte 0x80CD8DC0 # lwz r6, lbl_8053A980@sda21(r0)
    lwz 7, 0x20(3)
    lwz 8, 0x24(3)
    lwz 4, 0x2380(7)
    lwz 0, 0x2384(7)
    xoris 4, 4, 0x8000
    lwz 7, 0x4(6)
    xoris 0, 0, 0x8000
    stw 4, 0x84(1)
    lhz 4, 0x4(7)
    stw 5, 0x80(1)
    .4byte 0xC982A9A8 # lfd f12, lbl_8053D948@sda21(r0)
    xoris 6, 4, 0x8000
    lfd 0, 0x80(1)
    stw 0, 0x8c(1)
    fsubs 0, 0, 12
    .4byte 0xC0A2A998 # lfs f5, lbl_8053D938@sda21(r0)
    stw 5, 0x88(1)
    lhz 0, 0x6(7)
    lfd 1, 0x88(1)
    fdivs 6, 5, 0
    xoris 4, 0, 0x8000
    lwz 0, 0x1c0(31)
    .4byte 0xC142A99C # lfs f10, lbl_8053D93C@sda21(r0)
    lfs 0, 0x858(8)
    clrlwi 0, 0, 20
    fsubs 3, 1, 12
    xoris 0, 0, 0x8000
    lfs 9, 0x20(8)
    fdivs 8, 10, 0
    lfs 0, 0x10(8)
    stw 6, 0x94(1)
    .4byte 0xC0E2A9A4 # lfs f7, lbl_8053D944@sda21(r0)
    stw 5, 0x90(1)
    .4byte 0xC082A9A0 # lfs f4, lbl_8053D940@sda21(r0)
    lfd 2, 0x90(1)
    fneg 1, 0
    fdivs 13, 5, 3
    stw 4, 0x9c(1)
    .4byte 0xC162A9E0 # lfs f11, lbl_8053D980@sda21(r0)
    stw 5, 0x98(1)
    lfd 0, 0x98(1)
    stw 0, 0x7c(1)
    fsubs 3, 2, 12
    stw 5, 0x78(1)
    fsubs 2, 0, 12
    fneg 0, 9
    lfd 5, 0x78(1)
    fmuls 3, 6, 3
    fmuls 2, 13, 2
    stw 6, 0x6c(1)
    fsubs 5, 5, 12
    fmuls 3, 4, 3
    stw 5, 0x68(1)
    fmuls 2, 4, 2
    fmuls 6, 1, 6
    lfd 1, 0x68(1)
    fmuls 9, 8, 3
    fmuls 8, 8, 2
    stw 4, 0x74(1)
    fmuls 3, 0, 13
    stw 5, 0x70(1)
    fsubs 31, 1, 12
    fmuls 13, 11, 5
    lfd 0, 0x70(1)
    stfs 9, 0x44(1)
    fsubs 30, 0, 12
    stfs 8, 0x48(1)
    stfs 7, 0x4c(1)
    stfs 6, 0x5c(1)
    stfs 3, 0x60(1)
    .4byte 0xC0A2A9E4 # lfs f5, lbl_8053D984@sda21(r0)
    frsp 1, 7
    .4byte 0xC042A9DC # lfs f2, lbl_8053D97C@sda21(r0)
    fmuls 4, 7, 10
    stfs 10, 0x2c(1)
    .4byte 0xC002A9B0 # lfs f0, lbl_8053D950@sda21(r0)
    fmuls 1, 1, 10
    stfs 5, 0x30(1)
    psq_l 12, 0x5c(1), 0, 0
    psq_l 11, 0x2c(1), 0, 0
    stfs 7, 0x64(1)
    ps_mul 11, 12, 11
    psq_l 12, 0x44(1), 0, 0
    stfs 6, 0x50(1)
    stfs 3, 0x54(1)
    psq_st 11, 0x5c(1), 0, 0
    psq_l 6, 0x50(1), 0, 0
    lfs 3, 0x5c(1)
    stfs 7, 0x58(1)
    fsubs 3, 3, 13
    stfs 7, 0x40(1)
    stfs 9, 0x38(1)
    stfs 8, 0x3c(1)
    stfs 10, 0x20(1)
    psq_l 7, 0x38(1), 0, 0
    stfs 5, 0x24(1)
    psq_l 5, 0x20(1), 0, 0
    stfs 10, 0x14(1)
    ps_mul 5, 12, 5
    stfs 2, 0x18(1)
    psq_l 2, 0x14(1), 0, 0
    stfs 10, 0x8(1)
    ps_mul 2, 6, 2
    stfs 0, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    stfs 10, 0x34(1)
    ps_mul 0, 7, 0
    stfs 4, 0x64(1)
    stfs 10, 0x28(1)
    psq_st 5, 0x44(1), 0, 0
    stfs 4, 0x4c(1)
    stfs 3, 0x5c(1)
    stfs 10, 0x1c(1)
    psq_st 2, 0x50(1), 0, 0
    stfs 1, 0x58(1)
    stfs 10, 0x10(1)
    psq_st 0, 0x38(1), 0, 0
    stfs 1, 0x40(1)
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    lbz 0, 0x1cc(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016B744
    lwz 3, 0x114(31)
    li 4, 0x0
    bl fn_80092984
    .4byte 0x48000010 # b .L_8016B750
L_8016B744:
    lwz 3, 0x11c(31)
    li 4, 0x0
    bl fn_80092984
L_8016B750:
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 3, 0xcc01
    lfs 2, 0x5c(1)
    stfs 0, -0x8000(3)
    lfs 1, 0x44(1)
    stfs 0, -0x8000(3)
    fsubs 5, 2, 1
    lfs 4, 0x60(1)
    lfs 3, 0x48(1)
    fadds 2, 2, 1
    stfs 0, -0x8000(3)
    fsubs 1, 4, 3
    stfs 5, -0x8000(3)
    fadds 3, 4, 3
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
    lbz 0, 0x1cc(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016B7F4
    lwz 3, 0x110(31)
    li 4, 0x0
    bl fn_80092984
    .4byte 0x48000010 # b .L_8016B800
L_8016B7F4:
    lwz 3, 0x118(31)
    li 4, 0x0
    bl fn_80092984
L_8016B800:
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 3, 0xcc01
    lfs 2, 0x50(1)
    stfs 0, -0x8000(3)
    lfs 1, 0x38(1)
    stfs 0, -0x8000(3)
    fsubs 5, 2, 1
    lfs 4, 0x54(1)
    lfs 3, 0x3c(1)
    fadds 2, 2, 1
    stfs 0, -0x8000(3)
    fsubs 1, 4, 3
    stfs 5, -0x8000(3)
    fadds 3, 4, 3
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
L_8016B888:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    lwz 0, 0xd4(1)
    lwz 31, 0xac(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_8016B8AC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1cb(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8016B900
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    lfs 1, 0x1e4(3)
    li 6, 0x1
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 7, 0x1
    fadds 3, 2, 1
    stfs 2, 0x8(1)
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 8, 0x0
    stfs 0, 0x10(1)
    .4byte 0xC042A9E8 # lfs f2, lbl_8053D988@sda21(r0)
    stfs 3, 0xc(1)
    lwz 4, 0x34(3)
    bl fn_8016A7DC
L_8016B900:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016B910:
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
    stw 31, 0xfc(1)
    mr 31, 3
    lbz 0, 0x1c9(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8016B964
    lwz 0, 0x108(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8016B97C
L_8016B964:
    lbz 0, 0x1ca(31)
    cmplwi 0, 0x0
    .4byte 0x41820954 # beq .L_8016C2C0
    lwz 0, 0x10c(31)
    cmplwi 0, 0x0
    .4byte 0x41820948 # beq .L_8016C2C0
L_8016B97C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 5, 0x4330
    .4byte 0xC0E2A9A4 # lfs f7, lbl_8053D944@sda21(r0)
    lwz 6, 0x20(3)
    .4byte 0xC142A99C # lfs f10, lbl_8053D93C@sda21(r0)
    lwz 4, 0x2380(6)
    .4byte 0xC082A9EC # lfs f4, lbl_8053D98C@sda21(r0)
    fmuls 3, 7, 10
    xoris 4, 4, 0x8000
    .4byte 0xC042A9F0 # lfs f2, lbl_8053D990@sda21(r0)
    stw 4, 0xb4(1)
    lwz 0, 0x2384(6)
    stw 5, 0xb0(1)
    .4byte 0xC962A9A8 # lfd f11, lbl_8053D948@sda21(r0)
    xoris 0, 0, 0x8000
    lfd 0, 0xb0(1)
    stw 0, 0xbc(1)
    fsubs 0, 0, 11
    .4byte 0xC122A998 # lfs f9, lbl_8053D938@sda21(r0)
    stw 5, 0xb8(1)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfd 1, 0xb8(1)
    fdivs 29, 9, 0
    lwz 7, 0x24(3)
    lwz 6, 0x4(4)
    lfs 0, 0x858(7)
    lhz 0, 0x4(6)
    stfs 7, 0x9c(1)
    xoris 4, 0, 0x8000
    fsubs 8, 1, 11
    fdivs 12, 10, 0
    lfs 0, 0x10(7)
    lhz 0, 0x6(6)
    stfs 7, 0x78(1)
    xoris 0, 0, 0x8000
    lfs 30, 0x20(7)
    fneg 6, 0
    stfs 7, 0x90(1)
    fdivs 13, 9, 8
    .4byte 0xC022A9F4 # lfs f1, lbl_8053D994@sda21(r0)
    .4byte 0xC002A9F8 # lfs f0, lbl_8053D998@sda21(r0)
    stfs 3, 0x9c(1)
    .4byte 0xC122A9A0 # lfs f9, lbl_8053D940@sda21(r0)
    stw 4, 0xc4(1)
    stw 5, 0xc0(1)
    fmuls 6, 6, 29
    psq_l 28, 0x9c(1), 1, 0
    lfd 5, 0xc0(1)
    psq_l 27, 0x78(1), 1, 0
    fsubs 8, 5, 11
    stw 0, 0xcc(1)
    fneg 5, 30
    ps_add 27, 28, 27
    stw 5, 0xc8(1)
    fmuls 7, 29, 8
    fmuls 5, 5, 13
    stfs 6, 0x94(1)
    fmuls 8, 9, 7
    lfd 7, 0xc8(1)
    stfs 5, 0x98(1)
    fsubs 6, 7, 11
    fmuls 8, 12, 8
    stfs 4, 0x7c(1)
    fmuls 5, 13, 6
    stfs 4, 0x80(1)
    psq_l 6, 0x94(1), 0, 0
    stfs 8, 0x88(1)
    fmuls 4, 9, 5
    psq_l 5, 0x7c(1), 0, 0
    stfs 2, 0x70(1)
    ps_mul 5, 6, 5
    fmuls 4, 12, 4
    stfs 2, 0x74(1)
    stfs 1, 0x64(1)
    psq_l 2, 0x70(1), 0, 0
    stfs 4, 0x8c(1)
    ps_add 1, 5, 2
    stfs 0, 0x68(1)
    psq_l 4, 0x88(1), 0, 0
    psq_l 0, 0x64(1), 0, 0
    psq_st 5, 0x94(1), 0, 0
    ps_mul 2, 4, 0
    stw 4, 0xa4(1)
    stw 5, 0xa0(1)
    lfd 0, 0xa0(1)
    stw 0, 0xac(1)
    fsubs 31, 0, 11
    stw 5, 0xa8(1)
    lfd 0, 0xa8(1)
    stfs 10, 0x84(1)
    fsubs 30, 0, 11
    psq_st 1, 0x94(1), 0, 0
    psq_st 27, 0x9c(1), 1, 0
    stfs 10, 0x6c(1)
    psq_st 2, 0x88(1), 0, 0
    stfs 3, 0x90(1)
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    lbz 0, 0x1ca(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016BB24
    lwz 3, 0x10c(31)
    li 4, 0x0
    bl fn_80092984
    .4byte 0x48000010 # b .L_8016BB30
L_8016BB24:
    lwz 3, 0x108(31)
    li 4, 0x0
    bl fn_80092984
L_8016BB30:
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 5, 0x4330
    lis 3, 0xcc01
    lfs 2, 0x94(1)
    stfs 0, -0x8000(3)
    lfs 1, 0x88(1)
    stfs 0, -0x8000(3)
    fsubs 6, 2, 1
    lfs 4, 0x98(1)
    lfs 3, 0x8c(1)
    fadds 2, 2, 1
    stfs 0, -0x8000(3)
    fsubs 1, 4, 3
    stfs 6, -0x8000(3)
    fadds 3, 4, 3
    .4byte 0xCBA2A9A8 # lfd f29, lbl_8053D948@sda21(r0)
    stfs 1, -0x8000(3)
    .4byte 0xC082A998 # lfs f4, lbl_8053D938@sda21(r0)
    stfs 31, -0x8000(3)
    .4byte 0xC1A2A99C # lfs f13, lbl_8053D93C@sda21(r0)
    stfs 0, -0x8000(3)
    .4byte 0xC0A2A9E0 # lfs f5, lbl_8053D980@sda21(r0)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 3, -0x8000(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x1c0(31)
    lwz 7, 0x20(3)
    lwz 8, 0x24(3)
    clrlwi 0, 0, 20
    lwz 4, 0x2380(7)
    xoris 6, 0, 0x8000
    lwz 0, 0x2384(7)
    xoris 4, 4, 0x8000
    stw 5, 0xc0(1)
    xoris 0, 0, 0x8000
    lfs 1, 0x858(8)
    stw 4, 0xc4(1)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    fdivs 1, 13, 1
    lfd 3, 0xc0(1)
    stw 0, 0xbc(1)
    lwz 4, 0x4(4)
    stw 5, 0xb8(1)
    lfs 7, 0x20(8)
    lfd 2, 0xb8(1)
    fsubs 3, 3, 29
    stw 6, 0xcc(1)
    fsubs 2, 2, 29
    lfs 6, 0x10(8)
    stw 5, 0xc8(1)
    fdivs 27, 4, 3
    lhz 0, 0x4(4)
    lfd 3, 0xc8(1)
    lhz 6, 0x6(4)
    fsubs 3, 3, 29
    fdivs 28, 4, 2
    fmuls 2, 5, 3
    xoris 4, 0, 0x8000
    fneg 5, 6
    stw 4, 0xb4(1)
    fneg 4, 7
    xoris 0, 6, 0x8000
    .4byte 0xC062A9EC # lfs f3, lbl_8053D98C@sda21(r0)
    stw 5, 0xb0(1)
    fmuls 9, 5, 27
    .4byte 0xC0C2A9E4 # lfs f6, lbl_8053D984@sda21(r0)
    lfd 10, 0xb0(1)
    fmuls 8, 4, 28
    stw 0, 0xac(1)
    fmuls 7, 0, 13
    fsubs 11, 10, 29
    stw 5, 0xa8(1)
    .4byte 0xC0A2A9FC # lfs f5, lbl_8053D99C@sda21(r0)
    fmuls 4, 0, 6
    lfd 10, 0xa8(1)
    stfs 9, 0x94(1)
    fsubs 9, 10, 29
    .4byte 0xC182A9A0 # lfs f12, lbl_8053D940@sda21(r0)
    fmuls 11, 27, 11
    stfs 8, 0x98(1)
    fmuls 8, 28, 9
    stfs 3, 0x58(1)
    fmuls 10, 12, 11
    psq_l 11, 0x94(1), 0, 0
    stfs 3, 0x5c(1)
    fmuls 3, 12, 8
    fmuls 9, 1, 10
    psq_l 8, 0x58(1), 0, 0
    stfs 0, 0x90(1)
    fmuls 1, 1, 3
    ps_mul 3, 11, 8
    stfs 9, 0x88(1)
    stfs 1, 0x8c(1)
    psq_st 3, 0x94(1), 0, 0
    psq_l 8, 0x88(1), 0, 0
    lfs 3, 0x94(1)
    stfs 0, 0x9c(1)
    lfs 1, 0x98(1)
    fsubs 3, 3, 2
    stfs 6, 0x4c(1)
    fsubs 0, 1, 2
    stfs 5, 0x50(1)
    psq_l 1, 0x4c(1), 0, 0
    stfs 13, 0x60(1)
    ps_mul 1, 8, 1
    stfs 7, 0x9c(1)
    stfs 6, 0x54(1)
    psq_st 1, 0x88(1), 0, 0
    stfs 4, 0x90(1)
    stfs 3, 0x94(1)
    stfs 0, 0x98(1)
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    lwz 3, 0xf4(31)
    li 4, 0x0
    bl fn_80092984
    li 3, 0x0
    li 4, 0xf
    li 5, 0xf
    li 6, 0xf
    li 7, 0x2
    bl fn_8005EA6C
    .4byte 0x8002A984 # lwz r0, lbl_8053D924@sda21(r0)
    addi 4, 1, 0x18
    li 3, 0x1
    stw 0, 0x18(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC062A9A4 # lfs f3, lbl_8053D944@sda21(r0)
    lis 4, 0x4330
    lis 3, 0xcc01
    lfs 1, 0x94(1)
    stfs 3, -0x8000(3)
    lfs 0, 0x88(1)
    stfs 3, -0x8000(3)
    fsubs 8, 1, 0
    lfs 6, 0x98(1)
    lfs 2, 0x8c(1)
    fadds 5, 1, 0
    stfs 3, -0x8000(3)
    fsubs 4, 6, 2
    stfs 8, -0x8000(3)
    fadds 6, 6, 2
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    stfs 4, -0x8000(3)
    .4byte 0xC0E2A998 # lfs f7, lbl_8053D938@sda21(r0)
    stfs 31, -0x8000(3)
    .4byte 0xC002A99C # lfs f0, lbl_8053D93C@sda21(r0)
    stfs 3, -0x8000(3)
    .4byte 0xC042A9E0 # lfs f2, lbl_8053D980@sda21(r0)
    stfs 3, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 8, -0x8000(3)
    stfs 6, -0x8000(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 6, 0x1c0(31)
    lwz 7, 0x20(3)
    lwz 8, 0x24(3)
    clrlwi 0, 6, 20
    lwz 3, 0x2380(7)
    xoris 5, 0, 0x8000
    lwz 0, 0x2384(7)
    xoris 3, 3, 0x8000
    stw 4, 0xd0(1)
    xoris 0, 0, 0x8000
    lfs 4, 0x858(8)
    stw 3, 0xd4(1)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    fdivs 4, 0, 4
    lfd 6, 0xd0(1)
    stw 0, 0xdc(1)
    lwz 3, 0x4(3)
    stw 4, 0xd8(1)
    lfs 10, 0x20(8)
    lfd 5, 0xd8(1)
    fsubs 6, 6, 1
    stw 5, 0xa4(1)
    fsubs 5, 5, 1
    lfs 8, 0x10(8)
    stw 4, 0xa0(1)
    fdivs 12, 7, 6
    lhz 0, 0x4(3)
    lfd 6, 0xa0(1)
    lhz 3, 0x6(3)
    fsubs 6, 6, 1
    fdivs 27, 7, 5
    fmuls 5, 2, 6
    xoris 0, 0, 0x8000
    xoris 3, 3, 0x8000
    stw 0, 0xe4(1)
    fneg 8, 8
    .4byte 0xC122AA00 # lfs f9, lbl_8053D9A0@sda21(r0)
    fneg 7, 10
    stw 4, 0xe0(1)
    addi 0, 6, 0x514
    .4byte 0xC0C2A9F0 # lfs f6, lbl_8053D990@sda21(r0)
    lfd 10, 0xe0(1)
    fmuls 8, 8, 12
    stw 3, 0xec(1)
    fmuls 7, 7, 27
    fsubs 11, 10, 1
    clrlwi 0, 0, 20
    stw 4, 0xe8(1)
    .4byte 0xC1A2A9A0 # lfs f13, lbl_8053D940@sda21(r0)
    xoris 0, 0, 0x8000
    lfd 10, 0xe8(1)
    fmuls 12, 12, 11
    stfs 8, 0x94(1)
    fsubs 11, 10, 1
    .4byte 0xC102AA04 # lfs f8, lbl_8053D9A4@sda21(r0)
    stfs 7, 0x98(1)
    fmuls 10, 3, 0
    fmuls 11, 27, 11
    stfs 6, 0x40(1)
    fmuls 12, 13, 12
    psq_l 27, 0x94(1), 0, 0
    stfs 6, 0x44(1)
    fmuls 7, 3, 9
    fmuls 6, 13, 11
    psq_l 11, 0x40(1), 0, 0
    fmuls 12, 4, 12
    stw 0, 0xf4(1)
    ps_mul 13, 27, 11
    lbz 0, 0x1ca(31)
    stw 4, 0xf0(1)
    fmuls 11, 4, 6
    cmplwi 0, 0x0
    psq_st 13, 0x94(1), 0, 0
    lfd 4, 0xf0(1)
    lfs 6, 0x94(1)
    fsubs 1, 4, 1
    stfs 3, 0x90(1)
    fsubs 5, 6, 5
    lfs 4, 0x98(1)
    stfs 3, 0x9c(1)
    fmuls 1, 2, 1
    stfs 12, 0x88(1)
    stfs 11, 0x8c(1)
    fsubs 1, 4, 1
    stfs 9, 0x34(1)
    psq_l 3, 0x88(1), 0, 0
    stfs 8, 0x38(1)
    psq_l 2, 0x34(1), 0, 0
    stfs 0, 0x48(1)
    ps_mul 0, 3, 2
    stfs 10, 0x9c(1)
    stfs 9, 0x3c(1)
    psq_st 0, 0x88(1), 0, 0
    stfs 7, 0x90(1)
    stfs 5, 0x94(1)
    stfs 1, 0x98(1)
    .4byte 0x4182001C # beq .L_8016BFD0
    .4byte 0x8002A988 # lwz r0, lbl_8053D928@sda21(r0)
    addi 4, 1, 0x14
    li 3, 0x1
    stw 0, 0x14(1)
    bl fn_8005EBC4
    .4byte 0x48000018 # b .L_8016BFE4
L_8016BFD0:
    .4byte 0x8002A98C # lwz r0, lbl_8053D92C@sda21(r0)
    addi 4, 1, 0x10
    li 3, 0x1
    stw 0, 0x10(1)
    bl fn_8005EBC4
L_8016BFE4:
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC062A9A4 # lfs f3, lbl_8053D944@sda21(r0)
    lis 4, 0x4330
    lis 3, 0xcc01
    lfs 1, 0x94(1)
    stfs 3, -0x8000(3)
    lfs 0, 0x88(1)
    stfs 3, -0x8000(3)
    fsubs 8, 1, 0
    lfs 6, 0x98(1)
    lfs 2, 0x8c(1)
    fadds 5, 1, 0
    stfs 3, -0x8000(3)
    fsubs 4, 6, 2
    stfs 8, -0x8000(3)
    fadds 6, 6, 2
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    stfs 4, -0x8000(3)
    .4byte 0xC0E2A998 # lfs f7, lbl_8053D938@sda21(r0)
    stfs 31, -0x8000(3)
    .4byte 0xC002A99C # lfs f0, lbl_8053D93C@sda21(r0)
    stfs 3, -0x8000(3)
    .4byte 0xC042A9E0 # lfs f2, lbl_8053D980@sda21(r0)
    stfs 3, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 8, -0x8000(3)
    stfs 6, -0x8000(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 6, 0x1c0(31)
    lwz 7, 0x20(3)
    lwz 8, 0x24(3)
    addi 0, 6, 0xc1c
    lwz 3, 0x2380(7)
    clrlwi 5, 0, 20
    lwz 0, 0x2384(7)
    xoris 5, 5, 0x8000
    xoris 3, 3, 0x8000
    stw 4, 0xe8(1)
    xoris 0, 0, 0x8000
    lfs 4, 0x858(8)
    stw 3, 0xec(1)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    fdivs 4, 0, 4
    lfd 6, 0xe8(1)
    stw 0, 0xe4(1)
    lwz 3, 0x4(3)
    stw 4, 0xe0(1)
    lfs 10, 0x20(8)
    lfd 5, 0xe0(1)
    fsubs 6, 6, 1
    stw 5, 0xf4(1)
    fsubs 5, 5, 1
    lfs 8, 0x10(8)
    stw 4, 0xf0(1)
    fdivs 12, 7, 6
    lhz 0, 0x4(3)
    lfd 6, 0xf0(1)
    lhz 3, 0x6(3)
    fsubs 6, 6, 1
    fdivs 27, 7, 5
    fmuls 5, 2, 6
    xoris 0, 0, 0x8000
    xoris 3, 3, 0x8000
    stw 0, 0xdc(1)
    fneg 8, 8
    .4byte 0xC122AA0C # lfs f9, lbl_8053D9AC@sda21(r0)
    fneg 7, 10
    stw 4, 0xd8(1)
    addi 0, 6, 0x514
    .4byte 0xC0C2AA08 # lfs f6, lbl_8053D9A8@sda21(r0)
    lfd 10, 0xd8(1)
    fmuls 8, 8, 12
    stw 3, 0xd4(1)
    fmuls 7, 7, 27
    fsubs 11, 10, 1
    clrlwi 0, 0, 20
    stw 4, 0xd0(1)
    .4byte 0xC1A2A9A0 # lfs f13, lbl_8053D940@sda21(r0)
    xoris 0, 0, 0x8000
    lfd 10, 0xd0(1)
    fmuls 12, 12, 11
    stfs 8, 0x94(1)
    fsubs 11, 10, 1
    .4byte 0xC102A9B0 # lfs f8, lbl_8053D950@sda21(r0)
    stfs 7, 0x98(1)
    fmuls 10, 3, 0
    fmuls 11, 27, 11
    stfs 6, 0x28(1)
    fmuls 12, 13, 12
    psq_l 27, 0x94(1), 0, 0
    stfs 6, 0x2c(1)
    fmuls 7, 3, 9
    fmuls 6, 13, 11
    psq_l 11, 0x28(1), 0, 0
    fmuls 12, 4, 12
    stw 0, 0xcc(1)
    ps_mul 13, 27, 11
    lbz 0, 0x1ca(31)
    stw 4, 0xc8(1)
    fmuls 11, 4, 6
    cmplwi 0, 0x0
    psq_st 13, 0x94(1), 0, 0
    lfd 4, 0xc8(1)
    lfs 6, 0x94(1)
    fsubs 1, 4, 1
    stfs 3, 0x90(1)
    fsubs 5, 6, 5
    lfs 4, 0x98(1)
    stfs 3, 0x9c(1)
    fmuls 1, 2, 1
    stfs 12, 0x88(1)
    stfs 11, 0x8c(1)
    fsubs 1, 4, 1
    stfs 9, 0x1c(1)
    psq_l 3, 0x88(1), 0, 0
    stfs 8, 0x20(1)
    psq_l 2, 0x1c(1), 0, 0
    stfs 0, 0x30(1)
    ps_mul 0, 3, 2
    stfs 10, 0x9c(1)
    stfs 9, 0x24(1)
    psq_st 0, 0x88(1), 0, 0
    stfs 7, 0x90(1)
    stfs 5, 0x94(1)
    stfs 1, 0x98(1)
    .4byte 0x4182001C # beq .L_8016C224
    .4byte 0x8002A990 # lwz r0, lbl_8053D930@sda21(r0)
    addi 4, 1, 0xc
    li 3, 0x1
    stw 0, 0xc(1)
    bl fn_8005EBC4
    .4byte 0x48000018 # b .L_8016C238
L_8016C224:
    .4byte 0x8002A994 # lwz r0, lbl_8053D934@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x1
    stw 0, 0x8(1)
    bl fn_8005EBC4
L_8016C238:
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 3, 0xcc01
    lfs 2, 0x94(1)
    stfs 0, -0x8000(3)
    lfs 1, 0x88(1)
    stfs 0, -0x8000(3)
    fsubs 5, 2, 1
    lfs 4, 0x98(1)
    lfs 3, 0x8c(1)
    fadds 2, 2, 1
    stfs 0, -0x8000(3)
    fsubs 1, 4, 3
    stfs 5, -0x8000(3)
    fadds 3, 4, 3
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
L_8016C2C0:
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
    lwz 0, 0x154(1)
    lwz 31, 0xfc(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_8016C2FC:
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
    stw 31, 0x10c(1)
    mr 31, 3
    lbz 0, 0x1c8(3)
    cmplwi 0, 0x0
    .4byte 0x418207A8 # beq .L_8016CAE0
    lwz 0, 0x104(31)
    cmplwi 0, 0x0
    .4byte 0x4182079C # beq .L_8016CAE0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 5, 0x4330
    .4byte 0xC042AA0C # lfs f2, lbl_8053D9AC@sda21(r0)
    lwz 6, 0x20(3)
    lwz 7, 0x24(3)
    lwz 4, 0x2380(6)
    lwz 0, 0x2384(6)
    xoris 4, 4, 0x8000
    .4byte 0xC062A9A4 # lfs f3, lbl_8053D944@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x64(1)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    fmuls 0, 3, 2
    stw 5, 0x60(1)
    .4byte 0xC922A9A8 # lfd f9, lbl_8053D948@sda21(r0)
    lfd 1, 0x60(1)
    stw 0, 0x6c(1)
    fsubs 1, 1, 9
    .4byte 0xC102A998 # lfs f8, lbl_8053D938@sda21(r0)
    stw 5, 0x68(1)
    lwz 6, 0x4(4)
    lfd 5, 0x68(1)
    fdivs 11, 8, 1
    lhz 0, 0x4(6)
    .4byte 0xC082A99C # lfs f4, lbl_8053D93C@sda21(r0)
    lfs 1, 0x858(7)
    xoris 4, 0, 0x8000
    lhz 0, 0x6(6)
    xoris 0, 0, 0x8000
    fsubs 7, 5, 9
    fdivs 10, 4, 1
    stfs 3, 0x4c(1)
    .4byte 0xC022A9B0 # lfs f1, lbl_8053D950@sda21(r0)
    stw 4, 0x74(1)
    .4byte 0xC0C2A9A0 # lfs f6, lbl_8053D940@sda21(r0)
    stw 5, 0x70(1)
    lfd 4, 0x70(1)
    fdivs 7, 8, 7
    stw 0, 0x7c(1)
    lfs 12, 0x20(7)
    stw 5, 0x78(1)
    lfs 13, 0x10(7)
    lfd 3, 0x78(1)
    fsubs 5, 4, 9
    stfs 1, 0x3c(1)
    fsubs 4, 3, 9
    fneg 3, 13
    stw 0, 0x5c(1)
    fmuls 1, 11, 5
    fmuls 4, 7, 4
    stw 5, 0x58(1)
    fmuls 30, 3, 11
    fmuls 5, 6, 1
    stfs 2, 0x38(1)
    fmuls 4, 6, 4
    fneg 1, 12
    stw 4, 0x54(1)
    fmuls 5, 10, 5
    fmuls 4, 10, 4
    stw 5, 0x50(1)
    fmuls 31, 1, 7
    lfd 1, 0x58(1)
    lfd 6, 0x50(1)
    stfs 5, 0x44(1)
    fsubs 28, 1, 9
    psq_l 3, 0x38(1), 0, 0
    fsubs 29, 6, 9
    stfs 4, 0x48(1)
    psq_l 1, 0x44(1), 0, 0
    stfs 2, 0x40(1)
    ps_mul 1, 1, 3
    stfs 0, 0x4c(1)
    psq_st 1, 0x44(1), 0, 0
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    lwz 3, 0x104(31)
    li 4, 0x0
    bl fn_80092984
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC0E2A9A4 # lfs f7, lbl_8053D944@sda21(r0)
    lis 5, 0x4330
    lis 3, 0xcc01
    lfs 0, 0x44(1)
    stfs 7, -0x8000(3)
    lfs 1, 0x48(1)
    fsubs 8, 30, 0
    stfs 7, -0x8000(3)
    fadds 4, 30, 0
    fsubs 0, 31, 1
    .4byte 0xC8C2A9A8 # lfd f6, lbl_8053D948@sda21(r0)
    stfs 7, -0x8000(3)
    fadds 9, 31, 1
    .4byte 0xC042A998 # lfs f2, lbl_8053D938@sda21(r0)
    stfs 8, -0x8000(3)
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    stfs 0, -0x8000(3)
    .4byte 0xC0A2A9A0 # lfs f5, lbl_8053D940@sda21(r0)
    stfs 29, -0x8000(3)
    .4byte 0xC062A9E0 # lfs f3, lbl_8053D980@sda21(r0)
    stfs 7, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 9, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 8, -0x8000(3)
    stfs 9, -0x8000(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lwz 6, 0x20(3)
    lwz 8, 0x24(3)
    lwz 0, 0x2380(6)
    lwz 7, 0x4(4)
    xoris 4, 0, 0x8000
    lwz 0, 0x2384(6)
    stw 4, 0x8c(1)
    xoris 4, 0, 0x8000
    lfs 0, 0x858(8)
    stw 5, 0x88(1)
    lhz 0, 0x4(7)
    fdivs 8, 1, 0
    lfd 0, 0x88(1)
    xoris 0, 0, 0x8000
    lwz 6, 0x1c0(31)
    stw 4, 0x94(1)
    clrlwi 4, 6, 20
    fsubs 0, 0, 6
    stw 5, 0x90(1)
    xoris 4, 4, 0x8000
    lfs 11, 0x20(8)
    lfd 1, 0x90(1)
    fdivs 10, 2, 0
    stw 0, 0x9c(1)
    lfs 4, 0x10(8)
    stw 5, 0x98(1)
    lhz 0, 0x6(7)
    lfd 0, 0x98(1)
    fsubs 1, 1, 6
    stw 4, 0x84(1)
    fsubs 0, 0, 6
    stw 5, 0x80(1)
    fdivs 9, 2, 1
    lfd 1, 0x80(1)
    fmuls 0, 10, 0
    fsubs 1, 1, 6
    fmuls 0, 5, 0
    fmuls 12, 3, 1
    fmuls 0, 8, 0
    stfs 0, 0x44(1)
    xoris 0, 0, 0x8000
    fneg 4, 4
    stw 0, 0xa4(1)
    fneg 3, 11
    .4byte 0xC042A9E4 # lfs f2, lbl_8053D984@sda21(r0)
    fmuls 31, 4, 10
    stw 5, 0xa0(1)
    fmuls 30, 3, 9
    .4byte 0xC022A9FC # lfs f1, lbl_8053D99C@sda21(r0)
    lfd 4, 0xa0(1)
    fmuls 0, 7, 2
    fsubs 3, 4, 6
    stfs 7, 0x4c(1)
    fsubs 31, 31, 12
    stfs 1, 0x30(1)
    fsubs 30, 30, 12
    fmuls 3, 9, 3
    stfs 2, 0x2c(1)
    fmuls 1, 5, 3
    stfs 0, 0x4c(1)
    psq_l 4, 0x2c(1), 0, 0
    stfs 2, 0x34(1)
    fmuls 0, 8, 1
    stfs 0, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    ps_mul 0, 0, 4
    psq_st 0, 0x44(1), 0, 0
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    lwz 3, 0xf4(31)
    li 4, 0x0
    bl fn_80092984
    li 3, 0x0
    li 4, 0xf
    li 5, 0xf
    li 6, 0xf
    li 7, 0x2
    bl fn_8005EA6C
    .4byte 0x8002A978 # lwz r0, lbl_8053D918@sda21(r0)
    addi 4, 1, 0x10
    li 3, 0x1
    stw 0, 0x10(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC0E2A9A4 # lfs f7, lbl_8053D944@sda21(r0)
    lis 6, 0x4330
    lis 3, 0xcc01
    lfs 0, 0x44(1)
    stfs 7, -0x8000(3)
    lfs 2, 0x48(1)
    fsubs 3, 31, 0
    stfs 7, -0x8000(3)
    fadds 1, 31, 0
    fsubs 0, 30, 2
    .4byte 0xC8C2A9A8 # lfd f6, lbl_8053D948@sda21(r0)
    stfs 7, -0x8000(3)
    fadds 5, 30, 2
    .4byte 0xC042A998 # lfs f2, lbl_8053D938@sda21(r0)
    stfs 3, -0x8000(3)
    .4byte 0xC082A9E0 # lfs f4, lbl_8053D980@sda21(r0)
    stfs 0, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 5, -0x8000(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x1c0(31)
    lwz 7, 0x20(3)
    lwz 8, 0x24(3)
    addi 4, 5, 0x514
    lwz 3, 0x2380(7)
    clrlwi 5, 5, 20
    lwz 0, 0x2384(7)
    clrlwi 4, 4, 20
    xoris 3, 3, 0x8000
    xoris 5, 5, 0x8000
    xoris 0, 0, 0x8000
    stw 3, 0xbc(1)
    xoris 4, 4, 0x8000
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    stw 6, 0xb8(1)
    lwz 3, 0x4(3)
    lfd 0, 0xb8(1)
    stw 0, 0xc4(1)
    fsubs 1, 0, 6
    lfs 11, 0x20(8)
    stw 6, 0xc0(1)
    lfs 5, 0x10(8)
    lfd 0, 0xc0(1)
    fdivs 10, 2, 1
    stw 5, 0xac(1)
    lhz 0, 0x4(3)
    stw 6, 0xa8(1)
    lhz 5, 0x6(3)
    stw 4, 0xb4(1)
    fsubs 0, 0, 6
    stw 6, 0xb0(1)
    lfd 3, 0xa8(1)
    lfd 1, 0xb0(1)
    fsubs 3, 3, 6
    fsubs 1, 1, 6
    fdivs 9, 2, 0
    fmuls 12, 4, 3
    fmuls 13, 4, 1
    .4byte 0xC062A99C # lfs f3, lbl_8053D93C@sda21(r0)
    xoris 3, 0, 0x8000
    lfs 1, 0x858(8)
    xoris 5, 5, 0x8000
    .4byte 0xC042AA00 # lfs f2, lbl_8053D9A0@sda21(r0)
    fneg 0, 5
    fdivs 8, 3, 1
    .4byte 0xC022AA04 # lfs f1, lbl_8053D9A4@sda21(r0)
    .4byte 0x8002A97C # lwz r0, lbl_8053D91C@sda21(r0)
    addi 4, 1, 0xc
    stw 3, 0xcc(1)
    .4byte 0xC0A2A9A0 # lfs f5, lbl_8053D940@sda21(r0)
    stw 6, 0xc8(1)
    fneg 3, 11
    fmuls 31, 0, 10
    li 3, 0x1
    lfd 4, 0xc8(1)
    fmuls 0, 7, 2
    stw 5, 0xd4(1)
    fsubs 4, 4, 6
    stw 6, 0xd0(1)
    fmuls 30, 3, 9
    fsubs 31, 31, 12
    lfd 3, 0xd0(1)
    fmuls 4, 10, 4
    stfs 7, 0x4c(1)
    fsubs 30, 30, 13
    fsubs 3, 3, 6
    fmuls 4, 5, 4
    stfs 2, 0x20(1)
    fmuls 3, 9, 3
    stfs 1, 0x24(1)
    fmuls 4, 8, 4
    psq_l 6, 0x20(1), 0, 0
    fmuls 1, 5, 3
    stfs 2, 0x28(1)
    stfs 4, 0x44(1)
    fmuls 1, 8, 1
    stfs 0, 0x4c(1)
    stfs 1, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    stw 0, 0xc(1)
    ps_mul 0, 0, 6
    psq_st 0, 0x44(1), 0, 0
    bl fn_8005EBC4
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC122A9A4 # lfs f9, lbl_8053D944@sda21(r0)
    lis 5, 0x4330
    lis 3, 0xcc01
    lfs 0, 0x44(1)
    stfs 9, -0x8000(3)
    lfs 2, 0x48(1)
    fsubs 5, 31, 0
    stfs 9, -0x8000(3)
    fadds 4, 31, 0
    fsubs 1, 30, 2
    .4byte 0xC902A9A8 # lfd f8, lbl_8053D948@sda21(r0)
    stfs 9, -0x8000(3)
    fadds 6, 30, 2
    .4byte 0xC062A998 # lfs f3, lbl_8053D938@sda21(r0)
    stfs 5, -0x8000(3)
    .4byte 0xC042A99C # lfs f2, lbl_8053D93C@sda21(r0)
    stfs 1, -0x8000(3)
    .4byte 0xC002A9E0 # lfs f0, lbl_8053D980@sda21(r0)
    stfs 29, -0x8000(3)
    stfs 9, -0x8000(3)
    stfs 9, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 9, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 9, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 9, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 6, -0x8000(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 6, 0x1c0(31)
    lwz 7, 0x20(3)
    lwz 8, 0x24(3)
    addi 0, 6, 0xc1c
    lwz 3, 0x2380(7)
    clrlwi 4, 0, 20
    lwz 0, 0x2384(7)
    xoris 4, 4, 0x8000
    xoris 3, 3, 0x8000
    lfs 1, 0x858(8)
    xoris 0, 0, 0x8000
    stw 3, 0xe4(1)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    fdivs 10, 2, 1
    stw 5, 0xe0(1)
    lwz 3, 0x4(3)
    lfd 1, 0xe0(1)
    stw 0, 0xec(1)
    lfs 7, 0x20(8)
    stw 5, 0xe8(1)
    fsubs 2, 1, 8
    lfs 5, 0x10(8)
    lfd 1, 0xe8(1)
    fdivs 12, 3, 2
    stw 4, 0xdc(1)
    lhz 0, 0x4(3)
    stw 5, 0xd8(1)
    lhz 3, 0x6(3)
    lfd 2, 0xd8(1)
    fsubs 1, 1, 8
    fsubs 2, 2, 8
    fdivs 11, 3, 1
    fmuls 13, 0, 2
    xoris 0, 0, 0x8000
    xoris 4, 3, 0x8000
    stw 0, 0xf4(1)
    addi 0, 6, 0x514
    .4byte 0xC082AA0C # lfs f4, lbl_8053D9AC@sda21(r0)
    clrlwi 0, 0, 20
    stw 5, 0xf0(1)
    xoris 3, 0, 0x8000
    .4byte 0xC062A9B0 # lfs f3, lbl_8053D950@sda21(r0)
    fneg 5, 5
    lfd 6, 0xf0(1)
    fneg 1, 7
    stw 4, 0xfc(1)
    fmuls 2, 9, 4
    fsubs 6, 6, 8
    stw 5, 0xf8(1)
    fmuls 31, 5, 12
    .4byte 0xC0E2A9A0 # lfs f7, lbl_8053D940@sda21(r0)
    fmuls 30, 1, 11
    lfd 1, 0xf8(1)
    fmuls 6, 12, 6
    stfs 9, 0x4c(1)
    fsubs 1, 1, 8
    .4byte 0x8002A980 # lwz r0, lbl_8053D920@sda21(r0)
    stw 3, 0x104(1)
    fsubs 31, 31, 13
    fmuls 5, 11, 1
    stw 5, 0x100(1)
    fmuls 6, 7, 6
    addi 4, 1, 0x8
    lfd 1, 0x100(1)
    li 3, 0x1
    fmuls 5, 7, 5
    stfs 4, 0x14(1)
    fmuls 6, 10, 6
    stfs 3, 0x18(1)
    fsubs 1, 1, 8
    fmuls 3, 10, 5
    stfs 6, 0x44(1)
    fmuls 0, 0, 1
    psq_l 1, 0x14(1), 0, 0
    stfs 3, 0x48(1)
    psq_l 3, 0x44(1), 0, 0
    fsubs 30, 30, 0
    stfs 4, 0x1c(1)
    ps_mul 0, 3, 1
    stfs 2, 0x4c(1)
    psq_st 0, 0x44(1), 0, 0
    stw 0, 0x8(1)
    bl fn_8005EBC4
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 3, 0xcc01
    lfs 1, 0x44(1)
    stfs 0, -0x8000(3)
    lfs 3, 0x48(1)
    fsubs 4, 31, 1
    stfs 0, -0x8000(3)
    fadds 2, 31, 1
    fsubs 1, 30, 3
    stfs 0, -0x8000(3)
    fadds 3, 30, 3
    stfs 4, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 3, -0x8000(3)
L_8016CAE0:
    psq_l 31, 0x148(1), 0, 0
    lfd 31, 0x140(1)
    psq_l 30, 0x138(1), 0, 0
    lfd 30, 0x130(1)
    psq_l 29, 0x128(1), 0, 0
    lfd 29, 0x120(1)
    psq_l 28, 0x118(1), 0, 0
    lfd 28, 0x110(1)
    lwz 0, 0x154(1)
    lwz 31, 0x10c(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_8016CB14:
    stwu 1, -0x180(1)
    mflr 0
    stw 0, 0x184(1)
    stfd 31, 0x170(1)
    psq_st 31, 0x178(1), 0, 0
    stfd 30, 0x160(1)
    psq_st 30, 0x168(1), 0, 0
    stfd 29, 0x150(1)
    psq_st 29, 0x158(1), 0, 0
    stfd 28, 0x140(1)
    psq_st 28, 0x148(1), 0, 0
    stfd 27, 0x130(1)
    psq_st 27, 0x138(1), 0, 0
    stfd 26, 0x120(1)
    psq_st 26, 0x128(1), 0, 0
    stfd 25, 0x110(1)
    psq_st 25, 0x118(1), 0, 0
    stfd 24, 0x100(1)
    psq_st 24, 0x108(1), 0, 0
    stfd 23, 0xf0(1)
    psq_st 23, 0xf8(1), 0, 0
    stw 31, 0xec(1)
    mr 31, 3
    lbz 0, 0x1c7(3)
    cmplwi 0, 0x0
    .4byte 0x418206B0 # beq .L_8016D228
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 5, 0x4330
    .4byte 0x80CD8DC0 # lwz r6, lbl_8053A980@sda21(r0)
    lwz 7, 0x20(3)
    lwz 8, 0x24(3)
    lwz 4, 0x2380(7)
    lwz 0, 0x2384(7)
    xoris 4, 4, 0x8000
    lwz 7, 0x4(6)
    xoris 0, 0, 0x8000
    stw 4, 0xc4(1)
    lhz 4, 0x4(7)
    stw 5, 0xc0(1)
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    xoris 6, 4, 0x8000
    lfd 0, 0xc0(1)
    stw 0, 0xcc(1)
    fsubs 0, 0, 1
    .4byte 0xC0E2A998 # lfs f7, lbl_8053D938@sda21(r0)
    stw 5, 0xc8(1)
    lhz 0, 0x6(7)
    lfd 4, 0xc8(1)
    fdivs 10, 7, 0
    xoris 4, 0, 0x8000
    lwz 7, 0x1c0(31)
    .4byte 0xC002A99C # lfs f0, lbl_8053D93C@sda21(r0)
    lfs 3, 0x858(8)
    clrlwi 0, 7, 20
    fsubs 6, 4, 1
    xoris 0, 0, 0x8000
    lfs 8, 0x20(8)
    fdivs 11, 0, 3
    lfs 3, 0x10(8)
    stw 6, 0xd4(1)
    .4byte 0xC182A9A4 # lfs f12, lbl_8053D944@sda21(r0)
    stw 5, 0xd0(1)
    .4byte 0xC382A9A0 # lfs f28, lbl_8053D940@sda21(r0)
    lfd 5, 0xd0(1)
    fneg 4, 3
    fdivs 30, 7, 6
    stw 4, 0xdc(1)
    .4byte 0xC122A9E0 # lfs f9, lbl_8053D980@sda21(r0)
    stw 5, 0xd8(1)
    lfd 3, 0xd8(1)
    stw 0, 0xbc(1)
    fsubs 6, 5, 1
    stw 5, 0xb8(1)
    fsubs 5, 3, 1
    fneg 3, 8
    lfd 7, 0xb8(1)
    fmuls 6, 10, 6
    fmuls 5, 30, 5
    stw 6, 0xac(1)
    fsubs 8, 7, 1
    fmuls 6, 28, 6
    stw 5, 0xa8(1)
    fmuls 5, 28, 5
    fmuls 4, 4, 10
    lfd 10, 0xa8(1)
    fmuls 29, 11, 6
    fmuls 13, 11, 5
    stw 4, 0xb4(1)
    fmuls 7, 3, 30
    stw 5, 0xb0(1)
    fsubs 31, 10, 1
    fmuls 23, 9, 8
    lfd 3, 0xb0(1)
    stfs 29, 0x5c(1)
    fsubs 30, 3, 1
    stfs 13, 0x60(1)
    stfs 12, 0x64(1)
    stfs 4, 0x80(1)
    stfs 7, 0x84(1)
    stfs 4, 0x74(1)
    frsp 3, 12
    .4byte 0xC042AA0C # lfs f2, lbl_8053D9AC@sda21(r0)
    clrlwi 0, 7, 22
    stfs 7, 0x78(1)
    xoris 0, 0, 0x8000
    .4byte 0xC0C2A9B0 # lfs f6, lbl_8053D950@sda21(r0)
    psq_l 8, 0x74(1), 0, 0
    fmuls 5, 3, 0
    .4byte 0xC162AA10 # lfs f11, lbl_8053D9B0@sda21(r0)
    fmuls 9, 12, 0
    ps_muls0 3, 8, 28
    .4byte 0xC142A9E4 # lfs f10, lbl_8053D984@sda21(r0)
    stfs 4, 0x68(1)
    .4byte 0xC082AA14 # lfs f4, lbl_8053D9B4@sda21(r0)
    psq_st 3, 0x74(1), 0, 0
    psq_l 27, 0x80(1), 0, 0
    lfs 3, 0x74(1)
    stfs 7, 0x6c(1)
    fsubs 8, 3, 23
    lfs 3, 0x78(1)
    stfs 12, 0x7c(1)
    psq_l 24, 0x68(1), 0, 0
    psq_l 7, 0x7c(1), 1, 0
    stfs 12, 0x58(1)
    ps_muls0 26, 7, 28
    psq_l 28, 0x5c(1), 0, 0
    fsubs 7, 3, 23
    stfs 12, 0x88(1)
    psq_l 25, 0x58(1), 1, 0
    stfs 12, 0x70(1)
    ps_muls0 25, 25, 2
    stfs 12, 0x4c(1)
    stfs 2, 0x20(1)
    stfs 6, 0x24(1)
    psq_l 3, 0x20(1), 0, 0
    stw 0, 0xe4(1)
    ps_mul 12, 24, 3
    stw 5, 0xe0(1)
    lfd 3, 0xe0(1)
    stfs 29, 0x50(1)
    fsubs 1, 3, 1
    psq_st 12, 0x68(1), 0, 0
    stfs 13, 0x54(1)
    fmuls 1, 4, 1
    lfs 3, 0x68(1)
    psq_l 4, 0x50(1), 0, 0
    fsubs 1, 3, 1
    stfs 11, 0x2c(1)
    ps_muls0 12, 4, 2
    stfs 10, 0x30(1)
    stfs 29, 0x44(1)
    psq_l 4, 0x2c(1), 0, 0
    stfs 13, 0x48(1)
    stfs 2, 0x14(1)
    ps_mul 2, 28, 4
    psq_l 13, 0x44(1), 0, 0
    stfs 6, 0x18(1)
    psq_l 4, 0x14(1), 0, 0
    stfs 11, 0x38(1)
    ps_mul 4, 13, 4
    stfs 10, 0x3c(1)
    psq_l 3, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    ps_mul 3, 27, 3
    stfs 9, 0x88(1)
    psq_st 3, 0x80(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 2, 0x5c(1), 0, 0
    stfs 9, 0x64(1)
    psq_st 26, 0x7c(1), 1, 0
    stfs 8, 0x74(1)
    stfs 7, 0x78(1)
    psq_st 12, 0x50(1), 0, 0
    psq_st 25, 0x58(1), 1, 0
    stfs 0, 0x28(1)
    stfs 5, 0x70(1)
    stfs 1, 0x68(1)
    stfs 0, 0x1c(1)
    psq_st 4, 0x44(1), 0, 0
    stfs 5, 0x4c(1)
    bl fn_8013B460
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xe
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xf
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xe
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xf
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x1
    li 4, 0x1
    li 5, 0x5
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x2
    li 4, 0x1
    li 5, 0x6
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x3
    bl fn_8005B93C
    lwz 3, 0xfc(31)
    li 4, 0x0
    bl fn_80092984
    lwz 3, 0xf4(31)
    li 4, 0x1
    bl fn_80092984
    lwz 3, 0x100(31)
    li 4, 0x2
    bl fn_80092984
    li 3, 0x2
    bl fn_8005E8B8
    li 3, 0x0
    li 4, 0x2
    li 5, 0x2
    bl fn_8005E7CC
    li 3, 0x1
    li 4, 0x2
    li 5, 0x2
    bl fn_8005E7CC
    li 3, 0x0
    li 4, 0x0
    li 5, 0x1
    li 6, 0x0
    li 7, 0x1
    bl fn_8005E924
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0x0
    li 7, 0x1
    bl fn_8005E924
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    addi 4, 1, 0x8c
    .4byte 0xC022AA18 # lfs f1, lbl_8053D9B8@sda21(r0)
    li 3, 0x1
    stfs 0, 0x90(1)
    li 5, 0x0
    stfs 1, 0x8c(1)
    stfs 0, 0x94(1)
    stfs 0, 0x98(1)
    stfs 1, 0x9c(1)
    stfs 0, 0xa0(1)
    bl fn_8005E510
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0x2
    li 5, 0x4
    li 6, 0x8
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x0
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x7
    bl fn_8005EAB0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0x3
    li 6, 0x8
    li 7, 0x0
    bl fn_8005EA6C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x1
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x6
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x2
    bl fn_8005F11C
    lbz 0, 0x1ec(31)
    lis 3, 0xae4c
    .4byte 0x80A2A970 # lwz r5, lbl_8053D910@sda21(r0)
    addi 4, 3, 0x415d
    mulli 3, 0, 0x78
    li 0, 0x78
    stw 5, 0xc(1)
    mulhw 4, 4, 3
    add 3, 4, 3
    srawi 3, 3, 5
    srwi 4, 3, 31
    add 3, 3, 4
    clrlwi 3, 3, 24
    cmplwi 3, 0x78
    .4byte 0x41810008 # bgt .L_8016D0DC
    mr 0, 3
L_8016D0DC:
    stb 0, 0xf(1)
    addi 4, 1, 0x10
    li 3, 0x1
    lwz 0, 0xc(1)
    stw 0, 0x10(1)
    bl fn_8005EBC4
    .4byte 0x8002A974 # lwz r0, lbl_8053D914@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x2
    stw 0, 0x8(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    lis 3, 0xcc01
    lfs 2, 0x80(1)
    stfs 0, -0x8000(3)
    lfs 1, 0x5c(1)
    stfs 0, -0x8000(3)
    fsubs 9, 2, 1
    lfs 4, 0x84(1)
    lfs 3, 0x60(1)
    fadds 5, 2, 1
    stfs 0, -0x8000(3)
    fsubs 1, 4, 3
    stfs 9, -0x8000(3)
    fadds 10, 4, 3
    lfs 3, 0x74(1)
    lfs 2, 0x50(1)
    lfs 8, 0x78(1)
    lfs 7, 0x54(1)
    fsubs 11, 3, 2
    stfs 1, -0x8000(3)
    fadds 6, 3, 2
    fsubs 2, 8, 7
    lfs 4, 0x68(1)
    lfs 3, 0x44(1)
    stfs 11, -0x8000(3)
    fadds 12, 8, 7
    fsubs 13, 4, 3
    stfs 2, -0x8000(3)
    fadds 4, 4, 3
    lfs 8, 0x6c(1)
    lfs 7, 0x48(1)
    stfs 13, -0x8000(3)
    fsubs 3, 8, 7
    fadds 7, 8, 7
    stfs 3, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 31, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 10, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 12, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 7, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 9, -0x8000(3)
    stfs 10, -0x8000(3)
    stfs 11, -0x8000(3)
    stfs 12, -0x8000(3)
    stfs 13, -0x8000(3)
    stfs 7, -0x8000(3)
L_8016D228:
    psq_l 31, 0x178(1), 0, 0
    lfd 31, 0x170(1)
    psq_l 30, 0x168(1), 0, 0
    lfd 30, 0x160(1)
    psq_l 29, 0x158(1), 0, 0
    lfd 29, 0x150(1)
    psq_l 28, 0x148(1), 0, 0
    lfd 28, 0x140(1)
    psq_l 27, 0x138(1), 0, 0
    lfd 27, 0x130(1)
    psq_l 26, 0x128(1), 0, 0
    lfd 26, 0x120(1)
    psq_l 25, 0x118(1), 0, 0
    lfd 25, 0x110(1)
    psq_l 24, 0x108(1), 0, 0
    lfd 24, 0x100(1)
    psq_l 23, 0xf8(1), 0, 0
    lfd 23, 0xf0(1)
    lwz 0, 0x184(1)
    lwz 31, 0xec(1)
    mtlr 0
    addi 1, 1, 0x180
    blr

fn_8016D284:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1c6(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016D2D0
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, -0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9A0 # lfs f1, lbl_8053D940@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9C0 # lfs f2, lbl_8053D960@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0x14(3)
    bl fn_8016A7DC
L_8016D2D0:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016D2E0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1c5(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016D32C
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, -0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9A0 # lfs f1, lbl_8053D940@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9C0 # lfs f2, lbl_8053D960@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0xc(3)
    bl fn_8016A7DC
L_8016D32C:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016D33C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x1c4(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8016D388
    .4byte 0xC042A9B8 # lfs f2, lbl_8053D958@sda21(r0)
    addi 5, 1, 0x8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, -0x1
    stfs 2, 0x8(1)
    li 7, 0x1
    .4byte 0xC022A9A0 # lfs f1, lbl_8053D940@sda21(r0)
    li 8, 0x1
    stfs 2, 0xc(1)
    .4byte 0xC042A9C0 # lfs f2, lbl_8053D960@sda21(r0)
    stfs 0, 0x10(1)
    lwz 4, 0x4(3)
    bl fn_8016A7DC
L_8016D388:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016D398:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stmw 23, 0x6c(1)
    lfs 0, 0x1c(3)
    fmr 31, 1
    lfs 2, 0xc(3)
    clrlwi. 0, 6, 24
    fneg 3, 0
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    fneg 1, 2
    stfs 0, 0x58(1)
    mr 24, 4
    lwz 26, 0xa8(1)
    stfs 1, 0x50(1)
    mr 25, 5
    lwz 27, 0xac(1)
    mr 30, 7
    stfs 3, 0x54(1)
    mr 29, 9
    mr 28, 10
    .4byte 0x41820208 # beq .L_8016D5FC
    lwz 3, 0x0(8)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_8016D410
    subi 0, 3, 0x1
    stw 0, 0x0(8)
    .4byte 0x480001F0 # b .L_8016D5FC
L_8016D410:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002A99C # lfs f0, lbl_8053D93C@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x4
    .4byte 0xC042AA1C # lfs f2, lbl_8053D9BC@sda21(r0)
    mr 31, 30
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    stw 3, 0x0(8)
    mtctr 0
L_8016D470:
    lwz 0, 0x14(31)
    cmpwi 0, 0x0
    .4byte 0x4082017C # bne .L_8016D5F4
    li 0, 0x3c
    lis 3, 0x19
    stw 0, 0x14(31)
    li 0, 0x288
    addi 12, 3, 0x660d
    .4byte 0xC0C2A99C # lfs f6, lbl_8053D93C@sda21(r0)
    sth 0, 0x10(31)
    addi 4, 1, 0x38
    .4byte 0xC0A2AA20 # lfs f5, lbl_8053D9C0@sda21(r0)
    li 3, 0x0
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    li 6, 0x0
    .4byte 0xC082AA24 # lfs f4, lbl_8053D9C4@sda21(r0)
    li 7, 0x0
    lwz 0, 0xb4(11)
    li 8, 0x0
    .4byte 0xC062AA28 # lfs f3, lbl_8053D9C8@sda21(r0)
    li 9, 0x0
    mullw 5, 0, 12
    .4byte 0xC042A9D0 # lfs f2, lbl_8053D970@sda21(r0)
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 10, 0x1
    .4byte 0xC022AA2C # lfs f1, lbl_8053D9CC@sda21(r0)
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    stw 0, 0xb4(11)
    .4byte 0x82ED8F38 # lwz r23, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(11)
    lwz 0, 0xb4(23)
    srwi 11, 5, 9
    mullw 5, 0, 12
    oris 0, 11, 0x3f80
    stw 0, 0x18(1)
    lfs 7, 0x18(1)
    addis 5, 5, 0x3c6f
    subi 0, 5, 0xca1
    fsubs 7, 7, 6
    stw 0, 0xb4(23)
    lwz 0, 0xb4(23)
    fmadds 2, 3, 7, 2
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 3, 0x14(1)
    fsubs 3, 3, 6
    fmsubs 3, 5, 3, 4
    stfs 3, 0x4(31)
    stfs 2, 0x8(31)
    stfs 0, 0xc(31)
    stfs 0, 0x38(1)
    stfs 0, 0x3c(1)
    stfs 0, 0x40(1)
    lhz 5, 0x10(31)
    bl fn_8013CC50
    stw 3, 0x0(31)
    lwz 3, 0x0(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8016D570
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8016D570:
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_8016D5FC
    lbz 0, 0x0(28)
    cmplwi 0, 0x0
    .4byte 0x41820064 # beq .L_8016D5E8
    clrlwi. 0, 25, 24
    .4byte 0x4182002C # beq .L_8016D5B8
    lis 3, 0x3
    addi 4, 1, 0x28
    addi 0, 3, 0x78
    stw 0, 0x28(1)
    lwz 3, 0x18(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000028 # b .L_8016D5DC
L_8016D5B8:
    lis 3, 0x3
    addi 4, 1, 0x24
    addi 0, 3, 0x31
    stw 0, 0x24(1)
    lwz 3, 0x18(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_8016D5DC:
    li 0, 0x0
    stb 0, 0x0(28)
    .4byte 0x48000018 # b .L_8016D5FC
L_8016D5E8:
    li 0, 0x1
    stb 0, 0x0(28)
    .4byte 0x4800000C # b .L_8016D5FC
L_8016D5F4:
    addi 31, 31, 0x1c
    .4byte 0x4200FE78 # bdnz .L_8016D470
L_8016D5FC:
    lwz 3, 0x0(29)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_8016D614
    subi 0, 3, 0x1
    stw 0, 0x0(29)
    .4byte 0x480001BC # b .L_8016D7CC
L_8016D614:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002A99C # lfs f0, lbl_8053D93C@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x4
    .4byte 0xC042AA30 # lfs f2, lbl_8053D9D0@sda21(r0)
    mr 31, 30
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    stw 3, 0x0(29)
    mtctr 0
L_8016D674:
    lwz 0, 0x14(31)
    cmpwi 0, 0x0
    .4byte 0x40820148 # bne .L_8016D7C4
    li 0, 0x3c
    lis 3, 0x19
    stw 0, 0x14(31)
    li 0, 0x287
    addi 5, 3, 0x660d
    .4byte 0xC0E2A99C # lfs f7, lbl_8053D93C@sda21(r0)
    sth 0, 0x10(31)
    .4byte 0xC042AA34 # lfs f2, lbl_8053D9D4@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002A9A0 # lfs f0, lbl_8053D940@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 1, 1, 7
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    fmsubs 6, 2, 1, 2
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 7
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8016D714
    .4byte 0xC0E2AA38 # lfs f7, lbl_8053D9D8@sda21(r0)
L_8016D714:
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC062A99C # lfs f3, lbl_8053D93C@sda21(r0)
    lwz 5, 0xb4(11)
    addi 4, 1, 0x2c
    .4byte 0xC0A2AA3C # lfs f5, lbl_8053D9DC@sda21(r0)
    li 3, 0x0
    mullw 5, 5, 0
    .4byte 0xC042AA28 # lfs f2, lbl_8053D9C8@sda21(r0)
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    li 6, 0x0
    .4byte 0xC022AA2C # lfs f1, lbl_8053D9CC@sda21(r0)
    li 7, 0x0
    addis 5, 5, 0x3c6f
    li 8, 0x0
    subi 0, 5, 0xca1
    li 9, 0x0
    stw 0, 0xb4(11)
    li 10, 0x1
    lwz 0, 0xb4(11)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 4, 0xc(1)
    fsubs 3, 4, 3
    fmadds 2, 5, 3, 2
    fmuls 2, 2, 7
    stfs 2, 0x4(31)
    stfs 6, 0x8(31)
    stfs 0, 0xc(31)
    stfs 0, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    lhz 5, 0x10(31)
    bl fn_8013CC50
    stw 3, 0x0(31)
    lwz 3, 0x0(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8016D7CC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x4800000C # b .L_8016D7CC
L_8016D7C4:
    addi 31, 31, 0x1c
    .4byte 0x4200FEAC # bdnz .L_8016D674
L_8016D7CC:
    mr 31, 30
    li 30, 0x0
    li 29, 0x0
    li 28, 0x0
L_8016D7DC:
    lhz 0, 0x10(31)
    cmplwi 0, 0x287
    .4byte 0x4082001C # bne .L_8016D800
    lwz 0, 0x14(31)
    cmpw 29, 0
    .4byte 0x41800008 # blt .L_8016D7F8
    mr 0, 29
L_8016D7F8:
    mr 29, 0
    .4byte 0x48000018 # b .L_8016D814
L_8016D800:
    lwz 0, 0x14(31)
    cmpw 30, 0
    .4byte 0x41800008 # blt .L_8016D810
    mr 0, 30
L_8016D810:
    mr 30, 0
L_8016D814:
    lwz 3, 0x14(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8016D828
    subi 0, 3, 0x1
    stw 0, 0x14(31)
L_8016D828:
    lwz 5, 0x0(31)
    cmplwi 5, 0x0
    .4byte 0x41820144 # beq .L_8016D974
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_8016D858
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_8016D858
    li 4, 0x1
L_8016D858:
    clrlwi. 0, 4, 24
    .4byte 0x41820020 # beq .L_8016D87C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x0(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x0(31)
    .4byte 0x480000FC # b .L_8016D974
L_8016D87C:
    stfs 31, 0x98(5)
    psq_l 2, 0x50(1), 0, 0
    stfs 31, 0x9c(5)
    psq_l 0, 0x58(1), 1, 0
    stfs 31, 0xa0(5)
    stfs 31, 0xb0(5)
    stfs 31, 0xb4(5)
    psq_l 3, 0x4(31), 0, 0
    psq_l 1, 0xc(31), 1, 0
    ps_add 2, 3, 2
    lhz 0, 0x10(31)
    ps_add 0, 1, 0
    cmplwi 0, 0x287
    psq_st 2, 0x44(1), 0, 0
    psq_st 0, 0x4c(1), 1, 0
    .4byte 0x40820040 # bne .L_8016D8F8
    clrlwi. 0, 25, 24
    .4byte 0x40820024 # bne .L_8016D8E4
    lfs 3, 0x48(1)
    .4byte 0xC042AA40 # lfs f2, lbl_8053D9E0@sda21(r0)
    lfs 1, 0x4c(1)
    .4byte 0xC002AA44 # lfs f0, lbl_8053D9E4@sda21(r0)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x48(1)
    stfs 0, 0x4c(1)
L_8016D8E4:
    lfs 1, 0x4c(1)
    .4byte 0xC002AA48 # lfs f0, lbl_8053D9E8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x4c(1)
    .4byte 0x4800003C # b .L_8016D930
L_8016D8F8:
    clrlwi. 0, 25, 24
    .4byte 0x40820024 # bne .L_8016D920
    lfs 3, 0x48(1)
    .4byte 0xC042AA4C # lfs f2, lbl_8053D9EC@sda21(r0)
    lfs 1, 0x4c(1)
    .4byte 0xC002AA44 # lfs f0, lbl_8053D9E4@sda21(r0)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x48(1)
    stfs 0, 0x4c(1)
L_8016D920:
    lfs 1, 0x4c(1)
    .4byte 0xC002AA50 # lfs f0, lbl_8053D9F0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x4c(1)
L_8016D930:
    clrlwi. 0, 25, 24
    .4byte 0x41820024 # beq .L_8016D958
    lfs 3, 0x44(1)
    .4byte 0xC042AA54 # lfs f2, lbl_8053D9F4@sda21(r0)
    lfs 1, 0x48(1)
    .4byte 0xC002AA58 # lfs f0, lbl_8053D9F8@sda21(r0)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x44(1)
    stfs 0, 0x48(1)
L_8016D958:
    lwz 3, 0x0(31)
    lfs 0, 0x44(1)
    lfs 1, 0x48(1)
    stfs 0, 0xa4(3)
    lfs 0, 0x4c(1)
    stfs 1, 0xa8(3)
    stfs 0, 0xac(3)
L_8016D974:
    addi 28, 28, 0x1
    addi 31, 31, 0x1c
    cmpwi 28, 0x4
    .4byte 0x4180FE5C # blt .L_8016D7DC
    cmpw 29, 30
    .4byte 0x40800008 # bge .L_8016D990
    mr 29, 30
L_8016D990:
    li 0, 0x6
    mr 5, 26
    mr 6, 27
    li 7, 0x0
    mtctr 0
L_8016D9A4:
    lwz 4, 0x0(5)
    lwz 8, 0x0(6)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8016D9E4
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x60(1)
    divw 0, 24, 3
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 24
    xoris 0, 0, 0x8000
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016D9E4:
    cmplwi 8, 0x0
    .4byte 0x41820058 # beq .L_8016DA40
    cmpwi 7, 0x4
    lha 3, 0x6(8)
    mr 0, 29
    .4byte 0x40800008 # bge .L_8016DA00
    mr 0, 30
L_8016DA00:
    mullw 4, 0, 3
    lis 3, 0x8889
    lis 0, 0x4330
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 3, 3, 0x7777
    stw 0, 0x60(1)
    mulhw 0, 3, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(8)
L_8016DA40:
    addi 5, 5, 0x4
    addi 6, 6, 0x4
    addi 7, 7, 0x1
    .4byte 0x4200FF58 # bdnz .L_8016D9A4
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    lmw 23, 0x6c(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8016DA6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8016DAE0
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8016DAC8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8016DAC8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8016DAC8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8016DAC8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8016DAC8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8016DACC
L_8016DAC8:
    li 0, 0x1
L_8016DACC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8016DB34
L_8016DAE0:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8016DB20
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8016DB20
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8016DB20
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8016DB20
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8016DB20
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8016DB20
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8016DB24
L_8016DB20:
    li 0, 0x1
L_8016DB24:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8016DB34:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8016DB4C
    mr 3, 31
    bl fn_8016ADE0
    mr 3, 31
    bl fn_8016AD84
L_8016DB4C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8016DB60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8016DBD4
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8016DBBC
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8016DBBC
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8016DBBC
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8016DBBC
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8016DBBC
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8016DBC0
L_8016DBBC:
    li 0, 0x1
L_8016DBC0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8016DC28
L_8016DBD4:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8016DC14
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8016DC14
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8016DC14
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8016DC14
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8016DC14
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8016DC14
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8016DC18
L_8016DC14:
    li 0, 0x1
L_8016DC18:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8016DC28:
    clrlwi. 0, 0, 24
    .4byte 0x418200AC # beq .L_8016DCD8
    mr 3, 31
    bl fn_8016D33C
    mr 3, 31
    bl fn_8016D2E0
    mr 3, 31
    bl fn_8016D284
    mr 3, 31
    bl fn_8016CB14
    mr 3, 31
    bl fn_8016C2FC
    mr 3, 31
    bl fn_8016B910
    mr 3, 31
    bl fn_8016B8AC
    mr 3, 31
    bl fn_8016B4D4
    mr 3, 31
    bl fn_8016B248
    mr 3, 31
    bl fn_8016B0B0
    mr 3, 31
    bl fn_8016ACCC
    mr 3, 31
    bl fn_8016AD28
    mr 3, 31
    bl fn_8016AC70
    mr 3, 31
    bl fn_8016AC14
    mr 3, 31
    bl fn_8016B054
    mr 3, 31
    bl fn_8016ABB8
    mr 3, 31
    bl fn_8016AB5C
    mr 3, 31
    bl fn_8016AAA4
    mr 3, 31
    bl fn_8016A9EC
    mr 3, 31
    bl fn_8016AB00
    mr 3, 31
    bl fn_8016AA48
L_8016DCD8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8016DCEC:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8016DD5C
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8016DD44
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8016DD44
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8016DD44
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8016DD44
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8016DD44
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8016DD48
L_8016DD44:
    li 0, 0x1
L_8016DD48:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8016DDB0
L_8016DD5C:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8016DD9C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8016DD9C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8016DD9C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8016DD9C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8016DD9C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8016DD9C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8016DDA0
L_8016DD9C:
    li 0, 0x1
L_8016DDA0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8016DDB0:
    clrlwi. 0, 0, 24
    .4byte 0x4182006C # beq .L_8016DE20
    lbz 0, 0x1cf(4)
    cmplwi 0, 0x0
    .4byte 0x41820060 # beq .L_8016DE20
    lwz 0, 0x4c(5)
    cmpwi 0, 0xb
    .4byte 0x41820054 # beq .L_8016DE20
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 3, 4, 0x54
    addi 0, 4, 0x6c
    .4byte 0xC022A9C8 # lfs f1, lbl_8053D968@sda21(r0)
    lwz 6, 0x24(5)
    addi 7, 4, 0x140
    addi 8, 4, 0x1b0
    addi 9, 4, 0x1b8
    stw 3, 0x8(1)
    addi 10, 4, 0x1b4
    addi 3, 6, 0x4
    li 5, 0x0
    stw 0, 0xc(1)
    lfs 0, 0x858(6)
    lbz 0, 0x1d0(4)
    fdivs 1, 1, 0
    lwz 4, 0x1c0(4)
    cntlzw 0, 0
    srwi 6, 0, 5
    bl fn_8016D398
L_8016DE20:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8016DE30:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stmw 27, 0x8c(1)
    mr 30, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8016DEA4
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8016DE8C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8016DE8C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8016DE8C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8016DE8C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8016DE8C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8016DE90
L_8016DE8C:
    li 0, 0x1
L_8016DE90:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8016DEF8
L_8016DEA4:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8016DEE4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8016DEE4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8016DEE4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8016DEE4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8016DEE4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8016DEE4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8016DEE8
L_8016DEE4:
    li 0, 0x1
L_8016DEE8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8016DEF8:
    clrlwi. 0, 0, 24
    .4byte 0x418204E4 # beq .L_8016E3E0
    lbz 0, 0x1d2(30)
    cmplwi 0, 0x0
    .4byte 0x41820098 # beq .L_8016DFA0
    lwz 0, 0x128(30)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_8016DF54
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    addi 4, 1, 0x38
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 3, 0x0
    stfs 0, 0x38(1)
    li 5, 0x543
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x3c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x40(1)
    bl fn_8013CC50
    stw 3, 0x128(30)
L_8016DF54:
    lwz 0, 0x12c(30)
    cmplwi 0, 0x0
    .4byte 0x4082008C # bne .L_8016DFE8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    addi 4, 1, 0x44
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 3, 0x0
    stfs 0, 0x44(1)
    li 5, 0x544
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x48(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x4c(1)
    bl fn_8013CC50
    stw 3, 0x12c(30)
    .4byte 0x4800004C # b .L_8016DFE8
L_8016DFA0:
    lwz 0, 0x128(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8016DFC4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x128(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x128(30)
L_8016DFC4:
    lwz 0, 0x12c(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8016DFE8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12c(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12c(30)
L_8016DFE8:
    lbz 0, 0x1d1(30)
    cmplwi 0, 0x0
    .4byte 0x4182011C # beq .L_8016E10C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 0, 0x4330
    addi 4, 1, 0x2c
    stw 0, 0x50(1)
    lwz 5, 0x20(3)
    .4byte 0xC862A9A8 # lfd f3, lbl_8053D948@sda21(r0)
    addi 3, 5, 0x2368
    .4byte 0xC082AA5C # lfs f4, lbl_8053D9FC@sda21(r0)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x2370(5)
    .4byte 0xC0A2A9A0 # lfs f5, lbl_8053D940@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x34(1)
    lfs 1, 0x2c(1)
    lwz 3, 0x2380(5)
    stw 0, 0x58(1)
    xoris 0, 3, 0x8000
    lfs 0, 0x30(1)
    stw 0, 0x54(1)
    lfd 2, 0x50(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fmadds 2, 5, 2, 1
    stfs 2, 0x2c(1)
    lwz 0, 0x2384(5)
    xoris 0, 0, 0x8000
    stw 0, 0x5c(1)
    lfd 1, 0x58(1)
    fsubs 1, 1, 3
    fmuls 1, 4, 1
    fmadds 0, 5, 1, 0
    stfs 0, 0x30(1)
    lwz 3, 0x130(30)
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_8016E0B4
    stfs 2, 0xa4(3)
    lfs 0, 0x30(1)
    stfs 0, 0xa8(3)
    lfs 0, 0x34(1)
    stfs 0, 0xac(3)
    lwz 3, 0x134(30)
    lfs 0, 0x2c(1)
    stfs 0, 0xa4(3)
    lfs 0, 0x30(1)
    stfs 0, 0xa8(3)
    lfs 0, 0x34(1)
    stfs 0, 0xac(3)
    .4byte 0x480000AC # b .L_8016E15C
L_8016E0B4:
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 3, 0x0
    li 5, 0x222
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x130(30)
    addi 4, 1, 0x2c
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 3, 0x0
    li 5, 0x223
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x134(30)
    .4byte 0x48000054 # b .L_8016E15C
L_8016E10C:
    lwz 5, 0x130(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8016E134
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x130(30)
L_8016E134:
    lwz 5, 0x134(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8016E15C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x134(30)
L_8016E15C:
    lbz 0, 0x1c4(30)
    cmplwi 0, 0x0
    .4byte 0x41820148 # beq .L_8016E2AC
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8016E184
    lbz 0, 0x1bc(30)
    cmplwi 0, 0x0
    .4byte 0x4082012C # bne .L_8016E2AC
L_8016E184:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lis 3, 0x4330
    stw 3, 0x58(1)
    lwz 6, 0x20(4)
    lwz 5, 0x24(4)
    lwz 4, 0x2380(6)
    lwz 0, 0x2384(6)
    xoris 4, 4, 0x8000
    lfs 1, 0x10(5)
    xoris 0, 0, 0x8000
    stw 4, 0x5c(1)
    lfs 0, 0x20(5)
    fneg 10, 1
    stw 0, 0x54(1)
    .4byte 0xC882A9A8 # lfd f4, lbl_8053D948@sda21(r0)
    fneg 8, 0
    stw 3, 0x50(1)
    .4byte 0xC042A9A0 # lfs f2, lbl_8053D940@sda21(r0)
    lfd 0, 0x58(1)
    lfd 1, 0x50(1)
    fmuls 9, 2, 10
    fmuls 7, 2, 8
    .4byte 0xC062AA5C # lfs f3, lbl_8053D9FC@sda21(r0)
    fsubs 2, 0, 4
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    fsubs 1, 1, 4
    stw 3, 0x68(1)
    fmuls 6, 3, 2
    fmuls 5, 3, 1
    stw 3, 0x78(1)
    fsubs 2, 10, 9
    fdivs 1, 9, 6
    stfs 0, 0x28(1)
    fdivs 0, 7, 5
    fctiwz 3, 1
    fctiwz 1, 0
    fsubs 0, 8, 7
    stfd 3, 0x60(1)
    stfd 1, 0x70(1)
    lwz 3, 0x64(1)
    lwz 0, 0x74(1)
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    stw 3, 0x6c(1)
    stw 0, 0x7c(1)
    lfd 3, 0x68(1)
    lfd 1, 0x78(1)
    fsubs 3, 3, 4
    fsubs 1, 1, 4
    fmadds 2, 6, 3, 2
    fmadds 0, 5, 1, 0
    stfs 2, 0x20(1)
    stfs 0, 0x24(1)
    lwz 3, 0x138(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8016E27C
    addi 4, 1, 0x20
    li 5, -0x1
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x4800005C # b .L_8016E2D4
L_8016E27C:
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    addi 4, 1, 0x20
    li 3, 0x0
    li 5, 0x2a8
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x138(30)
    .4byte 0x4800002C # b .L_8016E2D4
L_8016E2AC:
    lwz 5, 0x138(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8016E2D4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x138(30)
L_8016E2D4:
    lbz 0, 0x1d3(30)
    cmplwi 0, 0x0
    .4byte 0x418200D0 # beq .L_8016E3AC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lis 0, 0x4330
    addi 4, 1, 0x14
    stw 0, 0x78(1)
    lwz 5, 0x20(3)
    .4byte 0xC862A9A8 # lfd f3, lbl_8053D948@sda21(r0)
    addi 3, 5, 0x2368
    .4byte 0xC082AA5C # lfs f4, lbl_8053D9FC@sda21(r0)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x2370(5)
    .4byte 0xC0A2A9A0 # lfs f5, lbl_8053D940@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x1c(1)
    lfs 1, 0x14(1)
    lwz 3, 0x2380(5)
    stw 0, 0x70(1)
    xoris 0, 3, 0x8000
    lfs 0, 0x18(1)
    stw 0, 0x7c(1)
    lfd 2, 0x78(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fmadds 1, 5, 2, 1
    stfs 1, 0x14(1)
    lwz 0, 0x2384(5)
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 1, 0x70(1)
    fsubs 1, 1, 3
    fmuls 1, 4, 1
    fmadds 0, 5, 1, 0
    stfs 0, 0x18(1)
    lwz 3, 0x13c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8016E380
    li 5, -0x1
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x48000058 # b .L_8016E3D4
L_8016E380:
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 3, 0x0
    li 5, 0x385
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x13c(30)
    .4byte 0x4800002C # b .L_8016E3D4
L_8016E3AC:
    lwz 5, 0x13c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8016E3D4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x13c(30)
L_8016E3D4:
    lwz 3, 0x1c0(30)
    addi 0, 3, 0x1
    stw 0, 0x1c0(30)
L_8016E3E0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8016E440
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8016E428
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8016E428
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8016E428
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8016E428
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8016E428
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8016E42C
L_8016E428:
    li 0, 0x1
L_8016E42C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8016E494
L_8016E440:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8016E480
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8016E480
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8016E480
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8016E480
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8016E480
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8016E480
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8016E484
L_8016E480:
    li 0, 0x1
L_8016E484:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8016E494:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8016E4AC
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x408200D4 # bne .L_8016E57C
L_8016E4AC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x408200C4 # bne .L_8016E57C
    lbz 0, 0x96(3)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_8016E57C
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8016E510
    bl fn_80239D38
    clrlwi. 0, 3, 24
    .4byte 0x408200A0 # bne .L_8016E57C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_8016E4F8
    li 0, 0x1
    .4byte 0x48000014 # b .L_8016E508
L_8016E4F8:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_8016E508:
    clrlwi. 0, 0, 24
    .4byte 0x40820070 # bne .L_8016E57C
L_8016E510:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x240(3)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8016E57C
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5d(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8016E57C
    li 0, 0x0
    stb 0, 0x1c4(30)
    stb 0, 0x1c5(30)
    stb 0, 0x1c6(30)
    stb 0, 0x1c7(30)
    stb 0, 0x1c8(30)
    stb 0, 0x1c9(30)
    stb 0, 0x1ca(30)
    stb 0, 0x1cb(30)
    stb 0, 0x1cc(30)
    stb 0, 0x1cd(30)
    stb 0, 0x1ce(30)
    stb 0, 0x1cf(30)
    stb 0, 0x1d1(30)
    stb 0, 0x1d2(30)
    stb 0, 0x1d3(30)
    stb 0, 0x1dc(30)
    stb 0, 0x1dd(30)
L_8016E57C:
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    stb 3, 0x1bc(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8016E5E8
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8016E5D0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8016E5D0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8016E5D0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8016E5D0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8016E5D0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8016E5D4
L_8016E5D0:
    li 0, 0x1
L_8016E5D4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8016E63C
L_8016E5E8:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8016E628
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8016E628
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8016E628
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8016E628
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8016E628
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8016E628
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8016E62C
L_8016E628:
    li 0, 0x1
L_8016E62C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8016E63C:
    clrlwi. 0, 0, 24
    .4byte 0x41820734 # beq .L_8016ED74
    lbz 0, 0x1ee(30)
    lwz 31, 0x1c0(30)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8016E680
    lwz 5, 0x124(30)
    cmplwi 5, 0x0
    .4byte 0x4182006C # beq .L_8016E6C8
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x124(30)
    .4byte 0x4800004C # b .L_8016E6C8
L_8016E680:
    lwz 0, 0x124(30)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_8016E6C8
    .4byte 0xC002A9A4 # lfs f0, lbl_8053D944@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC022A99C # lfs f1, lbl_8053D93C@sda21(r0)
    li 3, 0x0
    stfs 0, 0x8(1)
    li 5, 0x54b
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0xc(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x10(1)
    bl fn_8013CC50
    stw 3, 0x124(30)
L_8016E6C8:
    lwz 4, 0x8(30)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8016E704
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 0, 31, 3
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016E704:
    lwz 4, 0x10(30)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8016E740
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 0, 31, 3
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016E740:
    lwz 4, 0x18(30)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8016E77C
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 0, 31, 3
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016E77C:
    lwz 7, 0x20(30)
    cmplwi 7, 0x0
    .4byte 0x41820078 # beq .L_8016E7FC
    lha 6, 0x6(7)
    lis 0, 0x4330
    lis 3, 0x8081
    stw 0, 0x78(1)
    divw 5, 31, 6
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 4, 3, 0x7f7f
    stw 0, 0x70(1)
    mullw 0, 5, 6
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lbz 0, 0x1ed(30)
    lwz 3, 0x24(30)
    mulli 0, 0, 0x78
    mulhw 4, 4, 0
    add 0, 4, 0
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 4, 0, 4
    addi 0, 4, 0x1
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_8016E7FC:
    lwz 7, 0x2c(30)
    cmplwi 7, 0x0
    .4byte 0x41820074 # beq .L_8016E878
    lha 6, 0x6(7)
    lis 0, 0x4330
    lis 3, 0x8081
    stw 0, 0x78(1)
    divw 5, 31, 6
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 4, 3, 0x7f7f
    stw 0, 0x70(1)
    mullw 0, 5, 6
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lbz 0, 0x1ef(30)
    lwz 3, 0x30(30)
    mulli 0, 0, 0x64
    mulhw 4, 4, 0
    add 0, 4, 0
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_8016E878:
    lwz 4, 0x38(30)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8016E8B4
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 0, 31, 3
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016E8B4:
    lwz 4, 0x88(30)
    cmplwi 4, 0x0
    .4byte 0x41820040 # beq .L_8016E8FC
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 0, 31, 3
    .4byte 0xC842A9A8 # lfd f2, lbl_8053D948@sda21(r0)
    .4byte 0xC002AA60 # lfs f0, lbl_8053DA00@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 1, 0x78(1)
    fsubs 1, 1, 2
    stfs 1, 0x8(4)
    lwz 3, 0x8c(30)
    stfs 0, 0x8(3)
L_8016E8FC:
    lwz 7, 0x94(30)
    cmplwi 7, 0x0
    .4byte 0x41820074 # beq .L_8016E978
    lha 6, 0x6(7)
    lis 0, 0x4330
    lis 3, 0x8081
    stw 0, 0x78(1)
    divw 5, 31, 6
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 4, 3, 0x7f7f
    stw 0, 0x70(1)
    mullw 0, 5, 6
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lbz 0, 0x1f1(30)
    lwz 3, 0x98(30)
    mulli 0, 0, 0x64
    mulhw 4, 4, 0
    add 0, 4, 0
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_8016E978:
    lwz 7, 0xa0(30)
    cmplwi 7, 0x0
    .4byte 0x41820074 # beq .L_8016E9F4
    lha 6, 0x6(7)
    lis 0, 0x4330
    lis 3, 0x8081
    stw 0, 0x78(1)
    divw 5, 31, 6
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 4, 3, 0x7f7f
    stw 0, 0x70(1)
    mullw 0, 5, 6
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lbz 0, 0x1f2(30)
    lwz 3, 0xa4(30)
    mulli 0, 0, 0x64
    mulhw 4, 4, 0
    add 0, 4, 0
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_8016E9F4:
    lwz 5, 0xac(30)
    cmplwi 5, 0x0
    .4byte 0x41820060 # beq .L_8016EA5C
    lha 4, 0x6(5)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 3, 31, 4
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    stw 0, 0x70(1)
    mullw 0, 3, 4
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(5)
    lwz 4, 0xb0(30)
    lha 3, 0x6(4)
    divw 0, 31, 3
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016EA5C:
    lwz 7, 0xb8(30)
    cmplwi 7, 0x0
    .4byte 0x41820074 # beq .L_8016EAD8
    lha 6, 0x6(7)
    lis 0, 0x4330
    lis 3, 0x8081
    stw 0, 0x78(1)
    divw 5, 31, 6
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 4, 3, 0x7f7f
    stw 0, 0x70(1)
    mullw 0, 5, 6
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lbz 0, 0x1f3(30)
    lwz 3, 0xbc(30)
    mulli 0, 0, 0x64
    mulhw 4, 4, 0
    add 0, 4, 0
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_8016EAD8:
    lwz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820124 # beq .L_8016EC04
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lis 3, 0x8081
    subi 5, 3, 0x7f7f
    li 29, 0x200
    lwz 3, 0x2c(4)
    li 27, 0x0
    lbz 0, 0xc(3)
    mulli 0, 0, 0x64
    mulhw 3, 5, 0
    add 0, 3, 0
    srawi 0, 0, 7
    srwi 3, 0, 31
    add 0, 0, 3
    subfic 28, 0, 0x64
L_8016EB1C:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8016EB54
    mr 3, 27
    bl fn_8023E724
    lfs 0, 0x0(3)
    fctiwz 0, 0
    stfd 0, 0x78(1)
    lwz 0, 0x7c(1)
    clrlwi 0, 0, 23
    cmpw 29, 0
    .4byte 0x40810008 # ble .L_8016EB54
    mr 29, 0
L_8016EB54:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC0 # blt .L_8016EB1C
    lwz 3, 0x1d8(30)
    cmpw 3, 29
    .4byte 0x4081001C # ble .L_8016EB84
    subi 3, 3, 0x4
    mr 0, 29
    cmpw 3, 29
    .4byte 0x41800008 # blt .L_8016EB80
    mr 0, 3
L_8016EB80:
    stw 0, 0x1d8(30)
L_8016EB84:
    lwz 0, 0x1d8(30)
    cmpwi 0, 0x0
    .4byte 0x40810028 # ble .L_8016EBB4
    subfic 3, 0, 0x100
    mr 0, 28
    mulli 3, 3, 0x64
    srawi 3, 3, 8
    addze 3, 3
    cmpw 3, 28
    .4byte 0x41800008 # blt .L_8016EBB0
    mr 0, 3
L_8016EBB0:
    mr 28, 0
L_8016EBB4:
    lwz 6, 0xc4(30)
    lis 3, 0x4330
    xoris 0, 28, 0x8000
    stw 3, 0x78(1)
    lha 5, 0x6(6)
    .4byte 0xC842A9A8 # lfd f2, lbl_8053D948@sda21(r0)
    divw 4, 31, 5
    stw 0, 0x74(1)
    stw 3, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 2
    mullw 0, 4, 5
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 1, 0x78(1)
    fsubs 1, 1, 2
    stfs 1, 0x8(6)
    lwz 3, 0xc8(30)
    stfs 0, 0x8(3)
L_8016EC04:
    lwz 4, 0xd0(30)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8016EC40
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 0, 31, 3
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016EC40:
    lwz 7, 0xd8(30)
    cmplwi 7, 0x0
    .4byte 0x41820074 # beq .L_8016ECBC
    lha 6, 0x6(7)
    lis 0, 0x4330
    lis 3, 0x8081
    stw 0, 0x78(1)
    divw 5, 31, 6
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 4, 3, 0x7f7f
    stw 0, 0x70(1)
    mullw 0, 5, 6
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lbz 0, 0x1f4(30)
    lwz 3, 0xdc(30)
    mulli 0, 0, 0x64
    mulhw 4, 4, 0
    add 0, 4, 0
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_8016ECBC:
    lwz 7, 0xe4(30)
    cmplwi 7, 0x0
    .4byte 0x41820074 # beq .L_8016ED38
    lha 6, 0x6(7)
    lis 0, 0x4330
    lis 3, 0x8081
    stw 0, 0x78(1)
    divw 5, 31, 6
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    subi 4, 3, 0x7f7f
    stw 0, 0x70(1)
    mullw 0, 5, 6
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lbz 0, 0x1f5(30)
    lwz 3, 0xe8(30)
    mulli 0, 0, 0x64
    mulhw 4, 4, 0
    add 0, 4, 0
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_8016ED38:
    lwz 4, 0xf0(30)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8016ED74
    lha 3, 0x6(4)
    lis 0, 0x4330
    stw 0, 0x78(1)
    divw 0, 31, 3
    .4byte 0xC822A9A8 # lfd f1, lbl_8053D948@sda21(r0)
    mullw 0, 0, 3
    subf 0, 0, 31
    xoris 0, 0, 0x8000
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_8016ED74:
    lmw 27, 0x8c(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8016ED88:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x14(3)
    stw 0, 0x1c(3)
    stw 0, 0x30(3)
    stw 0, 0x38(3)
    stw 0, 0x4c(3)
    stw 0, 0x54(3)
    stw 0, 0x68(3)
    blr

fn_8016EDB0:
    li 6, 0x0
    li 5, -0x1
    stb 6, 0x1ec(3)
    li 4, 0x78
    li 0, 0x3c
    stb 6, 0x1ed(3)
    stb 6, 0x1ee(3)
    stb 6, 0x1ef(3)
    stb 6, 0x1f0(3)
    stb 6, 0x1f1(3)
    stb 6, 0x1f2(3)
    stb 6, 0x1f3(3)
    stb 6, 0x1f4(3)
    stb 6, 0x1f5(3)
    stb 6, 0x1c4(3)
    stb 6, 0x1c5(3)
    stb 6, 0x1c6(3)
    stb 6, 0x1c7(3)
    stb 6, 0x1c8(3)
    stb 6, 0x1c9(3)
    stb 6, 0x1ca(3)
    stb 6, 0x1cb(3)
    stb 6, 0x1cc(3)
    stb 6, 0x1cd(3)
    stb 6, 0x1ce(3)
    stb 6, 0x1cf(3)
    stb 6, 0x1d1(3)
    stb 6, 0x1d2(3)
    stb 6, 0x1d3(3)
    stw 5, 0x1d8(3)
    stb 6, 0x1dc(3)
    stb 6, 0x1dd(3)
    stw 6, 0x130(3)
    stw 6, 0x134(3)
    stw 6, 0x124(3)
    stw 6, 0x128(3)
    stw 6, 0x12c(3)
    stw 6, 0x13c(3)
    stw 6, 0x138(3)
    stw 4, 0x1b0(3)
    stw 0, 0x1b8(3)
    stb 6, 0x1b4(3)
    stw 6, 0x140(3)
    stw 6, 0x154(3)
    stw 6, 0x15c(3)
    stw 6, 0x170(3)
    stw 6, 0x178(3)
    stw 6, 0x18c(3)
    stw 6, 0x194(3)
    stw 6, 0x1a8(3)
    stb 6, 0x1bc(3)
    stw 6, 0x1c0(3)
    blr

fn_8016EE84:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820208 # beq .L_8016F0A4
    li 28, 0x0
    mr 29, 30
L_8016EEA8:
    lwz 27, 0x140(29)
    cmplwi 27, 0x0
    .4byte 0x41820014 # beq .L_8016EEC4
    bl fn_8013C824
    lwz 3, 0xc(3)
    mr 4, 27
    bl fn_800EC240
L_8016EEC4:
    lwz 3, 0x158(29)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8016EEE8
    .4byte 0x41820018 # beq .L_8016EEE8
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8016EEE8:
    addi 28, 28, 0x1
    addi 29, 29, 0x1c
    cmpwi 28, 0x4
    .4byte 0x4180FFB4 # blt .L_8016EEA8
    lwz 0, 0x138(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016EF14
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x138(30)
    bl fn_800EC240
L_8016EF14:
    lwz 0, 0x13c(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016EF30
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x13c(30)
    bl fn_800EC240
L_8016EF30:
    lwz 0, 0x130(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016EF4C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x130(30)
    bl fn_800EC240
L_8016EF4C:
    lwz 0, 0x134(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016EF68
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x134(30)
    bl fn_800EC240
L_8016EF68:
    lwz 0, 0x124(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016EF84
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x124(30)
    bl fn_800EC240
L_8016EF84:
    lwz 0, 0x128(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016EFA0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x128(30)
    bl fn_800EC240
L_8016EFA0:
    lwz 0, 0x12c(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8016EFBC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12c(30)
    bl fn_800EC240
L_8016EFBC:
    lwz 3, 0x120(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016EFD0
    li 4, 0x1
    bl dtor_80092364
L_8016EFD0:
    lwz 3, 0x11c(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016EFE4
    li 4, 0x1
    bl dtor_80092364
L_8016EFE4:
    lwz 3, 0x118(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016EFF8
    li 4, 0x1
    bl dtor_80092364
L_8016EFF8:
    lwz 3, 0x114(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016F00C
    li 4, 0x1
    bl dtor_80092364
L_8016F00C:
    lwz 3, 0x110(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016F020
    li 4, 0x1
    bl dtor_80092364
L_8016F020:
    lwz 3, 0x10c(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016F034
    li 4, 0x1
    bl dtor_80092364
L_8016F034:
    lwz 3, 0x108(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016F048
    li 4, 0x1
    bl dtor_80092364
L_8016F048:
    lwz 3, 0x104(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8016F05C
    li 4, 0x1
    bl dtor_80092364
L_8016F05C:
    lwz 3, 0x100(30)
    li 4, 0x1
    bl dtor_80092364
    lwz 3, 0xfc(30)
    li 4, 0x1
    bl dtor_80092364
    lwz 3, 0xf8(30)
    li 4, 0x1
    bl dtor_80092364
    lwz 3, 0xf4(30)
    li 4, 0x1
    bl dtor_80092364
    lwz 3, 0x0(30)
    bl fn_8008383C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8016F0A4
    mr 3, 30
    bl dtor_80084580
L_8016F0A4:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8016F0BC:
    stwu 1, -0x50(1)
    mflr 0
    lis 5, fn_8016FDE0@ha
    lis 6, lbl_80466368@ha
    stw 0, 0x54(1)
    li 7, 0x4
    stmw 23, 0x2c(1)
    mr 31, 3
    mr 28, 4
    addi 4, 5, fn_8016FDE0@l
    addi 30, 6, lbl_80466368@l
    addi 3, 31, 0x140
    li 5, 0x0
    li 6, 0x1c
    bl __construct_array
    mr 4, 28
    li 3, -0x1
    li 5, 0x0
    bl fn_80084BAC
    stw 3, 0x0(31)
    lwz 3, 0x0(31)
    bl fn_8008382C
    lis 3, lbl_80529DEC@ha
    addi 6, 31, 0x4
    addi 27, 3, lbl_80529DEC@l
    addi 8, 31, 0x8
    lwz 3, 0x14(27)
    li 0, 0x0
    addi 4, 30, 0xb4
    addi 5, 30, 0xc0
    stw 6, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    lis 9, 0x24
    stw 8, 0xc(1)
    li 8, 0x0
    stw 0, 0x10(1)
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0xc
    addi 3, 31, 0x10
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0xcc
    addi 5, 30, 0xdc
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0x14
    addi 3, 31, 0x18
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0xec
    addi 5, 30, 0xfc
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0x1c
    addi 5, 31, 0x20
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0x24
    addi 4, 30, 0x10c
    stw 5, 0xc(1)
    addi 5, 30, 0x118
    addi 7, 30, 0x124
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0x28
    addi 5, 31, 0x2c
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0x30
    addi 4, 30, 0x130
    stw 5, 0xc(1)
    addi 5, 30, 0x144
    addi 7, 30, 0x158
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1124
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0x90
    addi 5, 31, 0x94
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0x98
    addi 4, 30, 0x16c
    stw 5, 0xc(1)
    addi 5, 30, 0x17c
    addi 7, 30, 0x18c
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1124
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0x9c
    addi 5, 31, 0xa0
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0xa4
    addi 4, 30, 0x19c
    stw 5, 0xc(1)
    addi 5, 30, 0x1b4
    addi 7, 30, 0x1cc
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1124
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0xa8
    addi 5, 31, 0xac
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0xb0
    addi 4, 30, 0x1e4
    stw 5, 0xc(1)
    addi 5, 30, 0x1f8
    addi 7, 30, 0x20c
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1124
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0xb4
    addi 5, 31, 0xb8
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0xbc
    addi 4, 30, 0x220
    stw 5, 0xc(1)
    addi 5, 30, 0x238
    addi 7, 30, 0x250
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1124
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0x34
    addi 3, 31, 0x38
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0x268
    addi 5, 30, 0x278
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x124
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    lis 3, lbl_80529DEC@ha
    addi 7, 31, 0xec
    addi 29, 3, lbl_80529DEC@l
    li 0, 0x0
    lwz 3, 0x10(29)
    addi 4, 30, 0x288
    li 5, 0x0
    li 6, 0x0
    stw 7, 0x8(1)
    li 7, 0x0
    li 8, 0x0
    lis 9, 0x22
    stw 0, 0xc(1)
    stw 0, 0x10(1)
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    li 3, 0x0
    stw 3, 0xf0(31)
    lwz 0, 0xec(31)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_8016F474
    addi 0, 31, 0xec
    addi 4, 30, 0x294
    stw 0, 0x8(1)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    stw 3, 0xc(1)
    li 8, 0x0
    lis 9, 0x22
    stw 3, 0x10(1)
    stw 3, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
L_8016F474:
    lwz 0, 0xec(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8016F4C4
    addi 0, 31, 0xec
    addi 3, 31, 0xf0
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0x2a0
    addi 5, 30, 0x2ac
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x22
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
L_8016F4C4:
    lwz 0, 0xec(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8016F510
    addi 3, 31, 0xec
    li 0, 0x0
    stw 3, 0x8(1)
    addi 4, 30, 0x2b8
    li 5, 0x0
    li 6, 0x0
    stw 0, 0xc(1)
    li 7, 0x0
    li 8, 0x0
    lis 9, 0x22
    stw 0, 0x10(1)
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
L_8016F510:
    lwz 0, 0xec(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8016F55C
    addi 3, 31, 0xec
    li 0, 0x0
    stw 3, 0x8(1)
    addi 4, 30, 0x2c4
    li 5, 0x0
    li 6, 0x0
    stw 0, 0xc(1)
    li 7, 0x0
    li 8, 0x0
    lis 9, 0x22
    stw 0, 0x10(1)
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
L_8016F55C:
    lis 3, lbl_804A0790@ha
    mr 25, 31
    addi 24, 3, lbl_804A0790@l
    li 23, 0x0
    li 26, 0x0
L_8016F570:
    addi 0, 25, 0x3c
    addi 3, 25, 0x54
    stw 0, 0x8(1)
    addi 0, 25, 0x6c
    li 6, 0x0
    li 8, 0x0
    stw 3, 0xc(1)
    lis 9, 0x1024
    stw 26, 0x10(1)
    stw 0, 0x14(1)
    stw 26, 0x18(1)
    lwz 3, 0x10(29)
    lwz 4, 0x0(24)
    lwz 5, 0x4(24)
    lwz 7, 0x8(24)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 23, 23, 0x1
    addi 24, 24, 0xc
    cmpwi 23, 0x6
    addi 25, 25, 0x4
    .4byte 0x4180FFAC # blt .L_8016F570
    addi 0, 31, 0x84
    addi 5, 31, 0x88
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0x8c
    addi 4, 30, 0x2d0
    stw 5, 0xc(1)
    addi 5, 30, 0x2e4
    addi 7, 30, 0x2f8
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1124
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0xc0
    addi 5, 31, 0xc4
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0xc8
    addi 4, 30, 0x30c
    stw 5, 0xc(1)
    addi 5, 30, 0x320
    addi 7, 30, 0x334
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0xcc
    addi 3, 31, 0xd0
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0x348
    addi 5, 30, 0x358
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0xd4
    addi 5, 31, 0xd8
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0xdc
    addi 4, 30, 0x368
    stw 5, 0xc(1)
    addi 5, 30, 0x378
    addi 7, 30, 0x388
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1124
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(29)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    addi 0, 31, 0xe0
    addi 5, 31, 0xe4
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 31, 0xe8
    addi 4, 30, 0x398
    stw 5, 0xc(1)
    addi 5, 30, 0x3a8
    addi 7, 30, 0x3b8
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x14(27)
    lwz 10, 0x0(31)
    bl fn_8016A3BC
    lwz 3, 0x0(31)
    bl fn_80084D84
    mr 3, 28
    bl fn_8008382C
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 26, 3
    .4byte 0x4182004C # beq .L_8016F79C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    addi 5, 30, 0x3c8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(26)
    mr 3, 26
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(26)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(26)
L_8016F79C:
    stw 26, 0xf4(31)
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 26, 3
    .4byte 0x4182004C # beq .L_8016F800
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    addi 5, 30, 0x3d8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(26)
    mr 3, 26
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(26)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(26)
L_8016F800:
    stw 26, 0xf8(31)
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 26, 3
    .4byte 0x4182004C # beq .L_8016F864
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    addi 5, 30, 0x3e4
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(26)
    mr 3, 26
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(26)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(26)
L_8016F864:
    stw 26, 0xfc(31)
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 26, 3
    .4byte 0x4182004C # beq .L_8016F8C8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    addi 5, 30, 0x3f4
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(26)
    mr 3, 26
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(26)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(26)
L_8016F8C8:
    stw 26, 0x100(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016F960
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x40c
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016F960
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016F960
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x40c
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016F960:
    stw 27, 0x104(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016F9F8
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x418
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016F9F8
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016F9F8
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x418
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016F9F8:
    stw 27, 0x108(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016FA90
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x424
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016FA90
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016FA90
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x424
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016FA90:
    stw 27, 0x10c(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016FB28
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x434
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016FB28
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016FB28
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x434
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016FB28:
    stw 27, 0x110(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016FBC0
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    .4byte 0x38A2AA64 # li r5, lbl_8053DA04@sda21
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016FBC0
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016FBC0
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    .4byte 0x38A2AA64 # li r5, lbl_8053DA04@sda21
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016FBC0:
    stw 27, 0x114(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016FC58
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x440
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016FC58
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016FC58
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x440
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016FC58:
    stw 27, 0x118(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016FCF0
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x450
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016FCF0
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016FCF0
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x450
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016FCF0:
    stw 27, 0x11c(31)
    li 27, 0x0
    lwz 26, 0x10(29)
    cmplwi 26, 0x0
    .4byte 0x41820088 # beq .L_8016FD88
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x460
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_8016FD88
    mr 4, 28
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x41820048 # beq .L_8016FD88
    mr 3, 26
    lis 4, 0x5449
    lwz 12, 0x0(26)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x460
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 0, 0x0
    mr 4, 3
    stw 0, 0x28(27)
    mr 3, 27
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0x3b(27)
    rlwinm 0, 0, 0, 30, 30
    stb 0, 0x3b(27)
L_8016FD88:
    stw 27, 0x120(31)
    mr 24, 31
    li 23, 0x0
L_8016FD94:
    li 3, 0x5c
    bl fn_80084370
    mr. 25, 3
    .4byte 0x41820014 # beq .L_8016FDB4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_8016FDB4:
    addi 23, 23, 0x1
    stw 25, 0x158(24)
    cmpwi 23, 0x4
    addi 24, 24, 0x1c
    .4byte 0x4180FFD0 # blt .L_8016FD94
    mr 3, 31
    lmw 23, 0x2c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8016FDE0:
    blr

fn_8016FDE4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C08A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C08A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FE34
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
L_8016FE34:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FE6C
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
L_8016FE6C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FEA4
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
L_8016FEA4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FEDC
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
L_8016FEDC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FF14
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
L_8016FF14:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FF4C
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
L_8016FF4C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FF84
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
L_8016FF84:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FFBC
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
L_8016FFBC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8016FFF4
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
L_8016FFF4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80170008:
    stwu 1, -0x120(1)
    mflr 0
    stw 0, 0x124(1)
    stfd 31, 0x110(1)
    psq_st 31, 0x118(1), 0, 0
    stfd 30, 0x100(1)
    psq_st 30, 0x108(1), 0, 0
    stfd 29, 0xf0(1)
    psq_st 29, 0xf8(1), 0, 0
    stfd 28, 0xe0(1)
    psq_st 28, 0xe8(1), 0, 0
    stfd 27, 0xd0(1)
    psq_st 27, 0xd8(1), 0, 0
    stfd 26, 0xc0(1)
    psq_st 26, 0xc8(1), 0, 0
    stfd 25, 0xb0(1)
    psq_st 25, 0xb8(1), 0, 0
    stfd 24, 0xa0(1)
    psq_st 24, 0xa8(1), 0, 0
    stfd 23, 0x90(1)
    psq_st 23, 0x98(1), 0, 0
    stmw 27, 0x7c(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801700DC
L_8017007C:
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
L_801700DC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8017007C
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
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
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    lhz 0, 0x94(31)
    lfs 28, 0xc(31)
    cmplwi 0, 0x5
    lfs 27, 0x10(31)
    lfs 26, 0x14(31)
    .4byte 0x41820280 # beq .L_801703F4
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_801701A0
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820258 # beq .L_801703F4
L_801701A0:
    lbz 0, 0x274(31)
    lis 3, lbl_804667D8@ha
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    addi 4, 3, lbl_804667D8@l
    stb 0, 0x40(1)
    mr 3, 31
    fmr 2, 1
    addi 6, 1, 0x38
    lwz 5, 0x258(31)
    li 7, 0x7
    addi 5, 5, 0x7f
    bl fn_801F06F0
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801701E8
    li 0, 0x1
    stb 0, 0x55(1)
    .4byte 0x4800000C # b .L_801701F0
L_801701E8:
    li 0, 0x0
    stb 0, 0x58(1)
L_801701F0:
    li 0, 0x6
    lis 3, lbl_804667D8@ha
    stb 0, 0x3e(1)
    mr 28, 31
    .4byte 0xC3A2AA78 # lfs f29, lbl_8053DA18@sda21(r0)
    addi 29, 1, 0x8
    .4byte 0xC322AA70 # lfs f25, lbl_8053DA10@sda21(r0)
    addi 30, 3, lbl_804667D8@l
    li 27, 0x0
L_80170214:
    stfs 29, 0x8(1)
    mr 3, 31
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    mr 4, 30
    stfs 25, 0xc(1)
    addi 6, 1, 0x38
    fmr 2, 1
    li 5, 0x83
    stfs 25, 0x10(1)
    li 7, 0x7
    stfs 25, 0x18(1)
    stfs 29, 0x1c(1)
    stfs 25, 0x20(1)
    stfs 25, 0x28(1)
    stfs 25, 0x2c(1)
    stfs 29, 0x30(1)
    stw 29, 0x50(1)
    lfs 0, 0x29c(28)
    stfs 0, 0xc(31)
    lfs 0, 0x2a0(28)
    stfs 0, 0x10(31)
    lfs 0, 0x2a4(28)
    stfs 0, 0x14(31)
    bl fn_801F06F0
    addi 27, 27, 0x1
    addi 28, 28, 0xc
    cmpwi 27, 0xa
    .4byte 0x4180FF94 # blt .L_80170214
    stfs 28, 0xc(31)
    stfs 27, 0x10(31)
    stfs 26, 0x14(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801702A8
    li 0, 0x2
    stb 0, 0x55(1)
    .4byte 0x4800000C # b .L_801702B0
L_801702A8:
    li 0, 0x0
    stb 0, 0x58(1)
L_801702B0:
    lfs 29, 0x278(31)
    lfs 25, 0x27c(31)
    .4byte 0xC022AA70 # lfs f1, lbl_8053DA10@sda21(r0)
    bl sin
    frsp 24, 1
    fmr 1, 29
    bl sin
    frsp 31, 1
    .4byte 0xC022AA70 # lfs f1, lbl_8053DA10@sda21(r0)
    bl sin
    frsp 23, 1
    .4byte 0xC022AA70 # lfs f1, lbl_8053DA10@sda21(r0)
    bl cos
    frsp 30, 1
    fmr 1, 29
    bl cos
    frsp 29, 1
    .4byte 0xC022AA70 # lfs f1, lbl_8053DA10@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    fmuls 7, 29, 23
    li 3, 0x11
    fneg 6, 31
    stw 3, 0x68(1)
    fmuls 10, 30, 3
    stw 0, 0x50(1)
    fmuls 2, 24, 31
    fmuls 9, 30, 23
    fmuls 1, 24, 23
    fmuls 0, 24, 3
    fmuls 8, 29, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 23, 10
    fmuls 3, 24, 29
    fmadds 2, 10, 31, 1
    fmsubs 1, 9, 31, 0
    fmuls 0, 30, 29
    fmuls 8, 25, 8
    fmuls 7, 25, 7
    fmuls 6, 25, 6
    fmuls 5, 25, 5
    stfs 8, 0x8(1)
    fmuls 4, 25, 4
    fmuls 3, 25, 3
    stfs 7, 0x18(1)
    fmuls 2, 25, 2
    fmuls 1, 25, 1
    stfs 6, 0x28(1)
    fmuls 0, 25, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x40820014 # bne .L_801703AC
    lbz 3, 0x274(31)
    li 0, 0x0
    stb 3, 0x3e(1)
    stb 0, 0x55(1)
L_801703AC:
    lfs 0, 0x314(31)
    lis 3, lbl_804667D8@ha
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    addi 4, 3, lbl_804667D8@l
    stfs 0, 0xc(31)
    mr 3, 31
    fmr 2, 1
    addi 6, 1, 0x38
    lfs 0, 0x318(31)
    li 5, 0x82
    li 7, 0x7
    stfs 0, 0x10(31)
    lfs 0, 0x31c(31)
    stfs 0, 0x14(31)
    bl fn_801F06F0
    stfs 28, 0xc(31)
    stfs 27, 0x10(31)
    stfs 26, 0x14(31)
L_801703F4:
    psq_l 31, 0x118(1), 0, 0
    lfd 31, 0x110(1)
    psq_l 30, 0x108(1), 0, 0
    lfd 30, 0x100(1)
    psq_l 29, 0xf8(1), 0, 0
    lfd 29, 0xf0(1)
    psq_l 28, 0xe8(1), 0, 0
    lfd 28, 0xe0(1)
    psq_l 27, 0xd8(1), 0, 0
    lfd 27, 0xd0(1)
    psq_l 26, 0xc8(1), 0, 0
    lfd 26, 0xc0(1)
    psq_l 25, 0xb8(1), 0, 0
    lfd 25, 0xb0(1)
    psq_l 24, 0xa8(1), 0, 0
    lfd 24, 0xa0(1)
    psq_l 23, 0x98(1), 0, 0
    lfd 23, 0x90(1)
    lmw 27, 0x7c(1)
    lwz 0, 0x124(1)
    mtlr 0
    addi 1, 1, 0x120
    blr

fn_80170450:
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
    stfd 25, 0xe0(1)
    psq_st 25, 0xe8(1), 0, 0
    stfd 24, 0xd0(1)
    psq_st 24, 0xd8(1), 0, 0
    stfd 23, 0xc0(1)
    psq_st 23, 0xc8(1), 0, 0
    stfd 22, 0xb0(1)
    psq_st 22, 0xb8(1), 0, 0
    stfd 21, 0xa0(1)
    psq_st 21, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    stw 29, 0x94(1)
    stw 28, 0x90(1)
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
    li 0, 0x0
    lis 4, lbl_804A07D8@ha
    sth 0, 0x8(1)
    mr 30, 3
    stfs 0, 0x2c(1)
    addi 31, 4, lbl_804A07D8@l
    stw 0, 0x28(1)
    stw 0, 0x24(1)
    lhz 0, 0x94(3)
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(3)
    cmplwi 0, 0x5
    psq_st 1, 0x70(1), 0, 0
    lfs 30, 0x10(3)
    stfs 0, 0x78(1)
    lfs 31, 0xc(3)
    lfs 29, 0x60(3)
    lfs 28, 0x64(3)
    lfs 27, 0x68(3)
    lfs 26, 0x6c(3)
    .4byte 0x4082002C # bne .L_80170544
    li 0, 0x2710
    li 4, 0x0
    stw 0, 0x108(30)
    bl fn_801F2B20
    mr 3, 30
    li 4, 0x2
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
    .4byte 0x48001408 # b .L_80171948
L_80170544:
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x418200A4 # beq .L_801705F0
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418213E4 # beq .L_80171948
    lwz 0, 0x26c(30)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_801705C4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8017059C
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_8017059C:
    bl SpatialRegistry_GetBase
    lis 4, 0x534c
    lwz 5, 0x4(30)
    addi 4, 4, 0x5233
    addi 6, 30, 0xc
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x26c(30)
L_801705C4:
    lwz 0, 0xb0(30)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_801705E4
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x87
    li 5, 0x0
    bl fn_801F0E34
L_801705E4:
    lis 3, 0xa00
    addi 0, 3, 0x2204
    stw 0, 0xb0(30)
L_801705F0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 30, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lfs 1, 0x278(30)
    addi 4, 31, 0x20
    .4byte 0xC002AA7C # lfs f0, lbl_8053DA1C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x278(30)
    lwz 3, 0x258(30)
    lwz 0, 0x260(30)
    slwi 5, 3, 3
    add 3, 4, 5
    cmpwi 0, 0x0
    lfsx 25, 4, 5
    lfs 24, 0x4(3)
    .4byte 0x408200D8 # bne .L_80170708
    lfs 1, 0xc(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC002AA80 # lfs f0, lbl_8053DA20@sda21(r0)
    stfs 1, 0x314(30)
    lfs 1, 0x10(30)
    stfs 1, 0x318(30)
    lfs 1, 0x14(30)
    stfs 1, 0x31c(30)
    lwz 0, 0x24c(30)
    lfs 2, 0x284(30)
    rlwinm 0, 0, 30, 18, 28
    lfs 3, 0x314(30)
    lfsx 1, 3, 0
    fmadds 1, 2, 1, 25
    fadds 1, 3, 1
    stfs 1, 0x314(30)
    lwz 0, 0x24c(30)
    lfs 2, 0x284(30)
    rlwinm 0, 0, 30, 18, 28
    lfs 3, 0x318(30)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 1, 2, 1, 24
    fadds 1, 3, 1
    stfs 1, 0x318(30)
    stfs 0, 0x31c(30)
    lfs 0, 0x314(30)
    stfs 0, 0x320(30)
    lfs 0, 0x318(30)
    stfs 0, 0x324(30)
    lfs 0, 0x31c(30)
    stfs 0, 0x328(30)
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    add 0, 3, 0
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    rlwinm. 0, 0, 0, 16, 19
    .4byte 0x40820030 # bne .L_80170700
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80170708
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x44
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x254(30)
    .4byte 0x4800000C # b .L_80170708
L_80170700:
    li 0, 0x0
    stw 0, 0x254(30)
L_80170708:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80170728
    lfs 1, 0x288(30)
    addi 3, 30, 0x284
    .4byte 0xC042AA78 # lfs f2, lbl_8053DA18@sda21(r0)
    .4byte 0xC062AA84 # lfs f3, lbl_8053DA24@sda21(r0)
    bl fn_801F71A4
L_80170728:
    lfs 1, 0xc(30)
    li 0, 0x5
    lfs 0, 0x10(30)
    mr 4, 30
    fadds 4, 1, 25
    lfs 3, 0x314(30)
    fadds 1, 0, 24
    lfs 0, 0x318(30)
    .4byte 0xC042AA88 # lfs f2, lbl_8053DA28@sda21(r0)
    li 5, 0x0
    fsubs 3, 4, 3
    .4byte 0xC882AAE0 # lfd f4, lbl_8053DA80@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC002AA80 # lfs f0, lbl_8053DA20@sda21(r0)
    lis 3, 0x4330
    fdivs 6, 3, 2
    fdivs 7, 1, 2
    mtctr 0
L_80170770:
    xoris 0, 5, 0x8000
    psq_l 5, 0xc(30), 0, 0
    lfs 1, 0x14(30)
    addi 5, 5, 0x1
    stw 0, 0x84(1)
    stw 3, 0x80(1)
    lfd 2, 0x80(1)
    psq_st 5, 0x29c(4), 0, 0
    fsubs 3, 2, 4
    stfs 1, 0x2a4(4)
    lfs 1, 0x29c(4)
    stw 0, 0x8c(1)
    xoris 0, 5, 0x8000
    fnmsubs 1, 6, 3, 1
    addi 5, 5, 0x1
    stw 3, 0x88(1)
    lfd 2, 0x88(1)
    stfs 1, 0x29c(4)
    fsubs 2, 2, 4
    lfs 1, 0x2a0(4)
    stw 0, 0x84(1)
    fnmsubs 1, 7, 2, 1
    stw 3, 0x80(1)
    stfs 1, 0x2a0(4)
    lfd 2, 0x80(1)
    lfs 1, 0x29c(4)
    fsubs 3, 2, 4
    stw 0, 0x8c(1)
    fadds 1, 1, 25
    stw 3, 0x88(1)
    stfs 1, 0x29c(4)
    lfd 2, 0x88(1)
    lfs 1, 0x2a0(4)
    fsubs 2, 2, 4
    fadds 1, 1, 24
    stfs 1, 0x2a0(4)
    stfs 0, 0x2a4(4)
    psq_l 5, 0xc(30), 0, 0
    lfs 1, 0x14(30)
    psq_st 5, 0x2a8(4), 0, 0
    stfs 1, 0x2b0(4)
    lfs 1, 0x2a8(4)
    fnmsubs 1, 6, 3, 1
    stfs 1, 0x2a8(4)
    lfs 1, 0x2ac(4)
    fnmsubs 1, 7, 2, 1
    stfs 1, 0x2ac(4)
    lfs 1, 0x2a8(4)
    fadds 1, 1, 25
    stfs 1, 0x2a8(4)
    lfs 1, 0x2ac(4)
    fadds 1, 1, 24
    stfs 1, 0x2ac(4)
    stfs 0, 0x2b0(4)
    addi 4, 4, 0x18
    .4byte 0x4200FF24 # bdnz .L_80170770
    lfs 0, 0x314(30)
    stfs 0, 0xc(30)
    lfs 0, 0x318(30)
    stfs 0, 0x10(30)
    lfs 0, 0x31c(30)
    stfs 0, 0x14(30)
    lwz 28, 0x26c(30)
    cmpwi 28, 0x0
    .4byte 0x41820028 # beq .L_80170898
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80170898
    psq_l 1, 0x314(30), 0, 0
    lfs 0, 0x31c(30)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
L_80170898:
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x408100F8 # ble .L_80170998
    lwz 0, 0x240(30)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_801708C4
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x87
    li 5, 0x0
    bl fn_801F0E34
L_801708C4:
    li 28, 0x0
L_801708C8:
    mr 3, 30
    mr 7, 28
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    stw 3, 0x28(1)
    .4byte 0x418000A4 # blt .L_8017098C
    fadds 29, 29, 31
    .4byte 0xC042AA8C # lfs f2, lbl_8053DA2C@sda21(r0)
    fadds 27, 27, 31
    addi 4, 1, 0x30
    fadds 28, 28, 30
    fadds 26, 26, 30
    fsubs 1, 29, 27
    fsubs 0, 28, 26
    fmadds 1, 2, 1, 27
    fmadds 0, 2, 0, 26
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8017098C
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_8017098C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF34 # blt .L_801708C8
L_80170998:
    lfs 0, 0x70(1)
    mr 3, 30
    lfs 1, 0x74(1)
    li 4, 0x1
    stfs 0, 0xc(30)
    lfs 0, 0x78(1)
    stfs 1, 0x10(30)
    stfs 0, 0x14(30)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182013C # beq .L_80170AFC
    lwz 0, 0x260(30)
    cmpwi 0, 0x0
    .4byte 0x418200E4 # beq .L_80170AB0
    lfs 0, 0xc(30)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    stfs 0, 0x320(30)
    addi 3, 30, 0x314
    lfs 0, 0x10(30)
    stfs 0, 0x324(30)
    lfs 0, 0x14(30)
    stfs 0, 0x328(30)
    lwz 0, 0x24c(30)
    lfs 1, 0x284(30)
    rlwinm 0, 0, 30, 18, 28
    lfs 3, 0x320(30)
    lfsx 0, 4, 0
    fmadds 0, 1, 0, 25
    fadds 0, 3, 0
    stfs 0, 0x320(30)
    lwz 0, 0x24c(30)
    lfs 1, 0x284(30)
    rlwinm 0, 0, 30, 18, 28
    lfs 3, 0x324(30)
    add 4, 4, 0
    lfs 0, 0x4(4)
    fmadds 0, 1, 0, 24
    fadds 0, 3, 0
    stfs 0, 0x324(30)
    lfs 1, 0x320(30)
    lfs 0, 0x314(30)
    lfs 3, 0x318(30)
    fsubs 4, 0, 1
    lfs 0, 0x324(30)
    fsubs 0, 3, 0
    fabs 3, 4
    fabs 23, 0
    frsp 0, 3
    fmuls 3, 2, 0
    bl fn_801F71A4
    frsp 0, 23
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    lfs 1, 0x324(30)
    addi 3, 30, 0x318
    fmuls 3, 2, 0
    bl fn_801F71A4
    lwz 28, 0x26c(30)
    cmpwi 28, 0x0
    .4byte 0x41820028 # beq .L_80170AB0
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80170AB0
    psq_l 1, 0x314(30), 0, 0
    lfs 0, 0x31c(30)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
L_80170AB0:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41810034 # bgt .L_80170AFC
    lwz 28, 0x26c(30)
    cmpwi 28, 0x0
    .4byte 0x41820E74 # beq .L_80171948
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820E60 # beq .L_80171948
    li 0, 0x0
    stb 0, 0x11c(3)
    stw 0, 0x26c(30)
    .4byte 0x48000E50 # b .L_80171948
L_80170AFC:
    lwz 4, 0x198(30)
    mr 3, 30
    addi 5, 1, 0x8
    addi 6, 1, 0x24
    addi 7, 1, 0x2c
    addi 8, 1, 0x28
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 3, 0x28(1)
    cmpwi 3, 0x0
    .4byte 0x41800020 # blt .L_80170B48
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x32c(30)
    lfs 0, 0x4(3)
    stfs 0, 0x330(30)
    lfs 0, 0x8(3)
    stfs 0, 0x334(30)
L_80170B48:
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80170B88
    lfs 2, 0x10(30)
    lfs 0, 0x14(30)
    .4byte 0xC022AA70 # lfs f1, lbl_8053DA10@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002AA84 # lfs f0, lbl_8053DA24@sda21(r0)
    stfs 2, 0x10(30)
    stfs 1, 0x14(30)
    stfs 1, 0x44(30)
    stfs 0, 0x294(30)
L_80170B88:
    lfs 1, 0x290(30)
    addi 3, 30, 0x3c
    .4byte 0xC042AA94 # lfs f2, lbl_8053DA34@sda21(r0)
    .4byte 0xC062AA74 # lfs f3, lbl_8053DA14@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x294(30)
    addi 3, 30, 0x40
    .4byte 0xC042AA94 # lfs f2, lbl_8053DA34@sda21(r0)
    .4byte 0xC062AA74 # lfs f3, lbl_8053DA14@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 0, 0x230(30)
    cmpwi 0, 0x4
    .4byte 0x418201D8 # beq .L_80170DB0
    lwz 0, 0x270(30)
    li 28, 0x0
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80170BFC
    lwz 0, 0x24(1)
    cmpwi 0, -0x1
    .4byte 0x40820008 # bne .L_80170BFC
    li 28, 0x1
L_80170BFC:
    mr 3, 30
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80170C10
    li 28, 0x1
L_80170C10:
    clrlwi 0, 28, 24
    cmplwi 0, 0x1
    .4byte 0x40820130 # bne .L_80170D48
    .4byte 0xC022AA70 # lfs f1, lbl_8053DA10@sda21(r0)
    li 0, 0x1e
    .4byte 0xC002AA88 # lfs f0, lbl_8053DA28@sda21(r0)
    stfs 1, 0x298(30)
    stfs 1, 0x294(30)
    stfs 1, 0x290(30)
    stfs 0, 0x288(30)
    stw 0, 0x240(30)
    lhz 0, 0x94(30)
    cmpwi 0, 0x2
    .4byte 0x41820050 # beq .L_80170C94
    .4byte 0x40800010 # bge .L_80170C58
    cmpwi 0, 0x1
    .4byte 0x4080002C # bge .L_80170C7C
    .4byte 0x48000040 # b .L_80170C94
L_80170C58:
    cmpwi 0, 0x4
    .4byte 0x40800038 # bge .L_80170C94
    li 3, 0x64
    li 0, 0x0
    stw 3, 0x250(30)
    .4byte 0xC002AA74 # lfs f0, lbl_8053DA14@sda21(r0)
    stw 0, 0x25c(30)
    stfs 0, 0x27c(30)
    .4byte 0x4800001C # b .L_80170C94
L_80170C7C:
    li 3, 0x5a
    li 0, 0x1
    stw 3, 0x23c(30)
    .4byte 0xC002AA74 # lfs f0, lbl_8053DA14@sda21(r0)
    stw 0, 0x25c(30)
    stfs 0, 0x27c(30)
L_80170C94:
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41810030 # bgt .L_80170CCC
    lwz 28, 0x26c(30)
    cmpwi 28, 0x0
    .4byte 0x41820024 # beq .L_80170CCC
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80170CCC
    li 0, 0x0
    stb 0, 0x11c(3)
    stw 0, 0x26c(30)
L_80170CCC:
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80170D40
    lwz 3, 0x268(30)
    lwz 0, 0x108(30)
    cmpw 3, 0
    .4byte 0x4182005C # beq .L_80170D40
    lwz 0, 0x264(30)
    cmpwi 0, 0x2
    .4byte 0x40800048 # bge .L_80170D38
    lwz 3, 0x250(30)
    lis 0, 0x4330
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822AAE0 # lfd f1, lbl_8053DA80@sda21(r0)
    stw 0, 0x8c(1)
    .4byte 0xC042AA98 # lfs f2, lbl_8053DA38@sda21(r0)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x250(30)
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
L_80170D38:
    lwz 0, 0x108(30)
    stw 0, 0x268(30)
L_80170D40:
    li 0, 0x4
    stw 0, 0x230(30)
L_80170D48:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_80170DB0
    lis 4, 0x4842
    lis 5, 0x4e55
    lwz 28, 0x108(30)
    mr 3, 30
    lfs 23, 0x3c(30)
    addi 4, 4, 0x4d42
    lfs 22, 0x40(30)
    addi 5, 5, 0x4c4c
    lfs 21, 0x44(30)
    li 6, 0x0
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80170DB0
    lwz 0, 0x108(30)
    cmpw 28, 0
    .4byte 0x4182001C # beq .L_80170DB0
    stfs 23, 0x3c(30)
    li 0, 0x0
    stfs 22, 0x40(30)
    stfs 21, 0x44(30)
    stw 0, 0xd8(30)
    stw 0, 0xdc(30)
L_80170DB0:
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4182020C # beq .L_80170FE8
    .4byte 0x40800014 # bge .L_80170DF4
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80170E04
    .4byte 0x4080005C # bge .L_80170E48
    .4byte 0x4800097C # b .L_8017176C
L_80170DF4:
    cmpwi 0, 0x4
    .4byte 0x41820850 # beq .L_80171648
    .4byte 0x40800970 # bge .L_8017176C
    .4byte 0x48000798 # b .L_80171598
L_80170E04:
    lhz 0, 0x94(30)
    cmplwi 0, 0x2
    .4byte 0x40820024 # bne .L_80170E30
    lfs 1, 0x2c(1)
    .4byte 0xC002AA9C # lfs f0, lbl_8053DA3C@sda21(r0)
    stfs 1, 0x284(30)
    lfs 1, 0x284(30)
    fcmpo cr0, 1, 0
    .4byte 0x40810948 # ble .L_8017176C
    stfs 0, 0x284(30)
    .4byte 0x48000940 # b .L_8017176C
L_80170E30:
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x40820934 # bne .L_8017176C
    .4byte 0xC002AAA0 # lfs f0, lbl_8053DA40@sda21(r0)
    stfs 0, 0x288(30)
    .4byte 0x48000928 # b .L_8017176C
L_80170E48:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x2
    .4byte 0x418200A0 # beq .L_80170EF0
    .4byte 0x40800014 # bge .L_80170E68
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80170E74
    .4byte 0x40800064 # bge .L_80170EC4
    .4byte 0x48000908 # b .L_8017176C
L_80170E68:
    cmpwi 0, 0x4
    .4byte 0x40800900 # bge .L_8017176C
    .4byte 0x480000C4 # b .L_80170F34
L_80170E74:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x408208F0 # bne .L_8017176C
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x87
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x5a
    li 0, 0xdac
    stw 3, 0x23c(30)
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x298(30)
    stfs 0, 0x294(30)
    stfs 0, 0x290(30)
    lwz 3, 0x25c(30)
    addi 0, 3, 0x1
    stw 0, 0x25c(30)
    .4byte 0x480008AC # b .L_8017176C
L_80170EC4:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x408208A0 # bne .L_8017176C
    li 3, 0x3c
    li 0, 0x5dc
    stw 3, 0x23c(30)
    stw 0, 0x250(30)
    lwz 3, 0x25c(30)
    addi 0, 3, 0x1
    stw 0, 0x25c(30)
    .4byte 0x48000880 # b .L_8017176C
L_80170EF0:
    .4byte 0xC022AA9C # lfs f1, lbl_8053DA3C@sda21(r0)
    addi 3, 30, 0x288
    .4byte 0xC042AA94 # lfs f2, lbl_8053DA34@sda21(r0)
    .4byte 0xC062AA84 # lfs f3, lbl_8053DA24@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042AA7C # lfs f2, lbl_8053DA1C@sda21(r0)
    addi 3, 30, 0x27c
    .4byte 0xC022AAA4 # lfs f1, lbl_8053DA44@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x4082084C # bne .L_8017176C
    lwz 3, 0x25c(30)
    addi 0, 3, 0x1
    stw 0, 0x25c(30)
    .4byte 0x4800083C # b .L_8017176C
L_80170F34:
    .4byte 0xC022AA88 # lfs f1, lbl_8053DA28@sda21(r0)
    addi 3, 30, 0x288
    .4byte 0xC042AA94 # lfs f2, lbl_8053DA34@sda21(r0)
    .4byte 0xC062AA84 # lfs f3, lbl_8053DA24@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042AA7C # lfs f2, lbl_8053DA1C@sda21(r0)
    addi 3, 30, 0x27c
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    lfs 1, 0x288(30)
    .4byte 0xC062AA88 # lfs f3, lbl_8053DA28@sda21(r0)
    .4byte 0xC002AA90 # lfs f0, lbl_8053DA30@sda21(r0)
    fsubs 1, 1, 3
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x408007F4 # bge .L_8017176C
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x0
    .4byte 0xC042AAA8 # lfs f2, lbl_8053DA48@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 3, 0x8c(1)
    addi 3, 3, 0x32
    stw 3, 0x23c(30)
    stfs 3, 0x288(30)
    stfs 1, 0x27c(30)
    stw 0, 0x25c(30)
    .4byte 0x48000788 # b .L_8017176C
L_80170FE8:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x1
    .4byte 0x41820170 # beq .L_80171160
    .4byte 0x40800010 # bge .L_80171004
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80171010
    .4byte 0x4800076C # b .L_8017176C
L_80171004:
    cmpwi 0, 0x3
    .4byte 0x40800764 # bge .L_8017176C
    .4byte 0x4800034C # b .L_80171358
L_80171010:
    lwz 3, 0x250(30)
    addi 0, 3, 0x64
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0xbb8
    .4byte 0x4081000C # ble .L_80171030
    li 0, 0xbb8
    stw 0, 0x250(30)
L_80171030:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820734 # bne .L_8017176C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fadds 29, 29, 31
    fadds 28, 28, 30
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
    lwz 29, 0x24(3)
    fadds 27, 27, 31
    fadds 26, 26, 30
    stfs 29, 0x38(1)
    mr 3, 29
    addi 4, 1, 0x38
    stfs 28, 0x3c(1)
    li 28, 0x0
    stfs 0, 0x40(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801710A4
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
    mr 3, 29
    stfs 27, 0x44(1)
    addi 4, 1, 0x44
    stfs 26, 0x48(1)
    stfs 0, 0x4c(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801710A4
    li 28, 0x1
L_801710A4:
    clrlwi. 0, 28, 24
    .4byte 0x418206C4 # beq .L_8017176C
    lwz 3, 0x28(1)
    cmpwi 3, 0x0
    .4byte 0x41800070 # blt .L_80171124
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x320(30), 0, 0
    stfs 0, 0x328(30)
    lwz 28, 0x26c(30)
    cmpwi 28, 0x0
    .4byte 0x41820050 # beq .L_80171124
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_80171124
    .4byte 0xC022AAAC # lfs f1, lbl_8053DA4C@sda21(r0)
    .4byte 0xC002AAB0 # lfs f0, lbl_8053DA50@sda21(r0)
    stfs 1, 0x60(1)
    stfs 1, 0x64(1)
    lwz 4, 0x60(1)
    stfs 0, 0x68(1)
    lwz 0, 0x64(1)
    stw 4, 0x60(3)
    lwz 4, 0x68(1)
    stfs 0, 0x6c(1)
    stw 0, 0x64(3)
    lwz 0, 0x6c(1)
    stw 4, 0x68(3)
    stw 0, 0x6c(3)
L_80171124:
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
    lis 4, 0x4
    li 0, 0x1
    mr 3, 30
    stfs 0, 0x298(30)
    addi 4, 4, 0x87
    li 5, 0x0
    stfs 0, 0x294(30)
    stfs 0, 0x290(30)
    stw 0, 0x260(30)
    lwz 6, 0x25c(30)
    addi 0, 6, 0x1
    stw 0, 0x25c(30)
    bl fn_801F0E34
    .4byte 0x48000610 # b .L_8017176C
L_80171160:
    lfs 1, 0x320(30)
    addi 3, 30, 0x314
    lfs 0, 0x314(30)
    lfs 3, 0x318(30)
    fsubs 4, 0, 1
    lfs 0, 0x324(30)
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    fsubs 0, 3, 0
    fabs 4, 4
    fabs 0, 0
    frsp 3, 4
    frsp 0, 0
    fmuls 3, 2, 3
    fmuls 21, 2, 0
    bl fn_801F71A4
    fmr 3, 21
    lfs 1, 0x324(30)
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    addi 3, 30, 0x318
    bl fn_801F71A4
    lis 6, 0x4e55
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 5, 0x4(30)
    addi 4, 30, 0x314
    addi 6, 6, 0x4c4c
    bl fn_802A1688
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    addi 3, 30, 0x27c
    lfs 5, 0x314(30)
    lfs 1, 0x320(30)
    fmr 3, 2
    lfs 4, 0x318(30)
    lfs 0, 0x324(30)
    fsubs 21, 5, 1
    .4byte 0xC022AAA4 # lfs f1, lbl_8053DA44@sda21(r0)
    fsubs 22, 4, 0
    bl fn_801F71A4
    fmuls 1, 22, 22
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
    fmadds 4, 21, 21, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80171250
    frsqrte 1, 4
    .4byte 0xC862AAB8 # lfd f3, lbl_8053DA58@sda21(r0)
    .4byte 0xC842AAC0 # lfd f2, lbl_8053DA60@sda21(r0)
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
    .4byte 0x48000088 # b .L_801712D4
L_80171250:
    .4byte 0xC802AAC8 # lfd f0, lbl_8053DA68@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80171268
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801712D4
L_80171268:
    stfs 4, 0x20(1)
    lis 0, 0x7f80
    lwz 4, 0x20(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80171290
    .4byte 0x40800040 # bge .L_801712C0
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801712A8
    .4byte 0x48000034 # b .L_801712C0
L_80171290:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801712A0
    li 0, 0x1
    .4byte 0x48000028 # b .L_801712C4
L_801712A0:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801712C4
L_801712A8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801712B8
    li 0, 0x5
    .4byte 0x48000010 # b .L_801712C4
L_801712B8:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801712C4
L_801712C0:
    li 0, 0x4
L_801712C4:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801712D4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801712D4:
    .4byte 0xC002AAA4 # lfs f0, lbl_8053DA44@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800490 # bge .L_8017176C
    stfs 0, 0x27c(30)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    li 0, 0x14
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x320(30), 0, 0
    stfs 0, 0x328(30)
    lwz 3, 0x24c(30)
    lfs 1, 0x284(30)
    rlwinm 3, 3, 30, 18, 28
    lfs 2, 0x320(30)
    lfsx 0, 4, 3
    fmadds 0, 1, 0, 25
    fadds 0, 2, 0
    stfs 0, 0x320(30)
    lwz 3, 0x24c(30)
    lfs 1, 0x284(30)
    rlwinm 3, 3, 30, 18, 28
    lfs 2, 0x324(30)
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmadds 0, 1, 0, 24
    fadds 0, 2, 0
    stfs 0, 0x324(30)
    stw 0, 0x23c(30)
    lwz 3, 0x25c(30)
    addi 0, 3, 0x1
    stw 0, 0x25c(30)
    .4byte 0x48000418 # b .L_8017176C
L_80171358:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x4082040C # bne .L_8017176C
    lfs 1, 0x320(30)
    addi 3, 30, 0x314
    lfs 0, 0x314(30)
    lfs 3, 0x318(30)
    fsubs 4, 0, 1
    lfs 0, 0x324(30)
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    fsubs 0, 3, 0
    fabs 4, 4
    fabs 0, 0
    frsp 3, 4
    frsp 0, 0
    fmuls 3, 2, 3
    fmuls 21, 2, 0
    bl fn_801F71A4
    fmr 3, 21
    lfs 1, 0x324(30)
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    addi 3, 30, 0x318
    bl fn_801F71A4
    .4byte 0xC042AA90 # lfs f2, lbl_8053DA30@sda21(r0)
    addi 3, 30, 0x27c
    .4byte 0xC022AA74 # lfs f1, lbl_8053DA14@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    lfs 1, 0x318(30)
    lfs 0, 0x324(30)
    lfs 2, 0x314(30)
    fsubs 3, 1, 0
    lfs 1, 0x320(30)
    .4byte 0xC002AA70 # lfs f0, lbl_8053DA10@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_8017143C
    frsqrte 1, 4
    .4byte 0xC862AAB8 # lfd f3, lbl_8053DA58@sda21(r0)
    .4byte 0xC842AAC0 # lfd f2, lbl_8053DA60@sda21(r0)
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
    .4byte 0x48000088 # b .L_801714C0
L_8017143C:
    .4byte 0xC802AAC8 # lfd f0, lbl_8053DA68@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80171454
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801714C0
L_80171454:
    stfs 4, 0x1c(1)
    lis 0, 0x7f80
    lwz 4, 0x1c(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_8017147C
    .4byte 0x40800040 # bge .L_801714AC
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80171494
    .4byte 0x48000034 # b .L_801714AC
L_8017147C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8017148C
    li 0, 0x1
    .4byte 0x48000028 # b .L_801714B0
L_8017148C:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801714B0
L_80171494:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801714A4
    li 0, 0x5
    .4byte 0x48000010 # b .L_801714B0
L_801714A4:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801714B0
L_801714AC:
    li 0, 0x4
L_801714B0:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801714C0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801714C0:
    .4byte 0xC002AAA4 # lfs f0, lbl_8053DA44@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x408002A4 # bge .L_8017176C
    .4byte 0xC042AA74 # lfs f2, lbl_8053DA14@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC022AAA8 # lfs f1, lbl_8053DA48@sda21(r0)
    stfs 2, 0x27c(30)
    li 3, 0x64
    li 0, 0x0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 4, 0x8c(1)
    addi 4, 4, 0x32
    stw 4, 0x23c(30)
    stw 3, 0x250(30)
    stw 0, 0x260(30)
    stw 0, 0x25c(30)
    lwz 28, 0x26c(30)
    cmpwi 28, 0x0
    .4byte 0x41820228 # beq .L_8017176C
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820214 # beq .L_8017176C
    .4byte 0xC022AAD0 # lfs f1, lbl_8053DA70@sda21(r0)
    .4byte 0xC002AAD4 # lfs f0, lbl_8053DA74@sda21(r0)
    stfs 1, 0x50(1)
    stfs 1, 0x54(1)
    lwz 4, 0x50(1)
    stfs 0, 0x58(1)
    lwz 0, 0x54(1)
    stw 4, 0x60(3)
    lwz 4, 0x58(1)
    stfs 0, 0x5c(1)
    stw 0, 0x64(3)
    lwz 0, 0x5c(1)
    stw 4, 0x68(3)
    stw 0, 0x6c(3)
    .4byte 0x480001D8 # b .L_8017176C
L_80171598:
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x408201CC # bne .L_8017176C
    .4byte 0xC002AAA0 # lfs f0, lbl_8053DA40@sda21(r0)
    stfs 0, 0x288(30)
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x408201B8 # bne .L_8017176C
    lwz 3, 0x28c(30)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_801715F4
    lwz 3, 0x4(30)
    addi 4, 30, 0x314
    .4byte 0xC022AA94 # lfs f1, lbl_8053DA34@sda21(r0)
    li 5, 0x19f
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x28c(30)
    .4byte 0x48000024 # b .L_80171614
L_801715F4:
    lfs 3, 0x318(30)
    .4byte 0xC022AA80 # lfs f1, lbl_8053DA20@sda21(r0)
    lfs 2, 0x31c(30)
    lfs 0, 0x314(30)
    fadds 3, 3, 1
    stfs 0, 0xa4(3)
    stfs 3, 0xa8(3)
    stfs 2, 0xac(3)
L_80171614:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lis 7, 0x1
    lwz 5, 0x4(30)
    addi 4, 4, 0x5a45
    addi 6, 30, 0x314
    subi 7, 7, 0x1f40
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x2
    stw 0, 0x23c(30)
    .4byte 0x48000128 # b .L_8017176C
L_80171648:
    lwz 0, 0x24(1)
    cmpwi 0, -0x1
    .4byte 0x4182011C # beq .L_8017176C
    li 0, 0x0
    stw 0, 0x230(30)
    lhz 0, 0x94(30)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_801716C8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002AA74 # lfs f0, lbl_8053DA14@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x1
    .4byte 0xC042AAA8 # lfs f2, lbl_8053DA48@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 3, 0x8c(1)
    addi 3, 3, 0x32
    stw 3, 0x23c(30)
    stw 0, 0x230(30)
L_801716C8:
    lhz 0, 0x94(30)
    cmplwi 0, 0x3
    .4byte 0x40820080 # bne .L_80171750
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC042AA74 # lfs f2, lbl_8053DA14@sda21(r0)
    lwz 5, 0xb4(6)
    li 4, 0x0
    .4byte 0xC062AAA8 # lfs f3, lbl_8053DA48@sda21(r0)
    li 3, 0x64
    mullw 5, 5, 0
    .4byte 0xC002AA88 # lfs f0, lbl_8053DA28@sda21(r0)
    li 0, 0x2
    addis 5, 5, 0x3c6f
    subi 5, 5, 0xca1
    stw 5, 0xb4(6)
    lwz 5, 0xb4(6)
    srwi 5, 5, 9
    oris 5, 5, 0x3f80
    stw 5, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x88(1)
    lwz 5, 0x8c(1)
    addi 5, 5, 0x32
    stw 5, 0x23c(30)
    stw 4, 0x260(30)
    stw 3, 0x250(30)
    stfs 2, 0x27c(30)
    stfs 0, 0x288(30)
    stw 0, 0x230(30)
L_80171750:
    lhz 0, 0x94(30)
    cmplwi 0, 0x4
    .4byte 0x40820014 # bne .L_8017176C
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x23c(30)
    stw 0, 0x230(30)
L_8017176C:
    lwz 3, 0x230(30)
    cmpwi 3, 0x4
    .4byte 0x4182016C # beq .L_801718E0
    lwz 0, 0x260(30)
    cmpwi 0, 0x0
    .4byte 0x40820160 # bne .L_801718E0
    lwz 0, 0x24(1)
    cmpwi 0, -0x1
    .4byte 0x41820058 # beq .L_801717E4
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_801717A4
    lwz 0, 0x25c(30)
    cmpwi 0, 0x1
    .4byte 0x418200F4 # beq .L_80171894
L_801717A4:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0x280(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x290(30)
    lhz 0, 0x8(1)
    lfs 1, 0x280(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x294(30)
    .4byte 0x480000B4 # b .L_80171894
L_801717E4:
    lwz 0, 0x270(30)
    cmpwi 0, 0x1
    .4byte 0x408200A8 # bne .L_80171894
    lfs 3, 0x32c(30)
    lis 3, lbl_80534C00@ha
    lfs 2, 0xc(30)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x330(30)
    lfs 0, 0x10(30)
    fsubs 21, 3, 2
    fsubs 22, 1, 0
    fmr 1, 21
    fmr 2, 22
    bl fn_80093340
    .4byte 0xC002AAD8 # lfs f0, lbl_8053DA78@sda21(r0)
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80534C00@ha
    lfs 3, 0x280(30)
    fmuls 0, 1, 0
    addi 4, 4, lbl_8052EBC0@l
    fmr 1, 21
    addi 3, 3, lbl_80534C00@l
    fmr 2, 22
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 3, 0
    stfs 0, 0x290(30)
    bl fn_80093340
    .4byte 0xC002AAD8 # lfs f0, lbl_8053DA78@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x280(30)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 2, 0
    stfs 0, 0x294(30)
L_80171894:
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_801718E0
    lwz 5, 0x248(30)
    addi 4, 31, 0x10
    addi 3, 31, 0x0
    addi 0, 5, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    clrlwi 0, 0, 30
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x238(30)
    lwz 0, 0x248(30)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x258(30)
L_801718E0:
    lwz 3, 0x234(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801718F4
    subi 0, 3, 0x1
    stw 0, 0x234(30)
L_801718F4:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80171908
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_80171908:
    addi 4, 30, 0x8
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80171920
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_80171920:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80171934
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_80171934:
    lwz 3, 0x23c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80171948
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_80171948:
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
    psq_l 25, 0xe8(1), 0, 0
    lfd 25, 0xe0(1)
    psq_l 24, 0xd8(1), 0, 0
    lfd 24, 0xd0(1)
    psq_l 23, 0xc8(1), 0, 0
    lfd 23, 0xc0(1)
    psq_l 22, 0xb8(1), 0, 0
    lfd 22, 0xb0(1)
    psq_l 21, 0xa8(1), 0, 0
    lfd 21, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    lwz 0, 0x154(1)
    lwz 28, 0x90(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_801719C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x41810030 # bgt .L_80171A10
    lwz 31, 0x26c(30)
    cmpwi 31, 0x0
    .4byte 0x41820024 # beq .L_80171A10
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80171A10
    li 0, 0x0
    stb 0, 0x11c(3)
    stw 0, 0x26c(30)
L_80171A10:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80171A28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr. 29, 3
    .4byte 0x41820090 # beq .L_80171AD8
    lis 3, lbl_804A0810@ha
    addi 0, 3, lbl_804A0810@l
    stw 0, 0x0(29)
    lhz 0, 0x94(29)
    cmplwi 0, 0x5
    .4byte 0x41820054 # beq .L_80171AB4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0x9
    .4byte 0x4182001C # beq .L_80171A8C
    cmpwi 0, 0xb
    .4byte 0x41820014 # beq .L_80171A8C
    lwz 0, 0x108(29)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80171A8C
    bl fn_80138B7C
L_80171A8C:
    lwz 31, 0x26c(29)
    cmpwi 31, 0x0
    .4byte 0x41820020 # beq .L_80171AB4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80171AB4
    li 0, 0x0
    stb 0, 0x11c(3)
L_80171AB4:
    lwz 3, 0x28c(29)
    bl fn_801EE434
    mr 3, 29
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_80171AD8
    mr 3, 29
    bl dtor_80084580
L_80171AD8:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80171AF8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC082AAD0 # lfs f4, lbl_8053DA70@sda21(r0)
    li 4, 0x0
    stw 0, 0x24(1)
    .4byte 0xC062AAD4 # lfs f3, lbl_8053DA74@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0xa00
    .4byte 0xC042AA70 # lfs f2, lbl_8053DA10@sda21(r0)
    lwz 0, 0x90(31)
    addi 3, 3, 0x2204
    .4byte 0xC022AA94 # lfs f1, lbl_8053DA34@sda21(r0)
    clrlwi 0, 0, 24
    .4byte 0xC002AAE8 # lfs f0, lbl_8053DA88@sda21(r0)
    sth 0, 0x94(31)
    li 0, 0x3
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 23
    stw 5, 0x270(31)
    stfs 4, 0x60(31)
    stfs 4, 0x64(31)
    stfs 3, 0x68(31)
    stfs 3, 0x6c(31)
    stfs 4, 0x80(31)
    stfs 4, 0x84(31)
    stfs 3, 0x88(31)
    stfs 3, 0x8c(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 4, 0x240(31)
    stw 4, 0x244(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x29c(31), 0, 0
    stfs 3, 0x2a4(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2a8(31), 0, 0
    stfs 3, 0x2b0(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2b4(31), 0, 0
    stfs 3, 0x2bc(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2c0(31), 0, 0
    stfs 3, 0x2c8(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2cc(31), 0, 0
    stfs 3, 0x2d4(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2d8(31), 0, 0
    stfs 3, 0x2e0(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2e4(31), 0, 0
    stfs 3, 0x2ec(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2f0(31), 0, 0
    stfs 3, 0x2f8(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x2fc(31), 0, 0
    stfs 3, 0x304(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x308(31), 0, 0
    stfs 3, 0x310(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 3, 0x14(31)
    psq_st 4, 0x314(31), 0, 0
    stfs 3, 0x31c(31)
    stfs 2, 0x298(31)
    stfs 2, 0x294(31)
    stfs 2, 0x290(31)
    stfs 2, 0x44(31)
    stfs 2, 0x40(31)
    stfs 2, 0x3c(31)
    stfs 1, 0x280(31)
    stfs 2, 0x278(31)
    stfs 0, 0x27c(31)
    stw 3, 0xb0(31)
    stw 0, 0xbc(31)
    stw 4, 0x28c(31)
    stw 4, 0x264(31)
    bl fn_802DE814
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80171C88
    li 0, 0x10
    stw 0, 0x108(31)
L_80171C88:
    lis 3, lbl_80529DEC@ha
    addi 5, 3, lbl_80529DEC@l
    lwz 0, 0x118(5)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80171CB0
    lwz 0, 0x11c(5)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80171CB0
    li 0, 0x18
    stw 0, 0x108(31)
L_80171CB0:
    lwz 4, 0x108(31)
    li 3, 0x0
    .4byte 0xC022AA70 # lfs f1, lbl_8053DA10@sda21(r0)
    li 0, 0x10
    stw 4, 0x268(31)
    .4byte 0xC002AAA0 # lfs f0, lbl_8053DA40@sda21(r0)
    stw 3, 0x258(31)
    stfs 1, 0x284(31)
    stfs 0, 0x288(31)
    stw 0, 0x118(31)
    lfs 0, 0xc(31)
    stfs 0, 0x32c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x330(31)
    lfs 0, 0x14(31)
    stfs 0, 0x334(31)
    lwz 0, 0x118(5)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80171D38
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_80171D38
    bl GetRoomConfigRecord
    lwz 0, 0x18(3)
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_80171D38
    bl GetRoomConfigRecord
    lwz 0, 0x14(3)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80171D38
    li 0, 0x64
    stw 0, 0x244(31)
L_80171D38:
    li 7, 0x0
    lis 3, 0x19
    stw 7, 0x260(31)
    li 6, 0x2
    li 5, 0x47e
    addi 4, 3, 0x660d
    stw 7, 0x25c(31)
    li 0, 0x8
    .4byte 0xC062AA74 # lfs f3, lbl_8053DA14@sda21(r0)
    stw 6, 0x98(31)
    .4byte 0xC022AA9C # lfs f1, lbl_8053DA3C@sda21(r0)
    stw 5, 0x250(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x64
    stw 3, 0x23c(31)
    stb 0, 0x274(31)
    stw 7, 0x26c(31)
    stw 7, 0x230(31)
    lhz 0, 0x94(31)
    cmpwi 0, 0x3
    .4byte 0x4182003C # beq .L_80171E00
    .4byte 0x4080001C # bge .L_80171DE4
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_80171E70
    .4byte 0x408000BC # bge .L_80171E90
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80171DF4
    .4byte 0x480000E4 # b .L_80171EC4
L_80171DE4:
    cmpwi 0, 0x5
    .4byte 0x418200C8 # beq .L_80171EB0
    .4byte 0x408000D8 # bge .L_80171EC4
    .4byte 0x480000A8 # b .L_80171E98
L_80171DF4:
    li 0, 0x190
    stw 0, 0x250(31)
    .4byte 0x480000C8 # b .L_80171EC4
L_80171E00:
    li 0, 0x6
    .4byte 0xC042AAA8 # lfs f2, lbl_8053DA48@sda21(r0)
    stb 0, 0x274(31)
    li 0, 0x64
    .4byte 0xC002AA88 # lfs f0, lbl_8053DA28@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 3
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x32
    stw 3, 0x23c(31)
    stw 0, 0x250(31)
    stfs 3, 0x27c(31)
    stfs 0, 0x288(31)
    stw 6, 0x230(31)
    .4byte 0x48000058 # b .L_80171EC4
L_80171E70:
    li 0, 0x4
    .4byte 0xC002AA88 # lfs f0, lbl_8053DA28@sda21(r0)
    stb 0, 0x274(31)
    li 0, 0x1
    stfs 3, 0x27c(31)
    stfs 0, 0x288(31)
    stw 0, 0x230(31)
    .4byte 0x48000038 # b .L_80171EC4
L_80171E90:
    stb 6, 0x274(31)
    .4byte 0x48000030 # b .L_80171EC4
L_80171E98:
    li 3, 0x32
    li 0, 0x3
    stw 3, 0x23c(31)
    stb 0, 0x274(31)
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_80171EC4
L_80171EB0:
    li 3, 0x4
    li 0, 0x2710
    stw 3, 0x114(31)
    stw 0, 0x108(31)
    stb 7, 0x1a8(31)
L_80171EC4:
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820010 # beq .L_80171EDC
    li 0, 0x0
    stw 0, 0xb0(31)
    .4byte 0x48000060 # b .L_80171F38
L_80171EDC:
    lhz 0, 0x94(31)
    cmplwi 0, 0x5
    .4byte 0x41820054 # beq .L_80171F38
    bl SpatialRegistry_GetBase
    lis 4, 0x534c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5233
    addi 6, 31, 0xc
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x26c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80171F38
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80171F38:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80171F4C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C09A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C09A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80171F9C
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
L_80171F9C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80171FD4
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
L_80171FD4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017200C
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
L_8017200C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80172044
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
L_80172044:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017207C
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
L_8017207C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801720B4
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
L_801720B4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801720EC
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
L_801720EC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80172124
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
L_80172124:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017215C
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
L_8017215C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80172170:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_801721B4
    lis 5, lbl_804A0868@ha
    li 4, 0x0
    addi 0, 5, lbl_804A0868@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801721B4
    mr 3, 30
    bl dtor_80084580
L_801721B4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801721D0:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022AAF0 # lfs f1, lbl_8053DA90@sda21(r0)
    lis 4, lbl_804667F0@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_804667F0@l
    fmr 2, 1
    li 6, 0x0
    lwz 5, 0x24c(3)
    li 7, 0x0
    addi 5, 5, 0x99
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80172210:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_801722AC
    lfs 1, 0x14(31)
    .4byte 0xC002AAF4 # lfs f0, lbl_8053DA94@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081004C # ble .L_80172288
    lfs 2, 0x44(31)
    .4byte 0xC022AAF0 # lfs f1, lbl_8053DA90@sda21(r0)
    .4byte 0xC002AAF8 # lfs f0, lbl_8053DA98@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80172264
    stfs 0, 0x44(31)
L_80172264:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x48000298 # b .L_8017251C
L_80172288:
    stfs 0, 0x14(31)
    lis 3, 0x1
    addi 3, 3, 0x1101
    li 0, 0x0
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0xb0(31)
    stw 0, 0x90(31)
L_801722AC:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_801722D0
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801722E4
L_801722D0:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x4800023C # b .L_8017251C
L_801722E4:
    lfs 1, 0x250(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AAFC # lfs f2, lbl_8053DA9C@sda21(r0)
    .4byte 0xC062AAF0 # lfs f3, lbl_8053DA90@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x254(31)
    addi 3, 31, 0x40
    .4byte 0xC042AAFC # lfs f2, lbl_8053DA9C@sda21(r0)
    .4byte 0xC062AAF0 # lfs f3, lbl_8053DA90@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80172360
    .4byte 0x48000154 # b .L_801724B0
L_80172360:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820148 # bne .L_801724B0
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC062AAF0 # lfs f3, lbl_8053DA90@sda21(r0)
    lwz 0, 0xb4(4)
    .4byte 0xC022AB00 # lfs f1, lbl_8053DAA0@sda21(r0)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 3, 0x1c(1)
    addi 0, 3, 0xa
    stw 0, 0x238(31)
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    clrlwi 0, 0, 31
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200BC # bne .L_801724A0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022AB08 # lfs f1, lbl_8053DAA8@sda21(r0)
    lwz 0, 0xb4(6)
    .4byte 0xC042AB04 # lfs f2, lbl_8053DAA4@sda21(r0)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 2, 0
    stfs 0, 0x250(31)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfs 0, 0x4(3)
    fmuls 0, 2, 0
    stfs 0, 0x254(31)
    .4byte 0x48000014 # b .L_801724B0
L_801724A0:
    .4byte 0xC002AAF4 # lfs f0, lbl_8053DA94@sda21(r0)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
L_801724B0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801724DC
    lwz 3, 0x24c(31)
    li 0, 0x8
    addi 3, 3, 0x1
    stw 3, 0x24c(31)
    lwz 3, 0x24c(31)
    clrlwi 3, 3, 30
    stw 3, 0x24c(31)
    stw 0, 0x234(31)
L_801724DC:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801724F0
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801724F0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80172504
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80172504:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017251C
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_8017251C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80172530:
    stwu 1, -0x20(1)
    li 6, 0x0
    .4byte 0xC0A2AB0C # lfs f5, lbl_8053DAAC@sda21(r0)
    lis 5, 0x1
    lwz 0, 0x90(3)
    lis 4, 0x19
    .4byte 0xC082AB10 # lfs f4, lbl_8053DAB0@sda21(r0)
    clrlwi 0, 0, 24
    .4byte 0xC002AAF4 # lfs f0, lbl_8053DA94@sda21(r0)
    stw 0, 0x90(3)
    addi 0, 5, 0x1101
    addi 5, 4, 0x660d
    .4byte 0xC042AAF0 # lfs f2, lbl_8053DA90@sda21(r0)
    stfs 5, 0x60(3)
    .4byte 0xC062AB14 # lfs f3, lbl_8053DAB4@sda21(r0)
    stfs 5, 0x64(3)
    .4byte 0xC022AB00 # lfs f1, lbl_8053DAA0@sda21(r0)
    stfs 4, 0x68(3)
    stfs 4, 0x6c(3)
    stfs 5, 0x80(3)
    stfs 5, 0x84(3)
    stfs 4, 0x88(3)
    stfs 4, 0x8c(3)
    stw 6, 0x240(3)
    stw 6, 0x244(3)
    stw 6, 0x248(3)
    stw 6, 0x234(3)
    stw 6, 0x238(3)
    stw 6, 0x23c(3)
    stw 6, 0x24c(3)
    stfs 0, 0x250(3)
    stfs 0, 0x254(3)
    stfs 0, 0x258(3)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    stw 0, 0xb0(3)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(7)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x240(3)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(7)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    addi 0, 4, 0xa
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80172660
    stw 6, 0xb0(3)
L_80172660:
    li 0, 0x0
    stw 0, 0x230(3)
    addi 1, 1, 0x20
    blr

fn_80172670:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C0AA0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C0AA0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801726C0
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
L_801726C0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801726F8
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
L_801726F8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80172730
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
L_80172730:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80172768
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
L_80172768:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801727A0
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
L_801727A0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801727D8
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
L_801727D8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80172810
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
L_80172810:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80172848
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
L_80172848:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80172880
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
L_80172880:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80172894:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    cmpwi 0, 0x6
    .4byte 0x40820030 # bne .L_801728E4
    li 0, 0x0
    stw 0, 0x18c(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_801728E4:
    mr 3, 31
    bl fn_801F4F28
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80172900:
    stwu 1, -0xa0(1)
    mflr 0
    li 10, 0x0
    stw 0, 0xa4(1)
    li 0, -0x1
    addi 9, 1, 0x5c
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    mr 30, 3
    stw 0, 0x6c(1)
    stw 0, 0x70(1)
    .4byte 0x48000064 # b .L_80172990
L_80172930:
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
L_80172990:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80172930
    .4byte 0x880D8FA0 # lbz r0, lbl_8053AB60@sda21(r0)
    li 6, 0x0
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    cmplwi 0, 0x1
    stw 7, 0x6c(1)
    stw 6, 0x70(1)
    stw 6, 0x74(1)
    stb 6, 0x78(1)
    stb 6, 0x79(1)
    stb 6, 0x7a(1)
    stb 5, 0x7b(1)
    stb 5, 0x7c(1)
    stb 6, 0x7d(1)
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
    stw 3, 0x94(1)
    stfs 0, 0x38(1)
    stfs 0, 0x48(1)
    stfs 0, 0x58(1)
    .4byte 0x41820194 # beq .L_80172BB0
    lwz 0, 0x90(30)
    clrlwi 0, 0, 24
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_80172A38
    cmpwi 0, 0x8
    .4byte 0x40820010 # bne .L_80172A44
L_80172A38:
    mr 3, 30
    bl fn_80172BC8
    .4byte 0x48000170 # b .L_80172BB0
L_80172A44:
    lbz 0, 0x234(30)
    li 31, 0x0
    stb 0, 0x5d(1)
    lwz 0, 0x230(30)
    cmpwi 0, 0x6
    .4byte 0x40820018 # bne .L_80172A70
    lwz 0, 0x264(30)
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_80172A70
    li 0, 0x11
    stw 0, 0x8c(1)
L_80172A70:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x41800108 # blt .L_80172B80
    lwz 0, 0x23c(30)
    cmpwi 0, 0x1
    .4byte 0x4082003C # bne .L_80172AC0
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    addi 0, 1, 0x2c
    .4byte 0xC022AB1C # lfs f1, lbl_8053DABC@sda21(r0)
    li 31, 0x1
    stfs 0, 0x30(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    stfs 0, 0x4c(1)
    stfs 0, 0x50(1)
    stfs 1, 0x54(1)
    stw 0, 0x74(1)
L_80172AC0:
    bl GetRoomConfigRecord
    lwz 5, 0xcc(3)
    lwz 4, 0xd0(3)
    lwz 0, 0xd4(3)
    lwz 3, 0xd8(3)
    lfs 1, 0xc(30)
    stw 5, 0x1c(1)
    stfs 1, 0x10(1)
    lfs 0, 0x1c(1)
    stw 4, 0x20(1)
    lfs 2, 0x10(30)
    fadds 1, 1, 0
    lfs 0, 0x20(1)
    stfs 2, 0x14(1)
    fadds 0, 2, 0
    lfs 2, 0x14(30)
    stw 0, 0x24(1)
    stfs 2, 0x18(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 0, 0x90(30)
    stw 3, 0x28(1)
    clrlwi 0, 0, 24
    cmpwi 0, 0x6
    .4byte 0x41820020 # beq .L_80172B40
    lwz 4, 0x280(30)
    lis 3, lbl_80466808@ha
    addi 3, 3, lbl_80466808@l
    addi 5, 1, 0x10
    addi 4, 4, 0x226
    addi 6, 1, 0x5c
    bl fn_801EF574
L_80172B40:
    li 3, 0x0
    neg 0, 31
    stw 3, 0x8(1)
    or 0, 0, 31
    srwi 7, 0, 31
    addi 5, 30, 0xc
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 6, 0x280(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x318
    bl fn_803075AC
    .4byte 0x48000034 # b .L_80172BB0
L_80172B80:
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    lis 3, lbl_80466808@ha
    lwz 5, 0x280(30)
    addi 4, 3, lbl_80466808@l
    fmr 2, 1
    mr 3, 30
    addi 5, 5, 0x226
    addi 6, 1, 0x5c
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_80172BB0:
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80172BC8:
    stwu 1, -0x80(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 9, 1, 0x38
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80172C58
L_80172BF8:
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
L_80172C58:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80172BF8
    .4byte 0xC022AB18 # lfs f1, lbl_8053DAB8@sda21(r0)
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
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lwz 0, 0x90(31)
    cmplwi 0, 0x7
    .4byte 0x418200C8 # beq .L_80172DAC
    .4byte 0xC002AB1C # lfs f0, lbl_8053DABC@sda21(r0)
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80172D44
    .4byte 0xC002AB20 # lfs f0, lbl_8053DAC0@sda21(r0)
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
L_80172D44:
    addi 0, 1, 0x8
    stw 0, 0x50(1)
    lwz 0, 0x4(31)
    lwz 3, 0x280(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x3fd
    .4byte 0x40800050 # bge .L_80172DAC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80466808@ha
    addi 5, 3, lbl_80466808@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x38
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80172DAC:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80172DC4:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    stw 28, 0x70(1)
    .4byte 0x880D8FA0 # lbz r0, lbl_8053AB60@sda21(r0)
    li 4, 0x0
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    mr 31, 3
    cmplwi 0, 0x1
    sth 4, 0x8(1)
    stw 4, 0x2c(1)
    stfs 0, 0x28(1)
    .4byte 0x40820020 # bne .L_80172E28
    lfs 0, 0x2b4(31)
    stfs 0, 0xc(31)
    lfs 0, 0x2b8(31)
    stfs 0, 0x10(31)
    lfs 0, 0x2bc(31)
    stfs 0, 0x14(31)
    .4byte 0x480013D4 # b .L_801741F8
L_80172E28:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x38
    lfs 0, 0x14(31)
    psq_st 1, 0x44(1), 0, 0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    stfs 0, 0x4c(1)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x40(1)
    bl fn_8043E7CC
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_80172E74
    cmpwi 0, 0x8
    .4byte 0x40820010 # bne .L_80172E80
L_80172E74:
    mr 3, 31
    bl fn_80174220
    .4byte 0x4800137C # b .L_801741F8
L_80172E80:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x41820014 # beq .L_80172E9C
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_80172E9C
    mr 3, 31
    bl fn_801752D8
L_80172E9C:
    mr 3, 31
    bl fn_80175024
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182003C # beq .L_80172EF0
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80172EE0
    li 0, 0x14
    stw 0, 0x250(31)
    .4byte 0x4800131C # b .L_801741F8
L_80172EE0:
    li 3, 0x1
    li 0, 0x3c
    stw 3, 0x254(31)
    stw 0, 0x250(31)
L_80172EF0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x418206E8 # beq .L_801735E0
    cmpwi 0, 0x9
    .4byte 0x418206E0 # beq .L_801735E0
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x408206D4 # bne .L_801735E0
    li 29, 0x0
L_80172F14:
    mr 3, 31
    mr 7, 29
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    lhz 4, 0x94(31)
    mr 30, 3
    cmplwi 4, 0x0
    .4byte 0x41820008 # beq .L_80172F40
    subi 30, 4, 0x1
L_80172F40:
    cmpwi 30, 0x0
    .4byte 0x418002D0 # blt .L_80173214
    mr 3, 30
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x408202CC # bne .L_80173220
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 30
    lfs 0, 0xc(31)
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
    .4byte 0xC002AB24 # lfs f0, lbl_8053DAC4@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    lwz 0, 0x98(31)
    cmpw 0, 3
    .4byte 0x40820268 # bne .L_80173220
    li 0, 0x1
    .4byte 0xC042AB28 # lfs f2, lbl_8053DAC8@sda21(r0)
    stw 0, 0x254(31)
    lfs 1, 0x10(31)
    lfs 4, 0x64(31)
    lfs 6, 0x6c(31)
    lfs 0, 0xc(31)
    fadds 4, 4, 1
    lfs 3, 0x60(31)
    fadds 6, 6, 1
    lfs 5, 0x68(31)
    fadds 3, 3, 0
    fadds 5, 5, 0
    fsubs 0, 4, 6
    fsubs 1, 3, 5
    fmadds 0, 2, 0, 6
    fmadds 1, 2, 1, 5
    stfs 0, 0x34(1)
    stfs 1, 0x30(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8017302C
    .4byte 0x4082020C # bne .L_80173220
    mr 3, 30
    addi 4, 1, 0x30
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x418201F8 # beq .L_80173220
L_8017302C:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_8017309C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8017309C:
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    li 3, 0x28
    li 0, 0x0
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    stw 3, 0x258(31)
    stw 0, 0x24c(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x4
    .4byte 0x41820028 # beq .L_801730EC
    cmplwi 0, 0x5
    .4byte 0x41820020 # beq .L_801730EC
    cmplwi 0, 0x6
    .4byte 0x41820018 # beq .L_801730EC
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801730EC
    li 0, 0x1
    stw 0, 0x230(31)
L_801730EC:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80173100
    cmplwi 0, 0x3
    .4byte 0x40820088 # bne .L_80173184
L_80173100:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80173134
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80173134
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80173134:
    lwz 5, 0x90(31)
    li 4, 0x0
    li 3, 0x14
    li 0, 0x2
    addi 5, 5, 0x2
    stw 5, 0x90(31)
    stw 4, 0x240(31)
    stw 4, 0x264(31)
    stw 3, 0x250(31)
    stw 0, 0x288(31)
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8017317C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1f
    li 5, 0x0
    bl fn_801F0E34
L_8017317C:
    li 0, 0x2
    stw 0, 0x230(31)
L_80173184:
    .4byte 0xC022AB18 # lfs f1, lbl_8053DAB8@sda21(r0)
    stfs 1, 0x2b0(31)
    stfs 1, 0x2ac(31)
    stfs 1, 0x2a8(31)
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801731EC
    .4byte 0x40800014 # bge .L_801731B8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801731C4
    .4byte 0x40800028 # bge .L_801731D8
    .4byte 0x4800006C # b .L_80173220
L_801731B8:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_80173220
    .4byte 0x48000040 # b .L_80173200
L_801731C4:
    .4byte 0xC002AB2C # lfs f0, lbl_8053DACC@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x4800004C # b .L_80173220
L_801731D8:
    .4byte 0xC002AB30 # lfs f0, lbl_8053DAD0@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000038 # b .L_80173220
L_801731EC:
    stfs 1, 0x3c(31)
    .4byte 0xC002AB2C # lfs f0, lbl_8053DACC@sda21(r0)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000024 # b .L_80173220
L_80173200:
    stfs 1, 0x3c(31)
    .4byte 0xC002AB30 # lfs f0, lbl_8053DAD0@sda21(r0)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000010 # b .L_80173220
L_80173214:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FCF8 # blt .L_80172F14
L_80173220:
    li 0, 0x0
    sth 0, 0x94(31)
    lwz 0, 0xd8(31)
    lwz 29, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x408202EC # bne .L_80173520
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80173254
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80173274
L_80173254:
    lis 4, 0x4e55
    mr 3, 31
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x418202B0 # beq .L_80173520
L_80173274:
    lwz 3, 0x108(31)
    cmpw 29, 3
    .4byte 0x418201B0 # beq .L_8017342C
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x6
    .4byte 0x418200A8 # beq .L_80173334
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4180009C # blt .L_80173334
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x40820090 # bne .L_80173334
    lwz 0, 0x284(31)
    subfic 3, 3, 0x2710
    subf 0, 3, 0
    stw 0, 0x284(31)
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801732CC
    li 0, 0x0
    stw 0, 0x284(31)
L_801732CC:
    li 3, 0x0
    li 0, 0x2710
    stw 3, 0x250(31)
    stw 0, 0x108(31)
    stw 3, 0x29c(31)
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801732F8
    stw 0, 0x98(31)
    stw 3, 0x240(31)
    stw 3, 0x264(31)
L_801732F8:
    lwz 0, 0x90(31)
    cmplwi 0, 0x4
    .4byte 0x41820014 # beq .L_80173314
    cmplwi 0, 0x5
    .4byte 0x4182000C # beq .L_80173314
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_80173320
L_80173314:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_8017332C
L_80173320:
    li 0, 0x0
    stw 0, 0x248(31)
    stw 0, 0x230(31)
L_8017332C:
    li 0, 0x14
    stw 0, 0x250(31)
L_80173334:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810034 # ble .L_80173370
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x40810028 # ble .L_80173370
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x408200D8 # bne .L_8017342C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x8c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000C0 # b .L_8017342C
L_80173370:
    lwz 29, 0x238(31)
    cmpwi 29, 0x0
    .4byte 0x41800020 # blt .L_80173398
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80173398
    li 0, 0x0
    stb 0, 0x11c(3)
L_80173398:
    li 0, -0x1
    stw 0, 0x238(31)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800084 # blt .L_8017342C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x40820078 # bne .L_8017342C
    li 28, 0x0
    mr 29, 31
L_801733C0:
    lwz 30, 0x2c0(29)
    cmpwi 30, 0x0
    .4byte 0x4180004C # blt .L_80173414
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    lis 4, 0x4
    mr 30, 3
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x8d
    bl fn_801F0E34
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_8017340C
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8017340C:
    li 0, -0x1
    stw 0, 0x2c0(29)
L_80173414:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFA0 # blt .L_801733C0
    li 0, 0x8
    stw 0, 0x230(31)
L_8017342C:
    li 0, 0x0
    stw 0, 0x24c(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x4
    .4byte 0x41820028 # beq .L_80173464
    cmplwi 0, 0x5
    .4byte 0x41820020 # beq .L_80173464
    cmplwi 0, 0x6
    .4byte 0x41820018 # beq .L_80173464
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80173464
    li 0, 0x1
    stw 0, 0x230(31)
L_80173464:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80173478
    cmplwi 0, 0x3
    .4byte 0x40820088 # bne .L_801734FC
L_80173478:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801734AC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_801734AC
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_801734AC:
    lwz 5, 0x90(31)
    li 4, 0x0
    li 3, 0x14
    li 0, 0x2
    addi 5, 5, 0x2
    stw 5, 0x90(31)
    stw 4, 0x240(31)
    stw 4, 0x264(31)
    stw 3, 0x250(31)
    stw 0, 0x288(31)
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_801734F4
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1f
    li 5, 0x0
    bl fn_801F0E34
L_801734F4:
    li 0, 0x2
    stw 0, 0x230(31)
L_801734FC:
    li 0, 0x96
    mr 3, 31
    stw 0, 0x26c(31)
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820CDC # beq .L_801741F8
L_80173520:
    lfs 1, 0x2a8(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AB34 # lfs f2, lbl_8053DAD4@sda21(r0)
    .4byte 0xC062AB20 # lfs f3, lbl_8053DAC0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2ac(31)
    addi 3, 31, 0x40
    .4byte 0xC042AB34 # lfs f2, lbl_8053DAD4@sda21(r0)
    .4byte 0xC062AB20 # lfs f3, lbl_8053DAC0@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    addi 5, 1, 0x8
    addi 6, 1, 0x2c
    addi 7, 1, 0x28
    ps_add 0, 1, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lwz 0, 0x29c(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_801735A4
    lwz 0, 0x264(31)
    cmpwi 0, 0x4
    .4byte 0x4080001C # bge .L_801735BC
L_801735A4:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    .4byte 0x48000028 # b .L_801735E0
L_801735BC:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x6
    .4byte 0x40820018 # bne .L_801735E0
    mr 3, 31
    li 4, 0x4
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
L_801735E0:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmplwi 0, 0x9
    .4byte 0x41810B30 # bgt .L_80174128
    lis 4, jumptable_804A0BE4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A0BE4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x278(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80173628
    subi 0, 3, 0x1
    stw 0, 0x278(31)
L_80173628:
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x408200B4 # bne .L_801736E4
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x418100A8 # bgt .L_801736E4
    li 3, 0x0
    li 0, 0x14
    stw 3, 0x240(31)
    stw 3, 0x264(31)
    stw 0, 0x250(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80173668
    cmplwi 0, 0x3
    .4byte 0x40820038 # bne .L_8017369C
L_80173668:
    lwz 0, 0x290(31)
    cmpwi 0, -0x1
    .4byte 0x4082002C # bne .L_8017369C
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8017369C
    li 0, 0x2
    lis 4, 0x5
    stw 0, 0x288(31)
    mr 3, 31
    addi 4, 4, 0x1f
    li 5, 0x0
    bl fn_801F0E34
L_8017369C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801736D0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_801736D0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_801736D0:
    li 3, 0x4
    li 0, 0x2
    stw 3, 0x90(31)
    stw 0, 0x230(31)
    .4byte 0x48000A48 # b .L_80174128
L_801736E4:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_801736F8
    cmplwi 0, 0x3
    .4byte 0x40820030 # bne .L_80173724
L_801736F8:
    li 0, 0x0
    stw 0, 0x230(31)
    lwz 0, 0x294(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80173724
    lwz 0, 0x298(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80173724
    li 0, 0x3
    stw 0, 0x288(31)
    .4byte 0x48000A08 # b .L_80174128
L_80173724:
    lwz 3, 0x2c(1)
    cmpwi 3, 0x0
    .4byte 0x41800034 # blt .L_80173760
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80173744
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_80173750
L_80173744:
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80173754
L_80173750:
    stw 3, 0x98(31)
L_80173754:
    li 0, 0x0
    stw 0, 0x29c(31)
    .4byte 0x4800000C # b .L_80173768
L_80173760:
    li 0, 0x1
    stw 0, 0x29c(31)
L_80173768:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x408209B8 # bne .L_80174128
    lwz 0, 0x288(31)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_80173794
    xori 0, 0, 0x1
    stw 0, 0x288(31)
    lwz 0, 0x288(31)
    clrlwi 0, 0, 31
    stw 0, 0x288(31)
L_80173794:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002AB20 # lfs f0, lbl_8053DAC0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042AB38 # lfs f2, lbl_8053DAD8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x24(1)
    lfs 1, 0x24(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    addi 0, 3, 0xc8
    stw 0, 0x248(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_80173838
    lwz 0, 0x294(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80173808
    stw 0, 0x248(31)
L_80173808:
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_80173874
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x41820058 # beq .L_80173874
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x8e
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000040 # b .L_80173874
L_80173838:
    lwz 0, 0x298(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80173848
    stw 0, 0x248(31)
L_80173848:
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80173874
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80173874
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x8f
    li 5, 0x0
    bl fn_801F0E34
L_80173874:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x418208AC # beq .L_80174128
    cmplwi 0, 0x3
    .4byte 0x418208A4 # beq .L_80174128
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000898 # b .L_80174128
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801738AC
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000880 # b .L_80174128
L_801738AC:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x408200F0 # bne .L_801739A4
    li 0, 0xa
    stw 0, 0x24c(31)
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_801738F4
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    li 0, 0x1
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x29c(31)
    .4byte 0x48000838 # b .L_80174128
L_801738F4:
    stw 0, 0x98(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80173914
    lhz 3, 0x8(1)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x8(1)
L_80173914:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820080 # bne .L_8017399C
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AB3C # lfs f1, lbl_8053DADC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    addi 4, 3, 0x4
    fmuls 0, 1, 0
    stfs 0, 0x2a8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x2ac(31)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4180003C # blt .L_8017399C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_8017399C
    lhz 0, 0x8(1)
    .4byte 0xC022AB40 # lfs f1, lbl_8053DAE0@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x2a8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x2ac(31)
L_8017399C:
    li 0, 0x0
    stw 0, 0x29c(31)
L_801739A4:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801739D4
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_801739D4
    lfs 1, 0x28(1)
    .4byte 0xC002AB44 # lfs f0, lbl_8053DAE4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801739D4
    li 0, 0x5
    stw 0, 0x230(31)
L_801739D4:
    lwz 0, 0x29c(31)
    cmpwi 0, 0x1
    .4byte 0x4082074C # bne .L_80174128
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x40820740 # bne .L_80174128
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000734 # b .L_80174128
    lwz 3, 0x270(31)
    addi 0, 3, 0x1
    stw 0, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x3
    .4byte 0x40810014 # ble .L_80173A20
    li 3, 0x1
    li 0, 0x3
    stw 3, 0x288(31)
    stw 0, 0x270(31)
L_80173A20:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408200EC # bne .L_80173B14
    li 0, 0x28
    mr 3, 31
    stw 0, 0x244(31)
    addi 5, 1, 0x8
    addi 6, 1, 0x2c
    addi 7, 1, 0x28
    lwz 4, 0x198(31)
    li 8, 0x0
    li 9, 0x1
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x4180009C # blt .L_80173AFC
    stw 0, 0x98(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820080 # bne .L_80173AF0
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AB48 # lfs f1, lbl_8053DAE8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    addi 4, 3, 0x4
    fmuls 0, 1, 0
    stfs 0, 0x2a8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x2ac(31)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4180003C # blt .L_80173AF0
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_80173AF0
    lhz 0, 0x8(1)
    .4byte 0xC022AB4C # lfs f1, lbl_8053DAEC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x2a8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x2ac(31)
L_80173AF0:
    li 0, 0x0
    stw 0, 0x29c(31)
    .4byte 0x4800001C # b .L_80173B14
L_80173AFC:
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    li 0, 0x1
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    stw 0, 0x29c(31)
L_80173B14:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_80173B44
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_80173B44
    lfs 1, 0x28(1)
    .4byte 0xC002AB44 # lfs f0, lbl_8053DAE4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80173B44
    li 0, 0x5
    stw 0, 0x230(31)
L_80173B44:
    lwz 0, 0x29c(31)
    cmpwi 0, 0x1
    .4byte 0x408205DC # bne .L_80174128
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x408205D0 # bne .L_80174128
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480005C4 # b .L_80174128
    li 0, 0x0
    lis 4, 0x19
    stw 0, 0x29c(31)
    addi 4, 4, 0x660d
    .4byte 0xC002AB20 # lfs f0, lbl_8053DAC0@sda21(r0)
    li 0, 0x4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042AB50 # lfs f2, lbl_8053DAF0@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 4, 0x64(1)
    addi 4, 4, 0x32
    stw 4, 0x244(31)
    stw 0, 0x230(31)
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_80173C2C
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    lis 3, lbl_804A0920@ha
    li 4, 0x8
    li 0, 0x0
    stfs 0, 0x44(31)
    addi 3, 3, lbl_804A0920@l
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    stw 4, 0x240(31)
    lwz 4, 0x98(31)
    xori 4, 4, 0x1
    stw 4, 0x98(31)
    lwz 4, 0x98(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x280(31)
    stw 0, 0x29c(31)
    .4byte 0x48000500 # b .L_80174128
L_80173C2C:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820140 # bne .L_80173D74
    li 6, 0x1
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    stw 6, 0x29c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x408204C4 # bne .L_80174128
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC042AB20 # lfs f2, lbl_8053DAC0@sda21(r0)
    lwz 0, 0xb4(7)
    li 4, 0x0
    .4byte 0xC022AB50 # lfs f1, lbl_8053DAF0@sda21(r0)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 0, 0x1c(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    addi 0, 3, 0x32
    stw 0, 0x244(31)
    stw 4, 0x29c(31)
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820058 # bne .L_80173D28
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002AB28 # lfs f0, lbl_8053DAC8@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80173D1C
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x48000410 # b .L_80174128
L_80173D1C:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000404 # b .L_80174128
L_80173D28:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002AB28 # lfs f0, lbl_8053DAC8@sda21(r0)
    lwz 0, 0xb4(7)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80173D6C
    stw 4, 0x98(31)
    .4byte 0x480003C0 # b .L_80174128
L_80173D6C:
    stw 6, 0x98(31)
    .4byte 0x480003B8 # b .L_80174128
L_80173D74:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_80173E08
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80173DDC
    .4byte 0x40800014 # bge .L_80173DA0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80173DAC
    .4byte 0x4080002C # bge .L_80173DC4
    .4byte 0x4800006C # b .L_80173E08
L_80173DA0:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_80173E08
    .4byte 0x4800004C # b .L_80173DF4
L_80173DAC:
    .4byte 0xC022AB54 # lfs f1, lbl_8053DAF4@sda21(r0)
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    stfs 1, 0x2a8(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    .4byte 0x48000048 # b .L_80173E08
L_80173DC4:
    .4byte 0xC022AB58 # lfs f1, lbl_8053DAF8@sda21(r0)
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    stfs 1, 0x2a8(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    .4byte 0x48000030 # b .L_80173E08
L_80173DDC:
    .4byte 0xC022AB18 # lfs f1, lbl_8053DAB8@sda21(r0)
    .4byte 0xC002AB54 # lfs f0, lbl_8053DAF4@sda21(r0)
    stfs 1, 0x2a8(31)
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    .4byte 0x48000018 # b .L_80173E08
L_80173DF4:
    .4byte 0xC022AB18 # lfs f1, lbl_8053DAB8@sda21(r0)
    .4byte 0xC002AB58 # lfs f0, lbl_8053DAF8@sda21(r0)
    stfs 1, 0x2a8(31)
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
L_80173E08:
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x41800318 # blt .L_80174128
    .4byte 0xC022AB18 # lfs f1, lbl_8053DAB8@sda21(r0)
    lis 4, 0x4
    .4byte 0xC002AB5C # lfs f0, lbl_8053DAFC@sda21(r0)
    mr 3, 31
    stfs 1, 0x44(31)
    addi 4, 4, 0x88
    li 5, 0x0
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x2b0(31)
    stfs 1, 0x2ac(31)
    stfs 1, 0x2a8(31)
    lfs 1, 0xc(31)
    stfs 1, 0x50(1)
    lfs 1, 0x10(31)
    stfs 1, 0x54(1)
    fadds 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x58(1)
    stfs 0, 0x54(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x50
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    li 5, 0x33b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x29c(31)
    lwz 3, 0x90(31)
    cmplwi 3, 0x4
    .4byte 0x41820014 # beq .L_80173EB4
    cmplwi 3, 0x5
    .4byte 0x4182000C # beq .L_80173EB4
    cmplwi 3, 0x6
    .4byte 0x40820010 # bne .L_80173EC0
L_80173EB4:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x4800026C # b .L_80174128
L_80173EC0:
    stw 0, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000260 # b .L_80174128
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    li 4, 0x0
    li 3, 0x2
    li 0, 0x6
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    stw 4, 0x26c(31)
    stw 3, 0x29c(31)
    stw 0, 0x230(31)
    lhz 0, 0x8(1)
    sth 0, 0x236(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x3
    .4byte 0x41800218 # blt .L_80174128
    lfs 1, 0xc(31)
    stfs 1, 0x50(1)
    lfs 0, 0x10(31)
    stfs 0, 0x54(1)
    lfs 0, 0x14(31)
    stfs 0, 0x58(1)
    stfs 1, 0xc(31)
    lfs 0, 0x54(1)
    stfs 0, 0x10(31)
    lfs 0, 0x58(1)
    stfs 0, 0x14(31)
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x408201E0 # bne .L_80174128
    lwz 3, 0x26c(31)
    li 4, 0x46
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x90(31)
    cmpwi 0, 0x1
    .4byte 0x40810008 # ble .L_80173F6C
    li 4, 0x2a
L_80173F6C:
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    lwz 0, 0x26c(31)
    cmpw 0, 4
    .4byte 0x40810198 # ble .L_80174128
    li 0, 0x78
    stw 0, 0x250(31)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800028 # blt .L_80173FCC
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80173FCC
    .4byte 0xC022AB60 # lfs f1, lbl_8053DB00@sda21(r0)
    .4byte 0xC002AB64 # lfs f0, lbl_8053DB04@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_80173FCC:
    li 3, 0x3
    li 0, 0x7
    stw 3, 0x29c(31)
    stw 0, 0x230(31)
    .4byte 0x4800014C # b .L_80174128
    lbz 0, 0x2a4(31)
    cmplwi 0, 0x1
    .4byte 0x40820140 # bne .L_80174128
    li 0, 0x0
    stw 0, 0x29c(31)
    lwz 3, 0x90(31)
    cmplwi 3, 0x4
    .4byte 0x41820014 # beq .L_80174010
    cmplwi 3, 0x5
    .4byte 0x4182000C # beq .L_80174010
    cmplwi 3, 0x6
    .4byte 0x40820010 # bne .L_8017401C
L_80174010:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000110 # b .L_80174128
L_8017401C:
    stw 0, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000104 # b .L_80174128
    li 3, 0x96
    li 0, 0x9
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x418200E0 # beq .L_80174120
    clrlwi. 0, 0, 29
    .4byte 0x408200E0 # bne .L_80174128
    lfs 0, 0xc(31)
    lis 3, 0x19
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 3, 0x660d
    stfs 0, 0x50(1)
    .4byte 0xC062AB20 # lfs f3, lbl_8053DAC0@sda21(r0)
    lfs 0, 0x10(31)
    .4byte 0xC082AB6C # lfs f4, lbl_8053DB0C@sda21(r0)
    stfs 0, 0x54(1)
    .4byte 0xC042AB68 # lfs f2, lbl_8053DB08@sda21(r0)
    lfs 0, 0x14(31)
    stfs 0, 0x58(1)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 1, 0x50(1)
    srwi 0, 0, 9
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 3
    fnmsubs 0, 4, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x50(1)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 1, 0x54(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fnmsubs 0, 4, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x54(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x50
    li 7, 0x7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800000C # b .L_80174128
L_80174120:
    mr 3, 31
    bl fn_801F4F28
L_80174128:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017413C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8017413C:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80174150
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80174150:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80174164
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80174164:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80174178
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_80174178:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017418C
    subi 0, 3, 0x1
    stw 0, 0x250(31)
L_8017418C:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801741A0
    subi 0, 3, 0x1
    stw 0, 0x254(31)
L_801741A0:
    lwz 3, 0x258(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801741B4
    subi 0, 3, 0x1
    stw 0, 0x258(31)
L_801741B4:
    lwz 3, 0x25c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801741C8
    subi 0, 3, 0x1
    stw 0, 0x25c(31)
L_801741C8:
    lwz 3, 0x260(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801741DC
    subi 0, 3, 0x1
    stw 0, 0x260(31)
L_801741DC:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x41820014 # beq .L_801741F8
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_801741F8
    mr 3, 31
    bl fn_801746DC
L_801741F8:
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

fn_80174220:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 31, 3
    lwz 0, 0x90(3)
    lwz 4, 0x98(3)
    clrlwi 0, 0, 24
    cmpwi 0, 0x8
    mr 5, 4
    .4byte 0x40820014 # bne .L_80174280
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80174280
    addi 5, 4, 0x4
L_80174280:
    cmpwi 5, 0x4
    .4byte 0x40800048 # bge .L_801742CC
    lis 3, lbl_804A0AD8@ha
    slwi 0, 4, 3
    addi 3, 3, lbl_804A0AD8@l
    lfs 1, 0xc(31)
    lfsx 0, 3, 0
    lfs 31, 0xc(31)
    fadds 0, 1, 0
    lfs 30, 0x10(31)
    lfs 29, 0x14(31)
    stfs 0, 0xc(31)
    lwz 0, 0x98(31)
    lfs 1, 0x10(31)
    slwi 0, 0, 3
    add 3, 3, 0
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_801742CC:
    lis 3, lbl_804A0B10@ha
    slwi 0, 5, 4
    addi 4, 3, lbl_804A0B10@l
    add 3, 4, 0
    lfsx 0, 4, 0
    lfs 3, 0xc(3)
    lfs 2, 0x8(3)
    lfs 1, 0x4(3)
    stfs 0, 0x60(31)
    stfs 1, 0x64(31)
    stfs 2, 0x68(31)
    stfs 3, 0x6c(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80174310
    cmplwi 0, 0x2
    .4byte 0x40820194 # bne .L_801744A0
L_80174310:
    lwz 30, 0x238(31)
    cmpwi 30, 0x0
    .4byte 0x4180005C # blt .L_80174374
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_80174374
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_80174374
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80174360
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    .4byte 0x48000018 # b .L_80174374
L_80174360:
    mr 3, 31
    li 4, 0x4
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
L_80174374:
    li 0, 0x2710
    mr 3, 31
    stw 0, 0x108(31)
    bl fn_801EF510
    li 29, 0x0
L_80174388:
    mr 3, 31
    mr 7, 29
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    mr. 28, 3
    .4byte 0x418000F0 # blt .L_80174494
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x408200E4 # bne .L_80174494
    lfs 1, 0x10(31)
    mr 3, 28
    lfs 4, 0x64(31)
    addi 4, 1, 0x8
    lfs 6, 0x6c(31)
    lfs 0, 0xc(31)
    fadds 4, 4, 1
    lfs 3, 0x60(31)
    fadds 6, 6, 1
    lfs 5, 0x68(31)
    fadds 3, 3, 0
    .4byte 0xC042AB28 # lfs f2, lbl_8053DAC8@sda21(r0)
    fadds 5, 5, 0
    fsubs 0, 4, 6
    fsubs 1, 3, 5
    fmadds 0, 2, 0, 6
    fmadds 1, 2, 1, 5
    stfs 0, 0xc(1)
    stfs 1, 0x8(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_80174494
    lis 4, 0x2
    mr 3, 28
    addi 4, 4, 0x2
    bl fn_80230FD0
    lwz 30, 0x238(31)
    cmpwi 30, 0x0
    .4byte 0x41800070 # blt .L_80174494
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182005C # beq .L_80174494
    addi 0, 28, 0x1
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    sth 0, 0x94(3)
    addi 4, 31, 0xc
    li 5, 0x473
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    li 5, 0x474
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80174494:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FEEC # blt .L_80174388
L_801744A0:
    stfs 31, 0xc(31)
    stfs 30, 0x10(31)
    stfs 29, 0x14(31)
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x54(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801744E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x90(3)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80174510
    cmplwi 0, 0x3
    .4byte 0x40820088 # bne .L_80174594
L_80174510:
    lwz 4, 0x90(31)
    li 3, 0x0
    li 0, 0x14
    addi 4, 4, 0x2
    stw 4, 0x90(31)
    stw 3, 0x240(31)
    stw 3, 0x264(31)
    stw 0, 0x250(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80174564
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80174564
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80174564:
    li 0, 0x2
    stw 0, 0x288(31)
    lbz 0, 0x2a5(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8017458C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1f
    li 5, 0x0
    bl fn_801F0E34
L_8017458C:
    li 0, 0x2
    stw 0, 0x230(31)
L_80174594:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x7
    .4byte 0x41820048 # beq .L_801745E8
    cmpwi 0, 0x8
    .4byte 0x41820040 # beq .L_801745E8
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41810034 # bgt .L_801745E8
    lwz 30, 0x238(31)
    cmpwi 30, 0x0
    .4byte 0x41800020 # blt .L_801745E0
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801745E0
    li 0, 0x0
    stb 0, 0x11c(3)
L_801745E0:
    li 0, -0x1
    stw 0, 0x238(31)
L_801745E8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80174600:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr. 29, 3
    .4byte 0x4182009C # beq .L_801746BC
    lis 3, lbl_804A0B90@ha
    addi 0, 3, lbl_804A0B90@l
    stw 0, 0x0(29)
    lwz 0, 0x90(29)
    clrlwi 0, 0, 24
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801746A0
    cmpwi 0, 0x8
    .4byte 0x4182005C # beq .L_801746A0
    cmpwi 0, 0x6
    .4byte 0x4182002C # beq .L_80174678
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0x9
    .4byte 0x4182001C # beq .L_80174678
    cmpwi 0, 0xb
    .4byte 0x41820014 # beq .L_80174678
    lwz 0, 0x108(29)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80174678
    bl fn_80138B7C
L_80174678:
    lwz 31, 0x238(29)
    cmpwi 31, 0x0
    .4byte 0x41800020 # blt .L_801746A0
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801746A0
    li 0, 0x0
    stb 0, 0x11c(3)
L_801746A0:
    mr 3, 29
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_801746BC
    mr 3, 29
    bl dtor_80084580
L_801746BC:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801746DC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    lis 3, lbl_804A08C0@ha
    lwz 4, 0x29c(30)
    addi 31, 3, lbl_804A08C0@l
    lwz 0, 0x2a0(30)
    cmpw 4, 0
    .4byte 0x41820034 # beq .L_8017473C
    stw 4, 0x2a0(30)
    li 0, 0x0
    stb 0, 0x2a4(30)
    stw 0, 0x240(30)
    stw 0, 0x264(30)
    stw 0, 0x274(30)
    stw 0, 0x25c(30)
    lwz 0, 0x29c(30)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8017473C
    li 0, 0x5
    stw 0, 0x264(30)
L_8017473C:
    lwz 0, 0x29c(30)
    cmpwi 0, 0x3
    .4byte 0x4182034C # beq .L_80174A90
    .4byte 0x4080001C # bge .L_80174764
    cmpwi 0, 0x1
    .4byte 0x4182007C # beq .L_801747CC
    .4byte 0x408000E4 # bge .L_80174838
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80174770
    .4byte 0x480003CC # b .L_80174B2C
L_80174764:
    cmpwi 0, 0x9
    .4byte 0x418203C4 # beq .L_80174B2C
    .4byte 0x480003C0 # b .L_80174B2C
L_80174770:
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x408203B4 # bne .L_80174B2C
    lwz 0, 0x264(30)
    addi 4, 31, 0x70
    addi 3, 31, 0x20
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x240(30)
    lwz 4, 0x98(30)
    lwz 0, 0x264(30)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x280(30)
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    clrlwi 0, 0, 30
    stw 0, 0x264(30)
    .4byte 0x48000364 # b .L_80174B2C
L_801747CC:
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x40820358 # bne .L_80174B2C
    lwz 0, 0x264(30)
    addi 4, 31, 0x80
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x240(30)
    lwz 3, 0x98(30)
    lwz 0, 0x264(30)
    slwi 3, 3, 3
    add 0, 3, 0
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x280(30)
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    clrlwi 0, 0, 29
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    cmpwi 0, 0x0
    .4byte 0x40820304 # bne .L_80174B2C
    li 0, 0x1
    stb 0, 0x2a4(30)
    .4byte 0x480002F8 # b .L_80174B2C
L_80174838:
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x40820218 # bne .L_80174A58
    lwz 0, 0x264(30)
    cmpwi 0, 0x6
    .4byte 0x41800010 # blt .L_8017485C
    li 0, 0x1
    stb 0, 0x2a4(30)
    .4byte 0x480002D4 # b .L_80174B2C
L_8017485C:
    slwi 0, 0, 2
    addi 3, 31, 0x180
    lwzx 0, 3, 0
    stw 0, 0x240(30)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x41800048 # blt .L_801748BC
    lwz 0, 0x23c(30)
    cmpwi 0, 0x1
    .4byte 0x4082003C # bne .L_801748BC
    lwz 3, 0x240(30)
    lis 0, 0x4330
    stw 0, 0x18(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822AB78 # lfd f1, lbl_8053DB18@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC042AB28 # lfs f2, lbl_8053DAC8@sda21(r0)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x240(30)
L_801748BC:
    lwz 0, 0x264(30)
    cmpwi 0, 0x1
    .4byte 0x408200A0 # bne .L_80174964
    lwz 3, 0x240(30)
    addi 11, 31, 0x0
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    addi 4, 1, 0x8
    addi 0, 3, 0xa
    li 5, 0xcb
    stw 0, 0x240(30)
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    lfs 4, 0xc(30)
    li 9, 0x0
    li 10, 0x1
    stfs 4, 0x8(1)
    lfs 3, 0x10(30)
    stfs 3, 0xc(1)
    lfs 0, 0x14(30)
    stfs 0, 0x10(1)
    lwz 0, 0x98(30)
    slwi 0, 0, 3
    add 3, 11, 0
    lfsx 2, 11, 0
    lfs 0, 0x4(3)
    fadds 2, 4, 2
    fadds 0, 3, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x8
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    li 5, 0xcc
    li 6, 0x0
    li 7, 0x3
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80174964:
    lwz 0, 0x98(30)
    addi 3, 31, 0x120
    lwz 4, 0x264(30)
    mulli 0, 0, 0x6
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x280(30)
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
    lwz 0, 0x264(30)
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_801749A8
    lwz 3, 0x240(30)
    addi 0, 3, 0xf
    stw 0, 0x240(30)
L_801749A8:
    lwz 0, 0x264(30)
    cmpwi 0, 0x4
    .4byte 0x408200A8 # bne .L_80174A58
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x8b
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x98(30)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_80174A28
    .4byte 0x40800014 # bge .L_801749E8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801749F4
    .4byte 0x4080002C # bge .L_80174A0C
    .4byte 0x48000074 # b .L_80174A58
L_801749E8:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_80174A58
    .4byte 0x48000050 # b .L_80174A40
L_801749F4:
    .4byte 0xC022AB70 # lfs f1, lbl_8053DB10@sda21(r0)
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    .4byte 0x48000050 # b .L_80174A58
L_80174A0C:
    .4byte 0xC022AB70 # lfs f1, lbl_8053DB10@sda21(r0)
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    fneg 1, 1
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    .4byte 0x48000034 # b .L_80174A58
L_80174A28:
    .4byte 0xC022AB18 # lfs f1, lbl_8053DAB8@sda21(r0)
    .4byte 0xC002AB70 # lfs f0, lbl_8053DB10@sda21(r0)
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 1, 0x44(30)
    .4byte 0x4800001C # b .L_80174A58
L_80174A40:
    .4byte 0xC002AB70 # lfs f0, lbl_8053DB10@sda21(r0)
    .4byte 0xC022AB18 # lfs f1, lbl_8053DAB8@sda21(r0)
    fneg 0, 0
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 1, 0x44(30)
L_80174A58:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x408200CC # bne .L_80174B2C
    li 0, 0x4
    stw 0, 0x25c(30)
    lwz 3, 0x274(30)
    addi 0, 3, 0x1
    stw 0, 0x274(30)
    lwz 0, 0x274(30)
    cmpwi 0, 0x5
    .4byte 0x408100AC # ble .L_80174B2C
    li 0, 0x0
    stw 0, 0x274(30)
    .4byte 0x480000A0 # b .L_80174B2C
L_80174A90:
    lwz 0, 0x240(30)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_80174AF0
    lwz 0, 0x264(30)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_80174AB4
    li 0, 0x1
    stb 0, 0x2a4(30)
    .4byte 0x4800007C # b .L_80174B2C
L_80174AB4:
    slwi 0, 0, 2
    addi 3, 31, 0x180
    lwzx 0, 3, 0
    addi 3, 31, 0x120
    stw 0, 0x240(30)
    lwz 0, 0x98(30)
    lwz 4, 0x264(30)
    mulli 0, 0, 0x6
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x280(30)
    lwz 3, 0x264(30)
    subi 0, 3, 0x1
    stw 0, 0x264(30)
L_80174AF0:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_80174B2C
    lwz 0, 0x264(30)
    subfic 0, 0, 0x6
    slwi 0, 0, 1
    stw 0, 0x25c(30)
    lwz 3, 0x274(30)
    addi 0, 3, 0x1
    stw 0, 0x274(30)
    lwz 0, 0x274(30)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_80174B2C
    li 0, 0x0
    stw 0, 0x274(30)
L_80174B2C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80174B44:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC022AB80 # lfs f1, lbl_8053DB20@sda21(r0)
    li 4, 0x0
    stw 0, 0x34(1)
    li 0, 0x3
    .4byte 0xC002AB84 # lfs f0, lbl_8053DB24@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stfs 1, 0x60(3)
    li 3, -0x1
    .4byte 0xC022AB88 # lfs f1, lbl_8053DB28@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002AB8C # lfs f0, lbl_8053DB2C@sda21(r0)
    stfs 1, 0x68(31)
    .4byte 0xC022AB30 # lfs f1, lbl_8053DAD0@sda21(r0)
    stfs 0, 0x6c(31)
    .4byte 0xC002AB2C # lfs f0, lbl_8053DACC@sda21(r0)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 4, 0x264(31)
    stw 4, 0x268(31)
    stw 4, 0x26c(31)
    stw 4, 0x270(31)
    stw 4, 0x274(31)
    stw 4, 0x278(31)
    stw 4, 0x27c(31)
    stw 4, 0x240(31)
    stw 4, 0x244(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    stw 4, 0x258(31)
    stw 4, 0x25c(31)
    stw 4, 0x260(31)
    stw 3, 0x2c0(31)
    stw 3, 0x2c4(31)
    stw 3, 0x2c8(31)
    stw 3, 0x2cc(31)
    stw 0, 0x278(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 20
    mulli 0, 0, 0x14
    stw 0, 0x298(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 16
    mulli 0, 0, 0x14
    stw 0, 0x294(31)
    stb 4, 0x2a5(31)
    stw 4, 0x29c(31)
    stw 4, 0x2a0(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 8
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_80174C48
    li 0, 0x1
    stb 0, 0x196(31)
    stw 4, 0x190(31)
L_80174C48:
    li 0, 0x0
    lis 3, 0x19
    stb 0, 0x2a4(31)
    addi 4, 3, 0x660d
    .4byte 0xC002AB20 # lfs f0, lbl_8053DAC0@sda21(r0)
    li 3, 0x2710
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, -0x1
    .4byte 0xC042AB90 # lfs f2, lbl_8053DB30@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    clrlwi 4, 4, 30
    stw 4, 0x98(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2b4(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2b8(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2bc(31)
    stw 3, 0x284(31)
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x7
    .4byte 0x41820118 # beq .L_80174DF4
    cmpwi 0, 0x8
    .4byte 0x41820110 # beq .L_80174DF4
    cmpwi 0, 0x6
    .4byte 0x41820108 # beq .L_80174DF4
    cmpwi 0, 0x2
    .4byte 0x41820040 # beq .L_80174D34
    cmpwi 0, 0x3
    .4byte 0x41820038 # beq .L_80174D34
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80174D34
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80174D34
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80174D34:
    lwz 0, 0x90(31)
    lis 3, lbl_804A0AF8@ha
    addi 3, 3, lbl_804A0AF8@l
    clrlslwi 0, 0, 24, 2
    lwzx 0, 3, 0
    slwi 0, 0, 1
    stw 0, 0x108(31)
    bl fn_802DE814
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80174D78
    lwz 0, 0x90(31)
    lis 3, lbl_804A0AF8@ha
    addi 3, 3, lbl_804A0AF8@l
    clrlslwi 0, 0, 24, 2
    lwzx 0, 3, 0
    stw 0, 0x108(31)
L_80174D78:
    lwz 0, 0x4(31)
    li 29, 0x7
    cmpwi 0, 0x8
    mr 30, 0
    .4byte 0x4180000C # blt .L_80174D94
    li 29, 0x8
    li 30, 0x0
L_80174D94:
    bl SpatialRegistry_GetBase
    lis 4, 0x534c
    mr 5, 30
    mr 7, 29
    addi 6, 31, 0xc
    addi 4, 4, 0x5234
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x238(31)
    lwz 30, 0x238(31)
    cmpwi 30, 0x0
    .4byte 0x41800030 # blt .L_80174DF4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80174DF4
    lwz 0, 0x114(31)
    stw 0, 0x114(3)
    lwz 0, 0x198(31)
    stw 0, 0x238(3)
    lwz 0, 0x23c(31)
    stw 0, 0x23c(3)
L_80174DF4:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x7
    .4byte 0x41820080 # beq .L_80174E80
    cmpwi 0, 0x8
    .4byte 0x41820078 # beq .L_80174E80
    cmpwi 0, 0x6
    .4byte 0x41820070 # beq .L_80174E80
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800064 # blt .L_80174E80
    li 0, 0x32
    stw 0, 0x108(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_80174E50
    .4byte 0xC022AB60 # lfs f1, lbl_8053DB00@sda21(r0)
    .4byte 0xC002AB64 # lfs f0, lbl_8053DB04@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000034 # b .L_80174E80
L_80174E50:
    li 0, 0x19
    .4byte 0xC022AB94 # lfs f1, lbl_8053DB34@sda21(r0)
    stw 0, 0x108(31)
    .4byte 0xC002AB98 # lfs f0, lbl_8053DB38@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
L_80174E80:
    lwz 0, 0x108(31)
    stw 0, 0x284(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x6
    .4byte 0x41820024 # beq .L_80174EB8
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800018 # blt .L_80174EB8
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80174EB8
    li 0, 0x2710
    stw 0, 0x108(31)
L_80174EB8:
    li 0, 0x0
    stw 0, 0x280(31)
    stw 0, 0x288(31)
    lwz 0, 0x90(31)
    srwi 0, 0, 24
    stw 0, 0x28c(31)
    lwz 0, 0x28c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80174EE4
    li 0, -0x1
    stw 0, 0x28c(31)
L_80174EE4:
    lwz 0, 0x90(31)
    lis 3, 0xa04
    .4byte 0x38CD83B8 # li r6, lbl_80539F78@sda21
    .4byte 0xC002AB18 # lfs f0, lbl_8053DAB8@sda21(r0)
    clrlwi 0, 0, 24
    li 5, 0x0
    stw 0, 0x90(31)
    li 4, 0xa
    addi 3, 3, 0x2209
    li 0, 0x1
    lwz 7, 0x90(31)
    srwi 7, 7, 1
    lbzx 6, 6, 7
    stb 6, 0x234(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2a8(31)
    stw 5, 0x290(31)
    stw 4, 0x244(31)
    sth 5, 0x236(31)
    stw 3, 0xb0(31)
    stw 0, 0xb8(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80174F50
    cmplwi 0, 0x3
    .4byte 0x4082000C # bne .L_80174F58
L_80174F50:
    li 0, 0x3
    stw 0, 0x98(31)
L_80174F58:
    li 0, 0x0
    mr 3, 31
    stw 0, 0x230(31)
    bl fn_801746DC
    li 0, 0x3
    stw 0, 0xc0(31)
    stw 0, 0xbc(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x4
    .4byte 0x41820014 # beq .L_80174F90
    cmplwi 0, 0x5
    .4byte 0x4182000C # beq .L_80174F90
    cmplwi 0, 0x6
    .4byte 0x4082000C # bne .L_80174F98
L_80174F90:
    li 0, 0x2
    stw 0, 0x230(31)
L_80174F98:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_80174FB0
    cmpwi 0, 0x8
    .4byte 0x4082005C # bne .L_80175008
L_80174FB0:
    li 4, 0x0
    lis 3, 0xa04
    stb 4, 0x1a8(31)
    addi 0, 3, 0x4
    li 3, 0x2710
    .4byte 0xC062AB9C # lfs f3, lbl_8053DB3C@sda21(r0)
    stw 0, 0xb0(31)
    li 0, 0xa
    .4byte 0xC042ABA0 # lfs f2, lbl_8053DB40@sda21(r0)
    stw 3, 0x108(31)
    .4byte 0xC022AB20 # lfs f1, lbl_8053DAC0@sda21(r0)
    stw 4, 0xb8(31)
    .4byte 0xC002ABA4 # lfs f0, lbl_8053DB44@sda21(r0)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x230(31)
L_80175008:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80175024:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    cmpwi 0, 0x6
    .4byte 0x41820270 # beq .L_801752BC
    lwz 29, 0x238(30)
    cmpwi 29, 0x0
    .4byte 0x41800264 # blt .L_801752BC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x40820084 # bne .L_801750F0
    lwz 0, 0x4(30)
    li 31, 0x7
    cmpwi 0, 0x8
    mr 29, 0
    .4byte 0x4180000C # blt .L_8017508C
    li 31, 0x8
    li 29, 0x0
L_8017508C:
    bl SpatialRegistry_GetBase
    lis 4, 0x534c
    mr 5, 29
    mr 7, 31
    addi 6, 30, 0xc
    addi 4, 4, 0x5234
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x238(30)
    lwz 29, 0x238(30)
    cmpwi 29, 0x0
    .4byte 0x41800200 # blt .L_801752BC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201EC # beq .L_801752BC
    lwz 0, 0x114(30)
    stw 0, 0x114(3)
    lwz 0, 0x198(30)
    stw 0, 0x238(3)
    lwz 0, 0x23c(30)
    stw 0, 0x23c(3)
    .4byte 0x480001D0 # b .L_801752BC
L_801750F0:
    lwz 0, 0x29c(30)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_80175118
    .4byte 0x40800010 # bge .L_8017510C
    cmpwi 0, 0x0
    .4byte 0x408000D0 # bge .L_801751D4
    .4byte 0x480001A0 # b .L_801752A8
L_8017510C:
    cmpwi 0, 0x4
    .4byte 0x40800198 # bge .L_801752A8
    .4byte 0x480000C0 # b .L_801751D4
L_80175118:
    lwz 0, 0x264(30)
    cmpwi 0, 0x4
    .4byte 0x418000AC # blt .L_801751CC
    lfs 0, 0x3c(30)
    .4byte 0xC022ABA8 # lfs f1, lbl_8053DB48@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x4080007C # bge .L_801751AC
    lfs 0, 0x40(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800070 # bge .L_801751AC
    li 0, 0x0
    sth 0, 0x94(31)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x41800044 # blt .L_80175194
    lwz 0, 0x23c(30)
    cmpwi 0, 0x1
    .4byte 0x40820038 # bne .L_80175194
    lwz 0, 0x98(30)
    lis 3, lbl_804A0A58@ha
    addi 4, 3, lbl_804A0A58@l
    slwi 0, 0, 4
    add 3, 4, 0
    lfsx 0, 4, 0
    lfs 3, 0xc(3)
    lfs 2, 0x8(3)
    lfs 1, 0x4(3)
    stfs 0, 0x60(30)
    stfs 1, 0x64(30)
    stfs 2, 0x68(30)
    stfs 3, 0x6c(30)
L_80175194:
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    .4byte 0x4800002C # b .L_801751D4
L_801751AC:
    mr 3, 30
    li 4, 0x4
    li 5, -0x1
    li 6, 0x3
    bl fn_801F2B7C
    li 0, 0x2
    sth 0, 0x94(31)
    .4byte 0x4800000C # b .L_801751D4
L_801751CC:
    li 0, 0x1
    sth 0, 0x94(31)
L_801751D4:
    lwz 0, 0x29c(30)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801751E8
    li 0, 0x0
    sth 0, 0x94(31)
L_801751E8:
    lwz 0, 0x29c(30)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_801751FC
    li 0, 0x1
    sth 0, 0x94(31)
L_801751FC:
    lwz 0, 0x90(31)
    cmplwi 0, 0x7
    .4byte 0x40820020 # bne .L_80175224
    lfs 2, 0xc(30)
    lfs 1, 0x10(30)
    lfs 0, 0x14(30)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    .4byte 0x48000070 # b .L_80175290
L_80175224:
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_8017523C
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_80175240
L_8017523C:
    addi 4, 3, 0xdc
L_80175240:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0x8(1)
    lfs 3, 0xc(30)
    stw 0, 0xc(1)
    lfs 2, 0x10(30)
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    lwz 3, 0x8(4)
    fadds 1, 3, 1
    stfs 3, 0x18(1)
    fadds 0, 2, 0
    lwz 0, 0xc(4)
    stfs 2, 0x1c(1)
    lfs 2, 0x14(30)
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    stfs 2, 0x20(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
L_80175290:
    psq_l 1, 0x18(1), 0, 0
    lfs 0, 0x20(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x98(30)
    stw 0, 0x98(31)
L_801752A8:
    lwz 0, 0x90(31)
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_801752BC
    lwz 0, 0x280(30)
    stw 0, 0x280(31)
L_801752BC:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801752D8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmpwi 0, 0x8
    .4byte 0x41800158 # blt .L_8017544C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x4082014C # bne .L_8017544C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x6
    .4byte 0x40820138 # bne .L_8017544C
    mr 30, 31
    li 26, 0x0
    li 27, 0x0
L_80175324:
    lwz 28, 0x2c0(30)
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_80175338
    addi 27, 27, 0x1
    .4byte 0x48000054 # b .L_80175388
L_80175338:
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_8017535C
    li 0, -0x1
    addi 27, 27, 0x1
    stw 0, 0x2c0(30)
    .4byte 0x48000030 # b .L_80175388
L_8017535C:
    psq_l 0, 0xc(31), 0, 0
    li 0, 0x384
    lfs 2, 0x14(31)
    psq_st 0, 0x8(1), 0, 0
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    stfs 1, 0x280(3)
    stfs 0, 0x284(3)
    stfs 2, 0x288(3)
    stfs 2, 0x10(1)
    stw 0, 0x260(31)
L_80175388:
    addi 26, 26, 0x1
    addi 30, 30, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FF90 # blt .L_80175324
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x408200AC # bne .L_8017544C
    cmpwi 27, 0x4
    .4byte 0x408200A4 # bne .L_8017544C
    lwz 30, 0x4(31)
    li 3, 0x0
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820090 # bne .L_8017544C
    li 26, 0x0
    mr 29, 31
    mr 28, 26
    li 25, 0x0
    lis 30, 0x4b45
L_801753D4:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x5448
    addi 6, 31, 0xc
    li 7, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2c0(29)
    lwz 27, 0x2c0(29)
    cmpwi 27, 0x0
    .4byte 0x41800038 # blt .L_80175438
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80175438
    addi 25, 25, 0x1
    sth 28, 0x268(3)
    .4byte 0xC002ABAC # lfs f0, lbl_8053DB4C@sda21(r0)
    cmpwi 25, 0x4
    stfs 0, 0x270(3)
    .4byte 0x4180000C # blt .L_80175438
    li 0, 0x384
    stw 0, 0x260(31)
L_80175438:
    addi 26, 26, 0x1
    addi 28, 28, 0x4000
    cmpwi 26, 0x4
    addi 29, 29, 0x4
    .4byte 0x4180FF8C # blt .L_801753D4
L_8017544C:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80175460:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C0BA0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C0BA0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801754B0
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
L_801754B0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801754E8
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
L_801754E8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80175520
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
L_80175520:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80175558
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
L_80175558:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80175590
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
L_80175590:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801755C8
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
L_801755C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80175600
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
L_80175600:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80175638
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
L_80175638:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80175670
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
L_80175670:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80167714
    .4byte fn_80168688
    .4byte fn_8016A090
    .4byte fn_8016FDE4
    .4byte fn_80171F4C
    .4byte fn_80172670
    .4byte fn_80175460

