# THREE-VTABLE CLUSTER (lbl_804AFB30/804AFB3C/804AFB48 - three separate,
# SHORT independent vtables laid out back-to-back in .data, each only ~3
# words: 0,0,dtor - the same "short-vtable-then-adjacent-data" shape
# documented for actor #7/lbl_804AF878). Real ctors: fn_803B9160 (installs
# 804AFB3C, loops over 2 sub-elements zeroing fields) is bundled together
# with several small helpers in one dump file; fn_803B961C and fn_803BAAB0
# are STATIC GLOBAL INSTANCE registrations (each doing the standard
# __register_global_object pattern plus constructing one instance inline -
# same shape as actor #2's fn_8038DC38). Spans the whole contiguous
# 0x803B8C74-0x803BBF08 block (~13KB). Track A throughout for the larger
# helpers; structural overview only, per the large/complex-function
# exception.
# 7 functions bundled (0x1C+0x1C+0x210+0x228+0x3C+0x40+0x1DC): bitfield/flag utilities, then fn_803B9160 = the real constructor for lbl_804AFB3C (installs vtable, zero-inits 2 sub-elements)
# Table_SetSelfIndexedByte86/Table_GetSelfIndexedByte86 (the leading single-level table-indexed byte
# setter/getter) were successfully re-promoted as real C++ using proper
# `EC80Row lbl_8050EC80[N]` array-indexing syntax after the eighteenth
# batch's array[idx]-idiom fix - see Game/stub_803b8c74.cpp. This file
# now starts at fn_803B8CAC.
.text
.balign 4
.global fn_803B8CAC
.global fn_803B8EBC
.global fn_803B90E4
.global fn_803B9120
.global fn_803B9160

fn_803B8CAC:
    cmpwi 4, 0x7
    .4byte 0x40820104 # bne .L_803B8DB4
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_803B8CC4
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_803B8CCC
L_803B8CC4:
    li 0, 0x0
    .4byte 0x48000034 # b .L_803B8CFC
L_803B8CCC:
    mulli 6, 3, 0xc8
    lis 5, lbl_8050EC80@ha
    slwi 7, 4, 2
    addi 0, 5, lbl_8050EC80@l
    add 5, 0, 6
    li 6, 0x1
    lwz 0, 0x28(5)
    slw 5, 6, 7
    and 5, 5, 0
    neg 0, 5
    or 0, 0, 5
    srwi 0, 0, 31
L_803B8CFC:
    cmpwi 0, 0x0
    .4byte 0x418201B4 # beq .L_803B8EB4
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_803B8D14
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_803B8D1C
L_803B8D14:
    li 0, 0x0
    .4byte 0x48000038 # b .L_803B8D50
L_803B8D1C:
    mulli 6, 3, 0xc8
    lis 5, lbl_8050EC80@ha
    slwi 7, 4, 2
    addi 0, 5, lbl_8050EC80@l
    add 5, 0, 6
    addi 6, 7, 0x2
    li 7, 0x1
    lwz 0, 0x28(5)
    slw 5, 7, 6
    and 5, 5, 0
    neg 0, 5
    or 0, 0, 5
    srwi 0, 0, 31
L_803B8D50:
    cmpwi 0, 0x0
    .4byte 0x41820160 # beq .L_803B8EB4
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_803B8D68
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_803B8D70
L_803B8D68:
    li 0, 0x0
    .4byte 0x48000038 # b .L_803B8DA4
L_803B8D70:
    mulli 5, 3, 0xc8
    lis 3, lbl_8050EC80@ha
    slwi 4, 4, 2
    addi 0, 3, lbl_8050EC80@l
    add 3, 0, 5
    addi 4, 4, 0x3
    li 5, 0x1
    lwz 0, 0x28(3)
    slw 3, 5, 4
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803B8DA4:
    cmpwi 0, 0x0
    .4byte 0x4182010C # beq .L_803B8EB4
    li 3, 0x1
    blr
L_803B8DB4:
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_803B8DC4
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_803B8DCC
L_803B8DC4:
    li 0, 0x0
    .4byte 0x48000034 # b .L_803B8DFC
L_803B8DCC:
    mulli 6, 3, 0xc8
    lis 5, lbl_8050EC80@ha
    slwi 7, 4, 2
    addi 0, 5, lbl_8050EC80@l
    add 5, 0, 6
    li 6, 0x1
    lwz 0, 0x28(5)
    slw 5, 6, 7
    and 5, 5, 0
    neg 0, 5
    or 0, 0, 5
    srwi 0, 0, 31
L_803B8DFC:
    cmpwi 0, 0x0
    .4byte 0x418200B4 # beq .L_803B8EB4
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_803B8E14
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_803B8E1C
L_803B8E14:
    li 0, 0x0
    .4byte 0x48000038 # b .L_803B8E50
L_803B8E1C:
    mulli 6, 3, 0xc8
    lis 5, lbl_8050EC80@ha
    slwi 7, 4, 2
    addi 0, 5, lbl_8050EC80@l
    add 5, 0, 6
    addi 6, 7, 0x1
    li 7, 0x1
    lwz 0, 0x28(5)
    slw 5, 7, 6
    and 5, 5, 0
    neg 0, 5
    or 0, 0, 5
    srwi 0, 0, 31
L_803B8E50:
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_803B8EB4
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_803B8E68
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_803B8E70
L_803B8E68:
    li 0, 0x0
    .4byte 0x48000038 # b .L_803B8EA4
L_803B8E70:
    mulli 5, 3, 0xc8
    lis 3, lbl_8050EC80@ha
    slwi 4, 4, 2
    addi 0, 3, lbl_8050EC80@l
    add 3, 0, 5
    addi 4, 4, 0x3
    li 5, 0x1
    lwz 0, 0x28(3)
    slw 3, 5, 4
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803B8EA4:
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_803B8EB4
    li 3, 0x1
    blr
L_803B8EB4:
    li 3, 0x0
    blr

fn_803B8EBC:
    cmpwi 3, 0x7
    .4byte 0x40820110 # bne .L_803B8FD0
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_803B8ED4
    cmpwi 3, 0x7
    .4byte 0x4081000C # ble .L_803B8EDC
L_803B8ED4:
    li 0, 0x0
    .4byte 0x48000038 # b .L_803B8F10
L_803B8EDC:
    lis 4, lbl_8050EC80@ha
    slwi 5, 3, 2
    addi 4, 4, lbl_8050EC80@l
    li 6, 0x1
    lwz 0, 0x10(4)
    slw 5, 6, 5
    mulli 0, 0, 0xc8
    add 4, 4, 0
    lwz 0, 0x28(4)
    and 4, 5, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
L_803B8F10:
    cmpwi 0, 0x0
    .4byte 0x418201C8 # beq .L_803B90DC
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_803B8F28
    cmpwi 3, 0x7
    .4byte 0x4081000C # ble .L_803B8F30
L_803B8F28:
    li 0, 0x0
    .4byte 0x4800003C # b .L_803B8F68
L_803B8F30:
    lis 4, lbl_8050EC80@ha
    slwi 5, 3, 2
    addi 4, 4, lbl_8050EC80@l
    li 6, 0x1
    lwz 0, 0x10(4)
    addi 5, 5, 0x2
    slw 5, 6, 5
    mulli 0, 0, 0xc8
    add 4, 4, 0
    lwz 0, 0x28(4)
    and 4, 5, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
L_803B8F68:
    cmpwi 0, 0x0
    .4byte 0x41820170 # beq .L_803B90DC
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_803B8F80
    cmpwi 3, 0x7
    .4byte 0x4081000C # ble .L_803B8F88
L_803B8F80:
    li 0, 0x0
    .4byte 0x4800003C # b .L_803B8FC0
L_803B8F88:
    lis 4, lbl_8050EC80@ha
    slwi 5, 3, 2
    addi 3, 4, lbl_8050EC80@l
    li 6, 0x1
    lwz 0, 0x10(3)
    addi 4, 5, 0x3
    slw 4, 6, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803B8FC0:
    cmpwi 0, 0x0
    .4byte 0x41820118 # beq .L_803B90DC
    li 3, 0x1
    blr
L_803B8FD0:
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_803B8FE0
    cmpwi 3, 0x7
    .4byte 0x4081000C # ble .L_803B8FE8
L_803B8FE0:
    li 0, 0x0
    .4byte 0x48000038 # b .L_803B901C
L_803B8FE8:
    lis 4, lbl_8050EC80@ha
    slwi 5, 3, 2
    addi 4, 4, lbl_8050EC80@l
    li 6, 0x1
    lwz 0, 0x10(4)
    slw 5, 6, 5
    mulli 0, 0, 0xc8
    add 4, 4, 0
    lwz 0, 0x28(4)
    and 4, 5, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
L_803B901C:
    cmpwi 0, 0x0
    .4byte 0x418200BC # beq .L_803B90DC
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_803B9034
    cmpwi 3, 0x7
    .4byte 0x4081000C # ble .L_803B903C
L_803B9034:
    li 0, 0x0
    .4byte 0x4800003C # b .L_803B9074
L_803B903C:
    lis 4, lbl_8050EC80@ha
    slwi 5, 3, 2
    addi 4, 4, lbl_8050EC80@l
    li 6, 0x1
    lwz 0, 0x10(4)
    addi 5, 5, 0x1
    slw 5, 6, 5
    mulli 0, 0, 0xc8
    add 4, 4, 0
    lwz 0, 0x28(4)
    and 4, 5, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
L_803B9074:
    cmpwi 0, 0x0
    .4byte 0x41820064 # beq .L_803B90DC
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_803B908C
    cmpwi 3, 0x7
    .4byte 0x4081000C # ble .L_803B9094
L_803B908C:
    li 0, 0x0
    .4byte 0x4800003C # b .L_803B90CC
L_803B9094:
    lis 4, lbl_8050EC80@ha
    slwi 5, 3, 2
    addi 3, 4, lbl_8050EC80@l
    li 6, 0x1
    lwz 0, 0x10(3)
    addi 4, 5, 0x3
    slw 4, 6, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_803B90CC:
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_803B90DC
    li 3, 0x1
    blr
L_803B90DC:
    li 3, 0x0
    blr

fn_803B90E4:
    cmpwi 4, 0x3
    .4byte 0x4080000C # bge .L_803B90F4
    li 3, 0x1
    blr
L_803B90F4:
    mulli 4, 3, 0xc8
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    add 3, 0, 4
    lwz 0, 0x28(3)
    clrrwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_803B9118
    li 3, 0x1
    blr
L_803B9118:
    li 3, 0x0
    blr

fn_803B9120:
    cmpwi 3, 0x3
    .4byte 0x4080000C # bge .L_803B9130
    li 3, 0x1
    blr
L_803B9130:
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    clrrwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_803B9158
    li 3, 0x1
    blr
L_803B9158:
    li 3, 0x0
    blr

fn_803B9160:
    lis 4, lbl_804AFB3C@ha
    li 0, 0x2
    addi 4, 4, lbl_804AFB3C@l
    li 6, 0x0
    stw 4, 0x0(3)
    mtctr 0
L_803B9178:
    add 4, 3, 6
    li 5, 0x0
    stb 5, 0x4(4)
    addi 6, 6, 0x8
    stb 5, 0x94(4)
    stb 5, 0x5(4)
    stb 5, 0x95(4)
    stb 5, 0x6(4)
    stb 5, 0x96(4)
    stb 5, 0x7(4)
    stb 5, 0x97(4)
    stb 5, 0x8(4)
    stb 5, 0x98(4)
    stb 5, 0x9(4)
    stb 5, 0x99(4)
    stb 5, 0xa(4)
    stb 5, 0x9a(4)
    stb 5, 0xb(4)
    stb 5, 0x9b(4)
    add 4, 3, 6
    addi 6, 6, 0x8
    stb 5, 0x4(4)
    stb 5, 0x94(4)
    stb 5, 0x5(4)
    stb 5, 0x95(4)
    stb 5, 0x6(4)
    stb 5, 0x96(4)
    stb 5, 0x7(4)
    stb 5, 0x97(4)
    stb 5, 0x8(4)
    stb 5, 0x98(4)
    stb 5, 0x9(4)
    stb 5, 0x99(4)
    stb 5, 0xa(4)
    stb 5, 0x9a(4)
    stb 5, 0xb(4)
    stb 5, 0x9b(4)
    .4byte 0x4200FF6C # bdnz .L_803B9178
    lis 4, lbl_80476548@ha
    li 0, 0x2
    addi 4, 4, lbl_80476548@l
    mr 6, 3
    li 8, 0x0
    mtctr 0
L_803B9228:
    add 7, 3, 8
    lwz 0, 0x0(4)
    stb 5, 0x24(7)
    addi 8, 8, 0x1
    stb 5, 0xb4(7)
    stb 5, 0x2d(7)
    stb 5, 0xbd(7)
    stb 5, 0x35(7)
    stb 5, 0xc5(7)
    stb 5, 0x3d(7)
    stb 5, 0xcd(7)
    add 7, 3, 8
    addi 8, 8, 0x1
    stw 0, 0x4c(6)
    stw 0, 0x6c(6)
    lwz 0, 0x4(4)
    stb 5, 0x24(7)
    stb 5, 0xb4(7)
    stb 5, 0x2d(7)
    stb 5, 0xbd(7)
    stb 5, 0x35(7)
    stb 5, 0xc5(7)
    stb 5, 0x3d(7)
    stb 5, 0xcd(7)
    add 7, 3, 8
    addi 8, 8, 0x1
    stw 0, 0x50(6)
    stw 0, 0x70(6)
    lwz 0, 0x8(4)
    stb 5, 0x24(7)
    stb 5, 0xb4(7)
    stb 5, 0x2d(7)
    stb 5, 0xbd(7)
    stb 5, 0x35(7)
    stb 5, 0xc5(7)
    stb 5, 0x3d(7)
    stb 5, 0xcd(7)
    add 7, 3, 8
    addi 8, 8, 0x1
    stw 0, 0x54(6)
    stw 0, 0x74(6)
    lwz 0, 0xc(4)
    addi 4, 4, 0x10
    stb 5, 0x24(7)
    stb 5, 0xb4(7)
    stb 5, 0x2d(7)
    stb 5, 0xbd(7)
    stb 5, 0x35(7)
    stb 5, 0xc5(7)
    stb 5, 0x3d(7)
    stb 5, 0xcd(7)
    stw 0, 0x58(6)
    stw 0, 0x78(6)
    addi 6, 6, 0x10
    .4byte 0x4200FF28 # bdnz .L_803B9228
    li 0, 0x0
    stb 0, 0x45(3)
    stb 0, 0xd5(3)
    stb 0, 0x46(3)
    stb 0, 0xd6(3)
    stw 0, 0x8c(3)
    stw 0, 0x90(3)
    stb 0, 0x2c(3)
    stb 0, 0xbc(3)
    stb 0, 0x47(3)
    stb 0, 0xd7(3)
    stb 0, 0x48(3)
    stb 0, 0xd8(3)
    blr
