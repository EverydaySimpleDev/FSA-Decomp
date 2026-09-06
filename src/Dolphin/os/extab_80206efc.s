/*
 * NEW ACTOR (vtable lbl_804A5A30). "Got hit" reaction handler, player-
 * scan variant: unless a "moved far" gate (this->0x60-0x6c) blocks it,
 * scans the 4 players via fn_801F285C and applies knockback via the
 * confirmed fn_801F37AC; on a landed hit, transitions via the confirmed
 * fn_80205E0C(this, 7). Sibling of fn_80207004/fn_802070B4.
 */
.section extab, "a"
.balign 4
.global etb_80009CBC
etb_80009CBC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009CBC, 8

.section extabindex, "a"
.balign 4
.global eti_80017680
eti_80017680:
    .4byte fn_80206EFC
    .4byte 0x00000108
    .4byte etb_80009CBC
.size eti_80017680, 12

.text
.balign 4
.global fn_80206EFC

fn_80206EFC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_80206FE4
    lwz 0, 0x248(29)
    cmpwi 0, 0x3
    .4byte 0x418200B4 # beq .L_80206FE4
    cmpwi 0, 0x4
    .4byte 0x418200AC # beq .L_80206FE4
    lfs 1, 0x68(29)
    lfs 0, 0x60(29)
    .4byte 0xC042C90C # lfs f2, lbl_8053F8AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810094 # ble .L_80206FE4
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810080 # ble .L_80206FE4
    li 30, 0x0
L_80206F6C:
    mr 3, 29
    mr 7, 30
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 30, 3
    .4byte 0x4082003C # bne .L_80206FC4
    mr 3, 30
    bl fn_8023B6CC
    mr 3, 30
    bl fn_8023E724
    lwz 7, 0x8(1)
    mr 5, 3
    mr 3, 29
    mr 8, 30
    li 4, 0x0
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80206FC4
    li 31, 0x1
L_80206FC4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFA0 # blt .L_80206F6C
    clrlwi. 0, 31, 24
    .4byte 0x41820010 # beq .L_80206FE4
    mr 3, 29
    li 4, 0x7
    bl fn_80205E0C
L_80206FE4:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

