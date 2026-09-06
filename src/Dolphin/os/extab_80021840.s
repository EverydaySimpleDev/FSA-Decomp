# MAJOR: first-ever landing at the very START of the game's main .text
# section (0x80021840-0x8003F610) - 766 real functions plus 17
# dtk-internal pad_/gap_ pseudo-functions (small inter-function
# padding dtk itself accounts for under pad_ADDR_text/gap_ADDR_text
# labels within the fused dump files - NOT hand-inserted; a first
# attempt manually re-derived and inserted these bytes from raw DOL
# reads, which was unnecessary AND caused byte-duplication since dtk
# already emits them - the correct fix is simply to let
# resolvefiles2.py's normal file resolution pull them in naturally,
# the same as any other function), 122,320 bytes total, fully
# contiguous. This is the ENTIRE previously-100%-unclaimed head of
# .text, discovered via a full-DOL gap scan going beyond the two
# now-closed 901KB-gap/dispatch-cross-check territories.
#
# Landing this required discovering and fixing THREE real bugs:
# (1) spanwalk.py/resolvefiles.py only recognized fn_-prefixed symbol
# names, silently missing already-renamed symbols (dtor_/other custom
# names) mixed into this range - spanwalk2.py/spanwalk3.py/
# resolvefiles2.py (scratchpad) generalize both to any symbol name,
# using splits.txt itself (not name-pattern grepping) as the ground
# truth for claimed status.
# (2) asm_transcribe_gnuas.py's OBJ_RE only matched
# '.obj "@name", local' and silently DROPPED a real, needed etb entry
# marked 'global' (fn_80021848's own extab object, externally
# referenced by an auto-generated *_data.o rodata object) - fixed to
# accept both, and to preserve the literal quoted "@name" form for
# global-scoped objects specifically (stripping the @ - safe for the
# hundreds of local-scoped objects already landed - broke linking for
# this one).
# (3) GNU AS has no GQR0-7 register-name alias (same class of bug as
# the already-known qr0-7/crNxx cases) - "mtspr GQR2, r3" fails as
# "unsupported relocation against GQR2"; fixed by translating to the
# raw SPR number (GQR0=912..GQR7=919), verified byte-identical to
# retail via direct assembly+compare.
#
# No adjacent extab/extabindex claim exists on the START side (this
# literally IS the start of all claimed .text) - boundaries verified
# via explicit overlap-checking against the full splits.txt state
# instead of neighbor-matching. 40 ctors entries found via full-table
# scan at 0x8045BD04-0x8045BDA4.

.section extab, "a"
.balign 4
.global "@etb_80005600"
"@etb_80005600":
    .4byte 0x08080000
    .4byte 0x00000000
.size "@etb_80005600", 8

.global etb_80005608
etb_80005608:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005608, 8

.global etb_80005610
etb_80005610:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005610, 8

.global etb_80005618
etb_80005618:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005618, 8

.global etb_80005620
etb_80005620:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005620, 8

.global etb_80005628
etb_80005628:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005628, 8

.global etb_80005630
etb_80005630:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005630, 8

.global etb_80005638
etb_80005638:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005638, 8

.global etb_80005640
etb_80005640:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005640, 8

.global etb_80005648
etb_80005648:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005648, 8

.section extabindex, "a"
.balign 4
.global eti_80011860
eti_80011860:
    .4byte fn_80021848
    .4byte 0x00000224
    .4byte "@etb_80005600"
.size eti_80011860, 12

.global eti_8001186C
eti_8001186C:
    .4byte fn_80021A6C
    .4byte 0x00000054
    .4byte etb_80005608
.size eti_8001186C, 12

.global eti_80011878
eti_80011878:
    .4byte fn_80021AC0
    .4byte 0x00000054
    .4byte etb_80005610
.size eti_80011878, 12

.global eti_80011884
eti_80011884:
    .4byte fn_80021B14
    .4byte 0x00000054
    .4byte etb_80005618
.size eti_80011884, 12

.global eti_80011890
eti_80011890:
    .4byte fn_80021B68
    .4byte 0x00000054
    .4byte etb_80005620
.size eti_80011890, 12

.global eti_8001189C
eti_8001189C:
    .4byte fn_80021BBC
    .4byte 0x00000054
    .4byte etb_80005628
.size eti_8001189C, 12

.global eti_800118A8
eti_800118A8:
    .4byte fn_80021C10
    .4byte 0x00000054
    .4byte etb_80005630
.size eti_800118A8, 12

.global eti_800118B4
eti_800118B4:
    .4byte fn_80021C64
    .4byte 0x00000054
    .4byte etb_80005638
.size eti_800118B4, 12

.global eti_800118C0
eti_800118C0:
    .4byte fn_80021CB8
    .4byte 0x00000054
    .4byte etb_80005640
.size eti_800118C0, 12

.global eti_800118CC
eti_800118CC:
    .4byte fn_80021D0C
    .4byte 0x00000054
    .4byte etb_80005648
.size eti_800118CC, 12

.text
.balign 4
.global fn_80021840
.global fn_80021848
.global fn_80021A6C
.global fn_80021AC0
.global fn_80021B14
.global fn_80021B68
.global fn_80021BBC
.global fn_80021C10
.global fn_80021C64
.global fn_80021CB8
.global fn_80021D0C
.global fn_80021D60
.global fn_80021DA8
.global fn_80021F24
.global fn_80021FF0
.global fn_800223BC
.global fn_800224B8
.global fn_80022540
.global fn_800225C8
.global fn_800225D0
.global fn_800225D8
.global fn_800225DC
.global fn_80022784
.global fn_8002278C
.global fn_8002279C
.global fn_800227A0
.global fn_800227A8
.global fn_800228B4
.global fn_800228BC
.global fn_800228C4
.global fn_800228CC
.global fn_800228D4
.global fn_800228DC
.global fn_800228E4
.global fn_800228EC
.global fn_800228F4
.global fn_80022960
.global fn_80022A10
.global fn_80022B7C
.global fn_80022C24
.global fn_80022C50
.global fn_80022D44
.global fn_80022DBC
.global fn_80022E94
.global fn_80022F98
.global fn_80023088
.global fn_8002318C
.global fn_800231F8
.global fn_80023274
.global fn_800232F0
.global fn_800232F8
.global fn_8002334C
.global fn_8002339C
.global fn_800235B0
.global fn_80023750
.global fn_800239D0
.global fn_80023A68
.global fn_80023B74
.global fn_80023CD4
.global fn_80023D84
.global fn_80023E8C
.global fn_80024150
.global fn_80024244
.global fn_80024338
.global dtor_8002449C
.global fn_800244F0
.global fn_800246A8
.global fn_8002488C
.global fn_80024894
.global fn_8002493C
.global fn_800249C0
.global fn_800249C8
.global fn_80024A00
.global fn_80024A04
.global fn_80024A0C
.global fn_80024B50
.global fn_80024B98
.global fn_80024BE0
.global fn_80024C4C
.global fn_80024CF8
.global fn_80024DEC
.global fn_80024F2C
.global fn_80025118
.global fn_80025158
.global fn_800251B4
.global fn_80025208
.global fn_800252D4
.global fn_80025368
.global fn_80025474
.global fn_80025490
.global fn_800254FC
.global fn_80025574
.global fn_800255A4
.global fn_800256C8
.global fn_80025784
.global fn_800257BC
.global fn_800257C4
.global fn_800257CC
.global fn_800257D4
.global fn_8002585C
.global fn_800258A8
.global fn_80025BCC
.global fn_80025C94
.global fn_80025D68
.global fn_80025DE0
.global fn_80025E38
.global fn_80025F54
.global fn_80026060
.global fn_800260B8
.global fn_80026100
.global fn_80026158
.global fn_8002622C
.global fn_80026248
.global fn_800262AC
.global fn_80026304
.global fn_8002635C
.global fn_800263B4
.global fn_8002640C
.global fn_80026428
.global fn_8002648C
.global fn_80026560
.global fn_80026590
.global fn_8002662C
.global fn_800266C0
.global fn_80026874
.global fn_80026B5C
.global fn_80026CC8
.global fn_80026D88
.global fn_80026D90
.global fn_80026E28
.global fn_80026E78
.global fn_80026E80
.global fn_80026E88
.global fn_80026E8C
.global fn_80026E94
.global fn_80026FD8
.global fn_80027020
.global fn_800270F4
.global fn_80027220
.global fn_80027418
.global fn_80027458
.global fn_800274B4
.global fn_80027548
.global fn_80027654
.global fn_8002769C
.global fn_80027770
.global fn_80027844
.global fn_80027B18
.global fn_80027D8C
.global fn_80027E9C
.global fn_80027EC4
.global fn_80027F60
.global fn_80028070
.global fn_800280E8
.global fn_8002811C
.global fn_8002819C
.global fn_800281FC
.global fn_80028268
.global fn_800282C0
.global fn_800282C8
.global fn_80028374
.global fn_800283E8
.global fn_800285B8
.global fn_800286DC
.global fn_800287BC
.global fn_80028848
.global fn_8002890C
.global fn_80028974
.global fn_8002898C
.global fn_800289FC
.global fn_80028A8C
.global fn_80028AD8
.global fn_80028AFC
.global fn_80028C0C
.global fn_80028C14
.global fn_80028C1C
.global fn_80028C98
.global fn_80028CA4
.global fn_80028D24
.global fn_80028D9C
.global fn_80028DA0
.global fn_80028DA8
.global fn_80028E14
.global fn_80028F54
.global fn_80029050
.global fn_80029084
.global fn_80029120
.global fn_8002917C
.global fn_800291DC
.global fn_80029300
.global fn_80029558
.global fn_80029784
.global fn_800298C8
.global fn_80029A10
.global fn_80029A30
.global fn_80029A50
.global fn_80029A94
.global fn_80029BF0
.global fn_80029D08
.global fn_8002A018
.global fn_8002A1E4
.global fn_8002A1F0
.global fn_8002A1F8
.global fn_8002A200
.global fn_8002A20C
.global fn_8002A218
.global fn_8002A2D8
.global fn_8002A398
.global fn_8002A478
.global fn_8002A504
.global fn_8002A55C
.global fn_8002A5A4
.global fn_8002A640
.global fn_8002A664
.global fn_8002A66C
.global fn_8002A740
.global fn_8002A7F0
.global fn_8002A81C
.global fn_8002A958
.global fn_8002A9A8
.global fn_8002AA14
.global fn_8002AAA0
.global fn_8002AAF8
.global fn_8002AC14
.global fn_8002ACD8
.global fn_8002AD9C
.global fn_8002AE34
.global fn_8002AE68
.global fn_8002AE78
.global fn_8002AEDC
.global fn_8002B18C
.global fn_8002B26C
.global fn_8002B6D4
.global fn_8002BC40
.global fn_8002BD78
.global fn_8002C19C
.global fn_8002C1AC
.global fn_8002C1E8
.global fn_8002C260
.global fn_8002C2B0
.global fn_8002C308
.global fn_8002C328
.global fn_8002C330
.global fn_8002C350
.global fn_8002C358
.global fn_8002C360
.global fn_8002C3EC
.global fn_8002C420
.global fn_8002C454
.global fn_8002C47C
.global fn_8002C4A4
.global fn_8002C4CC
.global fn_8002C54C
.global fn_8002C55C
.global fn_8002C588
.global fn_8002C598
.global fn_8002C5A8
.global fn_8002C630
.global fn_8002C6B4
.global fn_8002C790
.global fn_8002C874
.global fn_8002C880
.global fn_8002C95C
.global fn_8002CB9C
.global fn_8002CC10
.global fn_8002CD70
.global fn_8002CD80
.global fn_8002CDCC
.global fn_8002CDEC
.global fn_8002CE0C
.global fn_8002CE2C
.global fn_8002CE58
.global fn_8002CE60
.global fn_8002CE70
.global fn_8002CE98
.global fn_8002CF5C
.global fn_8002D0C8
.global fn_8002D104
.global fn_8002D1A4
.global fn_8002D1B0
.global fn_8002D1C0
.global fn_8002D1CC
.global fn_8002D1E0
.global fn_8002D330
.global fn_8002D348
.global fn_8002D374
.global fn_8002D3A0
.global fn_8002D3B8
.global fn_8002D3D8
.global fn_8002D404
.global fn_8002D410
.global fn_8002D434
.global fn_8002D48C
.global fn_8002D4C4
.global fn_8002D508
.global fn_8002D54C
.global fn_8002D554
.global fn_8002D574
.global fn_8002D604
.global fn_8002D634
.global fn_8002D6C8
.global fn_8002D718
.global fn_8002D758
.global fn_8002D78C
.global fn_8002D7BC
.global fn_8002D860
.global fn_8002D8BC
.global fn_8002D8D4
.global fn_8002D9D4
.global fn_8002DBB4
.global fn_8002DC74
.global fn_8002DCD0
.global fn_8002DD34
.global fn_8002DF5C
.global fn_8002E170
.global fn_8002E188
.global fn_8002E1A0
.global fn_8002E1B8
.global fn_8002E1D0
.global fn_8002E1E8
.global fn_8002E200
.global fn_8002E218
.global fn_8002E270
.global fn_8002E2E0
.global fn_8002E2F0
.global fn_8002E320
.global fn_8002E368
.global fn_8002E3C4
.global fn_8002E3D0
.global fn_8002E428
.global fn_8002E494
.global fn_8002E510
.global fn_8002E65C
.global fn_8002E6E8
.global fn_8002E718
.global fn_8002E728
.global fn_8002E74C
.global fn_8002E7A0
.global fn_8002E800
.global fn_8002E824
.global fn_8002E848
.global fn_8002E890
.global fn_8002E8A8
.global fn_8002E8B4
.global fn_8002E90C
.global fn_8002E96C
.global fn_8002EA3C
.global fn_8002EA60
.global fn_8002EB40
.global fn_8002EBAC
.global fn_8002EBDC
.global fn_8002EC34
.global fn_8002ECA8
.global fn_8002ED08
.global fn_8002EEC4
.global fn_8002EF54
.global fn_8002EFF4
.global fn_8002F0DC
.global fn_8002F0F0
.global fn_8002F114
.global fn_8002F15C
.global fn_8002F1A4
.global fn_8002F1E4
.global fn_8002F240
.global fn_8002F248
.global fn_8002F26C
.global fn_8002F274
.global fn_8002F294
.global fn_8002F34C
.global fn_8002FB90
.global fn_8003026C
.global fn_80030380
.global fn_80030394
.global fn_800303AC
.global fn_800303C4
.global fn_800303DC
.global fn_800303F4
.global fn_8003040C
.global fn_80030424
.global fn_8003043C
.global fn_80030454
.global fn_8003046C
.global fn_800304C4
.global fn_80030514
.global fn_80030570
.global fn_800306DC
.global fn_800306EC
.global fn_8003071C
.global fn_8003077C
.global fn_8003078C
.global fn_800307BC
.global fn_800307C4
.global fn_800307D0
.global fn_80030828
.global fn_80030960
.global fn_800309B8
.global fn_80030B64
.global fn_80030B78
.global fn_80030BD0
.global fn_80030C30
.global fn_80030CC0
.global fn_80030D1C
.global fn_80030DA8
.global fn_80030DCC
.global fn_80030E60
.global fn_80030E80
.global fn_80030EA4
.global fn_80030ED8
.global fn_80030EE0
.global fn_80030EE8
.global fn_80030EEC
.global fn_80030EF0
.global fn_80030EF8
.global fn_80030F58
.global fn_80030FD0
.global fn_80031074
.global fn_80031158
.global fn_800312B0
.global fn_80031358
.global fn_8003143C
.global fn_80031484
.global fn_80031750
.global fn_80031844
.global fn_8003189C
.global fn_8003192C
.global fn_80031A80
.global fn_80031B74
.global fn_80031C30
.global fn_80031C64
.global fn_80031C9C
.global fn_80031CE4
.global fn_80031D28
.global fn_80031D58
.global fn_80031E34
.global fn_80031E54
.global fn_80031EB4
.global fn_80031F0C
.global fn_800320D8
.global fn_800323A0
.global fn_800323C0
.global fn_8003241C
.global fn_80032458
.global fn_80032BAC
.global fn_80032D54
.global fn_80032F48
.global fn_80032FC0
.global fn_80033018
.global fn_80033058
.global fn_80033098
.global fn_800331CC
.global fn_800332D0
.global fn_80033338
.global fn_80033394
.global fn_800333D8
.global fn_800334D0
.global fn_800334F4
.global fn_80033504
.global fn_80033514
.global fn_8003353C
.global fn_800335CC
.global fn_8003363C
.global fn_80033730
.global fn_80033778
.global fn_80033984
.global fn_80033BAC
.global fn_80033C1C
.global fn_80033C48
.global fn_80033C74
.global fn_80033D80
.global fn_80033DBC
.global fn_80033EC8
.global fn_80033EE0
.global fn_80033FF0
.global fn_80034024
.global fn_80034070
.global fn_8003409C
.global fn_800340C4
.global fn_80034108
.global fn_80034148
.global fn_8003417C
.global fn_800341E4
.global fn_80034218
.global fn_80034254
.global fn_800342A0
.global fn_80034310
.global fn_80034390
.global fn_800343DC
.global fn_80034428
.global fn_80034460
.global fn_80034470
.global fn_800344A8
.global fn_800344E0
.global fn_80034534
.global fn_80034564
.global fn_80034574
.global fn_800345A0
.global fn_800345CC
.global fn_800345FC
.global fn_80034638
.global fn_80034654
.global fn_800346BC
.global fn_800346EC
.global fn_800346F4
.global fn_800346FC
.global fn_80034730
.global fn_8003477C
.global fn_800347C0
.global fn_800347DC
.global fn_800347F0
.global fn_80034804
.global fn_80034860
.global fn_800348BC
.global fn_80034938
.global fn_800349B4
.global fn_80034B2C
.global fn_80034B5C
.global fn_80034BD8
.global fn_80034CAC
.global fn_80034E3C
.global fn_80035050
.global fn_800350F8
.global fn_80035128
.global fn_80035158
.global fn_80035184
.global fn_800355BC
.global fn_80035F4C
.global fn_80035FA0
.global fn_80035FF8
.global fn_80036038
.global fn_8003607C
.global fn_800360E8
.global fn_8003611C
.global fn_80036188
.global fn_8003626C
.global fn_80036310
.global fn_80036420
.global fn_80036750
.global fn_800367C4
.global fn_800367D8
.global fn_800367F8
.global fn_80036848
.global fn_8003688C
.global fn_80036898
.global fn_80036BA8
.global fn_80036BD4
.global fn_80036CA8
.global fn_80037050
.global fn_80037060
.global fn_8003709C
.global fn_80037214
.global fn_8003744C
.global fn_800374C8
.global fn_8003750C
.global fn_80037578
.global fn_80037664
.global fn_80037804
.global fn_800378A0
.global fn_80037BC8
.global fn_80037C64
.global fn_80037C8C
.global fn_80037F1C
.global fn_80037F54
.global fn_80037F70
.global fn_80037FC8
.global fn_80038028
.global fn_8003807C
.global fn_800380A0
.global fn_800380C4
.global fn_80038128
.global fn_8003814C
.global fn_800383D4
.global fn_8003843C
.global fn_800385AC
.global fn_8003872C
.global fn_80038744
.global fn_8003875C
.global fn_80038774
.global fn_800388EC
.global fn_80038904
.global fn_80039060
.global fn_80039130
.global fn_80039154
.global fn_800391E0
.global fn_800392F4
.global fn_80039368
.global fn_800393D8
.global fn_80039454
.global fn_800394DC
.global fn_80039560
.global fn_80039578
.global fn_80039704
.global fn_8003975C
.global fn_800397D0
.global fn_80039830
.global fn_80039890
.global fn_800398E8
.global fn_80039940
.global fn_80039964
.global fn_800399B4
.global fn_800399D8
.global fn_800399FC
.global fn_80039A20
.global fn_80039A44
.global fn_80039A64
.global fn_80039A84
.global fn_80039ABC
.global fn_80039B18
.global fn_80039B24
.global pad_03_80039B7C_text
.global fn_80039B80
.global gap_03_80039BC8_text
.global fn_80039BE0
.global gap_03_80039BEC_text
.global fn_80039C00
.global gap_03_80039C64_text
.global fn_80039C80
.global gap_03_80039CA4_text
.global fn_80039CC0
.global gap_03_80039D08_text
.global fn_80039D20
.global gap_03_80039D58_text
.global fn_80039D60
.global gap_03_80039E0C_text
.global fn_80039E20
.global gap_03_80039F08_text
.global fn_80039F20
.global gap_03_80039F4C_text
.global fn_80039F60
.global gap_03_80039FA8_text
.global fn_80039FC0
.global gap_03_8003A028_text
.global fn_8003A040
.global fn_8003A0A0
.global gap_03_8003A11C_text
.global fn_8003A120
.global gap_03_8003A424_text
.global fn_8003A440
.global gap_03_8003A490_text
.global fn_8003A4A0
.global fn_8003A4E0
.global gap_03_8003A4F4_text
.global fn_8003A500
.global fn_8003A50C
.global fn_8003A528
.global fn_8003A570
.global fn_8003A5DC
.global fn_8003A5E4
.global fn_8003AA08
.global fn_8003AA54
.global fn_8003AA74
.global fn_8003AAD8
.global fn_8003AB38
.global fn_8003AB68
.global fn_8003AB8C
.global fn_8003ABB4
.global fn_8003ABDC
.global fn_8003AC08
.global fn_8003AC34
.global fn_8003AC64
.global fn_8003AC9C
.global fn_8003ACC4
.global fn_8003ACE8
.global fn_8003AD0C
.global dtor_8003AD30
.global fn_8003AD90
.global dtor_8003AE9C
.global fn_8003AF0C
.global fn_8003AF6C
.global fn_8003B0B0
.global fn_8003B0D4
.global fn_8003B288
.global fn_8003B2A8
.global fn_8003B2CC
.global fn_8003B2D0
.global fn_8003B320
.global fn_8003B32C
.global fn_8003B400
.global fn_8003B458
.global fn_8003B5FC
.global fn_8003B620
.global fn_8003B6A8
.global fn_8003B85C
.global fn_8003B8AC
.global fn_8003B8D4
.global fn_8003B8E0
.global fn_8003B940
.global fn_8003B9C0
.global fn_8003BA20
.global fn_8003BA54
.global fn_8003BA9C
.global fn_8003BAA4
.global fn_8003BC0C
.global fn_8003BC74
.global fn_8003BC98
.global fn_8003BDF4
.global fn_8003BEC8
.global fn_8003BF64
.global fn_8003BFC8
.global fn_8003C0D0
.global fn_8003C110
.global fn_8003C150
.global fn_8003C190
.global fn_8003C30C
.global fn_8003C358
.global fn_8003C484
.global fn_8003C5CC
.global fn_8003C618
.global fn_8003C794
.global fn_8003C7A0
.global fn_8003C7EC
.global fn_8003C7F8
.global fn_8003C820
.global fn_8003C878
.global fn_8003C8D8
.global fn_8003C984
.global fn_8003CAB0
.global fn_8003CB40
.global fn_8003CBC0
.global fn_8003CBC8
.global fn_8003CE04
.global fn_8003CE20
.global fn_8003CF84
.global fn_8003CFC0
.global fn_8003D03C
.global fn_8003D200
.global fn_8003D260
.global fn_8003D264
.global fn_8003D488
.global fn_8003D4DC
.global fn_8003D530
.global fn_8003D584
.global fn_8003D5D8
.global fn_8003D65C
.global fn_8003D728
.global fn_8003D7F4
.global fn_8003D990
.global fn_8003DA30
.global fn_8003DB58
.global fn_8003DBC0
.global fn_8003DC90
.global fn_8003DD3C
.global fn_8003DDA4
.global fn_8003DE70
.global fn_8003DF84
.global fn_8003E074
.global fn_8003E188
.global fn_8003E2BC
.global fn_8003E3A4
.global fn_8003E3FC
.global fn_8003E45C
.global fn_8003E4F8
.global fn_8003E6F8
.global fn_8003E804
.global fn_8003E80C
.global fn_8003E818
.global fn_8003E94C
.global fn_8003E9FC
.global fn_8003EA04
.global fn_8003EBD4
.global fn_8003EC34
.global fn_8003EC5C
.global fn_8003EC9C
.global fn_8003ECBC
.global fn_8003ECE4
.global fn_8003ED08
.global fn_8003EE14
.global fn_8003EE1C
.global fn_8003EE24
.global fn_8003EE2C
.global fn_8003EE34
.global dtor_8003EEE0
.global fn_8003EF58
.global fn_8003F004
.global fn_8003F00C
.global fn_8003F03C
.global fn_8003F110
.global fn_8003F184
.global fn_8003F290
.global fn_8003F37C
.global fn_8003F3C8
.global fn_8003F4A8
.global fn_8003F504

fn_80021840:
    li 3, 0x0
    blr

fn_80021848:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2140@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2140@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021898
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
L_80021898:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800218D0
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
L_800218D0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021908
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
L_80021908:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021940
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
L_80021940:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021978
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
L_80021978:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800219B0
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
L_800219B0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800219E8
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
L_800219E8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021A20
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
L_80021A20:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021A58
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
L_80021A58:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021A6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021AA4
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021AA4
    mr 3, 30
    bl dtor_80084580
L_80021AA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021AC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021AF8
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021AF8
    mr 3, 30
    bl dtor_80084580
L_80021AF8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021B14:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021B4C
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021B4C
    mr 3, 30
    bl dtor_80084580
L_80021B4C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021B68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021BA0
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021BA0
    mr 3, 30
    bl dtor_80084580
L_80021BA0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021BBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021BF4
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021BF4
    mr 3, 30
    bl dtor_80084580
L_80021BF4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021C10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021C48
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021C48
    mr 3, 30
    bl dtor_80084580
L_80021C48:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021C64:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021C9C
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021C9C
    mr 3, 30
    bl dtor_80084580
L_80021C9C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021CB8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021CF0
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021CF0
    mr 3, 30
    bl dtor_80084580
L_80021CF0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021D0C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_80021D44
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80021D44
    mr 3, 30
    bl dtor_80084580
L_80021D44:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021D60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80021D90
    lis 5, lbl_804916A0@ha
    extsh. 0, 4
    addi 0, 5, lbl_804916A0@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80021D90
    bl dtor_80084580
L_80021D90:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021DA8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2240@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2240@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021DF8
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
L_80021DF8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021E30
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
L_80021E30:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021E68
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
L_80021E68:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021EA0
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80021EA0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021ED8
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80021ED8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80021F10
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80021F10:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80021F24:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    mr 4, 28
    bl fn_80086E2C
    addi 3, 28, 0x10
    bl fn_80025574
    lis 3, lbl_804916C0@ha
    .4byte 0xC0428000 # lfs f2, lbl_8053AFA0@sda21(r0)
    addi 3, 3, lbl_804916C0@l
    .4byte 0xC0228004 # lfs f1, lbl_8053AFA4@sda21(r0)
    stw 3, 0xa8(28)
    addi 0, 3, 0x8
    .4byte 0xC0028008 # lfs f0, lbl_8053AFA8@sda21(r0)
    addi 3, 28, 0xc8
    stw 0, 0x10(28)
    stfs 2, 0xb4(28)
    stfs 2, 0xbc(28)
    stfs 1, 0xb8(28)
    stfs 0, 0xc0(28)
    stfs 1, 0xc4(28)
    bl fn_80036188
    li 0, 0x0
    .4byte 0xC0228000 # lfs f1, lbl_8053AFA0@sda21(r0)
    stw 0, 0x318(28)
    mr 3, 28
    .4byte 0xC0028004 # lfs f0, lbl_8053AFA4@sda21(r0)
    stw 0, 0x31c(28)
    stfs 1, 0x330(28)
    stfs 0, 0x334(28)
    stw 0, 0x33c(28)
    stfs 0, 0x338(28)
    stw 30, 0x328(28)
    stw 29, 0x324(28)
    stw 31, 0xac(28)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80021FF0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 26, 0x28(1)
    mr 29, 3
    mr 26, 4
    mr 30, 5
    mr 31, 6
    lfs 1, 0x330(3)
    addi 3, 29, 0xc8
    bl fn_80038744
    .4byte 0xC0428000 # lfs f2, lbl_8053AFA0@sda21(r0)
    mr 4, 30
    .4byte 0xC0228004 # lfs f1, lbl_8053AFA4@sda21(r0)
    addi 3, 29, 0x4c
    .4byte 0xC0028008 # lfs f0, lbl_8053AFA8@sda21(r0)
    addi 5, 1, 0x8
    stfs 2, 0x8(1)
    stfs 2, 0x10(1)
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    lfs 1, 0x34(29)
    bl fn_800254FC
    lwz 3, 0x32c(29)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80022074
    lwz 12, 0x0(3)
    mr 4, 29
    addi 5, 1, 0x8
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80022074:
    lwz 0, 0x18(29)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_800220D0
    lwz 3, 0x1c(29)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 28, 3
    li 27, 0x0
    .4byte 0x48000028 # b .L_800220C4
L_800220A0:
    lwz 3, 0x1c(29)
    mr 6, 27
    addi 4, 1, 0x8
    lwz 5, 0x18(29)
    lwz 12, 0x0(3)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
L_800220C4:
    cmpw 27, 28
    .4byte 0x4180FFD8 # blt .L_800220A0
    .4byte 0x4800002C # b .L_800220F8
L_800220D0:
    lfs 0, 0x8(1)
    stfs 0, 0xb4(29)
    lfs 0, 0xc(1)
    stfs 0, 0xb8(29)
    lfs 0, 0x10(1)
    stfs 0, 0xbc(29)
    lfs 0, 0x14(1)
    stfs 0, 0xc0(29)
    lfs 0, 0x18(1)
    stfs 0, 0xc4(29)
L_800220F8:
    lbz 3, 0x2f(29)
    li 4, 0x0
    extrwi. 0, 3, 1, 24
    .4byte 0x4182002C # beq .L_80022130
    extrwi. 0, 3, 1, 28
    .4byte 0x41820020 # beq .L_8002212C
    lwz 0, 0x40(29)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80022130
    lfs 1, 0x34(29)
    .4byte 0xC002800C # lfs f0, lbl_8053AFAC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80022130
L_8002212C:
    li 4, 0x1
L_80022130:
    clrlwi. 0, 4, 24
    .4byte 0x41820028 # beq .L_8002215C
    lwz 0, 0x308(29)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_80022150
    .4byte 0x40800264 # bge .L_800223A8
    .4byte 0x48000260 # b .L_800223A8
    .4byte 0x4800025C # b .L_800223A8
L_80022150:
    addi 3, 29, 0xc8
    bl fn_80036848
    .4byte 0x48000250 # b .L_800223A8
L_8002215C:
    clrlwi. 0, 26, 24
    .4byte 0x418201C0 # beq .L_80022320
    lbz 0, 0x2e(29)
    cmplwi 0, 0x5
    .4byte 0x4082023C # bne .L_800223A8
    lbz 0, 0x320(29)
    cmplwi 0, 0x0
    .4byte 0x41820124 # beq .L_8002229C
    lwz 3, 0x308(29)
    cmpwi 3, 0x2
    .4byte 0x41820014 # beq .L_80022198
    .4byte 0x40800220 # bge .L_800223A8
    cmpwi 3, 0x1
    .4byte 0x408000B8 # bge .L_80022248
    .4byte 0x48000214 # b .L_800223A8
L_80022198:
    lbz 0, 0x2d(29)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820084 # beq .L_80022224
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_800221B4
    addi 3, 29, 0xc8
    bl fn_80036420
L_800221B4:
    lwz 0, 0x18(29)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_800221D0
    addi 3, 29, 0x10
    addi 4, 29, 0xc8
    bl fn_80025BCC
    .4byte 0x48000034 # b .L_80022200
L_800221D0:
    lfs 1, 0x34(29)
    mr 4, 30
    addi 3, 29, 0x4c
    addi 5, 29, 0xb4
    bl fn_800254FC
    addi 3, 29, 0xc8
    li 4, 0x1
    bl fn_80036310
    addi 3, 29, 0xc8
    addi 5, 29, 0xb4
    li 4, 0x0
    bl fn_800367C4
L_80022200:
    li 0, 0x1
    addi 3, 29, 0xc8
    stb 0, 0x320(29)
    lwz 4, 0x318(29)
    lwz 5, 0x31c(29)
    bl fn_800367D8
    addi 3, 29, 0xc8
    bl fn_800367F8
    .4byte 0x48000188 # b .L_800223A8
L_80022224:
    lbz 0, 0x2f(29)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    li 3, 0x1
    stb 0, 0x2f(29)
    lbz 0, 0x2f(29)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x2f(29)
    .4byte 0x48000164 # b .L_800223A8
L_80022248:
    lbz 0, 0x2c(29)
    addi 3, 29, 0xc8
    li 4, 0x0
    extrwi. 0, 0, 1, 25
    .4byte 0x40820010 # bne .L_80022268
    lbz 0, 0x0(31)
    extrwi. 0, 0, 1, 25
    .4byte 0x41820008 # beq .L_8002226C
L_80022268:
    li 4, 0x1
L_8002226C:
    bl fn_800383D4
    lbz 0, 0x2c(29)
    addi 3, 29, 0xc8
    li 4, 0x0
    extrwi. 0, 0, 1, 24
    .4byte 0x40820010 # bne .L_80022290
    lbz 0, 0x0(31)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820008 # beq .L_80022294
L_80022290:
    li 4, 0x1
L_80022294:
    bl fn_80037F1C
    .4byte 0x48000110 # b .L_800223A8
L_8002229C:
    lwz 0, 0x308(29)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_800222B0
    addi 3, 29, 0xc8
    bl fn_80036420
L_800222B0:
    lwz 0, 0x18(29)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_800222CC
    addi 3, 29, 0x10
    addi 4, 29, 0xc8
    bl fn_80025BCC
    .4byte 0x48000034 # b .L_800222FC
L_800222CC:
    lfs 1, 0x34(29)
    mr 4, 30
    addi 3, 29, 0x4c
    addi 5, 29, 0xb4
    bl fn_800254FC
    addi 3, 29, 0xc8
    li 4, 0x1
    bl fn_80036310
    addi 3, 29, 0xc8
    addi 5, 29, 0xb4
    li 4, 0x0
    bl fn_800367C4
L_800222FC:
    li 0, 0x1
    addi 3, 29, 0xc8
    stb 0, 0x320(29)
    lwz 4, 0x318(29)
    lwz 5, 0x31c(29)
    bl fn_800367D8
    addi 3, 29, 0xc8
    bl fn_800367F8
    .4byte 0x4800008C # b .L_800223A8
L_80022320:
    lbz 3, 0x2d(29)
    extrwi. 0, 3, 1, 24
    .4byte 0x41820040 # beq .L_80022368
    extrwi. 0, 3, 1, 26
    .4byte 0x41820014 # beq .L_80022344
    addi 3, 29, 0xc8
    li 4, 0x1
    bl fn_800383D4
    .4byte 0x48000068 # b .L_800223A8
L_80022344:
    lwz 0, 0x308(29)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_8002235C
    .4byte 0x40800058 # bge .L_800223A8
    .4byte 0x48000054 # b .L_800223A8
    .4byte 0x48000050 # b .L_800223A8
L_8002235C:
    addi 3, 29, 0xc8
    bl fn_80036848
    .4byte 0x48000044 # b .L_800223A8
L_80022368:
    lwz 0, 0x308(29)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_80022380
    .4byte 0x40800014 # bge .L_80022388
    .4byte 0x48000010 # b .L_80022388
    .4byte 0x4800000C # b .L_80022388
L_80022380:
    addi 3, 29, 0xc8
    bl fn_80036848
L_80022388:
    lbz 0, 0x2f(29)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    li 3, 0x1
    stb 0, 0x2f(29)
    lbz 0, 0x2f(29)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x2f(29)
L_800223A8:
    lmw 26, 0x28(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_800223BC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_800225DC
    addi 3, 31, 0x10
    bl fn_800258A8
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_8002243C
    lwz 3, 0x33c(31)
    lfs 1, 0x330(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80022408
    subi 0, 3, 0x1
    stw 0, 0x33c(31)
    lfs 0, 0x334(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80022418
L_80022408:
    .4byte 0x40820010 # bne .L_80022418
    li 0, 0x0
    stw 0, 0x33c(31)
    lfs 1, 0x338(31)
L_80022418:
    stfs 1, 0x330(31)
    lwz 3, 0x32c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8002243C
    lwz 12, 0x0(3)
    mr 4, 31
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_8002243C:
    lbz 3, 0x2f(31)
    li 4, 0x0
    extrwi. 0, 3, 1, 24
    .4byte 0x4182002C # beq .L_80022474
    extrwi. 0, 3, 1, 28
    .4byte 0x41820020 # beq .L_80022470
    lwz 0, 0x40(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80022474
    lfs 1, 0x34(31)
    .4byte 0xC002800C # lfs f0, lbl_8053AFAC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80022474
L_80022470:
    li 4, 0x1
L_80022474:
    clrlwi. 0, 4, 24
    .4byte 0x40820014 # bne .L_8002248C
    lwz 3, 0x44(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x40820010 # bne .L_80022498
L_8002248C:
    li 0, -0x1
    stw 0, 0xb0(31)
    .4byte 0x48000010 # b .L_800224A4
L_80022498:
    lwz 0, 0xac(31)
    add 0, 0, 3
    stw 0, 0xb0(31)
L_800224A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800224B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x308(3)
    cmpwi 0, 0x1
    .4byte 0x41820054 # beq .L_80022528
    .4byte 0x40800010 # bge .L_800224E8
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_800224F0
    .4byte 0x48000044 # b .L_80022528
L_800224E8:
    cmpwi 0, 0x3
    .4byte 0x4080003C # bge .L_80022528
L_800224F0:
    lwz 4, 0x32c(31)
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_80022518
    lwz 3, 0x328(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x32c(31)
L_80022518:
    addi 3, 31, 0x10
    bl fn_800257D4
    li 3, 0x1
    .4byte 0x48000008 # b .L_8002252C
L_80022528:
    li 3, 0x0
L_8002252C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80022540:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x0(4)
    stw 31, 0x1c(1)
    mr 31, 4
    addi 4, 1, 0xc
    stw 30, 0x18(1)
    mr 30, 3
    addi 3, 30, 0x10
    stw 0, 0xc(1)
    bl fn_800255A4
    li 3, 0x0
    stb 3, 0x320(30)
    lwz 0, 0x328(30)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_800225AC
    lwz 0, 0x0(31)
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 3, 0x328(30)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    stw 3, 0x32c(30)
    .4byte 0x48000008 # b .L_800225B0
L_800225AC:
    stw 3, 0x32c(30)
L_800225B0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800225C8:
    li 3, 0x0
    blr

fn_800225D0:
    li 3, 0x0
    blr

fn_800225D8:
    blr

fn_800225DC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0x2e(3)
    cmpwi 0, 0x3
    .4byte 0x41820178 # beq .L_80022770
    .4byte 0x4080001C # bge .L_80022618
    cmpwi 0, 0x1
    .4byte 0x418200D8 # beq .L_800226DC
    .4byte 0x40800024 # bge .L_8002262C
    cmpwi 0, 0x0
    .4byte 0x40800040 # bge .L_80022650
    .4byte 0x4800015C # b .L_80022770
L_80022618:
    cmpwi 0, 0x7
    .4byte 0x40800154 # bge .L_80022770
    cmpwi 0, 0x5
    .4byte 0x4080014C # bge .L_80022770
    .4byte 0x48000140 # b .L_80022768
L_8002262C:
    lbz 0, 0x2f(31)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    li 3, 0x1
    stb 0, 0x2f(31)
    lbz 0, 0x2f(31)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x2f(31)
    .4byte 0x48000124 # b .L_80022770
L_80022650:
    lwz 0, 0x28(31)
    addi 4, 1, 0xc
    addi 5, 31, 0x318
    stw 0, 0xc(1)
    lwz 3, 0x324(31)
    lwz 3, 0xc(3)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x1
    .4byte 0x41820030 # beq .L_800226AC
    .4byte 0x40800010 # bge .L_80022690
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_8002269C
    .4byte 0x48000038 # b .L_800226C4
L_80022690:
    cmpwi 3, 0x3
    .4byte 0x40800030 # bge .L_800226C4
    .4byte 0x48000024 # b .L_800226BC
L_8002269C:
    li 0, 0x2
    li 3, 0x0
    stb 0, 0x2e(31)
    .4byte 0x48000020 # b .L_800226C8
L_800226AC:
    addi 3, 31, 0x10
    bl fn_8002585C
    li 3, 0x0
    .4byte 0x48000010 # b .L_800226C8
L_800226BC:
    li 3, 0x1
    .4byte 0x48000008 # b .L_800226C8
L_800226C4:
    li 3, 0x0
L_800226C8:
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_80022770
    li 0, 0x5
    stb 0, 0x2e(31)
    .4byte 0x48000098 # b .L_80022770
L_800226DC:
    lwz 0, 0x28(31)
    addi 4, 1, 0x8
    addi 5, 31, 0x318
    stw 0, 0x8(1)
    lwz 3, 0x324(31)
    lwz 3, 0xc(3)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x1
    .4byte 0x41820030 # beq .L_80022738
    .4byte 0x40800010 # bge .L_8002271C
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_80022728
    .4byte 0x48000038 # b .L_80022750
L_8002271C:
    cmpwi 3, 0x3
    .4byte 0x40800030 # bge .L_80022750
    .4byte 0x48000024 # b .L_80022748
L_80022728:
    li 0, 0x2
    li 3, 0x0
    stb 0, 0x2e(31)
    .4byte 0x48000020 # b .L_80022754
L_80022738:
    addi 3, 31, 0x10
    bl fn_8002585C
    li 3, 0x0
    .4byte 0x48000010 # b .L_80022754
L_80022748:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80022754
L_80022750:
    li 3, 0x0
L_80022754:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80022770
    li 0, 0x3
    stb 0, 0x2e(31)
    .4byte 0x4800000C # b .L_80022770
L_80022768:
    li 0, 0x5
    stb 0, 0x2e(31)
L_80022770:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80022784:
    addi 3, 3, 0xc8
    blr

fn_8002278C:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 3, 0x1f8(3)
    blr

fn_8002279C:
    blr

fn_800227A0:
    addi 3, 3, 0x330
    blr

fn_800227A8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2288@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2288@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800227F8
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
L_800227F8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80022830
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
L_80022830:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80022868
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
L_80022868:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800228A0
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_800228A0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800228B4:
    subi 3, 3, 0x10
    b fn_800224B8

fn_800228BC:
    subi 3, 3, 0x10
    b fn_800227A0

fn_800228C4:
    subi 3, 3, 0x10
    b fn_8002278C

fn_800228CC:
    subi 3, 3, 0x10
    b fn_80022784

fn_800228D4:
    subi 3, 3, 0x10
    b fn_8002279C

fn_800228DC:
    subi 3, 3, 0x10
    b fn_800225D8

fn_800228E4:
    subi 3, 3, 0x10
    b fn_800225D0

fn_800228EC:
    subi 3, 3, 0x10
    b fn_800225C8

fn_800228F4:
    lwz 6, 0x0(4)
    lwz 0, 0x4(4)
    lwz 7, 0x58(3)
    add 3, 6, 0
    .4byte 0x4800004C # b .L_80022950
L_80022908:
    lwz 4, 0x0(7)
    lwz 5, 0x318(4)
    cmplw 3, 5
    .4byte 0x4080000C # bge .L_80022920
    li 0, 0x0
    .4byte 0x48000020 # b .L_8002293C
L_80022920:
    lwz 0, 0x31c(4)
    add 0, 5, 0
    cmplw 0, 6
    .4byte 0x4080000C # bge .L_80022938
    li 0, 0x0
    .4byte 0x48000008 # b .L_8002293C
L_80022938:
    li 0, 0x1
L_8002293C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8002294C
    li 3, 0x1
    blr
L_8002294C:
    lwz 7, 0xc(7)
L_80022950:
    cmplwi 7, 0x0
    .4byte 0x4082FFB4 # bne .L_80022908
    li 3, 0x0
    blr

fn_80022960:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x24(1)
    lwz 0, 0x4(4)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    lwz 30, 0x0(4)
    stw 29, 0x14(1)
    add 31, 30, 0
    lwz 29, 0x58(3)
    .4byte 0x48000050 # b .L_800229DC
L_80022990:
    lwz 4, 0x0(29)
    lwz 3, 0x318(4)
    cmplw 31, 3
    .4byte 0x4080000C # bge .L_800229A8
    li 0, 0x0
    .4byte 0x48000020 # b .L_800229C4
L_800229A8:
    lwz 0, 0x31c(4)
    add 0, 3, 0
    cmplw 0, 30
    .4byte 0x4080000C # bge .L_800229C0
    li 0, 0x0
    .4byte 0x48000008 # b .L_800229C4
L_800229C0:
    li 0, 0x1
L_800229C4:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_800229D8
    addi 3, 4, 0x10
    bl fn_80025784
    li 5, 0x1
L_800229D8:
    lwz 29, 0xc(29)
L_800229DC:
    cmplwi 29, 0x0
    .4byte 0x4082FFB0 # bne .L_80022990
    clrlwi. 0, 5, 24
    li 3, 0x2
    .4byte 0x41820008 # beq .L_800229F4
    li 3, 0x1
L_800229F4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80022A10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x24(3)
    lfs 1, 0x8(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80022A4C
    subi 0, 3, 0x1
    stw 0, 0x24(30)
    lfs 0, 0x1c(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80022A5C
L_80022A4C:
    .4byte 0x40820010 # bne .L_80022A5C
    li 0, 0x0
    stw 0, 0x24(30)
    lfs 1, 0x20(30)
L_80022A5C:
    stfs 1, 0x8(30)
    lwz 3, 0x30(30)
    lfs 1, 0x10(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80022A84
    subi 0, 3, 0x1
    stw 0, 0x30(30)
    lfs 0, 0x28(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80022A94
L_80022A84:
    .4byte 0x40820010 # bne .L_80022A94
    li 0, 0x0
    stw 0, 0x30(30)
    lfs 1, 0x2c(30)
L_80022A94:
    stfs 1, 0x10(30)
    lwz 3, 0x3c(30)
    lfs 1, 0xc(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80022ABC
    subi 0, 3, 0x1
    stw 0, 0x3c(30)
    lfs 0, 0x34(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80022ACC
L_80022ABC:
    .4byte 0x40820010 # bne .L_80022ACC
    li 0, 0x0
    stw 0, 0x3c(30)
    lfs 1, 0x38(30)
L_80022ACC:
    stfs 1, 0xc(30)
    lwz 3, 0x54(30)
    lfs 1, 0x18(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80022AF4
    subi 0, 3, 0x1
    stw 0, 0x54(30)
    lfs 0, 0x4c(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80022B04
L_80022AF4:
    .4byte 0x40820010 # bne .L_80022B04
    li 0, 0x0
    stw 0, 0x54(30)
    lfs 1, 0x50(30)
L_80022B04:
    stfs 1, 0x18(30)
    lwz 3, 0x48(30)
    lfs 1, 0x14(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80022B2C
    subi 0, 3, 0x1
    stw 0, 0x48(30)
    lfs 0, 0x40(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80022B3C
L_80022B2C:
    .4byte 0x40820010 # bne .L_80022B3C
    li 0, 0x0
    stw 0, 0x48(30)
    lfs 1, 0x44(30)
L_80022B3C:
    stfs 1, 0x14(30)
    lwz 31, 0x58(30)
    .4byte 0x48000010 # b .L_80022B54
L_80022B48:
    lwz 3, 0x0(31)
    bl fn_800223BC
    lwz 31, 0xc(31)
L_80022B54:
    cmplwi 31, 0x0
    .4byte 0x4082FFF0 # bne .L_80022B48
    mr 3, 30
    bl fn_80022B7C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80022B7C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 31, 0x60(3)
    .4byte 0x48000064 # b .L_80022C00
L_80022BA0:
    lwz 4, 0x58(29)
    subi 0, 31, 0x1
    lwz 3, 0x0(4)
    mr 30, 4
    lwz 5, 0xc(4)
    lwz 4, 0xb0(3)
    mtctr 0
    cmplwi 31, 0x1
    .4byte 0x40810024 # ble .L_80022BE4
L_80022BC4:
    lwz 3, 0x0(5)
    lwz 0, 0xb0(3)
    cmplw 0, 4
    .4byte 0x4080000C # bge .L_80022BDC
    mr 4, 0
    mr 30, 5
L_80022BDC:
    lwz 5, 0xc(5)
    .4byte 0x4200FFE4 # bdnz .L_80022BC4
L_80022BE4:
    mr 4, 30
    addi 3, 29, 0x58
    bl fn_80087298
    mr 4, 30
    addi 3, 29, 0x58
    bl fn_80086F58
    subi 31, 31, 0x1
L_80022C00:
    cmplwi 31, 0x0
    .4byte 0x4082FF9C # bne .L_80022BA0
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80022C24:
    lwz 5, 0x58(3)
    clrlwi 4, 4, 24
    .4byte 0x48000018 # b .L_80022C44
L_80022C30:
    lwz 3, 0x0(5)
    lbz 0, 0x2c(3)
    rlwimi 0, 4, 6, 25, 25
    stb 0, 0x2c(3)
    lwz 5, 0xc(5)
L_80022C44:
    cmplwi 5, 0x0
    .4byte 0x4082FFE8 # bne .L_80022C30
    blr

fn_80022C50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x41820008 # beq .L_80022C70
    .4byte 0x93ED86DC # stw r31, lbl_8053A29C@sda21(r0)
L_80022C70:
    lis 4, lbl_804917A8@ha
    lis 3, lbl_80491718@ha
    addi 0, 4, lbl_804917A8@l
    li 6, 0x6c
    stw 0, 0x0(31)
    addi 0, 3, lbl_80491718@l
    lis 4, fn_80022DBC@ha
    lis 3, fn_80022D44@ha
    stw 0, 0x0(31)
    addi 5, 3, fn_80022D44@l
    addi 4, 4, fn_80022DBC@l
    addi 3, 31, 0x14
    li 7, 0x10
    bl __construct_array
    .4byte 0xC0428014 # lfs f2, lbl_8053AFB4@sda21(r0)
    li 0, 0x0
    .4byte 0xC0228018 # lfs f1, lbl_8053AFB8@sda21(r0)
    mr 3, 31
    stfs 2, 0x6d4(31)
    .4byte 0xC002801C # lfs f0, lbl_8053AFBC@sda21(r0)
    stfs 2, 0x6dc(31)
    stfs 1, 0x6d8(31)
    stfs 0, 0x6e0(31)
    stfs 1, 0x6e4(31)
    stw 0, 0x8(31)
    stw 0, 0xc(31)
    stw 0, 0x10(31)
    stfs 2, 0x6d4(31)
    stfs 2, 0x6dc(31)
    stfs 1, 0x6d8(31)
    stfs 0, 0x6e0(31)
    stfs 1, 0x6e4(31)
    stfs 1, 0x6e8(31)
    stw 0, 0x6f0(31)
    stfs 1, 0x6ec(31)
    stfs 1, 0x6f4(31)
    stw 0, 0x6fc(31)
    stfs 1, 0x6f8(31)
    stfs 1, 0x700(31)
    stw 0, 0x708(31)
    stfs 1, 0x704(31)
    stfs 1, 0x70c(31)
    stw 0, 0x714(31)
    stfs 1, 0x710(31)
    stfs 1, 0x718(31)
    stw 0, 0x720(31)
    stfs 1, 0x71c(31)
    stb 0, 0x4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80022D44:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820040 # beq .L_80022DA0
    lis 3, lbl_8049172C@ha
    addic. 0, 30, 0x58
    addi 0, 3, lbl_8049172C@l
    stw 0, 0x0(30)
    .4byte 0x41820010 # beq .L_80022D84
    addi 3, 30, 0x58
    li 4, 0x0
    bl fn_80086EDC
L_80022D84:
    mr 3, 30
    li 4, 0x0
    bl fn_80024B50
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80022DA0
    mr 3, 30
    bl dtor_80084580
L_80022DA0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80022DBC:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804917A8@ha
    .4byte 0xC0428014 # lfs f2, lbl_8053AFB4@sda21(r0)
    stw 0, 0x14(1)
    addi 0, 4, lbl_804917A8@l
    .4byte 0xC0228018 # lfs f1, lbl_8053AFB8@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_8049172C@ha
    .4byte 0xC002801C # lfs f0, lbl_8053AFBC@sda21(r0)
    stw 0, 0x0(31)
    addi 0, 3, lbl_8049172C@l
    addi 3, 31, 0x58
    stw 0, 0x0(31)
    stfs 2, 0x8(31)
    stfs 2, 0x10(31)
    stfs 1, 0xc(31)
    stfs 0, 0x14(31)
    stfs 1, 0x18(31)
    bl fn_80086F44
    .4byte 0xC0428014 # lfs f2, lbl_8053AFB4@sda21(r0)
    li 0, 0x0
    .4byte 0xC0228018 # lfs f1, lbl_8053AFB8@sda21(r0)
    mr 3, 31
    stfs 2, 0x8(31)
    .4byte 0xC002801C # lfs f0, lbl_8053AFBC@sda21(r0)
    stfs 2, 0x10(31)
    stfs 1, 0xc(31)
    stfs 0, 0x14(31)
    stfs 1, 0x18(31)
    stfs 1, 0x1c(31)
    stw 0, 0x24(31)
    stfs 1, 0x20(31)
    stfs 1, 0x28(31)
    stw 0, 0x30(31)
    stfs 1, 0x2c(31)
    stfs 1, 0x34(31)
    stw 0, 0x3c(31)
    stfs 1, 0x38(31)
    stfs 1, 0x40(31)
    stw 0, 0x48(31)
    stfs 1, 0x44(31)
    stfs 1, 0x4c(31)
    stw 0, 0x54(31)
    stfs 1, 0x50(31)
    stw 0, 0x68(31)
    stw 0, 0x64(31)
    stw 0, 0x4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80022E94:
    lwz 8, 0x0(4)
    li 0, 0x8
    lwz 4, 0x4(4)
    li 9, 0x0
    add 4, 8, 4
    mtctr 0
L_80022EAC:
    lwz 6, 0x6c(3)
    .4byte 0x4800004C # b .L_80022EFC
L_80022EB4:
    lwz 5, 0x0(6)
    lwz 7, 0x318(5)
    cmplw 4, 7
    .4byte 0x4080000C # bge .L_80022ECC
    li 0, 0x0
    .4byte 0x48000020 # b .L_80022EE8
L_80022ECC:
    lwz 0, 0x31c(5)
    add 0, 7, 0
    cmplw 0, 8
    .4byte 0x4080000C # bge .L_80022EE4
    li 0, 0x0
    .4byte 0x48000008 # b .L_80022EE8
L_80022EE4:
    li 0, 0x1
L_80022EE8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80022EF8
    li 0, 0x1
    .4byte 0x48000014 # b .L_80022F08
L_80022EF8:
    lwz 6, 0xc(6)
L_80022EFC:
    cmplwi 6, 0x0
    .4byte 0x4082FFB4 # bne .L_80022EB4
    li 0, 0x0
L_80022F08:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80022F18
    li 3, 0x1
    blr
L_80022F18:
    lwz 6, 0xd8(3)
    .4byte 0x4800004C # b .L_80022F68
L_80022F20:
    lwz 5, 0x0(6)
    lwz 7, 0x318(5)
    cmplw 4, 7
    .4byte 0x4080000C # bge .L_80022F38
    li 0, 0x0
    .4byte 0x48000020 # b .L_80022F54
L_80022F38:
    lwz 0, 0x31c(5)
    add 0, 7, 0
    cmplw 0, 8
    .4byte 0x4080000C # bge .L_80022F50
    li 0, 0x0
    .4byte 0x48000008 # b .L_80022F54
L_80022F50:
    li 0, 0x1
L_80022F54:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80022F64
    li 0, 0x1
    .4byte 0x48000014 # b .L_80022F74
L_80022F64:
    lwz 6, 0xc(6)
L_80022F68:
    cmplwi 6, 0x0
    .4byte 0x4082FFB4 # bne .L_80022F20
    li 0, 0x0
L_80022F74:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80022F84
    li 3, 0x1
    blr
L_80022F84:
    addi 3, 3, 0xd8
    addi 9, 9, 0x1
    .4byte 0x4200FF20 # bdnz .L_80022EAC
    li 3, 0x0
    blr

fn_80022F98:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x4(4)
    stmw 26, 0x8(1)
    mr 29, 3
    lwz 28, 0x0(4)
    li 27, 0x0
    li 26, 0x0
    add 31, 28, 0
L_80022FC0:
    lwz 30, 0x6c(29)
    li 3, 0x0
    .4byte 0x48000050 # b .L_80023018
L_80022FCC:
    lwz 5, 0x0(30)
    lwz 4, 0x318(5)
    cmplw 31, 4
    .4byte 0x4080000C # bge .L_80022FE4
    li 0, 0x0
    .4byte 0x48000020 # b .L_80023000
L_80022FE4:
    lwz 0, 0x31c(5)
    add 0, 4, 0
    cmplw 0, 28
    .4byte 0x4080000C # bge .L_80022FFC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80023000
L_80022FFC:
    li 0, 0x1
L_80023000:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_80023014
    addi 3, 5, 0x10
    bl fn_80025784
    li 3, 0x1
L_80023014:
    lwz 30, 0xc(30)
L_80023018:
    cmplwi 30, 0x0
    .4byte 0x4082FFB0 # bne .L_80022FCC
    clrlwi. 0, 3, 24
    li 3, 0x2
    .4byte 0x41820008 # beq .L_80023030
    li 3, 0x1
L_80023030:
    cmpwi 3, 0x1
    .4byte 0x4182001C # beq .L_80023050
    .4byte 0x4080001C # bge .L_80023054
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_80023048
    .4byte 0x48000010 # b .L_80023054
L_80023048:
    li 3, 0x0
    .4byte 0x48000028 # b .L_80023074
L_80023050:
    li 27, 0x1
L_80023054:
    addi 26, 26, 0x1
    addi 29, 29, 0x6c
    cmpwi 26, 0x10
    .4byte 0x4180FF60 # blt .L_80022FC0
    clrlwi 3, 27, 24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80023074:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80023088:
    lbz 5, 0x0(4)
    lbz 0, 0x1(4)
    stw 5, 0x7c(3)
    lbz 5, 0x2(4)
    stw 0, 0x78(3)
    lbz 0, 0x3(4)
    stw 5, 0xe8(3)
    lbz 5, 0x4(4)
    stw 0, 0xe4(3)
    lbz 0, 0x5(4)
    stw 5, 0x154(3)
    lbz 5, 0x6(4)
    stw 0, 0x150(3)
    lbz 0, 0x7(4)
    stw 5, 0x1c0(3)
    lbz 5, 0x8(4)
    stw 0, 0x1bc(3)
    lbz 0, 0x9(4)
    stw 5, 0x22c(3)
    lbz 5, 0xa(4)
    stw 0, 0x228(3)
    lbz 0, 0xb(4)
    stw 5, 0x298(3)
    lbz 5, 0xc(4)
    stw 0, 0x294(3)
    lbz 0, 0xd(4)
    stw 5, 0x304(3)
    lbz 5, 0xe(4)
    stw 0, 0x300(3)
    lbz 0, 0xf(4)
    stw 5, 0x370(3)
    lbz 5, 0x10(4)
    stw 0, 0x36c(3)
    lbz 0, 0x11(4)
    stw 5, 0x3dc(3)
    lbz 5, 0x12(4)
    stw 0, 0x3d8(3)
    lbz 0, 0x13(4)
    stw 5, 0x448(3)
    lbz 5, 0x14(4)
    stw 0, 0x444(3)
    lbz 0, 0x15(4)
    stw 5, 0x4b4(3)
    lbz 5, 0x16(4)
    stw 0, 0x4b0(3)
    lbz 0, 0x17(4)
    stw 5, 0x520(3)
    lbz 5, 0x18(4)
    stw 0, 0x51c(3)
    lbz 0, 0x19(4)
    stw 5, 0x58c(3)
    lbz 5, 0x1a(4)
    stw 0, 0x588(3)
    lbz 0, 0x1b(4)
    stw 5, 0x5f8(3)
    lbz 5, 0x1c(4)
    stw 0, 0x5f4(3)
    lbz 0, 0x1d(4)
    stw 5, 0x664(3)
    lbz 5, 0x1e(4)
    stw 0, 0x660(3)
    lbz 0, 0x1f(4)
    stw 5, 0x6d0(3)
    stw 0, 0x6cc(3)
    blr

fn_8002318C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
L_800231AC:
    lwz 31, 0x6c(30)
    .4byte 0x48000014 # b .L_800231C4
L_800231B4:
    lwz 3, 0x0(31)
    addi 3, 3, 0x10
    bl fn_80025784
    lwz 31, 0xc(31)
L_800231C4:
    cmplwi 31, 0x0
    .4byte 0x4082FFEC # bne .L_800231B4
    addi 29, 29, 0x1
    addi 30, 30, 0x6c
    cmpwi 29, 0x10
    .4byte 0x4180FFD4 # blt .L_800231AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800231F8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 4
L_80023220:
    lwz 31, 0x6c(30)
    .4byte 0x48000018 # b .L_8002323C
L_80023228:
    lwz 3, 0x0(31)
    mr 4, 28
    addi 3, 3, 0x10
    bl fn_800256C8
    lwz 31, 0xc(31)
L_8002323C:
    cmplwi 31, 0x0
    .4byte 0x4082FFE8 # bne .L_80023228
    addi 29, 29, 0x1
    addi 30, 30, 0x6c
    cmpwi 29, 0x10
    .4byte 0x4180FFD0 # blt .L_80023220
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80023274:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 4
    mr 29, 3
    li 28, 0x0
L_80023290:
    lwz 30, 0x0(27)
    addis 0, 30, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820030 # beq .L_800232CC
    lwz 31, 0x6c(29)
    .4byte 0x48000020 # b .L_800232C4
L_800232A8:
    lwz 3, 0x0(31)
    lwz 0, 0x28(3)
    cmplw 0, 30
    .4byte 0x4082000C # bne .L_800232C0
    addi 3, 3, 0x10
    bl fn_80025784
L_800232C0:
    lwz 31, 0xc(31)
L_800232C4:
    cmplwi 31, 0x0
    .4byte 0x4082FFE0 # bne .L_800232A8
L_800232CC:
    addi 28, 28, 0x1
    addi 29, 29, 0x6c
    cmpwi 28, 0x10
    .4byte 0x4180FFB8 # blt .L_80023290
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800232F0:
    stw 4, 0x8(3)
    blr

fn_800232F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8002334C
    stw 31, 0xc(30)
    mr 4, 30
    lwz 3, 0xc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002334C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xc(3)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_80023388
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0xc(31)
L_80023388:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002339C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 31, 3
    lwz 3, 0x6f0(3)
    lfs 1, 0x6d4(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_800233D4
    subi 0, 3, 0x1
    stw 0, 0x6f0(31)
    lfs 0, 0x6e8(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_800233E4
L_800233D4:
    .4byte 0x40820010 # bne .L_800233E4
    li 0, 0x0
    stw 0, 0x6f0(31)
    lfs 1, 0x6ec(31)
L_800233E4:
    stfs 1, 0x6d4(31)
    lwz 3, 0x6fc(31)
    lfs 1, 0x6dc(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_8002340C
    subi 0, 3, 0x1
    stw 0, 0x6fc(31)
    lfs 0, 0x6f4(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_8002341C
L_8002340C:
    .4byte 0x40820010 # bne .L_8002341C
    li 0, 0x0
    stw 0, 0x6fc(31)
    lfs 1, 0x6f8(31)
L_8002341C:
    stfs 1, 0x6dc(31)
    lwz 3, 0x708(31)
    lfs 1, 0x6d8(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80023444
    subi 0, 3, 0x1
    stw 0, 0x708(31)
    lfs 0, 0x700(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80023454
L_80023444:
    .4byte 0x40820010 # bne .L_80023454
    li 0, 0x0
    stw 0, 0x708(31)
    lfs 1, 0x704(31)
L_80023454:
    stfs 1, 0x6d8(31)
    lwz 3, 0x720(31)
    lfs 1, 0x6e4(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_8002347C
    subi 0, 3, 0x1
    stw 0, 0x720(31)
    lfs 0, 0x718(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_8002348C
L_8002347C:
    .4byte 0x40820010 # bne .L_8002348C
    li 0, 0x0
    stw 0, 0x720(31)
    lfs 1, 0x71c(31)
L_8002348C:
    stfs 1, 0x6e4(31)
    lwz 3, 0x714(31)
    lfs 1, 0x6e0(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_800234B4
    subi 0, 3, 0x1
    stw 0, 0x714(31)
    lfs 0, 0x70c(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_800234C4
L_800234B4:
    .4byte 0x40820010 # bne .L_800234C4
    li 0, 0x0
    stw 0, 0x714(31)
    lfs 1, 0x710(31)
L_800234C4:
    stfs 1, 0x6e0(31)
    mr 30, 31
    li 27, 0x0
L_800234D0:
    addi 3, 30, 0x14
    bl fn_80022A10
    addi 27, 27, 0x1
    addi 30, 30, 0x6c
    cmpwi 27, 0x10
    .4byte 0x4180FFEC # blt .L_800234D0
    lis 3, lbl_804916C0@ha
    mr 28, 31
    addi 3, 3, lbl_804916C0@l
    li 26, 0x0
    addi 27, 3, 0x8
L_800234FC:
    lwz 31, 0x6c(28)
    addi 29, 28, 0x6c
    .4byte 0x48000080 # b .L_80023584
L_80023508:
    lwz 3, 0x0(31)
    lwz 30, 0xc(31)
    lbz 0, 0x2e(3)
    cmplwi 0, 0x6
    .4byte 0x40820068 # bne .L_80023580
    mr 3, 29
    mr 4, 31
    bl fn_80087298
    lwz 31, 0x0(31)
    cmplwi 31, 0x0
    .4byte 0x41820050 # beq .L_80023580
    lis 3, lbl_804916C0@ha
    addic. 0, 31, 0xac
    addi 0, 3, lbl_804916C0@l
    stw 0, 0xa8(31)
    stw 27, 0x10(31)
    .4byte 0x41820010 # beq .L_80023558
    addi 3, 31, 0xc8
    li 4, -0x1
    bl fn_8003626C
L_80023558:
    cmplwi 31, 0x0
    .4byte 0x41820010 # beq .L_8002356C
    mr 3, 31
    li 4, 0x0
    bl fn_80086E44
L_8002356C:
    lis 3, lbl_804B222C@ha
    mr 4, 31
    addi 3, 3, lbl_804B222C@l
    li 5, 0x340
    bl fn_80028AD8
L_80023580:
    mr 31, 30
L_80023584:
    cmplwi 31, 0x0
    .4byte 0x4082FF80 # bne .L_80023508
    addi 26, 26, 0x1
    addi 28, 28, 0x6c
    cmpwi 26, 0x10
    .4byte 0x4180FF64 # blt .L_800234FC
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800235B0:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 26, 3
    .4byte 0xC3A28014 # lfs f29, lbl_8053AFB4@sda21(r0)
    .4byte 0xC3C28018 # lfs f30, lbl_8053AFB8@sda21(r0)
    mr 28, 26
    .4byte 0xC3E2801C # lfs f31, lbl_8053AFBC@sda21(r0)
    li 27, 0x0
L_800235F0:
    lbz 0, 0x4(26)
    addi 3, 1, 0x1c
    addi 4, 26, 0x6d4
    addi 5, 28, 0x1c
    stb 0, 0x18(1)
    stfs 29, 0x1c(1)
    stfs 29, 0x24(1)
    stfs 30, 0x20(1)
    stfs 31, 0x28(1)
    stfs 30, 0x2c(1)
    bl fn_8002DC74
    lwz 29, 0x7c(28)
    lwz 30, 0x6c(28)
    cmpwi 29, 0x0
    .4byte 0x40810080 # ble .L_800236A8
    lbz 31, 0x18(1)
    .4byte 0x48000024 # b .L_80023654
L_80023634:
    stb 31, 0x8(1)
    addi 5, 1, 0x1c
    addi 6, 1, 0x8
    li 4, 0x1
    lwz 3, 0x0(30)
    bl fn_80021FF0
    lwz 30, 0xc(30)
    subi 29, 29, 0x1
L_80023654:
    cmplwi 30, 0x0
    .4byte 0x41820020 # beq .L_80023678
    cmpwi 29, 0x0
    .4byte 0x40810018 # ble .L_80023678
    lwz 3, 0x0(30)
    lwz 3, 0xb0(3)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082FFC0 # bne .L_80023634
L_80023678:
    lbz 31, 0x18(1)
    .4byte 0x48000020 # b .L_8002369C
L_80023680:
    stb 31, 0xc(1)
    addi 5, 1, 0x1c
    addi 6, 1, 0xc
    li 4, 0x0
    lwz 3, 0x0(30)
    bl fn_80021FF0
    lwz 30, 0xc(30)
L_8002369C:
    cmplwi 30, 0x0
    .4byte 0x4082FFE0 # bne .L_80023680
    .4byte 0x48000070 # b .L_80023714
L_800236A8:
    lbz 31, 0x18(1)
    .4byte 0x48000020 # b .L_800236CC
L_800236B0:
    stb 31, 0x10(1)
    addi 5, 1, 0x1c
    addi 6, 1, 0x10
    li 4, 0x1
    lwz 3, 0x0(30)
    bl fn_80021FF0
    lwz 30, 0xc(30)
L_800236CC:
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_800236E8
    lwz 3, 0x0(30)
    lwz 3, 0xb0(3)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082FFCC # bne .L_800236B0
L_800236E8:
    lbz 31, 0x18(1)
    .4byte 0x48000020 # b .L_8002370C
L_800236F0:
    stb 31, 0x14(1)
    addi 5, 1, 0x1c
    addi 6, 1, 0x14
    li 4, 0x0
    lwz 3, 0x0(30)
    bl fn_80021FF0
    lwz 30, 0xc(30)
L_8002370C:
    cmplwi 30, 0x0
    .4byte 0x4082FFE0 # bne .L_800236F0
L_80023714:
    addi 27, 27, 0x1
    addi 28, 28, 0x6c
    cmpwi 27, 0x10
    .4byte 0x4180FED0 # blt .L_800235F0
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80023750:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 23, 0x1c(1)
    mr. 30, 5
    mr 28, 3
    mr 29, 4
    mr 31, 6
    .4byte 0x41820014 # beq .L_80023784
    lwz 3, 0x0(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80023784
    bl fn_80025784
L_80023784:
    .4byte 0x834D86D4 # lwz r26, lbl_8053A294@sda21(r0)
    cmplwi 26, 0x0
    .4byte 0x41820054 # beq .L_800237E0
    lwz 0, 0x0(29)
    mr 3, 26
    addi 4, 1, 0x14
    stw 0, 0x14(1)
    lwz 12, 0x0(26)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 0, 0x0(29)
    mr 5, 3
    mr 3, 26
    addi 4, 1, 0x10
    stw 0, 0x10(1)
    mr 25, 5
    lwz 12, 0x0(26)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 24, 3
    .4byte 0x4800000C # b .L_800237E8
L_800237E0:
    lbz 25, 0x1(29)
    li 24, 0x0
L_800237E8:
    cmpwi 25, 0x0
    mr 0, 25
    .4byte 0x40800008 # bge .L_800237F8
    li 0, 0x0
L_800237F8:
    mulli 3, 0, 0x6c
    addi 27, 3, 0x14
    add 27, 28, 27
    lwz 3, 0x68(27)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80023818
    li 7, 0x0
    .4byte 0x4800000C # b .L_80023820
L_80023818:
    lwz 0, 0x64(27)
    add 7, 3, 0
L_80023820:
    cmpwi 7, 0x0
    .4byte 0x4181000C # bgt .L_80023830
    li 0, 0x1
    .4byte 0x4800008C # b .L_800238B8
L_80023830:
    lwz 5, 0x58(27)
    li 6, 0x0
    .4byte 0x48000064 # b .L_8002389C
L_8002383C:
    lwz 8, 0x0(5)
    lwz 0, 0xac(8)
    cmplw 24, 0
    .4byte 0x4080000C # bge .L_80023854
    li 0, 0x1
    .4byte 0x48000068 # b .L_800238B8
L_80023854:
    lbz 3, 0x2f(8)
    li 4, 0x0
    extrwi. 0, 3, 1, 24
    .4byte 0x4182002C # beq .L_8002388C
    extrwi. 0, 3, 1, 28
    .4byte 0x41820020 # beq .L_80023888
    lwz 0, 0x40(8)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8002388C
    lfs 1, 0x34(8)
    .4byte 0xC0028010 # lfs f0, lbl_8053AFB0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8002388C
L_80023888:
    li 4, 0x1
L_8002388C:
    clrlwi. 0, 4, 24
    .4byte 0x40820008 # bne .L_80023898
    addi 6, 6, 0x1
L_80023898:
    lwz 5, 0xc(5)
L_8002389C:
    cmplwi 5, 0x0
    .4byte 0x4082FF9C # bne .L_8002383C
    cmpw 6, 7
    .4byte 0x4080000C # bge .L_800238B4
    li 0, 0x1
    .4byte 0x48000008 # b .L_800238B8
L_800238B4:
    li 0, 0x0
L_800238B8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_800238C8
    li 23, 0x0
    .4byte 0x4800004C # b .L_80023910
L_800238C8:
    lis 3, lbl_804B222C@ha
    li 4, 0x340
    addi 3, 3, lbl_804B222C@l
    bl fn_80028A8C
    mr. 23, 3
    .4byte 0x41820018 # beq .L_800238F4
    lwz 5, 0x10(28)
    mr 4, 28
    mr 6, 24
    bl fn_80021F24
    mr 23, 3
L_800238F4:
    cmplwi 23, 0x0
    .4byte 0x4082000C # bne .L_80023904
    li 23, 0x0
    .4byte 0x48000010 # b .L_80023910
L_80023904:
    mr 4, 23
    addi 3, 27, 0x58
    bl fn_80086F58
L_80023910:
    cmplwi 23, 0x0
    .4byte 0x40820020 # bne .L_80023934
    lis 3, lbl_8045C660@ha
    lwz 4, 0x0(29)
    addi 3, 3, lbl_8045C660@l
    crclr 6
    bl fn_80028F54
    li 3, 0x0
    .4byte 0x4800008C # b .L_800239BC
L_80023934:
    cmpwi 25, 0x0
    .4byte 0x41800024 # blt .L_8002395C
    cmpwi 25, 0x10
    .4byte 0x4080001C # bge .L_8002395C
    mulli 0, 25, 0x6c
    add 3, 28, 0
    lwz 6, 0x18(3)
    cmplwi 6, 0x0
    .4byte 0x41820008 # beq .L_8002395C
    .4byte 0x48000008 # b .L_80023960
L_8002395C:
    lwz 6, 0x8(28)
L_80023960:
    lwz 0, 0x0(29)
    mr 3, 23
    mr 5, 31
    addi 4, 1, 0xc
    stw 0, 0xc(1)
    bl fn_80022540
    cmplwi 26, 0x0
    .4byte 0x41820028 # beq .L_800239A4
    lwz 0, 0x0(29)
    mr 3, 26
    mr 5, 23
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 12, 0x0(26)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_800239A4:
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_800239B8
    mr 4, 30
    addi 3, 23, 0x10
    bl fn_80025490
L_800239B8:
    li 3, 0x1
L_800239BC:
    lmw 23, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_800239D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820060 # beq .L_80023A4C
    lis 3, lbl_80491718@ha
    lis 4, fn_80022D44@ha
    addi 0, 3, lbl_80491718@l
    li 5, 0x6c
    stw 0, 0x0(30)
    addi 3, 30, 0x14
    addi 4, 4, fn_80022D44@l
    li 6, 0x10
    bl fn_80066F84
    mr 3, 30
    li 4, 0x0
    bl fn_80024B50
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_80023A3C
    .4byte 0x800D86DC # lwz r0, lbl_8053A29C@sda21(r0)
    cmplw 0, 30
    .4byte 0x4082000C # bne .L_80023A3C
    li 0, 0x0
    .4byte 0x900D86DC # stw r0, lbl_8053A29C@sda21(r0)
L_80023A3C:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80023A4C
    mr 3, 30
    bl dtor_80084580
L_80023A4C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80023A68:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B22B8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B22B8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80023AB8
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
L_80023AB8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80023AF0
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
L_80023AF0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80023B28
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
L_80023B28:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80023B60
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80023B60:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80023B74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    stw 28, 0x10(1)
    bl fn_80025574
    mr 4, 29
    addi 3, 29, 0x98
    bl fn_80086E2C
    lis 3, lbl_8049175C@ha
    addi 28, 29, 0xa8
    addi 0, 3, lbl_8049175C@l
    stw 0, 0x0(29)
    mr 3, 28
    bl fn_80036188
    .4byte 0xC0428020 # lfs f2, lbl_8053AFC0@sda21(r0)
    li 11, 0x0
    .4byte 0xC0228024 # lfs f1, lbl_8053AFC4@sda21(r0)
    li 0, 0x2
    stfs 2, 0x2d0(28)
    .4byte 0xC0028028 # lfs f0, lbl_8053AFC8@sda21(r0)
    stfs 1, 0x2d4(28)
    stw 11, 0x2dc(28)
    stfs 1, 0x2d8(28)
    stfs 2, 0x2e0(28)
    stfs 2, 0x2e8(28)
    stfs 1, 0x2e4(28)
    stfs 0, 0x2ec(28)
    stfs 1, 0x2f0(28)
    stw 11, 0x2f4(28)
    stw 11, 0x2f8(28)
    stw 30, 0x3a8(29)
    stw 31, 0x3ac(29)
    stfs 2, 0x388(29)
    stfs 2, 0x390(29)
    stfs 1, 0x38c(29)
    stfs 0, 0x394(29)
    stfs 1, 0x398(29)
    mtctr 0
L_80023C24:
    addi 9, 11, 0x2f8
    li 10, 0x0
    stwx 10, 29, 9
    addi 8, 11, 0x2fc
    addi 7, 11, 0x300
    addi 6, 11, 0x304
    stwx 10, 29, 8
    addi 5, 11, 0x308
    addi 4, 11, 0x30c
    addi 3, 11, 0x310
    stwx 10, 29, 7
    addi 0, 11, 0x314
    addi 9, 11, 0x318
    addi 8, 11, 0x31c
    stwx 10, 29, 6
    addi 7, 11, 0x320
    addi 6, 11, 0x324
    stwx 10, 29, 5
    addi 5, 11, 0x328
    stwx 10, 29, 4
    addi 4, 11, 0x32c
    stwx 10, 29, 3
    addi 3, 11, 0x330
    stwx 10, 29, 0
    addi 0, 11, 0x334
    addi 11, 11, 0x40
    stwx 10, 29, 9
    stwx 10, 29, 8
    stwx 10, 29, 7
    stwx 10, 29, 6
    stwx 10, 29, 5
    stwx 10, 29, 4
    stwx 10, 29, 3
    stwx 10, 29, 0
    .4byte 0x4200FF78 # bdnz .L_80023C24
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80023CD4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    mr 4, 8
    stw 28, 0x10(1)
    mr 28, 3
    stw 7, 0x3a4(3)
    bl fn_80023D84
    lwz 0, 0x0(29)
    mr 3, 28
    mr 5, 30
    mr 6, 31
    stw 0, 0xc(1)
    addi 4, 1, 0xc
    bl fn_800255A4
    lwz 0, 0x3ac(28)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80023D5C
    lwz 0, 0x0(29)
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 3, 0x3ac(28)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    stw 3, 0x3b0(28)
    .4byte 0x4800000C # b .L_80023D64
L_80023D5C:
    li 0, 0x0
    stw 0, 0x3b0(28)
L_80023D64:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80023D84:
    stwu 1, -0x40(1)
    mflr 0
    lis 5, lbl_804B21BC@ha
    stw 0, 0x44(1)
    stmw 23, 0x1c(1)
    mr 30, 3
    mr 31, 4
    li 24, 0x0
    addi 29, 5, lbl_804B21BC@l
    li 25, 0x0
L_80023DAC:
    bl OSDisableInterrupts
    stw 3, 0xc(1)
    mr 3, 29
    li 4, 0x250
    bl fn_80028A8C
    mr 28, 3
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    cmplwi 28, 0x0
    .4byte 0x41820010 # beq .L_80023DE0
    mr 3, 28
    bl fn_80036188
    mr 28, 3
L_80023DE0:
    cmplwi 28, 0x0
    .4byte 0x41820084 # beq .L_80023E68
    mr 4, 24
    mr 5, 28
    addi 3, 30, 0xa8
    bl fn_80036BA8
    li 23, 0x0
    mr 26, 25
L_80023E00:
    cmpw 26, 31
    .4byte 0x40800054 # bge .L_80023E58
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21BC@l
    li 4, 0x250
    bl fn_80028A8C
    mr 27, 3
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    cmplwi 27, 0x0
    .4byte 0x41820010 # beq .L_80023E40
    mr 3, 27
    bl fn_80036188
    mr 27, 3
L_80023E40:
    cmplwi 27, 0x0
    .4byte 0x41820014 # beq .L_80023E58
    mr 3, 28
    mr 4, 23
    mr 5, 27
    bl fn_80036BA8
L_80023E58:
    addi 23, 23, 0x1
    addi 26, 26, 0x1
    cmpwi 23, 0x10
    .4byte 0x4180FF9C # blt .L_80023E00
L_80023E68:
    addi 24, 24, 0x1
    addi 25, 25, 0x10
    cmpwi 24, 0x2
    .4byte 0x4180FF38 # blt .L_80023DAC
    lmw 23, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80023E8C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    mr 29, 5
    lbz 0, 0x1e(3)
    cmplwi 0, 0x6
    .4byte 0x41810278 # bgt .L_80024130
    lis 3, jumptable_80491740@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_80491740@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lbz 0, 0x1f(30)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    li 3, 0x1
    stb 0, 0x1f(30)
    lbz 0, 0x1f(30)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1f(30)
    .4byte 0x4800023C # b .L_80024130
    lwz 6, 0x18(30)
    addis 0, 6, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_80023F10
    li 0, 0x1
    .4byte 0x48000074 # b .L_80023F80
L_80023F10:
    lwz 3, 0x3a8(30)
    addi 4, 1, 0x1c
    addi 5, 30, 0x39c
    lwz 3, 0xc(3)
    stw 6, 0x1c(1)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x1
    .4byte 0x4182002C # beq .L_80023F64
    .4byte 0x40800010 # bge .L_80023F4C
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_80023F58
    .4byte 0x48000034 # b .L_80023F7C
L_80023F4C:
    cmpwi 3, 0x3
    .4byte 0x4080002C # bge .L_80023F7C
    .4byte 0x48000020 # b .L_80023F74
L_80023F58:
    li 0, 0x2
    stb 0, 0x1e(30)
    .4byte 0x4800001C # b .L_80023F7C
L_80023F64:
    mr 3, 30
    bl fn_8002585C
    li 0, 0x0
    .4byte 0x48000010 # b .L_80023F80
L_80023F74:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80023F80
L_80023F7C:
    li 0, 0x0
L_80023F80:
    clrlwi. 0, 0, 24
    .4byte 0x418201AC # beq .L_80024130
    li 3, 0x5
    lbz 0, 0x0(29)
    stb 3, 0x1e(30)
    addi 3, 30, 0xa8
    stb 0, 0x14(1)
    lwz 4, 0x39c(30)
    lwz 5, 0x3a0(30)
    bl fn_800367D8
    lwz 0, 0x8(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80023FC4
    mr 3, 30
    addi 4, 30, 0xa8
    bl fn_80025BCC
    .4byte 0x48000020 # b .L_80023FE0
L_80023FC4:
    addi 3, 30, 0xa8
    li 4, 0x1
    bl fn_80036310
    addi 3, 30, 0xa8
    addi 5, 30, 0x388
    li 4, 0x0
    bl fn_800367C4
L_80023FE0:
    lbz 0, 0x14(1)
    mr 3, 30
    mr 4, 31
    addi 5, 1, 0xc
    stb 0, 0xc(1)
    bl fn_800244F0
    addi 3, 30, 0xa8
    bl fn_800367F8
    li 3, 0x1
    .4byte 0x48000130 # b .L_80024134
    lwz 6, 0x18(30)
    addis 0, 6, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_80024020
    li 0, 0x1
    .4byte 0x48000074 # b .L_80024090
L_80024020:
    lwz 3, 0x3a8(30)
    addi 4, 1, 0x18
    addi 5, 30, 0x39c
    lwz 3, 0xc(3)
    stw 6, 0x18(1)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x1
    .4byte 0x4182002C # beq .L_80024074
    .4byte 0x40800010 # bge .L_8002405C
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_80024068
    .4byte 0x48000034 # b .L_8002408C
L_8002405C:
    cmpwi 3, 0x3
    .4byte 0x4080002C # bge .L_8002408C
    .4byte 0x48000020 # b .L_80024084
L_80024068:
    li 0, 0x2
    stb 0, 0x1e(30)
    .4byte 0x4800001C # b .L_8002408C
L_80024074:
    mr 3, 30
    bl fn_8002585C
    li 0, 0x0
    .4byte 0x48000010 # b .L_80024090
L_80024084:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80024090
L_8002408C:
    li 0, 0x0
L_80024090:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_800240A0
    li 0, 0x3
    stb 0, 0x1e(30)
L_800240A0:
    li 3, 0x0
    .4byte 0x48000090 # b .L_80024134
    li 3, 0x5
    lbz 0, 0x0(29)
    stb 3, 0x1e(30)
    addi 3, 30, 0xa8
    stb 0, 0x10(1)
    lwz 4, 0x39c(30)
    lwz 5, 0x3a0(30)
    bl fn_800367D8
    lwz 0, 0x8(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_800240E4
    mr 3, 30
    addi 4, 30, 0xa8
    bl fn_80025BCC
    .4byte 0x48000020 # b .L_80024100
L_800240E4:
    addi 3, 30, 0xa8
    li 4, 0x1
    bl fn_80036310
    addi 3, 30, 0xa8
    addi 5, 30, 0x388
    li 4, 0x0
    bl fn_800367C4
L_80024100:
    lbz 0, 0x10(1)
    mr 3, 30
    mr 4, 31
    addi 5, 1, 0x8
    stb 0, 0x8(1)
    bl fn_800244F0
    addi 3, 30, 0xa8
    bl fn_800367F8
    li 3, 0x1
    .4byte 0x48000010 # b .L_80024134
    li 3, 0x1
    .4byte 0x48000008 # b .L_80024134
L_80024130:
    li 3, 0x0
L_80024134:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80024150:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x2e8(3)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_8002418C
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80024198
    lbz 0, 0x1e(29)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_80024198
L_8002418C:
    mr 3, 29
    bl fn_80024244
    .4byte 0x48000094 # b .L_80024228
L_80024198:
    mr 3, 29
    bl fn_800258A8
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80024228
    lwz 3, 0x384(29)
    lfs 1, 0x378(29)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_800241CC
    subi 0, 3, 0x1
    stw 0, 0x384(29)
    lfs 0, 0x37c(29)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_800241DC
L_800241CC:
    .4byte 0x40820010 # bne .L_800241DC
    li 0, 0x0
    stw 0, 0x384(29)
    lfs 1, 0x380(29)
L_800241DC:
    stfs 1, 0x378(29)
    mr 31, 29
    li 30, 0x0
L_800241E8:
    lwz 3, 0x2f8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_800241F8
    bl fn_80025E38
L_800241F8:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x20
    .4byte 0x4180FFE4 # blt .L_800241E8
    lwz 3, 0x3b0(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80024228
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_80024228:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80024244:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 26, 3
    lis 3, lbl_804B220C@ha
    li 27, 0x0
    mr 29, 26
    li 31, 0x0
    addi 30, 3, lbl_804B220C@l
L_8002426C:
    lwz 4, 0x2f8(29)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80024288
    mr 3, 30
    li 5, 0x64
    bl fn_80028AD8
    stw 31, 0x2f8(29)
L_80024288:
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0x20
    .4byte 0x4180FFD8 # blt .L_8002426C
    lwz 4, 0x3b0(26)
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_800242C0
    lwz 3, 0x3ac(26)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x3b0(26)
L_800242C0:
    li 31, 0x0
    mr 27, 26
L_800242C8:
    lwz 29, 0x1d8(27)
    cmplwi 29, 0x0
    .4byte 0x4182003C # beq .L_8002430C
    li 30, 0x0
    mr 28, 29
L_800242DC:
    lwz 3, 0x130(28)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800242F0
    li 4, 0x1
    bl fn_8003626C
L_800242F0:
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmplwi 30, 0x10
    .4byte 0x4180FFE0 # blt .L_800242DC
    mr 3, 29
    li 4, 0x1
    bl fn_8003626C
L_8002430C:
    addi 31, 31, 0x1
    addi 27, 27, 0x4
    cmplwi 31, 0x2
    .4byte 0x4180FFB0 # blt .L_800242C8
    mr 3, 26
    bl fn_800257D4
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80024338:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stmw 26, 0x18(1)
    mr 31, 3
    lwz 3, 0x2e8(3)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80024364
    cmplwi 3, 0x2
    .4byte 0x40820008 # bne .L_80024368
L_80024364:
    li 0, 0x1
L_80024368:
    clrlwi. 0, 0, 24
    .4byte 0x418200D8 # beq .L_80024444
    li 28, 0x0
    lis 3, lbl_804B220C@ha
    mr 27, 31
    mr 30, 28
    addi 29, 3, lbl_804B220C@l
L_80024384:
    lwz 4, 0x2f8(27)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_800243A0
    mr 3, 29
    li 5, 0x64
    bl fn_80028AD8
    stw 30, 0x2f8(27)
L_800243A0:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0x20
    .4byte 0x4180FFD8 # blt .L_80024384
    lwz 4, 0x3b0(31)
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_800243D8
    lwz 3, 0x3ac(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x3b0(31)
L_800243D8:
    li 29, 0x0
    mr 26, 31
L_800243E0:
    lwz 30, 0x1d8(26)
    cmplwi 30, 0x0
    .4byte 0x4182003C # beq .L_80024424
    li 28, 0x0
    mr 27, 30
L_800243F4:
    lwz 3, 0x130(27)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80024408
    li 4, 0x1
    bl fn_8003626C
L_80024408:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmplwi 28, 0x10
    .4byte 0x4180FFE0 # blt .L_800243F4
    mr 3, 30
    li 4, 0x1
    bl fn_8003626C
L_80024424:
    addi 29, 29, 0x1
    addi 26, 26, 0x4
    cmplwi 29, 0x2
    .4byte 0x4180FFB0 # blt .L_800243E0
    mr 3, 31
    bl fn_800257D4
    li 3, 0x1
    .4byte 0x48000048 # b .L_80024488
L_80024444:
    .4byte 0xC0028024 # lfs f0, lbl_8053AFC4@sda21(r0)
    li 0, 0x0
    li 3, 0x1
    stfs 0, 0x24(31)
    stfs 0, 0x28(31)
    stw 0, 0x30(31)
    stfs 0, 0x2c(31)
    lbz 0, 0x1f(31)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1f(31)
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    addi 3, 31, 0xa8
    bl fn_80036848
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    li 3, 0x0
L_80024488:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

dtor_8002449C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_800244D4
    lwz 3, 0x0(30)
    bl OSRestoreInterrupts
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_800244D4
    mr 3, 30
    bl dtor_80084580
L_800244D4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800244F0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr 29, 5
    lfs 1, 0x378(3)
    addi 3, 31, 0xa8
    bl fn_80038744
    lbz 0, 0x0(29)
    addi 3, 31, 0xa8
    li 4, 0x0
    extrwi. 0, 0, 1, 24
    .4byte 0x40820010 # bne .L_80024540
    lbz 0, 0x1c(31)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820008 # beq .L_80024544
L_80024540:
    li 4, 0x1
L_80024544:
    bl fn_80037F1C
    lbz 0, 0x0(29)
    addi 3, 31, 0xa8
    li 4, 0x0
    extrwi. 0, 0, 1, 25
    .4byte 0x40820010 # bne .L_80024568
    lbz 0, 0x1c(31)
    extrwi. 0, 0, 1, 25
    .4byte 0x41820008 # beq .L_8002456C
L_80024568:
    li 4, 0x1
L_8002456C:
    bl fn_800383D4
    .4byte 0xC0428020 # lfs f2, lbl_8053AFC0@sda21(r0)
    mr 4, 30
    .4byte 0xC0228024 # lfs f1, lbl_8053AFC4@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC0028028 # lfs f0, lbl_8053AFC8@sda21(r0)
    addi 5, 1, 0x8
    stfs 2, 0x8(1)
    stfs 2, 0x10(1)
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    lfs 1, 0x24(31)
    bl fn_800254FC
    lwz 3, 0x3b0(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_800245C8
    lwz 12, 0x0(3)
    mr 4, 31
    addi 5, 1, 0x8
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_800245C8:
    lwz 0, 0x8(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80024624
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 30, 3
    li 29, 0x0
    .4byte 0x48000028 # b .L_80024618
L_800245F4:
    lwz 3, 0xc(31)
    mr 6, 29
    addi 4, 1, 0x8
    lwz 5, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    addi 29, 29, 0x1
L_80024618:
    cmpw 29, 30
    .4byte 0x4180FFD8 # blt .L_800245F4
    .4byte 0x4800006C # b .L_8002468C
L_80024624:
    lfs 0, 0x8(1)
    mr 30, 31
    li 29, 0x0
    stfs 0, 0x388(31)
    lfs 0, 0xc(1)
    stfs 0, 0x38c(31)
    lfs 0, 0x10(1)
    stfs 0, 0x390(31)
    lfs 0, 0x14(1)
    stfs 0, 0x394(31)
    lfs 0, 0x18(1)
    stfs 0, 0x398(31)
L_80024654:
    lwz 0, 0x2f8(30)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8002467C
    mr 3, 31
    mr 4, 29
    bl fn_800249C8
    mr. 4, 3
    .4byte 0x4182000C # beq .L_8002467C
    lwz 3, 0x2f8(30)
    bl fn_80025DE0
L_8002467C:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x20
    .4byte 0x4180FFCC # blt .L_80024654
L_8002468C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800246A8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    lbz 0, 0x0(5)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    mr 30, 4
    stw 29, 0x34(1)
    mr 29, 5
    addi 5, 1, 0xc
    stb 0, 0xc(1)
    bl fn_80023E8C
    clrlwi. 0, 3, 24
    .4byte 0x41820190 # beq .L_80024870
    lwz 0, 0x2e8(31)
    cmpwi 0, 0x1
    .4byte 0x40820184 # bne .L_80024870
    lbz 0, 0x0(29)
    addi 3, 31, 0xa8
    lfs 1, 0x378(31)
    stb 0, 0x8(1)
    bl fn_80038744
    lbz 0, 0x8(1)
    addi 3, 31, 0xa8
    li 4, 0x0
    extrwi. 0, 0, 1, 24
    .4byte 0x40820010 # bne .L_80024724
    lbz 0, 0x1c(31)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820008 # beq .L_80024728
L_80024724:
    li 4, 0x1
L_80024728:
    bl fn_80037F1C
    lbz 0, 0x8(1)
    addi 3, 31, 0xa8
    li 4, 0x0
    extrwi. 0, 0, 1, 25
    .4byte 0x40820010 # bne .L_8002474C
    lbz 0, 0x1c(31)
    extrwi. 0, 0, 1, 25
    .4byte 0x41820008 # beq .L_80024750
L_8002474C:
    li 4, 0x1
L_80024750:
    bl fn_800383D4
    .4byte 0xC0428020 # lfs f2, lbl_8053AFC0@sda21(r0)
    mr 4, 30
    .4byte 0xC0228024 # lfs f1, lbl_8053AFC4@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC0028028 # lfs f0, lbl_8053AFC8@sda21(r0)
    addi 5, 1, 0x10
    stfs 2, 0x10(1)
    stfs 2, 0x18(1)
    stfs 1, 0x14(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    lfs 1, 0x24(31)
    bl fn_800254FC
    lwz 3, 0x3b0(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_800247AC
    lwz 12, 0x0(3)
    mr 4, 31
    addi 5, 1, 0x10
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_800247AC:
    lwz 0, 0x8(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80024808
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 30, 3
    li 29, 0x0
    .4byte 0x48000028 # b .L_800247FC
L_800247D8:
    lwz 3, 0xc(31)
    mr 6, 29
    addi 4, 1, 0x10
    lwz 5, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    addi 29, 29, 0x1
L_800247FC:
    cmpw 29, 30
    .4byte 0x4180FFD8 # blt .L_800247D8
    .4byte 0x4800006C # b .L_80024870
L_80024808:
    lfs 0, 0x10(1)
    mr 29, 31
    li 30, 0x0
    stfs 0, 0x388(31)
    lfs 0, 0x14(1)
    stfs 0, 0x38c(31)
    lfs 0, 0x18(1)
    stfs 0, 0x390(31)
    lfs 0, 0x1c(1)
    stfs 0, 0x394(31)
    lfs 0, 0x20(1)
    stfs 0, 0x398(31)
L_80024838:
    lwz 0, 0x2f8(29)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80024860
    mr 3, 31
    mr 4, 30
    bl fn_800249C8
    mr. 4, 3
    .4byte 0x4182000C # beq .L_80024860
    lwz 3, 0x2f8(29)
    bl fn_80025DE0
L_80024860:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x20
    .4byte 0x4180FFCC # blt .L_80024838
L_80024870:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8002488C:
    li 3, 0x20
    blr

fn_80024894:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    slwi 0, 4, 2
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    add 30, 3, 0
    lwz 3, 0x2f8(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_800248C0
    .4byte 0x48000068 # b .L_80024924
L_800248C0:
    lis 3, lbl_804B220C@ha
    li 4, 0x64
    addi 3, 3, lbl_804B220C@l
    bl fn_80028A8C
    mr. 31, 3
    .4byte 0x4182003C # beq .L_80024910
    .4byte 0xC0428020 # lfs f2, lbl_8053AFC0@sda21(r0)
    .4byte 0xC0228024 # lfs f1, lbl_8053AFC4@sda21(r0)
    stfs 2, 0x0(31)
    .4byte 0xC0028028 # lfs f0, lbl_8053AFC8@sda21(r0)
    stfs 2, 0x8(31)
    stfs 1, 0x4(31)
    stfs 0, 0xc(31)
    stfs 1, 0x10(31)
    stfs 2, 0x50(31)
    stfs 2, 0x58(31)
    stfs 1, 0x54(31)
    stfs 0, 0x5c(31)
    stfs 1, 0x60(31)
    bl fn_80025D68
L_80024910:
    stw 31, 0x2f8(30)
    lwz 3, 0x2f8(30)
    cmplwi 3, 0x0
    .4byte 0x40820008 # bne .L_80024924
    li 3, 0x0
L_80024924:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002493C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    lwz 0, 0x2e8(3)
    cmpwi 0, 0x1
    .4byte 0x40820058 # bne .L_800249AC
    slwi 0, 4, 2
    add 31, 3, 0
    lwz 0, 0x2f8(31)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_800249AC
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80024990
    li 4, 0x0
    li 5, 0x0
    bl fn_800367C4
L_80024990:
    lis 3, lbl_804B220C@ha
    lwz 4, 0x2f8(31)
    addi 3, 3, lbl_804B220C@l
    li 5, 0x64
    bl fn_80028AD8
    li 0, 0x0
    stw 0, 0x2f8(31)
L_800249AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800249C0:
    addi 3, 3, 0xa8
    blr

fn_800249C8:
    rlwinm 0, 4, 30, 2, 29
    srwi 5, 4, 4
    add 3, 3, 0
    lwz 3, 0x1d8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_800249F8
    slwi 0, 5, 4
    subf 0, 0, 4
    slwi 0, 0, 2
    add 3, 3, 0
    lwz 3, 0x130(3)
    blr
L_800249F8:
    li 3, 0x0
    blr

fn_80024A00:
    blr

fn_80024A04:
    addi 3, 3, 0x378
    blr

fn_80024A0C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B22E8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B22E8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80024A5C
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
L_80024A5C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80024A94
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
L_80024A94:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80024ACC
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
L_80024ACC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80024B04
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80024B04:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80024B3C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80024B3C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80024B50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80024B80
    lis 5, lbl_804917A8@ha
    extsh. 0, 4
    addi 0, 5, lbl_804917A8@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80024B80
    bl dtor_80084580
L_80024B80:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80024B98:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80024BC8
    lis 5, lbl_80491790@ha
    extsh. 0, 4
    addi 0, 5, lbl_80491790@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80024BC8
    bl dtor_80084580
L_80024BC8:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80024BE0:
    lwz 6, 0x0(4)
    lwz 0, 0x4(4)
    lwz 7, 0x64(3)
    add 3, 6, 0
    .4byte 0x4800004C # b .L_80024C3C
L_80024BF4:
    lwz 4, 0x0(7)
    lwz 5, 0x39c(4)
    cmplw 3, 5
    .4byte 0x4080000C # bge .L_80024C0C
    li 0, 0x0
    .4byte 0x48000020 # b .L_80024C28
L_80024C0C:
    lwz 0, 0x3a0(4)
    add 0, 5, 0
    cmplw 0, 6
    .4byte 0x4080000C # bge .L_80024C24
    li 0, 0x0
    .4byte 0x48000008 # b .L_80024C28
L_80024C24:
    li 0, 0x1
L_80024C28:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80024C38
    li 3, 0x1
    blr
L_80024C38:
    lwz 7, 0xc(7)
L_80024C3C:
    cmplwi 7, 0x0
    .4byte 0x4082FFB4 # bne .L_80024BF4
    li 3, 0x0
    blr

fn_80024C4C:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x24(1)
    lwz 0, 0x4(4)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    lwz 30, 0x0(4)
    stw 29, 0x14(1)
    add 31, 30, 0
    lwz 29, 0x64(3)
    .4byte 0x4800004C # b .L_80024CC4
L_80024C7C:
    lwz 3, 0x0(29)
    lwz 4, 0x39c(3)
    cmplw 31, 4
    .4byte 0x4080000C # bge .L_80024C94
    li 0, 0x0
    .4byte 0x48000020 # b .L_80024CB0
L_80024C94:
    lwz 0, 0x3a0(3)
    add 0, 4, 0
    cmplw 0, 30
    .4byte 0x4080000C # bge .L_80024CAC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80024CB0
L_80024CAC:
    li 0, 0x1
L_80024CB0:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80024CC0
    bl fn_80025784
    li 5, 0x1
L_80024CC0:
    lwz 29, 0xc(29)
L_80024CC4:
    cmplwi 29, 0x0
    .4byte 0x4082FFB4 # bne .L_80024C7C
    clrlwi. 0, 5, 24
    li 3, 0x2
    .4byte 0x41820008 # beq .L_80024CDC
    li 3, 0x1
L_80024CDC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80024CF8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x41820008 # beq .L_80024D18
    .4byte 0x93ED86D8 # stw r31, lbl_8053A298@sda21(r0)
L_80024D18:
    lis 4, lbl_804917A8@ha
    lis 3, lbl_804917C0@ha
    addi 4, 4, lbl_804917A8@l
    li 0, 0x0
    stw 4, 0x0(31)
    addi 4, 3, lbl_804917C0@l
    .4byte 0xC0428030 # lfs f2, lbl_8053AFD0@sda21(r0)
    addi 3, 31, 0x64
    stw 4, 0x0(31)
    .4byte 0xC0228034 # lfs f1, lbl_8053AFD4@sda21(r0)
    stw 0, 0x8(31)
    .4byte 0xC0028038 # lfs f0, lbl_8053AFD8@sda21(r0)
    stfs 2, 0x14(31)
    stfs 2, 0x1c(31)
    stfs 1, 0x18(31)
    stfs 0, 0x20(31)
    stfs 1, 0x24(31)
    bl fn_80086F44
    li 4, 0x0
    li 0, 0x10
    stw 4, 0xc(31)
    mr 3, 31
    .4byte 0xC0428030 # lfs f2, lbl_8053AFD0@sda21(r0)
    stw 4, 0x10(31)
    .4byte 0xC0228034 # lfs f1, lbl_8053AFD4@sda21(r0)
    stw 0, 0x70(31)
    .4byte 0xC0028038 # lfs f0, lbl_8053AFD8@sda21(r0)
    stfs 2, 0x14(31)
    stfs 2, 0x1c(31)
    stfs 1, 0x18(31)
    stfs 0, 0x20(31)
    stfs 1, 0x24(31)
    stfs 1, 0x28(31)
    stw 4, 0x30(31)
    stfs 1, 0x2c(31)
    stfs 1, 0x34(31)
    stw 4, 0x3c(31)
    stfs 1, 0x38(31)
    stfs 1, 0x40(31)
    stw 4, 0x48(31)
    stfs 1, 0x44(31)
    stfs 1, 0x4c(31)
    stw 4, 0x54(31)
    stfs 1, 0x50(31)
    stfs 1, 0x58(31)
    stw 4, 0x60(31)
    stfs 1, 0x5c(31)
    stb 4, 0x4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80024DEC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr. 27, 5
    mr 25, 3
    mr 26, 4
    mr 28, 6
    .4byte 0x41820014 # beq .L_80024E20
    lwz 3, 0x0(27)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80024E20
    bl fn_80025784
L_80024E20:
    .4byte 0x83CD86D4 # lwz r30, lbl_8053A294@sda21(r0)
    cmplwi 30, 0x0
    .4byte 0x4182002C # beq .L_80024E54
    lwz 0, 0x0(26)
    mr 3, 30
    addi 4, 1, 0x14
    stw 0, 0x14(1)
    lwz 12, 0x0(30)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 31, 3
    .4byte 0x48000008 # b .L_80024E58
L_80024E54:
    li 31, -0x1
L_80024E58:
    lwz 0, 0x0(26)
    li 3, 0x0
    stw 3, 0x18(1)
    addi 4, 1, 0x10
    addi 5, 1, 0x18
    stw 3, 0x1c(1)
    stw 0, 0x10(1)
    lwz 3, 0xc(25)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80024E98
    li 3, 0x0
    .4byte 0x48000084 # b .L_80024F18
L_80024E98:
    mr 3, 25
    bl fn_800251B4
    mr. 29, 3
    .4byte 0x41820070 # beq .L_80024F14
    lwz 0, 0x0(26)
    mr 5, 28
    mr 7, 31
    addi 4, 1, 0xc
    stw 0, 0xc(1)
    lwz 6, 0x8(25)
    lwz 8, 0x70(25)
    bl fn_80023CD4
    mr 3, 25
    mr 4, 29
    mr 5, 27
    bl fn_80025208
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80024F14
    cmplwi 30, 0x0
    .4byte 0x41820028 # beq .L_80024F0C
    lwz 0, 0x0(26)
    mr 3, 30
    mr 5, 29
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 12, 0x0(30)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
L_80024F0C:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80024F18
L_80024F14:
    li 3, 0x0
L_80024F18:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80024F2C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 3, 0x30(3)
    lfs 1, 0x14(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80024F6C
    subi 0, 3, 0x1
    stw 0, 0x30(31)
    lfs 0, 0x28(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80024F7C
L_80024F6C:
    .4byte 0x40820010 # bne .L_80024F7C
    li 0, 0x0
    stw 0, 0x30(31)
    lfs 1, 0x2c(31)
L_80024F7C:
    stfs 1, 0x14(31)
    lwz 3, 0x3c(31)
    lfs 1, 0x1c(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80024FA4
    subi 0, 3, 0x1
    stw 0, 0x3c(31)
    lfs 0, 0x34(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80024FB4
L_80024FA4:
    .4byte 0x40820010 # bne .L_80024FB4
    li 0, 0x0
    stw 0, 0x3c(31)
    lfs 1, 0x38(31)
L_80024FB4:
    stfs 1, 0x1c(31)
    lwz 3, 0x48(31)
    lfs 1, 0x18(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80024FDC
    subi 0, 3, 0x1
    stw 0, 0x48(31)
    lfs 0, 0x40(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80024FEC
L_80024FDC:
    .4byte 0x40820010 # bne .L_80024FEC
    li 0, 0x0
    stw 0, 0x48(31)
    lfs 1, 0x44(31)
L_80024FEC:
    stfs 1, 0x18(31)
    lwz 3, 0x60(31)
    lfs 1, 0x24(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80025014
    subi 0, 3, 0x1
    stw 0, 0x60(31)
    lfs 0, 0x58(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025024
L_80025014:
    .4byte 0x40820010 # bne .L_80025024
    li 0, 0x0
    stw 0, 0x60(31)
    lfs 1, 0x5c(31)
L_80025024:
    stfs 1, 0x24(31)
    lwz 3, 0x54(31)
    lfs 1, 0x20(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_8002504C
    subi 0, 3, 0x1
    stw 0, 0x54(31)
    lfs 0, 0x4c(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_8002505C
L_8002504C:
    .4byte 0x40820010 # bne .L_8002505C
    li 0, 0x0
    stw 0, 0x54(31)
    lfs 1, 0x50(31)
L_8002505C:
    stfs 1, 0x20(31)
    lwz 29, 0x64(31)
    .4byte 0x48000010 # b .L_80025074
L_80025068:
    lwz 3, 0x0(29)
    bl fn_80024150
    lwz 29, 0xc(29)
L_80025074:
    cmplwi 29, 0x0
    .4byte 0x4082FFF0 # bne .L_80025068
    lwz 4, 0x64(31)
    .4byte 0x48000074 # b .L_800250F4
L_80025084:
    lwz 30, 0x0(4)
    lwz 29, 0xc(4)
    lbz 0, 0x1e(30)
    cmplwi 0, 0x6
    .4byte 0x4082005C # bne .L_800250F0
    addi 3, 31, 0x64
    bl fn_80087298
    cmplwi 30, 0x0
    .4byte 0x4182004C # beq .L_800250F0
    lis 3, lbl_8049175C@ha
    addic. 0, 30, 0xa8
    addi 0, 3, lbl_8049175C@l
    stw 0, 0x0(30)
    .4byte 0x41820010 # beq .L_800250C8
    addi 3, 30, 0xa8
    li 4, -0x1
    bl fn_8003626C
L_800250C8:
    addic. 0, 30, 0x98
    .4byte 0x41820010 # beq .L_800250DC
    addi 3, 30, 0x98
    li 4, 0x0
    bl fn_80086E44
L_800250DC:
    lis 3, lbl_804B221C@ha
    mr 4, 30
    addi 3, 3, lbl_804B221C@l
    li 5, 0x3b4
    bl fn_80028AD8
L_800250F0:
    mr 4, 29
L_800250F4:
    cmplwi 4, 0x0
    .4byte 0x4082FF8C # bne .L_80025084
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80025118:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    lwz 31, 0x64(3)
    .4byte 0x48000010 # b .L_8002513C
L_80025130:
    lwz 3, 0x0(31)
    bl fn_80025784
    lwz 31, 0xc(31)
L_8002513C:
    cmplwi 31, 0x0
    .4byte 0x4082FFF0 # bne .L_80025130
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025158:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 31, 0x64(3)
    .4byte 0x48000020 # b .L_80025194
L_80025178:
    lbz 0, 0x4(30)
    addi 4, 30, 0x14
    addi 5, 1, 0x8
    stb 0, 0x8(1)
    lwz 3, 0x0(31)
    bl fn_800246A8
    lwz 31, 0xc(31)
L_80025194:
    cmplwi 31, 0x0
    .4byte 0x4082FFE0 # bne .L_80025178
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800251B4:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B221C@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_804B221C@l
    li 4, 0x3b4
    bl fn_80028A8C
    mr. 0, 3
    .4byte 0x41820014 # beq .L_800251F0
    lwz 5, 0x10(31)
    mr 4, 31
    bl fn_80023B74
    mr 0, 3
L_800251F0:
    mr 3, 0
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025208:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 5
    lwz 31, 0x98(4)
    cmplwi 31, 0x0
    .4byte 0x41820090 # beq .L_800252B8
    lbz 0, 0x1e(31)
    cmplwi 0, 0x6
    .4byte 0x41820034 # beq .L_80025268
    cmplwi 4, 0x0
    .4byte 0x41820008 # beq .L_80025244
    addi 4, 4, 0x98
L_80025244:
    addi 3, 3, 0x64
    bl fn_80086F58
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_80025260
    mr 3, 31
    mr 4, 30
    bl fn_80025490
L_80025260:
    li 3, 0x1
    .4byte 0x48000058 # b .L_800252BC
L_80025268:
    cmplwi 31, 0x0
    .4byte 0x4182004C # beq .L_800252B8
    lis 3, lbl_8049175C@ha
    addic. 0, 31, 0xa8
    addi 0, 3, lbl_8049175C@l
    stw 0, 0x0(31)
    .4byte 0x41820010 # beq .L_80025290
    addi 3, 31, 0xa8
    li 4, -0x1
    bl fn_8003626C
L_80025290:
    addic. 0, 31, 0x98
    .4byte 0x41820010 # beq .L_800252A4
    addi 3, 31, 0x98
    li 4, 0x0
    bl fn_80086E44
L_800252A4:
    lis 3, lbl_804B221C@ha
    mr 4, 31
    addi 3, 3, lbl_804B221C@l
    li 5, 0x3b4
    bl fn_80028AD8
L_800252B8:
    li 3, 0x0
L_800252BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800252D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182005C # beq .L_8002534C
    lis 3, lbl_804917C0@ha
    addic. 0, 30, 0x64
    addi 0, 3, lbl_804917C0@l
    stw 0, 0x0(30)
    .4byte 0x41820010 # beq .L_80025314
    addi 3, 30, 0x64
    li 4, 0x0
    bl fn_80086EDC
L_80025314:
    mr 3, 30
    li 4, 0x0
    bl fn_80024B50
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_8002533C
    .4byte 0x800D86D8 # lwz r0, lbl_8053A298@sda21(r0)
    cmplw 0, 30
    .4byte 0x4082000C # bne .L_8002533C
    li 0, 0x0
    .4byte 0x900D86D8 # stw r0, lbl_8053A298@sda21(r0)
L_8002533C:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8002534C
    mr 3, 30
    bl dtor_80084580
L_8002534C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025368:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2328@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2328@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800253B8
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
L_800253B8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800253F0
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
L_800253F0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80025428
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
L_80025428:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80025460
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80025460:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025474:
    lwz 4, 0x0(3)
    cmplwi 4, 0x0
    beqlr
    li 0, 0x0
    stw 0, 0x4(4)
    stw 0, 0x0(3)
    blr

fn_80025490:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_800254BC
    bl fn_80025784
L_800254BC:
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_800254D8
    .4byte 0x41820010 # beq .L_800254D8
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(30)
L_800254D8:
    stw 31, 0x4(30)
    lwz 3, 0x4(30)
    stw 30, 0x0(3)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800254FC:
    lfs 2, 0x0(4)
    lfs 0, 0x0(3)
    lfs 6, 0xc(3)
    fmuls 0, 2, 0
    lfs 5, 0x4(4)
    lfs 4, 0x8(4)
    lfs 3, 0xc(4)
    fmuls 6, 6, 0
    .4byte 0xC0028040 # lfs f0, lbl_8053AFE0@sda21(r0)
    lfs 2, 0x10(4)
    fmuls 1, 1, 6
    stfs 1, 0x0(5)
    lfs 1, 0x4(3)
    lfs 6, 0x10(3)
    fadds 1, 5, 1
    fadds 1, 6, 1
    stfs 1, 0x4(5)
    lfs 1, 0x8(3)
    lfs 5, 0x14(3)
    fmuls 1, 4, 1
    fmuls 1, 5, 1
    stfs 1, 0x8(5)
    lfs 1, 0x18(3)
    fadds 1, 3, 1
    fsubs 0, 1, 0
    stfs 0, 0xc(5)
    lfs 0, 0x1c(3)
    fadds 0, 2, 0
    stfs 0, 0x10(5)
    blr

fn_80025574:
    lis 4, lbl_804917D8@ha
    .4byte 0xC0428044 # lfs f2, lbl_8053AFE4@sda21(r0)
    addi 0, 4, lbl_804917D8@l
    .4byte 0xC0228048 # lfs f1, lbl_8053AFE8@sda21(r0)
    stw 0, 0x0(3)
    .4byte 0xC0028040 # lfs f0, lbl_8053AFE0@sda21(r0)
    stfs 2, 0x48(3)
    stfs 2, 0x50(3)
    stfs 1, 0x4c(3)
    stfs 0, 0x54(3)
    stfs 1, 0x58(3)
    blr

fn_800255A4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0428044 # lfs f2, lbl_8053AFE4@sda21(r0)
    cmplwi 5, 0x0
    stw 0, 0x24(1)
    lwz 0, 0x0(4)
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x0
    .4byte 0xC0228048 # lfs f1, lbl_8053AFE8@sda21(r0)
    stw 3, 0x4(31)
    .4byte 0xC0028040 # lfs f0, lbl_8053AFE0@sda21(r0)
    stw 0, 0x18(31)
    stb 3, 0x1c(31)
    stb 3, 0x1d(31)
    sth 3, 0x1e(31)
    stw 3, 0x20(31)
    stfs 2, 0x48(31)
    stfs 2, 0x50(31)
    stfs 1, 0x4c(31)
    stfs 0, 0x54(31)
    stfs 1, 0x58(31)
    stfs 1, 0x5c(31)
    stw 3, 0x64(31)
    stfs 1, 0x60(31)
    stfs 1, 0x68(31)
    stw 3, 0x70(31)
    stfs 1, 0x6c(31)
    stfs 1, 0x74(31)
    stw 3, 0x7c(31)
    stfs 1, 0x78(31)
    stfs 1, 0x80(31)
    stw 3, 0x88(31)
    stfs 1, 0x84(31)
    stfs 1, 0x8c(31)
    stw 3, 0x94(31)
    stfs 1, 0x90(31)
    stfs 2, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 2, 0x44(31)
    stfs 2, 0x24(31)
    stfs 1, 0x28(31)
    stw 3, 0x30(31)
    stfs 1, 0x2c(31)
    stw 6, 0xc(31)
    stw 3, 0x14(31)
    stw 3, 0x38(31)
    .4byte 0x41820044 # beq .L_800256A4
    lwz 0, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_800256A4
    lwz 0, 0x18(31)
    mr 4, 5
    addi 5, 1, 0x8
    li 6, 0x0
    stw 0, 0x8(1)
    li 7, 0x0
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    stw 3, 0x8(31)
    .4byte 0x4800000C # b .L_800256AC
L_800256A4:
    li 0, 0x0
    stw 0, 0x8(31)
L_800256AC:
    li 0, 0x0
    stw 0, 0x34(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800256C8:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 4, 0x0
    stw 0, 0x14(1)
    .4byte 0x4082000C # bne .L_800256E4
    bl fn_80025784
    .4byte 0x48000094 # b .L_80025774
L_800256E4:
    .4byte 0x41820040 # beq .L_80025724
    lfs 0, 0x24(3)
    lis 0, 0x4330
    .4byte 0xC0628048 # lfs f3, lbl_8053AFE8@sda21(r0)
    stw 4, 0x30(3)
    .4byte 0xC8228050 # lfd f1, lbl_8053AFF0@sda21(r0)
    fsubs 2, 3, 0
    lwz 4, 0x30(3)
    stw 0, 0x8(1)
    stw 4, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x28(3)
    stfs 3, 0x2c(3)
    .4byte 0x4800001C # b .L_8002573C
L_80025724:
    .4byte 0xC0028048 # lfs f0, lbl_8053AFE8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x24(3)
    stfs 0, 0x28(3)
    stw 0, 0x30(3)
    stfs 0, 0x2c(3)
L_8002573C:
    lbz 0, 0x1d(3)
    li 5, 0x0
    rlwimi 0, 5, 7, 24, 24
    li 4, 0x1
    stb 0, 0x1d(3)
    lbz 0, 0x1d(3)
    rlwimi 0, 5, 6, 25, 25
    stb 0, 0x1d(3)
    lbz 0, 0x1f(3)
    rlwimi 0, 4, 3, 28, 28
    stb 0, 0x1f(3)
    lbz 0, 0x1f(3)
    rlwimi 0, 4, 7, 24, 24
    stb 0, 0x1f(3)
L_80025774:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025784:
    lbz 0, 0x1f(3)
    li 5, 0x0
    rlwimi 0, 5, 3, 28, 28
    li 4, 0x1
    stb 0, 0x1f(3)
    lbz 0, 0x1f(3)
    rlwimi 0, 4, 7, 24, 24
    stb 0, 0x1f(3)
    lwz 4, 0x4(3)
    cmplwi 4, 0x0
    beqlr
    stw 5, 0x0(4)
    stw 5, 0x4(3)
    blr

fn_800257BC:
    li 3, 0x0
    blr

fn_800257C4:
    li 3, 0x0
    blr

fn_800257CC:
    li 3, 0x0
    blr

fn_800257D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x8(3)
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_80025814
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x8(31)
    stw 0, 0xc(31)
L_80025814:
    .4byte 0xC0028048 # lfs f0, lbl_8053AFE8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x24(31)
    stfs 0, 0x28(31)
    stw 0, 0x30(31)
    stfs 0, 0x2c(31)
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80025840
    stw 0, 0x0(3)
    stw 0, 0x4(31)
L_80025840:
    li 0, 0x6
    stb 0, 0x1e(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002585C:
    stwu 1, -0x10(1)
    mflr 0
    mr 6, 3
    stw 0, 0x14(1)
    lwz 3, 0x14(3)
    addi 3, 3, 0x1
    clrlwi. 0, 3, 24
    stw 3, 0x14(6)
    .4byte 0x4082001C # bne .L_80025898
    lis 3, lbl_8045C678@ha
    lwz 4, 0x14(6)
    lwz 5, 0x18(6)
    addi 3, 3, lbl_8045C678@l
    crclr 6
    bl fn_80028F54
L_80025898:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800258A8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    li 3, 0x1
    lbz 0, 0x1f(30)
    rlwimi 0, 3, 6, 25, 25
    stb 0, 0x1f(30)
    lbz 3, 0x1f(30)
    extrwi. 0, 3, 1, 24
    .4byte 0x4182002C # beq .L_80025908
    extrwi. 0, 3, 1, 28
    .4byte 0x41820020 # beq .L_80025904
    lwz 0, 0x30(30)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80025908
    lfs 1, 0x24(30)
    .4byte 0xC0028058 # lfs f0, lbl_8053AFF8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80025908
L_80025904:
    li 4, 0x1
L_80025908:
    clrlwi. 0, 4, 24
    .4byte 0x41820028 # beq .L_80025934
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80025934
    li 3, 0x0
    .4byte 0x48000284 # b .L_80025BB4
L_80025934:
    lbz 0, 0x1e(30)
    subfic 0, 0, 0x5
    cntlzw 3, 0
    extrwi. 0, 3, 8, 19
    srwi 4, 3, 5
    .4byte 0x41820010 # beq .L_80025958
    lwz 3, 0x38(30)
    addi 0, 3, 0x1
    stw 0, 0x38(30)
L_80025958:
    lbz 0, 0x1c(30)
    extrwi 3, 0, 1, 25
    neg 0, 3
    or 0, 0, 3
    srwi. 3, 0, 31
    .4byte 0x4082003C # bne .L_800259A8
    lwz 5, 0x30(30)
    lfs 1, 0x24(30)
    cmplwi 5, 0x1
    .4byte 0x40810018 # ble .L_80025994
    subi 0, 5, 0x1
    stw 0, 0x30(30)
    lfs 0, 0x28(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_800259A4
L_80025994:
    .4byte 0x40820010 # bne .L_800259A4
    li 0, 0x0
    stw 0, 0x30(30)
    lfs 1, 0x2c(30)
L_800259A4:
    stfs 1, 0x24(30)
L_800259A8:
    clrlwi. 0, 4, 24
    li 31, 0x0
    .4byte 0x41820010 # beq .L_800259C0
    cmplwi 3, 0x0
    .4byte 0x40820008 # bne .L_800259C0
    li 31, 0x1
L_800259C0:
    clrlwi. 0, 31, 24
    .4byte 0x4182017C # beq .L_80025B40
    lwz 3, 0x64(30)
    lfs 1, 0x48(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_800259EC
    subi 0, 3, 0x1
    stw 0, 0x64(30)
    lfs 0, 0x5c(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_800259FC
L_800259EC:
    .4byte 0x40820010 # bne .L_800259FC
    li 0, 0x0
    stw 0, 0x64(30)
    lfs 1, 0x60(30)
L_800259FC:
    stfs 1, 0x48(30)
    lwz 3, 0x70(30)
    lfs 1, 0x50(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80025A24
    subi 0, 3, 0x1
    stw 0, 0x70(30)
    lfs 0, 0x68(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025A34
L_80025A24:
    .4byte 0x40820010 # bne .L_80025A34
    li 0, 0x0
    stw 0, 0x70(30)
    lfs 1, 0x6c(30)
L_80025A34:
    stfs 1, 0x50(30)
    lwz 3, 0x7c(30)
    lfs 1, 0x4c(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80025A5C
    subi 0, 3, 0x1
    stw 0, 0x7c(30)
    lfs 0, 0x74(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025A6C
L_80025A5C:
    .4byte 0x40820010 # bne .L_80025A6C
    li 0, 0x0
    stw 0, 0x7c(30)
    lfs 1, 0x78(30)
L_80025A6C:
    stfs 1, 0x4c(30)
    lwz 3, 0x94(30)
    lfs 1, 0x58(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80025A94
    subi 0, 3, 0x1
    stw 0, 0x94(30)
    lfs 0, 0x8c(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025AA4
L_80025A94:
    .4byte 0x40820010 # bne .L_80025AA4
    li 0, 0x0
    stw 0, 0x94(30)
    lfs 1, 0x90(30)
L_80025AA4:
    stfs 1, 0x58(30)
    lwz 3, 0x88(30)
    lfs 1, 0x54(30)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80025ACC
    subi 0, 3, 0x1
    stw 0, 0x88(30)
    lfs 0, 0x80(30)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025ADC
L_80025ACC:
    .4byte 0x40820010 # bne .L_80025ADC
    li 0, 0x0
    stw 0, 0x88(30)
    lfs 1, 0x84(30)
L_80025ADC:
    stfs 1, 0x54(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80025AFC
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80025AFC:
    lbz 0, 0x1d(30)
    extrwi. 0, 0, 1, 25
    .4byte 0x4182003C # beq .L_80025B40
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x40820028 # bne .L_80025B38
    lbz 0, 0x1f(30)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    li 3, 0x1
    stb 0, 0x1f(30)
    lbz 0, 0x1f(30)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1f(30)
    .4byte 0x4800000C # b .L_80025B40
L_80025B38:
    subi 0, 3, 0x1
    stw 0, 0x10(30)
L_80025B40:
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820060 # beq .L_80025BA8
    lwz 4, 0x8(30)
    cmplwi 4, 0x0
    .4byte 0x41820054 # beq .L_80025BA8
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    addis 0, 3, 0x1
    stw 3, 0x34(30)
    cmplwi 0, 0xffff
    .4byte 0x4082003C # bne .L_80025BB0
    lbz 0, 0x1d(30)
    extrwi. 0, 0, 1, 24
    .4byte 0x40820030 # bne .L_80025BB0
    lbz 0, 0x1f(30)
    li 3, 0x0
    rlwimi 0, 3, 3, 28, 28
    li 3, 0x1
    stb 0, 0x1f(30)
    lbz 0, 0x1f(30)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1f(30)
    .4byte 0x4800000C # b .L_80025BB0
L_80025BA8:
    li 0, 0x0
    stw 0, 0x34(30)
L_80025BB0:
    mr 3, 31
L_80025BB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025BCC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 26, 0x28(1)
    mr 26, 3
    mr 27, 4
    addi 30, 1, 0x8
    li 29, 0x0
    li 31, 0x0
    li 28, 0x0
    .4byte 0x48000034 # b .L_80025C28
L_80025BF8:
    lwz 3, 0x8(26)
    mr 4, 28
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80025C24
    stwx 3, 30, 31
    addi 29, 29, 0x1
    addi 31, 31, 0x4
L_80025C24:
    addi 28, 28, 0x1
L_80025C28:
    lwz 3, 0xc(26)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    cmpw 28, 3
    .4byte 0x4180FFB8 # blt .L_80025BF8
    mr 3, 27
    mr 4, 29
    bl fn_80036310
    addi 30, 1, 0x8
    li 28, 0x0
    .4byte 0x4800001C # b .L_80025C74
L_80025C5C:
    lwz 5, 0x0(30)
    mr 3, 27
    mr 4, 28
    bl fn_800367C4
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_80025C74:
    lwz 0, 0x1d0(27)
    cmplw 28, 0
    .4byte 0x4180FFE0 # blt .L_80025C5C
    lmw 26, 0x28(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80025C94:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2358@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2358@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80025CE4
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
L_80025CE4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80025D1C
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
L_80025D1C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80025D54
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
L_80025D54:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025D68:
    .4byte 0xC0428060 # lfs f2, lbl_8053B000@sda21(r0)
    li 0, 0x0
    .4byte 0xC0228064 # lfs f1, lbl_8053B004@sda21(r0)
    stfs 2, 0x0(3)
    .4byte 0xC0028068 # lfs f0, lbl_8053B008@sda21(r0)
    stfs 2, 0x8(3)
    stfs 1, 0x4(3)
    stfs 0, 0xc(3)
    stfs 1, 0x10(3)
    stfs 1, 0x14(3)
    stw 0, 0x1c(3)
    stfs 1, 0x18(3)
    stfs 1, 0x20(3)
    stw 0, 0x28(3)
    stfs 1, 0x24(3)
    stfs 1, 0x2c(3)
    stw 0, 0x34(3)
    stfs 1, 0x30(3)
    stfs 1, 0x38(3)
    stw 0, 0x40(3)
    stfs 1, 0x3c(3)
    stfs 1, 0x44(3)
    stw 0, 0x4c(3)
    stfs 1, 0x48(3)
    stfs 2, 0x50(3)
    stfs 2, 0x58(3)
    stfs 1, 0x54(3)
    stfs 0, 0x5c(3)
    stfs 1, 0x60(3)
    blr

fn_80025DE0:
    stwu 1, -0x10(1)
    mflr 0
    mr 6, 3
    stw 0, 0x14(1)
    addi 5, 6, 0x50
    lfs 0, 0x0(3)
    mr 3, 4
    li 4, 0x0
    stfs 0, 0x50(6)
    lfs 0, 0x4(6)
    stfs 0, 0x54(6)
    lfs 0, 0x8(6)
    stfs 0, 0x58(6)
    lfs 0, 0xc(6)
    stfs 0, 0x5c(6)
    lfs 0, 0x10(6)
    stfs 0, 0x60(6)
    bl fn_800367C4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80025E38:
    lwz 4, 0x1c(3)
    lfs 1, 0x0(3)
    cmplwi 4, 0x1
    .4byte 0x40810018 # ble .L_80025E5C
    subi 0, 4, 0x1
    stw 0, 0x1c(3)
    lfs 0, 0x14(3)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025E6C
L_80025E5C:
    .4byte 0x40820010 # bne .L_80025E6C
    li 0, 0x0
    stw 0, 0x1c(3)
    lfs 1, 0x18(3)
L_80025E6C:
    stfs 1, 0x0(3)
    lwz 4, 0x28(3)
    lfs 1, 0x8(3)
    cmplwi 4, 0x1
    .4byte 0x40810018 # ble .L_80025E94
    subi 0, 4, 0x1
    stw 0, 0x28(3)
    lfs 0, 0x20(3)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025EA4
L_80025E94:
    .4byte 0x40820010 # bne .L_80025EA4
    li 0, 0x0
    stw 0, 0x28(3)
    lfs 1, 0x24(3)
L_80025EA4:
    stfs 1, 0x8(3)
    lwz 4, 0x34(3)
    lfs 1, 0x4(3)
    cmplwi 4, 0x1
    .4byte 0x40810018 # ble .L_80025ECC
    subi 0, 4, 0x1
    stw 0, 0x34(3)
    lfs 0, 0x2c(3)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025EDC
L_80025ECC:
    .4byte 0x40820010 # bne .L_80025EDC
    li 0, 0x0
    stw 0, 0x34(3)
    lfs 1, 0x30(3)
L_80025EDC:
    stfs 1, 0x4(3)
    lwz 4, 0x4c(3)
    lfs 1, 0x10(3)
    cmplwi 4, 0x1
    .4byte 0x40810018 # ble .L_80025F04
    subi 0, 4, 0x1
    stw 0, 0x4c(3)
    lfs 0, 0x44(3)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025F14
L_80025F04:
    .4byte 0x40820010 # bne .L_80025F14
    li 0, 0x0
    stw 0, 0x4c(3)
    lfs 1, 0x48(3)
L_80025F14:
    stfs 1, 0x10(3)
    lwz 4, 0x40(3)
    lfs 1, 0xc(3)
    cmplwi 4, 0x1
    .4byte 0x40810018 # ble .L_80025F3C
    subi 0, 4, 0x1
    stw 0, 0x40(3)
    lfs 0, 0x38(3)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80025F4C
L_80025F3C:
    .4byte 0x40820010 # bne .L_80025F4C
    li 0, 0x0
    stw 0, 0x40(3)
    lfs 1, 0x3c(3)
L_80025F4C:
    stfs 1, 0xc(3)
    blr

fn_80025F54:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2380@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2380@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80025FA4
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
L_80025FA4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80025FDC
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
L_80025FDC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026014
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
L_80026014:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8002604C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8002604C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80026060:
    lwz 6, 0x4(3)
    li 7, 0x0
    lwz 0, 0x0(4)
    li 5, 0x0
    mtctr 6
    cmpwi 6, 0x0
    .4byte 0x40810038 # ble .L_800260B0
L_8002607C:
    lwz 6, 0x0(3)
    lwzx 4, 6, 5
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_800260A4
    lwz 4, 0x18(4)
    cmplw 4, 0
    .4byte 0x40820010 # bne .L_800260A4
    slwi 0, 7, 2
    add 3, 6, 0
    blr
L_800260A4:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
    .4byte 0x4200FFD0 # bdnz .L_8002607C
L_800260B0:
    li 3, 0x0
    blr

fn_800260B8:
    lwz 0, 0x4(3)
    li 6, 0x0
    li 4, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081002C # ble .L_800260F8
L_800260D0:
    lwz 5, 0x0(3)
    lwzx 0, 5, 4
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_800260EC
    slwi 0, 6, 2
    add 3, 5, 0
    blr
L_800260EC:
    addi 4, 4, 0x4
    addi 6, 6, 0x1
    .4byte 0x4200FFDC # bdnz .L_800260D0
L_800260F8:
    li 3, 0x0
    blr

fn_80026100:
    lfs 2, 0x0(4)
    li 6, 0x0
    lfs 1, 0x4(4)
    li 5, 0x0
    lfs 0, 0x8(4)
    .4byte 0x48000034 # b .L_80026148
L_80026118:
    lwz 4, 0x0(3)
    lwzx 4, 4, 5
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_80026140
    lwz 4, 0x8(4)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_80026140
    stfs 2, 0x4(4)
    stfs 1, 0x8(4)
    stfs 0, 0xc(4)
L_80026140:
    addi 5, 5, 0x4
    addi 6, 6, 0x1
L_80026148:
    lwz 0, 0x4(3)
    cmpw 6, 0
    .4byte 0x4180FFC8 # blt .L_80026118
    blr

fn_80026158:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B23B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B23B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800261A8
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
L_800261A8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800261E0
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
L_800261E0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026218
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
L_80026218:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002622C:
    clrlwi. 0, 4, 24
    .4byte 0x41820008 # beq .L_80026238
    .4byte 0x906D86D4 # stw r3, lbl_8053A294@sda21(r0)
L_80026238:
    lis 4, lbl_80491808@ha
    addi 0, 4, lbl_80491808@l
    stw 0, 0x0(3)
    blr

fn_80026248:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820038 # beq .L_80026294
    lis 3, lbl_80491808@ha
    addi 0, 3, lbl_80491808@l
    stw 0, 0x0(31)
    .4byte 0x41820018 # beq .L_80026284
    .4byte 0x800D86D4 # lwz r0, lbl_8053A294@sda21(r0)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_80026284
    li 0, 0x0
    .4byte 0x900D86D4 # stw r0, lbl_8053A294@sda21(r0)
L_80026284:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_80026294
    mr 3, 31
    bl dtor_80084580
L_80026294:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800262AC:
    cmplwi 4, 0x0
    stwu 1, -0x10(1)
    .4byte 0x40820014 # bne .L_800262C8
    stfs 1, 0x0(3)
    li 0, 0x0
    stw 0, 0x1c(3)
    .4byte 0x48000038 # b .L_800262FC
L_800262C8:
    lfs 0, 0x0(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8428070 # lfd f2, lbl_8053B010@sda21(r0)
    fsubs 3, 1, 0
    stw 4, 0x1c(3)
    lwz 0, 0x1c(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 3, 0
    stfs 0, 0x14(3)
    stfs 1, 0x18(3)
L_800262FC:
    addi 1, 1, 0x10
    blr

fn_80026304:
    cmplwi 4, 0x0
    stwu 1, -0x10(1)
    .4byte 0x40820014 # bne .L_80026320
    stfs 1, 0x8(3)
    li 0, 0x0
    stw 0, 0x28(3)
    .4byte 0x48000038 # b .L_80026354
L_80026320:
    lfs 0, 0x8(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8428070 # lfd f2, lbl_8053B010@sda21(r0)
    fsubs 3, 1, 0
    stw 4, 0x28(3)
    lwz 0, 0x28(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 3, 0
    stfs 0, 0x20(3)
    stfs 1, 0x24(3)
L_80026354:
    addi 1, 1, 0x10
    blr

fn_8002635C:
    cmplwi 4, 0x0
    stwu 1, -0x10(1)
    .4byte 0x40820014 # bne .L_80026378
    stfs 1, 0x4(3)
    li 0, 0x0
    stw 0, 0x34(3)
    .4byte 0x48000038 # b .L_800263AC
L_80026378:
    lfs 0, 0x4(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8428070 # lfd f2, lbl_8053B010@sda21(r0)
    fsubs 3, 1, 0
    stw 4, 0x34(3)
    lwz 0, 0x34(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 3, 0
    stfs 0, 0x2c(3)
    stfs 1, 0x30(3)
L_800263AC:
    addi 1, 1, 0x10
    blr

fn_800263B4:
    cmplwi 4, 0x0
    stwu 1, -0x10(1)
    .4byte 0x40820014 # bne .L_800263D0
    stfs 1, 0xc(3)
    li 0, 0x0
    stw 0, 0x40(3)
    .4byte 0x48000038 # b .L_80026404
L_800263D0:
    lfs 0, 0xc(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8428070 # lfd f2, lbl_8053B010@sda21(r0)
    fsubs 3, 1, 0
    stw 4, 0x40(3)
    lwz 0, 0x40(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 3, 0
    stfs 0, 0x38(3)
    stfs 1, 0x3c(3)
L_80026404:
    addi 1, 1, 0x10
    blr

fn_8002640C:
    clrlwi. 0, 4, 24
    .4byte 0x41820008 # beq .L_80026418
    .4byte 0x906D86E0 # stw r3, lbl_8053A2A0@sda21(r0)
L_80026418:
    lis 4, lbl_80491830@ha
    addi 0, 4, lbl_80491830@l
    stw 0, 0x0(3)
    blr

fn_80026428:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820038 # beq .L_80026474
    lis 3, lbl_80491830@ha
    addi 0, 3, lbl_80491830@l
    stw 0, 0x0(31)
    .4byte 0x41820018 # beq .L_80026464
    .4byte 0x800D86E0 # lwz r0, lbl_8053A2A0@sda21(r0)
    cmplw 0, 31
    .4byte 0x4082000C # bne .L_80026464
    li 0, 0x0
    .4byte 0x900D86E0 # stw r0, lbl_8053A2A0@sda21(r0)
L_80026464:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_80026474
    mr 3, 31
    bl dtor_80084580
L_80026474:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002648C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B23D8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B23D8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800264DC
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
L_800264DC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026514
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
L_80026514:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8002654C
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
L_8002654C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80026560:
    cmpwi 3, 0x1
    .4byte 0x41820014 # beq .L_80026578
    bgelr
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_80026584
    blr
L_80026578:
    li 0, 0x1
    stb 0, 0x2c5(5)
    blr
L_80026584:
    li 0, 0x1
    stb 0, 0x2c6(5)
    blr

fn_80026590:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl fn_80025574
    mr 4, 29
    addi 3, 29, 0x98
    bl fn_80086E2C
    lis 4, lbl_80491840@ha
    addi 3, 29, 0xa8
    addi 0, 4, lbl_80491840@l
    stw 0, 0x0(29)
    bl fn_8003192C
    li 0, 0x0
    mr 3, 29
    stw 0, 0x290(29)
    stw 31, 0x2c0(29)
    stw 30, 0x2b8(29)
    stw 0, 0x29c(29)
    stb 0, 0x2c5(29)
    stb 0, 0x2c6(29)
    stw 0, 0x2a0(29)
    stw 0, 0x2a4(29)
    stw 0, 0x2a8(29)
    stw 0, 0x2ac(29)
    stw 0, 0x2b0(29)
    stw 0, 0x2b4(29)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002662C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x0(4)
    stw 31, 0x1c(1)
    mr 31, 4
    addi 4, 1, 0xc
    stw 30, 0x18(1)
    mr 30, 3
    stw 8, 0x298(3)
    stw 5, 0x294(3)
    mr 5, 6
    mr 6, 7
    stw 0, 0xc(1)
    bl fn_800255A4
    li 3, 0x0
    stw 3, 0x290(30)
    lwz 0, 0x2c0(30)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_800266A4
    lwz 0, 0x0(31)
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 3, 0x2c0(30)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    stw 3, 0x2bc(30)
    .4byte 0x48000008 # b .L_800266A8
L_800266A4:
    stw 3, 0x2bc(30)
L_800266A8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800266C0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x290(3)
    cmpwi 0, 0x2
    .4byte 0x41820150 # beq .L_8002682C
    .4byte 0x40800014 # bge .L_800266F4
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80026704
    .4byte 0x4080007C # bge .L_80026768
    .4byte 0x4800016C # b .L_8002685C
L_800266F4:
    cmpwi 0, 0x4
    .4byte 0x41820164 # beq .L_8002685C
    .4byte 0x40800160 # bge .L_8002685C
    .4byte 0x48000154 # b .L_80026854
L_80026704:
    lwz 3, 0x2b8(31)
    addi 4, 1, 0x8
    lwz 3, 0x68(3)
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    stw 3, 0x29c(31)
    lwz 4, 0x29c(31)
    cmplwi 4, 0x0
    .4byte 0x41820030 # beq .L_8002675C
    lis 3, fn_80026560@ha
    lwz 5, 0x8(1)
    addi 6, 3, fn_80026560@l
    mr 7, 31
    addi 3, 31, 0xa8
    bl fn_80031A80
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x290(31)
    stw 0, 0x14(31)
    .4byte 0x48000104 # b .L_8002685C
L_8002675C:
    mr 3, 31
    bl fn_8002585C
    .4byte 0x480000F8 # b .L_8002685C
L_80026768:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820090 # beq .L_80026800
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lfs 0, 0x8(3)
    stfs 0, 0x220(31)
    lfs 0, 0x0(3)
    stfs 0, 0x224(31)
    stfs 0, 0x228(31)
    stfs 0, 0x22c(31)
    stfs 0, 0x230(31)
    stfs 0, 0x234(31)
    stfs 0, 0x238(31)
    lfs 0, 0xc(3)
    stfs 0, 0x23c(31)
    stfs 0, 0x240(31)
    stfs 0, 0x244(31)
    stfs 0, 0x248(31)
    stfs 0, 0x24c(31)
    stfs 0, 0x250(31)
    lfs 0, 0x4(3)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x264(31)
    stfs 0, 0x268(31)
    lfs 0, 0x10(3)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    stfs 0, 0x274(31)
    stfs 0, 0x278(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x280(31)
L_80026800:
    li 0, 0x0
    addi 3, 31, 0xa8
    stb 0, 0x2c5(31)
    li 5, -0x1
    lwz 4, 0x294(31)
    bl fn_80031B74
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_8002685C
    li 0, 0x2
    stw 0, 0x290(31)
    .4byte 0x48000034 # b .L_8002685C
L_8002682C:
    lbz 0, 0x2c5(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8002684C
    li 3, 0x0
    li 0, 0x3
    stb 3, 0x2c5(31)
    stw 0, 0x290(31)
    .4byte 0x48000014 # b .L_8002685C
L_8002684C:
    bl fn_8002585C
    .4byte 0x4800000C # b .L_8002685C
L_80026854:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80026860
L_8002685C:
    li 3, 0x0
L_80026860:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80026874:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC0428078 # lfs f2, lbl_8053B018@sda21(r0)
    li 6, 0x0
    stw 0, 0x44(1)
    .4byte 0xC022807C # lfs f1, lbl_8053B01C@sda21(r0)
    stmw 27, 0x2c(1)
    mr 30, 3
    .4byte 0xC0028080 # lfs f0, lbl_8053B020@sda21(r0)
    mr 31, 5
    addi 3, 30, 0x3c
    addi 5, 1, 0x8
    stfs 2, 0x8(1)
    stfs 2, 0x10(1)
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    lbz 0, 0x1c(30)
    extrwi. 0, 0, 1, 24
    .4byte 0x40820010 # bne .L_800268D0
    lbz 0, 0x0(31)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820008 # beq .L_800268D4
L_800268D0:
    li 6, 0x1
L_800268D4:
    clrlwi. 0, 6, 24
    .4byte 0x4182000C # beq .L_800268E4
    .4byte 0xC022807C # lfs f1, lbl_8053B01C@sda21(r0)
    .4byte 0x48000008 # b .L_800268E8
L_800268E4:
    lfs 1, 0x24(30)
L_800268E8:
    bl fn_800254FC
    lwz 3, 0x2bc(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80026910
    lwz 12, 0x0(3)
    mr 4, 30
    addi 5, 1, 0x8
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80026910:
    lwz 0, 0x8(30)
    addi 29, 1, 0x8
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_8002699C
    lwz 0, 0xc(30)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_8002699C
    li 28, 0x0
    .4byte 0x48000050 # b .L_80026980
L_80026934:
    lwz 3, 0x8(30)
    mr 4, 28
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr. 27, 3
    .4byte 0x4182002C # beq .L_8002697C
    lwz 3, 0xc(30)
    mr 6, 28
    addi 4, 1, 0x8
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    mr 29, 27
    .4byte 0x48000024 # b .L_8002699C
L_8002697C:
    addi 28, 28, 0x1
L_80026980:
    lwz 3, 0xc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    cmpw 28, 3
    .4byte 0x4180FF9C # blt .L_80026934
L_8002699C:
    li 0, 0x6
    mr 4, 30
    mtctr 0
L_800269A8:
    lfs 0, 0x8(29)
    stfs 0, 0x220(30)
    lwz 3, 0x2a0(4)
    cmplwi 3, 0x0
    .4byte 0x4182005C # beq .L_80026A14
    lfs 2, 0x0(3)
    lfs 1, 0x0(29)
    .4byte 0xC0028080 # lfs f0, lbl_8053B020@sda21(r0)
    fmuls 1, 2, 1
    stfs 1, 0x224(4)
    lwz 3, 0x2a0(4)
    lfs 1, 0xc(29)
    lfs 2, 0xc(3)
    fadds 1, 2, 1
    fsubs 0, 1, 0
    stfs 0, 0x23c(4)
    lwz 3, 0x2a0(4)
    lfs 0, 0x4(29)
    lfs 1, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x254(4)
    lwz 3, 0x2a0(4)
    lfs 0, 0x10(29)
    lfs 1, 0x10(3)
    fadds 0, 1, 0
    stfs 0, 0x26c(4)
    .4byte 0x48000024 # b .L_80026A34
L_80026A14:
    lfs 0, 0x0(29)
    stfs 0, 0x224(4)
    lfs 0, 0xc(29)
    stfs 0, 0x23c(4)
    lfs 0, 0x4(29)
    stfs 0, 0x254(4)
    lfs 0, 0x10(29)
    stfs 0, 0x26c(4)
L_80026A34:
    addi 4, 4, 0x4
    .4byte 0x4200FF70 # bdnz .L_800269A8
    lbz 0, 0x2c6(30)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_80026AFC
    lbz 0, 0x1e(30)
    cmpwi 0, 0x4
    .4byte 0x41820080 # beq .L_80026AD0
    .4byte 0x408000A8 # bge .L_80026AFC
    cmpwi 0, 0x1
    .4byte 0x41820058 # beq .L_80026AB4
    .4byte 0x4080009C # bge .L_80026AFC
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80026A74
    .4byte 0x48000090 # b .L_80026AFC
    .4byte 0x4800008C # b .L_80026AFC
L_80026A74:
    mr 3, 30
    bl fn_800266C0
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_80026AFC
    li 0, 0x5
    addi 3, 30, 0xa8
    stb 0, 0x1e(30)
    bl fn_80031C30
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_80026AFC
    li 3, 0x0
    li 0, 0x4
    stb 3, 0x2c6(30)
    stb 3, 0x2c4(30)
    stw 0, 0x290(30)
    .4byte 0x4800004C # b .L_80026AFC
L_80026AB4:
    mr 3, 30
    bl fn_800266C0
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80026AFC
    li 0, 0x3
    stb 0, 0x1e(30)
    .4byte 0x48000030 # b .L_80026AFC
L_80026AD0:
    li 0, 0x5
    addi 3, 30, 0xa8
    stb 0, 0x1e(30)
    bl fn_80031C30
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80026AFC
    li 3, 0x0
    li 0, 0x4
    stb 3, 0x2c6(30)
    stb 3, 0x2c4(30)
    stw 0, 0x290(30)
L_80026AFC:
    lwz 0, 0x290(30)
    cmpwi 0, 0x4
    .4byte 0x40820044 # bne .L_80026B48
    lbz 0, 0x1c(30)
    li 29, 0x0
    extrwi. 0, 0, 1, 25
    .4byte 0x40820010 # bne .L_80026B24
    lbz 0, 0x0(31)
    extrwi. 0, 0, 1, 25
    .4byte 0x41820008 # beq .L_80026B28
L_80026B24:
    li 29, 0x1
L_80026B28:
    lbz 0, 0x2c4(30)
    clrlwi 3, 29, 24
    cmplw 3, 0
    .4byte 0x41820014 # beq .L_80026B48
    mr 4, 29
    addi 3, 30, 0xa8
    bl fn_80031C9C
    stb 29, 0x2c4(30)
L_80026B48:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80026B5C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0x2c6(3)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_80026BF0
    bl fn_800257D4
    li 28, 0x0
    lis 3, lbl_804B220C@ha
    mr 27, 31
    mr 29, 28
    addi 30, 3, lbl_804B220C@l
L_80026B94:
    lwz 4, 0x2a0(27)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80026BB0
    mr 3, 30
    li 5, 0x64
    bl fn_80028AD8
    stw 29, 0x2a0(27)
L_80026BB0:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0x6
    .4byte 0x4180FFD8 # blt .L_80026B94
    lwz 4, 0x2bc(31)
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_80026BE8
    lwz 3, 0x2c0(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x2bc(31)
L_80026BE8:
    li 3, 0x1
    .4byte 0x480000C8 # b .L_80026CB4
L_80026BF0:
    lwz 0, 0x290(31)
    cmpwi 0, 0x4
    .4byte 0x418200A4 # beq .L_80026C9C
    .4byte 0x408000B4 # bge .L_80026CB0
    cmpwi 0, 0x2
    .4byte 0x40800084 # bge .L_80026C88
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80026C14
    .4byte 0x480000A0 # b .L_80026CB0
L_80026C14:
    bl fn_800257D4
    li 28, 0x0
    lis 3, lbl_804B220C@ha
    mr 27, 31
    mr 30, 28
    addi 29, 3, lbl_804B220C@l
L_80026C2C:
    lwz 4, 0x2a0(27)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80026C48
    mr 3, 29
    li 5, 0x64
    bl fn_80028AD8
    stw 30, 0x2a0(27)
L_80026C48:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0x6
    .4byte 0x4180FFD8 # blt .L_80026C2C
    lwz 4, 0x2bc(31)
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_80026C80
    lwz 3, 0x2c0(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x2bc(31)
L_80026C80:
    li 3, 0x1
    .4byte 0x48000030 # b .L_80026CB4
L_80026C88:
    li 0, 0x5
    addi 3, 31, 0xa8
    stw 0, 0x290(31)
    bl fn_80031CE4
    .4byte 0x48000018 # b .L_80026CB0
L_80026C9C:
    li 0, 0x6
    addi 3, 31, 0xa8
    stw 0, 0x290(31)
    li 4, 0xa
    bl fn_80031C64
L_80026CB0:
    li 3, 0x0
L_80026CB4:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80026CC8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lbz 0, 0x2c6(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80026D14
    li 4, 0x0
    li 3, 0x1
    stw 4, 0x290(29)
    lbz 0, 0x1f(29)
    rlwimi 0, 4, 3, 28, 28
    stb 0, 0x1f(29)
    lbz 0, 0x1f(29)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1f(29)
L_80026D14:
    mr 3, 29
    bl fn_800258A8
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80026D6C
    li 30, 0x0
    mr 31, 29
L_80026D2C:
    lwz 3, 0x2a0(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80026D3C
    bl fn_80025E38
L_80026D3C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x6
    .4byte 0x4180FFE4 # blt .L_80026D2C
    lwz 3, 0x2bc(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80026D6C
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_80026D6C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80026D88:
    li 3, 0x6
    blr

fn_80026D90:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    slwi 0, 4, 2
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    add 30, 3, 0
    lwz 0, 0x2a0(30)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_80026E0C
    lis 3, lbl_804B220C@ha
    li 4, 0x64
    addi 3, 3, lbl_804B220C@l
    bl fn_80028A8C
    mr. 31, 3
    .4byte 0x4182003C # beq .L_80026E08
    .4byte 0xC0428078 # lfs f2, lbl_8053B018@sda21(r0)
    .4byte 0xC022807C # lfs f1, lbl_8053B01C@sda21(r0)
    stfs 2, 0x0(31)
    .4byte 0xC0028080 # lfs f0, lbl_8053B020@sda21(r0)
    stfs 2, 0x8(31)
    stfs 1, 0x4(31)
    stfs 0, 0xc(31)
    stfs 1, 0x10(31)
    stfs 2, 0x50(31)
    stfs 2, 0x58(31)
    stfs 1, 0x54(31)
    stfs 0, 0x5c(31)
    stfs 1, 0x60(31)
    bl fn_80025D68
L_80026E08:
    stw 31, 0x2a0(30)
L_80026E0C:
    lwz 0, 0x14(1)
    lwz 3, 0x2a0(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80026E28:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    slwi 0, 4, 2
    stw 31, 0xc(1)
    add 31, 3, 0
    lwz 4, 0x2a0(31)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_80026E64
    lis 3, lbl_804B220C@ha
    li 5, 0x64
    addi 3, 3, lbl_804B220C@l
    bl fn_80028AD8
    li 0, 0x0
    stw 0, 0x2a0(31)
L_80026E64:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80026E78:
    li 3, 0x0
    blr

fn_80026E80:
    li 3, 0x0
    blr

fn_80026E88:
    blr

fn_80026E8C:
    li 3, 0x0
    blr

fn_80026E94:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2400@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2400@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026EE4
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
L_80026EE4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026F1C
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
L_80026F1C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026F54
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
L_80026F54:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026F8C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80026F8C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80026FC4
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80026FC4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80026FD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80027008
    lis 5, lbl_80491870@ha
    extsh. 0, 4
    addi 0, 5, lbl_80491870@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80027008
    bl dtor_80084580
L_80027008:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80027020:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x41820008 # beq .L_80027040
    .4byte 0x93ED86D0 # stw r31, lbl_8053A290@sda21(r0)
L_80027040:
    .4byte 0xC0428088 # lfs f2, lbl_8053B028@sda21(r0)
    addi 3, 31, 0x58
    .4byte 0xC022808C # lfs f1, lbl_8053B02C@sda21(r0)
    stfs 2, 0x4(31)
    .4byte 0xC0028090 # lfs f0, lbl_8053B030@sda21(r0)
    stfs 2, 0xc(31)
    stfs 1, 0x8(31)
    stfs 0, 0x10(31)
    stfs 1, 0x14(31)
    bl fn_80086F44
    li 0, 0x0
    .4byte 0xC0428088 # lfs f2, lbl_8053B028@sda21(r0)
    stw 0, 0x64(31)
    mr 3, 31
    .4byte 0xC022808C # lfs f1, lbl_8053B02C@sda21(r0)
    stw 0, 0x68(31)
    .4byte 0xC0028090 # lfs f0, lbl_8053B030@sda21(r0)
    stw 0, 0x6c(31)
    stw 0, 0x54(31)
    stfs 2, 0x4(31)
    stfs 2, 0xc(31)
    stfs 1, 0x8(31)
    stfs 0, 0x10(31)
    stfs 1, 0x14(31)
    stfs 1, 0x18(31)
    stw 0, 0x20(31)
    stfs 1, 0x1c(31)
    stfs 1, 0x24(31)
    stw 0, 0x2c(31)
    stfs 1, 0x28(31)
    stfs 1, 0x30(31)
    stw 0, 0x38(31)
    stfs 1, 0x34(31)
    stfs 1, 0x3c(31)
    stw 0, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x48(31)
    stw 0, 0x50(31)
    stfs 1, 0x4c(31)
    stb 0, 0x0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800270F4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr. 27, 5
    mr 25, 3
    mr 26, 4
    mr 28, 6
    .4byte 0x41820014 # beq .L_80027128
    lwz 3, 0x0(27)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80027128
    bl fn_80025784
L_80027128:
    lwz 0, 0x0(26)
    addi 4, 1, 0x14
    stw 0, 0x14(1)
    lwz 3, 0x64(25)
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    mr. 30, 3
    .4byte 0x4080000C # bge .L_80027158
    li 3, 0x0
    .4byte 0x480000B8 # b .L_8002720C
L_80027158:
    mr 3, 25
    bl fn_800274B4
    .4byte 0x83ED86D4 # lwz r31, lbl_8053A294@sda21(r0)
    mr 29, 3
    li 8, -0x1
    cmplwi 31, 0x0
    .4byte 0x41820028 # beq .L_80027198
    lwz 0, 0x0(26)
    mr 3, 31
    addi 4, 1, 0x10
    stw 0, 0x10(1)
    lwz 12, 0x0(31)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 8, 3
L_80027198:
    cmplwi 29, 0x0
    .4byte 0x4082000C # bne .L_800271A8
    li 3, 0x0
    .4byte 0x48000068 # b .L_8002720C
L_800271A8:
    lwz 0, 0x0(26)
    mr 3, 29
    mr 5, 30
    mr 6, 28
    stw 0, 0xc(1)
    addi 4, 1, 0xc
    lwz 7, 0x54(25)
    bl fn_8002662C
    cmplwi 31, 0x0
    .4byte 0x41820028 # beq .L_800271F4
    lwz 0, 0x0(26)
    mr 3, 31
    mr 5, 29
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 12, 0x0(31)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
L_800271F4:
    cmplwi 27, 0x0
    .4byte 0x41820010 # beq .L_80027208
    mr 3, 29
    mr 4, 27
    bl fn_80025490
L_80027208:
    li 3, 0x0
L_8002720C:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80027220:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 3, 0x20(3)
    lfs 1, 0x4(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80027260
    subi 0, 3, 0x1
    stw 0, 0x20(31)
    lfs 0, 0x18(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80027270
L_80027260:
    .4byte 0x40820010 # bne .L_80027270
    li 0, 0x0
    stw 0, 0x20(31)
    lfs 1, 0x1c(31)
L_80027270:
    stfs 1, 0x4(31)
    lwz 3, 0x2c(31)
    lfs 1, 0xc(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80027298
    subi 0, 3, 0x1
    stw 0, 0x2c(31)
    lfs 0, 0x24(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_800272A8
L_80027298:
    .4byte 0x40820010 # bne .L_800272A8
    li 0, 0x0
    stw 0, 0x2c(31)
    lfs 1, 0x28(31)
L_800272A8:
    stfs 1, 0xc(31)
    lwz 3, 0x38(31)
    lfs 1, 0x8(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_800272D0
    subi 0, 3, 0x1
    stw 0, 0x38(31)
    lfs 0, 0x30(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_800272E0
L_800272D0:
    .4byte 0x40820010 # bne .L_800272E0
    li 0, 0x0
    stw 0, 0x38(31)
    lfs 1, 0x34(31)
L_800272E0:
    stfs 1, 0x8(31)
    lwz 3, 0x50(31)
    lfs 1, 0x14(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80027308
    subi 0, 3, 0x1
    stw 0, 0x50(31)
    lfs 0, 0x48(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80027318
L_80027308:
    .4byte 0x40820010 # bne .L_80027318
    li 0, 0x0
    stw 0, 0x50(31)
    lfs 1, 0x4c(31)
L_80027318:
    stfs 1, 0x14(31)
    lwz 3, 0x44(31)
    lfs 1, 0x10(31)
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_80027340
    subi 0, 3, 0x1
    stw 0, 0x44(31)
    lfs 0, 0x3c(31)
    fadds 1, 1, 0
    .4byte 0x48000014 # b .L_80027350
L_80027340:
    .4byte 0x40820010 # bne .L_80027350
    li 0, 0x0
    stw 0, 0x44(31)
    lfs 1, 0x40(31)
L_80027350:
    stfs 1, 0x10(31)
    lwz 29, 0x58(31)
    .4byte 0x48000010 # b .L_80027368
L_8002735C:
    lwz 3, 0x0(29)
    bl fn_80026CC8
    lwz 29, 0xc(29)
L_80027368:
    cmplwi 29, 0x0
    .4byte 0x4082FFF0 # bne .L_8002735C
    lwz 4, 0x58(31)
    .4byte 0x48000080 # b .L_800273F4
L_80027378:
    lwz 30, 0x0(4)
    lwz 29, 0xc(4)
    lbz 0, 0x1e(30)
    cmplwi 0, 0x6
    .4byte 0x40820068 # bne .L_800273F0
    addi 3, 31, 0x58
    bl fn_80087298
    lwz 4, 0x29c(30)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_800273B4
    lwz 3, 0x68(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_800273B4:
    cmplwi 30, 0x0
    .4byte 0x41820038 # beq .L_800273F0
    lis 3, lbl_80491840@ha
    addic. 0, 30, 0x98
    addi 0, 3, lbl_80491840@l
    stw 0, 0x0(30)
    .4byte 0x41820010 # beq .L_800273DC
    addi 3, 30, 0x98
    li 4, 0x0
    bl fn_80086E44
L_800273DC:
    lis 3, lbl_804B21FC@ha
    mr 4, 30
    addi 3, 3, lbl_804B21FC@l
    li 5, 0x2c8
    bl fn_80028AD8
L_800273F0:
    mr 4, 29
L_800273F4:
    cmplwi 4, 0x0
    .4byte 0x4082FF80 # bne .L_80027378
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80027418:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    lwz 31, 0x58(3)
    .4byte 0x48000010 # b .L_8002743C
L_80027430:
    lwz 3, 0x0(31)
    bl fn_80025784
    lwz 31, 0xc(31)
L_8002743C:
    cmplwi 31, 0x0
    .4byte 0x4082FFF0 # bne .L_80027430
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80027458:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 31, 0x58(3)
    .4byte 0x48000020 # b .L_80027494
L_80027478:
    lbz 0, 0x0(30)
    addi 4, 30, 0x4
    addi 5, 1, 0x8
    stb 0, 0x8(1)
    lwz 3, 0x0(31)
    bl fn_80026874
    lwz 31, 0xc(31)
L_80027494:
    cmplwi 31, 0x0
    .4byte 0x4082FFE0 # bne .L_80027478
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800274B4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_800274E0
    li 3, 0x0
    .4byte 0x48000054 # b .L_80027530
L_800274E0:
    lis 3, lbl_804B21FC@ha
    li 4, 0x2c8
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028A8C
    mr. 31, 3
    .4byte 0x41820014 # beq .L_80027508
    lwz 5, 0x6c(30)
    mr 4, 30
    bl fn_80026590
    mr 31, 3
L_80027508:
    cmplwi 31, 0x0
    .4byte 0x4082000C # bne .L_80027518
    li 3, 0x0
    .4byte 0x4800001C # b .L_80027530
L_80027518:
    mr 4, 31
    .4byte 0x41820008 # beq .L_80027524
    addi 4, 31, 0x98
L_80027524:
    addi 3, 30, 0x58
    bl fn_80086F58
    mr 3, 31
L_80027530:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80027548:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2440@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2440@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80027598
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
L_80027598:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800275D0
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
L_800275D0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80027608
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
L_80027608:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80027640
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80027640:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80027654:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80027684
    lis 5, lbl_80491880@ha
    extsh. 0, 4
    addi 0, 5, lbl_80491880@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80027684
    bl dtor_80084580
L_80027684:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002769C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2470@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B2470@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800276EC
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
L_800276EC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80027724
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
L_80027724:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8002775C
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
L_8002775C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80027770:
    cmplwi 6, 0x0
    beqlr
    srwi. 0, 6, 3
    mtctr 0
    .4byte 0x4182009C # beq .L_8002781C
L_80027784:
    lha 7, 0x0(3)
    lha 0, 0x0(4)
    sth 7, 0x0(5)
    lha 7, 0x2(3)
    sth 0, 0x2(5)
    lha 0, 0x2(4)
    sth 7, 0x4(5)
    lha 7, 0x4(3)
    sth 0, 0x6(5)
    lha 0, 0x4(4)
    sth 7, 0x8(5)
    lha 7, 0x6(3)
    sth 0, 0xa(5)
    lha 0, 0x6(4)
    sth 7, 0xc(5)
    lha 7, 0x8(3)
    sth 0, 0xe(5)
    lha 0, 0x8(4)
    sth 7, 0x10(5)
    lha 7, 0xa(3)
    sth 0, 0x12(5)
    lha 0, 0xa(4)
    sth 7, 0x14(5)
    lha 7, 0xc(3)
    sth 0, 0x16(5)
    lha 0, 0xc(4)
    sth 7, 0x18(5)
    lha 7, 0xe(3)
    addi 3, 3, 0x10
    sth 0, 0x1a(5)
    lha 0, 0xe(4)
    addi 4, 4, 0x10
    sth 7, 0x1c(5)
    sth 0, 0x1e(5)
    addi 5, 5, 0x20
    .4byte 0x4200FF74 # bdnz .L_80027784
    andi. 6, 6, 0x7
    beqlr
L_8002781C:
    mtctr 6
L_80027820:
    lha 7, 0x0(3)
    addi 3, 3, 0x2
    lha 0, 0x0(4)
    addi 4, 4, 0x2
    sth 7, 0x0(5)
    sth 0, 0x2(5)
    addi 5, 5, 0x4
    .4byte 0x4200FFE4 # bdnz .L_80027820
    blr

fn_80027844:
    clrlwi 7, 3, 30
    clrlwi 6, 4, 30
    cmplw 7, 6
    .4byte 0x408200E8 # bne .L_80027938
    clrlwi. 0, 5, 28
    .4byte 0x408200E0 # bne .L_80027938
    srwi. 8, 5, 4
    beqlr
    srwi. 0, 8, 2
    mtctr 0
    .4byte 0x41820098 # beq .L_80027904
L_80027870:
    lwz 7, 0x0(3)
    lwz 6, 0x4(3)
    lwz 5, 0x8(3)
    lwz 0, 0xc(3)
    stw 7, 0x0(4)
    stw 6, 0x4(4)
    stw 5, 0x8(4)
    stw 0, 0xc(4)
    lwz 7, 0x10(3)
    lwz 6, 0x14(3)
    lwz 5, 0x18(3)
    lwz 0, 0x1c(3)
    stw 7, 0x10(4)
    stw 6, 0x14(4)
    stw 5, 0x18(4)
    stw 0, 0x1c(4)
    lwz 7, 0x20(3)
    lwz 6, 0x24(3)
    lwz 5, 0x28(3)
    lwz 0, 0x2c(3)
    stw 7, 0x20(4)
    stw 6, 0x24(4)
    stw 5, 0x28(4)
    stw 0, 0x2c(4)
    lwz 7, 0x30(3)
    lwz 6, 0x34(3)
    lwz 5, 0x38(3)
    lwz 0, 0x3c(3)
    addi 3, 3, 0x40
    stw 7, 0x30(4)
    stw 6, 0x34(4)
    stw 5, 0x38(4)
    stw 0, 0x3c(4)
    addi 4, 4, 0x40
    .4byte 0x4200FF78 # bdnz .L_80027870
    andi. 8, 8, 0x3
    beqlr
L_80027904:
    mtctr 8
L_80027908:
    lwz 7, 0x0(3)
    lwz 6, 0x4(3)
    lwz 5, 0x8(3)
    lwz 0, 0xc(3)
    addi 3, 3, 0x10
    stw 7, 0x0(4)
    stw 6, 0x4(4)
    stw 5, 0x8(4)
    stw 0, 0xc(4)
    addi 4, 4, 0x10
    .4byte 0x4200FFD8 # bdnz .L_80027908
    blr
L_80027938:
    cmplw 7, 6
    .4byte 0x40820158 # bne .L_80027A94
    cmplwi 5, 0x10
    .4byte 0x41800150 # blt .L_80027A94
    cmplwi 7, 0x0
    .4byte 0x41820030 # beq .L_8002797C
    subfic 0, 7, 0x4
    clrlwi 6, 0, 24
    .4byte 0x4800001C # b .L_80027974
L_8002795C:
    lbz 0, 0x0(3)
    subi 5, 5, 0x1
    subi 6, 6, 0x1
    addi 3, 3, 0x1
    stb 0, 0x0(4)
    addi 4, 4, 0x1
L_80027974:
    clrlwi. 0, 6, 24
    .4byte 0x4082FFE4 # bne .L_8002795C
L_8002797C:
    cmplwi 5, 0x4
    srwi 7, 5, 2
    .4byte 0x41800088 # blt .L_80027A0C
    srwi. 6, 7, 3
    slwi 0, 7, 2
    neg 0, 0
    mtctr 6
    .4byte 0x41820058 # beq .L_800279F0
L_8002799C:
    lwz 6, 0x0(3)
    stw 6, 0x0(4)
    lwz 6, 0x4(3)
    stw 6, 0x4(4)
    lwz 6, 0x8(3)
    stw 6, 0x8(4)
    lwz 6, 0xc(3)
    stw 6, 0xc(4)
    lwz 6, 0x10(3)
    stw 6, 0x10(4)
    lwz 6, 0x14(3)
    stw 6, 0x14(4)
    lwz 6, 0x18(3)
    stw 6, 0x18(4)
    lwz 6, 0x1c(3)
    addi 3, 3, 0x20
    stw 6, 0x1c(4)
    addi 4, 4, 0x20
    .4byte 0x4200FFB8 # bdnz .L_8002799C
    andi. 7, 7, 0x7
    .4byte 0x4182001C # beq .L_80027A08
L_800279F0:
    mtctr 7
L_800279F4:
    lwz 6, 0x0(3)
    addi 3, 3, 0x4
    stw 6, 0x0(4)
    addi 4, 4, 0x4
    .4byte 0x4200FFF0 # bdnz .L_800279F4
L_80027A08:
    add 5, 5, 0
L_80027A0C:
    cmplwi 5, 0x0
    beqlr
    beqlr
    srwi. 0, 5, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80027A78
L_80027A24:
    lbz 0, 0x0(3)
    stb 0, 0x0(4)
    lbz 0, 0x1(3)
    stb 0, 0x1(4)
    lbz 0, 0x2(3)
    stb 0, 0x2(4)
    lbz 0, 0x3(3)
    stb 0, 0x3(4)
    lbz 0, 0x4(3)
    stb 0, 0x4(4)
    lbz 0, 0x5(3)
    stb 0, 0x5(4)
    lbz 0, 0x6(3)
    stb 0, 0x6(4)
    lbz 0, 0x7(3)
    addi 3, 3, 0x8
    stb 0, 0x7(4)
    addi 4, 4, 0x8
    .4byte 0x4200FFB8 # bdnz .L_80027A24
    andi. 5, 5, 0x7
    beqlr
L_80027A78:
    mtctr 5
L_80027A7C:
    lbz 0, 0x0(3)
    addi 3, 3, 0x1
    stb 0, 0x0(4)
    addi 4, 4, 0x1
    .4byte 0x4200FFF0 # bdnz .L_80027A7C
    blr
L_80027A94:
    cmplwi 5, 0x0
    beqlr
    srwi. 0, 5, 3
    mtctr 0
    .4byte 0x41820058 # beq .L_80027AFC
L_80027AA8:
    lbz 0, 0x0(3)
    stb 0, 0x0(4)
    lbz 0, 0x1(3)
    stb 0, 0x1(4)
    lbz 0, 0x2(3)
    stb 0, 0x2(4)
    lbz 0, 0x3(3)
    stb 0, 0x3(4)
    lbz 0, 0x4(3)
    stb 0, 0x4(4)
    lbz 0, 0x5(3)
    stb 0, 0x5(4)
    lbz 0, 0x6(3)
    stb 0, 0x6(4)
    lbz 0, 0x7(3)
    addi 3, 3, 0x8
    stb 0, 0x7(4)
    addi 4, 4, 0x8
    .4byte 0x4200FFB8 # bdnz .L_80027AA8
    andi. 5, 5, 0x7
    beqlr
L_80027AFC:
    mtctr 5
L_80027B00:
    lbz 0, 0x0(3)
    addi 3, 3, 0x1
    stb 0, 0x0(4)
    addi 4, 4, 0x1
    .4byte 0x4200FFF0 # bdnz .L_80027B00
    blr

fn_80027B18:
    stwu 1, -0x10(1)
    mflr 0
    mr 6, 3
    stw 0, 0x14(1)
    clrlwi. 0, 4, 27
    .4byte 0x40820014 # bne .L_80027B40
    clrlwi. 0, 3, 27
    .4byte 0x4082000C # bne .L_80027B40
    bl fn_80041018
    .4byte 0x48000240 # b .L_80027D7C
L_80027B40:
    clrlwi. 0, 4, 28
    clrlwi 5, 6, 30
    .4byte 0x408200D4 # bne .L_80027C1C
    cmplwi 5, 0x0
    .4byte 0x408200CC # bne .L_80027C1C
    srwi. 5, 4, 4
    li 4, 0x0
    .4byte 0x41820220 # beq .L_80027D7C
    srwi. 0, 5, 3
    mtctr 0
    .4byte 0x41820094 # beq .L_80027BFC
L_80027B6C:
    stw 4, 0x0(3)
    stw 4, 0x4(3)
    stw 4, 0x8(3)
    stw 4, 0xc(3)
    stw 4, 0x10(3)
    stw 4, 0x14(3)
    stw 4, 0x18(3)
    stw 4, 0x1c(3)
    stw 4, 0x20(3)
    stw 4, 0x24(3)
    stw 4, 0x28(3)
    stw 4, 0x2c(3)
    stw 4, 0x30(3)
    stw 4, 0x34(3)
    stw 4, 0x38(3)
    stw 4, 0x3c(3)
    stw 4, 0x40(3)
    stw 4, 0x44(3)
    stw 4, 0x48(3)
    stw 4, 0x4c(3)
    stw 4, 0x50(3)
    stw 4, 0x54(3)
    stw 4, 0x58(3)
    stw 4, 0x5c(3)
    stw 4, 0x60(3)
    stw 4, 0x64(3)
    stw 4, 0x68(3)
    stw 4, 0x6c(3)
    stw 4, 0x70(3)
    stw 4, 0x74(3)
    stw 4, 0x78(3)
    stw 4, 0x7c(3)
    addi 3, 3, 0x80
    .4byte 0x4200FF7C # bdnz .L_80027B6C
    andi. 5, 5, 0x7
    .4byte 0x41820184 # beq .L_80027D7C
L_80027BFC:
    mtctr 5
L_80027C00:
    stw 4, 0x0(3)
    stw 4, 0x4(3)
    stw 4, 0x8(3)
    stw 4, 0xc(3)
    addi 3, 3, 0x10
    .4byte 0x4200FFEC # bdnz .L_80027C00
    .4byte 0x48000164 # b .L_80027D7C
L_80027C1C:
    cmplwi 4, 0x10
    .4byte 0x41800104 # blt .L_80027D24
    cmplwi 5, 0x0
    .4byte 0x4182002C # beq .L_80027C54
    subfic 0, 5, 0x4
    li 3, 0x0
    clrlwi 5, 0, 24
    .4byte 0x48000014 # b .L_80027C4C
L_80027C3C:
    stb 3, 0x0(6)
    addi 6, 6, 0x1
    subi 4, 4, 0x1
    subi 5, 5, 0x1
L_80027C4C:
    clrlwi. 0, 5, 24
    .4byte 0x4082FFEC # bne .L_80027C3C
L_80027C54:
    cmplwi 4, 0x4
    mr 7, 6
    srwi 5, 4, 2
    li 6, 0x0
    .4byte 0x4180005C # blt .L_80027CC0
    srwi. 3, 5, 3
    slwi 0, 5, 2
    neg 0, 0
    mtctr 3
    .4byte 0x41820034 # beq .L_80027CAC
L_80027C7C:
    stw 6, 0x0(7)
    stw 6, 0x4(7)
    stw 6, 0x8(7)
    stw 6, 0xc(7)
    stw 6, 0x10(7)
    stw 6, 0x14(7)
    stw 6, 0x18(7)
    stw 6, 0x1c(7)
    addi 7, 7, 0x20
    .4byte 0x4200FFDC # bdnz .L_80027C7C
    andi. 5, 5, 0x7
    .4byte 0x41820014 # beq .L_80027CBC
L_80027CAC:
    mtctr 5
L_80027CB0:
    stw 6, 0x0(7)
    addi 7, 7, 0x4
    .4byte 0x4200FFF8 # bdnz .L_80027CB0
L_80027CBC:
    add 4, 4, 0
L_80027CC0:
    cmplwi 4, 0x0
    .4byte 0x418200B8 # beq .L_80027D7C
    mr 5, 7
    li 3, 0x0
    .4byte 0x418200AC # beq .L_80027D7C
    srwi. 0, 4, 3
    mtctr 0
    .4byte 0x41820034 # beq .L_80027D10
L_80027CE0:
    stb 3, 0x0(5)
    stb 3, 0x1(5)
    stb 3, 0x2(5)
    stb 3, 0x3(5)
    stb 3, 0x4(5)
    stb 3, 0x5(5)
    stb 3, 0x6(5)
    stb 3, 0x7(5)
    addi 5, 5, 0x8
    .4byte 0x4200FFDC # bdnz .L_80027CE0
    andi. 4, 4, 0x7
    .4byte 0x41820070 # beq .L_80027D7C
L_80027D10:
    mtctr 4
L_80027D14:
    stb 3, 0x0(5)
    addi 5, 5, 0x1
    .4byte 0x4200FFF8 # bdnz .L_80027D14
    .4byte 0x4800005C # b .L_80027D7C
L_80027D24:
    cmplwi 4, 0x0
    li 3, 0x0
    .4byte 0x41820050 # beq .L_80027D7C
    srwi. 0, 4, 3
    mtctr 0
    .4byte 0x41820034 # beq .L_80027D6C
L_80027D3C:
    stb 3, 0x0(6)
    stb 3, 0x1(6)
    stb 3, 0x2(6)
    stb 3, 0x3(6)
    stb 3, 0x4(6)
    stb 3, 0x5(6)
    stb 3, 0x6(6)
    stb 3, 0x7(6)
    addi 6, 6, 0x8
    .4byte 0x4200FFDC # bdnz .L_80027D3C
    andi. 4, 4, 0x7
    .4byte 0x41820014 # beq .L_80027D7C
L_80027D6C:
    mtctr 4
L_80027D70:
    stb 3, 0x0(6)
    addi 6, 6, 0x1
    .4byte 0x4200FFF8 # bdnz .L_80027D70
L_80027D7C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80027D8C:
    .4byte 0xC00280A8 # lfs f0, lbl_8053B048@sda21(r0)
    li 5, 0x0
    stwu 1, -0x30(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082001C # bne .L_80027DBC
    .4byte 0xC0028098 # lfs f0, lbl_8053B038@sda21(r0)
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    .4byte 0x48000018 # b .L_80027DD0
L_80027DBC:
    .4byte 0xC0028098 # lfs f0, lbl_8053B038@sda21(r0)
    fadds 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
L_80027DD0:
    xoris 3, 4, 0x8000
    lis 0, 0x4330
    stw 3, 0x24(1)
    cmpwi 4, 0x80
    .4byte 0xC84280A0 # lfd f2, lbl_8053B040@sda21(r0)
    stw 0, 0x20(1)
    lfd 0, 0x20(1)
    stw 4, 0x8(1)
    fsubs 0, 0, 2
    fsubs 1, 1, 0
    .4byte 0x40810010 # ble .L_80027E08
    lis 3, lbl_80539D3C@ha
    lfs 1, lbl_80539D3C@l(3)
    .4byte 0x48000090 # b .L_80027E94
L_80027E08:
    addi 0, 4, 0x7f
    .4byte 0xC00280A8 # lfs f0, lbl_8053B048@sda21(r0)
    stw 0, 0x8(1)
    slwi 0, 0, 23
    fcmpo cr0, 1, 0
    stw 0, 0x8(1)
    .4byte 0x40800008 # bge .L_80027E28
    li 5, 0x1
L_80027E28:
    slwi 0, 5, 2
    .4byte 0x386280AC # li r3, lbl_8053B04C@sda21
    lfsx 0, 3, 0
    lis 3, lbl_8045CAB8@ha
    addi 4, 3, lbl_8045CAB8@l
    fadds 7, 1, 0
    .4byte 0x386280B4 # li r3, lbl_8053B054@sda21
    lfs 2, 0x14(4)
    lfs 1, 0x10(4)
    lfs 0, 0xc(4)
    fmadds 1, 7, 2, 1
    lfs 2, 0x8(4)
    lfs 4, 0x4(4)
    lfs 3, 0x0(4)
    fmadds 5, 7, 1, 0
    .4byte 0xC00280C0 # lfs f0, lbl_8053B060@sda21(r0)
    lfsx 6, 3, 0
    .4byte 0xC02280BC # lfs f1, lbl_8053B05C@sda21(r0)
    fmadds 5, 7, 5, 2
    lfs 2, 0x8(1)
    fmadds 4, 7, 5, 4
    fmadds 3, 7, 4, 3
    fmuls 7, 7, 3
    fadds 0, 0, 7
    fmuls 0, 0, 6
    fmadds 0, 1, 6, 0
    fmuls 1, 2, 0
L_80027E94:
    addi 1, 1, 0x30
    blr

fn_80027E9C:
    cmpwi 3, -0x8000
    .4byte 0x4181000C # bgt .L_80027EAC
    li 3, -0x8000
    blr
L_80027EAC:
    cmpwi 3, 0x7fff
    li 0, 0x7fff
    .4byte 0x40800008 # bge .L_80027EBC
    extsh 0, 3
L_80027EBC:
    mr 3, 0
    blr

fn_80027EC4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl OSDisableInterrupts
    li 0, 0x20
    mr 4, 29
    stw 3, 0x8(1)
    li 3, 0x0
    mtctr 0
L_80027F00:
    lwz 0, 0x0(4)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80027F2C
    slwi 0, 3, 3
    lwz 3, 0x8(1)
    stwx 30, 29, 0
    add 4, 29, 0
    stw 31, 0x4(4)
    bl OSRestoreInterrupts
    li 3, 0x1
    .4byte 0x4800001C # b .L_80027F44
L_80027F2C:
    addi 4, 4, 0x8
    addi 3, 3, 0x1
    .4byte 0x4200FFCC # bdnz .L_80027F00
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    li 3, 0x0
L_80027F44:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80027F60:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl OSDisableInterrupts
    li 0, 0x8
    mr 4, 28
    stw 3, 0x8(1)
    li 5, 0x0
    li 3, 0x0
    mtctr 0
L_80027FA8:
    lwz 0, 0x0(4)
    cmplw 0, 29
    .4byte 0x4082001C # bne .L_80027FCC
    lwz 0, 0x4(4)
    cmplw 0, 30
    .4byte 0x40820010 # bne .L_80027FCC
    stw 3, 0x0(4)
    addi 31, 31, 0x1
    stw 3, 0x4(4)
L_80027FCC:
    lwz 0, 0x8(4)
    cmplw 0, 29
    .4byte 0x4082001C # bne .L_80027FF0
    lwz 0, 0xc(4)
    cmplw 0, 30
    .4byte 0x40820010 # bne .L_80027FF0
    stw 3, 0x8(4)
    addi 31, 31, 0x1
    stw 3, 0xc(4)
L_80027FF0:
    lwz 0, 0x10(4)
    cmplw 0, 29
    .4byte 0x4082001C # bne .L_80028014
    lwz 0, 0x14(4)
    cmplw 0, 30
    .4byte 0x40820010 # bne .L_80028014
    stw 3, 0x10(4)
    addi 31, 31, 0x1
    stw 3, 0x14(4)
L_80028014:
    lwz 0, 0x18(4)
    cmplw 0, 29
    .4byte 0x4082001C # bne .L_80028038
    lwz 0, 0x1c(4)
    cmplw 0, 30
    .4byte 0x40820010 # bne .L_80028038
    stw 3, 0x18(4)
    addi 31, 31, 0x1
    stw 3, 0x1c(4)
L_80028038:
    addi 4, 4, 0x20
    addi 5, 5, 0x3
    .4byte 0x4200FF68 # bdnz .L_80027FA8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028070:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
L_80028094:
    lwz 12, 0x0(30)
    cmplwi 12, 0x0
    .4byte 0x41820020 # beq .L_800280BC
    lwz 3, 0x4(30)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_800280BC
    stw 31, 0x0(30)
    stw 31, 0x4(30)
L_800280BC:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x20
    .4byte 0x4180FFCC # blt .L_80028094
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800280E8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052E184@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_8052E184@l
    bl fn_8002811C
    lis 3, lbl_8052E19C@ha
    addi 3, 3, lbl_8052E19C@l
    bl fn_8002819C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002811C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    lwz 30, 0x0(29)
    .4byte 0x4800002C # b .L_80028170
L_80028148:
    lwz 3, 0x0(30)
    lwz 31, 0xc(30)
    lwz 12, 0x10(3)
    lwz 3, 0x14(3)
    mtctr 12
    bctrl
    mr 3, 29
    mr 4, 30
    bl fn_80087298
    mr 30, 31
L_80028170:
    cmplwi 30, 0x0
    .4byte 0x4082FFD4 # bne .L_80028148
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002819C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    lwz 31, 0x0(31)
    .4byte 0x4800001C # b .L_800281D8
L_800281C0:
    lwz 3, 0x0(31)
    lwz 12, 0x10(3)
    lwz 3, 0x14(3)
    mtctr 12
    bctrl
    lwz 31, 0xc(31)
L_800281D8:
    cmplwi 31, 0x0
    .4byte 0x4082FFE4 # bne .L_800281C0
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800281FC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052E184@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_8052E184@l
    bl fn_80086F44
    lis 3, lbl_8052E184@ha
    lis 4, fn_80028268@ha
    lis 5, lbl_804B2498@ha
    addi 3, 3, lbl_8052E184@l
    addi 4, 4, fn_80028268@l
    addi 5, 5, lbl_804B2498@l
    bl __register_global_object
    lis 3, lbl_8052E19C@ha
    addi 3, 3, lbl_8052E19C@l
    bl fn_80086F44
    lis 3, lbl_8052E19C@ha
    lis 4, fn_80028268@ha
    lis 5, lbl_804B24A4@ha
    addi 3, 3, lbl_8052E19C@l
    addi 4, 4, fn_80028268@l
    addi 5, 5, lbl_804B24A4@l
    bl __register_global_object
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80028268:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820020 # beq .L_800282A4
    .4byte 0x4182000C # beq .L_80028294
    li 4, 0x0
    bl fn_80086EDC
L_80028294:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_800282A4
    mr 3, 30
    bl dtor_80084580
L_800282A4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800282C0:
    .4byte 0x806D86F8 # lwz r3, lbl_8053A2B8@sda21(r0)
    blr

fn_800282C8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x800D86F8 # lwz r0, lbl_8053A2B8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80028300
    li 3, 0x0
    .4byte 0x4800005C # b .L_80028358
L_80028300:
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    li 3, 0x88
    li 5, 0x0
    bl fn_8008440C
    mr. 4, 3
    .4byte 0x41820018 # beq .L_8002832C
    mr 4, 29
    mr 5, 30
    mr 6, 31
    bl fn_8002917C
    mr 4, 3
L_8002832C:
    .4byte 0x800D8CE8 # lwz r0, lbl_8053A8A8@sda21(r0)
    .4byte 0x908D86F8 # stw r4, lbl_8053A2B8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80028340
    .4byte 0x48000008 # b .L_80028344
L_80028340:
    .4byte 0x800D8CEC # lwz r0, lbl_8053A8AC@sda21(r0)
L_80028344:
    stw 0, 0x74(4)
    .4byte 0x806D86F8 # lwz r3, lbl_8053A2B8@sda21(r0)
    lwz 3, 0x2c(3)
    bl OSResumeThread
    li 3, 0x1
L_80028358:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028374:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    mr 0, 29
    mr 30, 0
    bl fn_80086F44
    mr 4, 29
    addi 3, 30, 0xc
    bl fn_80086E2C
    stw 31, 0x34(29)
    li 0, 0x0
    addi 3, 29, 0x1c
    stw 0, 0x38(29)
    stw 0, 0x3c(29)
    stw 0, 0x40(29)
    bl OSInitMutex
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800283E8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 28, 3
    addi 3, 28, 0x1c
    mr 29, 4
    stw 3, 0x8(1)
    mr 30, 5
    bl OSLockMutex
    lwz 0, 0x38(28)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8002842C
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x0
    .4byte 0x4800017C # b .L_800285A4
L_8002842C:
    lwz 0, 0x38(29)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80028448
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x0
    .4byte 0x48000160 # b .L_800285A4
L_80028448:
    addi 0, 30, 0x1f
    mr 3, 29
    clrrwi 30, 0, 5
    bl fn_8002890C
    mr 27, 3
    mr 3, 29
    bl fn_80028848
    add 0, 27, 30
    cmplw 0, 3
    .4byte 0x4181003C # bgt .L_800284A8
    mr 3, 29
    bl fn_800287BC
    lwz 0, 0x38(29)
    mr 5, 3
    mr 3, 29
    mr 4, 28
    mr 7, 30
    add 6, 0, 27
    li 8, 0x0
    bl fn_800286DC
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x1
    .4byte 0x48000100 # b .L_800285A4
L_800284A8:
    lwz 7, 0x0(29)
    li 10, -0x1
    lwz 8, 0x38(29)
    li 11, 0x0
    cmplwi 7, 0x0
    li 5, 0x0
    mr 4, 8
    .4byte 0x41820008 # beq .L_800284CC
    subi 7, 7, 0xc
L_800284CC:
    add 6, 8, 3
    .4byte 0x48000054 # b .L_80028524
L_800284D4:
    cmplw 4, 6
    .4byte 0x40800054 # bge .L_8002852C
    lwz 9, 0xc(7)
    lwz 0, 0x38(9)
    subf 0, 4, 0
    cmplw 0, 30
    .4byte 0x4180001C # blt .L_80028508
    cmplw 0, 10
    .4byte 0x40800014 # bge .L_80028508
    mr 5, 9
    mr 31, 4
    mr 10, 0
    li 11, 0x1
L_80028508:
    lwz 7, 0x18(7)
    lwz 4, 0x38(9)
    lwz 0, 0x3c(9)
    cmplwi 7, 0x0
    add 4, 4, 0
    .4byte 0x41820008 # beq .L_80028524
    subi 7, 7, 0xc
L_80028524:
    cmplwi 7, 0x0
    .4byte 0x4082FFAC # bne .L_800284D4
L_8002852C:
    cmplw 4, 8
    .4byte 0x41820038 # beq .L_80028568
    add 0, 8, 3
    cmplw 4, 0
    .4byte 0x4080002C # bge .L_80028568
    lwz 0, 0x3c(29)
    add 0, 8, 0
    subf 0, 4, 0
    cmplw 0, 30
    .4byte 0x41800018 # blt .L_80028568
    cmplw 0, 10
    .4byte 0x40800010 # bge .L_80028568
    mr 31, 4
    li 5, 0x0
    li 11, 0x1
L_80028568:
    clrlwi. 0, 11, 24
    .4byte 0x40820014 # bne .L_80028580
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x0
    .4byte 0x48000028 # b .L_800285A4
L_80028580:
    mr 3, 29
    mr 4, 28
    mr 6, 31
    mr 7, 30
    li 8, 0x0
    bl fn_800286DC
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x1
L_800285A4:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800285B8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    addi 3, 30, 0x1c
    stw 3, 0x8(1)
    bl OSLockMutex
    lwz 0, 0x38(30)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_800285F8
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x0
    .4byte 0x480000D0 # b .L_800286C4
L_800285F8:
    lwz 3, 0x0(30)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80028628
    subi 3, 3, 0xc
    .4byte 0x48000020 # b .L_80028628
L_8002860C:
    lwz 31, 0x18(3)
    cmplwi 31, 0x0
    .4byte 0x41820008 # beq .L_8002861C
    subi 31, 31, 0xc
L_8002861C:
    lwz 3, 0xc(3)
    bl fn_800285B8
    mr 3, 31
L_80028628:
    cmplwi 3, 0x0
    .4byte 0x4082FFE0 # bne .L_8002860C
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820054 # beq .L_8002868C
    lwz 4, 0xc(3)
    lwz 0, 0x40(4)
    cmplw 0, 30
    .4byte 0x40820030 # bne .L_80028678
    lwz 5, 0x14(30)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_8002865C
    subi 5, 5, 0xc
L_8002865C:
    cmplwi 5, 0x0
    .4byte 0x41820010 # beq .L_80028670
    lwz 0, 0xc(5)
    stw 0, 0x40(4)
    .4byte 0x4800000C # b .L_80028678
L_80028670:
    li 0, 0x0
    stw 0, 0x40(4)
L_80028678:
    cmplwi 30, 0x0
    mr 4, 30
    .4byte 0x41820008 # beq .L_80028688
    addi 4, 30, 0xc
L_80028688:
    bl fn_80087298
L_8002868C:
    li 0, 0x0
    stw 0, 0x38(30)
    stw 0, 0x40(30)
    stw 0, 0x3c(30)
    lwz 3, 0x34(30)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_800286B8
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_800286B8:
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x1
L_800286C4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800286DC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 3
    addi 3, 31, 0x1c
    mr 26, 4
    stw 3, 0x8(1)
    mr 27, 5
    mr 28, 6
    mr 29, 7
    mr 30, 8
    bl OSLockMutex
    clrlwi. 0, 30, 24
    .4byte 0x40820054 # bne .L_80028768
    cmplwi 27, 0x0
    .4byte 0x40820018 # bne .L_80028734
    lwz 4, 0x4(31)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_80028744
    subi 4, 4, 0xc
    .4byte 0x48000014 # b .L_80028744
L_80028734:
    lwz 4, 0x14(27)
    cmplwi 4, 0x0
    .4byte 0x41820008 # beq .L_80028744
    subi 4, 4, 0xc
L_80028744:
    cmplwi 4, 0x0
    lwz 3, 0x40(31)
    .4byte 0x4182000C # beq .L_80028758
    lwz 0, 0xc(4)
    .4byte 0x48000008 # b .L_8002875C
L_80028758:
    li 0, 0x0
L_8002875C:
    cmplw 3, 0
    .4byte 0x40820008 # bne .L_80028768
    stw 26, 0x40(31)
L_80028768:
    stw 28, 0x38(26)
    cmplwi 26, 0x0
    li 0, 0x0
    mr 5, 26
    stw 29, 0x3c(26)
    stw 0, 0x40(26)
    .4byte 0x41820008 # beq .L_80028788
    addi 5, 26, 0xc
L_80028788:
    cmplwi 27, 0x0
    mr 4, 27
    .4byte 0x41820008 # beq .L_80028798
    addi 4, 27, 0xc
L_80028798:
    mr 3, 31
    bl fn_800870C8
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800287BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 31, 0x1c
    stw 3, 0x8(1)
    bl OSLockMutex
    lwz 3, 0x40(31)
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_800287FC
    lwz 3, 0x0(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8002880C
    subi 3, 3, 0xc
    .4byte 0x48000014 # b .L_8002880C
L_800287FC:
    lwz 3, 0x18(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002880C
    subi 3, 3, 0xc
L_8002880C:
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_80028824
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 3, 0x0
    .4byte 0x48000014 # b .L_80028834
L_80028824:
    lwz 31, 0xc(3)
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    mr 3, 31
L_80028834:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028848:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    addi 3, 30, 0x1c
    stw 3, 0xc(1)
    bl OSLockMutex
    addi 3, 30, 0x1c
    stw 3, 0x8(1)
    bl OSLockMutex
    lwz 3, 0x40(30)
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_80028898
    lwz 3, 0x0(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_800288A8
    subi 3, 3, 0xc
    .4byte 0x48000014 # b .L_800288A8
L_80028898:
    lwz 3, 0x18(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_800288A8
    subi 3, 3, 0xc
L_800288A8:
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_800288C0
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 31, 0x0
    .4byte 0x48000010 # b .L_800288CC
L_800288C0:
    lwz 31, 0xc(3)
    lwz 3, 0x8(1)
    bl OSUnlockMutex
L_800288CC:
    cmplwi 31, 0x0
    .4byte 0x4082000C # bne .L_800288DC
    lwz 31, 0x3c(30)
    .4byte 0x48000010 # b .L_800288E8
L_800288DC:
    lwz 3, 0x38(30)
    lwz 0, 0x38(31)
    subf 31, 3, 0
L_800288E8:
    lwz 3, 0xc(1)
    bl OSUnlockMutex
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002890C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 31, 0x1c
    stw 3, 0x8(1)
    bl OSLockMutex
    lwz 4, 0x40(31)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80028940
    li 31, 0x0
    .4byte 0x48000018 # b .L_80028954
L_80028940:
    lwz 3, 0x38(4)
    lwz 0, 0x3c(4)
    lwz 4, 0x38(31)
    add 0, 3, 0
    subf 31, 4, 0
L_80028954:
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028974:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    blr

fn_8002898C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr. 29, 3
    .4byte 0x41820030 # beq .L_800289DC
    lwz 3, 0x0(29)
    .4byte 0x48000010 # b .L_800289C4
L_800289B8:
    lwz 31, 0x0(3)
    bl fn_800845A4
    mr 3, 31
L_800289C4:
    cmplwi 3, 0x0
    .4byte 0x4082FFF0 # bne .L_800289B8
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_800289DC
    mr 3, 29
    bl dtor_80084580
L_800289DC:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800289FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x48000024 # b .L_80028A4C
L_80028A2C:
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    mr 3, 31
    li 5, 0x0
    bl fn_80084514
    lwz 0, 0x0(28)
    addi 30, 30, 0x1
    stw 0, 0x0(3)
    stw 3, 0x0(28)
L_80028A4C:
    cmpw 30, 29
    .4byte 0x4180FFDC # blt .L_80028A2C
    lwz 0, 0x4(28)
    add 0, 0, 29
    stw 0, 0x4(28)
    lwz 0, 0x8(28)
    add 0, 0, 29
    stw 0, 0x8(28)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028A8C:
    lwz 6, 0x0(3)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_80028AA0
    li 3, 0x0
    blr
L_80028AA0:
    lwz 0, 0x0(6)
    stw 0, 0x0(3)
    lwz 4, 0x4(3)
    subi 0, 4, 0x1
    stw 0, 0x4(3)
    lwz 4, 0x4(3)
    lwz 0, 0x8(3)
    lwz 5, 0xc(3)
    subf 0, 4, 0
    cmplw 5, 0
    .4byte 0x40800008 # bge .L_80028AD0
    stw 0, 0xc(3)
L_80028AD0:
    mr 3, 6
    blr

fn_80028AD8:
    cmplwi 4, 0x0
    beqlr
    lwz 0, 0x0(3)
    stw 0, 0x0(4)
    stw 4, 0x0(3)
    lwz 4, 0x4(3)
    addi 0, 4, 0x1
    stw 0, 0x4(3)
    blr

fn_80028AFC:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 4
    mr 4, 29
    bl fn_800814D4
    .4byte 0x906D8708 # stw r3, lbl_8053A2C8@sda21(r0)
    mr 4, 29
    li 3, 0x1c
    li 5, 0x0
    bl fn_8008440C
    mr. 31, 3
    .4byte 0x418200A8 # beq .L_80028BE8
    bl OSInitMutex
    li 3, 0x0
    stw 3, 0x18(31)
    lwz 30, 0x18(31)
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_80028B70
    lwz 0, 0x8(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80028B70
    stw 3, 0x4(30)
    .4byte 0x4800007C # b .L_80028BE8
L_80028B70:
    bl fn_80028C0C
    mr 4, 3
    li 3, 0x40c
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80028B9C
    stw 30, 0x0(3)
    li 0, 0x0
    stw 0, 0x4(3)
    stw 0, 0x8(3)
L_80028B9C:
    stw 3, 0x18(31)
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_80028BE8
    .4byte 0x808D8CE8 # lwz r4, lbl_8053A8A8@sda21(r0)
    li 3, 0x40c
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80028BD4
    stw 30, 0x0(3)
    li 0, 0x0
    stw 0, 0x4(3)
    stw 0, 0x8(3)
L_80028BD4:
    stw 3, 0x18(31)
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80028BE8
    stw 30, 0x18(31)
L_80028BE8:
    .4byte 0x93ED870C # stw r31, lbl_8053A2CC@sda21(r0)
    .4byte 0x93AD8700 # stw r29, lbl_8053A2C0@sda21(r0)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028C0C:
    .4byte 0x806D8708 # lwz r3, lbl_8053A2C8@sda21(r0)
    blr

fn_80028C14:
    .4byte 0x806D870C # lwz r3, lbl_8053A2CC@sda21(r0)
    blr

fn_80028C1C:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_804B24BC@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    addi 3, 5, lbl_804B24BC@l
    addi 3, 3, 0x1c
    .4byte 0x93CD8704 # stw r30, lbl_8053A2C4@sda21(r0)
    stw 3, 0x8(1)
    bl OSLockMutex
    addi 0, 30, 0x1f
    lis 3, lbl_804B24BC@ha
    clrrwi 6, 0, 5
    li 4, 0x0
    subf 0, 30, 6
    addi 5, 3, lbl_804B24BC@l
    subf 0, 0, 31
    stw 6, 0x38(5)
    lwz 3, 0x8(1)
    stw 4, 0x40(5)
    stw 0, 0x3c(5)
    bl OSUnlockMutex
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028C98:
    lis 3, lbl_804B24BC@ha
    addi 3, 3, lbl_804B24BC@l
    blr

fn_80028CA4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B24BC@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_804B24BC@l
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80086F44
    mr 4, 30
    addi 3, 31, 0xc
    bl fn_80086E2C
    li 0, 0x0
    addi 3, 30, 0x1c
    stw 0, 0x34(30)
    stw 0, 0x38(30)
    stw 0, 0x3c(30)
    stw 0, 0x40(30)
    bl OSInitMutex
    lis 3, fn_80028D24@ha
    lis 5, lbl_804B24B0@ha
    addi 4, 3, fn_80028D24@l
    mr 3, 30
    addi 5, 5, lbl_804B24B0@l
    bl __register_global_object
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80028D24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820040 # beq .L_80028D80
    .4byte 0x4182002C # beq .L_80028D70
    addic. 0, 30, 0xc
    .4byte 0x41820010 # beq .L_80028D5C
    addi 3, 30, 0xc
    li 4, 0x0
    bl fn_80086E44
L_80028D5C:
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_80028D70
    mr 3, 30
    li 4, 0x0
    bl fn_80086EDC
L_80028D70:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80028D80
    mr 3, 30
    bl dtor_80084580
L_80028D80:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80028D9C:
    blr

fn_80028DA0:
    lwz 3, 0x0(3)
    blr

fn_80028DA8:
    stwu 1, -0x20(1)
    mflr 0
    cmpwi 3, 0x10
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    .4byte 0x40800038 # bge .L_80028DFC
    lis 4, lbl_8052E1A8@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_8052E1A8@l
    lwzx 31, 3, 0
    cmplwi 31, 0x0
    .4byte 0x41820020 # beq .L_80028DFC
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    stw 30, 0x0(31)
    bl OSGetTime
    stw 4, 0x4(31)
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_80028DFC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80028E14:
    stwu 1, -0x30(1)
    mflr 0
    cmpwi 3, 0x10
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    .4byte 0x40800118 # bge .L_80028F40
    lis 4, lbl_8052E1A8@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_8052E1A8@l
    lwzx 31, 3, 0
    cmplwi 31, 0x0
    .4byte 0x41820100 # beq .L_80028F40
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    bl OSGetTime
    lwz 5, 0x4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    lis 3, 0x8000
    subf 4, 5, 4
    .4byte 0xC86280D8 # lfd f3, lbl_8053B078@sda21(r0)
    stw 4, 0x14(1)
    .4byte 0xC00280C8 # lfs f0, lbl_8053B068@sda21(r0)
    lfd 1, 0x10(1)
    stw 0, 0x18(1)
    fsubs 1, 1, 3
    stfs 1, 0x8(31)
    lwz 0, 0xf8(3)
    lfs 2, 0x8(31)
    srwi 0, 0, 2
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 3
    fdivs 0, 1, 0
    fdivs 0, 2, 0
    stfs 0, 0x8(31)
    lfs 0, 0x10(31)
    lfs 1, 0x8(31)
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_80028EC4
    lwz 0, 0x1a8(31)
    cmplwi 0, 0x64
    .4byte 0x40810008 # ble .L_80028EC4
    stfs 1, 0x10(31)
L_80028EC4:
    .4byte 0xC02280D0 # lfs f1, lbl_8053B070@sda21(r0)
    lis 3, 0x51ec
    lfs 0, 0x8(31)
    subi 0, 3, 0x7ae1
    .4byte 0xC04280CC # lfs f2, lbl_8053B06C@sda21(r0)
    fmuls 0, 1, 0
    lfs 1, 0xc(31)
    lwz 3, 0x8(1)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 4, 0x1a8(31)
    lfs 1, 0x14(31)
    mulhwu 0, 0, 4
    srwi 0, 0, 5
    mulli 0, 0, 0x64
    subf 0, 0, 4
    slwi 0, 0, 2
    add 4, 31, 0
    lfs 0, 0x18(4)
    fsubs 0, 1, 0
    stfs 0, 0x14(31)
    lfs 0, 0x8(31)
    stfs 0, 0x18(4)
    lfs 1, 0x14(31)
    lfs 0, 0x8(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    lwz 4, 0x1a8(31)
    addi 0, 4, 0x1
    stw 0, 0x1a8(31)
    bl OSRestoreInterrupts
L_80028F40:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80028F54:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    .4byte 0x40860024 # bne cr1, .L_80028F8C
    stfd 1, 0x28(1)
    stfd 2, 0x30(1)
    stfd 3, 0x38(1)
    stfd 4, 0x40(1)
    stfd 5, 0x48(1)
    stfd 6, 0x50(1)
    stfd 7, 0x58(1)
    stfd 8, 0x60(1)
L_80028F8C:
    .4byte 0x800D8710 # lwz r0, lbl_8053A2D0@sda21(r0)
    stw 3, 0x8(1)
    cmplwi 0, 0x0
    stw 4, 0xc(1)
    stw 5, 0x10(1)
    stw 6, 0x14(1)
    stw 7, 0x18(1)
    stw 8, 0x1c(1)
    stw 9, 0x20(1)
    stw 10, 0x24(1)
    .4byte 0x41820088 # beq .L_8002903C
    lis 3, lbl_804B2500@ha
    addi 4, 1, 0x88
    addi 3, 3, lbl_804B2500@l
    addi 0, 1, 0x8
    lis 5, 0x100
    stw 4, 0x70(1)
    stw 5, 0x6c(1)
    stw 0, 0x74(1)
    stw 3, 0x68(1)
    bl OSLockMutex
    .4byte 0x800D871C # lwz r0, lbl_8053A2DC@sda21(r0)
    mr 5, 31
    .4byte 0x806D8710 # lwz r3, lbl_8053A2D0@sda21(r0)
    addi 6, 1, 0x6c
    slwi 0, 0, 6
    li 4, 0x40
    add 3, 3, 0
    bl fn_8006B4E8
    .4byte 0x806D871C # lwz r3, lbl_8053A2DC@sda21(r0)
    .4byte 0x808D8714 # lwz r4, lbl_8053A2D4@sda21(r0)
    addi 0, 3, 0x1
    cmpw 0, 4
    .4byte 0x900D871C # stw r0, lbl_8053A2DC@sda21(r0)
    .4byte 0x4180000C # blt .L_80029020
    li 0, 0x0
    .4byte 0x900D871C # stw r0, lbl_8053A2DC@sda21(r0)
L_80029020:
    .4byte 0x806D8718 # lwz r3, lbl_8053A2D8@sda21(r0)
    cmpw 3, 4
    .4byte 0x4080000C # bge .L_80029034
    addi 0, 3, 0x1
    .4byte 0x900D8718 # stw r0, lbl_8053A2D8@sda21(r0)
L_80029034:
    lwz 3, 0x68(1)
    bl OSUnlockMutex
L_8002903C:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80029050:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8007C674
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80029070
    li 3, 0x0
    .4byte 0x48000008 # b .L_80029074
L_80029070:
    lwz 3, 0xc(3)
L_80029074:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80029084:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x0(3)
    lwz 4, 0x8(30)
    lwz 5, 0xc(30)
    lhz 6, 0x4(30)
    bl fn_8007CF9C
    lwz 12, 0x10(30)
    mr 31, 3
    cmplwi 12, 0x0
    .4byte 0x41820010 # beq .L_800290CC
    lwz 4, 0x14(30)
    mtctr 12
    bctrl
L_800290CC:
    cmplwi 31, 0x0
    .4byte 0x40820020 # bne .L_800290F0
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80029108
    li 4, -0x1
    li 5, 0x1
    bl OSSendMessage
    .4byte 0x4800001C # b .L_80029108
L_800290F0:
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80029108
    li 4, 0x0
    li 5, 0x1
    bl OSSendMessage
L_80029108:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80029120:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    stw 3, 0x8(1)
    sth 4, 0xc(1)
    stw 5, 0x10(1)
    stw 6, 0x14(1)
    stw 0, 0x20(1)
    stw 7, 0x18(1)
    stw 8, 0x1c(1)
    bl fn_800282C0
    lis 4, fn_80029084@ha
    addi 5, 1, 0x8
    addi 4, 4, fn_80029084@l
    li 6, 0x1c
    bl fn_80029300
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8002917C:
    stwu 1, -0x10(1)
    mflr 0
    mr 7, 4
    stw 0, 0x14(1)
    mr 0, 6
    mr 6, 5
    stw 31, 0xc(1)
    mr 31, 3
    mr 5, 0
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    bl fn_8008552C
    lis 3, lbl_80491898@ha
    li 0, 0x0
    addi 4, 3, lbl_80491898@l
    addi 3, 31, 0x7c
    stw 4, 0x0(31)
    stb 0, 0x84(31)
    bl OSInitThreadQueue
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800291DC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x418200F4 # beq .L_800292E8
    lis 3, lbl_80491898@ha
    addi 0, 3, lbl_80491898@l
    stw 0, 0x0(30)
L_80029204:
    addi 3, 30, 0x30
    addi 4, 1, 0xc
    li 5, 0x0
    bl OSReceiveMessage
    addic. 0, 1, 0x10
    .4byte 0x41820008 # beq .L_80029220
    stw 3, 0x10(1)
L_80029220:
    lwz 0, 0x10(1)
    lwz 28, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x418200A0 # beq .L_800292CC
    bl fn_80028C14
    mr 29, 3
    stw 29, 0x8(1)
    bl OSLockMutex
    lwz 3, 0x18(29)
    li 27, 0x0
    .4byte 0x48000070 # b .L_800292B8
L_8002924C:
    addi 0, 3, 0xc
    li 4, 0x0
    cmplw 0, 28
    .4byte 0x41810014 # bgt .L_8002926C
    addi 0, 3, 0x40c
    cmplw 28, 0
    .4byte 0x40800008 # bge .L_8002926C
    li 4, 0x1
L_8002926C:
    clrlwi. 0, 4, 24
    .4byte 0x41820040 # beq .L_800292B0
    lwz 4, 0x8(3)
    subi 0, 4, 0x1
    stw 0, 0x8(3)
    lwz 0, 0x18(29)
    cmplw 3, 0
    .4byte 0x4182001C # beq .L_800292A4
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_800292A4
    lwz 28, 0x0(3)
    bl dtor_80084580
    stw 28, 0x0(27)
L_800292A4:
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    .4byte 0x4BFFFF58 # b .L_80029204
L_800292B0:
    mr 27, 3
    lwz 3, 0x0(3)
L_800292B8:
    cmplwi 3, 0x0
    .4byte 0x4082FF90 # bne .L_8002924C
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    .4byte 0x4BFFFF3C # b .L_80029204
L_800292CC:
    mr 3, 30
    li 4, 0x0
    bl fn_80085674
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_800292E8
    mr 3, 30
    bl dtor_80084580
L_800292E8:
    mr 3, 30
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80029300:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 31, 6
    mr 28, 3
    mr 29, 4
    mr 30, 5
    addi 26, 31, 0x8
    bl fn_80028C14
    mr 27, 3
    stw 27, 0x8(1)
    bl OSLockMutex
    lwz 25, 0x18(27)
    lwz 0, 0x4(25)
    subfic 0, 0, 0x400
    cmplw 0, 26
    .4byte 0x408000E4 # bge .L_80029428
    cmplwi 26, 0x400
    .4byte 0x40810014 # ble .L_80029360
    mr 3, 27
    bl OSUnlockMutex
    li 27, 0x0
    .4byte 0x480000F8 # b .L_80029454
L_80029360:
    cmplwi 25, 0x0
    .4byte 0x41820020 # beq .L_80029384
    lwz 0, 0x8(25)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80029384
    li 0, 0x0
    li 3, 0x1
    stw 0, 0x4(25)
    .4byte 0x48000090 # b .L_80029410
L_80029384:
    bl fn_80028C0C
    mr 4, 3
    li 3, 0x40c
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_800293B0
    stw 25, 0x0(3)
    li 0, 0x0
    stw 0, 0x4(3)
    stw 0, 0x8(3)
L_800293B0:
    stw 3, 0x18(27)
    lwz 0, 0x18(27)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_800293C8
    li 3, 0x1
    .4byte 0x4800004C # b .L_80029410
L_800293C8:
    .4byte 0x808D8CE8 # lwz r4, lbl_8053A8A8@sda21(r0)
    li 3, 0x40c
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_800293F0
    stw 25, 0x0(3)
    li 0, 0x0
    stw 0, 0x4(3)
    stw 0, 0x8(3)
L_800293F0:
    stw 3, 0x18(27)
    lwz 0, 0x18(27)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80029408
    li 3, 0x1
    .4byte 0x4800000C # b .L_80029410
L_80029408:
    stw 25, 0x18(27)
    li 3, 0x0
L_80029410:
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80029428
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 27, 0x0
    .4byte 0x48000030 # b .L_80029454
L_80029428:
    lwz 5, 0x18(27)
    lwz 3, 0x8(1)
    lwz 4, 0x4(5)
    add 0, 4, 26
    addi 27, 4, 0xc
    stw 0, 0x4(5)
    add 27, 5, 27
    lwz 4, 0x8(5)
    addi 0, 4, 0x1
    stw 0, 0x8(5)
    bl OSUnlockMutex
L_80029454:
    cmplwi 27, 0x0
    .4byte 0x4082000C # bne .L_80029464
    li 27, 0x0
    .4byte 0x48000020 # b .L_80029480
L_80029464:
    li 0, 0x1
    mr 3, 30
    stw 0, 0x4(27)
    mr 5, 31
    addi 4, 27, 0x8
    bl fn_80027844
    stw 29, 0x0(27)
L_80029480:
    cmplwi 27, 0x0
    .4byte 0x4082000C # bne .L_80029490
    li 3, 0x0
    .4byte 0x480000B8 # b .L_80029544
L_80029490:
    mr 4, 27
    addi 3, 28, 0x30
    li 5, 0x0
    bl OSSendMessage
    mr. 29, 3
    .4byte 0x4082009C # bne .L_80029540
    bl fn_80028C14
    mr 28, 3
    stw 28, 0xc(1)
    bl OSLockMutex
    lwz 3, 0x18(28)
    li 26, 0x0
    .4byte 0x48000070 # b .L_80029530
L_800294C4:
    addi 0, 3, 0xc
    li 4, 0x0
    cmplw 0, 27
    .4byte 0x41810014 # bgt .L_800294E4
    addi 0, 3, 0x40c
    cmplw 27, 0
    .4byte 0x40800008 # bge .L_800294E4
    li 4, 0x1
L_800294E4:
    clrlwi. 0, 4, 24
    .4byte 0x41820040 # beq .L_80029528
    lwz 4, 0x8(3)
    subi 0, 4, 0x1
    stw 0, 0x8(3)
    lwz 0, 0x18(28)
    cmplw 3, 0
    .4byte 0x4182001C # beq .L_8002951C
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8002951C
    lwz 27, 0x0(3)
    bl dtor_80084580
    stw 27, 0x0(26)
L_8002951C:
    lwz 3, 0xc(1)
    bl OSUnlockMutex
    .4byte 0x4800001C # b .L_80029540
L_80029528:
    mr 26, 3
    lwz 3, 0x0(3)
L_80029530:
    cmplwi 3, 0x0
    .4byte 0x4082FF90 # bne .L_800294C4
    lwz 3, 0xc(1)
    bl OSUnlockMutex
L_80029540:
    mr 3, 29
L_80029544:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80029558:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 29, 3
    mr 30, 4
    mr 31, 5
    bl fn_80028C14
    mr 28, 3
    stw 28, 0x8(1)
    bl OSLockMutex
    lwz 27, 0x18(28)
    lwz 0, 0x4(27)
    subfic 0, 0, 0x400
    cmplwi 0, 0xc
    .4byte 0x408000CC # bge .L_80029660
    cmplwi 27, 0x0
    .4byte 0x41820020 # beq .L_800295BC
    lwz 0, 0x8(27)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_800295BC
    li 0, 0x0
    li 3, 0x1
    stw 0, 0x4(27)
    .4byte 0x48000090 # b .L_80029648
L_800295BC:
    bl fn_80028C0C
    mr 4, 3
    li 3, 0x40c
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_800295E8
    stw 27, 0x0(3)
    li 0, 0x0
    stw 0, 0x4(3)
    stw 0, 0x8(3)
L_800295E8:
    stw 3, 0x18(28)
    lwz 0, 0x18(28)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80029600
    li 3, 0x1
    .4byte 0x4800004C # b .L_80029648
L_80029600:
    .4byte 0x808D8CE8 # lwz r4, lbl_8053A8A8@sda21(r0)
    li 3, 0x40c
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80029628
    stw 27, 0x0(3)
    li 0, 0x0
    stw 0, 0x4(3)
    stw 0, 0x8(3)
L_80029628:
    stw 3, 0x18(28)
    lwz 0, 0x18(28)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80029640
    li 3, 0x1
    .4byte 0x4800000C # b .L_80029648
L_80029640:
    stw 27, 0x18(28)
    li 3, 0x0
L_80029648:
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80029660
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 27, 0x0
    .4byte 0x48000030 # b .L_8002968C
L_80029660:
    lwz 5, 0x18(28)
    lwz 3, 0x8(1)
    lwz 4, 0x4(5)
    addi 0, 4, 0xc
    stw 0, 0x4(5)
    mr 27, 0
    add 27, 5, 27
    lwz 4, 0x8(5)
    addi 0, 4, 0x1
    stw 0, 0x8(5)
    bl OSUnlockMutex
L_8002968C:
    cmplwi 27, 0x0
    .4byte 0x4082000C # bne .L_8002969C
    li 27, 0x0
    .4byte 0x48000014 # b .L_800296AC
L_8002969C:
    li 0, 0x0
    stw 0, 0x4(27)
    stw 31, 0x8(27)
    stw 30, 0x0(27)
L_800296AC:
    cmplwi 27, 0x0
    .4byte 0x4082000C # bne .L_800296BC
    li 3, 0x0
    .4byte 0x480000B8 # b .L_80029770
L_800296BC:
    mr 4, 27
    addi 3, 29, 0x30
    li 5, 0x0
    bl OSSendMessage
    mr. 30, 3
    .4byte 0x4082009C # bne .L_8002976C
    bl fn_80028C14
    mr 29, 3
    stw 29, 0xc(1)
    bl OSLockMutex
    lwz 3, 0x18(29)
    li 28, 0x0
    .4byte 0x48000070 # b .L_8002975C
L_800296F0:
    addi 0, 3, 0xc
    li 4, 0x0
    cmplw 0, 27
    .4byte 0x41810014 # bgt .L_80029710
    addi 0, 3, 0x40c
    cmplw 27, 0
    .4byte 0x40800008 # bge .L_80029710
    li 4, 0x1
L_80029710:
    clrlwi. 0, 4, 24
    .4byte 0x41820040 # beq .L_80029754
    lwz 4, 0x8(3)
    subi 0, 4, 0x1
    stw 0, 0x8(3)
    lwz 0, 0x18(29)
    cmplw 3, 0
    .4byte 0x4182001C # beq .L_80029748
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80029748
    lwz 27, 0x0(3)
    bl dtor_80084580
    stw 27, 0x0(28)
L_80029748:
    lwz 3, 0xc(1)
    bl OSUnlockMutex
    .4byte 0x4800001C # b .L_8002976C
L_80029754:
    mr 28, 3
    lwz 3, 0x0(3)
L_8002975C:
    cmplwi 3, 0x0
    .4byte 0x4082FF90 # bne .L_800296F0
    lwz 3, 0xc(1)
    bl OSUnlockMutex
L_8002976C:
    mr 3, 30
L_80029770:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80029784:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    li 3, 0x4
    oris 3, 3, 0x4
    mtspr 914, 3
    li 3, 0x5
    oris 3, 3, 0x5
    mtspr 915, 3
    li 3, 0x6
    oris 3, 3, 0x6
    mtspr 916, 3
    li 3, 0x7
    oris 3, 3, 0x7
    mtspr 917, 3
L_800297D4:
    addi 3, 28, 0x30
    addi 4, 1, 0xc
    li 5, 0x1
    bl OSReceiveMessage
    lbz 0, 0x84(28)
    lwz 29, 0xc(1)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_800297FC
    addi 3, 28, 0x7c
    bl OSSleepThread
L_800297FC:
    lwz 0, 0x4(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8002981C
    lwz 12, 0x0(29)
    addi 3, 29, 0x8
    mtctr 12
    bctrl
    .4byte 0x48000014 # b .L_8002982C
L_8002981C:
    lwz 12, 0x0(29)
    lwz 3, 0x8(29)
    mtctr 12
    bctrl
L_8002982C:
    bl fn_80028C14
    mr 31, 3
    stw 31, 0x8(1)
    bl OSLockMutex
    lwz 3, 0x18(31)
    li 30, 0x0
    .4byte 0x48000070 # b .L_800298B4
L_80029848:
    addi 0, 3, 0xc
    li 4, 0x0
    cmplw 0, 29
    .4byte 0x41810014 # bgt .L_80029868
    addi 0, 3, 0x40c
    cmplw 29, 0
    .4byte 0x40800008 # bge .L_80029868
    li 4, 0x1
L_80029868:
    clrlwi. 0, 4, 24
    .4byte 0x41820040 # beq .L_800298AC
    lwz 4, 0x8(3)
    subi 0, 4, 0x1
    stw 0, 0x8(3)
    lwz 0, 0x18(31)
    cmplw 3, 0
    .4byte 0x4182001C # beq .L_800298A0
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_800298A0
    lwz 29, 0x0(3)
    bl dtor_80084580
    stw 29, 0x0(30)
L_800298A0:
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    .4byte 0x4BFFFF2C # b .L_800297D4
L_800298AC:
    mr 30, 3
    lwz 3, 0x0(3)
L_800298B4:
    cmplwi 3, 0x0
    .4byte 0x4082FF90 # bne .L_80029848
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    .4byte 0x4BFFFF10 # b .L_800297D4

fn_800298C8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    li 3, 0x0
    bl fn_80029A50
    bl fn_8002A200
    lis 4, lbl_804B2518@ha
    slwi 28, 3, 1
    addi 30, 4, lbl_804B2518@l
    li 27, 0x0
    mr 29, 28
L_800298FC:
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    mr 3, 29
    li 5, 0x20
    bl fn_80084514
    stw 3, 0x0(30)
    mr 4, 28
    lwz 3, 0x0(30)
    bl fn_80027B18
    lwz 3, 0x0(30)
    mr 4, 28
    bl fn_80040F90
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x3
    .4byte 0x4180FFC8 # blt .L_800298FC
    .4byte 0x880D8000 # lbz r0, lbl_80539BC0@sda21(r0)
    li 5, 0x0
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    slwi 3, 0, 2
    bl fn_80084514
    .4byte 0x906D8720 # stw r3, lbl_8053A2E0@sda21(r0)
    li 27, 0x0
    li 29, 0x0
    .4byte 0x48000048 # b .L_800299A0
L_8002995C:
    bl fn_8002A200
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    slwi 3, 3, 1
    li 5, 0x20
    bl fn_80084514
    .4byte 0x80AD8720 # lwz r5, lbl_8053A2E0@sda21(r0)
    mr 4, 28
    stwx 3, 5, 29
    .4byte 0x806D8720 # lwz r3, lbl_8053A2E0@sda21(r0)
    lwzx 3, 3, 29
    bl fn_80027B18
    .4byte 0x806D8720 # lwz r3, lbl_8053A2E0@sda21(r0)
    mr 4, 28
    lwzx 3, 3, 29
    bl fn_80040F90
    addi 29, 29, 0x4
    addi 27, 27, 0x1
L_800299A0:
    .4byte 0x886D8000 # lbz r3, lbl_80539BC0@sda21(r0)
    cmpw 27, 3
    .4byte 0x4180FFB4 # blt .L_8002995C
    li 0, 0x0
    subi 3, 3, 0x1
    .4byte 0x906D8724 # stw r3, lbl_8053A2E4@sda21(r0)
    .4byte 0x900D8728 # stw r0, lbl_8053A2E8@sda21(r0)
    .4byte 0x900D872C # stw r0, lbl_8053A2EC@sda21(r0)
    bl fn_8002C1AC
    li 3, 0x0
    bl fn_8004F908
    lis 3, lbl_804B2518@ha
    mr 4, 28
    addi 3, 3, lbl_804B2518@l
    lwz 3, 0x8(3)
    bl fn_8004F538
    .4byte 0x806D8740 # lwz r3, lbl_8053A300@sda21(r0)
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    bl fn_8004F6D8
    mr 3, 31
    bl fn_8004F4F4
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80029A10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8004F5C0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80029A30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8004F5D8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80029A50:
    cmpwi 3, 0x0
    .4byte 0x906D8740 # stw r3, lbl_8053A300@sda21(r0)
    .4byte 0x40820018 # bne .L_80029A70
    .4byte 0xC00280E0 # lfs f0, lbl_8053B080@sda21(r0)
    li 0, 0x7
    .4byte 0x900D800C # stw r0, lbl_80539BCC@sda21(r0)
    .4byte 0xD00D8008 # stfs f0, lbl_80539BC8@sda21(r0)
    .4byte 0x48000014 # b .L_80029A80
L_80029A70:
    .4byte 0xC00280E4 # lfs f0, lbl_8053B084@sda21(r0)
    li 0, 0xa
    .4byte 0x900D800C # stw r0, lbl_80539BCC@sda21(r0)
    .4byte 0xD00D8008 # stfs f0, lbl_80539BC8@sda21(r0)
L_80029A80:
    .4byte 0xC02D8008 # lfs f1, lbl_80539BC8@sda21(r0)
    .4byte 0xC00280E8 # lfs f0, lbl_8053B088@sda21(r0)
    fmuls 0, 1, 0
    .4byte 0xD00D8008 # stfs f0, lbl_80539BC8@sda21(r0)
    blr

fn_80029A94:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    .4byte 0x880D874C # lbz r0, lbl_8053A30C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_80029AC0
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D8748 # stw r3, lbl_8053A308@sda21(r0)
    .4byte 0x980D874C # stb r0, lbl_8053A30C@sda21(r0)
L_80029AC0:
    .4byte 0x83ED8734 # lwz r31, lbl_8053A2F4@sda21(r0)
    li 0, 0x0
    cmplwi 31, 0x0
    .4byte 0x900D8734 # stw r0, lbl_8053A2F4@sda21(r0)
    .4byte 0x41820014 # beq .L_80029AE4
    bl fn_8002A200
    slwi 4, 3, 1
    mr 3, 31
    bl fn_8004F538
L_80029AE4:
    bl fn_8002A20C
    .4byte 0x800D8748 # lwz r0, lbl_8053A308@sda21(r0)
    lis 4, lbl_804B2518@ha
    addi 4, 4, lbl_804B2518@l
    mr 31, 3
    slwi 0, 0, 2
    lwzx 3, 4, 0
    mr 4, 31
    bl fn_80029D08
    .4byte 0x800D872C # lwz r0, lbl_8053A2EC@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_80029B18
    bl fn_8002A018
L_80029B18:
    .4byte 0x80AD873C # lwz r5, lbl_8053A2FC@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820038 # beq .L_80029B58
    .4byte 0x800D8004 # lwz r0, lbl_80539BC4@sda21(r0)
    lis 3, lbl_8045CAD0@ha
    .4byte 0x80CD8748 # lwz r6, lbl_8053A308@sda21(r0)
    addi 3, 3, lbl_8045CAD0@l
    slwi 0, 0, 2
    lis 4, lbl_804B2518@ha
    lwzx 12, 3, 0
    addi 3, 4, lbl_804B2518@l
    slwi 0, 6, 2
    mr 4, 31
    lwzx 3, 3, 0
    mtctr 12
    bctrl
L_80029B58:
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    bl fn_8002A200
    .4byte 0x800D8748 # lwz r0, lbl_8053A308@sda21(r0)
    lis 5, lbl_804B2518@ha
    slwi 4, 3, 1
    slwi 0, 0, 2
    addi 3, 5, lbl_804B2518@l
    lwzx 3, 3, 0
    bl fn_80040F90
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    .4byte 0x80AD8748 # lwz r5, lbl_8053A308@sda21(r0)
    lis 3, lbl_804B2518@ha
    addi 3, 3, lbl_804B2518@l
    slwi 4, 5, 2
    addi 0, 5, 0x1
    lwzx 3, 3, 4
    cmplwi 0, 0x3
    .4byte 0x900D8748 # stw r0, lbl_8053A308@sda21(r0)
    .4byte 0x906D8734 # stw r3, lbl_8053A2F4@sda21(r0)
    .4byte 0x4180000C # blt .L_80029BB8
    li 0, 0x0
    .4byte 0x900D8748 # stw r0, lbl_8053A308@sda21(r0)
L_80029BB8:
    .4byte 0x800D8738 # lwz r0, lbl_8053A2F8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80029BDC
    bl fn_8002A20C
    .4byte 0x818D8738 # lwz r12, lbl_8053A2F8@sda21(r0)
    mr 4, 3
    .4byte 0x806D8734 # lwz r3, lbl_8053A2F4@sda21(r0)
    mtctr 12
    bctrl
L_80029BDC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80029BF0:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8045CAE0@ha
    li 3, 0x3
    stw 0, 0x24(1)
    addi 4, 4, lbl_8045CAE0@l
    stw 31, 0x1c(1)
    bl fn_80028DA8
    bl fn_8002CE70
    bl fn_800280E8
    bl fn_8002C47C
    .4byte 0x880D8754 # lbz r0, lbl_8053A314@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_80029C38
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D8750 # stw r3, lbl_8053A310@sda21(r0)
    .4byte 0x980D8754 # stb r0, lbl_8053A314@sda21(r0)
L_80029C38:
    bl OSGetTick
    .4byte 0x800D8750 # lwz r0, lbl_8053A310@sda21(r0)
    .4byte 0x906D8750 # stw r3, lbl_8053A310@sda21(r0)
    subf 31, 0, 3
    bl fn_8002A1F8
    .4byte 0x80AD8758 # lwz r5, lbl_8053A318@sda21(r0)
    lis 4, lbl_804918A8@ha
    addi 4, 4, lbl_804918A8@l
    subf 0, 5, 3
    cmplw 3, 5
    slwi 0, 0, 2
    stwx 31, 4, 0
    .4byte 0x41820054 # beq .L_80029CBC
    lwz 3, 0x0(4)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC86280F8 # lfd f3, lbl_8053B098@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC00280EC # lfs f0, lbl_8053B08C@sda21(r0)
    lfd 1, 0x8(1)
    stw 31, 0x14(1)
    fsubs 2, 1, 3
    stw 0, 0x10(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 3
    fdivs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_80029CBC
    lis 3, lbl_8045CAEC@ha
    addi 3, 3, lbl_8045CAEC@l
    crclr 6
    bl fn_80028F54
    bl fn_8002CC10
L_80029CBC:
    bl fn_8002C1E8
    bl fn_8002CB9C
    bl fn_8002C454
    bl fn_8002A1F0
    .4byte 0xC00280F0 # lfs f0, lbl_8053B090@sda21(r0)
    lis 3, lbl_8052E318@ha
    addi 3, 3, lbl_8052E318@l
    fdivs 1, 0, 1
    bl fn_8002D6C8
    li 3, 0x3
    bl fn_80028E14
    .4byte 0x806D8744 # lwz r3, lbl_8053A304@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0x900D8744 # stw r0, lbl_8053A304@sda21(r0)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80029D08:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 30, 3
    mr 31, 4
    .4byte 0x80AD8728 # lwz r5, lbl_8053A2E8@sda21(r0)
    .4byte 0x886D8000 # lbz r3, lbl_80539BC0@sda21(r0)
    addi 4, 5, 0x1
    cmpw 4, 3
    .4byte 0x40820008 # bne .L_80029D38
    li 4, 0x0
L_80029D38:
    .4byte 0x800D8724 # lwz r0, lbl_8053A2E4@sda21(r0)
    cmpw 4, 0
    .4byte 0x40820288 # bne .L_80029FC8
    cmplwi 3, 0x3
    .4byte 0x41800280 # blt .L_80029FC8
    .4byte 0x808D8720 # lwz r4, lbl_8053A2E0@sda21(r0)
    slwi 3, 5, 2
    cmplwi 31, 0x0
    clrrwi 0, 31, 1
    lwzx 3, 4, 3
    slwi 4, 31, 1
    li 6, 0x0
    subi 3, 3, 0x2
    lhax 0, 3, 0
    lhax 5, 3, 4
    .4byte 0x40810120 # ble .L_80029E94
    cmplwi 31, 0x8
    subi 8, 31, 0x8
    .4byte 0x408100E4 # ble .L_80029E64
    addi 7, 8, 0x7
    li 3, 0x0
    srwi 7, 7, 3
    mtctr 7
    cmplwi 8, 0x0
    .4byte 0x408100CC # ble .L_80029E64
L_80029D9C:
    .4byte 0x80ED8728 # lwz r7, lbl_8053A2E8@sda21(r0)
    addi 28, 3, 0x2
    .4byte 0x810D8720 # lwz r8, lbl_8053A2E0@sda21(r0)
    addi 12, 3, 0x4
    slwi 7, 7, 2
    addi 11, 3, 0x6
    lwzx 7, 8, 7
    addi 10, 3, 0x8
    addi 9, 3, 0xa
    addi 8, 3, 0xc
    sthx 0, 7, 3
    addi 7, 3, 0xe
    addi 3, 3, 0x10
    addi 6, 6, 0x8
    .4byte 0x83AD8728 # lwz r29, lbl_8053A2E8@sda21(r0)
    .4byte 0x836D8720 # lwz r27, lbl_8053A2E0@sda21(r0)
    slwi 29, 29, 2
    lwzx 29, 27, 29
    sthx 0, 29, 28
    .4byte 0x838D8728 # lwz r28, lbl_8053A2E8@sda21(r0)
    .4byte 0x83AD8720 # lwz r29, lbl_8053A2E0@sda21(r0)
    slwi 28, 28, 2
    lwzx 28, 29, 28
    sthx 0, 28, 12
    .4byte 0x818D8728 # lwz r12, lbl_8053A2E8@sda21(r0)
    .4byte 0x838D8720 # lwz r28, lbl_8053A2E0@sda21(r0)
    slwi 12, 12, 2
    lwzx 12, 28, 12
    sthx 0, 12, 11
    .4byte 0x816D8728 # lwz r11, lbl_8053A2E8@sda21(r0)
    .4byte 0x818D8720 # lwz r12, lbl_8053A2E0@sda21(r0)
    slwi 11, 11, 2
    lwzx 11, 12, 11
    sthx 0, 11, 10
    .4byte 0x814D8728 # lwz r10, lbl_8053A2E8@sda21(r0)
    .4byte 0x816D8720 # lwz r11, lbl_8053A2E0@sda21(r0)
    slwi 10, 10, 2
    lwzx 10, 11, 10
    sthx 0, 10, 9
    .4byte 0x812D8728 # lwz r9, lbl_8053A2E8@sda21(r0)
    .4byte 0x814D8720 # lwz r10, lbl_8053A2E0@sda21(r0)
    slwi 9, 9, 2
    lwzx 9, 10, 9
    sthx 0, 9, 8
    .4byte 0x810D8728 # lwz r8, lbl_8053A2E8@sda21(r0)
    .4byte 0x812D8720 # lwz r9, lbl_8053A2E0@sda21(r0)
    slwi 8, 8, 2
    lwzx 8, 9, 8
    sthx 0, 8, 7
    .4byte 0x4200FF3C # bdnz .L_80029D9C
L_80029E64:
    subf 3, 6, 31
    slwi 7, 6, 1
    mtctr 3
    cmplw 6, 31
    .4byte 0x40800020 # bge .L_80029E94
L_80029E78:
    .4byte 0x806D8728 # lwz r3, lbl_8053A2E8@sda21(r0)
    .4byte 0x80CD8720 # lwz r6, lbl_8053A2E0@sda21(r0)
    slwi 3, 3, 2
    lwzx 3, 6, 3
    sthx 0, 3, 7
    addi 7, 7, 0x2
    .4byte 0x4200FFE8 # bdnz .L_80029E78
L_80029E94:
    cmplw 31, 4
    mr 6, 31
    .4byte 0x40800144 # bge .L_80029FE0
    subf 0, 31, 4
    subi 7, 4, 0x8
    cmplwi 0, 0x8
    .4byte 0x408100E8 # ble .L_80029F94
    addi 0, 7, 0x7
    mr 3, 4
    subf 0, 31, 0
    srwi 0, 0, 3
    mtctr 0
    cmplw 31, 7
    .4byte 0x408000CC # bge .L_80029F94
L_80029ECC:
    .4byte 0x800D8728 # lwz r0, lbl_8053A2E8@sda21(r0)
    addi 12, 3, 0x2
    .4byte 0x80ED8720 # lwz r7, lbl_8053A2E0@sda21(r0)
    addi 11, 3, 0x4
    slwi 0, 0, 2
    addi 10, 3, 0x6
    lwzx 28, 7, 0
    addi 9, 3, 0x8
    addi 8, 3, 0xa
    addi 7, 3, 0xc
    sthx 5, 28, 3
    addi 0, 3, 0xe
    addi 3, 3, 0x10
    addi 6, 6, 0x8
    .4byte 0x83AD8728 # lwz r29, lbl_8053A2E8@sda21(r0)
    .4byte 0x838D8720 # lwz r28, lbl_8053A2E0@sda21(r0)
    slwi 29, 29, 2
    lwzx 29, 28, 29
    sthx 5, 29, 12
    .4byte 0x818D8728 # lwz r12, lbl_8053A2E8@sda21(r0)
    .4byte 0x83AD8720 # lwz r29, lbl_8053A2E0@sda21(r0)
    slwi 12, 12, 2
    lwzx 12, 29, 12
    sthx 5, 12, 11
    .4byte 0x816D8728 # lwz r11, lbl_8053A2E8@sda21(r0)
    .4byte 0x818D8720 # lwz r12, lbl_8053A2E0@sda21(r0)
    slwi 11, 11, 2
    lwzx 11, 12, 11
    sthx 5, 11, 10
    .4byte 0x814D8728 # lwz r10, lbl_8053A2E8@sda21(r0)
    .4byte 0x816D8720 # lwz r11, lbl_8053A2E0@sda21(r0)
    slwi 10, 10, 2
    lwzx 10, 11, 10
    sthx 5, 10, 9
    .4byte 0x812D8728 # lwz r9, lbl_8053A2E8@sda21(r0)
    .4byte 0x814D8720 # lwz r10, lbl_8053A2E0@sda21(r0)
    slwi 9, 9, 2
    lwzx 9, 10, 9
    sthx 5, 9, 8
    .4byte 0x810D8728 # lwz r8, lbl_8053A2E8@sda21(r0)
    .4byte 0x812D8720 # lwz r9, lbl_8053A2E0@sda21(r0)
    slwi 8, 8, 2
    lwzx 8, 9, 8
    sthx 5, 8, 7
    .4byte 0x80ED8728 # lwz r7, lbl_8053A2E8@sda21(r0)
    .4byte 0x810D8720 # lwz r8, lbl_8053A2E0@sda21(r0)
    slwi 7, 7, 2
    lwzx 7, 8, 7
    sthx 5, 7, 0
    .4byte 0x4200FF3C # bdnz .L_80029ECC
L_80029F94:
    subf 0, 6, 4
    slwi 7, 6, 1
    mtctr 0
    cmplw 6, 4
    .4byte 0x4080003C # bge .L_80029FE0
L_80029FA8:
    .4byte 0x800D8728 # lwz r0, lbl_8053A2E8@sda21(r0)
    .4byte 0x806D8720 # lwz r3, lbl_8053A2E0@sda21(r0)
    slwi 0, 0, 2
    lwzx 3, 3, 0
    sthx 5, 3, 7
    addi 7, 7, 0x2
    .4byte 0x4200FFE8 # bdnz .L_80029FA8
    .4byte 0x4800001C # b .L_80029FE0
L_80029FC8:
    .4byte 0x908D8728 # stw r4, lbl_8053A2E8@sda21(r0)
    slwi 0, 4, 2
    .4byte 0x806D8720 # lwz r3, lbl_8053A2E0@sda21(r0)
    slwi 4, 31, 2
    lwzx 3, 3, 0
    bl DCInvalidateRange
L_80029FE0:
    .4byte 0x806D8728 # lwz r3, lbl_8053A2E8@sda21(r0)
    slwi 0, 31, 1
    .4byte 0x808D8720 # lwz r4, lbl_8053A2E0@sda21(r0)
    mr 5, 30
    slwi 3, 3, 2
    mr 6, 31
    lwzx 4, 4, 3
    add 3, 4, 0
    bl fn_80027770
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002A018:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_8045CAD0@ha
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    addi 31, 4, lbl_8045CAD0@l
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    .4byte 0x806D8724 # lwz r3, lbl_8053A2E4@sda21(r0)
    .4byte 0x880D8000 # lbz r0, lbl_80539BC0@sda21(r0)
    addi 3, 3, 0x1
    cmpw 3, 0
    .4byte 0x40820008 # bne .L_8002A050
    li 3, 0x0
L_8002A050:
    .4byte 0x800D8728 # lwz r0, lbl_8053A2E8@sda21(r0)
    cmpw 3, 0
    .4byte 0x40820010 # bne .L_8002A068
    li 0, 0x0
    .4byte 0x900D872C # stw r0, lbl_8053A2EC@sda21(r0)
    .4byte 0x48000164 # b .L_8002A1C8
L_8002A068:
    .4byte 0x906D8724 # stw r3, lbl_8053A2E4@sda21(r0)
    bl fn_8002A1F8
    .4byte 0x906D8758 # stw r3, lbl_8053A318@sda21(r0)
    addi 4, 31, 0x30
    li 3, 0x7
    bl fn_80028DA8
    bl fn_8002A20C
    .4byte 0x800D8724 # lwz r0, lbl_8053A2E4@sda21(r0)
    mr 30, 3
    .4byte 0x808D8720 # lwz r4, lbl_8053A2E0@sda21(r0)
    slwi 0, 0, 2
    lwzx 29, 4, 0
    bl fn_8002A1F8
    slwi 0, 30, 1
    mr 4, 29
    add 5, 29, 0
    bl fn_8002CE0C
    li 0, 0x1
    addi 4, 31, 0x10
    .4byte 0x900D872C # stw r0, lbl_8053A2EC@sda21(r0)
    li 3, 0x3
    bl fn_80028DA8
    bl fn_8002CE70
    bl fn_800280E8
    bl fn_8002C47C
    .4byte 0x880D8754 # lbz r0, lbl_8053A314@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_8002A0E8
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D8750 # stw r3, lbl_8053A310@sda21(r0)
    .4byte 0x980D8754 # stb r0, lbl_8053A314@sda21(r0)
L_8002A0E8:
    bl OSGetTick
    .4byte 0x800D8750 # lwz r0, lbl_8053A310@sda21(r0)
    .4byte 0x906D8750 # stw r3, lbl_8053A310@sda21(r0)
    subf 29, 0, 3
    bl fn_8002A1F8
    .4byte 0x80AD8758 # lwz r5, lbl_8053A318@sda21(r0)
    lis 4, lbl_804918A8@ha
    addi 4, 4, lbl_804918A8@l
    subf 0, 5, 3
    cmplw 3, 5
    slwi 0, 0, 2
    stwx 29, 4, 0
    .4byte 0x41820050 # beq .L_8002A168
    lwz 3, 0x0(4)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC86280F8 # lfd f3, lbl_8053B098@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC00280EC # lfs f0, lbl_8053B08C@sda21(r0)
    lfd 1, 0x8(1)
    stw 29, 0x14(1)
    fsubs 2, 1, 3
    stw 0, 0x10(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 3
    fdivs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8002A168
    addi 3, 31, 0x1c
    crclr 6
    bl fn_80028F54
    bl fn_8002CC10
L_8002A168:
    bl fn_8002C1E8
    bl fn_8002CB9C
    bl fn_8002C454
    bl fn_8002A1F0
    .4byte 0xC00280F0 # lfs f0, lbl_8053B090@sda21(r0)
    lis 3, lbl_8052E318@ha
    addi 3, 3, lbl_8052E318@l
    fdivs 1, 0, 1
    bl fn_8002D6C8
    li 3, 0x3
    bl fn_80028E14
    .4byte 0x806D8744 # lwz r3, lbl_8053A304@sda21(r0)
    .4byte 0x818D8730 # lwz r12, lbl_8053A2F0@sda21(r0)
    addi 0, 3, 0x1
    cmplwi 12, 0x0
    .4byte 0x900D8744 # stw r0, lbl_8053A304@sda21(r0)
    .4byte 0x41820020 # beq .L_8002A1C8
    .4byte 0x800D8724 # lwz r0, lbl_8053A2E4@sda21(r0)
    mr 4, 30
    .4byte 0x806D8720 # lwz r3, lbl_8053A2E0@sda21(r0)
    slwi 0, 0, 2
    lwzx 3, 3, 0
    mtctr 12
    bctrl
L_8002A1C8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8002A1E4:
    .4byte 0x906D873C # stw r3, lbl_8053A2FC@sda21(r0)
    .4byte 0x908D8004 # stw r4, lbl_80539BC4@sda21(r0)
    blr

fn_8002A1F0:
    .4byte 0xC02D8008 # lfs f1, lbl_80539BC8@sda21(r0)
    blr

fn_8002A1F8:
    .4byte 0x806D800C # lwz r3, lbl_80539BCC@sda21(r0)
    blr

fn_8002A200:
    .4byte 0x800D800C # lwz r0, lbl_80539BCC@sda21(r0)
    mulli 3, 0, 0xa0
    blr

fn_8002A20C:
    .4byte 0x800D800C # lwz r0, lbl_80539BCC@sda21(r0)
    mulli 3, 0, 0x50
    blr

fn_8002A218:
    stwu 1, -0x20(1)
    mflr 0
    lis 6, lbl_8045CB0C@ha
    stw 0, 0x24(1)
    addi 0, 6, lbl_8045CB0C@l
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    li 3, 0x5
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 4
    mr 4, 0
    bl fn_80028DA8
    mr 12, 29
    mr 3, 28
    mtctr 12
    bctrl
    mr. 31, 3
    .4byte 0x41820050 # beq .L_8002A2B8
    li 3, 0x5
    bl fn_80028E14
    mr 29, 28
    .4byte 0x48000038 # b .L_8002A2B0
L_8002A27C:
    lha 3, 0x0(30)
    lha 0, 0x0(31)
    add 3, 3, 0
    bl fn_80027E9C
    sth 3, 0x0(30)
    lha 3, 0x2(30)
    lha 0, 0x0(31)
    add 3, 3, 0
    bl fn_80027E9C
    sth 3, 0x2(30)
    addi 30, 30, 0x4
    addi 31, 31, 0x2
    subi 29, 29, 0x1
L_8002A2B0:
    cmplwi 29, 0x0
    .4byte 0x4082FFC8 # bne .L_8002A27C
L_8002A2B8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002A2D8:
    stwu 1, -0x20(1)
    mflr 0
    lis 6, lbl_8045CB18@ha
    stw 0, 0x24(1)
    addi 0, 6, lbl_8045CB18@l
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    li 3, 0x5
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 4
    mr 4, 0
    bl fn_80028DA8
    mr 12, 29
    mr 3, 28
    mtctr 12
    bctrl
    mr. 31, 3
    .4byte 0x41820050 # beq .L_8002A378
    li 3, 0x5
    bl fn_80028E14
    mr 29, 28
    .4byte 0x48000038 # b .L_8002A370
L_8002A33C:
    lha 3, 0x0(30)
    lha 0, 0x0(31)
    add 3, 3, 0
    bl fn_80027E9C
    sth 3, 0x0(30)
    lha 3, 0x2(30)
    lha 0, 0x0(31)
    subf 3, 0, 3
    bl fn_80027E9C
    sth 3, 0x2(30)
    addi 30, 30, 0x4
    addi 31, 31, 0x2
    subi 29, 29, 0x1
L_8002A370:
    cmplwi 29, 0x0
    .4byte 0x4082FFC8 # bne .L_8002A33C
L_8002A378:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002A398:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    li 3, 0x5
    stw 29, 0x14(1)
    mr 29, 4
    .4byte 0x38828100 # li r4, lbl_8053B0A0@sda21
    stw 28, 0x10(1)
    mr 28, 5
    bl fn_80028DA8
    mr 12, 28
    mr 3, 29
    mtctr 12
    bctrl
    mr. 31, 3
    .4byte 0x41820078 # beq .L_8002A458
    li 3, 0x5
    bl fn_80028E14
    li 3, 0x6
    .4byte 0x38828108 # li r4, lbl_8053B0A8@sda21
    bl fn_80028DA8
    .4byte 0x800D800C # lwz r0, lbl_80539BCC@sda21(r0)
    mr 28, 29
    mulli 0, 0, 0x50
    slwi 0, 0, 1
    add 29, 31, 0
    .4byte 0x4800003C # b .L_8002A448
L_8002A410:
    lha 3, 0x0(30)
    lha 0, 0x0(29)
    add 3, 3, 0
    bl fn_80027E9C
    sth 3, 0x0(30)
    lha 3, 0x2(30)
    lha 0, 0x0(31)
    add 3, 3, 0
    bl fn_80027E9C
    sth 3, 0x2(30)
    addi 30, 30, 0x4
    addi 29, 29, 0x2
    addi 31, 31, 0x2
    subi 28, 28, 0x1
L_8002A448:
    cmplwi 28, 0x0
    .4byte 0x4082FFC4 # bne .L_8002A410
    li 3, 0x6
    bl fn_80028E14
L_8002A458:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002A478:
    stwu 1, -0x20(1)
    mflr 0
    mr 12, 5
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    mr 29, 4
    mr 3, 29
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_8002A4E8
    mr 31, 30
    mr 30, 3
    slwi 29, 29, 1
    .4byte 0x48000024 # b .L_8002A4E0
L_8002A4C0:
    lha 3, 0x0(31)
    lha 0, 0x0(30)
    add 3, 3, 0
    bl fn_80027E9C
    sth 3, 0x0(31)
    addi 31, 31, 0x2
    addi 30, 30, 0x2
    subi 29, 29, 0x1
L_8002A4E0:
    cmplwi 29, 0x0
    .4byte 0x4082FFDC # bne .L_8002A4C0
L_8002A4E8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002A504:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_8002A54C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2524@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2524@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8002A54C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002A55C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x0
    stw 3, 0x0(31)
    stw 0, 0x8(31)
    stb 3, 0xc(31)
    bl fn_8002C330
    stfs 1, 0x4(31)
    mr 3, 31
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002A5A4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8002A5D4
    li 3, 0x0
    .4byte 0x48000058 # b .L_8002A628
L_8002A5D4:
    stb 5, 0xc(30)
    bl OSDisableInterrupts
    lis 4, fn_8002A66C@ha
    stw 3, 0x8(1)
    addi 3, 4, fn_8002A66C@l
    mr 4, 30
    bl fn_8002C3EC
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8002A608
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    li 3, 0x0
    .4byte 0x48000024 # b .L_8002A628
L_8002A608:
    bl fn_8002C330
    stfs 1, 0x4(30)
    li 0, 0x0
    lwz 3, 0x8(1)
    stw 31, 0x0(30)
    stw 0, 0x8(30)
    bl OSRestoreInterrupts
    li 3, 0x1
L_8002A628:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002A640:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lfs 1, 0x4(3)
    bl fn_8002C308
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002A664:
    lwz 3, 0x8(3)
    blr

fn_8002A66C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 3, 0x0(3)
    cmplwi 3, 0x0
    .4byte 0x40820050 # bne .L_8002A6DC
    li 31, 0x0
L_8002A694:
    mr 3, 31
    bl fn_8002CD70
    lwz 0, 0x0(3)
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_8002A6AC
    bl fn_8002C5A8
L_8002A6AC:
    addi 31, 31, 0x1
    cmplwi 31, 0x40
    .4byte 0x4180FFE0 # blt .L_8002A694
    lbz 0, 0xc(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8002A6CC
    .4byte 0x806D86E8 # lwz r3, lbl_8053A2A8@sda21(r0)
    bl fn_8002A7F0
L_8002A6CC:
    li 0, 0x1
    li 3, -0x1
    stw 0, 0x8(30)
    .4byte 0x48000050 # b .L_8002A728
L_8002A6DC:
    subi 0, 3, 0x1
    stw 0, 0x0(30)
    lwz 31, 0x0(30)
    bl fn_8002C330
    lis 3, 0x4330
    addi 0, 31, 0x1
    stw 31, 0xc(1)
    .4byte 0xC8628110 # lfd f3, lbl_8053B0B0@sda21(r0)
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    stw 0, 0x14(1)
    fsubs 2, 0, 3
    stw 3, 0x10(1)
    lfd 0, 0x10(1)
    fmuls 1, 2, 1
    fsubs 0, 0, 3
    fdivs 1, 1, 0
    bl fn_8002C308
    li 3, 0x0
L_8002A728:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002A740:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x88
    stw 30, 0x8(1)
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    bl fn_8008440C
    mr. 5, 3
    .4byte 0x4182004C # beq .L_8002A7B8
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    mr 30, 5
    mr 7, 31
    li 5, 0x1000
    li 6, 0x10
    bl fn_8008552C
    addic. 4, 30, 0x7c
    .4byte 0x41820008 # beq .L_8002A794
    subi 4, 4, 0x7c
L_8002A794:
    lis 3, lbl_804918D0@ha
    .4byte 0x908D86E8 # stw r4, lbl_8053A2A8@sda21(r0)
    addi 3, 3, lbl_804918D0@l
    li 0, 0x0
    stw 3, 0x0(30)
    addi 3, 30, 0x7c
    stb 0, 0x84(30)
    bl OSInitThreadQueue
    mr 5, 30
L_8002A7B8:
    .4byte 0x800D8CE8 # lwz r0, lbl_8053A8A8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8002A7C8
    .4byte 0x48000008 # b .L_8002A7CC
L_8002A7C8:
    .4byte 0x800D8CEC # lwz r0, lbl_8053A8AC@sda21(r0)
L_8002A7CC:
    stw 0, 0x74(5)
    lwz 3, 0x2c(5)
    bl OSResumeThread
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002A7F0:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x2
    addi 3, 3, 0x30
    stw 0, 0x14(1)
    li 5, 0x1
    bl OSJamMessage
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002A81C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x4
    oris 3, 3, 0x4
    mtspr 914, 3
    li 3, 0x5
    oris 3, 3, 0x5
    mtspr 915, 3
    li 3, 0x6
    oris 3, 3, 0x6
    mtspr 916, 3
    li 3, 0x7
    oris 3, 3, 0x7
    mtspr 917, 3
    lis 4, fn_8002A958@ha
    addi 3, 4, fn_8002A958@l
    bl fn_800298C8
    lis 4, fn_8002A9A8@ha
    addi 3, 4, fn_8002A9A8@l
    bl fn_8002CD80
    bl fn_8002CE98
    bl fn_8002C630
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x48
    li 4, 0x10c
    bl fn_800289FC
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    bl fn_80029A10
L_8002A8A8:
    addi 3, 31, 0x30
    addi 4, 1, 0xc
    li 5, 0x1
    bl OSReceiveMessage
    lwz 0, 0xc(1)
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_8002A904
    .4byte 0x40800010 # bge .L_8002A8D4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8002A8E0
    .4byte 0x4BFFFFD8 # b .L_8002A8A8
L_8002A8D4:
    cmpwi 0, 0x3
    .4byte 0x4080FFD0 # bge .L_8002A8A8
    .4byte 0x4800006C # b .L_8002A948
L_8002A8E0:
    lbz 0, 0x84(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8002A8F8
    bl fn_80029A30
    addi 3, 31, 0x7c
    bl OSSleepThread
L_8002A8F8:
    bl fn_80029A94
    bl fn_8002C4A4
    .4byte 0x4BFFFFA8 # b .L_8002A8A8
L_8002A904:
    .4byte 0x808D8758 # lwz r4, lbl_8053A318@sda21(r0)
    subi 0, 4, 0x1
    .4byte 0x900D8758 # stw r0, lbl_8053A318@sda21(r0)
    .4byte 0x800D8758 # lwz r0, lbl_8053A318@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8002A92C
    li 3, 0x7
    bl fn_80028E14
    bl fn_8002A018
    .4byte 0x4BFFFF80 # b .L_8002A8A8
L_8002A92C:
    li 3, 0x2
    .4byte 0x38828118 # li r4, lbl_8053B0B8@sda21
    bl fn_80028DA8
    bl fn_80029BF0
    li 3, 0x2
    bl fn_80028E14
    .4byte 0x4BFFFF64 # b .L_8002A8A8
L_8002A948:
    bl fn_80029A30
    li 3, 0x0
    bl OSExitThread
    .4byte 0x4BFFFF54 # b .L_8002A8A8

fn_8002A958:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x4
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    .4byte 0x83ED86E8 # lwz r31, lbl_8053A2A8@sda21(r0)
    bl fn_80028E14
    lis 4, lbl_8045CB28@ha
    li 3, 0x4
    addi 4, 4, lbl_8045CB28@l
    bl fn_80028DA8
    addi 3, 31, 0x30
    li 4, 0x0
    li 5, 0x0
    bl OSSendMessage
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002A9A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    .4byte 0x83ED86E8 # lwz r31, lbl_8053A2A8@sda21(r0)
L_8002A9BC:
    bl fn_80051CC4
    cmplwi 3, 0x0
    .4byte 0x4182FFF8 # beq .L_8002A9BC
    bl fn_80051CD4
    srwi 0, 3, 16
    cmplwi 0, 0xf355
    .4byte 0x4082002C # bne .L_8002AA00
    rlwinm 0, 3, 0, 16, 23
    cmplwi 0, 0xff00
    .4byte 0x40820018 # bne .L_8002A9F8
    addi 3, 31, 0x30
    li 4, 0x1
    li 5, 0x0
    bl OSSendMessage
    .4byte 0x4800000C # b .L_8002AA00
L_8002A9F8:
    clrlwi 3, 3, 16
    bl fn_8002CDEC
L_8002AA00:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002AA14:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820054 # beq .L_8002AA84
    lis 3, lbl_804918D0@ha
    addic. 0, 30, 0x7c
    addi 0, 3, lbl_804918D0@l
    stw 0, 0x0(30)
    .4byte 0x41820024 # beq .L_8002AA68
    addic. 3, 30, 0x7c
    .4byte 0x41820008 # beq .L_8002AA54
    subi 3, 3, 0x7c
L_8002AA54:
    .4byte 0x800D86E8 # lwz r0, lbl_8053A2A8@sda21(r0)
    cmplw 0, 3
    .4byte 0x4082000C # bne .L_8002AA68
    li 0, 0x0
    .4byte 0x900D86E8 # stw r0, lbl_8053A2A8@sda21(r0)
L_8002AA68:
    mr 3, 30
    li 4, 0x0
    bl fn_80085674
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8002AA84
    mr 3, 30
    bl dtor_80084580
L_8002AA84:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002AAA0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_8002AAE8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2530@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2530@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8002AAE8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002AAF8:
    stwu 1, -0x10(1)
    mflr 0
    li 8, 0x0
    li 6, 0x20
    stw 0, 0x14(1)
    li 7, 0x2
    stw 31, 0xc(1)
    mr 31, 3
    stw 8, 0x0(3)
    lis 3, fn_8002D78C@ha
    addi 0, 3, fn_8002D78C@l
    stw 8, 0x8(31)
    addi 3, 31, 0x1c
    stw 4, 0xc(31)
    mr 4, 0
    stw 5, 0x10(31)
    li 5, 0x0
    stw 8, 0x14(31)
    stw 8, 0x18(31)
    bl __construct_array
    addi 3, 31, 0x5c
    bl fn_8002D604
    addi 3, 31, 0x74
    bl fn_8002D604
    .4byte 0xC0428120 # lfs f2, lbl_8053B0C0@sda21(r0)
    li 11, 0x0
    .4byte 0xC0228124 # lfs f1, lbl_8053B0C4@sda21(r0)
    li 10, 0x7f
    stfs 2, 0x9c(31)
    li 9, 0x3c
    .4byte 0xC0028128 # lfs f0, lbl_8053B0C8@sda21(r0)
    .4byte 0x390D8018 # li r8, lbl_80539BD8@sda21
    stfs 2, 0xa0(31)
    li 7, 0x150
    li 6, 0x210
    li 5, 0x352
    stfs 1, 0xa4(31)
    li 4, 0x412
    li 0, 0x13f
    mr 3, 31
    stfs 0, 0xa8(31)
    stfs 1, 0xac(31)
    stfs 1, 0xb0(31)
    stfs 2, 0xb4(31)
    stfs 2, 0xbc(31)
    stfs 1, 0xb8(31)
    stfs 0, 0xc0(31)
    stfs 1, 0xc4(31)
    sth 11, 0xc8(31)
    sth 10, 0xca(31)
    stfs 1, 0xcc(31)
    stfs 1, 0xd0(31)
    stw 11, 0xd4(31)
    stw 11, 0xd8(31)
    stb 9, 0xe1(31)
    stw 8, 0x104(31)
    stw 11, 0xdc(31)
    stw 11, 0x108(31)
    sth 7, 0x8c(31)
    sth 6, 0x8e(31)
    sth 5, 0x90(31)
    sth 4, 0x92(31)
    sth 11, 0x94(31)
    sth 11, 0x96(31)
    sth 0, 0x98(31)
    stb 11, 0x4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002AC14:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, fn_8002B18C@ha
    lhz 0, 0x98(31)
    addi 4, 3, fn_8002B18C@l
    mr 5, 31
    clrlwi 3, 0, 24
    bl fn_8002C6B4
    cmplwi 3, 0x0
    .4byte 0x4082006C # bne .L_8002ACB0
    cmplwi 31, 0x0
    .4byte 0x4182005C # beq .L_8002ACA8
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002AC60
    bl fn_8002C5A8
L_8002AC60:
    lwz 12, 0xc(31)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002AC84
    mr 4, 31
    lwz 6, 0x10(31)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002AC84:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 31
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_8002ACA8:
    li 3, 0x0
    .4byte 0x48000018 # b .L_8002ACC4
L_8002ACB0:
    stw 3, 0x8(31)
    bl fn_8002C598
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x0(31)
L_8002ACC4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002ACD8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, fn_8002B18C@ha
    lhz 0, 0x98(31)
    addi 4, 3, fn_8002B18C@l
    mr 5, 31
    clrlwi 3, 0, 24
    bl fn_8002C790
    cmplwi 3, 0x0
    .4byte 0x4082006C # bne .L_8002AD74
    cmplwi 31, 0x0
    .4byte 0x4182005C # beq .L_8002AD6C
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002AD24
    bl fn_8002C5A8
L_8002AD24:
    lwz 12, 0xc(31)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002AD48
    mr 4, 31
    lwz 6, 0x10(31)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002AD48:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 31
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_8002AD6C:
    li 3, 0x0
    .4byte 0x48000018 # b .L_8002AD88
L_8002AD74:
    stw 3, 0x8(31)
    bl fn_8002C598
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x0(31)
L_8002AD88:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002AD9C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x40820058 # bne .L_8002AE18
    clrlwi. 0, 4, 16
    .4byte 0x41820008 # beq .L_8002ADD0
    sth 4, 0x32(29)
L_8002ADD0:
    li 30, 0x0
    mr 31, 29
L_8002ADD8:
    lwz 0, 0x1c(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8002ADEC
    addi 3, 31, 0x1c
    bl fn_8002D8D4
L_8002ADEC:
    addi 30, 30, 0x1
    addi 31, 31, 0x20
    cmplwi 30, 0x2
    .4byte 0x4180FFE0 # blt .L_8002ADD8
    lhz 0, 0x98(29)
    lwz 3, 0x8(29)
    srawi 0, 0, 8
    clrlwi 4, 0, 24
    bl fn_8002C874
    li 0, 0x2
    stw 0, 0x0(29)
L_8002AE18:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002AE34:
    stwu 1, -0x10(1)
    mflr 0
    slwi 4, 4, 5
    stw 0, 0x14(1)
    mr 0, 3
    addi 3, 4, 0x1c
    mr 4, 5
    add 3, 0, 3
    bl fn_8002D7BC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002AE68:
    slwi 0, 4, 1
    add 3, 3, 0
    sth 5, 0x8c(3)
    blr

fn_8002AE78:
    cmplwi 5, 0x0
    stwu 1, -0x10(1)
    .4byte 0x40820028 # bne .L_8002AEA8
    xoris 4, 4, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC8228138 # lfd f1, lbl_8053B0D8@sda21(r0)
    stw 0, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    stfs 0, 0xcc(3)
    .4byte 0x4800002C # b .L_8002AED0
L_8002AEA8:
    xoris 4, 4, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC0428124 # lfs f2, lbl_8053B0C4@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC8228138 # lfd f1, lbl_8053B0D8@sda21(r0)
    lfd 0, 0x8(1)
    stfs 2, 0xcc(3)
    fsubs 0, 0, 1
    stfs 0, 0xd0(3)
L_8002AED0:
    stw 5, 0xd4(3)
    addi 1, 1, 0x10
    blr

fn_8002AEDC:
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
    stfd 27, 0x80(1)
    psq_st 27, 0x88(1), 0, 0
    stfd 26, 0x70(1)
    psq_st 26, 0x78(1), 0, 0
    stfd 25, 0x60(1)
    psq_st 25, 0x68(1), 0, 0
    stfd 24, 0x50(1)
    psq_st 24, 0x58(1), 0, 0
    stfd 23, 0x40(1)
    psq_st 23, 0x48(1), 0, 0
    stfd 22, 0x30(1)
    psq_st 22, 0x38(1), 0, 0
    stfd 21, 0x20(1)
    psq_st 21, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    mr 31, 6
    lfs 26, 0xc0(3)
    mr 29, 4
    lfs 25, 0xa8(3)
    mr 30, 5
    lfs 24, 0x8(6)
    lfs 31, 0xb8(3)
    lfs 30, 0xac(3)
    lfs 29, 0xc(6)
    lfs 23, 0xc4(3)
    lfs 22, 0xb0(3)
    lfs 21, 0x10(6)
    .4byte 0xC3828128 # lfs f28, lbl_8053B0C8@sda21(r0)
    .4byte 0xC3628124 # lfs f27, lbl_8053B0C4@sda21(r0)
    bl fn_8002C358
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_8002AFAC
    .4byte 0x40800008 # bge .L_8002AFA0
    .4byte 0x48000054 # b .L_8002AFF0
L_8002AFA0:
    cmpwi 3, 0x3
    .4byte 0x4080004C # bge .L_8002AFF0
    .4byte 0x48000024 # b .L_8002AFCC
L_8002AFAC:
    .4byte 0xC0628128 # lfs f3, lbl_8053B0C8@sda21(r0)
    fsubs 1, 26, 3
    fsubs 0, 24, 3
    fsubs 2, 25, 3
    fadds 1, 3, 1
    fadds 0, 1, 0
    fadds 28, 2, 0
    .4byte 0x48000028 # b .L_8002AFF0
L_8002AFCC:
    .4byte 0xC0828128 # lfs f4, lbl_8053B0C8@sda21(r0)
    fadds 0, 23, 21
    fsubs 2, 26, 4
    fsubs 1, 24, 4
    fsubs 3, 25, 4
    fadds 2, 4, 2
    fadds 27, 22, 0
    fadds 0, 2, 1
    fadds 28, 3, 0
L_8002AFF0:
    lhz 4, 0xca(28)
    lis 0, 0x4330
    fadds 3, 31, 29
    stw 0, 0x8(1)
    .4byte 0xC8428148 # lfd f2, lbl_8053B0E8@sda21(r0)
    addi 3, 28, 0x74
    stw 4, 0xc(1)
    .4byte 0xC0028140 # lfs f0, lbl_8053B0E0@sda21(r0)
    lfd 1, 0x8(1)
    fadds 31, 30, 3
    fsubs 1, 1, 2
    fdivs 29, 1, 0
    fmuls 29, 29, 29
    bl fn_8002D634
    lfs 2, 0xb4(28)
    lfs 0, 0x0(31)
    lfs 5, 0x18(31)
    .4byte 0xC0828120 # lfs f4, lbl_8053B0C0@sda21(r0)
    fmuls 2, 2, 0
    lfs 3, 0x9c(28)
    fmadds 4, 5, 1, 4
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    fmuls 1, 3, 2
    fmuls 1, 1, 4
    fmuls 29, 29, 1
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_8002B060
    fmr 29, 0
L_8002B060:
    .4byte 0xC0428124 # lfs f2, lbl_8053B0C4@sda21(r0)
    fcmpo cr0, 28, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8002B074
    .4byte 0x4800001C # b .L_8002B08C
L_8002B074:
    .4byte 0xC0428120 # lfs f2, lbl_8053B0C0@sda21(r0)
    fcmpo cr0, 28, 2
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8002B088
    .4byte 0x48000008 # b .L_8002B08C
L_8002B088:
    fmr 2, 28
L_8002B08C:
    .4byte 0xC0628124 # lfs f3, lbl_8053B0C4@sda21(r0)
    fcmpo cr0, 31, 3
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8002B0A0
    .4byte 0x4800001C # b .L_8002B0B8
L_8002B0A0:
    .4byte 0xC0628120 # lfs f3, lbl_8053B0C0@sda21(r0)
    fcmpo cr0, 31, 3
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8002B0B4
    .4byte 0x48000008 # b .L_8002B0B8
L_8002B0B4:
    fmr 3, 31
L_8002B0B8:
    .4byte 0xC0828124 # lfs f4, lbl_8053B0C4@sda21(r0)
    fcmpo cr0, 27, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8002B0CC
    .4byte 0x4800001C # b .L_8002B0E4
L_8002B0CC:
    .4byte 0xC0828120 # lfs f4, lbl_8053B0C0@sda21(r0)
    fcmpo cr0, 27, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8002B0E0
    .4byte 0x48000008 # b .L_8002B0E4
L_8002B0E0:
    fmr 4, 27
L_8002B0E4:
    lhz 0, 0x8c(28)
    cmplwi 0, 0xffff
    .4byte 0x40820018 # bne .L_8002B104
    fmr 1, 29
    mr 3, 28
    mr 4, 29
    bl fn_8002BC40
    .4byte 0x48000014 # b .L_8002B114
L_8002B104:
    fmr 1, 29
    mr 3, 28
    mr 4, 30
    bl fn_8002BD78
L_8002B114:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    psq_l 27, 0x88(1), 0, 0
    lfd 27, 0x80(1)
    psq_l 26, 0x78(1), 0, 0
    lfd 26, 0x70(1)
    psq_l 25, 0x68(1), 0, 0
    lfd 25, 0x60(1)
    psq_l 24, 0x58(1), 0, 0
    lfd 24, 0x50(1)
    psq_l 23, 0x48(1), 0, 0
    lfd 23, 0x40(1)
    psq_l 22, 0x38(1), 0, 0
    lfd 22, 0x30(1)
    psq_l 21, 0x28(1), 0, 0
    lfd 21, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0xd4(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_8002B18C:
    stwu 1, -0x20(1)
    mflr 0
    cmpwi 3, 0x1
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    .4byte 0x4182002C # beq .L_8002B1D0
    .4byte 0x40800010 # bge .L_8002B1B8
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_8002B1C4
    .4byte 0x480000A0 # b .L_8002B254
L_8002B1B8:
    cmpwi 3, 0x4
    .4byte 0x40800098 # bge .L_8002B254
    .4byte 0x4800001C # b .L_8002B1DC
L_8002B1C4:
    mr 3, 31
    bl fn_8002B6D4
    .4byte 0x4800008C # b .L_8002B258
L_8002B1D0:
    mr 3, 31
    bl fn_8002B26C
    .4byte 0x48000080 # b .L_8002B258
L_8002B1DC:
    lwz 3, 0x8(31)
    bl fn_8002C588
    li 0, 0x0
    cmplwi 31, 0x0
    stw 0, 0x8(31)
    .4byte 0x4182005C # beq .L_8002B24C
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002B204
    bl fn_8002C5A8
L_8002B204:
    lwz 12, 0xc(31)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B228
    mr 4, 31
    lwz 6, 0x10(31)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002B228:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 31
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_8002B24C:
    li 3, -0x1
    .4byte 0x48000008 # b .L_8002B258
L_8002B254:
    li 3, 0x0
L_8002B258:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002B26C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 4
    stw 30, 0x58(1)
    mr 30, 3
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    lhz 0, 0x8c(3)
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_8002B2A4
    mr 3, 31
    bl fn_8002D348
L_8002B2A4:
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B2C8
    mr 4, 30
    mr 5, 31
    lwz 6, 0x10(30)
    li 3, 0x1
    mtctr 12
    bctrl
L_8002B2C8:
    lwz 3, 0x104(30)
    lwz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_8002B350
    lwz 3, 0x8(30)
    bl fn_8002C588
    li 0, 0x0
    cmplwi 30, 0x0
    stw 0, 0x8(30)
    .4byte 0x4182005C # beq .L_8002B348
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002B300
    bl fn_8002C5A8
L_8002B300:
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B324
    mr 4, 30
    lwz 6, 0x10(30)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002B324:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x10(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0x10(1)
    bl OSRestoreInterrupts
L_8002B348:
    li 3, -0x1
    .4byte 0x48000368 # b .L_8002B6B4
L_8002B350:
    mr 3, 30
    bl fn_8002C260
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_8002B3D8
    lwz 3, 0x8(30)
    bl fn_8002C588
    li 0, 0x0
    cmplwi 30, 0x0
    stw 0, 0x8(30)
    .4byte 0x4182005C # beq .L_8002B3D0
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002B388
    bl fn_8002C5A8
L_8002B388:
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B3AC
    mr 4, 30
    lwz 6, 0x10(30)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002B3AC:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0xc(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
L_8002B3D0:
    li 3, -0x1
    .4byte 0x480002E0 # b .L_8002B6B4
L_8002B3D8:
    lwz 0, 0xdc(30)
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_8002B424
    .4byte 0x40800010 # bge .L_8002B3F4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8002B400
    .4byte 0x48000034 # b .L_8002B424
L_8002B3F4:
    cmpwi 0, 0x3
    .4byte 0x4080002C # bge .L_8002B424
    .4byte 0x4800001C # b .L_8002B418
L_8002B400:
    lwz 5, 0x108(30)
    mr 3, 31
    lwz 6, 0xd8(30)
    addi 4, 30, 0xe0
    bl fn_8002D1E0
    .4byte 0x48000010 # b .L_8002B424
L_8002B418:
    lwz 4, 0x108(30)
    mr 3, 31
    bl fn_8002D330
L_8002B424:
    li 29, 0x0
    .4byte 0x48000084 # b .L_8002B4AC
L_8002B42C:
    clrlslwi 3, 29, 24, 1
    addi 0, 3, 0x8c
    lhzx 0, 30, 0
    sth 0, 0x8(1)
    bl fn_8002C358
    cmplwi 3, 0x0
    .4byte 0x40820038 # bne .L_8002B47C
    lbz 0, 0x8(1)
    cmpwi 0, 0x9
    .4byte 0x41820020 # beq .L_8002B470
    .4byte 0x40800044 # bge .L_8002B498
    cmpwi 0, 0x8
    .4byte 0x40800008 # bge .L_8002B464
    .4byte 0x48000038 # b .L_8002B498
L_8002B464:
    li 0, 0xb
    stb 0, 0x8(1)
    .4byte 0x4800002C # b .L_8002B498
L_8002B470:
    li 0, 0x2
    stb 0, 0x8(1)
    .4byte 0x48000020 # b .L_8002B498
L_8002B47C:
    cmplwi 3, 0x1
    .4byte 0x40820018 # bne .L_8002B498
    lbz 0, 0x8(1)
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_8002B498
    li 0, 0xb
    stb 0, 0x8(1)
L_8002B498:
    lbz 5, 0x8(1)
    mr 3, 31
    mr 4, 29
    bl fn_8002D554
    addi 29, 29, 0x1
L_8002B4AC:
    clrlwi 0, 29, 24
    cmplwi 0, 0x6
    .4byte 0x4180FF78 # blt .L_8002B42C
    .4byte 0xC0428120 # lfs f2, lbl_8053B0C0@sda21(r0)
    mr 29, 30
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    li 28, 0x0
    .4byte 0xC0228128 # lfs f1, lbl_8053B0C8@sda21(r0)
    stfs 2, 0x20(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 2, 0x34(1)
    stfs 2, 0x38(1)
L_8002B4E8:
    lwz 0, 0x1c(29)
    cmplwi 0, 0x0
    .4byte 0x418200B4 # beq .L_8002B5A4
    addi 3, 29, 0x1c
    bl fn_8002D9D4
    addi 3, 29, 0x1c
    bl fn_8002D8BC
    lwz 3, 0x1c(29)
    lwz 0, 0x0(3)
    cmplwi 0, 0x6
    .4byte 0x41810094 # bgt .L_8002B5A4
    lis 3, jumptable_804918E0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804918E0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 0, 0x24(1)
    fmuls 0, 0, 1
    stfs 0, 0x24(1)
    .4byte 0x4800006C # b .L_8002B5A4
    lfs 0, 0x20(1)
    fmuls 0, 0, 1
    stfs 0, 0x20(1)
    .4byte 0x4800005C # b .L_8002B5A4
    .4byte 0xC8428130 # lfd f2, lbl_8053B0D0@sda21(r0)
    lfs 0, 0x28(1)
    fsub 1, 1, 2
    frsp 1, 1
    fadds 0, 0, 1
    stfs 0, 0x28(1)
    .4byte 0x48000040 # b .L_8002B5A4
    lfs 0, 0x2c(1)
    fadds 0, 0, 1
    stfs 0, 0x2c(1)
    .4byte 0x48000030 # b .L_8002B5A4
    lfs 0, 0x30(1)
    fadds 0, 0, 1
    stfs 0, 0x30(1)
    .4byte 0x48000020 # b .L_8002B5A4
    lfs 0, 0x34(1)
    fmuls 0, 0, 1
    stfs 0, 0x34(1)
    .4byte 0x48000010 # b .L_8002B5A4
    lfs 0, 0x38(1)
    fmuls 0, 0, 1
    stfs 0, 0x38(1)
L_8002B5A4:
    addi 28, 28, 0x1
    addi 29, 29, 0x20
    cmplwi 28, 0x2
    .4byte 0x4180FF38 # blt .L_8002B4E8
    addi 3, 30, 0x5c
    bl fn_8002D718
    addi 3, 30, 0x74
    bl fn_8002D718
    mr 3, 30
    mr 4, 31
    addi 5, 1, 0x14
    addi 6, 1, 0x20
    bl fn_8002AEDC
    addi 29, 1, 0x14
    li 28, 0x0
    .4byte 0x48000020 # b .L_8002B600
L_8002B5E4:
    clrlslwi 0, 28, 24, 1
    mr 3, 31
    lhzx 0, 29, 0
    mr 4, 28
    extsh 5, 0
    bl fn_8002D3B8
    addi 28, 28, 0x1
L_8002B600:
    clrlwi 0, 28, 24
    cmplwi 0, 0x6
    .4byte 0x4180FFDC # blt .L_8002B5E4
    addi 3, 30, 0x5c
    bl fn_8002D634
    lha 3, 0xc8(30)
    lis 0, 0x4330
    stw 0, 0x40(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8828138 # lfd f4, lbl_8053B0D8@sda21(r0)
    stw 0, 0x44(1)
    lfs 2, 0xcc(30)
    lfd 3, 0x40(1)
    .4byte 0xC0028150 # lfs f0, lbl_8053B0F0@sda21(r0)
    fsubs 3, 3, 4
    lfs 4, 0xa4(30)
    lfs 5, 0x34(1)
    fadds 2, 3, 2
    fdivs 0, 2, 0
    fadds 0, 4, 0
    fmadds 1, 5, 1, 0
    bl fn_80027D8C
    lfs 2, 0xbc(30)
    lfs 0, 0x24(1)
    lfs 3, 0xa0(30)
    fmuls 2, 2, 0
    .4byte 0xC0828154 # lfs f4, lbl_8053B0F4@sda21(r0)
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    fmuls 1, 1, 2
    fmuls 1, 3, 1
    fmuls 1, 4, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8002B688
    fmr 1, 0
L_8002B688:
    fctiwz 0, 1
    mr 3, 31
    stfd 0, 0x48(1)
    lwz 4, 0x4c(1)
    bl fn_8002D3A0
    lbz 4, 0x4(30)
    mr 3, 31
    bl fn_8002D404
    li 0, 0x0
    li 3, 0x0
    sth 0, 0x66(31)
L_8002B6B4:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8002B6D4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    mr 30, 3
    mr 31, 4
    lwz 12, 0xc(3)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B724
    mr 4, 30
    mr 5, 31
    lwz 6, 0x10(30)
    li 3, 0x0
    mtctr 12
    bctrl
L_8002B724:
    lwz 3, 0x104(30)
    lwz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_8002B7AC
    lwz 3, 0x8(30)
    bl fn_8002C588
    li 0, 0x0
    cmplwi 30, 0x0
    stw 0, 0x8(30)
    .4byte 0x4182005C # beq .L_8002B7A4
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002B75C
    bl fn_8002C5A8
L_8002B75C:
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B780
    mr 4, 30
    lwz 6, 0x10(30)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002B780:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x14(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0x14(1)
    bl OSRestoreInterrupts
L_8002B7A4:
    li 3, -0x1
    .4byte 0x48000470 # b .L_8002BC18
L_8002B7AC:
    mr 3, 30
    bl fn_8002C260
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_8002B834
    lwz 3, 0x8(30)
    bl fn_8002C588
    li 0, 0x0
    cmplwi 30, 0x0
    stw 0, 0x8(30)
    .4byte 0x4182005C # beq .L_8002B82C
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002B7E4
    bl fn_8002C5A8
L_8002B7E4:
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B808
    mr 4, 30
    lwz 6, 0x10(30)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002B808:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x10(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0x10(1)
    bl OSRestoreInterrupts
L_8002B82C:
    li 3, -0x1
    .4byte 0x480003E8 # b .L_8002BC18
L_8002B834:
    lbz 4, 0x4(30)
    mr 3, 31
    bl fn_8002D404
    .4byte 0xC0428120 # lfs f2, lbl_8053B0C0@sda21(r0)
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    .4byte 0xC0228128 # lfs f1, lbl_8053B0C8@sda21(r0)
    stfs 2, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    stfs 2, 0x38(1)
    stfs 2, 0x3c(1)
    lbz 0, 0x4(30)
    cmplwi 0, 0x0
    .4byte 0x418200A0 # beq .L_8002B910
    lwz 3, 0x38(30)
    li 0, 0x0
    cmpwi 3, 0x3
    .4byte 0x4182000C # beq .L_8002B88C
    cmpwi 3, 0x4
    .4byte 0x40820008 # bne .L_8002B890
L_8002B88C:
    li 0, 0x1
L_8002B890:
    clrlwi. 0, 0, 24
    .4byte 0x41820254 # beq .L_8002BAE8
    lwz 3, 0x8(30)
    bl fn_8002C588
    li 0, 0x0
    cmplwi 30, 0x0
    stw 0, 0x8(30)
    .4byte 0x4182005C # beq .L_8002B908
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002B8C0
    bl fn_8002C5A8
L_8002B8C0:
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B8E4
    mr 4, 30
    lwz 6, 0x10(30)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002B8E4:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0xc(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
L_8002B908:
    li 3, -0x1
    .4byte 0x4800030C # b .L_8002BC18
L_8002B910:
    bl fn_8002A1F0
    .4byte 0xC0028158 # lfs f0, lbl_8053B0F8@sda21(r0)
    addi 3, 30, 0x5c
    fdivs 31, 0, 1
    fmr 1, 31
    bl fn_8002D6C8
    fmr 1, 31
    addi 3, 30, 0x74
    bl fn_8002D6C8
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_8002B978
    subi 0, 3, 0x1
    stw 0, 0x14(30)
    lwz 0, 0x14(30)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8002B978
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002B978
    mr 4, 30
    mr 5, 31
    lwz 6, 0x10(30)
    li 3, 0x3
    mtctr 12
    bctrl
L_8002B978:
    bl fn_8002A1F0
    .4byte 0xC002815C # lfs f0, lbl_8053B0FC@sda21(r0)
    mr 29, 30
    li 28, 0x0
    fdivs 31, 0, 1
L_8002B98C:
    lwz 0, 0x1c(29)
    cmplwi 0, 0x0
    .4byte 0x41820144 # beq .L_8002BAD8
    fmr 1, 31
    addi 3, 29, 0x1c
    bl fn_8002D860
    addi 3, 29, 0x1c
    bl fn_8002D8BC
    lwz 3, 0x1c(29)
    lwz 0, 0x0(3)
    cmplwi 0, 0x6
    .4byte 0x41810094 # bgt .L_8002BA4C
    lis 3, jumptable_804918FC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804918FC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 0, 0x28(1)
    fmuls 0, 0, 1
    stfs 0, 0x28(1)
    .4byte 0x4800006C # b .L_8002BA4C
    lfs 0, 0x24(1)
    fmuls 0, 0, 1
    stfs 0, 0x24(1)
    .4byte 0x4800005C # b .L_8002BA4C
    .4byte 0xC8428130 # lfd f2, lbl_8053B0D0@sda21(r0)
    lfs 0, 0x2c(1)
    fsub 1, 1, 2
    frsp 1, 1
    fadds 0, 0, 1
    stfs 0, 0x2c(1)
    .4byte 0x48000040 # b .L_8002BA4C
    lfs 0, 0x30(1)
    fadds 0, 0, 1
    stfs 0, 0x30(1)
    .4byte 0x48000030 # b .L_8002BA4C
    lfs 0, 0x34(1)
    fadds 0, 0, 1
    stfs 0, 0x34(1)
    .4byte 0x48000020 # b .L_8002BA4C
    lfs 0, 0x38(1)
    fmuls 0, 0, 1
    stfs 0, 0x38(1)
    .4byte 0x48000010 # b .L_8002BA4C
    lfs 0, 0x3c(1)
    fmuls 0, 0, 1
    stfs 0, 0x3c(1)
L_8002BA4C:
    cmplwi 28, 0x0
    .4byte 0x40820088 # bne .L_8002BAD8
    lwz 0, 0x38(29)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_8002BAD8
    lwz 3, 0x8(30)
    bl fn_8002C588
    li 0, 0x0
    cmplwi 30, 0x0
    stw 0, 0x8(30)
    .4byte 0x4182005C # beq .L_8002BAD0
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8002BA88
    bl fn_8002C5A8
L_8002BA88:
    lwz 12, 0xc(30)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002BAAC
    mr 4, 30
    lwz 6, 0x10(30)
    li 3, 0x2
    li 5, 0x0
    mtctr 12
    bctrl
L_8002BAAC:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21CC@l
    li 5, 0x10c
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_8002BAD0:
    li 3, -0x1
    .4byte 0x48000144 # b .L_8002BC18
L_8002BAD8:
    addi 28, 28, 0x1
    addi 29, 29, 0x20
    cmplwi 28, 0x2
    .4byte 0x4180FEA8 # blt .L_8002B98C
L_8002BAE8:
    mr 3, 30
    mr 4, 31
    addi 5, 1, 0x18
    addi 6, 1, 0x24
    bl fn_8002AEDC
    addi 29, 1, 0x18
    li 28, 0x0
    .4byte 0x48000020 # b .L_8002BB24
L_8002BB08:
    clrlslwi 0, 28, 24, 1
    mr 3, 31
    lhzx 0, 29, 0
    mr 4, 28
    extsh 5, 0
    bl fn_8002D3D8
    addi 28, 28, 0x1
L_8002BB24:
    clrlwi 0, 28, 24
    cmplwi 0, 0x6
    .4byte 0x4180FFDC # blt .L_8002BB08
    addi 3, 30, 0x5c
    bl fn_8002D634
    lha 3, 0xc8(30)
    lis 0, 0x4330
    stw 0, 0x40(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8828138 # lfd f4, lbl_8053B0D8@sda21(r0)
    stw 0, 0x44(1)
    lfs 2, 0xcc(30)
    lfd 3, 0x40(1)
    .4byte 0xC0028150 # lfs f0, lbl_8053B0F0@sda21(r0)
    fsubs 3, 3, 4
    lfs 4, 0xa4(30)
    lfs 5, 0x38(1)
    fadds 2, 3, 2
    fdivs 0, 2, 0
    fadds 0, 4, 0
    fmadds 1, 5, 1, 0
    bl fn_80027D8C
    lfs 2, 0xbc(30)
    lfs 0, 0x28(1)
    lfs 3, 0xa0(30)
    fmuls 2, 2, 0
    .4byte 0xC0828154 # lfs f4, lbl_8053B0F4@sda21(r0)
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    fmuls 1, 1, 2
    fmuls 1, 3, 1
    fmuls 1, 4, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8002BBAC
    fmr 1, 0
L_8002BBAC:
    fctiwz 0, 1
    mr 3, 31
    stfd 0, 0x48(1)
    lwz 4, 0x4c(1)
    bl fn_8002D3A0
    lbz 0, 0x4(30)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8002BC14
    lwz 3, 0xd4(30)
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_8002BC14
    lis 0, 0x4330
    stw 3, 0x4c(1)
    lfs 3, 0xcc(30)
    stw 0, 0x48(1)
    lfs 2, 0xd0(30)
    .4byte 0xC8228148 # lfd f1, lbl_8053B0E8@sda21(r0)
    lfd 0, 0x48(1)
    fsubs 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0xcc(30)
    lwz 3, 0xd4(30)
    subi 0, 3, 0x1
    stw 0, 0xd4(30)
L_8002BC14:
    li 3, 0x0
L_8002BC18:
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8002BC40:
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
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    fmr 27, 1
    mr 31, 4
    fmr 28, 2
    fmr 29, 3
    fmr 30, 4
    bl fn_8002C358
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8002BCA0
    .4byte 0xC0028160 # lfs f0, lbl_8053B100@sda21(r0)
    fmuls 27, 27, 0
L_8002BCA0:
    .4byte 0xC3E28124 # lfs f31, lbl_8053B0C4@sda21(r0)
    fcmpo cr0, 27, 31
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8002BCB4
    .4byte 0x4800001C # b .L_8002BCCC
L_8002BCB4:
    .4byte 0xC3E28120 # lfs f31, lbl_8053B0C0@sda21(r0)
    fcmpo cr0, 27, 31
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8002BCC8
    .4byte 0x48000008 # b .L_8002BCCC
L_8002BCC8:
    fmr 31, 27
L_8002BCCC:
    bl fn_8002C328
    clrlwi 3, 3, 16
    lis 0, 0x4330
    stw 3, 0xc(1)
    mr 3, 31
    .4byte 0xC0028164 # lfs f0, lbl_8053B104@sda21(r0)
    li 8, 0x0
    stw 0, 0x8(1)
    .4byte 0xC8828148 # lfd f4, lbl_8053B0E8@sda21(r0)
    fmuls 2, 0, 28
    lfd 3, 0x8(1)
    fmuls 1, 0, 30
    fmuls 0, 0, 29
    fsubs 3, 3, 4
    fctiwz 2, 2
    fctiwz 1, 1
    fmuls 3, 31, 3
    stfd 2, 0x18(1)
    fctiwz 0, 0
    fctiwz 2, 3
    stfd 1, 0x20(1)
    lwz 5, 0x1c(1)
    stfd 0, 0x28(1)
    lwz 6, 0x24(1)
    stfd 2, 0x10(1)
    lwz 7, 0x2c(1)
    lwz 4, 0x14(1)
    bl fn_8002D374
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    lwz 0, 0x94(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8002BD78:
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
    stfd 27, 0x80(1)
    psq_st 27, 0x88(1), 0, 0
    stfd 26, 0x70(1)
    psq_st 26, 0x78(1), 0, 0
    stfd 25, 0x60(1)
    psq_st 25, 0x68(1), 0, 0
    stfd 24, 0x50(1)
    psq_st 24, 0x58(1), 0, 0
    stfd 23, 0x40(1)
    psq_st 23, 0x48(1), 0, 0
    stfd 22, 0x30(1)
    psq_st 22, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    fmr 24, 2
    .4byte 0xC0028120 # lfs f0, lbl_8053B0C0@sda21(r0)
    fmr 25, 3
    mr 31, 3
    fmr 26, 4
    mr 30, 4
    fmr 23, 1
    li 29, 0x0
    fsubs 31, 0, 24
    fsubs 30, 0, 25
    fsubs 29, 0, 26
L_8002BE0C:
    lhz 0, 0x8c(31)
    fmr 28, 23
    sth 0, 0x8(1)
    lbz 0, 0x8(1)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8002BE30
    li 0, 0x0
    sth 0, 0x0(30)
    .4byte 0x480002F0 # b .L_8002C11C
L_8002BE30:
    lbz 0, 0x9(1)
    extrwi. 4, 0, 4, 24
    .4byte 0x418200F4 # beq .L_8002BF2C
    cmplwi 4, 0x7
    .4byte 0x41810048 # bgt .L_8002BE88
    lis 3, jumptable_80491938@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_80491938@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    fmr 27, 24
    .4byte 0x48000028 # b .L_8002BE88
    fmr 27, 25
    .4byte 0x48000020 # b .L_8002BE88
    fmr 27, 26
    .4byte 0x48000018 # b .L_8002BE88
    fmr 27, 31
    .4byte 0x48000010 # b .L_8002BE88
    fmr 27, 30
    .4byte 0x48000008 # b .L_8002BE88
    fmr 27, 29
L_8002BE88:
    cmpwi 4, 0x6
    .4byte 0x41820014 # beq .L_8002BEA0
    .4byte 0x40800018 # bge .L_8002BEA8
    cmpwi 4, 0x2
    .4byte 0x41820008 # beq .L_8002BEA0
    .4byte 0x4800000C # b .L_8002BEA8
L_8002BEA0:
    fmuls 28, 28, 27
    .4byte 0x48000088 # b .L_8002BF2C
L_8002BEA8:
    bl fn_8002C358
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8002BEBC
    fmuls 28, 28, 27
    .4byte 0x48000074 # b .L_8002BF2C
L_8002BEBC:
    .4byte 0xC0028170 # lfs f0, lbl_8053B110@sda21(r0)
    .4byte 0xC0428128 # lfs f2, lbl_8053B0C8@sda21(r0)
    fmuls 1, 27, 0
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8002BF04
    .4byte 0xC0028168 # lfs f0, lbl_8053B108@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 0, 0
    .4byte 0x48000028 # b .L_8002BF28
L_8002BF04:
    .4byte 0xC002816C # lfs f0, lbl_8053B10C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
L_8002BF28:
    fmuls 28, 28, 0
L_8002BF2C:
    lbz 0, 0x9(1)
    clrlwi. 4, 0, 28
    .4byte 0x41820188 # beq .L_8002C0BC
    cmplwi 4, 0x7
    .4byte 0x41810048 # bgt .L_8002BF84
    lis 3, jumptable_80491918@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_80491918@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    fmr 27, 24
    .4byte 0x48000028 # b .L_8002BF84
    fmr 27, 25
    .4byte 0x48000020 # b .L_8002BF84
    fmr 27, 26
    .4byte 0x48000018 # b .L_8002BF84
    fmr 27, 31
    .4byte 0x48000010 # b .L_8002BF84
    fmr 27, 30
    .4byte 0x48000008 # b .L_8002BF84
    fmr 27, 29
L_8002BF84:
    cmpwi 4, 0x6
    .4byte 0x418200A8 # beq .L_8002C030
    .4byte 0x4080001C # bge .L_8002BFA8
    cmpwi 4, 0x3
    .4byte 0x4182001C # beq .L_8002BFB0
    .4byte 0x408000A0 # bge .L_8002C038
    cmpwi 4, 0x2
    .4byte 0x40800090 # bge .L_8002C030
    .4byte 0x48000094 # b .L_8002C038
L_8002BFA8:
    cmpwi 4, 0x8
    .4byte 0x4080008C # bge .L_8002C038
L_8002BFB0:
    .4byte 0xC0428178 # lfs f2, lbl_8053B118@sda21(r0)
    .4byte 0xC0028174 # lfs f0, lbl_8053B114@sda21(r0)
    .4byte 0xC0228170 # lfs f1, lbl_8053B110@sda21(r0)
    fmadds 2, 2, 27, 0
    .4byte 0xC0628128 # lfs f3, lbl_8053B0C8@sda21(r0)
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    fmuls 1, 2, 1
    fmuls 1, 3, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8002C004
    .4byte 0xC0028168 # lfs f0, lbl_8053B108@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 0, 0
    .4byte 0x48000028 # b .L_8002C028
L_8002C004:
    .4byte 0xC002816C # lfs f0, lbl_8053B10C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
L_8002C028:
    fmuls 28, 28, 0
    .4byte 0x48000090 # b .L_8002C0BC
L_8002C030:
    fmuls 28, 28, 27
    .4byte 0x48000088 # b .L_8002C0BC
L_8002C038:
    bl fn_8002C358
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8002C04C
    fmuls 28, 28, 27
    .4byte 0x48000074 # b .L_8002C0BC
L_8002C04C:
    .4byte 0xC0028170 # lfs f0, lbl_8053B110@sda21(r0)
    .4byte 0xC0428128 # lfs f2, lbl_8053B0C8@sda21(r0)
    fmuls 1, 27, 0
    .4byte 0xC0028124 # lfs f0, lbl_8053B0C4@sda21(r0)
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8002C094
    .4byte 0xC0028168 # lfs f0, lbl_8053B108@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 0, 0
    .4byte 0x48000028 # b .L_8002C0B8
L_8002C094:
    .4byte 0xC002816C # lfs f0, lbl_8053B10C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
L_8002C0B8:
    fmuls 28, 28, 0
L_8002C0BC:
    .4byte 0xC2C28124 # lfs f22, lbl_8053B0C4@sda21(r0)
    fcmpo cr0, 28, 22
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8002C0D0
    .4byte 0x4800001C # b .L_8002C0E8
L_8002C0D0:
    .4byte 0xC2C28120 # lfs f22, lbl_8053B0C0@sda21(r0)
    fcmpo cr0, 28, 22
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8002C0E4
    .4byte 0x48000008 # b .L_8002C0E8
L_8002C0E4:
    fmr 22, 28
L_8002C0E8:
    bl fn_8002C328
    clrlwi 3, 3, 16
    lis 0, 0x4330
    stw 3, 0x1c(1)
    .4byte 0xC8228148 # lfd f1, lbl_8053B0E8@sda21(r0)
    stw 0, 0x18(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 22, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x0(30)
L_8002C11C:
    addi 29, 29, 0x1
    addi 30, 30, 0x2
    cmplwi 29, 0x6
    addi 31, 31, 0x2
    .4byte 0x4180FCE0 # blt .L_8002BE0C
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    psq_l 27, 0x88(1), 0, 0
    lfd 27, 0x80(1)
    psq_l 26, 0x78(1), 0, 0
    lfd 26, 0x70(1)
    psq_l 25, 0x68(1), 0, 0
    lfd 25, 0x60(1)
    psq_l 24, 0x58(1), 0, 0
    lfd 24, 0x50(1)
    psq_l 23, 0x48(1), 0, 0
    lfd 23, 0x40(1)
    psq_l 22, 0x38(1), 0, 0
    lfd 22, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0xd4(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_8002C19C:
    li 0, 0x0
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    blr

fn_8002C1AC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052E1E8@ha
    lis 4, lbl_8052E298@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_8052E1E8@l
    li 5, 0x10
    addi 4, 4, lbl_8052E298@l
    bl OSInitMessageQueue
    li 0, 0x0
    .4byte 0x900D8760 # stw r0, lbl_8053A320@sda21(r0)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C1E8:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8052E2D8@ha
    lis 3, lbl_8052E1E8@ha
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    addi 31, 3, lbl_8052E1E8@l
    stw 30, 0x18(1)
    addi 30, 4, lbl_8052E2D8@l
    .4byte 0x900D8760 # stw r0, lbl_8053A320@sda21(r0)
    .4byte 0x4800001C # b .L_8002C230
L_8002C218:
    .4byte 0x808D8760 # lwz r4, lbl_8053A320@sda21(r0)
    lwz 5, 0x8(1)
    slwi 3, 4, 2
    addi 0, 4, 0x1
    stwx 5, 30, 3
    .4byte 0x900D8760 # stw r0, lbl_8053A320@sda21(r0)
L_8002C230:
    mr 3, 31
    addi 4, 1, 0x8
    li 5, 0x0
    bl OSReceiveMessage
    cmpwi 3, 0x0
    .4byte 0x4082FFD4 # bne .L_8002C218
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002C260:
    lwz 4, 0x18(3)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002C274
    li 3, 0x0
    blr
L_8002C274:
    .4byte 0x800D8760 # lwz r0, lbl_8053A320@sda21(r0)
    lis 3, lbl_8052E2D8@ha
    addi 3, 3, lbl_8052E2D8@l
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_8002C2A8
L_8002C28C:
    lwz 0, 0x0(3)
    cmplw 4, 0
    .4byte 0x4082000C # bne .L_8002C2A0
    li 3, 0x1
    blr
L_8002C2A0:
    addi 3, 3, 0x4
    .4byte 0x4200FFE8 # bdnz .L_8002C28C
L_8002C2A8:
    li 3, 0x0
    blr

fn_8002C2B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_8002C2F8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2540@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2540@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8002C2F8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C308:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8002CE2C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C328:
    .4byte 0xA06D8010 # lhz r3, lbl_80539BD0@sda21(r0)
    blr

fn_8002C330:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8002CE58
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C350:
    .4byte 0x906D8014 # stw r3, lbl_80539BD4@sda21(r0)
    blr

fn_8002C358:
    .4byte 0x806D8014 # lwz r3, lbl_80539BD4@sda21(r0)
    blr

fn_8002C360:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_804B2550@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    addi 30, 5, lbl_804B2550@l
    stw 29, 0x14(1)
    mr 29, 4
    mr 5, 29
    stw 28, 0x10(1)
    mr 28, 3
    mr 4, 28
    addi 3, 30, 0x0
    bl fn_80027F60
    mr 31, 3
    mr 4, 28
    mr 5, 29
    addi 3, 30, 0x100
    bl fn_80027F60
    add 31, 31, 3
    mr 4, 28
    mr 5, 29
    addi 3, 30, 0x200
    bl fn_80027F60
    lwz 0, 0x24(1)
    add 31, 31, 3
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002C3EC:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, lbl_804B2550@ha
    stw 0, 0x14(1)
    mr 0, 3
    addi 3, 5, lbl_804B2550@l
    mr 5, 4
    mr 4, 0
    bl fn_80027EC4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C420:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, lbl_804B2650@ha
    stw 0, 0x14(1)
    mr 0, 3
    addi 3, 5, lbl_804B2650@l
    mr 5, 4
    mr 4, 0
    bl fn_80027EC4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C454:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2650@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_804B2650@l
    bl fn_80028070
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C47C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2550@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_804B2550@l
    bl fn_80028070
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C4A4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B2750@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_804B2750@l
    bl fn_80028070
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C4CC:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B2550@ha
    lis 3, fn_8002C54C@ha
    stw 0, 0x14(1)
    li 5, 0x0
    li 6, 0x8
    li 7, 0x20
    stw 31, 0xc(1)
    addi 31, 4, lbl_804B2550@l
    addi 4, 3, fn_8002C54C@l
    addi 3, 31, 0x0
    bl __construct_array
    lis 4, fn_8002C54C@ha
    addi 3, 31, 0x100
    addi 4, 4, fn_8002C54C@l
    li 5, 0x0
    li 6, 0x8
    li 7, 0x20
    bl __construct_array
    lis 4, fn_8002C54C@ha
    addi 3, 31, 0x200
    addi 4, 4, fn_8002C54C@l
    li 5, 0x0
    li 6, 0x8
    li 7, 0x20
    bl __construct_array
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C54C:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    blr

fn_8002C55C:
    li 0, 0x1
    li 4, -0x1
    stw 0, 0x0(3)
    li 0, 0x0
    sth 4, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    stw 0, 0x18(3)
    blr

fn_8002C588:
    li 0, 0x0
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    blr

fn_8002C598:
    lwz 0, 0x8(3)
    ori 0, 0, 0x1
    stw 0, 0x8(3)
    blr

fn_8002C5A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 12, 0x10(3)
    cmplwi 12, 0x0
    .4byte 0x41820018 # beq .L_8002C5DC
    lwz 5, 0x14(31)
    li 3, 0x3
    li 4, 0x0
    mtctr 12
    bctrl
L_8002C5DC:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x10(31)
    stw 3, 0x14(31)
    sth 0, 0x4(31)
    lwz 0, 0x8(31)
    clrrwi 0, 0, 1
    stw 0, 0x8(31)
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8002C61C
    lwz 3, 0x8(31)
    li 0, 0x2
    ori 3, 3, 0x2
    stw 3, 0x8(31)
    stw 0, 0x0(31)
L_8002C61C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C630:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x710
    li 5, 0x20
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    bl fn_80084514
    lis 4, fn_8002C55C@ha
    li 5, 0x0
    addi 4, 4, fn_8002C55C@l
    li 6, 0x1c
    li 7, 0x40
    bl fn_800671B0
    .4byte 0x906D8768 # stw r3, lbl_8053A328@sda21(r0)
    li 30, 0x0
    li 31, 0x0
L_8002C678:
    mr 3, 30
    bl fn_8002CE60
    addi 30, 30, 0x1
    .4byte 0x808D8768 # lwz r4, lbl_8053A328@sda21(r0)
    addi 0, 31, 0x18
    addi 31, 31, 0x1c
    cmpwi 30, 0x40
    stwx 3, 4, 0
    .4byte 0x4180FFE0 # blt .L_8002C678
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002C6B4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    clrlwi 3, 3, 24
    bl fn_8002C880
    mr. 31, 3
    .4byte 0x4082000C # bne .L_8002C6F4
    li 3, 0x0
    .4byte 0x48000080 # b .L_8002C770
L_8002C6F4:
    lwz 12, 0x10(31)
    cmplwi 12, 0x0
    .4byte 0x41820018 # beq .L_8002C714
    lwz 5, 0x14(31)
    li 3, 0x3
    li 4, 0x0
    mtctr 12
    bctrl
L_8002C714:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x10(31)
    stw 3, 0x14(31)
    sth 0, 0x4(31)
    lwz 0, 0x8(31)
    clrrwi 0, 0, 1
    stw 0, 0x8(31)
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8002C754
    lwz 3, 0x8(31)
    li 0, 0x2
    ori 3, 3, 0x2
    stw 3, 0x8(31)
    stw 0, 0x0(31)
L_8002C754:
    clrlwi 3, 28, 24
    li 0, 0x0
    sth 3, 0x4(31)
    mr 3, 31
    stw 0, 0xc(31)
    stw 29, 0x10(31)
    stw 30, 0x14(31)
L_8002C770:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002C790:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    clrlwi 3, 3, 24
    bl fn_8002C880
    mr. 31, 3
    .4byte 0x4082000C # bne .L_8002C7D0
    li 3, 0x0
    .4byte 0x48000088 # b .L_8002C854
L_8002C7D0:
    li 0, 0x1
    stw 0, 0x0(31)
    lwz 12, 0x10(31)
    cmplwi 12, 0x0
    .4byte 0x41820018 # beq .L_8002C7F8
    lwz 5, 0x14(31)
    li 3, 0x3
    li 4, 0x0
    mtctr 12
    bctrl
L_8002C7F8:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x10(31)
    stw 3, 0x14(31)
    sth 0, 0x4(31)
    lwz 0, 0x8(31)
    clrrwi 0, 0, 1
    stw 0, 0x8(31)
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8002C838
    lwz 3, 0x8(31)
    li 0, 0x2
    ori 3, 3, 0x2
    stw 3, 0x8(31)
    stw 0, 0x0(31)
L_8002C838:
    clrlwi 3, 28, 24
    li 0, 0x0
    sth 3, 0x4(31)
    mr 3, 31
    stw 0, 0xc(31)
    stw 29, 0x10(31)
    stw 30, 0x14(31)
L_8002C854:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002C874:
    clrlwi 0, 4, 24
    sth 0, 0x4(3)
    blr

fn_8002C880:
    .4byte 0x80AD8768 # lwz r5, lbl_8053A328@sda21(r0)
    li 0, 0x20
    li 6, 0xff
    li 7, -0x1
    mr 4, 5
    li 8, 0x0
    li 9, 0x0
    mtctr 0
L_8002C8A0:
    lha 10, 0x4(4)
    extsh. 0, 10
    .4byte 0x40800010 # bge .L_8002C8B8
    mulli 0, 9, 0x1c
    add 3, 5, 0
    blr
L_8002C8B8:
    cmpw 10, 3
    .4byte 0x4181002C # bgt .L_8002C8E8
    extsh 0, 6
    cmpw 10, 0
    .4byte 0x41810020 # bgt .L_8002C8E8
    .4byte 0x40820010 # bne .L_8002C8DC
    lwz 0, 0xc(4)
    cmplw 0, 8
    .4byte 0x40810010 # ble .L_8002C8E8
L_8002C8DC:
    lwz 8, 0xc(4)
    mr 7, 9
    mr 6, 10
L_8002C8E8:
    lha 10, 0x20(4)
    addi 9, 9, 0x1
    extsh. 0, 10
    .4byte 0x40800010 # bge .L_8002C904
    mulli 0, 9, 0x1c
    add 3, 5, 0
    blr
L_8002C904:
    cmpw 10, 3
    .4byte 0x4181002C # bgt .L_8002C934
    extsh 0, 6
    cmpw 10, 0
    .4byte 0x41810020 # bgt .L_8002C934
    .4byte 0x40820010 # bne .L_8002C928
    lwz 0, 0x28(4)
    cmplw 0, 8
    .4byte 0x40810010 # ble .L_8002C934
L_8002C928:
    lwz 8, 0x28(4)
    mr 7, 9
    mr 6, 10
L_8002C934:
    addi 4, 4, 0x38
    addi 9, 9, 0x1
    .4byte 0x4200FF64 # bdnz .L_8002C8A0
    cmpwi 7, 0x0
    .4byte 0x4080000C # bge .L_8002C950
    li 3, 0x0
    blr
L_8002C950:
    mulli 0, 7, 0x1c
    add 3, 5, 0
    blr

fn_8002C95C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x18(3)
    bl fn_8002D1CC
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_8002C9EC
    lwz 0, 0x8(31)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0x8(31)
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_8002C9D0
    lwz 12, 0x10(31)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002C9BC
    lwz 5, 0x14(31)
    li 3, 0x2
    li 4, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000008 # b .L_8002C9C0
L_8002C9BC:
    li 3, -0x1
L_8002C9C0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8002C9D0
    li 0, -0x1
    sth 0, 0x4(31)
L_8002C9D0:
    li 0, 0x1
    stw 0, 0x0(31)
    lwz 3, 0x18(31)
    bl fn_8002D1B0
    lwz 3, 0x18(31)
    bl fn_8002D410
    .4byte 0x480001A0 # b .L_8002CB88
L_8002C9EC:
    lwz 3, 0x8(31)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x41820020 # beq .L_8002CA14
    rlwinm 0, 3, 0, 31, 29
    stw 0, 0x8(31)
    lwz 3, 0x18(31)
    bl fn_8002D1C0
    lwz 3, 0x18(31)
    bl fn_8002D410
    .4byte 0x48000178 # b .L_8002CB88
L_8002CA14:
    lwz 4, 0x0(31)
    cmpwi 4, 0x2
    .4byte 0x4182016C # beq .L_8002CB88
    clrlwi. 0, 3, 31
    .4byte 0x418200B4 # beq .L_8002CAD8
    cmpwi 4, 0x1
    .4byte 0x408200AC # bne .L_8002CAD8
    clrrwi 3, 3, 1
    li 0, 0x0
    stw 3, 0x8(31)
    stw 0, 0x0(31)
    lwz 3, 0x18(31)
    bl fn_8002D0C8
    lwz 12, 0x10(31)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002CA6C
    lwz 4, 0x18(31)
    li 3, 0x1
    lwz 5, 0x14(31)
    mtctr 12
    bctrl
    .4byte 0x48000008 # b .L_8002CA70
L_8002CA6C:
    li 3, 0x0
L_8002CA70:
    cmpwi 3, 0x0
    .4byte 0x40800050 # bge .L_8002CAC4
    li 0, 0x1
    stw 0, 0x0(31)
    lwz 12, 0x10(31)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002CAA4
    lwz 5, 0x14(31)
    li 3, 0x2
    li 4, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000008 # b .L_8002CAA8
L_8002CAA4:
    li 3, -0x1
L_8002CAA8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8002CAB8
    li 0, -0x1
    sth 0, 0x4(31)
L_8002CAB8:
    lwz 3, 0x18(31)
    bl fn_8002D410
    .4byte 0x480000C8 # b .L_8002CB88
L_8002CAC4:
    lwz 3, 0x18(31)
    bl fn_8002D104
    lwz 3, 0x18(31)
    bl fn_8002D410
    .4byte 0x480000B4 # b .L_8002CB88
L_8002CAD8:
    cmpwi 4, 0x1
    .4byte 0x418200AC # beq .L_8002CB88
    lwz 12, 0x10(31)
    li 0, 0x0
    cmplwi 12, 0x0
    .4byte 0x41820020 # beq .L_8002CB0C
    lwz 4, 0x18(31)
    li 3, 0x0
    lwz 5, 0x14(31)
    mtctr 12
    bctrl
    li 0, 0x1
    .4byte 0x48000008 # b .L_8002CB10
L_8002CB0C:
    li 3, 0x0
L_8002CB10:
    cmpwi 3, 0x0
    .4byte 0x40800058 # bge .L_8002CB6C
    li 0, 0x1
    stw 0, 0x0(31)
    lwz 12, 0x10(31)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_8002CB44
    lwz 5, 0x14(31)
    li 3, 0x2
    li 4, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000008 # b .L_8002CB48
L_8002CB44:
    li 3, -0x1
L_8002CB48:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8002CB58
    li 0, -0x1
    sth 0, 0x4(31)
L_8002CB58:
    lwz 3, 0x18(31)
    bl fn_8002D1A4
    lwz 3, 0x18(31)
    bl fn_8002D410
    .4byte 0x48000020 # b .L_8002CB88
L_8002CB6C:
    lwz 3, 0xc(31)
    clrlwi. 0, 0, 24
    addi 0, 3, 0x1
    stw 0, 0xc(31)
    .4byte 0x4182000C # beq .L_8002CB88
    lwz 3, 0x18(31)
    bl fn_8002D410
L_8002CB88:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CB9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    li 30, 0x0
L_8002CBB8:
    clrlwi. 0, 30, 28
    .4byte 0x40820018 # bne .L_8002CBD4
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_8002CBD4
    subi 0, 30, 0x1
    srwi 3, 0, 4
    bl fn_8002CDCC
L_8002CBD4:
    .4byte 0x800D8768 # lwz r0, lbl_8053A328@sda21(r0)
    add 3, 0, 31
    bl fn_8002C95C
    addi 30, 30, 0x1
    addi 31, 31, 0x1c
    cmplwi 30, 0x40
    .4byte 0x4180FFCC # blt .L_8002CBB8
    li 3, 0x3
    bl fn_8002CDCC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CC10:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    li 7, 0xff
    stw 0, 0x14(1)
    li 0, 0x20
    mr 4, 5
    li 6, -0x1
    stw 31, 0xc(1)
    .4byte 0x812D8768 # lwz r9, lbl_8053A328@sda21(r0)
    mr 8, 9
    mtctr 0
L_8002CC40:
    lwz 0, 0x0(8)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8002CC80
    lha 3, 0x4(8)
    cmpwi 3, 0x7f
    .4byte 0x4080002C # bge .L_8002CC80
    extsh 0, 7
    cmpw 3, 0
    .4byte 0x41810020 # bgt .L_8002CC80
    .4byte 0x40820010 # bne .L_8002CC74
    lwz 0, 0xc(8)
    cmplw 0, 5
    .4byte 0x40810010 # ble .L_8002CC80
L_8002CC74:
    lwz 5, 0xc(8)
    mr 6, 4
    mr 7, 3
L_8002CC80:
    lwz 0, 0x1c(8)
    addi 4, 4, 0x1
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8002CCC4
    lha 3, 0x20(8)
    cmpwi 3, 0x7f
    .4byte 0x4080002C # bge .L_8002CCC4
    extsh 0, 7
    cmpw 3, 0
    .4byte 0x41810020 # bgt .L_8002CCC4
    .4byte 0x40820010 # bne .L_8002CCB8
    lwz 0, 0x28(8)
    cmplw 0, 5
    .4byte 0x40810010 # ble .L_8002CCC4
L_8002CCB8:
    lwz 5, 0x28(8)
    mr 6, 4
    mr 7, 3
L_8002CCC4:
    addi 8, 8, 0x38
    addi 4, 4, 0x1
    .4byte 0x4200FF74 # bdnz .L_8002CC40
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_8002CCE0
    li 31, 0x0
    .4byte 0x4800000C # b .L_8002CCE8
L_8002CCE0:
    mulli 0, 6, 0x1c
    add 31, 9, 0
L_8002CCE8:
    cmplwi 31, 0x0
    .4byte 0x4082000C # bne .L_8002CCF8
    li 3, 0x0
    .4byte 0x48000068 # b .L_8002CD5C
L_8002CCF8:
    lwz 12, 0x10(31)
    cmplwi 12, 0x0
    .4byte 0x41820018 # beq .L_8002CD18
    lwz 5, 0x14(31)
    li 3, 0x3
    li 4, 0x0
    mtctr 12
    bctrl
L_8002CD18:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x10(31)
    stw 3, 0x14(31)
    sth 0, 0x4(31)
    lwz 0, 0x8(31)
    clrrwi 0, 0, 1
    stw 0, 0x8(31)
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8002CD58
    lwz 3, 0x8(31)
    li 0, 0x2
    ori 3, 3, 0x2
    stw 3, 0x8(31)
    stw 0, 0x0(31)
L_8002CD58:
    li 3, 0x1
L_8002CD5C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CD70:
    mulli 0, 3, 0x1c
    .4byte 0x806D8768 # lwz r3, lbl_8053A328@sda21(r0)
    add 3, 3, 0
    blr

fn_8002CD80:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D877D # lbz r0, lbl_8053A33D@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820010 # bne .L_8002CDA4
    li 0, 0x1
    .4byte 0x980D877C # stb r0, lbl_8053A33C@sda21(r0)
    .4byte 0x980D877D # stb r0, lbl_8053A33D@sda21(r0)
L_8002CDA4:
    .4byte 0x880D877C # lbz r0, lbl_8053A33C@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8002CDBC
    bl fn_80039D60
    li 0, 0x0
    .4byte 0x980D877C # stb r0, lbl_8053A33C@sda21(r0)
L_8002CDBC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CDCC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80039B80
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CDEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80039FC0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CE0C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8003A440
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CE2C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0028180 # lfs f0, lbl_8053B120@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xD02D8778 # stfs f1, lbl_8053A338@sda21(r0)
    fmuls 1, 1, 0
    bl fn_80039C80
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CE58:
    .4byte 0xC02D8778 # lfs f1, lbl_8053A338@sda21(r0)
    blr

fn_8002CE60:
    mulli 0, 3, 0x180
    .4byte 0x806D8770 # lwz r3, lbl_8053A330@sda21(r0)
    add 3, 3, 0
    blr

fn_8002CE70:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x6000
    stw 0, 0x14(1)
    .4byte 0x806D8770 # lwz r3, lbl_8053A330@sda21(r0)
    bl DCInvalidateRange
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CE98:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x6000
    li 5, 0x20
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    bl fn_80084514
    .4byte 0x906D8770 # stw r3, lbl_8053A330@sda21(r0)
    li 3, 0x80
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    li 5, 0x20
    bl fn_80084514
    .4byte 0x906D8774 # stw r3, lbl_8053A334@sda21(r0)
    li 4, 0x6000
    .4byte 0x806D8770 # lwz r3, lbl_8053A330@sda21(r0)
    bl fn_80027B18
    .4byte 0x806D8774 # lwz r3, lbl_8053A334@sda21(r0)
    li 4, 0x80
    bl fn_80027B18
    li 31, 0x0
    .4byte 0x48000018 # b .L_8002CF04
L_8002CEF0:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_8002CF5C
    addi 31, 31, 0x1
L_8002CF04:
    clrlwi 0, 31, 24
    cmplwi 0, 0x4
    .4byte 0x4180FFE4 # blt .L_8002CEF0
    lis 4, lbl_8045CB80@ha
    lis 3, lbl_8045CB40@ha
    addi 5, 4, lbl_8045CB80@l
    .4byte 0x808D8770 # lwz r4, lbl_8053A330@sda21(r0)
    addi 6, 3, lbl_8045CB40@l
    .4byte 0x80ED8774 # lwz r7, lbl_8053A334@sda21(r0)
    li 3, 0x40
    bl fn_80039C00
    .4byte 0x806D8770 # lwz r3, lbl_8053A330@sda21(r0)
    li 4, 0x6000
    bl DCFlushRange
    .4byte 0x806D8774 # lwz r3, lbl_8053A334@sda21(r0)
    li 4, 0x80
    bl DCFlushRange
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002CF5C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    clrlslwi 0, 3, 24, 5
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    .4byte 0x80CD8774 # lwz r6, lbl_8053A334@sda21(r0)
    add 31, 6, 0
    bl OSDisableInterrupts
    li 0, 0x0
    cmplwi 30, 0x0
    stw 3, 0x8(1)
    sth 0, 0x0(31)
    .4byte 0x41820084 # beq .L_8002D024
    lha 0, 0x4(30)
    lis 3, lbl_80491958@ha
    addi 3, 3, lbl_80491958@l
    sth 0, 0xa(31)
    lhz 0, 0x2(30)
    slwi 0, 0, 1
    lhzx 0, 3, 0
    sth 0, 0x8(31)
    lha 0, 0x8(30)
    sth 0, 0xe(31)
    lhz 0, 0x6(30)
    slwi 0, 0, 1
    lhzx 0, 3, 0
    sth 0, 0xc(31)
    lwz 0, 0xc(30)
    sth 0, 0x2(31)
    lha 0, 0x10(30)
    sth 0, 0x10(31)
    lha 0, 0x12(30)
    sth 0, 0x12(31)
    lha 0, 0x14(30)
    sth 0, 0x14(31)
    lha 0, 0x16(30)
    sth 0, 0x16(31)
    lha 0, 0x18(30)
    sth 0, 0x18(31)
    lha 0, 0x1a(30)
    sth 0, 0x1a(31)
    lha 0, 0x1c(30)
    sth 0, 0x1c(31)
    lha 0, 0x1e(30)
    sth 0, 0x1e(31)
L_8002D024:
    cmplwi 29, 0x0
    .4byte 0x41820034 # beq .L_8002D05C
    cmplwi 30, 0x0
    .4byte 0x4182002C # beq .L_8002D05C
    lwz 0, 0xc(30)
    mr 3, 29
    mulli 28, 0, 0xa0
    stw 29, 0x4(31)
    mr 4, 28
    bl fn_80027B18
    mr 3, 29
    mr 4, 28
    bl DCFlushRange
    .4byte 0x48000018 # b .L_8002D070
L_8002D05C:
    cmplwi 30, 0x0
    .4byte 0x4182000C # beq .L_8002D06C
    cmplwi 29, 0x0
    .4byte 0x41820008 # beq .L_8002D070
L_8002D06C:
    stw 29, 0x4(31)
L_8002D070:
    lwz 0, 0x4(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8002D088
    lbz 0, 0x0(30)
    sth 0, 0x0(31)
    .4byte 0x4800000C # b .L_8002D090
L_8002D088:
    li 0, 0x0
    sth 0, 0x0(31)
L_8002D090:
    mr 3, 31
    li 4, 0x20
    bl DCFlushRange
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    li 3, 0x1
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002D0C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    sth 0, 0xc(3)
    sth 0, 0x2(3)
    sth 0, 0x10a(3)
    sth 0, 0x0(3)
    sth 0, 0x58(3)
    stw 0, 0x68(3)
    bl fn_8002D434
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002D104:
    li 4, 0x0
    li 5, 0x0
    stw 4, 0x10c(3)
    li 0, 0x1
    cmpwi 5, 0x14
    sth 4, 0x60(3)
    sth 0, 0x8(3)
    sth 4, 0x66(3)
    sth 4, 0x78(3)
    sth 4, 0xa8(3)
    sth 4, 0x7a(3)
    sth 4, 0xaa(3)
    sth 4, 0x7c(3)
    sth 4, 0xac(3)
    sth 4, 0x7e(3)
    sth 4, 0xae(3)
    .4byte 0x40800054 # bge .L_8002D198
    sth 4, 0x80(3)
    sth 4, 0x82(3)
    sth 4, 0x84(3)
    sth 4, 0x86(3)
    sth 4, 0x88(3)
    sth 4, 0x8a(3)
    sth 4, 0x8c(3)
    sth 4, 0x8e(3)
    sth 4, 0x90(3)
    sth 4, 0x92(3)
    sth 4, 0x94(3)
    sth 4, 0x96(3)
    sth 4, 0x98(3)
    sth 4, 0x9a(3)
    sth 4, 0x9c(3)
    sth 4, 0x9e(3)
    sth 4, 0xa0(3)
    sth 4, 0xa2(3)
    sth 4, 0xa4(3)
    sth 4, 0xa6(3)
L_8002D198:
    li 0, 0x1
    sth 0, 0x0(3)
    blr

fn_8002D1A4:
    li 0, 0x0
    sth 0, 0x0(3)
    blr

fn_8002D1B0:
    li 0, 0x0
    sth 0, 0x2(3)
    sth 0, 0x0(3)
    blr

fn_8002D1C0:
    li 0, 0x1
    sth 0, 0x10a(3)
    blr

fn_8002D1CC:
    lhz 3, 0x2(3)
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_8002D1E0:
    lbz 9, 0x0(4)
    .4byte 0x39028184 # li r8, lbl_8053B124@sda21
    stw 5, 0x118(3)
    .4byte 0x38E2818C # li r7, lbl_8053B12C@sda21
    lbzx 8, 8, 9
    li 0, 0x0
    lbzx 5, 7, 9
    sth 8, 0x64(3)
    sth 5, 0x100(3)
    stw 0, 0x68(3)
    lhz 0, 0x100(3)
    cmplwi 0, 0x4
    bltlr
    lwz 5, 0x1c(4)
    lwz 0, 0x10(4)
    stw 5, 0x11c(3)
    sth 0, 0x102(3)
    lhz 0, 0x102(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8002D260
    cmplwi 6, 0x1
    .4byte 0x40820008 # bne .L_8002D23C
    lwz 6, 0x14(4)
L_8002D23C:
    lwz 5, 0x14(4)
    lwz 0, 0x18(4)
    stw 5, 0x110(3)
    lha 5, 0x20(4)
    stw 0, 0x114(3)
    lha 0, 0x22(4)
    sth 5, 0x104(3)
    sth 0, 0x106(3)
    .4byte 0x4800000C # b .L_8002D268
L_8002D260:
    lwz 0, 0x11c(3)
    stw 0, 0x114(3)
L_8002D268:
    cmplwi 6, 0x0
    .4byte 0x41820070 # beq .L_8002D2DC
    lwz 0, 0x114(3)
    cmplw 0, 6
    .4byte 0x40810064 # ble .L_8002D2DC
    lbz 0, 0x0(4)
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_8002D294
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8002D2A0
    .4byte 0x4800004C # b .L_8002D2DC
L_8002D294:
    cmpwi 0, 0x4
    .4byte 0x40800044 # bge .L_8002D2DC
    .4byte 0x4800003C # b .L_8002D2D8
L_8002D2A0:
    stw 6, 0x68(3)
    lhz 0, 0x100(3)
    lwz 4, 0x118(3)
    mullw 0, 6, 0
    srwi 0, 0, 4
    add 0, 4, 0
    stw 0, 0x118(3)
    lwz 0, 0x110(3)
    subf 0, 6, 0
    stw 0, 0x110(3)
    lwz 0, 0x114(3)
    subf 0, 6, 0
    stw 0, 0x114(3)
    .4byte 0x48000008 # b .L_8002D2DC
L_8002D2D8:
    stw 6, 0x68(3)
L_8002D2DC:
    li 0, 0x0
    cmpwi 0, 0x10
    bgelr
    li 0, 0x0
    sth 0, 0xb0(3)
    sth 0, 0xb2(3)
    sth 0, 0xb4(3)
    sth 0, 0xb6(3)
    sth 0, 0xb8(3)
    sth 0, 0xba(3)
    sth 0, 0xbc(3)
    sth 0, 0xbe(3)
    sth 0, 0xc0(3)
    sth 0, 0xc2(3)
    sth 0, 0xc4(3)
    sth 0, 0xc6(3)
    sth 0, 0xc8(3)
    sth 0, 0xca(3)
    sth 0, 0xcc(3)
    sth 0, 0xce(3)
    blr

fn_8002D330:
    li 5, 0x0
    li 0, 0x10
    stw 5, 0x118(3)
    sth 0, 0x64(3)
    sth 4, 0x100(3)
    blr

fn_8002D348:
    lhz 0, 0x58(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8002D360
    lhz 0, 0x56(3)
    sth 0, 0x54(3)
    blr
L_8002D360:
    li 4, 0x0
    li 0, 0x1
    sth 4, 0x54(3)
    sth 0, 0x58(3)
    blr

fn_8002D374:
    clrlwi 9, 6, 24
    clrlslwi 8, 7, 24, 8
    rlwimi 9, 5, 8, 16, 23
    clrlslwi 6, 7, 24, 1
    sth 9, 0x50(3)
    or 5, 8, 6
    li 0, 0x1
    sth 5, 0x52(3)
    sth 4, 0x56(3)
    sth 0, 0x58(3)
    blr

fn_8002D3A0:
    clrlwi 0, 4, 16
    cmplwi 0, 0x7fff
    .4byte 0x41800008 # blt .L_8002D3B0
    li 4, 0x7fff
L_8002D3B0:
    sth 4, 0x4(3)
    blr

fn_8002D3B8:
    clrlslwi 4, 4, 24, 3
    li 0, 0x0
    addi 4, 4, 0x10
    add 4, 3, 4
    sth 5, 0x4(4)
    sth 5, 0x2(4)
    sth 0, 0x6(4)
    blr

fn_8002D3D8:
    lhz 0, 0x10a(3)
    cmplwi 0, 0x0
    bnelr
    clrlslwi 4, 4, 24, 3
    addi 4, 4, 0x10
    add 4, 3, 4
    sth 5, 0x2(4)
    lhz 0, 0x6(4)
    clrlwi 0, 0, 24
    sth 0, 0x6(4)
    blr

fn_8002D404:
    clrlwi 0, 4, 24
    sth 0, 0xc(3)
    blr

fn_8002D410:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x180
    stw 0, 0x14(1)
    bl DCFlushRange
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002D434:
    li 4, 0x0
    li 0, 0x7fff
    sth 4, 0x120(3)
    sth 4, 0x122(3)
    sth 4, 0x124(3)
    sth 4, 0x126(3)
    sth 4, 0x128(3)
    sth 4, 0x12a(3)
    sth 4, 0x12c(3)
    sth 4, 0x12e(3)
    sth 0, 0x120(3)
    sth 4, 0x148(3)
    sth 4, 0x14a(3)
    sth 4, 0x14c(3)
    sth 4, 0x14e(3)
    sth 4, 0x150(3)
    sth 4, 0x152(3)
    sth 4, 0x154(3)
    sth 4, 0x156(3)
    sth 0, 0x148(3)
    sth 4, 0x150(3)
    blr

fn_8002D48C:
    rlwinm. 5, 4, 0, 26, 26
    clrlwi 0, 4, 27
    .4byte 0x41820014 # beq .L_8002D4A8
    cmplwi 0, 0x14
    .4byte 0x40810018 # ble .L_8002D4B4
    li 0, 0x14
    .4byte 0x48000010 # b .L_8002D4B4
L_8002D4A8:
    cmplwi 0, 0x18
    .4byte 0x40810008 # ble .L_8002D4B4
    li 0, 0x18
L_8002D4B4:
    clrlwi 0, 0, 24
    add 0, 5, 0
    sth 0, 0x108(3)
    blr

fn_8002D4C4:
    lha 0, 0x0(4)
    sth 0, 0x148(3)
    lha 0, 0x2(4)
    sth 0, 0x14a(3)
    lha 0, 0x4(4)
    sth 0, 0x14c(3)
    lha 0, 0x6(4)
    sth 0, 0x14e(3)
    lha 0, 0x8(4)
    sth 0, 0x150(3)
    lha 0, 0xa(4)
    sth 0, 0x152(3)
    lha 0, 0xc(4)
    sth 0, 0x154(3)
    lha 0, 0xe(4)
    sth 0, 0x156(3)
    blr

fn_8002D508:
    lha 0, 0x0(4)
    sth 0, 0x120(3)
    lha 0, 0x2(4)
    sth 0, 0x122(3)
    lha 0, 0x4(4)
    sth 0, 0x124(3)
    lha 0, 0x6(4)
    sth 0, 0x126(3)
    lha 0, 0x8(4)
    sth 0, 0x128(3)
    lha 0, 0xa(4)
    sth 0, 0x12a(3)
    lha 0, 0xc(4)
    sth 0, 0x12c(3)
    lha 0, 0xe(4)
    sth 0, 0x12e(3)
    blr

fn_8002D54C:
    sth 4, 0x150(3)
    blr

fn_8002D554:
    lis 6, lbl_8045D080@ha
    clrlslwi 4, 4, 24, 3
    clrlslwi 7, 5, 24, 1
    addi 5, 6, lbl_8045D080@l
    addi 0, 4, 0x10
    lhzx 4, 5, 7
    sthx 4, 3, 0
    blr

fn_8002D574:
    slwi 0, 3, 4
    .4byte 0x80AD8770 # lwz r5, lbl_8053A330@sda21(r0)
    mulli 4, 0, 0x180
    li 0, 0x4
    li 3, 0x0
    li 6, 0x0
    add 4, 5, 4
    mtctr 0
L_8002D594:
    lhz 0, 0x0(4)
    clrlslwi 3, 3, 17, 1
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8002D5AC
    ori 0, 3, 0x1
    clrlwi 3, 0, 16
L_8002D5AC:
    lhz 0, 0x180(4)
    clrlslwi 3, 3, 17, 1
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8002D5C4
    ori 0, 3, 0x1
    clrlwi 3, 0, 16
L_8002D5C4:
    lhz 0, 0x300(4)
    clrlslwi 3, 3, 17, 1
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8002D5DC
    ori 0, 3, 0x1
    clrlwi 3, 0, 16
L_8002D5DC:
    lhz 0, 0x480(4)
    clrlslwi 3, 3, 17, 1
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8002D5F4
    ori 0, 3, 0x1
    clrlwi 3, 0, 16
L_8002D5F4:
    addi 4, 4, 0x600
    addi 6, 6, 0x3
    .4byte 0x4200FF98 # bdnz .L_8002D594
    blr

fn_8002D604:
    li 4, 0x0
    li 0, 0x1
    stw 4, 0x0(3)
    .4byte 0xC0228198 # lfs f1, lbl_8053B138@sda21(r0)
    stw 0, 0x4(3)
    .4byte 0xC002819C # lfs f0, lbl_8053B13C@sda21(r0)
    stfs 1, 0x8(3)
    stfs 1, 0xc(3)
    stfs 0, 0x10(3)
    sth 4, 0x14(3)
    sth 4, 0x16(3)
    blr

fn_8002D634:
    lhz 0, 0x16(3)
    stwu 1, -0x20(1)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8002D64C
    .4byte 0xC0228198 # lfs f1, lbl_8053B138@sda21(r0)
    .4byte 0x48000078 # b .L_8002D6C0
L_8002D64C:
    .4byte 0xC0228198 # lfs f1, lbl_8053B138@sda21(r0)
    lfs 3, 0xc(3)
    fcmpu cr0, 1, 3
    .4byte 0x40820008 # bne .L_8002D660
    .4byte 0x48000064 # b .L_8002D6C0
L_8002D660:
    lfs 2, 0x8(3)
    fcmpo cr0, 2, 1
    .4byte 0x40800030 # bge .L_8002D698
    .4byte 0xC00281A0 # lfs f0, lbl_8053B140@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 0, 2
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 0, 0
    .4byte 0x48000028 # b .L_8002D6BC
L_8002D698:
    .4byte 0xC00281A4 # lfs f0, lbl_8053B144@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 0, 2
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
L_8002D6BC:
    fmuls 1, 3, 0
L_8002D6C0:
    addi 1, 1, 0x20
    blr

fn_8002D6C8:
    lhz 4, 0x16(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_8002D6E0
    subi 0, 4, 0x1
    sth 0, 0x16(3)
    blr
L_8002D6E0:
    .4byte 0xC06281A8 # lfs f3, lbl_8053B148@sda21(r0)
    lfs 0, 0x10(3)
    lfs 2, 0x8(3)
    fmuls 3, 3, 0
    .4byte 0xC002819C # lfs f0, lbl_8053B13C@sda21(r0)
    fmadds 1, 1, 3, 2
    stfs 1, 0x8(3)
    lfs 1, 0x8(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    bnelr
    fsubs 0, 1, 0
    stfs 0, 0x8(3)
    blr

fn_8002D718:
    lhz 0, 0x14(3)
    sth 0, 0x16(3)
    lwz 0, 0x4(3)
    cmpwi 0, 0x1
    .4byte 0x41820024 # beq .L_8002D74C
    bgelr
    cmpwi 0, 0x0
    bltlr
    lis 4, lbl_8052E318@ha
    addi 4, 4, lbl_8052E318@l
    lfs 0, 0x8(4)
    stfs 0, 0x8(3)
    blr
L_8002D74C:
    .4byte 0xC0028198 # lfs f0, lbl_8053B138@sda21(r0)
    stfs 0, 0x8(3)
    blr

fn_8002D758:
    li 4, 0x0
    lis 3, lbl_8052E318@ha
    stwu 4, lbl_8052E318@l(3)
    li 0, 0x1
    .4byte 0xC0228198 # lfs f1, lbl_8053B138@sda21(r0)
    .4byte 0xC002819C # lfs f0, lbl_8053B13C@sda21(r0)
    stw 0, 0x4(3)
    stfs 1, 0x8(3)
    stfs 1, 0xc(3)
    stfs 0, 0x10(3)
    sth 4, 0x14(3)
    sth 4, 0x16(3)
    blr

fn_8002D78C:
    li 0, 0x0
    .4byte 0xC00281B0 # lfs f0, lbl_8053B150@sda21(r0)
    stw 0, 0x0(3)
    sth 0, 0x14(3)
    sth 0, 0x16(3)
    stb 0, 0x18(3)
    stw 0, 0x1c(3)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    stfs 0, 0x8(3)
    stfs 0, 0x4(3)
    blr

fn_8002D7BC:
    stwu 1, -0x10(1)
    li 0, 0x0
    .4byte 0xC00281B0 # lfs f0, lbl_8053B150@sda21(r0)
    cmplwi 4, 0x0
    stw 4, 0x0(3)
    stfs 0, 0x4(3)
    stfs 0, 0x8(3)
    stfs 0, 0xc(3)
    sth 0, 0x14(3)
    sth 0, 0x16(3)
    .4byte 0x4082000C # bne .L_8002D7F0
    stw 0, 0x1c(3)
    .4byte 0x4800006C # b .L_8002D858
L_8002D7F0:
    lwz 4, 0x0(3)
    lwz 4, 0x8(4)
    cmplwi 4, 0x0
    .4byte 0x40820018 # bne .L_8002D814
    li 0, 0x2
    .4byte 0xC00281B4 # lfs f0, lbl_8053B154@sda21(r0)
    stw 0, 0x1c(3)
    stfs 0, 0x8(3)
    .4byte 0x48000048 # b .L_8002D858
L_8002D814:
    lha 4, 0x4(4)
    lis 0, 0x4330
    stw 0, 0x8(1)
    li 0, 0x1
    xoris 4, 4, 0x8000
    .4byte 0xC84281C0 # lfd f2, lbl_8053B160@sda21(r0)
    stw 4, 0xc(1)
    .4byte 0xC00281B8 # lfs f0, lbl_8053B158@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x10(3)
    lwz 4, 0x0(3)
    lwz 4, 0x8(4)
    lha 4, 0x0(4)
    stb 4, 0x18(3)
    stw 0, 0x1c(3)
L_8002D858:
    addi 1, 1, 0x10
    blr

fn_8002D860:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x1c(3)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_8002D894
    .4byte 0x40800010 # bge .L_8002D888
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_8002D8AC
    .4byte 0x48000010 # b .L_8002D894
L_8002D888:
    cmpwi 0, 0x3
    .4byte 0x40800008 # bge .L_8002D894
    .4byte 0x4800001C # b .L_8002D8AC
L_8002D894:
    lwz 4, 0x0(3)
    lfs 0, 0x4(3)
    lfs 2, 0x4(4)
    fmadds 0, 1, 2, 0
    stfs 0, 0x4(3)
    bl fn_8002D9D4
L_8002D8AC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002D8BC:
    lwz 4, 0x0(3)
    lfs 2, 0x8(3)
    lfs 1, 0x10(4)
    lfs 0, 0x14(4)
    fmadds 1, 2, 1, 0
    blr

fn_8002D8D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 4, 0x0(3)
    lwz 0, 0xc(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8002D904
    lhz 0, 0x16(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8002D904
    li 0, 0x10
    sth 0, 0x16(3)
L_8002D904:
    lhz 0, 0x16(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8002D948
    .4byte 0xC02281B0 # lfs f1, lbl_8053B150@sda21(r0)
    li 4, 0x0
    li 0, 0x4
    stfs 1, 0x4(3)
    lfs 0, 0x8(3)
    stfs 0, 0xc(3)
    stfs 1, 0x10(3)
    sth 4, 0x14(3)
    lhz 4, 0x16(3)
    extrwi 4, 4, 2, 16
    stb 4, 0x18(3)
    stw 0, 0x1c(3)
    bl fn_8002D9D4
    .4byte 0x48000080 # b .L_8002D9C4
L_8002D948:
    lwz 5, 0x0(3)
    lwz 4, 0x8(5)
    lwz 0, 0xc(5)
    cmplw 4, 0
    .4byte 0x41820060 # beq .L_8002D9B8
    .4byte 0xC00281B0 # lfs f0, lbl_8053B150@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x8(1)
    li 0, 0x0
    .4byte 0xC84281C0 # lfd f2, lbl_8053B160@sda21(r0)
    stfs 0, 0x4(3)
    .4byte 0xC00281B8 # lfs f0, lbl_8053B158@sda21(r0)
    lfs 1, 0x8(3)
    stfs 1, 0xc(3)
    lwz 4, 0x0(3)
    lwz 4, 0xc(4)
    lha 4, 0x4(4)
    xoris 4, 4, 0x8000
    stw 4, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x10(3)
    sth 0, 0x14(3)
    lwz 4, 0x0(3)
    lwz 4, 0xc(4)
    lha 0, 0x0(4)
    stb 0, 0x18(3)
L_8002D9B8:
    li 0, 0x3
    stw 0, 0x1c(3)
    bl fn_8002D9D4
L_8002D9C4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002D9D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x1c(3)
    cmpwi 0, 0x4
    .4byte 0x40820060 # bne .L_8002DA48
    lhz 4, 0x16(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    clrlwi 4, 4, 18
    .4byte 0xC82281C0 # lfd f1, lbl_8053B160@sda21(r0)
    xoris 4, 4, 0x8000
    lfs 2, 0x4(3)
    stw 4, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x4080001C # bge .L_8002DA34
    stw 4, 0xc(1)
    stw 0, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 1, 0, 1
    bl fn_8002DBB4
    .4byte 0x48000174 # b .L_8002DBA4
L_8002DA34:
    lfs 0, 0x10(3)
    li 0, 0x0
    stfs 0, 0x8(3)
    stw 0, 0x1c(3)
    .4byte 0x48000160 # b .L_8002DBA4
L_8002DA48:
    cmpwi 0, 0x2
    .4byte 0x41820158 # beq .L_8002DBA4
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8002DA64
    lwz 4, 0x0(3)
    lwz 7, 0x8(4)
    .4byte 0x4800000C # b .L_8002DA6C
L_8002DA64:
    lwz 4, 0x0(3)
    lwz 7, 0xc(4)
L_8002DA6C:
    cmplwi 7, 0x0
    .4byte 0x40820010 # bne .L_8002DA80
    li 0, 0x2
    stw 0, 0x1c(3)
    .4byte 0x48000128 # b .L_8002DBA4
L_8002DA80:
    .4byte 0xC86281C0 # lfd f3, lbl_8053B160@sda21(r0)
    lis 5, 0x4330
    .4byte 0x480000C4 # b .L_8002DB4C
L_8002DA8C:
    xoris 0, 4, 0x8000
    stw 5, 0x8(1)
    lfs 1, 0x4(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 3
    fsubs 0, 1, 0
    stfs 0, 0x4(3)
    lfs 0, 0x10(3)
    stfs 0, 0x8(3)
    lhz 4, 0x14(3)
    addi 0, 4, 0x1
    sth 0, 0x14(3)
    lfs 0, 0x8(3)
    stfs 0, 0xc(3)
    lhz 0, 0x14(3)
    mulli 0, 0, 0x6
    add 4, 7, 0
    lha 0, 0x0(4)
    cmpwi 0, 0xe
    .4byte 0x41820028 # beq .L_8002DB04
    .4byte 0x40800010 # bge .L_8002DAF0
    cmpwi 0, 0xd
    .4byte 0x40800028 # bge .L_8002DB10
    .4byte 0x48000030 # b .L_8002DB1C
L_8002DAF0:
    cmpwi 0, 0x10
    .4byte 0x40800028 # bge .L_8002DB1C
    li 0, 0x0
    stw 0, 0x1c(3)
    .4byte 0x480000A4 # b .L_8002DBA4
L_8002DB04:
    li 0, 0x2
    stw 0, 0x1c(3)
    .4byte 0x48000098 # b .L_8002DBA4
L_8002DB10:
    lha 0, 0x4(4)
    sth 0, 0x14(3)
    .4byte 0x48000034 # b .L_8002DB4C
L_8002DB1C:
    stb 0, 0x18(3)
    lis 0, 0x4330
    .4byte 0xC84281C0 # lfd f2, lbl_8053B160@sda21(r0)
    lha 4, 0x4(4)
    stw 0, 0x8(1)
    xoris 0, 4, 0x8000
    .4byte 0xC00281B8 # lfs f0, lbl_8053B158@sda21(r0)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x10(3)
L_8002DB4C:
    lhz 0, 0x14(3)
    stw 5, 0x8(1)
    mulli 6, 0, 0x6
    lfs 1, 0x4(3)
    addi 0, 6, 0x2
    lhax 4, 7, 0
    xoris 0, 4, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 3
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4182FF10 # beq .L_8002DA8C
    add 4, 7, 6
    lis 0, 0x4330
    lha 4, 0x2(4)
    stw 0, 0x8(1)
    xoris 0, 4, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 1, 0, 3
    bl fn_8002DBB4
L_8002DBA4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002DBB4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lis 3, lbl_80491970@ha
    lfs 0, 0x4(30)
    addi 3, 3, lbl_80491970@l
    lbz 0, 0x18(30)
    fdivs 0, 0, 1
    .4byte 0xC02281C8 # lfs f1, lbl_8053B168@sda21(r0)
    slwi 0, 0, 2
    lwzx 31, 3, 0
    fmuls 31, 1, 0
    fmr 1, 31
    bl __cvt_fp2unsigned
    lis 0, 0x4330
    slwi 4, 3, 2
    stw 3, 0xc(1)
    add 3, 31, 4
    .4byte 0xC84281D0 # lfd f2, lbl_8053B170@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0A281B4 # lfs f5, lbl_8053B154@sda21(r0)
    lfd 1, 0x8(1)
    lfs 0, 0x4(3)
    fsubs 4, 1, 2
    lfsx 3, 31, 4
    lfs 1, 0x10(30)
    lfs 2, 0xc(30)
    fsubs 6, 31, 4
    fsubs 4, 5, 6
    fmuls 0, 6, 0
    fmadds 3, 4, 3, 0
    fsubs 0, 5, 3
    fmuls 0, 1, 0
    fmadds 0, 2, 3, 0
    stfs 0, 0x8(30)
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8002DC74:
    lfs 1, 0x0(4)
    lfs 0, 0x0(5)
    lfs 3, 0x8(4)
    fmuls 5, 1, 0
    lfs 2, 0x8(5)
    lfs 1, 0xc(4)
    lfs 0, 0xc(5)
    fmuls 4, 3, 2
    stfs 5, 0x0(3)
    lfs 3, 0x4(4)
    fadds 1, 1, 0
    lfs 2, 0x4(5)
    .4byte 0xC00281D8 # lfs f0, lbl_8053B178@sda21(r0)
    fadds 3, 3, 2
    stfs 4, 0x8(3)
    fsubs 2, 1, 0
    lfs 1, 0x10(4)
    lfs 0, 0x10(5)
    stfs 3, 0x4(3)
    fadds 0, 1, 0
    stfs 2, 0xc(3)
    stfs 0, 0x10(3)
    blr

fn_8002DCD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    lwz 4, 0x14(3)
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8002E200
    lwz 0, 0x8(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8002DD10
    mr 3, 30
    mr 4, 31
    bl fn_8002DF5C
    .4byte 0x48000010 # b .L_8002DD1C
L_8002DD10:
    mr 3, 30
    mr 4, 31
    bl fn_8002DD34
L_8002DD1C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002DD34:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stmw 16, 0x30(1)
    mr. 26, 4
    mr 16, 3
    .4byte 0x40820008 # bne .L_8002DD54
    .4byte 0x834D8700 # lwz r26, lbl_8053A2C0@sda21(r0)
L_8002DD54:
    mr 3, 26
    bl fn_80083A3C
    mr 25, 3
    mr 29, 16
    mr 4, 26
    li 3, 0x2c
    li 5, 0x0
    bl fn_8008440C
    mr. 24, 3
    .4byte 0x4182000C # beq .L_8002DD84
    bl fn_8002E90C
    mr 24, 3
L_8002DD84:
    cmplwi 24, 0x0
    .4byte 0x4082000C # bne .L_8002DD94
    li 3, 0x0
    .4byte 0x480001B8 # b .L_8002DF48
L_8002DD94:
    lwz 4, 0x14(29)
    mr 3, 29
    bl fn_8002E200
    mr 23, 3
    mr 3, 24
    lwz 4, 0x8(23)
    mr 5, 26
    bl fn_8002EA60
    mr 31, 23
    li 28, 0x0
    li 27, 0x0
    li 30, 0x0
    .4byte 0x4800014C # b .L_8002DF10
L_8002DDC8:
    lwz 4, 0xc(31)
    mr 3, 29
    bl fn_8002E1E8
    mr 4, 3
    mr 3, 29
    lwz 4, 0xc(4)
    bl fn_8002E1D0
    mr 22, 3
    mr 3, 24
    mr 4, 27
    bl fn_8002EA3C
    lwz 4, 0x10(29)
    mr 18, 3
    mr 3, 29
    bl fn_8002E1B8
    addi 0, 30, 0x8
    lwzx 4, 3, 0
    mr 3, 29
    bl fn_8002E1A0
    lwz 4, 0x4(22)
    mr 21, 3
    mr 3, 18
    mr 5, 26
    bl fn_8002ED08
    mr 20, 21
    mr 19, 22
    li 17, 0x0
    .4byte 0x480000B8 # b .L_8002DEEC
L_8002DE38:
    lwz 4, 0x74(20)
    mr 3, 29
    bl fn_8002E188
    li 4, 0x3c
    .4byte 0x380D8018 # li r0, lbl_80539BD8@sda21
    stb 4, 0x9(1)
    stw 0, 0x2c(1)
    lbz 0, 0x1(3)
    stb 0, 0x8(1)
    lbz 0, 0x2(3)
    stb 0, 0x9(1)
    lfs 0, 0x4(3)
    stfs 0, 0xc(1)
    lwz 0, 0x8(3)
    stw 0, 0x10(1)
    lwz 0, 0xc(3)
    stw 0, 0x14(1)
    lwz 0, 0x10(3)
    stw 0, 0x18(1)
    lwz 0, 0x14(3)
    stw 0, 0x1c(1)
    lwz 0, 0x18(3)
    stw 0, 0x20(1)
    lwz 0, 0x1c(3)
    stw 0, 0x24(1)
    lha 0, 0x20(3)
    sth 0, 0x28(1)
    lha 0, 0x22(3)
    mr 3, 29
    sth 0, 0x2a(1)
    lwz 4, 0x8(19)
    bl fn_8002E170
    lwz 0, 0x0(3)
    mr 3, 18
    mr 4, 17
    addi 6, 1, 0x8
    clrlwi 5, 0, 16
    mr 16, 5
    bl fn_8002EEC4
    cmplw 28, 16
    .4byte 0x40800008 # bge .L_8002DEE0
    mr 28, 16
L_8002DEE0:
    addi 20, 20, 0x4
    addi 19, 19, 0x4
    addi 17, 17, 0x1
L_8002DEEC:
    lwz 0, 0x4(22)
    cmplw 17, 0
    .4byte 0x4180FF44 # blt .L_8002DE38
    mr 3, 18
    mr 4, 21
    bl fn_80031358
    addi 31, 31, 0x4
    addi 30, 30, 0x4
    addi 27, 27, 0x1
L_8002DF10:
    lwz 0, 0x8(23)
    cmplw 27, 0
    .4byte 0x4180FEB0 # blt .L_8002DDC8
    mr 3, 24
    mr 5, 26
    addi 4, 28, 0x1
    bl fn_8002EB40
    mr 3, 26
    bl fn_80083A3C
    .4byte 0x800D8780 # lwz r0, lbl_8053A340@sda21(r0)
    subf 4, 3, 25
    mr 3, 24
    add 0, 0, 4
    .4byte 0x900D8780 # stw r0, lbl_8053A340@sda21(r0)
L_8002DF48:
    lmw 16, 0x30(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8002DF5C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 23, 0x3c(1)
    mr. 23, 4
    mr 24, 3
    .4byte 0x40820008 # bne .L_8002DF7C
    .4byte 0x82ED8700 # lwz r23, lbl_8053A2C0@sda21(r0)
L_8002DF7C:
    mr 3, 23
    bl fn_80083A3C
    lwz 4, 0x14(24)
    mr 31, 3
    mr 25, 24
    mr 3, 24
    bl fn_8002E200
    mr 24, 3
    lwz 0, 0x8(3)
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_8002DFB0
    li 3, 0x0
    .4byte 0x480001B0 # b .L_8002E15C
L_8002DFB0:
    mr 4, 23
    li 3, 0x80
    li 5, 0x0
    bl fn_8008440C
    mr. 30, 3
    .4byte 0x4182000C # beq .L_8002DFD0
    bl fn_80030BD0
    mr 30, 3
L_8002DFD0:
    cmplwi 30, 0x0
    .4byte 0x4082000C # bne .L_8002DFE0
    li 3, 0x0
    .4byte 0x48000180 # b .L_8002E15C
L_8002DFE0:
    lwz 4, 0xc(24)
    mr 3, 25
    li 26, 0x0
    bl fn_8002E1E8
    mr 4, 3
    mr 3, 25
    lwz 4, 0xc(4)
    bl fn_8002E1D0
    lwz 4, 0x10(25)
    mr 29, 3
    mr 3, 25
    bl fn_8002E1B8
    mr 4, 3
    mr 3, 25
    lwz 4, 0x8(4)
    bl fn_8002E1A0
    mr 24, 29
    mr 28, 3
    li 27, 0x0
    .4byte 0x4800002C # b .L_8002E058
L_8002E030:
    lwz 4, 0x8(24)
    mr 3, 25
    bl fn_8002E170
    lwz 0, 0x0(3)
    clrlwi 0, 0, 16
    cmplw 26, 0
    .4byte 0x40800008 # bge .L_8002E050
    mr 26, 0
L_8002E050:
    addi 24, 24, 0x4
    addi 27, 27, 0x1
L_8002E058:
    lwz 0, 0x4(29)
    cmplw 27, 0
    .4byte 0x4180FFD0 # blt .L_8002E030
    mr 3, 30
    mr 5, 23
    addi 4, 26, 0x1
    bl fn_80030D1C
    mr 27, 28
    mr 26, 29
    li 24, 0x0
    .4byte 0x480000A8 # b .L_8002E128
L_8002E084:
    lwz 4, 0x74(27)
    mr 3, 25
    bl fn_8002E188
    li 4, 0x3c
    .4byte 0x380D8018 # li r0, lbl_80539BD8@sda21
    stb 4, 0x9(1)
    stw 0, 0x2c(1)
    lbz 0, 0x1(3)
    stb 0, 0x8(1)
    lbz 0, 0x2(3)
    stb 0, 0x9(1)
    lfs 0, 0x4(3)
    stfs 0, 0xc(1)
    lwz 0, 0x8(3)
    stw 0, 0x10(1)
    lwz 0, 0xc(3)
    stw 0, 0x14(1)
    lwz 0, 0x10(3)
    stw 0, 0x18(1)
    lwz 0, 0x14(3)
    stw 0, 0x1c(1)
    lwz 0, 0x18(3)
    stw 0, 0x20(1)
    lwz 0, 0x1c(3)
    stw 0, 0x24(1)
    lha 0, 0x20(3)
    sth 0, 0x28(1)
    lha 0, 0x22(3)
    mr 3, 25
    sth 0, 0x2a(1)
    lwz 4, 0x8(26)
    bl fn_8002E170
    mr 4, 3
    mr 3, 30
    lwz 0, 0x0(4)
    addi 5, 1, 0x8
    clrlwi 4, 0, 16
    bl fn_80030DCC
    addi 27, 27, 0x4
    addi 26, 26, 0x4
    addi 24, 24, 0x1
L_8002E128:
    lwz 0, 0x4(29)
    cmplw 24, 0
    .4byte 0x4180FF54 # blt .L_8002E084
    mr 4, 28
    addi 3, 30, 0x4
    bl fn_80031358
    mr 3, 23
    bl fn_80083A3C
    .4byte 0x800D8780 # lwz r0, lbl_8053A340@sda21(r0)
    subf 4, 3, 31
    mr 3, 30
    add 0, 0, 4
    .4byte 0x900D8780 # stw r0, lbl_8053A340@sda21(r0)
L_8002E15C:
    lmw 23, 0x3c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8002E170:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002E180
    li 3, 0x0
    blr
L_8002E180:
    add 3, 3, 4
    blr

fn_8002E188:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002E198
    li 3, 0x0
    blr
L_8002E198:
    add 3, 3, 4
    blr

fn_8002E1A0:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002E1B0
    li 3, 0x0
    blr
L_8002E1B0:
    add 3, 3, 4
    blr

fn_8002E1B8:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002E1C8
    li 3, 0x0
    blr
L_8002E1C8:
    add 3, 3, 4
    blr

fn_8002E1D0:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002E1E0
    li 3, 0x0
    blr
L_8002E1E0:
    add 3, 3, 4
    blr

fn_8002E1E8:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002E1F8
    li 3, 0x0
    blr
L_8002E1F8:
    add 3, 3, 4
    blr

fn_8002E200:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002E210
    li 3, 0x0
    blr
L_8002E210:
    add 3, 3, 4
    blr

fn_8002E218:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80491994@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_80491994@l
    li 4, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_80491980@ha
    stw 0, 0x0(31)
    addi 0, 3, lbl_80491980@l
    addi 3, 31, 0x8
    stw 4, 0x4(31)
    li 4, 0x3c0
    stw 0, 0x0(31)
    bl fn_80027B18
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E270:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 7
    stw 30, 0x18(1)
    mr 30, 6
    stw 29, 0x14(1)
    mr 29, 5
    bl fn_8002E2F0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8002E2A8
    li 3, 0x0
    .4byte 0x48000020 # b .L_8002E2C4
L_8002E2A8:
    lwz 12, 0x0(3)
    mr 4, 29
    mr 5, 30
    mr 6, 31
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_8002E2C4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002E2E0:
    slwi 0, 4, 2
    add 3, 3, 0
    stw 5, 0x8(3)
    blr

fn_8002E2F0:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_8002E300
    li 3, 0x0
    blr
L_8002E300:
    cmpwi 4, 0xf0
    .4byte 0x4180000C # blt .L_8002E310
    li 3, 0x0
    blr
L_8002E310:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    blr

fn_8002E320:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8002E350
    lis 5, lbl_80491994@ha
    extsh. 0, 4
    addi 0, 5, lbl_80491994@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8002E350
    bl dtor_80084580
L_8002E350:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E368:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820030 # beq .L_8002E3AC
    lis 3, lbl_80491980@ha
    addi 0, 3, lbl_80491980@l
    stw 0, 0x0(31)
    .4byte 0x41820010 # beq .L_8002E39C
    lis 3, lbl_80491994@ha
    addi 0, 3, lbl_80491994@l
    stw 0, 0x0(31)
L_8002E39C:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_8002E3AC
    mr 3, 31
    bl dtor_80084580
L_8002E3AC:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E3C4:
    lis 3, 0x4253
    addi 3, 3, 0x4943
    blr

fn_8002E3D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_8002E418
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2850@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2850@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8002E418:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E428:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804919BC@ha
    .4byte 0xC00281E0 # lfs f0, lbl_8053B180@sda21(r0)
    stw 0, 0x14(1)
    addi 0, 4, lbl_804919BC@l
    li 4, 0x8
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_804919A8@ha
    stw 0, 0x0(31)
    addi 3, 3, lbl_804919A8@l
    li 0, 0x0
    stw 3, 0x0(31)
    addi 3, 31, 0xc
    stfs 0, 0x4(31)
    stfs 0, 0x8(31)
    stw 0, 0x14(31)
    stw 0, 0x18(31)
    stw 0, 0x1c(31)
    bl fn_80027B18
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E494:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820044 # beq .L_8002E4F4
    lis 4, lbl_804919A8@ha
    lis 3, fn_8002E74C@ha
    addi 0, 4, lbl_804919A8@l
    stw 0, 0x0(30)
    addi 4, 3, fn_8002E74C@l
    lwz 3, 0x1c(30)
    bl fn_80066F08
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_8002E4E4
    lis 3, lbl_804919BC@ha
    addi 0, 3, lbl_804919BC@l
    stw 0, 0x0(30)
L_8002E4E4:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8002E4F4
    mr 3, 30
    bl dtor_80084580
L_8002E4F4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E510:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x2
    stmw 27, 0xc(1)
    mr 27, 3
    mr 29, 6
    li 6, 0x0
    addi 3, 27, 0xc
    lfs 1, 0x4(27)
    lfs 0, 0x8(27)
    mr 30, 4
    lwz 31, 0x14(27)
    mr 28, 5
    stw 6, 0x14(29)
    stb 6, 0x24(29)
    stw 3, 0x1c(29)
    stw 0, 0x20(29)
    stfs 1, 0x0(29)
    stfs 0, 0x8(29)
    .4byte 0x48000028 # b .L_8002E588
L_8002E564:
    lwz 3, 0x4(31)
    mr 4, 30
    mr 5, 28
    mr 6, 29
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    lwz 31, 0x0(31)
L_8002E588:
    cmplwi 31, 0x0
    .4byte 0x4082FFD8 # bne .L_8002E564
    lwz 4, 0x1c(27)
    li 31, 0x0
    lwz 0, 0x18(27)
    li 5, 0x0
    mr 3, 4
    mtctr 0
    cmplwi 0, 0x0
    .4byte 0x40810028 # ble .L_8002E5D4
L_8002E5B0:
    lwz 0, 0x0(3)
    cmpw 30, 0
    .4byte 0x41810010 # bgt .L_8002E5C8
    mulli 0, 5, 0xc
    add 31, 4, 0
    .4byte 0x48000010 # b .L_8002E5D4
L_8002E5C8:
    addi 3, 3, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FFE0 # bdnz .L_8002E5B0
L_8002E5D4:
    cmplwi 31, 0x0
    .4byte 0x4082000C # bne .L_8002E5E4
    li 3, 0x0
    .4byte 0x48000068 # b .L_8002E648
L_8002E5E4:
    li 30, 0x0
    .4byte 0x48000050 # b .L_8002E638
L_8002E5EC:
    mr 3, 31
    mr 4, 30
    bl fn_8002E824
    lwz 0, 0x0(3)
    cmpw 28, 0
    .4byte 0x41810034 # bgt .L_8002E634
    lfs 1, 0x0(29)
    lfs 0, 0x8(3)
    fmuls 0, 1, 0
    stfs 0, 0x0(29)
    lfs 1, 0x8(29)
    lfs 0, 0xc(3)
    fmuls 0, 1, 0
    stfs 0, 0x8(29)
    lwz 0, 0x4(3)
    li 3, 0x1
    stw 0, 0x18(29)
    .4byte 0x48000018 # b .L_8002E648
L_8002E634:
    addi 30, 30, 0x1
L_8002E638:
    lwz 0, 0x4(31)
    cmplw 30, 0
    .4byte 0x4180FFAC # blt .L_8002E5EC
    li 3, 0x0
L_8002E648:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002E65C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lis 3, fn_8002E74C@ha
    addi 0, 3, fn_8002E74C@l
    lwz 3, 0x1c(29)
    mr 4, 0
    bl fn_80066F08
    mulli 3, 30, 0xc
    mr 4, 31
    li 5, 0x0
    addi 3, 3, 0x10
    bl fn_80084514
    lis 4, fn_8002E890@ha
    lis 5, fn_8002E74C@ha
    addi 4, 4, fn_8002E890@l
    mr 7, 30
    addi 5, 5, fn_8002E74C@l
    li 6, 0xc
    bl fn_800671B0
    stw 3, 0x1c(29)
    stw 30, 0x18(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002E6E8:
    lwz 5, 0x14(3)
    cmplwi 5, 0x0
    .4byte 0x40820014 # bne .L_8002E704
    stw 4, 0x14(3)
    blr
    .4byte 0x48000008 # b .L_8002E704
L_8002E700:
    mr 5, 0
L_8002E704:
    lwz 0, 0x0(5)
    cmplwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_8002E700
    stw 4, 0x0(5)
    blr

fn_8002E718:
    slwi 0, 4, 2
    add 3, 3, 0
    stw 5, 0xc(3)
    blr

fn_8002E728:
    lwz 0, 0x18(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8002E73C
    li 3, 0x0
    blr
L_8002E73C:
    mulli 0, 4, 0xc
    lwz 3, 0x1c(3)
    add 3, 3, 0
    blr

fn_8002E74C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_8002E784
    lwz 3, 0x8(30)
    bl fn_800845A4
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8002E784
    mr 3, 30
    bl dtor_80084580
L_8002E784:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E7A0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x8(3)
    bl fn_800845A4
    mr 4, 31
    slwi 3, 30, 4
    li 5, 0x0
    bl fn_80084514
    stw 3, 0x8(29)
    stw 30, 0x4(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002E800:
    lwz 0, 0x4(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8002E814
    li 3, 0x0
    blr
L_8002E814:
    lwz 3, 0x8(3)
    slwi 0, 4, 4
    add 3, 3, 0
    blr

fn_8002E824:
    lwz 0, 0x4(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8002E838
    li 3, 0x0
    blr
L_8002E838:
    lwz 3, 0x8(3)
    slwi 0, 4, 4
    add 3, 3, 0
    blr

fn_8002E848:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8002E878
    lis 5, lbl_804919BC@ha
    extsh. 0, 4
    addi 0, 5, lbl_804919BC@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8002E878
    bl dtor_80084580
L_8002E878:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E890:
    li 4, -0x1
    li 0, 0x0
    stw 4, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    blr

fn_8002E8A8:
    lis 3, 0x4253
    addi 3, 3, 0x4943
    blr

fn_8002E8B4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_8002E8FC
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2860@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2860@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8002E8FC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E90C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80491A28@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_80491A28@l
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_80491A10@ha
    stw 0, 0x0(31)
    addi 4, 3, lbl_80491A10@l
    li 0, 0x0
    addi 3, 31, 0x4
    stw 4, 0x0(31)
    stw 0, 0x1c(31)
    stw 0, 0x20(31)
    stw 0, 0x24(31)
    stw 0, 0x28(31)
    bl OSInitMutex
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002E96C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x41820088 # beq .L_8002EA18
    lis 3, lbl_80491A10@ha
    addi 0, 3, lbl_80491A10@l
    stw 0, 0x0(28)
    lwz 3, 0x1c(28)
    bl fn_800845A4
    li 30, 0x0
    li 31, 0x0
    .4byte 0x48000030 # b .L_8002E9E0
L_8002E9B4:
    lwz 3, 0x24(28)
    lwzx 3, 3, 31
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8002E9D8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8002E9D8:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_8002E9E0:
    lwz 0, 0x28(28)
    cmplw 30, 0
    .4byte 0x4180FFCC # blt .L_8002E9B4
    lwz 3, 0x24(28)
    bl fn_800845A4
    cmplwi 28, 0x0
    .4byte 0x41820010 # beq .L_8002EA08
    lis 3, lbl_80491A28@ha
    addi 0, 3, lbl_80491A28@l
    stw 0, 0x0(28)
L_8002EA08:
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_8002EA18
    mr 3, 28
    bl dtor_80084580
L_8002EA18:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002EA3C:
    lwz 0, 0x28(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8002EA50
    li 3, 0x0
    blr
L_8002EA50:
    lwz 3, 0x24(3)
    slwi 0, 4, 2
    lwzx 3, 3, 0
    blr

fn_8002EA60:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    li 30, 0x0
    li 31, 0x0
    .4byte 0x48000030 # b .L_8002EAB4
L_8002EA88:
    lwz 3, 0x24(27)
    lwzx 3, 3, 31
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8002EAAC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8002EAAC:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_8002EAB4:
    lwz 0, 0x28(27)
    cmplw 30, 0
    .4byte 0x4180FFCC # blt .L_8002EA88
    lwz 3, 0x24(27)
    bl fn_800845A4
    stw 28, 0x28(27)
    mr 4, 29
    slwi 3, 28, 2
    li 5, 0x0
    bl fn_80084514
    stw 3, 0x24(27)
    li 30, 0x0
    li 31, 0x0
    .4byte 0x48000038 # b .L_8002EB20
L_8002EAEC:
    mr 4, 29
    li 3, 0x80
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8002EB10
    mr 4, 27
    bl fn_8002EBDC
    mr 0, 3
L_8002EB10:
    lwz 3, 0x24(27)
    addi 30, 30, 0x1
    stwx 0, 3, 31
    addi 31, 31, 0x4
L_8002EB20:
    lwz 0, 0x28(27)
    cmplw 30, 0
    .4byte 0x4180FFC4 # blt .L_8002EAEC
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002EB40:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x1c(3)
    bl fn_800845A4
    mr 4, 31
    slwi 3, 30, 2
    li 5, 0x0
    bl fn_80084514
    stw 3, 0x1c(29)
    slwi 4, 30, 2
    lwz 3, 0x1c(29)
    bl fn_80027B18
    stw 30, 0x20(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002EBAC:
    lwz 0, 0x20(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8002EBC0
    li 3, 0x0
    blr
L_8002EBC0:
    lwz 3, 0x1c(3)
    slwi 0, 4, 2
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    bnelr
    li 3, 0x0
    blr

fn_8002EBDC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80030F58
    lis 3, lbl_804919F8@ha
    li 0, 0x0
    addi 4, 3, lbl_804919F8@l
    mr 3, 30
    stw 4, 0x0(30)
    stw 31, 0x74(30)
    stw 0, 0x78(30)
    stw 0, 0x7c(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002EC34:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_8002EC8C
    lis 4, lbl_804919F8@ha
    lis 3, fn_8002ECA8@ha
    addi 0, 4, lbl_804919F8@l
    stw 0, 0x0(30)
    addi 4, 3, fn_8002ECA8@l
    lwz 3, 0x78(30)
    bl fn_80066F08
    mr 3, 30
    li 4, 0x0
    bl fn_80030FD0
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8002EC8C
    mr 3, 30
    bl dtor_80084580
L_8002EC8C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002ECA8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820034 # beq .L_8002ECF0
    .4byte 0x41820020 # beq .L_8002ECE0
    lis 3, lbl_804919D0@ha
    addi 0, 3, lbl_804919D0@l
    stw 0, 0x0(31)
    .4byte 0x41820010 # beq .L_8002ECE0
    lis 3, lbl_804919E4@ha
    addi 0, 3, lbl_804919E4@l
    stw 0, 0x0(31)
L_8002ECE0:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_8002ECF0
    mr 3, 31
    bl dtor_80084580
L_8002ECF0:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002ED08:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 30, 3
    lis 3, fn_8002ECA8@ha
    mr 31, 4
    addi 0, 3, fn_8002ECA8@l
    mr 23, 5
    mr 4, 0
    lwz 3, 0x78(30)
    bl fn_80066F08
    mulli 3, 31, 0x3c
    stw 31, 0x7c(30)
    mr 4, 23
    li 5, 0x0
    addi 3, 3, 0x10
    bl fn_80084514
    lis 4, fn_8002F1A4@ha
    lis 5, fn_8002ECA8@ha
    addi 4, 4, fn_8002F1A4@l
    mr 7, 31
    addi 5, 5, fn_8002ECA8@l
    li 6, 0x3c
    bl fn_800671B0
    cmplwi 31, 0x0
    stw 3, 0x78(30)
    li 5, 0x0
    .4byte 0x40810138 # ble .L_8002EEB0
    cmplwi 31, 0x8
    subi 7, 31, 0x8
    .4byte 0x408100F0 # ble .L_8002EE74
    addi 6, 7, 0x7
    addi 3, 30, 0x4
    srwi 6, 6, 3
    addi 0, 30, 0x48
    li 4, 0x0
    mtctr 6
    cmplwi 7, 0x0
    .4byte 0x408100D0 # ble .L_8002EE74
L_8002EDA8:
    lwz 9, 0x78(30)
    addi 8, 4, 0x2c
    addi 7, 4, 0x28
    addi 6, 4, 0x68
    stwx 3, 9, 8
    addi 24, 4, 0x64
    addi 25, 4, 0xa4
    addi 26, 4, 0xa0
    lwz 8, 0x78(30)
    addi 27, 4, 0xe0
    addi 28, 4, 0xdc
    addi 29, 4, 0x11c
    stwx 0, 8, 7
    addi 12, 4, 0x118
    addi 11, 4, 0x158
    addi 10, 4, 0x154
    lwz 23, 0x78(30)
    addi 9, 4, 0x194
    addi 8, 4, 0x190
    addi 7, 4, 0x1d0
    stwx 3, 23, 6
    addi 6, 4, 0x1cc
    addi 4, 4, 0x1e0
    addi 5, 5, 0x8
    lwz 23, 0x78(30)
    stwx 0, 23, 24
    lwz 24, 0x78(30)
    stwx 3, 24, 25
    lwz 25, 0x78(30)
    stwx 0, 25, 26
    lwz 26, 0x78(30)
    stwx 3, 26, 27
    lwz 27, 0x78(30)
    stwx 0, 27, 28
    lwz 28, 0x78(30)
    stwx 3, 28, 29
    lwz 29, 0x78(30)
    stwx 0, 29, 12
    lwz 12, 0x78(30)
    stwx 3, 12, 11
    lwz 11, 0x78(30)
    stwx 0, 11, 10
    lwz 10, 0x78(30)
    stwx 3, 10, 9
    lwz 9, 0x78(30)
    stwx 0, 9, 8
    lwz 8, 0x78(30)
    stwx 3, 8, 7
    lwz 7, 0x78(30)
    stwx 0, 7, 6
    .4byte 0x4200FF38 # bdnz .L_8002EDA8
L_8002EE74:
    subf 0, 5, 31
    addi 6, 30, 0x4
    mulli 7, 5, 0x3c
    addi 4, 30, 0x48
    mtctr 0
    cmplw 5, 31
    .4byte 0x40800024 # bge .L_8002EEB0
L_8002EE90:
    lwz 5, 0x78(30)
    addi 3, 7, 0x2c
    addi 0, 7, 0x28
    addi 7, 7, 0x3c
    stwx 6, 5, 3
    lwz 3, 0x78(30)
    stwx 4, 3, 0
    .4byte 0x4200FFE4 # bdnz .L_8002EE90
L_8002EEB0:
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8002EEC4:
    mulli 11, 4, 0x3c
    lwz 7, 0x78(3)
    lbz 9, 0x0(6)
    addi 4, 3, 0x48
    lbz 0, 0x1(6)
    add 7, 7, 11
    stw 5, 0x30(7)
    addi 10, 11, 0x4
    lfs 0, 0x4(6)
    lwz 5, 0x78(3)
    lwz 8, 0x8(6)
    add 10, 5, 10
    lwz 7, 0xc(6)
    stb 9, 0x0(10)
    lwz 5, 0x10(6)
    stb 0, 0x1(10)
    lwz 0, 0x14(6)
    stfs 0, 0x4(10)
    lwz 9, 0x18(6)
    stw 8, 0x8(10)
    lwz 8, 0x1c(6)
    stw 7, 0xc(10)
    lha 7, 0x20(6)
    stw 5, 0x10(10)
    lha 5, 0x22(6)
    stw 0, 0x14(10)
    lwz 0, 0x24(6)
    stw 9, 0x18(10)
    stw 8, 0x1c(10)
    sth 7, 0x20(10)
    sth 5, 0x22(10)
    stw 0, 0x24(10)
    lwz 0, 0x78(3)
    add 3, 0, 11
    stw 4, 0x28(3)
    blr

fn_8002EF54:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 27, 3
    lwz 29, 0x74(3)
    addi 3, 29, 0x4
    stw 3, 0x8(1)
    bl OSLockMutex
    li 30, 0x0
    mr 28, 30
    mr 31, 30
    .4byte 0x48000048 # b .L_8002EFCC
L_8002EF88:
    mr 3, 27
    mr 4, 30
    bl fn_8002F0DC
    lwz 0, 0x78(27)
    slwi 4, 3, 2
    lwz 3, 0x1c(29)
    add 5, 0, 28
    stw 31, 0x38(5)
    lwzx 0, 3, 4
    stw 0, 0x34(5)
    lwzx 6, 3, 4
    cmplwi 6, 0x0
    .4byte 0x41820008 # beq .L_8002EFC0
    stw 5, 0x38(6)
L_8002EFC0:
    stwx 5, 3, 4
    addi 28, 28, 0x3c
    addi 30, 30, 0x1
L_8002EFCC:
    lwz 0, 0x7c(27)
    cmplw 30, 0
    .4byte 0x4180FFB4 # blt .L_8002EF88
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8002EFF4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lwz 30, 0x74(3)
    addi 3, 30, 0x4
    stw 3, 0x8(1)
    bl OSLockMutex
    li 31, 0x0
    mr 29, 31
    .4byte 0x4800007C # b .L_8002F0A8
L_8002F030:
    mr 3, 28
    mr 4, 31
    bl fn_8002F0DC
    lwz 4, 0x1c(30)
    slwi 3, 3, 2
    lwz 0, 0x78(28)
    lwzx 5, 4, 3
    add 0, 0, 29
    .4byte 0x48000048 # b .L_8002F098
L_8002F054:
    cmplw 5, 0
    .4byte 0x4082003C # bne .L_8002F094
    lwz 6, 0x38(5)
    cmplwi 6, 0x0
    .4byte 0x40820010 # bne .L_8002F074
    lwz 0, 0x34(5)
    stwx 0, 4, 3
    .4byte 0x4800000C # b .L_8002F07C
L_8002F074:
    lwz 0, 0x34(5)
    stw 0, 0x34(6)
L_8002F07C:
    lwz 3, 0x34(5)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8002F0A0
    lwz 0, 0x38(5)
    stw 0, 0x38(3)
    .4byte 0x48000010 # b .L_8002F0A0
L_8002F094:
    lwz 5, 0x34(5)
L_8002F098:
    cmplwi 5, 0x0
    .4byte 0x4082FFB8 # bne .L_8002F054
L_8002F0A0:
    addi 29, 29, 0x3c
    addi 31, 31, 0x1
L_8002F0A8:
    lwz 0, 0x7c(28)
    cmplw 31, 0
    .4byte 0x4180FF80 # blt .L_8002F030
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002F0DC:
    mulli 0, 4, 0x3c
    lwz 3, 0x78(3)
    add 3, 3, 0
    lwz 3, 0x30(3)
    blr

fn_8002F0F0:
    lwz 4, 0x2c(3)
    lwz 4, 0x38(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8002F108
    li 3, 0x0
    blr
L_8002F108:
    lwz 0, 0xc(3)
    add 3, 4, 0
    blr

fn_8002F114:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8002F144
    lis 5, lbl_80491A28@ha
    extsh. 0, 4
    addi 0, 5, lbl_80491A28@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8002F144
    bl dtor_80084580
L_8002F144:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002F15C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8002F18C
    lis 5, lbl_804919E4@ha
    extsh. 0, 4
    addi 0, 5, lbl_804919E4@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8002F18C
    bl dtor_80084580
L_8002F18C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002F1A4:
    lis 6, lbl_804919E4@ha
    lis 4, lbl_804919D0@ha
    addi 0, 6, lbl_804919E4@l
    li 5, 0x3c
    stw 0, 0x0(3)
    addi 6, 4, lbl_804919D0@l
    .4byte 0x388D8018 # li r4, lbl_80539BD8@sda21
    li 0, 0x0
    stw 6, 0x0(3)
    stb 5, 0x5(3)
    stw 4, 0x28(3)
    stw 0, 0x2c(3)
    stw 0, 0x30(3)
    stw 0, 0x34(3)
    stw 0, 0x38(3)
    blr

fn_8002F1E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820030 # beq .L_8002F228
    lis 3, lbl_804919D0@ha
    addi 0, 3, lbl_804919D0@l
    stw 0, 0x0(31)
    .4byte 0x41820010 # beq .L_8002F218
    lis 3, lbl_804919E4@ha
    addi 0, 3, lbl_804919E4@l
    stw 0, 0x0(31)
L_8002F218:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_8002F228
    mr 3, 31
    bl dtor_80084580
L_8002F228:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002F240:
    addi 3, 3, 0x4
    blr

fn_8002F248:
    lwz 0, 0x28(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8002F25C
    li 3, 0x0
    blr
L_8002F25C:
    lwz 3, 0x24(3)
    slwi 0, 4, 2
    lwzx 3, 3, 0
    blr

fn_8002F26C:
    lwz 3, 0x28(3)
    blr

fn_8002F274:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8002F294
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8002F294:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr. 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x40820008 # bne .L_8002F2C0
    .4byte 0x83AD8700 # lwz r29, lbl_8053A2C0@sda21(r0)
L_8002F2C0:
    mr 3, 29
    bl fn_80083A3C
    lwz 0, 0xc(28)
    mr 31, 3
    li 30, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8002F300
    .4byte 0x40800034 # bge .L_8002F310
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8002F2EC
    .4byte 0x48000028 # b .L_8002F310
L_8002F2EC:
    mr 3, 28
    mr 4, 29
    bl fn_8002FB90
    mr 30, 3
    .4byte 0x48000014 # b .L_8002F310
L_8002F300:
    mr 3, 28
    mr 4, 29
    bl fn_8002F34C
    mr 30, 3
L_8002F310:
    mr 3, 29
    bl fn_80083A3C
    .4byte 0x800D8788 # lwz r0, lbl_8053A348@sda21(r0)
    subf 4, 3, 31
    mr 3, 30
    add 0, 0, 4
    .4byte 0x900D8788 # stw r0, lbl_8053A348@sda21(r0)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8002F34C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 14, 0x18(1)
    mr. 30, 4
    mr 29, 3
    .4byte 0x40820008 # bne .L_8002F36C
    .4byte 0x83CD8700 # lwz r30, lbl_8053A2C0@sda21(r0)
L_8002F36C:
    mr 4, 30
    li 3, 0x3c8
    li 5, 0x0
    bl fn_8008440C
    mr. 14, 3
    .4byte 0x4182000C # beq .L_8002F38C
    bl fn_8002E218
    mr 14, 3
L_8002F38C:
    cmplwi 14, 0x0
    .4byte 0x4082000C # bne .L_8002F39C
    li 3, 0x0
    .4byte 0x480007E4 # b .L_8002FB7C
L_8002F39C:
    lwz 0, 0x4(29)
    addi 15, 29, 0x20
    add 4, 29, 0
    .4byte 0x48000028 # b .L_8002F3D0
L_8002F3AC:
    lwz 3, 0x0(15)
    subis 0, 3, 0x454e
    cmplwi 0, 0x5654
    .4byte 0x40820008 # bne .L_8002F3C0
    .4byte 0x48000020 # b .L_8002F3DC
L_8002F3C0:
    lwz 0, 0x4(15)
    add 3, 15, 0
    addi 0, 3, 0xb
    clrrwi 15, 0, 2
L_8002F3D0:
    cmplw 15, 4
    .4byte 0x4180FFD8 # blt .L_8002F3AC
    li 15, 0x0
L_8002F3DC:
    lwz 0, 0x4(29)
    addi 16, 29, 0x20
    add 4, 29, 0
    .4byte 0x48000028 # b .L_8002F410
L_8002F3EC:
    lwz 3, 0x0(16)
    subis 0, 3, 0x4f53
    cmplwi 0, 0x4354
    .4byte 0x40820008 # bne .L_8002F400
    .4byte 0x48000020 # b .L_8002F41C
L_8002F400:
    lwz 0, 0x4(16)
    add 3, 16, 0
    addi 0, 3, 0xb
    clrrwi 16, 0, 2
L_8002F410:
    cmplw 16, 4
    .4byte 0x4180FFD8 # blt .L_8002F3EC
    li 16, 0x0
L_8002F41C:
    lwz 0, 0x4(29)
    addi 17, 29, 0x20
    add 4, 29, 0
    .4byte 0x48000028 # b .L_8002F450
L_8002F42C:
    lwz 3, 0x0(17)
    subis 0, 3, 0x4c49
    cmplwi 0, 0x5354
    .4byte 0x40820008 # bne .L_8002F440
    .4byte 0x48000020 # b .L_8002F45C
L_8002F440:
    lwz 0, 0x4(17)
    add 3, 17, 0
    addi 0, 3, 0xb
    clrrwi 17, 0, 2
L_8002F450:
    cmplw 17, 4
    .4byte 0x4180FFD8 # blt .L_8002F42C
    li 17, 0x0
L_8002F45C:
    lwz 3, 0x4(15)
    mr 4, 30
    li 5, 0x2
    bl fn_80084514
    mr 18, 3
    lwz 5, 0x4(15)
    addi 3, 15, 0x8
    mr 4, 18
    bl fn_80027844
    lwz 20, 0x8(16)
    mr 4, 30
    addi 15, 16, 0xc
    li 5, 0x0
    mulli 3, 20, 0x18
    bl fn_80084514
    cmplwi 20, 0x0
    mr 19, 3
    mr 3, 20
    mr 4, 19
    .4byte 0x4081014C # ble .L_8002F5F4
    srwi. 0, 20, 2
    mtctr 0
    .4byte 0x418200F8 # beq .L_8002F5AC
L_8002F4B8:
    lbz 0, 0x4(15)
    stw 0, 0x0(4)
    lfs 0, 0x8(15)
    stfs 0, 0x4(4)
    lfs 0, 0x14(15)
    stfs 0, 0x10(4)
    lfs 0, 0x18(15)
    stfs 0, 0x14(4)
    lwz 0, 0xc(15)
    add 0, 18, 0
    stw 0, 0x8(4)
    lwz 0, 0x10(15)
    add 0, 18, 0
    stw 0, 0xc(4)
    lbz 0, 0x20(15)
    stw 0, 0x18(4)
    lfs 0, 0x24(15)
    stfs 0, 0x1c(4)
    lfs 0, 0x30(15)
    stfs 0, 0x28(4)
    lfs 0, 0x34(15)
    stfs 0, 0x2c(4)
    lwz 0, 0x28(15)
    add 0, 18, 0
    stw 0, 0x20(4)
    lwz 0, 0x2c(15)
    add 0, 18, 0
    stw 0, 0x24(4)
    lbz 0, 0x3c(15)
    stw 0, 0x30(4)
    lfs 0, 0x40(15)
    stfs 0, 0x34(4)
    lfs 0, 0x4c(15)
    stfs 0, 0x40(4)
    lfs 0, 0x50(15)
    stfs 0, 0x44(4)
    lwz 0, 0x44(15)
    add 0, 18, 0
    stw 0, 0x38(4)
    lwz 0, 0x48(15)
    add 0, 18, 0
    stw 0, 0x3c(4)
    lbz 0, 0x58(15)
    stw 0, 0x48(4)
    lfs 0, 0x5c(15)
    stfs 0, 0x4c(4)
    lfs 0, 0x68(15)
    stfs 0, 0x58(4)
    lfs 0, 0x6c(15)
    stfs 0, 0x5c(4)
    lwz 0, 0x60(15)
    add 0, 18, 0
    stw 0, 0x50(4)
    lwz 0, 0x64(15)
    addi 15, 15, 0x70
    add 0, 18, 0
    stw 0, 0x54(4)
    addi 4, 4, 0x60
    .4byte 0x4200FF18 # bdnz .L_8002F4B8
    andi. 3, 3, 0x3
    .4byte 0x4182004C # beq .L_8002F5F4
L_8002F5AC:
    mtctr 3
L_8002F5B0:
    lbz 0, 0x4(15)
    stw 0, 0x0(4)
    lfs 0, 0x8(15)
    stfs 0, 0x4(4)
    lfs 0, 0x14(15)
    stfs 0, 0x10(4)
    lfs 0, 0x18(15)
    stfs 0, 0x14(4)
    lwz 0, 0xc(15)
    add 0, 18, 0
    stw 0, 0x8(4)
    lwz 0, 0x10(15)
    addi 15, 15, 0x1c
    add 0, 18, 0
    stw 0, 0xc(4)
    addi 4, 4, 0x18
    .4byte 0x4200FFC0 # bdnz .L_8002F5B0
L_8002F5F4:
    mr 15, 17
    li 16, 0x0
    .4byte 0x48000570 # b .L_8002FB6C
L_8002F600:
    lwz 0, 0xc(15)
    cmplwi 0, 0x0
    .4byte 0x4182055C # beq .L_8002FB64
    add 31, 29, 0
    lis 3, 0x5065
    lwz 4, 0x0(31)
    addi 0, 3, 0x7263
    addi 31, 31, 0x4
    cmpw 4, 0
    .4byte 0x418202A0 # beq .L_8002F8C4
    .4byte 0x4080053C # bge .L_8002FB64
    lis 3, 0x496e
    addi 0, 3, 0x7374
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_8002F640
    .4byte 0x48000528 # b .L_8002FB64
L_8002F640:
    mr 4, 30
    li 3, 0x20
    li 5, 0x0
    bl fn_8008440C
    mr. 20, 3
    .4byte 0x4182000C # beq .L_8002F660
    bl fn_8002E428
    mr 20, 3
L_8002F660:
    lwz 18, 0x0(31)
    li 21, 0x0
    addi 31, 31, 0x4
    .4byte 0x48000024 # b .L_8002F690
L_8002F670:
    lwz 0, 0x0(31)
    mr 3, 20
    mr 4, 21
    addi 31, 31, 0x4
    mulli 0, 0, 0x18
    add 5, 19, 0
    bl fn_8002E718
    addi 21, 21, 0x1
L_8002F690:
    cmplw 21, 18
    .4byte 0x4180FFDC # blt .L_8002F670
    lwz 21, 0x0(31)
    lis 3, 0x5365
    li 22, 0x0
    addi 31, 31, 0x4
    addi 18, 3, 0x6e73
    .4byte 0x48000148 # b .L_8002F7F4
L_8002F6B0:
    lwz 0, 0x0(31)
    addi 31, 31, 0x4
    add 3, 29, 0
    lwz 4, 0x0(3)
    addi 23, 3, 0x4
    cmpw 4, 18
    .4byte 0x41820084 # beq .L_8002F74C
    .4byte 0x408000F4 # bge .L_8002F7C0
    lis 3, 0x5261
    addi 0, 3, 0x6e64
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_8002F6E4
    .4byte 0x480000E0 # b .L_8002F7C0
L_8002F6E4:
    mr 4, 30
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8002F72C
    lis 5, lbl_80491A40@ha
    lis 4, lbl_80491A68@ha
    addi 5, 5, lbl_80491A40@l
    li 0, 0x0
    stw 5, 0x0(3)
    addi 4, 4, lbl_80491A68@l
    .4byte 0xC02281E8 # lfs f1, lbl_8053B188@sda21(r0)
    stw 4, 0x0(3)
    .4byte 0xC00281EC # lfs f0, lbl_8053B18C@sda21(r0)
    stw 0, 0x4(3)
    stfs 1, 0x8(3)
    stfs 0, 0xc(3)
L_8002F72C:
    lbz 0, 0x0(23)
    mr 24, 3
    stw 0, 0x4(3)
    lfs 0, 0x4(23)
    stfs 0, 0x8(3)
    lfs 0, 0x8(23)
    stfs 0, 0xc(3)
    .4byte 0x4800007C # b .L_8002F7C4
L_8002F74C:
    mr 4, 30
    li 3, 0x14
    li 5, 0x0
    bl fn_8008440C
    mr. 24, 3
    .4byte 0x4182003C # beq .L_8002F79C
    lis 3, lbl_80491A40@ha
    lis 4, lbl_80491A78@ha
    addi 0, 3, lbl_80491A40@l
    li 3, 0x0
    stw 0, 0x0(24)
    addi 4, 4, lbl_80491A78@l
    li 0, 0x3c
    .4byte 0xC00281E8 # lfs f0, lbl_8053B188@sda21(r0)
    stw 4, 0x0(24)
    stw 3, 0x4(24)
    stb 3, 0x8(24)
    stb 0, 0x9(24)
    stfs 0, 0xc(24)
    stfs 0, 0x10(24)
L_8002F79C:
    lbz 0, 0x0(23)
    mr 3, 24
    stw 0, 0x4(24)
    lbz 4, 0x1(23)
    lbz 5, 0x2(23)
    lfs 1, 0x4(23)
    lfs 2, 0x8(23)
    bl fn_80030B64
    .4byte 0x48000008 # b .L_8002F7C4
L_8002F7C0:
    li 24, 0x0
L_8002F7C4:
    mr 4, 30
    li 3, 0x8
    li 5, 0x0
    bl fn_8008440C
    mr. 4, 3
    .4byte 0x41820010 # beq .L_8002F7E8
    li 0, 0x0
    stw 0, 0x0(4)
    stw 24, 0x4(4)
L_8002F7E8:
    mr 3, 20
    bl fn_8002E6E8
    addi 22, 22, 0x1
L_8002F7F4:
    cmplw 22, 21
    .4byte 0x4180FEB8 # blt .L_8002F6B0
    lwz 18, 0x0(31)
    mr 3, 20
    mr 5, 30
    addi 31, 31, 0x4
    mr 4, 18
    bl fn_8002E65C
    li 21, 0x0
    .4byte 0x48000080 # b .L_8002F898
L_8002F81C:
    mr 3, 20
    mr 4, 21
    bl fn_8002E728
    lwz 0, 0x0(31)
    mr 22, 3
    mr 5, 30
    srwi 0, 0, 24
    stw 0, 0x0(3)
    lwz 23, 0x4(31)
    addi 31, 31, 0x8
    mr 4, 23
    bl fn_8002E7A0
    li 24, 0x0
    .4byte 0x4800003C # b .L_8002F88C
L_8002F854:
    mr 3, 22
    mr 4, 24
    bl fn_8002E800
    lbz 0, 0x0(31)
    addi 24, 24, 0x1
    stw 0, 0x0(3)
    lwz 0, 0x4(31)
    clrlwi 0, 0, 16
    stw 0, 0x4(3)
    lfs 0, 0x8(31)
    stfs 0, 0x8(3)
    lfs 0, 0xc(31)
    addi 31, 31, 0x10
    stfs 0, 0xc(3)
L_8002F88C:
    cmplw 24, 23
    .4byte 0x4180FFC4 # blt .L_8002F854
    addi 21, 21, 0x1
L_8002F898:
    cmplw 21, 18
    .4byte 0x4180FF80 # blt .L_8002F81C
    lfs 0, 0x0(31)
    mr 3, 14
    mr 4, 16
    mr 5, 20
    stfs 0, 0x4(20)
    lfs 0, 0x4(31)
    stfs 0, 0x8(20)
    bl fn_8002E2E0
    .4byte 0x480002A4 # b .L_8002FB64
L_8002F8C4:
    mr 4, 30
    li 3, 0x204
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8002F8E4
    bl fn_800304C4
    mr 27, 3
L_8002F8E4:
    lwz 21, 0x0(31)
    li 25, 0x0
    addi 31, 31, 0x4
    .4byte 0x4800025C # b .L_8002FB4C
L_8002F8F4:
    lwz 18, 0x0(31)
    addi 31, 31, 0x4
    cmplwi 18, 0x0
    .4byte 0x41820248 # beq .L_8002FB48
    mr 4, 30
    li 3, 0x1c
    li 5, 0x0
    bl fn_8008440C
    mr. 26, 3
    .4byte 0x4182000C # beq .L_8002F924
    bl fn_800306EC
    mr 26, 3
L_8002F924:
    addi 18, 18, 0x4
    lis 0, 0x4330
    add 18, 29, 18
    stw 0, 0x8(1)
    lfs 0, 0x0(18)
    mr 3, 26
    .4byte 0xC84281F8 # lfd f2, lbl_8053B198@sda21(r0)
    stfs 0, 0x0(26)
    .4byte 0xC00281F0 # lfs f0, lbl_8053B190@sda21(r0)
    lfs 1, 0x4(18)
    stfs 1, 0x4(26)
    lbz 0, 0x8(18)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x8(26)
    lhz 4, 0xa(18)
    bl fn_800307BC
    addi 24, 18, 0xc
    lis 3, 0x5365
    lwz 23, 0xc(18)
    addi 28, 3, 0x6e73
    li 22, 0x0
    addi 24, 24, 0x4
    .4byte 0x48000148 # b .L_8002FAD0
L_8002F98C:
    lwz 0, 0x0(24)
    addi 24, 24, 0x4
    add 3, 29, 0
    lwz 4, 0x0(3)
    addi 20, 3, 0x4
    cmpw 4, 28
    .4byte 0x41820084 # beq .L_8002FA28
    .4byte 0x408000F4 # bge .L_8002FA9C
    lis 3, 0x5261
    addi 0, 3, 0x6e64
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_8002F9C0
    .4byte 0x480000E0 # b .L_8002FA9C
L_8002F9C0:
    mr 4, 30
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8002FA08
    lis 5, lbl_80491A40@ha
    lis 4, lbl_80491A68@ha
    addi 5, 5, lbl_80491A40@l
    li 0, 0x0
    stw 5, 0x0(3)
    addi 4, 4, lbl_80491A68@l
    .4byte 0xC02281E8 # lfs f1, lbl_8053B188@sda21(r0)
    stw 4, 0x0(3)
    .4byte 0xC00281EC # lfs f0, lbl_8053B18C@sda21(r0)
    stw 0, 0x4(3)
    stfs 1, 0x8(3)
    stfs 0, 0xc(3)
L_8002FA08:
    lbz 0, 0x0(20)
    mr 18, 3
    stw 0, 0x4(3)
    lfs 0, 0x4(20)
    stfs 0, 0x8(3)
    lfs 0, 0x8(20)
    stfs 0, 0xc(3)
    .4byte 0x4800007C # b .L_8002FAA0
L_8002FA28:
    mr 4, 30
    li 3, 0x14
    li 5, 0x0
    bl fn_8008440C
    mr. 18, 3
    .4byte 0x4182003C # beq .L_8002FA78
    lis 3, lbl_80491A40@ha
    lis 4, lbl_80491A78@ha
    addi 0, 3, lbl_80491A40@l
    li 3, 0x0
    stw 0, 0x0(18)
    addi 4, 4, lbl_80491A78@l
    li 0, 0x3c
    .4byte 0xC00281E8 # lfs f0, lbl_8053B188@sda21(r0)
    stw 4, 0x0(18)
    stw 3, 0x4(18)
    stb 3, 0x8(18)
    stb 0, 0x9(18)
    stfs 0, 0xc(18)
    stfs 0, 0x10(18)
L_8002FA78:
    lbz 0, 0x0(20)
    mr 3, 18
    stw 0, 0x4(18)
    lbz 4, 0x1(20)
    lbz 5, 0x2(20)
    lfs 1, 0x4(20)
    lfs 2, 0x8(20)
    bl fn_80030B64
    .4byte 0x48000008 # b .L_8002FAA0
L_8002FA9C:
    li 18, 0x0
L_8002FAA0:
    mr 4, 30
    li 3, 0x8
    li 5, 0x0
    bl fn_8008440C
    mr. 4, 3
    .4byte 0x41820010 # beq .L_8002FAC4
    li 0, 0x0
    stw 0, 0x0(4)
    stw 18, 0x4(4)
L_8002FAC4:
    mr 3, 26
    bl fn_8003078C
    addi 22, 22, 0x1
L_8002FAD0:
    cmplw 22, 23
    .4byte 0x4180FEB8 # blt .L_8002F98C
    lwz 18, 0x0(24)
    mr 3, 26
    mr 5, 30
    addi 24, 24, 0x4
    mr 4, 18
    bl fn_8003071C
    li 20, 0x0
    .4byte 0x4800003C # b .L_8002FB30
L_8002FAF8:
    mr 3, 26
    mr 4, 20
    bl fn_8003077C
    lbz 0, 0x0(24)
    addi 20, 20, 0x1
    stw 0, 0x0(3)
    lwz 0, 0x4(24)
    clrlwi 0, 0, 16
    stw 0, 0x4(3)
    lfs 0, 0x8(24)
    stfs 0, 0x8(3)
    lfs 0, 0xc(24)
    addi 24, 24, 0x10
    stfs 0, 0xc(3)
L_8002FB30:
    cmplw 20, 18
    .4byte 0x4180FFC4 # blt .L_8002FAF8
    mr 3, 27
    mr 4, 25
    mr 5, 26
    bl fn_800306DC
L_8002FB48:
    addi 25, 25, 0x1
L_8002FB4C:
    cmplw 25, 21
    .4byte 0x4180FDA4 # blt .L_8002F8F4
    mr 3, 14
    mr 4, 16
    mr 5, 27
    bl fn_8002E2E0
L_8002FB64:
    addi 15, 15, 0x4
    addi 16, 16, 0x1
L_8002FB6C:
    lwz 0, 0x8(17)
    cmplw 16, 0
    .4byte 0x4180FA8C # blt .L_8002F600
    mr 3, 14
L_8002FB7C:
    lmw 14, 0x18(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8002FB90:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 16, 0x10(1)
    mr. 30, 4
    .4byte 0x40820008 # bne .L_8002FBAC
    .4byte 0x83CD8700 # lwz r30, lbl_8053A2C0@sda21(r0)
L_8002FBAC:
    mr 31, 3
    mr 4, 30
    li 3, 0x3c8
    li 5, 0x0
    bl fn_8008440C
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8002FBD0
    bl fn_8002E218
    mr 27, 3
L_8002FBD0:
    cmplwi 27, 0x0
    .4byte 0x4082000C # bne .L_8002FBE0
    li 3, 0x0
    .4byte 0x4800067C # b .L_80030258
L_8002FBE0:
    li 26, 0x0
    mr 25, 31
L_8002FBE8:
    lwz 4, 0x24(25)
    mr 3, 31
    bl fn_80030454
    mr. 29, 3
    .4byte 0x41820404 # beq .L_8002FFFC
    mr 4, 30
    li 3, 0x20
    li 5, 0x0
    bl fn_8008440C
    mr. 28, 3
    .4byte 0x4182000C # beq .L_8002FC1C
    bl fn_8002E428
    mr 28, 3
L_8002FC1C:
    lfs 0, 0x8(29)
    mr 20, 29
    li 19, 0x0
    li 21, 0x0
    stfs 0, 0x4(28)
    lfs 0, 0xc(29)
    stfs 0, 0x8(28)
L_8002FC38:
    lwz 4, 0x10(20)
    mr 3, 31
    bl fn_8003043C
    mr. 16, 3
    .4byte 0x4182014C # beq .L_8002FD94
    mr 3, 27
    mr 4, 31
    mr 5, 16
    bl fn_8003026C
    mr. 5, 3
    .4byte 0x41820014 # beq .L_8002FC74
    mr 3, 28
    mr 4, 19
    bl fn_8002E718
    .4byte 0x48000120 # b .L_8002FD90
L_8002FC74:
    mr 4, 30
    li 3, 0x18
    li 5, 0x0
    bl fn_8008440C
    lbz 0, 0x0(16)
    mr 18, 3
    mr 3, 31
    stw 0, 0x0(18)
    lfs 0, 0x4(16)
    stfs 0, 0x4(18)
    lwz 4, 0x8(16)
    bl fn_80030424
    mr. 17, 3
    .4byte 0x41820054 # beq .L_8002FCFC
    bl fn_80030380
    lis 4, 0x2aab
    subf 0, 17, 3
    subi 3, 4, 0x5555
    mr 4, 30
    mulhw 3, 3, 0
    li 5, 0x0
    srwi 0, 3, 31
    add 0, 3, 0
    mulli 22, 0, 0x6
    mr 3, 22
    bl fn_80084514
    mr 0, 3
    mr 3, 17
    mr 17, 0
    mr 5, 22
    mr 4, 17
    bl fn_80027844
    stw 17, 0x8(18)
    .4byte 0x4800000C # b .L_8002FD04
L_8002FCFC:
    li 0, 0x0
    stw 0, 0x8(18)
L_8002FD04:
    lwz 4, 0xc(16)
    mr 3, 31
    bl fn_80030424
    mr. 17, 3
    .4byte 0x41820054 # beq .L_8002FD68
    bl fn_80030380
    lis 4, 0x2aab
    subf 0, 17, 3
    subi 3, 4, 0x5555
    mr 4, 30
    mulhw 3, 3, 0
    li 5, 0x0
    srwi 0, 3, 31
    add 0, 3, 0
    mulli 22, 0, 0x6
    mr 3, 22
    bl fn_80084514
    mr 0, 3
    mr 3, 17
    mr 17, 0
    mr 5, 22
    mr 4, 17
    bl fn_80027844
    stw 17, 0xc(18)
    .4byte 0x4800000C # b .L_8002FD70
L_8002FD68:
    li 0, 0x0
    stw 0, 0xc(18)
L_8002FD70:
    lfs 0, 0x10(16)
    mr 3, 28
    mr 4, 19
    mr 5, 18
    stfs 0, 0x10(18)
    lfs 0, 0x14(16)
    stfs 0, 0x14(18)
    bl fn_8002E718
L_8002FD90:
    addi 19, 19, 0x1
L_8002FD94:
    addi 21, 21, 0x1
    addi 20, 20, 0x4
    cmpwi 21, 0x2
    .4byte 0x4180FE98 # blt .L_8002FC38
    li 18, 0x0
    mr 17, 29
L_8002FDAC:
    lwz 4, 0x18(17)
    mr 3, 31
    bl fn_8003040C
    mr. 19, 3
    .4byte 0x41820090 # beq .L_8002FE4C
    mr 4, 30
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    mr. 16, 3
    .4byte 0x41820034 # beq .L_8002FE08
    lis 4, lbl_80491A40@ha
    lis 3, lbl_80491A68@ha
    addi 4, 4, lbl_80491A40@l
    li 0, 0x0
    stw 4, 0x0(16)
    addi 3, 3, lbl_80491A68@l
    .4byte 0xC02281E8 # lfs f1, lbl_8053B188@sda21(r0)
    stw 3, 0x0(16)
    .4byte 0xC00281EC # lfs f0, lbl_8053B18C@sda21(r0)
    stw 0, 0x4(16)
    stfs 1, 0x8(16)
    stfs 0, 0xc(16)
L_8002FE08:
    lbz 0, 0x0(19)
    mr 4, 30
    li 3, 0x8
    li 5, 0x0
    stw 0, 0x4(16)
    lfs 0, 0x4(19)
    stfs 0, 0x8(16)
    lfs 0, 0x8(19)
    stfs 0, 0xc(16)
    bl fn_8008440C
    mr. 4, 3
    .4byte 0x41820010 # beq .L_8002FE44
    li 0, 0x0
    stw 0, 0x0(4)
    stw 16, 0x4(4)
L_8002FE44:
    mr 3, 28
    bl fn_8002E6E8
L_8002FE4C:
    addi 18, 18, 0x1
    addi 17, 17, 0x4
    cmpwi 18, 0x2
    .4byte 0x4180FF54 # blt .L_8002FDAC
    li 19, 0x0
    mr 18, 29
L_8002FE64:
    lwz 4, 0x20(18)
    mr 3, 31
    bl fn_800303F4
    mr. 16, 3
    .4byte 0x418200A0 # beq .L_8002FF14
    mr 4, 30
    li 3, 0x14
    li 5, 0x0
    bl fn_8008440C
    mr. 17, 3
    .4byte 0x4182003C # beq .L_8002FEC8
    lis 3, lbl_80491A40@ha
    lis 4, lbl_80491A78@ha
    addi 0, 3, lbl_80491A40@l
    li 3, 0x0
    stw 0, 0x0(17)
    addi 4, 4, lbl_80491A78@l
    li 0, 0x3c
    .4byte 0xC00281E8 # lfs f0, lbl_8053B188@sda21(r0)
    stw 4, 0x0(17)
    stw 3, 0x4(17)
    stb 3, 0x8(17)
    stb 0, 0x9(17)
    stfs 0, 0xc(17)
    stfs 0, 0x10(17)
L_8002FEC8:
    lbz 0, 0x0(16)
    mr 3, 17
    stw 0, 0x4(17)
    lbz 4, 0x1(16)
    lbz 5, 0x2(16)
    lfs 1, 0x4(16)
    lfs 2, 0x8(16)
    bl fn_80030B64
    mr 4, 30
    li 3, 0x8
    li 5, 0x0
    bl fn_8008440C
    mr. 4, 3
    .4byte 0x41820010 # beq .L_8002FF0C
    li 0, 0x0
    stw 0, 0x0(4)
    stw 17, 0x4(4)
L_8002FF0C:
    mr 3, 28
    bl fn_8002E6E8
L_8002FF14:
    addi 19, 19, 0x1
    addi 18, 18, 0x4
    cmpwi 19, 0x2
    .4byte 0x4180FF44 # blt .L_8002FE64
    lwz 4, 0x28(29)
    mr 3, 28
    mr 5, 30
    bl fn_8002E65C
    mr 18, 29
    li 19, 0x0
    .4byte 0x480000A4 # b .L_8002FFE0
L_8002FF40:
    mr 3, 28
    mr 4, 19
    bl fn_8002E728
    lwz 4, 0x2c(18)
    mr 20, 3
    mr 3, 31
    bl fn_800303DC
    mr 16, 3
    mr 3, 20
    lbz 0, 0x0(16)
    mr 5, 30
    stw 0, 0x0(20)
    lwz 4, 0x4(16)
    bl fn_8002E7A0
    mr 17, 16
    li 21, 0x0
    .4byte 0x4800004C # b .L_8002FFCC
L_8002FF84:
    mr 3, 20
    mr 4, 21
    bl fn_8002E800
    lwz 4, 0x8(17)
    mr 22, 3
    mr 3, 31
    bl fn_800303C4
    lbz 0, 0x0(3)
    addi 17, 17, 0x4
    addi 21, 21, 0x1
    stw 0, 0x0(22)
    lwz 0, 0x4(3)
    clrlwi 0, 0, 16
    stw 0, 0x4(22)
    lfs 0, 0x8(3)
    stfs 0, 0x8(22)
    lfs 0, 0xc(3)
    stfs 0, 0xc(22)
L_8002FFCC:
    lwz 0, 0x4(16)
    cmplw 21, 0
    .4byte 0x4180FFB0 # blt .L_8002FF84
    addi 18, 18, 0x4
    addi 19, 19, 0x1
L_8002FFE0:
    lwz 0, 0x28(29)
    cmplw 19, 0
    .4byte 0x4180FF58 # blt .L_8002FF40
    mr 3, 27
    mr 4, 26
    mr 5, 28
    bl fn_8002E2E0
L_8002FFFC:
    addi 26, 26, 0x1
    addi 25, 25, 0x4
    cmpwi 26, 0x80
    .4byte 0x4180FBE0 # blt .L_8002FBE8
    li 29, 0x0
    mr 28, 31
L_80030014:
    lwz 4, 0x3b4(28)
    mr 3, 31
    bl fn_800303AC
    mr. 23, 3
    .4byte 0x41820220 # beq .L_80030244
    mr 4, 30
    li 3, 0x204
    li 5, 0x0
    bl fn_8008440C
    mr. 22, 3
    .4byte 0x4182000C # beq .L_80030048
    bl fn_800304C4
    mr 22, 3
L_80030048:
    mr 25, 23
    mr 26, 23
    li 24, 0x0
L_80030054:
    lwz 4, 0x88(25)
    mr 3, 31
    bl fn_80030394
    mr. 21, 3
    .4byte 0x418201BC # beq .L_80030220
    mr 4, 30
    li 3, 0x1c
    li 5, 0x0
    bl fn_8008440C
    mr. 20, 3
    .4byte 0x4182000C # beq .L_80030088
    bl fn_800306EC
    mr 20, 3
L_80030088:
    lfs 0, 0x0(21)
    stfs 0, 0x0(20)
    lfs 0, 0x4(21)
    stfs 0, 0x4(20)
    lwz 3, 0x0(23)
    subis 0, 3, 0x5045
    cmplwi 0, 0x5232
    .4byte 0x40820044 # bne .L_800300E8
    addi 3, 24, 0x288
    lis 0, 0x4330
    lbzx 4, 23, 3
    mr 3, 20
    stw 0, 0x8(1)
    extsb 0, 4
    .4byte 0xC8428200 # lfd f2, lbl_8053B1A0@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC00281F0 # lfs f0, lbl_8053B190@sda21(r0)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x8(20)
    lhz 4, 0x308(26)
    bl fn_800307BC
L_800300E8:
    li 18, 0x0
    mr 19, 21
L_800300F0:
    lwz 4, 0x8(19)
    mr 3, 31
    bl fn_8003040C
    mr. 16, 3
    .4byte 0x41820090 # beq .L_80030190
    mr 4, 30
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    mr. 17, 3
    .4byte 0x41820034 # beq .L_8003014C
    lis 4, lbl_80491A40@ha
    lis 3, lbl_80491A68@ha
    addi 4, 4, lbl_80491A40@l
    li 0, 0x0
    stw 4, 0x0(17)
    addi 3, 3, lbl_80491A68@l
    .4byte 0xC02281E8 # lfs f1, lbl_8053B188@sda21(r0)
    stw 3, 0x0(17)
    .4byte 0xC00281EC # lfs f0, lbl_8053B18C@sda21(r0)
    stw 0, 0x4(17)
    stfs 1, 0x8(17)
    stfs 0, 0xc(17)
L_8003014C:
    lbz 0, 0x0(16)
    mr 4, 30
    li 3, 0x8
    li 5, 0x0
    stw 0, 0x4(17)
    lfs 0, 0x4(16)
    stfs 0, 0x8(17)
    lfs 0, 0x8(16)
    stfs 0, 0xc(17)
    bl fn_8008440C
    mr. 4, 3
    .4byte 0x41820010 # beq .L_80030188
    li 0, 0x0
    stw 0, 0x0(4)
    stw 17, 0x4(4)
L_80030188:
    mr 3, 20
    bl fn_8003078C
L_80030190:
    addi 18, 18, 0x1
    addi 19, 19, 0x4
    cmpwi 18, 0x2
    .4byte 0x4180FF54 # blt .L_800300F0
    lwz 4, 0x10(21)
    mr 3, 20
    mr 5, 30
    bl fn_8003071C
    mr 16, 21
    li 17, 0x0
    .4byte 0x4800004C # b .L_80030204
L_800301BC:
    mr 3, 20
    mr 4, 17
    bl fn_8003077C
    lwz 4, 0x14(16)
    mr 18, 3
    mr 3, 31
    bl fn_800303C4
    lbz 0, 0x0(3)
    addi 16, 16, 0x4
    addi 17, 17, 0x1
    stw 0, 0x0(18)
    lwz 0, 0x4(3)
    clrlwi 0, 0, 16
    stw 0, 0x4(18)
    lfs 0, 0x8(3)
    stfs 0, 0x8(18)
    lfs 0, 0xc(3)
    stfs 0, 0xc(18)
L_80030204:
    lwz 0, 0x10(21)
    cmplw 17, 0
    .4byte 0x4180FFB0 # blt .L_800301BC
    mr 3, 22
    mr 4, 24
    mr 5, 20
    bl fn_800306DC
L_80030220:
    addi 24, 24, 0x1
    addi 26, 26, 0x2
    cmpwi 24, 0x80
    addi 25, 25, 0x4
    .4byte 0x4180FE24 # blt .L_80030054
    mr 3, 27
    mr 5, 22
    addi 4, 29, 0xe4
    bl fn_8002E2E0
L_80030244:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0xc
    .4byte 0x4180FDC4 # blt .L_80030014
    mr 3, 27
L_80030258:
    lmw 16, 0x10(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8003026C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 25, 0x34(1)
    mr 26, 4
    mr 25, 3
    mr 27, 5
    li 29, 0x0
    addi 30, 26, 0x20
L_80030290:
    lwz 4, 0x4(30)
    mr 3, 26
    bl fn_80030454
    cmplwi 3, 0x0
    .4byte 0x418200B8 # beq .L_80030358
    li 28, 0x0
    mr 31, 3
L_800302AC:
    lwz 4, 0x10(31)
    mr 3, 26
    bl fn_8003043C
    cmplw 3, 27
    .4byte 0x4082008C # bne .L_80030348
    mr 3, 25
    mr 4, 29
    bl fn_8002E2F0
    cmplwi 3, 0x0
    .4byte 0x41820078 # beq .L_80030348
    .4byte 0xC04281E8 # lfs f2, lbl_8053B188@sda21(r0)
    li 0, 0x0
    .4byte 0xC02281EC # lfs f1, lbl_8053B18C@sda21(r0)
    addi 6, 1, 0x8
    .4byte 0xC0028208 # lfs f0, lbl_8053B1A8@sda21(r0)
    li 4, 0x3c
    stfs 2, 0x8(1)
    li 5, 0x7f
    stfs 2, 0x10(1)
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    stw 0, 0x1c(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    stw 0, 0x28(1)
    stb 0, 0x2c(1)
    sth 0, 0x2e(1)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 0, 0x28(1)
    cmplw 28, 0
    .4byte 0x40800014 # bge .L_80030348
    lwz 3, 0x24(1)
    slwi 0, 28, 2
    lwzx 3, 3, 0
    .4byte 0x48000028 # b .L_8003036C
L_80030348:
    addi 28, 28, 0x1
    addi 31, 31, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FF58 # blt .L_800302AC
L_80030358:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x80
    .4byte 0x4180FF2C # blt .L_80030290
    li 3, 0x0
L_8003036C:
    lmw 25, 0x34(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80030380:
    lha 0, 0x0(3)
    addi 3, 3, 0x6
    cmpwi 0, 0xa
    ble fn_80030380
    blr

fn_80030394:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_800303A4
    li 3, 0x0
    blr
L_800303A4:
    add 3, 3, 4
    blr

fn_800303AC:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_800303BC
    li 3, 0x0
    blr
L_800303BC:
    add 3, 3, 4
    blr

fn_800303C4:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_800303D4
    li 3, 0x0
    blr
L_800303D4:
    add 3, 3, 4
    blr

fn_800303DC:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_800303EC
    li 3, 0x0
    blr
L_800303EC:
    add 3, 3, 4
    blr

fn_800303F4:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80030404
    li 3, 0x0
    blr
L_80030404:
    add 3, 3, 4
    blr

fn_8003040C:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8003041C
    li 3, 0x0
    blr
L_8003041C:
    add 3, 3, 4
    blr

fn_80030424:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80030434
    li 3, 0x0
    blr
L_80030434:
    add 3, 3, 4
    blr

fn_8003043C:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8003044C
    li 3, 0x0
    blr
L_8003044C:
    add 3, 3, 4
    blr

fn_80030454:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80030464
    li 3, 0x0
    blr
L_80030464:
    add 3, 3, 4
    blr

fn_8003046C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_800304B4
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2870@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2870@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_800304B4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800304C4:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804919BC@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804919BC@l
    li 4, 0x200
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_80491A50@ha
    stw 0, 0x0(31)
    addi 0, 3, lbl_80491A50@l
    addi 3, 31, 0x4
    stw 0, 0x0(31)
    bl fn_80027B18
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030514:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820030 # beq .L_80030558
    lis 3, lbl_80491A50@ha
    addi 0, 3, lbl_80491A50@l
    stw 0, 0x0(31)
    .4byte 0x41820010 # beq .L_80030548
    lis 3, lbl_804919BC@ha
    addi 0, 3, lbl_804919BC@l
    stw 0, 0x0(31)
L_80030548:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_80030558
    mr 3, 31
    bl dtor_80084580
L_80030558:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030570:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 4
    cmplwi 27, 0x80
    mr 30, 5
    mr 31, 6
    .4byte 0x4180000C # blt .L_8003059C
    li 3, 0x0
    .4byte 0x48000130 # b .L_800306C8
L_8003059C:
    slwi 0, 27, 2
    add 3, 3, 0
    lwz 29, 0x4(3)
    cmplwi 29, 0x0
    .4byte 0x4082000C # bne .L_800305B8
    li 3, 0x0
    .4byte 0x48000114 # b .L_800306C8
L_800305B8:
    li 5, 0x0
    li 4, 0x1
    stw 5, 0x14(31)
    lis 3, lbl_804B2880@ha
    .4byte 0xC0228210 # lfs f1, lbl_8053B1B0@sda21(r0)
    stb 4, 0x24(31)
    .4byte 0xC0028214 # lfs f0, lbl_8053B1B4@sda21(r0)
    lfs 2, 0x0(29)
    stfs 2, 0x0(31)
    lfs 2, 0x4(29)
    stfs 2, 0x8(31)
    lfs 2, 0x8(29)
    stfs 2, 0xc(31)
    lhz 0, 0xc(29)
    sth 0, 0x26(31)
    .4byte 0x880D8794 # lbz r0, lbl_8053A354@sda21(r0)
    stwu 5, lbl_804B2880@l(3)
    extsb. 0, 0
    stfs 1, 0x4(3)
    stw 5, 0x8(3)
    stw 5, 0xc(3)
    stfs 1, 0x10(3)
    stfs 0, 0x14(3)
    .4byte 0x4082000C # bne .L_80030620
    .4byte 0x906D8790 # stw r3, lbl_8053A350@sda21(r0)
    .4byte 0x988D8794 # stb r4, lbl_8053A354@sda21(r0)
L_80030620:
    .4byte 0x386D8790 # li r3, lbl_8053A350@sda21
    li 0, 0x1
    stw 3, 0x1c(31)
    stw 0, 0x20(31)
    lwz 28, 0x10(29)
    .4byte 0x48000028 # b .L_8003065C
L_80030638:
    lwz 3, 0x4(28)
    mr 4, 27
    mr 5, 30
    mr 6, 31
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    lwz 28, 0x0(28)
L_8003065C:
    cmplwi 28, 0x0
    .4byte 0x4082FFD8 # bne .L_80030638
    lwz 0, 0x14(29)
    li 3, 0x0
    mtctr 0
    cmplwi 0, 0x0
    .4byte 0x40810050 # ble .L_800306C4
L_80030678:
    lwz 0, 0x18(29)
    add 4, 0, 3
    lwz 0, 0x0(4)
    cmpw 30, 0
    .4byte 0x41810034 # bgt .L_800306BC
    lfs 1, 0x0(31)
    li 3, 0x1
    lfs 0, 0x8(4)
    fmuls 0, 1, 0
    stfs 0, 0x0(31)
    lfs 1, 0x8(31)
    lfs 0, 0xc(4)
    fmuls 0, 1, 0
    stfs 0, 0x8(31)
    lwz 0, 0x4(4)
    stw 0, 0x18(31)
    .4byte 0x48000010 # b .L_800306C8
L_800306BC:
    addi 3, 3, 0x10
    .4byte 0x4200FFB8 # bdnz .L_80030678
L_800306C4:
    li 3, 0x0
L_800306C8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800306DC:
    slwi 0, 4, 2
    add 3, 3, 0
    stw 5, 0x4(3)
    blr

fn_800306EC:
    .4byte 0xC0228210 # lfs f1, lbl_8053B1B0@sda21(r0)
    li 4, 0x3e8
    .4byte 0xC0028218 # lfs f0, lbl_8053B1B8@sda21(r0)
    li 0, 0x0
    stfs 1, 0x0(3)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    sth 4, 0xc(3)
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    stw 0, 0x18(3)
    blr

fn_8003071C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x18(3)
    bl fn_800845A4
    mr 4, 31
    slwi 3, 30, 4
    li 5, 0x0
    bl fn_80084514
    stw 3, 0x18(29)
    stw 30, 0x14(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003077C:
    lwz 3, 0x18(3)
    slwi 0, 4, 4
    add 3, 3, 0
    blr

fn_8003078C:
    lwz 5, 0x10(3)
    cmplwi 5, 0x0
    .4byte 0x40820014 # bne .L_800307A8
    stw 4, 0x10(3)
    blr
    .4byte 0x48000008 # b .L_800307A8
L_800307A4:
    mr 5, 0
L_800307A8:
    lwz 0, 0x0(5)
    cmplwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_800307A4
    stw 4, 0x0(5)
    blr

fn_800307BC:
    sth 4, 0xc(3)
    blr

fn_800307C4:
    lis 3, 0x5045
    addi 3, 3, 0x5243
    blr

fn_800307D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_80030818
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2898@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2898@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80030818:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030828:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 3
    .4byte 0x880D8798 # lbz r0, lbl_8053A358@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_80030864
    .4byte 0x386D879C # li r3, lbl_8053A35C@sda21
    li 4, 0x0
    bl fn_80093338
    li 0, 0x1
    .4byte 0x980D8798 # stb r0, lbl_8053A358@sda21(r0)
L_80030864:
    lis 3, 0x19
    .4byte 0x808D879C # lwz r4, lbl_8053A35C@sda21(r0)
    addi 0, 3, 0x660d
    lis 5, lbl_80539D44@ha
    mullw 3, 4, 0
    lwz 0, 0x4(30)
    .4byte 0xC0A28224 # lfs f5, lbl_8053B1C4@sda21(r0)
    lfs 0, lbl_80539D44@l(5)
    cmpwi 0, 0x2
    .4byte 0xC0628220 # lfs f3, lbl_8053B1C0@sda21(r0)
    addis 3, 3, 0x3c6f
    fsubs 4, 5, 0
    subi 4, 3, 0xca1
    lfs 1, 0xc(30)
    srwi 3, 4, 9
    lfs 0, 0x8(30)
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 2, 0x8(1)
    .4byte 0x908D879C # stw r4, lbl_8053A35C@sda21(r0)
    fsubs 2, 2, 5
    fmuls 2, 3, 2
    fnmsubs 2, 5, 4, 2
    fmuls 2, 2, 1
    fadds 2, 2, 0
    .4byte 0x41820048 # beq .L_80030910
    .4byte 0x40800014 # bge .L_800308E0
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_800308F0
    .4byte 0x40800028 # bge .L_80030900
    .4byte 0x4800006C # b .L_80030948
L_800308E0:
    cmpwi 0, 0x4
    .4byte 0x41820058 # beq .L_8003093C
    .4byte 0x40800060 # bge .L_80030948
    .4byte 0x48000040 # b .L_8003092C
L_800308F0:
    lfs 0, 0x0(31)
    fmuls 0, 0, 2
    stfs 0, 0x0(31)
    .4byte 0x4800004C # b .L_80030948
L_80030900:
    lfs 0, 0x8(31)
    fmuls 0, 0, 2
    stfs 0, 0x8(31)
    .4byte 0x4800003C # b .L_80030948
L_80030910:
    .4byte 0xC8028228 # lfd f0, lbl_8053B1C8@sda21(r0)
    lfs 1, 0xc(31)
    fsub 0, 2, 0
    fadd 0, 1, 0
    frsp 0, 0
    stfs 0, 0xc(31)
    .4byte 0x48000020 # b .L_80030948
L_8003092C:
    lfs 0, 0x4(31)
    fadds 0, 0, 2
    stfs 0, 0x4(31)
    .4byte 0x48000010 # b .L_80030948
L_8003093C:
    lfs 0, 0x10(31)
    fadds 0, 0, 2
    stfs 0, 0x10(31)
L_80030948:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80030960:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_800309A8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B28A8@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B28A8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_800309A8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800309B8:
    lbz 0, 0x8(3)
    li 8, 0x0
    stwu 1, -0x20(1)
    cmpwi 0, 0x2
    .4byte 0x4182001C # beq .L_800309E4
    .4byte 0x4080001C # bge .L_800309E8
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_800309DC
    .4byte 0x48000010 # b .L_800309E8
L_800309DC:
    mr 8, 5
    .4byte 0x48000008 # b .L_800309E8
L_800309E4:
    mr 8, 4
L_800309E8:
    lbz 7, 0x9(3)
    cmplwi 7, 0x7f
    .4byte 0x4182000C # beq .L_800309FC
    cmplwi 7, 0x0
    .4byte 0x40820040 # bne .L_80030A38
L_800309FC:
    xoris 4, 8, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    lfs 4, 0xc(3)
    stw 0, 0x8(1)
    lfs 0, 0x10(3)
    .4byte 0xC8628240 # lfd f3, lbl_8053B1E0@sda21(r0)
    lfd 2, 0x8(1)
    fsubs 1, 0, 4
    .4byte 0xC0028230 # lfs f0, lbl_8053B1D0@sda21(r0)
    fsubs 2, 2, 3
    fmuls 1, 2, 1
    fdivs 0, 1, 0
    fadds 2, 4, 0
    .4byte 0x480000A0 # b .L_80030AD4
L_80030A38:
    cmpw 8, 7
    .4byte 0x4080004C # bge .L_80030A88
    lis 0, 0x4330
    xoris 4, 8, 0x8000
    stw 4, 0xc(1)
    .4byte 0xC8428240 # lfd f2, lbl_8053B1E0@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC8228248 # lfd f1, lbl_8053B1E8@sda21(r0)
    lfd 0, 0x8(1)
    stw 7, 0x14(1)
    fsubs 2, 0, 2
    lfs 4, 0xc(3)
    stw 0, 0x10(1)
    .4byte 0xC0628234 # lfs f3, lbl_8053B1D4@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 3, 3, 4
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fmadds 2, 3, 0, 4
    .4byte 0x48000050 # b .L_80030AD4
L_80030A88:
    subf 5, 7, 8
    subfic 0, 7, 0x7f
    lis 4, 0x4330
    .4byte 0xC8428240 # lfd f2, lbl_8053B1E0@sda21(r0)
    xoris 5, 5, 0x8000
    xoris 0, 0, 0x8000
    stw 5, 0x14(1)
    lfs 1, 0x10(3)
    stw 4, 0x10(1)
    .4byte 0xC0828234 # lfs f4, lbl_8053B1D4@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 3, 1, 4
    fsubs 1, 0, 2
    stw 4, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fmadds 2, 3, 0, 4
L_80030AD4:
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x41820048 # beq .L_80030B24
    .4byte 0x40800014 # bge .L_80030AF4
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80030B04
    .4byte 0x40800028 # bge .L_80030B14
    .4byte 0x4800006C # b .L_80030B5C
L_80030AF4:
    cmpwi 0, 0x4
    .4byte 0x41820058 # beq .L_80030B50
    .4byte 0x40800060 # bge .L_80030B5C
    .4byte 0x48000040 # b .L_80030B40
L_80030B04:
    lfs 0, 0x0(6)
    fmuls 0, 0, 2
    stfs 0, 0x0(6)
    .4byte 0x4800004C # b .L_80030B5C
L_80030B14:
    lfs 0, 0x8(6)
    fmuls 0, 0, 2
    stfs 0, 0x8(6)
    .4byte 0x4800003C # b .L_80030B5C
L_80030B24:
    .4byte 0xC8028238 # lfd f0, lbl_8053B1D8@sda21(r0)
    lfs 1, 0xc(6)
    fsub 0, 2, 0
    fadd 0, 1, 0
    frsp 0, 0
    stfs 0, 0xc(6)
    .4byte 0x48000020 # b .L_80030B5C
L_80030B40:
    lfs 0, 0x4(6)
    fadds 0, 0, 2
    stfs 0, 0x4(6)
    .4byte 0x48000010 # b .L_80030B5C
L_80030B50:
    lfs 0, 0x10(6)
    fadds 0, 0, 2
    stfs 0, 0x10(6)
L_80030B5C:
    addi 1, 1, 0x20
    blr

fn_80030B64:
    stb 4, 0x8(3)
    stb 5, 0x9(3)
    stfs 1, 0xc(3)
    stfs 2, 0x10(3)
    blr

fn_80030B78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_80030BC0
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B28B8@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B28B8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80030BC0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030BD0:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80491A28@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_80491A28@l
    stw 31, 0xc(1)
    mr 31, 3
    stw 0, 0x0(3)
    addi 3, 31, 0x4
    bl fn_80030F58
    lis 3, lbl_80491A9C@ha
    li 0, 0x0
    addi 4, 3, lbl_80491A9C@l
    mr 3, 31
    stw 4, 0x0(31)
    addi 4, 4, 0x18
    stw 4, 0x4(31)
    stw 0, 0x78(31)
    stw 0, 0x7c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030C30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_80030CA4
    lis 4, lbl_80491A9C@ha
    lis 3, fn_80030CC0@ha
    addi 4, 4, lbl_80491A9C@l
    stw 4, 0x0(30)
    addi 0, 4, 0x18
    addi 4, 3, fn_80030CC0@l
    stw 0, 0x4(30)
    lwz 3, 0x78(30)
    bl fn_80066F08
    addi 3, 30, 0x4
    li 4, 0x0
    bl fn_80030FD0
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_80030C94
    lis 3, lbl_80491A28@ha
    addi 0, 3, lbl_80491A28@l
    stw 0, 0x0(30)
L_80030C94:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80030CA4
    mr 3, 30
    bl dtor_80084580
L_80030CA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030CC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820030 # beq .L_80030D04
    lis 3, lbl_80491A88@ha
    addi 0, 3, lbl_80491A88@l
    stw 0, 0x0(31)
    .4byte 0x41820010 # beq .L_80030CF4
    lis 3, lbl_804919E4@ha
    addi 0, 3, lbl_804919E4@l
    stw 0, 0x0(31)
L_80030CF4:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_80030D04
    mr 3, 31
    bl dtor_80084580
L_80030D04:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030D1C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lis 3, fn_80030CC0@ha
    addi 0, 3, fn_80030CC0@l
    lwz 3, 0x78(29)
    mr 4, 0
    bl fn_80066F08
    mulli 3, 30, 0x30
    mr 4, 31
    li 5, 0x0
    addi 3, 3, 0x10
    bl fn_80084514
    lis 4, fn_80030EA4@ha
    lis 5, fn_80030CC0@ha
    addi 4, 4, fn_80030EA4@l
    mr 7, 30
    addi 5, 5, fn_80030CC0@l
    li 6, 0x30
    bl fn_800671B0
    stw 3, 0x78(29)
    stw 30, 0x7c(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80030DA8:
    lwz 0, 0x7c(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_80030DBC
    li 3, 0x0
    blr
L_80030DBC:
    mulli 0, 4, 0x30
    lwz 3, 0x78(3)
    add 3, 3, 0
    blr

fn_80030DCC:
    mulli 11, 4, 0x30
    lwz 0, 0x78(3)
    lbz 8, 0x0(5)
    addi 6, 3, 0x4c
    lbz 7, 0x1(5)
    addi 4, 3, 0x8
    addi 10, 11, 0x4
    lfs 0, 0x4(5)
    add 10, 0, 10
    lwz 0, 0x8(5)
    stb 8, 0x0(10)
    lwz 9, 0xc(5)
    stb 7, 0x1(10)
    lwz 8, 0x10(5)
    stfs 0, 0x4(10)
    lwz 7, 0x14(5)
    stw 0, 0x8(10)
    lwz 0, 0x18(5)
    stw 9, 0xc(10)
    lwz 9, 0x1c(5)
    stw 8, 0x10(10)
    lha 8, 0x20(5)
    stw 7, 0x14(10)
    lha 7, 0x22(5)
    stw 0, 0x18(10)
    lwz 0, 0x24(5)
    stw 9, 0x1c(10)
    sth 8, 0x20(10)
    sth 7, 0x22(10)
    stw 0, 0x24(10)
    lwz 0, 0x78(3)
    add 5, 0, 11
    stw 6, 0x28(5)
    lwz 0, 0x78(3)
    add 3, 0, 11
    stw 4, 0x2c(3)
    blr

fn_80030E60:
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_80030E70
    li 3, 0x0
    blr
L_80030E70:
    cmplwi 3, 0x0
    beqlr
    addi 3, 3, 0x4
    blr

fn_80030E80:
    lwz 4, 0x2c(3)
    lwz 4, 0x38(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80030E98
    li 3, 0x0
    blr
L_80030E98:
    lwz 0, 0xc(3)
    add 3, 4, 0
    blr

fn_80030EA4:
    lis 6, lbl_804919E4@ha
    lis 4, lbl_80491A88@ha
    addi 0, 6, lbl_804919E4@l
    li 5, 0x3c
    stw 0, 0x0(3)
    addi 6, 4, lbl_80491A88@l
    .4byte 0x388D8018 # li r4, lbl_80539BD8@sda21
    li 0, 0x0
    stw 6, 0x0(3)
    stb 5, 0x5(3)
    stw 4, 0x28(3)
    stw 0, 0x2c(3)
    blr

fn_80030ED8:
    addi 3, 3, 0x4
    blr

fn_80030EE0:
    li 3, 0x1
    blr

fn_80030EE8:
    blr

fn_80030EEC:
    blr

fn_80030EF0:
    subi 3, 3, 0x4
    b fn_80030C30

fn_80030EF8:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, lbl_80491AD0@ha
    mr 4, 3
    stw 0, 0x14(1)
    addi 3, 5, lbl_80491AD0@l
    bl strcpy
    lis 3, lbl_80491AD0@ha
    addi 3, 3, lbl_80491AD0@l
    bl strlen
    lis 4, lbl_80491AD0@ha
    addi 6, 4, lbl_80491AD0@l
    add 5, 6, 3
    lbz 0, -0x1(5)
    cmpwi 0, 0x2f
    .4byte 0x41820014 # beq .L_80030F48
    li 4, 0x2f
    li 0, 0x0
    stbx 4, 6, 3
    stb 0, 0x1(5)
L_80030F48:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030F58:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80491B28@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_80491B28@l
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_80491B10@ha
    stw 0, 0x0(31)
    addi 0, 3, lbl_80491B10@l
    mr 4, 31
    stw 0, 0x0(31)
    addi 3, 4, 0x4
    bl fn_80028374
    li 4, 0x0
    li 0, -0x1
    stw 4, 0x48(31)
    addi 3, 31, 0x5c
    stw 4, 0x4c(31)
    stw 0, 0x50(31)
    stw 4, 0x54(31)
    sth 4, 0x58(31)
    sth 4, 0x5a(31)
    bl OSInitMutex
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80030FD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182006C # beq .L_80031058
    lis 3, lbl_80491B10@ha
    addic. 0, 30, 0x4
    addi 0, 3, lbl_80491B10@l
    stw 0, 0x0(30)
    .4byte 0x41820034 # beq .L_80031034
    addic. 0, 30, 0x4
    .4byte 0x4182002C # beq .L_80031034
    addic. 0, 30, 0x10
    .4byte 0x41820010 # beq .L_80031020
    addi 3, 30, 0x10
    li 4, 0x0
    bl fn_80086E44
L_80031020:
    addic. 0, 30, 0x4
    .4byte 0x41820010 # beq .L_80031034
    addi 3, 30, 0x4
    li 4, 0x0
    bl fn_80086EDC
L_80031034:
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_80031048
    lis 3, lbl_80491B28@ha
    addi 0, 3, lbl_80491B28@l
    stw 0, 0x0(30)
L_80031048:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80031058
    mr 3, 30
    bl dtor_80084580
L_80031058:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031074:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    li 6, 0x0
    stw 0, 0x24(1)
    li 7, 0x0
    li 8, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 30, 0x0(3)
    lwz 3, 0x4(3)
    lwz 4, 0x8(31)
    bl fn_8007ED6C
    cmplwi 3, 0x0
    .4byte 0x41820090 # beq .L_80031140
    lhz 4, 0x5a(30)
    addi 3, 30, 0x5c
    stw 3, 0x8(1)
    subi 0, 4, 0x1
    sth 0, 0x5a(30)
    lwz 31, 0xc(31)
    bl OSLockMutex
    lhz 0, 0x58(30)
    cmplw 0, 31
    .4byte 0x41820014 # beq .L_800310EC
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 0, 0x0
    .4byte 0x4800003C # b .L_80031124
L_800310EC:
    lwz 0, 0x4c(30)
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_80031108
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 0, 0x0
    .4byte 0x48000020 # b .L_80031124
L_80031108:
    li 3, 0x1
    li 0, 0x2
    stw 3, 0x48(30)
    lwz 3, 0x8(1)
    stw 0, 0x4c(30)
    bl OSUnlockMutex
    li 0, 0x1
L_80031124:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80031140
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80031140:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80031158:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    mr 30, 4
    lwz 0, 0x50(3)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80031188
    li 3, 0x0
    .4byte 0x48000114 # b .L_80031298
L_80031188:
    addi 3, 31, 0x5c
    stw 3, 0xc(1)
    bl OSLockMutex
    lwz 0, 0x4c(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_800311B0
    lwz 3, 0xc(1)
    bl OSUnlockMutex
    li 3, 0x0
    .4byte 0x480000EC # b .L_80031298
L_800311B0:
    cmplwi 30, 0x0
    .4byte 0x4082001C # bne .L_800311D0
    .4byte 0x806D87A0 # lwz r3, lbl_8053A360@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_800311C8
    .4byte 0x48000008 # b .L_800311CC
L_800311C8:
    bl fn_80028C98
L_800311CC:
    mr 30, 3
L_800311D0:
    lwz 5, 0x54(31)
    mr 4, 30
    addi 3, 31, 0x4
    bl fn_800283E8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_800311F8
    lwz 3, 0xc(1)
    bl OSUnlockMutex
    li 3, 0x0
    .4byte 0x480000A4 # b .L_80031298
L_800311F8:
    addi 3, 31, 0x5c
    stw 3, 0x8(1)
    bl OSLockMutex
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x48(31)
    stw 0, 0x4c(31)
    stw 31, 0x10(1)
    lwz 0, 0x50(31)
    stw 0, 0x14(1)
    lwz 0, 0x3c(31)
    stw 0, 0x18(1)
    lhz 3, 0x58(31)
    addi 0, 3, 0x1
    sth 0, 0x58(31)
    clrlwi 0, 0, 16
    stw 0, 0x1c(1)
    lhz 3, 0x5a(31)
    addi 0, 3, 0x1
    sth 0, 0x5a(31)
    bl fn_800282C0
    lis 4, fn_80031074@ha
    addi 5, 1, 0x10
    addi 4, 4, fn_80031074@l
    li 6, 0x10
    bl fn_80029300
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_80031280
    addi 3, 31, 0x4
    bl fn_800285B8
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 31, 0x0
    .4byte 0x48000010 # b .L_8003128C
L_80031280:
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 31, 0x1
L_8003128C:
    lwz 3, 0xc(1)
    bl OSUnlockMutex
    mr 3, 31
L_80031298:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800312B0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 31, 0x5c
    stw 3, 0x8(1)
    bl OSLockMutex
    lwz 0, 0x4c(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_800312EC
    lwz 3, 0x8(1)
    bl OSUnlockMutex
    li 0, 0x0
    .4byte 0x48000040 # b .L_80031328
L_800312EC:
    lwz 0, 0x4c(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80031310
    li 0, 0x0
    lwz 3, 0x8(1)
    stw 0, 0x4c(31)
    bl OSUnlockMutex
    li 0, 0x0
    .4byte 0x4800001C # b .L_80031328
L_80031310:
    li 0, 0x0
    lwz 3, 0x8(1)
    stw 0, 0x48(31)
    stw 0, 0x4c(31)
    bl OSUnlockMutex
    li 0, 0x1
L_80031328:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80031344
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_80031344:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80031358:
    stwu 1, -0x60(1)
    mflr 0
    lis 5, lbl_80491AD0@ha
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 29, 4
    stw 28, 0x50(1)
    mr 28, 3
    addi 3, 5, lbl_80491AD0@l
    bl strlen
    mr 31, 3
    mr 3, 29
    bl strlen
    add 31, 31, 3
    bl fn_80028C0C
    mr 4, 3
    addi 3, 31, 0x1
    li 5, -0x4
    bl fn_80084514
    lis 4, lbl_80491AD0@ha
    mr 30, 3
    addi 4, 4, lbl_80491AD0@l
    bl strcpy
    mr 3, 30
    mr 4, 29
    bl strcat
    li 0, 0x0
    mr 3, 30
    stbx 0, 30, 31
    bl fn_8004810C
    mr 0, 3
    mr 3, 30
    mr 30, 0
    bl fn_800845A4
    cmpwi 30, 0x0
    .4byte 0x41800030 # blt .L_8003141C
    .4byte 0x4180002C # blt .L_8003141C
    mr 3, 30
    addi 4, 1, 0x8
    bl fn_80048400
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8003141C
    lwz 0, 0x3c(1)
    addi 3, 1, 0x8
    stw 0, 0x54(28)
    bl fn_8004853C
    stw 30, 0x50(28)
L_8003141C:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8003143C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8003146C
    lis 5, lbl_80491B28@ha
    extsh. 0, 4
    addi 0, 5, lbl_80491B28@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8003146C
    bl dtor_80084580
L_8003146C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031484:
    stwu 1, -0x60(1)
    mflr 0
    cmpwi 4, 0xf0
    stw 0, 0x64(1)
    stmw 23, 0x3c(1)
    mr 23, 3
    mr 24, 6
    mr 25, 7
    mr 26, 8
    mr 27, 9
    .4byte 0x41800024 # blt .L_800314D0
    subi 3, 4, 0xf0
    mr 4, 5
    mr 5, 24
    mr 6, 25
    mr 7, 26
    mr 8, 27
    bl fn_80031750
    .4byte 0x48000270 # b .L_8003173C
L_800314D0:
    cmplwi 23, 0x0
    .4byte 0x4082000C # bne .L_800314E0
    li 3, 0x0
    .4byte 0x48000260 # b .L_8003173C
L_800314E0:
    .4byte 0xC0428250 # lfs f2, lbl_8053B1F0@sda21(r0)
    li 0, 0x0
    .4byte 0xC0228254 # lfs f1, lbl_8053B1F4@sda21(r0)
    clrlwi 28, 5, 24
    .4byte 0xC0028258 # lfs f0, lbl_8053B1F8@sda21(r0)
    mr 5, 28
    stfs 2, 0xc(1)
    clrlwi 6, 24, 24
    addi 7, 1, 0xc
    stfs 2, 0x14(1)
    stfs 1, 0x10(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    stw 0, 0x28(1)
    stw 0, 0x2c(1)
    stb 0, 0x30(1)
    sth 0, 0x32(1)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8003154C
    li 3, 0x0
    .4byte 0x480001F4 # b .L_8003173C
L_8003154C:
    lwz 3, 0x4(23)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80031560
    li 3, 0x0
    .4byte 0x480001E0 # b .L_8003173C
L_80031560:
    lwz 12, 0x0(3)
    lwz 4, 0x24(1)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr. 29, 3
    .4byte 0x4082000C # bne .L_80031584
    li 3, 0x0
    .4byte 0x480001BC # b .L_8003173C
L_80031584:
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr. 30, 3
    .4byte 0x4082000C # bne .L_800315A4
    li 3, 0x0
    .4byte 0x4800019C # b .L_8003173C
L_800315A4:
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr. 31, 3
    .4byte 0x4082000C # bne .L_800315C8
    li 3, 0x0
    .4byte 0x48000178 # b .L_8003173C
L_800315C8:
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21CC@l
    li 4, 0x10c
    bl fn_80028A8C
    mr 29, 3
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    cmplwi 29, 0x0
    .4byte 0x41820018 # beq .L_80031608
    mr 3, 29
    mr 4, 26
    mr 5, 27
    bl fn_8002AAF8
    mr 29, 3
L_80031608:
    cmplwi 29, 0x0
    .4byte 0x4082000C # bne .L_80031618
    li 3, 0x0
    .4byte 0x48000128 # b .L_8003173C
L_80031618:
    sth 25, 0x98(29)
    lbz 0, 0x0(30)
    stb 0, 0xe0(29)
    lbz 0, 0x1(30)
    stb 0, 0xe1(29)
    lfs 0, 0x4(30)
    stfs 0, 0xe4(29)
    lwz 0, 0x8(30)
    stw 0, 0xe8(29)
    lwz 0, 0xc(30)
    stw 0, 0xec(29)
    lwz 0, 0x10(30)
    stw 0, 0xf0(29)
    lwz 0, 0x14(30)
    stw 0, 0xf4(29)
    lwz 0, 0x18(30)
    stw 0, 0xf8(29)
    lwz 0, 0x1c(30)
    stw 0, 0xfc(29)
    lha 0, 0x20(30)
    sth 0, 0x100(29)
    lha 0, 0x22(30)
    sth 0, 0x102(29)
    lwz 0, 0x24(30)
    stw 0, 0x104(29)
    stw 31, 0x108(29)
    lwz 0, 0x20(1)
    stw 0, 0xdc(29)
    stw 23, 0x18(29)
    bl fn_8002A1F0
    lfs 2, 0x4(30)
    lfs 0, 0x14(1)
    fdivs 1, 2, 1
    fmuls 0, 0, 1
    stfs 0, 0xbc(29)
    lbz 0, 0x30(1)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_800316BC
    lbz 0, 0x1(30)
    subf 0, 0, 28
    sth 0, 0xc8(29)
L_800316BC:
    lfs 0, 0xc(1)
    clrlwi 0, 24, 24
    li 24, 0x0
    li 23, 0x0
    stfs 0, 0xb4(29)
    sth 0, 0xca(29)
    lfs 0, 0x18(1)
    stfs 0, 0xc0(29)
    lfs 0, 0x10(1)
    stfs 0, 0xb8(29)
    lfs 0, 0x1c(1)
    stfs 0, 0xc4(29)
    .4byte 0x48000020 # b .L_8003170C
L_800316F0:
    lwz 5, 0x28(1)
    mr 3, 29
    mr 4, 24
    lwzx 5, 5, 23
    bl fn_8002AE34
    addi 23, 23, 0x4
    addi 24, 24, 0x1
L_8003170C:
    lwz 0, 0x2c(1)
    cmplw 24, 0
    .4byte 0x4180FFDC # blt .L_800316F0
    lhz 0, 0x32(1)
    mr 3, 29
    sth 0, 0x32(29)
    bl fn_8002AC14
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80031738
    mr 3, 29
    .4byte 0x48000008 # b .L_8003173C
L_80031738:
    li 3, 0x0
L_8003173C:
    lmw 23, 0x3c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80031750:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    mr 26, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    mr 30, 8
    bl OSDisableInterrupts
    lis 4, lbl_804B21CC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21CC@l
    li 4, 0x10c
    bl fn_80028A8C
    mr 31, 3
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    cmplwi 31, 0x0
    .4byte 0x41820018 # beq .L_800317B8
    mr 3, 31
    mr 4, 29
    mr 5, 30
    bl fn_8002AAF8
    mr 31, 3
L_800317B8:
    cmplwi 31, 0x0
    .4byte 0x4082000C # bne .L_800317C8
    li 3, 0x0
    .4byte 0x4800006C # b .L_80031830
L_800317C8:
    sth 28, 0x98(31)
    li 0, 0x2
    stw 25, 0x108(31)
    stw 0, 0xdc(31)
    bl fn_8002A1F0
    .4byte 0xC002825C # lfs f0, lbl_8053B1FC@sda21(r0)
    lis 3, lbl_8045D1B4@ha
    addi 5, 3, lbl_8045D1B4@l
    clrlwi 6, 26, 24
    fdivs 0, 0, 1
    clrlwi 0, 27, 24
    mr 3, 31
    li 4, 0x0
    stfs 0, 0xbc(31)
    lbz 7, 0xe1(31)
    subf 6, 7, 6
    sth 6, 0xc8(31)
    sth 0, 0xca(31)
    bl fn_8002AE34
    mr 3, 31
    bl fn_8002AC14
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003182C
    mr 3, 31
    .4byte 0x48000008 # b .L_80031830
L_8003182C:
    li 3, 0x0
L_80031830:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80031844:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_8003188C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B28C8@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B28C8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8003188C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003189C:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, fn_800323C0@ha
    stw 0, 0x14(1)
    addi 0, 5, fn_800323C0@l
    stw 31, 0xc(1)
    mr 31, 4
    li 4, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    mr 3, 0
    bl fn_8002C420
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80031914
    .4byte 0x800D87A8 # lwz r0, lbl_8053A368@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_800318E8
    bl fn_800282C0
    .4byte 0x906D87A8 # stw r3, lbl_8053A368@sda21(r0)
L_800318E8:
    addi 0, 30, 0x20
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    mullw 3, 0, 31
    li 5, 0x20
    bl fn_80084514
    li 0, 0x0
    .4byte 0x906D87AC # stw r3, lbl_8053A36C@sda21(r0)
    .4byte 0x93CD87B0 # stw r30, lbl_8053A370@sda21(r0)
    .4byte 0x93ED87B4 # stw r31, lbl_8053A374@sda21(r0)
    .4byte 0x980D87B8 # stb r0, lbl_8053A378@sda21(r0)
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
L_80031914:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003192C:
    li 0, 0x0
    .4byte 0xC0628260 # lfs f3, lbl_8053B200@sda21(r0)
    stw 0, 0xa8(3)
    .4byte 0xC0428264 # lfs f2, lbl_8053B204@sda21(r0)
    stb 0, 0xac(3)
    .4byte 0xC0228268 # lfs f1, lbl_8053B208@sda21(r0)
    stb 0, 0xad(3)
    .4byte 0xC0028260 # lfs f0, lbl_8053B200@sda21(r0)
    stb 0, 0xae(3)
    stw 0, 0xb0(3)
    stw 0, 0xb4(3)
    stw 0, 0xb8(3)
    stw 0, 0xbc(3)
    stb 0, 0xc0(3)
    stw 0, 0xc4(3)
    stfs 3, 0xc8(3)
    stw 0, 0x108(3)
    stw 0, 0x10c(3)
    stw 0, 0x110(3)
    stb 0, 0x114(3)
    stw 0, 0x118(3)
    stw 0, 0x12c(3)
    stw 0, 0x148(3)
    stw 0, 0x14c(3)
    stw 0, 0x150(3)
    stw 0, 0x154(3)
    sth 0, 0x158(3)
    sth 0, 0x15a(3)
    stw 0, 0x15c(3)
    stw 0, 0x160(3)
    stw 0, 0x164(3)
    stb 0, 0x168(3)
    stw 0, 0x16c(3)
    stw 0, 0x170(3)
    stfs 2, 0x174(3)
    stfs 2, 0x178(3)
    stw 0, 0x90(3)
    sth 0, 0x130(3)
    sth 0, 0x13c(3)
    stfs 2, 0x17c(3)
    stfs 1, 0x194(3)
    stfs 0, 0x1ac(3)
    stfs 0, 0x1c4(3)
    stw 0, 0x94(3)
    sth 0, 0x132(3)
    sth 0, 0x13e(3)
    stfs 2, 0x180(3)
    stfs 1, 0x198(3)
    stfs 0, 0x1b0(3)
    stfs 0, 0x1c8(3)
    stw 0, 0x98(3)
    sth 0, 0x134(3)
    sth 0, 0x140(3)
    stfs 2, 0x184(3)
    stfs 1, 0x19c(3)
    stfs 0, 0x1b4(3)
    stfs 0, 0x1cc(3)
    stw 0, 0x9c(3)
    sth 0, 0x136(3)
    sth 0, 0x142(3)
    stfs 2, 0x188(3)
    stfs 1, 0x1a0(3)
    stfs 0, 0x1b8(3)
    stfs 0, 0x1d0(3)
    stw 0, 0xa0(3)
    sth 0, 0x138(3)
    sth 0, 0x144(3)
    stfs 2, 0x18c(3)
    stfs 1, 0x1a4(3)
    stfs 0, 0x1bc(3)
    stfs 0, 0x1d4(3)
    stw 0, 0xa4(3)
    sth 0, 0x13a(3)
    sth 0, 0x146(3)
    stfs 2, 0x190(3)
    stfs 1, 0x1a8(3)
    stfs 0, 0x1c0(3)
    stfs 0, 0x1d8(3)
    sth 0, 0x1dc(3)
    sth 0, 0x1de(3)
    sth 0, 0x1e0(3)
    sth 0, 0x1e2(3)
    sth 0, 0x1e4(3)
    sth 0, 0x1e6(3)
    blr

fn_80031A80:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0028260 # lfs f0, lbl_8053B200@sda21(r0)
    li 9, 0x0
    stw 0, 0x14(1)
    lis 8, 0x1
    .4byte 0xC0428264 # lfs f2, lbl_8053B204@sda21(r0)
    subi 0, 8, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC0228268 # lfs f1, lbl_8053B208@sda21(r0)
    stw 4, 0x148(3)
    addi 4, 31, 0x40
    stw 5, 0x14c(3)
    li 5, 0x10
    stfs 0, 0xc8(3)
    .4byte 0xC0028260 # lfs f0, lbl_8053B200@sda21(r0)
    stb 9, 0xae(3)
    stb 9, 0xac(3)
    stb 9, 0xad(3)
    stb 9, 0x114(3)
    sth 9, 0x15a(3)
    stfs 2, 0x17c(3)
    stfs 1, 0x194(3)
    stfs 0, 0x1ac(3)
    stfs 0, 0x1c4(3)
    stfs 2, 0x180(3)
    stfs 1, 0x198(3)
    stfs 0, 0x1b0(3)
    stfs 0, 0x1c8(3)
    stfs 2, 0x184(3)
    stfs 1, 0x19c(3)
    stfs 0, 0x1b4(3)
    stfs 0, 0x1cc(3)
    stfs 2, 0x188(3)
    stfs 1, 0x1a0(3)
    stfs 0, 0x1b8(3)
    stfs 0, 0x1d0(3)
    stfs 2, 0x18c(3)
    stfs 1, 0x1a4(3)
    stfs 0, 0x1bc(3)
    stfs 0, 0x1d4(3)
    stfs 2, 0x190(3)
    stfs 1, 0x1a8(3)
    stfs 0, 0x1c0(3)
    stfs 0, 0x1d8(3)
    stfs 2, 0x174(3)
    stfs 2, 0x178(3)
    sth 0, 0x1dc(3)
    stw 6, 0x150(3)
    stw 7, 0x154(3)
    bl OSInitMessageQueue
    addi 3, 31, 0x20
    addi 4, 31, 0x80
    li 5, 0x4
    bl OSInitMessageQueue
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031B74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 3
    mr 3, 4
    addi 4, 30, 0xcc
    bl fn_80048400
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80031BAC
    li 3, 0x0
    .4byte 0x48000070 # b .L_80031C18
L_80031BAC:
    lis 3, fn_800323A0@ha
    mr 4, 30
    addi 3, 3, fn_800323A0@l
    bl fn_8002C420
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80031BCC
    li 3, 0x0
    .4byte 0x48000050 # b .L_80031C18
L_80031BCC:
    stw 30, 0x8(1)
    lis 3, fn_80031D28@ha
    addi 4, 3, fn_80031D28@l
    .4byte 0x806D87A8 # lwz r3, lbl_8053A368@sda21(r0)
    lwz 0, 0x14c(30)
    addi 5, 1, 0x8
    li 6, 0xc
    stw 0, 0xc(1)
    stw 31, 0x10(1)
    bl fn_80029300
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_80031C14
    lis 3, fn_800323A0@ha
    mr 4, 30
    addi 3, 3, fn_800323A0@l
    bl fn_8002C360
    li 3, 0x0
    .4byte 0x48000008 # b .L_80031C18
L_80031C14:
    li 3, 0x1
L_80031C18:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80031C30:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    li 5, 0x0
    stw 0, 0x14(1)
    bl OSSendMessage
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031C64:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x14(1)
    slwi 0, 4, 16
    ori 4, 0, 0x1
    bl OSSendMessage
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031C9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    li 4, 0x3
    .4byte 0x41820008 # beq .L_80031CB8
    li 4, 0x2
L_80031CB8:
    li 5, 0x0
    bl OSSendMessage
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80031CD0
    li 3, 0x0
    .4byte 0x48000008 # b .L_80031CD4
L_80031CD0:
    li 3, 0x1
L_80031CD4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031CE4:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, fn_80031E54@ha
    mr 5, 3
    stw 0, 0x14(1)
    li 0, 0x1
    addi 4, 4, fn_80031E54@l
    stb 0, 0x114(3)
    .4byte 0x806D87A8 # lwz r3, lbl_8053A368@sda21(r0)
    bl fn_80029558
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031D28:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 3
    stw 0, 0x14(1)
    lwz 4, 0x4(5)
    lwz 3, 0x0(3)
    lwz 5, 0x8(5)
    bl fn_80031F0C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031D58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 30, 0x0(3)
    mr 3, 30
    bl fn_800320D8
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_80031E1C
    lwz 3, 0x8(31)
    cmpwi 3, 0x0
    .4byte 0x4081003C # ble .L_80031DC8
    subi 0, 3, 0x1
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_80031DC8
    lis 4, fn_80031EB4@ha
    .4byte 0x806D87A8 # lwz r3, lbl_8053A368@sda21(r0)
    addi 4, 4, fn_80031EB4@l
    mr 5, 30
    bl fn_80029558
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80031DC8
    li 0, 0x1
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
L_80031DC8:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80031E1C
    subi 0, 3, 0x1
    lis 3, fn_80031D58@ha
    stw 0, 0x4(31)
    addi 4, 3, fn_80031D58@l
    mr 5, 31
    li 6, 0xc
    .4byte 0x806D87A8 # lwz r3, lbl_8053A368@sda21(r0)
    bl fn_80029300
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80031E04
    li 0, 0x1
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
L_80031E04:
    bl OSDisableInterrupts
    lwz 4, 0x118(30)
    stw 3, 0x8(1)
    addi 0, 4, 0x1
    stw 0, 0x118(30)
    bl OSRestoreInterrupts
L_80031E1C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80031E34:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_800320D8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031E54:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, fn_800323A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, fn_800323A0@l
    mr 4, 31
    bl fn_8002C360
    lwz 12, 0x150(31)
    cmplwi 12, 0x0
    .4byte 0x41820020 # beq .L_80031EA0
    mr 4, 31
    lwz 5, 0x154(31)
    li 3, 0x0
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x150(31)
L_80031EA0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031EB4:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x4
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x20
    bl OSSendMessage
    lwz 12, 0x150(31)
    cmplwi 12, 0x0
    .4byte 0x41820018 # beq .L_80031EF8
    mr 4, 31
    lwz 5, 0x154(31)
    li 3, 0x1
    mtctr 12
    bctrl
L_80031EF8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80031F0C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 5
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr 29, 3
    .4byte 0x880D87B9 # lbz r0, lbl_8053A379@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80031F44
    li 3, 0x0
    .4byte 0x4800017C # b .L_800320BC
L_80031F44:
    lbz 0, 0x114(29)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80031F58
    li 3, 0x0
    .4byte 0x48000168 # b .L_800320BC
L_80031F58:
    .4byte 0x808D87AC # lwz r4, lbl_8053A36C@sda21(r0)
    addi 3, 29, 0xcc
    li 5, 0x40
    li 6, 0x0
    li 7, 0x1
    bl fn_80048874
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_80031F88
    li 0, 0x1
    li 3, 0x0
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
    .4byte 0x48000138 # b .L_800320BC
L_80031F88:
    .4byte 0x80AD87AC # lwz r5, lbl_8053A36C@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x18(1)
    li 0, 0x0
    lbz 3, 0x9(5)
    cmpwi 31, 0x0
    .4byte 0xC8428270 # lfd f2, lbl_8053B210@sda21(r0)
    sth 3, 0x158(29)
    .4byte 0xC002826C # lfs f0, lbl_8053B20C@sda21(r0)
    lhz 3, 0xc(5)
    sth 3, 0x15a(29)
    lwz 3, 0x10(5)
    stw 3, 0x164(29)
    lhz 4, 0xe(5)
    neg 3, 4
    or 3, 3, 4
    srwi 3, 3, 31
    stb 3, 0x168(29)
    lwz 3, 0x18(5)
    stw 3, 0x16c(29)
    lwz 3, 0x1c(5)
    stw 3, 0x170(29)
    lbz 3, 0x28(5)
    stw 3, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x174(29)
    stw 0, 0x118(29)
    stw 0, 0x110(29)
    stw 0, 0x10c(29)
    .4byte 0x806D87B0 # lwz r3, lbl_8053A370@sda21(r0)
    lhz 0, 0xc(5)
    divwu 3, 30, 3
    divwu 0, 3, 0
    stw 0, 0x160(29)
    lwz 0, 0x160(29)
    stw 0, 0x15c(29)
    lwz 3, 0x15c(29)
    subi 0, 3, 0x1
    stw 0, 0x15c(29)
    lwz 0, 0x15c(29)
    stw 0, 0x108(29)
    .4byte 0x41800010 # blt .L_80032044
    lwz 0, 0x108(29)
    cmplw 31, 0
    .4byte 0x40810008 # ble .L_80032048
L_80032044:
    lwz 31, 0x108(29)
L_80032048:
    lbz 0, 0x114(29)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8003205C
    li 3, 0x0
    .4byte 0x48000064 # b .L_800320BC
L_8003205C:
    stw 29, 0xc(1)
    lis 3, fn_80031D58@ha
    addi 4, 3, fn_80031D58@l
    .4byte 0x806D87A8 # lwz r3, lbl_8053A368@sda21(r0)
    lwz 7, 0x108(29)
    addi 5, 1, 0xc
    li 6, 0xc
    subi 0, 7, 0x1
    stw 31, 0x14(1)
    stw 0, 0x10(1)
    bl fn_80029300
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_800320A0
    li 0, 0x1
    li 3, 0x0
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
    .4byte 0x48000020 # b .L_800320BC
L_800320A0:
    bl OSDisableInterrupts
    lwz 4, 0x118(29)
    stw 3, 0x8(1)
    addi 0, 4, 0x1
    stw 0, 0x118(29)
    bl OSRestoreInterrupts
    li 3, 0x1
L_800320BC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800320D8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 27, 3
    bl OSDisableInterrupts
    lwz 4, 0x118(27)
    stw 3, 0x8(1)
    subi 0, 4, 0x1
    stw 0, 0x118(27)
    bl OSRestoreInterrupts
    .4byte 0x880D87B9 # lbz r0, lbl_8053A379@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80032118
    li 3, 0x0
    .4byte 0x48000278 # b .L_8003238C
L_80032118:
    lbz 0, 0x114(27)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8003212C
    li 3, 0x0
    .4byte 0x48000264 # b .L_8003238C
L_8003212C:
    lhz 4, 0x158(27)
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_80032154
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    lis 3, 0x38e4
    subi 3, 3, 0x71c7
    slwi 0, 0, 4
    mulhwu 0, 3, 0
    srwi 5, 0, 1
    .4byte 0x4800000C # b .L_8003215C
L_80032154:
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    srwi 5, 0, 1
L_8003215C:
    lwz 3, 0x170(27)
    cmplwi 4, 0x0
    lwz 4, 0x16c(27)
    subi 0, 3, 0x1
    divwu 31, 0, 5
    .4byte 0x40820020 # bne .L_80032190
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    lis 3, 0x38e4
    subi 3, 3, 0x71c7
    slwi 0, 0, 4
    mulhwu 0, 3, 0
    srwi 0, 0, 1
    .4byte 0x4800000C # b .L_80032198
L_80032190:
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    srwi 0, 0, 1
L_80032198:
    divwu 30, 4, 0
    lwz 4, 0x110(27)
    cmplw 4, 31
    .4byte 0x4081000C # ble .L_800321B0
    li 3, 0x0
    .4byte 0x480001E0 # b .L_8003238C
L_800321B0:
    .4byte 0x806D87B0 # lwz r3, lbl_8053A370@sda21(r0)
    lhz 0, 0x15a(27)
    mullw 3, 3, 0
    addi 0, 3, 0x20
    mullw 3, 4, 0
    mr 5, 0
    addi 6, 3, 0x40
    .4byte 0x4082000C # bne .L_800321D8
    lwz 0, 0x100(27)
    subf 5, 6, 0
L_800321D8:
    .4byte 0x808D87AC # lwz r4, lbl_8053A36C@sda21(r0)
    addi 3, 27, 0xcc
    li 7, 0x1
    bl fn_80048874
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_80032200
    li 0, 0x1
    li 3, 0x0
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
    .4byte 0x48000190 # b .L_8003238C
L_80032200:
    lbz 0, 0x114(27)
    .4byte 0x83AD87AC # lwz r29, lbl_8053A36C@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80032218
    li 3, 0x0
    .4byte 0x48000178 # b .L_8003238C
L_80032218:
    lwz 3, 0x10c(27)
    li 28, 0x0
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    lwz 4, 0x148(27)
    mullw 0, 3, 0
    add 26, 4, 0
    .4byte 0x48000060 # b .L_80032290
L_80032234:
    .4byte 0x806D87B0 # lwz r3, lbl_8053A370@sda21(r0)
    li 6, 0x0
    lwz 0, 0x160(27)
    li 7, 0x0
    lwz 5, 0x4(29)
    li 8, 0x0
    mullw 0, 3, 0
    .4byte 0x808D87AC # lwz r4, lbl_8053A36C@sda21(r0)
    li 9, -0x1
    li 10, 0x0
    mullw 3, 5, 28
    addi 3, 3, 0x20
    mullw 0, 28, 0
    add 3, 4, 3
    add 4, 26, 0
    bl JKRAram_mainRamToAram
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_8003228C
    li 0, 0x1
    li 3, 0x0
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
    .4byte 0x48000104 # b .L_8003238C
L_8003228C:
    addi 28, 28, 0x1
L_80032290:
    lhz 0, 0x15a(27)
    cmpw 28, 0
    .4byte 0x4180FF9C # blt .L_80032234
    lwz 3, 0x10c(27)
    addi 0, 3, 0x1
    stw 0, 0x10c(27)
    lwz 0, 0x10c(27)
    lwz 3, 0x108(27)
    cmplw 0, 3
    .4byte 0x418000AC # blt .L_80032360
    lbz 0, 0x168(27)
    lwz 4, 0x110(27)
    cmplwi 0, 0x0
    add 4, 3, 4
    subi 4, 4, 0x1
    .4byte 0x41820018 # beq .L_800322E4
    .4byte 0x4800000C # b .L_800322DC
L_800322D4:
    subf 4, 31, 4
    add 4, 4, 30
L_800322DC:
    cmplw 4, 31
    .4byte 0x4181FFF4 # bgt .L_800322D4
L_800322E4:
    cmplw 4, 31
    .4byte 0x41820010 # beq .L_800322F8
    addi 0, 4, 0x2
    cmplw 0, 31
    .4byte 0x40820020 # bne .L_80032314
L_800322F8:
    lwz 0, 0x160(27)
    addi 3, 27, 0x20
    li 4, 0x5
    li 5, 0x1
    stw 0, 0x108(27)
    bl OSSendMessage
    .4byte 0x48000010 # b .L_80032320
L_80032314:
    lwz 3, 0x160(27)
    subi 0, 3, 0x1
    stw 0, 0x108(27)
L_80032320:
    mr 3, 29
    mr 4, 27
    li 5, 0x0
    .4byte 0x48000020 # b .L_8003234C
L_80032330:
    lha 0, 0x8(3)
    addi 5, 5, 0x1
    sth 0, 0x130(4)
    lha 0, 0xa(3)
    addi 3, 3, 0x4
    sth 0, 0x13c(4)
    addi 4, 4, 0x2
L_8003234C:
    lhz 0, 0x15a(27)
    cmpw 5, 0
    .4byte 0x4180FFDC # blt .L_80032330
    li 0, 0x0
    stw 0, 0x10c(27)
L_80032360:
    lwz 3, 0x110(27)
    addi 0, 3, 0x1
    stw 0, 0x110(27)
    lwz 0, 0x110(27)
    cmplw 0, 31
    .4byte 0x40810014 # ble .L_80032388
    lbz 0, 0x168(27)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80032388
    stw 30, 0x110(27)
L_80032388:
    li 3, 0x1
L_8003238C:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800323A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80032BAC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800323C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl DVDGetDriveStatus
    addi 0, 3, 0x1
    cmplwi 0, 0xc
    .4byte 0x41810028 # bgt .L_80032400
    lis 3, jumptable_80491B38@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_80491B38@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    .4byte 0x980D87B8 # stb r0, lbl_8053A378@sda21(r0)
    .4byte 0x4800000C # b .L_80032408
L_80032400:
    li 0, 0x1
    .4byte 0x980D87B8 # stb r0, lbl_8053A378@sda21(r0)
L_80032408:
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003241C:
    stwu 1, -0x10(1)
    mflr 0
    mr 8, 3
    mr 7, 4
    stw 0, 0x14(1)
    mr 0, 5
    mr 3, 6
    mr 4, 8
    mr 5, 7
    mr 6, 0
    bl fn_80032458
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80032458:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 24, 0x30(1)
    mr 27, 3
    mr 28, 5
    mr 29, 6
    lhz 0, 0x158(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8003249C
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    lis 3, 0x38e4
    subi 3, 3, 0x71c7
    slwi 0, 0, 4
    mulhwu 0, 3, 0
    srwi 31, 0, 1
    .4byte 0x4800000C # b .L_800324A4
L_8003249C:
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    srwi 31, 0, 1
L_800324A4:
    cmpwi 4, 0x1
    .4byte 0x41820020 # beq .L_800324C8
    .4byte 0x40800010 # bge .L_800324BC
    cmpwi 4, 0x0
    .4byte 0x4080005C # bge .L_80032510
    .4byte 0x480006CC # b .L_80032B84
L_800324BC:
    cmpwi 4, 0x3
    .4byte 0x408006C4 # bge .L_80032B84
    .4byte 0x480005C0 # b .L_80032A84
L_800324C8:
    lwz 0, 0xa8(27)
    cmplwi 0, 0x0
    .4byte 0x408206B4 # bne .L_80032B84
    stw 28, 0xa8(27)
    li 4, 0x0
    lwz 0, 0x15c(27)
    mullw 0, 31, 0
    stw 0, 0xb4(27)
    stw 4, 0xb8(27)
    stw 4, 0xb0(27)
    lwz 3, 0x170(27)
    subi 0, 3, 0x1
    divwu 0, 0, 31
    stw 0, 0xbc(27)
    stb 4, 0xc0(27)
    stw 4, 0xc4(27)
    stw 4, 0x12c(27)
    .4byte 0x48000678 # b .L_80032B84
L_80032510:
    lhz 0, 0x8(29)
    cmplwi 0, 0x0
    .4byte 0x4082066C # bne .L_80032B84
    lwz 0, 0xa8(27)
    cmplw 28, 0
    .4byte 0x40820490 # bne .L_800329B4
    li 6, 0x0
    stw 6, 0x12c(27)
    lwz 3, 0x74(29)
    lhz 0, 0x64(29)
    lwz 4, 0xb4(27)
    add 7, 3, 0
    cmplw 7, 4
    .4byte 0x41810018 # bgt .L_8003255C
    lwz 3, 0xb8(27)
    subf 0, 7, 4
    add 0, 3, 0
    stw 0, 0xb8(27)
    .4byte 0x480000B8 # b .L_80032610
L_8003255C:
    lbz 0, 0xc0(27)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80032590
    lwz 0, 0xb8(27)
    add 0, 0, 4
    stw 0, 0xb8(27)
    lwz 0, 0x15c(27)
    lwz 3, 0xb8(27)
    mullw 0, 31, 0
    subf 0, 7, 0
    add 0, 3, 0
    stw 0, 0xb8(27)
    .4byte 0x48000084 # b .L_80032610
L_80032590:
    lwz 3, 0xb8(27)
    li 0, -0x1
    add 3, 3, 4
    stw 3, 0xb8(27)
    lwz 3, 0x15c(27)
    lwz 4, 0x110(29)
    mullw 3, 31, 3
    lwz 5, 0xb8(27)
    subf 3, 7, 3
    subf 3, 4, 3
    add 3, 5, 3
    stw 3, 0xb8(27)
    lwz 4, 0x170(27)
    lwz 3, 0xb8(27)
    subf 3, 4, 3
    stw 3, 0xb8(27)
    lwz 4, 0xb8(27)
    lwz 3, 0x16c(27)
    add 3, 4, 3
    stw 3, 0xb8(27)
    stw 6, 0x110(29)
    stw 6, 0x120(27)
    lwz 3, 0x12c(27)
    ori 3, 3, 0x2
    stw 3, 0x12c(27)
    lwz 3, 0xc4(27)
    cmplw 3, 0
    .4byte 0x4080000C # bge .L_80032608
    addi 0, 3, 0x1
    stw 0, 0xc4(27)
L_80032608:
    li 0, 0x0
    stb 0, 0xc0(27)
L_80032610:
    lwz 3, 0xb8(27)
    lwz 0, 0x170(27)
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_80032628
    li 0, 0x1
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
L_80032628:
    lwz 4, 0x16c(27)
    lis 5, 0x4330
    lwz 3, 0x170(27)
    li 0, -0x1
    lwz 6, 0xc4(27)
    subf 3, 4, 3
    stw 5, 0x10(1)
    .4byte 0xC8228270 # lfd f1, lbl_8053B210@sda21(r0)
    cmplw 6, 0
    stw 6, 0x14(1)
    lfd 0, 0x10(1)
    stw 3, 0x1c(1)
    fsubs 2, 0, 1
    stw 5, 0x18(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 2, 2, 0
    .4byte 0x4080001C # bge .L_80032688
    lwz 0, 0xb8(27)
    stw 5, 0x20(1)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fadds 2, 2, 0
L_80032688:
    lwz 3, 0x164(27)
    lis 0, 0x4330
    stw 0, 0x28(1)
    .4byte 0xC8228270 # lfd f1, lbl_8053B210@sda21(r0)
    stw 3, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fdivs 2, 2, 0
    stfs 2, 0xc8(27)
    lwz 3, 0xb8(27)
    lwz 0, 0x170(27)
    addi 3, 3, 0x190
    cmplw 3, 0
    .4byte 0x418000F8 # blt .L_800327B4
    lbz 0, 0xc0(27)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_800327B4
    lbz 0, 0x168(27)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_80032724
    lwz 3, 0xbc(27)
    lwz 0, 0x15c(27)
    addi 3, 3, 0x1
    cmplw 3, 0
    .4byte 0x41800008 # blt .L_800326F0
    li 3, 0x0
L_800326F0:
    lwz 4, 0x16c(27)
    mullw 0, 3, 31
    divwu 3, 4, 31
    mullw 3, 3, 31
    subf 3, 3, 4
    add 0, 3, 0
    stw 0, 0x110(29)
    lwz 0, 0x110(29)
    stw 0, 0x120(27)
    lwz 0, 0x12c(27)
    ori 0, 0, 0x2
    stw 0, 0x12c(27)
    .4byte 0x4800001C # b .L_8003273C
L_80032724:
    li 0, 0x0
    sth 0, 0x102(29)
    sth 0, 0x128(27)
    lwz 0, 0x12c(27)
    ori 0, 0, 0x8
    stw 0, 0x12c(27)
L_8003273C:
    lwz 7, 0x170(27)
    li 0, 0x1
    lwz 5, 0xbc(27)
    divwu 6, 7, 31
    lwz 4, 0x15c(27)
    lwz 3, 0x74(29)
    mullw 6, 6, 31
    mullw 5, 5, 31
    subf 6, 6, 7
    mullw 4, 31, 4
    add 5, 6, 5
    subf 4, 5, 4
    subf 3, 4, 3
    stw 3, 0x74(29)
    lwz 3, 0x74(29)
    stw 3, 0x11c(27)
    lwz 3, 0x12c(27)
    ori 3, 3, 0x1
    stw 3, 0x12c(27)
    lwz 3, 0x170(27)
    lwz 4, 0x16c(27)
    subi 3, 3, 0x1
    lwz 5, 0xbc(27)
    divwu 4, 4, 31
    divwu 3, 3, 31
    subf 3, 4, 3
    add 3, 3, 5
    addi 3, 3, 0x1
    stw 3, 0xbc(27)
    stb 0, 0xc0(27)
L_800327B4:
    lwz 3, 0x108(28)
    lwz 0, 0x70(29)
    subf. 3, 3, 0
    .4byte 0x41820008 # beq .L_800327C8
    subi 3, 3, 0x1
L_800327C8:
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    lwz 4, 0xb0(27)
    divwu 30, 3, 0
    cmplw 30, 4
    .4byte 0x41820178 # beq .L_80032950
    xor 0, 4, 30
    lis 3, fn_80031E34@ha
    cntlzw 0, 0
    li 26, 0x0
    slw 0, 4, 0
    addi 25, 3, fn_80031E34@l
    srwi 24, 0, 31
    .4byte 0x48000060 # b .L_80032858
L_800327FC:
    .4byte 0x806D87A8 # lwz r3, lbl_8053A368@sda21(r0)
    mr 4, 25
    mr 5, 27
    bl fn_80029558
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_80032820
    li 0, 0x1
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
    .4byte 0x48000048 # b .L_80032864
L_80032820:
    bl OSDisableInterrupts
    lwz 4, 0x118(27)
    stw 3, 0x8(1)
    addi 0, 4, 0x1
    stw 0, 0x118(27)
    bl OSRestoreInterrupts
    lwz 3, 0xb0(27)
    addi 0, 3, 0x1
    stw 0, 0xb0(27)
    lwz 3, 0xb0(27)
    lwz 0, 0x15c(27)
    cmplw 3, 0
    .4byte 0x41800008 # blt .L_80032858
    stw 26, 0xb0(27)
L_80032858:
    lwz 0, 0xb0(27)
    cmplw 30, 0
    .4byte 0x4082FF9C # bne .L_800327FC
L_80032864:
    cmplwi 24, 0x0
    .4byte 0x41820118 # beq .L_80032980
    lwz 3, 0x15c(27)
    lwz 0, 0xbc(27)
    subf 0, 3, 0
    stw 0, 0xbc(27)
    lbz 0, 0xad(27)
    cmplwi 0, 0x0
    .4byte 0x41820064 # beq .L_800328E8
    lbz 0, 0xc0(27)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_800328B4
    lwz 0, 0x74(29)
    add 0, 0, 31
    stw 0, 0x74(29)
    lwz 0, 0x74(29)
    stw 0, 0x11c(27)
    lwz 0, 0x12c(27)
    ori 0, 0, 0x1
    stw 0, 0x12c(27)
L_800328B4:
    lwz 3, 0x114(29)
    li 0, 0x0
    add 3, 3, 31
    stw 3, 0x114(29)
    lwz 3, 0x114(29)
    stw 3, 0x124(27)
    lwz 3, 0x12c(27)
    ori 3, 3, 0x4
    stw 3, 0x12c(27)
    lwz 3, 0x160(27)
    stw 3, 0x15c(27)
    stb 0, 0xad(27)
    .4byte 0x4800009C # b .L_80032980
L_800328E8:
    lwz 3, 0x160(27)
    lwz 0, 0x15c(27)
    subi 3, 3, 0x1
    cmplw 0, 3
    .4byte 0x41820088 # beq .L_80032980
    stw 3, 0x15c(27)
    lwz 0, 0x114(29)
    subf 0, 31, 0
    stw 0, 0x114(29)
    lwz 0, 0x114(29)
    stw 0, 0x124(27)
    lwz 0, 0x12c(27)
    ori 0, 0, 0x4
    stw 0, 0x12c(27)
    lbz 0, 0xc0(27)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_80032980
    lwz 0, 0x74(29)
    subf 0, 31, 0
    stw 0, 0x74(29)
    lwz 0, 0x74(29)
    stw 0, 0x11c(27)
    lwz 0, 0x12c(27)
    ori 0, 0, 0x1
    stw 0, 0x12c(27)
    .4byte 0x48000034 # b .L_80032980
L_80032950:
    lwz 0, 0x118(27)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80032980
    .4byte 0x880D87B8 # lbz r0, lbl_8053A378@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80032980
    lbz 0, 0xae(27)
    rlwinm 0, 0, 0, 31, 29
    stb 0, 0xae(27)
    lbz 0, 0xae(27)
    rlwinm 0, 0, 0, 30, 28
    stb 0, 0xae(27)
L_80032980:
    lwz 3, 0x74(29)
    lhz 0, 0x64(29)
    add 0, 3, 0
    stw 0, 0xb4(27)
    lwz 3, 0x160(27)
    lwz 4, 0x118(27)
    subi 0, 3, 0x2
    cmplw 4, 0
    .4byte 0x41800064 # blt .L_80032A04
    lbz 0, 0xae(27)
    ori 0, 0, 0x4
    stb 0, 0xae(27)
    .4byte 0x48000054 # b .L_80032A04
L_800329B4:
    lwz 0, 0x12c(27)
    clrlwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_800329C8
    lwz 0, 0x11c(27)
    stw 0, 0x74(29)
L_800329C8:
    lwz 0, 0x12c(27)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182000C # beq .L_800329DC
    lwz 0, 0x120(27)
    stw 0, 0x110(29)
L_800329DC:
    lwz 0, 0x12c(27)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x4182000C # beq .L_800329F0
    lwz 0, 0x124(27)
    stw 0, 0x114(29)
L_800329F0:
    lwz 0, 0x12c(27)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x4182000C # beq .L_80032A04
    lhz 0, 0x128(27)
    sth 0, 0x102(29)
L_80032A04:
    lwz 0, 0x90(27)
    li 3, 0x0
    cmplw 28, 0
    .4byte 0x41820058 # beq .L_80032A68
    lwz 0, 0x94(27)
    li 3, 0x1
    cmplw 28, 0
    .4byte 0x41820048 # beq .L_80032A68
    lwz 0, 0x98(27)
    li 3, 0x2
    cmplw 28, 0
    .4byte 0x41820038 # beq .L_80032A68
    lwz 0, 0x9c(27)
    li 3, 0x3
    cmplw 28, 0
    .4byte 0x41820028 # beq .L_80032A68
    lwz 0, 0xa0(27)
    li 3, 0x4
    cmplw 28, 0
    .4byte 0x41820018 # beq .L_80032A68
    lwz 0, 0xa4(27)
    li 3, 0x5
    cmplw 28, 0
    .4byte 0x41820008 # beq .L_80032A68
    li 3, 0x6
L_80032A68:
    slwi 0, 3, 1
    add 3, 27, 0
    lha 0, 0x130(3)
    sth 0, 0x104(29)
    lha 0, 0x13c(3)
    sth 0, 0x106(29)
    .4byte 0x48000104 # b .L_80032B84
L_80032A84:
    lwz 3, 0x90(27)
    li 4, 0x0
    li 0, 0x0
    cmplw 28, 3
    .4byte 0x4082000C # bne .L_80032AA0
    stw 0, 0x90(27)
    .4byte 0x48000010 # b .L_80032AAC
L_80032AA0:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80032AAC
    li 4, 0x1
L_80032AAC:
    lwz 3, 0x94(27)
    cmplw 28, 3
    .4byte 0x4082000C # bne .L_80032AC0
    stw 0, 0x94(27)
    .4byte 0x48000010 # b .L_80032ACC
L_80032AC0:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80032ACC
    li 4, 0x1
L_80032ACC:
    lwz 3, 0x98(27)
    cmplw 28, 3
    .4byte 0x4082000C # bne .L_80032AE0
    stw 0, 0x98(27)
    .4byte 0x48000010 # b .L_80032AEC
L_80032AE0:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80032AEC
    li 4, 0x1
L_80032AEC:
    lwz 3, 0x9c(27)
    cmplw 28, 3
    .4byte 0x4082000C # bne .L_80032B00
    stw 0, 0x9c(27)
    .4byte 0x48000010 # b .L_80032B0C
L_80032B00:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80032B0C
    li 4, 0x1
L_80032B0C:
    lwz 3, 0xa0(27)
    cmplw 28, 3
    .4byte 0x4082000C # bne .L_80032B20
    stw 0, 0xa0(27)
    .4byte 0x48000010 # b .L_80032B2C
L_80032B20:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80032B2C
    li 4, 0x1
L_80032B2C:
    lwz 3, 0xa4(27)
    cmplw 28, 3
    .4byte 0x4082000C # bne .L_80032B40
    stw 0, 0xa4(27)
    .4byte 0x48000010 # b .L_80032B4C
L_80032B40:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80032B4C
    li 4, 0x1
L_80032B4C:
    clrlwi. 0, 4, 24
    .4byte 0x40820034 # bne .L_80032B84
    li 0, 0x1
    lis 3, fn_80031E54@ha
    stb 0, 0x114(27)
    addi 4, 3, fn_80031E54@l
    mr 5, 27
    .4byte 0x806D87A8 # lwz r3, lbl_8053A368@sda21(r0)
    bl fn_80029558
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_80032B84
    li 0, 0x1
    .4byte 0x980D87B9 # stb r0, lbl_8053A379@sda21(r0)
    .4byte 0x48000018 # b .L_80032B98
L_80032B84:
    lbz 3, 0xae(27)
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    stb 0, 0x4(28)
L_80032B98:
    lmw 24, 0x30(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80032BAC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    li 30, 0x1
    .4byte 0x4800002C # b .L_80032BF4
L_80032BCC:
    lwz 0, 0x8(1)
    cmpwi 0, 0x5
    .4byte 0x4182001C # beq .L_80032BF0
    .4byte 0x4080001C # bge .L_80032BF4
    cmpwi 0, 0x4
    .4byte 0x40800008 # bge .L_80032BE8
    .4byte 0x48000010 # b .L_80032BF4
L_80032BE8:
    stb 30, 0xac(31)
    .4byte 0x48000008 # b .L_80032BF4
L_80032BF0:
    stb 30, 0xad(31)
L_80032BF4:
    addi 3, 31, 0x20
    addi 4, 1, 0x8
    li 5, 0x0
    bl OSReceiveMessage
    cmpwi 3, 0x0
    .4byte 0x4082FFC4 # bne .L_80032BCC
    lbz 0, 0xac(31)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_80032C8C
    li 3, 0x0
    .4byte 0x48000120 # b .L_80032D3C
    .4byte 0x4800006C # b .L_80032C8C
L_80032C24:
    lwz 3, 0x8(1)
    clrlwi 0, 3, 24
    cmpwi 0, 0x2
    .4byte 0x41820040 # beq .L_80032C70
    .4byte 0x40800014 # bge .L_80032C48
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80032C54
    .4byte 0x40800020 # bge .L_80032C60
    .4byte 0x48000048 # b .L_80032C8C
L_80032C48:
    cmpwi 0, 0x4
    .4byte 0x40800040 # bge .L_80032C8C
    .4byte 0x48000030 # b .L_80032C80
L_80032C54:
    mr 3, 31
    bl fn_80032D54
    .4byte 0x48000030 # b .L_80032C8C
L_80032C60:
    srwi 4, 3, 16
    mr 3, 31
    bl fn_80032F48
    .4byte 0x48000020 # b .L_80032C8C
L_80032C70:
    lbz 0, 0xae(31)
    ori 0, 0, 0x1
    stb 0, 0xae(31)
    .4byte 0x48000010 # b .L_80032C8C
L_80032C80:
    lbz 0, 0xae(31)
    rlwinm 0, 0, 0, 24, 30
    stb 0, 0xae(31)
L_80032C8C:
    mr 3, 31
    addi 4, 1, 0x8
    li 5, 0x0
    bl OSReceiveMessage
    cmpwi 3, 0x0
    .4byte 0x4082FF84 # bne .L_80032C24
    .4byte 0x880D87B9 # lbz r0, lbl_8053A379@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80032CBC
    lbz 0, 0xae(31)
    ori 0, 0, 0x8
    stb 0, 0xae(31)
L_80032CBC:
    .4byte 0x880D87B8 # lbz r0, lbl_8053A378@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80032CD4
    lbz 0, 0xae(31)
    ori 0, 0, 0x2
    stb 0, 0xae(31)
L_80032CD4:
    .4byte 0xC0028260 # lfs f0, lbl_8053B200@sda21(r0)
    mr 3, 31
    li 4, 0x0
    .4byte 0x4800004C # b .L_80032D2C
L_80032CE4:
    lwz 5, 0x90(3)
    cmplwi 5, 0x0
    .4byte 0x41820038 # beq .L_80032D24
    lfs 2, 0x174(31)
    lfs 1, 0x17c(3)
    lfs 3, 0x178(31)
    fmuls 1, 2, 1
    lfs 2, 0x194(3)
    lfs 4, 0x1ac(3)
    lfs 5, 0x1c4(3)
    stfs 1, 0x9c(5)
    stfs 3, 0xa0(5)
    stfs 0, 0xa4(5)
    stfs 2, 0xa8(5)
    stfs 4, 0xac(5)
    stfs 5, 0xb0(5)
L_80032D24:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_80032D2C:
    lhz 0, 0x15a(31)
    cmpw 4, 0
    .4byte 0x4180FFB0 # blt .L_80032CE4
    li 3, 0x0
L_80032D3C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80032D54:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 19, 0x1c(1)
    mr 21, 3
    lhz 0, 0x158(3)
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80032D9C
    .4byte 0x4080001C # bge .L_80032DA0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80032D94
    .4byte 0x48000010 # b .L_80032DA0
L_80032D94:
    li 23, 0x0
    .4byte 0x48000008 # b .L_80032DA0
L_80032D9C:
    li 23, 0x3
L_80032DA0:
    lis 4, lbl_804B21CC@ha
    lis 3, lbl_8045D1DC@ha
    .4byte 0xCBE28270 # lfd f31, lbl_8053B210@sda21(r0)
    mr 24, 21
    addi 29, 4, lbl_804B21CC@l
    addi 31, 3, lbl_8045D1DC@l
    li 22, 0x0
    lis 30, 0x4330
    .4byte 0x48000150 # b .L_80032F10
L_80032DC4:
    lhz 0, 0x158(21)
    lwz 4, 0x15c(21)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80032DF0
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    lis 3, 0x38e4
    subi 3, 3, 0x71c7
    slwi 0, 0, 4
    mulhwu 0, 3, 0
    srwi 0, 0, 1
    .4byte 0x4800000C # b .L_80032DF8
L_80032DF0:
    .4byte 0x800D87B0 # lwz r0, lbl_8053A370@sda21(r0)
    srwi 0, 0, 1
L_80032DF8:
    mullw 26, 4, 0
    .4byte 0x3B628278 # li r27, lbl_8053B218@sda21
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    mr 3, 29
    li 4, 0x10c
    bl fn_80028A8C
    mr 28, 3
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    cmplwi 28, 0x0
    .4byte 0x4182001C # beq .L_80032E40
    lis 4, fn_8003241C@ha
    mr 3, 28
    addi 4, 4, fn_8003241C@l
    mr 5, 21
    bl fn_8002AAF8
    mr 28, 3
L_80032E40:
    li 0, 0x7f7f
    mr 20, 21
    sth 0, 0x98(28)
    li 19, 0x0
L_80032E50:
    lhz 5, 0x1dc(20)
    mr 3, 28
    mr 4, 19
    bl fn_8002AE68
    addi 19, 19, 0x1
    addi 20, 20, 0x2
    cmplwi 19, 0x6
    .4byte 0x4180FFE4 # blt .L_80032E50
    bl fn_8002A1F0
    lwz 0, 0x164(21)
    mr 3, 28
    stw 30, 0x10(1)
    mr 5, 31
    li 4, 0x0
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fdivs 0, 0, 1
    stfs 0, 0xbc(28)
    bl fn_8002AE34
    stb 23, 0xe0(28)
    li 3, 0x3c
    li 0, -0x1
    li 6, 0x0
    stb 3, 0xe1(28)
    mr 3, 28
    stfs 30, 0xe4(28)
    stw 25, 0xe8(28)
    stw 25, 0xec(28)
    stw 0, 0xf0(28)
    stw 6, 0xf4(28)
    stw 26, 0xf8(28)
    stw 26, 0xfc(28)
    sth 6, 0x100(28)
    sth 6, 0x102(28)
    stw 27, 0x104(28)
    .4byte 0x808D87B0 # lwz r4, lbl_8053A370@sda21(r0)
    lwz 0, 0x160(21)
    lwz 5, 0x148(21)
    mullw 0, 4, 0
    mullw 0, 22, 0
    add 0, 5, 0
    stw 0, 0x108(28)
    stw 6, 0xdc(28)
    bl fn_8002ACD8
    stw 28, 0x90(24)
    addi 24, 24, 0x4
    addi 22, 22, 0x1
L_80032F10:
    lhz 0, 0x15a(21)
    cmpw 22, 0
    .4byte 0x4180FEAC # blt .L_80032DC4
    li 0, 0x0
    stw 0, 0xa8(21)
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 19, 0x1c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80032F48:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    mr 31, 28
    .4byte 0x48000020 # b .L_80032F94
L_80032F78:
    lwz 3, 0x90(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80032F8C
    mr 4, 29
    bl fn_8002AD9C
L_80032F8C:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_80032F94:
    lhz 0, 0x15a(28)
    cmpw 30, 0
    .4byte 0x4180FFDC # blt .L_80032F78
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80032FC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_80033008
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B28D8@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B28D8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80033008:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033018:
    li 0, 0x0
    sth 0, 0x0(3)
    sth 0, 0x2(3)
    sth 0, 0x4(3)
    sth 0, 0x6(3)
    sth 0, 0x8(3)
    sth 0, 0xa(3)
    sth 0, 0xc(3)
    sth 0, 0xe(3)
    sth 0, 0x10(3)
    sth 0, 0x12(3)
    sth 0, 0x14(3)
    sth 0, 0x16(3)
    sth 0, 0x18(3)
    sth 0, 0x1a(3)
    blr

fn_80033058:
    li 0, 0x0
    sth 0, 0x0(3)
    sth 0, 0x2(3)
    sth 0, 0x4(3)
    sth 0, 0x6(3)
    sth 0, 0x8(3)
    sth 0, 0xa(3)
    sth 0, 0xc(3)
    sth 0, 0xe(3)
    sth 0, 0x10(3)
    sth 0, 0x12(3)
    sth 0, 0x14(3)
    sth 0, 0x16(3)
    sth 0, 0x18(3)
    sth 0, 0x1a(3)
    blr

fn_80033098:
    cmpwi 4, 0xe
    .4byte 0x40800028 # bge .L_800330C4
    cmpwi 4, 0x2
    .4byte 0x41810014 # bgt .L_800330B8
    clrlwi 5, 5, 24
    slwi 0, 4, 1
    sthx 5, 3, 0
    blr
L_800330B8:
    slwi 0, 4, 1
    sthx 5, 3, 0
    blr
L_800330C4:
    subi 0, 4, 0x20
    cmplwi 0, 0x9
    bgtlr
    lis 4, jumptable_80491B70@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_80491B70@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    extrwi 4, 5, 8, 16
    clrlwi 0, 5, 24
    sth 4, 0x0(3)
    sth 0, 0x2(3)
    blr
    srwi 0, 5, 16
    sth 0, 0x8(3)
    sth 5, 0xa(3)
    blr
    lhz 4, 0x8(3)
    clrlslwi 0, 5, 24, 8
    clrlwi 4, 4, 24
    sth 4, 0x8(3)
    lhz 4, 0x8(3)
    or 0, 4, 0
    sth 0, 0x8(3)
    blr
    lhz 4, 0x8(3)
    clrlwi 0, 5, 24
    rlwinm 4, 4, 0, 16, 23
    sth 4, 0x8(3)
    lhz 4, 0x8(3)
    or 0, 4, 0
    sth 0, 0x8(3)
    blr
    lhz 4, 0xa(3)
    clrlslwi 0, 5, 24, 8
    clrlwi 4, 4, 24
    sth 4, 0xa(3)
    lhz 4, 0xa(3)
    or 0, 4, 0
    sth 0, 0xa(3)
    blr
    lhz 4, 0xa(3)
    clrlwi 0, 5, 24
    rlwinm 4, 4, 0, 16, 23
    sth 4, 0xa(3)
    lhz 4, 0xa(3)
    or 0, 4, 0
    sth 0, 0xa(3)
    blr
    srwi 0, 5, 16
    sth 0, 0xc(3)
    sth 5, 0xe(3)
    blr
    srwi 0, 5, 16
    sth 0, 0x10(3)
    sth 5, 0x12(3)
    blr
    srwi 0, 5, 16
    sth 0, 0x14(3)
    sth 5, 0x16(3)
    blr
    srwi 0, 5, 16
    sth 0, 0x18(3)
    sth 5, 0x1a(3)
    blr

fn_800331CC:
    cmpwi 4, 0xe
    .4byte 0x40800010 # bge .L_800331E0
    slwi 0, 4, 1
    lhzx 3, 3, 0
    blr
L_800331E0:
    subi 0, 4, 0x20
    li 5, 0x0
    cmplwi 0, 0x9
    .4byte 0x418100DC # bgt .L_800332C8
    lis 4, jumptable_80491B98@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_80491B98@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lhz 0, 0x2(3)
    lhz 3, 0x0(3)
    clrlwi 0, 0, 24
    mr 5, 0
    rlwimi 5, 3, 8, 16, 23
    .4byte 0x480000AC # b .L_800332C8
    lhz 5, 0x8(3)
    lhz 0, 0xa(3)
    slwi 5, 5, 16
    or 5, 5, 0
    .4byte 0x48000098 # b .L_800332C8
    lhz 0, 0x8(3)
    srawi 0, 0, 8
    clrlwi 0, 0, 24
    mr 5, 0
    .4byte 0x48000084 # b .L_800332C8
    lhz 0, 0x8(3)
    clrlwi 0, 0, 24
    mr 5, 0
    .4byte 0x48000074 # b .L_800332C8
    lhz 0, 0xa(3)
    srawi 0, 0, 8
    clrlwi 0, 0, 24
    mr 5, 0
    .4byte 0x48000060 # b .L_800332C8
    lhz 0, 0xa(3)
    clrlwi 0, 0, 24
    mr 5, 0
    .4byte 0x48000050 # b .L_800332C8
    lhz 5, 0xc(3)
    lhz 0, 0xe(3)
    slwi 5, 5, 16
    or 5, 5, 0
    .4byte 0x4800003C # b .L_800332C8
    lhz 5, 0x10(3)
    lhz 0, 0x12(3)
    slwi 5, 5, 16
    or 5, 5, 0
    .4byte 0x48000028 # b .L_800332C8
    lhz 5, 0x14(3)
    lhz 0, 0x16(3)
    slwi 5, 5, 16
    or 5, 5, 0
    .4byte 0x48000014 # b .L_800332C8
    lhz 5, 0x14(3)
    lhz 0, 0x16(3)
    slwi 5, 5, 16
    or 5, 5, 0
L_800332C8:
    mr 3, 5
    blr

fn_800332D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80035F4C
    .4byte 0x386D87C0 # li r3, lbl_8053A380@sda21
    li 0, 0x0
    stw 3, 0x3c(31)
    mr 3, 31
    stw 0, 0x40(31)
    stw 0, 0x44(31)
    stw 0, 0x48(31)
    sth 0, 0x4c(31)
    sth 0, 0x4e(31)
    stb 0, 0x50(31)
    stb 0, 0x51(31)
    stw 0, 0x54(31)
    stw 0, 0x58(31)
    bl fn_80035F4C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033338:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80035F4C
    .4byte 0x386D87C0 # li r3, lbl_8053A380@sda21
    li 0, 0x0
    stw 3, 0x3c(31)
    stw 0, 0x40(31)
    stw 0, 0x44(31)
    stw 0, 0x48(31)
    sth 0, 0x4c(31)
    sth 0, 0x4e(31)
    stb 0, 0x50(31)
    stw 0, 0x54(31)
    stw 0, 0x58(31)
    stb 0, 0x51(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033394:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 5
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80035FA0
    lwz 0, 0x0(30)
    add 0, 0, 31
    stw 0, 0x4(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800333D8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80033408
    li 3, 0x0
    .4byte 0x480000B4 # b .L_800334B8
L_80033408:
    li 4, 0x6
    bl fn_800334D0
    mr 3, 30
    bl fn_800335CC
    lbz 0, 0x51(30)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80033448
    mr 3, 31
    li 4, 0x0
    bl fn_800374C8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80033440
    li 3, 0x0
    .4byte 0x4800007C # b .L_800334B8
L_80033440:
    li 0, 0x0
    stb 0, 0x51(30)
L_80033448:
    lwz 3, 0x40(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8003345C
    subi 0, 3, 0x1
    stw 0, 0x40(30)
L_8003345C:
    mr 3, 30
    bl fn_8003353C
    .4byte 0x4800002C # b .L_80033490
L_80033468:
    lwz 3, 0x3c(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80033490
    li 3, -0x1
    .4byte 0x4800002C # b .L_800334B8
L_80033490:
    lwz 0, 0x40(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_800334A8
    lwz 0, 0x44(30)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_800334B4
L_800334A8:
    lbz 0, 0x51(30)
    cmplwi 0, 0x0
    .4byte 0x4182FFB8 # beq .L_80033468
L_800334B4:
    li 3, 0x0
L_800334B8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800334D0:
    li 0, 0x1
    lhz 5, 0x4e(3)
    slw 4, 0, 4
    and. 0, 5, 4
    beqlr
    lhz 0, 0x4c(3)
    or 0, 0, 4
    sth 0, 0x4c(3)
    blr

fn_800334F4:
    lhz 0, 0x4e(3)
    or 0, 0, 4
    sth 0, 0x4e(3)
    blr

fn_80033504:
    lhz 0, 0x4e(3)
    andc 0, 0, 4
    sth 0, 0x4e(3)
    blr

fn_80033514:
    lwz 0, 0x44(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80033528
    li 3, 0x0
    blr
L_80033528:
    stw 0, 0x4(3)
    li 0, 0x0
    stw 0, 0x44(3)
    li 3, 0x1
    blr

fn_8003353C:
    lwz 0, 0x44(3)
    cmplwi 0, 0x0
    bnelr
    lhz 4, 0x4e(3)
    li 5, 0x0
    lhz 0, 0x4c(3)
    and 4, 4, 0
    .4byte 0x4800002C # b .L_80033584
L_8003355C:
    clrlwi. 0, 4, 31
    .4byte 0x4182001C # beq .L_8003357C
    li 0, 0x1
    lhz 4, 0x4c(3)
    slw 0, 0, 5
    andc 0, 4, 0
    sth 0, 0x4c(3)
    .4byte 0x48000018 # b .L_80033590
L_8003357C:
    srwi 4, 4, 1
    addi 5, 5, 0x1
L_80033584:
    cmplwi 4, 0x0
    .4byte 0x4082FFD4 # bne .L_8003355C
    li 5, -0x1
L_80033590:
    cmpwi 5, 0x0
    bltlr
    mulli 4, 5, 0x3
    lwz 6, 0x48(3)
    lwz 5, 0x0(3)
    lwz 0, 0x4(3)
    add 6, 6, 4
    subi 4, 6, 0x1
    lwzx 4, 5, 4
    stw 0, 0x44(3)
    clrlwi 4, 4, 8
    lwz 0, 0x0(3)
    add 0, 0, 4
    stw 0, 0x4(3)
    blr

fn_800335CC:
    lwz 4, 0x54(3)
    cmplwi 4, 0x0
    beqlr
    subi 0, 4, 0x1
    stw 0, 0x54(3)
    lwz 0, 0x54(3)
    cmplwi 0, 0x0
    bnelr
    lhz 0, 0x4e(3)
    rlwinm. 0, 0, 0, 26, 26
    .4byte 0x41820010 # beq .L_80033604
    lhz 0, 0x4c(3)
    ori 0, 0, 0x20
    sth 0, 0x4c(3)
L_80033604:
    lbz 4, 0x50(3)
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_80033630
    subi 0, 4, 0x1
    stb 0, 0x50(3)
    lbz 0, 0x50(3)
    cmplwi 0, 0x0
    beqlr
    lwz 0, 0x58(3)
    stw 0, 0x54(3)
    blr
L_80033630:
    lwz 0, 0x58(3)
    stw 0, 0x54(3)
    blr

fn_8003363C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80493624@ha
    lis 4, lbl_804B28E8@ha
    stw 0, 0x14(1)
    addi 0, 3, lbl_80493624@l
    lis 3, fn_80033730@ha
    stw 31, 0xc(1)
    addi 31, 4, lbl_804B28E8@l
    addi 4, 3, fn_80033730@l
    .4byte 0x386D87C0 # li r3, lbl_8053A380@sda21
    .4byte 0x900D87C0 # stw r0, lbl_8053A380@sda21(r0)
    addi 5, 31, 0x0
    bl __register_global_object
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800336AC
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_800336AC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800336E4
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_800336E4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003371C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8003371C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033730:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_80033760
    lis 5, lbl_80493624@ha
    extsh. 0, 4
    addi 0, 5, lbl_80493624@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_80033760
    bl dtor_80084580
L_80033760:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033778:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    mr 5, 31
    stw 29, 0x14(1)
    mr 29, 4
    li 4, 0x3
    addi 3, 29, 0x80
    bl fn_80033098
    cmplwi 30, 0x40
    .4byte 0x40800018 # bge .L_800337C8
    mr 4, 30
    mr 5, 31
    addi 3, 29, 0x80
    bl fn_80033098
    .4byte 0x480001A4 # b .L_80033968
L_800337C8:
    subi 0, 30, 0x40
    cmplwi 0, 0x34
    .4byte 0x41810198 # bgt .L_80033968
    lis 3, jumptable_80493450@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_80493450@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    slwi 0, 30, 1
    add 3, 29, 0
    sth 31, -0x20(3)
    .4byte 0x48000170 # b .L_80033968
    mr 3, 29
    clrlwi 4, 31, 16
    bl fn_8003875C
    .4byte 0x48000160 # b .L_80033968
    stb 31, 0x22a(29)
    .4byte 0x48000158 # b .L_80033968
    stb 31, 0x230(29)
    .4byte 0x48000150 # b .L_80033968
    stb 31, 0x233(29)
    .4byte 0x48000148 # b .L_80033968
    stw 31, 0x220(29)
    .4byte 0x48000140 # b .L_80033968
    clrlwi 0, 31, 24
    sth 0, 0x22c(29)
    .4byte 0x48000134 # b .L_80033968
    clrlwi 0, 31, 24
    sth 0, 0x22e(29)
    .4byte 0x48000128 # b .L_80033968
    lis 0, 0x4330
    stw 31, 0xc(1)
    .4byte 0xC8428298 # lfd f2, lbl_8053B238@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0028280 # lfs f0, lbl_8053B220@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x218(29)
    .4byte 0x48000100 # b .L_80033968
    extrwi 0, 31, 8, 16
    stb 0, 0x232(29)
    stb 31, 0x231(29)
    .4byte 0x480000F0 # b .L_80033968
    stb 31, 0x231(29)
    .4byte 0x480000E8 # b .L_80033968
    stb 31, 0x232(29)
    .4byte 0x480000E0 # b .L_80033968
    sth 31, 0x224(29)
    .4byte 0x480000D8 # b .L_80033968
    lis 0, 0x4330
    stw 31, 0xc(1)
    .4byte 0xC8428298 # lfd f2, lbl_8053B238@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0028284 # lfs f0, lbl_8053B224@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x1e0(29)
    .4byte 0x480000B0 # b .L_80033968
    lis 0, 0x4330
    stw 31, 0xc(1)
    .4byte 0xC8428298 # lfd f2, lbl_8053B238@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0028288 # lfs f0, lbl_8053B228@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x1e0(29)
    .4byte 0x48000088 # b .L_80033968
    lis 0, 0x4330
    stw 31, 0xc(1)
    .4byte 0xC8428298 # lfd f2, lbl_8053B238@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC002828C # lfs f0, lbl_8053B22C@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    stfs 0, 0x1e8(29)
    .4byte 0x48000060 # b .L_80033968
    lis 0, 0x4330
    stw 31, 0xc(1)
    .4byte 0xC8428298 # lfd f2, lbl_8053B238@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0028290 # lfs f0, lbl_8053B230@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    stfs 0, 0x1e4(29)
    .4byte 0x48000038 # b .L_80033968
    lis 0, 0x4330
    stw 31, 0xc(1)
    .4byte 0xC8428298 # lfd f2, lbl_8053B238@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0028290 # lfs f0, lbl_8053B230@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    stfs 0, 0x1ec(29)
    .4byte 0x48000010 # b .L_80033968
    sth 31, 0x1f0(29)
    .4byte 0x48000008 # b .L_80033968
    sth 31, 0x1f2(29)
L_80033968:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80033984:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 5, 0x40
    mr 6, 4
    stw 0, 0x14(1)
    .4byte 0x40800014 # bge .L_800339AC
    mr 4, 5
    addi 3, 6, 0x80
    bl fn_800331CC
    .4byte 0x480001F4 # b .L_80033B9C
L_800339AC:
    subi 0, 5, 0x40
    li 3, 0x0
    cmplwi 0, 0x34
    .4byte 0x418101E4 # bgt .L_80033B9C
    lis 4, jumptable_80493524@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_80493524@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    slwi 0, 5, 1
    add 3, 6, 0
    lhz 3, -0x20(3)
    .4byte 0x480001BC # b .L_80033B9C
    li 0, 0x4
    mr 5, 6
    li 6, 0x1
    li 7, 0x0
    mtctr 0
L_800339F8:
    lwz 4, 0x130(5)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80033A18
    lwz 0, 0x240(4)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80033A18
    clrlwi 0, 6, 16
    or 3, 3, 0
L_80033A18:
    lwz 4, 0x134(5)
    clrlslwi 6, 6, 17, 1
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80033A38
    lwz 0, 0x240(4)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_80033A38
    or 3, 3, 6
L_80033A38:
    lwz 4, 0x138(5)
    clrlslwi 6, 6, 17, 1
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80033A58
    lwz 0, 0x240(4)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_80033A58
    or 3, 3, 6
L_80033A58:
    lwz 4, 0x13c(5)
    clrlslwi 6, 6, 17, 1
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80033A78
    lwz 0, 0x240(4)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_80033A78
    or 3, 3, 6
L_80033A78:
    clrlslwi 6, 6, 17, 1
    addi 5, 5, 0x10
    addi 7, 7, 0x3
    .4byte 0x4200FF74 # bdnz .L_800339F8
    .4byte 0x48000114 # b .L_80033B9C
    lwz 0, 0x8(6)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80033AA0
    li 0, 0x0
    .4byte 0x48000010 # b .L_80033AAC
L_80033AA0:
    slwi 0, 0, 1
    add 3, 6, 0
    lhz 0, 0x2a(3)
L_80033AAC:
    clrlwi 3, 0, 16
    .4byte 0x480000EC # b .L_80033B9C
    lhz 3, 0x228(6)
    .4byte 0x480000E4 # b .L_80033B9C
    lbz 3, 0x22a(6)
    extsb 3, 3
    .4byte 0x480000D8 # b .L_80033B9C
    lbz 3, 0x230(6)
    .4byte 0x480000D0 # b .L_80033B9C
    lbz 3, 0x233(6)
    .4byte 0x480000C8 # b .L_80033B9C
    lwz 3, 0x220(6)
    .4byte 0x480000C0 # b .L_80033B9C
    lhz 3, 0x22c(6)
    .4byte 0x480000B8 # b .L_80033B9C
    lhz 3, 0x22e(6)
    .4byte 0x480000B0 # b .L_80033B9C
    .4byte 0xC0228280 # lfs f1, lbl_8053B220@sda21(r0)
    lfs 0, 0x218(6)
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
    .4byte 0x4800009C # b .L_80033B9C
    lbz 3, 0x232(6)
    lbz 0, 0x231(6)
    or 3, 3, 0
    .4byte 0x4800008C # b .L_80033B9C
    lbz 3, 0x231(6)
    .4byte 0x48000084 # b .L_80033B9C
    lbz 3, 0x232(6)
    .4byte 0x4800007C # b .L_80033B9C
    lhz 3, 0x224(6)
    .4byte 0x48000074 # b .L_80033B9C
    .4byte 0xC0228284 # lfs f1, lbl_8053B224@sda21(r0)
    lfs 0, 0x1e0(6)
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
    .4byte 0x48000060 # b .L_80033B9C
    .4byte 0xC0228288 # lfs f1, lbl_8053B228@sda21(r0)
    lfs 0, 0x1e0(6)
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
    .4byte 0x4800004C # b .L_80033B9C
    .4byte 0xC02282A0 # lfs f1, lbl_8053B240@sda21(r0)
    lfs 0, 0x1e8(6)
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
    .4byte 0x48000038 # b .L_80033B9C
    .4byte 0xC02282A4 # lfs f1, lbl_8053B244@sda21(r0)
    lfs 0, 0x1e4(6)
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
    .4byte 0x48000024 # b .L_80033B9C
    .4byte 0xC02282A4 # lfs f1, lbl_8053B244@sda21(r0)
    lfs 0, 0x1ec(6)
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
    .4byte 0x48000010 # b .L_80033B9C
    lhz 3, 0x1f0(6)
    .4byte 0x48000008 # b .L_80033B9C
    lhz 3, 0x1f2(6)
L_80033B9C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033BAC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    mr 3, 29
    lwz 31, 0x4(5)
    lwz 4, 0x0(5)
    bl fn_80036CA8
    mr. 30, 3
    .4byte 0x4082000C # bne .L_80033BE8
    li 3, 0x0
    .4byte 0x4800001C # b .L_80033C00
L_80033BE8:
    lwz 4, 0x0(29)
    mr 5, 31
    bl fn_800367D8
    mr 3, 30
    bl fn_8003688C
    li 3, 0x0
L_80033C00:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80033C1C:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 4, 0x0(5)
    bl fn_80036BD4
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033C48:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 4, 0x0(5)
    bl fn_80035FF8
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033C74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    lwz 29, 0x0(5)
    li 5, 0x3
    bl fn_80033984
    cmpwi 29, 0x3
    clrlwi 4, 3, 16
    .4byte 0x41820054 # beq .L_80033CFC
    .4byte 0x4080001C # bge .L_80033CC8
    cmpwi 29, 0x1
    .4byte 0x4182002C # beq .L_80033CE0
    .4byte 0x40800034 # bge .L_80033CEC
    cmpwi 29, 0x0
    .4byte 0x40800018 # bge .L_80033CD8
    .4byte 0x48000084 # b .L_80033D48
L_80033CC8:
    cmpwi 29, 0x5
    .4byte 0x41820064 # beq .L_80033D30
    .4byte 0x40800078 # bge .L_80033D48
    .4byte 0x48000038 # b .L_80033D0C
L_80033CD8:
    li 0, 0x1
    .4byte 0x48000070 # b .L_80033D4C
L_80033CE0:
    cntlzw 0, 4
    srwi 0, 0, 5
    .4byte 0x48000064 # b .L_80033D4C
L_80033CEC:
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
    .4byte 0x48000054 # b .L_80033D4C
L_80033CFC:
    subfic 0, 4, 0x1
    cntlzw 0, 0
    srwi 0, 0, 5
    .4byte 0x48000044 # b .L_80033D4C
L_80033D0C:
    lis 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 3, 0, 16
    subf 0, 3, 4
    orc 3, 4, 3
    srwi 0, 0, 1
    subf 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000020 # b .L_80033D4C
L_80033D30:
    lis 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 0, 0, 16
    subf 0, 0, 4
    srwi 0, 0, 31
    .4byte 0x48000008 # b .L_80033D4C
L_80033D48:
    li 0, 0x0
L_80033D4C:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_80033D60
    lwz 4, 0x4(31)
    mr 3, 30
    bl fn_80035FF8
L_80033D60:
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80033D80:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    bl fn_800360E8
    clrlwi 4, 3, 24
    li 0, 0x0
    neg 3, 4
    or 3, 3, 4
    srawi 3, 3, 31
    andc 3, 0, 3
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033DBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    lwz 30, 0x0(5)
    li 5, 0x3
    bl fn_80033984
    cmpwi 30, 0x3
    clrlwi 4, 3, 16
    .4byte 0x41820054 # beq .L_80033E3C
    .4byte 0x4080001C # bge .L_80033E08
    cmpwi 30, 0x1
    .4byte 0x4182002C # beq .L_80033E20
    .4byte 0x40800034 # bge .L_80033E2C
    cmpwi 30, 0x0
    .4byte 0x40800018 # bge .L_80033E18
    .4byte 0x48000084 # b .L_80033E88
L_80033E08:
    cmpwi 30, 0x5
    .4byte 0x41820064 # beq .L_80033E70
    .4byte 0x40800078 # bge .L_80033E88
    .4byte 0x48000038 # b .L_80033E4C
L_80033E18:
    li 0, 0x1
    .4byte 0x48000070 # b .L_80033E8C
L_80033E20:
    cntlzw 0, 4
    srwi 0, 0, 5
    .4byte 0x48000064 # b .L_80033E8C
L_80033E2C:
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
    .4byte 0x48000054 # b .L_80033E8C
L_80033E3C:
    subfic 0, 4, 0x1
    cntlzw 0, 0
    srwi 0, 0, 5
    .4byte 0x48000044 # b .L_80033E8C
L_80033E4C:
    lis 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 3, 0, 16
    subf 0, 3, 4
    orc 3, 4, 3
    srwi 0, 0, 1
    subf 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000020 # b .L_80033E8C
L_80033E70:
    lis 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 0, 0, 16
    subf 0, 0, 4
    srwi 0, 0, 31
    .4byte 0x48000008 # b .L_80033E8C
L_80033E88:
    li 0, 0x0
L_80033E8C:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_80033EAC
    mr 3, 31
    bl fn_800360E8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80033EAC
    li 3, 0x0
    .4byte 0x48000008 # b .L_80033EB0
L_80033EAC:
    li 3, 0x0
L_80033EB0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80033EC8:
    lwz 6, 0x0(4)
    li 3, 0x0
    lwz 0, 0x0(5)
    add 0, 6, 0
    stw 0, 0x4(4)
    blr

fn_80033EE0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    lwz 29, 0x0(5)
    li 5, 0x3
    bl fn_80033984
    cmpwi 29, 0x3
    clrlwi 4, 3, 16
    .4byte 0x41820054 # beq .L_80033F68
    .4byte 0x4080001C # bge .L_80033F34
    cmpwi 29, 0x1
    .4byte 0x4182002C # beq .L_80033F4C
    .4byte 0x40800034 # bge .L_80033F58
    cmpwi 29, 0x0
    .4byte 0x40800018 # bge .L_80033F44
    .4byte 0x48000084 # b .L_80033FB4
L_80033F34:
    cmpwi 29, 0x5
    .4byte 0x41820064 # beq .L_80033F9C
    .4byte 0x40800078 # bge .L_80033FB4
    .4byte 0x48000038 # b .L_80033F78
L_80033F44:
    li 0, 0x1
    .4byte 0x48000070 # b .L_80033FB8
L_80033F4C:
    cntlzw 0, 4
    srwi 0, 0, 5
    .4byte 0x48000064 # b .L_80033FB8
L_80033F58:
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
    .4byte 0x48000054 # b .L_80033FB8
L_80033F68:
    subfic 0, 4, 0x1
    cntlzw 0, 0
    srwi 0, 0, 5
    .4byte 0x48000044 # b .L_80033FB8
L_80033F78:
    lis 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 3, 0, 16
    subf 0, 3, 4
    orc 3, 4, 3
    srwi 0, 0, 1
    subf 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000020 # b .L_80033FB8
L_80033F9C:
    lis 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 0, 0, 16
    subf 0, 0, 4
    srwi 0, 0, 31
    .4byte 0x48000008 # b .L_80033FB8
L_80033FB4:
    li 0, 0x0
L_80033FB8:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80033FD0
    lwz 3, 0x0(30)
    lwz 0, 0x4(31)
    add 0, 3, 0
    stw 0, 0x4(30)
L_80033FD0:
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80033FF0:
    lwz 8, 0x0(5)
    li 3, 0x0
    lwz 7, 0x0(4)
    slwi 0, 8, 1
    lwz 6, 0x4(5)
    add 8, 8, 0
    add 5, 8, 7
    subi 0, 5, 0x1
    lwzx 0, 6, 0
    clrlwi 0, 0, 8
    add 0, 7, 0
    stw 0, 0x4(4)
    blr

fn_80034024:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 6, 0x0(5)
    lwz 0, 0x0(4)
    slwi 4, 6, 1
    lwz 5, 0x4(5)
    add 6, 6, 4
    add 4, 6, 0
    subi 0, 4, 0x1
    lwzx 0, 5, 0
    clrlwi 4, 0, 8
    bl fn_80035FF8
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034070:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 4, 0x0(5)
    bl fn_80036038
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003409C:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    bl fn_8003607C
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800340C4:
    stwu 1, -0x10(1)
    mflr 0
    mr 8, 5
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 5, 0x4(5)
    lwz 12, 0x14(12)
    lwz 6, 0x8(8)
    lwz 7, 0xc(8)
    lwz 8, 0x0(8)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034108:
    stwu 1, -0x10(1)
    mflr 0
    mr 7, 5
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 6, 0x0(7)
    lwz 12, 0x10(12)
    lwz 5, 0x4(5)
    lwz 7, 0x8(7)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034148:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(5)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003417C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 30
    lwz 4, 0x0(5)
    bl fn_8003807C
    mr 0, 3
    lwz 5, 0x4(31)
    mr 3, 29
    mr 4, 30
    clrlwi 6, 0, 16
    bl fn_80033778
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800341E4:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 0, 0x4(5)
    lwz 4, 0x0(5)
    clrlwi 5, 0, 16
    bl fn_800380A0
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034218:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x12c(4)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80034240
    lwz 0, 0x4(5)
    lwz 4, 0x0(5)
    clrlwi 5, 0, 16
    bl fn_800380C4
L_80034240:
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034254:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x0(5)
    rlwinm 0, 3, 30, 26, 29
    clrlwi 6, 3, 24
    add 3, 4, 0
    lwz 3, 0x130(3)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8003428C
    lwz 0, 0x4(5)
    clrlwi 4, 6, 28
    clrlwi 5, 0, 16
    bl fn_800380C4
L_8003428C:
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800342A0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x12c(4)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_800342F0
    lwz 4, 0x0(31)
    bl fn_80038128
    mr 0, 3
    lwz 5, 0x4(31)
    mr 3, 29
    mr 4, 30
    clrlwi 6, 0, 16
    bl fn_80033778
L_800342F0:
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80034310:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 4, 0x0(5)
    rlwinm 0, 4, 30, 26, 29
    clrlwi 4, 4, 24
    add 3, 30, 0
    lwz 3, 0x130(3)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80034370
    clrlwi 4, 4, 28
    bl fn_80038128
    mr 0, 3
    lwz 5, 0x4(31)
    mr 3, 29
    mr 4, 30
    clrlwi 6, 0, 16
    bl fn_80033778
L_80034370:
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80034390:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    addi 3, 31, 0x5c
    lwz 4, 0x0(5)
    bl fn_80039A44
    mr 0, 3
    addi 3, 31, 0x80
    clrlwi 5, 0, 24
    li 4, 0x3
    bl fn_80033098
    lwz 0, 0x14(1)
    li 3, 0x0
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800343DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    addi 3, 31, 0x5c
    lwz 4, 0x0(5)
    bl fn_80039A64
    mr 0, 3
    addi 3, 31, 0x80
    clrlwi 5, 0, 24
    li 4, 0x3
    bl fn_80033098
    lwz 0, 0x14(1)
    li 3, 0x0
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034428:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    mr 3, 31
    bl fn_8003611C
    stw 3, 0x40(31)
    li 3, 0x0
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034460:
    lwz 0, 0x0(5)
    li 3, 0x0
    stw 0, 0x40(4)
    blr

fn_80034470:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x0(5)
    cmplwi 0, 0x100
    .4byte 0x40800010 # bge .L_80034494
    mr 3, 4
    clrlwi 4, 0, 24
    bl fn_80037060
L_80034494:
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800344A8:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 6, 0x0(4)
    lwz 0, 0x4(5)
    lwz 4, 0x0(5)
    add 5, 6, 0
    bl fn_80037F54
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800344E0:
    stwu 1, -0x10(1)
    mflr 0
    mr 8, 5
    mr 3, 4
    stw 0, 0x14(1)
    lwz 5, 0x0(5)
    lwz 0, 0x4(8)
    lwz 6, 0x8(8)
    extsh 4, 5
    lwz 7, 0xc(8)
    extsh 5, 0
    lwz 0, 0x10(8)
    extsh 6, 6
    extsh 7, 7
    clrlwi 8, 0, 16
    bl fn_80037F70
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034534:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 4, 0x0(5)
    lwz 5, 0x4(5)
    bl fn_80037050
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034564:
    lwz 0, 0x0(5)
    li 3, 0x0
    stw 0, 0x48(4)
    blr

fn_80034574:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 4, 0x0(5)
    bl fn_800334F4
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800345A0:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 4, 0x0(5)
    bl fn_80033504
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800345CC:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    li 0, 0x0
    stw 0, 0x44(4)
    bl fn_8003353C
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800345FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    mr 3, 31
    bl fn_80033514
    mr 3, 31
    bl fn_8003353C
    lwz 0, 0x14(1)
    li 3, 0x0
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034638:
    lwz 0, 0x0(5)
    li 3, 0x0
    lwz 5, 0x4(5)
    stb 0, 0x50(4)
    stw 5, 0x54(4)
    stw 5, 0x58(4)
    blr

fn_80034654:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, 0x1
    stw 0, 0x14(1)
    subi 0, 3, 0x1
    stw 31, 0xc(1)
    mr 31, 4
    .4byte 0x818D87C8 # lwz r12, lbl_8053A388@sda21(r0)
    cmplwi 12, 0x0
    .4byte 0x4182001C # beq .L_80034694
    lwz 0, 0x0(5)
    mr 3, 31
    clrlwi 4, 0, 16
    mtctr 12
    bctrl
    mr 0, 3
L_80034694:
    addi 3, 31, 0x80
    clrlwi 5, 0, 16
    li 4, 0x3
    bl fn_80033098
    lwz 0, 0x14(1)
    li 3, 0x0
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800346BC:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 0, 0x0(5)
    clrlwi 4, 0, 16
    bl fn_8003872C
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800346EC:
    li 3, -0x1
    blr

fn_800346F4:
    li 3, 0x0
    blr

fn_800346FC:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 0, 0x0(5)
    lwz 5, 0x0(4)
    add 4, 5, 0
    bl fn_80037FC8
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034730:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    addi 4, 1, 0x8
    lwz 0, 0x0(5)
    sth 0, 0x8(1)
    lwz 0, 0x4(5)
    sth 0, 0xa(1)
    lwz 0, 0x8(5)
    sth 0, 0xc(1)
    lwz 0, 0xc(5)
    sth 0, 0xe(1)
    bl fn_80038028
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003477C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x0(5)
    cmplwi 0, 0x80
    .4byte 0x4080001C # bge .L_800347AC
    lis 3, lbl_8045C6B8@ha
    slwi 5, 0, 3
    addi 0, 3, lbl_8045C6B8@l
    mr 3, 4
    add 4, 0, 5
    bl fn_80038028
L_800347AC:
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800347C0:
    lwz 0, 0x0(5)
    li 3, 0x0
    extrwi 5, 0, 8, 16
    clrlwi 0, 0, 24
    sth 5, 0x22c(4)
    sth 0, 0x22e(4)
    blr

fn_800347DC:
    lwz 0, 0x0(5)
    li 3, 0x0
    clrlwi 0, 0, 24
    sth 0, 0x22c(4)
    blr

fn_800347F0:
    lwz 0, 0x0(5)
    li 3, 0x0
    clrlwi 0, 0, 24
    sth 0, 0x22e(4)
    blr

fn_80034804:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    .4byte 0xC84282A8 # lfd f2, lbl_8053B248@sda21(r0)
    stw 0, 0x14(1)
    lis 0, 0x4330
    .4byte 0xC0028280 # lfs f0, lbl_8053B220@sda21(r0)
    lwz 6, 0x4(5)
    lwz 4, 0x0(5)
    extsh 5, 6
    stw 0, 0x8(1)
    xoris 0, 5, 0x8000
    stw 0, 0xc(1)
    li 5, 0x0
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 1, 1, 0
    bl fn_80037C64
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034860:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC84282A8 # lfd f2, lbl_8053B248@sda21(r0)
    mr 3, 4
    stw 0, 0x14(1)
    lis 0, 0x4330
    .4byte 0xC0028280 # lfs f0, lbl_8053B220@sda21(r0)
    lwz 6, 0x4(5)
    stw 0, 0x8(1)
    extsh 0, 6
    lwz 4, 0x0(5)
    xoris 0, 0, 0x8000
    lwz 5, 0x8(5)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 1, 1, 0
    bl fn_80037C64
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800348BC:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    lwz 6, 0x4(5)
    rlwinm. 0, 6, 0, 24, 24
    slwi 4, 6, 8
    extsh 4, 4
    .4byte 0x40820014 # bne .L_800348F0
    slwi 0, 6, 1
    extsh 0, 0
    or 0, 4, 0
    extsh 4, 0
L_800348F0:
    extsh 4, 4
    lis 0, 0x4330
    xoris 6, 4, 0x8000
    lwz 4, 0x0(5)
    stw 6, 0xc(1)
    li 5, 0x0
    .4byte 0xC84282A8 # lfd f2, lbl_8053B248@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0028280 # lfs f0, lbl_8053B220@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 1, 1, 0
    bl fn_80037C64
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034938:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 6, 0x4(5)
    rlwinm. 0, 6, 0, 24, 24
    slwi 3, 6, 8
    extsh 3, 3
    .4byte 0x40820014 # bne .L_80034968
    slwi 0, 6, 1
    extsh 0, 0
    or 0, 3, 0
    extsh 3, 0
L_80034968:
    extsh 3, 3
    lis 0, 0x4330
    xoris 6, 3, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC84282A8 # lfd f2, lbl_8053B248@sda21(r0)
    mr 3, 4
    stw 6, 0xc(1)
    .4byte 0xC0028280 # lfs f0, lbl_8053B220@sda21(r0)
    lfd 1, 0x8(1)
    lwz 4, 0x0(5)
    fsubs 1, 1, 2
    lwz 5, 0x8(5)
    fdivs 1, 1, 0
    bl fn_80037C64
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800349B4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lwz 0, 0x0(5)
    lwz 31, 0x4(5)
    cmplwi 0, 0xa
    lwz 30, 0x8(5)
    .4byte 0x41810104 # bgt .L_80034AEC
    lis 5, jumptable_804935F8@ha
    slwi 0, 0, 2
    addi 5, 5, jumptable_804935F8@l
    lwzx 0, 5, 0
    mtctr 0
    bctr
    mr 5, 31
    bl fn_80033984
    add 30, 30, 3
    .4byte 0x480000E4 # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    subf 30, 30, 3
    .4byte 0x480000D4 # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    subf 30, 30, 3
    li 31, 0x3
    .4byte 0x480000C0 # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    mullw 30, 30, 3
    li 31, 0x21
    .4byte 0x480000AC # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    and 30, 30, 3
    .4byte 0x4800009C # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    or 30, 30, 3
    .4byte 0x4800008C # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    xor 30, 30, 3
    .4byte 0x4800007C # b .L_80034AF4
    .4byte 0x880D87CC # lbz r0, lbl_8053A38C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_80034A9C
    .4byte 0x386D87D0 # li r3, lbl_8053A390@sda21
    li 4, 0x0
    bl fn_80093338
    li 0, 0x1
    .4byte 0x980D87CC # stb r0, lbl_8053A38C@sda21(r0)
L_80034A9C:
    lis 3, 0x19
    .4byte 0x808D87D0 # lwz r4, lbl_8053A390@sda21(r0)
    addi 0, 3, 0x660d
    mullw 3, 4, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    srwi 3, 0, 9
    .4byte 0x900D87D0 # stw r0, lbl_8053A390@sda21(r0)
    divwu 0, 3, 30
    mullw 0, 0, 30
    subf 30, 0, 3
    .4byte 0x4800002C # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    slw 30, 3, 30
    .4byte 0x4800001C # b .L_80034AF4
    mr 5, 31
    bl fn_80033984
    srw 30, 3, 30
    .4byte 0x4800000C # b .L_80034AF4
L_80034AEC:
    li 3, 0x0
    .4byte 0x4800001C # b .L_80034B0C
L_80034AF4:
    mr 3, 28
    mr 4, 29
    mr 5, 31
    mr 6, 30
    bl fn_80033778
    li 3, 0x0
L_80034B0C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80034B2C:
    stwu 1, -0x10(1)
    mflr 0
    mr 6, 5
    stw 0, 0x14(1)
    lwz 5, 0x0(5)
    lwz 6, 0x4(6)
    bl fn_80033778
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034B5C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x0(5)
    lwz 31, 0x4(5)
    cmpwi 0, 0xb
    .4byte 0x41820008 # beq .L_80034B90
    .4byte 0x48000014 # b .L_80034BA0
L_80034B90:
    mr 5, 31
    bl fn_80033984
    neg 6, 3
    .4byte 0x4800000C # b .L_80034BA8
L_80034BA0:
    li 3, 0x0
    .4byte 0x48000018 # b .L_80034BBC
L_80034BA8:
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_80033778
    li 3, 0x0
L_80034BBC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80034BD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x0(5)
    lwz 7, 0x4(5)
    cmpwi 0, 0xe
    lwz 6, 0x8(5)
    lwz 8, 0xc(5)
    .4byte 0x4182004C # beq .L_80034C44
    .4byte 0x40800014 # bge .L_80034C10
    cmpwi 0, 0xc
    .4byte 0x4182001C # beq .L_80034C20
    .4byte 0x40800028 # bge .L_80034C30
    .4byte 0x4800007C # b .L_80034C88
L_80034C10:
    cmpwi 0, 0x10
    .4byte 0x41820064 # beq .L_80034C78
    .4byte 0x40800070 # bge .L_80034C88
    .4byte 0x48000048 # b .L_80034C64
L_80034C20:
    lwz 5, 0x0(4)
    add 0, 6, 8
    lbzx 6, 5, 0
    .4byte 0x48000064 # b .L_80034C90
L_80034C30:
    lwz 5, 0x0(4)
    slwi 0, 8, 1
    add 0, 0, 5
    lhzx 6, 6, 0
    .4byte 0x48000050 # b .L_80034C90
L_80034C44:
    slwi 5, 8, 1
    lwz 0, 0x0(4)
    add 8, 8, 5
    add 5, 8, 0
    subi 0, 5, 0x1
    lwzx 0, 6, 0
    clrlwi 6, 0, 8
    .4byte 0x48000030 # b .L_80034C90
L_80034C64:
    lwz 5, 0x0(4)
    slwi 0, 8, 2
    add 0, 0, 5
    lwzx 6, 6, 0
    .4byte 0x4800001C # b .L_80034C90
L_80034C78:
    lwz 0, 0x0(4)
    add 0, 8, 0
    lwzx 6, 6, 0
    .4byte 0x4800000C # b .L_80034C90
L_80034C88:
    li 3, 0x0
    .4byte 0x48000010 # b .L_80034C9C
L_80034C90:
    mr 5, 7
    bl fn_80033778
    li 3, 0x0
L_80034C9C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80034CAC:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_8045D1F8@ha
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    addi 29, 5, lbl_8045D1F8@l
    mr 27, 3
    mr 28, 4
    addi 3, 29, 0x0
    crclr 6
    bl fn_80028F54
    lwz 5, 0x4(28)
    addi 3, 29, 0x38
    lwz 4, 0x0(28)
    subf 6, 4, 5
    crclr 6
    bl fn_80028F54
    .4byte 0x386282B0 # li r3, lbl_8053B250@sda21
    crclr 6
    bl fn_80028F54
    mr 3, 27
    mr 4, 28
    li 5, 0x2
    bl fn_80033984
    mr 31, 3
    mr 3, 27
    mr 4, 28
    li 5, 0x1
    bl fn_80033984
    mr 30, 3
    mr 3, 27
    mr 4, 28
    li 5, 0x0
    bl fn_80033984
    mr 4, 3
    mr 5, 30
    mr 6, 31
    addi 3, 29, 0x5c
    crclr 6
    bl fn_80028F54
    mr 3, 27
    mr 4, 28
    li 5, 0x3
    bl fn_80033984
    mr 30, 3
    mr 3, 27
    mr 4, 28
    li 5, 0x5
    bl fn_80033984
    mr 31, 3
    mr 3, 27
    mr 4, 28
    li 5, 0x4
    bl fn_80033984
    mr 4, 3
    mr 5, 31
    mr 6, 30
    addi 3, 29, 0x88
    crclr 6
    bl fn_80028F54
    .4byte 0x386282B0 # li r3, lbl_8053B250@sda21
    crclr 6
    bl fn_80028F54
    lhz 4, 0x60(28)
    addi 3, 29, 0xb4
    lhz 5, 0x62(28)
    lhz 6, 0x64(28)
    lhz 7, 0x66(28)
    crclr 6
    bl fn_80028F54
    lhz 4, 0x68(28)
    addi 3, 29, 0xdc
    lhz 5, 0x6a(28)
    lhz 6, 0x6c(28)
    lhz 7, 0x6e(28)
    crclr 6
    bl fn_80028F54
    lhz 4, 0x70(28)
    addi 3, 29, 0x104
    lhz 5, 0x72(28)
    lhz 6, 0x74(28)
    lhz 7, 0x76(28)
    crclr 6
    bl fn_80028F54
    lhz 4, 0x78(28)
    addi 3, 29, 0x12c
    lhz 5, 0x7a(28)
    lhz 6, 0x7c(28)
    lhz 7, 0x7e(28)
    crclr 6
    bl fn_80028F54
    .4byte 0x386282B0 # li r3, lbl_8053B250@sda21
    crclr 6
    bl fn_80028F54
    lmw 27, 0xc(1)
    li 3, 0x0
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80034E3C:
    stwu 1, -0xc0(1)
    mflr 0
    li 5, 0x0
    stw 0, 0xc4(1)
    stmw 26, 0xa8(1)
    mr 29, 4
    addi 31, 1, 0x8
    mr 28, 3
    addi 4, 1, 0x1c
    li 30, 0x0
    mr 3, 31
    .4byte 0x48000130 # b .L_80034F98
L_80034E6C:
    lwz 6, 0x4(29)
    addi 0, 6, 0x1
    stw 0, 0x4(29)
    lbz 0, 0x0(6)
    stbx 0, 4, 5
    lbzx 6, 4, 5
    extsb. 0, 6
    .4byte 0x41820118 # beq .L_80034FA0
    extsb 0, 6
    cmpwi 0, 0x5c
    .4byte 0x40820040 # bne .L_80034ED4
    lwz 6, 0x4(29)
    addi 0, 6, 0x1
    stw 0, 0x4(29)
    lbz 0, 0x0(6)
    stbx 0, 4, 5
    lbzx 6, 4, 5
    extsb. 0, 6
    .4byte 0x418200EC # beq .L_80034FA0
    extsb 0, 6
    cmpwi 0, 0x6e
    .4byte 0x41820008 # beq .L_80034EC8
    .4byte 0x480000D0 # b .L_80034F94
L_80034EC8:
    li 0, 0xd
    stbx 0, 4, 5
    .4byte 0x480000C4 # b .L_80034F94
L_80034ED4:
    cmpwi 0, 0x25
    .4byte 0x408200BC # bne .L_80034F94
    lwz 6, 0x4(29)
    addi 7, 1, 0x1c
    addi 5, 5, 0x1
    addi 0, 6, 0x1
    stw 0, 0x4(29)
    lbz 0, 0x0(6)
    stbx 0, 7, 5
    lbzx 6, 7, 5
    extsb. 0, 6
    .4byte 0x418200A0 # beq .L_80034FA0
    extsb 0, 6
    cmpwi 0, 0x72
    .4byte 0x4182005C # beq .L_80034F68
    .4byte 0x4080001C # bge .L_80034F2C
    cmpwi 0, 0x64
    .4byte 0x4182002C # beq .L_80034F44
    .4byte 0x40800070 # bge .L_80034F8C
    cmpwi 0, 0x52
    .4byte 0x41820058 # beq .L_80034F7C
    .4byte 0x48000064 # b .L_80034F8C
L_80034F2C:
    cmpwi 0, 0x78
    .4byte 0x41820020 # beq .L_80034F50
    .4byte 0x40800058 # bge .L_80034F8C
    cmpwi 0, 0x74
    .4byte 0x40800050 # bge .L_80034F8C
    .4byte 0x4800001C # b .L_80034F5C
L_80034F44:
    li 0, 0x0
    stb 0, 0x0(3)
    .4byte 0x48000040 # b .L_80034F8C
L_80034F50:
    li 0, 0x1
    stb 0, 0x0(3)
    .4byte 0x48000034 # b .L_80034F8C
L_80034F5C:
    li 0, 0x2
    stb 0, 0x0(3)
    .4byte 0x48000028 # b .L_80034F8C
L_80034F68:
    li 6, 0x3
    li 0, 0x64
    stb 6, 0x0(3)
    stbx 0, 7, 5
    .4byte 0x48000014 # b .L_80034F8C
L_80034F7C:
    li 6, 0x4
    li 0, 0x78
    stb 6, 0x0(3)
    stbx 0, 7, 5
L_80034F8C:
    addi 3, 3, 0x1
    addi 30, 30, 0x1
L_80034F94:
    addi 5, 5, 0x1
L_80034F98:
    cmplwi 5, 0x80
    .4byte 0x4180FED0 # blt .L_80034E6C
L_80034FA0:
    addi 27, 1, 0xc
    li 26, 0x0
    .4byte 0x4800006C # b .L_80035014
L_80034FAC:
    lwz 4, 0x4(29)
    lbz 0, 0x0(31)
    addi 3, 4, 0x1
    stw 3, 0x4(29)
    cmpwi 0, 0x2
    lbz 3, 0x0(4)
    stw 3, 0x0(27)
    .4byte 0x41820014 # beq .L_80034FDC
    .4byte 0x4180003C # blt .L_80035008
    cmpwi 0, 0x5
    .4byte 0x40800034 # bge .L_80035008
    .4byte 0x48000018 # b .L_80034FF0
L_80034FDC:
    lwz 3, 0x0(29)
    lwz 0, 0x0(27)
    add 0, 3, 0
    stw 0, 0x0(27)
    .4byte 0x4800001C # b .L_80035008
L_80034FF0:
    lwz 0, 0x0(27)
    mr 3, 28
    mr 4, 29
    clrlwi 5, 0, 24
    bl fn_80033984
    stw 3, 0x0(27)
L_80035008:
    addi 27, 27, 0x4
    addi 31, 31, 0x1
    addi 26, 26, 0x1
L_80035014:
    cmplw 26, 30
    .4byte 0x4180FF94 # blt .L_80034FAC
    lwz 4, 0xc(1)
    addi 3, 1, 0x1c
    lwz 5, 0x10(1)
    lwz 6, 0x14(1)
    lwz 7, 0x18(1)
    crclr 6
    bl fn_80028F54
    lmw 26, 0xa8(1)
    li 3, 0x0
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_80035050:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    extrwi. 0, 8, 1, 25
    stw 31, 0x1c(1)
    mr 31, 7
    li 7, 0x0
    stw 30, 0x18(1)
    mr 30, 4
    stb 8, 0x8(1)
    .4byte 0x41820008 # beq .L_80035080
    ori 7, 7, 0x2
L_80035080:
    lbz 0, 0x8(1)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820008 # beq .L_80035090
    ori 7, 7, 0x1
L_80035090:
    cmplwi 31, 0x0
    .4byte 0x40820008 # bne .L_8003509C
    ori 7, 7, 0x4
L_8003509C:
    lis 0, 0x4330
    stw 31, 0x14(1)
    .4byte 0xC8228298 # lfd f1, lbl_8053B238@sda21(r0)
    mr 3, 30
    stw 0, 0x10(1)
    mr 4, 5
    mr 5, 6
    mr 6, 7
    lfd 0, 0x10(1)
    fsubs 1, 0, 1
    bl fn_80037214
    cmplwi 31, 0x0
    .4byte 0x4182000C # beq .L_800350D8
    stw 31, 0x40(30)
    .4byte 0x4800000C # b .L_800350E0
L_800350D8:
    li 0, 0x1
    stb 0, 0x51(30)
L_800350E0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800350F8:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    mr 4, 5
    stw 0, 0x14(1)
    mr 5, 6
    mr 6, 7
    bl fn_8003709C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80035128:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 4
    stw 0, 0x14(1)
    mr 0, 5
    li 5, 0x0
    mr 4, 0
    bl fn_8003744C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80035158:
    stwu 1, -0x10(1)
    mflr 0
    mr 12, 5
    mr 5, 7
    stw 0, 0x14(1)
    bl __ptmf_scall
    nop
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80035184:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stmw 26, 0x78(1)
    mr 31, 4
    mr 30, 3
    lwz 5, 0x4(4)
    addi 0, 5, 0x1
    stw 0, 0x4(4)
    lbz 28, 0x0(5)
    rlwinm. 0, 28, 0, 24, 24
    .4byte 0x40820080 # bne .L_80035230
    lwz 5, 0x4(31)
    addi 0, 5, 0x1
    stw 0, 0x4(31)
    lwz 6, 0x4(31)
    lbz 26, 0x0(5)
    addi 0, 6, 0x1
    stw 0, 0x4(31)
    clrlwi. 5, 26, 29
    lbz 27, 0x0(6)
    .4byte 0x40820038 # bne .L_80035210
    mr 3, 31
    bl fn_8003611C
    lwz 12, 0x0(30)
    mr 7, 3
    mr 3, 30
    mr 4, 31
    lwz 12, 0x14(12)
    mr 5, 28
    mr 6, 27
    mr 8, 26
    mtctr 12
    bctrl
    .4byte 0x4800001C # b .L_80035228
L_80035210:
    lwz 12, 0x0(3)
    mr 6, 28
    mr 7, 27
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_80035228:
    li 3, 0x0
    .4byte 0x4800037C # b .L_800355A8
L_80035230:
    rlwinm 0, 28, 0, 24, 27
    cmpwi 0, 0x90
    .4byte 0x41820034 # beq .L_8003526C
    .4byte 0x408001FC # bge .L_80035438
    cmpwi 0, 0x80
    .4byte 0x41820008 # beq .L_8003524C
    .4byte 0x480001F0 # b .L_80035438
L_8003524C:
    clrlwi. 5, 28, 29
    .4byte 0x41820014 # beq .L_80035264
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
L_80035264:
    li 3, 0x0
    .4byte 0x48000340 # b .L_800355A8
L_8003526C:
    lwz 4, 0x4(31)
    clrlwi 3, 28, 29
    addic. 6, 3, 0x1
    li 5, 0x0
    addi 0, 4, 0x1
    li 3, 0x3
    stw 0, 0x4(31)
    lbz 4, 0x0(4)
    mtctr 6
    .4byte 0x40810020 # ble .L_800352B0
L_80035294:
    rlwinm. 0, 4, 0, 24, 24
    .4byte 0x4182000C # beq .L_800352A4
    or 0, 5, 3
    clrlwi 5, 0, 16
L_800352A4:
    clrlslwi 4, 4, 25, 1
    clrlslwi 3, 3, 18, 2
    .4byte 0x4200FFE8 # bdnz .L_80035294
L_800352B0:
    lwz 3, 0x4(31)
    addi 0, 3, 0x1
    stw 0, 0x4(31)
    lbz 3, 0x0(3)
    cmplwi 3, 0xb0
    .4byte 0x4182001C # beq .L_800352E0
    subi 0, 3, 0xa0
    lis 3, lbl_80491E54@ha
    slwi 4, 0, 4
    addi 0, 3, lbl_80491E54@l
    add 29, 0, 4
    .4byte 0x48000024 # b .L_80035300
L_800352E0:
    lwz 4, 0x4(31)
    lis 3, lbl_80492460@ha
    addi 0, 3, lbl_80492460@l
    addi 3, 4, 0x1
    stw 3, 0x4(31)
    lbz 3, 0x0(4)
    clrlslwi 3, 3, 24, 4
    add 29, 0, 3
L_80035300:
    lhz 28, 0xe(29)
    addi 26, 1, 0x38
    li 27, 0x0
    or 28, 28, 5
    .4byte 0x480000AC # b .L_800353BC
L_80035314:
    clrlwi 0, 28, 30
    li 3, 0x0
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_8003536C
    .4byte 0x40800014 # bge .L_80035338
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80035344
    .4byte 0x40800028 # bge .L_80035358
    .4byte 0x48000078 # b .L_800353AC
L_80035338:
    cmpwi 0, 0x4
    .4byte 0x40800070 # bge .L_800353AC
    .4byte 0x48000050 # b .L_80035390
L_80035344:
    lwz 3, 0x4(31)
    addi 0, 3, 0x1
    stw 0, 0x4(31)
    lbz 3, 0x0(3)
    .4byte 0x48000058 # b .L_800353AC
L_80035358:
    lwz 3, 0x4(31)
    addi 0, 3, 0x2
    stw 0, 0x4(31)
    lhz 3, 0x0(3)
    .4byte 0x48000044 # b .L_800353AC
L_8003536C:
    lwz 3, 0x4(31)
    subi 0, 3, 0x1
    stw 0, 0x4(31)
    lwz 3, 0x4(31)
    addi 0, 3, 0x4
    stw 0, 0x4(31)
    lwz 0, 0x0(3)
    clrlwi 3, 0, 8
    .4byte 0x48000020 # b .L_800353AC
L_80035390:
    lwz 5, 0x4(31)
    mr 3, 30
    mr 4, 31
    addi 0, 5, 0x1
    stw 0, 0x4(31)
    lbz 5, 0x0(5)
    bl fn_80033984
L_800353AC:
    stw 3, 0x0(26)
    extrwi 28, 28, 14, 16
    addi 26, 26, 0x4
    addi 27, 27, 0x1
L_800353BC:
    lhz 0, 0xc(29)
    cmpw 27, 0
    .4byte 0x4180FF50 # blt .L_80035314
    lwz 4, 0x0(29)
    addi 3, 1, 0x8
    lwz 0, 0x4(29)
    stw 4, 0x8(1)
    stw 0, 0xc(1)
    lwz 0, 0x8(29)
    stw 0, 0x10(1)
    bl __ptmf_test
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_800353F8
    li 3, 0x0
    .4byte 0x480001B4 # b .L_800355A8
L_800353F8:
    lwz 7, 0x8(1)
    mr 3, 30
    lwz 6, 0xc(1)
    mr 4, 31
    lwz 0, 0x10(1)
    addi 5, 1, 0x14
    stw 7, 0x14(1)
    addi 7, 1, 0x38
    stw 6, 0x18(1)
    stw 0, 0x1c(1)
    lwz 12, 0x0(30)
    lhz 6, 0xc(29)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    .4byte 0x48000174 # b .L_800355A8
L_80035438:
    cmplwi 28, 0xb0
    .4byte 0x4182001C # beq .L_80035458
    subi 0, 28, 0xa0
    lis 3, lbl_80491E54@ha
    slwi 4, 0, 4
    addi 0, 3, lbl_80491E54@l
    add 27, 0, 4
    .4byte 0x48000024 # b .L_80035478
L_80035458:
    lwz 4, 0x4(31)
    lis 3, lbl_80492460@ha
    addi 0, 3, lbl_80492460@l
    addi 3, 4, 0x1
    stw 3, 0x4(31)
    lbz 3, 0x0(4)
    clrlslwi 3, 3, 24, 4
    add 27, 0, 3
L_80035478:
    lhz 28, 0xe(27)
    addi 26, 1, 0x58
    li 29, 0x0
    .4byte 0x480000AC # b .L_80035530
L_80035488:
    clrlwi 0, 28, 30
    li 3, 0x0
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_800354E0
    .4byte 0x40800014 # bge .L_800354AC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_800354B8
    .4byte 0x40800028 # bge .L_800354CC
    .4byte 0x48000078 # b .L_80035520
L_800354AC:
    cmpwi 0, 0x4
    .4byte 0x40800070 # bge .L_80035520
    .4byte 0x48000050 # b .L_80035504
L_800354B8:
    lwz 3, 0x4(31)
    addi 0, 3, 0x1
    stw 0, 0x4(31)
    lbz 3, 0x0(3)
    .4byte 0x48000058 # b .L_80035520
L_800354CC:
    lwz 3, 0x4(31)
    addi 0, 3, 0x2
    stw 0, 0x4(31)
    lhz 3, 0x0(3)
    .4byte 0x48000044 # b .L_80035520
L_800354E0:
    lwz 3, 0x4(31)
    subi 0, 3, 0x1
    stw 0, 0x4(31)
    lwz 3, 0x4(31)
    addi 0, 3, 0x4
    stw 0, 0x4(31)
    lwz 0, 0x0(3)
    clrlwi 3, 0, 8
    .4byte 0x48000020 # b .L_80035520
L_80035504:
    lwz 5, 0x4(31)
    mr 3, 30
    mr 4, 31
    addi 0, 5, 0x1
    stw 0, 0x4(31)
    lbz 5, 0x0(5)
    bl fn_80033984
L_80035520:
    stw 3, 0x0(26)
    extrwi 28, 28, 14, 16
    addi 26, 26, 0x4
    addi 29, 29, 0x1
L_80035530:
    lhz 0, 0xc(27)
    cmpw 29, 0
    .4byte 0x4180FF50 # blt .L_80035488
    lwz 4, 0x0(27)
    addi 3, 1, 0x20
    lwz 0, 0x4(27)
    stw 4, 0x20(1)
    stw 0, 0x24(1)
    lwz 0, 0x8(27)
    stw 0, 0x28(1)
    bl __ptmf_test
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8003556C
    li 3, 0x0
    .4byte 0x48000040 # b .L_800355A8
L_8003556C:
    lwz 7, 0x20(1)
    mr 3, 30
    lwz 6, 0x24(1)
    mr 4, 31
    lwz 0, 0x28(1)
    addi 5, 1, 0x2c
    stw 7, 0x2c(1)
    addi 7, 1, 0x58
    stw 6, 0x30(1)
    stw 0, 0x34(1)
    lwz 12, 0x0(30)
    lhz 6, 0xc(27)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
L_800355A8:
    lmw 26, 0x78(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_800355BC:
    stwu 1, -0xf0(1)
    mflr 0
    lis 3, lbl_8045DC98@ha
    lis 5, lbl_80491BC0@ha
    stw 0, 0xf4(1)
    addi 4, 3, lbl_8045DC98@l
    lis 6, lbl_804B2918@ha
    addi 3, 5, lbl_80491BC0@l
    stmw 14, 0xa8(1)
    addi 0, 6, lbl_804B2918@l
    addi 18, 3, 0x294
    stw 0, 0x14(1)
    lwz 15, 0x0(4)
    lwz 16, 0x4(4)
    lwz 17, 0x8(4)
    stw 15, 0x8(1)
    stw 16, 0xc(1)
    stw 17, 0x10(1)
    stw 15, 0x294(3)
    stw 16, 0x298(3)
    stw 17, 0x29c(3)
    stw 15, 0x10(18)
    stw 16, 0x14(18)
    stw 17, 0x18(18)
    stw 15, 0x20(18)
    stw 16, 0x24(18)
    stw 17, 0x28(18)
    stw 15, 0x30(18)
    stw 16, 0x34(18)
    stw 17, 0x38(18)
    stw 15, 0x40(18)
    stw 16, 0x44(18)
    stw 17, 0x48(18)
    stw 15, 0x50(18)
    stw 16, 0x54(18)
    stw 17, 0x58(18)
    stw 15, 0x60(18)
    stw 16, 0x64(18)
    stw 17, 0x68(18)
    stw 15, 0x70(18)
    stw 16, 0x74(18)
    stw 17, 0x78(18)
    stw 15, 0x80(18)
    stw 16, 0x84(18)
    stw 17, 0x88(18)
    stw 15, 0x90(18)
    stw 16, 0x94(18)
    stw 17, 0x98(18)
    stw 15, 0xa0(18)
    stw 16, 0xa4(18)
    stw 17, 0xa8(18)
    stw 15, 0xb0(18)
    stw 16, 0xb4(18)
    stw 17, 0xb8(18)
    stw 15, 0xc0(18)
    stw 16, 0xc4(18)
    stw 17, 0xc8(18)
    lwz 19, 0x0(3)
    lwz 20, 0x4(3)
    lwz 21, 0x8(3)
    lwz 22, 0xc(3)
    lwz 23, 0x10(3)
    lwz 24, 0x14(3)
    lwz 25, 0x18(3)
    lwz 26, 0x1c(3)
    lwz 27, 0x20(3)
    lwz 28, 0x24(3)
    lwz 29, 0x28(3)
    lwz 30, 0x2c(3)
    lwz 31, 0x30(3)
    lwz 12, 0x34(3)
    lwz 11, 0x38(3)
    lwz 10, 0x3c(3)
    lwz 9, 0x40(3)
    lwz 8, 0x44(3)
    lwz 7, 0x48(3)
    lwz 6, 0x4c(3)
    lwz 5, 0x50(3)
    lwz 4, 0x54(3)
    lwz 0, 0x58(3)
    lwz 14, 0x5c(3)
    stw 15, 0xd0(18)
    stw 16, 0xd4(18)
    stw 17, 0xd8(18)
    stw 15, 0xe0(18)
    stw 16, 0xe4(18)
    stw 17, 0xe8(18)
    stw 15, 0xf0(18)
    stw 16, 0xf4(18)
    stw 17, 0xf8(18)
    stw 15, 0x100(18)
    stw 16, 0x104(18)
    stw 17, 0x108(18)
    stw 19, 0x110(18)
    stw 20, 0x114(18)
    stw 21, 0x118(18)
    stw 22, 0x120(18)
    stw 23, 0x124(18)
    stw 24, 0x128(18)
    stw 25, 0x130(18)
    stw 26, 0x134(18)
    stw 27, 0x138(18)
    stw 28, 0x140(18)
    stw 29, 0x144(18)
    stw 30, 0x148(18)
    stw 15, 0x150(18)
    stw 16, 0x154(18)
    stw 17, 0x158(18)
    stw 15, 0x160(18)
    stw 16, 0x164(18)
    stw 17, 0x168(18)
    stw 15, 0x170(18)
    stw 16, 0x174(18)
    stw 17, 0x178(18)
    stw 31, 0x180(18)
    stw 12, 0x184(18)
    stw 11, 0x188(18)
    stw 10, 0x190(18)
    stw 9, 0x194(18)
    stw 8, 0x198(18)
    stw 7, 0x1a0(18)
    stw 6, 0x1a4(18)
    stw 5, 0x1a8(18)
    stw 4, 0x1b0(18)
    stw 0, 0x1b4(18)
    stw 14, 0x1b8(18)
    lwz 30, 0xbc(3)
    lwz 0, 0xb4(3)
    stw 30, 0x90(1)
    lwz 30, 0xc0(3)
    stw 0, 0x280(18)
    lwz 0, 0x90(1)
    stw 30, 0x18(1)
    lwz 30, 0xc4(3)
    stw 0, 0x288(18)
    lwz 0, 0x18(1)
    stw 30, 0x1c(1)
    lwz 30, 0xc8(3)
    stw 0, 0x290(18)
    lwz 0, 0x1c(1)
    stw 30, 0x20(1)
    lwz 30, 0xcc(3)
    stw 0, 0x294(18)
    lwz 0, 0x20(1)
    stw 30, 0x24(1)
    lwz 30, 0xd0(3)
    stw 0, 0x298(18)
    lwz 0, 0x24(1)
    stw 30, 0x28(1)
    lwz 30, 0xd4(3)
    stw 0, 0x2a0(18)
    lwz 0, 0x28(1)
    lwz 29, 0x60(3)
    lwz 28, 0x64(3)
    lwz 27, 0x68(3)
    lwz 26, 0x6c(3)
    lwz 25, 0x70(3)
    lwz 24, 0x74(3)
    lwz 23, 0x78(3)
    lwz 22, 0x7c(3)
    lwz 21, 0x80(3)
    lwz 20, 0x84(3)
    lwz 19, 0x88(3)
    lwz 14, 0x8c(3)
    lwz 12, 0x90(3)
    lwz 11, 0x94(3)
    lwz 10, 0x98(3)
    lwz 9, 0x9c(3)
    lwz 8, 0xa0(3)
    lwz 7, 0xa4(3)
    lwz 6, 0xa8(3)
    lwz 5, 0xac(3)
    lwz 4, 0xb0(3)
    lwz 31, 0xb8(3)
    stw 0, 0x2a4(18)
    mr 0, 30
    stw 30, 0x2c(1)
    stw 15, 0x1c0(18)
    stw 16, 0x1c4(18)
    stw 17, 0x1c8(18)
    stw 15, 0x1d0(18)
    stw 16, 0x1d4(18)
    stw 17, 0x1d8(18)
    stw 15, 0x1e0(18)
    stw 16, 0x1e4(18)
    stw 17, 0x1e8(18)
    stw 15, 0x1f0(18)
    stw 16, 0x1f4(18)
    stw 17, 0x1f8(18)
    stw 15, 0x200(18)
    stw 16, 0x204(18)
    stw 17, 0x208(18)
    stw 29, 0x210(18)
    stw 28, 0x214(18)
    stw 27, 0x218(18)
    stw 26, 0x220(18)
    stw 25, 0x224(18)
    stw 24, 0x228(18)
    stw 23, 0x230(18)
    stw 22, 0x234(18)
    stw 21, 0x238(18)
    stw 20, 0x240(18)
    stw 19, 0x244(18)
    stw 14, 0x248(18)
    stw 12, 0x250(18)
    stw 11, 0x254(18)
    stw 10, 0x258(18)
    stw 9, 0x260(18)
    stw 8, 0x264(18)
    stw 7, 0x268(18)
    stw 6, 0x270(18)
    stw 5, 0x274(18)
    stw 4, 0x278(18)
    stw 31, 0x284(18)
    stw 0, 0x2a8(18)
    lwz 30, 0x134(3)
    lwz 0, 0x12c(3)
    stw 30, 0x94(1)
    lwz 30, 0x138(3)
    stw 0, 0x350(18)
    lwz 0, 0x94(1)
    stw 30, 0x30(1)
    lwz 30, 0x13c(3)
    stw 0, 0x358(18)
    lwz 0, 0x30(1)
    stw 30, 0x34(1)
    lwz 30, 0x140(3)
    stw 0, 0x360(18)
    lwz 0, 0x34(1)
    stw 30, 0x38(1)
    lwz 30, 0x144(3)
    stw 0, 0x364(18)
    lwz 0, 0x38(1)
    stw 30, 0x3c(1)
    lwz 30, 0x148(3)
    stw 0, 0x368(18)
    lwz 0, 0x3c(1)
    stw 30, 0x40(1)
    lwz 30, 0x14c(3)
    stw 0, 0x370(18)
    lwz 0, 0x40(1)
    stw 30, 0x44(1)
    lwz 30, 0x150(3)
    stw 0, 0x374(18)
    lwz 0, 0x44(1)
    stw 30, 0x48(1)
    lwz 30, 0x154(3)
    stw 0, 0x378(18)
    lwz 0, 0x48(1)
    stw 30, 0x4c(1)
    lwz 30, 0x158(3)
    stw 0, 0x380(18)
    lwz 0, 0x4c(1)
    stw 30, 0x50(1)
    lwz 30, 0x15c(3)
    stw 0, 0x384(18)
    lwz 0, 0x50(1)
    stw 30, 0x54(1)
    lwz 30, 0x160(3)
    stw 0, 0x388(18)
    lwz 0, 0x54(1)
    stw 30, 0x58(1)
    lwz 30, 0x164(3)
    stw 0, 0x390(18)
    lwz 0, 0x58(1)
    lwz 29, 0xd8(3)
    lwz 28, 0xdc(3)
    lwz 27, 0xe0(3)
    lwz 26, 0xe4(3)
    lwz 25, 0xe8(3)
    lwz 24, 0xec(3)
    lwz 23, 0xf0(3)
    lwz 22, 0xf4(3)
    lwz 21, 0xf8(3)
    lwz 20, 0xfc(3)
    lwz 19, 0x100(3)
    lwz 14, 0x104(3)
    lwz 12, 0x108(3)
    lwz 11, 0x10c(3)
    lwz 10, 0x110(3)
    lwz 9, 0x114(3)
    lwz 8, 0x118(3)
    lwz 7, 0x11c(3)
    lwz 6, 0x120(3)
    lwz 5, 0x124(3)
    lwz 4, 0x128(3)
    lwz 31, 0x130(3)
    stw 0, 0x394(18)
    mr 0, 30
    stw 30, 0x5c(1)
    stw 29, 0x2b0(18)
    stw 28, 0x2b4(18)
    stw 27, 0x2b8(18)
    stw 26, 0x2c0(18)
    stw 25, 0x2c4(18)
    stw 24, 0x2c8(18)
    stw 15, 0x2d0(18)
    stw 16, 0x2d4(18)
    stw 17, 0x2d8(18)
    stw 15, 0x2e0(18)
    stw 16, 0x2e4(18)
    stw 17, 0x2e8(18)
    stw 15, 0x2f0(18)
    stw 16, 0x2f4(18)
    stw 17, 0x2f8(18)
    stw 23, 0x300(18)
    stw 22, 0x304(18)
    stw 21, 0x308(18)
    stw 20, 0x310(18)
    stw 19, 0x314(18)
    stw 14, 0x318(18)
    stw 12, 0x320(18)
    stw 11, 0x324(18)
    stw 10, 0x328(18)
    stw 9, 0x330(18)
    stw 8, 0x334(18)
    stw 7, 0x338(18)
    stw 6, 0x340(18)
    stw 5, 0x344(18)
    stw 4, 0x348(18)
    stw 31, 0x354(18)
    stw 0, 0x398(18)
    lwz 30, 0x168(3)
    lwz 29, 0x16c(3)
    lwz 28, 0x170(3)
    lwz 27, 0x174(3)
    lwz 26, 0x178(3)
    lwz 25, 0x17c(3)
    lwz 24, 0x180(3)
    lwz 23, 0x184(3)
    lwz 22, 0x188(3)
    lwz 21, 0x18c(3)
    lwz 20, 0x190(3)
    lwz 19, 0x194(3)
    lwz 14, 0x198(3)
    lwz 12, 0x19c(3)
    lwz 11, 0x1a0(3)
    lwz 10, 0x1a4(3)
    lwz 9, 0x1a8(3)
    lwz 8, 0x1ac(3)
    lwz 7, 0x1b0(3)
    lwz 6, 0x1b4(3)
    lwz 5, 0x1b8(3)
    lwz 4, 0x1bc(3)
    lwz 0, 0x1c0(3)
    lwz 31, 0x1c4(3)
    stw 30, 0x3a0(18)
    stw 29, 0x3a4(18)
    stw 28, 0x3a8(18)
    stw 27, 0x3b0(18)
    stw 26, 0x3b4(18)
    stw 25, 0x3b8(18)
    stw 24, 0x3c0(18)
    stw 23, 0x3c4(18)
    stw 22, 0x3c8(18)
    stw 15, 0x3d0(18)
    stw 16, 0x3d4(18)
    stw 17, 0x3d8(18)
    stw 15, 0x3e0(18)
    stw 16, 0x3e4(18)
    stw 17, 0x3e8(18)
    stw 15, 0x3f0(18)
    stw 16, 0x3f4(18)
    stw 17, 0x3f8(18)
    stw 21, 0x400(18)
    stw 20, 0x404(18)
    stw 19, 0x408(18)
    stw 14, 0x410(18)
    stw 12, 0x414(18)
    stw 11, 0x418(18)
    stw 10, 0x420(18)
    stw 9, 0x424(18)
    stw 8, 0x428(18)
    stw 7, 0x430(18)
    stw 6, 0x434(18)
    stw 5, 0x438(18)
    stw 15, 0x440(18)
    stw 16, 0x444(18)
    stw 17, 0x448(18)
    stw 15, 0x450(18)
    stw 16, 0x454(18)
    stw 17, 0x458(18)
    stw 15, 0x460(18)
    stw 16, 0x464(18)
    stw 17, 0x468(18)
    stw 15, 0x470(18)
    stw 16, 0x474(18)
    stw 17, 0x478(18)
    stw 4, 0x480(18)
    stw 0, 0x484(18)
    stw 31, 0x488(18)
    lwz 30, 0x224(3)
    lwz 0, 0x21c(3)
    stw 30, 0x98(1)
    lwz 30, 0x228(3)
    stw 0, 0x530(18)
    lwz 0, 0x98(1)
    stw 30, 0x60(1)
    lwz 30, 0x22c(3)
    stw 0, 0x538(18)
    lwz 0, 0x60(1)
    stw 30, 0x64(1)
    lwz 30, 0x230(3)
    stw 0, 0x540(18)
    lwz 0, 0x64(1)
    stw 30, 0x68(1)
    lwz 30, 0x234(3)
    stw 0, 0x544(18)
    lwz 0, 0x68(1)
    stw 30, 0x6c(1)
    lwz 30, 0x238(3)
    stw 0, 0x548(18)
    lwz 0, 0x6c(1)
    stw 30, 0x70(1)
    lwz 30, 0x23c(3)
    stw 0, 0x550(18)
    lwz 0, 0x70(1)
    stw 30, 0x74(1)
    lwz 30, 0x240(3)
    stw 0, 0x554(18)
    lwz 0, 0x74(1)
    stw 30, 0x78(1)
    lwz 30, 0x244(3)
    stw 0, 0x558(18)
    lwz 0, 0x78(1)
    stw 30, 0x7c(1)
    lwz 30, 0x248(3)
    stw 0, 0x560(18)
    lwz 0, 0x7c(1)
    stw 30, 0x80(1)
    lwz 30, 0x24c(3)
    stw 0, 0x564(18)
    lwz 0, 0x80(1)
    stw 30, 0x84(1)
    lwz 30, 0x250(3)
    stw 0, 0x568(18)
    lwz 0, 0x84(1)
    stw 30, 0x88(1)
    lwz 30, 0x254(3)
    stw 0, 0x570(18)
    lwz 0, 0x88(1)
    lwz 29, 0x1c8(3)
    lwz 28, 0x1cc(3)
    lwz 27, 0x1d0(3)
    lwz 26, 0x1d4(3)
    lwz 25, 0x1d8(3)
    lwz 24, 0x1dc(3)
    lwz 23, 0x1e0(3)
    lwz 22, 0x1e4(3)
    lwz 21, 0x1e8(3)
    lwz 20, 0x1ec(3)
    lwz 19, 0x1f0(3)
    lwz 14, 0x1f4(3)
    lwz 12, 0x1f8(3)
    lwz 11, 0x1fc(3)
    lwz 10, 0x200(3)
    lwz 9, 0x204(3)
    lwz 8, 0x208(3)
    lwz 7, 0x20c(3)
    lwz 6, 0x210(3)
    lwz 5, 0x214(3)
    lwz 4, 0x218(3)
    lwz 31, 0x220(3)
    stw 0, 0x574(18)
    mr 0, 30
    stw 30, 0x8c(1)
    stw 29, 0x490(18)
    stw 28, 0x494(18)
    stw 27, 0x498(18)
    stw 26, 0x4a0(18)
    stw 25, 0x4a4(18)
    stw 24, 0x4a8(18)
    stw 23, 0x4b0(18)
    stw 22, 0x4b4(18)
    stw 21, 0x4b8(18)
    stw 20, 0x4c0(18)
    stw 19, 0x4c4(18)
    stw 14, 0x4c8(18)
    stw 12, 0x4d0(18)
    stw 11, 0x4d4(18)
    stw 10, 0x4d8(18)
    stw 15, 0x4e0(18)
    stw 16, 0x4e4(18)
    stw 17, 0x4e8(18)
    stw 15, 0x4f0(18)
    stw 16, 0x4f4(18)
    stw 17, 0x4f8(18)
    stw 9, 0x500(18)
    stw 8, 0x504(18)
    stw 7, 0x508(18)
    stw 6, 0x510(18)
    stw 5, 0x514(18)
    stw 4, 0x518(18)
    stw 15, 0x520(18)
    stw 16, 0x524(18)
    stw 17, 0x528(18)
    stw 31, 0x534(18)
    stw 0, 0x578(18)
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    addi 6, 3, 0x8a0
    lwz 26, 0x258(3)
    lwz 25, 0x25c(3)
    extsb. 0, 0
    lwz 24, 0x260(3)
    lwz 23, 0x264(3)
    lwz 22, 0x268(3)
    lwz 21, 0x26c(3)
    lwz 20, 0x270(3)
    lwz 19, 0x274(3)
    lwz 14, 0x278(3)
    lwz 12, 0x27c(3)
    lwz 11, 0x280(3)
    lwz 10, 0x284(3)
    lwz 9, 0x288(3)
    lwz 8, 0x28c(3)
    lwz 7, 0x290(3)
    lwz 5, 0x894(3)
    lwz 4, 0x898(3)
    lwz 0, 0x89c(3)
    stw 26, 0x580(18)
    stw 25, 0x584(18)
    stw 24, 0x588(18)
    stw 23, 0x590(18)
    stw 22, 0x594(18)
    stw 21, 0x598(18)
    stw 15, 0x5a0(18)
    stw 16, 0x5a4(18)
    stw 17, 0x5a8(18)
    stw 15, 0x5b0(18)
    stw 16, 0x5b4(18)
    stw 17, 0x5b8(18)
    stw 15, 0x5c0(18)
    stw 16, 0x5c4(18)
    stw 17, 0x5c8(18)
    stw 20, 0x5d0(18)
    stw 19, 0x5d4(18)
    stw 14, 0x5d8(18)
    stw 12, 0x5e0(18)
    stw 11, 0x5e4(18)
    stw 10, 0x5e8(18)
    stw 9, 0x5f0(18)
    stw 8, 0x5f4(18)
    stw 7, 0x5f8(18)
    stw 15, 0x8a0(3)
    stw 16, 0x8a4(3)
    stw 17, 0x8a8(3)
    stw 5, 0x10(6)
    stw 4, 0x14(6)
    stw 0, 0x18(6)
    stw 15, 0x20(6)
    stw 16, 0x24(6)
    stw 17, 0x28(6)
    stw 15, 0x30(6)
    stw 16, 0x34(6)
    stw 17, 0x38(6)
    stw 15, 0x40(6)
    stw 16, 0x44(6)
    stw 17, 0x48(6)
    stw 15, 0x50(6)
    stw 16, 0x54(6)
    stw 17, 0x58(6)
    stw 15, 0x60(6)
    stw 16, 0x64(6)
    stw 17, 0x68(6)
    .4byte 0x40820034 # bne .L_80035EC0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lwz 4, 0x14(1)
    lis 3, lbl_804B21AC@ha
    lis 6, fn_80021D0C@ha
    addi 5, 4, 0x0
    addi 3, 3, lbl_804B21AC@l
    addi 4, 6, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80035EC0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_80035EFC
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lwz 4, 0x14(1)
    lis 3, lbl_804B21BC@ha
    lis 6, fn_80021CB8@ha
    addi 5, 4, 0xc
    addi 3, 3, lbl_804B21BC@l
    addi 4, 6, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80035EFC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_80035F38
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lwz 4, 0x14(1)
    lis 3, lbl_804B21CC@ha
    lis 6, fn_80021C64@ha
    addi 5, 4, 0x18
    addi 3, 3, lbl_804B21CC@l
    addi 4, 6, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80035F38:
    lmw 14, 0xa8(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_80035F4C:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    sth 0, 0x2c(3)
    stw 0, 0x10(3)
    sth 0, 0x2e(3)
    stw 0, 0x14(3)
    sth 0, 0x30(3)
    stw 0, 0x18(3)
    sth 0, 0x32(3)
    stw 0, 0x1c(3)
    sth 0, 0x34(3)
    stw 0, 0x20(3)
    sth 0, 0x36(3)
    stw 0, 0x24(3)
    sth 0, 0x38(3)
    stw 0, 0x28(3)
    sth 0, 0x3a(3)
    blr

fn_80035FA0:
    stw 4, 0x0(3)
    li 0, 0x0
    lwz 4, 0x0(3)
    stw 4, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    sth 0, 0x2c(3)
    stw 0, 0x10(3)
    sth 0, 0x2e(3)
    stw 0, 0x14(3)
    sth 0, 0x30(3)
    stw 0, 0x18(3)
    sth 0, 0x32(3)
    stw 0, 0x1c(3)
    sth 0, 0x34(3)
    stw 0, 0x20(3)
    sth 0, 0x36(3)
    stw 0, 0x24(3)
    sth 0, 0x38(3)
    stw 0, 0x28(3)
    sth 0, 0x3a(3)
    blr

fn_80035FF8:
    lwz 7, 0x8(3)
    cmplwi 7, 0x8
    .4byte 0x4180000C # blt .L_8003600C
    li 3, 0x0
    blr
L_8003600C:
    lwz 6, 0x4(3)
    addi 5, 7, 0x1
    slwi 0, 7, 2
    stw 5, 0x8(3)
    add 5, 3, 0
    stw 6, 0xc(5)
    lwz 0, 0x0(3)
    add 0, 0, 4
    stw 0, 0x4(3)
    li 3, 0x1
    blr

fn_80036038:
    lwz 0, 0x8(3)
    cmplwi 0, 0x8
    .4byte 0x4180000C # blt .L_8003604C
    li 3, 0x0
    blr
L_8003604C:
    slwi 0, 0, 2
    lwz 6, 0x4(3)
    add 5, 3, 0
    stw 6, 0xc(5)
    lwz 6, 0x8(3)
    addi 5, 6, 0x1
    slwi 0, 6, 1
    stw 5, 0x8(3)
    add 5, 3, 0
    li 3, 0x1
    sth 4, 0x2c(5)
    blr

fn_8003607C:
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80036090
    li 3, 0x0
    blr
L_80036090:
    slwi 0, 0, 1
    add 4, 3, 0
    lhz 5, 0x2a(4)
    cmplwi 5, 0x0
    .4byte 0x4182000C # beq .L_800360AC
    subi 0, 5, 0x1
    clrlwi 5, 0, 16
L_800360AC:
    clrlwi. 0, 5, 16
    .4byte 0x40820018 # bne .L_800360C8
    lwz 4, 0x8(3)
    subi 0, 4, 0x1
    stw 0, 0x8(3)
    li 3, 0x1
    blr
L_800360C8:
    sth 5, 0x2a(4)
    lwz 0, 0x8(3)
    slwi 0, 0, 2
    add 4, 3, 0
    lwz 0, 0x8(4)
    stw 0, 0x4(3)
    li 3, 0x1
    blr

fn_800360E8:
    lwz 4, 0x8(3)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_800360FC
    li 3, 0x0
    blr
L_800360FC:
    subi 4, 4, 0x1
    slwi 0, 4, 2
    stw 4, 0x8(3)
    add 4, 3, 0
    lwz 0, 0xc(4)
    stw 0, 0x4(3)
    li 3, 0x1
    blr

fn_8003611C:
    lwz 4, 0x4(3)
    addi 0, 4, 0x1
    stw 0, 0x4(3)
    lbz 4, 0x0(4)
    rlwinm. 0, 4, 0, 24, 24
    .4byte 0x4082000C # bne .L_8003613C
    mr 3, 4
    blr
L_8003613C:
    clrlwi 5, 4, 25
    li 6, 0x0
L_80036144:
    cmpwi 6, 0x2
    .4byte 0x4081000C # ble .L_80036154
    li 3, 0x0
    blr
L_80036154:
    lwz 4, 0x4(3)
    slwi 5, 5, 7
    addi 0, 4, 0x1
    stw 0, 0x4(3)
    lbz 4, 0x0(4)
    rlwinm. 0, 4, 0, 24, 24
    clrlwi 4, 4, 25
    or 5, 5, 4
    .4byte 0x4182000C # beq .L_80036180
    addi 6, 6, 0x1
    .4byte 0x4BFFFFC8 # b .L_80036144
L_80036180:
    mr 3, 5
    blr

fn_80036188:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_800332D0
    addi 3, 31, 0x80
    bl fn_80033018
    .4byte 0xC00282B8 # lfs f0, lbl_8053B258@sda21(r0)
    lis 3, fn_80039560@ha
    addi 4, 3, fn_80039560@l
    li 0, 0x0
    stfs 0, 0x9c(31)
    addi 3, 31, 0x9c
    li 5, 0x0
    li 6, 0xc
    stfs 0, 0xa0(31)
    li 7, 0x6
    stw 0, 0xa4(31)
    stfs 0, 0xa8(31)
    stfs 0, 0xac(31)
    stw 0, 0xb0(31)
    stfs 0, 0xb4(31)
    stfs 0, 0xb8(31)
    stw 0, 0xbc(31)
    stfs 0, 0xc0(31)
    stfs 0, 0xc4(31)
    stw 0, 0xc8(31)
    stfs 0, 0xcc(31)
    stfs 0, 0xd0(31)
    stw 0, 0xd4(31)
    stfs 0, 0xd8(31)
    stfs 0, 0xdc(31)
    stw 0, 0xe0(31)
    bl __construct_array
    mr 4, 31
    addi 3, 31, 0x180
    bl fn_800392F4
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x1d0(31)
    addi 0, 31, 0x180
    mr 3, 31
    stw 4, 0x240(31)
    stw 4, 0x248(31)
    stw 4, 0x24c(31)
    stw 0, 0x170(31)
    stw 4, 0x174(31)
    stw 4, 0x178(31)
    stw 4, 0x17c(31)
    bl fn_80036420
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003626C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr. 26, 3
    mr 27, 4
    .4byte 0x41820074 # beq .L_800362F8
    lis 3, lbl_804B21AC@ha
    addi 29, 26, 0x4
    addi 31, 3, lbl_804B21AC@l
    li 28, 0x1
L_80036298:
    lwz 30, 0x170(29)
    bl OSDisableInterrupts
    stw 3, 0xc(1)
    mr 3, 31
    mr 4, 30
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFD0 # blt .L_80036298
    extsh. 0, 27
    .4byte 0x40810028 # ble .L_800362F8
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21BC@l
    li 5, 0x250
    mr 4, 26
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_800362F8:
    mr 3, 26
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80036310:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x1
    stmw 27, 0x1c(1)
    mr 31, 3
    mr 27, 4
    li 28, 0x1
    addi 30, 31, 0x4
    stw 0, 0x1d0(3)
    .4byte 0x48000070 # b .L_800363A8
L_8003633C:
    lwz 0, 0x170(30)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80036394
    bl OSDisableInterrupts
    lis 4, lbl_804B21AC@ha
    stw 3, 0xc(1)
    addi 3, 4, lbl_804B21AC@l
    li 4, 0x50
    bl fn_80028A8C
    mr 29, 3
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_80036384
    mr 3, 29
    mr 4, 31
    bl fn_800392F4
    mr 29, 3
L_80036384:
    stw 29, 0x170(30)
    lwz 0, 0x170(30)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_8003640C
L_80036394:
    lwz 3, 0x1d0(31)
    addi 30, 30, 0x4
    addi 28, 28, 0x1
    addi 0, 3, 0x1
    stw 0, 0x1d0(31)
L_800363A8:
    cmplw 28, 27
    .4byte 0x4180FF90 # blt .L_8003633C
    lwz 27, 0x1d0(31)
    lis 3, lbl_804B21AC@ha
    addi 29, 3, lbl_804B21AC@l
    li 30, 0x0
    slwi 0, 27, 2
    add 31, 31, 0
    .4byte 0x4800003C # b .L_80036404
L_800363CC:
    lwz 28, 0x170(31)
    cmplwi 28, 0x0
    .4byte 0x41820028 # beq .L_800363FC
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    mr 3, 29
    mr 4, 28
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    stw 30, 0x170(31)
L_800363FC:
    addi 31, 31, 0x4
    addi 27, 27, 0x1
L_80036404:
    cmplwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_800363CC
L_8003640C:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80036420:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_8045D350@ha
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 3
    addi 29, 4, lbl_8045D350@l
    bl fn_80033338
    addi 3, 31, 0x5c
    bl fn_80039964
    mr 3, 31
    bl fn_80036750
    addi 3, 31, 0x80
    bl fn_80033058
    lwz 0, 0x18(29)
    addi 7, 29, 0x18
    lfs 0, 0x4(7)
    addi 6, 29, 0x30
    stw 0, 0xe4(31)
    addi 5, 29, 0x0
    lwz 4, 0x8(7)
    li 0, 0x0
    stfs 0, 0xe8(31)
    lwz 3, 0xc(7)
    stw 4, 0xec(31)
    lfs 1, 0x10(7)
    stw 3, 0xf0(31)
    lfs 0, 0x14(7)
    stfs 1, 0xf4(31)
    lwz 3, 0x30(29)
    stfs 0, 0xf8(31)
    lfs 0, 0x4(6)
    stw 3, 0xfc(31)
    lwz 4, 0x8(6)
    stfs 0, 0x100(31)
    lwz 3, 0xc(6)
    stw 4, 0x104(31)
    lfs 1, 0x10(6)
    stw 3, 0x108(31)
    lfs 0, 0x14(6)
    stfs 1, 0x10c(31)
    lha 4, 0x0(29)
    stfs 0, 0x110(31)
    lha 3, 0x2(5)
    sth 4, 0x114(31)
    lha 4, 0x4(5)
    sth 3, 0x116(31)
    lha 3, 0x6(5)
    sth 4, 0x118(31)
    lha 4, 0x8(5)
    sth 3, 0x11a(31)
    lha 3, 0xa(5)
    sth 4, 0x11c(31)
    lha 4, 0xc(5)
    sth 3, 0x11e(31)
    lha 3, 0xe(5)
    sth 4, 0x120(31)
    lha 4, 0x10(5)
    sth 3, 0x122(31)
    lha 3, 0x12(5)
    sth 4, 0x124(31)
    lha 4, 0x14(5)
    sth 3, 0x126(31)
    lha 3, 0x16(5)
    sth 4, 0x128(31)
    sth 3, 0x12a(31)
    stw 0, 0x12c(31)
    stw 0, 0x130(31)
    stw 0, 0x134(31)
    stw 0, 0x138(31)
    stw 0, 0x13c(31)
    stw 0, 0x140(31)
    stw 0, 0x144(31)
    stw 0, 0x148(31)
    stw 0, 0x14c(31)
    stw 0, 0x150(31)
    stw 0, 0x154(31)
    stw 0, 0x158(31)
    stw 0, 0x15c(31)
    stw 0, 0x160(31)
    stw 0, 0x164(31)
    stw 0, 0x168(31)
    stw 0, 0x16c(31)
    lwz 3, 0x170(31)
    bl fn_80039368
    li 0, 0x1
    lis 3, lbl_804B21AC@ha
    stw 0, 0x1d0(31)
    addi 28, 31, 0x4
    addi 29, 3, lbl_804B21AC@l
    li 26, 0x1
    li 30, 0x0
L_80036590:
    lwz 27, 0x170(28)
    cmplwi 27, 0x0
    .4byte 0x41820028 # beq .L_800365C0
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    mr 3, 29
    mr 4, 27
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    stw 30, 0x170(28)
L_800365C0:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFC4 # blt .L_80036590
    lis 3, lbl_8052E330@ha
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    addi 0, 3, lbl_8052E330@l
    .4byte 0xC00282B8 # lfs f0, lbl_8053B258@sda21(r0)
    stw 0, 0x1d4(31)
    li 5, 0x0
    li 4, 0x78
    li 0, 0x30
    stfs 1, 0x1d8(31)
    mr 3, 31
    stfs 1, 0x1dc(31)
    stfs 0, 0x1e0(31)
    stfs 1, 0x1e4(31)
    stfs 0, 0x1e8(31)
    stfs 1, 0x1ec(31)
    sth 5, 0x1f0(31)
    sth 5, 0x1f2(31)
    stfs 1, 0x218(31)
    sth 5, 0x224(31)
    stw 5, 0x220(31)
    sth 4, 0x226(31)
    sth 0, 0x228(31)
    stfs 1, 0x21c(31)
    bl fn_80037804
    li 11, 0x0
    li 0, 0x3c
    stb 11, 0x22a(31)
    li 3, 0xf0
    li 10, 0xc
    li 9, 0x40
    stb 0, 0x22b(31)
    li 8, 0x64
    li 7, 0x150
    li 6, 0x210
    sth 11, 0x22c(31)
    li 5, 0x352
    li 4, 0x412
    li 0, 0x7fff
    sth 3, 0x22e(31)
    li 3, 0x1
    stb 10, 0x230(31)
    stb 9, 0x231(31)
    stb 11, 0x232(31)
    stb 8, 0x233(31)
    sth 7, 0x234(31)
    sth 6, 0x236(31)
    sth 5, 0x238(31)
    sth 4, 0x23a(31)
    sth 11, 0x23c(31)
    sth 11, 0x23e(31)
    sth 11, 0x1f4(31)
    sth 11, 0x1f6(31)
    sth 11, 0x1f8(31)
    sth 11, 0x1fa(31)
    sth 11, 0x1fc(31)
    sth 11, 0x1fe(31)
    sth 11, 0x200(31)
    sth 11, 0x202(31)
    sth 0, 0x1f4(31)
    sth 11, 0x204(31)
    sth 11, 0x206(31)
    sth 11, 0x208(31)
    sth 11, 0x20a(31)
    sth 11, 0x20c(31)
    sth 11, 0x20e(31)
    sth 11, 0x210(31)
    sth 11, 0x212(31)
    sth 0, 0x204(31)
    stb 11, 0x214(31)
    lbz 0, 0x244(31)
    rlwimi 0, 11, 7, 24, 24
    stb 0, 0x244(31)
    lbz 0, 0x244(31)
    rlwimi 0, 11, 6, 25, 25
    stb 0, 0x244(31)
    lbz 0, 0x244(31)
    rlwimi 0, 3, 5, 26, 26
    stb 0, 0x244(31)
    lbz 0, 0x244(31)
    rlwimi 0, 3, 2, 29, 29
    stb 0, 0x244(31)
    lbz 0, 0x244(31)
    rlwimi 0, 11, 4, 27, 27
    stb 0, 0x244(31)
    lbz 0, 0x244(31)
    rlwimi 0, 11, 3, 28, 28
    stb 0, 0x244(31)
    lbz 0, 0x244(31)
    rlwimi 0, 11, 1, 30, 30
    stb 0, 0x244(31)
    stw 11, 0x240(31)
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80036750:
    .4byte 0xC00282BC # lfs f0, lbl_8053B25C@sda21(r0)
    li 0, 0x0
    .4byte 0xC02282B8 # lfs f1, lbl_8053B258@sda21(r0)
    stfs 0, 0x9c(3)
    .4byte 0xC00282C0 # lfs f0, lbl_8053B260@sda21(r0)
    stfs 1, 0xa8(3)
    stfs 0, 0xc0(3)
    stfs 1, 0xb4(3)
    stfs 1, 0xcc(3)
    stfs 1, 0xd8(3)
    stw 0, 0xa4(3)
    lfs 0, 0x9c(3)
    stfs 0, 0xa0(3)
    stw 0, 0xb0(3)
    lfs 0, 0xa8(3)
    stfs 0, 0xac(3)
    stw 0, 0xbc(3)
    lfs 0, 0xb4(3)
    stfs 0, 0xb8(3)
    stw 0, 0xc8(3)
    lfs 0, 0xc0(3)
    stfs 0, 0xc4(3)
    stw 0, 0xd4(3)
    lfs 0, 0xcc(3)
    stfs 0, 0xd0(3)
    stw 0, 0xe0(3)
    lfs 0, 0xd8(3)
    stfs 0, 0xdc(3)
    blr

fn_800367C4:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 3, 0x170(3)
    stw 5, 0x48(3)
    blr

fn_800367D8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80033394
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800367F8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl OSDisableInterrupts
    lis 4, lbl_8052E77C@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_8052E77C@l
    mr 4, 31
    bl fn_80039154
    li 0, 0x1
    lwz 3, 0x8(1)
    stw 0, 0x240(31)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80036848:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl OSDisableInterrupts
    lbz 0, 0x244(31)
    li 4, 0x1
    rlwimi 0, 4, 1, 30, 30
    stw 3, 0x8(1)
    stb 0, 0x244(31)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003688C:
    li 0, 0x1
    stw 0, 0x240(3)
    blr

fn_80036898:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 18, 0x18(1)
    mr 22, 3
    li 24, 0x0
    mr 25, 22
L_800368B4:
    lwz 23, 0x130(25)
    cmplwi 23, 0x0
    .4byte 0x41820288 # beq .L_80036B44
    li 30, 0x0
    mr 26, 23
L_800368C8:
    lwz 31, 0x130(26)
    cmplwi 31, 0x0
    .4byte 0x418201A0 # beq .L_80036A70
    li 28, 0x0
    mr 27, 31
L_800368DC:
    lwz 29, 0x130(27)
    cmplwi 29, 0x0
    .4byte 0x418200DC # beq .L_800369C0
    li 19, 0x0
    mr 18, 29
    mr 21, 19
L_800368F4:
    lwz 20, 0x130(18)
    cmplwi 20, 0x0
    .4byte 0x41820028 # beq .L_80036924
    mr 3, 20
    bl fn_80036898
    lbz 0, 0x244(20)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820014 # beq .L_80036924
    mr 3, 20
    li 4, 0x1
    bl fn_8003626C
    stw 21, 0x130(18)
L_80036924:
    addi 19, 19, 0x1
    addi 18, 18, 0x4
    cmpwi 19, 0x10
    .4byte 0x4180FFC4 # blt .L_800368F4
    mr 18, 29
    li 21, 0x0
    .4byte 0x4800001C # b .L_80036958
L_80036940:
    lwz 3, 0x170(18)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80036950
    bl fn_800393D8
L_80036950:
    addi 18, 18, 0x4
    addi 21, 21, 0x1
L_80036958:
    lwz 0, 0x1d0(29)
    cmplw 21, 0
    .4byte 0x4180FFE0 # blt .L_80036940
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x12c(29)
    stw 0, 0x240(29)
    lbz 0, 0x244(29)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820044 # beq .L_800369C0
    cmplwi 29, 0x0
    .4byte 0x41820034 # beq .L_800369B8
    li 19, 0x1
    addi 18, 29, 0x4
L_80036990:
    lwz 3, 0x170(18)
    li 4, 0x50
    bl fn_800398E8
    addi 19, 19, 0x1
    addi 18, 18, 0x4
    cmpwi 19, 0x4
    .4byte 0x4180FFE8 # blt .L_80036990
    mr 3, 29
    li 4, 0x250
    bl fn_80039890
L_800369B8:
    li 0, 0x0
    stw 0, 0x130(27)
L_800369C0:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0x10
    .4byte 0x4180FF10 # blt .L_800368DC
    mr 18, 31
    li 21, 0x0
    .4byte 0x4800001C # b .L_800369F4
L_800369DC:
    lwz 3, 0x170(18)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_800369EC
    bl fn_800393D8
L_800369EC:
    addi 18, 18, 0x4
    addi 21, 21, 0x1
L_800369F4:
    lwz 0, 0x1d0(31)
    cmplw 21, 0
    .4byte 0x4180FFE0 # blt .L_800369DC
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x12c(31)
    stw 0, 0x240(31)
    lbz 0, 0x244(31)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820058 # beq .L_80036A70
    cmplwi 31, 0x0
    .4byte 0x41820048 # beq .L_80036A68
    lis 3, lbl_804B21AC@ha
    addi 18, 31, 0x4
    addi 27, 3, lbl_804B21AC@l
    li 21, 0x1
L_80036A34:
    lwz 4, 0x170(18)
    mr 3, 27
    li 5, 0x50
    bl fn_80039830
    addi 21, 21, 0x1
    addi 18, 18, 0x4
    cmpwi 21, 0x4
    .4byte 0x4180FFE4 # blt .L_80036A34
    lis 3, lbl_804B21BC@ha
    mr 4, 31
    addi 3, 3, lbl_804B21BC@l
    li 5, 0x250
    bl fn_800397D0
L_80036A68:
    li 0, 0x0
    stw 0, 0x130(26)
L_80036A70:
    addi 30, 30, 0x1
    addi 26, 26, 0x4
    cmpwi 30, 0x10
    .4byte 0x4180FE4C # blt .L_800368C8
    mr 18, 23
    li 21, 0x0
    .4byte 0x4800001C # b .L_80036AA4
L_80036A8C:
    lwz 3, 0x170(18)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80036A9C
    bl fn_800393D8
L_80036A9C:
    addi 18, 18, 0x4
    addi 21, 21, 0x1
L_80036AA4:
    lwz 0, 0x1d0(23)
    cmplw 21, 0
    .4byte 0x4180FFE0 # blt .L_80036A8C
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x12c(23)
    stw 0, 0x240(23)
    lbz 0, 0x244(23)
    extrwi. 0, 0, 1, 27
    .4byte 0x4182007C # beq .L_80036B44
    cmplwi 23, 0x0
    .4byte 0x4182006C # beq .L_80036B3C
    lis 3, lbl_804B21AC@ha
    addi 18, 23, 0x4
    addi 26, 3, lbl_804B21AC@l
    li 21, 0x1
L_80036AE4:
    lwz 27, 0x170(18)
    bl OSDisableInterrupts
    stw 3, 0xc(1)
    mr 3, 26
    mr 4, 27
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    addi 21, 21, 0x1
    addi 18, 18, 0x4
    cmpwi 21, 0x4
    .4byte 0x4180FFD0 # blt .L_80036AE4
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21BC@l
    li 5, 0x250
    mr 4, 23
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_80036B3C:
    li 0, 0x0
    stw 0, 0x130(25)
L_80036B44:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x10
    .4byte 0x4180FD64 # blt .L_800368B4
    mr 18, 22
    li 19, 0x0
    .4byte 0x4800001C # b .L_80036B78
L_80036B60:
    lwz 3, 0x170(18)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80036B70
    bl fn_800393D8
L_80036B70:
    addi 18, 18, 0x4
    addi 19, 19, 0x1
L_80036B78:
    lwz 0, 0x1d0(22)
    cmplw 19, 0
    .4byte 0x4180FFE0 # blt .L_80036B60
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x12c(22)
    stw 0, 0x240(22)
    lmw 18, 0x18(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80036BA8:
    slwi 0, 4, 2
    add 4, 3, 0
    lwz 0, 0x130(4)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80036BC4
    li 3, 0x0
    blr
L_80036BC4:
    stw 3, 0x12c(5)
    li 3, 0x1
    stw 5, 0x130(4)
    blr

fn_80036BD4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    slwi 0, 4, 2
    stmw 26, 0x18(1)
    add 27, 3, 0
    lwz 26, 0x130(27)
    cmplwi 26, 0x0
    .4byte 0x418200A0 # beq .L_80036C94
    bl fn_800388EC
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    li 4, 0x0
    bl fn_800378A0
    mr 3, 26
    bl fn_80036898
    lbz 0, 0x244(26)
    extrwi. 0, 0, 1, 27
    .4byte 0x4182007C # beq .L_80036C94
    cmplwi 26, 0x0
    .4byte 0x4182006C # beq .L_80036C8C
    lis 3, lbl_804B21AC@ha
    addi 28, 26, 0x4
    addi 31, 3, lbl_804B21AC@l
    li 30, 0x1
L_80036C34:
    lwz 29, 0x170(28)
    bl OSDisableInterrupts
    stw 3, 0xc(1)
    mr 3, 31
    mr 4, 29
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80036C34
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21BC@l
    li 5, 0x250
    mr 4, 26
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_80036C8C:
    li 0, 0x0
    stw 0, 0x130(27)
L_80036C94:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80036CA8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    slwi 0, 4, 2
    stmw 25, 0x24(1)
    mr 29, 3
    add 31, 29, 0
    lwz 30, 0x130(31)
    cmplwi 30, 0x0
    .4byte 0x41820078 # beq .L_80036D44
    lwz 0, 0x240(30)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80036CF0
    .4byte 0x40800008 # bge .L_80036CE4
    .4byte 0x48000184 # b .L_80036E64
L_80036CE4:
    cmpwi 0, 0x3
    .4byte 0x4080017C # bge .L_80036E64
    .4byte 0x4800001C # b .L_80036D08
L_80036CF0:
    bl fn_800388EC
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    li 4, 0x0
    bl fn_800378A0
    mr 3, 30
    bl fn_80036898
L_80036D08:
    lbz 0, 0x244(30)
    mr 3, 30
    extrwi 25, 0, 1, 27
    bl fn_80036420
    lbz 3, 0x244(30)
    rlwimi 3, 25, 4, 27, 27
    li 0, 0x0
    stb 3, 0x244(30)
    stw 0, 0x130(31)
    lwz 0, 0x130(31)
    cmplwi 0, 0x0
    .4byte 0x40820130 # bne .L_80036E64
    stw 29, 0x12c(30)
    stw 30, 0x130(31)
    .4byte 0x48000124 # b .L_80036E64
L_80036D44:
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0x10(1)
    addi 3, 4, lbl_804B21BC@l
    li 4, 0x250
    bl fn_80028A8C
    mr 28, 3
    lwz 3, 0x10(1)
    bl OSRestoreInterrupts
    cmplwi 28, 0x0
    .4byte 0x418200C0 # beq .L_80036E2C
    mr 3, 28
    bl fn_800332D0
    addi 3, 28, 0x80
    bl fn_80033018
    .4byte 0xC00282B8 # lfs f0, lbl_8053B258@sda21(r0)
    lis 3, fn_80039560@ha
    addi 4, 3, fn_80039560@l
    li 0, 0x0
    stfs 0, 0x9c(28)
    addi 3, 28, 0x9c
    li 5, 0x0
    li 6, 0xc
    stfs 0, 0xa0(28)
    li 7, 0x6
    stw 0, 0xa4(28)
    stfs 0, 0xa8(28)
    stfs 0, 0xac(28)
    stw 0, 0xb0(28)
    stfs 0, 0xb4(28)
    stfs 0, 0xb8(28)
    stw 0, 0xbc(28)
    stfs 0, 0xc0(28)
    stfs 0, 0xc4(28)
    stw 0, 0xc8(28)
    stfs 0, 0xcc(28)
    stfs 0, 0xd0(28)
    stw 0, 0xd4(28)
    stfs 0, 0xd8(28)
    stfs 0, 0xdc(28)
    stw 0, 0xe0(28)
    bl __construct_array
    mr 4, 28
    addi 3, 28, 0x180
    bl fn_800392F4
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x1d0(28)
    addi 0, 28, 0x180
    mr 3, 28
    stw 4, 0x240(28)
    stw 4, 0x248(28)
    stw 4, 0x24c(28)
    stw 0, 0x170(28)
    stw 4, 0x174(28)
    stw 4, 0x178(28)
    stw 4, 0x17c(28)
    bl fn_80036420
L_80036E2C:
    cmplwi 28, 0x0
    mr 30, 28
    .4byte 0x4082000C # bne .L_80036E40
    li 3, 0x0
    .4byte 0x48000200 # b .L_8003703C
L_80036E40:
    lbz 0, 0x244(28)
    li 3, 0x1
    rlwimi 0, 3, 4, 27, 27
    stb 0, 0x244(28)
    lwz 0, 0x130(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80036E64
    stw 29, 0x12c(28)
    stw 28, 0x130(31)
L_80036E64:
    lwz 28, 0x1d0(29)
    li 27, 0x1
    addi 26, 30, 0x4
    stw 27, 0x1d0(30)
    .4byte 0x48000070 # b .L_80036EE4
L_80036E78:
    lwz 0, 0x170(26)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80036ED0
    bl OSDisableInterrupts
    lis 4, lbl_804B21AC@ha
    stw 3, 0xc(1)
    addi 3, 4, lbl_804B21AC@l
    li 4, 0x50
    bl fn_80028A8C
    mr 31, 3
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    cmplwi 31, 0x0
    .4byte 0x41820014 # beq .L_80036EC0
    mr 3, 31
    mr 4, 30
    bl fn_800392F4
    mr 31, 3
L_80036EC0:
    stw 31, 0x170(26)
    lwz 0, 0x170(26)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_80036F48
L_80036ED0:
    lwz 3, 0x1d0(30)
    addi 26, 26, 0x4
    addi 27, 27, 0x1
    addi 0, 3, 0x1
    stw 0, 0x1d0(30)
L_80036EE4:
    cmplw 27, 28
    .4byte 0x4180FF90 # blt .L_80036E78
    lwz 27, 0x1d0(30)
    lis 3, lbl_804B21AC@ha
    addi 28, 3, lbl_804B21AC@l
    li 31, 0x0
    slwi 0, 27, 2
    add 26, 30, 0
    .4byte 0x4800003C # b .L_80036F40
L_80036F08:
    lwz 25, 0x170(26)
    cmplwi 25, 0x0
    .4byte 0x41820028 # beq .L_80036F38
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    mr 3, 28
    mr 4, 25
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    stw 31, 0x170(26)
L_80036F38:
    addi 26, 26, 0x4
    addi 27, 27, 0x1
L_80036F40:
    cmplwi 27, 0x4
    .4byte 0x4180FFC4 # blt .L_80036F08
L_80036F48:
    lbz 4, 0x244(29)
    mr 3, 30
    lbz 0, 0x244(30)
    rlwimi 0, 4, 0, 26, 26
    stb 0, 0x244(30)
    lhz 0, 0x22c(29)
    sth 0, 0x22c(30)
    lhz 0, 0x22e(29)
    sth 0, 0x22e(30)
    lbz 0, 0x231(29)
    stb 0, 0x231(30)
    lbz 0, 0x232(29)
    stb 0, 0x232(30)
    lwz 0, 0x220(29)
    stw 0, 0x220(30)
    lha 0, 0x1f4(29)
    sth 0, 0x1f4(30)
    lha 0, 0x1f6(29)
    sth 0, 0x1f6(30)
    lha 0, 0x1f8(29)
    sth 0, 0x1f8(30)
    lha 0, 0x1fa(29)
    sth 0, 0x1fa(30)
    lha 0, 0x1fc(29)
    sth 0, 0x1fc(30)
    lha 0, 0x1fe(29)
    sth 0, 0x1fe(30)
    lha 0, 0x200(29)
    sth 0, 0x200(30)
    lha 0, 0x202(29)
    sth 0, 0x202(30)
    lha 0, 0x204(29)
    sth 0, 0x204(30)
    lha 0, 0x206(29)
    sth 0, 0x206(30)
    lha 0, 0x208(29)
    sth 0, 0x208(30)
    lha 0, 0x20a(29)
    sth 0, 0x20a(30)
    lha 0, 0x20c(29)
    sth 0, 0x20c(30)
    lha 0, 0x20e(29)
    sth 0, 0x20e(30)
    lha 0, 0x210(29)
    sth 0, 0x210(30)
    lha 0, 0x212(29)
    sth 0, 0x212(30)
    lbz 0, 0x214(29)
    stb 0, 0x214(30)
    lhz 0, 0x234(29)
    sth 0, 0x234(30)
    lhz 0, 0x236(29)
    sth 0, 0x236(30)
    lhz 0, 0x238(29)
    sth 0, 0x238(30)
    lhz 0, 0x23a(29)
    sth 0, 0x23a(30)
    lhz 0, 0x23c(29)
    sth 0, 0x23c(30)
    lhz 0, 0x23e(29)
    sth 0, 0x23e(30)
L_8003703C:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80037050:
    slwi 0, 4, 1
    add 3, 3, 0
    sth 5, 0x234(3)
    blr

fn_80037060:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stb 4, 0x22b(3)
    bl fn_8003843C
    lbz 0, 0x22b(31)
    add 0, 0, 3
    stb 0, 0x22b(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003709C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 21, 0x14(1)
    mr 24, 3
    mr 25, 4
    mr 26, 5
    mr 27, 6
    bl fn_800385AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_800370D0
    li 3, 0x0
    .4byte 0x48000134 # b .L_80037200
L_800370D0:
    mr 3, 24
    li 29, 0x1
    bl fn_8003843C
    mr 31, 24
    add 26, 26, 3
    slwi 30, 25, 2
    li 28, 0x0
    .4byte 0x48000104 # b .L_800371F0
L_800370F0:
    lwz 3, 0x170(31)
    cmplwi 3, 0x0
    .4byte 0x418200F0 # beq .L_800371E8
    mr 4, 25
    li 5, 0x0
    bl fn_80039454
    lwz 3, 0x1d4(24)
    li 5, 0x0
    lwz 22, 0x170(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80037134
    lwz 12, 0x0(3)
    lhz 4, 0x22c(24)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    mr 5, 3
L_80037134:
    lbz 0, 0x232(24)
    lis 3, fn_80038774@ha
    lbz 7, 0x231(24)
    addi 8, 3, fn_80038774@l
    rlwimi 7, 0, 8, 16, 23
    lhz 4, 0x22e(24)
    mr 3, 5
    mr 9, 22
    clrlwi 5, 26, 24
    clrlwi 6, 27, 24
    clrlwi 7, 7, 16
    bl fn_80031484
    mr. 22, 3
    .4byte 0x4082000C # bne .L_80037174
    li 22, 0x0
    .4byte 0x48000064 # b .L_800371D4
L_80037174:
    li 23, 0x0
    mr 21, 24
    stw 23, 0x14(22)
    lwz 0, 0x220(24)
    stw 0, 0xd8(22)
    lhz 0, 0x1f0(24)
    sth 0, 0x70(22)
    lhz 0, 0x1f2(24)
    sth 0, 0x88(22)
L_80037198:
    lhz 5, 0x234(21)
    mr 3, 22
    mr 4, 23
    bl fn_8002AE68
    addi 23, 23, 0x1
    addi 21, 21, 0x2
    cmplwi 23, 0x6
    .4byte 0x4180FFE4 # blt .L_80037198
    mr 3, 24
    mr 4, 22
    bl fn_8003750C
    lhz 0, 0x224(24)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_800371D4
    sth 0, 0x32(22)
L_800371D4:
    cmplwi 22, 0x0
    .4byte 0x40820008 # bne .L_800371E0
    li 29, 0x0
L_800371E0:
    lwz 0, 0x170(31)
    stwx 22, 30, 0
L_800371E8:
    addi 31, 31, 0x4
    addi 28, 28, 0x1
L_800371F0:
    lwz 0, 0x1d0(24)
    cmplw 28, 0
    .4byte 0x4180FEF8 # blt .L_800370F0
    mr 3, 29
L_80037200:
    lmw 21, 0x14(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80037214:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stmw 17, 0x14(1)
    fmr 31, 1
    mr 28, 3
    mr 29, 4
    mr 30, 5
    mr 31, 6
    bl fn_8003843C
    lbz 4, 0x233(28)
    add 29, 29, 3
    cmplwi 4, 0x64
    .4byte 0x41820028 # beq .L_80037278
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC84282C8 # lfd f2, lbl_8053B268@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC00282C4 # lfs f0, lbl_8053B264@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 31, 31, 0
L_80037278:
    fmr 1, 31
    mr 3, 28
    bl fn_80037BC8
    rlwinm 4, 31, 0, 29, 30
    clrlwi. 23, 31, 31
    neg 0, 4
    mr 22, 3
    or 0, 0, 4
    srawi 0, 0, 31
    andc 27, 22, 0
    .4byte 0x4182000C # beq .L_800372AC
    lbz 26, 0x22b(28)
    .4byte 0x48000008 # b .L_800372B0
L_800372AC:
    mr 26, 29
L_800372B0:
    mr 25, 28
    subf 24, 26, 29
    li 21, 0x0
    .4byte 0x48000154 # b .L_80037410
L_800372C0:
    lwz 20, 0x170(25)
    cmplwi 20, 0x0
    .4byte 0x41820140 # beq .L_80037408
    lbz 0, 0x244(28)
    extrwi. 0, 0, 1, 28
    .4byte 0x408200F4 # bne .L_800373C8
    mr 3, 20
    li 4, 0x0
    li 5, 0x0
    bl fn_80039454
    mr 3, 28
    bl fn_800385AC
    clrlwi. 0, 3, 24
    .4byte 0x408200F4 # bne .L_800373E8
    lwz 3, 0x1d4(28)
    li 5, 0x0
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80037320
    lwz 12, 0x0(3)
    lhz 4, 0x22c(28)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    mr 5, 3
L_80037320:
    lbz 0, 0x232(28)
    lis 3, fn_80038774@ha
    lbz 7, 0x231(28)
    addi 8, 3, fn_80038774@l
    rlwimi 7, 0, 8, 16, 23
    lhz 4, 0x22e(28)
    mr 3, 5
    mr 9, 20
    clrlwi 5, 26, 24
    clrlwi 6, 30, 24
    clrlwi 7, 7, 16
    bl fn_80031484
    mr. 18, 3
    .4byte 0x4082000C # bne .L_80037360
    li 18, 0x0
    .4byte 0x48000064 # b .L_800373C0
L_80037360:
    stw 27, 0x14(18)
    mr 17, 28
    li 19, 0x0
    lwz 0, 0x220(28)
    stw 0, 0xd8(18)
    lhz 0, 0x1f0(28)
    sth 0, 0x70(18)
    lhz 0, 0x1f2(28)
    sth 0, 0x88(18)
L_80037384:
    lhz 5, 0x234(17)
    mr 3, 18
    mr 4, 19
    bl fn_8002AE68
    addi 19, 19, 0x1
    addi 17, 17, 0x2
    cmplwi 19, 0x6
    .4byte 0x4180FFE4 # blt .L_80037384
    mr 3, 28
    mr 4, 18
    bl fn_8003750C
    lhz 0, 0x224(28)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_800373C0
    sth 0, 0x32(18)
L_800373C0:
    stw 18, 0x0(20)
    .4byte 0x48000024 # b .L_800373E8
L_800373C8:
    lwz 3, 0x0(20)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_800373E8
    lbz 0, 0xe1(3)
    subf 0, 0, 26
    sth 0, 0xc8(3)
    sth 30, 0xca(3)
    stw 27, 0x14(3)
L_800373E8:
    cmplwi 23, 0x0
    .4byte 0x4182001C # beq .L_80037408
    lwz 3, 0x0(20)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80037408
    mr 4, 24
    mr 5, 22
    bl fn_8002AE78
L_80037408:
    addi 25, 25, 0x4
    addi 21, 21, 0x1
L_80037410:
    lwz 0, 0x1d0(28)
    cmplw 21, 0
    .4byte 0x4180FEA8 # blt .L_800372C0
    lbz 0, 0x244(28)
    rlwimi 0, 31, 2, 28, 28
    li 3, 0x1
    stb 0, 0x244(28)
    stb 29, 0x22b(28)
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    lmw 17, 0x14(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8003744C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 26, 3
    mr 27, 4
    mr 28, 5
    li 30, 0x1
    mr 31, 26
    li 29, 0x0
    .4byte 0x48000030 # b .L_800374A4
L_80037478:
    lwz 3, 0x170(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8003749C
    mr 4, 27
    mr 5, 28
    bl fn_80039454
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8003749C
    li 30, 0x0
L_8003749C:
    addi 31, 31, 0x4
    addi 29, 29, 0x1
L_800374A4:
    lwz 0, 0x1d0(26)
    cmplw 29, 0
    .4byte 0x4180FFCC # blt .L_80037478
    mr 3, 30
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800374C8:
    lwz 0, 0x1d0(3)
    slwi 4, 4, 2
    mtctr 0
    cmplwi 0, 0x0
    .4byte 0x4081002C # ble .L_80037504
L_800374DC:
    lwz 0, 0x170(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_800374FC
    lwzx 0, 4, 0
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_800374FC
    li 3, 0x0
    blr
L_800374FC:
    addi 3, 3, 0x4
    .4byte 0x4200FFDC # bdnz .L_800374DC
L_80037504:
    li 3, 0x1
    blr

fn_8003750C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 4
L_80037530:
    lwz 0, 0xec(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8003754C
    mr 3, 29
    mr 4, 30
    addi 5, 31, 0xe4
    bl fn_8002AE34
L_8003754C:
    addi 30, 30, 0x1
    addi 31, 31, 0x18
    cmplwi 30, 0x2
    .4byte 0x4180FFD8 # blt .L_80037530
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80037578:
    li 0, 0x2
    stwu 1, -0x10(1)
    .4byte 0xC82282C8 # lfd f1, lbl_8053B268@sda21(r0)
    li 6, 0x0
    lis 5, 0x4330
    mtctr 0
L_80037590:
    lwz 0, 0xa4(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_800375D0
    stw 0, 0xc(1)
    lfs 3, 0x9c(3)
    stw 5, 0x8(1)
    lfs 2, 0xa0(3)
    lfd 0, 0x8(1)
    fsubs 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0x9c(3)
    lwz 4, 0xa4(3)
    subi 0, 4, 0x1
    stw 0, 0xa4(3)
L_800375D0:
    lwz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80037610
    stw 0, 0xc(1)
    lfs 3, 0xa8(3)
    stw 5, 0x8(1)
    lfs 2, 0xac(3)
    lfd 0, 0x8(1)
    fsubs 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0xa8(3)
    lwz 4, 0xb0(3)
    subi 0, 4, 0x1
    stw 0, 0xb0(3)
L_80037610:
    lwz 0, 0xbc(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80037650
    stw 0, 0xc(1)
    lfs 3, 0xb4(3)
    stw 5, 0x8(1)
    lfs 2, 0xb8(3)
    lfd 0, 0x8(1)
    fsubs 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0xb4(3)
    lwz 4, 0xbc(3)
    subi 0, 4, 0x1
    stw 0, 0xbc(3)
L_80037650:
    addi 3, 3, 0x24
    addi 6, 6, 0x2
    .4byte 0x4200FF38 # bdnz .L_80037590
    addi 1, 1, 0x10
    blr

fn_80037664:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    fmr 31, 1
    bl fn_80037804
    mr 4, 31
    li 6, 0x0
    li 5, 0x0
    .4byte 0x48000148 # b .L_800377DC
L_80037698:
    lwz 7, 0x170(4)
    cmplwi 7, 0x0
    .4byte 0x41820130 # beq .L_800377D0
    lbz 3, 0x230(31)
    lis 0, 0x4330
    lfs 0, 0x9c(31)
    stw 3, 0xc(1)
    lwz 3, 0x48(7)
    fmuls 5, 0, 0
    stw 0, 0x8(1)
    .4byte 0xC82282C8 # lfd f1, lbl_8053B268@sda21(r0)
    cmplwi 3, 0x0
    lfd 0, 0x8(1)
    lfs 3, 0xa8(31)
    fsubs 0, 0, 1
    lfs 1, 0xc0(31)
    .4byte 0xC04282C0 # lfs f2, lbl_8053B260@sda21(r0)
    .4byte 0xC08282D0 # lfs f4, lbl_8053B270@sda21(r0)
    fmuls 3, 3, 0
    lfs 0, 0x218(31)
    fsubs 1, 1, 2
    .4byte 0xC0C282BC # lfs f6, lbl_8053B25C@sda21(r0)
    lfs 9, 0xb4(31)
    fmuls 7, 4, 3
    fmuls 8, 1, 0
    lfs 10, 0xcc(31)
    .4byte 0x41820030 # beq .L_80037730
    lfs 0, 0xc(3)
    lfs 4, 0x0(3)
    fsubs 2, 0, 2
    lfs 3, 0x8(3)
    lfs 1, 0x4(3)
    fmuls 5, 5, 4
    lfs 0, 0x10(3)
    fmuls 6, 6, 3
    fadds 8, 8, 2
    fadds 9, 9, 1
    fadds 10, 10, 0
L_80037730:
    lwz 3, 0x12c(31)
    fmuls 8, 8, 31
    cmplwi 3, 0x0
    .4byte 0x40820020 # bne .L_8003775C
    stfs 5, 0x20(7)
    stfs 6, 0x24(7)
    stfs 8, 0x2c(7)
    stfs 9, 0x30(7)
    stfs 10, 0x34(7)
    stfs 7, 0x28(7)
    .4byte 0x48000068 # b .L_800377C0
L_8003775C:
    addi 0, 5, 0x170
    lwzx 8, 3, 0
    cmplwi 8, 0x0
    .4byte 0x40820008 # bne .L_80037770
    lwz 8, 0x170(3)
L_80037770:
    lfs 1, 0x20(8)
    .4byte 0xC00282C0 # lfs f0, lbl_8053B260@sda21(r0)
    fmuls 1, 1, 5
    stfs 1, 0x20(7)
    lfs 1, 0x24(8)
    fmuls 1, 1, 6
    stfs 1, 0x24(7)
    lfs 1, 0x2c(8)
    fsubs 0, 1, 0
    fadds 0, 0, 8
    stfs 0, 0x2c(7)
    lfs 0, 0x30(8)
    fadds 0, 0, 9
    stfs 0, 0x30(7)
    lfs 0, 0x34(8)
    fadds 0, 0, 10
    stfs 0, 0x34(7)
    lfs 0, 0x28(8)
    fadds 0, 0, 7
    stfs 0, 0x28(7)
L_800377C0:
    lfs 1, 0x2c(7)
    .4byte 0xC00282C0 # lfs f0, lbl_8053B260@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x2c(7)
L_800377D0:
    addi 4, 4, 0x4
    addi 5, 5, 0x4
    addi 6, 6, 0x1
L_800377DC:
    lwz 0, 0x1d0(31)
    cmplw 6, 0
    .4byte 0x4180FEB4 # blt .L_80037698
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80037804:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x12c(3)
    cmplwi 3, 0x0
    .4byte 0x4082004C # bne .L_8003786C
    bl fn_8002A1F0
    lhz 4, 0x228(31)
    lis 0, 0x4330
    lhz 3, 0x226(31)
    stw 0, 0x8(1)
    mullw 0, 4, 3
    .4byte 0xC86282D8 # lfd f3, lbl_8053B278@sda21(r0)
    .4byte 0xC08282D4 # lfs f4, lbl_8053B274@sda21(r0)
    lfs 0, 0x21c(31)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 2, 0x8(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fdivs 1, 2, 1
    fmuls 0, 0, 1
    stfs 0, 0x1dc(31)
    .4byte 0x48000024 # b .L_8003788C
L_8003786C:
    lhz 0, 0x226(3)
    sth 0, 0x226(31)
    lwz 3, 0x12c(31)
    lhz 0, 0x228(3)
    sth 0, 0x228(31)
    lwz 3, 0x12c(31)
    lfs 0, 0x1dc(3)
    stfs 0, 0x1dc(31)
L_8003788C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800378A0:
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
    stmw 14, 0x8(1)
    fmr 26, 1
    clrlwi. 0, 4, 24
    mr 14, 4
    mr 15, 3
    .4byte 0x4082000C # bne .L_800378FC
    lbz 0, 0x244(15)
    extrwi 14, 0, 1, 29
L_800378FC:
    lbz 3, 0x244(15)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 14, 24
    stb 3, 0x244(15)
    .4byte 0x41820010 # beq .L_80037920
    fmr 1, 26
    mr 3, 15
    bl fn_80037664
L_80037920:
    lfs 0, 0x218(15)
    mr 27, 15
    li 26, 0x0
    fmuls 26, 26, 0
L_80037930:
    lwz 15, 0x130(27)
    cmplwi 15, 0x0
    .4byte 0x4182023C # beq .L_80037B74
    lwz 0, 0x240(15)
    cmpwi 0, 0x1
    .4byte 0x40820230 # bne .L_80037B74
    clrlwi. 0, 14, 24
    mr 24, 14
    .4byte 0x4082000C # bne .L_8003795C
    lbz 0, 0x244(15)
    extrwi 24, 0, 1, 29
L_8003795C:
    lbz 3, 0x244(15)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 24, 24
    stb 3, 0x244(15)
    .4byte 0x41820010 # beq .L_80037980
    fmr 1, 26
    mr 3, 15
    bl fn_80037664
L_80037980:
    lfs 0, 0x218(15)
    mr 28, 15
    li 25, 0x0
    fmuls 31, 26, 0
L_80037990:
    lwz 29, 0x130(28)
    cmplwi 29, 0x0
    .4byte 0x418201CC # beq .L_80037B64
    lwz 0, 0x240(29)
    cmpwi 0, 0x1
    .4byte 0x408201C0 # bne .L_80037B64
    clrlwi. 0, 24, 24
    mr 22, 24
    .4byte 0x4082000C # bne .L_800379BC
    lbz 0, 0x244(29)
    extrwi 22, 0, 1, 29
L_800379BC:
    lbz 3, 0x244(29)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 22, 24
    stb 3, 0x244(29)
    .4byte 0x41820010 # beq .L_800379E0
    fmr 1, 31
    mr 3, 29
    bl fn_80037664
L_800379E0:
    lfs 0, 0x218(29)
    li 23, 0x0
    fmuls 30, 31, 0
L_800379EC:
    lwz 30, 0x130(29)
    cmplwi 30, 0x0
    .4byte 0x41820160 # beq .L_80037B54
    lwz 0, 0x240(30)
    cmpwi 0, 0x1
    .4byte 0x40820154 # bne .L_80037B54
    clrlwi. 0, 22, 24
    mr 20, 22
    .4byte 0x4082000C # bne .L_80037A18
    lbz 0, 0x244(30)
    extrwi 20, 0, 1, 29
L_80037A18:
    lbz 3, 0x244(30)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 20, 24
    stb 3, 0x244(30)
    .4byte 0x41820010 # beq .L_80037A3C
    fmr 1, 30
    mr 3, 30
    bl fn_80037664
L_80037A3C:
    lfs 0, 0x218(30)
    li 21, 0x0
    fmuls 29, 30, 0
L_80037A48:
    lwz 31, 0x130(30)
    cmplwi 31, 0x0
    .4byte 0x418200F4 # beq .L_80037B44
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x408200E8 # bne .L_80037B44
    clrlwi. 0, 20, 24
    mr 18, 20
    .4byte 0x4082000C # bne .L_80037A74
    lbz 0, 0x244(31)
    extrwi 18, 0, 1, 29
L_80037A74:
    lbz 3, 0x244(31)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 18, 24
    stb 3, 0x244(31)
    .4byte 0x41820010 # beq .L_80037A98
    fmr 1, 29
    mr 3, 31
    bl fn_80037664
L_80037A98:
    lfs 0, 0x218(31)
    li 19, 0x0
    fmuls 28, 29, 0
L_80037AA4:
    lwz 15, 0x130(31)
    cmplwi 15, 0x0
    .4byte 0x41820088 # beq .L_80037B34
    lwz 0, 0x240(15)
    cmpwi 0, 0x1
    .4byte 0x4082007C # bne .L_80037B34
    clrlwi. 0, 18, 24
    mr 16, 18
    .4byte 0x4082000C # bne .L_80037AD0
    lbz 0, 0x244(15)
    extrwi 16, 0, 1, 29
L_80037AD0:
    lbz 3, 0x244(15)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 16, 24
    stb 3, 0x244(15)
    .4byte 0x41820010 # beq .L_80037AF4
    fmr 1, 28
    mr 3, 15
    bl fn_80037664
L_80037AF4:
    lfs 0, 0x218(15)
    li 17, 0x0
    fmuls 27, 28, 0
L_80037B00:
    lwz 3, 0x130(15)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80037B24
    lwz 0, 0x240(3)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80037B24
    fmr 1, 27
    mr 4, 16
    bl fn_800378A0
L_80037B24:
    addi 17, 17, 0x1
    addi 15, 15, 0x4
    cmpwi 17, 0x10
    .4byte 0x4180FFD0 # blt .L_80037B00
L_80037B34:
    addi 19, 19, 0x1
    addi 31, 31, 0x4
    cmpwi 19, 0x10
    .4byte 0x4180FF64 # blt .L_80037AA4
L_80037B44:
    addi 21, 21, 0x1
    addi 30, 30, 0x4
    cmpwi 21, 0x10
    .4byte 0x4180FEF8 # blt .L_80037A48
L_80037B54:
    addi 23, 23, 0x1
    addi 29, 29, 0x4
    cmpwi 23, 0x10
    .4byte 0x4180FE8C # blt .L_800379EC
L_80037B64:
    addi 25, 25, 0x1
    addi 28, 28, 0x4
    cmpwi 25, 0x10
    .4byte 0x4180FE20 # blt .L_80037990
L_80037B74:
    addi 26, 26, 0x1
    addi 27, 27, 0x4
    cmpwi 26, 0x10
    .4byte 0x4180FDB0 # blt .L_80037930
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
    lmw 14, 0x8(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_80037BC8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    lbz 0, 0x244(3)
    extrwi. 0, 0, 1, 26
    .4byte 0x41820010 # beq .L_80037BF4
    lfs 0, 0x1dc(3)
    fdivs 31, 1, 0
    .4byte 0x48000054 # b .L_80037C44
L_80037BF4:
    lhz 3, 0x228(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC84282C8 # lfd f2, lbl_8053B268@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC06282E0 # lfs f3, lbl_8053B280@sda21(r0)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 3, 0
    fmuls 31, 1, 0
    bl fn_8002A1F8
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC84282C8 # lfd f2, lbl_8053B268@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC00282E4 # lfs f0, lbl_8053B284@sda21(r0)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 31, 31, 0
L_80037C44:
    fmr 1, 31
    bl __cvt_fp2unsigned
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80037C64:
    mulli 4, 4, 0xc
    cmplwi 5, 0x0
    addi 4, 4, 0x9c
    add 4, 3, 4
    stfs 1, 0x4(4)
    .4byte 0x4082000C # bne .L_80037C84
    lfs 0, 0x4(4)
    stfs 0, 0x0(4)
L_80037C84:
    stw 5, 0x8(4)
    blr

fn_80037C8C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 20, 0x10(1)
    mr 23, 3
    mr 24, 4
    li 20, 0x0
    .4byte 0x48000044 # b .L_80037CEC
L_80037CAC:
    mr 21, 23
    clrlwi 22, 20, 24
    li 25, 0x0
    .4byte 0x48000024 # b .L_80037CDC
L_80037CBC:
    lwz 3, 0x170(21)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80037CD4
    mr 4, 22
    mr 5, 24
    bl fn_80039454
L_80037CD4:
    addi 21, 21, 0x4
    addi 25, 25, 0x1
L_80037CDC:
    lwz 0, 0x1d0(23)
    cmplw 25, 0
    .4byte 0x4180FFD8 # blt .L_80037CBC
    addi 20, 20, 0x1
L_80037CEC:
    clrlwi 0, 20, 24
    cmplwi 0, 0x8
    .4byte 0x4180FFB8 # blt .L_80037CAC
    li 25, 0x0
    mr 26, 23
L_80037D00:
    lwz 20, 0x130(26)
    cmplwi 20, 0x0
    .4byte 0x418201F0 # beq .L_80037EF8
    lwz 0, 0x240(20)
    cmpwi 0, 0x1
    .4byte 0x408201E4 # bne .L_80037EF8
    li 27, 0x0
    .4byte 0x48000044 # b .L_80037D60
L_80037D20:
    mr 21, 20
    clrlwi 29, 27, 24
    li 28, 0x0
    .4byte 0x48000024 # b .L_80037D50
L_80037D30:
    lwz 3, 0x170(21)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80037D48
    mr 4, 29
    mr 5, 24
    bl fn_80039454
L_80037D48:
    addi 21, 21, 0x4
    addi 28, 28, 0x1
L_80037D50:
    lwz 0, 0x1d0(20)
    cmplw 28, 0
    .4byte 0x4180FFD8 # blt .L_80037D30
    addi 27, 27, 0x1
L_80037D60:
    clrlwi 0, 27, 24
    cmplwi 0, 0x8
    .4byte 0x4180FFB8 # blt .L_80037D20
    li 31, 0x0
    mr 27, 20
L_80037D74:
    lwz 28, 0x130(27)
    cmplwi 28, 0x0
    .4byte 0x4182016C # beq .L_80037EE8
    lwz 0, 0x240(28)
    cmpwi 0, 0x1
    .4byte 0x40820160 # bne .L_80037EE8
    li 29, 0x0
    .4byte 0x48000044 # b .L_80037DD4
L_80037D94:
    mr 21, 28
    clrlwi 23, 29, 24
    li 30, 0x0
    .4byte 0x48000024 # b .L_80037DC4
L_80037DA4:
    lwz 3, 0x170(21)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80037DBC
    mr 4, 23
    mr 5, 24
    bl fn_80039454
L_80037DBC:
    addi 21, 21, 0x4
    addi 30, 30, 0x1
L_80037DC4:
    lwz 0, 0x1d0(28)
    cmplw 30, 0
    .4byte 0x4180FFD8 # blt .L_80037DA4
    addi 29, 29, 0x1
L_80037DD4:
    clrlwi 0, 29, 24
    cmplwi 0, 0x8
    .4byte 0x4180FFB8 # blt .L_80037D94
    li 30, 0x0
L_80037DE4:
    lwz 29, 0x130(28)
    cmplwi 29, 0x0
    .4byte 0x418200EC # beq .L_80037ED8
    lwz 0, 0x240(29)
    cmpwi 0, 0x1
    .4byte 0x408200E0 # bne .L_80037ED8
    li 23, 0x0
    .4byte 0x48000044 # b .L_80037E44
L_80037E04:
    mr 20, 29
    clrlwi 21, 23, 24
    li 22, 0x0
    .4byte 0x48000024 # b .L_80037E34
L_80037E14:
    lwz 3, 0x170(20)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80037E2C
    mr 4, 21
    mr 5, 24
    bl fn_80039454
L_80037E2C:
    addi 20, 20, 0x4
    addi 22, 22, 0x1
L_80037E34:
    lwz 0, 0x1d0(29)
    cmplw 22, 0
    .4byte 0x4180FFD8 # blt .L_80037E14
    addi 23, 23, 0x1
L_80037E44:
    clrlwi 0, 23, 24
    cmplwi 0, 0x8
    .4byte 0x4180FFB8 # blt .L_80037E04
    li 23, 0x0
L_80037E54:
    lwz 20, 0x130(29)
    cmplwi 20, 0x0
    .4byte 0x4182006C # beq .L_80037EC8
    lwz 0, 0x240(20)
    cmpwi 0, 0x1
    .4byte 0x40820060 # bne .L_80037EC8
    li 21, 0x0
    .4byte 0x48000018 # b .L_80037E88
L_80037E74:
    mr 3, 20
    mr 5, 24
    clrlwi 4, 21, 24
    bl fn_8003744C
    addi 21, 21, 0x1
L_80037E88:
    clrlwi 0, 21, 24
    cmplwi 0, 0x8
    .4byte 0x4180FFE4 # blt .L_80037E74
    li 21, 0x0
L_80037E98:
    lwz 3, 0x130(20)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80037EB8
    lwz 0, 0x240(3)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80037EB8
    mr 4, 24
    bl fn_80037C8C
L_80037EB8:
    addi 21, 21, 0x1
    addi 20, 20, 0x4
    cmpwi 21, 0x10
    .4byte 0x4180FFD4 # blt .L_80037E98
L_80037EC8:
    addi 23, 23, 0x1
    addi 29, 29, 0x4
    cmpwi 23, 0x10
    .4byte 0x4180FF80 # blt .L_80037E54
L_80037ED8:
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x10
    .4byte 0x4180FF00 # blt .L_80037DE4
L_80037EE8:
    addi 31, 31, 0x1
    addi 27, 27, 0x4
    cmpwi 31, 0x10
    .4byte 0x4180FE80 # blt .L_80037D74
L_80037EF8:
    addi 25, 25, 0x1
    addi 26, 26, 0x4
    cmpwi 25, 0x10
    .4byte 0x4180FDFC # blt .L_80037D00
    lmw 20, 0x10(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80037F1C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    lbz 5, 0x244(3)
    rlwimi 5, 4, 6, 25, 25
    stb 5, 0x244(3)
    .4byte 0x4182000C # beq .L_80037F44
    li 4, 0xa
    bl fn_80037C8C
L_80037F44:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80037F54:
    mulli 0, 4, 0x18
    cmplwi 4, 0x0
    add 3, 3, 0
    stw 5, 0xec(3)
    beqlr
    stw 5, 0xf0(3)
    blr

fn_80037F70:
    lis 9, lbl_8045D368@ha
    addi 0, 3, 0x114
    addi 11, 9, lbl_8045D368@l
    lwz 9, 0x0(11)
    lfs 0, 0x4(11)
    stw 9, 0xe4(3)
    lwz 10, 0x8(11)
    stfs 0, 0xe8(3)
    lwz 9, 0xc(11)
    stw 10, 0xec(3)
    lfs 1, 0x10(11)
    stw 9, 0xf0(3)
    lfs 0, 0x14(11)
    stfs 1, 0xf4(3)
    stfs 0, 0xf8(3)
    stw 0, 0xec(3)
    sth 4, 0x116(3)
    sth 5, 0x11c(3)
    sth 6, 0x122(3)
    sth 7, 0x124(3)
    sth 8, 0x224(3)
    blr

fn_80037FC8:
    lha 0, 0x0(4)
    lha 5, 0x2(4)
    sth 0, 0x1f4(3)
    lha 0, 0x4(4)
    sth 5, 0x1f6(3)
    lha 5, 0x6(4)
    sth 0, 0x1f8(3)
    lha 0, 0x8(4)
    sth 5, 0x1fa(3)
    lha 5, 0xa(4)
    sth 0, 0x1fc(3)
    lha 0, 0xc(4)
    sth 5, 0x1fe(3)
    lha 4, 0xe(4)
    sth 0, 0x200(3)
    .4byte 0x800282E8 # lwz r0, lbl_8053B288@sda21(r0)
    sth 4, 0x202(3)
    lbz 4, 0x214(3)
    and 0, 4, 0
    stb 0, 0x214(3)
    lbz 0, 0x214(3)
    ori 0, 0, 0x8
    stb 0, 0x214(3)
    blr

fn_80038028:
    lha 0, 0x0(4)
    lha 5, 0x2(4)
    sth 0, 0x204(3)
    lha 0, 0x4(4)
    sth 5, 0x206(3)
    lha 5, 0x6(4)
    sth 0, 0x208(3)
    lha 0, 0x8(4)
    sth 5, 0x20a(3)
    lha 5, 0xa(4)
    sth 0, 0x20c(3)
    lha 0, 0xc(4)
    sth 5, 0x20e(3)
    lha 4, 0xe(4)
    sth 0, 0x210(3)
    .4byte 0x800282E8 # lwz r0, lbl_8053B288@sda21(r0)
    sth 4, 0x212(3)
    lbz 4, 0x214(3)
    or 0, 4, 0
    stb 0, 0x214(3)
    blr

fn_8003807C:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0x5c
    stw 0, 0x14(1)
    bl fn_800399B4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800380A0:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0x5c
    stw 0, 0x14(1)
    bl fn_80039A20
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800380C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    addi 3, 30, 0x5c
    bl fn_800399FC
    cmplwi 31, 0x0
    .4byte 0x4182000C # beq .L_800380F8
    cmplwi 31, 0x1
    .4byte 0x4082001C # bne .L_80038110
L_800380F8:
    cmplwi 31, 0x0
    mr 3, 30
    li 4, 0x3
    .4byte 0x40820008 # bne .L_8003810C
    li 4, 0x2
L_8003810C:
    bl fn_800334D0
L_80038110:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80038128:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0x5c
    stw 0, 0x14(1)
    bl fn_800399D8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003814C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 16, 0x10(1)
    mr 18, 3
    mr 31, 4
    li 17, 0x0
    mr 16, 18
    .4byte 0x48000020 # b .L_8003818C
L_80038170:
    lwz 3, 0x170(16)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80038184
    mr 4, 31
    bl fn_800394DC
L_80038184:
    addi 16, 16, 0x4
    addi 17, 17, 0x1
L_8003818C:
    lwz 0, 0x1d0(18)
    cmplw 17, 0
    .4byte 0x4180FFDC # blt .L_80038170
    li 26, 0x0
    mr 27, 18
L_800381A0:
    lwz 18, 0x130(27)
    cmplwi 18, 0x0
    .4byte 0x41820208 # beq .L_800383B0
    mr 17, 18
    li 16, 0x0
    .4byte 0x48000020 # b .L_800381D4
L_800381B8:
    lwz 3, 0x170(17)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800381CC
    mr 4, 31
    bl fn_800394DC
L_800381CC:
    addi 17, 17, 0x4
    addi 16, 16, 0x1
L_800381D4:
    lwz 0, 0x1d0(18)
    cmplw 16, 0
    .4byte 0x4180FFDC # blt .L_800381B8
    li 25, 0x0
    mr 28, 18
L_800381E8:
    lwz 29, 0x130(28)
    cmplwi 29, 0x0
    .4byte 0x418201B0 # beq .L_800383A0
    mr 17, 29
    li 16, 0x0
    .4byte 0x48000020 # b .L_8003821C
L_80038200:
    lwz 3, 0x170(17)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80038214
    mr 4, 31
    bl fn_800394DC
L_80038214:
    addi 17, 17, 0x4
    addi 16, 16, 0x1
L_8003821C:
    lwz 0, 0x1d0(29)
    cmplw 16, 0
    .4byte 0x4180FFDC # blt .L_80038200
    li 24, 0x0
L_8003822C:
    lwz 30, 0x130(29)
    cmplwi 30, 0x0
    .4byte 0x4182015C # beq .L_80038390
    mr 17, 30
    li 16, 0x0
    .4byte 0x48000020 # b .L_80038260
L_80038244:
    lwz 3, 0x170(17)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80038258
    mr 4, 31
    bl fn_800394DC
L_80038258:
    addi 17, 17, 0x4
    addi 16, 16, 0x1
L_80038260:
    lwz 0, 0x1d0(30)
    cmplw 16, 0
    .4byte 0x4180FFDC # blt .L_80038244
    li 23, 0x0
L_80038270:
    lwz 21, 0x130(30)
    cmplwi 21, 0x0
    .4byte 0x41820108 # beq .L_80038380
    mr 17, 21
    li 16, 0x0
    .4byte 0x48000020 # b .L_800382A4
L_80038288:
    lwz 3, 0x170(17)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003829C
    mr 4, 31
    bl fn_800394DC
L_8003829C:
    addi 17, 17, 0x4
    addi 16, 16, 0x1
L_800382A4:
    lwz 0, 0x1d0(21)
    cmplw 16, 0
    .4byte 0x4180FFDC # blt .L_80038288
    li 20, 0x0
L_800382B4:
    lwz 22, 0x130(21)
    cmplwi 22, 0x0
    .4byte 0x418200B4 # beq .L_80038370
    mr 17, 22
    li 16, 0x0
    .4byte 0x48000020 # b .L_800382E8
L_800382CC:
    lwz 3, 0x170(17)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800382E0
    mr 4, 31
    bl fn_800394DC
L_800382E0:
    addi 17, 17, 0x4
    addi 16, 16, 0x1
L_800382E8:
    lwz 0, 0x1d0(22)
    cmplw 16, 0
    .4byte 0x4180FFDC # blt .L_800382CC
    li 19, 0x0
L_800382F8:
    lwz 16, 0x130(22)
    cmplwi 16, 0x0
    .4byte 0x41820060 # beq .L_80038360
    mr 17, 16
    li 18, 0x0
    .4byte 0x48000020 # b .L_8003832C
L_80038310:
    lwz 3, 0x170(17)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80038324
    mr 4, 31
    bl fn_800394DC
L_80038324:
    addi 17, 17, 0x4
    addi 18, 18, 0x1
L_8003832C:
    lwz 0, 0x1d0(16)
    cmplw 18, 0
    .4byte 0x4180FFDC # blt .L_80038310
    li 17, 0x0
L_8003833C:
    lwz 3, 0x130(16)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80038350
    mr 4, 31
    bl fn_8003814C
L_80038350:
    addi 17, 17, 0x1
    addi 16, 16, 0x4
    cmpwi 17, 0x10
    .4byte 0x4180FFE0 # blt .L_8003833C
L_80038360:
    addi 19, 19, 0x1
    addi 22, 22, 0x4
    cmpwi 19, 0x10
    .4byte 0x4180FF8C # blt .L_800382F8
L_80038370:
    addi 20, 20, 0x1
    addi 21, 21, 0x4
    cmpwi 20, 0x10
    .4byte 0x4180FF38 # blt .L_800382B4
L_80038380:
    addi 23, 23, 0x1
    addi 30, 30, 0x4
    cmpwi 23, 0x10
    .4byte 0x4180FEE4 # blt .L_80038270
L_80038390:
    addi 24, 24, 0x1
    addi 29, 29, 0x4
    cmpwi 24, 0x10
    .4byte 0x4180FE90 # blt .L_8003822C
L_800383A0:
    addi 25, 25, 0x1
    addi 28, 28, 0x4
    cmpwi 25, 0x10
    .4byte 0x4180FE3C # blt .L_800381E8
L_800383B0:
    addi 26, 26, 0x1
    addi 27, 27, 0x4
    cmpwi 26, 0x10
    .4byte 0x4180FDE4 # blt .L_800381A0
    lmw 16, 0x10(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_800383D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi 0, 4, 24
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lbz 6, 0x244(3)
    extrwi 5, 6, 1, 24
    cmplw 5, 0
    .4byte 0x41820024 # beq .L_80038424
    rlwimi 6, 31, 7, 24, 24
    stb 6, 0x244(30)
    bl fn_8003814C
    clrlwi 0, 31, 24
    mr 3, 30
    cntlzw 0, 0
    srwi 4, 0, 5
    bl fn_800334D0
L_80038424:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003843C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 28, 3
    lwz 31, 0x12c(3)
    cmplwi 31, 0x0
    .4byte 0x41820138 # beq .L_80038590
    lwz 30, 0x12c(31)
    cmplwi 30, 0x0
    .4byte 0x41820114 # beq .L_80038578
    lwz 29, 0x12c(30)
    cmplwi 29, 0x0
    .4byte 0x418200F0 # beq .L_80038560
    lwz 27, 0x12c(29)
    cmplwi 27, 0x0
    .4byte 0x418200CC # beq .L_80038548
    lwz 26, 0x12c(27)
    cmplwi 26, 0x0
    .4byte 0x418200A8 # beq .L_80038530
    lwz 25, 0x12c(26)
    cmplwi 25, 0x0
    .4byte 0x41820084 # beq .L_80038518
    lwz 24, 0x12c(25)
    cmplwi 24, 0x0
    .4byte 0x41820060 # beq .L_80038500
    lwz 23, 0x12c(24)
    cmplwi 23, 0x0
    .4byte 0x4182003C # beq .L_800384E8
    lwz 3, 0x12c(23)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_800384D0
    bl fn_8003843C
    lbz 0, 0x22a(23)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_800384D8
L_800384D0:
    lbz 3, 0x22a(23)
    extsb 3, 3
L_800384D8:
    lbz 0, 0x22a(24)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_800384F0
L_800384E8:
    lbz 3, 0x22a(24)
    extsb 3, 3
L_800384F0:
    lbz 0, 0x22a(25)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_80038508
L_80038500:
    lbz 3, 0x22a(25)
    extsb 3, 3
L_80038508:
    lbz 0, 0x22a(26)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_80038520
L_80038518:
    lbz 3, 0x22a(26)
    extsb 3, 3
L_80038520:
    lbz 0, 0x22a(27)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_80038538
L_80038530:
    lbz 3, 0x22a(27)
    extsb 3, 3
L_80038538:
    lbz 0, 0x22a(29)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_80038550
L_80038548:
    lbz 3, 0x22a(29)
    extsb 3, 3
L_80038550:
    lbz 0, 0x22a(30)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_80038568
L_80038560:
    lbz 3, 0x22a(30)
    extsb 3, 3
L_80038568:
    lbz 0, 0x22a(31)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_80038580
L_80038578:
    lbz 3, 0x22a(31)
    extsb 3, 3
L_80038580:
    lbz 0, 0x22a(28)
    extsb 0, 0
    add 3, 0, 3
    .4byte 0x4800000C # b .L_80038598
L_80038590:
    lbz 3, 0x22a(28)
    extsb 3, 3
L_80038598:
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800385AC:
    stwu 1, -0x10(1)
    mflr 0
    lwz 4, 0x12c(3)
    stw 0, 0x14(1)
    cmplwi 4, 0x0
    stw 31, 0xc(1)
    .4byte 0x4182014C # beq .L_80038710
    lbz 0, 0x244(3)
    extrwi. 31, 0, 1, 25
    .4byte 0x40820138 # bne .L_80038708
    lwz 3, 0x12c(4)
    cmplwi 3, 0x0
    .4byte 0x41820124 # beq .L_80038700
    lbz 0, 0x244(4)
    extrwi. 31, 0, 1, 25
    .4byte 0x40820120 # bne .L_80038708
    lwz 4, 0x12c(3)
    cmplwi 4, 0x0
    .4byte 0x41820100 # beq .L_800386F4
    lbz 0, 0x244(3)
    extrwi. 31, 0, 1, 25
    .4byte 0x40820108 # bne .L_80038708
    lwz 3, 0x12c(4)
    cmplwi 3, 0x0
    .4byte 0x418200DC # beq .L_800386E8
    lbz 0, 0x244(4)
    extrwi. 31, 0, 1, 25
    .4byte 0x408200F0 # bne .L_80038708
    lwz 4, 0x12c(3)
    cmplwi 4, 0x0
    .4byte 0x418200B8 # beq .L_800386DC
    lbz 0, 0x244(3)
    extrwi. 31, 0, 1, 25
    .4byte 0x408200D8 # bne .L_80038708
    lwz 3, 0x12c(4)
    cmplwi 3, 0x0
    .4byte 0x41820094 # beq .L_800386D0
    lbz 0, 0x244(4)
    extrwi. 31, 0, 1, 25
    .4byte 0x408200C0 # bne .L_80038708
    lwz 4, 0x12c(3)
    cmplwi 4, 0x0
    .4byte 0x41820070 # beq .L_800386C4
    lbz 0, 0x244(3)
    extrwi. 31, 0, 1, 25
    .4byte 0x408200A8 # bne .L_80038708
    lwz 5, 0x12c(4)
    cmplwi 5, 0x0
    .4byte 0x4182004C # beq .L_800386B8
    lbz 0, 0x244(4)
    extrwi. 31, 0, 1, 25
    .4byte 0x40820090 # bne .L_80038708
    lwz 3, 0x12c(5)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_800386AC
    lbz 0, 0x244(5)
    li 31, 0x0
    extrwi. 0, 0, 1, 25
    .4byte 0x40820010 # bne .L_800386A4
    bl fn_800385AC
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80038708
L_800386A4:
    li 31, 0x1
    .4byte 0x48000060 # b .L_80038708
L_800386AC:
    lbz 0, 0x244(5)
    extrwi 31, 0, 1, 25
    .4byte 0x48000054 # b .L_80038708
L_800386B8:
    lbz 0, 0x244(4)
    extrwi 31, 0, 1, 25
    .4byte 0x48000048 # b .L_80038708
L_800386C4:
    lbz 0, 0x244(3)
    extrwi 31, 0, 1, 25
    .4byte 0x4800003C # b .L_80038708
L_800386D0:
    lbz 0, 0x244(4)
    extrwi 31, 0, 1, 25
    .4byte 0x48000030 # b .L_80038708
L_800386DC:
    lbz 0, 0x244(3)
    extrwi 31, 0, 1, 25
    .4byte 0x48000024 # b .L_80038708
L_800386E8:
    lbz 0, 0x244(4)
    extrwi 31, 0, 1, 25
    .4byte 0x48000018 # b .L_80038708
L_800386F4:
    lbz 0, 0x244(3)
    extrwi 31, 0, 1, 25
    .4byte 0x4800000C # b .L_80038708
L_80038700:
    lbz 0, 0x244(4)
    extrwi 31, 0, 1, 25
L_80038708:
    mr 3, 31
    .4byte 0x4800000C # b .L_80038718
L_80038710:
    lbz 0, 0x244(3)
    extrwi 3, 0, 1, 25
L_80038718:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003872C:
    sth 4, 0x226(3)
    li 4, 0x1
    lbz 0, 0x244(3)
    rlwimi 0, 4, 2, 29, 29
    stb 0, 0x244(3)
    blr

fn_80038744:
    stfs 1, 0x21c(3)
    li 4, 0x1
    lbz 0, 0x244(3)
    rlwimi 0, 4, 2, 29, 29
    stb 0, 0x244(3)
    blr

fn_8003875C:
    sth 4, 0x228(3)
    li 4, 0x1
    lbz 0, 0x244(3)
    rlwimi 0, 4, 2, 29, 29
    stb 0, 0x244(3)
    blr

fn_80038774:
    stwu 1, -0x20(1)
    mflr 0
    cmpwi 3, 0x2
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 4
    lwz 30, 0x4c(6)
    .4byte 0x418200F0 # beq .L_80038894
    .4byte 0x40800010 # bge .L_800387B8
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_800387C4
    .4byte 0x48000118 # b .L_800388CC
L_800387B8:
    cmpwi 3, 0x4
    .4byte 0x40800110 # bge .L_800388CC
    .4byte 0x480000B4 # b .L_80038874
L_800387C4:
    lfs 0, 0x20(31)
    stfs 0, 0x9c(28)
    lfs 0, 0x24(31)
    stfs 0, 0xa0(28)
    lfs 0, 0x28(31)
    stfs 0, 0xa4(28)
    lfs 0, 0x2c(31)
    stfs 0, 0xa8(28)
    lfs 0, 0x30(31)
    stfs 0, 0xac(28)
    lfs 0, 0x34(31)
    stfs 0, 0xb0(28)
    lfs 1, 0x1e4(30)
    lfs 0, 0x1e0(30)
    stfs 0, 0x68(28)
    stfs 1, 0x6c(28)
    lfs 1, 0x1ec(30)
    lfs 0, 0x1e8(30)
    stfs 0, 0x80(28)
    stfs 1, 0x84(28)
    lbz 0, 0x214(30)
    rlwinm. 0, 0, 0, 26, 26
    .4byte 0x41820010 # beq .L_8003882C
    mr 3, 29
    addi 4, 30, 0x204
    bl fn_8002D4C4
L_8003882C:
    lbz 0, 0x214(30)
    clrlwi. 0, 0, 27
    .4byte 0x41820010 # beq .L_80038844
    mr 3, 29
    addi 4, 30, 0x1f4
    bl fn_8002D508
L_80038844:
    lbz 4, 0x214(30)
    mr 3, 29
    bl fn_8002D48C
    .4byte 0xC02282EC # lfs f1, lbl_8053B28C@sda21(r0)
    mr 3, 29
    lfs 0, 0xd8(30)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    bl fn_8002D54C
    .4byte 0x4800005C # b .L_800388CC
L_80038874:
    mr 3, 28
    li 4, 0x0
    bl fn_8002AD9C
    mr 3, 28
    bl fn_8002C19C
    li 0, 0x0
    stw 0, 0x0(31)
    .4byte 0x4800003C # b .L_800388CC
L_80038894:
    li 0, 0x8
    mr 3, 31
    li 4, 0x0
    mtctr 0
L_800388A4:
    lwz 0, 0x0(3)
    cmplw 28, 0
    .4byte 0x40820014 # bne .L_800388C0
    slwi 0, 4, 2
    li 3, 0x0
    stwx 3, 31, 0
    .4byte 0x48000010 # b .L_800388CC
L_800388C0:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
    .4byte 0x4200FFDC # bdnz .L_800388A4
L_800388CC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800388EC:
    .4byte 0x48000008 # b .L_800388F4
L_800388F0:
    mr 3, 0
L_800388F4:
    lwz 0, 0x12c(3)
    cmplwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_800388F0
    blr

fn_80038904:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stfd 29, 0x90(1)
    psq_st 29, 0x98(1), 0, 0
    stfd 28, 0x80(1)
    psq_st 28, 0x88(1), 0, 0
    stfd 27, 0x70(1)
    psq_st 27, 0x78(1), 0, 0
    stmw 14, 0x28(1)
    lbz 0, 0x244(3)
    mr 4, 3
    stw 3, 0x8(1)
    extrwi. 0, 0, 1, 24
    .4byte 0x4182000C # beq .L_80038958
    li 3, 0x0
    .4byte 0x480006D0 # b .L_80039024
L_80038958:
    bl fn_800333D8
    li 0, 0x2
    lwz 7, 0x8(1)
    .4byte 0xC82282C8 # lfd f1, lbl_8053B268@sda21(r0)
    li 6, 0x0
    lis 5, 0x4330
    mtctr 0
L_80038974:
    lwz 0, 0xa4(7)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_800389B4
    stw 0, 0x1c(1)
    lfs 3, 0x9c(7)
    stw 5, 0x18(1)
    lfs 2, 0xa0(7)
    lfd 0, 0x18(1)
    fsubs 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0x9c(7)
    lwz 4, 0xa4(7)
    subi 0, 4, 0x1
    stw 0, 0xa4(7)
L_800389B4:
    lwz 0, 0xb0(7)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_800389F4
    stw 0, 0x1c(1)
    lfs 3, 0xa8(7)
    stw 5, 0x18(1)
    lfs 2, 0xac(7)
    lfd 0, 0x18(1)
    fsubs 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0xa8(7)
    lwz 4, 0xb0(7)
    subi 0, 4, 0x1
    stw 0, 0xb0(7)
L_800389F4:
    lwz 0, 0xbc(7)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80038A34
    stw 0, 0x1c(1)
    lfs 3, 0xb4(7)
    stw 5, 0x18(1)
    lfs 2, 0xb8(7)
    lfd 0, 0x18(1)
    fsubs 2, 2, 3
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fadds 0, 3, 0
    stfs 0, 0xb4(7)
    lwz 4, 0xbc(7)
    subi 0, 4, 0x1
    stw 0, 0xbc(7)
L_80038A34:
    addi 7, 7, 0x24
    addi 6, 6, 0x2
    .4byte 0x4200FF38 # bdnz .L_80038974
    lwz 4, 0x8(1)
    cmpwi 3, 0x0
    lwz 3, 0x8(1)
    lbz 0, 0x244(4)
    li 4, 0x1
    rlwimi 0, 4, 2, 29, 29
    stb 0, 0x244(3)
    .4byte 0x4080000C # bge .L_80038A68
    li 3, -0x1
    .4byte 0x480005C0 # b .L_80039024
L_80038A68:
    li 14, 0x0
    mr 16, 3
L_80038A70:
    lwz 15, 0x130(16)
    cmplwi 15, 0x0
    .4byte 0x41820598 # beq .L_80039010
    lwz 0, 0x240(15)
    cmpwi 0, 0x1
    .4byte 0x4082058C # bne .L_80039010
    lbz 0, 0x244(15)
    extrwi. 0, 0, 1, 24
    .4byte 0x4182000C # beq .L_80038A9C
    li 0, 0x0
    .4byte 0x480000BC # b .L_80038B54
L_80038A9C:
    mr 3, 15
    mr 4, 15
    bl fn_800333D8
    mr 17, 3
    mr 3, 15
    bl fn_80037578
    lbz 0, 0x244(15)
    li 3, 0x1
    rlwimi 0, 3, 2, 29, 29
    cmpwi 17, 0x0
    stb 0, 0x244(15)
    .4byte 0x4080000C # bge .L_80038AD4
    li 0, -0x1
    .4byte 0x48000084 # b .L_80038B54
L_80038AD4:
    li 18, 0x0
    mr 19, 15
L_80038ADC:
    lwz 17, 0x130(19)
    cmplwi 17, 0x0
    .4byte 0x4182005C # beq .L_80038B40
    lwz 0, 0x240(17)
    cmpwi 0, 0x1
    .4byte 0x40820050 # bne .L_80038B40
    mr 3, 17
    bl fn_80038904
    cmpwi 3, 0x0
    .4byte 0x40800040 # bge .L_80038B40
    mr 3, 15
    bl fn_800388EC
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    li 4, 0x0
    bl fn_800378A0
    mr 3, 17
    bl fn_80036898
    lbz 0, 0x244(17)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820018 # beq .L_80038B40
    mr 3, 17
    li 4, 0x1
    bl fn_8003626C
    li 0, 0x0
    stw 0, 0x130(19)
L_80038B40:
    addi 18, 18, 0x1
    addi 19, 19, 0x4
    cmpwi 18, 0x10
    .4byte 0x4180FF90 # blt .L_80038ADC
    li 0, 0x0
L_80038B54:
    cmpwi 0, 0x0
    .4byte 0x408004B8 # bge .L_80039010
    lwz 17, 0x8(1)
    .4byte 0x48000008 # b .L_80038B68
L_80038B64:
    mr 17, 0
L_80038B68:
    lwz 0, 0x12c(17)
    cmplwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_80038B64
    lbz 3, 0x244(17)
    li 0, 0x0
    extrwi. 30, 3, 1, 29
    rlwimi 3, 0, 2, 29, 29
    stb 3, 0x244(17)
    .4byte 0x41820010 # beq .L_80038B98
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    mr 3, 17
    bl fn_80037664
L_80038B98:
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    li 31, 0x0
    lfs 0, 0x218(17)
    fmuls 31, 1, 0
L_80038BA8:
    lwz 18, 0x130(17)
    cmplwi 18, 0x0
    .4byte 0x418201CC # beq .L_80038D7C
    lwz 0, 0x240(18)
    cmpwi 0, 0x1
    .4byte 0x408201C0 # bne .L_80038D7C
    cmplwi 30, 0x0
    mr 28, 30
    .4byte 0x4082000C # bne .L_80038BD4
    lbz 0, 0x244(18)
    extrwi 28, 0, 1, 29
L_80038BD4:
    lbz 3, 0x244(18)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 28, 24
    stb 3, 0x244(18)
    .4byte 0x41820010 # beq .L_80038BF8
    fmr 1, 31
    mr 3, 18
    bl fn_80037664
L_80038BF8:
    lfs 0, 0x218(18)
    li 29, 0x0
    fmuls 30, 31, 0
L_80038C04:
    lwz 19, 0x130(18)
    cmplwi 19, 0x0
    .4byte 0x41820160 # beq .L_80038D6C
    lwz 0, 0x240(19)
    cmpwi 0, 0x1
    .4byte 0x40820154 # bne .L_80038D6C
    clrlwi. 0, 28, 24
    mr 26, 28
    .4byte 0x4082000C # bne .L_80038C30
    lbz 0, 0x244(19)
    extrwi 26, 0, 1, 29
L_80038C30:
    lbz 3, 0x244(19)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 26, 24
    stb 3, 0x244(19)
    .4byte 0x41820010 # beq .L_80038C54
    fmr 1, 30
    mr 3, 19
    bl fn_80037664
L_80038C54:
    lfs 0, 0x218(19)
    li 27, 0x0
    fmuls 29, 30, 0
L_80038C60:
    lwz 20, 0x130(19)
    cmplwi 20, 0x0
    .4byte 0x418200F4 # beq .L_80038D5C
    lwz 0, 0x240(20)
    cmpwi 0, 0x1
    .4byte 0x408200E8 # bne .L_80038D5C
    clrlwi. 0, 26, 24
    mr 24, 26
    .4byte 0x4082000C # bne .L_80038C8C
    lbz 0, 0x244(20)
    extrwi 24, 0, 1, 29
L_80038C8C:
    lbz 3, 0x244(20)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 24, 24
    stb 3, 0x244(20)
    .4byte 0x41820010 # beq .L_80038CB0
    fmr 1, 29
    mr 3, 20
    bl fn_80037664
L_80038CB0:
    lfs 0, 0x218(20)
    li 25, 0x0
    fmuls 28, 29, 0
L_80038CBC:
    lwz 21, 0x130(20)
    cmplwi 21, 0x0
    .4byte 0x41820088 # beq .L_80038D4C
    lwz 0, 0x240(21)
    cmpwi 0, 0x1
    .4byte 0x4082007C # bne .L_80038D4C
    clrlwi. 0, 24, 24
    mr 22, 24
    .4byte 0x4082000C # bne .L_80038CE8
    lbz 0, 0x244(21)
    extrwi 22, 0, 1, 29
L_80038CE8:
    lbz 3, 0x244(21)
    li 4, 0x0
    rlwimi 3, 4, 2, 29, 29
    clrlwi. 0, 22, 24
    stb 3, 0x244(21)
    .4byte 0x41820010 # beq .L_80038D0C
    fmr 1, 28
    mr 3, 21
    bl fn_80037664
L_80038D0C:
    lfs 0, 0x218(21)
    li 23, 0x0
    fmuls 27, 28, 0
L_80038D18:
    lwz 3, 0x130(21)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80038D3C
    lwz 0, 0x240(3)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80038D3C
    fmr 1, 27
    mr 4, 22
    bl fn_800378A0
L_80038D3C:
    addi 23, 23, 0x1
    addi 21, 21, 0x4
    cmpwi 23, 0x10
    .4byte 0x4180FFD0 # blt .L_80038D18
L_80038D4C:
    addi 25, 25, 0x1
    addi 20, 20, 0x4
    cmpwi 25, 0x10
    .4byte 0x4180FF64 # blt .L_80038CBC
L_80038D5C:
    addi 27, 27, 0x1
    addi 19, 19, 0x4
    cmpwi 27, 0x10
    .4byte 0x4180FEF8 # blt .L_80038C60
L_80038D6C:
    addi 29, 29, 0x1
    addi 18, 18, 0x4
    cmpwi 29, 0x10
    .4byte 0x4180FE8C # blt .L_80038C04
L_80038D7C:
    addi 31, 31, 0x1
    addi 17, 17, 0x4
    cmpwi 31, 0x10
    .4byte 0x4180FE20 # blt .L_80038BA8
    li 18, 0x0
    mr 21, 15
L_80038D94:
    lwz 17, 0x130(21)
    cmplwi 17, 0x0
    .4byte 0x418201A0 # beq .L_80038F3C
    li 19, 0x0
    mr 20, 17
L_80038DA8:
    lwz 23, 0x130(20)
    cmplwi 23, 0x0
    .4byte 0x418200DC # beq .L_80038E8C
    li 25, 0x0
    mr 26, 23
    mr 22, 25
L_80038DC0:
    lwz 24, 0x130(26)
    cmplwi 24, 0x0
    .4byte 0x41820028 # beq .L_80038DF0
    mr 3, 24
    bl fn_80036898
    lbz 0, 0x244(24)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820014 # beq .L_80038DF0
    mr 3, 24
    li 4, 0x1
    bl fn_8003626C
    stw 22, 0x130(26)
L_80038DF0:
    addi 25, 25, 0x1
    addi 26, 26, 0x4
    cmpwi 25, 0x10
    .4byte 0x4180FFC4 # blt .L_80038DC0
    mr 24, 23
    li 22, 0x0
    .4byte 0x4800001C # b .L_80038E24
L_80038E0C:
    lwz 3, 0x170(24)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80038E1C
    bl fn_800393D8
L_80038E1C:
    addi 24, 24, 0x4
    addi 22, 22, 0x1
L_80038E24:
    lwz 0, 0x1d0(23)
    cmplw 22, 0
    .4byte 0x4180FFE0 # blt .L_80038E0C
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x12c(23)
    stw 0, 0x240(23)
    lbz 0, 0x244(23)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820044 # beq .L_80038E8C
    cmplwi 23, 0x0
    .4byte 0x41820034 # beq .L_80038E84
    li 22, 0x1
    addi 24, 23, 0x4
L_80038E5C:
    lwz 3, 0x170(24)
    li 4, 0x50
    bl fn_800398E8
    addi 22, 22, 0x1
    addi 24, 24, 0x4
    cmpwi 22, 0x4
    .4byte 0x4180FFE8 # blt .L_80038E5C
    mr 3, 23
    li 4, 0x250
    bl fn_80039890
L_80038E84:
    li 0, 0x0
    stw 0, 0x130(20)
L_80038E8C:
    addi 19, 19, 0x1
    addi 20, 20, 0x4
    cmpwi 19, 0x10
    .4byte 0x4180FF10 # blt .L_80038DA8
    mr 20, 17
    li 19, 0x0
    .4byte 0x4800001C # b .L_80038EC0
L_80038EA8:
    lwz 3, 0x170(20)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80038EB8
    bl fn_800393D8
L_80038EB8:
    addi 20, 20, 0x4
    addi 19, 19, 0x1
L_80038EC0:
    lwz 0, 0x1d0(17)
    cmplw 19, 0
    .4byte 0x4180FFE0 # blt .L_80038EA8
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x12c(17)
    stw 0, 0x240(17)
    lbz 0, 0x244(17)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820058 # beq .L_80038F3C
    cmplwi 17, 0x0
    .4byte 0x41820048 # beq .L_80038F34
    lis 3, lbl_804B21AC@ha
    addi 22, 17, 0x4
    addi 19, 3, lbl_804B21AC@l
    li 20, 0x1
L_80038F00:
    lwz 4, 0x170(22)
    mr 3, 19
    li 5, 0x50
    bl fn_80039830
    addi 20, 20, 0x1
    addi 22, 22, 0x4
    cmpwi 20, 0x4
    .4byte 0x4180FFE4 # blt .L_80038F00
    lis 3, lbl_804B21BC@ha
    mr 4, 17
    addi 3, 3, lbl_804B21BC@l
    li 5, 0x250
    bl fn_800397D0
L_80038F34:
    li 0, 0x0
    stw 0, 0x130(21)
L_80038F3C:
    addi 18, 18, 0x1
    addi 21, 21, 0x4
    cmpwi 18, 0x10
    .4byte 0x4180FE4C # blt .L_80038D94
    mr 18, 15
    li 17, 0x0
    .4byte 0x4800001C # b .L_80038F70
L_80038F58:
    lwz 3, 0x170(18)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80038F68
    bl fn_800393D8
L_80038F68:
    addi 18, 18, 0x4
    addi 17, 17, 0x1
L_80038F70:
    lwz 0, 0x1d0(15)
    cmplw 17, 0
    .4byte 0x4180FFE0 # blt .L_80038F58
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x12c(15)
    stw 0, 0x240(15)
    lbz 0, 0x244(15)
    extrwi. 0, 0, 1, 27
    .4byte 0x4182007C # beq .L_80039010
    cmplwi 15, 0x0
    .4byte 0x4182006C # beq .L_80039008
    lis 3, lbl_804B21AC@ha
    addi 20, 15, 0x4
    addi 17, 3, lbl_804B21AC@l
    li 18, 0x1
L_80038FB0:
    lwz 19, 0x170(20)
    bl OSDisableInterrupts
    stw 3, 0x10(1)
    mr 3, 17
    mr 4, 19
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0x10(1)
    bl OSRestoreInterrupts
    addi 18, 18, 0x1
    addi 20, 20, 0x4
    cmpwi 18, 0x4
    .4byte 0x4180FFD0 # blt .L_80038FB0
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0xc(1)
    addi 3, 4, lbl_804B21BC@l
    li 5, 0x250
    mr 4, 15
    bl fn_80028AD8
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
L_80039008:
    li 0, 0x0
    stw 0, 0x130(16)
L_80039010:
    addi 14, 14, 0x1
    addi 16, 16, 0x4
    cmpwi 14, 0x10
    .4byte 0x4180FA54 # blt .L_80038A70
    li 3, 0x0
L_80039024:
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    psq_l 29, 0x98(1), 0, 0
    lfd 29, 0x90(1)
    psq_l 28, 0x88(1), 0, 0
    lfd 28, 0x80(1)
    psq_l 27, 0x78(1), 0, 0
    lfd 27, 0x70(1)
    lmw 14, 0x28(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_80039060:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    lbz 0, 0x244(3)
    mr 31, 3
    extrwi. 0, 0, 1, 30
    .4byte 0x4182005C # beq .L_800390E0
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    li 4, 0x1
    bl fn_800378A0
    mr 3, 31
    bl fn_80036898
    li 3, -0x1
    .4byte 0x48000074 # b .L_80039114
L_800390A4:
    lfs 0, 0x1d8(31)
    mr 3, 31
    fsubs 0, 0, 31
    stfs 0, 0x1d8(31)
    bl fn_80038904
    cmpwi 3, 0x0
    .4byte 0x40800028 # bge .L_800390E4
    .4byte 0xC02282BC # lfs f1, lbl_8053B25C@sda21(r0)
    mr 3, 31
    li 4, 0x0
    bl fn_800378A0
    mr 3, 31
    bl fn_80036898
    li 3, -0x1
    .4byte 0x48000038 # b .L_80039114
L_800390E0:
    .4byte 0xC3E282BC # lfs f31, lbl_8053B25C@sda21(r0)
L_800390E4:
    lfs 2, 0x1d8(31)
    fcmpo cr0, 2, 31
    cror eq, gt, eq
    .4byte 0x4182FFB4 # beq .L_800390A4
    lfs 0, 0x1dc(31)
    fmr 1, 31
    mr 3, 31
    li 4, 0x0
    fadds 0, 2, 0
    stfs 0, 0x1d8(31)
    bl fn_800378A0
    li 3, 0x0
L_80039114:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80039130:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_800391E0
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80039154:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8003919C
    lis 3, fn_80039130@ha
    mr 4, 30
    addi 3, 3, fn_80039130@l
    bl fn_8002C420
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_800391C8
    li 0, 0x1
    stb 0, 0xc(30)
L_8003919C:
    addi 0, 30, 0x4
    mr 4, 30
    stw 0, 0xc(1)
    addi 3, 1, 0x10
    addi 5, 1, 0x14
    addi 6, 31, 0x248
    stw 0, 0x8(1)
    stw 0, 0x1c(1)
    stw 0, 0x18(1)
    stw 0, 0x14(1)
    bl fn_80087950
L_800391C8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_800391E0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 24, 0x40(1)
    mr 31, 3
    addi 30, 31, 0x4
    stw 30, 0x1c(1)
    stw 30, 0x18(1)
    stw 30, 0x30(1)
    stw 30, 0x2c(1)
    lwz 0, 0x4(3)
    stw 30, 0x14(1)
    stw 0, 0x24(1)
    stw 0, 0x20(1)
    stw 0, 0x34(1)
    .4byte 0x480000B0 # b .L_800392CC
L_80039220:
    lwz 4, 0x34(1)
    lwz 3, 0x34(1)
    lwz 26, 0x0(4)
    subi 24, 3, 0x248
    mr 3, 24
    bl fn_80039060
    cmpwi 3, 0x0
    .4byte 0x4080008C # bge .L_800392C8
    mr 3, 31
    addi 4, 24, 0x248
    bl fn_800879A0
    lbz 0, 0x244(24)
    extrwi. 0, 0, 1, 27
    .4byte 0x41820074 # beq .L_800392C8
    cmplwi 24, 0x0
    .4byte 0x4182006C # beq .L_800392C8
    lis 3, lbl_804B21AC@ha
    addi 25, 24, 0x4
    addi 29, 3, lbl_804B21AC@l
    li 28, 0x1
L_80039270:
    lwz 27, 0x170(25)
    bl OSDisableInterrupts
    stw 3, 0xc(1)
    mr 3, 29
    mr 4, 27
    li 5, 0x50
    bl fn_80028AD8
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    addi 28, 28, 0x1
    addi 25, 25, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFD0 # blt .L_80039270
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21BC@l
    li 5, 0x250
    mr 4, 24
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_800392C8:
    stw 26, 0x34(1)
L_800392CC:
    lwz 0, 0x34(1)
    cmplw 0, 30
    stw 0, 0x28(1)
    stw 0, 0x10(1)
    .4byte 0x4082FF44 # bne .L_80039220
    lmw 24, 0x40(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_800392F4:
    .4byte 0xC04282BC # lfs f2, lbl_8053B25C@sda21(r0)
    li 0, 0x0
    .4byte 0xC02282B8 # lfs f1, lbl_8053B258@sda21(r0)
    stfs 2, 0x20(3)
    .4byte 0xC00282C0 # lfs f0, lbl_8053B260@sda21(r0)
    stfs 2, 0x24(3)
    stfs 1, 0x28(3)
    stfs 0, 0x2c(3)
    stfs 1, 0x30(3)
    stfs 1, 0x34(3)
    stw 0, 0x48(3)
    stw 4, 0x4c(3)
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    stw 0, 0x18(3)
    stw 0, 0x1c(3)
    sth 0, 0x38(3)
    sth 0, 0x3a(3)
    sth 0, 0x3c(3)
    sth 0, 0x3e(3)
    sth 0, 0x40(3)
    sth 0, 0x42(3)
    sth 0, 0x44(3)
    sth 0, 0x46(3)
    blr

fn_80039368:
    li 0, 0x0
    .4byte 0xC04282BC # lfs f2, lbl_8053B25C@sda21(r0)
    stw 0, 0x48(3)
    .4byte 0xC02282B8 # lfs f1, lbl_8053B258@sda21(r0)
    stfs 2, 0x20(3)
    .4byte 0xC00282C0 # lfs f0, lbl_8053B260@sda21(r0)
    stfs 2, 0x24(3)
    stfs 1, 0x28(3)
    stfs 0, 0x2c(3)
    stfs 1, 0x30(3)
    stfs 1, 0x34(3)
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stw 0, 0x14(3)
    stw 0, 0x18(3)
    stw 0, 0x1c(3)
    sth 0, 0x38(3)
    sth 0, 0x3a(3)
    sth 0, 0x3c(3)
    sth 0, 0x3e(3)
    sth 0, 0x40(3)
    sth 0, 0x42(3)
    sth 0, 0x44(3)
    sth 0, 0x46(3)
    blr

fn_800393D8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
L_80039400:
    lwz 28, 0x0(30)
    cmplwi 28, 0x0
    .4byte 0x4182001C # beq .L_80039424
    mr 3, 28
    li 4, 0x0
    bl fn_8002AD9C
    mr 3, 28
    bl fn_8002C19C
    stw 31, 0x0(30)
L_80039424:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x8
    .4byte 0x4180FFD0 # blt .L_80039400
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80039454:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    slwi 31, 4, 2
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwzx 30, 29, 31
    cmplwi 30, 0x0
    .4byte 0x4082000C # bne .L_80039488
    li 3, 0x0
    .4byte 0x4800003C # b .L_800394C0
L_80039488:
    clrlwi. 0, 5, 16
    .4byte 0x40820014 # bne .L_800394A0
    mr 3, 30
    li 4, 0x0
    bl fn_8002AD9C
    .4byte 0x48000010 # b .L_800394AC
L_800394A0:
    mr 3, 30
    mr 4, 5
    bl fn_8002AD9C
L_800394AC:
    mr 3, 30
    bl fn_8002C19C
    li 0, 0x0
    li 3, 0x1
    stwx 0, 29, 31
L_800394C0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800394DC:
    lwz 5, 0x0(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_800394EC
    stb 4, 0x4(5)
L_800394EC:
    lwz 5, 0x4(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_800394FC
    stb 4, 0x4(5)
L_800394FC:
    lwzu 5, 0x8(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_8003950C
    stb 4, 0x4(5)
L_8003950C:
    lwz 5, 0x4(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_8003951C
    stb 4, 0x4(5)
L_8003951C:
    lwz 5, 0x8(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_8003952C
    stb 4, 0x4(5)
L_8003952C:
    lwz 5, 0xc(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_8003953C
    stb 4, 0x4(5)
L_8003953C:
    lwz 5, 0x10(3)
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_8003954C
    stb 4, 0x4(5)
L_8003954C:
    lwz 5, 0x14(3)
    cmplwi 5, 0x0
    beqlr
    stb 4, 0x4(5)
    blr

fn_80039560:
    .4byte 0xC00282B8 # lfs f0, lbl_8053B258@sda21(r0)
    li 0, 0x0
    stfs 0, 0x0(3)
    stfs 0, 0x4(3)
    stw 0, 0x8(3)
    blr

fn_80039578:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8052E330@ha
    lis 3, lbl_80493660@ha
    stw 0, 0x14(1)
    addi 6, 4, lbl_8052E330@l
    addi 5, 3, lbl_80493660@l
    lis 4, lbl_80493654@ha
    stw 31, 0xc(1)
    li 0, 0x100
    addi 3, 6, 0xc
    addi 4, 4, lbl_80493654@l
    stw 30, 0x8(1)
    mr 30, 6
    stw 5, 0x0(6)
    lis 5, lbl_804B2940@ha
    addi 31, 5, lbl_804B2940@l
    stw 4, 0x0(6)
    li 4, 0x0
    li 5, 0x400
    stw 3, 0x4(6)
    stw 0, 0x8(6)
    bl memset
    lis 3, lbl_8052E330@ha
    addi 3, 3, lbl_8052E330@l
    addic. 5, 3, 0x40c
    .4byte 0x41820008 # beq .L_800395E8
    subi 5, 5, 0x40c
L_800395E8:
    lis 4, lbl_80493648@ha
    .4byte 0x90AD86E4 # stw r5, lbl_8053A2A4@sda21(r0)
    addi 0, 4, lbl_80493648@l
    lis 3, fn_8003975C@ha
    stw 0, 0x0(30)
    addi 4, 3, fn_8003975C@l
    mr 3, 30
    addi 5, 31, 0x0
    bl __register_global_object
    lis 3, lbl_8052E77C@ha
    lis 4, fn_80039704@ha
    addi 3, 3, lbl_8052E77C@l
    li 0, 0x0
    stw 0, 0x8(3)
    addi 6, 3, 0x4
    addi 4, 4, fn_80039704@l
    addi 5, 31, 0xc
    stw 0, 0x4(3)
    stw 0, 0x0(3)
    stw 6, 0x0(6)
    stw 6, 0x8(3)
    stb 0, 0xc(3)
    bl __register_global_object
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003967C
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8003967C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800396B4
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_800396B4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_800396EC
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_800396EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80039704:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820020 # beq .L_80039740
    .4byte 0x4182000C # beq .L_80039730
    li 4, 0x0
    bl fn_80087868
L_80039730:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80039740
    mr 3, 30
    bl dtor_80084580
L_80039740:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003975C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820048 # beq .L_800397B8
    lis 3, lbl_80493648@ha
    addic. 0, 31, 0x40c
    addi 0, 3, lbl_80493648@l
    stw 0, 0x0(31)
    .4byte 0x41820024 # beq .L_800397A8
    addic. 3, 31, 0x40c
    .4byte 0x41820008 # beq .L_80039794
    subi 3, 3, 0x40c
L_80039794:
    .4byte 0x800D86E4 # lwz r0, lbl_8053A2A4@sda21(r0)
    cmplw 0, 3
    .4byte 0x4082000C # bne .L_800397A8
    li 0, 0x0
    .4byte 0x900D86E4 # stw r0, lbl_8053A2A4@sda21(r0)
L_800397A8:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_800397B8
    mr 3, 31
    bl dtor_80084580
L_800397B8:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_800397D0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80039830:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80039890:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21BC@l
    mr 5, 31
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_800398E8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    bl OSDisableInterrupts
    lis 4, lbl_804B21AC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21AC@l
    mr 5, 31
    mr 4, 30
    bl fn_80028AD8
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80039940:
    lwz 0, 0x8(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_80039954
    li 3, 0x0
    blr
L_80039954:
    lwz 3, 0x4(3)
    slwi 0, 4, 2
    lwzx 3, 3, 0
    blr

fn_80039964:
    li 0, 0x0
    sth 0, 0x4(3)
    sth 0, 0x6(3)
    sth 0, 0x8(3)
    sth 0, 0xa(3)
    sth 0, 0xc(3)
    sth 0, 0xe(3)
    sth 0, 0x10(3)
    sth 0, 0x12(3)
    sth 0, 0x14(3)
    sth 0, 0x16(3)
    sth 0, 0x18(3)
    sth 0, 0x1a(3)
    sth 0, 0x1c(3)
    sth 0, 0x1e(3)
    sth 0, 0x20(3)
    sth 0, 0x22(3)
    sth 0, 0x0(3)
    sth 0, 0x2(3)
    blr

fn_800399B4:
    li 0, 0x1
    lhz 6, 0x0(3)
    slw 5, 0, 4
    slwi 0, 4, 1
    andc 4, 6, 5
    sth 4, 0x0(3)
    add 3, 3, 0
    lhz 3, 0x4(3)
    blr

fn_800399D8:
    li 0, 0x1
    lhz 6, 0x2(3)
    slw 5, 0, 4
    slwi 0, 4, 1
    andc 4, 6, 5
    sth 4, 0x2(3)
    add 3, 3, 0
    lhz 3, 0x4(3)
    blr

fn_800399FC:
    li 0, 0x1
    lhz 7, 0x0(3)
    slw 6, 0, 4
    slwi 0, 4, 1
    or 4, 7, 6
    sth 4, 0x0(3)
    add 3, 3, 0
    sth 5, 0x4(3)
    blr

fn_80039A20:
    li 0, 0x1
    lhz 7, 0x2(3)
    slw 6, 0, 4
    slwi 0, 4, 1
    or 4, 7, 6
    sth 4, 0x2(3)
    add 3, 3, 0
    sth 5, 0x4(3)
    blr

fn_80039A44:
    li 0, 0x1
    lhz 3, 0x0(3)
    slw 0, 0, 4
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_80039A64:
    li 0, 0x1
    lhz 3, 0x2(3)
    slw 0, 0, 4
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_80039A84:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_80039A94
    li 3, 0x0
    blr
L_80039A94:
    lis 3, lbl_8045D398@ha
    li 5, 0x1
    addi 3, 3, lbl_8045D398@l
    .4byte 0x380D87D8 # li r0, lbl_8053A398@sda21
    .4byte 0x906D87D8 # stw r3, lbl_8053A398@sda21(r0)
    li 3, 0x1
    stw 4, 0x18(7)
    stw 5, 0x20(7)
    stw 0, 0x1c(7)
    blr

fn_80039ABC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820030 # beq .L_80039B00
    lis 3, lbl_80493670@ha
    addi 0, 3, lbl_80493670@l
    stw 0, 0x0(31)
    .4byte 0x41820010 # beq .L_80039AF0
    lis 3, lbl_80491994@ha
    addi 0, 3, lbl_80491994@l
    stw 0, 0x0(31)
L_80039AF0:
    extsh. 0, 4
    .4byte 0x4081000C # ble .L_80039B00
    mr 3, 31
    bl dtor_80084580
L_80039B00:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80039B18:
    lis 3, 0x564f
    addi 3, 3, 0x4943
    blr

fn_80039B24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_80039B6C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    lis 5, lbl_804B2980@ha
    addi 3, 3, lbl_804B21CC@l
    addi 4, 4, fn_80021C64@l
    addi 5, 5, lbl_804B2980@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80039B6C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

pad_03_80039B7C_text:
    .4byte 0x00000000 /* invalid */

fn_80039B80:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_8002D574
    mr 0, 3
    addi 3, 1, 0x8
    rlwimi 0, 31, 16, 0, 15
    li 4, 0x0
    stw 0, 0x8(1)
    li 5, 0x0
    bl fn_80039E20
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

gap_03_80039BC8_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039BE0:
    li 0, 0x0
    .4byte 0x900D87E0 # stw r0, lbl_8053A3A0@sda21(r0)
    blr

gap_03_80039BEC_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039C00:
    stwu 1, -0x20(1)
    mflr 0
    li 8, 0x1
    stw 0, 0x24(1)
    clrlwi 0, 3, 16
    oris 9, 0, 0x8100
    lis 3, fn_80039BE0@ha
    stw 4, 0xc(1)
    addi 0, 3, fn_80039BE0@l
    addi 3, 1, 0x8
    li 4, 0x5
    stw 5, 0x10(1)
    mr 5, 0
    stw 9, 0x8(1)
    stw 6, 0x14(1)
    stw 7, 0x18(1)
    .4byte 0x910D87E0 # stw r8, lbl_8053A3A0@sda21(r0)
    bl fn_80039E20
L_80039C48:
    .4byte 0x800D87E0 # lwz r0, lbl_8053A3A0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4082FFF8 # bne .L_80039C48
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

gap_03_80039C64_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039C80:
    .4byte 0xC00282F0 # lfs f0, lbl_8053B290@sda21(r0)
    stwu 1, -0x10(1)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    .4byte 0xB00D8020 # sth r0, lbl_80539BE0@sda21(r0)
    addi 1, 1, 0x10
    blr

gap_03_80039CA4_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039CC0:
    stwu 1, -0x20(1)
    mflr 0
    clrlslwi 3, 3, 24, 16
    stw 0, 0x24(1)
    oris 3, 3, 0x8200
    .4byte 0xA00D8020 # lhz r0, lbl_80539BE0@sda21(r0)
    stw 4, 0xc(1)
    li 4, 0x3
    or 0, 3, 0
    addi 3, 1, 0x8
    stw 5, 0x10(1)
    li 5, 0x0
    stw 0, 0x8(1)
    bl fn_80039E20
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

gap_03_80039D08_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039D20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    nop
L_80039D30:
    bl fn_80051CC4
    cmplwi 3, 0x0
    .4byte 0x4182FFF8 # beq .L_80039D30
    bl fn_80051CD4
    bl fn_80051CC4
    bl fn_8003A500
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

gap_03_80039D58_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039D60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80039F20
    lis 4, lbl_804936A0@ha
    lis 3, lbl_804B2A00@ha
    addi 5, 4, lbl_804936A0@l
    lis 6, lbl_804B29A0@ha
    addi 4, 3, lbl_804B2A00@l
    lis 3, fn_80039D20@ha
    addi 9, 6, lbl_804B29A0@l
    li 6, 0x0
    addis 8, 5, 0x8000
    addis 5, 4, 0x8000
    addi 0, 3, fn_80039D20@l
    li 10, 0xf0
    li 7, 0x1d20
    li 4, 0x2000
    li 3, 0x10
    stw 10, 0x4(9)
    stw 8, 0xc(9)
    stw 7, 0x10(9)
    stw 6, 0x14(9)
    stw 5, 0x18(9)
    stw 4, 0x1c(9)
    stw 6, 0x20(9)
    sth 6, 0x24(9)
    sth 3, 0x26(9)
    stw 0, 0x28(9)
    stw 6, 0x2c(9)
    stw 6, 0x30(9)
    stw 31, 0x34(9)
    bl fn_80051D40
    lis 3, lbl_804B29A0@ha
    addi 3, 3, lbl_804B29A0@l
    bl fn_8003A0A0
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

gap_03_80039E0C_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039E20:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    addi 11, 1, 0x20
    bl _savegpr_26
    mr 26, 3
    mr 27, 4
    mr 30, 5
L_80039E40:
    bl fn_8003A4E0
    cmpwi 3, 0x0
    .4byte 0x4182FFF8 # beq .L_80039E40
    bl OSDisableInterrupts
    mr 29, 3
    bl fn_80051CB4
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80039E70
    mr 3, 29
    bl OSRestoreInterrupts
    li 3, -0x1
    .4byte 0x48000084 # b .L_80039EF0
L_80039E70:
    mr 3, 27
    bl fn_80051CEC
    bl fn_80051D00
    nop
L_80039E80:
    bl fn_80051CB4
    cmplwi 3, 0x0
    .4byte 0x4082FFF8 # bne .L_80039E80
    cmplwi 27, 0x0
    .4byte 0x40820008 # bne .L_80039E98
    li 27, 0x1
L_80039E98:
    cmplwi 30, 0x0
    .4byte 0x41820014 # beq .L_80039EB0
    lwz 3, 0x0(26)
    mr 4, 30
    bl fn_80039F60
    mr 28, 3
L_80039EB0:
    li 30, 0x0
    li 31, 0x0
    .4byte 0x48000024 # b .L_80039EDC
L_80039EBC:
    lwzx 3, 26, 31
    bl fn_80051CEC
    nop
L_80039EC8:
    bl fn_80051CB4
    cmplwi 3, 0x0
    .4byte 0x4082FFF8 # bne .L_80039EC8
    addi 30, 30, 0x1
    addi 31, 31, 0x4
L_80039EDC:
    cmplw 30, 27
    .4byte 0x4180FFDC # blt .L_80039EBC
    mr 3, 29
    bl OSRestoreInterrupts
    mr 3, 28
L_80039EF0:
    addi 11, 1, 0x20
    bl _restgpr_26
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

gap_03_80039F08_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039F20:
    li 3, 0x0
    lis 4, lbl_804B4A00@ha
    li 0, 0x10
    mr 6, 3
    addi 5, 4, lbl_804B4A00@l
    mtctr 0
L_80039F38:
    add 4, 5, 3
    addi 3, 3, 0x8
    stw 6, 0x4(4)
    .4byte 0x4200FFF4 # bdnz .L_80039F38
    blr

gap_03_80039F4C_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039F60:
    .4byte 0x80ED87EC # lwz r7, lbl_8053A3AC@sda21(r0)
    .4byte 0x800D87E8 # lwz r0, lbl_8053A3A8@sda21(r0)
    addi 6, 7, 0x1
    clrlwi 8, 6, 28
    cmplw 8, 0
    .4byte 0x4082000C # bne .L_80039F80
    li 3, 0x0
    blr
L_80039F80:
    lis 5, lbl_804B4A00@ha
    srwi 0, 3, 16
    slwi 7, 7, 3
    .4byte 0x910D87EC # stw r8, lbl_8053A3AC@sda21(r0)
    addi 5, 5, lbl_804B4A00@l
    mr 3, 6
    sthx 0, 5, 7
    add 5, 5, 7
    stw 4, 0x4(5)
    blr

gap_03_80039FA8_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_80039FC0:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B4A00@ha
    clrlwi 3, 3, 16
    stw 0, 0x14(1)
    addi 4, 4, lbl_804B4A00@l
    .4byte 0x80CD87E8 # lwz r6, lbl_8053A3A8@sda21(r0)
    slwi 5, 6, 3
    lhzx 0, 4, 5
    cmplw 3, 0
    .4byte 0x40820030 # bne .L_8003A018
    add 3, 4, 5
    lwz 12, 0x4(3)
    cmplwi 12, 0x0
    .4byte 0x41820010 # beq .L_8003A008
    clrlwi 3, 6, 16
    mtctr 12
    bctrl
L_8003A008:
    .4byte 0x806D87E8 # lwz r3, lbl_8053A3A8@sda21(r0)
    addi 0, 3, 0x1
    clrlwi 0, 0, 28
    .4byte 0x900D87E8 # stw r0, lbl_8053A3A8@sda21(r0)
L_8003A018:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

gap_03_8003A028_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_8003A040:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl OSDisableInterrupts
    mr 0, 3
    mr 3, 30
    mr 31, 0
    bl fn_80052180
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x0(30)
    mr 3, 31
    stw 0, 0x8(30)
    bl OSRestoreInterrupts
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003A0A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x800D87F8 # lwz r0, lbl_8053A3B8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8003A0D8
    lis 3, lbl_8045D3B0@ha
    addi 3, 3, lbl_8045D3B0@l
    crclr 6
    bl OSReport
    .4byte 0x48000030 # b .L_8003A104
L_8003A0D8:
    bl OSDisableInterrupts
    .4byte 0x93CD87F8 # stw r30, lbl_8053A3B8@sda21(r0)
    li 4, 0x0
    mr 31, 3
    li 0, 0x1
    stw 4, 0x0(30)
    mr 3, 30
    stw 0, 0x8(30)
    bl fn_80051FF4
    mr 3, 31
    bl OSRestoreInterrupts
L_8003A104:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

gap_03_8003A11C_text:
    .4byte 0x00000000 /* invalid */

fn_8003A120:
    stwu 1, -0x2e0(1)
    mflr 0
    lis 6, 0xcc00
    stw 0, 0x2e4(1)
    li 0, -0x29
    addi 3, 1, 0x8
    stw 31, 0x2dc(1)
    mr 31, 4
    lhz 5, 0x500a(6)
    clrlwi 4, 5, 16
    and 0, 4, 0
    ori 0, 0, 0x80
    sth 0, 0x500a(6)
    bl OSClearContext
    addi 3, 1, 0x8
    bl OSSetCurrentContext
    .4byte 0x880D87F0 # lbz r0, lbl_8053A3B0@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8003A178
    .4byte 0x880D87F0 # lbz r0, lbl_8053A3B0@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8003A180
L_8003A178:
    .4byte 0x800D87F8 # lwz r0, lbl_8053A3B8@sda21(r0)
    .4byte 0x900D8AD4 # stw r0, lbl_8053A694@sda21(r0)
L_8003A180:
    bl fn_80051CC4
    cmplwi 3, 0x0
    .4byte 0x4182FFF8 # beq .L_8003A180
    bl fn_80051CD4
    .4byte 0x80AD8AD4 # lwz r5, lbl_8053A694@sda21(r0)
    lwz 0, 0x8(5)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820018 # beq .L_8003A1B4
    addis 0, 3, 0x232f
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8003A1B4
    lis 3, 0xdcd1
    addi 3, 3, 0x3
L_8003A1B4:
    lis 4, 0xdcd1
    addi 0, 4, 0x3
    cmpw 3, 0
    .4byte 0x4182011C # beq .L_8003A2DC
    .4byte 0x40800020 # bge .L_8003A1E4
    addi 0, 4, 0x1
    cmpw 3, 0
    .4byte 0x4182005C # beq .L_8003A22C
    .4byte 0x40800094 # bge .L_8003A268
    cmpw 3, 4
    .4byte 0x4080001C # bge .L_8003A1F8
    .4byte 0x48000220 # b .L_8003A400
L_8003A1E4:
    addi 0, 4, 0x5
    cmpw 3, 0
    .4byte 0x41820198 # beq .L_8003A384
    .4byte 0x40800210 # bge .L_8003A400
    .4byte 0x48000174 # b .L_8003A368
L_8003A1F8:
    li 4, 0x1
    stw 4, 0x0(5)
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    .4byte 0x800D87F8 # lwz r0, lbl_8053A3B8@sda21(r0)
    cmplw 3, 0
    .4byte 0x40820008 # bne .L_8003A214
    .4byte 0x988D87F0 # stb r4, lbl_8053A3B0@sda21(r0)
L_8003A214:
    lwz 12, 0x28(3)
    cmplwi 12, 0x0
    .4byte 0x418201E4 # beq .L_8003A400
    mtctr 12
    bctrl
    .4byte 0x480001D8 # b .L_8003A400
L_8003A22C:
    li 4, 0x1
    stw 4, 0x0(5)
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    .4byte 0x800D87F8 # lwz r0, lbl_8053A3B8@sda21(r0)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8003A24C
    .4byte 0x988D87F0 # stb r4, lbl_8053A3B0@sda21(r0)
    bl fn_8003A4A0
L_8003A24C:
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    lwz 12, 0x2c(3)
    cmplwi 12, 0x0
    .4byte 0x418201A8 # beq .L_8003A400
    mtctr 12
    bctrl
    .4byte 0x4800019C # b .L_8003A400
L_8003A268:
    lis 3, 0xcdd1
    addi 3, 3, 0x1
    bl fn_80051CEC
    nop
L_8003A278:
    bl fn_80051CB4
    cmplwi 3, 0x0
    .4byte 0x4082FFF8 # bne .L_8003A278
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    li 0, 0x2
    stw 0, 0x0(3)
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    lwz 4, 0x38(3)
    cmplwi 4, 0x0
    .4byte 0x4082002C # bne .L_8003A2C8
    .4byte 0x800D87F4 # lwz r0, lbl_8053A3B4@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_8003A2C8
    .4byte 0x808D87F8 # lwz r4, lbl_8053A3B8@sda21(r0)
    bl fn_80051E54
    .4byte 0x800D87F8 # lwz r0, lbl_8053A3B8@sda21(r0)
    li 3, 0x0
    .4byte 0x906D87F4 # stw r3, lbl_8053A3B4@sda21(r0)
    .4byte 0x900D8AD4 # stw r0, lbl_8053A694@sda21(r0)
    .4byte 0x4800013C # b .L_8003A400
L_8003A2C8:
    bl fn_80051E54
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    lwz 0, 0x38(3)
    .4byte 0x900D8AD4 # stw r0, lbl_8053A694@sda21(r0)
    .4byte 0x48000128 # b .L_8003A400
L_8003A2DC:
    lwz 12, 0x30(5)
    cmplwi 12, 0x0
    .4byte 0x41820010 # beq .L_8003A2F4
    mr 3, 5
    mtctr 12
    bctrl
L_8003A2F4:
    lis 3, 0xcdd1
    addi 3, 3, 0x1
    bl fn_80051CEC
L_8003A300:
    bl fn_80051CB4
    cmplwi 3, 0x0
    .4byte 0x4082FFF8 # bne .L_8003A300
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    li 0, 0x3
    stw 0, 0x0(3)
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    lwz 4, 0x38(3)
    cmplwi 4, 0x0
    .4byte 0x40820024 # bne .L_8003A348
    .4byte 0x808D87F8 # lwz r4, lbl_8053A3B8@sda21(r0)
    li 3, 0x0
    bl fn_80051E54
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    bl fn_80052220
    .4byte 0x800D87F8 # lwz r0, lbl_8053A3B8@sda21(r0)
    .4byte 0x900D8AD4 # stw r0, lbl_8053A694@sda21(r0)
    .4byte 0x480000BC # b .L_8003A400
L_8003A348:
    li 3, 0x0
    bl fn_80051E54
    .4byte 0x806D8AD4 # lwz r3, lbl_8053A694@sda21(r0)
    lwz 3, 0x38(3)
    .4byte 0x906D8AD4 # stw r3, lbl_8053A694@sda21(r0)
    lwz 3, 0x3c(3)
    bl fn_80052220
    .4byte 0x4800009C # b .L_8003A400
L_8003A368:
    lwz 12, 0x34(5)
    cmplwi 12, 0x0
    .4byte 0x41820090 # beq .L_8003A400
    mr 3, 5
    mtctr 12
    bctrl
    .4byte 0x48000080 # b .L_8003A400
L_8003A384:
    .4byte 0x800D8AD0 # lwz r0, lbl_8053A690@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8003A39C
    .4byte 0x800D87F4 # lwz r0, lbl_8053A3B4@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_8003A3CC
L_8003A39C:
    lis 3, 0xcdd1
    addi 3, 3, 0x3
    bl fn_80051CEC
L_8003A3A8:
    bl fn_80051CB4
    cmplwi 3, 0x0
    .4byte 0x4082FFF8 # bne .L_8003A3A8
    .4byte 0x800D87F8 # lwz r0, lbl_8053A3B8@sda21(r0)
    li 3, 0x0
    .4byte 0x906D87F4 # stw r3, lbl_8053A3B4@sda21(r0)
    .4byte 0x900D8AD4 # stw r0, lbl_8053A694@sda21(r0)
    bl fn_8003A4A0
    .4byte 0x48000038 # b .L_8003A400
L_8003A3CC:
    li 0, 0x3
    lis 3, 0xcdd1
    .4byte 0x980D87F0 # stb r0, lbl_8053A3B0@sda21(r0)
    addi 3, 3, 0x1
    bl fn_80051CEC
L_8003A3E0:
    bl fn_80051CB4
    cmplwi 3, 0x0
    .4byte 0x4082FFF8 # bne .L_8003A3E0
    .4byte 0x806D87F8 # lwz r3, lbl_8053A3B8@sda21(r0)
    .4byte 0x808D8AD0 # lwz r4, lbl_8053A690@sda21(r0)
    bl fn_80051E54
    .4byte 0x800D8AD0 # lwz r0, lbl_8053A690@sda21(r0)
    .4byte 0x900D8AD4 # stw r0, lbl_8053A694@sda21(r0)
L_8003A400:
    addi 3, 1, 0x8
    bl OSClearContext
    mr 3, 31
    bl OSSetCurrentContext
    lwz 0, 0x2e4(1)
    lwz 31, 0x2dc(1)
    mtlr 0
    addi 1, 1, 0x2e0
    blr

gap_03_8003A424_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_8003A440:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D87F0 # lbz r0, lbl_8053A3B0@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x41820020 # beq .L_8003A474
    lis 6, lbl_804B4A80@ha
    stwu 3, lbl_804B4A80@l(6)
    li 0, 0x1
    .4byte 0x900D87F4 # stw r0, lbl_8053A3B4@sda21(r0)
    stw 4, 0x4(6)
    stw 5, 0x8(6)
    .4byte 0x48000010 # b .L_8003A480
L_8003A474:
    bl fn_80039CC0
    li 0, 0x0
    .4byte 0x900D87F4 # stw r0, lbl_8053A3B4@sda21(r0)
L_8003A480:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

gap_03_8003A490_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_8003A4A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x800D87F4 # lwz r0, lbl_8053A3B4@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8003A4D0
    lis 3, lbl_804B4A80@ha
    addi 5, 3, lbl_804B4A80@l
    lwz 3, 0x0(5)
    lwz 4, 0x4(5)
    lwz 5, 0x8(5)
    bl fn_8003A440
L_8003A4D0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003A4E0:
    .4byte 0x880D87F0 # lbz r0, lbl_8053A3B0@sda21(r0)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

gap_03_8003A4F4_text:
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */
    .4byte 0x00000000 /* invalid */

fn_8003A500:
    li 0, 0x1
    .4byte 0x980D87F0 # stb r0, lbl_8053A3B0@sda21(r0)
    blr

fn_8003A50C:
    lis 4, lbl_804953C0@ha
    li 0, 0x0
    addi 4, 4, lbl_804953C0@l
    stw 4, 0x0(3)
    stw 0, 0x8(3)
    stw 0, 0x4(3)
    blr

fn_8003A528:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8003A558
    lis 5, lbl_804953C0@ha
    extsh. 0, 4
    addi 0, 5, lbl_804953C0@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8003A558
    bl dtor_80084580
L_8003A558:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003A570:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 4, 0x8(3)
    lwz 0, 0x8(3)
    stw 0, 0x4(3)
    lwz 3, 0x4(3)
    lwz 4, 0x0(3)
    addi 3, 3, 0x4
    subis 0, 4, 0x4141
    stw 3, 0x4(31)
    cmplwi 0, 0x5f3c
    .4byte 0x4182000C # beq .L_8003A5B4
    li 3, 0x0
    .4byte 0x48000018 # b .L_8003A5C8
L_8003A5B4:
    mr 3, 31
    bl fn_8003A5E4
    clrlwi. 0, 3, 24
    .4byte 0x4082FFF4 # bne .L_8003A5B4
    li 3, 0x1
L_8003A5C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003A5DC:
    li 3, 0x0
    blr

fn_8003A5E4:
    stwu 1, -0x10(1)
    mflr 0
    lis 7, 0x6273
    stw 0, 0x14(1)
    addi 0, 7, 0x6674
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 5, 5, 0x4
    cmpw 4, 0
    stw 5, 0x4(3)
    .4byte 0x4182035C # beq .L_8003A968
    .4byte 0x40800084 # bge .L_8003A694
    lis 6, 0x626d
    addi 0, 6, 0x7320
    cmpw 4, 0
    .4byte 0x4182027C # beq .L_8003A89C
    .4byte 0x4080003C # bge .L_8003A660
    lis 5, 0x3e5f
    addi 0, 5, 0x626c
    cmpw 4, 0
    .4byte 0x41820194 # beq .L_8003A7C8
    .4byte 0x40800014 # bge .L_8003A64C
    addi 0, 5, 0x4141
    cmpw 4, 0
    .4byte 0x418200C0 # beq .L_8003A704
    .4byte 0x4800039C # b .L_8003A9E4
L_8003A64C:
    lis 5, 0x626c
    addi 0, 5, 0x5f3c
    cmpw 4, 0
    .4byte 0x4182013C # beq .L_8003A794
    .4byte 0x48000388 # b .L_8003A9E4
L_8003A660:
    lis 5, 0x626e
    addi 0, 5, 0x6b20
    cmpw 4, 0
    .4byte 0x418200EC # beq .L_8003A758
    .4byte 0x40800014 # bge .L_8003A684
    addi 0, 6, 0x7361
    cmpw 4, 0
    .4byte 0x41820270 # beq .L_8003A8EC
    .4byte 0x48000364 # b .L_8003A9E4
L_8003A684:
    addi 0, 7, 0x6320
    cmpw 4, 0
    .4byte 0x41820150 # beq .L_8003A7DC
    .4byte 0x48000354 # b .L_8003A9E4
L_8003A694:
    lis 5, 0x7365
    addi 0, 5, 0x6374
    cmpw 4, 0
    .4byte 0x418202F4 # beq .L_8003A994
    .4byte 0x40800038 # bge .L_8003A6DC
    addi 0, 7, 0x746e
    cmpw 4, 0
    .4byte 0x418201AC # beq .L_8003A85C
    .4byte 0x40800014 # bge .L_8003A6C8
    addi 0, 7, 0x7420
    cmpw 4, 0
    .4byte 0x4182015C # beq .L_8003A81C
    .4byte 0x48000320 # b .L_8003A9E4
L_8003A6C8:
    lis 5, 0x6473
    addi 0, 5, 0x7162
    cmpw 4, 0
    .4byte 0x41820270 # beq .L_8003A944
    .4byte 0x4800030C # b .L_8003A9E4
L_8003A6DC:
    lis 5, 0x7773
    addi 0, 5, 0x2020
    cmpw 4, 0
    .4byte 0x41820024 # beq .L_8003A70C
    .4byte 0x408002F8 # bge .L_8003A9E4
    lis 5, 0x7662
    addi 0, 5, 0x6e6b
    cmpw 4, 0
    .4byte 0x41820214 # beq .L_8003A910
    .4byte 0x480002E4 # b .L_8003A9E4
L_8003A704:
    li 3, 0x0
    .4byte 0x480002F0 # b .L_8003A9F8
L_8003A70C:
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 5, 0x4(3)
    lwz 7, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 5, 0x4(3)
    lwz 6, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lwz 0, 0x8(3)
    lwz 12, 0xc(12)
    add 5, 0, 7
    mtctr 12
    bctrl
    .4byte 0x480002A0 # b .L_8003A9F4
L_8003A758:
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 5, 0x4(3)
    lwz 6, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lwz 0, 0x8(3)
    lwz 12, 0x10(12)
    add 5, 0, 6
    mtctr 12
    bctrl
    .4byte 0x48000264 # b .L_8003A9F4
L_8003A794:
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 6, 0x4(3)
    lwz 5, 0x0(6)
    addi 0, 6, 0x4
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x38(12)
    mtctr 12
    bctrl
    .4byte 0x48000230 # b .L_8003A9F4
L_8003A7C8:
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x4800021C # b .L_8003A9F4
L_8003A7DC:
    lwz 4, 0x4(3)
    lwz 6, 0x0(4)
    addi 0, 4, 0x4
    stw 0, 0x4(3)
    lwz 4, 0x4(3)
    lwz 5, 0x0(4)
    addi 0, 4, 0x4
    stw 0, 0x4(3)
    subf 5, 6, 5
    lwz 12, 0x0(3)
    lwz 0, 0x8(3)
    lwz 12, 0x14(12)
    add 4, 0, 6
    mtctr 12
    bctrl
    .4byte 0x480001DC # b .L_8003A9F4
L_8003A81C:
    lwz 4, 0x4(3)
    lwz 6, 0x0(4)
    addi 0, 4, 0x4
    stw 0, 0x4(3)
    lwz 4, 0x4(3)
    lwz 5, 0x0(4)
    addi 0, 4, 0x4
    stw 0, 0x4(3)
    subf 5, 6, 5
    lwz 12, 0x0(3)
    lwz 0, 0x8(3)
    lwz 12, 0x18(12)
    add 4, 0, 6
    mtctr 12
    bctrl
    .4byte 0x4800019C # b .L_8003A9F4
L_8003A85C:
    lwz 4, 0x4(3)
    lwz 6, 0x0(4)
    addi 0, 4, 0x4
    stw 0, 0x4(3)
    lwz 4, 0x4(3)
    lwz 5, 0x0(4)
    addi 0, 4, 0x4
    stw 0, 0x4(3)
    subf 5, 6, 5
    lwz 12, 0x0(3)
    lwz 0, 0x8(3)
    lwz 12, 0x1c(12)
    add 4, 0, 6
    mtctr 12
    bctrl
    .4byte 0x4800015C # b .L_8003A9F4
L_8003A89C:
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 5, 0x4(3)
    lwz 7, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 5, 0x4(3)
    lwz 6, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    subf 6, 7, 6
    lwz 12, 0x0(3)
    lwz 0, 0x8(3)
    lwz 12, 0x20(12)
    add 5, 0, 7
    mtctr 12
    bctrl
    .4byte 0x4800010C # b .L_8003A9F4
L_8003A8EC:
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000E8 # b .L_8003A9F4
L_8003A910:
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 6, 0x4(3)
    lwz 5, 0x0(6)
    addi 0, 6, 0x4
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    .4byte 0x480000B4 # b .L_8003A9F4
L_8003A944:
    lwz 5, 0x4(3)
    lwz 4, 0x0(5)
    addi 0, 5, 0x4
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    .4byte 0x48000090 # b .L_8003A9F4
L_8003A968:
    lwz 4, 0x4(3)
    lwz 5, 0x0(4)
    addi 0, 4, 0x4
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lwz 0, 0x8(3)
    lwz 12, 0x30(12)
    add 4, 0, 5
    mtctr 12
    bctrl
    .4byte 0x48000064 # b .L_8003A9F4
L_8003A994:
    lwz 4, 0x4(3)
    addi 0, 4, 0x1
    stw 0, 0x4(3)
    lwz 4, 0x4(3)
    addi 0, 4, 0x1
    stw 0, 0x4(3)
    lwz 5, 0x4(3)
    lbz 4, 0x0(4)
    addi 0, 5, 0x1
    stw 0, 0x4(3)
    lwz 6, 0x4(3)
    lbz 5, 0x0(5)
    addi 0, 6, 0x1
    stw 0, 0x4(3)
    lwz 12, 0x0(3)
    lbz 6, 0x0(6)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    .4byte 0x48000014 # b .L_8003A9F4
L_8003A9E4:
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    bctrl
L_8003A9F4:
    li 3, 0x1
L_8003A9F8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AA08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8003A50C
    lis 4, lbl_80495408@ha
    mr 3, 30
    addi 0, 4, lbl_80495408@l
    stw 0, 0x0(30)
    stw 31, 0xc(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AA54:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8003A570
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AA74:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x1
    li 6, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0xc(3)
    bl fn_8003DC90
    mr. 4, 3
    li 31, 0x0
    .4byte 0x41820018 # beq .L_8003AABC
    mr 3, 30
    bl fn_8003A570
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8003AABC
    li 31, 0x1
L_8003AABC:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AAD8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0xc(3)
    bl fn_8003DDA4
    cmplwi 31, 0x0
    .4byte 0x41820014 # beq .L_8003AB1C
    lwz 3, 0xc(29)
    mr 4, 30
    mr 5, 31
    bl fn_8003DE70
L_8003AB1C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003AB38:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    mr 0, 4
    mr 4, 5
    lwz 3, 0xc(3)
    mr 5, 0
    bl fn_8003E074
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AB68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0xc(3)
    bl fn_8003D990
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AB8C:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x1
    stw 0, 0x14(1)
    lwz 3, 0xc(3)
    bl fn_8003D65C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003ABB4:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x1
    stw 0, 0x14(1)
    lwz 3, 0xc(3)
    bl fn_8003D728
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003ABDC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 4, 0x8(1)
    addi 4, 1, 0x8
    lwz 3, 0xc(3)
    bl fn_8003DB58
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AC08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 4, 0x8(1)
    addi 4, 1, 0x8
    lwz 3, 0xc(3)
    bl fn_8003DBC0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AC34:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    mr 0, 4
    mr 4, 5
    lwz 3, 0xc(3)
    mr 5, 0
    bl fn_8003E188
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AC64:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 5, 0xc(3)
    lwz 3, 0x30(5)
    cmplw 3, 5
    .4byte 0x40820008 # bne .L_8003AC84
    .4byte 0x48000008 # b .L_8003AC88
L_8003AC84:
    li 3, 0x0
L_8003AC88:
    bl fn_8003E818
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AC9C:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x1
    stw 0, 0x14(1)
    lwz 3, 0xc(3)
    bl fn_8003D7F4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003ACC4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0xc(3)
    bl fn_8003E2BC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003ACE8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0xc(3)
    bl fn_8003E3A4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AD0C:
    .4byte 0x800D86DC # lwz r0, lbl_8053A29C@sda21(r0)
    cmplwi 0, 0x0
    beqlr
    mulli 3, 4, 0x6c
    addi 3, 3, 0x14
    add 3, 0, 3
    stw 5, 0x68(3)
    stw 6, 0x64(3)
    blr

dtor_8003AD30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8003AD74
    lis 5, lbl_80495408@ha
    li 4, 0x0
    addi 0, 5, lbl_80495408@l
    stw 0, 0x0(30)
    bl fn_8003A528
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003AD74
    mr 3, 30
    bl dtor_80084580
L_8003AD74:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AD90:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4A90@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4A90@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003ADE0
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
L_8003ADE0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003AE18
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
L_8003AE18:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003AE50
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
L_8003AE50:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003AE88
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8003AE88:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

dtor_8003AE9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820038 # beq .L_8003AEF0
    lis 4, lbl_80495480@ha
    addi 0, 4, lbl_80495480@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8003AEE0
    lis 5, lbl_80495450@ha
    li 4, 0x0
    addi 0, 5, lbl_80495450@l
    stw 0, 0x0(30)
    bl fn_80021D60
L_8003AEE0:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003AEF0
    mr 3, 30
    bl dtor_80084580
L_8003AEF0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AF0C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8003AF50
    lis 5, lbl_80495450@ha
    li 4, 0x0
    addi 0, 5, lbl_80495450@l
    stw 0, 0x0(30)
    bl fn_80021D60
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003AF50
    mr 3, 30
    bl dtor_80084580
L_8003AF50:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003AF6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182010C # beq .L_8003B094
    lis 3, lbl_804954B8@ha
    addic. 0, 30, 0x79c
    addi 0, 3, lbl_804954B8@l
    stw 0, 0x0(30)
    .4byte 0x41820034 # beq .L_8003AFD0
    addic. 3, 30, 0x7f4
    .4byte 0x4182000C # beq .L_8003AFB0
    li 4, 0x0
    bl fn_80086EDC
L_8003AFB0:
    addic. 0, 30, 0x79c
    .4byte 0x4182001C # beq .L_8003AFD0
    .4byte 0x806D86D0 # lwz r3, lbl_8053A290@sda21(r0)
    addi 0, 30, 0x79c
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8003AFD0
    li 0, 0x0
    .4byte 0x900D86D0 # stw r0, lbl_8053A290@sda21(r0)
L_8003AFD0:
    addic. 0, 30, 0x728
    .4byte 0x4182004C # beq .L_8003B020
    lis 4, lbl_804917C0@ha
    addic. 3, 30, 0x78c
    addi 0, 4, lbl_804917C0@l
    stw 0, 0x728(30)
    .4byte 0x4182000C # beq .L_8003AFF4
    li 4, 0x0
    bl fn_80086EDC
L_8003AFF4:
    addi 3, 30, 0x728
    li 4, 0x0
    bl fn_80024B50
    addic. 0, 30, 0x728
    .4byte 0x4182001C # beq .L_8003B020
    .4byte 0x806D86D8 # lwz r3, lbl_8053A298@sda21(r0)
    addi 0, 30, 0x728
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8003B020
    li 0, 0x0
    .4byte 0x900D86D8 # stw r0, lbl_8053A298@sda21(r0)
L_8003B020:
    addic. 0, 30, 0x4
    .4byte 0x41820054 # beq .L_8003B078
    lis 3, lbl_80491718@ha
    lis 4, fn_80022D44@ha
    addi 0, 3, lbl_80491718@l
    li 5, 0x6c
    stw 0, 0x4(30)
    addi 3, 30, 0x18
    addi 4, 4, fn_80022D44@l
    li 6, 0x10
    bl fn_80066F84
    addi 3, 30, 0x4
    li 4, 0x0
    bl fn_80024B50
    addic. 0, 30, 0x4
    .4byte 0x4182001C # beq .L_8003B078
    .4byte 0x806D86DC # lwz r3, lbl_8053A29C@sda21(r0)
    addi 0, 30, 0x4
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8003B078
    li 0, 0x0
    .4byte 0x900D86DC # stw r0, lbl_8053A29C@sda21(r0)
L_8003B078:
    mr 3, 30
    li 4, 0x0
    bl fn_80026428
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003B094
    mr 3, 30
    bl dtor_80084580
L_8003B094:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B0B0:
    .4byte 0xC04282F8 # lfs f2, lbl_8053B298@sda21(r0)
    .4byte 0xC02282FC # lfs f1, lbl_8053B29C@sda21(r0)
    stfs 2, 0x0(3)
    .4byte 0xC0028300 # lfs f0, lbl_8053B2A0@sda21(r0)
    stfs 2, 0x8(3)
    stfs 1, 0x4(3)
    stfs 0, 0xc(3)
    stfs 1, 0x10(3)
    blr

fn_8003B0D4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4AC0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4AC0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B124
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
L_8003B124:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B15C
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
L_8003B15C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B194
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
L_8003B194:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B1CC
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8003B1CC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B204
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8003B204:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B23C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8003B23C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B274
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8003B274:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B288:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80086F58
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B2A8:
    lwz 0, 0x8(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8003B2BC
    li 3, 0x0
    blr
L_8003B2BC:
    lwz 3, 0x4(3)
    slwi 0, 4, 2
    lwzx 3, 3, 0
    blr

fn_8003B2CC:
    blr

fn_8003B2D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820018 # beq .L_8003B304
    bl fn_80025474
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003B304
    mr 3, 30
    bl dtor_80084580
L_8003B304:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B320:
    li 0, 0x0
    stw 0, 0x0(3)
    blr

fn_8003B32C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4B18@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4B18@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B37C
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
L_8003B37C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B3B4
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
L_8003B3B4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B3EC
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
L_8003B3EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B400:
    li 9, 0x0
    li 8, -0x1
    stw 9, 0x0(3)
    li 7, 0x1000
    li 6, 0x3
    li 5, 0x2
    stw 9, 0x4(3)
    li 4, 0x80
    .4byte 0xC0028308 # lfs f0, lbl_8053B2A8@sda21(r0)
    li 0, 0x2760
    stw 8, 0x14(3)
    stw 8, 0x18(3)
    stw 7, 0x8(3)
    stw 6, 0xc(3)
    stw 5, 0x10(3)
    stw 4, 0x1c(3)
    stfs 0, 0x2c(3)
    stw 0, 0x24(3)
    stw 5, 0x28(3)
    stw 9, 0x20(3)
    stw 9, 0x30(3)
    blr

fn_8003B458:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    .4byte 0x800D86E8 # lwz r0, lbl_8053A2A8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820120 # bne .L_8003B5A0
    bl fn_800282C0
    cmplwi 3, 0x0
    .4byte 0x40820114 # bne .L_8003B5A0
    lwz 4, 0x8(31)
    mr 3, 29
    bl fn_80028AFC
    lwz 0, 0x0(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8003B4B4
    .4byte 0x806D8BE0 # lwz r3, lbl_8053A7A0@sda21(r0)
    lwz 0, 0x7c(3)
    stw 0, 0x0(31)
L_8003B4B4:
    lwz 0, 0x4(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8003B4CC
    .4byte 0x806D8BE0 # lwz r3, lbl_8053A7A0@sda21(r0)
    lwz 0, 0x80(3)
    stw 0, 0x4(31)
L_8003B4CC:
    lwz 3, 0x0(31)
    lwz 4, 0x4(31)
    bl fn_80028C1C
    lwz 30, 0x1c(31)
    bl OSDisableInterrupts
    lis 4, lbl_804B21BC@ha
    stw 3, 0xc(1)
    addi 3, 4, lbl_804B21BC@l
    mr 5, 30
    li 4, 0x250
    bl fn_800289FC
    lwz 3, 0xc(1)
    bl OSRestoreInterrupts
    lwz 30, 0x20(31)
    cmpwi 30, 0x0
    .4byte 0x40810028 # ble .L_8003B530
    bl OSDisableInterrupts
    lis 4, lbl_804B21AC@ha
    stw 3, 0x8(1)
    addi 3, 4, lbl_804B21AC@l
    mr 5, 30
    li 4, 0x50
    bl fn_800289FC
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_8003B530:
    lwz 3, 0xc(31)
    li 4, 0x80
    li 5, 0x1000
    bl fn_800282C8
    lwz 3, 0x10(31)
    bl fn_8002A740
    .4byte 0x83CD8D10 # lwz r30, lbl_8053A8D0@sda21(r0)
    cmplwi 30, 0x0
    .4byte 0x4182003C # beq .L_8003B58C
    lwz 29, 0x14(31)
    cmpwi 29, 0x0
    .4byte 0x41800018 # blt .L_8003B574
    bl fn_800282C0
    mr 4, 3
    mr 3, 30
    mr 5, 29
    bl fn_80085880
L_8003B574:
    lwz 5, 0x18(31)
    cmpwi 5, 0x0
    .4byte 0x41800010 # blt .L_8003B58C
    .4byte 0x808D86E8 # lwz r4, lbl_8053A2A8@sda21(r0)
    mr 3, 30
    bl fn_80085880
L_8003B58C:
    lfs 1, 0x2c(31)
    bl fn_8002C308
    lwz 3, 0x24(31)
    lwz 4, 0x28(31)
    bl fn_8003189C
L_8003B5A0:
    lwz 3, 0x30(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8003B5B0
    bl fn_80030EF8
L_8003B5B0:
    bl OSGetSoundMode
    cmpwi 3, 0x1
    .4byte 0x41820020 # beq .L_8003B5D8
    .4byte 0x40800024 # bge .L_8003B5E0
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_8003B5CC
    .4byte 0x48000018 # b .L_8003B5E0
L_8003B5CC:
    li 3, 0x0
    bl fn_8002C350
    .4byte 0x4800000C # b .L_8003B5E0
L_8003B5D8:
    li 3, 0x1
    bl fn_8002C350
L_8003B5E0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003B5FC:
    li 0, 0x64
    li 5, 0x4
    stw 0, 0x0(3)
    li 4, 0x2
    li 0, 0x10
    stw 5, 0x4(3)
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    blr

fn_8003B620:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8700 # lwz r3, lbl_8053A2C0@sda21(r0)
    bl fn_80083A3C
    lis 3, lbl_804B21FC@ha
    lwz 5, 0x8(31)
    addi 3, 3, lbl_804B21FC@l
    li 4, 0x2c8
    bl fn_800289FC
    lis 3, lbl_804B221C@ha
    lwz 5, 0x4(31)
    addi 3, 3, lbl_804B221C@l
    li 4, 0x3b4
    bl fn_800289FC
    lis 3, lbl_804B222C@ha
    lwz 5, 0x0(31)
    addi 3, 3, lbl_804B222C@l
    li 4, 0x340
    bl fn_800289FC
    lis 3, lbl_804B220C@ha
    lwz 5, 0xc(31)
    addi 3, 3, lbl_804B220C@l
    li 4, 0x64
    bl fn_800289FC
    .4byte 0x806D8700 # lwz r3, lbl_8053A2C0@sda21(r0)
    bl fn_80083A3C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B6A8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4B40@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4B40@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B6F8
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
L_8003B6F8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B730
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
L_8003B730:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B768
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
L_8003B768:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B7A0
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8003B7A0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B7D8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8003B7D8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B810
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8003B810:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003B848
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8003B848:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B85C:
    stw 4, 0x8(3)
    lwz 4, 0x8(3)
    lbz 0, 0x0(4)
    cmpwi 0, 0x53
    .4byte 0x40820010 # bne .L_8003B87C
    lbz 0, 0x1(4)
    cmpwi 0, 0x43
    .4byte 0x41820010 # beq .L_8003B888
L_8003B87C:
    li 0, 0x0
    stw 0, 0x8(3)
    blr
L_8003B888:
    lhz 0, 0x2(4)
    sth 0, 0x0(3)
    lwz 4, 0x8(3)
    lwz 0, 0x4(4)
    stw 0, 0xc(3)
    lwz 4, 0x8(3)
    addi 0, 4, 0x8
    stw 0, 0x4(3)
    blr

fn_8003B8AC:
    lis 6, lbl_80491790@ha
    lis 4, lbl_804954A0@ha
    addi 6, 6, lbl_80491790@l
    li 5, 0x0
    stw 6, 0x0(3)
    addi 0, 4, lbl_804954A0@l
    stw 5, 0xc(3)
    stw 0, 0x0(3)
    stw 5, 0x14(3)
    blr

fn_8003B8D4:
    stw 4, 0x14(3)
    li 3, 0x1
    blr

fn_8003B8E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x14(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8003B92C
    lwz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8003B910
    stw 0, 0x8(1)
    lwz 0, 0x10(3)
    stw 0, 0xc(1)
L_8003B910:
    lwz 3, 0x14(3)
    addi 4, 1, 0x8
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000008 # b .L_8003B930
L_8003B92C:
    li 3, 0x2
L_8003B930:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003B940:
    lwz 7, 0xc(3)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8003B954
    li 3, 0x0
    blr
L_8003B954:
    lbz 6, 0x1(4)
    lhz 0, 0x4(3)
    lhz 4, 0x2(4)
    cmpw 6, 0
    .4byte 0x4180000C # blt .L_8003B970
    li 4, 0x0
    .4byte 0x48000040 # b .L_8003B9AC
L_8003B970:
    lwz 3, 0x8(3)
    slwi 0, 6, 2
    lwzx 0, 3, 0
    add 3, 7, 0
    lwz 0, 0x0(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8003B994
    li 4, 0x0
    .4byte 0x4800001C # b .L_8003B9AC
L_8003B994:
    slwi 0, 4, 2
    li 4, 0x1
    add 3, 3, 0
    lwz 0, 0x4(3)
    stw 7, 0x0(5)
    stw 0, 0x4(5)
L_8003B9AC:
    clrlwi. 0, 4, 24
    li 3, 0x0
    beqlr
    li 3, 0x2
    blr

fn_8003B9C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8003BA04
    lis 5, lbl_804954A0@ha
    li 4, 0x0
    addi 0, 5, lbl_804954A0@l
    stw 0, 0x0(30)
    bl fn_80024B98
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003BA04
    mr 3, 30
    bl dtor_80084580
L_8003BA04:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003BA20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    mr 4, 31
    bl fn_80086E2C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003BA54:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80086F44
    addi 3, 31, 0xc
    bl fn_80086F44
    addi 3, 31, 0x18
    bl fn_80086F44
    li 0, 0x0
    mr 3, 31
    stw 0, 0x24(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003BA9C:
    stw 4, 0x24(3)
    blr

fn_8003BAA4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 28, 3
    mr 27, 4
    mr 29, 5
    mr 30, 6
    mr 31, 7
    bl fn_8003BEC8
    lwz 4, 0x0(27)
    lwz 3, 0x0(28)
    .4byte 0x48000028 # b .L_8003BAFC
L_8003BAD8:
    lwz 5, 0x0(3)
    lwz 0, 0x10(5)
    cmplw 0, 4
    .4byte 0x40820014 # bne .L_8003BAF8
    li 0, -0x1
    li 3, 0x1
    stw 0, 0x10(5)
    .4byte 0x48000014 # b .L_8003BB08
L_8003BAF8:
    lwz 3, 0xc(3)
L_8003BAFC:
    cmplwi 3, 0x0
    .4byte 0x4082FFD8 # bne .L_8003BAD8
    li 3, 0x0
L_8003BB08:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8003BB18
    li 3, 0x0
    .4byte 0x480000E4 # b .L_8003BBF8
L_8003BB18:
    lwz 5, 0x0(27)
    addis 0, 5, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_8003BB30
    li 0, 0x0
    .4byte 0x48000034 # b .L_8003BB60
L_8003BB30:
    lwz 3, 0xc(28)
    .4byte 0x48000020 # b .L_8003BB54
L_8003BB38:
    lwz 4, 0x0(3)
    lwz 0, 0x10(4)
    cmplw 0, 5
    .4byte 0x4082000C # bne .L_8003BB50
    lwz 0, 0x14(4)
    .4byte 0x48000014 # b .L_8003BB60
L_8003BB50:
    lwz 3, 0xc(3)
L_8003BB54:
    cmplwi 3, 0x0
    .4byte 0x4082FFE0 # bne .L_8003BB38
    li 0, 0x0
L_8003BB60:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8003BB70
    li 3, 0x1
    .4byte 0x4800008C # b .L_8003BBF8
L_8003BB70:
    addis 0, 5, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_8003BB84
    li 0, 0x0
    .4byte 0x48000034 # b .L_8003BBB4
L_8003BB84:
    lwz 3, 0x18(28)
    .4byte 0x48000020 # b .L_8003BBA8
L_8003BB8C:
    lwz 4, 0x0(3)
    lwz 0, 0x10(4)
    cmplw 0, 5
    .4byte 0x4082000C # bne .L_8003BBA4
    lwz 0, 0x14(4)
    .4byte 0x48000014 # b .L_8003BBB4
L_8003BBA4:
    lwz 3, 0xc(3)
L_8003BBA8:
    cmplwi 3, 0x0
    .4byte 0x4082FFE0 # bne .L_8003BB8C
    li 0, 0x0
L_8003BBB4:
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8003BBD0
    stw 0, 0x0(30)
    li 0, 0x0
    li 3, 0x2
    stw 0, 0x4(30)
    .4byte 0x4800002C # b .L_8003BBF8
L_8003BBD0:
    stw 5, 0x8(1)
    mr 3, 28
    mr 5, 31
    mr 6, 29
    addi 4, 1, 0x8
    bl fn_8003BC98
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_8003BBF8:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003BC0C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8003BEC8
    lwz 3, 0x10(31)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x40820014 # bne .L_8003BC4C
    mr 3, 30
    mr 4, 31
    bl fn_80086F58
    .4byte 0x48000010 # b .L_8003BC58
L_8003BC4C:
    mr 4, 31
    addi 3, 30, 0x18
    bl fn_80086F58
L_8003BC58:
    lwz 0, 0x14(1)
    li 3, 0x1
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003BC74:
    cmplwi 3, 0x0
    lwz 3, 0x0(4)
    .4byte 0x41820010 # beq .L_8003BC8C
    li 0, 0x2
    stw 0, 0x1c(3)
    blr
L_8003BC8C:
    li 0, 0x0
    stw 0, 0x1c(3)
    blr

fn_8003BC98:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    mr 30, 6
    lwz 0, 0x24(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8003BCCC
    li 3, 0x0
    .4byte 0x48000118 # b .L_8003BDE0
L_8003BCCC:
    .4byte 0x806D86CC # lwz r3, lbl_8053A28C@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8003BCE0
    li 3, 0x0
    .4byte 0x48000104 # b .L_8003BDE0
L_8003BCE0:
    lwz 0, 0x0(28)
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 0, 3
    lwz 3, 0x24(27)
    mr 31, 0
    mr 4, 31
    bl fn_80029050
    lwz 4, 0x0(27)
    mr 5, 3
    .4byte 0x4800002C # b .L_8003BD44
L_8003BD1C:
    lwz 6, 0x0(4)
    lwz 3, 0x10(6)
    addis 0, 3, 0x1
    cmplwi 0, 0xffff
    .4byte 0x40820014 # bne .L_8003BD40
    lwz 0, 0x18(6)
    cmplw 0, 5
    .4byte 0x41800008 # blt .L_8003BD40
    .4byte 0x48000014 # b .L_8003BD50
L_8003BD40:
    lwz 4, 0xc(4)
L_8003BD44:
    cmplwi 4, 0x0
    .4byte 0x4082FFD4 # bne .L_8003BD1C
    li 4, 0x0
L_8003BD50:
    cmplwi 4, 0x0
    mr 26, 4
    .4byte 0x40820030 # bne .L_8003BD88
    clrlwi. 0, 29, 24
    .4byte 0x41820020 # beq .L_8003BD80
    mr 3, 27
    mr 4, 30
    bl fn_8003BDF4
    mr. 26, 3
    .4byte 0x40820014 # bne .L_8003BD88
    li 3, 0x0
    .4byte 0x48000064 # b .L_8003BDE0
L_8003BD80:
    li 3, 0x0
    .4byte 0x4800005C # b .L_8003BDE0
L_8003BD88:
    mr 3, 27
    mr 4, 26
    bl fn_80087298
    lwz 6, 0x0(26)
    li 0, 0x1
    lwz 5, 0x0(28)
    mr 4, 26
    addi 3, 27, 0xc
    stw 5, 0x10(6)
    lwz 5, 0x0(26)
    stw 0, 0x1c(5)
    bl fn_80086F58
    lwz 6, 0x0(26)
    lis 3, fn_8003BC74@ha
    addi 7, 3, fn_8003BC74@l
    lwz 3, 0x24(27)
    lwz 5, 0x14(6)
    mr 4, 31
    lwz 6, 0x18(6)
    mr 8, 26
    bl fn_80029120
    li 3, 0x1
L_8003BDE0:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003BDF4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 24, 3
    mr 25, 4
    mr 26, 5
    bl fn_8003BEC8
    lwz 27, 0x18(24)
    li 29, -0x1
    li 28, 0x0
    .4byte 0x48000054 # b .L_8003BE74
L_8003BE24:
    cmplwi 25, 0x0
    lwz 31, 0xc(27)
    lwz 30, 0x0(27)
    .4byte 0x41820024 # beq .L_8003BE54
    mr 3, 25
    addi 4, 30, 0x14
    lwz 12, 0x0(25)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_8003BE70
L_8003BE54:
    lwz 0, 0x18(30)
    cmplw 0, 26
    .4byte 0x41800014 # blt .L_8003BE70
    cmplw 0, 29
    .4byte 0x4080000C # bge .L_8003BE70
    mr 28, 27
    mr 29, 0
L_8003BE70:
    mr 27, 31
L_8003BE74:
    cmplwi 27, 0x0
    .4byte 0x4082FFAC # bne .L_8003BE24
    cmplwi 28, 0x0
    .4byte 0x41820030 # beq .L_8003BEB0
    mr 4, 28
    addi 3, 24, 0x18
    bl fn_80087298
    lwz 5, 0x0(28)
    li 0, -0x1
    mr 3, 24
    mr 4, 28
    stw 0, 0x10(5)
    bl fn_80086F58
    lwz 3, 0x0(28)
    .4byte 0x48000008 # b .L_8003BEB4
L_8003BEB0:
    li 3, 0x0
L_8003BEB4:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003BEC8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 30, 0xc(3)
    .4byte 0x48000058 # b .L_8003BF40
L_8003BEEC:
    lwz 3, 0x0(30)
    lwz 31, 0xc(30)
    lwz 0, 0x1c(3)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8003BF1C
    mr 4, 30
    addi 3, 29, 0xc
    bl fn_80087298
    mr 3, 29
    mr 4, 30
    bl fn_80086F58
    .4byte 0x48000024 # b .L_8003BF3C
L_8003BF1C:
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_8003BF3C
    mr 4, 30
    addi 3, 29, 0xc
    bl fn_80087298
    mr 4, 30
    addi 3, 29, 0x18
    bl fn_80086F58
L_8003BF3C:
    mr 30, 31
L_8003BF40:
    cmplwi 30, 0x0
    .4byte 0x4082FFA8 # bne .L_8003BEEC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003BF64:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8002640C
    lis 4, lbl_804954B8@ha
    addi 3, 31, 0x4
    addi 0, 4, lbl_804954B8@l
    li 4, 0x1
    stw 0, 0x0(31)
    bl fn_80022C50
    addi 3, 31, 0x728
    li 4, 0x1
    bl fn_80024CF8
    addi 3, 31, 0x79c
    li 4, 0x1
    bl fn_80027020
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003BFC8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 6
    stw 30, 0x28(1)
    mr 30, 5
    stw 29, 0x24(1)
    mr 29, 4
    stw 28, 0x20(1)
    mr 28, 3
    .4byte 0x80ED86D4 # lwz r7, lbl_8053A294@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x41820028 # beq .L_8003C024
    lwz 0, 0x0(29)
    mr 3, 7
    addi 4, 1, 0x14
    stw 0, 0x14(1)
    lwz 12, 0x0(7)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    .4byte 0x48000008 # b .L_8003C028
L_8003C024:
    lbz 3, 0x0(29)
L_8003C028:
    cmpwi 3, 0x1
    .4byte 0x41820040 # beq .L_8003C06C
    .4byte 0x40800010 # bge .L_8003C040
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_8003C04C
    .4byte 0x48000070 # b .L_8003C0AC
L_8003C040:
    cmpwi 3, 0x3
    .4byte 0x40800068 # bge .L_8003C0AC
    .4byte 0x48000044 # b .L_8003C08C
L_8003C04C:
    lwz 0, 0x0(29)
    mr 5, 30
    mr 6, 31
    addi 3, 28, 0x4
    stw 0, 0x10(1)
    addi 4, 1, 0x10
    bl fn_80023750
    .4byte 0x48000048 # b .L_8003C0B0
L_8003C06C:
    lwz 0, 0x0(29)
    mr 5, 30
    mr 6, 31
    addi 3, 28, 0x728
    stw 0, 0xc(1)
    addi 4, 1, 0xc
    bl fn_80024DEC
    .4byte 0x48000028 # b .L_8003C0B0
L_8003C08C:
    lwz 0, 0x0(29)
    mr 5, 30
    mr 6, 31
    addi 3, 28, 0x79c
    stw 0, 0x8(1)
    addi 4, 1, 0x8
    bl fn_800270F4
    .4byte 0x48000008 # b .L_8003C0B0
L_8003C0AC:
    li 3, 0x0
L_8003C0B0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003C0D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x4
    bl fn_8002339C
    addi 3, 31, 0x728
    bl fn_80024F2C
    addi 3, 31, 0x79c
    bl fn_80027220
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003C110:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x4
    bl fn_800235B0
    addi 3, 31, 0x728
    bl fn_80025158
    addi 3, 31, 0x79c
    bl fn_80027458
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003C150:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x4
    bl fn_8002318C
    addi 3, 31, 0x728
    bl fn_80025118
    addi 3, 31, 0x79c
    bl fn_80027418
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003C190:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4B98@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4B98@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C1E0
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
L_8003C1E0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C218
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
L_8003C218:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C250
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
L_8003C250:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C288
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8003C288:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C2C0
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8003C2C0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C2F8
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8003C2F8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003C30C:
    cmplwi 4, 0x0
    .4byte 0x41820038 # beq .L_8003C348
    stw 4, 0x0(3)
    lwz 5, 0x0(3)
    lwz 4, 0x0(5)
    subis 0, 4, 0x4253
    cmplwi 0, 0x5420
    .4byte 0x41820010 # beq .L_8003C338
    li 0, 0x0
    stw 0, 0x0(3)
    blr
L_8003C338:
    lwz 0, 0xc(5)
    add 0, 5, 0
    stw 0, 0x4(3)
    blr
L_8003C348:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    blr

fn_8003C358:
    lwz 5, 0x0(4)
    addis 0, 5, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_8003C370
    li 3, 0xff
    blr
L_8003C370:
    lbz 5, 0x0(4)
    cmpwi 5, 0x0
    .4byte 0x4080000C # bge .L_8003C384
    li 5, 0x0
    .4byte 0x48000040 # b .L_8003C3C0
L_8003C384:
    lwz 6, 0x4(3)
    lwz 0, 0x0(6)
    cmplw 5, 0
    .4byte 0x4180000C # blt .L_8003C39C
    li 5, 0x0
    .4byte 0x48000028 # b .L_8003C3C0
L_8003C39C:
    slwi 0, 5, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C3B8
    li 5, 0x0
    .4byte 0x4800000C # b .L_8003C3C0
L_8003C3B8:
    lwz 0, 0x0(3)
    add 5, 0, 5
L_8003C3C0:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C3D0
    li 3, 0xff
    blr
L_8003C3D0:
    lbz 0, 0x1(4)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8003C3E4
    li 3, 0x0
    .4byte 0x4800005C # b .L_8003C43C
L_8003C3E4:
    lwz 6, 0x0(5)
    cmplw 0, 6
    .4byte 0x4180000C # blt .L_8003C3F8
    li 3, 0x0
    .4byte 0x48000048 # b .L_8003C43C
L_8003C3F8:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8003C408
    li 5, 0x0
    .4byte 0x48000020 # b .L_8003C424
L_8003C408:
    cmplw 0, 6
    .4byte 0x4180000C # blt .L_8003C418
    li 5, 0x0
    .4byte 0x48000010 # b .L_8003C424
L_8003C418:
    slwi 0, 0, 2
    add 5, 5, 0
    lwz 5, 0x4(5)
L_8003C424:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C434
    li 3, 0x0
    .4byte 0x4800000C # b .L_8003C43C
L_8003C434:
    lwz 0, 0x0(3)
    add 3, 0, 5
L_8003C43C:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8003C44C
    li 3, 0xff
    blr
L_8003C44C:
    lhz 4, 0x2(4)
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_8003C460
    li 3, 0x0
    blr
L_8003C460:
    lwz 0, 0x0(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8003C474
    li 3, 0xff
    blr
L_8003C474:
    slwi 0, 4, 2
    add 3, 3, 0
    lbz 3, 0x8(3)
    blr

fn_8003C484:
    lwz 5, 0x0(4)
    addis 0, 5, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_8003C49C
    li 3, 0x0
    blr
L_8003C49C:
    lbz 5, 0x0(4)
    cmpwi 5, 0x0
    .4byte 0x4080000C # bge .L_8003C4B0
    li 5, 0x0
    .4byte 0x48000040 # b .L_8003C4EC
L_8003C4B0:
    lwz 6, 0x4(3)
    lwz 0, 0x0(6)
    cmplw 5, 0
    .4byte 0x4180000C # blt .L_8003C4C8
    li 5, 0x0
    .4byte 0x48000028 # b .L_8003C4EC
L_8003C4C8:
    slwi 0, 5, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C4E4
    li 5, 0x0
    .4byte 0x4800000C # b .L_8003C4EC
L_8003C4E4:
    lwz 0, 0x0(3)
    add 5, 0, 5
L_8003C4EC:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C4FC
    li 3, 0x0
    blr
L_8003C4FC:
    lbz 0, 0x1(4)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8003C510
    li 5, 0x0
    .4byte 0x4800005C # b .L_8003C568
L_8003C510:
    lwz 6, 0x0(5)
    cmplw 0, 6
    .4byte 0x4180000C # blt .L_8003C524
    li 5, 0x0
    .4byte 0x48000048 # b .L_8003C568
L_8003C524:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8003C534
    li 5, 0x0
    .4byte 0x48000020 # b .L_8003C550
L_8003C534:
    cmplw 0, 6
    .4byte 0x4180000C # blt .L_8003C544
    li 5, 0x0
    .4byte 0x48000010 # b .L_8003C550
L_8003C544:
    slwi 0, 0, 2
    add 5, 5, 0
    lwz 5, 0x4(5)
L_8003C550:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C560
    li 5, 0x0
    .4byte 0x4800000C # b .L_8003C568
L_8003C560:
    lwz 0, 0x0(3)
    add 5, 0, 5
L_8003C568:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C578
    li 3, 0x0
    blr
L_8003C578:
    lhz 4, 0x2(4)
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_8003C58C
    li 4, 0x0
    .4byte 0x48000028 # b .L_8003C5B0
L_8003C58C:
    lwz 0, 0x0(5)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8003C5A0
    li 4, 0x0
    .4byte 0x48000014 # b .L_8003C5B0
L_8003C5A0:
    slwi 4, 4, 2
    addi 0, 4, 0x8
    lwzx 0, 5, 0
    clrlwi 4, 0, 8
L_8003C5B0:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8003C5C0
    li 3, 0x0
    blr
L_8003C5C0:
    lwz 0, 0x0(3)
    add 3, 0, 4
    blr

fn_8003C5CC:
    cmplwi 4, 0x0
    .4byte 0x41820038 # beq .L_8003C608
    stw 4, 0x0(3)
    lwz 5, 0x0(3)
    lwz 4, 0x0(5)
    subis 0, 4, 0x4253
    cmplwi 0, 0x544e
    .4byte 0x41820010 # beq .L_8003C5F8
    li 0, 0x0
    stw 0, 0x0(3)
    blr
L_8003C5F8:
    lwz 0, 0xc(5)
    add 0, 5, 0
    stw 0, 0x4(3)
    blr
L_8003C608:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    blr

fn_8003C618:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4BE0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4BE0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C668
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
L_8003C668:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C6A0
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
L_8003C6A0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C6D8
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
L_8003C6D8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C710
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8003C710:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C748
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8003C748:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003C780
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8003C780:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003C794:
    li 0, 0x0
    stw 0, 0x0(3)
    blr

fn_8003C7A0:
    cmplwi 4, 0x0
    .4byte 0x40820010 # bne .L_8003C7B4
    li 0, 0x0
    stw 0, 0x0(3)
    blr
L_8003C7B4:
    lbz 0, 0x0(4)
    cmpwi 0, 0x62
    bnelr
    lbz 0, 0x1(4)
    cmpwi 0, 0x73
    bnelr
    lbz 0, 0x2(4)
    cmpwi 0, 0x66
    bnelr
    lbz 0, 0x3(4)
    cmpwi 0, 0x74
    bnelr
    stw 4, 0x0(3)
    blr

fn_8003C7EC:
    lwz 3, 0x0(3)
    lwz 3, 0x4(3)
    blr

fn_8003C7F8:
    lwz 5, 0x0(3)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C80C
    li 3, 0x0
    blr
L_8003C80C:
    slwi 3, 4, 2
    addi 0, 3, 0x8
    lwzx 0, 5, 0
    add 3, 5, 0
    blr

fn_8003C820:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lhz 0, 0x2(4)
    lwz 5, 0x4(3)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003C844
    li 3, 0x0
    .4byte 0x48000014 # b .L_8003C854
L_8003C844:
    slwi 3, 0, 2
    addi 0, 3, 0x8
    lwzx 0, 5, 0
    add 3, 5, 0
L_8003C854:
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8003C864
    li 3, -0x1
    .4byte 0x48000008 # b .L_8003C868
L_8003C864:
    bl fn_8004810C
L_8003C868:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003C878:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8003C8BC
    lis 5, lbl_804954C8@ha
    li 4, 0x0
    addi 0, 5, lbl_804954C8@l
    stw 0, 0x0(30)
    bl fn_80026FD8
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003C8BC
    mr 3, 30
    bl dtor_80084580
L_8003C8BC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003C8D8:
    stwu 1, -0x10(1)
    lis 0, 0x4330
    .4byte 0xC8628340 # lfd f3, lbl_8053B2E0@sda21(r0)
    lfs 2, 0x20(3)
    lfs 1, 0x1c(3)
    lfs 0, 0x10(3)
    fsubs 1, 2, 1
    .4byte 0xC042832C # lfs f2, lbl_8053B2CC@sda21(r0)
    stw 0, 0x8(1)
    fdivs 0, 1, 0
    stfs 0, 0x3c(3)
    lfs 4, 0x18(3)
    lfs 1, 0x1c(3)
    lfs 0, 0x14(3)
    fsubs 1, 4, 1
    fdivs 0, 1, 0
    stfs 0, 0x40(3)
    lfs 4, 0xc(3)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    fsubs 2, 4, 2
    fsubs 0, 1, 0
    fdivs 0, 2, 0
    stfs 0, 0x44(3)
    lwz 0, 0x38(3)
    lfs 1, 0x4(3)
    stw 0, 0xc(1)
    lfs 0, 0x8(3)
    lfd 2, 0x8(1)
    fsubs 0, 1, 0
    fsubs 1, 2, 3
    fdivs 0, 1, 0
    stfs 0, 0x48(3)
    lfs 3, 0x28(3)
    lfs 2, 0x24(3)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fdivs 0, 2, 0
    stfs 0, 0x4c(3)
    addi 1, 1, 0x10
    blr

fn_8003C984:
    lis 5, lbl_804916A0@ha
    stwu 1, -0x10(1)
    addi 6, 5, lbl_804916A0@l
    lis 4, lbl_80495450@ha
    stw 6, 0x0(3)
    addi 5, 4, lbl_80495450@l
    lis 0, 0x4330
    .4byte 0xC0228310 # lfs f1, lbl_8053B2B0@sda21(r0)
    stw 5, 0x0(3)
    li 4, 0xff
    .4byte 0xC0028314 # lfs f0, lbl_8053B2B4@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC0228318 # lfs f1, lbl_8053B2B8@sda21(r0)
    stfs 0, 0x8(3)
    .4byte 0xC002831C # lfs f0, lbl_8053B2BC@sda21(r0)
    stfs 1, 0xc(3)
    .4byte 0xC0228320 # lfs f1, lbl_8053B2C0@sda21(r0)
    stfs 0, 0x14(3)
    .4byte 0xC0028324 # lfs f0, lbl_8053B2C4@sda21(r0)
    stfs 1, 0x10(3)
    .4byte 0xC0628328 # lfs f3, lbl_8053B2C8@sda21(r0)
    stfs 0, 0x28(3)
    .4byte 0xC082832C # lfs f4, lbl_8053B2CC@sda21(r0)
    stfs 3, 0x24(3)
    .4byte 0xC0028330 # lfs f0, lbl_8053B2D0@sda21(r0)
    stfs 4, 0x18(3)
    .4byte 0xC0428334 # lfs f2, lbl_8053B2D4@sda21(r0)
    stfs 0, 0x1c(3)
    .4byte 0xC0228338 # lfs f1, lbl_8053B2D8@sda21(r0)
    stfs 3, 0x20(3)
    .4byte 0xC002833C # lfs f0, lbl_8053B2DC@sda21(r0)
    stfs 2, 0x2c(3)
    .4byte 0xC8628340 # lfd f3, lbl_8053B2E0@sda21(r0)
    stw 4, 0x38(3)
    stfs 1, 0x30(3)
    stfs 0, 0x34(3)
    lfs 2, 0x20(3)
    lfs 1, 0x1c(3)
    lfs 0, 0x10(3)
    fsubs 1, 2, 1
    stw 0, 0x8(1)
    fdivs 0, 1, 0
    stfs 0, 0x3c(3)
    lfs 2, 0x18(3)
    lfs 1, 0x1c(3)
    lfs 0, 0x14(3)
    fsubs 1, 2, 1
    fdivs 0, 1, 0
    stfs 0, 0x40(3)
    lfs 2, 0xc(3)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    fsubs 2, 2, 4
    fsubs 0, 1, 0
    fdivs 0, 2, 0
    stfs 0, 0x44(3)
    lwz 0, 0x38(3)
    lfs 1, 0x4(3)
    stw 0, 0xc(1)
    lfs 0, 0x8(3)
    lfd 2, 0x8(1)
    fsubs 0, 1, 0
    fsubs 1, 2, 3
    fdivs 0, 1, 0
    stfs 0, 0x48(3)
    lfs 3, 0x28(3)
    lfs 2, 0x24(3)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fdivs 0, 2, 0
    stfs 0, 0x4c(3)
    addi 1, 1, 0x10
    blr

fn_8003CAB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_8003CB24
    lis 4, lbl_804954D8@ha
    addi 0, 4, lbl_804954D8@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_8003CB14
    lis 4, lbl_804954F8@ha
    addi 0, 4, lbl_804954F8@l
    stw 0, 0x0(30)
    .4byte 0x41820028 # beq .L_8003CB14
    lis 4, lbl_80495480@ha
    addi 0, 4, lbl_80495480@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8003CB14
    lis 5, lbl_80495450@ha
    li 4, 0x0
    addi 0, 5, lbl_80495450@l
    stw 0, 0x0(30)
    bl fn_80021D60
L_8003CB14:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003CB24
    mr 3, 30
    bl dtor_80084580
L_8003CB24:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003CB40:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820048 # beq .L_8003CBA4
    lis 4, lbl_804954F8@ha
    addi 0, 4, lbl_804954F8@l
    stw 0, 0x0(30)
    .4byte 0x41820028 # beq .L_8003CB94
    lis 4, lbl_80495480@ha
    addi 0, 4, lbl_80495480@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8003CB94
    lis 5, lbl_80495450@ha
    li 4, 0x0
    addi 0, 5, lbl_80495450@l
    stw 0, 0x0(30)
    bl fn_80021D60
L_8003CB94:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003CBA4
    mr 3, 30
    bl dtor_80084580
L_8003CBA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003CBC0:
    lwz 3, 0x50(3)
    blr

fn_8003CBC8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    slwi 0, 6, 2
    stw 31, 0x2c(1)
    mr 31, 4
    add 4, 5, 0
    lwz 7, 0x18(4)
    cmplwi 7, 0x0
    .4byte 0x41820204 # beq .L_8003CDF0
    .4byte 0xC042832C # lfs f2, lbl_8053B2CC@sda21(r0)
    .4byte 0xC0628328 # lfs f3, lbl_8053B2C8@sda21(r0)
    .4byte 0xC0028334 # lfs f0, lbl_8053B2D4@sda21(r0)
    stfs 2, 0x8(1)
    stfs 2, 0x10(1)
    stfs 3, 0xc(1)
    stfs 0, 0x14(1)
    stfs 3, 0x18(1)
    lbz 0, 0x10(5)
    extrwi. 0, 0, 1, 29
    .4byte 0x41820064 # beq .L_8003CC7C
    lfs 1, 0x20(7)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8003CC34
    lfs 2, 0xc(3)
    .4byte 0x48000044 # b .L_8003CC74
L_8003CC34:
    lfs 0, 0x8(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8003CC44
    .4byte 0x48000034 # b .L_8003CC74
L_8003CC44:
    fsubs 0, 1, 0
    lfs 1, 0x44(3)
    fmadds 0, 1, 0, 2
    fcmpo cr0, 0, 3
    .4byte 0x40800008 # bge .L_8003CC5C
    .4byte 0x48000018 # b .L_8003CC70
L_8003CC5C:
    fcmpo cr0, 0, 2
    .4byte 0x4081000C # ble .L_8003CC6C
    fmr 3, 2
    .4byte 0x48000008 # b .L_8003CC70
L_8003CC6C:
    fmr 3, 0
L_8003CC70:
    fmr 2, 3
L_8003CC74:
    stfs 2, 0x8(1)
    .4byte 0x48000008 # b .L_8003CC80
L_8003CC7C:
    stfs 2, 0x8(1)
L_8003CC80:
    lbz 0, 0x11(5)
    extrwi. 0, 0, 1, 25
    .4byte 0x41820060 # beq .L_8003CCE8
    lfs 2, 0x1c(7)
    lfs 0, 0x14(3)
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_8003CCA4
    lfs 0, 0x18(3)
    .4byte 0x48000040 # b .L_8003CCE0
L_8003CCA4:
    lfs 0, 0x10(3)
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8003CCB8
    lfs 0, 0x20(3)
    .4byte 0x4800002C # b .L_8003CCE0
L_8003CCB8:
    .4byte 0xC0028328 # lfs f0, lbl_8053B2C8@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8003CCD4
    lfs 1, 0x3c(3)
    lfs 0, 0x1c(3)
    fmadds 0, 1, 2, 0
    .4byte 0x48000010 # b .L_8003CCE0
L_8003CCD4:
    lfs 1, 0x40(3)
    lfs 0, 0x1c(3)
    fmadds 0, 1, 2, 0
L_8003CCE0:
    stfs 0, 0x18(1)
    .4byte 0x4800000C # b .L_8003CCF0
L_8003CCE8:
    lfs 0, 0x1c(3)
    stfs 0, 0x18(1)
L_8003CCF0:
    lbz 0, 0x11(5)
    extrwi. 0, 0, 1, 24
    .4byte 0x41820070 # beq .L_8003CD68
    lwz 0, 0x50(3)
    cmpwi 0, 0x2
    .4byte 0x40810020 # ble .L_8003CD24
    clrlwi. 0, 6, 31
    .4byte 0x4182000C # beq .L_8003CD18
    .4byte 0xC002832C # lfs f0, lbl_8053B2CC@sda21(r0)
    .4byte 0x48000008 # b .L_8003CD1C
L_8003CD18:
    .4byte 0xC0028328 # lfs f0, lbl_8053B2C8@sda21(r0)
L_8003CD1C:
    stfs 0, 0x14(1)
    .4byte 0x48000050 # b .L_8003CD70
L_8003CD24:
    lis 4, lbl_80539D44@ha
    .4byte 0xC0228348 # lfs f1, lbl_8053B2E8@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    lfs 2, 0x20(7)
    fmuls 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8003CD4C
    .4byte 0xC0428328 # lfs f2, lbl_8053B2C8@sda21(r0)
    .4byte 0x4800000C # b .L_8003CD54
L_8003CD4C:
    lfs 0, 0x14(7)
    fdivs 2, 0, 2
L_8003CD54:
    lfs 1, 0x2c(3)
    .4byte 0xC0028334 # lfs f0, lbl_8053B2D4@sda21(r0)
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(1)
    .4byte 0x4800000C # b .L_8003CD70
L_8003CD68:
    .4byte 0xC0028334 # lfs f0, lbl_8053B2D4@sda21(r0)
    stfs 0, 0x14(1)
L_8003CD70:
    .4byte 0xC002832C # lfs f0, lbl_8053B2CC@sda21(r0)
    stfs 0, 0x10(1)
    lbz 0, 0x10(5)
    extrwi. 0, 0, 1, 30
    .4byte 0x41820044 # beq .L_8003CDC4
    lfs 1, 0x20(7)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8003CD9C
    lfs 0, 0x28(3)
    .4byte 0x48000030 # b .L_8003CDC8
L_8003CD9C:
    lfs 0, 0x8(3)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8003CDB0
    lfs 0, 0x24(3)
    .4byte 0x4800001C # b .L_8003CDC8
L_8003CDB0:
    fsubs 1, 1, 0
    lfs 2, 0x4c(3)
    lfs 0, 0x24(3)
    fmadds 0, 2, 1, 0
    .4byte 0x48000008 # b .L_8003CDC8
L_8003CDC4:
    .4byte 0xC0028328 # lfs f0, lbl_8053B2C8@sda21(r0)
L_8003CDC8:
    stfs 0, 0xc(1)
    mr 3, 5
    mr 4, 6
    lwz 12, 0x0(5)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 4, 31
    addi 5, 1, 0x8
    bl fn_8002DC74
L_8003CDF0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003CE04:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 3, 0x18(3)
    cmplwi 3, 0x0
    bnelr
    li 3, 0x0
    blr

fn_8003CE20:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 30, 3
    mr 31, 4
    lbz 0, 0x10(4)
    extrwi. 0, 0, 1, 28
    .4byte 0x4082005C # bne .L_8003CE9C
    mr 28, 31
    mr 27, 30
    li 26, 0x0
    .4byte 0x48000038 # b .L_8003CE88
L_8003CE54:
    lwz 29, 0x18(28)
    cmplwi 29, 0x0
    .4byte 0x41820020 # beq .L_8003CE7C
    addi 3, 27, 0x54
    addi 4, 31, 0x4
    addi 5, 29, 0x14
    bl PSMTXMultVec
    addi 3, 29, 0x14
    bl PSVECMag
    stfs 1, 0x20(29)
L_8003CE7C:
    addi 28, 28, 0x4
    addi 27, 27, 0x30
    addi 26, 26, 0x1
L_8003CE88:
    lwz 0, 0x50(30)
    cmpw 26, 0
    .4byte 0x4180FFC4 # blt .L_8003CE54
    li 3, 0x0
    .4byte 0x480000D8 # b .L_8003CF70
L_8003CE9C:
    mr 27, 31
    mr 28, 30
    addi 26, 1, 0x8
    li 25, -0x1
    li 24, 0x0
    .4byte 0x480000B0 # b .L_8003CF60
L_8003CEB4:
    lwz 29, 0x18(27)
    cmplwi 29, 0x0
    .4byte 0x41820094 # beq .L_8003CF50
    addi 3, 28, 0x54
    addi 4, 31, 0x4
    addi 5, 29, 0x14
    bl PSMTXMultVec
    addi 3, 29, 0x14
    bl PSVECMag
    stfs 1, 0x20(29)
    lbz 0, 0x10(31)
    lfs 1, 0x20(29)
    lfs 0, 0x4(30)
    clrlwi 3, 0, 31
    neg 0, 3
    or 0, 0, 3
    fcmpo cr0, 1, 0
    srwi 0, 0, 31
    .4byte 0x4081001C # ble .L_8003CF18
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8003CF10
    li 3, -0x1
    .4byte 0x48000030 # b .L_8003CF3C
L_8003CF10:
    lwz 3, 0x38(30)
    .4byte 0x48000028 # b .L_8003CF3C
L_8003CF18:
    lfs 0, 0x8(30)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8003CF2C
    li 3, 0x0
    .4byte 0x48000014 # b .L_8003CF3C
L_8003CF2C:
    fsubs 0, 1, 0
    lfs 1, 0x48(30)
    fmuls 1, 1, 0
    bl __cvt_fp2unsigned
L_8003CF3C:
    stw 3, 0x0(26)
    lwz 0, 0x0(26)
    cmplw 0, 25
    .4byte 0x40800008 # bge .L_8003CF50
    mr 25, 0
L_8003CF50:
    addi 27, 27, 0x4
    addi 28, 28, 0x30
    addi 26, 26, 0x4
    addi 24, 24, 0x1
L_8003CF60:
    lwz 0, 0x50(30)
    cmpw 24, 0
    .4byte 0x4180FF4C # blt .L_8003CEB4
    mr 3, 25
L_8003CF70:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003CF84:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 4, 0x0
    stw 0, 0x14(1)
    .4byte 0x4182001C # beq .L_8003CFB0
    mr 3, 4
    li 4, 0x1
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8003CFB0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003CFC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820044 # beq .L_8003D020
    lis 4, lbl_8049552C@ha
    addi 0, 4, lbl_8049552C@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8003D004
    lis 5, lbl_80495518@ha
    li 4, 0x0
    addi 0, 5, lbl_80495518@l
    stw 0, 0x0(30)
    bl fn_80027654
L_8003D004:
    extsh. 0, 31
    .4byte 0x40810018 # ble .L_8003D020
    lis 3, lbl_804B21DC@ha
    mr 4, 30
    addi 3, 3, lbl_804B21DC@l
    li 5, 0x40
    bl fn_80028AD8
L_8003D020:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003D03C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr 27, 3
    li 3, 0x1
    mr 28, 4
    mr 29, 5
    lwz 0, 0x50(27)
    slw 3, 3, 0
    subi 0, 3, 0x1
    nor 0, 0, 0
    or 30, 7, 0
    addis 0, 30, 0x1
    cmplwi 0, 0xffff
    .4byte 0x4082000C # bne .L_8003D084
    li 3, 0x0
    .4byte 0x4800016C # b .L_8003D1EC
L_8003D084:
    lis 3, lbl_804B21DC@ha
    li 4, 0x40
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028A8C
    mr. 31, 3
    .4byte 0x418200AC # beq .L_8003D144
    lis 4, lbl_80491880@ha
    lis 3, lbl_80495518@ha
    addi 0, 4, lbl_80491880@l
    mr 25, 31
    stw 0, 0x0(31)
    addi 0, 3, lbl_80495518@l
    lis 4, fn_8003B0B0@ha
    addi 3, 25, 0x1c
    stw 0, 0x0(31)
    addi 4, 4, fn_8003B0B0@l
    li 5, 0x0
    li 6, 0x24
    li 7, 0x1
    bl __construct_array
    li 0, -0x1
    lfs 0, 0x0(28)
    stw 0, 0x10(25)
    li 3, 0x0
    li 0, 0x1
    lfs 1, 0x4(28)
    stfs 0, 0x4(25)
    slw 0, 0, 3
    lfs 0, 0x8(28)
    and. 0, 30, 0
    stfs 1, 0x8(25)
    stfs 0, 0xc(25)
    .4byte 0x40820030 # bne .L_8003D134
    .4byte 0xC042832C # lfs f2, lbl_8053B2CC@sda21(r0)
    addi 0, 25, 0x1c
    .4byte 0xC0228328 # lfs f1, lbl_8053B2C8@sda21(r0)
    stfs 2, 0x1c(25)
    .4byte 0xC0028334 # lfs f0, lbl_8053B2D4@sda21(r0)
    stfs 2, 0x24(25)
    stfs 1, 0x20(25)
    stfs 0, 0x28(25)
    stfs 1, 0x2c(25)
    stw 0, 0x18(25)
    .4byte 0x48000008 # b .L_8003D138
L_8003D134:
    stw 3, 0x18(25)
L_8003D138:
    lis 3, lbl_8049552C@ha
    addi 0, 3, lbl_8049552C@l
    stw 0, 0x0(31)
L_8003D144:
    cmplwi 31, 0x0
    .4byte 0x4082000C # bne .L_8003D154
    li 3, 0x0
    .4byte 0x4800009C # b .L_8003D1EC
L_8003D154:
    mr 30, 31
    mr 26, 27
    li 25, 0x0
    .4byte 0x48000038 # b .L_8003D198
L_8003D164:
    lwz 28, 0x18(30)
    cmplwi 28, 0x0
    .4byte 0x41820020 # beq .L_8003D18C
    addi 3, 26, 0x54
    addi 4, 31, 0x4
    addi 5, 28, 0x14
    bl PSMTXMultVec
    addi 3, 28, 0x14
    bl PSVECMag
    stfs 1, 0x20(28)
L_8003D18C:
    addi 30, 30, 0x4
    addi 26, 26, 0x30
    addi 25, 25, 0x1
L_8003D198:
    lwz 0, 0x50(27)
    cmpw 25, 0
    .4byte 0x4180FFC4 # blt .L_8003D164
    .4byte 0x806D86CC # lwz r3, lbl_8053A28C@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_8003D1E8
    lwz 0, 0x0(29)
    addi 4, 1, 0xc
    stw 0, 0xc(1)
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    lis 4, 0x1
    sth 3, 0x10(1)
    subi 0, 4, 0x1
    sth 0, 0x12(1)
    lwz 0, 0x10(1)
    stw 0, 0x8(1)
    stw 0, 0x10(31)
L_8003D1E8:
    mr 3, 31
L_8003D1EC:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8003D200:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8003D244
    lis 5, lbl_80495518@ha
    li 4, 0x0
    addi 0, 5, lbl_80495518@l
    stw 0, 0x0(30)
    bl fn_80027654
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003D244
    mr 3, 30
    bl dtor_80084580
L_8003D244:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003D260:
    blr

fn_8003D264:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4C28@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4C28@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D2B4
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
L_8003D2B4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D2EC
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
L_8003D2EC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D324
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
L_8003D324:
    .4byte 0x880D8800 # lbz r0, lbl_8053A3C0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D35C
    lis 3, lbl_8052E78C@ha
    addi 3, 3, lbl_8052E78C@l
    bl fn_80028974
    lis 3, lbl_8052E78C@ha
    lis 4, fn_8003D584@ha
    addi 3, 3, lbl_8052E78C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_8003D584@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8800 # stb r0, lbl_8053A3C0@sda21(r0)
L_8003D35C:
    .4byte 0x880D8801 # lbz r0, lbl_8053A3C1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D394
    lis 3, lbl_8052E79C@ha
    addi 3, 3, lbl_8052E79C@l
    bl fn_80028974
    lis 3, lbl_8052E79C@ha
    lis 4, fn_8003D530@ha
    addi 3, 3, lbl_8052E79C@l
    addi 5, 31, 0x30
    addi 4, 4, fn_8003D530@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8801 # stb r0, lbl_8053A3C1@sda21(r0)
L_8003D394:
    .4byte 0x880D8802 # lbz r0, lbl_8053A3C2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D3CC
    lis 3, lbl_8052E7AC@ha
    addi 3, 3, lbl_8052E7AC@l
    bl fn_80028974
    lis 3, lbl_8052E7AC@ha
    lis 4, fn_8003D4DC@ha
    addi 3, 3, lbl_8052E7AC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_8003D4DC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8802 # stb r0, lbl_8053A3C2@sda21(r0)
L_8003D3CC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D404
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8003D404:
    .4byte 0x880D8803 # lbz r0, lbl_8053A3C3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D43C
    lis 3, lbl_8052E7BC@ha
    addi 3, 3, lbl_8052E7BC@l
    bl fn_80028974
    lis 3, lbl_8052E7BC@ha
    lis 4, fn_8003D488@ha
    addi 3, 3, lbl_8052E7BC@l
    addi 5, 31, 0x54
    addi 4, 4, fn_8003D488@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8803 # stb r0, lbl_8053A3C3@sda21(r0)
L_8003D43C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003D474
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8003D474:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003D488:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_8003D4C0
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003D4C0
    mr 3, 30
    bl dtor_80084580
L_8003D4C0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003D4DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_8003D514
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003D514
    mr 3, 30
    bl dtor_80084580
L_8003D514:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003D530:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_8003D568
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003D568
    mr 3, 30
    bl dtor_80084580
L_8003D568:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003D584:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182001C # beq .L_8003D5BC
    li 4, 0x0
    bl fn_8002898C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003D5BC
    mr 3, 30
    bl dtor_80084580
L_8003D5BC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003D5D8:
    lwz 0, 0xbc(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8003D618
    lwz 4, 0x30(3)
    lwz 4, 0x524(4)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_8003D60C
    .4byte 0x41820018 # beq .L_8003D60C
    .4byte 0x800D86C8 # lwz r0, lbl_8053A288@sda21(r0)
    cmplw 0, 4
    .4byte 0x4082000C # bne .L_8003D60C
    li 0, 0x0
    .4byte 0x900D86C8 # stw r0, lbl_8053A288@sda21(r0)
L_8003D60C:
    lwz 4, 0x30(3)
    li 0, 0x0
    stw 0, 0x524(4)
L_8003D618:
    lwz 0, 0xc0(3)
    cmplwi 0, 0x0
    beqlr
    lwz 4, 0x30(3)
    lwz 4, 0x528(4)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_8003D64C
    .4byte 0x41820018 # beq .L_8003D64C
    .4byte 0x800D86C4 # lwz r0, lbl_8053A284@sda21(r0)
    cmplw 0, 4
    .4byte 0x4082000C # bne .L_8003D64C
    li 0, 0x0
    .4byte 0x900D86C4 # stw r0, lbl_8053A284@sda21(r0)
L_8003D64C:
    lwz 3, 0x30(3)
    li 0, 0x0
    stw 0, 0x528(3)
    blr

fn_8003D65C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 6
    stw 28, 0x10(1)
    mr 28, 3
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    cmplwi 31, 0x0
    stw 3, 0x8(1)
    .4byte 0x4182001C # beq .L_8003D6B8
    mr 3, 28
    mr 4, 30
    mr 5, 31
    li 6, 0x4
    bl fn_8003DD3C
    mr 30, 3
L_8003D6B8:
    li 3, 0x8
    bl fn_80084370
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8003D6E0
    clrlwi. 0, 29, 24
    .4byte 0x41820008 # beq .L_8003D6D4
    .4byte 0x93ED86C8 # stw r31, lbl_8053A288@sda21(r0)
L_8003D6D4:
    li 0, 0x0
    stw 0, 0x0(31)
    stw 0, 0x4(31)
L_8003D6E0:
    mr 3, 31
    mr 4, 30
    bl fn_8003C30C
    lwz 4, 0x30(28)
    lwz 3, 0x8(1)
    stw 31, 0x524(4)
    stw 30, 0xbc(28)
    bl fn_8008382C
    lwz 3, 0x30(28)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 3, 0x524(3)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003D728:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 6
    stw 28, 0x10(1)
    mr 28, 3
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    cmplwi 31, 0x0
    stw 3, 0x8(1)
    .4byte 0x4182001C # beq .L_8003D784
    mr 3, 28
    mr 4, 30
    mr 5, 31
    li 6, 0x4
    bl fn_8003DD3C
    mr 30, 3
L_8003D784:
    li 3, 0x8
    bl fn_80084370
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8003D7AC
    clrlwi. 0, 29, 24
    .4byte 0x41820008 # beq .L_8003D7A0
    .4byte 0x93ED86C4 # stw r31, lbl_8053A284@sda21(r0)
L_8003D7A0:
    li 0, 0x0
    stw 0, 0x0(31)
    stw 0, 0x4(31)
L_8003D7AC:
    mr 3, 31
    mr 4, 30
    bl fn_8003C5CC
    lwz 4, 0x30(28)
    lwz 3, 0x8(1)
    stw 31, 0x528(4)
    stw 30, 0xc0(28)
    bl fn_8008382C
    lwz 3, 0x30(28)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 3, 0x528(3)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003D7F4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 29, 3
    mr 30, 4
    mr 28, 5
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    clrlwi. 0, 28, 24
    stw 3, 0xc(1)
    li 31, 0x0
    .4byte 0x418200EC # beq .L_8003D914
    li 3, 0xc
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x418200C8 # beq .L_8003D900
    lis 5, lbl_80491870@ha
    lis 4, lbl_80495594@ha
    addi 0, 5, lbl_80491870@l
    mr 27, 3
    stw 0, 0x0(3)
    addi 0, 4, lbl_80495594@l
    addi 3, 1, 0x8
    stw 0, 0x0(27)
    bl fn_8003C794
    mr 4, 30
    addi 3, 1, 0x8
    bl fn_8003C7A0
    lwz 0, 0x8(1)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8003D88C
    li 0, 0x0
    mr 3, 27
    stw 0, 0x4(27)
    stw 0, 0x8(27)
    .4byte 0x48000078 # b .L_8003D900
L_8003D88C:
    addi 3, 1, 0x8
    bl fn_8003C7EC
    stw 3, 0x4(27)
    lwz 0, 0x4(27)
    slwi 3, 0, 2
    bl fn_80084478
    stw 3, 0x8(27)
    lwz 0, 0x8(27)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8003D8C4
    li 0, 0x0
    mr 3, 27
    stw 0, 0x4(27)
    .4byte 0x48000040 # b .L_8003D900
L_8003D8C4:
    li 30, 0x0
    mr 28, 30
    .4byte 0x48000024 # b .L_8003D8F0
L_8003D8D0:
    mr 4, 30
    addi 3, 1, 0x8
    bl fn_8003C7F8
    bl fn_8004810C
    lwz 4, 0x8(27)
    addi 30, 30, 0x1
    stwx 3, 4, 28
    addi 28, 28, 0x4
L_8003D8F0:
    lwz 0, 0x4(27)
    cmplw 30, 0
    .4byte 0x4180FFD8 # blt .L_8003D8D0
    mr 3, 27
L_8003D900:
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_8003D964
    mr 31, 3
    .4byte 0x48000054 # b .L_8003D964
L_8003D914:
    li 3, 0x8
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820028 # beq .L_8003D948
    lis 3, lbl_80491870@ha
    mr 27, 28
    addi 0, 3, lbl_80491870@l
    stw 0, 0x0(28)
    addi 3, 27, 0x4
    bl fn_8003C794
    lis 3, lbl_804954C8@ha
    addi 0, 3, lbl_804954C8@l
    stw 0, 0x0(27)
L_8003D948:
    mr 4, 30
    addi 3, 28, 0x4
    bl fn_8003C7A0
    lwz 0, 0x4(28)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8003D964
    mr 31, 28
L_8003D964:
    lwz 4, 0x30(29)
    lwz 3, 0xc(1)
    stw 31, 0x520(4)
    bl fn_8008382C
    lwz 3, 0x30(29)
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    lwz 3, 0x520(3)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003D990:
    stwu 1, -0x20(1)
    mflr 0
    cmplwi 5, 0x0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x41820010 # beq .L_8003D9C4
    li 6, 0x4
    bl fn_8003DD3C
    mr 30, 3
L_8003D9C4:
    lwz 3, 0x30(29)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    stw 3, 0x8(1)
    li 3, 0x18
    bl fn_80084370
    mr. 31, 3
    .4byte 0x4182000C # beq .L_8003D9EC
    bl fn_8003B8AC
    mr 31, 3
L_8003D9EC:
    mr 4, 30
    addi 3, 31, 0x4
    bl fn_8003B85C
    lwz 4, 0x30(29)
    lwz 3, 0x8(1)
    stw 31, 0x51c(4)
    stw 31, 0xb8(29)
    bl fn_8008382C
    lwz 3, 0x30(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 3, 0x51c(3)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003DA30:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 26, 3
    mr 27, 4
    mr 28, 5
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    stw 3, 0xc(1)
    li 3, 0x20
    bl fn_80084370
    mr. 30, 3
    .4byte 0x4182000C # beq .L_8003DA74
    bl fn_8003BA20
    mr 30, 3
L_8003DA74:
    cmplwi 30, 0x0
    .4byte 0x40820014 # bne .L_8003DA8C
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
    .4byte 0x480000BC # b .L_8003DB44
L_8003DA8C:
    li 3, 0x10
    bl fn_80084370
    mr. 31, 3
    .4byte 0x4182000C # beq .L_8003DAA4
    mr 4, 30
    bl fn_80086E2C
L_8003DAA4:
    cmplwi 31, 0x0
    .4byte 0x40820014 # bne .L_8003DABC
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
    .4byte 0x4800008C # b .L_8003DB44
L_8003DABC:
    mr 3, 28
    li 4, 0x20
    bl fn_800844C4
    mr. 29, 3
    .4byte 0x40820014 # bne .L_8003DAE0
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
    .4byte 0x48000068 # b .L_8003DB44
L_8003DAE0:
    stw 29, 0x14(30)
    lwz 0, 0x0(27)
    stw 28, 0x18(30)
    stw 0, 0x10(30)
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    mr 4, 30
    addi 3, 26, 0x38
    bl fn_8003BC0C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8003DB30
    mr 4, 31
    addi 3, 26, 0x60
    bl fn_80086F58
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 3, 0xc(1)
    bl fn_8008382C
    mr 3, 29
    .4byte 0x48000018 # b .L_8003DB44
L_8003DB30:
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
L_8003DB44:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003DB58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x0(4)
    addi 4, 1, 0x8
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    mr 5, 31
    stw 0, 0x8(1)
    bl fn_8003DA30
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8003DBA4
    mr 4, 30
    mr 5, 31
    bl memcpy
    li 3, 0x1
    .4byte 0x48000008 # b .L_8003DBA8
L_8003DBA4:
    li 3, 0x0
L_8003DBA8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003DBC0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr 29, 3
    .4byte 0x80AD86CC # lwz r5, lbl_8053A28C@sda21(r0)
    lwz 31, 0x5c(3)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8003DBF8
    li 3, 0x0
    .4byte 0x48000080 # b .L_8003DC74
L_8003DBF8:
    lwz 0, 0x0(30)
    mr 3, 5
    addi 4, 1, 0x10
    stw 0, 0x10(1)
    lwz 12, 0x0(5)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 0, 3
    mr 3, 31
    mr 4, 0
    bl fn_80029050
    li 0, -0x1
    mr 5, 3
    stw 0, 0xc(1)
    mr 3, 29
    addi 4, 1, 0xc
    bl fn_8003DA30
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_8003DC70
    lwz 0, 0x0(30)
    addi 3, 29, 0x38
    addi 4, 1, 0x8
    li 5, 0x1
    stw 0, 0x8(1)
    lwz 6, 0x30(29)
    lwz 6, 0x4f0(6)
    bl fn_8003BC98
    li 3, 0x1
    .4byte 0x48000008 # b .L_8003DC74
L_8003DC70:
    li 3, 0x0
L_8003DC74:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003DC90:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 6
    stw 30, 0x28(1)
    mr 30, 5
    stw 29, 0x24(1)
    mr 29, 4
    stw 28, 0x20(1)
    mr 28, 3
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    lwz 4, 0x30(28)
    clrlwi. 0, 30, 24
    stw 3, 0x10(1)
    li 0, 0x0
    lwz 7, 0xd8(4)
    mr 3, 29
    mr 5, 31
    li 4, 0x0
    stw 0, 0x8(1)
    li 6, 0x0
    li 8, 0x1
    .4byte 0x41820008 # beq .L_8003DCFC
    li 8, 0x2
L_8003DCFC:
    li 9, 0x0
    li 10, 0x0
    bl fn_80080774
    mr 0, 3
    lwz 3, 0x10(1)
    mr 31, 0
    bl fn_8008382C
    lwz 0, 0x34(1)
    mr 3, 31
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003DD3C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    lwz 5, 0x30(3)
    mr 3, 30
    lwz 4, 0xd8(5)
    mr 5, 6
    bl fn_80084514
    mr. 31, 3
    .4byte 0x41820010 # beq .L_8003DD84
    mr 4, 29
    mr 5, 30
    bl memcpy
L_8003DD84:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003DDA4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    lwz 4, 0x30(29)
    stw 3, 0x8(1)
    mr 3, 31
    lwz 4, 0xd8(4)
    bl fn_8002DCD0
    mr. 31, 3
    .4byte 0x4182005C # beq .L_8003DE48
    lwz 3, 0x30(29)
    cmplwi 30, 0xff
    slwi 0, 30, 2
    lwz 3, 0xec(3)
    stwx 31, 3, 0
    .4byte 0x41800024 # blt .L_8003DE28
    lis 4, __files@ha
    lis 3, lbl_8045D418@ha
    addi 5, 4, __files@l
    addi 4, 3, lbl_8045D418@l
    addi 3, 5, 0xa0
    crclr 6
    bl fn_8006B5F4
    bl abort
L_8003DE28:
    mr 4, 30
    addi 3, 29, 0x6c
    li 5, 0x1
    bl fn_8003EC5C
    lwz 3, 0x8(1)
    bl fn_8008382C
    mr 3, 31
    .4byte 0x48000010 # b .L_8003DE54
L_8003DE48:
    lwz 3, 0x8(1)
    bl fn_8008382C
    li 3, 0x0
L_8003DE54:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003DE70:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    mr 29, 4
    cmplwi 29, 0xff
    stw 28, 0x10(1)
    mr 28, 5
    .4byte 0x41800024 # blt .L_8003DEC0
    lis 4, __files@ha
    lis 3, lbl_8045D3F4@ha
    addi 5, 4, __files@l
    addi 4, 3, lbl_8045D3F4@l
    addi 3, 5, 0xa0
    crclr 6
    bl fn_8006B5F4
    bl abort
L_8003DEC0:
    mr 4, 29
    addi 3, 30, 0x6c
    bl fn_8003ECBC
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_8003DF60
    lwz 3, 0x30(30)
    lwz 0, 0xf0(3)
    cmplw 29, 0
    .4byte 0x4180000C # blt .L_8003DEEC
    li 30, 0x0
    .4byte 0x48000010 # b .L_8003DEF8
L_8003DEEC:
    lwz 3, 0xec(3)
    slwi 0, 29, 2
    lwzx 30, 3, 0
L_8003DEF8:
    cmplwi 30, 0x0
    .4byte 0x41820064 # beq .L_8003DF60
    li 29, 0x0
    li 31, 0x1
    .4byte 0x48000034 # b .L_8003DF3C
L_8003DF0C:
    slw 0, 31, 29
    and. 0, 28, 0
    .4byte 0x41820024 # beq .L_8003DF38
    mr 3, 30
    mr 4, 29
    lwz 12, 0x0(30)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 4, 0x0
    bl fn_80031158
L_8003DF38:
    addi 29, 29, 0x1
L_8003DF3C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    cmplw 29, 3
    .4byte 0x4180FFB8 # blt .L_8003DF0C
    li 3, 0x1
    .4byte 0x48000008 # b .L_8003DF64
L_8003DF60:
    li 3, 0x0
L_8003DF64:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003DF84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 4
    cmplwi 30, 0xff
    .4byte 0x41800024 # blt .L_8003DFC8
    lis 4, __files@ha
    lis 3, lbl_8045D3F4@ha
    addi 5, 4, __files@l
    addi 4, 3, lbl_8045D3F4@l
    addi 3, 5, 0xa0
    crclr 6
    bl fn_8006B5F4
    bl abort
L_8003DFC8:
    mr 4, 30
    addi 3, 31, 0x6c
    bl fn_8003ECBC
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_8003E058
    lwz 3, 0x30(31)
    lwz 0, 0xf0(3)
    cmplw 30, 0
    .4byte 0x4180000C # blt .L_8003DFF4
    li 31, 0x0
    .4byte 0x48000010 # b .L_8003E000
L_8003DFF4:
    lwz 3, 0xec(3)
    slwi 0, 30, 2
    lwzx 31, 3, 0
L_8003E000:
    cmplwi 31, 0x0
    .4byte 0x41820054 # beq .L_8003E058
    li 30, 0x0
    .4byte 0x48000028 # b .L_8003E034
L_8003E010:
    mr 3, 31
    mr 4, 30
    lwz 12, 0x0(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 4, 0x0
    bl fn_80031158
    addi 30, 30, 0x1
L_8003E034:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    cmplw 30, 3
    .4byte 0x4180FFC4 # blt .L_8003E010
    li 3, 0x1
    .4byte 0x48000008 # b .L_8003E05C
L_8003E058:
    li 3, 0x0
L_8003E05C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003E074:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 4
    lwz 4, 0x30(3)
    lwz 0, 0xf0(4)
    cmplw 5, 0
    .4byte 0x4180000C # blt .L_8003E0B0
    li 30, 0x0
    .4byte 0x48000010 # b .L_8003E0BC
L_8003E0B0:
    lwz 3, 0xec(4)
    slwi 0, 5, 2
    lwzx 30, 3, 0
L_8003E0BC:
    lwz 3, 0xd8(4)
    bl fn_8008382C
    lwz 4, 0x30(31)
    stw 3, 0x8(1)
    mr 3, 28
    lwz 29, 0x8(28)
    lwz 4, 0xd8(4)
    bl fn_8002F274
    mr. 28, 3
    .4byte 0x4182007C # beq .L_8003E15C
    lwz 3, 0x34(31)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8003E100
    lwz 3, 0x14(3)
    slwi 0, 29, 2
    stwx 28, 3, 0
    .4byte 0x4800004C # b .L_8003E148
L_8003E100:
    .4byte 0x806D86E4 # lwz r3, lbl_8053A2A4@sda21(r0)
    cmplwi 29, 0xff
    slwi 0, 29, 2
    lwz 3, 0x4(3)
    stwx 28, 3, 0
    .4byte 0x41800024 # blt .L_8003E138
    lis 4, __files@ha
    lis 3, lbl_8045D418@ha
    addi 5, 4, __files@l
    addi 4, 3, lbl_8045D418@l
    addi 3, 5, 0xa0
    crclr 6
    bl fn_8006B5F4
    bl abort
L_8003E138:
    mr 4, 29
    addi 3, 31, 0x8c
    li 5, 0x1
    bl fn_8003EC5C
L_8003E148:
    stw 30, 0x4(28)
    lwz 3, 0x8(1)
    bl fn_8008382C
    mr 3, 28
    .4byte 0x48000010 # b .L_8003E168
L_8003E15C:
    lwz 3, 0x8(1)
    bl fn_8008382C
    li 3, 0x0
L_8003E168:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003E188:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    stw 28, 0x10(1)
    lwz 4, 0x30(3)
    lwz 0, 0xf0(4)
    cmplw 5, 0
    .4byte 0x4180000C # blt .L_8003E1C4
    li 31, 0x0
    .4byte 0x48000010 # b .L_8003E1D0
L_8003E1C4:
    lwz 3, 0xec(4)
    slwi 0, 5, 2
    lwzx 31, 3, 0
L_8003E1D0:
    lwz 3, 0xd8(4)
    bl fn_8008382C
    stw 3, 0x8(1)
    li 3, 0x8
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8003E20C
    lis 5, lbl_80491994@ha
    lis 4, lbl_80493670@ha
    addi 0, 5, lbl_80491994@l
    li 5, 0x0
    stw 0, 0x0(3)
    addi 0, 4, lbl_80493670@l
    stw 5, 0x4(3)
    stw 0, 0x0(3)
L_8003E20C:
    cmplwi 3, 0x0
    mr 28, 3
    .4byte 0x4182007C # beq .L_8003E290
    lwz 4, 0x34(29)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_8003E234
    lwz 4, 0x14(4)
    slwi 0, 30, 2
    stwx 3, 4, 0
    .4byte 0x4800004C # b .L_8003E27C
L_8003E234:
    .4byte 0x808D86E4 # lwz r4, lbl_8053A2A4@sda21(r0)
    cmplwi 30, 0xff
    slwi 0, 30, 2
    lwz 4, 0x4(4)
    stwx 3, 4, 0
    .4byte 0x41800024 # blt .L_8003E26C
    lis 4, __files@ha
    lis 3, lbl_8045D418@ha
    addi 5, 4, __files@l
    addi 4, 3, lbl_8045D418@l
    addi 3, 5, 0xa0
    crclr 6
    bl fn_8006B5F4
    bl abort
L_8003E26C:
    mr 4, 30
    addi 3, 29, 0x8c
    li 5, 0x1
    bl fn_8003EC5C
L_8003E27C:
    stw 31, 0x4(28)
    lwz 3, 0x8(1)
    bl fn_8008382C
    mr 3, 28
    .4byte 0x48000010 # b .L_8003E29C
L_8003E290:
    lwz 3, 0x8(1)
    bl fn_8008382C
    li 3, 0x0
L_8003E29C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003E2BC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    li 30, 0x0
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    stw 3, 0x8(1)
    slwi 3, 29, 2
    bl fn_80084478
    mr. 31, 3
    .4byte 0x41820084 # beq .L_8003E37C
    li 3, 0x24
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820064 # beq .L_8003E36C
    mr 30, 3
    mr 4, 3
    .4byte 0x41820008 # beq .L_8003E31C
    addi 4, 4, 0x10
L_8003E31C:
    bl fn_80086E2C
    lis 4, lbl_80493660@ha
    lis 3, lbl_80495588@ha
    addi 0, 4, lbl_80493660@l
    slwi 5, 29, 2
    stw 0, 0x10(30)
    addi 0, 3, lbl_80495588@l
    li 4, 0x0
    stw 0, 0x10(30)
    stw 31, 0x14(30)
    stw 29, 0x18(30)
    lwz 3, 0x14(30)
    bl memset
    lis 3, lbl_80495574@ha
    stw 28, 0x1c(30)
    addi 4, 3, lbl_80495574@l
    mr 3, 30
    stw 4, 0x20(30)
    addi 0, 4, 0x8
    stw 0, 0x10(30)
L_8003E36C:
    cmplwi 3, 0x0
    mr 30, 3
    .4byte 0x41820008 # beq .L_8003E37C
    stw 3, 0x34(27)
L_8003E37C:
    lwz 3, 0x8(1)
    bl fn_8008382C
    neg 0, 30
    or 0, 0, 30
    lmw 27, 0x1c(1)
    srwi 3, 0, 31
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003E3A4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x0
    lwz 4, 0x34(31)
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_8003E3E8
    addi 3, 31, 0xac
    bl fn_8003B288
    li 0, 0x0
    stw 0, 0x34(31)
    lwz 3, 0x34(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8003E3E8
    addi 3, 3, 0x10
L_8003E3E8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003E3FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x4f4
    stw 30, 0x8(1)
    mr 30, 4
    bl fn_8003BA9C
    lwz 31, 0xe0(31)
    .4byte 0x48000018 # b .L_8003E43C
L_8003E428:
    lwz 3, 0x0(31)
    mr 4, 30
    addi 3, 3, 0x38
    bl fn_8003BA9C
    lwz 31, 0xc(31)
L_8003E43C:
    cmplwi 31, 0x0
    .4byte 0x4082FFE8 # bne .L_8003E428
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003E45C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x806D8700 # lwz r3, lbl_8053A2C0@sda21(r0)
    bl fn_80083A3C
    .4byte 0x808D8700 # lwz r4, lbl_8053A2C0@sda21(r0)
    li 5, 0x1
    bl fn_80084BAC
    mr 30, 3
    bl fn_8008382C
    stw 3, 0x8(1)
    mr 3, 30
    bl fn_80083A3C
    mr 31, 3
    li 3, 0x52c
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820018 # beq .L_8003E4CC
    mr 4, 30
    mr 5, 28
    mr 6, 31
    bl fn_8003E4F8
    mr 29, 3
L_8003E4CC:
    lwz 3, 0x8(1)
    bl fn_8008382C
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003E4F8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 26, 3
    mr 0, 26
    mr 29, 4
    mr 30, 5
    mr 31, 6
    mr 28, 0
    bl fn_8007E6F4
    mr 4, 28
    addi 3, 28, 0x18
    bl fn_80086E2C
    lis 3, lbl_804955A4@ha
    addi 27, 28, 0x38
    addi 3, 3, lbl_804955A4@l
    li 0, 0x0
    stw 3, 0x0(28)
    mr 3, 27
    stw 0, 0x28(28)
    stw 26, 0x30(28)
    bl fn_8003BA54
    addi 3, 27, 0x28
    bl fn_80086F44
    addi 3, 27, 0x34
    bl fn_8003ECE4
    addi 3, 27, 0x54
    bl fn_8003ECE4
    addi 3, 27, 0x74
    bl fn_80086F44
    addi 3, 27, 0x8c
    bl fn_80086F44
    lis 4, __files@ha
    lis 3, lbl_8045D3D0@ha
    addi 4, 4, __files@l
    li 24, 0x0
    addi 23, 4, 0xa0
    addi 25, 3, lbl_8045D3D0@l
L_8003E594:
    cmplwi 24, 0xff
    .4byte 0x41800018 # blt .L_8003E5B0
    mr 3, 23
    mr 4, 25
    crclr 6
    bl fn_8006B5F4
    bl abort
L_8003E5B0:
    mr 4, 24
    addi 3, 27, 0x34
    bl fn_8003EC9C
    addi 24, 24, 0x1
    cmplwi 24, 0xff
    .4byte 0x4180FFD0 # blt .L_8003E594
    lis 3, lbl_8045D3D0@ha
    li 24, 0x0
    addi 25, 3, lbl_8045D3D0@l
L_8003E5D4:
    cmplwi 24, 0xff
    .4byte 0x41800018 # blt .L_8003E5F0
    mr 3, 23
    mr 4, 25
    crclr 6
    bl fn_8006B5F4
    bl abort
L_8003E5F0:
    mr 4, 24
    addi 3, 27, 0x54
    bl fn_8003EC9C
    addi 24, 24, 0x1
    cmplwi 24, 0xff
    .4byte 0x4180FFD0 # blt .L_8003E5D4
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x84(27)
    stw 3, 0x88(27)
    stw 3, 0x80(27)
    stw 3, 0x34(28)
    stb 0, 0x2c(28)
    stw 31, 0xd0(28)
    lwz 3, 0x30(28)
    cmplw 28, 3
    .4byte 0x41820010 # beq .L_8003E640
    lwz 4, 0x518(3)
    addi 3, 28, 0x38
    bl fn_8003BA9C
L_8003E640:
    clrlwi. 0, 30, 24
    .4byte 0x41820014 # beq .L_8003E658
    addic. 3, 26, 0xd4
    .4byte 0x41820008 # beq .L_8003E654
    subi 3, 3, 0xd4
L_8003E654:
    .4byte 0x906D86C0 # stw r3, lbl_8053A280@sda21(r0)
L_8003E658:
    lis 3, lbl_80491790@ha
    lis 4, lbl_80495540@ha
    addi 0, 3, lbl_80491790@l
    addi 3, 26, 0xe0
    stw 0, 0xd4(26)
    addi 4, 4, lbl_80495540@l
    addi 0, 4, 0x10
    stw 4, 0x0(26)
    stw 0, 0xd4(26)
    stw 29, 0xd8(26)
    bl fn_80086F44
    addi 3, 26, 0xf4
    li 0, 0xff
    stw 3, 0xec(26)
    li 4, 0x0
    li 5, 0x3fc
    stw 0, 0xf0(26)
    lwz 3, 0xec(26)
    bl memset
    addi 3, 26, 0x4f4
    bl fn_8003BA54
    li 0, 0x0
    cmplwi 26, 0x0
    stw 0, 0x51c(26)
    mr 4, 26
    stw 0, 0x520(26)
    stw 0, 0x524(26)
    stw 0, 0x528(26)
    stw 0, 0x4f0(26)
    stw 0, 0xdc(26)
    .4byte 0x41820008 # beq .L_8003E6D8
    addi 4, 26, 0x18
L_8003E6D8:
    addi 3, 26, 0xe0
    bl fn_80086F58
    mr 3, 26
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003E6F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x418200D4 # beq .L_8003E7E8
    lis 3, lbl_804955A4@ha
    addic. 0, 30, 0x38
    addi 0, 3, lbl_804955A4@l
    stw 0, 0x0(30)
    .4byte 0x41820090 # beq .L_8003E7B8
    addic. 3, 30, 0xc4
    .4byte 0x4182000C # beq .L_8003E73C
    li 4, 0x0
    bl fn_80086EDC
L_8003E73C:
    addic. 3, 30, 0xac
    .4byte 0x41820014 # beq .L_8003E754
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003E754
    li 4, 0x0
    bl fn_80086EDC
L_8003E754:
    addic. 3, 30, 0x60
    .4byte 0x4182000C # beq .L_8003E764
    li 4, 0x0
    bl fn_80086EDC
L_8003E764:
    addic. 0, 30, 0x38
    .4byte 0x41820050 # beq .L_8003E7B8
    addic. 3, 30, 0x50
    .4byte 0x41820014 # beq .L_8003E784
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003E784
    li 4, 0x0
    bl fn_80086EDC
L_8003E784:
    addic. 3, 30, 0x44
    .4byte 0x41820014 # beq .L_8003E79C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003E79C
    li 4, 0x0
    bl fn_80086EDC
L_8003E79C:
    addic. 0, 30, 0x38
    .4byte 0x41820018 # beq .L_8003E7B8
    addic. 0, 30, 0x38
    .4byte 0x41820010 # beq .L_8003E7B8
    addi 3, 30, 0x38
    li 4, 0x0
    bl fn_80086EDC
L_8003E7B8:
    addic. 0, 30, 0x18
    .4byte 0x41820010 # beq .L_8003E7CC
    addi 3, 30, 0x18
    li 4, 0x0
    bl fn_80086E44
L_8003E7CC:
    mr 3, 30
    li 4, 0x0
    bl fn_8007E75C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003E7E8
    mr 3, 30
    bl dtor_80084580
L_8003E7E8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003E804:
    lwz 3, 0x524(3)
    blr

fn_8003E80C:
    stw 4, 0x4f0(3)
    li 3, 0x1
    blr

fn_8003E818:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lwz 3, 0x30(3)
    lwz 3, 0xd8(3)
    bl fn_8008382C
    stw 3, 0xc(1)
    li 3, 0x20
    bl fn_80084370
    mr. 30, 3
    .4byte 0x4182000C # beq .L_8003E864
    bl fn_8003BA20
    mr 30, 3
L_8003E864:
    cmplwi 30, 0x0
    .4byte 0x40820014 # bne .L_8003E87C
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
    .4byte 0x480000B4 # b .L_8003E92C
L_8003E87C:
    li 3, 0x10
    bl fn_80084370
    mr. 31, 3
    .4byte 0x4182000C # beq .L_8003E894
    mr 4, 30
    bl fn_80086E2C
L_8003E894:
    cmplwi 31, 0x0
    .4byte 0x40820014 # bne .L_8003E8AC
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
    .4byte 0x48000084 # b .L_8003E92C
L_8003E8AC:
    mr 3, 29
    li 4, 0x20
    bl fn_800844C4
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_8003E8D0
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
    .4byte 0x48000060 # b .L_8003E92C
L_8003E8D0:
    stw 3, 0x14(30)
    li 0, -0x1
    stw 29, 0x18(30)
    stw 0, 0x10(30)
    bl OSDisableInterrupts
    lwz 5, 0x30(28)
    mr 4, 30
    stw 3, 0x8(1)
    addi 3, 5, 0x4f4
    bl fn_8003BC0C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8003E918
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x1
    .4byte 0x48000018 # b .L_8003E92C
L_8003E918:
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
    lwz 3, 0xc(1)
    bl fn_8008382C
    li 3, 0x0
L_8003E92C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003E94C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lwz 31, 0xe0(3)
    .4byte 0x4800003C # b .L_8003E9B4
L_8003E97C:
    lwz 0, 0x0(29)
    mr 6, 30
    addi 4, 1, 0xc
    li 7, 0x0
    stw 0, 0xc(1)
    lwz 3, 0x0(31)
    lwz 5, 0x4f0(28)
    addi 3, 3, 0x38
    bl fn_8003BAA4
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_8003E9B0
    li 3, 0x2
    .4byte 0x48000030 # b .L_8003E9DC
L_8003E9B0:
    lwz 31, 0xc(31)
L_8003E9B4:
    cmplwi 31, 0x0
    .4byte 0x4082FFC4 # bne .L_8003E97C
    lwz 0, 0x0(29)
    mr 6, 30
    addi 3, 28, 0x4f4
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    li 7, 0x1
    lwz 5, 0x4f0(28)
    bl fn_8003BAA4
L_8003E9DC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003E9FC:
    li 3, 0x0
    blr

fn_8003EA04:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr. 30, 3
    stw 29, 0x14(1)
    .4byte 0x41820190 # beq .L_8003EBB4
    lis 3, lbl_80495540@ha
    addic. 0, 30, 0xec
    addi 3, 3, lbl_80495540@l
    stw 3, 0x0(30)
    addi 0, 3, 0x10
    stw 0, 0xd4(30)
    .4byte 0x41820054 # beq .L_8003EA94
    addic. 29, 30, 0x4f4
    .4byte 0x4182004C # beq .L_8003EA94
    addic. 3, 29, 0x18
    .4byte 0x41820014 # beq .L_8003EA64
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003EA64
    li 4, 0x0
    bl fn_80086EDC
L_8003EA64:
    addic. 3, 29, 0xc
    .4byte 0x41820014 # beq .L_8003EA7C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003EA7C
    li 4, 0x0
    bl fn_80086EDC
L_8003EA7C:
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_8003EA94
    .4byte 0x41820010 # beq .L_8003EA94
    mr 3, 29
    li 4, 0x0
    bl fn_80086EDC
L_8003EA94:
    addic. 0, 30, 0xe0
    .4byte 0x41820010 # beq .L_8003EAA8
    addi 3, 30, 0xe0
    li 4, 0x0
    bl fn_80086EDC
L_8003EAA8:
    addi 3, 30, 0xd4
    li 4, 0x0
    bl fn_80024B98
    addic. 0, 30, 0xd4
    .4byte 0x41820024 # beq .L_8003EADC
    addic. 3, 30, 0xd4
    .4byte 0x41820008 # beq .L_8003EAC8
    subi 3, 3, 0xd4
L_8003EAC8:
    .4byte 0x800D86C0 # lwz r0, lbl_8053A280@sda21(r0)
    cmplw 0, 3
    .4byte 0x4082000C # bne .L_8003EADC
    li 0, 0x0
    .4byte 0x900D86C0 # stw r0, lbl_8053A280@sda21(r0)
L_8003EADC:
    cmplwi 30, 0x0
    .4byte 0x418200C4 # beq .L_8003EBA4
    lis 3, lbl_804955A4@ha
    addic. 0, 30, 0x38
    addi 0, 3, lbl_804955A4@l
    stw 0, 0x0(30)
    .4byte 0x41820090 # beq .L_8003EB84
    addic. 3, 30, 0xc4
    .4byte 0x4182000C # beq .L_8003EB08
    li 4, 0x0
    bl fn_80086EDC
L_8003EB08:
    addic. 3, 30, 0xac
    .4byte 0x41820014 # beq .L_8003EB20
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003EB20
    li 4, 0x0
    bl fn_80086EDC
L_8003EB20:
    addic. 3, 30, 0x60
    .4byte 0x4182000C # beq .L_8003EB30
    li 4, 0x0
    bl fn_80086EDC
L_8003EB30:
    addic. 0, 30, 0x38
    .4byte 0x41820050 # beq .L_8003EB84
    addic. 3, 30, 0x50
    .4byte 0x41820014 # beq .L_8003EB50
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003EB50
    li 4, 0x0
    bl fn_80086EDC
L_8003EB50:
    addic. 3, 30, 0x44
    .4byte 0x41820014 # beq .L_8003EB68
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8003EB68
    li 4, 0x0
    bl fn_80086EDC
L_8003EB68:
    addic. 0, 30, 0x38
    .4byte 0x41820018 # beq .L_8003EB84
    addic. 0, 30, 0x38
    .4byte 0x41820010 # beq .L_8003EB84
    addi 3, 30, 0x38
    li 4, 0x0
    bl fn_80086EDC
L_8003EB84:
    addic. 0, 30, 0x18
    .4byte 0x41820010 # beq .L_8003EB98
    addi 3, 30, 0x18
    li 4, 0x0
    bl fn_80086E44
L_8003EB98:
    mr 3, 30
    li 4, 0x0
    bl fn_8007E75C
L_8003EBA4:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003EBB4
    mr 3, 30
    bl dtor_80084580
L_8003EBB4:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003EBD4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8003EC18
    lis 5, lbl_80495594@ha
    li 4, 0x0
    addi 0, 5, lbl_80495594@l
    stw 0, 0x0(30)
    bl fn_80026FD8
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003EC18
    mr 3, 30
    bl dtor_80084580
L_8003EC18:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003EC34:
    lhz 4, 0x2(4)
    lwz 0, 0x4(3)
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8003EC4C
    li 3, -0x1
    blr
L_8003EC4C:
    lwz 3, 0x8(3)
    slwi 0, 4, 2
    lwzx 3, 3, 0
    blr

fn_8003EC5C:
    clrlwi. 0, 5, 24
    clrlwi 5, 4, 27
    li 0, 0x1
    srwi 4, 4, 5
    slw 5, 0, 5
    .4byte 0x41820018 # beq .L_8003EC88
    slwi 4, 4, 2
    lwzx 0, 3, 4
    or 0, 0, 5
    stwx 0, 3, 4
    blr
L_8003EC88:
    slwi 4, 4, 2
    lwzx 0, 3, 4
    andc 0, 0, 5
    stwx 0, 3, 4
    blr

fn_8003EC9C:
    rlwinm 6, 4, 29, 3, 29
    clrlwi 0, 4, 27
    li 4, 0x1
    lwzx 5, 3, 6
    slw 0, 4, 0
    andc 0, 5, 0
    stwx 0, 3, 6
    blr

fn_8003ECBC:
    rlwinm 0, 4, 29, 3, 29
    clrlwi 4, 4, 27
    li 5, 0x1
    lwzx 0, 3, 0
    slw 3, 5, 4
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_8003ECE4:
    mr 5, 3
    addi 0, 3, 0x20
    .4byte 0x48000010 # b .L_8003ECFC
L_8003ECF0:
    .4byte 0x808D8028 # lwz r4, lbl_80539BE8@sda21(r0)
    stw 4, 0x0(5)
    addi 5, 5, 0x4
L_8003ECFC:
    cmplw 5, 0
    .4byte 0x4082FFF0 # bne .L_8003ECF0
    blr

fn_8003ED08:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4C98@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4C98@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003ED58
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
L_8003ED58:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003ED90
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
L_8003ED90:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003EDC8
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
L_8003EDC8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003EE00
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8003EE00:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003EE14:
    subi 3, 3, 0xd4
    b fn_8003E80C

fn_8003EE1C:
    subi 3, 3, 0xd4
    b fn_8003E9FC

fn_8003EE24:
    subi 3, 3, 0xd4
    b fn_8003E94C

fn_8003EE2C:
    subi 3, 3, 0xd4
    b fn_8003EA04

fn_8003EE34:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    clrlslwi 5, 5, 24, 2
    stw 29, 0x14(1)
    mr 29, 4
    mr 4, 6
    clrlwi 31, 30, 24
    stw 28, 0x10(1)
    mr 28, 3
    addi 3, 5, 0x10
    li 5, 0x0
    bl fn_80084514
    lis 4, fn_8003B320@ha
    lis 5, fn_8003B2D0@ha
    addi 4, 4, fn_8003B320@l
    mr 7, 31
    addi 5, 5, fn_8003B2D0@l
    li 6, 0x4
    bl fn_800671B0
    stw 3, 0x0(28)
    mr 0, 31
    lis 3, lbl_804955B8@ha
    li 4, 0x0
    stw 0, 0x4(28)
    addi 5, 3, lbl_804955B8@l
    li 0, 0x1
    mr 3, 28
    stw 5, 0x8(28)
    stw 4, 0x10(28)
    stw 29, 0x14(28)
    stb 0, 0xc(28)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

dtor_8003EEE0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820040 # beq .L_8003EF3C
    lis 4, lbl_804955B8@ha
    addi 0, 4, lbl_804955B8@l
    stw 0, 0x8(30)
    lwz 12, 0x8(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lis 4, fn_8003B2D0@ha
    lwz 3, 0x0(30)
    addi 4, 4, fn_8003B2D0@l
    bl fn_80066F08
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8003EF3C
    mr 3, 30
    bl dtor_80084580
L_8003EF3C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003EF58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x48000058 # b .L_8003EFD4
L_8003EF80:
    lwz 0, 0x0(29)
    add 4, 0, 31
    lwz 0, 0x0(4)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8003EFCC
    lwz 12, 0x8(29)
    mr 3, 29
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8003EFC0
    lwz 3, 0x0(29)
    lwzx 3, 3, 31
    bl fn_80025784
    .4byte 0x48000010 # b .L_8003EFCC
L_8003EFC0:
    lwz 0, 0x0(29)
    add 3, 0, 31
    bl fn_80025474
L_8003EFCC:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_8003EFD4:
    lwz 0, 0x4(29)
    cmplw 30, 0
    .4byte 0x4180FFA4 # blt .L_8003EF80
    li 0, 0x0
    stb 0, 0xc(29)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003F004:
    li 3, 0x1
    blr

fn_8003F00C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8003F02C
    lwz 4, 0x14(3)
    bl fn_80026100
L_8003F02C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8003F03C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 4
    stw 28, 0x20(1)
    mr 28, 3
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8003F074
    li 3, 0x0
    .4byte 0x48000080 # b .L_8003F0F0
L_8003F074:
    lwz 0, 0x0(29)
    addi 4, 1, 0x10
    .4byte 0x83ED86E0 # lwz r31, lbl_8053A2A0@sda21(r0)
    stw 0, 0x10(1)
    bl fn_80026060
    mr. 30, 3
    .4byte 0x40820010 # bne .L_8003F09C
    mr 3, 28
    bl fn_8003F4A8
    mr 30, 3
L_8003F09C:
    cmplwi 30, 0x0
    .4byte 0x4082001C # bne .L_8003F0BC
    lwz 0, 0x0(29)
    mr 3, 28
    addi 4, 1, 0xc
    stw 0, 0xc(1)
    bl fn_8003F3C8
    mr 30, 3
L_8003F0BC:
    cmplwi 30, 0x0
    .4byte 0x4182002C # beq .L_8003F0EC
    lwz 0, 0x0(29)
    mr 3, 31
    mr 5, 30
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 12, 0x0(31)
    lwz 6, 0x14(28)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_8003F0EC:
    mr 3, 30
L_8003F0F0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003F110:
    stwu 1, -0x20(1)
    mflr 0
    mr 7, 3
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8003F138
    li 3, 0x0
    .4byte 0x4800003C # b .L_8003F170
L_8003F138:
    lwz 0, 0x0(4)
    clrlslwi 5, 5, 24, 2
    lwz 6, 0x0(7)
    addi 4, 1, 0x8
    .4byte 0x806D86E0 # lwz r3, lbl_8053A2A0@sda21(r0)
    stw 0, 0x8(1)
    add 31, 6, 5
    mr 5, 31
    lwz 12, 0x0(3)
    lwz 6, 0x14(7)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 3, 31
L_8003F170:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003F184:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 4
    stw 28, 0x20(1)
    mr 28, 3
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8003F1BC
    li 3, 0x0
    .4byte 0x480000B8 # b .L_8003F270
L_8003F1BC:
    lwz 0, 0x0(29)
    addi 4, 1, 0x10
    .4byte 0x83ED86DC # lwz r31, lbl_8053A29C@sda21(r0)
    stw 0, 0x10(1)
    bl fn_80026060
    mr. 30, 3
    .4byte 0x41820020 # beq .L_8003F1F4
    lwz 3, 0x0(30)
    lwz 0, 0x10(3)
    cmplwi 0, 0x1
    .4byte 0x40800088 # bge .L_8003F26C
    li 0, 0x1
    stw 0, 0x10(3)
    .4byte 0x4800007C # b .L_8003F26C
L_8003F1F4:
    mr 3, 28
    bl fn_8003F4A8
    mr. 30, 3
    .4byte 0x4082001C # bne .L_8003F21C
    lwz 0, 0x0(29)
    mr 3, 28
    addi 4, 1, 0xc
    stw 0, 0xc(1)
    bl fn_8003F3C8
    mr 30, 3
L_8003F21C:
    cmplwi 30, 0x0
    .4byte 0x4182004C # beq .L_8003F26C
    lwz 0, 0x0(29)
    mr 3, 31
    mr 5, 30
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 6, 0x14(28)
    bl fn_80023750
    lwz 4, 0x0(30)
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_8003F26C
    li 3, 0x1
    stw 3, 0x10(4)
    lbz 0, 0x1d(4)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1d(4)
    lbz 0, 0x1d(4)
    rlwimi 0, 3, 6, 25, 25
    stb 0, 0x1d(4)
L_8003F26C:
    mr 3, 30
L_8003F270:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003F290:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8003F2CC
    li 3, 0x0
    .4byte 0x48000094 # b .L_8003F35C
L_8003F2CC:
    lwz 0, 0x0(29)
    addi 4, 1, 0xc
    .4byte 0x83ED86DC # lwz r31, lbl_8053A29C@sda21(r0)
    stw 0, 0xc(1)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_8003F304
    lwz 4, 0x0(3)
    lwz 0, 0x10(4)
    cmplwi 0, 0x1
    .4byte 0x40800068 # bge .L_8003F35C
    li 0, 0x1
    stw 0, 0x10(4)
    .4byte 0x4800005C # b .L_8003F35C
L_8003F304:
    lwz 5, 0x0(28)
    clrlslwi 4, 30, 24, 2
    lwz 0, 0x0(29)
    mr 3, 31
    add 31, 5, 4
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    mr 5, 31
    lwz 6, 0x14(28)
    bl fn_80023750
    lwz 4, 0x0(31)
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_8003F358
    li 3, 0x1
    stw 3, 0x10(4)
    lbz 0, 0x1d(4)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1d(4)
    lbz 0, 0x1d(4)
    rlwimi 0, 3, 6, 25, 25
    stb 0, 0x1d(4)
L_8003F358:
    mr 3, 31
L_8003F35C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003F37C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x0(4)
    addi 4, 1, 0x8
    stw 31, 0x1c(1)
    mr 31, 5
    stw 0, 0x8(1)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8003F3B4
    lwz 3, 0x0(3)
    mr 4, 31
    bl fn_800256C8
L_8003F3B4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8003F3C8:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, 0x1
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 25, 3
    mr 26, 4
    subi 29, 5, 0x1
    li 28, 0x0
    li 27, 0x0
    li 30, 0x0
    .4byte 0x83ED86D4 # lwz r31, lbl_8053A294@sda21(r0)
    .4byte 0x4800005C # b .L_8003F454
L_8003F3FC:
    li 0, 0x1
    lwz 3, 0x10(25)
    slw 0, 0, 27
    and. 0, 3, 0
    .4byte 0x40820040 # bne .L_8003F44C
    lwz 0, 0x0(25)
    mr 3, 31
    addi 4, 1, 0xc
    add 24, 0, 30
    lwz 5, 0x0(24)
    lwz 0, 0x18(5)
    stw 0, 0xc(1)
    lwz 12, 0x0(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    cmplw 3, 29
    .4byte 0x4080000C # bge .L_8003F44C
    mr 29, 3
    mr 28, 24
L_8003F44C:
    addi 30, 30, 0x4
    addi 27, 27, 0x1
L_8003F454:
    lwz 0, 0x4(25)
    cmpw 27, 0
    .4byte 0x4180FFA0 # blt .L_8003F3FC
    lwz 0, 0x0(26)
    mr 3, 31
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 12, 0x0(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    cmplw 3, 29
    .4byte 0x4180000C # blt .L_8003F490
    mr 3, 28
    .4byte 0x48000008 # b .L_8003F494
L_8003F490:
    li 3, 0x0
L_8003F494:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8003F4A8:
    lwz 0, 0x4(3)
    li 7, 0x0
    li 6, 0x0
    li 4, 0x1
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_8003F4FC
L_8003F4C4:
    lwz 5, 0x10(3)
    slw 0, 4, 7
    and. 0, 5, 0
    .4byte 0x40820020 # bne .L_8003F4F0
    lwz 0, 0x0(3)
    add 5, 0, 6
    lwz 0, 0x0(5)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8003F4F0
    mr 3, 5
    blr
L_8003F4F0:
    addi 6, 6, 0x4
    addi 7, 7, 0x1
    .4byte 0x4200FFCC # bdnz .L_8003F4C4
L_8003F4FC:
    li 3, 0x0
    blr

fn_8003F504:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804B4CC8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804B4CC8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003F554
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
L_8003F554:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003F58C
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
L_8003F58C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003F5C4
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
L_8003F5C4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8003F5FC
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8003F5FC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80021848
    .4byte fn_80021DA8
    .4byte fn_800227A8
    .4byte fn_80023A68
    .4byte fn_80024A0C
    .4byte fn_80025368
    .4byte fn_80025C94
    .4byte fn_80025F54
    .4byte fn_80026158
    .4byte fn_8002648C
    .4byte fn_80026E94
    .4byte fn_80027548
    .4byte fn_8002769C
    .4byte fn_800281FC
    .4byte fn_80028CA4
    .4byte fn_8002A504
    .4byte fn_8002AAA0
    .4byte fn_8002C2B0
    .4byte fn_8002C4CC
    .4byte fn_8002D758
    .4byte fn_8002E3D0
    .4byte fn_8002E8B4
    .4byte fn_8003046C
    .4byte fn_800307D0
    .4byte fn_80030960
    .4byte fn_80030B78
    .4byte fn_80031844
    .4byte fn_80032FC0
    .4byte fn_8003363C
    .4byte fn_800355BC
    .4byte fn_80039578
    .4byte fn_80039B24
    .4byte fn_8003AD90
    .4byte fn_8003B0D4
    .4byte fn_8003B32C
    .4byte fn_8003B6A8
    .4byte fn_8003C190
    .4byte fn_8003C618
    .4byte fn_8003D264
    .4byte fn_8003ED08
    .4byte fn_8003F504

