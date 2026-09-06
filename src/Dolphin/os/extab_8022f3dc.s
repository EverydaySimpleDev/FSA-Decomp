.section extab, "a"
.balign 4
.global etb_8000AAA0
etb_8000AAA0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAA0, 8

.section extabindex, "a"
.balign 4
.global eti_80018AFC
eti_80018AFC:
    .4byte fn_8022F3DC
    .4byte 0x0000009C
    .4byte etb_8000AAA0
.size eti_80018AFC, 12

# fn_8022F3DC - standard "per-player capability predicate" delegate (see
# [[project_fsa_player_target_helper_decoded]]): forwards to
# Player_GetLinkTargetIndex (raw "get my link target index" accessor) when
# playerObj->0xcac is set; defaults to -1 (no target) when unset.
.text
.balign 4
.global fn_8022F3DC

fn_8022F3DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F3FC
    li 3, -0x1
    .4byte 0x48000070 # b .L_8022F468
L_8022F3FC:
    .4byte 0x4082000C # bne .L_8022F408
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F448
L_8022F408:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F418
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F448
L_8022F418:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F428
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F448
L_8022F428:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022F444
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F448
L_8022F444:
    lbz 0, 0xcac(4)
L_8022F448:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F464
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_GetLinkTargetIndex
    .4byte 0x48000008 # b .L_8022F468
L_8022F464:
    li 3, -0x1
L_8022F468:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

