# MAJOR: dispatch-cross-check bundle - 8 real FourCC actor vtable
# bodies (ctors already landed: fn_8028A118/8958, fn_8028BE44,
# fn_8028DB54, fn_8028F97C, fn_802955A8, fn_8029B538/BAF4, fn_8029C360,
# fn_8029D20C/674 - 11 sinit entries for 8 dispatch-confirmed actor
# dtors) plus shared helper/update functions, landed as ONE
# byte-contiguous 136-function, ~84,480-byte Track-A bundle
# (0x80289648-0x8029E248). Found+verified via spanwalk.py (full
# contiguity confirmed, stopping exactly at the pre-existing
# extab_8029e248.s boundary) and resolvefiles.py (2 fused-dump
# functions). .ctors placement (0x8045C1E8-0x8045C214) found by
# brute-force scanning every currently-unclaimed .ctors gap in
# splits.txt for the exact 11-address subsequence, then verified
# against the raw DOL bytes. See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000BFAC
etb_8000BFAC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000BFAC, 8

.global etb_8000BFB4
etb_8000BFB4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BFB4, 8

.global etb_8000BFBC
etb_8000BFBC:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000BFBC, 8

.global etb_8000BFC4
etb_8000BFC4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BFC4, 8

.global etb_8000BFCC
etb_8000BFCC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000BFCC, 8

.global etb_8000BFD4
etb_8000BFD4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000BFD4, 8

.global etb_8000BFDC
etb_8000BFDC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000BFDC, 8

.global etb_8000BFE4
etb_8000BFE4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000BFE4, 8

.global etb_8000BFEC
etb_8000BFEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BFEC, 8

.global etb_8000BFF4
etb_8000BFF4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000BFF4, 8

.global etb_8000BFFC
etb_8000BFFC:
    .4byte 0x098A0000
    .4byte 0x00000000
.size etb_8000BFFC, 8

.global etb_8000C004
etb_8000C004:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C004, 8

.global etb_8000C00C
etb_8000C00C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C00C, 8

.global etb_8000C014
etb_8000C014:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C014, 8

.global etb_8000C01C
etb_8000C01C:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000C01C, 8

.global etb_8000C024
etb_8000C024:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C024, 8

.global etb_8000C02C
etb_8000C02C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C02C, 8

.global etb_8000C034
etb_8000C034:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C034, 8

.global etb_8000C03C
etb_8000C03C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C03C, 8

.global etb_8000C044
etb_8000C044:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C044, 8

.global etb_8000C04C
etb_8000C04C:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_8000C04C, 8

.global etb_8000C054
etb_8000C054:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C054, 8

.global etb_8000C05C
etb_8000C05C:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_8000C05C, 8

.global etb_8000C064
etb_8000C064:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000C064, 8

.global etb_8000C06C
etb_8000C06C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C06C, 8

.global etb_8000C074
etb_8000C074:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_8000C074, 8

.global etb_8000C07C
etb_8000C07C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C07C, 8

.global etb_8000C084
etb_8000C084:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C084, 8

.global etb_8000C08C
etb_8000C08C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C08C, 8

.global etb_8000C094
etb_8000C094:
    .4byte 0x214A0000
    .4byte 0x00000000
.size etb_8000C094, 8

.global etb_8000C09C
etb_8000C09C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C09C, 8

.global etb_8000C0A4
etb_8000C0A4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C0A4, 8

.global etb_8000C0AC
etb_8000C0AC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C0AC, 8

.global etb_8000C0B4
etb_8000C0B4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C0B4, 8

.global etb_8000C0BC
etb_8000C0BC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C0BC, 8

.global etb_8000C0C4
etb_8000C0C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C0C4, 8

.global etb_8000C0CC
etb_8000C0CC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C0CC, 8

.global etb_8000C0D4
etb_8000C0D4:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000C0D4, 8

.global etb_8000C0DC
etb_8000C0DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C0DC, 8

.global etb_8000C0E4
etb_8000C0E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C0E4, 8

.global etb_8000C0EC
etb_8000C0EC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C0EC, 8

.global etb_8000C0F4
etb_8000C0F4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C0F4, 8

.global etb_8000C0FC
etb_8000C0FC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C0FC, 8

.global etb_8000C104
etb_8000C104:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C104, 8

.global etb_8000C10C
etb_8000C10C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C10C, 8

.global etb_8000C114
etb_8000C114:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C114, 8

.global etb_8000C11C
etb_8000C11C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C11C, 8

.global etb_8000C124
etb_8000C124:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C124, 8

.global etb_8000C12C
etb_8000C12C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000C12C, 8

.global etb_8000C134
etb_8000C134:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C134, 8

.global etb_8000C13C
etb_8000C13C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C13C, 8

.global etb_8000C144
etb_8000C144:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C144, 8

.global etb_8000C14C
etb_8000C14C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C14C, 8

.global etb_8000C154
etb_8000C154:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C154, 8

.global etb_8000C15C
etb_8000C15C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C15C, 8

.global etb_8000C164
etb_8000C164:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000C164, 8

.global etb_8000C16C
etb_8000C16C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C16C, 8

.global etb_8000C174
etb_8000C174:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C174, 8

.global etb_8000C17C
etb_8000C17C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C17C, 8

.global etb_8000C184
etb_8000C184:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C184, 8

.global etb_8000C18C
etb_8000C18C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C18C, 8

.global etb_8000C194
etb_8000C194:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C194, 8

.global etb_8000C19C
etb_8000C19C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000C19C, 8

.global etb_8000C1A4
etb_8000C1A4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C1A4, 8

.global etb_8000C1AC
etb_8000C1AC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C1AC, 8

.global etb_8000C1B4
etb_8000C1B4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C1B4, 8

.global etb_8000C1BC
etb_8000C1BC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C1BC, 8

.global etb_8000C1C4
etb_8000C1C4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C1C4, 8

.global etb_8000C1CC
etb_8000C1CC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C1CC, 8

.global etb_8000C1D4
etb_8000C1D4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C1D4, 8

.global etb_8000C1DC
etb_8000C1DC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C1DC, 8

.global etb_8000C1E4
etb_8000C1E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C1E4, 8

.global etb_8000C1EC
etb_8000C1EC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C1EC, 8

.global etb_8000C1F4
etb_8000C1F4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C1F4, 8

.global etb_8000C1FC
etb_8000C1FC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C1FC, 8

.global etb_8000C204
etb_8000C204:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C204, 8

.global etb_8000C20C
etb_8000C20C:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_8000C20C, 8

.global etb_8000C214
etb_8000C214:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C214, 8

.global etb_8000C21C
etb_8000C21C:
    .4byte 0x310A0000
    .4byte 0x00000000
.size etb_8000C21C, 8

.global etb_8000C224
etb_8000C224:
    .4byte 0x310A0000
    .4byte 0x00000000
.size etb_8000C224, 8

.global etb_8000C22C
etb_8000C22C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C22C, 8

.global etb_8000C234
etb_8000C234:
    .4byte 0x318A0000
    .4byte 0x00000000
.size etb_8000C234, 8

.global etb_8000C23C
etb_8000C23C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C23C, 8

.global etb_8000C244
etb_8000C244:
    .4byte 0x410A0000
    .4byte 0x00000000
.size etb_8000C244, 8

.global etb_8000C24C
etb_8000C24C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000C24C, 8

.global etb_8000C254
etb_8000C254:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000C254, 8

.global etb_8000C25C
etb_8000C25C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000C25C, 8

.global etb_8000C264
etb_8000C264:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_8000C264, 8

.global etb_8000C26C
etb_8000C26C:
    .4byte 0x314A0000
    .4byte 0x00000000
.size etb_8000C26C, 8

.global etb_8000C274
etb_8000C274:
    .4byte 0x314A0000
    .4byte 0x00000000
.size etb_8000C274, 8

.global etb_8000C27C
etb_8000C27C:
    .4byte 0x314A0000
    .4byte 0x00000000
.size etb_8000C27C, 8

.global etb_8000C284
etb_8000C284:
    .4byte 0x314A0000
    .4byte 0x00000000
.size etb_8000C284, 8

.global etb_8000C28C
etb_8000C28C:
    .4byte 0x310A0000
    .4byte 0x00000000
.size etb_8000C28C, 8

.global etb_8000C294
etb_8000C294:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000C294, 8

.global etb_8000C29C
etb_8000C29C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C29C, 8

.global etb_8000C2A4
etb_8000C2A4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C2A4, 8

.global etb_8000C2AC
etb_8000C2AC:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_8000C2AC, 8

.global etb_8000C2B4
etb_8000C2B4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C2B4, 8

.global etb_8000C2BC
etb_8000C2BC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C2BC, 8

.global etb_8000C2C4
etb_8000C2C4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C2C4, 8

.global etb_8000C2CC
etb_8000C2CC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C2CC, 8

.global etb_8000C2D4
etb_8000C2D4:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000C2D4, 8

.global etb_8000C2DC
etb_8000C2DC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C2DC, 8

.global etb_8000C2E4
etb_8000C2E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C2E4, 8

.global etb_8000C2EC
etb_8000C2EC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C2EC, 8

.global etb_8000C2F4
etb_8000C2F4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000C2F4, 8

.global etb_8000C2FC
etb_8000C2FC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C2FC, 8

.global etb_8000C304
etb_8000C304:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C304, 8

.global etb_8000C30C
etb_8000C30C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C30C, 8

.global etb_8000C314
etb_8000C314:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C314, 8

.global etb_8000C31C
etb_8000C31C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C31C, 8

.global etb_8000C324
etb_8000C324:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C324, 8

.global etb_8000C32C
etb_8000C32C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C32C, 8

.global etb_8000C334
etb_8000C334:
    .4byte 0x580A0000
    .4byte 0x00000000
.size etb_8000C334, 8

.global etb_8000C33C
etb_8000C33C:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_8000C33C, 8

.global etb_8000C344
etb_8000C344:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000C344, 8

.global etb_8000C34C
etb_8000C34C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000C34C, 8

.global etb_8000C354
etb_8000C354:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000C354, 8

.global etb_8000C35C
etb_8000C35C:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000C35C, 8

.section extabindex, "a"
.balign 4
.global eti_8001A944
eti_8001A944:
    .4byte fn_80289648
    .4byte 0x00000060
    .4byte etb_8000BFAC
.size eti_8001A944, 12

.global eti_8001A950
eti_8001A950:
    .4byte fn_802896A8
    .4byte 0x000003E0
    .4byte etb_8000BFB4
.size eti_8001A950, 12

.global eti_8001A95C
eti_8001A95C:
    .4byte fn_80289A88
    .4byte 0x000004E4
    .4byte etb_8000BFBC
.size eti_8001A95C, 12

.global eti_8001A968
eti_8001A968:
    .4byte fn_80289F6C
    .4byte 0x000001AC
    .4byte etb_8000BFC4
.size eti_8001A968, 12

.global eti_8001A974
eti_8001A974:
    .4byte fn_8028A118
    .4byte 0x00000224
    .4byte etb_8000BFCC
.size eti_8001A974, 12

.global eti_8001A980
eti_8001A980:
    .4byte fn_8028A33C
    .4byte 0x00000060
    .4byte etb_8000BFD4
.size eti_8001A980, 12

.global eti_8001A98C
eti_8001A98C:
    .4byte fn_8028A39C
    .4byte 0x000000C4
    .4byte etb_8000BFDC
.size eti_8001A98C, 12

.global eti_8001A998
eti_8001A998:
    .4byte fn_8028A460
    .4byte 0x00000434
    .4byte etb_8000BFE4
.size eti_8001A998, 12

.global eti_8001A9A4
eti_8001A9A4:
    .4byte fn_8028A894
    .4byte 0x000000C4
    .4byte etb_8000BFEC
.size eti_8001A9A4, 12

.global eti_8001A9B0
eti_8001A9B0:
    .4byte fn_8028A958
    .4byte 0x00000224
    .4byte etb_8000BFF4
.size eti_8001A9B0, 12

.global eti_8001A9BC
eti_8001A9BC:
    .4byte fn_8028AB7C
    .4byte 0x000002B0
    .4byte etb_8000BFFC
.size eti_8001A9BC, 12

.global eti_8001A9C8
eti_8001A9C8:
    .4byte fn_8028AE2C
    .4byte 0x00000A24
    .4byte etb_8000C004
.size eti_8001A9C8, 12

.global eti_8001A9D4
eti_8001A9D4:
    .4byte fn_8028B850
    .4byte 0x0000020C
    .4byte etb_8000C00C
.size eti_8001A9D4, 12

.global eti_8001A9E0
eti_8001A9E0:
    .4byte fn_8028BA5C
    .4byte 0x000000B8
    .4byte etb_8000C014
.size eti_8001A9E0, 12

.global eti_8001A9EC
eti_8001A9EC:
    .4byte fn_8028BB14
    .4byte 0x000002BC
    .4byte etb_8000C01C
.size eti_8001A9EC, 12

.global eti_8001A9F8
eti_8001A9F8:
    .4byte fn_8028BDD0
    .4byte 0x00000074
    .4byte etb_8000C024
.size eti_8001A9F8, 12

.global eti_8001AA04
eti_8001AA04:
    .4byte fn_8028BE44
    .4byte 0x00000224
    .4byte etb_8000C02C
.size eti_8001AA04, 12

.global eti_8001AA10
eti_8001AA10:
    .4byte fn_8028C068
    .4byte 0x00000060
    .4byte etb_8000C034
.size eti_8001AA10, 12

.global eti_8001AA1C
eti_8001AA1C:
    .4byte fn_8028C0C8
    .4byte 0x000000C8
    .4byte etb_8000C03C
.size eti_8001AA1C, 12

.global eti_8001AA28
eti_8001AA28:
    .4byte fn_8028C190
    .4byte 0x000001D4
    .4byte etb_8000C044
.size eti_8001AA28, 12

.global eti_8001AA34
eti_8001AA34:
    .4byte fn_8028C364
    .4byte 0x000001B4
    .4byte etb_8000C04C
.size eti_8001AA34, 12

.global eti_8001AA40
eti_8001AA40:
    .4byte fn_8028C518
    .4byte 0x000002B8
    .4byte etb_8000C054
.size eti_8001AA40, 12

.global eti_8001AA4C
eti_8001AA4C:
    .4byte fn_8028C7D0
    .4byte 0x00000CA0
    .4byte etb_8000C05C
.size eti_8001AA4C, 12

.global eti_8001AA58
eti_8001AA58:
    .4byte fn_8028D470
    .4byte 0x0000006C
    .4byte etb_8000C064
.size eti_8001AA58, 12

.global eti_8001AA64
eti_8001AA64:
    .4byte fn_8028D4DC
    .4byte 0x000000F4
    .4byte etb_8000C06C
.size eti_8001AA64, 12

.global eti_8001AA70
eti_8001AA70:
    .4byte fn_8028D5D0
    .4byte 0x00000584
    .4byte etb_8000C074
.size eti_8001AA70, 12

.global eti_8001AA7C
eti_8001AA7C:
    .4byte fn_8028DB54
    .4byte 0x00000224
    .4byte etb_8000C07C
.size eti_8001AA7C, 12

.global eti_8001AA88
eti_8001AA88:
    .4byte fn_8028DD78
    .4byte 0x00000060
    .4byte etb_8000C084
.size eti_8001AA88, 12

.global eti_8001AA94
eti_8001AA94:
    .4byte fn_8028DDD8
    .4byte 0x00000410
    .4byte etb_8000C08C
.size eti_8001AA94, 12

.global eti_8001AAA0
eti_8001AAA0:
    .4byte fn_8028E1EC
    .4byte 0x000016A4
    .4byte etb_8000C094
.size eti_8001AAA0, 12

.global eti_8001AAAC
eti_8001AAAC:
    .4byte fn_8028F97C
    .4byte 0x00000224
    .4byte etb_8000C09C
.size eti_8001AAAC, 12

.global eti_8001AAB8
eti_8001AAB8:
    .4byte fn_8028FBA0
    .4byte 0x0000008C
    .4byte etb_8000C0A4
.size eti_8001AAB8, 12

.global eti_8001AAC4
eti_8001AAC4:
    .4byte fn_8028FC2C
    .4byte 0x00000444
    .4byte etb_8000C0AC
.size eti_8001AAC4, 12

.global eti_8001AAD0
eti_8001AAD0:
    .4byte fn_80290070
    .4byte 0x00000CE8
    .4byte etb_8000C0B4
.size eti_8001AAD0, 12

.global eti_8001AADC
eti_8001AADC:
    .4byte fn_80290D58
    .4byte 0x00000138
    .4byte etb_8000C0BC
.size eti_8001AADC, 12

.global eti_8001AAE8
eti_8001AAE8:
    .4byte fn_80290E90
    .4byte 0x00000090
    .4byte etb_8000C0C4
.size eti_8001AAE8, 12

.global eti_8001AAF4
eti_8001AAF4:
    .4byte fn_80290F20
    .4byte 0x000000A0
    .4byte etb_8000C0CC
.size eti_8001AAF4, 12

.global eti_8001AB00
eti_8001AB00:
    .4byte fn_80290FC0
    .4byte 0x0000089C
    .4byte etb_8000C0D4
.size eti_8001AB00, 12

.global eti_8001AB0C
eti_8001AB0C:
    .4byte fn_8029185C
    .4byte 0x000000B4
    .4byte etb_8000C0DC
.size eti_8001AB0C, 12

.global eti_8001AB18
eti_8001AB18:
    .4byte fn_80291910
    .4byte 0x00000254
    .4byte etb_8000C0E4
.size eti_8001AB18, 12

.global eti_8001AB24
eti_8001AB24:
    .4byte fn_80291B8C
    .4byte 0x0000012C
    .4byte etb_8000C0EC
.size eti_8001AB24, 12

.global eti_8001AB30
eti_8001AB30:
    .4byte fn_80291CB8
    .4byte 0x00000070
    .4byte etb_8000C0F4
.size eti_8001AB30, 12

.global eti_8001AB3C
eti_8001AB3C:
    .4byte fn_80291D28
    .4byte 0x0000011C
    .4byte etb_8000C0FC
.size eti_8001AB3C, 12

.global eti_8001AB48
eti_8001AB48:
    .4byte fn_80291E44
    .4byte 0x000000CC
    .4byte etb_8000C104
.size eti_8001AB48, 12

.global eti_8001AB54
eti_8001AB54:
    .4byte fn_80291F10
    .4byte 0x00000214
    .4byte etb_8000C10C
.size eti_8001AB54, 12

.global eti_8001AB60
eti_8001AB60:
    .4byte fn_80292124
    .4byte 0x00000074
    .4byte etb_8000C114
.size eti_8001AB60, 12

.global eti_8001AB6C
eti_8001AB6C:
    .4byte fn_80292198
    .4byte 0x00000138
    .4byte etb_8000C11C
.size eti_8001AB6C, 12

.global eti_8001AB78
eti_8001AB78:
    .4byte fn_802922EC
    .4byte 0x00000168
    .4byte etb_8000C124
.size eti_8001AB78, 12

.global eti_8001AB84
eti_8001AB84:
    .4byte fn_80292454
    .4byte 0x00000058
    .4byte etb_8000C12C
.size eti_8001AB84, 12

.global eti_8001AB90
eti_8001AB90:
    .4byte fn_802924AC
    .4byte 0x00000118
    .4byte etb_8000C134
.size eti_8001AB90, 12

.global eti_8001AB9C
eti_8001AB9C:
    .4byte fn_802925E4
    .4byte 0x000001CC
    .4byte etb_8000C13C
.size eti_8001AB9C, 12

.global eti_8001ABA8
eti_8001ABA8:
    .4byte fn_802927B0
    .4byte 0x00000070
    .4byte etb_8000C144
.size eti_8001ABA8, 12

.global eti_8001ABB4
eti_8001ABB4:
    .4byte fn_80292820
    .4byte 0x00000124
    .4byte etb_8000C14C
.size eti_8001ABB4, 12

.global eti_8001ABC0
eti_8001ABC0:
    .4byte fn_80292944
    .4byte 0x000000B8
    .4byte etb_8000C154
.size eti_8001ABC0, 12

.global eti_8001ABCC
eti_8001ABCC:
    .4byte fn_802929FC
    .4byte 0x00000494
    .4byte etb_8000C15C
.size eti_8001ABCC, 12

.global eti_8001ABD8
eti_8001ABD8:
    .4byte fn_80292E90
    .4byte 0x0000003C
    .4byte etb_8000C164
.size eti_8001ABD8, 12

.global eti_8001ABE4
eti_8001ABE4:
    .4byte fn_80292ECC
    .4byte 0x000003F0
    .4byte etb_8000C16C
.size eti_8001ABE4, 12

.global eti_8001ABF0
eti_8001ABF0:
    .4byte fn_802932BC
    .4byte 0x000000DC
    .4byte etb_8000C174
.size eti_8001ABF0, 12

.global eti_8001ABFC
eti_8001ABFC:
    .4byte fn_80293398
    .4byte 0x0000019C
    .4byte etb_8000C17C
.size eti_8001ABFC, 12

.global eti_8001AC08
eti_8001AC08:
    .4byte fn_80293534
    .4byte 0x00000070
    .4byte etb_8000C184
.size eti_8001AC08, 12

.global eti_8001AC14
eti_8001AC14:
    .4byte fn_802935A4
    .4byte 0x000001BC
    .4byte etb_8000C18C
.size eti_8001AC14, 12

.global eti_8001AC20
eti_8001AC20:
    .4byte fn_80293774
    .4byte 0x00000144
    .4byte etb_8000C194
.size eti_8001AC20, 12

.global eti_8001AC2C
eti_8001AC2C:
    .4byte fn_802938B8
    .4byte 0x00000048
    .4byte etb_8000C19C
.size eti_8001AC2C, 12

.global eti_8001AC38
eti_8001AC38:
    .4byte fn_80293900
    .4byte 0x0000021C
    .4byte etb_8000C1A4
.size eti_8001AC38, 12

.global eti_8001AC44
eti_8001AC44:
    .4byte fn_80293B30
    .4byte 0x0000035C
    .4byte etb_8000C1AC
.size eti_8001AC44, 12

.global eti_8001AC50
eti_8001AC50:
    .4byte fn_80293E8C
    .4byte 0x00000158
    .4byte etb_8000C1B4
.size eti_8001AC50, 12

.global eti_8001AC5C
eti_8001AC5C:
    .4byte fn_80293FE4
    .4byte 0x00000390
    .4byte etb_8000C1BC
.size eti_8001AC5C, 12

.global eti_8001AC68
eti_8001AC68:
    .4byte fn_80294374
    .4byte 0x0000054C
    .4byte etb_8000C1C4
.size eti_8001AC68, 12

.global eti_8001AC74
eti_8001AC74:
    .4byte fn_802948C0
    .4byte 0x0000021C
    .4byte etb_8000C1CC
.size eti_8001AC74, 12

.global eti_8001AC80
eti_8001AC80:
    .4byte fn_80294ADC
    .4byte 0x00000660
    .4byte etb_8000C1D4
.size eti_8001AC80, 12

.global eti_8001AC8C
eti_8001AC8C:
    .4byte fn_8029513C
    .4byte 0x00000104
    .4byte etb_8000C1DC
.size eti_8001AC8C, 12

.global eti_8001AC98
eti_8001AC98:
    .4byte fn_80295268
    .4byte 0x000000CC
    .4byte etb_8000C1E4
.size eti_8001AC98, 12

.global eti_8001ACA4
eti_8001ACA4:
    .4byte fn_80295334
    .4byte 0x0000006C
    .4byte etb_8000C1EC
.size eti_8001ACA4, 12

.global eti_8001ACB0
eti_8001ACB0:
    .4byte fn_802953A0
    .4byte 0x00000118
    .4byte etb_8000C1F4
.size eti_8001ACB0, 12

.global eti_8001ACBC
eti_8001ACBC:
    .4byte fn_802954DC
    .4byte 0x000000A8
    .4byte etb_8000C1FC
.size eti_8001ACBC, 12

.global eti_8001ACC8
eti_8001ACC8:
    .4byte fn_802955A8
    .4byte 0x00000224
    .4byte etb_8000C204
.size eti_8001ACC8, 12

.global eti_8001ACD4
eti_8001ACD4:
    .4byte fn_802957CC
    .4byte 0x00000474
    .4byte etb_8000C20C
.size eti_8001ACD4, 12

.global eti_8001ACE0
eti_8001ACE0:
    .4byte fn_80295C40
    .4byte 0x000002A8
    .4byte etb_8000C214
.size eti_8001ACE0, 12

.global eti_8001ACEC
eti_8001ACEC:
    .4byte fn_80295EE8
    .4byte 0x000002C4
    .4byte etb_8000C21C
.size eti_8001ACEC, 12

.global eti_8001ACF8
eti_8001ACF8:
    .4byte fn_802961AC
    .4byte 0x00000410
    .4byte etb_8000C224
.size eti_8001ACF8, 12

.global eti_8001AD04
eti_8001AD04:
    .4byte fn_802965BC
    .4byte 0x000004C8
    .4byte etb_8000C22C
.size eti_8001AD04, 12

.global eti_8001AD10
eti_8001AD10:
    .4byte fn_80296A84
    .4byte 0x00001A2C
    .4byte etb_8000C234
.size eti_8001AD10, 12

.global eti_8001AD1C
eti_8001AD1C:
    .4byte fn_802984B0
    .4byte 0x000004C8
    .4byte etb_8000C23C
.size eti_8001AD1C, 12

.global eti_8001AD28
eti_8001AD28:
    .4byte fn_80298978
    .4byte 0x000002A0
    .4byte etb_8000C244
.size eti_8001AD28, 12

.global eti_8001AD34
eti_8001AD34:
    .4byte fn_80298C18
    .4byte 0x000003AC
    .4byte etb_8000C24C
.size eti_8001AD34, 12

.global eti_8001AD40
eti_8001AD40:
    .4byte fn_80298FC4
    .4byte 0x000003B0
    .4byte etb_8000C254
.size eti_8001AD40, 12

.global eti_8001AD4C
eti_8001AD4C:
    .4byte fn_80299374
    .4byte 0x000003AC
    .4byte etb_8000C25C
.size eti_8001AD4C, 12

.global eti_8001AD58
eti_8001AD58:
    .4byte fn_80299720
    .4byte 0x000003B0
    .4byte etb_8000C264
.size eti_8001AD58, 12

.global eti_8001AD64
eti_8001AD64:
    .4byte fn_80299AD0
    .4byte 0x000004E0
    .4byte etb_8000C26C
.size eti_8001AD64, 12

.global eti_8001AD70
eti_8001AD70:
    .4byte fn_80299FB0
    .4byte 0x000004E4
    .4byte etb_8000C274
.size eti_8001AD70, 12

.global eti_8001AD7C
eti_8001AD7C:
    .4byte fn_8029A494
    .4byte 0x000004E0
    .4byte etb_8000C27C
.size eti_8001AD7C, 12

.global eti_8001AD88
eti_8001AD88:
    .4byte fn_8029A974
    .4byte 0x000004E4
    .4byte etb_8000C284
.size eti_8001AD88, 12

.global eti_8001AD94
eti_8001AD94:
    .4byte fn_8029AE58
    .4byte 0x00000494
    .4byte etb_8000C28C
.size eti_8001AD94, 12

.global eti_8001ADA0
eti_8001ADA0:
    .4byte fn_8029B484
    .4byte 0x000000B4
    .4byte etb_8000C294
.size eti_8001ADA0, 12

.global eti_8001ADAC
eti_8001ADAC:
    .4byte fn_8029B538
    .4byte 0x00000224
    .4byte etb_8000C29C
.size eti_8001ADAC, 12

.global eti_8001ADB8
eti_8001ADB8:
    .4byte fn_8029B75C
    .4byte 0x00000060
    .4byte etb_8000C2A4
.size eti_8001ADB8, 12

.global eti_8001ADC4
eti_8001ADC4:
    .4byte fn_8029B7C0
    .4byte 0x0000019C
    .4byte etb_8000C2AC
.size eti_8001ADC4, 12

.global eti_8001ADD0
eti_8001ADD0:
    .4byte fn_8029B95C
    .4byte 0x00000198
    .4byte etb_8000C2B4
.size eti_8001ADD0, 12

.global eti_8001ADDC
eti_8001ADDC:
    .4byte fn_8029BAF4
    .4byte 0x00000224
    .4byte etb_8000C2BC
.size eti_8001ADDC, 12

.global eti_8001ADE8
eti_8001ADE8:
    .4byte fn_8029BD18
    .4byte 0x00000060
    .4byte etb_8000C2C4
.size eti_8001ADE8, 12

.global eti_8001ADF4
eti_8001ADF4:
    .4byte fn_8029BD84
    .4byte 0x0000003C
    .4byte etb_8000C2CC
.size eti_8001ADF4, 12

.global eti_8001AE00
eti_8001AE00:
    .4byte fn_8029BDC0
    .4byte 0x00000410
    .4byte etb_8000C2D4
.size eti_8001AE00, 12

.global eti_8001AE0C
eti_8001AE0C:
    .4byte fn_8029C1D0
    .4byte 0x00000190
    .4byte etb_8000C2DC
.size eti_8001AE0C, 12

.global eti_8001AE18
eti_8001AE18:
    .4byte fn_8029C360
    .4byte 0x00000224
    .4byte etb_8000C2E4
.size eti_8001AE18, 12

.global eti_8001AE24
eti_8001AE24:
    .4byte fn_8029C584
    .4byte 0x00000428
    .4byte etb_8000C2EC
.size eti_8001AE24, 12

.global eti_8001AE30
eti_8001AE30:
    .4byte fn_8029C9AC
    .4byte 0x00000598
    .4byte etb_8000C2F4
.size eti_8001AE30, 12

.global eti_8001AE3C
eti_8001AE3C:
    .4byte fn_8029CF44
    .4byte 0x000000B4
    .4byte etb_8000C2FC
.size eti_8001AE3C, 12

.global eti_8001AE48
eti_8001AE48:
    .4byte fn_8029CFF8
    .4byte 0x00000214
    .4byte etb_8000C304
.size eti_8001AE48, 12

.global eti_8001AE54
eti_8001AE54:
    .4byte fn_8029D20C
    .4byte 0x00000224
    .4byte etb_8000C30C
.size eti_8001AE54, 12

.global eti_8001AE60
eti_8001AE60:
    .4byte fn_8029D430
    .4byte 0x00000060
    .4byte etb_8000C314
.size eti_8001AE60, 12

.global eti_8001AE6C
eti_8001AE6C:
    .4byte fn_8029D4A8
    .4byte 0x0000018C
    .4byte etb_8000C31C
.size eti_8001AE6C, 12

.global eti_8001AE78
eti_8001AE78:
    .4byte fn_8029D674
    .4byte 0x00000224
    .4byte etb_8000C324
.size eti_8001AE78, 12

.global eti_8001AE84
eti_8001AE84:
    .4byte fn_8029D898
    .4byte 0x00000058
    .4byte etb_8000C32C
.size eti_8001AE84, 12

.global eti_8001AE90
eti_8001AE90:
    .4byte fn_8029D8F0
    .4byte 0x0000023C
    .4byte etb_8000C334
.size eti_8001AE90, 12

.global eti_8001AE9C
eti_8001AE9C:
    .4byte fn_8029DB2C
    .4byte 0x00000224
    .4byte etb_8000C33C
.size eti_8001AE9C, 12

.global eti_8001AEA8
eti_8001AEA8:
    .4byte fn_8029DD50
    .4byte 0x0000016C
    .4byte etb_8000C344
.size eti_8001AEA8, 12

.global eti_8001AEB4
eti_8001AEB4:
    .4byte fn_8029DEBC
    .4byte 0x000000C4
    .4byte etb_8000C34C
.size eti_8001AEB4, 12

.global eti_8001AEC0
eti_8001AEC0:
    .4byte fn_8029DF80
    .4byte 0x000000D0
    .4byte etb_8000C354
.size eti_8001AEC0, 12

.global eti_8001AECC
eti_8001AECC:
    .4byte fn_8029E050
    .4byte 0x000001F8
    .4byte etb_8000C35C
.size eti_8001AECC, 12

.text
.balign 4
.global fn_80289648
.global fn_802896A8
.global fn_80289A88
.global fn_80289F6C
.global fn_8028A118
.global fn_8028A33C
.global fn_8028A39C
.global fn_8028A460
.global fn_8028A894
.global fn_8028A958
.global fn_8028AB7C
.global fn_8028AE2C
.global fn_8028B850
.global fn_8028BA5C
.global fn_8028BB14
.global fn_8028BDD0
.global fn_8028BE44
.global fn_8028C068
.global fn_8028C0C8
.global fn_8028C190
.global fn_8028C364
.global fn_8028C518
.global fn_8028C7D0
.global fn_8028D470
.global fn_8028D4DC
.global fn_8028D5D0
.global fn_8028DB54
.global fn_8028DD78
.global fn_8028DDD8
.global fn_8028E1E8
.global fn_8028E1EC
.global fn_8028F890
.global fn_8028F97C
.global fn_8028FBA0
.global fn_8028FC2C
.global fn_80290070
.global fn_80290D58
.global fn_80290E90
.global fn_80290F20
.global fn_80290FC0
.global fn_8029185C
.global fn_80291910
.global fn_80291B64
.global fn_80291B8C
.global fn_80291CB8
.global fn_80291D28
.global fn_80291E44
.global fn_80291F10
.global fn_80292124
.global fn_80292198
.global fn_802922D0
.global fn_802922EC
.global fn_80292454
.global fn_802924AC
.global fn_802925C4
.global fn_802925E4
.global fn_802927B0
.global fn_80292820
.global fn_80292944
.global fn_802929FC
.global fn_80292E90
.global fn_80292ECC
.global fn_802932BC
.global fn_80293398
.global fn_80293534
.global fn_802935A4
.global fn_80293760
.global fn_80293774
.global fn_802938B8
.global fn_80293900
.global fn_80293B1C
.global fn_80293B30
.global fn_80293E8C
.global fn_80293FE4
.global fn_80294374
.global fn_802948C0
.global fn_80294ADC
.global fn_8029513C
.global fn_80295240
.global fn_80295268
.global fn_80295334
.global fn_802953A0
.global fn_802954B8
.global fn_802954DC
.global fn_80295584
.global fn_802955A8
.global fn_802957CC
.global fn_80295C40
.global fn_80295EE8
.global fn_802961AC
.global fn_802965BC
.global fn_80296A84
.global fn_802984B0
.global fn_80298978
.global fn_80298C18
.global fn_80298FC4
.global fn_80299374
.global fn_80299720
.global fn_80299AD0
.global fn_80299FB0
.global fn_8029A494
.global fn_8029A974
.global fn_8029AE58
.global fn_8029B2EC
.global fn_8029B484
.global fn_8029B538
.global fn_8029B75C
.global fn_8029B7BC
.global fn_8029B7C0
.global fn_8029B95C
.global fn_8029BAF4
.global fn_8029BD18
.global fn_8029BD78
.global fn_8029BD84
.global fn_8029BDC0
.global fn_8029C1D0
.global fn_8029C360
.global fn_8029C584
.global fn_8029C9AC
.global fn_8029CF44
.global fn_8029CFF8
.global fn_8029D20C
.global fn_8029D430
.global fn_8029D490
.global fn_8029D498
.global fn_8029D4A4
.global fn_8029D4A8
.global fn_8029D634
.global fn_8029D674
.global fn_8029D898
.global fn_8029D8F0
.global fn_8029DB2C
.global fn_8029DD50
.global fn_8029DEBC
.global fn_8029DF80
.global fn_8029E050

fn_80289648:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8028968C
    lis 5, lbl_804A78B0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A78B0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8028968C
    mr 3, 30
    bl dtor_80084580
L_8028968C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802896A8:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x38
    stw 31, 0x8c(1)
    mr 31, 3
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80289734
L_802896D4:
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
L_80289734:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802896D4
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x55(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
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
    stb 6, 0x55(1)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    cmpwi 0, 0x2
    .4byte 0x41820100 # beq .L_802898B8
    .4byte 0x40800014 # bge .L_802897D0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802897DC
    .4byte 0x40800080 # bge .L_80289848
    .4byte 0x480001B8 # b .L_80289984
L_802897D0:
    cmpwi 0, 0x4
    .4byte 0x408001B0 # bge .L_80289984
    .4byte 0x4800014C # b .L_80289924
L_802897DC:
    lwz 5, 0x240(31)
    lis 4, 0x4330
    stw 4, 0x78(1)
    addi 3, 1, 0x8
    lhz 0, 0x4(5)
    lhz 5, 0x2(5)
    neg 0, 0
    stw 4, 0x80(1)
    xoris 0, 0, 0x8000
    .4byte 0xC862D4D0 # lfd f3, lbl_80540470@sda21(r0)
    stw 5, 0x7c(1)
    .4byte 0xC822D4D8 # lfd f1, lbl_80540478@sda21(r0)
    stw 0, 0x84(1)
    lfd 2, 0x78(1)
    lfd 0, 0x80(1)
    fsubs 4, 2, 3
    lfs 2, 0x230(31)
    fsubs 1, 0, 1
    lfs 0, 0x234(31)
    .4byte 0xC062D4C0 # lfs f3, lbl_80540460@sda21(r0)
    fmuls 4, 4, 2
    fmuls 0, 1, 0
    .4byte 0xC042D4C4 # lfs f2, lbl_80540464@sda21(r0)
    fmuls 1, 4, 3
    fmuls 3, 0, 3
    bl PSMTXTrans
    .4byte 0x48000150 # b .L_80289994
L_80289848:
    lwz 6, 0x240(31)
    lis 4, 0x4330
    stw 4, 0x80(1)
    addi 3, 1, 0x8
    lhz 5, 0x2(6)
    lhz 0, 0x4(6)
    neg 5, 5
    stw 4, 0x78(1)
    neg 0, 0
    .4byte 0xC8C2D4D8 # lfd f6, lbl_80540478@sda21(r0)
    xoris 4, 5, 0x8000
    lfs 4, 0x230(31)
    xoris 0, 0, 0x8000
    stw 4, 0x84(1)
    lfs 0, 0x234(31)
    stw 0, 0x7c(1)
    lfd 2, 0x80(1)
    lfd 1, 0x78(1)
    fsubs 5, 2, 6
    .4byte 0xC062D4C0 # lfs f3, lbl_80540460@sda21(r0)
    fsubs 1, 1, 6
    .4byte 0xC042D4C4 # lfs f2, lbl_80540464@sda21(r0)
    fmuls 4, 5, 4
    fmuls 0, 1, 0
    fmuls 1, 4, 3
    fmuls 3, 0, 3
    bl PSMTXTrans
    .4byte 0x480000E0 # b .L_80289994
L_802898B8:
    lwz 5, 0x240(31)
    lis 4, 0x4330
    stw 4, 0x80(1)
    addi 3, 1, 0x8
    lhz 0, 0x4(5)
    lhz 5, 0x2(5)
    neg 0, 0
    stw 4, 0x78(1)
    xoris 0, 0, 0x8000
    .4byte 0xC862D4D0 # lfd f3, lbl_80540470@sda21(r0)
    stw 5, 0x84(1)
    .4byte 0xC822D4D8 # lfd f1, lbl_80540478@sda21(r0)
    stw 0, 0x7c(1)
    lfd 2, 0x80(1)
    lfd 0, 0x78(1)
    fsubs 4, 2, 3
    lfs 2, 0x230(31)
    fsubs 1, 0, 1
    lfs 0, 0x234(31)
    .4byte 0xC062D4C0 # lfs f3, lbl_80540460@sda21(r0)
    fmuls 4, 4, 2
    fmuls 0, 1, 0
    .4byte 0xC042D4C4 # lfs f2, lbl_80540464@sda21(r0)
    fmuls 1, 4, 3
    fmuls 3, 0, 3
    bl PSMTXTrans
    .4byte 0x48000074 # b .L_80289994
L_80289924:
    lwz 6, 0x240(31)
    lis 4, 0x4330
    stw 4, 0x80(1)
    addi 3, 1, 0x8
    lhz 5, 0x2(6)
    lhz 0, 0x4(6)
    stw 5, 0x84(1)
    .4byte 0xC8C2D4D0 # lfd f6, lbl_80540470@sda21(r0)
    lfd 0, 0x80(1)
    stw 0, 0x7c(1)
    fsubs 3, 0, 6
    lfs 2, 0x230(31)
    stw 4, 0x78(1)
    lfs 0, 0x234(31)
    lfd 1, 0x78(1)
    fmuls 5, 3, 2
    .4byte 0xC082D4C0 # lfs f4, lbl_80540460@sda21(r0)
    fsubs 3, 1, 6
    .4byte 0xC042D4C4 # lfs f2, lbl_80540464@sda21(r0)
    fmuls 1, 5, 4
    fmuls 0, 3, 0
    fmuls 3, 0, 4
    bl PSMTXTrans
    .4byte 0x48000014 # b .L_80289994
L_80289984:
    .4byte 0xC002D4C4 # lfs f0, lbl_80540464@sda21(r0)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
L_80289994:
    lis 3, lbl_8052EBC0@ha
    lfsu 7, lbl_8052EBC0@l(3)
    lfs 5, 0x230(31)
    addi 4, 1, 0x8
    lfs 1, 0x4(3)
    fmuls 0, 7, 7
    lfs 12, 0x234(31)
    li 3, 0x1
    fmuls 11, 1, 1
    li 0, -0x2
    fmuls 10, 1, 7
    fneg 4, 7
    .4byte 0xC0C2D4C8 # lfs f6, lbl_80540468@sda21(r0)
    fmadds 2, 0, 7, 11
    fmsubs 3, 0, 1, 10
    stw 4, 0x50(1)
    fmadds 1, 11, 7, 0
    fmsubs 0, 10, 7, 10
    stb 3, 0x59(1)
    fmuls 7, 5, 4
    fmuls 4, 6, 2
    stb 0, 0x55(1)
    fmuls 2, 12, 1
    fmuls 1, 12, 0
    stfs 7, 0x28(1)
    fmuls 9, 5, 11
    fmuls 8, 5, 10
    stfs 4, 0x1c(1)
    fmuls 5, 6, 3
    fmuls 3, 6, 10
    stfs 9, 0x8(1)
    fmuls 0, 12, 11
    stfs 8, 0x18(1)
    .4byte 0x80AD85D8 # lwz r5, lbl_8053A198@sda21(r0)
    stfs 5, 0xc(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_80289A74
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5449
    addi 4, 4, 0x4d47
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0x38
    bl fn_802F745C
L_80289A74:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80289A88:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    lwz 12, 0x0(3)
    mr 31, 3
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80289AF0
    lbz 0, 0x244(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80289AE4
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
L_80289AE4:
    li 0, 0x1
    stb 0, 0x244(31)
    .4byte 0x48000038 # b .L_80289B24
L_80289AF0:
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 25
    .4byte 0x4082002C # bne .L_80289B24
    lbz 0, 0x244(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80289B1C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x41
    li 5, 0x0
    bl fn_801F0E34
L_80289B1C:
    li 0, 0x0
    stb 0, 0x244(31)
L_80289B24:
    lbz 0, 0x244(31)
    cmplwi 0, 0x0
    .4byte 0x418200CC # beq .L_80289BF8
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    cmpwi 0, 0x2
    .4byte 0x40800060 # bge .L_80289B9C
    lfs 1, 0x238(31)
    lis 0, 0x4330
    .4byte 0xC002D4C8 # lfs f0, lbl_80540468@sda21(r0)
    stw 0, 0x60(1)
    fadds 0, 1, 0
    .4byte 0xC822D4D8 # lfd f1, lbl_80540478@sda21(r0)
    stfs 0, 0x238(31)
    lwz 3, 0x90(31)
    lfs 2, 0x238(31)
    rlwinm 3, 3, 19, 23, 27
    xoris 3, 3, 0x8000
    stw 3, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x408200DC # bne .L_80289C5C
    stw 3, 0x64(1)
    stw 0, 0x60(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0x238(31)
    .4byte 0x480000C4 # b .L_80289C5C
L_80289B9C:
    lfs 1, 0x23c(31)
    lis 0, 0x4330
    .4byte 0xC002D4C8 # lfs f0, lbl_80540468@sda21(r0)
    stw 0, 0x60(1)
    fadds 0, 1, 0
    .4byte 0xC822D4D8 # lfd f1, lbl_80540478@sda21(r0)
    stfs 0, 0x23c(31)
    lwz 3, 0x90(31)
    lfs 2, 0x23c(31)
    rlwinm 3, 3, 19, 23, 27
    xoris 3, 3, 0x8000
    stw 3, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820080 # bne .L_80289C5C
    stw 3, 0x64(1)
    stw 0, 0x60(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0x23c(31)
    .4byte 0x48000068 # b .L_80289C5C
L_80289BF8:
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    cmpwi 0, 0x2
    .4byte 0x40800030 # bge .L_80289C34
    lfs 2, 0x238(31)
    .4byte 0xC022D4C8 # lfs f1, lbl_80540468@sda21(r0)
    .4byte 0xC002D4C4 # lfs f0, lbl_80540464@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x238(31)
    lfs 1, 0x238(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820034 # bne .L_80289C5C
    stfs 0, 0x238(31)
    .4byte 0x4800002C # b .L_80289C5C
L_80289C34:
    lfs 2, 0x23c(31)
    .4byte 0xC022D4C8 # lfs f1, lbl_80540468@sda21(r0)
    .4byte 0xC002D4C4 # lfs f0, lbl_80540464@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x23c(31)
    lfs 1, 0x23c(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80289C5C
    stfs 0, 0x23c(31)
L_80289C5C:
    lfs 4, 0x68(31)
    lfs 1, 0x60(31)
    lfs 5, 0x6c(31)
    lfs 0, 0x64(31)
    fsubs 1, 1, 4
    .4byte 0xC042D4C0 # lfs f2, lbl_80540460@sda21(r0)
    fsubs 0, 0, 5
    lwz 0, 0x90(31)
    fmadds 1, 2, 1, 4
    .4byte 0xC062D4C4 # lfs f3, lbl_80540464@sda21(r0)
    extrwi 0, 0, 5, 15
    fmadds 0, 2, 0, 5
    cmpwi 0, 0x2
    stfs 3, 0x58(1)
    stfs 1, 0x50(1)
    stfs 0, 0x54(1)
    .4byte 0x41820070 # beq .L_80289D0C
    .4byte 0x40800014 # bge .L_80289CB4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80289CC0
    .4byte 0x40800038 # bge .L_80289CE4
    .4byte 0x480000A4 # b .L_80289D54
L_80289CB4:
    cmpwi 0, 0x4
    .4byte 0x4080009C # bge .L_80289D54
    .4byte 0x48000074 # b .L_80289D30
L_80289CC0:
    lfs 1, 0x23c(31)
    lfs 2, 0x238(31)
    .4byte 0xC002D4E0 # lfs f0, lbl_80540480@sda21(r0)
    stfs 3, 0x60(31)
    fsubs 1, 1, 0
    stfs 0, 0x64(31)
    stfs 2, 0x68(31)
    stfs 1, 0x6c(31)
    .4byte 0x48000074 # b .L_80289D54
L_80289CE4:
    lfs 0, 0x238(31)
    lfs 2, 0x23c(31)
    fneg 0, 0
    .4byte 0xC022D4E0 # lfs f1, lbl_80540480@sda21(r0)
    fsubs 2, 2, 1
    stfs 0, 0x60(31)
    stfs 1, 0x64(31)
    stfs 3, 0x68(31)
    stfs 2, 0x6c(31)
    .4byte 0x4800004C # b .L_80289D54
L_80289D0C:
    lfs 2, 0x23c(31)
    lfs 1, 0x238(31)
    .4byte 0xC002D4E0 # lfs f0, lbl_80540480@sda21(r0)
    stfs 0, 0x60(31)
    fsubs 0, 1, 0
    stfs 3, 0x64(31)
    stfs 0, 0x68(31)
    stfs 2, 0x6c(31)
    .4byte 0x48000028 # b .L_80289D54
L_80289D30:
    lfs 0, 0x23c(31)
    lfs 2, 0x238(31)
    .4byte 0xC022D4E0 # lfs f1, lbl_80540480@sda21(r0)
    fneg 0, 0
    stfs 1, 0x60(31)
    fsubs 1, 2, 1
    stfs 0, 0x64(31)
    stfs 1, 0x68(31)
    stfs 3, 0x6c(31)
L_80289D54:
    lwz 4, 0x240(31)
    lis 3, 0x4330
    .4byte 0xC0A2D4C4 # lfs f5, lbl_80540464@sda21(r0)
    li 29, 0x0
    lhz 0, 0x2(4)
    lhz 4, 0x4(4)
    stw 0, 0x6c(1)
    .4byte 0xC862D4D0 # lfd f3, lbl_80540470@sda21(r0)
    stw 3, 0x68(1)
    lfs 1, 0x238(31)
    lfd 0, 0x68(1)
    stw 4, 0x64(1)
    fsubs 0, 0, 3
    lfs 4, 0x23c(31)
    stw 3, 0x60(1)
    lfs 9, 0x68(31)
    lfd 2, 0x60(1)
    fdivs 0, 1, 0
    lfs 7, 0x60(31)
    lfs 10, 0x6c(31)
    lfs 6, 0x64(31)
    .4byte 0xC102D4C0 # lfs f8, lbl_80540460@sda21(r0)
    stfs 5, 0x4c(1)
    fsubs 1, 2, 3
    stfs 0, 0x230(31)
    fsubs 2, 7, 9
    fsubs 0, 6, 10
    fdivs 3, 4, 1
    fmadds 1, 8, 2, 9
    stfs 3, 0x234(31)
    fmadds 0, 8, 0, 10
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
L_80289DD8:
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182000C # beq .L_80289DF4
    li 0, 0x0
    .4byte 0x480000B0 # b .L_80289EA0
L_80289DF4:
    li 30, 0x0
    .4byte 0xC3E2D4C4 # lfs f31, lbl_80540464@sda21(r0)
L_80289DFC:
    mr 3, 29
    mr 4, 30
    addi 5, 1, 0x20
    bl fn_8022E088
    psq_l 2, 0x20(1), 0, 0
    li 0, 0x0
    psq_l 0, 0xc(31), 0, 0
    psq_l 1, 0x28(1), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x20(1), 0, 0
    psq_l 0, 0x14(31), 1, 0
    lfs 4, 0x20(1)
    ps_sub 0, 1, 0
    psq_st 0, 0x28(1), 1, 0
    stfs 31, 0x28(1)
    lfs 0, 0x60(31)
    lfs 1, 0x64(31)
    fcmpo cr0, 4, 0
    lfs 2, 0x68(31)
    lfs 3, 0x6c(31)
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_80289E78
    lfs 0, 0x24(1)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80289E78
    fcmpo cr0, 4, 2
    .4byte 0x40800010 # bge .L_80289E78
    fcmpo cr0, 0, 3
    .4byte 0x40800008 # bge .L_80289E78
    li 0, 0x1
L_80289E78:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80289E90
    mr 3, 29
    bl fn_8022DF48
    li 0, 0x1
    .4byte 0x48000014 # b .L_80289EA0
L_80289E90:
    addi 30, 30, 0x1
    cmpwi 30, 0x8
    .4byte 0x4180FF64 # blt .L_80289DFC
    li 0, 0x0
L_80289EA0:
    clrlwi. 0, 0, 24
    .4byte 0x41820098 # beq .L_80289F3C
    lfs 3, 0x4c(1)
    lis 3, lbl_80539D44@ha
    psq_l 4, 0x44(1), 0, 0
    stfs 3, 0x10(1)
    psq_l 8, 0x50(1), 0, 0
    psq_l 0, 0x10(1), 1, 0
    psq_l 6, 0x58(1), 1, 0
    ps_sub 7, 4, 8
    psq_st 4, 0x8(1), 0, 0
    ps_sub 5, 0, 6
    .4byte 0xC022D4E4 # lfs f1, lbl_80540484@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 7, 7
    psq_st 7, 0x8(1), 0, 0
    fmuls 0, 1, 0
    psq_st 5, 0x10(1), 1, 0
    lfs 5, 0x10(1)
    psq_st 7, 0x38(1), 0, 0
    ps_madd 1, 5, 5, 2
    stfs 5, 0x40(1)
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820038 # beq .L_80289F3C
    stfs 3, 0x1c(1)
    ps_sub 1, 4, 8
    addi 4, 1, 0x2c
    mr 3, 29
    psq_l 0, 0x1c(1), 1, 0
    psq_st 4, 0x14(1), 0, 0
    ps_sub 0, 0, 6
    psq_st 1, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x34(1)
    bl fn_8023DF68
L_80289F3C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE94 # blt .L_80289DD8
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80289F6C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    extrwi. 0, 0, 5, 20
    .4byte 0x40820010 # bne .L_80289F98
    lwz 0, 0x90(31)
    ori 0, 0, 0x80
    stw 0, 0x90(31)
L_80289F98:
    lwz 0, 0x90(31)
    extrwi. 0, 0, 5, 10
    .4byte 0x40820010 # bne .L_80289FB0
    lwz 0, 0x90(31)
    oris 0, 0, 0x2
    stw 0, 0x90(31)
L_80289FB0:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    .4byte 0x80AD85D8 # lwz r5, lbl_8053A198@sda21(r0)
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    stw 3, 0x240(31)
    li 0, 0x0
    stw 0, 0x108(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    cmpwi 0, 0x2
    .4byte 0x41820048 # beq .L_8028A034
    .4byte 0x40800014 # bge .L_8028A004
    cmpwi 0, 0x0
    .4byte 0x4182003C # beq .L_8028A034
    .4byte 0x40800014 # bge .L_8028A010
    .4byte 0x48000034 # b .L_8028A034
L_8028A004:
    cmpwi 0, 0x4
    .4byte 0x4080002C # bge .L_8028A034
    .4byte 0x48000018 # b .L_8028A024
L_8028A010:
    lfs 1, 0xc(31)
    .4byte 0xC002D4E8 # lfs f0, lbl_80540488@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000014 # b .L_8028A034
L_8028A024:
    lfs 1, 0x10(31)
    .4byte 0xC002D4E8 # lfs f0, lbl_80540488@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_8028A034:
    lwz 3, 0x90(31)
    extrwi 0, 3, 5, 15
    cmpwi 0, 0x2
    .4byte 0x4080003C # bge .L_8028A07C
    extrwi 3, 3, 5, 20
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    .4byte 0xC062D4C4 # lfs f3, lbl_80540464@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC822D4D8 # lfd f1, lbl_80540478@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC042D4E8 # lfs f2, lbl_80540488@sda21(r0)
    lfd 0, 0x8(1)
    stfs 3, 0x238(31)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x23c(31)
    .4byte 0x48000038 # b .L_8028A0B0
L_8028A07C:
    extrwi 3, 3, 5, 20
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC842D4D8 # lfd f2, lbl_80540478@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC062D4E8 # lfs f3, lbl_80540488@sda21(r0)
    lfd 1, 0x8(1)
    .4byte 0xC002D4C4 # lfs f0, lbl_80540464@sda21(r0)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    stfs 1, 0x238(31)
    stfs 0, 0x23c(31)
L_8028A0B0:
    lwz 5, 0x240(31)
    lis 4, 0x4330
    stw 4, 0x10(1)
    li 0, 0x0
    lhz 3, 0x2(5)
    lhz 5, 0x4(5)
    stw 3, 0x14(1)
    .4byte 0xC862D4D0 # lfd f3, lbl_80540470@sda21(r0)
    lfd 0, 0x10(1)
    stw 5, 0xc(1)
    fsubs 0, 0, 3
    lfs 1, 0x238(31)
    stw 4, 0x8(1)
    lfs 4, 0x23c(31)
    lfd 2, 0x8(1)
    fdivs 0, 1, 0
    fsubs 1, 2, 3
    stfs 0, 0x230(31)
    fdivs 0, 4, 1
    stfs 0, 0x234(31)
    stb 0, 0x244(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8028A118:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CFE68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CFE68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A168
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
L_8028A168:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A1A0
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
L_8028A1A0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A1D8
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
L_8028A1D8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A210
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
L_8028A210:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A248
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
L_8028A248:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A280
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
L_8028A280:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A2B8
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
L_8028A2B8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A2F0
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
L_8028A2F0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A328
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
L_8028A328:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028A33C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8028A380
    lis 5, lbl_804A7908@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7908@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8028A380
    mr 3, 30
    bl dtor_80084580
L_8028A380:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028A39C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x4(3)
    lwz 3, 0x23c(3)
    cmpwi 0, 0x8
    addi 31, 3, 0x147
    .4byte 0x40800050 # bge .L_8028A414
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C0E8@ha
    addi 5, 3, lbl_8046C0E8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D4F0 # lfs f1, lbl_80540490@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 30, 0x24
    bl fn_802F86CC
L_8028A414:
    li 0, 0x0
    addi 5, 30, 0x24
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x23c(30)
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

fn_8028A460:
    stwu 1, -0x60(1)
    mflr 0
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    lfs 2, 0x60(3)
    stfs 2, 0x44(1)
    lfs 5, 0x64(3)
    stfs 5, 0x48(1)
    lfs 3, 0x68(3)
    stfs 3, 0x4c(1)
    lfs 4, 0x6c(3)
    stfs 4, 0x50(1)
    lfs 1, 0xc(3)
    fadds 2, 2, 1
    fadds 1, 3, 1
    stfs 2, 0x44(1)
    lfs 3, 0x10(3)
    fadds 2, 5, 3
    stfs 1, 0x4c(1)
    fadds 1, 4, 3
    stfs 2, 0x48(1)
    stfs 1, 0x50(1)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 3, 0x248(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8028A4E4
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_8028A4E4:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x418000B0 # blt .L_8028A59C
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8028A518
    li 4, 0x0
    bl fn_80230224
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_8028A59C
    li 0, -0x1
    stw 0, 0x24c(31)
    .4byte 0x48000088 # b .L_8028A59C
L_8028A518:
    psq_l 1, 0x230(31), 0, 0
    addi 4, 1, 0x38
    lfs 2, 0x238(31)
    cmpwi 0, 0x70
    .4byte 0xC002D4F8 # lfs f0, lbl_80540498@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    lfs 1, 0x3c(1)
    stfs 2, 0x40(1)
    fadds 0, 1, 0
    stfs 0, 0x3c(1)
    .4byte 0x41800020 # blt .L_8028A560
    li 5, 0x2e2
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000040 # b .L_8028A59C
L_8028A560:
    cmpwi 0, 0x68
    .4byte 0x41800020 # blt .L_8028A584
    li 5, 0x2e3
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x4800001C # b .L_8028A59C
L_8028A584:
    li 5, 0x2e4
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8028A59C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x44
    lwz 5, 0x198(31)
    bl fn_80239470
    mr. 30, 3
    .4byte 0x41800208 # blt .L_8028A7B8
    lwz 4, 0x4(31)
    addi 3, 1, 0x44
    lwz 5, 0x198(31)
    bl fn_80239914
    mr 3, 30
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(31)
    .4byte 0xC002D4FC # lfs f0, lbl_8054049C@sda21(r0)
    fsubs 2, 1, 2
    fabs 1, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8028A608
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
    mr 3, 30
    stfs 2, 0x20(1)
    addi 4, 1, 0x20
    stfs 0, 0x24(1)
    stfs 0, 0x28(1)
    bl fn_8023DFF4
L_8028A608:
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8028A630
    .4byte 0xC002D4F8 # lfs f0, lbl_80540498@sda21(r0)
    stfs 0, 0x244(31)
    lfs 1, 0x28(31)
    lfs 0, 0x244(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480001FC # b .L_8028A828
L_8028A630:
    lfs 3, 0x244(31)
    .4byte 0xC042D500 # lfs f2, lbl_805404A0@sda21(r0)
    fcmpo cr0, 3, 2
    cror eq, gt, eq
    .4byte 0x408200BC # bne .L_8028A6FC
    .4byte 0xC022D504 # lfs f1, lbl_805404A4@sda21(r0)
    .4byte 0xC002D4F8 # lfs f0, lbl_80540498@sda21(r0)
    fadds 1, 3, 1
    stfs 1, 0x244(31)
    lfs 1, 0x244(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082008C # bne .L_8028A6EC
    stfs 0, 0x244(31)
    li 0, 0x1
    lis 4, 0x3
    mr 3, 31
    stb 0, 0x240(31)
    addi 4, 4, 0x4b
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lfs 2, 0x28(31)
    mr 3, 30
    lfs 0, 0x244(31)
    .4byte 0xC022D4F4 # lfs f1, lbl_80540494@sda21(r0)
    fadds 2, 2, 0
    .4byte 0xC002D500 # lfs f0, lbl_805404A0@sda21(r0)
    stfs 2, 0x10(31)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820158 # beq .L_8028A828
    mr 3, 30
    bl fn_80230AD4
    li 0, 0x1e
    stw 0, 0x248(31)
    stw 30, 0x24c(31)
    .4byte 0x48000140 # b .L_8028A828
L_8028A6EC:
    lfs 0, 0x28(31)
    fadds 0, 2, 0
    stfs 0, 0x10(31)
    .4byte 0x48000130 # b .L_8028A828
L_8028A6FC:
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x4082007C # bne .L_8028A784
    psq_l 2, 0xc(31), 0, 0
    mr 3, 30
    lfs 1, 0x14(31)
    .4byte 0xC002D508 # lfs f0, lbl_805404A8@sda21(r0)
    psq_st 2, 0x230(31), 0, 0
    stfs 1, 0x238(31)
    lfs 1, 0x234(31)
    fadds 0, 1, 0
    stfs 0, 0x234(31)
    bl fn_8023E724
    lfs 0, 0x8(3)
    addi 4, 1, 0x14
    lfs 1, 0x238(31)
    stfs 0, 0x34(1)
    psq_l 0, 0x0(3), 0, 0
    mr 3, 30
    stfs 1, 0x10(1)
    psq_l 2, 0x34(1), 1, 0
    psq_l 3, 0x10(1), 1, 0
    psq_l 1, 0x230(31), 0, 0
    ps_sub 2, 3, 2
    psq_st 0, 0x2c(1), 0, 0
    ps_sub 0, 1, 0
    psq_st 1, 0x8(1), 0, 0
    psq_st 2, 0x10(1), 1, 0
    lfs 1, 0x10(1)
    psq_st 0, 0x8(1), 0, 0
    psq_st 0, 0x0(4), 0, 0
    stfs 1, 0x1c(1)
    bl fn_8023DFF4
L_8028A784:
    lfs 1, 0x244(31)
    .4byte 0xC042D50C # lfs f2, lbl_805404AC@sda21(r0)
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x244(31)
    stfs 0, 0x3c(31)
    stfs 2, 0x40(31)
    stfs 0, 0x44(31)
    lfs 1, 0x28(31)
    lfs 0, 0x244(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000074 # b .L_8028A828
L_8028A7B8:
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8028A7E0
    .4byte 0xC002D4F8 # lfs f0, lbl_80540498@sda21(r0)
    stfs 0, 0x244(31)
    lfs 1, 0x28(31)
    lfs 0, 0x244(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x4800004C # b .L_8028A828
L_8028A7E0:
    lfs 2, 0x244(31)
    .4byte 0xC022D50C # lfs f1, lbl_805404AC@sda21(r0)
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x244(31)
    lfs 1, 0x244(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8028A804
    stfs 0, 0x244(31)
L_8028A804:
    .4byte 0xC022D4F4 # lfs f1, lbl_80540494@sda21(r0)
    .4byte 0xC002D510 # lfs f0, lbl_805404B0@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    lfs 1, 0x28(31)
    lfs 0, 0x244(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_8028A828:
    lfs 1, 0x244(31)
    .4byte 0xC002D4F0 # lfs f0, lbl_80540490@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8028A844
    li 0, 0x0
    stw 0, 0x23c(31)
    .4byte 0x4800003C # b .L_8028A87C
L_8028A844:
    .4byte 0xC002D514 # lfs f0, lbl_805404B4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8028A85C
    li 0, 0x1
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_8028A87C
L_8028A85C:
    .4byte 0xC002D4F8 # lfs f0, lbl_80540498@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8028A874
    li 0, 0x2
    stw 0, 0x23c(31)
    .4byte 0x4800000C # b .L_8028A87C
L_8028A874:
    li 0, 0x4
    stw 0, 0x23c(31)
L_8028A87C:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8028A894:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042D518 # lfs f2, lbl_805404B8@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC022D4F8 # lfs f1, lbl_80540498@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
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
    stb 3, 0x240(31)
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8028A91C
    .4byte 0xC002D4F8 # lfs f0, lbl_80540498@sda21(r0)
    stfs 0, 0x244(31)
    lfs 1, 0x28(31)
    lfs 0, 0x244(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x4800000C # b .L_8028A924
L_8028A91C:
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
    stfs 0, 0x244(31)
L_8028A924:
    .4byte 0xC002D4F4 # lfs f0, lbl_80540494@sda21(r0)
    li 3, 0x0
    li 0, -0x1
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0x248(31)
    stw 0, 0x24c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028A958:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CFF68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CFF68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A9A8
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
L_8028A9A8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028A9E0
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
L_8028A9E0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028AA18
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
L_8028AA18:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028AA50
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
L_8028AA50:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028AA88
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
L_8028AA88:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028AAC0
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
L_8028AAC0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028AAF8
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
L_8028AAF8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028AB30
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
L_8028AB30:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028AB68
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
L_8028AB68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028AB7C:
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
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
    lfs 1, 0x240(3)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820218 # beq .L_8028ADE8
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_8028AC4C
L_8028ABEC:
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
L_8028AC4C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8028ABEC
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x55(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    .4byte 0xC002D52C # lfs f0, lbl_805404CC@sda21(r0)
    stw 5, 0x4c(1)
    .4byte 0xC042D528 # lfs f2, lbl_805404C8@sda21(r0)
    stw 5, 0x50(1)
    .4byte 0xC062D524 # lfs f3, lbl_805404C4@sda21(r0)
    stb 5, 0x54(1)
    .4byte 0xC022D520 # lfs f1, lbl_805404C0@sda21(r0)
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
    stb 6, 0x55(1)
    lfs 29, 0x240(31)
    fsubs 0, 0, 29
    fmuls 0, 2, 0
    fmuls 30, 3, 0
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022D520 # lfs f1, lbl_805404C0@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022D520 # lfs f1, lbl_805404C0@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022D520 # lfs f1, lbl_805404C0@sda21(r0)
    bl cos
    frsp 5, 1
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
    addi 0, 1, 0x8
    lis 3, lbl_8046C10C@ha
    addi 4, 3, lbl_8046C10C@l
    fmuls 4, 28, 27
    fmuls 10, 31, 26
    stfs 0, 0x14(1)
    fmuls 2, 28, 5
    .4byte 0xC022D52C # lfs f1, lbl_805404CC@sda21(r0)
    fmuls 11, 31, 5
    stfs 0, 0x24(1)
    fmuls 3, 28, 26
    stfs 0, 0x34(1)
    fmuls 0, 31, 30
    mr 3, 31
    fmuls 8, 30, 26
    stw 0, 0x50(1)
    fmuls 0, 29, 0
    addi 6, 1, 0x38
    fneg 7, 27
    li 7, -0x1
    fmuls 9, 30, 5
    fmsubs 6, 4, 5, 10
    fmadds 5, 4, 26, 11
    stfs 0, 0x30(1)
    fmsubs 2, 10, 27, 2
    fmuls 10, 29, 9
    fmuls 9, 29, 8
    fmuls 8, 29, 7
    fmuls 7, 29, 6
    stfs 10, 0x8(1)
    fmuls 6, 29, 5
    fmuls 4, 28, 30
    stfs 9, 0x18(1)
    fmadds 3, 11, 27, 3
    stfs 8, 0x28(1)
    fmuls 5, 29, 4
    fmuls 4, 29, 3
    stfs 7, 0xc(1)
    fmuls 3, 29, 2
    stfs 6, 0x1c(1)
    fmr 2, 1
    stfs 5, 0x2c(1)
    stfs 4, 0x10(1)
    stfs 3, 0x20(1)
    lwz 5, 0x25c(31)
    addi 5, 5, 0x129
    bl fn_801F06F0
L_8028ADE8:
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

fn_8028AE2C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    li 0, 0x0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    stw 29, 0x44(1)
    lbz 29, 0x234(3)
    stb 0, 0x262(3)
    bl fn_8028B850
    cmplwi 29, 0x0
    stb 3, 0x234(30)
    .4byte 0x4082001C # bne .L_8028AE7C
    lbz 0, 0x234(30)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8028AE7C
    li 0, 0x1
    stb 0, 0x263(30)
    .4byte 0x48000020 # b .L_8028AE98
L_8028AE7C:
    cmplwi 29, 0x1
    .4byte 0x40820018 # bne .L_8028AE98
    lbz 0, 0x234(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8028AE98
    li 0, 0x1
    stb 0, 0x264(30)
L_8028AE98:
    lwz 31, 0x25c(30)
    cmpwi 31, 0x5
    .4byte 0x41800008 # blt .L_8028AEA8
    li 31, 0x0
L_8028AEA8:
    lbz 0, 0x234(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8028AEC0
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40810458 # ble .L_8028B314
L_8028AEC0:
    lfs 1, 0x240(30)
    .4byte 0xC002D52C # lfs f0, lbl_805404CC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800070 # bge .L_8028AF3C
    lbz 0, 0x263(30)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8028AEF0
    mr 3, 30
    li 4, 0x2e
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x263(30)
L_8028AEF0:
    lfs 2, 0x240(30)
    .4byte 0xC022D530 # lfs f1, lbl_805404D0@sda21(r0)
    .4byte 0xC002D52C # lfs f0, lbl_805404CC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x240(30)
    lfs 1, 0x240(30)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_8028AF3C
    stfs 0, 0x240(30)
    li 0, 0xa
    stw 0, 0x248(30)
    lwz 0, 0x90(30)
    extrwi 0, 0, 1, 28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8028AF3C
    mr 3, 30
    li 4, 0x3
    bl fn_801F0D20
L_8028AF3C:
    lfs 1, 0x240(30)
    .4byte 0xC002D52C # lfs f0, lbl_805404CC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408208E8 # bne .L_8028B834
    lbz 0, 0x260(30)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8028AF78
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0xe7
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
    li 0, 0x0
    stb 0, 0x260(30)
L_8028AF78:
    lwz 3, 0x244(30)
    addi 0, 3, 0x1
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x6e
    .4byte 0x4180000C # blt .L_8028AF98
    li 0, 0x6e
    stw 0, 0x244(30)
L_8028AF98:
    lwz 29, 0x244(30)
    bl fn_801902C0
    lwz 0, 0x5ec(3)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_8028B000
    mulli 5, 0, 0x28
    xoris 4, 29, 0x8000
    lis 0, 0x4330
    lfs 0, 0xc(30)
    stw 4, 0x2c(1)
    addi 4, 5, 0x4ac
    add 4, 3, 4
    stw 0, 0x28(1)
    .4byte 0xC822D540 # lfd f1, lbl_805404E0@sda21(r0)
    stfs 0, 0x0(4)
    lfd 0, 0x28(1)
    lfs 2, 0x10(30)
    fsubs 0, 0, 1
    stfs 2, 0x4(4)
    lfs 1, 0x14(30)
    stfs 1, 0x8(4)
    stw 31, 0xc(4)
    stfs 0, 0x10(4)
    lwz 4, 0x5ec(3)
    addi 0, 4, 0x1
    stw 0, 0x5ec(3)
L_8028B000:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x2d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x274(30)
    cmplwi 0, 0x0
    .4byte 0x40820174 # bne .L_8028B190
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022D52C # lfs f1, lbl_805404CC@sda21(r0)
    li 5, 0x2a6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x274(30)
    lwz 3, 0x274(30)
    cmplwi 3, 0x0
    .4byte 0x4182013C # beq .L_8028B190
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8028B06C
    cmpwi 0, 0x5
    .4byte 0x40820038 # bne .L_8028B0A0
L_8028B06C:
    li 7, 0x5a
    li 6, 0xf3
    stb 7, 0xb8(3)
    li 5, 0xe9
    li 4, 0x30
    li 0, 0xa0
    stb 6, 0xb9(3)
    stb 5, 0xba(3)
    lwz 3, 0x274(30)
    stb 4, 0xbc(3)
    stb 0, 0xbd(3)
    stb 7, 0xbe(3)
    .4byte 0x480000F4 # b .L_8028B190
L_8028B0A0:
    cmpwi 0, 0x1
    .4byte 0x4082003C # bne .L_8028B0E0
    li 4, 0xa0
    li 0, 0xff
    stb 4, 0xb8(3)
    li 6, 0x78
    li 5, 0x40
    li 4, 0x80
    stb 0, 0xb9(3)
    li 0, 0x30
    stb 6, 0xba(3)
    lwz 3, 0x274(30)
    stb 5, 0xbc(3)
    stb 4, 0xbd(3)
    stb 0, 0xbe(3)
    .4byte 0x480000B4 # b .L_8028B190
L_8028B0E0:
    cmpwi 0, 0x2
    .4byte 0x40820034 # bne .L_8028B118
    li 6, 0xff
    li 5, 0x78
    stb 6, 0xb8(3)
    li 4, 0x40
    li 0, 0xa0
    stb 5, 0xb9(3)
    stb 4, 0xba(3)
    lwz 3, 0x274(30)
    stb 6, 0xbc(3)
    stb 0, 0xbd(3)
    stb 4, 0xbe(3)
    .4byte 0x4800007C # b .L_8028B190
L_8028B118:
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_8028B154
    li 0, 0x0
    li 6, 0xa0
    stb 0, 0xb8(3)
    li 5, 0xc8
    li 4, 0x40
    li 0, 0x78
    stb 6, 0xb9(3)
    stb 5, 0xba(3)
    lwz 3, 0x274(30)
    stb 4, 0xbc(3)
    stb 0, 0xbd(3)
    stb 6, 0xbe(3)
    .4byte 0x48000040 # b .L_8028B190
L_8028B154:
    cmpwi 0, 0x4
    .4byte 0x40820038 # bne .L_8028B190
    li 4, 0xc8
    li 0, 0x9c
    stb 4, 0xb8(3)
    li 6, 0xe5
    li 5, 0x78
    li 4, 0x30
    stb 0, 0xb9(3)
    li 0, 0xa0
    stb 6, 0xba(3)
    lwz 3, 0x274(30)
    stb 5, 0xbc(3)
    stb 4, 0xbd(3)
    stb 0, 0xbe(3)
L_8028B190:
    lwz 0, 0x278(30)
    cmplwi 0, 0x0
    .4byte 0x408202F8 # bne .L_8028B490
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022D52C # lfs f1, lbl_805404CC@sda21(r0)
    li 5, 0x2a7
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x278(30)
    lwz 3, 0x278(30)
    cmplwi 3, 0x0
    .4byte 0x418202C0 # beq .L_8028B490
    lwz 0, 0x25c(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8028B1E8
    cmpwi 0, 0x5
    .4byte 0x40820034 # bne .L_8028B218
L_8028B1E8:
    li 6, 0xff
    li 5, 0x5a
    stb 6, 0xb8(3)
    li 4, 0xb0
    li 0, 0xb1
    stb 6, 0xb9(3)
    stb 6, 0xba(3)
    lwz 3, 0x278(30)
    stb 5, 0xbc(3)
    stb 4, 0xbd(3)
    stb 0, 0xbe(3)
    .4byte 0x4800027C # b .L_8028B490
L_8028B218:
    cmpwi 0, 0x1
    .4byte 0x4082003C # bne .L_8028B258
    li 4, 0xf2
    li 0, 0xff
    stb 4, 0xb8(3)
    li 6, 0xc4
    li 5, 0x49
    li 4, 0xc3
    stb 0, 0xb9(3)
    li 0, 0x20
    stb 6, 0xba(3)
    lwz 3, 0x278(30)
    stb 5, 0xbc(3)
    stb 4, 0xbd(3)
    stb 0, 0xbe(3)
    .4byte 0x4800023C # b .L_8028B490
L_8028B258:
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_8028B294
    li 0, 0xff
    li 6, 0xa3
    stb 0, 0xb8(3)
    li 5, 0x98
    li 4, 0x2a
    li 0, 0x29
    stb 6, 0xb9(3)
    stb 6, 0xba(3)
    lwz 3, 0x278(30)
    stb 5, 0xbc(3)
    stb 4, 0xbd(3)
    stb 0, 0xbe(3)
    .4byte 0x48000200 # b .L_8028B490
L_8028B294:
    cmpwi 0, 0x3
    .4byte 0x4082003C # bne .L_8028B2D4
    li 4, 0xa3
    li 0, 0xc4
    stb 4, 0xb8(3)
    li 6, 0xff
    li 5, 0x27
    li 4, 0x29
    stb 0, 0xb9(3)
    li 0, 0xa7
    stb 6, 0xba(3)
    lwz 3, 0x278(30)
    stb 5, 0xbc(3)
    stb 4, 0xbd(3)
    stb 0, 0xbe(3)
    .4byte 0x480001C0 # b .L_8028B490
L_8028B2D4:
    cmpwi 0, 0x4
    .4byte 0x408201B8 # bne .L_8028B490
    li 0, 0xf1
    li 6, 0xb4
    stb 0, 0xb8(3)
    li 5, 0xff
    li 4, 0x84
    li 0, 0x28
    stb 6, 0xb9(3)
    stb 5, 0xba(3)
    lwz 3, 0x278(30)
    stb 4, 0xbc(3)
    stb 0, 0xbd(3)
    stb 4, 0xbe(3)
    .4byte 0x48000184 # b .L_8028B490
    .4byte 0x48000524 # b .L_8028B834
L_8028B314:
    lwz 3, 0x244(30)
    cmpwi 3, 0x0
    .4byte 0x40810078 # ble .L_8028B394
    subi 0, 3, 0x1
    stw 0, 0x244(30)
    lwz 29, 0x244(30)
    bl fn_801902C0
    lwz 0, 0x5ec(3)
    cmpwi 0, 0x8
    .4byte 0x4080008C # bge .L_8028B3C4
    mulli 5, 0, 0x28
    xoris 4, 29, 0x8000
    lis 0, 0x4330
    lfs 0, 0xc(30)
    stw 4, 0x2c(1)
    addi 4, 5, 0x4ac
    add 4, 3, 4
    stw 0, 0x28(1)
    .4byte 0xC822D540 # lfd f1, lbl_805404E0@sda21(r0)
    stfs 0, 0x0(4)
    lfd 0, 0x28(1)
    lfs 2, 0x10(30)
    fsubs 0, 0, 1
    stfs 2, 0x4(4)
    lfs 1, 0x14(30)
    stfs 1, 0x8(4)
    stw 31, 0xc(4)
    stfs 0, 0x10(4)
    lwz 4, 0x5ec(3)
    addi 0, 4, 0x1
    stw 0, 0x5ec(3)
    .4byte 0x48000034 # b .L_8028B3C4
L_8028B394:
    lbz 0, 0x264(30)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8028B3B4
    mr 3, 30
    li 4, 0x2f
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x264(30)
L_8028B3B4:
    lfs 1, 0x240(30)
    .4byte 0xC002D530 # lfs f0, lbl_805404D0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x240(30)
L_8028B3C4:
    lwz 5, 0x274(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8028B3EC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x274(30)
L_8028B3EC:
    lwz 5, 0x278(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8028B414
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x278(30)
L_8028B414:
    lfs 1, 0x240(30)
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8028B42C
    stfs 0, 0x240(30)
L_8028B42C:
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8028B440
    li 0, 0x0
    stw 0, 0x244(30)
L_8028B440:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x5
    .4byte 0x408203EC # bne .L_8028B834
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x408203E0 # bne .L_8028B834
    lfs 1, 0x240(30)
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408203CC # bne .L_8028B834
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x418103C0 # bgt .L_8028B834
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x408103B4 # ble .L_8028B834
    mr 3, 30
    bl fn_801F3668
    .4byte 0x480003A8 # b .L_8028B834
L_8028B490:
    lfs 3, 0x60(30)
    stfs 3, 0x14(1)
    lfs 2, 0x64(30)
    stfs 2, 0x18(1)
    lfs 1, 0x68(30)
    stfs 1, 0x1c(1)
    lfs 0, 0x6c(30)
    stfs 0, 0x20(1)
    lfs 5, 0x10(30)
    lfs 4, 0xc(30)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x18(1)
    stfs 3, 0x14(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8028B4EC
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_8028B4EC:
    lwz 3, 0x248(30)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_8028B504
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    .4byte 0x48000334 # b .L_8028B834
L_8028B504:
    li 31, 0x0
L_8028B508:
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408201E4 # bne .L_8028B6F8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8028B55C
    mr 3, 31
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8028B55C
    lwz 0, 0x90(30)
    extrwi. 3, 0, 3, 5
    addi 29, 3, 0x7
    .4byte 0x40820008 # bne .L_8028B54C
    mr 29, 3
L_8028B54C:
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x408201A0 # bne .L_8028B6F8
L_8028B55C:
    lwz 3, 0x25c(30)
    cmpwi 3, 0x1
    .4byte 0x41800018 # blt .L_8028B57C
    cmpwi 3, 0x4
    .4byte 0x41810010 # bgt .L_8028B57C
    addi 0, 31, 0x1
    cmpw 3, 0
    .4byte 0x40820180 # bne .L_8028B6F8
L_8028B57C:
    lwz 5, 0x4(30)
    mr 3, 31
    .4byte 0xC022D520 # lfs f1, lbl_805404C0@sda21(r0)
    addi 4, 1, 0x14
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x418200EC # beq .L_8028B684
    lbz 0, 0x251(30)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_8028B684
    addi 3, 31, 0x252
    lbzx 0, 30, 3
    cmplwi 0, 0x1
    .4byte 0x41820144 # beq .L_8028B6F8
    li 0, 0x1
    li 7, 0x6
    stbx 0, 30, 3
    lwz 0, 0x25c(30)
    cmpwi 0, 0x5
    .4byte 0x40820008 # bne .L_8028B5D4
    li 7, 0x14
L_8028B5D4:
    lwz 0, 0x90(30)
    mr 3, 31
    extrwi. 5, 0, 3, 5
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_8028B5EC
    mr 4, 5
L_8028B5EC:
    addi 5, 30, 0xc
    addi 6, 30, 0x268
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_8028B6F8
    li 0, 0xb4
    stw 0, 0x238(30)
    lwz 3, 0x24c(30)
    cmpwi 3, 0x6
    .4byte 0x4180000C # blt .L_8028B61C
    cmpwi 3, 0x9
    .4byte 0x40810018 # ble .L_8028B630
L_8028B61C:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x5
    .4byte 0x408200D4 # bne .L_8028B6F8
    cmpwi 3, 0x0
    .4byte 0x408200CC # bne .L_8028B6F8
L_8028B630:
    lwz 3, 0x23c(30)
    addi 0, 3, 0x1
    stw 0, 0x23c(30)
    lwz 3, 0x24c(30)
    lwz 4, 0x23c(30)
    subi 0, 3, 0x5
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_8028B658
    li 0, 0x1
    stb 0, 0x251(30)
L_8028B658:
    lwz 0, 0x25c(30)
    cmpwi 0, 0x5
    .4byte 0x40820098 # bne .L_8028B6F8
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_8028B6F8
    li 3, 0x1
    li 0, 0x6
    stb 3, 0x251(30)
    stw 0, 0x24c(30)
    .4byte 0x48000078 # b .L_8028B6F8
L_8028B684:
    lfs 0, 0x14(1)
    mr 3, 31
    .4byte 0xC082D52C # lfs f4, lbl_805404CC@sda21(r0)
    lfs 2, 0x18(1)
    lfs 1, 0x1c(1)
    fsubs 3, 0, 4
    lfs 0, 0x20(1)
    fsubs 2, 2, 4
    fadds 1, 1, 4
    fadds 0, 0, 4
    stfs 3, 0x14(1)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 29, 0x4(30)
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820030 # bne .L_8028B6F8
    lwz 5, 0x4(30)
    mr 3, 31
    .4byte 0xC022D534 # lfs f1, lbl_805404D4@sda21(r0)
    addi 4, 1, 0x14
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8028B6F8
    addi 0, 31, 0x252
    li 3, 0x0
    stbx 3, 30, 0
L_8028B6F8:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE08 # blt .L_8028B508
    li 0, 0x1
    lis 3, lbl_8046C100@ha
    stb 0, 0x262(30)
    addi 4, 3, lbl_8046C100@l
    mr 3, 30
    bl fn_801F26CC
    mr. 29, 3
    .4byte 0x41800114 # blt .L_8028B834
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    lwz 0, 0x90(30)
    mr 29, 3
    extrwi. 4, 0, 3, 5
    addi 0, 4, 0x7
    .4byte 0x40820008 # bne .L_8028B748
    mr 0, 4
L_8028B748:
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8028B784
    cmpwi 4, 0x0
    addi 31, 4, 0x7
    .4byte 0x40820008 # bne .L_8028B760
    mr 31, 4
L_8028B760:
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_8028B774
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8028B778
L_8028B774:
    addi 3, 3, 0xdc
L_8028B778:
    lfs 5, 0x0(3)
    lfs 6, 0x4(3)
    .4byte 0x4800000C # b .L_8028B78C
L_8028B784:
    .4byte 0xC0C2D520 # lfs f6, lbl_805404C0@sda21(r0)
    fmr 5, 6
L_8028B78C:
    cmplwi 29, 0x0
    .4byte 0x418200A4 # beq .L_8028B834
    lwz 3, 0x1a0(29)
    subis 0, 3, 0x4649
    cmplwi 0, 0x5245
    .4byte 0x40820014 # bne .L_8028B7B4
    lwz 0, 0x90(29)
    extrwi 0, 0, 2, 24
    cmplwi 0, 0x1
    .4byte 0x41820084 # beq .L_8028B834
L_8028B7B4:
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_8028B834
    lwz 6, 0x90(30)
    lis 5, 0x4330
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
    mr 3, 29
    rlwinm 4, 6, 27, 23, 28
    rlwinm 0, 6, 19, 23, 28
    stw 4, 0x2c(1)
    extrwi. 6, 6, 3, 5
    .4byte 0xC862D548 # lfd f3, lbl_805404E8@sda21(r0)
    stw 5, 0x28(1)
    .4byte 0xC082D538 # lfs f4, lbl_805404D8@sda21(r0)
    addi 4, 6, 0x7
    lfd 1, 0x28(1)
    stw 0, 0x34(1)
    fsubs 2, 1, 3
    stw 5, 0x30(1)
    lfd 1, 0x30(1)
    fadds 2, 2, 6
    stfs 0, 0x10(1)
    fsubs 0, 1, 3
    fadds 1, 4, 2
    fadds 0, 0, 5
    stfs 1, 0xc(1)
    fadds 0, 4, 0
    stfs 0, 0x8(1)
    .4byte 0x40820008 # bne .L_8028B82C
    mr 4, 6
L_8028B82C:
    addi 5, 1, 0x8
    bl fn_801F349C
L_8028B834:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8028B850:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lbz 0, 0x250(3)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_8028B8C4
    li 30, 0x0
L_8028B878:
    mr 3, 30
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8028B8B8
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x258
    .4byte 0x4180000C # blt .L_8028B8A8
    li 0, 0x258
    stw 0, 0x230(31)
L_8028B8A8:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x258(31)
    .4byte 0x48000190 # b .L_8028BA44
L_8028B8B8:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFB8 # blt .L_8028B878
L_8028B8C4:
    lwz 3, 0x258(31)
    cmpwi 3, 0x3
    .4byte 0x41800010 # blt .L_8028B8DC
    li 0, 0x1
    stb 0, 0x250(31)
    .4byte 0x48000014 # b .L_8028B8EC
L_8028B8DC:
    addi 0, 3, 0x1
    li 3, 0x0
    stw 0, 0x258(31)
    .4byte 0x4800015C # b .L_8028BA44
L_8028B8EC:
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820044 # beq .L_8028B938
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8028B938
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8028B938
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_8028B938
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_8028B938
    li 3, 0x0
    .4byte 0x48000110 # b .L_8028BA44
L_8028B938:
    lwz 4, 0x24c(31)
    cmplwi 4, 0x9
    .4byte 0x41810100 # bgt .L_8028BA40
    lis 3, jumptable_804A79B4@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804A79B4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, 0x1
    .4byte 0x480000E4 # b .L_8028BA44
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x258
    .4byte 0x4180001C # blt .L_8028B994
    li 0, 0x0
    stw 0, 0x230(31)
    lbz 0, 0x234(31)
    cntlzw 0, 0
    srwi 3, 0, 5
    .4byte 0x480000B4 # b .L_8028BA44
L_8028B994:
    lbz 3, 0x234(31)
    .4byte 0x480000AC # b .L_8028BA44
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    .4byte 0x48000094 # b .L_8028BA44
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cntlzw 0, 0
    srwi 3, 0, 5
    .4byte 0x48000070 # b .L_8028BA44
    lwz 3, 0x230(31)
    cmpwi 3, 0x258
    .4byte 0x4180000C # blt .L_8028B9EC
    li 3, 0x1
    .4byte 0x4800005C # b .L_8028BA44
L_8028B9EC:
    addi 0, 3, 0x1
    li 3, 0x0
    stw 0, 0x230(31)
    .4byte 0x4800004C # b .L_8028BA44
    lwz 3, 0x230(31)
    cmpwi 3, 0x258
    .4byte 0x4180000C # blt .L_8028BA10
    li 3, 0x0
    .4byte 0x48000038 # b .L_8028BA44
L_8028BA10:
    addi 0, 3, 0x1
    li 3, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_8028BA44
    lwz 0, 0x23c(31)
    subi 4, 4, 0x5
    xor 0, 4, 0
    srawi 3, 0, 1
    and 0, 0, 4
    subf 0, 0, 3
    srwi 3, 0, 31
    .4byte 0x48000008 # b .L_8028BA44
L_8028BA40:
    li 3, 0x1
L_8028BA44:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028BA5C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    stb 0, 0x250(3)
L_8028BA80:
    mr 3, 31
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8028BA9C
    li 0, 0x0
    stb 0, 0x250(30)
    .4byte 0x48000010 # b .L_8028BAA8
L_8028BA9C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFDC # blt .L_8028BA80
L_8028BAA8:
    lbz 0, 0x250(30)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8028BAC0
    mr 3, 30
    bl fn_8028B850
    stb 3, 0x234(30)
L_8028BAC0:
    lbz 0, 0x234(30)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8028BAD4
    .4byte 0xC002D52C # lfs f0, lbl_805404CC@sda21(r0)
    .4byte 0x48000008 # b .L_8028BAD8
L_8028BAD4:
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
L_8028BAD8:
    stfs 0, 0x240(30)
    li 0, 0x6e
    lbz 3, 0x234(30)
    subi 4, 3, 0x1
    subfic 3, 3, 0x1
    nor 3, 4, 3
    srawi 3, 3, 31
    and 0, 0, 3
    stw 0, 0x244(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028BB14:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    .4byte 0xC022D550 # lfs f1, lbl_805404F0@sda21(r0)
    mr 31, 3
    .4byte 0xC002D538 # lfs f0, lbl_805404D8@sda21(r0)
    li 4, 0x0
    stfs 1, 0x60(3)
    li 3, 0x3
    li 0, 0x78
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 4, 0x108(31)
    stw 4, 0x230(31)
    stw 3, 0xb0(31)
    stw 4, 0x23c(31)
    stw 4, 0x238(31)
    stw 0, 0x248(31)
    stb 4, 0x234(31)
    stb 4, 0x251(31)
    stw 4, 0x274(31)
    stw 4, 0x278(31)
    lwz 0, 0x90(31)
    extrwi. 3, 0, 3, 5
    addi 30, 3, 0x7
    .4byte 0x40820008 # bne .L_8028BB9C
    mr 30, 3
L_8028BB9C:
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8028BBB0
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_8028BBB4
L_8028BBB0:
    addi 4, 3, 0xdc
L_8028BBB4:
    lwz 0, 0x90(31)
    lfs 31, 0x0(4)
    extrwi. 3, 0, 3, 5
    lfs 30, 0x4(4)
    addi 0, 3, 0x7
    .4byte 0x40820008 # bne .L_8028BBD0
    mr 0, 3
L_8028BBD0:
    cmpwi 0, 0x0
    .4byte 0x4182002C # beq .L_8028BC00
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8028BBF0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8028BBF4
L_8028BBF0:
    addi 3, 3, 0xdc
L_8028BBF4:
    lfs 2, 0x0(3)
    lfs 3, 0x4(3)
    .4byte 0x4800000C # b .L_8028BC08
L_8028BC00:
    .4byte 0xC062D520 # lfs f3, lbl_805404C0@sda21(r0)
    fmr 2, 3
L_8028BC08:
    lwz 4, 0x90(31)
    rlwinm. 5, 4, 19, 23, 28
    .4byte 0x40820038 # bne .L_8028BC48
    rlwinm. 0, 4, 27, 23, 28
    .4byte 0x40820030 # bne .L_8028BC48
    lfs 1, 0xc(31)
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
    fsubs 1, 1, 2
    fadds 1, 31, 1
    stfs 1, 0x268(31)
    lfs 1, 0x10(31)
    fsubs 1, 1, 3
    fadds 1, 30, 1
    stfs 1, 0x26c(31)
    stfs 0, 0x270(31)
    .4byte 0x48000054 # b .L_8028BC98
L_8028BC48:
    lis 3, 0x4330
    rlwinm 0, 4, 27, 23, 28
    stw 5, 0x14(1)
    .4byte 0xC862D548 # lfd f3, lbl_805404E8@sda21(r0)
    stw 3, 0x10(1)
    .4byte 0xC082D538 # lfs f4, lbl_805404D8@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0x1c(1)
    fsubs 2, 0, 3
    .4byte 0xC002D520 # lfs f0, lbl_805404C0@sda21(r0)
    stw 3, 0x18(1)
    lfd 1, 0x18(1)
    fadds 2, 2, 31
    fsubs 1, 1, 3
    fadds 2, 4, 2
    fadds 1, 1, 30
    stfs 2, 0x268(31)
    fadds 1, 4, 1
    stfs 1, 0x26c(31)
    stfs 0, 0x270(31)
L_8028BC98:
    li 0, 0x0
    li 3, 0x1
    stb 0, 0x252(31)
    stb 0, 0x253(31)
    stb 0, 0x254(31)
    stb 0, 0x255(31)
    stw 0, 0x258(31)
    stb 0, 0x250(31)
    stb 0, 0x260(31)
    stb 0, 0x262(31)
    stb 3, 0x263(31)
    stb 0, 0x264(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    stw 0, 0x24c(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 29
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x6
    .4byte 0x40820094 # bne .L_8028BD7C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x41800078 # blt .L_8028BD70
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x1c(1)
    mullw 3, 5, 4
    .4byte 0xC842D540 # lfd f2, lbl_805404E0@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC002D52C # lfs f0, lbl_805404CC@sda21(r0)
    lfd 1, 0x18(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 1, 2
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
    lwz 3, 0x14(1)
    addi 0, 3, 0x1
    stw 0, 0x25c(31)
    .4byte 0x4800001C # b .L_8028BD88
L_8028BD70:
    li 0, 0x0
    stw 0, 0x25c(31)
    .4byte 0x48000010 # b .L_8028BD88
L_8028BD7C:
    cmpwi 0, 0x5
    .4byte 0x40820008 # bne .L_8028BD88
    stb 3, 0x260(31)
L_8028BD88:
    lwz 0, 0x16c(31)
    cmpwi 0, -0x1
    .4byte 0x40820018 # bne .L_8028BDA8
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_8028BDA8:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 0, 0x54(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8028BDD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_8028BE28
    lis 3, lbl_804A7960@ha
    addi 0, 3, lbl_804A7960@l
    stw 0, 0x0(30)
    lwz 3, 0x274(30)
    bl fn_801EE434
    lwz 3, 0x278(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8028BE28
    mr 3, 30
    bl dtor_80084580
L_8028BE28:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028BE44:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0068@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0068@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028BE94
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
L_8028BE94:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028BECC
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
L_8028BECC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028BF04
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
L_8028BF04:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028BF3C
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
L_8028BF3C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028BF74
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
L_8028BF74:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028BFAC
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
L_8028BFAC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028BFE4
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
L_8028BFE4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028C01C
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
L_8028C01C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028C054
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
L_8028C054:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028C068:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8028C0AC
    lis 5, lbl_804A7A10@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7A10@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8028C0AC
    mr 3, 30
    bl dtor_80084580
L_8028C0AC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028C0C8:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC822D558 # lfd f1, lbl_805404F8@sda21(r0)
    stw 0, 0x34(1)
    lis 0, 0x4330
    stw 31, 0x2c(1)
    mr 31, 3
    lfs 0, 0xc(3)
    stw 0, 0x10(1)
    fctiwz 0, 0
    stw 0, 0x20(1)
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 3, 0x1c(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x10(31)
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 30
    .4byte 0x40820018 # bne .L_8028C174
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0x20
    bl fn_8029E928
L_8028C174:
    li 0, 0x0
    stb 0, 0x11c(31)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8028C190:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x5c(1)
    li 31, 0x0
    stw 30, 0x58(1)
    mr 30, 3
    stw 29, 0x54(1)
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_8028C228
L_8028C1C8:
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
L_8028C228:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8028C1C8
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
    lwz 0, 0x90(30)
    clrlwi. 29, 0, 30
    .4byte 0x41820054 # beq .L_8028C2F8
    .4byte 0xC022D560 # lfs f1, lbl_80540500@sda21(r0)
    lis 3, lbl_8046C210@ha
    stb 6, 0x25(1)
    addi 4, 3, lbl_8046C210@l
    fmr 2, 1
    mr 3, 30
    stb 5, 0x24(1)
    addi 5, 29, 0x4
    addi 6, 1, 0x8
    li 7, 0x0
    bl fn_801F06F0
    lwz 3, 0x198(30)
    addi 5, 30, 0xc
    lwz 4, 0x4(30)
    addi 6, 29, 0x4
    li 7, 0x0
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x48000054 # b .L_8028C348
L_8028C2F8:
    extrwi. 3, 0, 3, 25
    .4byte 0x41820008 # beq .L_8028C304
    addi 31, 3, 0x3
L_8028C304:
    .4byte 0xC022D560 # lfs f1, lbl_80540500@sda21(r0)
    lis 3, lbl_8046C210@ha
    addi 4, 3, lbl_8046C210@l
    addi 5, 31, 0x45
    fmr 2, 1
    mr 3, 30
    li 6, 0x0
    li 7, 0x0
    bl fn_801F06F0
    lwz 3, 0x198(30)
    addi 5, 30, 0xc
    lwz 4, 0x4(30)
    addi 6, 31, 0x45
    li 7, 0x0
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
L_8028C348:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8028C364:
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
    mr 29, 4
    mr 28, 3
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x41810020 # bgt .L_8028C3C8
    lfs 1, 0x6c(28)
    lfs 2, 0x10(28)
    lfs 0, 0x64(28)
    fadds 31, 1, 2
    lfs 29, 0xc(28)
    fadds 30, 0, 2
    .4byte 0x4800001C # b .L_8028C3E0
L_8028C3C8:
    lfs 1, 0x68(28)
    lfs 2, 0xc(28)
    lfs 0, 0x60(28)
    fadds 31, 1, 2
    lfs 29, 0x10(28)
    fadds 30, 0, 2
L_8028C3E0:
    li 30, 0x0
L_8028C3E4:
    lwz 31, 0x198(28)
    mr 3, 30
    bl fn_80238CB4
    cmpw 3, 31
    .4byte 0x408200DC # bne .L_8028C4D0
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x41810068 # bgt .L_8028C468
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 30
    .4byte 0x40800014 # bge .L_8028C428
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_8028C428
    li 3, 0x0
    .4byte 0x480000BC # b .L_8028C4E0
L_8028C428:
    clrlwi. 0, 29, 24
    .4byte 0x40820020 # bne .L_8028C44C
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x0(3)
    fcmpo cr0, 0, 29
    .4byte 0x40810090 # ble .L_8028C4D0
    li 3, 0x0
    .4byte 0x48000098 # b .L_8028C4E0
L_8028C44C:
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x0(3)
    fcmpo cr0, 0, 29
    .4byte 0x40800074 # bge .L_8028C4D0
    li 3, 0x0
    .4byte 0x4800007C # b .L_8028C4E0
L_8028C468:
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x0(3)
    fcmpo cr0, 0, 30
    .4byte 0x40800014 # bge .L_8028C48C
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_8028C48C
    li 3, 0x0
    .4byte 0x48000058 # b .L_8028C4E0
L_8028C48C:
    clrlwi 0, 29, 24
    cmplwi 0, 0x2
    .4byte 0x40820020 # bne .L_8028C4B4
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 29
    .4byte 0x40810028 # ble .L_8028C4D0
    li 3, 0x0
    .4byte 0x48000030 # b .L_8028C4E0
L_8028C4B4:
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 29
    .4byte 0x4080000C # bge .L_8028C4D0
    li 3, 0x0
    .4byte 0x48000014 # b .L_8028C4E0
L_8028C4D0:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF0C # blt .L_8028C3E4
    li 3, 0x1
L_8028C4E0:
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

fn_8028C518:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    li 31, 0x0
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 4
    lwz 0, 0x90(3)
    psq_l 1, 0xc(30), 0, 0
    clrlwi 0, 0, 30
    lfs 0, 0x14(3)
    cmpwi 0, 0x3
    psq_st 1, 0x24(1), 0, 0
    stfs 0, 0x2c(1)
    .4byte 0x4082000C # bne .L_8028C568
    li 3, 0x1
    .4byte 0x4800024C # b .L_8028C7B0
L_8028C568:
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_8028C5BC
    clrlwi 0, 28, 24
    lis 3, lbl_8046C1E0@ha
    mulli 0, 0, 0xc
    addi 3, 3, lbl_8046C1E0@l
    lfsx 0, 3, 0
    add 3, 3, 0
    lfs 1, 0x4(3)
    stfs 0, 0x3c(30)
    lfs 0, 0x8(3)
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    psq_l 1, 0x18(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x18(30), 0, 0
    psq_l 1, 0x20(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x20(30), 1, 0
L_8028C5BC:
    clrlwi 0, 28, 24
    lis 3, lbl_8046C1B0@ha
    mulli 0, 0, 0xc
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    addi 4, 3, lbl_8046C1B0@l
    mr 3, 30
    lfsx 1, 4, 0
    add 6, 4, 0
    lfs 2, 0x4(6)
    addi 4, 1, 0x18
    stfs 1, 0x3c(30)
    li 5, 0x0
    lfs 1, 0x8(6)
    stfs 2, 0x40(30)
    stfs 1, 0x44(30)
    psq_l 2, 0xc(30), 0, 0
    psq_l 1, 0x3c(30), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(30), 0, 0
    psq_l 2, 0x14(30), 1, 0
    psq_l 1, 0x44(30), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(30), 1, 0
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 0, 0x20(1)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_8028C6CC
    clrlwi 0, 28, 24
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_8028C694
    .4byte 0x40800014 # bge .L_8028C650
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8028C65C
    .4byte 0x40800030 # bge .L_8028C678
    .4byte 0x48000084 # b .L_8028C6D0
L_8028C650:
    cmpwi 0, 0x4
    .4byte 0x4080007C # bge .L_8028C6D0
    .4byte 0x48000058 # b .L_8028C6B0
L_8028C65C:
    lfs 1, 0x18(1)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820064 # bne .L_8028C6D0
    li 31, 0x1
    .4byte 0x4800005C # b .L_8028C6D0
L_8028C678:
    lfs 1, 0x18(1)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820048 # bne .L_8028C6D0
    li 31, 0x1
    .4byte 0x48000040 # b .L_8028C6D0
L_8028C694:
    lfs 1, 0x1c(1)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_8028C6D0
    li 31, 0x1
    .4byte 0x48000024 # b .L_8028C6D0
L_8028C6B0:
    lfs 1, 0x1c(1)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_8028C6D0
    li 31, 0x1
    .4byte 0x48000008 # b .L_8028C6D0
L_8028C6CC:
    li 31, 0x1
L_8028C6D0:
    clrlwi. 0, 31, 24
    .4byte 0x408200B8 # bne .L_8028C78C
    lfs 1, 0x60(30)
    li 31, 0x1
    li 28, 0x0
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
L_8028C728:
    lwz 5, 0x4(30)
    mr 3, 28
    .4byte 0xC022D564 # lfs f1, lbl_80540504@sda21(r0)
    addi 4, 1, 0x8
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8028C780
    mr 3, 28
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x40820014 # bne .L_8028C768
    mr 3, 28
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8028C780
L_8028C768:
    lwz 29, 0x198(30)
    mr 3, 28
    bl fn_80238CB4
    cmpw 3, 29
    .4byte 0x41820008 # beq .L_8028C780
    li 31, 0x0
L_8028C780:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA0 # blt .L_8028C728
L_8028C78C:
    psq_l 0, 0x24(1), 0, 0
    mr 3, 31
    lfs 1, 0x2c(1)
    psq_st 0, 0xc(30), 0, 0
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    stfs 1, 0x14(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
L_8028C7B0:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8028C7D0:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stw 31, 0xac(1)
    stw 30, 0xa8(1)
    stw 29, 0xa4(1)
    mr 29, 3
    .4byte 0xC062D560 # lfs f3, lbl_80540500@sda21(r0)
    lfs 0, 0x60(3)
    addi 3, 1, 0x6c
    stfs 0, 0x6c(1)
    lfs 5, 0x64(29)
    stfs 5, 0x70(1)
    lfs 2, 0x68(29)
    stfs 2, 0x74(1)
    lfs 6, 0x6c(29)
    stfs 6, 0x78(1)
    lfs 1, 0xc(29)
    fadds 0, 0, 1
    fadds 2, 2, 1
    stfs 0, 0x6c(1)
    fsubs 0, 0, 3
    fadds 1, 2, 3
    lfs 4, 0x10(29)
    fadds 5, 5, 4
    stfs 2, 0x74(1)
    fadds 4, 6, 4
    stfs 0, 0x6c(1)
    fsubs 2, 5, 3
    stfs 5, 0x70(1)
    fadds 0, 4, 3
    stfs 4, 0x78(1)
    stfs 2, 0x70(1)
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    lwz 4, 0x4(29)
    lwz 5, 0x198(29)
    bl fn_80239914
    lfs 0, 0x6c(1)
    .4byte 0xC082D570 # lfs f4, lbl_80540510@sda21(r0)
    lfs 2, 0x70(1)
    lfs 1, 0x74(1)
    fsubs 3, 0, 4
    lfs 0, 0x78(1)
    fsubs 2, 2, 4
    fadds 1, 1, 4
    fadds 0, 0, 4
    stfs 3, 0x6c(1)
    stfs 2, 0x70(1)
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    lwz 30, 0x198(29)
    bl fn_8020D58C
    mr 5, 3
    mr 4, 30
    lbz 0, 0x0(3)
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 5, 3
    bl fn_8020D7D0
    lwz 3, 0x90(29)
    clrlwi. 0, 3, 30
    .4byte 0x4082036C # bne .L_8028CC4C
    psq_l 2, 0xc(29), 0, 0
    lis 3, lbl_80539D44@ha
    psq_l 0, 0x3c(29), 0, 0
    .4byte 0xC022D574 # lfs f1, lbl_80540514@sda21(r0)
    ps_add 0, 2, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 2, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x14(29), 1, 0
    psq_l 3, 0x3c(29), 0, 0
    lfs 2, 0x44(29)
    ps_mul 5, 3, 3
    lfs 0, lbl_80539D44@l(3)
    psq_st 3, 0x60(1), 0, 0
    fmuls 0, 1, 0
    ps_madd 4, 2, 2, 5
    stfs 2, 0x68(1)
    ps_sum0 4, 4, 5, 5
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_8028C990
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8028C954
    fmr 31, 4
    .4byte 0x48000028 # b .L_8028C978
L_8028C954:
    frsqrte 3, 4
    .4byte 0xC042D578 # lfs f2, lbl_80540518@sda21(r0)
    .4byte 0xC002D57C # lfs f0, lbl_8054051C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_8028C978:
    psq_l 1, 0x60(1), 0, 0
    psq_l 0, 0x68(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x60(1), 0, 0
    psq_st 0, 0x68(1), 1, 0
L_8028C990:
    .4byte 0xC3C2D580 # lfs f30, lbl_80540520@sda21(r0)
    addi 3, 29, 0xc
    psq_l 1, 0x60(1), 0, 0
    addi 4, 29, 0x230
    psq_l 0, 0x68(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x60(1), 0, 0
    psq_st 0, 0x68(1), 1, 0
    psq_l 2, 0x0(3), 0, 0
    ps_add 1, 1, 2
    psq_st 1, 0x60(1), 0, 0
    psq_l 1, 0x8(3), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x68(1), 1, 0
    bl PSVECDistance
    .4byte 0xC002D580 # lfs f0, lbl_80540520@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820124 # bne .L_8028CB00
    lwz 4, 0x4(29)
    addi 3, 1, 0x60
    bl fn_8022461C
    lwz 4, 0x4(29)
    mr 30, 3
    addi 3, 29, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x408200E4 # bne .L_8028CAE8
    clrlwi. 0, 30, 16
    .4byte 0x4182000C # beq .L_8028CA18
    cmplwi 0, 0x50
    .4byte 0x408200D4 # bne .L_8028CAE8
L_8028CA18:
    psq_l 1, 0x3c(29), 0, 0
    mr 3, 29
    lfs 0, 0x44(29)
    lwz 0, 0x90(29)
    psq_st 1, 0x54(1), 0, 0
    extrwi 4, 0, 2, 28
    stfs 0, 0x5c(1)
    bl fn_8028C518
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200A8 # bne .L_8028CAE8
    psq_l 1, 0x54(1), 0, 0
    lis 0, 0x4330
    lfs 0, 0x5c(1)
    psq_st 1, 0x3c(29), 0, 0
    .4byte 0xC822D558 # lfd f1, lbl_805404F8@sda21(r0)
    stfs 0, 0x44(29)
    lfs 0, 0xc(29)
    stw 0, 0x88(1)
    stfs 0, 0x230(29)
    lfs 0, 0x10(29)
    stw 0, 0x98(1)
    stfs 0, 0x234(29)
    lfs 0, 0x14(29)
    stfs 0, 0x238(29)
    lfs 0, 0x230(29)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 3, 0x84(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x8c(1)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    stfs 0, 0x230(29)
    lfs 0, 0x234(29)
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 3, 0x94(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x9c(1)
    lfd 0, 0x98(1)
    fsubs 0, 0, 1
    stfs 0, 0x234(29)
    .4byte 0x48000958 # b .L_8028D43C
L_8028CAE8:
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000940 # b .L_8028D43C
L_8028CB00:
    lfs 1, 0x60(29)
    stfs 1, 0x44(1)
    lfs 4, 0x64(29)
    stfs 4, 0x48(1)
    lfs 2, 0x68(29)
    stfs 2, 0x4c(1)
    lfs 3, 0x6c(29)
    stfs 3, 0x50(1)
    lfs 0, 0xc(29)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x44(1)
    lfs 2, 0x10(29)
    fadds 1, 4, 2
    stfs 0, 0x4c(1)
    fadds 0, 3, 2
    stfs 1, 0x48(1)
    stfs 0, 0x50(1)
    lwz 3, 0x198(29)
    bl fn_80239040
    li 31, 0x0
    mr 30, 3
L_8028CB58:
    cmpw 30, 31
    .4byte 0x418200E0 # beq .L_8028CC3C
    mr 3, 30
    mr 4, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x408200CC # bne .L_8028CC3C
    lwz 5, 0x4(29)
    mr 3, 31
    addi 4, 1, 0x44
    bl fn_8023B190
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8028CC3C
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    psq_l 2, 0x60(1), 0, 0
    lfs 0, 0x8(3)
    ps_sub 4, 1, 2
    psq_st 1, 0x14(1), 0, 0
    psq_l 1, 0x68(1), 1, 0
    stfs 0, 0x1c(1)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    psq_st 4, 0x20(1), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    lfs 6, 0x20(1)
    lfs 5, 0x24(1)
    ps_sub 3, 2, 1
    fmuls 2, 6, 6
    psq_st 4, 0x14(1), 0, 0
    fmuls 1, 5, 5
    psq_st 3, 0x1c(1), 1, 0
    fadds 4, 2, 1
    lfs 1, 0x1c(1)
    stfs 1, 0x28(1)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8028CBF4
    .4byte 0x48000028 # b .L_8028CC18
L_8028CBF4:
    frsqrte 3, 4
    .4byte 0xC042D578 # lfs f2, lbl_80540518@sda21(r0)
    .4byte 0xC002D57C # lfs f0, lbl_8054051C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_8028CC18:
    .4byte 0xC002D584 # lfs f0, lbl_80540524@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080001C # bge .L_8028CC3C
    mr 3, 31
    addi 5, 29, 0xc
    li 4, 0x0
    li 6, 0x4
    bl fn_80238548
    .4byte 0x48000804 # b .L_8028D43C
L_8028CC3C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF14 # blt .L_8028CB58
    .4byte 0x480007F4 # b .L_8028D43C
L_8028CC4C:
    lbz 0, 0x244(29)
    cmplwi 0, 0x0
    .4byte 0x408207E8 # bne .L_8028D43C
    extrwi. 0, 3, 1, 20
    .4byte 0x40820074 # bne .L_8028CCD0
    addi 3, 29, 0xc
    addi 4, 29, 0x24
    bl PSVECDistance
    .4byte 0xC002D588 # lfs f0, lbl_80540528@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8028CC80
    .4byte 0xC3A2D58C # lfs f29, lbl_8054052C@sda21(r0)
    .4byte 0x48000058 # b .L_8028CCD4
L_8028CC80:
    lwz 3, 0x90(29)
    lis 0, 0x4330
    stw 0, 0x98(1)
    clrlwi 3, 3, 30
    .4byte 0xC862D558 # lfd f3, lbl_805404F8@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0xC042D568 # lfs f2, lbl_80540508@sda21(r0)
    slwi 0, 0, 4
    xoris 0, 0, 0x8000
    stw 0, 0x9c(1)
    lfd 0, 0x98(1)
    fsubs 0, 0, 3
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8028CCC8
    fmr 29, 2
    .4byte 0x48000010 # b .L_8028CCD4
L_8028CCC8:
    .4byte 0xC3A2D590 # lfs f29, lbl_80540530@sda21(r0)
    .4byte 0x48000008 # b .L_8028CCD4
L_8028CCD0:
    .4byte 0xC3A2D590 # lfs f29, lbl_80540530@sda21(r0)
L_8028CCD4:
    addi 3, 29, 0xc
    addi 4, 29, 0x230
    bl PSVECDistance
    fcmpo cr0, 1, 29
    cror eq, gt, eq
    .4byte 0x40820154 # bne .L_8028CE3C
    .4byte 0xC042D594 # lfs f2, lbl_80540534@sda21(r0)
    lfs 3, 0x24(29)
    lfs 1, 0xc(29)
    fadds 0, 2, 3
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8028CD20
    fsubs 0, 3, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8028CD20
    stfs 3, 0xc(29)
    .4byte 0x48000014 # b .L_8028CD30
L_8028CD20:
    fmr 3, 29
    lfs 2, 0x230(29)
    bl fn_8033D4AC
    stfs 1, 0xc(29)
L_8028CD30:
    .4byte 0xC042D594 # lfs f2, lbl_80540534@sda21(r0)
    lfs 3, 0x28(29)
    lfs 1, 0x10(29)
    fadds 0, 2, 3
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8028CD64
    fsubs 0, 3, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8028CD64
    stfs 3, 0x10(29)
    .4byte 0x48000014 # b .L_8028CD74
L_8028CD64:
    fmr 3, 29
    lfs 2, 0x234(29)
    bl fn_8033D4AC
    stfs 1, 0x10(29)
L_8028CD74:
    addi 3, 29, 0xc
    lfs 1, 0x14(29)
    psq_l 2, 0x0(3), 0, 0
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    psq_st 2, 0x230(29), 0, 0
    stfs 1, 0x238(29)
    stfs 0, 0x3c(29)
    stfs 0, 0x40(29)
    stfs 0, 0x44(29)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x18(29), 0, 0
    stfs 0, 0x20(29)
    lwz 30, 0x90(29)
    extrwi. 0, 30, 1, 24
    .4byte 0x40820078 # bne .L_8028CE28
    extrwi. 0, 30, 1, 23
    .4byte 0x40820070 # bne .L_8028CE28
    addi 4, 29, 0x24
    bl PSVECDistance
    clrlwi 3, 30, 30
    lis 0, 0x4330
    addi 3, 3, 0x1
    stw 0, 0x98(1)
    slwi 0, 3, 4
    .4byte 0xC862D558 # lfd f3, lbl_805404F8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002D598 # lfs f0, lbl_80540538@sda21(r0)
    stw 0, 0x9c(1)
    lfd 2, 0x98(1)
    fsubs 2, 2, 3
    fsubs 0, 2, 0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_8028CE28
    li 0, -0x1
    mr 3, 29
    stw 0, 0x23c(29)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(29)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000618 # b .L_8028D43C
L_8028CE28:
    li 3, 0x8
    li 0, 0x1e
    stw 3, 0x23c(29)
    stw 0, 0x240(29)
    .4byte 0x48000604 # b .L_8028D43C
L_8028CE3C:
    addi 3, 29, 0xc
    psq_l 0, 0x3c(29), 0, 0
    psq_l 1, 0x0(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 0, 0x90(29)
    extrwi. 0, 0, 1, 23
    .4byte 0x41820170 # beq .L_8028CFD8
    addi 4, 29, 0x230
    bl PSVECDistance
    .4byte 0xC002D59C # lfs f0, lbl_8054053C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8028CEAC
    lfs 1, 0x3c(29)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810020 # ble .L_8028CEAC
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x1
    li 6, 0xff
    extrwi 4, 0, 5, 15
    bl fn_802D8050
    .4byte 0x4800001C # b .L_8028CEC4
L_8028CEAC:
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x0
    li 6, 0xff
    extrwi 4, 0, 5, 15
    bl fn_802D8050
L_8028CEC4:
    addi 3, 29, 0xc
    addi 4, 29, 0x230
    bl PSVECDistance
    .4byte 0xC002D59C # lfs f0, lbl_8054053C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8028CF08
    lfs 1, 0x3c(29)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_8028CF08
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x1
    li 6, 0xff
    extrwi 4, 0, 5, 10
    bl fn_802D8050
    .4byte 0x4800001C # b .L_8028CF20
L_8028CF08:
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x0
    li 6, 0xff
    extrwi 4, 0, 5, 10
    bl fn_802D8050
L_8028CF20:
    addi 3, 29, 0xc
    addi 4, 29, 0x230
    bl PSVECDistance
    .4byte 0xC002D59C # lfs f0, lbl_8054053C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8028CF64
    lfs 1, 0x40(29)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810020 # ble .L_8028CF64
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x1
    li 6, 0xff
    extrwi 4, 0, 5, 5
    bl fn_802D8050
    .4byte 0x4800001C # b .L_8028CF7C
L_8028CF64:
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x0
    li 6, 0xff
    extrwi 4, 0, 5, 5
    bl fn_802D8050
L_8028CF7C:
    addi 3, 29, 0xc
    addi 4, 29, 0x230
    bl PSVECDistance
    .4byte 0xC002D59C # lfs f0, lbl_8054053C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8028CFC0
    lfs 1, 0x40(29)
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_8028CFC0
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x1
    li 6, 0xff
    srwi 4, 0, 27
    bl fn_802D8050
    .4byte 0x4800001C # b .L_8028CFD8
L_8028CFC0:
    bl GetRoomConfigRecord
    lwz 0, 0x90(29)
    li 5, 0x0
    li 6, 0xff
    srwi 4, 0, 27
    bl fn_802D8050
L_8028CFD8:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_8028CFF0
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
    .4byte 0x48000450 # b .L_8028D43C
L_8028CFF0:
    .4byte 0x4082044C # bne .L_8028D43C
    psq_l 3, 0x3c(29), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x44(29)
    ps_mul 3, 3, 3
    .4byte 0xC022D574 # lfs f1, lbl_80540514@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820384 # bne .L_8028D3A4
    lwz 3, 0x198(29)
    bl fn_80239108
    lwz 30, 0x90(29)
    clrlwi 4, 30, 30
    addi 0, 4, 0x1
    cmpw 3, 0
    .4byte 0x4180029C # blt .L_8028D2D8
    extrwi. 0, 30, 1, 23
    .4byte 0x40820048 # bne .L_8028D08C
    addi 3, 29, 0xc
    addi 4, 29, 0x24
    bl PSVECDistance
    clrlwi 3, 30, 30
    lis 0, 0x4330
    addi 3, 3, 0x1
    stw 0, 0x98(1)
    slwi 0, 3, 4
    .4byte 0xC862D558 # lfd f3, lbl_805404F8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002D598 # lfs f0, lbl_80540538@sda21(r0)
    stw 0, 0x9c(1)
    lfd 2, 0x98(1)
    fsubs 2, 2, 3
    fsubs 0, 2, 0
    fcmpo cr0, 1, 0
    .4byte 0x408003B4 # bge .L_8028D43C
L_8028D08C:
    lwz 3, 0x198(29)
    bl fn_80238BC4
    mr 31, 3
    lis 3, lbl_804A79E0@ha
    mulli 30, 31, 0xc
    psq_l 3, 0xc(29), 0, 0
    addi 4, 3, lbl_804A79E0@l
    lfs 2, 0x14(29)
    psq_st 3, 0x2c(1), 0, 0
    mr 3, 29
    add 6, 4, 30
    lfsx 0, 4, 30
    lfs 1, 0x4(6)
    li 4, 0x0
    stfs 0, 0x38(1)
    li 5, 0x0
    lfs 0, 0x8(6)
    stfs 1, 0x3c(1)
    psq_l 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    ps_add 1, 3, 1
    psq_l 0, 0x40(1), 1, 0
    stfs 2, 0x34(1)
    psq_st 1, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8028D118
    psq_l 1, 0x2c(1), 0, 0
    lfs 0, 0x34(1)
    psq_st 1, 0xc(29), 0, 0
    stfs 0, 0x14(29)
    .4byte 0x48000328 # b .L_8028D43C
L_8028D118:
    psq_l 1, 0x2c(1), 0, 0
    lfs 0, 0x34(1)
    psq_st 1, 0xc(29), 0, 0
    stfs 0, 0x14(29)
    lbz 0, 0x24e(29)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_8028D168
    lwz 4, 0x90(29)
    clrlwi 0, 4, 30
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_8028D154
    extrwi 0, 4, 2, 28
    cmpw 31, 0
    .4byte 0x4182001C # beq .L_8028D168
    .4byte 0x480002EC # b .L_8028D43C
L_8028D154:
    srawi 3, 31, 1
    extrwi 0, 4, 2, 28
    clrlwi 3, 3, 24
    cmpw 3, 0
    .4byte 0x408202D8 # bne .L_8028D43C
L_8028D168:
    mr 3, 29
    clrlwi 4, 31, 24
    bl fn_8028C518
    clrlwi. 0, 3, 24
    .4byte 0x418202C4 # beq .L_8028D43C
    lbz 0, 0x24c(29)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8028D1AC
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8028D1A0
    addi 0, 31, 0x1
    stw 0, 0x248(29)
    .4byte 0x48000010 # b .L_8028D1AC
L_8028D1A0:
    addi 0, 31, 0x1
    cmpw 0, 3
    .4byte 0x40820294 # bne .L_8028D43C
L_8028D1AC:
    cmpwi 31, 0x0
    .4byte 0x4180028C # blt .L_8028D43C
    cmpwi 31, 0x4
    .4byte 0x40800284 # bge .L_8028D43C
    lwz 3, 0x198(29)
    bl fn_80238E08
    lwz 0, 0x90(29)
    clrlwi. 0, 0, 30
    .4byte 0x4182002C # beq .L_8028D1F8
    mr 3, 29
    clrlwi 4, 31, 24
    bl fn_8028C364
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_8028D1F8
    li 0, 0x0
    stw 0, 0x248(29)
    lwz 3, 0x198(29)
    bl fn_80238D50
    .4byte 0x48000248 # b .L_8028D43C
L_8028D1F8:
    lwz 0, 0x90(29)
    extrwi. 0, 0, 1, 22
    .4byte 0x40820018 # bne .L_8028D218
    bl GetRoomConfigRecord
    addi 0, 31, 0x1
    lwz 4, 0x16c(29)
    clrlwi 5, 0, 24
    bl fn_802D7584
L_8028D218:
    lis 3, lbl_8046C180@ha
    addi 3, 3, lbl_8046C180@l
    lfsx 0, 3, 30
    add 3, 3, 30
    lfs 1, 0x4(3)
    stfs 0, 0x3c(29)
    lfs 0, 0x8(3)
    stfs 1, 0x40(29)
    stfs 0, 0x44(29)
    lwz 0, 0x90(29)
    clrlwi 0, 0, 30
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_8028D26C
    .4byte 0xC3C2D5A0 # lfs f30, lbl_80540540@sda21(r0)
    psq_l 1, 0x3c(29), 0, 0
    psq_l 0, 0x44(29), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x3c(29), 0, 0
    psq_st 0, 0x44(29), 1, 0
    .4byte 0x48000028 # b .L_8028D290
L_8028D26C:
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_8028D290
    .4byte 0xC3C2D5A4 # lfs f30, lbl_80540544@sda21(r0)
    psq_l 1, 0x3c(29), 0, 0
    psq_l 0, 0x44(29), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x3c(29), 0, 0
    psq_st 0, 0x44(29), 1, 0
L_8028D290:
    lbz 0, 0x24d(29)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8028D2A8
    li 0, 0x0
    stb 0, 0x24d(29)
    .4byte 0x4800001C # b .L_8028D2C0
L_8028D2A8:
    lfs 0, 0xc(29)
    stfs 0, 0x230(29)
    lfs 0, 0x10(29)
    stfs 0, 0x234(29)
    lfs 0, 0x14(29)
    stfs 0, 0x238(29)
L_8028D2C0:
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000168 # b .L_8028D43C
L_8028D2D8:
    extrwi. 0, 30, 1, 24
    .4byte 0x41820160 # beq .L_8028D43C
    addi 3, 29, 0xc
    addi 4, 29, 0x24
    bl PSVECDistance
    .4byte 0xC002D560 # lfs f0, lbl_80540500@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810148 # ble .L_8028D43C
    lwz 3, 0x240(29)
    cmpwi 3, 0x0
    .4byte 0x40820098 # bne .L_8028D398
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    stfs 0, 0x3c(29)
    stfs 0, 0x40(29)
    stfs 0, 0x44(29)
    lfs 1, 0xc(29)
    lfs 0, 0x24(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8028D330
    .4byte 0xC002D5A8 # lfs f0, lbl_80540548@sda21(r0)
    stfs 0, 0x3c(29)
    .4byte 0x4800003C # b .L_8028D368
L_8028D330:
    .4byte 0x40800010 # bge .L_8028D340
    .4byte 0xC002D578 # lfs f0, lbl_80540518@sda21(r0)
    stfs 0, 0x3c(29)
    .4byte 0x4800002C # b .L_8028D368
L_8028D340:
    lfs 1, 0x10(29)
    lfs 0, 0x28(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8028D35C
    .4byte 0xC002D5A8 # lfs f0, lbl_80540548@sda21(r0)
    stfs 0, 0x40(29)
    .4byte 0x48000010 # b .L_8028D368
L_8028D35C:
    .4byte 0x4080000C # bge .L_8028D368
    .4byte 0xC002D578 # lfs f0, lbl_80540518@sda21(r0)
    stfs 0, 0x40(29)
L_8028D368:
    lfs 0, 0xc(29)
    lis 4, 0x3
    mr 3, 29
    li 5, 0x0
    stfs 0, 0x230(29)
    addi 4, 4, 0x4
    lfs 0, 0x10(29)
    stfs 0, 0x234(29)
    lfs 0, 0x14(29)
    stfs 0, 0x238(29)
    bl fn_801F0E34
    .4byte 0x480000A8 # b .L_8028D43C
L_8028D398:
    subi 0, 3, 0x1
    stw 0, 0x240(29)
    .4byte 0x4800009C # b .L_8028D43C
L_8028D3A4:
    lwz 0, 0x90(29)
    psq_l 0, 0x3c(29), 0, 0
    clrlwi. 0, 0, 30
    stfs 31, 0x10(1)
    psq_st 0, 0x8(1), 0, 0
    .4byte 0x41820058 # beq .L_8028D410
    .4byte 0xC002D568 # lfs f0, lbl_80540508@sda21(r0)
    fcmpu cr0, 0, 29
    .4byte 0x4082004C # bne .L_8028D410
    addi 3, 29, 0xc
    addi 4, 29, 0x230
    bl PSVECDistance
    .4byte 0xC002D56C # lfs f0, lbl_8054050C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8028D410
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_8028D410
    subi 0, 3, 0x1
    mr 3, 29
    clrlwi 4, 0, 24
    bl fn_8028C518
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8028D410
    li 0, 0x0
    .4byte 0x48000018 # b .L_8028D424
L_8028D410:
    psq_l 1, 0x8(1), 0, 0
    li 0, 0x1
    lfs 0, 0x10(1)
    psq_st 1, 0x3c(29), 0, 0
    stfs 0, 0x44(29)
L_8028D424:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8028D43C
    li 3, 0x8
    li 0, 0x1
    stw 3, 0x23c(29)
    stb 0, 0x24d(29)
L_8028D43C:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    lwz 31, 0xac(1)
    lwz 30, 0xa8(1)
    lwz 0, 0xe4(1)
    lwz 29, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_8028D470:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 31
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xd
    .4byte 0x4082000C # bne .L_8028D4B0
    li 3, 0x0
    .4byte 0x48000014 # b .L_8028D4C0
L_8028D4B0:
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_801F15BC
L_8028D4C0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8028D4DC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 5
    stw 30, 0x38(1)
    mr 30, 4
    stw 29, 0x34(1)
    mr 29, 3
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D7544
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8028D51C
    li 3, 0x0
    .4byte 0x4800009C # b .L_8028D5B4
L_8028D51C:
    addi 4, 30, 0x1
    subi 0, 3, 0x1
    xoris 7, 4, 0x8000
    lis 6, 0x4330
    clrlwi 0, 0, 24
    stw 7, 0x1c(1)
    mulli 0, 0, 0xc
    lis 4, lbl_8046C150@ha
    stw 6, 0x18(1)
    li 3, 0x1
    addi 5, 4, lbl_8046C150@l
    .4byte 0xC882D558 # lfd f4, lbl_805404F8@sda21(r0)
    lfd 0, 0x18(1)
    add 4, 5, 0
    stw 7, 0x24(1)
    fsubs 3, 0, 4
    lfsx 2, 5, 0
    stw 6, 0x20(1)
    lfs 1, 0x4(4)
    lfd 0, 0x20(1)
    fmuls 3, 3, 2
    .4byte 0xC0A2D580 # lfs f5, lbl_80540520@sda21(r0)
    fsubs 2, 0, 4
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fmuls 3, 5, 3
    psq_l 4, 0x0(29), 0, 0
    stfs 0, 0x10(1)
    fmuls 0, 2, 1
    stfs 3, 0x8(1)
    psq_l 1, 0x10(1), 1, 0
    fmuls 0, 5, 0
    stfs 0, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 4, 0
    psq_st 0, 0x0(29), 0, 0
    psq_l 0, 0x8(29), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x8(29), 1, 0
L_8028D5B4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8028D5D0:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    li 0, 0x0
    mr 31, 3
    stb 0, 0x244(3)
    lwz 0, 0x90(3)
    clrlwi. 30, 0, 30
    .4byte 0x40820228 # bne .L_8028D838
    lfs 0, 0xc(31)
    lis 5, 0x4330
    lis 4, lbl_8046C120@ha
    stw 5, 0x38(1)
    fctiwz 0, 0
    addi 0, 4, lbl_8046C120@l
    .4byte 0xC842D558 # lfd f2, lbl_805404F8@sda21(r0)
    lis 3, lbl_80539D44@ha
    stw 5, 0x48(1)
    .4byte 0xC022D574 # lfs f1, lbl_80540514@sda21(r0)
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    srawi 4, 4, 4
    addze 4, 4
    slwi 4, 4, 4
    addi 4, 4, 0x8
    xoris 4, 4, 0x8000
    stw 4, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 2
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    srawi 4, 4, 4
    addze 4, 4
    slwi 4, 4, 4
    addi 4, 4, 0x8
    xoris 4, 4, 0x8000
    stw 4, 0x4c(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 2
    stfs 0, 0x10(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 2, 28
    mulli 4, 4, 0xc
    add 4, 0, 4
    lfs 0, 0x0(4)
    lfs 2, 0x4(4)
    stfs 0, 0x3c(31)
    lfs 0, 0x8(4)
    stfs 2, 0x40(31)
    stfs 0, 0x44(31)
    psq_l 3, 0x3c(31), 0, 0
    lfs 2, 0x44(31)
    ps_mul 7, 3, 3
    lfs 0, lbl_80539D44@l(3)
    psq_st 3, 0x20(1), 0, 0
    fmuls 0, 1, 0
    ps_madd 6, 2, 2, 7
    stfs 2, 0x28(1)
    ps_sum0 6, 6, 7, 7
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_8028D748
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8028D70C
    fmr 4, 6
    .4byte 0x48000028 # b .L_8028D730
L_8028D70C:
    frsqrte 3, 6
    .4byte 0xC042D578 # lfs f2, lbl_80540518@sda21(r0)
    .4byte 0xC002D57C # lfs f0, lbl_8054051C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 0, 2, 0
    fmr 4, 0
L_8028D730:
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 4
    ps_muls0 0, 0, 4
    psq_st 1, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
L_8028D748:
    addi 3, 1, 0x20
    .4byte 0xC0A2D580 # lfs f5, lbl_80540520@sda21(r0)
    psq_l 1, 0x0(3), 0, 0
    psq_l 0, 0x8(3), 1, 0
    ps_muls0 1, 1, 5
    ps_muls0 0, 0, 5
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    psq_l 2, 0xc(31), 0, 0
    ps_add 1, 1, 2
    psq_st 1, 0x0(3), 0, 0
    psq_l 1, 0x14(31), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x4(31)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x408201A0 # bne .L_8028D930
    psq_l 2, 0x3c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x44(31)
    ps_mul 2, 2, 2
    .4byte 0xC022D574 # lfs f1, lbl_80540514@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_8028D818
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8028D7DC
    fmr 31, 4
    .4byte 0x48000028 # b .L_8028D800
L_8028D7DC:
    frsqrte 3, 4
    .4byte 0xC042D578 # lfs f2, lbl_80540518@sda21(r0)
    .4byte 0xC002D57C # lfs f0, lbl_8054051C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_8028D800:
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
L_8028D818:
    .4byte 0xC3C2D560 # lfs f30, lbl_80540500@sda21(r0)
    psq_l 1, 0x3c(31), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
    .4byte 0x480000FC # b .L_8028D930
L_8028D838:
    extrwi. 0, 0, 1, 22
    .4byte 0x408200E4 # bne .L_8028D920
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    bl fn_802D7544
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8028D85C
    li 0, 0x0
    .4byte 0x4800009C # b .L_8028D8F4
L_8028D85C:
    addi 0, 30, 0x1
    lis 5, 0x4330
    xoris 6, 0, 0x8000
    subi 0, 3, 0x1
    clrlwi 0, 0, 24
    stw 6, 0x4c(1)
    mulli 7, 0, 0xc
    lis 3, lbl_8046C150@ha
    stw 5, 0x48(1)
    li 0, 0x1
    addi 4, 3, lbl_8046C150@l
    .4byte 0xC882D558 # lfd f4, lbl_805404F8@sda21(r0)
    lfd 0, 0x48(1)
    add 3, 4, 7
    stw 6, 0x44(1)
    fsubs 3, 0, 4
    lfsx 2, 4, 7
    stw 5, 0x40(1)
    lfs 1, 0x4(3)
    lfd 0, 0x40(1)
    fmuls 3, 3, 2
    .4byte 0xC0A2D580 # lfs f5, lbl_80540520@sda21(r0)
    fsubs 2, 0, 4
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    fmuls 3, 5, 3
    psq_l 4, 0xc(31), 0, 0
    stfs 0, 0x10(1)
    fmuls 0, 2, 1
    stfs 3, 0x8(1)
    psq_l 1, 0x10(1), 1, 0
    fmuls 0, 5, 0
    stfs 0, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 4, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 0, 0x14(31), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x14(31), 1, 0
L_8028D8F4:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8028D920
    li 0, 0x1
    mr 3, 31
    stb 0, 0x244(31)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8028D920:
    .4byte 0xC002D564 # lfs f0, lbl_80540504@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
L_8028D930:
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x0
    lfs 0, 0x14(31)
    li 3, 0x1
    psq_st 1, 0x230(31), 0, 0
    stfs 0, 0x238(31)
    stw 4, 0x248(31)
    stb 3, 0x24c(31)
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 30
    .4byte 0x40820038 # bne .L_8028D990
    .4byte 0xC022D5AC # lfs f1, lbl_8054054C@sda21(r0)
    .4byte 0xC002D5B0 # lfs f0, lbl_80540550@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 3, 0x1a4(31)
    stb 4, 0x24c(31)
    .4byte 0x480000B4 # b .L_8028DA40
L_8028D990:
    cmpwi 0, 0x1
    .4byte 0x40820038 # bne .L_8028D9CC
    .4byte 0xC022D5B4 # lfs f1, lbl_80540554@sda21(r0)
    li 0, 0x2
    .4byte 0xC002D5B8 # lfs f0, lbl_80540558@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x1a4(31)
    .4byte 0x48000078 # b .L_8028DA40
L_8028D9CC:
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_8028DA08
    .4byte 0xC022D5BC # lfs f1, lbl_8054055C@sda21(r0)
    li 0, 0x3
    .4byte 0xC002D5C0 # lfs f0, lbl_80540560@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x1a4(31)
    .4byte 0x4800003C # b .L_8028DA40
L_8028DA08:
    cmpwi 0, 0x3
    .4byte 0x40820034 # bne .L_8028DA40
    .4byte 0xC022D5C4 # lfs f1, lbl_80540564@sda21(r0)
    li 0, 0x4
    .4byte 0xC002D5C8 # lfs f0, lbl_80540568@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x1a4(31)
L_8028DA40:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    lfs 0, 0x14(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    psq_l 1, 0x3c(31), 0, 0
    lfs 0, 0x44(31)
    lwz 0, 0x90(31)
    psq_st 1, 0x14(1), 0, 0
    extrwi 4, 0, 2, 28
    stfs 0, 0x1c(1)
    bl fn_8028C518
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8028DA84
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000A4 # b .L_8028DB24
L_8028DA84:
    addi 4, 31, 0xc
    lfs 0, 0x14(31)
    psq_l 1, 0x0(4), 0, 0
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 30
    .4byte 0x40820054 # bne .L_8028DAF4
    lfs 0, 0x14(1)
    li 7, 0x0
    lfs 1, 0x18(1)
    stfs 0, 0x3c(31)
    lfs 0, 0x1c(1)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    lwz 0, 0x90(31)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    extrwi 5, 0, 3, 25
    extrwi 8, 0, 2, 28
    addi 0, 5, 0x21
    lwz 5, 0x4(31)
    clrlwi 6, 0, 16
    bl fn_8029E9EC
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
L_8028DAF4:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
    stw 0, 0xb8(31)
    stb 3, 0x24d(31)
    stb 3, 0x24e(31)
    lwz 3, 0x90(31)
    clrlwi. 0, 3, 30
    .4byte 0x4182000C # beq .L_8028DB24
    extrwi 0, 3, 1, 21
    stb 0, 0x24e(31)
L_8028DB24:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 0, 0x94(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8028DB54:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0168@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0168@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DBA4
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
L_8028DBA4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DBDC
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
L_8028DBDC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DC14
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
L_8028DC14:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DC4C
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
L_8028DC4C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DC84
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
L_8028DC84:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DCBC
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
L_8028DCBC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DCF4
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
L_8028DCF4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DD2C
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
L_8028DD2C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028DD64
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
L_8028DD64:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028DD78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8028DDBC
    lis 5, lbl_804A7A68@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7A68@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8028DDBC
    mr 3, 30
    bl dtor_80084580
L_8028DDBC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028DDD8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    li 30, 0x0
    stw 29, 0x24(1)
    addi 29, 1, 0x8
    stw 28, 0x20(1)
    mr 28, 3
L_8028DE04:
    lwz 0, 0x90(28)
    clrlwi 0, 0, 28
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_8028DE1C
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_8028DE30
L_8028DE1C:
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x4(3)
    stfs 0, 0x0(29)
    .4byte 0x48000014 # b .L_8028DE40
L_8028DE30:
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x0(29)
L_8028DE40:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFB8 # blt .L_8028DE04
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x3
    .4byte 0x418201AC # beq .L_8028E008
    .4byte 0x40800014 # bge .L_8028DE74
    cmpwi 3, 0x1
    .4byte 0x41820340 # beq .L_8028E1A8
    .4byte 0x40800014 # bge .L_8028DE80
    .4byte 0x48000338 # b .L_8028E1A8
L_8028DE74:
    cmpwi 3, 0x5
    .4byte 0x40800330 # bge .L_8028E1A8
    .4byte 0x480002C0 # b .L_8028E13C
L_8028DE80:
    lfs 1, 0x8(1)
    li 28, 0x1
    lfs 0, 0xc(1)
    li 30, 0x4
    li 29, 0x4
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200B8 # bne .L_8028DF54
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x0(31)
    bl fn_8022E970
    cmpwi 3, 0x1
    .4byte 0x40810040 # ble .L_8028DEF4
    li 30, 0x0
L_8028DEBC:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8028DEE8
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8028DEE8
    stwx 30, 31, 29
    addi 28, 28, 0x1
    addi 29, 29, 0x4
L_8028DEE8:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_8028DEBC
L_8028DEF4:
    slwi 0, 28, 2
    li 3, 0x1
    stwx 3, 31, 0
    li 3, 0x1
    addi 28, 28, 0x1
    bl fn_8022E970
    cmpwi 3, 0x1
    .4byte 0x408102B8 # ble .L_8028E1C8
    li 29, 0x0
    slwi 30, 28, 2
L_8028DF1C:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8028DF44
    mr 3, 29
    bl fn_8022F340
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8028DF44
    stwx 29, 31, 30
    addi 30, 30, 0x4
L_8028DF44:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_8028DF1C
    .4byte 0x48000278 # b .L_8028E1C8
L_8028DF54:
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x0(31)
    bl fn_8022E970
    cmpwi 3, 0x1
    .4byte 0x40810040 # ble .L_8028DFA8
    li 29, 0x0
L_8028DF70:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8028DF9C
    mr 3, 29
    bl fn_8022F340
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_8028DF9C
    stwx 29, 31, 30
    addi 28, 28, 0x1
    addi 30, 30, 0x4
L_8028DF9C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFCC # blt .L_8028DF70
L_8028DFA8:
    slwi 0, 28, 2
    li 3, 0x0
    stwx 3, 31, 0
    li 3, 0x0
    addi 28, 28, 0x1
    bl fn_8022E970
    cmpwi 3, 0x1
    .4byte 0x40810204 # ble .L_8028E1C8
    li 29, 0x0
    slwi 30, 28, 2
L_8028DFD0:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8028DFF8
    mr 3, 29
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8028DFF8
    stwx 29, 31, 30
    addi 30, 30, 0x4
L_8028DFF8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_8028DFD0
    .4byte 0x480001C4 # b .L_8028E1C8
L_8028E008:
    li 8, 0x0
    li 3, 0x1
    stw 8, 0x0(31)
    li 4, 0x2
    li 0, 0x3
    stw 3, 0x4(31)
    addi 3, 1, 0x8
    stw 4, 0x8(31)
    stw 0, 0xc(31)
    .4byte 0x4800003C # b .L_8028E068
L_8028E030:
    slwi 0, 8, 2
    add 5, 31, 0
    lwz 6, 0x0(5)
    lwz 7, 0x4(5)
    slwi 4, 6, 2
    slwi 0, 7, 2
    lfsx 1, 3, 4
    lfsx 0, 3, 0
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8028E064
    stw 7, 0x0(5)
    li 8, -0x1
    stw 6, 0x4(5)
L_8028E064:
    addi 8, 8, 0x1
L_8028E068:
    cmpwi 8, 0x2
    .4byte 0x4180FFC4 # blt .L_8028E030
    li 3, 0x3
    bl fn_8022F3DC
    mr 7, 31
    li 8, 0x0
    li 5, 0x3
L_8028E084:
    lwz 0, 0x0(7)
    cmpw 3, 0
    .4byte 0x4082009C # bne .L_8028E128
    cmpwi 8, 0x2
    .4byte 0x4082000C # bne .L_8028E0A0
    stw 5, 0xc(31)
    .4byte 0x4800008C # b .L_8028E128
L_8028E0A0:
    addi 0, 8, 0x1
    addi 6, 31, 0xc
    cmpwi 0, 0x3
    subfic 4, 0, 0x3
    .4byte 0x40800074 # bge .L_8028E124
    srwi. 0, 4, 3
    mtctr 0
    .4byte 0x41820054 # beq .L_8028E110
L_8028E0C0:
    lwz 0, -0x4(6)
    stw 0, 0x0(6)
    lwz 0, -0x8(6)
    stw 0, -0x4(6)
    lwz 0, -0xc(6)
    stw 0, -0x8(6)
    lwz 0, -0x10(6)
    stw 0, -0xc(6)
    lwz 0, -0x14(6)
    stw 0, -0x10(6)
    lwz 0, -0x18(6)
    stw 0, -0x14(6)
    lwz 0, -0x1c(6)
    stw 0, -0x18(6)
    lwz 0, -0x20(6)
    stw 0, -0x1c(6)
    subi 6, 6, 0x20
    .4byte 0x4200FFBC # bdnz .L_8028E0C0
    andi. 4, 4, 0x7
    .4byte 0x41820018 # beq .L_8028E124
L_8028E110:
    mtctr 4
L_8028E114:
    lwz 0, -0x4(6)
    stw 0, 0x0(6)
    subi 6, 6, 0x4
    .4byte 0x4200FFF4 # bdnz .L_8028E114
L_8028E124:
    stw 5, 0x4(7)
L_8028E128:
    addi 8, 8, 0x1
    addi 7, 7, 0x4
    cmpwi 8, 0x3
    .4byte 0x4180FF50 # blt .L_8028E084
    .4byte 0x48000090 # b .L_8028E1C8
L_8028E13C:
    li 8, 0x0
    li 3, 0x1
    stw 8, 0x0(31)
    li 4, 0x2
    li 0, 0x3
    stw 3, 0x4(31)
    addi 3, 1, 0x8
    stw 4, 0x8(31)
    stw 0, 0xc(31)
    .4byte 0x4800003C # b .L_8028E19C
L_8028E164:
    slwi 0, 8, 2
    add 5, 31, 0
    lwz 6, 0x0(5)
    lwz 7, 0x4(5)
    slwi 4, 6, 2
    slwi 0, 7, 2
    lfsx 1, 3, 4
    lfsx 0, 3, 0
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8028E198
    stw 7, 0x0(5)
    li 8, -0x1
    stw 6, 0x4(5)
L_8028E198:
    addi 8, 8, 0x1
L_8028E19C:
    cmpwi 8, 0x3
    .4byte 0x4180FFC4 # blt .L_8028E164
    .4byte 0x48000024 # b .L_8028E1C8
L_8028E1A8:
    li 0, 0x0
    li 4, 0x1
    stw 0, 0x0(31)
    li 3, 0x2
    li 0, 0x3
    stw 4, 0x4(31)
    stw 3, 0x8(31)
    stw 0, 0xc(31)
L_8028E1C8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8028E1E8:
    blr

fn_8028E1EC:
    stwu 1, -0x1d0(1)
    mflr 0
    stw 0, 0x1d4(1)
    stfd 31, 0x1c0(1)
    psq_st 31, 0x1c8(1), 0, 0
    stfd 30, 0x1b0(1)
    psq_st 30, 0x1b8(1), 0, 0
    stfd 29, 0x1a0(1)
    psq_st 29, 0x1a8(1), 0, 0
    stfd 28, 0x190(1)
    psq_st 28, 0x198(1), 0, 0
    stfd 27, 0x180(1)
    psq_st 27, 0x188(1), 0, 0
    stw 31, 0x17c(1)
    stw 30, 0x178(1)
    stw 29, 0x174(1)
    stw 28, 0x170(1)
    mr 29, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x418207A4 # beq .L_8028E9E0
    .4byte 0x40800014 # bge .L_8028E254
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8028E264
    .4byte 0x40800554 # bge .L_8028E7A0
    .4byte 0x480015F8 # b .L_8028F848
L_8028E254:
    cmpwi 0, 0x4
    .4byte 0x41821558 # beq .L_8028F7B0
    .4byte 0x408015EC # bge .L_8028F848
    .4byte 0x48001324 # b .L_8028F584
L_8028E264:
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8028E298
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418215B4 # beq .L_8028F848
L_8028E298:
    lfs 30, 0x60(29)
    li 31, 0x0
    lfs 0, 0xc(29)
    lfs 28, 0x68(29)
    lfs 29, 0x64(29)
    fadds 30, 30, 0
    lfs 1, 0x10(29)
    fadds 28, 28, 0
    lfs 27, 0x6c(29)
    fadds 29, 29, 1
    .4byte 0xC3E2D5D0 # lfs f31, lbl_80540570@sda21(r0)
    fadds 27, 27, 1
L_8028E2C8:
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 31
    .4byte 0x40810014 # ble .L_8028E2EC
    mr 3, 31
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x41821560 # beq .L_8028F848
L_8028E2EC:
    lwz 30, 0x4(29)
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4082154C # bne .L_8028F848
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 1, 30
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8028E340
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 29
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8028E340
    fcmpo cr0, 1, 28
    .4byte 0x40800010 # bge .L_8028E340
    fcmpo cr0, 0, 27
    .4byte 0x40800008 # bge .L_8028E340
    li 0, 0x1
L_8028E340:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8028E350
    mr 3, 31
    bl fn_802381B8
L_8028E350:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF70 # blt .L_8028E2C8
    li 28, 0x0
    li 31, 0x0
L_8028E364:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200CC # beq .L_8028E43C
    mr 3, 31
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418214C8 # beq .L_8028F848
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408214B8 # bne .L_8028F848
    mr 3, 31
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x408214A8 # bne .L_8028F848
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002D5D0 # lfs f0, lbl_80540570@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8028E3CC
    mr 3, 31
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x41821480 # beq .L_8028F848
L_8028E3CC:
    lwz 30, 0x4(29)
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4082146C # bne .L_8028F848
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 1, 30
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8028E420
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 29
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8028E420
    fcmpo cr0, 1, 28
    .4byte 0x40800010 # bge .L_8028E420
    fcmpo cr0, 0, 27
    .4byte 0x40800008 # bge .L_8028E420
    li 0, 0x1
L_8028E420:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8028E43C
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8028E43C
    addi 28, 28, 0x1
L_8028E43C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF20 # blt .L_8028E364
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 3, 28
    .4byte 0x418113F4 # bgt .L_8028F848
    li 30, 0x0
L_8028E45C:
    mr 3, 30
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8028E474
    mr 3, 30
    bl fn_80230C6C
L_8028E474:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE0 # blt .L_8028E45C
    mr 3, 29
    addi 4, 1, 0x14c
    bl fn_8028DDD8
    li 30, 0x0
    addi 31, 1, 0x14c
L_8028E494:
    lwz 3, 0x0(31)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418202E4 # beq .L_8028E784
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    lwz 3, 0x0(31)
    bl fn_80230AD4
    lwz 0, 0x90(29)
    clrlwi 0, 0, 28
    cmpwi 0, 0x5
    .4byte 0x418200DC # beq .L_8028E59C
    .4byte 0x40800024 # bge .L_8028E4E8
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_8028E4DC
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8028E4F8
    .4byte 0x480002AC # b .L_8028E784
L_8028E4DC:
    cmpwi 0, 0x4
    .4byte 0x40800018 # bge .L_8028E4F8
    .4byte 0x480002A0 # b .L_8028E784
L_8028E4E8:
    cmpwi 0, 0x7
    .4byte 0x418201F8 # beq .L_8028E6E4
    .4byte 0x40800294 # bge .L_8028E784
    .4byte 0x4800014C # b .L_8028E640
L_8028E4F8:
    lwz 3, 0x0(31)
    li 4, 0x3
    bl fn_80230BF4
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x18
    bl fn_80230FD0
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    addi 4, 1, 0x140
    lfs 4, 0xc(29)
    stw 0, 0x160(1)
    .4byte 0xC822D5E8 # lfd f1, lbl_80540588@sda21(r0)
    lfd 0, 0x160(1)
    stfs 4, 0x140(1)
    fsubs 1, 0, 1
    .4byte 0xC042D5D4 # lfs f2, lbl_80540574@sda21(r0)
    .4byte 0xC002D5D8 # lfs f0, lbl_80540578@sda21(r0)
    lfs 3, 0x10(29)
    fmsubs 0, 2, 1, 0
    lwz 3, 0x0(31)
    stfs 3, 0x144(1)
    lfs 1, 0x14(29)
    fadds 0, 4, 0
    stfs 1, 0x148(1)
    stfs 0, 0x140(1)
    lwz 0, 0x268(29)
    clrlwi 5, 0, 24
    bl fn_802303FC
    lwz 0, 0x0(31)
    lfs 0, 0x140(1)
    mulli 3, 0, 0xc
    addi 3, 3, 0x238
    add 3, 29, 3
    stfs 0, 0x0(3)
    lfs 0, 0x144(1)
    stfs 0, 0x4(3)
    lfs 0, 0x148(1)
    stfs 0, 0x8(3)
    .4byte 0x480001EC # b .L_8028E784
L_8028E59C:
    lwz 3, 0x0(31)
    li 4, 0x2
    bl fn_80230BF4
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x1a
    bl fn_80230FD0
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    addi 4, 1, 0x140
    lfs 4, 0xc(29)
    stw 0, 0x160(1)
    .4byte 0xC822D5E8 # lfd f1, lbl_80540588@sda21(r0)
    lfd 0, 0x160(1)
    stfs 4, 0x140(1)
    fsubs 1, 0, 1
    .4byte 0xC042D5D4 # lfs f2, lbl_80540574@sda21(r0)
    .4byte 0xC002D5D8 # lfs f0, lbl_80540578@sda21(r0)
    lfs 3, 0x10(29)
    fmsubs 0, 2, 1, 0
    lwz 3, 0x0(31)
    stfs 3, 0x144(1)
    lfs 1, 0x14(29)
    fadds 0, 4, 0
    stfs 1, 0x148(1)
    stfs 0, 0x140(1)
    lwz 0, 0x268(29)
    clrlwi 5, 0, 24
    bl fn_802303FC
    lwz 0, 0x0(31)
    lfs 0, 0x140(1)
    mulli 3, 0, 0xc
    addi 3, 3, 0x238
    add 3, 29, 3
    stfs 0, 0x0(3)
    lfs 0, 0x144(1)
    stfs 0, 0x4(3)
    lfs 0, 0x148(1)
    stfs 0, 0x8(3)
    .4byte 0x48000148 # b .L_8028E784
L_8028E640:
    lwz 3, 0x0(31)
    li 4, 0x0
    bl fn_80230BF4
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x1a
    bl fn_80230FD0
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    addi 4, 1, 0x140
    lfs 2, 0xc(29)
    stw 0, 0x160(1)
    .4byte 0xC822D5E8 # lfd f1, lbl_80540588@sda21(r0)
    lfd 0, 0x160(1)
    stfs 2, 0x140(1)
    fsubs 1, 0, 1
    .4byte 0xC042D5D4 # lfs f2, lbl_80540574@sda21(r0)
    .4byte 0xC002D5D8 # lfs f0, lbl_80540578@sda21(r0)
    lfs 3, 0x10(29)
    fmsubs 0, 2, 1, 0
    lwz 3, 0x0(31)
    stfs 3, 0x144(1)
    lfs 1, 0x14(29)
    fadds 0, 3, 0
    stfs 1, 0x148(1)
    stfs 0, 0x144(1)
    lwz 0, 0x268(29)
    clrlwi 5, 0, 24
    bl fn_802303FC
    lwz 0, 0x0(31)
    lfs 0, 0x140(1)
    mulli 3, 0, 0xc
    addi 3, 3, 0x238
    add 3, 29, 3
    stfs 0, 0x0(3)
    lfs 0, 0x144(1)
    stfs 0, 0x4(3)
    lfs 0, 0x148(1)
    stfs 0, 0x8(3)
    .4byte 0x480000A4 # b .L_8028E784
L_8028E6E4:
    lwz 3, 0x0(31)
    li 4, 0x1
    bl fn_80230BF4
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x1a
    bl fn_80230FD0
    xoris 3, 30, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    addi 4, 1, 0x140
    lfs 2, 0xc(29)
    stw 0, 0x160(1)
    .4byte 0xC822D5E8 # lfd f1, lbl_80540588@sda21(r0)
    lfd 0, 0x160(1)
    stfs 2, 0x140(1)
    fsubs 1, 0, 1
    .4byte 0xC042D5D4 # lfs f2, lbl_80540574@sda21(r0)
    .4byte 0xC002D5D8 # lfs f0, lbl_80540578@sda21(r0)
    lfs 3, 0x10(29)
    fmsubs 0, 2, 1, 0
    lwz 3, 0x0(31)
    stfs 3, 0x144(1)
    lfs 1, 0x14(29)
    fadds 0, 3, 0
    stfs 1, 0x148(1)
    stfs 0, 0x144(1)
    lwz 0, 0x268(29)
    clrlwi 5, 0, 24
    bl fn_802303FC
    lwz 0, 0x0(31)
    lfs 0, 0x140(1)
    mulli 3, 0, 0xc
    addi 3, 3, 0x238
    add 3, 29, 3
    stfs 0, 0x0(3)
    lfs 0, 0x144(1)
    stfs 0, 0x4(3)
    lfs 0, 0x148(1)
    stfs 0, 0x8(3)
L_8028E784:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FD04 # blt .L_8028E494
    li 0, 0x1
    stw 0, 0x230(29)
    .4byte 0x480010AC # b .L_8028F848
L_8028E7A0:
    lwz 0, 0x90(29)
    rlwinm. 0, 0, 0, 7, 7
    .4byte 0x40820024 # bne .L_8028E7CC
    lwz 3, 0x268(29)
    subi 0, 3, 0x7
    stw 0, 0x268(29)
    lwz 0, 0x268(29)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8028E7CC
    li 0, 0x0
    stw 0, 0x268(29)
L_8028E7CC:
    li 31, 0x0
L_8028E7D0:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182019C # beq .L_8028E978
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x128(1), 0, 0
    psq_st 1, 0x134(1), 0, 0
    stfs 0, 0x13c(1)
    lwz 0, 0x90(29)
    stfs 0, 0x130(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x5
    .4byte 0x4182008C # beq .L_8028E898
    .4byte 0x40800024 # bge .L_8028E834
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_8028E828
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8028E844
    .4byte 0x480000F8 # b .L_8028E91C
L_8028E828:
    cmpwi 0, 0x4
    .4byte 0x4080002C # bge .L_8028E858
    .4byte 0x480000EC # b .L_8028E91C
L_8028E834:
    cmpwi 0, 0x7
    .4byte 0x418200C4 # beq .L_8028E8FC
    .4byte 0x408000E0 # bge .L_8028E91C
    .4byte 0x48000098 # b .L_8028E8D8
L_8028E844:
    lfs 1, 0x138(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x138(1)
    .4byte 0x480000C8 # b .L_8028E91C
L_8028E858:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 30, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8028E884
    lfs 1, 0x138(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x138(1)
L_8028E884:
    mr 3, 31
    addi 5, 1, 0x11c
    li 4, 0x3
    bl fn_8022E088
    .4byte 0x48000088 # b .L_8028E91C
L_8028E898:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 30, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8028E8C4
    lfs 1, 0x138(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x138(1)
L_8028E8C4:
    mr 3, 31
    addi 5, 1, 0x11c
    li 4, 0x2
    bl fn_8022E088
    .4byte 0x48000048 # b .L_8028E91C
L_8028E8D8:
    lfs 1, 0x134(1)
    mr 3, 31
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    addi 5, 1, 0x11c
    li 4, 0x0
    fadds 0, 1, 0
    stfs 0, 0x134(1)
    bl fn_8022E088
    .4byte 0x48000024 # b .L_8028E91C
L_8028E8FC:
    lfs 1, 0x134(1)
    mr 3, 31
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    addi 5, 1, 0x11c
    li 4, 0x1
    fsubs 0, 1, 0
    stfs 0, 0x134(1)
    bl fn_8022E088
L_8028E91C:
    lwz 0, 0x90(29)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x4180003C # blt .L_8028E964
    mr 3, 31
    bl fn_8023DE58
    mr 4, 3
    addi 3, 1, 0x11c
    li 5, 0x1
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8028E964
    lfs 2, 0x128(1)
    lfs 1, 0x12c(1)
    lfs 0, 0x130(1)
    stfs 2, 0x134(1)
    stfs 1, 0x138(1)
    stfs 0, 0x13c(1)
L_8028E964:
    lwz 0, 0x268(29)
    mr 3, 31
    addi 4, 1, 0x134
    clrlwi 5, 0, 24
    bl fn_802303FC
L_8028E978:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE50 # blt .L_8028E7D0
    lwz 3, 0x234(29)
    addi 0, 3, 0x1
    stw 0, 0x234(29)
    lwz 0, 0x90(29)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x41800024 # blt .L_8028E9C0
    lwz 0, 0x234(29)
    cmpwi 0, 0x28
    .4byte 0x41800EA0 # blt .L_8028F848
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x234(29)
    stw 0, 0x230(29)
    .4byte 0x48000E8C # b .L_8028F848
L_8028E9C0:
    lwz 0, 0x234(29)
    cmpwi 0, 0x40
    .4byte 0x41800E80 # blt .L_8028F848
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x234(29)
    stw 0, 0x230(29)
    .4byte 0x48000E6C # b .L_8028F848
L_8028E9E0:
    lwz 0, 0x90(29)
    clrlwi 0, 0, 28
    cmplwi 0, 0x7
    .4byte 0x41810B20 # bgt .L_8028F50C
    lis 3, jumptable_804A7ABC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A7ABC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 30, 0x0
L_8028EA0C:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8028EA78
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    mr 3, 30
    .4byte 0xC002D5E0 # lfs f0, lbl_80540580@sda21(r0)
    psq_st 1, 0x110(1), 0, 0
    lfs 1, 0x114(1)
    stfs 2, 0x118(1)
    fsubs 0, 1, 0
    stfs 0, 0x114(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 30
    addi 4, 1, 0x110
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 30
    li 4, 0x2
    bl fn_80230BF4
L_8028EA78:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF8C # blt .L_8028EA0C
    lfs 1, 0x23c(29)
    .4byte 0xC002D5E0 # lfs f0, lbl_80540580@sda21(r0)
    lfs 2, 0x238(29)
    fsubs 0, 1, 0
    stfs 2, 0x58(1)
    stfs 0, 0x5c(1)
    lwz 3, 0x58(1)
    lwz 0, 0x5c(1)
    stw 3, 0x60(1)
    stw 0, 0x64(1)
    bl GetRoomConfigRecord
    lwz 30, 0x14(3)
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0xb8(1)
    lwz 4, 0xd4(3)
    lfs 1, 0x60(1)
    lfs 0, 0xb8(1)
    lwz 0, 0xd8(3)
    fcmpo cr0, 1, 0
    stw 5, 0xbc(1)
    stw 4, 0xc0(1)
    stw 0, 0xc4(1)
    .4byte 0x4080000C # bge .L_8028EAF8
    subi 30, 30, 0x1
    .4byte 0x48000018 # b .L_8028EB0C
L_8028EAF8:
    lfs 0, 0xc0(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028EB0C
    addi 30, 30, 0x1
L_8028EB0C:
    lfs 1, 0x64(1)
    lfs 0, 0xbc(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8028EB24
    subi 31, 31, 0x1
    .4byte 0x48000018 # b .L_8028EB38
L_8028EB24:
    lfs 0, 0xc4(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028EB38
    addi 31, 31, 0x1
L_8028EB38:
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 31
    bl fn_802D9FF4
    .4byte 0x480009C4 # b .L_8028F50C
    li 30, 0x0
L_8028EB50:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8028EBBC
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    mr 3, 30
    .4byte 0xC002D5E0 # lfs f0, lbl_80540580@sda21(r0)
    psq_st 1, 0x104(1), 0, 0
    lfs 1, 0x108(1)
    stfs 2, 0x10c(1)
    fadds 0, 1, 0
    stfs 0, 0x108(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 30
    addi 4, 1, 0x104
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 30
    li 4, 0x2
    bl fn_80230BF4
L_8028EBBC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF8C # blt .L_8028EB50
    .4byte 0xC022D5E0 # lfs f1, lbl_80540580@sda21(r0)
    lfs 0, 0x23c(29)
    lfs 2, 0x238(29)
    fadds 0, 1, 0
    stfs 2, 0x48(1)
    stfs 0, 0x4c(1)
    lwz 3, 0x48(1)
    lwz 0, 0x4c(1)
    stw 3, 0x50(1)
    stw 0, 0x54(1)
    bl GetRoomConfigRecord
    lwz 30, 0x14(3)
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0xa8(1)
    lwz 4, 0xd4(3)
    lfs 1, 0x50(1)
    lfs 0, 0xa8(1)
    lwz 0, 0xd8(3)
    fcmpo cr0, 1, 0
    stw 5, 0xac(1)
    stw 4, 0xb0(1)
    stw 0, 0xb4(1)
    .4byte 0x4080000C # bge .L_8028EC3C
    subi 30, 30, 0x1
    .4byte 0x48000018 # b .L_8028EC50
L_8028EC3C:
    lfs 0, 0xb0(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028EC50
    addi 30, 30, 0x1
L_8028EC50:
    lfs 1, 0x54(1)
    lfs 0, 0xac(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8028EC68
    subi 31, 31, 0x1
    .4byte 0x48000018 # b .L_8028EC7C
L_8028EC68:
    lfs 0, 0xb4(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028EC7C
    addi 31, 31, 0x1
L_8028EC7C:
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 31
    bl fn_802D9FF4
    .4byte 0x48000880 # b .L_8028F50C
    li 31, 0x0
    mr 30, 29
L_8028EC98:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_8028ED78
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xf8(1), 0, 0
    stfs 0, 0x100(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 8, 8
    extrwi 0, 3, 7, 9
    .4byte 0x41820008 # beq .L_8028ECD4
    neg 0, 0
L_8028ECD4:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x160(1)
    lfs 0, 0x238(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0xf8(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 16, 16
    extrwi 0, 3, 7, 17
    .4byte 0x41820008 # beq .L_8028ED14
    neg 0, 0
L_8028ED14:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x16c(1)
    mr 3, 31
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x23c(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    fadds 0, 3, 0
    stfs 0, 0xfc(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 31
    addi 4, 1, 0xf8
    li 6, 0x0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 31
    li 4, 0x3
    bl fn_80230BF4
L_8028ED78:
    addi 31, 31, 0x1
    addi 30, 30, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FF14 # blt .L_8028EC98
    lwz 4, 0x90(29)
    rlwinm. 0, 4, 0, 16, 16
    extrwi 0, 4, 7, 17
    .4byte 0x41820008 # beq .L_8028ED9C
    neg 0, 0
L_8028ED9C:
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x16c(1)
    rlwinm. 0, 4, 0, 8, 8
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    extrwi 0, 4, 7, 9
    stw 3, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x23c(29)
    fsubs 1, 1, 2
    fmadds 4, 3, 1, 0
    .4byte 0x41820008 # beq .L_8028EDD4
    neg 0, 0
L_8028EDD4:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    lfs 0, 0x238(29)
    lfd 1, 0x160(1)
    stfs 4, 0x3c(1)
    fsubs 1, 1, 2
    lwz 0, 0x3c(1)
    fmadds 0, 3, 1, 0
    stw 0, 0x44(1)
    stfs 0, 0x38(1)
    lwz 0, 0x38(1)
    stw 0, 0x40(1)
    bl GetRoomConfigRecord
    lwz 30, 0x14(3)
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0x98(1)
    lwz 4, 0xd4(3)
    lfs 1, 0x40(1)
    lfs 0, 0x98(1)
    lwz 0, 0xd8(3)
    fcmpo cr0, 1, 0
    stw 5, 0x9c(1)
    stw 4, 0xa0(1)
    stw 0, 0xa4(1)
    .4byte 0x4080000C # bge .L_8028EE5C
    subi 30, 30, 0x1
    .4byte 0x48000018 # b .L_8028EE70
L_8028EE5C:
    lfs 0, 0xa0(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028EE70
    addi 30, 30, 0x1
L_8028EE70:
    lfs 1, 0x44(1)
    lfs 0, 0x9c(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8028EE88
    subi 31, 31, 0x1
    .4byte 0x48000018 # b .L_8028EE9C
L_8028EE88:
    lfs 0, 0xa4(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028EE9C
    addi 31, 31, 0x1
L_8028EE9C:
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 31
    bl fn_802D9FF4
    .4byte 0x48000660 # b .L_8028F50C
    li 31, 0x0
    mr 30, 29
L_8028EEB8:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_8028EF98
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xec(1), 0, 0
    stfs 0, 0xf4(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 8, 8
    extrwi 0, 3, 7, 9
    .4byte 0x41820008 # beq .L_8028EEF4
    neg 0, 0
L_8028EEF4:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x16c(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x238(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0xec(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 16, 16
    extrwi 0, 3, 7, 17
    .4byte 0x41820008 # beq .L_8028EF34
    neg 0, 0
L_8028EF34:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    mr 3, 31
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x160(1)
    lfs 0, 0x23c(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    fsubs 0, 0, 3
    stfs 0, 0xf0(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 31
    addi 4, 1, 0xec
    li 6, 0x0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 31
    li 4, 0x2
    bl fn_80230BF4
L_8028EF98:
    addi 31, 31, 0x1
    addi 30, 30, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FF14 # blt .L_8028EEB8
    lwz 4, 0x90(29)
    rlwinm. 0, 4, 0, 16, 16
    extrwi 0, 4, 7, 17
    .4byte 0x41820008 # beq .L_8028EFBC
    neg 0, 0
L_8028EFBC:
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x16c(1)
    rlwinm. 0, 4, 0, 8, 8
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    extrwi 0, 4, 7, 9
    stw 3, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x23c(29)
    fsubs 1, 1, 2
    fmadds 4, 3, 1, 0
    .4byte 0x41820008 # beq .L_8028EFF4
    neg 0, 0
L_8028EFF4:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    lfs 0, 0x238(29)
    lfd 1, 0x160(1)
    stfs 4, 0x2c(1)
    fsubs 1, 1, 2
    lwz 0, 0x2c(1)
    fmadds 0, 3, 1, 0
    stw 0, 0x34(1)
    stfs 0, 0x28(1)
    lwz 0, 0x28(1)
    stw 0, 0x30(1)
    bl GetRoomConfigRecord
    lwz 30, 0x14(3)
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0x88(1)
    lwz 4, 0xd4(3)
    lfs 1, 0x30(1)
    lfs 0, 0x88(1)
    lwz 0, 0xd8(3)
    fcmpo cr0, 1, 0
    stw 5, 0x8c(1)
    stw 4, 0x90(1)
    stw 0, 0x94(1)
    .4byte 0x4080000C # bge .L_8028F07C
    subi 30, 30, 0x1
    .4byte 0x48000018 # b .L_8028F090
L_8028F07C:
    lfs 0, 0x90(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028F090
    addi 30, 30, 0x1
L_8028F090:
    lfs 1, 0x34(1)
    lfs 0, 0x8c(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8028F0A8
    subi 31, 31, 0x1
    .4byte 0x48000018 # b .L_8028F0BC
L_8028F0A8:
    lfs 0, 0x94(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028F0BC
    addi 31, 31, 0x1
L_8028F0BC:
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 31
    bl fn_802D9FF4
    .4byte 0x48000440 # b .L_8028F50C
    li 31, 0x0
    mr 30, 29
L_8028F0D8:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_8028F1B8
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xe0(1), 0, 0
    stfs 0, 0xe8(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 8, 8
    extrwi 0, 3, 7, 9
    .4byte 0x41820008 # beq .L_8028F114
    neg 0, 0
L_8028F114:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x16c(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x238(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    fsubs 0, 0, 3
    stfs 0, 0xe0(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 16, 16
    extrwi 0, 3, 7, 17
    .4byte 0x41820008 # beq .L_8028F158
    neg 0, 0
L_8028F158:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    mr 3, 31
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x160(1)
    lfs 0, 0x23c(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0xe4(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 31
    addi 4, 1, 0xe0
    li 6, 0x0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 31
    li 4, 0x0
    bl fn_80230BF4
L_8028F1B8:
    addi 31, 31, 0x1
    addi 30, 30, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FF14 # blt .L_8028F0D8
    lwz 4, 0x90(29)
    rlwinm. 0, 4, 0, 16, 16
    extrwi 0, 4, 7, 17
    .4byte 0x41820008 # beq .L_8028F1DC
    neg 0, 0
L_8028F1DC:
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x16c(1)
    rlwinm. 0, 4, 0, 8, 8
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    extrwi 0, 4, 7, 9
    stw 3, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x23c(29)
    fsubs 1, 1, 2
    fmadds 4, 3, 1, 0
    .4byte 0x41820008 # beq .L_8028F214
    neg 0, 0
L_8028F214:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    lfs 0, 0x238(29)
    lfd 1, 0x160(1)
    stfs 4, 0x1c(1)
    fsubs 1, 1, 2
    lwz 0, 0x1c(1)
    fmadds 0, 3, 1, 0
    stw 0, 0x24(1)
    stfs 0, 0x18(1)
    lwz 0, 0x18(1)
    stw 0, 0x20(1)
    bl GetRoomConfigRecord
    lwz 30, 0x14(3)
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0x78(1)
    lwz 4, 0xd4(3)
    lfs 1, 0x20(1)
    lfs 0, 0x78(1)
    lwz 0, 0xd8(3)
    fcmpo cr0, 1, 0
    stw 5, 0x7c(1)
    stw 4, 0x80(1)
    stw 0, 0x84(1)
    .4byte 0x4080000C # bge .L_8028F29C
    subi 30, 30, 0x1
    .4byte 0x48000018 # b .L_8028F2B0
L_8028F29C:
    lfs 0, 0x80(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028F2B0
    addi 30, 30, 0x1
L_8028F2B0:
    lfs 1, 0x24(1)
    lfs 0, 0x7c(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8028F2C8
    subi 31, 31, 0x1
    .4byte 0x48000018 # b .L_8028F2DC
L_8028F2C8:
    lfs 0, 0x84(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028F2DC
    addi 31, 31, 0x1
L_8028F2DC:
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 31
    bl fn_802D9FF4
    .4byte 0x48000220 # b .L_8028F50C
    li 31, 0x0
    mr 30, 29
L_8028F2F8:
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x418200D4 # beq .L_8028F3D8
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xd4(1), 0, 0
    stfs 0, 0xdc(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 8, 8
    extrwi 0, 3, 7, 9
    .4byte 0x41820008 # beq .L_8028F334
    neg 0, 0
L_8028F334:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x16c(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x238(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    fadds 0, 3, 0
    stfs 0, 0xd4(1)
    lwz 3, 0x90(29)
    rlwinm. 0, 3, 0, 16, 16
    extrwi 0, 3, 7, 17
    .4byte 0x41820008 # beq .L_8028F378
    neg 0, 0
L_8028F378:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    mr 3, 31
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x160(1)
    lfs 0, 0x23c(30)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0xd8(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 31
    addi 4, 1, 0xd4
    li 6, 0x0
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 31
    li 4, 0x1
    bl fn_80230BF4
L_8028F3D8:
    addi 31, 31, 0x1
    addi 30, 30, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FF14 # blt .L_8028F2F8
    lwz 4, 0x90(29)
    rlwinm. 0, 4, 0, 16, 16
    extrwi 0, 4, 7, 17
    .4byte 0x41820008 # beq .L_8028F3FC
    neg 0, 0
L_8028F3FC:
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x16c(1)
    rlwinm. 0, 4, 0, 8, 8
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    extrwi 0, 4, 7, 9
    stw 3, 0x168(1)
    .4byte 0xC062D5D4 # lfs f3, lbl_80540574@sda21(r0)
    lfd 1, 0x168(1)
    lfs 0, 0x23c(29)
    fsubs 1, 1, 2
    fmadds 4, 3, 1, 0
    .4byte 0x41820008 # beq .L_8028F434
    neg 0, 0
L_8028F434:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x164(1)
    .4byte 0xC842D5E8 # lfd f2, lbl_80540588@sda21(r0)
    stw 0, 0x160(1)
    lfs 0, 0x238(29)
    lfd 1, 0x160(1)
    stfs 4, 0xc(1)
    fsubs 1, 1, 2
    lwz 0, 0xc(1)
    fmadds 0, 3, 1, 0
    stw 0, 0x14(1)
    stfs 0, 0x8(1)
    lwz 0, 0x8(1)
    stw 0, 0x10(1)
    bl GetRoomConfigRecord
    lwz 30, 0x14(3)
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0xcc(3)
    lwz 5, 0xd0(3)
    stw 0, 0x68(1)
    lwz 4, 0xd4(3)
    lfs 1, 0x10(1)
    lfs 0, 0x68(1)
    lwz 0, 0xd8(3)
    fcmpo cr0, 1, 0
    stw 5, 0x6c(1)
    stw 4, 0x70(1)
    stw 0, 0x74(1)
    .4byte 0x4080000C # bge .L_8028F4BC
    subi 30, 30, 0x1
    .4byte 0x48000018 # b .L_8028F4D0
L_8028F4BC:
    lfs 0, 0x70(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028F4D0
    addi 30, 30, 0x1
L_8028F4D0:
    lfs 1, 0x14(1)
    lfs 0, 0x6c(1)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8028F4E8
    subi 31, 31, 0x1
    .4byte 0x48000018 # b .L_8028F4FC
L_8028F4E8:
    lfs 0, 0x74(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8028F4FC
    addi 31, 31, 0x1
L_8028F4FC:
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 31
    bl fn_802D9FF4
L_8028F50C:
    lwz 0, 0x90(29)
    rlwinm. 4, 0, 0, 24, 24
    extrwi 3, 0, 3, 25
    .4byte 0x41820008 # beq .L_8028F520
    subi 3, 3, 0x8
L_8028F520:
    cmpwi 3, -0x8
    .4byte 0x40820010 # bne .L_8028F534
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043A608
    .4byte 0x48000038 # b .L_8028F568
L_8028F534:
    cmplwi 4, 0x0
    extrwi 3, 0, 3, 25
    .4byte 0x41820008 # beq .L_8028F544
    subi 3, 3, 0x8
L_8028F544:
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8028F568
    cmplwi 4, 0x0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    extrwi 4, 0, 3, 25
    .4byte 0x41820008 # beq .L_8028F560
    subi 4, 4, 0x8
L_8028F560:
    li 5, 0x0
    bl fn_8043ABCC
L_8028F568:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x13
    li 5, 0x0
    bl fn_80136798
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x480002C8 # b .L_8028F848
L_8028F584:
    lwz 0, 0x90(29)
    rlwinm. 0, 0, 0, 7, 7
    .4byte 0x40820024 # bne .L_8028F5B0
    lwz 3, 0x268(29)
    addi 0, 3, 0x7
    stw 0, 0x268(29)
    lwz 0, 0x268(29)
    cmpwi 0, 0xff
    .4byte 0x4081000C # ble .L_8028F5B0
    li 0, 0xff
    stw 0, 0x268(29)
L_8028F5B0:
    li 31, 0x0
L_8028F5B4:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820188 # beq .L_8028F748
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0xc8(1), 0, 0
    stfs 0, 0xd0(1)
    lwz 0, 0x90(29)
    clrlwi 0, 0, 28
    cmpwi 0, 0x5
    .4byte 0x418200D8 # beq .L_8028F6C0
    .4byte 0x40800024 # bge .L_8028F610
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_8028F604
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8028F620
    .4byte 0x48000134 # b .L_8028F734
L_8028F604:
    cmpwi 0, 0x4
    .4byte 0x40800068 # bge .L_8028F670
    .4byte 0x48000128 # b .L_8028F734
L_8028F610:
    cmpwi 0, 0x7
    .4byte 0x41820110 # beq .L_8028F724
    .4byte 0x4080011C # bge .L_8028F734
    .4byte 0x480000F4 # b .L_8028F710
L_8028F620:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 30, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8028F65C
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x408200F0 # bne .L_8028F734
    lfs 1, 0xcc(1)
    .4byte 0xC002D5E4 # lfs f0, lbl_80540584@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xcc(1)
    .4byte 0x480000DC # b .L_8028F734
L_8028F65C:
    lfs 1, 0xcc(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xcc(1)
    .4byte 0x480000C8 # b .L_8028F734
L_8028F670:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 30, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8028F6AC
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x408200A0 # bne .L_8028F734
    lfs 1, 0xcc(1)
    .4byte 0xC002D5E4 # lfs f0, lbl_80540584@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xcc(1)
    .4byte 0x4800008C # b .L_8028F734
L_8028F6AC:
    lfs 1, 0xcc(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xcc(1)
    .4byte 0x48000078 # b .L_8028F734
L_8028F6C0:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 30, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8028F6FC
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_8028F734
    lfs 1, 0xcc(1)
    .4byte 0xC002D5E4 # lfs f0, lbl_80540584@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xcc(1)
    .4byte 0x4800003C # b .L_8028F734
L_8028F6FC:
    lfs 1, 0xcc(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xcc(1)
    .4byte 0x48000028 # b .L_8028F734
L_8028F710:
    lfs 1, 0xc8(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc8(1)
    .4byte 0x48000014 # b .L_8028F734
L_8028F724:
    lfs 1, 0xc8(1)
    .4byte 0xC002D5DC # lfs f0, lbl_8054057C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc8(1)
L_8028F734:
    lwz 0, 0x268(29)
    mr 3, 31
    addi 4, 1, 0xc8
    clrlwi 5, 0, 24
    bl fn_802303FC
L_8028F748:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE64 # blt .L_8028F5B4
    lwz 3, 0x234(29)
    addi 0, 3, 0x1
    stw 0, 0x234(29)
    lwz 0, 0x90(29)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x41800024 # blt .L_8028F790
    lwz 0, 0x234(29)
    cmpwi 0, 0x28
    .4byte 0x418000D0 # blt .L_8028F848
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x234(29)
    stw 0, 0x230(29)
    .4byte 0x480000BC # b .L_8028F848
L_8028F790:
    lwz 0, 0x234(29)
    cmpwi 0, 0x62
    .4byte 0x418000B0 # blt .L_8028F848
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x234(29)
    stw 0, 0x230(29)
    .4byte 0x4800009C # b .L_8028F848
L_8028F7B0:
    bl fn_80231368
    li 30, 0x0
L_8028F7B8:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8028F82C
    lwz 0, 0x90(29)
    clrlwi 0, 0, 28
    cmpwi 0, 0x4
    .4byte 0x40800018 # bge .L_8028F7EC
    cmpwi 0, 0x2
    .4byte 0x40800044 # bge .L_8028F820
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_8028F7FC
    .4byte 0x48000038 # b .L_8028F820
L_8028F7EC:
    cmpwi 0, 0x8
    .4byte 0x40800030 # bge .L_8028F820
    cmpwi 0, 0x6
    .4byte 0x40800018 # bge .L_8028F810
L_8028F7FC:
    mr 3, 30
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    .4byte 0x48000014 # b .L_8028F820
L_8028F810:
    mr 3, 30
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
L_8028F820:
    mr 3, 30
    li 4, 0x0
    bl fn_80230224
L_8028F82C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_8028F7B8
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
L_8028F848:
    psq_l 31, 0x1c8(1), 0, 0
    lfd 31, 0x1c0(1)
    psq_l 30, 0x1b8(1), 0, 0
    lfd 30, 0x1b0(1)
    psq_l 29, 0x1a8(1), 0, 0
    lfd 29, 0x1a0(1)
    psq_l 28, 0x198(1), 0, 0
    lfd 28, 0x190(1)
    psq_l 27, 0x188(1), 0, 0
    lfd 27, 0x180(1)
    lwz 31, 0x17c(1)
    lwz 30, 0x178(1)
    lwz 29, 0x174(1)
    lwz 0, 0x1d4(1)
    lwz 28, 0x170(1)
    mtlr 0
    addi 1, 1, 0x1d0
    blr

fn_8028F890:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    cmpwi 0, 0x5
    .4byte 0x4182005C # beq .L_8028F8F8
    .4byte 0x40800024 # bge .L_8028F8C4
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_8028F8B8
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8028F8D4
    .4byte 0x480000AC # b .L_8028F960
L_8028F8B8:
    cmpwi 0, 0x4
    .4byte 0x40800018 # bge .L_8028F8D4
    .4byte 0x480000A0 # b .L_8028F960
L_8028F8C4:
    cmpwi 0, 0x7
    .4byte 0x41820078 # beq .L_8028F940
    .4byte 0x40800094 # bge .L_8028F960
    .4byte 0x4800004C # b .L_8028F91C
L_8028F8D4:
    .4byte 0xC022D5F0 # lfs f1, lbl_80540590@sda21(r0)
    .4byte 0xC002D5F4 # lfs f0, lbl_80540594@sda21(r0)
    stfs 1, 0x60(3)
    .4byte 0xC022D5F8 # lfs f1, lbl_80540598@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002D5E4 # lfs f0, lbl_80540584@sda21(r0)
    stfs 1, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x4800006C # b .L_8028F960
L_8028F8F8:
    .4byte 0xC022D5F0 # lfs f1, lbl_80540590@sda21(r0)
    .4byte 0xC002D5FC # lfs f0, lbl_8054059C@sda21(r0)
    stfs 1, 0x60(3)
    .4byte 0xC022D5F8 # lfs f1, lbl_80540598@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002D600 # lfs f0, lbl_805405A0@sda21(r0)
    stfs 1, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x48000048 # b .L_8028F960
L_8028F91C:
    .4byte 0xC022D5FC # lfs f1, lbl_8054059C@sda21(r0)
    .4byte 0xC002D5F0 # lfs f0, lbl_80540590@sda21(r0)
    stfs 1, 0x60(3)
    .4byte 0xC022D600 # lfs f1, lbl_805405A0@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002D5F8 # lfs f0, lbl_80540598@sda21(r0)
    stfs 1, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x48000024 # b .L_8028F960
L_8028F940:
    .4byte 0xC022D5F4 # lfs f1, lbl_80540594@sda21(r0)
    .4byte 0xC002D5F0 # lfs f0, lbl_80540590@sda21(r0)
    stfs 1, 0x60(3)
    .4byte 0xC022D5E4 # lfs f1, lbl_80540584@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002D5F8 # lfs f0, lbl_80540598@sda21(r0)
    stfs 1, 0x68(3)
    stfs 0, 0x6c(3)
L_8028F960:
    li 4, 0x0
    li 0, 0xff
    stw 4, 0x108(3)
    stw 4, 0x230(3)
    stw 4, 0x234(3)
    stw 0, 0x268(3)
    blr

fn_8028F97C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0268@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0268@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028F9CC
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
L_8028F9CC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FA04
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
L_8028FA04:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FA3C
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
L_8028FA3C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FA74
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
L_8028FA74:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FAAC
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
L_8028FAAC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FAE4
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
L_8028FAE4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FB1C
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
L_8028FB1C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FB54
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
L_8028FB54:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8028FB8C
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
L_8028FB8C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8028FBA0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lfs 0, 0xcb0(3)
    stfs 0, 0x8(1)
    lfs 1, 0xcb4(3)
    stfs 1, 0xc(1)
    lfs 0, 0xcb8(3)
    stfs 0, 0x10(1)
    lbz 0, 0xcf2(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8028FBE4
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_8028FBE4:
    mr 3, 31
    addi 5, 31, 0x8
    addi 6, 1, 0x8
    li 4, 0x0
    li 7, 0x5
    bl fn_80290070
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8028FC14
    li 0, 0x0
    li 3, 0x1
    stb 0, 0xbdc(31)
    .4byte 0x48000008 # b .L_8028FC18
L_8028FC14:
    li 3, 0x0
L_8028FC18:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8028FC2C:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stmw 27, 0x9c(1)
    mr 27, 3
    lwz 0, 0xd28(3)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_8028FC64
    addi 5, 27, 0x8
    addi 6, 27, 0xcb0
    li 4, 0x0
    li 7, 0x27
    bl fn_80290070
    .4byte 0x480003FC # b .L_8029005C
L_8028FC64:
    bl GetRoomConfigRecord
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    lwz 29, 0x8(3)
    bl GetRoomConfigRecord
    lwz 28, 0x14(3)
    bl GetRoomConfigRecord
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x18(31)
    add 4, 28, 3
    lwz 3, 0x3b4(27)
    cmpwi 30, 0x0
    mulli 0, 0, 0xa
    subi 5, 3, 0x7
    add 3, 4, 0
    lbz 0, 0x60(3)
    .4byte 0x40820040 # bne .L_8028FCE8
    cmpwi 29, 0x0
    .4byte 0x40820038 # bne .L_8028FCE8
    .4byte 0xC042D60C # lfs f2, lbl_805405AC@sda21(r0)
    mr 3, 27
    .4byte 0xC022D610 # lfs f1, lbl_805405B0@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x8c
    stfs 2, 0x8c(1)
    li 4, 0x0
    li 7, 0x27
    stfs 1, 0x90(1)
    stfs 0, 0x94(1)
    bl fn_80290070
    .4byte 0x48000378 # b .L_8029005C
L_8028FCE8:
    cmpwi 30, 0x1
    .4byte 0x40820048 # bne .L_8028FD34
    cmpwi 29, 0x0
    .4byte 0x40820040 # bne .L_8028FD34
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_8028FD34
    .4byte 0xC042D618 # lfs f2, lbl_805405B8@sda21(r0)
    mr 3, 27
    .4byte 0xC022D61C # lfs f1, lbl_805405BC@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x80
    stfs 2, 0x80(1)
    li 4, 0x0
    li 7, 0x27
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
    bl fn_80290070
    .4byte 0x4800032C # b .L_8029005C
L_8028FD34:
    cmpwi 30, 0x1
    .4byte 0x40820050 # bne .L_8028FD88
    cmpwi 29, 0x0
    .4byte 0x40820048 # bne .L_8028FD88
    cmpwi 0, 0x5
    .4byte 0x40820040 # bne .L_8028FD88
    cmpwi 5, 0x5
    .4byte 0x40820038 # bne .L_8028FD88
    .4byte 0xC042D620 # lfs f2, lbl_805405C0@sda21(r0)
    mr 3, 27
    .4byte 0xC022D624 # lfs f1, lbl_805405C4@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x74
    stfs 2, 0x74(1)
    li 7, 0x27
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x480002D8 # b .L_8029005C
L_8028FD88:
    cmpwi 30, 0x1
    .4byte 0x40820050 # bne .L_8028FDDC
    cmpwi 29, 0x0
    .4byte 0x40820048 # bne .L_8028FDDC
    cmpwi 0, 0x5
    .4byte 0x40820040 # bne .L_8028FDDC
    cmpwi 5, 0x6
    .4byte 0x40820038 # bne .L_8028FDDC
    .4byte 0xC042D628 # lfs f2, lbl_805405C8@sda21(r0)
    mr 3, 27
    .4byte 0xC022D62C # lfs f1, lbl_805405CC@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x68
    stfs 2, 0x68(1)
    li 7, 0x27
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x48000284 # b .L_8029005C
L_8028FDDC:
    cmpwi 30, 0x1
    .4byte 0x40820050 # bne .L_8028FE30
    cmpwi 29, 0x0
    .4byte 0x40820048 # bne .L_8028FE30
    cmpwi 0, 0x5
    .4byte 0x40820040 # bne .L_8028FE30
    cmpwi 5, 0x7
    .4byte 0x40820038 # bne .L_8028FE30
    .4byte 0xC042D630 # lfs f2, lbl_805405D0@sda21(r0)
    mr 3, 27
    .4byte 0xC022D634 # lfs f1, lbl_805405D4@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x5c
    stfs 2, 0x5c(1)
    li 7, 0x27
    stfs 1, 0x60(1)
    stfs 0, 0x64(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x48000230 # b .L_8029005C
L_8028FE30:
    cmpwi 30, 0x1
    .4byte 0x40820048 # bne .L_8028FE7C
    cmpwi 29, 0x0
    .4byte 0x40820040 # bne .L_8028FE7C
    cmpwi 0, 0x6
    .4byte 0x40820038 # bne .L_8028FE7C
    .4byte 0xC042D638 # lfs f2, lbl_805405D8@sda21(r0)
    mr 3, 27
    .4byte 0xC022D63C # lfs f1, lbl_805405DC@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x50
    stfs 2, 0x50(1)
    li 7, 0x27
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x480001E4 # b .L_8029005C
L_8028FE7C:
    cmpwi 30, 0x1
    .4byte 0x40820040 # bne .L_8028FEC0
    cmpwi 29, 0x3
    .4byte 0x40820038 # bne .L_8028FEC0
    .4byte 0xC042D640 # lfs f2, lbl_805405E0@sda21(r0)
    mr 3, 27
    .4byte 0xC022D644 # lfs f1, lbl_805405E4@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x44
    stfs 2, 0x44(1)
    li 7, 0x27
    stfs 1, 0x48(1)
    stfs 0, 0x4c(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x480001A0 # b .L_8029005C
L_8028FEC0:
    cmpwi 30, 0x2
    .4byte 0x40820040 # bne .L_8028FF04
    cmpwi 29, 0x0
    .4byte 0x40820038 # bne .L_8028FF04
    .4byte 0xC042D648 # lfs f2, lbl_805405E8@sda21(r0)
    mr 3, 27
    .4byte 0xC022D644 # lfs f1, lbl_805405E4@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x38
    stfs 2, 0x38(1)
    li 7, 0x27
    stfs 1, 0x3c(1)
    stfs 0, 0x40(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x4800015C # b .L_8029005C
L_8028FF04:
    cmpwi 30, 0x3
    .4byte 0x40820040 # bne .L_8028FF48
    cmpwi 29, 0x0
    .4byte 0x40820038 # bne .L_8028FF48
    .4byte 0xC042D64C # lfs f2, lbl_805405EC@sda21(r0)
    mr 3, 27
    .4byte 0xC022D62C # lfs f1, lbl_805405CC@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x2c
    stfs 2, 0x2c(1)
    li 7, 0x27
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x48000118 # b .L_8029005C
L_8028FF48:
    cmpwi 30, 0x5
    .4byte 0x40820028 # bne .L_8028FF74
    cmpwi 29, 0x0
    .4byte 0x40820020 # bne .L_8028FF74
    mr 3, 27
    addi 5, 27, 0x8
    addi 6, 27, 0xcb0
    li 4, 0x0
    li 7, 0x27
    bl fn_80290070
    .4byte 0x480000EC # b .L_8029005C
L_8028FF74:
    cmpwi 30, 0x6
    .4byte 0x40820048 # bne .L_8028FFC0
    cmpwi 29, 0x0
    .4byte 0x40820040 # bne .L_8028FFC0
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_8028FFC0
    .4byte 0xC042D650 # lfs f2, lbl_805405F0@sda21(r0)
    mr 3, 27
    .4byte 0xC022D654 # lfs f1, lbl_805405F4@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x20
    stfs 2, 0x20(1)
    li 7, 0x27
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x480000A0 # b .L_8029005C
L_8028FFC0:
    cmpwi 30, 0x6
    .4byte 0x40820048 # bne .L_8029000C
    cmpwi 29, 0x0
    .4byte 0x40820040 # bne .L_8029000C
    cmpwi 0, 0x4
    .4byte 0x40820038 # bne .L_8029000C
    .4byte 0xC042D650 # lfs f2, lbl_805405F0@sda21(r0)
    mr 3, 27
    .4byte 0xC022D654 # lfs f1, lbl_805405F4@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x14
    stfs 2, 0x14(1)
    li 7, 0x27
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x48000054 # b .L_8029005C
L_8029000C:
    cmpwi 30, 0x6
    .4byte 0x40820048 # bne .L_80290058
    cmpwi 29, 0x0
    .4byte 0x40820040 # bne .L_80290058
    cmpwi 0, 0x5
    .4byte 0x40820038 # bne .L_80290058
    .4byte 0xC042D658 # lfs f2, lbl_805405F8@sda21(r0)
    mr 3, 27
    .4byte 0xC022D65C # lfs f1, lbl_805405FC@sda21(r0)
    addi 5, 27, 0x8
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    addi 6, 1, 0x8
    stfs 2, 0x8(1)
    li 7, 0x27
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lwz 4, 0xd28(27)
    bl fn_80290070
    .4byte 0x48000008 # b .L_8029005C
L_80290058:
    li 3, 0x0
L_8029005C:
    lmw 27, 0x9c(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_80290070:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 27, 0x4c(1)
    mr 31, 7
    cmpwi 31, 0xc
    mr 27, 3
    mr 28, 4
    mr 29, 5
    mr 30, 6
    .4byte 0x40820020 # bne .L_802900B8
    bl fn_802DE93C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802900B4
    lwz 0, 0x3b4(27)
    cmpwi 0, 0x8
    .4byte 0x41800008 # blt .L_802900B8
L_802900B4:
    li 31, 0x26
L_802900B8:
    psq_l 1, 0x0(30), 0, 0
    cmpwi 31, 0x24
    lfs 0, 0x8(30)
    psq_st 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    .4byte 0x40820028 # bne .L_802900F4
    lbz 0, 0xce8(27)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80290108
    mr 3, 27
    bl fn_80240DAC
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80290108
    li 3, 0x0
    .4byte 0x48000C54 # b .L_80290D44
L_802900F4:
    lbz 0, 0xce8(27)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80290108
    li 3, 0x0
    .4byte 0x48000C40 # b .L_80290D44
L_80290108:
    lbz 0, 0xcee(27)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8029011C
    li 3, 0x0
    .4byte 0x48000C2C # b .L_80290D44
L_8029011C:
    lbz 0, 0x1216(27)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80290130
    li 3, 0x0
    .4byte 0x48000C18 # b .L_80290D44
L_80290130:
    lwz 0, 0x1238(27)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80290144
    li 3, 0x0
    .4byte 0x48000C04 # b .L_80290D44
L_80290144:
    cmpwi 31, 0x21
    .4byte 0x40820208 # bne .L_80290350
    lwz 0, 0x3b4(27)
    cmpwi 0, 0x8
    .4byte 0x418001FC # blt .L_80290350
    stw 0, 0xce0(27)
    addi 3, 27, 0xcc8
    li 0, 0x0
    psq_l 3, 0x0(30), 0, 0
    psq_l 0, 0x8(27), 0, 0
    addi 5, 27, 0xcd4
    lfs 1, 0x10(27)
    addi 4, 27, 0xcbc
    lfs 2, 0x8(30)
    psq_st 0, 0x0(3), 0, 0
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stfs 1, 0xcd0(27)
    stw 0, 0x3b4(27)
    stw 0, 0xce4(27)
    psq_st 3, 0x8(27), 0, 0
    stfs 2, 0x10(27)
    psq_l 2, 0x8(27), 0, 0
    lfs 1, 0x10(27)
    psq_st 2, 0x0(5), 0, 0
    stfs 1, 0xcdc(27)
    psq_l 2, 0x0(5), 0, 0
    lfs 1, 0xcdc(27)
    psq_st 2, 0x0(4), 0, 0
    stfs 1, 0xcc4(27)
    stfs 0, 0x10(27)
    lwz 3, 0xbec(27)
    lwz 4, 0x4(27)
    bl fn_8030BD3C
    mr 3, 27
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802901E0
    lwz 3, 0x4(27)
    bl fn_80301D54
L_802901E0:
    li 0, 0x0
    stb 0, 0x400(27)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_80290234
    mr 3, 27
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_80290234
    lwz 0, 0xce4(27)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80290224
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_8045815C
    .4byte 0x48000014 # b .L_80290234
L_80290224:
    .4byte 0x40820010 # bne .L_80290234
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_8045815C
L_80290234:
    lwz 4, 0xce0(27)
    mr 3, 27
    addi 5, 27, 0xcc8
    bl fn_80241E28
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_80290274
    psq_l 1, 0x8(27), 0, 0
    addi 4, 27, 0xcbc
    lfs 0, 0x10(27)
    addi 3, 27, 0xd1c
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0xcc4(27)
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0xcc4(27)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xd24(27)
L_80290274:
    lwz 0, 0xcf4(27)
    cmpwi 0, 0x14
    .4byte 0x40820020 # bne .L_8029029C
    lwz 0, 0x3b4(27)
    cmpwi 0, 0x8
    .4byte 0x41800014 # blt .L_8029029C
    li 3, 0x258
    li 0, 0x1
    stw 3, 0xbd8(27)
    stb 0, 0xbdc(27)
L_8029029C:
    mr 3, 27
    bl fn_80240D64
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802902B4
    li 0, 0x5
    stw 0, 0x11f0(27)
L_802902B4:
    li 7, 0x0
    li 5, 0x29
    stb 7, 0xce8(27)
    li 0, 0x3c
    mr 3, 27
    li 4, 0x1
    lwz 6, 0xcf4(27)
    stw 6, 0xcf8(27)
    stw 5, 0xcf4(27)
    stw 0, 0x468(27)
    stb 7, 0xced(27)
    bl Player_SetField_0xc80
    li 0, 0x0
    mr 3, 27
    stb 0, 0x1216(27)
    bl fn_8024BAEC
    lwz 3, 0xbec(27)
    lwz 4, 0x4(27)
    bl fn_8030BD3C
    mr 3, 27
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x41820024 # beq .L_80290330
    mr 3, 27
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x41820014 # beq .L_80290330
    mr 3, 27
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
L_80290330:
    mr 3, 27
    bl fn_80248604
    li 0, 0x0
    li 3, 0x1
    stb 0, 0xceb(27)
    stb 0, 0x400(27)
    stb 0, 0xcec(27)
    .4byte 0x480009F8 # b .L_80290D44
L_80290350:
    mr 3, 27
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80290368
    li 3, 0x0
    .4byte 0x480009E0 # b .L_80290D44
L_80290368:
    mr 3, 27
    bl fn_8024189C
    cmpwi 3, 0x0
    .4byte 0x4181000C # bgt .L_80290380
    li 3, 0x0
    .4byte 0x480009C8 # b .L_80290D44
L_80290380:
    mr 3, 27
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80290398
    li 3, 0x0
    .4byte 0x480009B0 # b .L_80290D44
L_80290398:
    mr 3, 27
    bl fn_80240628
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802903D0
    cmpwi 28, 0x8
    .4byte 0x41800020 # blt .L_802903D0
    mr 3, 27
    bl fn_80240628
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802903D0
    li 3, 0x0
    .4byte 0x48000978 # b .L_80290D44
L_802903D0:
    li 0, 0x0
    cmpwi 31, 0x22
    stb 0, 0xcf1(27)
    .4byte 0x408200EC # bne .L_802904C8
    lwz 0, 0x3b4(27)
    cmpw 28, 0
    .4byte 0x4182000C # beq .L_802903F4
    li 3, 0x0
    .4byte 0x48000954 # b .L_80290D44
L_802903F4:
    mr 3, 30
    mr 4, 28
    bl fn_8022461C
    mr 29, 3
    mr 3, 30
    mr 4, 28
    li 5, 0x1
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_80290448
    clrlwi 0, 29, 16
    cmplwi 0, 0x3
    .4byte 0x41820024 # beq .L_80290448
    cmplwi 0, 0xe
    .4byte 0x4182001C # beq .L_80290448
    mr 3, 27
    mr 4, 30
    mr 5, 28
    bl fn_802684A4
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80290488
L_80290448:
    cmpwi 28, 0x8
    .4byte 0x40800020 # bge .L_8029046C
    lfs 0, 0x2c4(27)
    stfs 0, 0x8(27)
    lfs 0, 0x2c8(27)
    stfs 0, 0xc(27)
    lfs 0, 0x2cc(27)
    stfs 0, 0x10(27)
    .4byte 0x48000038 # b .L_802904A0
L_8029046C:
    lfs 0, 0xcbc(27)
    stfs 0, 0x8(27)
    lfs 0, 0xcc0(27)
    stfs 0, 0xc(27)
    lfs 0, 0xcc4(27)
    stfs 0, 0x10(27)
    .4byte 0x4800001C # b .L_802904A0
L_80290488:
    lfs 0, 0x0(30)
    lfs 1, 0x4(30)
    stfs 0, 0x8(27)
    lfs 0, 0x8(30)
    stfs 1, 0xc(27)
    stfs 0, 0x10(27)
L_802904A0:
    lfs 0, 0x8(27)
    li 0, 0x3c
    li 3, 0x1
    stfs 0, 0x2c(27)
    lfs 0, 0xc(27)
    stfs 0, 0x30(27)
    lfs 0, 0x10(27)
    stfs 0, 0x34(27)
    stw 0, 0x464(27)
    .4byte 0x48000880 # b .L_80290D44
L_802904C8:
    cmpwi 31, 0x4
    .4byte 0x41820020 # beq .L_802904EC
    subi 0, 31, 0x7
    cmplwi 0, 0x2
    .4byte 0x40810014 # ble .L_802904EC
    cmpwi 31, 0x20
    .4byte 0x4182000C # beq .L_802904EC
    cmpwi 31, 0x24
    .4byte 0x408200E0 # bne .L_802905C8
L_802904EC:
    mr 3, 27
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80290510
    lbz 0, 0x1216(27)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80290510
    li 3, 0x0
    .4byte 0x48000838 # b .L_80290D44
L_80290510:
    mr 3, 27
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80290534
    lwz 0, 0x1238(27)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80290534
    li 3, 0x0
    .4byte 0x48000814 # b .L_80290D44
L_80290534:
    mr 3, 27
    li 4, 0x1e
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_802905C0
    lfs 0, 0x8(29)
    addi 4, 1, 0x14
    psq_l 1, 0x0(29), 0, 0
    mr 3, 27
    stfs 0, 0x10(1)
    psq_l 3, 0x8(27), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x10(27), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 0, 0x1c(1)
    bl fn_80252BAC
    mr 3, 27
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x41820438 # beq .L_802909D0
    lwz 28, 0x3b4(27)
    li 31, 0x9
    lfs 0, 0xd1c(27)
    stfs 0, 0x38(1)
    lfs 0, 0xd20(27)
    stfs 0, 0x3c(1)
    lfs 0, 0xd24(27)
    stfs 0, 0x40(1)
    .4byte 0x48000414 # b .L_802909D0
L_802905C0:
    li 3, 0x0
    .4byte 0x48000780 # b .L_80290D44
L_802905C8:
    subi 0, 31, 0xc
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802905DC
    cmpwi 31, 0x26
    .4byte 0x40820088 # bne .L_80290660
L_802905DC:
    mr 3, 27
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802905F8
    lbz 0, 0x1216(27)
    cmplwi 0, 0x1
    .4byte 0x41820034 # beq .L_80290628
L_802905F8:
    mr 3, 27
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80290630
    mr 3, 27
    bl Player_GetLinkTargetIndex
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80290630
    lwz 0, 0x1238(27)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80290630
L_80290628:
    li 3, 0x0
    .4byte 0x48000718 # b .L_80290D44
L_80290630:
    lwz 0, 0x3b4(27)
    cmpw 28, 0
    .4byte 0x4182000C # beq .L_80290644
    li 3, 0x0
    .4byte 0x48000704 # b .L_80290D44
L_80290644:
    mr 3, 27
    li 4, 0x32
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4082037C # bne .L_802909D0
    li 3, 0x0
    .4byte 0x480006E8 # b .L_80290D44
L_80290660:
    cmpwi 31, 0x5
    .4byte 0x4082006C # bne .L_802906D0
    mr 3, 27
    li 4, 0x20
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_802906C8
    lbz 0, 0xcf0(27)
    mr 4, 28
    addi 3, 1, 0x38
    stb 0, 0xcf1(27)
    bl fn_8022461C
    clrlwi. 4, 3, 16
    .4byte 0x4182001C # beq .L_802906B0
    subi 0, 3, 0x2
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802906B0
    cmplwi 4, 0x21
    .4byte 0x40820010 # bne .L_802906BC
L_802906B0:
    li 0, 0x0
    stb 0, 0xcf0(27)
    .4byte 0x48000318 # b .L_802909D0
L_802906BC:
    li 0, 0x1
    stb 0, 0xcf0(27)
    .4byte 0x4800030C # b .L_802909D0
L_802906C8:
    li 3, 0x0
    .4byte 0x48000678 # b .L_80290D44
L_802906D0:
    cmpwi 31, 0x6
    .4byte 0x4182001C # beq .L_802906F0
    cmpwi 31, 0xb
    .4byte 0x41820014 # beq .L_802906F0
    cmpwi 31, 0x14
    .4byte 0x4182000C # beq .L_802906F0
    cmpwi 31, 0x1f
    .4byte 0x4082006C # bne .L_80290758
L_802906F0:
    cmpwi 28, 0x8
    .4byte 0x41800034 # blt .L_80290728
    mr 3, 27
    li 4, 0x24
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80290720
    psq_l 1, 0x0(29), 0, 0
    lfs 0, 0x8(29)
    psq_st 1, 0x8(27), 0, 0
    stfs 0, 0x10(27)
    .4byte 0x480002B4 # b .L_802909D0
L_80290720:
    li 3, 0x0
    .4byte 0x48000620 # b .L_80290D44
L_80290728:
    mr 3, 27
    li 4, 0x22
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80290750
    psq_l 1, 0x0(29), 0, 0
    lfs 0, 0x8(29)
    psq_st 1, 0x8(27), 0, 0
    stfs 0, 0x10(27)
    .4byte 0x48000284 # b .L_802909D0
L_80290750:
    li 3, 0x0
    .4byte 0x480005F0 # b .L_80290D44
L_80290758:
    cmpwi 31, 0xe
    .4byte 0x4182000C # beq .L_80290768
    cmpwi 31, 0x25
    .4byte 0x40820034 # bne .L_80290798
L_80290768:
    mr 3, 27
    li 4, 0x26
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80290790
    psq_l 1, 0x0(29), 0, 0
    lfs 0, 0x8(29)
    psq_st 1, 0x8(27), 0, 0
    stfs 0, 0x10(27)
    .4byte 0x48000244 # b .L_802909D0
L_80290790:
    li 3, 0x0
    .4byte 0x480005B0 # b .L_80290D44
L_80290798:
    cmpwi 31, 0xf
    .4byte 0x40820020 # bne .L_802907BC
    mr 3, 27
    li 4, 0x28
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x40820220 # bne .L_802909D0
    li 3, 0x0
    .4byte 0x4800058C # b .L_80290D44
L_802907BC:
    cmpwi 31, 0x27
    .4byte 0x40820020 # bne .L_802907E0
    mr 3, 27
    li 4, 0x30
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x408201FC # bne .L_802909D0
    li 3, 0x0
    .4byte 0x48000568 # b .L_80290D44
L_802907E0:
    cmpwi 31, 0xa
    .4byte 0x40820078 # bne .L_8029085C
    lwz 0, 0x3b4(27)
    cmpwi 0, 0x8
    .4byte 0x40820064 # bne .L_80290854
    mr 3, 27
    li 4, 0x2a
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8029084C
    lbz 0, 0xcf0(27)
    mr 4, 28
    addi 3, 1, 0x38
    stb 0, 0xcf1(27)
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x41820014 # beq .L_80290834
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80290834
    cmplwi 0, 0x21
    .4byte 0x40820010 # bne .L_80290840
L_80290834:
    li 0, 0x0
    stb 0, 0xcf0(27)
    .4byte 0x48000194 # b .L_802909D0
L_80290840:
    li 0, 0x1
    stb 0, 0xcf0(27)
    .4byte 0x48000188 # b .L_802909D0
L_8029084C:
    li 3, 0x0
    .4byte 0x480004F4 # b .L_80290D44
L_80290854:
    li 3, 0x0
    .4byte 0x480004EC # b .L_80290D44
L_8029085C:
    cmpwi 31, 0x11
    .4byte 0x4082001C # bne .L_8029087C
    mr 3, 27
    bl fn_80240818
    clrlwi. 0, 3, 24
    .4byte 0x40820160 # bne .L_802909D0
    li 3, 0x0
    .4byte 0x480004CC # b .L_80290D44
L_8029087C:
    cmpwi 31, 0x13
    .4byte 0x4182000C # beq .L_8029088C
    cmpwi 31, 0x16
    .4byte 0x40820038 # bne .L_802908C0
L_8029088C:
    lwz 0, 0x1240(27)
    cmpwi 0, 0x4d
    .4byte 0x40820010 # bne .L_802908A4
    lwz 0, 0x1244(27)
    cmpwi 0, 0x4d
    .4byte 0x41820130 # beq .L_802909D0
L_802908A4:
    mr 3, 27
    li 4, 0x4d
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4082011C # bne .L_802909D0
    li 3, 0x0
    .4byte 0x48000488 # b .L_80290D44
L_802908C0:
    cmpwi 31, 0x17
    .4byte 0x4182000C # beq .L_802908D0
    cmpwi 31, 0x18
    .4byte 0x4082004C # bne .L_80290918
L_802908D0:
    mr 3, 27
    li 4, 0x1c
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80290910
    .4byte 0xC042D614 # lfs f2, lbl_805405B4@sda21(r0)
    mr 3, 27
    lfs 1, 0x4(29)
    addi 4, 1, 0x2c
    stfs 2, 0x2c(1)
    lfs 0, 0xc(27)
    fsubs 0, 1, 0
    stfs 2, 0x34(1)
    stfs 0, 0x30(1)
    bl fn_80252BAC
    .4byte 0x480000C4 # b .L_802909D0
L_80290910:
    li 3, 0x0
    .4byte 0x48000430 # b .L_80290D44
L_80290918:
    cmpwi 31, 0x1d
    .4byte 0x40820034 # bne .L_80290950
    mr 3, 27
    li 4, 0x2c
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80290948
    psq_l 1, 0x0(29), 0, 0
    lfs 0, 0x8(29)
    psq_st 1, 0x8(27), 0, 0
    stfs 0, 0x10(27)
    .4byte 0x4800008C # b .L_802909D0
L_80290948:
    li 3, 0x0
    .4byte 0x480003F8 # b .L_80290D44
L_80290950:
    cmpwi 31, 0x1e
    .4byte 0x40820034 # bne .L_80290988
    mr 3, 27
    li 4, 0x2e
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80290980
    psq_l 1, 0x0(29), 0, 0
    lfs 0, 0x8(29)
    psq_st 1, 0x8(27), 0, 0
    stfs 0, 0x10(27)
    .4byte 0x48000054 # b .L_802909D0
L_80290980:
    li 3, 0x0
    .4byte 0x480003C0 # b .L_80290D44
L_80290988:
    mr 3, 27
    li 4, 0x1c
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_802909C8
    lfs 2, 0x0(29)
    mr 3, 27
    lfs 1, 0x8(27)
    addi 4, 1, 0x20
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    fsubs 1, 2, 1
    stfs 0, 0x24(1)
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
    bl fn_80252BAC
    .4byte 0x4800000C # b .L_802909D0
L_802909C8:
    li 3, 0x0
    .4byte 0x48000378 # b .L_80290D44
L_802909D0:
    cmpwi 31, 0x12
    .4byte 0x40820038 # bne .L_80290A0C
    mr 3, 27
    bl Player_GetLinkTargetIndex
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 4, 27, 0xcd4
    lfs 0, 0x8(3)
    mr 3, 27
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0xcdc(27)
    bl Player_GetLinkTargetIndex
    bl fn_8023DE58
    stw 3, 0xce4(27)
    .4byte 0x4800001C # b .L_80290A24
L_80290A0C:
    psq_l 1, 0x38(1), 0, 0
    addi 3, 27, 0xcd4
    lfs 0, 0x40(1)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcdc(27)
    stw 28, 0xce4(27)
L_80290A24:
    stw 31, 0xcf4(27)
    addi 3, 27, 0xcc8
    li 0, 0x1
    psq_l 1, 0x8(27), 0, 0
    lfs 0, 0x10(27)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcd0(27)
    lwz 3, 0x3b4(27)
    stw 3, 0xce0(27)
    stb 0, 0xce8(27)
    lwz 0, 0xce4(27)
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_80290A60
    li 0, 0x0
    stb 0, 0xcf2(27)
L_80290A60:
    mr 3, 27
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80290A78
    lwz 3, 0x4(27)
    bl fn_8022D36C
L_80290A78:
    mr 3, 27
    bl fn_8025F590
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80290AB8
    lwz 0, 0x3b4(27)
    cmpwi 0, 0x8
    .4byte 0x40820028 # bne .L_80290AB8
    lwz 3, 0xd70(27)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800018 # bge .L_80290AB8
    mr 3, 27
    bl fn_8025F55C
    bl fn_8023105C
    mr 3, 27
    bl fn_8025FF70
L_80290AB8:
    lwz 4, 0xce4(27)
    cmpwi 4, 0x8
    .4byte 0x4180006C # blt .L_80290B2C
    lwz 0, 0x3b4(27)
    cmpw 4, 0
    .4byte 0x41820060 # beq .L_80290B2C
    lwz 3, 0x4(27)
    bl fn_803049F0
    lwz 3, 0x4(27)
    lwz 4, 0xce4(27)
    bl fn_80304B00
    mr 3, 27
    bl fn_8025F590
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80290B2C
    mr 3, 27
    bl fn_8025FCC8
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_80290B2C
    lwz 3, 0xd70(27)
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80290B2C
    lwz 3, 0xd70(27)
    lwz 4, 0xce4(27)
    bl fn_803049F0
    lwz 3, 0xd70(27)
    lwz 4, 0xce4(27)
    bl fn_80304B00
L_80290B2C:
    mr 3, 27
    li 31, -0x1
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820130 # bne .L_80290C6C
    lwz 3, 0xcf4(27)
    cmpwi 3, 0xc
    .4byte 0x41820124 # beq .L_80290C6C
    cmpwi 3, 0xd
    .4byte 0x4182011C # beq .L_80290C6C
    cmpwi 3, 0x26
    .4byte 0x41820114 # beq .L_80290C6C
    cmpwi 3, 0x22
    .4byte 0x4182010C # beq .L_80290C6C
    cmpwi 3, 0x4
    .4byte 0x41820020 # beq .L_80290B88
    subi 0, 3, 0x7
    cmplwi 0, 0x2
    .4byte 0x40810014 # ble .L_80290B88
    cmpwi 3, 0x20
    .4byte 0x4182000C # beq .L_80290B88
    cmpwi 3, 0x24
    .4byte 0x40820068 # bne .L_80290BEC
L_80290B88:
    lwz 28, 0x3b4(27)
    cmpwi 28, 0x8
    .4byte 0x4081005C # ble .L_80290BEC
    lwz 0, 0xce4(27)
    cmpwi 0, 0x8
    .4byte 0x40810050 # ble .L_80290BEC
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80290BEC
    lwz 28, 0xce4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80290BEC
    lwz 3, 0xce4(27)
    lwz 0, 0x3b4(27)
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_80290BEC
    li 31, 0x0
    .4byte 0x48000084 # b .L_80290C6C
L_80290BEC:
    lwz 3, 0xcf4(27)
    cmpwi 3, 0x1e
    .4byte 0x4082000C # bne .L_80290C00
    li 31, 0x2
    .4byte 0x48000070 # b .L_80290C6C
L_80290C00:
    cmpwi 3, 0xf
    .4byte 0x4082000C # bne .L_80290C10
    li 31, 0x2
    .4byte 0x48000060 # b .L_80290C6C
L_80290C10:
    cmpwi 3, 0x27
    .4byte 0x4082000C # bne .L_80290C20
    li 31, 0x1
    .4byte 0x48000050 # b .L_80290C6C
L_80290C20:
    cmpwi 3, 0x6
    .4byte 0x4182000C # beq .L_80290C30
    cmpwi 3, 0xb
    .4byte 0x40820018 # bne .L_80290C44
L_80290C30:
    lwz 0, 0xce0(27)
    cmpwi 0, 0x8
    .4byte 0x4081000C # ble .L_80290C44
    li 31, 0x2
    .4byte 0x4800002C # b .L_80290C6C
L_80290C44:
    cmpwi 3, 0x13
    .4byte 0x4182000C # beq .L_80290C54
    cmpwi 3, 0x16
    .4byte 0x40820018 # bne .L_80290C68
L_80290C54:
    lwz 0, 0xce4(27)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_80290C6C
    li 31, 0x0
    .4byte 0x48000008 # b .L_80290C6C
L_80290C68:
    li 31, 0x1
L_80290C6C:
    cmpwi 31, 0x0
    .4byte 0x41800018 # blt .L_80290C88
    lwz 3, 0x4(27)
    clrlwi 6, 31, 24
    lwz 4, 0xce0(27)
    lwz 5, 0xce4(27)
    bl fn_803020C8
L_80290C88:
    mr 3, 27
    bl fn_8025F590
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_80290CF8
    lwz 3, 0xd70(27)
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_80290CF8
    mr 3, 27
    bl fn_8025FCC8
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80290CD4
    cmpwi 31, 0x0
    .4byte 0x41800018 # blt .L_80290CD4
    lwz 3, 0xd70(27)
    clrlwi 6, 31, 24
    lwz 4, 0xce0(27)
    lwz 5, 0xce4(27)
    bl fn_803020C8
L_80290CD4:
    lwz 0, 0xce0(27)
    cmpwi 0, 0x8
    .4byte 0x4180001C # blt .L_80290CF8
    lwz 0, 0xce4(27)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_80290CF8
    lwz 3, 0xd70(27)
    li 4, 0x0
    bl fn_80230E1C
L_80290CF8:
    lwz 3, 0xbf0(27)
    li 4, 0x0
    stw 4, 0xbc(3)
    stb 4, 0x1216(27)
    lwz 0, 0x1244(27)
    cmpwi 0, 0x1c
    .4byte 0x4182000C # beq .L_80290D1C
    stw 4, 0x48c(27)
    stw 4, 0xbc0(27)
L_80290D1C:
    lwz 0, 0xcf4(27)
    cmpwi 0, 0x1f
    .4byte 0x40820014 # bne .L_80290D38
    mr 3, 27
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
L_80290D38:
    mr 3, 27
    bl fn_80248FF0
    li 3, 0x1
L_80290D44:
    lmw 27, 0x4c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80290D58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 5, 31, 0xcc8
    lwz 4, 0xce0(3)
    bl fn_80241E28
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_80290DA8
    psq_l 1, 0x8(31), 0, 0
    addi 4, 31, 0xcbc
    lfs 0, 0x10(31)
    addi 3, 31, 0xd1c
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0xcc4(31)
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0xcc4(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xd24(31)
L_80290DA8:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x14
    .4byte 0x40820020 # bne .L_80290DD0
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x41800014 # blt .L_80290DD0
    li 3, 0x258
    li 0, 0x1
    stw 3, 0xbd8(31)
    stb 0, 0xbdc(31)
L_80290DD0:
    mr 3, 31
    bl fn_80240D64
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80290DE8
    li 0, 0x5
    stw 0, 0x11f0(31)
L_80290DE8:
    li 7, 0x0
    li 5, 0x29
    stb 7, 0xce8(31)
    li 0, 0x3c
    mr 3, 31
    li 4, 0x1
    lwz 6, 0xcf4(31)
    stw 6, 0xcf8(31)
    stw 5, 0xcf4(31)
    stw 0, 0x468(31)
    stb 7, 0xced(31)
    bl Player_SetField_0xc80
    li 0, 0x0
    mr 3, 31
    stb 0, 0x1216(31)
    bl fn_8024BAEC
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x41820024 # beq .L_80290E64
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x41820014 # beq .L_80290E64
    mr 3, 31
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
L_80290E64:
    mr 3, 31
    bl fn_80248604
    li 0, 0x0
    stb 0, 0xceb(31)
    stb 0, 0x400(31)
    stb 0, 0xcec(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80290E90:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80290EB8
    lwz 3, 0x4(31)
    bl fn_80301D54
L_80290EB8:
    li 0, 0x0
    stb 0, 0x400(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_80290F0C
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_80290F0C
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80290EFC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_8045815C
    .4byte 0x48000014 # b .L_80290F0C
L_80290EFC:
    .4byte 0x40820010 # bne .L_80290F0C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_8045815C
L_80290F0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80290F20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 5, 0x132c(3)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80290F5C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x132c(31)
L_80290F5C:
    lwz 5, 0x135c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80290F84
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x135c(31)
L_80290F84:
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x4182001C # beq .L_80290FAC
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80290FAC
    lwz 3, 0x4(31)
    bl fn_80238244
L_80290FAC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80290FC0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    mr 31, 3
    lbz 0, 0x3fc(3)
    cmplwi 0, 0x28
    .4byte 0x408201F4 # bne .L_802911D8
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xc
    .4byte 0x40820064 # bne .L_80291054
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_80291054
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000188 # b .L_802911D8
L_80291054:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xd
    .4byte 0x4082017C # bne .L_802911D8
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x4(31)
    cmpwi 0, 0x2
    .4byte 0x4182007C # beq .L_80291134
    .4byte 0x40800014 # bge .L_802910D0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802910DC
    .4byte 0x40800040 # bge .L_80291108
    .4byte 0x480000BC # b .L_80291188
L_802910D0:
    cmpwi 0, 0x4
    .4byte 0x408000B4 # bge .L_80291188
    .4byte 0x48000088 # b .L_80291160
L_802910DC:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x16b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000084 # b .L_80291188
L_80291108:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x16d
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000058 # b .L_80291188
L_80291134:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x16a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80291188
L_80291160:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x16c
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80291188:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x16e
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x16f
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802911D8:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xd
    .4byte 0x408200B8 # bne .L_80291298
    lbz 3, 0x3fc(31)
    cmplwi 3, 0x82
    .4byte 0x40800010 # bge .L_802911FC
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    .4byte 0x48000648 # b .L_80291840
L_802911FC:
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80291220
    mr 3, 31
    addi 5, 31, 0x8
    li 4, 0x2
    li 6, 0x11
    bl fn_80272160
L_80291220:
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80291240
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_80237774
    .4byte 0x4800000C # b .L_80291248
L_80291240:
    mr 3, 31
    bl fn_8024189C
L_80291248:
    cmpwi 3, 0x0
    li 4, 0x0
    .4byte 0x41810008 # bgt .L_80291258
    li 4, 0x33
L_80291258:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x418205D4 # beq .L_80291840
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x3b4(31)
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0xcdc(31)
    psq_st 2, 0x8(31), 0, 0
    stfs 1, 0x10(31)
    stfs 0, 0x10(31)
    .4byte 0x480005AC # b .L_80291840
L_80291298:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3a
    .4byte 0x41800598 # blt .L_80291838
    lbz 0, 0x3fb(31)
    cmplwi 0, 0x0
    .4byte 0x408202E4 # bne .L_80291590
    lis 4, 0x1
    mr 3, 31
    addi 4, 4, 0xa
    bl fn_8024F0E8
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xc
    .4byte 0x40820020 # bne .L_802912E8
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802912E8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x31
    bl fn_8024F0E8
L_802912E8:
    li 0, 0x1
    stb 0, 0x3fb(31)
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xc
    .4byte 0x40820104 # bne .L_802913FC
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_802913FC
    lwz 0, 0x135c(31)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_802913FC
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x41820084 # beq .L_802913A0
    .4byte 0x40800014 # bge .L_80291334
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80291340
    .4byte 0x40800044 # bge .L_80291370
    .4byte 0x480000CC # b .L_802913FC
L_80291334:
    cmpwi 0, 0x4
    .4byte 0x408000C4 # bge .L_802913FC
    .4byte 0x48000094 # b .L_802913D0
L_80291340:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x248
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x135c(31)
    .4byte 0x48000090 # b .L_802913FC
L_80291370:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x247
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x135c(31)
    .4byte 0x48000060 # b .L_802913FC
L_802913A0:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x246
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x135c(31)
    .4byte 0x48000030 # b .L_802913FC
L_802913D0:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x249
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x135c(31)
L_802913FC:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xc
    .4byte 0x40820104 # bne .L_80291508
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_80291508
    lwz 0, 0x132c(31)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_80291508
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x41820084 # beq .L_802914AC
    .4byte 0x40800014 # bge .L_80291440
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8029144C
    .4byte 0x40800044 # bge .L_8029147C
    .4byte 0x480000CC # b .L_80291508
L_80291440:
    cmpwi 0, 0x4
    .4byte 0x408000C4 # bge .L_80291508
    .4byte 0x48000094 # b .L_802914DC
L_8029144C:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    addi 9, 31, 0x1330
    li 5, 0x244
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x132c(31)
    .4byte 0x48000090 # b .L_80291508
L_8029147C:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    addi 9, 31, 0x1330
    li 5, 0x243
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x132c(31)
    .4byte 0x48000060 # b .L_80291508
L_802914AC:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    addi 9, 31, 0x1330
    li 5, 0x242
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x132c(31)
    .4byte 0x48000030 # b .L_80291508
L_802914DC:
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    addi 9, 31, 0x1330
    li 5, 0x245
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x132c(31)
L_80291508:
    addi 3, 31, 0xcd4
    psq_l 2, 0x10(31), 1, 0
    lfs 0, 0xcdc(31)
    psq_l 1, 0x0(3), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x8(31), 0, 0
    psq_l 0, 0x10(1), 1, 0
    ps_sub 3, 1, 3
    .4byte 0xC3E2D664 # lfs f31, lbl_80540604@sda21(r0)
    ps_sub 2, 0, 2
    psq_st 1, 0x8(1), 0, 0
    .4byte 0xC002D668 # lfs f0, lbl_80540608@sda21(r0)
    ps_muls0 6, 3, 31
    psq_st 2, 0x10(1), 1, 0
    lfs 4, 0x10(1)
    psq_st 6, 0x38(1), 0, 0
    stfs 4, 0x1c(1)
    lfs 1, 0x38(1)
    psq_l 2, 0x1c(1), 1, 0
    psq_st 3, 0x14(1), 0, 0
    ps_muls0 5, 2, 31
    lfs 2, 0x3c(1)
    stfs 1, 0x344(31)
    psq_st 5, 0x1c(1), 1, 0
    lfs 1, 0x1c(1)
    stfs 2, 0x348(31)
    psq_st 3, 0x8(1), 0, 0
    psq_st 3, 0x20(1), 0, 0
    stfs 4, 0x28(1)
    psq_st 6, 0x14(1), 0, 0
    psq_st 6, 0x2c(1), 0, 0
    stfs 1, 0x34(1)
    stfs 1, 0x40(1)
    stfs 0, 0x34c(31)
L_80291590:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3e
    .4byte 0x40800010 # bge .L_802915A8
    li 0, 0x0
    stb 0, 0x3fd(31)
    .4byte 0x4800003C # b .L_802915E0
L_802915A8:
    cmplwi 0, 0x42
    .4byte 0x40800010 # bge .L_802915BC
    li 0, 0x1
    stb 0, 0x3fd(31)
    .4byte 0x48000028 # b .L_802915E0
L_802915BC:
    cmplwi 0, 0x46
    .4byte 0x40800010 # bge .L_802915D0
    li 0, 0x2
    stb 0, 0x3fd(31)
    .4byte 0x48000014 # b .L_802915E0
L_802915D0:
    cmplwi 0, 0x4a
    .4byte 0x4080000C # bge .L_802915E0
    li 0, 0x3
    stb 0, 0x3fd(31)
L_802915E0:
    lbz 3, 0x3fc(31)
    .4byte 0xC002D66C # lfs f0, lbl_8054060C@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    stb 0, 0x3fc(31)
    psq_l 3, 0x8(31), 0, 0
    psq_l 2, 0x344(31), 0, 0
    ps_add 2, 3, 2
    psq_st 2, 0x8(31), 0, 0
    psq_l 3, 0x10(31), 1, 0
    psq_l 2, 0x34c(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x10(31), 1, 0
    lfs 2, 0x34c(31)
    fsubs 0, 2, 0
    stfs 0, 0x34c(31)
    lfs 0, 0x34c(31)
    fcmpo cr0, 0, 1
    .4byte 0x408000E4 # bge .L_8029170C
    lfs 0, 0x10(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408200D4 # bne .L_8029170C
    stfs 1, 0x10(31)
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_80291684
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xc
    .4byte 0x41820014 # beq .L_8029166C
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_8029166C
    cmpwi 0, 0x26
    .4byte 0x4082001C # bne .L_80291684
L_8029166C:
    mr 3, 31
    addi 5, 31, 0x8
    li 4, 0x2
    li 6, 0x11
    bl fn_80272160
    .4byte 0x48000018 # b .L_80291698
L_80291684:
    mr 3, 31
    addi 5, 31, 0x8
    li 4, 0x0
    li 6, 0x11
    bl fn_80272160
L_80291698:
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802916B8
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_80237774
    .4byte 0x4800000C # b .L_802916C0
L_802916B8:
    mr 3, 31
    bl fn_8024189C
L_802916C0:
    cmpwi 3, 0x0
    li 4, 0x0
    .4byte 0x41810008 # bgt .L_802916D0
    li 4, 0x33
L_802916D0:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8029170C
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x3b4(31)
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0xcdc(31)
    psq_st 2, 0x8(31), 0, 0
    stfs 1, 0x10(31)
    stfs 0, 0x10(31)
L_8029170C:
    lwz 3, 0x135c(31)
    cmplwi 3, 0x0
    .4byte 0x41820080 # beq .L_80291794
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x41820034 # beq .L_80291754
    .4byte 0x40800010 # bge .L_80291734
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_8029173C
    .4byte 0x48000038 # b .L_80291768
L_80291734:
    cmpwi 0, 0x4
    .4byte 0x40800030 # bge .L_80291768
L_8029173C:
    addi 4, 31, 0x8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x48000018 # b .L_80291768
L_80291754:
    addi 4, 31, 0x8
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_80291768:
    lwz 0, 0x3dc(31)
    lis 3, lbl_8046C228@ha
    addi 5, 3, lbl_8046C228@l
    lwz 4, 0x135c(31)
    slwi 0, 0, 2
    li 3, 0x0
    lwzx 0, 5, 0
    addi 6, 4, 0x68
    li 5, 0x0
    extsh 4, 0
    bl fn_800EF008
L_80291794:
    lwz 0, 0x132c(31)
    cmplwi 0, 0x0
    .4byte 0x418200A4 # beq .L_80291840
    lfs 0, 0x8(31)
    stfs 0, 0x1344(31)
    lfs 0, 0xc(31)
    stfs 0, 0x1348(31)
    lfs 0, 0x10(31)
    stfs 0, 0x134c(31)
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_802917D8
    lfs 1, 0x1348(31)
    .4byte 0xC002D670 # lfs f0, lbl_80540610@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x1348(31)
    .4byte 0x4800001C # b .L_802917F0
L_802917D8:
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_802917F0
    lfs 1, 0x1348(31)
    .4byte 0xC002D670 # lfs f0, lbl_80540610@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x1348(31)
L_802917F0:
    lfs 0, 0x1344(31)
    lis 3, lbl_8046C228@ha
    addi 6, 3, lbl_8046C228@l
    li 5, 0x0
    stfs 0, 0x1334(31)
    li 3, 0x0
    lfs 0, 0x1348(31)
    stfs 0, 0x1338(31)
    lfs 0, 0x134c(31)
    stfs 0, 0x133c(31)
    lwz 0, 0x3dc(31)
    lwz 4, 0x132c(31)
    slwi 0, 0, 2
    lwzx 0, 6, 0
    addi 6, 4, 0x68
    extsh 4, 0
    bl fn_800EF008
    .4byte 0x4800000C # b .L_80291840
L_80291838:
    mr 3, 31
    bl fn_8027EDDC
L_80291840:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8029185C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x1
    stw 0, 0x14(1)
    li 0, 0x1
    addi 4, 4, 0x3
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x124d(3)
    li 0, 0x0
    stb 0, 0x458(3)
    bl fn_8024F0E8
    lwz 0, 0xcf4(31)
    cmpwi 0, 0xd
    .4byte 0x40820020 # bne .L_802918B4
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x67
    bl fn_8024F0E8
    li 0, 0x28
    stb 0, 0x3fc(31)
    .4byte 0x48000014 # b .L_802918C4
L_802918B4:
    cmpwi 0, 0x26
    .4byte 0x4082000C # bne .L_802918C4
    li 0, 0x3a
    stb 0, 0x3fc(31)
L_802918C4:
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x41820024 # beq .L_802918F4
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x41820014 # beq .L_802918F4
    mr 3, 31
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
L_802918F4:
    mr 3, 31
    bl fn_8024BAEC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80291910:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 3, 0x3fc(3)
    cmplwi 3, 0x3c
    .4byte 0x4080000C # bge .L_80291938
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_80291938:
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80291968
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80291968
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x408201EC # bne .L_80291B50
L_80291968:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x418001E0 # blt .L_80291B50
    .4byte 0x408200A4 # bne .L_80291A18
    lwz 0, 0xce0(31)
    cmpwi 0, 0x8
    .4byte 0x4082006C # bne .L_802919EC
    lfs 0, 0x8(31)
    addi 4, 1, 0x8
    .4byte 0xC042D674 # lfs f2, lbl_80540614@sda21(r0)
    li 5, 0x17d
    stfs 0, 0x8(1)
    li 6, 0x1
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    li 7, 0x0
    lfs 3, 0xc(31)
    li 8, 0x0
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 9, 0x0
    stfs 3, 0xc(1)
    fadds 2, 3, 2
    li 10, 0x1
    lfs 3, 0x10(31)
    fadds 0, 3, 0
    stfs 3, 0x10(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x3b4(31)
    bl fn_8013CC50
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x20
    bl fn_8024F0E8
L_802919EC:
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x2f
    bl fn_8024F0E8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x21
    bl fn_8024F0E8
    mr 3, 31
    li 4, 0x1
    bl Player_SetField_0xc80
L_80291A18:
    psq_l 2, 0x8(31), 0, 0
    psq_l 0, 0x344(31), 0, 0
    .4byte 0xC022D66C # lfs f1, lbl_8054060C@sda21(r0)
    ps_add 2, 2, 0
    .4byte 0xC002D678 # lfs f0, lbl_80540618@sda21(r0)
    psq_st 2, 0x8(31), 0, 0
    psq_l 3, 0x10(31), 1, 0
    psq_l 2, 0x34c(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x10(31), 1, 0
    lfs 2, 0x34c(31)
    fsubs 1, 2, 1
    stfs 1, 0x34c(31)
    lfs 1, 0x34c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80291A5C
    stfs 0, 0x34c(31)
L_80291A5C:
    lfs 0, 0x34c(31)
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40800084 # bge .L_80291AEC
    lfs 0, 0x10(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820074 # bne .L_80291AEC
    stfs 1, 0x10(31)
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_8024189C
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_80291AA8
    mr 3, 31
    li 4, 0x33
    bl fn_80251AEC
    .4byte 0x4800002C # b .L_80291AD0
L_80291AA8:
    lbz 0, 0xcf0(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80291AC4
    mr 3, 31
    li 4, 0x3e
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_80291AD0
L_80291AC4:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_80291AD0:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820078 # bne .L_80291B50
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000068 # b .L_80291B50
L_80291AEC:
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    extrwi. 0, 0, 2, 28
    .4byte 0x40820014 # bne .L_80291B14
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000040 # b .L_80291B50
L_80291B14:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80291B2C
    li 0, 0x1
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000028 # b .L_80291B50
L_80291B2C:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_80291B44
    li 0, 0x3
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000010 # b .L_80291B50
L_80291B44:
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_80291B50:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80291B64:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    stb 0, 0x458(3)
    .4byte 0xC002D67C # lfs f0, lbl_8054061C@sda21(r0)
    stfs 1, 0x344(3)
    stfs 1, 0x348(3)
    stfs 0, 0x34c(3)
    blr

fn_80291B8C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 3, 0x3fc(3)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x41800098 # blt .L_80291C4C
    lfs 2, 0x10(31)
    .4byte 0xC022D67C # lfs f1, lbl_8054061C@sda21(r0)
    .4byte 0xC002D680 # lfs f0, lbl_80540620@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810078 # ble .L_80291C4C
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80291BF4
    psq_l 0, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    psq_st 0, 0x0(3), 0, 0
    stfs 1, 0xcb8(31)
L_80291BF4:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x2b
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80291C4C
    mr 3, 31
    li 4, 0x0
    bl Player_SetField_0xc80
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x3b4(31)
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0xcdc(31)
    psq_st 2, 0x8(31), 0, 0
    stfs 1, 0x10(31)
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_80291C4C:
    lbz 0, 0x3fc(31)
    extrwi. 0, 0, 2, 28
    .4byte 0x40820014 # bne .L_80291C68
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000040 # b .L_80291CA4
L_80291C68:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80291C80
    li 0, 0x1
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000028 # b .L_80291CA4
L_80291C80:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_80291C98
    li 0, 0x3
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000010 # b .L_80291CA4
L_80291C98:
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_80291CA4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80291CB8:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x2
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x1
    addi 4, 4, 0x2e
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x124d(3)
    li 0, 0x0
    stfs 0, 0x10(3)
    stb 0, 0x458(3)
    bl fn_8024F0E8
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180001C # blt .L_80291D14
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_80291D14
    mr 3, 31
    li 4, 0x0
    bl fn_8024EFA0
L_80291D14:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80291D28:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x4(3)
    bl fn_80301CD0
    clrlwi. 0, 3, 24
    .4byte 0x408200E8 # bne .L_80291E30
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x408000B0 # bge .L_80291E04
    lwz 3, 0x430(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80291D6C
    subi 0, 3, 0x1
    stw 0, 0x430(31)
L_80291D6C:
    li 0, 0x3
    stb 0, 0x3fb(31)
    lwz 0, 0x430(31)
    cmpwi 0, 0x5a
    .4byte 0x4181005C # bgt .L_80291DD8
    .4byte 0x40820014 # bne .L_80291D94
    mr 3, 31
    li 4, 0x1
    bl Player_SetField_0xc80
    .4byte 0x48000048 # b .L_80291DD8
L_80291D94:
    cmpwi 0, 0x54
    .4byte 0x4081001C # ble .L_80291DB4
    subfic 3, 0, 0x5a
    srwi 0, 3, 31
    add 0, 0, 3
    srawi 0, 0, 1
    stb 0, 0x3f9(31)
    .4byte 0x48000028 # b .L_80291DD8
L_80291DB4:
    lis 3, 0x2aab
    subfic 0, 0, 0x54
    subi 3, 3, 0x5555
    mulhw 3, 3, 0
    srwi 0, 3, 31
    add 0, 3, 0
    clrlwi 3, 0, 30
    addi 0, 3, 0x3
    stb 0, 0x3f9(31)
L_80291DD8:
    lwz 0, 0x430(31)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_80291E30
    li 3, 0x0
    li 0, 0x5
    stb 3, 0x124d(31)
    mr 3, 31
    li 4, 0x4a
    stw 0, 0x44c(31)
    bl fn_80251AEC
    .4byte 0x48000030 # b .L_80291E30
L_80291E04:
    lbz 3, 0x3f8(31)
    cmplwi 3, 0x3c
    .4byte 0x40800010 # bge .L_80291E1C
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    .4byte 0x48000018 # b .L_80291E30
L_80291E1C:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x0
    bl fn_80251AEC
L_80291E30:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80291E44:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x124d(3)
    li 3, 0x0
    li 0, 0x2
    stb 3, 0x458(31)
    stb 3, 0x3f9(31)
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x4080007C # bge .L_80291EFC
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x15b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x15c
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x41
    bl fn_8024F0E8
    lis 4, 0x1
    mr 3, 31
    addi 4, 4, 0xf
    bl fn_8024F0E8
    li 0, 0x5c
    stw 0, 0x430(31)
L_80291EFC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80291F10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lbz 3, 0x3f8(3)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_80291F48
    cmplwi 0, 0x8
    .4byte 0x40820030 # bne .L_80291F74
L_80291F48:
    lwz 30, 0x4(31)
    bl SpatialRegistry_GetBase
    clrlwi 0, 30, 30
    lis 4, 0x5045
    lwz 5, 0x3b4(31)
    mr 9, 30
    addi 4, 4, 0x4646
    addi 6, 31, 0x8
    ori 7, 0, 0xc
    li 8, -0x1
    bl fn_801F9484
L_80291F74:
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x4
    .4byte 0x41810010 # bgt .L_80291F8C
    li 0, 0x0
    stb 0, 0x3f9(31)
    .4byte 0x48000104 # b .L_8029208C
L_80291F8C:
    cmplwi 0, 0x13
    .4byte 0x40800010 # bge .L_80291FA0
    li 0, 0x1
    stb 0, 0x3f9(31)
    .4byte 0x480000F0 # b .L_8029208C
L_80291FA0:
    cmplwi 0, 0x17
    .4byte 0x40800010 # bge .L_80291FB4
    li 0, 0x2
    stb 0, 0x3f9(31)
    .4byte 0x480000DC # b .L_8029208C
L_80291FB4:
    cmplwi 0, 0x1b
    .4byte 0x40800010 # bge .L_80291FC8
    li 0, 0x3
    stb 0, 0x3f9(31)
    .4byte 0x480000C8 # b .L_8029208C
L_80291FC8:
    cmplwi 0, 0x1f
    .4byte 0x40800010 # bge .L_80291FDC
    li 0, 0x4
    stb 0, 0x3f9(31)
    .4byte 0x480000B4 # b .L_8029208C
L_80291FDC:
    cmplwi 0, 0x23
    .4byte 0x40800010 # bge .L_80291FF0
    li 0, 0x5
    stb 0, 0x3f9(31)
    .4byte 0x480000A0 # b .L_8029208C
L_80291FF0:
    cmplwi 0, 0x27
    .4byte 0x40800010 # bge .L_80292004
    li 0, 0x2
    stb 0, 0x3f9(31)
    .4byte 0x4800008C # b .L_8029208C
L_80292004:
    cmplwi 0, 0x2b
    .4byte 0x40800010 # bge .L_80292018
    li 0, 0x3
    stb 0, 0x3f9(31)
    .4byte 0x48000078 # b .L_8029208C
L_80292018:
    cmplwi 0, 0x2f
    .4byte 0x40800010 # bge .L_8029202C
    li 0, 0x4
    stb 0, 0x3f9(31)
    .4byte 0x48000064 # b .L_8029208C
L_8029202C:
    cmplwi 0, 0x33
    .4byte 0x40800010 # bge .L_80292040
    li 0, 0x5
    stb 0, 0x3f9(31)
    .4byte 0x48000050 # b .L_8029208C
L_80292040:
    cmplwi 0, 0x37
    .4byte 0x40800010 # bge .L_80292054
    li 0, 0x2
    stb 0, 0x3f9(31)
    .4byte 0x4800003C # b .L_8029208C
L_80292054:
    cmplwi 0, 0x3b
    .4byte 0x40800010 # bge .L_80292068
    li 0, 0x3
    stb 0, 0x3f9(31)
    .4byte 0x48000028 # b .L_8029208C
L_80292068:
    cmplwi 0, 0x3f
    .4byte 0x40800010 # bge .L_8029207C
    li 0, 0x4
    stb 0, 0x3f9(31)
    .4byte 0x48000014 # b .L_8029208C
L_8029207C:
    cmplwi 0, 0x43
    .4byte 0x4080000C # bge .L_8029208C
    li 0, 0x5
    stb 0, 0x3f9(31)
L_8029208C:
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x43
    .4byte 0x4080001C # bge .L_802920B0
    lfs 1, 0xc(31)
    .4byte 0xC802D688 # lfd f0, lbl_80540628@sda21(r0)
    fsub 0, 1, 0
    frsp 0, 0
    stfs 0, 0xc(31)
    .4byte 0x48000060 # b .L_8029210C
L_802920B0:
    li 0, 0x43
    stb 0, 0x3f8(31)
    lwz 3, 0x4(31)
    bl fn_80301CD0
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8029210C
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x31
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8029210C
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_8029210C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80292124:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x124d(3)
    li 0, 0x3
    stb 4, 0x458(3)
    stw 0, 0x3dc(3)
    stw 0, 0x3e8(3)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_80292184
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180001C # blt .L_80292184
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_80292184
    mr 3, 31
    li 4, 0x0
    bl fn_8024EFA0
L_80292184:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80292198:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 3, 0x3f8(3)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x18
    .4byte 0x4180000C # blt .L_802921CC
    li 0, 0x0
    stb 0, 0x3f8(31)
L_802921CC:
    lis 3, 0x2aab
    lbz 0, 0x3f8(31)
    subi 3, 3, 0x5555
    mulhw 3, 3, 0
    srwi 0, 3, 31
    add 0, 3, 0
    stb 0, 0x3f9(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_80292200
    mr 3, 31
    li 4, 0x1
    bl Player_SetField_0xc80
L_80292200:
    lbz 3, 0x3fc(31)
    cmplwi 3, 0x3c
    .4byte 0x4080000C # bge .L_80292214
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_80292214:
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80292244
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80292244
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_802922BC
L_80292244:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x41800070 # blt .L_802922BC
    lbz 0, 0x3fb(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_802922AC
    lbz 3, 0x400(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80292274
    subi 0, 3, 0x1
    stb 0, 0x400(31)
    .4byte 0x4800004C # b .L_802922BC
L_80292274:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x4a
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_802922BC
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x41800024 # blt .L_802922BC
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
    .4byte 0x48000014 # b .L_802922BC
L_802922AC:
    li 3, 0x0
    li 0, 0x8
    stb 3, 0x3fb(31)
    stb 0, 0x400(31)
L_802922BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802922D0:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    stb 0, 0x458(3)
    stb 4, 0x3fb(3)
    stb 0, 0x3f9(3)
    blr

fn_802922EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 3, 0x3f8(3)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x7
    .4byte 0x40800010 # bge .L_80292324
    li 0, 0x4
    stb 0, 0x3f9(31)
    .4byte 0x4800008C # b .L_802923AC
L_80292324:
    cmplwi 0, 0xd
    .4byte 0x40800010 # bge .L_80292338
    li 0, 0x5
    stb 0, 0x3f9(31)
    .4byte 0x48000078 # b .L_802923AC
L_80292338:
    cmplwi 0, 0x13
    .4byte 0x40800010 # bge .L_8029234C
    li 0, 0x6
    stb 0, 0x3f9(31)
    .4byte 0x48000064 # b .L_802923AC
L_8029234C:
    cmplwi 0, 0x22
    .4byte 0x40800010 # bge .L_80292360
    li 0, 0x7
    stb 0, 0x3f9(31)
    .4byte 0x48000050 # b .L_802923AC
L_80292360:
    cmplwi 0, 0x28
    .4byte 0x40800010 # bge .L_80292374
    li 0, 0x4
    stb 0, 0x3f9(31)
    .4byte 0x4800003C # b .L_802923AC
L_80292374:
    cmplwi 0, 0x2e
    .4byte 0x40800010 # bge .L_80292388
    li 0, 0x5
    stb 0, 0x3f9(31)
    .4byte 0x48000028 # b .L_802923AC
L_80292388:
    cmplwi 0, 0x34
    .4byte 0x40800010 # bge .L_8029239C
    li 0, 0x6
    stb 0, 0x3f9(31)
    .4byte 0x48000014 # b .L_802923AC
L_8029239C:
    cmplwi 0, 0x43
    .4byte 0x4080000C # bge .L_802923AC
    li 0, 0x7
    stb 0, 0x3f9(31)
L_802923AC:
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x43
    .4byte 0x4080001C # bge .L_802923D0
    lfs 1, 0xc(31)
    .4byte 0xC802D690 # lfd f0, lbl_80540630@sda21(r0)
    fsub 0, 1, 0
    frsp 0, 0
    stfs 0, 0xc(31)
    .4byte 0x48000074 # b .L_80292440
L_802923D0:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x29
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_80292440
    mr 3, 31
    li 4, 0x0
    bl Player_SetField_0xc80
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80292418
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcb8(31)
L_80292418:
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_80292440:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80292454:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    li 0, 0x1
    stb 0, 0x124d(3)
    li 0, 0x3
    stb 4, 0x458(3)
    stw 0, 0x3dc(3)
    stw 0, 0x3e8(3)
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x41800018 # blt .L_8029249C
    lwz 0, 0xce4(3)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_8029249C
    li 4, 0x0
    bl fn_8024EFA0
L_8029249C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802924AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 3, 0x3f8(3)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x18
    .4byte 0x4180000C # blt .L_802924E0
    li 0, 0x0
    stb 0, 0x3f8(31)
L_802924E0:
    lis 3, 0x2aab
    lbz 0, 0x3f8(31)
    subi 3, 3, 0x5555
    mulhw 3, 3, 0
    srwi 0, 3, 31
    add 0, 3, 0
    stb 0, 0x3f9(31)
    lbz 3, 0x3fc(31)
    cmplwi 3, 0x3c
    .4byte 0x4080000C # bge .L_80292510
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_80292510:
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80292540
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80292540
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_802925B0
L_80292540:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x41800068 # blt .L_802925B0
    cmplwi 0, 0x5c
    .4byte 0x4180003C # blt .L_8029258C
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x4b
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802925B0
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x41800038 # blt .L_802925B0
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
    .4byte 0x48000028 # b .L_802925B0
L_8029258C:
    .4byte 0x40800024 # bge .L_802925B0
    lfs 1, 0xc(31)
    .4byte 0xC802D698 # lfd f0, lbl_80540638@sda21(r0)
    fadd 0, 1, 0
    frsp 0, 0
    stfs 0, 0xc(31)
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_802925B0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802925C4:
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x124d(3)
    li 0, 0x2
    stb 4, 0x458(3)
    stw 0, 0x3dc(3)
    stw 0, 0x3e8(3)
    blr

fn_802925E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x3f8(3)
    cmplwi 0, 0x8
    .4byte 0x40800010 # bge .L_80292610
    li 0, 0x0
    stb 0, 0x3f9(31)
    .4byte 0x48000184 # b .L_80292790
L_80292610:
    cmplwi 0, 0xe
    .4byte 0x40800010 # bge .L_80292624
    li 0, 0x1
    stb 0, 0x3f9(31)
    .4byte 0x48000170 # b .L_80292790
L_80292624:
    cmplwi 0, 0x14
    .4byte 0x40800010 # bge .L_80292638
    li 0, 0x2
    stb 0, 0x3f9(31)
    .4byte 0x4800015C # b .L_80292790
L_80292638:
    cmplwi 0, 0x1a
    .4byte 0x40800010 # bge .L_8029264C
    li 0, 0x3
    stb 0, 0x3f9(31)
    .4byte 0x48000148 # b .L_80292790
L_8029264C:
    cmplwi 0, 0x1e
    .4byte 0x40800010 # bge .L_80292660
    li 0, 0x4
    stb 0, 0x3f9(31)
    .4byte 0x48000134 # b .L_80292790
L_80292660:
    cmplwi 0, 0x22
    .4byte 0x40800010 # bge .L_80292674
    li 0, 0x5
    stb 0, 0x3f9(31)
    .4byte 0x48000120 # b .L_80292790
L_80292674:
    cmplwi 0, 0x26
    .4byte 0x40800010 # bge .L_80292688
    li 0, 0x6
    stb 0, 0x3f9(31)
    .4byte 0x4800010C # b .L_80292790
L_80292688:
    cmplwi 0, 0x2a
    .4byte 0x40800010 # bge .L_8029269C
    li 0, 0x7
    stb 0, 0x3f9(31)
    .4byte 0x480000F8 # b .L_80292790
L_8029269C:
    cmplwi 0, 0x2e
    .4byte 0x40800010 # bge .L_802926B0
    li 0, 0x8
    stb 0, 0x3f9(31)
    .4byte 0x480000E4 # b .L_80292790
L_802926B0:
    cmplwi 0, 0x30
    .4byte 0x40800010 # bge .L_802926C4
    li 0, 0x9
    stb 0, 0x3f9(31)
    .4byte 0x480000D0 # b .L_80292790
L_802926C4:
    cmplwi 0, 0x32
    .4byte 0x40800010 # bge .L_802926D8
    li 0, 0xa
    stb 0, 0x3f9(31)
    .4byte 0x480000BC # b .L_80292790
L_802926D8:
    li 4, 0xb
    li 0, 0x0
    stb 4, 0x3f9(31)
    li 4, 0x27
    stb 0, 0x124d(31)
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_80292790
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x15b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x15c
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80292768
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcb8(31)
L_80292768:
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_80292790:
    lbz 3, 0x3f8(31)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802927B0:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x2
    stw 0, 0x14(1)
    li 0, 0x1
    addi 4, 4, 0x60
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x124d(3)
    li 0, 0x0
    stb 0, 0x458(3)
    stb 0, 0x3fb(3)
    bl fn_8024F0E8
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x547
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80292820:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 3, 0x3fc(3)
    cmplwi 3, 0x3c
    .4byte 0x4080000C # bge .L_80292848
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_80292848:
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80292878
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80292878
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820094 # bne .L_80292908
L_80292878:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x41800088 # blt .L_80292908
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_8024189C
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_802928AC
    mr 3, 31
    li 4, 0x33
    bl fn_80251AEC
    .4byte 0x4800004C # b .L_802928F4
L_802928AC:
    lbz 0, 0xcf0(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802928C8
    mr 3, 31
    li 4, 0x3e
    bl fn_80251AEC
    .4byte 0x48000030 # b .L_802928F4
L_802928C8:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802928E8
    mr 3, 31
    li 4, 0x12
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_802928F4
L_802928E8:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_802928F4:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80292908
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
L_80292908:
    lfs 1, 0x8(31)
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    stfs 1, 0x2f4(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2f8(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2fc(31)
    lfs 1, 0x2fc(31)
    fadds 0, 1, 0
    stfs 0, 0x2fc(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80292944:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl Player_SetField_0xc80
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x124d(30)
    mr 3, 30
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    stb 0, 0x458(30)
    lfs 1, 0x8(30)
    stfs 1, 0x2f4(30)
    lfs 1, 0xc(30)
    stfs 1, 0x2f8(30)
    lfs 1, 0x10(30)
    stfs 1, 0x2fc(30)
    lfs 1, 0x2fc(30)
    fadds 0, 1, 0
    stfs 0, 0x2fc(30)
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_802929E4
    lwz 31, 0xd68(30)
    cmpwi 31, 0x0
    .4byte 0x41800030 # blt .L_802929E4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr 31, 3
    bl GetRoomConfigRecord
    cmplwi 31, 0x0
    .4byte 0x41820014 # beq .L_802929E4
    lwz 4, 0x3b4(30)
    mr 3, 31
    addi 5, 30, 0x2f4
    bl fn_801F349C
L_802929E4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802929FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_80292A4C
    psq_l 1, 0x8(31), 0, 0
    addi 4, 1, 0x8
    lfs 2, 0x10(31)
    .4byte 0xC002D6A0 # lfs f0, lbl_80540640@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80292A4C:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x40820388 # bne .L_80292DDC
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x1e
    .4byte 0x41820364 # beq .L_80292DC4
    cmpwi 0, 0x1f
    .4byte 0x4182035C # beq .L_80292DC4
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x546
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x4(31)
    cmpwi 0, 0x2
    .4byte 0x41820194 # beq .L_80292C30
    .4byte 0x40800014 # bge .L_80292AB4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80292AC0
    .4byte 0x408000CC # bge .L_80292B78
    .4byte 0x480002EC # b .L_80292D9C
L_80292AB4:
    cmpwi 0, 0x4
    .4byte 0x408002E4 # bge .L_80292D9C
    .4byte 0x4800022C # b .L_80292CE8
L_80292AC0:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x14e
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x14f
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_80241544
    cmpwi 3, 0x2
    .4byte 0x41800030 # blt .L_80292B4C
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x151
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000254 # b .L_80292D9C
L_80292B4C:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x150
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000228 # b .L_80292D9C
L_80292B78:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x157
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x158
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_80241544
    cmpwi 3, 0x2
    .4byte 0x41800030 # blt .L_80292C04
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x15a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800019C # b .L_80292D9C
L_80292C04:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x159
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000170 # b .L_80292D9C
L_80292C30:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x14a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x14b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_80241544
    cmpwi 3, 0x2
    .4byte 0x41800030 # blt .L_80292CBC
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x14d
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000E4 # b .L_80292D9C
L_80292CBC:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x14c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000B8 # b .L_80292D9C
L_80292CE8:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x153
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x154
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_80241544
    cmpwi 3, 0x2
    .4byte 0x41800030 # blt .L_80292D74
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x156
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80292D9C
L_80292D74:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x155
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80292D9C:
    lwz 3, 0xce0(31)
    addi 4, 31, 0xcc8
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x152
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80292DC4:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x3fd(31)
    li 4, 0x0
    bl Player_SetField_0xc80
    .4byte 0x48000070 # b .L_80292E48
L_80292DDC:
    cmplwi 0, 0x76
    .4byte 0x41800068 # blt .L_80292E48
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x25
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80292E48
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80292E20
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcb8(31)
L_80292E20:
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_80292E48:
    lbz 3, 0x3fc(31)
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lfs 1, 0x8(31)
    stfs 1, 0x2f4(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2f8(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2fc(31)
    lfs 1, 0x2fc(31)
    fadds 0, 1, 0
    stfs 0, 0x2fc(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80292E90:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x2
    li 5, 0x1
    stw 0, 0x14(1)
    li 0, 0x0
    addi 4, 4, 0xc
    stb 5, 0x124d(3)
    stb 0, 0x458(3)
    stb 5, 0x3fd(3)
    bl fn_8024F0E8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80292ECC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_80292F1C
    psq_l 1, 0x8(31), 0, 0
    addi 4, 1, 0x8
    lfs 2, 0x10(31)
    .4byte 0xC002D6A0 # lfs f0, lbl_80540640@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80292F1C:
    lbz 3, 0x3fc(31)
    cmplwi 3, 0x3c
    .4byte 0x4080000C # bge .L_80292F30
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_80292F30:
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80292F60
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80292F60
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820324 # bne .L_80293280
L_80292F60:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x41800318 # blt .L_80293280
    .4byte 0x408202A8 # bne .L_80293214
    lwz 0, 0xce0(31)
    cmpwi 0, 0x8
    .4byte 0x4180027C # blt .L_802931F4
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x545
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x4(31)
    cmpwi 0, 0x2
    .4byte 0x4182011C # beq .L_802930C8
    .4byte 0x40800014 # bge .L_80292FC4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80292FD0
    .4byte 0x40800090 # bge .L_8029304C
    .4byte 0x480001FC # b .L_802931BC
L_80292FC4:
    cmpwi 0, 0x4
    .4byte 0x408001F4 # bge .L_802931BC
    .4byte 0x48000178 # b .L_80293144
L_80292FD0:
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x140
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x141
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x142
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000174 # b .L_802931BC
L_8029304C:
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x147
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x148
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x149
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000F8 # b .L_802931BC
L_802930C8:
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x13d
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x13e
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x13f
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800007C # b .L_802931BC
L_80293144:
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x144
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x145
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x146
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802931BC:
    lwz 3, 0xce4(31)
    addi 4, 31, 0xcd4
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 5, 0x143
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x20
    bl fn_8024F0E8
L_802931F4:
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x2f
    bl fn_8024F0E8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x21
    bl fn_8024F0E8
L_80293214:
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0xab
    .4byte 0x41800058 # blt .L_80293280
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    li 0, 0x0
    mr 3, 31
    stfs 0, 0x10(31)
    stb 0, 0x124d(31)
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8029325C
    mr 3, 31
    li 4, 0x12
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_80293268
L_8029325C:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_80293268:
    li 0, 0x2
    mr 3, 31
    stw 0, 0x3dc(31)
    li 4, 0x1
    stw 0, 0x3e8(31)
    bl Player_SetField_0xc80
L_80293280:
    lfs 1, 0x8(31)
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    stfs 1, 0x2f4(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2f8(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2fc(31)
    lfs 1, 0x2fc(31)
    fadds 0, 1, 0
    stfs 0, 0x2fc(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802932BC:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC062D614 # lfs f3, lbl_805405B4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x1
    .4byte 0xC042D6A4 # lfs f2, lbl_80540644@sda21(r0)
    stw 31, 0xc(1)
    .4byte 0xC022D67C # lfs f1, lbl_8054061C@sda21(r0)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    stb 0, 0x124d(3)
    li 0, 0x0
    stfs 3, 0x10(3)
    stb 0, 0x458(3)
    stfs 3, 0x344(3)
    stfs 2, 0x348(3)
    stfs 1, 0x34c(3)
    lfs 1, 0x8(3)
    stfs 1, 0x2f4(3)
    lfs 1, 0xc(3)
    stfs 1, 0x2f8(3)
    lfs 1, 0x10(3)
    stfs 1, 0x2fc(3)
    lfs 1, 0x2fc(3)
    fadds 0, 1, 0
    stfs 0, 0x2fc(3)
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8029336C
    lwz 31, 0xd68(30)
    cmpwi 31, 0x0
    .4byte 0x41800030 # blt .L_8029336C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr 31, 3
    bl GetRoomConfigRecord
    cmplwi 31, 0x0
    .4byte 0x41820014 # beq .L_8029336C
    lwz 4, 0x3b4(30)
    mr 3, 31
    addi 5, 30, 0x2f4
    bl fn_801F349C
L_8029336C:
    lwz 0, 0xcf4(30)
    cmpwi 0, 0x1f
    .4byte 0x4082000C # bne .L_80293380
    li 0, 0x32
    stb 0, 0x3fc(30)
L_80293380:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80293398:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_802933E8
    psq_l 1, 0x8(31), 0, 0
    addi 4, 1, 0x8
    lfs 2, 0x10(31)
    .4byte 0xC002D6A0 # lfs f0, lbl_80540640@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802933E8:
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x40800010 # bge .L_8029340C
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x1f
    .4byte 0x40820098 # bne .L_802934A0
L_8029340C:
    lfs 2, 0x10(31)
    .4byte 0xC022D67C # lfs f1, lbl_8054061C@sda21(r0)
    .4byte 0xC002D680 # lfs f0, lbl_80540620@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810078 # ble .L_802934A0
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80293448
    psq_l 0, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    psq_st 0, 0x0(3), 0, 0
    stfs 1, 0xcb8(31)
L_80293448:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x23
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_802934A0
    mr 3, 31
    li 4, 0x0
    bl Player_SetField_0xc80
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x3b4(31)
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0xcdc(31)
    psq_st 2, 0x8(31), 0, 0
    stfs 1, 0x10(31)
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_802934A0:
    lbz 0, 0x3fc(31)
    extrwi. 0, 0, 2, 28
    .4byte 0x40820014 # bne .L_802934BC
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000040 # b .L_802934F8
L_802934BC:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_802934D4
    li 0, 0x1
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000028 # b .L_802934F8
L_802934D4:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_802934EC
    li 0, 0x3
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000010 # b .L_802934F8
L_802934EC:
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_802934F8:
    lfs 1, 0x8(31)
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    stfs 1, 0x2f4(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2f8(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2fc(31)
    lfs 1, 0x2fc(31)
    fadds 0, 1, 0
    stfs 0, 0x2fc(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80293534:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x2
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x1
    addi 4, 4, 0x2e
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x124d(3)
    li 0, 0x0
    stfs 0, 0x10(3)
    stb 0, 0x458(3)
    bl fn_8024F0E8
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180001C # blt .L_80293590
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_80293590
    mr 3, 31
    li 4, 0x0
    bl fn_8024EFA0
L_80293590:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802935A4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_802935F4
    psq_l 1, 0x8(31), 0, 0
    addi 4, 1, 0x14
    lfs 2, 0x10(31)
    .4byte 0xC002D6A0 # lfs f0, lbl_80540640@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    fsubs 0, 1, 0
    stfs 0, 0x18(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802935F4:
    lbz 3, 0x3fc(31)
    cmplwi 3, 0x3c
    .4byte 0x4080000C # bge .L_80293608
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_80293608:
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80293638
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80293638
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820118 # bne .L_8029374C
L_80293638:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x4180010C # blt .L_8029374C
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_8024189C
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_8029366C
    mr 3, 31
    li 4, 0x33
    bl fn_80251AEC
    .4byte 0x4800004C # b .L_802936B4
L_8029366C:
    lbz 0, 0xcf0(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80293688
    mr 3, 31
    li 4, 0x3e
    bl fn_80251AEC
    .4byte 0x48000030 # b .L_802936B4
L_80293688:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802936A8
    mr 3, 31
    li 4, 0x12
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_802936B4
L_802936A8:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_802936B4:
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_8029374C
    lwz 3, 0x3b4(31)
    cmpwi 3, 0x8
    .4byte 0x4080007C # bge .L_80293740
    lfs 0, 0x8(31)
    addi 4, 1, 0x8
    .4byte 0xC042D674 # lfs f2, lbl_80540614@sda21(r0)
    li 5, 0x17d
    stfs 0, 0x8(1)
    li 6, 0x1
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    li 7, 0x0
    lfs 3, 0xc(31)
    li 8, 0x0
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 9, 0x0
    stfs 3, 0xc(1)
    fadds 2, 3, 2
    li 10, 0x1
    lfs 3, 0x10(31)
    fadds 0, 3, 0
    stfs 3, 0x10(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_8013CC50
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x20
    bl fn_8024F0E8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x21
    bl fn_8024F0E8
    .4byte 0x48000010 # b .L_8029374C
L_80293740:
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
L_8029374C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80293760:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    stb 0, 0x458(3)
    blr

fn_80293774:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0x3fc(3)
    cmplwi 0, 0x3c
    .4byte 0x4082009C # bne .L_8029382C
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x1d
    .4byte 0x41820084 # beq .L_80293820
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800060 # bge .L_80293808
    lfs 0, 0x8(31)
    mr 3, 0
    .4byte 0xC042D674 # lfs f2, lbl_80540614@sda21(r0)
    addi 4, 1, 0x8
    stfs 0, 0x8(1)
    li 5, 0x17d
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    li 6, 0x1
    lfs 3, 0xc(31)
    li 7, 0x0
    .4byte 0xC022D660 # lfs f1, lbl_80540600@sda21(r0)
    li 8, 0x0
    stfs 3, 0xc(1)
    fadds 2, 3, 2
    li 9, 0x0
    li 10, 0x1
    lfs 3, 0x10(31)
    fadds 0, 3, 0
    stfs 3, 0x10(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_8013CC50
    .4byte 0x4800001C # b .L_80293820
L_80293808:
    .4byte 0x41800018 # blt .L_80293820
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_80293820
    li 4, 0x0
    bl fn_8024EFA0
L_80293820:
    li 0, 0x0
    stb 0, 0x3fd(31)
    .4byte 0x48000070 # b .L_80293898
L_8029382C:
    cmplwi 0, 0x76
    .4byte 0x41800068 # blt .L_80293898
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80293854
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcb8(31)
L_80293854:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x21
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80293898
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_80293898:
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802938B8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x14(1)
    li 0, 0x0
    stb 4, 0x124d(3)
    stb 0, 0x458(3)
    stb 4, 0x3fd(3)
    lwz 0, 0xcf4(3)
    cmpwi 0, 0x1d
    .4byte 0x41820010 # beq .L_802938F0
    lis 4, 0x2
    addi 4, 4, 0xc
    bl fn_8024F0E8
L_802938F0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80293900:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x3fc(3)
    cmplwi 0, 0x3c
    .4byte 0x40800028 # bge .L_80293944
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80293938
    li 0, 0x3c
    stb 0, 0x3fc(31)
    .4byte 0x48000010 # b .L_80293944
L_80293938:
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
L_80293944:
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_8029398C
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80293980
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80293980
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x4082018C # bne .L_80293B08
L_80293980:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x41800180 # blt .L_80293B08
L_8029398C:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x40820030 # bne .L_802939C4
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_802939B8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x21
    bl fn_8024F0E8
    .4byte 0x48000010 # b .L_802939C4
L_802939B8:
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
L_802939C4:
    lbz 5, 0x3fc(31)
    mr 3, 31
    li 4, 0x1
    addi 0, 5, 0x1
    stb 0, 0x3fc(31)
    bl Player_SetField_0xc80
    lfs 2, 0x10(31)
    .4byte 0xC022D67C # lfs f1, lbl_8054061C@sda21(r0)
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200B4 # bne .L_80293AB0
    stfs 0, 0x10(31)
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80293A2C
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_80237774
    .4byte 0x4800000C # b .L_80293A34
L_80293A2C:
    mr 3, 31
    bl fn_8024189C
L_80293A34:
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_80293A4C
    mr 3, 31
    li 4, 0x33
    bl fn_80251AEC
    .4byte 0x48000068 # b .L_80293AB0
L_80293A4C:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80293A88
    mr 3, 31
    li 4, 0x12
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80293AB0
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x9
    .4byte 0x40820038 # bne .L_80293AB0
    li 0, 0xb4
    stw 0, 0x464(31)
    .4byte 0x4800002C # b .L_80293AB0
L_80293A88:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80293AB0
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_80293AB0
    li 0, 0xb4
    stw 0, 0x464(31)
L_80293AB0:
    lbz 0, 0x3fc(31)
    extrwi. 0, 0, 2, 28
    .4byte 0x40820014 # bne .L_80293ACC
    li 0, 0x2
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000040 # b .L_80293B08
L_80293ACC:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80293AE4
    li 0, 0x1
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000028 # b .L_80293B08
L_80293AE4:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_80293AFC
    li 0, 0x3
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000010 # b .L_80293B08
L_80293AFC:
    li 0, 0x0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_80293B08:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80293B1C:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    stb 0, 0x458(3)
    blr

fn_80293B30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lbz 0, 0x3fc(3)
    cmplwi 0, 0x3a
    .4byte 0x418002F4 # blt .L_80293E44
    li 0, 0x3a
    li 5, 0x0
    stb 0, 0x3fc(31)
    li 0, 0x1
    li 4, 0x0
    stb 5, 0x3fd(31)
    stb 0, 0x3fb(31)
    bl Player_SetField_0xc80
    lwz 3, 0x4(31)
    bl fn_80301CD0
    clrlwi. 0, 3, 24
    .4byte 0x408202C4 # bne .L_80293E44
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80293BE4
    mr 3, 31
    bl fn_8024064C
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x408202D0 # bne .L_80293E74
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x12
    .4byte 0x40820034 # bne .L_80293BE4
    mr 3, 31
    bl fn_8024064C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 4, 31, 0xcd4
    lfs 0, 0x8(3)
    mr 3, 31
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0xcdc(31)
    bl fn_8024064C
    bl fn_8023DE58
    stw 3, 0xce4(31)
L_80293BE4:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80293C04
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcb8(31)
L_80293C04:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x1f
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820228 # beq .L_80293E44
    lwz 4, 0xce4(31)
    mr 3, 31
    addi 5, 31, 0xcd4
    bl fn_80241E28
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_80293D10
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x40820038 # bne .L_80293C7C
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80293C7C
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xcd4(31)
    lfs 0, 0x4(3)
    stfs 0, 0xcd8(31)
    lfs 0, 0x8(3)
    stfs 0, 0xcdc(31)
L_80293C7C:
    lwz 4, 0xce4(31)
    addi 3, 31, 0xcd4
    bl fn_8022461C
    lwz 4, 0xce4(31)
    mr 30, 3
    addi 3, 31, 0xcd4
    li 5, 0x1
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_80293CD0
    clrlwi 0, 30, 16
    cmplwi 0, 0x3
    .4byte 0x41820024 # beq .L_80293CD0
    cmplwi 0, 0xe
    .4byte 0x4182001C # beq .L_80293CD0
    lwz 5, 0xce4(31)
    mr 3, 31
    addi 4, 31, 0xcd4
    bl fn_802684A4
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80293D10
L_80293CD0:
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800020 # bge .L_80293CF8
    lfs 0, 0x2c4(31)
    stfs 0, 0xcd4(31)
    lfs 0, 0x2c8(31)
    stfs 0, 0xcd8(31)
    lfs 0, 0x2cc(31)
    stfs 0, 0xcdc(31)
    .4byte 0x4800001C # b .L_80293D10
L_80293CF8:
    lfs 0, 0xcbc(31)
    stfs 0, 0xcd4(31)
    lfs 0, 0xcc0(31)
    stfs 0, 0xcd8(31)
    lfs 0, 0xcc4(31)
    stfs 0, 0xcdc(31)
L_80293D10:
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    bl fn_802DEABC
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80293D80
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x41810040 # bgt .L_80293D80
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_80293D58
    cmpwi 0, 0x12
    .4byte 0x4082002C # bne .L_80293D80
L_80293D58:
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_80293DC4
    mr 3, 31
    addi 5, 31, 0x8
    li 4, 0x2
    li 6, 0x11
    bl fn_80272160
    .4byte 0x48000048 # b .L_80293DC4
L_80293D80:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4081003C # ble .L_80293DC4
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_80293DA0
    cmpwi 0, 0x12
    .4byte 0x40820028 # bne .L_80293DC4
L_80293DA0:
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80293DC4
    mr 3, 31
    addi 5, 31, 0x8
    li 4, 0x2
    li 6, 0x11
    bl fn_80272160
L_80293DC4:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x9
    .4byte 0x40820010 # bne .L_80293DDC
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stfs 0, 0x10(31)
    .4byte 0x48000060 # b .L_80293E38
L_80293DDC:
    cmpwi 0, 0x24
    .4byte 0x40820010 # bne .L_80293DF0
    .4byte 0xC002D680 # lfs f0, lbl_80540620@sda21(r0)
    stfs 0, 0x10(31)
    .4byte 0x4800004C # b .L_80293E38
L_80293DF0:
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80293E18
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stfs 0, 0x10(31)
    .4byte 0x48000024 # b .L_80293E38
L_80293E18:
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x41800010 # blt .L_80293E30
    .4byte 0xC002D680 # lfs f0, lbl_80540620@sda21(r0)
    stfs 0, 0x10(31)
    .4byte 0x4800000C # b .L_80293E38
L_80293E30:
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stfs 0, 0x10(31)
L_80293E38:
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_80293E44:
    mr 3, 31
    bl fn_8027EDDC
    lfs 1, 0x8(31)
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    stfs 1, 0x2f4(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2f8(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2fc(31)
    lfs 1, 0x2fc(31)
    fadds 0, 1, 0
    stfs 0, 0x2fc(31)
L_80293E74:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80293E8C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x1
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x1
    addi 4, 4, 0x3
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    stb 0, 0x124d(3)
    li 0, 0x0
    stfs 0, 0x10(3)
    stb 0, 0x458(3)
    bl fn_8024F0E8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x2d
    bl fn_8024F0E8
    lwz 30, 0x3b4(31)
    cmpwi 30, 0x8
    .4byte 0x4081005C # ble .L_80293F3C
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40810050 # ble .L_80293F3C
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80293F3C
    lwz 30, 0xce4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80293F3C
    lwz 3, 0xce4(31)
    lwz 0, 0x3b4(31)
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_80293F3C
    li 0, 0x3a
    stb 0, 0x3fc(31)
L_80293F3C:
    lfs 1, 0x8(31)
    .4byte 0xC002D608 # lfs f0, lbl_805405A8@sda21(r0)
    stfs 1, 0x2f4(31)
    lfs 1, 0xc(31)
    stfs 1, 0x2f8(31)
    lfs 1, 0x10(31)
    stfs 1, 0x2fc(31)
    lfs 1, 0x2fc(31)
    fadds 0, 1, 0
    stfs 0, 0x2fc(31)
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x24
    .4byte 0x40820028 # bne .L_80293F94
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180001C # blt .L_80293F94
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_80293F94
    mr 3, 31
    li 4, 0x0
    bl fn_8024EFA0
L_80293F94:
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x4182002C # beq .L_80293FCC
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x41820014 # beq .L_80293FC4
    mr 3, 31
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
L_80293FC4:
    mr 3, 31
    bl fn_8024BAEC
L_80293FCC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80293FE4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lbz 4, 0x3fc(3)
    cmplwi 4, 0x1e
    .4byte 0x40800010 # bge .L_80294014
    addi 0, 4, 0x1
    stb 0, 0x3fc(31)
    .4byte 0x4800034C # b .L_8029435C
L_80294014:
    lwz 4, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_80294040
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80294040
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820320 # bne .L_8029435C
L_80294040:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x1e
    .4byte 0x408200A8 # bne .L_802940F0
    lfs 1, 0x3a8(31)
    lfs 0, 0x39c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810050 # ble .L_802940A8
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_80294098
    lbz 0, 0xceb(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80294084
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x1b
    bl fn_8024F0E8
L_80294084:
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x21
    bl fn_8024F0E8
    .4byte 0x4800005C # b .L_802940F0
L_80294098:
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
    .4byte 0x4800004C # b .L_802940F0
L_802940A8:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_802940E4
    lbz 0, 0xceb(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802940D0
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x19
    bl fn_8024F0E8
L_802940D0:
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x21
    bl fn_8024F0E8
    .4byte 0x48000010 # b .L_802940F0
L_802940E4:
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
L_802940F0:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80294104
    mr 3, 31
    bl fn_80265D8C
L_80294104:
    lbz 5, 0x3fc(31)
    mr 3, 31
    li 4, 0x1
    addi 0, 5, 0x1
    stb 0, 0x3fc(31)
    bl Player_SetField_0xc80
    .4byte 0xC022D6A8 # lfs f1, lbl_80540648@sda21(r0)
    mr 3, 31
    bl fn_8027E5BC
    lfs 0, 0x3ac(31)
    lis 3, lbl_80539D44@ha
    psq_l 1, 0x3a4(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x8(31), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x10(31), 1, 0
    ps_sub 4, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 3, 2, 0
    .4byte 0xC022D674 # lfs f1, lbl_80540614@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 4, 4
    psq_st 4, 0x8(1), 0, 0
    fmuls 0, 1, 0
    psq_st 3, 0x10(1), 1, 0
    lfs 3, 0x10(1)
    psq_st 4, 0x14(1), 0, 0
    ps_madd 1, 3, 3, 2
    stfs 3, 0x1c(1)
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820010 # beq .L_80294194
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x50
    .4byte 0x418000BC # blt .L_8029424C
L_80294194:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_8024189C
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_802941BC
    mr 3, 31
    li 4, 0x33
    bl fn_80251AEC
    .4byte 0x48000094 # b .L_8029424C
L_802941BC:
    lbz 0, 0xceb(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80294204
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802941F4
    mr 3, 31
    li 4, 0x4b
    bl fn_80251AEC
    .4byte 0x4800005C # b .L_8029424C
L_802941F4:
    mr 3, 31
    li 4, 0x4a
    bl fn_80251AEC
    .4byte 0x4800004C # b .L_8029424C
L_80294204:
    lbz 0, 0xcec(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80294220
    mr 3, 31
    li 4, 0xb
    bl fn_80251AEC
    .4byte 0x48000030 # b .L_8029424C
L_80294220:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80294240
    mr 3, 31
    li 4, 0x12
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_8029424C
L_80294240:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_8029424C:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x15
    .4byte 0x4182000C # beq .L_80294260
    cmpwi 0, 0x23
    .4byte 0x40820020 # bne .L_8029427C
L_80294260:
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80294284
L_8029427C:
    mr 3, 31
    bl fn_80268B3C
L_80294284:
    lbz 0, 0xceb(31)
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_802942D0
    lbz 3, 0x3f8(31)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x18
    .4byte 0x4180000C # blt .L_802942B0
    li 0, 0x0
    stb 0, 0x3f8(31)
L_802942B0:
    lis 3, 0x2aab
    lbz 0, 0x3f8(31)
    subi 3, 3, 0x5555
    mulhw 3, 3, 0
    srwi 0, 3, 31
    add 0, 3, 0
    stb 0, 0x3f9(31)
    .4byte 0x48000090 # b .L_8029435C
L_802942D0:
    lbz 0, 0xcec(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80294334
    lbz 3, 0x3f8(31)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x13
    .4byte 0x4180000C # blt .L_802942FC
    li 0, 0x0
    stb 0, 0x3f8(31)
L_802942FC:
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x7
    .4byte 0x40800010 # bge .L_80294314
    li 0, 0x0
    stb 0, 0x3f9(31)
    .4byte 0x4800004C # b .L_8029435C
L_80294314:
    cmplwi 0, 0xc
    .4byte 0x40800010 # bge .L_80294328
    li 0, 0x1
    stb 0, 0x3f9(31)
    .4byte 0x48000038 # b .L_8029435C
L_80294328:
    li 0, 0x2
    stb 0, 0x3f9(31)
    .4byte 0x4800002C # b .L_8029435C
L_80294334:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80294354
    mr 3, 31
    li 4, 0x0
    bl fn_8026152C
    .4byte 0x4800000C # b .L_8029435C
L_80294354:
    mr 3, 31
    bl fn_8027EE84
L_8029435C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80294374:
    stwu 1, -0xc0(1)
    mflr 0
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    stw 0, 0xc4(1)
    li 0, 0x1
    stw 31, 0xbc(1)
    mr 31, 3
    stw 30, 0xb8(1)
    lfs 0, 0x8(3)
    stfs 0, 0x398(3)
    lfs 0, 0xc(3)
    stfs 0, 0x39c(3)
    lfs 0, 0x10(3)
    stfs 0, 0x3a0(3)
    stfs 1, 0x3a0(3)
    lfs 0, 0x8(3)
    stfs 0, 0x3a4(3)
    lfs 0, 0xc(3)
    stfs 0, 0x3a8(3)
    lfs 0, 0x10(3)
    stfs 0, 0x3ac(3)
    stfs 1, 0x3ac(3)
    stb 0, 0x124d(3)
    lwz 3, 0xcf4(3)
    cmpwi 3, 0x15
    .4byte 0x408201B4 # bne .L_8029458C
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200B4 # beq .L_802944A8
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80294458
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x2
    .4byte 0xC002D6AC # lfs f0, lbl_8054064C@sda21(r0)
    stfs 1, 0xa4(1)
    psq_l 3, 0x398(31), 0, 0
    stfs 0, 0xa8(1)
    .4byte 0xC002D6B0 # lfs f0, lbl_80540650@sda21(r0)
    psq_l 2, 0xa4(1), 0, 0
    stfs 1, 0xac(1)
    ps_add 2, 3, 2
    psq_l 1, 0xac(1), 1, 0
    psq_st 2, 0x398(31), 0, 0
    psq_l 2, 0x3a0(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x3a0(31), 1, 0
    lfs 1, 0xc(31)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x4800040C # b .L_80294860
L_80294458:
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    li 0, 0x3
    .4byte 0xC022D6B0 # lfs f1, lbl_80540650@sda21(r0)
    stfs 0, 0x98(1)
    psq_l 3, 0x398(31), 0, 0
    stfs 1, 0x9c(1)
    psq_l 2, 0x98(1), 0, 0
    stfs 0, 0xa0(1)
    ps_add 2, 3, 2
    psq_l 0, 0xa0(1), 1, 0
    psq_st 2, 0x398(31), 0, 0
    psq_l 2, 0x3a0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x3a0(31), 1, 0
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x480003BC # b .L_80294860
L_802944A8:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800048 # bge .L_802944F8
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x2
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    stfs 1, 0x8c(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x90(1)
    psq_l 0, 0x8c(1), 0, 0
    stfs 1, 0x94(1)
    ps_add 1, 2, 0
    psq_l 0, 0x94(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x4800036C # b .L_80294860
L_802944F8:
    lwz 0, 0xce0(31)
    cmpwi 0, 0x8
    .4byte 0x40800048 # bge .L_80294548
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x3
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    stfs 1, 0x80(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x84(1)
    psq_l 0, 0x80(1), 0, 0
    stfs 1, 0x88(1)
    ps_add 1, 2, 0
    psq_l 0, 0x88(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x4800031C # b .L_80294860
L_80294548:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x2
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    stfs 1, 0x74(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x78(1)
    psq_l 0, 0x74(1), 0, 0
    stfs 1, 0x7c(1)
    ps_add 1, 2, 0
    psq_l 0, 0x7c(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x480002D8 # b .L_80294860
L_8029458C:
    cmpwi 3, 0x23
    .4byte 0x408201B4 # bne .L_80294744
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200B4 # beq .L_80294660
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800054 # bge .L_8029460C
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    li 0, 0x3
    .4byte 0xC022D6B0 # lfs f1, lbl_80540650@sda21(r0)
    stfs 0, 0x68(1)
    psq_l 3, 0x398(31), 0, 0
    stfs 1, 0x6c(1)
    psq_l 2, 0x68(1), 0, 0
    stfs 0, 0x70(1)
    ps_add 2, 3, 2
    psq_l 0, 0x70(1), 1, 0
    psq_st 2, 0x398(31), 0, 0
    psq_l 2, 0x3a0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x3a0(31), 1, 0
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000258 # b .L_80294860
L_8029460C:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x2
    .4byte 0xC002D6AC # lfs f0, lbl_8054064C@sda21(r0)
    stfs 1, 0x5c(1)
    psq_l 3, 0x398(31), 0, 0
    stfs 0, 0x60(1)
    .4byte 0xC002D6B0 # lfs f0, lbl_80540650@sda21(r0)
    psq_l 2, 0x5c(1), 0, 0
    stfs 1, 0x64(1)
    ps_add 2, 3, 2
    psq_l 1, 0x64(1), 1, 0
    psq_st 2, 0x398(31), 0, 0
    psq_l 2, 0x3a0(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x3a0(31), 1, 0
    lfs 1, 0xc(31)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000204 # b .L_80294860
L_80294660:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800048 # bge .L_802946B0
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x3
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    stfs 1, 0x50(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x54(1)
    psq_l 0, 0x50(1), 0, 0
    stfs 1, 0x58(1)
    ps_add 1, 2, 0
    psq_l 0, 0x58(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x480001B4 # b .L_80294860
L_802946B0:
    lwz 0, 0xce0(31)
    cmpwi 0, 0x8
    .4byte 0x40800048 # bge .L_80294700
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x2
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    stfs 1, 0x44(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    stfs 1, 0x4c(1)
    ps_add 1, 2, 0
    psq_l 0, 0x4c(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000164 # b .L_80294860
L_80294700:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x3
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    stfs 1, 0x38(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x3c(1)
    psq_l 0, 0x38(1), 0, 0
    stfs 1, 0x40(1)
    ps_add 1, 2, 0
    psq_l 0, 0x40(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000120 # b .L_80294860
L_80294744:
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80294754
    cmpwi 3, 0x3
    .4byte 0x40820048 # bne .L_80294798
L_80294754:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x3
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    stfs 1, 0x2c(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    stfs 1, 0x34(1)
    ps_add 1, 2, 0
    psq_l 0, 0x34(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x480000CC # b .L_80294860
L_80294798:
    cmpwi 3, 0x17
    .4byte 0x40820044 # bne .L_802947E0
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    li 0, 0x0
    stfs 1, 0x28(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x20(1)
    psq_l 0, 0x28(1), 1, 0
    stfs 1, 0x24(1)
    psq_l 1, 0x20(1), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000084 # b .L_80294860
L_802947E0:
    cmpwi 3, 0x18
    .4byte 0x40820040 # bne .L_80294824
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    stfs 1, 0x1c(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x14(1)
    psq_l 0, 0x1c(1), 1, 0
    stfs 1, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    .4byte 0x48000040 # b .L_80294860
L_80294824:
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    li 0, 0x2
    stfs 1, 0x10(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 1, 0x8(1)
    psq_l 1, 0x10(1), 1, 0
    stfs 0, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 0, 0x3a4(31), 0, 0
    psq_l 0, 0x3ac(31), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
L_80294860:
    li 0, 0x0
    stb 0, 0x458(31)
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_80294888
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0x8
    lwz 5, 0x4(31)
    lwz 6, 0x3b4(31)
    bl fn_8029E508
L_80294888:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802948A0
    li 0, 0x0
    stb 0, 0xca0(31)
    .4byte 0x4800000C # b .L_802948A8
L_802948A0:
    li 0, 0xff
    stb 0, 0xca0(31)
L_802948A8:
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_802948C0:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC022D6A8 # lfs f1, lbl_80540648@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    bl fn_8027E5BC
    lbz 4, 0x3fc(31)
    lis 3, lbl_80539D44@ha
    .4byte 0xC022D674 # lfs f1, lbl_80540614@sda21(r0)
    addi 0, 4, 0x1
    stb 0, 0x3fc(31)
    lfs 0, 0x3ac(31)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 0, 0x8(31), 0, 0
    psq_l 4, 0x10(1), 1, 0
    psq_l 3, 0x10(31), 1, 0
    ps_sub 5, 2, 0
    psq_st 2, 0x8(1), 0, 0
    ps_sub 3, 4, 3
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 5, 5
    psq_st 5, 0x8(1), 0, 0
    fmuls 0, 1, 0
    psq_st 3, 0x10(1), 1, 0
    lfs 3, 0x10(1)
    psq_st 5, 0x14(1), 0, 0
    ps_madd 1, 3, 3, 2
    stfs 3, 0x1c(1)
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820010 # beq .L_80294954
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x32
    .4byte 0x41800078 # blt .L_802949C8
L_80294954:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80294974
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcb8(31)
L_80294974:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x1d
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_802949DC
    mr 3, 31
    li 4, 0x0
    bl Player_SetField_0xc80
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
    .4byte 0x48000018 # b .L_802949DC
L_802949C8:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802949DC
    mr 3, 31
    bl fn_80265D68
L_802949DC:
    lwz 0, 0xcf4(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802949F0
    mr 3, 31
    bl fn_80268B3C
L_802949F0:
    lbz 0, 0xceb(31)
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_80294A3C
    lbz 3, 0x3f8(31)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x18
    .4byte 0x4180000C # blt .L_80294A1C
    li 0, 0x0
    stb 0, 0x3f8(31)
L_80294A1C:
    lis 3, 0x2aab
    lbz 0, 0x3f8(31)
    subi 3, 3, 0x5555
    mulhw 3, 3, 0
    srwi 0, 3, 31
    add 0, 3, 0
    stb 0, 0x3f9(31)
    .4byte 0x48000090 # b .L_80294AC8
L_80294A3C:
    lbz 0, 0xcec(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80294AA0
    lbz 3, 0x3f8(31)
    addi 0, 3, 0x1
    stb 0, 0x3f8(31)
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x13
    .4byte 0x4180000C # blt .L_80294A68
    li 0, 0x0
    stb 0, 0x3f8(31)
L_80294A68:
    lbz 0, 0x3f8(31)
    cmplwi 0, 0x7
    .4byte 0x40800010 # bge .L_80294A80
    li 0, 0x0
    stb 0, 0x3f9(31)
    .4byte 0x4800004C # b .L_80294AC8
L_80294A80:
    cmplwi 0, 0xc
    .4byte 0x40800010 # bge .L_80294A94
    li 0, 0x1
    stb 0, 0x3f9(31)
    .4byte 0x48000038 # b .L_80294AC8
L_80294A94:
    li 0, 0x2
    stb 0, 0x3f9(31)
    .4byte 0x4800002C # b .L_80294AC8
L_80294AA0:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80294AC0
    mr 3, 31
    li 4, 0x0
    bl fn_8026152C
    .4byte 0x4800000C # b .L_80294AC8
L_80294AC0:
    mr 3, 31
    bl fn_8027EE84
L_80294AC8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80294ADC:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stw 31, 0xbc(1)
    mr 31, 3
    stw 30, 0xb8(1)
    lwz 0, 0x1248(3)
    cmpwi 0, 0x4a
    .4byte 0x4182000C # beq .L_80294B08
    cmpwi 0, 0x4b
    .4byte 0x40820018 # bne .L_80294B1C
L_80294B08:
    li 3, 0x1
    li 0, 0x0
    stb 3, 0xceb(31)
    stb 0, 0xcec(31)
    .4byte 0x4800002C # b .L_80294B44
L_80294B1C:
    cmpwi 0, 0xb
    .4byte 0x40820018 # bne .L_80294B38
    li 3, 0x0
    li 0, 0x1
    stb 3, 0xceb(31)
    stb 0, 0xcec(31)
    .4byte 0x48000010 # b .L_80294B44
L_80294B38:
    li 0, 0x0
    stb 0, 0xceb(31)
    stb 0, 0xcec(31)
L_80294B44:
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x124d(31)
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    stb 0, 0x458(31)
    stfs 1, 0x10(31)
    lfs 0, 0x8(31)
    stfs 0, 0x398(31)
    lfs 0, 0xc(31)
    stfs 0, 0x39c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x3a0(31)
    stfs 1, 0x3a0(31)
    lfs 0, 0x8(31)
    stfs 0, 0x3a4(31)
    lfs 0, 0xc(31)
    stfs 0, 0x3a8(31)
    lfs 0, 0x10(31)
    stfs 0, 0x3ac(31)
    stfs 1, 0x3ac(31)
    lwz 4, 0xcf4(31)
    cmpwi 4, 0x15
    .4byte 0x408201E8 # bne .L_80294D84
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200B8 # beq .L_80294C70
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80294C1C
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D6AC # lfs f0, lbl_8054064C@sda21(r0)
    li 0, 0x3
    stfs 1, 0xa4(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x18
    stfs 0, 0xa8(1)
    psq_l 0, 0xa4(1), 0, 0
    stfs 1, 0xac(1)
    ps_add 1, 2, 0
    psq_l 0, 0xac(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x480004E0 # b .L_802950F8
L_80294C1C:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D6B0 # lfs f0, lbl_80540650@sda21(r0)
    li 0, 0x2
    stfs 1, 0x98(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x1a
    stfs 0, 0x9c(1)
    psq_l 0, 0x98(1), 0, 0
    stfs 1, 0xa0(1)
    ps_add 1, 2, 0
    psq_l 0, 0xa0(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x4800048C # b .L_802950F8
L_80294C70:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80294CD0
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    li 0, 0x3
    stfs 1, 0x8c(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x18
    stfs 0, 0x90(1)
    psq_l 0, 0x8c(1), 0, 0
    stfs 1, 0x94(1)
    ps_add 1, 2, 0
    psq_l 0, 0x94(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x4800042C # b .L_802950F8
L_80294CD0:
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80294D30
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    li 0, 0x2
    stfs 1, 0x80(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x1a
    stfs 0, 0x84(1)
    psq_l 0, 0x80(1), 0, 0
    stfs 1, 0x88(1)
    ps_add 1, 2, 0
    psq_l 0, 0x88(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x480003CC # b .L_802950F8
L_80294D30:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    li 0, 0x3
    stfs 1, 0x74(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x18
    stfs 0, 0x78(1)
    psq_l 0, 0x74(1), 0, 0
    stfs 1, 0x7c(1)
    ps_add 1, 2, 0
    psq_l 0, 0x7c(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x48000378 # b .L_802950F8
L_80294D84:
    cmpwi 4, 0x23
    .4byte 0x408201E8 # bne .L_80294F70
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200B8 # beq .L_80294E5C
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80294E08
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D6B0 # lfs f0, lbl_80540650@sda21(r0)
    li 0, 0x2
    stfs 1, 0x68(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x1a
    stfs 0, 0x6c(1)
    psq_l 0, 0x68(1), 0, 0
    stfs 1, 0x70(1)
    ps_add 1, 2, 0
    psq_l 0, 0x70(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x480002F4 # b .L_802950F8
L_80294E08:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D6AC # lfs f0, lbl_8054064C@sda21(r0)
    li 0, 0x3
    stfs 1, 0x5c(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x18
    stfs 0, 0x60(1)
    psq_l 0, 0x5c(1), 0, 0
    stfs 1, 0x64(1)
    ps_add 1, 2, 0
    psq_l 0, 0x64(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x480002A0 # b .L_802950F8
L_80294E5C:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80294EBC
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    li 0, 0x2
    stfs 1, 0x50(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x1a
    stfs 0, 0x54(1)
    psq_l 0, 0x50(1), 0, 0
    stfs 1, 0x58(1)
    ps_add 1, 2, 0
    psq_l 0, 0x58(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x48000240 # b .L_802950F8
L_80294EBC:
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_80294F1C
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    li 0, 0x3
    stfs 1, 0x44(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x18
    stfs 0, 0x48(1)
    psq_l 0, 0x44(1), 0, 0
    stfs 1, 0x4c(1)
    ps_add 1, 2, 0
    psq_l 0, 0x4c(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x480001E0 # b .L_802950F8
L_80294F1C:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    lis 4, 0x2
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    li 0, 0x2
    stfs 1, 0x38(1)
    mr 3, 31
    psq_l 2, 0x3a4(31), 0, 0
    addi 4, 4, 0x1a
    stfs 0, 0x3c(1)
    psq_l 0, 0x38(1), 0, 0
    stfs 1, 0x40(1)
    ps_add 1, 2, 0
    psq_l 0, 0x40(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    bl fn_8024F0E8
    .4byte 0x4800018C # b .L_802950F8
L_80294F70:
    cmpwi 4, 0x17
    .4byte 0x4082005C # bne .L_80294FD0
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    stfs 1, 0x34(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x2c(1)
    psq_l 0, 0x34(1), 1, 0
    stfs 1, 0x30(1)
    psq_l 1, 0x2c(1), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    lbz 0, 0xceb(31)
    cmplwi 0, 0x0
    .4byte 0x40820140 # bne .L_802950F8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x1a
    bl fn_8024F0E8
    .4byte 0x4800012C # b .L_802950F8
L_80294FD0:
    cmpwi 4, 0x18
    .4byte 0x4082005C # bne .L_80295030
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    stfs 1, 0x28(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x20(1)
    psq_l 0, 0x28(1), 1, 0
    stfs 1, 0x24(1)
    psq_l 1, 0x20(1), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 3, 0x3dc(31)
    stw 3, 0x3e8(31)
    lbz 0, 0xceb(31)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_802950F8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x1a
    bl fn_8024F0E8
    .4byte 0x480000CC # b .L_802950F8
L_80295030:
    cmpwi 4, 0x1
    .4byte 0x4182000C # beq .L_80295040
    cmpwi 4, 0x2
    .4byte 0x40820064 # bne .L_802950A0
L_80295040:
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    li 0, 0x2
    .4byte 0xC002D654 # lfs f0, lbl_805405F4@sda21(r0)
    stfs 1, 0x14(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 0, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    stfs 1, 0x1c(1)
    ps_add 1, 2, 0
    psq_l 0, 0x1c(1), 1, 0
    psq_st 1, 0x3a4(31), 0, 0
    psq_l 1, 0x3ac(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    lbz 0, 0xceb(31)
    cmplwi 0, 0x0
    .4byte 0x40820070 # bne .L_802950F8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x1a
    bl fn_8024F0E8
    .4byte 0x4800005C # b .L_802950F8
L_802950A0:
    .4byte 0xC002D6B4 # lfs f0, lbl_80540654@sda21(r0)
    li 0, 0x3
    stfs 1, 0x10(1)
    psq_l 2, 0x3a4(31), 0, 0
    stfs 1, 0x8(1)
    psq_l 1, 0x10(1), 1, 0
    stfs 0, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 0, 0x3a4(31), 0, 0
    psq_l 0, 0x3ac(31), 1, 0
    ps_add 0, 0, 1
    psq_st 0, 0x3ac(31), 1, 0
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    lbz 0, 0xceb(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_802950F8
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x18
    bl fn_8024F0E8
L_802950F8:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180001C # blt .L_8029511C
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_8029511C
    mr 3, 31
    li 4, 0x0
    bl fn_8024EFA0
L_8029511C:
    li 0, 0xff
    stb 0, 0xca0(31)
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8029513C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 4, 0x3fc(3)
    cmplwi 4, 0x3c
    .4byte 0x40800010 # bge .L_80295168
    addi 0, 4, 0x1
    stb 0, 0x3fc(31)
    .4byte 0x480000C8 # b .L_8029522C
L_80295168:
    li 4, 0x1
    bl Player_SetField_0xc80
    lwz 3, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_802951A0
    mr 3, 31
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_802951A0
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x40820090 # bne .L_8029522C
L_802951A0:
    lfs 2, 0x34c(31)
    .4byte 0xC022D66C # lfs f1, lbl_8054060C@sda21(r0)
    .4byte 0xC002D678 # lfs f0, lbl_80540618@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x34c(31)
    lfs 1, 0x34c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802951C4
    stfs 0, 0x34c(31)
L_802951C4:
    psq_l 2, 0x8(31), 0, 0
    psq_l 1, 0x344(31), 0, 0
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x8(31), 0, 0
    psq_l 2, 0x10(31), 1, 0
    psq_l 1, 0x34c(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x10(31), 1, 0
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080003C # bge .L_8029522C
    stfs 0, 0x10(31)
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_8024189C
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_80295220
    mr 3, 31
    li 4, 0x33
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_8029522C
L_80295220:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_8029522C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80295240:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    .4byte 0xC022D614 # lfs f1, lbl_805405B4@sda21(r0)
    stb 0, 0x458(3)
    .4byte 0xC002D6A4 # lfs f0, lbl_80540644@sda21(r0)
    stfs 1, 0x344(3)
    stfs 0, 0x348(3)
    stfs 1, 0x34c(3)
    blr

fn_80295268:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 3, 0x3fc(3)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0xa
    .4byte 0x41800090 # blt .L_80295320
    lfs 2, 0x10(31)
    .4byte 0xC022D67C # lfs f1, lbl_8054061C@sda21(r0)
    .4byte 0xC002D680 # lfs f0, lbl_80540620@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810070 # ble .L_80295320
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_802952D0
    psq_l 0, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    psq_st 0, 0x0(3), 0, 0
    stfs 1, 0xcb8(31)
L_802952D0:
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    li 4, 0x2f
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80295320
    mr 3, 31
    li 4, 0x0
    bl Player_SetField_0xc80
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    stw 0, 0x3b4(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
L_80295320:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80295334:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x124d(3)
    li 0, 0x0
    stb 0, 0x458(3)
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x41800018 # blt .L_80295378
    lwz 0, 0xce4(31)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_80295378
    li 4, 0x0
    bl fn_8024EFA0
L_80295378:
    li 0, 0x2
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stw 0, 0x3dc(31)
    stw 0, 0x3e8(31)
    stfs 0, 0x10(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802953A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 4, 0x3fc(3)
    cmplwi 4, 0x3c
    .4byte 0x40800010 # bge .L_802953CC
    addi 0, 4, 0x1
    stb 0, 0x3fc(31)
    .4byte 0x480000DC # b .L_802954A4
L_802953CC:
    lwz 4, 0xce4(31)
    lwz 0, 0xce0(31)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_802953F8
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_802953F8
    lwz 3, 0x4(31)
    bl fn_80303750
    clrlwi. 0, 3, 24
    .4byte 0x408200B0 # bne .L_802954A4
L_802953F8:
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3c
    .4byte 0x418000A4 # blt .L_802954A4
    lfs 2, 0x34c(31)
    .4byte 0xC022D66C # lfs f1, lbl_8054060C@sda21(r0)
    .4byte 0xC002D678 # lfs f0, lbl_80540618@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x34c(31)
    lfs 1, 0x34c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80295428
    stfs 0, 0x34c(31)
L_80295428:
    psq_l 2, 0x8(31), 0, 0
    psq_l 1, 0x344(31), 0, 0
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x8(31), 0, 0
    psq_l 2, 0x10(31), 1, 0
    psq_l 1, 0x34c(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x10(31), 1, 0
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800050 # bge .L_802954A4
    stfs 0, 0x10(31)
    li 0, 0x0
    mr 3, 31
    stb 0, 0x124d(31)
    bl fn_8024189C
    cmpwi 3, 0x0
    .4byte 0x41810014 # bgt .L_80295484
    mr 3, 31
    li 4, 0x33
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_80295490
L_80295484:
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_80295490:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802954A4
    lwz 3, 0x4(31)
    li 4, 0xd
    bl fn_803037D4
L_802954A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802954B8:
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x124d(3)
    .4byte 0xC002D614 # lfs f0, lbl_805405B4@sda21(r0)
    stb 0, 0x458(3)
    stfs 0, 0x344(3)
    stfs 0, 0x348(3)
    stfs 0, 0x34c(3)
    blr

fn_802954DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 4, 0x3fc(3)
    cmplwi 4, 0x3c
    .4byte 0x41800070 # blt .L_80295568
    li 0, 0x0
    li 4, 0x2d
    stb 0, 0x124d(31)
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_80295570
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80295534
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0xcb0
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xcb8(31)
L_80295534:
    lwz 0, 0xce4(31)
    addi 3, 31, 0xcd4
    .4byte 0xC002D680 # lfs f0, lbl_80540620@sda21(r0)
    stw 0, 0x3b4(31)
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0xcdc(31)
    psq_st 2, 0x8(31), 0, 0
    stfs 1, 0x10(31)
    stfs 0, 0x10(31)
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
    .4byte 0x4800000C # b .L_80295570
L_80295568:
    addi 0, 4, 0x1
    stb 0, 0x3fc(31)
L_80295570:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80295584:
    li 5, 0x1
    li 4, 0x0
    stb 5, 0x124d(3)
    li 0, 0x2
    stb 4, 0x458(3)
    stb 5, 0x3fd(3)
    stw 0, 0x3dc(3)
    stw 0, 0x3e8(3)
    blr

fn_802955A8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0368@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0368@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802955F8
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
L_802955F8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80295630
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
L_80295630:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80295668
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
L_80295668:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802956A0
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
L_802956A0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802956D8
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
L_802956D8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80295710
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
L_80295710:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80295748
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
L_80295748:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80295780
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
L_80295780:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802957B8
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
L_802957B8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802957CC:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stmw 24, 0x60(1)
    mr 24, 4
    mr 29, 3
    clrlwi 0, 4, 24
    lis 3, lbl_8046C268@ha
    mulli 31, 0, 0xc
    psq_l 3, 0xc(29), 0, 0
    addi 4, 3, lbl_8046C268@l
    lfs 2, 0x14(29)
    .4byte 0xC022D6C8 # lfs f1, lbl_80540668@sda21(r0)
    li 30, 0x1
    add 3, 4, 31
    lfsx 0, 4, 31
    lfs 4, 0x4(3)
    stfs 0, 0x3c(29)
    lfs 5, 0x8(3)
    stfs 4, 0x40(29)
    .4byte 0xC002D6CC # lfs f0, lbl_8054066C@sda21(r0)
    stfs 5, 0x44(29)
    psq_l 5, 0xc(29), 0, 0
    psq_l 4, 0x3c(29), 0, 0
    psq_st 3, 0x4c(1), 0, 0
    ps_add 3, 5, 4
    stfs 2, 0x54(1)
    psq_st 3, 0xc(29), 0, 0
    psq_l 3, 0x14(29), 1, 0
    psq_l 2, 0x44(29), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x14(29), 1, 0
    stfs 1, 0x60(29)
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_8029587C
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80295880
L_8029587C:
    addi 6, 3, 0xdc
L_80295880:
    lwz 5, 0x0(6)
    clrlwi. 0, 24, 24
    lwz 4, 0x4(6)
    lwz 3, 0x8(6)
    stw 5, 0x3c(1)
    .4byte 0xC082D6D0 # lfs f4, lbl_80540670@sda21(r0)
    stw 4, 0x40(1)
    lfs 0, 0x3c(1)
    stw 3, 0x44(1)
    fsubs 3, 0, 4
    lfs 1, 0x40(1)
    lwz 3, 0xc(6)
    fsubs 2, 1, 4
    lfs 0, 0x44(1)
    psq_l 5, 0xc(29), 0, 0
    fadds 1, 0, 4
    lfs 4, 0x14(29)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    stfs 4, 0x38(1)
    stw 3, 0x48(1)
    stfs 3, 0x3c(1)
    stfs 2, 0x40(1)
    stfs 1, 0x44(1)
    psq_st 5, 0x30(1), 0, 0
    stfs 0, 0x38(1)
    .4byte 0x4182000C # beq .L_802958F0
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_802959D0
L_802958F0:
    clrlwi. 0, 24, 24
    .4byte 0x40820024 # bne .L_80295918
    lfs 2, 0x30(1)
    lfs 1, 0x68(29)
    .4byte 0xC002D6D8 # lfs f0, lbl_80540678@sda21(r0)
    fadds 1, 2, 1
    fadds 0, 1, 0
    stfs 1, 0x30(1)
    stfs 0, 0x30(1)
    .4byte 0x48000020 # b .L_80295934
L_80295918:
    lfs 2, 0x30(1)
    lfs 1, 0x60(29)
    .4byte 0xC002D6D8 # lfs f0, lbl_80540678@sda21(r0)
    fadds 1, 2, 1
    fsubs 0, 1, 0
    stfs 1, 0x30(1)
    stfs 0, 0x30(1)
L_80295934:
    lfs 2, 0x34(1)
    li 25, 0x0
    lfs 1, 0x64(29)
    .4byte 0xC002D6D8 # lfs f0, lbl_80540678@sda21(r0)
    fadds 1, 2, 1
    .4byte 0xC3E2D6DC # lfs f31, lbl_8054067C@sda21(r0)
    fadds 0, 1, 0
    stfs 1, 0x34(1)
    stfs 0, 0x34(1)
L_80295958:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x30
    bl fn_802A1490
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802959AC
    lwz 27, 0x198(29)
    lwz 28, 0x4(29)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 28
    lbz 0, 0x1(3)
    mr 6, 27
    addi 5, 1, 0x30
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802959B4
L_802959AC:
    li 30, 0x0
    .4byte 0x480000FC # b .L_80295AAC
L_802959B4:
    lfs 0, 0x34(1)
    addi 25, 25, 0x1
    cmpwi 25, 0x6
    fadds 0, 0, 31
    stfs 0, 0x34(1)
    .4byte 0x4180FF90 # blt .L_80295958
    .4byte 0x480000E0 # b .L_80295AAC
L_802959D0:
    cmplwi 0, 0x2
    .4byte 0x40820024 # bne .L_802959F8
    lfs 2, 0x34(1)
    lfs 1, 0x6c(29)
    .4byte 0xC002D6D8 # lfs f0, lbl_80540678@sda21(r0)
    fadds 1, 2, 1
    fadds 0, 1, 0
    stfs 1, 0x34(1)
    stfs 0, 0x34(1)
    .4byte 0x48000020 # b .L_80295A14
L_802959F8:
    lfs 2, 0x34(1)
    lfs 1, 0x64(29)
    .4byte 0xC002D6D8 # lfs f0, lbl_80540678@sda21(r0)
    fadds 1, 2, 1
    fsubs 0, 1, 0
    stfs 1, 0x34(1)
    stfs 0, 0x34(1)
L_80295A14:
    lfs 2, 0x30(1)
    li 25, 0x0
    lfs 1, 0x60(29)
    .4byte 0xC002D6D8 # lfs f0, lbl_80540678@sda21(r0)
    fadds 1, 2, 1
    .4byte 0xC3E2D6DC # lfs f31, lbl_8054067C@sda21(r0)
    fadds 0, 1, 0
    stfs 1, 0x30(1)
    stfs 0, 0x30(1)
L_80295A38:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x30
    bl fn_802A1490
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80295A8C
    lwz 27, 0x198(29)
    lwz 28, 0x4(29)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 28
    lbz 0, 0x1(3)
    mr 6, 27
    addi 5, 1, 0x30
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80295A94
L_80295A8C:
    li 30, 0x0
    .4byte 0x4800001C # b .L_80295AAC
L_80295A94:
    lfs 0, 0x30(1)
    addi 25, 25, 0x1
    cmpwi 25, 0x6
    fadds 0, 0, 31
    stfs 0, 0x30(1)
    .4byte 0x4180FF90 # blt .L_80295A38
L_80295AAC:
    clrlwi. 0, 30, 24
    .4byte 0x40820138 # bne .L_80295BE8
    lfs 1, 0x60(29)
    lis 3, lbl_8046C298@ha
    addi 0, 3, lbl_8046C298@l
    li 30, 0x1
    stfs 1, 0x20(1)
    add 25, 0, 31
    addi 31, 25, 0x4
    li 24, 0x0
    lfs 4, 0x64(29)
    addi 26, 25, 0x8
    stfs 4, 0x24(1)
    lfs 2, 0x68(29)
    stfs 2, 0x28(1)
    lfs 3, 0x6c(29)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(29)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(29)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
L_80295B18:
    lwz 5, 0x4(29)
    mr 3, 24
    .4byte 0xC022D6D4 # lfs f1, lbl_80540674@sda21(r0)
    addi 4, 1, 0x20
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x418200A8 # beq .L_80295BDC
    mr 3, 24
    bl fn_8023E724
    lfs 2, 0x0(25)
    addi 4, 1, 0x14
    lfs 1, 0x0(31)
    lfs 0, 0x0(26)
    psq_l 4, 0x0(3), 0, 0
    lfs 3, 0x8(3)
    stfs 0, 0x10(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x1c(1)
    psq_l 0, 0x10(1), 1, 0
    psq_l 3, 0x8(4), 1, 0
    stfs 2, 0x8(1)
    ps_add 0, 3, 0
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    psq_st 4, 0x0(4), 0, 0
    ps_add 1, 4, 1
    psq_st 0, 0x8(4), 1, 0
    psq_st 1, 0x0(4), 0, 0
    bl fn_802A1490
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80295BD8
    lwz 27, 0x198(29)
    lwz 28, 0x4(29)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 28
    lbz 0, 0x1(3)
    mr 6, 27
    addi 5, 1, 0x14
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80295BDC
L_80295BD8:
    li 30, 0x0
L_80295BDC:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FF34 # blt .L_80295B18
L_80295BE8:
    psq_l 1, 0x4c(1), 0, 0
    mr 3, 30
    lfs 0, 0x54(1)
    psq_st 1, 0xc(29), 0, 0
    .4byte 0xC042D6D4 # lfs f2, lbl_80540674@sda21(r0)
    stfs 0, 0x14(29)
    .4byte 0xC022D6E0 # lfs f1, lbl_80540680@sda21(r0)
    stfs 2, 0x3c(29)
    .4byte 0xC002D6E4 # lfs f0, lbl_80540684@sda21(r0)
    stfs 2, 0x40(29)
    stfs 2, 0x44(29)
    stfs 1, 0x60(29)
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    lmw 24, 0x60(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80295C40:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
L_80295C64:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200A8 # beq .L_80295D18
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820098 # bne .L_80295D18
    lwz 0, 0x90(30)
    mr 3, 31
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 29, 0, 4
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x4082006C # bne .L_80295D18
    lwz 29, 0x4(30)
    mr 3, 31
    bl fn_8023E724
    mr 5, 3
    mr 3, 31
    mr 4, 29
    addi 6, 30, 0xc
    li 7, 0x1f
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80295CEC
    addi 0, 31, 0x2bc
    li 3, 0x1
    stbx 3, 30, 0
    .4byte 0x48000030 # b .L_80295D18
L_80295CEC:
    lwz 29, 0x4(30)
    mr 3, 31
    bl fn_8023E724
    mr 5, 3
    mr 3, 31
    mr 4, 29
    addi 6, 30, 0xc
    li 7, 0x21
    bl fn_802317F0
    addi 0, 31, 0x2bc
    stbx 3, 30, 0
L_80295D18:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF44 # blt .L_80295C64
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    mr 31, 3
    lwz 3, 0x4(30)
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    addi 4, 30, 0xc
    li 5, 0x82
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    li 5, 0x83
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    li 5, 0x84
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lbz 0, 0x0(31)
    extsb 0, 0
    cmpwi 0, 0x72
    .4byte 0x4182000C # beq .L_80295DC0
    cmpwi 0, 0x73
    .4byte 0x40820030 # bne .L_80295DEC
L_80295DC0:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    li 5, 0x80
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_80295E14
L_80295DEC:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    li 5, 0x81
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80295E14:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x92
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x2
    mr 5, 30
    li 4, 0x1
    li 3, 0x0
    mtctr 0
L_80295E3C:
    lwz 6, 0x2fc(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80295E5C
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 4, 0x24(6)
    stw 3, 0x2fc(5)
L_80295E5C:
    lwz 6, 0x300(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_80295E7C
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 4, 0x24(6)
    stw 3, 0x300(5)
L_80295E7C:
    addi 5, 5, 0x8
    .4byte 0x4200FFBC # bdnz .L_80295E3C
    mr 29, 30
    li 28, 0x0
    li 31, 0x0
    .4byte 0x48000024 # b .L_80295EB4
L_80295E94:
    bl SpatialRegistry_GetBase
    lwz 4, 0x27c(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80295EAC
    stb 31, 0x11c(3)
L_80295EAC:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_80295EB4:
    lwz 0, 0x2a4(30)
    cmpw 28, 0
    .4byte 0x4180FFD8 # blt .L_80295E94
    li 0, 0x1
    stb 0, 0x2bb(30)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80295EE8:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stmw 26, 0x28(1)
    mr 31, 3
    lwz 4, 0x2c4(3)
    cmpwi 4, 0x0
    .4byte 0x41810018 # bgt .L_80295F3C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000240 # b .L_80296178
L_80295F3C:
    lwz 0, 0x2c8(31)
    subf 0, 4, 0
    cmpwi 0, 0x3c
    .4byte 0x40800150 # bge .L_80296098
    psq_l 0, 0x2d0(31), 0, 0
    lis 30, 0x4330
    lfs 1, 0x2d8(31)
    mr 28, 31
    stw 30, 0x18(1)
    li 27, 0x0
    .4byte 0xCBE2D700 # lfd f31, lbl_805406A0@sda21(r0)
    psq_st 0, 0x3c(31), 0, 0
    .4byte 0xC002D6F0 # lfs f0, lbl_80540690@sda21(r0)
    stfs 1, 0x44(31)
    .4byte 0xC042D6EC # lfs f2, lbl_8054068C@sda21(r0)
    lwz 3, 0x2c4(31)
    lwz 4, 0x2c8(31)
    addi 0, 3, 0x3c
    psq_l 5, 0x3c(31), 0, 0
    subf 0, 4, 0
    psq_l 4, 0x44(31), 1, 0
    xoris 0, 0, 0x8000
    .4byte 0xC3A2D6F4 # lfs f29, lbl_80540694@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC3C2D6F8 # lfs f30, lbl_80540698@sda21(r0)
    lfd 1, 0x18(1)
    fsubs 1, 1, 31
    fdivs 0, 1, 0
    fmuls 3, 2, 0
    ps_muls0 1, 5, 3
    ps_muls0 0, 4, 3
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_80295FE0:
    xoris 0, 27, 0x8000
    stw 30, 0x18(1)
    mr 29, 28
    li 26, 0x0
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmsubs 28, 29, 0, 30
L_80296000:
    lwz 3, 0x2fc(29)
    cmplwi 3, 0x0
    .4byte 0x4182006C # beq .L_80296074
    xoris 4, 26, 0x8000
    lis 0, 0x4330
    stw 4, 0x1c(1)
    addi 4, 1, 0x8
    .4byte 0xC822D700 # lfd f1, lbl_805406A0@sda21(r0)
    li 5, 0x0
    stw 0, 0x18(1)
    li 6, -0x1
    psq_l 2, 0xc(31), 0, 0
    li 7, 0x1
    lfs 3, 0x14(31)
    lfd 0, 0x18(1)
    psq_st 2, 0x0(4), 0, 0
    fsubs 1, 0, 1
    .4byte 0xC042D6F4 # lfs f2, lbl_80540694@sda21(r0)
    .4byte 0xC002D6F8 # lfs f0, lbl_80540698@sda21(r0)
    stfs 3, 0x10(1)
    fmsubs 1, 2, 1, 0
    lfs 2, 0x8(1)
    lfs 3, 0x54(31)
    lfs 0, 0xc(1)
    fmadds 2, 28, 3, 2
    fmadds 0, 1, 3, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_8013CB44
L_80296074:
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x2
    .4byte 0x4180FF80 # blt .L_80296000
    addi 27, 27, 0x1
    addi 28, 28, 0x8
    cmpwi 27, 0x2
    .4byte 0x4180FF50 # blt .L_80295FE0
    .4byte 0x48000070 # b .L_80296104
L_80296098:
    li 0, 0x2
    mr 5, 31
    li 4, 0x1
    li 3, 0x0
    mtctr 0
L_802960AC:
    lwz 6, 0x2fc(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_802960CC
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 4, 0x24(6)
    stw 3, 0x2fc(5)
L_802960CC:
    lwz 6, 0x300(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_802960EC
    lwz 0, 0xf4(6)
    ori 0, 0, 0x1
    stw 0, 0xf4(6)
    stw 4, 0x24(6)
    stw 3, 0x300(5)
L_802960EC:
    addi 5, 5, 0x8
    .4byte 0x4200FFBC # bdnz .L_802960AC
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_80296104:
    li 26, 0x0
L_80296108:
    lwz 0, 0x90(31)
    mr 3, 26
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 30, 0, 4
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x40820030 # bne .L_80296160
    mr 3, 26
    bl fn_80235274
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80296160
    mr 3, 26
    bl fn_8023E724
    mr 5, 3
    mr 3, 26
    li 4, 0x0
    li 6, 0xc
    bl fn_80238548
L_80296160:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFA0 # blt .L_80296108
    lwz 3, 0x2c4(31)
    subi 0, 3, 0x1
    stw 0, 0x2c4(31)
L_80296178:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lmw 26, 0x28(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802961AC:
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
    stmw 26, 0x58(1)
    lis 4, 0x534c
    mr 31, 3
    addi 4, 4, 0x5233
    bl fn_801F2718
    mr. 27, 3
    .4byte 0x41800398 # blt .L_80296588
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820384 # beq .L_80296588
    lhz 0, 0x94(3)
    cmplwi 0, 0x5
    .4byte 0x40820378 # bne .L_80296588
    lfs 0, 0x14(31)
    lis 4, lbl_80539D44@ha
    psq_l 1, 0xc(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0xc(3), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x14(3), 1, 0
    ps_sub 4, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    psq_st 4, 0x2d0(31), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 3, 0x10(1)
    psq_st 4, 0x8(1), 0, 0
    stfs 3, 0x2d8(31)
    psq_l 2, 0x2d0(31), 0, 0
    lfs 30, 0x2d8(31)
    ps_mul 2, 2, 2
    psq_st 4, 0x2c(1), 0, 0
    lfs 0, lbl_80539D44@l(4)
    stfs 3, 0x34(1)
    ps_madd 4, 30, 30, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_802962D8
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8029629C
    fmr 29, 4
    .4byte 0x48000028 # b .L_802962C0
L_8029629C:
    frsqrte 3, 4
    .4byte 0xC042D70C # lfs f2, lbl_805406AC@sda21(r0)
    .4byte 0xC002D710 # lfs f0, lbl_805406B0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_802962C0:
    psq_l 1, 0x2d0(31), 0, 0
    psq_l 0, 0x2d8(31), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x2d0(31), 0, 0
    psq_st 0, 0x2d8(31), 1, 0
L_802962D8:
    psq_l 1, 0x2d0(31), 0, 0
    lis 4, 0x3
    lfs 0, 0x2d8(31)
    mr 3, 31
    addi 4, 4, 0x75
    li 5, 0x0
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    bl fn_801F0E34
    .4byte 0xC3A2D6F4 # lfs f29, lbl_80540694@sda21(r0)
    mr 28, 31
    .4byte 0xCBE2D700 # lfd f31, lbl_805406A0@sda21(r0)
    li 27, 0x0
    .4byte 0xC3C2D6F8 # lfs f30, lbl_80540698@sda21(r0)
    lis 30, 0x4330
L_80296314:
    xoris 0, 27, 0x8000
    stw 30, 0x48(1)
    mr 29, 28
    li 26, 0x0
    stw 0, 0x4c(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 31
    fmsubs 28, 29, 0, 30
L_80296334:
    lwz 0, 0x2fc(29)
    cmplwi 0, 0x0
    .4byte 0x40820080 # bne .L_802963BC
    xoris 3, 26, 0x8000
    lis 0, 0x4330
    stw 3, 0x4c(1)
    addi 4, 1, 0x38
    .4byte 0xC822D700 # lfd f1, lbl_805406A0@sda21(r0)
    li 5, 0x3d3
    stw 0, 0x48(1)
    li 6, 0x0
    psq_l 2, 0xc(31), 0, 0
    li 7, -0x1
    lfs 4, 0x14(31)
    li 8, 0x0
    lfd 0, 0x48(1)
    li 9, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 10, 0x1
    fsubs 1, 0, 1
    .4byte 0xC042D6F4 # lfs f2, lbl_80540694@sda21(r0)
    .4byte 0xC002D6F8 # lfs f0, lbl_80540698@sda21(r0)
    lfs 3, 0x38(1)
    fmsubs 0, 2, 1, 0
    lfs 1, 0x3c(1)
    fadds 2, 3, 28
    stfs 4, 0x40(1)
    fadds 0, 1, 0
    .4byte 0xC022D710 # lfs f1, lbl_805406B0@sda21(r0)
    stfs 2, 0x38(1)
    stfs 0, 0x3c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2fc(29)
L_802963BC:
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x2
    .4byte 0x4180FF6C # blt .L_80296334
    addi 27, 27, 0x1
    addi 28, 28, 0x8
    cmpwi 27, 0x2
    .4byte 0x4180FF3C # blt .L_80296314
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 20
    cntlzw 0, 4
    extrwi 3, 0, 1, 26
    addi 0, 4, 0x7
    neg 3, 3
    andc 29, 0, 3
    bl GetRoomConfigRecord
    .4byte 0xC022D6DC # lfs f1, lbl_8054067C@sda21(r0)
    mr 4, 29
    .4byte 0xC042D6D4 # lfs f2, lbl_80540674@sda21(r0)
    li 5, 0x1
    bl fn_802D79E8
    li 29, 0x0
    mr 28, 31
    mr 30, 29
    .4byte 0x48000024 # b .L_80296440
L_80296420:
    bl SpatialRegistry_GetBase
    lwz 4, 0x26c(28)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80296438
    stb 30, 0x11c(3)
L_80296438:
    addi 28, 28, 0x4
    addi 29, 29, 0x1
L_80296440:
    lwz 0, 0x2a0(31)
    cmpw 29, 0
    .4byte 0x4180FFD8 # blt .L_80296420
    li 29, 0x0
    mr 28, 31
    mr 30, 29
    .4byte 0x48000024 # b .L_8029647C
L_8029645C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x25c(28)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80296474
    stb 30, 0x11c(3)
L_80296474:
    addi 28, 28, 0x4
    addi 29, 29, 0x1
L_8029647C:
    lwz 0, 0x29c(31)
    cmpw 29, 0
    .4byte 0x4180FFD8 # blt .L_8029645C
    li 30, 0x0
    stb 30, 0x24c(31)
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_80296574
    li 0, 0x1
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    stb 0, 0x24c(31)
    mr 27, 31
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    psq_l 1, 0xc(31), 0, 0
    lfs 6, 0x14(31)
    psq_st 1, 0x14(1), 0, 0
    lfs 2, 0x60(31)
    lfs 3, 0x14(1)
    lfs 1, 0x64(31)
    fadds 5, 3, 2
    lfs 2, 0x18(1)
    stfs 6, 0x1c(1)
    fadds 2, 2, 1
    .4byte 0xC3E2D6DC # lfs f31, lbl_8054067C@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0x14(1)
    fadds 1, 2, 4
    stfs 2, 0x18(1)
    stfs 3, 0x14(1)
    frsp 30, 1
    stfs 1, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
L_80296508:
    stfs 30, 0x24(1)
    mr 28, 27
    li 29, 0x0
L_80296514:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x20
    lhz 6, 0x3b0(28)
    li 5, 0x0
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x20
    li 5, 0x1
    li 6, 0x0
    bl fn_802A381C
    lfs 0, 0x24(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 28, 28, 0x2
    fadds 0, 0, 31
    stfs 0, 0x24(1)
    .4byte 0x4180FFC0 # blt .L_80296514
    lfs 0, 0x20(1)
    addi 30, 30, 0x1
    cmpwi 30, 0x6
    addi 27, 27, 0xc
    fadds 0, 0, 31
    stfs 0, 0x20(1)
    .4byte 0x4180FF98 # blt .L_80296508
L_80296574:
    li 3, 0x78
    li 0, 0x1
    stw 3, 0x2c4(31)
    stw 3, 0x2c8(31)
    stb 0, 0x2ba(31)
L_80296588:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    psq_l 28, 0x78(1), 0, 0
    lfd 28, 0x70(1)
    lmw 26, 0x58(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_802965BC:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    mr 30, 3
    lis 3, lbl_8046C238@ha
    stw 29, 0x84(1)
    addi 31, 3, lbl_8046C238@l
    lbz 0, 0x24c(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_802965F8
    lwz 0, 0x2ac(30)
    cmpwi 0, 0x0
    .4byte 0x41820474 # beq .L_80296A68
L_802965F8:
    lbz 0, 0x2bb(30)
    cmplwi 0, 0x1
    .4byte 0x41820468 # beq .L_80296A68
    li 0, -0x1
    addi 9, 1, 0x44
    stw 0, 0x54(1)
    li 10, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_8029667C
L_8029661C:
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
L_8029667C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8029661C
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x54(1)
    .4byte 0xC062D6D4 # lfs f3, lbl_80540674@sda21(r0)
    addi 3, 1, 0x14
    stw 6, 0x58(1)
    stw 6, 0x5c(1)
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
    lfs 1, 0x60(30)
    lfs 2, 0x64(30)
    bl PSMTXTrans
    addi 3, 1, 0x14
    li 0, -0x2
    stw 3, 0x5c(1)
    stb 0, 0x61(1)
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80296744
    li 0, 0x0
    stb 0, 0x64(1)
    lwz 3, 0xc8(30)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x61(1)
    lwz 3, 0xc8(30)
    bl fn_8023CA88
    stb 3, 0x60(1)
L_80296744:
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x408200C0 # bne .L_8029681C
    lbz 0, 0x2b6(30)
    addi 5, 31, 0xa0
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80296774
    addi 5, 31, 0x90
L_80296774:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_802967B8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534d
    addi 4, 4, 0x5020
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_802967B8:
    lbz 3, 0x60(1)
    addi 0, 3, 0x1
    stb 0, 0x60(1)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_8029680C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 31, 0xb0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_8029680C:
    lbz 3, 0x60(1)
    subi 0, 3, 0x1
    stb 0, 0x60(1)
    .4byte 0x48000250 # b .L_80296A68
L_8029681C:
    cmpwi 0, 0x1
    .4byte 0x408201A0 # bne .L_802969C0
    lbz 0, 0x2b7(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8029683C
    addi 5, 31, 0xc0
    addi 29, 31, 0xd0
    .4byte 0x4800000C # b .L_80296844
L_8029683C:
    addi 5, 31, 0xe0
    addi 29, 31, 0xf0
L_80296844:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_80296888
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534d
    addi 4, 4, 0x5020
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_80296888:
    lbz 3, 0x60(1)
    addi 0, 3, 0x1
    stb 0, 0x60(1)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802968DC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534d
    mr 5, 29
    lwz 3, 0xa4(3)
    addi 4, 4, 0x5020
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_802968DC:
    lfs 1, 0xc(1)
    .4byte 0xC002D6E4 # lfs f0, lbl_80540684@sda21(r0)
    lbz 3, 0x60(1)
    fadds 0, 1, 0
    subi 0, 3, 0x1
    stb 0, 0x60(1)
    stfs 0, 0xc(1)
    lbz 0, 0x2b6(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80296910
    addi 5, 31, 0x100
    addi 31, 31, 0x110
    .4byte 0x4800000C # b .L_80296918
L_80296910:
    addi 5, 31, 0x120
    addi 31, 31, 0x130
L_80296918:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_8029695C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534d
    addi 4, 4, 0x5020
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_8029695C:
    lbz 3, 0x60(1)
    addi 0, 3, 0x1
    stb 0, 0x60(1)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_802969B0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534d
    mr 5, 31
    lwz 3, 0xa4(3)
    addi 4, 4, 0x5020
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_802969B0:
    lbz 3, 0x60(1)
    subi 0, 3, 0x1
    stb 0, 0x60(1)
    .4byte 0x480000AC # b .L_80296A68
L_802969C0:
    lwz 0, 0x4(30)
    addi 5, 31, 0x140
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_80296A08
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534d
    addi 4, 4, 0x5020
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_80296A08:
    lbz 3, 0x60(1)
    addi 0, 3, 0x1
    stb 0, 0x60(1)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800040 # bge .L_80296A5C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534d
    addi 4, 3, 0x5020
    addi 5, 31, 0x150
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    lwz 3, 0x20(6)
    addi 6, 1, 0x44
    bl fn_802F6CF4
L_80296A5C:
    lbz 3, 0x60(1)
    subi 0, 3, 0x1
    stb 0, 0x60(1)
L_80296A68:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80296A84:
    stwu 1, -0x240(1)
    mflr 0
    stw 0, 0x244(1)
    stfd 31, 0x230(1)
    psq_st 31, 0x238(1), 0, 0
    stfd 30, 0x220(1)
    psq_st 30, 0x228(1), 0, 0
    stfd 29, 0x210(1)
    psq_st 29, 0x218(1), 0, 0
    stfd 28, 0x200(1)
    psq_st 28, 0x208(1), 0, 0
    stfd 27, 0x1f0(1)
    psq_st 27, 0x1f8(1), 0, 0
    stfd 26, 0x1e0(1)
    psq_st 26, 0x1e8(1), 0, 0
    stmw 26, 0x1c8(1)
    mr 31, 3
    li 26, 0x0
    lfs 0, 0x238(3)
    stfs 0, 0xc(3)
    lfs 0, 0x23c(3)
    stfs 0, 0x10(3)
    lfs 0, 0x240(3)
    stfs 0, 0x14(3)
L_80296AE4:
    lwz 0, 0x90(31)
    mr 3, 26
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 29, 0, 4
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x40820060 # bne .L_80296B6C
    lfs 1, 0x60(31)
    addi 4, 1, 0x1ac
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x1ac(1)
    lfs 4, 0x64(31)
    stfs 4, 0x1b0(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1b4(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x1b8(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x1ac(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1b4(1)
    fadds 0, 3, 2
    stfs 1, 0x1b0(1)
    stfs 0, 0x1b8(1)
    lwz 3, 0x24(3)
    bl fn_8030C058
    .4byte 0x48000010 # b .L_80296B78
L_80296B6C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF70 # blt .L_80296AE4
L_80296B78:
    lbz 0, 0x2bb(31)
    cmplwi 0, 0x1
    .4byte 0x408200AC # bne .L_80296C2C
    li 27, 0x1
    li 28, 0x0
L_80296B8C:
    addi 26, 28, 0x2bc
    lbzx 0, 31, 26
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_80296C08
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80296C08
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4082004C # bne .L_80296C08
    mr 3, 28
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_80296C04
    mr 3, 28
    bl fn_8023E724
    mr 5, 3
    mr 3, 28
    li 4, 0x1
    li 6, 0x0
    bl fn_80238548
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80296C04
    li 0, 0x0
    stbx 0, 31, 26
    .4byte 0x48000008 # b .L_80296C08
L_80296C04:
    li 27, 0x0
L_80296C08:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF7C # blt .L_80296B8C
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    .4byte 0x40821850 # bne .L_8029846C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48001844 # b .L_8029846C
L_80296C2C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182126C # beq .L_80297EA0
    .4byte 0x40800014 # bge .L_80296C4C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80296C58
    .4byte 0x408010F8 # bge .L_80297D3C
    .4byte 0x48001638 # b .L_80298280
L_80296C4C:
    cmpwi 0, 0x4
    .4byte 0x40801630 # bge .L_80298280
    .4byte 0x48000F20 # b .L_80297B74
L_80296C58:
    lfs 1, 0x60(31)
    mr 3, 31
    stfs 1, 0x19c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x1a0(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1a4(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x1a8(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x19c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1a4(1)
    fadds 0, 3, 2
    stfs 1, 0x1a0(1)
    stfs 0, 0x1a8(1)
    bl fn_802984B0
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x408200FC # bne .L_80296DD0
    li 26, 0x0
L_80296CDC:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200D8 # bne .L_80296DC4
    mr 3, 26
    bl fn_80236E3C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200C4 # bne .L_80296DC4
    lwz 5, 0x4(31)
    mr 3, 26
    addi 4, 1, 0x19c
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_80296DC4
    lwz 4, 0x198(31)
    mr 3, 26
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_80296DC4
    li 0, 0x32
    li 28, 0x0
    stw 0, 0x234(31)
    mr 27, 31
    mr 29, 28
    .4byte 0x48000024 # b .L_80296D70
L_80296D50:
    bl SpatialRegistry_GetBase
    lwz 4, 0x26c(27)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80296D68
    stb 29, 0x11c(3)
L_80296D68:
    addi 27, 27, 0x4
    addi 28, 28, 0x1
L_80296D70:
    lwz 0, 0x2a0(31)
    cmpw 28, 0
    .4byte 0x4180FFD8 # blt .L_80296D50
    li 28, 0x0
    mr 27, 31
    mr 29, 28
    .4byte 0x48000024 # b .L_80296DAC
L_80296D8C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x25c(27)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80296DA4
    stb 29, 0x11c(3)
L_80296DA4:
    addi 27, 27, 0x4
    addi 28, 28, 0x1
L_80296DAC:
    lwz 0, 0x29c(31)
    cmpw 28, 0
    .4byte 0x4180FFD8 # blt .L_80296D8C
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_80296DD0
L_80296DC4:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF10 # blt .L_80296CDC
L_80296DD0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x408214A8 # bne .L_80298280
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820CB0 # bne .L_80297A94
    lis 3, 0x4e55
    addi 26, 3, 0x4c4c
    bl SpatialRegistry_GetBase
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    mr 4, 31
    li 5, 0x0
    bl fn_801F82CC
    mr. 28, 3
    .4byte 0x4180001C # blt .L_80296E24
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80296E24
    lwz 26, 0x1a0(3)
L_80296E24:
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80296E48
    lbz 0, 0x2b6(31)
    cmplwi 0, 0x1
    .4byte 0x40820224 # bne .L_8029705C
    lbz 0, 0x2b7(31)
    cmplwi 0, 0x1
    .4byte 0x40820218 # bne .L_8029705C
L_80296E48:
    bl fn_8023A30C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80296E60
    subis 0, 26, 0x4242
    cmplwi 0, 0x4d42
    .4byte 0x40820200 # bne .L_8029705C
L_80296E60:
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 30, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 30, 30, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x408201D0 # bne .L_8029705C
    li 0, 0x32
    stw 0, 0x234(31)
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_80296F80
    li 0, 0x1
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    stb 0, 0x24c(31)
    mr 30, 31
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    li 29, 0x0
    psq_l 1, 0xc(31), 0, 0
    lfs 6, 0x14(31)
    psq_st 1, 0x108(1), 0, 0
    lfs 2, 0x60(31)
    lfs 3, 0x108(1)
    lfs 1, 0x64(31)
    fadds 5, 3, 2
    lfs 2, 0x10c(1)
    stfs 6, 0x110(1)
    fadds 2, 2, 1
    .4byte 0xC342D6DC # lfs f26, lbl_8054067C@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0x108(1)
    fadds 1, 2, 4
    stfs 2, 0x10c(1)
    stfs 3, 0x108(1)
    frsp 27, 1
    stfs 1, 0x10c(1)
    psq_l 1, 0x108(1), 0, 0
    stfs 0, 0x110(1)
    psq_st 1, 0x114(1), 0, 0
    stfs 0, 0x11c(1)
L_80296F14:
    stfs 27, 0x118(1)
    mr 27, 30
    li 28, 0x0
L_80296F20:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x114
    lhz 6, 0x3b0(27)
    li 5, 0x0
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x114
    li 5, 0x1
    li 6, 0x0
    bl fn_802A381C
    lfs 0, 0x118(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 27, 27, 0x2
    fadds 0, 0, 26
    stfs 0, 0x118(1)
    .4byte 0x4180FFC0 # blt .L_80296F20
    lfs 0, 0x114(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 30, 30, 0xc
    fadds 0, 0, 26
    stfs 0, 0x114(1)
    .4byte 0x4180FF98 # blt .L_80296F14
L_80296F80:
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0xf
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    stfs 0, 0x44(31)
    li 30, 0x0
    .4byte 0xC042D6EC # lfs f2, lbl_8054068C@sda21(r0)
    stfs 0, 0x40(31)
    .4byte 0xC062D714 # lfs f3, lbl_805406B4@sda21(r0)
    stfs 0, 0x3c(31)
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
    fsubs 0, 0, 1
    fnmsubs 0, 2, 0, 1
    fadds 0, 3, 0
    stfs 0, 0x44(31)
L_80297000:
    lwz 0, 0x90(31)
    mr 3, 30
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 28, 0, 4
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820024 # bne .L_8029704C
    mr 3, 30
    bl fn_8023B484
    bl GetRoomConfigRecord
    lfs 1, 0x44(31)
    mr 4, 30
    .4byte 0xC042D718 # lfs f2, lbl_805406B8@sda21(r0)
    .4byte 0xC062D70C # lfs f3, lbl_805406AC@sda21(r0)
    bl fn_802D79A4
L_8029704C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFAC # blt .L_80297000
    .4byte 0x48001228 # b .L_80298280
L_8029705C:
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 29, 29, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820374 # bne .L_802973FC
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x40820368 # bne .L_802973FC
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x4082035C # bne .L_802973FC
    lbz 0, 0x2b6(31)
    cmplwi 0, 0x0
    .4byte 0x408201BC # bne .L_80297268
    psq_l 1, 0xc(31), 0, 0
    addi 3, 1, 0x190
    lfs 4, 0x14(31)
    li 4, 0x0
    .4byte 0xC002D71C # lfs f0, lbl_805406BC@sda21(r0)
    psq_st 1, 0x0(3), 0, 0
    .4byte 0xC022D6D8 # lfs f1, lbl_80540678@sda21(r0)
    lfs 3, 0x194(1)
    lfs 2, 0x190(1)
    fadds 3, 3, 0
    .4byte 0xC002D6DC # lfs f0, lbl_8054067C@sda21(r0)
    fsubs 1, 2, 1
    stfs 4, 0x198(1)
    stfs 3, 0x194(1)
    stfs 1, 0x190(1)
    psq_l 1, 0x0(3), 0, 0
    stfs 4, 0x18c(1)
    psq_st 1, 0x184(1), 0, 0
    lfs 1, 0x184(1)
    fadds 0, 1, 0
    stfs 0, 0x184(1)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x19e
    .4byte 0x4182004C # beq .L_8029715C
    addi 3, 1, 0x184
    li 4, 0x0
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x19f
    .4byte 0x41820034 # beq .L_8029715C
    addi 3, 1, 0x190
    li 4, 0x0
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x338
    .4byte 0x4182001C # beq .L_8029715C
    addi 3, 1, 0x184
    li 4, 0x0
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x339
    .4byte 0x40820110 # bne .L_80297268
L_8029715C:
    psq_l 0, 0xc(31), 0, 0
    mr 26, 31
    lfs 6, 0x14(31)
    li 29, 0x0
    psq_st 0, 0xf0(1), 0, 0
    lfs 2, 0x60(31)
    lfs 3, 0xf0(1)
    lfs 1, 0xf4(1)
    lfs 0, 0x64(31)
    fadds 5, 3, 2
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    fadds 2, 1, 0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0xf0(1)
    .4byte 0xC3A2D6DC # lfs f29, lbl_8054067C@sda21(r0)
    fadds 1, 2, 4
    stfs 2, 0xf4(1)
    stfs 6, 0xf8(1)
    frsp 30, 1
    stfs 3, 0xf0(1)
    stfs 1, 0xf4(1)
    psq_l 1, 0xf0(1), 0, 0
    stfs 0, 0xf8(1)
    psq_st 1, 0xfc(1), 0, 0
    stfs 0, 0x104(1)
L_802971C4:
    stfs 30, 0x100(1)
    mr 27, 26
    li 28, 0x0
L_802971D0:
    addi 3, 1, 0xfc
    li 4, 0x1
    bl fn_80226850
    sth 3, 0x320(27)
    addi 3, 1, 0xfc
    li 4, 0x0
    bl fn_80226850
    sth 3, 0x368(27)
    lbz 0, 0x2b5(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80297224
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80297210
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8029721C
L_80297210:
    li 0, 0x78
    sth 0, 0x3b0(27)
    .4byte 0x4800000C # b .L_80297224
L_8029721C:
    li 0, 0x360
    sth 0, 0x3b0(27)
L_80297224:
    lfs 0, 0x100(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 27, 27, 0x2
    fadds 0, 0, 29
    stfs 0, 0x100(1)
    .4byte 0x4180FF94 # blt .L_802971D0
    lfs 0, 0xfc(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 26, 26, 0xc
    fadds 0, 0, 29
    stfs 0, 0xfc(1)
    .4byte 0x4180FF6C # blt .L_802971C4
    li 0, 0x1
    stb 0, 0x2b5(31)
    stb 0, 0x2b6(31)
L_80297268:
    lbz 0, 0x2b7(31)
    cmplwi 0, 0x0
    .4byte 0x4082018C # bne .L_802973FC
    psq_l 1, 0xc(31), 0, 0
    addi 3, 1, 0x178
    lfs 4, 0x14(31)
    li 4, 0x0
    .4byte 0xC002D71C # lfs f0, lbl_805406BC@sda21(r0)
    psq_st 1, 0x0(3), 0, 0
    .4byte 0xC022D6D8 # lfs f1, lbl_80540678@sda21(r0)
    lfs 3, 0x17c(1)
    lfs 2, 0x178(1)
    fsubs 3, 3, 0
    .4byte 0xC002D6DC # lfs f0, lbl_8054067C@sda21(r0)
    fsubs 1, 2, 1
    stfs 4, 0x180(1)
    stfs 3, 0x17c(1)
    stfs 1, 0x178(1)
    psq_l 1, 0x0(3), 0, 0
    stfs 4, 0x174(1)
    psq_st 1, 0x16c(1), 0, 0
    lfs 1, 0x16c(1)
    fadds 0, 1, 0
    stfs 0, 0x16c(1)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x32a
    .4byte 0x4182001C # beq .L_802972F0
    addi 3, 1, 0x16c
    li 4, 0x0
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x32b
    .4byte 0x40820110 # bne .L_802973FC
L_802972F0:
    psq_l 0, 0xc(31), 0, 0
    mr 27, 31
    lfs 6, 0x14(31)
    li 29, 0x0
    psq_st 0, 0xd8(1), 0, 0
    lfs 2, 0x60(31)
    lfs 3, 0xd8(1)
    lfs 1, 0xdc(1)
    lfs 0, 0x64(31)
    fadds 5, 3, 2
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    fadds 2, 1, 0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0xd8(1)
    .4byte 0xC3A2D6DC # lfs f29, lbl_8054067C@sda21(r0)
    fadds 1, 2, 4
    stfs 2, 0xdc(1)
    stfs 6, 0xe0(1)
    frsp 30, 1
    stfs 3, 0xd8(1)
    stfs 1, 0xdc(1)
    psq_l 1, 0xd8(1), 0, 0
    stfs 0, 0xe0(1)
    psq_st 1, 0xe4(1), 0, 0
    stfs 0, 0xec(1)
L_80297358:
    stfs 30, 0xe8(1)
    mr 26, 27
    li 28, 0x0
L_80297364:
    addi 3, 1, 0xe4
    li 4, 0x1
    bl fn_80226850
    sth 3, 0x320(26)
    addi 3, 1, 0xe4
    li 4, 0x0
    bl fn_80226850
    sth 3, 0x368(26)
    lbz 0, 0x2b5(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_802973B8
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802973A4
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802973B0
L_802973A4:
    li 0, 0x78
    sth 0, 0x3b0(26)
    .4byte 0x4800000C # b .L_802973B8
L_802973B0:
    li 0, 0x360
    sth 0, 0x3b0(26)
L_802973B8:
    lfs 0, 0xe8(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 29
    stfs 0, 0xe8(1)
    .4byte 0x4180FF94 # blt .L_80297364
    lfs 0, 0xe4(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 27, 27, 0xc
    fadds 0, 0, 29
    stfs 0, 0xe4(1)
    .4byte 0x4180FF6C # blt .L_80297358
    li 0, 0x1
    stb 0, 0x2b5(31)
    stb 0, 0x2b7(31)
L_802973FC:
    lbz 0, 0x2ba(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80297410
    mr 3, 31
    bl fn_802961AC
L_80297410:
    lbz 0, 0x2ba(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80297424
    mr 3, 31
    bl fn_80295EE8
L_80297424:
    lbz 0, 0x2ba(31)
    cmplwi 0, 0x0
    .4byte 0x40820E54 # bne .L_80298280
    mr 3, 31
    bl fn_80298978
    mr 26, 31
    li 28, 0x0
    .4byte 0x480000A8 # b .L_802974E8
L_80297444:
    bl SpatialRegistry_GetBase
    lwz 4, 0x26c(26)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182008C # beq .L_802974E0
    psq_l 3, 0x250(31), 0, 0
    lis 4, lbl_80539D44@ha
    lfs 26, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    ps_madd 2, 26, 26, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820054 # bne .L_802974E0
    .4byte 0xC082D720 # lfs f4, lbl_805406C0@sda21(r0)
    li 4, 0x0
    .4byte 0xC062D724 # lfs f3, lbl_805406C4@sda21(r0)
    stfs 4, 0xc8(1)
    stfs 4, 0xcc(1)
    stfs 3, 0xd0(1)
    stfs 3, 0xd4(1)
    lfs 0, 0xc(3)
    fadds 1, 4, 0
    fadds 0, 3, 0
    stfs 1, 0xc8(1)
    lfs 2, 0x10(3)
    addi 3, 1, 0xc8
    fadds 1, 4, 2
    stfs 0, 0xd0(1)
    fadds 0, 3, 2
    stfs 1, 0xcc(1)
    stfs 0, 0xd4(1)
    lwz 5, 0x198(31)
    bl fn_80239914
L_802974E0:
    addi 26, 26, 0x4
    addi 28, 28, 0x1
L_802974E8:
    lwz 0, 0x2a0(31)
    cmpw 28, 0
    .4byte 0x4180FF54 # blt .L_80297444
    lfs 26, 0x60(31)
    li 28, 0x0
    lfs 0, 0xc(31)
    lfs 30, 0x68(31)
    lfs 29, 0x64(31)
    fadds 26, 26, 0
    lfs 1, 0x10(31)
    fadds 30, 30, 0
    lfs 31, 0x6c(31)
    fadds 29, 29, 1
    fadds 31, 31, 1
L_80297520:
    mr 3, 28
    bl fn_8022D75C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820098 # bne .L_802975C8
    mr 3, 28
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x40820050 # bne .L_80297594
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 1, 26
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_80297588
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 29
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80297588
    fcmpo cr0, 1, 30
    .4byte 0x40800010 # bge .L_80297588
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_80297588
    li 0, 0x1
L_80297588:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x41820030 # beq .L_802975C0
L_80297594:
    lwz 0, 0x90(31)
    mr 3, 28
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 29, 0, 4
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x4082000C # bne .L_802975C8
L_802975C0:
    li 0, 0x0
    .4byte 0x48000014 # b .L_802975D8
L_802975C8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF50 # blt .L_80297520
    li 0, 0x1
L_802975D8:
    stb 0, 0x2b4(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80297600
    lbz 0, 0x2b6(31)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_80297640
    lbz 0, 0x2b7(31)
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_80297640
L_80297600:
    mr 3, 31
    bl fn_8029A974
    mr 3, 31
    bl fn_8029A494
    mr 3, 31
    bl fn_80299FB0
    mr 3, 31
    bl fn_80299AD0
    mr 3, 31
    bl fn_80299720
    mr 3, 31
    bl fn_80299374
    mr 3, 31
    bl fn_80298FC4
    mr 3, 31
    bl fn_80298C18
L_80297640:
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 28, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 28, 28, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x41820200 # beq .L_8029786C
    lwz 0, 0x244(31)
    cmpwi 0, 0x1
    .4byte 0x4082013C # bne .L_802977B4
    lwz 3, 0x310(31)
    cmplwi 3, 0x0
    .4byte 0x40820118 # bne .L_8029779C
    lfs 1, 0x250(31)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802976A4
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_802976BC
L_802976A4:
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_802976C4
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x4082000C # bne .L_802976C4
L_802976BC:
    li 30, 0x316
    .4byte 0x480000AC # b .L_8029776C
L_802976C4:
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802976DC
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x4182001C # beq .L_802976F4
L_802976DC:
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_802976FC
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802976FC
L_802976F4:
    li 30, 0x317
    .4byte 0x48000074 # b .L_8029776C
L_802976FC:
    lfs 1, 0x254(31)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80297718
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80297730
L_80297718:
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_80297738
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x4082000C # bne .L_80297738
L_80297730:
    li 30, 0x318
    .4byte 0x48000038 # b .L_8029776C
L_80297738:
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80297750
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x4182001C # beq .L_80297768
L_80297750:
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8029776C
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_8029776C
L_80297768:
    li 30, 0x315
L_8029776C:
    lwz 3, 0x4(31)
    mr 5, 30
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x310(31)
    .4byte 0x4800015C # b .L_802978F4
L_8029779C:
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x48000144 # b .L_802978F4
L_802977B4:
    .4byte 0x80A2D6B8 # lwz r5, lbl_80540658@sda21(r0)
    .4byte 0x8082D6BC # lwz r4, lbl_8054065C@sda21(r0)
    .4byte 0x8062D6C0 # lwz r3, lbl_80540660@sda21(r0)
    .4byte 0x8002D6C4 # lwz r0, lbl_80540664@sda21(r0)
    stw 5, 0x14(1)
    stw 4, 0x18(1)
    stw 3, 0xc(1)
    stw 0, 0x10(1)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    mr 26, 31
    lbz 30, 0x31f2(3)
    addi 27, 1, 0x14
    addi 28, 1, 0xc
    li 29, 0x0
L_802977F0:
    lwz 3, 0x310(26)
    cmplwi 3, 0x0
    .4byte 0x40820044 # bne .L_8029783C
    clrlwi 0, 30, 24
    lhz 5, 0x0(27)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80297810
    lhz 5, 0x0(28)
L_80297810:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x310(26)
    .4byte 0x48000018 # b .L_80297850
L_8029783C:
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_80297850:
    addi 29, 29, 0x1
    addi 27, 27, 0x2
    cmpwi 29, 0x4
    addi 28, 28, 0x2
    addi 26, 26, 0x4
    .4byte 0x4180FF8C # blt .L_802977F0
    .4byte 0x4800008C # b .L_802978F4
L_8029786C:
    lwz 5, 0x310(31)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80297894
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x310(31)
L_80297894:
    lwz 5, 0x314(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_802978B4
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x314(31)
L_802978B4:
    lwz 5, 0x318(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_802978D4
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x318(31)
L_802978D4:
    lwz 5, 0x31c(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_802978F4
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x31c(31)
L_802978F4:
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 27, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 27, 27, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820130 # bne .L_80297A50
    lwz 3, 0x2ac(31)
    cmpwi 3, 0x0
    .4byte 0x4081014C # ble .L_80297A78
    subi 0, 3, 0x4
    stw 0, 0x2ac(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x41810138 # bgt .L_80297A78
    li 29, 0x0
    stw 29, 0x2ac(31)
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x41820124 # beq .L_80297A78
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x41810118 # bgt .L_80297A78
    psq_l 0, 0xc(31), 0, 0
    mr 27, 31
    lfs 6, 0x14(31)
    psq_st 0, 0xb0(1), 0, 0
    lfs 2, 0x60(31)
    lfs 3, 0xb0(1)
    lfs 1, 0xb4(1)
    fadds 5, 3, 2
    lfs 0, 0x64(31)
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    fadds 2, 1, 0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0xb0(1)
    fadds 1, 2, 4
    .4byte 0xC342D6DC # lfs f26, lbl_8054067C@sda21(r0)
    stfs 2, 0xb4(1)
    stfs 6, 0xb8(1)
    frsp 27, 1
    stfs 3, 0xb0(1)
    stfs 1, 0xb4(1)
    psq_l 1, 0xb0(1), 0, 0
    stfs 0, 0xb8(1)
    psq_st 1, 0xbc(1), 0, 0
    stfs 0, 0xc4(1)
L_802979C8:
    stfs 27, 0xc0(1)
    mr 26, 27
    li 28, 0x0
L_802979D4:
    addi 3, 1, 0xbc
    li 4, 0x0
    bl fn_80226850
    sth 3, 0x3b0(26)
    addi 4, 1, 0xbc
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lhz 6, 0x368(26)
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0xbc
    lhz 6, 0x320(26)
    li 5, 0x1
    bl fn_802A381C
    lfs 0, 0xc0(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 26
    stfs 0, 0xc0(1)
    .4byte 0x4180FFB0 # blt .L_802979D4
    lfs 0, 0xbc(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 27, 27, 0xc
    fadds 0, 0, 26
    stfs 0, 0xbc(1)
    .4byte 0x4180FF88 # blt .L_802979C8
    li 0, 0x0
    stb 0, 0x24c(31)
    .4byte 0x4800002C # b .L_80297A78
L_80297A50:
    lwz 3, 0x2ac(31)
    cmpwi 3, 0x80
    .4byte 0x40800020 # bge .L_80297A78
    addi 0, 3, 0x8
    stw 0, 0x2ac(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x80
    .4byte 0x4180000C # blt .L_80297A78
    li 0, 0x80
    stw 0, 0x2ac(31)
L_80297A78:
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x40810800 # ble .L_80298280
    mr 3, 31
    li 4, 0x6
    bl fn_801F2B20
    .4byte 0x480007F0 # b .L_80298280
L_80297A94:
    lbz 0, 0x2ba(31)
    cmplwi 0, 0x0
    .4byte 0x408200C8 # bne .L_80297B64
    mr 3, 31
    bl fn_80298978
    mr 26, 31
    li 28, 0x0
    .4byte 0x480000A8 # b .L_80297B58
L_80297AB4:
    bl SpatialRegistry_GetBase
    lwz 4, 0x26c(26)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182008C # beq .L_80297B50
    psq_l 3, 0x250(31), 0, 0
    lis 4, lbl_80539D44@ha
    lfs 26, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    ps_madd 2, 26, 26, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820054 # bne .L_80297B50
    .4byte 0xC082D720 # lfs f4, lbl_805406C0@sda21(r0)
    li 4, 0x0
    .4byte 0xC062D724 # lfs f3, lbl_805406C4@sda21(r0)
    stfs 4, 0xa0(1)
    stfs 4, 0xa4(1)
    stfs 3, 0xa8(1)
    stfs 3, 0xac(1)
    lfs 0, 0xc(3)
    fadds 1, 4, 0
    fadds 0, 3, 0
    stfs 1, 0xa0(1)
    lfs 2, 0x10(3)
    addi 3, 1, 0xa0
    fadds 1, 4, 2
    stfs 0, 0xa8(1)
    fadds 0, 3, 2
    stfs 1, 0xa4(1)
    stfs 0, 0xac(1)
    lwz 5, 0x198(31)
    bl fn_80239914
L_80297B50:
    addi 26, 26, 0x4
    addi 28, 28, 0x1
L_80297B58:
    lwz 0, 0x2a0(31)
    cmpw 28, 0
    .4byte 0x4180FF54 # blt .L_80297AB4
L_80297B64:
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000710 # b .L_80298280
L_80297B74:
    mr 3, 31
    bl fn_802984B0
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    .4byte 0xC0A2D6D4 # lfs f5, lbl_80540674@sda21(r0)
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 5
    .4byte 0x40810018 # ble .L_80297BC0
    lfs 1, 0x44(31)
    .4byte 0xC002D718 # lfs f0, lbl_805406B8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x480006C4 # b .L_80298280
L_80297BC0:
    cror eq, lt, eq
    .4byte 0x408206BC # bne .L_80298280
    stfs 5, 0x14(31)
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x418200F8 # beq .L_80297CCC
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x418100EC # bgt .L_80297CCC
    psq_l 0, 0xc(31), 0, 0
    mr 27, 31
    lfs 6, 0x14(31)
    li 29, 0x0
    psq_st 0, 0x88(1), 0, 0
    lfs 2, 0x60(31)
    lfs 3, 0x88(1)
    lfs 0, 0x64(31)
    lfs 1, 0x8c(1)
    fadds 4, 3, 2
    .4byte 0xC062D6D8 # lfs f3, lbl_80540678@sda21(r0)
    fadds 1, 1, 0
    stfs 6, 0x90(1)
    fadds 2, 4, 3
    .4byte 0xC342D6DC # lfs f26, lbl_8054067C@sda21(r0)
    stfs 4, 0x88(1)
    fadds 0, 1, 3
    stfs 1, 0x8c(1)
    stfs 2, 0x88(1)
    frsp 27, 0
    stfs 0, 0x8c(1)
    psq_l 0, 0x88(1), 0, 0
    stfs 5, 0x90(1)
    psq_st 0, 0x94(1), 0, 0
    stfs 5, 0x9c(1)
L_80297C48:
    stfs 27, 0x98(1)
    mr 26, 27
    li 28, 0x0
L_80297C54:
    addi 3, 1, 0x94
    li 4, 0x0
    bl fn_80226850
    sth 3, 0x3b0(26)
    addi 4, 1, 0x94
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lhz 6, 0x368(26)
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x94
    lhz 6, 0x320(26)
    li 5, 0x1
    bl fn_802A381C
    lfs 0, 0x98(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 26
    stfs 0, 0x98(1)
    .4byte 0x4180FFB0 # blt .L_80297C54
    lfs 0, 0x94(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 27, 27, 0xc
    fadds 0, 0, 26
    stfs 0, 0x94(1)
    .4byte 0x4180FF88 # blt .L_80297C48
    li 0, 0x0
    stb 0, 0x24c(31)
L_80297CCC:
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 20
    cntlzw 0, 4
    extrwi 3, 0, 1, 26
    addi 0, 4, 0x7
    neg 3, 3
    andc 28, 0, 3
    bl GetRoomConfigRecord
    .4byte 0xC022D6D8 # lfs f1, lbl_80540678@sda21(r0)
    mr 4, 28
    .4byte 0xC042D6D4 # lfs f2, lbl_80540674@sda21(r0)
    li 5, 0x1
    bl fn_802D79E8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    li 5, 0x263
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    li 0, 0x3c
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x48000548 # b .L_80298280
L_80297D3C:
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820530 # bne .L_80298280
    lwz 0, 0x30c(31)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_80297DA4
    lwz 3, 0xc8(31)
    bl fn_8023E7B0
    psq_l 2, 0x0(3), 0, 0
    addi 4, 1, 0x160
    lfs 0, 0x8(3)
    li 5, 0x27e
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    li 6, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x168(1)
    li 10, 0x1
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x30c(31)
L_80297DA4:
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_80297E8C
    li 0, 0x1
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    stb 0, 0x24c(31)
    mr 27, 31
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    li 29, 0x0
    psq_l 1, 0xc(31), 0, 0
    lfs 6, 0x14(31)
    psq_st 1, 0x70(1), 0, 0
    lfs 2, 0x60(31)
    lfs 3, 0x70(1)
    lfs 1, 0x64(31)
    fadds 5, 3, 2
    lfs 2, 0x74(1)
    stfs 6, 0x78(1)
    fadds 2, 2, 1
    .4byte 0xC342D6DC # lfs f26, lbl_8054067C@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0x70(1)
    fadds 1, 2, 4
    stfs 2, 0x74(1)
    stfs 3, 0x70(1)
    frsp 27, 1
    stfs 1, 0x74(1)
    psq_l 1, 0x70(1), 0, 0
    stfs 0, 0x78(1)
    psq_st 1, 0x7c(1), 0, 0
    stfs 0, 0x84(1)
L_80297E20:
    stfs 27, 0x80(1)
    mr 26, 27
    li 28, 0x0
L_80297E2C:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x7c
    lhz 6, 0x3b0(26)
    li 5, 0x0
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x7c
    li 5, 0x1
    li 6, 0x0
    bl fn_802A381C
    lfs 0, 0x80(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 26
    stfs 0, 0x80(1)
    .4byte 0x4180FFC0 # blt .L_80297E2C
    lfs 0, 0x7c(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 27, 27, 0xc
    fadds 0, 0, 26
    stfs 0, 0x7c(1)
    .4byte 0x4180FF98 # blt .L_80297E20
L_80297E8C:
    li 3, 0x3c
    li 0, 0x2
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x480003E4 # b .L_80298280
L_80297EA0:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4182024C # beq .L_802980F4
    .4byte 0xC362D728 # lfs f27, lbl_805406C8@sda21(r0)
    mr 26, 31
    .4byte 0xC342D714 # lfs f26, lbl_805406B4@sda21(r0)
    li 27, 0x0
    .4byte 0x4800006C # b .L_80297F28
L_80297EC0:
    stfs 27, 0x150(1)
    addi 3, 1, 0x150
    stfs 27, 0x154(1)
    stfs 26, 0x158(1)
    stfs 26, 0x15c(1)
    lfs 0, 0x2dc(26)
    fadds 1, 27, 0
    fadds 0, 26, 0
    stfs 1, 0x150(1)
    lfs 2, 0x2e0(26)
    fadds 1, 27, 2
    stfs 0, 0x158(1)
    fadds 0, 26, 2
    stfs 1, 0x154(1)
    stfs 0, 0x15c(1)
    lwz 0, 0x90(31)
    lwz 5, 0x198(31)
    extrwi 6, 0, 5, 20
    cntlzw 0, 6
    extrwi 4, 0, 1, 26
    addi 0, 6, 0x7
    neg 4, 4
    andc 4, 0, 4
    bl fn_80239914
    addi 26, 26, 0x8
    addi 27, 27, 0x1
L_80297F28:
    lwz 0, 0x29c(31)
    cmpw 27, 0
    .4byte 0x4180FF90 # blt .L_80297EC0
    lwz 3, 0xc8(31)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    li 5, 0x0
    lis 4, lbl_80539D44@ha
    .4byte 0xC042D708 # lfs f2, lbl_805406A8@sda21(r0)
    stfs 0, 0xc(31)
    mr 6, 5
    mr 0, 5
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    stfs 0, 0x14(31)
    lfs 0, lbl_80539D44@l(4)
    lfs 1, 0xc(31)
    fmuls 2, 2, 0
    lfs 0, 0x238(31)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80297F9C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80297F9C
    li 0, 0x1
L_80297F9C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80297FDC
    lfs 1, 0x10(31)
    li 0, 0x0
    lfs 0, 0x23c(31)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80297FD0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80297FD0
    li 0, 0x1
L_80297FD0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80297FDC
    li 6, 0x1
L_80297FDC:
    clrlwi. 0, 6, 24
    .4byte 0x4182003C # beq .L_8029801C
    lfs 1, 0x14(31)
    li 0, 0x0
    lfs 0, 0x240(31)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80298010
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80298010
    li 0, 0x1
L_80298010:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8029801C
    li 5, 0x1
L_8029801C:
    clrlwi. 0, 5, 24
    .4byte 0x40820068 # bne .L_80298088
    li 26, 0x0
L_80298028:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8029807C
    lwz 0, 0x90(31)
    mr 3, 26
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 28, 0, 4
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x4082001C # bne .L_8029807C
    bl GetRoomConfigRecord
    .4byte 0xC022D72C # lfs f1, lbl_805406CC@sda21(r0)
    mr 4, 26
    .4byte 0xC042D730 # lfs f2, lbl_805406D0@sda21(r0)
    .4byte 0xC062D6E8 # lfs f3, lbl_80540688@sda21(r0)
    bl fn_802D79A4
L_8029807C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFA4 # blt .L_80298028
L_80298088:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x408101F0 # ble .L_80298280
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_802980CC
    lwz 4, 0x30c(31)
    cmplwi 4, 0x0
    .4byte 0x418201D0 # beq .L_80298280
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
    .4byte 0x480001B8 # b .L_80298280
L_802980CC:
    lwz 3, 0xc8(31)
    bl fn_8023E7B0
    lwz 4, 0x30c(31)
    lfs 0, 0x0(3)
    stfs 0, 0xa4(4)
    lfs 0, 0x4(3)
    stfs 0, 0xa8(4)
    lfs 0, 0x8(3)
    stfs 0, 0xac(4)
    .4byte 0x48000190 # b .L_80298280
L_802980F4:
    lwz 4, 0x30c(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80298114
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80298114:
    lfs 2, 0x44(31)
    .4byte 0xC022D734 # lfs f1, lbl_805406D4@sda21(r0)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
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
    .4byte 0x40800084 # bge .L_802981D4
    li 26, 0x0
L_80298158:
    lwz 0, 0x90(31)
    mr 3, 26
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 28, 0, 4
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820030 # bne .L_802981B0
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_802981B0
    mr 3, 26
    bl fn_8023E724
    mr 5, 3
    mr 3, 26
    li 4, 0x1
    li 6, 0x0
    bl fn_80238548
L_802981B0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFA0 # blt .L_80298158
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000B0 # b .L_80298280
L_802981D4:
    lwz 5, 0xc8(31)
    mr 3, 31
    li 4, 0x0
    li 6, 0x6
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80298204
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_80298280
L_80298204:
    li 26, 0x0
L_80298208:
    lwz 0, 0x90(31)
    mr 3, 26
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 4, 0, 1, 26
    addi 0, 5, 0x7
    neg 4, 4
    andc 28, 0, 4
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820030 # bne .L_80298260
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80298260
    mr 3, 26
    bl fn_8023E724
    mr 5, 3
    mr 3, 26
    li 4, 0x1
    li 6, 0x0
    bl fn_80238548
L_80298260:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFA0 # blt .L_80298208
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80298280:
    lfs 0, 0x14(31)
    lis 3, lbl_80539D44@ha
    psq_l 1, 0xc(31), 0, 0
    stfs 0, 0x48(1)
    psq_l 3, 0x18(31), 0, 0
    psq_l 2, 0x48(1), 1, 0
    psq_l 0, 0x20(31), 1, 0
    ps_sub 27, 1, 3
    psq_st 1, 0x40(1), 0, 0
    ps_sub 2, 2, 0
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 27, 27
    psq_st 27, 0x40(1), 0, 0
    fmuls 0, 1, 0
    psq_st 2, 0x48(1), 1, 0
    lfs 4, 0x48(1)
    psq_st 27, 0x138(1), 0, 0
    frsp 2, 4
    stfs 4, 0x140(1)
    ps_madd 1, 2, 2, 3
    psq_st 27, 0x144(1), 0, 0
    stfs 4, 0x14c(1)
    ps_sum0 1, 1, 3, 3
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4182016C # beq .L_80298454
    frsp 26, 2
    psq_st 27, 0x12c(1), 0, 0
    mr 26, 31
    li 28, 0x0
    stfs 2, 0x134(1)
    .4byte 0x48000054 # b .L_80298354
L_80298304:
    psq_st 27, 0x58(1), 0, 0
    stfs 26, 0x60(1)
    bl SpatialRegistry_GetBase
    lwz 4, 0x25c(26)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_8029834C
    ps_mr 1, 27
    psq_l 2, 0x238(3), 0, 0
    frsp 0, 26
    ps_add 2, 2, 1
    psq_st 1, 0x34(1), 0, 0
    stfs 0, 0x3c(1)
    psq_st 2, 0x238(3), 0, 0
    psq_l 0, 0x3c(1), 1, 0
    psq_l 1, 0x240(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x240(3), 1, 0
L_8029834C:
    addi 26, 26, 0x4
    addi 28, 28, 0x1
L_80298354:
    lwz 0, 0x29c(31)
    cmpw 28, 0
    .4byte 0x4180FFA8 # blt .L_80298304
    psq_l 27, 0x12c(1), 0, 0
    mr 26, 31
    lfs 26, 0x134(1)
    li 28, 0x0
    .4byte 0x48000054 # b .L_802983C4
L_80298374:
    psq_st 27, 0x64(1), 0, 0
    stfs 26, 0x6c(1)
    bl SpatialRegistry_GetBase
    lwz 4, 0x26c(26)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_802983BC
    ps_mr 1, 27
    psq_l 2, 0xc(3), 0, 0
    frsp 0, 26
    ps_add 2, 2, 1
    psq_st 1, 0x28(1), 0, 0
    stfs 0, 0x30(1)
    psq_st 2, 0xc(3), 0, 0
    psq_l 0, 0x30(1), 1, 0
    psq_l 1, 0x14(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(3), 1, 0
L_802983BC:
    addi 26, 26, 0x4
    addi 28, 28, 0x1
L_802983C4:
    lwz 0, 0x2a0(31)
    cmpw 28, 0
    .4byte 0x4180FFA8 # blt .L_80298374
    psq_l 1, 0x144(1), 0, 0
    mr 26, 31
    lfs 0, 0x14c(1)
    li 28, 0x0
    psq_st 1, 0x120(1), 0, 0
    stfs 0, 0x128(1)
    .4byte 0x48000060 # b .L_80298448
L_802983EC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x27c(26)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_80298440
    lfs 0, 0x14(3)
    psq_l 1, 0xc(3), 0, 0
    stfs 0, 0x24(1)
    psq_l 3, 0x120(1), 0, 0
    psq_l 2, 0x24(1), 1, 0
    psq_l 0, 0x128(1), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x1c(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(3), 0, 0
    psq_st 0, 0x24(1), 1, 0
    lfs 0, 0x24(1)
    psq_st 3, 0x1c(1), 0, 0
    psq_st 3, 0x4c(1), 0, 0
    stfs 0, 0x54(1)
    stfs 0, 0x14(3)
L_80298440:
    addi 26, 26, 0x4
    addi 28, 28, 0x1
L_80298448:
    lwz 0, 0x2a4(31)
    cmpw 28, 0
    .4byte 0x4180FF9C # blt .L_802983EC
L_80298454:
    lfs 0, 0xc(31)
    stfs 0, 0x238(31)
    lfs 0, 0x10(31)
    stfs 0, 0x23c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x240(31)
L_8029846C:
    psq_l 31, 0x238(1), 0, 0
    lfd 31, 0x230(1)
    psq_l 30, 0x228(1), 0, 0
    lfd 30, 0x220(1)
    psq_l 29, 0x218(1), 0, 0
    lfd 29, 0x210(1)
    psq_l 28, 0x208(1), 0, 0
    lfd 28, 0x200(1)
    psq_l 27, 0x1f8(1), 0, 0
    lfd 27, 0x1f0(1)
    psq_l 26, 0x1e8(1), 0, 0
    lfd 26, 0x1e0(1)
    lmw 26, 0x1c8(1)
    lwz 0, 0x244(1)
    mtlr 0
    addi 1, 1, 0x240
    blr

fn_802984B0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    lwz 0, 0x2b0(3)
    cmpwi 0, 0x1
    .4byte 0x41820088 # beq .L_80298554
    .4byte 0x40800010 # bge .L_802984E0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802984EC
    .4byte 0x480001FC # b .L_802986D8
L_802984E0:
    cmpwi 0, 0x3
    .4byte 0x408001F4 # bge .L_802986D8
    .4byte 0x48000128 # b .L_80298610
L_802984EC:
    lfs 1, 0x60(31)
    addi 3, 1, 0x58
    .4byte 0xC002D71C # lfs f0, lbl_805406BC@sda21(r0)
    stfs 1, 0x58(1)
    lfs 5, 0x64(31)
    stfs 5, 0x5c(1)
    lfs 3, 0x68(31)
    stfs 3, 0x60(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x64(1)
    lfs 2, 0xc(31)
    fadds 1, 1, 2
    fadds 2, 3, 2
    stfs 1, 0x58(1)
    lfs 3, 0x10(31)
    fadds 1, 4, 3
    stfs 2, 0x60(1)
    fadds 2, 5, 3
    fsubs 0, 1, 0
    stfs 1, 0x64(1)
    stfs 2, 0x5c(1)
    stfs 0, 0x64(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    .4byte 0x48000188 # b .L_802986D8
L_80298554:
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    addi 3, 1, 0x58
    lfs 4, 0x64(31)
    lfs 1, 0x60(31)
    fadds 3, 0, 4
    fadds 2, 0, 1
    stfs 1, 0x58(1)
    stfs 4, 0x5c(1)
    stfs 2, 0x60(1)
    stfs 3, 0x64(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x58(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x60(1)
    fadds 0, 3, 2
    stfs 1, 0x5c(1)
    stfs 0, 0x64(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    addi 3, 1, 0x48
    lfs 4, 0x64(31)
    lfs 2, 0x68(31)
    fadds 3, 0, 4
    fsubs 1, 2, 0
    stfs 4, 0x4c(1)
    stfs 2, 0x50(1)
    stfs 1, 0x48(1)
    stfs 3, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    .4byte 0x480000CC # b .L_802986D8
L_80298610:
    lfs 2, 0x6c(31)
    addi 3, 1, 0x58
    .4byte 0xC022D71C # lfs f1, lbl_805406BC@sda21(r0)
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    lfs 5, 0x60(31)
    fsubs 4, 2, 1
    lfs 3, 0x64(31)
    fadds 2, 0, 5
    stfs 5, 0x58(1)
    stfs 3, 0x5c(1)
    stfs 2, 0x60(1)
    stfs 4, 0x64(1)
    lfs 0, 0xc(31)
    fadds 1, 5, 0
    fadds 0, 2, 0
    stfs 1, 0x58(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x60(1)
    fadds 0, 4, 2
    stfs 1, 0x5c(1)
    stfs 0, 0x64(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lfs 1, 0x6c(31)
    addi 3, 1, 0x48
    .4byte 0xC002D71C # lfs f0, lbl_805406BC@sda21(r0)
    lfs 2, 0x68(31)
    lfs 3, 0x64(31)
    fsubs 4, 1, 0
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    stfs 3, 0x4c(1)
    fsubs 1, 2, 0
    stfs 2, 0x50(1)
    stfs 1, 0x48(1)
    stfs 4, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x50(1)
    fadds 0, 4, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
L_802986D8:
    lwz 0, 0x244(31)
    cmpwi 0, 0x2
    .4byte 0x418200D0 # beq .L_802987B0
    .4byte 0x4080018C # bge .L_80298870
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802986F4
    .4byte 0x48000180 # b .L_80298870
L_802986F4:
    lfs 4, 0x6c(31)
    addi 3, 1, 0x38
    lfs 1, 0x60(31)
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    stfs 1, 0x38(1)
    fadds 2, 0, 1
    fsubs 3, 4, 0
    stfs 4, 0x44(1)
    stfs 2, 0x40(1)
    stfs 3, 0x3c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x38(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x40(1)
    fadds 0, 4, 2
    stfs 1, 0x3c(1)
    stfs 0, 0x44(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lfs 4, 0x6c(31)
    addi 3, 1, 0x28
    lfs 2, 0x68(31)
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    stfs 2, 0x30(1)
    fsubs 1, 2, 0
    fsubs 3, 4, 0
    stfs 4, 0x34(1)
    stfs 1, 0x28(1)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x28(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x30(1)
    fadds 0, 4, 2
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    .4byte 0x480000C4 # b .L_80298870
L_802987B0:
    lfs 4, 0x6c(31)
    addi 3, 1, 0x38
    lfs 5, 0x60(31)
    .4byte 0xC022D73C # lfs f1, lbl_805406DC@sda21(r0)
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    fadds 2, 1, 5
    stfs 5, 0x38(1)
    fsubs 3, 4, 0
    stfs 4, 0x44(1)
    stfs 3, 0x3c(1)
    stfs 2, 0x40(1)
    lfs 0, 0xc(31)
    fadds 1, 5, 0
    fadds 0, 2, 0
    stfs 1, 0x38(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x40(1)
    fadds 0, 4, 2
    stfs 1, 0x3c(1)
    stfs 0, 0x44(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lfs 4, 0x6c(31)
    addi 3, 1, 0x28
    lfs 2, 0x68(31)
    .4byte 0xC022D740 # lfs f1, lbl_805406E0@sda21(r0)
    .4byte 0xC002D738 # lfs f0, lbl_805406D8@sda21(r0)
    fsubs 1, 2, 1
    stfs 2, 0x30(1)
    fsubs 3, 4, 0
    stfs 4, 0x34(1)
    stfs 1, 0x28(1)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x28(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x30(1)
    fadds 0, 4, 2
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
L_80298870:
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x408100EC # ble .L_80298964
    lbz 0, 0x2b6(31)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_802988F0
    lfs 4, 0x6c(31)
    addi 3, 1, 0x18
    .4byte 0xC002D6DC # lfs f0, lbl_8054067C@sda21(r0)
    lfs 2, 0x68(31)
    .4byte 0xC022D71C # lfs f1, lbl_805406BC@sda21(r0)
    fsubs 3, 4, 0
    lfs 0, 0x60(31)
    fsubs 2, 2, 1
    fadds 1, 1, 0
    stfs 3, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 1, 0x18(1)
    stfs 4, 0x24(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x18(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x20(1)
    fadds 0, 4, 2
    stfs 1, 0x1c(1)
    stfs 0, 0x24(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
L_802988F0:
    lbz 0, 0x2b7(31)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_80298964
    .4byte 0xC002D6DC # lfs f0, lbl_8054067C@sda21(r0)
    addi 3, 1, 0x8
    lfs 4, 0x64(31)
    lfs 2, 0x68(31)
    .4byte 0xC022D71C # lfs f1, lbl_805406BC@sda21(r0)
    fadds 3, 0, 4
    lfs 0, 0x60(31)
    fsubs 2, 2, 1
    fadds 1, 1, 0
    stfs 4, 0xc(1)
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
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
L_80298964:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80298978:
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
    mr 25, 3
    li 28, 0x0
    mr 30, 25
    mr 29, 25
    .4byte 0x48000220 # b .L_80298BD8
L_802989BC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x25c(30)
    bl fn_801F666C
    mr. 31, 3
    li 27, 0x0
    .4byte 0x418201FC # beq .L_80298BCC
    psq_l 3, 0x250(25), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 28, 0x258(25)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 28, 28, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x4082000C # bne .L_80298A14
    li 27, 0x1
    .4byte 0x4800014C # b .L_80298B5C
L_80298A14:
    .4byte 0xC3A2D6D8 # lfs f29, lbl_80540678@sda21(r0)
    li 26, 0x0
    .4byte 0xCBC2D748 # lfd f30, lbl_805406E8@sda21(r0)
    lis 24, 0x4330
    .4byte 0xC3E2D714 # lfs f31, lbl_805406B4@sda21(r0)
L_80298A28:
    clrlwi 5, 26, 31
    rlwinm 3, 26, 0, 30, 30
    neg 4, 5
    stw 24, 0x28(1)
    neg 0, 3
    psq_l 0, 0x238(31), 0, 0
    andc 0, 0, 3
    andc 4, 4, 5
    lfs 2, 0x240(31)
    srwi 3, 4, 31
    srwi 0, 0, 31
    stw 3, 0x2c(1)
    lfd 1, 0x28(1)
    psq_st 0, 0x18(1), 0, 0
    fsubs 1, 1, 30
    stw 24, 0x30(1)
    lfs 3, 0x18(1)
    stw 0, 0x34(1)
    stfs 2, 0x20(1)
    fmsubs 2, 29, 1, 31
    lfd 0, 0x30(1)
    lwz 0, 0x90(31)
    fsubs 0, 0, 30
    lfs 1, 0x1c(1)
    fadds 2, 3, 2
    clrlwi. 0, 0, 25
    fmsubs 0, 29, 0, 31
    stfs 2, 0x18(1)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
    .4byte 0x4182000C # beq .L_80298AAC
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_80298AC0
L_80298AAC:
    lfs 1, 0x1c(1)
    .4byte 0xC002D744 # lfs f0, lbl_805406E4@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
    .4byte 0x48000054 # b .L_80298B10
L_80298AC0:
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80298AD0
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_80298AE4
L_80298AD0:
    lfs 1, 0x1c(1)
    .4byte 0xC002D6DC # lfs f0, lbl_8054067C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
    .4byte 0x48000030 # b .L_80298B10
L_80298AE4:
    cmpwi 0, 0x17
    .4byte 0x40820014 # bne .L_80298AFC
    .4byte 0xC002D6DC # lfs f0, lbl_8054067C@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x18(1)
    .4byte 0x48000018 # b .L_80298B10
L_80298AFC:
    cmpwi 0, 0x18
    .4byte 0x40820010 # bne .L_80298B10
    .4byte 0xC002D744 # lfs f0, lbl_805406E4@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x18(1)
L_80298B10:
    lwz 0, 0x90(31)
    mr 3, 25
    extrwi. 5, 0, 3, 5
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_80298B28
    mr 4, 5
L_80298B28:
    lwz 12, 0x0(3)
    addi 5, 1, 0x18
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80298B50
    li 27, 0x1
    .4byte 0x48000010 # b .L_80298B5C
L_80298B50:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FED0 # blt .L_80298A28
L_80298B5C:
    cmpwi 27, 0x1
    .4byte 0x4082006C # bne .L_80298BCC
    .4byte 0xC082D720 # lfs f4, lbl_805406C0@sda21(r0)
    addi 3, 1, 0x8
    .4byte 0xC062D724 # lfs f3, lbl_805406C4@sda21(r0)
    stfs 4, 0x8(1)
    stfs 4, 0xc(1)
    stfs 3, 0x10(1)
    stfs 3, 0x14(1)
    lfs 0, 0x2dc(29)
    fadds 1, 4, 0
    fadds 0, 3, 0
    stfs 1, 0x8(1)
    lfs 2, 0x2e0(29)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 0, 0x90(25)
    lwz 5, 0x198(25)
    extrwi 6, 0, 5, 20
    cntlzw 0, 6
    extrwi 4, 0, 1, 26
    addi 0, 6, 0x7
    neg 4, 4
    andc 4, 0, 4
    bl fn_80239914
L_80298BCC:
    addi 30, 30, 0x4
    addi 29, 29, 0x8
    addi 28, 28, 0x1
L_80298BD8:
    lwz 0, 0x29c(25)
    cmpw 28, 0
    .4byte 0x4180FDDC # blt .L_802989BC
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

fn_80298C18:
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
    mr 31, 3
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    lfs 1, 0x250(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810348 # ble .L_80298F98
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 20
    cntlzw 0, 4
    extrwi 3, 0, 1, 26
    addi 0, 4, 0x7
    neg 3, 3
    andc 30, 0, 3
    bl GetRoomConfigRecord
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    mr 4, 30
    .4byte 0xC042D6D4 # lfs f2, lbl_80540674@sda21(r0)
    li 5, 0x1
    bl fn_802D79E8
    lfs 2, 0x250(31)
    .4byte 0xC022D750 # lfs f1, lbl_805406F0@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810020 # ble .L_80298CC0
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x250(31)
    fsubs 0, 0, 1
    stfs 0, 0x250(31)
    .4byte 0x48000020 # b .L_80298CDC
L_80298CC0:
    lfs 1, 0xc(31)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0xc(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
L_80298CDC:
    psq_l 1, 0xc(31), 0, 0
    li 29, 0x0
    lfs 0, 0x14(31)
    .4byte 0xC042D6EC # lfs f2, lbl_8054068C@sda21(r0)
    psq_st 1, 0x44(1), 0, 0
    .4byte 0xC022D6D8 # lfs f1, lbl_80540678@sda21(r0)
    stfs 0, 0x4c(1)
    lfs 4, 0x44(1)
    lfs 0, 0x68(31)
    lfs 3, 0x48(1)
    fadds 4, 4, 0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fsubs 2, 4, 2
    stfs 4, 0x44(1)
    stfs 2, 0x44(1)
    lfs 2, 0x64(31)
    fadds 2, 3, 2
    stfs 0, 0x4c(1)
    fadds 0, 2, 1
    stfs 2, 0x48(1)
    stfs 0, 0x48(1)
L_80298D34:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    lwz 6, 0x4(31)
    li 5, -0x1
    li 7, 0x0
    li 8, 0x1
    bl fn_802A20F0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    bl fn_802A1050
    lfs 0, 0x48(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x48(1)
    .4byte 0x4180FFC4 # blt .L_80298D34
    psq_l 1, 0xc(31), 0, 0
    li 3, 0x0
    lfs 0, 0x14(31)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_80298DA4
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x40820008 # bne .L_80298DA4
    xori 3, 3, 0x1
L_80298DA4:
    mulli 5, 3, 0xc
    addi 4, 1, 0x20
    lis 3, lbl_8046C238@ha
    psq_l 4, 0x0(4), 0, 0
    psq_l 3, 0x8(4), 1, 0
    addi 0, 3, lbl_8046C238@l
    add 5, 0, 5
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 2, 0x0(5)
    lfs 1, 0x4(5)
    lfs 0, 0x8(5)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    psq_l 1, 0x2c(1), 0, 0
    psq_l 0, 0x34(1), 1, 0
    ps_add 1, 4, 1
    ps_add 0, 3, 0
    psq_st 1, 0x0(4), 0, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x24(3)
    bl fn_8030C210
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820120 # bne .L_80298F48
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    mr 29, 31
    .4byte 0xC022D6DC # lfs f1, lbl_8054067C@sda21(r0)
    li 30, 0x0
    stfs 0, 0x3c(1)
    stfs 1, 0x38(1)
    stfs 0, 0x40(1)
    .4byte 0x48000068 # b .L_80298EB0
L_80298E4C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x28c(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80298EA8
    lfs 0, 0x14(3)
    addi 4, 1, 0x38
    psq_l 1, 0xc(3), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(3), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    psq_st 3, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    stfs 0, 0x14(3)
    bl fn_802C59B0
L_80298EA8:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_80298EB0:
    lwz 0, 0x2a8(31)
    cmpw 30, 0
    .4byte 0x4180FF94 # blt .L_80298E4C
    li 0, 0x0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    stw 0, 0x248(31)
    stb 0, 0x2b8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_80298F14
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 15
    .4byte 0x4081003C # ble .L_80298F34
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80298F34
L_80298F14:
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 10
    .4byte 0x40810018 # ble .L_80298F34
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80298F34:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x2cc(31)
    stb 0, 0x2c0(31)
    .4byte 0x48000054 # b .L_80298F98
L_80298F48:
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_80298F78
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 15
    .4byte 0x4081003C # ble .L_80298F98
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80298F98
L_80298F78:
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 10
    .4byte 0x40810018 # ble .L_80298F98
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80298F98:
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

fn_80298FC4:
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
    mr 31, 3
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    lfs 1, 0x250(3)
    fcmpo cr0, 1, 0
    .4byte 0x4080034C # bge .L_80299348
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 20
    cntlzw 0, 4
    extrwi 3, 0, 1, 26
    addi 0, 4, 0x7
    neg 3, 3
    andc 30, 0, 3
    bl GetRoomConfigRecord
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    mr 4, 30
    .4byte 0xC042D6D4 # lfs f2, lbl_80540674@sda21(r0)
    li 5, 0x1
    bl fn_802D79E8
    lfs 2, 0x250(31)
    .4byte 0xC002D754 # lfs f0, lbl_805406F4@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_80299070
    lfs 0, 0xc(31)
    .4byte 0xC022D750 # lfs f1, lbl_805406F0@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x250(31)
    fadds 0, 0, 1
    stfs 0, 0x250(31)
    .4byte 0x48000020 # b .L_8029908C
L_80299070:
    lfs 1, 0xc(31)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0xc(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
L_8029908C:
    psq_l 1, 0xc(31), 0, 0
    li 29, 0x0
    lfs 0, 0x14(31)
    .4byte 0xC042D6EC # lfs f2, lbl_8054068C@sda21(r0)
    psq_st 1, 0x44(1), 0, 0
    .4byte 0xC022D6D8 # lfs f1, lbl_80540678@sda21(r0)
    stfs 0, 0x4c(1)
    lfs 4, 0x44(1)
    lfs 0, 0x60(31)
    lfs 3, 0x48(1)
    fadds 4, 4, 0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fadds 2, 4, 2
    stfs 4, 0x44(1)
    stfs 2, 0x44(1)
    lfs 2, 0x64(31)
    fadds 2, 3, 2
    stfs 0, 0x4c(1)
    fadds 0, 2, 1
    stfs 2, 0x48(1)
    stfs 0, 0x48(1)
L_802990E4:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    lwz 6, 0x4(31)
    li 5, -0x1
    li 7, 0x0
    li 8, 0x1
    bl fn_802A20F0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    bl fn_802A1050
    lfs 0, 0x48(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x48(1)
    .4byte 0x4180FFC4 # blt .L_802990E4
    psq_l 1, 0xc(31), 0, 0
    li 3, 0x1
    lfs 0, 0x14(31)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_80299154
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x40820008 # bne .L_80299154
    xori 3, 3, 0x1
L_80299154:
    mulli 5, 3, 0xc
    addi 4, 1, 0x20
    lis 3, lbl_8046C238@ha
    psq_l 4, 0x0(4), 0, 0
    psq_l 3, 0x8(4), 1, 0
    addi 0, 3, lbl_8046C238@l
    add 5, 0, 5
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 2, 0x0(5)
    lfs 1, 0x4(5)
    lfs 0, 0x8(5)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    psq_l 1, 0x2c(1), 0, 0
    psq_l 0, 0x34(1), 1, 0
    ps_add 1, 4, 1
    ps_add 0, 3, 0
    psq_st 1, 0x0(4), 0, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x24(3)
    bl fn_8030C210
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820120 # bne .L_802992F8
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    mr 29, 31
    .4byte 0xC022D744 # lfs f1, lbl_805406E4@sda21(r0)
    li 30, 0x0
    stfs 0, 0x3c(1)
    stfs 1, 0x38(1)
    stfs 0, 0x40(1)
    .4byte 0x48000068 # b .L_80299260
L_802991FC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x28c(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80299258
    lfs 0, 0x14(3)
    addi 4, 1, 0x38
    psq_l 1, 0xc(3), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(3), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    psq_st 3, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    stfs 0, 0x14(3)
    bl fn_802C59B0
L_80299258:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_80299260:
    lwz 0, 0x2a8(31)
    cmpw 30, 0
    .4byte 0x4180FF94 # blt .L_802991FC
    li 0, 0x0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    stw 0, 0x248(31)
    stb 0, 0x2b8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_802992C4
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 10
    .4byte 0x4081003C # ble .L_802992E4
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_802992E4
L_802992C4:
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 15
    .4byte 0x40810018 # ble .L_802992E4
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_802992E4:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x2cc(31)
    stb 0, 0x2c0(31)
    .4byte 0x48000054 # b .L_80299348
L_802992F8:
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_80299328
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 10
    .4byte 0x4081003C # ble .L_80299348
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80299348
L_80299328:
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 15
    .4byte 0x40810018 # ble .L_80299348
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80299348:
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

fn_80299374:
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
    mr 31, 3
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    lfs 1, 0x254(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810348 # ble .L_802996F4
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 20
    cntlzw 0, 4
    extrwi 3, 0, 1, 26
    addi 0, 4, 0x7
    neg 3, 3
    andc 30, 0, 3
    bl GetRoomConfigRecord
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    mr 4, 30
    .4byte 0xC042D6D4 # lfs f2, lbl_80540674@sda21(r0)
    li 5, 0x1
    bl fn_802D79E8
    lfs 2, 0x254(31)
    .4byte 0xC022D750 # lfs f1, lbl_805406F0@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810020 # ble .L_8029941C
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    lfs 0, 0x254(31)
    fsubs 0, 0, 1
    stfs 0, 0x254(31)
    .4byte 0x48000020 # b .L_80299438
L_8029941C:
    lfs 1, 0x10(31)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x10(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
L_80299438:
    psq_l 1, 0xc(31), 0, 0
    li 29, 0x0
    lfs 0, 0x14(31)
    .4byte 0xC042D6D8 # lfs f2, lbl_80540678@sda21(r0)
    psq_st 1, 0x44(1), 0, 0
    .4byte 0xC022D6EC # lfs f1, lbl_8054068C@sda21(r0)
    stfs 0, 0x4c(1)
    lfs 4, 0x44(1)
    lfs 0, 0x60(31)
    lfs 3, 0x48(1)
    fadds 4, 4, 0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fadds 2, 4, 2
    stfs 4, 0x44(1)
    stfs 2, 0x44(1)
    lfs 2, 0x6c(31)
    fadds 2, 3, 2
    stfs 0, 0x4c(1)
    fsubs 0, 2, 1
    stfs 2, 0x48(1)
    stfs 0, 0x48(1)
L_80299490:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    lwz 6, 0x4(31)
    li 5, -0x1
    li 7, 0x0
    li 8, 0x1
    bl fn_802A20F0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    bl fn_802A1050
    lfs 0, 0x44(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x44(1)
    .4byte 0x4180FFC4 # blt .L_80299490
    psq_l 1, 0xc(31), 0, 0
    li 3, 0x2
    lfs 0, 0x14(31)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_80299500
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x40820008 # bne .L_80299500
    xori 3, 3, 0x1
L_80299500:
    mulli 5, 3, 0xc
    addi 4, 1, 0x20
    lis 3, lbl_8046C238@ha
    psq_l 4, 0x0(4), 0, 0
    psq_l 3, 0x8(4), 1, 0
    addi 0, 3, lbl_8046C238@l
    add 5, 0, 5
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 2, 0x0(5)
    lfs 1, 0x4(5)
    lfs 0, 0x8(5)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    psq_l 1, 0x2c(1), 0, 0
    psq_l 0, 0x34(1), 1, 0
    ps_add 1, 4, 1
    ps_add 0, 3, 0
    psq_st 1, 0x0(4), 0, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x24(3)
    bl fn_8030C210
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820120 # bne .L_802996A4
    .4byte 0xC022D6D4 # lfs f1, lbl_80540674@sda21(r0)
    mr 29, 31
    .4byte 0xC002D6DC # lfs f0, lbl_8054067C@sda21(r0)
    li 30, 0x0
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
    .4byte 0x48000068 # b .L_8029960C
L_802995A8:
    bl SpatialRegistry_GetBase
    lwz 4, 0x28c(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80299604
    lfs 0, 0x14(3)
    addi 4, 1, 0x38
    psq_l 1, 0xc(3), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(3), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    psq_st 3, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    stfs 0, 0x14(3)
    bl fn_802C59B0
L_80299604:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_8029960C:
    lwz 0, 0x2a8(31)
    cmpw 30, 0
    .4byte 0x4180FF94 # blt .L_802995A8
    li 0, 0x0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    stw 0, 0x248(31)
    stb 0, 0x2b8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_80299670
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 5
    .4byte 0x4081003C # ble .L_80299690
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80299690
L_80299670:
    lwz 0, 0x90(31)
    srwi. 29, 0, 27
    .4byte 0x40810018 # ble .L_80299690
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80299690:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x2cc(31)
    stb 0, 0x2c0(31)
    .4byte 0x48000054 # b .L_802996F4
L_802996A4:
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_802996D4
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 5
    .4byte 0x4081003C # ble .L_802996F4
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_802996F4
L_802996D4:
    lwz 0, 0x90(31)
    srwi. 29, 0, 27
    .4byte 0x40810018 # ble .L_802996F4
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_802996F4:
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

fn_80299720:
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
    mr 31, 3
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    lfs 1, 0x254(3)
    fcmpo cr0, 1, 0
    .4byte 0x4080034C # bge .L_80299AA4
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x90(31)
    extrwi 4, 0, 5, 20
    cntlzw 0, 4
    extrwi 3, 0, 1, 26
    addi 0, 4, 0x7
    neg 3, 3
    andc 30, 0, 3
    bl GetRoomConfigRecord
    .4byte 0xC022D6E8 # lfs f1, lbl_80540688@sda21(r0)
    mr 4, 30
    .4byte 0xC042D6D4 # lfs f2, lbl_80540674@sda21(r0)
    li 5, 0x1
    bl fn_802D79E8
    lfs 2, 0x254(31)
    .4byte 0xC002D754 # lfs f0, lbl_805406F4@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_802997CC
    lfs 0, 0x10(31)
    .4byte 0xC022D750 # lfs f1, lbl_805406F0@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x10(31)
    lfs 0, 0x254(31)
    fadds 0, 0, 1
    stfs 0, 0x254(31)
    .4byte 0x48000020 # b .L_802997E8
L_802997CC:
    lfs 1, 0x10(31)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x10(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
L_802997E8:
    psq_l 1, 0xc(31), 0, 0
    li 29, 0x0
    lfs 0, 0x14(31)
    .4byte 0xC042D6D8 # lfs f2, lbl_80540678@sda21(r0)
    psq_st 1, 0x44(1), 0, 0
    .4byte 0xC022D6EC # lfs f1, lbl_8054068C@sda21(r0)
    stfs 0, 0x4c(1)
    lfs 4, 0x44(1)
    lfs 0, 0x60(31)
    lfs 3, 0x48(1)
    fadds 4, 4, 0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fadds 2, 4, 2
    stfs 4, 0x44(1)
    stfs 2, 0x44(1)
    lfs 2, 0x64(31)
    fadds 2, 3, 2
    stfs 0, 0x4c(1)
    fadds 0, 2, 1
    stfs 2, 0x48(1)
    stfs 0, 0x48(1)
L_80299840:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    lwz 6, 0x4(31)
    li 5, -0x1
    li 7, 0x0
    li 8, 0x1
    bl fn_802A20F0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x44
    bl fn_802A1050
    lfs 0, 0x44(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x44(1)
    .4byte 0x4180FFC4 # blt .L_80299840
    psq_l 1, 0xc(31), 0, 0
    li 3, 0x3
    lfs 0, 0x14(31)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_802998B0
    lwz 0, 0x2cc(31)
    cmpwi 0, -0x1
    .4byte 0x40820008 # bne .L_802998B0
    xori 3, 3, 0x1
L_802998B0:
    mulli 5, 3, 0xc
    addi 4, 1, 0x20
    lis 3, lbl_8046C238@ha
    psq_l 4, 0x0(4), 0, 0
    psq_l 3, 0x8(4), 1, 0
    addi 0, 3, lbl_8046C238@l
    add 5, 0, 5
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 2, 0x0(5)
    lfs 1, 0x4(5)
    lfs 0, 0x8(5)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    psq_l 1, 0x2c(1), 0, 0
    psq_l 0, 0x34(1), 1, 0
    ps_add 1, 4, 1
    ps_add 0, 3, 0
    psq_st 1, 0x0(4), 0, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x24(3)
    bl fn_8030C210
    psq_l 3, 0x250(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x258(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820120 # bne .L_80299A54
    .4byte 0xC022D6D4 # lfs f1, lbl_80540674@sda21(r0)
    mr 29, 31
    .4byte 0xC002D744 # lfs f0, lbl_805406E4@sda21(r0)
    li 30, 0x0
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
    .4byte 0x48000068 # b .L_802999BC
L_80299958:
    bl SpatialRegistry_GetBase
    lwz 4, 0x28c(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_802999B4
    lfs 0, 0x14(3)
    addi 4, 1, 0x38
    psq_l 1, 0xc(3), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(3), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    psq_st 3, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    stfs 0, 0x14(3)
    bl fn_802C59B0
L_802999B4:
    addi 29, 29, 0x4
    addi 30, 30, 0x1
L_802999BC:
    lwz 0, 0x2a8(31)
    cmpw 30, 0
    .4byte 0x4180FF94 # blt .L_80299958
    li 0, 0x0
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    stw 0, 0x248(31)
    stb 0, 0x2b8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    stfs 0, 0x250(31)
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_80299A20
    lwz 0, 0x90(31)
    srwi. 29, 0, 27
    .4byte 0x4081003C # ble .L_80299A40
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80299A40
L_80299A20:
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 5
    .4byte 0x40810018 # ble .L_80299A40
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80299A40:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x2cc(31)
    stb 0, 0x2c0(31)
    .4byte 0x48000054 # b .L_80299AA4
L_80299A54:
    lwz 0, 0x2cc(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_80299A84
    lwz 0, 0x90(31)
    srwi. 29, 0, 27
    .4byte 0x4081003C # ble .L_80299AA4
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80299AA4
L_80299A84:
    lwz 0, 0x90(31)
    extrwi. 29, 0, 5, 5
    .4byte 0x40810018 # ble .L_80299AA4
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80299AA4:
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

fn_80299AD0:
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
    stmw 26, 0x58(1)
    mr 28, 3
    lis 3, lbl_80539D44@ha
    psq_l 3, 0x250(28), 0, 0
    lfs 2, 0x258(28)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4082043C # bne .L_80299F74
    lbz 0, 0x2c0(28)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80299B54
    li 0, 0x0
    stb 0, 0x2c0(28)
    .4byte 0x48000424 # b .L_80299F74
L_80299B54:
    lbz 0, 0x2b4(28)
    cmplwi 0, 0x0
    .4byte 0x41820418 # beq .L_80299F74
    lbz 0, 0x2b9(28)
    li 31, -0x1
    cmplwi 0, 0x0
    .4byte 0x40820134 # bne .L_80299CA0
    lwz 3, 0x198(28)
    bl fn_80239108
    cmpwi 3, 0x4
    .4byte 0x4180003C # blt .L_80299BB8
    lwz 27, 0x4(28)
    li 3, 0x0
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820028 # bne .L_80299BB8
    lwz 3, 0x198(28)
    bl fn_80238BC4
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_80299BB8
    cmpwi 3, 0x4
    .4byte 0x40800010 # bge .L_80299BB8
    li 0, 0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_80299BBC
L_80299BB8:
    li 3, -0x1
L_80299BBC:
    cmpwi 3, -0x1
    mr 31, 3
    .4byte 0x408200DC # bne .L_80299CA0
    lfs 1, 0x80(28)
    addi 3, 1, 0x20
    stfs 1, 0x20(1)
    lfs 4, 0x84(28)
    stfs 4, 0x24(1)
    lfs 2, 0x88(28)
    stfs 2, 0x28(1)
    lfs 3, 0x8c(28)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(28)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(28)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(28)
    lwz 5, 0x198(28)
    bl fn_80239470
    cmpwi 3, 0x0
    .4byte 0x41800074 # blt .L_80299C98
    lwz 3, 0x198(28)
    bl fn_80238A68
    cmpwi 3, 0x4
    .4byte 0x41800064 # blt .L_80299C98
    lwz 3, 0x198(28)
    bl fn_8023885C
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_80299C98
    cmpwi 3, 0x4
    .4byte 0x4080004C # bge .L_80299C98
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80299C60
    li 3, 0x1
    .4byte 0x48000030 # b .L_80299C8C
L_80299C60:
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_80299C70
    li 3, 0x0
    .4byte 0x48000020 # b .L_80299C8C
L_80299C70:
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_80299C80
    li 3, 0x3
    .4byte 0x48000010 # b .L_80299C8C
L_80299C80:
    cmpwi 3, 0x3
    .4byte 0x40820008 # bne .L_80299C8C
    li 3, 0x2
L_80299C8C:
    li 0, -0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_80299C9C
L_80299C98:
    li 3, -0x1
L_80299C9C:
    mr 31, 3
L_80299CA0:
    cmpwi 31, 0x0
    .4byte 0x408202D0 # bne .L_80299F74
    lwz 27, 0x4(28)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_80299CC0
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80299CC4
L_80299CC0:
    addi 6, 3, 0xdc
L_80299CC4:
    lwz 5, 0x0(6)
    li 30, 0x1
    lwz 4, 0x4(6)
    li 29, 0x0
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    stw 5, 0x3c(1)
    .4byte 0xC062D6D8 # lfs f3, lbl_80540678@sda21(r0)
    psq_st 1, 0x30(1), 0, 0
    lfs 4, 0x3c(1)
    stfs 0, 0x38(1)
    lfs 1, 0x30(1)
    lfs 0, 0x68(28)
    stw 4, 0x40(1)
    fadds 1, 1, 0
    lfs 2, 0x34(1)
    stw 3, 0x44(1)
    .4byte 0xC0C2D6D0 # lfs f6, lbl_80540670@sda21(r0)
    stw 0, 0x48(1)
    fadds 0, 1, 3
    fsubs 5, 4, 6
    lfs 4, 0x40(1)
    stfs 1, 0x30(1)
    lfs 1, 0x44(1)
    fsubs 27, 4, 6
    stfs 0, 0x30(1)
    lfs 0, 0x48(1)
    fadds 28, 1, 6
    lfs 1, 0x64(28)
    frsp 31, 5
    fadds 29, 0, 6
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 2, 2, 1
    stfs 5, 0x3c(1)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fadds 1, 2, 3
    stfs 2, 0x34(1)
    stfs 27, 0x40(1)
    stfs 28, 0x44(1)
    stfs 29, 0x48(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_80299D74:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x30
    bl fn_802A1554
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80299DC8
    lwz 26, 0x198(28)
    lwz 27, 0x4(28)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 27
    lbz 0, 0x1(3)
    mr 6, 26
    addi 5, 1, 0x30
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80299DD0
L_80299DC8:
    li 30, 0x0
    .4byte 0x48000064 # b .L_80299E30
L_80299DD0:
    lfs 1, 0x30(1)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_80299E08
    lfs 0, 0x34(1)
    fcmpo cr0, 0, 27
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80299E08
    fcmpo cr0, 1, 28
    .4byte 0x40800010 # bge .L_80299E08
    fcmpo cr0, 0, 29
    .4byte 0x40800008 # bge .L_80299E08
    li 0, 0x1
L_80299E08:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80299E18
    li 30, 0x0
    .4byte 0x4800001C # b .L_80299E30
L_80299E18:
    lfs 0, 0x34(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x34(1)
    .4byte 0x4180FF48 # blt .L_80299D74
L_80299E30:
    mr 3, 28
    li 4, 0x0
    bl fn_802957CC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80299E48
    li 30, 0x0
L_80299E48:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820124 # bne .L_80299F74
    cmpwi 31, 0x0
    .4byte 0x4082001C # bne .L_80299E74
    lwz 3, 0x198(28)
    bl fn_80238E08
    .4byte 0xC002D750 # lfs f0, lbl_805406F0@sda21(r0)
    li 0, 0x1
    stfs 0, 0x3c(28)
    stb 0, 0x2b8(28)
L_80299E74:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    li 29, 0x0
    stfs 30, 0x250(28)
    stw 29, 0x248(28)
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x408200D4 # bne .L_80299F74
    li 0, 0x1
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    stb 0, 0x24c(28)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    psq_l 1, 0xc(28), 0, 0
    lfs 6, 0x14(28)
    psq_st 1, 0x8(1), 0, 0
    lfs 2, 0x60(28)
    lfs 3, 0x8(1)
    lfs 1, 0x64(28)
    fadds 5, 3, 2
    lfs 2, 0xc(1)
    stfs 6, 0x10(1)
    fadds 2, 2, 1
    fadds 3, 5, 4
    stfs 5, 0x8(1)
    fadds 1, 2, 4
    stfs 2, 0xc(1)
    stfs 3, 0x8(1)
    frsp 31, 1
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
L_80299F08:
    stfs 31, 0x18(1)
    mr 26, 28
    li 27, 0x0
L_80299F14:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    lhz 6, 0x3b0(26)
    li 5, 0x0
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x0
    bl fn_802A381C
    lfs 0, 0x18(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 30
    stfs 0, 0x18(1)
    .4byte 0x4180FFC0 # blt .L_80299F14
    lfs 0, 0x14(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 28, 28, 0xc
    fadds 0, 0, 30
    stfs 0, 0x14(1)
    .4byte 0x4180FF98 # blt .L_80299F08
L_80299F74:
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
    lmw 26, 0x58(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_80299FB0:
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
    stmw 26, 0x58(1)
    mr 28, 3
    lis 3, lbl_80539D44@ha
    psq_l 3, 0x250(28), 0, 0
    lfs 2, 0x258(28)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820440 # bne .L_8029A458
    lbz 0, 0x2c0(28)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8029A034
    li 0, 0x0
    stb 0, 0x2c0(28)
    .4byte 0x48000428 # b .L_8029A458
L_8029A034:
    lbz 0, 0x2b4(28)
    cmplwi 0, 0x0
    .4byte 0x4182041C # beq .L_8029A458
    lbz 0, 0x2b9(28)
    li 31, -0x1
    cmplwi 0, 0x0
    .4byte 0x40820134 # bne .L_8029A180
    lwz 3, 0x198(28)
    bl fn_80239108
    cmpwi 3, 0x4
    .4byte 0x4180003C # blt .L_8029A098
    lwz 27, 0x4(28)
    li 3, 0x0
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820028 # bne .L_8029A098
    lwz 3, 0x198(28)
    bl fn_80238BC4
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8029A098
    cmpwi 3, 0x4
    .4byte 0x40800010 # bge .L_8029A098
    li 0, 0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_8029A09C
L_8029A098:
    li 3, -0x1
L_8029A09C:
    cmpwi 3, -0x1
    mr 31, 3
    .4byte 0x408200DC # bne .L_8029A180
    lfs 1, 0x80(28)
    addi 3, 1, 0x20
    stfs 1, 0x20(1)
    lfs 4, 0x84(28)
    stfs 4, 0x24(1)
    lfs 2, 0x88(28)
    stfs 2, 0x28(1)
    lfs 3, 0x8c(28)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(28)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(28)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(28)
    lwz 5, 0x198(28)
    bl fn_80239470
    cmpwi 3, 0x0
    .4byte 0x41800074 # blt .L_8029A178
    lwz 3, 0x198(28)
    bl fn_80238A68
    cmpwi 3, 0x4
    .4byte 0x41800064 # blt .L_8029A178
    lwz 3, 0x198(28)
    bl fn_8023885C
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_8029A178
    cmpwi 3, 0x4
    .4byte 0x4080004C # bge .L_8029A178
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8029A140
    li 3, 0x1
    .4byte 0x48000030 # b .L_8029A16C
L_8029A140:
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8029A150
    li 3, 0x0
    .4byte 0x48000020 # b .L_8029A16C
L_8029A150:
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_8029A160
    li 3, 0x3
    .4byte 0x48000010 # b .L_8029A16C
L_8029A160:
    cmpwi 3, 0x3
    .4byte 0x40820008 # bne .L_8029A16C
    li 3, 0x2
L_8029A16C:
    li 0, -0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_8029A17C
L_8029A178:
    li 3, -0x1
L_8029A17C:
    mr 31, 3
L_8029A180:
    cmpwi 31, 0x1
    .4byte 0x408202D4 # bne .L_8029A458
    lwz 27, 0x4(28)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_8029A1A0
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_8029A1A4
L_8029A1A0:
    addi 6, 3, 0xdc
L_8029A1A4:
    lwz 5, 0x0(6)
    li 30, 0x1
    lwz 4, 0x4(6)
    li 29, 0x0
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    stw 5, 0x3c(1)
    .4byte 0xC062D6D8 # lfs f3, lbl_80540678@sda21(r0)
    psq_st 1, 0x30(1), 0, 0
    lfs 4, 0x3c(1)
    stfs 0, 0x38(1)
    lfs 1, 0x30(1)
    lfs 0, 0x60(28)
    stw 4, 0x40(1)
    fadds 1, 1, 0
    lfs 2, 0x34(1)
    stw 3, 0x44(1)
    .4byte 0xC0C2D6D0 # lfs f6, lbl_80540670@sda21(r0)
    stw 0, 0x48(1)
    fsubs 0, 1, 3
    fsubs 5, 4, 6
    lfs 4, 0x40(1)
    stfs 1, 0x30(1)
    lfs 1, 0x44(1)
    fsubs 27, 4, 6
    stfs 0, 0x30(1)
    lfs 0, 0x48(1)
    fadds 28, 1, 6
    lfs 1, 0x64(28)
    frsp 31, 5
    fadds 29, 0, 6
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 2, 2, 1
    stfs 5, 0x3c(1)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fadds 1, 2, 3
    stfs 2, 0x34(1)
    stfs 27, 0x40(1)
    stfs 28, 0x44(1)
    stfs 29, 0x48(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_8029A254:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x30
    bl fn_802A1554
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8029A2A8
    lwz 26, 0x198(28)
    lwz 27, 0x4(28)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 27
    lbz 0, 0x1(3)
    mr 6, 26
    addi 5, 1, 0x30
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8029A2B0
L_8029A2A8:
    li 30, 0x0
    .4byte 0x48000064 # b .L_8029A310
L_8029A2B0:
    lfs 1, 0x30(1)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8029A2E8
    lfs 0, 0x34(1)
    fcmpo cr0, 0, 27
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8029A2E8
    fcmpo cr0, 1, 28
    .4byte 0x40800010 # bge .L_8029A2E8
    fcmpo cr0, 0, 29
    .4byte 0x40800008 # bge .L_8029A2E8
    li 0, 0x1
L_8029A2E8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8029A2F8
    li 30, 0x0
    .4byte 0x4800001C # b .L_8029A310
L_8029A2F8:
    lfs 0, 0x34(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x34(1)
    .4byte 0x4180FF48 # blt .L_8029A254
L_8029A310:
    mr 3, 28
    li 4, 0x1
    bl fn_802957CC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8029A328
    li 30, 0x0
L_8029A328:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820128 # bne .L_8029A458
    cmpwi 31, 0x1
    .4byte 0x4082001C # bne .L_8029A354
    lwz 3, 0x198(28)
    bl fn_80238E08
    .4byte 0xC002D754 # lfs f0, lbl_805406F4@sda21(r0)
    li 0, 0x1
    stfs 0, 0x3c(28)
    stb 0, 0x2b8(28)
L_8029A354:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002D744 # lfs f0, lbl_805406E4@sda21(r0)
    li 29, 0x0
    stfs 0, 0x250(28)
    stw 29, 0x248(28)
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x408200D8 # bne .L_8029A458
    li 0, 0x1
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    stb 0, 0x24c(28)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    psq_l 1, 0xc(28), 0, 0
    lfs 6, 0x14(28)
    psq_st 1, 0x8(1), 0, 0
    lfs 2, 0x60(28)
    lfs 3, 0x8(1)
    lfs 1, 0x64(28)
    fadds 5, 3, 2
    lfs 2, 0xc(1)
    stfs 6, 0x10(1)
    fadds 2, 2, 1
    .4byte 0xC3E2D6DC # lfs f31, lbl_8054067C@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0x8(1)
    fadds 1, 2, 4
    stfs 2, 0xc(1)
    stfs 3, 0x8(1)
    frsp 30, 1
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
L_8029A3EC:
    stfs 30, 0x18(1)
    mr 26, 28
    li 27, 0x0
L_8029A3F8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    lhz 6, 0x3b0(26)
    li 5, 0x0
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x0
    bl fn_802A381C
    lfs 0, 0x18(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 31
    stfs 0, 0x18(1)
    .4byte 0x4180FFC0 # blt .L_8029A3F8
    lfs 0, 0x14(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 28, 28, 0xc
    fadds 0, 0, 31
    stfs 0, 0x14(1)
    .4byte 0x4180FF98 # blt .L_8029A3EC
L_8029A458:
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
    lmw 26, 0x58(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8029A494:
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
    stmw 26, 0x58(1)
    mr 28, 3
    lis 3, lbl_80539D44@ha
    psq_l 3, 0x250(28), 0, 0
    lfs 2, 0x258(28)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x4082043C # bne .L_8029A938
    lbz 0, 0x2c0(28)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8029A518
    li 0, 0x0
    stb 0, 0x2c0(28)
    .4byte 0x48000424 # b .L_8029A938
L_8029A518:
    lbz 0, 0x2b4(28)
    cmplwi 0, 0x0
    .4byte 0x41820418 # beq .L_8029A938
    lbz 0, 0x2b9(28)
    li 31, -0x1
    cmplwi 0, 0x0
    .4byte 0x40820134 # bne .L_8029A664
    lwz 3, 0x198(28)
    bl fn_80239108
    cmpwi 3, 0x4
    .4byte 0x4180003C # blt .L_8029A57C
    lwz 27, 0x4(28)
    li 3, 0x0
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820028 # bne .L_8029A57C
    lwz 3, 0x198(28)
    bl fn_80238BC4
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8029A57C
    cmpwi 3, 0x4
    .4byte 0x40800010 # bge .L_8029A57C
    li 0, 0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_8029A580
L_8029A57C:
    li 3, -0x1
L_8029A580:
    cmpwi 3, -0x1
    mr 31, 3
    .4byte 0x408200DC # bne .L_8029A664
    lfs 1, 0x80(28)
    addi 3, 1, 0x20
    stfs 1, 0x20(1)
    lfs 4, 0x84(28)
    stfs 4, 0x24(1)
    lfs 2, 0x88(28)
    stfs 2, 0x28(1)
    lfs 3, 0x8c(28)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(28)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(28)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(28)
    lwz 5, 0x198(28)
    bl fn_80239470
    cmpwi 3, 0x0
    .4byte 0x41800074 # blt .L_8029A65C
    lwz 3, 0x198(28)
    bl fn_80238A68
    cmpwi 3, 0x4
    .4byte 0x41800064 # blt .L_8029A65C
    lwz 3, 0x198(28)
    bl fn_8023885C
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_8029A65C
    cmpwi 3, 0x4
    .4byte 0x4080004C # bge .L_8029A65C
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8029A624
    li 3, 0x1
    .4byte 0x48000030 # b .L_8029A650
L_8029A624:
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8029A634
    li 3, 0x0
    .4byte 0x48000020 # b .L_8029A650
L_8029A634:
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_8029A644
    li 3, 0x3
    .4byte 0x48000010 # b .L_8029A650
L_8029A644:
    cmpwi 3, 0x3
    .4byte 0x40820008 # bne .L_8029A650
    li 3, 0x2
L_8029A650:
    li 0, -0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_8029A660
L_8029A65C:
    li 3, -0x1
L_8029A660:
    mr 31, 3
L_8029A664:
    cmpwi 31, 0x2
    .4byte 0x408202D0 # bne .L_8029A938
    lwz 27, 0x4(28)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_8029A684
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_8029A688
L_8029A684:
    addi 6, 3, 0xdc
L_8029A688:
    lwz 5, 0x0(6)
    li 30, 0x1
    lwz 4, 0x4(6)
    li 29, 0x0
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    stw 5, 0x3c(1)
    .4byte 0xC062D6D8 # lfs f3, lbl_80540678@sda21(r0)
    psq_st 1, 0x30(1), 0, 0
    lfs 4, 0x3c(1)
    stfs 0, 0x38(1)
    lfs 1, 0x30(1)
    lfs 0, 0x60(28)
    stw 4, 0x40(1)
    fadds 1, 1, 0
    lfs 2, 0x34(1)
    stw 3, 0x44(1)
    .4byte 0xC0C2D6D0 # lfs f6, lbl_80540670@sda21(r0)
    stw 0, 0x48(1)
    fadds 0, 1, 3
    fsubs 5, 4, 6
    lfs 4, 0x40(1)
    stfs 1, 0x30(1)
    lfs 1, 0x44(1)
    fsubs 27, 4, 6
    stfs 0, 0x30(1)
    lfs 0, 0x48(1)
    fadds 28, 1, 6
    lfs 1, 0x6c(28)
    frsp 31, 5
    fadds 29, 0, 6
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 2, 2, 1
    stfs 5, 0x3c(1)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fadds 1, 2, 3
    stfs 2, 0x34(1)
    stfs 27, 0x40(1)
    stfs 28, 0x44(1)
    stfs 29, 0x48(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_8029A738:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x30
    bl fn_802A1554
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8029A78C
    lwz 26, 0x198(28)
    lwz 27, 0x4(28)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 27
    lbz 0, 0x1(3)
    mr 6, 26
    addi 5, 1, 0x30
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8029A794
L_8029A78C:
    li 30, 0x0
    .4byte 0x48000064 # b .L_8029A7F4
L_8029A794:
    lfs 1, 0x30(1)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8029A7CC
    lfs 0, 0x34(1)
    fcmpo cr0, 0, 27
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8029A7CC
    fcmpo cr0, 1, 28
    .4byte 0x40800010 # bge .L_8029A7CC
    fcmpo cr0, 0, 29
    .4byte 0x40800008 # bge .L_8029A7CC
    li 0, 0x1
L_8029A7CC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8029A7DC
    li 30, 0x0
    .4byte 0x4800001C # b .L_8029A7F4
L_8029A7DC:
    lfs 0, 0x30(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x30(1)
    .4byte 0x4180FF48 # blt .L_8029A738
L_8029A7F4:
    mr 3, 28
    li 4, 0x2
    bl fn_802957CC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8029A80C
    li 30, 0x0
L_8029A80C:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820124 # bne .L_8029A938
    cmpwi 31, 0x2
    .4byte 0x4082001C # bne .L_8029A838
    lwz 3, 0x198(28)
    bl fn_80238E08
    .4byte 0xC002D750 # lfs f0, lbl_805406F0@sda21(r0)
    li 0, 0x1
    stfs 0, 0x40(28)
    stb 0, 0x2b8(28)
L_8029A838:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    li 29, 0x0
    stfs 30, 0x254(28)
    stw 29, 0x248(28)
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x408200D4 # bne .L_8029A938
    li 0, 0x1
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    stb 0, 0x24c(28)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    psq_l 1, 0xc(28), 0, 0
    lfs 6, 0x14(28)
    psq_st 1, 0x8(1), 0, 0
    lfs 2, 0x60(28)
    lfs 3, 0x8(1)
    lfs 1, 0x64(28)
    fadds 5, 3, 2
    lfs 2, 0xc(1)
    stfs 6, 0x10(1)
    fadds 2, 2, 1
    fadds 3, 5, 4
    stfs 5, 0x8(1)
    fadds 1, 2, 4
    stfs 2, 0xc(1)
    stfs 3, 0x8(1)
    frsp 31, 1
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
L_8029A8CC:
    stfs 31, 0x18(1)
    mr 26, 28
    li 27, 0x0
L_8029A8D8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    lhz 6, 0x3b0(26)
    li 5, 0x0
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x0
    bl fn_802A381C
    lfs 0, 0x18(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 30
    stfs 0, 0x18(1)
    .4byte 0x4180FFC0 # blt .L_8029A8D8
    lfs 0, 0x14(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 28, 28, 0xc
    fadds 0, 0, 30
    stfs 0, 0x14(1)
    .4byte 0x4180FF98 # blt .L_8029A8CC
L_8029A938:
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
    lmw 26, 0x58(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8029A974:
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
    stmw 26, 0x58(1)
    mr 28, 3
    lis 3, lbl_80539D44@ha
    psq_l 3, 0x250(28), 0, 0
    lfs 2, 0x258(28)
    ps_mul 3, 3, 3
    .4byte 0xC022D708 # lfs f1, lbl_805406A8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820440 # bne .L_8029AE1C
    lbz 0, 0x2c0(28)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8029A9F8
    li 0, 0x0
    stb 0, 0x2c0(28)
    .4byte 0x48000428 # b .L_8029AE1C
L_8029A9F8:
    lbz 0, 0x2b4(28)
    cmplwi 0, 0x0
    .4byte 0x4182041C # beq .L_8029AE1C
    lbz 0, 0x2b9(28)
    li 31, -0x1
    cmplwi 0, 0x0
    .4byte 0x40820134 # bne .L_8029AB44
    lwz 3, 0x198(28)
    bl fn_80239108
    cmpwi 3, 0x4
    .4byte 0x4180003C # blt .L_8029AA5C
    lwz 27, 0x4(28)
    li 3, 0x0
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820028 # bne .L_8029AA5C
    lwz 3, 0x198(28)
    bl fn_80238BC4
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8029AA5C
    cmpwi 3, 0x4
    .4byte 0x40800010 # bge .L_8029AA5C
    li 0, 0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_8029AA60
L_8029AA5C:
    li 3, -0x1
L_8029AA60:
    cmpwi 3, -0x1
    mr 31, 3
    .4byte 0x408200DC # bne .L_8029AB44
    lfs 1, 0x80(28)
    addi 3, 1, 0x20
    stfs 1, 0x20(1)
    lfs 4, 0x84(28)
    stfs 4, 0x24(1)
    lfs 2, 0x88(28)
    stfs 2, 0x28(1)
    lfs 3, 0x8c(28)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(28)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(28)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(28)
    lwz 5, 0x198(28)
    bl fn_80239470
    cmpwi 3, 0x0
    .4byte 0x41800074 # blt .L_8029AB3C
    lwz 3, 0x198(28)
    bl fn_80238A68
    cmpwi 3, 0x4
    .4byte 0x41800064 # blt .L_8029AB3C
    lwz 3, 0x198(28)
    bl fn_8023885C
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_8029AB3C
    cmpwi 3, 0x4
    .4byte 0x4080004C # bge .L_8029AB3C
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8029AB04
    li 3, 0x1
    .4byte 0x48000030 # b .L_8029AB30
L_8029AB04:
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8029AB14
    li 3, 0x0
    .4byte 0x48000020 # b .L_8029AB30
L_8029AB14:
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_8029AB24
    li 3, 0x3
    .4byte 0x48000010 # b .L_8029AB30
L_8029AB24:
    cmpwi 3, 0x3
    .4byte 0x40820008 # bne .L_8029AB30
    li 3, 0x2
L_8029AB30:
    li 0, -0x1
    stw 0, 0x2cc(28)
    .4byte 0x48000008 # b .L_8029AB40
L_8029AB3C:
    li 3, -0x1
L_8029AB40:
    mr 31, 3
L_8029AB44:
    cmpwi 31, 0x3
    .4byte 0x408202D4 # bne .L_8029AE1C
    lwz 27, 0x4(28)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_8029AB64
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_8029AB68
L_8029AB64:
    addi 6, 3, 0xdc
L_8029AB68:
    lwz 5, 0x0(6)
    li 30, 0x1
    lwz 4, 0x4(6)
    li 29, 0x0
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    stw 5, 0x3c(1)
    .4byte 0xC062D6D8 # lfs f3, lbl_80540678@sda21(r0)
    psq_st 1, 0x30(1), 0, 0
    lfs 4, 0x3c(1)
    stfs 0, 0x38(1)
    lfs 1, 0x30(1)
    lfs 0, 0x60(28)
    stw 4, 0x40(1)
    fadds 1, 1, 0
    lfs 2, 0x34(1)
    stw 3, 0x44(1)
    .4byte 0xC0C2D6D0 # lfs f6, lbl_80540670@sda21(r0)
    stw 0, 0x48(1)
    fadds 0, 1, 3
    fsubs 5, 4, 6
    lfs 4, 0x40(1)
    stfs 1, 0x30(1)
    lfs 1, 0x44(1)
    fsubs 27, 4, 6
    stfs 0, 0x30(1)
    lfs 0, 0x48(1)
    fadds 28, 1, 6
    lfs 1, 0x64(28)
    frsp 31, 5
    fadds 29, 0, 6
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 2, 2, 1
    stfs 5, 0x3c(1)
    .4byte 0xC3C2D6DC # lfs f30, lbl_8054067C@sda21(r0)
    fsubs 1, 2, 3
    stfs 2, 0x34(1)
    stfs 27, 0x40(1)
    stfs 28, 0x44(1)
    stfs 29, 0x48(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_8029AC18:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x30
    bl fn_802A1554
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8029AC6C
    lwz 26, 0x198(28)
    lwz 27, 0x4(28)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 27
    lbz 0, 0x1(3)
    mr 6, 26
    addi 5, 1, 0x30
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8029AC74
L_8029AC6C:
    li 30, 0x0
    .4byte 0x48000064 # b .L_8029ACD4
L_8029AC74:
    lfs 1, 0x30(1)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8029ACAC
    lfs 0, 0x34(1)
    fcmpo cr0, 0, 27
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8029ACAC
    fcmpo cr0, 1, 28
    .4byte 0x40800010 # bge .L_8029ACAC
    fcmpo cr0, 0, 29
    .4byte 0x40800008 # bge .L_8029ACAC
    li 0, 0x1
L_8029ACAC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8029ACBC
    li 30, 0x0
    .4byte 0x4800001C # b .L_8029ACD4
L_8029ACBC:
    lfs 0, 0x30(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    fadds 0, 0, 30
    stfs 0, 0x30(1)
    .4byte 0x4180FF48 # blt .L_8029AC18
L_8029ACD4:
    mr 3, 28
    li 4, 0x3
    bl fn_802957CC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8029ACEC
    li 30, 0x0
L_8029ACEC:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820128 # bne .L_8029AE1C
    cmpwi 31, 0x3
    .4byte 0x4082001C # bne .L_8029AD18
    lwz 3, 0x198(28)
    bl fn_80238E08
    .4byte 0xC002D754 # lfs f0, lbl_805406F4@sda21(r0)
    li 0, 0x1
    stfs 0, 0x40(28)
    stb 0, 0x2b8(28)
L_8029AD18:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002D744 # lfs f0, lbl_805406E4@sda21(r0)
    li 29, 0x0
    stfs 0, 0x254(28)
    stw 29, 0x248(28)
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x408200D8 # bne .L_8029AE1C
    li 0, 0x1
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    stb 0, 0x24c(28)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    psq_l 1, 0xc(28), 0, 0
    lfs 6, 0x14(28)
    psq_st 1, 0x8(1), 0, 0
    lfs 2, 0x60(28)
    lfs 3, 0x8(1)
    lfs 1, 0x64(28)
    fadds 5, 3, 2
    lfs 2, 0xc(1)
    stfs 6, 0x10(1)
    fadds 2, 2, 1
    .4byte 0xC3E2D6DC # lfs f31, lbl_8054067C@sda21(r0)
    fadds 3, 5, 4
    stfs 5, 0x8(1)
    fadds 1, 2, 4
    stfs 2, 0xc(1)
    stfs 3, 0x8(1)
    frsp 30, 1
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
L_8029ADB0:
    stfs 30, 0x18(1)
    mr 26, 28
    li 27, 0x0
L_8029ADBC:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    lhz 6, 0x3b0(26)
    li 5, 0x0
    bl fn_802A381C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x14
    li 5, 0x1
    li 6, 0x0
    bl fn_802A381C
    lfs 0, 0x18(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x6
    addi 26, 26, 0x2
    fadds 0, 0, 31
    stfs 0, 0x18(1)
    .4byte 0x4180FFC0 # blt .L_8029ADBC
    lfs 0, 0x14(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x6
    addi 28, 28, 0xc
    fadds 0, 0, 31
    stfs 0, 0x14(1)
    .4byte 0x4180FF98 # blt .L_8029ADB0
L_8029AE1C:
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
    lmw 26, 0x58(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8029AE58:
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
    stmw 26, 0x38(1)
    mr 26, 3
    .4byte 0xC082D6D8 # lfs f4, lbl_80540678@sda21(r0)
    psq_l 0, 0xc(26), 0, 0
    mr 30, 26
    lfs 3, 0x14(3)
    li 28, 0x0
    psq_st 0, 0x8(1), 0, 0
    lfs 0, 0x60(3)
    lfs 1, 0x8(1)
    lfs 2, 0xc(1)
    fadds 5, 1, 0
    lfs 1, 0x64(3)
    .4byte 0xC002D6D4 # lfs f0, lbl_80540674@sda21(r0)
    fadds 2, 2, 1
    stfs 3, 0x10(1)
    fadds 3, 5, 4
    stfs 5, 0x8(1)
    fadds 1, 2, 4
    .4byte 0xC382D6DC # lfs f28, lbl_8054067C@sda21(r0)
    stfs 2, 0xc(1)
    stfs 3, 0x8(1)
    frsp 29, 1
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
L_8029AEF4:
    stfs 29, 0x18(1)
    mr 29, 30
    li 27, 0x0
L_8029AF00:
    addi 3, 1, 0x14
    li 4, 0x1
    bl fn_80226850
    sth 3, 0x320(29)
    addi 3, 1, 0x14
    li 4, 0x0
    bl fn_80226850
    sth 3, 0x368(29)
    lbz 0, 0x2b5(26)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8029AF54
    lwz 0, 0x244(26)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8029AF40
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8029AF4C
L_8029AF40:
    li 0, 0x78
    sth 0, 0x3b0(29)
    .4byte 0x4800000C # b .L_8029AF54
L_8029AF4C:
    li 0, 0x360
    sth 0, 0x3b0(29)
L_8029AF54:
    lfs 0, 0x18(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x6
    addi 29, 29, 0x2
    fadds 0, 0, 28
    stfs 0, 0x18(1)
    .4byte 0x4180FF94 # blt .L_8029AF00
    lfs 0, 0x14(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x6
    addi 30, 30, 0xc
    fadds 0, 0, 28
    stfs 0, 0x14(1)
    .4byte 0x4180FF6C # blt .L_8029AEF4
    li 0, 0x1
    li 29, -0x1
    stb 0, 0x2b5(26)
    li 28, -0x1
    li 27, -0x1
    lis 30, 0x5741
    lfs 31, 0x60(26)
    lfs 0, 0xc(26)
    lfs 29, 0x68(26)
    lfs 30, 0x64(26)
    fadds 31, 31, 0
    lfs 1, 0x10(26)
    fadds 29, 29, 0
    lfs 28, 0x6c(26)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_8029AFCC:
    bl SpatialRegistry_GetBase
    mr 5, 29
    addi 4, 30, 0x5250
    bl fn_801F78F4
    mr. 29, 3
    .4byte 0x4180019C # blt .L_8029B17C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x4182FFD8 # beq .L_8029AFCC
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    lwz 0, 0x244(31)
    cmpw 3, 0
    .4byte 0x4082FFC4 # bne .L_8029AFCC
    bl GetRoomConfigRecord
    lwz 3, 0x18(3)
    lwz 0, 0x248(31)
    cmpw 3, 0
    .4byte 0x4082FFB0 # bne .L_8029AFCC
    lwz 0, 0x90(26)
    lwz 6, 0x4(31)
    extrwi 5, 0, 5, 20
    cntlzw 0, 5
    extrwi 3, 0, 1, 26
    addi 0, 5, 0x7
    neg 3, 3
    andc 0, 0, 3
    cmpw 6, 0
    .4byte 0x4082004C # bne .L_8029B090
    lwz 0, 0x90(31)
    lwz 3, 0x4(26)
    extrwi. 4, 0, 3, 5
    addi 0, 4, 0x7
    .4byte 0x40820008 # bne .L_8029B060
    mr 0, 4
L_8029B060:
    cmpw 3, 0
    .4byte 0x4082002C # bne .L_8029B090
    lwz 0, 0x29c(26)
    cmpwi 0, 0x4
    .4byte 0x4080FF5C # bge .L_8029AFCC
    slwi 3, 0, 2
    addi 0, 3, 0x25c
    stwx 29, 26, 0
    lwz 3, 0x29c(26)
    addi 0, 3, 0x1
    stw 0, 0x29c(26)
    .4byte 0x4BFFFF40 # b .L_8029AFCC
L_8029B090:
    lwz 0, 0x90(31)
    cntlzw 3, 5
    extrwi 4, 3, 1, 26
    addi 3, 5, 0x7
    extrwi. 5, 0, 3, 5
    neg 0, 4
    andc 3, 3, 0
    addi 0, 5, 0x7
    .4byte 0x40820008 # bne .L_8029B0B8
    mr 0, 5
L_8029B0B8:
    cmpw 3, 0
    .4byte 0x4082FF10 # bne .L_8029AFCC
    lwz 0, 0x4(26)
    cmpw 0, 6
    .4byte 0x4082FF04 # bne .L_8029AFCC
    lwz 0, 0x2a0(26)
    cmpwi 0, 0x4
    .4byte 0x4080FEF8 # bge .L_8029AFCC
    slwi 3, 0, 2
    addi 0, 3, 0x26c
    stwx 29, 26, 0
    lwz 3, 0x2a0(26)
    addi 0, 3, 0x1
    stw 0, 0x2a0(26)
    lwz 0, 0x90(31)
    psq_l 1, 0xc(31), 0, 0
    clrlwi 0, 0, 25
    lfs 0, 0x14(31)
    cmpwi 0, 0x3
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    .4byte 0x41820024 # beq .L_8029B130
    .4byte 0x40800014 # bge .L_8029B124
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8029B130
    .4byte 0x40800028 # bge .L_8029B144
    .4byte 0x48000048 # b .L_8029B168
L_8029B124:
    cmpwi 0, 0x17
    .4byte 0x41820030 # beq .L_8029B158
    .4byte 0x4800003C # b .L_8029B168
L_8029B130:
    lfs 1, 0x24(1)
    .4byte 0xC002D6EC # lfs f0, lbl_8054068C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x24(1)
    .4byte 0x48000028 # b .L_8029B168
L_8029B144:
    lfs 1, 0x24(1)
    .4byte 0xC002D6EC # lfs f0, lbl_8054068C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x24(1)
    .4byte 0x48000014 # b .L_8029B168
L_8029B158:
    lfs 1, 0x20(1)
    .4byte 0xC002D6EC # lfs f0, lbl_8054068C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x20(1)
L_8029B168:
    psq_l 1, 0x20(1), 0, 0
    lfs 0, 0x28(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x4BFFFE54 # b .L_8029AFCC
L_8029B17C:
    mr 29, 26
    mr 30, 26
    li 31, 0x0
    .4byte 0x48000034 # b .L_8029B1BC
L_8029B18C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x25c(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029B1B0
    lfs 0, 0xc(3)
    stfs 0, 0x2dc(30)
    lfs 0, 0x10(3)
    stfs 0, 0x2e0(30)
L_8029B1B0:
    addi 29, 29, 0x4
    addi 30, 30, 0x8
    addi 31, 31, 0x1
L_8029B1BC:
    lwz 0, 0x29c(26)
    cmpw 31, 0
    .4byte 0x4180FFC8 # blt .L_8029B18C
    lis 29, 0x464c
L_8029B1CC:
    bl SpatialRegistry_GetBase
    mr 5, 28
    addi 4, 29, 0x4d45
    bl fn_801F78F4
    mr. 28, 3
    .4byte 0x41800040 # blt .L_8029B220
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_8029B1CC
    lwz 0, 0x2a4(26)
    cmpwi 0, 0x4
    .4byte 0x40800020 # bge .L_8029B220
    slwi 3, 0, 2
    addi 0, 3, 0x27c
    stwx 28, 26, 0
    lwz 3, 0x2a4(26)
    addi 0, 3, 0x1
    stw 0, 0x2a4(26)
    .4byte 0x4BFFFFB0 # b .L_8029B1CC
L_8029B220:
    lis 28, 0x444f
L_8029B224:
    bl SpatialRegistry_GetBase
    mr 5, 27
    addi 4, 28, 0x4f52
    bl fn_801F78F4
    mr. 27, 3
    .4byte 0x41800080 # blt .L_8029B2B8
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_8029B224
    lfs 1, 0xc(3)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8029B288
    lfs 0, 0x10(3)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8029B288
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_8029B288
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_8029B288
    li 0, 0x1
L_8029B288:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF98 # beq .L_8029B224
    lwz 0, 0x2a8(26)
    cmpwi 0, 0x4
    .4byte 0x40800020 # bge .L_8029B2B8
    slwi 3, 0, 2
    addi 0, 3, 0x28c
    stwx 27, 26, 0
    lwz 3, 0x2a8(26)
    addi 0, 3, 0x1
    stw 0, 0x2a8(26)
    .4byte 0x4BFFFF70 # b .L_8029B224
L_8029B2B8:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8029B2EC:
    .4byte 0xC062D6E0 # lfs f3, lbl_80540680@sda21(r0)
    li 7, 0x1
    .4byte 0xC042D6E4 # lfs f2, lbl_80540684@sda21(r0)
    li 6, 0x3
    stfs 3, 0x60(3)
    li 5, 0x4
    li 0, 0x2710
    .4byte 0xC022D6D4 # lfs f1, lbl_80540674@sda21(r0)
    stfs 3, 0x64(3)
    li 4, 0x0
    .4byte 0xC002D6E8 # lfs f0, lbl_80540688@sda21(r0)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 2, 0x88(3)
    stfs 2, 0x8c(3)
    stw 7, 0xb8(3)
    stw 6, 0xbc(3)
    stw 5, 0x1a4(3)
    stw 0, 0x108(3)
    stfs 1, 0x250(3)
    stfs 1, 0x254(3)
    stfs 1, 0x258(3)
    stw 4, 0x2ac(3)
    stb 4, 0x24c(3)
    stw 4, 0x248(3)
    stfs 0, 0x54(3)
    stfs 0, 0x58(3)
    stfs 0, 0x5c(3)
    stw 4, 0x230(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 30
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 29
    stb 0, 0x2b9(3)
    stb 4, 0x2b5(3)
    stb 4, 0x2b8(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 27
    stw 0, 0x2b0(3)
    stb 7, 0x2b4(3)
    stb 7, 0x2b6(3)
    stb 7, 0x2b7(3)
    lwz 0, 0x244(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8029B3B4
    stb 4, 0x2b6(3)
    .4byte 0x48000014 # b .L_8029B3C4
L_8029B3B4:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8029B3C4
    stb 4, 0x2b6(3)
    stb 4, 0x2b7(3)
L_8029B3C4:
    li 4, -0x1
    li 0, 0x0
    stw 4, 0x25c(3)
    stw 4, 0x26c(3)
    stw 4, 0x260(3)
    stw 4, 0x270(3)
    stw 4, 0x264(3)
    stw 4, 0x274(3)
    stw 4, 0x268(3)
    stw 4, 0x278(3)
    stw 4, 0x27c(3)
    stw 4, 0x280(3)
    stw 4, 0x284(3)
    stw 4, 0x288(3)
    stw 4, 0x28c(3)
    stw 4, 0x290(3)
    stw 4, 0x294(3)
    stw 4, 0x298(3)
    stw 0, 0x29c(3)
    stw 0, 0x2a0(3)
    stw 0, 0x2a4(3)
    stw 0, 0x2a8(3)
    stw 0, 0x2cc(3)
    stb 0, 0x2c0(3)
    stb 0, 0x2ba(3)
    stb 0, 0x2bb(3)
    stb 0, 0x2bc(3)
    stb 0, 0x2bd(3)
    stb 0, 0x2be(3)
    stb 0, 0x2bf(3)
    stw 0, 0x2c4(3)
    stw 0, 0x234(3)
    stw 0, 0x2fc(3)
    stw 0, 0x300(3)
    stw 0, 0x304(3)
    stw 0, 0x308(3)
    stw 0, 0x310(3)
    stw 0, 0x314(3)
    stw 0, 0x318(3)
    stw 0, 0x31c(3)
    stw 0, 0x30c(3)
    lfs 0, 0xc(3)
    stfs 0, 0x238(3)
    lfs 0, 0x10(3)
    stfs 0, 0x23c(3)
    lfs 0, 0x14(3)
    stfs 0, 0x240(3)
    blr

fn_8029B484:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr. 26, 3
    mr 27, 4
    .4byte 0x41820084 # beq .L_8029B520
    lis 3, lbl_804A7AE0@ha
    mr 30, 26
    addi 0, 3, lbl_804A7AE0@l
    li 29, 0x0
    stw 0, 0x0(26)
L_8029B4B4:
    li 28, 0x0
    mr 31, 30
L_8029B4BC:
    lwz 3, 0x2fc(31)
    bl fn_801EE434
    addi 28, 28, 0x1
    addi 31, 31, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FFEC # blt .L_8029B4BC
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x2
    .4byte 0x4180FFD4 # blt .L_8029B4B4
    li 28, 0x0
    mr 30, 26
L_8029B4EC:
    lwz 3, 0x310(30)
    bl fn_801EE434
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFEC # blt .L_8029B4EC
    mr 3, 26
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 27
    .4byte 0x4081000C # ble .L_8029B520
    mr 3, 26
    bl dtor_80084580
L_8029B520:
    mr 3, 26
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029B538:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0468@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0468@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B588
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
L_8029B588:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B5C0
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
L_8029B5C0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B5F8
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
L_8029B5F8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B630
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
L_8029B630:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B668
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
L_8029B668:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B6A0
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
L_8029B6A0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B6D8
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
L_8029B6D8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B710
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
L_8029B710:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029B748
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
L_8029B748:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029B75C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8029B7A0
    lis 5, lbl_804A7B38@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7B38@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8029B7A0
    mr 3, 30
    bl dtor_80084580
L_8029B7A0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029B7BC:
    blr

fn_8029B7C0:
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
    li 30, 0x0
    lfs 31, 0x60(3)
    li 29, 0x0
    lfs 0, 0xc(3)
    lfs 29, 0x68(3)
    lfs 30, 0x64(3)
    fadds 31, 31, 0
    lfs 1, 0x10(3)
    fadds 29, 29, 0
    lfs 28, 0x6c(3)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_8029B830:
    lwz 31, 0x4(28)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 31
    .4byte 0x40820078 # bne .L_8029B8B8
    mr 3, 29
    bl fn_8022DB04
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8029B8B8
    lwz 0, 0x90(28)
    mr 3, 29
    extrwi 31, 0, 2, 13
    bl fn_80230CFC
    cmpw 31, 3
    .4byte 0x40820050 # bne .L_8029B8B8
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8029B8AC
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8029B8AC
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_8029B8AC
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_8029B8AC
    li 0, 0x1
L_8029B8AC:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8029B8B8
    addi 30, 30, 0x1
L_8029B8B8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF70 # blt .L_8029B830
    lwz 3, 0x90(28)
    li 0, 0x1
    extrwi. 3, 3, 5, 5
    .4byte 0x41820008 # beq .L_8029B8D8
    mr 0, 3
L_8029B8D8:
    cmpw 30, 0
    .4byte 0x41800024 # blt .L_8029B900
    mr 3, 28
    li 4, 0xff
    lwz 12, 0x0(28)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000020 # b .L_8029B91C
L_8029B900:
    mr 3, 28
    li 4, 0xff
    lwz 12, 0x0(28)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8029B91C:
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

fn_8029B95C:
    stwu 1, -0x10(1)
    lwz 4, 0x90(3)
    extrwi 0, 4, 2, 13
    cmpwi 0, 0x2
    .4byte 0x418200C4 # beq .L_8029BA30
    .4byte 0x40800014 # bge .L_8029B984
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8029B990
    .4byte 0x40800064 # bge .L_8029B9E0
    .4byte 0x4800014C # b .L_8029BACC
L_8029B984:
    cmpwi 0, 0x4
    .4byte 0x40800144 # bge .L_8029BACC
    .4byte 0x480000F4 # b .L_8029BA80
L_8029B990:
    extrwi. 4, 4, 5, 15
    li 0, 0x1
    .4byte 0x41820008 # beq .L_8029B9A0
    mr 0, 4
L_8029B9A0:
    xoris 4, 0, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC042D758 # lfs f2, lbl_805406F8@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC822D768 # lfd f1, lbl_80540708@sda21(r0)
    lfd 0, 0x8(1)
    stfs 2, 0x60(3)
    .4byte 0xC042D75C # lfs f2, lbl_805406FC@sda21(r0)
    fsubs 0, 0, 1
    .4byte 0xC022D760 # lfs f1, lbl_80540700@sda21(r0)
    stfs 2, 0x64(3)
    fmuls 0, 1, 0
    stfs 2, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x480000F0 # b .L_8029BACC
L_8029B9E0:
    extrwi. 4, 4, 5, 15
    li 0, 0x1
    .4byte 0x41820008 # beq .L_8029B9F0
    mr 0, 4
L_8029B9F0:
    xoris 4, 0, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC062D760 # lfs f3, lbl_80540700@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC822D768 # lfd f1, lbl_80540708@sda21(r0)
    lfd 0, 0x8(1)
    stfs 3, 0x60(3)
    fsubs 0, 0, 1
    .4byte 0xC042D75C # lfs f2, lbl_805406FC@sda21(r0)
    .4byte 0xC022D764 # lfs f1, lbl_80540704@sda21(r0)
    stfs 2, 0x64(3)
    fmuls 0, 3, 0
    stfs 1, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x480000A0 # b .L_8029BACC
L_8029BA30:
    extrwi. 4, 4, 5, 15
    li 0, 0x1
    .4byte 0x41820008 # beq .L_8029BA40
    mr 0, 4
L_8029BA40:
    xoris 4, 0, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC062D75C # lfs f3, lbl_805406FC@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC822D768 # lfd f1, lbl_80540708@sda21(r0)
    lfd 0, 0x8(1)
    .4byte 0xC042D760 # lfs f2, lbl_80540700@sda21(r0)
    fsubs 0, 0, 1
    stfs 3, 0x60(3)
    .4byte 0xC022D758 # lfs f1, lbl_805406F8@sda21(r0)
    fmuls 0, 2, 0
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 3, 0x6c(3)
    .4byte 0x48000050 # b .L_8029BACC
L_8029BA80:
    extrwi. 4, 4, 5, 15
    li 0, 0x1
    .4byte 0x41820008 # beq .L_8029BA90
    mr 0, 4
L_8029BA90:
    xoris 4, 0, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC062D75C # lfs f3, lbl_805406FC@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC822D768 # lfd f1, lbl_80540708@sda21(r0)
    lfd 0, 0x8(1)
    .4byte 0xC042D760 # lfs f2, lbl_80540700@sda21(r0)
    fsubs 1, 0, 1
    stfs 3, 0x60(3)
    .4byte 0xC002D764 # lfs f0, lbl_80540704@sda21(r0)
    stfs 2, 0x64(3)
    fmuls 1, 2, 1
    stfs 1, 0x68(3)
    stfs 0, 0x6c(3)
L_8029BACC:
    lfs 0, 0x60(3)
    stfs 0, 0x80(3)
    lfs 0, 0x64(3)
    stfs 0, 0x84(3)
    lfs 0, 0x68(3)
    stfs 0, 0x88(3)
    lfs 0, 0x6c(3)
    stfs 0, 0x8c(3)
    addi 1, 1, 0x10
    blr

fn_8029BAF4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0568@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0568@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BB44
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
L_8029BB44:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BB7C
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
L_8029BB7C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BBB4
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
L_8029BBB4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BBEC
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
L_8029BBEC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BC24
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
L_8029BC24:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BC5C
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
L_8029BC5C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BC94
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
L_8029BC94:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BCCC
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
L_8029BCCC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029BD04
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
L_8029BD04:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029BD18:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8029BD5C
    lis 5, lbl_804A7B90@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7B90@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8029BD5C
    mr 3, 30
    bl dtor_80084580
L_8029BD5C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029BD78:
    li 0, 0x0
    stb 0, 0x11c(3)
    blr

fn_8029BD84:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022D770 # lfs f1, lbl_80540710@sda21(r0)
    lis 4, lbl_8046C3E8@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_8046C3E8@l
    fmr 2, 1
    li 5, 0x17e
    li 6, 0x0
    li 7, 0x0
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029BDC0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 31, 3
    addi 3, 1, 0x10
    lfs 1, 0x60(31)
    stfs 1, 0x10(1)
    lfs 4, 0x64(31)
    stfs 4, 0x14(1)
    lfs 2, 0x68(31)
    stfs 2, 0x18(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x1c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x10(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x18(1)
    fadds 0, 3, 2
    stfs 1, 0x14(1)
    stfs 0, 0x1c(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    addi 3, 31, 0xc
    addi 4, 31, 0x230
    bl PSVECDistance
    .4byte 0xC002D774 # lfs f0, lbl_80540714@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820148 # bne .L_8029BF98
    .4byte 0xC022D778 # lfs f1, lbl_80540718@sda21(r0)
    lfs 2, 0x24(31)
    lfs 3, 0xc(31)
    fadds 0, 1, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8029BE88
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8029BE88
    stfs 2, 0xc(31)
    .4byte 0x48000040 # b .L_8029BEC4
L_8029BE88:
    fctiwz 0, 3
    lis 0, 0x4330
    stw 0, 0x28(1)
    .4byte 0xC822D788 # lfd f1, lbl_80540728@sda21(r0)
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
L_8029BEC4:
    .4byte 0xC022D778 # lfs f1, lbl_80540718@sda21(r0)
    lfs 2, 0x28(31)
    lfs 3, 0x10(31)
    fadds 0, 1, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8029BEF8
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8029BEF8
    stfs 2, 0x10(31)
    .4byte 0x48000040 # b .L_8029BF34
L_8029BEF8:
    fctiwz 0, 3
    lis 0, 0x4330
    stw 0, 0x20(1)
    .4byte 0xC822D788 # lfd f1, lbl_80540728@sda21(r0)
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    addi 0, 3, 0x4
    srawi 0, 0, 3
    addze 0, 0
    slwi 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x10(31)
L_8029BF34:
    addi 3, 31, 0xc
    lfs 1, 0x14(31)
    psq_l 2, 0x0(3), 0, 0
    li 0, 0x8
    .4byte 0xC002D77C # lfs f0, lbl_8054071C@sda21(r0)
    psq_st 2, 0x230(31), 0, 0
    stfs 1, 0x238(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    stw 0, 0x23c(31)
    lwz 4, 0x4(31)
    bl fn_80226850
    sth 3, 0x240(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 7, 0x159
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 6, 0x4(31)
    bl fn_802A3948
    .4byte 0x4800021C # b .L_8029C1B0
L_8029BF98:
    addi 3, 31, 0xc
    psq_l 0, 0x3c(31), 0, 0
    psq_l 1, 0x0(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x23c(31)
    cmpwi 4, 0x0
    .4byte 0x40810010 # ble .L_8029BFD4
    subi 0, 4, 0x1
    stw 0, 0x23c(31)
    .4byte 0x480001E0 # b .L_8029C1B0
L_8029BFD4:
    psq_l 3, 0x3c(31), 0, 0
    lis 4, lbl_80539D44@ha
    lfs 31, 0x44(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D780 # lfs f1, lbl_80540720@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x408201B0 # bne .L_8029C1B0
    lwz 4, 0x4(31)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x159
    .4byte 0x418200B0 # beq .L_8029C0C4
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x2
    .4byte 0x41820048 # beq .L_8029C06C
    .4byte 0x40800010 # bge .L_8029C038
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_8029C044
    .4byte 0x48000084 # b .L_8029C0B8
L_8029C038:
    cmpwi 0, 0x4
    .4byte 0x4080007C # bge .L_8029C0B8
    .4byte 0x48000054 # b .L_8029C094
L_8029C044:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000050 # b .L_8029C0B8
L_8029C06C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    li 7, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000028 # b .L_8029C0B8
L_8029C094:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    li 7, 0x7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8029C0B8:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000F0 # b .L_8029C1B0
L_8029C0C4:
    lwz 3, 0x198(31)
    bl fn_80239108
    cmpwi 3, 0x1
    .4byte 0x408200E0 # bne .L_8029C1B0
    lwz 3, 0x198(31)
    bl fn_80238BC4
    mr. 30, 3
    .4byte 0x418000D0 # blt .L_8029C1B0
    cmpwi 30, 0x4
    .4byte 0x408000C8 # bge .L_8029C1B0
    lis 3, lbl_8046C398@ha
    slwi 0, 30, 3
    addi 5, 3, lbl_8046C398@l
    addi 3, 1, 0x8
    add 4, 5, 0
    lfsx 2, 5, 0
    lfs 1, 0x4(4)
    li 5, 0x0
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    lfs 0, 0xc(31)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    lfs 0, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_802260DC
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_8029C1B0
    lwz 3, 0x198(31)
    bl fn_80238E08
    mulli 0, 30, 0xc
    lis 3, lbl_8046C3B8@ha
    lis 4, 0x3
    addi 3, 3, lbl_8046C3B8@l
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
    stfs 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x234(31)
    lfs 0, 0x14(31)
    stfs 0, 0x238(31)
    bl fn_801F0E34
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    lhz 7, 0x240(31)
    bl fn_802A3948
L_8029C1B0:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8029C1D0:
    stwu 1, -0x50(1)
    mflr 0
    lis 6, 0x4330
    .4byte 0xC882D788 # lfd f4, lbl_80540728@sda21(r0)
    stw 0, 0x54(1)
    li 5, 0x1
    .4byte 0xC0A2D790 # lfs f5, lbl_80540730@sda21(r0)
    li 4, 0x0
    stw 31, 0x4c(1)
    mr 31, 3
    .4byte 0xC022D77C # lfs f1, lbl_8054071C@sda21(r0)
    li 0, 0x2
    lfs 3, 0xc(3)
    addi 3, 31, 0xc
    stw 6, 0x10(1)
    fctiwz 0, 3
    stw 6, 0x20(1)
    stfd 0, 0x8(1)
    .4byte 0xC002D794 # lfs f0, lbl_80540734@sda21(r0)
    lwz 8, 0xc(1)
    stw 6, 0x30(1)
    slwi 7, 8, 29
    srwi 8, 8, 31
    subf 7, 8, 7
    stw 6, 0x40(1)
    rotlwi 6, 7, 3
    add 6, 6, 8
    xoris 6, 6, 0x8000
    stw 6, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 4
    fsubs 2, 5, 2
    fctiwz 2, 2
    stfd 2, 0x18(1)
    lwz 6, 0x1c(1)
    xoris 6, 6, 0x8000
    stw 6, 0x24(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 4
    fadds 2, 3, 2
    stfs 2, 0xc(31)
    lfs 3, 0x10(31)
    fctiwz 2, 3
    stfd 2, 0x28(1)
    lwz 7, 0x2c(1)
    slwi 6, 7, 29
    srwi 7, 7, 31
    subf 6, 7, 6
    rotlwi 6, 6, 3
    add 6, 6, 7
    xoris 6, 6, 0x8000
    stw 6, 0x34(1)
    lfd 2, 0x30(1)
    fsubs 2, 2, 4
    fsubs 2, 5, 2
    fctiwz 2, 2
    stfd 2, 0x38(1)
    lwz 6, 0x3c(1)
    xoris 6, 6, 0x8000
    stw 6, 0x44(1)
    lfd 2, 0x40(1)
    fsubs 2, 2, 4
    fadds 2, 3, 2
    stfs 2, 0x10(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 1, 0x44(31)
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0x14(31)
    psq_st 2, 0x24(31), 0, 0
    stfs 1, 0x2c(31)
    psq_l 2, 0x24(31), 0, 0
    lfs 1, 0x2c(31)
    psq_st 2, 0x230(31), 0, 0
    stfs 1, 0x238(31)
    stfs 0, 0x60(31)
    stfs 0, 0x64(31)
    stfs 5, 0x68(31)
    stfs 5, 0x6c(31)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 5, 0x88(31)
    stfs 5, 0x8c(31)
    stw 5, 0x1a4(31)
    stw 4, 0x23c(31)
    stw 0, 0xb8(31)
    lwz 4, 0x4(31)
    bl fn_80226850
    sth 3, 0x240(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 7, 0x159
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 6, 0x4(31)
    bl fn_802A3948
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8029C360:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0668@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0668@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C3B0
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
L_8029C3B0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C3E8
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
L_8029C3E8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C420
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
L_8029C420:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C458
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
L_8029C458:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C490
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
L_8029C490:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C4C8
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
L_8029C4C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C500
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
L_8029C500:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C538
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
L_8029C538:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029C570
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
L_8029C570:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029C584:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x18(1), 0, 0
    stfs 0, 0x20(1)
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x408200E0 # bne .L_8029C694
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 3, 0x1c(1)
    lwz 4, 0x24(3)
    .4byte 0xC022D798 # lfs f1, lbl_80540738@sda21(r0)
    fsubs 2, 3, 0
    lwz 3, 0x164(4)
    lwz 0, 0x168(4)
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    stw 3, 0x8(1)
    fadds 0, 1, 0
    lwz 3, 0x16c(4)
    lwz 0, 0x170(4)
    fcmpo cr0, 2, 0
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    .4byte 0x40800010 # bge .L_8029C608
    .4byte 0xC002D79C # lfs f0, lbl_8054073C@sda21(r0)
    fadds 0, 3, 0
    stfs 0, 0x1c(1)
L_8029C608:
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_8029C654
    .4byte 0xC022D7A0 # lfs f1, lbl_80540740@sda21(r0)
    lfs 0, 0x8(1)
    lfs 2, 0x18(1)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8029C634
    stfs 0, 0x18(1)
    .4byte 0x480001BC # b .L_8029C7EC
L_8029C634:
    lfs 1, 0x10(1)
    .4byte 0xC002D7A4 # lfs f0, lbl_80540744@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x408201A4 # bne .L_8029C7EC
    stfs 0, 0x18(1)
    .4byte 0x4800019C # b .L_8029C7EC
L_8029C654:
    .4byte 0xC022D79C # lfs f1, lbl_8054073C@sda21(r0)
    lfs 0, 0x8(1)
    lfs 2, 0x18(1)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8029C674
    stfs 0, 0x18(1)
    .4byte 0x4800017C # b .L_8029C7EC
L_8029C674:
    lfs 1, 0x10(1)
    .4byte 0xC002D7A8 # lfs f0, lbl_80540748@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820164 # bne .L_8029C7EC
    stfs 0, 0x18(1)
    .4byte 0x4800015C # b .L_8029C7EC
L_8029C694:
    lwz 3, 0x248(31)
    addi 4, 1, 0x8
    bl fn_8022B8EC
    lfs 3, 0x1c(1)
    lfs 2, 0x20(1)
    .4byte 0xC022D798 # lfs f1, lbl_80540738@sda21(r0)
    lfs 0, 0xc(1)
    fsubs 2, 3, 2
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8029C6CC
    .4byte 0xC002D79C # lfs f0, lbl_8054073C@sda21(r0)
    fadds 0, 3, 0
    stfs 0, 0x1c(1)
L_8029C6CC:
    lbz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_8029C764
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_8029C728
    .4byte 0xC022D79C # lfs f1, lbl_8054073C@sda21(r0)
    lfs 0, 0x8(1)
    lfs 2, 0x18(1)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8029C70C
    stfs 0, 0x18(1)
    .4byte 0x480000E4 # b .L_8029C7EC
L_8029C70C:
    lfs 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x408200D0 # bne .L_8029C7EC
    stfs 0, 0x18(1)
    .4byte 0x480000C8 # b .L_8029C7EC
L_8029C728:
    .4byte 0xC022D7AC # lfs f1, lbl_8054074C@sda21(r0)
    lfs 0, 0x8(1)
    lfs 2, 0x18(1)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8029C748
    stfs 0, 0x18(1)
    .4byte 0x480000A8 # b .L_8029C7EC
L_8029C748:
    lfs 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820094 # bne .L_8029C7EC
    stfs 0, 0x18(1)
    .4byte 0x4800008C # b .L_8029C7EC
L_8029C764:
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_8029C7B4
    .4byte 0xC022D7B0 # lfs f1, lbl_80540750@sda21(r0)
    lfs 0, 0x8(1)
    lfs 2, 0x18(1)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8029C798
    stfs 0, 0x18(1)
    .4byte 0x48000058 # b .L_8029C7EC
L_8029C798:
    lfs 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820044 # bne .L_8029C7EC
    stfs 0, 0x18(1)
    .4byte 0x4800003C # b .L_8029C7EC
L_8029C7B4:
    .4byte 0xC022D7B4 # lfs f1, lbl_80540754@sda21(r0)
    lfs 0, 0x8(1)
    lfs 2, 0x18(1)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8029C7D4
    stfs 0, 0x18(1)
    .4byte 0x4800001C # b .L_8029C7EC
L_8029C7D4:
    lfs 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8029C7EC
    stfs 0, 0x18(1)
L_8029C7EC:
    li 0, -0x1
    addi 9, 1, 0x24
    stw 0, 0x34(1)
    li 10, 0x0
    stw 0, 0x38(1)
    .4byte 0x48000064 # b .L_8029C864
L_8029C804:
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
L_8029C864:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8029C804
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x51(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 5, 0x40(1)
    stw 6, 0x34(1)
    stw 5, 0x38(1)
    stw 5, 0x3c(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stb 4, 0x43(1)
    stb 4, 0x44(1)
    stb 5, 0x45(1)
    stb 5, 0x46(1)
    stb 5, 0x47(1)
    stb 5, 0x48(1)
    stb 5, 0x49(1)
    stb 4, 0x4a(1)
    stw 3, 0x4c(1)
    stb 4, 0x50(1)
    stb 5, 0x52(1)
    stw 6, 0x54(1)
    stw 5, 0x58(1)
    stw 0, 0x5c(1)
    stb 0, 0x40(1)
    stb 4, 0x51(1)
    lwz 0, 0x4(31)
    lwz 30, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8029C93C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046C490@ha
    addi 5, 3, lbl_8046C490@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D7B8 # lfs f1, lbl_80540758@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x24
    lwz 3, 0x20(4)
    addi 4, 1, 0x18
    bl fn_802F86CC
L_8029C93C:
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8029C974
    lwz 3, 0x198(31)
    addi 5, 1, 0x18
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 6, 0x230(31)
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x48000024 # b .L_8029C994
L_8029C974:
    lwz 3, 0x198(31)
    addi 5, 1, 0x18
    lwz 4, 0x4(31)
    li 7, 0x1
    lwz 6, 0x230(31)
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
L_8029C994:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8029C9AC:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8046C400@ha
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 28, 3
    addi 31, 4, lbl_8046C400@l
    lwz 3, 0x254(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8029C9EC
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41800010 # blt .L_8029C9EC
    cmpwi 0, 0xa
    .4byte 0x41810008 # bgt .L_8029C9EC
    bl fn_803703C8
L_8029C9EC:
    lwz 3, 0x250(28)
    cmpwi 3, 0x0
    .4byte 0x41820030 # beq .L_8029CA24
    subi 0, 3, 0x1
    stw 0, 0x250(28)
    lwz 0, 0x250(28)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8029CA18
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x4800051C # b .L_8029CF30
L_8029CA18:
    li 0, 0x0
    stw 0, 0x238(28)
    .4byte 0x48000484 # b .L_8029CEA4
L_8029CA24:
    lwz 0, 0x90(28)
    clrlwi 3, 0, 30
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0x8(3)
    .4byte 0xC002D7BC # lfs f0, lbl_8054075C@sda21(r0)
    psq_st 2, 0xc(28), 0, 0
    stfs 1, 0x14(28)
    lfs 1, 0x14(28)
    fadds 0, 1, 0
    stfs 0, 0x14(28)
    lwz 3, 0x234(28)
    cmpwi 3, 0x0
    .4byte 0x40810070 # ble .L_8029CAC8
    subi 0, 3, 0x1
    stw 0, 0x234(28)
    lwz 27, 0x4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8029CAA4
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8029CA98
    li 0, 0x3f
    stw 0, 0x230(28)
    .4byte 0x48000410 # b .L_8029CEA4
L_8029CA98:
    li 0, 0x44
    stw 0, 0x230(28)
    .4byte 0x48000404 # b .L_8029CEA4
L_8029CAA4:
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8029CABC
    li 0, 0x3d
    stw 0, 0x230(28)
    .4byte 0x480003EC # b .L_8029CEA4
L_8029CABC:
    li 0, 0x43
    stw 0, 0x230(28)
    .4byte 0x480003E0 # b .L_8029CEA4
L_8029CAC8:
    lwz 0, 0x90(28)
    li 30, 0x0
    li 29, -0x1
    clrlwi 3, 0, 30
    bl fn_8030AAF4
    bl fn_8008E328
    lwz 0, 0x90(28)
    mr 27, 3
    li 4, 0x100
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8029CB2C
    li 0, 0x0
    stb 0, 0x244(28)
    stb 0, 0x11c(28)
    lwz 3, 0x240(28)
    lwz 0, 0x23c(28)
    cmpw 3, 0
    .4byte 0x40820358 # bne .L_8029CE6C
    lwz 0, 0x90(28)
    li 4, 0x58
    clrlwi 3, 0, 30
    bl fn_80230EB8
    .4byte 0x48000344 # b .L_8029CE6C
L_8029CB2C:
    lwz 0, 0x90(28)
    li 4, 0x200
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_8029CB5C
    lwz 0, 0x90(28)
    li 4, 0x40
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_8029CB80
L_8029CB5C:
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x244(28)
    li 4, 0x58
    stb 0, 0x11c(28)
    lwz 0, 0x90(28)
    clrlwi 3, 0, 30
    bl fn_80230EB8
    .4byte 0x480002F0 # b .L_8029CE6C
L_8029CB80:
    lwz 26, 0x4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8029CBA8
    li 0, 0x5
    stw 0, 0x23c(28)
    .4byte 0x480002C8 # b .L_8029CE6C
L_8029CBA8:
    lwz 0, 0x90(28)
    li 4, 0x40
    clrlwi 3, 0, 30
    bl fn_8022C52C
    cmplwi 3, 0x0
    .4byte 0x41820158 # beq .L_8029CD14
    lwz 0, 0x90(28)
    clrlwi 3, 0, 30
    bl fn_8022C9AC
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_8029CCCC
    lwz 0, 0x90(28)
    li 4, 0x8
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8029CBF4
    li 29, 0x0
    .4byte 0x48000060 # b .L_8029CC50
L_8029CBF4:
    lwz 0, 0x90(28)
    li 4, 0x4
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8029CC14
    li 29, 0x1
    .4byte 0x48000040 # b .L_8029CC50
L_8029CC14:
    lwz 0, 0x90(28)
    li 4, 0x1
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8029CC34
    li 29, 0x2
    .4byte 0x48000020 # b .L_8029CC50
L_8029CC34:
    lwz 0, 0x90(28)
    li 4, 0x2
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8029CC50
    li 29, 0x3
L_8029CC50:
    cmpwi 29, 0x0
    .4byte 0x41800078 # blt .L_8029CCCC
    .4byte 0x40820028 # bne .L_8029CC80
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8029CC74
    li 0, 0x1
    stw 0, 0x23c(28)
    .4byte 0x48000058 # b .L_8029CCC8
L_8029CC74:
    li 0, 0x2
    stw 0, 0x23c(28)
    .4byte 0x4800004C # b .L_8029CCC8
L_8029CC80:
    cmpwi 29, 0x1
    .4byte 0x40820010 # bne .L_8029CC94
    li 0, 0x1
    stw 0, 0x23c(28)
    .4byte 0x48000038 # b .L_8029CCC8
L_8029CC94:
    cmpwi 29, 0x2
    .4byte 0x40820028 # bne .L_8029CCC0
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8029CCB4
    li 0, 0x0
    stw 0, 0x23c(28)
    .4byte 0x48000018 # b .L_8029CCC8
L_8029CCB4:
    li 0, 0x3
    stw 0, 0x23c(28)
    .4byte 0x4800000C # b .L_8029CCC8
L_8029CCC0:
    li 0, 0x0
    stw 0, 0x23c(28)
L_8029CCC8:
    li 30, 0x1
L_8029CCCC:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820198 # bne .L_8029CE6C
    li 0, 0x0
    stb 0, 0x244(28)
    lwz 3, 0x240(28)
    lwz 0, 0x23c(28)
    cmpw 3, 0
    .4byte 0x40820014 # bne .L_8029CD00
    lwz 0, 0x90(28)
    li 4, 0x58
    clrlwi 3, 0, 30
    bl fn_80230EB8
L_8029CD00:
    li 3, 0x6
    li 0, 0x0
    stw 3, 0x250(28)
    stw 0, 0x238(28)
    .4byte 0x4800015C # b .L_8029CE6C
L_8029CD14:
    cmplwi 27, 0x0
    .4byte 0x41820098 # beq .L_8029CDB0
    lbz 0, 0x244(28)
    cmplwi 0, 0x1
    .4byte 0x4082008C # bne .L_8029CDB0
    lwz 0, 0x90(28)
    clrlwi 3, 0, 30
    bl fn_8022C9AC
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_8029CDB0
    lfs 1, 0x60(27)
    .4byte 0xC002D7C0 # lfs f0, lbl_80540760@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810068 # ble .L_8029CDB0
    lha 0, 0x64(27)
    cmpwi 0, -0x7000
    .4byte 0x4180000C # blt .L_8029CD60
    cmpwi 0, 0x7000
    .4byte 0x4180000C # blt .L_8029CD68
L_8029CD60:
    li 29, 0x0
    .4byte 0x4BFFFEEC # b .L_8029CC50
L_8029CD68:
    cmpwi 0, -0x5000
    .4byte 0x41800014 # blt .L_8029CD80
    cmpwi 0, -0x3000
    .4byte 0x4080000C # bge .L_8029CD80
    li 29, 0x2
    .4byte 0x4BFFFED4 # b .L_8029CC50
L_8029CD80:
    cmpwi 0, -0x1000
    .4byte 0x41800014 # blt .L_8029CD98
    cmpwi 0, 0x1000
    .4byte 0x4080000C # bge .L_8029CD98
    li 29, 0x1
    .4byte 0x4BFFFEBC # b .L_8029CC50
L_8029CD98:
    cmpwi 0, 0x3000
    .4byte 0x4180FEB4 # blt .L_8029CC50
    cmpwi 0, 0x5000
    .4byte 0x4080FEAC # bge .L_8029CC50
    li 29, 0x3
    .4byte 0x4BFFFEA4 # b .L_8029CC50
L_8029CDB0:
    lwz 0, 0x90(28)
    li 4, 0x1
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_8029CE10
    mr 3, 28
    li 4, 0x46
    bl fn_801F0D20
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8029CDF8
    lwz 0, 0x23c(28)
    addi 3, 31, 0x0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x23c(28)
    .4byte 0x48000078 # b .L_8029CE6C
L_8029CDF8:
    lwz 0, 0x23c(28)
    addi 3, 31, 0x18
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x23c(28)
    .4byte 0x48000060 # b .L_8029CE6C
L_8029CE10:
    lwz 0, 0x90(28)
    li 4, 0x2
    clrlwi 3, 0, 30
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_8029CE6C
    mr 3, 28
    li 4, 0x46
    bl fn_801F0D20
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8029CE58
    lwz 0, 0x23c(28)
    addi 3, 31, 0x30
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x23c(28)
    .4byte 0x48000018 # b .L_8029CE6C
L_8029CE58:
    lwz 0, 0x23c(28)
    addi 3, 31, 0x48
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x23c(28)
L_8029CE6C:
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8029CE90
    lwz 0, 0x23c(28)
    addi 3, 31, 0x60
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x230(28)
    .4byte 0x48000018 # b .L_8029CEA4
L_8029CE90:
    lwz 0, 0x23c(28)
    addi 3, 31, 0x78
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x230(28)
L_8029CEA4:
    lwz 3, 0x238(28)
    addi 0, 3, 0x1
    stw 0, 0x238(28)
    lwz 0, 0x238(28)
    cmpwi 0, 0xc
    .4byte 0x4180000C # blt .L_8029CEC4
    li 0, 0x0
    stw 0, 0x238(28)
L_8029CEC4:
    lwz 26, 0x4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8029CF04
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8029CEF8
    li 0, 0x3f
    stw 0, 0x230(28)
    .4byte 0x4800003C # b .L_8029CF30
L_8029CEF8:
    li 0, 0x44
    stw 0, 0x230(28)
    .4byte 0x48000030 # b .L_8029CF30
L_8029CF04:
    lwz 0, 0x238(28)
    cmpwi 0, 0x6
    .4byte 0x41800024 # blt .L_8029CF30
    lbz 0, 0x24c(28)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8029CF28
    li 0, 0x3d
    stw 0, 0x230(28)
    .4byte 0x4800000C # b .L_8029CF30
L_8029CF28:
    li 0, 0x43
    stw 0, 0x230(28)
L_8029CF30:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029CF44:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182007C # beq .L_8029CFDC
    lis 3, lbl_804A7BE8@ha
    addi 0, 3, lbl_804A7BE8@l
    stw 0, 0x0(30)
    lbz 0, 0x244(30)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8029CF9C
    lwz 0, 0x240(30)
    lwz 4, 0x23c(30)
    cmpw 0, 4
    .4byte 0x41820014 # beq .L_8029CF9C
    lwz 0, 0x90(30)
    li 5, 0x1
    clrlwi 3, 0, 30
    bl fn_8022CA6C
L_8029CF9C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8029CFB4
    li 4, 0x0
    bl fn_80134FE0
L_8029CFB4:
    lwz 0, 0x90(30)
    clrlwi 3, 0, 30
    bl fn_8022CDD4
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8029CFDC
    mr 3, 30
    bl dtor_80084580
L_8029CFDC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029CFF8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 0, 0x90(3)
    clrlwi 3, 0, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8029D038
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001B8 # b .L_8029D1EC
L_8029D038:
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022CF08
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    li 4, 0x0
    lfs 1, 0x8(3)
    li 0, 0x1
    .4byte 0xC002D7BC # lfs f0, lbl_8054075C@sda21(r0)
    psq_st 2, 0xc(31), 0, 0
    stfs 1, 0x14(31)
    lfs 1, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    stw 4, 0x108(31)
    stw 0, 0x234(31)
    stw 4, 0x238(31)
    lwz 0, 0x90(31)
    clrlwi 3, 0, 30
    bl fn_8022CAF8
    stw 3, 0x23c(31)
    li 0, 0x1
    li 4, 0x45
    stw 3, 0x240(31)
    mr 3, 31
    stb 0, 0x244(31)
    stb 0, 0x11f(31)
    bl fn_801F0D20
    lwz 0, 0x90(31)
    li 28, 0x3
    li 29, 0x0
    clrlwi 0, 0, 30
    stw 0, 0x248(31)
L_8029D0C4:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8029D0D8
    subi 28, 28, 0x1
L_8029D0D8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE4 # blt .L_8029D0C4
    cmpwi 28, 0x0
    .4byte 0x40820054 # bne .L_8029D13C
    li 0, 0x1
    stb 0, 0x24c(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8029D11C
    li 0, 0x3f
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8029D124
L_8029D11C:
    li 0, 0x3d
    stw 0, 0x230(31)
L_8029D124:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x5
    .4byte 0x4082005C # bne .L_8029D188
    li 0, 0x3
    stw 0, 0x23c(31)
    .4byte 0x48000050 # b .L_8029D188
L_8029D13C:
    li 0, 0x0
    stb 0, 0x24c(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8029D16C
    li 0, 0x44
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8029D174
L_8029D16C:
    li 0, 0x43
    stw 0, 0x230(31)
L_8029D174:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x5
    .4byte 0x4082000C # bne .L_8029D188
    li 0, 0x0
    stw 0, 0x23c(31)
L_8029D188:
    li 0, 0x0
    stw 0, 0x250(31)
    stw 0, 0x254(31)
    bl SpatialRegistry_GetBase
    li 30, 0x0
    lwz 29, 0x1008(3)
    mr 28, 30
    .4byte 0x48000040 # b .L_8029D1E4
L_8029D1A8:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_8029D1DC
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x4647
    cmplwi 0, 0x414c
    .4byte 0x40820014 # bne .L_8029D1DC
    lbz 0, 0x11c(4)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8029D1DC
    stw 4, 0x254(31)
L_8029D1DC:
    addi 28, 28, 0x4
    addi 30, 30, 0x1
L_8029D1E4:
    cmpw 30, 29
    .4byte 0x4180FFC0 # blt .L_8029D1A8
L_8029D1EC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029D20C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0768@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0768@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D25C
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
L_8029D25C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D294
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
L_8029D294:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D2CC
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
L_8029D2CC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D304
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
L_8029D304:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D33C
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
L_8029D33C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D374
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
L_8029D374:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D3AC
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
L_8029D3AC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D3E4
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
L_8029D3E4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D41C
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
L_8029D41C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029D430:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8029D474
    lis 5, lbl_804A7C40@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7C40@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8029D474
    mr 3, 30
    bl dtor_80084580
L_8029D474:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029D490:
    li 3, 0x0
    blr

fn_8029D498:
    li 0, 0x0
    stb 0, 0x11c(3)
    blr

fn_8029D4A4:
    blr

fn_8029D4A8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    lwz 3, 0x230(3)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(29)
    lfs 0, 0x4(3)
    stfs 0, 0x10(29)
    lfs 0, 0x8(3)
    stfs 0, 0x14(29)
    lfs 1, 0x60(29)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
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
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8029D544
    li 31, 0x0
    .4byte 0x48000008 # b .L_8029D548
L_8029D544:
    lwz 31, 0x114(29)
L_8029D548:
    li 30, 0x0
L_8029D54C:
    mr 3, 30
    bl fn_80236BEC
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_8029D5D0
    lwz 3, 0x110(29)
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820064 # bne .L_8029D5D0
    lwz 3, 0x230(29)
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8029D5D0
    lwz 5, 0x4(29)
    mr 3, 30
    .4byte 0xC022D7C8 # lfs f1, lbl_80540768@sda21(r0)
    addi 4, 1, 0x8
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8029D5D0
    mr 3, 30
    mr 4, 31
    addi 5, 29, 0xc
    li 6, 0x4
    bl fn_80238548
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800004C # b .L_8029D618
L_8029D5D0:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_8029D54C
    mr 3, 29
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_8029D604
    lfs 1, 0x14(29)
    .4byte 0xC002D7C8 # lfs f0, lbl_80540768@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_8029D618
L_8029D604:
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029D618:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8029D634:
    .4byte 0xC002D7CC # lfs f0, lbl_8054076C@sda21(r0)
    .4byte 0xC042D7D0 # lfs f2, lbl_80540770@sda21(r0)
    stfs 0, 0x60(3)
    .4byte 0xC022D7D4 # lfs f1, lbl_80540774@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC002D7D8 # lfs f0, lbl_80540778@sda21(r0)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 30
    stw 0, 0x230(3)
    blr

fn_8029D674:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0868@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0868@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D6C4
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
L_8029D6C4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D6FC
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
L_8029D6FC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D734
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
L_8029D734:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D76C
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
L_8029D76C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D7A4
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
L_8029D7A4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D7DC
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
L_8029D7DC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D814
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
L_8029D814:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D84C
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
L_8029D84C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8029D884
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
L_8029D884:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029D898:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 4
    bl GetRoomConfigRecord
    lwz 31, 0x34(3)
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D7970
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D7970
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8029D8F0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 21, 0x34(1)
    mr 23, 4
    mr 28, 5
    mr 22, 6
    mr 21, 7
    bl GetRoomConfigRecord
    rlwinm 0, 28, 0, 24, 30
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_8029D928
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_8029D92C
L_8029D928:
    addi 4, 3, 0xdc
L_8029D92C:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0x8(1)
    lwz 3, 0x8(4)
    lfs 1, 0x0(23)
    lfs 0, 0x8(1)
    stw 0, 0xc(1)
    fsubs 2, 1, 0
    lfs 1, 0x4(23)
    lfs 0, 0xc(1)
    lwz 0, 0xc(4)
    fctiwz 2, 2
    stw 3, 0x10(1)
    fsubs 0, 1, 0
    stw 0, 0x14(1)
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 3, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 3, 0x0
    lwz 4, 0x24(1)
    .4byte 0x4080000C # bge .L_8029D98C
    li 3, 0x0
    .4byte 0x48000010 # b .L_8029D998
L_8029D98C:
    cmpwi 3, 0x200
    .4byte 0x41800008 # blt .L_8029D998
    li 3, 0x1ff
L_8029D998:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_8029D9A8
    li 4, 0x0
    .4byte 0x48000010 # b .L_8029D9B4
L_8029D9A8:
    cmpwi 4, 0x200
    .4byte 0x41800008 # blt .L_8029D9B4
    li 4, 0x1ff
L_8029D9B4:
    subi 6, 3, 0x10
    subi 5, 4, 0x30
    rlwinm 4, 6, 0, 23, 23
    lis 3, lbl_8046C5A0@ha
    rlwimi 4, 5, 1, 22, 22
    add 31, 28, 22
    rlwimi 4, 5, 0, 24, 27
    addi 0, 3, lbl_8046C5A0@l
    mulli 30, 21, 0x28
    li 22, 0x0
    mr 24, 4
    rlwimi 24, 6, 28, 28, 31
    add 25, 0, 30
    mr 29, 24
L_8029D9EC:
    mr 23, 24
    mr 26, 25
    li 21, 0x0
L_8029D9F8:
    lhz 27, 0x0(26)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 23
    mr 6, 27
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 23, 23, 0x1
    clrlwi. 0, 23, 28
    .4byte 0x40820008 # bne .L_8029DA30
    addi 23, 23, 0xf0
L_8029DA30:
    addi 21, 21, 0x1
    addi 26, 26, 0x2
    cmpwi 21, 0x4
    .4byte 0x4180FFBC # blt .L_8029D9F8
    addi 4, 24, 0x10
    rlwinm 3, 24, 0, 23, 23
    rlwinm 0, 4, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DA58
    addi 4, 24, 0x110
L_8029DA58:
    addi 22, 22, 0x1
    mr 24, 4
    cmpwi 22, 0x4
    addi 25, 25, 0x8
    .4byte 0x4180FF84 # blt .L_8029D9EC
    addi 31, 29, 0x10
    rlwinm 3, 29, 0, 23, 23
    rlwinm 0, 31, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DA84
    addi 31, 29, 0x110
L_8029DA84:
    lis 3, lbl_8046C528@ha
    mr 26, 28
    addi 0, 3, lbl_8046C528@l
    li 24, 0x0
    add 28, 0, 30
L_8029DA98:
    mr 29, 31
    mr 25, 28
    li 30, 0x0
L_8029DAA4:
    lhz 27, 0x0(25)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 26
    mr 5, 29
    mr 6, 27
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 29, 29, 0x1
    clrlwi. 0, 29, 28
    .4byte 0x40820008 # bne .L_8029DADC
    addi 29, 29, 0xf0
L_8029DADC:
    addi 30, 30, 0x1
    addi 25, 25, 0x2
    cmpwi 30, 0x4
    .4byte 0x4180FFBC # blt .L_8029DAA4
    addi 4, 31, 0x10
    rlwinm 3, 31, 0, 23, 23
    rlwinm 0, 4, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DB04
    addi 4, 31, 0x110
L_8029DB04:
    addi 24, 24, 0x1
    mr 31, 4
    cmpwi 24, 0x4
    addi 28, 28, 0x8
    .4byte 0x4180FF84 # blt .L_8029DA98
    lmw 21, 0x34(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8029DB2C:
    stwu 1, -0x30(1)
    mflr 0
    cmpwi 6, 0x0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 26, 5
    lhz 29, 0x3a(1)
    mr 24, 8
    lhz 30, 0x3e(1)
    mr 27, 9
    mr 28, 10
    .4byte 0x408200E4 # bne .L_8029DC3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 25, 4
    clrlwi 6, 7, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 26, 26, 0x1
    clrlwi. 0, 26, 28
    .4byte 0x40820008 # bne .L_8029DB80
    addi 26, 26, 0xf0
L_8029DB80:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 25
    mr 5, 26
    clrlwi 6, 24, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 26, 26, 0x1
    clrlwi. 0, 26, 28
    .4byte 0x40820008 # bne .L_8029DBA8
    addi 26, 26, 0xf0
L_8029DBA8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 25
    mr 5, 26
    clrlwi 6, 27, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 26, 26, 0x1
    clrlwi. 0, 26, 28
    .4byte 0x40820008 # bne .L_8029DBD0
    addi 26, 26, 0xf0
L_8029DBD0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 25
    mr 5, 26
    clrlwi 6, 28, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 26, 26, 0x1
    clrlwi. 0, 26, 28
    .4byte 0x40820008 # bne .L_8029DBF8
    addi 26, 26, 0xf0
L_8029DBF8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 25
    mr 5, 26
    mr 6, 29
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 26, 26, 0x1
    clrlwi. 0, 26, 28
    .4byte 0x40820008 # bne .L_8029DC20
    addi 26, 26, 0xf0
L_8029DC20:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 25
    mr 5, 26
    mr 6, 30
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000104 # b .L_8029DD3C
L_8029DC3C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 31, 4
    clrlwi 6, 7, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 25, 26, 0x10
    rlwinm 3, 26, 0, 23, 23
    rlwinm 0, 25, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DC68
    addi 25, 26, 0x110
L_8029DC68:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 25
    clrlwi 6, 24, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 26, 25, 0x10
    rlwinm 3, 25, 0, 23, 23
    rlwinm 0, 26, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DC98
    addi 26, 25, 0x110
L_8029DC98:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    clrlwi 6, 27, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 27, 26, 0x10
    rlwinm 3, 26, 0, 23, 23
    rlwinm 0, 27, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DCC8
    addi 27, 26, 0x110
L_8029DCC8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    clrlwi 6, 28, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 26, 27, 0x10
    rlwinm 3, 27, 0, 23, 23
    rlwinm 0, 26, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DCF8
    addi 26, 27, 0x110
L_8029DCF8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    mr 6, 29
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 5, 26, 0x10
    rlwinm 3, 26, 0, 23, 23
    rlwinm 0, 5, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DD28
    addi 5, 26, 0x110
L_8029DD28:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 6, 30
    lwz 3, 0x20(3)
    bl fn_802F9974
L_8029DD3C:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8029DD50:
    stwu 1, -0x20(1)
    mflr 0
    cmpwi 6, 0x0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 28, 5
    mr 26, 8
    mr 29, 9
    mr 30, 10
    .4byte 0x40820094 # bne .L_8029DE08
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 27, 4
    clrlwi 6, 7, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 28, 28, 0x1
    clrlwi. 0, 28, 28
    .4byte 0x40820008 # bne .L_8029DD9C
    addi 28, 28, 0xf0
L_8029DD9C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 27
    mr 5, 28
    clrlwi 6, 26, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 28, 28, 0x1
    clrlwi. 0, 28, 28
    .4byte 0x40820008 # bne .L_8029DDC4
    addi 28, 28, 0xf0
L_8029DDC4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 27
    mr 5, 28
    clrlwi 6, 29, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 28, 28, 0x1
    clrlwi. 0, 28, 28
    .4byte 0x40820008 # bne .L_8029DDEC
    addi 28, 28, 0xf0
L_8029DDEC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 27
    mr 5, 28
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480000A4 # b .L_8029DEA8
L_8029DE08:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 31, 4
    clrlwi 6, 7, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 27, 28, 0x10
    rlwinm 3, 28, 0, 23, 23
    rlwinm 0, 27, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DE34
    addi 27, 28, 0x110
L_8029DE34:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    clrlwi 6, 26, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 28, 27, 0x10
    rlwinm 3, 27, 0, 23, 23
    rlwinm 0, 28, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DE64
    addi 28, 27, 0x110
L_8029DE64:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    clrlwi 6, 29, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 5, 28, 0x10
    rlwinm 3, 28, 0, 23, 23
    rlwinm 0, 5, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DE94
    addi 5, 28, 0x110
L_8029DE94:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
L_8029DEA8:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029DEBC:
    stwu 1, -0x20(1)
    mflr 0
    cmpwi 6, 0x0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 8
    stw 29, 0x14(1)
    mr 29, 5
    .4byte 0x40820044 # bne .L_8029DF24
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 31, 4
    clrlwi 6, 7, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 29, 29, 0x1
    clrlwi. 0, 29, 28
    .4byte 0x40820008 # bne .L_8029DF08
    addi 29, 29, 0xf0
L_8029DF08:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 29
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000044 # b .L_8029DF64
L_8029DF24:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 31, 4
    clrlwi 6, 7, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 5, 29, 0x10
    rlwinm 3, 29, 0, 23, 23
    rlwinm 0, 5, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029DF50
    addi 5, 29, 0x110
L_8029DF50:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
L_8029DF64:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029DF80:
    stwu 1, -0x20(1)
    mflr 0
    clrlwi 6, 6, 16
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 29, 4
    mr 30, 5
    mr 26, 7
    mr 31, 29
    mr 27, 8
    mr 28, 9
    mr 4, 30
    mr 5, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 31, 31, 0x1
    clrlwi. 0, 31, 28
    .4byte 0x40820008 # bne .L_8029DFD0
    addi 31, 31, 0xf0
L_8029DFD0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    mr 5, 31
    clrlwi 6, 26, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 31, 29, 0x10
    rlwinm 3, 29, 0, 23, 23
    rlwinm 0, 31, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029E000
    addi 31, 29, 0x110
L_8029E000:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    mr 5, 31
    clrlwi 6, 27, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    addi 5, 31, 0x1
    clrlwi. 0, 5, 28
    .4byte 0x40820008 # bne .L_8029E028
    addi 5, 5, 0xf0
L_8029E028:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    clrlwi 6, 28, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029E050:
    stwu 1, -0x30(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x34(1)
    lfs 0, 0x0(4)
    rlwinm 4, 5, 0, 24, 30
    stmw 24, 0x10(1)
    mr 28, 3
    mr 31, 5
    mr 24, 6
    mr 25, 7
    mr 29, 8
    mr 30, 9
    addi 3, 1, 0x8
    stfs 1, 0xc(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    clrlwi 6, 24, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_8029E0F8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_8029E0F8:
    lwz 26, 0x20(28)
    addi 26, 26, 0x1
    clrlwi. 0, 26, 28
    .4byte 0x40820008 # bne .L_8029E10C
    addi 26, 26, 0xf0
L_8029E10C:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    clrlwi 6, 25, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 31
    clrlwi 5, 26, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_8029E160
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_8029E160:
    lwz 26, 0x20(28)
    addi 28, 26, 0x10
    rlwinm 3, 26, 0, 23, 23
    rlwinm 0, 28, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_8029E17C
    addi 28, 26, 0x110
L_8029E17C:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    clrlwi 6, 29, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 31
    clrlwi 5, 28, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_8029E1D0
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_8029E1D0:
    addi 26, 28, 0x1
    clrlwi. 0, 26, 28
    .4byte 0x40820008 # bne .L_8029E1E0
    addi 26, 26, 0xf0
L_8029E1E0:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 31
    clrlwi 5, 26, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_8029E234
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_8029E234:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8028A118
    .4byte fn_8028A958
    .4byte fn_8028BE44
    .4byte fn_8028DB54
    .4byte fn_8028F97C
    .4byte fn_802955A8
    .4byte fn_8029B538
    .4byte fn_8029BAF4
    .4byte fn_8029C360
    .4byte fn_8029D20C
    .4byte fn_8029D674

