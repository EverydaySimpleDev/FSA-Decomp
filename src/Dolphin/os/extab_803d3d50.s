# ACTOR (vtable lbl_804B0288, dtor fn_803D5710, ctor fn_803D58E0): spans
# 0x803D3D50-0x803D5F1C (~8.6KB). Fused body blob (fn_803D3D50, 0x178,
# many tight slots) calls back into pieces of the earlier-landed
# lbl_804AFB30/3C/48 three-vtable cluster (fn_803B9940/fn_803B9B8C) -
# confirms this is part of the same broader "stat/save-tracking" family
# (heavy OSGetTime/calendar usage seen throughout). fn_803D5090 uses
# __ptmf_scall against the lbl_804B0168 PTMF table (previously flagged as
# an "all-zero vtable" false lead - it's this actor's own dynamic-dispatch
# table, populated at runtime, same mechanism as lbl_804AFD70/lbl_804AFB90
# from the previous actor). A ~17KB region right before this actor
# (0x803D2C34-0x803D3D50) mixes confirmed manager code (fn_803D2C34
# manipulates the same 8.5KB singleton struct sampled earlier) with
# functions that call back into already-landed actor pieces - genuinely
# ambiguous, left UNCLAIMED per the "only land what's confirmed" discipline.
# fn_803D3D50 - fused multi-entry-point vtable body (0x178, calls back into the earlier 3-vtable cluster)
.section extab, "a"
.balign 4
.global etb_8000F9DC
etb_8000F9DC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F9DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F84C
eti_8001F84C:
    .4byte fn_803D3D50
    .4byte 0x00000178
    .4byte etb_8000F9DC
.size eti_8001F84C, 12

.text
.balign 4
.global fn_803D3D50

fn_803D3D50:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8051C1A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_8051C1A0@l
    li 4, 0x0
    bl fn_803B9940
    cmplwi 3, 0xc
    .4byte 0x41810134 # bgt .L_803D3EAC
    lis 4, jumptable_804B0294@ha
    slwi 0, 3, 2
    addi 3, 4, jumptable_804B0294@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x6b
    li 3, 0x0
    stw 0, 0x54(31)
    li 0, 0x6
    stb 3, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x48000108 # b .L_803D3EB4
    li 0, 0x6c
    li 3, 0x0
    stw 0, 0x54(31)
    li 0, 0x6
    stb 3, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x480000EC # b .L_803D3EB4
    li 0, 0x6d
    li 3, 0x0
    stw 0, 0x54(31)
    li 0, 0x6
    stb 3, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x480000D0 # b .L_803D3EB4
    li 0, 0x6e
    li 3, 0x0
    stw 0, 0x54(31)
    li 0, 0x6
    stb 3, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x480000B4 # b .L_803D3EB4
    li 0, 0x1
    li 4, 0x6f
    stb 0, 0x2170(31)
    li 3, 0x0
    li 0, 0x7
    stw 4, 0x54(31)
    stb 3, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x48000090 # b .L_803D3EB4
    li 0, 0x70
    li 3, 0x0
    stw 0, 0x54(31)
    li 0, 0x6
    stb 3, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x48000074 # b .L_803D3EB4
    lbz 0, 0x2175(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_803D3E70
    li 4, 0x0
    li 3, 0x7b
    stb 4, 0x2170(31)
    li 0, 0x2
    stw 3, 0x54(31)
    stb 4, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x48000048 # b .L_803D3EB4
L_803D3E70:
    lis 3, lbl_8051C1A0@ha
    addi 3, 3, lbl_8051C1A0@l
    bl fn_803B9B8C
    li 0, 0x16
    stb 0, 0x216c(31)
    .4byte 0x48000030 # b .L_803D3EB4
    li 0, 0x1
    li 4, 0x76
    stb 0, 0x2170(31)
    li 3, 0x0
    li 0, 0xe
    stw 4, 0x54(31)
    stb 3, 0x2177(31)
    stb 0, 0x216d(31)
    .4byte 0x4800000C # b .L_803D3EB4
L_803D3EAC:
    li 0, 0x0
    stw 0, 0x54(31)
L_803D3EB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

