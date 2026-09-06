MEMORY
{
    text : origin = 0x80003100
}

SECTIONS
{
    GROUP:
    {
        .init ALIGN(0x4):{}
        extab ALIGN(0x20):{}
        extabindex ALIGN(0x10):{}
        .text ALIGN(0x10):{}
        .ctors ALIGN(0x20):{}
        .dtors ALIGN(0x20):{}
        .rodata ALIGN(0x20):{}
        .data ALIGN(0x20):{}
        .bss ALIGN(0x20):{}
        .sdata ALIGN(0x20):{}
        .sbss ALIGN(0x20):{}
        .sdata2 ALIGN(0x20):{}
        .sbss2 ALIGN(0x10):{}
        .stack ALIGN(0x100):{}
    } > text

    __nw__FUl = fn_80084370;
    __dl__FPv = dtor_80084580;
    __ct__14WaveControllerFiii = fn_804578F4;
    __ct__5ActorFv = Actor_ctor;
    __dt__5ActorFv = dtor_801F593C;
    __ct__14Fn801D30B8BaseFv = fn_801D30B8;
    __dt__14Fn801D30B8BaseFv = dtor_801D2C60;
    fn_802025C8 = __ct__4ArshFv;
    fn_80202A48 = __ct__4ZoshFv;
    __ct__15SubObj_8042B12CFv = fn_8042B12C;
    __ct__15SubObj_8042ADC0Fv = fn_8042ADC0;
    __ct__15SubObj_8042A7FCFv = fn_8042A7FC;
    __ct__22ArchiveHolder_803973E8FPviPCc = fn_803973E8;
    fn_80317C38 = __ct__4FtglFv;
    fn_8037CE00 = __ct__4JijiFv;
    fn_80316A60 = __ct__4TwtgFv;
    fn_80201E28 = __ct__4Bph2Fv;
    fn_802004EC = __ct__4GnefFv;
    fn_80200F60 = __ct__4Hbb2Fv;
    fn_802019BC = __ct__4HousFv;
    fn_801FFC84 = __ct__4MrtaFv;
    fn_80200FB8 = __ct__4NwokFv;
    fn_802024BC = __ct__4OsinFv;
    fn_80201EBC = __ct__4RasnFv;
    fn_802003C4 = __ct__4TlwpFv;
    fn_80202C34 = __ct__4TnglFv;
    fn_80200D10 = __ct__4TtatFv;
    fn_802008AC = __ct__4YnswFv;
    fn_802007A0 = __ct__4Zld3Fv;
    fn_802032AC = __ct__17fn_802032AC_actorFv;
    fn_80203D94 = __ct__4GoalFv;
    fn_801FFBB4 = __ct__4GlwpFv;
    fn_80201898 = __ct__4Gol2Fv;
    fn_80203520 = __ct__4BomeFv;
    fn_80203924 = __ct__4BpohFv;
    fn_80201D00 = __ct__4Dgt2Fv;
    fn_8020231C = __ct__4GrokFv;
    fn_80200A0C = __ct__4Rck2Fv;
    fn_80201FC8 = __ct__4WnwnFv;
    fn_80201A14 = __ct__17fn_80201A14_actorFv;
    fn_80203E28 = __ct__4DgtlFv;
    fn_8020097C = __ct__4EetcFv;
    fn_802018F0 = __ct__4BeeeFv;
    fn_80200ACC = __ct__4DmtwFv;
    fn_801FFD58 = __ct__17fn_801FFD58_actorFv;
    fn_801FF8AC = __ct__4CrnvFv;
    fn_801070B4 = __ct__17fn_801070B4_actorFv;
    fn_8010DCDC = __ct__4DbmsFv;
    fn_8020009C = __ct__4TugfFv;
    fn_80200A88 = __ct__4EowlFv;
    fn_80131AF0 = __ct__4WpcnFv;
    fn_801087F4 = __ct__17fn_801087F4_actorFv;
    fn_801092B0 = __ct__17fn_801092B0_actorFv;
    _stack_end = _f_sbss2 + SIZEOF(.sbss2);
    _stack_addr = (_stack_end + 0x10004 + 0x7) & ~0x7;
    _db_stack_addr = (_stack_addr + 0x2000);
    _db_stack_end = _stack_addr;
    __ArenaLo = (_db_stack_addr + 0x1f) & ~0x1f;
    __ArenaHi = 0x81700000;
}

FORCEACTIVE
{
    fn_80021848
    fn_80021DA8
    fn_800227A8
    fn_80023A68
    fn_80024A0C
    fn_80025368
    fn_80025C94
    fn_80025F54
    fn_80026158
    fn_8002648C
    fn_80026E94
    fn_80027548
    fn_8002769C
    fn_800281FC
    fn_80028CA4
    fn_8002A504
    fn_8002AAA0
    fn_8002C2B0
    fn_8002C4CC
    fn_8002D758
    fn_8002E3D0
    fn_8002E8B4
    fn_8003046C
    fn_800307D0
    fn_80030960
    fn_80030B78
    fn_80031844
    fn_80032FC0
    fn_8003363C
    fn_800355BC
    fn_80039578
    fn_80039B24
    fn_8003AD90
    fn_8003B0D4
    fn_8003B32C
    fn_8003B6A8
    fn_8003C190
    fn_8003C618
    fn_8003D264
    fn_8003ED08
    fn_8003F504
    __destroy_global_chain
    __fini_cpp_exceptions
    __init_cpp_exceptions
    fn_80079E64
    fn_8007B1B0
    fn_8007B650
    fn_8007ECD4
    fn_8007FAD0
    fn_800813BC
    fn_800834A4
    fn_800858F8
    fn_8008CAA4
    fn_8008E594
    fn_80093598
    fn_80097048
    fn_800A6898
    fn_800BB5F0
    fn_800C262C
    fn_800DF6DC
    fn_800E2998
    fn_800E64F8
    fn_800F39EC
    fn_800F449C
    fn_800F65FC
    fn_800F7DA8
    fn_800FD214
    fn_800FE69C
    fn_800FEBAC
    fn_800FEE3C
    fn_80100678
    fn_80102054
    fn_80102E58
    fn_80103124
    fn_801040AC
    fn_80104A18
    fn_80105144
    fn_80105E1C
    fn_801068B8
    fn_8010713C
    fn_801081F0
    fn_80108848
    fn_80109310
    fn_8010B060
    fn_8010C070
    fn_8010D848
    fn_8010DD20
    fn_8010E0B0
    fn_801121A4
    fn_80113564
    fn_80115694
    fn_80116C68
    fn_80118160
    fn_80119ED4
    fn_8011A298
    fn_8011B16C
    fn_8011CCA4
    fn_8011D7FC
    fn_8011E748
    fn_8011ECC8
    fn_8011FD94
    fn_801211C8
    fn_801248B4
    fn_80125934
    fn_80126578
    fn_80126828
    fn_80127BFC
    fn_8012849C
    fn_80128F7C
    fn_801298E8
    fn_8012A3C8
    fn_8012CBE4
    fn_8012D89C
    fn_8012DD4C
    fn_8012E7DC
    fn_8012EDE4
    fn_8012F1C0
    fn_8012F688
    fn_8012F9A8
    fn_8012FD78
    fn_801300EC
    fn_80130D88
    fn_80131B74
    fn_80131FB8
    fn_80133728
    fn_8013429C
    fn_801349E0
    fn_801399C4
    fn_8013A8B0
    fn_8013C3A4
    fn_8013F758
    fn_80140C00
    fn_80142400
    fn_80143650
    fn_80143F10
    fn_80145078
    fn_80145D3C
    fn_801469A4
    fn_8014792C
    fn_8014AB08
    fn_8014DAB0
    fn_8014FB38
    fn_8015478C
    fn_801553B4
    fn_80158400
    fn_80159594
    fn_8015B768
    fn_8015C604
    fn_8015DBEC
    fn_8015F230
    fn_8016042C
    fn_801616AC
    fn_801641A0
    fn_80165238
    fn_801669AC
    fn_80167714
    fn_80168688
    fn_8016A090
    fn_8016FDE4
    fn_80171F4C
    fn_80172670
    fn_80175460
    fn_801767B4
    fn_80178F2C
    fn_8017A228
    fn_8017AF1C
    fn_8017BDF8
    fn_8017ED1C
    fn_801826F0
    fn_80183320
    fn_80183E1C
    fn_80184B40
    fn_80186F20
    fn_8018A6B4
    fn_8018E970
    fn_8019009C
    fn_80191E14
    fn_80196E14
    fn_8019CF08
    fn_8019E13C
    fn_801A04EC
    fn_801A3388
    fn_801A3A2C
    fn_801A646C
    fn_801A7F70
    fn_801A8E68
    fn_801AAA68
    fn_801AC6C8
    fn_801AE7A0
    fn_801AF914
    fn_801B07DC
    fn_801B25B8
    fn_801B3D3C
    fn_801B4AE8
    fn_801B6410
    fn_801B6A2C
    fn_801B7560
    fn_801B7E9C
    fn_801B950C
    fn_801BA438
    fn_801BB3F4
    fn_801BCEE4
    fn_801BD69C
    fn_801BDC38
    fn_801BEB98
    fn_801BF5EC
    fn_801C0B4C
    fn_801C1544
    fn_801C24B4
    fn_801C58E4
    fn_801C6828
    fn_801C6F98
    fn_801C98D4
    fn_801CB04C
    fn_801CDA68
    fn_801D0FD8
    fn_801D19F4
    fn_801D26F4
    fn_801D2A3C
    fn_801D30FC
    fn_801D3A98
    fn_801D44D8
    fn_801D6AC8
    fn_801D78D8
    fn_801D81DC
    fn_801DA59C
    fn_801DAA48
    fn_801DAF68
    fn_801DC040
    fn_801DCA74
    fn_801DCF88
    fn_801DE4F0
    fn_801E231C
    fn_801E2F9C
    fn_801E33F4
    fn_801E47F4
    fn_801E4B30
    fn_801E5DA4
    fn_801E6458
    fn_801E6B24
    fn_801E79D0
    fn_801E7DF8
    fn_801E98D8
    fn_801EA8E8
    fn_801EADE8
    fn_801EBA60
    fn_801ED1B8
    fn_801ED980
    fn_801EE028
    fn_801F5E34
    fn_801F9260
    fn_80204414
    fn_80204B20
    fn_8020690C
    fn_80207324
    fn_80207B60
    fn_80208C38
    fn_802099F0
    fn_8020B130
    fn_8020BE84
    fn_8020CA84
    fn_8020D368
    fn_8020D950
    fn_8020F574
    fn_8020FC2C
    fn_8021040C
    fn_80210B6C
    fn_8021289C
    fn_80212C18
    fn_80213BDC
    fn_80214020
    fn_802142CC
    fn_80215184
    fn_80215594
    fn_80215870
    fn_80216718
    fn_80217150
    fn_80217538
    fn_80218044
    fn_8021868C
    fn_80218AD0
    fn_8021A34C
    fn_8021AD04
    fn_8021B6E0
    fn_8021BA98
    fn_8021BD84
    fn_8021C090
    fn_8021C624
    fn_8021CBC0
    fn_8021D048
    fn_8021D510
    fn_8021EE40
    fn_8021F28C
    fn_8021FB94
    fn_8021FFB4
    fn_802203BC
    fn_80220D30
    fn_80221920
    fn_802221D8
    fn_80222AA0
    fn_80223180
    fn_802240D0
    fn_802243F8
    fn_80226DA4
    fn_80229578
    fn_8022AB40
    fn_8023F9B8
    fn_80255D28
    fn_80256A50
    fn_8025E8F4
    fn_80264774
    fn_80268280
    fn_8026F9FC
    fn_8027E398
    fn_80285C34
    fn_80289424
    fn_8028A118
    fn_8028A958
    fn_8028BE44
    fn_8028DB54
    fn_8028F97C
    fn_802955A8
    fn_8029B538
    fn_8029BAF4
    fn_8029C360
    fn_8029D20C
    fn_8029D674
    fn_802A3E94
    fn_802A4430
    fn_802A6828
    fn_802A7B18
    fn_802A7FFC
    fn_802A9428
    fn_802AA140
    fn_802AA9D8
    fn_802AAFB0
    fn_802ABA50
    fn_802ABE18
    fn_802AC368
    fn_802AC688
    fn_802ACC80
    fn_802AF108
    fn_802AF7EC
    fn_802B0338
    fn_802B0AB4
    fn_802B1334
    fn_802B1F28
    fn_802B3128
    fn_802B3450
    fn_802B5FA4
    fn_802B684C
    fn_802B766C
    fn_802B7A54
    fn_802B8D58
    fn_802B9A88
    fn_802B9E24
    fn_802BA110
    fn_802BA334
    fn_802BC618
    fn_802BD69C
    fn_802BE178
    fn_802BE6D4
    fn_802BEE18
    fn_802BF1EC
    fn_802BF958
    fn_802C13F0
    fn_802C572C
    fn_802C82DC
    fn_802C92D0
    fn_802C9720
    fn_802CA060
    fn_802CAFA0
    fn_802CBFA0
    fn_802CCC8C
    fn_802CDB18
    fn_802CE93C
    fn_802CFBA8
    fn_802D0900
    fn_802D12B8
    fn_802D2880
    fn_802D2F60
    fn_802D3794
    fn_802DF234
    fn_802DFAC4
    fn_802E0168
    fn_802E05A4
    fn_802E0890
    fn_802E191C
    fn_802E1E50
    fn_802E276C
    fn_802E3E84
    fn_802E41BC
    fn_802E4A50
    fn_802E5A20
    fn_802E6728
    fn_802E6CA0
    fn_802E7080
    fn_802E7410
    fn_802E7728
    fn_802E7B90
    fn_802E8BD8
    fn_802E8EE8
    fn_802E9204
    fn_802EAD78
    fn_802EBFB0
    fn_802EC518
    fn_802EC8B0
    fn_802ECF1C
    fn_802ED314
    fn_802EEA2C
    fn_802EEE7C
    fn_802EF224
    fn_802EF548
    fn_802F0108
    fn_802F1628
    fn_802F3950
    fn_802F3D58
    fn_802F419C
    fn_802F45FC
    fn_802F48C8
    fn_802F4E1C
    fn_803004C4
    fn_80301AAC
    fn_8030979C
    fn_8030AC60
    fn_8030BE34
    fn_8030E77C
    fn_8030FB3C
    fn_80310BC4
    fn_80311578
    fn_80312444
    fn_803139FC
    fn_80316ABC
    fn_803170B8
    fn_80317C94
    fn_80319EF8
    fn_8031BE2C
    fn_8031DF20
    fn_8031ED28
    fn_8031FB3C
    fn_80320150
    fn_8032377C
    fn_80324DE8
    fn_8032686C
    fn_803274A0
    fn_803285CC
    fn_80328B48
    fn_80329244
    fn_8032A95C
    fn_8032DD70
    fn_8032EF24
    fn_80333734
    fn_803340F4
    fn_80335858
    fn_80335E1C
    fn_803370AC
    fn_8033742C
    fn_803388BC
    fn_8033959C
    fn_8033BE5C
    fn_8033C360
    fn_8033CAC0
    fn_8033E414
    fn_8033F224
    fn_8033F77C
    fn_80340CA4
    fn_80341A8C
    fn_8034384C
    fn_80345218
    fn_80346C00
    fn_80347C6C
    fn_80347F94
    fn_80348780
    fn_803496F0
    fn_8034A48C
    fn_8034A81C
    fn_8034C72C
    fn_8034DDCC
    fn_8034EBB8
    fn_80351B84
    fn_803522A4
    fn_803525E8
    fn_803534A0
    fn_80353C4C
    fn_80354820
    fn_80354B40
    fn_80356588
    fn_803576B4
    fn_80357BC4
    fn_8035823C
    fn_8035B348
    fn_8035C650
    fn_8035DBB4
    fn_8035E60C
    fn_8035F070
    fn_80362374
    fn_80366E60
    fn_80367F74
    fn_8036C8FC
    fn_8036D5D4
    fn_8036DB48
    fn_8036E320
    fn_8036F93C
    fn_80372B00
    fn_80372F14
    fn_803739B4
    fn_80374564
    fn_8037574C
    fn_80376170
    fn_8037662C
    fn_80376928
    fn_80376D7C
    fn_80377BFC
    fn_80378070
    fn_80378E54
    fn_8037964C
    fn_80379D60
    fn_8037AAA0
    fn_8037B150
    fn_8037CE5C
    fn_8037DD44
    fn_8038DC38
    fn_8038F7D0
    fn_8038FE18
    fn_803905F4
    fn_80391AC0
    fn_80393F10
    fn_803942A4
    fn_803A3260
    fn_803A5EC0
    fn_803A83C0
    fn_803A8BD8
    fn_803B7BA8
    fn_803B874C
    fn_803B8A50
    fn_803B961C
    fn_803BAAB0
    fn_803BC4C8
    fn_803D24E4
    fn_803D5F1C
    fn_803D6DC0
    fn_803D9720
    fn_803DA490
    fn_803DAA18
    fn_803E1224
    fn_803F01F4
    fn_803FEB94
    fn_80400BA0
    fn_80401604
    fn_8040217C
    fn_80403B48
    fn_804149E0
    fn_804188EC
    fn_80421438
    fn_80427B08
    fn_8042E788
    fn_80432414
    fn_8043414C
    fn_804379B0
    fn_8043831C
    fn_80438A44
    fn_80439EC4
    fn_8044094C
    fn_804410F4
    fn_804417A4
    fn_804425EC
    fn_80442A40
    fn_804430B8
    fn_80443894
    fn_80445338
    fn_80446394
    fn_804473F4
    fn_80447D88
    fn_8044871C
    fn_80449768
    fn_8044A604
    fn_8044B5E8
    fn_8044BE04
    fn_8044C5CC
    fn_804538D4
    fn_804553E8
    fn_80455A80
    fn_804579E4
    fn_80457C10
    fn_8045A114
    fn_8045ADEC
    fn_8045B4CC
    fn_8045B6F8
    fn_8045BAC0
}
