# fn_802EE704 - GNEF: nearest-"WARP"-actor search (0x12C)
# Iterates the spatial registry (SpatialRegistry_GetBase) looking for an actor tagged
# "WARP" (FourCC check on candidate->0x1a0), then calls
# SetGlobalCueFlag on a match (the shared global cue-flag setter). Track A:
# byte-match verified, structural overview per the large/complex-function
# exception - confirms GNEF interacts with the already-landed WARP portal
# actor.
.section extab, "a"
.balign 4
.global etb_8000D244
etb_8000D244:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000D244, 8

.section extabindex, "a"
.balign 4
.global eti_8001C480
eti_8001C480:
    .4byte fn_802EE704
    .4byte 0x0000012C
    .4byte etb_8000D244
.size eti_8001C480, 12

.text
.balign 4
.global fn_802EE704

fn_802EE704:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    lwz 29, 0x1008(3)
    li 27, 0x0
    li 28, 0x0
    .4byte 0x48000084 # b .L_802EE7AC
L_802EE72C:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 30, 3, 0
    cmplwi 30, 0x0
    .4byte 0x41820068 # beq .L_802EE7A4
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x5741
    cmplwi 0, 0x5250
    .4byte 0x40820058 # bne .L_802EE7A4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 0, 0x25c(31)
    cmpw 0, 3
    .4byte 0x40820038 # bne .L_802EE7A4
    .4byte 0xC022E464 # lfs f1, lbl_80541404@sda21(r0)
    lfs 0, 0x10(31)
    psq_l 2, 0xc(30), 0, 0
    fadds 0, 1, 0
    lfs 1, 0xc(31)
    psq_st 2, 0x8(1), 0, 0
    lfs 2, 0x14(30)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    stfs 2, 0x10(1)
    psq_st 0, 0xc(30), 0, 0
    stfs 2, 0x14(30)
L_802EE7A4:
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_802EE7AC:
    cmpw 27, 29
    .4byte 0x4180FF7C # blt .L_802EE72C
    li 30, 0x0
    li 27, 0x0
    mr 28, 30
    li 26, 0x0
    .4byte 0x48000050 # b .L_802EE814
L_802EE7C8:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_802EE80C
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x534c
    cmplwi 0, 0x5234
    .4byte 0x40820024 # bne .L_802EE80C
    addi 0, 30, 0x260
    li 3, 0x1
    stwx 26, 31, 0
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    bl SetGlobalCueFlag
    cmpwi 27, 0x2
    .4byte 0x40800014 # bge .L_802EE81C
L_802EE80C:
    addi 28, 28, 0x4
    addi 26, 26, 0x1
L_802EE814:
    cmpw 26, 29
    .4byte 0x4180FFB0 # blt .L_802EE7C8
L_802EE81C:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

