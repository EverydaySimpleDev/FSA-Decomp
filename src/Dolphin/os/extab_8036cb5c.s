# MAJOR: dispatch-cross-check mega-bundle - 18 real FourCC actor
# vtable bodies (lbl_804AE230/AE288/AE2E0/AE338/AE508/AE574/AE5C8/AE620/
# AE678/AE6D0/AE728/AE780/AE7D8/AE830/AE888/AE8F4/AE948/AEED0, ctors
# already landed) plus shared helper/update functions, landed as ONE
# byte-contiguous 166-function, ~24,740-byte Track-A bundle
# (0x8036CB5C-0x8037CE00). This is the "18-actor cluster" flagged as
# next-in-line in project_fsa_dispatch_crosscheck_discovery.md before
# the pause for Phase 4. Found+verified via spanwalk.py (full
# contiguity confirmed, stopping exactly at the pre-existing
# extab_8037ce00.s boundary) and resolvefiles.py (28 fused-dump
# functions). 20 sinit ctors found in the DOL and cross-verified by
# direct read against retail's .ctors table at 0x8045C4C4-0x8045C514.
# See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000E784
etb_8000E784:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E784, 8

.global etb_8000E78C
etb_8000E78C:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000E78C, 8

.global etb_8000E794
etb_8000E794:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E794, 8

.global etb_8000E79C
etb_8000E79C:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000E79C, 8

.global etb_8000E7A4
etb_8000E7A4:
    .4byte 0x30CA0000
    .4byte 0x00000000
.size etb_8000E7A4, 8

.global etb_8000E7AC
etb_8000E7AC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E7AC, 8

.global etb_8000E7B4
etb_8000E7B4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E7B4, 8

.global etb_8000E7BC
etb_8000E7BC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000E7BC, 8

.global etb_8000E7C4
etb_8000E7C4:
    .4byte 0x410A0000
    .4byte 0x00000000
.size etb_8000E7C4, 8

.global etb_8000E7CC
etb_8000E7CC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E7CC, 8

.global etb_8000E7D4
etb_8000E7D4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E7D4, 8

.global etb_8000E7DC
etb_8000E7DC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E7DC, 8

.global etb_8000E7E4
etb_8000E7E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E7E4, 8

.global etb_8000E7EC
etb_8000E7EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E7EC, 8

.global etb_8000E7F4
etb_8000E7F4:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000E7F4, 8

.global etb_8000E7FC
etb_8000E7FC:
    .4byte 0x21CA0000
    .4byte 0x00000000
.size etb_8000E7FC, 8

.global etb_8000E804
etb_8000E804:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000E804, 8

.global etb_8000E80C
etb_8000E80C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000E80C, 8

.global etb_8000E814
etb_8000E814:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E814, 8

.global etb_8000E81C
etb_8000E81C:
    .4byte 0x384A0000
    .4byte 0x00000000
.size etb_8000E81C, 8

.global etb_8000E824
etb_8000E824:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_8000E824, 8

.global etb_8000E82C
etb_8000E82C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E82C, 8

.global etb_8000E834
etb_8000E834:
    .4byte 0x588A0000
    .4byte 0x00000000
.size etb_8000E834, 8

.global etb_8000E83C
etb_8000E83C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000E83C, 8

.global etb_8000E844
etb_8000E844:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E844, 8

.global etb_8000E84C
etb_8000E84C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E84C, 8

.global etb_8000E854
etb_8000E854:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E854, 8

.global etb_8000E85C
etb_8000E85C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E85C, 8

.global etb_8000E864
etb_8000E864:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E864, 8

.global etb_8000E86C
etb_8000E86C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E86C, 8

.global etb_8000E874
etb_8000E874:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E874, 8

.global etb_8000E87C
etb_8000E87C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E87C, 8

.global etb_8000E884
etb_8000E884:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E884, 8

.global etb_8000E88C
etb_8000E88C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000E88C, 8

.global etb_8000E894
etb_8000E894:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E894, 8

.global etb_8000E89C
etb_8000E89C:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000E89C, 8

.global etb_8000E8A4
etb_8000E8A4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000E8A4, 8

.global etb_8000E8AC
etb_8000E8AC:
    .4byte 0x384A0000
    .4byte 0x00000000
.size etb_8000E8AC, 8

.global etb_8000E8B4
etb_8000E8B4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000E8B4, 8

.global etb_8000E8BC
etb_8000E8BC:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000E8BC, 8

.global etb_8000E8C4
etb_8000E8C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E8C4, 8

.global etb_8000E8CC
etb_8000E8CC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E8CC, 8

.global etb_8000E8D4
etb_8000E8D4:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000E8D4, 8

.global etb_8000E8DC
etb_8000E8DC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E8DC, 8

.global etb_8000E8E4
etb_8000E8E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E8E4, 8

.global etb_8000E8EC
etb_8000E8EC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E8EC, 8

.global etb_8000E8F4
etb_8000E8F4:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000E8F4, 8

.global etb_8000E8FC
etb_8000E8FC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E8FC, 8

.global etb_8000E904
etb_8000E904:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000E904, 8

.global etb_8000E90C
etb_8000E90C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E90C, 8

.global etb_8000E914
etb_8000E914:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E914, 8

.global etb_8000E91C
etb_8000E91C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E91C, 8

.global etb_8000E924
etb_8000E924:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000E924, 8

.global etb_8000E92C
etb_8000E92C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E92C, 8

.global etb_8000E934
etb_8000E934:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_8000E934, 8

.global etb_8000E93C
etb_8000E93C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E93C, 8

.global etb_8000E944
etb_8000E944:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E944, 8

.global etb_8000E94C
etb_8000E94C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E94C, 8

.global etb_8000E954
etb_8000E954:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E954, 8

.global etb_8000E95C
etb_8000E95C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000E95C, 8

.global etb_8000E964
etb_8000E964:
    .4byte 0x198A0000
    .4byte 0x00000000
.size etb_8000E964, 8

.global etb_8000E96C
etb_8000E96C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000E96C, 8

.global etb_8000E974
etb_8000E974:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E974, 8

.global etb_8000E97C
etb_8000E97C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E97C, 8

.global etb_8000E984
etb_8000E984:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000E984, 8

.global etb_8000E98C
etb_8000E98C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E98C, 8

.global etb_8000E994
etb_8000E994:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_8000E994, 8

.global etb_8000E99C
etb_8000E99C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E99C, 8

.global etb_8000E9A4
etb_8000E9A4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E9A4, 8

.global etb_8000E9AC
etb_8000E9AC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E9AC, 8

.global etb_8000E9B4
etb_8000E9B4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E9B4, 8

.global etb_8000E9BC
etb_8000E9BC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000E9BC, 8

.global etb_8000E9C4
etb_8000E9C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E9C4, 8

.global etb_8000E9CC
etb_8000E9CC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E9CC, 8

.global etb_8000E9D4
etb_8000E9D4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E9D4, 8

.global etb_8000E9DC
etb_8000E9DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E9DC, 8

.global etb_8000E9E4
etb_8000E9E4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000E9E4, 8

.global etb_8000E9EC
etb_8000E9EC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000E9EC, 8

.global etb_8000E9F4
etb_8000E9F4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000E9F4, 8

.global etb_8000E9FC
etb_8000E9FC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000E9FC, 8

.global etb_8000EA04
etb_8000EA04:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EA04, 8

.global etb_8000EA0C
etb_8000EA0C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EA0C, 8

.global etb_8000EA14
etb_8000EA14:
    .4byte 0x294A0000
    .4byte 0x00000000
.size etb_8000EA14, 8

.global etb_8000EA1C
etb_8000EA1C:
    .4byte 0x290A0000
    .4byte 0x00000000
.size etb_8000EA1C, 8

.global etb_8000EA24
etb_8000EA24:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EA24, 8

.global etb_8000EA2C
etb_8000EA2C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EA2C, 8

.global etb_8000EA34
etb_8000EA34:
    .4byte 0x090A0000
    .4byte 0x00000000
.size etb_8000EA34, 8

.global etb_8000EA3C
etb_8000EA3C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000EA3C, 8

.global etb_8000EA44
etb_8000EA44:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EA44, 8

.global etb_8000EA4C
etb_8000EA4C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EA4C, 8

.global etb_8000EA54
etb_8000EA54:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000EA54, 8

.global etb_8000EA5C
etb_8000EA5C:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_8000EA5C, 8

.global etb_8000EA64
etb_8000EA64:
    .4byte 0x290A0000
    .4byte 0x00000000
.size etb_8000EA64, 8

.global etb_8000EA6C
etb_8000EA6C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000EA6C, 8

.global etb_8000EA74
etb_8000EA74:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EA74, 8

.global etb_8000EA7C
etb_8000EA7C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EA7C, 8

.global etb_8000EA84
etb_8000EA84:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EA84, 8

.global etb_8000EA8C
etb_8000EA8C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EA8C, 8

.global etb_8000EA94
etb_8000EA94:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000EA94, 8

.global etb_8000EA9C
etb_8000EA9C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EA9C, 8

.global etb_8000EAA4
etb_8000EAA4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EAA4, 8

.global etb_8000EAAC
etb_8000EAAC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EAAC, 8

.global etb_8000EAB4
etb_8000EAB4:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_8000EAB4, 8

.global etb_8000EABC
etb_8000EABC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000EABC, 8

.global etb_8000EAC4
etb_8000EAC4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000EAC4, 8

.global etb_8000EACC
etb_8000EACC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EACC, 8

.global etb_8000EAD4
etb_8000EAD4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EAD4, 8

.global etb_8000EADC
etb_8000EADC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EADC, 8

.global etb_8000EAE4
etb_8000EAE4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EAE4, 8

.global etb_8000EAEC
etb_8000EAEC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EAEC, 8

.global etb_8000EAF4
etb_8000EAF4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EAF4, 8

.global etb_8000EAFC
etb_8000EAFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EAFC, 8

.global etb_8000EB04
etb_8000EB04:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EB04, 8

.global etb_8000EB0C
etb_8000EB0C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000EB0C, 8

.global etb_8000EB14
etb_8000EB14:
    .4byte 0x18080000
    .4byte 0x000000B4
    .4byte 0x00000028
    .4byte 0x000000E0
    .4byte 0x00000030
    .4byte 0x000000FC
    .4byte 0x00000038
    .4byte 0x00000128
    .4byte 0x00000040
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_8000EB14, 72

.global etb_8000EB5C
etb_8000EB5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EB5C, 8

.global etb_8000EB64
etb_8000EB64:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EB64, 8

.global etb_8000EB6C
etb_8000EB6C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EB6C, 8

.global etb_8000EB74
etb_8000EB74:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EB74, 8

.global etb_8000EB7C
etb_8000EB7C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EB7C, 8

.global etb_8000EB84
etb_8000EB84:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EB84, 8

.global etb_8000EB8C
etb_8000EB8C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EB8C, 8

.global etb_8000EB94
etb_8000EB94:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EB94, 8

.global etb_8000EB9C
etb_8000EB9C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EB9C, 8

.global etb_8000EBA4
etb_8000EBA4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EBA4, 8

.global etb_8000EBAC
etb_8000EBAC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EBAC, 8

.global etb_8000EBB4
etb_8000EBB4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EBB4, 8

.global etb_8000EBBC
etb_8000EBBC:
    .4byte 0x10080000
    .4byte 0x0000005C
    .4byte 0x00000018
    .4byte 0x00000078
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000EBBC, 40

.global etb_8000EBE4
etb_8000EBE4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EBE4, 8

.global etb_8000EBEC
etb_8000EBEC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000EBEC, 8

.global etb_8000EBF4
etb_8000EBF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000EBF4, 8

.global etb_8000EBFC
etb_8000EBFC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000EBFC, 8

.global etb_8000EC04
etb_8000EC04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EC04, 8

.global etb_8000EC0C
etb_8000EC0C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EC0C, 8

.section extabindex, "a"
.balign 4
.global eti_8001E358
eti_8001E358:
    .4byte fn_8036CB5C
    .4byte 0x00000060
    .4byte etb_8000E784
.size eti_8001E358, 12

.global eti_8001E364
eti_8001E364:
    .4byte fn_8036CBBC
    .4byte 0x0000029C
    .4byte etb_8000E78C
.size eti_8001E364, 12

.global eti_8001E370
eti_8001E370:
    .4byte fn_8036CE58
    .4byte 0x000000C4
    .4byte etb_8000E794
.size eti_8001E370, 12

.global eti_8001E37C
eti_8001E37C:
    .4byte fn_8036CF1C
    .4byte 0x000004BC
    .4byte etb_8000E79C
.size eti_8001E37C, 12

.global eti_8001E388
eti_8001E388:
    .4byte fn_8036D3D8
    .4byte 0x000001FC
    .4byte etb_8000E7A4
.size eti_8001E388, 12

.global eti_8001E394
eti_8001E394:
    .4byte fn_8036D5D4
    .4byte 0x00000224
    .4byte etb_8000E7AC
.size eti_8001E394, 12

.global eti_8001E3A0
eti_8001E3A0:
    .4byte fn_8036D7F8
    .4byte 0x00000060
    .4byte etb_8000E7B4
.size eti_8001E3A0, 12

.global eti_8001E3AC
eti_8001E3AC:
    .4byte fn_8036D858
    .4byte 0x000000C4
    .4byte etb_8000E7BC
.size eti_8001E3AC, 12

.global eti_8001E3B8
eti_8001E3B8:
    .4byte fn_8036D924
    .4byte 0x00000224
    .4byte etb_8000E7C4
.size eti_8001E3B8, 12

.global eti_8001E3C4
eti_8001E3C4:
    .4byte fn_8036DB48
    .4byte 0x00000224
    .4byte etb_8000E7CC
.size eti_8001E3C4, 12

.global eti_8001E3D0
eti_8001E3D0:
    .4byte fn_8036DD6C
    .4byte 0x00000060
    .4byte etb_8000E7D4
.size eti_8001E3D0, 12

.global eti_8001E3DC
eti_8001E3DC:
    .4byte fn_8036DDD0
    .4byte 0x00000228
    .4byte etb_8000E7DC
.size eti_8001E3DC, 12

.global eti_8001E3E8
eti_8001E3E8:
    .4byte fn_8036DFF8
    .4byte 0x00000328
    .4byte etb_8000E7E4
.size eti_8001E3E8, 12

.global eti_8001E3F4
eti_8001E3F4:
    .4byte fn_8036E320
    .4byte 0x00000224
    .4byte etb_8000E7EC
.size eti_8001E3F4, 12

.global eti_8001E400
eti_8001E400:
    .4byte fn_8036E544
    .4byte 0x000000A0
    .4byte etb_8000E7F4
.size eti_8001E400, 12

.global eti_8001E40C
eti_8001E40C:
    .4byte fn_8036E5E8
    .4byte 0x00000FD4
    .4byte etb_8000E7FC
.size eti_8001E40C, 12

.global eti_8001E418
eti_8001E418:
    .4byte fn_8036F5BC
    .4byte 0x000002C4
    .4byte etb_8000E804
.size eti_8001E418, 12

.global eti_8001E424
eti_8001E424:
    .4byte fn_8036F880
    .4byte 0x000000BC
    .4byte etb_8000E80C
.size eti_8001E424, 12

.global eti_8001E430
eti_8001E430:
    .4byte fn_8036F93C
    .4byte 0x00000224
    .4byte etb_8000E814
.size eti_8001E430, 12

.global eti_8001E43C
eti_8001E43C:
    .4byte fn_8036FB60
    .4byte 0x0000024C
    .4byte etb_8000E81C
.size eti_8001E43C, 12

.global eti_8001E448
eti_8001E448:
    .4byte fn_8036FDAC
    .4byte 0x00000274
    .4byte etb_8000E824
.size eti_8001E448, 12

.global eti_8001E454
eti_8001E454:
    .4byte fn_80370020
    .4byte 0x000001E0
    .4byte etb_8000E82C
.size eti_8001E454, 12

.global eti_8001E460
eti_8001E460:
    .4byte fn_80370200
    .4byte 0x000001C8
    .4byte etb_8000E834
.size eti_8001E460, 12

.global eti_8001E46C
eti_8001E46C:
    .4byte fn_803704E8
    .4byte 0x00000020
    .4byte etb_8000E83C
.size eti_8001E46C, 12

.global eti_8001E478
eti_8001E478:
    .4byte fn_80370508
    .4byte 0x00000098
    .4byte etb_8000E844
.size eti_8001E478, 12

.global eti_8001E484
eti_8001E484:
    .4byte fn_803705A0
    .4byte 0x0000010C
    .4byte etb_8000E84C
.size eti_8001E484, 12

.global eti_8001E490
eti_8001E490:
    .4byte fn_803706AC
    .4byte 0x000000B8
    .4byte etb_8000E854
.size eti_8001E490, 12

.global eti_8001E49C
eti_8001E49C:
    .4byte fn_80370764
    .4byte 0x00000318
    .4byte etb_8000E85C
.size eti_8001E49C, 12

.global eti_8001E4A8
eti_8001E4A8:
    .4byte fn_80370A7C
    .4byte 0x0000019C
    .4byte etb_8000E864
.size eti_8001E4A8, 12

.global eti_8001E4B4
eti_8001E4B4:
    .4byte fn_80370C18
    .4byte 0x0000006C
    .4byte etb_8000E86C
.size eti_8001E4B4, 12

.global eti_8001E4C0
eti_8001E4C0:
    .4byte fn_80370C84
    .4byte 0x00000388
    .4byte etb_8000E874
.size eti_8001E4C0, 12

.global eti_8001E4CC
eti_8001E4CC:
    .4byte fn_8037100C
    .4byte 0x000001E4
    .4byte etb_8000E87C
.size eti_8001E4CC, 12

.global eti_8001E4D8
eti_8001E4D8:
    .4byte fn_803711F0
    .4byte 0x00000094
    .4byte etb_8000E884
.size eti_8001E4D8, 12

.global eti_8001E4E4
eti_8001E4E4:
    .4byte fn_80371284
    .4byte 0x00000548
    .4byte etb_8000E88C
.size eti_8001E4E4, 12

.global eti_8001E4F0
eti_8001E4F0:
    .4byte fn_803717CC
    .4byte 0x00000260
    .4byte etb_8000E894
.size eti_8001E4F0, 12

.global eti_8001E4FC
eti_8001E4FC:
    .4byte fn_80371A2C
    .4byte 0x00000324
    .4byte etb_8000E89C
.size eti_8001E4FC, 12

.global eti_8001E508
eti_8001E508:
    .4byte fn_80371D50
    .4byte 0x000004A4
    .4byte etb_8000E8A4
.size eti_8001E508, 12

.global eti_8001E514
eti_8001E514:
    .4byte fn_803721F4
    .4byte 0x0000020C
    .4byte etb_8000E8AC
.size eti_8001E514, 12

.global eti_8001E520
eti_8001E520:
    .4byte fn_80372400
    .4byte 0x0000011C
    .4byte etb_8000E8B4
.size eti_8001E520, 12

.global eti_8001E52C
eti_8001E52C:
    .4byte fn_8037251C
    .4byte 0x000002B4
    .4byte etb_8000E8BC
.size eti_8001E52C, 12

.global eti_8001E538
eti_8001E538:
    .4byte fn_803727D0
    .4byte 0x000002D0
    .4byte etb_8000E8C4
.size eti_8001E538, 12

.global eti_8001E544
eti_8001E544:
    .4byte fn_80372AA0
    .4byte 0x00000060
    .4byte etb_8000E8CC
.size eti_8001E544, 12

.global eti_8001E550
eti_8001E550:
    .4byte fn_80372B00
    .4byte 0x000003A8
    .4byte etb_8000E8D4
.size eti_8001E550, 12

.global eti_8001E55C
eti_8001E55C:
    .4byte fn_80372EB4
    .4byte 0x00000060
    .4byte etb_8000E8DC
.size eti_8001E55C, 12

.global eti_8001E568
eti_8001E568:
    .4byte fn_80372F14
    .4byte 0x00000224
    .4byte etb_8000E8E4
.size eti_8001E568, 12

.global eti_8001E574
eti_8001E574:
    .4byte fn_80373138
    .4byte 0x00000060
    .4byte etb_8000E8EC
.size eti_8001E574, 12

.global eti_8001E580
eti_8001E580:
    .4byte fn_80373198
    .4byte 0x0000029C
    .4byte etb_8000E8F4
.size eti_8001E580, 12

.global eti_8001E58C
eti_8001E58C:
    .4byte fn_80373434
    .4byte 0x00000080
    .4byte etb_8000E8FC
.size eti_8001E58C, 12

.global eti_8001E598
eti_8001E598:
    .4byte fn_803734B4
    .4byte 0x00000428
    .4byte etb_8000E904
.size eti_8001E598, 12

.global eti_8001E5A4
eti_8001E5A4:
    .4byte fn_803738DC
    .4byte 0x000000D8
    .4byte etb_8000E90C
.size eti_8001E5A4, 12

.global eti_8001E5B0
eti_8001E5B0:
    .4byte fn_803739B4
    .4byte 0x00000224
    .4byte etb_8000E914
.size eti_8001E5B0, 12

.global eti_8001E5BC
eti_8001E5BC:
    .4byte fn_80373BD8
    .4byte 0x00000060
    .4byte etb_8000E91C
.size eti_8001E5BC, 12

.global eti_8001E5C8
eti_8001E5C8:
    .4byte fn_80373C38
    .4byte 0x00000290
    .4byte etb_8000E924
.size eti_8001E5C8, 12

.global eti_8001E5D4
eti_8001E5D4:
    .4byte fn_80373EC8
    .4byte 0x000001AC
    .4byte etb_8000E92C
.size eti_8001E5D4, 12

.global eti_8001E5E0
eti_8001E5E0:
    .4byte fn_80374074
    .4byte 0x00000450
    .4byte etb_8000E934
.size eti_8001E5E0, 12

.global eti_8001E5EC
eti_8001E5EC:
    .4byte fn_803744C4
    .4byte 0x000000A0
    .4byte etb_8000E93C
.size eti_8001E5EC, 12

.global eti_8001E5F8
eti_8001E5F8:
    .4byte fn_80374564
    .4byte 0x00000224
    .4byte etb_8000E944
.size eti_8001E5F8, 12

.global eti_8001E604
eti_8001E604:
    .4byte fn_80374788
    .4byte 0x00000060
    .4byte etb_8000E94C
.size eti_8001E604, 12

.global eti_8001E610
eti_8001E610:
    .4byte fn_803747E8
    .4byte 0x0000017C
    .4byte etb_8000E954
.size eti_8001E610, 12

.global eti_8001E61C
eti_8001E61C:
    .4byte fn_80374964
    .4byte 0x00000248
    .4byte etb_8000E95C
.size eti_8001E61C, 12

.global eti_8001E628
eti_8001E628:
    .4byte fn_80374BAC
    .4byte 0x0000093C
    .4byte etb_8000E964
.size eti_8001E628, 12

.global eti_8001E634
eti_8001E634:
    .4byte fn_803754E8
    .4byte 0x00000264
    .4byte etb_8000E96C
.size eti_8001E634, 12

.global eti_8001E640
eti_8001E640:
    .4byte fn_8037574C
    .4byte 0x00000224
    .4byte etb_8000E974
.size eti_8001E640, 12

.global eti_8001E64C
eti_8001E64C:
    .4byte fn_80375970
    .4byte 0x00000054
    .4byte etb_8000E97C
.size eti_8001E64C, 12

.global eti_8001E658
eti_8001E658:
    .4byte fn_803759C4
    .4byte 0x000003F8
    .4byte etb_8000E984
.size eti_8001E658, 12

.global eti_8001E664
eti_8001E664:
    .4byte fn_80375DBC
    .4byte 0x0000007C
    .4byte etb_8000E98C
.size eti_8001E664, 12

.global eti_8001E670
eti_8001E670:
    .4byte fn_80375E38
    .4byte 0x00000104
    .4byte etb_8000E994
.size eti_8001E670, 12

.global eti_8001E67C
eti_8001E67C:
    .4byte fn_80375F3C
    .4byte 0x00000234
    .4byte etb_8000E99C
.size eti_8001E67C, 12

.global eti_8001E688
eti_8001E688:
    .4byte fn_80376170
    .4byte 0x00000224
    .4byte etb_8000E9A4
.size eti_8001E688, 12

.global eti_8001E694
eti_8001E694:
    .4byte fn_80376394
    .4byte 0x00000060
    .4byte etb_8000E9AC
.size eti_8001E694, 12

.global eti_8001E6A0
eti_8001E6A0:
    .4byte fn_803763F4
    .4byte 0x000000E0
    .4byte etb_8000E9B4
.size eti_8001E6A0, 12

.global eti_8001E6AC
eti_8001E6AC:
    .4byte fn_803764D4
    .4byte 0x00000158
    .4byte etb_8000E9BC
.size eti_8001E6AC, 12

.global eti_8001E6B8
eti_8001E6B8:
    .4byte fn_8037662C
    .4byte 0x00000224
    .4byte etb_8000E9C4
.size eti_8001E6B8, 12

.global eti_8001E6C4
eti_8001E6C4:
    .4byte fn_80376850
    .4byte 0x00000060
    .4byte etb_8000E9CC
.size eti_8001E6C4, 12

.global eti_8001E6D0
eti_8001E6D0:
    .4byte fn_803768B0
    .4byte 0x0000006C
    .4byte etb_8000E9D4
.size eti_8001E6D0, 12

.global eti_8001E6DC
eti_8001E6DC:
    .4byte fn_80376928
    .4byte 0x00000224
    .4byte etb_8000E9DC
.size eti_8001E6DC, 12

.global eti_8001E6E8
eti_8001E6E8:
    .4byte fn_80376B4C
    .4byte 0x00000060
    .4byte etb_8000E9E4
.size eti_8001E6E8, 12

.global eti_8001E6F4
eti_8001E6F4:
    .4byte fn_80376BAC
    .4byte 0x000000A4
    .4byte etb_8000E9EC
.size eti_8001E6F4, 12

.global eti_8001E700
eti_8001E700:
    .4byte fn_80376C50
    .4byte 0x0000012C
    .4byte etb_8000E9F4
.size eti_8001E700, 12

.global eti_8001E70C
eti_8001E70C:
    .4byte fn_80376D7C
    .4byte 0x00000224
    .4byte etb_8000E9FC
.size eti_8001E70C, 12

.global eti_8001E718
eti_8001E718:
    .4byte fn_80376FA0
    .4byte 0x00000060
    .4byte etb_8000EA04
.size eti_8001E718, 12

.global eti_8001E724
eti_8001E724:
    .4byte fn_80377000
    .4byte 0x000001AC
    .4byte etb_8000EA0C
.size eti_8001E724, 12

.global eti_8001E730
eti_8001E730:
    .4byte fn_803771AC
    .4byte 0x0000088C
    .4byte etb_8000EA14
.size eti_8001E730, 12

.global eti_8001E73C
eti_8001E73C:
    .4byte fn_80377A38
    .4byte 0x000001C4
    .4byte etb_8000EA1C
.size eti_8001E73C, 12

.global eti_8001E748
eti_8001E748:
    .4byte fn_80377BFC
    .4byte 0x00000224
    .4byte etb_8000EA24
.size eti_8001E748, 12

.global eti_8001E754
eti_8001E754:
    .4byte fn_80377E20
    .4byte 0x00000060
    .4byte etb_8000EA2C
.size eti_8001E754, 12

.global eti_8001E760
eti_8001E760:
    .4byte fn_80377E80
    .4byte 0x000000F0
    .4byte etb_8000EA34
.size eti_8001E760, 12

.global eti_8001E76C
eti_8001E76C:
    .4byte fn_80377F70
    .4byte 0x00000100
    .4byte etb_8000EA3C
.size eti_8001E76C, 12

.global eti_8001E778
eti_8001E778:
    .4byte fn_80378070
    .4byte 0x00000224
    .4byte etb_8000EA44
.size eti_8001E778, 12

.global eti_8001E784
eti_8001E784:
    .4byte fn_80378294
    .4byte 0x000001C8
    .4byte etb_8000EA4C
.size eti_8001E784, 12

.global eti_8001E790
eti_8001E790:
    .4byte fn_8037845C
    .4byte 0x00000224
    .4byte etb_8000EA54
.size eti_8001E790, 12

.global eti_8001E79C
eti_8001E79C:
    .4byte fn_80378680
    .4byte 0x00000200
    .4byte etb_8000EA5C
.size eti_8001E79C, 12

.global eti_8001E7A8
eti_8001E7A8:
    .4byte fn_80378880
    .4byte 0x000001A4
    .4byte etb_8000EA64
.size eti_8001E7A8, 12

.global eti_8001E7B4
eti_8001E7B4:
    .4byte fn_80378A24
    .4byte 0x000002F4
    .4byte etb_8000EA6C
.size eti_8001E7B4, 12

.global eti_8001E7C0
eti_8001E7C0:
    .4byte fn_80378D18
    .4byte 0x0000007C
    .4byte etb_8000EA74
.size eti_8001E7C0, 12

.global eti_8001E7CC
eti_8001E7CC:
    .4byte fn_80378E54
    .4byte 0x00000224
    .4byte etb_8000EA7C
.size eti_8001E7CC, 12

.global eti_8001E7D8
eti_8001E7D8:
    .4byte fn_80379078
    .4byte 0x00000060
    .4byte etb_8000EA84
.size eti_8001E7D8, 12

.global eti_8001E7E4
eti_8001E7E4:
    .4byte fn_803790D8
    .4byte 0x000001F0
    .4byte etb_8000EA8C
.size eti_8001E7E4, 12

.global eti_8001E7F0
eti_8001E7F0:
    .4byte fn_803792C8
    .4byte 0x000002BC
    .4byte etb_8000EA94
.size eti_8001E7F0, 12

.global eti_8001E7FC
eti_8001E7FC:
    .4byte fn_80379584
    .4byte 0x000000C8
    .4byte etb_8000EA9C
.size eti_8001E7FC, 12

.global eti_8001E808
eti_8001E808:
    .4byte fn_8037964C
    .4byte 0x00000224
    .4byte etb_8000EAA4
.size eti_8001E808, 12

.global eti_8001E814
eti_8001E814:
    .4byte fn_80379870
    .4byte 0x00000060
    .4byte etb_8000EAAC
.size eti_8001E814, 12

.global eti_8001E820
eti_8001E820:
    .4byte fn_803798D0
    .4byte 0x000001C0
    .4byte etb_8000EAB4
.size eti_8001E820, 12

.global eti_8001E82C
eti_8001E82C:
    .4byte fn_80379A90
    .4byte 0x00000148
    .4byte etb_8000EABC
.size eti_8001E82C, 12

.global eti_8001E838
eti_8001E838:
    .4byte fn_80379BD8
    .4byte 0x00000188
    .4byte etb_8000EAC4
.size eti_8001E838, 12

.global eti_8001E844
eti_8001E844:
    .4byte fn_80379D60
    .4byte 0x00000224
    .4byte etb_8000EACC
.size eti_8001E844, 12

.global eti_8001E850
eti_8001E850:
    .4byte fn_8037A174
    .4byte 0x0000040C
    .4byte etb_8000EAD4
.size eti_8001E850, 12

.global eti_8001E85C
eti_8001E85C:
    .4byte fn_8037A580
    .4byte 0x000000E4
    .4byte etb_8000EAEC
.size eti_8001E85C, 12

.global eti_8001E868
eti_8001E868:
    .4byte fn_8037A664
    .4byte 0x000000A4
    .4byte etb_8000EAFC
.size eti_8001E868, 12

.global eti_8001E874
eti_8001E874:
    .4byte fn_8037A708
    .4byte 0x00000060
    .4byte etb_8000EB04
.size eti_8001E874, 12

.global eti_8001E880
eti_8001E880:
    .4byte fn_8037A768
    .4byte 0x0000016C
    .4byte etb_8000EB0C
.size eti_8001E880, 12

.global eti_8001E88C
eti_8001E88C:
    .4byte fn_8037A8D4
    .4byte 0x00000154
    .4byte etb_8000EB14
.size eti_8001E88C, 12

.global eti_8001E898
eti_8001E898:
    .4byte fn_8037AA34
    .4byte 0x00000024
    .4byte etb_8000EADC
.size eti_8001E898, 12

.global eti_8001E8A4
eti_8001E8A4:
    .4byte fn_8037AA58
    .4byte 0x00000024
    .4byte etb_8000EAE4
.size eti_8001E8A4, 12

.global eti_8001E8B0
eti_8001E8B0:
    .4byte fn_8037AA7C
    .4byte 0x00000024
    .4byte etb_8000EAF4
.size eti_8001E8B0, 12

.global eti_8001E8BC
eti_8001E8BC:
    .4byte fn_8037AAA0
    .4byte 0x00000224
    .4byte etb_8000EB5C
.size eti_8001E8BC, 12

.global eti_8001E8C8
eti_8001E8C8:
    .4byte fn_8037ACC4
    .4byte 0x0000003C
    .4byte etb_8000EB64
.size eti_8001E8C8, 12

.global eti_8001E8D4
eti_8001E8D4:
    .4byte fn_8037AD00
    .4byte 0x00000034
    .4byte etb_8000EB6C
.size eti_8001E8D4, 12

.global eti_8001E8E0
eti_8001E8E0:
    .4byte fn_8037AD34
    .4byte 0x0000003C
    .4byte etb_8000EB74
.size eti_8001E8E0, 12

.global eti_8001E8EC
eti_8001E8EC:
    .4byte fn_8037AD70
    .4byte 0x00000034
    .4byte etb_8000EB7C
.size eti_8001E8EC, 12

.global eti_8001E8F8
eti_8001E8F8:
    .4byte fn_8037ADA4
    .4byte 0x00000034
    .4byte etb_8000EB84
.size eti_8001E8F8, 12

.global eti_8001E904
eti_8001E904:
    .4byte fn_8037AE60
    .4byte 0x0000004C
    .4byte etb_8000EB8C
.size eti_8001E904, 12

.global eti_8001E910
eti_8001E910:
    .4byte fn_8037AEAC
    .4byte 0x000000A0
    .4byte etb_8000EB94
.size eti_8001E910, 12

.global eti_8001E91C
eti_8001E91C:
    .4byte fn_8037AF4C
    .4byte 0x00000034
    .4byte etb_8000EB9C
.size eti_8001E91C, 12

.global eti_8001E928
eti_8001E928:
    .4byte fn_8037AF80
    .4byte 0x00000040
    .4byte etb_8000EBA4
.size eti_8001E928, 12

.global eti_8001E934
eti_8001E934:
    .4byte fn_8037AFC0
    .4byte 0x00000040
    .4byte etb_8000EBAC
.size eti_8001E934, 12

.global eti_8001E940
eti_8001E940:
    .4byte fn_8037B000
    .4byte 0x000000B8
    .4byte etb_8000EBB4
.size eti_8001E940, 12

.global eti_8001E94C
eti_8001E94C:
    .4byte fn_8037B0B8
    .4byte 0x00000098
    .4byte etb_8000EBBC
.size eti_8001E94C, 12

.global eti_8001E958
eti_8001E958:
    .4byte fn_8037B150
    .4byte 0x00000224
    .4byte etb_8000EBE4
.size eti_8001E958, 12

.global eti_8001E964
eti_8001E964:
    .4byte fn_8037B3E0
    .4byte 0x000000A8
    .4byte etb_8000EBEC
.size eti_8001E964, 12

.global eti_8001E970
eti_8001E970:
    .4byte fn_8037B7F8
    .4byte 0x00000438
    .4byte etb_8000EBF4
.size eti_8001E970, 12

.global eti_8001E97C
eti_8001E97C:
    .4byte fn_8037BC30
    .4byte 0x00000B58
    .4byte etb_8000EBFC
.size eti_8001E97C, 12

.global eti_8001E988
eti_8001E988:
    .4byte fn_8037C788
    .4byte 0x000005F0
    .4byte etb_8000EC04
.size eti_8001E988, 12

.global eti_8001E994
eti_8001E994:
    .4byte fn_8037CD78
    .4byte 0x00000088
    .4byte etb_8000EC0C
.size eti_8001E994, 12

.text
.balign 4
.global fn_8036CB5C
.global fn_8036CBBC
.global fn_8036CE58
.global fn_8036CF1C
.global fn_8036D3D8
.global fn_8036D5D4
.global fn_8036D7F8
.global fn_8036D858
.global fn_8036D91C
.global fn_8036D920
.global fn_8036D924
.global fn_8036DB48
.global fn_8036DD6C
.global fn_8036DDCC
.global fn_8036DDD0
.global fn_8036DFF8
.global fn_8036E320
.global fn_8036E544
.global fn_8036E5E4
.global fn_8036E5E8
.global fn_8036F5BC
.global fn_8036F880
.global fn_8036F93C
.global fn_8036FB60
.global fn_8036FDAC
.global fn_80370020
.global fn_80370200
.global fn_803703C8
.global fn_803704E8
.global fn_80370508
.global fn_803705A0
.global fn_803706AC
.global fn_80370764
.global fn_80370A7C
.global fn_80370C18
.global fn_80370C84
.global fn_8037100C
.global fn_803711F0
.global fn_80371284
.global fn_803717CC
.global fn_80371A2C
.global fn_80371D50
.global fn_803721F4
.global fn_80372400
.global fn_8037251C
.global fn_803727D0
.global fn_80372AA0
.global fn_80372B00
.global fn_80372EA8
.global fn_80372EAC
.global fn_80372EB0
.global fn_80372EB4
.global fn_80372F14
.global fn_80373138
.global fn_80373198
.global fn_80373434
.global fn_803734B4
.global fn_803738DC
.global fn_803739B4
.global fn_80373BD8
.global fn_80373C38
.global fn_80373EC8
.global fn_80374074
.global fn_803744C4
.global fn_80374564
.global fn_80374788
.global fn_803747E8
.global fn_80374964
.global fn_80374BAC
.global fn_803754E8
.global fn_8037574C
.global fn_80375970
.global fn_803759C4
.global fn_80375DBC
.global fn_80375E38
.global fn_80375F3C
.global fn_80376170
.global fn_80376394
.global fn_803763F4
.global fn_803764D4
.global fn_8037662C
.global fn_80376850
.global fn_803768B0
.global fn_8037691C
.global fn_80376928
.global fn_80376B4C
.global fn_80376BAC
.global fn_80376C50
.global fn_80376D7C
.global fn_80376FA0
.global fn_80377000
.global fn_803771AC
.global fn_80377A38
.global fn_80377BFC
.global fn_80377E20
.global fn_80377E80
.global fn_80377F70
.global fn_80378070
.global fn_80378294
.global fn_8037845C
.global fn_80378680
.global fn_80378880
.global fn_80378A24
.global fn_80378D18
.global fn_80378D94
.global fn_80378E54
.global fn_80379078
.global fn_803790D8
.global fn_803792C8
.global fn_80379584
.global fn_8037964C
.global fn_80379870
.global fn_803798D0
.global fn_80379A90
.global fn_80379BD8
.global fn_80379D60
.global fn_80379F84
.global fn_80379FF4
.global fn_8037A120
.global fn_8037A174
.global fn_8037A580
.global fn_8037A664
.global fn_8037A708
.global fn_8037A768
.global fn_8037A8D4
.global fn_8037AA28
.global fn_8037AA34
.global fn_8037AA58
.global fn_8037AA7C
.global fn_8037AAA0
.global fn_8037ACC4
.global fn_8037AD00
.global fn_8037AD34
.global fn_8037AD70
.global fn_8037ADA4
.global fn_8037ADD8
.global fn_8037AE00
.global fn_8037AE30
.global fn_8037AE60
.global fn_8037AEAC
.global fn_8037AF4C
.global fn_8037AF80
.global fn_8037AFC0
.global fn_8037B000
.global fn_8037B0B8
.global fn_8037B150
.global fn_8037B374
.global fn_8037B3A8
.global fn_8037B3E0
.global fn_8037B488
.global fn_8037B4D0
.global fn_8037B554
.global fn_8037B5B4
.global fn_8037B5FC
.global fn_8037B634
.global fn_8037B67C
.global fn_8037B6C4
.global fn_8037B70C
.global fn_8037B744
.global fn_8037B78C
.global fn_8037B7BC
.global fn_8037B7EC
.global fn_8037B7F8
.global fn_8037BC30
.global fn_8037C788
.global fn_8037CD78

fn_8036CB5C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8036CBA0
    lis 5, lbl_804AE230@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE230@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8036CBA0
    mr 3, 30
    bl dtor_80084580
L_8036CBA0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8036CBBC:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    mr 31, 3
    lwz 0, 0x25c(3)
    cmpwi 0, 0x0
    .4byte 0x41800234 # blt .L_8036CE28
    cmpwi 0, 0x4
    .4byte 0x408000BC # bge .L_8036CCB8
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820220 # beq .L_8036CE28
    li 0, 0x4
    li 3, 0x32
    stw 0, 0x25c(31)
    li 0, 0x0
    .4byte 0xC3C2FD38 # lfs f30, lbl_80542CD8@sda21(r0)
    addi 29, 1, 0x20
    stw 3, 0x258(31)
    li 28, 0x0
    .4byte 0xC3E2FD3C # lfs f31, lbl_80542CDC@sda21(r0)
    stw 0, 0x260(31)
L_8036CC34:
    mr 3, 28
    bl fn_8023E724
    lfs 0, 0x8(3)
    mr 4, 29
    psq_l 1, 0x0(3), 0, 0
    mr 3, 28
    stfs 30, 0x1c(1)
    li 5, 0x2e2
    li 6, 0xff
    li 7, -0x80
    stfs 0, 0x10(1)
    li 8, -0x80
    psq_l 2, 0x1c(1), 1, 0
    li 9, 0x1
    psq_l 3, 0x10(1), 1, 0
    stfs 30, 0x14(1)
    ps_add 2, 3, 2
    stfs 31, 0x18(1)
    psq_l 3, 0x14(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_add 2, 1, 3
    psq_st 1, 0x8(1), 0, 0
    lfs 3, 0x10(1)
    psq_st 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    psq_st 2, 0x8(1), 0, 0
    psq_st 2, 0x0(29), 0, 0
    stfs 3, 0x28(1)
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8036CC34
    .4byte 0x48000174 # b .L_8036CE28
L_8036CCB8:
    lwz 3, 0x260(31)
    cmpwi 3, 0x0
    .4byte 0x40820060 # bne .L_8036CD20
    lwz 0, 0x258(31)
    cmpwi 0, 0x1e
    .4byte 0x40810054 # ble .L_8036CD20
    li 28, 0x0
    addi 30, 1, 0x38
L_8036CCD8:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 30
    lfs 0, 0x8(3)
    mr 3, 28
    li 5, 0x2e2
    li 6, 0xff
    psq_st 1, 0x0(30), 0, 0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x40(1)
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC0 # blt .L_8036CCD8
    .4byte 0x4800010C # b .L_8036CE28
L_8036CD20:
    cmpwi 3, 0xd
    .4byte 0x408000B8 # bge .L_8036CDDC
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x408200F8 # bne .L_8036CE28
    lwz 4, 0x260(31)
    lis 3, lbl_80474E70@ha
    addi 3, 3, lbl_80474E70@l
    addi 29, 1, 0x2c
    addi 0, 4, 0x1
    li 28, 0x0
    stw 0, 0x260(31)
    lis 30, 0x1
    lwz 0, 0x260(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x258(31)
L_8036CD64:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 28
    li 6, 0xff
    li 7, -0x80
    psq_st 1, 0x0(29), 0, 0
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x34(1)
    lwz 5, 0x260(31)
    addi 5, 5, 0xdb
    bl fn_80230498
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8036CDB8
    mr 3, 28
    addi 4, 30, 0x1
    bl fn_80230FD0
L_8036CDB8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA4 # blt .L_8036CD64
    lwz 0, 0x260(31)
    cmpwi 0, 0xd
    .4byte 0x4082005C # bne .L_8036CE28
    li 0, 0x19
    stw 0, 0x258(31)
    .4byte 0x48000050 # b .L_8036CE28
L_8036CDDC:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8036CE04
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8036CE28
    li 0, -0x1
    stw 0, 0x25c(31)
    .4byte 0x48000028 # b .L_8036CE28
L_8036CE04:
    cmpwi 0, 0xf
    .4byte 0x40820020 # bne .L_8036CE28
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8036CE28:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0x84(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8036CE58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x4(3)
    lwz 3, 0x24c(3)
    cmpwi 0, 0x8
    addi 31, 3, 0x147
    .4byte 0x40800050 # bge .L_8036CED0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80474EAC@ha
    addi 5, 3, lbl_80474EAC@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022FD44 # lfs f1, lbl_80542CE4@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 30, 0x24
    bl fn_802F86CC
L_8036CED0:
    li 0, 0x0
    addi 5, 30, 0x24
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x24c(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x147
    bl fn_803075AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8036CF1C:
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
    stw 28, 0x80(1)
    mr 31, 3
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    lfs 2, 0x60(3)
    stfs 2, 0x68(1)
    lfs 5, 0x64(3)
    stfs 5, 0x6c(1)
    lfs 3, 0x68(3)
    stfs 3, 0x70(1)
    lfs 4, 0x6c(3)
    stfs 4, 0x74(1)
    lfs 1, 0xc(3)
    fadds 2, 2, 1
    fadds 1, 3, 1
    stfs 2, 0x68(1)
    lfs 3, 0x10(3)
    fadds 2, 5, 3
    stfs 1, 0x70(1)
    fadds 1, 4, 3
    stfs 2, 0x6c(1)
    stfs 1, 0x74(1)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 3, 0x258(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8036CFB8
    subi 0, 3, 0x1
    stw 0, 0x258(31)
L_8036CFB8:
    mr 3, 31
    bl fn_8036CBBC
    lwz 4, 0x4(31)
    addi 3, 1, 0x68
    lwz 5, 0x198(31)
    bl fn_80239470
    mr. 28, 3
    .4byte 0x41800310 # blt .L_8036D2E4
    lwz 4, 0x4(31)
    addi 3, 1, 0x68
    lwz 5, 0x198(31)
    bl fn_80239914
    mr 3, 28
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(31)
    .4byte 0xC002FD48 # lfs f0, lbl_80542CE8@sda21(r0)
    fsubs 2, 1, 2
    fabs 1, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8036D02C
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    mr 3, 28
    stfs 2, 0x44(1)
    addi 4, 1, 0x44
    stfs 0, 0x48(1)
    stfs 0, 0x4c(1)
    bl fn_8023DFF4
L_8036D02C:
    lbz 0, 0x250(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8036D054
    .4byte 0xC002FD40 # lfs f0, lbl_80542CE0@sda21(r0)
    stfs 0, 0x254(31)
    lfs 1, 0x28(31)
    lfs 0, 0x254(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000304 # b .L_8036D354
L_8036D054:
    lfs 2, 0x254(31)
    .4byte 0xC022FD4C # lfs f1, lbl_80542CEC@sda21(r0)
    fcmpo cr0, 2, 1
    cror eq, gt, eq
    .4byte 0x408201C4 # bne .L_8036D228
    .4byte 0xC002FD50 # lfs f0, lbl_80542CF0@sda21(r0)
    .4byte 0xC3C2FD40 # lfs f30, lbl_80542CE0@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x254(31)
    lfs 0, 0x254(31)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820194 # bne .L_8036D218
    stfs 30, 0x254(31)
    lwz 0, 0x90(31)
    extrwi. 0, 0, 2, 26
    .4byte 0x4182000C # beq .L_8036D0A0
    li 0, 0x0
    .4byte 0x4800006C # b .L_8036D108
L_8036D0A0:
    li 30, 0x0
    mr 29, 31
L_8036D0A8:
    bl SpatialRegistry_GetBase
    lwz 4, 0x234(29)
    bl fn_801F666C
    lfs 0, 0x254(3)
    fcmpo cr0, 0, 30
    .4byte 0x4080000C # bge .L_8036D0C8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8036D108
L_8036D0C8:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180FFD4 # blt .L_8036D0A8
    mr 29, 31
    li 28, 0x0
    li 30, 0x1
L_8036D0E4:
    bl SpatialRegistry_GetBase
    lwz 4, 0x234(29)
    bl fn_801F666C
    addi 28, 28, 0x1
    stb 30, 0x250(3)
    cmpwi 28, 0x3
    addi 29, 29, 0x4
    .4byte 0x4180FFE4 # blt .L_8036D0E4
    li 0, 0x1
L_8036D108:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40820244 # bne .L_8036D354
    li 0, 0x1
    lis 4, 0x3
    stb 0, 0x250(31)
    mr 3, 31
    addi 4, 4, 0x4b
    li 5, 0x0
    bl fn_801F0E34
    lfs 2, 0x28(31)
    lfs 0, 0x254(31)
    .4byte 0xC022FD38 # lfs f1, lbl_80542CD8@sda21(r0)
    fadds 2, 2, 0
    .4byte 0xC002FD4C # lfs f0, lbl_80542CEC@sda21(r0)
    stfs 2, 0x10(31)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_8036D20C
    li 0, 0x32
    li 3, 0x4
    stw 0, 0x258(31)
    li 0, 0x0
    .4byte 0xC3C2FD38 # lfs f30, lbl_80542CD8@sda21(r0)
    addi 30, 1, 0x38
    stw 3, 0x25c(31)
    li 28, 0x0
    .4byte 0xC3E2FD3C # lfs f31, lbl_80542CDC@sda21(r0)
    stw 0, 0x260(31)
L_8036D188:
    mr 3, 28
    bl fn_8023E724
    lfs 0, 0x8(3)
    mr 4, 30
    psq_l 1, 0x0(3), 0, 0
    mr 3, 28
    stfs 30, 0x34(1)
    li 5, 0x2e2
    li 6, 0xff
    li 7, -0x80
    stfs 0, 0x1c(1)
    li 8, -0x80
    psq_l 2, 0x34(1), 1, 0
    li 9, 0x1
    psq_l 3, 0x1c(1), 1, 0
    stfs 30, 0x2c(1)
    ps_add 2, 3, 2
    stfs 31, 0x30(1)
    psq_l 3, 0x2c(1), 0, 0
    psq_st 2, 0x1c(1), 1, 0
    ps_add 2, 1, 3
    psq_st 1, 0x14(1), 0, 0
    lfs 3, 0x1c(1)
    psq_st 1, 0x5c(1), 0, 0
    stfs 0, 0x64(1)
    psq_st 2, 0x14(1), 0, 0
    psq_st 2, 0x0(30), 0, 0
    stfs 3, 0x40(1)
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8036D188
    .4byte 0x4800014C # b .L_8036D354
L_8036D20C:
    li 0, 0x0
    stw 0, 0x25c(31)
    .4byte 0x48000140 # b .L_8036D354
L_8036D218:
    lfs 0, 0x28(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000130 # b .L_8036D354
L_8036D228:
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4082007C # bne .L_8036D2B0
    psq_l 2, 0xc(31), 0, 0
    mr 3, 28
    lfs 1, 0x14(31)
    .4byte 0xC002FD54 # lfs f0, lbl_80542CF4@sda21(r0)
    psq_st 2, 0x240(31), 0, 0
    stfs 1, 0x248(31)
    lfs 1, 0x244(31)
    fadds 0, 1, 0
    stfs 0, 0x244(31)
    bl fn_8023E724
    lfs 0, 0x8(3)
    addi 4, 1, 0x20
    lfs 1, 0x248(31)
    stfs 0, 0x58(1)
    psq_l 0, 0x0(3), 0, 0
    mr 3, 28
    stfs 1, 0x10(1)
    psq_l 2, 0x58(1), 1, 0
    psq_l 3, 0x10(1), 1, 0
    psq_l 1, 0x240(31), 0, 0
    ps_sub 2, 3, 2
    psq_st 0, 0x50(1), 0, 0
    ps_sub 0, 1, 0
    psq_st 1, 0x8(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    lfs 1, 0x10(1)
    psq_st 0, 0x8(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    stfs 1, 0x28(1)
    bl fn_8023DFF4
L_8036D2B0:
    lfs 1, 0x254(31)
    .4byte 0xC042FD58 # lfs f2, lbl_80542CF8@sda21(r0)
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x254(31)
    stfs 0, 0x3c(31)
    stfs 2, 0x40(31)
    stfs 0, 0x44(31)
    lfs 1, 0x28(31)
    lfs 0, 0x254(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000074 # b .L_8036D354
L_8036D2E4:
    lbz 0, 0x250(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8036D30C
    .4byte 0xC002FD40 # lfs f0, lbl_80542CE0@sda21(r0)
    stfs 0, 0x254(31)
    lfs 1, 0x28(31)
    lfs 0, 0x254(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x4800004C # b .L_8036D354
L_8036D30C:
    lfs 2, 0x254(31)
    .4byte 0xC022FD58 # lfs f1, lbl_80542CF8@sda21(r0)
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x254(31)
    lfs 1, 0x254(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8036D330
    stfs 0, 0x254(31)
L_8036D330:
    .4byte 0xC022FD38 # lfs f1, lbl_80542CD8@sda21(r0)
    .4byte 0xC002FD5C # lfs f0, lbl_80542CFC@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    lfs 1, 0x28(31)
    lfs 0, 0x254(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_8036D354:
    lfs 1, 0x254(31)
    .4byte 0xC002FD44 # lfs f0, lbl_80542CE4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8036D370
    li 0, 0x0
    stw 0, 0x24c(31)
    .4byte 0x4800003C # b .L_8036D3A8
L_8036D370:
    .4byte 0xC002FD60 # lfs f0, lbl_80542D00@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8036D388
    li 0, 0x1
    stw 0, 0x24c(31)
    .4byte 0x48000024 # b .L_8036D3A8
L_8036D388:
    .4byte 0xC002FD40 # lfs f0, lbl_80542CE0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8036D3A0
    li 0, 0x2
    stw 0, 0x24c(31)
    .4byte 0x4800000C # b .L_8036D3A8
L_8036D3A0:
    li 0, 0x4
    stw 0, 0x24c(31)
L_8036D3A8:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    lwz 0, 0xb4(1)
    lwz 28, 0x80(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_8036D3D8:
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
    lwz 0, 0x90(3)
    mr 31, 3
    extrwi. 0, 0, 2, 26
    .4byte 0x408200F8 # bne .L_8036D504
    .4byte 0xC3A2FD54 # lfs f29, lbl_80542CF4@sda21(r0)
    mr 27, 31
    .4byte 0xCBC2FD68 # lfd f30, lbl_80542D08@sda21(r0)
    li 26, 0x0
    .4byte 0xC3E2FD38 # lfs f31, lbl_80542CD8@sda21(r0)
    lis 29, 0x4330
    lis 30, 0x5053
L_8036D42C:
    addi 3, 26, 0x1
    li 4, -0x1
    xoris 0, 3, 0x8000
    stw 4, 0x234(27)
    slwi 3, 3, 4
    stw 0, 0x34(1)
    lfs 1, 0x14(31)
    stw 29, 0x30(1)
    psq_l 2, 0xc(31), 0, 0
    lfd 0, 0x30(1)
    stfs 31, 0x1c(1)
    fsubs 0, 0, 30
    lwz 0, 0x90(31)
    stfs 1, 0x10(1)
    psq_l 1, 0x1c(1), 1, 0
    rlwinm 0, 0, 0, 28, 4
    fmuls 0, 29, 0
    psq_l 3, 0x10(1), 1, 0
    or 28, 0, 3
    stfs 31, 0x18(1)
    ps_add 1, 3, 1
    stfs 0, 0x14(1)
    psq_l 0, 0x14(1), 0, 0
    psq_st 1, 0x10(1), 1, 0
    ps_add 0, 2, 0
    psq_st 2, 0x8(1), 0, 0
    lfs 1, 0x10(1)
    psq_st 0, 0x8(1), 0, 0
    psq_st 0, 0x20(1), 0, 0
    stfs 1, 0x28(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 7, 28
    addi 4, 30, 0x5732
    addi 6, 1, 0x20
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x234(27)
    lwz 28, 0x234(27)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8036D4EC
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    lwz 0, 0x198(31)
    stw 0, 0x230(3)
    .4byte 0x4800000C # b .L_8036D4F4
L_8036D4EC:
    mr 3, 31
    bl fn_801F3668
L_8036D4F4:
    addi 26, 26, 0x1
    addi 27, 27, 0x4
    cmpwi 26, 0x3
    .4byte 0x4180FF2C # blt .L_8036D42C
L_8036D504:
    .4byte 0xC042FD64 # lfs f2, lbl_80542D04@sda21(r0)
    li 0, 0x0
    .4byte 0xC022FD40 # lfs f1, lbl_80542CE0@sda21(r0)
    mr 3, 31
    stfs 2, 0x60(31)
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x108(31)
    stw 0, 0x24c(31)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    stb 3, 0x250(31)
    lbz 0, 0x250(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8036D57C
    .4byte 0xC002FD40 # lfs f0, lbl_80542CE0@sda21(r0)
    stfs 0, 0x254(31)
    lfs 1, 0x28(31)
    lfs 0, 0x254(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x4800000C # b .L_8036D584
L_8036D57C:
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    stfs 0, 0x254(31)
L_8036D584:
    .4byte 0xC002FD38 # lfs f0, lbl_80542CD8@sda21(r0)
    li 3, 0x0
    li 0, -0x1
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0x258(31)
    stw 0, 0x25c(31)
    stw 3, 0x260(31)
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

fn_8036D5D4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050C400@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050C400@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D624
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
L_8036D624:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D65C
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
L_8036D65C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D694
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
L_8036D694:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D6CC
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
L_8036D6CC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D704
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
L_8036D704:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D73C
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
L_8036D73C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D774
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
L_8036D774:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D7AC
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
L_8036D7AC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036D7E4
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
L_8036D7E4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8036D7F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8036D83C
    lis 5, lbl_804AE288@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE288@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8036D83C
    mr 3, 30
    bl dtor_80084580
L_8036D83C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8036D858:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 4
    bl SpatialRegistry_GetBase
    lwz 31, 0x1008(3)
    li 28, 0x0
    li 29, 0x0
    .4byte 0x48000084 # b .L_8036D900
L_8036D880:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 30, 3, 0
    cmplwi 30, 0x0
    .4byte 0x41820068 # beq .L_8036D8F8
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4c45
    cmplwi 0, 0x4146
    .4byte 0x40820058 # bne .L_8036D8F8
    lbz 0, 0x11c(30)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_8036D8F8
    mr 3, 27
    addi 4, 30, 0xc
    bl PSVECDistance
    .4byte 0xC002FD70 # lfs f0, lbl_80542D10@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_8036D8F8
    lfs 2, 0xc(30)
    lfs 1, 0x0(27)
    .4byte 0xC002FD74 # lfs f0, lbl_80542D14@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_8036D8F8
    li 0, 0x1
    stb 0, 0x230(30)
    .4byte 0x48000014 # b .L_8036D908
L_8036D8F8:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_8036D900:
    cmpw 28, 31
    .4byte 0x4180FF7C # blt .L_8036D880
L_8036D908:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8036D91C:
    blr

fn_8036D920:
    blr

fn_8036D924:
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
    stmw 24, 0x40(1)
    mr 27, 3
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x408201B4 # bne .L_8036DB14
    .4byte 0xC022FD80 # lfs f1, lbl_80542D20@sda21(r0)
    lis 31, 0x4330
    lfs 0, 0x10(27)
    li 29, 0x0
    lfs 3, 0xc(27)
    fdivs 0, 0, 1
    .4byte 0xC042FD7C # lfs f2, lbl_80542D1C@sda21(r0)
    stw 31, 0x28(1)
    .4byte 0xCBE2FD90 # lfd f31, lbl_80542D30@sda21(r0)
    stw 31, 0x38(1)
    .4byte 0xC082FD78 # lfs f4, lbl_80542D18@sda21(r0)
    fmuls 2, 3, 2
    .4byte 0xC382FD84 # lfs f28, lbl_80542D24@sda21(r0)
    fctiwz 0, 0
    fctiwz 2, 2
    stfd 0, 0x30(1)
    stfd 2, 0x20(1)
    lwz 0, 0x34(1)
    lwz 3, 0x24(1)
    xoris 0, 0, 0x8000
    xoris 3, 3, 0x8000
    stw 0, 0x3c(1)
    stw 3, 0x2c(1)
    lfd 0, 0x38(1)
    lfd 2, 0x28(1)
    fsubs 0, 0, 31
    fsubs 2, 2, 31
    fmuls 29, 1, 0
    fmuls 30, 4, 2
L_8036D9D8:
    xoris 0, 29, 0x8000
    stw 31, 0x38(1)
    li 28, 0x0
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 31
    fmadds 0, 28, 0, 29
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 30, 0x34(1)
    xoris 25, 30, 0x8000
L_8036DA04:
    xoris 0, 28, 0x8000
    stw 31, 0x38(1)
    addi 3, 1, 0x8
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    stw 31, 0x28(1)
    fsubs 0, 0, 31
    stw 25, 0x24(1)
    fmadds 1, 28, 0, 30
    stw 31, 0x20(1)
    lfd 0, 0x20(1)
    fctiwz 1, 1
    fsubs 0, 0, 31
    stfd 1, 0x30(1)
    lwz 24, 0x34(1)
    stfs 0, 0xc(1)
    xoris 0, 24, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 31
    stfs 0, 0x8(1)
    lwz 4, 0x4(27)
    bl fn_80226BC4
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    lwz 4, 0x4(27)
    lwz 3, 0x20(6)
    bl fn_802F9908
    clrlwi 26, 3, 22
    subi 0, 26, 0x1e1
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_8036DA98
    cmplwi 26, 0x1f1
    .4byte 0x4182000C # beq .L_8036DA98
    cmplwi 26, 0x1f2
    .4byte 0x40820068 # bne .L_8036DAFC
L_8036DA98:
    lis 3, 0x4330
    xoris 4, 24, 0x8000
    xoris 0, 30, 0x8000
    stw 4, 0x3c(1)
    .4byte 0xC002FD88 # lfs f0, lbl_80542D28@sda21(r0)
    stw 3, 0x38(1)
    .4byte 0xC862FD90 # lfd f3, lbl_80542D30@sda21(r0)
    lfd 1, 0x38(1)
    stw 0, 0x34(1)
    fsubs 2, 1, 3
    stw 3, 0x30(1)
    lfd 1, 0x30(1)
    stfs 2, 0x10(1)
    fsubs 1, 1, 3
    stfs 0, 0x18(1)
    stfs 1, 0x14(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4c45
    lwz 5, 0x4(27)
    mr 7, 26
    addi 6, 1, 0x10
    addi 4, 4, 0x4146
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8036DAFC:
    addi 28, 28, 0x1
    cmpwi 28, 0x20
    .4byte 0x4180FF00 # blt .L_8036DA04
    addi 29, 29, 0x1
    cmpwi 29, 0x18
    .4byte 0x4180FEC8 # blt .L_8036D9D8
L_8036DB14:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    psq_l 28, 0x68(1), 0, 0
    lfd 28, 0x60(1)
    lmw 24, 0x40(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8036DB48:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050C500@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050C500@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DB98
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
L_8036DB98:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DBD0
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
L_8036DBD0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DC08
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
L_8036DC08:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DC40
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
L_8036DC40:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DC78
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
L_8036DC78:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DCB0
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
L_8036DCB0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DCE8
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
L_8036DCE8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DD20
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
L_8036DD20:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036DD58
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
L_8036DD58:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8036DD6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8036DDB0
    lis 5, lbl_804AE2E0@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE2E0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8036DDB0
    mr 3, 30
    bl dtor_80084580
L_8036DDB0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8036DDCC:
    blr

fn_8036DDD0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 4, 0x4(3)
    addi 3, 31, 0x244
    bl fn_80226BC4
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(6)
    bl fn_802F9908
    lhz 0, 0x240(31)
    clrlwi 3, 3, 22
    cmplw 3, 0
    .4byte 0x41820010 # beq .L_8036DE24
    li 0, 0x1
    stb 0, 0x250(31)
    .4byte 0x480001C0 # b .L_8036DFE0
L_8036DE24:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_8036DE48
    lbz 0, 0x250(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8036DE48
    li 0, 0x0
    stb 0, 0x250(31)
    .4byte 0x48000030 # b .L_8036DE74
L_8036DE48:
    li 0, 0x0
    li 30, 0x0
    stb 0, 0x250(31)
L_8036DE54:
    mr 3, 30
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820110 # beq .L_8036DF70
    mr 3, 30
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x41820058 # beq .L_8036DEC8
L_8036DE74:
    lwz 0, 0x234(31)
    .4byte 0x38A2FD98 # li r5, lbl_80542D38@sda21
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022FDA0 # lfs f1, lbl_80542D40@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x23c(31)
    addis 0, 4, 0x1
    cmplwi 0, 0xffff
    .4byte 0x418200C8 # beq .L_8036DF7C
    mr 3, 31
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000B8 # b .L_8036DF7C
L_8036DEC8:
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 4, 1, 0x8
    lfs 0, 0x8(3)
    addi 3, 31, 0xc
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    bl PSVECDistance
    .4byte 0xC002FDA4 # lfs f0, lbl_80542D44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820078 # bne .L_8036DF70
    lfs 2, 0xc(31)
    lfs 1, 0x8(1)
    .4byte 0xC002FDA8 # lfs f0, lbl_80542D48@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820058 # bne .L_8036DF70
    lwz 0, 0x234(31)
    .4byte 0x38A2FD98 # li r5, lbl_80542D38@sda21
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022FDA0 # lfs f1, lbl_80542D40@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x23c(31)
    addis 0, 4, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820020 # beq .L_8036DF7C
    mr 3, 31
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_8036DF7C
L_8036DF70:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FEDC # blt .L_8036DE54
L_8036DF7C:
    lbz 0, 0x230(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_8036DFE0
    li 0, 0x0
    .4byte 0x38A2FD98 # li r5, lbl_80542D38@sda21
    stb 0, 0x230(31)
    addi 4, 31, 0xc
    .4byte 0xC022FDA0 # lfs f1, lbl_80542D40@sda21(r0)
    li 6, 0x0
    lwz 0, 0x234(31)
    li 7, 0x2
    lwz 3, 0x4(31)
    li 8, 0x0
    slwi 0, 0, 1
    li 9, 0x0
    lhzx 5, 5, 0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x23c(31)
    addis 0, 4, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820010 # beq .L_8036DFE0
    mr 3, 31
    li 5, 0x0
    bl fn_801F0E34
L_8036DFE0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8036DFF8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 22
    cmplwi 0, 0x1e1
    .4byte 0x4082003C # bne .L_8036E054
    psq_l 0, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC022FDAC # lfs f1, lbl_80542D4C@sda21(r0)
    psq_st 0, 0x244(31), 0, 0
    .4byte 0xC002FDB0 # lfs f0, lbl_80542D50@sda21(r0)
    stfs 2, 0x24c(31)
    lfs 2, 0xc(31)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    sth 0, 0x240(31)
    .4byte 0x480001DC # b .L_8036E22C
L_8036E054:
    cmplwi 0, 0x1e2
    .4byte 0x4082007C # bne .L_8036E0D4
    lfs 1, 0xc(31)
    addi 3, 1, 0x20
    .4byte 0xC002FDAC # lfs f0, lbl_80542D4C@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(6)
    bl fn_802F9908
    clrlwi 0, 3, 22
    cmplwi 0, 0x1e1
    .4byte 0x40820010 # bne .L_8036E0AC
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000264 # b .L_8036E30C
L_8036E0AC:
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002FDB0 # lfs f0, lbl_80542D50@sda21(r0)
    psq_st 2, 0x244(31), 0, 0
    stfs 1, 0x24c(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    sth 0, 0x240(31)
    .4byte 0x4800015C # b .L_8036E22C
L_8036E0D4:
    cmplwi 0, 0x1f1
    .4byte 0x4082008C # bne .L_8036E164
    lfs 2, 0x10(31)
    addi 3, 1, 0x18
    .4byte 0xC022FDAC # lfs f1, lbl_80542D4C@sda21(r0)
    lfs 0, 0xc(31)
    fsubs 1, 2, 1
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(6)
    bl fn_802F9908
    clrlwi 0, 3, 22
    cmplwi 0, 0x1e1
    .4byte 0x40820010 # bne .L_8036E12C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001E4 # b .L_8036E30C
L_8036E12C:
    psq_l 0, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC022FDAC # lfs f1, lbl_80542D4C@sda21(r0)
    psq_st 0, 0x244(31), 0, 0
    .4byte 0xC002FDB4 # lfs f0, lbl_80542D54@sda21(r0)
    stfs 2, 0x24c(31)
    lfs 2, 0xc(31)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    sth 0, 0x240(31)
    .4byte 0x480000CC # b .L_8036E22C
L_8036E164:
    lfs 1, 0xc(31)
    addi 3, 1, 0x10
    .4byte 0xC002FDAC # lfs f0, lbl_80542D4C@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x14(1)
    stfs 0, 0x10(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(6)
    bl fn_802F9908
    clrlwi 0, 3, 22
    cmplwi 0, 0x1f1
    .4byte 0x40820010 # bne .L_8036E1B4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800015C # b .L_8036E30C
L_8036E1B4:
    lfs 2, 0x10(31)
    addi 3, 1, 0x8
    .4byte 0xC022FDAC # lfs f1, lbl_80542D4C@sda21(r0)
    lfs 0, 0xc(31)
    fsubs 2, 2, 1
    fsubs 0, 0, 1
    stfs 2, 0xc(1)
    stfs 0, 0x8(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    lwz 4, 0x4(31)
    lwz 3, 0x20(6)
    bl fn_802F9908
    clrlwi 0, 3, 22
    cmplwi 0, 0x1e2
    .4byte 0x40820010 # bne .L_8036E208
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000108 # b .L_8036E30C
L_8036E208:
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002FDB4 # lfs f0, lbl_80542D54@sda21(r0)
    psq_st 2, 0x244(31), 0, 0
    stfs 1, 0x24c(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    sth 0, 0x240(31)
L_8036E22C:
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    stw 3, 0x238(31)
    li 0, -0x1
    stw 0, 0x23c(31)
    lwz 3, 0x238(31)
    lbz 0, 0x0(3)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x4182000C # beq .L_8036E25C
    cmpwi 0, 0x73
    .4byte 0x4082001C # bne .L_8036E274
L_8036E25C:
    li 0, 0x1
    lis 3, 0x5
    stw 0, 0x234(31)
    addi 0, 3, 0x46
    stw 0, 0x23c(31)
    .4byte 0x48000090 # b .L_8036E300
L_8036E274:
    cmpwi 0, 0x6c
    .4byte 0x4182001C # beq .L_8036E294
    cmpwi 0, 0x78
    .4byte 0x41820014 # beq .L_8036E294
    cmpwi 0, 0x70
    .4byte 0x4182000C # beq .L_8036E294
    cmpwi 0, 0x74
    .4byte 0x4082001C # bne .L_8036E2AC
L_8036E294:
    li 0, 0x2
    lis 3, 0x5
    stw 0, 0x234(31)
    addi 0, 3, 0x47
    stw 0, 0x23c(31)
    .4byte 0x48000058 # b .L_8036E300
L_8036E2AC:
    cmpwi 0, 0x75
    .4byte 0x4082001C # bne .L_8036E2CC
    li 0, 0x3
    lis 3, 0x5
    stw 0, 0x234(31)
    addi 0, 3, 0x70
    stw 0, 0x23c(31)
    .4byte 0x48000038 # b .L_8036E300
L_8036E2CC:
    cmpwi 0, 0x31
    .4byte 0x40820010 # bne .L_8036E2E0
    lbz 0, 0x1(3)
    cmpwi 0, 0x62
    .4byte 0x4182001C # beq .L_8036E2F8
L_8036E2E0:
    li 0, 0x0
    lis 3, 0x5
    stw 0, 0x234(31)
    addi 0, 3, 0x46
    stw 0, 0x23c(31)
    .4byte 0x4800000C # b .L_8036E300
L_8036E2F8:
    li 0, 0x0
    stb 0, 0x11c(31)
L_8036E300:
    li 0, 0x0
    stb 0, 0x250(31)
    stb 0, 0x230(31)
L_8036E30C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8036E320:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050C600@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050C600@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E370
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
L_8036E370:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E3A8
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
L_8036E3A8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E3E0
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
L_8036E3E0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E418
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
L_8036E418:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E450
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
L_8036E450:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E488
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
L_8036E488:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E4C0
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
L_8036E4C0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E4F8
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
L_8036E4F8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036E530
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
L_8036E530:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8036E544:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
    mr 30, 28
L_8036E570:
    lwz 0, 0x258(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8036E590
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x258(30)
    bl fn_800EC240
    stw 31, 0x258(30)
L_8036E590:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x14
    .4byte 0x4180FFD4 # blt .L_8036E570
    lwz 0, 0x2a8(28)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8036E5C4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2a8(28)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2a8(28)
L_8036E5C4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8036E5E4:
    blr

fn_8036E5E8:
    stwu 1, -0x1b0(1)
    mflr 0
    stw 0, 0x1b4(1)
    stfd 31, 0x1a0(1)
    psq_st 31, 0x1a8(1), 0, 0
    stfd 30, 0x190(1)
    psq_st 30, 0x198(1), 0, 0
    stfd 29, 0x180(1)
    psq_st 29, 0x188(1), 0, 0
    stfd 28, 0x170(1)
    psq_st 28, 0x178(1), 0, 0
    stfd 27, 0x160(1)
    psq_st 27, 0x168(1), 0, 0
    stfd 26, 0x150(1)
    psq_st 26, 0x158(1), 0, 0
    stfd 25, 0x140(1)
    psq_st 25, 0x148(1), 0, 0
    stw 31, 0x13c(1)
    stw 30, 0x138(1)
    stw 29, 0x134(1)
    stw 28, 0x130(1)
    mr 28, 3
    lwz 3, 0x234(3)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8036E654
    subi 0, 3, 0x1
    stw 0, 0x234(28)
L_8036E654:
    lwz 3, 0x23c(28)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8036E668
    subi 0, 3, 0x1
    stw 0, 0x23c(28)
L_8036E668:
    lwz 3, 0x2b0(28)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_8036E67C
    subi 0, 3, 0x1
    stw 0, 0x2b0(28)
L_8036E67C:
    lwz 3, 0x250(28)
    lis 0, 0x4330
    psq_l 2, 0xc(28), 0, 0
    mr 31, 28
    lfs 1, 0x14(28)
    li 29, 0x0
    .4byte 0xC002FDC0 # lfs f0, lbl_80542D60@sda21(r0)
    li 30, 0x0
    psq_st 2, 0xc(3), 0, 0
    .4byte 0xC862FE00 # lfd f3, lbl_80542DA0@sda21(r0)
    stfs 1, 0x14(3)
    .4byte 0xC042FDBC # lfs f2, lbl_80542D5C@sda21(r0)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    stw 0, 0x118(1)
    lwz 3, 0x4(3)
    stw 0, 0x120(1)
    lhz 4, 0x4(3)
    lhz 0, 0x6(3)
    xoris 3, 4, 0x8000
    stfs 0, 0x108(1)
    xoris 0, 0, 0x8000
    stw 3, 0x11c(1)
    stw 0, 0x124(1)
    lfd 1, 0x118(1)
    lfd 0, 0x120(1)
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    fmuls 1, 1, 2
    fmuls 0, 0, 2
    stfs 1, 0x100(1)
    stfs 0, 0x104(1)
L_8036E6F8:
    lwz 5, 0x258(31)
    cmplwi 5, 0x0
    .4byte 0x4182004C # beq .L_8036E74C
    lwz 0, 0xf4(5)
    li 4, 0x0
    addi 29, 29, 0x1
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_8036E72C
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_8036E72C
    li 4, 0x1
L_8036E72C:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_8036E74C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x258(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x258(31)
L_8036E74C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x14
    .4byte 0x4180FFA0 # blt .L_8036E6F8
    lwz 0, 0x2b4(28)
    cmpw 29, 0
    .4byte 0x41800008 # blt .L_8036E76C
    stw 29, 0x2b4(28)
L_8036E76C:
    lwz 3, 0x230(28)
    cmpwi 3, 0x4
    .4byte 0x4182082C # beq .L_8036EFA0
    .4byte 0x4080001C # bge .L_8036E794
    cmpwi 3, 0x1
    .4byte 0x41820154 # beq .L_8036E8D4
    .4byte 0x408003BC # bge .L_8036EB40
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_8036E7A4
    .4byte 0x48000DAC # b .L_8036F53C
L_8036E794:
    cmpwi 3, 0x6
    .4byte 0x4182085C # beq .L_8036EFF4
    .4byte 0x40800DA0 # bge .L_8036F53C
    .4byte 0x48000824 # b .L_8036EFC4
L_8036E7A4:
    psq_l 1, 0xc(28), 0, 0
    psq_l 0, 0x3c(28), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(28), 0, 0
    psq_l 1, 0x14(28), 1, 0
    psq_l 0, 0x44(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(28), 1, 0
    lwz 0, 0x23c(28)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8036E7F8
    lwz 0, 0x240(28)
    stw 0, 0x23c(28)
    lwz 3, 0x244(28)
    addi 0, 3, 0x1
    stw 0, 0x244(28)
    lwz 0, 0x244(28)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8036E7F8
    li 0, 0x0
    stw 0, 0x244(28)
L_8036E7F8:
    lwz 0, 0x238(28)
    cmpwi 0, 0x0
    .4byte 0x40800080 # bge .L_8036E880
    bl SpatialRegistry_GetBase
    li 31, 0x0
    lwz 29, 0x1008(3)
    mr 30, 31
    .4byte 0x48000064 # b .L_8036E878
L_8036E818:
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820048 # beq .L_8036E870
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x4545
    cmplwi 0, 0x5443
    .4byte 0x40820038 # bne .L_8036E870
    lwz 0, 0x234(4)
    cmpwi 0, 0x4
    .4byte 0x4082002C # bne .L_8036E870
    lwz 3, 0x238(4)
    cmpwi 3, 0x26
    .4byte 0x41820018 # beq .L_8036E868
    subi 0, 3, 0x27
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8036E868
    cmpwi 3, 0x29
    .4byte 0x4082000C # bne .L_8036E870
L_8036E868:
    stw 31, 0x238(28)
    .4byte 0x48000014 # b .L_8036E880
L_8036E870:
    addi 30, 30, 0x4
    addi 31, 31, 0x1
L_8036E878:
    cmpw 31, 29
    .4byte 0x4180FF9C # blt .L_8036E818
L_8036E880:
    lwz 29, 0x238(28)
    cmpwi 29, 0x0
    .4byte 0x41800CB4 # blt .L_8036F53C
    bl SpatialRegistry_GetBase
    slwi 0, 29, 2
    lfs 2, 0x10(28)
    add 3, 3, 0
    .4byte 0xC002FDC4 # lfs f0, lbl_80542D64@sda21(r0)
    lwz 3, 0x8(3)
    lfs 1, 0x10(3)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800C8C # bge .L_8036F53C
    lwz 4, 0x230(28)
    li 3, 0x32
    li 0, 0x0
    addi 4, 4, 0x1
    stw 4, 0x230(28)
    stw 3, 0x234(28)
    stw 0, 0x244(28)
    .4byte 0x48000C6C # b .L_8036F53C
L_8036E8D4:
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x40820C60 # bne .L_8036F53C
    .4byte 0xC002FDC0 # lfs f0, lbl_80542D60@sda21(r0)
    li 5, 0x0
    lfs 2, 0x108(1)
    li 4, 0x10
    stfs 0, 0xd4(1)
    li 3, 0x41
    .4byte 0xC022FDC8 # lfs f1, lbl_80542D68@sda21(r0)
    li 0, 0x4
    stfs 2, 0x38(1)
    mr 6, 5
    psq_l 0, 0xd4(1), 1, 0
    mr 7, 28
    psq_l 2, 0x38(1), 1, 0
    addi 8, 1, 0x54
    stw 4, 0x24c(28)
    ps_add 3, 2, 0
    .4byte 0xC002FDCC # lfs f0, lbl_80542D6C@sda21(r0)
    stw 5, 0x244(28)
    psq_l 2, 0x100(1), 0, 0
    psq_st 3, 0x38(1), 1, 0
    lwz 4, 0x230(28)
    lfs 3, 0x38(1)
    stfs 1, 0xcc(1)
    addi 4, 4, 0x1
    frsp 1, 3
    stfs 0, 0xd0(1)
    psq_l 0, 0xcc(1), 0, 0
    stw 4, 0x230(28)
    ps_add 0, 2, 0
    stw 3, 0x234(28)
    psq_st 2, 0x30(1), 0, 0
    psq_st 0, 0x30(1), 0, 0
    psq_st 0, 0xd8(1), 0, 0
    stfs 3, 0xe0(1)
    psq_st 0, 0x10c(1), 0, 0
    stfs 3, 0x114(1)
    psq_st 0, 0xc0(1), 0, 0
    stfs 1, 0xc8(1)
    stw 5, 0x5c(1)
    stw 5, 0x58(1)
    stw 5, 0x54(1)
    mtctr 0
L_8036E988:
    lwz 0, 0x258(7)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036E9A8
    addi 5, 5, 0x1
    stw 6, 0x0(8)
    cmpwi 5, 0x3
    addi 8, 8, 0x4
    .4byte 0x418200A0 # beq .L_8036EA44
L_8036E9A8:
    lwz 0, 0x25c(7)
    addi 6, 6, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036E9CC
    addi 5, 5, 0x1
    stw 6, 0x0(8)
    cmpwi 5, 0x3
    addi 8, 8, 0x4
    .4byte 0x4182007C # beq .L_8036EA44
L_8036E9CC:
    lwz 0, 0x260(7)
    addi 6, 6, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036E9F0
    addi 5, 5, 0x1
    stw 6, 0x0(8)
    cmpwi 5, 0x3
    addi 8, 8, 0x4
    .4byte 0x41820058 # beq .L_8036EA44
L_8036E9F0:
    lwz 0, 0x264(7)
    addi 6, 6, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EA14
    addi 5, 5, 0x1
    stw 6, 0x0(8)
    cmpwi 5, 0x3
    addi 8, 8, 0x4
    .4byte 0x41820034 # beq .L_8036EA44
L_8036EA14:
    lwz 0, 0x268(7)
    addi 6, 6, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EA38
    addi 5, 5, 0x1
    stw 6, 0x0(8)
    cmpwi 5, 0x3
    addi 8, 8, 0x4
    .4byte 0x41820010 # beq .L_8036EA44
L_8036EA38:
    addi 7, 7, 0x14
    addi 6, 6, 0x1
    .4byte 0x4200FF48 # bdnz .L_8036E988
L_8036EA44:
    cmpwi 5, 0x3
    .4byte 0x40820AF4 # bne .L_8036F53C
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0xc0
    li 3, 0x0
    li 5, 0x569
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x54(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036EA9C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036EA9C:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0xc0
    li 3, 0x0
    li 5, 0x56a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x58(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036EAEC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036EAEC:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0xc0
    li 3, 0x0
    li 5, 0x56b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x5c(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820A10 # beq .L_8036F53C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x48000A00 # b .L_8036F53C
L_8036EB40:
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x40820A1C # bne .L_8036F564
    cmpwi 3, 0x2
    .4byte 0x408201FC # bne .L_8036ED4C
    .4byte 0xC002FDC0 # lfs f0, lbl_80542D60@sda21(r0)
    li 4, 0x0
    lfs 2, 0x108(1)
    li 3, 0x41
    stfs 0, 0xb0(1)
    li 0, 0x4
    .4byte 0xC022FDD0 # lfs f1, lbl_80542D70@sda21(r0)
    mr 5, 4
    stfs 2, 0x2c(1)
    mr 6, 28
    psq_l 3, 0xb0(1), 1, 0
    addi 7, 1, 0x10
    psq_l 4, 0x2c(1), 1, 0
    psq_l 2, 0x100(1), 0, 0
    ps_add 3, 4, 3
    stfs 1, 0xa8(1)
    stfs 0, 0xac(1)
    psq_st 3, 0x2c(1), 1, 0
    psq_l 0, 0xa8(1), 0, 0
    lfs 1, 0x2c(1)
    ps_add 3, 2, 0
    stw 3, 0x234(28)
    frsp 0, 1
    psq_st 2, 0x24(1), 0, 0
    psq_st 3, 0x24(1), 0, 0
    psq_st 3, 0xb4(1), 0, 0
    stfs 1, 0xbc(1)
    psq_st 3, 0x10c(1), 0, 0
    stfs 1, 0x114(1)
    psq_st 3, 0x9c(1), 0, 0
    stfs 0, 0xa4(1)
    stw 4, 0x14(1)
    stw 4, 0x10(1)
    mtctr 0
L_8036EBDC:
    lwz 0, 0x258(6)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EBFC
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x2
    addi 7, 7, 0x4
    .4byte 0x418200A0 # beq .L_8036EC98
L_8036EBFC:
    lwz 0, 0x25c(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EC20
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x2
    addi 7, 7, 0x4
    .4byte 0x4182007C # beq .L_8036EC98
L_8036EC20:
    lwz 0, 0x260(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EC44
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x2
    addi 7, 7, 0x4
    .4byte 0x41820058 # beq .L_8036EC98
L_8036EC44:
    lwz 0, 0x264(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EC68
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x2
    addi 7, 7, 0x4
    .4byte 0x41820034 # beq .L_8036EC98
L_8036EC68:
    lwz 0, 0x268(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EC8C
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x2
    addi 7, 7, 0x4
    .4byte 0x41820010 # beq .L_8036EC98
L_8036EC8C:
    addi 6, 6, 0x14
    addi 5, 5, 0x1
    .4byte 0x4200FF48 # bdnz .L_8036EBDC
L_8036EC98:
    cmpwi 4, 0x2
    .4byte 0x408202F4 # bne .L_8036EF90
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x9c
    li 3, 0x0
    li 5, 0x56c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x10(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036ECF0
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036ECF0:
    lis 3, lbl_80474EC0@ha
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 3, 3, lbl_80474EC0@l
    addi 4, 1, 0x9c
    lhz 5, 0x2(3)
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x14(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820258 # beq .L_8036EF90
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x48000248 # b .L_8036EF90
L_8036ED4C:
    .4byte 0xC002FDC0 # lfs f0, lbl_80542D60@sda21(r0)
    li 4, 0x0
    lfs 2, 0x108(1)
    li 3, 0x5a
    stfs 0, 0x8c(1)
    li 0, 0x4
    .4byte 0xC022FDD4 # lfs f1, lbl_80542D74@sda21(r0)
    mr 5, 4
    stfs 2, 0x20(1)
    mr 6, 28
    psq_l 2, 0x8c(1), 1, 0
    addi 7, 1, 0x48
    psq_l 3, 0x20(1), 1, 0
    .4byte 0xC002FDD8 # lfs f0, lbl_80542D78@sda21(r0)
    ps_add 3, 3, 2
    psq_l 2, 0x100(1), 0, 0
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
    psq_st 3, 0x20(1), 1, 0
    psq_l 0, 0x84(1), 0, 0
    lfs 1, 0x20(1)
    ps_add 3, 2, 0
    stw 3, 0x234(28)
    frsp 0, 1
    psq_st 2, 0x18(1), 0, 0
    psq_st 3, 0x18(1), 0, 0
    psq_st 3, 0x90(1), 0, 0
    stfs 1, 0x98(1)
    psq_st 3, 0x10c(1), 0, 0
    stfs 1, 0x114(1)
    psq_st 3, 0x78(1), 0, 0
    stfs 0, 0x80(1)
    stw 4, 0x50(1)
    stw 4, 0x4c(1)
    stw 4, 0x48(1)
    mtctr 0
L_8036EDDC:
    lwz 0, 0x258(6)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EDFC
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x3
    addi 7, 7, 0x4
    .4byte 0x418200A0 # beq .L_8036EE98
L_8036EDFC:
    lwz 0, 0x25c(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EE20
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x3
    addi 7, 7, 0x4
    .4byte 0x4182007C # beq .L_8036EE98
L_8036EE20:
    lwz 0, 0x260(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EE44
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x3
    addi 7, 7, 0x4
    .4byte 0x41820058 # beq .L_8036EE98
L_8036EE44:
    lwz 0, 0x264(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EE68
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x3
    addi 7, 7, 0x4
    .4byte 0x41820034 # beq .L_8036EE98
L_8036EE68:
    lwz 0, 0x268(6)
    addi 5, 5, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036EE8C
    addi 4, 4, 0x1
    stw 5, 0x0(7)
    cmpwi 4, 0x3
    addi 7, 7, 0x4
    .4byte 0x41820010 # beq .L_8036EE98
L_8036EE8C:
    addi 6, 6, 0x14
    addi 5, 5, 0x1
    .4byte 0x4200FF48 # bdnz .L_8036EDDC
L_8036EE98:
    cmpwi 4, 0x3
    .4byte 0x408200F4 # bne .L_8036EF90
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x78
    li 3, 0x0
    li 5, 0x569
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x48(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036EEF0
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036EEF0:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x78
    li 3, 0x0
    li 5, 0x56a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x4c(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036EF40
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036EF40:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x78
    li 3, 0x0
    li 5, 0x56b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x50(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036EF90
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036EF90:
    lwz 3, 0x230(28)
    addi 0, 3, 0x1
    stw 0, 0x230(28)
    .4byte 0x480005A0 # b .L_8036F53C
L_8036EFA0:
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x408205BC # bne .L_8036F564
    addi 0, 3, 0x1
    li 3, 0x91
    stw 0, 0x230(28)
    li 0, 0x0
    stw 3, 0x234(28)
    stw 0, 0x2b0(28)
L_8036EFC4:
    lwz 5, 0x254(28)
    lwz 0, 0x234(5)
    cmpwi 0, 0x4a49
    .4byte 0x41800024 # blt .L_8036EFF4
    lwz 3, 0x250(28)
    li 4, 0x3
    li 0, 0x1
    stw 4, 0x230(3)
    stb 0, 0x231(5)
    lwz 3, 0x230(28)
    addi 0, 3, 0x1
    stw 0, 0x230(28)
L_8036EFF4:
    lwz 0, 0x2b0(28)
    cmpwi 0, 0x0
    .4byte 0x40820540 # bne .L_8036F53C
L_8036F000:
    li 3, 0x4
    bl fn_801CD664
    lwz 0, 0x2ac(28)
    mr 31, 3
    cmpw 31, 0
    .4byte 0x4182FFEC # beq .L_8036F000
    .4byte 0x880D9198 # lbz r0, lbl_8053AD58@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820070 # bne .L_8036F090
    .4byte 0xC0E2FDDC # lfs f7, lbl_80542D7C@sda21(r0)
    lis 3, lbl_8050C700@ha
    li 0, 0x1
    .4byte 0xC0C2FDE0 # lfs f6, lbl_80542D80@sda21(r0)
    stfsu 7, lbl_8050C700@l(3)
    .4byte 0xC0A2FDE4 # lfs f5, lbl_80542D84@sda21(r0)
    .4byte 0xC062FDEC # lfs f3, lbl_80542D8C@sda21(r0)
    .4byte 0xC042FDF0 # lfs f2, lbl_80542D90@sda21(r0)
    .4byte 0xC022FDF4 # lfs f1, lbl_80542D94@sda21(r0)
    .4byte 0xC082FDE8 # lfs f4, lbl_80542D88@sda21(r0)
    .4byte 0xC002FDF8 # lfs f0, lbl_80542D98@sda21(r0)
    stfs 7, 0x4(3)
    stfs 6, 0x8(3)
    stfs 5, 0xc(3)
    stfs 4, 0x10(3)
    stfs 7, 0x14(3)
    stfs 3, 0x18(3)
    stfs 5, 0x1c(3)
    stfs 7, 0x20(3)
    stfs 2, 0x24(3)
    stfs 6, 0x28(3)
    stfs 1, 0x2c(3)
    stfs 0, 0x30(3)
    stfs 2, 0x34(3)
    stfs 3, 0x38(3)
    stfs 1, 0x3c(3)
    .4byte 0x980D9198 # stb r0, lbl_8053AD58@sda21(r0)
L_8036F090:
    lis 3, lbl_8050C700@ha
    slwi 4, 31, 4
    addi 0, 3, lbl_8050C700@l
    .4byte 0xCBA2FE00 # lfd f29, lbl_80542DA0@sda21(r0)
    add 6, 0, 4
    .4byte 0xC3C2FDC0 # lfs f30, lbl_80542D60@sda21(r0)
    lwz 5, 0x0(6)
    lis 29, 0x4330
    lwz 4, 0x4(6)
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    stw 5, 0xe4(1)
    stw 4, 0xe8(1)
    lfs 31, 0xe4(1)
    stw 3, 0xec(1)
    lfs 27, 0xe8(1)
    stw 0, 0xf0(1)
    lfs 26, 0xec(1)
    lfs 25, 0xf0(1)
L_8036F0DC:
    li 3, 0x1a2
    bl fn_801CD664
    xoris 0, 3, 0x8000
    stw 29, 0x120(1)
    li 3, 0x242
    stw 0, 0x124(1)
    lfd 0, 0x120(1)
    fsubs 28, 0, 29
    bl fn_801CD664
    xoris 3, 3, 0x8000
    stw 29, 0x118(1)
    li 0, 0x0
    stw 3, 0x11c(1)
    lfd 0, 0x118(1)
    stfs 28, 0xf8(1)
    fsubs 0, 0, 29
    stfs 30, 0xfc(1)
    fcmpo cr0, 0, 31
    stfs 0, 0xf4(1)
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_8036F150
    fcmpo cr0, 28, 27
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8036F150
    fcmpo cr0, 0, 26
    .4byte 0x40800010 # bge .L_8036F150
    fcmpo cr0, 28, 25
    .4byte 0x40800008 # bge .L_8036F150
    li 0, 0x1
L_8036F150:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF88 # beq .L_8036F0DC
    li 3, 0x8
    bl fn_801CD664
    mr 29, 3
    cmpwi 29, 0x5
    .4byte 0x418001FC # blt .L_8036F364
    psq_l 1, 0xf4(1), 0, 0
    li 3, 0x0
    lfs 0, 0xfc(1)
    li 0, 0x4
    mr 4, 3
    mr 5, 28
    psq_st 1, 0x6c(1), 0, 0
    addi 6, 1, 0x3c
    stfs 0, 0x74(1)
    stw 3, 0x44(1)
    stw 3, 0x40(1)
    stw 3, 0x3c(1)
    mtctr 0
L_8036F1A0:
    lwz 0, 0x258(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F1C0
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x3
    addi 6, 6, 0x4
    .4byte 0x418200A0 # beq .L_8036F25C
L_8036F1C0:
    lwz 0, 0x25c(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F1E4
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x3
    addi 6, 6, 0x4
    .4byte 0x4182007C # beq .L_8036F25C
L_8036F1E4:
    lwz 0, 0x260(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F208
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x3
    addi 6, 6, 0x4
    .4byte 0x41820058 # beq .L_8036F25C
L_8036F208:
    lwz 0, 0x264(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F22C
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x3
    addi 6, 6, 0x4
    .4byte 0x41820034 # beq .L_8036F25C
L_8036F22C:
    lwz 0, 0x268(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F250
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x3
    addi 6, 6, 0x4
    .4byte 0x41820010 # beq .L_8036F25C
L_8036F250:
    addi 5, 5, 0x14
    addi 4, 4, 0x1
    .4byte 0x4200FF48 # bdnz .L_8036F1A0
L_8036F25C:
    cmpwi 3, 0x3
    .4byte 0x4182000C # beq .L_8036F26C
    li 0, 0x0
    .4byte 0x480002A8 # b .L_8036F510
L_8036F26C:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x6c
    li 3, 0x0
    li 5, 0x569
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x3c(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036F2BC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036F2BC:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x6c
    li 3, 0x0
    li 5, 0x56a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x40(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036F30C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036F30C:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x6c
    li 3, 0x0
    li 5, 0x56b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x44(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036F35C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036F35C:
    li 0, 0x1
    .4byte 0x480001B0 # b .L_8036F510
L_8036F364:
    psq_l 1, 0xf4(1), 0, 0
    li 3, 0x0
    lfs 0, 0xfc(1)
    li 0, 0x4
    mr 4, 3
    mr 5, 28
    psq_st 1, 0x60(1), 0, 0
    addi 6, 1, 0x8
    stfs 0, 0x68(1)
    stw 3, 0xc(1)
    stw 3, 0x8(1)
    mtctr 0
L_8036F394:
    lwz 0, 0x258(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F3B4
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x2
    addi 6, 6, 0x4
    .4byte 0x418200A0 # beq .L_8036F450
L_8036F3B4:
    lwz 0, 0x25c(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F3D8
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x2
    addi 6, 6, 0x4
    .4byte 0x4182007C # beq .L_8036F450
L_8036F3D8:
    lwz 0, 0x260(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F3FC
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x2
    addi 6, 6, 0x4
    .4byte 0x41820058 # beq .L_8036F450
L_8036F3FC:
    lwz 0, 0x264(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F420
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x2
    addi 6, 6, 0x4
    .4byte 0x41820034 # beq .L_8036F450
L_8036F420:
    lwz 0, 0x268(5)
    addi 4, 4, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8036F444
    addi 3, 3, 0x1
    stw 4, 0x0(6)
    cmpwi 3, 0x2
    addi 6, 6, 0x4
    .4byte 0x41820010 # beq .L_8036F450
L_8036F444:
    addi 5, 5, 0x14
    addi 4, 4, 0x1
    .4byte 0x4200FF48 # bdnz .L_8036F394
L_8036F450:
    cmpwi 3, 0x2
    .4byte 0x4182000C # beq .L_8036F460
    li 0, 0x0
    .4byte 0x480000B4 # b .L_8036F510
L_8036F460:
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    addi 4, 1, 0x60
    li 3, 0x0
    li 5, 0x56c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x8(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036F4B0
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036F4B0:
    lis 3, lbl_80474EC0@ha
    slwi 0, 29, 1
    addi 3, 3, lbl_80474EC0@l
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    lhzx 5, 3, 0
    addi 4, 1, 0x60
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0xc(1)
    slwi 0, 0, 2
    add 4, 28, 0
    stw 3, 0x258(4)
    lwz 3, 0x258(4)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8036F50C
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_8036F50C:
    li 0, 0x1
L_8036F510:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8036F534
    li 3, 0x6
    bl fn_801CD664
    addi 0, 3, 0x1e
    stw 0, 0x2b0(28)
    stw 31, 0x2ac(28)
    .4byte 0x4800000C # b .L_8036F53C
L_8036F534:
    li 0, 0x0
    stw 0, 0x2b0(28)
L_8036F53C:
    lwz 5, 0x24c(28)
    addi 4, 28, 0xc
    lwz 0, 0x244(28)
    li 3, 0x0
    li 6, 0xff
    li 7, -0x80
    add 5, 5, 0
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8036F564:
    psq_l 31, 0x1a8(1), 0, 0
    lfd 31, 0x1a0(1)
    psq_l 30, 0x198(1), 0, 0
    lfd 30, 0x190(1)
    psq_l 29, 0x188(1), 0, 0
    lfd 29, 0x180(1)
    psq_l 28, 0x178(1), 0, 0
    lfd 28, 0x170(1)
    psq_l 27, 0x168(1), 0, 0
    lfd 27, 0x160(1)
    psq_l 26, 0x158(1), 0, 0
    lfd 26, 0x150(1)
    psq_l 25, 0x148(1), 0, 0
    lfd 25, 0x140(1)
    lwz 31, 0x13c(1)
    lwz 30, 0x138(1)
    lwz 29, 0x134(1)
    lwz 0, 0x1b4(1)
    lwz 28, 0x130(1)
    mtlr 0
    addi 1, 1, 0x1b0
    blr

fn_8036F5BC:
    stwu 1, -0x50(1)
    mflr 0
    li 5, 0x0
    li 4, -0x1
    stw 0, 0x54(1)
    li 0, 0xa
    .4byte 0xC022FDC0 # lfs f1, lbl_80542D60@sda21(r0)
    stw 31, 0x4c(1)
    mr 31, 3
    .4byte 0xC002FE08 # lfs f0, lbl_80542DA8@sda21(r0)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    stw 5, 0x230(3)
    li 3, 0x18
    stw 5, 0x234(31)
    stw 4, 0x238(31)
    stw 5, 0x23c(31)
    stw 5, 0x240(31)
    stw 5, 0x244(31)
    stw 5, 0x248(31)
    stw 5, 0x24c(31)
    stw 5, 0x2a8(31)
    stw 5, 0x2ac(31)
    stw 5, 0x2b0(31)
    stw 5, 0x258(31)
    stw 5, 0x25c(31)
    stw 5, 0x260(31)
    stw 5, 0x264(31)
    stw 5, 0x268(31)
    stw 5, 0x26c(31)
    stw 5, 0x270(31)
    stw 5, 0x274(31)
    stw 5, 0x278(31)
    stw 5, 0x27c(31)
    stw 5, 0x280(31)
    stw 5, 0x284(31)
    stw 5, 0x288(31)
    stw 5, 0x28c(31)
    stw 5, 0x290(31)
    stw 5, 0x294(31)
    stw 5, 0x298(31)
    stw 5, 0x29c(31)
    stw 5, 0x2a0(31)
    stw 5, 0x2a4(31)
    stw 5, 0x2b4(31)
    stw 5, 0x254(31)
    stw 5, 0x250(31)
    stw 5, 0x230(31)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    stw 3, 0x24c(31)
    stw 0, 0x240(31)
    stw 0, 0x23c(31)
    stw 5, 0x244(31)
    bl fn_8023077C
    lwz 5, 0x24c(31)
    addi 4, 31, 0xc
    lwz 0, 0x244(31)
    li 3, 0x0
    li 6, 0xff
    li 7, -0x80
    add 5, 5, 0
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    li 28, 0x1
L_8036F6CC:
    mr 3, 28
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFD8 # blt .L_8036F6CC
    .4byte 0xC102FE10 # lfs f8, lbl_80542DB0@sda21(r0)
    lis 0, 0x4330
    lfs 0, 0x10(31)
    addi 4, 1, 0x8
    lfs 2, 0xc(31)
    li 5, 0x274
    fdivs 3, 0, 8
    .4byte 0xC022FE1C # lfs f1, lbl_80542DBC@sda21(r0)
    .4byte 0xC002FDC0 # lfs f0, lbl_80542D60@sda21(r0)
    li 6, 0x0
    stw 0, 0x20(1)
    li 7, 0x0
    fmuls 1, 2, 1
    stw 0, 0x30(1)
    fctiwz 2, 3
    .4byte 0xC8E2FE00 # lfd f7, lbl_80542DA0@sda21(r0)
    .4byte 0xC0A2FE0C # lfs f5, lbl_80542DAC@sda21(r0)
    li 8, 0x0
    fctiwz 1, 1
    stfd 2, 0x18(1)
    .4byte 0xC082FE18 # lfs f4, lbl_80542DB8@sda21(r0)
    li 9, 0x0
    lwz 0, 0x1c(1)
    li 10, 0x1
    stfd 1, 0x28(1)
    xoris 3, 0, 0x8000
    .4byte 0xC042FE14 # lfs f2, lbl_80542DB4@sda21(r0)
    lwz 0, 0x2c(1)
    stw 3, 0x24(1)
    xoris 0, 0, 0x8000
    .4byte 0xC022FDB8 # lfs f1, lbl_80542D58@sda21(r0)
    stw 0, 0x34(1)
    lfd 6, 0x20(1)
    lfd 3, 0x30(1)
    fsubs 6, 6, 7
    stfs 0, 0x10(1)
    fsubs 0, 3, 7
    fmadds 3, 8, 6, 5
    fmadds 0, 4, 0, 2
    stfs 3, 0xc(1)
    stfs 0, 0x8(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2a8(31)
    bl SpatialRegistry_GetBase
    li 30, 0x0
    lwz 29, 0x1008(3)
    mr 28, 30
    .4byte 0x48000044 # b .L_8036F7FC
L_8036F7BC:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820028 # beq .L_8036F7F4
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x454f
    cmplwi 0, 0x574c
    .4byte 0x40820018 # bne .L_8036F7F4
    lbz 0, 0x11c(4)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8036F7F4
    stw 4, 0x250(31)
    .4byte 0x48000014 # b .L_8036F804
L_8036F7F4:
    addi 28, 28, 0x4
    addi 30, 30, 0x1
L_8036F7FC:
    cmpw 30, 29
    .4byte 0x4180FFBC # blt .L_8036F7BC
L_8036F804:
    bl SpatialRegistry_GetBase
    li 30, 0x0
    lwz 29, 0x1008(3)
    mr 28, 30
    .4byte 0x48000044 # b .L_8036F858
L_8036F818:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820028 # beq .L_8036F850
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x454e
    cmplwi 0, 0x444d
    .4byte 0x40820018 # bne .L_8036F850
    lbz 0, 0x11c(4)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8036F850
    stw 4, 0x254(31)
    .4byte 0x48000014 # b .L_8036F860
L_8036F850:
    addi 28, 28, 0x4
    addi 30, 30, 0x1
L_8036F858:
    cmpw 30, 29
    .4byte 0x4180FFBC # blt .L_8036F818
L_8036F860:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8036F880:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x4182008C # beq .L_8036F924
    lis 3, lbl_804AE338@ha
    mr 30, 27
    addi 0, 3, lbl_804AE338@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
L_8036F8B4:
    lwz 0, 0x258(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8036F8D4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x258(30)
    bl fn_800EC240
    stw 31, 0x258(30)
L_8036F8D4:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x14
    .4byte 0x4180FFD4 # blt .L_8036F8B4
    lwz 0, 0x2a8(27)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8036F908
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2a8(27)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2a8(27)
L_8036F908:
    mr 3, 27
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_8036F924
    mr 3, 27
    bl dtor_80084580
L_8036F924:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8036F93C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050C700@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050C700@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036F98C
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x40
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8036F98C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036F9C4
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x4c
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8036F9C4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036F9FC
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x58
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8036F9FC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036FA34
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x64
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8036FA34:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036FA6C
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x70
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8036FA6C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036FAA4
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x7c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8036FAA4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036FADC
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x88
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8036FADC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036FB14
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x94
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8036FB14:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8036FB4C
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0xa0
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8036FB4C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8036FB60:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    mr 31, 3
    li 25, 0x0
    lbz 0, 0x398(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_8036FBEC
    .4byte 0xC3E2FE20 # lfs f31, lbl_80542DC0@sda21(r0)
    mr 28, 31
    li 27, 0x0
L_8036FB98:
    mr 30, 31
    addi 29, 28, 0x294
    li 26, 0x0
L_8036FBA4:
    mr 4, 29
    addi 3, 30, 0x264
    bl PSVECDistance
    fcmpo cr0, 1, 31
    .4byte 0x4080000C # bge .L_8036FBC0
    li 25, 0x1
    .4byte 0x48000014 # b .L_8036FBD0
L_8036FBC0:
    addi 26, 26, 0x1
    addi 30, 30, 0xc
    cmpwi 26, 0x4
    .4byte 0x4180FFD8 # blt .L_8036FBA4
L_8036FBD0:
    clrlwi 0, 25, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8036FBEC
    addi 27, 27, 0x1
    addi 28, 28, 0xc
    cmpwi 27, 0x4
    .4byte 0x4180FFB0 # blt .L_8036FB98
L_8036FBEC:
    clrlwi 0, 25, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8036FC08
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    .4byte 0x4800018C # b .L_8036FD90
L_8036FC08:
    mr 28, 31
    mr 29, 31
    addi 30, 1, 0x8
    li 27, 0x0
L_8036FC18:
    psq_l 1, 0x294(28), 0, 0
    mr 4, 30
    lfs 0, 0x29c(28)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x340(29)
    lwz 3, 0x3b0(29)
    mulli 5, 0, 0x3
    bl fn_8037B374
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0x4
    addi 28, 28, 0xc
    .4byte 0x4180FFCC # blt .L_8036FC18
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_8036FC78
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_8036FC78
    cmpwi 0, 0xb
    .4byte 0x41820010 # beq .L_8036FC78
    lbz 0, 0x398(31)
    cmplwi 0, 0x1
    .4byte 0x4182011C # beq .L_8036FD90
L_8036FC78:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8036FCAC
    lwz 4, 0x234(31)
    mr 3, 31
    addi 0, 4, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    clrlwi 0, 0, 30
    stw 0, 0x234(31)
    lwz 4, 0x234(31)
    bl fn_80371D50
    .4byte 0x480000E8 # b .L_8036FD90
L_8036FCAC:
    psq_l 1, 0x294(31), 0, 0
    psq_l 0, 0x2f4(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x294(31), 0, 0
    psq_l 1, 0x29c(31), 1, 0
    psq_l 0, 0x2fc(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x29c(31), 1, 0
    psq_l 1, 0x2a0(31), 0, 0
    psq_l 0, 0x300(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2a0(31), 0, 0
    psq_l 1, 0x2a8(31), 1, 0
    psq_l 0, 0x308(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2a8(31), 1, 0
    psq_l 1, 0x2ac(31), 0, 0
    psq_l 0, 0x30c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2ac(31), 0, 0
    psq_l 1, 0x2b4(31), 1, 0
    psq_l 0, 0x314(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2b4(31), 1, 0
    psq_l 1, 0x2b8(31), 0, 0
    psq_l 0, 0x318(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2b8(31), 0, 0
    psq_l 1, 0x2c0(31), 1, 0
    psq_l 0, 0x320(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2c0(31), 1, 0
    lwz 0, 0x238(31)
    cmpwi 0, 0x76
    .4byte 0x40820050 # bne .L_8036FD84
    .4byte 0xC3E2FE24 # lfs f31, lbl_80542DC4@sda21(r0)
    mr 28, 31
    li 29, 0x0
L_8036FD44:
    psq_l 1, 0x2c4(28), 0, 0
    li 4, 0x37
    lfs 0, 0x2cc(28)
    li 5, -0x1
    psq_st 1, 0x294(28), 0, 0
    stfs 0, 0x29c(28)
    stfs 31, 0x2fc(28)
    stfs 31, 0x2f8(28)
    stfs 31, 0x2f4(28)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    addi 29, 29, 0x1
    addi 28, 28, 0xc
    cmpwi 29, 0x4
    .4byte 0x4180FFC8 # blt .L_8036FD44
    .4byte 0x48000010 # b .L_8036FD90
L_8036FD84:
    .4byte 0x4080000C # bge .L_8036FD90
    li 0, 0x1
    stb 0, 0x398(31)
L_8036FD90:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8036FDAC:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stmw 24, 0x50(1)
    mr 31, 3
    li 0, 0x50
    stw 0, 0x238(3)
    .4byte 0x880D91A3 # lbz r0, lbl_8053AD63@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820084 # bne .L_8036FE5C
    .4byte 0xC062FE24 # lfs f3, lbl_80542DC4@sda21(r0)
    lis 3, lbl_8050C8D0@ha
    .4byte 0xC042FE28 # lfs f2, lbl_80542DC8@sda21(r0)
    addi 3, 3, lbl_8050C8D0@l
    .4byte 0xC022FE2C # lfs f1, lbl_80542DCC@sda21(r0)
    li 0, 0x1
    .4byte 0xC002FE20 # lfs f0, lbl_80542DC0@sda21(r0)
    stfs 3, 0x44(1)
    stfs 3, 0x48(1)
    psq_l 4, 0x44(1), 0, 0
    stfs 2, 0x38(1)
    stfs 3, 0x3c(1)
    psq_l 2, 0x38(1), 0, 0
    stfs 1, 0x2c(1)
    stfs 3, 0x30(1)
    psq_l 1, 0x2c(1), 0, 0
    stfs 0, 0x20(1)
    stfs 3, 0x24(1)
    psq_l 0, 0x20(1), 0, 0
    stfs 3, 0x4c(1)
    psq_st 4, 0x0(3), 0, 0
    stfs 3, 0x8(3)
    stfs 3, 0x40(1)
    psq_st 2, 0xc(3), 0, 0
    stfs 3, 0x14(3)
    stfs 3, 0x34(1)
    psq_st 1, 0x18(3), 0, 0
    stfs 3, 0x20(3)
    stfs 3, 0x28(1)
    psq_st 0, 0x24(3), 0, 0
    stfs 3, 0x2c(3)
    .4byte 0x980D91A3 # stb r0, lbl_8053AD63@sda21(r0)
L_8036FE5C:
    li 0, 0xb
    lis 4, lbl_8050C8D0@ha
    stw 0, 0x230(31)
    li 0, 0x1
    lis 3, lbl_80474F5C@ha
    .4byte 0xC3E2FE24 # lfs f31, lbl_80542DC4@sda21(r0)
    stw 0, 0x234(31)
    addi 28, 4, lbl_8050C8D0@l
    addi 26, 3, lbl_80474F5C@l
    mr 27, 31
    mr 25, 31
    li 24, 0x0
    lis 30, 0x4a49
L_8036FE90:
    lfs 0, 0x14(31)
    psq_l 1, 0xc(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x0(28), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x8(28), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0x2c4(27), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 2, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    stfs 2, 0x2cc(27)
    psq_l 1, 0x2c4(27), 0, 0
    lfs 0, 0x2cc(27)
    psq_st 3, 0x14(1), 0, 0
    psq_st 1, 0x294(27), 0, 0
    stfs 0, 0x29c(27)
    stfs 31, 0x2fc(27)
    stfs 31, 0x2f8(27)
    stfs 2, 0x1c(1)
    stfs 31, 0x2f4(27)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x4a49
    lwz 7, 0x0(26)
    addi 6, 27, 0x294
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    addi 24, 24, 0x1
    stw 3, 0x3b0(25)
    li 7, 0x1
    addi 27, 27, 0xc
    stw 7, 0x340(25)
    cmpwi 24, 0x4
    addi 26, 26, 0x4
    addi 25, 25, 0x4
    addi 28, 28, 0xc
    .4byte 0x4180FF50 # blt .L_8036FE90
    psq_l 1, 0x2f4(31), 0, 0
    li 6, 0x8
    lfs 0, 0x2fc(31)
    li 5, 0x0
    li 4, 0x386
    li 3, 0x10
    psq_st 1, 0x3c(31), 0, 0
    li 0, -0x1
    .4byte 0xC042FE30 # lfs f2, lbl_80542DD0@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0xC022FE34 # lfs f1, lbl_80542DD4@sda21(r0)
    stw 6, 0x360(31)
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    stw 5, 0x364(31)
    psq_l 4, 0x294(31), 0, 0
    lfs 3, 0x29c(31)
    psq_st 4, 0x324(31), 0, 0
    stfs 3, 0x32c(31)
    stw 4, 0x368(31)
    stw 3, 0x36c(31)
    stw 5, 0x370(31)
    stw 5, 0x394(31)
    stb 7, 0x398(31)
    stb 5, 0x399(31)
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stw 0, 0x3a0(31)
    stw 5, 0x3a4(31)
    stb 5, 0x3a8(31)
    stw 5, 0x3ac(31)
    stfs 0, 0x24c(31)
    stfs 0, 0x248(31)
    stfs 0, 0x244(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stw 5, 0x374(31)
    stw 5, 0x384(31)
    stw 5, 0x378(31)
    stw 5, 0x388(31)
    stw 5, 0x37c(31)
    stw 5, 0x38c(31)
    stw 5, 0x380(31)
    stw 5, 0x390(31)
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    lmw 24, 0x50(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80370020:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lbz 0, 0x3a8(3)
    cmplwi 0, 0x0
    .4byte 0x408200FC # bne .L_8037013C
    lwz 0, 0x3ac(31)
    cmpwi 0, 0x0
    .4byte 0x4082019C # bne .L_803701E8
    lfs 1, 0x60(31)
    addi 3, 1, 0x14
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0x324(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x328(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4180012C # blt .L_803701E8
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_803701E8
    mulli 3, 30, 0xc
    addi 4, 31, 0x324
    addi 3, 3, 0x264
    add 3, 31, 3
    bl PSVECDistance
    .4byte 0xC002FE3C # lfs f0, lbl_80542DDC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200FC # bne .L_803701E8
    lwz 5, 0x4(31)
    addi 6, 1, 0x8
    psq_l 1, 0x324(31), 0, 0
    mr 3, 30
    lfs 0, 0x32c(31)
    li 4, 0x510
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418200CC # beq .L_803701E8
    stw 30, 0x3a4(31)
    li 3, 0x1
    li 0, 0x4
    stb 3, 0x3a8(31)
    stw 0, 0x3a0(31)
    bl fn_8023077C
    .4byte 0x480000B0 # b .L_803701E8
L_8037013C:
    lwz 0, 0x3a0(31)
    cmpwi 0, 0x4
    .4byte 0x408200A4 # bne .L_803701E8
    lfs 1, 0x60(31)
    addi 4, 1, 0x14
    li 7, 0x1
    li 8, 0x0
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0x324(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x328(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 3, 0x3a4(31)
    lwz 5, 0x4(31)
    lwz 6, 0x198(31)
    bl fn_8022FF8C
    lwz 3, 0x3a4(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803701E8
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x3a4(31)
    li 3, 0x0
    stb 0, 0x3a8(31)
    bl fn_80230534
    li 3, 0x3
    li 0, -0x1
    stw 3, 0x3ac(31)
    stw 0, 0x3a0(31)
L_803701E8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80370200:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 21, 0x24(1)
    mr 21, 3
    .4byte 0x80020FC8 # lwz r0, lbl_80543F68@sda21(r0)
    lwz 24, 0x39c(3)
    addi 26, 1, 0x8
    lis 3, lbl_80534C00@ha
    stw 0, 0x8(1)
    mulli 0, 24, 0xc
    .4byte 0xC3C2FE40 # lfs f30, lbl_80542DE0@sda21(r0)
    .4byte 0xC3E2FE44 # lfs f31, lbl_80542DE4@sda21(r0)
    mr 30, 21
    mr 29, 21
    mr 28, 26
    add 27, 21, 0
    addi 31, 3, lbl_80534C00@l
    li 23, -0x1
    li 22, 0x0
    li 25, 0x0
L_80370264:
    lfs 3, 0x268(27)
    mr 3, 31
    lfs 1, 0x298(30)
    lfs 2, 0x264(27)
    lfs 0, 0x294(30)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    fmuls 0, 1, 31
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180001C # blt .L_803702B8
    cmplwi 0, 0x6000
    .4byte 0x40800014 # bge .L_803702B8
    lwz 0, 0x340(29)
    cmpwi 0, 0x2
    .4byte 0x40820084 # bne .L_80370334
    .4byte 0x48000050 # b .L_80370304
L_803702B8:
    cmplwi 0, 0x6000
    .4byte 0x4180001C # blt .L_803702D8
    cmplwi 0, 0xa000
    .4byte 0x40800014 # bge .L_803702D8
    lwz 0, 0x340(29)
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_80370334
    .4byte 0x48000030 # b .L_80370304
L_803702D8:
    cmplwi 0, 0xa000
    .4byte 0x4180001C # blt .L_803702F8
    cmplwi 0, 0xe000
    .4byte 0x40800014 # bge .L_803702F8
    lwz 0, 0x340(29)
    cmpwi 0, 0x3
    .4byte 0x40820044 # bne .L_80370334
    .4byte 0x48000010 # b .L_80370304
L_803702F8:
    lwz 0, 0x340(29)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_80370334
L_80370304:
    mr 3, 24
    bl fn_80230CFC
    lwz 0, 0x340(29)
    lis 4, lbl_80474F4C@ha
    addi 4, 4, lbl_80474F4C@l
    slwi 0, 0, 2
    lwzx 0, 4, 0
    cmpw 0, 3
    .4byte 0x40820010 # bne .L_80370334
    li 0, 0x1
    li 22, 0x1
    stb 0, 0x0(28)
L_80370334:
    addi 25, 25, 0x1
    addi 29, 29, 0x4
    cmpwi 25, 0x4
    addi 28, 28, 0x1
    addi 30, 30, 0xc
    .4byte 0x4180FF1C # blt .L_80370264
    clrlwi. 0, 22, 24
    .4byte 0x4082000C # bne .L_8037035C
    li 3, -0x1
    .4byte 0x4800004C # b .L_803703A4
L_8037035C:
    addi 22, 27, 0x264
    li 24, 0x0
L_80370364:
    lbz 0, 0x0(26)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8037038C
    mr 3, 22
    addi 4, 21, 0x294
    bl PSVECDistance
    fcmpo cr0, 1, 30
    .4byte 0x4080000C # bge .L_8037038C
    fmr 30, 1
    mr 23, 24
L_8037038C:
    addi 24, 24, 0x1
    addi 21, 21, 0xc
    cmpwi 24, 0x4
    addi 26, 26, 0x1
    .4byte 0x4180FFC8 # blt .L_80370364
    mr 3, 23
L_803703A4:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 21, 0x24(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803703C8:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfs 2, 0x250(3)
    lwz 4, 0x24(4)
    .4byte 0xC022FE54 # lfs f1, lbl_80542DF4@sda21(r0)
    fabs 4, 2
    lfs 3, 0x10(4)
    lfs 0, 0x20(4)
    fneg 3, 3
    fneg 5, 0
    fsubs 0, 3, 1
    fabs 0, 0
    fcmpo cr0, 0, 4
    .4byte 0x40800014 # bge .L_8037040C
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    stfs 0, 0x250(3)
    stfs 1, 0x244(3)
    .4byte 0x48000010 # b .L_80370418
L_8037040C:
    lfs 0, 0x244(3)
    fadds 0, 0, 2
    stfs 0, 0x244(3)
L_80370418:
    .4byte 0xC022FE58 # lfs f1, lbl_80542DF8@sda21(r0)
    lfs 2, 0x254(3)
    fsubs 0, 5, 1
    fabs 3, 2
    fabs 0, 0
    fcmpo cr0, 0, 3
    .4byte 0x40800014 # bge .L_80370444
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    stfs 0, 0x254(3)
    stfs 1, 0x248(3)
    .4byte 0x48000010 # b .L_80370450
L_80370444:
    lfs 0, 0x248(3)
    fadds 0, 0, 2
    stfs 0, 0x248(3)
L_80370450:
    lfs 2, 0x25c(3)
    .4byte 0xC022FE5C # lfs f1, lbl_80542DFC@sda21(r0)
    lfs 3, 0x260(3)
    fsubs 0, 2, 1
    fabs 4, 3
    fabs 0, 0
    fcmpo cr0, 0, 4
    .4byte 0x40800014 # bge .L_80370480
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    stfs 0, 0x260(3)
    stfs 1, 0x260(3)
    .4byte 0x4800000C # b .L_80370488
L_80370480:
    fadds 0, 2, 3
    stfs 0, 0x25c(3)
L_80370488:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    lfs 2, 0x248(3)
    lfs 0, 0x25c(3)
    lfs 3, 0x244(3)
    lwz 3, 0x24(4)
    fadds 1, 2, 0
    fsubs 0, 2, 0
    stb 5, 0x179(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    bnelr
    stb 5, 0x7f4(4)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 3, 0x808(4)
    stfs 0, 0x80c(4)
    stfs 3, 0x810(4)
    stfs 1, 0x814(4)
    stb 0, 0x7f6(4)
    blr

fn_803704E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_803721F4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80370508:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_803703C8
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80370540
    cmpwi 0, 0x1
    .4byte 0x4082005C # bne .L_8037058C
    li 0, 0x104
    stw 0, 0x368(31)
    .4byte 0x48000050 # b .L_8037058C
L_80370540:
    lfs 1, 0x328(31)
    .4byte 0xC002FE60 # lfs f0, lbl_80542E00@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80370560
    .4byte 0xC002FE64 # lfs f0, lbl_80542E04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x328(31)
    .4byte 0x48000030 # b .L_8037058C
L_80370560:
    li 3, 0x0
    bl fn_80230534
    li 0, 0xb
    mr 3, 31
    stw 0, 0x230(31)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8037058C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803705A0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    bl fn_803703C8
    lfs 2, 0x328(30)
    .4byte 0xC022FE68 # lfs f1, lbl_80542E08@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x408100CC # ble .L_80370694
    .4byte 0xC002FE64 # lfs f0, lbl_80542E04@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x328(30)
    lfs 0, 0x328(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408200B0 # bne .L_80370694
    stfs 1, 0x328(30)
    li 0, 0xb4
    .4byte 0xC022FE24 # lfs f1, lbl_80542DC4@sda21(r0)
    srawi 4, 0, 31
    lfs 2, 0x32c(30)
    lwz 5, 0x23c(30)
    stfs 1, 0x1c(1)
    .4byte 0xC002FE2C # lfs f0, lbl_80542DCC@sda21(r0)
    srwi 3, 5, 31
    stfs 2, 0x10(1)
    subfc 0, 5, 0
    psq_l 2, 0x1c(1), 1, 0
    adde 3, 4, 3
    psq_l 3, 0x10(1), 1, 0
    addi 31, 3, 0x2
    stfs 1, 0x14(1)
    ps_sub 2, 3, 2
    psq_l 1, 0x324(30), 0, 0
    stfs 0, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_sub 2, 1, 0
    psq_st 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 2, 0x8(1), 0, 0
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    bl SpatialRegistry_GetBase
    clrlwi 0, 31, 24
    lis 4, 0x5255
    lwz 5, 0x4(30)
    addi 4, 4, 0x5059
    addi 6, 1, 0x20
    oris 7, 0, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x1e
    li 3, 0xa
    stw 0, 0x240(30)
    li 0, 0x108
    stw 3, 0x230(30)
    stw 0, 0x368(30)
L_80370694:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803706AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_803703C8
    bl fn_8023077C
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_80370750
    lwz 0, 0x394(31)
    cmpwi 0, 0x4
    .4byte 0x41800048 # blt .L_80370740
    .4byte 0x40820018 # bne .L_80370714
    li 3, 0x9
    li 0, 0x106
    stw 3, 0x230(31)
    stw 0, 0x368(31)
    .4byte 0x48000014 # b .L_80370724
L_80370714:
    li 3, 0xa
    li 0, 0x104
    stw 3, 0x230(31)
    stw 0, 0x368(31)
L_80370724:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0xb
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000014 # b .L_80370750
L_80370740:
    li 3, 0x6
    li 0, 0x1e
    stw 3, 0x230(31)
    stw 0, 0x240(31)
L_80370750:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80370764:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    stw 30, 0x88(1)
    bl fn_803703C8
    li 30, 0x0
L_80370784:
    mr 3, 30
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8037079C
    mr 3, 30
    bl fn_80230C6C
L_8037079C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE0 # blt .L_80370784
    li 30, 0x0
L_803707AC:
    mr 3, 30
    bl fn_8023E854
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_80370840
    li 3, 0x0
    bl fn_8023E724
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    addi 4, 1, 0x20
    .4byte 0xC042FE48 # lfs f2, lbl_80542DE8@sda21(r0)
    stfs 0, 0x10(1)
    .4byte 0xC022FE4C # lfs f1, lbl_80542DEC@sda21(r0)
    psq_l 4, 0x10(1), 1, 0
    psq_l 3, 0x8(3), 1, 0
    stfs 2, 0x38(1)
    ps_sub 2, 4, 3
    psq_l 3, 0x0(3), 0, 0
    stfs 1, 0x3c(1)
    mr 3, 4
    psq_l 1, 0x38(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_sub 3, 1, 3
    lfs 2, 0x10(1)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x40(1)
    psq_st 3, 0x8(1), 0, 0
    psq_st 3, 0x2c(1), 0, 0
    stfs 2, 0x34(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 2, 0x28(1)
    bl PSVECMag
    .4byte 0xC002FE50 # lfs f0, lbl_80542DF0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810040 # ble .L_8037086C
    addi 4, 1, 0x20
    li 3, 0x0
    bl fn_8023DFF4
    .4byte 0x48000030 # b .L_8037086C
L_80370840:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF64 # blt .L_803707AC
    li 3, 0x0
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8037086C
    li 3, 0x0
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
L_8037086C:
    lwz 4, 0x23c(31)
    mr 3, 31
    addi 0, 4, 0x1
    stw 0, 0x23c(31)
    bl fn_803721F4
    li 3, 0x0
    bl fn_8023E724
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    addi 4, 1, 0x68
    .4byte 0xC042FE48 # lfs f2, lbl_80542DE8@sda21(r0)
    stfs 0, 0x1c(1)
    .4byte 0xC022FE4C # lfs f1, lbl_80542DEC@sda21(r0)
    psq_l 4, 0x1c(1), 1, 0
    psq_l 3, 0x8(3), 1, 0
    stfs 2, 0x50(1)
    ps_sub 2, 4, 3
    psq_l 3, 0x0(3), 0, 0
    stfs 1, 0x54(1)
    mr 3, 4
    psq_l 1, 0x50(1), 0, 0
    psq_st 2, 0x1c(1), 1, 0
    ps_sub 3, 1, 3
    lfs 2, 0x1c(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x58(1)
    psq_st 3, 0x14(1), 0, 0
    psq_st 3, 0x5c(1), 0, 0
    stfs 2, 0x64(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 2, 0x70(1)
    bl PSVECMag
    .4byte 0xC002FE50 # lfs f0, lbl_80542DF0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80370900
    addi 4, 1, 0x68
    li 3, 0x0
    bl fn_8023DFF4
L_80370900:
    li 3, 0x0
    bl fn_802341D0
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8037091C
    li 0, 0x2
    stw 0, 0x240(31)
    .4byte 0x4800014C # b .L_80370A64
L_8037091C:
    lbz 0, 0x398(31)
    cmplwi 0, 0x0
    .4byte 0x41820140 # beq .L_80370A64
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820134 # bne .L_80370A64
    li 3, 0x0
    bl fn_8022CAF8
    lwz 0, 0x394(31)
    lis 4, lbl_80474F30@ha
    addi 4, 4, lbl_80474F30@l
    slwi 0, 0, 2
    lwzx 0, 4, 0
    cmpw 0, 3
    .4byte 0x40820110 # bne .L_80370A64
    li 3, 0x0
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820100 # beq .L_80370A64
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x78(1)
    li 3, 0x0
    lwz 4, 0x4(4)
    li 6, 0x1
    stw 0, 0x80(1)
    li 7, 0x0
    lhz 0, 0x6(4)
    lhz 4, 0x4(4)
    xoris 0, 0, 0x8000
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    xoris 4, 4, 0x8000
    stw 0, 0x84(1)
    .4byte 0xC882FE70 # lfd f4, lbl_80542E10@sda21(r0)
    stw 4, 0x7c(1)
    lfd 1, 0x80(1)
    lfd 3, 0x78(1)
    fsubs 1, 1, 4
    .4byte 0xC042FE64 # lfs f2, lbl_80542E04@sda21(r0)
    fsubs 3, 3, 4
    stfs 0, 0x70(1)
    fmuls 0, 1, 2
    fmuls 1, 3, 2
    stfs 0, 0x6c(1)
    stfs 1, 0x68(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 4, 0x394(31)
    cmpwi 4, 0x3
    .4byte 0x40800020 # bge .L_80370A04
    lis 3, lbl_80474F40@ha
    addi 0, 4, 0x1
    slwi 4, 4, 2
    stw 0, 0x394(31)
    addi 3, 3, lbl_80474F40@l
    lwzx 4, 3, 4
    .4byte 0x4800002C # b .L_80370A2C
L_80370A04:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x168
    .4byte 0x40800014 # bge .L_80370A20
    li 0, 0x4
    li 4, 0x509
    stw 0, 0x394(31)
    .4byte 0x48000010 # b .L_80370A2C
L_80370A20:
    li 0, 0x5
    li 4, 0x50a
    stw 0, 0x394(31)
L_80370A2C:
    lwz 5, 0x4(31)
    addi 6, 1, 0x44
    psq_l 1, 0x68(1), 0, 0
    li 3, 0x0
    lfs 0, 0x70(1)
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x4c(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80370A64
    bl fn_8023077C
    li 0, 0x8
    stw 0, 0x230(31)
L_80370A64:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80370A7C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    bl fn_803703C8
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x418200C4 # beq .L_80370B60
    cmpwi 0, 0x1
    .4byte 0x40820160 # bne .L_80370C04
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0x20(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0x28(1)
    xoris 4, 5, 0x8000
    .4byte 0xC882FE70 # lfd f4, lbl_80542E10@sda21(r0)
    stw 4, 0x24(1)
    .4byte 0xC042FE64 # lfs f2, lbl_80542E04@sda21(r0)
    stw 0, 0x2c(1)
    lfd 3, 0x20(1)
    lfd 1, 0x28(1)
    fsubs 3, 3, 4
    stfs 0, 0x1c(1)
    fsubs 0, 1, 4
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    fmuls 1, 3, 2
    fmuls 0, 0, 2
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    lis 3, lbl_80474F10@ha
    lfs 0, 0x1c(1)
    addi 6, 1, 0x8
    psq_l 1, 0x14(1), 0, 0
    addi 4, 3, lbl_80474F10@l
    stfs 0, 0x10(1)
    li 3, 0x0
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    lwz 0, 0x394(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_80370C04
    .4byte 0x480000A8 # b .L_80370C04
L_80370B60:
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_80370C04
    li 3, 0x0
    bl fn_80230534
    li 3, 0x0
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    li 0, 0x7
    lis 3, lbl_80474F20@ha
    stw 0, 0x230(31)
    addi 4, 3, lbl_80474F20@l
    mr 3, 31
    lwz 0, 0x394(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_80371D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x4082001C # bne .L_80370BF0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x50b
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000018 # b .L_80370C04
L_80370BF0:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x50c
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
L_80370C04:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80370C18:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_803703C8
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80370C70
    li 0, 0x1e
    li 3, 0x6
    stw 0, 0x240(31)
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x23c(31)
L_80370C70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80370C84:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stw 31, 0xbc(1)
    mr 31, 3
    stw 30, 0xb8(1)
    li 30, 0x0
L_80370CA0:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80370CC8
    mr 3, 30
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80370CC8
    mr 3, 30
    bl fn_80230AD4
L_80370CC8:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80370CA0
    mr 3, 31
    bl fn_803703C8
    lwz 0, 0x240(31)
    cmpwi 0, 0x23
    .4byte 0x408200E8 # bne .L_80370DCC
    li 3, 0x1
    li 0, 0x4
    mr 6, 31
    mr 7, 31
    stw 3, 0x234(31)
    li 8, 0x0
    .4byte 0xC062FE28 # lfs f3, lbl_80542DC8@sda21(r0)
    lis 5, 0x4330
    .4byte 0xC842FE70 # lfd f2, lbl_80542E10@sda21(r0)
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    mtctr 0
L_80370D14:
    xoris 0, 8, 0x8000
    lfs 4, 0x14(31)
    stw 0, 0xac(1)
    li 4, 0x38e
    psq_l 5, 0xc(31), 0, 0
    li 3, 0x0
    stw 5, 0xa8(1)
    li 0, 0x2
    addi 8, 8, 0x1
    lfd 1, 0xa8(1)
    stfs 4, 0x10(1)
    fsubs 1, 1, 2
    stfs 0, 0x88(1)
    psq_l 6, 0x10(1), 1, 0
    fmuls 1, 3, 1
    psq_l 4, 0x88(1), 1, 0
    stfs 0, 0x84(1)
    ps_add 4, 6, 4
    stfs 1, 0x80(1)
    psq_l 1, 0x80(1), 0, 0
    psq_st 4, 0x10(1), 1, 0
    ps_add 4, 5, 1
    lfs 1, 0x10(1)
    psq_st 5, 0x8(1), 0, 0
    psq_st 4, 0x294(6), 0, 0
    stfs 1, 0x29c(6)
    stfs 0, 0x2fc(6)
    stfs 0, 0x2f8(6)
    stfs 0, 0x2f4(6)
    addi 6, 6, 0xc
    stw 4, 0x350(7)
    stw 3, 0x330(7)
    stw 0, 0x340(7)
    addi 7, 7, 0x4
    psq_st 4, 0x8(1), 0, 0
    psq_st 4, 0x8c(1), 0, 0
    stfs 1, 0x94(1)
    .4byte 0x4200FF6C # bdnz .L_80370D14
    psq_l 1, 0x2f4(31), 0, 0
    li 3, 0x1
    lfs 0, 0x2fc(31)
    li 0, 0x80
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    stb 3, 0x398(31)
    stw 0, 0x238(31)
L_80370DCC:
    lwz 0, 0x240(31)
    cmpwi 0, 0x23
    .4byte 0x41810160 # bgt .L_80370F34
    li 30, 0x0
L_80370DDC:
    mr 3, 30
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_80370E8C
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0xac(1)
    addi 4, 1, 0x74
    .4byte 0xC042FE24 # lfs f2, lbl_80542DC4@sda21(r0)
    mr 3, 30
    stw 0, 0xa8(1)
    li 5, 0x2c8
    .4byte 0xC822FE70 # lfd f1, lbl_80542E10@sda21(r0)
    li 6, 0xff
    lfd 0, 0xa8(1)
    li 7, -0x80
    .4byte 0xC062FE28 # lfs f3, lbl_80542DC8@sda21(r0)
    li 8, -0x80
    fsubs 0, 0, 1
    stfs 2, 0x64(1)
    .4byte 0xC022FE48 # lfs f1, lbl_80542DE8@sda21(r0)
    li 9, 0x1
    stfs 2, 0x28(1)
    fmuls 3, 3, 0
    .4byte 0xC002FE4C # lfs f0, lbl_80542DEC@sda21(r0)
    psq_l 5, 0x28(1), 1, 0
    psq_l 4, 0x64(1), 1, 0
    stfs 3, 0x5c(1)
    ps_add 3, 5, 4
    stfs 2, 0x60(1)
    psq_st 3, 0x28(1), 1, 0
    psq_l 3, 0x5c(1), 0, 0
    lfs 4, 0x28(1)
    stfs 1, 0x68(1)
    stfs 0, 0x6c(1)
    psq_l 0, 0x68(1), 0, 0
    stfs 2, 0x70(1)
    ps_add 1, 0, 3
    psq_st 0, 0x20(1), 0, 0
    psq_st 1, 0x20(1), 0, 0
    psq_st 1, 0x0(4), 0, 0
    stfs 4, 0x7c(1)
    bl fn_80230498
    .4byte 0x480000A0 # b .L_80370F28
L_80370E8C:
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0xac(1)
    addi 4, 1, 0x50
    .4byte 0xC042FE24 # lfs f2, lbl_80542DC4@sda21(r0)
    mr 3, 30
    stw 0, 0xa8(1)
    li 5, 0x10
    .4byte 0xC822FE70 # lfd f1, lbl_80542E10@sda21(r0)
    li 6, 0xff
    lfd 0, 0xa8(1)
    li 7, -0x80
    .4byte 0xC062FE28 # lfs f3, lbl_80542DC8@sda21(r0)
    li 8, -0x80
    fsubs 0, 0, 1
    stfs 2, 0x40(1)
    .4byte 0xC022FE48 # lfs f1, lbl_80542DE8@sda21(r0)
    li 9, 0x1
    stfs 2, 0x1c(1)
    fmuls 3, 3, 0
    .4byte 0xC002FE4C # lfs f0, lbl_80542DEC@sda21(r0)
    psq_l 5, 0x1c(1), 1, 0
    psq_l 4, 0x40(1), 1, 0
    stfs 3, 0x38(1)
    ps_add 3, 5, 4
    stfs 2, 0x3c(1)
    psq_st 3, 0x1c(1), 1, 0
    psq_l 3, 0x38(1), 0, 0
    lfs 4, 0x1c(1)
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    stfs 2, 0x4c(1)
    ps_add 1, 0, 3
    psq_st 0, 0x14(1), 0, 0
    psq_st 1, 0x14(1), 0, 0
    psq_st 1, 0x0(4), 0, 0
    stfs 4, 0x58(1)
    bl fn_80230498
L_80370F28:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FEAC # blt .L_80370DDC
L_80370F34:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200B8 # bne .L_80370FF4
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0xa8(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0xb0(1)
    xoris 4, 5, 0x8000
    .4byte 0xC882FE70 # lfd f4, lbl_80542E10@sda21(r0)
    stw 4, 0xac(1)
    .4byte 0xC042FE64 # lfs f2, lbl_80542E04@sda21(r0)
    stw 0, 0xb4(1)
    lfd 3, 0xa8(1)
    lfd 1, 0xb0(1)
    fsubs 3, 3, 4
    stfs 0, 0xa0(1)
    fsubs 0, 1, 4
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    fmuls 1, 3, 2
    fmuls 0, 0, 2
    stfs 1, 0x98(1)
    stfs 0, 0x9c(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    addi 6, 1, 0x2c
    psq_l 1, 0x98(1), 0, 0
    li 3, 0x0
    lfs 0, 0xa0(1)
    li 4, 0x502
    psq_st 1, 0x0(6), 0, 0
    li 7, 0x22
    stfs 0, 0x34(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80370FF4
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
L_80370FF4:
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8037100C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    bl fn_803703C8
    mr 3, 31
    bl fn_803721F4
    mr 3, 31
    bl fn_80370020
    .4byte 0xC002FE78 # lfs f0, lbl_80542E18@sda21(r0)
    li 0, 0x0
    lwz 3, 0x39c(31)
    stfs 0, 0x8(1)
    mulli 3, 3, 0xc
    .4byte 0xC042FE4C # lfs f2, lbl_80542DEC@sda21(r0)
    lwz 4, 0x8(1)
    .4byte 0xC002FE7C # lfs f0, lbl_80542E1C@sda21(r0)
    stw 4, 0x18(1)
    addi 6, 3, 0x264
    .4byte 0xC022FE80 # lfs f1, lbl_80542E20@sda21(r0)
    add 6, 31, 6
    stfs 2, 0xc(1)
    lfs 2, 0x0(6)
    stfs 0, 0x10(1)
    lfs 0, 0x18(1)
    stfs 1, 0x14(1)
    lwz 5, 0xc(1)
    fcmpo cr0, 2, 0
    lwz 4, 0x10(1)
    lwz 3, 0x14(1)
    stw 5, 0x1c(1)
    stw 4, 0x20(1)
    stw 3, 0x24(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_803710D0
    lfs 1, 0x4(6)
    lfs 0, 0x1c(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_803710D0
    lfs 0, 0x20(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_803710D0
    lfs 0, 0x24(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_803710D0
    li 0, 0x1
L_803710D0:
    clrlwi. 0, 0, 24
    .4byte 0x41820104 # beq .L_803711D8
    li 30, 0x0
L_803710DC:
    mr 3, 30
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418200F0 # beq .L_803711D8
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE8 # blt .L_803710DC
    lbz 0, 0x398(31)
    cmplwi 0, 0x1
    .4byte 0x408200D8 # bne .L_803711D8
    li 30, 0x0
L_80371108:
    mr 3, 30
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80371120
    mr 3, 30
    bl fn_80230C6C
L_80371120:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE0 # blt .L_80371108
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl fn_8022CA6C
    lwz 3, 0x39c(31)
    bl fn_80230AD4
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_803711D8
    li 30, 0x0
L_80371150:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80371178
    mr 3, 30
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80371178
    mr 3, 30
    bl fn_80230AD4
L_80371178:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80371150
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    bl fn_80119DD0
    li 4, 0x3c
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0xa
    li 10, 0x0
    bl fn_80119998
    li 0, 0x46
    lis 3, 0x100
    stw 0, 0x240(31)
    addi 4, 3, 0x7
    li 5, 0x0
    li 6, 0x0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
L_803711D8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803711F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_803703C8
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80371270
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80371270
    li 7, 0x3
    li 6, -0x1
    stw 7, 0x230(31)
    li 0, 0x0
    li 3, 0x0
    li 4, 0x5
    stw 6, 0x3a4(31)
    li 5, 0x0
    stw 7, 0x3ac(31)
    stb 0, 0x3a8(31)
    stw 6, 0x3a0(31)
    bl fn_8022CA6C
L_80371270:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80371284:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stw 31, 0xcc(1)
    stw 30, 0xc8(1)
    li 30, 0x0
    stw 29, 0xc4(1)
    mr 29, 3
L_803712A4:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_803712CC
    mr 3, 30
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803712CC
    mr 3, 30
    bl fn_80230AD4
L_803712CC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_803712A4
    mr 3, 29
    bl fn_803703C8
    lfs 1, 0x328(29)
    .4byte 0xC002FE84 # lfs f0, lbl_80542E24@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810218 # ble .L_80371504
    .4byte 0xC002FE64 # lfs f0, lbl_80542E04@sda21(r0)
    mr 30, 29
    li 31, 0x0
    fsubs 0, 1, 0
    stfs 0, 0x328(29)
L_80371304:
    lwz 3, 0x374(30)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80371318
    subi 0, 3, 0x1
    stw 0, 0x374(30)
L_80371318:
    lwz 0, 0x374(30)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_8037139C
    li 0, 0x6
    mr 3, 31
    stw 0, 0x374(30)
    lwz 4, 0x384(30)
    addi 0, 4, 0x1
    stw 0, 0x384(30)
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80371360
    lwz 0, 0x384(30)
    cmpwi 0, 0x7
    .4byte 0x41800010 # blt .L_80371360
    li 0, 0x0
    stw 0, 0x384(30)
    .4byte 0x48000040 # b .L_8037139C
L_80371360:
    mr 3, 31
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80371388
    lwz 0, 0x384(30)
    cmpwi 0, 0x4
    .4byte 0x41800010 # blt .L_80371388
    li 0, 0x0
    stw 0, 0x384(30)
    .4byte 0x48000018 # b .L_8037139C
L_80371388:
    lwz 0, 0x384(30)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8037139C
    li 0, 0x0
    stw 0, 0x384(30)
L_8037139C:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_803713B8
    lwz 0, 0x230(29)
    cmpwi 0, 0x1
    .4byte 0x40820118 # bne .L_803714CC
L_803713B8:
    mr 3, 31
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_8037144C
    lwz 0, 0x39c(29)
    addi 4, 1, 0x68
    .4byte 0xC022FE24 # lfs f1, lbl_80542DC4@sda21(r0)
    mr 3, 31
    mulli 5, 0, 0xc
    .4byte 0xC002FE38 # lfs f0, lbl_80542DD8@sda21(r0)
    stfs 1, 0x7c(1)
    li 6, 0xff
    li 7, -0x80
    addi 5, 5, 0x264
    add 5, 29, 5
    psq_l 4, 0x7c(1), 1, 0
    lfs 2, 0x8(5)
    li 8, -0x80
    psq_l 3, 0x0(5), 0, 0
    li 9, 0x1
    stfs 2, 0x34(1)
    psq_l 2, 0x34(1), 1, 0
    stfs 1, 0x74(1)
    ps_sub 1, 2, 4
    stfs 0, 0x78(1)
    psq_l 0, 0x74(1), 0, 0
    psq_st 1, 0x34(1), 1, 0
    ps_sub 0, 3, 0
    lfs 1, 0x34(1)
    psq_st 3, 0x2c(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    stfs 1, 0x70(1)
    lwz 5, 0x384(30)
    psq_st 0, 0x2c(1), 0, 0
    addi 5, 5, 0x2cf
    bl fn_80230498
    .4byte 0x48000084 # b .L_803714CC
L_8037144C:
    lwz 0, 0x39c(29)
    addi 4, 1, 0x80
    .4byte 0xC022FE24 # lfs f1, lbl_80542DC4@sda21(r0)
    mr 3, 31
    mulli 5, 0, 0xc
    .4byte 0xC002FE38 # lfs f0, lbl_80542DD8@sda21(r0)
    stfs 1, 0x94(1)
    li 6, 0xff
    li 7, -0x80
    addi 5, 5, 0x264
    add 5, 29, 5
    psq_l 4, 0x94(1), 1, 0
    lfs 2, 0x8(5)
    li 8, -0x80
    psq_l 3, 0x0(5), 0, 0
    li 9, 0x1
    stfs 2, 0x28(1)
    psq_l 2, 0x28(1), 1, 0
    stfs 1, 0x8c(1)
    ps_sub 1, 2, 4
    stfs 0, 0x90(1)
    psq_l 0, 0x8c(1), 0, 0
    psq_st 1, 0x28(1), 1, 0
    ps_sub 0, 3, 0
    lfs 1, 0x28(1)
    psq_st 3, 0x20(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    stfs 1, 0x88(1)
    lwz 5, 0x384(30)
    psq_st 0, 0x20(1), 0, 0
    addi 5, 5, 0x18
    bl fn_80230498
L_803714CC:
    addi 31, 31, 0x1
    addi 30, 30, 0x4
    cmpwi 31, 0x4
    .4byte 0x4180FE2C # blt .L_80371304
    lfs 1, 0x328(29)
    .4byte 0xC002FE84 # lfs f0, lbl_80542E24@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418102C8 # bgt .L_803717B0
    stfs 0, 0x328(29)
    li 0, 0x0
    stw 0, 0x384(29)
    stw 0, 0x388(29)
    stw 0, 0x38c(29)
    stw 0, 0x390(29)
L_80371504:
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0xb0(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0xb8(1)
    xoris 4, 5, 0x8000
    .4byte 0xC882FE70 # lfd f4, lbl_80542E10@sda21(r0)
    stw 4, 0xb4(1)
    .4byte 0xC042FE64 # lfs f2, lbl_80542E04@sda21(r0)
    stw 0, 0xbc(1)
    lfd 3, 0xb0(1)
    lfd 1, 0xb8(1)
    fsubs 3, 3, 4
    stfs 0, 0xac(1)
    fsubs 0, 1, 4
    lwz 4, 0x4(29)
    lwz 5, 0x198(29)
    fmuls 1, 3, 2
    fmuls 0, 0, 2
    stfs 1, 0xa4(1)
    stfs 0, 0xa8(1)
    bl fn_8022FE80
    lwz 5, 0x4(29)
    addi 6, 1, 0x98
    psq_l 1, 0xa4(1), 0, 0
    li 3, 0x0
    lfs 0, 0xac(1)
    li 4, 0x50f
    psq_st 1, 0x0(6), 0, 0
    li 7, 0x22
    stfs 0, 0xa0(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x4182020C # beq .L_803717B0
    li 0, 0x2
    mr 30, 29
    stw 0, 0x230(29)
    li 31, 0x0
L_803715B8:
    lwz 3, 0x374(30)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_803715CC
    subi 0, 3, 0x1
    stw 0, 0x374(30)
L_803715CC:
    lwz 0, 0x374(30)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_80371650
    li 0, 0x6
    mr 3, 31
    stw 0, 0x374(30)
    lwz 4, 0x384(30)
    addi 0, 4, 0x1
    stw 0, 0x384(30)
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80371614
    lwz 0, 0x384(30)
    cmpwi 0, 0x7
    .4byte 0x41800010 # blt .L_80371614
    li 0, 0x0
    stw 0, 0x384(30)
    .4byte 0x48000040 # b .L_80371650
L_80371614:
    mr 3, 31
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8037163C
    lwz 0, 0x384(30)
    cmpwi 0, 0x4
    .4byte 0x41800010 # blt .L_8037163C
    li 0, 0x0
    stw 0, 0x384(30)
    .4byte 0x48000018 # b .L_80371650
L_8037163C:
    lwz 0, 0x384(30)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_80371650
    li 0, 0x0
    stw 0, 0x384(30)
L_80371650:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8037166C
    lwz 0, 0x230(29)
    cmpwi 0, 0x1
    .4byte 0x40820118 # bne .L_80371780
L_8037166C:
    mr 3, 31
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_80371700
    lwz 0, 0x39c(29)
    addi 4, 1, 0x38
    .4byte 0xC022FE24 # lfs f1, lbl_80542DC4@sda21(r0)
    mr 3, 31
    mulli 5, 0, 0xc
    .4byte 0xC002FE38 # lfs f0, lbl_80542DD8@sda21(r0)
    stfs 1, 0x4c(1)
    li 6, 0xff
    li 7, -0x80
    addi 5, 5, 0x264
    add 5, 29, 5
    psq_l 4, 0x4c(1), 1, 0
    lfs 2, 0x8(5)
    li 8, -0x80
    psq_l 3, 0x0(5), 0, 0
    li 9, 0x1
    stfs 2, 0x1c(1)
    psq_l 2, 0x1c(1), 1, 0
    stfs 1, 0x44(1)
    ps_sub 1, 2, 4
    stfs 0, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    psq_st 1, 0x1c(1), 1, 0
    ps_sub 0, 3, 0
    lfs 1, 0x1c(1)
    psq_st 3, 0x14(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    stfs 1, 0x40(1)
    lwz 5, 0x384(30)
    psq_st 0, 0x14(1), 0, 0
    addi 5, 5, 0x2cf
    bl fn_80230498
    .4byte 0x48000084 # b .L_80371780
L_80371700:
    lwz 0, 0x39c(29)
    addi 4, 1, 0x50
    .4byte 0xC022FE24 # lfs f1, lbl_80542DC4@sda21(r0)
    mr 3, 31
    mulli 5, 0, 0xc
    .4byte 0xC002FE38 # lfs f0, lbl_80542DD8@sda21(r0)
    stfs 1, 0x64(1)
    li 6, 0xff
    li 7, -0x80
    addi 5, 5, 0x264
    add 5, 29, 5
    psq_l 4, 0x64(1), 1, 0
    lfs 2, 0x8(5)
    li 8, -0x80
    psq_l 3, 0x0(5), 0, 0
    li 9, 0x1
    stfs 2, 0x10(1)
    psq_l 2, 0x10(1), 1, 0
    stfs 1, 0x5c(1)
    ps_sub 1, 2, 4
    stfs 0, 0x60(1)
    psq_l 0, 0x5c(1), 0, 0
    psq_st 1, 0x10(1), 1, 0
    ps_sub 0, 3, 0
    lfs 1, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    stfs 1, 0x58(1)
    lwz 5, 0x384(30)
    psq_st 0, 0x8(1), 0, 0
    addi 5, 5, 0x18
    bl fn_80230498
L_80371780:
    addi 31, 31, 0x1
    addi 30, 30, 0x4
    cmpwi 31, 0x4
    .4byte 0x4180FE2C # blt .L_803715B8
    li 0, 0x0
    li 4, 0x1
    stw 0, 0x3a4(29)
    li 3, 0x4
    li 0, 0x108
    stb 4, 0x3a8(29)
    stw 3, 0x3a0(29)
    stw 0, 0x368(29)
L_803717B0:
    lwz 0, 0xd4(1)
    lwz 31, 0xcc(1)
    lwz 30, 0xc8(1)
    lwz 29, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_803717CC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    bl fn_803721F4
    .4byte 0xC002FE7C # lfs f0, lbl_80542E1C@sda21(r0)
    li 0, 0x0
    lwz 3, 0x39c(31)
    stfs 0, 0x8(1)
    mulli 3, 3, 0xc
    .4byte 0xC042FE88 # lfs f2, lbl_80542E28@sda21(r0)
    lwz 4, 0x8(1)
    .4byte 0xC002FE8C # lfs f0, lbl_80542E2C@sda21(r0)
    stw 4, 0x28(1)
    addi 6, 3, 0x264
    .4byte 0xC022FE90 # lfs f1, lbl_80542E30@sda21(r0)
    add 6, 31, 6
    stfs 2, 0xc(1)
    lfs 2, 0x0(6)
    stfs 0, 0x10(1)
    lfs 0, 0x28(1)
    stfs 1, 0x14(1)
    lwz 5, 0xc(1)
    fcmpo cr0, 2, 0
    lwz 4, 0x10(1)
    lwz 3, 0x14(1)
    stw 5, 0x2c(1)
    stw 4, 0x30(1)
    stw 3, 0x34(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80371880
    lfs 1, 0x4(6)
    lfs 0, 0x2c(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80371880
    lfs 0, 0x30(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80371880
    lfs 0, 0x34(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80371880
    li 0, 0x1
L_80371880:
    clrlwi. 0, 0, 24
    .4byte 0x41820190 # beq .L_80371A14
    li 30, 0x0
L_8037188C:
    mr 3, 30
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803718A4
    mr 3, 30
    bl fn_80230C6C
L_803718A4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE0 # blt .L_8037188C
    lwz 3, 0x39c(31)
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    li 30, 0x0
L_803718C4:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_803718EC
    mr 3, 30
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803718EC
    mr 3, 30
    bl fn_80230AD4
L_803718EC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_803718C4
    .4byte 0xC0C2FE54 # lfs f6, lbl_80542DF4@sda21(r0)
    li 5, 0x1
    .4byte 0xC002FE60 # lfs f0, lbl_80542E00@sda21(r0)
    stfs 6, 0x324(31)
    .4byte 0xC0A2FE24 # lfs f5, lbl_80542DC4@sda21(r0)
    stfs 0, 0x328(31)
    .4byte 0xC082FE94 # lfs f4, lbl_80542E34@sda21(r0)
    stfs 5, 0x32c(31)
    .4byte 0xC062FE58 # lfs f3, lbl_80542DF8@sda21(r0)
    stb 5, 0x399(31)
    .4byte 0xC002FE64 # lfs f0, lbl_80542E04@sda21(r0)
    stw 5, 0x230(31)
    .4byte 0xC022FE5C # lfs f1, lbl_80542DFC@sda21(r0)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lfs 2, 0x10(3)
    fneg 2, 2
    stfs 2, 0x244(31)
    lfs 2, 0x20(3)
    fneg 2, 2
    stfs 2, 0x248(31)
    stfs 5, 0x24c(31)
    lfs 2, 0x244(31)
    fsubs 2, 6, 2
    fdivs 2, 2, 4
    stfs 2, 0x250(31)
    lfs 2, 0x248(31)
    fsubs 2, 3, 2
    fdivs 2, 2, 4
    stfs 2, 0x254(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lwz 3, 0x168(4)
    lwz 0, 0x170(4)
    stw 3, 0x1c(1)
    lwz 3, 0x164(4)
    stw 0, 0x24(1)
    lfs 2, 0x1c(1)
    lfs 3, 0x24(1)
    lwz 0, 0x16c(4)
    fsubs 2, 3, 2
    stw 3, 0x18(1)
    stw 0, 0x20(1)
    fmuls 0, 2, 0
    stfs 0, 0x25c(31)
    lfs 0, 0x25c(31)
    fsubs 0, 1, 0
    stfs 0, 0x260(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x248(31)
    lfs 0, 0x25c(31)
    lfs 4, 0x244(31)
    lwz 3, 0x24(3)
    fadds 3, 1, 0
    fsubs 2, 1, 0
    stb 5, 0x179(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80371A14
    stb 5, 0x840(3)
    .4byte 0xC022FE98 # lfs f1, lbl_80542E38@sda21(r0)
    stfs 4, 0x844(3)
    .4byte 0xC002FE9C # lfs f0, lbl_80542E3C@sda21(r0)
    stfs 2, 0x848(3)
    stfs 4, 0x84c(3)
    stfs 3, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_80371A14:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80371A2C:
    stwu 1, -0x60(1)
    mflr 0
    .4byte 0xC002FEA0 # lfs f0, lbl_80542E40@sda21(r0)
    stw 0, 0x64(1)
    stmw 24, 0x40(1)
    mr 31, 3
    addi 26, 1, 0x24
    li 25, 0x0
    stfs 0, 0x24(1)
    mr 28, 31
    mr 27, 31
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x30(1)
L_80371A64:
    lwz 0, 0x330(28)
    cmpwi 0, 0x0
    .4byte 0x408200F0 # bne .L_80371B5C
    mr 30, 31
    addi 29, 27, 0x294
    li 24, 0x0
L_80371A7C:
    mr 4, 29
    addi 3, 30, 0x264
    bl PSVECDistance
    lfs 0, 0x0(26)
    fcmpo cr0, 1, 0
    .4byte 0x408000BC # bge .L_80371B4C
    lfs 3, 0x268(30)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x298(27)
    addi 3, 3, lbl_80534C00@l
    stfs 1, 0x0(26)
    fsubs 1, 3, 0
    lfs 2, 0x264(30)
    lfs 0, 0x0(29)
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002FE44 # lfs f0, lbl_80542DE4@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80371AF0
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80371AF0
    li 3, 0x38e
    li 4, 0x2
    .4byte 0x48000044 # b .L_80371B30
L_80371AF0:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80371B0C
    cmplwi 0, 0xa000
    .4byte 0x40800010 # bge .L_80371B0C
    li 3, 0x38b
    li 4, 0x1
    .4byte 0x48000028 # b .L_80371B30
L_80371B0C:
    cmplwi 0, 0xa000
    .4byte 0x41800018 # blt .L_80371B28
    cmplwi 0, 0xe000
    .4byte 0x40800010 # bge .L_80371B28
    li 3, 0x391
    li 4, 0x3
    .4byte 0x4800000C # b .L_80371B30
L_80371B28:
    li 3, 0x388
    li 4, 0x0
L_80371B30:
    lwz 0, 0x350(28)
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80371B4C
    li 0, 0x1e
    stw 0, 0x330(28)
    stw 3, 0x350(28)
    stw 4, 0x340(28)
L_80371B4C:
    addi 24, 24, 0x1
    addi 30, 30, 0xc
    cmpwi 24, 0x4
    .4byte 0x4180FF24 # blt .L_80371A7C
L_80371B5C:
    addi 25, 25, 0x1
    addi 27, 27, 0xc
    cmpwi 25, 0x4
    addi 26, 26, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FEF4 # blt .L_80371A64
    lbz 0, 0x3a8(31)
    cmplwi 0, 0x0
    .4byte 0x40820100 # bne .L_80371C7C
    lwz 0, 0x3ac(31)
    cmpwi 0, 0x0
    .4byte 0x408201B4 # bne .L_80371D3C
    mr 3, 31
    bl fn_80370200
    mr 30, 3
    cmpwi 30, -0x1
    .4byte 0x418201A0 # beq .L_80371D3C
    lfs 1, 0x60(31)
    mulli 4, 30, 0xc
    addi 3, 1, 0x14
    stfs 1, 0x14(1)
    li 6, 0x1
    addi 26, 4, 0x294
    li 7, 0x0
    lfs 4, 0x64(31)
    add 26, 31, 26
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0x0(26)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x4(26)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 24, 3
    .4byte 0x41800124 # blt .L_80371D3C
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820118 # beq .L_80371D3C
    lis 3, lbl_80474F00@ha
    lwz 5, 0x4(31)
    addi 4, 3, lbl_80474F00@l
    slwi 0, 30, 2
    psq_l 1, 0x0(26), 0, 0
    addi 6, 1, 0x8
    lfs 0, 0x8(26)
    mr 3, 24
    lwzx 4, 4, 0
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_80371D3C
    stw 24, 0x3a4(31)
    li 0, 0x1
    stb 0, 0x3a8(31)
    stw 30, 0x3a0(31)
    bl fn_8023077C
    .4byte 0x480000C4 # b .L_80371D3C
L_80371C7C:
    lwz 0, 0x3a0(31)
    cmpwi 0, 0x4
    .4byte 0x418200B8 # beq .L_80371D3C
    cmpwi 0, 0x0
    .4byte 0x418000B0 # blt .L_80371D3C
    lfs 1, 0x60(31)
    mulli 3, 0, 0xc
    addi 4, 1, 0x14
    stfs 1, 0x14(1)
    li 7, 0x1
    addi 3, 3, 0x294
    li 8, 0x0
    lfs 4, 0x64(31)
    add 3, 31, 3
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0x0(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x4(3)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 3, 0x3a4(31)
    lwz 5, 0x4(31)
    lwz 6, 0x198(31)
    bl fn_8022FF8C
    lwz 3, 0x3a4(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80371D3C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x3a4(31)
    li 3, 0x0
    stb 0, 0x3a8(31)
    bl fn_80230534
    li 3, 0x3
    li 0, -0x1
    stw 3, 0x3ac(31)
    stw 0, 0x3a0(31)
L_80371D3C:
    lmw 24, 0x40(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80371D50:
    stwu 1, -0x120(1)
    li 0, 0x80
    li 8, 0x0
    cmpwi 4, 0x2
    stw 0, 0x238(3)
    stb 8, 0x398(3)
    .4byte 0x41820264 # beq .L_80371FCC
    .4byte 0x40800014 # bge .L_80371D80
    cmpwi 4, 0x0
    .4byte 0x4182033C # beq .L_803720B0
    .4byte 0x40800170 # bge .L_80371EE8
    .4byte 0x48000470 # b .L_803721EC
L_80371D80:
    cmpwi 4, 0x4
    .4byte 0x40800468 # bge .L_803721EC
    .4byte 0x880D91A1 # lbz r0, lbl_8053AD61@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820084 # bne .L_80371E14
    .4byte 0xC062FE24 # lfs f3, lbl_80542DC4@sda21(r0)
    lis 4, lbl_8050C870@ha
    .4byte 0xC022FE28 # lfs f1, lbl_80542DC8@sda21(r0)
    addi 4, 4, lbl_8050C870@l
    .4byte 0xC042FEA4 # lfs f2, lbl_80542E44@sda21(r0)
    li 0, 0x1
    .4byte 0xC002FE2C # lfs f0, lbl_80542DCC@sda21(r0)
    stfs 3, 0x104(1)
    stfs 3, 0x108(1)
    psq_l 4, 0x104(1), 0, 0
    stfs 2, 0xf8(1)
    stfs 1, 0xfc(1)
    psq_l 2, 0xf8(1), 0, 0
    stfs 1, 0xec(1)
    stfs 1, 0xf0(1)
    psq_l 1, 0xec(1), 0, 0
    stfs 3, 0xe0(1)
    stfs 0, 0xe4(1)
    psq_l 0, 0xe0(1), 0, 0
    stfs 3, 0x10c(1)
    psq_st 4, 0x0(4), 0, 0
    stfs 3, 0x8(4)
    stfs 3, 0x100(1)
    psq_st 2, 0xc(4), 0, 0
    stfs 3, 0x14(4)
    stfs 3, 0xf4(1)
    psq_st 1, 0x18(4), 0, 0
    stfs 3, 0x20(4)
    stfs 3, 0xe8(1)
    psq_st 0, 0x24(4), 0, 0
    stfs 3, 0x2c(4)
    .4byte 0x980D91A1 # stb r0, lbl_8053AD61@sda21(r0)
L_80371E14:
    lis 6, lbl_8050C870@ha
    lis 5, lbl_80474EE0@ha
    lis 4, lbl_80474EF0@ha
    li 0, 0x4
    addi 7, 5, lbl_80474EE0@l
    addi 6, 6, lbl_8050C870@l
    addi 9, 4, lbl_80474EF0@l
    mr 5, 3
    mr 8, 3
    .4byte 0xC062FEA8 # lfs f3, lbl_80542E48@sda21(r0)
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    mtctr 0
L_80371E44:
    lfs 1, 0x14(3)
    psq_l 2, 0xc(3), 0, 0
    stfs 1, 0x34(1)
    psq_l 5, 0x0(6), 0, 0
    psq_l 1, 0x8(6), 1, 0
    addi 6, 6, 0xc
    psq_l 4, 0x34(1), 1, 0
    ps_add 7, 2, 5
    psq_st 2, 0x2c(1), 0, 0
    ps_add 1, 4, 1
    lwz 4, 0x0(7)
    lwz 0, 0x0(9)
    addi 7, 7, 0x4
    psq_st 7, 0x2c4(5), 0, 0
    addi 9, 9, 0x4
    psq_st 1, 0x34(1), 1, 0
    lfs 6, 0x34(1)
    psq_st 7, 0x2c(1), 0, 0
    stfs 6, 0x2cc(5)
    lfs 5, 0x2c8(5)
    lfs 4, 0x298(5)
    lfs 2, 0x2c4(5)
    lfs 1, 0x294(5)
    fsubs 4, 5, 4
    psq_st 7, 0xd4(1), 0, 0
    fsubs 1, 2, 1
    fdivs 2, 4, 3
    stfs 6, 0xdc(1)
    stfs 0, 0xd0(1)
    fdivs 1, 1, 3
    stfs 2, 0xcc(1)
    stfs 1, 0xc8(1)
    psq_l 1, 0xc8(1), 0, 0
    psq_st 1, 0x2f4(5), 0, 0
    stfs 0, 0x2fc(5)
    addi 5, 5, 0xc
    stw 4, 0x350(8)
    stw 0, 0x340(8)
    addi 8, 8, 0x4
    .4byte 0x4200FF64 # bdnz .L_80371E44
    .4byte 0x48000308 # b .L_803721EC
L_80371EE8:
    li 0, 0x4
    mr 6, 3
    mr 7, 3
    .4byte 0xC0E2FE28 # lfs f7, lbl_80542DC8@sda21(r0)
    lis 5, 0x4330
    .4byte 0xC8C2FE70 # lfd f6, lbl_80542E10@sda21(r0)
    .4byte 0xC0A2FE24 # lfs f5, lbl_80542DC4@sda21(r0)
    .4byte 0xC042FEA8 # lfs f2, lbl_80542E48@sda21(r0)
    mtctr 0
L_80371F0C:
    xoris 0, 8, 0x8000
    lfs 1, 0x14(3)
    stw 0, 0x114(1)
    li 4, 0x388
    psq_l 3, 0xc(3), 0, 0
    li 0, 0x0
    stw 5, 0x110(1)
    addi 8, 8, 0x1
    lfd 0, 0x110(1)
    stfs 1, 0x28(1)
    fsubs 0, 0, 6
    stfs 5, 0xb8(1)
    psq_l 4, 0x28(1), 1, 0
    fmuls 0, 7, 0
    psq_l 1, 0xb8(1), 1, 0
    stfs 5, 0xb4(1)
    ps_add 1, 4, 1
    stfs 0, 0xb0(1)
    psq_l 0, 0xb0(1), 0, 0
    psq_st 1, 0x28(1), 1, 0
    ps_add 9, 3, 0
    lfs 8, 0x28(1)
    psq_st 3, 0x20(1), 0, 0
    psq_st 9, 0x2c4(6), 0, 0
    stfs 8, 0x2cc(6)
    lfs 4, 0x2c8(6)
    lfs 3, 0x298(6)
    lfs 1, 0x2c4(6)
    lfs 0, 0x294(6)
    fsubs 3, 4, 3
    psq_st 9, 0x20(1), 0, 0
    fsubs 0, 1, 0
    fdivs 1, 3, 2
    psq_st 9, 0xbc(1), 0, 0
    stfs 8, 0xc4(1)
    stfs 5, 0xac(1)
    fdivs 0, 0, 2
    stfs 1, 0xa8(1)
    stfs 0, 0xa4(1)
    psq_l 0, 0xa4(1), 0, 0
    psq_st 0, 0x2f4(6), 0, 0
    stfs 5, 0x2fc(6)
    addi 6, 6, 0xc
    stw 4, 0x350(7)
    stw 0, 0x340(7)
    addi 7, 7, 0x4
    .4byte 0x4200FF48 # bdnz .L_80371F0C
    .4byte 0x48000224 # b .L_803721EC
L_80371FCC:
    li 0, 0x4
    mr 6, 3
    mr 7, 3
    .4byte 0xC0E2FE24 # lfs f7, lbl_80542DC4@sda21(r0)
    lis 5, 0x4330
    .4byte 0xC0C2FE28 # lfs f6, lbl_80542DC8@sda21(r0)
    .4byte 0xC8A2FE70 # lfd f5, lbl_80542E10@sda21(r0)
    .4byte 0xC042FEA8 # lfs f2, lbl_80542E48@sda21(r0)
    mtctr 0
L_80371FF0:
    xoris 0, 8, 0x8000
    lfs 1, 0x14(3)
    stw 0, 0x114(1)
    li 4, 0x38e
    psq_l 3, 0xc(3), 0, 0
    li 0, 0x2
    stw 5, 0x110(1)
    addi 8, 8, 0x1
    lfd 0, 0x110(1)
    stfs 1, 0x1c(1)
    fsubs 0, 0, 5
    stfs 7, 0x94(1)
    psq_l 4, 0x1c(1), 1, 0
    fmuls 0, 6, 0
    psq_l 1, 0x94(1), 1, 0
    stfs 7, 0x8c(1)
    ps_add 1, 4, 1
    stfs 0, 0x90(1)
    psq_l 0, 0x8c(1), 0, 0
    psq_st 1, 0x1c(1), 1, 0
    ps_add 9, 3, 0
    lfs 8, 0x1c(1)
    psq_st 3, 0x14(1), 0, 0
    psq_st 9, 0x2c4(6), 0, 0
    stfs 8, 0x2cc(6)
    lfs 4, 0x2c8(6)
    lfs 3, 0x298(6)
    lfs 1, 0x2c4(6)
    lfs 0, 0x294(6)
    fsubs 3, 4, 3
    psq_st 9, 0x14(1), 0, 0
    fsubs 0, 1, 0
    fdivs 1, 3, 2
    psq_st 9, 0x98(1), 0, 0
    stfs 8, 0xa0(1)
    stfs 7, 0x88(1)
    fdivs 0, 0, 2
    stfs 1, 0x84(1)
    stfs 0, 0x80(1)
    psq_l 0, 0x80(1), 0, 0
    psq_st 0, 0x2f4(6), 0, 0
    stfs 7, 0x2fc(6)
    addi 6, 6, 0xc
    stw 4, 0x350(7)
    stw 0, 0x340(7)
    addi 7, 7, 0x4
    .4byte 0x4200FF48 # bdnz .L_80371FF0
    .4byte 0x48000140 # b .L_803721EC
L_803720B0:
    .4byte 0x880D91A2 # lbz r0, lbl_8053AD62@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082007C # bne .L_80372134
    .4byte 0xC022FE24 # lfs f1, lbl_80542DC4@sda21(r0)
    lis 4, lbl_8050C8A0@ha
    .4byte 0xC002FE28 # lfs f0, lbl_80542DC8@sda21(r0)
    addi 4, 4, lbl_8050C8A0@l
    stfs 1, 0x74(1)
    li 0, 0x1
    stfs 1, 0x78(1)
    psq_l 2, 0x74(1), 0, 0
    stfs 0, 0x68(1)
    stfs 1, 0x6c(1)
    psq_l 3, 0x68(1), 0, 0
    stfs 1, 0x5c(1)
    stfs 0, 0x60(1)
    psq_l 4, 0x5c(1), 0, 0
    stfs 0, 0x50(1)
    stfs 0, 0x54(1)
    psq_l 0, 0x50(1), 0, 0
    stfs 1, 0x7c(1)
    psq_st 2, 0x0(4), 0, 0
    stfs 1, 0x8(4)
    stfs 1, 0x70(1)
    psq_st 3, 0xc(4), 0, 0
    stfs 1, 0x14(4)
    stfs 1, 0x64(1)
    psq_st 4, 0x18(4), 0, 0
    stfs 1, 0x20(4)
    stfs 1, 0x58(1)
    psq_st 0, 0x24(4), 0, 0
    stfs 1, 0x2c(4)
    .4byte 0x980D91A2 # stb r0, lbl_8053AD62@sda21(r0)
L_80372134:
    lis 4, lbl_8050C8A0@ha
    li 0, 0x4
    addi 5, 4, lbl_8050C8A0@l
    mr 6, 3
    mr 7, 3
    .4byte 0xC062FEA8 # lfs f3, lbl_80542E48@sda21(r0)
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    mtctr 0
L_80372154:
    lfs 1, 0x14(3)
    li 4, 0x391
    psq_l 2, 0xc(3), 0, 0
    li 0, 0x3
    stfs 1, 0x10(1)
    psq_l 5, 0x0(5), 0, 0
    psq_l 1, 0x8(5), 1, 0
    addi 5, 5, 0xc
    psq_l 4, 0x10(1), 1, 0
    ps_add 7, 2, 5
    psq_st 2, 0x8(1), 0, 0
    ps_add 1, 4, 1
    psq_st 7, 0x2c4(6), 0, 0
    psq_st 1, 0x10(1), 1, 0
    lfs 6, 0x10(1)
    psq_st 7, 0x8(1), 0, 0
    stfs 6, 0x2cc(6)
    lfs 5, 0x2c8(6)
    lfs 4, 0x298(6)
    lfs 2, 0x2c4(6)
    lfs 1, 0x294(6)
    fsubs 4, 5, 4
    psq_st 7, 0x44(1), 0, 0
    fsubs 1, 2, 1
    fdivs 2, 4, 3
    stfs 6, 0x4c(1)
    stfs 0, 0x40(1)
    fdivs 1, 1, 3
    stfs 2, 0x3c(1)
    stfs 1, 0x38(1)
    psq_l 1, 0x38(1), 0, 0
    psq_st 1, 0x2f4(6), 0, 0
    stfs 0, 0x2fc(6)
    addi 6, 6, 0xc
    stw 4, 0x350(7)
    stw 0, 0x340(7)
    addi 7, 7, 0x4
    .4byte 0x4200FF6C # bdnz .L_80372154
L_803721EC:
    addi 1, 1, 0x120
    blr

fn_803721F4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 25, 0x14(1)
    mr 31, 3
    li 25, 0x0
    lbz 0, 0x398(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80372280
    .4byte 0xC3E2FE20 # lfs f31, lbl_80542DC0@sda21(r0)
    mr 28, 31
    li 27, 0x0
L_8037222C:
    mr 30, 31
    addi 29, 28, 0x294
    li 26, 0x0
L_80372238:
    mr 4, 29
    addi 3, 30, 0x264
    bl PSVECDistance
    fcmpo cr0, 1, 31
    .4byte 0x4080000C # bge .L_80372254
    li 25, 0x1
    .4byte 0x48000014 # b .L_80372264
L_80372254:
    addi 26, 26, 0x1
    addi 30, 30, 0xc
    cmpwi 26, 0x4
    .4byte 0x4180FFD8 # blt .L_80372238
L_80372264:
    clrlwi 0, 25, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_80372280
    addi 27, 27, 0x1
    addi 28, 28, 0xc
    cmpwi 27, 0x4
    .4byte 0x4180FFB0 # blt .L_8037222C
L_80372280:
    clrlwi 0, 25, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_803722A4
    lwz 4, 0x238(31)
    mr 3, 31
    addi 0, 4, 0x1
    stw 0, 0x238(31)
    bl fn_80371A2C
    .4byte 0x48000144 # b .L_803723E4
L_803722A4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_803722CC
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_803722CC
    cmpwi 0, 0xb
    .4byte 0x41820010 # beq .L_803722CC
    lbz 0, 0x398(31)
    cmplwi 0, 0x1
    .4byte 0x4182011C # beq .L_803723E4
L_803722CC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80372300
    lwz 4, 0x234(31)
    mr 3, 31
    addi 0, 4, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    clrlwi 0, 0, 30
    stw 0, 0x234(31)
    lwz 4, 0x234(31)
    bl fn_80371D50
    .4byte 0x480000E8 # b .L_803723E4
L_80372300:
    psq_l 1, 0x294(31), 0, 0
    li 29, 0x0
    psq_l 0, 0x2f4(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x294(31), 0, 0
    psq_l 1, 0x29c(31), 1, 0
    psq_l 0, 0x2fc(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x29c(31), 1, 0
    psq_l 1, 0x2a0(31), 0, 0
    psq_l 0, 0x300(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2a0(31), 0, 0
    psq_l 1, 0x2a8(31), 1, 0
    psq_l 0, 0x308(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2a8(31), 1, 0
    psq_l 1, 0x2ac(31), 0, 0
    psq_l 0, 0x30c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2ac(31), 0, 0
    psq_l 1, 0x2b4(31), 1, 0
    psq_l 0, 0x314(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2b4(31), 1, 0
    psq_l 1, 0x2b8(31), 0, 0
    psq_l 0, 0x318(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2b8(31), 0, 0
    psq_l 1, 0x2c0(31), 1, 0
    psq_l 0, 0x320(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x2c0(31), 1, 0
    lwz 0, 0x238(31)
    cmpwi 0, 0x76
    .4byte 0x4082004C # bne .L_803723D8
    .4byte 0xC3E2FE24 # lfs f31, lbl_80542DC4@sda21(r0)
    mr 28, 31
L_80372398:
    psq_l 1, 0x2c4(28), 0, 0
    li 4, 0x37
    lfs 0, 0x2cc(28)
    li 5, -0x1
    psq_st 1, 0x294(28), 0, 0
    stfs 0, 0x29c(28)
    stfs 31, 0x2fc(28)
    stfs 31, 0x2f8(28)
    stfs 31, 0x2f4(28)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    addi 29, 29, 0x1
    addi 28, 28, 0xc
    cmpwi 29, 0x4
    .4byte 0x4180FFC8 # blt .L_80372398
    .4byte 0x48000010 # b .L_803723E4
L_803723D8:
    .4byte 0x4080000C # bge .L_803723E4
    li 0, 0x1
    stb 0, 0x398(31)
L_803723E4:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 25, 0x14(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80372400:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, lbl_80474ED0@ha
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 26, 3
    addi 30, 5, lbl_80474ED0@l
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_80372508
    psq_l 1, 0xc(26), 0, 0
    mr 29, 26
    lfs 0, 0x14(26)
    mr 28, 26
    psq_st 1, 0x8(1), 0, 0
    addi 31, 30, 0x0
    li 27, 0x0
    stfs 0, 0x10(1)
L_8037244C:
    psq_l 2, 0x294(29), 0, 0
    mr 3, 26
    lfs 0, 0x29c(29)
    addi 4, 30, 0x9c
    .4byte 0xC022FE98 # lfs f1, lbl_80542E38@sda21(r0)
    li 6, 0x0
    psq_st 2, 0xc(26), 0, 0
    li 7, 0x7
    fmr 2, 1
    stfs 0, 0x14(26)
    lwz 0, 0x364(26)
    lwz 5, 0x350(28)
    slwi 0, 0, 2
    lwzx 0, 31, 0
    add 5, 5, 0
    bl fn_801F06F0
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x4
    addi 29, 29, 0xc
    .4byte 0x4180FFB0 # blt .L_8037244C
    lbz 0, 0x399(26)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_803724C0
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(26), 0, 0
    stfs 0, 0x14(26)
    .4byte 0x4800004C # b .L_80372508
L_803724C0:
    psq_l 2, 0x324(26), 0, 0
    mr 3, 26
    lfs 0, 0x32c(26)
    addi 4, 30, 0xb0
    .4byte 0xC022FE98 # lfs f1, lbl_80542E38@sda21(r0)
    li 6, 0x0
    psq_st 2, 0xc(26), 0, 0
    li 7, 0x7
    fmr 2, 1
    stfs 0, 0x14(26)
    lwz 5, 0x368(26)
    lwz 0, 0x370(26)
    add 5, 5, 0
    bl fn_801F06F0
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(26), 0, 0
    stfs 0, 0x14(26)
L_80372508:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8037251C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 24, 0x40(1)
    mr 31, 3
    lwz 3, 0x238(3)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80372544
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80372544:
    li 3, 0x0
    bl fn_8022EA0C
    stw 3, 0x39c(31)
    mr 27, 31
    li 24, 0x0
L_80372558:
    mr 3, 24
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 24, 24, 0x1
    lfs 0, 0x8(3)
    cmpwi 24, 0x4
    psq_st 1, 0x264(27), 0, 0
    stfs 0, 0x26c(27)
    addi 27, 27, 0xc
    .4byte 0x4180FFDC # blt .L_80372558
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037259C
    mr 3, 31
    bl fn_8036FB60
    .4byte 0x48000224 # b .L_803727BC
L_8037259C:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_803725B0
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_803725B0:
    lwz 3, 0x3ac(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_803725C4
    subi 0, 3, 0x1
    stw 0, 0x3ac(31)
L_803725C4:
    lwz 3, 0x360(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_803725D8
    subi 0, 3, 0x1
    stw 0, 0x360(31)
L_803725D8:
    lwz 0, 0x360(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8037260C
    li 0, 0x8
    stw 0, 0x360(31)
    lwz 3, 0x364(31)
    addi 0, 3, 0x1
    stw 0, 0x364(31)
    lwz 0, 0x364(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8037260C
    li 0, 0x0
    stw 0, 0x364(31)
L_8037260C:
    lwz 3, 0x36c(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80372620
    subi 0, 3, 0x1
    stw 0, 0x36c(31)
L_80372620:
    lwz 0, 0x36c(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_80372658
    lwz 0, 0x368(31)
    cmpwi 0, 0x108
    .4byte 0x40820010 # bne .L_80372644
    li 0, 0x10
    stw 0, 0x36c(31)
    .4byte 0x4800000C # b .L_8037264C
L_80372644:
    li 0, 0xa
    stw 0, 0x36c(31)
L_8037264C:
    lwz 0, 0x370(31)
    xori 0, 0, 0x1
    stw 0, 0x370(31)
L_80372658:
    lfs 1, 0x60(31)
    mr 26, 31
    mr 25, 31
    li 24, 0x0
    stfs 1, 0x28(1)
    lfs 0, 0x64(31)
    stfs 1, 0x18(1)
    stfs 0, 0x2c(1)
    lwz 29, 0x18(1)
    lfs 1, 0x68(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x30(1)
    lwz 30, 0x1c(1)
    lfs 0, 0x6c(31)
    stfs 1, 0x20(1)
    lwz 27, 0x20(1)
    stfs 0, 0x24(1)
    lwz 28, 0x24(1)
    stfs 0, 0x34(1)
    stw 27, 0x8(1)
    stw 28, 0xc(1)
    stw 27, 0x10(1)
    stw 28, 0x14(1)
L_803726B4:
    lwz 3, 0x330(26)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_803726C8
    subi 0, 3, 0x1
    stw 0, 0x330(26)
L_803726C8:
    lfs 0, 0x28(1)
    addi 3, 1, 0x28
    lfs 4, 0x294(25)
    lfs 1, 0x30(1)
    fadds 3, 0, 4
    lfs 2, 0x2c(1)
    lfs 0, 0x34(1)
    fadds 1, 1, 4
    stfs 3, 0x28(1)
    lfs 3, 0x298(25)
    fadds 2, 2, 3
    stfs 1, 0x30(1)
    fadds 0, 0, 3
    stfs 2, 0x2c(1)
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    addi 24, 24, 0x1
    stw 29, 0x28(1)
    cmpwi 24, 0x4
    addi 26, 26, 0x4
    stw 30, 0x2c(1)
    addi 25, 25, 0xc
    stw 27, 0x30(1)
    stw 28, 0x34(1)
    .4byte 0x4180FF84 # blt .L_803726B4
    lfs 0, 0x28(1)
    addi 3, 1, 0x28
    lfs 4, 0x324(31)
    lfs 1, 0x30(1)
    fadds 3, 0, 4
    lfs 2, 0x2c(1)
    lfs 0, 0x34(1)
    fadds 1, 1, 4
    stfs 3, 0x28(1)
    lfs 3, 0x328(31)
    fadds 2, 2, 3
    stfs 1, 0x30(1)
    fadds 0, 0, 3
    stfs 2, 0x2c(1)
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 7, 0x18(1)
    lis 3, lbl_804AE420@ha
    lwz 6, 0x1c(1)
    addi 0, 3, lbl_804AE420@l
    lwz 5, 0x8(1)
    mr 3, 31
    lwz 4, 0xc(1)
    stw 7, 0x28(1)
    stw 6, 0x2c(1)
    stw 5, 0x30(1)
    stw 4, 0x34(1)
    lwz 4, 0x230(31)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
L_803727BC:
    lmw 24, 0x40(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803727D0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803727FC
    bl fn_8036FDAC
    .4byte 0x48000294 # b .L_80372A8C
L_803727FC:
    li 0, 0x50
    stw 0, 0x238(31)
    .4byte 0x880D91A0 # lbz r0, lbl_8053AD60@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820084 # bne .L_80372890
    .4byte 0xC062FE24 # lfs f3, lbl_80542DC4@sda21(r0)
    lis 3, lbl_8050C840@ha
    .4byte 0xC042FE28 # lfs f2, lbl_80542DC8@sda21(r0)
    addi 3, 3, lbl_8050C840@l
    .4byte 0xC022FE2C # lfs f1, lbl_80542DCC@sda21(r0)
    li 0, 0x1
    .4byte 0xC002FE20 # lfs f0, lbl_80542DC0@sda21(r0)
    stfs 3, 0x44(1)
    stfs 3, 0x48(1)
    psq_l 4, 0x44(1), 0, 0
    stfs 2, 0x38(1)
    stfs 3, 0x3c(1)
    psq_l 2, 0x38(1), 0, 0
    stfs 1, 0x2c(1)
    stfs 3, 0x30(1)
    psq_l 1, 0x2c(1), 0, 0
    stfs 0, 0x20(1)
    stfs 3, 0x24(1)
    psq_l 0, 0x20(1), 0, 0
    stfs 3, 0x4c(1)
    psq_st 4, 0x0(3), 0, 0
    stfs 3, 0x8(3)
    stfs 3, 0x40(1)
    psq_st 2, 0xc(3), 0, 0
    stfs 3, 0x14(3)
    stfs 3, 0x34(1)
    psq_st 1, 0x18(3), 0, 0
    stfs 3, 0x20(3)
    stfs 3, 0x28(1)
    psq_st 0, 0x24(3), 0, 0
    stfs 3, 0x2c(3)
    .4byte 0x980D91A0 # stb r0, lbl_8053AD60@sda21(r0)
L_80372890:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_803728B8
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_803728C0
L_803728B8:
    li 0, 0x0
    stw 0, 0x230(31)
L_803728C0:
    lis 3, lbl_8050C840@ha
    li 4, 0x1
    li 0, 0x2
    mr 5, 31
    addi 3, 3, lbl_8050C840@l
    mr 8, 31
    stw 4, 0x234(31)
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    mtctr 0
L_803728E4:
    lfs 1, 0x14(31)
    li 0, 0x38b
    psq_l 2, 0xc(31), 0, 0
    li 7, 0x0
    stfs 1, 0x10(1)
    li 6, 0x1
    psq_l 5, 0x0(3), 0, 0
    psq_l 1, 0x10(1), 1, 0
    psq_l 4, 0x8(3), 1, 0
    ps_add 5, 2, 5
    psq_st 2, 0x8(1), 0, 0
    ps_add 1, 1, 4
    psq_st 5, 0x2c4(5), 0, 0
    psq_st 1, 0x10(1), 1, 0
    lfs 3, 0x10(1)
    psq_st 5, 0x8(1), 0, 0
    stfs 3, 0x2cc(5)
    psq_l 2, 0x2c4(5), 0, 0
    lfs 1, 0x2cc(5)
    psq_st 5, 0x14(1), 0, 0
    psq_st 2, 0x294(5), 0, 0
    stfs 1, 0x29c(5)
    stfs 0, 0x2fc(5)
    stfs 0, 0x2f8(5)
    stfs 0, 0x2f4(5)
    stw 0, 0x350(8)
    stw 7, 0x330(8)
    stw 6, 0x340(8)
    lfs 1, 0x14(31)
    psq_l 4, 0x14(3), 1, 0
    stfs 1, 0x10(1)
    psq_l 2, 0xc(31), 0, 0
    psq_l 5, 0xc(3), 0, 0
    addi 3, 3, 0x18
    psq_l 1, 0x10(1), 1, 0
    ps_add 5, 2, 5
    psq_st 2, 0x8(1), 0, 0
    ps_add 1, 1, 4
    stfs 3, 0x1c(1)
    psq_st 1, 0x10(1), 1, 0
    lfs 3, 0x10(1)
    psq_st 5, 0x2d0(5), 0, 0
    stfs 3, 0x2d8(5)
    psq_l 2, 0x2d0(5), 0, 0
    lfs 1, 0x2d8(5)
    psq_st 5, 0x8(1), 0, 0
    psq_st 2, 0x2a0(5), 0, 0
    stfs 1, 0x2a8(5)
    stfs 0, 0x308(5)
    stfs 0, 0x304(5)
    stfs 0, 0x300(5)
    addi 5, 5, 0x18
    stw 0, 0x354(8)
    stw 7, 0x334(8)
    stw 6, 0x344(8)
    addi 8, 8, 0x8
    psq_st 5, 0x14(1), 0, 0
    stfs 3, 0x1c(1)
    .4byte 0x4200FF18 # bdnz .L_803728E4
    psq_l 1, 0x2f4(31), 0, 0
    li 5, 0x8
    lfs 0, 0x2fc(31)
    li 4, 0x106
    li 3, 0x10
    .4byte 0xC042FE30 # lfs f2, lbl_80542DD0@sda21(r0)
    psq_st 1, 0x3c(31), 0, 0
    li 0, -0x1
    .4byte 0xC022FE34 # lfs f1, lbl_80542DD4@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0xC002FE24 # lfs f0, lbl_80542DC4@sda21(r0)
    stw 5, 0x360(31)
    stw 7, 0x364(31)
    psq_l 4, 0x294(31), 0, 0
    lfs 3, 0x29c(31)
    psq_st 4, 0x324(31), 0, 0
    stfs 3, 0x32c(31)
    stw 4, 0x368(31)
    stw 3, 0x36c(31)
    stw 7, 0x370(31)
    stw 7, 0x394(31)
    stb 6, 0x398(31)
    stb 7, 0x399(31)
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stw 0, 0x3a0(31)
    stw 7, 0x3a4(31)
    stb 7, 0x3a8(31)
    stw 7, 0x3ac(31)
    stfs 0, 0x24c(31)
    stfs 0, 0x248(31)
    stfs 0, 0x244(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stw 7, 0x374(31)
    stw 7, 0x384(31)
    stw 7, 0x378(31)
    stw 7, 0x388(31)
    stw 7, 0x37c(31)
    stw 7, 0x38c(31)
    stw 7, 0x380(31)
    stw 7, 0x390(31)
L_80372A8C:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80372AA0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80372AE4
    lis 5, lbl_804AE4B0@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE4B0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80372AE4
    mr 3, 30
    bl dtor_80084580
L_80372AE4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80372B00:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 14, 0x38(1)
    lis 3, lbl_804AE390@ha
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    addi 16, 3, lbl_804AE390@l
    lwz 15, 0x64(16)
    extsb. 0, 0
    lis 3, lbl_8050C840@ha
    lwz 17, 0x0(16)
    stw 15, 0x30(1)
    addi 31, 3, lbl_8050C840@l
    lwz 15, 0x68(16)
    addi 20, 16, 0x90
    lwz 0, 0x5c(16)
    stw 15, 0x8(1)
    lwz 15, 0x6c(16)
    stw 0, 0x5c(20)
    lwz 0, 0x30(1)
    stw 15, 0xc(1)
    lwz 15, 0x70(16)
    stw 0, 0x64(20)
    lwz 0, 0x8(1)
    stw 15, 0x10(1)
    lwz 15, 0x74(16)
    stw 0, 0x68(20)
    lwz 0, 0xc(1)
    stw 15, 0x14(1)
    lwz 15, 0x78(16)
    stw 0, 0x6c(20)
    lwz 0, 0x10(1)
    stw 15, 0x18(1)
    lwz 15, 0x7c(16)
    stw 0, 0x70(20)
    lwz 0, 0x14(1)
    stw 15, 0x1c(1)
    lwz 15, 0x80(16)
    stw 0, 0x74(20)
    lwz 0, 0x18(1)
    stw 15, 0x20(1)
    lwz 15, 0x84(16)
    stw 0, 0x78(20)
    lwz 0, 0x1c(1)
    stw 15, 0x24(1)
    lwz 15, 0x88(16)
    stw 0, 0x7c(20)
    lwz 0, 0x20(1)
    stw 15, 0x28(1)
    lwz 15, 0x8c(16)
    stw 0, 0x80(20)
    lwz 0, 0x24(1)
    lwz 18, 0x4(16)
    stw 0, 0x84(20)
    lwz 0, 0x28(1)
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
    stw 0, 0x88(20)
    mr 0, 15
    stw 15, 0x2c(1)
    stw 17, 0x90(16)
    stw 18, 0x94(16)
    stw 19, 0x98(16)
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
    stw 0, 0x8c(20)
    .4byte 0x40820030 # bne .L_80372CD4
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xc0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80372CD4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372D0C
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xcc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80372D0C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372D44
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0xd8
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80372D44:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372D7C
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0xe4
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80372D7C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372DB4
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0xf0
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80372DB4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372DEC
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0xfc
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80372DEC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372E24
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x108
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80372E24:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372E5C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x114
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80372E5C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372E94
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x120
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80372E94:
    lmw 14, 0x38(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80372EA8:
    blr

fn_80372EAC:
    blr

fn_80372EB0:
    blr

fn_80372EB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80372EF8
    lis 5, lbl_804AE508@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE508@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80372EF8
    mr 3, 30
    bl dtor_80084580
L_80372EF8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80372F14:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050CA00@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050CA00@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372F64
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
L_80372F64:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372F9C
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
L_80372F9C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80372FD4
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
L_80372FD4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037300C
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
L_8037300C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373044
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
L_80373044:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037307C
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
L_8037307C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803730B4
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
L_803730B4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803730EC
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
L_803730EC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373124
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
L_80373124:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80373138:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8037317C
    lis 5, lbl_804AE574@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE574@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8037317C
    mr 3, 30
    bl dtor_80084580
L_8037317C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80373198:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    mr 31, 3
    lwz 0, 0x24c(3)
    cmpwi 0, 0x0
    .4byte 0x41800234 # blt .L_80373404
    cmpwi 0, 0x4
    .4byte 0x408000BC # bge .L_80373294
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820220 # beq .L_80373404
    li 0, 0x4
    li 3, 0x32
    stw 0, 0x24c(31)
    li 0, 0x0
    .4byte 0xC3C2FEB0 # lfs f30, lbl_80542E50@sda21(r0)
    addi 29, 1, 0x20
    stw 3, 0x248(31)
    li 28, 0x0
    .4byte 0xC3E2FEB4 # lfs f31, lbl_80542E54@sda21(r0)
    stw 0, 0x250(31)
L_80373210:
    mr 3, 28
    bl fn_8023E724
    lfs 0, 0x8(3)
    mr 4, 29
    psq_l 1, 0x0(3), 0, 0
    mr 3, 28
    stfs 30, 0x1c(1)
    li 5, 0x2e2
    li 6, 0xff
    li 7, -0x80
    stfs 0, 0x10(1)
    li 8, -0x80
    psq_l 2, 0x1c(1), 1, 0
    li 9, 0x1
    psq_l 3, 0x10(1), 1, 0
    stfs 30, 0x14(1)
    ps_add 2, 3, 2
    stfs 31, 0x18(1)
    psq_l 3, 0x14(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_add 2, 1, 3
    psq_st 1, 0x8(1), 0, 0
    lfs 3, 0x10(1)
    psq_st 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    psq_st 2, 0x8(1), 0, 0
    psq_st 2, 0x0(29), 0, 0
    stfs 3, 0x28(1)
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80373210
    .4byte 0x48000174 # b .L_80373404
L_80373294:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x40820060 # bne .L_803732FC
    lwz 0, 0x248(31)
    cmpwi 0, 0x1e
    .4byte 0x40810054 # ble .L_803732FC
    li 28, 0x0
    addi 30, 1, 0x38
L_803732B4:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 30
    lfs 0, 0x8(3)
    mr 3, 28
    li 5, 0x2e2
    li 6, 0xff
    psq_st 1, 0x0(30), 0, 0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x40(1)
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC0 # blt .L_803732B4
    .4byte 0x4800010C # b .L_80373404
L_803732FC:
    cmpwi 3, 0xd
    .4byte 0x408000B8 # bge .L_803733B8
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x408200F8 # bne .L_80373404
    lwz 4, 0x250(31)
    lis 3, lbl_80475024@ha
    addi 3, 3, lbl_80475024@l
    addi 29, 1, 0x2c
    addi 0, 4, 0x1
    li 28, 0x0
    stw 0, 0x250(31)
    lis 30, 0x1
    lwz 0, 0x250(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x248(31)
L_80373340:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 28
    li 6, 0xff
    li 7, -0x80
    psq_st 1, 0x0(29), 0, 0
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x34(1)
    lwz 5, 0x250(31)
    addi 5, 5, 0xdb
    bl fn_80230498
    lwz 0, 0x250(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80373394
    mr 3, 28
    addi 4, 30, 0x1
    bl fn_80230FD0
L_80373394:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA4 # blt .L_80373340
    lwz 0, 0x250(31)
    cmpwi 0, 0xd
    .4byte 0x4082005C # bne .L_80373404
    li 0, 0x19
    stw 0, 0x248(31)
    .4byte 0x48000050 # b .L_80373404
L_803733B8:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_803733E0
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80373404
    li 0, -0x1
    stw 0, 0x24c(31)
    .4byte 0x48000028 # b .L_80373404
L_803733E0:
    cmpwi 0, 0xf
    .4byte 0x40820020 # bne .L_80373404
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_80373404:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0x84(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80373434:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804AE560@ha
    lis 6, 0x5449
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x23c(3)
    lwz 3, 0xa4(5)
    addi 5, 4, lbl_804AE560@l
    slwi 0, 0, 2
    addi 4, 6, 0x4d47
    lwz 12, 0x0(3)
    lwzx 5, 5, 0
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_803734A0
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    li 6, 0x0
    lwz 3, 0x20(7)
    bl fn_802F745C
L_803734A0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803734B4:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    .4byte 0xC002FEB0 # lfs f0, lbl_80542E50@sda21(r0)
    mr 31, 3
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 3, 0x248(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80373504
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80373504:
    mr 3, 31
    bl fn_80373198
    .4byte 0xC022FEB8 # lfs f1, lbl_80542E58@sda21(r0)
    addi 3, 1, 0x38
    .4byte 0xC082FEBC # lfs f4, lbl_80542E5C@sda21(r0)
    li 30, 0x0
    .4byte 0xC042FEC0 # lfs f2, lbl_80542E60@sda21(r0)
    .4byte 0xC062FEC4 # lfs f3, lbl_80542E64@sda21(r0)
    stfs 1, 0x38(1)
    stfs 4, 0x3c(1)
    stfs 2, 0x40(1)
    stfs 3, 0x44(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x38(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x40(1)
    fadds 0, 3, 2
    stfs 1, 0x3c(1)
    stfs 0, 0x44(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239470
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_80373588
    lwz 3, 0x198(31)
    bl fn_80238A68
    mr 30, 3
    cmpwi 30, 0x4
    .4byte 0x40810008 # ble .L_80373588
    li 30, 0x4
L_80373588:
    lfs 1, 0x244(31)
    .4byte 0xC002FEC8 # lfs f0, lbl_80542E68@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_803735C0
    lfs 0, 0x60(31)
    stfs 0, 0x38(1)
    lfs 0, 0x64(31)
    stfs 0, 0x3c(1)
    lfs 0, 0x68(31)
    stfs 0, 0x40(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x44(1)
    .4byte 0x48000024 # b .L_803735E0
L_803735C0:
    lfs 0, 0x70(31)
    stfs 0, 0x38(1)
    lfs 0, 0x74(31)
    stfs 0, 0x3c(1)
    lfs 0, 0x78(31)
    stfs 0, 0x40(1)
    lfs 0, 0x7c(31)
    stfs 0, 0x44(1)
L_803735E0:
    lfs 1, 0x38(1)
    lis 3, lbl_80474F98@ha
    lfs 3, 0xc(31)
    addi 3, 3, lbl_80474F98@l
    lfs 0, 0x40(1)
    cmpwi 30, 0x4
    fadds 1, 1, 3
    .4byte 0xC042FEB0 # lfs f2, lbl_80542E50@sda21(r0)
    fadds 4, 0, 3
    lfs 5, 0x3c(1)
    lfs 3, 0x44(1)
    stfs 1, 0x38(1)
    fadds 1, 1, 2
    lfs 6, 0x10(31)
    fadds 0, 4, 2
    fadds 5, 5, 6
    stfs 4, 0x40(1)
    fadds 3, 3, 6
    stfs 5, 0x3c(1)
    stfs 3, 0x44(1)
    lwz 0, 0x23c(31)
    slwi 0, 0, 2
    stfs 1, 0x38(1)
    lfsx 4, 3, 0
    stfs 0, 0x40(1)
    fadds 1, 5, 4
    fadds 0, 3, 4
    stfs 1, 0x3c(1)
    stfs 0, 0x44(1)
    .4byte 0x408201B8 # bne .L_8037380C
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    lwz 5, 0x198(31)
    bl fn_80239914
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80373680
    .4byte 0xC002FECC # lfs f0, lbl_80542E6C@sda21(r0)
    stfs 0, 0x244(31)
    .4byte 0x480001C8 # b .L_80373844
L_80373680:
    lfs 2, 0x244(31)
    .4byte 0xC002FED0 # lfs f0, lbl_80542E70@sda21(r0)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x4082011C # bne .L_803737AC
    .4byte 0xC022FED4 # lfs f1, lbl_80542E74@sda21(r0)
    .4byte 0xC002FECC # lfs f0, lbl_80542E6C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x244(31)
    lfs 1, 0x244(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820194 # bne .L_80373844
    stfs 0, 0x244(31)
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x40820184 # bne .L_80373844
    li 0, 0x1
    lis 4, 0x3
    stb 0, 0x240(31)
    mr 3, 31
    addi 4, 4, 0x4b
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stb 0, 0x254(31)
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_803737A0
    li 0, 0x32
    li 3, 0x4
    stw 0, 0x248(31)
    li 0, 0x0
    .4byte 0xC3C2FEB0 # lfs f30, lbl_80542E50@sda21(r0)
    addi 30, 1, 0x20
    stw 3, 0x24c(31)
    li 29, 0x0
    .4byte 0xC3E2FEB4 # lfs f31, lbl_80542E54@sda21(r0)
    stw 0, 0x250(31)
L_8037371C:
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x8(3)
    mr 4, 30
    psq_l 1, 0x0(3), 0, 0
    mr 3, 29
    stfs 30, 0x1c(1)
    li 5, 0x2e2
    li 6, 0xff
    li 7, -0x80
    stfs 0, 0x10(1)
    li 8, -0x80
    psq_l 2, 0x1c(1), 1, 0
    li 9, 0x1
    psq_l 3, 0x10(1), 1, 0
    stfs 30, 0x14(1)
    ps_add 2, 3, 2
    stfs 31, 0x18(1)
    psq_l 3, 0x14(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_add 2, 1, 3
    psq_st 1, 0x8(1), 0, 0
    lfs 3, 0x10(1)
    psq_st 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 2, 0x8(1), 0, 0
    psq_st 2, 0x0(30), 0, 0
    stfs 3, 0x28(1)
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8037371C
    .4byte 0x480000A8 # b .L_80373844
L_803737A0:
    li 0, 0x0
    stw 0, 0x24c(31)
    .4byte 0x4800009C # b .L_80373844
L_803737AC:
    .4byte 0xC002FEB0 # lfs f0, lbl_80542E50@sda21(r0)
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_803737DC
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002FED8 # lfs f0, lbl_80542E78@sda21(r0)
    psq_st 2, 0x230(31), 0, 0
    stfs 1, 0x238(31)
    lfs 1, 0x234(31)
    fadds 0, 1, 0
    stfs 0, 0x234(31)
L_803737DC:
    lfs 1, 0x244(31)
    .4byte 0xC002FEC8 # lfs f0, lbl_80542E68@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_803737FC
    .4byte 0xC002FED4 # lfs f0, lbl_80542E74@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x244(31)
    .4byte 0x4800004C # b .L_80373844
L_803737FC:
    .4byte 0xC002FEDC # lfs f0, lbl_80542E7C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x244(31)
    .4byte 0x4800003C # b .L_80373844
L_8037380C:
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80373824
    .4byte 0xC002FECC # lfs f0, lbl_80542E6C@sda21(r0)
    stfs 0, 0x244(31)
    .4byte 0x48000024 # b .L_80373844
L_80373824:
    lfs 1, 0x244(31)
    .4byte 0xC002FEE0 # lfs f0, lbl_80542E80@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x244(31)
    lfs 0, 0x244(31)
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_80373844
    stfs 2, 0x244(31)
L_80373844:
    lfs 1, 0x244(31)
    .4byte 0xC002FEC8 # lfs f0, lbl_80542E68@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80373860
    li 0, 0x0
    stw 0, 0x23c(31)
    .4byte 0x48000054 # b .L_803738B0
L_80373860:
    .4byte 0xC002FEC4 # lfs f0, lbl_80542E64@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80373878
    li 0, 0x1
    stw 0, 0x23c(31)
    .4byte 0x4800003C # b .L_803738B0
L_80373878:
    .4byte 0xC002FED0 # lfs f0, lbl_80542E70@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80373890
    li 0, 0x2
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_803738B0
L_80373890:
    .4byte 0xC002FECC # lfs f0, lbl_80542E6C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_803738A8
    li 0, 0x3
    stw 0, 0x23c(31)
    .4byte 0x4800000C # b .L_803738B0
L_803738A8:
    li 0, 0x4
    stw 0, 0x23c(31)
L_803738B0:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 0, 0x84(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_803738DC:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC082FEB8 # lfs f4, lbl_80542E58@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC062FEBC # lfs f3, lbl_80542E5C@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC042FEC0 # lfs f2, lbl_80542E60@sda21(r0)
    stfs 4, 0x60(3)
    .4byte 0xC002FEC4 # lfs f0, lbl_80542E64@sda21(r0)
    stfs 3, 0x64(3)
    .4byte 0xC022FEE4 # lfs f1, lbl_80542E84@sda21(r0)
    stfs 2, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0xC002FEB0 # lfs f0, lbl_80542E50@sda21(r0)
    stfs 4, 0x70(3)
    stfs 3, 0x74(3)
    stfs 2, 0x78(3)
    stfs 1, 0x7c(3)
    stfs 0, 0x80(3)
    stfs 0, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 0, 0x108(3)
    stw 0, 0x23c(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    stb 3, 0x254(31)
    stb 3, 0x240(31)
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80373974
    .4byte 0xC002FECC # lfs f0, lbl_80542E6C@sda21(r0)
    stfs 0, 0x244(31)
    .4byte 0x4800000C # b .L_8037397C
L_80373974:
    .4byte 0xC002FEB0 # lfs f0, lbl_80542E50@sda21(r0)
    stfs 0, 0x244(31)
L_8037397C:
    .4byte 0xC002FEB0 # lfs f0, lbl_80542E50@sda21(r0)
    li 3, 0x0
    li 0, -0x1
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0x248(31)
    stw 0, 0x24c(31)
    stw 3, 0x250(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803739B4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050CB00@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050CB00@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373A04
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
L_80373A04:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373A3C
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
L_80373A3C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373A74
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
L_80373A74:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373AAC
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
L_80373AAC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373AE4
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
L_80373AE4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373B1C
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
L_80373B1C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373B54
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
L_80373B54:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373B8C
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
L_80373B8C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80373BC4
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
L_80373BC4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80373BD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80373C1C
    lis 5, lbl_804AE5C8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE5C8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80373C1C
    mr 3, 30
    bl dtor_80084580
L_80373C1C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80373C38:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    mr 31, 3
    lwz 0, 0x24c(3)
    cmpwi 0, 0x0
    .4byte 0x41800228 # blt .L_80373E98
    cmpwi 0, 0x4
    .4byte 0x408000BC # bge .L_80373D34
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820214 # beq .L_80373E98
    li 0, 0x4
    li 3, 0x32
    stw 0, 0x24c(31)
    li 0, 0x0
    .4byte 0xC3C2FEE8 # lfs f30, lbl_80542E88@sda21(r0)
    addi 29, 1, 0x20
    stw 3, 0x248(31)
    li 28, 0x0
    .4byte 0xC3E2FEEC # lfs f31, lbl_80542E8C@sda21(r0)
    stw 0, 0x250(31)
L_80373CB0:
    mr 3, 28
    bl fn_8023E724
    lfs 0, 0x8(3)
    mr 4, 29
    psq_l 1, 0x0(3), 0, 0
    mr 3, 28
    stfs 30, 0x1c(1)
    li 5, 0x2e2
    li 6, 0xff
    li 7, -0x80
    stfs 0, 0x10(1)
    li 8, -0x80
    psq_l 2, 0x1c(1), 1, 0
    li 9, 0x1
    psq_l 3, 0x10(1), 1, 0
    stfs 30, 0x14(1)
    ps_add 2, 3, 2
    stfs 31, 0x18(1)
    psq_l 3, 0x14(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_add 2, 1, 3
    psq_st 1, 0x8(1), 0, 0
    lfs 3, 0x10(1)
    psq_st 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    psq_st 2, 0x8(1), 0, 0
    psq_st 2, 0x0(29), 0, 0
    stfs 3, 0x28(1)
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80373CB0
    .4byte 0x48000168 # b .L_80373E98
L_80373D34:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x40820060 # bne .L_80373D9C
    lwz 0, 0x248(31)
    cmpwi 0, 0x1e
    .4byte 0x40810054 # ble .L_80373D9C
    li 28, 0x0
    addi 30, 1, 0x38
L_80373D54:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 30
    lfs 0, 0x8(3)
    mr 3, 28
    li 5, 0x2e2
    li 6, 0xff
    psq_st 1, 0x0(30), 0, 0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x40(1)
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC0 # blt .L_80373D54
    .4byte 0x48000100 # b .L_80373E98
L_80373D9C:
    cmpwi 3, 0xd
    .4byte 0x408000B8 # bge .L_80373E58
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x408200EC # bne .L_80373E98
    lwz 4, 0x250(31)
    lis 3, lbl_80475070@ha
    addi 3, 3, lbl_80475070@l
    addi 29, 1, 0x2c
    addi 0, 4, 0x1
    li 28, 0x0
    stw 0, 0x250(31)
    lis 30, 0x1
    lwz 0, 0x250(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x248(31)
L_80373DE0:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 28
    li 6, 0xff
    li 7, -0x80
    psq_st 1, 0x0(29), 0, 0
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x34(1)
    lwz 5, 0x250(31)
    addi 5, 5, 0xdb
    bl fn_80230498
    lwz 0, 0x250(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80373E34
    mr 3, 28
    addi 4, 30, 0x1
    bl fn_80230FD0
L_80373E34:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA4 # blt .L_80373DE0
    lwz 0, 0x250(31)
    cmpwi 0, 0xd
    .4byte 0x40820050 # bne .L_80373E98
    li 0, 0x19
    stw 0, 0x248(31)
    .4byte 0x48000044 # b .L_80373E98
L_80373E58:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80373E98
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80373E98
    li 0, -0x1
    mr 3, 31
    stw 0, 0x24c(31)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_80373E98:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0x84(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80373EC8:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC062FEF0 # lfs f3, lbl_80542E90@sda21(r0)
    stw 0, 0x54(1)
    lis 0, 0x4330
    .4byte 0xC842FF00 # lfd f2, lbl_80542EA0@sda21(r0)
    stw 31, 0x4c(1)
    .4byte 0xC002FEF4 # lfs f0, lbl_80542E94@sda21(r0)
    stw 30, 0x48(1)
    mr 30, 3
    lfs 6, 0x244(3)
    psq_l 5, 0xc(30), 0, 0
    fdivs 1, 6, 3
    lfs 4, 0x14(3)
    stw 0, 0x40(1)
    psq_st 5, 0x2c(1), 0, 0
    stfs 4, 0x34(1)
    fctiwz 1, 1
    stfd 1, 0x38(1)
    lwz 0, 0x3c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x44(1)
    lfd 1, 0x40(1)
    fsubs 1, 1, 2
    fnmsubs 1, 3, 1, 6
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80373F3C
    li 31, 0x0
    .4byte 0x48000030 # b .L_80373F68
L_80373F3C:
    .4byte 0xC002FEF8 # lfs f0, lbl_80542E98@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80373F50
    li 31, 0x1
    .4byte 0x4800001C # b .L_80373F68
L_80373F50:
    .4byte 0xC002FEFC # lfs f0, lbl_80542E9C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80373F64
    li 31, 0x2
    .4byte 0x48000008 # b .L_80373F68
L_80373F64:
    li 31, 0x3
L_80373F68:
    lfs 0, 0x10(30)
    lis 3, lbl_804750AC@ha
    .4byte 0xC022FEF4 # lfs f1, lbl_80542E94@sda21(r0)
    lis 5, lbl_80475060@ha
    fsubs 3, 0, 6
    addi 4, 3, lbl_804750AC@l
    slwi 0, 31, 2
    addi 3, 5, lbl_80475060@l
    lfsx 0, 3, 0
    fmr 2, 1
    stfs 3, 0x10(30)
    mr 3, 30
    li 6, 0x0
    li 7, -0x1
    lfs 3, 0x10(30)
    fadds 0, 3, 0
    stfs 0, 0x10(30)
    lwz 5, 0x23c(30)
    addi 5, 5, 0x469
    bl fn_801F06F0
    cmpwi 31, 0x0
    .4byte 0x40820018 # bne .L_80373FD4
    psq_l 1, 0x2c(1), 0, 0
    lfs 0, 0x34(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x4800008C # b .L_8037405C
L_80373FD4:
    .4byte 0xC002FEE8 # lfs f0, lbl_80542E88@sda21(r0)
    lis 3, lbl_804750AC@ha
    lfs 1, 0x34(1)
    addi 4, 3, lbl_804750AC@l
    stfs 0, 0x1c(1)
    mr 3, 30
    lfs 2, 0x244(30)
    addi 5, 31, 0x469
    stfs 1, 0x10(1)
    li 6, 0x0
    psq_l 1, 0x1c(1), 1, 0
    li 7, -0x1
    psq_l 4, 0x10(1), 1, 0
    psq_l 3, 0x2c(1), 0, 0
    ps_sub 4, 4, 1
    stfs 0, 0x14(1)
    .4byte 0xC022FEF4 # lfs f1, lbl_80542E94@sda21(r0)
    stfs 2, 0x18(1)
    fmr 2, 1
    psq_l 0, 0x14(1), 0, 0
    psq_st 4, 0x10(1), 1, 0
    ps_sub 4, 3, 0
    psq_st 3, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 4, 0xc(30), 0, 0
    psq_st 4, 0x8(1), 0, 0
    psq_st 4, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    stfs 0, 0x14(30)
    bl fn_801F06F0
    psq_l 1, 0x2c(1), 0, 0
    lfs 0, 0x34(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
L_8037405C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80374074:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    mr 31, 3
    lis 0, 0x4330
    lfs 31, 0x244(3)
    .4byte 0xC062FEF0 # lfs f3, lbl_80542E90@sda21(r0)
    .4byte 0xC002FEE8 # lfs f0, lbl_80542E88@sda21(r0)
    fdivs 2, 31, 3
    stw 0, 0x60(1)
    .4byte 0xC822FF00 # lfd f1, lbl_80542EA0@sda21(r0)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    fctiwz 0, 2
    lwz 3, 0x248(3)
    cmpwi 3, 0x0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    fnmsubs 30, 3, 0, 31
    .4byte 0x4081000C # ble .L_80374104
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80374104:
    mr 3, 31
    bl fn_80373C38
    lfs 1, 0x60(31)
    addi 3, 1, 0x44
    li 29, 0x0
    stfs 1, 0x44(1)
    lfs 4, 0x64(31)
    stfs 4, 0x48(1)
    lfs 2, 0x68(31)
    stfs 2, 0x4c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x50(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x44(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x4c(1)
    fadds 0, 3, 2
    stfs 1, 0x48(1)
    stfs 0, 0x50(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239470
    mr. 30, 3
    .4byte 0x41800010 # blt .L_8037417C
    lwz 3, 0x198(31)
    bl fn_80238A68
    mr 29, 3
L_8037417C:
    cmpwi 29, 0x4
    .4byte 0x4180021C # blt .L_8037439C
    mr 3, 30
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(31)
    .4byte 0xC002FF08 # lfs f0, lbl_80542EA8@sda21(r0)
    fsubs 2, 1, 2
    fabs 1, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_803741C8
    .4byte 0xC002FEE8 # lfs f0, lbl_80542E88@sda21(r0)
    mr 3, 30
    stfs 2, 0x2c(1)
    addi 4, 1, 0x2c
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    bl fn_8023DFF4
L_803741C8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x44
    lwz 5, 0x198(31)
    bl fn_80239914
    lfs 2, 0x244(31)
    .4byte 0xC002FF0C # lfs f0, lbl_80542EAC@sda21(r0)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x4082012C # bne .L_80374314
    .4byte 0xC022FF10 # lfs f1, lbl_80542EB0@sda21(r0)
    .4byte 0xC002FF14 # lfs f0, lbl_80542EB4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x244(31)
    lfs 1, 0x244(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408201F4 # bne .L_803743FC
    stfs 0, 0x244(31)
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x408201E4 # bne .L_803743FC
    li 0, 0x1
    lis 4, 0x3
    stb 0, 0x240(31)
    mr 3, 31
    addi 4, 4, 0x4b
    li 5, 0x0
    bl fn_801F0E34
    lfs 1, 0x28(31)
    li 0, 0x1
    lfs 0, 0x244(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    stb 0, 0x254(31)
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_80374308
    li 0, 0x32
    li 3, 0x4
    stw 0, 0x248(31)
    li 0, 0x0
    .4byte 0xC3A2FEE8 # lfs f29, lbl_80542E88@sda21(r0)
    addi 30, 1, 0x20
    stw 3, 0x24c(31)
    li 29, 0x0
    .4byte 0xC3C2FEEC # lfs f30, lbl_80542E8C@sda21(r0)
    stw 0, 0x250(31)
L_80374284:
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x8(3)
    mr 4, 30
    psq_l 1, 0x0(3), 0, 0
    mr 3, 29
    stfs 29, 0x1c(1)
    li 5, 0x2e2
    li 6, 0xff
    li 7, -0x80
    stfs 0, 0x10(1)
    li 8, -0x80
    psq_l 2, 0x1c(1), 1, 0
    li 9, 0x1
    psq_l 3, 0x10(1), 1, 0
    stfs 29, 0x14(1)
    ps_add 2, 3, 2
    stfs 30, 0x18(1)
    psq_l 3, 0x14(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    ps_add 2, 1, 3
    psq_st 1, 0x8(1), 0, 0
    lfs 3, 0x10(1)
    psq_st 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    psq_st 2, 0x8(1), 0, 0
    psq_st 2, 0x0(30), 0, 0
    stfs 3, 0x28(1)
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_80374284
    .4byte 0x480000F8 # b .L_803743FC
L_80374308:
    li 0, 0x0
    stw 0, 0x24c(31)
    .4byte 0x480000EC # b .L_803743FC
L_80374314:
    .4byte 0xC002FEE8 # lfs f0, lbl_80542E88@sda21(r0)
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_80374344
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002FF18 # lfs f0, lbl_80542EB8@sda21(r0)
    psq_st 2, 0x230(31), 0, 0
    stfs 1, 0x238(31)
    lfs 1, 0x234(31)
    fadds 0, 1, 0
    stfs 0, 0x234(31)
L_80374344:
    .4byte 0xC002FF08 # lfs f0, lbl_80542EA8@sda21(r0)
    fcmpo cr0, 30, 0
    .4byte 0x4080003C # bge .L_80374388
    lfs 2, 0x244(31)
    .4byte 0xC022FF1C # lfs f1, lbl_80542EBC@sda21(r0)
    .4byte 0xC002FF20 # lfs f0, lbl_80542EC0@sda21(r0)
    fadds 1, 2, 1
    fcmpo cr0, 30, 0
    stfs 1, 0x244(31)
    cror eq, gt, eq
    .4byte 0x40820090 # bne .L_803743FC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x7a
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000078 # b .L_803743FC
L_80374388:
    lfs 1, 0x244(31)
    .4byte 0xC002FF10 # lfs f0, lbl_80542EB0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x244(31)
    .4byte 0x48000064 # b .L_803743FC
L_8037439C:
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803743C0
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_803743C0
    .4byte 0xC002FF14 # lfs f0, lbl_80542EB4@sda21(r0)
    stfs 0, 0x244(31)
    .4byte 0x48000040 # b .L_803743FC
L_803743C0:
    lfs 2, 0x244(31)
    .4byte 0xC022FF24 # lfs f1, lbl_80542EC4@sda21(r0)
    .4byte 0xC002FEE8 # lfs f0, lbl_80542E88@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x244(31)
    lfs 1, 0x244(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_803743E8
    stfs 0, 0x244(31)
    .4byte 0x48000018 # b .L_803743FC
L_803743E8:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x7b
    li 5, 0x0
    bl fn_801F0E34
L_803743FC:
    lfs 0, 0x244(31)
    .4byte 0xC022FEE8 # lfs f1, lbl_80542E88@sda21(r0)
    fsubs 2, 0, 31
    .4byte 0xC002FEF0 # lfs f0, lbl_80542E90@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 2, 0x40(31)
    stfs 1, 0x44(31)
    lfs 2, 0x28(31)
    lfs 1, 0x244(31)
    fadds 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x244(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80374440
    li 0, 0x0
    stw 0, 0x23c(31)
    .4byte 0x48000054 # b .L_80374490
L_80374440:
    .4byte 0xC002FF28 # lfs f0, lbl_80542EC8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80374458
    li 0, 0x4
    stw 0, 0x23c(31)
    .4byte 0x4800003C # b .L_80374490
L_80374458:
    .4byte 0xC002FF2C # lfs f0, lbl_80542ECC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80374470
    li 0, 0x5
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_80374490
L_80374470:
    .4byte 0xC002FF14 # lfs f0, lbl_80542EB4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80374488
    li 0, 0x6
    stw 0, 0x23c(31)
    .4byte 0x4800000C # b .L_80374490
L_80374488:
    li 0, 0x7
    stw 0, 0x23c(31)
L_80374490:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 0, 0xb4(1)
    lwz 29, 0x74(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_803744C4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042FF30 # lfs f2, lbl_80542ED0@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC022FF34 # lfs f1, lbl_80542ED4@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC002FEE8 # lfs f0, lbl_80542E88@sda21(r0)
    stfs 2, 0x60(3)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 0, 0x80(3)
    stfs 0, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 0, 0x108(3)
    stw 0, 0x23c(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    stb 3, 0x254(31)
    li 4, 0x0
    .4byte 0xC002FEE8 # lfs f0, lbl_80542E88@sda21(r0)
    li 0, -0x1
    stb 3, 0x240(31)
    stfs 0, 0x244(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 4, 0x248(31)
    stw 0, 0x24c(31)
    stw 4, 0x250(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80374564:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050CC00@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050CC00@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803745B4
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
L_803745B4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803745EC
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
L_803745EC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80374624
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
L_80374624:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037465C
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
L_8037465C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80374694
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
L_80374694:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803746CC
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
L_803746CC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80374704
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
L_80374704:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037473C
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
L_8037473C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80374774
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
L_80374774:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80374788:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_803747CC
    lis 5, lbl_804AE620@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE620@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803747CC
    mr 3, 30
    bl dtor_80084580
L_803747CC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803747E8:
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
    .4byte 0x48000064 # b .L_80374878
L_80374818:
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
L_80374878:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80374818
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    li 30, 0x0
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
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_80374900
    addi 30, 3, 0x3
L_80374900:
    .4byte 0xC022FF38 # lfs f1, lbl_80542ED8@sda21(r0)
    li 0, -0x1
    lis 3, lbl_80475120@ha
    stb 0, 0x25(1)
    fmr 2, 1
    addi 4, 3, lbl_80475120@l
    mr 3, 31
    addi 5, 30, 0x45
    addi 6, 1, 0x8
    li 7, 0x0
    bl fn_801F06F0
    lwz 3, 0x198(31)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    addi 6, 30, 0x45
    li 7, 0x0
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80374964:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    stw 0, 0x44(1)
    clrlwi 0, 4, 24
    mulli 0, 0, 0xc
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    li 30, 0x0
    stw 29, 0x34(1)
    mr 29, 4
    lis 4, lbl_804750F0@ha
    stw 28, 0x30(1)
    addi 5, 4, lbl_804750F0@l
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
    .4byte 0x418200A0 # beq .L_80374AA8
    clrlwi 0, 29, 24
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_80374A70
    .4byte 0x40800014 # bge .L_80374A2C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80374A38
    .4byte 0x40800030 # bge .L_80374A54
    .4byte 0x48000084 # b .L_80374AAC
L_80374A2C:
    cmpwi 0, 0x4
    .4byte 0x4080007C # bge .L_80374AAC
    .4byte 0x48000058 # b .L_80374A8C
L_80374A38:
    lfs 1, 0x18(1)
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820064 # bne .L_80374AAC
    li 30, 0x1
    .4byte 0x4800005C # b .L_80374AAC
L_80374A54:
    lfs 1, 0x18(1)
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820048 # bne .L_80374AAC
    li 30, 0x1
    .4byte 0x48000040 # b .L_80374AAC
L_80374A70:
    lfs 1, 0x1c(1)
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_80374AAC
    li 30, 0x1
    .4byte 0x48000024 # b .L_80374AAC
L_80374A8C:
    lfs 1, 0x1c(1)
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_80374AAC
    li 30, 0x1
    .4byte 0x48000008 # b .L_80374AAC
L_80374AA8:
    li 30, 0x1
L_80374AAC:
    clrlwi. 0, 30, 24
    .4byte 0x408200B8 # bne .L_80374B68
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
L_80374B04:
    lwz 5, 0x4(28)
    mr 3, 29
    .4byte 0xC022FF3C # lfs f1, lbl_80542EDC@sda21(r0)
    addi 4, 1, 0x8
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80374B5C
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x40820014 # bne .L_80374B44
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80374B5C
L_80374B44:
    lwz 31, 0x198(28)
    mr 3, 29
    bl fn_80238CB4
    cmpw 3, 31
    .4byte 0x41820008 # beq .L_80374B5C
    li 30, 0x0
L_80374B5C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFA0 # blt .L_80374B04
L_80374B68:
    psq_l 0, 0x24(1), 0, 0
    mr 3, 30
    lfs 1, 0x2c(1)
    psq_st 0, 0xc(28), 0, 0
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
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

fn_80374BAC:
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
    mr 30, 3
    lfs 3, 0x60(3)
    stfs 3, 0x44(1)
    lfs 2, 0x64(3)
    stfs 2, 0x48(1)
    lfs 1, 0x68(3)
    stfs 1, 0x4c(1)
    lfs 4, 0x6c(3)
    stfs 4, 0x50(1)
    lfs 0, 0xc(3)
    fadds 3, 3, 0
    fadds 1, 1, 0
    stfs 3, 0x44(1)
    lfs 0, 0x10(3)
    fadds 2, 2, 0
    stfs 1, 0x4c(1)
    fadds 4, 4, 0
    stfs 2, 0x48(1)
    stfs 4, 0x50(1)
    lwz 0, 0x244(3)
    cmpwi 0, 0x0
    .4byte 0x4182002C # beq .L_80374C74
    .4byte 0xC002FF40 # lfs f0, lbl_80542EE0@sda21(r0)
    fsubs 3, 3, 0
    fsubs 2, 2, 0
    fadds 1, 1, 0
    fadds 0, 4, 0
    stfs 3, 0x44(1)
    stfs 2, 0x48(1)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
    .4byte 0x48000028 # b .L_80374C98
L_80374C74:
    .4byte 0xC002FF38 # lfs f0, lbl_80542ED8@sda21(r0)
    fsubs 3, 3, 0
    fsubs 2, 2, 0
    fadds 1, 1, 0
    fadds 0, 4, 0
    stfs 3, 0x44(1)
    stfs 2, 0x48(1)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
L_80374C98:
    lwz 4, 0x4(30)
    addi 3, 1, 0x44
    lwz 5, 0x198(30)
    bl fn_80239914
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_80374CEC
    lfs 0, 0x44(1)
    .4byte 0xC082FF44 # lfs f4, lbl_80542EE4@sda21(r0)
    lfs 2, 0x48(1)
    lfs 1, 0x4c(1)
    fsubs 3, 0, 4
    lfs 0, 0x50(1)
    fsubs 2, 2, 4
    fadds 1, 1, 4
    fadds 0, 0, 4
    stfs 3, 0x44(1)
    stfs 2, 0x48(1)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
    .4byte 0x48000038 # b .L_80374D20
L_80374CEC:
    lfs 0, 0x44(1)
    .4byte 0xC082FF48 # lfs f4, lbl_80542EE8@sda21(r0)
    lfs 2, 0x48(1)
    lfs 1, 0x4c(1)
    fsubs 3, 0, 4
    lfs 0, 0x50(1)
    fsubs 2, 2, 4
    fadds 1, 1, 4
    fadds 0, 0, 4
    stfs 3, 0x44(1)
    stfs 2, 0x48(1)
    stfs 1, 0x4c(1)
    stfs 0, 0x50(1)
L_80374D20:
    lwz 29, 0x198(30)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 29
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x41820080 # beq .L_80374DCC
    lfs 0, 0xc(30)
    lis 0, 0x4330
    stw 0, 0x60(1)
    fctiwz 0, 0
    .4byte 0xC822FF68 # lfd f1, lbl_80542F08@sda21(r0)
    stw 0, 0x70(1)
    stfd 0, 0x58(1)
    lwz 3, 0x5c(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(30)
    lfs 0, 0x10(30)
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 3, 0x6c(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x10(30)
    .4byte 0x480006D4 # b .L_8037549C
L_80374DCC:
    addi 3, 30, 0xc
    addi 4, 30, 0x230
    bl PSVECDistance
    .4byte 0xC002FF4C # lfs f0, lbl_80542EEC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820324 # bne .L_80375108
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x408201CC # bne .L_80374FC8
    psq_l 3, 0x3c(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 2, 0x44(30)
    ps_mul 5, 3, 3
    .4byte 0xC022FF50 # lfs f1, lbl_80542EF0@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    psq_st 3, 0x38(1), 0, 0
    ps_madd 4, 2, 2, 5
    fmuls 0, 1, 0
    stfs 2, 0x40(1)
    ps_sum0 4, 4, 5, 5
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80374E8C
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80374E50
    fmr 31, 4
    .4byte 0x48000028 # b .L_80374E74
L_80374E50:
    frsqrte 3, 4
    .4byte 0xC042FF54 # lfs f2, lbl_80542EF4@sda21(r0)
    .4byte 0xC002FF58 # lfs f0, lbl_80542EF8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80374E74:
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_80374E8C:
    addi 3, 1, 0x38
    .4byte 0xC3C2FF5C # lfs f30, lbl_80542EFC@sda21(r0)
    psq_l 1, 0x0(3), 0, 0
    psq_l 0, 0x8(3), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    psq_l 2, 0xc(30), 0, 0
    ps_add 1, 1, 2
    psq_st 1, 0x0(3), 0, 0
    psq_l 1, 0x14(30), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x4(30)
    bl fn_8022461C
    lwz 4, 0x4(30)
    mr 29, 3
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x408200E4 # bne .L_80374FC8
    clrlwi. 0, 29, 16
    .4byte 0x4182000C # beq .L_80374EF8
    cmplwi 0, 0x50
    .4byte 0x408200D4 # bne .L_80374FC8
L_80374EF8:
    psq_l 1, 0x3c(30), 0, 0
    mr 3, 30
    lfs 0, 0x44(30)
    lwz 0, 0x90(30)
    psq_st 1, 0x2c(1), 0, 0
    clrlwi 4, 0, 30
    stfs 0, 0x34(1)
    bl fn_80374964
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200A8 # bne .L_80374FC8
    psq_l 1, 0x2c(1), 0, 0
    lis 0, 0x4330
    lfs 0, 0x34(1)
    psq_st 1, 0x3c(30), 0, 0
    .4byte 0xC822FF68 # lfd f1, lbl_80542F08@sda21(r0)
    stfs 0, 0x44(30)
    lfs 0, 0xc(30)
    stw 0, 0x68(1)
    stfs 0, 0x230(30)
    lfs 0, 0x10(30)
    stw 0, 0x58(1)
    stfs 0, 0x234(30)
    lfs 0, 0x14(30)
    stfs 0, 0x238(30)
    lfs 0, 0x230(30)
    fctiwz 0, 0
    stfd 0, 0x70(1)
    lwz 3, 0x74(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 0, 0x68(1)
    fsubs 0, 0, 1
    stfs 0, 0x230(30)
    lfs 0, 0x234(30)
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    stfs 0, 0x234(30)
    .4byte 0x480004D8 # b .L_8037549C
L_80374FC8:
    .4byte 0xC022FF60 # lfs f1, lbl_80542F00@sda21(r0)
    lfs 2, 0x24(30)
    lfs 3, 0xc(30)
    fadds 0, 1, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_80374FFC
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80374FFC
    stfs 2, 0xc(30)
    .4byte 0x48000040 # b .L_80375038
L_80374FFC:
    fctiwz 0, 3
    lis 0, 0x4330
    stw 0, 0x68(1)
    .4byte 0xC822FF68 # lfd f1, lbl_80542F08@sda21(r0)
    stfd 0, 0x70(1)
    lwz 3, 0x74(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 0, 0x68(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(30)
L_80375038:
    .4byte 0xC022FF60 # lfs f1, lbl_80542F00@sda21(r0)
    lfs 2, 0x28(30)
    lfs 3, 0x10(30)
    fadds 0, 1, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8037506C
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8037506C
    stfs 2, 0x10(30)
    .4byte 0x48000040 # b .L_803750A8
L_8037506C:
    fctiwz 0, 3
    lis 0, 0x4330
    stw 0, 0x68(1)
    .4byte 0xC822FF68 # lfd f1, lbl_80542F08@sda21(r0)
    stfd 0, 0x70(1)
    lwz 3, 0x74(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 0, 0x68(1)
    fsubs 0, 0, 1
    stfs 0, 0x10(30)
L_803750A8:
    psq_l 2, 0xc(30), 0, 0
    mr 3, 30
    lfs 1, 0x14(30)
    li 4, 0xff
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    li 5, 0x1
    psq_st 2, 0x230(30), 0, 0
    stfs 1, 0x238(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x18(30), 0, 0
    stfs 0, 0x20(30)
    lwz 12, 0x0(30)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x240(30)
    stw 0, 0x244(30)
    .4byte 0x48000398 # b .L_8037549C
L_80375108:
    psq_l 3, 0xc(30), 0, 0
    lis 3, lbl_80539D44@ha
    psq_l 0, 0x3c(30), 0, 0
    lfs 2, 0x14(30)
    ps_add 0, 3, 0
    .4byte 0xC022FF50 # lfs f1, lbl_80542EF0@sda21(r0)
    psq_st 3, 0x20(1), 0, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 4, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    stfs 2, 0x28(1)
    ps_add 0, 4, 0
    psq_st 0, 0x14(30), 1, 0
    psq_l 4, 0x3c(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 4, 4, 4
    lfs 27, 0x44(30)
    fmuls 0, 1, 0
    ps_madd 1, 27, 27, 4
    ps_sum0 1, 1, 4, 4
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x4082001C # bne .L_80375184
    lwz 0, 0x9c(30)
    cmpwi 0, 0x0
    .4byte 0x41800328 # blt .L_8037549C
    psq_st 3, 0xc(30), 0, 0
    stfs 2, 0x14(30)
    .4byte 0x4800031C # b .L_8037549C
L_80375184:
    lwz 3, 0x198(30)
    bl fn_80239108
    cmpwi 3, 0x1
    .4byte 0x4180030C # blt .L_8037549C
    addi 3, 30, 0xc
    addi 4, 30, 0x24
    bl PSVECDistance
    .4byte 0xC002FF4C # lfs f0, lbl_80542EEC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408002F4 # bge .L_8037549C
    lwz 3, 0x198(30)
    bl fn_80238BC4
    mr 29, 3
    lis 3, lbl_804A79E0@ha
    mulli 31, 29, 0xc
    lwz 0, 0x240(30)
    addi 4, 3, lbl_804A79E0@l
    psq_l 4, 0xc(30), 0, 0
    lfs 3, 0x14(30)
    cmpwi 0, 0x0
    add 3, 4, 31
    lfsx 2, 4, 31
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    psq_st 4, 0x8(1), 0, 0
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    .4byte 0x41820024 # beq .L_8037521C
    lwz 4, 0x4(30)
    addi 3, 1, 0x44
    lwz 5, 0x198(30)
    bl fn_80239558
    lwz 4, 0x240(30)
    subi 0, 4, 0x1
    cmpw 0, 3
    .4byte 0x40820284 # bne .L_8037549C
L_8037521C:
    lwz 0, 0x90(30)
    clrlwi 0, 0, 30
    cmpw 29, 0
    .4byte 0x40820274 # bne .L_8037549C
    mr 3, 30
    clrlwi 4, 29, 24
    bl fn_80374964
    clrlwi. 0, 3, 24
    .4byte 0x41820260 # beq .L_8037549C
    lbz 0, 0x248(30)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80375260
    bl GetRoomConfigRecord
    addi 0, 29, 0x1
    lwz 4, 0x16c(30)
    clrlwi 5, 0, 24
    bl fn_802D7584
L_80375260:
    psq_l 2, 0xc(30), 0, 0
    mr 3, 30
    psq_l 1, 0x14(1), 0, 0
    li 4, 0x0
    psq_l 0, 0x1c(1), 1, 0
    li 5, 0x0
    ps_add 1, 2, 1
    psq_st 1, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_803752AC
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x480001F4 # b .L_8037549C
L_803752AC:
    psq_l 1, 0x8(1), 0, 0
    cmpwi 29, 0x0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x418001DC # blt .L_8037549C
    cmpwi 29, 0x4
    .4byte 0x408001D4 # bge .L_8037549C
    lwz 3, 0x198(30)
    bl fn_80238E08
    lis 4, lbl_804750C0@ha
    lis 3, lbl_80539D44@ha
    addi 4, 4, lbl_804750C0@l
    .4byte 0xC022FF50 # lfs f1, lbl_80542EF0@sda21(r0)
    lfsx 0, 4, 31
    add 4, 4, 31
    lfs 2, 0x4(4)
    stfs 0, 0x3c(30)
    lfs 0, 0x8(4)
    stfs 2, 0x40(30)
    stfs 0, 0x44(30)
    psq_l 3, 0x3c(30), 0, 0
    lfs 2, 0x44(30)
    ps_mul 5, 3, 3
    lfs 0, lbl_80539D44@l(3)
    psq_st 3, 0x38(1), 0, 0
    fmuls 0, 1, 0
    ps_madd 4, 2, 2, 5
    stfs 2, 0x40(1)
    ps_sum0 4, 4, 5, 5
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80375384
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80375348
    fmr 30, 4
    .4byte 0x48000028 # b .L_8037536C
L_80375348:
    frsqrte 3, 4
    .4byte 0xC042FF54 # lfs f2, lbl_80542EF4@sda21(r0)
    .4byte 0xC002FF58 # lfs f0, lbl_80542EF8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_8037536C:
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_80375384:
    addi 3, 1, 0x38
    .4byte 0xC3E2FF5C # lfs f31, lbl_80542EFC@sda21(r0)
    psq_l 1, 0x0(3), 0, 0
    psq_l 0, 0x8(3), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    psq_l 2, 0xc(30), 0, 0
    ps_add 1, 1, 2
    psq_st 1, 0x0(3), 0, 0
    psq_l 1, 0x14(30), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x4(30)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x408200A4 # bne .L_80375470
    psq_l 2, 0x3c(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 26, 0x44(30)
    ps_mul 2, 2, 2
    .4byte 0xC022FF50 # lfs f1, lbl_80542EF0@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 26, 26, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80375454
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80375418
    fmr 29, 4
    .4byte 0x48000028 # b .L_8037543C
L_80375418:
    frsqrte 3, 4
    .4byte 0xC042FF54 # lfs f2, lbl_80542EF4@sda21(r0)
    .4byte 0xC002FF58 # lfs f0, lbl_80542EF8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_8037543C:
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
L_80375454:
    .4byte 0xC382FF38 # lfs f28, lbl_80542ED8@sda21(r0)
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 28
    ps_muls0 0, 0, 28
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
L_80375470:
    lfs 0, 0xc(30)
    lis 4, 0x3
    mr 3, 30
    li 5, 0x0
    stfs 0, 0x230(30)
    addi 4, 4, 0x4
    lfs 0, 0x10(30)
    stfs 0, 0x234(30)
    lfs 0, 0x14(30)
    stfs 0, 0x238(30)
    bl fn_801F0E34
L_8037549C:
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
    lwz 0, 0xf4(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_803754E8:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC002FF3C # lfs f0, lbl_80542EDC@sda21(r0)
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 30, 3
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 3, 27
    cmpwi 0, 0x5
    .4byte 0x408200DC # bne .L_803755F4
    li 31, 0x0
    li 27, -0x1
    lis 28, 0x4243
    li 29, 0x1
L_8037552C:
    bl SpatialRegistry_GetBase
    mr 5, 27
    addi 4, 28, 0x4b32
    bl fn_801F78F4
    mr. 27, 3
    .4byte 0x4180003C # blt .L_8037557C
    lwz 0, 0x198(30)
    cmpw 27, 0
    .4byte 0x4182FFE0 # beq .L_8037552C
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFCC # beq .L_8037552C
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4182FFC0 # beq .L_8037552C
    slw 0, 29, 0
    or 31, 31, 0
    .4byte 0x4BFFFFB4 # b .L_8037552C
L_8037557C:
    lis 3, 0x19
    .4byte 0xC042FF70 # lfs f2, lbl_80542F10@sda21(r0)
    .4byte 0xC022FF38 # lfs f1, lbl_80542ED8@sda21(r0)
    rlwinm 6, 31, 0, 27, 30
    addi 5, 3, 0x660d
    li 3, 0x1
L_80375594:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    cmpwi 6, 0x1e
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
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x240(30)
    .4byte 0x4182001C # beq .L_803755F8
    lwz 0, 0x240(30)
    slw 0, 3, 0
    and. 0, 0, 31
    .4byte 0x4182000C # beq .L_803755F8
    .4byte 0x4BFFFFA4 # b .L_80375594
L_803755F4:
    stw 0, 0x240(30)
L_803755F8:
    lfs 0, 0xc(30)
    lis 0, 0x4330
    stw 0, 0x18(1)
    addi 3, 30, 0xc
    fctiwz 0, 0
    .4byte 0xC862FF68 # lfd f3, lbl_80542F08@sda21(r0)
    stw 0, 0x28(1)
    li 5, 0x1
    .4byte 0xC022FF74 # lfs f1, lbl_80542F14@sda21(r0)
    li 4, 0x2
    stfd 0, 0x10(1)
    li 0, 0x0
    .4byte 0xC002FF78 # lfs f0, lbl_80542F18@sda21(r0)
    lwz 6, 0x14(1)
    srawi 6, 6, 4
    addze 6, 6
    slwi 6, 6, 4
    addi 6, 6, 0x8
    xoris 6, 6, 0x8000
    stw 6, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 3
    stfs 2, 0x24(30)
    stfs 2, 0xc(30)
    lfs 2, 0x10(30)
    fctiwz 2, 2
    stfd 2, 0x20(1)
    lwz 6, 0x24(1)
    srawi 6, 6, 4
    addze 6, 6
    slwi 6, 6, 4
    addi 6, 6, 0x8
    xoris 6, 6, 0x8000
    stw 6, 0x2c(1)
    lfd 2, 0x28(1)
    fsubs 2, 2, 3
    stfs 2, 0x28(30)
    stfs 2, 0x10(30)
    psq_l 3, 0x0(3), 0, 0
    lfs 2, 0x14(30)
    psq_st 3, 0x230(30), 0, 0
    stfs 2, 0x238(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 5, 0x1a4(30)
    stw 4, 0xb8(30)
    stw 0, 0x244(30)
    lwz 0, 0x90(30)
    extrwi 0, 0, 1, 26
    stb 0, 0x248(30)
    lbz 0, 0x248(30)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_80375724
    lwz 5, 0x16c(30)
    li 4, 0x0
    bl fn_8028D4DC
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80375724
    li 0, 0x1
    mr 3, 30
    stw 0, 0x244(30)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(30)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x240(30)
L_80375724:
    lwz 0, 0x90(30)
    extrwi. 0, 0, 4, 20
    .4byte 0x4182000C # beq .L_80375738
    li 0, 0x1
    stw 0, 0x244(30)
L_80375738:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8037574C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050CD00@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050CD00@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037579C
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
L_8037579C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803757D4
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
L_803757D4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037580C
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
L_8037580C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80375844
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
L_80375844:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037587C
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
L_8037587C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803758B4
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
L_803758B4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803758EC
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
L_803758EC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80375924
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
L_80375924:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037595C
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
L_8037595C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80375970:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803759A8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(31)
L_803759A8:
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803759C4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 1, 0x10
    stw 30, 0x28(1)
    lfs 5, 0x10(31)
    lfs 1, 0xc(31)
    stfs 1, 0x8(1)
    stfs 5, 0xc(1)
    lfs 0, 0x60(31)
    stfs 0, 0x10(1)
    fadds 3, 0, 1
    lfs 0, 0x64(31)
    stfs 0, 0x14(1)
    fadds 2, 0, 5
    lfs 0, 0x68(31)
    stfs 0, 0x18(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(31)
    fadds 0, 4, 5
    stfs 4, 0x1c(1)
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 30, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 30
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    lwz 30, 0x250(31)
    cmpwi 30, -0x1
    .4byte 0x41820030 # beq .L_80375A98
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80375A90
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x4152
    cmplwi 0, 0x5257
    .4byte 0x41820318 # beq .L_80375DA4
L_80375A90:
    li 0, -0x1
    stw 0, 0x250(31)
L_80375A98:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820228 # beq .L_80375CC8
    .4byte 0x40800010 # bge .L_80375AB4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80375AC0
    .4byte 0x48000288 # b .L_80375D38
L_80375AB4:
    cmpwi 0, 0x3
    .4byte 0x40800280 # bge .L_80375D38
    .4byte 0x48000274 # b .L_80375D30
L_80375AC0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_80375AD8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    .4byte 0x48000264 # b .L_80375D38
L_80375AD8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    li 6, 0x1
    bl fn_8023BA68
    lis 4, 0x4152
    .4byte 0xC022FF84 # lfs f1, lbl_80542F24@sda21(r0)
    mr 3, 31
    li 5, -0x1
    addi 4, 4, 0x5257
    bl fn_801F8108
    mr. 30, 3
    .4byte 0x41800230 # blt .L_80375D38
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182021C # beq .L_80375D38
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x4152
    cmplwi 0, 0x5257
    .4byte 0x4082020C # bne .L_80375D38
    lbz 0, 0x244(31)
    xori 0, 0, 0x1
    stb 0, 0x244(31)
    stw 30, 0x250(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x3
    .4byte 0x41800014 # blt .L_80375B5C
    bl GetRoomConfigRecord
    lbz 5, 0x244(31)
    lwz 4, 0x248(31)
    bl fn_802D78B4
L_80375B5C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80375B70
    cmpwi 0, 0x4
    .4byte 0x40820080 # bne .L_80375BEC
L_80375B70:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x35
    bl fn_802A3948
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FF80 # lfs f1, lbl_80542F20@sda21(r0)
    li 5, 0x181
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x8f
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x2
    stw 0, 0x234(31)
    .4byte 0x48000150 # b .L_80375D38
L_80375BEC:
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_80375C08
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x24c(31)
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80375C10
L_80375C08:
    li 0, 0x19
    stw 0, 0x238(31)
L_80375C10:
    lbz 0, 0x244(31)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_80375C54
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xac
    bl fn_802A3884
    .4byte 0x480000E8 # b .L_80375D38
L_80375C54:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x35
    bl fn_802A3948
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FF80 # lfs f1, lbl_80542F20@sda21(r0)
    li 5, 0x181
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x8f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000074 # b .L_80375D38
L_80375CC8:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x41820068 # beq .L_80375D38
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_80375D38
    li 0, 0x0
    mr 3, 31
    stw 0, 0x234(31)
    li 4, 0xff
    li 5, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xac
    bl fn_802A3884
    li 0, 0x0
    stb 0, 0x244(31)
    .4byte 0x4800000C # b .L_80375D38
L_80375D30:
    li 0, 0x1
    stb 0, 0x244(31)
L_80375D38:
    lbz 0, 0x244(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80375D80
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_80375DA4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FF80 # lfs f1, lbl_80542F20@sda21(r0)
    li 5, 0x182
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    .4byte 0x48000028 # b .L_80375DA4
L_80375D80:
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80375DA4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(31)
L_80375DA4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80375DBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820044 # beq .L_80375E1C
    lis 3, lbl_804AE678@ha
    addi 0, 3, lbl_804AE678@l
    stw 0, 0x0(30)
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80375E00
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x230(30)
L_80375E00:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80375E1C
    mr 3, 30
    bl dtor_80084580
L_80375E1C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80375E38:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 29, 3
    bl SpatialRegistry_GetBase
    lwz 28, 0x1008(3)
    li 30, 0x0
    li 31, 0x0
    .4byte 0x480000C4 # b .L_80375F20
L_80375E60:
    bl SpatialRegistry_GetBase
    addi 0, 31, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x418200A8 # beq .L_80375F18
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x5357
    cmplwi 0, 0x5434
    .4byte 0x41820010 # beq .L_80375E90
    subis 0, 3, 0x4c4f
    cmplwi 0, 0x5357
    .4byte 0x4082008C # bne .L_80375F18
L_80375E90:
    lwz 3, 0x170(29)
    lwz 0, 0x170(4)
    cmpw 3, 0
    .4byte 0x4082007C # bne .L_80375F18
    lwz 27, 0x90(4)
    lis 3, lbl_80475138@ha
    addi 26, 3, lbl_80475138@l
    li 24, 0x0
    srwi 25, 27, 27
L_80375EB4:
    lwz 0, 0x0(26)
    lwz 3, 0x248(29)
    srw 0, 27, 0
    clrlwi 0, 0, 27
    cmplw 3, 0
    .4byte 0x40820040 # bne .L_80375F08
    stw 25, 0x254(29)
    bl GetRoomConfigRecord
    lwz 4, 0x254(29)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80375F08
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 6, 0x4(29)
    li 5, 0x0
    li 7, 0x35
    bl fn_802A3948
    li 0, 0x2
    stw 0, 0x234(29)
    .4byte 0x48000014 # b .L_80375F18
L_80375F08:
    addi 24, 24, 0x1
    addi 26, 26, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFA0 # blt .L_80375EB4
L_80375F18:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_80375F20:
    cmpw 30, 28
    .4byte 0x4180FF3C # blt .L_80375E60
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80375F3C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0A2FF88 # lfs f5, lbl_80542F28@sda21(r0)
    li 6, -0x1
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC062FF8C # lfs f3, lbl_80542F2C@sda21(r0)
    li 4, 0xff
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC042FF90 # lfs f2, lbl_80542F30@sda21(r0)
    li 5, 0x0
    lfs 0, 0xc(3)
    .4byte 0xC022FF94 # lfs f1, lbl_80542F34@sda21(r0)
    fadds 4, 0, 5
    .4byte 0xC002FF98 # lfs f0, lbl_80542F38@sda21(r0)
    stfs 4, 0xc(3)
    lfs 4, 0x10(3)
    fadds 4, 4, 5
    stfs 4, 0x10(3)
    stfs 3, 0x3c(3)
    stfs 3, 0x40(3)
    stfs 3, 0x44(3)
    stfs 2, 0x60(3)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 0, 0x80(3)
    stfs 0, 0x84(3)
    stfs 5, 0x88(3)
    stfs 5, 0x8c(3)
    stw 6, 0x250(3)
    lwz 6, 0x90(3)
    clrlwi 6, 6, 20
    stw 6, 0x24c(3)
    lwz 6, 0x90(3)
    extrwi 6, 6, 3, 17
    stw 6, 0x23c(3)
    lwz 6, 0x90(3)
    srwi 6, 6, 27
    stw 6, 0x248(3)
    lwz 6, 0x90(3)
    extrwi 6, 6, 2, 5
    stw 6, 0x240(3)
    stw 0, 0x238(3)
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x244(31)
    stw 0, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x240(31)
    clrlwi 3, 3, 24
    li 4, 0x0
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80376034
    li 4, 0x1
    .4byte 0x48000048 # b .L_80376078
L_80376034:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_8037604C
    cmplwi 3, 0x2
    .4byte 0x41820038 # beq .L_80376078
    li 4, 0x1
    .4byte 0x48000030 # b .L_80376078
L_8037604C:
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_8037606C
    subi 0, 3, 0x2
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40810018 # ble .L_80376078
    li 4, 0x1
    .4byte 0x48000010 # b .L_80376078
L_8037606C:
    cmpwi 0, 0x3
    .4byte 0x40820008 # bne .L_80376078
    li 4, 0x1
L_80376078:
    cmpwi 4, 0x1
    .4byte 0x4082009C # bne .L_80376118
    lwz 0, 0x23c(31)
    cmpwi 0, 0x3
    .4byte 0x41800074 # blt .L_803760FC
    bl GetRoomConfigRecord
    lwz 4, 0x248(31)
    bl fn_802D7888
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_803760FC
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x35
    bl fn_802A3948
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x23c(31)
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_803760F0
    li 0, 0x2
    stw 0, 0x234(31)
    .4byte 0x48000070 # b .L_8037615C
L_803760F0:
    li 0, 0x1
    stb 0, 0x244(31)
    .4byte 0x48000064 # b .L_8037615C
L_803760FC:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xac
    bl fn_802A3884
    .4byte 0x48000048 # b .L_8037615C
L_80376118:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x35
    bl fn_802A3948
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x2
    li 0, 0x1
    stw 3, 0x234(31)
    stb 0, 0x244(31)
L_8037615C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80376170:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050CE00@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050CE00@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803761C0
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
L_803761C0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803761F8
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
L_803761F8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376230
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
L_80376230:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376268
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
L_80376268:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803762A0
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
L_803762A0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803762D8
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
L_803762D8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376310
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
L_80376310:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376348
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
L_80376348:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376380
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
L_80376380:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80376394:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_803763D8
    lis 5, lbl_804AE6D0@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE6D0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803763D8
    mr 3, 30
    bl dtor_80084580
L_803763D8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803763F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x41820060 # beq .L_80376470
    .4byte 0x408000AC # bge .L_803764C0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80376424
    .4byte 0x480000A0 # b .L_803764C0
L_80376424:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80376448
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_803764C0
L_80376448:
    lwz 31, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 31
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    .4byte 0x48000054 # b .L_803764C0
L_80376470:
    lis 4, 0x4b45
    .4byte 0xC022FFA0 # lfs f1, lbl_80542F40@sda21(r0)
    addi 4, 4, 0x5930
    li 5, -0x1
    bl fn_801F8108
    mr. 31, 3
    .4byte 0x41800038 # blt .L_803764C0
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803764C0
    lwz 0, 0x240(3)
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_803764C0
    lfs 1, 0x40(3)
    .4byte 0xC002FFA4 # lfs f0, lbl_80542F44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_803764C0
    bl fn_802C2BD0
L_803764C0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803764D4:
    stwu 1, -0x30(1)
    lis 0, 0x4330
    .4byte 0xC002FFA4 # lfs f0, lbl_80542F44@sda21(r0)
    lwz 4, 0x90(3)
    stw 0, 0x8(1)
    srwi 4, 4, 27
    .4byte 0xC842FFB0 # lfd f2, lbl_80542F50@sda21(r0)
    stw 4, 0x230(3)
    lwz 4, 0x90(3)
    stw 0, 0x10(1)
    extrwi 0, 4, 5, 5
    stw 0, 0x234(3)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 6, 0x90(3)
    lwz 0, 0x234(3)
    clrlwi 5, 6, 24
    extrwi 4, 6, 8, 16
    cmpwi 0, 0x1
    addi 0, 4, 0x1
    addi 5, 5, 0x1
    slwi 4, 5, 3
    slwi 0, 0, 3
    stw 4, 0xc(1)
    stw 0, 0x14(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 3, 1, 2
    fsubs 2, 0, 2
    .4byte 0x40820008 # bne .L_80376554
    .4byte 0xC042FFA8 # lfs f2, lbl_80542F48@sda21(r0)
L_80376554:
    extrwi. 0, 6, 1, 15
    .4byte 0x41820020 # beq .L_80376578
    lfs 0, 0xc(3)
    fadds 0, 0, 3
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 2
    stfs 0, 0x10(3)
    .4byte 0x4800007C # b .L_803765F0
L_80376578:
    lfs 0, 0xc(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    fctiwz 0, 0
    .4byte 0xC822FFB8 # lfd f1, lbl_80542F58@sda21(r0)
    stw 0, 0x20(1)
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fadds 0, 3, 0
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x10(3)
L_803765F0:
    fneg 0, 3
    fneg 1, 2
    stfs 0, 0x80(3)
    stfs 1, 0x84(3)
    stfs 3, 0x88(3)
    stfs 2, 0x8c(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80376624
    stfs 0, 0x60(3)
    stfs 1, 0x64(3)
    stfs 3, 0x68(3)
    stfs 2, 0x6c(3)
L_80376624:
    addi 1, 1, 0x30
    blr

fn_8037662C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050CF00@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050CF00@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037667C
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
L_8037667C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803766B4
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
L_803766B4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803766EC
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
L_803766EC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376724
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
L_80376724:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037675C
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
L_8037675C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376794
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
L_80376794:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803767CC
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
L_803767CC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376804
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
L_80376804:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037683C
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
L_8037683C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80376850:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80376894
    lis 5, lbl_804AE728@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE728@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80376894
    mr 3, 30
    bl dtor_80084580
L_80376894:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803768B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x4(3)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x12
    .4byte 0x40820030 # bne .L_80376908
    bl SpatialRegistry_GetBase
    lis 4, 0x4243
    lwz 5, 0x4(31)
    addi 4, 4, 0x4b32
    addi 6, 31, 0xc
    li 7, 0x100
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x0
    stb 0, 0x11c(31)
L_80376908:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037691C:
    li 0, 0x0
    stb 0, 0x11c(3)
    blr

fn_80376928:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D000@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D000@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376978
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
L_80376978:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803769B0
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
L_803769B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803769E8
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
L_803769E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376A20
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
L_80376A20:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376A58
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
L_80376A58:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376A90
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
L_80376A90:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376AC8
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
L_80376AC8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376B00
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
L_80376B00:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376B38
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
L_80376B38:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80376B4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80376B90
    lis 5, lbl_804AE780@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE780@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80376B90
    mr 3, 30
    bl dtor_80084580
L_80376B90:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80376BAC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80376BE4
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_80376C3C
L_80376BE4:
    lfs 1, 0x60(31)
    addi 3, 1, 0x8
    stfs 1, 0x8(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc(1)
    lfs 2, 0x68(31)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x14(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
L_80376C3C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80376C50:
    stwu 1, -0x30(1)
    lis 5, 0x4330
    .4byte 0xC002FFC0 # lfs f0, lbl_80542F60@sda21(r0)
    stw 5, 0x8(1)
    .4byte 0xC842FFC8 # lfd f2, lbl_80542F68@sda21(r0)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 0, 0x90(3)
    stw 5, 0x10(1)
    clrlwi 6, 0, 24
    extrwi 4, 0, 8, 16
    addi 6, 6, 0x1
    extrwi. 0, 0, 1, 15
    addi 4, 4, 0x1
    slwi 6, 6, 3
    slwi 0, 4, 3
    stw 6, 0xc(1)
    stw 0, 0x14(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 3, 1, 2
    fsubs 2, 0, 2
    .4byte 0x41820020 # beq .L_80376CCC
    lfs 0, 0xc(3)
    fadds 0, 0, 3
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 2
    stfs 0, 0x10(3)
    .4byte 0x48000078 # b .L_80376D40
L_80376CCC:
    lfs 0, 0xc(3)
    stw 5, 0x8(1)
    fctiwz 0, 0
    .4byte 0xC822FFD0 # lfd f1, lbl_80542F70@sda21(r0)
    stw 5, 0x20(1)
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fadds 0, 3, 0
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x10(3)
L_80376D40:
    fneg 0, 3
    fneg 1, 2
    stfs 0, 0x60(3)
    stfs 1, 0x64(3)
    stfs 3, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 0, 0x80(3)
    stfs 1, 0x84(3)
    stfs 3, 0x88(3)
    stfs 2, 0x8c(3)
    lwz 0, 0x90(3)
    srwi 0, 0, 27
    stw 0, 0x230(3)
    addi 1, 1, 0x30
    blr

fn_80376D7C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D100@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D100@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376DCC
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
L_80376DCC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376E04
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
L_80376E04:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376E3C
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
L_80376E3C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376E74
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
L_80376E74:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376EAC
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
L_80376EAC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376EE4
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
L_80376EE4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376F1C
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
L_80376F1C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376F54
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
L_80376F54:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80376F8C
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
L_80376F8C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80376FA0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80376FE4
    lis 5, lbl_804AE7D8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE7D8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80376FE4
    mr 3, 30
    bl dtor_80084580
L_80376FE4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80377000:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    mr 31, 3
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_8037708C
L_8037702C:
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
L_8037708C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8037702C
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x24(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 5, 0x25(1)
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
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
    stb 5, 0x24(1)
    stb 6, 0x25(1)
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x41820050 # beq .L_80377160
    .4byte 0x40800084 # bge .L_80377198
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80377124
    .4byte 0x48000078 # b .L_80377198
L_80377124:
    lis 3, lbl_80475188@ha
    lis 5, 0x5449
    addi 4, 3, lbl_80475188@l
    addi 3, 5, 0x4d47
    bl fn_804032E8
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80377198
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x8
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x4800003C # b .L_80377198
L_80377160:
    lis 3, lbl_80475198@ha
    lis 5, 0x5449
    addi 4, 3, lbl_80475198@l
    addi 3, 5, 0x4d47
    bl fn_804032E8
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_80377198
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x8
    lwz 3, 0x20(7)
    bl fn_802F745C
L_80377198:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803771AC:
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
    stmw 27, 0x3c(1)
    mr 31, 3
    lfs 3, 0x60(3)
    stfs 3, 0x20(1)
    lfs 2, 0x64(3)
    stfs 2, 0x24(1)
    lfs 1, 0x68(3)
    stfs 1, 0x28(1)
    lfs 4, 0x6c(3)
    stfs 4, 0x2c(1)
    lfs 0, 0xc(3)
    fadds 3, 3, 0
    fadds 1, 1, 0
    stfs 3, 0x20(1)
    lfs 0, 0x10(3)
    fadds 2, 2, 0
    stfs 1, 0x28(1)
    fadds 4, 4, 0
    stfs 2, 0x24(1)
    stfs 4, 0x2c(1)
    lwz 0, 0x244(3)
    cmpwi 0, 0x1
    .4byte 0x418206C4 # beq .L_803778FC
    .4byte 0x408007C0 # bge .L_803779FC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8037724C
    .4byte 0x480007B4 # b .L_803779FC
L_8037724C:
    .4byte 0xC002FFD8 # lfs f0, lbl_80542F78@sda21(r0)
    addi 3, 1, 0x20
    fsubs 3, 3, 0
    fsubs 2, 2, 0
    fadds 1, 1, 0
    fadds 0, 4, 0
    stfs 3, 0x20(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lfs 0, 0x20(1)
    .4byte 0xC082FFF0 # lfs f4, lbl_80542F90@sda21(r0)
    lfs 2, 0x24(1)
    lfs 1, 0x28(1)
    fsubs 3, 0, 4
    lfs 0, 0x2c(1)
    fsubs 2, 2, 4
    fadds 1, 1, 4
    fadds 0, 0, 4
    stfs 3, 0x20(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 28, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 28
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    lbz 0, 0x264(31)
    cmplwi 0, 0x0
    .4byte 0x4082071C # bne .L_803779FC
    addi 3, 31, 0xc
    addi 4, 31, 0x24
    bl PSVECDistance
    .4byte 0xC002FFF4 # lfs f0, lbl_80542F94@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80377304
    .4byte 0xC362FFF8 # lfs f27, lbl_80542F98@sda21(r0)
    .4byte 0x48000020 # b .L_80377320
L_80377304:
    .4byte 0xC002FFFC # lfs f0, lbl_80542F9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8037731C
    .4byte 0xC3620000 # lfs f27, lbl_80542FA0@sda21(r0)
    .4byte 0x48000008 # b .L_80377320
L_8037731C:
    .4byte 0xC3620004 # lfs f27, lbl_80542FA4@sda21(r0)
L_80377320:
    addi 3, 31, 0xc
    addi 4, 31, 0x248
    bl PSVECDistance
    fcmpo cr0, 1, 27
    cror eq, gt, eq
    .4byte 0x40820370 # bne .L_803776A4
    .4byte 0xC0420008 # lfs f2, lbl_80542FA8@sda21(r0)
    lfs 3, 0x24(31)
    lfs 1, 0xc(31)
    fadds 0, 2, 3
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8037736C
    fsubs 0, 3, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8037736C
    stfs 3, 0xc(31)
    .4byte 0x48000014 # b .L_8037737C
L_8037736C:
    fmr 3, 27
    lfs 2, 0x248(31)
    bl fn_8033D4AC
    stfs 1, 0xc(31)
L_8037737C:
    .4byte 0xC0420008 # lfs f2, lbl_80542FA8@sda21(r0)
    lfs 3, 0x28(31)
    lfs 1, 0x10(31)
    fadds 0, 2, 3
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_803773B0
    fsubs 0, 3, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_803773B0
    stfs 3, 0x10(31)
    .4byte 0x48000014 # b .L_803773C0
L_803773B0:
    fmr 3, 27
    lfs 2, 0x24c(31)
    bl fn_8033D4AC
    stfs 1, 0x10(31)
L_803773C0:
    psq_l 2, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    .4byte 0xC002FFE4 # lfs f0, lbl_80542F84@sda21(r0)
    psq_st 2, 0x248(31), 0, 0
    stfs 1, 0x250(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803773F8
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x230(31)
L_803773F8:
    li 0, 0x8
    addi 3, 31, 0xc
    stw 0, 0x254(31)
    addi 4, 31, 0x24
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    bl PSVECDistance
    .4byte 0xC8020010 # lfd f0, lbl_80542FB0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408205D4 # bne .L_803779FC
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lfs 30, 0xc(31)
    lis 3, lbl_80475178@ha
    .4byte 0xC002FFE8 # lfs f0, lbl_80542F88@sda21(r0)
    addi 30, 3, lbl_80475178@l
    lfs 29, 0x10(31)
    li 28, 0x0
    fsubs 30, 30, 0
    lfs 28, 0x14(31)
    .4byte 0xC3E2FFEC # lfs f31, lbl_80542F8C@sda21(r0)
L_8037746C:
    stfs 30, 0x14(1)
    mr 27, 30
    li 29, 0x0
    stfs 29, 0x18(1)
    stfs 28, 0x1c(1)
L_80377480:
    lfs 0, 0x0(27)
    addi 4, 1, 0x14
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 5, 0x0
    fadds 0, 29, 0
    li 7, 0x0
    stfs 0, 0x18(1)
    lwz 6, 0x4(31)
    bl fn_802A3948
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_80377480
    addi 28, 28, 0x1
    fadds 30, 30, 31
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_8037746C
    li 0, 0x1
    li 3, 0x32
    stw 0, 0x244(31)
    li 0, 0x0
    stw 3, 0x25c(31)
    stw 0, 0x260(31)
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8037752C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 5, 0x542
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    addi 4, 31, 0xc
    li 5, -0x1
    li 6, -0x1
    lwz 3, 0x230(31)
    li 7, 0x1
    bl fn_8013CB44
L_8037752C:
    lwz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8037757C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 5, 0xb7
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 31, 0xc
    li 5, -0x1
    li 6, -0x1
    lwz 3, 0x234(31)
    li 7, 0x1
    bl fn_8013CB44
L_8037757C:
    lwz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_803775CC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 5, 0xb8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    lwz 3, 0x238(31)
    li 7, 0x1
    bl fn_8013CB44
L_803775CC:
    lwz 0, 0x23c(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8037761C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 5, 0xb9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x23c(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    lwz 3, 0x23c(31)
    li 7, 0x1
    bl fn_8013CB44
L_8037761C:
    lwz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8037766C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 5, 0xba
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x240(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    lwz 3, 0x240(31)
    li 7, 0x1
    bl fn_8013CB44
L_8037766C:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x65
    li 5, 0x0
    bl fn_801F0E34
    lbz 0, 0x265(31)
    cmplwi 0, 0x0
    .4byte 0x40820374 # bne .L_803779FC
    bl GetRoomConfigRecord
    lwz 0, 0x258(31)
    lwz 4, 0x16c(31)
    clrlwi 5, 0, 24
    bl fn_802D7584
    .4byte 0x4800035C # b .L_803779FC
L_803776A4:
    addi 4, 31, 0xc
    psq_l 0, 0x3c(31), 0, 0
    psq_l 1, 0x0(4), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_803776E0
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000320 # b .L_803779FC
L_803776E0:
    .4byte 0x4082031C # bne .L_803779FC
    psq_l 3, 0x3c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x44(31)
    ps_mul 3, 3, 3
    .4byte 0xC0220018 # lfs f1, lbl_80542FB8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x408201CC # bne .L_803778DC
    lwz 3, 0x198(31)
    bl fn_80239108
    cmpwi 3, 0x4
    .4byte 0x418002DC # blt .L_803779FC
    addi 3, 31, 0xc
    addi 4, 31, 0x24
    bl PSVECDistance
    .4byte 0xC002001C # lfs f0, lbl_80542FBC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408002C4 # bge .L_803779FC
    lwz 3, 0x260(31)
    cmpwi 3, 0xa
    .4byte 0x40800010 # bge .L_80377754
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    .4byte 0x480002AC # b .L_803779FC
L_80377754:
    lwz 3, 0x198(31)
    bl fn_80238BC4
    lwz 4, 0x258(31)
    mr 30, 3
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_80377778
    addi 0, 30, 0x1
    stw 0, 0x258(31)
    .4byte 0x48000010 # b .L_80377784
L_80377778:
    addi 0, 30, 0x1
    cmpw 0, 4
    .4byte 0x4082027C # bne .L_803779FC
L_80377784:
    cmpwi 30, 0x0
    .4byte 0x41800274 # blt .L_803779FC
    cmpwi 30, 0x4
    .4byte 0x4080026C # bge .L_803779FC
    lwz 3, 0x198(31)
    bl fn_80238E08
    mulli 0, 30, 0xc
    lis 3, lbl_80475148@ha
    lis 4, 0x3
    addi 3, 3, lbl_80475148@l
    lfsx 0, 3, 0
    add 5, 3, 0
    lfs 1, 0x4(5)
    mr 3, 31
    stfs 0, 0x3c(31)
    addi 4, 4, 0x4
    lfs 0, 0x8(5)
    li 5, 0x0
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    lfs 0, 0xc(31)
    stfs 0, 0x248(31)
    lfs 0, 0x10(31)
    stfs 0, 0x24c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x250(31)
    bl fn_801F0E34
    addi 4, 31, 0xc
    psq_l 0, 0x3c(31), 0, 0
    psq_l 1, 0x0(4), 0, 0
    cmpwi 30, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    .4byte 0x40820030 # bne .L_80377848
    lwz 3, 0x4(31)
    li 5, 0x31a
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    .4byte 0x480001B8 # b .L_803779FC
L_80377848:
    cmpwi 30, 0x1
    .4byte 0x40820030 # bne .L_8037787C
    lwz 3, 0x4(31)
    li 5, 0x31b
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    .4byte 0x48000184 # b .L_803779FC
L_8037787C:
    cmpwi 30, 0x2
    .4byte 0x40820030 # bne .L_803778B0
    lwz 3, 0x4(31)
    li 5, 0x31c
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    .4byte 0x48000150 # b .L_803779FC
L_803778B0:
    lwz 3, 0x4(31)
    li 5, 0x319
    .4byte 0xC022FFD8 # lfs f1, lbl_80542F78@sda21(r0)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    .4byte 0x48000124 # b .L_803779FC
L_803778DC:
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x41820118 # beq .L_803779FC
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x48000104 # b .L_803779FC
L_803778FC:
    lwz 4, 0x25c(31)
    cmpwi 4, 0x0
    .4byte 0x41820020 # beq .L_80377924
    subi 0, 4, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80377924
    li 4, 0x3
    bl fn_801F0D20
L_80377924:
    li 27, 0x0
L_80377928:
    lwz 28, 0x4(31)
    mr 3, 27
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x4182000C # beq .L_80377944
    li 0, 0x0
    .4byte 0x480000A0 # b .L_803779E0
L_80377944:
    lfs 28, 0x60(31)
    li 28, 0x0
    lfs 0, 0xc(31)
    lfs 30, 0x68(31)
    lfs 29, 0x64(31)
    fadds 28, 28, 0
    lfs 1, 0x10(31)
    fadds 30, 30, 0
    lfs 27, 0x6c(31)
    fadds 29, 29, 1
    .4byte 0xC3E2FFE4 # lfs f31, lbl_80542F84@sda21(r0)
    fadds 27, 27, 1
L_80377974:
    mr 3, 27
    mr 4, 28
    addi 5, 1, 0x8
    bl fn_8022E088
    lfs 1, 0x8(1)
    li 0, 0x0
    stfs 31, 0x10(1)
    fcmpo cr0, 1, 28
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_803779C0
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 29
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_803779C0
    fcmpo cr0, 1, 30
    .4byte 0x40800010 # bge .L_803779C0
    fcmpo cr0, 0, 27
    .4byte 0x40800008 # bge .L_803779C0
    li 0, 0x1
L_803779C0:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_803779D0
    li 0, 0x1
    .4byte 0x48000014 # b .L_803779E0
L_803779D0:
    addi 28, 28, 0x1
    cmpwi 28, 0x8
    .4byte 0x4180FF9C # blt .L_80377974
    li 0, 0x0
L_803779E0:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_803779F0
    mr 3, 27
    bl fn_8022DF48
L_803779F0:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF30 # blt .L_80377928
L_803779FC:
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
    lmw 27, 0x3c(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80377A38:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 31, 3
    li 0, 0x0
    stw 0, 0x244(3)
    stb 0, 0x264(3)
    lwz 0, 0x90(3)
    clrlwi 3, 0, 24
    addi 0, 3, 0x1
    clrlwi 0, 0, 24
    stw 0, 0x258(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 15
    stb 0, 0x265(31)
    lbz 0, 0x265(31)
    cmplwi 0, 0x0
    .4byte 0x408200AC # bne .L_80377B4C
    lwz 5, 0x16c(31)
    addi 3, 31, 0xc
    li 4, 0x3
    bl fn_8028D4DC
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_80377B4C
    li 0, 0x1
    lis 3, lbl_80475178@ha
    stw 0, 0x244(31)
    addi 30, 3, lbl_80475178@l
    .4byte 0xC002FFE8 # lfs f0, lbl_80542F88@sda21(r0)
    li 28, 0x0
    lfs 30, 0xc(31)
    lfs 29, 0x10(31)
    fsubs 30, 30, 0
    lfs 28, 0x14(31)
    .4byte 0xC3E2FFEC # lfs f31, lbl_80542F8C@sda21(r0)
L_80377AE8:
    stfs 30, 0x8(1)
    mr 27, 30
    li 29, 0x0
    stfs 29, 0xc(1)
    stfs 28, 0x10(1)
L_80377AFC:
    lfs 0, 0x0(27)
    addi 4, 1, 0x8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 5, 0x0
    fadds 0, 29, 0
    li 7, 0x0
    stfs 0, 0xc(1)
    lwz 6, 0x4(31)
    bl fn_802A3948
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_80377AFC
    addi 28, 28, 0x1
    fadds 30, 30, 31
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_80377AE8
    li 0, 0x1
    stb 0, 0x264(31)
    .4byte 0x48000080 # b .L_80377BC8
L_80377B4C:
    .4byte 0xC042FFE4 # lfs f2, lbl_80542F84@sda21(r0)
    li 4, 0x4
    .4byte 0xC022FFDC # lfs f1, lbl_80542F7C@sda21(r0)
    li 3, 0x0
    stfs 2, 0x3c(31)
    li 0, 0x2
    .4byte 0xC002FFE0 # lfs f0, lbl_80542F80@sda21(r0)
    stfs 2, 0x40(31)
    stfs 2, 0x44(31)
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    psq_st 3, 0x248(31), 0, 0
    stfs 2, 0x250(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 4, 0x1a4(31)
    stw 3, 0x254(31)
    stw 0, 0xb8(31)
    stw 3, 0x25c(31)
    stw 3, 0x260(31)
    stw 3, 0x230(31)
    stw 3, 0x234(31)
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
L_80377BC8:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80377BFC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D200@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D200@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377C4C
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
L_80377C4C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377C84
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
L_80377C84:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377CBC
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
L_80377CBC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377CF4
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
L_80377CF4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377D2C
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
L_80377D2C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377D64
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
L_80377D64:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377D9C
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
L_80377D9C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377DD4
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
L_80377DD4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80377E0C
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
L_80377E0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80377E20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80377E64
    lis 5, lbl_804AE830@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE830@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80377E64
    mr 3, 30
    bl dtor_80084580
L_80377E64:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80377E80:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stfd 28, 0x10(1)
    psq_st 28, 0x18(1), 0, 0
    stw 31, 0xc(1)
    lfs 31, 0x60(3)
    li 31, 0x0
    lfs 0, 0xc(3)
    lfs 29, 0x68(3)
    lfs 30, 0x64(3)
    fadds 31, 31, 0
    lfs 1, 0x10(3)
    fadds 29, 29, 0
    lfs 28, 0x6c(3)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_80377EDC:
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 0, 0x0
    lfs 1, 0x4(3)
    fcmpo cr0, 0, 31
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_80377F1C
    fcmpo cr0, 1, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80377F1C
    fcmpo cr0, 0, 29
    .4byte 0x40800010 # bge .L_80377F1C
    fcmpo cr0, 1, 28
    .4byte 0x40800008 # bge .L_80377F1C
    li 0, 0x1
L_80377F1C:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80377F30
    mr 3, 31
    bl fn_80230050
L_80377F30:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFA4 # blt .L_80377EDC
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    psq_l 28, 0x18(1), 0, 0
    lfd 28, 0x10(1)
    lwz 0, 0x54(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80377F70:
    stwu 1, -0x30(1)
    lis 5, 0x4330
    .4byte 0xC8420020 # lfd f2, lbl_80542FC0@sda21(r0)
    lwz 0, 0x90(3)
    stw 5, 0x8(1)
    clrlwi 6, 0, 24
    extrwi 4, 0, 8, 16
    addi 6, 6, 0x1
    stw 5, 0x10(1)
    addi 4, 4, 0x1
    extrwi. 0, 0, 1, 15
    slwi 6, 6, 3
    slwi 4, 4, 3
    stw 6, 0xc(1)
    stw 4, 0x14(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 3, 1, 2
    fsubs 2, 0, 2
    .4byte 0x41820020 # beq .L_80377FDC
    lfs 0, 0xc(3)
    fadds 0, 0, 3
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 2
    stfs 0, 0x10(3)
    .4byte 0x48000078 # b .L_80378050
L_80377FDC:
    lfs 0, 0xc(3)
    stw 5, 0x8(1)
    fctiwz 0, 0
    .4byte 0xC8220028 # lfd f1, lbl_80542FC8@sda21(r0)
    stw 5, 0x20(1)
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fadds 0, 3, 0
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x10(3)
L_80378050:
    fneg 1, 3
    fneg 0, 2
    stfs 1, 0x60(3)
    stfs 0, 0x64(3)
    stfs 3, 0x68(3)
    stfs 2, 0x6c(3)
    addi 1, 1, 0x30
    blr

fn_80378070:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D300@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D300@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803780C0
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
L_803780C0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803780F8
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
L_803780F8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378130
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
L_80378130:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378168
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
L_80378168:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803781A0
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
L_803781A0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803781D8
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
L_803781D8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378210
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
L_80378210:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378248
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
L_80378248:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378280
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
L_80378280:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80378294:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    lbz 0, 0x251(3)
    cmplwi 0, 0x1
    .4byte 0x41820198 # beq .L_80378448
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8037832C
L_803782CC:
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
L_8037832C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803782CC
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x48(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC0220030 # lfs f1, lbl_80542FD0@sda21(r0)
    stw 6, 0x4c(1)
    lfs 0, lbl_80539D44@l(3)
    stw 6, 0x50(1)
    fmuls 0, 1, 0
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
    psq_l 3, 0x54(31), 0, 0
    lfs 2, 0x5c(31)
    ps_mul 3, 3, 3
    ps_madd 1, 2, 2, 3
    ps_sum0 1, 1, 3, 3
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820044 # beq .L_80378410
    .4byte 0xC0020034 # lfs f0, lbl_80542FD4@sda21(r0)
    addi 0, 1, 0x8
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    lfs 1, 0x238(31)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 1, 0x30(1)
    stw 0, 0x50(1)
L_80378410:
    lis 3, lbl_804751E4@ha
    lis 5, 0x5449
    addi 4, 3, lbl_804751E4@l
    addi 3, 5, 0x4d47
    bl fn_804032E8
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_80378448
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x38
    lwz 3, 0x20(7)
    bl fn_802F745C
L_80378448:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8037845C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 3, 0x244(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8037848C
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_8037848C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803784A0
    li 3, 0x0
    .4byte 0x480001C8 # b .L_80378664
L_803784A0:
    cmpwi 0, 0x4
    .4byte 0x40800068 # bge .L_8037850C
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80378504
    li 0, 0x4
    li 3, 0x32
    stw 0, 0x248(31)
    li 0, 0x0
    li 29, 0x0
    stw 3, 0x244(31)
    stw 0, 0x24c(31)
L_803784D0:
    mr 3, 29
    bl fn_8023E724
    mr 4, 3
    mr 3, 29
    li 5, 0xe8
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_803784D0
L_80378504:
    li 3, 0x1
    .4byte 0x4800015C # b .L_80378664
L_8037850C:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x40820050 # bne .L_80378564
    lwz 0, 0x244(31)
    cmpwi 0, 0x1e
    .4byte 0x40810044 # ble .L_80378564
    li 29, 0x0
L_80378528:
    mr 3, 29
    bl fn_8023E724
    mr 4, 3
    mr 3, 29
    li 5, 0xe8
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_80378528
    li 3, 0x1
    .4byte 0x48000104 # b .L_80378664
L_80378564:
    cmpwi 3, 0xd
    .4byte 0x408000A4 # bge .L_8037860C
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408200EC # bne .L_80378660
    lwz 4, 0x24c(31)
    lis 3, lbl_804751A8@ha
    addi 3, 3, lbl_804751A8@l
    li 29, 0x0
    addi 0, 4, 0x1
    lis 30, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x244(31)
L_803785A4:
    mr 3, 29
    bl fn_8023E724
    lwz 5, 0x24c(31)
    mr 4, 3
    mr 3, 29
    li 6, 0xff
    addi 5, 5, 0xdb
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_803785E8
    mr 3, 29
    addi 4, 30, 0x1
    bl fn_80230FD0
L_803785E8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFB4 # blt .L_803785A4
    lwz 0, 0x24c(31)
    cmpwi 0, 0xd
    .4byte 0x40820064 # bne .L_80378660
    li 0, 0x19
    stw 0, 0x244(31)
    .4byte 0x48000058 # b .L_80378660
L_8037860C:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_80378660
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80378660
    li 0, -0x1
    mr 3, 31
    stw 0, 0x248(31)
    li 4, 0x3
    bl fn_801F0D20
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    mr 3, 31
    bl fn_801F3668
L_80378660:
    li 3, 0x1
L_80378664:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80378680:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    li 30, -0x1
    lfs 31, 0x60(3)
    lis 31, 0x4842
    lfs 0, 0xc(3)
    lfs 29, 0x68(3)
    lfs 30, 0x64(3)
    fadds 31, 31, 0
    lfs 1, 0x10(3)
    fadds 29, 29, 0
    lfs 28, 0x6c(3)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_803786EC:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x4d42
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x41800140 # blt .L_80378840
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_803786EC
    lwz 4, 0x4(29)
    lwz 0, 0x4(3)
    cmpw 4, 0
    .4byte 0x4082FFC8 # bne .L_803786EC
    lfs 2, 0x60(3)
    lfs 0, 0xc(3)
    lfs 4, 0x68(3)
    fadds 2, 2, 0
    lfs 3, 0x64(3)
    lfs 1, 0x10(3)
    fadds 4, 4, 0
    lfs 0, 0x6c(3)
    fcmpo cr0, 2, 31
    fadds 3, 3, 1
    fadds 0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80378760
    fmr 2, 31
L_80378760:
    fcmpo cr0, 3, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80378770
    fmr 3, 30
L_80378770:
    fcmpo cr0, 4, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80378780
    fmr 4, 29
L_80378780:
    fcmpo cr0, 0, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80378790
    fmr 0, 28
L_80378790:
    fcmpo cr0, 4, 2
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_803787B0
    fcmpo cr0, 0, 3
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_803787B0
    li 0, 0x1
L_803787B0:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF38 # beq .L_803786EC
    psq_l 0, 0x3c(3), 0, 0
    lfs 2, 0x44(3)
    psq_st 0, 0x14(1), 0, 0
    .4byte 0xC0220034 # lfs f1, lbl_80542FD4@sda21(r0)
    lfs 0, 0x14(1)
    stfs 2, 0x1c(1)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_803787E4
    lfs 0, 0x18(1)
    fcmpu cr0, 0, 1
    .4byte 0x41820010 # beq .L_803787F0
L_803787E4:
    li 0, 0x0
    stw 0, 0x108(3)
    .4byte 0x4BFFFF00 # b .L_803786EC
L_803787F0:
    psq_l 0, 0xc(3), 0, 0
    lfs 1, 0x14(3)
    psq_st 0, 0x8(1), 0, 0
    lfs 2, 0x10(29)
    lfs 0, 0xc(1)
    stfs 1, 0x10(1)
    fcmpo cr0, 0, 2
    .4byte 0x40810014 # ble .L_80378820
    .4byte 0xC002003C # lfs f0, lbl_80542FDC@sda21(r0)
    fadds 0, 0, 2
    stfs 0, 0xc(1)
    .4byte 0x48000010 # b .L_8037882C
L_80378820:
    .4byte 0xC002003C # lfs f0, lbl_80542FDC@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0xc(1)
L_8037882C:
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    .4byte 0x4BFFFEB0 # b .L_803786EC
L_80378840:
    li 3, 0x0
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x74(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80378880:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stmw 27, 0xc(1)
    mr 27, 3
    li 30, -0x1
    lfs 31, 0x60(3)
    li 29, 0x0
    lfs 0, 0xc(3)
    lis 31, 0x4649
    lfs 29, 0x68(3)
    lfs 30, 0x64(3)
    fadds 31, 31, 0
    lfs 1, 0x10(3)
    fadds 29, 29, 0
    lfs 28, 0x6c(3)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_803788E8:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x5245
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x418000E4 # blt .L_803789E0
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x4182FFD8 # beq .L_803788E8
    lwz 3, 0x4(27)
    lwz 0, 0x4(28)
    cmpw 3, 0
    .4byte 0x4082FFC8 # bne .L_803788E8
    lfs 2, 0x60(28)
    lfs 0, 0xc(28)
    lfs 4, 0x68(28)
    fadds 2, 2, 0
    lfs 3, 0x64(28)
    lfs 1, 0x10(28)
    fadds 4, 4, 0
    lfs 0, 0x6c(28)
    fcmpo cr0, 2, 31
    fadds 3, 3, 1
    fadds 0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8037895C
    fmr 2, 31
L_8037895C:
    fcmpo cr0, 3, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8037896C
    fmr 3, 30
L_8037896C:
    fcmpo cr0, 4, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8037897C
    fmr 4, 29
L_8037897C:
    fcmpo cr0, 0, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8037898C
    fmr 0, 28
L_8037898C:
    fcmpo cr0, 4, 2
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_803789AC
    fcmpo cr0, 0, 3
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_803789AC
    li 0, 0x1
L_803789AC:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF38 # beq .L_803788E8
    mr 3, 28
    bl fn_802BA9F8
    cmpwi 3, 0x1
    .4byte 0x4082FF28 # bne .L_803788E8
    mr 3, 28
    bl fn_802BA9F0
    li 0, 0x1
    slw 0, 0, 3
    or 0, 29, 0
    clrlwi 29, 0, 24
    .4byte 0x4BFFFF0C # b .L_803788E8
L_803789E0:
    clrlwi 0, 29, 24
    subfic 0, 0, 0xf
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lmw 27, 0xc(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80378A24:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    bl fn_8037845C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x418202B8 # beq .L_80378D00
    lfs 1, 0x60(31)
    addi 3, 1, 0x8
    stfs 1, 0x8(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc(1)
    lfs 2, 0x68(31)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x14(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 30, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 30
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    mr 3, 31
    bl fn_80378680
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x418200DC # beq .L_80378BB4
    .4byte 0x408001A8 # bge .L_80378C84
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80378AEC
    .4byte 0x4800019C # b .L_80378C84
L_80378AEC:
    .4byte 0xC0220040 # lfs f1, lbl_80542FE0@sda21(r0)
    mr 3, 31
    .4byte 0xC0020044 # lfs f0, lbl_80542FE4@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC0220048 # lfs f1, lbl_80542FE8@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002003C # lfs f0, lbl_80542FDC@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_80378880
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082007C # bne .L_80378B98
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80378B58
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0220038 # lfs f1, lbl_80542FD8@sda21(r0)
    li 5, 0x456
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
L_80378B58:
    lfs 2, 0x238(31)
    .4byte 0xC022004C # lfs f1, lbl_80542FEC@sda21(r0)
    .4byte 0xC0020050 # lfs f0, lbl_80542FF0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x238(31)
    lfs 1, 0x238(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80378B80
    li 0, 0x1
    stw 0, 0x234(31)
L_80378B80:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x87
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000F0 # b .L_80378C84
L_80378B98:
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x418200E4 # beq .L_80378C84
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x480000D4 # b .L_80378C84
L_80378BB4:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x87
    li 5, 0x0
    bl fn_801F0E34
    lfs 2, 0x23c(31)
    .4byte 0xC8220058 # lfd f1, lbl_80542FF8@sda21(r0)
    .4byte 0xC0020060 # lfs f0, lbl_80543000@sda21(r0)
    fsub 1, 2, 1
    frsp 1, 1
    stfs 1, 0x23c(31)
    lfs 1, 0x23c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80378BF0
    stfs 0, 0x23c(31)
L_80378BF0:
    lfs 0, 0x238(31)
    .4byte 0xC022004C # lfs f1, lbl_80542FEC@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x238(31)
    lfs 0, 0x238(31)
    fcmpo cr0, 0, 1
    .4byte 0x4080007C # bge .L_80378C84
    .4byte 0xC0020060 # lfs f0, lbl_80543000@sda21(r0)
    stfs 0, 0x238(31)
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_80378C6C
    li 0, 0x32
    li 30, 0x0
    stw 0, 0x244(31)
    li 0, 0x4
    stw 0, 0x248(31)
    stw 30, 0x24c(31)
L_80378C38:
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    mr 3, 30
    li 5, 0xe8
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80378C38
L_80378C6C:
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80378C84
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x230(31)
L_80378C84:
    lfs 2, 0x238(31)
    lfs 1, 0x23c(31)
    .4byte 0xC0020038 # lfs f0, lbl_80542FD8@sda21(r0)
    stfs 1, 0x54(31)
    .4byte 0xC0220064 # lfs f1, lbl_80543004@sda21(r0)
    stfs 0, 0x58(31)
    stfs 2, 0x5c(31)
    lfs 0, 0x238(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    subfic 30, 0, 0x64
    bl fn_801902C0
    lwz 0, 0x7e0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80378CF8
    lbz 0, 0x7ec(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80378CF8
    lfs 0, 0xc(31)
    li 0, 0x1
    stfs 0, 0x7d0(3)
    lfs 0, 0x10(31)
    stfs 0, 0x7d4(3)
    lfs 0, 0x14(31)
    stfs 0, 0x7d8(3)
    stw 30, 0x7dc(3)
    stb 0, 0x7ec(3)
L_80378CF8:
    li 0, 0x1
    stb 0, 0x251(31)
L_80378D00:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80378D18:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820044 # beq .L_80378D78
    lis 3, lbl_804AE888@ha
    addi 0, 3, lbl_804AE888@l
    stw 0, 0x0(30)
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80378D5C
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x230(30)
L_80378D5C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80378D78
    mr 3, 30
    bl dtor_80084580
L_80378D78:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80378D94:
    .4byte 0xC0020068 # lfs f0, lbl_80543008@sda21(r0)
    lis 4, 0xa04
    .4byte 0xC0220044 # lfs f1, lbl_80542FE4@sda21(r0)
    li 8, 0x1
    stfs 0, 0x60(3)
    li 7, 0x2
    .4byte 0xC002006C # lfs f0, lbl_8054300C@sda21(r0)
    li 6, 0x3
    stfs 1, 0x64(3)
    addi 5, 4, 0x304
    .4byte 0xC022003C # lfs f1, lbl_80542FDC@sda21(r0)
    li 4, 0x0
    stfs 0, 0x68(3)
    li 0, -0x1
    .4byte 0xC0020038 # lfs f0, lbl_80542FD8@sda21(r0)
    stfs 1, 0x6c(3)
    lfs 1, 0x60(3)
    stfs 1, 0x70(3)
    lfs 1, 0x64(3)
    stfs 1, 0x74(3)
    lfs 1, 0x68(3)
    stfs 1, 0x78(3)
    lfs 1, 0x6c(3)
    stfs 1, 0x7c(3)
    lfs 1, 0x60(3)
    stfs 1, 0x80(3)
    lfs 1, 0x64(3)
    stfs 1, 0x84(3)
    lfs 1, 0x68(3)
    stfs 1, 0x88(3)
    lfs 1, 0x6c(3)
    stfs 1, 0x8c(3)
    stw 8, 0xb8(3)
    stw 7, 0xf8(3)
    stw 6, 0xbc(3)
    stw 8, 0x1a4(3)
    stw 5, 0xb0(3)
    stw 4, 0x234(3)
    stfs 0, 0x23c(3)
    stfs 0, 0x238(3)
    stw 4, 0x230(3)
    stw 4, 0x240(3)
    stb 4, 0x250(3)
    stb 4, 0x251(3)
    stw 4, 0x244(3)
    stw 0, 0x248(3)
    stw 4, 0x24c(3)
    blr

fn_80378E54:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D400@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D400@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378EA4
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
L_80378EA4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378EDC
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
L_80378EDC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378F14
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
L_80378F14:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378F4C
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
L_80378F4C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378F84
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
L_80378F84:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378FBC
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
L_80378FBC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80378FF4
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
L_80378FF4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037902C
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
L_8037902C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379064
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
L_80379064:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80379078:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_803790BC
    lis 5, lbl_804AE8F4@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE8F4@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803790BC
    mr 3, 30
    bl dtor_80084580
L_803790BC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803790D8:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x44
    stw 31, 0x8c(1)
    mr 31, 3
    stw 0, 0x54(1)
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_80379164
L_80379104:
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
L_80379164:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80379104
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x54(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC0220070 # lfs f1, lbl_80543010@sda21(r0)
    stw 6, 0x58(1)
    lfs 0, lbl_80539D44@l(3)
    stw 6, 0x5c(1)
    fmuls 0, 1, 0
    stb 6, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stb 6, 0x67(1)
    stb 6, 0x68(1)
    stb 6, 0x69(1)
    stb 5, 0x6a(1)
    stw 4, 0x6c(1)
    stb 5, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stw 7, 0x74(1)
    stw 6, 0x78(1)
    stw 0, 0x7c(1)
    psq_l 2, 0x54(31), 0, 0
    lfs 3, 0x5c(31)
    ps_mul 2, 2, 2
    ps_madd 1, 3, 3, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820048 # beq .L_8037924C
    .4byte 0xC0220074 # lfs f1, lbl_80543014@sda21(r0)
    addi 0, 1, 0x14
    stfs 1, 0x20(1)
    stfs 1, 0x30(1)
    stfs 1, 0x40(1)
    lfs 2, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 1, 0x38(1)
    stfs 3, 0x3c(1)
    stw 0, 0x5c(1)
L_8037924C:
    lfs 1, 0xc(31)
    lis 3, lbl_804AE8E0@ha
    .4byte 0xC0020078 # lfs f0, lbl_80543018@sda21(r0)
    lis 5, 0x5449
    stfs 1, 0x8(1)
    addi 4, 3, lbl_804AE8E0@l
    fadds 0, 1, 0
    addi 3, 5, 0x4d47
    lfs 1, 0x10(31)
    stfs 1, 0xc(1)
    lfs 1, 0x14(31)
    stfs 1, 0x10(1)
    stfs 0, 0x8(1)
    lbz 0, 0x241(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_803792B4
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    addi 6, 1, 0x44
    lwz 3, 0x20(7)
    bl fn_802F745C
L_803792B4:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803792C8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 1, 0x8
    stw 30, 0x28(1)
    lfs 1, 0x60(31)
    stfs 1, 0x8(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc(1)
    lfs 2, 0x68(31)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x14(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 30, 0x198(31)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 30
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x41820188 # beq .L_803794EC
    .4byte 0x40800204 # bge .L_8037956C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8037937C
    .4byte 0x480001F8 # b .L_8037956C
    .4byte 0x480001F4 # b .L_8037956C
L_8037937C:
    lwz 3, 0x198(31)
    bl fn_80239108
    cmpwi 3, 0x1
    .4byte 0x41800158 # blt .L_803794E0
    lwz 3, 0x198(31)
    bl fn_80238BC4
    lbz 0, 0x240(31)
    mr 30, 3
    cmpw 0, 30
    .4byte 0x40820140 # bne .L_803794E0
    cmpwi 30, 0x0
    .4byte 0x41800138 # blt .L_803794E0
    cmpwi 30, 0x4
    .4byte 0x40800130 # bge .L_803794E0
    lbz 3, 0x242(31)
    addi 0, 3, 0x1
    stb 0, 0x242(31)
    lbz 0, 0x242(31)
    cmplwi 0, 0x14
    .4byte 0x418001A4 # blt .L_8037956C
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 27
    .4byte 0x40820018 # bne .L_803793EC
    bl GetRoomConfigRecord
    addi 0, 30, 0x1
    lwz 4, 0x16c(31)
    clrlwi 5, 0, 24
    bl fn_802D7584
L_803793EC:
    lwz 3, 0x198(31)
    bl fn_80238E08
    lbz 4, 0x243(31)
    lis 0, 0x4330
    lis 3, lbl_80475248@ha
    stw 0, 0x18(1)
    addi 0, 4, 0x1
    .4byte 0xC8220088 # lfd f1, lbl_80543028@sda21(r0)
    stb 0, 0x243(31)
    addi 3, 3, lbl_80475248@l
    lbz 0, 0x243(31)
    lbz 4, 0x241(31)
    stw 0, 0x1c(1)
    slwi 0, 4, 2
    lfd 0, 0x18(1)
    lfsx 2, 3, 0
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800020 # bge .L_80379454
    addi 0, 4, 0x1
    lis 4, 0x3
    stb 0, 0x241(31)
    mr 3, 31
    addi 4, 4, 0x4b
    li 5, 0x0
    bl fn_801F0E34
L_80379454:
    lbz 3, 0x243(31)
    lis 0, 0x4330
    .4byte 0xC0420080 # lfs f2, lbl_80543020@sda21(r0)
    srwi 3, 3, 2
    stw 0, 0x18(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220090 # lfd f1, lbl_80543030@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC062007C # lfs f3, lbl_8054301C@sda21(r0)
    lfd 0, 0x18(1)
    stfs 2, 0x60(31)
    fsubs 0, 0, 1
    .4byte 0xC0220084 # lfs f1, lbl_80543024@sda21(r0)
    stfs 2, 0x64(31)
    fsubs 0, 3, 0
    stfs 0, 0x68(31)
    stfs 1, 0x6c(31)
    lbz 0, 0x241(31)
    cmplwi 0, 0x3
    .4byte 0x408200CC # bne .L_8037956C
    stfs 2, 0x60(31)
    mr 3, 31
    .4byte 0xC0020074 # lfs f0, lbl_80543014@sda21(r0)
    li 4, 0xff
    stfs 2, 0x64(31)
    li 5, 0x1
    stfs 0, 0x68(31)
    stfs 1, 0x6c(31)
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x2
    stw 0, 0x23c(31)
    .4byte 0x48000090 # b .L_8037956C
L_803794E0:
    li 0, 0x0
    stb 0, 0x242(31)
    .4byte 0x48000084 # b .L_8037956C
L_803794EC:
    lbz 5, 0x241(31)
    lis 3, lbl_804751F8@ha
    li 4, 0x0
    addi 0, 5, 0x1
    addi 3, 3, lbl_804751F8@l
    stb 0, 0x241(31)
    stb 4, 0x242(31)
    lbz 0, 0x241(31)
    slwi 0, 0, 4
    lfsx 0, 3, 0
    add 3, 3, 0
    lfs 1, 0x4(3)
    stfs 0, 0x60(31)
    lfs 0, 0x8(3)
    stfs 1, 0x64(31)
    lfs 1, 0xc(3)
    stfs 0, 0x68(31)
    stfs 1, 0x6c(31)
    lbz 0, 0x241(31)
    cmplwi 0, 0x4
    .4byte 0x4082002C # bne .L_80379568
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x2
    stw 0, 0x23c(31)
    .4byte 0x48000008 # b .L_8037956C
L_80379568:
    stw 4, 0x23c(31)
L_8037956C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80379584:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0420080 # lfs f2, lbl_80543020@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC022007C # lfs f1, lbl_8054301C@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC0020084 # lfs f0, lbl_80543024@sda21(r0)
    li 3, 0x1
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    stb 3, 0x240(31)
    stw 0, 0x23c(31)
    stb 0, 0x243(31)
    stb 0, 0x242(31)
    stb 0, 0x241(31)
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 27
    .4byte 0x40820060 # bne .L_80379638
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    bl fn_802D7544
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80379638
    li 0, 0x3
    .4byte 0xC0420080 # lfs f2, lbl_80543020@sda21(r0)
    stb 0, 0x241(31)
    mr 3, 31
    .4byte 0xC0220074 # lfs f1, lbl_80543014@sda21(r0)
    li 4, 0xff
    stfs 2, 0x60(31)
    li 5, 0x1
    .4byte 0xC0020084 # lfs f0, lbl_80543024@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x2
    stw 0, 0x23c(31)
L_80379638:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037964C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D500@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D500@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037969C
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
L_8037969C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803796D4
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
L_803796D4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037970C
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
L_8037970C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379744
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
L_80379744:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037977C
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
L_8037977C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803797B4
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
L_803797B4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803797EC
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
L_803797EC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379824
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
L_80379824:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037985C
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
L_8037985C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80379870:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_803798B4
    lis 5, lbl_804AE948@ha
    li 4, 0x0
    addi 0, 5, lbl_804AE948@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803798B4
    mr 3, 30
    bl dtor_80084580
L_803798B4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803798D0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lfs 31, 0x60(3)
    lfs 0, 0xc(3)
    lfs 29, 0x68(3)
    lfs 30, 0x64(3)
    fadds 31, 31, 0
    lfs 1, 0x10(3)
    fadds 29, 29, 0
    lfs 28, 0x6c(3)
    fadds 30, 30, 1
    fadds 28, 28, 1
    bl SpatialRegistry_GetBase
    lwz 31, 0x1008(3)
    li 29, 0x0
    li 30, 0x0
    .4byte 0x480000FC # b .L_80379A44
L_8037994C:
    lwz 0, 0x198(28)
    cmpw 29, 0
    .4byte 0x418200E8 # beq .L_80379A3C
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80379974
    li 0, 0x0
    .4byte 0x480000BC # b .L_80379A2C
L_80379974:
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x484f
    cmplwi 0, 0x5553
    .4byte 0x41820010 # beq .L_80379990
    subis 0, 4, 0x4d52
    cmplwi 0, 0x5441
    .4byte 0x4082009C # bne .L_80379A28
L_80379990:
    lfs 2, 0x60(3)
    lfs 0, 0xc(3)
    lfs 4, 0x68(3)
    fadds 2, 2, 0
    lfs 3, 0x64(3)
    lfs 1, 0x10(3)
    fadds 4, 4, 0
    lfs 0, 0x6c(3)
    fcmpo cr0, 2, 31
    fadds 3, 3, 1
    fadds 0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803799C8
    fmr 2, 31
L_803799C8:
    fcmpo cr0, 3, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803799D8
    fmr 3, 30
L_803799D8:
    fcmpo cr0, 4, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_803799E8
    fmr 4, 29
L_803799E8:
    fcmpo cr0, 0, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_803799F8
    fmr 0, 28
L_803799F8:
    fcmpo cr0, 4, 2
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80379A18
    fcmpo cr0, 0, 3
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80379A18
    li 0, 0x1
L_80379A18:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80379A28
    li 0, 0x1
    .4byte 0x48000008 # b .L_80379A2C
L_80379A28:
    li 0, 0x0
L_80379A2C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80379A3C
    li 3, 0x1
    .4byte 0x48000018 # b .L_80379A50
L_80379A3C:
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_80379A44:
    cmpw 29, 31
    .4byte 0x4180FF04 # blt .L_8037994C
    li 3, 0x0
L_80379A50:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x64(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80379A90:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80379ACC
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_80379BC0
L_80379ACC:
    lwz 0, 0x230(30)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_80379AFC
    .4byte 0x4080006C # bge .L_80379B44
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80379AE8
    .4byte 0x48000060 # b .L_80379B44
L_80379AE8:
    mr 3, 30
    bl fn_803798D0
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_80379B44
    .4byte 0x480000C8 # b .L_80379BC0
L_80379AFC:
    psq_l 1, 0xc(30), 0, 0
    mr 3, 30
    lfs 0, 0x14(30)
    li 31, 0x0
    psq_st 1, 0x8(1), 0, 0
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0x10(1)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80379B2C
    li 31, 0x1
L_80379B2C:
    psq_l 1, 0x8(1), 0, 0
    clrlwi. 0, 31, 24
    lfs 0, 0x10(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x41820080 # beq .L_80379BC0
L_80379B44:
    lwz 4, 0x90(30)
    lis 3, lbl_80475340@ha
    lwz 0, 0x230(30)
    addi 5, 3, lbl_80475340@l
    clrlwi 4, 4, 30
    addi 3, 1, 0x14
    slwi 0, 0, 2
    add 0, 4, 0
    clrlslwi 0, 0, 24, 4
    add 4, 5, 0
    lfsx 1, 5, 0
    lfs 4, 0x4(4)
    lfs 2, 0x8(4)
    lfs 3, 0xc(4)
    stfs 1, 0x14(1)
    stfs 4, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 3, 0x20(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(30)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239914
L_80379BC0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80379BD8:
    stwu 1, -0x30(1)
    lwz 4, 0x90(3)
    extrwi 0, 4, 5, 5
    clrlwi 5, 4, 30
    stw 0, 0x230(3)
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820048 # beq .L_80379C3C
    .4byte 0x40800074 # bge .L_80379C6C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80379C08
    .4byte 0x48000068 # b .L_80379C6C
L_80379C08:
    lis 4, lbl_804752C0@ha
    clrlslwi 0, 5, 24, 4
    addi 4, 4, lbl_804752C0@l
    lfsx 0, 4, 0
    add 4, 4, 0
    lfs 1, 0x4(4)
    stfs 0, 0x60(3)
    lfs 0, 0x8(4)
    stfs 1, 0x64(3)
    lfs 1, 0xc(4)
    stfs 0, 0x68(3)
    stfs 1, 0x6c(3)
    .4byte 0x48000034 # b .L_80379C6C
L_80379C3C:
    lis 4, lbl_80475300@ha
    clrlslwi 0, 5, 24, 4
    addi 4, 4, lbl_80475300@l
    lfsx 0, 4, 0
    add 4, 4, 0
    lfs 1, 0x4(4)
    stfs 0, 0x60(3)
    lfs 0, 0x8(4)
    stfs 1, 0x64(3)
    lfs 1, 0xc(4)
    stfs 0, 0x68(3)
    stfs 1, 0x6c(3)
L_80379C6C:
    .4byte 0xC0020098 # lfs f0, lbl_80543038@sda21(r0)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lfs 0, 0x60(3)
    stfs 0, 0x80(3)
    lfs 0, 0x64(3)
    stfs 0, 0x84(3)
    lfs 0, 0x68(3)
    stfs 0, 0x88(3)
    lfs 0, 0x6c(3)
    stfs 0, 0x8c(3)
    lwz 0, 0x90(3)
    srwi 0, 0, 27
    stw 0, 0x234(3)
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x408200A8 # bne .L_80379D58
    lfs 0, 0xc(3)
    lis 0, 0x4330
    stw 0, 0x10(1)
    cmplwi 5, 0x2
    fctiwz 0, 0
    .4byte 0xC82200A0 # lfd f1, lbl_80543040@sda21(r0)
    stw 0, 0x20(1)
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 4, 0, 4
    addi 0, 4, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    srawi 0, 0, 4
    addze 0, 0
    slwi 4, 0, 4
    addi 0, 4, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x10(3)
    .4byte 0x40800018 # bge .L_80379D48
    lfs 1, 0xc(3)
    .4byte 0xC002009C # lfs f0, lbl_8054303C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(3)
    .4byte 0x48000014 # b .L_80379D58
L_80379D48:
    lfs 1, 0x10(3)
    .4byte 0xC002009C # lfs f0, lbl_8054303C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(3)
L_80379D58:
    addi 1, 1, 0x30
    blr

fn_80379D60:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D600@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D600@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379DB0
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
L_80379DB0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379DE8
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
L_80379DE8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379E20
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
L_80379E20:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379E58
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
L_80379E58:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379E90
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
L_80379E90:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379EC8
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
L_80379EC8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379F00
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
L_80379F00:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379F38
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
L_80379F38:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80379F70
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
L_80379F70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80379F84:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80379FEC
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_80379FEC
    .4byte 0x800D91A8 # lwz r0, lbl_8053AD68@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_80379FEC
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80379FEC
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    lbz 0, 0x4c0(3)
    cmplwi 0, 0x5
    .4byte 0x41820028 # beq .L_80379FEC
    clrlwi 0, 0, 24
    cmplwi 0, 0x8
    .4byte 0x4182001C # beq .L_80379FEC
    cmplwi 0, 0x7
    .4byte 0x41820014 # beq .L_80379FEC
    cmplwi 0, 0x9
    .4byte 0x4182000C # beq .L_80379FEC
    li 3, 0x1
    blr
L_80379FEC:
    li 3, 0x0
    blr

fn_80379FF4:
    lis 3, lbl_80529DEC@ha
    addi 6, 3, lbl_80529DEC@l
    lwz 7, 0x118(6)
    lwz 8, 0x11c(6)
    cmpwi 7, 0x8
    .4byte 0x4080005C # bge .L_8037A064
    cmpwi 8, 0x4
    .4byte 0x40800054 # bge .L_8037A064
    cmpwi 7, 0x0
    .4byte 0x4180004C # blt .L_8037A064
    cmpwi 7, 0x7
    .4byte 0x41810044 # bgt .L_8037A064
    cmpwi 8, 0x0
    .4byte 0x4180003C # blt .L_8037A064
    cmpwi 8, 0x3
    .4byte 0x41810034 # bgt .L_8037A064
    lis 3, lbl_8050EC80@ha
    slwi 0, 7, 2
    addi 5, 3, lbl_8050EC80@l
    li 3, 0x1
    lwz 4, 0x10(5)
    add 0, 8, 0
    slw 0, 3, 0
    mulli 3, 4, 0xc8
    add 4, 5, 3
    lwz 3, 0x28(4)
    or 0, 3, 0
    stw 0, 0x28(4)
L_8037A064:
    cmpwi 7, 0x8
    bgelr
    addi 3, 8, 0x1
    cmpwi 3, 0x3
    .4byte 0x40810020 # ble .L_8037A094
    addi 0, 7, 0x1
    li 3, 0x0
    cmpwi 0, 0x8
    .4byte 0x41800008 # blt .L_8037A08C
    li 0, 0x0
L_8037A08C:
    stw 0, 0x118(6)
    .4byte 0x48000088 # b .L_8037A118
L_8037A094:
    cmpwi 7, 0x0
    .4byte 0x4082000C # bne .L_8037A0A4
    cmpwi 3, 0x2
    .4byte 0x41820074 # beq .L_8037A114
L_8037A0A4:
    cmpwi 7, 0x1
    .4byte 0x4082000C # bne .L_8037A0B4
    cmpwi 3, 0x2
    .4byte 0x41820064 # beq .L_8037A114
L_8037A0B4:
    cmpwi 7, 0x2
    .4byte 0x4082000C # bne .L_8037A0C4
    cmpwi 3, 0x2
    .4byte 0x41820054 # beq .L_8037A114
L_8037A0C4:
    cmpwi 7, 0x3
    .4byte 0x4082000C # bne .L_8037A0D4
    cmpwi 3, 0x2
    .4byte 0x41820044 # beq .L_8037A114
L_8037A0D4:
    cmpwi 7, 0x4
    .4byte 0x4082000C # bne .L_8037A0E4
    cmpwi 3, 0x2
    .4byte 0x41820034 # beq .L_8037A114
L_8037A0E4:
    cmpwi 7, 0x5
    .4byte 0x4082000C # bne .L_8037A0F4
    cmpwi 3, 0x2
    .4byte 0x41820024 # beq .L_8037A114
L_8037A0F4:
    cmpwi 7, 0x6
    .4byte 0x4082000C # bne .L_8037A104
    cmpwi 3, 0x2
    .4byte 0x41820014 # beq .L_8037A114
L_8037A104:
    cmpwi 7, 0x7
    .4byte 0x40820010 # bne .L_8037A118
    cmpwi 3, 0x1
    .4byte 0x40820008 # bne .L_8037A118
L_8037A114:
    addi 3, 3, 0x1
L_8037A118:
    stw 3, 0x11c(6)
    blr

fn_8037A120:
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037A13C
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    lbz 3, 0x4c0(3)
    blr
L_8037A13C:
    lwz 0, 0x8(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037A154
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    lbz 3, 0x294(3)
    blr
L_8037A154:
    lwz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037A16C
    .4byte 0x806D9200 # lwz r3, lbl_8053ADC0@sda21(r0)
    lbz 3, 0x76(3)
    blr
L_8037A16C:
    li 3, 0x0
    blr

fn_8037A174:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x41820320 # beq .L_8037A4B0
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    lbz 0, 0x4c0(3)
    cmplwi 0, 0x5
    .4byte 0x408201A0 # bne .L_8037A340
    lbz 0, 0x1c(31)
    cmplwi 0, 0x5
    .4byte 0x41820008 # beq .L_8037A1B4
    bl fn_8037AA58
L_8037A1B4:
    bl fn_8037AA34
    bl fn_8037AA28
    clrlwi 0, 3, 24
    cmplwi 0, 0x1a
    .4byte 0x40820160 # bne .L_8037A324
    .4byte 0x808D91E0 # lwz r4, lbl_8053ADA0@sda21(r0)
    li 0, 0x8
    lis 3, lbl_80529DEC@ha
    stb 0, 0x4c0(4)
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8037A1F4
    lwz 4, 0x11c(3)
    cmpwi 4, 0x2
    .4byte 0x418200F8 # beq .L_8037A2E8
L_8037A1F4:
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_8037A210
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x418200DC # beq .L_8037A2E8
L_8037A210:
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8037A22C
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x418200C0 # beq .L_8037A2E8
L_8037A22C:
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_8037A248
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x418200A4 # beq .L_8037A2E8
L_8037A248:
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_8037A264
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x41820088 # beq .L_8037A2E8
L_8037A264:
    cmpwi 0, 0x5
    .4byte 0x40820018 # bne .L_8037A280
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x4182006C # beq .L_8037A2E8
L_8037A280:
    cmpwi 0, 0x6
    .4byte 0x40820018 # bne .L_8037A29C
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x41820050 # beq .L_8037A2E8
L_8037A29C:
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_8037A2B8
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x1
    .4byte 0x41820034 # beq .L_8037A2E8
L_8037A2B8:
    cmpwi 0, 0xa
    .4byte 0x40820018 # bne .L_8037A2D4
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x41820018 # beq .L_8037A2E8
L_8037A2D4:
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lbz 4, 0x237(4)
    cmplwi 4, 0x8
    .4byte 0x40820034 # bne .L_8037A318
L_8037A2E8:
    cmpwi 0, 0xa
    .4byte 0x40820054 # bne .L_8037A340
    lis 4, lbl_80529DEC@ha
    addi 5, 4, lbl_80529DEC@l
    lwz 0, 0x11c(5)
    cmpwi 0, 0x2
    .4byte 0x40820040 # bne .L_8037A340
    lwz 4, 0x120(5)
    lwz 0, 0x124(5)
    stw 4, 0x118(3)
    stw 0, 0x11c(5)
    .4byte 0x4800002C # b .L_8037A340
L_8037A318:
    mr 3, 31
    bl fn_80379FF4
    .4byte 0x48000020 # b .L_8037A340
L_8037A324:
    bl fn_8037AA28
    clrlwi 0, 3, 24
    cmplwi 0, 0x19
    .4byte 0x40820010 # bne .L_8037A340
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    li 0, 0x7
    stb 0, 0x4c0(3)
L_8037A340:
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    lbz 0, 0x4c0(3)
    stb 0, 0x1c(31)
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    bl fn_803A9830
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    lbz 0, 0x4c0(3)
    cmplwi 0, 0x9
    .4byte 0x40820150 # bne .L_8037A4B0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8037A384
    lwz 4, 0x11c(3)
    cmpwi 4, 0x2
    .4byte 0x418200F8 # beq .L_8037A478
L_8037A384:
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_8037A3A0
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x418200DC # beq .L_8037A478
L_8037A3A0:
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8037A3BC
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x418200C0 # beq .L_8037A478
L_8037A3BC:
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_8037A3D8
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x418200A4 # beq .L_8037A478
L_8037A3D8:
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_8037A3F4
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x41820088 # beq .L_8037A478
L_8037A3F4:
    cmpwi 0, 0x5
    .4byte 0x40820018 # bne .L_8037A410
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x4182006C # beq .L_8037A478
L_8037A410:
    cmpwi 0, 0x6
    .4byte 0x40820018 # bne .L_8037A42C
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x41820050 # beq .L_8037A478
L_8037A42C:
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_8037A448
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x1
    .4byte 0x41820034 # beq .L_8037A478
L_8037A448:
    cmpwi 0, 0xa
    .4byte 0x40820018 # bne .L_8037A464
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x11c(4)
    cmpwi 4, 0x2
    .4byte 0x41820018 # beq .L_8037A478
L_8037A464:
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lbz 4, 0x237(4)
    cmplwi 4, 0x8
    .4byte 0x40820034 # bne .L_8037A4A8
L_8037A478:
    cmpwi 0, 0xa
    .4byte 0x40820034 # bne .L_8037A4B0
    lis 4, lbl_80529DEC@ha
    addi 5, 4, lbl_80529DEC@l
    lwz 0, 0x11c(5)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8037A4B0
    lwz 4, 0x120(5)
    lwz 0, 0x124(5)
    stw 4, 0x118(3)
    stw 0, 0x11c(5)
    .4byte 0x4800000C # b .L_8037A4B0
L_8037A4A8:
    mr 3, 31
    bl fn_80379FF4
L_8037A4B0:
    lwz 0, 0x8(31)
    cmplwi 0, 0x0
    .4byte 0x41820094 # beq .L_8037A54C
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    lbz 0, 0x294(3)
    cmplwi 0, 0x5
    .4byte 0x40820070 # bne .L_8037A538
    lbz 0, 0x1c(31)
    cmplwi 0, 0x5
    .4byte 0x41820008 # beq .L_8037A4DC
    bl fn_8037AA58
L_8037A4DC:
    bl fn_8037AA34
    bl fn_8037AA28
    clrlwi 0, 3, 24
    cmplwi 0, 0x1a
    .4byte 0x40820030 # bne .L_8037A51C
    .4byte 0x808D91E8 # lwz r4, lbl_8053ADA8@sda21(r0)
    li 0, 0x8
    lis 3, lbl_80529DEC@ha
    stb 0, 0x294(4)
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x237(3)
    cmplwi 0, 0x8
    .4byte 0x4182002C # beq .L_8037A538
    mr 3, 31
    bl fn_80379FF4
    .4byte 0x48000020 # b .L_8037A538
L_8037A51C:
    bl fn_8037AA28
    clrlwi 0, 3, 24
    cmplwi 0, 0x19
    .4byte 0x40820010 # bne .L_8037A538
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    li 0, 0x7
    stb 0, 0x294(3)
L_8037A538:
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    lbz 0, 0x294(3)
    stb 0, 0x1c(31)
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    bl fn_803B7F6C
L_8037A54C:
    lwz 0, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8037A56C
    .4byte 0x806D9200 # lwz r3, lbl_8053ADC0@sda21(r0)
    lbz 0, 0x76(3)
    stb 0, 0x1c(31)
    .4byte 0x806D9200 # lwz r3, lbl_8053ADC0@sda21(r0)
    bl fn_803D8718
L_8037A56C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037A580:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8037A5D8
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    lbz 0, 0x4c0(3)
    cmplwi 0, 0x5
    .4byte 0x41820020 # beq .L_8037A5CC
    clrlwi 0, 0, 24
    cmplwi 0, 0x8
    .4byte 0x41820014 # beq .L_8037A5CC
    cmplwi 0, 0x7
    .4byte 0x4182000C # beq .L_8037A5CC
    bl fn_803A8F5C
    .4byte 0x48000010 # b .L_8037A5D8
L_8037A5CC:
    bl fn_8037AA7C
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    bl fn_803B31AC
L_8037A5D8:
    lwz 0, 0x8(31)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8037A614
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    lbz 0, 0x294(3)
    cmplwi 0, 0x5
    .4byte 0x41820018 # beq .L_8037A608
    clrlwi 0, 0, 24
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_8037A608
    cmplwi 0, 0x7
    .4byte 0x40820010 # bne .L_8037A614
L_8037A608:
    bl fn_8037AA7C
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    bl fn_803B7DCC
L_8037A614:
    lwz 0, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8037A650
    .4byte 0x806D9200 # lwz r3, lbl_8053ADC0@sda21(r0)
    lbz 0, 0x76(3)
    cmplwi 0, 0x2
    .4byte 0x41820018 # beq .L_8037A644
    clrlwi 0, 0, 24
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_8037A644
    cmplwi 0, 0x7
    .4byte 0x40820010 # bne .L_8037A650
L_8037A644:
    bl fn_803D8364
    .4byte 0x806D9200 # lwz r3, lbl_8053ADC0@sda21(r0)
    bl fn_803D82EC
L_8037A650:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037A664:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8037A6AC
    .4byte 0x806D91E0 # lwz r3, lbl_8053ADA0@sda21(r0)
    lbz 0, 0x4c0(3)
    cmplwi 0, 0x5
    .4byte 0x4182001C # beq .L_8037A6AC
    clrlwi 0, 0, 24
    cmplwi 0, 0x8
    .4byte 0x41820010 # beq .L_8037A6AC
    cmplwi 0, 0x7
    .4byte 0x41820008 # beq .L_8037A6AC
    bl fn_803A97A0
L_8037A6AC:
    lwz 0, 0x8(31)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8037A6E0
    .4byte 0x806D91E8 # lwz r3, lbl_8053ADA8@sda21(r0)
    lbz 0, 0x294(3)
    cmplwi 0, 0x5
    .4byte 0x4182001C # beq .L_8037A6E0
    clrlwi 0, 0, 24
    cmplwi 0, 0x8
    .4byte 0x41820010 # beq .L_8037A6E0
    cmplwi 0, 0x7
    .4byte 0x41820008 # beq .L_8037A6E0
    bl fn_803B7E64
L_8037A6E0:
    lwz 0, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037A6F4
    .4byte 0x806D9200 # lwz r3, lbl_8053ADC0@sda21(r0)
    bl fn_803D8670
L_8037A6F4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037A708:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8037A72C
    bl fn_803B6768
L_8037A72C:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8037A73C
    bl fn_803B8188
L_8037A73C:
    lwz 3, 0xc(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8037A74C
    bl fn_803D87C0
L_8037A74C:
    li 0, 0x0
    stb 0, 0x1c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037A768:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr. 30, 3
    stw 29, 0x14(1)
    .4byte 0x4182012C # beq .L_8037A8B4
    lis 4, lbl_804AE9A0@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804AE9A0@l
    stw 0, 0x0(30)
    addi 29, 3, lbl_80529DEC@l
    lwz 3, 0x8(29)
    bl fn_80083A68
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x242(3)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8037A7E4
    .4byte 0x41820018 # beq .L_8037A7DC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8037A7DC:
    li 0, 0x0
    stw 0, 0x4(30)
L_8037A7E4:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8037A810
    .4byte 0x41820018 # beq .L_8037A808
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8037A808:
    li 0, 0x0
    stw 0, 0x8(30)
L_8037A810:
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8037A83C
    .4byte 0x41820018 # beq .L_8037A834
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8037A834:
    li 0, 0x0
    stw 0, 0xc(30)
L_8037A83C:
    lwz 3, 0x8(29)
    bl fn_80083A68
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8037A864
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8037A864:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x14(30)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8037A89C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8037A89C:
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D91A8 # stw r3, lbl_8053AD68@sda21(r0)
    .4byte 0x4081000C # ble .L_8037A8B4
    mr 3, 30
    bl dtor_80084580
L_8037A8B4:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8037A8D4:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_804AE9A0@ha
    lis 4, lbl_80529DEC@ha
    stw 0, 0x24(1)
    addi 0, 5, lbl_804AE9A0@l
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    addi 30, 4, lbl_80529DEC@l
    stw 29, 0x14(1)
    stw 0, 0x0(3)
    lwz 3, 0x8(30)
    bl fn_80083A68
    .4byte 0x93ED91A8 # stw r31, lbl_8053AD68@sda21(r0)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    bl fn_80158B3C
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 4, 3, lbl_80529DEC@l
    lwz 3, 0x38(4)
    stw 3, 0x14(31)
    stw 0, 0x18(31)
    stb 0, 0x1d(31)
    stb 0, 0x1e(31)
    stw 0, 0x4(31)
    stw 0, 0x8(31)
    stw 0, 0xc(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_8037A9BC
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8037A990
    lwz 0, 0x44(4)
    li 3, 0x4e0
    stw 0, 0x18(31)
    lwz 0, 0x18(31)
    stw 0, 0x3c(4)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_8037A988
    bl fn_803B6FD8
L_8037A988:
    stw 29, 0x4(31)
    .4byte 0x48000048 # b .L_8037A9D4
L_8037A990:
    lwz 0, 0x40(4)
    li 3, 0x2a0
    stw 0, 0x18(31)
    lwz 0, 0x18(31)
    stw 0, 0x3c(4)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_8037A9B4
    bl fn_803B8414
L_8037A9B4:
    stw 29, 0x8(31)
    .4byte 0x4800001C # b .L_8037A9D4
L_8037A9BC:
    li 3, 0x84
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_8037A9D0
    bl fn_803D901C
L_8037A9D0:
    stw 29, 0xc(31)
L_8037A9D4:
    lwz 3, 0x8(30)
    bl fn_80083A68
    li 3, 0x2180
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820014 # beq .L_8037A9FC
    .4byte 0x808D91A8 # lwz r4, lbl_8053AD68@sda21(r0)
    li 5, 0x1
    lwz 4, 0x14(4)
    bl fn_803D58E0
L_8037A9FC:
    stw 29, 0x10(31)
    li 0, 0x0
    mr 3, 31
    stb 0, 0x1c(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8037AA28:
    .4byte 0x806D91F8 # lwz r3, lbl_8053ADB8@sda21(r0)
    lbz 3, 0x216c(3)
    blr

fn_8037AA34:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D91F8 # lwz r3, lbl_8053ADB8@sda21(r0)
    bl fn_803D5090
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AA58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D91F8 # lwz r3, lbl_8053ADB8@sda21(r0)
    bl fn_803D5554
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AA7C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D91F8 # lwz r3, lbl_8053ADB8@sda21(r0)
    bl fn_803D521C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AAA0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D700@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D700@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037AAF0
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
L_8037AAF0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037AB28
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
L_8037AB28:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037AB60
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
L_8037AB60:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037AB98
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
L_8037AB98:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037ABD0
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
L_8037ABD0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037AC08
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
L_8037AC08:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037AC40
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
L_8037AC40:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037AC78
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
L_8037AC78:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037ACB0
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
L_8037ACB0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037ACC4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037ACEC
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_8044CB00
    .4byte 0x48000008 # b .L_8037ACF0
L_8037ACEC:
    li 3, 0x0
L_8037ACF0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AD00:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037AD24
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_8044CB08
L_8037AD24:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AD34:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037AD5C
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_8044D290
    .4byte 0x48000008 # b .L_8037AD60
L_8037AD5C:
    li 3, 0x0
L_8037AD60:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AD70:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037AD94
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_8044D298
L_8037AD94:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037ADA4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037ADC8
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_8044D894
L_8037ADC8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037ADD8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037ADF4
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    lbz 3, 0x13f(3)
    blr
L_8037ADF4:
    .4byte 0x806D9388 # lwz r3, lbl_8053AF48@sda21(r0)
    lbz 3, 0x54(3)
    blr

fn_8037AE00:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8037AE20
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    li 0, 0x0
    stb 0, 0x13f(3)
    blr
L_8037AE20:
    .4byte 0x806D9388 # lwz r3, lbl_8053AF48@sda21(r0)
    li 0, 0x0
    stb 0, 0x54(3)
    blr

fn_8037AE30:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8037AE50
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    li 0, 0x1
    stb 0, 0x13f(3)
    blr
L_8037AE50:
    .4byte 0x806D9388 # lwz r3, lbl_8053AF48@sda21(r0)
    li 0, 0x1
    stb 0, 0x54(3)
    blr

fn_8037AE60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x800D91B0 # lwz r0, lbl_8053AD70@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8037AE98
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037AE90
    bl fn_8044F664
    .4byte 0x48000010 # b .L_8037AE9C
L_8037AE90:
    bl fn_80453AF8
    .4byte 0x48000008 # b .L_8037AE9C
L_8037AE98:
    li 3, 0x9
L_8037AE9C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AEAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8037AEE4
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_8044F680
    mr 31, 3
    .4byte 0x48000010 # b .L_8037AEF0
L_8037AEE4:
    .4byte 0x806D9388 # lwz r3, lbl_8053AF48@sda21(r0)
    bl fn_80453B14
    mr 31, 3
L_8037AEF0:
    .4byte 0x800D91B0 # lwz r0, lbl_8053AD70@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8037AF1C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037AF14
    bl fn_8044F664
    .4byte 0x48000010 # b .L_8037AF20
L_8037AF14:
    bl fn_80453AF8
    .4byte 0x48000008 # b .L_8037AF20
L_8037AF1C:
    li 3, 0x9
L_8037AF20:
    cmpwi 3, 0x9
    .4byte 0x4182000C # beq .L_8037AF30
    li 0, 0x0
    stb 0, 0xc(30)
L_8037AF30:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AF4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037AF70
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_804522C8
L_8037AF70:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AF80:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037AFA8
    .4byte 0x806D9380 # lwz r3, lbl_8053AF40@sda21(r0)
    bl fn_80452308
    .4byte 0x4800000C # b .L_8037AFB0
L_8037AFA8:
    .4byte 0x806D9388 # lwz r3, lbl_8053AF48@sda21(r0)
    bl fn_80454A00
L_8037AFB0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037AFC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037AFE8
    lwz 3, 0x4(3)
    bl fn_80452350
    .4byte 0x4800000C # b .L_8037AFF0
L_8037AFE8:
    lwz 3, 0x8(3)
    bl fn_80454A6C
L_8037AFF0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037B000:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820080 # beq .L_8037B09C
    lis 3, lbl_804AE9B0@ha
    addi 0, 3, lbl_804AE9B0@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8037B058
    .4byte 0x41820018 # beq .L_8037B050
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8037B050:
    li 0, 0x0
    stw 0, 0x4(30)
L_8037B058:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8037B084
    .4byte 0x41820018 # beq .L_8037B07C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8037B07C:
    li 0, 0x0
    stw 0, 0x8(30)
L_8037B084:
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D91B0 # stw r3, lbl_8053AD70@sda21(r0)
    .4byte 0x4081000C # ble .L_8037B09C
    mr 3, 30
    bl dtor_80084580
L_8037B09C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037B0B8:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804AE9B0@ha
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_804AE9B0@l
    stw 30, 0x8(1)
    stw 3, 0x0(31)
    .4byte 0x93ED91B0 # stw r31, lbl_8053AD70@sda21(r0)
    stw 0, 0x4(31)
    stw 0, 0x8(31)
    stb 0, 0xc(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8037B11C
    li 3, 0x188
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_8037B114
    bl fn_80452A80
L_8037B114:
    stw 30, 0x4(31)
    .4byte 0x4800001C # b .L_8037B134
L_8037B11C:
    li 3, 0x5c
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_8037B130
    bl fn_80454DEC
L_8037B130:
    stw 30, 0x8(31)
L_8037B134:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037B150:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8050D800@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8050D800@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B1A0
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
L_8037B1A0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B1D8
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
L_8037B1D8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B210
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
L_8037B210:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B248
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
L_8037B248:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B280
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
L_8037B280:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B2B8
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
L_8037B2B8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B2F0
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
L_8037B2F0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B328
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
L_8037B328:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037B360
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
L_8037B360:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037B374:
    lis 6, 0x5555
    psq_l 1, 0x0(4), 0, 0
    addi 0, 6, 0x5556
    lfs 0, 0x8(4)
    mulhw 5, 0, 5
    psq_st 1, 0xc(3), 0, 0
    li 0, 0x1
    stfs 0, 0x14(3)
    srwi 4, 5, 31
    add 4, 5, 4
    stw 4, 0x248(3)
    stb 0, 0x273(3)
    blr

fn_8037B3A8:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 5, 0x238(3)
    .4byte 0x388D864C # li r4, lbl_8053A20C@sda21
    addi 0, 5, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    lbzx 0, 4, 0
    stw 0, 0x234(3)
    blr

fn_8037B3E0:
    stwu 1, -0x20(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x40800088 # bge .L_8037B474
    lwz 0, 0x234(3)
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_8037B408
    li 0, 0x1
    stw 0, 0x238(3)
    .4byte 0x4800007C # b .L_8037B480
L_8037B408:
    cmpwi 0, 0x0
    .4byte 0x41810074 # bgt .L_8037B480
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 4, 4, 0x660d
    .4byte 0xC00200B4 # lfs f0, lbl_80543054@sda21(r0)
    lwz 5, 0xb4(6)
    li 0, 0x0
    .4byte 0xC04200B0 # lfs f2, lbl_80543050@sda21(r0)
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
    addi 4, 4, 0x28
    stw 4, 0x234(3)
    stw 0, 0x238(3)
    .4byte 0x48000010 # b .L_8037B480
L_8037B474:
    li 0, 0x0
    stw 0, 0x234(3)
    stw 0, 0x238(3)
L_8037B480:
    addi 1, 1, 0x20
    blr

fn_8037B488:
    lwz 0, 0x234(3)
    cmpwi 0, 0x19
    .4byte 0x40820010 # bne .L_8037B4A0
    li 0, 0x1
    stw 0, 0x238(3)
    blr
L_8037B4A0:
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_8037B4B4
    li 0, 0x2
    stw 0, 0x238(3)
    blr
L_8037B4B4:
    cmpwi 0, 0x0
    bgtlr
    li 4, 0x1e
    li 0, 0x0
    stw 4, 0x234(3)
    stw 0, 0x238(3)
    blr

fn_8037B4D0:
    lwz 0, 0x234(3)
    cmpwi 0, 0x23
    .4byte 0x40820010 # bne .L_8037B4E8
    li 0, 0x1
    stw 0, 0x238(3)
    blr
L_8037B4E8:
    cmpwi 0, 0x14
    .4byte 0x40820010 # bne .L_8037B4FC
    li 0, 0x2
    stw 0, 0x238(3)
    blr
L_8037B4FC:
    cmpwi 0, 0x12
    .4byte 0x40820010 # bne .L_8037B510
    li 0, 0x0
    stw 0, 0x238(3)
    blr
L_8037B510:
    cmpwi 0, 0x11
    .4byte 0x40820010 # bne .L_8037B524
    li 0, 0x1
    stw 0, 0x238(3)
    blr
L_8037B524:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8037B538
    li 0, 0x2
    stw 0, 0x238(3)
    blr
L_8037B538:
    cmpwi 0, 0x0
    bgtlr
    li 4, 0x0
    li 0, 0x37
    stw 4, 0x238(3)
    stw 0, 0x234(3)
    blr

fn_8037B554:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 6, 0x23c(3)
    .4byte 0x38AD8640 # li r5, lbl_8053A200@sda21
    .4byte 0x388D8644 # li r4, lbl_8053A204@sda21
    addi 0, 6, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    clrlwi 0, 0, 30
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    lbzx 0, 5, 0
    stw 0, 0x234(3)
    lwz 6, 0x248(3)
    lwz 0, 0x23c(3)
    srwi 5, 6, 31
    add 5, 5, 6
    srawi 5, 5, 1
    slwi 5, 5, 2
    add 0, 5, 0
    lbzx 0, 4, 0
    stw 0, 0x238(3)
    blr

fn_8037B5B4:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 6, 0x23c(3)
    .4byte 0x38AD8638 # li r5, lbl_8053A1F8@sda21
    .4byte 0x388D863C # li r4, lbl_8053A1FC@sda21
    addi 0, 6, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    clrlwi 0, 0, 30
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    lbzx 0, 5, 0
    stw 0, 0x234(3)
    lwz 0, 0x23c(3)
    lbzx 0, 4, 0
    stw 0, 0x238(3)
    blr

fn_8037B5FC:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 5, 0x238(3)
    .4byte 0x388D8634 # li r4, lbl_8053A1F4@sda21
    addi 0, 5, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    lbzx 0, 4, 0
    stw 0, 0x234(3)
    blr

fn_8037B634:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 6, 0x23c(3)
    .4byte 0x38AD862C # li r5, lbl_8053A1EC@sda21
    .4byte 0x388D8630 # li r4, lbl_8053A1F0@sda21
    addi 0, 6, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    clrlwi 0, 0, 30
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    lbzx 0, 5, 0
    stw 0, 0x234(3)
    lwz 0, 0x23c(3)
    lbzx 0, 4, 0
    stw 0, 0x238(3)
    blr

fn_8037B67C:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 6, 0x23c(3)
    .4byte 0x38AD8624 # li r5, lbl_8053A1E4@sda21
    .4byte 0x388D8628 # li r4, lbl_8053A1E8@sda21
    addi 0, 6, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    clrlwi 0, 0, 30
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    lbzx 0, 5, 0
    stw 0, 0x234(3)
    lwz 0, 0x23c(3)
    lbzx 0, 4, 0
    stw 0, 0x238(3)
    blr

fn_8037B6C4:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 6, 0x23c(3)
    .4byte 0x38AD861C # li r5, lbl_8053A1DC@sda21
    .4byte 0x388D8620 # li r4, lbl_8053A1E0@sda21
    addi 0, 6, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    clrlwi 0, 0, 30
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    lbzx 0, 5, 0
    stw 0, 0x234(3)
    lwz 0, 0x23c(3)
    lbzx 0, 4, 0
    stw 0, 0x238(3)
    blr

fn_8037B70C:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 5, 0x238(3)
    .4byte 0x388D8618 # li r4, lbl_8053A1D8@sda21
    addi 0, 5, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    lbzx 0, 4, 0
    stw 0, 0x234(3)
    blr

fn_8037B744:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 6, 0x23c(3)
    .4byte 0x38AD8610 # li r5, lbl_8053A1D0@sda21
    .4byte 0x388D8614 # li r4, lbl_8053A1D4@sda21
    addi 0, 6, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    clrlwi 0, 0, 30
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    lbzx 0, 5, 0
    stw 0, 0x234(3)
    lwz 0, 0x23c(3)
    lbzx 0, 4, 0
    stw 0, 0x238(3)
    blr

fn_8037B78C:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 0, 0x23c(3)
    stw 0, 0x234(3)
    lwz 4, 0x238(3)
    addi 0, 4, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    clrlwi 0, 0, 29
    stw 0, 0x238(3)
    blr

fn_8037B7BC:
    lwz 0, 0x234(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 0, 0x23c(3)
    stw 0, 0x234(3)
    lwz 4, 0x238(3)
    addi 0, 4, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    clrlwi 0, 0, 31
    stw 0, 0x238(3)
    blr

fn_8037B7EC:
    li 0, 0x0
    stw 0, 0x238(3)
    blr

fn_8037B7F8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    mr 30, 3
    lis 3, lbl_804753C0@ha
    lwz 0, 0x230(30)
    addi 31, 3, lbl_804753C0@l
    cmpwi 0, 0x5
    .4byte 0x40820034 # bne .L_8037B854
    lwz 3, 0x274(30)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_8037B854
    lwz 4, 0x244(30)
    bl fn_80316E74
    mr 4, 3
    addis 0, 4, 0x1
    cmplwi 0, 0xffff
    .4byte 0x41820010 # beq .L_8037B854
    mr 3, 30
    li 5, 0x0
    bl fn_801F0E34
L_8037B854:
    lwz 0, 0x230(30)
    cmpwi 0, 0x4
    .4byte 0x418203BC # beq .L_8037BC18
    lwz 3, 0x258(30)
    cmpwi 3, 0x15
    .4byte 0x418203B0 # beq .L_8037BC18
    cmpwi 3, 0x11
    .4byte 0x40820030 # bne .L_8037B8A0
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_8037B8A0
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    mr 3, 30
    addi 4, 31, 0x188
    li 5, 0x2b1
    fmr 2, 1
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
    .4byte 0x4800037C # b .L_8037BC18
L_8037B8A0:
    subi 0, 3, 0x12
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8037B8B4
    cmpwi 3, 0x14
    .4byte 0x40820144 # bne .L_8037B9F4
L_8037B8B4:
    li 0, -0x1
    addi 9, 1, 0x10
    stw 0, 0x20(1)
    li 10, 0x0
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_8037B92C
L_8037B8CC:
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
L_8037B92C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8037B8CC
    li 10, 0x0
    li 9, 0x1
    li 11, -0x1
    li 8, 0x3
    li 0, 0x2
    stw 11, 0x20(1)
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    addi 5, 31, 0xd8
    stw 10, 0x24(1)
    mr 3, 30
    fmr 2, 1
    addi 4, 31, 0x188
    stw 10, 0x28(1)
    addi 6, 1, 0x10
    li 7, 0x7
    stb 10, 0x2c(1)
    stb 10, 0x2d(1)
    stb 10, 0x2e(1)
    stb 9, 0x2f(1)
    stb 9, 0x30(1)
    stb 10, 0x31(1)
    stb 10, 0x32(1)
    stb 10, 0x33(1)
    stb 10, 0x34(1)
    stb 10, 0x35(1)
    stb 9, 0x36(1)
    stw 8, 0x38(1)
    stb 9, 0x3c(1)
    stb 10, 0x3d(1)
    stb 10, 0x3e(1)
    stw 11, 0x40(1)
    stw 10, 0x44(1)
    stw 0, 0x48(1)
    lbz 0, 0x270(30)
    stb 0, 0x23(1)
    lwz 8, 0x264(30)
    lwz 0, 0x248(30)
    slwi 8, 8, 4
    lwz 9, 0x238(30)
    slwi 0, 0, 2
    lwz 10, 0x25c(30)
    add 0, 8, 0
    lwzx 0, 5, 0
    add 5, 9, 0
    add 5, 10, 5
    bl fn_801F06F0
    .4byte 0x48000228 # b .L_8037BC18
L_8037B9F4:
    cmpwi 3, 0x23
    .4byte 0x4082008C # bne .L_8037BA84
    lwz 3, 0x274(30)
    cmplwi 3, 0x0
    .4byte 0x41820080 # beq .L_8037BA84
    bl fn_80316E34
    cmpwi 3, 0x0
    .4byte 0x41800074 # blt .L_8037BA84
    lwz 3, 0x274(30)
    bl fn_80316E34
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    mr 5, 3
    lwz 0, 0x25c(30)
    mr 3, 30
    fmr 2, 1
    addi 4, 31, 0x19c
    add 5, 0, 5
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
    lwz 3, 0x274(30)
    bl fn_80316E34
    lwz 4, 0x25c(30)
    li 0, 0x0
    addi 5, 30, 0xc
    li 7, 0x0
    stw 0, 0x8(1)
    add 6, 4, 3
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    bl fn_803075AC
    .4byte 0x48000198 # b .L_8037BC18
L_8037BA84:
    lwz 0, 0x260(30)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_8037BADC
    lwz 5, 0x264(30)
    addi 4, 31, 0xd8
    lwz 0, 0x248(30)
    mr 3, 30
    slwi 5, 5, 4
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    slwi 0, 0, 2
    lwz 7, 0x238(30)
    add 0, 5, 0
    fmr 2, 1
    lwzx 0, 4, 0
    addi 4, 31, 0x188
    lwz 8, 0x25c(30)
    li 6, 0x0
    add 5, 7, 0
    add 5, 8, 5
    li 7, -0x1
    bl fn_801F06F0
    .4byte 0x48000140 # b .L_8037BC18
L_8037BADC:
    cmpwi 0, 0x1
    .4byte 0x40820098 # bne .L_8037BB78
    lwz 5, 0x264(30)
    addi 4, 31, 0xd8
    lwz 0, 0x248(30)
    mr 3, 30
    slwi 5, 5, 4
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    slwi 0, 0, 2
    lwz 7, 0x238(30)
    add 0, 5, 0
    fmr 2, 1
    lwzx 0, 4, 0
    addi 4, 31, 0x1b0
    lwz 8, 0x25c(30)
    li 6, 0x0
    add 5, 7, 0
    add 5, 8, 5
    li 7, 0x7
    bl fn_801F06F0
    lwz 3, 0x264(30)
    addi 4, 31, 0xd8
    lwz 0, 0x248(30)
    addi 5, 30, 0xc
    slwi 3, 3, 4
    lwz 6, 0x238(30)
    slwi 0, 0, 2
    lwz 10, 0x25c(30)
    add 0, 3, 0
    lwz 3, 0x198(30)
    lwzx 0, 4, 0
    li 7, 0x0
    lwz 4, 0x4(30)
    li 8, 0x0
    add 6, 6, 0
    li 9, -0x1
    add 6, 10, 6
    bl fn_80307AC8
    .4byte 0x480000A4 # b .L_8037BC18
L_8037BB78:
    lwz 5, 0x264(30)
    addi 4, 31, 0xd8
    lwz 0, 0x248(30)
    mr 3, 30
    slwi 5, 5, 4
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    slwi 0, 0, 2
    lwz 7, 0x238(30)
    add 0, 5, 0
    fmr 2, 1
    lwzx 0, 4, 0
    addi 4, 31, 0x19c
    lwz 8, 0x25c(30)
    li 6, 0x0
    add 5, 7, 0
    add 5, 8, 5
    li 7, 0x7
    bl fn_801F06F0
    li 0, 0x0
    addi 4, 31, 0xd8
    stw 0, 0x8(1)
    addi 5, 30, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x264(30)
    lwz 0, 0x248(30)
    slwi 3, 3, 4
    lwz 6, 0x238(30)
    slwi 0, 0, 2
    lwz 11, 0x25c(30)
    add 0, 3, 0
    lwz 3, 0x198(30)
    lwzx 0, 4, 0
    lwz 4, 0x4(30)
    add 6, 6, 0
    add 6, 11, 6
    bl fn_803075AC
L_8037BC18:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8037BC30:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stw 31, 0x9c(1)
    li 31, 0x0
    stw 30, 0x98(1)
    li 30, 0x0
    stw 29, 0x94(1)
    mr 29, 3
    stw 28, 0x90(1)
    lfs 1, 0x60(3)
    stfs 1, 0x6c(1)
    lfs 4, 0x64(3)
    stfs 4, 0x70(1)
    lfs 2, 0x68(3)
    stfs 2, 0x74(1)
    lfs 3, 0x6c(3)
    stfs 3, 0x78(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x6c(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x74(1)
    fadds 0, 3, 2
    stfs 1, 0x70(1)
    stfs 0, 0x78(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x4182001C # beq .L_8037BCC4
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_8037BCC4
    lwz 4, 0x4(29)
    addi 3, 1, 0x6c
    lwz 5, 0x198(29)
    bl fn_80239914
L_8037BCC4:
    lwz 0, 0x258(29)
    cmpwi 0, 0x4
    .4byte 0x40820048 # bne .L_8037BD14
    lbz 0, 0x273(29)
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_8037BD14
    li 0, 0x0
    lis 3, lbl_804AEC48@ha
    stb 0, 0x273(29)
    addi 0, 3, lbl_804AEC48@l
    mr 3, 29
    lwz 4, 0x234(29)
    subi 4, 4, 0x1
    stw 4, 0x234(29)
    lwz 4, 0x258(29)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    .4byte 0x48000A58 # b .L_8037C768
L_8037BD14:
    lbz 0, 0x272(29)
    cmplwi 0, 0x1
    .4byte 0x408200B4 # bne .L_8037BDD0
    lwz 0, 0x268(29)
    cmpwi 0, 0x1
    .4byte 0x4082003C # bne .L_8037BD64
    .4byte 0xC06200B8 # lfs f3, lbl_80543058@sda21(r0)
    lfs 0, 0x6c(29)
    lfs 2, 0x68(29)
    lfs 1, 0x64(29)
    fadds 4, 3, 0
    lfs 0, 0x60(29)
    fadds 2, 3, 2
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    stfs 4, 0x68(1)
    stfs 1, 0x60(1)
    stfs 0, 0x5c(1)
    stfs 2, 0x64(1)
    .4byte 0x48000130 # b .L_8037BE90
L_8037BD64:
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_8037BD90
    lfs 0, 0x60(29)
    stfs 0, 0x5c(1)
    lfs 0, 0x64(29)
    stfs 0, 0x60(1)
    lfs 0, 0x68(29)
    stfs 0, 0x64(1)
    lfs 0, 0x6c(29)
    stfs 0, 0x68(1)
    .4byte 0x48000104 # b .L_8037BE90
L_8037BD90:
    cmpwi 0, 0x3
    .4byte 0x408200FC # bne .L_8037BE90
    .4byte 0xC06200BC # lfs f3, lbl_8054305C@sda21(r0)
    lfs 0, 0x6c(29)
    lfs 2, 0x68(29)
    lfs 1, 0x64(29)
    fadds 4, 3, 0
    lfs 0, 0x60(29)
    fadds 2, 3, 2
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    stfs 4, 0x68(1)
    stfs 1, 0x60(1)
    stfs 0, 0x5c(1)
    stfs 2, 0x64(1)
    .4byte 0x480000C4 # b .L_8037BE90
L_8037BDD0:
    lwz 0, 0x268(29)
    cmpwi 0, 0x1
    .4byte 0x4082003C # bne .L_8037BE14
    .4byte 0xC06200C0 # lfs f3, lbl_80543060@sda21(r0)
    lfs 0, 0x6c(29)
    lfs 2, 0x68(29)
    lfs 1, 0x64(29)
    fadds 4, 3, 0
    lfs 0, 0x60(29)
    fadds 2, 3, 2
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    stfs 4, 0x68(1)
    stfs 1, 0x60(1)
    stfs 0, 0x5c(1)
    stfs 2, 0x64(1)
    .4byte 0x48000080 # b .L_8037BE90
L_8037BE14:
    cmpwi 0, 0x2
    .4byte 0x4082003C # bne .L_8037BE54
    .4byte 0xC06200C4 # lfs f3, lbl_80543064@sda21(r0)
    lfs 0, 0x6c(29)
    lfs 2, 0x68(29)
    lfs 1, 0x64(29)
    fadds 4, 3, 0
    lfs 0, 0x60(29)
    fadds 2, 3, 2
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    stfs 4, 0x68(1)
    stfs 1, 0x60(1)
    stfs 0, 0x5c(1)
    stfs 2, 0x64(1)
    .4byte 0x48000040 # b .L_8037BE90
L_8037BE54:
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_8037BE90
    .4byte 0xC06200C8 # lfs f3, lbl_80543068@sda21(r0)
    lfs 0, 0x6c(29)
    lfs 2, 0x68(29)
    lfs 1, 0x64(29)
    fadds 4, 3, 0
    lfs 0, 0x60(29)
    fadds 2, 3, 2
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    stfs 4, 0x68(1)
    stfs 1, 0x60(1)
    stfs 0, 0x5c(1)
    stfs 2, 0x64(1)
L_8037BE90:
    lfs 0, 0x5c(1)
    lfs 4, 0xc(29)
    lfs 1, 0x64(1)
    fadds 3, 0, 4
    lfs 2, 0x60(1)
    lfs 0, 0x68(1)
    fadds 1, 1, 4
    stfs 3, 0x5c(1)
    lfs 3, 0x10(29)
    fadds 2, 2, 3
    stfs 1, 0x64(1)
    fadds 0, 0, 3
    stfs 2, 0x60(1)
    stfs 0, 0x68(1)
    lwz 0, 0x230(29)
    cmpwi 0, 0x2
    .4byte 0x40820034 # bne .L_8037BF04
    psq_l 2, 0xc(29), 0, 0
    psq_l 1, 0x3c(29), 0, 0
    .4byte 0xC00200CC # lfs f0, lbl_8054306C@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(29), 0, 0
    psq_l 2, 0x14(29), 1, 0
    psq_l 1, 0x44(29), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(29), 1, 0
    lfs 1, 0x44(29)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
L_8037BF04:
    lwz 0, 0x230(29)
    cmplwi 0, 0x6
    .4byte 0x41810700 # bgt .L_8037C60C
    lis 3, jumptable_804AEF24@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AEF24@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8037BF40
    li 0, 0x1
    stw 0, 0x230(29)
    .4byte 0x4800000C # b .L_8037BF48
L_8037BF40:
    li 0, 0x3
    stw 0, 0x230(29)
L_8037BF48:
    lwz 0, 0x258(29)
    cmpwi 0, 0x12
    .4byte 0x41820014 # beq .L_8037BF64
    cmpwi 0, 0x13
    .4byte 0x4182000C # beq .L_8037BF64
    cmpwi 0, 0x14
    .4byte 0x408206AC # bne .L_8037C60C
L_8037BF64:
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    li 5, 0x1fe
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x278(29)
    .4byte 0x4800067C # b .L_8037C60C
    li 28, 0x0
L_8037BF98:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 28
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8037BFEC
    mr 3, 28
    addi 30, 30, 0x1
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8037BFE8
    mr 3, 28
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8037BFEC
L_8037BFE8:
    addi 31, 31, 0x1
L_8037BFEC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA4 # blt .L_8037BF98
    cmpw 31, 30
    .4byte 0x40820610 # bne .L_8037C60C
    li 0, 0x1
    stw 0, 0x230(29)
    .4byte 0x48000604 # b .L_8037C60C
    lwz 3, 0x4(29)
    cmpwi 3, 0x8
    .4byte 0x40800070 # bge .L_8037C084
    lfs 0, 0xc(29)
    addi 4, 1, 0x50
    .4byte 0xC04200D0 # lfs f2, lbl_80543070@sda21(r0)
    li 5, 0x17d
    stfs 0, 0x50(1)
    li 6, 0x1
    .4byte 0xC00200B8 # lfs f0, lbl_80543058@sda21(r0)
    li 7, 0x0
    lfs 3, 0x10(29)
    li 8, 0x0
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    li 9, 0x0
    stfs 3, 0x54(1)
    fadds 2, 3, 2
    li 10, 0x1
    lfs 3, 0x14(29)
    fadds 0, 3, 0
    stfs 3, 0x58(1)
    stfs 2, 0x54(1)
    stfs 0, 0x58(1)
    bl fn_8013CC50
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 1, 0x50
    lwz 4, 0x4(29)
    li 6, 0x3
    lwz 3, 0x30(3)
    bl fn_8015F8FC
L_8037C084:
    li 0, 0x1
    stw 0, 0x230(29)
    .4byte 0x48000580 # b .L_8037C60C
    lwz 3, 0x24c(29)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_8037C0A8
    subi 0, 3, 0x1
    stw 0, 0x24c(29)
    .4byte 0x480000CC # b .L_8037C170
L_8037C0A8:
    li 0, 0x14
    mr 3, 29
    stw 0, 0x24c(29)
    addi 4, 1, 0x20
    addi 5, 1, 0xc
    li 6, 0x0
    bl fn_801EE558
    lfs 1, 0xc(1)
    .4byte 0xC00200A8 # lfs f0, lbl_80543048@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_8037C168
    lfs 1, 0x20(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x24(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC00200AC # lfs f0, lbl_8054304C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8037C118
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8037C124
L_8037C118:
    li 0, 0x3
    stw 0, 0x248(29)
    .4byte 0x48000050 # b .L_8037C170
L_8037C124:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_8037C140
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_8037C140
    li 0, 0x1
    stw 0, 0x248(29)
    .4byte 0x48000034 # b .L_8037C170
L_8037C140:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8037C15C
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8037C15C
    li 0, 0x2
    stw 0, 0x248(29)
    .4byte 0x48000018 # b .L_8037C170
L_8037C15C:
    li 0, 0x0
    stw 0, 0x248(29)
    .4byte 0x4800000C # b .L_8037C170
L_8037C168:
    li 0, 0x2
    stw 0, 0x248(29)
L_8037C170:
    bl GetSessionFlag_0x6f
    clrlwi. 0, 3, 24
    .4byte 0x40820494 # bne .L_8037C60C
    lwz 0, 0x268(29)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8037C1A4
    lwz 4, 0x4(29)
    addi 3, 1, 0x6c
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    .4byte 0x48000054 # b .L_8037C1F4
L_8037C1A4:
    lbz 0, 0x272(29)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8037C1CC
    lwz 4, 0x4(29)
    addi 3, 1, 0x5c
    lwz 5, 0x198(29)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    .4byte 0x4800002C # b .L_8037C1F4
L_8037C1CC:
    lwz 4, 0x4(29)
    addi 3, 1, 0x5c
    .4byte 0xC02200D4 # lfs f1, lbl_80543074@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    cmpwi 3, -0x1
    .4byte 0x40820428 # bne .L_8037C60C
    li 0, 0x1
    stb 0, 0x272(29)
    .4byte 0x4800041C # b .L_8037C60C
L_8037C1F4:
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    lis 4, lbl_80529DEC@ha
    stw 3, 0x244(29)
    addi 3, 4, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x8
    .4byte 0x41800020 # blt .L_8037C230
    lwz 0, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8037C230
    lwz 3, 0x244(29)
    bl fn_8037E54C
    stw 3, 0x250(29)
    .4byte 0x48000020 # b .L_8037C24C
L_8037C230:
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lbz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8037C24C
    lha 0, 0x6(3)
    stw 0, 0x250(29)
L_8037C24C:
    lwz 3, 0x244(29)
    cmpwi 3, 0x0
    .4byte 0x418003B8 # blt .L_8037C60C
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC00200D8 # lfs f0, lbl_80543078@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408203A4 # bne .L_8037C60C
    lwz 3, 0x244(29)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820394 # beq .L_8037C60C
    lwz 5, 0x198(29)
    addi 7, 1, 0x38
    lwz 6, 0x4(29)
    li 8, 0x10
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x40(1)
    lwz 3, 0x244(29)
    lwz 4, 0x250(29)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820360 # beq .L_8037C60C
    li 0, 0x0
    stw 0, 0x24c(29)
    lwz 3, 0x24c(29)
    lwz 4, 0x244(29)
    cmpwi 3, 0x0
    addi 6, 4, 0x1
    .4byte 0x41820010 # beq .L_8037C2D8
    subi 0, 3, 0x1
    stw 0, 0x24c(29)
    .4byte 0x480000C8 # b .L_8037C39C
L_8037C2D8:
    li 0, 0x14
    mr 3, 29
    stw 0, 0x24c(29)
    addi 4, 1, 0x14
    addi 5, 1, 0x8
    bl fn_801EE558
    lfs 1, 0x8(1)
    .4byte 0xC00200A8 # lfs f0, lbl_80543048@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_8037C394
    lfs 1, 0x14(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x18(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC00200AC # lfs f0, lbl_8054304C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8037C344
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8037C350
L_8037C344:
    li 0, 0x3
    stw 0, 0x248(29)
    .4byte 0x48000050 # b .L_8037C39C
L_8037C350:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_8037C36C
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_8037C36C
    li 0, 0x1
    stw 0, 0x248(29)
    .4byte 0x48000034 # b .L_8037C39C
L_8037C36C:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8037C388
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8037C388
    li 0, 0x2
    stw 0, 0x248(29)
    .4byte 0x48000018 # b .L_8037C39C
L_8037C388:
    li 0, 0x0
    stw 0, 0x248(29)
    .4byte 0x4800000C # b .L_8037C39C
L_8037C394:
    li 0, 0x2
    stw 0, 0x248(29)
L_8037C39C:
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(29)
    stw 0, 0x240(29)
    lwz 0, 0x258(29)
    cmpwi 0, 0x12
    .4byte 0x41820014 # beq .L_8037C3C8
    cmpwi 0, 0x13
    .4byte 0x4182000C # beq .L_8037C3C8
    cmpwi 0, 0x14
    .4byte 0x40820248 # bne .L_8037C60C
L_8037C3C8:
    lis 4, 0x6
    mr 3, 29
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000230 # b .L_8037C60C
    lfs 1, 0x14(29)
    .4byte 0xC00200D8 # lfs f0, lbl_80543078@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082021C # bne .L_8037C60C
    stfs 0, 0x14(29)
    li 0, 0x1
    .4byte 0xC02200DC # lfs f1, lbl_8054307C@sda21(r0)
    addi 4, 29, 0xc
    stfs 0, 0x44(29)
    li 5, 0x3cf
    li 6, 0x0
    li 7, -0x1
    stfs 0, 0x40(29)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x3c(29)
    stw 0, 0x230(29)
    lwz 3, 0x4(29)
    bl fn_8013CC50
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x0
    .4byte 0xC02200E0 # lfs f1, lbl_80543080@sda21(r0)
    .4byte 0xC04200D8 # lfs f2, lbl_80543078@sda21(r0)
    bl fn_802D79E8
    .4byte 0x480001C0 # b .L_8037C60C
    lwz 0, 0x268(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8037C47C
    lwz 3, 0x244(29)
    addi 4, 1, 0x6c
    lwz 5, 0x4(29)
    li 7, 0x1
    lwz 6, 0x198(29)
    li 8, 0x0
    bl fn_8022FF8C
    .4byte 0x48000020 # b .L_8037C498
L_8037C47C:
    lwz 3, 0x244(29)
    addi 4, 1, 0x5c
    lwz 5, 0x4(29)
    li 7, 0x0
    lwz 6, 0x198(29)
    li 8, 0x0
    bl fn_8022FF8C
L_8037C498:
    lwz 3, 0x244(29)
    lwz 4, 0x198(29)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820164 # beq .L_8037C60C
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x240(29)
    mr 3, 29
    li 4, 0xff
    li 5, 0x1
    stw 0, 0x244(29)
    lwz 12, 0x0(29)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x268(29)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037C4F0
    li 0, 0x0
    stb 0, 0x272(29)
    stw 0, 0x268(29)
L_8037C4F0:
    lwz 0, 0x254(29)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8037C508
    li 0, 0x6
    stw 0, 0x230(29)
    .4byte 0x4800000C # b .L_8037C510
L_8037C508:
    li 0, 0x1
    stw 0, 0x230(29)
L_8037C510:
    lwz 3, 0x274(29)
    cmplwi 3, 0x0
    .4byte 0x418200F4 # beq .L_8037C60C
    lwz 4, 0x4(29)
    addi 5, 1, 0x2c
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x34(1)
    bl fn_80316E50
    .4byte 0x480000D4 # b .L_8037C60C
    lwz 3, 0x240(29)
    addi 0, 3, 0x1
    stw 0, 0x240(29)
    lwz 0, 0x240(29)
    cmpwi 0, 0x96
    .4byte 0x418000BC # blt .L_8037C60C
    lwz 3, 0x4(29)
    cmpwi 3, 0x8
    .4byte 0x40800070 # bge .L_8037C5CC
    lfs 0, 0xc(29)
    addi 4, 1, 0x44
    .4byte 0xC04200D0 # lfs f2, lbl_80543070@sda21(r0)
    li 5, 0x17d
    stfs 0, 0x44(1)
    li 6, 0x1
    .4byte 0xC00200B8 # lfs f0, lbl_80543058@sda21(r0)
    li 7, 0x0
    lfs 3, 0x10(29)
    li 8, 0x0
    .4byte 0xC02200B4 # lfs f1, lbl_80543054@sda21(r0)
    li 9, 0x0
    stfs 3, 0x48(1)
    fadds 2, 3, 2
    li 10, 0x1
    lfs 3, 0x14(29)
    fadds 0, 3, 0
    stfs 3, 0x4c(1)
    stfs 2, 0x48(1)
    stfs 0, 0x4c(1)
    bl fn_8013CC50
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 29, 0xc
    lwz 4, 0x4(29)
    li 6, 0x3
    lwz 3, 0x30(3)
    bl fn_8015F8FC
L_8037C5CC:
    lwz 0, 0x278(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8037C5F0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x278(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x278(29)
L_8037C5F0:
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x17
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11c(29)
L_8037C60C:
    lwz 0, 0x258(29)
    cmpwi 0, 0x12
    .4byte 0x41820014 # beq .L_8037C628
    cmpwi 0, 0x13
    .4byte 0x4182000C # beq .L_8037C628
    cmpwi 0, 0x14
    .4byte 0x40820118 # bne .L_8037C73C
L_8037C628:
    mr 3, 29
    addi 5, 1, 0x10
    li 4, 0x0
    li 6, 0x0
    bl fn_801EE558
    lwz 0, 0x230(29)
    cmpwi 0, 0x5
    .4byte 0x40820030 # bne .L_8037C674
    lbz 3, 0x270(29)
    addi 0, 3, 0x2
    stb 0, 0x270(29)
    lbz 0, 0x270(29)
    cmplwi 0, 0xc8
    .4byte 0x4180000C # blt .L_8037C668
    li 0, 0xc8
    stb 0, 0x270(29)
L_8037C668:
    li 0, 0x0
    stw 0, 0x26c(29)
    .4byte 0x480000CC # b .L_8037C73C
L_8037C674:
    lfs 1, 0x10(1)
    .4byte 0xC00200C8 # lfs f0, lbl_80543068@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_8037C714
    lwz 0, 0x26c(29)
    clrlwi. 0, 0, 31
    .4byte 0x4082002C # bne .L_8037C6B8
    lbz 3, 0x270(29)
    addi 0, 3, 0x2
    stb 0, 0x270(29)
    lbz 0, 0x270(29)
    cmplwi 0, 0xc8
    .4byte 0x41800058 # blt .L_8037C6FC
    lwz 3, 0x26c(29)
    addi 0, 3, 0x1
    stw 0, 0x26c(29)
    .4byte 0x48000048 # b .L_8037C6FC
L_8037C6B8:
    lbz 3, 0x270(29)
    subi 0, 3, 0x1
    stb 0, 0x270(29)
    lwz 3, 0x26c(29)
    cmpwi 3, 0x6
    .4byte 0x4080001C # bge .L_8037C6E8
    lbz 0, 0x270(29)
    cmplwi 0, 0x50
    .4byte 0x41810024 # bgt .L_8037C6FC
    addi 0, 3, 0x1
    stw 0, 0x26c(29)
    .4byte 0x48000018 # b .L_8037C6FC
L_8037C6E8:
    lbz 0, 0x270(29)
    cmplwi 0, 0x28
    .4byte 0x4181000C # bgt .L_8037C6FC
    addi 0, 3, 0x1
    stw 0, 0x26c(29)
L_8037C6FC:
    lwz 0, 0x26c(29)
    cmpwi 0, 0x8
    .4byte 0x41800038 # blt .L_8037C73C
    li 0, 0x0
    stw 0, 0x26c(29)
    .4byte 0x4800002C # b .L_8037C73C
L_8037C714:
    lbz 3, 0x270(29)
    cmplwi 3, 0x2
    .4byte 0x40810010 # ble .L_8037C72C
    subi 0, 3, 0x2
    stb 0, 0x270(29)
    .4byte 0x4800000C # b .L_8037C734
L_8037C72C:
    li 0, 0x0
    stb 0, 0x270(29)
L_8037C734:
    li 0, 0x0
    stw 0, 0x26c(29)
L_8037C73C:
    lwz 4, 0x234(29)
    lis 3, lbl_804AEC48@ha
    addi 0, 3, lbl_804AEC48@l
    mr 3, 29
    subi 4, 4, 0x1
    stw 4, 0x234(29)
    lwz 4, 0x258(29)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
L_8037C768:
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    lwz 28, 0x90(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8037C788:
    stwu 1, -0x40(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x44(1)
    li 0, 0x1
    stw 31, 0x3c(1)
    mr 31, 3
    stw 4, 0x230(3)
    lwz 3, 0x90(3)
    clrlwi 3, 3, 20
    addi 3, 3, 0x12b
    stw 3, 0x250(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 7
    stw 3, 0x254(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 8, 8
    stw 3, 0x258(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 6
    stb 3, 0x271(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 2, 18
    stw 3, 0x268(31)
    stb 0, 0x272(31)
    stw 4, 0x26c(31)
    stb 4, 0x270(31)
    lbz 0, 0x271(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8037C808
    li 0, 0x2
    stw 0, 0x230(31)
L_8037C808:
    lwz 0, 0x258(31)
    cmpwi 0, 0x36
    .4byte 0x4081000C # ble .L_8037C81C
    li 0, 0x0
    stw 0, 0x258(31)
L_8037C81C:
    lwz 0, 0x258(31)
    cmpwi 0, 0x6
    .4byte 0x4182001C # beq .L_8037C840
    cmpwi 0, 0xb
    .4byte 0x41820014 # beq .L_8037C840
    cmpwi 0, 0x10
    .4byte 0x4182000C # beq .L_8037C840
    cmpwi 0, 0x19
    .4byte 0x40820024 # bne .L_8037C860
L_8037C840:
    .4byte 0xC04200E4 # lfs f2, lbl_80543084@sda21(r0)
    .4byte 0xC02200B8 # lfs f1, lbl_80543058@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC00200E8 # lfs f0, lbl_80543088@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800001C # b .L_8037C878
L_8037C860:
    .4byte 0xC02200EC # lfs f1, lbl_8054308C@sda21(r0)
    .4byte 0xC00200E8 # lfs f0, lbl_80543088@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8037C878:
    .4byte 0xC00200D8 # lfs f0, lbl_80543078@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    lbz 0, 0x271(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8037C89C
    .4byte 0xC00200E0 # lfs f0, lbl_80543080@sda21(r0)
    stfs 0, 0x44(31)
L_8037C89C:
    li 0, 0x1
    li 3, 0x0
    stw 0, 0x108(31)
    li 0, 0x2
    stw 3, 0x238(31)
    stw 3, 0x240(31)
    stw 0, 0x248(31)
    stw 3, 0x24c(31)
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_8037C8D4
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    .4byte 0x480000CC # b .L_8037C99C
L_8037C8D4:
    li 0, 0x14
    mr 3, 31
    stw 0, 0x24c(31)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    lfs 1, 0x8(1)
    .4byte 0xC00200A8 # lfs f0, lbl_80543048@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_8037C994
    lfs 1, 0xc(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC00200AC # lfs f0, lbl_8054304C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8037C944
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8037C950
L_8037C944:
    li 0, 0x3
    stw 0, 0x248(31)
    .4byte 0x48000050 # b .L_8037C99C
L_8037C950:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_8037C96C
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_8037C96C
    li 0, 0x1
    stw 0, 0x248(31)
    .4byte 0x48000034 # b .L_8037C99C
L_8037C96C:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8037C988
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8037C988
    li 0, 0x2
    stw 0, 0x248(31)
    .4byte 0x48000018 # b .L_8037C99C
L_8037C988:
    li 0, 0x0
    stw 0, 0x248(31)
    .4byte 0x4800000C # b .L_8037C99C
L_8037C994:
    li 0, 0x2
    stw 0, 0x248(31)
L_8037C99C:
    li 0, -0x1
    lis 3, lbl_804753C0@ha
    stw 0, 0x244(31)
    addi 4, 3, lbl_804753C0@l
    li 0, 0x0
    lwz 3, 0x258(31)
    slwi 3, 3, 2
    lhzx 3, 4, 3
    stw 3, 0x25c(31)
    lwz 3, 0x258(31)
    slwi 3, 3, 2
    add 3, 4, 3
    lhz 3, 0x2(3)
    stw 3, 0x260(31)
    stb 0, 0x273(31)
    lwz 3, 0x258(31)
    cmplwi 3, 0x35
    .4byte 0x41810340 # bgt .L_8037CD20
    lis 4, jumptable_804AEF40@ha
    slwi 3, 3, 2
    addi 4, 4, jumptable_804AEF40@l
    lwzx 3, 4, 3
    mtctr 3
    bctr
    li 3, 0x14
    stw 3, 0x234(31)
    stw 0, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x48000328 # b .L_8037CD34
    li 3, 0x3
    li 0, 0x6
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000310 # b .L_8037CD34
    li 3, 0xf
    li 0, 0x4
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x480002F8 # b .L_8037CD34
    li 0, 0xa
    li 3, 0x0
    stw 0, 0x234(31)
    li 0, 0x3
    stw 3, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x480002DC # b .L_8037CD34
    li 3, 0x14
    li 0, 0x4
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x480002C4 # b .L_8037CD34
    li 0, 0xc
    li 3, 0x0
    stw 0, 0x234(31)
    li 0, 0x5
    stw 3, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x480002A8 # b .L_8037CD34
    li 3, 0x6
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000294 # b .L_8037CD34
    li 3, 0xf
    stw 3, 0x234(31)
    stw 0, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x48000280 # b .L_8037CD34
    li 3, 0xa
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x4800026C # b .L_8037CD34
    li 4, 0xa
    li 3, 0x3
    stw 4, 0x234(31)
    stw 0, 0x23c(31)
    stw 3, 0x264(31)
    .4byte 0x48000254 # b .L_8037CD34
    li 3, 0x14
    li 0, 0x7
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x4800023C # b .L_8037CD34
    li 4, 0x7
    li 3, 0x3
    stw 4, 0x234(31)
    stw 0, 0x23c(31)
    stw 3, 0x264(31)
    .4byte 0x48000224 # b .L_8037CD34
    li 4, 0xc
    li 3, 0x8
    stw 4, 0x234(31)
    stw 0, 0x23c(31)
    stw 3, 0x264(31)
    .4byte 0x4800020C # b .L_8037CD34
    stw 0, 0x234(31)
    li 3, 0x6
    stw 0, 0x23c(31)
    stw 3, 0x264(31)
    .4byte 0x480001F8 # b .L_8037CD34
    li 4, 0x7
    li 3, 0x3
    stw 4, 0x234(31)
    stw 0, 0x23c(31)
    stw 3, 0x264(31)
    .4byte 0x480001E0 # b .L_8037CD34
    li 3, 0xf
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x480001CC # b .L_8037CD34
    li 3, 0xf
    li 0, 0x1
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x480001B4 # b .L_8037CD34
    li 3, 0xf
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x480001A0 # b .L_8037CD34
    li 3, 0xf
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x4800018C # b .L_8037CD34
    li 3, 0xf
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000178 # b .L_8037CD34
    stw 0, 0x234(31)
    stw 0, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x48000168 # b .L_8037CD34
    li 3, 0x37
    stw 3, 0x234(31)
    stw 0, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x48000154 # b .L_8037CD34
    li 3, 0x28
    stw 3, 0x234(31)
    stw 0, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x48000140 # b .L_8037CD34
    li 4, 0x5a
    li 3, 0x2
    stw 4, 0x234(31)
    stw 0, 0x23c(31)
    stw 3, 0x264(31)
    .4byte 0x48000128 # b .L_8037CD34
    li 3, 0x14
    li 0, 0x2
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000110 # b .L_8037CD34
    li 3, 0x14
    li 0, 0x2
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x480000F8 # b .L_8037CD34
    li 0, 0x14
    li 3, 0x0
    stw 0, 0x234(31)
    li 0, 0x2
    stw 3, 0x23c(31)
    stw 0, 0x264(31)
    .4byte 0x480000DC # b .L_8037CD34
    li 4, 0x2
    li 3, 0x3c
    stw 4, 0x264(31)
    stw 3, 0x234(31)
    stw 0, 0x23c(31)
    .4byte 0x480000C4 # b .L_8037CD34
    stw 0, 0x234(31)
    li 3, 0x9
    stw 0, 0x23c(31)
    stw 3, 0x264(31)
    .4byte 0x480000B0 # b .L_8037CD34
    li 3, 0x0
    li 0, 0xa
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000098 # b .L_8037CD34
    li 3, 0x28
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000084 # b .L_8037CD34
    li 3, 0x12
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000070 # b .L_8037CD34
    li 3, 0x10
    li 0, 0x0
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000058 # b .L_8037CD34
    li 3, 0xa
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000044 # b .L_8037CD34
    li 3, 0x14
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000030 # b .L_8037CD34
    li 3, 0x10
    li 0, 0x2
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
    .4byte 0x48000018 # b .L_8037CD34
L_8037CD20:
    li 3, 0x14
    li 0, 0x0
    stw 3, 0x23c(31)
    stw 3, 0x234(31)
    stw 0, 0x264(31)
L_8037CD34:
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_8037CD5C
    lwz 4, 0x4(31)
    addi 5, 1, 0x18
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x20(1)
    bl fn_80316E50
L_8037CD5C:
    li 0, 0x0
    stw 0, 0x278(31)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8037CD78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820050 # beq .L_8037CDE4
    lis 3, lbl_804AEED0@ha
    addi 0, 3, lbl_804AEED0@l
    stw 0, 0x0(30)
    lwz 3, 0x274(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8037CDB8
    li 4, 0x1
    bl fn_80317060
L_8037CDB8:
    lwz 3, 0x278(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8037CDC8
    bl fn_801EE434
L_8037CDC8:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8037CDE4
    mr 3, 30
    bl dtor_80084580
L_8037CDE4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8036D5D4
    .4byte fn_8036DB48
    .4byte fn_8036E320
    .4byte fn_8036F93C
    .4byte fn_80372B00
    .4byte fn_80372F14
    .4byte fn_803739B4
    .4byte fn_80374564
    .4byte fn_8037574C
    .4byte fn_80376170
    .4byte fn_8037662C
    .4byte fn_80376928
    .4byte fn_80376D7C
    .4byte fn_80377BFC
    .4byte fn_80378070
    .4byte fn_80378E54
    .4byte fn_8037964C
    .4byte fn_80379D60
    .4byte fn_8037AAA0
    .4byte fn_8037B150

