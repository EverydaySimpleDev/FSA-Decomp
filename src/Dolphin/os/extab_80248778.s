.section extab, "a"
.balign 4
.global etb_8000B4D0
etb_8000B4D0:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B4D0, 8

.global etb_8000B4D8
etb_8000B4D8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B4D8, 8

.global etb_8000B4E0
etb_8000B4E0:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B4E0, 8

.global etb_8000B4E8
etb_8000B4E8:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000B4E8, 8

.global etb_8000B4F0
etb_8000B4F0:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000B4F0, 8

.global etb_8000B4F8
etb_8000B4F8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B4F8, 8

.global etb_8000B500
etb_8000B500:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000B500, 8

.section extabindex, "a"
.balign 4
.global eti_80019A2C
eti_80019A2C:
    .4byte fn_80248778
    .4byte 0x00000084
    .4byte etb_8000B4D0
.size eti_80019A2C, 12

.global eti_80019A38
eti_80019A38:
    .4byte fn_802487FC
    .4byte 0x00000174
    .4byte etb_8000B4D8
.size eti_80019A38, 12

.global eti_80019A44
eti_80019A44:
    .4byte fn_80248970
    .4byte 0x000000B4
    .4byte etb_8000B4E0
.size eti_80019A44, 12

.global eti_80019A50
eti_80019A50:
    .4byte fn_80248A24
    .4byte 0x00000178
    .4byte etb_8000B4E8
.size eti_80019A50, 12

.global eti_80019A5C
eti_80019A5C:
    .4byte fn_80248B9C
    .4byte 0x00000210
    .4byte etb_8000B4F0
.size eti_80019A5C, 12

.global eti_80019A68
eti_80019A68:
    .4byte fn_80248DD8
    .4byte 0x000000BC
    .4byte etb_8000B4F8
.size eti_80019A68, 12

.global eti_80019A74
eti_80019A74:
    .4byte fn_80248E94
    .4byte 0x0000015C
    .4byte etb_8000B500
.size eti_80019A74, 12

.text
.balign 4
.global fn_80248778
.global fn_802487FC
.global fn_80248970
.global fn_80248A24
.global fn_80248B9C
.global fn_80248DAC
.global fn_80248DB8
.global fn_80248DCC
.global fn_80248DD8
.global fn_80248E94

fn_80248778:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    lwz 30, 0xd60(3)
    stw 29, 0x14(1)
    cmpwi 30, 0x0
    stw 28, 0x10(1)
    .4byte 0x4080000C # bge .L_802487A8
    li 3, 0x0
    .4byte 0x48000038 # b .L_802487DC
L_802487A8:
    lwz 31, 0x4(3)
    li 29, 0x0
    li 28, 0x0
    .4byte 0x4800001C # b .L_802487D0
L_802487B8:
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x40820008 # bne .L_802487CC
    addi 29, 29, 0x1
L_802487CC:
    addi 28, 28, 0x1
L_802487D0:
    cmpw 28, 31
    .4byte 0x4180FFE4 # blt .L_802487B8
    addi 3, 29, 0x1
L_802487DC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802487FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    li 29, 0x0
    lwz 31, 0x4(3)
    mr 27, 3
    mr 30, 29
L_8024881C:
    cmpw 30, 31
    .4byte 0x4082000C # bne .L_8024882C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024888C
L_8024882C:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024887C
    lwz 28, 0xd60(27)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_80248860
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024888C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024888C
L_80248860:
    lwz 28, 0x4(27)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024888C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024888C
L_8024887C:
    lwz 0, 0xd60(27)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_8024888C
    addi 29, 29, 0x1
L_8024888C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF88 # blt .L_8024881C
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802488A8
    li 3, 0x5
    .4byte 0x4800001C # b .L_802488C0
L_802488A8:
    lwz 3, 0xd60(27)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802488BC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802488C0
L_802488BC:
    lwz 3, 0x120c(27)
L_802488C0:
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_802488D0
    li 3, 0x1
    .4byte 0x48000090 # b .L_8024895C
L_802488D0:
    lwz 31, 0x4(27)
    li 29, 0x0
    li 30, 0x0
L_802488DC:
    cmpw 30, 31
    .4byte 0x4082000C # bne .L_802488EC
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024894C
L_802488EC:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024893C
    lwz 28, 0xd60(27)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_80248920
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024894C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024894C
L_80248920:
    lwz 28, 0x4(27)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024894C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024894C
L_8024893C:
    lwz 0, 0xd60(27)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_8024894C
    addi 29, 29, 0x1
L_8024894C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF88 # blt .L_802488DC
    mr 3, 29
L_8024895C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80248970:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    lwz 31, 0x4(3)
    li 29, 0x0
    li 28, 0x0
L_80248990:
    cmpw 28, 31
    .4byte 0x4082000C # bne .L_802489A0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80248A00
L_802489A0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802489F0
    lwz 30, 0xd60(27)
    cmpwi 30, 0x0
    .4byte 0x4180001C # blt .L_802489D4
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x40820038 # bne .L_80248A00
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80248A00
L_802489D4:
    lwz 30, 0x4(27)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80248A00
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80248A00
L_802489F0:
    lwz 0, 0xd60(27)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80248A00
    addi 29, 29, 0x1
L_80248A00:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF88 # blt .L_80248990
    mr 3, 29
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80248A24:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0xC3E2D0B0 # lfs f31, lbl_80540050@sda21(r0)
    lfs 0, 0x8(3)
    li 30, 0x0
    stfs 0, 0x8(1)
    lfs 0, 0xc(3)
    stfs 0, 0xc(1)
L_80248A60:
    lfs 0, 0xc(1)
    fadds 0, 0, 31
    stfs 0, 0xc(1)
    lwz 31, 0x3b4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_80248A84
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80248A88
L_80248A84:
    addi 3, 3, 0xdc
L_80248A88:
    lfs 2, 0x8(1)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80248AD0
    lfs 1, 0xc(1)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80248AD0
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80248AD0
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80248AD0
    li 0, 0x1
L_80248AD0:
    clrlwi. 0, 0, 24
    .4byte 0x40820038 # bne .L_80248B0C
    lwz 31, 0x3b4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_80248AF0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80248AF4
L_80248AF0:
    addi 3, 3, 0xdc
L_80248AF4:
    lfs 1, 0xc(3)
    li 30, 0x1
    .4byte 0xC002D0B4 # lfs f0, lbl_80540054@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000028 # b .L_80248B30
L_80248B0C:
    lwz 4, 0x3b4(29)
    addi 3, 1, 0x8
    bl fn_802265FC
    lwz 4, 0x3b4(29)
    addi 3, 1, 0x8
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x231
    .4byte 0x4082FF34 # bne .L_80248A60
L_80248B30:
    lfs 1, 0xc(1)
    mr 3, 29
    .4byte 0xC002D0B4 # lfs f0, lbl_80540054@sda21(r0)
    addi 4, 1, 0x8
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8026E5F8
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80248B74
    clrlwi 0, 30, 24
    li 3, 0x1
    cmplwi 0, 0x1
    stb 3, 0x43f(29)
    .4byte 0x40820008 # bne .L_80248B6C
    stb 3, 0x440(29)
L_80248B6C:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80248B78
L_80248B74:
    li 3, 0x0
L_80248B78:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80248B9C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0xC3E2D0B0 # lfs f31, lbl_80540050@sda21(r0)
    lfs 0, 0x8(3)
    li 30, 0x0
    stfs 0, 0x8(1)
    lfs 0, 0xc(3)
    stfs 0, 0xc(1)
L_80248BD8:
    lfs 0, 0xc(1)
    fadds 0, 0, 31
    stfs 0, 0xc(1)
    lwz 31, 0x3b4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_80248BFC
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80248C00
L_80248BFC:
    addi 3, 3, 0xdc
L_80248C00:
    lfs 2, 0x8(1)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80248C48
    lfs 1, 0xc(1)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80248C48
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80248C48
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80248C48
    li 0, 0x1
L_80248C48:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80248C58
    li 3, 0x0
    .4byte 0x48000134 # b .L_80248D88
L_80248C58:
    lwz 4, 0x3b4(29)
    addi 3, 1, 0x8
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x3e
    .4byte 0x4082FF6C # bne .L_80248BD8
    .4byte 0xC3E2D0B0 # lfs f31, lbl_80540050@sda21(r0)
L_80248C74:
    lfs 0, 0xc(1)
    fadds 0, 0, 31
    stfs 0, 0xc(1)
    lwz 31, 0x3b4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_80248C98
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80248C9C
L_80248C98:
    addi 3, 3, 0xdc
L_80248C9C:
    lfs 2, 0x8(1)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80248CE4
    lfs 1, 0xc(1)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80248CE4
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80248CE4
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80248CE4
    li 0, 0x1
L_80248CE4:
    clrlwi. 0, 0, 24
    .4byte 0x40820038 # bne .L_80248D20
    lwz 31, 0x3b4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_80248D04
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80248D08
L_80248D04:
    addi 3, 3, 0xdc
L_80248D08:
    lfs 1, 0xc(3)
    li 30, 0x1
    .4byte 0xC002D0B4 # lfs f0, lbl_80540054@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800001C # b .L_80248D38
L_80248D20:
    lwz 4, 0x3b4(29)
    addi 3, 1, 0x8
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x231
    .4byte 0x4082FF40 # bne .L_80248C74
L_80248D38:
    lfs 1, 0xc(1)
    mr 3, 29
    .4byte 0xC002D0B4 # lfs f0, lbl_80540054@sda21(r0)
    addi 4, 1, 0x8
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8026E5F8
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80248D84
    clrlwi 0, 30, 24
    li 3, 0x1
    cmplwi 0, 0x1
    stb 3, 0x43f(29)
    .4byte 0x40820008 # bne .L_80248D74
    stb 3, 0x440(29)
L_80248D74:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    li 3, 0x1
    stfs 0, 0x444(29)
    .4byte 0x48000008 # b .L_80248D88
L_80248D84:
    li 3, 0x0
L_80248D88:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80248DAC:
    li 0, 0x0
    stb 0, 0x121e(3)
    blr

fn_80248DB8:
    li 4, 0x0
    li 0, 0x3
    stb 4, 0x1217(3)
    stw 0, 0x1218(3)
    blr

fn_80248DCC:
    li 0, 0xb4
    stw 0, 0x1238(3)
    blr

fn_80248DD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x1
    stb 3, 0x1214(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x41800078 # blt .L_80248E74
    stb 3, 0x1215(31)
    lwz 3, 0xd60(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x3
    stfs 0, 0x8(31)
    lfs 0, 0x4(3)
    stfs 0, 0xc(31)
    lfs 0, 0x8(3)
    mr 3, 31
    stfs 0, 0x10(31)
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80248E74
    li 3, 0x3
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80248E74
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80248E74
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80248E74
    li 0, 0x0
    stb 0, 0xcfe(31)
L_80248E74:
    li 0, 0x0
    stw 0, 0x1224(31)
    stb 0, 0x1217(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80248E94:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    clrlwi 3, 4, 24
    stw 30, 0x18(1)
    cmplwi 3, 0x1
    stw 29, 0x14(1)
    mr 29, 4
    .4byte 0x41820118 # beq .L_80248FD4
    lbz 0, 0x121e(31)
    cmplwi 0, 0x1
    .4byte 0x4182010C # beq .L_80248FD4
    lwz 0, 0xbac(31)
    cmpwi 0, 0x0
    .4byte 0x41810100 # bgt .L_80248FD4
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_80248EEC
    bl fn_8022AF5C
    clrlwi. 0, 3, 24
    .4byte 0x408200EC # bne .L_80248FD4
L_80248EEC:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_80248F2C
    li 30, 0x0
L_80248EFC:
    lwz 3, 0x4(31)
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80248F20
    mr 3, 30
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x408200B8 # bne .L_80248FD4
L_80248F20:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_80248EFC
L_80248F2C:
    li 30, 0x0
L_80248F30:
    lwz 3, 0x4(31)
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80248F54
    mr 3, 30
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820084 # bne .L_80248FD4
L_80248F54:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_80248F30
    stb 29, 0x1214(31)
    lbz 0, 0x1214(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80248F7C
    li 0, 0x0
    stb 0, 0x1215(31)
    .4byte 0x48000054 # b .L_80248FCC
L_80248F7C:
    mr 3, 31
    li 4, 0x3
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80248FCC
    li 3, 0x3
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80248FCC
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80248FCC
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80248FCC
    li 0, 0x0
    stb 0, 0xcfe(31)
L_80248FCC:
    li 0, 0x0
    stb 0, 0x1217(31)
L_80248FD4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

