# ACTOR (vtable lbl_804AF9A0, dtor fn_803B6D04, FourCC unknown): spans the
# whole contiguous 0x803A8DFC-0x803B7BA8 block (~60.8KB, tied with the
# earlier composite entity for largest in this gap). Real vtable slots
# resolve into a fused multi-entry-point blob (fn_803A9830, 0x288, holding
# 7 slots) near the start of the range; the destructor sits far away near
# the end (fn_803B6D04), consistent with this gap's "ctor/dtor far from
# body" shape. Several nearby address labels that superficially matched
# "lbl_804A*" during scouting (804AF888/8CC/910/948/980) turned out to be
# plain DATA TABLES (sequential small integers or float constants), NOT
# vtables - verified by reading past the first few words and finding
# 0xFFFFFFFF/non-address values, the same false-positive pattern documented
# for actor #7's writeup. Heavy fn_80095FB4 (string helper) and effect
# helpers (fn_800EC240 full teardown, fn_8013C824 handle-resolve, both
# confirmed project-wide effect-handle primitives) throughout. Track A
# throughout: byte-match verified, structural overview only, per the
# large/complex-function exception.
# fn_803A8DFC - leading helper (0x160)
.section extab, "a"
.balign 4
.global etb_8000F3C4
etb_8000F3C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F3C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F0C0
eti_8001F0C0:
    .4byte fn_803A8DFC
    .4byte 0x00000160
    .4byte etb_8000F3C4
.size eti_8001F0C0, 12

.text
.balign 4
.global fn_803A8DFC

fn_803A8DFC:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 4, 0x2
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    .4byte 0x418200AC # beq .L_803A8EC0
    .4byte 0x40800014 # bge .L_803A8E2C
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_803A8E38
    .4byte 0x40800058 # bge .L_803A8E7C
    .4byte 0x4800011C # b .L_803A8F44
L_803A8E2C:
    cmpwi 4, 0x4
    .4byte 0x40800114 # bge .L_803A8F44
    .4byte 0x480000D0 # b .L_803A8F04
L_803A8E38:
    mr 3, 4
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x41820028 # beq .L_803A8E6C
    .4byte 0x40800010 # bge .L_803A8E58
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_803A8E64
    .4byte 0x480000F0 # b .L_803A8F44
L_803A8E58:
    cmpwi 3, 0x3
    .4byte 0x408000E8 # bge .L_803A8F44
    .4byte 0x48000014 # b .L_803A8E74
L_803A8E64:
    li 31, 0x1
    .4byte 0x480000DC # b .L_803A8F44
L_803A8E6C:
    li 31, 0x2
    .4byte 0x480000D4 # b .L_803A8F44
L_803A8E74:
    li 31, 0x3
    .4byte 0x480000CC # b .L_803A8F44
L_803A8E7C:
    mr 3, 4
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x41820028 # beq .L_803A8EB0
    .4byte 0x40800010 # bge .L_803A8E9C
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_803A8EA8
    .4byte 0x480000AC # b .L_803A8F44
L_803A8E9C:
    cmpwi 3, 0x3
    .4byte 0x408000A4 # bge .L_803A8F44
    .4byte 0x48000014 # b .L_803A8EB8
L_803A8EA8:
    li 31, 0x0
    .4byte 0x48000098 # b .L_803A8F44
L_803A8EB0:
    li 31, 0x2
    .4byte 0x48000090 # b .L_803A8F44
L_803A8EB8:
    li 31, 0x3
    .4byte 0x48000088 # b .L_803A8F44
L_803A8EC0:
    mr 3, 4
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x41820028 # beq .L_803A8EF4
    .4byte 0x40800010 # bge .L_803A8EE0
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_803A8EEC
    .4byte 0x48000068 # b .L_803A8F44
L_803A8EE0:
    cmpwi 3, 0x3
    .4byte 0x40800060 # bge .L_803A8F44
    .4byte 0x48000014 # b .L_803A8EFC
L_803A8EEC:
    li 31, 0x0
    .4byte 0x48000054 # b .L_803A8F44
L_803A8EF4:
    li 31, 0x1
    .4byte 0x4800004C # b .L_803A8F44
L_803A8EFC:
    li 31, 0x3
    .4byte 0x48000044 # b .L_803A8F44
L_803A8F04:
    mr 3, 4
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x41820028 # beq .L_803A8F38
    .4byte 0x40800010 # bge .L_803A8F24
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_803A8F30
    .4byte 0x48000024 # b .L_803A8F44
L_803A8F24:
    cmpwi 3, 0x3
    .4byte 0x4080001C # bge .L_803A8F44
    .4byte 0x48000014 # b .L_803A8F40
L_803A8F30:
    li 31, 0x0
    .4byte 0x48000010 # b .L_803A8F44
L_803A8F38:
    li 31, 0x1
    .4byte 0x48000008 # b .L_803A8F44
L_803A8F40:
    li 31, 0x2
L_803A8F44:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

