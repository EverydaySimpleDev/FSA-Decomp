.section extab, "a"
.balign 4
.global etb_80008EF4
etb_80008EF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008EF4, 8

.section extabindex, "a"
.balign 4
.global eti_80016648
eti_80016648:
    .4byte Actor_ctor
    .4byte 0x00000354
    .4byte etb_80008EF4
.size eti_80016648, 12

# Actor_ctor (renamed from fn_801F5AE0) - THE BASE "Actor" CLASS
# CONSTRUCTOR (see [[project_fsa_actor_system_discovery]] and
# include/Game/Actor.h for the real, named struct layout): every one of
# the ~205 confirmed actor classes' own real constructors chains into
# this one first. Installs the base vtable `Actor_vtable` (21 slots - one
# shorter than every concrete actor's own 22-slot vtable, confirming each
# subclass adds exactly one more virtual). Zero/tuning-constant-defaults a
# long run of fields (`->0xc` to `->0x8c`, a position/rotation/scale-shaped
# float block, many defaulted to `lbl_8053F740`/`74`/`7A4`/`7F4`), a further
# ~0x90 bytes of typed flag/counter defaults (`->0x90`-`->0x118`, several
# `-1` sentinels), then fills `->0x120`-`->0x12f` with the IDENTITY
# PERMUTATION `0,1,2,...,15` (classic free-list/slot-index init). `->0xdc`
# is set to the literal `0x18` (24) - a constant, NOT a self-pointer
# despite the coincidental timing. A further ~0x90-byte block
# (`->0x130`-`->0x1a8`) of typed defaults includes a function-pointer
# constant (`fn_8003B2CC`) stored mid-block - likely a default callback,
# not yet traced. Calls `__construct_array(this+0x1ac, fn_8003B2CC, 0,
# 0xc, 4)` (CONFIRMED as a real __construct_array call - matches
# MWCPlusLib.h's declared (ptr,ctor,dtor,size,n) signature exactly) and
# `fn_801EAD68(this+0x1dc)` (constructs 2 identical 0x20-byte
# sub-records), then zero-floats `->0x1ac`-`->0x1d8` (overwriting part of
# whatever the two helper calls just populated).
#
# STILL RAW ASM (Track A), NOT the real C++ Game::Actor::Actor()
# constructor, despite include/Game/Actor.h's real field layout existing.
# See project_fsa_phase4_kickoff.md for the full investigation into why:
# short version - this function's real exception-table entry
# (etb_80008EF4/eti_80016648 above) is genuinely non-empty, and MWCC only
# synthesizes real extab/extabindex content for code that actually NEEDS
# unwind protection (e.g. a real array-of-objects construction that could
# partially fail) - a raw nofralloc asm body gives it nothing to protect,
# so even with -Cpp_exceptions on it emits zero exception-table bytes.
# Promoting this specific function likely requires writing it as fully
# natural C++ (a real `SubObject array[4];` local matching the
# __construct_array call) so MWCC synthesizes the unwind entry itself -
# carrying its own separate, substantial byte-match risk for the rest of
# this function's 150+ straight-line field stores.
.text
.balign 4
.global Actor_ctor

Actor_ctor:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, Actor_vtable@ha
    li 4, 0x0
    stw 0, 0x14(1)
    addi 0, 5, Actor_vtable@l
    .4byte 0xC062C7A0 # lfs f3, lbl_8053F740@sda21(r0)
    li 6, -0x1
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC042C7D4 # lfs f2, lbl_8053F774@sda21(r0)
    li 5, 0x1
    stw 30, 0x8(1)
    .4byte 0xC022C854 # lfs f1, lbl_8053F7F4@sda21(r0)
    stw 0, 0x0(3)
    li 0, 0x4
    .4byte 0xC002C804 # lfs f0, lbl_8053F7A4@sda21(r0)
    stw 4, 0x4(3)
    li 3, 0x18
    stw 4, 0x8(31)
    stfs 3, 0xc(31)
    stfs 3, 0x10(31)
    stfs 3, 0x14(31)
    stfs 3, 0x18(31)
    stfs 3, 0x1c(31)
    stfs 3, 0x20(31)
    stfs 3, 0x24(31)
    stfs 3, 0x28(31)
    stfs 3, 0x2c(31)
    stfs 3, 0x30(31)
    stfs 3, 0x34(31)
    stfs 3, 0x38(31)
    stfs 3, 0x3c(31)
    stfs 3, 0x40(31)
    stfs 3, 0x44(31)
    stfs 2, 0x48(31)
    stfs 2, 0x4c(31)
    stfs 2, 0x50(31)
    stfs 2, 0x54(31)
    stfs 2, 0x58(31)
    stfs 2, 0x5c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 3, 0x70(31)
    stfs 3, 0x74(31)
    stfs 3, 0x78(31)
    stfs 3, 0x7c(31)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 3, 0x88(31)
    stfs 3, 0x8c(31)
    stw 4, 0x90(31)
    sth 4, 0x94(31)
    stw 4, 0x98(31)
    stw 6, 0x9c(31)
    stw 6, 0xa0(31)
    stw 4, 0xa4(31)
    stw 4, 0xa8(31)
    stw 4, 0xac(31)
    stw 4, 0xb0(31)
    stw 4, 0xb4(31)
    stw 4, 0xb8(31)
    stw 5, 0xbc(31)
    stw 5, 0xc0(31)
    stb 4, 0xc4(31)
    stw 6, 0xc8(31)
    stb 4, 0xcc(31)
    stw 6, 0xd0(31)
    stb 4, 0xd4(31)
    stb 4, 0xd5(31)
    stw 4, 0xd8(31)
    stw 3, 0xdc(31)
    stw 4, 0xe0(31)
    stw 4, 0xe4(31)
    stw 4, 0xe8(31)
    stfs 3, 0xec(31)
    stfs 3, 0xf0(31)
    stfs 3, 0xf4(31)
    stw 4, 0xf8(31)
    stw 4, 0xfc(31)
    stw 4, 0x100(31)
    stw 4, 0x104(31)
    stw 0, 0x108(31)
    stw 6, 0x10c(31)
    stw 6, 0x110(31)
    stw 4, 0x114(31)
    stw 4, 0x118(31)
    stb 5, 0x11c(31)
    stb 5, 0x11d(31)
    stb 4, 0x11e(31)
    stb 4, 0x11f(31)
    stw 6, 0x130(31)
    stw 6, 0x134(31)
    .4byte 0x48000084 # b .L_801F5CE0
L_801F5C60:
    clrlwi 3, 4, 24
    addi 5, 4, 0x1
    addi 0, 3, 0x120
    addi 7, 4, 0x2
    clrlwi 3, 5, 24
    stbx 4, 31, 0
    addi 0, 3, 0x120
    addi 6, 4, 0x3
    stbx 5, 31, 0
    clrlwi 3, 7, 24
    addi 0, 3, 0x120
    addi 5, 4, 0x4
    stbx 7, 31, 0
    clrlwi 3, 6, 24
    addi 0, 3, 0x120
    addi 7, 4, 0x5
    stbx 6, 31, 0
    clrlwi 3, 5, 24
    addi 0, 3, 0x120
    addi 6, 4, 0x6
    stbx 5, 31, 0
    clrlwi 3, 7, 24
    addi 0, 3, 0x120
    addi 5, 4, 0x7
    clrlwi 3, 6, 24
    stbx 7, 31, 0
    addi 0, 3, 0x120
    addi 4, 4, 0x8
    clrlwi 3, 5, 24
    stbx 6, 31, 0
    addi 0, 3, 0x120
    stbx 5, 31, 0
L_801F5CE0:
    clrlwi 0, 4, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF78 # blt .L_801F5C60
    li 30, -0x1
    lis 5, 0x4e55
    stw 30, 0x130(31)
    li 12, 0x0
    addi 0, 5, 0x4c4c
    lis 3, fn_8003B2CC@ha
    stw 12, 0x134(31)
    addi 4, 3, fn_8003B2CC@l
    li 11, 0x1
    li 10, 0x3
    stw 12, 0x138(31)
    li 9, 0x2
    li 8, 0x14
    .4byte 0xC002C858 # lfs f0, lbl_8053F7F8@sda21(r0)
    stb 12, 0x13c(31)
    addi 3, 31, 0x1ac
    li 5, 0x0
    li 6, 0xc
    stb 12, 0x13d(31)
    li 7, 0x4
    stb 12, 0x13e(31)
    stb 11, 0x13f(31)
    stb 11, 0x140(31)
    stb 12, 0x141(31)
    stb 12, 0x142(31)
    stb 12, 0x143(31)
    stb 12, 0x144(31)
    stb 12, 0x145(31)
    stb 11, 0x146(31)
    stw 10, 0x148(31)
    stb 11, 0x14c(31)
    stb 12, 0x14d(31)
    stb 12, 0x14e(31)
    stw 30, 0x150(31)
    stw 12, 0x154(31)
    stw 9, 0x158(31)
    stw 12, 0x15c(31)
    stw 12, 0x160(31)
    stb 12, 0x164(31)
    stb 12, 0x165(31)
    stw 12, 0x168(31)
    stw 30, 0x16c(31)
    stw 12, 0x174(31)
    stw 12, 0x178(31)
    stb 12, 0x17c(31)
    stb 12, 0x17d(31)
    stw 8, 0x180(31)
    stfs 0, 0x184(31)
    stw 30, 0x188(31)
    stw 12, 0x18c(31)
    stw 12, 0x190(31)
    stb 12, 0x194(31)
    stb 12, 0x195(31)
    stb 12, 0x196(31)
    stw 30, 0x198(31)
    stw 12, 0x19c(31)
    stw 0, 0x1a0(31)
    stw 12, 0x1a4(31)
    stb 12, 0x1a8(31)
    bl __construct_array
    addi 3, 31, 0x1dc
    bl fn_801EAD68
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    mr 3, 31
    stfs 0, 0x1ac(31)
    stfs 0, 0x1b0(31)
    stfs 0, 0x1b4(31)
    stfs 0, 0x1b8(31)
    stfs 0, 0x1bc(31)
    stfs 0, 0x1c0(31)
    stfs 0, 0x1c4(31)
    stfs 0, 0x1c8(31)
    stfs 0, 0x1cc(31)
    stfs 0, 0x1d0(31)
    stfs 0, 0x1d4(31)
    stfs 0, 0x1d8(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
