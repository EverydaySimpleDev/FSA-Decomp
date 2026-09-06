# SECOND ASYNC-TASK/THREAD-SAFE CLASS FAMILY (lbl_804B15D0 standalone +
# lbl_804B15DC/804B15E8/804B15F4 sibling group, same "short-vtable-then-
# adjacent-sibling" layout as the earlier lbl_804B0F90-FD0 family). This
# cluster's anchor function (fn_804283D4) calls OSInitMessageQueue/
# OSSendMessage/OSReceiveMessage directly - confirms this is ANOTHER
# background worker-thread system (a separate instance of the same pattern
# as the earlier OS-thread cluster, not the same one). Landed as ONE
# combined file (148 fused functions from a single dtk dump spanning
# 0x804283D4-0x8042E780, ~27KB) since dtk fused them with no internal
# boundaries - Track A throughout, structural overview only, per the
# large/complex-function exception. The 3 sibling classes' real ctors were
# identified by contiguity (dtor immediately followed by a small function
# that reinstalls the same vtable) within this fused blob, verified by the
# byte-exact build.
.section extab, "a"
.balign 4
.global etb_80010794
etb_80010794:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010794, 8

.global etb_8001079C
etb_8001079C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001079C, 8

.global etb_800107A4
etb_800107A4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107A4, 8

.global etb_800107AC
etb_800107AC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107AC, 8

.global etb_800107B4
etb_800107B4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800107B4, 8

.global etb_800107BC
etb_800107BC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107BC, 8

.global etb_800107C4
etb_800107C4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107C4, 8

.global etb_800107CC
etb_800107CC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800107CC, 8

.global etb_800107D4
etb_800107D4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107D4, 8

.global etb_800107DC
etb_800107DC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107DC, 8

.global etb_800107E4
etb_800107E4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107E4, 8

.global etb_800107EC
etb_800107EC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107EC, 8

.global etb_800107F4
etb_800107F4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107F4, 8

.global etb_800107FC
etb_800107FC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800107FC, 8

.global etb_80010804
etb_80010804:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80010804, 8

.global etb_8001080C
etb_8001080C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001080C, 8

.global etb_80010814
etb_80010814:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010814, 8

.global etb_8001081C
etb_8001081C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8001081C, 8

.global etb_80010824
etb_80010824:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010824, 8

.global etb_8001082C
etb_8001082C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001082C, 8

.global etb_80010834
etb_80010834:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010834, 8

.global etb_8001083C
etb_8001083C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001083C, 8

.global etb_80010844
etb_80010844:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80010844, 8

.global etb_8001084C
etb_8001084C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001084C, 8

.global etb_80010854
etb_80010854:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010854, 8

.global etb_8001085C
etb_8001085C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001085C, 8

.global etb_80010864
etb_80010864:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010864, 8

.global etb_8001086C
etb_8001086C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8001086C, 8

.global etb_80010874
etb_80010874:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010874, 8

.global etb_8001087C
etb_8001087C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001087C, 8

.global etb_80010884
etb_80010884:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010884, 8

.global etb_8001088C
etb_8001088C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001088C, 8

.global etb_80010894
etb_80010894:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010894, 8

.global etb_8001089C
etb_8001089C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001089C, 8

.global etb_800108A4
etb_800108A4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800108A4, 8

.global etb_800108AC
etb_800108AC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800108AC, 8

.global etb_800108B4
etb_800108B4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800108B4, 8

.global etb_800108BC
etb_800108BC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800108BC, 8

.global etb_800108C4
etb_800108C4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800108C4, 8

.global etb_800108CC
etb_800108CC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800108CC, 8

.global etb_800108D4
etb_800108D4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800108D4, 8

.global etb_800108DC
etb_800108DC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800108DC, 8

.global etb_800108E4
etb_800108E4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800108E4, 8

.global etb_800108EC
etb_800108EC:
    .4byte 0x480A0000
    .4byte 0x00000000
.size etb_800108EC, 8

.global etb_800108F4
etb_800108F4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800108F4, 8

.global etb_800108FC
etb_800108FC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800108FC, 8

.global etb_80010904
etb_80010904:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010904, 8

.global etb_8001090C
etb_8001090C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001090C, 8

.global etb_80010914
etb_80010914:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010914, 8

.global etb_8001091C
etb_8001091C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001091C, 8

.global etb_80010924
etb_80010924:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010924, 8

.global etb_8001092C
etb_8001092C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8001092C, 8

.global etb_80010934
etb_80010934:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_80010934, 8

.global etb_8001093C
etb_8001093C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8001093C, 8

.global etb_80010944
etb_80010944:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010944, 8

.global etb_8001094C
etb_8001094C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001094C, 8

.global etb_80010954
etb_80010954:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010954, 8

.global etb_8001095C
etb_8001095C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001095C, 8

.global etb_80010964
etb_80010964:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010964, 8

.global etb_8001096C
etb_8001096C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001096C, 8

.global etb_80010974
etb_80010974:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010974, 8

.global etb_8001097C
etb_8001097C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8001097C, 8

.global etb_80010984
etb_80010984:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010984, 8

.global etb_8001098C
etb_8001098C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8001098C, 8

.global etb_80010994
etb_80010994:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010994, 8

.global etb_8001099C
etb_8001099C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001099C, 8

.global etb_800109A4
etb_800109A4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800109A4, 8

.global etb_800109AC
etb_800109AC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109AC, 8

.global etb_800109B4
etb_800109B4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109B4, 8

.global etb_800109BC
etb_800109BC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109BC, 8

.global etb_800109C4
etb_800109C4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109C4, 8

.global etb_800109CC
etb_800109CC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109CC, 8

.global etb_800109D4
etb_800109D4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109D4, 8

.global etb_800109DC
etb_800109DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800109DC, 8

.global etb_800109E4
etb_800109E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800109E4, 8

.global etb_800109EC
etb_800109EC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109EC, 8

.global etb_800109F4
etb_800109F4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800109F4, 8

.global etb_800109FC
etb_800109FC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800109FC, 8

.global etb_80010A04
etb_80010A04:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A04, 8

.global etb_80010A0C
etb_80010A0C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80010A0C, 8

.global etb_80010A14
etb_80010A14:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A14, 8

.global etb_80010A1C
etb_80010A1C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80010A1C, 8

.global etb_80010A24
etb_80010A24:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A24, 8

.global etb_80010A2C
etb_80010A2C:
    .4byte 0x48080000
    .4byte 0x00000000
.size etb_80010A2C, 8

.global etb_80010A34
etb_80010A34:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A34, 8

.global etb_80010A3C
etb_80010A3C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A3C, 8

.global etb_80010A44
etb_80010A44:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A44, 8

.global etb_80010A4C
etb_80010A4C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A4C, 8

.global etb_80010A54
etb_80010A54:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A54, 8

.global etb_80010A5C
etb_80010A5C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A5C, 8

.global etb_80010A64
etb_80010A64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010A64, 8

.global etb_80010A6C
etb_80010A6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010A6C, 8

.global etb_80010A74
etb_80010A74:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A74, 8

.global etb_80010A7C
etb_80010A7C:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80010A7C, 8

.global etb_80010A84
etb_80010A84:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A84, 8

.global etb_80010A8C
etb_80010A8C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A8C, 8

.global etb_80010A94
etb_80010A94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010A94, 8

.global etb_80010A9C
etb_80010A9C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010A9C, 8

.global etb_80010AA4
etb_80010AA4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010AA4, 8

.global etb_80010AAC
etb_80010AAC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010AAC, 8

.global etb_80010AB4
etb_80010AB4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010AB4, 8

.global etb_80010ABC
etb_80010ABC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010ABC, 8

.global etb_80010AC4
etb_80010AC4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010AC4, 8

.global etb_80010ACC
etb_80010ACC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010ACC, 8

.global etb_80010AD4
etb_80010AD4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010AD4, 8

.global etb_80010ADC
etb_80010ADC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010ADC, 8

.global etb_80010AE4
etb_80010AE4:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80010AE4, 8

.global etb_80010AEC
etb_80010AEC:
    .4byte 0x01CA0000
    .4byte 0x00000000
.size etb_80010AEC, 8

.global etb_80010AF4
etb_80010AF4:
    .4byte 0x01CA0000
    .4byte 0x00000000
.size etb_80010AF4, 8

.global etb_80010AFC
etb_80010AFC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80010AFC, 8

.global etb_80010B04
etb_80010B04:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80010B04, 8

.global etb_80010B0C
etb_80010B0C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80010B0C, 8

.global etb_80010B14
etb_80010B14:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80010B14, 8

.global etb_80010B1C
etb_80010B1C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80010B1C, 8

.global etb_80010B24
etb_80010B24:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80010B24, 8

.global etb_80010B2C
etb_80010B2C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80010B2C, 8

.global etb_80010B34
etb_80010B34:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_80010B34, 8

.global etb_80010B3C
etb_80010B3C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80010B3C, 8

.global etb_80010B44
etb_80010B44:
    .4byte 0x58080000
    .4byte 0x00000000
.size etb_80010B44, 8

.section extabindex, "a"
.balign 4
.global eti_800205B4
eti_800205B4:
    .4byte fn_804283D4
    .4byte 0x00000038
    .4byte etb_800107A4
.size eti_800205B4, 12

.global eti_800205C0
eti_800205C0:
    .4byte fn_8042840C
    .4byte 0x0000003C
    .4byte etb_800107AC
.size eti_800205C0, 12

.global eti_800205CC
eti_800205CC:
    .4byte fn_80428448
    .4byte 0x000000DC
    .4byte etb_800107B4
.size eti_800205CC, 12

.global eti_800205D8
eti_800205D8:
    .4byte fn_8042852C
    .4byte 0x00000030
    .4byte etb_800107BC
.size eti_800205D8, 12

.global eti_800205E4
eti_800205E4:
    .4byte fn_8042855C
    .4byte 0x00000030
    .4byte etb_800107C4
.size eti_800205E4, 12

.global eti_800205F0
eti_800205F0:
    .4byte fn_8042858C
    .4byte 0x00000068
    .4byte etb_800107CC
.size eti_800205F0, 12

.global eti_800205FC
eti_800205FC:
    .4byte fn_804285F4
    .4byte 0x0000003C
    .4byte etb_800107DC
.size eti_800205FC, 12

.global eti_80020608
eti_80020608:
    .4byte fn_80428630
    .4byte 0x00000070
    .4byte etb_800107E4
.size eti_80020608, 12

.global eti_80020614
eti_80020614:
    .4byte fn_804286B4
    .4byte 0x00000128
    .4byte etb_80010804
.size eti_80020614, 12

.global eti_80020620
eti_80020620:
    .4byte fn_80428810
    .4byte 0x00000048
    .4byte etb_8001080C
.size eti_80020620, 12

.global eti_8002062C
eti_8002062C:
    .4byte fn_80428858
    .4byte 0x00000048
    .4byte etb_80010814
.size eti_8002062C, 12

.global eti_80020638
eti_80020638:
    .4byte fn_804288A0
    .4byte 0x000000D8
    .4byte etb_8001081C
.size eti_80020638, 12

.global eti_80020644
eti_80020644:
    .4byte fn_80428978
    .4byte 0x000000B0
    .4byte etb_80010844
.size eti_80020644, 12

.global eti_80020650
eti_80020650:
    .4byte fn_80428A88
    .4byte 0x00000040
    .4byte etb_80010864
.size eti_80020650, 12

.global eti_8002065C
eti_8002065C:
    .4byte fn_80428AC8
    .4byte 0x00000170
    .4byte etb_8001086C
.size eti_8002065C, 12

.global eti_80020668
eti_80020668:
    .4byte fn_80428C38
    .4byte 0x00000034
    .4byte etb_800108A4
.size eti_80020668, 12

.global eti_80020674
eti_80020674:
    .4byte fn_80428C6C
    .4byte 0x00000050
    .4byte etb_800108AC
.size eti_80020674, 12

.global eti_80020680
eti_80020680:
    .4byte fn_80428CBC
    .4byte 0x000002B8
    .4byte etb_800108B4
.size eti_80020680, 12

.global eti_8002068C
eti_8002068C:
    .4byte fn_80428F74
    .4byte 0x00000140
    .4byte etb_800108BC
.size eti_8002068C, 12

.global eti_80020698
eti_80020698:
    .4byte fn_804290B4
    .4byte 0x0000006C
    .4byte etb_800108C4
.size eti_80020698, 12

.global eti_800206A4
eti_800206A4:
    .4byte fn_80429120
    .4byte 0x000000D0
    .4byte etb_800108CC
.size eti_800206A4, 12

.global eti_800206B0
eti_800206B0:
    .4byte fn_804291F0
    .4byte 0x00000210
    .4byte etb_800108DC
.size eti_800206B0, 12

.global eti_800206BC
eti_800206BC:
    .4byte fn_80429400
    .4byte 0x00000054
    .4byte etb_800108E4
.size eti_800206BC, 12

.global eti_800206C8
eti_800206C8:
    .4byte fn_80429454
    .4byte 0x000002F4
    .4byte etb_800108EC
.size eti_800206C8, 12

.global eti_800206D4
eti_800206D4:
    .4byte fn_80429748
    .4byte 0x0000003C
    .4byte etb_800108F4
.size eti_800206D4, 12

.global eti_800206E0
eti_800206E0:
    .4byte fn_80429784
    .4byte 0x000000CC
    .4byte etb_800108FC
.size eti_800206E0, 12

.global eti_800206EC
eti_800206EC:
    .4byte fn_80429850
    .4byte 0x00000044
    .4byte etb_80010904
.size eti_800206EC, 12

.global eti_800206F8
eti_800206F8:
    .4byte fn_80429894
    .4byte 0x00000030
    .4byte etb_8001090C
.size eti_800206F8, 12

.global eti_80020704
eti_80020704:
    .4byte fn_804298C4
    .4byte 0x00000028
    .4byte etb_80010914
.size eti_80020704, 12

.global eti_80020710
eti_80020710:
    .4byte fn_804298EC
    .4byte 0x0000002C
    .4byte etb_8001091C
.size eti_80020710, 12

.global eti_8002071C
eti_8002071C:
    .4byte fn_80429918
    .4byte 0x000000A8
    .4byte etb_80010924
.size eti_8002071C, 12

.global eti_80020728
eti_80020728:
    .4byte fn_804299C0
    .4byte 0x00000224
    .4byte etb_8001092C
.size eti_80020728, 12

.global eti_80020734
eti_80020734:
    .4byte fn_80429BE4
    .4byte 0x000001FC
    .4byte etb_80010934
.size eti_80020734, 12

.global eti_80020740
eti_80020740:
    .4byte fn_80429E08
    .4byte 0x0000049C
    .4byte etb_8001093C
.size eti_80020740, 12

.global eti_8002074C
eti_8002074C:
    .4byte fn_8042A2A4
    .4byte 0x00000028
    .4byte etb_80010944
.size eti_8002074C, 12

.global eti_80020758
eti_80020758:
    .4byte fn_8042A2CC
    .4byte 0x00000118
    .4byte etb_8001094C
.size eti_80020758, 12

.global eti_80020764
eti_80020764:
    .4byte fn_8042A3E4
    .4byte 0x00000044
    .4byte etb_80010954
.size eti_80020764, 12

.global eti_80020770
eti_80020770:
    .4byte fn_8042A428
    .4byte 0x00000030
    .4byte etb_8001095C
.size eti_80020770, 12

.global eti_8002077C
eti_8002077C:
    .4byte fn_8042A458
    .4byte 0x000000DC
    .4byte etb_80010964
.size eti_8002077C, 12

.global eti_80020788
eti_80020788:
    .4byte fn_8042A534
    .4byte 0x000000AC
    .4byte etb_8001097C
.size eti_80020788, 12

.global eti_80020794
eti_80020794:
    .4byte fn_8042A5E0
    .4byte 0x00000028
    .4byte etb_8001098C
.size eti_80020794, 12

.global eti_800207A0
eti_800207A0:
    .4byte fn_8042A608
    .4byte 0x000000D4
    .4byte etb_800109A4
.size eti_800207A0, 12

.global eti_800207AC
eti_800207AC:
    .4byte fn_8042A6DC
    .4byte 0x0000002C
    .4byte etb_800109BC
.size eti_800207AC, 12

.global eti_800207B8
eti_800207B8:
    .4byte fn_8042A708
    .4byte 0x00000044
    .4byte etb_800109C4
.size eti_800207B8, 12

.global eti_800207C4
eti_800207C4:
    .4byte fn_8042A74C
    .4byte 0x0000002C
    .4byte etb_800109CC
.size eti_800207C4, 12

.global eti_800207D0
eti_800207D0:
    .4byte fn_8042A778
    .4byte 0x00000034
    .4byte etb_800109D4
.size eti_800207D0, 12

.global eti_800207DC
eti_800207DC:
    .4byte fn_8042A7AC
    .4byte 0x00000050
    .4byte etb_800109DC
.size eti_800207DC, 12

.global eti_800207E8
eti_800207E8:
    .4byte fn_8042A818
    .4byte 0x00000044
    .4byte etb_800109E4
.size eti_800207E8, 12

.global eti_800207F4
eti_800207F4:
    .4byte fn_8042A85C
    .4byte 0x00000030
    .4byte etb_800109EC
.size eti_800207F4, 12

.globl "@eti_80020800"
"@eti_80020800":
    .4byte fn_8042A88C
    .4byte 0x000000E4
    .4byte etb_800109F4
.size "@eti_80020800", 12

.global eti_8002080C
eti_8002080C:
    .4byte fn_8042A970
    .4byte 0x00000138
    .4byte etb_80010A0C
.size eti_8002080C, 12

.global eti_80020818
eti_80020818:
    .4byte fn_8042AAA8
    .4byte 0x000000C8
    .4byte etb_80010A1C
.size eti_80020818, 12

.global eti_80020824
eti_80020824:
    .4byte fn_8042AB70
    .4byte 0x00000130
    .4byte etb_80010A2C
.size eti_80020824, 12

.global eti_80020830
eti_80020830:
    .4byte fn_8042ACA0
    .4byte 0x0000002C
    .4byte etb_80010A44
.size eti_80020830, 12

.global eti_8002083C
eti_8002083C:
    .4byte fn_8042ACCC
    .4byte 0x00000044
    .4byte etb_80010A4C
.size eti_8002083C, 12

.global eti_80020848
eti_80020848:
    .4byte fn_8042AD10
    .4byte 0x0000002C
    .4byte etb_80010A54
.size eti_80020848, 12

.global eti_80020854
eti_80020854:
    .4byte fn_8042AD3C
    .4byte 0x00000034
    .4byte etb_80010A5C
.size eti_80020854, 12

.global eti_80020860
eti_80020860:
    .4byte fn_8042AD70
    .4byte 0x00000050
    .4byte etb_80010A64
.size eti_80020860, 12

.global eti_8002086C
eti_8002086C:
    .4byte fn_8042ADDC
    .4byte 0x00000098
    .4byte etb_80010A6C
.size eti_8002086C, 12

.global eti_80020878
eti_80020878:
    .4byte fn_8042AE74
    .4byte 0x000000E0
    .4byte etb_80010A7C
.size eti_80020878, 12

.global eti_80020884
eti_80020884:
    .4byte fn_8042AF60
    .4byte 0x00000044
    .4byte etb_80010A94
.size eti_80020884, 12

.global eti_80020890
eti_80020890:
    .4byte fn_8042AFA4
    .4byte 0x00000030
    .4byte etb_80010A9C
.size eti_80020890, 12

.global eti_8002089C
eti_8002089C:
    .4byte fn_8042AFD4
    .4byte 0x00000028
    .4byte etb_80010AA4
.size eti_8002089C, 12

.global eti_800208A8
eti_800208A8:
    .4byte fn_8042AFFC
    .4byte 0x00000030
    .4byte etb_80010AAC
.size eti_800208A8, 12

.global eti_800208B4
eti_800208B4:
    .4byte fn_8042B02C
    .4byte 0x00000028
    .4byte etb_80010AB4
.size eti_800208B4, 12

.global eti_800208C0
eti_800208C0:
    .4byte fn_8042B054
    .4byte 0x00000030
    .4byte etb_80010ABC
.size eti_800208C0, 12

.global eti_800208CC
eti_800208CC:
    .4byte fn_8042B084
    .4byte 0x00000028
    .4byte etb_80010AC4
.size eti_800208CC, 12

.global eti_800208D8
eti_800208D8:
    .4byte fn_8042B0AC
    .4byte 0x00000030
    .4byte etb_80010ACC
.size eti_800208D8, 12

.global eti_800208E4
eti_800208E4:
    .4byte fn_8042B0DC
    .4byte 0x00000050
    .4byte etb_80010AD4
.size eti_800208E4, 12

.global eti_800208F0
eti_800208F0:
    .4byte fn_8042B148
    .4byte 0x00000060
    .4byte etb_80010ADC
.size eti_800208F0, 12

.global eti_800208FC
eti_800208FC:
    .4byte fn_8042B1DC
    .4byte 0x00000254
    .4byte etb_80010AE4
.size eti_800208FC, 12

.global eti_80020908
eti_80020908:
    .4byte fn_8042B430
    .4byte 0x000004AC
    .4byte etb_80010AEC
.size eti_80020908, 12

.global eti_80020914
eti_80020914:
    .4byte fn_8042B8DC
    .4byte 0x000004A8
    .4byte etb_80010AF4
.size eti_80020914, 12

.global eti_80020920
eti_80020920:
    .4byte fn_8042BD84
    .4byte 0x000001D0
    .4byte etb_80010AFC
.size eti_80020920, 12

.global eti_8002092C
eti_8002092C:
    .4byte fn_8042C1CC
    .4byte 0x000001D0
    .4byte etb_80010B04
.size eti_8002092C, 12

.global eti_80020938
eti_80020938:
    .4byte fn_8042C39C
    .4byte 0x00000400
    .4byte etb_80010B0C
.size eti_80020938, 12

.global eti_80020944
eti_80020944:
    .4byte fn_8042C79C
    .4byte 0x0000025C
    .4byte etb_80010B14
.size eti_80020944, 12

.global eti_80020950
eti_80020950:
    .4byte fn_8042C9F8
    .4byte 0x00000258
    .4byte etb_80010B1C
.size eti_80020950, 12

.global eti_8002095C
eti_8002095C:
    .4byte fn_8042CC50
    .4byte 0x000000D4
    .4byte etb_80010B24
.size eti_8002095C, 12

.global eti_80020968
eti_80020968:
    .4byte fn_8042D20C
    .4byte 0x000001D8
    .4byte etb_80010B2C
.size eti_80020968, 12

.global eti_80020974
eti_80020974:
    .4byte fn_8042D3E4
    .4byte 0x000003D4
    .4byte etb_80010B34
.size eti_80020974, 12

.global eti_80020980
eti_80020980:
    .4byte fn_8042DA54
    .4byte 0x00000234
    .4byte etb_80010B3C
.size eti_80020980, 12

.global eti_8002098C
eti_8002098C:
    .4byte fn_8042DD54
    .4byte 0x00000490
    .4byte etb_80010B44
.size eti_8002098C, 12

.global eti_80020998
eti_80020998:
    .4byte fn_8042E204
    .4byte 0x00000028
    .4byte etb_80010794
.size eti_80020998, 12

.global eti_800209A4
eti_800209A4:
    .4byte fn_8042E22C
    .4byte 0x00000024
    .4byte etb_8001079C
.size eti_800209A4, 12

.global eti_800209B0
eti_800209B0:
    .4byte fn_8042E250
    .4byte 0x00000028
    .4byte etb_800107D4
.size eti_800209B0, 12

.global eti_800209BC
eti_800209BC:
    .4byte fn_8042E278
    .4byte 0x00000024
    .4byte etb_800107EC
.size eti_800209BC, 12

.global eti_800209C8
eti_800209C8:
    .4byte fn_8042E29C
    .4byte 0x00000028
    .4byte etb_800107F4
.size eti_800209C8, 12

.global eti_800209D4
eti_800209D4:
    .4byte fn_8042E2C4
    .4byte 0x00000028
    .4byte etb_80010824
.size eti_800209D4, 12

.global eti_800209E0
eti_800209E0:
    .4byte fn_8042E2EC
    .4byte 0x00000028
    .4byte etb_8001082C
.size eti_800209E0, 12

.global eti_800209EC
eti_800209EC:
    .4byte fn_8042E314
    .4byte 0x00000028
    .4byte etb_80010834
.size eti_800209EC, 12

.global eti_800209F8
eti_800209F8:
    .4byte fn_8042E33C
    .4byte 0x00000028
    .4byte etb_8001083C
.size eti_800209F8, 12

.global eti_80020A04
eti_80020A04:
    .4byte fn_8042E364
    .4byte 0x00000024
    .4byte etb_8001084C
.size eti_80020A04, 12

.global eti_80020A10
eti_80020A10:
    .4byte fn_8042E388
    .4byte 0x00000024
    .4byte etb_80010854
.size eti_80020A10, 12

.global eti_80020A1C
eti_80020A1C:
    .4byte fn_8042E3AC
    .4byte 0x00000024
    .4byte etb_8001085C
.size eti_80020A1C, 12

.global eti_80020A28
eti_80020A28:
    .4byte fn_8042E3D0
    .4byte 0x00000024
    .4byte etb_80010874
.size eti_80020A28, 12

.global eti_80020A34
eti_80020A34:
    .4byte fn_8042E3F4
    .4byte 0x00000024
    .4byte etb_8001087C
.size eti_80020A34, 12

.global eti_80020A40
eti_80020A40:
    .4byte fn_8042E418
    .4byte 0x00000024
    .4byte etb_80010884
.size eti_80020A40, 12

.global eti_80020A4C
eti_80020A4C:
    .4byte fn_8042E43C
    .4byte 0x00000028
    .4byte etb_8001088C
.size eti_80020A4C, 12

.global eti_80020A58
eti_80020A58:
    .4byte fn_8042E464
    .4byte 0x00000030
    .4byte etb_80010894
.size eti_80020A58, 12

.global eti_80020A64
eti_80020A64:
    .4byte fn_8042E494
    .4byte 0x00000030
    .4byte etb_8001089C
.size eti_80020A64, 12

.global eti_80020A70
eti_80020A70:
    .4byte fn_8042E4C4
    .4byte 0x00000028
    .4byte etb_800108D4
.size eti_80020A70, 12

.global eti_80020A7C
eti_80020A7C:
    .4byte fn_8042E4EC
    .4byte 0x00000028
    .4byte etb_8001096C
.size eti_80020A7C, 12

.global eti_80020A88
eti_80020A88:
    .4byte fn_8042E514
    .4byte 0x00000028
    .4byte etb_80010974
.size eti_80020A88, 12

.global eti_80020A94
eti_80020A94:
    .4byte fn_8042E53C
    .4byte 0x00000028
    .4byte etb_80010984
.size eti_80020A94, 12

.global eti_80020AA0
eti_80020AA0:
    .4byte fn_8042E564
    .4byte 0x00000028
    .4byte etb_80010994
.size eti_80020AA0, 12

.global eti_80020AAC
eti_80020AAC:
    .4byte fn_8042E58C
    .4byte 0x00000024
    .4byte etb_8001099C
.size eti_80020AAC, 12

.global eti_80020AB8
eti_80020AB8:
    .4byte fn_8042E5B0
    .4byte 0x00000028
    .4byte etb_800109AC
.size eti_80020AB8, 12

.global eti_80020AC4
eti_80020AC4:
    .4byte fn_8042E5D8
    .4byte 0x00000024
    .4byte etb_800109B4
.size eti_80020AC4, 12

.global eti_80020AD0
eti_80020AD0:
    .4byte fn_8042E5FC
    .4byte 0x00000028
    .4byte etb_800109FC
.size eti_80020AD0, 12

.global eti_80020ADC
eti_80020ADC:
    .4byte fn_8042E624
    .4byte 0x00000028
    .4byte etb_80010A04
.size eti_80020ADC, 12

.global eti_80020AE8
eti_80020AE8:
    .4byte fn_8042E64C
    .4byte 0x00000028
    .4byte etb_80010A14
.size eti_80020AE8, 12

.global eti_80020AF4
eti_80020AF4:
    .4byte fn_8042E674
    .4byte 0x00000024
    .4byte etb_80010A24
.size eti_80020AF4, 12

.global eti_80020B00
eti_80020B00:
    .4byte fn_8042E698
    .4byte 0x00000028
    .4byte etb_80010A34
.size eti_80020B00, 12

.global eti_80020B0C
eti_80020B0C:
    .4byte fn_8042E6C0
    .4byte 0x00000024
    .4byte etb_80010A3C
.size eti_80020B0C, 12

.global eti_80020B18
eti_80020B18:
    .4byte fn_8042E6E4
    .4byte 0x00000028
    .4byte etb_80010A74
.size eti_80020B18, 12

.global eti_80020B24
eti_80020B24:
    .4byte fn_8042E70C
    .4byte 0x00000028
    .4byte etb_80010A84
.size eti_80020B24, 12

.global eti_80020B30
eti_80020B30:
    .4byte fn_8042E734
    .4byte 0x00000024
    .4byte etb_80010A8C
.size eti_80020B30, 12

.global eti_80020B3C
eti_80020B3C:
    .4byte fn_8042E758
    .4byte 0x00000028
    .4byte etb_800107FC
.size eti_80020B3C, 12

.text
.balign 4
.global fn_804283D4
.global fn_8042840C
.global fn_80428448
.global fn_80428524
.global fn_8042852C
.global fn_8042855C
.global fn_8042858C
.global fn_804285F4
.global fn_80428630
.global fn_804286A0
.global fn_804286B4
.global fn_804287DC
.global fn_804287EC
.global fn_80428810
.global fn_80428858
.global fn_804288A0
.global fn_80428978
.global fn_80428A28
.global fn_80428A88
.global fn_80428AC8
.global fn_80428C38
.global fn_80428C6C
.global fn_80428CBC
.global fn_80428F74
.global fn_804290B4
.global fn_80429120
.global fn_804291F0
.global fn_80429400
.global fn_80429454
.global fn_80429748
.global fn_80429784
.global fn_80429850
.global fn_80429894
.global fn_804298C4
.global fn_804298EC
.global fn_80429918
.global fn_804299C0
.global fn_80429BE4
.global fn_80429DE0
.global fn_80429DE4
.global fn_80429DF4
.global fn_80429E08
.global fn_8042A2A4
.global fn_8042A2CC
.global fn_8042A3E4
.global fn_8042A428
.global fn_8042A458
.global fn_8042A534
.global fn_8042A5E0
.global fn_8042A608
.global fn_8042A6DC
.global fn_8042A708
.global fn_8042A74C
.global fn_8042A778
.global fn_8042A7AC
.global fn_8042A7FC
.global fn_8042A818
.global fn_8042A85C
.global fn_8042A88C
.global fn_8042A970
.global fn_8042AAA8
.global fn_8042AB70
.global fn_8042ACA0
.global fn_8042ACCC
.global fn_8042AD10
.global fn_8042AD3C
.global fn_8042AD70
.global fn_8042ADC0
.global fn_8042ADDC
.global fn_8042AE74
.global fn_8042AF54
.global fn_8042AF60
.global fn_8042AFA4
.global fn_8042AFD4
.global fn_8042AFFC
.global fn_8042B02C
.global fn_8042B054
.global fn_8042B084
.global fn_8042B0AC
.global fn_8042B0DC
.global fn_8042B12C
.global fn_8042B148
.global fn_8042B1A8
.global fn_8042B1DC
.global fn_8042B430
.global fn_8042B8DC
.global fn_8042BD84
.global fn_8042BF54
.global fn_8042C1CC
.global fn_8042C39C
.global fn_8042C79C
.global fn_8042C9F8
.global fn_8042CC50
.global fn_8042CD24
.global fn_8042CD38
.global fn_8042CD64
.global fn_8042CF9C
.global fn_8042CFF0
.global fn_8042D0E0
.global fn_8042D144
.global fn_8042D20C
.global fn_8042D3E4
.global fn_8042D7B8
.global fn_8042D8D4
.global fn_8042DA10
.global fn_8042DA54
.global fn_8042DC88
.global fn_8042DCC4
.global fn_8042DD54
.global fn_8042E1E4
.global fn_8042E1F4
.global fn_8042E1FC
.global fn_8042E204
.global fn_8042E22C
.global fn_8042E250
.global fn_8042E278
.global fn_8042E29C
.global fn_8042E2C4
.global fn_8042E2EC
.global fn_8042E314
.global fn_8042E33C
.global fn_8042E364
.global fn_8042E388
.global fn_8042E3AC
.global fn_8042E3D0
.global fn_8042E3F4
.global fn_8042E418
.global fn_8042E43C
.global fn_8042E464
.global fn_8042E494
.global fn_8042E4C4
.global fn_8042E4EC
.global fn_8042E514
.global fn_8042E53C
.global fn_8042E564
.global fn_8042E58C
.global fn_8042E5B0
.global fn_8042E5D8
.global fn_8042E5FC
.global fn_8042E624
.global fn_8042E64C
.global fn_8042E674
.global fn_8042E698
.global fn_8042E6C0
.global fn_8042E6E4
.global fn_8042E70C
.global fn_8042E734
.global fn_8042E758

fn_804283D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80428978
    bl fn_80429400
    bl fn_80429748
    .4byte 0x806D92EC # lwz r3, lbl_8053AEAC@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_804283FC
    bl fn_804283B0
L_804283FC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042840C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0x900D92F8 # stw r0, lbl_8053AEB8@sda21(r0)
    .4byte 0x980D92FC # stb r0, lbl_8053AEBC@sda21(r0)
    bl fn_80428630
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428448:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052BEC0@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_8052BEC0@l
    stw 31, 0xc(1)
    bl fn_80428858
    lis 3, lbl_8052BECC@ha
    addi 3, 3, lbl_8052BECC@l
    bl fn_80428810
    bl fn_80428294
    bl fn_8042828C
    lis 4, lbl_8052BEC0@ha
    lhz 5, 0x4(3)
    lwz 0, lbl_8052BEC0@l(4)
    subf 0, 0, 5
    srwi 0, 0, 1
    .4byte 0x900D92E4 # stw r0, lbl_8053AEA4@sda21(r0)
    bl fn_80428294
    bl fn_8042828C
    lis 4, lbl_8052BEC0@ha
    lhz 5, 0x6(3)
    addi 4, 4, lbl_8052BEC0@l
    .4byte 0x806D92EC # lwz r3, lbl_8053AEAC@sda21(r0)
    lwz 0, 0x4(4)
    subf 0, 0, 5
    srwi 0, 0, 1
    .4byte 0x900D92E8 # stw r0, lbl_8053AEA8@sda21(r0)
    bl fn_804291F0
    lis 3, lbl_8052BECC@ha
    addi 31, 3, lbl_8052BECC@l
    lwz 0, 0xc(31)
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_804284E8
    bl OSGetTick
    lwz 4, 0xc(31)
    divwu 0, 3, 4
    mullw 0, 0, 4
    subf 5, 0, 3
    .4byte 0x48000008 # b .L_804284EC
L_804284E8:
    li 5, 0x0
L_804284EC:
    .4byte 0x90AD92F0 # stw r5, lbl_8053AEB0@sda21(r0)
    li 3, 0x0
    li 4, 0x0
    bl fn_80428AC8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8042850C
    li 3, 0x0
    .4byte 0x48000008 # b .L_80428510
L_8042850C:
    li 3, 0x1
L_80428510:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428524:
    stw 4, 0x4(3)
    blr

fn_8042852C:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0xe0
    stw 0, 0x14(1)
    bl OSIsThreadTerminated
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042855C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8042857C
    addi 3, 3, 0xe0
    bl OSResumeThread
L_8042857C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042858C:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, fn_8042E250@ha
    mr 8, 4
    stw 0, 0x14(1)
    li 5, 0x0
    addi 4, 6, fn_8042E250@l
    li 7, 0x1000
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0xe0
    li 9, 0x1
    addi 6, 31, 0x13f8
    bl OSCreateThread
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_804285D4
    li 3, 0x0
    .4byte 0x48000010 # b .L_804285E0
L_804285D4:
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x4(31)
L_804285E0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804285F4:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    .4byte 0x806D92F4 # lwz r3, lbl_8053AEB4@sda21(r0)
    bl fn_80429454
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8042861C
    li 0, 0x1
    .4byte 0x980D92FC # stb r0, lbl_8053AEBC@sda21(r0)
L_8042861C:
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428630:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x0
    stw 0, 0x14(1)
    bl fn_80429784
    bl fn_8042E758
    lis 4, 0x1c
    li 5, 0x20
    bl fn_800838C8
    cmplwi 3, 0x0
    .4byte 0x906D92EC # stw r3, lbl_8053AEAC@sda21(r0)
    .4byte 0x4082000C # bne .L_80428668
    li 3, 0x0
    .4byte 0x4800002C # b .L_80428690
L_80428668:
    bl OSGetCurrentThread
    bl OSGetThreadPriority
    addi 3, 3, 0x1
    bl fn_8042E29C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80428688
    li 3, 0x0
    .4byte 0x4800000C # b .L_80428690
L_80428688:
    bl fn_8042E278
    li 3, 0x1
L_80428690:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804286A0:
    .4byte 0x800D92F8 # lwz r0, lbl_8053AEB8@sda21(r0)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_804286B4:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_8052AAD0@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    addi 3, 5, lbl_8052AAD0@l
    lbz 0, 0xa0(3)
    cmplwi 0, 0x0
    .4byte 0x418200D8 # beq .L_804287BC
    lbz 0, 0xa4(3)
    cmplwi 0, 0x0
    .4byte 0x418200CC # beq .L_804287BC
    bl fn_8004F7B8
    cmplwi 3, 0x0
    li 31, 0x30
    .4byte 0x40820008 # bne .L_80428708
    li 31, 0x20
L_80428708:
    cmpwi 29, 0x7f
    .4byte 0x40810008 # ble .L_80428714
    li 29, 0x7f
L_80428714:
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_80428720
    li 29, 0x0
L_80428720:
    lis 3, 0x1
    subi 0, 3, 0x15a0
    cmpw 30, 0
    .4byte 0x40810008 # ble .L_80428734
    mr 30, 0
L_80428734:
    cmpwi 30, 0x0
    .4byte 0x40800008 # bge .L_80428740
    li 30, 0x0
L_80428740:
    bl OSDisableInterrupts
    xoris 4, 29, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    lis 4, lbl_8052AAD0@ha
    .4byte 0xC8420B10 # lfd f2, lbl_80543AB0@sda21(r0)
    cmpwi 30, 0x0
    stw 0, 0x8(1)
    addi 5, 4, lbl_8052AAD0@l
    lfd 0, 0x8(1)
    fsubs 1, 0, 2
    stfs 1, 0xe0(5)
    .4byte 0x41820034 # beq .L_804287A4
    mullw 4, 31, 30
    lfs 0, 0xdc(5)
    stw 0, 0x8(1)
    fsubs 1, 1, 0
    xoris 0, 4, 0x8000
    stw 4, 0xe8(5)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    stfs 0, 0xe4(5)
    .4byte 0x48000010 # b .L_804287B0
L_804287A4:
    li 0, 0x0
    stfs 1, 0xdc(5)
    stw 0, 0xe8(5)
L_804287B0:
    bl OSRestoreInterrupts
    li 3, 0x1
    .4byte 0x48000008 # b .L_804287C0
L_804287BC:
    li 3, 0x0
L_804287C0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804287DC:
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lbz 3, 0xa1(3)
    blr

fn_804287EC:
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lbz 0, 0xa0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80428808
    lwz 3, 0x50(3)
    blr
L_80428808:
    li 3, 0x0
    blr

fn_80428810:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_8052AAD0@l
    lbz 0, 0xa0(4)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80428844
    addi 4, 4, 0x8c
    li 5, 0x10
    bl memcpy
    li 3, 0x1
    .4byte 0x48000008 # b .L_80428848
L_80428844:
    li 3, 0x0
L_80428848:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428858:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_8052AAD0@l
    lbz 0, 0xa0(4)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8042888C
    addi 4, 4, 0x80
    li 5, 0xc
    bl memcpy
    li 3, 0x1
    .4byte 0x48000008 # b .L_80428890
L_8042888C:
    li 3, 0x0
L_80428890:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804288A0:
    stwu 1, -0x30(1)
    mflr 0
    lis 8, lbl_8052AAD0@ha
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    addi 31, 8, lbl_8052AAD0@l
    mr 27, 4
    mr 28, 5
    mr 29, 6
    mr 30, 7
    lbz 0, 0xa0(31)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_80428960
    lbz 0, 0xa1(31)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_80428960
    lwz 0, 0xf8(31)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_80428960
    bl fn_80429E08
    lwz 5, 0xf8(31)
    extsh 0, 30
    lis 3, lbl_8052AAD0@ha
    extsh 6, 27
    stw 0, 0x8(1)
    addi 3, 3, lbl_8052AAD0@l
    extsh 7, 28
    extsh 10, 29
    lwz 4, 0x80(3)
    lwz 0, 0x84(3)
    lwz 3, 0x0(5)
    extsh 8, 4
    lwz 4, 0x4(5)
    extsh 9, 0
    lwz 5, 0x8(5)
    bl fn_80429BE4
    bl fn_8042A2CC
    lwz 4, 0xf8(31)
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lwz 4, 0xc(4)
    lwz 0, 0xc0(3)
    lwz 3, 0x50(3)
    add 4, 4, 0
    divwu 0, 4, 3
    mullw 0, 0, 3
    subf 3, 0, 4
    .4byte 0x48000008 # b .L_80428964
L_80428960:
    li 3, -0x1
L_80428964:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80428978:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    addi 4, 3, lbl_8052AAD0@l
    lbz 0, 0xa0(4)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_80428A18
    lbz 0, 0xa1(4)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_80428A18
    li 0, 0x0
    .4byte 0x806D92D0 # lwz r3, lbl_8053AE90@sda21(r0)
    stb 0, 0xa2(4)
    stb 0, 0xa1(4)
    bl fn_8004BA94
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_804289D4
    bl fn_8004ADC0
    bl fn_8042E3AC
L_804289D4:
    bl fn_8042E388
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lbz 0, 0xa4(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_804289F4
    bl fn_8042E364
    bl fn_804298C4
L_804289F4:
    bl fn_80429850
    cmplwi 3, 0x0
    .4byte 0x4082FFF8 # bne .L_804289F4
    lis 3, lbl_8052AAD0@ha
    li 0, 0x0
    addi 3, 3, lbl_8052AAD0@l
    lfs 0, 0xe0(3)
    stw 0, 0xe8(3)
    stfs 0, 0xdc(3)
L_80428A18:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428A28:
    lis 3, lbl_8052AAD0@ha
    addi 7, 3, lbl_8052AAD0@l
    lbz 0, 0xa0(7)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_80428A80
    lbz 0, 0xa1(7)
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_80428A50
    cmplwi 0, 0x4
    .4byte 0x40820034 # bne .L_80428A80
L_80428A50:
    lis 3, lbl_8052AAD0@ha
    li 6, 0x2
    addi 4, 3, lbl_8052AAD0@l
    li 5, 0x0
    li 0, -0x1
    stb 6, 0xa1(7)
    li 3, 0x1
    stw 5, 0xd0(4)
    stw 5, 0xd4(4)
    stw 0, 0xcc(4)
    stw 0, 0xc8(4)
    blr
L_80428A80:
    li 3, 0x0
    blr

fn_80428A88:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8005BDDC
    .4byte 0x880D92C8 # lbz r0, lbl_8053AE88@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80428AB8
L_80428AA4:
    bl fn_80429850
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80428AB8
    bl fn_8042E2EC
    .4byte 0x4BFFFFF0 # b .L_80428AA4
L_80428AB8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428AC8:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    addi 8, 6, lbl_8052AAD0@l
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    lbz 0, 0xa0(8)
    cmplwi 0, 0x0
    .4byte 0x41820130 # beq .L_80428C1C
    lbz 0, 0xa1(8)
    cmplwi 0, 0x0
    .4byte 0x40820124 # bne .L_80428C1C
    cmpwi 3, 0x0
    .4byte 0x40810054 # ble .L_80428B54
    lwz 0, 0x60(8)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80428B18
    li 3, 0x0
    .4byte 0x4800010C # b .L_80428C20
L_80428B18:
    lwz 0, 0x50(8)
    cmplw 0, 3
    .4byte 0x4081002C # ble .L_80428B4C
    lis 6, lbl_8052ACA0@ha
    lwzu 9, lbl_8052ACA0@l(6)
    lwz 7, 0x64(8)
    lwz 0, 0x4(6)
    stw 3, 0xc0(8)
    add 3, 7, 9
    subf 0, 9, 0
    stw 3, 0xb8(8)
    stw 0, 0xbc(8)
    .4byte 0x48000020 # b .L_80428B68
L_80428B4C:
    li 3, 0x0
    .4byte 0x480000D0 # b .L_80428C20
L_80428B54:
    lwz 6, 0x64(8)
    lwz 0, 0x54(8)
    stw 6, 0xb8(8)
    stw 0, 0xbc(8)
    stw 3, 0xc0(8)
L_80428B68:
    lis 3, lbl_8052AAD0@ha
    addi 30, 3, lbl_8052AAD0@l
    lbz 0, 0xa4(30)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80428B9C
    cmpwi 5, 0x0
    .4byte 0x41800010 # blt .L_80428B90
    lwz 0, 0x98(30)
    cmplw 5, 0
    .4byte 0x4180000C # blt .L_80428B98
L_80428B90:
    li 3, 0x0
    .4byte 0x4800008C # b .L_80428C20
L_80428B98:
    stw 5, 0xec(30)
L_80428B9C:
    lis 3, lbl_8052AAD0@ha
    clrlwi 4, 4, 31
    addi 31, 3, lbl_8052AAD0@l
    li 3, 0x0
    lbz 0, 0xb0(31)
    stb 4, 0xa3(31)
    cmplwi 0, 0x0
    stw 3, 0xd8(31)
    .4byte 0x40820030 # bne .L_80428BEC
    li 3, 0x14
    li 4, 0x0
    bl fn_8042E494
    lbz 0, 0xa4(30)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80428BE4
    li 3, 0xc
    li 4, 0x0
    bl fn_8042E464
L_80428BE4:
    li 3, 0x8
    bl fn_8042E43C
L_80428BEC:
    bl fn_80429120
    bl fn_8042E418
    lbz 0, 0xa4(30)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80428C04
    bl fn_8042E3F4
L_80428C04:
    lbz 0, 0xb0(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80428C14
    bl fn_8042E3D0
L_80428C14:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80428C20
L_80428C1C:
    li 3, 0x0
L_80428C20:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428C38:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8052ACE0@ha
    li 5, 0x1
    stw 0, 0x14(1)
    mr 0, 3
    addi 3, 4, lbl_8052ACE0@l
    clrlwi 4, 0, 24
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428C6C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052ACE0@ha
    li 5, 0x0
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    addi 3, 3, lbl_8052ACE0@l
    bl OSReceiveMessage
    cmpwi 3, 0x1
    .4byte 0x40820018 # bne .L_80428CA8
    lwz 3, 0x8(1)
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    .4byte 0x48000008 # b .L_80428CAC
L_80428CA8:
    li 3, -0x1
L_80428CAC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80428CBC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    .4byte 0x818D92D0 # lwz r12, lbl_8053AE90@sda21(r0)
    cmplwi 12, 0x0
    .4byte 0x4182000C # beq .L_80428CE8
    mtctr 12
    bctrl
L_80428CE8:
    lis 3, lbl_8052AAD0@ha
    li 30, -0x1
    addi 31, 3, lbl_8052AAD0@l
    lbz 0, 0xa0(31)
    cmplwi 0, 0x0
    .4byte 0x4182025C # beq .L_80428F58
    lbz 0, 0xa1(31)
    cmplwi 0, 0x2
    .4byte 0x40820250 # bne .L_80428F58
    lwz 0, 0xa8(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80428D24
    lwz 0, 0xac(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80428D3C
L_80428D24:
    lis 3, lbl_8052AAD0@ha
    li 0, 0x5
    addi 3, 3, lbl_8052AAD0@l
    stb 0, 0xa1(31)
    stb 0, 0xa2(3)
    .4byte 0x48000220 # b .L_80428F58
L_80428D3C:
    lwz 3, 0xcc(31)
    li 7, 0x1
    lwz 0, 0xc8(31)
    li 6, 0x0
    addc 5, 3, 7
    adde 4, 0, 6
    stw 5, 0xcc(31)
    xor 3, 5, 6
    xor 0, 4, 6
    stw 4, 0xc8(31)
    or. 0, 3, 0
    .4byte 0x40820094 # bne .L_80428DFC
    bl fn_804290B4
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_80428DEC
    lis 3, lbl_8052AAD0@ha
    addi 29, 3, lbl_8052AAD0@l
    lbz 0, 0xa4(29)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80428DDC
    lwz 3, 0xf4(29)
    lwz 0, 0xf0(29)
    subf 0, 3, 0
    cmpwi 0, 0x1
    .4byte 0x41810034 # bgt .L_80428DD0
    li 3, 0x0
    bl fn_8042E2C4
    lis 5, lbl_8052AAD0@ha
    lwz 4, 0xf0(29)
    addi 6, 5, lbl_8052AAD0@l
    mr 30, 3
    lwz 5, 0xd8(6)
    addi 0, 4, 0x1
    stw 0, 0xf0(29)
    subi 0, 5, 0x1
    stw 0, 0xd8(6)
    .4byte 0x480000B8 # b .L_80428E84
L_80428DD0:
    li 0, 0x2
    stb 0, 0xa2(29)
    .4byte 0x480000AC # b .L_80428E84
L_80428DDC:
    li 3, 0x0
    bl fn_8042E2C4
    mr 30, 3
    .4byte 0x4800009C # b .L_80428E84
L_80428DEC:
    li 0, -0x1
    stw 0, 0xcc(31)
    stw 0, 0xc8(31)
    .4byte 0x4800008C # b .L_80428E84
L_80428DFC:
    xor 3, 5, 7
    xor 0, 4, 6
    or. 0, 3, 0
    .4byte 0x4082000C # bne .L_80428E14
    li 0, 0x2
    stb 0, 0xa2(31)
L_80428E14:
    bl fn_80428F74
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80428E84
    lis 3, lbl_8052AAD0@ha
    addi 29, 3, lbl_8052AAD0@l
    lbz 0, 0xa4(29)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_80428E78
    lwz 3, 0xf4(29)
    lwz 0, 0xf0(29)
    subf 0, 3, 0
    cmpwi 0, 0x1
    .4byte 0x41810040 # bgt .L_80428E84
    li 3, 0x0
    bl fn_8042E2C4
    lis 5, lbl_8052AAD0@ha
    lwz 4, 0xf0(29)
    addi 6, 5, lbl_8052AAD0@l
    mr 30, 3
    lwz 5, 0xd8(6)
    addi 0, 4, 0x1
    stw 0, 0xf0(29)
    subi 0, 5, 0x1
    stw 0, 0xd8(6)
    .4byte 0x48000010 # b .L_80428E84
L_80428E78:
    li 3, 0x0
    bl fn_8042E2C4
    mr 30, 3
L_80428E84:
    cmplwi 30, 0x0
    .4byte 0x4182002C # beq .L_80428EB4
    addis 0, 30, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820020 # beq .L_80428EB4
    lis 3, lbl_8052AAD0@ha
    addi 29, 3, lbl_8052AAD0@l
    lwz 3, 0xf8(29)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80428EB0
    bl fn_80429894
L_80428EB0:
    stw 30, 0xf8(29)
L_80428EB4:
    lis 3, lbl_8052AAD0@ha
    addi 5, 3, lbl_8052AAD0@l
    lbz 0, 0xa3(5)
    clrlwi. 0, 0, 31
    .4byte 0x40820094 # bne .L_80428F58
    lbz 0, 0xa4(5)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80428F08
    lwz 4, 0xf4(5)
    lwz 3, 0xc0(5)
    lwz 0, 0x50(5)
    add 3, 4, 3
    cmplw 3, 0
    .4byte 0x40820070 # bne .L_80428F58
    lwz 0, 0xfc(5)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_80428F58
    li 0, 0x3
    stb 0, 0xa2(5)
    stb 0, 0xa1(31)
    .4byte 0x48000054 # b .L_80428F58
L_80428F08:
    lwz 3, 0xf8(5)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80428F24
    lwz 3, 0xc(3)
    lwz 0, 0xc0(5)
    add 5, 3, 0
    .4byte 0x4800000C # b .L_80428F2C
L_80428F24:
    lwz 3, 0xc0(5)
    subi 5, 3, 0x1
L_80428F2C:
    lis 3, lbl_8052AAD0@ha
    addi 4, 3, lbl_8052AAD0@l
    lwz 3, 0x50(4)
    subi 0, 3, 0x1
    cmplw 5, 0
    .4byte 0x40820018 # bne .L_80428F58
    cmplwi 30, 0x0
    .4byte 0x40820010 # bne .L_80428F58
    li 0, 0x3
    stb 0, 0xa2(4)
    stb 0, 0xa1(31)
L_80428F58:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80428F74:
    stwu 1, -0x20(1)
    mflr 0
    lis 3, lbl_8052AAD0@ha
    stw 0, 0x24(1)
    addi 3, 3, lbl_8052AAD0@l
    stw 31, 0x1c(1)
    lwz 4, 0x88(3)
    clrlwi. 0, 4, 31
    .4byte 0x41820018 # beq .L_80428FAC
    bl fn_8004D1EC
    cmplwi 3, 0x0
    .4byte 0x408200FC # bne .L_8042909C
    li 3, 0x1
    .4byte 0x480000F8 # b .L_804290A0
L_80428FAC:
    rlwinm. 0, 4, 0, 30, 30
    .4byte 0x41820018 # beq .L_80428FC8
    bl fn_8004D1EC
    cmplwi 3, 0x1
    .4byte 0x408200E0 # bne .L_8042909C
    li 3, 0x1
    .4byte 0x480000DC # b .L_804290A0
L_80428FC8:
    .4byte 0xC0220B18 # lfs f1, lbl_80543AB8@sda21(r0)
    lfs 0, 0x4c(3)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 31, 0xc(1)
    bl VIGetTvFormat
    cmplwi 3, 0x1
    .4byte 0x4082004C # bne .L_80429034
    lis 3, lbl_8052AAD0@ha
    srawi 0, 31, 31
    addi 3, 3, lbl_8052AAD0@l
    li 5, 0x0
    lwz 8, 0xcc(3)
    li 6, 0x1388
    lwz 4, 0xc8(3)
    mulhwu 3, 8, 31
    mullw 7, 4, 31
    mullw 0, 8, 0
    add 3, 3, 7
    mullw 4, 8, 31
    add 3, 3, 0
    bl __div2i
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    stw 4, 0xd4(3)
    .4byte 0x48000048 # b .L_80429078
L_80429034:
    lis 3, lbl_8052AAD0@ha
    srawi 0, 31, 31
    addi 3, 3, lbl_8052AAD0@l
    li 5, 0x0
    lwz 8, 0xcc(3)
    li 6, 0x176a
    lwz 4, 0xc8(3)
    mulhwu 3, 8, 31
    mullw 7, 4, 31
    mullw 0, 8, 0
    add 3, 3, 7
    mullw 4, 8, 31
    add 3, 3, 0
    bl __div2i
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    stw 4, 0xd4(3)
L_80429078:
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lwz 0, 0xd0(3)
    lwz 4, 0xd4(3)
    cmpw 0, 4
    .4byte 0x41820010 # beq .L_8042909C
    stw 4, 0xd0(3)
    li 3, 0x1
    .4byte 0x48000008 # b .L_804290A0
L_8042909C:
    li 3, 0x0
L_804290A0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804290B4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_8052AAD0@l
    lwz 3, 0x88(3)
    clrlwi. 0, 3, 31
    .4byte 0x41820018 # beq .L_804290E8
    bl fn_8004D1EC
    cmplwi 3, 0x0
    .4byte 0x40820030 # bne .L_8042910C
    li 3, 0x1
    .4byte 0x4800002C # b .L_80429110
L_804290E8:
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x41820018 # beq .L_80429104
    bl fn_8004D1EC
    cmplwi 3, 0x1
    .4byte 0x40820014 # bne .L_8042910C
    li 3, 0x1
    .4byte 0x48000010 # b .L_80429110
L_80429104:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80429110
L_8042910C:
    li 3, 0x0
L_80429110:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80429120:
    stwu 1, -0x20(1)
    mflr 0
    lis 3, lbl_8052AAD0@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    addi 31, 3, lbl_8052AAD0@l
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lbz 0, 0xb0(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80429168
    li 29, 0x0
L_80429150:
    addi 3, 31, 0x100
    bl fn_8042E4C4
    addi 29, 29, 0x1
    addi 31, 31, 0xc
    cmpwi 29, 0xa
    .4byte 0x4180FFEC # blt .L_80429150
L_80429168:
    lis 3, lbl_8052AAD0@ha
    li 29, 0x0
    addi 30, 3, lbl_8052AAD0@l
    mr 31, 30
L_80429178:
    addi 3, 31, 0x178
    bl fn_8042E2EC
    addi 29, 29, 0x1
    addi 31, 31, 0x10
    cmpwi 29, 0x3
    .4byte 0x4180FFEC # blt .L_80429178
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lbz 0, 0xa4(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_804291C0
    li 31, 0x0
L_804291A8:
    addi 3, 30, 0x1a8
    bl fn_8042E33C
    addi 31, 31, 0x1
    addi 30, 30, 0xc
    cmpwi 31, 0x3
    .4byte 0x4180FFEC # blt .L_804291A8
L_804291C0:
    lis 3, lbl_8052ACE0@ha
    .4byte 0x388D92CC # li r4, lbl_8053AE8C@sda21
    addi 3, 3, lbl_8052ACE0@l
    li 5, 0x1
    bl OSInitMessageQueue
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804291F0:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8052AAD0@ha
    stw 0, 0x24(1)
    addi 5, 4, lbl_8052AAD0@l
    stmw 27, 0xc(1)
    lbz 0, 0xa0(5)
    cmplwi 0, 0x0
    .4byte 0x418201D8 # beq .L_804293E8
    lbz 0, 0xa1(5)
    cmplwi 0, 0x0
    .4byte 0x408201CC # bne .L_804293E8
    lbz 0, 0xb0(5)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8042923C
    lwz 0, 0x58(5)
    stw 3, 0xb4(5)
    add 31, 3, 0
    .4byte 0x480000CC # b .L_80429304
L_8042923C:
    stw 3, 0x100(5)
    lwz 4, 0x44(5)
    addi 0, 4, 0x1f
    clrrwi 0, 0, 5
    add 31, 3, 0
    stw 31, 0x10c(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x118(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x124(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x130(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x13c(5)
    lwz 4, 0x44(5)
    addi 0, 4, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x148(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x154(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x160(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 31, 0x16c(5)
    lwz 3, 0x44(5)
    addi 0, 3, 0x1f
    clrrwi 0, 0, 5
    add 31, 31, 0
L_80429304:
    lis 3, lbl_8052AAD0@ha
    li 29, 0x0
    addi 30, 3, lbl_8052AAD0@l
    lwz 3, 0x80(30)
    lwz 0, 0x84(30)
    mullw 4, 3, 0
    srwi 3, 4, 2
    addi 4, 4, 0x1f
    addi 0, 3, 0x1f
    clrrwi 28, 4, 5
    clrrwi 27, 0, 5
L_80429330:
    stw 31, 0x178(30)
    mr 3, 31
    mr 4, 28
    bl DCInvalidateRange
    add 31, 31, 28
    mr 4, 27
    stw 31, 0x17c(30)
    mr 3, 31
    bl DCInvalidateRange
    add 31, 31, 27
    mr 4, 27
    stw 31, 0x180(30)
    mr 3, 31
    bl DCInvalidateRange
    addi 29, 29, 0x1
    add 31, 31, 27
    cmplwi 29, 0x3
    addi 30, 30, 0x10
    .4byte 0x4180FFB8 # blt .L_80429330
    lis 3, lbl_8052AAD0@ha
    addi 5, 3, lbl_8052AAD0@l
    lbz 0, 0xa4(5)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_804293D4
    lwz 0, 0x48(5)
    li 4, 0x0
    stw 31, 0x1a8(5)
    slwi 3, 0, 2
    addi 0, 3, 0x1f
    stw 31, 0x1ac(5)
    clrrwi 0, 0, 5
    add 31, 31, 0
    stw 4, 0x1b0(5)
    stw 31, 0x1b4(5)
    stw 31, 0x1b8(5)
    add 31, 31, 0
    stw 4, 0x1bc(5)
    stw 31, 0x1c0(5)
    stw 31, 0x1c4(5)
    add 31, 31, 0
    stw 4, 0x1c8(5)
L_804293D4:
    lis 4, lbl_8052AAD0@ha
    li 3, 0x1
    addi 4, 4, lbl_8052AAD0@l
    stw 31, 0x9c(4)
    .4byte 0x48000008 # b .L_804293EC
L_804293E8:
    li 3, 0x0
L_804293EC:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80429400:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_8052AAD0@l
    lbz 0, 0xa0(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80429440
    lbz 0, 0xa1(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80429440
    li 0, 0x0
    stb 0, 0xa0(3)
    bl fn_8004853C
    li 3, 0x1
    .4byte 0x48000008 # b .L_80429444
L_80429440:
    li 3, 0x0
L_80429444:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80429454:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 23, 3
    mr 31, 4
    .4byte 0x880D92C8 # lbz r0, lbl_8053AE88@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80429480
    li 3, 0x0
    .4byte 0x480002B8 # b .L_80429734
L_80429480:
    lis 3, lbl_8052AAD0@ha
    addi 30, 3, lbl_8052AAD0@l
    lbz 0, 0xa0(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8042949C
    li 3, 0x0
    .4byte 0x4800029C # b .L_80429734
L_8042949C:
    addi 29, 30, 0x80
    li 4, 0x0
    mr 3, 29
    li 5, 0xc
    bl memset
    lis 3, lbl_8052AAD0@ha
    li 4, 0x0
    addi 3, 3, lbl_8052AAD0@l
    li 5, 0x10
    addi 28, 3, 0x8c
    mr 3, 28
    bl memset
    lis 4, lbl_8052AAD0@ha
    mr 3, 23
    addi 4, 4, lbl_8052AAD0@l
    bl fn_80048474
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_804294EC
    li 3, 0x0
    .4byte 0x4800024C # b .L_80429734
L_804294EC:
    lis 3, lbl_8052AAD0@ha
    lis 4, lbl_8052ACA0@ha
    addi 3, 3, lbl_8052AAD0@l
    li 5, 0x40
    addi 4, 4, lbl_8052ACA0@l
    li 6, 0x0
    li 7, 0x2
    bl fn_80048874
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_80429528
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    bl fn_8004853C
    li 3, 0x0
    .4byte 0x48000210 # b .L_80429734
L_80429528:
    lis 4, lbl_8052AAD0@ha
    lis 3, lbl_8052ACA0@ha
    addi 4, 4, lbl_8052AAD0@l
    li 5, 0x30
    addi 23, 4, 0x3c
    addi 4, 3, lbl_8052ACA0@l
    mr 3, 23
    bl memcpy
    mr 3, 23
    .4byte 0x38820B1C # li r4, lbl_80543ABC@sda21
    bl strcmp
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80429570
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    bl fn_8004853C
    li 3, 0x0
    .4byte 0x480001C8 # b .L_80429734
L_80429570:
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lwz 4, 0x40(3)
    subis 0, 4, 0x1
    cmplwi 0, 0x1000
    .4byte 0x41820010 # beq .L_80429594
    bl fn_8004853C
    li 3, 0x0
    .4byte 0x480001A4 # b .L_80429734
L_80429594:
    lwz 24, 0x5c(3)
    lis 4, lbl_8052ACA0@ha
    addi 4, 4, lbl_8052ACA0@l
    li 5, 0x20
    mr 6, 24
    li 7, 0x2
    bl fn_80048874
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_804295CC
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    bl fn_8004853C
    li 3, 0x0
    .4byte 0x4800016C # b .L_80429734
L_804295CC:
    lis 4, lbl_8052AAD0@ha
    lis 3, lbl_8052ACA0@ha
    addi 4, 4, lbl_8052AAD0@l
    li 5, 0x14
    addi 25, 4, 0x6c
    addi 4, 3, lbl_8052ACA0@l
    mr 3, 25
    bl memcpy
    lis 3, lbl_8052AAD0@ha
    li 0, 0x0
    addi 27, 3, lbl_8052AAD0@l
    addi 24, 24, 0x14
    stb 0, 0xa4(27)
    mr 26, 27
    li 23, 0x0
    .4byte 0x480000E8 # b .L_804296F0
L_8042960C:
    lbz 0, 0x70(26)
    cmpwi 0, 0x1
    .4byte 0x4182006C # beq .L_80429680
    .4byte 0x408000C8 # bge .L_804296E0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80429628
    .4byte 0x480000BC # b .L_804296E0
L_80429628:
    lis 3, lbl_8052AAD0@ha
    lis 4, lbl_8052ACA0@ha
    addi 3, 3, lbl_8052AAD0@l
    mr 6, 24
    addi 4, 4, lbl_8052ACA0@l
    li 5, 0x20
    li 7, 0x2
    bl fn_80048874
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_80429664
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    bl fn_8004853C
    li 3, 0x0
    .4byte 0x480000D4 # b .L_80429734
L_80429664:
    lis 4, lbl_8052ACA0@ha
    mr 3, 29
    addi 4, 4, lbl_8052ACA0@l
    li 5, 0xc
    bl memcpy
    addi 24, 24, 0xc
    .4byte 0x4800006C # b .L_804296E8
L_80429680:
    lis 3, lbl_8052AAD0@ha
    lis 4, lbl_8052ACA0@ha
    addi 3, 3, lbl_8052AAD0@l
    mr 6, 24
    addi 4, 4, lbl_8052ACA0@l
    li 5, 0x20
    li 7, 0x2
    bl fn_80048874
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_804296BC
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    bl fn_8004853C
    li 3, 0x0
    .4byte 0x4800007C # b .L_80429734
L_804296BC:
    lis 4, lbl_8052ACA0@ha
    mr 3, 28
    addi 4, 4, lbl_8052ACA0@l
    li 5, 0x10
    bl memcpy
    li 0, 0x1
    addi 24, 24, 0x10
    stb 0, 0xa4(27)
    .4byte 0x4800000C # b .L_804296E8
L_804296E0:
    li 3, 0x0
    .4byte 0x48000050 # b .L_80429734
L_804296E8:
    addi 26, 26, 0x1
    addi 23, 23, 0x1
L_804296F0:
    lwz 0, 0x0(25)
    cmplw 23, 0
    .4byte 0x4180FF14 # blt .L_8042960C
    lis 3, lbl_8052AAD0@ha
    .4byte 0xC0020B0C # lfs f0, lbl_80543AAC@sda21(r0)
    addi 4, 3, lbl_8052AAD0@l
    li 5, 0x0
    li 0, 0x1
    stb 5, 0xa2(4)
    li 3, 0x1
    stb 5, 0xa1(4)
    stb 5, 0xa3(4)
    stb 31, 0xb0(4)
    stb 0, 0xa0(30)
    stfs 0, 0xdc(4)
    stfs 0, 0xe0(4)
    stw 5, 0xe8(4)
L_80429734:
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80429748:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl LCDisable
    bl fn_804298C4
    lis 3, lbl_8052AAD0@ha
    li 0, 0x0
    addi 3, 3, lbl_8052AAD0@l
    .4byte 0x980D92C8 # stb r0, lbl_8053AE88@sda21(r0)
    stw 0, 0xa8(3)
    stw 0, 0xac(3)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80429784:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8052A540@ha
    li 5, 0x1d0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 4, lbl_8052A540@l
    li 4, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    addi 3, 31, 0x590
    bl memset
    bl fn_80041168
    addi 3, 31, 0x7c0
    addi 4, 31, 0x7e0
    li 5, 0x3
    bl OSInitMessageQueue
    bl fn_8042B148
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_804297DC
    li 3, 0x0
    .4byte 0x48000060 # b .L_80429838
L_804297DC:
    bl OSDisableInterrupts
    li 0, 0x0
    .4byte 0x93CD92E0 # stw r30, lbl_8053AEA0@sda21(r0)
    mr 30, 3
    .4byte 0x900D92D4 # stw r0, lbl_8053AE94@sda21(r0)
    .4byte 0x900D92D8 # stw r0, lbl_8053AE98@sda21(r0)
    .4byte 0x900D92DC # stw r0, lbl_8053AE9C@sda21(r0)
    bl fn_804298EC
    mr 3, 30
    bl OSRestoreInterrupts
    .4byte 0x800D92E0 # lwz r0, lbl_8053AEA0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8042982C
    addi 3, 31, 0x800
    li 4, 0x0
    li 5, 0x1180
    bl memset
    addi 3, 31, 0x800
    li 4, 0x1180
    bl fn_80040F90
L_8042982C:
    li 0, 0x1
    li 3, 0x1
    .4byte 0x980D92C8 # stb r0, lbl_8053AE88@sda21(r0)
L_80429838:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80429850:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052AD00@ha
    li 5, 0x0
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    addi 3, 3, lbl_8052AD00@l
    bl OSReceiveMessage
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_80429880
    lwz 3, 0x8(1)
    .4byte 0x48000008 # b .L_80429884
L_80429880:
    li 3, 0x0
L_80429884:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80429894:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, lbl_8052AD00@ha
    mr 4, 3
    stw 0, 0x14(1)
    addi 3, 5, lbl_8052AD00@l
    li 5, 0x0
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804298C4:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x0
    li 4, 0x0
    stw 0, 0x14(1)
    bl fn_8002A1E4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804298EC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, fn_80429918@ha
    li 4, 0x3
    stw 0, 0x14(1)
    addi 3, 3, fn_80429918@l
    bl fn_8002A1E4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80429918:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_8052AAD0@l
    lbz 0, 0xa0(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80429958
    lbz 0, 0xa2(3)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_80429958
    lbz 0, 0xa4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80429960
L_80429958:
    li 3, 0x0
    .4byte 0x48000050 # b .L_804299AC
L_80429960:
    bl OSEnableInterrupts
    .4byte 0x800D92D4 # lwz r0, lbl_8053AE94@sda21(r0)
    mr 5, 31
    lis 4, lbl_8052AD40@ha
    mr 31, 3
    xori 7, 0, 0x1
    mulli 6, 7, 0x8c0
    addi 0, 4, lbl_8052AD40@l
    .4byte 0x90ED92D4 # stw r7, lbl_8053AE94@sda21(r0)
    li 4, 0x0
    add 3, 0, 6
    bl fn_804299C0
    mr 3, 31
    bl OSRestoreInterrupts
    .4byte 0x808D92D4 # lwz r4, lbl_8053AE94@sda21(r0)
    lis 3, lbl_8052AD40@ha
    addi 0, 3, lbl_8052AD40@l
    mulli 3, 4, 0x8c0
    add 3, 0, 3
L_804299AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804299C0:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_8052AAD0@ha
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    addi 31, 4, lbl_8052AAD0@l
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lbz 0, 0xa0(31)
    cmplwi 0, 0x0
    .4byte 0x418201D4 # beq .L_80429BBC
    lbz 0, 0xa2(31)
    cmplwi 0, 0x2
    .4byte 0x408201C8 # bne .L_80429BBC
    lbz 0, 0xa4(31)
    cmplwi 0, 0x0
    .4byte 0x418201BC # beq .L_80429BBC
    mr 30, 5
    mr 29, 3
L_80429A0C:
    lwz 0, 0xfc(31)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80429A4C
    li 3, 0x0
    bl fn_8042E314
    cmplwi 3, 0x0
    stw 3, 0xfc(31)
    .4byte 0x40820018 # bne .L_80429A40
    mr 3, 29
    slwi 5, 30, 2
    li 4, 0x0
    bl memset
    .4byte 0x4800018C # b .L_80429BC8
L_80429A40:
    lwz 3, 0xf4(31)
    addi 0, 3, 0x1
    stw 0, 0xf4(31)
L_80429A4C:
    lwz 3, 0xfc(31)
    lwz 7, 0x8(3)
    cmplwi 7, 0x0
    .4byte 0x4182FFB4 # beq .L_80429A0C
    cmplw 7, 30
    .4byte 0x41800008 # blt .L_80429A68
    mr 7, 30
L_80429A68:
    lis 4, lbl_804B14C0@ha
    lwz 3, 0x4(3)
    addi 5, 4, lbl_804B14C0@l
    .4byte 0xC0420B20 # lfs f2, lbl_80543AC0@sda21(r0)
    .4byte 0xC8220B10 # lfd f1, lbl_80543AB0@sda21(r0)
    lis 4, 0x4330
    mtctr 7
    cmplwi 7, 0x0
    .4byte 0x408100F0 # ble .L_80429B78
L_80429A8C:
    lwz 6, 0xe8(31)
    cmpwi 6, 0x0
    .4byte 0x41820020 # beq .L_80429AB4
    lfs 3, 0xdc(31)
    subi 0, 6, 0x1
    lfs 0, 0xe4(31)
    stw 0, 0xe8(31)
    fadds 0, 3, 0
    stfs 0, 0xdc(31)
    .4byte 0x4800000C # b .L_80429ABC
L_80429AB4:
    lfs 0, 0xe0(31)
    stfs 0, 0xdc(31)
L_80429ABC:
    lfs 0, 0xdc(31)
    lha 0, 0x0(3)
    fctiwz 0, 0
    stw 4, 0x10(1)
    stfd 0, 0x8(1)
    lwz 6, 0xc(1)
    slwi 6, 6, 1
    lhzx 6, 5, 6
    mullw 0, 6, 0
    srawi 0, 0, 15
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    cmpwi 0, -0x8000
    .4byte 0x40800008 # bge .L_80429B10
    li 0, -0x8000
L_80429B10:
    cmpwi 0, 0x7fff
    .4byte 0x40810008 # ble .L_80429B1C
    li 0, 0x7fff
L_80429B1C:
    sth 0, 0x0(29)
    lha 0, 0x2(3)
    stw 4, 0x20(1)
    mullw 0, 6, 0
    srawi 0, 0, 15
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    cmpwi 0, -0x8000
    .4byte 0x40800008 # bge .L_80429B5C
    li 0, -0x8000
L_80429B5C:
    cmpwi 0, 0x7fff
    .4byte 0x40810008 # ble .L_80429B68
    li 0, 0x7fff
L_80429B68:
    sth 0, 0x2(29)
    addi 29, 29, 0x4
    addi 3, 3, 0x4
    .4byte 0x4200FF18 # bdnz .L_80429A8C
L_80429B78:
    lwz 4, 0xfc(31)
    subf 30, 7, 30
    lwz 0, 0x8(4)
    subf 0, 7, 0
    stw 0, 0x8(4)
    lwz 4, 0xfc(31)
    stw 3, 0x4(4)
    lwz 3, 0xfc(31)
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80429BB0
    bl fn_8042E33C
    li 0, 0x0
    stw 0, 0xfc(31)
L_80429BB0:
    cmplwi 30, 0x0
    .4byte 0x41820014 # beq .L_80429BC8
    .4byte 0x4BFFFE54 # b .L_80429A0C
L_80429BBC:
    slwi 5, 5, 2
    li 4, 0x0
    bl memset
L_80429BC8:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80429BE4:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stmw 24, 0x70(1)
    mr 31, 4
    mr 24, 5
    mr 25, 6
    mr 26, 7
    mr 27, 10
    mr 4, 3
    lha 28, 0x9a(1)
    mr 30, 8
    clrlwi 5, 8, 16
    mr 29, 9
    clrlwi 6, 9, 16
    addi 3, 1, 0x48
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8005D6E0
    .4byte 0xC0220B08 # lfs f1, lbl_80543AA8@sda21(r0)
    addi 3, 1, 0x48
    li 4, 0x0
    li 5, 0x0
    fmr 2, 1
    li 6, 0x0
    fmr 3, 1
    li 7, 0x0
    li 8, 0x0
    bl fn_8005D974
    addi 3, 1, 0x48
    li 4, 0x0
    bl fn_8005DC74
    extsh 3, 30
    extsh 0, 29
    srawi 30, 3, 1
    mr 4, 31
    srawi 31, 0, 1
    addi 3, 1, 0x28
    clrlwi 5, 30, 16
    li 7, 0x1
    clrlwi 6, 31, 16
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8005D6E0
    .4byte 0xC0220B08 # lfs f1, lbl_80543AA8@sda21(r0)
    addi 3, 1, 0x28
    li 4, 0x0
    li 5, 0x0
    fmr 2, 1
    li 6, 0x0
    fmr 3, 1
    li 7, 0x0
    li 8, 0x0
    bl fn_8005D974
    addi 3, 1, 0x28
    li 4, 0x1
    bl fn_8005DC74
    mr 4, 24
    addi 3, 1, 0x8
    clrlwi 5, 30, 16
    clrlwi 6, 31, 16
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8005D6E0
    .4byte 0xC0220B08 # lfs f1, lbl_80543AA8@sda21(r0)
    addi 3, 1, 0x8
    li 4, 0x0
    li 5, 0x0
    fmr 2, 1
    li 6, 0x0
    fmr 3, 1
    li 7, 0x0
    li 8, 0x0
    bl fn_8005D974
    addi 3, 1, 0x8
    li 4, 0x2
    bl fn_8005DC74
    li 3, 0x80
    li 4, 0x7
    li 5, 0x4
    bl fn_8005C24C
    extsh 29, 25
    extsh 30, 26
    mr 3, 29
    li 5, 0x0
    mr 4, 30
    bl fn_80429DF4
    li 3, 0x0
    li 4, 0x0
    bl fn_80429DE4
    mr 3, 29
    extsh 0, 27
    add 31, 3, 0
    mr 4, 30
    extsh 3, 31
    li 5, 0x0
    bl fn_80429DF4
    li 3, 0x1
    li 4, 0x0
    bl fn_80429DE4
    mr 0, 30
    extsh 3, 31
    add 30, 0, 28
    li 5, 0x0
    extsh 4, 30
    bl fn_80429DF4
    li 3, 0x1
    li 4, 0x1
    bl fn_80429DE4
    mr 3, 29
    extsh 4, 30
    li 5, 0x0
    bl fn_80429DF4
    li 3, 0x0
    li 4, 0x1
    bl fn_80429DE4
    bl fn_80429DE0
    lmw 24, 0x70(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80429DE0:
    blr

fn_80429DE4:
    lis 5, 0xcc01
    sth 3, -0x8000(5)
    sth 4, -0x8000(5)
    blr

fn_80429DF4:
    lis 6, 0xcc01
    sth 3, -0x8000(6)
    sth 4, -0x8000(6)
    sth 5, -0x8000(6)
    blr

fn_80429E08:
    stwu 1, -0xc0(1)
    mflr 0
    lis 4, 0x4330
    .4byte 0xC0220B08 # lfs f1, lbl_80543AA8@sda21(r0)
    stw 0, 0xc4(1)
    .4byte 0xC8820B10 # lfd f4, lbl_80543AB0@sda21(r0)
    fmr 3, 1
    stw 31, 0xbc(1)
    fmr 5, 1
    lhz 31, 0x4(3)
    stw 30, 0xb8(1)
    lhz 30, 0x6(3)
    xoris 0, 31, 0x8000
    stw 4, 0x90(1)
    addi 3, 1, 0x4c
    xoris 5, 30, 0x8000
    .4byte 0xC0C20B24 # lfs f6, lbl_80543AC4@sda21(r0)
    stw 5, 0x94(1)
    lfd 0, 0x90(1)
    stw 0, 0x9c(1)
    fsubs 2, 0, 4
    stw 4, 0x98(1)
    lfd 0, 0x98(1)
    fsubs 4, 0, 4
    bl PSMTXLightFrustum
    addi 3, 1, 0x4c
    li 4, 0x1
    bl fn_8005FCC4
    lis 3, 0x4330
    xoris 4, 31, 0x8000
    xoris 0, 30, 0x8000
    stw 4, 0xa4(1)
    .4byte 0xC0220B08 # lfs f1, lbl_80543AA8@sda21(r0)
    stw 3, 0xa0(1)
    .4byte 0xC8820B10 # lfd f4, lbl_80543AB0@sda21(r0)
    fmr 2, 1
    lfd 0, 0xa0(1)
    fmr 5, 1
    stw 0, 0xac(1)
    fsubs 3, 0, 4
    .4byte 0xC0C20B04 # lfs f6, lbl_80543AA4@sda21(r0)
    stw 3, 0xa8(1)
    lfd 0, 0xa8(1)
    fsubs 4, 0, 4
    bl fn_8006000C
    mr 5, 31
    mr 6, 30
    li 3, 0x0
    li 4, 0x0
    bl fn_800600C0
    addi 3, 1, 0x1c
    bl PSMTXIdentity
    addi 3, 1, 0x1c
    li 4, 0x0
    bl fn_8005FDF4
    li 3, 0x0
    bl fn_8005FE94
    li 3, 0x1
    li 4, 0x7
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x0
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_8005F48C
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    li 3, 0x0
    bl fn_8005D3C8
    li 3, 0x2
    bl fn_8005B93C
    li 3, 0x0
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    bl fn_8042A2A4
    li 3, 0x1
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    bl fn_8042A2A4
    bl fn_8005DEC4
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x7
    li 4, 0x9
    li 5, 0x1
    li 6, 0x3
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x7
    li 4, 0xd
    li 5, 0x1
    li 6, 0x2
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x4
    bl fn_8005F11C
    li 3, 0x0
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0xf
    li 5, 0x8
    li 6, 0xe
    li 7, 0x2
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x0
    li 4, 0x7
    li 5, 0x4
    li 6, 0x6
    li 7, 0x1
    bl fn_8005EAB0
    li 3, 0x0
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x0
    li 4, 0xc
    bl fn_8005ED30
    li 3, 0x0
    li 4, 0x1c
    bl fn_8005ED8C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    li 4, 0x1
    li 5, 0x2
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0x8
    li 6, 0xe
    li 7, 0x0
    bl fn_8005EA6C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x1
    li 4, 0x7
    li 5, 0x4
    li 6, 0x6
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0xd
    bl fn_8005ED30
    li 3, 0x1
    li 4, 0x1d
    bl fn_8005ED8C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x2
    li 4, 0xf
    li 5, 0x8
    li 6, 0xc
    li 7, 0x0
    bl fn_8005EA6C
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x2
    li 4, 0x4
    li 5, 0x7
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x3
    li 4, 0xff
    li 5, 0xff
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x3
    li 4, 0x1
    li 5, 0x0
    li 6, 0xe
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x3
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x3
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x7
    bl fn_8005EAB0
    li 3, 0x3
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x3
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x3
    li 4, 0xe
    bl fn_8005ED30
    .4byte 0x80A20AF0 # lwz r5, lbl_80543A90@sda21(r0)
    addi 4, 1, 0x14
    .4byte 0x80020AF4 # lwz r0, lbl_80543A94@sda21(r0)
    li 3, 0x1
    stw 5, 0x14(1)
    stw 0, 0x18(1)
    bl fn_8005EC40
    .4byte 0x80020AF8 # lwz r0, lbl_80543A98@sda21(r0)
    addi 4, 1, 0x10
    li 3, 0x0
    stw 0, 0x10(1)
    bl fn_8005ECBC
    .4byte 0x80020AFC # lwz r0, lbl_80543A9C@sda21(r0)
    addi 4, 1, 0xc
    li 3, 0x1
    stw 0, 0xc(1)
    bl fn_8005ECBC
    .4byte 0x80020B00 # lwz r0, lbl_80543AA0@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x2
    stw 0, 0x8(1)
    bl fn_8005ECBC
    li 3, 0x0
    li 4, 0x0
    li 5, 0x1
    li 6, 0x2
    li 7, 0x3
    bl fn_8005EE30
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8042A2A4:
    stwu 1, -0x10(1)
    mflr 0
    li 7, 0x0
    li 8, 0x7d
    stw 0, 0x14(1)
    bl fn_8005B6BC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A2CC:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x1
    li 4, 0x7
    stw 0, 0x14(1)
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x0
    li 4, 0x1
    li 5, 0x0
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x1
    bl fn_8005B93C
    li 3, 0x0
    bl fn_8005D3C8
    li 3, 0x1
    bl fn_8005F11C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0x3
    bl fn_8005E9E0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x3
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x0
    li 4, 0x0
    li 5, 0x1
    li 6, 0x2
    li 7, 0x3
    bl fn_8005EE30
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x3
    bl fn_8005EE30
    li 3, 0x2
    li 4, 0x1
    li 5, 0x1
    li 6, 0x1
    li 7, 0x3
    bl fn_8005EE30
    li 3, 0x3
    li 4, 0x2
    li 5, 0x2
    li 6, 0x2
    li 7, 0x3
    bl fn_8005EE30
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A3E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8042A414
    addi 3, 31, 0x8
    bl OSCancelThread
    li 0, 0x0
    stw 0, 0x4(31)
L_8042A414:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A428:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8042A448
    addi 3, 3, 0x8
    bl OSResumeThread
L_8042A448:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A458:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 5, 0x0
    mr 8, 4
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x41820038 # beq .L_8042A4AC
    lis 3, fn_8042E514@ha
    addis 6, 31, 0x6
    lis 7, 0x6
    li 9, 0x1
    addi 4, 3, fn_8042E514@l
    addi 3, 31, 0x8
    addi 7, 7, 0x4000
    addi 6, 6, 0x4320
    bl OSCreateThread
    cmpwi 3, 0x0
    .4byte 0x40820044 # bne .L_8042A4E4
    li 3, 0x0
    .4byte 0x48000078 # b .L_8042A520
L_8042A4AC:
    lis 3, fn_8042E4EC@ha
    addis 6, 31, 0x6
    lis 5, 0x6
    li 9, 0x1
    addi 4, 3, fn_8042E4EC@l
    addi 3, 31, 0x8
    addi 7, 5, 0x4000
    li 5, 0x0
    addi 6, 6, 0x4320
    bl OSCreateThread
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8042A4E4
    li 3, 0x0
    .4byte 0x48000040 # b .L_8042A520
L_8042A4E4:
    addis 3, 31, 0x6
    li 5, 0x3
    mr 4, 3
    addi 3, 3, 0x4320
    addi 4, 4, 0x4360
    bl OSInitMessageQueue
    addis 3, 31, 0x6
    li 5, 0x3
    mr 4, 3
    addi 3, 3, 0x4340
    addi 4, 4, 0x436c
    bl OSInitMessageQueue
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x4(31)
L_8042A520:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A534:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, lbl_8052AAD0@ha
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    addi 29, 5, lbl_8052AAD0@l
    stw 28, 0x20(1)
    stw 4, 0x8(1)
    lwz 28, 0xbc(29)
L_8042A568:
    stw 31, 0xc(1)
    addi 3, 1, 0x8
    bl fn_8042E53C
    lwz 0, 0xc0(29)
    lwz 5, 0x50(29)
    add 4, 31, 0
    divwu 3, 4, 5
    subi 0, 5, 0x1
    mullw 3, 3, 5
    subf 3, 3, 4
    cmplw 3, 0
    .4byte 0x40820030 # bne .L_8042A5C4
    lbz 0, 0xa3(29)
    clrlwi. 0, 0, 31
    .4byte 0x41820018 # beq .L_8042A5B8
    lwz 3, 0x8(1)
    lwz 0, 0xb4(29)
    lwz 28, 0x0(3)
    stw 0, 0x8(1)
    .4byte 0x48000024 # b .L_8042A5D8
L_8042A5B8:
    addi 3, 30, 0x8
    bl OSSuspendThread
    .4byte 0x48000018 # b .L_8042A5D8
L_8042A5C4:
    lwz 3, 0x8(1)
    lwz 4, 0x0(3)
    add 0, 3, 28
    stw 0, 0x8(1)
    mr 28, 4
L_8042A5D8:
    addi 31, 31, 0x1
    .4byte 0x4BFFFF8C # b .L_8042A568

fn_8042A5E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
L_8042A5F0:
    bl fn_8042E58C
    mr 31, 3
    bl fn_8042E53C
    mr 3, 31
    bl fn_8042E564
    .4byte 0x4BFFFFEC # b .L_8042A5F0

fn_8042A608:
    stwu 1, -0x20(1)
    mflr 0
    lis 3, lbl_8052AAD0@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    addi 31, 3, lbl_8052AAD0@l
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 0, 0x6c(31)
    lwz 4, 0x0(4)
    slwi 3, 0, 2
    addi 29, 3, 0x8
    addi 30, 4, 0x8
    add 29, 4, 29
    bl fn_8042E5D8
    lwz 0, 0x6c(31)
    lis 4, lbl_8052AAD0@ha
    addi 4, 4, lbl_8052AAD0@l
    mr 31, 3
    mtctr 0
    cmplwi 0, 0x0
    .4byte 0x40810064 # ble .L_8042A6C0
L_8042A660:
    lbz 0, 0x70(4)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8042A670
    .4byte 0x48000040 # b .L_8042A6AC
L_8042A670:
    lis 3, lbl_8052AAD0@ha
    lwz 6, 0x0(30)
    addi 4, 3, lbl_8052AAD0@l
    lwz 3, 0x0(31)
    lwz 0, 0xec(4)
    li 5, 0x0
    mullw 0, 6, 0
    add 4, 29, 0
    bl fn_8042DD54
    stw 3, 0x8(31)
    mr 3, 31
    lwz 0, 0x0(31)
    stw 0, 0x4(31)
    bl fn_8042E5B0
    .4byte 0x48000018 # b .L_8042A6C0
L_8042A6AC:
    lwz 0, 0x0(30)
    addi 30, 30, 0x4
    addi 4, 4, 0x1
    add 29, 29, 0
    .4byte 0x4200FFA4 # bdnz .L_8042A660
L_8042A6C0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042A6DC:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    li 5, 0x1
    stw 0, 0x14(1)
    addi 3, 3, 0x4340
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A708:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    mr 5, 4
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    addi 3, 3, 0x4340
    bl OSReceiveMessage
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8042A738
    lwz 3, 0x8(1)
    .4byte 0x48000008 # b .L_8042A73C
L_8042A738:
    li 3, 0x0
L_8042A73C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A74C:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    li 5, 0x0
    stw 0, 0x14(1)
    addi 3, 3, 0x4320
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A778:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    li 5, 0x1
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    addi 3, 3, 0x4320
    bl OSReceiveMessage
    lwz 0, 0x14(1)
    lwz 3, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A7AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820024 # beq .L_8042A7E4
    lis 5, lbl_804B15DC@ha
    extsh. 0, 4
    addi 4, 5, lbl_804B15DC@l
    li 0, 0x0
    stw 4, 0x0(31)
    .4byte 0x900D92C4 # stw r0, lbl_8053AE84@sda21(r0)
    .4byte 0x40810008 # ble .L_8042A7E4
    bl dtor_80084580
L_8042A7E4:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A7FC:
    lis 4, lbl_804B15DC@ha
    li 0, 0x0
    addi 4, 4, lbl_804B15DC@l
    stw 4, 0x0(3)
    .4byte 0x906D92C4 # stw r3, lbl_8053AE84@sda21(r0)
    stw 0, 0x4(3)
    blr

fn_8042A818:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8042A848
    addi 3, 31, 0x8
    bl OSCancelThread
    li 0, 0x0
    stw 0, 0x4(31)
L_8042A848:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A85C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8042A87C
    addi 3, 3, 0x8
    bl OSResumeThread
L_8042A87C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A88C:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 5, 0x0
    mr 8, 4
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x41820038 # beq .L_8042A8E0
    lis 3, fn_8042E624@ha
    addis 6, 31, 0x6
    lis 7, 0x6
    li 9, 0x1
    addi 4, 3, fn_8042E624@l
    addi 3, 31, 0x8
    addi 7, 7, 0x4000
    addi 6, 6, 0x4320
    bl OSCreateThread
    cmpwi 3, 0x0
    .4byte 0x40820044 # bne .L_8042A918
    li 3, 0x0
    .4byte 0x48000080 # b .L_8042A95C
L_8042A8E0:
    lis 3, fn_8042E5FC@ha
    addis 6, 31, 0x6
    lis 5, 0x6
    li 9, 0x1
    addi 4, 3, fn_8042E5FC@l
    addi 3, 31, 0x8
    addi 7, 5, 0x4000
    li 5, 0x0
    addi 6, 6, 0x4320
    bl OSCreateThread
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8042A918
    li 3, 0x0
    .4byte 0x48000048 # b .L_8042A95C
L_8042A918:
    addis 3, 31, 0x6
    li 5, 0x3
    mr 4, 3
    addi 3, 3, 0x4320
    addi 4, 4, 0x4360
    bl OSInitMessageQueue
    addis 3, 31, 0x6
    li 5, 0x3
    mr 4, 3
    addi 3, 3, 0x4340
    addi 4, 4, 0x436c
    bl OSInitMessageQueue
    li 0, 0x1
    addis 4, 31, 0x6
    stw 0, 0x4(31)
    li 3, 0x1
    stw 0, 0x4378(4)
L_8042A95C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042A970:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, lbl_8052AAD0@ha
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    addi 31, 5, lbl_8052AAD0@l
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    li 29, 0x0
    stw 28, 0x20(1)
    mr 28, 3
    stw 4, 0x8(1)
    lwz 30, 0xbc(31)
L_8042A9A4:
    lbz 0, 0xa4(31)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_8042AA30
    .4byte 0x48000074 # b .L_8042AA24
L_8042A9B4:
    bl OSDisableInterrupts
    lwz 4, 0xd8(31)
    addi 0, 4, 0x1
    stw 0, 0xd8(31)
    bl OSRestoreInterrupts
    lwz 0, 0xc0(31)
    lwz 5, 0x50(31)
    add 4, 29, 0
    divwu 3, 4, 5
    subi 0, 5, 0x1
    mullw 3, 3, 5
    subf 3, 3, 4
    cmplw 3, 0
    .4byte 0x40820024 # bne .L_8042AA0C
    lbz 0, 0xa3(31)
    clrlwi. 0, 0, 31
    .4byte 0x4182003C # beq .L_8042AA30
    lwz 3, 0x8(1)
    lwz 0, 0xb4(31)
    lwz 30, 0x0(3)
    stw 0, 0x8(1)
    .4byte 0x48000018 # b .L_8042AA20
L_8042AA0C:
    lwz 3, 0x8(1)
    lwz 4, 0x0(3)
    add 0, 3, 30
    stw 0, 0x8(1)
    mr 30, 4
L_8042AA20:
    addi 29, 29, 0x1
L_8042AA24:
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x4180FF88 # blt .L_8042A9B4
L_8042AA30:
    stw 29, 0xc(1)
    addi 3, 1, 0x8
    bl fn_8042E64C
    lwz 0, 0xc0(31)
    lwz 5, 0x50(31)
    add 4, 29, 0
    divwu 3, 4, 5
    subi 0, 5, 0x1
    mullw 3, 3, 5
    subf 3, 3, 4
    cmplw 3, 0
    .4byte 0x40820030 # bne .L_8042AA8C
    lbz 0, 0xa3(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820018 # beq .L_8042AA80
    lwz 3, 0x8(1)
    lwz 0, 0xb4(31)
    lwz 30, 0x0(3)
    stw 0, 0x8(1)
    .4byte 0x48000024 # b .L_8042AAA0
L_8042AA80:
    addi 3, 28, 0x8
    bl OSSuspendThread
    .4byte 0x48000018 # b .L_8042AAA0
L_8042AA8C:
    lwz 3, 0x8(1)
    lwz 4, 0x0(3)
    add 0, 3, 30
    stw 0, 0x8(1)
    mr 30, 4
L_8042AAA0:
    addi 29, 29, 0x1
    .4byte 0x4BFFFF00 # b .L_8042A9A4

fn_8042AAA8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052AAD0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8052AAD0@l
    stw 30, 0x8(1)
L_8042AAC4:
    lbz 0, 0xa4(31)
    cmplwi 0, 0x0
    .4byte 0x41820070 # beq .L_8042AB3C
    .4byte 0x48000060 # b .L_8042AB30
L_8042AAD4:
    bl fn_8042E674
    lwz 4, 0xc0(31)
    mr 30, 3
    lwz 5, 0x4(3)
    lwz 6, 0x50(31)
    add 5, 5, 4
    divwu 4, 5, 6
    subi 0, 6, 0x1
    mullw 4, 4, 6
    subf 4, 4, 5
    cmplw 4, 0
    .4byte 0x40820014 # bne .L_8042AB14
    lbz 0, 0xa3(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820008 # bne .L_8042AB14
    bl fn_8042E64C
L_8042AB14:
    mr 3, 30
    bl fn_8042E4C4
    bl OSDisableInterrupts
    lwz 4, 0xd8(31)
    addi 0, 4, 0x1
    stw 0, 0xd8(31)
    bl OSRestoreInterrupts
L_8042AB30:
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x4180FF9C # blt .L_8042AAD4
L_8042AB3C:
    lbz 0, 0xa4(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8042AB54
    bl fn_8042E674
    mr 30, 3
    .4byte 0x4800000C # b .L_8042AB5C
L_8042AB54:
    bl fn_8042E58C
    mr 30, 3
L_8042AB5C:
    mr 3, 30
    bl fn_8042E64C
    mr 3, 30
    bl fn_8042E4C4
    .4byte 0x4BFFFF58 # b .L_8042AAC4

fn_8042AB70:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, lbl_8052AAD0@ha
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    addi 30, 5, lbl_8052AAD0@l
    mr 24, 4
    mr 23, 3
    lwz 0, 0x6c(30)
    lwz 4, 0x0(4)
    slwi 3, 0, 2
    addi 25, 3, 0x8
    addi 26, 4, 0x8
    add 25, 4, 25
    bl fn_8042E6C0
    lis 4, lbl_8052AAD0@ha
    li 27, 0x0
    addi 31, 4, lbl_8052AAD0@l
    mr 28, 3
    mr 29, 31
    .4byte 0x4800009C # b .L_8042AC5C
L_8042ABC4:
    lbz 0, 0x70(29)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8042ABD4
    .4byte 0x48000078 # b .L_8042AC48
L_8042ABD4:
    lwz 4, 0x0(28)
    mr 3, 25
    lwz 5, 0x4(28)
    lwz 6, 0x8(28)
    lwz 7, 0x9c(31)
    bl fn_8042DA54
    cmpwi 3, 0x0
    stw 3, 0xac(31)
    .4byte 0x41820030 # beq .L_8042AC24
    addis 3, 23, 0x6
    lwz 0, 0x4378(3)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8042AC1C
    li 3, 0x0
    bl fn_80428C38
    addis 3, 23, 0x6
    li 0, 0x0
    stw 0, 0x4378(3)
L_8042AC1C:
    addi 3, 23, 0x8
    bl OSSuspendThread
L_8042AC24:
    lwz 0, 0x4(24)
    mr 3, 28
    stw 0, 0xc(28)
    bl fn_8042E698
    bl OSDisableInterrupts
    lwz 4, 0xd8(31)
    addi 0, 4, 0x1
    stw 0, 0xd8(31)
    bl OSRestoreInterrupts
L_8042AC48:
    lwz 0, 0x0(26)
    addi 26, 26, 0x4
    addi 29, 29, 0x1
    addi 27, 27, 0x1
    add 25, 25, 0
L_8042AC5C:
    lwz 0, 0x6c(30)
    cmplw 27, 0
    .4byte 0x4180FF60 # blt .L_8042ABC4
    addis 3, 23, 0x6
    lwz 0, 0x4378(3)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8042AC8C
    li 3, 0x1
    bl fn_80428C38
    addis 3, 23, 0x6
    li 0, 0x0
    stw 0, 0x4378(3)
L_8042AC8C:
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8042ACA0:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    li 5, 0x1
    stw 0, 0x14(1)
    addi 3, 3, 0x4340
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042ACCC:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    mr 5, 4
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    addi 3, 3, 0x4340
    bl OSReceiveMessage
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8042ACFC
    lwz 3, 0x8(1)
    .4byte 0x48000008 # b .L_8042AD00
L_8042ACFC:
    li 3, 0x0
L_8042AD00:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042AD10:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    li 5, 0x0
    stw 0, 0x14(1)
    addi 3, 3, 0x4320
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042AD3C:
    stwu 1, -0x10(1)
    mflr 0
    addis 3, 3, 0x6
    li 5, 0x1
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    addi 3, 3, 0x4320
    bl OSReceiveMessage
    lwz 0, 0x14(1)
    lwz 3, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042AD70:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820024 # beq .L_8042ADA8
    lis 5, lbl_804B15E8@ha
    extsh. 0, 4
    addi 4, 5, lbl_804B15E8@l
    li 0, 0x0
    stw 4, 0x0(31)
    .4byte 0x900D92C0 # stw r0, lbl_8053AE80@sda21(r0)
    .4byte 0x40810008 # ble .L_8042ADA8
    bl dtor_80084580
L_8042ADA8:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042ADC0:
    lis 4, lbl_804B15E8@ha
    li 0, 0x0
    addi 4, 4, lbl_804B15E8@l
    stw 4, 0x0(3)
    .4byte 0x906D92C0 # stw r3, lbl_8053AE80@sda21(r0)
    stw 0, 0x4(3)
    blr

fn_8042ADDC:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, fn_8042E6E4@ha
    mr 8, 4
    stw 0, 0x14(1)
    li 5, 0x0
    addi 4, 6, fn_8042E6E4@l
    li 7, 0x1000
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0xe0
    li 9, 0x1
    addi 6, 31, 0x13f8
    bl OSCreateThread
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8042AE24
    li 3, 0x0
    .4byte 0x48000040 # b .L_8042AE60
L_8042AE24:
    addi 3, 31, 0x8
    addi 4, 31, 0x68
    li 5, 0xa
    bl OSInitMessageQueue
    addi 3, 31, 0x28
    addi 4, 31, 0x90
    li 5, 0xa
    bl OSInitMessageQueue
    addi 3, 31, 0x48
    addi 4, 31, 0xb8
    li 5, 0xa
    bl OSInitMessageQueue
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x4(31)
L_8042AE60:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042AE74:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8052AAD0@ha
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    addi 29, 4, lbl_8052AAD0@l
    mr 30, 3
    li 31, 0x0
    lwz 27, 0xb8(29)
    lwz 26, 0xbc(29)
L_8042AE9C:
    bl fn_8042E734
    mr 0, 3
    mr 3, 29
    mr 28, 0
    mr 5, 26
    lwz 4, 0x0(28)
    mr 6, 27
    li 7, 0x2
    bl fn_80048874
    cmpw 3, 26
    .4byte 0x4182002C # beq .L_8042AEF0
    cmpwi 3, -0x1
    .4byte 0x4082000C # bne .L_8042AED8
    li 0, -0x1
    stw 0, 0xa8(29)
L_8042AED8:
    cmpwi 31, 0x0
    .4byte 0x4082000C # bne .L_8042AEE8
    li 3, 0x0
    bl fn_80428C38
L_8042AEE8:
    addi 3, 30, 0xe0
    bl OSSuspendThread
L_8042AEF0:
    stw 31, 0x4(28)
    mr 3, 28
    bl fn_8042E70C
    mr 3, 28
    add 27, 27, 26
    bl fn_8042AF54
    lwz 0, 0xc0(29)
    mr 26, 3
    lwz 5, 0x50(29)
    add 4, 31, 0
    divwu 3, 4, 5
    subi 0, 5, 0x1
    mullw 3, 3, 5
    subf 3, 3, 4
    cmplw 3, 0
    .4byte 0x40820020 # bne .L_8042AF4C
    lbz 0, 0xa3(29)
    clrlwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_8042AF44
    lwz 27, 0x64(29)
    .4byte 0x4800000C # b .L_8042AF4C
L_8042AF44:
    addi 3, 30, 0xe0
    bl OSSuspendThread
L_8042AF4C:
    addi 31, 31, 0x1
    .4byte 0x4BFFFF4C # b .L_8042AE9C

fn_8042AF54:
    lwz 3, 0x0(3)
    lwz 3, 0x0(3)
    blr

fn_8042AF60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8042AF90
    addi 3, 31, 0xe0
    bl OSCancelThread
    li 0, 0x0
    stw 0, 0x4(31)
L_8042AF90:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042AFA4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8042AFC4
    addi 3, 3, 0xe0
    bl OSResumeThread
L_8042AFC4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042AFD4:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x1
    addi 3, 3, 0x48
    stw 0, 0x14(1)
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042AFFC:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0x48
    li 5, 0x1
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    bl OSReceiveMessage
    lwz 0, 0x14(1)
    lwz 3, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042B02C:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x1
    addi 3, 3, 0x8
    stw 0, 0x14(1)
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042B054:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0x8
    li 5, 0x1
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    bl OSReceiveMessage
    lwz 0, 0x14(1)
    lwz 3, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042B084:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x1
    addi 3, 3, 0x28
    stw 0, 0x14(1)
    bl OSSendMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042B0AC:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0x28
    li 5, 0x1
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    bl OSReceiveMessage
    lwz 0, 0x14(1)
    lwz 3, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042B0DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820024 # beq .L_8042B114
    lis 5, lbl_804B15F4@ha
    extsh. 0, 4
    addi 4, 5, lbl_804B15F4@l
    li 0, 0x0
    stw 4, 0x0(31)
    .4byte 0x900D92BC # stw r0, lbl_8053AE7C@sda21(r0)
    .4byte 0x40810008 # ble .L_8042B114
    bl dtor_80084580
L_8042B114:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042B12C:
    lis 4, lbl_804B15F4@ha
    li 0, 0x0
    addi 4, 4, lbl_804B15F4@l
    stw 4, 0x0(3)
    .4byte 0x906D92BC # stw r3, lbl_8053AE7C@sda21(r0)
    stw 0, 0x4(3)
    blr

fn_8042B148:
    stwu 1, -0x10(1)
    mflr 0
    lis 7, 0xe000
    lis 4, lbl_8052AAA0@ha
    stw 0, 0x14(1)
    addi 6, 4, lbl_8052AAA0@l
    lis 3, lbl_8052AAAC@ha
    addi 5, 7, 0x2000
    stwu 7, lbl_8052AAAC@l(3)
    addi 4, 7, 0x2800
    addi 0, 7, 0x3200
    stw 7, 0x0(6)
    stw 5, 0x4(6)
    stw 4, 0x8(6)
    stw 4, 0x4(3)
    stw 0, 0x8(3)
    bl fn_8042B1A8
    li 0, 0x1
    li 3, 0x1
    .4byte 0x980D92B8 # stb r0, lbl_8053AE78@sda21(r0)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042B1A8:
    li 3, 0x4
    oris 3, 3, 0x4
    .4byte 0x7C72E3A6 # mtspr GQR2, r3
    li 3, 0x5
    oris 3, 3, 0x5
    .4byte 0x7C73E3A6 # mtspr GQR3, r3
    li 3, 0x6
    oris 3, 3, 0x6
    .4byte 0x7C74E3A6 # mtspr GQR4, r3
    li 3, 0x7
    oris 3, 3, 0x7
    .4byte 0x7C75E3A6 # mtspr GQR5, r3
    blr

fn_8042B1DC:
    stwu 1, -0x20(1)
    mflr 0
    li 3, 0x3
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lhz 27, 0x692(4)
    bl fn_80041298
    lis 4, lbl_8052AAB8@ha
    lis 3, lbl_8052AAAC@ha
    addi 30, 4, lbl_8052AAB8@l
    srwi 29, 27, 1
    addi 31, 3, lbl_8052AAAC@l
    li 28, 0x0
    .4byte 0x48000178 # b .L_8042B38C
L_8042B218:
    lwz 4, 0x0(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x4(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x8(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0xc(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x10(30)
    bl fn_8042C1CC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x14(30)
    bl fn_8042BD84
    lwz 0, 0x0(31)
    slwi 26, 26, 4
    .4byte 0x936D92A0 # stw r27, lbl_8053AE60@sda21(r0)
    mr 4, 26
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    .4byte 0x900D9284 # stw r0, lbl_8053AE44@sda21(r0)
    lwz 3, 0x0(30)
    lbz 0, 0x680(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    lwz 3, 0x4(30)
    addi 4, 26, 0x8
    bl fn_8042B8DC
    lwz 3, 0x8(30)
    mr 4, 26
    bl fn_8042B430
    lwz 3, 0xc(30)
    addi 4, 26, 0x8
    bl fn_8042B430
    lwz 0, 0x4(31)
    srwi 26, 26, 1
    .4byte 0x93AD92A0 # stw r29, lbl_8053AE60@sda21(r0)
    mr 4, 26
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    .4byte 0x900D9284 # stw r0, lbl_8053AE44@sda21(r0)
    lwz 3, 0x10(30)
    lbz 0, 0x686(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    lwz 0, 0x8(31)
    mr 4, 26
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    .4byte 0x900D9284 # stw r0, lbl_8053AE44@sda21(r0)
    lwz 3, 0x14(30)
    lbz 0, 0x68c(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lbz 0, 0x6a9(4)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_8042B388
    lhz 3, 0x6ac(4)
    subi 0, 3, 0x1
    sth 0, 0x6ac(4)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lhz 0, 0x6ac(3)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_8042B388
    lhz 0, 0x6aa(3)
    sth 0, 0x6ac(3)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6a4(4)
    addi 0, 3, 0x6
    clrrwi 3, 0, 3
    addi 0, 3, 0x1
    stw 0, 0x6a4(4)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 0, 0x6a4(3)
    cmplwi 0, 0x20
    .4byte 0x4081000C # ble .L_8042B36C
    li 0, 0x21
    stw 0, 0x6a4(3)
L_8042B36C:
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 0, 0x0
    sth 0, 0x684(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    sth 0, 0x68a(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    sth 0, 0x690(3)
L_8042B388:
    addi 28, 28, 0x1
L_8042B38C:
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    clrlwi 26, 28, 24
    lhz 0, 0x696(3)
    cmpw 26, 0
    .4byte 0x4180FE7C # blt .L_8042B218
    lis 4, lbl_8052AAAC@ha
    extlwi 28, 27, 24, 4
    addi 4, 4, lbl_8052AAAC@l
    lwz 3, 0x6b0(3)
    lwz 4, 0x0(4)
    mr 5, 28
    srwi 26, 27, 4
    bl fn_800411EC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    slwi 26, 26, 6
    lwz 4, 0x4(31)
    mr 5, 26
    lwz 3, 0x6b4(3)
    bl fn_800411EC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    mr 5, 26
    lwz 4, 0x8(31)
    lwz 3, 0x6b8(3)
    bl fn_800411EC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 0, 0x6b0(3)
    add 0, 0, 28
    stw 0, 0x6b0(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 0, 0x6b4(3)
    add 0, 0, 26
    stw 0, 0x6b4(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 0, 0x6b8(3)
    add 0, 0, 26
    stw 0, 0x6b8(3)
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042B430:
    stwu 1, -0x80(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stfd 27, 0x30(1)
    psq_st 27, 0x38(1), 0, 0
    stfd 26, 0x20(1)
    psq_st 26, 0x28(1), 0, 0
    stfd 25, 0x10(1)
    psq_st 25, 0x18(1), 0, 0
    lis 5, lbl_8052A9A0@ha
    .4byte 0xC3A20B30 # lfs f29, lbl_80543AD0@sda21(r0)
    addi 5, 5, lbl_8052A9A0@l
    .4byte 0xC3820B34 # lfs f28, lbl_80543AD4@sda21(r0)
    subi 10, 5, 0x8
    .4byte 0xC3620B38 # lfs f27, lbl_80543AD8@sda21(r0)
    .4byte 0xC3420B3C # lfs f26, lbl_80543ADC@sda21(r0)
    li 7, 0x8
    .4byte 0xC3220B40 # lfs f25, lbl_80543AE0@sda21(r0)
    .4byte 0x80AD92A4 # lwz r5, lbl_8053AE64@sda21(r0)
    mtctr 7
L_8042B498:
    psq_l 10, 0x0(3), 0, 5
    psq_l 11, 0x0(5), 0, 0
    lwz 0, 0xc(3)
    lwz 8, 0x8(3)
    ps_mul 10, 10, 11
    lwz 6, 0x4(3)
    lhz 7, 0x2(3)
    or 0, 0, 8
L_8042B4B8:
    cmpwi 0, 0x0
    .4byte 0x40820148 # bne .L_8042B604
    ps_merge00 0, 10, 10
    cmpwi 6, 0x0
    psq_st 0, 0x8(10), 0, 0
    .4byte 0x4082009C # bne .L_8042B568
    psq_st 0, 0x10(10), 0, 0
    cmpwi 7, 0x0
    psq_st 0, 0x18(10), 0, 0
    .4byte 0x40820018 # bne .L_8042B4F4
    psq_stu 0, 0x20(10), 0, 0
    addi 3, 3, 0x10
    addi 5, 5, 0x20
    .4byte 0x4200FFAC # bdnz .L_8042B498
    .4byte 0x480001DC # b .L_8042B6CC
L_8042B4F4:
    ps_msub 2, 10, 28, 10
    psq_l 11, 0x20(5), 0, 0
    ps_sub 1, 28, 27
    addi 5, 5, 0x20
    ps_merge00 9, 10, 10
    lwz 6, 0x14(3)
    ps_msub 3, 10, 29, 2
    lhz 7, 0x12(3)
    ps_merge11 5, 10, 2
    ps_nmsub 4, 10, 1, 3
    ps_add 7, 9, 5
    psq_l 10, 0x10(3), 0, 5
    lwz 0, 0x1c(3)
    ps_sub 5, 9, 5
    ps_merge11 6, 3, 4
    lwz 8, 0x18(3)
    ps_add 8, 9, 6
    ps_sub 6, 9, 6
    psq_stu 7, 0x8(10), 0, 0
    ps_merge10 6, 6, 6
    psq_stu 8, 0x8(10), 0, 0
    ps_merge10 5, 5, 5
    or 0, 0, 8
    psq_stu 6, 0x8(10), 0, 0
    ps_mul 10, 10, 11
    psq_stu 5, 0x8(10), 0, 0
    addi 3, 3, 0x10
    .4byte 0x4200FF58 # bdnz .L_8042B4B8
    .4byte 0x48000168 # b .L_8042B6CC
L_8042B568:
    psq_l 1, 0x4(3), 0, 5
    psq_l 9, 0x8(5), 0, 0
    lwz 0, 0x1c(3)
    ps_mul 1, 1, 9
    lwz 8, 0x18(3)
    lwz 6, 0x14(3)
    lhz 7, 0x12(3)
    ps_sub 3, 10, 1
    ps_add 2, 10, 1
    ps_mul 8, 3, 28
    ps_madd 4, 1, 29, 3
    ps_nmsub 5, 1, 29, 2
    ps_nmsub 6, 1, 26, 8
    ps_nmsub 7, 10, 27, 8
    ps_merge00 4, 2, 4
    ps_sub 6, 6, 2
    ps_merge00 5, 5, 3
    ps_msub 8, 3, 29, 6
    ps_merge11 2, 2, 6
    psq_l 10, 0x10(3), 0, 5
    psq_l 11, 0x20(5), 0, 0
    ps_sub 7, 7, 8
    ps_add 9, 4, 2
    ps_sub 4, 4, 2
    ps_merge11 3, 8, 7
    psq_stu 9, 0x8(10), 0, 0
    or 0, 0, 8
    ps_add 0, 5, 3
    ps_sub 1, 5, 3
    psq_stu 0, 0x8(10), 0, 0
    ps_merge10 4, 4, 4
    ps_merge10 1, 1, 1
    psq_stu 1, 0x8(10), 0, 0
    ps_mul 10, 10, 11
    psq_stu 4, 0x8(10), 0, 0
    addi 3, 3, 0x10
    addi 5, 5, 0x20
    .4byte 0x4200FEBC # bdnz .L_8042B4B8
    .4byte 0x480000CC # b .L_8042B6CC
L_8042B604:
    psq_l 9, 0x4(3), 0, 5
    psq_l 5, 0x8(5), 0, 0
    ps_mul 9, 9, 5
    psq_l 2, 0x8(3), 0, 5
    psq_l 6, 0x10(5), 0, 0
    ps_merge01 0, 10, 9
    psq_l 3, 0xc(3), 0, 5
    ps_merge01 1, 9, 10
    psq_l 7, 0x18(5), 0, 0
    lwz 0, 0x1c(3)
    ps_madd 4, 2, 6, 0
    ps_nmsub 5, 2, 6, 0
    lwz 8, 0x18(3)
    ps_madd 6, 3, 7, 1
    lwz 6, 0x14(3)
    ps_nmsub 7, 3, 7, 1
    lhz 7, 0x12(3)
    ps_add 0, 4, 6
    ps_sub 8, 7, 5
    ps_msub 2, 7, 29, 6
    ps_sub 3, 4, 6
    ps_mul 8, 8, 28
    ps_add 1, 5, 2
    ps_sub 2, 5, 2
    ps_nmsub 6, 5, 26, 8
    ps_msub 4, 7, 27, 8
    ps_merge00 1, 0, 1
    ps_sub 6, 6, 0
    ps_merge00 2, 2, 3
    ps_madd 5, 3, 29, 6
    ps_merge11 7, 0, 6
    psq_l 10, 0x10(3), 0, 5
    psq_l 11, 0x20(5), 0, 0
    ps_sub 4, 4, 5
    ps_add 3, 1, 7
    ps_sub 0, 1, 7
    ps_merge11 4, 5, 4
    ps_mul 10, 10, 11
    ps_add 5, 2, 4
    ps_sub 6, 2, 4
    ps_merge10 5, 5, 5
    psq_stu 3, 0x8(10), 0, 0
    ps_merge10 0, 0, 0
    psq_stu 6, 0x8(10), 0, 0
    psq_stu 5, 0x8(10), 0, 0
    or 0, 0, 8
    psq_stu 0, 0x8(10), 0, 0
    addi 3, 3, 0x10
    addi 5, 5, 0x20
    .4byte 0x4200FDF0 # bdnz .L_8042B4B8
L_8042B6CC:
    lis 3, lbl_8052A9A0@ha
    .4byte 0x800D92A0 # lwz r0, lbl_8053AE60@sda21(r0)
    addi 3, 3, lbl_8052A9A0@l
    slwi 4, 4, 2
    psq_l 10, 0x0(3), 0, 0
    slwi 5, 0, 3
    psq_l 11, 0x80(3), 0, 0
    slwi 6, 0, 2
    add 5, 5, 4
    .4byte 0x800D9284 # lwz r0, lbl_8053AE44@sda21(r0)
    ps_add 6, 10, 11
    psq_l 12, 0x40(3), 0, 0
    psq_l 13, 0xc0(3), 0, 0
    ps_sub 8, 10, 11
    add 6, 5, 6
    li 4, 0x3
    ps_add 6, 6, 25
    mr 10, 3
    ps_add 7, 12, 13
    add 3, 0, 5
    ps_sub 9, 12, 13
    add 7, 0, 6
    ps_add 0, 6, 7
    ps_add 8, 8, 25
    mtctr 4
L_8042B730:
    ps_msub 9, 9, 29, 7
    psq_l 4, 0x20(10), 0, 0
    ps_sub 3, 6, 7
    psq_l 5, 0x60(10), 0, 0
    psq_l 6, 0xa0(10), 0, 0
    psq_l 7, 0xe0(10), 0, 0
    ps_add 1, 8, 9
    psq_l 10, 0x8(10), 0, 0
    ps_sub 2, 8, 9
    psq_l 11, 0x88(10), 0, 0
    ps_add 8, 6, 5
    psq_l 12, 0x48(10), 0, 0
    ps_add 9, 4, 7
    psq_l 13, 0xc8(10), 0, 0
    ps_sub 6, 6, 5
    addi 10, 10, 0x8
    ps_sub 4, 4, 7
    ps_add 7, 9, 8
    ps_sub 5, 9, 8
    ps_add 8, 6, 4
    ps_add 9, 0, 7
    ps_sub 30, 0, 7
    ps_mul 8, 8, 28
    ps_madd 6, 6, 26, 8
    ps_sub 6, 6, 7
    psq_st 9, 0x0(3), 0, 6
    ps_msub 4, 4, 27, 8
    ps_add 9, 1, 6
    ps_msub 5, 5, 29, 6
    ps_sub 31, 1, 6
    psq_st 9, 0x8(3), 0, 6
    ps_add 8, 2, 5
    ps_add 4, 4, 5
    psq_st 8, 0x10(3), 0, 6
    ps_sub 9, 3, 4
    ps_add 0, 3, 4
    psq_st 9, 0x18(3), 0, 6
    ps_sub 1, 2, 5
    ps_add 6, 10, 11
    psq_st 0, 0x0(7), 0, 6
    ps_sub 8, 10, 11
    ps_add 6, 6, 25
    psq_st 1, 0x8(7), 0, 6
    ps_add 7, 12, 13
    ps_sub 9, 12, 13
    psq_st 31, 0x10(7), 0, 6
    addi 5, 5, 0x2
    add 3, 0, 5
    ps_add 0, 6, 7
    psq_st 30, 0x18(7), 0, 6
    addi 6, 6, 0x2
    ps_add 8, 8, 25
    add 7, 0, 6
    .4byte 0x4200FF2C # bdnz .L_8042B730
    ps_msub 9, 9, 29, 7
    psq_l 4, 0x20(10), 0, 0
    ps_sub 3, 6, 7
    psq_l 5, 0x60(10), 0, 0
    psq_l 6, 0xa0(10), 0, 0
    psq_l 7, 0xe0(10), 0, 0
    ps_add 1, 8, 9
    ps_sub 2, 8, 9
    ps_add 8, 6, 5
    ps_add 9, 4, 7
    ps_sub 6, 6, 5
    ps_sub 4, 4, 7
    ps_add 7, 9, 8
    ps_sub 5, 9, 8
    ps_add 8, 6, 4
    ps_add 9, 0, 7
    ps_sub 30, 0, 7
    ps_mul 8, 8, 28
    ps_madd 6, 6, 26, 8
    psq_st 9, 0x0(3), 0, 6
    ps_msub 4, 4, 27, 8
    ps_sub 6, 6, 7
    psq_st 30, 0x18(7), 0, 6
    ps_add 9, 1, 6
    ps_msub 5, 5, 29, 6
    ps_sub 31, 1, 6
    psq_st 9, 0x8(3), 0, 6
    ps_add 8, 2, 5
    ps_add 4, 4, 5
    psq_st 8, 0x10(3), 0, 6
    ps_sub 9, 3, 4
    psq_st 31, 0x10(7), 0, 6
    ps_add 0, 3, 4
    psq_st 9, 0x18(3), 0, 6
    ps_sub 1, 2, 5
    psq_st 0, 0x0(7), 0, 6
    psq_st 1, 0x8(7), 0, 6
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    psq_l 27, 0x38(1), 0, 0
    lfd 27, 0x30(1)
    psq_l 26, 0x28(1), 0, 0
    lfd 26, 0x20(1)
    psq_l 25, 0x18(1), 0, 0
    lfd 25, 0x10(1)
    addi 1, 1, 0x80
    blr

fn_8042B8DC:
    stwu 1, -0x80(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stfd 27, 0x30(1)
    psq_st 27, 0x38(1), 0, 0
    stfd 26, 0x20(1)
    psq_st 26, 0x28(1), 0, 0
    stfd 25, 0x10(1)
    psq_st 25, 0x18(1), 0, 0
    lis 5, lbl_8052A9A0@ha
    .4byte 0xC3A20B30 # lfs f29, lbl_80543AD0@sda21(r0)
    addi 5, 5, lbl_8052A9A0@l
    .4byte 0xC3820B34 # lfs f28, lbl_80543AD4@sda21(r0)
    subi 10, 5, 0x8
    .4byte 0xC3620B38 # lfs f27, lbl_80543AD8@sda21(r0)
    .4byte 0xC3420B3C # lfs f26, lbl_80543ADC@sda21(r0)
    li 7, 0x8
    .4byte 0xC3220B40 # lfs f25, lbl_80543AE0@sda21(r0)
    .4byte 0x80AD92A4 # lwz r5, lbl_8053AE64@sda21(r0)
    mtctr 7
L_8042B944:
    psq_l 10, 0x0(3), 0, 5
    psq_l 11, 0x0(5), 0, 0
    lwz 0, 0xc(3)
    lwz 8, 0x8(3)
    ps_mul 10, 10, 11
    lwz 6, 0x4(3)
    or. 0, 0, 8
    lhz 7, 0x2(3)
L_8042B964:
    cmpwi 0, 0x0
    .4byte 0x40820148 # bne .L_8042BAB0
    ps_merge00 0, 10, 10
    cmpwi 6, 0x0
    psq_st 0, 0x8(10), 0, 0
    .4byte 0x4082009C # bne .L_8042BA14
    psq_st 0, 0x10(10), 0, 0
    cmpwi 7, 0x0
    psq_st 0, 0x18(10), 0, 0
    .4byte 0x40820018 # bne .L_8042B9A0
    psq_stu 0, 0x20(10), 0, 0
    addi 3, 3, 0x10
    addi 5, 5, 0x20
    .4byte 0x4200FFAC # bdnz .L_8042B944
    .4byte 0x480001DC # b .L_8042BB78
L_8042B9A0:
    ps_msub 2, 10, 28, 10
    psq_l 11, 0x20(5), 0, 0
    ps_sub 1, 28, 27
    addi 5, 5, 0x20
    ps_merge00 9, 10, 10
    lwz 6, 0x14(3)
    ps_msub 3, 10, 29, 2
    lhz 7, 0x12(3)
    ps_merge11 5, 10, 2
    ps_nmsub 4, 10, 1, 3
    ps_add 7, 9, 5
    psq_l 10, 0x10(3), 0, 5
    lwz 0, 0x1c(3)
    ps_sub 5, 9, 5
    ps_merge11 6, 3, 4
    lwz 8, 0x18(3)
    ps_add 8, 9, 6
    ps_sub 6, 9, 6
    psq_stu 7, 0x8(10), 0, 0
    ps_merge10 6, 6, 6
    psq_stu 8, 0x8(10), 0, 0
    ps_merge10 5, 5, 5
    or 0, 0, 8
    psq_stu 6, 0x8(10), 0, 0
    ps_mul 10, 10, 11
    psq_stu 5, 0x8(10), 0, 0
    addi 3, 3, 0x10
    .4byte 0x4200FF58 # bdnz .L_8042B964
    .4byte 0x48000168 # b .L_8042BB78
L_8042BA14:
    psq_l 1, 0x4(3), 0, 5
    psq_l 9, 0x8(5), 0, 0
    lwz 0, 0x1c(3)
    ps_mul 1, 1, 9
    lwz 8, 0x18(3)
    lwz 6, 0x14(3)
    lhz 7, 0x12(3)
    ps_sub 3, 10, 1
    ps_add 2, 10, 1
    ps_mul 8, 3, 28
    ps_madd 4, 1, 29, 3
    ps_nmsub 5, 1, 29, 2
    ps_nmsub 6, 1, 26, 8
    ps_nmsub 7, 10, 27, 8
    ps_merge00 4, 2, 4
    ps_sub 6, 6, 2
    ps_merge00 5, 5, 3
    ps_msub 8, 3, 29, 6
    ps_merge11 2, 2, 6
    psq_l 10, 0x10(3), 0, 5
    psq_l 11, 0x20(5), 0, 0
    ps_sub 7, 7, 8
    ps_add 9, 4, 2
    ps_sub 4, 4, 2
    ps_merge11 3, 8, 7
    psq_stu 9, 0x8(10), 0, 0
    or 0, 0, 8
    ps_add 0, 5, 3
    ps_sub 1, 5, 3
    psq_stu 0, 0x8(10), 0, 0
    ps_merge10 4, 4, 4
    ps_merge10 1, 1, 1
    psq_stu 1, 0x8(10), 0, 0
    ps_mul 10, 10, 11
    psq_stu 4, 0x8(10), 0, 0
    addi 3, 3, 0x10
    addi 5, 5, 0x20
    .4byte 0x4200FEBC # bdnz .L_8042B964
    .4byte 0x480000CC # b .L_8042BB78
L_8042BAB0:
    psq_l 9, 0x4(3), 0, 5
    psq_l 5, 0x8(5), 0, 0
    ps_mul 9, 9, 5
    psq_l 2, 0x8(3), 0, 5
    psq_l 6, 0x10(5), 0, 0
    ps_merge01 0, 10, 9
    psq_l 3, 0xc(3), 0, 5
    ps_merge01 1, 9, 10
    psq_l 7, 0x18(5), 0, 0
    lwz 0, 0x1c(3)
    ps_madd 4, 2, 6, 0
    ps_nmsub 5, 2, 6, 0
    lwz 8, 0x18(3)
    ps_madd 6, 3, 7, 1
    lwz 6, 0x14(3)
    ps_nmsub 7, 3, 7, 1
    lhz 7, 0x12(3)
    ps_add 0, 4, 6
    ps_sub 8, 7, 5
    ps_msub 2, 7, 29, 6
    ps_sub 3, 4, 6
    ps_mul 8, 8, 28
    ps_add 1, 5, 2
    ps_sub 2, 5, 2
    ps_nmsub 6, 5, 26, 8
    ps_msub 4, 7, 27, 8
    ps_merge00 1, 0, 1
    ps_sub 6, 6, 0
    ps_merge00 2, 2, 3
    ps_madd 5, 3, 29, 6
    ps_merge11 7, 0, 6
    psq_l 10, 0x10(3), 0, 5
    psq_l 11, 0x20(5), 0, 0
    ps_sub 4, 4, 5
    ps_add 3, 1, 7
    ps_sub 0, 1, 7
    ps_merge11 4, 5, 4
    ps_mul 10, 10, 11
    ps_add 5, 2, 4
    ps_sub 6, 2, 4
    ps_merge10 5, 5, 5
    psq_stu 3, 0x8(10), 0, 0
    ps_merge10 0, 0, 0
    psq_stu 6, 0x8(10), 0, 0
    psq_stu 5, 0x8(10), 0, 0
    or 0, 0, 8
    psq_stu 0, 0x8(10), 0, 0
    addi 3, 3, 0x10
    addi 5, 5, 0x20
    .4byte 0x4200FDF0 # bdnz .L_8042B964
L_8042BB78:
    lis 3, lbl_8052A9A0@ha
    .4byte 0x800D92A0 # lwz r0, lbl_8053AE60@sda21(r0)
    addi 3, 3, lbl_8052A9A0@l
    slwi 6, 4, 2
    psq_l 10, 0x0(3), 0, 0
    slwi 5, 0, 2
    psq_l 11, 0x80(3), 0, 0
    add 5, 6, 5
    .4byte 0x800D9284 # lwz r0, lbl_8053AE44@sda21(r0)
    li 4, 0x3
    ps_add 6, 10, 11
    psq_l 12, 0x40(3), 0, 0
    psq_l 13, 0xc0(3), 0, 0
    ps_sub 8, 10, 11
    mr 10, 3
    mr 3, 6
    ps_add 6, 6, 25
    add 6, 0, 6
    ps_add 7, 12, 13
    add 7, 0, 5
    ps_sub 9, 12, 13
    ps_add 8, 8, 25
    ps_add 0, 6, 7
    mtctr 4
L_8042BBD8:
    ps_msub 9, 9, 29, 7
    psq_l 4, 0x20(10), 0, 0
    ps_sub 3, 6, 7
    psq_l 5, 0x60(10), 0, 0
    psq_l 6, 0xa0(10), 0, 0
    psq_l 7, 0xe0(10), 0, 0
    ps_add 1, 8, 9
    psq_l 10, 0x8(10), 0, 0
    ps_sub 2, 8, 9
    psq_l 11, 0x88(10), 0, 0
    ps_add 8, 6, 5
    psq_l 12, 0x48(10), 0, 0
    ps_add 9, 4, 7
    psq_l 13, 0xc8(10), 0, 0
    ps_sub 6, 6, 5
    addi 10, 10, 0x8
    ps_sub 4, 4, 7
    ps_add 7, 9, 8
    ps_sub 5, 9, 8
    ps_add 8, 6, 4
    ps_add 9, 0, 7
    ps_sub 30, 0, 7
    ps_mul 8, 8, 28
    ps_madd 6, 6, 26, 8
    ps_sub 6, 6, 7
    psq_st 9, 0x0(6), 0, 6
    ps_msub 4, 4, 27, 8
    ps_add 9, 1, 6
    ps_msub 5, 5, 29, 6
    ps_sub 31, 1, 6
    psq_st 9, 0x8(6), 0, 6
    ps_add 8, 2, 5
    ps_add 4, 4, 5
    psq_st 8, 0x10(6), 0, 6
    ps_sub 9, 3, 4
    ps_add 0, 3, 4
    psq_st 9, 0x18(6), 0, 6
    ps_sub 1, 2, 5
    ps_add 6, 10, 11
    psq_st 0, 0x0(7), 0, 6
    ps_sub 8, 10, 11
    ps_add 6, 6, 25
    psq_st 1, 0x8(7), 0, 6
    ps_add 7, 12, 13
    ps_sub 9, 12, 13
    psq_st 31, 0x10(7), 0, 6
    addi 3, 3, 0x2
    add 6, 0, 3
    ps_add 0, 6, 7
    psq_st 30, 0x18(7), 0, 6
    addi 5, 5, 0x2
    ps_add 8, 8, 25
    add 7, 0, 5
    .4byte 0x4200FF2C # bdnz .L_8042BBD8
    ps_msub 9, 9, 29, 7
    psq_l 4, 0x20(10), 0, 0
    ps_sub 3, 6, 7
    psq_l 5, 0x60(10), 0, 0
    psq_l 6, 0xa0(10), 0, 0
    psq_l 7, 0xe0(10), 0, 0
    ps_add 1, 8, 9
    ps_sub 2, 8, 9
    ps_add 8, 6, 5
    ps_add 9, 4, 7
    ps_sub 6, 6, 5
    ps_sub 4, 4, 7
    ps_add 7, 9, 8
    ps_sub 5, 9, 8
    ps_add 8, 6, 4
    ps_add 9, 0, 7
    ps_sub 30, 0, 7
    ps_mul 8, 8, 28
    ps_madd 6, 6, 26, 8
    psq_st 9, 0x0(6), 0, 6
    ps_msub 4, 4, 27, 8
    ps_sub 6, 6, 7
    psq_st 30, 0x18(7), 0, 6
    ps_add 9, 1, 6
    ps_msub 5, 5, 29, 6
    ps_sub 31, 1, 6
    psq_st 9, 0x8(6), 0, 6
    ps_add 8, 2, 5
    ps_add 4, 4, 5
    psq_st 31, 0x10(7), 0, 6
    psq_st 8, 0x10(6), 0, 6
    ps_sub 9, 3, 4
    ps_add 0, 3, 4
    psq_st 9, 0x18(6), 0, 6
    ps_sub 1, 2, 5
    psq_st 0, 0x0(7), 0, 6
    psq_st 1, 0x8(7), 0, 6
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    psq_l 27, 0x38(1), 0, 0
    lfd 27, 0x30(1)
    psq_l 26, 0x28(1), 0, 0
    lfd 26, 0x20(1)
    psq_l 25, 0x18(1), 0, 0
    lfd 25, 0x10(1)
    addi 1, 1, 0x80
    blr

fn_8042BD84:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    dcbz 0, 30
    .4byte 0x808D9268 # lwz r4, lbl_8053AE28@sda21(r0)
    bl fn_8042BF54
    li 0, 0x20
    dcbz 30, 0
    li 0, 0x40
    li 5, 0x0
    dcbz 30, 0
    cmpwi 3, 0x0
    .4byte 0x41820088 # beq .L_8042BE50
    lwz 5, 0x6a4(29)
    subfic 6, 5, 0x21
    lwz 4, 0x6a0(29)
    subf. 7, 6, 3
    subi 8, 5, 0x1
    .4byte 0x4181001C # bgt .L_8042BDFC
    add 0, 5, 3
    slw 5, 4, 8
    stw 0, 0x6a4(29)
    subfic 0, 3, 0x20
    srw 5, 5, 0
    .4byte 0x48000030 # b .L_8042BE28
L_8042BDFC:
    slw 0, 4, 8
    lwz 5, 0x69c(29)
    lwzu 4, 0x4(5)
    addi 7, 7, 0x1
    stw 4, 0x6a0(29)
    srw 4, 4, 6
    add 0, 4, 0
    stw 5, 0x69c(29)
    stw 7, 0x6a4(29)
    subfic 7, 3, 0x20
    srw 5, 0, 7
L_8042BE28:
    extsh 4, 5
    subfic 0, 3, 0x20
    cntlzw 4, 4
    cmpw 4, 0
    .4byte 0x40810018 # ble .L_8042BE50
    li 0, -0x1
    slw 0, 0, 3
    add 3, 0, 5
    addi 0, 3, 0x1
    extsh 5, 0
L_8042BE50:
    li 0, 0x60
    dcbz 30, 0
    li 31, 0x1
    lha 0, 0x690(29)
    add 0, 0, 5
    sth 0, 0x690(29)
    sth 0, 0x0(30)
    .4byte 0x480000C4 # b .L_8042BF30
L_8042BE70:
    .4byte 0x808D9274 # lwz r4, lbl_8053AE34@sda21(r0)
    mr 3, 29
    bl fn_8042BF54
    clrlwi. 9, 3, 28
    srawi 4, 3, 4
    .4byte 0x4182009C # beq .L_8042BF20
    lwz 5, 0x6a4(29)
    add 31, 31, 4
    subfic 6, 5, 0x21
    lwz 4, 0x6a0(29)
    subf. 7, 6, 9
    subi 8, 5, 0x1
    .4byte 0x4181001C # bgt .L_8042BEBC
    add 0, 5, 9
    slw 5, 4, 8
    stw 0, 0x6a4(29)
    subfic 0, 9, 0x20
    srw 4, 5, 0
    .4byte 0x48000030 # b .L_8042BEE8
L_8042BEBC:
    slw 0, 4, 8
    lwz 5, 0x69c(29)
    lwzu 4, 0x4(5)
    addi 7, 7, 0x1
    stw 4, 0x6a0(29)
    srw 4, 4, 6
    add 0, 4, 0
    stw 5, 0x69c(29)
    stw 7, 0x6a4(29)
    subfic 7, 9, 0x20
    srw 4, 0, 7
L_8042BEE8:
    cntlzw 3, 4
    subfic 0, 9, 0x20
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_8042BF08
    li 0, -0x1
    slw 0, 0, 9
    add 4, 0, 4
    addi 4, 4, 0x1
L_8042BF08:
    lis 3, lbl_8048F270@ha
    addi 3, 3, lbl_8048F270@l
    lbzx 0, 3, 31
    slwi 0, 0, 1
    sthx 4, 30, 0
    .4byte 0x48000010 # b .L_8042BF2C
L_8042BF20:
    cmpwi 4, 0xf
    .4byte 0x40820014 # bne .L_8042BF38
    addi 31, 31, 0xf
L_8042BF2C:
    addi 31, 31, 0x1
L_8042BF30:
    cmpwi 31, 0x40
    .4byte 0x4180FF3C # blt .L_8042BE70
L_8042BF38:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042BF54:
    lwz 7, 0x6a4(3)
    addi 5, 4, 0x20
    lwz 8, 0x6a0(3)
    cmpwi 7, 0x1c
    addi 6, 7, 0x4
    rlwnm 9, 8, 6, 27, 31
    .4byte 0x418100C0 # bgt .L_8042C02C
    lbzx 6, 4, 9
    lbzx 5, 5, 9
    cmpwi 6, 0xff
    .4byte 0x41820014 # beq .L_8042BF90
    add 7, 7, 5
    stw 7, 0x6a4(3)
    mr 3, 6
    blr
L_8042BF90:
    addi 10, 4, 0x58
    li 6, 0x5
    addi 7, 7, 0x5
L_8042BF9C:
    cmpwi 7, 0x21
    slwi 9, 9, 1
    .4byte 0x41820018 # beq .L_8042BFBC
    rlwnm 5, 8, 7, 31, 31
    lwzu 0, 0x4(10)
    or 9, 9, 5
    addi 7, 7, 0x1
    .4byte 0x48000048 # b .L_8042C000
L_8042BFBC:
    lwz 5, 0x69c(3)
    li 7, 0x1
    lwzu 8, 0x4(5)
    lwzu 0, 0x4(10)
    rlwimi 9, 8, 1, 31, 31
    stw 5, 0x69c(3)
    stw 8, 0x6a0(3)
    .4byte 0x48000014 # b .L_8042BFEC
L_8042BFDC:
    slwi 9, 9, 1
    rlwnm 5, 8, 7, 31, 31
    lwzu 0, 0x4(10)
    or 9, 9, 5
L_8042BFEC:
    cmpw 9, 0
    addi 7, 7, 0x1
    addi 6, 6, 0x1
    .4byte 0x4181FFE4 # bgt .L_8042BFDC
    .4byte 0x48000010 # b .L_8042C00C
L_8042C000:
    cmpw 9, 0
    addi 6, 6, 0x1
    .4byte 0x4181FF94 # bgt .L_8042BF9C
L_8042C00C:
    stw 7, 0x6a4(3)
    slwi 0, 6, 2
    add 3, 4, 0
    lwz 4, 0x40(4)
    lwz 0, 0x8c(3)
    add 0, 0, 4
    lbzx 3, 9, 0
    blr
L_8042C02C:
    cmpwi 7, 0x21
    lwz 9, 0x69c(3)
    .4byte 0x418200AC # beq .L_8042C0E0
    cmpwi 7, 0x20
    rlwnm 6, 8, 6, 27, 31
    .4byte 0x4182002C # beq .L_8042C06C
    lbzx 9, 4, 6
    lbzx 5, 5, 6
    cmpwi 9, 0xff
    add 6, 7, 5
    .4byte 0x418200F0 # beq .L_8042C144
    cmpwi 6, 0x21
    stw 6, 0x6a4(3)
    .4byte 0x418100E4 # bgt .L_8042C144
    mr 3, 9
    blr
L_8042C06C:
    lwzu 8, 0x4(9)
    stw 9, 0x69c(3)
    rlwimi 6, 8, 4, 28, 31
    lbzx 9, 4, 6
    lbzx 5, 5, 6
    cmpwi 9, 0xff
    stw 8, 0x6a0(3)
    stw 5, 0x6a4(3)
    .4byte 0x4182000C # beq .L_8042C098
    mr 3, 9
    blr
L_8042C098:
    slwi 9, 6, 27
    addi 5, 4, 0x58
    rlwimi 9, 8, 31, 1, 31
    li 7, 0x5
L_8042C0A8:
    subfic 8, 7, 0x1f
    lwzu 0, 0x4(5)
    srw 6, 9, 8
    addi 7, 7, 0x1
    cmpw 6, 0
    .4byte 0x4181FFEC # bgt .L_8042C0A8
    stw 7, 0x6a4(3)
L_8042C0C4:
    slwi 0, 7, 2
    lwz 5, 0x40(4)
    add 3, 4, 0
    lwz 0, 0x8c(3)
    add 0, 0, 5
    lbzx 3, 6, 0
    blr
L_8042C0E0:
    lwzu 8, 0x4(9)
    stw 9, 0x69c(3)
    srwi 6, 8, 27
    lbzx 7, 4, 6
    lbzx 5, 5, 6
    cmpwi 7, 0xff
    stw 8, 0x6a0(3)
    addi 5, 5, 0x1
    .4byte 0x41820010 # beq .L_8042C110
    stw 5, 0x6a4(3)
    mr 3, 7
    blr
L_8042C110:
    li 7, 0x5
    li 5, 0x14
L_8042C118:
    subfic 9, 7, 0x1f
    addi 0, 5, 0x48
    lwzx 0, 4, 0
    srw 6, 8, 9
    addi 7, 7, 0x1
    addi 5, 5, 0x4
    cmpw 6, 0
    .4byte 0x4181FFE4 # bgt .L_8042C118
    addi 0, 7, 0x1
    stw 0, 0x6a4(3)
    .4byte 0x4BFFFF84 # b .L_8042C0C4
L_8042C144:
    subfic 0, 7, 0x21
    li 5, -0x1
    slw 0, 5, 0
    addi 10, 4, 0x44
    andc 6, 8, 0
    lwz 9, 0x69c(3)
    subfic 11, 7, 0x21
    lwzu 8, 0x4(9)
    addi 7, 11, 0x1
    slwi 6, 6, 1
    stw 9, 0x69c(3)
    slwi 11, 11, 2
    add 10, 10, 11
    rlwimi 6, 8, 1, 31, 31
    stw 8, 0x6a0(3)
    li 9, 0x2
    lwzu 11, 0x4(10)
    .4byte 0x48000018 # b .L_8042C1A0
L_8042C18C:
    slwi 6, 6, 1
    lwzu 11, 0x4(10)
    add 6, 6, 5
    addi 9, 9, 0x1
    addi 7, 7, 0x1
L_8042C1A0:
    cmpw 6, 11
    rlwnm 5, 8, 9, 31, 31
    .4byte 0x4181FFE4 # bgt .L_8042C18C
    stw 9, 0x6a4(3)
    slwi 0, 7, 2
    add 3, 4, 0
    lwz 4, 0x40(4)
    lwz 0, 0x8c(3)
    add 0, 0, 4
    lbzx 3, 6, 0
    blr

fn_8042C1CC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    dcbz 0, 30
    .4byte 0x808D9264 # lwz r4, lbl_8053AE24@sda21(r0)
    bl fn_8042BF54
    li 0, 0x20
    dcbz 30, 0
    li 0, 0x40
    li 5, 0x0
    dcbz 30, 0
    cmpwi 3, 0x0
    .4byte 0x41820088 # beq .L_8042C298
    lwz 5, 0x6a4(29)
    subfic 6, 5, 0x21
    lwz 4, 0x6a0(29)
    subfc. 7, 6, 3
    subi 8, 5, 0x1
    .4byte 0x4181001C # bgt .L_8042C244
    add 0, 5, 3
    slw 5, 4, 8
    stw 0, 0x6a4(29)
    subfic 0, 3, 0x20
    srw 5, 5, 0
    .4byte 0x48000030 # b .L_8042C270
L_8042C244:
    slw 0, 4, 8
    lwz 5, 0x69c(29)
    lwzu 4, 0x4(5)
    addi 7, 7, 0x1
    stw 4, 0x6a0(29)
    srw 4, 4, 6
    add 0, 4, 0
    stw 5, 0x69c(29)
    stw 7, 0x6a4(29)
    subfic 7, 3, 0x20
    srw 5, 0, 7
L_8042C270:
    extsh 4, 5
    subfic 0, 3, 0x20
    cntlzw 4, 4
    cmpw 4, 0
    .4byte 0x40810018 # ble .L_8042C298
    li 0, -0x1
    slw 0, 0, 3
    add 3, 0, 5
    addi 0, 3, 0x1
    extsh 5, 0
L_8042C298:
    li 0, 0x60
    dcbz 30, 0
    li 31, 0x1
    lha 0, 0x68a(29)
    add 0, 0, 5
    sth 0, 0x68a(29)
    sth 0, 0x0(30)
    .4byte 0x480000C4 # b .L_8042C378
L_8042C2B8:
    .4byte 0x808D9270 # lwz r4, lbl_8053AE30@sda21(r0)
    mr 3, 29
    bl fn_8042BF54
    clrlwi. 9, 3, 28
    srawi 4, 3, 4
    .4byte 0x4182009C # beq .L_8042C368
    lwz 5, 0x6a4(29)
    add 31, 31, 4
    subfic 6, 5, 0x21
    lwz 4, 0x6a0(29)
    subf. 7, 6, 9
    subi 8, 5, 0x1
    .4byte 0x4181001C # bgt .L_8042C304
    add 0, 5, 9
    slw 5, 4, 8
    stw 0, 0x6a4(29)
    subfic 0, 9, 0x20
    srw 4, 5, 0
    .4byte 0x48000030 # b .L_8042C330
L_8042C304:
    slw 0, 4, 8
    lwz 5, 0x69c(29)
    lwzu 4, 0x4(5)
    addi 7, 7, 0x1
    stw 4, 0x6a0(29)
    srw 4, 4, 6
    add 0, 4, 0
    stw 5, 0x69c(29)
    stw 7, 0x6a4(29)
    subfic 7, 9, 0x20
    srw 4, 0, 7
L_8042C330:
    cntlzw 3, 4
    subfic 0, 9, 0x20
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_8042C350
    li 0, -0x1
    slw 0, 0, 9
    add 4, 0, 4
    addi 4, 4, 0x1
L_8042C350:
    lis 3, lbl_8048F270@ha
    addi 3, 3, lbl_8048F270@l
    lbzx 0, 3, 31
    slwi 0, 0, 1
    sthx 4, 30, 0
    .4byte 0x48000010 # b .L_8042C374
L_8042C368:
    cmpwi 4, 0xf
    .4byte 0x40820014 # bne .L_8042C380
    addi 31, 31, 0xf
L_8042C374:
    addi 31, 31, 0x1
L_8042C378:
    cmpwi 31, 0x40
    .4byte 0x4180FF3C # blt .L_8042C2B8
L_8042C380:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042C39C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    dcbz 0, 31
    .4byte 0x808D9260 # lwz r4, lbl_8053AE20@sda21(r0)
    bl fn_8042BF54
    li 0, 0x20
    dcbz 31, 0
    li 0, 0x40
    li 5, 0x0
    dcbz 31, 0
    cmpwi 3, 0x0
    .4byte 0x41820088 # beq .L_8042C464
    lwz 5, 0x6a4(30)
    subfic 6, 5, 0x21
    lwz 4, 0x6a0(30)
    subfc. 7, 6, 3
    subi 8, 5, 0x1
    .4byte 0x4181001C # bgt .L_8042C410
    add 0, 5, 3
    slw 5, 4, 8
    stw 0, 0x6a4(30)
    subfic 0, 3, 0x20
    srw 5, 5, 0
    .4byte 0x48000030 # b .L_8042C43C
L_8042C410:
    slw 0, 4, 8
    lwz 5, 0x69c(30)
    lwzu 4, 0x4(5)
    addi 7, 7, 0x1
    stw 4, 0x6a0(30)
    srw 4, 4, 6
    add 0, 4, 0
    stw 5, 0x69c(30)
    stw 7, 0x6a4(30)
    subfic 7, 3, 0x20
    srw 5, 0, 7
L_8042C43C:
    extsh 4, 5
    subfic 0, 3, 0x20
    cntlzw 4, 4
    cmpw 4, 0
    .4byte 0x40810018 # ble .L_8042C464
    li 0, -0x1
    slw 0, 0, 3
    add 3, 0, 5
    addi 0, 3, 0x1
    extsh 5, 0
L_8042C464:
    li 0, 0x60
    dcbz 31, 0
    li 3, 0x1
    lha 0, 0x684(30)
    add 0, 0, 5
    sth 0, 0x684(30)
    sth 0, 0x0(31)
    .4byte 0x80CD926C # lwz r6, lbl_8053AE2C@sda21(r0)
    lwz 4, 0x6a4(30)
    lwz 0, 0x6a0(30)
    addi 5, 6, 0x20
    .4byte 0x480002E4 # b .L_8042C774
L_8042C494:
    cmpwi 4, 0x1c
    addi 9, 4, 0x4
    rlwnm 10, 0, 9, 27, 31
    .4byte 0x418100B0 # bgt .L_8042C550
    lbzx 11, 6, 10
    lbzx 9, 5, 10
    cmpwi 11, 0xff
    .4byte 0x4182000C # beq .L_8042C4BC
    add 4, 4, 9
    .4byte 0x4800021C # b .L_8042C6D4
L_8042C4BC:
    addi 7, 6, 0x58
    li 9, 0x5
    addi 4, 4, 0x5
L_8042C4C8:
    cmpwi 4, 0x21
    slwi 10, 10, 1
    .4byte 0x41820018 # beq .L_8042C4E8
    rlwnm 11, 0, 4, 31, 31
    lwzu 8, 0x4(7)
    or 10, 10, 11
    addi 4, 4, 0x1
    .4byte 0x48000044 # b .L_8042C528
L_8042C4E8:
    lwz 11, 0x69c(30)
    li 4, 0x1
    lwzu 0, 0x4(11)
    lwzu 8, 0x4(7)
    rlwimi 10, 0, 1, 31, 31
    stw 11, 0x69c(30)
    .4byte 0x48000014 # b .L_8042C514
L_8042C504:
    slwi 10, 10, 1
    rlwnm 11, 0, 4, 31, 31
    lwzu 8, 0x4(7)
    or 10, 10, 11
L_8042C514:
    cmpw 10, 8
    addi 4, 4, 0x1
    addi 9, 9, 0x1
    .4byte 0x4181FFE4 # bgt .L_8042C504
    .4byte 0x48000010 # b .L_8042C534
L_8042C528:
    cmpw 10, 8
    addi 9, 9, 0x1
    .4byte 0x4181FF98 # bgt .L_8042C4C8
L_8042C534:
    slwi 7, 9, 2
    lwz 8, 0x40(6)
    add 7, 6, 7
    lwz 7, 0x8c(7)
    add 7, 7, 8
    lbzx 11, 10, 7
    .4byte 0x48000188 # b .L_8042C6D4
L_8042C550:
    cmpwi 4, 0x21
    lwz 10, 0x69c(30)
    .4byte 0x41820034 # beq .L_8042C58C
    cmpwi 4, 0x20
    rlwnm 9, 0, 9, 27, 31
    .4byte 0x41820090 # beq .L_8042C5F4
    lbzx 11, 6, 9
    lbzx 12, 5, 9
    cmpwi 11, 0xff
    add 9, 4, 12
    .4byte 0x418200E0 # beq .L_8042C658
    cmpwi 9, 0x21
    .4byte 0x418100D8 # bgt .L_8042C658
    mr 4, 9
    .4byte 0x4800014C # b .L_8042C6D4
L_8042C58C:
    lwzu 0, 0x4(10)
    stw 10, 0x69c(30)
    srwi 9, 0, 27
    lbzx 11, 6, 9
    lbzx 10, 5, 9
    cmpwi 11, 0xff
    addi 4, 10, 0x1
    .4byte 0x41820008 # beq .L_8042C5B0
    .4byte 0x48000128 # b .L_8042C6D4
L_8042C5B0:
    li 11, 0x5
    li 4, 0x14
L_8042C5B8:
    subfic 10, 11, 0x1f
    addi 7, 4, 0x48
    lwzx 7, 6, 7
    srw 9, 0, 10
    addi 11, 11, 0x1
    addi 4, 4, 0x4
    cmpw 9, 7
    .4byte 0x4181FFE4 # bgt .L_8042C5B8
    add 4, 6, 4
    lwz 8, 0x40(6)
    lwz 7, 0x8c(4)
    addi 4, 11, 0x1
    add 7, 7, 8
    lbzx 11, 9, 7
    .4byte 0x480000E4 # b .L_8042C6D4
L_8042C5F4:
    lwzu 0, 0x4(10)
    stw 10, 0x69c(30)
    rlwimi 9, 0, 4, 28, 31
    lbzx 11, 6, 9
    lbzx 4, 5, 9
    cmpwi 11, 0xff
    .4byte 0x41820008 # beq .L_8042C614
    .4byte 0x480000C4 # b .L_8042C6D4
L_8042C614:
    slwi 10, 9, 27
    addi 7, 6, 0x58
    rlwimi 10, 0, 31, 1, 31
    li 4, 0x5
L_8042C624:
    subfic 11, 4, 0x1f
    lwzu 8, 0x4(7)
    srw 9, 10, 11
    addi 4, 4, 0x1
    cmpw 9, 8
    .4byte 0x4181FFEC # bgt .L_8042C624
    slwi 7, 4, 2
    lwz 8, 0x40(6)
    add 7, 6, 7
    lwz 7, 0x8c(7)
    add 7, 7, 8
    lbzx 11, 9, 7
    .4byte 0x48000080 # b .L_8042C6D4
L_8042C658:
    subfic 7, 4, 0x21
    li 8, -0x1
    slw 7, 8, 7
    addi 8, 6, 0x44
    andc 9, 0, 7
    lwz 10, 0x69c(30)
    subfic 7, 4, 0x21
    lwzu 0, 0x4(10)
    addi 11, 7, 0x1
    slwi 9, 9, 1
    slwi 7, 7, 2
    stw 10, 0x69c(30)
    add 8, 8, 7
    rlwimi 9, 0, 1, 31, 31
    lwzu 7, 0x4(8)
    li 4, 0x2
    .4byte 0x48000018 # b .L_8042C6B0
L_8042C69C:
    slwi 9, 9, 1
    lwzu 7, 0x4(8)
    add 9, 9, 12
    addi 4, 4, 0x1
    addi 11, 11, 0x1
L_8042C6B0:
    cmpw 9, 7
    rlwnm 12, 0, 4, 31, 31
    .4byte 0x4181FFE4 # bgt .L_8042C69C
    slwi 7, 11, 2
    lwz 8, 0x40(6)
    add 7, 6, 7
    lwz 7, 0x8c(7)
    add 7, 7, 8
    lbzx 11, 9, 7
L_8042C6D4:
    andi. 12, 11, 0xf
    srawi 11, 11, 4
    .4byte 0x41820088 # beq .L_8042C764
    add 3, 3, 11
    subfic 9, 4, 0x21
    subfc. 10, 9, 12
    subi 7, 4, 0x1
    .4byte 0x41810018 # bgt .L_8042C708
    add 4, 4, 12
    slw 8, 0, 7
    subfic 7, 12, 0x20
    srw 11, 8, 7
    .4byte 0x48000028 # b .L_8042C72C
L_8042C708:
    slw 7, 0, 7
    lwz 8, 0x69c(30)
    lwzu 0, 0x4(8)
    addi 4, 10, 0x1
    stw 8, 0x69c(30)
    srw 8, 0, 9
    add 7, 8, 7
    subfic 10, 12, 0x20
    srw 11, 7, 10
L_8042C72C:
    cntlzw 8, 11
    subfic 7, 12, 0x20
    cmpw 8, 7
    .4byte 0x40810014 # ble .L_8042C74C
    li 7, -0x1
    slw 7, 7, 12
    add 11, 7, 11
    addi 11, 11, 0x1
L_8042C74C:
    lis 7, lbl_8048F270@ha
    addi 7, 7, lbl_8048F270@l
    lbzx 7, 7, 3
    slwi 7, 7, 1
    sthx 11, 31, 7
    .4byte 0x48000010 # b .L_8042C770
L_8042C764:
    cmpwi 11, 0xf
    .4byte 0x40820014 # bne .L_8042C77C
    addi 3, 3, 0xf
L_8042C770:
    addi 3, 3, 0x1
L_8042C774:
    cmpwi 3, 0x40
    .4byte 0x4180FD1C # blt .L_8042C494
L_8042C77C:
    stw 4, 0x6a4(30)
    stw 0, 0x6a0(30)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042C79C:
    stwu 1, -0x20(1)
    mflr 0
    li 3, 0x3
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl fn_80041298
    lis 4, lbl_8052AAB8@ha
    lis 3, lbl_8052AAAC@ha
    addi 30, 4, lbl_8052AAB8@l
    li 29, 0x0
    addi 31, 3, lbl_8052AAAC@l
    .4byte 0x48000180 # b .L_8042C954
L_8042C7D8:
    lwz 4, 0x0(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x4(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x8(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0xc(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x10(30)
    bl fn_8042C1CC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x14(30)
    bl fn_8042BD84
    lwz 3, 0x0(31)
    li 0, 0x280
    slwi 28, 28, 4
    .4byte 0x900D92A0 # stw r0, lbl_8053AE60@sda21(r0)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    mr 4, 28
    .4byte 0x906D9284 # stw r3, lbl_8053AE44@sda21(r0)
    lwz 3, 0x0(30)
    lbz 0, 0x680(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    lwz 3, 0x4(30)
    addi 4, 28, 0x8
    bl fn_8042B8DC
    lwz 3, 0x8(30)
    mr 4, 28
    bl fn_8042B430
    lwz 3, 0xc(30)
    addi 4, 28, 0x8
    bl fn_8042B430
    lwz 3, 0x4(31)
    li 0, 0x140
    srwi 28, 28, 1
    .4byte 0x900D92A0 # stw r0, lbl_8053AE60@sda21(r0)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    mr 4, 28
    .4byte 0x906D9284 # stw r3, lbl_8053AE44@sda21(r0)
    lwz 3, 0x10(30)
    lbz 0, 0x686(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    lwz 0, 0x8(31)
    mr 4, 28
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    .4byte 0x900D9284 # stw r0, lbl_8053AE44@sda21(r0)
    lwz 3, 0x14(30)
    lbz 0, 0x68c(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lbz 0, 0x6a9(4)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_8042C950
    lhz 3, 0x6ac(4)
    subi 0, 3, 0x1
    sth 0, 0x6ac(4)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lhz 0, 0x6ac(3)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_8042C950
    lhz 0, 0x6aa(3)
    sth 0, 0x6ac(3)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6a4(4)
    addi 0, 3, 0x6
    clrrwi 3, 0, 3
    addi 0, 3, 0x1
    stw 0, 0x6a4(4)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 0, 0x6a4(3)
    cmplwi 0, 0x20
    .4byte 0x4081000C # ble .L_8042C934
    li 0, 0x21
    stw 0, 0x6a4(3)
L_8042C934:
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 0, 0x0
    sth 0, 0x684(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    sth 0, 0x68a(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    sth 0, 0x690(3)
L_8042C950:
    addi 29, 29, 0x1
L_8042C954:
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    clrlwi 28, 29, 24
    lhz 0, 0x696(3)
    cmpw 28, 0
    .4byte 0x4180FE74 # blt .L_8042C7D8
    lis 4, lbl_8052AAAC@ha
    lwz 3, 0x6b0(3)
    addi 4, 4, lbl_8052AAAC@l
    li 5, 0x2800
    lwz 4, 0x0(4)
    bl fn_800411EC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 5, 0xa00
    lwz 4, 0x4(31)
    lwz 3, 0x6b4(3)
    bl fn_800411EC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 5, 0xa00
    lwz 4, 0x8(31)
    lwz 3, 0x6b8(3)
    bl fn_800411EC
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6b0(4)
    addi 0, 3, 0x2800
    stw 0, 0x6b0(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6b4(4)
    addi 0, 3, 0xa00
    stw 0, 0x6b4(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6b8(4)
    addi 0, 3, 0xa00
    stw 0, 0x6b8(4)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042C9F8:
    stwu 1, -0x20(1)
    mflr 0
    li 3, 0x3
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl fn_80041298
    lis 4, lbl_8052AAB8@ha
    lis 3, lbl_8052AAA0@ha
    addi 30, 4, lbl_8052AAB8@l
    li 29, 0x0
    addi 31, 3, lbl_8052AAA0@l
    .4byte 0x4800017C # b .L_8042CBAC
L_8042CA34:
    lwz 4, 0x0(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x4(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x8(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0xc(30)
    bl fn_8042C39C
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x10(30)
    bl fn_8042C1CC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 4, 0x14(30)
    bl fn_8042BD84
    lwz 3, 0x0(31)
    li 0, 0x200
    slwi 28, 28, 4
    .4byte 0x900D92A0 # stw r0, lbl_8053AE60@sda21(r0)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    mr 4, 28
    .4byte 0x906D9284 # stw r3, lbl_8053AE44@sda21(r0)
    lwz 3, 0x0(30)
    lbz 0, 0x680(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    lwz 3, 0x4(30)
    addi 4, 28, 0x8
    bl fn_8042B8DC
    lwz 3, 0x8(30)
    mr 4, 28
    bl fn_8042B430
    lwz 3, 0xc(30)
    addi 4, 28, 0x8
    bl fn_8042B430
    lwz 3, 0x4(31)
    li 0, 0x100
    srwi 28, 28, 1
    .4byte 0x900D92A0 # stw r0, lbl_8053AE60@sda21(r0)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    mr 4, 28
    .4byte 0x906D9284 # stw r3, lbl_8053AE44@sda21(r0)
    lwz 3, 0x10(30)
    lbz 0, 0x686(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    lwz 0, 0x8(31)
    mr 4, 28
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    .4byte 0x900D9284 # stw r0, lbl_8053AE44@sda21(r0)
    lwz 3, 0x14(30)
    lbz 0, 0x68c(5)
    slwi 0, 0, 8
    add 0, 5, 0
    .4byte 0x900D92A4 # stw r0, lbl_8053AE64@sda21(r0)
    bl fn_8042B8DC
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lbz 0, 0x6a9(4)
    cmplwi 0, 0x0
    .4byte 0x41820070 # beq .L_8042CBA8
    lhz 3, 0x6ac(4)
    subi 3, 3, 0x1
    clrlwi. 0, 3, 16
    sth 3, 0x6ac(4)
    .4byte 0x4082005C # bne .L_8042CBA8
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lhz 0, 0x6aa(3)
    sth 0, 0x6ac(3)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6a4(4)
    addi 0, 3, 0x6
    clrrwi 3, 0, 3
    addi 0, 3, 0x1
    stw 0, 0x6a4(4)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lwz 0, 0x6a4(3)
    cmplwi 0, 0x21
    .4byte 0x4081000C # ble .L_8042CB8C
    li 0, 0x21
    stw 0, 0x6a4(3)
L_8042CB8C:
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 0, 0x0
    sth 0, 0x684(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    sth 0, 0x68a(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    sth 0, 0x690(3)
L_8042CBA8:
    addi 29, 29, 0x1
L_8042CBAC:
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    clrlwi 28, 29, 24
    lhz 0, 0x696(3)
    cmpw 28, 0
    .4byte 0x4180FE78 # blt .L_8042CA34
    lis 4, lbl_8052AAA0@ha
    lwz 3, 0x6b0(3)
    addi 4, 4, lbl_8052AAA0@l
    li 5, 0x2000
    lwz 4, 0x0(4)
    bl fn_800411EC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 5, 0x800
    lwz 4, 0x4(31)
    lwz 3, 0x6b4(3)
    bl fn_800411EC
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 5, 0x800
    lwz 4, 0x8(31)
    lwz 3, 0x6b8(3)
    bl fn_800411EC
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6b0(4)
    addi 0, 3, 0x2000
    stw 0, 0x6b0(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6b4(4)
    addi 0, 3, 0x800
    stw 0, 0x6b4(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6b8(4)
    addi 0, 3, 0x800
    stw 0, 0x6b8(4)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042CC50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x80CD92B4 # lwz r6, lbl_8053AE74@sda21(r0)
    stw 3, 0x6b0(6)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    stw 4, 0x6b4(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    stw 5, 0x6b8(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lhz 31, 0x698(3)
    lhz 30, 0x694(3)
    bl fn_8042CD38
    bl fn_8042CD64
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lhz 0, 0x692(3)
    cmplwi 0, 0x200
    .4byte 0x40820028 # bne .L_8042CCC4
    cmplwi 30, 0x1c0
    .4byte 0x40820020 # bne .L_8042CCC4
    .4byte 0x4800000C # b .L_8042CCB4
L_8042CCAC:
    bl fn_8042C9F8
    addi 31, 31, 0x10
L_8042CCB4:
    clrlwi 0, 31, 16
    cmplw 0, 30
    .4byte 0x4180FFF0 # blt .L_8042CCAC
    .4byte 0x48000048 # b .L_8042CD08
L_8042CCC4:
    cmplwi 0, 0x280
    .4byte 0x40820034 # bne .L_8042CCFC
    cmplwi 30, 0x1e0
    .4byte 0x4082002C # bne .L_8042CCFC
    .4byte 0x4800000C # b .L_8042CCE0
L_8042CCD8:
    bl fn_8042C79C
    addi 31, 31, 0x10
L_8042CCE0:
    clrlwi 0, 31, 16
    cmplw 0, 30
    .4byte 0x4180FFF0 # blt .L_8042CCD8
    .4byte 0x4800001C # b .L_8042CD08
    .4byte 0x4800000C # b .L_8042CCFC
L_8042CCF4:
    bl fn_8042B1DC
    addi 31, 31, 0x10
L_8042CCFC:
    clrlwi 0, 31, 16
    cmplw 0, 30
    .4byte 0x4180FFF0 # blt .L_8042CCF4
L_8042CD08:
    bl fn_8042CD24
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042CD24:
    .4byte 0x800D92A8 # lwz r0, lbl_8053AE68@sda21(r0)
    .4byte 0x806D92AC # lwz r3, lbl_8053AE6C@sda21(r0)
    .4byte 0x7C15E3A6 # mtspr GQR5, r0
    .4byte 0x7C76E3A6 # mtspr GQR6, r3
    blr

fn_8042CD38:
    .4byte 0x7C15E2A6 # mfspr r0, GQR5
    .4byte 0x7C96E2A6 # mfspr r4, GQR6
    li 3, 0x7
    oris 3, 3, 0x7
    .4byte 0x900D92A8 # stw r0, lbl_8053AE68@sda21(r0)
    .4byte 0x908D92AC # stw r4, lbl_8053AE6C@sda21(r0)
    .4byte 0x7C75E3A6 # mtspr GQR5, r3
    li 3, 0x3d04
    oris 3, 3, 0x3d04
    .4byte 0x7C76E3A6 # mtspr GQR6, r3
    blr

fn_8042CD64:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x6a4(4)
    lwz 0, 0x69c(4)
    cmplwi 3, 0x21
    clrrwi 5, 0, 2
    clrlwi 0, 0, 30
    .4byte 0x41820018 # beq .L_8042CD94
    subfic 0, 0, 0x3
    slwi 0, 0, 3
    subf 0, 0, 3
    stw 0, 0x6a4(4)
    .4byte 0x48000010 # b .L_8042CDA0
L_8042CD94:
    slwi 3, 0, 3
    addi 0, 3, 0x1
    stw 0, 0x6a4(4)
L_8042CDA0:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    li 3, 0x0
    li 8, 0x0
    stw 5, 0x69c(4)
    lwz 0, 0x0(5)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    stw 0, 0x6a0(4)
L_8042CDBC:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lbz 4, 0x6a8(4)
    and. 0, 4, 0
    .4byte 0x41820118 # beq .L_8042CEE8
    li 0, 0x10
    mr 7, 8
    li 10, 0x0
    mtctr 0
L_8042CDE4:
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    li 5, 0xff
    li 11, 0x0
    add 4, 0, 10
    addi 0, 4, 0x300
    stbx 5, 8, 0
    .4byte 0x48000058 # b .L_8042CE54
L_8042CE00:
    .4byte 0x812D92B4 # lwz r9, lbl_8053AE74@sda21(r0)
    subfic 4, 11, 0x4
    slwi 0, 11, 2
    add 5, 8, 9
    srw 12, 10, 4
    add 4, 5, 0
    lwz 0, 0x348(4)
    cmpw 12, 0
    .4byte 0x41810030 # bgt .L_8042CE50
    lwz 6, 0x340(5)
    addi 5, 11, 0x1
    lwz 4, 0x390(4)
    addi 0, 9, 0x300
    li 11, 0x63
    add 4, 4, 6
    lbzx 4, 12, 4
    stbx 4, 7, 0
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    addi 0, 4, 0x320
    stbx 5, 7, 0
L_8042CE50:
    addi 11, 11, 0x1
L_8042CE54:
    cmplwi 11, 0x5
    .4byte 0x4180FFA8 # blt .L_8042CE00
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    addi 10, 10, 0x1
    li 5, 0xff
    li 11, 0x0
    add 4, 0, 10
    addi 7, 7, 0x1
    addi 0, 4, 0x300
    stbx 5, 8, 0
    .4byte 0x48000058 # b .L_8042CED4
L_8042CE80:
    .4byte 0x812D92B4 # lwz r9, lbl_8053AE74@sda21(r0)
    subfic 4, 11, 0x4
    slwi 0, 11, 2
    add 5, 8, 9
    srw 12, 10, 4
    add 4, 5, 0
    lwz 0, 0x348(4)
    cmpw 12, 0
    .4byte 0x41810030 # bgt .L_8042CED0
    lwz 6, 0x340(5)
    addi 5, 11, 0x1
    lwz 4, 0x390(4)
    addi 0, 9, 0x300
    li 11, 0x63
    add 4, 4, 6
    lbzx 4, 12, 4
    stbx 4, 7, 0
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    addi 0, 4, 0x320
    stbx 5, 7, 0
L_8042CED0:
    addi 11, 11, 0x1
L_8042CED4:
    cmplwi 11, 0x5
    .4byte 0x4180FFA8 # blt .L_8042CE80
    addi 7, 7, 0x1
    addi 10, 10, 0x1
    .4byte 0x4200FF00 # bdnz .L_8042CDE4
L_8042CEE8:
    addi 3, 3, 0x1
    addi 8, 8, 0xe0
    cmplwi 3, 0x4
    .4byte 0x4180FEC8 # blt .L_8042CDBC
    .4byte 0x810D92B4 # lwz r8, lbl_8053AE74@sda21(r0)
    lbz 4, 0x682(8)
    lbz 3, 0x688(8)
    lbz 0, 0x68e(8)
    slwi 5, 4, 1
    lbz 7, 0x687(8)
    slwi 4, 3, 1
    lbz 6, 0x68d(8)
    slwi 3, 0, 1
    lbz 0, 0x681(8)
    slwi 7, 7, 1
    slwi 6, 6, 1
    addi 9, 5, 0x1
    addi 10, 4, 0x1
    addi 11, 3, 0x1
    slwi 0, 0, 1
    mulli 4, 0, 0xe0
    mulli 3, 7, 0xe0
    addi 0, 4, 0x300
    mulli 4, 6, 0xe0
    add 5, 8, 0
    addi 0, 3, 0x300
    .4byte 0x90AD9260 # stw r5, lbl_8053AE20@sda21(r0)
    mulli 3, 9, 0xe0
    add 5, 8, 0
    addi 0, 4, 0x300
    .4byte 0x90AD9264 # stw r5, lbl_8053AE24@sda21(r0)
    mulli 4, 10, 0xe0
    add 5, 8, 0
    addi 0, 3, 0x300
    .4byte 0x90AD9268 # stw r5, lbl_8053AE28@sda21(r0)
    mulli 3, 11, 0xe0
    add 0, 8, 0
    addi 4, 4, 0x300
    .4byte 0x900D926C # stw r0, lbl_8053AE2C@sda21(r0)
    addi 0, 3, 0x300
    add 3, 8, 4
    add 0, 8, 0
    .4byte 0x906D9270 # stw r3, lbl_8053AE30@sda21(r0)
    .4byte 0x900D9274 # stw r0, lbl_8053AE34@sda21(r0)
    blr

fn_8042CF9C:
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 0, 0x1
    stb 0, 0x6a9(3)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x2
    stw 0, 0x69c(4)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lwz 4, 0x69c(5)
    lbz 3, 0x0(4)
    lbz 0, 0x1(4)
    rlwimi 0, 3, 8, 16, 23
    sth 0, 0x6aa(5)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x2
    stw 0, 0x69c(4)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    lhz 0, 0x6aa(3)
    sth 0, 0x6ac(3)
    blr

fn_8042CFF0:
    clrlwi 0, 3, 24
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    mulli 3, 0, 0xe0
    li 0, 0x8
    li 7, 0x0
    li 8, 0x1
    addi 9, 3, 0x300
    add 9, 4, 9
    addi 6, 9, 0x4
    mtctr 0
L_8042D018:
    .4byte 0x806D9278 # lwz r3, lbl_8053AE38@sda21(r0)
    subi 5, 8, 0x1
    lbzx 0, 3, 5
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8042D064
    .4byte 0x806D9280 # lwz r3, lbl_8053AE40@sda21(r0)
    slwi 0, 7, 1
    lhzx 0, 3, 0
    subf 0, 0, 7
    stw 0, 0x8c(6)
    .4byte 0x806D9278 # lwz r3, lbl_8053AE38@sda21(r0)
    .4byte 0x808D9280 # lwz r4, lbl_8053AE40@sda21(r0)
    lbzx 0, 3, 5
    add 7, 7, 0
    slwi 3, 7, 1
    subi 0, 3, 0x2
    lhzx 0, 4, 0
    stw 0, 0x44(6)
    .4byte 0x48000010 # b .L_8042D070
L_8042D064:
    li 0, -0x1
    stw 0, 0x44(6)
    stw 0, 0x8c(6)
L_8042D070:
    .4byte 0x806D9278 # lwz r3, lbl_8053AE38@sda21(r0)
    lbzx 0, 3, 8
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8042D0B8
    .4byte 0x806D9280 # lwz r3, lbl_8053AE40@sda21(r0)
    slwi 0, 7, 1
    lhzx 0, 3, 0
    subf 0, 0, 7
    stw 0, 0x90(6)
    .4byte 0x806D9278 # lwz r3, lbl_8053AE38@sda21(r0)
    .4byte 0x808D9280 # lwz r4, lbl_8053AE40@sda21(r0)
    lbzx 0, 3, 8
    add 7, 7, 0
    slwi 3, 7, 1
    subi 0, 3, 0x2
    lhzx 0, 4, 0
    stw 0, 0x48(6)
    .4byte 0x48000010 # b .L_8042D0C4
L_8042D0B8:
    li 0, -0x1
    stw 0, 0x48(6)
    stw 0, 0x90(6)
L_8042D0C4:
    addi 6, 6, 0x8
    addi 8, 8, 0x2
    .4byte 0x4200FF4C # bdnz .L_8042D018
    lis 3, 0x10
    subi 0, 3, 0x1
    stw 0, 0x88(9)
    blr

fn_8042D0E0:
    .4byte 0x806D927C # lwz r3, lbl_8053AE3C@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    lbz 5, 0x0(3)
    .4byte 0x4800003C # b .L_8042D12C
L_8042D0F4:
    clrlwi 4, 5, 24
    .4byte 0x48000018 # b .L_8042D110
L_8042D0FC:
    .4byte 0x806D9280 # lwz r3, lbl_8053AE40@sda21(r0)
    clrlslwi 0, 6, 16, 1
    addi 6, 6, 0x1
    sthx 7, 3, 0
    addi 7, 7, 0x1
L_8042D110:
    .4byte 0x806D927C # lwz r3, lbl_8053AE3C@sda21(r0)
    clrlwi 0, 6, 16
    lbzx 0, 3, 0
    cmplw 4, 0
    .4byte 0x4182FFDC # beq .L_8042D0FC
    clrlslwi 7, 7, 17, 1
    addi 5, 5, 0x1
L_8042D12C:
    .4byte 0x806D927C # lwz r3, lbl_8053AE3C@sda21(r0)
    clrlwi 0, 6, 16
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x4082FFB8 # bne .L_8042D0F4
    blr

fn_8042D144:
    li 5, 0x0
    li 6, 0x1
L_8042D14C:
    .4byte 0x806D9278 # lwz r3, lbl_8053AE38@sda21(r0)
    subi 0, 6, 0x1
    lbzx 0, 3, 0
    cmpwi 0, 0x0
    mr 3, 0
    .4byte 0x41820090 # beq .L_8042D1F0
    srwi. 0, 0, 3
    mtctr 0
    .4byte 0x41820070 # beq .L_8042D1DC
L_8042D170:
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x4200FFA0 # bdnz .L_8042D170
    andi. 3, 3, 0x7
    .4byte 0x41820018 # beq .L_8042D1F0
L_8042D1DC:
    mtctr 3
L_8042D1E0:
    .4byte 0x808D927C # lwz r4, lbl_8053AE3C@sda21(r0)
    stbx 6, 4, 5
    addi 5, 5, 0x1
    .4byte 0x4200FFF4 # bdnz .L_8042D1E0
L_8042D1F0:
    addi 6, 6, 0x1
    cmpwi 6, 0x10
    .4byte 0x4081FF54 # ble .L_8042D14C
    .4byte 0x806D927C # lwz r3, lbl_8053AE3C@sda21(r0)
    li 0, 0x0
    stbx 0, 3, 5
    blr

fn_8042D20C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    .4byte 0x806D92B0 # lwz r3, lbl_8053AE70@sda21(r0)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    addi 0, 3, 0x101
    .4byte 0x906D927C # stw r3, lbl_8053AE3C@sda21(r0)
    .4byte 0x900D9280 # stw r0, lbl_8053AE40@sda21(r0)
    lwz 3, 0x69c(5)
    lbz 4, 0x0(3)
    addi 0, 3, 0x2
    lbz 3, 0x1(3)
    rlwimi 3, 4, 8, 16, 23
    clrlwi 30, 3, 16
    stw 0, 0x69c(5)
    subi 30, 30, 0x2
L_8042D258:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    li 29, 0x0
    li 3, 0x0
    lwz 5, 0x69c(4)
    addi 0, 5, 0x1
    stw 0, 0x69c(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(5)
    lwz 5, 0x69c(4)
    clrlslwi 4, 0, 28, 1
    extrwi 0, 0, 4, 24
    add 0, 4, 0
    .4byte 0x90AD9278 # stw r5, lbl_8053AE38@sda21(r0)
    clrlwi 31, 0, 24
    .4byte 0x480000C8 # b .L_8042D358
L_8042D294:
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    addi 3, 3, 0x8
    lwz 4, 0x69c(5)
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(4)
    lwz 4, 0x69c(5)
    add 29, 29, 0
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(4)
    lwz 4, 0x69c(5)
    add 29, 29, 0
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(4)
    lwz 4, 0x69c(5)
    add 29, 29, 0
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(4)
    lwz 4, 0x69c(5)
    add 29, 29, 0
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(4)
    lwz 4, 0x69c(5)
    add 29, 29, 0
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(4)
    lwz 4, 0x69c(5)
    add 29, 29, 0
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lbz 0, 0x0(4)
    lwz 4, 0x69c(5)
    add 29, 29, 0
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    lbz 0, 0x0(4)
    add 29, 29, 0
L_8042D358:
    clrlwi 0, 3, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF34 # blt .L_8042D294
    mulli 3, 31, 0xe0
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    clrlwi 0, 29, 16
    lwz 4, 0x69c(5)
    addi 3, 3, 0x340
    stwx 4, 5, 3
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    add 0, 3, 0
    stw 0, 0x69c(4)
    bl fn_8042D144
    bl fn_8042D0E0
    mr 3, 31
    bl fn_8042CFF0
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    addi 0, 29, 0x11
    li 3, 0x1
    lbz 4, 0x6a8(5)
    subf 0, 0, 30
    slw 3, 3, 31
    clrlwi. 30, 0, 16
    or 0, 4, 3
    stb 0, 0x6a8(5)
    .4byte 0x4082FE98 # bne .L_8042D258
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042D3E4:
    stwu 1, -0x190(1)
    stfd 31, 0x180(1)
    psq_st 31, 0x188(1), 0, 0
    stfd 30, 0x170(1)
    psq_st 30, 0x178(1), 0, 0
    stmw 25, 0x154(1)
    .4byte 0x812D92B4 # lwz r9, lbl_8053AE74@sda21(r0)
    lis 3, lbl_8048F2C0@ha
    lfdu 3, lbl_8048F2C0@l(3)
    lis 4, lbl_8048F270@ha
    lwz 6, 0x69c(9)
    addi 5, 4, lbl_8048F270@l
    .4byte 0xC8820B28 # lfd f4, lbl_80543AC8@sda21(r0)
    addi 4, 1, 0x8
    lbz 8, 0x0(6)
    addi 0, 6, 0x2
    lbz 7, 0x1(6)
    lis 6, 0x4330
    rlwimi 7, 8, 8, 16, 23
    lfd 1, 0x8(3)
    stw 0, 0x69c(9)
    clrlwi 9, 7, 16
    lfd 0, 0x10(3)
    subi 9, 9, 0x2
    lfd 31, 0x18(3)
    lfd 12, 0x20(3)
    lfd 10, 0x28(3)
    lfd 8, 0x30(3)
    lfd 6, 0x38(3)
L_8042D458:
    .4byte 0x814D92B4 # lwz r10, lbl_8053AE74@sda21(r0)
    li 8, 0x0
    lwz 7, 0x69c(10)
    addi 0, 7, 0x1
    stw 0, 0x69c(10)
    lbz 7, 0x0(7)
    .4byte 0x480001C4 # b .L_8042D634
L_8042D474:
    .4byte 0x818D92B4 # lwz r12, lbl_8053AE74@sda21(r0)
    clrlwi 10, 8, 16
    addi 0, 8, 0x1
    lbzx 25, 5, 10
    lwz 28, 0x69c(12)
    clrlwi 0, 0, 16
    addi 10, 8, 0x2
    lbzx 26, 5, 0
    addi 11, 28, 0x1
    addi 0, 8, 0x3
    stw 11, 0x69c(12)
    clrlwi 10, 10, 16
    lbzx 12, 5, 10
    clrlwi 11, 0, 16
    .4byte 0x836D92B4 # lwz r27, lbl_8053AE74@sda21(r0)
    addi 0, 8, 0x4
    lbz 31, 0x0(28)
    clrlwi 10, 0, 16
    lwz 29, 0x69c(27)
    slwi 0, 25, 2
    lbzx 11, 5, 11
    slwi 26, 26, 2
    addi 25, 29, 0x1
    lbzx 10, 5, 10
    stw 25, 0x69c(27)
    slwi 28, 12, 2
    slwi 30, 11, 2
    slwi 10, 10, 2
    .4byte 0x836D92B4 # lwz r27, lbl_8053AE74@sda21(r0)
    lbz 25, 0x0(29)
    lwz 12, 0x69c(27)
    stw 31, 0x10c(1)
    addi 11, 12, 0x1
    stw 11, 0x69c(27)
    .4byte 0x83AD92B4 # lwz r29, lbl_8053AE74@sda21(r0)
    lbz 27, 0x0(12)
    lwz 12, 0x69c(29)
    stw 6, 0x108(1)
    addi 11, 12, 0x1
    stw 11, 0x69c(29)
    lfd 2, 0x108(1)
    .4byte 0x83AD92B4 # lwz r29, lbl_8053AE74@sda21(r0)
    lbz 31, 0x0(12)
    fsubs 7, 2, 4
    lwz 12, 0x69c(29)
    stw 25, 0x114(1)
    addi 11, 12, 0x1
    stw 6, 0x110(1)
    stw 11, 0x69c(29)
    lfd 2, 0x110(1)
    lbz 11, 0x0(12)
    stw 27, 0x11c(1)
    fsubs 5, 2, 4
    stw 6, 0x118(1)
    lfd 2, 0x118(1)
    stfsx 7, 4, 0
    fsubs 7, 2, 4
    stfsx 5, 4, 26
    stw 31, 0x124(1)
    stw 6, 0x120(1)
    lfd 2, 0x120(1)
    stw 11, 0x12c(1)
    fsubs 5, 2, 4
    stw 6, 0x128(1)
    lfd 2, 0x128(1)
    stfsx 7, 4, 28
    fsubs 2, 2, 4
    stfsx 5, 4, 30
    stfsx 2, 4, 10
    .4byte 0x83AD92B4 # lwz r29, lbl_8053AE74@sda21(r0)
    addi 0, 8, 0x5
    clrlwi 11, 0, 16
    addi 10, 8, 0x6
    lwz 30, 0x69c(29)
    addi 0, 8, 0x7
    clrlwi 10, 10, 16
    lbzx 11, 5, 11
    addi 12, 30, 0x1
    clrlwi 0, 0, 16
    stw 12, 0x69c(29)
    slwi 31, 11, 2
    lbzx 10, 5, 10
    addi 8, 8, 0x8
    .4byte 0x818D92B4 # lwz r12, lbl_8053AE74@sda21(r0)
    slwi 29, 10, 2
    lbz 10, 0x0(30)
    lwz 11, 0x69c(12)
    stw 10, 0x134(1)
    addi 10, 11, 0x1
    lbzx 0, 5, 0
    stw 10, 0x69c(12)
    slwi 0, 0, 2
    .4byte 0x818D92B4 # lwz r12, lbl_8053AE74@sda21(r0)
    lbz 30, 0x0(11)
    lwz 11, 0x69c(12)
    stw 6, 0x130(1)
    addi 10, 11, 0x1
    stw 10, 0x69c(12)
    lfd 2, 0x130(1)
    lbz 10, 0x0(11)
    stw 30, 0x13c(1)
    fsubs 7, 2, 4
    stw 6, 0x138(1)
    lfd 2, 0x138(1)
    stw 10, 0x144(1)
    fsubs 5, 2, 4
    stw 6, 0x140(1)
    lfd 2, 0x140(1)
    stfsx 7, 4, 31
    fsubs 2, 2, 4
    stfsx 5, 4, 29
    stfsx 2, 4, 0
L_8042D634:
    clrlwi 0, 8, 16
    cmplwi 0, 0x40
    .4byte 0x4180FE38 # blt .L_8042D474
    clrlslwi 7, 7, 16, 8
    li 8, 0x0
    li 10, 0x0
    .4byte 0x48000134 # b .L_8042D780
L_8042D650:
    clrlslwi 0, 10, 16, 3
    clrlslwi 26, 8, 16, 2
    lfsx 5, 4, 26
    clrlwi 25, 8, 16
    lfdx 2, 3, 0
    addi 0, 25, 0x1
    clrlslwi 27, 0, 16, 2
    addi 31, 25, 0x4
    fmul 7, 5, 2
    lfsx 5, 4, 27
    addi 11, 25, 0x6
    addi 29, 25, 0x2
    fmul 11, 5, 2
    addi 30, 25, 0x3
    fmul 7, 3, 7
    addi 12, 25, 0x5
    addi 0, 25, 0x7
    clrlslwi 25, 29, 16, 2
    lfsx 5, 4, 25
    fmul 13, 1, 11
    fmul 9, 5, 2
    .4byte 0x83AD92B4 # lwz r29, lbl_8053AE74@sda21(r0)
    clrlslwi 28, 31, 16, 2
    clrlslwi 11, 11, 16, 2
    add 29, 29, 26
    frsp 5, 7
    stfsx 5, 7, 29
    clrlslwi 26, 30, 16, 2
    lfsx 7, 4, 26
    clrlslwi 29, 12, 16, 2
    fmul 30, 0, 9
    .4byte 0x818D92B4 # lwz r12, lbl_8053AE74@sda21(r0)
    lfsx 5, 4, 28
    addi 8, 8, 0x8
    fmul 11, 7, 2
    add 12, 12, 27
    frsp 13, 13
    lfsx 9, 4, 29
    frsp 30, 30
    lfsx 7, 4, 11
    fmul 9, 9, 2
    addi 10, 10, 0x1
    stfsx 13, 7, 12
    fmul 13, 31, 11
    clrlslwi 12, 0, 16, 2
    fmul 11, 5, 2
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    fmul 7, 7, 2
    lfsx 5, 4, 12
    add 0, 0, 25
    stfsx 30, 7, 0
    fmul 2, 5, 2
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    fmul 11, 12, 11
    add 0, 0, 26
    frsp 13, 13
    fmul 9, 10, 9
    stfsx 13, 7, 0
    fmul 2, 6, 2
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    frsp 5, 11
    frsp 9, 9
    add 0, 0, 28
    fmul 7, 8, 7
    stfsx 5, 7, 0
    frsp 2, 2
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    frsp 5, 7
    add 0, 0, 29
    stfsx 9, 7, 0
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    add 0, 0, 11
    stfsx 5, 7, 0
    .4byte 0x800D92B4 # lwz r0, lbl_8053AE74@sda21(r0)
    add 0, 0, 12
    stfsx 2, 7, 0
L_8042D780:
    clrlwi 0, 10, 16
    cmplwi 0, 0x8
    .4byte 0x4180FEC8 # blt .L_8042D650
    subi 9, 9, 0x41
    clrlwi. 0, 9, 16
    .4byte 0x4082FCC4 # bne .L_8042D458
    li 3, 0x0
    psq_l 31, 0x188(1), 0, 0
    lfd 31, 0x180(1)
    psq_l 30, 0x178(1), 0, 0
    lfd 30, 0x170(1)
    lmw 25, 0x154(1)
    addi 1, 1, 0x190
    blr

fn_8042D7B8:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x2
    stw 0, 0x69c(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
    lbz 0, 0x0(3)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_8042D7EC
    li 3, 0xc
    blr
L_8042D7EC:
    li 8, 0x0
    .4byte 0x4800008C # b .L_8042D87C
L_8042D7F4:
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    clrlwi 0, 8, 24
    mulli 6, 0, 0x6
    li 3, 0x1
    lwz 4, 0x69c(5)
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    addi 0, 6, 0x681
    addi 4, 6, 0x682
    .4byte 0x80ED92B4 # lwz r7, lbl_8053AE74@sda21(r0)
    lwz 6, 0x69c(7)
    addi 5, 6, 0x1
    stw 5, 0x69c(7)
    lbz 7, 0x0(6)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    extrwi 6, 7, 4, 24
    clrlwi 7, 7, 28
    stbx 6, 5, 0
    slw 0, 3, 6
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    stbx 7, 5, 4
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lbz 4, 0x6a8(4)
    and. 0, 4, 0
    .4byte 0x4082000C # bne .L_8042D860
    li 3, 0xf
    blr
L_8042D860:
    addi 0, 7, 0x1
    slw 0, 3, 0
    and. 0, 4, 0
    .4byte 0x4082000C # bne .L_8042D878
    li 3, 0xf
    blr
L_8042D878:
    addi 8, 8, 0x1
L_8042D87C:
    clrlwi 0, 8, 24
    cmplwi 0, 0x3
    .4byte 0x4180FF70 # blt .L_8042D7F4
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    li 0, 0x0
    li 3, 0x0
    lwz 4, 0x69c(5)
    addi 4, 4, 0x3
    stw 4, 0x69c(5)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lhz 4, 0x692(5)
    addi 4, 4, 0xf
    srawi 4, 4, 4
    addze 4, 4
    sth 4, 0x696(5)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    sth 0, 0x684(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    sth 0, 0x68a(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    sth 0, 0x690(4)
    blr

fn_8042D8D4:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x2
    stw 0, 0x69c(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
    lbz 0, 0x0(3)
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_8042D908
    li 3, 0xa
    blr
L_8042D908:
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lwz 4, 0x69c(5)
    lbz 3, 0x0(4)
    lbz 0, 0x1(4)
    rlwimi 0, 3, 8, 16, 23
    sth 0, 0x694(5)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x2
    stw 0, 0x69c(4)
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lwz 4, 0x69c(5)
    lbz 3, 0x0(4)
    lbz 0, 0x1(4)
    rlwimi 0, 3, 8, 16, 23
    sth 0, 0x692(5)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x2
    stw 0, 0x69c(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
    lbz 0, 0x0(3)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_8042D97C
    li 3, 0xc
    blr
L_8042D97C:
    li 6, 0x0
    .4byte 0x4800007C # b .L_8042D9FC
L_8042D984:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    clrlwi. 0, 6, 24
    lwz 3, 0x69c(4)
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
    lbz 3, 0x0(3)
    .4byte 0x4082000C # bne .L_8042D9B8
    cmplwi 3, 0x22
    .4byte 0x40820014 # bne .L_8042D9C8
L_8042D9B8:
    clrlwi. 0, 6, 24
    .4byte 0x41820014 # beq .L_8042D9D0
    cmplwi 3, 0x11
    .4byte 0x4182000C # beq .L_8042D9D0
L_8042D9C8:
    li 3, 0x13
    blr
L_8042D9D0:
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    clrlwi 0, 6, 24
    mulli 3, 0, 0x6
    addi 6, 6, 0x1
    lwz 4, 0x69c(5)
    addi 0, 4, 0x1
    stw 0, 0x69c(5)
    addi 0, 3, 0x680
    lbz 4, 0x0(4)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    stbx 4, 3, 0
L_8042D9FC:
    clrlwi 0, 6, 24
    cmplwi 0, 0x3
    .4byte 0x4180FF80 # blt .L_8042D984
    li 3, 0x0
    blr

fn_8042DA10:
    .4byte 0x808D92B0 # lwz r4, lbl_8053AE70@sda21(r0)
    lis 3, lbl_8052AAB8@ha
    addi 7, 3, lbl_8052AAB8@l
    addi 0, 4, 0x1f
    clrrwi 8, 0, 5
    addi 6, 8, 0x80
    stw 8, 0x0(7)
    addi 5, 8, 0x100
    addi 4, 8, 0x180
    addi 3, 8, 0x200
    addi 0, 8, 0x280
    stw 6, 0x4(7)
    stw 5, 0x8(7)
    stw 4, 0xc(7)
    stw 3, 0x10(7)
    stw 0, 0x14(7)
    blr

fn_8042DA54:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    mr 29, 5
    mr 30, 6
    mr 31, 7
    .4byte 0x418201C0 # beq .L_8042DC38
    cmplwi 28, 0x0
    .4byte 0x418201C0 # beq .L_8042DC40
    cmplwi 29, 0x0
    .4byte 0x418201B8 # beq .L_8042DC40
    cmplwi 30, 0x0
    .4byte 0x418201B0 # beq .L_8042DC40
    cmplwi 31, 0x0
    .4byte 0x418201B0 # beq .L_8042DC48
    bl PPCMfhid2
    rlwinm. 0, 3, 0, 3, 3
    .4byte 0x418201C4 # beq .L_8042DC68
    .4byte 0x880D92B8 # lbz r0, lbl_8053AE78@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x418201C0 # beq .L_8042DC70
    addi 0, 31, 0x1f
    .4byte 0x93ED92B0 # stw r31, lbl_8053AE70@sda21(r0)
    clrrwi 3, 0, 5
    li 4, 0x6bc
    addi 0, 3, 0x6bc
    .4byte 0x906D92B4 # stw r3, lbl_8053AE74@sda21(r0)
    .4byte 0x900D92B0 # stw r0, lbl_8053AE70@sda21(r0)
    bl fn_80041018
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    li 4, 0x21
    li 0, 0x0
    li 31, 0x0
    stw 4, 0x6a4(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    sth 0, 0x698(3)
    .4byte 0x806D92B4 # lwz r3, lbl_8053AE74@sda21(r0)
    stw 27, 0x69c(3)
L_8042DAF8:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
    lbz 0, 0x0(3)
    cmplwi 0, 0xff
    .4byte 0x40820148 # bne .L_8042DC58
    .4byte 0x48000010 # b .L_8042DB24
L_8042DB18:
    lwz 3, 0x69c(4)
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
L_8042DB24:
    .4byte 0x808D92B4 # lwz r4, lbl_8053AE74@sda21(r0)
    lwz 3, 0x69c(4)
    lbz 0, 0x0(3)
    cmplwi 0, 0xff
    .4byte 0x4182FFE4 # beq .L_8042DB18
    addi 0, 3, 0x1
    stw 0, 0x69c(4)
    lbz 0, 0x0(3)
    cmplwi 0, 0xd7
    .4byte 0x41810034 # bgt .L_8042DB7C
    cmplwi 0, 0xc4
    .4byte 0x40820014 # bne .L_8042DB64
    bl fn_8042D20C
    clrlwi. 0, 3, 24
    .4byte 0x40820104 # bne .L_8042DC60
    .4byte 0x480000B4 # b .L_8042DC14
L_8042DB64:
    cmplwi 0, 0xc0
    .4byte 0x408200E8 # bne .L_8042DC50
    bl fn_8042D8D4
    clrlwi. 0, 3, 24
    .4byte 0x408200EC # bne .L_8042DC60
    .4byte 0x4800009C # b .L_8042DC14
L_8042DB7C:
    cmplwi 0, 0xd8
    .4byte 0x4180005C # blt .L_8042DBDC
    cmplwi 0, 0xdf
    .4byte 0x41810054 # bgt .L_8042DBDC
    cmplwi 0, 0xdd
    .4byte 0x4082000C # bne .L_8042DB9C
    bl fn_8042CF9C
    .4byte 0x4800007C # b .L_8042DC14
L_8042DB9C:
    cmplwi 0, 0xdb
    .4byte 0x40820014 # bne .L_8042DBB4
    bl fn_8042D3E4
    clrlwi. 0, 3, 24
    .4byte 0x408200B4 # bne .L_8042DC60
    .4byte 0x48000064 # b .L_8042DC14
L_8042DBB4:
    cmplwi 0, 0xda
    .4byte 0x40820018 # bne .L_8042DBD0
    bl fn_8042D7B8
    clrlwi. 0, 3, 24
    .4byte 0x4082009C # bne .L_8042DC60
    li 31, 0x1
    .4byte 0x48000048 # b .L_8042DC14
L_8042DBD0:
    cmplwi 0, 0xd8
    .4byte 0x41820040 # beq .L_8042DC14
    .4byte 0x48000078 # b .L_8042DC50
L_8042DBDC:
    cmplwi 0, 0xe0
    .4byte 0x41800034 # blt .L_8042DC14
    .4byte 0x4180000C # blt .L_8042DBF0
    cmplwi 0, 0xef
    .4byte 0x4081000C # ble .L_8042DBF8
L_8042DBF0:
    cmplwi 0, 0xfe
    .4byte 0x4082005C # bne .L_8042DC50
L_8042DBF8:
    .4byte 0x80AD92B4 # lwz r5, lbl_8053AE74@sda21(r0)
    lwz 4, 0x69c(5)
    lbz 3, 0x0(4)
    lbz 0, 0x1(4)
    rlwimi 0, 3, 8, 16, 23
    add 0, 4, 0
    stw 0, 0x69c(5)
L_8042DC14:
    clrlwi. 0, 31, 24
    .4byte 0x4182FEE0 # beq .L_8042DAF8
    bl fn_8042DA10
    mr 3, 28
    mr 4, 29
    mr 5, 30
    bl fn_8042CC50
    li 3, 0x0
    .4byte 0x48000040 # b .L_8042DC74
L_8042DC38:
    li 3, 0x19
    .4byte 0x48000038 # b .L_8042DC74
L_8042DC40:
    li 3, 0x1b
    .4byte 0x48000030 # b .L_8042DC74
L_8042DC48:
    li 3, 0x1a
    .4byte 0x48000028 # b .L_8042DC74
L_8042DC50:
    li 3, 0xb
    .4byte 0x48000020 # b .L_8042DC74
L_8042DC58:
    li 3, 0x3
    .4byte 0x48000018 # b .L_8042DC74
L_8042DC60:
    clrlwi 3, 3, 24
    .4byte 0x48000010 # b .L_8042DC74
L_8042DC68:
    li 3, 0x1c
    .4byte 0x48000008 # b .L_8042DC74
L_8042DC70:
    li 3, 0x1d
L_8042DC74:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8042DC88:
    stw 4, 0x0(3)
    li 0, 0x2
    stw 0, 0x4(3)
    lwz 4, 0x0(3)
    lbz 0, 0x0(4)
    extrwi 0, 0, 3, 25
    stb 0, 0x8(3)
    lwz 4, 0x0(3)
    lbz 0, 0x0(4)
    clrlwi 0, 0, 28
    stb 0, 0x9(3)
    lwz 4, 0x0(3)
    addi 0, 4, 0x1
    stw 0, 0x0(3)
    blr

fn_8042DCC4:
    lwz 0, 0x4(3)
    clrlwi. 0, 0, 28
    .4byte 0x4082003C # bne .L_8042DD08
    lwz 4, 0x0(3)
    lbz 0, 0x0(4)
    extrwi 0, 0, 3, 25
    stb 0, 0x8(3)
    lwz 4, 0x0(3)
    lbz 0, 0x0(4)
    clrlwi 0, 0, 28
    stb 0, 0x9(3)
    lwz 4, 0x0(3)
    addi 0, 4, 0x1
    stw 0, 0x0(3)
    lwz 4, 0x4(3)
    addi 0, 4, 0x2
    stw 0, 0x4(3)
L_8042DD08:
    lwz 0, 0x4(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820020 # beq .L_8042DD30
    lwz 5, 0x0(3)
    lbz 4, 0x0(5)
    addi 0, 5, 0x1
    slwi 4, 4, 28
    stw 0, 0x0(3)
    srawi 5, 4, 28
    .4byte 0x48000014 # b .L_8042DD40
L_8042DD30:
    lwz 4, 0x0(3)
    lbz 0, 0x0(4)
    extlwi 0, 0, 4, 24
    srawi 5, 0, 28
L_8042DD40:
    lwz 4, 0x4(3)
    addi 0, 4, 0x1
    stw 0, 0x4(3)
    mr 3, 5
    blr

fn_8042DD54:
    stwu 1, -0x50(1)
    mflr 0
    cmplwi 3, 0x0
    stw 0, 0x54(1)
    stmw 21, 0x24(1)
    mr 30, 4
    .4byte 0x4182000C # beq .L_8042DD78
    cmplwi 30, 0x0
    .4byte 0x4082000C # bne .L_8042DD80
L_8042DD78:
    li 3, 0x0
    .4byte 0x48000454 # b .L_8042E1D0
L_8042DD80:
    cmpwi 5, 0x1
    lwz 5, 0x0(30)
    addi 4, 30, 0x50
    add 28, 4, 5
    .4byte 0x4082001C # bne .L_8042DDAC
    lwz 0, 0x4(30)
    mr 31, 3
    li 21, 0x1
    slwi 0, 0, 1
    add 27, 3, 0
    .4byte 0x48000010 # b .L_8042DDB8
L_8042DDAC:
    mr 31, 3
    addi 27, 3, 0x2
    li 21, 0x2
L_8042DDB8:
    cmplwi 5, 0x0
    .4byte 0x40820168 # bne .L_8042DF24
    addi 3, 1, 0x8
    bl fn_8042DC88
    lis 3, 0x1
    lis 24, 0x8000
    lha 22, 0x48(30)
    slwi 28, 21, 1
    lha 21, 0x4a(30)
    subi 26, 3, 0x1
    subi 25, 24, 0x1
    li 23, 0x0
    .4byte 0x4800012C # b .L_8042DF14
L_8042DDEC:
    addi 3, 1, 0x8
    bl fn_8042DCC4
    lbz 6, 0x10(1)
    extsh 5, 21
    lbz 0, 0x11(1)
    extsh 4, 22
    slwi 6, 6, 2
    li 7, 0x0
    add 8, 30, 6
    slw 0, 3, 0
    lha 6, 0xa(8)
    slwi 3, 0, 11
    lha 0, 0x8(8)
    mullw 6, 6, 5
    mullw 5, 0, 4
    srawi 0, 6, 31
    srawi 4, 5, 31
    addc 5, 6, 5
    adde 4, 0, 4
    srawi 0, 3, 31
    addc 5, 5, 3
    adde 4, 4, 0
    slwi 3, 5, 5
    and 0, 3, 26
    slwi 8, 4, 5
    clrlwi 0, 0, 16
    rlwimi 8, 5, 5, 27, 31
    cmplwi 0, 0x8000
    mr 0, 8
    and 4, 8, 7
    .4byte 0x40810014 # ble .L_8042DE78
    lis 0, 0x1
    addc 3, 3, 0
    adde 0, 8, 7
    .4byte 0x48000028 # b .L_8042DE9C
L_8042DE78:
    .4byte 0x40820024 # bne .L_8042DE9C
    lis 6, 0x1
    xor 4, 4, 7
    and 5, 3, 6
    xor 5, 5, 7
    or. 4, 5, 4
    .4byte 0x4182000C # beq .L_8042DE9C
    addc 3, 3, 6
    adde 0, 8, 7
L_8042DE9C:
    li 4, 0x0
    xoris 5, 0, 0x8000
    xoris 6, 4, 0x8000
    subfc 4, 3, 25
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_8042DEC8
    lis 3, 0x8000
    li 0, 0x0
    subi 3, 3, 0x1
L_8042DEC8:
    li 4, -0x1
    xoris 6, 0, 0x8000
    xoris 5, 4, 0x8000
    subfc 4, 24, 3
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x4182000C # beq .L_8042DEF0
    lis 3, 0x8000
    li 0, -0x1
L_8042DEF0:
    rotlwi 3, 3, 16
    mr 21, 22
    rlwimi 3, 0, 16, 0, 15
    addi 23, 23, 0x1
    sth 3, 0x0(27)
    mr 22, 3
    add 27, 27, 28
    sth 3, 0x0(31)
    add 31, 31, 28
L_8042DF14:
    lwz 0, 0x4(30)
    cmplw 23, 0
    .4byte 0x4180FED0 # blt .L_8042DDEC
    .4byte 0x480002AC # b .L_8042E1CC
L_8042DF24:
    addi 3, 1, 0x8
    bl fn_8042DC88
    lis 3, 0x1
    lis 26, 0x8000
    lha 23, 0x48(30)
    slwi 29, 21, 1
    lha 21, 0x4a(30)
    subi 24, 3, 0x1
    subi 25, 26, 0x1
    li 22, 0x0
    .4byte 0x48000120 # b .L_8042E06C
L_8042DF50:
    addi 3, 1, 0x8
    bl fn_8042DCC4
    lbz 6, 0x10(1)
    extsh 5, 21
    lbz 0, 0x11(1)
    extsh 4, 23
    slwi 6, 6, 2
    li 7, 0x0
    add 8, 30, 6
    slw 0, 3, 0
    lha 6, 0xa(8)
    slwi 3, 0, 11
    lha 0, 0x8(8)
    mullw 6, 6, 5
    mullw 5, 0, 4
    srawi 0, 6, 31
    srawi 4, 5, 31
    addc 5, 6, 5
    adde 4, 0, 4
    srawi 0, 3, 31
    addc 5, 5, 3
    adde 0, 4, 0
    slwi 3, 5, 5
    and 4, 3, 24
    slwi 0, 0, 5
    clrlwi 4, 4, 16
    cmplwi 4, 0x8000
    rlwimi 0, 5, 5, 27, 31
    and 4, 0, 7
    .4byte 0x40810014 # ble .L_8042DFD8
    lis 4, 0x1
    addc 3, 3, 4
    adde 0, 0, 7
    .4byte 0x48000028 # b .L_8042DFFC
L_8042DFD8:
    .4byte 0x40820024 # bne .L_8042DFFC
    lis 6, 0x1
    xor 4, 4, 7
    and 5, 3, 6
    xor 5, 5, 7
    or. 4, 5, 4
    .4byte 0x4182000C # beq .L_8042DFFC
    addc 3, 3, 6
    adde 0, 0, 7
L_8042DFFC:
    li 7, 0x0
    xoris 5, 0, 0x8000
    xoris 6, 7, 0x8000
    subfc 4, 3, 25
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_8042E028
    lis 3, 0x8000
    mr 0, 7
    subi 3, 3, 0x1
L_8042E028:
    li 7, -0x1
    xoris 6, 0, 0x8000
    xoris 5, 7, 0x8000
    subfc 4, 26, 3
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x4182000C # beq .L_8042E050
    lis 3, 0x8000
    mr 0, 7
L_8042E050:
    rotlwi 3, 3, 16
    mr 21, 23
    rlwimi 3, 0, 16, 0, 15
    addi 22, 22, 0x1
    sth 3, 0x0(27)
    mr 23, 3
    add 27, 27, 29
L_8042E06C:
    lwz 0, 0x4(30)
    cmplw 22, 0
    .4byte 0x4180FEDC # blt .L_8042DF50
    mr 4, 28
    addi 3, 1, 0x8
    bl fn_8042DC88
    lis 3, 0x1
    lis 27, 0x8000
    lha 24, 0x4c(30)
    subi 26, 3, 0x1
    lha 22, 0x4e(30)
    subi 28, 27, 0x1
    li 23, 0x0
    .4byte 0x48000120 # b .L_8042E1C0
L_8042E0A4:
    addi 3, 1, 0x8
    bl fn_8042DCC4
    lbz 6, 0x10(1)
    extsh 5, 22
    lbz 0, 0x11(1)
    extsh 4, 24
    slwi 6, 6, 2
    li 7, 0x0
    add 8, 30, 6
    slw 0, 3, 0
    lha 6, 0x2a(8)
    slwi 3, 0, 11
    lha 0, 0x28(8)
    mullw 6, 6, 5
    mullw 5, 0, 4
    srawi 0, 6, 31
    srawi 4, 5, 31
    addc 5, 6, 5
    adde 4, 0, 4
    srawi 0, 3, 31
    addc 5, 5, 3
    adde 0, 4, 0
    slwi 3, 5, 5
    and 4, 3, 26
    slwi 0, 0, 5
    clrlwi 4, 4, 16
    cmplwi 4, 0x8000
    rlwimi 0, 5, 5, 27, 31
    and 4, 0, 7
    .4byte 0x40810014 # ble .L_8042E12C
    lis 4, 0x1
    addc 3, 3, 4
    adde 0, 0, 7
    .4byte 0x48000028 # b .L_8042E150
L_8042E12C:
    .4byte 0x40820024 # bne .L_8042E150
    lis 6, 0x1
    xor 4, 4, 7
    and 5, 3, 6
    xor 5, 5, 7
    or. 4, 5, 4
    .4byte 0x4182000C # beq .L_8042E150
    addc 3, 3, 6
    adde 0, 0, 7
L_8042E150:
    li 7, 0x0
    xoris 5, 0, 0x8000
    xoris 6, 7, 0x8000
    subfc 4, 3, 28
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_8042E17C
    lis 3, 0x8000
    mr 0, 7
    subi 3, 3, 0x1
L_8042E17C:
    li 7, -0x1
    xoris 6, 0, 0x8000
    xoris 5, 7, 0x8000
    subfc 4, 27, 3
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x4182000C # beq .L_8042E1A4
    lis 3, 0x8000
    mr 0, 7
L_8042E1A4:
    rotlwi 3, 3, 16
    mr 22, 24
    rlwimi 3, 0, 16, 0, 15
    addi 23, 23, 0x1
    sth 3, 0x0(31)
    mr 24, 3
    add 31, 31, 29
L_8042E1C0:
    lwz 0, 0x4(30)
    cmplw 23, 0
    .4byte 0x4180FEDC # blt .L_8042E0A4
L_8042E1CC:
    lwz 3, 0x4(30)
L_8042E1D0:
    lmw 21, 0x24(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8042E1E4:
    sth 4, 0x1c(3)
    li 0, 0x0
    stw 0, 0x20(3)
    blr

fn_8042E1F4:
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    blr

fn_8042E1FC:
    lhz 3, 0x1c(3)
    blr

fn_8042E204:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_80428524
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E22C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042852C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E250:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_804285F4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E278:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042855C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E29C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042858C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E2C4:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042ACCC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E2EC:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042AD10
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E314:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A708
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E33C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A74C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E364:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A3E4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E388:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042A818
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E3AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042AF60
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E3D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042AFA4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E3F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A428
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E418:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042A85C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E43C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042ADDC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E464:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 4
    stw 0, 0x14(1)
    mr 0, 3
    mr 4, 0
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A458
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E494:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 4
    stw 0, 0x14(1)
    mr 0, 3
    mr 4, 0
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042A88C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E4C4:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042B02C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E4EC:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A5E0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E514:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A534
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E53C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A608
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E564:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042AFD4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E58C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042B0AC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E5B0:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A6DC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E5D8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92C4 # lwz r3, lbl_8053AE84@sda21(r0)
    bl fn_8042A778
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E5FC:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042AAA8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E624:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042A970
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E64C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042AB70
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E674:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042AFFC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E698:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042ACA0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E6C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92C0 # lwz r3, lbl_8053AE80@sda21(r0)
    bl fn_8042AD3C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E6E4:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042AE74
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E70C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042B084
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E734:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D92BC # lwz r3, lbl_8053AE7C@sda21(r0)
    bl fn_8042B054
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E758:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80529DEC@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_80529DEC@l
    bl fn_8042E780
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

