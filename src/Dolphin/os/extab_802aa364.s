# MAJOR: found via the dispatch-table cross-check (see
# project_fsa_dispatch_crosscheck_discovery.md). A 149-function, 67KB
# dtk-fused mega-bundle (0x802AA364-0x802BAA0C) - by far the largest
# single Track-A landing this project has done, verified 100%
# byte-contiguous via a purpose-built span-walking script (every
# fn+size == next_fn checked programmatically, not by hand) all the way
# from this dtor to the boundary of already-landed content.
# Contains at least 5 real FourCC actors' vtable bodies (dtors
# fn_802AA364/802AABFC/802AB1D4/802ABC74/802AC03C/802AC58C/802ACEA4/
# 802AF32C/802AFA10/802B0998/802B114C/802B214C/802B334C/802B61C8/
# 802B74F4/802B7890/802B7C78/802B8F7C/802B9CAC/802BA048/802BA0AC, all
# with ctors already landed elsewhere in the actor-ctor-dispatch region)
# whose vtables use the confirmed universal shared-Actor-default methods
# for most slots, plus a large number of "9-guard/9-target" per-TU sinit
# copies (24 .ctors registrations total) and non-vtable private helper
# functions - some quite large (e.g. fn_802ACF04+fn_802ADC18+fn_802AEE10
# together span ~9.4KB, fn_802B3AB8 alone is 0x1708/5896 bytes,
# fn_802B5360 is 0xC44/3140 bytes) - not individually field-mapped or
# semantically traced given the sheer scale; landed on the strength of
# confirmed contiguity + the confirmed vtable-install evidence for each
# actor dtor. Needs -mgekko (uses psq_l/psq_st).
.section extab, "a"
.balign 4
.global etb_8000C50C
etb_8000C50C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C50C, 8

.global etb_8000C514
etb_8000C514:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C514, 8

.global etb_8000C51C
etb_8000C51C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C51C, 8

.global etb_8000C524
etb_8000C524:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C524, 8

.global etb_8000C52C
etb_8000C52C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C52C, 8

.global etb_8000C534
etb_8000C534:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C534, 8

.global etb_8000C53C
etb_8000C53C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C53C, 8

.global etb_8000C544
etb_8000C544:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C544, 8

.global etb_8000C54C
etb_8000C54C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C54C, 8

.global etb_8000C554
etb_8000C554:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C554, 8

.global etb_8000C55C
etb_8000C55C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C55C, 8

.global etb_8000C564
etb_8000C564:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C564, 8

.global etb_8000C56C
etb_8000C56C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C56C, 8

.global etb_8000C574
etb_8000C574:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000C574, 8

.global etb_8000C57C
etb_8000C57C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C57C, 8

.global etb_8000C584
etb_8000C584:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C584, 8

.global etb_8000C58C
etb_8000C58C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C58C, 8

.global etb_8000C594
etb_8000C594:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C594, 8

.global etb_8000C59C
etb_8000C59C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C59C, 8

.global etb_8000C5A4
etb_8000C5A4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C5A4, 8

.global etb_8000C5AC
etb_8000C5AC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C5AC, 8

.global etb_8000C5B4
etb_8000C5B4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C5B4, 8

.global etb_8000C5BC
etb_8000C5BC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C5BC, 8

.global etb_8000C5C4
etb_8000C5C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C5C4, 8

.global etb_8000C5CC
etb_8000C5CC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C5CC, 8

.global etb_8000C5D4
etb_8000C5D4:
    .4byte 0x18080000
    .4byte 0x00000060
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_8000C5D4, 24

.global etb_8000C5EC
etb_8000C5EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C5EC, 8

.global etb_8000C5F4
etb_8000C5F4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C5F4, 8

.global etb_8000C5FC
etb_8000C5FC:
    .4byte 0x194A0000
    .4byte 0x00000000
.size etb_8000C5FC, 8

.global etb_8000C604
etb_8000C604:
    .4byte 0x414A0000
    .4byte 0x00000000
.size etb_8000C604, 8

.global etb_8000C60C
etb_8000C60C:
    .4byte 0x314A0000
    .4byte 0x00000000
.size etb_8000C60C, 8

.global etb_8000C614
etb_8000C614:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C614, 8

.global etb_8000C61C
etb_8000C61C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C61C, 8

.global etb_8000C624
etb_8000C624:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C624, 8

.global etb_8000C62C
etb_8000C62C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C62C, 8

.global etb_8000C634
etb_8000C634:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C634, 8

.global etb_8000C63C
etb_8000C63C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C63C, 8

.global etb_8000C644
etb_8000C644:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C644, 8

.global etb_8000C64C
etb_8000C64C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C64C, 8

.global etb_8000C654
etb_8000C654:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C654, 8

.global etb_8000C65C
etb_8000C65C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C65C, 8

.global etb_8000C664
etb_8000C664:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C664, 8

.global etb_8000C66C
etb_8000C66C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C66C, 8

.global etb_8000C674
etb_8000C674:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C674, 8

.global etb_8000C67C
etb_8000C67C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C67C, 8

.global etb_8000C684
etb_8000C684:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C684, 8

.global etb_8000C68C
etb_8000C68C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C68C, 8

.global etb_8000C694
etb_8000C694:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C694, 8

.global etb_8000C69C
etb_8000C69C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C69C, 8

.global etb_8000C6A4
etb_8000C6A4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C6A4, 8

.global etb_8000C6AC
etb_8000C6AC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000C6AC, 8

.global etb_8000C6B4
etb_8000C6B4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000C6B4, 8

.global etb_8000C6BC
etb_8000C6BC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C6BC, 8

.global etb_8000C6C4
etb_8000C6C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C6C4, 8

.global etb_8000C6CC
etb_8000C6CC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C6CC, 8

.global etb_8000C6D4
etb_8000C6D4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C6D4, 8

.global etb_8000C6DC
etb_8000C6DC:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000C6DC, 8

.global etb_8000C6E4
etb_8000C6E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C6E4, 8

.global etb_8000C6EC
etb_8000C6EC:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000C6EC, 8

.global etb_8000C6F4
etb_8000C6F4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C6F4, 8

.global etb_8000C6FC
etb_8000C6FC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C6FC, 8

.global etb_8000C704
etb_8000C704:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C704, 8

.global etb_8000C70C
etb_8000C70C:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000C70C, 8

.global etb_8000C714
etb_8000C714:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C714, 8

.global etb_8000C71C
etb_8000C71C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C71C, 8

.global etb_8000C724
etb_8000C724:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C724, 8

.global etb_8000C72C
etb_8000C72C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C72C, 8

.global etb_8000C734
etb_8000C734:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C734, 8

.global etb_8000C73C
etb_8000C73C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C73C, 8

.global etb_8000C744
etb_8000C744:
    .4byte 0x30CA0000
    .4byte 0x00000000
.size etb_8000C744, 8

.global etb_8000C74C
etb_8000C74C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C74C, 8

.global etb_8000C754
etb_8000C754:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C754, 8

.global etb_8000C75C
etb_8000C75C:
    .4byte 0x100A0000
    .4byte 0x00000BEC
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000C75C, 24

.global etb_8000C774
etb_8000C774:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C774, 8

.global etb_8000C77C
etb_8000C77C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C77C, 8

.global etb_8000C784
etb_8000C784:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C784, 8

.global etb_8000C78C
etb_8000C78C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C78C, 8

.global etb_8000C794
etb_8000C794:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C794, 8

.global etb_8000C79C
etb_8000C79C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C79C, 8

.global etb_8000C7A4
etb_8000C7A4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C7A4, 8

.global etb_8000C7AC
etb_8000C7AC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C7AC, 8

.global etb_8000C7B4
etb_8000C7B4:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000C7B4, 8

.global etb_8000C7BC
etb_8000C7BC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C7BC, 8

.global etb_8000C7C4
etb_8000C7C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C7C4, 8

.global etb_8000C7CC
etb_8000C7CC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C7CC, 8

.global etb_8000C7D4
etb_8000C7D4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C7D4, 8

.global etb_8000C7DC
etb_8000C7DC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000C7DC, 8

.global etb_8000C7E4
etb_8000C7E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C7E4, 8

.global etb_8000C7EC
etb_8000C7EC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C7EC, 8

.global etb_8000C7F4
etb_8000C7F4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C7F4, 8

.global etb_8000C7FC
etb_8000C7FC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C7FC, 8

.global etb_8000C804
etb_8000C804:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C804, 8

.global etb_8000C80C
etb_8000C80C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C80C, 8

.global etb_8000C814
etb_8000C814:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C814, 8

.global etb_8000C81C
etb_8000C81C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C81C, 8

.global etb_8000C824
etb_8000C824:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C824, 8

.global etb_8000C82C
etb_8000C82C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C82C, 8

.global etb_8000C834
etb_8000C834:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C834, 8

.global etb_8000C83C
etb_8000C83C:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_8000C83C, 8

.global etb_8000C844
etb_8000C844:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C844, 8

.global etb_8000C84C
etb_8000C84C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C84C, 8

.global etb_8000C854
etb_8000C854:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C854, 8

.global etb_8000C85C
etb_8000C85C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C85C, 8

.global etb_8000C864
etb_8000C864:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C864, 8

.global etb_8000C86C
etb_8000C86C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C86C, 8

.global etb_8000C874
etb_8000C874:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C874, 8

.global etb_8000C87C
etb_8000C87C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C87C, 8

.global etb_8000C884
etb_8000C884:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C884, 8

.global etb_8000C88C
etb_8000C88C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C88C, 8

.section extabindex, "a"
.balign 4
.global eti_8001B13C
eti_8001B13C:
    .4byte fn_802AA364
    .4byte 0x00000060
    .4byte etb_8000C50C
.size eti_8001B13C, 12

.global eti_8001B148
eti_8001B148:
    .4byte fn_802AA3C8
    .4byte 0x000004A0
    .4byte etb_8000C514
.size eti_8001B148, 12

.global eti_8001B154
eti_8001B154:
    .4byte fn_802AA868
    .4byte 0x00000170
    .4byte etb_8000C51C
.size eti_8001B154, 12

.global eti_8001B160
eti_8001B160:
    .4byte fn_802AA9D8
    .4byte 0x00000224
    .4byte etb_8000C524
.size eti_8001B160, 12

.global eti_8001B16C
eti_8001B16C:
    .4byte fn_802AABFC
    .4byte 0x00000060
    .4byte etb_8000C52C
.size eti_8001B16C, 12

.global eti_8001B178
eti_8001B178:
    .4byte fn_802AAC60
    .4byte 0x00000260
    .4byte etb_8000C534
.size eti_8001B178, 12

.global eti_8001B184
eti_8001B184:
    .4byte fn_802AAEC0
    .4byte 0x000000F0
    .4byte etb_8000C53C
.size eti_8001B184, 12

.global eti_8001B190
eti_8001B190:
    .4byte fn_802AAFB0
    .4byte 0x00000224
    .4byte etb_8000C544
.size eti_8001B190, 12

.global eti_8001B19C
eti_8001B19C:
    .4byte fn_802AB1D4
    .4byte 0x00000060
    .4byte etb_8000C54C
.size eti_8001B19C, 12

.global eti_8001B1A8
eti_8001B1A8:
    .4byte fn_802AB238
    .4byte 0x000007A4
    .4byte etb_8000C554
.size eti_8001B1A8, 12

.global eti_8001B1B4
eti_8001B1B4:
    .4byte fn_802AB9DC
    .4byte 0x00000074
    .4byte etb_8000C55C
.size eti_8001B1B4, 12

.global eti_8001B1C0
eti_8001B1C0:
    .4byte fn_802ABA50
    .4byte 0x00000224
    .4byte etb_8000C564
.size eti_8001B1C0, 12

.global eti_8001B1CC
eti_8001B1CC:
    .4byte fn_802ABC74
    .4byte 0x00000060
    .4byte etb_8000C56C
.size eti_8001B1CC, 12

.global eti_8001B1D8
eti_8001B1D8:
    .4byte fn_802ABCD8
    .4byte 0x00000104
    .4byte etb_8000C574
.size eti_8001B1D8, 12

.global eti_8001B1E4
eti_8001B1E4:
    .4byte fn_802ABE18
    .4byte 0x00000224
    .4byte etb_8000C57C
.size eti_8001B1E4, 12

.global eti_8001B1F0
eti_8001B1F0:
    .4byte fn_802AC03C
    .4byte 0x00000060
    .4byte etb_8000C584
.size eti_8001B1F0, 12

.global eti_8001B1FC
eti_8001B1FC:
    .4byte fn_802AC0AC
    .4byte 0x00000248
    .4byte etb_8000C58C
.size eti_8001B1FC, 12

.global eti_8001B208
eti_8001B208:
    .4byte fn_802AC2F4
    .4byte 0x00000074
    .4byte etb_8000C594
.size eti_8001B208, 12

.global eti_8001B214
eti_8001B214:
    .4byte fn_802AC368
    .4byte 0x00000224
    .4byte etb_8000C59C
.size eti_8001B214, 12

.global eti_8001B220
eti_8001B220:
    .4byte fn_802AC58C
    .4byte 0x00000060
    .4byte etb_8000C5A4
.size eti_8001B220, 12

.global eti_8001B22C
eti_8001B22C:
    .4byte fn_802AC5F4
    .4byte 0x00000094
    .4byte etb_8000C5AC
.size eti_8001B22C, 12

.global eti_8001B238
eti_8001B238:
    .4byte fn_802AC688
    .4byte 0x00000224
    .4byte etb_8000C5B4
.size eti_8001B238, 12

.global eti_8001B244
eti_8001B244:
    .4byte fn_802AC98C
    .4byte 0x000000D8
    .4byte etb_8000C5BC
.size eti_8001B244, 12

.global eti_8001B250
eti_8001B250:
    .4byte fn_802ACA64
    .4byte 0x000000F4
    .4byte etb_8000C5C4
.size eti_8001B250, 12

.global eti_8001B25C
eti_8001B25C:
    .4byte fn_802ACB68
    .4byte 0x00000080
    .4byte etb_8000C5CC
.size eti_8001B25C, 12

.global eti_8001B268
eti_8001B268:
    .4byte fn_802ACBE8
    .4byte 0x00000098
    .4byte etb_8000C5D4
.size eti_8001B268, 12

.global eti_8001B274
eti_8001B274:
    .4byte fn_802ACC80
    .4byte 0x00000224
    .4byte etb_8000C5EC
.size eti_8001B274, 12

.global eti_8001B280
eti_8001B280:
    .4byte fn_802ACEA4
    .4byte 0x00000060
    .4byte etb_8000C5F4
.size eti_8001B280, 12

.global eti_8001B28C
eti_8001B28C:
    .4byte fn_802ACF04
    .4byte 0x00000D14
    .4byte etb_8000C5FC
.size eti_8001B28C, 12

.global eti_8001B298
eti_8001B298:
    .4byte fn_802ADC18
    .4byte 0x000011F8
    .4byte etb_8000C604
.size eti_8001B298, 12

.global eti_8001B2A4
eti_8001B2A4:
    .4byte fn_802AEE10
    .4byte 0x000002F8
    .4byte etb_8000C60C
.size eti_8001B2A4, 12

.global eti_8001B2B0
eti_8001B2B0:
    .4byte fn_802AF108
    .4byte 0x00000224
    .4byte etb_8000C614
.size eti_8001B2B0, 12

.global eti_8001B2BC
eti_8001B2BC:
    .4byte fn_802AF32C
    .4byte 0x00000060
    .4byte etb_8000C61C
.size eti_8001B2BC, 12

.global eti_8001B2C8
eti_8001B2C8:
    .4byte fn_802AF38C
    .4byte 0x00000324
    .4byte etb_8000C624
.size eti_8001B2C8, 12

.global eti_8001B2D4
eti_8001B2D4:
    .4byte fn_802AF7EC
    .4byte 0x00000224
    .4byte etb_8000C62C
.size eti_8001B2D4, 12

.global eti_8001B2E0
eti_8001B2E0:
    .4byte fn_802AFA10
    .4byte 0x00000060
    .4byte etb_8000C634
.size eti_8001B2E0, 12

.global eti_8001B2EC
eti_8001B2EC:
    .4byte fn_802AFA70
    .4byte 0x00000278
    .4byte etb_8000C63C
.size eti_8001B2EC, 12

.global eti_8001B2F8
eti_8001B2F8:
    .4byte fn_802AFCE8
    .4byte 0x000004AC
    .4byte etb_8000C644
.size eti_8001B2F8, 12

.global eti_8001B304
eti_8001B304:
    .4byte fn_802B0194
    .4byte 0x000001A4
    .4byte etb_8000C64C
.size eti_8001B304, 12

.global eti_8001B310
eti_8001B310:
    .4byte fn_802B0338
    .4byte 0x00000224
    .4byte etb_8000C654
.size eti_8001B310, 12

.global eti_8001B31C
eti_8001B31C:
    .4byte fn_802B055C
    .4byte 0x000000E8
    .4byte etb_8000C65C
.size eti_8001B31C, 12

.global eti_8001B328
eti_8001B328:
    .4byte fn_802B0644
    .4byte 0x00000354
    .4byte etb_8000C664
.size eti_8001B328, 12

.global eti_8001B334
eti_8001B334:
    .4byte fn_802B0998
    .4byte 0x000000B4
    .4byte etb_8000C66C
.size eti_8001B334, 12

.global eti_8001B340
eti_8001B340:
    .4byte fn_802B0AB4
    .4byte 0x00000224
    .4byte etb_8000C674
.size eti_8001B340, 12

.global eti_8001B34C
eti_8001B34C:
    .4byte fn_802B0CD8
    .4byte 0x000002C4
    .4byte etb_8000C67C
.size eti_8001B34C, 12

.global eti_8001B358
eti_8001B358:
    .4byte fn_802B0F9C
    .4byte 0x000001B0
    .4byte etb_8000C684
.size eti_8001B358, 12

.global eti_8001B364
eti_8001B364:
    .4byte fn_802B114C
    .4byte 0x00000084
    .4byte etb_8000C68C
.size eti_8001B364, 12

.global eti_8001B370
eti_8001B370:
    .4byte fn_802B11D0
    .4byte 0x00000164
    .4byte etb_8000C694
.size eti_8001B370, 12

.global eti_8001B37C
eti_8001B37C:
    .4byte fn_802B1334
    .4byte 0x00000224
    .4byte etb_8000C69C
.size eti_8001B37C, 12

.global eti_8001B388
eti_8001B388:
    .4byte fn_802B1558
    .4byte 0x000000B8
    .4byte etb_8000C6A4
.size eti_8001B388, 12

.global eti_8001B394
eti_8001B394:
    .4byte fn_802B1610
    .4byte 0x000005D0
    .4byte etb_8000C6AC
.size eti_8001B394, 12

.global eti_8001B3A0
eti_8001B3A0:
    .4byte fn_802B1BE0
    .4byte 0x00000180
    .4byte etb_8000C6B4
.size eti_8001B3A0, 12

.global eti_8001B3AC
eti_8001B3AC:
    .4byte fn_802B1EB4
    .4byte 0x00000048
    .4byte etb_8000C6BC
.size eti_8001B3AC, 12

.global eti_8001B3B8
eti_8001B3B8:
    .4byte fn_802B1F28
    .4byte 0x00000224
    .4byte etb_8000C6C4
.size eti_8001B3B8, 12

.global eti_8001B3C4
eti_8001B3C4:
    .4byte fn_802B214C
    .4byte 0x00000060
    .4byte etb_8000C6CC
.size eti_8001B3C4, 12

.global eti_8001B3D0
eti_8001B3D0:
    .4byte fn_802B21AC
    .4byte 0x00000040
    .4byte etb_8000C6D4
.size eti_8001B3D0, 12

.global eti_8001B3DC
eti_8001B3DC:
    .4byte fn_802B21EC
    .4byte 0x0000053C
    .4byte etb_8000C6DC
.size eti_8001B3DC, 12

.global eti_8001B3E8
eti_8001B3E8:
    .4byte fn_802B2728
    .4byte 0x000001BC
    .4byte etb_8000C6E4
.size eti_8001B3E8, 12

.global eti_8001B3F4
eti_8001B3F4:
    .4byte fn_802B28E4
    .4byte 0x00000660
    .4byte etb_8000C6EC
.size eti_8001B3F4, 12

.global eti_8001B400
eti_8001B400:
    .4byte fn_802B2F44
    .4byte 0x000001E4
    .4byte etb_8000C6F4
.size eti_8001B400, 12

.global eti_8001B40C
eti_8001B40C:
    .4byte fn_802B3128
    .4byte 0x00000224
    .4byte etb_8000C6FC
.size eti_8001B40C, 12

.global eti_8001B418
eti_8001B418:
    .4byte fn_802B334C
    .4byte 0x00000060
    .4byte etb_8000C704
.size eti_8001B418, 12

.global eti_8001B424
eti_8001B424:
    .4byte fn_802B33B0
    .4byte 0x0000009C
    .4byte etb_8000C70C
.size eti_8001B424, 12

.global eti_8001B430
eti_8001B430:
    .4byte fn_802B3450
    .4byte 0x00000224
    .4byte etb_8000C714
.size eti_8001B430, 12

.global eti_8001B43C
eti_8001B43C:
    .4byte fn_802B3674
    .4byte 0x000000B0
    .4byte etb_8000C71C
.size eti_8001B43C, 12

.global eti_8001B448
eti_8001B448:
    .4byte fn_802B3724
    .4byte 0x00000114
    .4byte etb_8000C724
.size eti_8001B448, 12

.global eti_8001B454
eti_8001B454:
    .4byte fn_802B3838
    .4byte 0x00000114
    .4byte etb_8000C72C
.size eti_8001B454, 12

.global eti_8001B460
eti_8001B460:
    .4byte fn_802B39E8
    .4byte 0x00000054
    .4byte etb_8000C734
.size eti_8001B460, 12

.global eti_8001B46C
eti_8001B46C:
    .4byte fn_802B3A48
    .4byte 0x0000006C
    .4byte etb_8000C73C
.size eti_8001B46C, 12

.global eti_8001B478
eti_8001B478:
    .4byte fn_802B3AB8
    .4byte 0x00001708
    .4byte etb_8000C744
.size eti_8001B478, 12

.global eti_8001B484
eti_8001B484:
    .4byte fn_802B51C0
    .4byte 0x000000C4
    .4byte etb_8000C74C
.size eti_8001B484, 12

.global eti_8001B490
eti_8001B490:
    .4byte fn_802B5284
    .4byte 0x000000DC
    .4byte etb_8000C754
.size eti_8001B490, 12

.global eti_8001B49C
eti_8001B49C:
    .4byte fn_802B5360
    .4byte 0x00000C44
    .4byte etb_8000C75C
.size eti_8001B49C, 12

.global eti_8001B4A8
eti_8001B4A8:
    .4byte fn_802B5FA4
    .4byte 0x00000224
    .4byte etb_8000C774
.size eti_8001B4A8, 12

.global eti_8001B4B4
eti_8001B4B4:
    .4byte fn_802B61C8
    .4byte 0x00000060
    .4byte etb_8000C77C
.size eti_8001B4B4, 12

.global eti_8001B4C0
eti_8001B4C0:
    .4byte fn_802B6228
    .4byte 0x00000130
    .4byte etb_8000C784
.size eti_8001B4C0, 12

.global eti_8001B4CC
eti_8001B4CC:
    .4byte fn_802B6358
    .4byte 0x0000003C
    .4byte etb_8000C78C
.size eti_8001B4CC, 12

.global eti_8001B4D8
eti_8001B4D8:
    .4byte fn_802B6394
    .4byte 0x00000464
    .4byte etb_8000C794
.size eti_8001B4D8, 12

.global eti_8001B4E4
eti_8001B4E4:
    .4byte fn_802B684C
    .4byte 0x00000224
    .4byte etb_8000C79C
.size eti_8001B4E4, 12

.global eti_8001B4F0
eti_8001B4F0:
    .4byte fn_802B6A70
    .4byte 0x0000033C
    .4byte etb_8000C7A4
.size eti_8001B4F0, 12

.global eti_8001B4FC
eti_8001B4FC:
    .4byte fn_802B6DAC
    .4byte 0x00000298
    .4byte etb_8000C7AC
.size eti_8001B4FC, 12

.global eti_8001B508
eti_8001B508:
    .4byte fn_802B7044
    .4byte 0x000004B0
    .4byte etb_8000C7B4
.size eti_8001B508, 12

.global eti_8001B514
eti_8001B514:
    .4byte fn_802B74F4
    .4byte 0x00000074
    .4byte etb_8000C7BC
.size eti_8001B514, 12

.global eti_8001B520
eti_8001B520:
    .4byte fn_802B7568
    .4byte 0x00000104
    .4byte etb_8000C7C4
.size eti_8001B520, 12

.global eti_8001B52C
eti_8001B52C:
    .4byte fn_802B766C
    .4byte 0x00000224
    .4byte etb_8000C7CC
.size eti_8001B52C, 12

.global eti_8001B538
eti_8001B538:
    .4byte fn_802B7890
    .4byte 0x00000060
    .4byte etb_8000C7D4
.size eti_8001B538, 12

.global eti_8001B544
eti_8001B544:
    .4byte fn_802B78F4
    .4byte 0x00000148
    .4byte etb_8000C7DC
.size eti_8001B544, 12

.global eti_8001B550
eti_8001B550:
    .4byte fn_802B7A54
    .4byte 0x00000224
    .4byte etb_8000C7E4
.size eti_8001B550, 12

.global eti_8001B55C
eti_8001B55C:
    .4byte fn_802B7C78
    .4byte 0x00000060
    .4byte etb_8000C7EC
.size eti_8001B55C, 12

.global eti_8001B568
eti_8001B568:
    .4byte fn_802B7CD8
    .4byte 0x00000044
    .4byte etb_8000C7F4
.size eti_8001B568, 12

.global eti_8001B574
eti_8001B574:
    .4byte fn_802B7D1C
    .4byte 0x0000035C
    .4byte etb_8000C7FC
.size eti_8001B574, 12

.global eti_8001B580
eti_8001B580:
    .4byte fn_802B8078
    .4byte 0x000003A8
    .4byte etb_8000C804
.size eti_8001B580, 12

.global eti_8001B58C
eti_8001B58C:
    .4byte fn_802B8420
    .4byte 0x0000006C
    .4byte etb_8000C80C
.size eti_8001B58C, 12

.global eti_8001B598
eti_8001B598:
    .4byte fn_802B848C
    .4byte 0x00000160
    .4byte etb_8000C814
.size eti_8001B598, 12

.global eti_8001B5A4
eti_8001B5A4:
    .4byte fn_802B85EC
    .4byte 0x00000658
    .4byte etb_8000C81C
.size eti_8001B5A4, 12

.global eti_8001B5B0
eti_8001B5B0:
    .4byte fn_802B8C44
    .4byte 0x00000114
    .4byte etb_8000C824
.size eti_8001B5B0, 12

.global eti_8001B5BC
eti_8001B5BC:
    .4byte fn_802B8D58
    .4byte 0x00000224
    .4byte etb_8000C82C
.size eti_8001B5BC, 12

.global eti_8001B5C8
eti_8001B5C8:
    .4byte fn_802B8F7C
    .4byte 0x00000060
    .4byte etb_8000C834
.size eti_8001B5C8, 12

.global eti_8001B5D4
eti_8001B5D4:
    .4byte fn_802B8FE0
    .4byte 0x00000994
    .4byte etb_8000C83C
.size eti_8001B5D4, 12

.global eti_8001B5E0
eti_8001B5E0:
    .4byte fn_802B9974
    .4byte 0x00000114
    .4byte etb_8000C844
.size eti_8001B5E0, 12

.global eti_8001B5EC
eti_8001B5EC:
    .4byte fn_802B9A88
    .4byte 0x00000224
    .4byte etb_8000C84C
.size eti_8001B5EC, 12

.global eti_8001B5F8
eti_8001B5F8:
    .4byte fn_802B9CAC
    .4byte 0x00000060
    .4byte etb_8000C854
.size eti_8001B5F8, 12

.global eti_8001B604
eti_8001B604:
    .4byte fn_802B9D10
    .4byte 0x00000110
    .4byte etb_8000C85C
.size eti_8001B604, 12

.global eti_8001B610
eti_8001B610:
    .4byte fn_802B9E24
    .4byte 0x00000224
    .4byte etb_8000C864
.size eti_8001B610, 12

.global eti_8001B61C
eti_8001B61C:
    .4byte fn_802BA048
    .4byte 0x00000060
    .4byte etb_8000C86C
.size eti_8001B61C, 12

.global eti_8001B628
eti_8001B628:
    .4byte fn_802BA0AC
    .4byte 0x00000060
    .4byte etb_8000C874
.size eti_8001B628, 12

.global eti_8001B634
eti_8001B634:
    .4byte fn_802BA110
    .4byte 0x00000224
    .4byte etb_8000C87C
.size eti_8001B634, 12

.global eti_8001B640
eti_8001B640:
    .4byte fn_802BA334
    .4byte 0x00000224
    .4byte etb_8000C884
.size eti_8001B640, 12

.global eti_8001B64C
eti_8001B64C:
    .4byte fn_802BA558
    .4byte 0x00000498
    .4byte etb_8000C88C
.size eti_8001B64C, 12

.text
.balign 4
.global fn_802AA364
.global fn_802AA3C4
.global fn_802AA3C8
.global fn_802AA868
.global fn_802AA9D8
.global fn_802AABFC
.global fn_802AAC5C
.global fn_802AAC60
.global fn_802AAEC0
.global fn_802AAFB0
.global fn_802AB1D4
.global fn_802AB234
.global fn_802AB238
.global fn_802AB9DC
.global fn_802ABA50
.global fn_802ABC74
.global fn_802ABCD4
.global fn_802ABCD8
.global fn_802ABDDC
.global fn_802ABE18
.global fn_802AC03C
.global fn_802AC09C
.global fn_802AC0A8
.global fn_802AC0AC
.global fn_802AC2F4
.global fn_802AC368
.global fn_802AC58C
.global fn_802AC5EC
.global fn_802AC5F0
.global fn_802AC5F4
.global fn_802AC688
.global fn_802AC8AC
.global fn_802AC8B4
.global fn_802AC980
.global fn_802AC98C
.global fn_802ACA64
.global fn_802ACB58
.global fn_802ACB68
.global fn_802ACBE8
.global fn_802ACC80
.global fn_802ACEA4
.global fn_802ACF04
.global fn_802ADC18
.global fn_802AEE10
.global fn_802AF108
.global fn_802AF32C
.global fn_802AF38C
.global fn_802AF6B0
.global fn_802AF78C
.global fn_802AF7EC
.global fn_802AFA10
.global fn_802AFA70
.global fn_802AFCE8
.global fn_802B0194
.global fn_802B0338
.global fn_802B055C
.global fn_802B0644
.global fn_802B0998
.global fn_802B0A4C
.global fn_802B0AB4
.global fn_802B0CD8
.global fn_802B0F9C
.global fn_802B114C
.global fn_802B11D0
.global fn_802B1334
.global fn_802B1558
.global fn_802B1610
.global fn_802B1BE0
.global fn_802B1D60
.global fn_802B1D7C
.global fn_802B1D98
.global fn_802B1DB0
.global fn_802B1DCC
.global fn_802B1DE8
.global fn_802B1EB0
.global fn_802B1EB4
.global fn_802B1EFC
.global fn_802B1F28
.global fn_802B214C
.global fn_802B21AC
.global fn_802B21EC
.global fn_802B2728
.global fn_802B28E4
.global fn_802B2F44
.global fn_802B3128
.global fn_802B334C
.global fn_802B33AC
.global fn_802B33B0
.global fn_802B344C
.global fn_802B3450
.global fn_802B3674
.global fn_802B3724
.global fn_802B3838
.global fn_802B394C
.global fn_802B39E8
.global fn_802B3A3C
.global fn_802B3A48
.global fn_802B3AB4
.global fn_802B3AB8
.global fn_802B51C0
.global fn_802B5284
.global fn_802B5360
.global fn_802B5FA4
.global fn_802B61C8
.global fn_802B6228
.global fn_802B6358
.global fn_802B6394
.global fn_802B67F8
.global fn_802B684C
.global fn_802B6A70
.global fn_802B6DAC
.global fn_802B7044
.global fn_802B74F4
.global fn_802B7568
.global fn_802B766C
.global fn_802B7890
.global fn_802B78F0
.global fn_802B78F4
.global fn_802B7A3C
.global fn_802B7A54
.global fn_802B7C78
.global fn_802B7CD8
.global fn_802B7D1C
.global fn_802B8078
.global fn_802B8420
.global fn_802B848C
.global fn_802B85EC
.global fn_802B8C44
.global fn_802B8D58
.global fn_802B8F7C
.global fn_802B8FDC
.global fn_802B8FE0
.global fn_802B9974
.global fn_802B9A88
.global fn_802B9CAC
.global fn_802B9D0C
.global fn_802B9D10
.global fn_802B9E20
.global fn_802B9E24
.global fn_802BA048
.global fn_802BA0A8
.global fn_802BA0AC
.global fn_802BA10C
.global fn_802BA110
.global fn_802BA334
.global fn_802BA558
.global fn_802BA9F0
.global fn_802BA9F8
.global fn_802BAA00

fn_802AA364:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802AA3A8
    lis 5, lbl_804A8118@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8118@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802AA3A8
    mr 3, 30
    bl dtor_80084580
L_802AA3A8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AA3C4:
    blr

fn_802AA3C8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x418201D8 # beq .L_802AA5BC
    .4byte 0x4080001C # bge .L_802AA404
    cmpwi 0, 0x1
    .4byte 0x41820118 # beq .L_802AA508
    .4byte 0x40800140 # bge .L_802AA534
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_802AA414
    .4byte 0x48000454 # b .L_802AA854
L_802AA404:
    cmpwi 0, 0x5
    .4byte 0x41820378 # beq .L_802AA780
    .4byte 0x40800448 # bge .L_802AA854
    .4byte 0x48000220 # b .L_802AA630
L_802AA414:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820428 # bne .L_802AA854
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x38
    bl fn_802A3948
    lfs 2, 0x10(31)
    addi 4, 1, 0x20
    .4byte 0xC002D8E8 # lfs f0, lbl_80540888@sda21(r0)
    li 5, 0x0
    lwz 3, 0x4(31)
    li 7, 0x39
    fsubs 2, 2, 0
    lfs 1, 0xc(31)
    .4byte 0xC002D8EC # lfs f0, lbl_8054088C@sda21(r0)
    addi 6, 3, 0x1
    stfs 1, 0x20(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x24(1)
    stfs 0, 0x28(1)
    bl fn_802A3948
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x16
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_802AA4B4
    li 0, 0x2
    stw 0, 0x230(31)
    stw 0, 0x240(31)
    .4byte 0x480003A4 # b .L_802AA854
L_802AA4B4:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000350 # b .L_802AA854
L_802AA508:
    bl GetRoomConfigRecord
    lwz 4, 0x234(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182033C # beq .L_802AA854
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000324 # b .L_802AA854
L_802AA534:
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082030C # bne .L_802AA854
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0xc0
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x16
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x3
    li 0, 0x2
    stw 3, 0x230(31)
    stw 0, 0x240(31)
    .4byte 0x4800029C # b .L_802AA854
L_802AA5BC:
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820284 # bne .L_802AA854
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    li 3, 0x1
    li 0, 0x2
    stw 3, 0x230(31)
    stw 0, 0x240(31)
    .4byte 0x48000228 # b .L_802AA854
L_802AA630:
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820210 # bne .L_802AA854
    lwz 6, 0x4(31)
    cmpwi 6, 0x8
    .4byte 0x40800060 # bge .L_802AA6B0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0xc0
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    li 3, 0x5
    li 0, 0x2
    stw 3, 0x230(31)
    stw 0, 0x240(31)
    .4byte 0x480000BC # b .L_802AA768
L_802AA6B0:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lhz 7, 0x244(31)
    li 5, 0x0
    bl fn_802A3884
    lfs 2, 0x10(31)
    addi 4, 1, 0x14
    .4byte 0xC002D8E8 # lfs f0, lbl_80540888@sda21(r0)
    li 5, 0x0
    lwz 3, 0x4(31)
    li 7, 0x0
    fsubs 2, 2, 0
    lfs 1, 0xc(31)
    .4byte 0xC002D8EC # lfs f0, lbl_8054088C@sda21(r0)
    addi 6, 3, 0x1
    stfs 1, 0x14(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    bl fn_802A3884
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x180
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802AA760
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x4800000C # b .L_802AA768
L_802AA760:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802AA768:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x15
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000D8 # b .L_802AA854
L_802AA780:
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200C0 # bne .L_802AA854
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    lhz 7, 0x244(31)
    bl fn_802A3884
    lfs 2, 0x10(31)
    addi 4, 1, 0x8
    .4byte 0xC002D8E8 # lfs f0, lbl_80540888@sda21(r0)
    li 5, 0x0
    lwz 3, 0x4(31)
    li 7, 0x0
    fsubs 2, 2, 0
    lfs 1, 0xc(31)
    .4byte 0xC002D8EC # lfs f0, lbl_8054088C@sda21(r0)
    addi 6, 3, 0x1
    stfs 1, 0x8(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_802A3884
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x180
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802AA84C
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x4800000C # b .L_802AA854
L_802AA84C:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802AA854:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802AA868:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 4, 0x90(3)
    addi 3, 31, 0xc
    extrwi 4, 4, 5, 5
    stw 4, 0x234(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 5, 10
    stw 4, 0x23c(31)
    stw 0, 0x230(31)
    lwz 4, 0x4(31)
    bl fn_80226AE0
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(6)
    bl fn_802F9908
    sth 3, 0x244(31)
    bl GetRoomConfigRecord
    lwz 4, 0x234(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_802AA97C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    lhz 7, 0x244(31)
    bl fn_802A3884
    lfs 2, 0x10(31)
    addi 4, 1, 0x8
    .4byte 0xC002D8E8 # lfs f0, lbl_80540888@sda21(r0)
    li 5, 0x0
    lwz 3, 0x4(31)
    li 7, 0x0
    fsubs 2, 2, 0
    lfs 1, 0xc(31)
    .4byte 0xC002D8EC # lfs f0, lbl_8054088C@sda21(r0)
    addi 6, 3, 0x1
    stfs 1, 0x8(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_802A3884
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x180
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800004C # b .L_802AA9C4
L_802AA97C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C860@ha
    addi 5, 3, lbl_8046C860@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
L_802AA9C4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802AA9D8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1068@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1068@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AAA28
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
L_802AAA28:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AAA60
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
L_802AAA60:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AAA98
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
L_802AAA98:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AAAD0
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
L_802AAAD0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AAB08
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
L_802AAB08:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AAB40
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
L_802AAB40:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AAB78
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
L_802AAB78:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AABB0
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
L_802AABB0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AABE8
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
L_802AABE8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AABFC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802AAC40
    lis 5, lbl_804A8170@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8170@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802AAC40
    mr 3, 30
    bl dtor_80084580
L_802AAC40:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AAC5C:
    blr

fn_802AAC60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x41820128 # beq .L_802AADA4
    .4byte 0x40800014 # bge .L_802AAC94
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802AACA0
    .4byte 0x40800090 # bge .L_802AAD1C
    .4byte 0x48000214 # b .L_802AAEA4
L_802AAC94:
    cmpwi 0, 0x4
    .4byte 0x4080020C # bge .L_802AAEA4
    .4byte 0x48000190 # b .L_802AAE2C
L_802AACA0:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_802AAD1C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C878@ha
    addi 5, 3, lbl_8046C878@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x15
    li 5, 0x0
    bl fn_801F0E34
L_802AAD1C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820050 # beq .L_802AAD74
    .4byte 0x4080004C # bge .L_802AAD74
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802AAD38
    .4byte 0x48000040 # b .L_802AAD74
L_802AAD38:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182015C # beq .L_802AAEAC
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    li 3, 0x2
    li 0, 0x8
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x4800013C # b .L_802AAEAC
L_802AAD74:
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x1
    .4byte 0x4082012C # bne .L_802AAEAC
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    li 3, 0x8
    li 0, 0x2
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x4800010C # b .L_802AAEAC
L_802AADA4:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_802AAEAC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C878@ha
    addi 5, 3, lbl_8046C878@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0xc0
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x16
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x48000084 # b .L_802AAEAC
L_802AAE2C:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_802AAEAC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C878@ha
    addi 5, 3, lbl_8046C878@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x180
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7920
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800000C # b .L_802AAEAC
L_802AAEA4:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802AAEAC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AAEC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x234(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802AAF04
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_802AAF20
L_802AAF04:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820074 # beq .L_802AAF80
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_802AAF80
L_802AAF20:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C878@ha
    addi 5, 3, lbl_8046C878@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x180
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7920
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000020 # b .L_802AAF9C
L_802AAF80:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7920
    li 3, 0x0
    li 0, 0xf
    stw 3, 0x230(31)
    stw 0, 0x238(31)
L_802AAF9C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AAFB0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1168@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1168@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB000
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
L_802AB000:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB038
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
L_802AB038:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB070
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
L_802AB070:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB0A8
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
L_802AB0A8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB0E0
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
L_802AB0E0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB118
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
L_802AB118:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB150
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
L_802AB150:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB188
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
L_802AB188:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AB1C0
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
L_802AB1C0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AB1D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802AB218
    lis 5, lbl_804A81C8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A81C8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802AB218
    mr 3, 30
    bl dtor_80084580
L_802AB218:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AB234:
    blr

fn_802AB238:
    stwu 1, -0x70(1)
    mflr 0
    .4byte 0xC062D8F0 # lfs f3, lbl_80540890@sda21(r0)
    li 5, 0x0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    lfs 1, 0x10(3)
    addi 3, 1, 0x3c
    lfs 0, 0xc(31)
    lfs 2, 0x60(31)
    fadds 6, 3, 1
    fadds 5, 3, 0
    .4byte 0xC022D8F4 # lfs f1, lbl_80540894@sda21(r0)
    stfs 2, 0x3c(1)
    lfs 0, 0x64(31)
    fadds 4, 2, 5
    stfs 0, 0x40(1)
    fadds 3, 0, 6
    lfs 0, 0x68(31)
    stfs 0, 0x44(1)
    fadds 2, 0, 5
    lfs 5, 0x6c(31)
    fadds 0, 5, 6
    stfs 5, 0x48(1)
    stfs 4, 0x3c(1)
    stfs 3, 0x40(1)
    stfs 2, 0x44(1)
    stfs 0, 0x48(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820480 # beq .L_802AB740
    .4byte 0x40800014 # bge .L_802AB2D8
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802AB2E8
    .4byte 0x408000D8 # bge .L_802AB3A8
    .4byte 0x480006F0 # b .L_802AB9C4
L_802AB2D8:
    cmpwi 0, 0x4
    .4byte 0x41820680 # beq .L_802AB95C
    .4byte 0x408006E4 # bge .L_802AB9C4
    .4byte 0x48000620 # b .L_802AB904
L_802AB2E8:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_802AB300
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802AB304
L_802AB300:
    addi 3, 3, 0xdc
L_802AB304:
    lfs 2, 0xc(31)
    lfs 0, 0x0(3)
    lfs 1, 0x10(31)
    fsubs 2, 2, 0
    lfs 0, 0x4(3)
    fsubs 0, 1, 0
    fctiwz 1, 2
    fctiwz 0, 0
    stfd 1, 0x50(1)
    lwz 3, 0x54(1)
    stfd 0, 0x58(1)
    cmpwi 3, 0x0
    lwz 4, 0x5c(1)
    .4byte 0x4080000C # bge .L_802AB344
    li 3, 0x0
    .4byte 0x48000010 # b .L_802AB350
L_802AB344:
    cmpwi 3, 0x200
    .4byte 0x41800008 # blt .L_802AB350
    li 3, 0x1ff
L_802AB350:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_802AB360
    li 4, 0x0
    .4byte 0x48000010 # b .L_802AB36C
L_802AB360:
    cmpwi 4, 0x200
    .4byte 0x41800008 # blt .L_802AB36C
    li 4, 0x1ff
L_802AB36C:
    rlwinm 0, 3, 0, 23, 23
    rlwimi 0, 4, 1, 22, 22
    rlwimi 0, 4, 0, 24, 27
    rlwimi 0, 3, 28, 28, 31
    stw 0, 0x23c(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    lwz 5, 0x23c(31)
    bl fn_802F9908
    clrlwi 3, 3, 22
    li 0, 0x1
    sth 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000620 # b .L_802AB9C4
L_802AB3A8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    lwz 5, 0x23c(31)
    bl fn_802F9908
    lhz 4, 0x240(31)
    clrlwi 0, 3, 22
    cmplw 4, 0
    .4byte 0x418205FC # beq .L_802AB9C4
    lwz 0, 0x234(31)
    cmplwi 0, 0xb
    .4byte 0x41810360 # bgt .L_802AB734
    lis 3, jumptable_804A821C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A821C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    lwz 5, 0x4(31)
    addi 4, 4, 0x4c44
    addi 6, 31, 0xc
    lis 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x234(31)
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_802AB448
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000580 # b .L_802AB9C4
L_802AB448:
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x48000574 # b .L_802AB9C4
    li 3, 0x64
    li 0, 0x2
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000560 # b .L_802AB9C4
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000554 # b .L_802AB9C4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800052C # b .L_802AB9C4
    li 3, 0x12c
    li 0, 0x2
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000518 # b .L_802AB9C4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042D8F8 # lfs f2, lbl_80540898@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC002D8FC # lfs f0, lbl_8054089C@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x408001A4 # bge .L_802AB698
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 6, 0x0
    .4byte 0xC002D900 # lfs f0, lbl_805408A0@sda21(r0)
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
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800064 # bge .L_802AB598
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 30, 3
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820128 # beq .L_802AB698
    .4byte 0xC022D8F4 # lfs f1, lbl_80540894@sda21(r0)
    .4byte 0xC002D904 # lfs f0, lbl_805408A4@sda21(r0)
    stfs 1, 0x30(1)
    stfs 1, 0x34(1)
    psq_l 1, 0x30(1), 0, 0
    stfs 0, 0x38(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x48000104 # b .L_802AB698
L_802AB598:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002D908 # lfs f0, lbl_805408A8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_802AB5FC
    bl SpatialRegistry_GetBase
    lis 4, 0x4d54
    lwz 5, 0x4(31)
    addi 4, 4, 0x424f
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 6, 0x1
L_802AB5FC:
    clrlwi. 0, 6, 24
    .4byte 0x40820098 # bne .L_802AB698
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022D8F8 # lfs f1, lbl_80540898@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002D8FC # lfs f0, lbl_8054089C@sda21(r0)
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
    .4byte 0x4080002C # bge .L_802AB674
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(31)
    addi 4, 4, 0x5259
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000028 # b .L_802AB698
L_802AB674:
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802AB698:
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x48000324 # b .L_802AB9C4
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480002F4 # b .L_802AB9C4
    bl SpatialRegistry_GetBase
    lis 4, 0x4d54
    lwz 5, 0x4(31)
    addi 4, 4, 0x424f
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x480002C4 # b .L_802AB9C4
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(31)
    addi 4, 4, 0x5259
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x48000294 # b .L_802AB9C4
L_802AB734:
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x48000288 # b .L_802AB9C4
L_802AB740:
    lwz 0, 0x234(31)
    cmpwi 0, 0x4
    .4byte 0x41820094 # beq .L_802AB7DC
    .4byte 0x4080001C # bge .L_802AB768
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_802AB7B0
    .4byte 0x408001A0 # bge .L_802AB8F8
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_802AB774
    .4byte 0x48000194 # b .L_802AB8F8
L_802AB768:
    cmpwi 0, 0xb
    .4byte 0x41820070 # beq .L_802AB7DC
    .4byte 0x48000188 # b .L_802AB8F8
L_802AB774:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082023C # bne .L_802AB9C4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 6, 0x240(31)
    lwz 3, 0x20(3)
    lwz 4, 0x4(31)
    lwz 5, 0x23c(31)
    bl fn_802F9974
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000218 # b .L_802AB9C4
L_802AB7B0:
    cmpwi 3, 0x0
    .4byte 0x41800210 # blt .L_802AB9C4
    bl fn_80234F68
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820200 # bne .L_802AB9C4
    li 3, 0x3c
    li 0, 0x3
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x480001EC # b .L_802AB9C4
L_802AB7DC:
    lwz 4, 0x238(31)
    subi 0, 4, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408201D4 # bne .L_802AB9C4
    cmpwi 3, 0x0
    .4byte 0x408000F4 # bge .L_802AB8EC
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800050 # blt .L_802AB854
    .4byte 0xC042D90C # lfs f2, lbl_805408AC@sda21(r0)
    lfs 0, 0x10(31)
    lfs 1, 0xc(31)
    fadds 3, 2, 0
    .4byte 0xC002D8F4 # lfs f0, lbl_80540894@sda21(r0)
    fadds 1, 2, 1
    stfs 0, 0x2c(1)
    stfs 1, 0x24(1)
    stfs 3, 0x28(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x24
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000050 # b .L_802AB8A0
L_802AB854:
    .4byte 0xC042D90C # lfs f2, lbl_805408AC@sda21(r0)
    addi 4, 1, 0x18
    lfs 0, 0x10(31)
    li 5, 0x503
    lfs 1, 0xc(31)
    li 6, 0x1
    fadds 3, 2, 0
    .4byte 0xC002D8F4 # lfs f0, lbl_80540894@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D8F8 # lfs f1, lbl_80540898@sda21(r0)
    stfs 0, 0x20(1)
    li 7, 0x0
    stfs 2, 0x18(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
L_802AB8A0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x4
    .4byte 0x40820020 # bne .L_802AB8C8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x4f
    bl fn_802A3884
    .4byte 0x4800001C # b .L_802AB8E0
L_802AB8C8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x4e
    bl fn_802A3884
L_802AB8E0:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480000DC # b .L_802AB9C4
L_802AB8EC:
    li 0, 0x1
    stw 0, 0x238(31)
    .4byte 0x480000D0 # b .L_802AB9C4
L_802AB8F8:
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x480000C4 # b .L_802AB9C4
L_802AB904:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820008 # beq .L_802AB914
    .4byte 0x48000040 # b .L_802AB950
L_802AB914:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082009C # bne .L_802AB9C4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 6, 0x240(31)
    lwz 3, 0x20(3)
    lwz 4, 0x4(31)
    lwz 5, 0x23c(31)
    bl fn_802F9974
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000078 # b .L_802AB9C4
L_802AB950:
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x4800006C # b .L_802AB9C4
L_802AB95C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x4
    .4byte 0x41820058 # beq .L_802AB9BC
    .4byte 0x40800010 # bge .L_802AB978
    cmpwi 0, 0x3
    .4byte 0x40800030 # bge .L_802AB9A0
    .4byte 0x48000048 # b .L_802AB9BC
L_802AB978:
    cmpwi 0, 0x6
    .4byte 0x40800040 # bge .L_802AB9BC
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000020 # b .L_802AB9BC
L_802AB9A0:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802AB9BC:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802AB9C4:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_802AB9DC:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022D910 # lfs f1, lbl_805408B0@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC002D8F8 # lfs f0, lbl_80540898@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x90(3)
    clrlwi 4, 4, 27
    stw 4, 0x234(3)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 0, 0x230(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802ABA3C
    li 0, 0x4
    stw 0, 0x230(31)
L_802ABA3C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802ABA50:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1268@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1268@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABAA0
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
L_802ABAA0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABAD8
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
L_802ABAD8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABB10
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
L_802ABB10:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABB48
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
L_802ABB48:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABB80
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
L_802ABB80:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABBB8
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
L_802ABBB8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABBF0
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
L_802ABBF0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABC28
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
L_802ABC28:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABC60
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
L_802ABC60:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802ABC74:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802ABCB8
    lis 5, lbl_804A8250@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8250@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802ABCB8
    mr 3, 30
    bl dtor_80084580
L_802ABCB8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802ABCD4:
    blr

fn_802ABCD8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_802ABD34
    li 28, 0x0
    li 30, 0x0
L_802ABD10:
    bl GetRoomConfigRecord
    addi 0, 30, 0x6748
    addi 28, 28, 0x1
    lwzx 0, 3, 0
    cmpwi 28, 0x8
    addi 30, 30, 0x4
    add 29, 29, 0
    .4byte 0x4180FFE4 # blt .L_802ABD10
    .4byte 0x48000034 # b .L_802ABD64
L_802ABD34:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    li 5, 0x8
    srwi 4, 30, 31
    subfc 0, 5, 30
    subi 0, 30, 0x7
    srwi 5, 5, 31
    subfe 4, 4, 5
    andc 0, 0, 4
    slwi 0, 0, 2
    add 3, 3, 0
    lwz 29, 0x6748(3)
L_802ABD64:
    lwz 0, 0x238(31)
    cmplw 29, 0
    .4byte 0x41800050 # blt .L_802ABDBC
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x244(31)
    lwz 0, 0x58(3)
    cmplw 4, 0
    .4byte 0x41820018 # beq .L_802ABDB4
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802ABDB4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
L_802ABDB4:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802ABDBC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802ABDDC:
    li 0, 0x0
    stw 0, 0x230(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 5
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x238(3)
    .4byte 0x808D93C0 # lwz r4, lbl_8053AF80@sda21(r0)
    lwz 0, 0x58(4)
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 10
    stb 0, 0x240(3)
    blr

fn_802ABE18:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1368@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1368@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABE68
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
L_802ABE68:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABEA0
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
L_802ABEA0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABED8
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
L_802ABED8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABF10
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
L_802ABF10:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABF48
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
L_802ABF48:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABF80
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
L_802ABF80:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABFB8
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
L_802ABFB8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ABFF0
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
L_802ABFF0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC028
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
L_802AC028:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC03C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802AC080
    lis 5, lbl_804A82A8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A82A8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802AC080
    mr 3, 30
    bl dtor_80084580
L_802AC080:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC09C:
    li 0, 0x0
    stw 0, 0x238(3)
    blr

fn_802AC0A8:
    blr

fn_802AC0AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x418201C8 # beq .L_802AC290
    .4byte 0x40800214 # bge .L_802AC2E0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802AC0DC
    .4byte 0x48000208 # b .L_802AC2E0
L_802AC0DC:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4082019C # bne .L_802AC280
    lwz 3, 0x234(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x418201EC # beq .L_802AC2E0
    lwz 3, 0x90(31)
    clrlwi 0, 3, 28
    srwi 4, 3, 16
    cmplwi 0, 0xd
    extrwi 6, 3, 4, 20
    .4byte 0x41810150 # bgt .L_802AC25C
    lis 3, jumptable_804A82FC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A82FC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x18
    lwz 5, 0x4(31)
    li 8, 0x28
    bl fn_8029EC84
    .4byte 0x48000120 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x19
    lwz 5, 0x4(31)
    li 8, 0x29
    bl fn_8029EC84
    .4byte 0x48000108 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x1a
    lwz 5, 0x4(31)
    li 8, 0x2a
    bl fn_8029EC84
    .4byte 0x480000F0 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x1b
    lwz 5, 0x4(31)
    li 8, 0x2b
    bl fn_8029EC84
    .4byte 0x480000D8 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x1c
    lwz 5, 0x4(31)
    li 8, 0x2c
    bl fn_8029EC84
    .4byte 0x480000C0 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x1d
    lwz 5, 0x4(31)
    li 8, 0x2d
    bl fn_8029EC84
    .4byte 0x480000A8 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x1e
    lwz 5, 0x4(31)
    li 8, 0x2e
    bl fn_8029EC84
    .4byte 0x48000090 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x1f
    lwz 5, 0x4(31)
    li 8, 0x2f
    bl fn_8029EC84
    .4byte 0x48000078 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0xa0
    lwz 5, 0x4(31)
    li 8, 0xb0
    bl fn_8029EC84
    .4byte 0x48000060 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0xa1
    lwz 5, 0x4(31)
    li 8, 0xb1
    bl fn_8029EC84
    .4byte 0x48000048 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0xa2
    lwz 5, 0x4(31)
    li 8, 0xb2
    bl fn_8029EC84
    .4byte 0x48000030 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0xa3
    lwz 5, 0x4(31)
    li 8, 0xb3
    bl fn_8029EC84
    .4byte 0x48000018 # b .L_802AC25C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0xfff
    lwz 5, 0x4(31)
    li 8, 0x100f
    bl fn_8029EC84
L_802AC25C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802AC274
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000070 # b .L_802AC2E0
L_802AC274:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000064 # b .L_802AC2E0
L_802AC280:
    .4byte 0x40810060 # ble .L_802AC2E0
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    .4byte 0x48000054 # b .L_802AC2E0
L_802AC290:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_802AC2C4
    lwz 3, 0x240(31)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_802AC2E0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000020 # b .L_802AC2E0
L_802AC2C4:
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802AC2E0
    li 0, 0x0
    stb 0, 0x11c(31)
L_802AC2E0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC2F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x28
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x0
    lwz 4, 0x90(31)
    extrwi 4, 4, 4, 16
    stw 4, 0x234(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 1, 27
    stw 4, 0x23c(31)
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    lwz 0, 0x234(31)
    stw 0, 0x240(31)
    lwz 3, 0x234(31)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802AC354
    lwz 3, 0x234(31)
    bl fn_8022F3DC
    stw 3, 0x240(31)
L_802AC354:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC368:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1468@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1468@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC3B8
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
L_802AC3B8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC3F0
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
L_802AC3F0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC428
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
L_802AC428:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC460
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
L_802AC460:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC498
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
L_802AC498:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC4D0
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
L_802AC4D0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC508
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
L_802AC508:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC540
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
L_802AC540:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC578
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
L_802AC578:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC58C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802AC5D0
    lis 5, lbl_804A8338@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8338@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802AC5D0
    mr 3, 30
    bl dtor_80084580
L_802AC5D0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC5EC:
    blr

fn_802AC5F0:
    blr

fn_802AC5F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 20
    stw 0, 0x234(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f6(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_802AC63C
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f9(3)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_802AC644
L_802AC63C:
    li 0, 0x0
    stw 0, 0x234(31)
L_802AC644:
    lwz 4, 0x90(31)
    lis 3, lbl_8046C890@ha
    addi 3, 3, lbl_8046C890@l
    lwz 6, 0x234(31)
    rlwinm 0, 4, 30, 28, 29
    extrwi 7, 4, 1, 19
    lwzx 5, 3, 0
    clrlwi 3, 4, 28
    addi 4, 31, 0xc
    bl fn_8023F1D4
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC688:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1568@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1568@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC6D8
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
L_802AC6D8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC710
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
L_802AC710:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC748
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
L_802AC748:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC780
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
L_802AC780:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC7B8
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
L_802AC7B8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC7F0
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
L_802AC7F0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC828
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
L_802AC828:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC860
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
L_802AC860:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AC898
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
L_802AC898:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AC8AC:
    stw 4, 0x18(3)
    blr

fn_802AC8B4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x58(4)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802AC8CC
    cmpwi 0, 0x5
    .4byte 0x4082004C # bne .L_802AC914
L_802AC8CC:
    lwz 4, 0xc(3)
    addi 0, 4, 0xa
    stw 0, 0xc(3)
    lwz 0, 0xc(3)
    cmpwi 0, 0xfe
    .4byte 0x4180002C # blt .L_802AC90C
    li 0, 0xff
    stw 0, 0xc(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x58(4)
    cmpwi 0, 0x5
    .4byte 0x4082000C # bne .L_802AC904
    li 0, 0xa
    stw 0, 0x14(3)
L_802AC904:
    li 3, 0x1
    blr
L_802AC90C:
    li 3, 0x0
    blr
L_802AC914:
    cmpwi 0, 0x4
    .4byte 0x40820034 # bne .L_802AC94C
    lwz 4, 0xc(3)
    subi 0, 4, 0xa
    stw 0, 0xc(3)
    lwz 0, 0xc(3)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802AC944
    li 0, 0x0
    stw 0, 0xc(3)
    li 3, 0x1
    blr
L_802AC944:
    li 3, 0x0
    blr
L_802AC94C:
    cmpwi 0, 0x6
    .4byte 0x40820028 # bne .L_802AC978
    lwz 4, 0x14(3)
    cmpwi 4, 0x0
    .4byte 0x4082000C # bne .L_802AC968
    li 3, 0x1
    blr
L_802AC968:
    subi 0, 4, 0x1
    stw 0, 0x14(3)
    li 3, 0x0
    blr
L_802AC978:
    li 3, 0x1
    blr

fn_802AC980:
    li 0, 0x2
    stw 0, 0x10(3)
    blr

fn_802AC98C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x10(3)
    cmpwi 3, 0x0
    .4byte 0x408100A8 # ble .L_802ACA50
    cmpwi 3, 0xfd
    .4byte 0x40800010 # bge .L_802AC9C0
    addi 0, 3, 0x2
    stw 0, 0x10(31)
    .4byte 0x4800000C # b .L_802AC9C8
L_802AC9C0:
    li 0, 0xff
    stw 0, 0x10(31)
L_802AC9C8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    li 6, 0x0
    li 0, 0xff
    stw 6, 0xc(1)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x4(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 0, 0x10(31)
    lwz 12, 0x0(3)
    clrlwi 4, 0, 24
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    li 4, 0x0
    .4byte 0xC022D918 # lfs f1, lbl_805408B8@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC062D91C # lfs f3, lbl_805408BC@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC082D920 # lfs f4, lbl_805408C0@sda21(r0)
    mtctr 12
    bctrl
L_802ACA50:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802ACA64:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 0, 0x18(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_802ACAC4
    li 6, 0x0
    li 0, 0xff
    stw 6, 0x1c(1)
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    stw 0, 0x24(1)
    lwz 3, 0x4(31)
    stw 6, 0x18(1)
    lwz 12, 0x0(3)
    stw 0, 0x20(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x48000038 # b .L_802ACAF8
L_802ACAC4:
    li 6, -0x100
    li 0, -0x1
    stw 6, 0xc(1)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x4(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
L_802ACAF8:
    lwz 3, 0x4(31)
    lwz 0, 0xc(31)
    lwz 12, 0x0(3)
    clrlwi 4, 0, 24
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    li 4, 0x0
    .4byte 0xC022D918 # lfs f1, lbl_805408B8@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC062D91C # lfs f3, lbl_805408BC@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC082D920 # lfs f4, lbl_805408C0@sda21(r0)
    mtctr 12
    bctrl
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802ACB58:
    li 0, 0x0
    stw 0, 0xc(3)
    stw 0, 0x18(3)
    blr

fn_802ACB68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820048 # beq .L_802ACBCC
    lis 3, lbl_804A8390@ha
    addi 0, 3, lbl_804A8390@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_802ACBB4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_802ACBB4:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x4(30)
    .4byte 0x4081000C # ble .L_802ACBCC
    mr 3, 30
    bl dtor_80084580
L_802ACBCC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802ACBE8:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8046C8A0@ha
    lis 5, lbl_804A8390@ha
    stw 0, 0x24(1)
    addi 0, 5, lbl_804A8390@l
    addi 4, 4, lbl_8046C8A0@l
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lis 3, 0x5449
    stw 29, 0x14(1)
    addi 3, 3, 0x4d47
    stw 0, 0x0(30)
    .4byte 0x93CD90E0 # stw r30, lbl_8053ACA0@sda21(r0)
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 31, 0
    bl fn_80084370
    mr. 29, 3
    .4byte 0x4182000C # beq .L_802ACC48
    mr 4, 31
    bl fn_80097800
L_802ACC48:
    stw 29, 0x4(30)
    li 0, 0x0
    mr 3, 30
    stw 0, 0xc(30)
    stw 0, 0x10(30)
    stw 0, 0x14(30)
    stw 0, 0x18(30)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802ACC80:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1668@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1668@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACCD0
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
L_802ACCD0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACD08
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
L_802ACD08:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACD40
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
L_802ACD40:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACD78
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
L_802ACD78:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACDB0
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
L_802ACDB0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACDE8
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
L_802ACDE8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACE20
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
L_802ACE20:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACE58
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
L_802ACE58:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802ACE90
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
L_802ACE90:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802ACEA4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802ACEE8
    lis 5, lbl_804A83A0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A83A0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802ACEE8
    mr 3, 30
    bl dtor_80084580
L_802ACEE8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802ACF04:
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
    stw 31, 0x10c(1)
    stw 30, 0x108(1)
    stw 29, 0x104(1)
    li 0, -0x1
    lis 4, lbl_8046C8B0@ha
    stw 0, 0xb4(1)
    mr 31, 3
    addi 30, 4, lbl_8046C8B0@l
    addi 9, 1, 0xa4
    stw 0, 0xb8(1)
    li 10, 0x0
    .4byte 0x48000064 # b .L_802ACFC8
L_802ACF68:
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
L_802ACFC8:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802ACF68
    li 12, 0x0
    li 11, 0x1
    .4byte 0xC042D928 # lfs f2, lbl_805408C8@sda21(r0)
    li 29, -0x1
    stb 12, 0xc0(1)
    li 10, 0x3
    li 9, 0x2
    li 8, -0x2
    stb 12, 0xc1(1)
    lis 3, 0x5449
    addi 7, 30, 0xac
    addi 6, 30, 0x90
    stw 29, 0xb4(1)
    addi 0, 1, 0x74
    .4byte 0xC002D92C # lfs f0, lbl_805408CC@sda21(r0)
    addi 4, 3, 0x4d47
    stw 12, 0xb8(1)
    addi 5, 30, 0xc8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stw 12, 0xbc(1)
    stb 12, 0xc2(1)
    stb 11, 0xc3(1)
    stb 11, 0xc4(1)
    stb 12, 0xc5(1)
    stb 12, 0xc6(1)
    stb 12, 0xc7(1)
    stb 12, 0xc8(1)
    stb 12, 0xc9(1)
    stb 11, 0xca(1)
    stw 10, 0xcc(1)
    stb 11, 0xd0(1)
    stb 12, 0xd1(1)
    stb 12, 0xd2(1)
    stw 29, 0xd4(1)
    stw 12, 0xd8(1)
    stw 9, 0xdc(1)
    stb 29, 0xc0(1)
    stb 8, 0xc1(1)
    stfs 2, 0x80(1)
    stfs 2, 0x90(1)
    stfs 2, 0xa0(1)
    lwz 8, 0x234(31)
    slwi 8, 8, 2
    stfs 2, 0x78(1)
    lfsx 3, 7, 8
    lfsx 1, 6, 8
    stfs 2, 0x7c(1)
    stfs 1, 0x74(1)
    stfs 2, 0x84(1)
    stfs 0, 0x88(1)
    stfs 2, 0x8c(1)
    stfs 2, 0x94(1)
    stfs 2, 0x98(1)
    stfs 3, 0x9c(1)
    stw 0, 0xbc(1)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x234(31)
    addi 5, 30, 0x74
    addi 4, 30, 0x58
    lfs 3, 0x10(31)
    slwi 0, 0, 2
    lfs 1, 0xc(31)
    lfsx 2, 5, 0
    lfsx 0, 4, 0
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 1, 0
    stfs 3, 0x70(1)
    stfs 2, 0x6c(1)
    stfs 0, 0x68(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802AD120
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x68
    addi 6, 1, 0xa4
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802AD120:
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    stfs 0, 0x80(1)
    stfs 0, 0x90(1)
    stfs 0, 0xa0(1)
    lfs 31, 0x248(31)
    bl cos
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 29, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl cos
    frsp 28, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl sin
    frsp 27, 1
    fmr 1, 31
    bl sin
    frsp 31, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl sin
    frsp 8, 1
    li 4, -0x1
    fmuls 1, 29, 30
    addi 0, 1, 0x74
    fmuls 0, 29, 27
    li 3, 0x1
    fmuls 7, 28, 30
    stfs 1, 0x74(1)
    fmuls 3, 8, 31
    fmuls 6, 28, 27
    stfs 0, 0x84(1)
    fmuls 1, 8, 27
    fmuls 0, 8, 30
    stb 4, 0xc0(1)
    fneg 2, 31
    fmsubs 5, 3, 30, 6
    stb 4, 0xc1(1)
    fmadds 4, 3, 27, 7
    fmuls 3, 8, 29
    stfs 2, 0x94(1)
    fmadds 2, 7, 31, 1
    fmsubs 1, 6, 31, 0
    stfs 5, 0x78(1)
    fmuls 0, 28, 29
    stfs 4, 0x88(1)
    stfs 3, 0x98(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x9c(1)
    stb 3, 0xc5(1)
    stw 0, 0xbc(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x3
    .4byte 0x4182010C # beq .L_802AD308
    .4byte 0x40800014 # bge .L_802AD214
    cmpwi 0, 0x1
    .4byte 0x41820068 # beq .L_802AD270
    .4byte 0x408000B0 # bge .L_802AD2BC
    .4byte 0x48000014 # b .L_802AD224
L_802AD214:
    cmpwi 0, 0x6
    .4byte 0x41820184 # beq .L_802AD39C
    .4byte 0x40800008 # bge .L_802AD224
    .4byte 0x480001C4 # b .L_802AD3E4
L_802AD224:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408001B8 # bge .L_802AD3E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0xdc
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000178 # b .L_802AD3E4
L_802AD270:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080016C # bge .L_802AD3E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0xec
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x4800012C # b .L_802AD3E4
L_802AD2BC:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800120 # bge .L_802AD3E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x108
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x480000E0 # b .L_802AD3E4
L_802AD308:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802AD350
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x11c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802AD350:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080008C # bge .L_802AD3E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x12c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x4800004C # b .L_802AD3E4
L_802AD39C:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802AD3E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x13c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802AD3E4:
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    stfs 0, 0x80(1)
    stfs 0, 0x90(1)
    stfs 0, 0xa0(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802AD410
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_802AD410
    cmpwi 0, 0x5
    .4byte 0x408200B8 # bne .L_802AD4C4
L_802AD410:
    .4byte 0xC042D938 # lfs f2, lbl_805408D8@sda21(r0)
    lfs 0, 0x248(31)
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    fsubs 31, 2, 0
    bl cos
    frsp 27, 1
    fmr 1, 31
    bl cos
    frsp 28, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl sin
    frsp 30, 1
    fmr 1, 31
    bl sin
    frsp 31, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl sin
    frsp 8, 1
    fmuls 1, 28, 27
    fmuls 0, 28, 30
    fmuls 7, 29, 27
    fmuls 3, 8, 31
    stfs 1, 0x74(1)
    fmuls 6, 29, 30
    fmuls 1, 8, 30
    stfs 0, 0x84(1)
    fmuls 0, 8, 27
    fneg 2, 31
    fmsubs 5, 3, 27, 6
    fmadds 4, 3, 30, 7
    fmuls 3, 8, 28
    stfs 2, 0x94(1)
    fmadds 2, 7, 31, 1
    fmsubs 1, 6, 31, 0
    stfs 5, 0x78(1)
    fmuls 0, 29, 28
    stfs 4, 0x88(1)
    stfs 3, 0x98(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x9c(1)
    .4byte 0x480000B0 # b .L_802AD570
L_802AD4C4:
    lfs 0, 0x248(31)
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    fneg 31, 0
    bl cos
    frsp 27, 1
    fmr 1, 31
    bl cos
    frsp 28, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl sin
    frsp 30, 1
    fmr 1, 31
    bl sin
    frsp 31, 1
    .4byte 0xC822D930 # lfd f1, lbl_805408D0@sda21(r0)
    bl sin
    frsp 8, 1
    fmuls 1, 28, 27
    fmuls 0, 28, 30
    fmuls 7, 29, 27
    fmuls 3, 8, 31
    stfs 1, 0x74(1)
    fmuls 6, 29, 30
    fmuls 1, 8, 30
    stfs 0, 0x84(1)
    fmuls 0, 8, 27
    fneg 2, 31
    fmsubs 5, 3, 27, 6
    fmadds 4, 3, 30, 7
    fmuls 3, 8, 28
    stfs 2, 0x94(1)
    fmadds 2, 7, 31, 1
    fmsubs 1, 6, 31, 0
    stfs 5, 0x78(1)
    fmuls 0, 29, 28
    stfs 4, 0x88(1)
    stfs 3, 0x98(1)
    stfs 2, 0x7c(1)
    stfs 1, 0x8c(1)
    stfs 0, 0x9c(1)
L_802AD570:
    addi 0, 1, 0x74
    stw 0, 0xbc(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x3
    .4byte 0x41820370 # beq .L_802AD8F0
    .4byte 0x40800014 # bge .L_802AD598
    cmpwi 0, 0x1
    .4byte 0x41820134 # beq .L_802AD6C0
    .4byte 0x40800248 # bge .L_802AD7D8
    .4byte 0x48000014 # b .L_802AD5A8
L_802AD598:
    cmpwi 0, 0x6
    .4byte 0x41820524 # beq .L_802ADAC0
    .4byte 0x40800008 # bge .L_802AD5A8
    .4byte 0x48000420 # b .L_802AD9C4
L_802AD5A8:
    lfs 1, 0x248(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062D93C # lfs f3, lbl_805408DC@sda21(r0)
    .4byte 0x40800030 # bge .L_802AD5EC
    .4byte 0xC002D940 # lfs f0, lbl_805408E0@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802AD610
L_802AD5EC:
    .4byte 0xC002D944 # lfs f0, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802AD610:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802AD62C
    fneg 6, 6
L_802AD62C:
    .4byte 0xC022D944 # lfs f1, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022D948 # lfs f1, lbl_805408E8@sda21(r0)
    .4byte 0xC062D93C # lfs f3, lbl_805408DC@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0x60(1)
    fctiwz 1, 2
    stfs 5, 0x64(1)
    stfd 1, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x5c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800558 # bge .L_802ADBD4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0xdc
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x5c
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000518 # b .L_802ADBD4
L_802AD6C0:
    lfs 1, 0x248(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062D93C # lfs f3, lbl_805408DC@sda21(r0)
    .4byte 0x40800030 # bge .L_802AD704
    .4byte 0xC002D940 # lfs f0, lbl_805408E0@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802AD728
L_802AD704:
    .4byte 0xC002D944 # lfs f0, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802AD728:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802AD744
    fneg 6, 6
L_802AD744:
    .4byte 0xC022D944 # lfs f1, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022D948 # lfs f1, lbl_805408E8@sda21(r0)
    .4byte 0xC062D93C # lfs f3, lbl_805408DC@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0x54(1)
    fctiwz 1, 2
    stfs 5, 0x58(1)
    stfd 1, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x50(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800440 # bge .L_802ADBD4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x14c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x50
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000400 # b .L_802ADBD4
L_802AD7D8:
    lfs 1, 0x248(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062D94C # lfs f3, lbl_805408EC@sda21(r0)
    .4byte 0x40800030 # bge .L_802AD81C
    .4byte 0xC002D940 # lfs f0, lbl_805408E0@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802AD840
L_802AD81C:
    .4byte 0xC002D944 # lfs f0, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802AD840:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802AD85C
    fneg 6, 6
L_802AD85C:
    .4byte 0xC022D944 # lfs f1, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022D950 # lfs f1, lbl_805408F0@sda21(r0)
    .4byte 0xC062D94C # lfs f3, lbl_805408EC@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0x48(1)
    fctiwz 1, 2
    stfs 5, 0x4c(1)
    stfd 1, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x44(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800328 # bge .L_802ADBD4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x168
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x44
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x480002E8 # b .L_802ADBD4
L_802AD8F0:
    .4byte 0xC022D948 # lfs f1, lbl_805408E8@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x3c(1)
    stfs 0, 0x38(1)
    stfs 3, 0x40(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802AD958
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x11c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x38
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802AD958:
    .4byte 0xC022D948 # lfs f1, lbl_805408E8@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x30(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x34(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800254 # bge .L_802ADBD4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x12c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x2c
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000214 # b .L_802ADBD4
L_802AD9C4:
    li 3, 0x1
    li 0, -0x1
    stb 3, 0xc0(1)
    stb 0, 0xc1(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x40820070 # bne .L_802ADA4C
    .4byte 0xC022D950 # lfs f1, lbl_805408F0@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    stfs 3, 0x28(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408001CC # bge .L_802ADBD4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x17c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x20
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x4800018C # b .L_802ADBD4
L_802ADA4C:
    cmpwi 0, 0x8
    .4byte 0x41820184 # beq .L_802ADBD4
    .4byte 0xC022D950 # lfs f1, lbl_805408F0@sda21(r0)
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x18(1)
    stfs 0, 0x14(1)
    stfs 3, 0x1c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800158 # bge .L_802ADBD4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x18c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x14
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
    .4byte 0x48000118 # b .L_802ADBD4
L_802ADAC0:
    lfs 1, 0x248(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    lfs 5, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0xC062D93C # lfs f3, lbl_805408DC@sda21(r0)
    .4byte 0x40800030 # bge .L_802ADB04
    .4byte 0xC002D940 # lfs f0, lbl_805408E0@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf0(1)
    lwz 0, 0xf4(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 2, 0
    .4byte 0x48000028 # b .L_802ADB28
L_802ADB04:
    .4byte 0xC002D944 # lfs f0, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xe8(1)
    lwz 0, 0xec(1)
    clrlslwi 0, 0, 21, 3
    lfsx 2, 3, 0
L_802ADB28:
    fneg 6, 1
    lfs 1, 0x10(31)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fmadds 4, 3, 2, 1
    fcmpo cr0, 6, 0
    .4byte 0x40800008 # bge .L_802ADB44
    fneg 6, 6
L_802ADB44:
    .4byte 0xC022D944 # lfs f1, lbl_805408E4@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    lfs 0, 0xc(31)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 2, 6, 1
    .4byte 0xC022D948 # lfs f1, lbl_805408E8@sda21(r0)
    .4byte 0xC062D93C # lfs f3, lbl_805408DC@sda21(r0)
    fadds 0, 1, 0
    stfs 4, 0xc(1)
    fctiwz 1, 2
    stfs 5, 0x10(1)
    stfd 1, 0xe0(1)
    lwz 0, 0xe4(1)
    clrlslwi 0, 0, 21, 3
    add 3, 3, 0
    lfs 1, 0x4(3)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x8(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802ADBD4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 30, 0x13c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0xa4
    bl fn_802F6CF4
L_802ADBD4:
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
    lwz 31, 0x10c(1)
    lwz 30, 0x108(1)
    lwz 0, 0x164(1)
    lwz 29, 0x104(1)
    mtlr 0
    addi 1, 1, 0x160
    blr

fn_802ADC18:
    stwu 1, -0x140(1)
    mflr 0
    stw 0, 0x144(1)
    stfd 31, 0x130(1)
    psq_st 31, 0x138(1), 0, 0
    stfd 30, 0x120(1)
    psq_st 30, 0x128(1), 0, 0
    stfd 29, 0x110(1)
    psq_st 29, 0x118(1), 0, 0
    stfd 28, 0x100(1)
    psq_st 28, 0x108(1), 0, 0
    stfd 27, 0xf0(1)
    psq_st 27, 0xf8(1), 0, 0
    stmw 24, 0xd0(1)
    mr 31, 3
    lis 3, lbl_8046C8B0@ha
    lwz 0, 0x234(31)
    addi 30, 3, lbl_8046C8B0@l
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    cmpwi 0, 0x3
    psq_st 1, 0x88(1), 0, 0
    stfs 0, 0x90(1)
    .4byte 0x41820068 # beq .L_802ADCDC
    .4byte 0x40800010 # bge .L_802ADC88
    cmpwi 0, 0x2
    .4byte 0x40800038 # bge .L_802ADCB8
    .4byte 0x48000014 # b .L_802ADC98
L_802ADC88:
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_802ADC98
    .4byte 0x40800008 # bge .L_802ADC98
    .4byte 0x4800006C # b .L_802ADD00
L_802ADC98:
    lfs 0, 0xc(31)
    .4byte 0xC022D93C # lfs f1, lbl_805408DC@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    .4byte 0x4800012C # b .L_802ADDE0
L_802ADCB8:
    lfs 2, 0xc(31)
    .4byte 0xC022D94C # lfs f1, lbl_805408EC@sda21(r0)
    .4byte 0xC002D954 # lfs f0, lbl_805408F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000108 # b .L_802ADDE0
L_802ADCDC:
    lfs 2, 0xc(31)
    .4byte 0xC022D93C # lfs f1, lbl_805408DC@sda21(r0)
    .4byte 0xC002D954 # lfs f0, lbl_805408F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480000E4 # b .L_802ADDE0
L_802ADD00:
    .4byte 0xC002D958 # lfs f0, lbl_805408F8@sda21(r0)
    addi 3, 1, 0x94
    .4byte 0xC022D94C # lfs f1, lbl_805408EC@sda21(r0)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    lwz 4, 0x80(31)
    lwz 0, 0x84(31)
    stw 4, 0x94(1)
    stw 0, 0x98(1)
    lwz 4, 0x88(31)
    lwz 0, 0x8c(31)
    stw 4, 0x9c(1)
    stw 0, 0xa0(1)
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    lfs 0, 0x94(1)
    lfs 2, 0x98(1)
    lfs 1, 0x9c(1)
    fadds 3, 0, 4
    lfs 0, 0xa0(1)
    fadds 2, 2, 5
    fadds 1, 1, 4
    stfs 4, 0x8(1)
    fadds 0, 0, 5
    stfs 5, 0xc(1)
    stfs 3, 0x94(1)
    stfs 2, 0x98(1)
    stfs 1, 0x9c(1)
    stfs 0, 0xa0(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    psq_l 0, 0x88(1), 0, 0
    lfs 1, 0x90(1)
    psq_st 0, 0xc(31), 0, 0
    .4byte 0xC002D94C # lfs f0, lbl_805408EC@sda21(r0)
    stfs 1, 0x14(31)
    .4byte 0xC062D95C # lfs f3, lbl_805408FC@sda21(r0)
    lfs 1, 0x10(31)
    .4byte 0xC042D960 # lfs f2, lbl_80540900@sda21(r0)
    fadds 4, 1, 0
    .4byte 0xC022D964 # lfs f1, lbl_80540904@sda21(r0)
    .4byte 0xC002D968 # lfs f0, lbl_80540908@sda21(r0)
    stfs 4, 0x10(31)
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_802ADDE0:
    lfs 5, 0x10(31)
    li 28, -0x1
    lfs 1, 0xc(31)
    li 24, 0x0
    stfs 1, 0x8(1)
    stfs 5, 0xc(1)
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
L_802ADE38:
    mr 3, 24
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    li 0, 0x0
    lfs 1, 0x8(3)
    psq_st 0, 0x7c(1), 0, 0
    lfs 0, 0x94(1)
    lfs 2, 0x7c(1)
    stfs 1, 0x84(1)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802ADE98
    lfs 1, 0x80(1)
    lfs 0, 0x98(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802ADE98
    lfs 0, 0x9c(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802ADE98
    lfs 0, 0xa0(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802ADE98
    li 0, 0x1
L_802ADE98:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_802ADEB8
    mr 28, 24
    mr 3, 24
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802ADEC4
    li 28, -0x1
L_802ADEB8:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FF78 # blt .L_802ADE38
L_802ADEC4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_802ADEEC
    cmpwi 28, 0x0
    .4byte 0x41800018 # blt .L_802ADEEC
    mr 3, 28
    bl fn_80234F68
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_802ADEEC
    li 28, -0x1
L_802ADEEC:
    lis 4, 0x5342
    mr 3, 31
    addi 4, 4, 0x414c
    bl fn_801F2718
    lwz 4, 0x4(31)
    mr 26, 3
    addi 3, 1, 0x94
    addi 5, 1, 0x8
    bl fn_8023A89C
    li 25, 0x0
    li 24, 0x0
L_802ADF18:
    lwz 5, 0x4(31)
    mr 3, 24
    addi 4, 1, 0x94
    addi 6, 1, 0x8
    bl fn_8023A97C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802ADF38
    addi 25, 25, 0x1
L_802ADF38:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FFD8 # blt .L_802ADF18
    psq_l 1, 0x88(1), 0, 0
    lfs 0, 0x90(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x41810E70 # bgt .L_802AEDCC
    lis 3, jumptable_804A83F4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A83F4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 30, 0xc(31)
    lfs 31, 0x10(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802ADF98
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802ADF9C
L_802ADF98:
    addi 4, 3, 0xdc
L_802ADF9C:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0xa4(1)
    lwz 3, 0x8(4)
    lfs 0, 0xa4(1)
    stw 0, 0xa8(1)
    fsubs 1, 30, 0
    lwz 0, 0xc(4)
    lfs 0, 0xa8(1)
    stw 3, 0xac(1)
    fctiwz 1, 1
    fsubs 0, 31, 0
    stw 0, 0xb0(1)
    stfd 1, 0xb8(1)
    fctiwz 0, 0
    lwz 6, 0xbc(1)
    stfd 0, 0xc0(1)
    cmpwi 6, 0x0
    lwz 5, 0xc4(1)
    .4byte 0x4080000C # bge .L_802ADFF4
    li 6, 0x0
    .4byte 0x48000010 # b .L_802AE000
L_802ADFF4:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802AE000
    li 6, 0x1ff
L_802AE000:
    cmpwi 5, 0x0
    .4byte 0x4080000C # bge .L_802AE010
    li 5, 0x0
    .4byte 0x48000010 # b .L_802AE01C
L_802AE010:
    cmpwi 5, 0x200
    .4byte 0x41800008 # blt .L_802AE01C
    li 5, 0x1ff
L_802AE01C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 0, 6, 0, 23, 23
    rlwimi 0, 5, 1, 22, 22
    lwz 4, 0x4(31)
    rlwimi 0, 5, 0, 24, 27
    lwz 3, 0x20(3)
    mr 5, 0
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    sth 3, 0x250(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000D88 # b .L_802AEDD4
    lwz 24, 0x238(31)
    cmpwi 24, 0x0
    .4byte 0x41820024 # beq .L_802AE07C
    bl GetRoomConfigRecord
    mr 4, 24
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802AE084
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_802AE084
L_802AE07C:
    li 0, 0x2
    stw 0, 0x230(31)
L_802AE084:
    lwz 3, 0x234(31)
    cmpwi 3, 0x4
    .4byte 0x4182000C # beq .L_802AE098
    cmpwi 3, 0x5
    .4byte 0x40820010 # bne .L_802AE0A4
L_802AE098:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000D34 # b .L_802AEDD4
L_802AE0A4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x40820D28 # bne .L_802AEDD4
    cmpwi 3, 0x2
    .4byte 0x41800D20 # blt .L_802AEDD4
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x1b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000D00 # b .L_802AEDD4
    lwz 0, 0x234(31)
    cmpwi 0, 0x6
    .4byte 0x4182001C # beq .L_802AE0FC
    .4byte 0x40800CF0 # bge .L_802AEDD4
    cmpwi 0, 0x4
    .4byte 0x40800300 # bge .L_802AE3EC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802AE0FC
    .4byte 0x48000CDC # b .L_802AEDD4
L_802AE0FC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802AE110
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_802AE120
L_802AE110:
    cmpwi 28, 0x0
    .4byte 0x40800030 # bge .L_802AE144
    cmpwi 26, 0x0
    .4byte 0x40800028 # bge .L_802AE144
L_802AE120:
    cmpwi 0, 0x0
    .4byte 0x41820CB0 # beq .L_802AEDD4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820C94 # beq .L_802AEDD4
L_802AE144:
    .4byte 0xC042D93C # lfs f2, lbl_805408DC@sda21(r0)
    addi 4, 1, 0x64
    lfs 0, 0x10(31)
    li 5, 0x381
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    stfs 0, 0x6c(1)
    li 7, 0x0
    stfs 2, 0x64(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x68(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042D93C # lfs f2, lbl_805408DC@sda21(r0)
    addi 4, 1, 0x58
    lfs 0, 0x10(31)
    li 5, 0x382
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    stfs 0, 0x60(1)
    li 7, 0x0
    stfs 2, 0x58(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x5c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042D93C # lfs f2, lbl_805408DC@sda21(r0)
    addi 4, 1, 0x4c
    lfs 0, 0x10(31)
    li 5, 0x383
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    stfs 0, 0x54(1)
    li 7, 0x0
    stfs 2, 0x4c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x50(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042D93C # lfs f2, lbl_805408DC@sda21(r0)
    addi 4, 1, 0x40
    lfs 0, 0x10(31)
    li 5, 0x384
    lfs 1, 0xc(31)
    li 6, 0x0
    fadds 3, 2, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    stfs 0, 0x48(1)
    li 7, 0x0
    stfs 2, 0x40(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x44(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    cmpwi 28, 0x0
    .4byte 0x41800034 # blt .L_802AE2AC
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
L_802AE2AC:
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802AE2C8
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802AE2CC
L_802AE2C8:
    addi 4, 3, 0xdc
L_802AE2CC:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 26, 30, 0x0
    stw 3, 0xa4(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0xa8(1)
    lwz 0, 0xc(4)
    stw 3, 0xac(1)
    lfs 29, 0xa8(1)
    stw 0, 0xb0(1)
    .4byte 0xC3C2D96C # lfs f30, lbl_8054090C@sda21(r0)
    lfs 31, 0xa4(1)
    .4byte 0x480000B4 # b .L_802AE3B8
L_802AE308:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    li 24, 0x0
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 28, 0xc4(1)
    .4byte 0x4800007C # b .L_802AE39C
L_802AE324:
    fsubs 0, 27, 29
    cmpwi 28, 0x0
    mr 0, 28
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 6, 0xc4(1)
    .4byte 0x4080000C # bge .L_802AE348
    li 0, 0x0
    .4byte 0x48000010 # b .L_802AE354
L_802AE348:
    cmpwi 28, 0x200
    .4byte 0x41800008 # blt .L_802AE354
    li 0, 0x1ff
L_802AE354:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_802AE364
    li 6, 0x0
    .4byte 0x48000010 # b .L_802AE370
L_802AE364:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802AE370
    li 6, 0x1ff
L_802AE370:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 6, 1, 22, 22
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    rlwimi 5, 6, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    li 6, 0x6
    bl fn_802F9974
    fadds 27, 27, 30
    addi 24, 24, 0x1
L_802AE39C:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 24, 0
    .4byte 0x4180FF78 # blt .L_802AE324
    fadds 28, 28, 30
    addi 29, 29, 0x1
L_802AE3B8:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 26, 0
    cmpw 29, 0
    .4byte 0x4180FF40 # blt .L_802AE308
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x1b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480009EC # b .L_802AEDD4
L_802AE3EC:
    cmpwi 25, 0x4
    .4byte 0x408209E4 # bne .L_802AEDD4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802AE440
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802AE444
L_802AE440:
    addi 4, 3, 0xdc
L_802AE444:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 26, 30, 0x0
    stw 3, 0xa4(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0xa8(1)
    lwz 0, 0xc(4)
    stw 3, 0xac(1)
    lfs 29, 0xa8(1)
    stw 0, 0xb0(1)
    .4byte 0xC3C2D96C # lfs f30, lbl_8054090C@sda21(r0)
    lfs 31, 0xa4(1)
    .4byte 0x480000B4 # b .L_802AE530
L_802AE480:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    li 24, 0x0
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 28, 0xc4(1)
    .4byte 0x4800007C # b .L_802AE514
L_802AE49C:
    fsubs 0, 27, 29
    cmpwi 28, 0x0
    mr 0, 28
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 6, 0xc4(1)
    .4byte 0x4080000C # bge .L_802AE4C0
    li 0, 0x0
    .4byte 0x48000010 # b .L_802AE4CC
L_802AE4C0:
    cmpwi 28, 0x200
    .4byte 0x41800008 # blt .L_802AE4CC
    li 0, 0x1ff
L_802AE4CC:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_802AE4DC
    li 6, 0x0
    .4byte 0x48000010 # b .L_802AE4E8
L_802AE4DC:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802AE4E8
    li 6, 0x1ff
L_802AE4E8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 6, 1, 22, 22
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    rlwimi 5, 6, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    li 6, 0x7c
    bl fn_802F9974
    fadds 27, 27, 30
    addi 24, 24, 0x1
L_802AE514:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 24, 0
    .4byte 0x4180FF78 # blt .L_802AE49C
    fadds 28, 28, 30
    addi 29, 29, 0x1
L_802AE530:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 26, 0
    cmpw 29, 0
    .4byte 0x4180FF40 # blt .L_802AE480
    .4byte 0xC002D970 # lfs f0, lbl_80540910@sda21(r0)
    lis 4, 0x3
    li 0, 0x6
    mr 3, 31
    stfs 0, 0x24c(31)
    addi 4, 4, 0x1b
    li 5, 0x0
    stw 0, 0x230(31)
    bl fn_801F0E34
    .4byte 0x4800086C # b .L_802AEDD4
    lfs 2, 0x248(31)
    .4byte 0xC022D974 # lfs f1, lbl_80540914@sda21(r0)
    .4byte 0xC002D978 # lfs f0, lbl_80540918@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x248(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820848 # bne .L_802AEDD4
    .4byte 0xC002D97C # lfs f0, lbl_8054091C@sda21(r0)
    stfs 0, 0x248(31)
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802AE5B4
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802AE5B8
L_802AE5B4:
    addi 4, 3, 0xdc
L_802AE5B8:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 26, 30, 0x0
    stw 3, 0xa4(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0xa8(1)
    lwz 0, 0xc(4)
    stw 3, 0xac(1)
    lfs 29, 0xa8(1)
    stw 0, 0xb0(1)
    .4byte 0xC3C2D96C # lfs f30, lbl_8054090C@sda21(r0)
    lfs 31, 0xa4(1)
    .4byte 0x480000B4 # b .L_802AE6A4
L_802AE5F4:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    li 24, 0x0
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 28, 0xc4(1)
    .4byte 0x4800007C # b .L_802AE688
L_802AE610:
    fsubs 0, 27, 29
    cmpwi 28, 0x0
    mr 0, 28
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 7, 0xc4(1)
    .4byte 0x4080000C # bge .L_802AE634
    li 0, 0x0
    .4byte 0x48000010 # b .L_802AE640
L_802AE634:
    cmpwi 28, 0x200
    .4byte 0x41800008 # blt .L_802AE640
    li 0, 0x1ff
L_802AE640:
    cmpwi 7, 0x0
    .4byte 0x4080000C # bge .L_802AE650
    li 7, 0x0
    .4byte 0x48000010 # b .L_802AE65C
L_802AE650:
    cmpwi 7, 0x200
    .4byte 0x41800008 # blt .L_802AE65C
    li 7, 0x1ff
L_802AE65C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 7, 1, 22, 22
    lhz 6, 0x252(31)
    lwz 3, 0x20(3)
    rlwimi 5, 7, 0, 24, 27
    lwz 4, 0x4(31)
    rlwimi 5, 0, 28, 28, 31
    bl fn_802F9974
    fadds 27, 27, 30
    addi 24, 24, 0x1
L_802AE688:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 24, 0
    .4byte 0x4180FF78 # blt .L_802AE610
    fadds 28, 28, 30
    addi 29, 29, 0x1
L_802AE6A4:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 26, 0
    cmpw 29, 0
    .4byte 0x4180FF40 # blt .L_802AE5F4
    li 0, 0x28
    stw 0, 0x244(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802AE6D8
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000700 # b .L_802AEDD4
L_802AE6D8:
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480006F4 # b .L_802AEDD4
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_802AE720
    cmpwi 28, 0x0
    .4byte 0x4080002C # bge .L_802AE720
    cmpwi 26, 0x0
    .4byte 0x40800024 # bge .L_802AE720
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1c
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x480006B8 # b .L_802AEDD4
L_802AE720:
    cmpwi 0, 0x0
    .4byte 0x418206B0 # beq .L_802AEDD4
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820698 # bne .L_802AEDD4
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4182068C # beq .L_802AEDD4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082066C # bne .L_802AEDD4
    li 0, 0x1
    stw 0, 0x244(31)
    .4byte 0x48000660 # b .L_802AEDD4
    lfs 2, 0x248(31)
    .4byte 0xC022D980 # lfs f1, lbl_80540920@sda21(r0)
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x248(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800640 # bge .L_802AEDD4
    stfs 0, 0x248(31)
    lfs 28, 0xc(31)
    lwz 26, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802AE7B8
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802AE7BC
L_802AE7B8:
    addi 4, 3, 0xdc
L_802AE7BC:
    lwz 3, 0x0(4)
    addi 29, 30, 0x38
    lwz 0, 0x4(4)
    addi 26, 30, 0x1c
    stw 3, 0xa4(1)
    addi 27, 30, 0x0
    lwz 3, 0x8(4)
    li 30, 0x0
    stw 0, 0xa8(1)
    lwz 0, 0xc(4)
    stw 3, 0xac(1)
    lfs 29, 0xa8(1)
    stw 0, 0xb0(1)
    .4byte 0xC3C2D96C # lfs f30, lbl_8054090C@sda21(r0)
    lfs 31, 0xa4(1)
    .4byte 0x480000E0 # b .L_802AE8D8
L_802AE7FC:
    fsubs 0, 28, 31
    lfs 27, 0x10(31)
    mr 25, 29
    li 28, 0x0
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 24, 0xc4(1)
    .4byte 0x480000A0 # b .L_802AE8B8
L_802AE81C:
    fsubs 0, 27, 29
    cmpwi 24, 0x0
    mr 0, 24
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 4, 0xc4(1)
    .4byte 0x4080000C # bge .L_802AE840
    li 0, 0x0
    .4byte 0x48000010 # b .L_802AE84C
L_802AE840:
    cmpwi 24, 0x200
    .4byte 0x41800008 # blt .L_802AE84C
    li 0, 0x1ff
L_802AE84C:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_802AE85C
    li 4, 0x0
    .4byte 0x48000010 # b .L_802AE868
L_802AE85C:
    cmpwi 4, 0x200
    .4byte 0x41800008 # blt .L_802AE868
    li 4, 0x1ff
L_802AE868:
    cmpwi 3, 0x1
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 4, 1, 22, 22
    rlwimi 5, 4, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    .4byte 0x4182001C # beq .L_802AE898
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 6, 0x250(31)
    lwz 3, 0x20(3)
    lwz 4, 0x4(31)
    bl fn_802F9974
    .4byte 0x48000018 # b .L_802AE8AC
L_802AE898:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    lhz 6, 0x0(25)
    bl fn_802F9974
L_802AE8AC:
    fadds 27, 27, 30
    addi 25, 25, 0x2
    addi 28, 28, 0x1
L_802AE8B8:
    lwz 3, 0x234(31)
    slwi 0, 3, 2
    lwzx 0, 26, 0
    cmpw 28, 0
    .4byte 0x4180FF54 # blt .L_802AE81C
    fadds 28, 28, 30
    addi 29, 29, 0x8
    addi 30, 30, 0x1
L_802AE8D8:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 30, 0
    .4byte 0x4180FF14 # blt .L_802AE7FC
    li 0, 0x2
    .4byte 0xC062D93C # lfs f3, lbl_805408DC@sda21(r0)
    stw 0, 0x230(31)
    addi 4, 1, 0x34
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    li 5, 0x381
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 2, 0xc(31)
    li 7, 0x0
    fadds 4, 3, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    fadds 2, 3, 2
    stfs 0, 0x3c(1)
    li 8, 0x0
    li 9, 0x0
    stfs 2, 0x34(1)
    li 10, 0x1
    stfs 4, 0x38(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042D93C # lfs f2, lbl_805408DC@sda21(r0)
    addi 4, 1, 0x28
    lfs 0, 0x10(31)
    li 5, 0x382
    lfs 1, 0xc(31)
    li 6, 0x1
    fadds 3, 2, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    stfs 0, 0x30(1)
    li 7, 0x0
    stfs 2, 0x28(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x2c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042D93C # lfs f2, lbl_805408DC@sda21(r0)
    addi 4, 1, 0x1c
    lfs 0, 0x10(31)
    li 5, 0x383
    lfs 1, 0xc(31)
    li 6, 0x1
    fadds 3, 2, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    stfs 0, 0x24(1)
    li 7, 0x0
    stfs 2, 0x1c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x20(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042D93C # lfs f2, lbl_805408DC@sda21(r0)
    addi 4, 1, 0x10
    lfs 0, 0x10(31)
    li 5, 0x384
    lfs 1, 0xc(31)
    li 6, 0x1
    fadds 3, 2, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    stfs 0, 0x18(1)
    li 7, 0x0
    stfs 2, 0x10(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x14(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0x480003B0 # b .L_802AEDD4
    lfs 2, 0x248(31)
    lfs 0, 0x24c(31)
    .4byte 0xC822D988 # lfd f1, lbl_80540928@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002D990 # lfs f0, lbl_80540930@sda21(r0)
    stfs 2, 0x248(31)
    lfs 2, 0x24c(31)
    fsub 1, 2, 1
    frsp 1, 1
    stfs 1, 0x24c(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_802AEA74
    stfs 0, 0x248(31)
    li 3, 0x4
    li 0, 0x7
    stw 3, 0x244(31)
    stw 0, 0x230(31)
L_802AEA74:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x40820350 # bne .L_802AEDD4
    li 0, 0x1
    stb 0, 0x7f5(3)
    .4byte 0x48000344 # b .L_802AEDD4
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x40820308 # bne .L_802AEDA4
    lfs 2, 0x248(31)
    lfs 0, 0x24c(31)
    .4byte 0xC822D998 # lfd f1, lbl_80540938@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002D9A0 # lfs f0, lbl_80540940@sda21(r0)
    stfs 2, 0x248(31)
    lfs 2, 0x24c(31)
    fadd 1, 2, 1
    frsp 1, 1
    stfs 1, 0x24c(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408202D8 # bne .L_802AEDAC
    stfs 0, 0x248(31)
    li 0, 0x8
    stw 0, 0x230(31)
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x1
    .4byte 0xC022D9A4 # lfs f1, lbl_80540944@sda21(r0)
    .4byte 0xC042D928 # lfs f2, lbl_805408C8@sda21(r0)
    bl fn_802D79E8
    .4byte 0xC022D950 # lfs f1, lbl_805408F0@sda21(r0)
    addi 4, 1, 0x70
    lfs 0, 0xc(31)
    li 5, 0x263
    .4byte 0xC062D94C # lfs f3, lbl_805408EC@sda21(r0)
    li 6, 0x0
    fadds 2, 1, 0
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    fadds 2, 3, 2
    li 10, 0x1
    stfs 2, 0x70(1)
    lfs 2, 0x10(31)
    fadds 2, 3, 2
    stfs 0, 0x78(1)
    stfs 2, 0x74(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 0, 0x234(31)
    cmpwi 0, 0x4
    .4byte 0x40820114 # bne .L_802AEC6C
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    mr 27, 3
    lwz 3, 0x4(31)
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    addi 4, 1, 0x70
    li 5, 0x82
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    li 5, 0x83
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    li 5, 0x84
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lbz 0, 0x0(27)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x41820014 # beq .L_802AEC00
    cmpwi 0, 0x73
    .4byte 0x4182000C # beq .L_802AEC00
    cmpwi 0, 0x79
    .4byte 0x40820030 # bne .L_802AEC2C
L_802AEC00:
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    li 5, 0x80
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_802AEC54
L_802AEC2C:
    lwz 3, 0x4(31)
    addi 4, 1, 0x70
    .4byte 0xC022D92C # lfs f1, lbl_805408CC@sda21(r0)
    li 5, 0x81
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802AEC54:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000130 # b .L_802AED98
L_802AEC6C:
    .4byte 0xC022D950 # lfs f1, lbl_805408F0@sda21(r0)
    lfs 0, 0xc(31)
    lwz 26, 0x4(31)
    fadds 28, 1, 0
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_802AEC90
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802AEC94
L_802AEC90:
    addi 4, 3, 0xdc
L_802AEC94:
    lwz 3, 0x0(4)
    addi 27, 30, 0x1c
    lwz 0, 0x4(4)
    addi 28, 30, 0x0
    stw 3, 0xa4(1)
    li 29, 0x0
    lwz 3, 0x8(4)
    stw 0, 0xa8(1)
    lwz 0, 0xc(4)
    stw 3, 0xac(1)
    lfs 29, 0xa8(1)
    stw 0, 0xb0(1)
    .4byte 0xC3E2D96C # lfs f31, lbl_8054090C@sda21(r0)
    lfs 30, 0xa4(1)
    .4byte 0x480000B8 # b .L_802AED84
L_802AECD0:
    fsubs 0, 28, 30
    lfs 27, 0x10(31)
    li 25, 0x0
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 24, 0xc4(1)
    .4byte 0x48000080 # b .L_802AED68
L_802AECEC:
    fsubs 0, 27, 29
    cmpwi 24, 0x0
    mr 6, 24
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 7, 0xc4(1)
    .4byte 0x4080000C # bge .L_802AED10
    li 6, 0x0
    .4byte 0x48000010 # b .L_802AED1C
L_802AED10:
    cmpwi 24, 0x200
    .4byte 0x41800008 # blt .L_802AED1C
    li 6, 0x1ff
L_802AED1C:
    cmpwi 7, 0x0
    .4byte 0x4080000C # bge .L_802AED2C
    li 7, 0x0
    .4byte 0x48000010 # b .L_802AED38
L_802AED2C:
    cmpwi 7, 0x200
    .4byte 0x41800008 # blt .L_802AED38
    li 7, 0x1ff
L_802AED38:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    lwz 0, 0x240(31)
    rlwimi 5, 7, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 7, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    lwz 4, 0x4(31)
    clrlwi 6, 0, 16
    bl fn_802F9974
    fadds 27, 27, 31
    addi 25, 25, 0x1
L_802AED68:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 27, 0
    cmpw 25, 0
    .4byte 0x4180FF74 # blt .L_802AECEC
    fadds 28, 28, 31
    addi 29, 29, 0x1
L_802AED84:
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 28, 0
    cmpw 29, 0
    .4byte 0x4180FF3C # blt .L_802AECD0
L_802AED98:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800000C # b .L_802AEDAC
L_802AEDA4:
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_802AEDAC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802AEDD4
    li 0, 0x1
    stb 0, 0x7f5(3)
    .4byte 0x4800000C # b .L_802AEDD4
L_802AEDCC:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802AEDD4:
    psq_l 31, 0x138(1), 0, 0
    lfd 31, 0x130(1)
    psq_l 30, 0x128(1), 0, 0
    lfd 30, 0x120(1)
    psq_l 29, 0x118(1), 0, 0
    lfd 29, 0x110(1)
    psq_l 28, 0x108(1), 0, 0
    lfd 28, 0x100(1)
    psq_l 27, 0xf8(1), 0, 0
    lfd 27, 0xf0(1)
    lmw 24, 0xd0(1)
    lwz 0, 0x144(1)
    mtlr 0
    addi 1, 1, 0x140
    blr

fn_802AEE10:
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
    stmw 26, 0x28(1)
    mr 30, 3
    .4byte 0xC002D928 # lfs f0, lbl_805408C8@sda21(r0)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 20
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 12, 8
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 6
    stw 0, 0x23c(3)
    stfs 0, 0x248(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x3
    .4byte 0x4182008C # beq .L_802AEF18
    .4byte 0x40800010 # bge .L_802AEEA0
    cmpwi 0, 0x2
    .4byte 0x4080005C # bge .L_802AEEF4
    .4byte 0x48000014 # b .L_802AEEB0
L_802AEEA0:
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_802AEEB0
    .4byte 0x40800008 # bge .L_802AEEB0
    .4byte 0x48000090 # b .L_802AEF3C
L_802AEEB0:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_802AEED8
    .4byte 0xC022D9A8 # lfs f1, lbl_80540948@sda21(r0)
    .4byte 0xC002D9AC # lfs f0, lbl_8054094C@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000090 # b .L_802AEF64
L_802AEED8:
    .4byte 0xC022D9B0 # lfs f1, lbl_80540950@sda21(r0)
    .4byte 0xC002D93C # lfs f0, lbl_805408DC@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000074 # b .L_802AEF64
L_802AEEF4:
    .4byte 0xC022D9B4 # lfs f1, lbl_80540954@sda21(r0)
    .4byte 0xC002D9B0 # lfs f0, lbl_80540950@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022D954 # lfs f1, lbl_805408F4@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002D93C # lfs f0, lbl_805408DC@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000050 # b .L_802AEF64
L_802AEF18:
    .4byte 0xC022D9B8 # lfs f1, lbl_80540958@sda21(r0)
    .4byte 0xC002D9B0 # lfs f0, lbl_80540950@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022D964 # lfs f1, lbl_80540904@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002D93C # lfs f0, lbl_805408DC@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x4800002C # b .L_802AEF64
L_802AEF3C:
    .4byte 0xC002D95C # lfs f0, lbl_805408FC@sda21(r0)
    .4byte 0xC022D960 # lfs f1, lbl_80540900@sda21(r0)
    stfs 0, 0x60(30)
    .4byte 0xC002D964 # lfs f0, lbl_80540904@sda21(r0)
    stfs 1, 0x64(30)
    .4byte 0xC022D968 # lfs f1, lbl_80540908@sda21(r0)
    stfs 0, 0x68(30)
    .4byte 0xC002D9BC # lfs f0, lbl_8054095C@sda21(r0)
    stfs 1, 0x6c(30)
    stfs 0, 0x248(30)
L_802AEF64:
    li 0, 0x14
    stw 0, 0x244(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802AEF88
    li 0, 0xc
    sth 0, 0x252(30)
    .4byte 0x4800000C # b .L_802AEF90
L_802AEF88:
    li 0, 0xd
    sth 0, 0x252(30)
L_802AEF90:
    lwz 0, 0x234(30)
    cmpwi 0, 0x2
    .4byte 0x4180012C # blt .L_802AF0C4
    lfs 29, 0xc(30)
    lwz 28, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_802AEFB8
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_802AEFBC
L_802AEFB8:
    addi 6, 3, 0xdc
L_802AEFBC:
    lwz 5, 0x0(6)
    lis 4, lbl_8046C8CC@ha
    lwz 0, 0x4(6)
    lis 3, lbl_8046C8B0@ha
    stw 5, 0x8(1)
    addi 28, 4, lbl_8046C8CC@l
    lwz 4, 0x8(6)
    addi 29, 3, lbl_8046C8B0@l
    stw 0, 0xc(1)
    li 31, 0x0
    lwz 0, 0xc(6)
    stw 4, 0x10(1)
    lfs 27, 0xc(1)
    stw 0, 0x14(1)
    .4byte 0xC3E2D96C # lfs f31, lbl_8054090C@sda21(r0)
    lfs 30, 0x8(1)
    .4byte 0x480000B4 # b .L_802AF0B0
L_802AF000:
    fsubs 0, 29, 30
    lfs 28, 0x10(30)
    li 26, 0x0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 27, 0x1c(1)
    .4byte 0x4800007C # b .L_802AF094
L_802AF01C:
    fsubs 0, 28, 27
    cmpwi 27, 0x0
    mr 0, 27
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 6, 0x1c(1)
    .4byte 0x4080000C # bge .L_802AF040
    li 0, 0x0
    .4byte 0x48000010 # b .L_802AF04C
L_802AF040:
    cmpwi 27, 0x200
    .4byte 0x41800008 # blt .L_802AF04C
    li 0, 0x1ff
L_802AF04C:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_802AF05C
    li 6, 0x0
    .4byte 0x48000010 # b .L_802AF068
L_802AF05C:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802AF068
    li 6, 0x1ff
L_802AF068:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 6, 1, 22, 22
    lwz 4, 0x4(30)
    lwz 3, 0x20(3)
    rlwimi 5, 6, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    li 6, 0x6
    bl fn_802F9974
    fadds 28, 28, 31
    addi 26, 26, 0x1
L_802AF094:
    lwz 0, 0x234(30)
    slwi 0, 0, 2
    lwzx 0, 28, 0
    cmpw 26, 0
    .4byte 0x4180FF78 # blt .L_802AF01C
    fadds 29, 29, 31
    addi 31, 31, 0x1
L_802AF0B0:
    lwz 0, 0x234(30)
    slwi 0, 0, 2
    lwzx 0, 29, 0
    cmpw 31, 0
    .4byte 0x4180FF40 # blt .L_802AF000
L_802AF0C4:
    li 0, 0x0
    stw 0, 0x230(30)
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
    lmw 26, 0x28(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_802AF108:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1768@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1768@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF158
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
L_802AF158:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF190
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
L_802AF190:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF1C8
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
L_802AF1C8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF200
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
L_802AF200:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF238
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
L_802AF238:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF270
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
L_802AF270:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF2A8
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
L_802AF2A8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF2E0
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
L_802AF2E0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF318
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
L_802AF318:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AF32C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802AF370
    lis 5, lbl_804A8418@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8418@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802AF370
    mr 3, 30
    bl dtor_80084580
L_802AF370:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AF38C:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    mr 30, 3
    stw 29, 0x54(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_802AF420
L_802AF3C0:
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
L_802AF420:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802AF3C0
    li 6, 0x0
    li 4, 0x1
    li 5, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0x20(1)
    stw 6, 0x24(1)
    stw 6, 0x28(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 6, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 6, 0x33(1)
    stb 6, 0x34(1)
    stb 6, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 6, 0x3d(1)
    stb 6, 0x3e(1)
    stw 5, 0x40(1)
    stw 6, 0x44(1)
    stw 0, 0x48(1)
    lwz 3, 0x23c(30)
    lwz 4, 0x238(30)
    neg 0, 3
    or 0, 0, 3
    cmpwi 4, 0x2
    srwi 31, 0, 31
    .4byte 0x4082003C # bne .L_802AF4E8
    stw 6, 0x8(1)
    neg 0, 31
    or 0, 0, 31
    addi 5, 30, 0xc
    stw 6, 0xc(1)
    srwi 7, 0, 31
    li 6, 0x1c2
    li 8, 0x2
    lwz 3, 0x198(30)
    li 9, -0x1
    lwz 4, 0x4(30)
    li 10, 0x1
    bl fn_803075AC
    .4byte 0x480001B0 # b .L_802AF694
L_802AF4E8:
    cmpwi 4, 0x3
    .4byte 0x40820040 # bne .L_802AF52C
    stw 6, 0x8(1)
    neg 0, 31
    or 0, 0, 31
    addi 5, 30, 0xc
    stw 6, 0xc(1)
    srwi 7, 0, 31
    li 8, 0x2
    li 9, -0x1
    lwz 6, 0x234(30)
    li 10, 0x1
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x2d5
    bl fn_803075AC
    .4byte 0x4800016C # b .L_802AF694
L_802AF52C:
    cmpwi 4, 0x4
    .4byte 0x40820040 # bne .L_802AF570
    stw 6, 0x8(1)
    neg 0, 31
    or 0, 0, 31
    addi 5, 30, 0xc
    stw 6, 0xc(1)
    srwi 7, 0, 31
    li 8, 0x2
    li 9, -0x1
    lwz 6, 0x234(30)
    li 10, 0x1
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x2ee
    bl fn_803075AC
    .4byte 0x48000128 # b .L_802AF694
L_802AF570:
    cmpwi 4, 0x5
    .4byte 0x40820040 # bne .L_802AF5B4
    stw 6, 0x8(1)
    neg 0, 31
    or 0, 0, 31
    addi 5, 30, 0xc
    stw 6, 0xc(1)
    srwi 7, 0, 31
    li 8, 0x2
    li 9, -0x1
    lwz 6, 0x234(30)
    li 10, 0x1
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x2f7
    bl fn_803075AC
    .4byte 0x480000E4 # b .L_802AF694
L_802AF5B4:
    cmpwi 4, 0x6
    .4byte 0x40820040 # bne .L_802AF5F8
    stw 6, 0x8(1)
    neg 0, 31
    or 0, 0, 31
    addi 5, 30, 0xc
    stw 6, 0xc(1)
    srwi 7, 0, 31
    li 8, 0x2
    li 9, -0x1
    lwz 6, 0x234(30)
    li 10, 0x1
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x129
    bl fn_803075AC
    .4byte 0x480000A0 # b .L_802AF694
L_802AF5F8:
    lwz 0, 0x4(30)
    lwz 3, 0x234(30)
    cmpwi 0, 0x8
    addi 29, 3, 0x70
    .4byte 0x40800050 # bge .L_802AF658
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046CA50@ha
    addi 5, 3, lbl_8046CA50@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D9C0 # lfs f1, lbl_80540960@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 29
    fmr 2, 1
    addi 7, 1, 0x10
    lwz 3, 0x20(4)
    addi 4, 30, 0xc
    bl fn_802F86CC
L_802AF658:
    li 3, 0x0
    neg 0, 31
    stw 3, 0x8(1)
    or 0, 0, 31
    srwi 7, 0, 31
    addi 5, 30, 0xc
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x1
    lwz 6, 0x234(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x70
    bl fn_803075AC
L_802AF694:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802AF6B0:
    lwz 4, 0x230(3)
    subi 0, 4, 0x1
    stw 0, 0x230(3)
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    bnelr
    lwz 0, 0x238(3)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802AF6E0
    li 0, 0x0
    stb 0, 0x11c(3)
    blr
L_802AF6E0:
    li 0, 0x2
    stw 0, 0x230(3)
    lwz 4, 0x234(3)
    addi 0, 4, 0x1
    stw 0, 0x234(3)
    lwz 0, 0x238(3)
    cmpwi 0, 0x4
    .4byte 0x40820024 # bne .L_802AF720
    li 0, 0x4
    stw 0, 0x230(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x7
    bltlr
    li 0, 0x0
    stb 0, 0x11c(3)
    blr
L_802AF720:
    lwz 4, 0x234(3)
    cmpwi 4, 0x4
    .4byte 0x41800018 # blt .L_802AF740
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_802AF740
    li 0, 0x0
    stb 0, 0x11c(3)
    blr
L_802AF740:
    cmpwi 4, 0x8
    bltlr
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_802AF780
    lwz 4, 0x240(3)
    addi 0, 4, 0x1
    stw 0, 0x240(3)
    lwz 0, 0x240(3)
    cmpwi 0, 0x8
    .4byte 0x41800010 # blt .L_802AF774
    li 0, 0x0
    stb 0, 0x11c(3)
    blr
L_802AF774:
    li 0, 0x0
    stw 0, 0x234(3)
    blr
L_802AF780:
    li 0, 0x0
    stb 0, 0x11c(3)
    blr

fn_802AF78C:
    lwz 4, 0x90(3)
    li 0, 0x0
    clrlwi 4, 4, 26
    stw 4, 0x238(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 5, 20
    stw 4, 0x23c(3)
    stw 0, 0x234(3)
    lwz 0, 0x238(3)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802AF7C4
    li 0, 0xa
    stw 0, 0x230(3)
    .4byte 0x48000020 # b .L_802AF7E0
L_802AF7C4:
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802AF7D8
    li 0, 0x4
    stw 0, 0x230(3)
    .4byte 0x4800000C # b .L_802AF7E0
L_802AF7D8:
    li 0, 0x2
    stw 0, 0x230(3)
L_802AF7E0:
    li 0, 0x0
    stw 0, 0x240(3)
    blr

fn_802AF7EC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1868@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1868@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF83C
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
L_802AF83C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF874
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
L_802AF874:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF8AC
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
L_802AF8AC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF8E4
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
L_802AF8E4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF91C
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
L_802AF91C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF954
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
L_802AF954:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF98C
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
L_802AF98C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF9C4
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
L_802AF9C4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802AF9FC
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
L_802AF9FC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AFA10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802AFA54
    lis 5, lbl_804A8470@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8470@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802AFA54
    mr 3, 30
    bl dtor_80084580
L_802AFA54:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802AFA70:
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
    .4byte 0x48000064 # b .L_802AFB00
L_802AFAA0:
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
L_802AFB00:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802AFAA0
    li 6, 0x0
    li 5, 0x1
    stb 6, 0x25(1)
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    li 0, -0x3
    stw 7, 0x18(1)
    stw 6, 0x1c(1)
    stw 6, 0x20(1)
    stb 6, 0x24(1)
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
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 3, 0x40(1)
    stb 0, 0x25(1)
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x4182014C # beq .L_802AFCD0
    .4byte 0x40800014 # bge .L_802AFB9C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802AFBA8
    .4byte 0x408000A4 # bge .L_802AFC38
    .4byte 0x48000138 # b .L_802AFCD0
L_802AFB9C:
    cmpwi 0, 0x4
    .4byte 0x40800130 # bge .L_802AFCD0
    .4byte 0x48000094 # b .L_802AFC38
L_802AFBA8:
    li 0, 0x60
    stb 0, 0x1b(1)
    lwz 0, 0x4(31)
    lwz 3, 0x240(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x10
    .4byte 0x40800050 # bge .L_802AFC10
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046CA68@ha
    addi 5, 3, lbl_8046CA68@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D9D0 # lfs f1, lbl_80540970@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x8
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_802AFC10:
    lwz 6, 0x240(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0x10
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x4800009C # b .L_802AFCD0
L_802AFC38:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x41820090 # beq .L_802AFCD0
    lwz 0, 0x254(31)
    stb 0, 0x1b(1)
    lwz 0, 0x4(31)
    lwz 3, 0x240(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x10
    .4byte 0x40800050 # bge .L_802AFCAC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046CA68@ha
    addi 5, 3, lbl_8046CA68@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D9D0 # lfs f1, lbl_80540970@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x8
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_802AFCAC:
    lwz 6, 0x240(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0x10
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
L_802AFCD0:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802AFCE8:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC022D9D4 # lfs f1, lbl_80540974@sda21(r0)
    li 5, 0x0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    lfs 6, 0x238(3)
    addi 3, 1, 0x38
    lfs 2, 0x234(30)
    lfs 0, 0x60(30)
    stfs 0, 0x38(1)
    fadds 4, 0, 2
    lfs 0, 0x64(30)
    stfs 0, 0x3c(1)
    fadds 3, 0, 6
    lfs 0, 0x68(30)
    stfs 0, 0x40(1)
    fadds 2, 0, 2
    lfs 5, 0x6c(30)
    fadds 0, 5, 6
    stfs 5, 0x44(1)
    stfs 4, 0x38(1)
    stfs 3, 0x3c(1)
    stfs 2, 0x40(1)
    stfs 0, 0x44(1)
    lwz 4, 0x4(30)
    bl fn_8023AF14
    lwz 0, 0x244(30)
    mr 31, 3
    cmpwi 0, 0x2
    .4byte 0x41820258 # beq .L_802AFFC0
    .4byte 0x40800014 # bge .L_802AFD80
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802AFD8C
    .4byte 0x40800048 # bge .L_802AFDC0
    .4byte 0x48000400 # b .L_802B017C
L_802AFD80:
    cmpwi 0, 0x4
    .4byte 0x408003F8 # bge .L_802B017C
    .4byte 0x48000288 # b .L_802B0010
L_802AFD8C:
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x408203DC # bne .L_802B017C
    li 0, 0x8
    stw 0, 0x24c(30)
    lwz 3, 0x250(30)
    addi 0, 3, 0x1
    clrlwi 0, 0, 30
    stw 0, 0x250(30)
    .4byte 0x480003C0 # b .L_802B017C
L_802AFDC0:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x418200B8 # beq .L_802AFE80
    .4byte 0x408003B0 # bge .L_802B017C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802AFDDC
    .4byte 0x480003A4 # b .L_802B017C
L_802AFDDC:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_802AFE50
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x250(30)
    li 5, 0x14
    li 0, 0x0
    mr 3, 30
    stw 5, 0x254(30)
    addi 4, 4, 0x25
    li 5, 0x0
    stw 0, 0x258(30)
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x230(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x40820348 # bne .L_802B017C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x199
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000330 # b .L_802B017C
L_802AFE50:
    cmpwi 31, 0x0
    .4byte 0x41800328 # blt .L_802B017C
    li 0, 0x1
    mr 3, 30
    stw 0, 0x25c(30)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(30)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000300 # b .L_802B017C
L_802AFE80:
    lwz 0, 0x258(30)
    .4byte 0x3862D9C8 # li r3, lbl_80540968@sda21
    lwz 5, 0x254(30)
    addi 4, 30, 0xc
    slwi 0, 0, 2
    lwzx 0, 3, 0
    add 0, 5, 0
    stw 0, 0x254(30)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x14
    lfs 0, 0x14(30)
    psq_st 1, 0x2c(1), 0, 0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    stfs 0, 0x34(1)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x1c(1)
    bl fn_8043E7CC
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_802AFFAC
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_802AFF18
    lwz 0, 0x254(30)
    cmpwi 0, 0xc8
    .4byte 0x41800048 # blt .L_802AFF48
    li 3, 0xc8
    li 0, 0x1
    stw 3, 0x254(30)
    stw 0, 0x258(30)
    .4byte 0x48000034 # b .L_802AFF48
L_802AFF18:
    lwz 0, 0x254(30)
    cmpwi 0, 0x28
    .4byte 0x41810028 # bgt .L_802AFF48
    li 0, 0x28
    lis 4, 0x3
    stw 0, 0x254(30)
    li 0, 0x0
    mr 3, 30
    addi 4, 4, 0x25
    stw 0, 0x258(30)
    li 5, 0x0
    bl fn_801F0E34
L_802AFF48:
    cmpwi 31, 0x0
    .4byte 0x40800038 # bge .L_802AFF84
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_802AFF78
    mr 3, 30
    li 4, 0xff
    lwz 12, 0x0(30)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802AFF78:
    li 0, 0x0
    stw 0, 0x25c(30)
    .4byte 0x480001FC # b .L_802B017C
L_802AFF84:
    li 0, 0x1
    mr 3, 30
    stw 0, 0x25c(30)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(30)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x480001D4 # b .L_802B017C
L_802AFFAC:
    li 0, 0x0
    stw 0, 0x250(30)
    stw 0, 0x25c(30)
    stw 0, 0x230(30)
    .4byte 0x480001C0 # b .L_802B017C
L_802AFFC0:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_802AFFFC
    .4byte 0x408001B0 # bge .L_802B017C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802AFFDC
    .4byte 0x480001A4 # b .L_802B017C
L_802AFFDC:
    cmpwi 31, 0x0
    .4byte 0x4180019C # blt .L_802B017C
    li 0, 0x1
    mr 3, 30
    stw 0, 0x230(30)
    li 4, 0x6
    bl fn_801F0D20
    .4byte 0x48000184 # b .L_802B017C
L_802AFFFC:
    cmpwi 31, 0x0
    .4byte 0x4080017C # bge .L_802B017C
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000170 # b .L_802B017C
L_802B0010:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x41820088 # beq .L_802B00A0
    .4byte 0x40800160 # bge .L_802B017C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802B002C
    .4byte 0x48000154 # b .L_802B017C
L_802B002C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820138 # beq .L_802B017C
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x250(30)
    li 5, 0x14
    li 0, 0x0
    mr 3, 30
    stw 5, 0x254(30)
    addi 4, 4, 0x25
    li 5, 0x0
    stw 0, 0x258(30)
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x230(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x408200F8 # bne .L_802B017C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x199
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x480000E0 # b .L_802B017C
L_802B00A0:
    lwz 0, 0x258(30)
    .4byte 0x3862D9C8 # li r3, lbl_80540968@sda21
    lwz 5, 0x254(30)
    addi 4, 30, 0xc
    slwi 0, 0, 2
    lwzx 0, 3, 0
    add 0, 5, 0
    stw 0, 0x254(30)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x8
    lfs 0, 0x14(30)
    psq_st 1, 0x20(1), 0, 0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    stfs 0, 0x28(1)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    bl fn_8043E7CC
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_802B016C
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_802B0138
    lwz 0, 0x254(30)
    cmpwi 0, 0xc8
    .4byte 0x4180005C # blt .L_802B017C
    li 3, 0xc8
    li 0, 0x1
    stw 3, 0x254(30)
    stw 0, 0x258(30)
    .4byte 0x48000048 # b .L_802B017C
L_802B0138:
    lwz 0, 0x254(30)
    cmpwi 0, 0x28
    .4byte 0x4181003C # bgt .L_802B017C
    li 0, 0x28
    lis 4, 0x3
    stw 0, 0x254(30)
    li 0, 0x0
    mr 3, 30
    addi 4, 4, 0x25
    stw 0, 0x258(30)
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000014 # b .L_802B017C
L_802B016C:
    li 0, 0x0
    stw 0, 0x250(30)
    stw 0, 0x25c(30)
    stw 0, 0x230(30)
L_802B017C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802B0194:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    li 0, 0x28
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 5, 0x90(3)
    li 3, 0x8
    clrlwi 5, 5, 28
    stw 5, 0x240(30)
    lwz 5, 0x90(30)
    extrwi 5, 5, 5, 20
    stw 5, 0x244(30)
    lwz 5, 0x90(30)
    extrwi 5, 5, 1, 27
    stw 5, 0x248(30)
    stw 4, 0x230(30)
    stw 4, 0x250(30)
    stw 3, 0x24c(30)
    stw 0, 0x254(30)
    stw 4, 0x258(30)
    stw 4, 0x25c(30)
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_802B020C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802B0210
L_802B020C:
    addi 3, 3, 0xdc
L_802B0210:
    lfs 0, 0x14(30)
    stfs 0, 0x23c(30)
    lwz 0, 0x240(30)
    cmpwi 0, 0x2
    .4byte 0x41820094 # beq .L_802B02B4
    .4byte 0x408000C8 # bge .L_802B02EC
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B023C
    .4byte 0x40800048 # bge .L_802B0278
    .4byte 0x480000B8 # b .L_802B02EC
    .4byte 0x480000B4 # b .L_802B02EC
L_802B023C:
    lfs 0, 0xc(30)
    .4byte 0xC022D9D8 # lfs f1, lbl_80540978@sda21(r0)
    stfs 0, 0x234(30)
    .4byte 0xC062D9DC # lfs f3, lbl_8054097C@sda21(r0)
    lfs 0, 0x4(3)
    .4byte 0xC042D9E0 # lfs f2, lbl_80540980@sda21(r0)
    fadds 4, 1, 0
    .4byte 0xC022D9E4 # lfs f1, lbl_80540984@sda21(r0)
    .4byte 0xC002D9E8 # lfs f0, lbl_80540988@sda21(r0)
    stfs 4, 0x238(30)
    stfs 3, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x480000AC # b .L_802B0320
L_802B0278:
    lfs 0, 0xc(30)
    .4byte 0xC022D9D8 # lfs f1, lbl_80540978@sda21(r0)
    stfs 0, 0x234(30)
    .4byte 0xC062D9DC # lfs f3, lbl_8054097C@sda21(r0)
    lfs 0, 0x4(3)
    .4byte 0xC042D9E0 # lfs f2, lbl_80540980@sda21(r0)
    fadds 4, 1, 0
    .4byte 0xC022D9E4 # lfs f1, lbl_80540984@sda21(r0)
    .4byte 0xC002D9E8 # lfs f0, lbl_80540988@sda21(r0)
    stfs 4, 0x238(30)
    stfs 3, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000070 # b .L_802B0320
L_802B02B4:
    .4byte 0xC082D9E8 # lfs f4, lbl_80540988@sda21(r0)
    lfs 0, 0x0(3)
    .4byte 0xC042D9E0 # lfs f2, lbl_80540980@sda21(r0)
    fadds 3, 4, 0
    .4byte 0xC022D9DC # lfs f1, lbl_8054097C@sda21(r0)
    .4byte 0xC002D9E4 # lfs f0, lbl_80540984@sda21(r0)
    stfs 3, 0x234(30)
    lfs 3, 0x10(30)
    stfs 3, 0x238(30)
    stfs 2, 0x60(30)
    stfs 1, 0x64(30)
    stfs 4, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000038 # b .L_802B0320
L_802B02EC:
    .4byte 0xC082D9E8 # lfs f4, lbl_80540988@sda21(r0)
    lfs 0, 0x0(3)
    .4byte 0xC042D9E0 # lfs f2, lbl_80540980@sda21(r0)
    fadds 3, 4, 0
    .4byte 0xC022D9DC # lfs f1, lbl_8054097C@sda21(r0)
    .4byte 0xC002D9E4 # lfs f0, lbl_80540984@sda21(r0)
    stfs 3, 0x234(30)
    lfs 3, 0x10(30)
    stfs 3, 0x238(30)
    stfs 2, 0x60(30)
    stfs 1, 0x64(30)
    stfs 4, 0x68(30)
    stfs 0, 0x6c(30)
L_802B0320:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B0338:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1968@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1968@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0388
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
L_802B0388:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B03C0
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
L_802B03C0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B03F8
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
L_802B03F8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0430
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
L_802B0430:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0468
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
L_802B0468:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B04A0
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
L_802B04A0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B04D8
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
L_802B04D8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0510
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
L_802B0510:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0548
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
L_802B0548:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B055C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x254(3)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_802B05B0
    lfs 2, 0x258(3)
    .4byte 0xC022D9F0 # lfs f1, lbl_80540990@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_802B05A8
    .4byte 0xC002D9F4 # lfs f0, lbl_80540994@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x258(3)
    lfs 0, 0x258(3)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820038 # bne .L_802B05D4
    stfs 1, 0x258(3)
    .4byte 0x48000030 # b .L_802B05D4
L_802B05A8:
    stfs 1, 0x258(3)
    .4byte 0x48000028 # b .L_802B05D4
L_802B05B0:
    lfs 1, 0x258(3)
    .4byte 0xC002D9F8 # lfs f0, lbl_80540998@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_802B05D0
    .4byte 0xC002D9F4 # lfs f0, lbl_80540994@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x258(3)
    .4byte 0x48000008 # b .L_802B05D4
L_802B05D0:
    stfs 0, 0x258(3)
L_802B05D4:
    .4byte 0xC062D9FC # lfs f3, lbl_8054099C@sda21(r0)
    li 8, 0x0
    lfs 2, 0x10(3)
    li 0, 0x80
    lfs 0, 0xc(3)
    addi 5, 1, 0x10
    fadds 4, 3, 2
    lfs 1, 0x258(3)
    fadds 2, 3, 0
    .4byte 0xC002D9F0 # lfs f0, lbl_80540990@sda21(r0)
    stb 8, 0xc(1)
    addi 6, 1, 0x8
    stfs 2, 0x10(1)
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    stfs 4, 0x14(1)
    stfs 0, 0x18(1)
    stb 8, 0xd(1)
    lwz 4, 0x4(3)
    stb 8, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(7)
    bl fn_80158B5C
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B0644:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x418201BC # beq .L_802B081C
    .4byte 0x40800320 # bge .L_802B0984
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802B0674
    .4byte 0x48000314 # b .L_802B0984
L_802B0674:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_802B06C8
    bl GetRoomConfigRecord
    lwz 4, 0x248(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_802B06C8
    bl GetRoomConfigRecord
    lwz 4, 0x24c(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802B06C8
    bl GetRoomConfigRecord
    lwz 4, 0x250(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x418202C0 # beq .L_802B0984
L_802B06C8:
    li 0, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802B0708
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA00 # lfs f1, lbl_805409A0@sda21(r0)
    li 5, 0xbe
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(31)
L_802B0708:
    lwz 0, 0x23c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802B0740
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA00 # lfs f1, lbl_805409A0@sda21(r0)
    li 5, 0xbf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x23c(31)
L_802B0740:
    lwz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802B0778
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA00 # lfs f1, lbl_805409A0@sda21(r0)
    li 5, 0xc0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x240(31)
L_802B0778:
    lwz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802B07B0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA00 # lfs f1, lbl_805409A0@sda21(r0)
    li 5, 0xbd
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
L_802B07B0:
    lwz 0, 0x244(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802B07E8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA00 # lfs f1, lbl_805409A0@sda21(r0)
    li 5, 0x54a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x244(31)
L_802B07E8:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x23
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800016C # b .L_802B0984
L_802B081C:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820130 # bne .L_802B0960
    bl GetRoomConfigRecord
    lwz 4, 0x248(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082011C # bne .L_802B0960
    bl GetRoomConfigRecord
    lwz 4, 0x24c(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820108 # bne .L_802B0960
    bl GetRoomConfigRecord
    lwz 4, 0x250(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x408200F4 # bne .L_802B0960
    li 4, 0x0
    stw 4, 0x254(31)
    lwz 5, 0x238(31)
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_802B089C
    lwz 3, 0xf4(5)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 0, 0x24(5)
    stw 4, 0x238(31)
L_802B089C:
    lwz 5, 0x23c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B08C4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(31)
L_802B08C4:
    lwz 5, 0x240(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B08EC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x240(31)
L_802B08EC:
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B0914
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(31)
L_802B0914:
    lwz 5, 0x244(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B093C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x244(31)
L_802B093C:
    .4byte 0xC022DA00 # lfs f1, lbl_805409A0@sda21(r0)
    li 0, 0x0
    .4byte 0xC002DA04 # lfs f0, lbl_805409A4@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_802B0984
L_802B0960:
    .4byte 0xC022DA08 # lfs f1, lbl_805409A8@sda21(r0)
    mr 3, 31
    .4byte 0xC002DA0C # lfs f0, lbl_805409AC@sda21(r0)
    li 4, 0x0
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801F2B20
L_802B0984:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B0998:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182007C # beq .L_802B0A30
    lis 3, lbl_804A84C8@ha
    addi 0, 3, lbl_804A84C8@l
    stw 0, 0x0(30)
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B09D4
    bl fn_801EE434
L_802B09D4:
    lwz 3, 0x238(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B09E4
    bl fn_801EE434
L_802B09E4:
    lwz 3, 0x23c(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B09F4
    bl fn_801EE434
L_802B09F4:
    lwz 3, 0x240(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B0A04
    bl fn_801EE434
L_802B0A04:
    lwz 3, 0x244(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B0A14
    bl fn_801EE434
L_802B0A14:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B0A30
    mr 3, 30
    bl dtor_80084580
L_802B0A30:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B0A4C:
    lwz 4, 0x90(3)
    li 0, 0x0
    .4byte 0xC042DA00 # lfs f2, lbl_805409A0@sda21(r0)
    extrwi 4, 4, 5, 5
    .4byte 0xC022DA04 # lfs f1, lbl_805409A4@sda21(r0)
    stw 4, 0x248(3)
    .4byte 0xC002D9F0 # lfs f0, lbl_80540990@sda21(r0)
    lwz 4, 0x90(3)
    extrwi 4, 4, 5, 10
    stw 4, 0x24c(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 5, 15
    stw 4, 0x250(3)
    stfs 2, 0x60(3)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x230(3)
    stw 0, 0x254(3)
    stfs 0, 0x258(3)
    blr

fn_802B0AB4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1A68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1A68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0B04
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
L_802B0B04:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0B3C
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
L_802B0B3C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0B74
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
L_802B0B74:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0BAC
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
L_802B0BAC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0BE4
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
L_802B0BE4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0C1C
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
L_802B0C1C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0C54
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
L_802B0C54:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0C8C
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
L_802B0C8C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B0CC4
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
L_802B0CC4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B0CD8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f5(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_802B0D34
    lfs 2, 0x250(31)
    .4byte 0xC022DA10 # lfs f1, lbl_805409B0@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810094 # ble .L_802B0DA0
    .4byte 0xC002DA14 # lfs f0, lbl_805409B4@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x250(31)
    lfs 0, 0x250(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820078 # bne .L_802B0DA0
    stfs 1, 0x250(31)
    .4byte 0x48000070 # b .L_802B0DA0
L_802B0D34:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_802B0D7C
    lfs 2, 0x250(31)
    .4byte 0xC022DA10 # lfs f1, lbl_805409B0@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_802B0D74
    .4byte 0xC002DA18 # lfs f0, lbl_805409B8@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x250(31)
    lfs 0, 0x250(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820038 # bne .L_802B0DA0
    stfs 1, 0x250(31)
    .4byte 0x48000030 # b .L_802B0DA0
L_802B0D74:
    stfs 1, 0x250(31)
    .4byte 0x48000028 # b .L_802B0DA0
L_802B0D7C:
    lfs 1, 0x250(31)
    lfs 0, 0x254(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_802B0D9C
    .4byte 0xC002DA18 # lfs f0, lbl_805409B8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x250(31)
    .4byte 0x48000008 # b .L_802B0DA0
L_802B0D9C:
    stfs 0, 0x250(31)
L_802B0DA0:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x418200F4 # beq .L_802B0E9C
    .4byte 0x40800014 # bge .L_802B0DC0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802B0DCC
    .4byte 0x40800084 # bge .L_802B0E3C
    .4byte 0x480001CC # b .L_802B0F88
L_802B0DC0:
    cmpwi 0, 0x4
    .4byte 0x408001C4 # bge .L_802B0F88
    .4byte 0x48000154 # b .L_802B0F1C
L_802B0DCC:
    lbz 0, 0x248(31)
    cmplwi 0, 0x1
    .4byte 0x408201B4 # bne .L_802B0F88
    .4byte 0xC062DA14 # lfs f3, lbl_805409B4@sda21(r0)
    li 7, 0x0
    lfs 2, 0x10(31)
    li 0, 0x80
    lfs 0, 0xc(31)
    addi 5, 1, 0x4c
    fadds 4, 3, 2
    lfs 1, 0x250(31)
    fadds 2, 3, 0
    .4byte 0xC002DA10 # lfs f0, lbl_805409B0@sda21(r0)
    stb 7, 0x24(1)
    addi 6, 1, 0x20
    stfs 2, 0x4c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 4, 0x50(1)
    stfs 0, 0x54(1)
    stb 7, 0x25(1)
    lwz 4, 0x4(31)
    stb 7, 0x26(1)
    stb 0, 0x27(1)
    lwz 0, 0x24(1)
    stw 0, 0x20(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    .4byte 0x48000150 # b .L_802B0F88
L_802B0E3C:
    lfs 2, 0x10(31)
    li 7, 0x0
    .4byte 0xC002DA18 # lfs f0, lbl_805409B8@sda21(r0)
    li 0, 0xc8
    lfs 1, 0x250(31)
    addi 5, 1, 0x40
    fsubs 2, 2, 0
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    addi 6, 1, 0x18
    stb 7, 0x1c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x40(1)
    stfs 2, 0x44(1)
    stfs 3, 0x48(1)
    stb 7, 0x1d(1)
    lwz 4, 0x4(31)
    stb 7, 0x1e(1)
    stb 0, 0x1f(1)
    lwz 0, 0x1c(1)
    stw 0, 0x18(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    .4byte 0x480000F0 # b .L_802B0F88
L_802B0E9C:
    lbz 0, 0x248(31)
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_802B0F88
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 7, 0x0
    li 0, 0x80
    li 4, 0x1
    lwz 3, 0x2c(3)
    addi 5, 1, 0x34
    .4byte 0xC062DA14 # lfs f3, lbl_805409B4@sda21(r0)
    addi 6, 1, 0x10
    stb 4, 0xd(3)
    .4byte 0xC002DA10 # lfs f0, lbl_805409B0@sda21(r0)
    lfs 1, 0x10(31)
    lfs 2, 0xc(31)
    fadds 4, 3, 1
    lfs 1, 0x250(31)
    fadds 2, 3, 2
    stb 7, 0x14(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 4, 0x38(1)
    stfs 2, 0x34(1)
    stfs 0, 0x3c(1)
    stb 7, 0x15(1)
    lwz 4, 0x4(31)
    stb 7, 0x16(1)
    stb 0, 0x17(1)
    lwz 0, 0x14(1)
    stw 0, 0x10(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    .4byte 0x48000070 # b .L_802B0F88
L_802B0F1C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 7, 0x0
    li 0, 0xc8
    li 4, 0x1
    lwz 3, 0x2c(3)
    addi 5, 1, 0x28
    .4byte 0xC002DA18 # lfs f0, lbl_805409B8@sda21(r0)
    addi 6, 1, 0x8
    stb 4, 0xd(3)
    lfs 2, 0x10(31)
    lfs 1, 0x250(31)
    fsubs 2, 2, 0
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    stb 7, 0xc(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 3, 0x30(1)
    stb 7, 0xd(1)
    lwz 4, 0x4(31)
    stb 7, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_802B0F88:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802B0F9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x238(3)
    cmpwi 0, 0x1
    .4byte 0x418200F0 # beq .L_802B10AC
    .4byte 0x40800174 # bge .L_802B1134
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802B0FD0
    .4byte 0x48000168 # b .L_802B1134
L_802B0FD0:
    bl GetRoomConfigRecord
    lwz 4, 0x244(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802B0FF0
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x41820148 # beq .L_802B1134
L_802B0FF0:
    li 0, 0x1
    stb 0, 0x248(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802B1014
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802B1014
    cmpwi 0, 0x4
    .4byte 0x40820068 # bne .L_802B1078
L_802B1014:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA1C # lfs f1, lbl_805409BC@sda21(r0)
    li 5, 0xbd
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x4
    .4byte 0x41820030 # beq .L_802B1078
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA1C # lfs f1, lbl_805409BC@sda21(r0)
    li 5, 0x54a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
L_802B1078:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0xc
    li 3, 0x1
    stw 0, 0xb0(31)
    li 0, 0x0
    stw 3, 0x238(31)
    stw 3, 0x24c(31)
    sth 0, 0x94(31)
    .4byte 0x4800008C # b .L_802B1134
L_802B10AC:
    lwz 30, 0x244(31)
    cmpwi 30, 0x0
    .4byte 0x41820080 # beq .L_802B1134
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_802B1134
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B10F4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(31)
L_802B10F4:
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B111C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(31)
L_802B111C:
    li 3, 0xd
    li 0, 0x0
    stw 3, 0xb0(31)
    stb 0, 0x248(31)
    stw 0, 0x238(31)
    stw 0, 0x24c(31)
L_802B1134:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B114C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182004C # beq .L_802B11B4
    lis 3, lbl_804A8520@ha
    addi 0, 3, lbl_804A8520@l
    stw 0, 0x0(30)
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B1188
    bl fn_801EE434
L_802B1188:
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B1198
    bl fn_801EE434
L_802B1198:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B11B4
    mr 3, 30
    bl dtor_80084580
L_802B11B4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B11D0:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002DA10 # lfs f0, lbl_805409B0@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x90(3)
    clrlwi 3, 3, 25
    stw 3, 0x23c(30)
    lwz 3, 0x90(30)
    srwi 3, 3, 27
    stw 3, 0x244(30)
    stw 0, 0x24c(30)
    stfs 0, 0x250(30)
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802B1224
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802B1230
L_802B1224:
    .4byte 0xC002DA20 # lfs f0, lbl_805409C0@sda21(r0)
    stfs 0, 0x254(30)
    .4byte 0x4800000C # b .L_802B1238
L_802B1230:
    .4byte 0xC002DA24 # lfs f0, lbl_805409C4@sda21(r0)
    stfs 0, 0x254(30)
L_802B1238:
    li 0, 0x0
    sth 0, 0x94(30)
    stw 0, 0x230(30)
    stw 0, 0x234(30)
    lwz 31, 0x244(30)
    cmpwi 31, 0x0
    .4byte 0x41820018 # beq .L_802B1268
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_802B1308
L_802B1268:
    li 0, 0x1
    stb 0, 0x248(30)
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802B128C
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802B128C
    cmpwi 0, 0x4
    .4byte 0x40820068 # bne .L_802B12F0
L_802B128C:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DA1C # lfs f1, lbl_805409BC@sda21(r0)
    li 5, 0xbd
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(30)
    lwz 0, 0x23c(30)
    cmpwi 0, 0x4
    .4byte 0x41820030 # beq .L_802B12F0
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DA1C # lfs f1, lbl_805409BC@sda21(r0)
    li 5, 0x54a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(30)
L_802B12F0:
    li 3, 0xc
    li 0, 0x1
    stw 3, 0xb0(30)
    stw 0, 0x238(30)
    stw 0, 0x24c(30)
    .4byte 0x48000018 # b .L_802B131C
L_802B1308:
    li 3, 0xd
    li 0, 0x0
    stw 3, 0xb0(30)
    stw 0, 0x238(30)
    stb 0, 0x248(30)
L_802B131C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B1334:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1B68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1B68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B1384
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
L_802B1384:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B13BC
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
L_802B13BC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B13F4
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
L_802B13F4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B142C
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
L_802B142C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B1464
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
L_802B1464:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B149C
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
L_802B149C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B14D4
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
L_802B14D4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B150C
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
L_802B150C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B1544
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
L_802B1544:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B1558:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x806D8DD8 # lwz r3, lbl_8053A998@sda21(r0)
    bl fn_8009304C
    bl fn_8008D8E4
    bl fn_8004C228
    bl fn_8004C228
    bl fn_8005A44C
    mr 31, 3
    bl OSDisableInterrupts
    mr 30, 3
    bl OSGetCurrentThread
    cmplw 31, 3
    .4byte 0x41820010 # beq .L_802B15A8
    mr 3, 31
    bl OSCancelThread
    bl fn_8005A400
L_802B15A8:
    bl fn_8005BA0C
    bl fn_8005BBD4
    bl fn_8005BDDC
    mr 3, 30
    bl OSRestoreInterrupts
    bl fn_80092AF0
    li 3, 0x0
    bl fn_8005C094
    li 3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    bl fn_8004C228
    lis 3, lbl_8051C1A0@ha
    addi 31, 3, lbl_8051C1A0@l
    .4byte 0x48000008 # b .L_802B15E8
L_802B15E4:
    bl fn_8004C228
L_802B15E8:
    lwz 0, 0x1fcc(31)
    cmpwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_802B15E4
    bl LCDisable
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B1610:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_80529DEC@ha
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    addi 30, 5, lbl_80529DEC@l
    mr 31, 3
    mr 27, 4
    lbz 0, 0x21f(30)
    cmplwi 0, 0x0
    .4byte 0x40820594 # bne .L_802B1BCC
    li 3, 0x0
    bl __PADDisableRecalibration
    cmpwi 27, -0x1
    .4byte 0x40820014 # bne .L_802B165C
    bl fn_8008D8E4
    lis 3, 0xf000
    bl fn_8008E364
    .4byte 0x48000084 # b .L_802B16DC
L_802B165C:
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lbz 0, 0x221(4)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_802B168C
    lis 3, fn_80139994@ha
    li 4, 0x0
    addi 0, 3, fn_80139994@l
    .4byte 0x988D8D91 # stb r4, lbl_8053A951@sda21(r0)
    .4byte 0x900D8D7C # stw r0, lbl_8053A93C@sda21(r0)
    .4byte 0x908D8D80 # stw r4, lbl_8053A940@sda21(r0)
    .4byte 0x48000544 # b .L_802B1BCC
L_802B168C:
    li 3, 0x1
    .4byte 0x80AD90E8 # lwz r5, lbl_8053ACA8@sda21(r0)
    stb 3, 0x221(4)
    clrlwi. 0, 27, 24
    stb 3, 0x6(5)
    .4byte 0x80AD90E8 # lwz r5, lbl_8053ACA8@sda21(r0)
    .4byte 0x41800018 # blt .L_802B16BC
    cmpwi 0, 0x3
    .4byte 0x41810010 # bgt .L_802B16BC
    stb 0, 0x222(4)
    stb 0, 0x7(5)
    .4byte 0x48000018 # b .L_802B16D0
L_802B16BC:
    lis 3, lbl_80529DEC@ha
    li 0, 0xff
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x222(3)
    stb 0, 0x7(5)
L_802B16D0:
    bl fn_8008D8E4
    lis 3, 0xf000
    bl fn_8008E364
L_802B16DC:
    bl DVDCheckDisk
    cmpwi 3, 0x0
    .4byte 0x40820168 # bne .L_802B184C
    li 3, 0x0
    bl __PADDisableRecalibration
    .4byte 0x806D8DD8 # lwz r3, lbl_8053A998@sda21(r0)
    bl fn_8009304C
    bl fn_8008D8E4
    bl fn_8004C228
    bl fn_8004C228
    bl fn_8005A44C
    mr 31, 3
    bl OSDisableInterrupts
    mr 30, 3
    bl OSGetCurrentThread
    cmplw 31, 3
    .4byte 0x41820010 # beq .L_802B172C
    mr 3, 31
    bl OSCancelThread
    bl fn_8005A400
L_802B172C:
    bl fn_8005BA0C
    bl fn_8005BBD4
    bl fn_8005BDDC
    mr 3, 30
    bl OSRestoreInterrupts
    bl fn_80092AF0
    li 3, 0x0
    bl fn_8005C094
    li 3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    bl fn_8004C228
    lis 3, lbl_8051C1A0@ha
    addi 31, 3, lbl_8051C1A0@l
    .4byte 0x48000008 # b .L_802B176C
L_802B1768:
    bl fn_8004C228
L_802B176C:
    lwz 0, 0x1fcc(31)
    cmpwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_802B1768
    bl LCDisable
    lis 3, lbl_80529DEC@ha
    li 4, 0xa5
    addi 5, 3, lbl_80529DEC@l
    li 0, 0x2
    stb 4, 0x21b(5)
    li 6, 0x0
    mtctr 0
L_802B1798:
    add 4, 5, 6
    subis 3, 6, 0x7f90
    lbz 0, 0x216(4)
    addi 6, 6, 0x8
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    add 4, 5, 6
    stb 0, 0x7(3)
    subis 3, 6, 0x7f90
    addi 6, 6, 0x8
    lbz 0, 0x216(4)
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    stb 0, 0x7(3)
    .4byte 0x4200FF68 # bdnz .L_802B1798
    li 3, 0x1
    lis 4, 0x8000
    li 5, 0x0
    bl OSResetSystem
L_802B1844:
    bl fn_8004C228
    .4byte 0x4BFFFFFC # b .L_802B1844
L_802B184C:
    lis 3, lbl_80529DEC@ha
    addi 5, 3, lbl_80529DEC@l
    lbz 0, 0x238(5)
    cmplwi 0, 0xff
    .4byte 0x41820218 # beq .L_802B1A74
    li 3, 0x1
    li 0, 0x2
    stb 3, 0x223(5)
    li 12, 0x0
    mtctr 0
L_802B1874:
    add 4, 5, 12
    subis 3, 12, 0x7f90
    lbz 0, 0x216(4)
    addi 12, 12, 0x8
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    add 4, 5, 12
    stb 0, 0x7(3)
    subis 3, 12, 0x7f90
    addi 12, 12, 0x8
    lbz 0, 0x216(4)
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    stb 0, 0x7(3)
    .4byte 0x4200FF68 # bdnz .L_802B1874
    li 3, 0x0
    bl __PADDisableRecalibration
    .4byte 0x806D8DD8 # lwz r3, lbl_8053A998@sda21(r0)
    bl fn_8009304C
    bl fn_8008D8E4
    bl fn_8004C228
    bl fn_8004C228
    bl fn_8005A44C
    mr 31, 3
    bl OSDisableInterrupts
    mr 30, 3
    bl OSGetCurrentThread
    cmplw 31, 3
    .4byte 0x41820010 # beq .L_802B1954
    mr 3, 31
    bl OSCancelThread
    bl fn_8005A400
L_802B1954:
    bl fn_8005BA0C
    bl fn_8005BBD4
    bl fn_8005BDDC
    mr 3, 30
    bl OSRestoreInterrupts
    bl fn_80092AF0
    li 3, 0x0
    bl fn_8005C094
    li 3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    bl fn_8004C228
    lis 3, lbl_8051C1A0@ha
    addi 31, 3, lbl_8051C1A0@l
    .4byte 0x48000008 # b .L_802B1994
L_802B1990:
    bl fn_8004C228
L_802B1994:
    lwz 0, 0x1fcc(31)
    cmpwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_802B1990
    bl LCDisable
    lis 3, lbl_80529DEC@ha
    li 4, 0xa5
    addi 5, 3, lbl_80529DEC@l
    li 0, 0x2
    stb 4, 0x21b(5)
    li 6, 0x0
    mtctr 0
L_802B19C0:
    add 4, 5, 6
    subis 3, 6, 0x7f90
    lbz 0, 0x216(4)
    addi 6, 6, 0x8
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    add 4, 5, 6
    stb 0, 0x7(3)
    subis 3, 6, 0x7f90
    addi 6, 6, 0x8
    lbz 0, 0x216(4)
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    stb 0, 0x7(3)
    .4byte 0x4200FF68 # bdnz .L_802B19C0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl OSResetSystem
L_802B1A6C:
    bl fn_8004C228
    .4byte 0x4BFFFFFC # b .L_802B1A6C
L_802B1A74:
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    lbz 0, 0x78(3)
    cmplwi 0, 0x4
    .4byte 0x4080000C # bge .L_802B1A8C
    li 0, 0x1
    stb 0, 0x224(5)
L_802B1A8C:
    li 0, 0x1
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    stb 0, 0x21f(30)
    stb 0, 0x4(3)
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    lbz 0, 0x79(3)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_802B1B1C
    li 29, 0x0
    li 28, 0x0
    li 27, 0x0
    .4byte 0x3BCD9114 # li r30, lbl_8053ACD4@sda21
L_802B1ABC:
    mr 3, 27
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802B1AF0
    lbz 0, 0x0(30)
    addi 29, 29, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_802B1AF0
    addi 28, 28, 0x1
L_802B1AF0:
    addi 27, 27, 0x1
    addi 30, 30, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFC0 # blt .L_802B1ABC
    cmpw 29, 28
    .4byte 0x40820018 # bne .L_802B1B1C
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x220(3)
    stb 0, 0x5(31)
L_802B1B1C:
    lis 3, lbl_80529DEC@ha
    li 0, 0x2
    addi 5, 3, lbl_80529DEC@l
    li 12, 0x0
    mtctr 0
L_802B1B30:
    add 4, 5, 12
    subis 3, 12, 0x7f90
    lbz 0, 0x216(4)
    addi 12, 12, 0x8
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    add 4, 5, 12
    stb 0, 0x7(3)
    subis 3, 12, 0x7f90
    addi 12, 12, 0x8
    lbz 0, 0x216(4)
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    stb 0, 0x7(3)
    .4byte 0x4200FF68 # bdnz .L_802B1B30
L_802B1BCC:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B1BE0:
    stwu 1, -0x20(1)
    mflr 0
    li 3, 0x0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 29, 4
    mr 30, 5
    mr 31, 6
    bl __PADDisableRecalibration
    .4byte 0x806D8DD8 # lwz r3, lbl_8053A998@sda21(r0)
    bl fn_8009304C
    bl fn_8008D8E4
    bl fn_8004C228
    bl fn_8004C228
    bl fn_8005A44C
    mr 28, 3
    bl OSDisableInterrupts
    mr 27, 3
    bl OSGetCurrentThread
    cmplw 28, 3
    .4byte 0x41820010 # beq .L_802B1C40
    mr 3, 28
    bl OSCancelThread
    bl fn_8005A400
L_802B1C40:
    bl fn_8005BA0C
    bl fn_8005BBD4
    bl fn_8005BDDC
    mr 3, 27
    bl OSRestoreInterrupts
    bl fn_80092AF0
    li 3, 0x0
    bl fn_8005C094
    li 3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    bl fn_8004C228
    lis 3, lbl_8051C1A0@ha
    addi 28, 3, lbl_8051C1A0@l
    .4byte 0x48000008 # b .L_802B1C80
L_802B1C7C:
    bl fn_8004C228
L_802B1C80:
    lwz 0, 0x1fcc(28)
    cmpwi 0, 0x0
    .4byte 0x4082FFF4 # bne .L_802B1C7C
    bl LCDisable
    lis 3, lbl_80529DEC@ha
    li 4, 0xa5
    addi 5, 3, lbl_80529DEC@l
    li 0, 0x2
    stb 4, 0x21b(5)
    li 12, 0x0
    mtctr 0
L_802B1CAC:
    add 4, 5, 12
    subis 3, 12, 0x7f90
    lbz 0, 0x216(4)
    addi 12, 12, 0x8
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    add 4, 5, 12
    stb 0, 0x7(3)
    subis 3, 12, 0x7f90
    addi 12, 12, 0x8
    lbz 0, 0x216(4)
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    stb 0, 0x7(3)
    .4byte 0x4200FF68 # bdnz .L_802B1CAC
    mr 3, 29
    mr 4, 30
    clrlwi 5, 31, 24
    bl OSResetSystem
L_802B1D58:
    bl fn_8004C228
    .4byte 0x4BFFFFFC # b .L_802B1D58

fn_802B1D60:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x222(3)
    cmplwi 3, 0x3
    blelr
    li 3, -0x1
    blr

fn_802B1D7C:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x221(3)
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_802B1D98:
    lis 4, lbl_80529DEC@ha
    li 0, 0x0
    addi 4, 4, lbl_80529DEC@l
    stb 0, 0x221(4)
    stb 0, 0x6(3)
    blr

fn_802B1DB0:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x220(3)
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_802B1DCC:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x21f(3)
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_802B1DE8:
    lis 4, lbl_80529DEC@ha
    li 6, 0x0
    addi 5, 4, lbl_80529DEC@l
    li 0, 0x2
    stb 6, 0x21f(5)
    li 12, 0x0
    stb 6, 0x220(5)
    stb 6, 0x4(3)
    stb 6, 0x5(3)
    mtctr 0
L_802B1E10:
    add 4, 5, 12
    subis 3, 12, 0x7f90
    lbz 0, 0x216(4)
    addi 12, 12, 0x8
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    add 4, 5, 12
    stb 0, 0x7(3)
    subis 3, 12, 0x7f90
    addi 12, 12, 0x8
    lbz 0, 0x216(4)
    stb 0, 0x0(3)
    lbz 0, 0x217(4)
    stb 0, 0x1(3)
    lbz 0, 0x218(4)
    stb 0, 0x2(3)
    lbz 0, 0x219(4)
    stb 0, 0x3(3)
    lbz 0, 0x21a(4)
    stb 0, 0x4(3)
    lbz 0, 0x21b(4)
    stb 0, 0x5(3)
    lbz 0, 0x21c(4)
    stb 0, 0x6(3)
    lbz 0, 0x21d(4)
    stb 0, 0x7(3)
    .4byte 0x4200FF68 # bdnz .L_802B1E10
    blr

fn_802B1EB0:
    blr

fn_802B1EB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_802B1EE4
    lis 5, lbl_804A8578@ha
    extsh. 0, 4
    addi 0, 5, lbl_804A8578@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_802B1EE4
    bl dtor_80084580
L_802B1EE4:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B1EFC:
    lis 5, lbl_804A8578@ha
    li 4, 0x0
    addi 5, 5, lbl_804A8578@l
    li 0, 0xff
    stw 5, 0x0(3)
    .4byte 0x906D90E8 # stw r3, lbl_8053ACA8@sda21(r0)
    stb 4, 0x4(3)
    stb 4, 0x5(3)
    stb 4, 0x6(3)
    stb 0, 0x7(3)
    blr

fn_802B1F28:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1C68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1C68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B1F78
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
L_802B1F78:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B1FB0
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
L_802B1FB0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B1FE8
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
L_802B1FE8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B2020
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
L_802B2020:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B2058
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
L_802B2058:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B2090
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
L_802B2090:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B20C8
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
L_802B20C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B2100
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
L_802B2100:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B2138
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
L_802B2138:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B214C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802B2190
    lis 5, lbl_804A8588@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8588@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B2190
    mr 3, 30
    bl dtor_80084580
L_802B2190:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B21AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F15BC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802B21D4
    li 0, 0x0
    stb 0, 0x27c(31)
L_802B21D4:
    lwz 0, 0x14(1)
    clrlwi 3, 3, 24
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B21EC:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    mr 30, 3
    li 0, 0x0
    .4byte 0xC3C2DA38 # lfs f30, lbl_805409D8@sda21(r0)
    stfs 0, 0x70(1)
    addi 4, 1, 0x68
    li 5, 0x0
    stfs 0, 0x6c(1)
    stfs 0, 0x68(1)
    stfs 0, 0x64(1)
    stfs 0, 0x60(1)
    stfs 0, 0x5c(1)
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(3)
    psq_l 3, 0x3c(30), 0, 0
    lfs 2, 0x44(3)
    psq_l 5, 0x270(30), 0, 0
    lfs 4, 0x278(3)
    psq_st 1, 0x50(1), 0, 0
    stb 0, 0x27c(3)
    psq_l 6, 0xc(30), 0, 0
    psq_l 1, 0x3c(30), 0, 0
    stfs 0, 0x58(1)
    ps_add 0, 6, 1
    psq_st 3, 0x44(1), 0, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    stfs 2, 0x4c(1)
    ps_add 0, 1, 0
    psq_st 5, 0x38(1), 0, 0
    stfs 4, 0x40(1)
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F2618
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    mr 31, 3
    lfs 0, 0x270(30)
    fcmpu cr0, 1, 0
    .4byte 0x4182020C # beq .L_802B24B4
    li 0, 0x1
    mr 3, 30
    stb 0, 0x27c(30)
    addi 4, 1, 0x5c
    li 5, 0x0
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x270(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x278(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F2618
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_802B235C
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    lfs 0, 0x6c(1)
    fcmpu cr0, 1, 0
    .4byte 0x41820060 # beq .L_802B235C
    lfs 0, 0x270(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810018 # ble .L_802B2320
    lfs 0, 0x40(30)
    fcmpo cr0, 0, 1
    .4byte 0x4181001C # bgt .L_802B2330
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
    .4byte 0x48000014 # b .L_802B2330
L_802B2320:
    lfs 0, 0x40(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802B2330
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
L_802B2330:
    lfs 1, 0x40(30)
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    fneg 1, 1
    fmuls 1, 1, 30
    stfs 1, 0x3c(30)
    lfs 1, 0x270(30)
    fmuls 1, 1, 30
    stfs 1, 0x274(30)
    stfs 0, 0x40(30)
    stfs 0, 0x270(30)
    .4byte 0x4800036C # b .L_802B26C4
L_802B235C:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802B2374
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    lfs 0, 0x5c(1)
    fcmpu cr0, 1, 0
    .4byte 0x40820354 # bne .L_802B26C4
L_802B2374:
    lfs 0, 0x270(30)
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810018 # ble .L_802B2398
    lfs 0, 0x40(30)
    fcmpo cr0, 0, 1
    .4byte 0x4081001C # ble .L_802B23A8
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
    .4byte 0x48000014 # b .L_802B23A8
L_802B2398:
    lfs 0, 0x40(30)
    fcmpo cr0, 0, 1
    .4byte 0x41810008 # bgt .L_802B23A8
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
L_802B23A8:
    lfs 1, 0x40(30)
    mr 3, 30
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    li 4, 0x0
    fneg 1, 1
    .4byte 0xC3E2DA44 # lfs f31, lbl_805409E4@sda21(r0)
    li 5, 0x0
    fmuls 1, 1, 30
    stfs 1, 0x3c(30)
    lfs 1, 0x270(30)
    fmuls 1, 1, 30
    stfs 1, 0x274(30)
    stfs 0, 0x40(30)
    stfs 0, 0x270(30)
    psq_l 2, 0x3c(30), 0, 0
    lfs 0, 0x44(30)
    ps_muls0 4, 2, 31
    psq_l 3, 0x270(30), 0, 0
    stfs 0, 0x28(1)
    psq_l 1, 0xc(30), 0, 0
    ps_add 6, 4, 3
    psq_l 3, 0x28(1), 1, 0
    lfs 0, 0x14(30)
    ps_muls0 3, 3, 31
    psq_l 5, 0x278(30), 1, 0
    ps_add 7, 1, 6
    psq_st 2, 0x20(1), 0, 0
    ps_add 2, 3, 5
    psq_st 7, 0xc(30), 0, 0
    psq_l 5, 0x14(30), 1, 0
    psq_st 4, 0x20(1), 0, 0
    ps_add 4, 5, 2
    psq_st 3, 0x28(1), 1, 0
    psq_st 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 6, 0x20(1), 0, 0
    psq_st 2, 0x28(1), 1, 0
    psq_st 4, 0x14(30), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_802B24A0
    psq_l 1, 0x50(1), 0, 0
    lfs 0, 0x58(1)
    psq_st 1, 0xc(30), 0, 0
    psq_l 1, 0x44(1), 0, 0
    stfs 0, 0x14(30)
    lfs 0, 0x4c(1)
    psq_st 1, 0x3c(30), 0, 0
    psq_l 1, 0x38(1), 0, 0
    stfs 0, 0x44(30)
    lfs 0, 0x40(1)
    psq_st 1, 0x270(30), 0, 0
    stfs 0, 0x278(30)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    .4byte 0x48000228 # b .L_802B26C4
L_802B24A0:
    psq_l 1, 0x2c(1), 0, 0
    lfs 0, 0x34(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x48000214 # b .L_802B26C4
L_802B24B4:
    lfs 0, 0x274(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820208 # beq .L_802B26C4
    li 0, 0x1
    mr 3, 30
    stb 0, 0x27c(30)
    addi 4, 1, 0x5c
    li 5, 0x0
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x270(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x278(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F2618
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_802B2570
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    lfs 0, 0x68(1)
    fcmpu cr0, 1, 0
    .4byte 0x41820060 # beq .L_802B2570
    lfs 0, 0x274(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810018 # ble .L_802B2534
    lfs 0, 0x3c(30)
    fcmpo cr0, 0, 1
    .4byte 0x4181001C # bgt .L_802B2544
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
    .4byte 0x48000014 # b .L_802B2544
L_802B2534:
    lfs 0, 0x3c(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802B2544
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
L_802B2544:
    lfs 1, 0x3c(30)
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    fneg 1, 1
    fmuls 1, 1, 30
    stfs 1, 0x40(30)
    lfs 1, 0x274(30)
    fmuls 1, 1, 30
    stfs 1, 0x270(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x274(30)
    .4byte 0x48000158 # b .L_802B26C4
L_802B2570:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802B2588
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    lfs 0, 0x60(1)
    fcmpu cr0, 1, 0
    .4byte 0x40820140 # bne .L_802B26C4
L_802B2588:
    lfs 0, 0x274(30)
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810018 # ble .L_802B25AC
    lfs 0, 0x3c(30)
    fcmpo cr0, 0, 1
    .4byte 0x4081001C # ble .L_802B25BC
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
    .4byte 0x48000014 # b .L_802B25BC
L_802B25AC:
    lfs 0, 0x3c(30)
    fcmpo cr0, 0, 1
    .4byte 0x41810008 # bgt .L_802B25BC
    .4byte 0xC3C2DA40 # lfs f30, lbl_805409E0@sda21(r0)
L_802B25BC:
    lfs 1, 0x3c(30)
    mr 3, 30
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    li 4, 0x0
    fneg 1, 1
    .4byte 0xC3E2DA44 # lfs f31, lbl_805409E4@sda21(r0)
    li 5, 0x0
    fmuls 1, 1, 30
    stfs 1, 0x40(30)
    lfs 1, 0x274(30)
    fmuls 1, 1, 30
    stfs 1, 0x270(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x274(30)
    psq_l 2, 0x3c(30), 0, 0
    lfs 0, 0x44(30)
    ps_muls0 4, 2, 31
    psq_l 3, 0x270(30), 0, 0
    stfs 0, 0x10(1)
    psq_l 1, 0xc(30), 0, 0
    ps_add 6, 4, 3
    psq_l 3, 0x10(1), 1, 0
    lfs 0, 0x14(30)
    ps_muls0 3, 3, 31
    psq_l 5, 0x278(30), 1, 0
    ps_add 7, 1, 6
    psq_st 2, 0x8(1), 0, 0
    ps_add 2, 3, 5
    psq_st 7, 0xc(30), 0, 0
    psq_l 5, 0x14(30), 1, 0
    psq_st 4, 0x8(1), 0, 0
    ps_add 4, 5, 2
    psq_st 3, 0x10(1), 1, 0
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 6, 0x8(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    psq_st 4, 0x14(30), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_802B26B4
    psq_l 1, 0x50(1), 0, 0
    lfs 0, 0x58(1)
    psq_st 1, 0xc(30), 0, 0
    psq_l 1, 0x44(1), 0, 0
    stfs 0, 0x14(30)
    lfs 0, 0x4c(1)
    psq_st 1, 0x3c(30), 0, 0
    psq_l 1, 0x38(1), 0, 0
    stfs 0, 0x44(30)
    lfs 0, 0x40(1)
    psq_st 1, 0x270(30), 0, 0
    stfs 0, 0x278(30)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    .4byte 0x48000014 # b .L_802B26C4
L_802B26B4:
    psq_l 1, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
L_802B26C4:
    lbz 0, 0x27c(30)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_802B2700
    psq_l 1, 0x50(1), 0, 0
    lfs 0, 0x58(1)
    psq_st 1, 0xc(30), 0, 0
    psq_l 1, 0x44(1), 0, 0
    stfs 0, 0x14(30)
    lfs 0, 0x4c(1)
    psq_st 1, 0x3c(30), 0, 0
    psq_l 1, 0x38(1), 0, 0
    stfs 0, 0x44(30)
    lfs 0, 0x40(1)
    psq_st 1, 0x270(30), 0, 0
    stfs 0, 0x278(30)
L_802B2700:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 0, 0xa4(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_802B2728:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    lwz 0, 0x25c(3)
    cmpwi 0, 0x0
    .4byte 0x4182018C # beq .L_802B28D0
    li 0, -0x1
    addi 9, 1, 0x18
    stw 0, 0x28(1)
    li 10, 0x0
    stw 0, 0x2c(1)
    .4byte 0x48000064 # b .L_802B27C0
L_802B2760:
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
L_802B27C0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802B2760
    li 10, 0x0
    .4byte 0xC022DA38 # lfs f1, lbl_805409D8@sda21(r0)
    stb 10, 0x35(1)
    li 9, 0x1
    li 11, -0x1
    lwz 5, 0x258(31)
    li 8, 0x3
    li 0, 0x2
    lis 3, lbl_8046CA80@ha
    fmr 2, 1
    addi 4, 3, lbl_8046CA80@l
    stw 11, 0x28(1)
    mr 3, 31
    addi 5, 5, 0x78
    stw 10, 0x2c(1)
    li 6, 0x0
    li 7, 0x1
    stw 10, 0x30(1)
    stb 10, 0x34(1)
    stb 10, 0x36(1)
    stb 9, 0x37(1)
    stb 9, 0x38(1)
    stb 10, 0x39(1)
    stb 10, 0x3a(1)
    stb 10, 0x3b(1)
    stb 10, 0x3c(1)
    stb 10, 0x3d(1)
    stb 9, 0x3e(1)
    stw 8, 0x40(1)
    stb 9, 0x44(1)
    stb 10, 0x45(1)
    stb 10, 0x46(1)
    stw 11, 0x48(1)
    stw 10, 0x4c(1)
    stw 0, 0x50(1)
    stb 10, 0x35(1)
    bl fn_801F06F0
    li 7, 0x0
    li 0, 0x80
    stb 7, 0x14(1)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    addi 6, 1, 0x10
    stb 7, 0x15(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0x16(1)
    .4byte 0xC022DA48 # lfs f1, lbl_805409E8@sda21(r0)
    stb 0, 0x17(1)
    lwz 0, 0x14(1)
    stw 0, 0x10(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x258(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x78
    bl fn_803075AC
L_802B28D0:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802B28E4:
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
    mr 31, 3
    lwz 3, 0x250(3)
    subi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_802B29BC
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x40820064 # bne .L_802B2994
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802B2948
    cmpwi 3, 0x3
    .4byte 0x40820010 # bne .L_802B2954
L_802B2948:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_802B2970
L_802B2954:
    cmpwi 3, 0x1
    .4byte 0x4182000C # beq .L_802B2964
    cmpwi 3, 0x2
    .4byte 0x40820034 # bne .L_802B2994
L_802B2964:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_802B2994
L_802B2970:
    lwz 3, 0x258(31)
    subi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40800030 # bge .L_802B29B4
    li 0, 0x4
    stw 0, 0x258(31)
    .4byte 0x48000024 # b .L_802B29B4
L_802B2994:
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x5
    .4byte 0x4180000C # blt .L_802B29B4
    li 0, 0x0
    stw 0, 0x258(31)
L_802B29B4:
    li 0, 0x4
    stw 0, 0x250(31)
L_802B29BC:
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x41820170 # beq .L_802B2B34
    .4byte 0x40800010 # bge .L_802B29D8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802B29E4
    .4byte 0x48000544 # b .L_802B2F18
L_802B29D8:
    cmpwi 0, 0x3
    .4byte 0x4080053C # bge .L_802B2F18
    .4byte 0x48000298 # b .L_802B2C78
L_802B29E4:
    lwz 0, 0x248(31)
    lis 3, lbl_8052EBC0@ha
    addi 5, 3, lbl_8052EBC0@l
    .4byte 0x3882DA30 # li r4, lbl_805409D0@sda21
    slwi 0, 0, 2
    lwz 6, 0x244(31)
    lwzx 4, 4, 0
    li 0, 0x0
    .4byte 0xC042DA4C # lfs f2, lbl_805409EC@sda21(r0)
    mr 3, 31
    add 4, 6, 4
    stw 4, 0x244(31)
    lwz 4, 0x244(31)
    lfs 0, 0x234(31)
    rlwinm 4, 4, 30, 18, 28
    lfsx 1, 5, 4
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 4, 0x244(31)
    lfs 0, 0x238(31)
    rlwinm 4, 4, 30, 18, 28
    add 4, 5, 4
    lfs 1, 0x4(4)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    stw 0, 0x25c(31)
    lwz 12, 0x0(31)
    lwz 12, 0x38(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x6
    .4byte 0x41800010 # blt .L_802B2A70
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000058 # b .L_802B2AC4
L_802B2A70:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x38(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x3
    .4byte 0x4180000C # blt .L_802B2A94
    li 0, 0x1
    stw 0, 0x25c(31)
L_802B2A94:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x38(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x3
    .4byte 0x40820018 # bne .L_802B2AC4
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 28
    .4byte 0x4082000C # bne .L_802B2AC4
    li 0, 0x0
    stw 0, 0x25c(31)
L_802B2AC4:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x4082005C # bne .L_802B2B28
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x41820440 # beq .L_802B2F18
    .4byte 0xC022DA50 # lfs f1, lbl_805409F0@sda21(r0)
    mr 3, 31
    .4byte 0xC002DA54 # lfs f0, lbl_805409F4@sda21(r0)
    li 5, -0x1
    stfs 1, 0x60(31)
    li 6, 0x1
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 4, 0x114(31)
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x4182040C # beq .L_802B2F18
    lwz 3, 0x248(31)
    li 0, 0x28
    xori 3, 3, 0x1
    stw 3, 0x248(31)
    stw 0, 0x254(31)
    .4byte 0x480003F4 # b .L_802B2F18
L_802B2B28:
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    .4byte 0x480003E8 # b .L_802B2F18
L_802B2B34:
    lfs 1, 0x260(31)
    addi 3, 31, 0x3c
    .4byte 0xC042DA58 # lfs f2, lbl_805409F8@sda21(r0)
    lfs 3, 0x26c(31)
    bl fn_801F71A4
    lfs 1, 0x264(31)
    addi 3, 31, 0x40
    .4byte 0xC042DA58 # lfs f2, lbl_805409F8@sda21(r0)
    lfs 3, 0x26c(31)
    bl fn_801F71A4
    .4byte 0xC042DA5C # lfs f2, lbl_805409FC@sda21(r0)
    addi 3, 31, 0x26c
    .4byte 0xC022DA38 # lfs f1, lbl_805409D8@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    addi 4, 1, 0x8
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_802B2C08
    lfs 1, 0x8(1)
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820024 # beq .L_802B2BD8
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802B2BD0
    .4byte 0xC002DA38 # lfs f0, lbl_805409D8@sda21(r0)
    stfs 0, 0x260(31)
    .4byte 0x4800000C # b .L_802B2BD8
L_802B2BD0:
    .4byte 0xC002DA40 # lfs f0, lbl_805409E0@sda21(r0)
    stfs 0, 0x260(31)
L_802B2BD8:
    lfs 1, 0xc(1)
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820024 # beq .L_802B2C08
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802B2C00
    .4byte 0xC002DA38 # lfs f0, lbl_805409D8@sda21(r0)
    stfs 0, 0x264(31)
    .4byte 0x4800000C # b .L_802B2C08
L_802B2C00:
    .4byte 0xC002DA40 # lfs f0, lbl_805409E0@sda21(r0)
    stfs 0, 0x264(31)
L_802B2C08:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x418202F8 # beq .L_802B2F18
    lfs 1, 0x260(31)
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802B2C44
    .4byte 0xC002DA40 # lfs f0, lbl_805409E0@sda21(r0)
    stfs 0, 0x260(31)
    .4byte 0x4800000C # b .L_802B2C4C
L_802B2C44:
    .4byte 0xC002DA38 # lfs f0, lbl_805409D8@sda21(r0)
    stfs 0, 0x260(31)
L_802B2C4C:
    lfs 1, 0x264(31)
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802B2C6C
    .4byte 0xC002DA40 # lfs f0, lbl_805409E0@sda21(r0)
    stfs 0, 0x264(31)
    .4byte 0x480002B0 # b .L_802B2F18
L_802B2C6C:
    .4byte 0xC002DA38 # lfs f0, lbl_805409D8@sda21(r0)
    stfs 0, 0x264(31)
    .4byte 0x480002A4 # b .L_802B2F18
L_802B2C78:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082010C # bne .L_802B2DA0
    .4byte 0xC042DA3C # lfs f2, lbl_805409DC@sda21(r0)
    lis 3, lbl_80539D44@ha
    .4byte 0xC022DA60 # lfs f1, lbl_80540A00@sda21(r0)
    stfs 2, 0x268(31)
    stfs 2, 0x264(31)
    stfs 2, 0x260(31)
    psq_l 3, 0x260(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 3, 0
    psq_st 0, 0x260(31), 0, 0
    psq_l 3, 0x268(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 3, 0
    psq_st 0, 0x268(31), 1, 0
    psq_l 3, 0x270(31), 0, 0
    lfs 29, 0x278(31)
    ps_mul 3, 3, 3
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    ps_madd 4, 29, 29, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_802B2D48
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802B2D0C
    fmr 30, 4
    .4byte 0x48000028 # b .L_802B2D30
L_802B2D0C:
    frsqrte 3, 4
    .4byte 0xC042DA64 # lfs f2, lbl_80540A04@sda21(r0)
    .4byte 0xC002DA44 # lfs f0, lbl_805409E4@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_802B2D30:
    psq_l 1, 0x270(31), 0, 0
    psq_l 0, 0x278(31), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x270(31), 0, 0
    psq_st 0, 0x278(31), 1, 0
L_802B2D48:
    .4byte 0xC3E2DA40 # lfs f31, lbl_805409E0@sda21(r0)
    li 0, 0x1
    psq_l 1, 0x270(31), 0, 0
    psq_l 0, 0x278(31), 1, 0
    ps_muls0 3, 1, 31
    .4byte 0xC022DA3C # lfs f1, lbl_805409DC@sda21(r0)
    ps_muls0 2, 0, 31
    .4byte 0xC002DA68 # lfs f0, lbl_80540A08@sda21(r0)
    psq_st 3, 0x270(31), 0, 0
    psq_st 2, 0x278(31), 1, 0
    stfs 1, 0x278(31)
    psq_l 2, 0x260(31), 0, 0
    psq_l 1, 0x270(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x260(31), 0, 0
    psq_l 2, 0x268(31), 1, 0
    psq_l 1, 0x278(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x268(31), 1, 0
    stfs 0, 0x26c(31)
    stw 0, 0x240(31)
    .4byte 0x4800017C # b .L_802B2F18
L_802B2DA0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820154 # beq .L_802B2EFC
    .4byte 0x4080016C # bge .L_802B2F18
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802B2DBC
    .4byte 0x48000160 # b .L_802B2F18
L_802B2DBC:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    addi 4, 31, 0x270
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
    .4byte 0x40820124 # bne .L_802B2F18
    li 0, 0x1
    lis 3, lbl_80539D44@ha
    stw 0, 0x230(31)
    .4byte 0xC022DA60 # lfs f1, lbl_80540A00@sda21(r0)
    psq_l 2, 0x270(31), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 2, 2
    lfs 29, 0x278(31)
    fmuls 0, 1, 0
    ps_madd 4, 29, 29, 2
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_802B2E84
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802B2E48
    fmr 30, 4
    .4byte 0x48000028 # b .L_802B2E6C
L_802B2E48:
    frsqrte 3, 4
    .4byte 0xC042DA64 # lfs f2, lbl_80540A04@sda21(r0)
    .4byte 0xC002DA44 # lfs f0, lbl_805409E4@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_802B2E6C:
    psq_l 1, 0x270(31), 0, 0
    psq_l 0, 0x278(31), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x270(31), 0, 0
    psq_st 0, 0x278(31), 1, 0
L_802B2E84:
    .4byte 0xC3E2DA40 # lfs f31, lbl_805409E0@sda21(r0)
    psq_l 0, 0x270(31), 0, 0
    psq_l 1, 0x278(31), 1, 0
    ps_muls0 2, 0, 31
    .4byte 0xC002DA3C # lfs f0, lbl_805409DC@sda21(r0)
    ps_muls0 1, 1, 31
    .4byte 0xC062DA38 # lfs f3, lbl_805409D8@sda21(r0)
    psq_st 2, 0x270(31), 0, 0
    psq_st 1, 0x278(31), 1, 0
    stfs 0, 0x278(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_802B2EC8
    ps_mr 3, 31
L_802B2EC8:
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_802B2EE0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802B2EEC
    .4byte 0x4800003C # b .L_802B2F18
L_802B2EE0:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_802B2F18
    .4byte 0x4800000C # b .L_802B2EF4
L_802B2EEC:
    stfs 3, 0x40(31)
    .4byte 0x48000028 # b .L_802B2F18
L_802B2EF4:
    stfs 3, 0x3c(31)
    .4byte 0x48000020 # b .L_802B2F18
L_802B2EFC:
    mr 3, 31
    bl fn_802B21EC
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_802B2F18:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    lwz 0, 0x54(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802B2F44:
    stwu 1, -0x40(1)
    li 0, 0x4
    .4byte 0xC042DA6C # lfs f2, lbl_80540A0C@sda21(r0)
    li 4, 0x0
    .4byte 0xC022DA70 # lfs f1, lbl_80540A10@sda21(r0)
    stfs 2, 0x60(3)
    .4byte 0xC002DA74 # lfs f0, lbl_80540A14@sda21(r0)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 2, 0x80(3)
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    lfs 1, 0x10(3)
    fadds 0, 1, 0
    stfs 0, 0x10(3)
    lfs 0, 0xc(3)
    stfs 0, 0x234(3)
    lfs 0, 0x10(3)
    stfs 0, 0x238(3)
    lfs 0, 0x14(3)
    stfs 0, 0x23c(3)
    stw 0, 0x250(3)
    stw 4, 0x254(3)
    stw 4, 0x258(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    stw 0, 0x248(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 15
    stw 0, 0x24c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 20
    stw 0, 0x240(3)
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802B2FE4
    stw 4, 0x25c(3)
    .4byte 0x4800000C # b .L_802B2FEC
L_802B2FE4:
    li 0, 0x1
    stw 0, 0x25c(3)
L_802B2FEC:
    .4byte 0xC062DA3C # lfs f3, lbl_805409DC@sda21(r0)
    li 0, 0x1
    stfs 3, 0x278(3)
    stfs 3, 0x274(3)
    stfs 3, 0x270(3)
    stb 0, 0x27c(3)
    lwz 0, 0x240(3)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_802B3038
    lwz 0, 0x248(3)
    .4byte 0x3882DA28 # li r4, lbl_805409C8@sda21
    .4byte 0xC022DA38 # lfs f1, lbl_805409D8@sda21(r0)
    slwi 0, 0, 2
    .4byte 0xC002DA68 # lfs f0, lbl_80540A08@sda21(r0)
    lfsx 2, 4, 0
    stfs 2, 0x260(3)
    stfs 1, 0x264(3)
    stfs 0, 0x26c(3)
    .4byte 0x480000E4 # b .L_802B3118
L_802B3038:
    cmpwi 0, 0x2
    .4byte 0x408200DC # bne .L_802B3118
    .4byte 0xC002DA6C # lfs f0, lbl_80540A0C@sda21(r0)
    .4byte 0xC042DA70 # lfs f2, lbl_80540A10@sda21(r0)
    stfs 0, 0x60(3)
    .4byte 0xC022DA50 # lfs f1, lbl_805409F0@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002DA54 # lfs f0, lbl_805409F4@sda21(r0)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_802B30DC
    .4byte 0x40800014 # bge .L_802B3090
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802B309C
    .4byte 0x40800034 # bge .L_802B30BC
    .4byte 0x4800008C # b .L_802B3118
L_802B3090:
    cmpwi 0, 0x4
    .4byte 0x40800084 # bge .L_802B3118
    .4byte 0x48000064 # b .L_802B30FC
L_802B309C:
    .4byte 0xC002DA38 # lfs f0, lbl_805409D8@sda21(r0)
    stfs 3, 0x30(1)
    stfs 0, 0x2c(1)
    psq_l 0, 0x2c(1), 0, 0
    stfs 3, 0x34(1)
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x48000060 # b .L_802B3118
L_802B30BC:
    .4byte 0xC002DA40 # lfs f0, lbl_805409E0@sda21(r0)
    stfs 3, 0x24(1)
    stfs 0, 0x20(1)
    psq_l 0, 0x20(1), 0, 0
    stfs 3, 0x28(1)
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x48000040 # b .L_802B3118
L_802B30DC:
    .4byte 0xC002DA38 # lfs f0, lbl_805409D8@sda21(r0)
    stfs 3, 0x14(1)
    stfs 0, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    stfs 3, 0x1c(1)
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    .4byte 0x48000020 # b .L_802B3118
L_802B30FC:
    .4byte 0xC002DA40 # lfs f0, lbl_805409E0@sda21(r0)
    stfs 3, 0x8(1)
    stfs 0, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    stfs 3, 0x10(1)
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
L_802B3118:
    li 0, 0x0
    stw 0, 0x230(3)
    addi 1, 1, 0x40
    blr

fn_802B3128:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1D68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1D68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3178
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
L_802B3178:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B31B0
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
L_802B31B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B31E8
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
L_802B31E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3220
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
L_802B3220:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3258
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
L_802B3258:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3290
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
L_802B3290:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B32C8
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
L_802B32C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3300
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
L_802B3300:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3338
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
L_802B3338:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B334C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802B3390
    lis 5, lbl_804A85E0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A85E0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B3390
    mr 3, 30
    bl dtor_80084580
L_802B3390:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B33AC:
    blr

fn_802B33B0:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_8046CA98@ha
    lis 4, lbl_8046CAA8@ha
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    addi 31, 5, lbl_8046CA98@l
    mr 26, 3
    addi 30, 4, lbl_8046CAA8@l
    li 28, 0x0
    li 27, 0x0
L_802B33DC:
    lwz 3, 0x90(26)
    lwz 0, 0x0(31)
    and. 29, 3, 0
    .4byte 0x41820020 # beq .L_802B3408
    bl GetRoomConfigRecord
    lwz 0, 0x0(30)
    srw 4, 29, 0
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802B3408
    addi 28, 28, 0x1
L_802B3408:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FFC4 # blt .L_802B33DC
    cmpwi 28, 0x0
    .4byte 0x41820018 # beq .L_802B3438
    lis 4, 0x3
    mr 3, 26
    addi 4, 4, 0x24
    li 5, 0x0
    bl fn_801F0E34
L_802B3438:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B344C:
    blr

fn_802B3450:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1E68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1E68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B34A0
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
L_802B34A0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B34D8
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
L_802B34D8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3510
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
L_802B3510:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3548
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
L_802B3548:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3580
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
L_802B3580:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B35B8
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
L_802B35B8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B35F0
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
L_802B35F0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3628
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
L_802B3628:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B3660
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
L_802B3660:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B3674:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 31, 0x60(3)
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_802B3710
    cmplwi 31, 0x0
    .4byte 0x41820074 # beq .L_802B3710
    subis 3, 31, 0x100
    cmplwi 3, 0x21
    .4byte 0x41820068 # beq .L_802B3710
    cmplwi 3, 0x9
    .4byte 0x41820060 # beq .L_802B3710
    subi 0, 3, 0x18
    cmplwi 0, 0x1
    .4byte 0x40810054 # ble .L_802B3710
    cmplwi 3, 0x1
    .4byte 0x4182004C # beq .L_802B3710
    cmplwi 3, 0xd
    .4byte 0x41820044 # beq .L_802B3710
    cmplwi 3, 0x7
    .4byte 0x4182003C # beq .L_802B3710
    cmplwi 3, 0x2e
    .4byte 0x41820034 # beq .L_802B3710
    cmplwi 3, 0x29
    .4byte 0x4182002C # beq .L_802B3710
    cmplwi 3, 0x24
    .4byte 0x41820024 # beq .L_802B3710
    cmplwi 3, 0xe
    .4byte 0x4182001C # beq .L_802B3710
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0xe
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_802B3710:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B3724:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x310(3)
    addi 0, 3, 0x4
    stw 0, 0x310(31)
    lwz 3, 0x2e0(31)
    lwz 0, 0x2f0(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802B3764
    lwz 0, 0x318(31)
    add 0, 3, 0
    stw 0, 0x2e0(31)
    .4byte 0x48000008 # b .L_802B3768
L_802B3764:
    stw 0, 0x2e0(31)
L_802B3768:
    lwz 3, 0x2e4(31)
    lwz 0, 0x2f4(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802B3788
    lwz 0, 0x31c(31)
    add 0, 3, 0
    stw 0, 0x2e4(31)
    .4byte 0x48000008 # b .L_802B378C
L_802B3788:
    stw 0, 0x2e4(31)
L_802B378C:
    lwz 3, 0x2e8(31)
    lwz 0, 0x2f8(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802B37AC
    lwz 0, 0x320(31)
    add 0, 3, 0
    stw 0, 0x2e8(31)
    .4byte 0x48000008 # b .L_802B37B0
L_802B37AC:
    stw 0, 0x2e8(31)
L_802B37B0:
    lwz 0, 0x310(31)
    lwz 3, 0x314(31)
    cmpw 0, 3
    .4byte 0x41800028 # blt .L_802B37E4
    stw 3, 0x310(31)
    li 0, 0x9
    lwz 3, 0x2f0(31)
    stw 3, 0x2e0(31)
    lwz 3, 0x2f4(31)
    stw 3, 0x2e4(31)
    lwz 3, 0x2f8(31)
    stw 3, 0x2e8(31)
    stw 0, 0x240(31)
L_802B37E4:
    lwz 0, 0x310(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(31)
    addi 3, 1, 0x8
    lwz 0, 0x2e4(31)
    lwz 5, 0x2e8(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x8(1)
    bl fn_8013A884
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B3838:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x310(3)
    subi 0, 3, 0x4
    stw 0, 0x310(31)
    lwz 3, 0x2e0(31)
    lwz 0, 0x2f0(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802B3878
    lwz 0, 0x318(31)
    add 0, 3, 0
    stw 0, 0x2e0(31)
    .4byte 0x48000008 # b .L_802B387C
L_802B3878:
    stw 0, 0x2e0(31)
L_802B387C:
    lwz 3, 0x2e4(31)
    lwz 0, 0x2f4(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802B389C
    lwz 0, 0x31c(31)
    add 0, 3, 0
    stw 0, 0x2e4(31)
    .4byte 0x48000008 # b .L_802B38A0
L_802B389C:
    stw 0, 0x2e4(31)
L_802B38A0:
    lwz 3, 0x2e8(31)
    lwz 0, 0x2f8(31)
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_802B38C0
    lwz 0, 0x320(31)
    add 0, 3, 0
    stw 0, 0x2e8(31)
    .4byte 0x48000008 # b .L_802B38C4
L_802B38C0:
    stw 0, 0x2e8(31)
L_802B38C4:
    lwz 0, 0x310(31)
    lwz 3, 0x314(31)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802B38F8
    stw 3, 0x310(31)
    li 0, 0x9
    lwz 3, 0x2f0(31)
    stw 3, 0x2e0(31)
    lwz 3, 0x2f4(31)
    stw 3, 0x2e4(31)
    lwz 3, 0x2f8(31)
    stw 3, 0x2e8(31)
    stw 0, 0x240(31)
L_802B38F8:
    lwz 0, 0x310(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(31)
    addi 3, 1, 0x8
    lwz 0, 0x2e4(31)
    lwz 5, 0x2e8(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x8(1)
    bl fn_8013A884
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B394C:
    cmpwi 9, 0x9
    stw 9, 0x240(3)
    .4byte 0x4082001C # bne .L_802B3970
    stw 4, 0x2e0(3)
    stw 5, 0x2e4(3)
    stw 6, 0x2e8(3)
    stw 7, 0x2ec(3)
    stw 8, 0x310(3)
    blr
L_802B3970:
    stw 4, 0x2f0(3)
    stw 5, 0x2f4(3)
    stw 6, 0x2f8(3)
    stw 7, 0x2ec(3)
    stw 8, 0x314(3)
    lwz 4, 0x2e0(3)
    lwz 0, 0x2f0(3)
    subf 0, 4, 0
    srawi 0, 0, 2
    addze 0, 0
    stw 0, 0x318(3)
    lwz 4, 0x2e4(3)
    lwz 0, 0x2f4(3)
    subf 0, 4, 0
    srawi 0, 0, 2
    addze 0, 0
    stw 0, 0x31c(3)
    lwz 4, 0x2e8(3)
    lwz 0, 0x2f8(3)
    subf 0, 4, 0
    srawi 0, 0, 2
    addze 0, 0
    stw 0, 0x320(3)
    lwz 4, 0x310(3)
    lwz 0, 0x314(3)
    cmpw 4, 0
    bgelr
    li 0, 0xc
    stw 0, 0x240(3)
    blr

fn_802B39E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stw 0, 0x290(3)
    lwz 0, 0x23c(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802B3A28
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x23c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x23c(31)
L_802B3A28:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B3A3C:
    li 0, 0x0
    stw 0, 0x2b8(3)
    blr

fn_802B3A48:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8016A3AC
    li 0, 0x0
    stb 0, 0x1ee(3)
    lwz 3, 0x234(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B3A78
    bl fn_801EE434
L_802B3A78:
    lwz 3, 0x238(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B3A88
    bl fn_801EE434
L_802B3A88:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B3A98
    bl fn_801EE434
L_802B3A98:
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B3AB4:
    blr

fn_802B3AB8:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stmw 26, 0x58(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 30, 3
    li 31, 0x0
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_802B3B68
    li 3, 0x0
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_802B3B38
    li 3, 0x1
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_802B3B38
    li 3, 0x2
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802B3B38
    li 3, 0x3
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_802B3B7C
L_802B3B38:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_802B3B50
    li 0, 0x1
    .4byte 0x48000014 # b .L_802B3B60
L_802B3B50:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_802B3B60:
    clrlwi. 0, 0, 24
    .4byte 0x40820018 # bne .L_802B3B7C
L_802B3B68:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x240(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802B3B80
L_802B3B7C:
    li 31, 0x1
L_802B3B80:
    lwz 0, 0x264(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802B3BA4
    lbz 3, 0x2d0(30)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802B3BBC
    subi 0, 3, 0x1
    stb 0, 0x2d0(30)
    .4byte 0x4800001C # b .L_802B3BBC
L_802B3BA4:
    lbz 3, 0x2d0(30)
    lbz 0, 0x2d1(30)
    cmplw 3, 0
    .4byte 0x4080000C # bge .L_802B3BBC
    addi 0, 3, 0x1
    stb 0, 0x2d0(30)
L_802B3BBC:
    lbz 29, 0x2d0(30)
    bl fn_8016A3AC
    stb 29, 0x1ec(3)
    lwz 0, 0x268(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802B3BEC
    lbz 3, 0x2d2(30)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802B3C04
    subi 0, 3, 0x1
    stb 0, 0x2d2(30)
    .4byte 0x4800001C # b .L_802B3C04
L_802B3BEC:
    lbz 3, 0x2d2(30)
    lwz 0, 0x26c(30)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802B3C04
    addi 0, 3, 0x1
    stb 0, 0x2d2(30)
L_802B3C04:
    lbz 29, 0x2d2(30)
    bl fn_8016A3AC
    stb 29, 0x1ed(3)
    lwz 0, 0x270(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3C28
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c7(3)
L_802B3C28:
    lwz 0, 0x274(30)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_802B3C80
    bl fn_8016A3AC
    li 0, 0xff
    stb 0, 0x1ee(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x41820028 # beq .L_802B3C74
    lis 3, 0x3
    addi 4, 1, 0x54
    addi 0, 3, 0x1f
    stw 0, 0x54(1)
    lwz 3, 0x230(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802B3C74:
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c4(3)
L_802B3C80:
    lwz 0, 0x278(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3C98
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c8(3)
L_802B3C98:
    lwz 0, 0x27c(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3CB0
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c9(3)
L_802B3CB0:
    lwz 0, 0x280(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802B3CD4
    lbz 3, 0x2d3(30)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802B3CEC
    subi 0, 3, 0x1
    stb 0, 0x2d3(30)
    .4byte 0x4800001C # b .L_802B3CEC
L_802B3CD4:
    lbz 3, 0x2d3(30)
    lwz 0, 0x284(30)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802B3CEC
    addi 0, 3, 0x1
    stb 0, 0x2d3(30)
L_802B3CEC:
    lbz 29, 0x2d3(30)
    bl fn_8016A3AC
    stb 29, 0x1f1(3)
    lwz 0, 0x28c(30)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_802B3D30
    lfs 1, 0x10(30)
    .4byte 0xC002DA78 # lfs f0, lbl_80540A18@sda21(r0)
    lfs 31, 0xc(30)
    fsubs 30, 1, 0
    lfs 29, 0x14(30)
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1cb(3)
    stfs 31, 0x1e0(3)
    stfs 30, 0x1e4(3)
    stfs 29, 0x1e8(3)
L_802B3D30:
    lwz 0, 0x298(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3D48
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1cc(3)
L_802B3D48:
    lwz 0, 0x29c(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3D60
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1ce(3)
L_802B3D60:
    lwz 0, 0x2a0(30)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802B3D7C
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1cf(3)
    stb 0, 0x1d0(3)
L_802B3D7C:
    lwz 0, 0x2a4(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3D94
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1cd(3)
L_802B3D94:
    lwz 0, 0x2a8(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3DAC
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c5(3)
L_802B3DAC:
    lwz 0, 0x2ac(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802B3DD0
    lbz 3, 0x2d4(30)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802B3DE8
    subi 0, 3, 0x1
    stb 0, 0x2d4(30)
    .4byte 0x4800001C # b .L_802B3DE8
L_802B3DD0:
    lbz 3, 0x2d4(30)
    lwz 0, 0x2b0(30)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802B3DE8
    addi 0, 3, 0x1
    stb 0, 0x2d4(30)
L_802B3DE8:
    lbz 29, 0x2d4(30)
    bl fn_8016A3AC
    stb 29, 0x1f0(3)
    lwz 0, 0x2b4(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B3E0C
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c6(3)
L_802B3E0C:
    lwz 0, 0x2b8(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802B3E30
    lbz 3, 0x2d5(30)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_802B3E48
    subi 0, 3, 0x1
    stb 0, 0x2d5(30)
    .4byte 0x4800001C # b .L_802B3E48
L_802B3E30:
    lbz 3, 0x2d5(30)
    lwz 0, 0x2bc(30)
    cmpw 3, 0
    .4byte 0x4080000C # bge .L_802B3E48
    addi 0, 3, 0x1
    stb 0, 0x2d5(30)
L_802B3E48:
    lbz 29, 0x2d5(30)
    bl fn_8016A3AC
    stb 29, 0x1ef(3)
    .4byte 0xC002DA7C # lfs f0, lbl_80540A1C@sda21(r0)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0x10(3)
    fneg 1, 1
    stfs 1, 0x254(30)
    lfs 1, 0x20(3)
    fneg 1, 1
    stfs 1, 0x258(30)
    stfs 0, 0x25c(30)
    lwz 0, 0x2d8(30)
    cmplwi 0, 0xf
    .4byte 0x41810A28 # bgt .L_802B48AC
    lis 3, jumptable_804A86D0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A86D0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x50
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x50(1)
    bl fn_8013A884
    .4byte 0x480009CC # b .L_802B48AC
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x41820050 # beq .L_802B3F3C
    .4byte 0x40800010 # bge .L_802B3F00
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802B3F0C
    .4byte 0x480009B0 # b .L_802B48AC
L_802B3F00:
    cmpwi 0, 0xc
    .4byte 0x41820020 # beq .L_802B3F24
    .4byte 0x480009A4 # b .L_802B48AC
L_802B3F0C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    .4byte 0x4800098C # b .L_802B48AC
L_802B3F24:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    .4byte 0x48000974 # b .L_802B48AC
L_802B3F3C:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x4c
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x4c(1)
    bl fn_8013A884
    .4byte 0x48000930 # b .L_802B48AC
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x4182004C # beq .L_802B3FD4
    .4byte 0x40800010 # bge .L_802B3F9C
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802B3FA8
    .4byte 0x48000914 # b .L_802B48AC
L_802B3F9C:
    cmpwi 0, 0xc
    .4byte 0x4182001C # beq .L_802B3FBC
    .4byte 0x48000908 # b .L_802B48AC
L_802B3FA8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 0, 0xc
    stw 0, 0x240(30)
    .4byte 0x480008F4 # b .L_802B48AC
L_802B3FBC:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    .4byte 0x480008DC # b .L_802B48AC
L_802B3FD4:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x48
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x48(1)
    bl fn_8013A884
    .4byte 0x48000898 # b .L_802B48AC
    lis 3, 0x3
    addi 4, 1, 0x44
    addi 0, 3, 0x1e
    stw 0, 0x44(1)
    lwz 3, 0x230(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x4182008C # beq .L_802B40D0
    .4byte 0x4080001C # bge .L_802B4064
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_802B4094
    .4byte 0x40800858 # bge .L_802B48AC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802B4070
    .4byte 0x4800084C # b .L_802B48AC
L_802B4064:
    cmpwi 0, 0xc
    .4byte 0x41820050 # beq .L_802B40B8
    .4byte 0x48000840 # b .L_802B48AC
L_802B4070:
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x1
    .4byte 0x40820830 # bne .L_802B48AC
    li 3, 0x14
    li 0, 0x1
    stw 3, 0x248(30)
    stw 0, 0x240(30)
    .4byte 0x4800081C # b .L_802B48AC
L_802B4094:
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x40820804 # bne .L_802B48AC
    li 0, 0xc
    stw 0, 0x240(30)
    .4byte 0x480007F8 # b .L_802B48AC
L_802B40B8:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    .4byte 0x480007E0 # b .L_802B48AC
L_802B40D0:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x40
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x40(1)
    bl fn_8013A884
    .4byte 0x4800079C # b .L_802B48AC
    lis 3, 0x3
    addi 4, 1, 0x3c
    addi 0, 3, 0x1e
    stw 0, 0x3c(1)
    lwz 3, 0x230(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(30)
    cmplwi 0, 0xc
    .4byte 0x41810274 # bgt .L_802B43B4
    lis 3, jumptable_804A869C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A869C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x4082023C # bne .L_802B43B4
    li 3, 0x0
    li 0, 0xc
    stw 3, 0x334(30)
    stw 3, 0x338(30)
    stw 0, 0x240(30)
    .4byte 0x48000224 # b .L_802B43B4
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x1
    .4byte 0x40820214 # bne .L_802B43B4
    li 3, 0x14
    li 0, 0x1
    stw 3, 0x248(30)
    stw 0, 0x240(30)
    .4byte 0x48000200 # b .L_802B43B4
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x408201E8 # bne .L_802B43B4
    mr 3, 30
    li 4, 0xff
    lwz 12, 0x0(30)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x240(30)
    .4byte 0x480001B0 # b .L_802B43B4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x40820190 # bne .L_802B43B4
    li 0, 0x2
    mr 3, 30
    stw 0, 0x240(30)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(30)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000168 # b .L_802B43B4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082014C # bne .L_802B43B4
    mr 3, 30
    li 4, 0xff
    lwz 12, 0x0(30)
    li 5, 0x80
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x6
    stw 0, 0x240(30)
    .4byte 0x48000114 # b .L_802B43B4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    li 0, 0x3
    lis 3, 0x100
    stw 0, 0x240(30)
    addi 4, 3, 0x4
    li 5, 0x0
    li 6, 0x0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    .4byte 0x480000DC # b .L_802B43B4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x408200BC # bne .L_802B43B4
    li 0, 0x4
    stw 0, 0x240(30)
    .4byte 0x480000B0 # b .L_802B43B4
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x0
    .4byte 0x408200A0 # bne .L_802B43B4
    li 0, 0x5
    stw 0, 0x240(30)
    .4byte 0x48000094 # b .L_802B43B4
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x1
    .4byte 0x40820084 # bne .L_802B43B4
    li 3, 0x1e
    li 0, 0x7
    stw 3, 0x248(30)
    stw 0, 0x240(30)
    .4byte 0x48000070 # b .L_802B43B4
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_802B43B4
    mr 3, 30
    li 4, 0xff
    lwz 12, 0x0(30)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x8
    mr 3, 30
    stw 0, 0x240(30)
    bl fn_801F34DC
    .4byte 0x48000018 # b .L_802B43B4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
L_802B43B4:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x38
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x38(1)
    bl fn_8013A884
    .4byte 0x480004B8 # b .L_802B48AC
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x41820050 # beq .L_802B4450
    .4byte 0x40800010 # bge .L_802B4414
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802B4420
    .4byte 0x4800049C # b .L_802B48AC
L_802B4414:
    cmpwi 0, 0xc
    .4byte 0x41820020 # beq .L_802B4438
    .4byte 0x48000490 # b .L_802B48AC
L_802B4420:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    .4byte 0x48000478 # b .L_802B48AC
L_802B4438:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    .4byte 0x48000460 # b .L_802B48AC
L_802B4450:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x34
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x34(1)
    bl fn_8013A884
    .4byte 0x4800041C # b .L_802B48AC
    lwz 0, 0x240(30)
    cmpwi 0, 0xb
    .4byte 0x41820020 # beq .L_802B44BC
    .4byte 0x40800010 # bge .L_802B44B0
    cmpwi 0, 0x0
    .4byte 0x418200A0 # beq .L_802B4548
    .4byte 0x48000400 # b .L_802B48AC
L_802B44B0:
    cmpwi 0, 0xd
    .4byte 0x408003F8 # bge .L_802B48AC
    .4byte 0x480000D0 # b .L_802B4588
L_802B44BC:
    li 27, 0x0
    bl SpatialRegistry_GetBase
    lwz 29, 0x1008(3)
    li 26, 0x0
    li 28, 0x0
    .4byte 0x4800005C # b .L_802B452C
L_802B44D4:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820040 # beq .L_802B4524
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x4250
    cmplwi 0, 0x4832
    .4byte 0x40820030 # bne .L_802B4524
    lwz 5, 0x90(4)
    li 27, 0x1
    srwi 0, 5, 27
    extrwi 4, 5, 5, 5
    stw 0, 0x324(30)
    extrwi 3, 5, 5, 10
    extrwi 0, 5, 5, 15
    stw 4, 0x328(30)
    stw 3, 0x32c(30)
    stw 0, 0x330(30)
    .4byte 0x48000014 # b .L_802B4534
L_802B4524:
    addi 28, 28, 0x4
    addi 26, 26, 0x1
L_802B452C:
    cmpw 26, 29
    .4byte 0x4180FFA4 # blt .L_802B44D4
L_802B4534:
    cmpwi 27, 0x0
    .4byte 0x41820374 # beq .L_802B48AC
    li 0, 0x0
    stw 0, 0x240(30)
    .4byte 0x48000368 # b .L_802B48AC
L_802B4548:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x40820348 # bne .L_802B48AC
    li 0, 0x64
    li 3, 0x0
    stw 0, 0x248(30)
    li 0, 0xc
    stw 3, 0x334(30)
    stw 3, 0x338(30)
    stw 0, 0x240(30)
    .4byte 0x48000328 # b .L_802B48AC
L_802B4588:
    li 0, 0x0
    mr 28, 30
    stw 0, 0x338(30)
    li 26, 0x0
L_802B4598:
    bl GetRoomConfigRecord
    lwz 4, 0x324(28)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802B45B8
    lwz 3, 0x338(30)
    addi 0, 3, 0x1
    stw 0, 0x338(30)
L_802B45B8:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFD4 # blt .L_802B4598
    lwz 0, 0x338(30)
    .4byte 0x386D85E0 # li r3, lbl_8053A1A0@sda21
    stw 0, 0x334(30)
    lwz 0, 0x334(30)
    lbzx 0, 3, 0
    stw 0, 0x314(30)
    lwz 3, 0x310(30)
    lwz 0, 0x314(30)
    cmpw 3, 0
    .4byte 0x40800024 # bge .L_802B4610
    addi 0, 3, 0x5
    stw 0, 0x310(30)
    lwz 0, 0x310(30)
    lwz 3, 0x314(30)
    cmpw 0, 3
    .4byte 0x4180002C # blt .L_802B4630
    stw 3, 0x310(30)
    .4byte 0x48000024 # b .L_802B4630
L_802B4610:
    .4byte 0x40810020 # ble .L_802B4630
    subi 0, 3, 0x5
    stw 0, 0x310(30)
    lwz 0, 0x310(30)
    lwz 3, 0x314(30)
    cmpw 0, 3
    .4byte 0x41810008 # bgt .L_802B4630
    stw 3, 0x310(30)
L_802B4630:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x30
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x30(1)
    bl fn_8013A884
    .4byte 0x4800023C # b .L_802B48AC
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x2c
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x2c(1)
    bl fn_8013A884
    .4byte 0x480001F8 # b .L_802B48AC
    lwz 0, 0x240(30)
    cmpwi 0, 0x1
    .4byte 0x418200C0 # beq .L_802B4780
    .4byte 0x40800010 # bge .L_802B46D4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802B46E0
    .4byte 0x480000E4 # b .L_802B47B4
L_802B46D4:
    cmpwi 0, 0x9
    .4byte 0x418200DC # beq .L_802B47B4
    .4byte 0x480000D8 # b .L_802B47B4
L_802B46E0:
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802B4708
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_802B473C
L_802B4708:
    mr 3, 30
    li 4, 0xff
    lwz 12, 0x0(30)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x1
    stw 0, 0x240(30)
L_802B473C:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x28
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x28(1)
    bl fn_8013A884
    .4byte 0x48000130 # b .L_802B48AC
L_802B4780:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(30)
    cmpwi 0, 0x9
    .4byte 0x40820110 # bne .L_802B48AC
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x2b8(30)
    stw 0, 0x240(30)
    .4byte 0x480000FC # b .L_802B48AC
L_802B47B4:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x24
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x24(1)
    bl fn_8013A884
    .4byte 0x480000B8 # b .L_802B48AC
    lwz 0, 0x240(30)
    cmpwi 0, 0x1
    .4byte 0x41820054 # beq .L_802B4854
    .4byte 0x40800010 # bge .L_802B4814
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802B4820
    .4byte 0x4800005C # b .L_802B486C
L_802B4814:
    cmpwi 0, 0x9
    .4byte 0x41820054 # beq .L_802B486C
    .4byte 0x48000050 # b .L_802B486C
L_802B4820:
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802B4848
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_802B48AC
L_802B4848:
    li 0, 0x1
    stw 0, 0x240(30)
    .4byte 0x4800005C # b .L_802B48AC
L_802B4854:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    .4byte 0x48000044 # b .L_802B48AC
L_802B486C:
    lwz 0, 0x310(30)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x20
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x20(1)
    bl fn_8013A884
L_802B48AC:
    lwz 0, 0x288(30)
    cmpwi 0, 0x0
    .4byte 0x41820110 # beq .L_802B49C4
    li 3, 0x0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    lfs 0, 0x4(3)
    stfs 0, 0x10(30)
    lfs 0, 0x8(3)
    stfs 0, 0x14(30)
    lwz 0, 0x288(30)
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_802B4914
    .4byte 0x408200E0 # bne .L_802B49C4
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_802B4914
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200B4 # bne .L_802B49C4
L_802B4914:
    clrlwi. 0, 31, 24
    .4byte 0x408200AC # bne .L_802B49C4
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x40820094 # bne .L_802B49C4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x41820028 # beq .L_802B4968
    lis 3, 0x3
    addi 4, 1, 0x1c
    addi 0, 3, 0x31
    stw 0, 0x1c(1)
    lwz 3, 0x230(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802B4968:
    lwz 3, 0x4(30)
    addi 4, 30, 0x254
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    li 5, 0x488
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x97
    bl fn_801CD664
    addi 0, 3, 0x32
    stw 0, 0x24c(30)
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802B49C4
    li 3, 0xdd
    bl fn_801CD664
    lwz 0, 0x24c(30)
    addi 3, 3, 0x50
    add 0, 0, 3
    stw 0, 0x24c(30)
L_802B49C4:
    lwz 0, 0x288(30)
    cmpwi 0, 0x3
    .4byte 0x41820334 # beq .L_802B4D00
    .4byte 0x4080072C # bge .L_802B50FC
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_802B49E8
    .4byte 0x408005EC # bge .L_802B4FC8
    .4byte 0x4800071C # b .L_802B50FC
    .4byte 0x48000718 # b .L_802B50FC
L_802B49E8:
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_802B4A14
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408206EC # bne .L_802B50FC
L_802B4A14:
    lwz 3, 0x250(30)
    cmpwi 3, 0x0
    .4byte 0x4082013C # bne .L_802B4B58
    li 3, 0x14
    clrlwi. 0, 31, 24
    stw 3, 0x250(30)
    .4byte 0x40820138 # bne .L_802B4B64
    lwz 0, 0x234(30)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_802B4AB4
    lwz 3, 0x4(30)
    addi 4, 30, 0x254
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    li 5, 0x3a1
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(30)
    addi 4, 30, 0x254
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    li 5, 0x3a2
    lwz 3, 0x4(30)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(30)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl ConfigRecord_SetByte_0x131f2
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
L_802B4AB4:
    lfs 2, 0x2c0(30)
    .4byte 0xC022DA84 # lfs f1, lbl_80540A24@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800020 # bge .L_802B4AE0
    lfs 0, 0x2c8(30)
    fadds 0, 2, 0
    stfs 0, 0x2c0(30)
    lfs 0, 0x2c0(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802B4AE0
    stfs 1, 0x2c0(30)
L_802B4AE0:
    lfs 2, 0x2c4(30)
    .4byte 0xC022DA88 # lfs f1, lbl_80540A28@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800020 # bge .L_802B4B0C
    lfs 0, 0x2cc(30)
    fadds 0, 2, 0
    stfs 0, 0x2c4(30)
    lfs 0, 0x2c4(30)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802B4B0C
    stfs 1, 0x2c4(30)
L_802B4B0C:
    lfs 0, 0x2c0(30)
    addi 4, 30, 0x254
    lwz 3, 0x234(30)
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    stfs 0, 0x28(3)
    lwz 3, 0x234(30)
    bl fn_8013CB44
    lfs 0, 0x2c4(30)
    addi 4, 30, 0x254
    lwz 3, 0x238(30)
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    stfs 0, 0x28(3)
    lwz 3, 0x238(30)
    bl fn_8013CB44
    .4byte 0x48000010 # b .L_802B4B64
L_802B4B58:
    .4byte 0x4182000C # beq .L_802B4B64
    subi 0, 3, 0x1
    stw 0, 0x250(30)
L_802B4B64:
    lwz 0, 0x244(30)
    cmpwi 0, 0x1
    .4byte 0x41820168 # beq .L_802B4CD4
    .4byte 0x4080058C # bge .L_802B50FC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802B4B80
    .4byte 0x48000580 # b .L_802B50FC
L_802B4B80:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl ConfigRecord_SetByte_0x131f2
    lwz 3, 0x2e0(30)
    li 4, 0x0
    lwz 0, 0x2f0(30)
    cmpw 3, 0
    .4byte 0x41820048 # beq .L_802B4BE4
    .4byte 0x40810024 # ble .L_802B4BC4
    subi 0, 3, 0x4
    stw 0, 0x2e0(30)
    lwz 0, 0x2e0(30)
    lwz 3, 0x2f0(30)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802B4BE0
    stw 3, 0x2e0(30)
    .4byte 0x48000020 # b .L_802B4BE0
L_802B4BC4:
    addi 0, 3, 0x4
    stw 0, 0x2e0(30)
    lwz 0, 0x2e0(30)
    lwz 3, 0x2f0(30)
    cmpw 0, 3
    .4byte 0x41800008 # blt .L_802B4BE0
    stw 3, 0x2e0(30)
L_802B4BE0:
    li 4, 0x1
L_802B4BE4:
    lwz 3, 0x2e4(30)
    lwz 0, 0x2f4(30)
    cmpw 3, 0
    .4byte 0x41820048 # beq .L_802B4C38
    .4byte 0x40810024 # ble .L_802B4C18
    subi 0, 3, 0x4
    stw 0, 0x2e4(30)
    lwz 0, 0x2e4(30)
    lwz 3, 0x2f4(30)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802B4C34
    stw 3, 0x2e4(30)
    .4byte 0x48000020 # b .L_802B4C34
L_802B4C18:
    addi 0, 3, 0x4
    stw 0, 0x2e4(30)
    lwz 0, 0x2e4(30)
    lwz 3, 0x2f4(30)
    cmpw 0, 3
    .4byte 0x41800008 # blt .L_802B4C34
    stw 3, 0x2e4(30)
L_802B4C34:
    li 4, 0x1
L_802B4C38:
    lwz 3, 0x2e8(30)
    lwz 0, 0x2f8(30)
    cmpw 3, 0
    .4byte 0x41820048 # beq .L_802B4C8C
    .4byte 0x40810024 # ble .L_802B4C6C
    subi 0, 3, 0x4
    stw 0, 0x2e8(30)
    lwz 0, 0x2e8(30)
    lwz 3, 0x2f8(30)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802B4C88
    stw 3, 0x2e8(30)
    .4byte 0x48000020 # b .L_802B4C88
L_802B4C6C:
    addi 0, 3, 0x4
    stw 0, 0x2e8(30)
    lwz 0, 0x2e8(30)
    lwz 3, 0x2f8(30)
    cmpw 0, 3
    .4byte 0x41800008 # blt .L_802B4C88
    stw 3, 0x2e8(30)
L_802B4C88:
    li 4, 0x1
L_802B4C8C:
    cmpwi 4, 0x0
    .4byte 0x4082000C # bne .L_802B4C9C
    li 0, 0x1
    stw 0, 0x244(30)
L_802B4C9C:
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x18
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x18(1)
    bl fn_8013A884
    .4byte 0x4800042C # b .L_802B50FC
L_802B4CD4:
    .4byte 0xC022DA84 # lfs f1, lbl_80540A24@sda21(r0)
    lfs 0, 0x2c0(30)
    fcmpu cr0, 1, 0
    .4byte 0x4082041C # bne .L_802B50FC
    .4byte 0xC022DA88 # lfs f1, lbl_80540A28@sda21(r0)
    lfs 0, 0x2c4(30)
    fcmpu cr0, 1, 0
    .4byte 0x4082040C # bne .L_802B50FC
    li 0, 0x2
    stw 0, 0x288(30)
    .4byte 0x48000400 # b .L_802B50FC
L_802B4D00:
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x408200E8 # bne .L_802B4DF0
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802B4D34
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408200C0 # bne .L_802B4DF0
L_802B4D34:
    li 0, 0x14
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    stw 0, 0x250(30)
    lfs 2, 0x2c0(30)
    fcmpo cr0, 2, 1
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_802B4D70
    lfs 0, 0x2c8(30)
    fsubs 0, 2, 0
    stfs 0, 0x2c0(30)
    lfs 0, 0x2c0(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B4D70
    stfs 1, 0x2c0(30)
L_802B4D70:
    lfs 2, 0x2c4(30)
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    fcmpo cr0, 2, 1
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_802B4DA4
    lfs 0, 0x2cc(30)
    fsubs 0, 2, 0
    stfs 0, 0x2c4(30)
    lfs 0, 0x2c4(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B4DA4
    stfs 1, 0x2c4(30)
L_802B4DA4:
    lfs 0, 0x2c0(30)
    addi 4, 30, 0x254
    lwz 3, 0x234(30)
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    stfs 0, 0x28(3)
    lwz 3, 0x234(30)
    bl fn_8013CB44
    lfs 0, 0x2c4(30)
    addi 4, 30, 0x254
    lwz 3, 0x238(30)
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    stfs 0, 0x28(3)
    lwz 3, 0x238(30)
    bl fn_8013CB44
    .4byte 0x48000018 # b .L_802B4E04
L_802B4DF0:
    lwz 3, 0x250(30)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802B4E04
    subi 0, 3, 0x1
    stw 0, 0x250(30)
L_802B4E04:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_802B4E14
    .4byte 0x480002EC # b .L_802B50FC
L_802B4E14:
    li 0, 0x64
    li 4, 0x0
    stw 0, 0x24c(30)
    lwz 3, 0x2e0(30)
    lwz 0, 0x300(30)
    cmpw 3, 0
    .4byte 0x41820048 # beq .L_802B4E74
    .4byte 0x40810024 # ble .L_802B4E54
    subi 0, 3, 0x4
    stw 0, 0x2e0(30)
    lwz 0, 0x2e0(30)
    lwz 3, 0x300(30)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802B4E70
    stw 3, 0x2e0(30)
    .4byte 0x48000020 # b .L_802B4E70
L_802B4E54:
    addi 0, 3, 0x4
    stw 0, 0x2e0(30)
    lwz 0, 0x2e0(30)
    lwz 3, 0x300(30)
    cmpw 0, 3
    .4byte 0x41800008 # blt .L_802B4E70
    stw 3, 0x2e0(30)
L_802B4E70:
    li 4, 0x1
L_802B4E74:
    lwz 3, 0x2e4(30)
    lwz 0, 0x304(30)
    cmpw 3, 0
    .4byte 0x41820048 # beq .L_802B4EC8
    .4byte 0x40810024 # ble .L_802B4EA8
    subi 0, 3, 0x4
    stw 0, 0x2e4(30)
    lwz 0, 0x2e4(30)
    lwz 3, 0x304(30)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802B4EC4
    stw 3, 0x2e4(30)
    .4byte 0x48000020 # b .L_802B4EC4
L_802B4EA8:
    addi 0, 3, 0x4
    stw 0, 0x2e4(30)
    lwz 0, 0x2e4(30)
    lwz 3, 0x304(30)
    cmpw 0, 3
    .4byte 0x41800008 # blt .L_802B4EC4
    stw 3, 0x2e4(30)
L_802B4EC4:
    li 4, 0x1
L_802B4EC8:
    lwz 3, 0x2e8(30)
    lwz 0, 0x308(30)
    cmpw 3, 0
    .4byte 0x41820048 # beq .L_802B4F1C
    .4byte 0x40810024 # ble .L_802B4EFC
    subi 0, 3, 0x4
    stw 0, 0x2e8(30)
    lwz 0, 0x2e8(30)
    lwz 3, 0x308(30)
    cmpw 0, 3
    .4byte 0x41810028 # bgt .L_802B4F18
    stw 3, 0x2e8(30)
    .4byte 0x48000020 # b .L_802B4F18
L_802B4EFC:
    addi 0, 3, 0x4
    stw 0, 0x2e8(30)
    lwz 0, 0x2e8(30)
    lwz 3, 0x308(30)
    cmpw 0, 3
    .4byte 0x41800008 # blt .L_802B4F18
    stw 3, 0x2e8(30)
L_802B4F18:
    li 4, 0x1
L_802B4F1C:
    cmpwi 4, 0x0
    .4byte 0x40820070 # bne .L_802B4F90
    li 0, 0x0
    stw 0, 0x288(30)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl ConfigRecord_SetByte_0x131f2
    lwz 5, 0x234(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B4F60
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(30)
L_802B4F60:
    lwz 5, 0x238(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B4F88
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x238(30)
L_802B4F88:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
L_802B4F90:
    lwz 4, 0x2e0(30)
    addi 3, 1, 0x14
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x14(1)
    bl fn_8013A884
    .4byte 0x48000138 # b .L_802B50FC
L_802B4FC8:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x4
    .4byte 0x40820014 # bne .L_802B4FE8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_802B5014
L_802B4FE8:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802B5014
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x288(30)
    stw 0, 0x244(30)
L_802B5014:
    li 0, 0x9f
    li 3, 0xaf
    stw 0, 0x2e0(30)
    li 0, 0xff
    stw 3, 0x2e4(30)
    stw 0, 0x2e8(30)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl ConfigRecord_SetByte_0x131f2
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x41820028 # beq .L_802B506C
    lis 3, 0x3
    addi 4, 1, 0x10
    addi 0, 3, 0x30
    stw 0, 0x10(1)
    lwz 3, 0x230(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802B506C:
    lfs 0, 0x2c0(30)
    addi 4, 30, 0x254
    lwz 3, 0x234(30)
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    stfs 0, 0x28(3)
    lwz 3, 0x234(30)
    bl fn_8013CB44
    lfs 0, 0x2c4(30)
    addi 4, 30, 0x254
    lwz 3, 0x238(30)
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    stfs 0, 0x28(3)
    lwz 3, 0x238(30)
    bl fn_8013CB44
    lwz 4, 0x2e0(30)
    addi 3, 1, 0xc
    lwz 0, 0x2e4(30)
    lwz 5, 0x2e8(30)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(30)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0xc(1)
    bl fn_8013A884
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
L_802B50FC:
    lwz 0, 0x290(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802B5114
    lwz 0, 0x294(30)
    cmpwi 0, 0x0
    .4byte 0x4182005C # beq .L_802B516C
L_802B5114:
    lwz 0, 0x294(30)
    cmpwi 0, 0x0
    .4byte 0x41820038 # beq .L_802B5154
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x41820028 # beq .L_802B5154
    lis 3, 0x3
    addi 4, 1, 0x8
    addi 0, 3, 0x32
    stw 0, 0x8(1)
    lwz 3, 0x230(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802B5154:
    lwz 3, 0x23c(30)
    addi 4, 30, 0x254
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_802B516C:
    lwz 0, 0x310(30)
    cmpwi 0, 0xff
    .4byte 0x41820014 # beq .L_802B5188
    bl GetRoomConfigRecord
    li 4, 0x1
    bl ConfigRecord_SetByte_0x131f3
    .4byte 0x48000010 # b .L_802B5194
L_802B5188:
    bl GetRoomConfigRecord
    li 4, 0x0
    bl ConfigRecord_SetByte_0x131f3
L_802B5194:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lmw 26, 0x58(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_802B51C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182008C # beq .L_802B5268
    lis 3, lbl_804A8638@ha
    addi 0, 3, lbl_804A8638@l
    stw 0, 0x0(30)
    bl fn_8016A3AC
    li 0, 0x0
    stb 0, 0x1ee(3)
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B5208
    bl fn_801EE434
L_802B5208:
    lwz 3, 0x238(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B5218
    bl fn_801EE434
L_802B5218:
    lwz 3, 0x23c(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B5228
    bl fn_801EE434
L_802B5228:
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802B524C
    .4byte 0x41820018 # beq .L_802B524C
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802B524C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B5268
    mr 3, 30
    bl dtor_80084580
L_802B5268:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B5284:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x288(3)
    cmpwi 0, 0x4
    .4byte 0x408200AC # bne .L_802B534C
    bl GetRoomConfigRecord
    li 4, 0x0
    bl ConfigRecord_SetByte_0x131f2
    li 0, 0x0
    stw 0, 0x288(31)
    lwz 0, 0x300(31)
    stw 0, 0x2e0(31)
    lwz 0, 0x304(31)
    stw 0, 0x2e4(31)
    lwz 0, 0x308(31)
    stw 0, 0x2e8(31)
    lwz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802B52F4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x234(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x234(31)
L_802B52F4:
    lwz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802B5318
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x238(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x238(31)
L_802B5318:
    lwz 4, 0x2e0(31)
    addi 3, 1, 0x8
    lwz 0, 0x2e4(31)
    lwz 5, 0x2e8(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x2ec(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x8(1)
    bl fn_8013A884
L_802B534C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B5360:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 3, 7
    stw 0, 0x260(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 10
    stw 0, 0x264(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 11
    stw 0, 0x268(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 12
    stw 0, 0x270(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 13
    stw 0, 0x274(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 14
    stw 0, 0x278(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 15
    stw 0, 0x27c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 16
    stw 0, 0x280(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 17
    stw 0, 0x288(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 19
    stw 0, 0x28c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 20
    stw 0, 0x290(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 21
    stw 0, 0x294(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 22
    stw 0, 0x298(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 23
    stw 0, 0x29c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 24
    stw 0, 0x2a0(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 25
    stw 0, 0x2a4(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 26
    stw 0, 0x2a8(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 27
    stw 0, 0x2ac(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 5
    stw 0, 0x2b4(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 6
    stw 0, 0x2b8(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x2d8(3)
    bl fn_802DEBA0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802B54B0
    lwz 0, 0x2d8(31)
    cmpwi 0, 0xf
    .4byte 0x41820014 # beq .L_802B54B0
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_802B54B0
    li 0, 0x0
    stw 0, 0x2d8(31)
L_802B54B0:
    li 0, 0x0
    stw 0, 0x240(31)
    stw 0, 0x244(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_802B54F0
    .4byte 0x40800010 # bge .L_802B54D8
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_802B54E4
    .4byte 0x48000044 # b .L_802B5518
L_802B54D8:
    cmpwi 0, 0x4
    .4byte 0x4080003C # bge .L_802B5518
    .4byte 0x4800002C # b .L_802B550C
L_802B54E4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    .4byte 0x4800002C # b .L_802B5518
L_802B54F0:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000010 # b .L_802B5518
L_802B550C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x78
    bl fn_80458F9C
L_802B5518:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820044 # beq .L_802B5564
    bl fn_8016A3AC
    lbz 0, 0x1ec(3)
    lis 3, 0x8081
    subi 4, 3, 0x7f7f
    stb 0, 0x2d0(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    lbz 0, 0xc(3)
    mulli 0, 0, 0x2f
    mulhw 3, 4, 0
    add 0, 3, 0
    srawi 0, 0, 7
    srwi 3, 0, 31
    add 0, 0, 3
    stb 0, 0x2d1(31)
    .4byte 0x48000010 # b .L_802B5570
L_802B5564:
    bl fn_8016A3AC
    lbz 0, 0x1ec(3)
    stb 0, 0x2d0(31)
L_802B5570:
    lbz 30, 0x2d0(31)
    bl fn_8016A3AC
    stb 30, 0x1ec(3)
    bl fn_8016A3AC
    lbz 0, 0x1ed(3)
    stb 0, 0x2d2(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802B559C
    li 0, 0x8f
    stw 0, 0x26c(31)
L_802B559C:
    lbz 30, 0x2d2(31)
    bl fn_8016A3AC
    stb 30, 0x1ed(3)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B55C0
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c7(3)
L_802B55C0:
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B55D8
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c4(3)
L_802B55D8:
    bl fn_8016A3AC
    lbz 0, 0x1f1(3)
    stb 0, 0x2d3(31)
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802B55F8
    li 0, 0xff
    stw 0, 0x284(31)
L_802B55F8:
    lbz 30, 0x2d3(31)
    bl fn_8016A3AC
    stb 30, 0x1f1(3)
    bl fn_8016A3AC
    lbz 0, 0x1f0(3)
    stb 0, 0x2d4(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802B5624
    li 0, 0xff
    stw 0, 0x2b0(31)
L_802B5624:
    lbz 30, 0x2d4(31)
    bl fn_8016A3AC
    stb 30, 0x1f0(3)
    bl fn_8016A3AC
    lbz 0, 0x1ef(3)
    stb 0, 0x2d5(31)
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802B5650
    li 0, 0xff
    stw 0, 0x2bc(31)
L_802B5650:
    lbz 30, 0x2d5(31)
    bl fn_8016A3AC
    stb 30, 0x1ef(3)
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_802B56B0
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_802B56B0
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_802B56A8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802B56A8
    li 0, 0x4
    stw 0, 0x288(31)
    .4byte 0x4800000C # b .L_802B56B0
L_802B56A8:
    li 0, 0x3
    stw 0, 0x288(31)
L_802B56B0:
    lwz 0, 0x288(31)
    cmpwi 0, 0x2
    .4byte 0x40820068 # bne .L_802B5720
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x1
    .4byte 0x40820058 # bne .L_802B5720
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_802B5720
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802B5720
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802B5718
    li 0, 0x3
    stw 0, 0x288(31)
    .4byte 0x4800000C # b .L_802B5720
L_802B5718:
    li 0, 0x0
    stw 0, 0x288(31)
L_802B5720:
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x41820304 # beq .L_802B5A2C
    bl Glwp_GetAmbientEffectGroupByte
    clrlwi 0, 3, 24
    stw 0, 0x310(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x2
    .4byte 0x40820034 # bne .L_802B5774
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820028 # beq .L_802B5774
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802B5774
    li 0, 0x1
    stw 0, 0x288(31)
L_802B5774:
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802B57C8
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_802B57AC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820018 # beq .L_802B57C0
L_802B57AC:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802B57C8
L_802B57C0:
    li 0, 0x2
    stw 0, 0x288(31)
L_802B57C8:
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4082006C # bne .L_802B583C
    li 0, 0x9f
    li 4, 0xaf
    stw 0, 0x2f0(31)
    li 3, 0xff
    .4byte 0xC042DA80 # lfs f2, lbl_80540A20@sda21(r0)
    li 0, 0x14
    stw 4, 0x2f4(31)
    .4byte 0xC022DA8C # lfs f1, lbl_80540A2C@sda21(r0)
    stw 3, 0x2f8(31)
    .4byte 0xC002DA90 # lfs f0, lbl_80540A30@sda21(r0)
    lwz 3, 0x2e0(31)
    stw 3, 0x300(31)
    lwz 3, 0x2e4(31)
    stw 3, 0x304(31)
    lwz 3, 0x2e8(31)
    stw 3, 0x308(31)
    stfs 2, 0x2c0(31)
    stfs 2, 0x2c4(31)
    stfs 1, 0x2c8(31)
    stfs 0, 0x2cc(31)
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl ConfigRecord_SetByte_0x131f2
    .4byte 0x480001F4 # b .L_802B5A2C
L_802B583C:
    cmpwi 0, 0x2
    .4byte 0x408200F4 # bne .L_802B5934
    li 0, 0x9f
    li 4, 0xaf
    stw 0, 0x2e0(31)
    li 0, 0xff
    .4byte 0xC002DA84 # lfs f0, lbl_80540A24@sda21(r0)
    li 3, 0x64
    stw 4, 0x2e4(31)
    .4byte 0xC042DA88 # lfs f2, lbl_80540A28@sda21(r0)
    stw 0, 0x2e8(31)
    .4byte 0xC022DA8C # lfs f1, lbl_80540A2C@sda21(r0)
    stfs 0, 0x2c0(31)
    .4byte 0xC002DA90 # lfs f0, lbl_80540A30@sda21(r0)
    stfs 2, 0x2c4(31)
    stfs 1, 0x2c8(31)
    stfs 0, 0x2cc(31)
    bl fn_801CD664
    stw 3, 0x24c(31)
    li 0, 0x0
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    addi 4, 31, 0x254
    stw 0, 0x250(31)
    li 5, 0x3a1
    li 6, 0x1
    li 7, 0x0
    lwz 3, 0x4(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    lwz 3, 0x234(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802B58D0
    lfs 0, 0x2c0(31)
    stfs 0, 0x28(3)
L_802B58D0:
    lwz 3, 0x4(31)
    addi 4, 31, 0x254
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    li 5, 0x3a2
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(31)
    lwz 3, 0x238(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802B5910
    lfs 0, 0x2c4(31)
    stfs 0, 0x28(3)
L_802B5910:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl ConfigRecord_SetByte_0x131f2
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480000FC # b .L_802B5A2C
L_802B5934:
    li 5, 0x9f
    li 4, 0xaf
    stw 5, 0x2f0(31)
    li 0, 0xff
    .4byte 0xC062DA84 # lfs f3, lbl_80540A24@sda21(r0)
    li 3, 0x64
    stw 5, 0x2e0(31)
    .4byte 0xC042DA88 # lfs f2, lbl_80540A28@sda21(r0)
    stw 4, 0x2f4(31)
    .4byte 0xC022DA8C # lfs f1, lbl_80540A2C@sda21(r0)
    stw 4, 0x2e4(31)
    .4byte 0xC002DA90 # lfs f0, lbl_80540A30@sda21(r0)
    stw 0, 0x2f8(31)
    stw 0, 0x2e8(31)
    stfs 3, 0x2c0(31)
    stfs 2, 0x2c4(31)
    stfs 1, 0x2c8(31)
    stfs 0, 0x2cc(31)
    bl fn_801CD664
    stw 3, 0x24c(31)
    li 0, 0x0
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    addi 4, 31, 0x254
    stw 0, 0x250(31)
    li 5, 0x3a1
    li 6, 0x1
    li 7, 0x0
    lwz 3, 0x4(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    lwz 3, 0x234(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802B59CC
    lfs 0, 0x2c0(31)
    stfs 0, 0x28(3)
L_802B59CC:
    lwz 3, 0x4(31)
    addi 4, 31, 0x254
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    li 5, 0x3a2
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(31)
    lwz 3, 0x238(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802B5A0C
    lfs 0, 0x2c4(31)
    stfs 0, 0x28(3)
L_802B5A0C:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl ConfigRecord_SetByte_0x131f2
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
L_802B5A2C:
    lwz 0, 0x290(31)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_802B5A68
    lwz 3, 0x4(31)
    addi 4, 31, 0x254
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    li 5, 0x449
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x23c(31)
    .4byte 0x48000078 # b .L_802B5ADC
L_802B5A68:
    lwz 3, 0x294(31)
    cmpwi 3, 0x0
    .4byte 0x41820034 # beq .L_802B5AA4
    lwz 3, 0x4(31)
    addi 4, 31, 0x254
    .4byte 0xC022DA80 # lfs f1, lbl_80540A20@sda21(r0)
    li 5, 0x58
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x23c(31)
    .4byte 0x4800003C # b .L_802B5ADC
L_802B5AA4:
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_802B5ADC
    cmpwi 3, 0x0
    .4byte 0x4082002C # bne .L_802B5ADC
    lwz 5, 0x23c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802B5ADC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(31)
L_802B5ADC:
    addi 3, 1, 0x8
    bl fn_8018330C
    lbz 4, 0x8(1)
    li 3, 0xff
    li 0, 0x0
    stb 4, 0x2dc(31)
    lbz 4, 0x9(1)
    stb 4, 0x2dd(31)
    lbz 4, 0xa(1)
    stb 4, 0x2de(31)
    lbz 4, 0xb(1)
    stb 4, 0x2df(31)
    lwz 4, 0x2dc(31)
    srwi 4, 4, 24
    stw 4, 0x2e0(31)
    lwz 4, 0x2dc(31)
    extrwi 4, 4, 8, 8
    stw 4, 0x2e4(31)
    lwz 4, 0x2dc(31)
    extrwi 4, 4, 8, 16
    stw 4, 0x2e8(31)
    lwz 4, 0x2dc(31)
    clrlwi 4, 4, 24
    stw 4, 0x2ec(31)
    stw 3, 0x300(31)
    stw 3, 0x304(31)
    stw 3, 0x308(31)
    stw 0, 0x30c(31)
    bl Glwp_GetAmbientEffectGroupByte
    clrlwi 0, 3, 24
    .4byte 0xC002DA7C # lfs f0, lbl_80540A1C@sda21(r0)
    stw 0, 0x310(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0x10(3)
    fneg 1, 1
    stfs 1, 0x254(31)
    lfs 1, 0x20(3)
    fneg 1, 1
    stfs 1, 0x258(31)
    stfs 0, 0x25c(31)
    lwz 0, 0x2d8(31)
    cmplwi 0, 0xf
    .4byte 0x418103A4 # bgt .L_802B5F2C
    lis 3, jumptable_804A8710@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A8710@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x9
    stw 0, 0x240(31)
    .4byte 0x48000380 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x80
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000350 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x48000318 # b .L_802B5F2C
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x480002D4 # b .L_802B5F2C
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    bl fn_802D75BC
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_802B5CB4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x80
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0xb
    stw 0, 0x240(31)
    .4byte 0x4800027C # b .L_802B5F2C
L_802B5CB4:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x8
    stw 0, 0x240(31)
    .4byte 0x48000244 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0x80
    li 9, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000214 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x80
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0xb
    stw 0, 0x240(31)
    .4byte 0x480001DC # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x9
    mtctr 12
    bctrl
    li 0, 0x64
    li 3, 0x0
    stw 0, 0x248(31)
    li 0, 0xa
    stw 3, 0x334(31)
    stw 3, 0x338(31)
    stw 0, 0x314(31)
    .4byte 0x48000190 # b .L_802B5F2C
    mr 3, 31
    li 4, 0x28
    lwz 12, 0x0(31)
    li 5, 0x50
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000160 # b .L_802B5F2C
    mr 3, 31
    li 4, 0x28
    lwz 12, 0x0(31)
    li 5, 0x50
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x9
    mtctr 12
    bctrl
    .4byte 0x48000130 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xb4
    li 6, 0x78
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0x8c
    li 9, 0x9
    mtctr 12
    bctrl
    .4byte 0x48000100 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xa4
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xdc
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x9
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x480000C8 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x48000090 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xbe
    lwz 12, 0x0(31)
    li 5, 0xd2
    li 6, 0xc8
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x9
    mtctr 12
    bctrl
    .4byte 0x48000060 # b .L_802B5F2C
    mr 3, 31
    li 4, 0x96
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xff
    li 7, 0x14
    lwz 12, 0x54(12)
    li 8, 0xb4
    li 9, 0x9
    mtctr 12
    bctrl
    .4byte 0x48000030 # b .L_802B5F2C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xd2
    li 7, 0x18
    lwz 12, 0x54(12)
    li 8, 0xff
    li 9, 0x9
    mtctr 12
    bctrl
L_802B5F2C:
    li 3, 0x5c
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820014 # beq .L_802B5F4C
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_802B5F4C:
    stw 30, 0x230(31)
    mr 3, 31
    lwz 12, 0x0(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    lwz 12, 0x14(12)
    psq_st 1, 0xc(1), 0, 0
    stfs 0, 0x14(1)
    mtctr 12
    bctrl
    psq_l 1, 0xc(1), 0, 0
    li 0, 0x1
    lfs 0, 0x14(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stb 0, 0x11f(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B5FA4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D1F68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D1F68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B5FF4
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
L_802B5FF4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B602C
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
L_802B602C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B6064
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
L_802B6064:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B609C
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
L_802B609C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B60D4
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
L_802B60D4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B610C
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
L_802B610C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B6144
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
L_802B6144:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B617C
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
L_802B617C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B61B4
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
L_802B61B4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B61C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802B620C
    lis 5, lbl_804A8750@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8750@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B620C
    mr 3, 30
    bl dtor_80084580
L_802B620C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B6228:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 4, 0x4(3)
    cmpwi 4, 0x8
    .4byte 0x41800044 # blt .L_802B6288
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002DA98 # lfs f0, lbl_80540A38@sda21(r0)
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
    .4byte 0x480000A4 # b .L_802B6328
L_802B6288:
    lfs 1, 0x14(31)
    .4byte 0xC002DA98 # lfs f0, lbl_80540A38@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800044 # bge .L_802B62D8
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x40820030 # bne .L_802B62D8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA9C # lfs f1, lbl_80540A3C@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000054 # b .L_802B6328
L_802B62D8:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA9C # lfs f1, lbl_80540A3C@sda21(r0)
    li 5, 0x8c
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DA9C # lfs f1, lbl_80540A3C@sda21(r0)
    li 5, 0x8d
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802B6328:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B6358:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022DA9C # lfs f1, lbl_80540A3C@sda21(r0)
    lis 4, lbl_8046CAB8@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_8046CAB8@l
    fmr 2, 1
    li 5, 0x29
    li 6, 0x0
    li 7, 0x0
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B6394:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x418201CC # beq .L_802B657C
    .4byte 0x40800014 # bge .L_802B63C8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802B63D4
    .4byte 0x40800130 # bge .L_802B64F0
    .4byte 0x48000420 # b .L_802B67E4
L_802B63C8:
    cmpwi 0, 0x4
    .4byte 0x40800418 # bge .L_802B67E4
    .4byte 0x48000208 # b .L_802B65D8
L_802B63D4:
    lfs 4, 0x60(31)
    addi 3, 1, 0x28
    .4byte 0xC022DA98 # lfs f1, lbl_80540A38@sda21(r0)
    li 5, 0x0
    stfs 4, 0x28(1)
    lfs 3, 0x64(31)
    stfs 3, 0x2c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x30(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x34(1)
    lfs 6, 0x10(31)
    lfs 5, 0xc(31)
    fadds 3, 3, 6
    fadds 4, 4, 5
    fadds 2, 2, 5
    fadds 0, 0, 6
    stfs 3, 0x2c(1)
    stfs 4, 0x28(1)
    stfs 2, 0x30(1)
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    stw 3, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x418003A8 # blt .L_802B67E4
    .4byte 0xC002DA98 # lfs f0, lbl_80540A38@sda21(r0)
    stfs 0, 0x23c(31)
    stfs 0, 0x238(31)
    stfs 0, 0x234(31)
    lwz 3, 0x24c(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x1c(1), 0, 0
    lfs 4, 0xc(31)
    lfs 5, 0x1c(1)
    lfs 2, 0x20(1)
    lfs 1, 0x10(31)
    fsubs 3, 5, 4
    stfs 0, 0x24(1)
    fsubs 0, 2, 1
    fabs 3, 3
    fabs 0, 0
    fcmpo cr0, 3, 0
    .4byte 0x40810024 # ble .L_802B64B0
    fcmpo cr0, 5, 4
    .4byte 0x40800010 # bge .L_802B64A4
    .4byte 0xC002DAA0 # lfs f0, lbl_80540A40@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x4800002C # b .L_802B64CC
L_802B64A4:
    .4byte 0xC002DAA4 # lfs f0, lbl_80540A44@sda21(r0)
    stfs 0, 0x234(31)
    .4byte 0x48000020 # b .L_802B64CC
L_802B64B0:
    fcmpo cr0, 2, 1
    .4byte 0x40800010 # bge .L_802B64C4
    .4byte 0xC002DAA0 # lfs f0, lbl_80540A40@sda21(r0)
    stfs 0, 0x238(31)
    .4byte 0x4800000C # b .L_802B64CC
L_802B64C4:
    .4byte 0xC002DAA4 # lfs f0, lbl_80540A44@sda21(r0)
    stfs 0, 0x238(31)
L_802B64CC:
    .4byte 0xC022DA98 # lfs f1, lbl_80540A38@sda21(r0)
    li 0, 0x1
    .4byte 0xC002DAA8 # lfs f0, lbl_80540A48@sda21(r0)
    stfs 1, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x480002F8 # b .L_802B67E4
L_802B64F0:
    lfs 1, 0x234(31)
    addi 3, 31, 0x3c
    .4byte 0xC042DAAC # lfs f2, lbl_80540A4C@sda21(r0)
    .4byte 0xC062DA9C # lfs f3, lbl_80540A3C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x238(31)
    addi 3, 31, 0x40
    .4byte 0xC042DAAC # lfs f2, lbl_80540A4C@sda21(r0)
    .4byte 0xC062DA9C # lfs f3, lbl_80540A3C@sda21(r0)
    bl fn_801F71A4
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    .4byte 0xC002DA98 # lfs f0, lbl_80540A38@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_802B655C
    lfs 1, 0x44(31)
    .4byte 0xC002DAAC # lfs f0, lbl_80540A4C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x4800028C # b .L_802B67E4
L_802B655C:
    cror eq, lt, eq
    .4byte 0x40820284 # bne .L_802B67E4
    stfs 0, 0x14(31)
    li 3, 0x14
    li 0, 0x2
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x4800026C # b .L_802B67E4
L_802B657C:
    lwz 3, 0x248(31)
    subi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820254 # bne .L_802B67E4
    li 0, 0x3
    .4byte 0xC002DAA8 # lfs f0, lbl_80540A48@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0xC062DA98 # lfs f3, lbl_80540A38@sda21(r0)
    stfs 0, 0x244(31)
    .4byte 0xC042DAA0 # lfs f2, lbl_80540A40@sda21(r0)
    stfs 3, 0x44(31)
    .4byte 0xC022DAB0 # lfs f1, lbl_80540A50@sda21(r0)
    stfs 3, 0x40(31)
    .4byte 0xC002DAB4 # lfs f0, lbl_80540A54@sda21(r0)
    stfs 3, 0x3c(31)
    stfs 2, 0x44(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000210 # b .L_802B67E4
L_802B65D8:
    lwz 3, 0x24c(31)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lis 4, lbl_80539D44@ha
    lfs 0, 0x10(31)
    lfs 3, 0x0(3)
    fsubs 5, 1, 0
    lfs 0, 0xc(31)
    stfs 1, 0xc(1)
    fsubs 4, 3, 0
    .4byte 0xC022DAB8 # lfs f1, lbl_80540A58@sda21(r0)
    fmuls 2, 5, 5
    lfs 0, lbl_80539D44@l(4)
    stfs 3, 0x8(1)
    fmadds 6, 4, 4, 2
    fmuls 0, 1, 0
    stfs 4, 0x8(1)
    stfs 5, 0xc(1)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_802B6668
    .4byte 0xC002DA98 # lfs f0, lbl_80540A38@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B6640
    .4byte 0x48000024 # b .L_802B6660
L_802B6640:
    frsqrte 3, 6
    .4byte 0xC042DABC # lfs f2, lbl_80540A5C@sda21(r0)
    .4byte 0xC002DAC0 # lfs f0, lbl_80540A60@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_802B6660:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_802B6668:
    lfs 0, 0x244(31)
    addi 3, 31, 0x3c
    .4byte 0xC042DAAC # lfs f2, lbl_80540A4C@sda21(r0)
    fmuls 0, 4, 0
    stfs 0, 0x234(31)
    lfs 0, 0x244(31)
    fmuls 0, 5, 0
    stfs 0, 0x238(31)
    lfs 1, 0x234(31)
    lfs 3, 0x240(31)
    bl fn_801F71A4
    lfs 1, 0x238(31)
    addi 3, 31, 0x40
    .4byte 0xC042DAAC # lfs f2, lbl_80540A4C@sda21(r0)
    lfs 3, 0x240(31)
    bl fn_801F71A4
    .4byte 0xC042DAC4 # lfs f2, lbl_80540A64@sda21(r0)
    addi 3, 31, 0x240
    .4byte 0xC022DA9C # lfs f1, lbl_80540A3C@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    lfs 1, 0x44(31)
    mr 3, 31
    .4byte 0xC002DAC4 # lfs f0, lbl_80540A64@sda21(r0)
    li 4, 0x1
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_802B6720
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802B6738
L_802B6720:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000B0 # b .L_802B67E4
L_802B6738:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802B6778
    psq_l 1, 0x10(1), 0, 0
    mr 3, 31
    lfs 0, 0x18(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000070 # b .L_802B67E4
L_802B6778:
    lfs 1, 0x14(31)
    .4byte 0xC002DA98 # lfs f0, lbl_80540A38@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_802B67A0
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000048 # b .L_802B67E4
L_802B67A0:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x4
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802B67D0
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802B67E4
L_802B67D0:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802B67E4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802B67F8:
    .4byte 0xC022DAC8 # lfs f1, lbl_80540A68@sda21(r0)
    li 0, 0x0
    .4byte 0xC002DACC # lfs f0, lbl_80540A6C@sda21(r0)
    stfs 1, 0x60(3)
    .4byte 0xC062DAA4 # lfs f3, lbl_80540A44@sda21(r0)
    stfs 1, 0x64(3)
    .4byte 0xC042DAA0 # lfs f2, lbl_80540A40@sda21(r0)
    stfs 0, 0x68(3)
    .4byte 0xC022DA98 # lfs f1, lbl_80540A38@sda21(r0)
    stfs 0, 0x6c(3)
    .4byte 0xC002DAD0 # lfs f0, lbl_80540A70@sda21(r0)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 2, 0x88(3)
    stfs 2, 0x8c(3)
    stfs 1, 0x23c(3)
    stfs 1, 0x238(3)
    stfs 1, 0x234(3)
    stfs 0, 0x240(3)
    stw 0, 0x230(3)
    blr

fn_802B684C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2068@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2068@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B689C
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
L_802B689C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B68D4
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
L_802B68D4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B690C
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
L_802B690C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B6944
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
L_802B6944:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B697C
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
L_802B697C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B69B4
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
L_802B69B4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B69EC
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
L_802B69EC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B6A24
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
L_802B6A24:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B6A5C
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
L_802B6A5C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B6A70:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 28, 3
    lwz 3, 0x248(3)
    lbz 0, 0x0(3)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x41820014 # beq .L_802B6AA8
    cmpwi 0, 0x73
    .4byte 0x4182000C # beq .L_802B6AA8
    cmpwi 0, 0x79
    .4byte 0x40820080 # bne .L_802B6B24
L_802B6AA8:
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xad
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xb1
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xb2
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000100 # b .L_802B6C20
L_802B6B24:
    cmpwi 0, 0x75
    .4byte 0x40820080 # bne .L_802B6BA8
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xae
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xb3
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xb4
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800007C # b .L_802B6C20
L_802B6BA8:
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xad
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xaf
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 5, 0xb0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802B6C20:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x238(28)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_802B6D64
    lis 3, lbl_8046CAF0@ha
    li 29, 0x0
    addi 30, 3, lbl_8046CAF0@l
    lis 31, 0x5255
L_802B6C50:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(28)
    addi 4, 31, 0x5059
    lwz 7, 0x0(30)
    addi 6, 28, 0xc
    bl fn_801F8544
    mr. 27, 3
    .4byte 0x418000E4 # blt .L_802B6D50
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200D0 # beq .L_802B6D50
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC082DAD8 # lfs f4, lbl_80540A78@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062DAE0 # lfs f3, lbl_80540A80@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC042DADC # lfs f2, lbl_80540A7C@sda21(r0)
    .4byte 0xC002DAE4 # lfs f0, lbl_80540A84@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 1, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x1c(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fnmsubs 1, 3, 1, 2
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x18(1)
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 4
    fnmsubs 1, 3, 1, 2
    stfs 1, 0x14(1)
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_802B6D50:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FEF4 # blt .L_802B6C50
    .4byte 0x48000030 # b .L_802B6D90
L_802B6D64:
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_802B6D90
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(28)
    addi 4, 4, 0x5259
    addi 6, 28, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802B6D90:
    li 0, 0x0
    stb 0, 0x11c(28)
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802B6DAC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    lis 3, lbl_8046CAD0@ha
    lwz 0, 0x234(31)
    addi 3, 3, lbl_8046CAD0@l
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802B6DDC
    cmpwi 0, 0x3
    .4byte 0x41800258 # blt .L_802B7030
L_802B6DDC:
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    li 11, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_802B6E54
L_802B6DF4:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_802B6E54:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802B6DF4
    li 6, 0x0
    li 5, 0x1
    stb 6, 0x24(1)
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
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
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 0, 0x40(1)
    stb 6, 0x24(1)
    stb 5, 0x25(1)
    lwz 4, 0x248(31)
    lbz 0, 0x0(4)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x41820014 # beq .L_802B6EF4
    cmpwi 0, 0x73
    .4byte 0x4182000C # beq .L_802B6EF4
    cmpwi 0, 0x79
    .4byte 0x4082004C # bne .L_802B6F3C
L_802B6EF4:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5449
    addi 4, 4, 0x4d47
    addi 5, 3, 0x30
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022DAE8 # lfs f1, lbl_80540A88@sda21(r0)
    mr 4, 3
    .4byte 0xC042DAEC # lfs f2, lbl_80540A8C@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x8
    li 6, 0x7
    bl fn_801EFD34
    .4byte 0x480000F8 # b .L_802B7030
L_802B6F3C:
    cmpwi 0, 0x6c
    .4byte 0x41820014 # beq .L_802B6F54
    cmpwi 0, 0x78
    .4byte 0x4182000C # beq .L_802B6F54
    cmpwi 0, 0x70
    .4byte 0x4082004C # bne .L_802B6F9C
L_802B6F54:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5449
    addi 4, 4, 0x4d47
    addi 5, 3, 0x40
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022DAE8 # lfs f1, lbl_80540A88@sda21(r0)
    mr 4, 3
    .4byte 0xC042DAEC # lfs f2, lbl_80540A8C@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x8
    li 6, 0x7
    bl fn_801EFD34
    .4byte 0x48000098 # b .L_802B7030
L_802B6F9C:
    cmpwi 0, 0x75
    .4byte 0x4082004C # bne .L_802B6FEC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5449
    addi 4, 4, 0x4d47
    addi 5, 3, 0x50
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022DAE8 # lfs f1, lbl_80540A88@sda21(r0)
    mr 4, 3
    .4byte 0xC042DAEC # lfs f2, lbl_80540A8C@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x8
    li 6, 0x7
    bl fn_801EFD34
    .4byte 0x48000048 # b .L_802B7030
L_802B6FEC:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5449
    addi 4, 4, 0x4d47
    addi 5, 3, 0x60
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022DAE8 # lfs f1, lbl_80540A88@sda21(r0)
    mr 4, 3
    .4byte 0xC042DAEC # lfs f2, lbl_80540A8C@sda21(r0)
    mr 3, 31
    fmr 3, 1
    addi 5, 1, 0x8
    li 6, 0x7
    bl fn_801EFD34
L_802B7030:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802B7044:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x418201D0 # beq .L_802B7244
    .4byte 0x40800014 # bge .L_802B708C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802B7098
    .4byte 0x408001AC # bge .L_802B7230
    .4byte 0x48000444 # b .L_802B74CC
L_802B708C:
    cmpwi 0, 0x4
    .4byte 0x4080043C # bge .L_802B74CC
    .4byte 0x480002B0 # b .L_802B7344
L_802B7098:
    .4byte 0xC022DAF0 # lfs f1, lbl_80540A90@sda21(r0)
    li 30, 0x0
    .4byte 0xC002DAF4 # lfs f0, lbl_80540A94@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022DAF8 # lfs f1, lbl_80540A98@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002DAFC # lfs f0, lbl_80540A9C@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 3, 0x60(31)
    stfs 3, 0x2c(1)
    lfs 2, 0x64(31)
    stfs 2, 0x30(1)
    lfs 1, 0x68(31)
    stfs 1, 0x34(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x38(1)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x30(1)
    stfs 3, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_802B7104:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200F0 # beq .L_802B7200
    mr 3, 30
    bl fn_80236E3C
    clrlwi. 0, 3, 24
    .4byte 0x418200E0 # beq .L_802B7200
    lwz 5, 0x4(31)
    mr 3, 30
    addi 4, 1, 0x2c
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_802B7200
    mr 3, 30
    bl fn_8023E724
    lfs 31, 0x0(3)
    lfs 30, 0x4(3)
    mr 3, 30
    bl fn_80230CFC
    lis 4, lbl_8046CAD0@ha
    slwi 3, 3, 3
    addi 0, 4, lbl_8046CAD0@l
    lfs 0, 0x2c(1)
    add 3, 0, 3
    li 0, 0x0
    lfs 2, 0x0(3)
    lfs 1, 0x4(3)
    fadds 31, 31, 2
    fadds 30, 30, 1
    fcmpo cr0, 31, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_802B71B4
    lfs 0, 0x30(1)
    fcmpo cr0, 30, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802B71B4
    lfs 0, 0x34(1)
    fcmpo cr0, 31, 0
    .4byte 0x40800014 # bge .L_802B71B4
    lfs 0, 0x38(1)
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_802B71B4
    li 0, 0x1
L_802B71B4:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_802B7200
    lwz 4, 0x198(31)
    mr 3, 30
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802B7200
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    li 5, 0x1
    bl fn_802D7584
    li 3, 0x32
    li 0, 0x2
    stw 3, 0x23c(31)
    stw 0, 0x234(31)
    .4byte 0x48000010 # b .L_802B720C
L_802B7200:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FEFC # blt .L_802B7104
L_802B720C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408202B8 # bne .L_802B74CC
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x418202AC # beq .L_802B74CC
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
    .4byte 0x480002A0 # b .L_802B74CC
L_802B7230:
    li 3, 0x0
    li 0, 0x14
    stw 3, 0x234(31)
    stw 0, 0x23c(31)
    .4byte 0x4800028C # b .L_802B74CC
L_802B7244:
    lwz 3, 0x23c(31)
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820274 # bne .L_802B74CC
    lfs 1, 0xc(31)
    addi 4, 1, 0x20
    .4byte 0xC002DB00 # lfs f0, lbl_80540AA0@sda21(r0)
    li 7, 0x0
    lwz 6, 0x244(31)
    fsubs 0, 1, 0
    lwz 5, 0x4(31)
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    stfs 2, 0x28(1)
    bl fn_8029D8F0
    li 0, 0x3
    stw 0, 0x234(31)
    lwz 3, 0x248(31)
    lbz 0, 0x0(3)
    cmpwi 0, 0x75
    .4byte 0x4082004C # bne .L_802B72F4
    lfs 3, 0x14(31)
    addi 4, 1, 0x14
    lfs 2, 0x10(31)
    li 5, 0x280
    lfs 0, 0xc(31)
    li 6, 0x0
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 7, 0x0
    stfs 0, 0x14(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x18(1)
    stfs 3, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x230(31)
    .4byte 0x48000048 # b .L_802B7338
L_802B72F4:
    lfs 3, 0x14(31)
    addi 4, 1, 0x8
    lfs 2, 0x10(31)
    li 5, 0x27f
    lfs 0, 0xc(31)
    li 6, 0x0
    .4byte 0xC022DAD8 # lfs f1, lbl_80540A78@sda21(r0)
    li 7, 0x0
    stfs 0, 0x8(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0xc(1)
    stfs 3, 0x10(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x230(31)
L_802B7338:
    li 0, 0x32
    stw 0, 0x240(31)
    .4byte 0x4800018C # b .L_802B74CC
L_802B7344:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_802B7428
    lwz 3, 0xc8(31)
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x41820014 # beq .L_802B7370
    lwz 3, 0xc8(31)
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x40820020 # bne .L_802B738C
L_802B7370:
    lwz 3, 0xc8(31)
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802B738C
    lwz 3, 0xc8(31)
    bl fn_80230C6C
    .4byte 0x48000134 # b .L_802B74BC
L_802B738C:
    lwz 3, 0xc8(31)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800084 # bge .L_802B741C
    lwz 3, 0xc8(31)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    stfs 0, 0x14(31)
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x418200F8 # beq .L_802B74BC
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_802B73F4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(31)
    .4byte 0x480000CC # b .L_802B74BC
L_802B73F4:
    lfs 1, 0x10(31)
    lfs 2, 0x14(31)
    lfs 0, 0xc(31)
    stfs 0, 0xa4(5)
    stfs 1, 0xa8(5)
    stfs 2, 0xac(5)
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    .4byte 0x480000A4 # b .L_802B74BC
L_802B741C:
    lwz 3, 0xc8(31)
    bl fn_80230C6C
    .4byte 0x48000098 # b .L_802B74BC
L_802B7428:
    lfs 2, 0x44(31)
    .4byte 0xC022DB04 # lfs f1, lbl_80540AA4@sda21(r0)
    .4byte 0xC002DAE8 # lfs f0, lbl_80540A88@sda21(r0)
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
    .4byte 0x40800018 # bge .L_802B747C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000044 # b .L_802B74BC
L_802B747C:
    lwz 5, 0xc8(31)
    li 4, 0x0
    li 6, 0x6
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_802B74A8
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802B74BC
L_802B74A8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802B74BC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802B74CC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 0, 0x74(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_802B74F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_802B754C
    lis 3, lbl_804A87A8@ha
    addi 0, 3, lbl_804A87A8@l
    stw 0, 0x0(30)
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802B7530
    bl fn_801EE434
L_802B7530:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B754C
    mr 3, 30
    bl dtor_80084580
L_802B754C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B7568:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC082DB00 # lfs f4, lbl_80540AA0@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC062DB08 # lfs f3, lbl_80540AA8@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC042DB0C # lfs f2, lbl_80540AAC@sda21(r0)
    lwz 0, 0x90(3)
    li 3, 0x1
    .4byte 0xC022DB10 # lfs f1, lbl_80540AB0@sda21(r0)
    extrwi 0, 0, 5, 5
    .4byte 0xC002DB14 # lfs f0, lbl_80540AB4@sda21(r0)
    stw 0, 0x238(31)
    lfs 5, 0xc(31)
    fadds 4, 5, 4
    stfs 4, 0xc(31)
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    stw 3, 0x1a4(31)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_802B75D4
    stw 3, 0x244(31)
    .4byte 0x4800000C # b .L_802B75DC
L_802B75D4:
    li 0, 0x8
    stw 0, 0x244(31)
L_802B75DC:
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x23c(31)
    stw 0, 0x234(31)
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    stw 3, 0x248(31)
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x240(31)
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    bl fn_802D7544
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802B7658
    lfs 1, 0xc(31)
    addi 4, 1, 0x8
    .4byte 0xC002DB00 # lfs f0, lbl_80540AA0@sda21(r0)
    li 7, 0x0
    lwz 6, 0x244(31)
    fsubs 0, 1, 0
    lwz 5, 0x4(31)
    lfs 2, 0x14(31)
    lfs 1, 0x10(31)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 2, 0x10(1)
    bl fn_8029D8F0
    li 0, 0x0
    stb 0, 0x11c(31)
L_802B7658:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B766C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2168@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2168@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B76BC
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
L_802B76BC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B76F4
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
L_802B76F4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B772C
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
L_802B772C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7764
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
L_802B7764:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B779C
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
L_802B779C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B77D4
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
L_802B77D4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B780C
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
L_802B780C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7844
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
L_802B7844:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B787C
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
L_802B787C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B7890:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802B78D4
    lis 5, lbl_804A8800@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8800@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B78D4
    mr 3, 30
    bl dtor_80084580
L_802B78D4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B78F0:
    blr

fn_802B78F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820090 # beq .L_802B79A0
    .4byte 0x4080008C # bge .L_802B79A0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802B7924
    .4byte 0x48000080 # b .L_802B79A0
L_802B7924:
    lis 4, lbl_8046CB50@ha
    lis 3, lbl_8046CB40@ha
    addi 29, 4, lbl_8046CB50@l
    li 27, 0x0
    addi 28, 3, lbl_8046CB40@l
    li 30, 0x1
    .4byte 0x48000054 # b .L_802B7990
L_802B7940:
    bl GetRoomConfigRecord
    lwz 5, 0x90(31)
    lwz 4, 0x0(28)
    lwz 0, 0x0(29)
    and 4, 5, 4
    srw 4, 4, 0
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_802B7984
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    stw 30, 0x230(31)
L_802B7984:
    addi 29, 29, 0x4
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_802B7990:
    lwz 0, 0x234(31)
    cmpw 27, 0
    .4byte 0x4180FFA8 # blt .L_802B7940
    .4byte 0x4800008C # b .L_802B7A28
L_802B79A0:
    lis 4, lbl_8046CB50@ha
    lis 3, lbl_8046CB40@ha
    addi 28, 4, lbl_8046CB50@l
    li 27, 0x0
    addi 29, 3, lbl_8046CB40@l
    li 30, 0x0
    .4byte 0x48000038 # b .L_802B79F0
L_802B79BC:
    bl GetRoomConfigRecord
    lwz 5, 0x90(31)
    lwz 4, 0x0(29)
    lwz 0, 0x0(28)
    and 4, 5, 4
    srw 4, 4, 0
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802B79E4
    addi 27, 27, 0x1
L_802B79E4:
    addi 28, 28, 0x4
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_802B79F0:
    lwz 0, 0x234(31)
    cmpw 30, 0
    .4byte 0x4180FFC4 # blt .L_802B79BC
    cmpwi 27, 0x0
    .4byte 0x40820028 # bne .L_802B7A28
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x230(31)
L_802B7A28:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B7A3C:
    li 0, 0x0
    stw 0, 0x230(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 27
    stw 0, 0x234(3)
    blr

fn_802B7A54:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2268@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2268@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7AA4
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
L_802B7AA4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7ADC
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
L_802B7ADC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7B14
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
L_802B7B14:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7B4C
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
L_802B7B4C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7B84
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
L_802B7B84:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7BBC
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
L_802B7BBC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7BF4
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
L_802B7BF4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7C2C
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
L_802B7C2C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B7C64
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
L_802B7C64:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B7C78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802B7CBC
    lis 5, lbl_804A886C@ha
    li 4, 0x0
    addi 0, 5, lbl_804A886C@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B7CBC
    mr 3, 30
    bl dtor_80084580
L_802B7CBC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B7CD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    bl fn_802D9FBC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B7D1C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 5
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 4
    lwz 3, 0x298(3)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x10(1), 0, 0
    lfs 2, 0xc(30)
    lfs 1, 0x10(1)
    stfs 0, 0x18(1)
    fsubs 0, 2, 1
    fabs 0, 0
    frsp 0, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x28
    .4byte 0x40800010 # bge .L_802B7D90
    li 0, 0x1
    stw 0, 0x250(30)
    .4byte 0x48000020 # b .L_802B7DAC
L_802B7D90:
    fcmpo cr0, 2, 1
    .4byte 0x40800010 # bge .L_802B7DA4
    li 0, 0x2
    stw 0, 0x250(30)
    .4byte 0x4800000C # b .L_802B7DAC
L_802B7DA4:
    li 0, 0x4
    stw 0, 0x250(30)
L_802B7DAC:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x40
    li 5, 0x0
    bl fn_801F0E34
    lwz 29, 0x4(30)
    lwz 3, 0x298(30)
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x40820260 # bne .L_802B8030
    lwz 3, 0x298(30)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lis 4, lbl_80539D44@ha
    lfs 1, 0xc(30)
    lfs 6, 0x4(3)
    lfs 0, 0x10(30)
    fsubs 5, 2, 1
    stfs 2, 0x8(1)
    fsubs 4, 6, 0
    .4byte 0xC022DB18 # lfs f1, lbl_80540AB8@sda21(r0)
    stfs 5, 0x284(30)
    stfs 4, 0x288(30)
    lfs 3, 0x284(30)
    lfs 2, 0x288(30)
    lfs 0, lbl_80539D44@l(4)
    fmuls 3, 3, 3
    fmuls 2, 2, 2
    stfs 5, 0x8(1)
    fmuls 0, 1, 0
    stfs 6, 0xc(1)
    fadds 5, 3, 2
    stfs 4, 0xc(1)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_802B7E88
    .4byte 0xC002DB1C # lfs f0, lbl_80540ABC@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B7E50
    .4byte 0x48000024 # b .L_802B7E70
L_802B7E50:
    frsqrte 3, 5
    .4byte 0xC042DB20 # lfs f2, lbl_80540AC0@sda21(r0)
    .4byte 0xC002DB24 # lfs f0, lbl_80540AC4@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 5, 2, 0
L_802B7E70:
    lfs 0, 0x284(30)
    fmuls 0, 0, 5
    stfs 0, 0x284(30)
    lfs 0, 0x288(30)
    fmuls 0, 0, 5
    stfs 0, 0x288(30)
L_802B7E88:
    slwi 28, 28, 2
    lfs 1, 0x284(30)
    add 29, 30, 28
    .4byte 0xC042DB28 # lfs f2, lbl_80540AC8@sda21(r0)
    lfs 0, 0x268(29)
    addi 3, 30, 0x3c
    fmuls 0, 1, 0
    stfs 0, 0x254(30)
    lfs 1, 0x288(30)
    lfs 0, 0x268(29)
    fmuls 0, 1, 0
    stfs 0, 0x258(30)
    lfs 1, 0x254(30)
    lfs 3, 0x260(29)
    bl fn_801F71A4
    lfs 1, 0x258(30)
    addi 3, 30, 0x40
    .4byte 0xC042DB28 # lfs f2, lbl_80540AC8@sda21(r0)
    lfs 3, 0x260(29)
    bl fn_801F71A4
    .4byte 0xC042DB30 # lfs f2, lbl_80540AD0@sda21(r0)
    addi 3, 28, 0x260
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    add 3, 30, 3
    fmr 3, 2
    bl fn_801F71A4
    psq_l 1, 0xc(30), 0, 0
    li 29, 0x12
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 28, 0x114(30)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_802B7F48
    lwz 3, 0x298(30)
    bl fn_80237774
    cmpwi 3, 0x1
    .4byte 0x4081000C # ble .L_802B7F40
    subi 28, 3, 0x1
    .4byte 0x48000008 # b .L_802B7F44
L_802B7F40:
    li 28, 0x0
L_802B7F44:
    li 29, 0x4
L_802B7F48:
    lwz 3, 0x298(30)
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200C0 # bne .L_802B8018
    lwz 3, 0x298(30)
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x408200B0 # bne .L_802B8018
    mr 3, 30
    mr 4, 28
    mr 6, 29
    li 5, -0x1
    bl fn_801F2B7C
    clrlwi. 28, 3, 24
    .4byte 0x418200D4 # beq .L_802B8058
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x8c
    srawi 0, 28, 1
    stw 3, 0x244(30)
    lis 3, lbl_804A8858@ha
    slwi 0, 0, 2
    psq_l 1, 0xc(30), 0, 0
    addi 3, 3, lbl_804A8858@l
    lfs 0, 0x14(30)
    psq_st 1, 0x234(30), 0, 0
    stfs 0, 0x23c(30)
    lwz 4, 0x298(30)
    lwzx 0, 3, 0
    cmpw 4, 0
    .4byte 0x40820010 # bne .L_802B7FE0
    stw 31, 0x230(30)
    li 0, 0x0
    stw 0, 0x250(30)
L_802B7FE0:
    li 0, 0x64
    stw 0, 0x280(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_802B8058
    li 0, 0x0
    lis 4, 0x4
    stb 0, 0x11c(30)
    mr 3, 30
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000044 # b .L_802B8058
L_802B8018:
    li 3, 0xb4
    li 0, 0x0
    stw 3, 0x244(30)
    stw 31, 0x230(30)
    stw 0, 0x250(30)
    .4byte 0x4800002C # b .L_802B8058
L_802B8030:
    li 0, 0xb4
    li 3, 0x3
    stw 0, 0x244(30)
    li 0, 0x0
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x234(30), 0, 0
    stfs 0, 0x23c(30)
    stw 3, 0x230(30)
    stw 0, 0x250(30)
L_802B8058:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802B8078:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 3, 0x298(3)
    bl fn_8023DE58
    stw 3, 0x29c(31)
    lwz 3, 0x29c(31)
    cmpwi 3, 0x8
    .4byte 0x408000C8 # bge .L_802B8168
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x418000A8 # blt .L_802B8154
    psq_l 0, 0x28c(31), 0, 0
    addi 4, 1, 0x2c
    lfs 1, 0x294(31)
    li 5, 0x17d
    .4byte 0xC042DB18 # lfs f2, lbl_80540AB8@sda21(r0)
    li 6, 0x1
    psq_st 0, 0xc(31), 0, 0
    li 7, 0x0
    .4byte 0xC002DB34 # lfs f0, lbl_80540AD4@sda21(r0)
    li 8, 0x0
    stfs 1, 0x14(31)
    li 9, 0x0
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    li 10, 0x1
    lwz 0, 0x29c(31)
    stw 0, 0x4(31)
    lfs 3, 0xc(31)
    stfs 3, 0x2c(1)
    lfs 3, 0x10(31)
    stfs 3, 0x30(1)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 3, 0
    stfs 3, 0x34(1)
    stfs 2, 0x30(1)
    stfs 0, 0x34(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    li 6, 0x3
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    li 0, 0x32
    li 3, 0x0
    stw 0, 0x244(31)
    li 0, 0x4
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    .4byte 0x480002BC # b .L_802B840C
L_802B8154:
    li 3, 0x2
    li 0, 0x12c
    stw 3, 0x230(31)
    stw 0, 0x244(31)
    .4byte 0x480002A8 # b .L_802B840C
L_802B8168:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x418000C4 # blt .L_802B8234
    cmpw 3, 0
    .4byte 0x40820018 # bne .L_802B8190
    li 3, 0x7
    li 0, 0x12c
    stw 3, 0x230(31)
    stw 0, 0x244(31)
    .4byte 0x48000280 # b .L_802B840C
L_802B8190:
    psq_l 0, 0x28c(31), 0, 0
    addi 4, 1, 0x20
    lfs 1, 0x294(31)
    li 5, 0x17d
    .4byte 0xC042DB18 # lfs f2, lbl_80540AB8@sda21(r0)
    li 6, 0x1
    psq_st 0, 0xc(31), 0, 0
    li 7, 0x0
    .4byte 0xC002DB34 # lfs f0, lbl_80540AD4@sda21(r0)
    li 8, 0x0
    stfs 1, 0x14(31)
    li 9, 0x0
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    li 10, 0x1
    lwz 0, 0x29c(31)
    stw 0, 0x4(31)
    lfs 3, 0xc(31)
    stfs 3, 0x20(1)
    lfs 3, 0x10(31)
    stfs 3, 0x24(1)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    fadds 0, 3, 0
    stfs 3, 0x28(1)
    stfs 2, 0x24(1)
    stfs 0, 0x28(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    li 6, 0x3
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    li 0, 0x32
    li 3, 0x0
    stw 0, 0x244(31)
    li 0, 0x4
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    .4byte 0x480001DC # b .L_802B840C
L_802B8234:
    lfs 0, 0xc(31)
    addi 4, 1, 0x14
    .4byte 0xC042DB18 # lfs f2, lbl_80540AB8@sda21(r0)
    li 5, 0x17d
    stfs 0, 0x14(1)
    li 6, 0x1
    .4byte 0xC002DB34 # lfs f0, lbl_80540AD4@sda21(r0)
    li 7, 0x0
    lfs 3, 0x10(31)
    li 8, 0x0
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    li 9, 0x0
    stfs 3, 0x18(1)
    fadds 2, 3, 2
    li 10, 0x1
    lfs 3, 0x14(31)
    fadds 0, 3, 0
    stfs 3, 0x1c(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    li 6, 0x3
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x28c(31), 0, 0
    stfs 0, 0x294(31)
    lwz 3, 0x298(31)
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    li 4, 0xb4
    lfs 0, 0x8(3)
    li 3, 0x0
    li 0, 0x5
    .4byte 0xC022DB34 # lfs f1, lbl_80540AD4@sda21(r0)
    psq_st 2, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    lwz 5, 0x29c(31)
    stw 5, 0x4(31)
    stw 4, 0x244(31)
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    lfs 0, 0xc(31)
    fsubs 0, 0, 1
    stfs 0, 0x8(1)
    lfs 0, 0x10(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(1)
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x81
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0xC022DB34 # lfs f1, lbl_80540AD4@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    lfs 0, 0x10(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(1)
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x81
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lfs 0, 0xc(31)
    .4byte 0xC022DB34 # lfs f1, lbl_80540AD4@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x8(1)
    lfs 0, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x81
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0xC022DB34 # lfs f1, lbl_80540AD4@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    lfs 0, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x81
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802B840C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802B8420:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    li 5, 0x173
    stw 0, 0x14(1)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    addi 4, 31, 0xc
    li 9, 0x0
    lwz 3, 0x4(3)
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    lis 4, 0x4
    stb 0, 0x11c(31)
    mr 3, 31
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B848C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182013C # beq .L_802B85DC
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    li 11, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_802B851C
L_802B84BC:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_802B851C:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802B84BC
    li 11, 0x0
    li 10, 0x1
    stb 11, 0x24(1)
    li 12, -0x1
    li 9, 0x3
    li 8, 0x2
    stb 11, 0x25(1)
    lis 5, lbl_8046CB60@ha
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    lis 4, lbl_8046CB70@ha
    stw 12, 0x18(1)
    li 0, 0x8
    addi 5, 5, lbl_8046CB60@l
    fmr 2, 1
    stw 11, 0x1c(1)
    addi 4, 4, lbl_8046CB70@l
    addi 6, 1, 0x8
    li 7, 0x7
    stw 11, 0x20(1)
    stb 11, 0x26(1)
    stb 10, 0x27(1)
    stb 10, 0x28(1)
    stb 11, 0x29(1)
    stb 11, 0x2a(1)
    stb 11, 0x2b(1)
    stb 11, 0x2c(1)
    stb 11, 0x2d(1)
    stb 10, 0x2e(1)
    stw 9, 0x30(1)
    stb 10, 0x34(1)
    stb 11, 0x35(1)
    stb 11, 0x36(1)
    stw 12, 0x38(1)
    stw 11, 0x3c(1)
    stw 8, 0x40(1)
    stb 10, 0x24(1)
    stb 10, 0x25(1)
    lwz 8, 0x270(3)
    stb 8, 0x1b(1)
    stw 0, 0x38(1)
    lwz 0, 0x24c(3)
    slwi 0, 0, 2
    lwzx 5, 5, 0
    addi 5, 5, 0x466
    bl fn_801F06F0
L_802B85DC:
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802B85EC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0xfe(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802B8624
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000610 # b .L_802B8C30
L_802B8624:
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x41810598 # bgt .L_802B8BC4
    lis 4, jumptable_804A88C0@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A88C0@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    li 5, 0x54e
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    li 5, 0x172
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    li 5, 0x59
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480004FC # b .L_802B8BC4
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x40820254 # bne .L_802B8928
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_802B88D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408201A4 # bne .L_802B88A0
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408200B0 # bne .L_802B87B8
L_802B870C:
    lwz 3, 0x27c(31)
    li 0, 0x1
    slwi 3, 3, 2
    addi 3, 3, 0x2a0
    lwzx 3, 31, 3
    stw 3, 0x298(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x298(31)
    lbz 4, 0x82(4)
    slw 0, 0, 3
    clrlwi 0, 0, 24
    and 4, 4, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802B8760
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820030 # beq .L_802B878C
L_802B8760:
    lwz 3, 0x27c(31)
    addi 0, 3, 0x1
    stw 0, 0x27c(31)
    lwz 0, 0x27c(31)
    cmpwi 0, 0x4
    .4byte 0x4180FF98 # blt .L_802B870C
    li 3, 0x78
    li 0, 0x0
    stw 3, 0x244(31)
    stw 0, 0x27c(31)
    .4byte 0x4BFFFF84 # b .L_802B870C
L_802B878C:
    mr 3, 31
    bl fn_802B8078
    lwz 3, 0x27c(31)
    addi 0, 3, 0x1
    stw 0, 0x27c(31)
    lwz 0, 0x27c(31)
    cmpwi 0, 0x4
    .4byte 0x4180041C # blt .L_802B8BC4
    li 0, 0x0
    stw 0, 0x27c(31)
    .4byte 0x48000410 # b .L_802B8BC4
L_802B87B8:
    lwz 0, 0x27c(31)
    cmpwi 0, 0x4
    .4byte 0x408000C0 # bge .L_802B8880
L_802B87C4:
    lwz 3, 0x27c(31)
    li 0, 0x1
    slwi 3, 3, 2
    addi 3, 3, 0x2a0
    lwzx 3, 31, 3
    stw 3, 0x298(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x298(31)
    lbz 4, 0x82(4)
    slw 0, 0, 3
    clrlwi 0, 0, 24
    and 4, 4, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_802B8828
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802B8828
    lwz 3, 0x298(31)
    bl fn_80237774
    cmpwi 3, 0x1
    .4byte 0x41810038 # bgt .L_802B885C
L_802B8828:
    lwz 3, 0x27c(31)
    addi 0, 3, 0x1
    stw 0, 0x27c(31)
    lwz 0, 0x27c(31)
    cmpwi 0, 0x4
    .4byte 0x4180FF88 # blt .L_802B87C4
    li 0, 0x0
    lis 4, 0x4
    stb 0, 0x11c(31)
    mr 3, 31
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
L_802B885C:
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x41820360 # beq .L_802B8BC4
    mr 3, 31
    bl fn_802B8078
    lwz 3, 0x27c(31)
    addi 0, 3, 0x1
    stw 0, 0x27c(31)
    .4byte 0x48000348 # b .L_802B8BC4
L_802B8880:
    li 0, 0x0
    lis 4, 0x4
    stb 0, 0x11c(31)
    mr 3, 31
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000328 # b .L_802B8BC4
L_802B88A0:
    lwz 3, 0x298(31)
    subi 0, 3, 0x1
    stw 0, 0x298(31)
    lwz 0, 0x298(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802B88C0
    li 0, 0x3
    stw 0, 0x298(31)
L_802B88C0:
    mr 3, 31
    bl fn_802B8078
    lwz 3, 0x27c(31)
    addi 0, 3, 0x1
    stw 0, 0x27c(31)
    .4byte 0x480002F0 # b .L_802B8BC4
L_802B88D8:
    lwz 4, 0x274(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042DB34 # lfs f2, lbl_80540AD4@sda21(r0)
    addi 0, 4, 0xc0
    stw 0, 0x274(31)
    lwz 0, 0x274(31)
    lfs 0, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x274(31)
    lfs 0, 0x238(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480002A0 # b .L_802B8BC4
L_802B8928:
    lwz 3, 0x298(31)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lis 4, lbl_80539D44@ha
    lfs 7, 0x8(3)
    psq_st 0, 0x10(1), 0, 0
    .4byte 0xC002DB38 # lfs f0, lbl_80540AD8@sda21(r0)
    lfs 1, 0x14(1)
    lfs 2, 0x10(1)
    fsubs 6, 1, 0
    lfs 1, 0xc(31)
    stfs 2, 0x8(1)
    fsubs 5, 2, 1
    lfs 0, 0x10(31)
    frsp 2, 6
    .4byte 0xC022DB18 # lfs f1, lbl_80540AB8@sda21(r0)
    stfs 5, 0x284(31)
    fsubs 4, 2, 0
    stfs 6, 0xc(1)
    stfs 4, 0x288(31)
    lfs 0, 0x284(31)
    lfs 2, 0x288(31)
    fmuls 3, 0, 0
    lfs 0, lbl_80539D44@l(4)
    fmuls 2, 2, 2
    stfs 6, 0x14(1)
    fmuls 0, 1, 0
    stfs 7, 0x18(1)
    fadds 6, 3, 2
    stfs 5, 0x8(1)
    fcmpo cr0, 6, 0
    stfs 4, 0xc(1)
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_802B89FC
    .4byte 0xC002DB1C # lfs f0, lbl_80540ABC@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B89C4
    .4byte 0x48000024 # b .L_802B89E4
L_802B89C4:
    frsqrte 3, 6
    .4byte 0xC042DB20 # lfs f2, lbl_80540AC0@sda21(r0)
    .4byte 0xC002DB24 # lfs f0, lbl_80540AC4@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_802B89E4:
    lfs 0, 0x284(31)
    fmuls 0, 0, 6
    stfs 0, 0x284(31)
    lfs 0, 0x288(31)
    fmuls 0, 0, 6
    stfs 0, 0x288(31)
L_802B89FC:
    lfs 1, 0x284(31)
    addi 3, 31, 0x3c
    lfs 0, 0x26c(31)
    .4byte 0xC042DB28 # lfs f2, lbl_80540AC8@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x254(31)
    lfs 1, 0x288(31)
    lfs 0, 0x26c(31)
    fmuls 0, 1, 0
    stfs 0, 0x258(31)
    lfs 1, 0x254(31)
    lfs 3, 0x264(31)
    bl fn_801F71A4
    lfs 1, 0x258(31)
    addi 3, 31, 0x40
    .4byte 0xC042DB28 # lfs f2, lbl_80540AC8@sda21(r0)
    lfs 3, 0x264(31)
    bl fn_801F71A4
    .4byte 0xC042DB30 # lfs f2, lbl_80540AD0@sda21(r0)
    addi 3, 31, 0x264
    .4byte 0xC022DB2C # lfs f1, lbl_80540ACC@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 3, 0x280(31)
    subi 0, 3, 0x1
    stw 0, 0x280(31)
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x40820138 # bne .L_802B8BC4
    psq_l 1, 0xc(31), 0, 0
    lis 3, 0x1
    lfs 0, 0x14(31)
    addi 0, 3, -0x8000
    psq_st 1, 0x234(31), 0, 0
    stfs 0, 0x23c(31)
    stw 0, 0x274(31)
    .4byte 0x48000118 # b .L_802B8BC4
    li 4, 0x0
    li 5, 0x1
    bl fn_802B7D1C
    .4byte 0x48000108 # b .L_802B8BC4
    lwz 5, 0x274(31)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    .4byte 0xC042DB34 # lfs f2, lbl_80540AD4@sda21(r0)
    addi 0, 5, 0xc0
    stw 0, 0x274(31)
    lwz 0, 0x274(31)
    lfs 0, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x274(31)
    lfs 0, 0x238(31)
    rlwinm 0, 0, 30, 18, 28
    add 4, 4, 0
    lfs 1, 0x4(4)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    lwz 4, 0x244(31)
    subi 0, 4, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_802B8BC4
    bl fn_802B8078
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000088 # b .L_802B8BC4
    lwz 4, 0x244(31)
    subi 0, 4, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_802B8BC4
    li 0, 0x2
    lis 4, 0x4
    stw 0, 0x230(31)
    li 0, 0x12c
    addi 4, 4, 0x3f
    li 5, 0x0
    stw 0, 0x244(31)
    bl fn_801F0E34
    .4byte 0x4800004C # b .L_802B8BC4
    lwz 4, 0x244(31)
    subi 0, 4, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_802B8BC4
    li 0, 0x7
    lis 4, 0x4
    stw 0, 0x230(31)
    li 0, 0x12c
    addi 4, 4, 0x3f
    li 5, 0x0
    stw 0, 0x244(31)
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_802B8BC4
    li 4, 0x1
    li 5, 0x8
    bl fn_802B7D1C
L_802B8BC4:
    lwz 3, 0x270(31)
    cmpwi 3, 0xff
    .4byte 0x4080000C # bge .L_802B8BD8
    addi 0, 3, 0x1
    stw 0, 0x270(31)
L_802B8BD8:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x40820048 # bne .L_802B8C28
    lwz 3, 0x248(31)
    subi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_802B8C30
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_802B8C1C
    li 0, 0x0
    stw 0, 0x24c(31)
L_802B8C1C:
    li 0, 0x14
    stw 0, 0x248(31)
    .4byte 0x4800000C # b .L_802B8C30
L_802B8C28:
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_802B8C30:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802B8C44:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022DB3C # lfs f1, lbl_80540ADC@sda21(r0)
    li 5, 0xb4
    stw 0, 0x24(1)
    li 4, 0x14
    .4byte 0xC002DB40 # lfs f0, lbl_80540AE0@sda21(r0)
    li 0, 0x4
    stw 31, 0x1c(1)
    .4byte 0xC062DB2C # lfs f3, lbl_80540ACC@sda21(r0)
    stw 30, 0x18(1)
    li 30, 0x0
    .4byte 0xC042DB44 # lfs f2, lbl_80540AE4@sda21(r0)
    stw 29, 0x14(1)
    mr 29, 3
    mr 31, 29
    stfs 1, 0x60(3)
    li 3, 0x0
    stfs 1, 0x64(29)
    .4byte 0xC022DB48 # lfs f1, lbl_80540AE8@sda21(r0)
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
    .4byte 0xC002DB4C # lfs f0, lbl_80540AEC@sda21(r0)
    stw 5, 0x244(29)
    stw 4, 0x248(29)
    stw 3, 0x24c(29)
    stw 3, 0x250(29)
    stfs 3, 0x260(29)
    stfs 2, 0x268(29)
    stfs 1, 0x264(29)
    stfs 0, 0x26c(29)
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x234(29), 0, 0
    stfs 0, 0x23c(29)
    stw 3, 0x270(29)
    stw 3, 0x274(29)
    stw 0, 0x298(29)
    stw 3, 0x280(29)
L_802B8CE0:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F6058
    addi 30, 30, 0x1
    stw 3, 0x2a0(31)
    cmpwi 30, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FFE4 # blt .L_802B8CE0
    li 6, 0x0
    lis 4, 0x4
    stw 6, 0x27c(29)
    li 0, 0x1
    mr 3, 29
    addi 4, 4, 0x3f
    stb 0, 0x196(29)
    li 5, 0x0
    stw 6, 0x230(29)
    bl fn_801F0E34
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x197
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B8D58:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2368@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2368@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8DA8
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
L_802B8DA8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8DE0
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
L_802B8DE0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8E18
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
L_802B8E18:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8E50
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
L_802B8E50:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8E88
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
L_802B8E88:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8EC0
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
L_802B8EC0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8EF8
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
L_802B8EF8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8F30
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
L_802B8F30:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B8F68
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
L_802B8F68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B8F7C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802B8FC0
    lis 5, lbl_804A88E8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A88E8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B8FC0
    mr 3, 30
    bl dtor_80084580
L_802B8FC0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B8FDC:
    blr

fn_802B8FE0:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stfd 29, 0x90(1)
    psq_st 29, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    stw 28, 0x80(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x4182091C # beq .L_802B993C
    .4byte 0x40800918 # bge .L_802B993C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802B9034
    .4byte 0x4800090C # b .L_802B993C
L_802B9034:
    lfs 1, 0x244(31)
    .4byte 0xC042DB50 # lfs f2, lbl_80540AF0@sda21(r0)
    fcmpo cr0, 1, 2
    .4byte 0x41810010 # bgt .L_802B9050
    lfs 0, 0x248(31)
    fcmpo cr0, 0, 2
    .4byte 0x4081002C # ble .L_802B9078
L_802B9050:
    lwz 0, 0x4(31)
    lfs 2, 0x248(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802B9078
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    li 5, 0x5
    li 6, 0x0
    lwz 3, 0x20(3)
    bl fn_802F601C
L_802B9078:
    lbz 0, 0x24c(31)
    cmplwi 0, 0x1
    .4byte 0x4082006C # bne .L_802B90EC
    lfs 1, 0x244(31)
    .4byte 0xC002DB54 # lfs f0, lbl_80540AF4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_802B90A0
    .4byte 0xC002DB58 # lfs f0, lbl_80540AF8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x244(31)
L_802B90A0:
    lfs 1, 0x248(31)
    .4byte 0xC002DB54 # lfs f0, lbl_80540AF4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_802B90BC
    .4byte 0xC002DB58 # lfs f0, lbl_80540AF8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x248(31)
L_802B90BC:
    lfs 0, 0x244(31)
    .4byte 0xC022DB54 # lfs f1, lbl_80540AF4@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820094 # bne .L_802B9160
    lfs 0, 0x248(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820084 # bne .L_802B9160
    li 0, 0x0
    stb 0, 0x24c(31)
    .4byte 0x48000078 # b .L_802B9160
L_802B90EC:
    lfs 2, 0x248(31)
    .4byte 0xC022DB50 # lfs f1, lbl_80540AF0@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810024 # ble .L_802B911C
    .4byte 0xC002DB5C # lfs f0, lbl_80540AFC@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x248(31)
    lfs 0, 0x248(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B911C
    stfs 1, 0x248(31)
L_802B911C:
    lfs 1, 0x248(31)
    .4byte 0xC002DB60 # lfs f0, lbl_80540B00@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820034 # bne .L_802B9160
    lfs 2, 0x244(31)
    .4byte 0xC022DB50 # lfs f1, lbl_80540AF0@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810024 # ble .L_802B9160
    .4byte 0xC002DB5C # lfs f0, lbl_80540AFC@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x244(31)
    lfs 0, 0x244(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B9160
    stfs 1, 0x244(31)
L_802B9160:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x418106CC # bgt .L_802B9834
    .4byte 0xCBE2DB98 # lfd f31, lbl_80540B38@sda21(r0)
    li 29, 0x0
    lis 30, 0x4330
L_802B9178:
    mr 3, 29
    bl fn_8023725C
    xoris 0, 3, 0x8000
    stw 30, 0x78(1)
    lfs 3, 0x6c(31)
    mr 3, 29
    stw 0, 0x7c(1)
    addi 4, 1, 0x64
    lfs 2, 0x68(31)
    addi 6, 1, 0x2c
    lfd 0, 0x78(1)
    lfs 1, 0x64(31)
    fsubs 30, 0, 31
    lfs 0, 0x60(31)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    fmuls 7, 3, 30
    fmuls 6, 2, 30
    fmuls 3, 1, 30
    fmuls 1, 0, 30
    stfs 7, 0x70(1)
    fadds 0, 7, 5
    fadds 2, 3, 5
    stfs 3, 0x68(1)
    fadds 3, 1, 4
    stfs 1, 0x64(1)
    fadds 1, 6, 4
    stfs 6, 0x6c(1)
    stfs 3, 0x64(1)
    stfs 2, 0x68(1)
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    lwz 5, 0x4(31)
    bl fn_8023AAF8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820620 # bne .L_802B9828
    li 0, 0x5
    .4byte 0xC002DB50 # lfs f0, lbl_80540AF0@sda21(r0)
    stw 0, 0x240(31)
    lfs 4, 0x2c(1)
    lfs 3, 0xc(31)
    lfs 2, 0x30(1)
    lfs 1, 0x10(31)
    fsubs 3, 4, 3
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 29, 2, 1
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B924C
    .4byte 0x48000028 # b .L_802B9270
L_802B924C:
    frsqrte 3, 29
    .4byte 0xC042DB64 # lfs f2, lbl_80540B04@sda21(r0)
    .4byte 0xC002DB68 # lfs f0, lbl_80540B08@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 29, 1, 0
    fmuls 0, 2, 0
    fmuls 29, 29, 0
L_802B9270:
    .4byte 0xC002DB6C # lfs f0, lbl_80540B0C@sda21(r0)
    fcmpo cr0, 29, 0
    .4byte 0x40800020 # bge .L_802B9298
    lfs 0, 0x244(31)
    .4byte 0xC022DB50 # lfs f1, lbl_80540AF0@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x41810034 # bgt .L_802B92BC
    lfs 0, 0x248(31)
    fcmpo cr0, 0, 1
    .4byte 0x41810028 # bgt .L_802B92BC
L_802B9298:
    mr 3, 29
    bl fn_8023A5B8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820560 # bne .L_802B9808
    .4byte 0xC002DB70 # lfs f0, lbl_80540B10@sda21(r0)
    fmuls 0, 0, 30
    fcmpo cr0, 29, 0
    .4byte 0x40800550 # bge .L_802B9808
L_802B92BC:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4081049C # ble .L_802B9760
    cmpwi 0, 0x8
    .4byte 0x41810494 # bgt .L_802B9760
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x58(1), 0, 0
    stfs 0, 0x60(1)
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x40820024 # bne .L_802B9310
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_802B9310
    lfs 1, 0x58(1)
    .4byte 0xC002DB74 # lfs f0, lbl_80540B14@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x58(1)
L_802B9310:
    lwz 29, 0x234(31)
    cmpwi 29, 0x5
    .4byte 0x4180000C # blt .L_802B9324
    cmpwi 29, 0x8
    .4byte 0x40820038 # bne .L_802B9358
L_802B9324:
    cmpwi 29, 0x5
    li 30, 0x3
    .4byte 0x40800008 # bge .L_802B9334
    addi 30, 29, 0x3
L_802B9334:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    mr 7, 30
    addi 6, 1, 0x58
    addi 4, 4, 0x5059
    bl fn_801F8544
    mr 29, 3
    .4byte 0x48000070 # b .L_802B93C4
L_802B9358:
    cmpwi 29, 0x5
    .4byte 0x4182000C # beq .L_802B9368
    cmpwi 29, 0x6
    .4byte 0x40820038 # bne .L_802B939C
L_802B9368:
    bl SpatialRegistry_GetBase
    subi 0, 29, 0x5
    lis 4, 0x4b45
    mulli 0, 0, 0x6
    lwz 5, 0x4(31)
    addi 4, 4, 0x5930
    addi 6, 1, 0x58
    ori 7, 0, 0x300
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 29, 3
    .4byte 0x4800002C # b .L_802B93C4
L_802B939C:
    bl SpatialRegistry_GetBase
    lis 4, 0x4248
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 1, 0x58
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 29, 3
L_802B93C4:
    cmpwi 29, 0x0
    .4byte 0x41800328 # blt .L_802B96F0
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820314 # beq .L_802B96F0
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x408200D8 # bne .L_802B94C4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC082DB54 # lfs f4, lbl_80540AF4@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062DB60 # lfs f3, lbl_80540B00@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC042DB78 # lfs f2, lbl_80540B18@sda21(r0)
    .4byte 0xC022DB80 # lfs f1, lbl_80540B20@sda21(r0)
    .4byte 0xC002DB7C # lfs f0, lbl_80540B1C@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x20(1)
    lfs 5, 0x20(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 5, 5, 4
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 5, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x54(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fnmsubs 1, 3, 1, 2
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x50(1)
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 4
    fnmsubs 1, 3, 1, 2
    stfs 1, 0x4c(1)
    psq_l 1, 0x4c(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x480001E0 # b .L_802B96A0
L_802B94C4:
    subis 0, 4, 0x4248
    cmplwi 0, 0x5254
    .4byte 0x40820108 # bne .L_802B95D4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 5, 0x19
    lis 4, lbl_8052EBC0@ha
    .4byte 0xC0A2DB54 # lfs f5, lbl_80540AF4@sda21(r0)
    lwz 0, 0xb4(6)
    addi 7, 5, 0x660d
    addi 5, 4, lbl_8052EBC0@l
    .4byte 0xC0C2DB84 # lfs f6, lbl_80540B24@sda21(r0)
    mullw 4, 0, 7
    .4byte 0xC082DB78 # lfs f4, lbl_80540B18@sda21(r0)
    .4byte 0xC042DB88 # lfs f2, lbl_80540B28@sda21(r0)
    .4byte 0xC022DB80 # lfs f1, lbl_80540B20@sda21(r0)
    .4byte 0xC002DB7C # lfs f0, lbl_80540B1C@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(6)
    lwz 0, 0xb4(8)
    srwi 6, 4, 9
    mullw 4, 0, 7
    oris 0, 6, 0x3f80
    stw 0, 0x28(1)
    lfs 3, 0x28(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 3, 3, 5
    stw 0, 0xb4(8)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    fmuls 3, 6, 3
    lwz 4, 0xb4(8)
    lwz 0, 0xb4(9)
    srwi 6, 4, 9
    fctiwz 3, 3
    mullw 4, 0, 7
    oris 0, 6, 0x3f80
    stw 0, 0x24(1)
    stfd 3, 0x78(1)
    addis 4, 4, 0x3c6f
    lfs 3, 0x24(1)
    subi 0, 4, 0xca1
    lwz 4, 0x7c(1)
    stw 0, 0xb4(9)
    fsubs 3, 3, 5
    rlwinm 6, 4, 30, 18, 28
    lwz 0, 0xb4(9)
    add 4, 5, 6
    fmadds 4, 4, 3, 2
    lfsx 3, 5, 6
    srwi 0, 0, 9
    lfs 2, 0x4(4)
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    fmuls 3, 4, 3
    fmuls 2, 4, 2
    lfs 4, 0x14(1)
    fsubs 4, 4, 5
    stfs 3, 0x40(1)
    stfs 2, 0x44(1)
    fmadds 0, 1, 4, 0
    psq_l 1, 0x40(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x48(1)
    stfs 0, 0x44(3)
    .4byte 0x480000D0 # b .L_802B96A0
L_802B95D4:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC062DB54 # lfs f3, lbl_80540AF4@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC042DB64 # lfs f2, lbl_80540B04@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC022DB80 # lfs f1, lbl_80540B20@sda21(r0)
    .4byte 0xC002DB7C # lfs f0, lbl_80540B1C@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 4, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 4, 4, 3
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 4, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x3c(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 3
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fsubs 1, 2, 1
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x38(1)
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 3
    fsubs 1, 2, 1
    stfs 1, 0x34(1)
    psq_l 1, 0x34(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_802B96A0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DB8C # lfs f1, lbl_80540B2C@sda21(r0)
    li 5, 0x291
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DB64 # lfs f1, lbl_80540B04@sda21(r0)
    li 5, 0x5c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802B96F0:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x408200CC # bne .L_802B97C8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x408200BC # bne .L_802B97C8
    lfs 1, 0x58(1)
    li 29, 0x388
    .4byte 0xC002DB90 # lfs f0, lbl_80540B30@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x58(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x5
    .4byte 0x41820008 # beq .L_802B9734
    li 29, 0x389
L_802B9734:
    bl SpatialRegistry_GetBase
    subi 0, 29, 0x12b
    lis 4, 0x4a49
    lwz 5, 0x4(31)
    addi 4, 4, 0x4a49
    addi 6, 1, 0x58
    oris 7, 0, 0x211
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800006C # b .L_802B97C8
L_802B9760:
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802B9770
    li 28, 0x4
    .4byte 0x48000010 # b .L_802B977C
L_802B9770:
    cmpwi 0, 0x9
    .4byte 0x40820008 # bne .L_802B977C
    li 28, 0x5
L_802B977C:
    bl SpatialRegistry_GetBase
    lis 4, 0x544b
    lwz 5, 0x4(31)
    mr 7, 28
    addi 6, 31, 0xc
    addi 4, 4, 0x5441
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DB54 # lfs f1, lbl_80540AF4@sda21(r0)
    li 5, 0x240
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802B97C8:
    lbz 0, 0x24d(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802B97E0
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000160 # b .L_802B993C
L_802B97E0:
    li 0, 0x1
    mr 3, 31
    stw 0, 0x230(31)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000138 # b .L_802B993C
L_802B9808:
    .4byte 0xC002DB70 # lfs f0, lbl_80540B10@sda21(r0)
    fmuls 0, 0, 30
    fcmpo cr0, 29, 0
    .4byte 0x40800014 # bge .L_802B9828
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x23c(31)
    stb 0, 0x24c(31)
L_802B9828:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180F948 # blt .L_802B9178
L_802B9834:
    li 28, 0x0
L_802B9838:
    mr 3, 28
    bl fn_8023A51C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820090 # bne .L_802B98D8
    mr 3, 28
    bl fn_8023A5B8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082007C # bne .L_802B98D8
    mr 3, 28
    bl fn_8023A478
    lfs 3, 0x0(3)
    lfs 0, 0xc(31)
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002DB50 # lfs f0, lbl_80540AF0@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 3, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802B98A0
    .4byte 0x48000028 # b .L_802B98C4
L_802B98A0:
    frsqrte 4, 3
    .4byte 0xC042DB64 # lfs f2, lbl_80540B04@sda21(r0)
    .4byte 0xC002DB68 # lfs f0, lbl_80540B08@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 3, 1, 0
    fmuls 0, 2, 0
    fmuls 3, 3, 0
L_802B98C4:
    fctiwz 0, 3
    stfd 0, 0x78(1)
    lwz 0, 0x7c(1)
    srawi 0, 0, 3
    stw 0, 0x23c(31)
L_802B98D8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF58 # blt .L_802B9838
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_802B990C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_802B990C
    li 0, 0x0
    stw 0, 0x240(31)
L_802B990C:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x40810028 # ble .L_802B993C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_802B993C
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x23c(31)
    stb 0, 0x24c(31)
L_802B993C:
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    psq_l 29, 0x98(1), 0, 0
    lfd 29, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    lwz 0, 0xc4(1)
    lwz 28, 0x80(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_802B9974:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042DBA0 # lfs f2, lbl_80540B40@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC022DB70 # lfs f1, lbl_80540B10@sda21(r0)
    stw 31, 0xc(1)
    .4byte 0xC002DB50 # lfs f0, lbl_80540AF0@sda21(r0)
    stw 30, 0x8(1)
    mr 30, 3
    stfs 2, 0x60(3)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    lwz 4, 0x90(3)
    clrlwi 4, 4, 28
    stw 4, 0x234(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 16, 12
    stw 4, 0x238(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 1, 11
    stb 4, 0x24d(3)
    stw 0, 0x23c(3)
    stw 0, 0x240(3)
    stfs 0, 0x244(3)
    stfs 0, 0x248(3)
    stb 0, 0x24c(3)
    stw 0, 0x230(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_802B9A70
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x40810060 # ble .L_802B9A68
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x40820050 # bne .L_802B9A68
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x40820040 # bne .L_802B9A68
    lwz 0, 0x234(30)
    li 31, 0x388
    cmpwi 0, 0x5
    .4byte 0x41820008 # beq .L_802B9A40
    li 31, 0x389
L_802B9A40:
    bl SpatialRegistry_GetBase
    subi 0, 31, 0x12b
    lis 4, 0x4a49
    lwz 5, 0x4(30)
    addi 4, 4, 0x4a49
    addi 6, 30, 0xc
    oris 7, 0, 0x11
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802B9A68:
    li 0, 0x0
    stb 0, 0x11c(30)
L_802B9A70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B9A88:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2468@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2468@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9AD8
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
L_802B9AD8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9B10
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
L_802B9B10:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9B48
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
L_802B9B48:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9B80
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
L_802B9B80:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9BB8
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
L_802B9BB8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9BF0
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
L_802B9BF0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9C28
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
L_802B9C28:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9C60
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
L_802B9C60:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9C98
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
L_802B9C98:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B9CAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802B9CF0
    lis 5, lbl_804A8940@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8940@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802B9CF0
    mr 3, 30
    bl dtor_80084580
L_802B9CF0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802B9D0C:
    blr

fn_802B9D10:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
L_802B9D30:
    mr 3, 30
    bl fn_8023A51C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200B8 # bne .L_802B9DF8
    lwz 31, 0x4(29)
    mr 3, 30
    bl fn_8023DE58
    cmpw 31, 3
    .4byte 0x408200A4 # bne .L_802B9DF8
    mr 3, 30
    bl fn_8023A478
    lfs 3, 0x0(3)
    addi 4, 29, 0xc
    lfs 0, 0xc(29)
    lfs 2, 0x4(3)
    lfs 1, 0x10(29)
    fsubs 3, 3, 0
    .4byte 0xC002DBA8 # lfs f0, lbl_80540B48@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810068 # bgt .L_802B9DF8
    lwz 0, 0x4(29)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_802B9DC0
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000048 # b .L_802B9E04
L_802B9DC0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_802B9DF8
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_802B9E04
L_802B9DF8:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF30 # blt .L_802B9D30
L_802B9E04:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802B9E20:
    blr

fn_802B9E24:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2568@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2568@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9E74
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
L_802B9E74:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9EAC
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
L_802B9EAC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9EE4
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
L_802B9EE4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9F1C
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
L_802B9F1C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9F54
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
L_802B9F54:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9F8C
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
L_802B9F8C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9FC4
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
L_802B9FC4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802B9FFC
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
L_802B9FFC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA034
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
L_802BA034:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BA048:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802BA08C
    lis 5, lbl_804A8998@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8998@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BA08C
    mr 3, 30
    bl dtor_80084580
L_802BA08C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BA0A8:
    blr

fn_802BA0AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31de(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802BA0F8
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    mr 3, 31
    bl fn_801F3668
L_802BA0F8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BA10C:
    blr

fn_802BA110:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2668@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2668@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA160
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
L_802BA160:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA198
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
L_802BA198:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA1D0
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
L_802BA1D0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA208
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
L_802BA208:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA240
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
L_802BA240:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA278
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
L_802BA278:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA2B0
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
L_802BA2B0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA2E8
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
L_802BA2E8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA320
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
L_802BA320:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BA334:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2768@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2768@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA384
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
L_802BA384:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA3BC
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
L_802BA3BC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA3F4
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
L_802BA3F4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA42C
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
L_802BA42C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA464
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
L_802BA464:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA49C
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
L_802BA49C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA4D4
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
L_802BA4D4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA50C
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
L_802BA50C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BA544
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
L_802BA544:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BA558:
    stwu 1, -0x60(1)
    mflr 0
    lis 6, lbl_8046D398@ha
    stw 0, 0x64(1)
    addi 7, 6, lbl_8046D398@l
    stw 31, 0x5c(1)
    mr 31, 5
    stw 30, 0x58(1)
    mr 30, 3
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    mr 28, 4
    lwz 6, 0x0(7)
    lwz 5, 0x4(7)
    lwz 4, 0x8(7)
    lwz 3, 0xc(7)
    lwz 0, 0x10(7)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 4, 0x40(1)
    stw 3, 0x44(1)
    stw 0, 0x48(1)
    lwz 0, 0x264(30)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_802BA5C8
    lis 3, 0x4e55
    addi 0, 3, 0x4c4c
    stw 0, 0x44(1)
L_802BA5C8:
    lwz 29, 0x198(30)
    bl fn_8020D58C
    lbz 0, 0x1(3)
    mr 8, 3
    mr 4, 28
    mr 5, 31
    mulli 3, 0, 0x784
    mr 6, 29
    addi 7, 1, 0x38
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802BA60C
    li 3, 0x1
    .4byte 0x480003C8 # b .L_802BA9D0
L_802BA60C:
    lwz 0, 0x264(30)
    cmpwi 0, 0x3
    .4byte 0x41820304 # beq .L_802BA918
    cmpwi 0, 0x4
    .4byte 0x418202FC # beq .L_802BA918
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x408202E8 # bne .L_802BA910
    lwz 4, 0x4(30)
    mr 3, 31
    bl fn_80226AE0
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 28, 3
    lwz 4, 0x4(30)
    mr 29, 28
    lwz 3, 0x20(5)
    mr 5, 28
    bl fn_802F9908
    sth 3, 0x288(30)
    lhz 3, 0x288(30)
    bl fn_801EE3C0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_802BA6DC
    lwz 4, 0x4(30)
    mr 3, 28
    addi 5, 1, 0x2c
    bl fn_80226CA8
    lfs 1, 0x2c(1)
    addi 4, 1, 0x14
    .4byte 0xC042DBB0 # lfs f2, lbl_80540B50@sda21(r0)
    mr 3, 30
    lfs 0, 0x30(1)
    li 5, 0x0
    fadds 1, 1, 2
    lfs 3, 0x34(1)
    fadds 0, 0, 2
    stfs 3, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 12, 0x0(30)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 3, 0x5
    li 0, 0x1
    stw 3, 0x254(30)
    li 3, 0x1
    stb 0, 0x291(30)
    .4byte 0x480002F8 # b .L_802BA9D0
L_802BA6DC:
    li 3, 0x0
    stb 3, 0x291(30)
    lhz 0, 0x288(30)
    cmplwi 0, 0x140
    .4byte 0x41800038 # blt .L_802BA724
    cmplwi 0, 0x15f
    .4byte 0x41810030 # bgt .L_802BA724
    li 0, 0x10
    stw 0, 0x254(30)
    lbz 0, 0x290(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_802BA718
    li 0, 0x1
    stb 0, 0x290(30)
    .4byte 0x48000008 # b .L_802BA71C
L_802BA718:
    stb 3, 0x290(30)
L_802BA71C:
    li 3, 0x0
    .4byte 0x480002B0 # b .L_802BA9D0
L_802BA724:
    cmplwi 0, 0x3eb
    .4byte 0x41820014 # beq .L_802BA73C
    cmplwi 0, 0x34
    .4byte 0x4182000C # beq .L_802BA73C
    cmplwi 0, 0x33
    .4byte 0x40820064 # bne .L_802BA79C
L_802BA73C:
    lwz 4, 0x4(30)
    mr 3, 29
    addi 5, 1, 0x2c
    bl fn_80226CA8
    lfs 1, 0x2c(1)
    addi 4, 1, 0x8
    .4byte 0xC042DBB0 # lfs f2, lbl_80540B50@sda21(r0)
    mr 3, 30
    lfs 0, 0x30(1)
    li 5, 0x1
    fadds 1, 1, 2
    lfs 3, 0x34(1)
    fadds 0, 0, 2
    stfs 3, 0x10(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    lwz 12, 0x0(30)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 3, 0x0
    .4byte 0x48000238 # b .L_802BA9D0
L_802BA79C:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 0, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 0, 3, 0
    stw 0, 0x27c(30)
    lwz 3, 0x27c(30)
    cmpwi 3, 0x0
    .4byte 0x41820158 # beq .L_802BA910
    cmpwi 3, 0x61
    .4byte 0x41820150 # beq .L_802BA910
    subi 0, 3, 0x2
    cmplwi 0, 0x5
    .4byte 0x40810144 # ble .L_802BA910
    cmpwi 3, 0x50
    .4byte 0x4182013C # beq .L_802BA910
    subi 0, 3, 0x27
    cmplwi 0, 0x8
    .4byte 0x40810130 # ble .L_802BA910
    cmpwi 3, 0x20
    .4byte 0x41820128 # beq .L_802BA910
    subi 0, 3, 0xc
    cmplwi 0, 0x2
    .4byte 0x4081011C # ble .L_802BA910
    subi 0, 3, 0x39
    cmplwi 0, 0x2
    .4byte 0x40810110 # ble .L_802BA910
    subi 0, 3, 0x23
    cmplwi 0, 0x1
    .4byte 0x40810104 # ble .L_802BA910
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802BA820
    cmpwi 3, 0x7
    .4byte 0x408100F4 # ble .L_802BA910
L_802BA820:
    cmpwi 3, 0x18
    .4byte 0x4180000C # blt .L_802BA830
    cmpwi 3, 0x1f
    .4byte 0x408100E4 # ble .L_802BA910
L_802BA830:
    subi 0, 3, 0x10
    cmplwi 0, 0x6
    .4byte 0x4081000C # ble .L_802BA844
    cmpwi 3, 0x17
    .4byte 0x40820034 # bne .L_802BA874
L_802BA844:
    li 0, 0x10
    stw 0, 0x254(30)
    lbz 0, 0x290(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_802BA864
    li 0, 0x1
    stb 0, 0x290(30)
    .4byte 0x4800000C # b .L_802BA86C
L_802BA864:
    li 0, 0x0
    stb 0, 0x290(30)
L_802BA86C:
    li 3, 0x0
    .4byte 0x48000160 # b .L_802BA9D0
L_802BA874:
    lhz 4, 0x288(30)
    cmplwi 4, 0x3a
    .4byte 0x4182001C # beq .L_802BA898
    subi 0, 4, 0x8b
    clrlwi 0, 0, 16
    cmplwi 0, 0x3
    .4byte 0x4081000C # ble .L_802BA898
    cmplwi 4, 0x3d
    .4byte 0x4082000C # bne .L_802BA8A0
L_802BA898:
    li 3, 0x0
    .4byte 0x48000134 # b .L_802BA9D0
L_802BA8A0:
    cmpwi 3, 0x25
    .4byte 0x40820018 # bne .L_802BA8BC
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000118 # b .L_802BA9D0
L_802BA8BC:
    cmpwi 3, 0x26
    .4byte 0x4082001C # bne .L_802BA8DC
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x480000F8 # b .L_802BA9D0
L_802BA8DC:
    cmpwi 3, 0x22
    .4byte 0x40820014 # bne .L_802BA8F4
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802BA910
L_802BA8F4:
    lbz 0, 0x290(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802BA908
    li 3, 0x1
    .4byte 0x480000CC # b .L_802BA9D0
L_802BA908:
    li 3, 0x0
    .4byte 0x480000C4 # b .L_802BA9D0
L_802BA910:
    li 3, 0x0
    .4byte 0x480000BC # b .L_802BA9D0
L_802BA918:
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_802BA92C
    li 3, 0x0
    .4byte 0x480000A8 # b .L_802BA9D0
L_802BA92C:
    lfs 0, 0x8(31)
    addi 3, 1, 0x20
    psq_l 1, 0x0(31), 0, 0
    mr 4, 28
    stfs 0, 0x28(1)
    psq_st 1, 0x0(3), 0, 0
    bl fn_8022461C
    clrlwi. 3, 3, 16
    .4byte 0x41820080 # beq .L_802BA9CC
    cmpwi 3, 0x28
    .4byte 0x4180000C # blt .L_802BA960
    cmpwi 3, 0x2b
    .4byte 0x40810070 # ble .L_802BA9CC
L_802BA960:
    lwz 0, 0x98(30)
    cmpwi 0, 0x2
    .4byte 0x41820024 # beq .L_802BA98C
    .4byte 0x40800014 # bge .L_802BA980
    cmpwi 0, 0x0
    .4byte 0x41820038 # beq .L_802BA9AC
    .4byte 0x40800044 # bge .L_802BA9BC
    .4byte 0x48000050 # b .L_802BA9CC
L_802BA980:
    cmpwi 0, 0x4
    .4byte 0x40800048 # bge .L_802BA9CC
    .4byte 0x48000014 # b .L_802BA99C
L_802BA98C:
    cmpwi 3, 0x40
    .4byte 0x4182003C # beq .L_802BA9CC
    li 3, 0x1
    .4byte 0x48000038 # b .L_802BA9D0
L_802BA99C:
    cmpwi 3, 0x41
    .4byte 0x4182002C # beq .L_802BA9CC
    li 3, 0x1
    .4byte 0x48000028 # b .L_802BA9D0
L_802BA9AC:
    cmpwi 3, 0x42
    .4byte 0x4182001C # beq .L_802BA9CC
    li 3, 0x1
    .4byte 0x48000018 # b .L_802BA9D0
L_802BA9BC:
    cmpwi 3, 0x43
    .4byte 0x4182000C # beq .L_802BA9CC
    li 3, 0x1
    .4byte 0x48000008 # b .L_802BA9D0
L_802BA9CC:
    li 3, 0x0
L_802BA9D0:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802BA9F0:
    lwz 3, 0x260(3)
    blr

fn_802BA9F8:
    lwz 3, 0x264(3)
    blr

fn_802BAA00:
    li 0, 0x0
    stb 0, 0x11c(3)
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802AA9D8
    .4byte fn_802AAFB0
    .4byte fn_802ABA50
    .4byte fn_802ABE18
    .4byte fn_802AC368
    .4byte fn_802AC688
    .4byte fn_802ACC80
    .4byte fn_802AF108
    .4byte fn_802AF7EC
    .4byte fn_802B0338
    .4byte fn_802B0AB4
    .4byte fn_802B1334
    .4byte fn_802B1F28
    .4byte fn_802B3128
    .4byte fn_802B3450
    .4byte fn_802B5FA4
    .4byte fn_802B684C
    .4byte fn_802B766C
    .4byte fn_802B7A54
    .4byte fn_802B8D58
    .4byte fn_802B9A88
    .4byte fn_802B9E24
    .4byte fn_802BA110
    .4byte fn_802BA334

