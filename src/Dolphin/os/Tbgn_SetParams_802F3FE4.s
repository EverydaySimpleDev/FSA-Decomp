# fn_802F3FE4 - TBGN: setParams (0x1B8)
# Double-nested loop scanning the terrain grid via fn_802F9908; for each
# cell whose value == 0x41, queries the per-room config via GetRoomConfigRecord +
# fn_802D76A8 and if false spawns a "TBO2" FourCC actor via fn_801F9484
# (using fn_80226CA8 + SpatialRegistry_GetBase to resolve the position), otherwise
# marks the cell via fn_802F9974 with value 0x12. TBGN is a terrain-grid
# "TBO2 generator" that seeds TBO2 instances across matching cells.
.section extab, "a"
.balign 4
.global etb_8000D35C
etb_8000D35C:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000D35C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C60C
eti_8001C60C:
    .4byte fn_802F3FE4
    .4byte 0x000001B8
    .4byte etb_8000D35C
.size eti_8001C60C, 12

.text
.balign 4
.global fn_802F3FE4

fn_802F3FE4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, 0x0
    stmw 25, 0x24(1)
    mr 30, 3
    li 28, 0x0
    lwz 31, 0x90(3)
    stw 0, 0x230(3)
L_802F4008:
    li 27, 0x0
L_802F400C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 5, 0x230(30)
    lwz 3, 0x20(3)
    bl fn_802F9908
    clrlwi 29, 3, 22
    cmplwi 29, 0x41
    .4byte 0x4082006C # bne .L_802F4094
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D76A8
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_802F4078
    lwz 3, 0x230(30)
    addi 5, 1, 0x8
    li 4, 0x0
    bl fn_80226CA8
    bl SpatialRegistry_GetBase
    lis 4, 0x5442
    mr 7, 29
    mr 8, 31
    addi 6, 1, 0x8
    addi 4, 4, 0x4f32
    li 5, 0x0
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800001C # b .L_802F4090
L_802F4078:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 5, 0x230(30)
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
L_802F4090:
    addi 31, 31, 0x1
L_802F4094:
    lwz 3, 0x230(30)
    addi 27, 27, 0x1
    cmpwi 27, 0x20
    addi 0, 3, 0x1
    stw 0, 0x230(30)
    .4byte 0x4180FF64 # blt .L_802F400C
    addi 28, 28, 0x1
    cmpwi 28, 0x20
    .4byte 0x4180FF54 # blt .L_802F4008
    li 27, 0x0
L_802F40BC:
    li 0, 0x0
    addi 28, 27, 0x8
    stw 0, 0x230(30)
    li 26, 0x0
L_802F40CC:
    li 25, 0x0
L_802F40D0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 28
    lwz 5, 0x230(30)
    lwz 3, 0x20(3)
    bl fn_802F9908
    clrlwi 29, 3, 22
    cmplwi 29, 0x41
    .4byte 0x4082006C # bne .L_802F4158
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D76A8
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_802F413C
    lwz 3, 0x230(30)
    mr 4, 28
    addi 5, 1, 0x8
    bl fn_80226CA8
    bl SpatialRegistry_GetBase
    lis 4, 0x5442
    mr 5, 28
    mr 7, 29
    mr 8, 31
    addi 4, 4, 0x4f32
    addi 6, 1, 0x8
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800001C # b .L_802F4154
L_802F413C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 28
    lwz 5, 0x230(30)
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
L_802F4154:
    addi 31, 31, 0x1
L_802F4158:
    lwz 3, 0x230(30)
    addi 25, 25, 0x1
    cmpwi 25, 0x20
    addi 0, 3, 0x1
    stw 0, 0x230(30)
    .4byte 0x4180FF64 # blt .L_802F40D0
    addi 26, 26, 0x1
    cmpwi 26, 0x20
    .4byte 0x4180FF54 # blt .L_802F40CC
    addi 27, 27, 0x1
    cmpwi 27, 0x7
    .4byte 0x4180FF38 # blt .L_802F40BC
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

