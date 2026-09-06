.section extab, "a"
.balign 4
.global etb_8000ADE8
etb_8000ADE8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000ADE8, 8

.section extabindex, "a"
.balign 4
.global eti_80018FE8
eti_80018FE8:
    .4byte fn_80236228
    .4byte 0x0000009C
    .4byte etb_8000ADE8
.size eti_80018FE8, 12

# fn_80236228 - same "per-player capability predicate" template as
# fn_80230188 (see [[project_fsa_player_target_helper_decoded]]). Delegates
# to fn_80241920(playerObj) when playerObj->0xcac is set; defaults to false
# (0) when unset. This is the SAME function fn_801EEC98 calls (twice per
# candidate) to pick the "closest" of the 4 players for its modes 1/3 -
# it's not a distance function at all, just this predicate family's return
# value being used as a comparable score.
.text
.balign 4
.global fn_80236228

fn_80236228:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236248
    li 3, 0x0
    .4byte 0x48000070 # b .L_802362B4
L_80236248:
    .4byte 0x4082000C # bne .L_80236254
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236294
L_80236254:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236264
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236294
L_80236264:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236274
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236294
L_80236274:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236290
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236294
L_80236290:
    lbz 0, 0xcac(4)
L_80236294:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_802362B0
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80241920
    .4byte 0x48000008 # b .L_802362B4
L_802362B0:
    li 3, 0x0
L_802362B4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

