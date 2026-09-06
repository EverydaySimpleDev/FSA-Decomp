/*
 * TINK (vtable lbl_804A51E4). State-0 handler: picks and validates a
 * random nearby player-group target via fn_8023DE58 + fn_801CD2F8 +
 * fn_801E3250 + spatial-registry queries + fn_801CD664 (confirmed PRNG
 * pick), storing the choice into this->0x4 (owner ID). For non-zero
 * states, runs proximity/flag-bit checks (this->0x230 bits 14-17), calls
 * fn_801CD290, fn_801CD354 (confirmed 0<->1/2<->3 permutation table), and
 * fn_801E1594 with modes 0, 6, 7, 8, unconditionally calls fn_8021FDB8
 * near the end, then does a final dispatch on this->0x248/this->0x278
 * choosing between fn_801E2F40 -> fn_801E1594(this, 0xe) or fn_801E2EE4.
 * Ends by conditionally calling fn_801E1300(this).
 */
.section extab, "a"
.balign 4
.global etb_80008948
etb_80008948:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008948, 8

.section extabindex, "a"
.balign 4
.global eti_80015E20
eti_80015E20:
    .4byte fn_801E0CF4
    .4byte 0x0000060C
    .4byte etb_80008948
.size eti_80015E20, 12

.text
.balign 4
.global fn_801E0CF4

fn_801E0CF4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_801E0DEC
    li 0, -0x1
    stw 0, 0x2a8(30)
    lwz 3, 0x2a8(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_801E0D34
    bl fn_8023DE58
    stw 3, 0x4(30)
    .4byte 0x4800059C # b .L_801E12CC
L_801E0D34:
    li 28, 0x0
    addi 27, 1, 0x8
    mr 31, 28
L_801E0D40:
    mr 3, 31
    bl fn_8023DE58
    mr 29, 3
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_801E0DB0
    cmpwi 29, 0x8
    .4byte 0x41820054 # beq .L_801E0DB0
    mr 3, 29
    li 4, 0x0
    bl fn_801E3250
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_801E0DB0
    bl SpatialRegistry_GetBase
    mr 4, 29
    li 5, -0x1
    bl fn_801F750C
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_801E0DA4
    bl SpatialRegistry_GetBase
    mr 4, 29
    li 5, -0x1
    bl fn_801F7464
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_801E0DB0
L_801E0DA4:
    stw 29, 0x0(27)
    addi 27, 27, 0x4
    addi 28, 28, 0x1
L_801E0DB0:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF88 # blt .L_801E0D40
    cmpwi 28, 0x0
    .4byte 0x40820010 # bne .L_801E0DD0
    li 0, 0x0
    stw 0, 0x4(30)
    .4byte 0x48000500 # b .L_801E12CC
L_801E0DD0:
    mr 3, 28
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x8
    lwzx 0, 3, 0
    stw 0, 0x4(30)
    .4byte 0x480004E4 # b .L_801E12CC
L_801E0DEC:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820044 # beq .L_801E0E38
    lfs 1, 0x2c4(30)
    lfs 0, 0xc(30)
    .4byte 0xC042C4E8 # lfs f2, lbl_8053F488@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800028 # bge .L_801E0E38
    lfs 1, 0x2c8(30)
    lfs 0, 0x10(30)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800010 # bge .L_801E0E38
    li 4, 0x0
    bl fn_801E1594
    .4byte 0x480004B8 # b .L_801E12EC
L_801E0E38:
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801E0E68
    lwz 3, 0x4(30)
    bl fn_801CD290
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801E0E68
    mr 3, 30
    li 4, 0x0
    bl fn_801E1594
    .4byte 0x48000488 # b .L_801E12EC
L_801E0E68:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x4182004C # beq .L_801E0EBC
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 16, 14
    stw 0, 0x230(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x7
    .4byte 0x40800024 # bge .L_801E0EAC
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_801E0E98
    .4byte 0x48000018 # b .L_801E0EAC
L_801E0E98:
    lwz 3, 0x98(30)
    bl fn_801CD354
    stw 3, 0x98(30)
    li 0, -0x1
    stw 0, 0x2d0(30)
L_801E0EAC:
    mr 3, 30
    li 4, 0x8
    bl fn_801E1594
    .4byte 0x4800004C # b .L_801E0F04
L_801E0EBC:
    lwz 0, 0x278(30)
    cmpwi 0, 0xf
    .4byte 0x40800040 # bge .L_801E0F04
    cmpwi 0, 0xd
    .4byte 0x40800008 # bge .L_801E0ED4
    .4byte 0x48000034 # b .L_801E0F04
L_801E0ED4:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x40810028 # ble .L_801E0F04
    addi 3, 30, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801E0F04
    lwz 4, 0x98(30)
    addi 3, 30, 0x270
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
L_801E0F04:
    lwz 5, 0x230(30)
    rlwinm. 6, 5, 0, 14, 14
    .4byte 0x41820120 # beq .L_801E102C
    lwz 4, 0x248(30)
    cmpwi 4, 0x6
    .4byte 0x41820028 # beq .L_801E0F40
    .4byte 0x40800010 # bge .L_801E0F2C
    cmpwi 4, 0x1
    .4byte 0x4182001C # beq .L_801E0F40
    .4byte 0x48000104 # b .L_801E102C
L_801E0F2C:
    cmpwi 4, 0x12
    .4byte 0x408000FC # bge .L_801E102C
    cmpwi 4, 0xf
    .4byte 0x408000DC # bge .L_801E1014
    .4byte 0x480000F0 # b .L_801E102C
L_801E0F40:
    lwz 0, 0x2a8(30)
    cmpwi 0, 0x0
    .4byte 0x418000E4 # blt .L_801E102C
    cmpwi 0, -0x1
    .4byte 0x418200DC # beq .L_801E102C
    cmpwi 4, 0x7
    li 3, 0x0
    .4byte 0x41820098 # beq .L_801E0FF4
    .4byte 0x40800010 # bge .L_801E0F70
    cmpwi 4, 0x0
    .4byte 0x4182008C # beq .L_801E0FF4
    .4byte 0x48000014 # b .L_801E0F80
L_801E0F70:
    cmpwi 4, 0x13
    .4byte 0x4080000C # bge .L_801E0F80
    cmpwi 4, 0xf
    .4byte 0x40800078 # bge .L_801E0FF4
L_801E0F80:
    rlwinm. 0, 5, 0, 17, 17
    .4byte 0x40820070 # bne .L_801E0FF4
    lhz 0, 0x2cc(30)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_801E0FF4
    lwz 0, 0x278(30)
    li 4, 0x0
    cmpwi 0, 0xd
    .4byte 0x40800018 # bge .L_801E0FB8
    cmpwi 0, 0x3
    .4byte 0x4080001C # bge .L_801E0FC4
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801E0FC0
    .4byte 0x48000010 # b .L_801E0FC4
L_801E0FB8:
    cmpwi 0, 0x11
    .4byte 0x40800008 # bge .L_801E0FC4
L_801E0FC0:
    li 4, 0x1
L_801E0FC4:
    clrlwi. 0, 4, 24
    .4byte 0x4182002C # beq .L_801E0FF4
    cmplwi 6, 0x0
    .4byte 0x41820014 # beq .L_801E0FE4
    rlwinm. 0, 5, 0, 11, 11
    .4byte 0x4182001C # beq .L_801E0FF4
    li 3, 0x1
    .4byte 0x48000014 # b .L_801E0FF4
L_801E0FE4:
    lwz 0, 0x2bc(30)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E0FF4
    li 3, 0x1
L_801E0FF4:
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801E102C
    li 0, -0x1
    mr 3, 30
    stw 0, 0x2a8(30)
    li 4, 0x7
    bl fn_801E1594
    .4byte 0x4800001C # b .L_801E102C
L_801E1014:
    lwz 3, 0x2a8(30)
    li 6, 0x0
    lwz 4, 0x4(30)
    li 7, 0x0
    lwz 5, 0x198(30)
    bl fn_8022FE80
L_801E102C:
    mr 3, 30
    bl fn_8021FDB8
    lwz 0, 0x248(30)
    li 31, 0x0
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_801E105C
    cmpwi 0, 0x0
    .4byte 0x41820234 # beq .L_801E127C
    .4byte 0x41800020 # blt .L_801E106C
    cmpwi 0, 0x5
    .4byte 0x40800228 # bge .L_801E127C
    .4byte 0x48000014 # b .L_801E106C
L_801E105C:
    cmpwi 0, 0x13
    .4byte 0x4080000C # bge .L_801E106C
    cmpwi 0, 0xf
    .4byte 0x40800214 # bge .L_801E127C
L_801E106C:
    lwz 3, 0x278(30)
    li 0, 0x0
    cmpwi 3, 0xd
    .4byte 0x40800018 # bge .L_801E1090
    cmpwi 3, 0x3
    .4byte 0x4080001C # bge .L_801E109C
    cmpwi 3, 0x0
    .4byte 0x40800010 # bge .L_801E1098
    .4byte 0x48000010 # b .L_801E109C
L_801E1090:
    cmpwi 3, 0x11
    .4byte 0x40800008 # bge .L_801E109C
L_801E1098:
    li 0, 0x1
L_801E109C:
    clrlwi. 0, 0, 24
    .4byte 0x418201DC # beq .L_801E127C
    cmpwi 3, 0x2
    li 0, 0x0
    .4byte 0x41820008 # beq .L_801E10B4
    .4byte 0x48000008 # b .L_801E10B8
L_801E10B4:
    li 0, 0x1
L_801E10B8:
    clrlwi. 0, 0, 24
    .4byte 0x408201C0 # bne .L_801E127C
    lwz 3, 0x230(30)
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x41820060 # beq .L_801E1128
    lwz 0, 0x98(30)
    li 31, 0x0
    lfs 2, 0x2c4(30)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E110C
    .4byte 0x40800180 # bge .L_801E1260
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E10F0
    .4byte 0x48000174 # b .L_801E1260
L_801E10F0:
    lfs 1, 0xc(30)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800160 # bge .L_801E1260
    li 31, 0x1
    .4byte 0x48000158 # b .L_801E1260
L_801E110C:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(30)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800144 # bge .L_801E1260
    li 31, 0x1
    .4byte 0x4800013C # b .L_801E1260
L_801E1128:
    rlwinm. 0, 3, 0, 14, 14
    .4byte 0x41820078 # beq .L_801E11A4
    lwz 3, 0x2a8(30)
    cmpwi 3, 0x0
    .4byte 0x41800128 # blt .L_801E1260
    cmpwi 3, -0x1
    .4byte 0x40820120 # bne .L_801E1260
    bl fn_8023E724
    lwz 0, 0x98(30)
    li 31, 0x0
    lfs 2, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E1188
    .4byte 0x40800104 # bge .L_801E1260
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E116C
    .4byte 0x480000F8 # b .L_801E1260
L_801E116C:
    lfs 1, 0xc(30)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x408000E4 # bge .L_801E1260
    li 31, 0x1
    .4byte 0x480000DC # b .L_801E1260
L_801E1188:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(30)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408000C8 # bge .L_801E1260
    li 31, 0x1
    .4byte 0x480000C0 # b .L_801E1260
L_801E11A4:
    lwz 27, 0x2ac(30)
    li 3, 0x0
    cmpwi 27, 0x0
    .4byte 0x41800010 # blt .L_801E11C0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
L_801E11C0:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E11E0
    lwz 27, 0x2b0(30)
    cmpwi 27, 0x0
    .4byte 0x41800010 # blt .L_801E11E0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
L_801E11E0:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E1200
    lwz 27, 0x2b4(30)
    cmpwi 27, 0x0
    .4byte 0x41800010 # blt .L_801E1200
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
L_801E1200:
    cmplwi 3, 0x0
    .4byte 0x4182005C # beq .L_801E1260
    lwz 0, 0x98(30)
    li 31, 0x0
    lfs 2, 0xc(3)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801E1248
    .4byte 0x40800044 # bge .L_801E1260
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E122C
    .4byte 0x48000038 # b .L_801E1260
L_801E122C:
    lfs 1, 0xc(30)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801E1260
    li 31, 0x1
    .4byte 0x4800001C # b .L_801E1260
L_801E1248:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(30)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801E1260
    li 31, 0x1
L_801E1260:
    clrlwi. 0, 31, 24
    .4byte 0x41820018 # beq .L_801E127C
    lwz 0, 0x248(30)
    mr 3, 30
    li 4, 0x6
    stw 0, 0x2d0(30)
    bl fn_801E1594
L_801E127C:
    lwz 0, 0x248(30)
    li 3, 0x0
    cmpwi 0, 0xd
    .4byte 0x40800014 # bge .L_801E129C
    cmpwi 0, 0xb
    .4byte 0x40800008 # bge .L_801E1298
    .4byte 0x48000008 # b .L_801E129C
L_801E1298:
    li 3, 0x1
L_801E129C:
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801E12CC
    mr 3, 30
    bl fn_801E2F40
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801E12C4
    mr 3, 30
    li 4, 0xe
    bl fn_801E1594
    .4byte 0x4800000C # b .L_801E12CC
L_801E12C4:
    mr 3, 30
    bl fn_801E2EE4
L_801E12CC:
    lwz 0, 0x2a8(30)
    cmpwi 0, -0x1
    .4byte 0x40820018 # bne .L_801E12EC
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x4082000C # bne .L_801E12EC
    mr 3, 30
    bl fn_801E1300
L_801E12EC:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

