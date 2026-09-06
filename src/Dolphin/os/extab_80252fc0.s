# Fresh project-wide gap hunt continuation: 9 functions, 12,172 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_8000B6B8
etb_8000B6B8:
    .4byte 0x294A0000
    .4byte 0x00000000
.size etb_8000B6B8, 8

.global etb_8000B6C0
etb_8000B6C0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B6C0, 8

.global etb_8000B6C8
etb_8000B6C8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B6C8, 8

.global etb_8000B6D0
etb_8000B6D0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B6D0, 8

.global etb_8000B6D8
etb_8000B6D8:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B6D8, 8

.global etb_8000B6E0
etb_8000B6E0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B6E0, 8

.global etb_8000B6E8
etb_8000B6E8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B6E8, 8

.global etb_8000B6F0
etb_8000B6F0:
    .4byte 0x180A0000
    .4byte 0x0000015C
    .4byte 0x00000050
    .4byte 0x00000178
    .4byte 0x00000048
    .4byte 0x00000184
    .4byte 0x00000050
    .4byte 0x000001A0
    .4byte 0x000000B0
    .4byte 0x000001AC
    .4byte 0x00000050
    .4byte 0x000001B8
    .4byte 0x000000BC
    .4byte 0x000001C4
    .4byte 0x00000050
    .4byte 0x000001D4
    .4byte 0x000000C8
    .4byte 0x00000000
    .4byte 0x0A80001D
    .4byte dtor_80084580
    .4byte 0x0780001E
    .4byte 0x000013A8
    .4byte dtor_8013C5C8
    .4byte 0x0780001E
    .4byte 0x00001398
    .4byte dtor_8013C5C8
    .4byte 0x0780001E
    .4byte 0x00001330
    .4byte dtor_802150FC
    .4byte 0x0780001E
    .4byte 0x0000130C
    .4byte dtor_802150FC
    .4byte 0x0780001E
    .4byte 0x000012E8
    .4byte dtor_802150FC
    .4byte 0x0780001E
    .4byte 0x000012D0
    .4byte dtor_802150FC
    .4byte 0x0780001E
    .4byte 0x00001290
    .4byte dtor_802150FC
    .4byte 0x8780001E
    .4byte 0x00001278
    .4byte dtor_802150FC
    .4byte 0x0A80001D
    .4byte dtor_80084580
    .4byte 0x01000050
    .4byte 0x0A80001D
    .4byte dtor_80084580
    .4byte 0x01000050
    .4byte 0x0A80001D
    .4byte dtor_80084580
    .4byte 0x01000050
.size etb_8000B6F0, 212

.global etb_8000B7C4
etb_8000B7C4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B7C4, 8

.section extabindex, "a"
.balign 4
.global eti_80019D08
eti_80019D08:
    .4byte fn_80252FC0
    .4byte 0x00000EAC
    .4byte etb_8000B6B8
.size eti_80019D08, 12

.global eti_80019D14
eti_80019D14:
    .4byte fn_80253E6C
    .4byte 0x00000644
    .4byte etb_8000B6C0
.size eti_80019D14, 12

.global eti_80019D20
eti_80019D20:
    .4byte fn_802544B0
    .4byte 0x000001B0
    .4byte etb_8000B6C8
.size eti_80019D20, 12

.global eti_80019D2C
eti_80019D2C:
    .4byte fn_80254660
    .4byte 0x000000E4
    .4byte etb_8000B6D0
.size eti_80019D2C, 12

.global eti_80019D38
eti_80019D38:
    .4byte fn_80254744
    .4byte 0x000011A0
    .4byte etb_8000B6D8
.size eti_80019D38, 12

.global eti_80019D44
eti_80019D44:
    .4byte fn_802558E4
    .4byte 0x000001DC
    .4byte etb_8000B6E0
.size eti_80019D44, 12

.global eti_80019D50
eti_80019D50:
    .4byte fn_80255AC0
    .4byte 0x00000068
    .4byte etb_8000B6E8
.size eti_80019D50, 12

.global eti_80019D5C
eti_80019D5C:
    .4byte fn_80255B28
    .4byte 0x00000200
    .4byte etb_8000B6F0
.size eti_80019D5C, 12

.global eti_80019D68
eti_80019D68:
    .4byte fn_80255D28
    .4byte 0x00000224
    .4byte etb_8000B7C4
.size eti_80019D68, 12

.text
.balign 4
.global fn_80252FC0
.global fn_80253E6C
.global fn_802544B0
.global fn_80254660
.global fn_80254744
.global fn_802558E4
.global fn_80255AC0
.global fn_80255B28
.global fn_80255D28

fn_80252FC0:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stfd 30, 0xe0(1)
    psq_st 30, 0xe8(1), 0, 0
    stfd 29, 0xd0(1)
    psq_st 29, 0xd8(1), 0, 0
    stfd 28, 0xc0(1)
    psq_st 28, 0xc8(1), 0, 0
    stfd 27, 0xb0(1)
    psq_st 27, 0xb8(1), 0, 0
    stmw 27, 0x9c(1)
    mr 31, 3
    lbz 0, 0x121f(3)
    cmplwi 0, 0x0
    .4byte 0x40820E2C # bne .L_80253E30
    lbz 0, 0xce8(31)
    cmplwi 0, 0x0
    .4byte 0x40820E20 # bne .L_80253E30
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x40820E14 # bne .L_80253E30
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x40820E08 # bne .L_80253E30
    lwz 0, 0x1240(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80253050
    lhz 0, 0x3c4(31)
    cmplwi 0, 0x1bf
    .4byte 0x41800010 # blt .L_80253054
    cmplwi 0, 0x1c6
    .4byte 0x40800008 # bge .L_80253054
L_80253050:
    li 3, 0x1
L_80253054:
    clrlwi. 0, 3, 24
    .4byte 0x40820DD8 # bne .L_80253E30
    mr 3, 31
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x40820DC8 # bne .L_80253E30
    lwz 0, 0x1240(31)
    cmpwi 0, 0xe
    .4byte 0x41820DBC # beq .L_80253E30
    li 29, 0x0
    mr 30, 29
L_80253080:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4082000C # bne .L_80253094
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802530F4
L_80253094:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802530E4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802530C8
    mr 3, 30
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802530F4
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802530F4
L_802530C8:
    lwz 28, 0x4(31)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_802530F4
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802530F4
L_802530E4:
    lwz 0, 0xd60(31)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_802530F4
    addi 29, 29, 0x1
L_802530F4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_80253080
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80253110
    li 3, 0x5
    .4byte 0x4800001C # b .L_80253128
L_80253110:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80253124
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80253128
L_80253124:
    lwz 3, 0x120c(31)
L_80253128:
    cmpwi 3, 0x4
    .4byte 0x41820D04 # beq .L_80253E30
    lwz 5, 0xd60(31)
    cmpwi 5, 0x0
    .4byte 0x4180001C # blt .L_80253154
    lwz 0, 0xd9c(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_80253154
    lwz 0, 0xdac(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80253160
L_80253154:
    lbz 0, 0x1216(31)
    cmplwi 0, 0x0
    .4byte 0x41820498 # beq .L_802535F4
L_80253160:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820010 # bne .L_8025318C
    cmpwi 5, 0x0
    .4byte 0x40800008 # bge .L_8025318C
    .4byte 0x48000144 # b .L_802532CC
L_8025318C:
    li 29, 0x0
    mr 28, 29
L_80253194:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802531A8
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80253208
L_802531A8:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802531F8
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802531DC
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80253208
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80253208
L_802531DC:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80253208
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80253208
L_802531F8:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80253208
    addi 29, 29, 0x1
L_80253208:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80253194
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80253224
    li 3, 0x5
    .4byte 0x4800001C # b .L_8025323C
L_80253224:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80253238
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8025323C
L_80253238:
    lwz 3, 0x120c(31)
L_8025323C:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_802532C0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8025325C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80253260
L_8025325C:
    lwz 30, 0x1224(31)
L_80253260:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80253274
    li 0, 0x0
    .4byte 0x4800003C # b .L_802532AC
L_80253274:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_8025329C
L_80253280:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80253298
    addi 28, 28, 0x1
L_80253298:
    addi 29, 29, 0x1
L_8025329C:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80253280
    addi 0, 28, 0x1
L_802532AC:
    subf 3, 30, 0
    subf 0, 0, 30
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_802532CC
L_802532C0:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_802532CC:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_802532E4
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_80233EDC
    .4byte 0x48000024 # b .L_80253304
L_802532E4:
    lwz 0, 0x1240(31)
    li 3, 0x0
    cmpwi 0, 0x1b
    .4byte 0x41820010 # beq .L_80253300
    lwz 0, 0x1244(31)
    cmpwi 0, 0x1b
    .4byte 0x40820008 # bne .L_80253304
L_80253300:
    li 3, 0x1
L_80253304:
    clrlwi. 0, 3, 24
    .4byte 0x40820B28 # bne .L_80253E30
    lwz 0, 0x1240(31)
    cmpwi 0, 0x19
    .4byte 0x41820B1C # beq .L_80253E30
    lwz 0, 0x122c(31)
    cmpwi 0, 0x0
    .4byte 0x41810B10 # bgt .L_80253E30
    mr 3, 31
    addi 4, 1, 0x8c
    bl fn_8027FA08
    lfs 0, 0x94(1)
    psq_l 1, 0x8c(1), 0, 0
    stfs 0, 0x28(1)
    psq_l 3, 0x8(31), 0, 0
    psq_l 2, 0x28(1), 1, 0
    psq_l 0, 0x10(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x20(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x80(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
    lfs 0, 0x28(1)
    psq_st 3, 0x20(1), 0, 0
    stfs 0, 0x88(1)
    lbz 0, 0x1216(31)
    psq_st 3, 0x44(1), 0, 0
    cmplwi 0, 0x0
    stfs 0, 0x4c(1)
    .4byte 0x4082000C # bne .L_80253384
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 0, 0x88(1)
L_80253384:
    addi 3, 1, 0x80
    bl PSVECMag
    lwz 0, 0x1218(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_802533A0
    .4byte 0xC3A2D0AC # lfs f29, lbl_8054004C@sda21(r0)
    .4byte 0x48000120 # b .L_802534BC
L_802533A0:
    li 0, 0x2
    lwz 4, 0xbf0(31)
    li 3, 0x0
    mtctr 0
L_802533B0:
    lbz 0, 0xb4(4)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802533D0
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_802533E8
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_802533E8
L_802533D0:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802533E8
    li 0, 0x1
    .4byte 0x480000C4 # b .L_802534A8
L_802533E8:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025340C
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_80253424
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80253424
L_8025340C:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80253424
    li 0, 0x1
    .4byte 0x48000088 # b .L_802534A8
L_80253424:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80253448
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_80253460
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80253460
L_80253448:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80253460
    li 0, 0x1
    .4byte 0x4800004C # b .L_802534A8
L_80253460:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80253484
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_8025349C
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_8025349C
L_80253484:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8025349C
    li 0, 0x1
    .4byte 0x48000010 # b .L_802534A8
L_8025349C:
    addi 3, 3, 0x1
    .4byte 0x4200FF10 # bdnz .L_802533B0
    li 0, 0x0
L_802534A8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_802534B8
    .4byte 0xC3A2D0EC # lfs f29, lbl_8054008C@sda21(r0)
    .4byte 0x48000008 # b .L_802534BC
L_802534B8:
    .4byte 0xC3A2D0F0 # lfs f29, lbl_80540090@sda21(r0)
L_802534BC:
    fcmpo cr0, 1, 29
    cror eq, gt, eq
    .4byte 0x408200C0 # bne .L_80253584
    psq_l 2, 0x80(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x88(1)
    ps_mul 2, 2, 2
    .4byte 0xC022D0A0 # lfs f1, lbl_80540040@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 31, 31, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_8025354C
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80253510
    fmr 30, 4
    .4byte 0x48000028 # b .L_80253534
L_80253510:
    frsqrte 3, 4
    .4byte 0xC042D0A4 # lfs f2, lbl_80540044@sda21(r0)
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_80253534:
    psq_l 1, 0x80(1), 0, 0
    psq_l 0, 0x88(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x80(1), 0, 0
    psq_st 0, 0x88(1), 1, 0
L_8025354C:
    psq_l 1, 0x80(1), 0, 0
    psq_l 0, 0x88(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x80(1), 0, 0
    psq_st 0, 0x88(1), 1, 0
    psq_l 0, 0x8(31), 0, 0
    ps_add 0, 0, 1
    psq_st 0, 0x8(31), 0, 0
    psq_l 1, 0x10(31), 1, 0
    psq_l 0, 0x88(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x10(31), 1, 0
    .4byte 0x480008B0 # b .L_80253E30
L_80253584:
    lfs 0, 0x8c(1)
    li 0, 0x0
    stfs 0, 0x8(31)
    lfs 0, 0x90(1)
    stfs 0, 0xc(31)
    lfs 0, 0x94(1)
    stfs 0, 0x10(31)
    stb 0, 0x1216(31)
    lbz 0, 0x1214(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802535C4
    lwz 0, 0x1218(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802535C4
    li 0, 0x1
    stb 0, 0x1217(31)
L_802535C4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_802535E4
    lbz 0, 0x1214(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802535E4
    li 0, 0x1
    stb 0, 0x1215(31)
L_802535E4:
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
    .4byte 0x48000840 # b .L_80253E30
L_802535F4:
    lwz 3, 0xd9c(31)
    cmpwi 3, 0x0
    .4byte 0x40800010 # bge .L_8025360C
    lwz 0, 0xdac(31)
    cmpwi 0, 0x0
    .4byte 0x418003CC # blt .L_802539D4
L_8025360C:
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_80253634
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    stfs 2, 0x74(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    .4byte 0x48000024 # b .L_80253654
L_80253634:
    lwz 3, 0xdac(31)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    stfs 2, 0x74(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
L_80253654:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802536A8
    .4byte 0x40800014 # bge .L_80253674
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80253680
    .4byte 0x40800028 # bge .L_80253694
    .4byte 0x4800005C # b .L_802536CC
L_80253674:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_802536CC
    .4byte 0x48000040 # b .L_802536BC
L_80253680:
    lfs 1, 0x74(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x74(1)
    .4byte 0x4800003C # b .L_802536CC
L_80253694:
    lfs 1, 0x74(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x74(1)
    .4byte 0x48000028 # b .L_802536CC
L_802536A8:
    lfs 1, 0x78(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x78(1)
    .4byte 0x48000014 # b .L_802536CC
L_802536BC:
    lfs 1, 0x78(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x78(1)
L_802536CC:
    lfs 0, 0x7c(1)
    addi 3, 1, 0x68
    psq_l 1, 0x74(1), 0, 0
    stfs 0, 0x1c(1)
    psq_l 3, 0x8(31), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    psq_l 0, 0x10(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x14(1), 0, 0
    ps_sub 1, 2, 0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    psq_st 3, 0x14(1), 0, 0
    psq_st 1, 0x1c(1), 1, 0
    lfs 1, 0x1c(1)
    psq_st 3, 0x38(1), 0, 0
    stfs 1, 0x70(1)
    stfs 1, 0x40(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x70(1)
    bl PSVECMag
    li 0, 0x2
    lwz 4, 0xbf0(31)
    li 3, 0x0
    mtctr 0
L_8025372C:
    lbz 0, 0xb4(4)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025374C
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_80253764
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80253764
L_8025374C:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80253764
    li 0, 0x1
    .4byte 0x480000C4 # b .L_80253824
L_80253764:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80253788
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_802537A0
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_802537A0
L_80253788:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802537A0
    li 0, 0x1
    .4byte 0x48000088 # b .L_80253824
L_802537A0:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802537C4
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_802537DC
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_802537DC
L_802537C4:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802537DC
    li 0, 0x1
    .4byte 0x4800004C # b .L_80253824
L_802537DC:
    lbz 0, 0xb4(4)
    addi 3, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80253800
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_80253818
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80253818
L_80253800:
    addi 0, 3, 0x48
    lbzx 0, 4, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80253818
    li 0, 0x1
    .4byte 0x48000010 # b .L_80253824
L_80253818:
    addi 3, 3, 0x1
    .4byte 0x4200FF10 # bdnz .L_8025372C
    li 0, 0x0
L_80253824:
    clrlwi. 0, 0, 24
    .4byte 0x418200C8 # beq .L_802538F0
    psq_l 2, 0x68(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x70(1)
    ps_mul 2, 2, 2
    .4byte 0xC022D0A0 # lfs f1, lbl_80540040@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_802538B0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80253874
    fmr 31, 4
    .4byte 0x48000028 # b .L_80253898
L_80253874:
    frsqrte 3, 4
    .4byte 0xC042D0A4 # lfs f2, lbl_80540044@sda21(r0)
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80253898:
    psq_l 1, 0x68(1), 0, 0
    psq_l 0, 0x70(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x68(1), 0, 0
    psq_st 0, 0x70(1), 1, 0
L_802538B0:
    .4byte 0xC3C2D0EC # lfs f30, lbl_8054008C@sda21(r0)
    psq_l 1, 0x68(1), 0, 0
    psq_l 0, 0x70(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x68(1), 0, 0
    psq_st 0, 0x70(1), 1, 0
    lfs 0, 0x68(1)
    lfs 1, 0x8(31)
    fadds 0, 1, 0
    stfs 0, 0x8(31)
    lfs 1, 0xc(31)
    lfs 0, 0x6c(1)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000544 # b .L_80253E30
L_802538F0:
    .4byte 0xC042D0A8 # lfs f2, lbl_80540048@sda21(r0)
    fcmpo cr0, 1, 2
    cror eq, gt, eq
    .4byte 0x408200C4 # bne .L_802539C0
    psq_l 3, 0x68(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x70(1)
    ps_mul 3, 3, 3
    .4byte 0xC022D0A0 # lfs f1, lbl_80540040@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 3
    fmuls 0, 1, 0
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80253980
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80253948
    fmr 30, 4
    .4byte 0x48000024 # b .L_80253968
L_80253948:
    frsqrte 3, 4
    .4byte 0xC022D0A4 # lfs f1, lbl_80540044@sda21(r0)
    frsp 3, 3
    fmuls 0, 3, 3
    fmuls 1, 1, 3
    fnmsubs 0, 4, 0, 2
    fmuls 0, 1, 0
    fmr 30, 0
L_80253968:
    psq_l 1, 0x68(1), 0, 0
    psq_l 0, 0x70(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x68(1), 0, 0
    psq_st 0, 0x70(1), 1, 0
L_80253980:
    .4byte 0xC3E2D0A8 # lfs f31, lbl_80540048@sda21(r0)
    psq_l 1, 0x68(1), 0, 0
    psq_l 0, 0x70(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x68(1), 0, 0
    psq_st 0, 0x70(1), 1, 0
    lfs 0, 0x68(1)
    lfs 1, 0x8(31)
    fadds 0, 1, 0
    stfs 0, 0x8(31)
    lfs 1, 0xc(31)
    lfs 0, 0x6c(1)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000474 # b .L_80253E30
L_802539C0:
    lfs 1, 0x74(1)
    lfs 0, 0x78(1)
    stfs 1, 0x8(31)
    stfs 0, 0xc(31)
    .4byte 0x48000460 # b .L_80253E30
L_802539D4:
    li 27, 0x0
L_802539D8:
    lwz 4, 0x4(31)
    cmpw 27, 4
    .4byte 0x4182006C # beq .L_80253A4C
    mr 3, 27
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_80253A4C
    mr 3, 27
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80253A4C
    mr 3, 27
    bl fn_8023EF50
    mr 30, 3
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80253A4C
    lwz 0, 0x1a4(3)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_80253A4C
    lfs 0, 0x14(31)
    stfs 0, 0x8(31)
    lfs 0, 0x18(31)
    stfs 0, 0xc(31)
    lfs 0, 0x1c(31)
    stfs 0, 0x10(31)
    .4byte 0x480003E8 # b .L_80253E30
L_80253A4C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_802539D8
    li 30, 0x0
    mr 29, 30
L_80253A60:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_80253A74
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_80253AD4
L_80253A74:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80253AC4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80253AA8
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80253AD4
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_80253AD4
L_80253AA8:
    lwz 27, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80253AD4
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_80253AD4
L_80253AC4:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_80253AD4
    addi 30, 30, 0x1
L_80253AD4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_80253A60
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_80253AF0
    li 3, 0x5
    .4byte 0x4800001C # b .L_80253B08
L_80253AF0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80253B04
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80253B08
L_80253B04:
    lwz 3, 0x120c(31)
L_80253B08:
    cmpwi 3, 0x5
    .4byte 0x41820324 # beq .L_80253E30
    mr 3, 31
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x40820314 # bne .L_80253E30
    lwz 27, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408202F8 # bne .L_80253E30
    lwz 3, 0x4(31)
    bl fn_802341D0
    clrlwi. 0, 3, 24
    .4byte 0x418202E8 # beq .L_80253E30
    .4byte 0xC362D094 # lfs f27, lbl_80540034@sda21(r0)
    li 27, 0x0
    fmr 29, 27
L_80253B58:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820210 # beq .L_80253D74
    lwz 4, 0x4(31)
    mr 3, 27
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x418201FC # beq .L_80253D74
    mr 3, 27
    bl fn_8022D930
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80253BAC
    mr 3, 27
    bl fn_8022D894
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80253BAC
    mr 3, 27
    bl fn_8022D9CC
    clrlwi. 0, 3, 24
    .4byte 0x4182014C # beq .L_80253CF4
L_80253BAC:
    mr 3, 31
    mr 5, 27
    addi 4, 1, 0x5c
    bl fn_8027F854
    lfs 0, 0x64(1)
    addi 3, 1, 0x50
    psq_l 1, 0x5c(1), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x8(31), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x10(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 1, 2, 0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    psq_st 3, 0x8(1), 0, 0
    psq_st 1, 0x10(1), 1, 0
    lfs 1, 0x10(1)
    psq_st 3, 0x2c(1), 0, 0
    stfs 1, 0x58(1)
    stfs 1, 0x34(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x58(1)
    bl PSVECMag
    .4byte 0xC002D0E0 # lfs f0, lbl_80540080@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408200C8 # bne .L_80253CE0
    psq_l 2, 0x50(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 28, 0x58(1)
    ps_mul 2, 2, 2
    .4byte 0xC022D0A0 # lfs f1, lbl_80540040@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 28, 28, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80253CA0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80253C64
    fmr 31, 4
    .4byte 0x48000028 # b .L_80253C88
L_80253C64:
    frsqrte 3, 4
    .4byte 0xC042D0A4 # lfs f2, lbl_80540044@sda21(r0)
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80253C88:
    psq_l 1, 0x50(1), 0, 0
    psq_l 0, 0x58(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x50(1), 0, 0
    psq_st 0, 0x58(1), 1, 0
L_80253CA0:
    .4byte 0xC3C2D0E0 # lfs f30, lbl_80540080@sda21(r0)
    psq_l 1, 0x50(1), 0, 0
    psq_l 0, 0x58(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x50(1), 0, 0
    psq_st 0, 0x58(1), 1, 0
    lfs 0, 0x50(1)
    lfs 1, 0x8(31)
    fadds 0, 1, 0
    stfs 0, 0x8(31)
    lfs 1, 0xc(31)
    lfs 0, 0x54(1)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000154 # b .L_80253E30
L_80253CE0:
    lfs 0, 0x5c(1)
    stfs 0, 0x8(31)
    lfs 0, 0x60(1)
    stfs 0, 0xc(31)
    .4byte 0x48000140 # b .L_80253E30
L_80253CF4:
    mr 3, 27
    bl fn_8022DFD4
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    lfs 1, 0x0(3)
    fcmpu cr0, 0, 27
    lfs 2, 0x4(3)
    .4byte 0x4082000C # bne .L_80253D18
    fmr 27, 1
    .4byte 0x48000028 # b .L_80253D3C
L_80253D18:
    fcmpo cr0, 27, 0
    .4byte 0x40810014 # ble .L_80253D30
    fcmpo cr0, 1, 27
    .4byte 0x40810018 # ble .L_80253D3C
    fmr 27, 1
    .4byte 0x48000010 # b .L_80253D3C
L_80253D30:
    fcmpo cr0, 1, 27
    .4byte 0x40800008 # bge .L_80253D3C
    fmr 27, 1
L_80253D3C:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpu cr0, 0, 29
    .4byte 0x4082000C # bne .L_80253D50
    fmr 29, 2
    .4byte 0x48000028 # b .L_80253D74
L_80253D50:
    fcmpo cr0, 29, 0
    .4byte 0x40810014 # ble .L_80253D68
    fcmpo cr0, 2, 29
    .4byte 0x40810018 # ble .L_80253D74
    fmr 29, 2
    .4byte 0x48000010 # b .L_80253D74
L_80253D68:
    fcmpo cr0, 2, 29
    .4byte 0x40800008 # bge .L_80253D74
    fmr 29, 2
L_80253D74:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FDDC # blt .L_80253B58
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    fcmpo cr0, 27, 1
    .4byte 0x40810018 # ble .L_80253DA0
    lwz 3, 0xbf0(31)
    lfs 0, 0x14(3)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x41820024 # beq .L_80253DC0
L_80253DA0:
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    fcmpo cr0, 27, 1
    .4byte 0x40800030 # bge .L_80253DD8
    lwz 3, 0xbf0(31)
    lfs 0, 0x14(3)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_80253DD8
L_80253DC0:
    lwz 3, 0xbf0(31)
    lfs 1, 0x8(31)
    lfs 0, 0x14(3)
    fsubs 0, 27, 0
    fadds 0, 1, 0
    stfs 0, 0x8(31)
L_80253DD8:
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    fcmpo cr0, 29, 1
    .4byte 0x40810018 # ble .L_80253DF8
    lwz 3, 0xbf0(31)
    lfs 0, 0x18(3)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x41820024 # beq .L_80253E18
L_80253DF8:
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    fcmpo cr0, 29, 1
    .4byte 0x40800030 # bge .L_80253E30
    lwz 3, 0xbf0(31)
    lfs 0, 0x18(3)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_80253E30
L_80253E18:
    lwz 3, 0xbf0(31)
    lfs 1, 0xc(31)
    lfs 0, 0x18(3)
    fsubs 0, 29, 0
    fadds 0, 1, 0
    stfs 0, 0xc(31)
L_80253E30:
    psq_l 31, 0xf8(1), 0, 0
    lfd 31, 0xf0(1)
    psq_l 30, 0xe8(1), 0, 0
    lfd 30, 0xe0(1)
    psq_l 29, 0xd8(1), 0, 0
    lfd 29, 0xd0(1)
    psq_l 28, 0xc8(1), 0, 0
    lfd 28, 0xc0(1)
    psq_l 27, 0xb8(1), 0, 0
    lfd 27, 0xb0(1)
    lmw 27, 0x9c(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_80253E6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0xcac(3)
    cmplwi 0, 0x0
    .4byte 0x41820614 # beq .L_8025449C
    lwz 0, 0x1234(31)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_80253EC0
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309D90
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80253EC0
    li 0, 0x0
    stw 0, 0x1234(31)
L_80253EC0:
    lwz 3, 0x11f0(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80253ED4
    subi 0, 3, 0x1
    stw 0, 0x11f0(31)
L_80253ED4:
    lbz 0, 0x13b8(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80253EF0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
L_80253EF0:
    lwz 4, 0x12c4(31)
    cmplwi 4, 0x0
    .4byte 0x41820068 # beq .L_80253F60
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80253F24
    lbz 0, 0x121f(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80253F24
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80253F44
L_80253F24:
    lwz 0, 0xf4(4)
    ori 0, 0, 0x4
    stw 0, 0xf4(4)
    lwz 3, 0x12c4(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    .4byte 0x48000020 # b .L_80253F60
L_80253F44:
    lwz 0, 0xf4(4)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(4)
    lwz 3, 0x12c4(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
L_80253F60:
    lwz 4, 0x12c8(31)
    cmplwi 4, 0x0
    .4byte 0x41820068 # beq .L_80253FD0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_80253F94
    lbz 0, 0x121f(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80253F94
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80253FB4
L_80253F94:
    lwz 0, 0xf4(4)
    ori 0, 0, 0x4
    stw 0, 0xf4(4)
    lwz 3, 0x12c8(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x2
    stw 0, 0xf4(3)
    .4byte 0x48000020 # b .L_80253FD0
L_80253FB4:
    lwz 0, 0xf4(4)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(4)
    lwz 3, 0x12c8(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 31, 29
    stw 0, 0xf4(3)
L_80253FD0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_80253FEC
    lbz 0, 0x121f(31)
    cmplwi 0, 0x0
    .4byte 0x418200B8 # beq .L_802540A0
L_80253FEC:
    mr 3, 31
    bl fn_80270D08
    mr 3, 31
    bl fn_80286688
    mr 3, 31
    bl fn_80265E88
    li 0, 0x5
    mr 3, 31
    mtctr 0
L_80254010:
    li 0, -0x1
    stw 0, 0xdb0(3)
    stw 0, 0x1030(3)
    stw 0, 0xdb4(3)
    stw 0, 0x1034(3)
    stw 0, 0xdb8(3)
    stw 0, 0x1038(3)
    stw 0, 0xdbc(3)
    stw 0, 0x103c(3)
    stw 0, 0xdc0(3)
    stw 0, 0x1040(3)
    stw 0, 0xdc4(3)
    stw 0, 0x1044(3)
    stw 0, 0xdc8(3)
    stw 0, 0x1048(3)
    stw 0, 0xdcc(3)
    stw 0, 0x104c(3)
    stw 0, 0xdd0(3)
    stw 0, 0x1050(3)
    stw 0, 0xdd4(3)
    stw 0, 0x1054(3)
    stw 0, 0xdd8(3)
    stw 0, 0x1058(3)
    stw 0, 0xddc(3)
    stw 0, 0x105c(3)
    stw 0, 0xde0(3)
    stw 0, 0x1060(3)
    stw 0, 0xde4(3)
    stw 0, 0x1064(3)
    stw 0, 0xde8(3)
    stw 0, 0x1068(3)
    stw 0, 0xdec(3)
    stw 0, 0x106c(3)
    addi 3, 3, 0x40
    .4byte 0x4200FF78 # bdnz .L_80254010
    .4byte 0x48000400 # b .L_8025449C
L_802540A0:
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0xC002D0F4 # lfs f0, lbl_80540094@sda21(r0)
    stfs 1, 0x2f4(31)
    stfs 1, 0x2f8(31)
    stfs 0, 0x2fc(31)
    psq_l 2, 0x2f4(31), 0, 0
    psq_l 0, 0x8(31), 0, 0
    ps_add 0, 2, 0
    psq_st 0, 0x2f4(31), 0, 0
    psq_l 2, 0x2fc(31), 1, 0
    psq_l 0, 0x10(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x2fc(31), 1, 0
    lwz 0, 0xc08(31)
    stw 0, 0xc0c(31)
    lwz 3, 0xbf0(31)
    stfs 1, 0x14(3)
    stfs 1, 0x18(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80254100
    mr 3, 31
    bl fn_802490A8
L_80254100:
    mr 3, 31
    bl fn_8026FD14
    mr 3, 31
    bl fn_80251D50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x80(3)
    cmplwi 0, 0x0
    .4byte 0x4182033C # beq .L_80254458
    lwz 3, 0xd38(31)
    addi 0, 3, 0x1
    stw 0, 0xd38(31)
    lwz 3, 0x1208(31)
    addi 0, 3, 0x1
    stw 0, 0x1208(31)
    lwz 0, 0xd38(31)
    cmpwi 0, 0x10
    .4byte 0x40820090 # bne .L_802541D0
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x418
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x419
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x3b4(31)
    addi 4, 31, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x41a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x4e
    bl fn_8024F0E8
    .4byte 0x48000024 # b .L_802541F0
L_802541D0:
    cmpwi 0, 0x83
    .4byte 0x4082001C # bne .L_802541F0
    li 0, 0x1
    lis 4, 0x2
    stb 0, 0xc80(31)
    mr 3, 31
    addi 4, 4, 0x43
    bl fn_8024F0E8
L_802541F0:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 3, 0x4(31)
    lbz 4, 0x82(4)
    slw 0, 0, 3
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820254 # beq .L_80254460
    cmpwi 3, 0x2
    .4byte 0x41820134 # beq .L_80254348
    .4byte 0x40800014 # bge .L_8025422C
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80254238
    .4byte 0x4080009C # bge .L_802542C0
    .4byte 0x48000238 # b .L_80254460
L_8025422C:
    cmpwi 3, 0x4
    .4byte 0x40800230 # bge .L_80254460
    .4byte 0x4800019C # b .L_802543D0
L_80254238:
    lwz 0, 0xd38(31)
    cmpwi 0, 0xc0
    .4byte 0x4082006C # bne .L_802542AC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0x8
    lwz 4, 0x3b4(31)
    li 6, 0x1
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80254280
    lwz 3, 0x4(31)
    bl fn_8030381C
L_80254280:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_80254294
    lwz 3, 0x4(31)
    bl fn_8030381C
L_80254294:
    lwz 0, 0x4(31)
    li 4, 0x25
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
    .4byte 0x480001B8 # b .L_80254460
L_802542AC:
    cmpwi 0, 0xe0
    .4byte 0x408201B0 # bne .L_80254460
    li 4, 0x0
    bl fn_8043A170
    .4byte 0x480001A4 # b .L_80254460
L_802542C0:
    lwz 0, 0xd38(31)
    cmpwi 0, 0xe0
    .4byte 0x4082006C # bne .L_80254334
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0x8
    lwz 4, 0x3b4(31)
    li 6, 0x1
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80254308
    lwz 3, 0x4(31)
    bl fn_8030381C
L_80254308:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8025431C
    lwz 3, 0x4(31)
    bl fn_8030381C
L_8025431C:
    lwz 0, 0x4(31)
    li 4, 0x25
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
    .4byte 0x48000130 # b .L_80254460
L_80254334:
    cmpwi 0, 0x100
    .4byte 0x40820128 # bne .L_80254460
    li 4, 0x0
    bl fn_8043A170
    .4byte 0x4800011C # b .L_80254460
L_80254348:
    lwz 0, 0xd38(31)
    cmpwi 0, 0xf8
    .4byte 0x4082006C # bne .L_802543BC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0x8
    lwz 4, 0x3b4(31)
    li 6, 0x1
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80254390
    lwz 3, 0x4(31)
    bl fn_8030381C
L_80254390:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_802543A4
    lwz 3, 0x4(31)
    bl fn_8030381C
L_802543A4:
    lwz 0, 0x4(31)
    li 4, 0x25
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
    .4byte 0x480000A8 # b .L_80254460
L_802543BC:
    cmpwi 0, 0x118
    .4byte 0x408200A0 # bne .L_80254460
    li 4, 0x0
    bl fn_8043A170
    .4byte 0x48000094 # b .L_80254460
L_802543D0:
    lwz 0, 0xd38(31)
    cmpwi 0, 0x108
    .4byte 0x4082006C # bne .L_80254444
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0x8
    lwz 4, 0x3b4(31)
    li 6, 0x1
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80254418
    lwz 3, 0x4(31)
    bl fn_8030381C
L_80254418:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8025442C
    lwz 3, 0x4(31)
    bl fn_8030381C
L_8025442C:
    lwz 0, 0x4(31)
    li 4, 0x25
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
    .4byte 0x48000020 # b .L_80254460
L_80254444:
    cmpwi 0, 0x128
    .4byte 0x40820018 # bne .L_80254460
    li 4, 0x0
    bl fn_8043A170
    .4byte 0x4800000C # b .L_80254460
L_80254458:
    mr 3, 31
    bl fn_80285E58
L_80254460:
    mr 3, 31
    bl fn_8024BDBC
    mr 3, 31
    bl fn_80276538
    mr 3, 31
    bl fn_80276078
    lwz 3, 0xbec(31)
    bl fn_8030B774
    mr 3, 31
    bl fn_8024E0A0
    lwz 3, 0xd48(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8025449C
    subi 0, 3, 0x1
    stw 0, 0xd48(31)
L_8025449C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802544B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x48(3)
    stw 0, 0xc10(31)
    bl GetRoomConfigRecord
    lwz 4, 0x4c(3)
    li 3, 0x1
    li 0, 0x0
    stw 4, 0xc14(31)
    stw 3, 0xc18(31)
    stb 0, 0xb7a(31)
    stb 0, 0xb7b(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80254530
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80254518
    li 0, 0x10
    stw 0, 0xbf8(31)
    .4byte 0x48000030 # b .L_80254544
L_80254518:
    lwz 3, 0x4(31)
    bl fn_804033D4
    bl fn_8040305C
    slwi 0, 3, 2
    stw 0, 0xbf8(31)
    .4byte 0x48000018 # b .L_80254544
L_80254530:
    lwz 3, 0x4(31)
    bl fn_804033D4
    bl fn_8040305C
    slwi 0, 3, 2
    stw 0, 0xbf8(31)
L_80254544:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80254560
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 0, 0xb90(31)
    .4byte 0x4800000C # b .L_80254568
L_80254560:
    .4byte 0xC002D0F8 # lfs f0, lbl_80540098@sda21(r0)
    stfs 0, 0xb90(31)
L_80254568:
    li 0, 0x180
    stw 0, 0xc08(31)
    stw 0, 0xc0c(31)
    lwz 3, 0xbf8(31)
    subi 0, 3, 0x4
    stw 0, 0xbfc(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802545B4
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_802545A8
    li 0, 0x0
    stw 0, 0xc04(31)
    .4byte 0x48000018 # b .L_802545BC
L_802545A8:
    li 0, 0x0
    stw 0, 0xc04(31)
    .4byte 0x4800000C # b .L_802545BC
L_802545B4:
    li 0, 0x0
    stw 0, 0xc04(31)
L_802545BC:
    li 4, 0x0
    li 5, 0xc
    stw 4, 0xc1c(31)
    slwi 3, 5, 2
    subfic 0, 5, 0xd
    stw 4, 0xc20(31)
    add 3, 31, 3
    stw 4, 0xc24(31)
    stw 4, 0xc28(31)
    stw 4, 0xc2c(31)
    stw 4, 0xc30(31)
    stw 4, 0xc34(31)
    stw 4, 0xc38(31)
    stw 4, 0xc3c(31)
    stw 4, 0xc40(31)
    stw 4, 0xc44(31)
    stw 4, 0xc48(31)
    mtctr 0
    cmpwi 5, 0xd
    .4byte 0x40800010 # bge .L_80254618
L_8025460C:
    stw 4, 0xc1c(3)
    addi 3, 3, 0x4
    .4byte 0x4200FFF8 # bdnz .L_8025460C
L_80254618:
    li 0, 0x0
    stw 0, 0xc50(31)
    stw 0, 0xc54(31)
    stw 0, 0xc58(31)
    stw 0, 0xc5c(31)
    stw 0, 0xc60(31)
    stw 0, 0xc64(31)
    stw 0, 0xc68(31)
    stw 0, 0xc6c(31)
    stw 0, 0xc70(31)
    stw 0, 0xc74(31)
    stw 0, 0xc78(31)
    stw 0, 0xc7c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80254660:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x48(3)
    stw 0, 0xc10(31)
    bl GetRoomConfigRecord
    lwz 4, 0x4c(3)
    li 3, 0x1
    li 0, 0x0
    stw 4, 0xc14(31)
    stw 3, 0xc18(31)
    stb 0, 0xb7a(31)
    stb 0, 0xb7b(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_802546E0
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_802546C8
    li 0, 0x10
    stw 0, 0xbf8(31)
    .4byte 0x48000030 # b .L_802546F4
L_802546C8:
    lwz 3, 0x4(31)
    bl fn_804033D4
    bl fn_8040305C
    slwi 0, 3, 2
    stw 0, 0xbf8(31)
    .4byte 0x48000018 # b .L_802546F4
L_802546E0:
    lwz 3, 0x4(31)
    bl fn_804033D4
    bl fn_8040305C
    slwi 0, 3, 2
    stw 0, 0xbf8(31)
L_802546F4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80254710
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 0, 0xb90(31)
    .4byte 0x4800000C # b .L_80254718
L_80254710:
    .4byte 0xC002D0F8 # lfs f0, lbl_80540098@sda21(r0)
    stfs 0, 0xb90(31)
L_80254718:
    li 0, 0x180
    stw 0, 0xc08(31)
    stw 0, 0xc0c(31)
    lwz 3, 0xbf8(31)
    subi 0, 3, 0x4
    stw 0, 0xbfc(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80254744:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    lwz 0, 0xd00(3)
    cmpwi 0, 0x2
    .4byte 0x41800090 # blt .L_802547FC
    bl GetRoomConfigRecord
    lwz 29, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    lwz 6, 0x8(3)
    .4byte 0x4180000C # blt .L_80254790
    cmpwi 29, 0x7
    .4byte 0x4081000C # ble .L_80254798
L_80254790:
    li 0, 0x0
    .4byte 0x48000054 # b .L_802547E8
L_80254798:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_802547A8
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_802547B0
L_802547A8:
    li 0, 0x0
    .4byte 0x4800003C # b .L_802547E8
L_802547B0:
    lis 3, lbl_8050EC80@ha
    slwi 4, 29, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802547E8:
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802547FC
    li 0, 0x0
    stw 0, 0xd00(31)
    stb 0, 0xcfe(31)
L_802547FC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 5, 0x7f(3)
    cmplwi 5, 0x0
    .4byte 0x40820044 # bne .L_8025484C
    lwz 0, 0x4(31)
    li 4, 0x1
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820028 # bne .L_8025484C
    li 3, 0x0
    li 0, -0x1
    stb 3, 0xcac(31)
    stw 0, 0xd60(31)
    stw 0, 0x11ec(31)
    stw 4, 0x1244(31)
    stw 4, 0x1240(31)
    stw 4, 0x1248(31)
    .4byte 0x48000204 # b .L_80254A4C
L_8025484C:
    cmplwi 5, 0x0
    .4byte 0x41820054 # beq .L_802548A4
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_802548A4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820028 # bne .L_802548A4
    li 3, 0x0
    li 0, -0x1
    stb 3, 0xcac(31)
    stw 0, 0xd60(31)
    stw 0, 0x11ec(31)
    stw 4, 0x1244(31)
    stw 4, 0x1240(31)
    stw 4, 0x1248(31)
    .4byte 0x480001AC # b .L_80254A4C
L_802548A4:
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_802548C0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_80254900
L_802548C0:
    li 0, 0x1
    li 3, 0x0
    stb 0, 0xcac(31)
    stw 3, 0x11ec(31)
    lwz 0, 0x4(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802548E8
    li 0, -0x1
    stw 0, 0xd60(31)
    .4byte 0x48000008 # b .L_802548EC
L_802548E8:
    stw 3, 0xd60(31)
L_802548EC:
    li 0, 0x0
    stw 0, 0x1244(31)
    stw 0, 0x1240(31)
    stw 0, 0x1248(31)
    .4byte 0x48000150 # b .L_80254A4C
L_80254900:
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x40820060 # bne .L_80254968
    li 0, 0x1
    stb 0, 0xcac(31)
    lwz 4, 0x4(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 0, 4
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820018 # beq .L_80254944
    li 0, -0x1
    stw 0, 0xd60(31)
    lwz 0, 0x4(31)
    stw 0, 0x11ec(31)
    .4byte 0x48000014 # b .L_80254954
L_80254944:
    subi 0, 4, 0x2
    stw 0, 0xd60(31)
    lwz 0, 0xd60(31)
    stw 0, 0x11ec(31)
L_80254954:
    li 0, 0x0
    stw 0, 0x1244(31)
    stw 0, 0x1240(31)
    stw 0, 0x1248(31)
    .4byte 0x480000E8 # b .L_80254A4C
L_80254968:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x3
    .4byte 0x40820084 # bne .L_802549F8
    li 4, 0x1
    stb 4, 0xcac(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820018 # beq .L_802549B0
    li 0, -0x1
    stw 0, 0xd60(31)
    lwz 0, 0x4(31)
    stw 0, 0x11ec(31)
    .4byte 0x48000038 # b .L_802549E4
L_802549B0:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x64(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_802549CC
    cmpwi 0, 0x3
    .4byte 0x41800010 # blt .L_802549D8
L_802549CC:
    li 0, 0x0
    stw 0, 0xd60(31)
    .4byte 0x48000008 # b .L_802549DC
L_802549D8:
    stw 0, 0xd60(31)
L_802549DC:
    lwz 0, 0xd60(31)
    stw 0, 0x11ec(31)
L_802549E4:
    li 0, 0x0
    stw 0, 0x1244(31)
    stw 0, 0x1240(31)
    stw 0, 0x1248(31)
    .4byte 0x48000058 # b .L_80254A4C
L_802549F8:
    li 5, 0x1
    li 4, -0x1
    stb 5, 0xcac(31)
    stw 4, 0xd60(31)
    lwz 6, 0x4(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 5, 6
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_80254A3C
    stw 6, 0x11ec(31)
    li 0, 0x0
    stw 0, 0x1244(31)
    stw 0, 0x1240(31)
    stw 0, 0x1248(31)
    .4byte 0x48000014 # b .L_80254A4C
L_80254A3C:
    stw 4, 0x11ec(31)
    stw 5, 0x1244(31)
    stw 5, 0x1240(31)
    stw 5, 0x1248(31)
L_80254A4C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800124 # blt .L_80254B78
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x0
    .4byte 0x40820118 # bne .L_80254B78
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x2c4(31), 0, 0
    stfs 0, 0x2cc(31)
    lbz 0, 0xd04(31)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_80254B00
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80254A98
    li 0, 0x0
    .4byte 0x4800003C # b .L_80254AD0
L_80254A98:
    li 29, 0x0
    mr 30, 29
    .4byte 0x48000020 # b .L_80254AC0
L_80254AA4:
    lwz 28, 0xd60(31)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820008 # bne .L_80254ABC
    addi 29, 29, 0x1
L_80254ABC:
    addi 30, 30, 0x1
L_80254AC0:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4180FFDC # blt .L_80254AA4
    addi 0, 29, 0x1
L_80254AD0:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x4c(1)
    .4byte 0xC842D0C0 # lfd f2, lbl_80540060@sda21(r0)
    stw 0, 0x48(1)
    .4byte 0xC062D0D0 # lfs f3, lbl_80540070@sda21(r0)
    lfd 1, 0x48(1)
    lfs 0, 0x2c8(31)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0x2c8(31)
    .4byte 0x4800007C # b .L_80254B78
L_80254B00:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80254B14
    li 0, 0x0
    .4byte 0x4800003C # b .L_80254B4C
L_80254B14:
    li 30, 0x0
    mr 29, 30
    .4byte 0x48000020 # b .L_80254B3C
L_80254B20:
    lwz 28, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820008 # bne .L_80254B38
    addi 30, 30, 0x1
L_80254B38:
    addi 29, 29, 0x1
L_80254B3C:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80254B20
    addi 0, 30, 0x1
L_80254B4C:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x4c(1)
    .4byte 0xC842D0C0 # lfd f2, lbl_80540060@sda21(r0)
    stw 0, 0x48(1)
    .4byte 0xC062D0D0 # lfs f3, lbl_80540070@sda21(r0)
    lfd 1, 0x48(1)
    lfs 0, 0x2c4(31)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0x2c4(31)
L_80254B78:
    li 0, 0x1
    addi 4, 31, 0xcbc
    stb 0, 0x11ea(31)
    addi 5, 31, 0xcb0
    addi 6, 31, 0xcd4
    addi 7, 31, 0xcc8
    psq_l 1, 0x2c4(31), 0, 0
    addi 3, 31, 0xd1c
    lfs 0, 0x2cc(31)
    psq_st 1, 0x8(31), 0, 0
    stfs 0, 0x10(31)
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(31)
    psq_st 1, 0x2f4(31), 0, 0
    stfs 0, 0x2fc(31)
    psq_l 1, 0x2f4(31), 0, 0
    lfs 0, 0x2fc(31)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0xcc4(31)
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0xcc4(31)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0xcb8(31)
    psq_l 1, 0x0(5), 0, 0
    lfs 0, 0xcb8(31)
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0xcdc(31)
    psq_l 1, 0x0(6), 0, 0
    lfs 0, 0xcdc(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0xcd0(31)
    psq_l 1, 0x0(7), 0, 0
    lfs 0, 0xcd0(31)
    psq_st 1, 0x32c(31), 0, 0
    stfs 0, 0x334(31)
    psq_l 1, 0x32c(31), 0, 0
    lfs 0, 0x334(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0xd24(31)
    lwz 0, 0xd00(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_80254C2C
    .4byte 0xC002D090 # lfs f0, lbl_80540030@sda21(r0)
    stfs 0, 0x10(31)
    stfs 0, 0x334(31)
L_80254C2C:
    psq_l 1, 0x8(31), 0, 0
    li 0, 0x0
    lfs 0, 0x10(31)
    psq_st 1, 0x318(31), 0, 0
    stfs 0, 0x320(31)
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(31)
    psq_st 1, 0x14(31), 0, 0
    stfs 0, 0x1c(31)
    psq_l 1, 0x14(31), 0, 0
    lfs 0, 0x1c(31)
    psq_st 1, 0x20(31), 0, 0
    stfs 0, 0x28(31)
    psq_l 1, 0x20(31), 0, 0
    lfs 0, 0x28(31)
    psq_st 1, 0x2c(31), 0, 0
    stfs 0, 0x34(31)
    stb 0, 0x3c0(31)
    stb 0, 0x3c1(31)
    stb 0, 0x3c2(31)
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_80254C98
    li 0, 0x4
    stw 0, 0x120c(31)
    stw 0, 0x1210(31)
    .4byte 0x48000010 # b .L_80254CA4
L_80254C98:
    li 0, 0x5
    stw 0, 0x120c(31)
    stw 0, 0x1210(31)
L_80254CA4:
    li 3, 0x0
    addi 4, 31, 0x1258
    stb 3, 0x121c(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stb 3, 0x121d(31)
    stb 3, 0x121f(31)
    stw 3, 0x1220(31)
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(31)
    psq_st 2, 0x0(4), 0, 0
    stfs 1, 0x1260(31)
    stb 3, 0x434(31)
    stb 3, 0x435(31)
    stfs 0, 0x2d8(31)
    stfs 0, 0x2d4(31)
    stfs 0, 0x2d0(31)
    stfs 0, 0x2e4(31)
    stfs 0, 0x2e0(31)
    stfs 0, 0x2dc(31)
    stfs 0, 0x2f0(31)
    stfs 0, 0x2ec(31)
    stfs 0, 0x2e8(31)
    stw 3, 0x3b4(31)
    stw 3, 0x3b8(31)
    stw 3, 0xce4(31)
    stw 3, 0xce0(31)
    lwz 0, 0x3b4(31)
    stw 0, 0x3bc(31)
    lwz 0, 0x3b4(31)
    stw 0, 0xd28(31)
    stb 3, 0x455(31)
    lwz 0, 0x3e0(31)
    stw 0, 0x3ec(31)
    stw 0, 0x3e8(31)
    stw 0, 0x3dc(31)
    stw 0, 0x3e4(31)
    stw 0, 0x3f0(31)
    stb 3, 0x124d(31)
    stb 3, 0x124c(31)
    stb 3, 0x458(31)
    stb 3, 0x459(31)
    stw 3, 0x3f4(31)
    stb 3, 0x3f9(31)
    stb 3, 0x3f8(31)
    stb 3, 0x3fb(31)
    stb 3, 0x3fa(31)
    stb 3, 0x3fd(31)
    stb 3, 0x3fc(31)
    stb 3, 0x3fe(31)
    stw 3, 0x3b0(31)
    lbz 0, 0x3f8(31)
    stb 0, 0x437(31)
    lbz 0, 0x3f9(31)
    stb 0, 0x438(31)
    lbz 0, 0x3fa(31)
    stb 0, 0x439(31)
    lbz 0, 0x3fb(31)
    stb 0, 0x43a(31)
    lbz 0, 0x3fc(31)
    stb 0, 0x43b(31)
    lbz 0, 0x3fd(31)
    stb 0, 0x43c(31)
    stb 3, 0x3ff(31)
    stb 3, 0x400(31)
    stb 3, 0x401(31)
    stb 3, 0x402(31)
    stb 3, 0x403(31)
    stb 3, 0x404(31)
    stw 3, 0x40c(31)
    stw 3, 0x408(31)
    stfs 0, 0x410(31)
    lwz 0, 0x1240(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80254DD8
    li 0, 0x31d
    sth 0, 0x3c4(31)
    .4byte 0x48000064 # b .L_80254E38
L_80254DD8:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x3
    .4byte 0x41820050 # beq .L_80254E30
    .4byte 0x4080001C # bge .L_80254E00
    cmpwi 0, 0x1
    .4byte 0x41820038 # beq .L_80254E24
    .4byte 0x40800034 # bge .L_80254E24
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80254E0C
    .4byte 0x48000028 # b .L_80254E24
L_80254E00:
    cmpwi 0, 0x1c1
    .4byte 0x41820014 # beq .L_80254E18
    .4byte 0x4800001C # b .L_80254E24
L_80254E0C:
    li 0, 0x3c
    sth 0, 0x3c4(31)
    .4byte 0x48000024 # b .L_80254E38
L_80254E18:
    li 0, 0x3d
    sth 0, 0x3c4(31)
    .4byte 0x48000018 # b .L_80254E38
L_80254E24:
    li 0, 0x3e
    sth 0, 0x3c4(31)
    .4byte 0x4800000C # b .L_80254E38
L_80254E30:
    li 0, 0x3f
    sth 0, 0x3c4(31)
L_80254E38:
    lhz 5, 0x3c4(31)
    li 4, 0x0
    li 0, -0x80
    mr 3, 31
    sth 5, 0x3c6(31)
    stb 4, 0x458(31)
    stw 4, 0x45c(31)
    stb 4, 0x43d(31)
    stb 4, 0x3d8(31)
    stb 4, 0x3d9(31)
    stb 0, 0xca3(31)
    stb 0, 0xca4(31)
    bl fn_80276538
    mr 3, 31
    bl fn_80276078
    li 4, 0x0
    lis 3, 0x4e55
    stw 4, 0xbf4(31)
    addi 0, 3, 0x4c4c
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stw 4, 0x464(31)
    stw 4, 0x468(31)
    stw 4, 0x46c(31)
    stw 4, 0x470(31)
    stfs 0, 0x474(31)
    stfs 0, 0x478(31)
    stfs 0, 0x47c(31)
    stb 4, 0x484(31)
    stw 4, 0x480(31)
    stw 4, 0x488(31)
    stw 4, 0x48c(31)
    stb 4, 0x490(31)
    stb 4, 0x491(31)
    stb 4, 0x457(31)
    stb 4, 0xcad(31)
    stb 4, 0xcae(31)
    stb 4, 0xcaf(31)
    stb 4, 0xd64(31)
    stw 0, 0xd6c(31)
    lwz 3, 0xbf0(31)
    bl fn_8026F710
    li 5, 0x0
    li 4, 0x1
    stb 5, 0xce8(31)
    li 0, 0x29
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stb 4, 0xce9(31)
    stw 0, 0xcf4(31)
    stw 0, 0xcf8(31)
    stb 5, 0xcea(31)
    stb 5, 0xceb(31)
    stb 5, 0xcec(31)
    stb 5, 0xcf2(31)
    stb 5, 0xced(31)
    stb 5, 0xcf1(31)
    stb 5, 0xcf0(31)
    stfs 0, 0x344(31)
    stfs 0, 0x348(31)
    stfs 0, 0x34c(31)
    stfs 0, 0x350(31)
    stfs 0, 0x354(31)
    stfs 0, 0x358(31)
    stfs 0, 0x35c(31)
    stfs 0, 0x360(31)
    stfs 0, 0x364(31)
    stfs 0, 0xd78(31)
    stfs 0, 0xd7c(31)
    stfs 0, 0xd80(31)
    stfs 0, 0x414(31)
    stfs 0, 0x418(31)
    stfs 0, 0x41c(31)
    stfs 0, 0x420(31)
    stfs 0, 0x424(31)
    stfs 0, 0x428(31)
    stfs 0, 0x368(31)
    stfs 0, 0x36c(31)
    stfs 0, 0x370(31)
    stfs 0, 0x38c(31)
    stfs 0, 0x390(31)
    stfs 0, 0x374(31)
    stfs 0, 0x378(31)
    stfs 0, 0x37c(31)
    stfs 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2c0(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80254FA4
    stb 4, 0xc80(31)
    .4byte 0x48000008 # b .L_80254FA8
L_80254FA4:
    stb 5, 0xc80(31)
L_80254FA8:
    .4byte 0xC002D090 # lfs f0, lbl_80540030@sda21(r0)
    li 0, 0x0
    mr 3, 31
    li 4, 0x0
    stfs 0, 0xc84(31)
    stfs 0, 0xc88(31)
    stfs 0, 0xc8c(31)
    stfs 0, 0xc90(31)
    stfs 0, 0xc94(31)
    stfs 0, 0xc98(31)
    stw 0, 0xc9c(31)
    bl fn_8027221C
    li 4, 0x0
    li 3, -0x1
    stb 4, 0xcfc(31)
    li 0, 0xa
    mr 5, 31
    stb 4, 0xcfd(31)
    stw 3, 0xd08(31)
    stw 4, 0xd0c(31)
    stb 4, 0xd2c(31)
    stb 4, 0xd2d(31)
    stw 4, 0xd30(31)
    stw 4, 0x494(31)
    stb 4, 0x498(31)
    stb 4, 0x499(31)
    stw 3, 0x49c(31)
    stb 4, 0xd34(31)
    stb 4, 0xc00(31)
    stb 4, 0xd35(31)
    stw 3, 0xd70(31)
    stw 3, 0xd68(31)
    stw 3, 0xd88(31)
    stw 3, 0xd8c(31)
    stw 3, 0xd94(31)
    stw 3, 0xda0(31)
    stw 4, 0xd98(31)
    stw 3, 0xd9c(31)
    stw 3, 0xda4(31)
    stw 4, 0xda8(31)
    stw 3, 0xdac(31)
    mtctr 0
L_80255050:
    li 6, -0x1
    stw 6, 0xdb0(5)
    stw 6, 0xef0(5)
    stw 6, 0x1030(5)
    stw 6, 0xdb4(5)
    stw 6, 0xef4(5)
    stw 6, 0x1034(5)
    stw 6, 0xdb8(5)
    stw 6, 0xef8(5)
    stw 6, 0x1038(5)
    stw 6, 0xdbc(5)
    stw 6, 0xefc(5)
    stw 6, 0x103c(5)
    stw 6, 0xdc0(5)
    stw 6, 0xf00(5)
    stw 6, 0x1040(5)
    stw 6, 0xdc4(5)
    stw 6, 0xf04(5)
    stw 6, 0x1044(5)
    stw 6, 0xdc8(5)
    stw 6, 0xf08(5)
    stw 6, 0x1048(5)
    stw 6, 0xdcc(5)
    stw 6, 0xf0c(5)
    stw 6, 0x104c(5)
    addi 5, 5, 0x20
    .4byte 0x4200FF98 # bdnz .L_80255050
    li 5, 0x0
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    stw 5, 0x1170(31)
    stw 6, 0xb00(31)
    stw 6, 0xb40(31)
    stw 6, 0xb04(31)
    stw 6, 0xb44(31)
    stw 6, 0xb08(31)
    stw 6, 0xb48(31)
    stw 6, 0xb7c(31)
    stw 5, 0xb74(31)
    stw 6, 0xb0c(31)
    stw 6, 0xb4c(31)
    stw 6, 0xb10(31)
    stw 6, 0xb50(31)
    stw 6, 0xb14(31)
    stw 6, 0xb54(31)
    stw 6, 0xb80(31)
    stw 6, 0xb30(31)
    stw 6, 0xb34(31)
    stw 6, 0xb18(31)
    stw 6, 0xb1c(31)
    stw 6, 0xb5c(31)
    stw 6, 0xb20(31)
    stw 6, 0xb60(31)
    stw 6, 0xb24(31)
    stw 6, 0xb64(31)
    stb 5, 0xb78(31)
    stw 6, 0xb28(31)
    stw 6, 0xb2c(31)
    stb 5, 0xbb8(31)
    stw 6, 0xb38(31)
    stw 6, 0xb6c(31)
    stb 5, 0xb68(31)
    stw 6, 0xb3c(31)
    stw 6, 0xb70(31)
    stw 6, 0xb58(31)
    stb 5, 0xb99(31)
    stb 5, 0xb9e(31)
    stb 5, 0xb9f(31)
    stw 5, 0xba0(31)
    stb 5, 0xba4(31)
    stb 5, 0xb9a(31)
    stb 5, 0xb9b(31)
    stb 5, 0xb9c(31)
    stw 6, 0xbb4(31)
    stb 5, 0xbb9(31)
    stb 5, 0xbba(31)
    stfs 0, 0xbbc(31)
    stb 5, 0xbd4(31)
    stw 5, 0xbc0(31)
    stw 5, 0xbac(31)
    stb 5, 0xb79(31)
    stb 5, 0x1204(31)
    li 4, 0xff
    li 0, 0x1
    mr 3, 31
    stb 4, 0xca0(31)
    stb 4, 0xca1(31)
    stb 4, 0xca2(31)
    stw 5, 0xca8(31)
    stw 5, 0x1264(31)
    stw 5, 0x11dc(31)
    stw 5, 0x1274(31)
    stw 5, 0x128c(31)
    stw 5, 0x12b0(31)
    stw 5, 0x12b4(31)
    stw 5, 0x12b8(31)
    stw 5, 0x12bc(31)
    stw 6, 0x12c0(31)
    stw 5, 0x12c4(31)
    stw 5, 0x12c8(31)
    stw 5, 0x12cc(31)
    stw 5, 0x12e4(31)
    stw 5, 0x1308(31)
    stw 5, 0x132c(31)
    stw 5, 0x1350(31)
    stw 5, 0x1354(31)
    stw 5, 0x1358(31)
    stw 5, 0x136c(31)
    stw 5, 0x1370(31)
    stw 5, 0x135c(31)
    stw 5, 0x1374(31)
    stw 5, 0x1378(31)
    stw 5, 0x1368(31)
    stw 5, 0x1360(31)
    stw 5, 0x1364(31)
    stw 5, 0x137c(31)
    stw 5, 0x1380(31)
    stw 5, 0x1384(31)
    stw 5, 0x1388(31)
    stw 5, 0x138c(31)
    stw 5, 0x1390(31)
    stw 5, 0x1394(31)
    lwz 4, 0x4(31)
    stw 4, 0x139c(31)
    stw 5, 0x13a0(31)
    lwz 4, 0x4(31)
    stw 4, 0x13ac(31)
    stw 0, 0x13b0(31)
    stw 5, 0xd74(31)
    stb 5, 0x11e0(31)
    stw 5, 0x11b0(31)
    bl fn_8027023C
    li 6, 0x0
    li 5, -0x1
    stb 6, 0x11e9(31)
    addi 7, 31, 0x11b4
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    li 4, 0x195
    stb 6, 0x1174(31)
    li 3, 0x18f
    li 0, 0x3
    stb 6, 0x454(31)
    stb 6, 0x456(31)
    sth 6, 0x452(31)
    stw 6, 0xd38(31)
    stw 5, 0xd3c(31)
    stw 5, 0xd44(31)
    stb 6, 0xd4c(31)
    stb 6, 0xd4d(31)
    stb 6, 0xd4e(31)
    stw 6, 0xd50(31)
    stw 6, 0x11f4(31)
    stw 6, 0xd54(31)
    stw 6, 0xd58(31)
    stw 5, 0x11f8(31)
    stw 5, 0x1230(31)
    stw 6, 0x1234(31)
    stb 6, 0xafc(31)
    stb 6, 0xb9d(31)
    stb 6, 0xd5c(31)
    stw 5, 0x11fc(31)
    stb 6, 0x460(31)
    stb 6, 0xb84(31)
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(31)
    psq_st 2, 0x0(7), 0, 0
    stfs 1, 0x11bc(31)
    sth 6, 0x11c0(31)
    stb 6, 0xcee(31)
    stb 6, 0xcef(31)
    stb 6, 0x42c(31)
    stw 6, 0xbe0(31)
    stw 6, 0x430(31)
    stb 6, 0x42d(31)
    stb 6, 0x43e(31)
    stb 6, 0x43f(31)
    stb 6, 0x440(31)
    stb 6, 0x441(31)
    stfs 0, 0x444(31)
    stw 6, 0xbd8(31)
    stb 6, 0xbdc(31)
    stw 6, 0xbe4(31)
    stb 6, 0xbe8(31)
    stb 6, 0x1214(31)
    stb 6, 0x1216(31)
    stb 6, 0x1215(31)
    stb 6, 0x1217(31)
    stw 6, 0x1218(31)
    stw 6, 0x1224(31)
    stw 6, 0x123c(31)
    stw 6, 0x1228(31)
    stw 6, 0x122c(31)
    stw 6, 0x1238(31)
    stw 6, 0x11ac(31)
    stb 6, 0x492(31)
    stb 6, 0x1200(31)
    stb 6, 0x1201(31)
    stb 6, 0x1202(31)
    stw 6, 0x11c4(31)
    stw 6, 0x11c8(31)
    stw 6, 0x11d4(31)
    stb 6, 0x11d8(31)
    stw 6, 0x11cc(31)
    sth 4, 0x3c8(31)
    sth 3, 0x3ca(31)
    stw 6, 0x3cc(31)
    stw 6, 0x3d0(31)
    stw 6, 0x3d4(31)
    stb 6, 0xd90(31)
    stw 6, 0x394(31)
    stw 6, 0x1208(31)
    stw 6, 0xd48(31)
    stw 6, 0xba8(31)
    stb 6, 0x436(31)
    stb 6, 0x1203(31)
    stw 6, 0xb94(31)
    stw 0, 0x448(31)
    stw 6, 0x44c(31)
    stb 6, 0x13b8(31)
    stw 6, 0xd84(31)
    stw 6, 0x11f0(31)
    stb 6, 0x11e8(31)
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_8025546C
    li 3, 0x1
    stb 3, 0x121e(31)
    stb 3, 0x1214(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x41800078 # blt .L_8025545C
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
    .4byte 0x41820040 # beq .L_8025545C
    li 3, 0x3
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8025545C
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8025545C
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8025545C
    li 0, 0x0
    stb 0, 0xcfe(31)
L_8025545C:
    li 0, 0x0
    stw 0, 0x1224(31)
    stb 0, 0x1217(31)
    .4byte 0x4800000C # b .L_80255474
L_8025546C:
    li 0, 0x0
    stb 0, 0x121e(31)
L_80255474:
    lbz 0, 0x1216(31)
    cmplwi 0, 0x0
    .4byte 0x4082007C # bne .L_802554F8
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80255498
    mr 3, 31
    bl fn_8024B2E0
    .4byte 0x48000064 # b .L_802554F8
L_80255498:
    li 5, 0x0
    li 0, 0x31
    mr 6, 31
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    mr 3, 5
    li 4, 0x1
    mtctr 0
L_802554B4:
    lfs 1, 0x8(31)
    stfs 1, 0x38(6)
    lfs 1, 0xc(31)
    stfs 1, 0x3c(6)
    lfs 1, 0x10(31)
    stfs 1, 0x40(6)
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802554E4
    addi 0, 5, 0x284
    stbx 4, 31, 0
    .4byte 0x4800000C # b .L_802554EC
L_802554E4:
    addi 0, 5, 0x284
    stbx 3, 31, 0
L_802554EC:
    addi 6, 6, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FFC0 # bdnz .L_802554B4
L_802554F8:
    li 0, 0x31
    mr 4, 31
    li 5, 0x0
    mtctr 0
L_80255508:
    lbz 0, 0xd04(31)
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(31)
    cmplwi 0, 0x0
    psq_st 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    .4byte 0x41820050 # beq .L_80255570
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    stw 3, 0x4c(1)
    .4byte 0xC822D0C0 # lfd f1, lbl_80540060@sda21(r0)
    stw 0, 0x48(1)
    .4byte 0xC082D0D0 # lfs f4, lbl_80540070@sda21(r0)
    lfd 0, 0x48(1)
    .4byte 0xC042D0B8 # lfs f2, lbl_80540058@sda21(r0)
    fsubs 3, 0, 1
    lfs 5, 0xc(31)
    lfs 1, 0x8(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fmuls 3, 4, 3
    stfs 1, 0x38(4)
    fdivs 1, 3, 2
    fadds 1, 5, 1
    stfs 1, 0x3c(4)
    stfs 0, 0x40(4)
    .4byte 0x4800004C # b .L_802555B8
L_80255570:
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    stw 3, 0x4c(1)
    .4byte 0xC842D0C0 # lfd f2, lbl_80540060@sda21(r0)
    stw 0, 0x48(1)
    .4byte 0xC062D0D0 # lfs f3, lbl_80540070@sda21(r0)
    lfd 0, 0x48(1)
    .4byte 0xC022D0B8 # lfs f1, lbl_80540058@sda21(r0)
    fsubs 2, 0, 2
    lfs 4, 0x8(31)
    lfs 5, 0xc(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fmuls 2, 3, 2
    fdivs 1, 2, 1
    fadds 1, 4, 1
    stfs 1, 0x38(4)
    stfs 5, 0x3c(4)
    stfs 0, 0x40(4)
L_802555B8:
    addi 0, 5, 0x284
    li 3, 0x0
    stbx 3, 31, 0
    addi 4, 4, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FF3C # bdnz .L_80255508
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820100 # beq .L_802556DC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802555F4
    bl fn_802375B0
    .4byte 0x48000008 # b .L_802555F8
L_802555F4:
    lwz 3, 0xc08(31)
L_802555F8:
    cmpwi 3, 0x0
    .4byte 0x418100E0 # bgt .L_802556DC
    lwz 0, 0x1240(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80255624
    lhz 0, 0x3c4(31)
    cmplwi 0, 0x1bf
    .4byte 0x41800010 # blt .L_80255628
    cmplwi 0, 0x1c6
    .4byte 0x40800008 # bge .L_80255628
L_80255624:
    li 3, 0x1
L_80255628:
    clrlwi. 0, 3, 24
    .4byte 0x408200B0 # bne .L_802556DC
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_80255660
    .4byte 0xC022D0D0 # lfs f1, lbl_80540070@sda21(r0)
    lfs 0, 0x8(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    lfs 1, 0xc(31)
    stfs 0, 0x338(31)
    stfs 1, 0x33c(31)
    stfs 2, 0x340(31)
    .4byte 0x48000098 # b .L_802556F4
L_80255660:
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_8025568C
    lfs 1, 0x8(31)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    lfs 1, 0xc(31)
    stfs 0, 0x338(31)
    stfs 1, 0x33c(31)
    stfs 2, 0x340(31)
    .4byte 0x4800006C # b .L_802556F4
L_8025568C:
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_802556B8
    .4byte 0xC042D0D0 # lfs f2, lbl_80540070@sda21(r0)
    lfs 1, 0xc(31)
    lfs 3, 0x10(31)
    lfs 0, 0x8(31)
    fadds 1, 2, 1
    stfs 0, 0x338(31)
    stfs 1, 0x33c(31)
    stfs 3, 0x340(31)
    .4byte 0x48000040 # b .L_802556F4
L_802556B8:
    lfs 2, 0xc(31)
    .4byte 0xC022D0D0 # lfs f1, lbl_80540070@sda21(r0)
    lfs 3, 0x10(31)
    lfs 0, 0x8(31)
    fsubs 1, 2, 1
    stfs 0, 0x338(31)
    stfs 1, 0x33c(31)
    stfs 3, 0x340(31)
    .4byte 0x4800001C # b .L_802556F4
L_802556DC:
    lfs 0, 0x8(31)
    stfs 0, 0x338(31)
    lfs 0, 0xc(31)
    stfs 0, 0x33c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x340(31)
L_802556F4:
    lwz 3, 0xbec(31)
    lwz 4, 0x4(31)
    bl fn_8030BD3C
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820118 # bne .L_80255820
    bl GetRoomConfigRecord
    lwz 28, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 28, 0x0
    lwz 6, 0x8(3)
    .4byte 0x4180000C # blt .L_8025572C
    cmpwi 28, 0x7
    .4byte 0x4081000C # ble .L_80255734
L_8025572C:
    li 0, 0x0
    .4byte 0x48000054 # b .L_80255784
L_80255734:
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_80255744
    cmpwi 6, 0x3
    .4byte 0x4081000C # ble .L_8025574C
L_80255744:
    li 0, 0x0
    .4byte 0x4800003C # b .L_80255784
L_8025574C:
    lis 3, lbl_8050EC80@ha
    slwi 4, 28, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 6, 4
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80255784:
    cmpwi 0, 0x0
    .4byte 0x4082013C # bne .L_802558C4
    mr 3, 31
    bl fn_8024DCD0
    psq_l 1, 0x8(31), 0, 0
    li 5, 0xc3
    lfs 0, 0x10(31)
    li 4, 0xff
    li 0, -0x80
    addi 3, 1, 0x2c
    psq_st 1, 0x32c(31), 0, 0
    stfs 0, 0x334(31)
    sth 5, 0x450(31)
    stb 4, 0xca2(31)
    stb 0, 0xca3(31)
    stb 0, 0xca4(31)
    lfs 0, 0x10(31)
    psq_l 1, 0x8(31), 0, 0
    stfs 0, 0x1c(1)
    psq_l 0, 0x10(31), 1, 0
    ps_sub 3, 1, 1
    psq_l 2, 0x1c(1), 1, 0
    psq_st 1, 0x14(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
    lfs 0, 0x1c(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x34(1)
    bl PSVECMag
    .4byte 0xC002D0D4 # lfs f0, lbl_80540074@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80255814
    mr 3, 31
    bl fn_8024B2E0
L_80255814:
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    .4byte 0x480000A8 # b .L_802558C4
L_80255820:
    lwz 0, 0xd00(31)
    cmpwi 0, 0x2
    .4byte 0x4082009C # bne .L_802558C4
    mr 3, 31
    bl fn_8024DCD0
    psq_l 1, 0x8(31), 0, 0
    li 5, 0x121
    lfs 0, 0x10(31)
    li 4, 0xff
    li 0, -0x80
    addi 3, 1, 0x20
    psq_st 1, 0x32c(31), 0, 0
    stfs 0, 0x334(31)
    sth 5, 0x450(31)
    stb 4, 0xca2(31)
    stb 0, 0xca3(31)
    stb 0, 0xca4(31)
    lfs 0, 0x10(31)
    psq_l 1, 0x8(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 0, 0x10(31), 1, 0
    ps_sub 3, 1, 1
    psq_l 2, 0x10(1), 1, 0
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x28(1)
    bl PSVECMag
    .4byte 0xC002D0D4 # lfs f0, lbl_80540074@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_802558B4
    mr 3, 31
    bl fn_8024B2E0
L_802558B4:
    li 0, 0x0
    stb 0, 0xcfe(31)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
L_802558C4:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802558E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x418201A4 # beq .L_80255AA4
    lis 4, lbl_804A6F38@ha
    addi 0, 4, lbl_804A6F38@l
    stw 0, 0x0(30)
    bl fn_80241E64
    lwz 3, 0xbf0(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80255934
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80255934:
    lwz 3, 0xbec(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80255954
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80255954:
    lwz 3, 0x1254(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80255974
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_80255974:
    lwz 3, 0x1250(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80255994
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_80255994:
    addic. 0, 30, 0x13a8
    .4byte 0x4182001C # beq .L_802559B4
    lis 4, lbl_8049F140@ha
    addi 3, 30, 0x13a8
    addi 0, 4, lbl_8049F140@l
    li 4, 0x0
    stw 0, 0x13a8(30)
    bl fn_800EB208
L_802559B4:
    addic. 0, 30, 0x1398
    .4byte 0x4182001C # beq .L_802559D4
    lis 4, lbl_8049F140@ha
    addi 3, 30, 0x1398
    addi 0, 4, lbl_8049F140@l
    li 4, 0x0
    stw 0, 0x1398(30)
    bl fn_800EB208
L_802559D4:
    addic. 0, 30, 0x1330
    .4byte 0x4182001C # beq .L_802559F4
    lis 4, lbl_804A64A8@ha
    addi 3, 30, 0x1330
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x1330(30)
    bl fn_800EF320
L_802559F4:
    addic. 0, 30, 0x130c
    .4byte 0x4182001C # beq .L_80255A14
    lis 4, lbl_804A64A8@ha
    addi 3, 30, 0x130c
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x130c(30)
    bl fn_800EF320
L_80255A14:
    addic. 0, 30, 0x12e8
    .4byte 0x4182001C # beq .L_80255A34
    lis 4, lbl_804A64A8@ha
    addi 3, 30, 0x12e8
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x12e8(30)
    bl fn_800EF320
L_80255A34:
    addic. 0, 30, 0x12d0
    .4byte 0x4182001C # beq .L_80255A54
    lis 4, lbl_804A64A8@ha
    addi 3, 30, 0x12d0
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x12d0(30)
    bl fn_800EF320
L_80255A54:
    addic. 0, 30, 0x1290
    .4byte 0x4182001C # beq .L_80255A74
    lis 4, lbl_804A64A8@ha
    addi 3, 30, 0x1290
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x1290(30)
    bl fn_800EF320
L_80255A74:
    addic. 0, 30, 0x1278
    .4byte 0x4182001C # beq .L_80255A94
    lis 4, lbl_804A64A8@ha
    addi 3, 30, 0x1278
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x1278(30)
    bl fn_800EF320
L_80255A94:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80255AA4
    mr 3, 30
    bl dtor_80084580
L_80255AA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80255AC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820030 # beq .L_80255B0C
    lis 5, lbl_804B20F8@ha
    li 4, 0x0
    addi 5, 5, lbl_804B20F8@l
    stw 5, 0x8(30)
    addi 0, 5, 0x24
    stw 0, 0x18(30)
    bl fn_8045787C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80255B0C
    mr 3, 30
    bl dtor_80084580
L_80255B0C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80255B28:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_804A6F38@ha
    li 6, 0xc
    stw 0, 0x24(1)
    addi 0, 5, lbl_804A6F38@l
    li 5, 0x0
    li 7, 0x31
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    lis 3, fn_8003B2CC@ha
    stw 29, 0x14(1)
    stw 0, 0x0(30)
    addi 0, 3, fn_8003B2CC@l
    addi 3, 30, 0x38
    mr 4, 0
    bl __construct_array
    lis 4, fn_8018E890@ha
    addi 3, 30, 0x4e0
    addi 4, 4, fn_8018E890@l
    li 5, 0x0
    li 6, 0x10
    li 7, 0x3
    bl __construct_array
    lis 4, fn_8018E890@ha
    addi 3, 30, 0x510
    addi 4, 4, fn_8018E890@l
    li 5, 0x0
    li 6, 0x10
    li 7, 0x3
    bl __construct_array
    lis 4, fn_8018E890@ha
    addi 3, 30, 0x550
    addi 4, 4, fn_8018E890@l
    li 5, 0x0
    li 6, 0x10
    li 7, 0x3
    bl __construct_array
    lis 4, fn_8018E890@ha
    addi 3, 30, 0x5fc
    addi 4, 4, fn_8018E890@l
    li 5, 0x0
    li 6, 0x10
    li 7, 0x50
    bl __construct_array
    lis 4, lbl_8049C178@ha
    lis 3, lbl_804A64A8@ha
    addi 7, 4, lbl_8049C178@l
    lis 4, lbl_80498978@ha
    stw 7, 0x1278(30)
    addi 6, 3, lbl_804A64A8@l
    lis 3, lbl_8049F140@ha
    li 5, 0x0
    stw 6, 0x1278(30)
    addi 4, 4, lbl_80498978@l
    addi 0, 3, lbl_8049F140@l
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stb 5, 0x1288(30)
    li 3, 0x60
    stw 7, 0x1290(30)
    stw 6, 0x1290(30)
    stb 5, 0x12a0(30)
    stw 7, 0x12d0(30)
    stw 6, 0x12d0(30)
    stb 5, 0x12e0(30)
    stw 7, 0x12e8(30)
    stw 6, 0x12e8(30)
    stb 5, 0x12f8(30)
    stw 7, 0x130c(30)
    stw 6, 0x130c(30)
    stb 5, 0x131c(30)
    stw 7, 0x1330(30)
    stw 6, 0x1330(30)
    stb 5, 0x1340(30)
    stw 4, 0x1398(30)
    stw 0, 0x1398(30)
    stw 5, 0x13a4(30)
    stw 4, 0x13a8(30)
    stw 0, 0x13a8(30)
    stw 5, 0x13b4(30)
    stw 31, 0x4(30)
    stfs 0, 0x1258(30)
    stfs 0, 0x125c(30)
    stfs 0, 0x1260(30)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820018 # beq .L_80255CA0
    extsb 4, 31
    addi 5, 30, 0x1258
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_80255CA0:
    stw 29, 0x1250(30)
    li 3, 0x60
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820018 # beq .L_80255CC8
    extsb 4, 31
    li 5, 0x0
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_80255CC8:
    stw 29, 0x1254(30)
    li 3, 0x2c0
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_80255CE0
    bl fn_8030BDF8
L_80255CE0:
    stw 29, 0xbec(30)
    li 3, 0xc0
    bl fn_80084370
    mr. 29, 3
    .4byte 0x4182000C # beq .L_80255CFC
    mr 4, 30
    bl fn_8026F9E8
L_80255CFC:
    stw 29, 0xbf0(30)
    li 0, 0x0
    mr 3, 30
    stb 0, 0xcac(30)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80255D28:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CF568@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CF568@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255D78
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80255D78:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255DB0
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80255DB0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255DE8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80255DE8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255E20
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80255E20:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255E58
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80255E58:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255E90
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80255E90:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255EC8
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80255EC8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255F00
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80255F00:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80255F38
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80255F38:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80255D28

