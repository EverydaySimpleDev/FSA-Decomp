# 901KB-gap non-actor manager block: 56 functions, 74,068 bytes
# (0x803BBF08-0x803CE05C), fully contiguous at the extab AND
# extabindex level with the neighboring pre-existing extab_803baef4.s
# and extab_803ce05c.s entries (zero gap on either side). Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort
# (see project_fsa_901kb_gap_roster.md) - no actor ctor call pattern
# here, generic manager/system code. Found+verified via spanwalk.py
# and resolvefiles.py. 1 ctor (fn_803BC4C8) placed at
# 0x8045C55C-0x8045C560, found by direct whole-table scan and
# cross-checked for overlap against splits.txt.

.section extab, "a"
.balign 4
.global etb_8000F714
etb_8000F714:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000F714, 8

.global etb_8000F71C
etb_8000F71C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F71C, 8

.global etb_8000F724
etb_8000F724:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_8000F724, 8

.global etb_8000F72C
etb_8000F72C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000F72C, 8

.global etb_8000F734
etb_8000F734:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000F734, 8

.global etb_8000F73C
etb_8000F73C:
    .4byte 0x41CA0000
    .4byte 0x00000000
.size etb_8000F73C, 8

.global etb_8000F744
etb_8000F744:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000F744, 8

.global etb_8000F74C
etb_8000F74C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000F74C, 8

.global etb_8000F754
etb_8000F754:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F754, 8

.global etb_8000F75C
etb_8000F75C:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000F75C, 8

.global etb_8000F764
etb_8000F764:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F764, 8

.global etb_8000F76C
etb_8000F76C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F76C, 8

.global etb_8000F774
etb_8000F774:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000F774, 8

.global etb_8000F77C
etb_8000F77C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000F77C, 8

.global etb_8000F784
etb_8000F784:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000F784, 8

.global etb_8000F78C
etb_8000F78C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F78C, 8

.global etb_8000F794
etb_8000F794:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000F794, 8

.global etb_8000F79C
etb_8000F79C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F79C, 8

.global etb_8000F7A4
etb_8000F7A4:
    .4byte 0x900A0000
    .4byte 0x00000000
.size etb_8000F7A4, 8

.global etb_8000F7AC
etb_8000F7AC:
    .4byte 0x780A0000
    .4byte 0x00000000
.size etb_8000F7AC, 8

.global etb_8000F7B4
etb_8000F7B4:
    .4byte 0x580A0000
    .4byte 0x00000000
.size etb_8000F7B4, 8

.global etb_8000F7BC
etb_8000F7BC:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000F7BC, 8

.global etb_8000F7C4
etb_8000F7C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F7C4, 8

.global etb_8000F7CC
etb_8000F7CC:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_8000F7CC, 8

.global etb_8000F7D4
etb_8000F7D4:
    .4byte 0x680A0000
    .4byte 0x00000000
.size etb_8000F7D4, 8

.global etb_8000F7DC
etb_8000F7DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F7DC, 8

.global etb_8000F7E4
etb_8000F7E4:
    .4byte 0x800A0000
    .4byte 0x00000000
.size etb_8000F7E4, 8

.global etb_8000F7EC
etb_8000F7EC:
    .4byte 0x780A0000
    .4byte 0x00000000
.size etb_8000F7EC, 8

.global etb_8000F7F4
etb_8000F7F4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000F7F4, 8

.global etb_8000F7FC
etb_8000F7FC:
    .4byte 0x900A0000
    .4byte 0x00000000
.size etb_8000F7FC, 8

.global etb_8000F804
etb_8000F804:
    .4byte 0x900A0000
    .4byte 0x00000000
.size etb_8000F804, 8

.global etb_8000F80C
etb_8000F80C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000F80C, 8

.global etb_8000F814
etb_8000F814:
    .4byte 0x900A0000
    .4byte 0x00000000
.size etb_8000F814, 8

.global etb_8000F81C
etb_8000F81C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000F81C, 8

.global etb_8000F824
etb_8000F824:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F824, 8

.global etb_8000F82C
etb_8000F82C:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000F82C, 8

.global etb_8000F834
etb_8000F834:
    .4byte 0x700A0000
    .4byte 0x00000000
.size etb_8000F834, 8

.global etb_8000F83C
etb_8000F83C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F83C, 8

.global etb_8000F844
etb_8000F844:
    .4byte 0x788A0000
    .4byte 0x00000000
.size etb_8000F844, 8

.global etb_8000F84C
etb_8000F84C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000F84C, 8

.global etb_8000F854
etb_8000F854:
    .4byte 0x800A0000
    .4byte 0x00000000
.size etb_8000F854, 8

.global etb_8000F85C
etb_8000F85C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F85C, 8

.global etb_8000F864
etb_8000F864:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000F864, 8

.global etb_8000F86C
etb_8000F86C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F86C, 8

.global etb_8000F874
etb_8000F874:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F874, 8

.global etb_8000F87C
etb_8000F87C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F87C, 8

.global etb_8000F884
etb_8000F884:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F884, 8

.global etb_8000F88C
etb_8000F88C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F88C, 8

.global etb_8000F894
etb_8000F894:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F894, 8

.global etb_8000F89C
etb_8000F89C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F89C, 8

.global etb_8000F8A4
etb_8000F8A4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F8A4, 8

.global etb_8000F8AC
etb_8000F8AC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F8AC, 8

.global etb_8000F8B4
etb_8000F8B4:
    .4byte 0x780A0000
    .4byte 0x00000000
.size etb_8000F8B4, 8

.global etb_8000F8BC
etb_8000F8BC:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000F8BC, 8

.global etb_8000F8C4
etb_8000F8C4:
    .4byte 0x900A0000
    .4byte 0x00000000
.size etb_8000F8C4, 8

.global etb_8000F8CC
etb_8000F8CC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000F8CC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F468
eti_8001F468:
    .4byte fn_803BBF08
    .4byte 0x000005C0
    .4byte etb_8000F714
.size eti_8001F468, 12

.global eti_8001F474
eti_8001F474:
    .4byte fn_803BC4C8
    .4byte 0x00000228
    .4byte etb_8000F71C
.size eti_8001F474, 12

.global eti_8001F480
eti_8001F480:
    .4byte fn_803BC6F0
    .4byte 0x00000EF0
    .4byte etb_8000F724
.size eti_8001F480, 12

.global eti_8001F48C
eti_8001F48C:
    .4byte fn_803BD5E0
    .4byte 0x00000764
    .4byte etb_8000F72C
.size eti_8001F48C, 12

.global eti_8001F498
eti_8001F498:
    .4byte fn_803BDD44
    .4byte 0x00000694
    .4byte etb_8000F734
.size eti_8001F498, 12

.global eti_8001F4A4
eti_8001F4A4:
    .4byte fn_803BE3D8
    .4byte 0x00000C2C
    .4byte etb_8000F73C
.size eti_8001F4A4, 12

.global eti_8001F4B0
eti_8001F4B0:
    .4byte fn_803BF004
    .4byte 0x000003B8
    .4byte etb_8000F744
.size eti_8001F4B0, 12

.global eti_8001F4BC
eti_8001F4BC:
    .4byte fn_803BF3BC
    .4byte 0x000002DC
    .4byte etb_8000F74C
.size eti_8001F4BC, 12

.global eti_8001F4C8
eti_8001F4C8:
    .4byte fn_803BF698
    .4byte 0x0000032C
    .4byte etb_8000F754
.size eti_8001F4C8, 12

.global eti_8001F4D4
eti_8001F4D4:
    .4byte fn_803BF9C4
    .4byte 0x00000654
    .4byte etb_8000F75C
.size eti_8001F4D4, 12

.global eti_8001F4E0
eti_8001F4E0:
    .4byte fn_803C0018
    .4byte 0x000002B4
    .4byte etb_8000F764
.size eti_8001F4E0, 12

.global eti_8001F4EC
eti_8001F4EC:
    .4byte fn_803C02CC
    .4byte 0x0000030C
    .4byte etb_8000F76C
.size eti_8001F4EC, 12

.global eti_8001F4F8
eti_8001F4F8:
    .4byte fn_803C05D8
    .4byte 0x0000045C
    .4byte etb_8000F774
.size eti_8001F4F8, 12

.global eti_8001F504
eti_8001F504:
    .4byte fn_803C0A34
    .4byte 0x00000620
    .4byte etb_8000F77C
.size eti_8001F504, 12

.global eti_8001F510
eti_8001F510:
    .4byte fn_803C1054
    .4byte 0x000002EC
    .4byte etb_8000F784
.size eti_8001F510, 12

.global eti_8001F51C
eti_8001F51C:
    .4byte fn_803C1340
    .4byte 0x000003F4
    .4byte etb_8000F78C
.size eti_8001F51C, 12

.global eti_8001F528
eti_8001F528:
    .4byte fn_803C1734
    .4byte 0x00000A74
    .4byte etb_8000F794
.size eti_8001F528, 12

.global eti_8001F534
eti_8001F534:
    .4byte fn_803C21A8
    .4byte 0x00000314
    .4byte etb_8000F79C
.size eti_8001F534, 12

.global eti_8001F540
eti_8001F540:
    .4byte fn_803C24BC
    .4byte 0x00000968
    .4byte etb_8000F7A4
.size eti_8001F540, 12

.global eti_8001F54C
eti_8001F54C:
    .4byte fn_803C2E24
    .4byte 0x00000AE0
    .4byte etb_8000F7AC
.size eti_8001F54C, 12

.global eti_8001F558
eti_8001F558:
    .4byte fn_803C3904
    .4byte 0x00000750
    .4byte etb_8000F7B4
.size eti_8001F558, 12

.global eti_8001F564
eti_8001F564:
    .4byte fn_803C4054
    .4byte 0x000002DC
    .4byte etb_8000F7BC
.size eti_8001F564, 12

.global eti_8001F570
eti_8001F570:
    .4byte fn_803C4330
    .4byte 0x000002F8
    .4byte etb_8000F7C4
.size eti_8001F570, 12

.global eti_8001F57C
eti_8001F57C:
    .4byte fn_803C4628
    .4byte 0x00000B68
    .4byte etb_8000F7CC
.size eti_8001F57C, 12

.global eti_8001F588
eti_8001F588:
    .4byte fn_803C5190
    .4byte 0x0000060C
    .4byte etb_8000F7D4
.size eti_8001F588, 12

.global eti_8001F594
eti_8001F594:
    .4byte fn_803C579C
    .4byte 0x0000006C
    .4byte etb_8000F7DC
.size eti_8001F594, 12

.global eti_8001F5A0
eti_8001F5A0:
    .4byte fn_803C5808
    .4byte 0x000009BC
    .4byte etb_8000F7E4
.size eti_8001F5A0, 12

.global eti_8001F5AC
eti_8001F5AC:
    .4byte fn_803C61C4
    .4byte 0x000004CC
    .4byte etb_8000F7EC
.size eti_8001F5AC, 12

.global eti_8001F5B8
eti_8001F5B8:
    .4byte fn_803C6690
    .4byte 0x00000108
    .4byte etb_8000F7F4
.size eti_8001F5B8, 12

.global eti_8001F5C4
eti_8001F5C4:
    .4byte fn_803C6798
    .4byte 0x00000920
    .4byte etb_8000F7FC
.size eti_8001F5C4, 12

.global eti_8001F5D0
eti_8001F5D0:
    .4byte fn_803C70B8
    .4byte 0x00000BE8
    .4byte etb_8000F804
.size eti_8001F5D0, 12

.global eti_8001F5DC
eti_8001F5DC:
    .4byte fn_803C7CA0
    .4byte 0x000002DC
    .4byte etb_8000F80C
.size eti_8001F5DC, 12

.global eti_8001F5E8
eti_8001F5E8:
    .4byte fn_803C7F7C
    .4byte 0x00000C04
    .4byte etb_8000F814
.size eti_8001F5E8, 12

.global eti_8001F5F4
eti_8001F5F4:
    .4byte fn_803C8B80
    .4byte 0x00000738
    .4byte etb_8000F81C
.size eti_8001F5F4, 12

.global eti_8001F600
eti_8001F600:
    .4byte fn_803C92B8
    .4byte 0x00000080
    .4byte etb_8000F824
.size eti_8001F600, 12

.global eti_8001F60C
eti_8001F60C:
    .4byte fn_803C9338
    .4byte 0x00000560
    .4byte etb_8000F82C
.size eti_8001F60C, 12

.global eti_8001F618
eti_8001F618:
    .4byte fn_803C9898
    .4byte 0x0000067C
    .4byte etb_8000F834
.size eti_8001F618, 12

.global eti_8001F624
eti_8001F624:
    .4byte fn_803C9F14
    .4byte 0x0000006C
    .4byte etb_8000F83C
.size eti_8001F624, 12

.global eti_8001F630
eti_8001F630:
    .4byte fn_803C9F80
    .4byte 0x00000C2C
    .4byte etb_8000F844
.size eti_8001F630, 12

.global eti_8001F63C
eti_8001F63C:
    .4byte fn_803CABAC
    .4byte 0x00000830
    .4byte etb_8000F84C
.size eti_8001F63C, 12

.global eti_8001F648
eti_8001F648:
    .4byte fn_803CB3DC
    .4byte 0x00000A5C
    .4byte etb_8000F854
.size eti_8001F648, 12

.global eti_8001F654
eti_8001F654:
    .4byte fn_803CBE38
    .4byte 0x000000A8
    .4byte etb_8000F85C
.size eti_8001F654, 12

.global eti_8001F660
eti_8001F660:
    .4byte fn_803CBEE0
    .4byte 0x0000002C
    .4byte etb_8000F864
.size eti_8001F660, 12

.global eti_8001F66C
eti_8001F66C:
    .4byte fn_803CBF0C
    .4byte 0x0000013C
    .4byte etb_8000F86C
.size eti_8001F66C, 12

.global eti_8001F678
eti_8001F678:
    .4byte fn_803CC048
    .4byte 0x00000090
    .4byte etb_8000F874
.size eti_8001F678, 12

.global eti_8001F684
eti_8001F684:
    .4byte fn_803CC0D8
    .4byte 0x000000A4
    .4byte etb_8000F87C
.size eti_8001F684, 12

.global eti_8001F690
eti_8001F690:
    .4byte fn_803CC17C
    .4byte 0x00000140
    .4byte etb_8000F884
.size eti_8001F690, 12

.global eti_8001F69C
eti_8001F69C:
    .4byte fn_803CC2BC
    .4byte 0x00000120
    .4byte etb_8000F88C
.size eti_8001F69C, 12

.global eti_8001F6A8
eti_8001F6A8:
    .4byte fn_803CC3DC
    .4byte 0x000000B4
    .4byte etb_8000F894
.size eti_8001F6A8, 12

.global eti_8001F6B4
eti_8001F6B4:
    .4byte fn_803CC490
    .4byte 0x000000AC
    .4byte etb_8000F89C
.size eti_8001F6B4, 12

.global eti_8001F6C0
eti_8001F6C0:
    .4byte fn_803CC53C
    .4byte 0x000000F0
    .4byte etb_8000F8A4
.size eti_8001F6C0, 12

.global eti_8001F6CC
eti_8001F6CC:
    .4byte fn_803CC62C
    .4byte 0x00000134
    .4byte etb_8000F8AC
.size eti_8001F6CC, 12

.global eti_8001F6D8
eti_8001F6D8:
    .4byte fn_803CC760
    .4byte 0x00000B7C
    .4byte etb_8000F8B4
.size eti_8001F6D8, 12

.global eti_8001F6E4
eti_8001F6E4:
    .4byte fn_803CD2DC
    .4byte 0x00000480
    .4byte etb_8000F8BC
.size eti_8001F6E4, 12

.global eti_8001F6F0
eti_8001F6F0:
    .4byte fn_803CD75C
    .4byte 0x0000078C
    .4byte etb_8000F8C4
.size eti_8001F6F0, 12

.global eti_8001F6FC
eti_8001F6FC:
    .4byte fn_803CDEE8
    .4byte 0x00000174
    .4byte etb_8000F8CC
.size eti_8001F6FC, 12

.text
.balign 4
.global fn_803BBF08
.global fn_803BC4C8
.global fn_803BC6F0
.global fn_803BD5E0
.global fn_803BDD44
.global fn_803BE3D8
.global fn_803BF004
.global fn_803BF3BC
.global fn_803BF698
.global fn_803BF9C4
.global fn_803C0018
.global fn_803C02CC
.global fn_803C05D8
.global fn_803C0A34
.global fn_803C1054
.global fn_803C1340
.global fn_803C1734
.global fn_803C21A8
.global fn_803C24BC
.global fn_803C2E24
.global fn_803C3904
.global fn_803C4054
.global fn_803C4330
.global fn_803C4628
.global fn_803C5190
.global fn_803C579C
.global fn_803C5808
.global fn_803C61C4
.global fn_803C6690
.global fn_803C6798
.global fn_803C70B8
.global fn_803C7CA0
.global fn_803C7F7C
.global fn_803C8B80
.global fn_803C92B8
.global fn_803C9338
.global fn_803C9898
.global fn_803C9F14
.global fn_803C9F80
.global fn_803CABAC
.global fn_803CB3DC
.global fn_803CBE38
.global fn_803CBEE0
.global fn_803CBF0C
.global fn_803CC048
.global fn_803CC0D8
.global fn_803CC17C
.global fn_803CC2BC
.global fn_803CC3DC
.global fn_803CC490
.global fn_803CC53C
.global fn_803CC62C
.global fn_803CC760
.global fn_803CD2DC
.global fn_803CD75C
.global fn_803CDEE8

fn_803BBF08:
    stwu 1, -0x130(1)
    mflr 0
    lis 5, lbl_8051E2C0@ha
    lis 7, lbl_80476578@ha
    stw 0, 0x134(1)
    stmw 25, 0x114(1)
    mr 25, 4
    addi 29, 5, lbl_8051E2C0@l
    mr 31, 3
    addi 26, 7, lbl_80476578@l
    mr 28, 6
    addi 3, 29, 0x4000
    li 4, 0x20
    addi 5, 26, 0x0
    crclr 6
    addi 3, 3, 0x1c00
    bl fn_8006B414
    bl OSGetTime
    addi 5, 1, 0x8
    bl OSTicksToCalendarTime
    lwz 4, 0x18(1)
    addi 3, 29, 0x4000
    lwz 7, 0x14(1)
    addi 5, 26, 0x18
    addi 6, 4, 0x1
    li 4, 0x20
    crclr 6
    addi 3, 3, 0x1c20
    bl fn_8006B414
    lis 3, 0x5449
    addi 4, 26, 0x28
    addi 3, 3, 0x4d47
    bl fn_804030C4
    lis 4, 0x5449
    mr 27, 3
    addi 3, 4, 0x4d47
    addi 4, 26, 0x40
    bl fn_804030C4
    lhz 0, 0xa(27)
    mr 26, 3
    lwz 4, 0x1c(27)
    addi 3, 29, 0x4000
    slwi 5, 0, 1
    add 4, 27, 4
    addi 5, 5, 0xc00
    bl memcpy
    lhz 0, 0xa(26)
    addi 3, 29, 0x4000
    lwz 4, 0x1c(26)
    addi 3, 3, 0xe00
    slwi 5, 0, 1
    add 4, 26, 4
    addi 5, 5, 0x400
    bl memcpy
    mr 3, 31
    addi 4, 29, 0x4000
    li 5, 0x2000
    li 6, 0x0
    bl fn_80058238
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BC000
    .4byte 0x480004B8 # b .L_803BC4B4
L_803BC000:
    lis 3, lbl_8051C1A0@ha
    lwz 4, 0x4(31)
    addi 30, 3, lbl_8051C1A0@l
    addi 5, 1, 0x9c
    lbz 3, 0x1ff4(30)
    bl fn_80058478
    lwz 0, 0xcc(1)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_803BC0D8
    lwz 0, 0xd4(1)
    cmplwi 0, 0x1c00
    .4byte 0x408200AC # bne .L_803BC0D8
    lbz 3, 0xca(1)
    clrlwi 0, 3, 30
    cmpwi 0, 0x1
    .4byte 0x4082009C # bne .L_803BC0D8
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x40820094 # bne .L_803BC0D8
    lhz 3, 0xd0(1)
    clrlwi 0, 3, 30
    cmpwi 0, 0x1
    .4byte 0x40820084 # bne .L_803BC0D8
    extrwi. 0, 3, 2, 28
    .4byte 0x4082007C # bne .L_803BC0D8
    extrwi. 0, 3, 2, 26
    .4byte 0x40820074 # bne .L_803BC0D8
    extrwi. 0, 3, 2, 24
    .4byte 0x4082006C # bne .L_803BC0D8
    extrwi. 0, 3, 2, 22
    .4byte 0x40820064 # bne .L_803BC0D8
    extrwi. 0, 3, 2, 20
    .4byte 0x4082005C # bne .L_803BC0D8
    extrwi. 0, 3, 2, 18
    .4byte 0x40820054 # bne .L_803BC0D8
    extrwi. 0, 3, 2, 16
    .4byte 0x4082004C # bne .L_803BC0D8
    lhz 3, 0xd2(1)
    clrlwi 0, 3, 30
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_803BC0D8
    extrwi. 0, 3, 2, 28
    .4byte 0x40820034 # bne .L_803BC0D8
    extrwi. 0, 3, 2, 26
    .4byte 0x4082002C # bne .L_803BC0D8
    extrwi. 0, 3, 2, 24
    .4byte 0x40820024 # bne .L_803BC0D8
    extrwi. 0, 3, 2, 22
    .4byte 0x4082001C # bne .L_803BC0D8
    extrwi. 0, 3, 2, 20
    .4byte 0x40820014 # bne .L_803BC0D8
    extrwi. 0, 3, 2, 18
    .4byte 0x4082000C # bne .L_803BC0D8
    extrwi. 0, 3, 2, 16
    .4byte 0x4182000C # beq .L_803BC0E0
L_803BC0D8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_803BC0E4
L_803BC0E0:
    li 0, 0x1
L_803BC0E4:
    clrlwi. 0, 0, 24
    .4byte 0x40820074 # bne .L_803BC15C
    addi 3, 29, 0x0
    li 4, 0x0
    li 5, 0x2000
    bl memset
    mr 3, 31
    addi 4, 29, 0x0
    li 5, 0x2000
    li 6, 0x2000
    bl fn_80058238
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BC11C
    .4byte 0x4800039C # b .L_803BC4B4
L_803BC11C:
    mr 3, 31
    addi 4, 29, 0x0
    li 5, 0x2000
    li 6, 0x4000
    bl fn_80058238
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BC13C
    .4byte 0x4800037C # b .L_803BC4B4
L_803BC13C:
    addi 3, 29, 0x6000
    li 4, 0x0
    li 5, 0x1d4c
    bl memset
    addi 3, 29, 0x7d60
    li 4, 0x0
    li 5, 0x1d4c
    bl memset
L_803BC15C:
    addi 27, 29, 0x0
    li 0, 0x0
    addi 26, 29, 0x2000
    sth 0, 0x0(27)
    mr 4, 25
    mr 5, 28
    sth 0, 0x0(26)
    addi 3, 27, 0xa
    bl memcpy
    mr 4, 25
    mr 5, 28
    addi 3, 26, 0xa
    bl memcpy
    addi 3, 27, 0x262
    addi 4, 29, 0x6000
    li 5, 0x1d4c
    bl memcpy
    addi 3, 26, 0x262
    addi 4, 29, 0x7d60
    li 5, 0x1d4c
    bl memcpy
    lis 3, lbl_80529DEC@ha
    li 0, 0x7ff
    addi 3, 3, lbl_80529DEC@l
    mr 7, 27
    lbz 5, 0x245(3)
    li 28, 0x0
    lbz 4, 0x244(3)
    li 6, 0x0
    lbz 3, 0x246(3)
    stb 5, 0x2(26)
    stb 5, 0x2(27)
    stb 4, 0x3(26)
    stb 4, 0x3(27)
    stb 3, 0x4(26)
    stb 3, 0x4(27)
    mtctr 0
L_803BC1F0:
    lhz 3, 0x0(7)
    nor 0, 3, 3
    add 6, 6, 3
    lhz 3, 0x2(7)
    add 0, 28, 0
    clrlwi 28, 0, 16
    addi 7, 7, 0x4
    nor 0, 3, 3
    add 6, 6, 3
    add 0, 28, 0
    clrlwi 28, 0, 16
    .4byte 0x4200FFD4 # bdnz .L_803BC1F0
    rlwimi 28, 6, 16, 0, 15
    li 0, 0x7ff
    stw 28, 0x1ffc(27)
    mr 3, 26
    li 27, 0x0
    li 4, 0x0
    mtctr 0
L_803BC23C:
    lhz 5, 0x0(3)
    nor 0, 5, 5
    add 4, 4, 5
    lhz 5, 0x2(3)
    add 0, 27, 0
    clrlwi 27, 0, 16
    addi 3, 3, 0x4
    nor 0, 5, 5
    add 4, 4, 5
    add 0, 27, 0
    clrlwi 27, 0, 16
    .4byte 0x4200FFD4 # bdnz .L_803BC23C
    rlwimi 27, 4, 16, 0, 15
    mr 3, 31
    stw 27, 0x1ffc(26)
    addi 4, 29, 0x0
    li 5, 0x2000
    li 6, 0x2000
    bl fn_80058238
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BC294
    .4byte 0x48000224 # b .L_803BC4B4
L_803BC294:
    mr 3, 31
    addi 4, 29, 0x0
    li 5, 0x2000
    li 6, 0x2000
    bl fn_80057EBC
    mr. 7, 3
    .4byte 0x41820008 # beq .L_803BC2B4
    .4byte 0x48000204 # b .L_803BC4B4
L_803BC2B4:
    li 0, 0x7ff
    addi 5, 29, 0x0
    li 3, 0x0
    li 4, 0x0
    mtctr 0
L_803BC2C8:
    lhz 6, 0x0(5)
    nor 0, 6, 6
    add 4, 4, 6
    lhz 6, 0x2(5)
    add 0, 3, 0
    clrlwi 3, 0, 16
    addi 5, 5, 0x4
    nor 0, 6, 6
    add 4, 4, 6
    add 0, 3, 0
    clrlwi 3, 0, 16
    .4byte 0x4200FFD4 # bdnz .L_803BC2C8
    rlwimi 3, 4, 16, 0, 15
    cmplw 28, 3
    .4byte 0x4182000C # beq .L_803BC30C
    mr 3, 7
    .4byte 0x480001AC # b .L_803BC4B4
L_803BC30C:
    mr 3, 31
    addi 4, 29, 0x2000
    li 5, 0x2000
    li 6, 0x4000
    bl fn_80058238
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BC32C
    .4byte 0x4800018C # b .L_803BC4B4
L_803BC32C:
    mr 3, 31
    addi 4, 29, 0x2000
    li 5, 0x2000
    li 6, 0x4000
    bl fn_80057EBC
    mr. 28, 3
    .4byte 0x41820008 # beq .L_803BC34C
    .4byte 0x4800016C # b .L_803BC4B4
L_803BC34C:
    li 0, 0x7ff
    addi 5, 29, 0x2000
    li 3, 0x0
    li 4, 0x0
    mtctr 0
L_803BC360:
    lhz 6, 0x0(5)
    nor 0, 6, 6
    add 4, 4, 6
    lhz 6, 0x2(5)
    add 0, 3, 0
    clrlwi 3, 0, 16
    addi 5, 5, 0x4
    nor 0, 6, 6
    add 4, 4, 6
    add 0, 3, 0
    clrlwi 3, 0, 16
    .4byte 0x4200FFD4 # bdnz .L_803BC360
    rlwimi 3, 4, 16, 0, 15
    cmplw 27, 3
    .4byte 0x4182000C # beq .L_803BC3A4
    mr 3, 28
    .4byte 0x48000114 # b .L_803BC4B4
L_803BC3A4:
    lbz 3, 0x1ff4(30)
    addi 5, 1, 0x30
    lwz 4, 0x4(31)
    bl fn_80058478
    lhz 5, 0x64(1)
    li 4, 0x0
    lhz 3, 0x66(1)
    li 0, 0x1c00
    clrrwi 5, 5, 2
    lbz 7, 0x5e(1)
    ori 5, 5, 0x1
    clrrwi 3, 3, 2
    ori 6, 3, 0x3
    clrrwi 8, 7, 2
    clrlwi 3, 5, 16
    sth 5, 0x64(1)
    rlwinm 7, 3, 0, 30, 27
    ori 9, 8, 0x1
    clrlwi 3, 6, 16
    sth 6, 0x66(1)
    rlwinm 5, 3, 0, 30, 27
    clrlwi 6, 7, 16
    sth 7, 0x64(1)
    rlwinm 7, 6, 0, 28, 25
    clrlwi 3, 5, 16
    clrlwi 8, 9, 24
    rlwinm 6, 3, 0, 28, 25
    sth 5, 0x66(1)
    clrlwi 3, 7, 16
    rlwinm 12, 8, 0, 30, 28
    clrlwi 5, 6, 16
    sth 7, 0x64(1)
    rlwinm 7, 3, 0, 26, 23
    lbz 3, 0x1ff4(30)
    rlwinm 8, 5, 0, 26, 23
    sth 6, 0x66(1)
    clrlwi 5, 7, 16
    rlwinm 10, 5, 0, 24, 21
    stb 9, 0x5e(1)
    clrlwi 9, 10, 16
    clrlwi 6, 8, 16
    sth 7, 0x64(1)
    rlwinm 7, 6, 0, 24, 21
    rlwinm 11, 9, 0, 22, 19
    addi 5, 1, 0x30
    sth 8, 0x66(1)
    clrlwi 6, 7, 16
    rlwinm 8, 6, 0, 22, 19
    clrlwi 9, 11, 16
    sth 10, 0x64(1)
    rlwinm 10, 9, 0, 20, 17
    clrlwi 6, 8, 16
    clrlwi 9, 11, 20
    sth 7, 0x66(1)
    rlwinm 7, 6, 0, 20, 17
    clrlwi 6, 8, 20
    sth 11, 0x64(1)
    sth 8, 0x66(1)
    sth 10, 0x64(1)
    sth 7, 0x66(1)
    stw 4, 0x60(1)
    stw 0, 0x68(1)
    stb 12, 0x5e(1)
    sth 9, 0x64(1)
    sth 6, 0x66(1)
    lwz 4, 0x4(31)
    bl fn_80058700
    mr 3, 28
L_803BC4B4:
    lmw 25, 0x114(1)
    lwz 0, 0x134(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

fn_803BC4C8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8051E2C0@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_8051E2C0@l
    stw 31, 0xc(1)
    addis 31, 3, 0x1
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC51C
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    subi 5, 31, 0x6554
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_803BC51C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC554
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    subi 5, 31, 0x6548
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_803BC554:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC58C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    subi 5, 31, 0x653c
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_803BC58C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC5C4
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    subi 5, 31, 0x6530
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_803BC5C4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC5FC
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    subi 5, 31, 0x6524
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_803BC5FC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC634
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    subi 5, 31, 0x6518
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_803BC634:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC66C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    subi 5, 31, 0x650c
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_803BC66C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC6A4
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    subi 5, 31, 0x6500
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_803BC6A4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803BC6DC
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    subi 5, 31, 0x64f4
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_803BC6DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803BC6F0:
    stwu 1, -0x3f0(1)
    mflr 0
    stw 0, 0x3f4(1)
    stfd 31, 0x3e0(1)
    psq_st 31, 0x3e8(1), 0, 0
    stmw 27, 0x3cc(1)
    fmr 31, 1
    .4byte 0xC00204D8 # lfs f0, lbl_80543478@sda21(r0)
    lis 5, lbl_804765D0@ha
    mr 29, 3
    addi 31, 5, lbl_804765D0@l
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803BC728
    fmr 31, 0
L_803BC728:
    .4byte 0xC00204B8 # lfs f0, lbl_80543458@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800008 # bge .L_803BC738
    fmr 31, 0
L_803BC738:
    lbz 28, 0xe8(29)
    lis 9, 0x4330
    lbz 11, 0xfc(29)
    li 10, -0x1
    lbz 12, 0xfd(29)
    subfic 3, 28, 0x80
    lbz 30, 0xfe(29)
    neg 0, 11
    lbz 27, 0xe9(29)
    neg 6, 12
    neg 5, 30
    xoris 8, 0, 0x8000
    subfic 0, 27, 0x80
    xoris 7, 6, 0x8000
    xoris 6, 5, 0x8000
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    stw 8, 0xfc(1)
    .4byte 0xC82204C8 # lfd f1, lbl_80543468@sda21(r0)
    li 5, 0x0
    stw 9, 0xf8(1)
    .4byte 0xC80204D0 # lfd f0, lbl_80543470@sda21(r0)
    lfd 2, 0xf8(1)
    stw 11, 0x104(1)
    fsubs 4, 2, 1
    stw 9, 0x100(1)
    lfd 2, 0x100(1)
    stw 7, 0x114(1)
    fsubs 3, 2, 0
    stw 9, 0x110(1)
    lfd 2, 0x110(1)
    fmadds 4, 4, 31, 3
    stw 10, 0xf4(1)
    fsubs 3, 2, 1
    fctiwz 4, 4
    stw 12, 0x11c(1)
    stw 9, 0x118(1)
    lfd 2, 0x118(1)
    stfd 4, 0x108(1)
    fsubs 2, 2, 0
    lwz 8, 0x10c(1)
    stw 6, 0x12c(1)
    fmadds 3, 3, 31, 2
    stw 9, 0x128(1)
    lfd 2, 0x128(1)
    fctiwz 4, 3
    stw 30, 0x134(1)
    fsubs 3, 2, 1
    stw 9, 0x130(1)
    lfd 2, 0x130(1)
    stfd 4, 0x120(1)
    fsubs 2, 2, 0
    lwz 7, 0x124(1)
    stw 3, 0x144(1)
    fmadds 3, 3, 31, 2
    stw 9, 0x140(1)
    lfd 2, 0x140(1)
    fctiwz 4, 3
    stw 28, 0x14c(1)
    fsubs 3, 2, 1
    stw 9, 0x148(1)
    lfd 2, 0x148(1)
    stfd 4, 0x138(1)
    fsubs 2, 2, 0
    lwz 6, 0x13c(1)
    stw 0, 0x15c(1)
    fmadds 3, 3, 31, 2
    stw 9, 0x158(1)
    lfd 2, 0x158(1)
    fctiwz 4, 3
    stw 27, 0x164(1)
    fsubs 3, 2, 1
    stw 9, 0x160(1)
    lfd 2, 0x160(1)
    stfd 4, 0x150(1)
    fsubs 2, 2, 0
    stw 10, 0xf0(1)
    lwz 3, 0x154(1)
    fmadds 2, 3, 31, 2
    stb 8, 0xf4(1)
    stb 7, 0xf5(1)
    fctiwz 2, 2
    stb 6, 0xf6(1)
    stfd 2, 0x168(1)
    lwz 0, 0x16c(1)
    stb 5, 0xf7(1)
    stb 3, 0xf0(1)
    stb 0, 0xf1(1)
    lbz 7, 0xea(29)
    li 5, 0xff
    lwz 3, 0xf4(1)
    slwi 30, 4, 3
    subfic 4, 7, 0x80
    addi 0, 31, 0x5d8
    xoris 4, 4, 0x8000
    stw 9, 0x170(1)
    add 6, 0, 30
    stw 4, 0x174(1)
    lfd 2, 0x170(1)
    stw 7, 0x17c(1)
    fsubs 2, 2, 1
    stw 9, 0x178(1)
    lfd 1, 0x178(1)
    stb 5, 0xf3(1)
    fsubs 0, 1, 0
    stw 3, 0xec(1)
    fmadds 0, 2, 31, 0
    fctiwz 0, 0
    stfd 0, 0x180(1)
    lwz 0, 0x184(1)
    stb 0, 0xf2(1)
    lwz 0, 0xf0(1)
    stw 0, 0xe8(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xec
    addi 5, 1, 0xe8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 9, 0x100(29)
    lis 8, 0x4330
    lbz 10, 0x101(29)
    li 4, 0x0
    subfic 0, 9, 0x82
    lbz 11, 0x102(29)
    subfic 6, 10, 0x82
    lbz 12, 0xec(29)
    subfic 5, 11, 0x82
    lbz 27, 0xed(29)
    subfic 3, 12, 0xb4
    xoris 7, 0, 0x8000
    subfic 0, 27, 0xb4
    xoris 6, 6, 0x8000
    xoris 5, 5, 0x8000
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    stw 7, 0x18c(1)
    .4byte 0xC82204C8 # lfd f1, lbl_80543468@sda21(r0)
    stw 8, 0x188(1)
    .4byte 0xC80204D0 # lfd f0, lbl_80543470@sda21(r0)
    lfd 2, 0x188(1)
    stw 9, 0x194(1)
    fsubs 4, 2, 1
    stw 8, 0x190(1)
    lfd 2, 0x190(1)
    stw 6, 0x1a4(1)
    fsubs 3, 2, 0
    stw 8, 0x1a0(1)
    lfd 2, 0x1a0(1)
    fmadds 4, 4, 31, 3
    stw 10, 0x1ac(1)
    fsubs 3, 2, 1
    stw 8, 0x1a8(1)
    fctiwz 4, 4
    lfd 2, 0x1a8(1)
    stfd 4, 0x198(1)
    fsubs 2, 2, 0
    lwz 7, 0x19c(1)
    stw 5, 0x1bc(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x1b8(1)
    lfd 2, 0x1b8(1)
    fctiwz 4, 3
    stw 11, 0x1c4(1)
    fsubs 3, 2, 1
    stw 8, 0x1c0(1)
    lfd 2, 0x1c0(1)
    stfd 4, 0x1b0(1)
    fsubs 2, 2, 0
    lwz 6, 0x1b4(1)
    stw 3, 0x1d4(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x1d0(1)
    lfd 2, 0x1d0(1)
    fctiwz 4, 3
    stw 12, 0x1dc(1)
    fsubs 3, 2, 1
    stw 8, 0x1d8(1)
    lfd 2, 0x1d8(1)
    stfd 4, 0x1c8(1)
    fsubs 2, 2, 0
    lwz 5, 0x1cc(1)
    stw 0, 0x1ec(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x1e8(1)
    lfd 2, 0x1e8(1)
    fctiwz 4, 3
    stw 27, 0x1f4(1)
    fsubs 3, 2, 1
    stw 8, 0x1f0(1)
    lfd 2, 0x1f0(1)
    stfd 4, 0x1e0(1)
    fsubs 2, 2, 0
    lwz 3, 0x1e4(1)
    stb 7, 0xf4(1)
    fmadds 2, 3, 31, 2
    stb 6, 0xf5(1)
    fctiwz 2, 2
    stb 5, 0xf6(1)
    stb 4, 0xf7(1)
    stfd 2, 0x1f8(1)
    lwz 0, 0x1fc(1)
    stb 3, 0xf0(1)
    stb 0, 0xf1(1)
    lbz 7, 0xee(29)
    li 4, 0xff
    lwz 3, 0xf4(1)
    addi 0, 31, 0x5c0
    subfic 5, 7, 0xb4
    stw 8, 0x200(1)
    xoris 5, 5, 0x8000
    add 6, 0, 30
    stw 5, 0x204(1)
    lfd 2, 0x200(1)
    stw 7, 0x20c(1)
    fsubs 2, 2, 1
    stw 8, 0x208(1)
    lfd 1, 0x208(1)
    stb 4, 0xf3(1)
    fsubs 0, 1, 0
    stw 3, 0x9c(1)
    fmadds 0, 2, 31, 0
    stw 3, 0x20(1)
    stw 3, 0xe4(1)
    fctiwz 0, 0
    stfd 0, 0x210(1)
    lwz 0, 0x214(1)
    stb 0, 0xf2(1)
    lwz 0, 0xf0(1)
    stw 0, 0xa0(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x3c(12)
    stw 0, 0xe0(1)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x9c
    addi 5, 1, 0xa0
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xe0(1)
    addi 0, 31, 0x5a8
    lwz 3, 0xe4(1)
    add 6, 0, 30
    stw 4, 0xa8(1)
    stw 3, 0xa4(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xa4
    addi 5, 1, 0xa8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xe0(1)
    addi 0, 31, 0x590
    lwz 3, 0xe4(1)
    add 6, 0, 30
    stw 4, 0xb0(1)
    stw 3, 0xac(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xac
    addi 5, 1, 0xb0
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xe0(1)
    addi 0, 31, 0x578
    lwz 3, 0xe4(1)
    add 6, 0, 30
    stw 4, 0xb8(1)
    stw 3, 0xb4(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xb4
    addi 5, 1, 0xb8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 7, 0xe4(1)
    li 3, 0xff
    lbz 5, 0xe5(1)
    addi 0, 31, 0x560
    lbz 4, 0xe6(1)
    add 6, 0, 30
    stb 7, 0xc0(1)
    lwz 7, 0xe0(1)
    stb 5, 0xc1(1)
    stb 4, 0xc2(1)
    stb 3, 0xc3(1)
    lwz 0, 0xc0(1)
    stw 7, 0xc4(1)
    stw 0, 0xbc(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xbc
    addi 5, 1, 0xc4
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 9, 0x104(29)
    lis 8, 0x4330
    lbz 10, 0x105(29)
    li 4, 0x0
    subfic 0, 9, 0x50
    lbz 11, 0x106(29)
    subfic 6, 10, 0x50
    lbz 12, 0xf0(29)
    subfic 5, 11, 0x50
    lbz 27, 0xf1(29)
    subfic 3, 12, 0x80
    xoris 7, 0, 0x8000
    subfic 0, 27, 0x80
    xoris 6, 6, 0x8000
    xoris 5, 5, 0x8000
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    stw 7, 0x21c(1)
    .4byte 0xC82204C8 # lfd f1, lbl_80543468@sda21(r0)
    stw 8, 0x218(1)
    .4byte 0xC80204D0 # lfd f0, lbl_80543470@sda21(r0)
    lfd 2, 0x218(1)
    stw 9, 0x224(1)
    fsubs 4, 2, 1
    stw 8, 0x220(1)
    lfd 2, 0x220(1)
    stw 6, 0x234(1)
    fsubs 3, 2, 0
    stw 8, 0x230(1)
    lfd 2, 0x230(1)
    fmadds 4, 4, 31, 3
    stw 10, 0x23c(1)
    fsubs 3, 2, 1
    stw 8, 0x238(1)
    fctiwz 4, 4
    lfd 2, 0x238(1)
    stfd 4, 0x228(1)
    fsubs 2, 2, 0
    lwz 7, 0x22c(1)
    stw 5, 0x24c(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x248(1)
    lfd 2, 0x248(1)
    fctiwz 4, 3
    stw 11, 0x254(1)
    fsubs 3, 2, 1
    stw 8, 0x250(1)
    lfd 2, 0x250(1)
    stfd 4, 0x240(1)
    fsubs 2, 2, 0
    lwz 6, 0x244(1)
    stw 3, 0x264(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x260(1)
    lfd 2, 0x260(1)
    fctiwz 4, 3
    stw 12, 0x26c(1)
    fsubs 3, 2, 1
    stw 8, 0x268(1)
    lfd 2, 0x268(1)
    stfd 4, 0x258(1)
    fsubs 2, 2, 0
    lwz 5, 0x25c(1)
    stw 0, 0x27c(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x278(1)
    lfd 2, 0x278(1)
    fctiwz 4, 3
    stw 27, 0x284(1)
    fsubs 3, 2, 1
    stw 8, 0x280(1)
    lfd 2, 0x280(1)
    stfd 4, 0x270(1)
    fsubs 2, 2, 0
    lwz 3, 0x274(1)
    stb 7, 0xf4(1)
    fmadds 2, 3, 31, 2
    stb 6, 0xf5(1)
    fctiwz 2, 2
    stb 5, 0xf6(1)
    stb 4, 0xf7(1)
    stfd 2, 0x288(1)
    lwz 0, 0x28c(1)
    stb 3, 0xf0(1)
    stb 0, 0xf1(1)
    lbz 7, 0xf2(29)
    li 4, 0xff
    lwz 3, 0xf4(1)
    addi 0, 31, 0x548
    subfic 5, 7, 0x80
    stw 8, 0x290(1)
    xoris 5, 5, 0x8000
    add 6, 0, 30
    stw 5, 0x294(1)
    lfd 2, 0x290(1)
    stw 7, 0x29c(1)
    fsubs 2, 2, 1
    stw 8, 0x298(1)
    lfd 1, 0x298(1)
    stb 4, 0xf3(1)
    fsubs 0, 1, 0
    stw 3, 0x74(1)
    fmadds 0, 2, 31, 0
    stw 3, 0x18(1)
    stw 3, 0xdc(1)
    fctiwz 0, 0
    stfd 0, 0x2a0(1)
    lwz 0, 0x2a4(1)
    stb 0, 0xf2(1)
    lwz 0, 0xf0(1)
    stw 0, 0x78(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 0, 0x1c(1)
    lwz 12, 0x3c(12)
    stw 0, 0xd8(1)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    addi 5, 1, 0x78
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xd8(1)
    addi 0, 31, 0x530
    lwz 3, 0xdc(1)
    add 6, 0, 30
    stw 4, 0x80(1)
    stw 3, 0x7c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x7c
    addi 5, 1, 0x80
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xd8(1)
    addi 0, 31, 0x518
    lwz 3, 0xdc(1)
    add 6, 0, 30
    stw 4, 0x88(1)
    stw 3, 0x84(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x84
    addi 5, 1, 0x88
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xd8(1)
    addi 0, 31, 0x500
    lwz 3, 0xdc(1)
    add 6, 0, 30
    stw 4, 0x90(1)
    stw 3, 0x8c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x8c
    addi 5, 1, 0x90
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xd8(1)
    addi 0, 31, 0x4e8
    lwz 3, 0xdc(1)
    add 6, 0, 30
    stw 4, 0x98(1)
    stw 3, 0x94(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x94
    addi 5, 1, 0x98
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 9, 0x108(29)
    lis 8, 0x4330
    lbz 10, 0x109(29)
    li 4, 0x0
    subfic 0, 9, 0x82
    lbz 11, 0x10a(29)
    subfic 6, 10, 0x82
    lbz 12, 0xf4(29)
    subfic 5, 11, 0x82
    lbz 27, 0xf5(29)
    subfic 3, 12, 0xb4
    xoris 7, 0, 0x8000
    subfic 0, 27, 0xb4
    xoris 6, 6, 0x8000
    xoris 5, 5, 0x8000
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    stw 7, 0x2ac(1)
    .4byte 0xC82204C8 # lfd f1, lbl_80543468@sda21(r0)
    stw 8, 0x2a8(1)
    .4byte 0xC80204D0 # lfd f0, lbl_80543470@sda21(r0)
    lfd 2, 0x2a8(1)
    stw 9, 0x2b4(1)
    fsubs 4, 2, 1
    stw 8, 0x2b0(1)
    lfd 2, 0x2b0(1)
    stw 6, 0x2c4(1)
    fsubs 3, 2, 0
    stw 8, 0x2c0(1)
    lfd 2, 0x2c0(1)
    fmadds 4, 4, 31, 3
    stw 10, 0x2cc(1)
    fsubs 3, 2, 1
    stw 8, 0x2c8(1)
    fctiwz 4, 4
    lfd 2, 0x2c8(1)
    stfd 4, 0x2b8(1)
    fsubs 2, 2, 0
    lwz 7, 0x2bc(1)
    stw 5, 0x2dc(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x2d8(1)
    lfd 2, 0x2d8(1)
    fctiwz 4, 3
    stw 11, 0x2e4(1)
    fsubs 3, 2, 1
    stw 8, 0x2e0(1)
    lfd 2, 0x2e0(1)
    stfd 4, 0x2d0(1)
    fsubs 2, 2, 0
    lwz 6, 0x2d4(1)
    stw 3, 0x2f4(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x2f0(1)
    lfd 2, 0x2f0(1)
    fctiwz 4, 3
    stw 12, 0x2fc(1)
    fsubs 3, 2, 1
    stw 8, 0x2f8(1)
    lfd 2, 0x2f8(1)
    stfd 4, 0x2e8(1)
    fsubs 2, 2, 0
    lwz 5, 0x2ec(1)
    stw 0, 0x30c(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x308(1)
    lfd 2, 0x308(1)
    fctiwz 4, 3
    stw 27, 0x314(1)
    fsubs 3, 2, 1
    stw 8, 0x310(1)
    lfd 2, 0x310(1)
    stfd 4, 0x300(1)
    fsubs 2, 2, 0
    lwz 3, 0x304(1)
    stb 7, 0xf4(1)
    fmadds 2, 3, 31, 2
    stb 6, 0xf5(1)
    fctiwz 2, 2
    stb 5, 0xf6(1)
    stb 4, 0xf7(1)
    stfd 2, 0x318(1)
    lwz 0, 0x31c(1)
    stb 3, 0xf0(1)
    stb 0, 0xf1(1)
    lbz 7, 0xf6(29)
    li 4, 0xff
    lwz 3, 0xf4(1)
    addi 0, 31, 0x6c8
    subfic 5, 7, 0xb4
    stw 8, 0x320(1)
    xoris 5, 5, 0x8000
    add 6, 0, 30
    stw 5, 0x324(1)
    lfd 2, 0x320(1)
    stw 7, 0x32c(1)
    fsubs 2, 2, 1
    stw 8, 0x328(1)
    lfd 1, 0x328(1)
    stb 4, 0xf3(1)
    fsubs 0, 1, 0
    stw 3, 0x48(1)
    fmadds 0, 2, 31, 0
    stw 3, 0x10(1)
    stw 3, 0xd4(1)
    fctiwz 0, 0
    stfd 0, 0x330(1)
    lwz 0, 0x334(1)
    stb 0, 0xf2(1)
    lwz 0, 0xf0(1)
    stw 0, 0x4c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lwz 12, 0x3c(12)
    stw 0, 0xd0(1)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x48
    addi 5, 1, 0x4c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xd0(1)
    addi 0, 31, 0x6b0
    lwz 3, 0xd4(1)
    add 6, 0, 30
    stw 4, 0x54(1)
    stw 3, 0x50(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x50
    addi 5, 1, 0x54
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xd0(1)
    addi 0, 31, 0x698
    lwz 3, 0xd4(1)
    add 6, 0, 30
    stw 4, 0x5c(1)
    stw 3, 0x58(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x58
    addi 5, 1, 0x5c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xd0(1)
    addi 0, 31, 0x680
    lwz 3, 0xd4(1)
    add 6, 0, 30
    stw 4, 0x64(1)
    stw 3, 0x60(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x60
    addi 5, 1, 0x64
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 7, 0xd4(1)
    li 3, 0xff
    lbz 5, 0xd5(1)
    addi 0, 31, 0x668
    lbz 4, 0xd6(1)
    add 6, 0, 30
    stb 7, 0x6c(1)
    lwz 7, 0xd0(1)
    stb 5, 0x6d(1)
    stb 4, 0x6e(1)
    stb 3, 0x6f(1)
    lwz 0, 0x6c(1)
    stw 7, 0x70(1)
    stw 0, 0x68(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x68
    addi 5, 1, 0x70
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 9, 0x10c(29)
    lis 8, 0x4330
    lbz 10, 0x10d(29)
    li 4, 0x0
    subfic 0, 9, 0xb4
    lbz 11, 0x10e(29)
    subfic 6, 10, 0xb4
    lbz 12, 0xf8(29)
    subfic 5, 11, 0xb4
    lbz 27, 0xf9(29)
    subfic 3, 12, 0xb4
    xoris 7, 0, 0x8000
    subfic 0, 27, 0xb4
    xoris 6, 6, 0x8000
    xoris 5, 5, 0x8000
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    stw 7, 0x33c(1)
    .4byte 0xC82204C8 # lfd f1, lbl_80543468@sda21(r0)
    stw 8, 0x338(1)
    .4byte 0xC80204D0 # lfd f0, lbl_80543470@sda21(r0)
    lfd 2, 0x338(1)
    stw 9, 0x344(1)
    fsubs 4, 2, 1
    stw 8, 0x340(1)
    lfd 2, 0x340(1)
    stw 6, 0x354(1)
    fsubs 3, 2, 0
    stw 8, 0x350(1)
    lfd 2, 0x350(1)
    fmadds 4, 4, 31, 3
    stw 10, 0x35c(1)
    fsubs 3, 2, 1
    stw 8, 0x358(1)
    fctiwz 4, 4
    lfd 2, 0x358(1)
    stfd 4, 0x348(1)
    fsubs 2, 2, 0
    lwz 7, 0x34c(1)
    stw 5, 0x36c(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x368(1)
    lfd 2, 0x368(1)
    fctiwz 4, 3
    stw 11, 0x374(1)
    fsubs 3, 2, 1
    stw 8, 0x370(1)
    lfd 2, 0x370(1)
    stfd 4, 0x360(1)
    fsubs 2, 2, 0
    lwz 6, 0x364(1)
    stw 3, 0x384(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x380(1)
    lfd 2, 0x380(1)
    fctiwz 4, 3
    stw 12, 0x38c(1)
    fsubs 3, 2, 1
    stw 8, 0x388(1)
    lfd 2, 0x388(1)
    stfd 4, 0x378(1)
    fsubs 2, 2, 0
    lwz 5, 0x37c(1)
    stw 0, 0x39c(1)
    fmadds 3, 3, 31, 2
    stw 8, 0x398(1)
    lfd 2, 0x398(1)
    fctiwz 4, 3
    stw 27, 0x3a4(1)
    fsubs 3, 2, 1
    stw 8, 0x3a0(1)
    lfd 2, 0x3a0(1)
    stfd 4, 0x390(1)
    fsubs 2, 2, 0
    lwz 3, 0x394(1)
    stb 7, 0xf4(1)
    fmadds 2, 3, 31, 2
    stb 6, 0xf5(1)
    fctiwz 2, 2
    stb 5, 0xf6(1)
    stb 4, 0xf7(1)
    stfd 2, 0x3a8(1)
    lwz 0, 0x3ac(1)
    stb 3, 0xf0(1)
    stb 0, 0xf1(1)
    lbz 7, 0xfa(29)
    li 4, 0xff
    lwz 3, 0xf4(1)
    addi 0, 31, 0x650
    subfic 5, 7, 0xb4
    stw 8, 0x3b0(1)
    xoris 5, 5, 0x8000
    add 6, 0, 30
    stw 5, 0x3b4(1)
    lfd 2, 0x3b0(1)
    stw 7, 0x3bc(1)
    fsubs 2, 2, 1
    stw 8, 0x3b8(1)
    lfd 1, 0x3b8(1)
    stb 4, 0xf3(1)
    fsubs 0, 1, 0
    stw 3, 0x28(1)
    fmadds 0, 2, 31, 0
    stw 3, 0x8(1)
    stw 3, 0xcc(1)
    fctiwz 0, 0
    stfd 0, 0x3c0(1)
    lwz 0, 0x3c4(1)
    stb 0, 0xf2(1)
    lwz 0, 0xf0(1)
    stw 0, 0x2c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 0, 0xc(1)
    lwz 12, 0x3c(12)
    stw 0, 0xc8(1)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x28
    addi 5, 1, 0x2c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc8(1)
    addi 0, 31, 0x638
    lwz 3, 0xcc(1)
    add 6, 0, 30
    stw 4, 0x34(1)
    stw 3, 0x30(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x30
    addi 5, 1, 0x34
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc8(1)
    addi 0, 31, 0x620
    lwz 3, 0xcc(1)
    add 6, 0, 30
    stw 4, 0x3c(1)
    stw 3, 0x38(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x38
    addi 5, 1, 0x3c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc8(1)
    addi 0, 31, 0x608
    lwz 3, 0xcc(1)
    add 6, 0, 30
    stw 4, 0x44(1)
    stw 3, 0x40(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x40
    addi 5, 1, 0x44
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    psq_l 31, 0x3e8(1), 0, 0
    lfd 31, 0x3e0(1)
    lmw 27, 0x3cc(1)
    lwz 0, 0x3f4(1)
    mtlr 0
    addi 1, 1, 0x3f0
    blr

fn_803BD5E0:
    stwu 1, -0xf0(1)
    mflr 0
    li 5, 0x0
    li 7, 0xff
    stw 0, 0xf4(1)
    li 0, 0x80
    lis 6, lbl_804765D0@ha
    stw 31, 0xec(1)
    addi 31, 6, lbl_804765D0@l
    stw 30, 0xe8(1)
    slwi 30, 4, 3
    stw 29, 0xe4(1)
    mr 29, 3
    stb 0, 0xd0(1)
    stb 0, 0xd1(1)
    stb 0, 0xd2(1)
    addi 0, 31, 0x5d8
    add 6, 0, 30
    stb 7, 0xd3(1)
    lwz 3, 0xd0(1)
    stb 5, 0xd8(1)
    stb 5, 0xd9(1)
    stb 5, 0xda(1)
    stb 5, 0xdb(1)
    lwz 0, 0xd8(1)
    stw 3, 0xd4(1)
    stw 0, 0xdc(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xdc
    addi 5, 1, 0xd4
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0xb4
    li 4, 0x82
    li 5, 0xff
    li 3, 0x0
    stb 7, 0xc4(1)
    addi 0, 31, 0x5c0
    add 6, 0, 30
    stb 7, 0xc5(1)
    stb 7, 0xc6(1)
    stb 5, 0xc7(1)
    lwz 0, 0xc4(1)
    stb 4, 0xc8(1)
    stb 4, 0xc9(1)
    stb 4, 0xca(1)
    stb 3, 0xcb(1)
    lwz 4, 0xc8(1)
    stw 0, 0x80(1)
    stw 4, 0x7c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 4, 0xcc(1)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x7c
    addi 5, 1, 0x80
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc4(1)
    addi 0, 31, 0x5a8
    lwz 3, 0xc8(1)
    add 6, 0, 30
    stw 4, 0x88(1)
    stw 3, 0x84(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x84
    addi 5, 1, 0x88
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc4(1)
    addi 0, 31, 0x590
    lwz 3, 0xc8(1)
    add 6, 0, 30
    stw 4, 0x90(1)
    stw 3, 0x8c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x8c
    addi 5, 1, 0x90
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc4(1)
    addi 0, 31, 0x578
    lwz 3, 0xc8(1)
    add 6, 0, 30
    stw 4, 0x98(1)
    stw 3, 0x94(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x94
    addi 5, 1, 0x98
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 7, 0xcc(1)
    li 3, 0xff
    lbz 5, 0xcd(1)
    addi 0, 31, 0x560
    lbz 4, 0xce(1)
    add 6, 0, 30
    stb 7, 0xa0(1)
    lwz 7, 0xc4(1)
    stb 5, 0xa1(1)
    stb 4, 0xa2(1)
    stb 3, 0xa3(1)
    lwz 0, 0xa0(1)
    stw 7, 0xa4(1)
    stw 0, 0x9c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x9c
    addi 5, 1, 0xa4
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x80
    li 5, 0x50
    li 3, 0xff
    li 4, 0x0
    stb 7, 0xbc(1)
    addi 0, 31, 0x548
    add 6, 0, 30
    stb 7, 0xbd(1)
    stb 7, 0xbe(1)
    stb 3, 0xbf(1)
    lwz 3, 0xbc(1)
    stb 5, 0xc0(1)
    stb 5, 0xc1(1)
    stb 5, 0xc2(1)
    stb 4, 0xc3(1)
    lwz 0, 0xc0(1)
    stw 3, 0x58(1)
    stw 0, 0x54(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    addi 5, 1, 0x58
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xbc(1)
    addi 0, 31, 0x530
    lwz 3, 0xc0(1)
    add 6, 0, 30
    stw 4, 0x60(1)
    stw 3, 0x5c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x5c
    addi 5, 1, 0x60
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xbc(1)
    addi 0, 31, 0x518
    lwz 3, 0xc0(1)
    add 6, 0, 30
    stw 4, 0x68(1)
    stw 3, 0x64(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x64
    addi 5, 1, 0x68
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xbc(1)
    addi 0, 31, 0x500
    lwz 3, 0xc0(1)
    add 6, 0, 30
    stw 4, 0x70(1)
    stw 3, 0x6c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x6c
    addi 5, 1, 0x70
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xbc(1)
    addi 0, 31, 0x4e8
    lwz 3, 0xc0(1)
    add 6, 0, 30
    stw 4, 0x78(1)
    stw 3, 0x74(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    addi 5, 1, 0x78
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 7, 0x82
    li 4, 0x64
    li 5, 0xff
    li 3, 0x0
    stb 7, 0xb0(1)
    addi 0, 31, 0x6c8
    add 6, 0, 30
    stb 7, 0xb1(1)
    stb 7, 0xb2(1)
    stb 5, 0xb3(1)
    lwz 0, 0xb0(1)
    stb 4, 0xb4(1)
    stb 4, 0xb5(1)
    stb 4, 0xb6(1)
    stb 3, 0xb7(1)
    lwz 4, 0xb4(1)
    stw 0, 0x2c(1)
    stw 4, 0x28(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 4, 0xb8(1)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x28
    addi 5, 1, 0x2c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb0(1)
    addi 0, 31, 0x6b0
    lwz 3, 0xb4(1)
    add 6, 0, 30
    stw 4, 0x34(1)
    stw 3, 0x30(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x30
    addi 5, 1, 0x34
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb0(1)
    addi 0, 31, 0x698
    lwz 3, 0xb4(1)
    add 6, 0, 30
    stw 4, 0x3c(1)
    stw 3, 0x38(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x38
    addi 5, 1, 0x3c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb0(1)
    addi 0, 31, 0x680
    lwz 3, 0xb4(1)
    add 6, 0, 30
    stw 4, 0x44(1)
    stw 3, 0x40(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x40
    addi 5, 1, 0x44
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 7, 0xb8(1)
    li 3, 0xff
    lbz 5, 0xb9(1)
    addi 0, 31, 0x668
    lbz 4, 0xba(1)
    add 6, 0, 30
    stb 7, 0x4c(1)
    lwz 7, 0xb0(1)
    stb 5, 0x4d(1)
    stb 4, 0x4e(1)
    stb 3, 0x4f(1)
    lwz 0, 0x4c(1)
    stw 7, 0x50(1)
    stw 0, 0x48(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x48
    addi 5, 1, 0x50
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 5, 0xb4
    li 3, 0xff
    li 4, 0x0
    stb 5, 0xa8(1)
    addi 0, 31, 0x650
    stb 5, 0xa9(1)
    add 6, 0, 30
    stb 5, 0xaa(1)
    stb 3, 0xab(1)
    lwz 3, 0xa8(1)
    stb 5, 0xac(1)
    stb 5, 0xad(1)
    stb 5, 0xae(1)
    stb 4, 0xaf(1)
    lwz 0, 0xac(1)
    stw 3, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x8
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xa8(1)
    addi 0, 31, 0x638
    lwz 3, 0xac(1)
    add 6, 0, 30
    stw 4, 0x14(1)
    stw 3, 0x10(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x10
    addi 5, 1, 0x14
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xa8(1)
    addi 0, 31, 0x620
    lwz 3, 0xac(1)
    add 6, 0, 30
    stw 4, 0x1c(1)
    stw 3, 0x18(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x18
    addi 5, 1, 0x1c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xa8(1)
    addi 0, 31, 0x608
    lwz 3, 0xac(1)
    add 6, 0, 30
    stw 4, 0x24(1)
    stw 3, 0x20(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x20
    addi 5, 1, 0x24
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xf4(1)
    lwz 31, 0xec(1)
    lwz 30, 0xe8(1)
    lwz 29, 0xe4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_803BDD44:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stw 31, 0xdc(1)
    stw 30, 0xd8(1)
    slwi 30, 4, 3
    stw 29, 0xd4(1)
    mr 29, 3
    lis 3, lbl_804765D0@ha
    lwz 0, 0xe8(29)
    addi 31, 3, lbl_804765D0@l
    stw 0, 0xc8(1)
    addi 0, 31, 0x5d8
    add 6, 0, 30
    lwz 0, 0xfc(29)
    stw 0, 0xcc(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xcc
    addi 5, 1, 0xc8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0xec(29)
    addi 0, 31, 0x5c0
    lwz 4, 0x100(29)
    add 6, 0, 30
    stw 3, 0xc0(1)
    stw 3, 0x80(1)
    stw 4, 0x7c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 4, 0xc4(1)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x7c
    addi 5, 1, 0x80
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc0(1)
    addi 0, 31, 0x5a8
    lwz 3, 0xc4(1)
    add 6, 0, 30
    stw 4, 0x88(1)
    stw 3, 0x84(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x84
    addi 5, 1, 0x88
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc0(1)
    addi 0, 31, 0x590
    lwz 3, 0xc4(1)
    add 6, 0, 30
    stw 4, 0x90(1)
    stw 3, 0x8c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x8c
    addi 5, 1, 0x90
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xc0(1)
    addi 0, 31, 0x578
    lwz 3, 0xc4(1)
    add 6, 0, 30
    stw 4, 0x98(1)
    stw 3, 0x94(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x94
    addi 5, 1, 0x98
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 7, 0xc4(1)
    li 3, 0xff
    lbz 5, 0xc5(1)
    addi 0, 31, 0x560
    lbz 4, 0xc6(1)
    add 6, 0, 30
    stb 7, 0xa0(1)
    lwz 7, 0xc0(1)
    stb 5, 0xa1(1)
    stb 4, 0xa2(1)
    stb 3, 0xa3(1)
    lwz 0, 0xa0(1)
    stw 7, 0xa4(1)
    stw 0, 0x9c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x9c
    addi 5, 1, 0xa4
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0xf0(29)
    addi 0, 31, 0x548
    lwz 4, 0x104(29)
    add 6, 0, 30
    stw 3, 0xb8(1)
    stw 3, 0x58(1)
    stw 4, 0x54(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 4, 0xbc(1)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    addi 5, 1, 0x58
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb8(1)
    addi 0, 31, 0x530
    lwz 3, 0xbc(1)
    add 6, 0, 30
    stw 4, 0x60(1)
    stw 3, 0x5c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x5c
    addi 5, 1, 0x60
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb8(1)
    addi 0, 31, 0x518
    lwz 3, 0xbc(1)
    add 6, 0, 30
    stw 4, 0x68(1)
    stw 3, 0x64(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x64
    addi 5, 1, 0x68
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb8(1)
    addi 0, 31, 0x500
    lwz 3, 0xbc(1)
    add 6, 0, 30
    stw 4, 0x70(1)
    stw 3, 0x6c(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x6c
    addi 5, 1, 0x70
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb8(1)
    addi 0, 31, 0x4e8
    lwz 3, 0xbc(1)
    add 6, 0, 30
    stw 4, 0x78(1)
    stw 3, 0x74(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    addi 5, 1, 0x78
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0xf4(29)
    addi 0, 31, 0x6c8
    lwz 4, 0x108(29)
    add 6, 0, 30
    stw 3, 0xb0(1)
    stw 3, 0x2c(1)
    stw 4, 0x28(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 4, 0xb4(1)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x28
    addi 5, 1, 0x2c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb0(1)
    addi 0, 31, 0x6b0
    lwz 3, 0xb4(1)
    add 6, 0, 30
    stw 4, 0x34(1)
    stw 3, 0x30(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x30
    addi 5, 1, 0x34
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb0(1)
    addi 0, 31, 0x698
    lwz 3, 0xb4(1)
    add 6, 0, 30
    stw 4, 0x3c(1)
    stw 3, 0x38(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x38
    addi 5, 1, 0x3c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xb0(1)
    addi 0, 31, 0x680
    lwz 3, 0xb4(1)
    add 6, 0, 30
    stw 4, 0x44(1)
    stw 3, 0x40(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x40
    addi 5, 1, 0x44
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 7, 0xb4(1)
    li 3, 0xff
    lbz 5, 0xb5(1)
    addi 0, 31, 0x668
    lbz 4, 0xb6(1)
    add 6, 0, 30
    stb 7, 0x4c(1)
    lwz 7, 0xb0(1)
    stb 5, 0x4d(1)
    stb 4, 0x4e(1)
    stb 3, 0x4f(1)
    lwz 0, 0x4c(1)
    stw 7, 0x50(1)
    stw 0, 0x48(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x48
    addi 5, 1, 0x50
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0xf8(29)
    addi 0, 31, 0x650
    lwz 4, 0x10c(29)
    add 6, 0, 30
    stw 3, 0xa8(1)
    stw 3, 0xc(1)
    stw 4, 0x8(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    stw 4, 0xac(1)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x8
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xa8(1)
    addi 0, 31, 0x638
    lwz 3, 0xac(1)
    add 6, 0, 30
    stw 4, 0x14(1)
    stw 3, 0x10(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x10
    addi 5, 1, 0x14
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xa8(1)
    addi 0, 31, 0x620
    lwz 3, 0xac(1)
    add 6, 0, 30
    stw 4, 0x1c(1)
    stw 3, 0x18(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x18
    addi 5, 1, 0x1c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 4, 0xa8(1)
    addi 0, 31, 0x608
    lwz 3, 0xac(1)
    add 6, 0, 30
    stw 4, 0x24(1)
    stw 3, 0x20(1)
    lwz 3, 0x8(29)
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x20
    addi 5, 1, 0x24
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe4(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    lwz 29, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_803BE3D8:
    stwu 1, -0x1c0(1)
    mflr 0
    stw 0, 0x1c4(1)
    stfd 31, 0x1b0(1)
    psq_st 31, 0x1b8(1), 0, 0
    stfd 30, 0x1a0(1)
    psq_st 30, 0x1a8(1), 0, 0
    stfd 29, 0x190(1)
    psq_st 29, 0x198(1), 0, 0
    stfd 28, 0x180(1)
    psq_st 28, 0x188(1), 0, 0
    stfd 27, 0x170(1)
    psq_st 27, 0x178(1), 0, 0
    stfd 26, 0x160(1)
    psq_st 26, 0x168(1), 0, 0
    stfd 25, 0x150(1)
    psq_st 25, 0x158(1), 0, 0
    stmw 24, 0x130(1)
    mr 31, 3
    lis 4, lbl_804765D0@ha
    lha 3, 0xdc(3)
    addi 30, 4, lbl_804765D0@l
    addi 0, 3, 0x1
    sth 0, 0xdc(31)
    lha 0, 0xdc(31)
    cmpwi 0, 0x36
    .4byte 0x4180000C # blt .L_803BE44C
    li 0, 0x0
    sth 0, 0xdc(31)
L_803BE44C:
    lwz 0, 0xd0(31)
    cmpwi 0, 0x0
    .4byte 0x41820674 # beq .L_803BEAC8
    li 0, -0x1
    addi 9, 1, 0xd4
    stw 0, 0xe4(1)
    li 10, 0x0
    stw 0, 0xe8(1)
    .4byte 0x48000064 # b .L_803BE4D0
L_803BE470:
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
L_803BE4D0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803BE470
    li 10, 0x0
    li 5, -0x1
    li 4, 0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0xe4(1)
    addi 9, 1, 0x98
    stw 10, 0xe8(1)
    stw 10, 0xec(1)
    stb 10, 0xf0(1)
    stb 10, 0xf1(1)
    stb 10, 0xf2(1)
    stb 4, 0xf3(1)
    stb 4, 0xf4(1)
    stb 10, 0xf5(1)
    stb 10, 0xf6(1)
    stb 10, 0xf7(1)
    stb 10, 0xf8(1)
    stb 10, 0xf9(1)
    stb 4, 0xfa(1)
    stw 3, 0xfc(1)
    stb 4, 0x100(1)
    stb 10, 0x101(1)
    stb 10, 0x102(1)
    stw 5, 0x104(1)
    stw 10, 0x108(1)
    stw 0, 0x10c(1)
    stw 5, 0xa8(1)
    stw 5, 0xac(1)
    .4byte 0x48000064 # b .L_803BE5B4
L_803BE554:
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
L_803BE5B4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803BE554
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0xa8(1)
    .4byte 0xC34204DC # lfs f26, lbl_8054347C@sda21(r0)
    addi 29, 30, 0x478
    stw 5, 0xac(1)
    addi 28, 30, 0x438
    .4byte 0xC36204E0 # lfs f27, lbl_80543480@sda21(r0)
    addi 26, 30, 0x818
    stw 5, 0xb0(1)
    li 27, 0x0
    .4byte 0xCB8204C8 # lfd f28, lbl_80543468@sda21(r0)
    lis 25, 0x4330
    stb 5, 0xb4(1)
    .4byte 0xC3A204E4 # lfs f29, lbl_80543484@sda21(r0)
    stb 5, 0xb5(1)
    .4byte 0xC3C204E8 # lfs f30, lbl_80543488@sda21(r0)
    stb 5, 0xb6(1)
    .4byte 0xC3E204B8 # lfs f31, lbl_80543458@sda21(r0)
    stb 4, 0xb7(1)
    stb 4, 0xb8(1)
    stb 5, 0xb9(1)
    stb 5, 0xba(1)
    stb 5, 0xbb(1)
    stb 5, 0xbc(1)
    stb 5, 0xbd(1)
    stb 4, 0xbe(1)
    stw 3, 0xc0(1)
    stb 4, 0xc4(1)
    stb 5, 0xc5(1)
    stb 5, 0xc6(1)
    stw 6, 0xc8(1)
    stw 5, 0xcc(1)
    stw 0, 0xd0(1)
L_803BE654:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 0, 0x30(3)
    lwz 3, 0x4(4)
    fmadds 0, 25, 27, 0
    stw 25, 0x110(1)
    lhz 0, 0x4(3)
    lwz 5, 0x0(29)
    xoris 0, 0, 0x8000
    fmuls 1, 26, 0
    stw 0, 0x114(1)
    lwz 6, 0x4(29)
    lfd 0, 0x110(1)
    fsubs 0, 0, 28
    fdivs 0, 1, 0
    stfs 0, 0x50(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 0, 0x34(3)
    lwz 3, 0x4(4)
    fmadds 0, 25, 27, 0
    stw 25, 0x118(1)
    lhz 0, 0x6(3)
    lwz 5, 0x0(28)
    xoris 0, 0, 0x8000
    fadds 1, 30, 0
    stw 0, 0x11c(1)
    lwz 6, 0x4(28)
    lfd 0, 0x118(1)
    fmuls 1, 29, 1
    stfs 31, 0x58(1)
    fsubs 0, 0, 28
    fdivs 0, 1, 0
    stfs 0, 0x54(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 0, 0x30(3)
    lwz 3, 0x4(4)
    fmadds 0, 25, 27, 0
    stw 25, 0x120(1)
    lhz 0, 0x4(3)
    lwz 5, 0x0(28)
    xoris 0, 0, 0x8000
    fmuls 1, 26, 0
    stw 0, 0x124(1)
    lwz 6, 0x4(28)
    lfd 0, 0x120(1)
    fsubs 0, 0, 28
    fdivs 0, 1, 0
    stfs 0, 0x44(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    li 0, 0x0
    lfs 0, 0x34(3)
    lwz 3, 0x4(4)
    fmadds 0, 25, 27, 0
    stw 25, 0x128(1)
    lhz 3, 0x6(3)
    lwz 5, 0x0(29)
    xoris 3, 3, 0x8000
    fadds 1, 30, 0
    stw 3, 0x12c(1)
    lwz 6, 0x4(29)
    lfd 0, 0x128(1)
    fmuls 1, 29, 1
    stfs 31, 0x4c(1)
    fsubs 0, 0, 28
    stb 0, 0xfa(1)
    fdivs 0, 1, 0
    stb 0, 0xe4(1)
    stb 0, 0xe5(1)
    stb 0, 0xe6(1)
    stfs 0, 0x48(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x0(28)
    stb 0, 0xe7(1)
    lwz 6, 0x4(28)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 5, 0xb2(3)
    li 0, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x28
    stb 5, 0xab(1)
    li 5, 0x1
    stb 0, 0xbe(1)
    stfs 31, 0x28(1)
    stfs 31, 0x2c(1)
    stfs 26, 0x30(1)
    stfs 29, 0x34(1)
    bl fn_8013B414
    cmpwi 27, 0x6
    .4byte 0x40820098 # bne .L_803BE964
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    addi 4, 3, 0x4220
    addi 5, 30, 0x830
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0xd4
    fmr 2, 1
    li 6, 0xab
    lwz 3, 0x20(4)
    addi 4, 1, 0x50
    bl fn_802F86CC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    addi 4, 3, 0x4220
    addi 5, 30, 0x830
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x98
    fmr 2, 1
    li 6, 0xab
    lwz 3, 0x20(4)
    addi 4, 1, 0x44
    bl fn_802F86CC
    .4byte 0x4800014C # b .L_803BEAAC
L_803BE964:
    cmpwi 27, 0x7
    .4byte 0x408200A4 # bne .L_803BEA0C
    li 0, 0xc
    lis 3, 0x534f
    stb 0, 0xdb(1)
    addi 4, 3, 0x4220
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    addi 5, 30, 0x844
    stb 0, 0x9f(1)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0xd4
    fmr 2, 1
    li 6, 0x10
    lwz 3, 0x20(4)
    addi 4, 1, 0x50
    bl fn_802F86CC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    addi 4, 3, 0x4220
    addi 5, 30, 0x844
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x98
    fmr 2, 1
    li 6, 0x10
    lwz 3, 0x20(4)
    addi 4, 1, 0x44
    bl fn_802F86CC
    .4byte 0x480000A4 # b .L_803BEAAC
L_803BEA0C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    lwz 6, 0x0(26)
    addi 4, 3, 0x4220
    lwz 3, 0xa4(5)
    addi 5, 30, 0x854
    addi 24, 6, 0x8
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 24
    fmr 2, 1
    addi 7, 1, 0xd4
    lwz 3, 0x20(4)
    addi 4, 1, 0x50
    bl fn_802F86CC
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    lwz 6, 0x0(26)
    addi 4, 3, 0x4220
    lwz 3, 0xa4(5)
    addi 5, 30, 0x854
    addi 24, 6, 0x8
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 24
    fmr 2, 1
    addi 7, 1, 0x98
    lwz 3, 0x20(4)
    addi 4, 1, 0x44
    bl fn_802F86CC
L_803BEAAC:
    addi 27, 27, 0x1
    addi 28, 28, 0x8
    cmpwi 27, 0x8
    addi 26, 26, 0x4
    addi 29, 29, 0x8
    .4byte 0x4180FB94 # blt .L_803BE654
    .4byte 0x480004EC # b .L_803BEFB0
L_803BEAC8:
    mr 25, 31
    addi 26, 30, 0x400
    addi 27, 30, 0x818
    li 28, 0x0
L_803BEAD8:
    cmpwi 28, 0x7
    .4byte 0x408004BC # bge .L_803BEF98
    lwz 0, 0xb8(25)
    cmpwi 0, 0x0
    .4byte 0x418204B0 # beq .L_803BEF98
    li 0, -0x1
    addi 9, 1, 0x5c
    stw 0, 0x6c(1)
    li 10, 0x0
    stw 0, 0x70(1)
    .4byte 0x48000064 # b .L_803BEB64
L_803BEB04:
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
L_803BEB64:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803BEB04
    li 4, 0x1
    li 7, 0x0
    stb 4, 0x82(1)
    li 8, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 8, 0x6c(1)
    lwz 5, 0x0(26)
    stw 7, 0x70(1)
    lwz 6, 0x4(26)
    stw 7, 0x74(1)
    stb 7, 0x78(1)
    stb 7, 0x79(1)
    stb 7, 0x7a(1)
    stb 4, 0x7b(1)
    stb 4, 0x7c(1)
    stb 7, 0x7d(1)
    stb 7, 0x7e(1)
    stb 7, 0x7f(1)
    stb 7, 0x80(1)
    stb 7, 0x81(1)
    stw 3, 0x84(1)
    stb 4, 0x88(1)
    stb 7, 0x89(1)
    stb 7, 0x8a(1)
    stw 8, 0x8c(1)
    stw 7, 0x90(1)
    stw 0, 0x94(1)
    stb 7, 0x82(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    cmpwi 28, 0x6
    stb 0, 0x6f(1)
    .4byte 0x408201DC # bne .L_803BEDE0
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC02204E0 # lfs f1, lbl_80543480@sda21(r0)
    lwz 4, 0x4(4)
    lfs 0, 0x30(3)
    lhz 3, 0x4(4)
    stw 0, 0x128(1)
    fmadds 0, 25, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC04204DC # lfs f2, lbl_8054347C@sda21(r0)
    stw 0, 0x12c(1)
    .4byte 0xC82204C8 # lfd f1, lbl_80543468@sda21(r0)
    fmuls 2, 2, 0
    lfd 0, 0x128(1)
    .4byte 0xC06204B8 # lfs f3, lbl_80543458@sda21(r0)
    fsubs 0, 0, 1
    lwz 5, 0x0(26)
    lwz 6, 0x4(26)
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0x38(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lfs 0, 0x34(3)
    addi 4, 1, 0x18
    lwz 3, 0x4(5)
    li 5, 0x1
    .4byte 0xC02204E0 # lfs f1, lbl_80543480@sda21(r0)
    lhz 3, 0x6(3)
    fmadds 0, 25, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC04204EC # lfs f2, lbl_8054348C@sda21(r0)
    stw 3, 0x124(1)
    fadds 0, 2, 0
    .4byte 0xC0A204E4 # lfs f5, lbl_80543484@sda21(r0)
    stw 0, 0x120(1)
    .4byte 0xC86204C8 # lfd f3, lbl_80543468@sda21(r0)
    fmuls 4, 5, 0
    lfd 2, 0x120(1)
    .4byte 0xC00204DC # lfs f0, lbl_8054347C@sda21(r0)
    fsubs 2, 2, 3
    stfs 1, 0x40(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x18(1)
    fdivs 2, 4, 2
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 5, 0x24(1)
    stfs 2, 0x3c(1)
    bl fn_8013B414
    lis 3, 0x4bda
    lha 7, 0xdc(31)
    addi 0, 3, 0x12f7
    lis 5, 0x38e4
    mulhw 0, 0, 7
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534f
    lwz 3, 0xa4(3)
    subi 8, 5, 0x71c7
    addi 4, 4, 0x4220
    srawi 0, 0, 3
    lwz 12, 0x0(3)
    srwi 6, 0, 31
    addi 5, 30, 0x854
    add 0, 0, 6
    lwz 12, 0x18(12)
    mulli 0, 0, 0x1b
    subf 0, 0, 7
    mulhw 0, 8, 0
    srawi 0, 0, 1
    srwi 6, 0, 31
    add 6, 0, 6
    addi 24, 6, 0x21b
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 24
    fmr 2, 1
    addi 7, 1, 0x5c
    lwz 3, 0x20(4)
    addi 4, 1, 0x38
    bl fn_802F86CC
    .4byte 0x480001BC # b .L_803BEF98
L_803BEDE0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC02204E0 # lfs f1, lbl_80543480@sda21(r0)
    lwz 4, 0x4(4)
    lfs 0, 0x30(3)
    lhz 3, 0x4(4)
    stw 0, 0x128(1)
    fmadds 0, 25, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC04204DC # lfs f2, lbl_8054347C@sda21(r0)
    stw 0, 0x12c(1)
    .4byte 0xC82204C8 # lfd f1, lbl_80543468@sda21(r0)
    fmuls 2, 2, 0
    lfd 0, 0x128(1)
    .4byte 0xC06204B8 # lfs f3, lbl_80543458@sda21(r0)
    fsubs 0, 0, 1
    lwz 5, 0x0(26)
    lwz 6, 0x4(26)
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0x38(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x4(31)
    fsubs 25, 1, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lfs 0, 0x34(3)
    addi 4, 1, 0x8
    lwz 3, 0x4(5)
    li 5, 0x1
    .4byte 0xC02204E0 # lfs f1, lbl_80543480@sda21(r0)
    lhz 3, 0x6(3)
    fmadds 0, 25, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC04204F0 # lfs f2, lbl_80543490@sda21(r0)
    stw 3, 0x124(1)
    fadds 0, 2, 0
    .4byte 0xC0A204E4 # lfs f5, lbl_80543484@sda21(r0)
    stw 0, 0x120(1)
    .4byte 0xC86204C8 # lfd f3, lbl_80543468@sda21(r0)
    fmuls 4, 5, 0
    lfd 2, 0x120(1)
    .4byte 0xC00204DC # lfs f0, lbl_8054347C@sda21(r0)
    fsubs 2, 2, 3
    stfs 1, 0x40(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x8(1)
    fdivs 2, 4, 2
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    stfs 5, 0x14(1)
    stfs 2, 0x3c(1)
    bl fn_8013B414
    lis 3, 0x38e4
    lha 0, 0xdc(31)
    subi 4, 3, 0x71c7
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    mulhw 6, 4, 0
    lis 4, 0x534f
    lwz 3, 0xa4(3)
    addi 5, 30, 0x854
    lwz 0, 0x0(27)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    srawi 6, 6, 1
    srwi 7, 6, 31
    add 6, 6, 7
    lwz 12, 0x18(12)
    add 24, 6, 0
    mtctr 12
    bctrl
    .4byte 0xC02204D8 # lfs f1, lbl_80543478@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 24
    fmr 2, 1
    addi 7, 1, 0x5c
    lwz 3, 0x20(4)
    addi 4, 1, 0x38
    bl fn_802F86CC
L_803BEF98:
    addi 28, 28, 0x1
    addi 26, 26, 0x8
    cmpwi 28, 0x8
    addi 27, 27, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FB2C # blt .L_803BEAD8
L_803BEFB0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    psq_l 31, 0x1b8(1), 0, 0
    lfd 31, 0x1b0(1)
    psq_l 30, 0x1a8(1), 0, 0
    lfd 30, 0x1a0(1)
    psq_l 29, 0x198(1), 0, 0
    lfd 29, 0x190(1)
    psq_l 28, 0x188(1), 0, 0
    lfd 28, 0x180(1)
    psq_l 27, 0x178(1), 0, 0
    lfd 27, 0x170(1)
    psq_l 26, 0x168(1), 0, 0
    lfd 26, 0x160(1)
    psq_l 25, 0x158(1), 0, 0
    lfd 25, 0x150(1)
    lmw 24, 0x130(1)
    lwz 0, 0x1c4(1)
    mtlr 0
    addi 1, 1, 0x1c0
    blr

fn_803BF004:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804765D0@ha
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    addi 30, 4, lbl_804765D0@l
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 3, 0x20(3)
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    sth 0, 0x26(3)
    lwz 0, 0xa4(31)
    lwz 3, 0x38(31)
    slwi 0, 0, 2
    add 4, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x38(4)
    lfs 2, 0xc(3)
    fsubs 2, 0, 2
    bl fn_80402E08
    lwz 0, 0xa4(31)
    li 4, 0x0
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    sth 4, 0x22(3)
    lwz 0, 0xa4(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    sth 4, 0x26(3)
    lwz 0, 0xa4(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 4, 0x38(3)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 28, 0xa4(31)
    lwz 12, 0x0(3)
    slwi 29, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 29
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 0, 28, 2
    mr 4, 3
    add 28, 31, 0
    lbz 5, 0x125(31)
    lwz 3, 0x38(28)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x131(31)
    bl fn_804023D0
    li 3, 0x0
    li 0, 0x23
    sth 3, 0xd8(31)
    li 4, 0x62
    li 5, -0x1
    sth 3, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803BF3BC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x1
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 3, 0x20(3)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x50(31)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 0, 0xa4(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182001C # beq .L_803BF524
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    sth 0, 0x26(3)
    .4byte 0x480000C8 # b .L_803BF5E8
L_803BF524:
    lwz 3, 0x14(31)
    li 0, 0x0
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    sth 0, 0x20(3)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x14(31)
    sth 0, 0x26(3)
    lwz 3, 0x18(31)
    sth 0, 0x20(3)
    lwz 3, 0x18(31)
    sth 0, 0x26(3)
    lwz 3, 0x1c(31)
    sth 0, 0x20(3)
    lwz 3, 0x1c(31)
    sth 0, 0x26(3)
    lwz 3, 0x20(31)
    bl fn_80402E08
    lwz 3, 0x20(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lis 3, lbl_80476938@ha
    li 30, 0x0
    addi 29, 3, lbl_80476938@l
L_803BF59C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x9
    .4byte 0x4180FFC4 # blt .L_803BF59C
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x26(3)
L_803BF5E8:
    lwz 3, 0x34(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x34(31)
    li 4, 0x0
    li 0, 0x22
    sth 4, 0x26(3)
    lwz 3, 0x24(31)
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803BF698:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_803CE4CC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x117
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803BF6C8
    li 4, 0x116
L_803BF6C8:
    stw 4, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803BF718
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803BF720
L_803BF718:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803BF720:
    lwz 3, 0x50(31)
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 0, 0xa4(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182001C # beq .L_803BF940
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    sth 0, 0x26(3)
    .4byte 0x48000038 # b .L_803BF974
L_803BF940:
    lwz 3, 0x14(31)
    li 0, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x14(31)
    sth 0, 0x26(3)
    lwz 3, 0x18(31)
    sth 0, 0x20(3)
    lwz 3, 0x18(31)
    sth 0, 0x26(3)
    lwz 3, 0x1c(31)
    sth 0, 0x20(3)
    lwz 3, 0x1c(31)
    sth 0, 0x26(3)
L_803BF974:
    lwz 3, 0x24(31)
    li 4, 0x0
    li 0, 0x27
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803BF9C4:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_804765D0@ha
    stw 0, 0x44(1)
    li 0, 0x1
    stmw 26, 0x28(1)
    mr 31, 3
    addi 30, 4, lbl_804765D0@l
    li 4, 0x0
    lwz 3, 0x20(3)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 0, 0xe0(31)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x20(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x636f
    lwz 0, 0xe4(31)
    stw 0, 0x24(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x20
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x18(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x636f
    lwz 0, 0xe4(31)
    stw 0, 0x1c(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x18
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x10(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0x14(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0x10
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x8(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0xc(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x38(31)
    li 0, 0x0
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    sth 0, 0x20(3)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x20(31)
    bl fn_80402E08
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x20(3)
    lwz 4, 0x20(31)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 28, 0x0
    addi 27, 30, 0x368
L_803BFCEC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 28, 28, 0x1
    addi 27, 27, 0x8
    cmpwi 28, 0x9
    .4byte 0x4180FFC4 # blt .L_803BFCEC
    lwz 3, 0x20(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x34(31)
    li 0, 0x0
    mr 29, 31
    li 28, 0x0
    sth 0, 0x26(3)
L_803BFD9C:
    lwz 3, 0x24(29)
    li 0, 0x1
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    stb 0, 0xb0(3)
    lwz 3, 0x24(29)
    bl fn_80402E08
    lwz 3, 0x24(29)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x24(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(29)
    li 27, 0x0
    cmpwi 28, 0x2
    sth 27, 0x26(3)
    .4byte 0x418200B4 # beq .L_803BFEA8
    .4byte 0x40800014 # bge .L_803BFE0C
    cmpwi 28, 0x0
    .4byte 0x41820018 # beq .L_803BFE18
    .4byte 0x4080005C # bge .L_803BFE60
    .4byte 0x4800012C # b .L_803BFF34
L_803BFE0C:
    cmpwi 28, 0x4
    .4byte 0x40800124 # bge .L_803BFF34
    .4byte 0x480000DC # b .L_803BFEF0
L_803BFE18:
    addi 26, 30, 0x7f8
L_803BFE1C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(29)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803BFE1C
    .4byte 0x480000D8 # b .L_803BFF34
L_803BFE60:
    addi 26, 30, 0x7d8
L_803BFE64:
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(29)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803BFE64
    .4byte 0x48000090 # b .L_803BFF34
L_803BFEA8:
    addi 26, 30, 0x7b8
L_803BFEAC:
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(29)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803BFEAC
    .4byte 0x48000048 # b .L_803BFF34
L_803BFEF0:
    addi 26, 30, 0x798
L_803BFEF4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(29)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803BFEF4
L_803BFF34:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FE5C # blt .L_803BFD9C
    lwz 3, 0x8(31)
    lis 4, 0x7472
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11e
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x5463
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11f
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lis 3, lbl_8050DB0C@ha
    addi 6, 3, lbl_8050DB0C@l
    lha 5, 0x1e2(6)
    lha 3, 0x1e4(6)
    lha 4, 0x1e0(6)
    lha 0, 0x1e6(6)
    add 3, 3, 5
    add 3, 4, 3
    sth 0, 0xd8(31)
    extsh 3, 3
    lha 0, 0xd8(31)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803BFFEC
    sth 3, 0xd8(31)
L_803BFFEC:
    li 3, 0x0
    li 0, 0x20
    sth 3, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lmw 26, 0x28(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803C0018:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x117
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803C0044
    li 3, 0x116
L_803C0044:
    stw 3, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C0094
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C009C
L_803C0094:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C009C:
    lwz 3, 0x50(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x14(31)
    li 4, 0x0
    li 0, 0x1d
    sth 4, 0x20(3)
    lwz 3, 0x14(31)
    sth 4, 0x26(3)
    lwz 3, 0x18(31)
    sth 4, 0x20(3)
    lwz 3, 0x18(31)
    sth 4, 0x26(3)
    lwz 3, 0x1c(31)
    sth 4, 0x20(3)
    lwz 3, 0x1c(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803C02CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x117
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803C02F8
    li 3, 0x116
L_803C02F8:
    stw 3, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C0348
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C0350
L_803C0348:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C0350:
    lwz 3, 0x50(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 0, 0xa0(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182001C # beq .L_803C0554
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    sth 0, 0x26(3)
    .4byte 0x48000038 # b .L_803C0588
L_803C0554:
    lwz 3, 0x14(31)
    li 0, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x14(31)
    sth 0, 0x26(3)
    lwz 3, 0x18(31)
    sth 0, 0x20(3)
    lwz 3, 0x18(31)
    sth 0, 0x26(3)
    lwz 3, 0x1c(31)
    sth 0, 0x20(3)
    lwz 3, 0x1c(31)
    sth 0, 0x26(3)
L_803C0588:
    lwz 3, 0x24(31)
    li 4, 0x0
    li 0, 0x1c
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803C05D8:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_80476980@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    addi 30, 4, lbl_80476980@l
    stw 29, 0x14(1)
    li 29, 0x0
L_803C0600:
    lwz 3, 0xa0(31)
    mr 4, 29
    bl fn_803B90E4
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803C063C
    lwz 3, 0x4(31)
    lwz 5, 0x10(30)
    lwz 12, 0x0(3)
    lwz 6, 0x14(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_803C0660
L_803C063C:
    lwz 3, 0x4(31)
    lwz 5, 0x10(30)
    lwz 12, 0x0(3)
    lwz 6, 0x14(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_803C0660:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x8
    .4byte 0x4180FF94 # blt .L_803C0600
    lwz 0, 0xa0(31)
    mr 30, 31
    li 29, 0x0
    stw 0, 0xa8(31)
L_803C0680:
    lwz 3, 0xa0(31)
    mr 4, 29
    bl fn_803B8CAC
    addi 29, 29, 0x1
    clrlwi 0, 3, 24
    cmpwi 29, 0x8
    stw 0, 0xb8(30)
    addi 30, 30, 0x4
    .4byte 0x4180FFE0 # blt .L_803C0680
    lwz 3, 0x50(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x34(31)
    li 5, 0x0
    li 4, 0x1
    sth 5, 0x26(3)
    lwz 0, 0xa0(31)
    lbz 3, 0x115(31)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x418200A4 # beq .L_803C093C
    lwz 3, 0x20(31)
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    stb 4, 0xb0(3)
    lwz 3, 0x20(31)
    bl fn_80402E08
    lwz 3, 0x20(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lis 3, lbl_80476938@ha
    li 30, 0x0
    addi 29, 3, lbl_80476938@l
L_803C08EC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x9
    .4byte 0x4180FFC4 # blt .L_803C08EC
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x26(3)
    .4byte 0x48000034 # b .L_803C096C
L_803C093C:
    lwz 3, 0x14(31)
    sth 5, 0x20(3)
    lwz 3, 0x14(31)
    sth 5, 0x26(3)
    lwz 3, 0x18(31)
    sth 5, 0x20(3)
    lwz 3, 0x18(31)
    sth 5, 0x26(3)
    lwz 3, 0x1c(31)
    sth 5, 0x20(3)
    lwz 3, 0x1c(31)
    sth 5, 0x26(3)
L_803C096C:
    lwz 3, 0x8(31)
    lis 4, 0x7472
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11e
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x5463
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11f
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(31)
    li 4, 0x0
    li 0, 0x1a
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803C0A34:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804765D0@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    addi 30, 4, lbl_804765D0@l
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    addi 28, 30, 0x3b0
L_803C0A64:
    lwz 3, 0xa0(31)
    mr 4, 29
    bl fn_803B90E4
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803C0AA0
    lwz 3, 0x4(31)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_803C0AC4
L_803C0AA0:
    lwz 3, 0x4(31)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_803C0AC4:
    addi 29, 29, 0x1
    addi 28, 28, 0x8
    cmpwi 29, 0x8
    .4byte 0x4180FF94 # blt .L_803C0A64
    lwz 0, 0xa0(31)
    mr 28, 31
    li 29, 0x0
    stw 0, 0xa8(31)
L_803C0AE4:
    lwz 3, 0xa0(31)
    mr 4, 29
    bl fn_803B8CAC
    addi 29, 29, 0x1
    clrlwi 0, 3, 24
    cmpwi 29, 0x8
    stw 0, 0xb8(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFE0 # blt .L_803C0AE4
    li 0, 0x64
    lis 3, 0x6674
    stw 0, 0x84(31)
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C0B5C
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C0B64
L_803C0B5C:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C0B64:
    mr 3, 31
    bl fn_803CE4CC
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 0, 0x0
    stw 0, 0x80(31)
    fmr 2, 1
    lwz 3, 0x14(31)
    bl fn_80402E08
    lwz 3, 0x14(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x14(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x18(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x18(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x18(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x1c(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x1c(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x1c(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 28, 0x0
    addi 29, 30, 0x48
L_803C0C24:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0x51
    .4byte 0x4180FFC4 # blt .L_803C0C24
    li 28, 0x0
    addi 29, 30, 0x2d0
L_803C0C6C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0x13
    .4byte 0x4180FFC4 # blt .L_803C0C6C
    lwz 3, 0x14(31)
    li 0, 0x0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    sth 0, 0x26(3)
    lwz 3, 0x18(31)
    sth 0, 0x26(3)
    lwz 3, 0x1c(31)
    sth 0, 0x26(3)
    lwz 3, 0x20(31)
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    sth 0, 0x26(3)
    lwz 0, 0xa0(31)
    lwz 3, 0x38(31)
    slwi 0, 0, 2
    add 4, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x38(4)
    lfs 2, 0xc(3)
    fsubs 2, 0, 2
    bl fn_80402E08
    lwz 0, 0xa0(31)
    li 4, 0x0
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    sth 4, 0x22(3)
    lwz 0, 0xa0(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    sth 4, 0x26(3)
    lwz 0, 0xa0(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 4, 0x38(3)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 28, 0xa0(31)
    lwz 12, 0x0(3)
    slwi 29, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 29
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 0, 28, 2
    mr 4, 3
    add 28, 31, 0
    lbz 5, 0x125(31)
    lwz 3, 0x38(28)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 29
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x131(31)
    bl fn_804023D0
    li 3, 0x0
    li 0, 0x17
    sth 3, 0xd8(31)
    li 4, 0x5b
    li 5, -0x1
    sth 3, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803C1054:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x1
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 3, 0x20(3)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x50(31)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 0, 0xa0(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182001C # beq .L_803C11BC
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    sth 0, 0x26(3)
    .4byte 0x480000D8 # b .L_803C1290
L_803C11BC:
    lwz 3, 0x14(31)
    li 0, 0x0
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    sth 0, 0x20(3)
    lwz 3, 0x14(31)
    sth 0, 0x26(3)
    lwz 3, 0x18(31)
    sth 0, 0x20(3)
    lwz 3, 0x18(31)
    sth 0, 0x26(3)
    lwz 3, 0x1c(31)
    sth 0, 0x20(3)
    lwz 3, 0x1c(31)
    sth 0, 0x26(3)
    lwz 4, 0x3c(31)
    lwz 3, 0x38(31)
    lfs 2, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x20(31)
    fsubs 2, 2, 0
    bl fn_80402E08
    lwz 3, 0x20(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lis 3, lbl_80476938@ha
    li 30, 0x0
    addi 29, 3, lbl_80476938@l
L_803C1244:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x9
    .4byte 0x4180FFC4 # blt .L_803C1244
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x26(3)
L_803C1290:
    lwz 3, 0x34(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x34(31)
    li 4, 0x0
    li 0, 0x16
    sth 4, 0x26(3)
    lwz 3, 0x24(31)
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803C1340:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    stw 0, 0x34(1)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 3, 0x50(3)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 0, 0xe0(31)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x20(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x636f
    lwz 0, 0xe4(31)
    stw 0, 0x24(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x20
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x18(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x636f
    lwz 0, 0xe4(31)
    stw 0, 0x1c(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x18
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x10(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0x14(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0x10
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x8(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0xc(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x14(31)
    sth 0, 0x20(3)
    lwz 3, 0x14(31)
    sth 0, 0x26(3)
    lwz 3, 0x18(31)
    sth 0, 0x20(3)
    lwz 3, 0x18(31)
    sth 0, 0x26(3)
    lwz 3, 0x1c(31)
    sth 0, 0x20(3)
    lwz 3, 0x1c(31)
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x34(31)
    li 4, 0x0
    .4byte 0xC00204B8 # lfs f0, lbl_80543458@sda21(r0)
    li 0, 0x14
    sth 4, 0x26(3)
    lwz 3, 0x24(31)
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    lwz 3, 0x2c(31)
    sth 4, 0x22(3)
    lwz 3, 0x2c(31)
    sth 4, 0x26(3)
    lwz 3, 0x30(31)
    sth 4, 0x22(3)
    lwz 3, 0x30(31)
    sth 4, 0x26(3)
    stfs 0, 0x70(31)
    stfs 0, 0x64(31)
    stfs 0, 0x74(31)
    stfs 0, 0x68(31)
    stfs 0, 0x78(31)
    stfs 0, 0x6c(31)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803C1734:
    stwu 1, -0x80(1)
    mflr 0
    lis 4, lbl_804765D0@ha
    stw 0, 0x84(1)
    stmw 26, 0x68(1)
    addi 31, 4, lbl_804765D0@l
    mr 28, 3
    li 26, 0x0
    addi 27, 31, 0x3b0
L_803C1758:
    lwz 3, 0xa4(28)
    mr 4, 26
    bl fn_803B90E4
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803C1794
    lwz 3, 0x4(28)
    lwz 5, 0x10(27)
    lwz 12, 0x0(3)
    lwz 6, 0x14(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_803C17B8
L_803C1794:
    lwz 3, 0x4(28)
    lwz 5, 0x10(27)
    lwz 12, 0x0(3)
    lwz 6, 0x14(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_803C17B8:
    addi 26, 26, 0x1
    addi 27, 27, 0x8
    cmpwi 26, 0x8
    .4byte 0x4180FF94 # blt .L_803C1758
    lwz 0, 0xa4(28)
    mr 27, 28
    li 26, 0x0
    stw 0, 0xa8(28)
L_803C17D8:
    lwz 3, 0xa4(28)
    mr 4, 26
    bl fn_803B8CAC
    addi 26, 26, 0x1
    clrlwi 0, 3, 24
    cmpwi 26, 0x8
    stw 0, 0xb8(27)
    addi 27, 27, 0x4
    .4byte 0x4180FFE0 # blt .L_803C17D8
    lwz 4, 0x14(28)
    lis 3, lbl_8050EC80@ha
    li 5, 0x1
    li 9, 0x0
    lwz 4, 0x4(4)
    addi 0, 3, lbl_8050EC80@l
    stb 5, 0xb0(4)
    lwz 3, 0x18(28)
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0x1c(28)
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0x34(28)
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0x24(28)
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0x28(28)
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0x2c(28)
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0x30(28)
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0xa4(28)
    mulli 3, 3, 0xc8
    add 3, 0, 3
    lwz 0, 0x20(3)
    lwz 3, 0x24(3)
    xor 0, 0, 9
    xor 3, 3, 9
    or. 0, 3, 0
    .4byte 0x408201F4 # bne .L_803C1A80
    li 8, 0xb4
    li 0, 0x50
    li 7, 0xff
    stb 8, 0x58(1)
    lis 4, 0x7062
    lis 3, 0x50
    stb 8, 0x59(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x636f
    stb 8, 0x5a(1)
    stb 7, 0x5b(1)
    lwz 3, 0x58(1)
    stb 0, 0x60(1)
    stb 0, 0x61(1)
    stb 0, 0x62(1)
    stb 9, 0x63(1)
    lwz 0, 0x60(1)
    stw 3, 0x5c(1)
    stw 0, 0x64(1)
    lwz 3, 0x8(28)
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
    li 9, 0xb4
    li 7, 0x50
    li 8, 0xff
    li 0, 0x0
    stb 9, 0x48(1)
    lis 4, 0x7062
    lis 3, 0x50
    stb 9, 0x49(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x636f
    stb 9, 0x4a(1)
    stb 8, 0x4b(1)
    lwz 3, 0x48(1)
    stb 7, 0x50(1)
    stb 7, 0x51(1)
    stb 7, 0x52(1)
    stb 0, 0x53(1)
    lwz 0, 0x50(1)
    stw 3, 0x4c(1)
    stw 0, 0x54(1)
    lwz 3, 0x8(28)
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
    li 9, 0xb4
    li 7, 0x50
    li 8, 0xff
    li 0, 0x0
    stb 9, 0x38(1)
    lis 4, 0x6c62
    lis 3, 0x50
    stb 9, 0x39(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6465
    stb 9, 0x3a(1)
    stb 8, 0x3b(1)
    lwz 3, 0x38(1)
    stb 7, 0x40(1)
    stb 7, 0x41(1)
    stb 7, 0x42(1)
    stb 0, 0x43(1)
    lwz 0, 0x40(1)
    stw 3, 0x3c(1)
    stw 0, 0x44(1)
    lwz 3, 0x8(28)
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
    li 9, 0xb4
    li 7, 0x50
    li 8, 0xff
    li 0, 0x0
    stb 9, 0x28(1)
    lis 4, 0x6c62
    lis 3, 0x50
    stb 9, 0x29(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6465
    stb 9, 0x2a(1)
    stb 8, 0x2b(1)
    lwz 3, 0x28(1)
    stb 7, 0x30(1)
    stb 7, 0x31(1)
    stb 7, 0x32(1)
    stb 0, 0x33(1)
    lwz 0, 0x30(1)
    stw 3, 0x2c(1)
    stw 0, 0x34(1)
    lwz 3, 0x8(28)
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
    .4byte 0x48000134 # b .L_803C1BB0
L_803C1A80:
    lwz 0, 0xe0(28)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x20(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x636f
    lwz 0, 0xe4(28)
    stw 0, 0x24(1)
    lwz 3, 0x8(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x20
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(28)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x18(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x636f
    lwz 0, 0xe4(28)
    stw 0, 0x1c(1)
    lwz 3, 0x8(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x18
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(28)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x10(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6465
    lwz 0, 0xe4(28)
    stw 0, 0x14(1)
    lwz 3, 0x8(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0x10
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(28)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x8(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6465
    lwz 0, 0xe4(28)
    stw 0, 0xc(1)
    lwz 3, 0x8(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
L_803C1BB0:
    lwz 3, 0x50(28)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(28)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(28)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(28)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(28)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(28)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(28)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(28)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(28)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x50(28)
    li 0, 0x0
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x38(28)
    sth 0, 0x20(3)
    lwz 3, 0x38(28)
    sth 0, 0x22(3)
    lwz 3, 0x38(28)
    sth 0, 0x26(3)
    lwz 3, 0x44(28)
    sth 0, 0x20(3)
    lwz 3, 0x44(28)
    sth 0, 0x22(3)
    lwz 3, 0x44(28)
    sth 0, 0x26(3)
    lwz 3, 0x3c(28)
    sth 0, 0x20(3)
    lwz 3, 0x3c(28)
    sth 0, 0x22(3)
    lwz 3, 0x3c(28)
    sth 0, 0x26(3)
    lwz 3, 0x48(28)
    sth 0, 0x20(3)
    lwz 3, 0x48(28)
    sth 0, 0x22(3)
    lwz 3, 0x48(28)
    sth 0, 0x26(3)
    lwz 3, 0x40(28)
    sth 0, 0x20(3)
    lwz 3, 0x40(28)
    sth 0, 0x22(3)
    lwz 3, 0x40(28)
    sth 0, 0x26(3)
    lwz 3, 0x4c(28)
    sth 0, 0x20(3)
    lwz 3, 0x4c(28)
    sth 0, 0x22(3)
    lwz 3, 0x4c(28)
    sth 0, 0x26(3)
    lwz 3, 0x14(28)
    bl fn_80402E08
    lwz 3, 0x14(28)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x14(28)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(28)
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x18(28)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x18(28)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x1c(28)
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x1c(28)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x1c(28)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 29, 0x0
    addi 27, 31, 0x48
L_803C1DE8:
    lwz 3, 0x4(28)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0x132
    mr 4, 3
    lwz 3, 0x14(28)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 29, 29, 0x1
    addi 27, 27, 0x8
    cmpwi 29, 0x51
    .4byte 0x4180FFC4 # blt .L_803C1DE8
    li 29, 0x0
    addi 27, 31, 0x2d0
L_803C1E30:
    lwz 3, 0x8(28)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0x183
    mr 4, 3
    lwz 3, 0x14(28)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 29, 29, 0x1
    addi 27, 27, 0x8
    cmpwi 29, 0x13
    .4byte 0x4180FFC4 # blt .L_803C1E30
    lwz 3, 0x14(28)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x26(3)
    lwz 3, 0x18(28)
    sth 0, 0x26(3)
    lwz 3, 0x1c(28)
    sth 0, 0x26(3)
    lwz 3, 0x34(28)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(28)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(28)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x34(28)
    li 0, 0x0
    mr 30, 28
    li 29, 0x0
    sth 0, 0x26(3)
L_803C1EF0:
    lwz 3, 0x24(30)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x24(30)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x24(30)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    cmpwi 29, 0x2
    .4byte 0x418200BC # beq .L_803C1FE8
    .4byte 0x40800014 # bge .L_803C1F44
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_803C1F50
    .4byte 0x40800060 # bge .L_803C1F9C
    .4byte 0x4800013C # b .L_803C207C
L_803C1F44:
    cmpwi 29, 0x4
    .4byte 0x40800134 # bge .L_803C207C
    .4byte 0x480000E8 # b .L_803C2034
L_803C1F50:
    li 27, 0x0
    addi 26, 31, 0x7f8
L_803C1F58:
    lwz 3, 0x8(28)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(30)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803C1F58
    .4byte 0x480000E4 # b .L_803C207C
L_803C1F9C:
    li 27, 0x0
    addi 26, 31, 0x7d8
L_803C1FA4:
    lwz 3, 0x8(28)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(30)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803C1FA4
    .4byte 0x48000098 # b .L_803C207C
L_803C1FE8:
    li 27, 0x0
    addi 26, 31, 0x7b8
L_803C1FF0:
    lwz 3, 0x8(28)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(30)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803C1FF0
    .4byte 0x4800004C # b .L_803C207C
L_803C2034:
    li 27, 0x0
    addi 26, 31, 0x798
L_803C203C:
    lwz 3, 0x8(28)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x19f
    mr 4, 3
    lwz 3, 0x24(30)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_803C203C
L_803C207C:
    lwz 3, 0x24(30)
    addi 29, 29, 0x1
    li 0, 0x0
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    sth 0, 0x26(3)
    .4byte 0x4180FE5C # blt .L_803C1EF0
    lwz 3, 0x8(28)
    lis 4, 0x7472
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x118
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(28)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x5463
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x119
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(28)
    lis 4, 0x656c
    addi 6, 4, 0x3031
    li 5, 0x5464
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11a
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(28)
    lis 4, 0x6163
    addi 6, 4, 0x3031
    li 5, 0x5462
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11b
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 3, 0x0
    li 0, 0x12
    sth 3, 0xd8(28)
    sth 3, 0xda(28)
    lbz 3, 0x110(28)
    stb 3, 0x112(28)
    stb 0, 0x110(28)
    lmw 26, 0x68(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_803C21A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_803CE4CC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x117
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803C21D8
    li 4, 0x116
L_803C21D8:
    stw 4, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C2228
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C2230
L_803C2228:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C2230:
    lwz 3, 0x50(31)
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x14(31)
    sth 0, 0x20(3)
    lwz 3, 0x14(31)
    sth 0, 0x26(3)
    lwz 3, 0x18(31)
    sth 0, 0x20(3)
    lwz 3, 0x18(31)
    sth 0, 0x26(3)
    lwz 3, 0x1c(31)
    sth 0, 0x20(3)
    lwz 3, 0x1c(31)
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x24(31)
    li 4, 0x0
    li 0, 0x6
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    lwz 3, 0x2c(31)
    sth 4, 0x22(3)
    lwz 3, 0x2c(31)
    sth 4, 0x26(3)
    lwz 3, 0x30(31)
    sth 4, 0x22(3)
    lwz 3, 0x30(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803C24BC:
    stwu 1, -0x80(1)
    mflr 0
    lis 4, lbl_804765D0@ha
    stw 0, 0x84(1)
    stmw 14, 0x38(1)
    mr 15, 3
    addi 16, 4, lbl_804765D0@l
    bl fn_803CE4CC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x117
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803C24F4
    li 4, 0x116
L_803C24F4:
    stw 4, 0x84(15)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(15)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(15)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C2544
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C254C
L_803C2544:
    li 0, 0x5a
    stw 0, 0xb0(15)
L_803C254C:
    lwz 3, 0x14(15)
    li 4, 0x0
    li 0, 0x1
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    lwz 3, 0x4(3)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    stb 4, 0xb0(3)
    lwz 3, 0x18(15)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x1c(15)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x34(15)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x24(15)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x28(15)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x2c(15)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x30(15)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x50(15)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x38(15)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x44(15)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x3c(15)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x48(15)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x40(15)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x4c(15)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x50(15)
    bl fn_80402E08
    lwz 3, 0x50(15)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(15)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(15)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(15)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(15)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(15)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(15)
    lbz 5, 0x28(3)
    bl fn_804023D0
    addi 0, 16, 0x780
    lwz 3, 0x50(15)
    stw 0, 0x30(1)
    addi 0, 16, 0x768
    li 4, 0x0
    mr 31, 15
    stw 0, 0x2c(1)
    addi 0, 16, 0x750
    addi 14, 16, 0x620
    addi 30, 16, 0x608
    stw 0, 0x28(1)
    addi 0, 16, 0x6c8
    addi 29, 16, 0x5f0
    addi 28, 16, 0x5d8
    stw 0, 0x24(1)
    addi 0, 16, 0x6b0
    addi 27, 16, 0x5c0
    addi 26, 16, 0x5a8
    stw 0, 0x20(1)
    addi 0, 16, 0x698
    addi 25, 16, 0x590
    addi 24, 16, 0x578
    stw 0, 0x1c(1)
    addi 0, 16, 0x680
    addi 23, 16, 0x560
    addi 22, 16, 0x548
    stw 0, 0x18(1)
    addi 0, 16, 0x668
    addi 21, 16, 0x530
    addi 20, 16, 0x518
    stw 0, 0x14(1)
    addi 0, 16, 0x650
    addi 19, 16, 0x500
    addi 18, 16, 0x4e8
    stw 0, 0x10(1)
    addi 0, 16, 0x638
    addi 17, 16, 0x4d0
    addi 16, 16, 0x4b8
    stw 0, 0xc(1)
    li 0, 0x0
    sth 4, 0x26(3)
    stw 0, 0x8(1)
L_803C27B8:
    lwz 3, 0x38(31)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    .4byte 0xC0420500 # lfs f2, lbl_805434A0@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(15)
    lwz 4, 0x30(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x125(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x2c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x126(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x28(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x127(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x24(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x128(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x20(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x129(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x1c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x18(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x14(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x10(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0xc(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x130(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x131(15)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 0, 0x0
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x44(31)
    bl fn_80402E08
    lwz 3, 0x44(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(15)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x118(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x119(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x120(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x121(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x122(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x123(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x124(15)
    bl fn_804023D0
    lwz 3, 0x8(1)
    li 5, 0x0
    lwz 4, 0x44(31)
    addi 14, 14, 0x8
    addi 3, 3, 0x1
    addi 30, 30, 0x8
    mr 0, 3
    stw 3, 0x8(1)
    lwz 3, 0x30(1)
    cmpwi 0, 0x3
    sth 5, 0x26(4)
    addi 29, 29, 0x8
    addi 3, 3, 0x8
    addi 28, 28, 0x8
    stw 3, 0x30(1)
    addi 27, 27, 0x8
    lwz 3, 0x2c(1)
    addi 26, 26, 0x8
    addi 25, 25, 0x8
    addi 24, 24, 0x8
    addi 3, 3, 0x8
    addi 23, 23, 0x8
    stw 3, 0x2c(1)
    addi 22, 22, 0x8
    lwz 3, 0x28(1)
    addi 21, 21, 0x8
    addi 20, 20, 0x8
    addi 19, 19, 0x8
    addi 3, 3, 0x8
    addi 18, 18, 0x8
    stw 3, 0x28(1)
    addi 17, 17, 0x8
    lwz 3, 0x24(1)
    addi 16, 16, 0x8
    addi 31, 31, 0x4
    addi 3, 3, 0x8
    stw 3, 0x24(1)
    lwz 3, 0x20(1)
    addi 3, 3, 0x8
    stw 3, 0x20(1)
    lwz 3, 0x1c(1)
    addi 3, 3, 0x8
    stw 3, 0x1c(1)
    lwz 3, 0x18(1)
    addi 3, 3, 0x8
    stw 3, 0x18(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x8
    stw 3, 0x14(1)
    lwz 3, 0x10(1)
    addi 3, 3, 0x8
    stw 3, 0x10(1)
    lwz 3, 0xc(1)
    addi 3, 3, 0x8
    stw 3, 0xc(1)
    .4byte 0x4180FA08 # blt .L_803C27B8
    lwz 3, 0x54(15)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    .4byte 0xC04204BC # lfs f2, lbl_8054345C@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x54(15)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x54(15)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x54(15)
    li 4, 0x0
    li 0, 0x4
    sth 4, 0x26(3)
    sth 4, 0xd8(15)
    sth 4, 0xda(15)
    lbz 3, 0x110(15)
    stb 3, 0x112(15)
    stb 0, 0x110(15)
    lmw 14, 0x38(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_803C2E24:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 17, 0x14(1)
    addi 30, 5, lbl_804765D0@l
    mr 31, 3
    lha 25, 0x1fc(4)
    lha 28, 0x1fa(4)
    mulli 0, 25, 0x3
    lha 5, 0x1f4(4)
    lha 20, 0x1f6(4)
    lha 24, 0x1f8(4)
    add 0, 28, 0
    add 19, 5, 20
    add 0, 24, 0
    lha 23, 0x1fe(4)
    cmpw 19, 0
    lha 26, 0x200(4)
    lha 22, 0x202(4)
    .4byte 0x40800008 # bge .L_803C2E84
    mr 19, 0
L_803C2E84:
    add 0, 26, 22
    add 0, 23, 0
    cmpw 19, 0
    .4byte 0x40800008 # bge .L_803C2E98
    mr 19, 0
L_803C2E98:
    lwz 0, 0xa4(31)
    li 4, 0x0
    addi 29, 1, 0x8
    cmpw 4, 0
    mr 3, 29
    .4byte 0x4182000C # beq .L_803C2EB8
    stw 4, 0x0(29)
    addi 3, 29, 0x4
L_803C2EB8:
    lwz 0, 0xa4(31)
    li 4, 0x1
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_803C2ED0
    stw 4, 0x0(3)
    addi 3, 3, 0x4
L_803C2ED0:
    lwz 0, 0xa4(31)
    li 4, 0x2
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_803C2EE4
    stw 4, 0x0(3)
L_803C2EE4:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0xd8(31)
    cmpw 0, 5
    .4byte 0x408101AC # ble .L_803C30A4
    lwz 0, 0xa4(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182007C # beq .L_803C2F90
    lwz 3, 0x20(31)
    mr 4, 20
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 20
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 20, 0x0
    addi 18, 30, 0x368
L_803C2F4C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 18, 18, 0x8
    cmpwi 20, 0x9
    .4byte 0x4180FFC4 # blt .L_803C2F4C
    .4byte 0x48000118 # b .L_803C30A4
L_803C2F90:
    lwz 3, 0x14(31)
    mr 4, 20
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(31)
    mr 4, 20
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x18(31)
    mr 4, 20
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(31)
    mr 4, 20
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x1c(31)
    mr 4, 20
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(31)
    mr 4, 20
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 20, 0x0
    addi 18, 30, 0x48
L_803C301C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 18, 18, 0x8
    cmpwi 20, 0x51
    .4byte 0x4180FFC4 # blt .L_803C301C
    li 20, 0x0
    addi 18, 30, 0x2d0
L_803C3064:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 18, 18, 0x8
    cmpwi 20, 0x13
    .4byte 0x4180FFC4 # blt .L_803C3064
L_803C30A4:
    mr 21, 31
    li 20, 0x0
    li 27, 0x0
L_803C30B0:
    lha 3, 0xd8(31)
    add 0, 24, 27
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803C3240
    lwz 3, 0x24(21)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(21)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    cmpwi 20, 0x2
    .4byte 0x418200BC # beq .L_803C31AC
    .4byte 0x40800014 # bge .L_803C3108
    cmpwi 20, 0x0
    .4byte 0x41820018 # beq .L_803C3114
    .4byte 0x40800060 # bge .L_803C3160
    .4byte 0x4800013C # b .L_803C3240
L_803C3108:
    cmpwi 20, 0x4
    .4byte 0x40800134 # bge .L_803C3240
    .4byte 0x480000E8 # b .L_803C31F8
L_803C3114:
    li 18, 0x0
    addi 17, 30, 0x7f8
L_803C311C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C311C
    .4byte 0x480000E4 # b .L_803C3240
L_803C3160:
    li 18, 0x0
    addi 17, 30, 0x7d8
L_803C3168:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C3168
    .4byte 0x48000098 # b .L_803C3240
L_803C31AC:
    li 18, 0x0
    addi 17, 30, 0x7b8
L_803C31B4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C31B4
    .4byte 0x4800004C # b .L_803C3240
L_803C31F8:
    li 18, 0x0
    addi 17, 30, 0x798
L_803C3200:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C3200
L_803C3240:
    addi 20, 20, 0x1
    add 27, 27, 25
    cmpwi 20, 0x2
    addi 21, 21, 0x4
    .4byte 0x4180FE60 # blt .L_803C30B0
    li 25, 0x0
    li 24, 0x0
L_803C325C:
    lha 3, 0xd8(31)
    add 0, 23, 24
    cmpw 3, 0
    .4byte 0x408105E4 # ble .L_803C384C
    lwz 0, 0x0(29)
    mr 4, 26
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(29)
    mr 4, 26
    li 5, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 18, 0x0(29)
    lwz 12, 0x0(3)
    slwi 27, 18, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 18, 2
    mr 4, 3
    addi 28, 5, 0x38
    lbz 5, 0x125(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x131(31)
    bl fn_804023D0
    slwi 3, 18, 2
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    addi 0, 3, 0x44
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwzx 3, 31, 0
    mr 4, 26
    li 5, 0x0
    bl fn_80402B10
    slwi 3, 18, 2
    mr 4, 26
    addi 0, 3, 0x44
    li 5, 0x0
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x5d8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 18, 2
    mr 4, 3
    addi 28, 5, 0x44
    lbz 5, 0x118(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5c0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5a8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x590
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x578
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x560
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x548
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x530
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x518
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x500
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4e8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4d0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4b8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x124(31)
    bl fn_804023D0
L_803C384C:
    addi 25, 25, 0x1
    add 24, 24, 22
    cmpwi 25, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180FA00 # blt .L_803C325C
    lwz 3, 0xa4(31)
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_803C38D4
    lha 0, 0xd8(31)
    cmpw 0, 23
    .4byte 0x40810060 # ble .L_803C38D4
    slwi 0, 3, 2
    lwz 5, 0x38(31)
    add 3, 31, 0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x38(3)
    mr 4, 26
    lfs 0, 0xc(5)
    li 5, 0x0
    lfs 1, 0xc(3)
    fsubs 1, 0, 1
    bl fn_80402940
    lwz 0, 0xa4(31)
    mr 4, 26
    lwz 3, 0x44(31)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    add 6, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x44(6)
    lfs 1, 0xc(3)
    fsubs 1, 0, 1
    bl fn_80402940
L_803C38D4:
    lha 0, 0xd8(31)
    cmpw 0, 19
    .4byte 0x40810014 # ble .L_803C38F0
    lbz 3, 0x110(31)
    li 0, 0x5
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C38F0:
    lmw 17, 0x14(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803C3904:
    stwu 1, -0x40(1)
    mflr 0
    li 5, 0x0
    lis 4, lbl_804765D0@ha
    stw 0, 0x44(1)
    stmw 21, 0x14(1)
    mr 31, 3
    lis 3, lbl_8050DB0C@ha
    addi 29, 1, 0x8
    addi 3, 3, lbl_8050DB0C@l
    addi 30, 4, lbl_804765D0@l
    lwz 0, 0xa4(31)
    lha 26, 0x200(3)
    lha 22, 0x202(3)
    cmpw 5, 0
    lha 23, 0x1fe(3)
    mr 3, 29
    add 21, 26, 22
    add 21, 23, 21
    .4byte 0x4182000C # beq .L_803C395C
    stw 5, 0x0(29)
    addi 3, 29, 0x4
L_803C395C:
    lwz 0, 0xa4(31)
    li 5, 0x1
    cmpw 5, 0
    .4byte 0x4182000C # beq .L_803C3974
    stw 5, 0x0(3)
    addi 3, 3, 0x4
L_803C3974:
    lwz 0, 0xa4(31)
    li 5, 0x2
    cmpw 5, 0
    .4byte 0x41820008 # beq .L_803C3988
    stw 5, 0x0(3)
L_803C3988:
    lha 3, 0xd8(31)
    li 25, 0x0
    li 24, 0x0
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
L_803C399C:
    lha 3, 0xd8(31)
    add 0, 23, 24
    cmpw 3, 0
    .4byte 0x408105F4 # ble .L_803C3F9C
    lwz 0, 0x0(29)
    mr 4, 26
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(29)
    mr 4, 26
    li 5, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 28, 0x0(29)
    lwz 12, 0x0(3)
    slwi 27, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 28, 2
    mr 4, 3
    addi 28, 5, 0x38
    lbz 5, 0x125(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x131(31)
    bl fn_804023D0
    lwz 0, 0x0(29)
    mr 4, 26
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(29)
    mr 4, 26
    li 5, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x5d8
    lwz 28, 0x0(29)
    lwz 12, 0x0(3)
    slwi 27, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 28, 2
    mr 4, 3
    addi 28, 5, 0x44
    lbz 5, 0x118(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5c0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5a8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x590
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x578
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x560
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x548
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x530
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x518
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x500
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4e8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4d0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4b8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x124(31)
    bl fn_804023D0
L_803C3F9C:
    addi 25, 25, 0x1
    add 24, 24, 22
    cmpwi 25, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180F9F0 # blt .L_803C399C
    lwz 3, 0xa4(31)
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_803C4024
    lha 0, 0xd8(31)
    cmpw 0, 23
    .4byte 0x40810060 # ble .L_803C4024
    slwi 0, 3, 2
    lwz 5, 0x38(31)
    add 3, 31, 0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x38(3)
    mr 4, 26
    lfs 0, 0xc(5)
    li 5, 0x0
    lfs 1, 0xc(3)
    fsubs 1, 0, 1
    bl fn_80402940
    lwz 0, 0xa4(31)
    mr 4, 26
    lwz 3, 0x44(31)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    add 6, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x44(6)
    lfs 1, 0xc(3)
    fsubs 1, 0, 1
    bl fn_80402940
L_803C4024:
    lha 0, 0xd8(31)
    cmpw 0, 21
    .4byte 0x40810014 # ble .L_803C4040
    lbz 3, 0x110(31)
    li 0, 0x5
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C4040:
    lmw 21, 0x14(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803C4054:
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
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_803C40D4
    lbz 3, 0x114(31)
    cmplwi 3, 0x0
    .4byte 0x418200E8 # beq .L_803C4188
    subi 0, 3, 0x1
    li 3, 0x1
    stb 0, 0x114(31)
    li 0, 0x1e
    li 4, 0x26
    li 5, -0x1
    sth 3, 0xda(31)
    lwz 3, 0x34(31)
    sth 0, 0x26(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000B8 # b .L_803C4188
L_803C40D4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_803C4128
    lbz 3, 0x114(31)
    cmplwi 3, 0x1
    .4byte 0x40800094 # bge .L_803C4188
    addi 0, 3, 0x1
    li 3, 0x1
    stb 0, 0x114(31)
    li 0, 0x1e
    li 4, 0x26
    li 5, -0x1
    sth 3, 0xda(31)
    lwz 3, 0x34(31)
    sth 0, 0x26(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000064 # b .L_803C4188
L_803C4128:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_803C4188
    lbz 0, 0x114(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803C4168
    mr 3, 31
    bl fn_803BF3BC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000024 # b .L_803C4188
L_803C4168:
    li 0, 0x0
    mr 3, 31
    stw 0, 0x80(31)
    bl fn_803BF698
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
L_803C4188:
    lbz 0, 0x110(31)
    cmplwi 0, 0x25
    .4byte 0x40820174 # bne .L_803C4304
    lha 5, 0xda(31)
    .4byte 0xC3C204B8 # lfs f30, lbl_80543458@sda21(r0)
    extsh. 0, 5
    .4byte 0x41820098 # beq .L_803C4238
    cmpwi 5, 0x5
    .4byte 0x40800040 # bge .L_803C41E8
    mullw 4, 5, 5
    lis 3, 0x4330
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    xoris 3, 4, 0x8000
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    sth 0, 0xda(31)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x48000054 # b .L_803C4238
L_803C41E8:
    cmpwi 5, 0xa
    .4byte 0x40800044 # bge .L_803C4230
    subfic 0, 5, 0xa
    lis 3, 0x4330
    mullw 4, 0, 0
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    xoris 3, 4, 0x8000
    sth 0, 0xda(31)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x4800000C # b .L_803C4238
L_803C4230:
    li 0, 0x0
    sth 0, 0xda(31)
L_803C4238:
    .4byte 0xC3E204B8 # lfs f31, lbl_80543458@sda21(r0)
    mr 30, 31
    li 29, 0x0
L_803C4244:
    fcmpu cr0, 31, 30
    .4byte 0x41820024 # beq .L_803C426C
    lbz 0, 0x114(31)
    cmpw 29, 0
    .4byte 0x40820018 # bne .L_803C426C
    fmr 1, 31
    lwz 3, 0x24(30)
    fmr 2, 30
    bl fn_80402E08
    .4byte 0x48000014 # b .L_803C427C
L_803C426C:
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x24(30)
    fmr 2, 1
    bl fn_80402E08
L_803C427C:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFBC # blt .L_803C4244
    lbz 0, 0x114(31)
    fmr 2, 30
    lwz 4, 0x24(31)
    slwi 0, 0, 2
    lwz 3, 0x34(31)
    add 5, 31, 0
    lfs 0, 0x8(4)
    lwz 4, 0x24(5)
    lfs 1, 0x8(4)
    fsubs 1, 1, 0
    bl fn_80402E08
    lwz 3, 0x34(31)
    li 4, 0x3c
    li 5, 0x0
    li 7, 0x1
    lbz 6, 0x28(3)
    bl fn_8040245C
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
L_803C4304:
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

fn_803C4330:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xb0(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803C4358
    subi 0, 3, 0x1
    stw 0, 0xb0(31)
L_803C4358:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1300
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_803C437C
    lwz 0, 0xb0(31)
    cmpwi 0, 0x0
    .4byte 0x4082029C # bne .L_803C4614
L_803C437C:
    li 0, -0x1
    mr 3, 31
    stw 0, 0xb0(31)
    bl fn_803CE4CC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x117
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803C43A4
    li 4, 0x116
L_803C43A4:
    stw 4, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C43F4
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C43FC
L_803C43F4:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C43FC:
    lwz 3, 0x50(31)
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x38(31)
    sth 0, 0x22(3)
    lwz 3, 0x38(31)
    sth 0, 0x26(3)
    lwz 3, 0x44(31)
    sth 0, 0x20(3)
    lwz 3, 0x44(31)
    sth 0, 0x22(3)
    lwz 3, 0x44(31)
    sth 0, 0x26(3)
    lwz 3, 0x3c(31)
    sth 0, 0x20(3)
    lwz 3, 0x3c(31)
    sth 0, 0x22(3)
    lwz 3, 0x3c(31)
    sth 0, 0x26(3)
    lwz 3, 0x48(31)
    sth 0, 0x20(3)
    lwz 3, 0x48(31)
    sth 0, 0x22(3)
    lwz 3, 0x48(31)
    sth 0, 0x26(3)
    lwz 3, 0x40(31)
    sth 0, 0x20(3)
    lwz 3, 0x40(31)
    sth 0, 0x22(3)
    lwz 3, 0x40(31)
    sth 0, 0x26(3)
    lwz 3, 0x4c(31)
    sth 0, 0x20(3)
    lwz 3, 0x4c(31)
    sth 0, 0x22(3)
    lwz 3, 0x4c(31)
    sth 0, 0x26(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    li 3, 0x0
    li 0, 0x26
    sth 3, 0xd8(31)
    li 4, 0xb
    li 5, -0x1
    sth 3, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803C4614:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803C4628:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 20, 0x20(1)
    mr 31, 3
    addi 30, 5, lbl_804765D0@l
    lha 24, 0x208(4)
    lha 26, 0x20a(4)
    lha 25, 0x210(4)
    add 29, 24, 26
    lha 21, 0x20c(4)
    cmpw 25, 29
    lha 23, 0x20e(4)
    lha 22, 0x212(4)
    .4byte 0x40800008 # bge .L_803C4674
    extsh 25, 29
L_803C4674:
    extsh 0, 25
    add 20, 21, 23
    add 0, 0, 22
    cmpw 20, 0
    .4byte 0x40800008 # bge .L_803C468C
    mr 20, 0
L_803C468C:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0xd8(31)
    cmpw 0, 24
    .4byte 0x40810738 # ble .L_803C4DD8
    cmpw 0, 29
    .4byte 0x41810730 # bgt .L_803C4DD8
    lwz 0, 0xa4(31)
    mr 4, 26
    lwz 3, 0x38(31)
    li 5, 0x0
    slwi 0, 0, 2
    lwz 6, 0x40(31)
    add 7, 31, 0
    lfs 1, 0xc(3)
    lwz 3, 0x38(7)
    lfs 0, 0xc(6)
    lfs 2, 0xc(3)
    fsubs 1, 1, 2
    fsubs 2, 0, 2
    bl fn_80402940
    lwz 0, 0xa4(31)
    mr 4, 26
    li 6, 0x0
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 28, 0xa4(31)
    lwz 12, 0x0(3)
    slwi 27, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 0, 28, 2
    mr 4, 3
    add 28, 31, 0
    lbz 5, 0x125(31)
    lwz 3, 0x38(28)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    lbz 5, 0x131(31)
    bl fn_804023D0
    lha 0, 0xd8(31)
    cmpw 0, 29
    .4byte 0x408203A4 # bne .L_803C4D64
    lwz 0, 0xa4(31)
    lwz 3, 0x38(31)
    slwi 0, 0, 2
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    add 4, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x38(4)
    lfs 2, 0xc(3)
    fsubs 2, 0, 2
    bl fn_80402E08
    lwz 0, 0xa4(31)
    li 5, 0x0
    li 4, 0x0
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    sth 5, 0x20(3)
    lwz 0, 0xa4(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 27, 0xa4(31)
    lwz 12, 0x0(3)
    slwi 28, 27, 3
    lwz 12, 0x3c(12)
    add 6, 0, 28
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 0, 27, 2
    mr 4, 3
    add 27, 31, 0
    lbz 5, 0x125(31)
    lwz 3, 0x38(27)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x131(31)
    bl fn_804023D0
    lwz 4, 0xa4(31)
    lis 3, 0x6674
    li 7, 0x0
    li 0, 0x60
    slwi 4, 4, 2
    addi 6, 3, 0x3031
    add 3, 31, 4
    li 5, 0x54
    lwz 3, 0x38(3)
    sth 7, 0x26(3)
    stw 0, 0x84(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C4D4C
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C4D54
L_803C4D4C:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C4D54:
    mr 3, 31
    bl fn_803CE4CC
    li 0, 0x0
    stw 0, 0x80(31)
L_803C4D64:
    lwz 4, 0xa4(31)
    li 0, 0x1
    lbz 3, 0x115(31)
    slw 0, 0, 4
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820050 # beq .L_803C4DD8
    lha 3, 0xd8(31)
    lis 5, 0x4330
    xoris 0, 26, 0x8000
    stw 5, 0x8(1)
    subf 3, 24, 3
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    xoris 6, 3, 0x8000
    stw 0, 0x14(1)
    .4byte 0xC06204D8 # lfs f3, lbl_80543478@sda21(r0)
    mr 3, 31
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fsubs 1, 3, 0
    bl fn_803BC6F0
L_803C4DD8:
    lha 0, 0xd8(31)
    cmpw 0, 21
    .4byte 0x40810078 # ble .L_803C4E58
    lwz 3, 0x20(31)
    mr 4, 23
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 23
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 21, 0x0
    addi 23, 30, 0x368
L_803C4E18:
    lwz 3, 0x4(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 21, 21, 0x1
    addi 23, 23, 0x8
    cmpwi 21, 0x9
    .4byte 0x4180FFC4 # blt .L_803C4E18
L_803C4E58:
    lha 3, 0xd8(31)
    extsh 0, 25
    cmpw 3, 0
    .4byte 0x408102FC # ble .L_803C5160
    lwz 0, 0xa4(31)
    mr 4, 22
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    add 3, 31, 0
    lwz 3, 0x38(3)
    bl fn_80402B10
    lwz 0, 0xa4(31)
    mr 4, 22
    li 5, 0x0
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 22, 0xa4(31)
    lwz 12, 0x0(3)
    slwi 21, 22, 3
    lwz 12, 0x3c(12)
    add 6, 0, 21
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 0, 22, 2
    mr 4, 3
    add 22, 31, 0
    lbz 5, 0x125(31)
    lwz 3, 0x38(22)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 21
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(22)
    lbz 5, 0x131(31)
    bl fn_804023D0
L_803C5160:
    lha 0, 0xd8(31)
    cmpw 0, 20
    .4byte 0x40810014 # ble .L_803C517C
    lbz 3, 0x110(31)
    li 0, 0x24
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C517C:
    lmw 20, 0x20(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803C5190:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x44(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 19, 0xc(1)
    mr 31, 3
    addi 30, 5, lbl_804765D0@l
    lha 6, 0x21c(4)
    lha 22, 0x21e(4)
    lha 24, 0x226(4)
    add 26, 6, 22
    lha 29, 0x222(4)
    lha 27, 0x224(4)
    cmpw 24, 26
    lha 28, 0x220(4)
    add 25, 29, 27
    lha 23, 0x228(4)
    add 25, 28, 25
    .4byte 0x40800008 # bge .L_803C51E8
    extsh 24, 26
L_803C51E8:
    extsh 0, 24
    add 0, 0, 23
    cmpw 25, 0
    .4byte 0x40800008 # bge .L_803C51FC
    mr 25, 0
L_803C51FC:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0xd8(31)
    cmpw 0, 6
    .4byte 0x408102EC # ble .L_803C54FC
    cmpw 0, 26
    .4byte 0x418102E4 # bgt .L_803C54FC
    lwz 0, 0xa4(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820114 # beq .L_803C5348
    lwz 3, 0x20(31)
    mr 4, 22
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 22
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    addi 22, 30, 0x368
    li 21, 0x0
    mr 20, 22
L_803C5270:
    lwz 3, 0x4(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x9
    .4byte 0x4180FFC4 # blt .L_803C5270
    lha 0, 0xd8(31)
    cmpw 0, 26
    .4byte 0x408201A4 # bne .L_803C545C
    lwz 3, 0x20(31)
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x20(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 21, 0x0
L_803C52F8:
    lwz 3, 0x4(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 21, 21, 0x1
    addi 22, 22, 0x8
    cmpwi 21, 0x9
    .4byte 0x4180FFC4 # blt .L_803C52F8
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x26(3)
    .4byte 0x48000118 # b .L_803C545C
L_803C5348:
    lwz 3, 0x14(31)
    mr 4, 22
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(31)
    mr 4, 22
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x18(31)
    mr 4, 22
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(31)
    mr 4, 22
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x1c(31)
    mr 4, 22
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(31)
    mr 4, 22
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 21, 0x0
    addi 20, 30, 0x48
L_803C53D4:
    lwz 3, 0x4(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x51
    .4byte 0x4180FFC4 # blt .L_803C53D4
    li 21, 0x0
    addi 20, 30, 0x2d0
L_803C541C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x13
    .4byte 0x4180FFC4 # blt .L_803C541C
L_803C545C:
    lha 0, 0xd8(31)
    cmpw 0, 26
    .4byte 0x40820098 # bne .L_803C54FC
    li 0, 0x5f
    lis 3, 0x6674
    stw 0, 0x84(31)
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C54BC
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C54C4
L_803C54BC:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C54C4:
    lwz 3, 0x4(31)
    lis 4, 0x6462
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x67
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
L_803C54FC:
    mr 22, 31
    li 21, 0x0
    li 26, 0x0
L_803C5508:
    lha 3, 0xd8(31)
    add 0, 28, 26
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803C5698
    lwz 3, 0x24(22)
    mr 4, 29
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(22)
    mr 4, 29
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    cmpwi 21, 0x2
    .4byte 0x418200BC # beq .L_803C5604
    .4byte 0x40800014 # bge .L_803C5560
    cmpwi 21, 0x0
    .4byte 0x41820018 # beq .L_803C556C
    .4byte 0x40800060 # bge .L_803C55B8
    .4byte 0x4800013C # b .L_803C5698
L_803C5560:
    cmpwi 21, 0x4
    .4byte 0x40800134 # bge .L_803C5698
    .4byte 0x480000E8 # b .L_803C5650
L_803C556C:
    li 20, 0x0
    addi 19, 30, 0x7f8
L_803C5574:
    lwz 3, 0x8(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 19, 19, 0x8
    cmpwi 20, 0x4
    .4byte 0x4180FFC4 # blt .L_803C5574
    .4byte 0x480000E4 # b .L_803C5698
L_803C55B8:
    li 20, 0x0
    addi 19, 30, 0x7d8
L_803C55C0:
    lwz 3, 0x8(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 19, 19, 0x8
    cmpwi 20, 0x4
    .4byte 0x4180FFC4 # blt .L_803C55C0
    .4byte 0x48000098 # b .L_803C5698
L_803C5604:
    li 20, 0x0
    addi 19, 30, 0x7b8
L_803C560C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 19, 19, 0x8
    cmpwi 20, 0x4
    .4byte 0x4180FFC4 # blt .L_803C560C
    .4byte 0x4800004C # b .L_803C5698
L_803C5650:
    li 20, 0x0
    addi 19, 30, 0x798
L_803C5658:
    lwz 3, 0x8(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 19, 19, 0x8
    cmpwi 20, 0x4
    .4byte 0x4180FFC4 # blt .L_803C5658
L_803C5698:
    addi 21, 21, 0x1
    add 26, 26, 27
    cmpwi 21, 0x2
    addi 22, 22, 0x4
    .4byte 0x4180FE60 # blt .L_803C5508
    lha 3, 0xd8(31)
    extsh 0, 24
    cmpw 3, 0
    .4byte 0x40810078 # ble .L_803C5730
    lwz 3, 0x20(31)
    mr 4, 23
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 23
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    li 20, 0x0
    addi 19, 30, 0x368
L_803C56F0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 20, 20, 0x1
    addi 19, 19, 0x8
    cmpwi 20, 0x9
    .4byte 0x4180FFC4 # blt .L_803C56F0
L_803C5730:
    lha 0, 0xd8(31)
    cmpw 0, 25
    .4byte 0x40810050 # ble .L_803C5788
    lis 3, lbl_8050EC80@ha
    lwz 4, 0x5c(31)
    lwz 5, 0xa4(31)
    addi 3, 3, lbl_8050EC80@l
    bl fn_803B933C
    lwz 0, 0xa4(31)
    lwz 3, 0x5c(31)
    clrlwi 4, 0, 24
    bl fn_803BACF8
    lis 3, lbl_8051C1A0@ha
    lwz 4, 0x5c(31)
    addi 3, 3, lbl_8051C1A0@l
    li 5, 0x258
    li 6, 0x0
    bl fn_803B9CCC
    lbz 3, 0x110(31)
    li 0, 0x21
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C5788:
    lmw 19, 0xc(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803C579C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8051C1A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_8051C1A0@l
    bl fn_803B9BDC
    cmpwi 3, 0x2
    .4byte 0x40820024 # bne .L_803C57E4
    li 3, 0x0
    li 0, 0x68
    stw 3, 0x84(31)
    stw 0, 0x80(31)
    lbz 0, 0x110(31)
    stb 0, 0x112(31)
    stb 3, 0x110(31)
    .4byte 0x48000014 # b .L_803C57F4
L_803C57E4:
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803C57F4
    mr 3, 31
    bl fn_803BF004
L_803C57F4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803C5808:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 16, 0x10(1)
    mr 31, 3
    addi 30, 5, lbl_804765D0@l
    lha 26, 0x17e(4)
    lha 21, 0x180(4)
    lha 22, 0x17c(4)
    add 18, 26, 21
    lha 16, 0x182(4)
    lha 17, 0x184(4)
    add 18, 22, 18
    lha 19, 0x186(4)
    add 0, 16, 17
    lha 23, 0x188(4)
    cmpw 18, 0
    lha 20, 0x18a(4)
    .4byte 0x40800008 # bge .L_803C5864
    mr 18, 0
L_803C5864:
    mulli 0, 20, 0x3
    add 0, 23, 0
    add 0, 19, 0
    cmpw 18, 0
    .4byte 0x40800008 # bge .L_803C587C
    mr 18, 0
L_803C587C:
    lwz 0, 0xa4(31)
    li 4, 0x0
    addi 29, 1, 0x8
    cmpw 4, 0
    mr 3, 29
    .4byte 0x4182000C # beq .L_803C589C
    stw 4, 0x0(29)
    addi 3, 29, 0x4
L_803C589C:
    lwz 0, 0xa4(31)
    li 4, 0x1
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_803C58B4
    stw 4, 0x0(3)
    addi 3, 3, 0x4
L_803C58B4:
    lwz 0, 0xa4(31)
    li 4, 0x2
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_803C58C8
    stw 4, 0x0(3)
L_803C58C8:
    lha 3, 0xd8(31)
    li 25, 0x0
    li 24, 0x0
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
L_803C58DC:
    lha 3, 0xd8(31)
    add 0, 22, 24
    cmpw 3, 0
    .4byte 0x408105F4 # ble .L_803C5EDC
    lwz 0, 0x0(29)
    mr 4, 26
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(29)
    mr 4, 26
    li 6, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 28, 0x0(29)
    lwz 12, 0x0(3)
    slwi 27, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 28, 2
    mr 4, 3
    addi 28, 5, 0x38
    lbz 5, 0x125(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x131(31)
    bl fn_804023D0
    lwz 0, 0x0(29)
    mr 4, 26
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(29)
    mr 4, 26
    li 6, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x5d8
    lwz 28, 0x0(29)
    lwz 12, 0x0(3)
    slwi 27, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 28, 2
    mr 4, 3
    addi 28, 5, 0x44
    lbz 5, 0x118(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5c0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5a8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x590
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x578
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x560
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x548
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x530
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x518
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x500
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4e8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4d0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4b8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x124(31)
    bl fn_804023D0
L_803C5EDC:
    addi 25, 25, 0x1
    add 24, 24, 21
    cmpwi 25, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180F9F0 # blt .L_803C58DC
    lwz 3, 0xa4(31)
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_803C5F64
    lha 0, 0xd8(31)
    cmpw 0, 22
    .4byte 0x40810060 # ble .L_803C5F64
    slwi 0, 3, 2
    lwz 5, 0x38(31)
    add 3, 31, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x38(3)
    mr 4, 26
    lfs 0, 0xc(5)
    li 5, 0x0
    lfs 2, 0xc(3)
    fsubs 2, 0, 2
    bl fn_80402940
    lwz 0, 0xa4(31)
    mr 4, 26
    lwz 3, 0x44(31)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    add 6, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x44(6)
    lfs 2, 0xc(3)
    fsubs 2, 0, 2
    bl fn_80402940
L_803C5F64:
    lha 0, 0xd8(31)
    cmpw 0, 16
    .4byte 0x40810078 # ble .L_803C5FE4
    lwz 3, 0x20(31)
    mr 4, 17
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 17
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    li 16, 0x0
    addi 17, 30, 0x368
L_803C5FA4:
    lwz 3, 0x4(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 16, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 16, 16, 0x1
    addi 17, 17, 0x8
    cmpwi 16, 0x9
    .4byte 0x4180FFC4 # blt .L_803C5FA4
L_803C5FE4:
    mr 17, 31
    li 21, 0x0
    li 16, 0x0
L_803C5FF0:
    lha 3, 0xd8(31)
    add 0, 19, 16
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803C6180
    lwz 3, 0x24(17)
    mr 4, 23
    .4byte 0xC02204FC # lfs f1, lbl_8054349C@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(17)
    mr 4, 23
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    cmpwi 21, 0x2
    .4byte 0x418200BC # beq .L_803C60EC
    .4byte 0x40800014 # bge .L_803C6048
    cmpwi 21, 0x0
    .4byte 0x41820018 # beq .L_803C6054
    .4byte 0x40800060 # bge .L_803C60A0
    .4byte 0x4800013C # b .L_803C6180
L_803C6048:
    cmpwi 21, 0x4
    .4byte 0x40800134 # bge .L_803C6180
    .4byte 0x480000E8 # b .L_803C6138
L_803C6054:
    li 22, 0x0
    addi 24, 30, 0x7f8
L_803C605C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(17)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803C605C
    .4byte 0x480000E4 # b .L_803C6180
L_803C60A0:
    li 22, 0x0
    addi 24, 30, 0x7d8
L_803C60A8:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(17)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803C60A8
    .4byte 0x48000098 # b .L_803C6180
L_803C60EC:
    li 22, 0x0
    addi 24, 30, 0x7b8
L_803C60F4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(17)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803C60F4
    .4byte 0x4800004C # b .L_803C6180
L_803C6138:
    li 22, 0x0
    addi 24, 30, 0x798
L_803C6140:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(17)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803C6140
L_803C6180:
    addi 21, 21, 0x1
    add 16, 16, 20
    cmpwi 21, 0x2
    addi 17, 17, 0x4
    .4byte 0x4180FE60 # blt .L_803C5FF0
    lha 0, 0xd8(31)
    cmpw 0, 18
    .4byte 0x40810014 # ble .L_803C61B0
    lbz 3, 0x110(31)
    li 0, 0x25
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C61B0:
    lmw 16, 0x10(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803C61C4:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 17, 0x14(1)
    addi 27, 5, lbl_804765D0@l
    mr 28, 3
    lha 21, 0x1e2(4)
    lha 24, 0x1e4(4)
    lha 23, 0x1e0(4)
    add 3, 24, 21
    lha 5, 0x1e6(4)
    addi 0, 3, 0x1
    lha 30, 0x1e8(4)
    add 0, 23, 0
    lha 29, 0x1ea(4)
    cmpw 5, 0
    .4byte 0x40800008 # bge .L_803C6218
    extsh 5, 0
L_803C6218:
    lha 3, 0xd8(28)
    extsh 31, 5
    add 19, 30, 29
    addi 0, 3, 0x1
    sth 0, 0xd8(28)
    add 19, 31, 19
    lbz 0, 0x112(28)
    cmplwi 0, 0x5
    .4byte 0x41820278 # beq .L_803C64B0
    mr 25, 28
    li 20, 0x0
    li 26, 0x0
L_803C6248:
    lha 3, 0xd8(28)
    add 0, 23, 26
    cmpw 3, 0
    .4byte 0x40810248 # ble .L_803C649C
    add 22, 21, 0
    cmpw 3, 22
    .4byte 0x4181023C # bgt .L_803C649C
    lwz 3, 0x24(25)
    mr 4, 21
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(25)
    mr 4, 21
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    cmpwi 20, 0x2
    .4byte 0x418200BC # beq .L_803C6350
    .4byte 0x40800014 # bge .L_803C62AC
    cmpwi 20, 0x0
    .4byte 0x41820018 # beq .L_803C62B8
    .4byte 0x40800060 # bge .L_803C6304
    .4byte 0x4800013C # b .L_803C63E4
L_803C62AC:
    cmpwi 20, 0x4
    .4byte 0x40800134 # bge .L_803C63E4
    .4byte 0x480000E8 # b .L_803C639C
L_803C62B8:
    li 18, 0x0
    addi 17, 27, 0x7f8
L_803C62C0:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C62C0
    .4byte 0x480000E4 # b .L_803C63E4
L_803C6304:
    li 18, 0x0
    addi 17, 27, 0x7d8
L_803C630C:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C630C
    .4byte 0x48000098 # b .L_803C63E4
L_803C6350:
    li 18, 0x0
    addi 17, 27, 0x7b8
L_803C6358:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C6358
    .4byte 0x4800004C # b .L_803C63E4
L_803C639C:
    li 18, 0x0
    addi 17, 27, 0x798
L_803C63A4:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C63A4
L_803C63E4:
    lha 0, 0xd8(28)
    cmpw 0, 22
    .4byte 0x408200B0 # bne .L_803C649C
    cmpwi 20, 0x0
    .4byte 0x40820054 # bne .L_803C6448
    lwz 3, 0x8(28)
    lis 4, 0x7472
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11e
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(25)
    li 0, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x24(25)
    sth 0, 0x26(3)
    .4byte 0x48000058 # b .L_803C649C
L_803C6448:
    cmpwi 20, 0x1
    .4byte 0x40820050 # bne .L_803C649C
    lwz 3, 0x8(28)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x5463
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11f
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x24(25)
    li 0, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x24(25)
    sth 0, 0x26(3)
L_803C649C:
    addi 20, 20, 0x1
    add 26, 26, 24
    cmpwi 20, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FD9C # blt .L_803C6248
L_803C64B0:
    mr 21, 28
    li 22, 0x0
    li 20, 0x0
L_803C64BC:
    lha 3, 0xd8(28)
    add 0, 31, 20
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803C664C
    lwz 3, 0x24(21)
    mr 4, 30
    .4byte 0xC02204FC # lfs f1, lbl_8054349C@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(21)
    mr 4, 30
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    cmpwi 22, 0x2
    .4byte 0x418200BC # beq .L_803C65B8
    .4byte 0x40800014 # bge .L_803C6514
    cmpwi 22, 0x0
    .4byte 0x41820018 # beq .L_803C6520
    .4byte 0x40800060 # bge .L_803C656C
    .4byte 0x4800013C # b .L_803C664C
L_803C6514:
    cmpwi 22, 0x4
    .4byte 0x40800134 # bge .L_803C664C
    .4byte 0x480000E8 # b .L_803C6604
L_803C6520:
    li 18, 0x0
    addi 17, 27, 0x7f8
L_803C6528:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C6528
    .4byte 0x480000E4 # b .L_803C664C
L_803C656C:
    li 18, 0x0
    addi 17, 27, 0x7d8
L_803C6574:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C6574
    .4byte 0x48000098 # b .L_803C664C
L_803C65B8:
    li 18, 0x0
    addi 17, 27, 0x7b8
L_803C65C0:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C65C0
    .4byte 0x4800004C # b .L_803C664C
L_803C6604:
    li 18, 0x0
    addi 17, 27, 0x798
L_803C660C:
    lwz 3, 0x8(28)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(21)
    lbzx 5, 28, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803C660C
L_803C664C:
    addi 22, 22, 0x1
    add 20, 20, 29
    cmpwi 22, 0x2
    addi 21, 21, 0x4
    .4byte 0x4180FE60 # blt .L_803C64BC
    lha 0, 0xd8(28)
    cmpw 0, 19
    .4byte 0x40810014 # ble .L_803C667C
    lbz 3, 0x110(28)
    li 0, 0x25
    stb 3, 0x112(28)
    stb 0, 0x110(28)
L_803C667C:
    lmw 17, 0x14(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803C6690:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 3
    lis 3, lbl_8050DB0C@ha
    addi 4, 3, lbl_8050DB0C@l
    lha 3, 0xd8(31)
    lha 29, 0x1cc(4)
    lha 28, 0x1ce(4)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    add 27, 29, 28
    lha 0, 0xd8(31)
    cmpw 0, 29
    .4byte 0x4081009C # ble .L_803C6768
    li 26, 0x0
    mr 30, 31
L_803C66D8:
    lwz 3, 0x38(30)
    mr 4, 28
    lfs 1, 0x70(30)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x44(30)
    mr 4, 28
    lfs 1, 0x64(30)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    addi 26, 26, 0x1
    addi 30, 30, 0x4
    cmpwi 26, 0x3
    .4byte 0x4180FFC4 # blt .L_803C66D8
    lha 3, 0xd8(31)
    lis 5, 0x4330
    xoris 0, 28, 0x8000
    stw 5, 0x8(1)
    subf 3, 29, 3
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    xoris 4, 3, 0x8000
    stw 0, 0x14(1)
    .4byte 0xC06204D8 # lfs f3, lbl_80543478@sda21(r0)
    mr 3, 31
    stw 4, 0xc(1)
    lwz 4, 0xa4(31)
    stw 5, 0x10(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fsubs 1, 3, 0
    bl fn_803BC6F0
L_803C6768:
    lha 0, 0xd8(31)
    cmpw 0, 27
    .4byte 0x40810014 # ble .L_803C6784
    lbz 3, 0x110(31)
    li 0, 0x5
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C6784:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803C6798:
    stwu 1, -0x90(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x94(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 14, 0x48(1)
    mr 15, 3
    addi 16, 5, lbl_804765D0@l
    lha 3, 0x1c0(4)
    lha 0, 0x1be(4)
    lha 6, 0x1b8(4)
    add 5, 0, 3
    lha 14, 0x1ba(4)
    lha 3, 0x1bc(4)
    add 0, 6, 14
    lha 18, 0x1c2(4)
    add 5, 3, 5
    stw 0, 0x8(1)
    cmpw 0, 5
    lha 17, 0x1c4(4)
    .4byte 0x40800008 # bge .L_803C67F4
    stw 5, 0x8(1)
L_803C67F4:
    lwz 0, 0x8(1)
    add 3, 18, 17
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803C6808
    stw 3, 0x8(1)
L_803C6808:
    lha 3, 0xd8(15)
    addi 0, 3, 0x1
    sth 0, 0xd8(15)
    lha 0, 0xd8(15)
    cmpw 0, 6
    .4byte 0x40810178 # ble .L_803C6994
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x14(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x14(15)
    mr 4, 14
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(15)
    mr 4, 14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x18(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x18(15)
    mr 4, 14
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(15)
    mr 4, 14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x1c(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x1c(15)
    mr 4, 14
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(15)
    mr 4, 14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 14, 0x0
    addi 19, 16, 0x48
L_803C690C:
    lwz 3, 0x4(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x132
    mr 4, 3
    lwz 3, 0x14(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 19, 19, 0x8
    cmpwi 14, 0x51
    .4byte 0x4180FFC4 # blt .L_803C690C
    li 14, 0x0
    addi 19, 16, 0x2d0
L_803C6954:
    lwz 3, 0x8(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x183
    mr 4, 3
    lwz 3, 0x14(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 19, 19, 0x8
    cmpwi 14, 0x13
    .4byte 0x4180FFC4 # blt .L_803C6954
L_803C6994:
    lha 0, 0xd8(15)
    cmpw 0, 18
    .4byte 0x408106E8 # ble .L_803C7084
    addi 0, 16, 0x780
    mr 31, 15
    stw 0, 0x38(1)
    addi 0, 16, 0x768
    addi 14, 16, 0x5f0
    addi 30, 16, 0x5d8
    stw 0, 0x34(1)
    addi 0, 16, 0x750
    addi 29, 16, 0x5c0
    addi 28, 16, 0x5a8
    stw 0, 0x30(1)
    addi 0, 16, 0x6c8
    addi 27, 16, 0x590
    addi 26, 16, 0x578
    stw 0, 0x2c(1)
    addi 0, 16, 0x6b0
    addi 25, 16, 0x560
    addi 24, 16, 0x548
    stw 0, 0x28(1)
    addi 0, 16, 0x698
    addi 23, 16, 0x530
    addi 22, 16, 0x518
    stw 0, 0x24(1)
    addi 0, 16, 0x680
    addi 21, 16, 0x500
    addi 20, 16, 0x4e8
    stw 0, 0x20(1)
    addi 0, 16, 0x668
    addi 19, 16, 0x4d0
    addi 18, 16, 0x4b8
    stw 0, 0x1c(1)
    addi 0, 16, 0x650
    stw 0, 0x18(1)
    addi 0, 16, 0x638
    stw 0, 0x14(1)
    addi 0, 16, 0x620
    stw 0, 0x10(1)
    addi 0, 16, 0x608
    li 16, 0x0
    stw 0, 0xc(1)
L_803C6A40:
    lwz 0, 0xa4(15)
    cmpw 16, 0
    .4byte 0x41820534 # beq .L_803C6F7C
    lwz 0, 0xa0(15)
    cmpw 16, 0
    .4byte 0x41820528 # beq .L_803C6F7C
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x38(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x44(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x38(31)
    mr 4, 17
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x38(31)
    mr 4, 17
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(15)
    lwz 4, 0x38(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x125(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x34(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x126(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x30(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x127(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x2c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x128(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x28(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x129(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x24(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x20(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x1c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x18(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x14(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x10(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0xc(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x130(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x131(15)
    bl fn_804023D0
    lwz 3, 0x44(31)
    mr 4, 17
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x44(31)
    mr 4, 17
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(15)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x118(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x119(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x120(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x121(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x122(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x123(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x124(15)
    bl fn_804023D0
    .4byte 0x48000034 # b .L_803C6FAC
L_803C6F7C:
    lwz 3, 0x38(31)
    mr 4, 17
    lfs 1, 0x70(31)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x44(31)
    mr 4, 17
    lfs 1, 0x64(31)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
L_803C6FAC:
    lwz 3, 0x38(1)
    addi 16, 16, 0x1
    cmpwi 16, 0x3
    addi 14, 14, 0x8
    addi 3, 3, 0x8
    addi 30, 30, 0x8
    stw 3, 0x38(1)
    addi 29, 29, 0x8
    lwz 3, 0x34(1)
    addi 28, 28, 0x8
    addi 27, 27, 0x8
    addi 26, 26, 0x8
    addi 3, 3, 0x8
    addi 25, 25, 0x8
    stw 3, 0x34(1)
    addi 24, 24, 0x8
    lwz 3, 0x30(1)
    addi 23, 23, 0x8
    addi 22, 22, 0x8
    addi 21, 21, 0x8
    addi 3, 3, 0x8
    addi 20, 20, 0x8
    stw 3, 0x30(1)
    addi 19, 19, 0x8
    lwz 3, 0x2c(1)
    addi 18, 18, 0x8
    addi 31, 31, 0x4
    addi 3, 3, 0x8
    stw 3, 0x2c(1)
    lwz 3, 0x28(1)
    addi 3, 3, 0x8
    stw 3, 0x28(1)
    lwz 3, 0x24(1)
    addi 3, 3, 0x8
    stw 3, 0x24(1)
    lwz 3, 0x20(1)
    addi 3, 3, 0x8
    stw 3, 0x20(1)
    lwz 3, 0x1c(1)
    addi 3, 3, 0x8
    stw 3, 0x1c(1)
    lwz 3, 0x18(1)
    addi 3, 3, 0x8
    stw 3, 0x18(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x8
    stw 3, 0x14(1)
    lwz 3, 0x10(1)
    addi 3, 3, 0x8
    stw 3, 0x10(1)
    lwz 3, 0xc(1)
    addi 3, 3, 0x8
    stw 3, 0xc(1)
    .4byte 0x4180F9C0 # blt .L_803C6A40
L_803C7084:
    lha 3, 0xd8(15)
    lwz 0, 0x8(1)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_803C70A4
    lbz 3, 0x110(15)
    li 0, 0x5
    stb 3, 0x112(15)
    stb 0, 0x110(15)
L_803C70A4:
    lmw 14, 0x48(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803C70B8:
    stwu 1, -0xa0(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0xa4(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 14, 0x58(1)
    addi 16, 5, lbl_804765D0@l
    mr 15, 3
    lha 5, 0x1b8(4)
    lha 14, 0x1ba(4)
    lha 21, 0x1be(4)
    add 0, 5, 14
    lha 19, 0x1c0(4)
    stw 0, 0x18(1)
    lha 0, 0x1c2(4)
    add 3, 21, 19
    lha 20, 0x1bc(4)
    sth 0, 0x1c(1)
    lwz 0, 0x18(1)
    add 3, 20, 3
    lha 17, 0x1c4(4)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803C711C
    stw 3, 0x18(1)
L_803C711C:
    lha 0, 0x1c(1)
    add 3, 0, 17
    lwz 0, 0x18(1)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803C7134
    stw 3, 0x18(1)
L_803C7134:
    lha 3, 0xd8(15)
    addi 0, 3, 0x1
    sth 0, 0xd8(15)
    lha 0, 0xd8(15)
    cmpw 0, 5
    .4byte 0x4081022C # ble .L_803C7374
    lwz 0, 0xa0(15)
    li 3, 0x1
    lbz 4, 0x115(15)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182009C # beq .L_803C7200
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x20(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x20(15)
    mr 4, 14
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(15)
    mr 4, 14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 14, 0x0
    addi 18, 16, 0x368
L_803C71BC:
    lwz 3, 0x4(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x196
    mr 4, 3
    lwz 3, 0x20(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 18, 18, 0x8
    cmpwi 14, 0x9
    .4byte 0x4180FFC4 # blt .L_803C71BC
    .4byte 0x48000178 # b .L_803C7374
L_803C7200:
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x14(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x14(15)
    mr 4, 14
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(15)
    mr 4, 14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x18(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x18(15)
    mr 4, 14
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(15)
    mr 4, 14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x1c(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x1c(15)
    mr 4, 14
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(15)
    mr 4, 14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 14, 0x0
    addi 18, 16, 0x48
L_803C72EC:
    lwz 3, 0x4(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x132
    mr 4, 3
    lwz 3, 0x14(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 18, 18, 0x8
    cmpwi 14, 0x51
    .4byte 0x4180FFC4 # blt .L_803C72EC
    li 14, 0x0
    addi 18, 16, 0x2d0
L_803C7334:
    lwz 3, 0x8(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x183
    mr 4, 3
    lwz 3, 0x14(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 18, 18, 0x8
    cmpwi 14, 0x13
    .4byte 0x4180FFC4 # blt .L_803C7334
L_803C7374:
    mr 18, 15
    li 22, 0x0
    li 14, 0x0
L_803C7380:
    lha 3, 0xd8(15)
    add 0, 20, 14
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803C7510
    lwz 3, 0x24(18)
    mr 4, 21
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(18)
    mr 4, 21
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    cmpwi 22, 0x2
    .4byte 0x418200BC # beq .L_803C747C
    .4byte 0x40800014 # bge .L_803C73D8
    cmpwi 22, 0x0
    .4byte 0x41820018 # beq .L_803C73E4
    .4byte 0x40800060 # bge .L_803C7430
    .4byte 0x4800013C # b .L_803C7510
L_803C73D8:
    cmpwi 22, 0x4
    .4byte 0x40800134 # bge .L_803C7510
    .4byte 0x480000E8 # b .L_803C74C8
L_803C73E4:
    li 23, 0x0
    addi 24, 16, 0x7f8
L_803C73EC:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C73EC
    .4byte 0x480000E4 # b .L_803C7510
L_803C7430:
    li 23, 0x0
    addi 24, 16, 0x7d8
L_803C7438:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C7438
    .4byte 0x48000098 # b .L_803C7510
L_803C747C:
    li 23, 0x0
    addi 24, 16, 0x7b8
L_803C7484:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C7484
    .4byte 0x4800004C # b .L_803C7510
L_803C74C8:
    li 23, 0x0
    addi 24, 16, 0x798
L_803C74D0:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C74D0
L_803C7510:
    addi 22, 22, 0x1
    add 14, 14, 19
    cmpwi 22, 0x2
    addi 18, 18, 0x4
    .4byte 0x4180FE60 # blt .L_803C7380
    lha 3, 0xd8(15)
    lha 0, 0x1c(1)
    cmpw 3, 0
    .4byte 0x4081073C # ble .L_803C7C6C
    addi 0, 16, 0x780
    mr 31, 15
    stw 0, 0x4c(1)
    addi 0, 16, 0x768
    addi 14, 16, 0x5f0
    addi 30, 16, 0x5d8
    stw 0, 0x48(1)
    addi 0, 16, 0x750
    addi 29, 16, 0x5c0
    addi 28, 16, 0x5a8
    stw 0, 0x44(1)
    addi 0, 16, 0x6c8
    addi 27, 16, 0x590
    addi 26, 16, 0x578
    stw 0, 0x40(1)
    addi 0, 16, 0x6b0
    addi 25, 16, 0x560
    addi 24, 16, 0x548
    stw 0, 0x3c(1)
    addi 0, 16, 0x698
    addi 23, 16, 0x530
    addi 22, 16, 0x518
    stw 0, 0x38(1)
    addi 0, 16, 0x680
    addi 21, 16, 0x500
    addi 20, 16, 0x4e8
    stw 0, 0x34(1)
    addi 0, 16, 0x668
    addi 19, 16, 0x4d0
    addi 18, 16, 0x4b8
    stw 0, 0x30(1)
    addi 0, 16, 0x650
    stw 0, 0x2c(1)
    addi 0, 16, 0x638
    stw 0, 0x28(1)
    addi 0, 16, 0x620
    stw 0, 0x24(1)
    addi 0, 16, 0x608
    li 16, 0x0
    stw 0, 0x20(1)
L_803C75D4:
    lwz 0, 0xa4(15)
    cmpw 16, 0
    .4byte 0x41820534 # beq .L_803C7B10
    lwz 0, 0xa0(15)
    cmpw 16, 0
    .4byte 0x41820528 # beq .L_803C7B10
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x38(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x44(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 3, 0x38(31)
    mr 4, 17
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x38(31)
    mr 4, 17
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(15)
    lwz 4, 0x4c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x125(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x48(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x126(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x44(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x127(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x40(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x128(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x3c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x129(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x38(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x34(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x30(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x2c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x28(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x24(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x20(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x130(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x131(15)
    bl fn_804023D0
    lwz 3, 0x44(31)
    mr 4, 17
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x44(31)
    mr 4, 17
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(15)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x118(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x119(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x120(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x121(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x122(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x123(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x124(15)
    bl fn_804023D0
    .4byte 0x48000034 # b .L_803C7B40
L_803C7B10:
    lwz 3, 0x38(31)
    mr 4, 17
    lfs 1, 0x70(31)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x44(31)
    mr 4, 17
    lfs 1, 0x64(31)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
L_803C7B40:
    lwz 3, 0x4c(1)
    addi 16, 16, 0x1
    cmpwi 16, 0x3
    addi 14, 14, 0x8
    addi 3, 3, 0x8
    addi 30, 30, 0x8
    stw 3, 0x4c(1)
    addi 29, 29, 0x8
    lwz 3, 0x48(1)
    addi 28, 28, 0x8
    addi 27, 27, 0x8
    addi 26, 26, 0x8
    addi 3, 3, 0x8
    addi 25, 25, 0x8
    stw 3, 0x48(1)
    addi 24, 24, 0x8
    lwz 3, 0x44(1)
    addi 23, 23, 0x8
    addi 22, 22, 0x8
    addi 21, 21, 0x8
    addi 3, 3, 0x8
    addi 20, 20, 0x8
    stw 3, 0x44(1)
    addi 19, 19, 0x8
    lwz 3, 0x40(1)
    addi 18, 18, 0x8
    addi 31, 31, 0x4
    addi 3, 3, 0x8
    stw 3, 0x40(1)
    lwz 3, 0x3c(1)
    addi 3, 3, 0x8
    stw 3, 0x3c(1)
    lwz 3, 0x38(1)
    addi 3, 3, 0x8
    stw 3, 0x38(1)
    lwz 3, 0x34(1)
    addi 3, 3, 0x8
    stw 3, 0x34(1)
    lwz 3, 0x30(1)
    addi 3, 3, 0x8
    stw 3, 0x30(1)
    lwz 3, 0x2c(1)
    addi 3, 3, 0x8
    stw 3, 0x2c(1)
    lwz 3, 0x28(1)
    addi 3, 3, 0x8
    stw 3, 0x28(1)
    lwz 3, 0x24(1)
    addi 3, 3, 0x8
    stw 3, 0x24(1)
    lwz 3, 0x20(1)
    addi 3, 3, 0x8
    stw 3, 0x20(1)
    .4byte 0x4180F9C0 # blt .L_803C75D4
    lha 4, 0xd8(15)
    lis 5, 0x4330
    lha 0, 0x1c(1)
    xoris 3, 17, 0x8000
    stw 3, 0x14(1)
    mr 3, 15
    subf 0, 0, 4
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    xoris 0, 0, 0x8000
    stw 5, 0x10(1)
    .4byte 0xC06204D8 # lfs f3, lbl_80543478@sda21(r0)
    lfd 0, 0x10(1)
    stw 5, 0x8(1)
    fsubs 0, 0, 2
    lwz 4, 0xa4(15)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 1, 3, 0
    bl fn_803BC6F0
L_803C7C6C:
    lha 3, 0xd8(15)
    lwz 0, 0x18(1)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_803C7C8C
    lbz 3, 0x110(15)
    li 0, 0x5
    stb 3, 0x112(15)
    stb 0, 0x110(15)
L_803C7C8C:
    lmw 14, 0x58(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_803C7CA0:
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
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_803C7D20
    lbz 3, 0x114(31)
    cmplwi 3, 0x0
    .4byte 0x418200E8 # beq .L_803C7DD4
    subi 0, 3, 0x1
    li 3, 0x1
    stb 0, 0x114(31)
    li 0, 0x1e
    li 4, 0x26
    li 5, -0x1
    sth 3, 0xda(31)
    lwz 3, 0x34(31)
    sth 0, 0x26(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000B8 # b .L_803C7DD4
L_803C7D20:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_803C7D74
    lbz 3, 0x114(31)
    cmplwi 3, 0x1
    .4byte 0x40800094 # bge .L_803C7DD4
    addi 0, 3, 0x1
    li 3, 0x1
    stb 0, 0x114(31)
    li 0, 0x1e
    li 4, 0x26
    li 5, -0x1
    sth 3, 0xda(31)
    lwz 3, 0x34(31)
    sth 0, 0x26(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000064 # b .L_803C7DD4
L_803C7D74:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_803C7DD4
    lbz 0, 0x114(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803C7DB4
    mr 3, 31
    bl fn_803C1054
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000024 # b .L_803C7DD4
L_803C7DB4:
    li 0, 0x0
    mr 3, 31
    stw 0, 0x80(31)
    bl fn_803C02CC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
L_803C7DD4:
    lbz 0, 0x110(31)
    cmplwi 0, 0x1b
    .4byte 0x40820174 # bne .L_803C7F50
    lha 5, 0xda(31)
    .4byte 0xC3C204B8 # lfs f30, lbl_80543458@sda21(r0)
    extsh. 0, 5
    .4byte 0x41820098 # beq .L_803C7E84
    cmpwi 5, 0x5
    .4byte 0x40800040 # bge .L_803C7E34
    mullw 4, 5, 5
    lis 3, 0x4330
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    xoris 3, 4, 0x8000
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    sth 0, 0xda(31)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x48000054 # b .L_803C7E84
L_803C7E34:
    cmpwi 5, 0xa
    .4byte 0x40800044 # bge .L_803C7E7C
    subfic 0, 5, 0xa
    lis 3, 0x4330
    mullw 4, 0, 0
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    xoris 3, 4, 0x8000
    sth 0, 0xda(31)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x4800000C # b .L_803C7E84
L_803C7E7C:
    li 0, 0x0
    sth 0, 0xda(31)
L_803C7E84:
    .4byte 0xC3E204B8 # lfs f31, lbl_80543458@sda21(r0)
    mr 30, 31
    li 29, 0x0
L_803C7E90:
    fcmpu cr0, 31, 30
    .4byte 0x41820024 # beq .L_803C7EB8
    lbz 0, 0x114(31)
    cmpw 29, 0
    .4byte 0x40820018 # bne .L_803C7EB8
    fmr 1, 31
    lwz 3, 0x24(30)
    fmr 2, 30
    bl fn_80402E08
    .4byte 0x48000014 # b .L_803C7EC8
L_803C7EB8:
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x24(30)
    fmr 2, 1
    bl fn_80402E08
L_803C7EC8:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFBC # blt .L_803C7E90
    lbz 0, 0x114(31)
    fmr 2, 30
    lwz 4, 0x24(31)
    slwi 0, 0, 2
    lwz 3, 0x34(31)
    add 5, 31, 0
    lfs 0, 0x8(4)
    lwz 4, 0x24(5)
    lfs 1, 0x8(4)
    fsubs 1, 1, 0
    bl fn_80402E08
    lwz 3, 0x34(31)
    li 4, 0x3c
    li 5, 0x0
    li 7, 0x1
    lbz 6, 0x28(3)
    bl fn_8040245C
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
L_803C7F50:
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

fn_803C7F7C:
    stwu 1, -0x90(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x94(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 14, 0x48(1)
    addi 16, 5, lbl_804765D0@l
    mr 15, 3
    lha 5, 0x1a4(4)
    lha 14, 0x1a6(4)
    lha 21, 0x1aa(4)
    add 0, 5, 14
    lha 19, 0x1ac(4)
    stw 0, 0x8(1)
    lha 0, 0x1ae(4)
    add 3, 21, 19
    lha 20, 0x1a8(4)
    sth 0, 0xc(1)
    lwz 0, 0x8(1)
    add 3, 20, 3
    lha 17, 0x1b0(4)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803C7FE0
    stw 3, 0x8(1)
L_803C7FE0:
    lha 0, 0xc(1)
    add 3, 0, 17
    lwz 0, 0x8(1)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803C7FF8
    stw 3, 0x8(1)
L_803C7FF8:
    lha 3, 0xd8(15)
    addi 0, 3, 0x1
    sth 0, 0xd8(15)
    lha 0, 0xd8(15)
    cmpw 0, 5
    .4byte 0x4081022C # ble .L_803C8238
    lwz 0, 0xa0(15)
    li 3, 0x1
    lbz 4, 0x115(15)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182009C # beq .L_803C80C4
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x20(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x20(15)
    mr 4, 14
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(15)
    mr 4, 14
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    li 14, 0x0
    addi 18, 16, 0x368
L_803C8080:
    lwz 3, 0x4(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x196
    mr 4, 3
    lwz 3, 0x20(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 18, 18, 0x8
    cmpwi 14, 0x9
    .4byte 0x4180FFC4 # blt .L_803C8080
    .4byte 0x48000178 # b .L_803C8238
L_803C80C4:
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x14(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x14(15)
    mr 4, 14
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(15)
    mr 4, 14
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x18(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x18(15)
    mr 4, 14
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(15)
    mr 4, 14
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 4, 0x3c(15)
    lwz 3, 0x38(15)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x1c(15)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x1c(15)
    mr 4, 14
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(15)
    mr 4, 14
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    li 14, 0x0
    addi 18, 16, 0x48
L_803C81B0:
    lwz 3, 0x4(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x132
    mr 4, 3
    lwz 3, 0x14(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 18, 18, 0x8
    cmpwi 14, 0x51
    .4byte 0x4180FFC4 # blt .L_803C81B0
    li 14, 0x0
    addi 18, 16, 0x2d0
L_803C81F8:
    lwz 3, 0x8(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 14, 0x183
    mr 4, 3
    lwz 3, 0x14(15)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 14, 14, 0x1
    addi 18, 18, 0x8
    cmpwi 14, 0x13
    .4byte 0x4180FFC4 # blt .L_803C81F8
L_803C8238:
    mr 18, 15
    li 22, 0x0
    li 14, 0x0
L_803C8244:
    lha 3, 0xd8(15)
    add 0, 20, 14
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803C83D4
    lwz 3, 0x24(18)
    mr 4, 21
    .4byte 0xC02204FC # lfs f1, lbl_8054349C@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(18)
    mr 4, 21
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    cmpwi 22, 0x2
    .4byte 0x418200BC # beq .L_803C8340
    .4byte 0x40800014 # bge .L_803C829C
    cmpwi 22, 0x0
    .4byte 0x41820018 # beq .L_803C82A8
    .4byte 0x40800060 # bge .L_803C82F4
    .4byte 0x4800013C # b .L_803C83D4
L_803C829C:
    cmpwi 22, 0x4
    .4byte 0x40800134 # bge .L_803C83D4
    .4byte 0x480000E8 # b .L_803C838C
L_803C82A8:
    li 23, 0x0
    addi 24, 16, 0x7f8
L_803C82B0:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C82B0
    .4byte 0x480000E4 # b .L_803C83D4
L_803C82F4:
    li 23, 0x0
    addi 24, 16, 0x7d8
L_803C82FC:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C82FC
    .4byte 0x48000098 # b .L_803C83D4
L_803C8340:
    li 23, 0x0
    addi 24, 16, 0x7b8
L_803C8348:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C8348
    .4byte 0x4800004C # b .L_803C83D4
L_803C838C:
    li 23, 0x0
    addi 24, 16, 0x798
L_803C8394:
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 15, 0
    bl fn_804023D0
    addi 23, 23, 0x1
    addi 24, 24, 0x8
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_803C8394
L_803C83D4:
    addi 22, 22, 0x1
    add 14, 14, 19
    cmpwi 22, 0x2
    addi 18, 18, 0x4
    .4byte 0x4180FE60 # blt .L_803C8244
    addi 0, 16, 0x780
    mr 31, 15
    stw 0, 0x3c(1)
    addi 0, 16, 0x768
    addi 14, 16, 0x5f0
    addi 30, 16, 0x5d8
    stw 0, 0x38(1)
    addi 0, 16, 0x750
    addi 29, 16, 0x5c0
    addi 28, 16, 0x5a8
    stw 0, 0x34(1)
    addi 0, 16, 0x6c8
    addi 27, 16, 0x590
    addi 26, 16, 0x578
    stw 0, 0x30(1)
    addi 0, 16, 0x6b0
    addi 25, 16, 0x560
    addi 24, 16, 0x548
    stw 0, 0x2c(1)
    addi 0, 16, 0x698
    addi 23, 16, 0x530
    addi 22, 16, 0x518
    stw 0, 0x28(1)
    addi 0, 16, 0x680
    addi 21, 16, 0x500
    addi 20, 16, 0x4e8
    stw 0, 0x24(1)
    addi 0, 16, 0x668
    addi 19, 16, 0x4d0
    addi 18, 16, 0x4b8
    stw 0, 0x20(1)
    addi 0, 16, 0x650
    stw 0, 0x1c(1)
    addi 0, 16, 0x638
    stw 0, 0x18(1)
    addi 0, 16, 0x620
    stw 0, 0x14(1)
    addi 0, 16, 0x608
    li 16, 0x0
    stw 0, 0x10(1)
L_803C8488:
    lwz 0, 0xa4(15)
    cmpw 16, 0
    .4byte 0x4182059C # beq .L_803C8A2C
    lwz 0, 0xa0(15)
    cmpw 16, 0
    .4byte 0x41820538 # beq .L_803C89D4
    lha 3, 0xd8(15)
    lha 0, 0xc(1)
    cmpw 3, 0
    .4byte 0x40810580 # ble .L_803C8A2C
    lwz 3, 0x38(31)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfs 2, 0x70(31)
    bl fn_80402E08
    lwz 3, 0x44(31)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfs 2, 0x64(31)
    bl fn_80402E08
    lwz 3, 0x38(31)
    mr 4, 17
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x38(31)
    mr 4, 17
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(15)
    lwz 4, 0x3c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x125(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x38(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x126(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x34(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x127(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x30(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x128(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x2c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x129(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x28(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x24(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x20(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x1c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x18(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x14(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x12f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 4, 0x10(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x130(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    lbz 5, 0x131(15)
    bl fn_804023D0
    lwz 3, 0x44(31)
    mr 4, 17
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x44(31)
    mr 4, 17
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(15)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x118(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x119(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11a(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11b(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11c(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11d(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11e(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x11f(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x120(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x121(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x122(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x123(15)
    bl fn_804023D0
    lwz 3, 0x8(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    lbz 5, 0x124(15)
    bl fn_804023D0
    .4byte 0x4800005C # b .L_803C8A2C
L_803C89D4:
    lha 3, 0xd8(15)
    lha 0, 0xc(1)
    cmpw 3, 0
    .4byte 0x4081004C # ble .L_803C8A2C
    lwz 3, 0x38(31)
    mr 4, 17
    lwz 6, 0x3c(15)
    li 5, 0x0
    lfs 2, 0xc(3)
    lfs 0, 0xc(6)
    lfs 1, 0x70(31)
    fsubs 2, 0, 2
    bl fn_80402940
    lwz 3, 0x44(31)
    mr 4, 17
    lwz 6, 0x48(15)
    li 5, 0x0
    lfs 2, 0xc(3)
    lfs 0, 0xc(6)
    lfs 1, 0x64(31)
    fsubs 2, 0, 2
    bl fn_80402940
L_803C8A2C:
    lwz 3, 0x3c(1)
    addi 16, 16, 0x1
    cmpwi 16, 0x3
    addi 14, 14, 0x8
    addi 3, 3, 0x8
    addi 30, 30, 0x8
    stw 3, 0x3c(1)
    addi 29, 29, 0x8
    lwz 3, 0x38(1)
    addi 28, 28, 0x8
    addi 27, 27, 0x8
    addi 26, 26, 0x8
    addi 3, 3, 0x8
    addi 25, 25, 0x8
    stw 3, 0x38(1)
    addi 24, 24, 0x8
    lwz 3, 0x34(1)
    addi 23, 23, 0x8
    addi 22, 22, 0x8
    addi 21, 21, 0x8
    addi 3, 3, 0x8
    addi 20, 20, 0x8
    stw 3, 0x34(1)
    addi 19, 19, 0x8
    lwz 3, 0x30(1)
    addi 18, 18, 0x8
    addi 31, 31, 0x4
    addi 3, 3, 0x8
    stw 3, 0x30(1)
    lwz 3, 0x2c(1)
    addi 3, 3, 0x8
    stw 3, 0x2c(1)
    lwz 3, 0x28(1)
    addi 3, 3, 0x8
    stw 3, 0x28(1)
    lwz 3, 0x24(1)
    addi 3, 3, 0x8
    stw 3, 0x24(1)
    lwz 3, 0x20(1)
    addi 3, 3, 0x8
    stw 3, 0x20(1)
    lwz 3, 0x1c(1)
    addi 3, 3, 0x8
    stw 3, 0x1c(1)
    lwz 3, 0x18(1)
    addi 3, 3, 0x8
    stw 3, 0x18(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x8
    stw 3, 0x14(1)
    lwz 3, 0x10(1)
    addi 3, 3, 0x8
    stw 3, 0x10(1)
    .4byte 0x4180F988 # blt .L_803C8488
    lha 3, 0xd8(15)
    lwz 0, 0x8(1)
    cmpw 3, 0
    .4byte 0x4081005C # ble .L_803C8B6C
    lwz 4, 0xa0(15)
    li 0, 0x1b
    lwz 3, 0x3c(15)
    slwi 4, 4, 2
    add 4, 15, 4
    lfs 0, 0xc(3)
    lwz 3, 0x38(4)
    lfs 1, 0xc(3)
    fsubs 0, 0, 1
    stfs 0, 0x70(4)
    lwz 4, 0xa0(15)
    lwz 3, 0x48(15)
    slwi 4, 4, 2
    add 4, 15, 4
    lfs 0, 0xc(3)
    lwz 3, 0x44(4)
    lfs 1, 0xc(3)
    fsubs 0, 0, 1
    stfs 0, 0x64(4)
    lbz 3, 0x110(15)
    stb 3, 0x112(15)
    stb 0, 0x110(15)
L_803C8B6C:
    lmw 14, 0x48(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803C8B80:
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
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418200A4 # beq .L_803C8C64
    lwz 3, 0xa0(31)
    subi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803C8BE4
    li 0, 0x2
    stw 0, 0xa0(31)
L_803C8BE4:
    lwz 3, 0xa0(31)
    lwz 0, 0xa4(31)
    cmpw 3, 0
    .4byte 0x40820020 # bne .L_803C8C10
    subi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803C8C10
    li 0, 0x2
    stw 0, 0xa0(31)
L_803C8C10:
    lwz 3, 0xa0(31)
    lwz 0, 0xa4(31)
    cmpw 3, 0
    .4byte 0x40820020 # bne .L_803C8C3C
    subi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803C8C3C
    li 0, 0x2
    stw 0, 0xa0(31)
L_803C8C3C:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0xda(31)
    li 4, 0x26
    li 5, -0x1
    lwz 3, 0x50(31)
    sth 0, 0x26(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000408 # b .L_803C9068
L_803C8C64:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x418200A4 # beq .L_803C8D1C
    lwz 3, 0xa0(31)
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_803C8C9C
    li 0, 0x0
    stw 0, 0xa0(31)
L_803C8C9C:
    lwz 3, 0xa0(31)
    lwz 0, 0xa4(31)
    cmpw 3, 0
    .4byte 0x40820020 # bne .L_803C8CC8
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_803C8CC8
    li 0, 0x0
    stw 0, 0xa0(31)
L_803C8CC8:
    lwz 3, 0xa0(31)
    lwz 0, 0xa4(31)
    cmpw 3, 0
    .4byte 0x40820020 # bne .L_803C8CF4
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_803C8CF4
    li 0, 0x0
    stw 0, 0xa0(31)
L_803C8CF4:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0xda(31)
    li 4, 0x26
    li 5, -0x1
    lwz 3, 0x50(31)
    sth 0, 0x26(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000350 # b .L_803C9068
L_803C8D1C:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418200E4 # beq .L_803C8E14
    li 0, 0x1
    lis 3, 0x6674
    stb 0, 0x114(31)
    li 0, 0x62
    addi 6, 3, 0x3031
    li 5, 0x54
    stw 0, 0x84(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C8D90
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C8D98
L_803C8D90:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C8D98:
    lwz 0, 0xa0(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820040 # beq .L_803C8DF0
    lwz 3, 0x4(31)
    lis 4, 0x6462
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x66
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x4800000C # b .L_803C8DF8
L_803C8DF0:
    li 0, 0x0
    stw 0, 0x80(31)
L_803C8DF8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    mr 3, 31
    bl fn_803C05D8
    .4byte 0x48000258 # b .L_803C9068
L_803C8E14:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820240 # beq .L_803C9068
    li 0, 0x0
    li 4, 0x117
    stw 0, 0x80(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803C8E4C
    li 4, 0x116
L_803C8E4C:
    stw 4, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C8E9C
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C8EA4
L_803C8E9C:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C8EA4:
    lwz 3, 0x50(31)
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x38(31)
    li 6, 0x0
    li 0, 0x1e
    li 4, 0xc
    sth 6, 0x20(3)
    li 5, -0x1
    lwz 3, 0x38(31)
    sth 6, 0x22(3)
    lwz 3, 0x38(31)
    sth 6, 0x26(3)
    lwz 3, 0x44(31)
    sth 6, 0x20(3)
    lwz 3, 0x44(31)
    sth 6, 0x22(3)
    lwz 3, 0x44(31)
    sth 6, 0x26(3)
    lwz 3, 0x3c(31)
    sth 6, 0x20(3)
    lwz 3, 0x3c(31)
    sth 6, 0x22(3)
    lwz 3, 0x3c(31)
    sth 6, 0x26(3)
    lwz 3, 0x48(31)
    sth 6, 0x20(3)
    lwz 3, 0x48(31)
    sth 6, 0x22(3)
    lwz 3, 0x48(31)
    sth 6, 0x26(3)
    lwz 3, 0x40(31)
    sth 6, 0x20(3)
    lwz 3, 0x40(31)
    sth 6, 0x22(3)
    lwz 3, 0x40(31)
    sth 6, 0x26(3)
    lwz 3, 0x4c(31)
    sth 6, 0x20(3)
    lwz 3, 0x4c(31)
    sth 6, 0x22(3)
    lwz 3, 0x4c(31)
    sth 6, 0x26(3)
    sth 6, 0xd8(31)
    sth 6, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803C9068:
    lbz 0, 0x110(31)
    cmplwi 0, 0x19
    .4byte 0x4082021C # bne .L_803C928C
    lha 5, 0xda(31)
    .4byte 0xC3C204B8 # lfs f30, lbl_80543458@sda21(r0)
    extsh. 0, 5
    .4byte 0x41820098 # beq .L_803C9118
    cmpwi 5, 0x5
    .4byte 0x40800040 # bge .L_803C90C8
    mullw 4, 5, 5
    lis 3, 0x4330
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    xoris 3, 4, 0x8000
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    sth 0, 0xda(31)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x48000054 # b .L_803C9118
L_803C90C8:
    cmpwi 5, 0xa
    .4byte 0x40800044 # bge .L_803C9110
    subfic 0, 5, 0xa
    lis 3, 0x4330
    mullw 4, 0, 0
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    xoris 3, 4, 0x8000
    sth 0, 0xda(31)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x4800000C # b .L_803C9118
L_803C9110:
    li 0, 0x0
    sth 0, 0xda(31)
L_803C9118:
    .4byte 0xC3E204B8 # lfs f31, lbl_80543458@sda21(r0)
    mr 30, 31
    li 29, 0x0
L_803C9124:
    fcmpu cr0, 31, 30
    .4byte 0x41820028 # beq .L_803C9150
    lwz 0, 0xa0(31)
    cmpw 29, 0
    .4byte 0x4082001C # bne .L_803C9150
    lfs 0, 0x64(30)
    fmr 1, 31
    lwz 3, 0x44(30)
    fadds 2, 0, 30
    bl fn_80402E08
    .4byte 0x48000014 # b .L_803C9160
L_803C9150:
    lwz 3, 0x44(30)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfs 2, 0x64(30)
    bl fn_80402E08
L_803C9160:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFB8 # blt .L_803C9124
    lwz 0, 0xa0(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x44(3)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x44(31)
    lfs 1, 0x4(3)
    lfs 0, 0xc(4)
    lwz 3, 0x50(31)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 4, 0x3c
    li 5, 0x0
    li 7, 0x1
    lbz 6, 0x28(3)
    bl fn_8040245C
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
L_803C928C:
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

fn_803C92B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xb0(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803C92E0
    subi 0, 3, 0x1
    stw 0, 0xb0(31)
L_803C92E0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1300
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_803C9304
    lwz 0, 0xb0(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_803C9324
L_803C9304:
    li 0, -0x1
    mr 3, 31
    stw 0, 0xb0(31)
    bl fn_803C0018
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
L_803C9324:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803C9338:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x34(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 24, 0x10(1)
    mr 31, 3
    addi 30, 5, lbl_804765D0@l
    lha 6, 0x1ec(4)
    lha 29, 0x1ee(4)
    lha 24, 0x1f0(4)
    lha 28, 0x1f2(4)
    add 25, 6, 29
    add 0, 24, 28
    cmpw 25, 0
    .4byte 0x40800008 # bge .L_803C9380
    mr 25, 0
L_803C9380:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0xd8(31)
    cmpw 0, 6
    .4byte 0x40810454 # ble .L_803C97E8
    lwz 0, 0xa0(31)
    mr 4, 29
    lwz 3, 0x38(31)
    li 5, 0x0
    slwi 0, 0, 2
    lwz 6, 0x3c(31)
    add 7, 31, 0
    lfs 1, 0xc(3)
    lwz 3, 0x38(7)
    lfs 0, 0xc(6)
    lfs 2, 0xc(3)
    fsubs 1, 1, 2
    fsubs 2, 0, 2
    bl fn_80402940
    lwz 0, 0xa0(31)
    mr 4, 29
    li 5, 0x0
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x38(3)
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 27, 0xa0(31)
    lwz 12, 0x0(3)
    slwi 26, 27, 3
    lwz 12, 0x3c(12)
    add 6, 0, 26
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 0, 27, 2
    mr 4, 3
    add 27, 31, 0
    lbz 5, 0x125(31)
    lwz 3, 0x38(27)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 26
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(27)
    lbz 5, 0x131(31)
    bl fn_804023D0
    lwz 6, 0x3c(31)
    mr 4, 29
    lwz 3, 0x38(31)
    li 5, 0x0
    lfs 1, 0xc(6)
    lfs 0, 0xc(3)
    lwz 3, 0x14(31)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x14(31)
    mr 4, 29
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 6, 0x3c(31)
    mr 4, 29
    lwz 3, 0x38(31)
    li 5, 0x0
    lfs 1, 0xc(6)
    lfs 0, 0xc(3)
    lwz 3, 0x18(31)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x18(31)
    mr 4, 29
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 6, 0x3c(31)
    mr 4, 29
    lwz 3, 0x38(31)
    li 5, 0x0
    lfs 1, 0xc(6)
    lfs 0, 0xc(3)
    lwz 3, 0x1c(31)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x1c(31)
    mr 4, 29
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    li 26, 0x0
    addi 27, 30, 0x48
L_803C9760:
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 26, 26, 0x1
    addi 27, 27, 0x8
    cmpwi 26, 0x51
    .4byte 0x4180FFC4 # blt .L_803C9760
    li 26, 0x0
    addi 27, 30, 0x2d0
L_803C97A8:
    lwz 3, 0x8(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 26, 26, 0x1
    addi 27, 27, 0x8
    cmpwi 26, 0x13
    .4byte 0x4180FFC4 # blt .L_803C97A8
L_803C97E8:
    lha 0, 0xd8(31)
    cmpw 0, 24
    .4byte 0x40810078 # ble .L_803C9868
    lwz 3, 0x20(31)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC042050C # lfs f2, lbl_805434AC@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 24, 0x0
    addi 26, 30, 0x368
L_803C9828:
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x9
    .4byte 0x4180FFC4 # blt .L_803C9828
L_803C9868:
    lha 0, 0xd8(31)
    cmpw 0, 25
    .4byte 0x40810014 # ble .L_803C9884
    lbz 3, 0x110(31)
    li 0, 0x18
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C9884:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803C9898:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 18, 0x18(1)
    mr 31, 3
    addi 30, 5, lbl_804765D0@l
    lha 23, 0x1d0(4)
    lha 28, 0x1d2(4)
    lha 22, 0x1da(4)
    add 25, 23, 28
    lha 29, 0x1d6(4)
    lha 26, 0x1d8(4)
    cmpw 22, 25
    lha 27, 0x1d4(4)
    add 24, 29, 26
    lha 21, 0x1dc(4)
    add 24, 27, 24
    .4byte 0x40800008 # bge .L_803C98F0
    extsh 22, 25
L_803C98F0:
    extsh 0, 22
    add 0, 0, 21
    cmpw 24, 0
    .4byte 0x40800008 # bge .L_803C9904
    mr 24, 0
L_803C9904:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0xd8(31)
    cmpw 0, 23
    .4byte 0x4081034C # ble .L_803C9C64
    cmpw 0, 25
    .4byte 0x41810344 # bgt .L_803C9C64
    lwz 0, 0xa0(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820124 # beq .L_803C9A60
    lwz 3, 0x20(31)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    addi 20, 30, 0x368
    li 19, 0x0
    mr 18, 20
L_803C9978:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x9
    .4byte 0x4180FFC4 # blt .L_803C9978
    lha 0, 0xd8(31)
    cmpw 0, 25
    .4byte 0x408201B4 # bne .L_803C9B74
    lwz 4, 0x3c(31)
    lwz 3, 0x38(31)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    lwz 3, 0x20(31)
    fsubs 2, 1, 0
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x20(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 19, 0x0
L_803C9A10:
    lwz 3, 0x4(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 20, 20, 0x8
    cmpwi 19, 0x9
    .4byte 0x4180FFC4 # blt .L_803C9A10
    lwz 3, 0x20(31)
    li 0, 0x0
    sth 0, 0x26(3)
    .4byte 0x48000118 # b .L_803C9B74
L_803C9A60:
    lwz 3, 0x14(31)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(31)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x18(31)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(31)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x1c(31)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(31)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 19, 0x0
    addi 18, 30, 0x48
L_803C9AEC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x51
    .4byte 0x4180FFC4 # blt .L_803C9AEC
    li 19, 0x0
    addi 18, 30, 0x2d0
L_803C9B34:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x13
    .4byte 0x4180FFC4 # blt .L_803C9B34
L_803C9B74:
    lha 3, 0xd8(31)
    lis 5, 0x4330
    xoris 0, 28, 0x8000
    stw 5, 0x8(1)
    subf 3, 23, 3
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    xoris 4, 3, 0x8000
    stw 0, 0x14(1)
    .4byte 0xC06204D8 # lfs f3, lbl_80543478@sda21(r0)
    mr 3, 31
    stw 4, 0xc(1)
    lwz 4, 0xa4(31)
    stw 5, 0x10(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fsubs 1, 3, 0
    bl fn_803BC6F0
    lha 0, 0xd8(31)
    cmpw 0, 25
    .4byte 0x40820098 # bne .L_803C9C64
    li 0, 0x63
    lis 3, 0x6674
    stw 0, 0x84(31)
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803C9C24
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803C9C2C
L_803C9C24:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803C9C2C:
    lwz 3, 0x4(31)
    lis 4, 0x6462
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x67
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
L_803C9C64:
    mr 25, 31
    li 20, 0x0
    li 23, 0x0
L_803C9C70:
    lha 3, 0xd8(31)
    add 0, 27, 23
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803C9E00
    lwz 3, 0x24(25)
    mr 4, 29
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(25)
    mr 4, 29
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    cmpwi 20, 0x2
    .4byte 0x418200BC # beq .L_803C9D6C
    .4byte 0x40800014 # bge .L_803C9CC8
    cmpwi 20, 0x0
    .4byte 0x41820018 # beq .L_803C9CD4
    .4byte 0x40800060 # bge .L_803C9D20
    .4byte 0x4800013C # b .L_803C9E00
L_803C9CC8:
    cmpwi 20, 0x4
    .4byte 0x40800134 # bge .L_803C9E00
    .4byte 0x480000E8 # b .L_803C9DB8
L_803C9CD4:
    li 19, 0x0
    addi 18, 30, 0x7f8
L_803C9CDC:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x4
    .4byte 0x4180FFC4 # blt .L_803C9CDC
    .4byte 0x480000E4 # b .L_803C9E00
L_803C9D20:
    li 19, 0x0
    addi 18, 30, 0x7d8
L_803C9D28:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x4
    .4byte 0x4180FFC4 # blt .L_803C9D28
    .4byte 0x48000098 # b .L_803C9E00
L_803C9D6C:
    li 19, 0x0
    addi 18, 30, 0x7b8
L_803C9D74:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x4
    .4byte 0x4180FFC4 # blt .L_803C9D74
    .4byte 0x4800004C # b .L_803C9E00
L_803C9DB8:
    li 19, 0x0
    addi 18, 30, 0x798
L_803C9DC0:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x19f
    mr 4, 3
    lwz 3, 0x24(25)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x4
    .4byte 0x4180FFC4 # blt .L_803C9DC0
L_803C9E00:
    addi 20, 20, 0x1
    add 23, 23, 26
    cmpwi 20, 0x2
    addi 25, 25, 0x4
    .4byte 0x4180FE60 # blt .L_803C9C70
    lha 3, 0xd8(31)
    extsh 0, 22
    cmpw 3, 0
    .4byte 0x40810078 # ble .L_803C9E98
    lwz 3, 0x20(31)
    mr 4, 21
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x20(31)
    mr 4, 21
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    li 19, 0x0
    addi 18, 30, 0x368
L_803C9E58:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 19, 0x196
    mr 4, 3
    lwz 3, 0x20(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x9
    .4byte 0x4180FFC4 # blt .L_803C9E58
L_803C9E98:
    lha 0, 0xd8(31)
    cmpw 0, 24
    .4byte 0x40810060 # ble .L_803C9F00
    lwz 3, 0xa0(31)
    li 5, 0xc8
    lwz 0, 0xa4(31)
    mulli 3, 3, 0xc8
    lwz 4, 0x5c(31)
    mulli 0, 0, 0xc8
    add 3, 4, 3
    add 4, 4, 0
    bl memcpy
    lwz 0, 0xa0(31)
    lwz 3, 0x5c(31)
    clrlwi 4, 0, 24
    bl fn_803BACF8
    lis 3, lbl_8051C1A0@ha
    lwz 4, 0x5c(31)
    addi 3, 3, lbl_8051C1A0@l
    li 5, 0x258
    li 6, 0x0
    bl fn_803B9CCC
    lbz 3, 0x110(31)
    li 0, 0x15
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803C9F00:
    lmw 18, 0x18(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803C9F14:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8051C1A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_8051C1A0@l
    bl fn_803B9BDC
    cmpwi 3, 0x2
    .4byte 0x40820024 # bne .L_803C9F5C
    li 3, 0x0
    li 0, 0x69
    stw 3, 0x84(31)
    stw 0, 0x80(31)
    lbz 0, 0x110(31)
    stb 0, 0x112(31)
    stb 3, 0x110(31)
    .4byte 0x48000014 # b .L_803C9F6C
L_803C9F5C:
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803C9F6C
    mr 3, 31
    bl fn_803C0A34
L_803C9F6C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803C9F80:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 17, 0x24(1)
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    addi 4, 4, lbl_8050DB0C@l
    mr 31, 3
    lha 26, 0x198(4)
    addi 30, 5, lbl_804765D0@l
    lha 28, 0x196(4)
    mulli 0, 26, 0x3
    lha 21, 0x190(4)
    lha 22, 0x192(4)
    lha 24, 0x194(4)
    add 0, 28, 0
    add 29, 21, 22
    add 0, 24, 0
    lha 20, 0x19a(4)
    cmpw 29, 0
    lha 25, 0x19c(4)
    lha 23, 0x19e(4)
    mr 19, 29
    .4byte 0x40800008 # bge .L_803C9FF4
    mr 19, 0
L_803C9FF4:
    add 0, 25, 23
    add 0, 20, 0
    cmpw 19, 0
    .4byte 0x40800008 # bge .L_803CA008
    mr 19, 0
L_803CA008:
    lwz 0, 0xa4(31)
    li 4, 0x0
    addi 27, 1, 0x8
    cmpw 4, 0
    mr 3, 27
    .4byte 0x4182000C # beq .L_803CA028
    stw 4, 0x0(27)
    addi 3, 27, 0x4
L_803CA028:
    lwz 0, 0xa4(31)
    li 4, 0x1
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_803CA040
    stw 4, 0x0(3)
    addi 3, 3, 0x4
L_803CA040:
    lwz 0, 0xa4(31)
    li 4, 0x2
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_803CA054
    stw 4, 0x0(3)
L_803CA054:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0xd8(31)
    cmpw 0, 21
    .4byte 0x40810168 # ble .L_803CA1D0
    lwz 3, 0x14(31)
    mr 4, 22
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(31)
    mr 4, 22
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x18(31)
    mr 4, 22
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(31)
    mr 4, 22
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x1c(31)
    mr 4, 22
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(31)
    mr 4, 22
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 18, 0x0
    addi 17, 30, 0x48
L_803CA0F8:
    lwz 3, 0x4(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x51
    .4byte 0x4180FFC4 # blt .L_803CA0F8
    li 18, 0x0
    addi 17, 30, 0x2d0
L_803CA140:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x13
    .4byte 0x4180FFC4 # blt .L_803CA140
    lha 0, 0xd8(31)
    cmpw 0, 29
    .4byte 0x41810048 # bgt .L_803CA1D0
    subf 0, 21, 0
    lis 5, 0x4330
    xoris 3, 0, 0x8000
    xoris 0, 22, 0x8000
    stw 3, 0x14(1)
    mr 3, 31
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    stw 5, 0x10(1)
    lwz 4, 0xa4(31)
    lfd 0, 0x10(1)
    stw 0, 0x1c(1)
    fsubs 1, 0, 2
    stw 5, 0x18(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 2
    fdivs 1, 1, 0
    bl fn_803BC6F0
L_803CA1D0:
    mr 22, 31
    li 21, 0x0
    li 29, 0x0
L_803CA1DC:
    lha 3, 0xd8(31)
    add 0, 24, 29
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803CA36C
    lwz 3, 0x24(22)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(22)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    cmpwi 21, 0x2
    .4byte 0x418200BC # beq .L_803CA2D8
    .4byte 0x40800014 # bge .L_803CA234
    cmpwi 21, 0x0
    .4byte 0x41820018 # beq .L_803CA240
    .4byte 0x40800060 # bge .L_803CA28C
    .4byte 0x4800013C # b .L_803CA36C
L_803CA234:
    cmpwi 21, 0x4
    .4byte 0x40800134 # bge .L_803CA36C
    .4byte 0x480000E8 # b .L_803CA324
L_803CA240:
    li 18, 0x0
    addi 17, 30, 0x7f8
L_803CA248:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CA248
    .4byte 0x480000E4 # b .L_803CA36C
L_803CA28C:
    li 18, 0x0
    addi 17, 30, 0x7d8
L_803CA294:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CA294
    .4byte 0x48000098 # b .L_803CA36C
L_803CA2D8:
    li 18, 0x0
    addi 17, 30, 0x7b8
L_803CA2E0:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CA2E0
    .4byte 0x4800004C # b .L_803CA36C
L_803CA324:
    li 18, 0x0
    addi 17, 30, 0x798
L_803CA32C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CA32C
L_803CA36C:
    addi 21, 21, 0x1
    add 29, 29, 26
    cmpwi 21, 0x4
    addi 22, 22, 0x4
    .4byte 0x4180FE60 # blt .L_803CA1DC
    lwz 6, 0x3c(31)
    li 26, 0x0
    lwz 5, 0x40(31)
    li 24, 0x0
    lwz 4, 0x48(31)
    lwz 3, 0x4c(31)
    lfs 3, 0xc(6)
    lfs 2, 0xc(5)
    lfs 1, 0xc(4)
    lfs 0, 0xc(3)
    fadds 3, 3, 2
    .4byte 0xC04204E0 # lfs f2, lbl_80543480@sda21(r0)
    fadds 0, 1, 0
    fmuls 31, 3, 2
    fmuls 30, 0, 2
L_803CA3BC:
    lha 3, 0xd8(31)
    add 0, 20, 24
    cmpw 3, 0
    .4byte 0x40810748 # ble .L_803CAB10
    lwz 0, 0x0(27)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_803CA430
    lwz 4, 0x38(31)
    slwi 3, 0, 2
    addi 0, 3, 0x38
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfs 0, 0xc(4)
    fsubs 0, 31, 0
    stfs 0, 0x70(31)
    lwz 3, 0x44(31)
    lfs 0, 0xc(3)
    fsubs 0, 30, 0
    stfs 0, 0x64(31)
    lwzx 3, 31, 0
    lfs 2, 0x70(31)
    bl fn_80402E08
    lwz 0, 0x0(27)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    slwi 3, 0, 2
    lfs 2, 0x64(31)
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    bl fn_80402E08
    .4byte 0x48000104 # b .L_803CA530
L_803CA430:
    cmpwi 0, 0x1
    .4byte 0x408200A8 # bne .L_803CA4DC
    xoris 6, 26, 0x8000
    lis 5, 0x4330
    lwz 7, 0x3c(31)
    slwi 3, 0, 2
    lwz 4, 0x40(31)
    addi 0, 3, 0x38
    lfs 2, 0xc(7)
    lfs 1, 0xc(4)
    stw 6, 0x1c(1)
    fsubs 0, 31, 2
    .4byte 0xC88204C8 # lfd f4, lbl_80543468@sda21(r0)
    fsubs 2, 1, 2
    stw 5, 0x18(1)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfd 3, 0x18(1)
    stw 6, 0x14(1)
    fsubs 3, 3, 4
    stw 5, 0x10(1)
    fmadds 2, 3, 2, 0
    lfd 0, 0x10(1)
    fsubs 3, 0, 4
    stfs 2, 0x74(31)
    lwz 4, 0x48(31)
    lwz 3, 0x4c(31)
    lfs 4, 0xc(4)
    lfs 2, 0xc(3)
    fsubs 0, 30, 4
    fsubs 2, 2, 4
    fmadds 0, 3, 2, 0
    stfs 0, 0x68(31)
    lwzx 3, 31, 0
    lfs 2, 0x74(31)
    bl fn_80402E08
    lwz 0, 0x0(27)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    slwi 3, 0, 2
    lfs 2, 0x68(31)
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    bl fn_80402E08
    .4byte 0x48000058 # b .L_803CA530
L_803CA4DC:
    lwz 4, 0x3c(31)
    slwi 3, 0, 2
    addi 0, 3, 0x38
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfs 0, 0xc(4)
    fsubs 0, 31, 0
    stfs 0, 0x78(31)
    lwz 3, 0x48(31)
    lfs 0, 0xc(3)
    fsubs 0, 30, 0
    stfs 0, 0x6c(31)
    lwzx 3, 31, 0
    lfs 2, 0x78(31)
    bl fn_80402E08
    lwz 0, 0x0(27)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    slwi 3, 0, 2
    lfs 2, 0x6c(31)
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    bl fn_80402E08
L_803CA530:
    lwz 0, 0x0(27)
    mr 4, 25
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(27)
    mr 4, 25
    li 5, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 18, 0x0(27)
    lwz 12, 0x0(3)
    slwi 28, 18, 3
    lwz 12, 0x3c(12)
    add 6, 0, 28
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 18, 2
    mr 4, 3
    addi 29, 5, 0x38
    lbz 5, 0x125(31)
    lwzx 3, 31, 29
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x131(31)
    bl fn_804023D0
    slwi 3, 18, 2
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    addi 0, 3, 0x44
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwzx 3, 31, 0
    mr 4, 25
    li 5, 0x0
    bl fn_80402B10
    slwi 3, 18, 2
    mr 4, 25
    addi 0, 3, 0x44
    li 5, 0x0
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x5d8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 18, 2
    mr 4, 3
    addi 29, 5, 0x44
    lbz 5, 0x118(31)
    lwzx 3, 31, 29
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5c0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5a8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x590
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x578
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x560
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x548
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x530
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x518
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x500
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4e8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4d0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4b8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x124(31)
    bl fn_804023D0
L_803CAB10:
    addi 26, 26, 0x1
    add 24, 24, 23
    cmpwi 26, 0x2
    addi 27, 27, 0x4
    .4byte 0x4180F89C # blt .L_803CA3BC
    lwz 0, 0xa4(31)
    lwz 3, 0x38(31)
    slwi 0, 0, 2
    add 4, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x38(4)
    lfs 1, 0xc(3)
    fsubs 0, 0, 1
    stfs 0, 0x70(4)
    lwz 0, 0xa4(31)
    lwz 3, 0x44(31)
    slwi 0, 0, 2
    add 4, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x44(4)
    lfs 1, 0xc(3)
    fsubs 0, 0, 1
    stfs 0, 0x64(4)
    lha 0, 0xd8(31)
    cmpw 0, 19
    .4byte 0x40810014 # ble .L_803CAB88
    lbz 3, 0x110(31)
    li 0, 0x19
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803CAB88:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 17, 0x24(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_803CABAC:
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
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418204BC # beq .L_803CB0A8
    lwz 0, 0xa0(31)
    cmpwi 0, 0x2
    .4byte 0x418201E0 # beq .L_803CADD8
    .4byte 0x40800014 # bge .L_803CAC10
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_803CAC1C
    .4byte 0x40800098 # bge .L_803CACA0
    .4byte 0x48000468 # b .L_803CB074
L_803CAC10:
    cmpwi 0, 0x4
    .4byte 0x40800460 # bge .L_803CB074
    .4byte 0x48000454 # b .L_803CB06C
L_803CAC1C:
    lis 3, lbl_8050EC80@ha
    lwz 0, 0xa4(31)
    addi 30, 3, lbl_8050EC80@l
    stw 0, 0x10(30)
    bl OSGetTime
    lwz 6, 0x10(30)
    lis 5, lbl_8050EC80@ha
    addi 0, 5, lbl_8050EC80@l
    mulli 5, 6, 0xc8
    add 5, 0, 5
    stw 4, 0x24(5)
    stw 3, 0x20(5)
    lbz 0, 0x116(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803CAC68
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310BC
    li 0, 0x0
    stb 0, 0x1a3(31)
L_803CAC68:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    bl fn_80403514
    li 0, 0x4
    lis 3, lbl_80529DEC@ha
    stw 0, 0x1a8(31)
    li 0, 0x28
    addi 3, 3, lbl_80529DEC@l
    lbz 4, 0x110(31)
    stb 4, 0x112(31)
    stb 0, 0x110(31)
    lwz 0, 0xa4(31)
    stb 0, 0x23b(3)
    .4byte 0x480003D8 # b .L_803CB074
L_803CACA0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0xff(3)
    cmpwi 0, 0x0
    .4byte 0x41820704 # beq .L_803CB3B0
    lwz 0, 0xa4(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_803CACF4
    lis 4, lbl_8050EC80@ha
    li 3, 0x0
    addi 4, 4, lbl_8050EC80@l
    lwz 0, 0xe8(4)
    lwz 4, 0xec(4)
    xor 0, 0, 3
    xor 3, 4, 3
    or. 0, 3, 0
    .4byte 0x40820010 # bne .L_803CACEC
    li 0, 0x1
    stw 0, 0xa0(31)
    .4byte 0x4800000C # b .L_803CACF4
L_803CACEC:
    li 0, 0x2
    stw 0, 0xa0(31)
L_803CACF4:
    lwz 0, 0xa4(31)
    cmpwi 0, 0x1
    .4byte 0x4082003C # bne .L_803CAD38
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x1b0(3)
    lwz 3, 0x1b4(3)
    xor 0, 0, 4
    xor 3, 3, 4
    or. 0, 3, 0
    .4byte 0x4082000C # bne .L_803CAD2C
    stw 4, 0xa0(31)
    .4byte 0x48000044 # b .L_803CAD6C
L_803CAD2C:
    li 0, 0x2
    stw 0, 0xa0(31)
    .4byte 0x48000038 # b .L_803CAD6C
L_803CAD38:
    lis 3, lbl_8050EC80@ha
    li 4, 0x0
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x20(3)
    lwz 3, 0x24(3)
    xor 0, 0, 4
    xor 3, 3, 4
    or. 0, 3, 0
    .4byte 0x4082000C # bne .L_803CAD64
    stw 4, 0xa0(31)
    .4byte 0x4800000C # b .L_803CAD6C
L_803CAD64:
    li 0, 0x1
    stw 0, 0xa0(31)
L_803CAD6C:
    li 0, 0x61
    lis 3, 0x6674
    stw 0, 0x84(31)
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803CADC0
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803CADC8
L_803CADC0:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803CADC8:
    mr 3, 31
    bl fn_803C1340
    .4byte 0x480002A4 # b .L_803CB074
    .4byte 0x480005DC # b .L_803CB3B0
L_803CADD8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0xff(3)
    cmpwi 0, 0x0
    .4byte 0x418205CC # beq .L_803CB3B0
    lwz 4, 0xa4(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 4, 4, 0xc8
    li 3, 0x0
    add 4, 0, 4
    lwz 0, 0x20(4)
    lwz 4, 0x24(4)
    xor 0, 0, 3
    xor 3, 4, 3
    or. 0, 3, 0
    .4byte 0x4182059C # beq .L_803CB3B0
    li 0, 0x1
    lis 3, 0x6674
    stb 0, 0x114(31)
    li 0, 0x5e
    addi 6, 3, 0x3031
    li 5, 0x54
    stw 0, 0x84(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803CAE74
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803CAE7C
L_803CAE74:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803CAE7C:
    lwz 3, 0x34(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 5, 0x34(31)
    li 0, 0x0
    lis 4, 0x7062
    lis 3, 0x50
    sth 0, 0x26(5)
    addi 6, 4, 0x3031
    addi 5, 3, 0x636f
    lwz 0, 0xe0(31)
    stw 0, 0xc(1)
    lwz 0, 0xe4(31)
    stw 0, 0x8(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x8
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x14(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x636f
    lwz 0, 0xe4(31)
    stw 0, 0x10(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x10
    addi 5, 1, 0x14
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x1c(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0x18(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x18
    addi 5, 1, 0x1c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x24(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0x20(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x20
    addi 5, 1, 0x24
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    li 4, 0x0
    li 0, 0x1f
    sth 4, 0x22(3)
    lwz 3, 0x24(31)
    sth 4, 0x26(3)
    lwz 3, 0x28(31)
    sth 4, 0x22(3)
    lwz 3, 0x28(31)
    sth 4, 0x26(3)
    lwz 3, 0x2c(31)
    sth 4, 0x22(3)
    lwz 3, 0x2c(31)
    sth 4, 0x26(3)
    lwz 3, 0x30(31)
    sth 4, 0x22(3)
    lwz 3, 0x30(31)
    sth 4, 0x26(3)
    sth 4, 0xd8(31)
    sth 4, 0xda(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x48000010 # b .L_803CB074
    .4byte 0x48000348 # b .L_803CB3B0
L_803CB06C:
    mr 3, 31
    bl fn_803C21A8
L_803CB074:
    lwz 0, 0xa0(31)
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_803CB094
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480001A4 # b .L_803CB234
L_803CB094:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000190 # b .L_803CB234
L_803CB0A8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_803CB0DC
    mr 3, 31
    bl fn_803C21A8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800015C # b .L_803CB234
L_803CB0DC:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820098 # beq .L_803CB188
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lwz 5, 0xa4(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    li 4, 0x0
    mulli 3, 5, 0xc8
    add 3, 0, 3
    lwz 0, 0x20(3)
    lwz 3, 0x24(3)
    xor 0, 0, 4
    xor 3, 3, 4
    or. 0, 3, 0
    .4byte 0x40820024 # bne .L_803CB154
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_803CB14C
    li 0, 0x3
    stw 0, 0xa0(31)
    .4byte 0x48000028 # b .L_803CB170
L_803CB14C:
    stw 4, 0xa0(31)
    .4byte 0x48000020 # b .L_803CB170
L_803CB154:
    lwz 3, 0xa0(31)
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x4
    .4byte 0x41800008 # blt .L_803CB170
    stw 4, 0xa0(31)
L_803CB170:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0xda(31)
    lwz 3, 0x34(31)
    sth 0, 0x26(3)
    .4byte 0x480000B0 # b .L_803CB234
L_803CB188:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820098 # beq .L_803CB234
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lwz 5, 0xa4(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    li 4, 0x0
    mulli 3, 5, 0xc8
    add 3, 0, 3
    lwz 0, 0x20(3)
    lwz 3, 0x24(3)
    xor 0, 0, 4
    xor 3, 3, 4
    or. 0, 3, 0
    .4byte 0x40820024 # bne .L_803CB200
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_803CB1F8
    li 0, 0x3
    stw 0, 0xa0(31)
    .4byte 0x4800002C # b .L_803CB220
L_803CB1F8:
    stw 4, 0xa0(31)
    .4byte 0x48000024 # b .L_803CB220
L_803CB200:
    lwz 3, 0xa0(31)
    subi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803CB220
    li 0, 0x3
    stw 0, 0xa0(31)
L_803CB220:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0xda(31)
    lwz 3, 0x34(31)
    sth 0, 0x26(3)
L_803CB234:
    lbz 0, 0x110(31)
    cmplwi 0, 0x13
    .4byte 0x40820174 # bne .L_803CB3B0
    lha 5, 0xda(31)
    .4byte 0xC3C204B8 # lfs f30, lbl_80543458@sda21(r0)
    extsh. 0, 5
    .4byte 0x41820098 # beq .L_803CB2E4
    cmpwi 5, 0x5
    .4byte 0x40800040 # bge .L_803CB294
    mullw 4, 5, 5
    lis 3, 0x4330
    addi 0, 5, 0x1
    stw 3, 0x28(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    xoris 3, 4, 0x8000
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    stw 3, 0x2c(1)
    lfd 1, 0x28(1)
    sth 0, 0xda(31)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x48000054 # b .L_803CB2E4
L_803CB294:
    cmpwi 5, 0xa
    .4byte 0x40800044 # bge .L_803CB2DC
    subfic 0, 5, 0xa
    lis 3, 0x4330
    mullw 4, 0, 0
    addi 0, 5, 0x1
    stw 3, 0x28(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    xoris 3, 4, 0x8000
    sth 0, 0xda(31)
    stw 3, 0x2c(1)
    lfd 1, 0x28(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x4800000C # b .L_803CB2E4
L_803CB2DC:
    li 0, 0x0
    sth 0, 0xda(31)
L_803CB2E4:
    .4byte 0xC3E204B8 # lfs f31, lbl_80543458@sda21(r0)
    mr 30, 31
    li 29, 0x0
L_803CB2F0:
    fcmpu cr0, 31, 30
    .4byte 0x41820024 # beq .L_803CB318
    lwz 0, 0xa0(31)
    cmpw 29, 0
    .4byte 0x40820018 # bne .L_803CB318
    fmr 1, 31
    lwz 3, 0x24(30)
    fmr 2, 30
    bl fn_80402E08
    .4byte 0x48000014 # b .L_803CB328
L_803CB318:
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x24(30)
    fmr 2, 1
    bl fn_80402E08
L_803CB328:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFBC # blt .L_803CB2F0
    lwz 0, 0xa0(31)
    fmr 2, 30
    lwz 4, 0x24(31)
    slwi 0, 0, 2
    lwz 3, 0x34(31)
    add 5, 31, 0
    lfs 0, 0x8(4)
    lwz 4, 0x24(5)
    lfs 1, 0x8(4)
    fsubs 1, 1, 0
    bl fn_80402E08
    lwz 3, 0x34(31)
    li 4, 0x3c
    li 5, 0x0
    li 7, 0x1
    lbz 6, 0x28(3)
    bl fn_8040245C
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
L_803CB3B0:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x64(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803CB3DC:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 16, 0x10(1)
    mr 31, 3
    addi 30, 5, lbl_804765D0@l
    lha 26, 0x17e(4)
    lha 21, 0x180(4)
    lha 22, 0x17c(4)
    add 17, 26, 21
    lha 16, 0x182(4)
    lha 18, 0x184(4)
    add 17, 22, 17
    lha 19, 0x186(4)
    add 0, 16, 18
    lha 23, 0x188(4)
    cmpw 17, 0
    lha 20, 0x18a(4)
    .4byte 0x40800008 # bge .L_803CB438
    mr 17, 0
L_803CB438:
    mulli 0, 20, 0x3
    add 0, 23, 0
    add 0, 19, 0
    cmpw 17, 0
    .4byte 0x40800008 # bge .L_803CB450
    mr 17, 0
L_803CB450:
    lwz 0, 0xa4(31)
    li 4, 0x0
    addi 29, 1, 0x8
    cmpw 4, 0
    mr 3, 29
    .4byte 0x4182000C # beq .L_803CB470
    stw 4, 0x0(29)
    addi 3, 29, 0x4
L_803CB470:
    lwz 0, 0xa4(31)
    li 4, 0x1
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_803CB488
    stw 4, 0x0(3)
    addi 3, 3, 0x4
L_803CB488:
    lwz 0, 0xa4(31)
    li 4, 0x2
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_803CB49C
    stw 4, 0x0(3)
L_803CB49C:
    lha 3, 0xd8(31)
    li 25, 0x0
    li 24, 0x0
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
L_803CB4B0:
    lha 3, 0xd8(31)
    add 0, 22, 24
    cmpw 3, 0
    .4byte 0x408105F4 # ble .L_803CBAB0
    lwz 0, 0x0(29)
    mr 4, 26
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(29)
    mr 4, 26
    li 6, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 28, 0x0(29)
    lwz 12, 0x0(3)
    slwi 27, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 28, 2
    mr 4, 3
    addi 28, 5, 0x38
    lbz 5, 0x125(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x131(31)
    bl fn_804023D0
    lwz 0, 0x0(29)
    mr 4, 26
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(29)
    mr 4, 26
    li 6, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x44
    lwzx 3, 31, 0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x5d8
    lwz 28, 0x0(29)
    lwz 12, 0x0(3)
    slwi 27, 28, 3
    lwz 12, 0x3c(12)
    add 6, 0, 27
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 28, 2
    mr 4, 3
    addi 28, 5, 0x44
    lbz 5, 0x118(31)
    lwzx 3, 31, 28
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5c0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5a8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x590
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x578
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x560
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x548
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x530
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x518
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x500
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4e8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4d0
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4b8
    add 6, 0, 27
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 28
    lbz 5, 0x124(31)
    bl fn_804023D0
L_803CBAB0:
    addi 25, 25, 0x1
    add 24, 24, 21
    cmpwi 25, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180F9F0 # blt .L_803CB4B0
    lwz 3, 0xa4(31)
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_803CBB38
    lha 0, 0xd8(31)
    cmpw 0, 22
    .4byte 0x40810060 # ble .L_803CBB38
    slwi 0, 3, 2
    lwz 5, 0x38(31)
    add 3, 31, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x38(3)
    mr 4, 26
    lfs 0, 0xc(5)
    li 5, 0x0
    lfs 2, 0xc(3)
    fsubs 2, 0, 2
    bl fn_80402940
    lwz 0, 0xa4(31)
    mr 4, 26
    lwz 3, 0x44(31)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    add 6, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x44(6)
    lfs 2, 0xc(3)
    fsubs 2, 0, 2
    bl fn_80402940
L_803CBB38:
    lha 0, 0xd8(31)
    cmpw 0, 16
    .4byte 0x40810118 # ble .L_803CBC58
    lwz 3, 0x14(31)
    mr 4, 18
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(31)
    mr 4, 18
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x18(31)
    mr 4, 18
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(31)
    mr 4, 18
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x1c(31)
    mr 4, 18
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(31)
    mr 4, 18
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    li 16, 0x0
    addi 18, 30, 0x48
L_803CBBD0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 16, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 16, 16, 0x1
    addi 18, 18, 0x8
    cmpwi 16, 0x51
    .4byte 0x4180FFC4 # blt .L_803CBBD0
    li 16, 0x0
    addi 18, 30, 0x2d0
L_803CBC18:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 16, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 16, 16, 0x1
    addi 18, 18, 0x8
    cmpwi 16, 0x13
    .4byte 0x4180FFC4 # blt .L_803CBC18
L_803CBC58:
    mr 18, 31
    li 21, 0x0
    li 16, 0x0
L_803CBC64:
    lha 3, 0xd8(31)
    add 0, 19, 16
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803CBDF4
    lwz 3, 0x24(18)
    mr 4, 23
    .4byte 0xC02204FC # lfs f1, lbl_8054349C@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(18)
    mr 4, 23
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    cmpwi 21, 0x2
    .4byte 0x418200BC # beq .L_803CBD60
    .4byte 0x40800014 # bge .L_803CBCBC
    cmpwi 21, 0x0
    .4byte 0x41820018 # beq .L_803CBCC8
    .4byte 0x40800060 # bge .L_803CBD14
    .4byte 0x4800013C # b .L_803CBDF4
L_803CBCBC:
    cmpwi 21, 0x4
    .4byte 0x40800134 # bge .L_803CBDF4
    .4byte 0x480000E8 # b .L_803CBDAC
L_803CBCC8:
    li 22, 0x0
    addi 24, 30, 0x7f8
L_803CBCD0:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803CBCD0
    .4byte 0x480000E4 # b .L_803CBDF4
L_803CBD14:
    li 22, 0x0
    addi 24, 30, 0x7d8
L_803CBD1C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803CBD1C
    .4byte 0x48000098 # b .L_803CBDF4
L_803CBD60:
    li 22, 0x0
    addi 24, 30, 0x7b8
L_803CBD68:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803CBD68
    .4byte 0x4800004C # b .L_803CBDF4
L_803CBDAC:
    li 22, 0x0
    addi 24, 30, 0x798
L_803CBDB4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x19f
    mr 4, 3
    lwz 3, 0x24(18)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 24, 24, 0x8
    cmpwi 22, 0x4
    .4byte 0x4180FFC4 # blt .L_803CBDB4
L_803CBDF4:
    addi 21, 21, 0x1
    add 16, 16, 20
    cmpwi 21, 0x4
    addi 18, 18, 0x4
    .4byte 0x4180FE60 # blt .L_803CBC64
    lha 0, 0xd8(31)
    cmpw 0, 17
    .4byte 0x40810014 # ble .L_803CBE24
    lbz 3, 0x110(31)
    li 0, 0x13
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803CBE24:
    lmw 16, 0x10(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803CBE38:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x258
    li 7, 0x1d4c
    stw 0, 0x14(1)
    li 8, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_8051C1A0@ha
    lwz 4, 0x5c(31)
    addi 3, 3, lbl_8051C1A0@l
    lwz 6, 0x60(31)
    bl fn_803B9A94
    cmpwi 3, 0x0
    .4byte 0x4182005C # beq .L_803CBECC
    cmpwi 3, 0x1
    .4byte 0x4082003C # bne .L_803CBEB4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    mr 3, 31
    stb 0, 0xff(4)
    bl fn_803C24BC
    lis 4, lbl_8051C1A0@ha
    lis 3, lbl_8050EC80@ha
    addi 4, 4, lbl_8051C1A0@l
    lwz 0, 0x1ff8(4)
    addi 3, 3, lbl_8050EC80@l
    lwz 4, 0x1ffc(4)
    stw 0, 0x8(3)
    stw 4, 0xc(3)
    .4byte 0x4800001C # b .L_803CBECC
L_803CBEB4:
    cmpwi 3, 0x2
    .4byte 0x40820014 # bne .L_803CBECC
    lbz 3, 0x110(31)
    li 0, 0x1
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803CBECC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CBEE0:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x1
    li 4, 0x1
    stw 0, 0x14(1)
    li 5, 0x1
    bl OSResetSystem
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CBF0C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CBF60
    lbz 3, 0x114(31)
    cmplwi 3, 0x0
    .4byte 0x418200F4 # beq .L_803CC034
    subi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000D8 # b .L_803CC034
L_803CBF60:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CBFA0
    lbz 3, 0x114(31)
    cmplwi 3, 0x1
    .4byte 0x408000B4 # bge .L_803CC034
    addi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000098 # b .L_803CC034
L_803CBFA0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820080 # beq .L_803CC034
    lbz 0, 0x114(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_803CBFF0
    li 3, 0x0
    li 0, 0x10
    stw 3, 0x80(31)
    li 4, 0xb
    li 5, -0x1
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000048 # b .L_803CC034
L_803CBFF0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_803CC00C
    li 0, 0x5c
    stw 0, 0x80(31)
    .4byte 0x4800000C # b .L_803CC014
L_803CC00C:
    li 0, 0x256
    stw 0, 0x80(31)
L_803CC014:
    lbz 3, 0x110(31)
    li 0, 0x3
    li 4, 0xc
    li 5, -0x1
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803CC034:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC048:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xb0(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803CC070
    subi 0, 3, 0x1
    stw 0, 0xb0(31)
L_803CC070:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1300
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_803CC094
    lwz 0, 0xb0(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_803CC0C4
L_803CC094:
    li 0, -0x1
    li 3, 0x0
    stw 0, 0xb0(31)
    li 0, 0x1
    li 4, 0xb
    li 5, -0x1
    stw 3, 0x80(31)
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803CC0C4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC0D8:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8051C1A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_8051C1A0@l
    bl fn_803B9C5C
    cmpwi 3, 0x1
    .4byte 0x4082003C # bne .L_803CC138
    li 0, 0x55
    lis 3, lbl_80529DEC@ha
    stw 0, 0x80(31)
    li 5, 0xe
    li 4, 0x0
    addi 3, 3, lbl_80529DEC@l
    lbz 6, 0x110(31)
    li 0, 0x5a
    stb 6, 0x112(31)
    stb 5, 0x110(31)
    stb 4, 0x113(31)
    stb 4, 0x24c(3)
    stw 0, 0xb0(31)
    .4byte 0x48000034 # b .L_803CC168
L_803CC138:
    cmpwi 3, 0x2
    .4byte 0x4082002C # bne .L_803CC168
    li 0, 0x56
    lis 3, lbl_80529DEC@ha
    stw 0, 0x80(31)
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    lbz 4, 0x110(31)
    stb 4, 0x112(31)
    stb 0, 0x110(31)
    stb 0, 0x113(31)
    stb 0, 0x24c(3)
L_803CC168:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC17C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CC1D0
    lbz 3, 0x114(31)
    cmplwi 3, 0x0
    .4byte 0x418200F8 # beq .L_803CC2A8
    subi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000DC # b .L_803CC2A8
L_803CC1D0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CC210
    lbz 3, 0x114(31)
    cmplwi 3, 0x1
    .4byte 0x408000B8 # bge .L_803CC2A8
    addi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800009C # b .L_803CC2A8
L_803CC210:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_803CC2A8
    lbz 0, 0x114(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803CC280
    lis 3, lbl_8051C1A0@ha
    addi 3, 3, lbl_8051C1A0@l
    bl fn_803B9DDC
    li 0, 0x54
    lis 3, lbl_80529DEC@ha
    stw 0, 0x80(31)
    li 6, 0xd
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    lbz 7, 0x110(31)
    li 4, 0xb
    li 5, -0x1
    stb 7, 0x112(31)
    stb 6, 0x110(31)
    stb 0, 0x113(31)
    stb 0, 0x24c(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800002C # b .L_803CC2A8
L_803CC280:
    li 3, 0x52
    li 0, 0x2
    stw 3, 0x80(31)
    li 4, 0xc
    li 5, -0x1
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803CC2A8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC2BC:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CC310
    lbz 3, 0x114(31)
    cmplwi 3, 0x0
    .4byte 0x418200D8 # beq .L_803CC3C8
    subi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000BC # b .L_803CC3C8
L_803CC310:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CC350
    lbz 3, 0x114(31)
    cmplwi 3, 0x1
    .4byte 0x40800098 # bge .L_803CC3C8
    addi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800007C # b .L_803CC3C8
L_803CC350:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820064 # beq .L_803CC3C8
    lbz 0, 0x114(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_803CC3A0
    li 3, 0x53
    li 0, 0xc
    stw 3, 0x80(31)
    li 4, 0xb
    li 5, -0x1
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800002C # b .L_803CC3C8
L_803CC3A0:
    li 3, 0x52
    li 0, 0x2
    stw 3, 0x80(31)
    li 4, 0xc
    li 5, -0x1
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803CC3C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC3DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xb0(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803CC404
    subi 0, 3, 0x1
    stw 0, 0xb0(31)
L_803CC404:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1300
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_803CC428
    lwz 0, 0xb0(31)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_803CC47C
L_803CC428:
    li 0, -0x1
    li 4, 0x0
    stw 0, 0xb0(31)
    li 0, 0x1
    mr 3, 31
    stw 4, 0x80(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stb 0, 0xff(4)
    bl fn_803C24BC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    lis 4, lbl_8051C1A0@ha
    lis 3, lbl_8050EC80@ha
    addi 4, 4, lbl_8051C1A0@l
    lwz 0, 0x1ff8(4)
    addi 3, 3, lbl_8050EC80@l
    lwz 4, 0x1ffc(4)
    stw 0, 0x8(3)
    stw 4, 0xc(3)
L_803CC47C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC490:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8051C1A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_8051C1A0@l
    bl fn_803B9BDC
    cmpwi 3, 0x1
    .4byte 0x4082003C # bne .L_803CC4F0
    li 0, 0x5b
    lis 3, lbl_80529DEC@ha
    stw 0, 0x80(31)
    li 5, 0xa
    li 4, 0x0
    addi 3, 3, lbl_80529DEC@l
    lbz 6, 0x110(31)
    li 0, 0x5a
    stb 6, 0x112(31)
    stb 5, 0x110(31)
    stb 4, 0x113(31)
    stb 4, 0x24c(3)
    stw 0, 0xb0(31)
    .4byte 0x4800003C # b .L_803CC528
L_803CC4F0:
    cmpwi 3, 0x2
    .4byte 0x40820034 # bne .L_803CC528
    li 0, 0x5a
    mr 3, 31
    stw 0, 0x80(31)
    bl fn_803CE4CC
    lbz 4, 0x110(31)
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    stb 4, 0x112(31)
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x110(31)
    stb 0, 0x113(31)
    stb 0, 0x24c(3)
L_803CC528:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC53C:
    stwu 1, -0x20(1)
    mflr 0
    li 6, 0x0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, lbl_8050EC80@ha
    lwz 4, 0x5c(31)
    addi 3, 3, lbl_8050EC80@l
    lwz 5, 0x60(31)
    bl fn_803B93E8
    lwz 3, 0x5c(31)
    li 4, 0x0
    bl fn_803BACF8
    lis 3, lbl_8050EC80@ha
    lwz 4, 0x5c(31)
    lwz 5, 0x60(31)
    addi 3, 3, lbl_8050EC80@l
    li 6, 0x1
    bl fn_803B93E8
    lwz 3, 0x5c(31)
    li 4, 0x1
    bl fn_803BACF8
    lis 3, lbl_8050EC80@ha
    lwz 4, 0x5c(31)
    lwz 5, 0x60(31)
    addi 3, 3, lbl_8050EC80@l
    li 6, 0x2
    bl fn_803B93E8
    lwz 3, 0x5c(31)
    li 4, 0x2
    bl fn_803BACF8
    lis 3, lbl_8051C1A0@ha
    lwz 4, 0x5c(31)
    lwz 6, 0x60(31)
    addi 3, 3, lbl_8051C1A0@l
    li 5, 0x258
    li 7, 0x1d4c
    li 8, 0x0
    bl fn_803B9D54
    lbz 5, 0x110(31)
    lis 3, lbl_8051C1A0@ha
    li 0, 0x9
    addi 4, 1, 0x8
    stb 5, 0x112(31)
    addi 3, 3, lbl_8051C1A0@l
    stb 0, 0x110(31)
    lbz 3, 0x1ff4(3)
    bl fn_80058748
    lis 3, lbl_8051C1A0@ha
    lwz 0, 0x8(1)
    addi 3, 3, lbl_8051C1A0@l
    lwz 4, 0xc(1)
    stw 0, 0x1ff8(3)
    stw 4, 0x1ffc(3)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803CC62C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CC680
    lbz 3, 0x114(31)
    cmplwi 3, 0x0
    .4byte 0x418200EC # beq .L_803CC74C
    subi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000D0 # b .L_803CC74C
L_803CC680:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CC6C0
    lbz 3, 0x114(31)
    cmplwi 3, 0x1
    .4byte 0x408000AC # bge .L_803CC74C
    addi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000090 # b .L_803CC74C
L_803CC6C0:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820078 # beq .L_803CC74C
    lbz 0, 0x114(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_803CC724
    li 0, 0x59
    lis 3, lbl_80529DEC@ha
    stw 0, 0x80(31)
    li 6, 0x8
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    lbz 7, 0x110(31)
    li 4, 0xb
    li 5, -0x1
    stb 7, 0x112(31)
    stb 6, 0x110(31)
    stb 0, 0x113(31)
    stb 0, 0x24c(3)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800002C # b .L_803CC74C
L_803CC724:
    li 3, 0x58
    li 0, 0x2
    stw 3, 0x80(31)
    li 4, 0xc
    li 5, -0x1
    lbz 3, 0x110(31)
    stb 3, 0x112(31)
    stb 0, 0x110(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803CC74C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803CC760:
    stwu 1, -0x70(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 5, lbl_804765D0@ha
    stw 0, 0x74(1)
    addi 4, 4, lbl_8050DB0C@l
    stmw 17, 0x34(1)
    addi 30, 5, lbl_804765D0@l
    mr 31, 3
    lha 25, 0x170(4)
    lha 28, 0x16e(4)
    mulli 0, 25, 0x3
    lha 5, 0x168(4)
    lha 21, 0x16a(4)
    lha 24, 0x16c(4)
    add 0, 28, 0
    add 19, 5, 21
    add 0, 24, 0
    lha 23, 0x172(4)
    cmpw 19, 0
    lha 26, 0x174(4)
    lha 20, 0x176(4)
    .4byte 0x40800008 # bge .L_803CC7C0
    mr 19, 0
L_803CC7C0:
    add 0, 26, 20
    add 0, 23, 0
    cmpw 19, 0
    .4byte 0x40800008 # bge .L_803CC7D4
    mr 19, 0
L_803CC7D4:
    lwz 0, 0xa4(31)
    li 4, 0x0
    addi 27, 1, 0x28
    cmpw 4, 0
    mr 3, 27
    .4byte 0x4182000C # beq .L_803CC7F4
    stw 4, 0x0(27)
    addi 3, 27, 0x4
L_803CC7F4:
    lwz 0, 0xa4(31)
    li 4, 0x1
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_803CC80C
    stw 4, 0x0(3)
    addi 3, 3, 0x4
L_803CC80C:
    lwz 0, 0xa4(31)
    li 4, 0x2
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_803CC820
    stw 4, 0x0(3)
L_803CC820:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0xd8(31)
    cmpw 0, 5
    .4byte 0x40810118 # ble .L_803CC94C
    lwz 3, 0x14(31)
    mr 4, 21
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x14(31)
    mr 4, 21
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x18(31)
    mr 4, 21
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x18(31)
    mr 4, 21
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    lwz 3, 0x1c(31)
    mr 4, 21
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204F8 # lfs f2, lbl_80543498@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x1c(31)
    mr 4, 21
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 21, 0x0
    addi 18, 30, 0x48
L_803CC8C4:
    lwz 3, 0x4(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x132
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 21, 21, 0x1
    addi 18, 18, 0x8
    cmpwi 21, 0x51
    .4byte 0x4180FFC4 # blt .L_803CC8C4
    li 21, 0x0
    addi 18, 30, 0x2d0
L_803CC90C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x183
    mr 4, 3
    lwz 3, 0x14(31)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 21, 21, 0x1
    addi 18, 18, 0x8
    cmpwi 21, 0x13
    .4byte 0x4180FFC4 # blt .L_803CC90C
L_803CC94C:
    mr 22, 31
    li 21, 0x0
    li 29, 0x0
L_803CC958:
    lha 3, 0xd8(31)
    add 0, 24, 29
    cmpw 3, 0
    .4byte 0x40810184 # ble .L_803CCAE8
    lwz 3, 0x24(22)
    mr 4, 28
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204FC # lfs f2, lbl_8054349C@sda21(r0)
    bl fn_80402940
    lwz 3, 0x24(22)
    mr 4, 28
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    cmpwi 21, 0x2
    .4byte 0x418200BC # beq .L_803CCA54
    .4byte 0x40800014 # bge .L_803CC9B0
    cmpwi 21, 0x0
    .4byte 0x41820018 # beq .L_803CC9BC
    .4byte 0x40800060 # bge .L_803CCA08
    .4byte 0x4800013C # b .L_803CCAE8
L_803CC9B0:
    cmpwi 21, 0x4
    .4byte 0x40800134 # bge .L_803CCAE8
    .4byte 0x480000E8 # b .L_803CCAA0
L_803CC9BC:
    li 18, 0x0
    addi 17, 30, 0x7f8
L_803CC9C4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CC9C4
    .4byte 0x480000E4 # b .L_803CCAE8
L_803CCA08:
    li 18, 0x0
    addi 17, 30, 0x7d8
L_803CCA10:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CCA10
    .4byte 0x48000098 # b .L_803CCAE8
L_803CCA54:
    li 18, 0x0
    addi 17, 30, 0x7b8
L_803CCA5C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CCA5C
    .4byte 0x4800004C # b .L_803CCAE8
L_803CCAA0:
    li 18, 0x0
    addi 17, 30, 0x798
L_803CCAA8:
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 18, 0x19f
    mr 4, 3
    lwz 3, 0x24(22)
    lbzx 5, 31, 0
    bl fn_804023D0
    addi 18, 18, 0x1
    addi 17, 17, 0x8
    cmpwi 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803CCAA8
L_803CCAE8:
    addi 21, 21, 0x1
    add 29, 29, 25
    cmpwi 21, 0x4
    addi 22, 22, 0x4
    .4byte 0x4180FE60 # blt .L_803CC958
    li 25, 0x0
    li 24, 0x0
L_803CCB04:
    lha 3, 0xd8(31)
    add 0, 23, 24
    cmpw 3, 0
    .4byte 0x408105E4 # ble .L_803CD0F4
    lwz 0, 0x0(27)
    mr 4, 26
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    li 5, 0x0
    slwi 3, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    bl fn_80402B10
    lwz 0, 0x0(27)
    mr 4, 26
    li 5, 0x0
    slwi 3, 0, 2
    addi 0, 3, 0x38
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x780
    lwz 18, 0x0(27)
    lwz 12, 0x0(3)
    slwi 28, 18, 3
    lwz 12, 0x3c(12)
    add 6, 0, 28
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 18, 2
    mr 4, 3
    addi 29, 5, 0x38
    lbz 5, 0x125(31)
    lwzx 3, 31, 29
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x131(31)
    bl fn_804023D0
    slwi 3, 18, 2
    .4byte 0xC02204F8 # lfs f1, lbl_80543498@sda21(r0)
    addi 0, 3, 0x44
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwzx 3, 31, 0
    mr 4, 26
    li 5, 0x0
    bl fn_80402B10
    slwi 3, 18, 2
    mr 4, 26
    addi 0, 3, 0x44
    li 5, 0x0
    lwzx 3, 31, 0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    addi 0, 30, 0x5d8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    slwi 5, 18, 2
    mr 4, 3
    addi 29, 5, 0x44
    lbz 5, 0x118(31)
    lwzx 3, 31, 29
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5c0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5a8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x590
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x578
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x560
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x548
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x530
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x518
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x500
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4e8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4d0
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x4b8
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 29
    lbz 5, 0x124(31)
    bl fn_804023D0
L_803CD0F4:
    addi 25, 25, 0x1
    add 24, 24, 20
    cmpwi 25, 0x2
    addi 27, 27, 0x4
    .4byte 0x4180FA00 # blt .L_803CCB04
    lwz 3, 0xa4(31)
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_803CD17C
    lha 0, 0xd8(31)
    cmpw 0, 23
    .4byte 0x40810060 # ble .L_803CD17C
    slwi 0, 3, 2
    lwz 5, 0x38(31)
    add 3, 31, 0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x38(3)
    mr 4, 26
    lfs 0, 0xc(5)
    li 5, 0x0
    lfs 1, 0xc(3)
    fsubs 1, 0, 1
    bl fn_80402940
    lwz 0, 0xa4(31)
    mr 4, 26
    lwz 3, 0x44(31)
    li 5, 0x0
    slwi 0, 0, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    add 6, 31, 0
    lfs 0, 0xc(3)
    lwz 3, 0x44(6)
    lfs 1, 0xc(3)
    fsubs 1, 0, 1
    bl fn_80402940
L_803CD17C:
    lha 0, 0xd8(31)
    cmpw 0, 19
    .4byte 0x40810144 # ble .L_803CD2C8
    lwz 0, 0xe0(31)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x20(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x636f
    lwz 0, 0xe4(31)
    stw 0, 0x24(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x20
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x7062
    lis 3, 0x50
    stw 0, 0x18(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x636f
    lwz 0, 0xe4(31)
    stw 0, 0x1c(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x18
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x10(1)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0x14(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0x10
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0xe0(31)
    lis 4, 0x6c62
    lis 3, 0x50
    stw 0, 0x8(1)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6465
    lwz 0, 0xe4(31)
    stw 0, 0xc(1)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lbz 3, 0x110(31)
    li 0, 0x5
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803CD2C8:
    lmw 17, 0x34(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803CD2DC:
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
    mr 31, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418200E8 # beq .L_803CD404
    lwz 0, 0xa4(31)
    li 3, 0x1
    lbz 4, 0x115(31)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x418200A8 # beq .L_803CD3E0
    stb 3, 0x114(31)
    li 0, 0x5e
    lis 3, 0x6674
    li 5, 0x54
    stw 0, 0x84(31)
    addi 6, 3, 0x3031
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803CD394
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803CD39C
L_803CD394:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803CD39C:
    lwz 3, 0x4(31)
    lis 4, 0x6462
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x65
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    mr 3, 31
    bl fn_803BF9C4
    .4byte 0x48000014 # b .L_803CD3F0
L_803CD3E0:
    li 0, 0x0
    mr 3, 31
    stw 0, 0xa0(31)
    bl fn_803C1734
L_803CD3F0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000110 # b .L_803CD510
L_803CD404:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_803CD454
    lbz 0, 0x116(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803CD438
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310BC
    li 0, 0x0
    stb 0, 0x1a3(31)
L_803CD438:
    li 0, 0x2
    li 4, 0xc
    stw 0, 0x1a8(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000C0 # b .L_803CD510
L_803CD454:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_803CD4B4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lwz 3, 0xa4(31)
    addi 0, 3, 0x1
    stw 0, 0xa4(31)
    lwz 0, 0xa4(31)
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_803CD49C
    li 0, 0x0
    stw 0, 0xa4(31)
L_803CD49C:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0xda(31)
    lwz 3, 0x50(31)
    sth 0, 0x26(3)
    .4byte 0x48000060 # b .L_803CD510
L_803CD4B4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_803CD510
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    lwz 3, 0xa4(31)
    subi 0, 3, 0x1
    stw 0, 0xa4(31)
    lwz 0, 0xa4(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803CD4FC
    li 0, 0x2
    stw 0, 0xa4(31)
L_803CD4FC:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0xda(31)
    lwz 3, 0x50(31)
    sth 0, 0x26(3)
L_803CD510:
    lbz 0, 0x110(31)
    cmplwi 0, 0x5
    .4byte 0x40820218 # bne .L_803CD730
    lha 5, 0xda(31)
    .4byte 0xC3C204B8 # lfs f30, lbl_80543458@sda21(r0)
    extsh. 0, 5
    .4byte 0x41820098 # beq .L_803CD5C0
    cmpwi 5, 0x5
    .4byte 0x40800040 # bge .L_803CD570
    mullw 4, 5, 5
    lis 3, 0x4330
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    xoris 3, 4, 0x8000
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    sth 0, 0xda(31)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x48000054 # b .L_803CD5C0
L_803CD570:
    cmpwi 5, 0xa
    .4byte 0x40800044 # bge .L_803CD5B8
    subfic 0, 5, 0xa
    lis 3, 0x4330
    mullw 4, 0, 0
    addi 0, 5, 0x1
    stw 3, 0x8(1)
    .4byte 0xC84204C8 # lfd f2, lbl_80543468@sda21(r0)
    .4byte 0xC0620504 # lfs f3, lbl_805434A4@sda21(r0)
    .4byte 0xC0020508 # lfs f0, lbl_805434A8@sda21(r0)
    xoris 3, 4, 0x8000
    sth 0, 0xda(31)
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x4800000C # b .L_803CD5C0
L_803CD5B8:
    li 0, 0x0
    sth 0, 0xda(31)
L_803CD5C0:
    .4byte 0xC3E204B8 # lfs f31, lbl_80543458@sda21(r0)
    mr 30, 31
    li 29, 0x0
L_803CD5CC:
    fcmpu cr0, 31, 30
    .4byte 0x41820024 # beq .L_803CD5F4
    lwz 0, 0xa4(31)
    cmpw 29, 0
    .4byte 0x40820018 # bne .L_803CD5F4
    fmr 1, 31
    lwz 3, 0x44(30)
    fmr 2, 30
    bl fn_80402E08
    .4byte 0x48000014 # b .L_803CD604
L_803CD5F4:
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lwz 3, 0x44(30)
    fmr 2, 1
    bl fn_80402E08
L_803CD604:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFBC # blt .L_803CD5CC
    lwz 0, 0xa4(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x44(3)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x44(31)
    lfs 1, 0x4(3)
    lfs 0, 0xc(4)
    lwz 3, 0x50(31)
    fsubs 2, 1, 0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 4, 0x3c
    li 5, 0x0
    li 7, 0x1
    lbz 6, 0x28(3)
    bl fn_8040245C
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
L_803CD730:
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

fn_803CD75C:
    stwu 1, -0x70(1)
    mflr 0
    lis 4, lbl_8050DB0C@ha
    lis 6, lbl_804765D0@ha
    stw 0, 0x74(1)
    addi 5, 4, lbl_8050DB0C@l
    stmw 14, 0x28(1)
    mr 31, 3
    addi 30, 6, lbl_804765D0@l
    lha 0, 0x158(5)
    lha 4, 0x156(5)
    slwi 3, 0, 1
    stw 0, 0x14(1)
    lha 0, 0x154(5)
    add 3, 4, 3
    mr 16, 4
    sth 0, 0x18(1)
    lha 0, 0x15a(5)
    sth 0, 0x10(1)
    lha 0, 0x18(1)
    add 0, 0, 4
    stw 0, 0x8(1)
    lha 0, 0x15c(5)
    sth 0, 0xe(1)
    lha 0, 0x18(1)
    add 3, 0, 3
    lha 0, 0x15e(5)
    lha 5, 0x160(5)
    sth 0, 0xc(1)
    lwz 0, 0x8(1)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803CD7E0
    stw 3, 0x8(1)
L_803CD7E0:
    lha 3, 0x10(1)
    lha 0, 0xe(1)
    add 3, 3, 0
    lwz 0, 0x8(1)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803CD7FC
    stw 3, 0x8(1)
L_803CD7FC:
    lha 0, 0xc(1)
    add 3, 0, 5
    lwz 0, 0x8(1)
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_803CD814
    stw 3, 0x8(1)
L_803CD814:
    lha 3, 0xd8(31)
    addi 0, 3, 0x1
    sth 0, 0xd8(31)
    lha 0, 0x18(1)
    lha 3, 0xd8(31)
    cmpw 3, 0
    .4byte 0x40810018 # ble .L_803CD844
    lwz 3, 0x50(31)
    li 5, 0x0
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
L_803CD844:
    addi 0, 30, 0x5d8
    mr 29, 31
    stw 0, 0x20(1)
    addi 0, 30, 0x5c0
    addi 14, 30, 0x5a8
    addi 28, 30, 0x590
    stw 0, 0x1c(1)
    li 0, 0x0
    addi 27, 30, 0x578
    addi 26, 30, 0x560
    stw 0, 0x24(1)
    addi 25, 30, 0x548
    addi 24, 30, 0x530
    addi 23, 30, 0x518
    addi 22, 30, 0x500
    addi 21, 30, 0x4e8
    addi 20, 30, 0x4d0
    addi 19, 30, 0x4b8
    li 15, 0x0
L_803CD890:
    lha 3, 0x18(1)
    lwz 0, 0x24(1)
    lha 4, 0xd8(31)
    add 0, 3, 0
    cmpw 4, 0
    .4byte 0x40810554 # ble .L_803CDDF8
    subfic 17, 15, 0x2
    .4byte 0xC0220500 # lfs f1, lbl_805434A0@sda21(r0)
    slwi 3, 17, 2
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    addi 18, 3, 0x38
    mr 4, 16
    lwzx 3, 31, 18
    li 5, 0x0
    bl fn_80402940
    lwzx 3, 31, 18
    mr 4, 16
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    slwi 17, 17, 3
    addi 0, 30, 0x780
    lwz 12, 0x0(3)
    add 6, 0, 17
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x125(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x768
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x750
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6c8
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x6b0
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x698
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x680
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x668
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x650
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x638
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x620
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x608
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    addi 0, 30, 0x5f0
    add 6, 0, 17
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwzx 3, 31, 18
    lbz 5, 0x131(31)
    bl fn_804023D0
    lwz 3, 0x44(29)
    mr 4, 16
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    li 5, 0x0
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402B10
    lwz 3, 0x44(29)
    mr 4, 16
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    lwz 4, 0x20(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x118(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x1c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x124(31)
    bl fn_804023D0
L_803CDDF8:
    lwz 3, 0x24(1)
    addi 15, 15, 0x1
    lwz 0, 0x14(1)
    cmpwi 15, 0x3
    addi 29, 29, 0x4
    addi 14, 14, 0x8
    add 3, 3, 0
    addi 28, 28, 0x8
    stw 3, 0x24(1)
    addi 27, 27, 0x8
    lwz 3, 0x20(1)
    addi 26, 26, 0x8
    addi 25, 25, 0x8
    addi 24, 24, 0x8
    addi 3, 3, 0x8
    addi 23, 23, 0x8
    stw 3, 0x20(1)
    addi 22, 22, 0x8
    lwz 3, 0x1c(1)
    addi 21, 21, 0x8
    addi 20, 20, 0x8
    addi 19, 19, 0x8
    addi 3, 3, 0x8
    stw 3, 0x1c(1)
    .4byte 0x4180FA38 # blt .L_803CD890
    lha 3, 0xd8(31)
    lha 0, 0x10(1)
    cmpw 3, 0
    .4byte 0x40810030 # ble .L_803CDE98
    lwz 3, 0x54(31)
    li 5, 0x0
    lha 4, 0xe(1)
    .4byte 0xC02204BC # lfs f1, lbl_8054345C@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402940
    lwz 3, 0x54(31)
    li 5, 0x0
    lha 4, 0xe(1)
    lbz 6, 0x28(3)
    bl fn_80402628
L_803CDE98:
    lha 3, 0xc(1)
    lha 4, 0xd8(31)
    addi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_803CDEB4
    li 0, 0x1
    stb 0, 0x1a4(31)
L_803CDEB4:
    lha 3, 0xd8(31)
    lwz 0, 0x8(1)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_803CDED4
    lbz 3, 0x110(31)
    li 0, 0x5
    stb 3, 0x112(31)
    stb 0, 0x110(31)
L_803CDED4:
    lmw 14, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803CDEE8:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x1
    li 5, 0x1
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CDF48
    lbz 3, 0x114(28)
    cmplwi 3, 0x0
    .4byte 0x41820114 # beq .L_803CE03C
    subi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(28)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000F8 # b .L_803CE03C
L_803CDF48:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803CDF88
    lbz 3, 0x114(28)
    cmplwi 3, 0x1
    .4byte 0x408000D4 # bge .L_803CE03C
    addi 0, 3, 0x1
    li 4, 0x26
    stb 0, 0x114(28)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000B8 # b .L_803CE03C
L_803CDF88:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418200A0 # beq .L_803CE03C
    lbz 0, 0x114(28)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_803CE014
    li 0, 0x0
    lis 3, lbl_8050EC80@ha
    stw 0, 0x80(28)
    addi 31, 3, lbl_8050EC80@l
    li 29, 0x0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    mr 30, 31
    stb 0, 0xff(3)
L_803CDFCC:
    addi 3, 30, 0x20
    addi 4, 31, 0x280
    bl fn_803B950C
    addi 29, 29, 0x1
    addi 30, 30, 0xc8
    cmpwi 29, 0x3
    addi 31, 31, 0x9c4
    .4byte 0x4180FFE4 # blt .L_803CDFCC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    bl fn_80403680
    mr 3, 28
    bl fn_803C24BC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800002C # b .L_803CE03C
L_803CE014:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x80(28)
    li 4, 0xc
    li 5, -0x1
    lbz 3, 0x110(28)
    stb 3, 0x112(28)
    stb 0, 0x110(28)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803CE03C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_803BC4C8

