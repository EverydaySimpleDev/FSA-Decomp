.section extab, "a"
.balign 4
.global etb_8000AA18
etb_8000AA18:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA18, 8

.section extabindex, "a"
.balign 4
.global eti_80018A30
eti_80018A30:
    .4byte fn_8022DCD8
    .4byte 0x0000009C
    .4byte etb_8000AA18
.size eti_80018A30, 12

# fn_8022DCD8 - same "per-player capability predicate" template as
# fn_80230188 (see that file and [[project_fsa_player_target_helper_decoded]]
# for the shared shape / lbl_8053AC90 player-manager global / playerObj-
# >0xcac master-enable flag byte). Delegates to fn_80240818(playerObj)
# when the flag is set; defaults to false (0) when unset.
.text
.balign 4
.global fn_8022DCD8

fn_8022DCD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DCF8
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DD64
L_8022DCF8:
    .4byte 0x4082000C # bne .L_8022DD04
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DD44
L_8022DD04:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DD14
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DD44
L_8022DD14:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DD24
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DD44
L_8022DD24:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DD40
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DD44
L_8022DD40:
    lbz 0, 0xcac(4)
L_8022DD44:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DD60
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80240818
    .4byte 0x48000008 # b .L_8022DD64
L_8022DD60:
    li 3, 0x0
L_8022DD64:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

