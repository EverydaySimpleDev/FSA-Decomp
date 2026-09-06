/*
 * Cutscene/camera-cue actor (vtable lbl_804A4958) - fn_801E4348(this).
 * Another "did a player trigger my cue" variant, gated by the same
 * state-range/flag checks as its siblings. Scans the 4-player-scan
 * family (fn_8023AE34) for a facing player, then branches by sub-state:
 * a simple validity check (confirmed fn_801CC730) flags the cue
 * directly for one sub-range; another range instead pushes the player
 * toward a computed offset point via the confirmed fn_801CB688, queues
 * animation cue 0x53c, and for specific sub-states re-arms via the
 * unconfirmed fn_801D5D84(this, 0xb) (outside this gap).
 */
.section extab, "a"
.balign 4
.global etb_80008A30
etb_80008A30:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008A30, 8

.section extabindex, "a"
.balign 4
.global eti_80015F7C
eti_80015F7C:
    .4byte fn_801E4348
    .4byte 0x00000184
    .4byte etb_80008A30
.size eti_80015F7C, 12

.text
.balign 4
.global fn_801E4348

fn_801E4348:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    li 31, 0x0
    stw 30, 0x38(1)
    mr 30, 3
    lwz 0, 0x248(3)
    li 3, 0x1
    cmpwi 0, 0x9
    .4byte 0x4080001C # bge .L_801E438C
    cmpwi 0, 0x5
    .4byte 0x4182002C # beq .L_801E43A4
    .4byte 0x40800024 # bge .L_801E43A0
    cmpwi 0, 0x0
    .4byte 0x4080001C # bge .L_801E43A0
    .4byte 0x4800001C # b .L_801E43A4
L_801E438C:
    cmpwi 0, 0x1b
    .4byte 0x40800014 # bge .L_801E43A4
    cmpwi 0, 0x15
    .4byte 0x40800008 # bge .L_801E43A0
    .4byte 0x48000008 # b .L_801E43A4
L_801E43A0:
    li 3, 0x0
L_801E43A4:
    clrlwi. 0, 3, 24
    .4byte 0x41820108 # beq .L_801E44B0
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x418200FC # beq .L_801E44B0
    mr 3, 30
    addi 4, 1, 0x1c
    bl fn_801F317C
    lwz 4, 0x4(30)
    addi 3, 1, 0x1c
    addi 5, 1, 0x8
    bl fn_8023AE34
    cmpwi 3, 0x0
    .4byte 0x418000D8 # blt .L_801E44B0
    lwz 0, 0x248(30)
    cmpwi 0, 0x13
    .4byte 0x4182001C # beq .L_801E4400
    .4byte 0x40800034 # bge .L_801E441C
    cmpwi 0, 0xe
    .4byte 0x4080002C # bge .L_801E441C
    cmpwi 0, 0xc
    .4byte 0x40800008 # bge .L_801E4400
    .4byte 0x48000020 # b .L_801E441C
L_801E4400:
    li 4, 0x0
    li 5, 0x0
    bl fn_801CC730
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_801E44B0
    li 31, 0x1
    .4byte 0x48000098 # b .L_801E44B0
L_801E441C:
    li 4, 0x0
    bl fn_801CC820
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_801E44B0
    lfs 2, 0x14(30)
    addi 4, 1, 0x10
    lfs 0, 0xc(1)
    li 5, 0x1
    lfs 1, 0x8(1)
    li 6, 0x1
    fadds 0, 0, 2
    stfs 2, 0x18(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 3, 0x4(30)
    bl fn_801CB688
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x3c
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x248(30)
    cmpwi 0, 0x13
    .4byte 0x41820034 # beq .L_801E44AC
    .4byte 0x4080001C # bge .L_801E4498
    cmpwi 0, 0xa
    .4byte 0x4182001C # beq .L_801E44A0
    .4byte 0x41800024 # blt .L_801E44AC
    cmpwi 0, 0xe
    .4byte 0x40800010 # bge .L_801E44A0
    .4byte 0x48000018 # b .L_801E44AC
L_801E4498:
    cmpwi 0, 0x15
    .4byte 0x40800010 # bge .L_801E44AC
L_801E44A0:
    mr 3, 30
    li 4, 0xb
    bl fn_801D5D84
L_801E44AC:
    li 31, 0x1
L_801E44B0:
    lwz 0, 0x44(1)
    mr 3, 31
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

