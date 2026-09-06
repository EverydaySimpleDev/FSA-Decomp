# Fresh project-wide gap hunt continuation: 20 functions, 16,320 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_80005CFC
etb_80005CFC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005CFC, 8

.global etb_80005D04
etb_80005D04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005D04, 8

.global etb_80005D0C
etb_80005D0C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005D0C, 8

.global etb_80005D14
etb_80005D14:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005D14, 8

.global etb_80005D1C
etb_80005D1C:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80005D1C, 8

.global etb_80005D24
etb_80005D24:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_80005D24, 8

.global etb_80005D2C
etb_80005D2C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80005D2C, 8

.global etb_80005D34
etb_80005D34:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005D34, 8

.global etb_80005D3C
etb_80005D3C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005D3C, 8

.global etb_80005D44
etb_80005D44:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005D44, 8

.global etb_80005D4C
etb_80005D4C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80005D4C, 8

.global etb_80005D54
etb_80005D54:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005D54, 8

.global etb_80005D5C
etb_80005D5C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005D5C, 8

.global etb_80005D64
etb_80005D64:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80005D64, 8

.global etb_80005D6C
etb_80005D6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005D6C, 8

.global etb_80005D74
etb_80005D74:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005D74, 8

.global etb_80005D7C
etb_80005D7C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005D7C, 8

.global etb_80005D84
etb_80005D84:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80005D84, 8

.section extabindex, "a"
.balign 4
.global eti_80012184
eti_80012184:
    .4byte fn_8010E0B0
    .4byte 0x00000224
    .4byte etb_80005CFC
.size eti_80012184, 12

.global eti_80012190
eti_80012190:
    .4byte fn_8010E2D4
    .4byte 0x00000514
    .4byte etb_80005D04
.size eti_80012190, 12

.global eti_8001219C
eti_8001219C:
    .4byte fn_8010E7E8
    .4byte 0x00000C90
    .4byte etb_80005D0C
.size eti_8001219C, 12

.global eti_800121A8
eti_800121A8:
    .4byte fn_8010F478
    .4byte 0x00000064
    .4byte etb_80005D14
.size eti_800121A8, 12

.global eti_800121B4
eti_800121B4:
    .4byte fn_8010F4DC
    .4byte 0x0000018C
    .4byte etb_80005D1C
.size eti_800121B4, 12

.global eti_800121C0
eti_800121C0:
    .4byte fn_8010F668
    .4byte 0x00000184
    .4byte etb_80005D24
.size eti_800121C0, 12

.global eti_800121CC
eti_800121CC:
    .4byte fn_8010F7EC
    .4byte 0x00000204
    .4byte etb_80005D2C
.size eti_800121CC, 12

.global eti_800121D8
eti_800121D8:
    .4byte fn_8010F9F0
    .4byte 0x00000064
    .4byte etb_80005D34
.size eti_800121D8, 12

.global eti_800121E4
eti_800121E4:
    .4byte fn_8010FA8C
    .4byte 0x0000070C
    .4byte etb_80005D3C
.size eti_800121E4, 12

.global eti_800121F0
eti_800121F0:
    .4byte fn_80110198
    .4byte 0x00000078
    .4byte etb_80005D44
.size eti_800121F0, 12

.global eti_800121FC
eti_800121FC:
    .4byte fn_80110210
    .4byte 0x00000244
    .4byte etb_80005D4C
.size eti_800121FC, 12

.global eti_80012208
eti_80012208:
    .4byte fn_80110454
    .4byte 0x000004E8
    .4byte etb_80005D54
.size eti_80012208, 12

.global eti_80012214
eti_80012214:
    .4byte fn_8011093C
    .4byte 0x00000560
    .4byte etb_80005D5C
.size eti_80012214, 12

.global eti_80012220
eti_80012220:
    .4byte fn_80110E9C
    .4byte 0x00000E24
    .4byte etb_80005D64
.size eti_80012220, 12

.global eti_8001222C
eti_8001222C:
    .4byte fn_80111CC0
    .4byte 0x00000084
    .4byte etb_80005D6C
.size eti_8001222C, 12

.global eti_80012238
eti_80012238:
    .4byte fn_80111D44
    .4byte 0x000000F4
    .4byte etb_80005D74
.size eti_80012238, 12

.global eti_80012244
eti_80012244:
    .4byte fn_80111E38
    .4byte 0x0000013C
    .4byte etb_80005D7C
.size eti_80012244, 12

.global eti_80012250
eti_80012250:
    .4byte fn_80111F74
    .4byte 0x000000FC
    .4byte etb_80005D84
.size eti_80012250, 12

.text
.balign 4
.global fn_8010E0B0
.global fn_8010E2D4
.global fn_8010E7E8
.global fn_8010F478
.global fn_8010F4DC
.global fn_8010F668
.global fn_8010F7EC
.global fn_8010F9F0
.global fn_8010FA54
.global fn_8010FA84
.global fn_8010FA8C
.global fn_80110198
.global fn_80110210
.global fn_80110454
.global fn_8011093C
.global fn_80110E9C
.global fn_80111CC0
.global fn_80111D44
.global fn_80111E38
.global fn_80111F74

fn_8010E0B0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BBEF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BBEF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E100
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
L_8010E100:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E138
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
L_8010E138:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E170
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
L_8010E170:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E1A8
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
L_8010E1A8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E1E0
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
L_8010E1E0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E218
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
L_8010E218:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E250
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
L_8010E250:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E288
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
L_8010E288:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010E2C0
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
L_8010E2C0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010E2D4:
    stwu 1, -0x40(1)
    mflr 0
    cmplwi 4, 0x3e
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    .4byte 0x418104E8 # bgt .L_8010E7D4
    lis 5, jumptable_8049D268@ha
    slwi 0, 4, 2
    addi 4, 5, jumptable_8049D268@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_801C0D70
    bl fn_801C11A4
    .4byte 0x480004C4 # b .L_8010E7D4
    bl fn_8011921C
    li 0, 0x1
    .4byte 0xC02295F4 # lfs f1, lbl_8053C594@sda21(r0)
    stb 0, 0x2(3)
    .4byte 0xC00295B4 # lfs f0, lbl_8053C554@sda21(r0)
    stfs 1, 0x274(31)
    stfs 0, 0x278(31)
    .4byte 0x480004A4 # b .L_8010E7D4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x4d3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x4d4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x4d5
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x4d6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x79
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480003EC # b .L_8010E7D4
    li 0, 0x1
    stb 0, 0x11d(31)
    bl fn_801C0D70
    lhz 0, 0x0(3)
    ori 0, 0, 0x800
    sth 0, 0x0(3)
    .4byte 0x480003D0 # b .L_8010E7D4
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0x2c
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 3, 0x0
    stfs 1, 0x2c(1)
    li 4, 0x2d4
    li 7, 0x4002
    stfs 0, 0x30(1)
    stfs 1, 0x34(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820384 # beq .L_8010E7D4
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000378 # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0xf
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000354 # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x15
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000330 # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x14
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    bl fn_801C0D70
    bl fn_801C115C
    .4byte 0x48000304 # b .L_8010E7D4
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0x20
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 3, 0x0
    stfs 1, 0x20(1)
    li 4, 0x2d3
    li 7, 0x4002
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418202B8 # beq .L_8010E7D4
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x480002AC # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x13
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm 0, 0, 0, 22, 20
    sth 0, 0x0(3)
    bl fn_8011921C
    bl fn_80118384
    li 0, 0x0
    stw 0, 0x264(31)
    .4byte 0x48000268 # b .L_8010E7D4
    .4byte 0xC00295F8 # lfs f0, lbl_8053C598@sda21(r0)
    stfs 0, 0x274(31)
    bl GetRoomConfigRecord
    lwz 4, 0x254(31)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    bl fn_8011921C
    li 0, 0x1
    stb 0, 0x2(3)
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000234 # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x14
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000208 # b .L_8010E7D4
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC00295BC # lfs f0, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0x14
    li 3, 0x0
    li 4, 0x2d1
    stfs 0, 0x14(1)
    li 7, 0x22
    stfs 0, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x480001B4 # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x13
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm 0, 0, 0, 20, 18
    sth 0, 0x0(3)
    .4byte 0x48000180 # b .L_8010E7D4
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0x8
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 3, 0x0
    stfs 1, 0x8(1)
    li 4, 0x2d5
    li 7, 0x4002
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820134 # beq .L_8010E7D4
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000128 # b .L_8010E7D4
    li 0, 0x0
    .4byte 0xC02295F8 # lfs f1, lbl_8053C598@sda21(r0)
    stw 0, 0x24c(31)
    addi 3, 31, 0x2f4
    .4byte 0xC00295F0 # lfs f0, lbl_8053C590@sda21(r0)
    li 4, 0xd
    stfs 1, 0x274(31)
    li 5, 0x0
    li 6, 0x0
    stfs 0, 0x278(31)
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x480000EC # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x12
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x480000C8 # b .L_8010E7D4
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x480000AC # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x8
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000088 # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295EC # lfs f0, lbl_8053C58C@sda21(r0)
    stfs 0, 0x324(31)
    .4byte 0x4800005C # b .L_8010E7D4
    addi 3, 31, 0x2f4
    li 4, 0x8
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295B0 # lfs f0, lbl_8053C550@sda21(r0)
    stfs 0, 0x324(31)
    .4byte 0x48000030 # b .L_8010E7D4
    li 0, 0x1
    stb 0, 0x231(31)
    bl GetRoomConfigRecord
    lwz 4, 0x250(31)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0xC02295FC # lfs f1, lbl_8053C59C@sda21(r0)
    lfs 0, 0x24(31)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
L_8010E7D4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8010E7E8:
    stwu 1, -0x170(1)
    mflr 0
    stw 0, 0x174(1)
    subi 0, 4, 0x3
    cmplwi 0, 0x3b
    stw 31, 0x16c(1)
    mr 31, 3
    stw 30, 0x168(1)
    .4byte 0x41810C58 # bgt .L_8010F460
    lis 3, jumptable_8049D364@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D364@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl fn_8011921C
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x2(3)
    li 5, 0x3
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043A450
    .4byte 0x48000C20 # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000BFC # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0x8
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    .4byte 0x388295A8 # li r4, lbl_8053C548@sda21
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    addi 6, 1, 0x108
    stfs 1, 0x108(1)
    li 3, 0x0
    li 7, 0x4022
    stfs 0, 0x10c(1)
    stfs 1, 0x110(1)
    lwz 0, 0x234(31)
    lwz 5, 0x4(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000B78 # b .L_8010F460
    .4byte 0xC0029600 # lfs f0, lbl_8053C5A0@sda21(r0)
    stfs 0, 0x278(31)
    .4byte 0x48000B6C # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0xe
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295EC # lfs f0, lbl_8053C58C@sda21(r0)
    li 3, 0x0
    li 6, 0x1
    li 7, 0x0
    stfs 0, 0x324(31)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0xfc
    .4byte 0xC0029604 # lfs f0, lbl_8053C5A4@sda21(r0)
    li 3, 0x0
    stfs 1, 0xfc(1)
    li 4, 0x233
    li 7, 0x4022
    stfs 0, 0x100(1)
    stfs 1, 0x104(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000AEC # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC02295EC # lfs f1, lbl_8053C58C@sda21(r0)
    .4byte 0xC0029608 # lfs f0, lbl_8053C5A8@sda21(r0)
    stfs 1, 0x324(31)
    stfs 0, 0x278(31)
    .4byte 0x48000AB8 # b .L_8010F460
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0xf0
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 3, 0x0
    stfs 1, 0xf0(1)
    li 4, 0x234
    li 7, 0x4022
    stfs 0, 0xf4(1)
    stfs 1, 0xf8(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000A60 # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295EC # lfs f0, lbl_8053C58C@sda21(r0)
    stfs 0, 0x324(31)
    .4byte 0x48000A34 # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0x3
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    li 3, 0x0
    .4byte 0xC002960C # lfs f0, lbl_8053C5AC@sda21(r0)
    stfs 1, 0x2e8(31)
    stfs 0, 0x2ec(31)
    stfs 1, 0x2f0(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC0029610 # lfs f0, lbl_8053C5B0@sda21(r0)
    stfs 1, 0x2dc(31)
    lfs 1, 0x4(3)
    stfs 1, 0x2e0(31)
    lfs 1, 0x8(3)
    stfs 1, 0x2e4(31)
    lfs 1, 0x2e0(31)
    fsubs 0, 1, 0
    stfs 0, 0x2e0(31)
    .4byte 0x480009CC # b .L_8010F460
    bl fn_80119DD0
    li 4, 0x5a
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x3c
    li 10, 0x0
    bl fn_80119998
    .4byte 0x480009A4 # b .L_8010F460
    bl GetRoomConfigRecord
    lwz 4, 0x244(31)
    lwz 5, 0x248(31)
    bl fn_802D9FF4
    bl GetRoomConfigRecord
    bl fn_802DA8DC
    .4byte 0x48000988 # b .L_8010F460
    bl fn_8011921C
    li 0, 0x1
    stb 0, 0x2(3)
    li 3, 0x0
    psq_l 1, 0x24(31), 0, 0
    lfs 0, 0x2c(31)
    psq_st 1, 0x15c(1), 0, 0
    stfs 0, 0x164(1)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    li 30, 0x0
    lfs 4, 0x8(3)
    .4byte 0xC0429614 # lfs f2, lbl_8053C5B4@sda21(r0)
    psq_st 0, 0x150(1), 0, 0
    lfs 1, 0x160(1)
    lfs 3, 0x154(1)
    .4byte 0xC00295E8 # lfs f0, lbl_8053C588@sda21(r0)
    fadds 2, 3, 2
    stfs 4, 0x158(1)
    fadds 0, 1, 0
    stfs 2, 0x154(1)
    stfs 0, 0x160(1)
L_8010EB34:
    mr 3, 30
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 30
    addi 4, 1, 0x150
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_8010EB34
    psq_l 0, 0x150(1), 0, 0
    addi 3, 31, 0x2f4
    lfs 3, 0x158(1)
    li 4, 0x3
    psq_st 0, 0x144(1), 0, 0
    li 5, 0x2
    .4byte 0xC02295E8 # lfs f1, lbl_8053C588@sda21(r0)
    li 6, 0x0
    lfs 2, 0x148(1)
    lfs 0, 0x144(1)
    fsubs 1, 2, 1
    stfs 3, 0x14c(1)
    stfs 0, 0xc(31)
    stfs 1, 0x10(31)
    stfs 1, 0x148(1)
    stfs 3, 0x14(31)
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295EC # lfs f0, lbl_8053C58C@sda21(r0)
    addi 3, 31, 0x32c
    psq_l 1, 0x15c(1), 0, 0
    li 4, 0x0
    stfs 0, 0x324(31)
    li 5, 0x2
    lfs 0, 0x164(1)
    li 6, 0x0
    psq_st 1, 0x2dc(31), 0, 0
    .4byte 0xC0629618 # lfs f3, lbl_8053C5B8@sda21(r0)
    stfs 0, 0x2e4(31)
    psq_l 2, 0x150(1), 0, 0
    stfs 0, 0x28(1)
    ps_sub 5, 1, 2
    psq_l 0, 0x158(1), 1, 0
    psq_l 2, 0x28(1), 1, 0
    psq_st 1, 0x20(1), 0, 0
    ps_sub 2, 2, 0
    psq_st 5, 0xa8(1), 0, 0
    lfs 1, 0xa8(1)
    lfs 0, 0xac(1)
    psq_st 2, 0x28(1), 1, 0
    fdivs 2, 1, 3
    lfs 4, 0x28(1)
    psq_st 5, 0x20(1), 0, 0
    psq_st 5, 0xb4(1), 0, 0
    stfs 4, 0xbc(1)
    stfs 4, 0xb0(1)
    fdivs 1, 0, 3
    stfs 2, 0xc0(1)
    frsp 0, 4
    stfs 1, 0xc4(1)
    psq_l 1, 0xc0(1), 0, 0
    fdivs 0, 0, 3
    psq_st 1, 0x2e8(31), 0, 0
    stfs 0, 0xc8(1)
    stfs 0, 0x2f0(31)
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x32c
    bl fn_801D1F14
    .4byte 0x48000804 # b .L_8010F460
    li 3, 0x0
    bl fn_8023E604
    psq_l 0, 0x0(3), 0, 0
    li 4, 0x3
    lfs 3, 0x8(3)
    addi 3, 31, 0x2f4
    psq_st 0, 0x138(1), 0, 0
    li 5, 0x2
    .4byte 0xC0229614 # lfs f1, lbl_8053C5B4@sda21(r0)
    li 6, 0x0
    lfs 2, 0x13c(1)
    lfs 0, 0x138(1)
    fsubs 1, 2, 1
    stfs 3, 0x140(1)
    stfs 0, 0xc(31)
    stfs 1, 0x10(31)
    stfs 1, 0x13c(1)
    stfs 3, 0x14(31)
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295EC # lfs f0, lbl_8053C58C@sda21(r0)
    li 3, 0x0
    stfs 0, 0x324(31)
    psq_l 1, 0x24(31), 0, 0
    lfs 0, 0x2c(31)
    psq_st 1, 0x12c(1), 0, 0
    stfs 0, 0x134(1)
    bl fn_8023E604
    psq_l 0, 0x0(3), 0, 0
    li 30, 0x0
    lfs 3, 0x8(3)
    lfs 1, 0x130(1)
    psq_st 0, 0x120(1), 0, 0
    .4byte 0xC04295E8 # lfs f2, lbl_8053C588@sda21(r0)
    lfs 0, 0x124(1)
    fadds 1, 1, 2
    stfs 3, 0x128(1)
    fsubs 0, 0, 2
    stfs 1, 0x130(1)
    stfs 0, 0x124(1)
L_8010ED08:
    mr 3, 30
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 30
    addi 4, 1, 0x120
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_8010ED08
    psq_l 1, 0x12c(1), 0, 0
    addi 3, 31, 0x32c
    lfs 0, 0x134(1)
    li 4, 0x0
    psq_st 1, 0x2dc(31), 0, 0
    li 5, 0x2
    .4byte 0xC062961C # lfs f3, lbl_8053C5BC@sda21(r0)
    li 6, 0x0
    stfs 0, 0x2e4(31)
    psq_l 2, 0x120(1), 0, 0
    stfs 0, 0x1c(1)
    ps_sub 5, 1, 2
    psq_l 0, 0x128(1), 1, 0
    psq_l 2, 0x1c(1), 1, 0
    psq_st 1, 0x14(1), 0, 0
    ps_sub 2, 2, 0
    psq_st 5, 0x84(1), 0, 0
    lfs 1, 0x84(1)
    lfs 0, 0x88(1)
    psq_st 2, 0x1c(1), 1, 0
    fdivs 2, 1, 3
    lfs 4, 0x1c(1)
    psq_st 5, 0x14(1), 0, 0
    psq_st 5, 0x90(1), 0, 0
    stfs 4, 0x98(1)
    stfs 4, 0x8c(1)
    fdivs 1, 0, 3
    stfs 2, 0x9c(1)
    frsp 0, 4
    stfs 1, 0xa0(1)
    psq_l 1, 0x9c(1), 0, 0
    fdivs 0, 0, 3
    psq_st 1, 0x2e8(31), 0, 0
    stfs 0, 0xa4(1)
    stfs 0, 0x2f0(31)
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x32c
    bl fn_801D1F14
    .4byte 0x48000688 # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0x8
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295B0 # lfs f0, lbl_8053C550@sda21(r0)
    li 3, 0x0
    li 6, 0x1
    li 7, 0x0
    stfs 0, 0x324(31)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0xe4
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 3, 0x0
    stfs 1, 0xe4(1)
    li 4, 0x4b0
    li 7, 0x4022
    stfs 0, 0xe8(1)
    stfs 1, 0xec(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000608 # b .L_8010F460
    psq_l 0, 0xc(31), 0, 0
    li 3, 0x0
    lfs 2, 0x14(31)
    psq_st 0, 0x114(1), 0, 0
    .4byte 0xC0029620 # lfs f0, lbl_8053C5C0@sda21(r0)
    lfs 1, 0x118(1)
    stfs 2, 0x11c(1)
    fadds 0, 1, 0
    stfs 0, 0x118(1)
    bl fn_8023E724
    psq_l 1, 0x114(1), 0, 0
    li 4, 0x0
    lfs 0, 0x11c(1)
    li 5, 0x2
    psq_st 1, 0x2dc(31), 0, 0
    li 6, 0x0
    .4byte 0xC0629624 # lfs f3, lbl_8053C5C4@sda21(r0)
    stfs 0, 0x2e4(31)
    psq_l 2, 0x0(3), 0, 0
    stfs 0, 0x10(1)
    ps_sub 5, 1, 2
    psq_l 0, 0x8(3), 1, 0
    psq_l 2, 0x10(1), 1, 0
    addi 3, 31, 0x32c
    psq_st 1, 0x8(1), 0, 0
    ps_sub 2, 2, 0
    psq_st 5, 0x60(1), 0, 0
    lfs 1, 0x60(1)
    lfs 0, 0x64(1)
    psq_st 2, 0x10(1), 1, 0
    fdivs 2, 1, 3
    lfs 4, 0x10(1)
    psq_st 5, 0x8(1), 0, 0
    psq_st 5, 0x6c(1), 0, 0
    stfs 4, 0x74(1)
    stfs 4, 0x68(1)
    fdivs 1, 0, 3
    stfs 2, 0x78(1)
    frsp 0, 4
    stfs 1, 0x7c(1)
    psq_l 1, 0x78(1), 0, 0
    fdivs 0, 0, 3
    psq_st 1, 0x2e8(31), 0, 0
    stfs 0, 0x80(1)
    stfs 0, 0x2f0(31)
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x32c
    bl fn_801D1F14
    .4byte 0x48000540 # b .L_8010F460
    bl fn_8011921C
    bl fn_801183BC
    addi 3, 31, 0x2f4
    li 4, 0xf
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    bl fn_8011921C
    li 0, 0x1
    lis 4, 0x100
    stb 0, 0x2(3)
    addi 4, 4, 0x1b
    li 5, 0x0
    li 6, 0x0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    .4byte 0x480004F0 # b .L_8010F460
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x309
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x364(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x30a
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x368(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x2e1
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x2e2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x2e3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0x2ea
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x36c(31)
    addi 3, 31, 0x2f4
    li 4, 0x15
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x480003D0 # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0x14
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x480003AC # b .L_8010F460
    lwz 5, 0x364(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8010F0E0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x364(31)
L_8010F0E0:
    lwz 5, 0x368(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8010F108
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x368(31)
L_8010F108:
    lwz 5, 0x36c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8010F130
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x36c(31)
L_8010F130:
    addi 3, 31, 0x2f4
    li 4, 0x18
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000310 # b .L_8010F460
    addi 3, 31, 0x2f4
    li 4, 0x16
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x480002EC # b .L_8010F460
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0xd8
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 3, 0x0
    stfs 1, 0xd8(1)
    li 4, 0x239
    li 7, 0x4022
    stfs 0, 0xdc(1)
    stfs 1, 0xe0(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000294 # b .L_8010F460
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x54
    lfs 3, 0x14(31)
    li 5, 0x33b
    .4byte 0xC00295F0 # lfs f0, lbl_8053C590@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x0
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 8, 0x0
    lfs 2, 0x58(1)
    li 9, 0x0
    stfs 3, 0x5c(1)
    li 10, 0x1
    fadds 0, 2, 0
    stfs 0, 0x58(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb5
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0x2f4
    li 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000214 # b .L_8010F460
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x48
    lfs 3, 0x14(31)
    li 5, 0x33b
    .4byte 0xC00295F0 # lfs f0, lbl_8053C590@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x0
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 8, 0x0
    lfs 2, 0x4c(1)
    li 9, 0x0
    stfs 3, 0x50(1)
    li 10, 0x1
    fadds 0, 2, 0
    stfs 0, 0x4c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xb5
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001B4 # b .L_8010F460
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 6, 1, 0xcc
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 3, 0x0
    stfs 1, 0xcc(1)
    li 4, 0x4b1
    li 7, 0x4022
    stfs 0, 0xd0(1)
    stfs 1, 0xd4(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x4800015C # b .L_8010F460
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x2b
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x71
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0xc1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0xc2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0xc3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    li 5, 0xc4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    bl GetRoomConfigRecord
    lwz 8, 0xcc(3)
    addi 4, 1, 0x3c
    lwz 10, 0xd0(3)
    li 5, 0xc5
    lwz 11, 0xd4(3)
    li 6, 0x0
    lwz 0, 0xd8(3)
    li 7, 0x0
    stw 8, 0x2c(1)
    li 8, 0x0
    .4byte 0xC00295BC # lfs f0, lbl_8053C55C@sda21(r0)
    li 9, 0x0
    stw 10, 0x30(1)
    li 10, 0x1
    lfs 2, 0x2c(1)
    stw 11, 0x34(1)
    lfs 1, 0x30(1)
    stw 0, 0x38(1)
    lfs 5, 0x34(1)
    lfs 6, 0x38(1)
    fsubs 3, 2, 5
    .4byte 0xC08295EC # lfs f4, lbl_8053C58C@sda21(r0)
    fsubs 2, 1, 6
    stfs 0, 0x44(1)
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    fmadds 0, 4, 3, 5
    fmadds 2, 4, 2, 6
    stfs 0, 0x3c(1)
    stfs 2, 0x40(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0x4800000C # b .L_8010F460
    li 0, 0x1
    stb 0, 0x230(31)
L_8010F460:
    lwz 0, 0x174(1)
    lwz 31, 0x16c(1)
    lwz 30, 0x168(1)
    mtlr 0
    addi 1, 1, 0x170
    blr

fn_8010F478:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_8010F4BC
    .4byte 0x40800020 # bge .L_8010F4C0
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8010F4B4
    .4byte 0x48000014 # b .L_8010F4C0
    .4byte 0x48000010 # b .L_8010F4C0
L_8010F4B4:
    bl fn_8010E7E8
    .4byte 0x48000008 # b .L_8010F4C0
L_8010F4BC:
    bl fn_8010E2D4
L_8010F4C0:
    stw 31, 0x238(30)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010F4DC:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    mr 30, 3
    .4byte 0xC0029628 # lfs f0, lbl_8053C5C8@sda21(r0)
    lfs 1, 0x268(3)
    addi 3, 1, 0x50
    fadds 0, 1, 0
    stfs 0, 0x268(30)
    lfs 1, 0xc(30)
    lfs 2, 0x10(30)
    lfs 3, 0x14(30)
    bl PSMTXTrans
    .4byte 0xC00295BC # lfs f0, lbl_8053C55C@sda21(r0)
    addi 3, 1, 0x50
    .4byte 0xC04295B0 # lfs f2, lbl_8053C550@sda21(r0)
    addi 4, 1, 0x14
    stfs 0, 0x18(1)
    .4byte 0xC022962C # lfs f1, lbl_8053C5CC@sda21(r0)
    stfs 2, 0x14(1)
    stfs 0, 0x1c(1)
    bl fn_8010F668
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 1, 0x20
    .4byte 0xC00295B0 # lfs f0, lbl_8053C550@sda21(r0)
    addi 4, 1, 0x8
    stfs 1, 0x4c(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x48(1)
    stfs 1, 0x38(1)
    stfs 1, 0x28(1)
    stfs 1, 0x44(1)
    stfs 1, 0x34(1)
    stfs 1, 0x24(1)
    stfs 1, 0x40(1)
    stfs 1, 0x30(1)
    stfs 1, 0x20(1)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 1, 0x268(30)
    bl fn_8010F668
    addi 3, 1, 0x50
    addi 4, 1, 0x20
    mr 5, 3
    bl PSMTXConcat
    lwz 3, 0x240(30)
    addi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 0, 0x240(30)
    cmpwi 0, 0xc8
    .4byte 0x4180000C # blt .L_8010F5C8
    li 0, 0x0
    stw 0, 0x240(30)
L_8010F5C8:
    lwz 31, 0x240(30)
    lfs 31, 0x270(30)
    bl fn_801902C0
    lwz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_8010F648
    lbz 0, 0x2a4(3)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_8010F648
    li 4, 0x1
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    stb 4, 0x2a4(3)
    li 0, 0x0
    stfs 31, 0x248(3)
    stfs 31, 0x24c(3)
    stfs 31, 0x250(3)
    psq_l 6, 0x50(1), 0, 0
    psq_l 5, 0x58(1), 0, 0
    psq_l 4, 0x60(1), 0, 0
    psq_l 3, 0x68(1), 0, 0
    psq_l 2, 0x70(1), 0, 0
    psq_l 1, 0x78(1), 0, 0
    psq_st 6, 0x254(3), 0, 0
    psq_st 5, 0x25c(3), 0, 0
    psq_st 4, 0x264(3), 0, 0
    psq_st 3, 0x26c(3), 0, 0
    psq_st 2, 0x274(3), 0, 0
    psq_st 1, 0x27c(3), 0, 0
    stfs 0, 0x290(3)
    stw 31, 0x294(3)
    stw 0, 0x29c(3)
    stw 4, 0x2a0(3)
L_8010F648:
    psq_l 31, 0x98(1), 0, 0
    lwz 0, 0xa4(1)
    lfd 31, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8010F668:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    psq_l 6, 0x0(4), 0, 0
    lis 5, lbl_80539D44@ha
    lfs 4, 0x8(4)
    fmr 31, 1
    ps_mul 6, 6, 6
    .4byte 0xC0429614 # lfs f2, lbl_8053C5B4@sda21(r0)
    lfs 0, lbl_80539D44@l(5)
    mr 31, 3
    ps_madd 5, 4, 4, 6
    fmuls 0, 2, 0
    ps_sum0 5, 5, 6, 6
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_8010F6D4
    .4byte 0xC00295BC # lfs f0, lbl_8053C55C@sda21(r0)
    stfs 0, 0x10(1)
    stfs 0, 0xc(1)
    stfs 0, 0x8(1)
    .4byte 0x48000058 # b .L_8010F728
L_8010F6D4:
    .4byte 0xC00295BC # lfs f0, lbl_8053C55C@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8010F6EC
    fmr 3, 5
    .4byte 0x48000028 # b .L_8010F710
L_8010F6EC:
    frsqrte 4, 5
    .4byte 0xC04295EC # lfs f2, lbl_8053C58C@sda21(r0)
    .4byte 0xC0029634 # lfs f0, lbl_8053C5D4@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 5, 1, 0
    fmuls 0, 2, 0
    fmr 3, 0
L_8010F710:
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(4), 1, 0
    ps_muls0 1, 1, 3
    ps_muls0 0, 0, 3
    psq_st 1, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
L_8010F728:
    fmr 1, 31
    bl sin
    frsp 30, 1
    fmr 1, 31
    bl cos
    frsp 6, 1
    lfs 7, 0x8(1)
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    lfs 4, 0xc(1)
    fmuls 0, 7, 7
    fsubs 12, 1, 6
    lfs 13, 0x10(1)
    fmuls 2, 4, 4
    fmuls 10, 30, 4
    fmuls 3, 12, 7
    fmadds 0, 12, 0, 6
    fmuls 1, 12, 4
    fmuls 9, 4, 3
    fmuls 8, 30, 13
    stfs 0, 0x0(31)
    fmuls 11, 13, 3
    fmuls 0, 13, 13
    fsubs 5, 9, 8
    fadds 4, 11, 10
    fadds 3, 9, 8
    stfs 5, 0x4(31)
    fmuls 5, 13, 1
    fmuls 1, 30, 7
    stfs 4, 0x8(31)
    fmadds 4, 12, 2, 6
    fsubs 2, 11, 10
    stfs 3, 0x10(31)
    fsubs 3, 5, 1
    fadds 1, 5, 1
    stfs 4, 0x14(31)
    fmadds 0, 12, 0, 6
    stfs 3, 0x18(31)
    stfs 2, 0x20(31)
    stfs 1, 0x24(31)
    stfs 0, 0x28(31)
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 0, 0x44(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8010F7EC:
    stwu 1, -0x80(1)
    mflr 0
    li 5, -0x1
    li 12, 0x0
    stw 0, 0x84(1)
    mr 0, 4
    addi 11, 1, 0x38
    stw 5, 0x48(1)
    stw 5, 0x4c(1)
    .4byte 0x48000064 # b .L_8010F874
L_8010F814:
    clrlwi 4, 12, 24
    addi 9, 12, 0x5
    addi 7, 12, 0x1
    stbx 12, 11, 4
    clrlwi 4, 7, 24
    addi 5, 12, 0x2
    stbx 7, 11, 4
    clrlwi 4, 5, 24
    addi 6, 12, 0x3
    addi 10, 12, 0x4
    stbx 5, 11, 4
    clrlwi 4, 6, 24
    clrlwi 8, 9, 24
    addi 7, 12, 0x6
    stbx 6, 11, 4
    clrlwi 4, 10, 24
    addi 5, 12, 0x7
    clrlwi 6, 7, 24
    stbx 10, 11, 4
    clrlwi 4, 5, 24
    addi 12, 12, 0x8
    stbx 9, 11, 8
    stbx 7, 11, 6
    stbx 5, 11, 4
L_8010F874:
    clrlwi 4, 12, 24
    cmplwi 4, 0x10
    .4byte 0x4180FF98 # blt .L_8010F814
    li 7, 0x0
    li 6, 0x1
    li 8, -0x1
    li 5, 0x3
    li 4, 0x2
    stw 8, 0x48(1)
    stw 7, 0x4c(1)
    stw 7, 0x50(1)
    stb 7, 0x54(1)
    stb 7, 0x55(1)
    stb 7, 0x56(1)
    stb 6, 0x57(1)
    stb 6, 0x58(1)
    stb 7, 0x59(1)
    stb 7, 0x5a(1)
    stb 7, 0x5b(1)
    stb 7, 0x5c(1)
    stb 7, 0x5d(1)
    stb 6, 0x5e(1)
    stw 5, 0x60(1)
    stb 6, 0x64(1)
    stb 7, 0x65(1)
    stb 7, 0x66(1)
    stw 8, 0x68(1)
    stw 7, 0x6c(1)
    stw 4, 0x70(1)
    lwz 4, 0x24c(3)
    stb 4, 0x55(1)
    lwz 4, 0x238(3)
    cmpwi 4, 0x2f
    .4byte 0x40820084 # bne .L_8010F97C
    lwz 5, 0x264(3)
    lis 4, 0x1
    addi 5, 5, 0x258
    stw 5, 0x264(3)
    lwz 5, 0x264(3)
    cmpw 5, 4
    .4byte 0x4180000C # blt .L_8010F920
    subis 4, 5, 0x1
    stw 4, 0x264(3)
L_8010F920:
    lwz 6, 0x264(3)
    lis 5, lbl_8052EBC0@ha
    .4byte 0xC04295BC # lfs f2, lbl_8053C55C@sda21(r0)
    addi 4, 1, 0x8
    rlwinm 6, 6, 30, 18, 28
    addi 5, 5, lbl_8052EBC0@l
    lfsx 3, 5, 6
    .4byte 0xC02295C0 # lfs f1, lbl_8053C560@sda21(r0)
    .4byte 0xC00295B0 # lfs f0, lbl_8053C550@sda21(r0)
    fmuls 1, 1, 3
    stfs 2, 0x14(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x8(1)
    stfs 2, 0xc(1)
    stfs 2, 0x10(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 2, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 0, 0x30(1)
    stw 4, 0x50(1)
L_8010F97C:
    cmpwi 0, 0x21b
    .4byte 0x40820034 # bne .L_8010F9B4
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    lis 4, lbl_8046464C@ha
    lwz 5, 0x304(3)
    addi 4, 4, lbl_8046464C@l
    fmr 2, 1
    addi 6, 1, 0x38
    add 5, 0, 5
    li 7, 0x407
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000030 # b .L_8010F9E0
L_8010F9B4:
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    lis 4, lbl_80464660@ha
    lwz 5, 0x304(3)
    addi 4, 4, lbl_80464660@l
    fmr 2, 1
    addi 6, 1, 0x38
    add 5, 0, 5
    li 7, 0x407
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_8010F9E0:
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8010F9F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x41820024 # beq .L_8010FA30
    .4byte 0x40800028 # bge .L_8010FA38
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8010FA24
    .4byte 0x4800001C # b .L_8010FA38
    .4byte 0x48000018 # b .L_8010FA38
L_8010FA24:
    li 4, 0x31
    bl fn_8010E7E8
    .4byte 0x4800000C # b .L_8010FA38
L_8010FA30:
    li 4, 0x31
    bl fn_8010E2D4
L_8010FA38:
    li 0, 0x31
    stw 0, 0x238(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010FA54:
    lwz 0, 0x238(3)
    cmpwi 0, 0x3d
    .4byte 0x40800010 # bge .L_8010FA6C
    cmpwi 0, 0x2f
    .4byte 0x41820010 # beq .L_8010FA74
    .4byte 0x48000014 # b .L_8010FA7C
L_8010FA6C:
    cmpwi 0, 0x3f
    .4byte 0x4080000C # bge .L_8010FA7C
L_8010FA74:
    li 3, 0x1
    blr
L_8010FA7C:
    li 3, 0x0
    blr

fn_8010FA84:
    lwz 3, 0x238(3)
    blr

fn_8010FA8C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8011921C
    lwz 0, 0x234(30)
    lwz 31, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x41820178 # beq .L_8010FC2C
    .4byte 0x40800010 # bge .L_8010FAC8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8010FAD4
    .4byte 0x480006BC # b .L_80110180
L_8010FAC8:
    cmpwi 0, 0x3
    .4byte 0x408006B4 # bge .L_80110180
    .4byte 0x480003F8 # b .L_8010FEC8
L_8010FAD4:
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x408206A0 # bne .L_80110180
    lis 3, lbl_80464550@ha
    addi 3, 3, lbl_80464550@l
    lwz 0, 0xc(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FB08
    mr 3, 30
    li 4, 0x3
    bl fn_8010F478
    .4byte 0x4800067C # b .L_80110180
L_8010FB08:
    lwz 0, 0x10(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FB24
    mr 3, 30
    li 4, 0x4
    bl fn_8010F478
    .4byte 0x48000660 # b .L_80110180
L_8010FB24:
    lwz 0, 0x14(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FB40
    mr 3, 30
    li 4, 0x5
    bl fn_8010F478
    .4byte 0x48000644 # b .L_80110180
L_8010FB40:
    lwz 0, 0x18(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FB5C
    mr 3, 30
    li 4, 0x6
    bl fn_8010F478
    .4byte 0x48000628 # b .L_80110180
L_8010FB5C:
    lwz 0, 0x1c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FB78
    mr 3, 30
    li 4, 0x7
    bl fn_8010F478
    .4byte 0x4800060C # b .L_80110180
L_8010FB78:
    lwz 0, 0x20(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FB94
    mr 3, 30
    li 4, 0x8
    bl fn_8010F478
    .4byte 0x480005F0 # b .L_80110180
L_8010FB94:
    lwz 0, 0x24(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FBB0
    mr 3, 30
    li 4, 0x9
    bl fn_8010F478
    .4byte 0x480005D4 # b .L_80110180
L_8010FBB0:
    lwz 0, 0x28(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FBCC
    mr 3, 30
    li 4, 0xa
    bl fn_8010F478
    .4byte 0x480005B8 # b .L_80110180
L_8010FBCC:
    lwz 0, 0x2c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FBE8
    mr 3, 30
    li 4, 0xb
    bl fn_8010F478
    .4byte 0x4800059C # b .L_80110180
L_8010FBE8:
    lwz 0, 0x30(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FC04
    mr 3, 30
    li 4, 0xc
    bl fn_8010F478
    .4byte 0x48000580 # b .L_80110180
L_8010FC04:
    lwz 0, 0x34(3)
    cmpw 31, 0
    .4byte 0x40820574 # bne .L_80110180
    mr 3, 30
    li 4, 0xd
    bl fn_8010F478
    mr 3, 30
    li 4, 0x25
    bl fn_8010F478
    .4byte 0x48000558 # b .L_80110180
L_8010FC2C:
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0x1
    .4byte 0x40820548 # bne .L_80110180
    lis 3, lbl_80464550@ha
    addi 3, 3, lbl_80464550@l
    lwz 0, 0x38(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FC60
    mr 3, 30
    li 4, 0xe
    bl fn_8010F478
    .4byte 0x48000524 # b .L_80110180
L_8010FC60:
    lwz 0, 0x3c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FC7C
    mr 3, 30
    li 4, 0xf
    bl fn_8010F478
    .4byte 0x48000508 # b .L_80110180
L_8010FC7C:
    lwz 0, 0x40(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FC98
    mr 3, 30
    li 4, 0x10
    bl fn_8010F478
    .4byte 0x480004EC # b .L_80110180
L_8010FC98:
    lwz 0, 0x44(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FCB4
    mr 3, 30
    li 4, 0x11
    bl fn_8010F478
    .4byte 0x480004D0 # b .L_80110180
L_8010FCB4:
    lwz 0, 0x48(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FCD0
    mr 3, 30
    li 4, 0x12
    bl fn_8010F478
    .4byte 0x480004B4 # b .L_80110180
L_8010FCD0:
    lwz 0, 0x4c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FCEC
    mr 3, 30
    li 4, 0x13
    bl fn_8010F478
    .4byte 0x48000498 # b .L_80110180
L_8010FCEC:
    lwz 0, 0x50(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FD08
    mr 3, 30
    li 4, 0x14
    bl fn_8010F478
    .4byte 0x4800047C # b .L_80110180
L_8010FD08:
    lwz 0, 0x54(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FD24
    mr 3, 30
    li 4, 0x15
    bl fn_8010F478
    .4byte 0x48000460 # b .L_80110180
L_8010FD24:
    lwz 0, 0x58(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FD40
    mr 3, 30
    li 4, 0x16
    bl fn_8010F478
    .4byte 0x48000444 # b .L_80110180
L_8010FD40:
    lwz 0, 0x5c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FD5C
    mr 3, 30
    li 4, 0x17
    bl fn_8010F478
    .4byte 0x48000428 # b .L_80110180
L_8010FD5C:
    lwz 0, 0x60(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FD78
    mr 3, 30
    li 4, 0x18
    bl fn_8010F478
    .4byte 0x4800040C # b .L_80110180
L_8010FD78:
    lwz 0, 0x64(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FD94
    mr 3, 30
    li 4, 0x19
    bl fn_8010F478
    .4byte 0x480003F0 # b .L_80110180
L_8010FD94:
    lwz 0, 0x68(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FDB0
    mr 3, 30
    li 4, 0x1a
    bl fn_8010F478
    .4byte 0x480003D4 # b .L_80110180
L_8010FDB0:
    lwz 0, 0x6c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FDCC
    mr 3, 30
    li 4, 0x1b
    bl fn_8010F478
    .4byte 0x480003B8 # b .L_80110180
L_8010FDCC:
    lwz 0, 0x70(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FDE8
    mr 3, 30
    li 4, 0x1c
    bl fn_8010F478
    .4byte 0x4800039C # b .L_80110180
L_8010FDE8:
    lwz 0, 0x74(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FE04
    mr 3, 30
    li 4, 0x1d
    bl fn_8010F478
    .4byte 0x48000380 # b .L_80110180
L_8010FE04:
    lwz 0, 0x78(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FE20
    mr 3, 30
    li 4, 0x1e
    bl fn_8010F478
    .4byte 0x48000364 # b .L_80110180
L_8010FE20:
    lwz 0, 0x7c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FE3C
    mr 3, 30
    li 4, 0x1f
    bl fn_8010F478
    .4byte 0x48000348 # b .L_80110180
L_8010FE3C:
    lwz 0, 0x80(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FE58
    mr 3, 30
    li 4, 0x20
    bl fn_8010F478
    .4byte 0x4800032C # b .L_80110180
L_8010FE58:
    lwz 0, 0x84(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FE74
    mr 3, 30
    li 4, 0x21
    bl fn_8010F478
    .4byte 0x48000310 # b .L_80110180
L_8010FE74:
    lwz 0, 0x88(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FE90
    mr 3, 30
    li 4, 0x22
    bl fn_8010F478
    .4byte 0x480002F4 # b .L_80110180
L_8010FE90:
    lwz 0, 0x8c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FEAC
    mr 3, 30
    li 4, 0x23
    bl fn_8010F478
    .4byte 0x480002D8 # b .L_80110180
L_8010FEAC:
    lwz 0, 0x94(3)
    cmpw 31, 0
    .4byte 0x408202CC # bne .L_80110180
    mr 3, 30
    li 4, 0x3e
    bl fn_8010F478
    .4byte 0x480002BC # b .L_80110180
L_8010FEC8:
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0xe
    .4byte 0x418202AC # beq .L_80110180
    .4byte 0x40800010 # bge .L_8010FEE8
    cmpwi 0, 0xd
    .4byte 0x40800130 # bge .L_80110010
    .4byte 0x4800029C # b .L_80110180
L_8010FEE8:
    cmpwi 0, 0x10
    .4byte 0x40800294 # bge .L_80110180
    lis 3, lbl_80464550@ha
    addi 3, 3, lbl_80464550@l
    lwz 0, 0x98(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FF14
    mr 3, 30
    li 4, 0x26
    bl fn_8010F478
    .4byte 0x48000270 # b .L_80110180
L_8010FF14:
    lwz 0, 0x9c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FF30
    mr 3, 30
    li 4, 0x27
    bl fn_8010F478
    .4byte 0x48000254 # b .L_80110180
L_8010FF30:
    lwz 0, 0xa0(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FF4C
    mr 3, 30
    li 4, 0x28
    bl fn_8010F478
    .4byte 0x48000238 # b .L_80110180
L_8010FF4C:
    lwz 0, 0xa4(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FF68
    mr 3, 30
    li 4, 0x29
    bl fn_8010F478
    .4byte 0x4800021C # b .L_80110180
L_8010FF68:
    lwz 0, 0xa8(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FF84
    mr 3, 30
    li 4, 0x2a
    bl fn_8010F478
    .4byte 0x48000200 # b .L_80110180
L_8010FF84:
    lwz 0, 0xac(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FFA0
    mr 3, 30
    li 4, 0x2b
    bl fn_8010F478
    .4byte 0x480001E4 # b .L_80110180
L_8010FFA0:
    lwz 0, 0xb0(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FFBC
    mr 3, 30
    li 4, 0x2c
    bl fn_8010F478
    .4byte 0x480001C8 # b .L_80110180
L_8010FFBC:
    lwz 0, 0xb4(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FFD8
    mr 3, 30
    li 4, 0x2d
    bl fn_8010F478
    .4byte 0x480001AC # b .L_80110180
L_8010FFD8:
    lwz 0, 0xb8(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8010FFF4
    mr 3, 30
    li 4, 0x2e
    bl fn_8010F478
    .4byte 0x48000190 # b .L_80110180
L_8010FFF4:
    lwz 0, 0xbc(3)
    cmpw 31, 0
    .4byte 0x40820184 # bne .L_80110180
    mr 3, 30
    li 4, 0x2f
    bl fn_8010F478
    .4byte 0x48000174 # b .L_80110180
L_80110010:
    lis 3, lbl_80464550@ha
    addi 3, 3, lbl_80464550@l
    lwz 0, 0xc0(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_80110034
    mr 3, 30
    li 4, 0x30
    bl fn_8010F478
    .4byte 0x48000150 # b .L_80110180
L_80110034:
    lwz 0, 0xc8(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_80110050
    mr 3, 30
    li 4, 0x32
    bl fn_8010F478
    .4byte 0x48000134 # b .L_80110180
L_80110050:
    lwz 0, 0xcc(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011006C
    mr 3, 30
    li 4, 0x33
    bl fn_8010F478
    .4byte 0x48000118 # b .L_80110180
L_8011006C:
    lwz 0, 0xd0(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_80110088
    mr 3, 30
    li 4, 0x34
    bl fn_8010F478
    .4byte 0x480000FC # b .L_80110180
L_80110088:
    lwz 0, 0xd4(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_801100A4
    mr 3, 30
    li 4, 0x35
    bl fn_8010F478
    .4byte 0x480000E0 # b .L_80110180
L_801100A4:
    lwz 0, 0xd8(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_801100C0
    mr 3, 30
    li 4, 0x36
    bl fn_8010F478
    .4byte 0x480000C4 # b .L_80110180
L_801100C0:
    lwz 0, 0xdc(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_801100DC
    mr 3, 30
    li 4, 0x37
    bl fn_8010F478
    .4byte 0x480000A8 # b .L_80110180
L_801100DC:
    lwz 0, 0xe0(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_801100F8
    mr 3, 30
    li 4, 0x38
    bl fn_8010F478
    .4byte 0x4800008C # b .L_80110180
L_801100F8:
    lwz 0, 0xe4(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_80110114
    mr 3, 30
    li 4, 0x39
    bl fn_8010F478
    .4byte 0x48000070 # b .L_80110180
L_80110114:
    lwz 0, 0xe8(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_80110130
    mr 3, 30
    li 4, 0x3a
    bl fn_8010F478
    .4byte 0x48000054 # b .L_80110180
L_80110130:
    lwz 0, 0xec(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011014C
    mr 3, 30
    li 4, 0x3b
    bl fn_8010F478
    .4byte 0x48000038 # b .L_80110180
L_8011014C:
    lwz 0, 0xf0(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_80110168
    mr 3, 30
    li 4, 0x3c
    bl fn_8010F478
    .4byte 0x4800001C # b .L_80110180
L_80110168:
    lwz 0, 0xf4(3)
    cmpw 31, 0
    .4byte 0x40820010 # bne .L_80110180
    mr 3, 30
    li 4, 0x3d
    bl fn_8010F478
L_80110180:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80110198:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF58
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_801101FC
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x13
    .4byte 0x41800014 # blt .L_801101D8
    mr 3, 31
    li 4, 0x21b
    bl fn_8010F7EC
    .4byte 0x48000028 # b .L_801101FC
L_801101D8:
    cmpwi 0, 0xf
    .4byte 0x41800014 # blt .L_801101F0
    mr 3, 31
    li 4, 0x274
    bl fn_8010F7EC
    .4byte 0x48000010 # b .L_801101FC
L_801101F0:
    mr 3, 31
    li 4, 0x9b
    bl fn_8010F7EC
L_801101FC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80110210:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 4, 0x238(3)
    subi 0, 4, 0x26
    cmplwi 0, 0x16
    .4byte 0x4181021C # bgt .L_80110444
    lis 4, jumptable_8049D454@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_8049D454@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
    .4byte 0x480001F0 # b .L_80110444
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    lwz 4, 0x24(4)
    stb 5, 0x179(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(3)
    lfs 0, 0x278(3)
    lwz 4, 0x24(4)
    fadds 0, 1, 0
    lfs 2, 0x274(3)
    lbz 0, 0x7f5(4)
    lfs 3, 0xc(3)
    cmplwi 0, 0x0
    fadds 1, 2, 0
    fsubs 0, 0, 2
    .4byte 0x408201B0 # bne .L_80110444
    stb 5, 0x7f4(4)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 3, 0x808(4)
    stfs 0, 0x80c(4)
    stfs 3, 0x810(4)
    stfs 1, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000188 # b .L_80110444
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    lwz 4, 0x24(4)
    stb 5, 0x179(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(3)
    lfs 0, 0x278(3)
    lwz 4, 0x24(4)
    fadds 0, 1, 0
    lfs 2, 0x274(3)
    lbz 0, 0x7f5(4)
    lfs 3, 0xc(3)
    cmplwi 0, 0x0
    fadds 1, 2, 0
    fsubs 0, 0, 2
    .4byte 0x40820148 # bne .L_80110444
    stb 5, 0x7f4(4)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 3, 0x808(4)
    stfs 0, 0x80c(4)
    stfs 3, 0x810(4)
    stfs 1, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000120 # b .L_80110444
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082010C # bne .L_80110444
    li 0, 0x1
    stb 0, 0x7f5(3)
    .4byte 0x48000100 # b .L_80110444
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    lwz 4, 0x24(4)
    stb 5, 0x179(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(3)
    lwz 4, 0x24(4)
    lfs 0, 0x274(3)
    lbz 0, 0x840(4)
    fadds 3, 1, 0
    lfs 4, 0xc(3)
    cmplwi 0, 0x0
    fsubs 2, 1, 0
    .4byte 0x408200C8 # bne .L_80110444
    stb 5, 0x840(4)
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    stfs 4, 0x844(4)
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    stfs 2, 0x848(4)
    stfs 4, 0x84c(4)
    stfs 3, 0x850(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
    .4byte 0x4800009C # b .L_80110444
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    lwz 4, 0x24(4)
    stb 5, 0x17c(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    stb 5, 0x179(4)
    psq_l 0, 0x24(3), 0, 0
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    psq_st 0, 0x8(1), 0, 0
    lwz 4, 0x24(4)
    lfs 1, 0xc(1)
    lfs 0, 0x278(3)
    lbz 0, 0x7f5(4)
    fadds 0, 1, 0
    lfs 2, 0x274(3)
    lfs 1, 0x2c(3)
    cmplwi 0, 0x0
    lfs 4, 0x8(1)
    fadds 3, 0, 2
    fsubs 2, 0, 2
    stfs 1, 0x10(1)
    stfs 0, 0xc(1)
    .4byte 0x4082003C # bne .L_80110444
    stb 5, 0x7f4(4)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 4, 0x808(4)
    stfs 2, 0x80c(4)
    stfs 4, 0x810(4)
    stfs 3, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000014 # b .L_80110444
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
L_80110444:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80110454:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    lwz 3, 0x238(3)
    subi 0, 3, 0x3
    cmplwi 0, 0x19
    .4byte 0x418104B4 # bgt .L_80110928
    lis 3, jumptable_8049D4B0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D4B0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    li 3, 0x0
    lwz 4, 0x24(4)
    stb 0, 0x179(4)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    psq_st 0, 0x44(1), 0, 0
    lwz 4, 0x24(4)
    lfs 1, 0x48(1)
    .4byte 0xC0029638 # lfs f0, lbl_8053C5D8@sda21(r0)
    lbz 0, 0x840(4)
    fadds 1, 1, 0
    .4byte 0xC00295F8 # lfs f0, lbl_8053C598@sda21(r0)
    lfs 4, 0x8(3)
    cmplwi 0, 0x0
    lfs 5, 0x44(1)
    fadds 3, 0, 1
    fsubs 2, 1, 0
    stfs 4, 0x4c(1)
    stfs 1, 0x48(1)
    .4byte 0x40820440 # bne .L_80110928
    li 0, 0x1
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    stb 0, 0x840(4)
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    stfs 5, 0x844(4)
    stfs 2, 0x848(4)
    stfs 5, 0x84c(4)
    stfs 3, 0x850(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
    .4byte 0x48000410 # b .L_80110928
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    li 3, 0x0
    lwz 4, 0x24(4)
    stb 0, 0x179(4)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    psq_st 0, 0x38(1), 0, 0
    lwz 4, 0x24(4)
    lfs 1, 0x3c(1)
    lfs 0, 0x278(31)
    lbz 0, 0x7f5(4)
    fadds 1, 1, 0
    .4byte 0xC00295F8 # lfs f0, lbl_8053C598@sda21(r0)
    lfs 3, 0x8(3)
    cmplwi 0, 0x0
    lfs 4, 0x38(1)
    fadds 2, 0, 1
    fsubs 0, 1, 0
    stfs 3, 0x40(1)
    stfs 1, 0x3c(1)
    .4byte 0x408203B4 # bne .L_80110928
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 4, 0x808(4)
    stfs 0, 0x80c(4)
    stfs 4, 0x810(4)
    stfs 2, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000388 # b .L_80110928
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    li 3, 0x0
    lwz 4, 0x24(4)
    stb 0, 0x179(4)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    addi 3, 31, 0x278
    psq_st 1, 0x2c(1), 0, 0
    .4byte 0xC0229638 # lfs f1, lbl_8053C5D8@sda21(r0)
    stfs 0, 0x34(1)
    .4byte 0xC04295B0 # lfs f2, lbl_8053C550@sda21(r0)
    bl fn_801CD950
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x30(1)
    lfs 0, 0x278(31)
    lwz 4, 0x24(3)
    fadds 1, 1, 0
    .4byte 0xC00295F8 # lfs f0, lbl_8053C598@sda21(r0)
    lbz 0, 0x7f5(4)
    lfs 3, 0x2c(1)
    cmplwi 0, 0x0
    fadds 2, 0, 1
    fsubs 0, 1, 0
    stfs 1, 0x30(1)
    .4byte 0x4082031C # bne .L_80110928
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 3, 0x808(4)
    stfs 0, 0x80c(4)
    stfs 3, 0x810(4)
    stfs 2, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x480002F0 # b .L_80110928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x179(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    .4byte 0x480002D0 # b .L_80110928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    .4byte 0xC0229600 # lfs f1, lbl_8053C5A0@sda21(r0)
    lwz 3, 0x24(3)
    .4byte 0xC002963C # lfs f0, lbl_8053C5DC@sda21(r0)
    stb 4, 0x17c(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    stb 4, 0x179(3)
    psq_l 2, 0x24(31), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 2, 0x20(1), 0, 0
    lwz 3, 0x24(3)
    lfs 2, 0x24(1)
    lbz 0, 0x840(3)
    fadds 1, 2, 1
    lfs 2, 0x2c(31)
    cmplwi 0, 0x0
    lfs 4, 0x20(1)
    stfs 2, 0x28(1)
    fadds 3, 0, 1
    fsubs 2, 1, 0
    stfs 1, 0x24(1)
    .4byte 0x40820270 # bne .L_80110928
    stb 4, 0x840(3)
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    stfs 4, 0x844(3)
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    stfs 2, 0x848(3)
    stfs 4, 0x84c(3)
    stfs 3, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x48000244 # b .L_80110928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    .4byte 0xC0029640 # lfs f0, lbl_8053C5E0@sda21(r0)
    lwz 3, 0x24(3)
    stb 4, 0x179(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x28(31)
    lwz 3, 0x24(3)
    fadds 3, 0, 1
    lfs 4, 0x24(31)
    lbz 0, 0x840(3)
    fsubs 2, 1, 0
    cmplwi 0, 0x0
    .4byte 0x4082020C # bne .L_80110928
    stb 4, 0x840(3)
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    stfs 4, 0x844(3)
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    stfs 2, 0x848(3)
    stfs 4, 0x84c(3)
    stfs 3, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x480001E0 # b .L_80110928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    .4byte 0xC0029640 # lfs f0, lbl_8053C5E0@sda21(r0)
    lwz 3, 0x24(3)
    stb 4, 0x179(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x2d4(31)
    lwz 3, 0x24(3)
    fadds 3, 0, 1
    lfs 4, 0x2d0(31)
    lbz 0, 0x840(3)
    fsubs 2, 1, 0
    cmplwi 0, 0x0
    .4byte 0x408201A8 # bne .L_80110928
    stb 4, 0x840(3)
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    stfs 4, 0x844(3)
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    stfs 2, 0x848(3)
    stfs 4, 0x84c(3)
    stfs 3, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x4800017C # b .L_80110928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    .4byte 0xC0229644 # lfs f1, lbl_8053C5E4@sda21(r0)
    lwz 3, 0x24(3)
    .4byte 0xC00295F4 # lfs f0, lbl_8053C594@sda21(r0)
    stb 4, 0x179(3)
    psq_l 2, 0xc(31), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 2, 0x14(1), 0, 0
    lwz 3, 0x24(3)
    lfs 2, 0x18(1)
    lbz 0, 0x840(3)
    fadds 1, 2, 1
    lfs 2, 0x14(31)
    cmplwi 0, 0x0
    lfs 4, 0x14(1)
    stfs 2, 0x1c(1)
    fadds 3, 0, 1
    fsubs 2, 1, 0
    stfs 1, 0x18(1)
    .4byte 0x40820128 # bne .L_80110928
    stb 4, 0x840(3)
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    stfs 4, 0x844(3)
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    stfs 2, 0x848(3)
    stfs 4, 0x84c(3)
    stfs 3, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x480000FC # b .L_80110928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    .4byte 0xC0229644 # lfs f1, lbl_8053C5E4@sda21(r0)
    lwz 3, 0x24(3)
    .4byte 0xC00295F4 # lfs f0, lbl_8053C594@sda21(r0)
    stb 4, 0x179(3)
    psq_l 2, 0xc(31), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 2, 0x8(1), 0, 0
    lwz 5, 0x24(3)
    lfs 2, 0xc(1)
    lbz 0, 0x7f5(5)
    fadds 1, 2, 1
    lfs 2, 0x14(31)
    cmplwi 0, 0x0
    lfs 3, 0x8(1)
    stfs 2, 0x10(1)
    fadds 2, 0, 1
    fsubs 0, 1, 0
    stfs 1, 0xc(1)
    .4byte 0x408200A8 # bne .L_80110928
    stb 4, 0x7f4(5)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x7f8(5)
    stfs 3, 0x808(5)
    stfs 0, 0x80c(5)
    stfs 3, 0x810(5)
    stfs 2, 0x814(5)
    stb 0, 0x7f6(5)
    .4byte 0x48000080 # b .L_80110928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x179(4)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801108D0
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x17a(4)
    stb 0, 0x179(4)
L_801108D0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80110928
    li 0, 0x1
    .4byte 0xC02295B0 # lfs f1, lbl_8053C550@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC0029630 # lfs f0, lbl_8053C5D0@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_80110928:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8011093C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    lfs 1, 0x60(3)
    stfs 1, 0x40(1)
    lfs 4, 0x64(3)
    stfs 4, 0x44(1)
    lfs 2, 0x68(3)
    stfs 2, 0x48(1)
    lfs 3, 0x6c(3)
    stfs 3, 0x4c(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x40(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x48(1)
    fadds 0, 3, 2
    stfs 1, 0x44(1)
    stfs 0, 0x4c(1)
    lbz 0, 0x231(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801109BC
    lwz 4, 0x4(31)
    addi 3, 1, 0x40
    lwz 5, 0x198(31)
    bl fn_80239914
L_801109BC:
    mr 3, 31
    bl fn_80110210
    lwz 0, 0x238(31)
    cmplwi 0, 0x3e
    .4byte 0x418104B4 # bgt .L_80110E80
    lis 3, jumptable_8049D518@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D518@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x23c(31)
    addi 4, 1, 0x40
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182046C # beq .L_80110E80
    li 0, -0x1
    stw 0, 0x23c(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_80110A50
    .4byte 0x40800030 # bge .L_80110A5C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80110A40
    .4byte 0x48000024 # b .L_80110A5C
    .4byte 0x48000020 # b .L_80110A5C
L_80110A40:
    mr 3, 31
    li 4, 0x3d
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_80110A5C
L_80110A50:
    mr 3, 31
    li 4, 0x3d
    bl fn_8010E2D4
L_80110A5C:
    li 0, 0x3d
    stw 0, 0x238(31)
    .4byte 0x4800041C # b .L_80110E80
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418203F4 # beq .L_80110E80
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x480003E0 # b .L_80110E80
    .4byte 0xC02295B4 # lfs f1, lbl_8053C554@sda21(r0)
    addi 3, 31, 0x14
    .4byte 0xC0429648 # lfs f2, lbl_8053C5E8@sda21(r0)
    bl fn_801CD950
    .4byte 0xC022964C # lfs f1, lbl_8053C5EC@sda21(r0)
    addi 3, 31, 0x274
    .4byte 0xC04295C4 # lfs f2, lbl_8053C564@sda21(r0)
    bl fn_801CD950
    addi 3, 31, 0x2f4
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x418203B0 # beq .L_80110E80
    addi 3, 31, 0x2f4
    li 4, 0x13
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x4800038C # b .L_80110E80
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820364 # beq .L_80110E80
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000350 # b .L_80110E80
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820328 # beq .L_80110E80
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000314 # b .L_80110E80
    lfs 1, 0x2c(31)
    addi 3, 31, 0x14
    .4byte 0xC0429650 # lfs f2, lbl_8053C5F0@sda21(r0)
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x40820030 # bne .L_80110BB4
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x13
    .4byte 0x40820024 # bne .L_80110BB4
    addi 3, 31, 0x2f4
    li 4, 0x17
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
L_80110BB4:
    addi 3, 31, 0x2f4
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x418202C0 # beq .L_80110E80
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x17
    .4byte 0x408202B4 # bne .L_80110E80
    addi 3, 31, 0x2f4
    li 4, 0x19
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000290 # b .L_80110E80
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820268 # beq .L_80110E80
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000254 # b .L_80110E80
    .4byte 0xC0229654 # lfs f1, lbl_8053C5F4@sda21(r0)
    addi 3, 31, 0x278
    .4byte 0xC0429658 # lfs f2, lbl_8053C5F8@sda21(r0)
    bl fn_801CD950
    .4byte 0xC02295F4 # lfs f1, lbl_8053C594@sda21(r0)
    addi 3, 31, 0x274
    .4byte 0xC04295C0 # lfs f2, lbl_8053C560@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000230 # b .L_80110E80
    .4byte 0xC02295FC # lfs f1, lbl_8053C59C@sda21(r0)
    addi 3, 31, 0xc
    lfs 0, 0x24(31)
    .4byte 0xC04295EC # lfs f2, lbl_8053C58C@sda21(r0)
    fadds 1, 1, 0
    bl fn_801CD950
    .4byte 0x48000214 # b .L_80110E80
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x14
    addi 8, 1, 0x10
    li 9, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x4180004C # blt .L_80110CE8
    lfs 1, 0x14(1)
    .4byte 0xC0029640 # lfs f0, lbl_8053C5E0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4181003C # bgt .L_80110CE8
    cmpwi 3, 0x0
    .4byte 0x41800034 # blt .L_80110CE8
    stw 3, 0x98(31)
    addi 4, 3, 0x6
    lwz 0, 0x2fc(31)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_80110CE8
    addi 3, 31, 0x2f4
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
L_80110CE8:
    lfs 1, 0x60(31)
    addi 3, 1, 0x18
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x18(1)
    lfs 4, 0x64(31)
    stfs 4, 0x1c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x20(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x24(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x18(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x20(1)
    fadds 0, 3, 2
    stfs 1, 0x1c(1)
    stfs 0, 0x24(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 29, 3
    .4byte 0x4180000C # blt .L_80110D60
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_80110D68
L_80110D60:
    li 29, -0x1
    .4byte 0x480000D0 # b .L_80110E34
L_80110D68:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80110D7C
    li 29, -0x1
    .4byte 0x480000BC # b .L_80110E34
L_80110D7C:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80110D94
    li 29, -0x1
    .4byte 0x480000A4 # b .L_80110E34
L_80110D94:
    psq_l 0, 0xc(31), 0, 0
    addi 7, 1, 0x34
    lfs 2, 0x14(31)
    mr 3, 29
    psq_st 0, 0x28(1), 0, 0
    li 4, 0x2d2
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 8, 0x20
    lfs 1, 0x2c(1)
    lwz 5, 0x198(31)
    fadds 0, 1, 0
    lwz 6, 0x4(31)
    stfs 2, 0x30(1)
    stfs 0, 0x2c(1)
    psq_l 0, 0x28(1), 0, 0
    stfs 2, 0x3c(1)
    psq_st 0, 0x0(7), 0, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80110DEC
    li 29, -0x1
    .4byte 0x4800004C # b .L_80110E34
L_80110DEC:
    stw 29, 0x23c(31)
    lwz 3, 0x23c(31)
    bl fn_80230CFC
    bl fn_801CD354
    addi 4, 3, 0x6
    addi 3, 31, 0x2f4
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    li 30, 0x0
L_80110E20:
    mr 3, 30
    bl fn_80230C6C
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFF0 # blt .L_80110E20
L_80110E34:
    cmpwi 29, 0x0
    .4byte 0x41800048 # blt .L_80110E80
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_80110E6C
    .4byte 0x40800030 # bge .L_80110E78
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80110E5C
    .4byte 0x48000024 # b .L_80110E78
    .4byte 0x48000020 # b .L_80110E78
L_80110E5C:
    mr 3, 31
    li 4, 0x2
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_80110E78
L_80110E6C:
    mr 3, 31
    li 4, 0x2
    bl fn_8010E2D4
L_80110E78:
    li 0, 0x2
    stw 0, 0x238(31)
L_80110E80:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80110E9C:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stw 31, 0xbc(1)
    stw 30, 0xb8(1)
    stw 29, 0xb4(1)
    mr 31, 3
    lfs 1, 0x60(3)
    stfs 1, 0x94(1)
    lfs 4, 0x64(3)
    stfs 4, 0x98(1)
    lfs 2, 0x68(3)
    stfs 2, 0x9c(1)
    lfs 3, 0x6c(3)
    stfs 3, 0xa0(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x94(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x9c(1)
    fadds 0, 3, 2
    stfs 1, 0x98(1)
    stfs 0, 0xa0(1)
    lwz 0, 0x238(3)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80110F24
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_80110F34
L_80110F24:
    lwz 4, 0x4(31)
    addi 3, 1, 0x94
    lwz 5, 0x198(31)
    bl fn_80239914
L_80110F34:
    mr 3, 31
    bl fn_80110454
    lwz 0, 0x238(31)
    cmplwi 0, 0x3e
    .4byte 0x41810D50 # bgt .L_80111C94
    lis 3, jumptable_8049D614@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D614@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0xe
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80110F94
    bl fn_8011921C
    li 4, 0x1
    bl fn_801186B0
    .4byte 0x48000D04 # b .L_80111C94
L_80110F94:
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80110FAC
    bl fn_8011921C
    li 4, 0x0
    bl fn_801186B0
    .4byte 0x48000CEC # b .L_80111C94
L_80110FAC:
    cmpwi 0, 0x1
    li 29, 0x0
    .4byte 0x41820080 # beq .L_80111034
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x14
    addi 8, 1, 0x10
    li 9, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_80111038
    lfs 1, 0x14(1)
    .4byte 0xC0029640 # lfs f0, lbl_8053C5E0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810044 # bgt .L_80111038
    cmpwi 3, 0x0
    .4byte 0x4180003C # blt .L_80111038
    stw 3, 0x98(31)
    addi 4, 3, 0x6
    lwz 0, 0x2fc(31)
    cmpw 4, 0
    .4byte 0x41820028 # beq .L_80111038
    addi 3, 31, 0x2f4
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000008 # b .L_80111038
L_80111034:
    li 29, 0x1
L_80111038:
    lwz 0, 0x234(31)
    .4byte 0x388295A8 # li r4, lbl_8053C548@sda21
    lfs 1, 0x60(31)
    mr 7, 29
    slwi 0, 0, 2
    addi 3, 1, 0x6c
    stfs 1, 0x6c(1)
    li 6, 0x1
    lwzx 29, 4, 0
    lfs 4, 0x64(31)
    stfs 4, 0x70(1)
    lfs 2, 0x68(31)
    stfs 2, 0x74(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x78(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x6c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x74(1)
    fadds 0, 3, 2
    stfs 1, 0x70(1)
    stfs 0, 0x78(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4180000C # blt .L_801110C0
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_801110C8
L_801110C0:
    li 30, -0x1
    .4byte 0x480000D0 # b .L_80111194
L_801110C8:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801110DC
    li 30, -0x1
    .4byte 0x480000BC # b .L_80111194
L_801110DC:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801110F4
    li 30, -0x1
    .4byte 0x480000A4 # b .L_80111194
L_801110F4:
    psq_l 0, 0xc(31), 0, 0
    addi 7, 1, 0x88
    lfs 2, 0x14(31)
    mr 3, 30
    psq_st 0, 0x7c(1), 0, 0
    mr 4, 29
    .4byte 0xC00295D0 # lfs f0, lbl_8053C570@sda21(r0)
    li 8, 0x20
    lfs 1, 0x80(1)
    lwz 5, 0x198(31)
    fadds 0, 1, 0
    lwz 6, 0x4(31)
    stfs 2, 0x84(1)
    stfs 0, 0x80(1)
    psq_l 0, 0x7c(1), 0, 0
    stfs 2, 0x90(1)
    psq_st 0, 0x0(7), 0, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8011114C
    li 30, -0x1
    .4byte 0x4800004C # b .L_80111194
L_8011114C:
    stw 30, 0x23c(31)
    lwz 3, 0x23c(31)
    bl fn_80230CFC
    bl fn_801CD354
    addi 4, 3, 0x6
    addi 3, 31, 0x2f4
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    li 29, 0x0
L_80111180:
    mr 3, 29
    bl fn_80230C6C
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFF0 # blt .L_80111180
L_80111194:
    cmpwi 30, 0x0
    .4byte 0x41800AFC # blt .L_80111C94
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_801111CC
    .4byte 0x40800030 # bge .L_801111D8
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801111BC
    .4byte 0x48000024 # b .L_801111D8
    .4byte 0x48000020 # b .L_801111D8
L_801111BC:
    mr 3, 31
    li 4, 0x2
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_801111D8
L_801111CC:
    mr 3, 31
    li 4, 0x2
    bl fn_8010E2D4
L_801111D8:
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x48000AB4 # b .L_80111C94
    lwz 3, 0x23c(31)
    addi 4, 1, 0x94
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820A84 # beq .L_80111C94
    li 0, -0x1
    stw 0, 0x23c(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820A70 # beq .L_80111C94
    .4byte 0x40800098 # bge .L_801112C0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80111238
    .4byte 0x4800008C # b .L_801112C0
L_80111238:
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_80111264
    .4byte 0x40800030 # bge .L_80111270
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80111254
    .4byte 0x48000024 # b .L_80111270
    .4byte 0x48000020 # b .L_80111270
L_80111254:
    mr 3, 31
    li 4, 0xd
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_80111270
L_80111264:
    mr 3, 31
    li 4, 0xd
    bl fn_8010E2D4
L_80111270:
    li 0, 0xd
    stw 0, 0x238(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_801112A8
    .4byte 0x40800030 # bge .L_801112B4
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80111298
    .4byte 0x48000024 # b .L_801112B4
    .4byte 0x48000020 # b .L_801112B4
L_80111298:
    mr 3, 31
    li 4, 0x3e
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_801112B4
L_801112A8:
    mr 3, 31
    li 4, 0x3e
    bl fn_8010E2D4
L_801112B4:
    li 0, 0x3e
    stw 0, 0x238(31)
    .4byte 0x480009D8 # b .L_80111C94
L_801112C0:
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_801112EC
    .4byte 0x40800030 # bge .L_801112F8
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801112DC
    .4byte 0x48000024 # b .L_801112F8
    .4byte 0x48000020 # b .L_801112F8
L_801112DC:
    mr 3, 31
    li 4, 0x1
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_801112F8
L_801112EC:
    mr 3, 31
    li 4, 0x1
    bl fn_8010E2D4
L_801112F8:
    li 0, 0x1
    stw 0, 0x238(31)
    .4byte 0x48000994 # b .L_80111C94
    .4byte 0xC00295B0 # lfs f0, lbl_8053C550@sda21(r0)
    li 3, 0x0
    stfs 0, 0x324(31)
    bl fn_8023E724
    lfs 1, 0x4(3)
    addi 3, 31, 0x10
    .4byte 0xC00295B4 # lfs f0, lbl_8053C554@sda21(r0)
    .4byte 0xC04295B8 # lfs f2, lbl_8053C558@sda21(r0)
    fsubs 1, 1, 0
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x40820964 # bne .L_80111C94
    addi 3, 31, 0x2f4
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0xC00295B0 # lfs f0, lbl_8053C550@sda21(r0)
    stfs 0, 0x324(31)
    .4byte 0x48000938 # b .L_80111C94
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820910 # beq .L_80111C94
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x480008FC # b .L_80111C94
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418208D4 # beq .L_80111C94
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x480008C0 # b .L_80111C94
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820898 # beq .L_80111C94
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000884 # b .L_80111C94
    li 3, 0x0
    bl fn_8023E724
    lfs 1, 0x4(3)
    addi 3, 31, 0x10
    .4byte 0xC0029610 # lfs f0, lbl_8053C5B0@sda21(r0)
    .4byte 0xC04295B8 # lfs f2, lbl_8053C558@sda21(r0)
    fsubs 1, 1, 0
    bl fn_801CD950
    li 29, 0x0
    addi 30, 1, 0x60
L_8011143C:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x68(1)
    lfs 0, 0x64(1)
    lfs 2, 0x2e0(31)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_80111490
    stfs 2, 0x64(1)
    mr 3, 29
    mr 4, 30
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000040 # b .L_801114CC
L_80111490:
    psq_l 0, 0x2e8(31), 0, 0
    mr 3, 29
    psq_l 2, 0x8(30), 1, 0
    mr 4, 30
    ps_add 0, 1, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    psq_st 0, 0x0(30), 0, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(30), 1, 0
    lwz 5, 0x33c(31)
    bl fn_80230498
L_801114CC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF68 # blt .L_8011143C
    .4byte 0x480007BC # b .L_80111C94
    li 3, 0x0
    bl fn_8023E724
    lfs 1, 0x4(3)
    addi 3, 31, 0x10
    .4byte 0xC0029610 # lfs f0, lbl_8053C5B0@sda21(r0)
    .4byte 0xC04295B8 # lfs f2, lbl_8053C558@sda21(r0)
    fsubs 1, 1, 0
    bl fn_801CD950
    li 29, 0x0
    addi 30, 1, 0x54
L_80111504:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x5c(1)
    lfs 0, 0x58(1)
    lfs 2, 0x2e0(31)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_80111558
    stfs 2, 0x58(1)
    mr 3, 29
    mr 4, 30
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000040 # b .L_80111594
L_80111558:
    psq_l 0, 0x2e8(31), 0, 0
    mr 3, 29
    psq_l 2, 0x8(30), 1, 0
    mr 4, 30
    ps_add 0, 1, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    psq_st 0, 0x0(30), 0, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(30), 1, 0
    lwz 5, 0x33c(31)
    bl fn_80230498
L_80111594:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF68 # blt .L_80111504
    .4byte 0x480006F4 # b .L_80111C94
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x1e
    .4byte 0x418006E4 # blt .L_80111C94
    li 29, 0x0
    addi 30, 1, 0x48
L_801115BC:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x50(1)
    lfs 0, 0x4c(1)
    lfs 2, 0x2e0(31)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_80111610
    stfs 2, 0x4c(1)
    mr 3, 29
    mr 4, 30
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000040 # b .L_8011164C
L_80111610:
    psq_l 0, 0x2e8(31), 0, 0
    mr 3, 29
    psq_l 2, 0x8(30), 1, 0
    mr 4, 30
    ps_add 0, 1, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    psq_st 0, 0x0(30), 0, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(30), 1, 0
    lwz 5, 0x33c(31)
    bl fn_80230498
L_8011164C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF68 # blt .L_801115BC
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x2e8(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x4800061C # b .L_80111C94
    li 29, 0x0
    addi 30, 1, 0x3c
L_80111684:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x44(1)
    lfs 0, 0x40(1)
    lfs 2, 0x2e0(31)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801116D8
    stfs 2, 0x40(1)
    mr 3, 29
    mr 4, 30
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000040 # b .L_80111714
L_801116D8:
    psq_l 0, 0x2e8(31), 0, 0
    mr 3, 29
    psq_l 2, 0x8(30), 1, 0
    mr 4, 30
    ps_add 0, 1, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    psq_st 0, 0x0(30), 0, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(30), 1, 0
    lwz 5, 0x33c(31)
    bl fn_80230498
L_80111714:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF68 # blt .L_80111684
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x2e8(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x48000554 # b .L_80111C94
    li 29, 0x0
    addi 30, 1, 0x30
L_8011174C:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x38(1)
    lfs 0, 0x34(1)
    lfs 2, 0x2e0(31)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801117A0
    stfs 2, 0x34(1)
    mr 3, 29
    mr 4, 30
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000040 # b .L_801117DC
L_801117A0:
    psq_l 0, 0x2e8(31), 0, 0
    mr 3, 29
    psq_l 2, 0x8(30), 1, 0
    mr 4, 30
    ps_add 0, 1, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    psq_st 0, 0x0(30), 0, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(30), 1, 0
    lwz 5, 0x33c(31)
    bl fn_80230498
L_801117DC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF68 # blt .L_8011174C
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x2e8(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0x10(31)
    lfs 1, 0x28(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082047C # bne .L_80111C94
    stfs 1, 0x10(31)
    addi 3, 31, 0x2f4
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x48000454 # b .L_80111C94
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x4182042C # beq .L_80111C94
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000418 # b .L_80111C94
    li 29, 0x0
    addi 30, 1, 0x24
L_80111888:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x2c(1)
    lfs 0, 0x28(1)
    lfs 2, 0x2e0(31)
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_801118DC
    stfs 2, 0x28(1)
    mr 3, 29
    mr 4, 30
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000040 # b .L_80111918
L_801118DC:
    psq_l 0, 0x2e8(31), 0, 0
    mr 3, 29
    psq_l 2, 0x8(30), 1, 0
    mr 4, 30
    ps_add 0, 1, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    psq_st 0, 0x0(30), 0, 0
    psq_l 0, 0x2f0(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(30), 1, 0
    lwz 5, 0x33c(31)
    bl fn_80230498
L_80111918:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF68 # blt .L_80111888
    .4byte 0x48000370 # b .L_80111C94
    addi 3, 31, 0x2f4
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x41820360 # beq .L_80111C94
    addi 3, 31, 0x2f4
    li 4, 0x13
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    .4byte 0x4800033C # b .L_80111C94
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820314 # beq .L_80111C94
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1f
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x480002E8 # b .L_80111C94
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418202C0 # beq .L_80111C94
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x480002AC # b .L_80111C94
    lwz 0, 0x260(31)
    cmpwi 0, 0x6e
    .4byte 0x4182002C # beq .L_80111A20
    .4byte 0x4080001C # bge .L_80111A14
    cmpwi 0, 0x5a
    .4byte 0x41820020 # beq .L_80111A20
    .4byte 0x4080007C # bge .L_80111A80
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80111A20
    .4byte 0x48000070 # b .L_80111A80
L_80111A14:
    cmpwi 0, 0x82
    .4byte 0x41820008 # beq .L_80111A20
    .4byte 0x48000064 # b .L_80111A80
L_80111A20:
    lwz 0, 0x2fc(31)
    cmpwi 0, 0xb
    .4byte 0x41820020 # beq .L_80111A48
    .4byte 0x40800010 # bge .L_80111A3C
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_80111A48
    .4byte 0x48000028 # b .L_80111A60
L_80111A3C:
    cmpwi 0, 0xd
    .4byte 0x41820008 # beq .L_80111A48
    .4byte 0x4800001C # b .L_80111A60
L_80111A48:
    addi 3, 31, 0x2f4
    li 4, 0xa
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000018 # b .L_80111A74
L_80111A60:
    addi 3, 31, 0x2f4
    li 4, 0xb
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
L_80111A74:
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
L_80111A80:
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    .4byte 0x48000208 # b .L_80111C94
    bl fn_8011921C
    lis 4, lbl_80464550@ha
    lis 0, 0x4330
    addi 4, 4, lbl_80464550@l
    lwz 3, 0x8(3)
    lwz 4, 0x84(4)
    li 29, 0x0
    stw 0, 0xa8(1)
    subf 0, 4, 3
    .4byte 0xC84295C8 # lfd f2, lbl_8053C568@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC06295C4 # lfs f3, lbl_8053C564@sda21(r0)
    stw 0, 0xac(1)
    .4byte 0xC00295C0 # lfs f0, lbl_8053C560@sda21(r0)
    lfd 1, 0xa8(1)
    .4byte 0xC3E295BC # lfs f31, lbl_8053C55C@sda21(r0)
    fsubs 1, 1, 2
    fnmsubs 30, 3, 1, 0
L_80111AD8:
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x8(3)
    psq_l 2, 0x0(3), 0, 0
    fadds 0, 1, 30
    stfs 1, 0x20(1)
    fcmpo cr0, 0, 31
    psq_st 2, 0x18(1), 0, 0
    stfs 0, 0x20(1)
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80111B0C
    stfs 31, 0x20(1)
    .4byte 0x48000014 # b .L_80111B1C
L_80111B0C:
    lfs 1, 0x1c(1)
    .4byte 0xC00295C0 # lfs f0, lbl_8053C560@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
L_80111B1C:
    mr 3, 29
    addi 4, 1, 0x18
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF94 # blt .L_80111AD8
    .4byte 0x4800014C # b .L_80111C94
    lfs 2, 0x268(31)
    addi 3, 31, 0x26c
    .4byte 0xC00295D8 # lfs f0, lbl_8053C578@sda21(r0)
    .4byte 0xC02295C0 # lfs f1, lbl_8053C560@sda21(r0)
    fadds 0, 2, 0
    .4byte 0xC04295DC # lfs f2, lbl_8053C57C@sda21(r0)
    stfs 0, 0x268(31)
    bl fn_801CD950
    lfs 3, 0x27c(31)
    lis 3, lbl_80534C00@ha
    lfs 1, 0xc(31)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x280(31)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC04295E0 # lfs f2, lbl_8053C580@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    lfs 0, 0x26c(31)
    fmuls 1, 1, 2
    addi 3, 31, 0xc
    fctiwz 1, 1
    stfd 1, 0xa8(1)
    lwz 0, 0xac(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    add 4, 4, 0
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 1, 0x26c(31)
    lfs 0, 0x4(4)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    lfs 1, 0x27c(31)
    lfs 2, 0x3c(31)
    bl fn_801CD950
    lfs 1, 0x280(31)
    mr 29, 3
    lfs 2, 0x40(31)
    addi 3, 31, 0x10
    bl fn_801CD950
    .4byte 0xC02295DC # lfs f1, lbl_8053C57C@sda21(r0)
    mr 30, 3
    .4byte 0xC04295E4 # lfs f2, lbl_8053C584@sda21(r0)
    addi 3, 31, 0x270
    bl fn_801CD950
    cmpwi 29, 0x0
    .4byte 0x40820014 # bne .L_80111C24
    cmpwi 30, 0x0
    .4byte 0x4082000C # bne .L_80111C24
    li 0, 0x1
    .4byte 0x48000008 # b .L_80111C28
L_80111C24:
    li 0, 0x0
L_80111C28:
    clrlwi. 0, 0, 24
    .4byte 0x41820068 # beq .L_80111C94
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_80111C60
    .4byte 0x40800030 # bge .L_80111C6C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80111C50
    .4byte 0x48000024 # b .L_80111C6C
    .4byte 0x48000020 # b .L_80111C6C
L_80111C50:
    mr 3, 31
    li 4, 0x24
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_80111C6C
L_80111C60:
    mr 3, 31
    li 4, 0x24
    bl fn_8010E2D4
L_80111C6C:
    li 0, 0x24
    stw 0, 0x238(31)
    .4byte 0x48000020 # b .L_80111C94
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0xC04295D4 # lfs f2, lbl_8053C574@sda21(r0)
    bl fn_801CD950
    .4byte 0x4800000C # b .L_80111C94
    li 0, 0x0
    stb 0, 0x11d(31)
L_80111C94:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    lwz 0, 0xe4(1)
    lwz 29, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_80111CC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF78
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820024 # beq .L_80111D04
    .4byte 0x40800028 # bge .L_80111D0C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80111CF8
    .4byte 0x4800001C # b .L_80111D0C
    .4byte 0x48000018 # b .L_80111D0C
L_80111CF8:
    mr 3, 31
    bl fn_80110E9C
    .4byte 0x4800000C # b .L_80111D0C
L_80111D04:
    mr 3, 31
    bl fn_8011093C
L_80111D0C:
    addi 3, 31, 0x2f4
    bl fn_801D1C18
    addi 3, 31, 0x32c
    bl fn_801D1C18
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80111D30
    mr 3, 31
    bl fn_8010F4DC
L_80111D30:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80111D44:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    bl fn_8011921C
    lis 5, 0x444d
    lwz 4, 0x10(3)
    addi 5, 5, 0x474c
    bl fn_8011871C
    mr 31, 3
    bl fn_8011921C
    lwz 0, 0x14(3)
    cmplw 31, 0
    .4byte 0x41820018 # beq .L_80111D9C
    lwz 3, 0x0(31)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x27c(29), 0, 0
    stfs 0, 0x284(29)
L_80111D9C:
    bl fn_8011921C
    lwz 30, 0x10(3)
    lis 31, 0x444d
L_80111DA8:
    bl fn_8011921C
    mr 4, 30
    addi 5, 31, 0x4d44
    bl fn_8011871C
    mr 30, 3
    bl fn_8011921C
    lwz 0, 0x14(3)
    cmplw 30, 0
    .4byte 0x41820044 # beq .L_80111E0C
    lwz 4, 0x0(30)
    lwz 0, 0x234(4)
    cmpwi 0, 0x6
    .4byte 0x40800024 # bge .L_80111DFC
    mulli 3, 0, 0xc
    psq_l 1, 0xc(4), 0, 0
    lfs 0, 0x14(4)
    addi 30, 30, 0x4
    addi 3, 3, 0x288
    add 3, 29, 3
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
L_80111DFC:
    bl fn_8011921C
    lwz 0, 0x14(3)
    cmplw 30, 0
    .4byte 0x4082FFA0 # bne .L_80111DA8
L_80111E0C:
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x2d0(29), 0, 0
    stfs 0, 0x2d8(29)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80111E38:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF98
    lwz 0, 0x90(31)
    lis 3, lbl_8049D1A0@ha
    addi 4, 3, lbl_8049D1A0@l
    li 5, 0x1a
    clrlwi 0, 0, 24
    addi 3, 31, 0x2f4
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 20
    stw 0, 0x244(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 16
    stw 0, 0x248(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 10
    stw 0, 0x254(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x250(31)
    bl fn_801D2608
    addi 3, 31, 0x2f4
    li 4, 0x8
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x2f4
    bl fn_801D1F14
    addi 3, 31, 0x32c
    .4byte 0x388D8338 # li r4, lbl_80539EF8@sda21
    li 5, 0x2
    bl fn_801D2608
    addi 3, 31, 0x32c
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02295BC # lfs f1, lbl_8053C55C@sda21(r0)
    addi 3, 31, 0x32c
    bl fn_801D1F14
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x40820068 # bne .L_80111F60
    bl GetRoomConfigRecord
    lwz 4, 0x250(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80111F58
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820028 # beq .L_80111F40
    .4byte 0x40800030 # bge .L_80111F4C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80111F30
    .4byte 0x48000024 # b .L_80111F4C
    .4byte 0x48000020 # b .L_80111F4C
L_80111F30:
    mr 3, 31
    li 4, 0x3d
    bl fn_8010E7E8
    .4byte 0x48000010 # b .L_80111F4C
L_80111F40:
    mr 3, 31
    li 4, 0x3d
    bl fn_8010E2D4
L_80111F4C:
    li 0, 0x3d
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80111F60
L_80111F58:
    li 0, 0x0
    stb 0, 0x11d(31)
L_80111F60:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80111F74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x418200CC # beq .L_80112058
    lis 3, lbl_8049D208@ha
    addi 0, 3, lbl_8049D208@l
    stw 0, 0x0(27)
    lwz 3, 0x364(27)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x364(27)
    lwz 3, 0x368(27)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x368(27)
    lwz 3, 0x36c(27)
    bl fn_801EE434
    li 31, 0x0
    mr 30, 27
    stw 31, 0x36c(27)
    li 29, 0x0
L_80111FD4:
    lwz 3, 0x370(30)
    bl fn_801EE434
    cmpwi 29, 0x2
    stw 31, 0x370(30)
    .4byte 0x40800010 # bge .L_80111FF4
    lwz 3, 0x380(30)
    bl fn_801EE434
    stw 31, 0x380(30)
L_80111FF4:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD4 # blt .L_80111FD4
    addic. 0, 27, 0x32c
    .4byte 0x41820018 # beq .L_80112020
    addic. 0, 27, 0x350
    .4byte 0x41820010 # beq .L_80112020
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x350(27)
L_80112020:
    addic. 0, 27, 0x2f4
    .4byte 0x41820018 # beq .L_8011203C
    addic. 0, 27, 0x318
    .4byte 0x41820010 # beq .L_8011203C
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x318(27)
L_8011203C:
    mr 3, 27
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_80112058
    mr 3, 27
    bl dtor_80084580
L_80112058:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8010E0B0

